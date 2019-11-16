; ModuleID = '/tmp/tmpwl24ieiz-target.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4010f0__rodata_type = type <{ [72 x i8], [28 x i8], [48 x i8], [35 x i8], [35 x i8] }>
%seg_601de0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602060__bss_type = type <{ [8 x i8], [4 x i8], [12 x i8] }>
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
@stderr = external local_unnamed_addr global i64, align 32
@seg_4010f0__rodata = internal constant %seg_4010f0__rodata_type <{ [72 x i8] c"\01\00\02\00\00\00\00\00\00\00\00 _\A0\02\C2\00\00\00 _\A0\02B\00\00\00\00\00\E0o@\00\00\00\00\00\00`@\00\00\00\00\00\00\F0?\00\00\00\00\00\00\00\C0\00\00\00\00\00\00\E0?\1C-DT\FB!\19@", [28 x i8] c"Can't allocate data array.\0A\00", [48 x i8] c"Wrong answer at (%d,%d)!  Expected %d, got %d.\0A\00", [35 x i8] c"%d passes.  No errors in results.\0A\00", [35 x i8] c"%d passes.  %d errors in results.\0A\00" }>
@seg_601de0__init_array = internal global %seg_601de0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_4006a0_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400670___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602060__bss = internal global %seg_602060__bss_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4006a0_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400670___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4010e0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401070___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

declare %struct.Memory* @sub_400600_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400540__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400b70_fourn_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

; Function Attrs: nounwind readnone
declare double @sin(double) local_unnamed_addr #2

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @__remill_basic_block(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 !dbg !1261 {
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
define void @__remill_intrinsics() local_unnamed_addr #4 !dbg !2425 {
  ret void, !dbg !2427
}

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64) #6

; Function Attrs: noinline
define %struct.Memory* @sub_4006b0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4006b0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %7 = load i64, i64* %RBP, align 8
  %8 = add i64 %1, 1
  store i64 %8, i64* %PC, align 8
  %9 = load i64, i64* %RSP, align 8, !tbaa !2428
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %7, i64* %11, align 8
  %12 = load i64, i64* %PC, align 8
  store i64 %10, i64* %RBP, align 8, !tbaa !2428
  %13 = add i64 %9, -200
  store i64 %13, i64* %RSP, align 8, !tbaa !2428
  %14 = icmp ult i64 %10, 192
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1, !tbaa !2432
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #14
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
  %41 = add i64 %9, -12
  %42 = add i64 %12, 17
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %41 to i32*
  store i32 0, i32* %43, align 4
  %44 = load i64, i64* %RBP, align 8
  %45 = add i64 %44, -28
  %46 = load i64, i64* %PC, align 8
  %47 = add i64 %46, 7
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %45 to i32*
  store i32 63, i32* %48, align 4
  %49 = load i64, i64* %RBP, align 8
  %50 = add i64 %49, -32
  %51 = load i64, i64* %PC, align 8
  %52 = add i64 %51, 7
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %50 to i32*
  store i32 256, i32* %53, align 4
  %54 = load i64, i64* %RBP, align 8
  %55 = add i64 %54, -32
  %56 = load i64, i64* %PC, align 8
  %57 = add i64 %56, 3
  store i64 %57, i64* %PC, align 8
  %58 = inttoptr i64 %55 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = zext i32 %59 to i64
  store i64 %60, i64* %RAX, align 8, !tbaa !2428
  %61 = add i64 %56, 7
  store i64 %61, i64* %PC, align 8
  %62 = load i32, i32* %58, align 4
  %63 = sext i32 %59 to i64
  %64 = sext i32 %62 to i64
  %65 = mul nsw i64 %64, %63
  %66 = trunc i64 %65 to i32
  %67 = and i64 %65, 4294967295
  store i64 %67, i64* %RAX, align 8, !tbaa !2428
  %68 = shl i64 %65, 32
  %69 = ashr exact i64 %68, 32
  %70 = icmp ne i64 %69, %65
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %16, align 1, !tbaa !2432
  %72 = and i32 %66, 255
  %73 = tail call i32 @llvm.ctpop.i32(i32 %72) #14
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 1
  %76 = xor i8 %75, 1
  store i8 %76, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2447
  store i8 0, i8* %31, align 1, !tbaa !2448
  %77 = lshr i32 %66, 31
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %34, align 1, !tbaa !2449
  store i8 %71, i8* %40, align 1, !tbaa !2450
  %sext = shl i64 %65, 32
  %79 = ashr exact i64 %sext, 32
  store i64 %79, i64* %RCX, align 8, !tbaa !2428
  %80 = add i64 %54, -48
  %81 = add i64 %56, 14
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %80 to i64*
  store i64 %79, i64* %82, align 8
  %83 = load i64, i64* %RBP, align 8
  %84 = add i64 %83, -48
  %85 = load i64, i64* %PC, align 8
  %86 = add i64 %85, 4
  store i64 %86, i64* %PC, align 8
  %87 = inttoptr i64 %84 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  %90 = shl i64 %89, 4
  store i64 %90, i64* %RCX, align 8, !tbaa !2428
  %91 = lshr i64 %89, 60
  %92 = trunc i64 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, i8* %16, align 1, !tbaa !2451
  %94 = trunc i64 %90 to i32
  %95 = and i32 %94, 240
  %96 = tail call i32 @llvm.ctpop.i32(i32 %95) #14
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = xor i8 %98, 1
  store i8 %99, i8* %23, align 1, !tbaa !2451
  store i8 0, i8* %28, align 1, !tbaa !2451
  %100 = icmp eq i64 %90, 0
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %31, align 1, !tbaa !2451
  %102 = lshr i64 %89, 59
  %103 = trunc i64 %102 to i8
  %104 = and i8 %103, 1
  store i8 %104, i8* %34, align 1, !tbaa !2451
  store i8 0, i8* %40, align 1, !tbaa !2451
  %105 = add i64 %83, -56
  %106 = add i64 %85, 20
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %105 to i64*
  store i64 %90, i64* %107, align 8
  %108 = load i64, i64* %RBP, align 8
  %109 = add i64 %108, -32
  %110 = load i64, i64* %PC, align 8
  %111 = add i64 %110, 3
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %109 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = zext i32 %113 to i64
  store i64 %114, i64* %RAX, align 8, !tbaa !2428
  store i32 %113, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 20) to i32*), align 4
  store i32 %113, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 16) to i32*), align 16
  %115 = add i64 %108, -56
  %116 = add i64 %110, 21
  store i64 %116, i64* %PC, align 8
  %117 = inttoptr i64 %115 to i64*
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %RDI, align 8, !tbaa !2428
  %119 = add i64 %110, -354
  %120 = add i64 %110, 26
  %121 = load i64, i64* %RSP, align 8, !tbaa !2428
  %122 = add i64 %121, -8
  %123 = inttoptr i64 %122 to i64*
  store i64 %120, i64* %123, align 8
  store i64 %122, i64* %RSP, align 8, !tbaa !2428
  store i64 %119, i64* %PC, align 8, !tbaa !2428
  %124 = tail call fastcc %struct.Memory* @ext_602090_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %125 = load i64, i64* %RBP, align 8
  %126 = add i64 %125, -40
  %127 = load i64, i64* %RAX, align 8
  %128 = load i64, i64* %PC, align 8
  %129 = add i64 %128, 4
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %126 to i64*
  store i64 %127, i64* %130, align 8
  %131 = load i64, i64* %RBP, align 8
  %132 = add i64 %131, -40
  %133 = load i64, i64* %PC, align 8
  %134 = add i64 %133, 5
  store i64 %134, i64* %PC, align 8
  %135 = inttoptr i64 %132 to i64*
  %136 = load i64, i64* %135, align 8
  store i8 0, i8* %16, align 1, !tbaa !2432
  %137 = trunc i64 %136 to i32
  %138 = and i32 %137, 255
  %139 = tail call i32 @llvm.ctpop.i32(i32 %138) #14
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  %142 = xor i8 %141, 1
  store i8 %142, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2447
  %143 = icmp eq i64 %136, 0
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %31, align 1, !tbaa !2448
  %145 = lshr i64 %136, 63
  %146 = trunc i64 %145 to i8
  store i8 %146, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  %.v58 = select i1 %143, i64 11, i64 52
  %147 = add i64 %133, %.v58
  store i64 %147, i64* %PC, align 8, !tbaa !2428
  br i1 %143, label %block_40071b, label %block_400744

block_40087a:                                     ; preds = %block_4009c0, %block_40083f
  %148 = phi i64 [ %.pre35, %block_40083f ], [ %1030, %block_4009c0 ]
  %MEMORY.0 = phi %struct.Memory* [ %1042, %block_40083f ], [ %1400, %block_4009c0 ]
  %149 = load i64, i64* %RBP, align 8
  %150 = add i64 %149, -8
  %151 = add i64 %148, 4
  store i64 %151, i64* %PC, align 8
  %152 = inttoptr i64 %150 to i32*
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  store i64 %154, i64* %RAX, align 8, !tbaa !2428
  %155 = add i64 %149, -48
  %156 = add i64 %148, 8
  store i64 %156, i64* %PC, align 8
  %157 = inttoptr i64 %155 to i64*
  %158 = load i64, i64* %157, align 8
  %159 = sub i64 %154, %158
  %160 = icmp ult i64 %154, %158
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %16, align 1, !tbaa !2432
  %162 = trunc i64 %159 to i32
  %163 = and i32 %162, 255
  %164 = tail call i32 @llvm.ctpop.i32(i32 %163) #14
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %23, align 1, !tbaa !2446
  %168 = xor i64 %158, %154
  %169 = xor i64 %168, %159
  %170 = lshr i64 %169, 4
  %171 = trunc i64 %170 to i8
  %172 = and i8 %171, 1
  store i8 %172, i8* %28, align 1, !tbaa !2447
  %173 = icmp eq i64 %159, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %31, align 1, !tbaa !2448
  %175 = lshr i64 %159, 63
  %176 = trunc i64 %175 to i8
  store i8 %176, i8* %34, align 1, !tbaa !2449
  %177 = lshr i64 %154, 63
  %178 = lshr i64 %158, 63
  %179 = xor i64 %178, %177
  %180 = xor i64 %175, %177
  %181 = add nuw nsw i64 %180, %179
  %182 = icmp eq i64 %181, 2
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %40, align 1, !tbaa !2450
  %184 = icmp ne i8 %176, 0
  %185 = xor i1 %184, %182
  %.demorgan = or i1 %173, %185
  %.v61 = select i1 %.demorgan, i64 14, i64 353
  %186 = add i64 %148, %.v61
  store i64 %186, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400888, label %block_4009db

block_4007f7:                                     ; preds = %block_4007eb
  store i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 12), i64* %RSI, align 8, !tbaa !2428
  store i64 2, i64* %RDX, align 8, !tbaa !2428
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %187 = add i64 %242, -40
  %188 = add i64 %278, 24
  store i64 %188, i64* %PC, align 8
  %189 = inttoptr i64 %187 to i64*
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %RDI, align 8, !tbaa !2428
  %191 = add i64 %278, 889
  %192 = add i64 %278, 29
  %193 = load i64, i64* %RSP, align 8, !tbaa !2428
  %194 = add i64 %193, -8
  %195 = inttoptr i64 %194 to i64*
  store i64 %192, i64* %195, align 8
  store i64 %194, i64* %RSP, align 8, !tbaa !2428
  store i64 %191, i64* %PC, align 8, !tbaa !2428
  %196 = tail call %struct.Memory* @sub_400b70_fourn_renamed_(%struct.State* nonnull %0, i64 %191, %struct.Memory* %1042)
  %197 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 12), i64* %RSI, align 8, !tbaa !2428
  store i64 2, i64* %RDX, align 8, !tbaa !2428
  store i64 4294967295, i64* %RCX, align 8, !tbaa !2428
  %198 = load i64, i64* %RBP, align 8
  %199 = add i64 %198, -40
  %200 = add i64 %197, 24
  store i64 %200, i64* %PC, align 8
  %201 = inttoptr i64 %199 to i64*
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %RDI, align 8, !tbaa !2428
  %203 = add i64 %197, 860
  %204 = add i64 %197, 29
  %205 = load i64, i64* %RSP, align 8, !tbaa !2428
  %206 = add i64 %205, -8
  %207 = inttoptr i64 %206 to i64*
  store i64 %204, i64* %207, align 8
  store i64 %206, i64* %RSP, align 8, !tbaa !2428
  store i64 %203, i64* %PC, align 8, !tbaa !2428
  %208 = tail call %struct.Memory* @sub_400b70_fourn_renamed_(%struct.State* nonnull %0, i64 %203, %struct.Memory* %1042)
  %209 = load i64, i64* %RBP, align 8
  %210 = add i64 %209, -8
  %211 = load i64, i64* %PC, align 8
  %212 = add i64 %211, 3
  store i64 %212, i64* %PC, align 8
  %213 = inttoptr i64 %210 to i32*
  %214 = load i32, i32* %213, align 4
  %215 = add i32 %214, 1
  %216 = zext i32 %215 to i64
  store i64 %216, i64* %RAX, align 8, !tbaa !2428
  %217 = icmp eq i32 %214, -1
  %218 = icmp eq i32 %215, 0
  %219 = or i1 %217, %218
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %16, align 1, !tbaa !2432
  %221 = and i32 %215, 255
  %222 = tail call i32 @llvm.ctpop.i32(i32 %221) #14
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  store i8 %225, i8* %23, align 1, !tbaa !2446
  %226 = xor i32 %215, %214
  %227 = lshr i32 %226, 4
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  store i8 %229, i8* %28, align 1, !tbaa !2447
  %230 = zext i1 %218 to i8
  store i8 %230, i8* %31, align 1, !tbaa !2448
  %231 = lshr i32 %215, 31
  %232 = trunc i32 %231 to i8
  store i8 %232, i8* %34, align 1, !tbaa !2449
  %233 = lshr i32 %214, 31
  %234 = xor i32 %231, %233
  %235 = add nuw nsw i32 %234, %231
  %236 = icmp eq i32 %235, 2
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %40, align 1, !tbaa !2450
  %238 = add i64 %211, 9
  store i64 %238, i64* %PC, align 8
  store i32 %215, i32* %213, align 4
  %239 = load i64, i64* %PC, align 8
  %240 = add i64 %239, -79
  store i64 %240, i64* %PC, align 8, !tbaa !2428
  br label %block_4007eb

block_4007eb:                                     ; preds = %block_4007e4, %block_4007f7
  %241 = phi i64 [ %.pre34, %block_4007e4 ], [ %240, %block_4007f7 ]
  %242 = load i64, i64* %RBP, align 8
  %243 = add i64 %242, -8
  %244 = add i64 %241, 3
  store i64 %244, i64* %PC, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = zext i32 %246 to i64
  store i64 %247, i64* %RAX, align 8, !tbaa !2428
  %248 = add i64 %242, -28
  %249 = add i64 %241, 6
  store i64 %249, i64* %PC, align 8
  %250 = inttoptr i64 %248 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = sub i32 %246, %251
  %253 = icmp ult i32 %246, %251
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %16, align 1, !tbaa !2432
  %255 = and i32 %252, 255
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255) #14
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %23, align 1, !tbaa !2446
  %260 = xor i32 %251, %246
  %261 = xor i32 %260, %252
  %262 = lshr i32 %261, 4
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  store i8 %264, i8* %28, align 1, !tbaa !2447
  %265 = icmp eq i32 %252, 0
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %31, align 1, !tbaa !2448
  %267 = lshr i32 %252, 31
  %268 = trunc i32 %267 to i8
  store i8 %268, i8* %34, align 1, !tbaa !2449
  %269 = lshr i32 %246, 31
  %270 = lshr i32 %251, 31
  %271 = xor i32 %270, %269
  %272 = xor i32 %267, %269
  %273 = add nuw nsw i32 %272, %271
  %274 = icmp eq i32 %273, 2
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %40, align 1, !tbaa !2450
  %276 = icmp ne i8 %268, 0
  %277 = xor i1 %276, %274
  %.v60 = select i1 %277, i64 12, i64 84
  %278 = add i64 %241, %.v60
  store i64 %278, i64* %PC, align 8, !tbaa !2428
  br i1 %277, label %block_4007f7, label %block_40083f

block_4008fb:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %279 = add i64 %1342, -80
  %280 = add i64 %1347, 5
  store i64 %280, i64* %PC, align 8
  %281 = inttoptr i64 %279 to i64*
  %282 = load i64, i64* %281, align 8
  store i64 %282, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %283 = add i64 %1342, -152
  %284 = add i64 %1347, 13
  store i64 %284, i64* %PC, align 8
  %285 = inttoptr i64 %283 to i64*
  store i64 %282, i64* %285, align 8
  %.pre38 = load i64, i64* %PC, align 8
  br label %block_400908

block_400965:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit2
  %286 = add i64 %547, -120
  %287 = add i64 %552, 5
  store i64 %287, i64* %PC, align 8
  %288 = inttoptr i64 %286 to i64*
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %290 = add i64 %547, -168
  %291 = add i64 %552, 13
  store i64 %291, i64* %PC, align 8
  %292 = inttoptr i64 %290 to i64*
  store i64 %289, i64* %292, align 8
  %293 = load i64, i64* %PC, align 8
  %294 = add i64 %293, 18
  store i64 %294, i64* %PC, align 8, !tbaa !2428
  br label %block_400984

block_4007e4:                                     ; preds = %block_40075d
  %295 = add i64 %1097, 7
  store i64 %295, i64* %PC, align 8
  store i32 0, i32* %1064, align 4
  %.pre34 = load i64, i64* %PC, align 8
  br label %block_4007eb

block_4009db:                                     ; preds = %block_40087a
  %296 = bitcast %union.VectorReg* %6 to double*
  %297 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 24) to i64*), align 8
  store i64 %297, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %298 = add i64 %149, -80
  %299 = add i64 %186, 13
  store i64 %299, i64* %PC, align 8
  %300 = inttoptr i64 %298 to i64*
  %301 = load i64, i64* %300, align 8
  store i64 %301, i64* %556, align 1, !tbaa !2452
  store double 0.000000e+00, double* %558, align 1, !tbaa !2452
  %302 = add i64 %149, -64
  %303 = add i64 %186, 18
  store i64 %303, i64* %PC, align 8
  %304 = inttoptr i64 %302 to i64*
  store i64 %301, i64* %304, align 8
  %305 = load i64, i64* %RBP, align 8
  %306 = add i64 %305, -88
  %307 = load i64, i64* %PC, align 8
  %308 = add i64 %307, 5
  store i64 %308, i64* %PC, align 8
  %309 = inttoptr i64 %306 to i64*
  %310 = load i64, i64* %309, align 8
  store i64 %310, i64* %556, align 1, !tbaa !2452
  store double 0.000000e+00, double* %558, align 1, !tbaa !2452
  %311 = add i64 %305, -80
  %312 = add i64 %307, 10
  store i64 %312, i64* %PC, align 8
  %313 = bitcast i64 %310 to double
  %314 = inttoptr i64 %311 to double*
  %315 = load double, double* %314, align 8
  %316 = fsub double %313, %315
  store double %316, double* %296, align 1, !tbaa !2452
  store i64 0, i64* %557, align 1, !tbaa !2452
  %317 = load double, double* %588, align 1
  %318 = fdiv double %317, %316
  store double %318, double* %588, align 1, !tbaa !2452
  %319 = add i64 %305, -72
  %320 = add i64 %307, 19
  store i64 %320, i64* %PC, align 8
  %321 = inttoptr i64 %319 to double*
  store double %318, double* %321, align 8
  %322 = load i64, i64* %RBP, align 8
  %323 = add i64 %322, -24
  %324 = load i64, i64* %PC, align 8
  %325 = add i64 %324, 7
  store i64 %325, i64* %PC, align 8
  %326 = inttoptr i64 %323 to i32*
  store i32 0, i32* %326, align 4
  %327 = load i64, i64* %RBP, align 8
  %328 = add i64 %327, -8
  %329 = load i64, i64* %PC, align 8
  %330 = add i64 %329, 7
  store i64 %330, i64* %PC, align 8
  %331 = inttoptr i64 %328 to i32*
  store i32 0, i32* %331, align 4
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %.pre48 = load i64, i64* %PC, align 8
  br label %block_400a0e

block_400ada:                                     ; preds = %block_400a83, %block_400aa4
  %334 = phi i64 [ %1454, %block_400a83 ], [ %.pre53, %block_400aa4 ]
  %335 = phi i64 [ %1489, %block_400a83 ], [ %.pre52, %block_400aa4 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.4, %block_400a83 ], [ %900, %block_400aa4 ]
  %336 = add i64 %334, -12
  %337 = add i64 %335, 8
  store i64 %337, i64* %PC, align 8
  %338 = inttoptr i64 %336 to i32*
  %339 = load i32, i32* %338, align 4
  %340 = add i32 %339, 1
  %341 = zext i32 %340 to i64
  store i64 %341, i64* %RAX, align 8, !tbaa !2428
  %342 = icmp eq i32 %339, -1
  %343 = icmp eq i32 %340, 0
  %344 = or i1 %342, %343
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %16, align 1, !tbaa !2432
  %346 = and i32 %340, 255
  %347 = tail call i32 @llvm.ctpop.i32(i32 %346) #14
  %348 = trunc i32 %347 to i8
  %349 = and i8 %348, 1
  %350 = xor i8 %349, 1
  store i8 %350, i8* %23, align 1, !tbaa !2446
  %351 = xor i32 %340, %339
  %352 = lshr i32 %351, 4
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  store i8 %354, i8* %28, align 1, !tbaa !2447
  %355 = zext i1 %343 to i8
  store i8 %355, i8* %31, align 1, !tbaa !2448
  %356 = lshr i32 %340, 31
  %357 = trunc i32 %356 to i8
  store i8 %357, i8* %34, align 1, !tbaa !2449
  %358 = lshr i32 %339, 31
  %359 = xor i32 %356, %358
  %360 = add nuw nsw i32 %359, %356
  %361 = icmp eq i32 %360, 2
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %40, align 1, !tbaa !2450
  %363 = add i64 %335, 14
  store i64 %363, i64* %PC, align 8
  store i32 %340, i32* %338, align 4
  %364 = load i64, i64* %PC, align 8
  %365 = add i64 %364, -199
  store i64 %365, i64* %PC, align 8, !tbaa !2428
  br label %block_400a21

block_400770:                                     ; preds = %block_400769, %block_4007be
  %366 = phi i64 [ %.pre54, %block_400769 ], [ %843, %block_4007be ]
  %367 = load i64, i64* %RBP, align 8
  %368 = add i64 %367, -12
  %369 = add i64 %366, 3
  store i64 %369, i64* %PC, align 8
  %370 = inttoptr i64 %368 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = zext i32 %371 to i64
  store i64 %372, i64* %RAX, align 8, !tbaa !2428
  %373 = add i64 %367, -32
  %374 = add i64 %366, 6
  store i64 %374, i64* %PC, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = sub i32 %371, %376
  %378 = icmp ult i32 %371, %376
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %16, align 1, !tbaa !2432
  %380 = and i32 %377, 255
  %381 = tail call i32 @llvm.ctpop.i32(i32 %380) #14
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  %384 = xor i8 %383, 1
  store i8 %384, i8* %23, align 1, !tbaa !2446
  %385 = xor i32 %376, %371
  %386 = xor i32 %385, %377
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %28, align 1, !tbaa !2447
  %390 = icmp eq i32 %377, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %31, align 1, !tbaa !2448
  %392 = lshr i32 %377, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %34, align 1, !tbaa !2449
  %394 = lshr i32 %371, 31
  %395 = lshr i32 %376, 31
  %396 = xor i32 %395, %394
  %397 = xor i32 %392, %394
  %398 = add nuw nsw i32 %397, %396
  %399 = icmp eq i32 %398, 2
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %40, align 1, !tbaa !2450
  %401 = icmp ne i8 %393, 0
  %402 = xor i1 %401, %399
  %.v57 = select i1 %402, i64 12, i64 97
  %403 = add i64 %366, %.v57
  store i64 %403, i64* %PC, align 8, !tbaa !2428
  %404 = add i64 %367, -8
  br i1 %402, label %block_40077c, label %block_4007d1

block_400a21:                                     ; preds = %block_400a1a, %block_400ada
  %405 = phi i64 [ %.pre50, %block_400a1a ], [ %365, %block_400ada ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.12, %block_400a1a ], [ %MEMORY.2, %block_400ada ]
  %406 = load i64, i64* %RBP, align 8
  %407 = add i64 %406, -12
  %408 = add i64 %405, 3
  store i64 %408, i64* %PC, align 8
  %409 = inttoptr i64 %407 to i32*
  %410 = load i32, i32* %409, align 4
  %411 = zext i32 %410 to i64
  store i64 %411, i64* %RAX, align 8, !tbaa !2428
  %412 = add i64 %406, -32
  %413 = add i64 %405, 6
  store i64 %413, i64* %PC, align 8
  %414 = inttoptr i64 %412 to i32*
  %415 = load i32, i32* %414, align 4
  %416 = sub i32 %410, %415
  %417 = icmp ult i32 %410, %415
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %16, align 1, !tbaa !2432
  %419 = and i32 %416, 255
  %420 = tail call i32 @llvm.ctpop.i32(i32 %419) #14
  %421 = trunc i32 %420 to i8
  %422 = and i8 %421, 1
  %423 = xor i8 %422, 1
  store i8 %423, i8* %23, align 1, !tbaa !2446
  %424 = xor i32 %415, %410
  %425 = xor i32 %424, %416
  %426 = lshr i32 %425, 4
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  store i8 %428, i8* %28, align 1, !tbaa !2447
  %429 = icmp eq i32 %416, 0
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %31, align 1, !tbaa !2448
  %431 = lshr i32 %416, 31
  %432 = trunc i32 %431 to i8
  store i8 %432, i8* %34, align 1, !tbaa !2449
  %433 = lshr i32 %410, 31
  %434 = lshr i32 %415, 31
  %435 = xor i32 %434, %433
  %436 = xor i32 %431, %433
  %437 = add nuw nsw i32 %436, %435
  %438 = icmp eq i32 %437, 2
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %40, align 1, !tbaa !2450
  %440 = icmp ne i8 %432, 0
  %441 = xor i1 %440, %438
  %.v = select i1 %441, i64 12, i64 204
  %442 = add i64 %405, %.v
  store i64 %442, i64* %PC, align 8, !tbaa !2428
  br i1 %441, label %block_400a2d, label %block_400aed

block_400b56:                                     ; preds = %block_400b0a, %block_400b31
  %443 = phi i64 [ %.pre49, %block_400b31 ], [ %1222, %block_400b0a ]
  %MEMORY.5 = phi %struct.Memory* [ %666, %block_400b31 ], [ %1214, %block_400b0a ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %444 = load i64, i64* %RSP, align 8
  %445 = add i64 %444, 192
  store i64 %445, i64* %RSP, align 8, !tbaa !2428
  %446 = icmp ugt i64 %444, -193
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %16, align 1, !tbaa !2432
  %448 = trunc i64 %445 to i32
  %449 = and i32 %448, 255
  %450 = tail call i32 @llvm.ctpop.i32(i32 %449) #14
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  %453 = xor i8 %452, 1
  store i8 %453, i8* %23, align 1, !tbaa !2446
  %454 = xor i64 %445, %444
  %455 = lshr i64 %454, 4
  %456 = trunc i64 %455 to i8
  %457 = and i8 %456, 1
  store i8 %457, i8* %28, align 1, !tbaa !2447
  %458 = icmp eq i64 %445, 0
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %31, align 1, !tbaa !2448
  %460 = lshr i64 %445, 63
  %461 = trunc i64 %460 to i8
  store i8 %461, i8* %34, align 1, !tbaa !2449
  %462 = lshr i64 %444, 63
  %463 = xor i64 %460, %462
  %464 = add nuw nsw i64 %463, %460
  %465 = icmp eq i64 %464, 2
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %40, align 1, !tbaa !2450
  %467 = add i64 %443, 10
  store i64 %467, i64* %PC, align 8
  %468 = add i64 %444, 200
  %469 = inttoptr i64 %445 to i64*
  %470 = load i64, i64* %469, align 8
  store i64 %470, i64* %RBP, align 8, !tbaa !2428
  store i64 %468, i64* %RSP, align 8, !tbaa !2428
  %471 = add i64 %443, 11
  store i64 %471, i64* %PC, align 8
  %472 = inttoptr i64 %468 to i64*
  %473 = load i64, i64* %472, align 8
  store i64 %473, i64* %PC, align 8, !tbaa !2428
  %474 = add i64 %444, 208
  store i64 %474, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.5

block_4007d1:                                     ; preds = %block_400770
  %475 = add i64 %403, 8
  store i64 %475, i64* %PC, align 8
  %476 = inttoptr i64 %404 to i32*
  %477 = load i32, i32* %476, align 4
  %478 = add i32 %477, 1
  %479 = zext i32 %478 to i64
  store i64 %479, i64* %RAX, align 8, !tbaa !2428
  %480 = icmp eq i32 %477, -1
  %481 = icmp eq i32 %478, 0
  %482 = or i1 %480, %481
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %16, align 1, !tbaa !2432
  %484 = and i32 %478, 255
  %485 = tail call i32 @llvm.ctpop.i32(i32 %484) #14
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  %488 = xor i8 %487, 1
  store i8 %488, i8* %23, align 1, !tbaa !2446
  %489 = xor i32 %478, %477
  %490 = lshr i32 %489, 4
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  store i8 %492, i8* %28, align 1, !tbaa !2447
  %493 = zext i1 %481 to i8
  store i8 %493, i8* %31, align 1, !tbaa !2448
  %494 = lshr i32 %478, 31
  %495 = trunc i32 %494 to i8
  store i8 %495, i8* %34, align 1, !tbaa !2449
  %496 = lshr i32 %477, 31
  %497 = xor i32 %494, %496
  %498 = add nuw nsw i32 %497, %494
  %499 = icmp eq i32 %498, 2
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %40, align 1, !tbaa !2450
  %501 = add i64 %403, 14
  store i64 %501, i64* %PC, align 8
  store i32 %478, i32* %476, align 4
  %502 = load i64, i64* %PC, align 8
  %503 = add i64 %502, -130
  store i64 %503, i64* %PC, align 8, !tbaa !2428
  br label %block_40075d

block_400944:                                     ; preds = %block_400937, %block_400925
  %504 = phi i64 [ %.pre41, %block_400937 ], [ %811, %block_400925 ]
  %505 = load i64, i64* %RBP, align 8
  %506 = add i64 %505, -160
  %507 = add i64 %504, 8
  store i64 %507, i64* %PC, align 8
  %508 = inttoptr i64 %506 to i64*
  %509 = load i64, i64* %508, align 8
  store i64 %509, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %510 = add i64 %505, -88
  %511 = add i64 %504, 13
  store i64 %511, i64* %PC, align 8
  %512 = inttoptr i64 %510 to i64*
  store i64 %509, i64* %512, align 8
  %513 = load i64, i64* %RBP, align 8
  %514 = add i64 %513, -120
  %515 = load i64, i64* %PC, align 8
  %516 = add i64 %515, 5
  store i64 %516, i64* %PC, align 8
  %517 = inttoptr i64 %514 to i64*
  %518 = load i64, i64* %517, align 8
  store i64 %518, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %519 = add i64 %513, -96
  %520 = add i64 %515, 10
  store i64 %520, i64* %PC, align 8
  %521 = inttoptr i64 %519 to i64*
  %522 = load i64, i64* %521, align 8
  store i64 %522, i64* %556, align 1, !tbaa !2452
  store double 0.000000e+00, double* %558, align 1, !tbaa !2452
  %523 = add i64 %515, 14
  store i64 %523, i64* %PC, align 8
  %.cast18 = bitcast i64 %522 to double
  %524 = bitcast i64 %518 to double
  %525 = fcmp uno double %.cast18, %524
  br i1 %525, label %526, label %536

; <label>:526:                                    ; preds = %block_400944
  %527 = fadd double %.cast18, %524
  %528 = bitcast double %527 to i64
  %529 = and i64 %528, 9221120237041090560
  %530 = icmp eq i64 %529, 9218868437227405312
  %531 = and i64 %528, 2251799813685247
  %532 = icmp ne i64 %531, 0
  %533 = and i1 %530, %532
  br i1 %533, label %534, label %542

; <label>:534:                                    ; preds = %526
  %535 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %523, %struct.Memory* %646) #16
  %.pre42 = load i64, i64* %PC, align 8
  %.pre43 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit2

; <label>:536:                                    ; preds = %block_400944
  %537 = fcmp ogt double %.cast18, %524
  br i1 %537, label %542, label %538

; <label>:538:                                    ; preds = %536
  %539 = fcmp olt double %.cast18, %524
  br i1 %539, label %542, label %540

; <label>:540:                                    ; preds = %538
  %541 = fcmp oeq double %.cast18, %524
  br i1 %541, label %542, label %546

; <label>:542:                                    ; preds = %540, %538, %536, %526
  %543 = phi i8 [ 0, %536 ], [ 0, %538 ], [ 1, %540 ], [ 1, %526 ]
  %544 = phi i8 [ 0, %536 ], [ 0, %538 ], [ 0, %540 ], [ 1, %526 ]
  %545 = phi i8 [ 0, %536 ], [ 1, %538 ], [ 0, %540 ], [ 1, %526 ]
  store i8 %543, i8* %31, align 1, !tbaa !2451
  store i8 %544, i8* %23, align 1, !tbaa !2451
  store i8 %545, i8* %16, align 1, !tbaa !2451
  br label %546

; <label>:546:                                    ; preds = %542, %540
  store i8 0, i8* %40, align 1, !tbaa !2451
  store i8 0, i8* %34, align 1, !tbaa !2451
  store i8 0, i8* %28, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit2

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit2: ; preds = %546, %534
  %547 = phi i64 [ %.pre43, %534 ], [ %513, %546 ]
  %548 = phi i64 [ %.pre42, %534 ], [ %523, %546 ]
  %549 = phi %struct.Memory* [ %535, %534 ], [ %646, %546 ]
  %550 = load i8, i8* %16, align 1, !tbaa !2432
  %551 = icmp ne i8 %550, 0
  %.v81 = select i1 %551, i64 24, i64 6
  %552 = add i64 %548, %.v81
  store i64 %552, i64* %PC, align 8, !tbaa !2428
  %553 = icmp eq i8 %550, 1
  br i1 %553, label %block_400977, label %block_400965

block_40083f:                                     ; preds = %block_4007eb
  %554 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %554, align 1, !tbaa !2454
  %555 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 8) to i64*), align 8
  %556 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %555, i64* %556, align 1, !tbaa !2452
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %558 = bitcast i64* %557 to double*
  store double 0.000000e+00, double* %558, align 1, !tbaa !2452
  %559 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 16) to i64*), align 16
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %559, i64* %560, align 1, !tbaa !2452
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %562 = bitcast i64* %561 to double*
  store double 0.000000e+00, double* %562, align 1, !tbaa !2452
  %563 = add i64 %242, -80
  %564 = add i64 %278, 24
  store i64 %564, i64* %PC, align 8
  %565 = inttoptr i64 %563 to i64*
  store i64 %559, i64* %565, align 8
  %566 = load i64, i64* %RBP, align 8
  %567 = add i64 %566, -88
  %568 = load i64, i64* %PC, align 8
  %569 = add i64 %568, 5
  store i64 %569, i64* %PC, align 8
  %570 = load i64, i64* %556, align 1
  %571 = inttoptr i64 %567 to i64*
  store i64 %570, i64* %571, align 8
  %572 = load i64, i64* %RBP, align 8
  %573 = add i64 %572, -96
  %574 = load i64, i64* %PC, align 8
  %575 = add i64 %574, 5
  store i64 %575, i64* %PC, align 8
  %576 = load i64, i64* %560, align 1
  %577 = inttoptr i64 %573 to i64*
  store i64 %576, i64* %577, align 8
  %578 = load i64, i64* %RBP, align 8
  %579 = add i64 %578, -104
  %580 = load i64, i64* %PC, align 8
  %581 = add i64 %580, 5
  store i64 %581, i64* %PC, align 8
  %582 = load i64, i64* %556, align 1
  %583 = inttoptr i64 %579 to i64*
  store i64 %582, i64* %583, align 8
  %584 = load i64, i64* %RBP, align 8
  %585 = add i64 %584, -128
  %586 = load i64, i64* %PC, align 8
  %587 = add i64 %586, 5
  store i64 %587, i64* %PC, align 8
  %588 = bitcast [32 x %union.VectorReg]* %5 to double*
  %589 = load i64, i64* %1048, align 1
  %590 = inttoptr i64 %585 to i64*
  store i64 %589, i64* %590, align 8
  %591 = load i64, i64* %RBP, align 8
  %592 = add i64 %591, -136
  %593 = load i64, i64* %PC, align 8
  %594 = add i64 %593, 8
  store i64 %594, i64* %PC, align 8
  %595 = load i64, i64* %1048, align 1
  %596 = inttoptr i64 %592 to i64*
  store i64 %595, i64* %596, align 8
  %597 = load i64, i64* %RBP, align 8
  %598 = add i64 %597, -8
  %599 = load i64, i64* %PC, align 8
  %600 = add i64 %599, 7
  store i64 %600, i64* %PC, align 8
  %601 = inttoptr i64 %598 to i32*
  store i32 1, i32* %601, align 4
  %.pre35 = load i64, i64* %PC, align 8
  br label %block_40087a

block_400908:                                     ; preds = %block_4008e9, %block_4008fb
  %602 = phi i64 [ %1059, %block_4008e9 ], [ %.pre38, %block_4008fb ]
  %603 = load i64, i64* %RBP, align 8
  %604 = add i64 %603, -152
  %605 = add i64 %602, 8
  store i64 %605, i64* %PC, align 8
  %606 = inttoptr i64 %604 to i64*
  %607 = load i64, i64* %606, align 8
  store i64 %607, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %608 = add i64 %603, -80
  %609 = add i64 %602, 13
  store i64 %609, i64* %PC, align 8
  %610 = inttoptr i64 %608 to i64*
  store i64 %607, i64* %610, align 8
  %611 = load i64, i64* %RBP, align 8
  %612 = add i64 %611, -112
  %613 = load i64, i64* %PC, align 8
  %614 = add i64 %613, 5
  store i64 %614, i64* %PC, align 8
  %615 = inttoptr i64 %612 to i64*
  %616 = load i64, i64* %615, align 8
  store i64 %616, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %617 = add i64 %611, -88
  %618 = add i64 %613, 10
  store i64 %618, i64* %PC, align 8
  %619 = bitcast i64 %616 to double
  %620 = inttoptr i64 %617 to double*
  %621 = load double, double* %620, align 8
  %622 = fcmp uno double %619, %621
  br i1 %622, label %623, label %633

; <label>:623:                                    ; preds = %block_400908
  %624 = fadd double %619, %621
  %625 = bitcast double %624 to i64
  %626 = and i64 %625, 9221120237041090560
  %627 = icmp eq i64 %626, 9218868437227405312
  %628 = and i64 %625, 2251799813685247
  %629 = icmp ne i64 %628, 0
  %630 = and i1 %627, %629
  br i1 %630, label %631, label %639

; <label>:631:                                    ; preds = %623
  %632 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %618, %struct.Memory* %1344) #16
  %.pre39 = load i64, i64* %PC, align 8
  %.pre40 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

; <label>:633:                                    ; preds = %block_400908
  %634 = fcmp ogt double %619, %621
  br i1 %634, label %639, label %635

; <label>:635:                                    ; preds = %633
  %636 = fcmp olt double %619, %621
  br i1 %636, label %639, label %637

; <label>:637:                                    ; preds = %635
  %638 = fcmp oeq double %619, %621
  br i1 %638, label %639, label %643

; <label>:639:                                    ; preds = %637, %635, %633, %623
  %640 = phi i8 [ 0, %633 ], [ 0, %635 ], [ 1, %637 ], [ 1, %623 ]
  %641 = phi i8 [ 0, %633 ], [ 0, %635 ], [ 0, %637 ], [ 1, %623 ]
  %642 = phi i8 [ 0, %633 ], [ 1, %635 ], [ 0, %637 ], [ 1, %623 ]
  store i8 %640, i8* %31, align 1, !tbaa !2451
  store i8 %641, i8* %23, align 1, !tbaa !2451
  store i8 %642, i8* %16, align 1, !tbaa !2451
  br label %643

; <label>:643:                                    ; preds = %639, %637
  store i8 0, i8* %40, align 1, !tbaa !2451
  store i8 0, i8* %34, align 1, !tbaa !2451
  store i8 0, i8* %28, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1: ; preds = %643, %631
  %644 = phi i64 [ %.pre40, %631 ], [ %611, %643 ]
  %645 = phi i64 [ %.pre39, %631 ], [ %618, %643 ]
  %646 = phi %struct.Memory* [ %632, %631 ], [ %1344, %643 ]
  %647 = load i8, i8* %16, align 1, !tbaa !2432
  %648 = load i8, i8* %31, align 1, !tbaa !2448
  %649 = or i8 %648, %647
  %650 = icmp ne i8 %649, 0
  %.v80 = select i1 %650, i64 24, i64 6
  %651 = add i64 %645, %.v80
  store i64 %651, i64* %PC, align 8, !tbaa !2428
  br i1 %650, label %block_400937, label %block_400925

block_400b31:                                     ; preds = %block_400b00
  store i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 183), i64* %RSI, align 8, !tbaa !2428
  %652 = load i64, i64* @stderr, align 32
  store i64 %652, i64* %RDI, align 8, !tbaa !2428
  %653 = add i64 %1099, -28
  %654 = add i64 %1503, 21
  store i64 %654, i64* %PC, align 8
  %655 = inttoptr i64 %653 to i32*
  %656 = load i32, i32* %655, align 4
  %657 = zext i32 %656 to i64
  store i64 %657, i64* %RDX, align 8, !tbaa !2428
  %658 = add i64 %1503, 24
  store i64 %658, i64* %PC, align 8
  %659 = load i32, i32* %1492, align 4
  %660 = zext i32 %659 to i64
  store i64 %660, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %661 = add i64 %1503, -1457
  %662 = add i64 %1503, 31
  %663 = load i64, i64* %RSP, align 8, !tbaa !2428
  %664 = add i64 %663, -8
  %665 = inttoptr i64 %664 to i64*
  store i64 %662, i64* %665, align 8
  store i64 %664, i64* %RSP, align 8, !tbaa !2428
  store i64 %661, i64* %PC, align 8, !tbaa !2428
  %666 = tail call fastcc %struct.Memory* @ext_6020b8_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.12)
  %667 = load i64, i64* %RBP, align 8
  %668 = add i64 %667, -192
  %669 = load i32, i32* %EAX, align 4
  %670 = load i64, i64* %PC, align 8
  %671 = add i64 %670, 6
  store i64 %671, i64* %PC, align 8
  %672 = inttoptr i64 %668 to i32*
  store i32 %669, i32* %672, align 4
  %.pre49 = load i64, i64* %PC, align 8
  br label %block_400b56

block_40077c:                                     ; preds = %block_400770
  %673 = add i64 %403, 3
  store i64 %673, i64* %PC, align 8
  %674 = inttoptr i64 %404 to i32*
  %675 = load i32, i32* %674, align 4
  %676 = and i32 %675, 15
  %677 = zext i32 %676 to i64
  store i64 %677, i64* %RAX, align 8, !tbaa !2428
  %678 = add nsw i32 %676, -8
  %679 = icmp ult i32 %676, 8
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %16, align 1, !tbaa !2432
  %681 = and i32 %678, 255
  %682 = tail call i32 @llvm.ctpop.i32(i32 %681) #14
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  %685 = xor i8 %684, 1
  store i8 %685, i8* %23, align 1, !tbaa !2446
  %686 = lshr i32 %678, 4
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  store i8 %688, i8* %28, align 1, !tbaa !2447
  %689 = icmp eq i32 %678, 0
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %31, align 1, !tbaa !2448
  %691 = lshr i32 %678, 31
  %692 = trunc i32 %691 to i8
  store i8 %692, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  %.v65 = select i1 %689, i64 30, i64 15
  %693 = add i64 %403, %.v65
  store i64 %693, i64* %PC, align 8, !tbaa !2428
  br i1 %689, label %block_40079a, label %block_40078b

block_400a2d:                                     ; preds = %block_400a21
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %694 = add i64 %406, -40
  %695 = add i64 %442, 6
  store i64 %695, i64* %PC, align 8
  %696 = inttoptr i64 %694 to i64*
  %697 = load i64, i64* %696, align 8
  store i64 %697, i64* %RCX, align 8, !tbaa !2428
  %698 = add i64 %442, 9
  store i64 %698, i64* %PC, align 8
  %699 = load i32, i32* %414, align 4
  %700 = zext i32 %699 to i64
  store i64 %700, i64* %RDX, align 8, !tbaa !2428
  %701 = add i64 %406, -8
  %702 = add i64 %442, 13
  store i64 %702, i64* %PC, align 8
  %703 = inttoptr i64 %701 to i32*
  %704 = load i32, i32* %703, align 4
  %705 = sext i32 %699 to i64
  %706 = sext i32 %704 to i64
  %707 = mul nsw i64 %706, %705
  %708 = trunc i64 %707 to i32
  %709 = and i64 %707, 4294967295
  store i64 %709, i64* %RDX, align 8, !tbaa !2428
  %710 = shl i64 %707, 32
  %711 = ashr exact i64 %710, 32
  %712 = icmp ne i64 %711, %707
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %16, align 1, !tbaa !2432
  %714 = and i32 %708, 255
  %715 = tail call i32 @llvm.ctpop.i32(i32 %714) #14
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  store i8 %718, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2447
  store i8 0, i8* %31, align 1, !tbaa !2448
  %719 = lshr i32 %708, 31
  %720 = trunc i32 %719 to i8
  store i8 %720, i8* %34, align 1, !tbaa !2449
  store i8 %713, i8* %40, align 1, !tbaa !2450
  %721 = add i64 %442, 16
  store i64 %721, i64* %PC, align 8
  %722 = trunc i64 %707 to i32
  %723 = load i32, i32* %409, align 4
  %724 = add i32 %723, %722
  %725 = shl i32 %724, 1
  %726 = or i32 %725, 1
  %727 = zext i32 %726 to i64
  store i64 %727, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %728 = and i32 %726, 255
  %729 = tail call i32 @llvm.ctpop.i32(i32 %728) #14
  %730 = trunc i32 %729 to i8
  %731 = and i8 %730, 1
  %732 = xor i8 %731, 1
  store i8 %732, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2447
  store i8 0, i8* %31, align 1, !tbaa !2448
  %733 = lshr i32 %724, 30
  %734 = and i32 %733, 1
  %735 = trunc i32 %734 to i8
  store i8 %735, i8* %34, align 1, !tbaa !2449
  %736 = lshr i32 %724, 30
  %737 = and i32 %736, 1
  %738 = xor i32 %734, %737
  %739 = add nuw nsw i32 %738, %734
  %740 = icmp eq i32 %739, 2
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %40, align 1, !tbaa !2450
  %742 = sext i32 %726 to i64
  store i64 %742, i64* %RSI, align 8, !tbaa !2428
  %743 = load i64, i64* %RCX, align 8
  %744 = shl nsw i64 %742, 3
  %745 = add i64 %743, %744
  %746 = add i64 %442, 30
  store i64 %746, i64* %PC, align 8
  %747 = inttoptr i64 %745 to i64*
  %748 = load i64, i64* %747, align 8
  store i64 %748, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %749 = load i64, i64* %RBP, align 8
  %750 = add i64 %749, -64
  %751 = add i64 %442, 35
  store i64 %751, i64* %PC, align 8
  %752 = bitcast i64 %748 to double
  %753 = inttoptr i64 %750 to double*
  %754 = load double, double* %753, align 8
  %755 = fsub double %752, %754
  store double %755, double* %588, align 1, !tbaa !2452
  store i64 0, i64* %1049, align 1, !tbaa !2452
  %756 = add i64 %749, -72
  %757 = add i64 %442, 40
  store i64 %757, i64* %PC, align 8
  %758 = inttoptr i64 %756 to double*
  %759 = load double, double* %758, align 8
  %760 = fmul double %755, %759
  store double %760, double* %588, align 1, !tbaa !2452
  store i64 0, i64* %1049, align 1, !tbaa !2452
  %761 = tail call double @llvm.trunc.f64(double %760) #14
  %762 = tail call double @llvm.fabs.f64(double %761) #14
  %763 = fcmp ogt double %762, 0x41DFFFFFFFC00000
  %764 = fptosi double %761 to i32
  %765 = zext i32 %764 to i64
  %766 = select i1 %763, i64 2147483648, i64 %765
  store i64 %766, i64* %RDX, align 8, !tbaa !2428
  %767 = add i64 %749, -16
  %768 = trunc i64 %766 to i32
  %769 = add i64 %442, 47
  store i64 %769, i64* %PC, align 8
  %770 = inttoptr i64 %767 to i32*
  store i32 %768, i32* %770, align 4
  %771 = load i64, i64* %RBP, align 8
  %772 = add i64 %771, -8
  %773 = load i64, i64* %PC, align 8
  %774 = add i64 %773, 3
  store i64 %774, i64* %PC, align 8
  %775 = inttoptr i64 %772 to i32*
  %776 = load i32, i32* %775, align 4
  %777 = and i32 %776, 15
  %778 = zext i32 %777 to i64
  store i64 %778, i64* %RDX, align 8, !tbaa !2428
  %779 = add nsw i32 %777, -8
  %780 = icmp ult i32 %777, 8
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %16, align 1, !tbaa !2432
  %782 = and i32 %779, 255
  %783 = tail call i32 @llvm.ctpop.i32(i32 %782) #14
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  %786 = xor i8 %785, 1
  store i8 %786, i8* %23, align 1, !tbaa !2446
  %787 = lshr i32 %779, 4
  %788 = trunc i32 %787 to i8
  %789 = and i8 %788, 1
  store i8 %789, i8* %28, align 1, !tbaa !2447
  %790 = icmp eq i32 %779, 0
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %31, align 1, !tbaa !2448
  %792 = lshr i32 %779, 31
  %793 = trunc i32 %792 to i8
  store i8 %793, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  %794 = add i64 %771, -177
  %795 = load i8, i8* %AL, align 1
  %796 = add i64 %773, 15
  store i64 %796, i64* %PC, align 8
  %797 = inttoptr i64 %794 to i8*
  store i8 %795, i8* %797, align 1
  %798 = load i64, i64* %PC, align 8
  %799 = load i8, i8* %31, align 1, !tbaa !2448
  %800 = icmp ne i8 %799, 0
  %.v78 = select i1 %800, i64 24, i64 6
  %801 = add i64 %798, %.v78
  store i64 %801, i64* %PC, align 8, !tbaa !2428
  %802 = icmp eq i8 %799, 1
  br i1 %802, label %block_400a83, label %block_400a71

block_400925:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %803 = add i64 %644, -112
  %804 = add i64 %651, 5
  store i64 %804, i64* %PC, align 8
  %805 = inttoptr i64 %803 to i64*
  %806 = load i64, i64* %805, align 8
  store i64 %806, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %807 = add i64 %644, -160
  %808 = add i64 %651, 13
  store i64 %808, i64* %PC, align 8
  %809 = inttoptr i64 %807 to i64*
  store i64 %806, i64* %809, align 8
  %810 = load i64, i64* %PC, align 8
  %811 = add i64 %810, 18
  store i64 %811, i64* %PC, align 8, !tbaa !2428
  br label %block_400944

block_4007be:                                     ; preds = %block_40078b, %block_40079a
  %812 = phi i64 [ %367, %block_40078b ], [ %.pre56, %block_40079a ]
  %813 = phi i64 [ %1180, %block_40078b ], [ %.pre55, %block_40079a ]
  %814 = add i64 %812, -12
  %815 = add i64 %813, 8
  store i64 %815, i64* %PC, align 8
  %816 = inttoptr i64 %814 to i32*
  %817 = load i32, i32* %816, align 4
  %818 = add i32 %817, 1
  %819 = zext i32 %818 to i64
  store i64 %819, i64* %RAX, align 8, !tbaa !2428
  %820 = icmp eq i32 %817, -1
  %821 = icmp eq i32 %818, 0
  %822 = or i1 %820, %821
  %823 = zext i1 %822 to i8
  store i8 %823, i8* %16, align 1, !tbaa !2432
  %824 = and i32 %818, 255
  %825 = tail call i32 @llvm.ctpop.i32(i32 %824) #14
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  %828 = xor i8 %827, 1
  store i8 %828, i8* %23, align 1, !tbaa !2446
  %829 = xor i32 %818, %817
  %830 = lshr i32 %829, 4
  %831 = trunc i32 %830 to i8
  %832 = and i8 %831, 1
  store i8 %832, i8* %28, align 1, !tbaa !2447
  %833 = zext i1 %821 to i8
  store i8 %833, i8* %31, align 1, !tbaa !2448
  %834 = lshr i32 %818, 31
  %835 = trunc i32 %834 to i8
  store i8 %835, i8* %34, align 1, !tbaa !2449
  %836 = lshr i32 %817, 31
  %837 = xor i32 %834, %836
  %838 = add nuw nsw i32 %837, %834
  %839 = icmp eq i32 %838, 2
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %40, align 1, !tbaa !2450
  %841 = add i64 %813, 14
  store i64 %841, i64* %PC, align 8
  store i32 %818, i32* %816, align 4
  %842 = load i64, i64* %PC, align 8
  %843 = add i64 %842, -92
  store i64 %843, i64* %PC, align 8, !tbaa !2428
  br label %block_400770

block_400aa4:                                     ; preds = %block_400a83
  store i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 100), i64* %RSI, align 8, !tbaa !2428
  %844 = add i64 %1454, -24
  %845 = add i64 %1489, 13
  store i64 %845, i64* %PC, align 8
  %846 = inttoptr i64 %844 to i32*
  %847 = load i32, i32* %846, align 4
  %848 = add i32 %847, 1
  %849 = zext i32 %848 to i64
  store i64 %849, i64* %RAX, align 8, !tbaa !2428
  %850 = icmp eq i32 %847, -1
  %851 = icmp eq i32 %848, 0
  %852 = or i1 %850, %851
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %16, align 1, !tbaa !2432
  %854 = and i32 %848, 255
  %855 = tail call i32 @llvm.ctpop.i32(i32 %854) #14
  %856 = trunc i32 %855 to i8
  %857 = and i8 %856, 1
  %858 = xor i8 %857, 1
  store i8 %858, i8* %23, align 1, !tbaa !2446
  %859 = xor i32 %848, %847
  %860 = lshr i32 %859, 4
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  store i8 %862, i8* %28, align 1, !tbaa !2447
  %863 = zext i1 %851 to i8
  store i8 %863, i8* %31, align 1, !tbaa !2448
  %864 = lshr i32 %848, 31
  %865 = trunc i32 %864 to i8
  store i8 %865, i8* %34, align 1, !tbaa !2449
  %866 = lshr i32 %847, 31
  %867 = xor i32 %864, %866
  %868 = add nuw nsw i32 %867, %864
  %869 = icmp eq i32 %868, 2
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %40, align 1, !tbaa !2450
  %871 = add i64 %1489, 19
  store i64 %871, i64* %PC, align 8
  store i32 %848, i32* %846, align 4
  %872 = load i64, i64* %PC, align 8
  %873 = load i64, i64* @stderr, align 32
  store i64 %873, i64* %RDI, align 8, !tbaa !2428
  %874 = load i64, i64* %RBP, align 8
  %875 = add i64 %874, -8
  %876 = add i64 %872, 11
  store i64 %876, i64* %PC, align 8
  %877 = inttoptr i64 %875 to i32*
  %878 = load i32, i32* %877, align 4
  %879 = zext i32 %878 to i64
  store i64 %879, i64* %RDX, align 8, !tbaa !2428
  %880 = add i64 %874, -12
  %881 = add i64 %872, 14
  store i64 %881, i64* %PC, align 8
  %882 = inttoptr i64 %880 to i32*
  %883 = load i32, i32* %882, align 4
  %884 = zext i32 %883 to i64
  store i64 %884, i64* %RCX, align 8, !tbaa !2428
  %885 = add i64 %874, -20
  %886 = add i64 %872, 18
  store i64 %886, i64* %PC, align 8
  %887 = inttoptr i64 %885 to i32*
  %888 = load i32, i32* %887, align 4
  %889 = zext i32 %888 to i64
  store i64 %889, i64* %332, align 8, !tbaa !2428
  %890 = add i64 %874, -16
  %891 = add i64 %872, 22
  store i64 %891, i64* %PC, align 8
  %892 = inttoptr i64 %890 to i32*
  %893 = load i32, i32* %892, align 4
  %894 = zext i32 %893 to i64
  store i64 %894, i64* %333, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %895 = add i64 %872, -1335
  %896 = add i64 %872, 29
  %897 = load i64, i64* %RSP, align 8, !tbaa !2428
  %898 = add i64 %897, -8
  %899 = inttoptr i64 %898 to i64*
  store i64 %896, i64* %899, align 8
  store i64 %898, i64* %RSP, align 8, !tbaa !2428
  store i64 %895, i64* %PC, align 8, !tbaa !2428
  %900 = tail call fastcc %struct.Memory* @ext_6020b8_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %901 = load i64, i64* %RBP, align 8
  %902 = add i64 %901, -184
  %903 = load i32, i32* %EAX, align 4
  %904 = load i64, i64* %PC, align 8
  %905 = add i64 %904, 6
  store i64 %905, i64* %PC, align 8
  %906 = inttoptr i64 %902 to i32*
  store i32 %903, i32* %906, align 4
  %.pre52 = load i64, i64* %PC, align 8
  %.pre53 = load i64, i64* %RBP, align 8
  br label %block_400ada

block_400937:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %907 = add i64 %644, -88
  %908 = add i64 %651, 5
  store i64 %908, i64* %PC, align 8
  %909 = inttoptr i64 %907 to i64*
  %910 = load i64, i64* %909, align 8
  store i64 %910, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %911 = add i64 %644, -160
  %912 = add i64 %651, 13
  store i64 %912, i64* %PC, align 8
  %913 = inttoptr i64 %911 to i64*
  store i64 %910, i64* %913, align 8
  %.pre41 = load i64, i64* %PC, align 8
  br label %block_400944

block_4009a1:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %914 = add i64 %1398, -120
  %915 = add i64 %1405, 5
  store i64 %915, i64* %PC, align 8
  %916 = inttoptr i64 %914 to i64*
  %917 = load i64, i64* %916, align 8
  store i64 %917, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %918 = add i64 %1398, -176
  %919 = add i64 %1405, 13
  store i64 %919, i64* %PC, align 8
  %920 = inttoptr i64 %918 to i64*
  store i64 %917, i64* %920, align 8
  %921 = load i64, i64* %PC, align 8
  %922 = add i64 %921, 18
  store i64 %922, i64* %PC, align 8, !tbaa !2428
  br label %block_4009c0

block_400769:                                     ; preds = %block_40075d
  %923 = add i64 %1061, -12
  %924 = add i64 %1097, 7
  store i64 %924, i64* %PC, align 8
  %925 = inttoptr i64 %923 to i32*
  store i32 0, i32* %925, align 4
  %.pre54 = load i64, i64* %PC, align 8
  br label %block_400770

block_400a1a:                                     ; preds = %block_400a0e
  %926 = add i64 %1099, -12
  %927 = add i64 %1135, 7
  store i64 %927, i64* %PC, align 8
  %928 = inttoptr i64 %926 to i32*
  store i32 0, i32* %928, align 4
  %.pre50 = load i64, i64* %PC, align 8
  br label %block_400a21

block_400977:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit2
  %929 = add i64 %547, -96
  %930 = add i64 %552, 5
  store i64 %930, i64* %PC, align 8
  %931 = inttoptr i64 %929 to i64*
  %932 = load i64, i64* %931, align 8
  store i64 %932, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %933 = add i64 %547, -168
  %934 = add i64 %552, 13
  store i64 %934, i64* %PC, align 8
  %935 = inttoptr i64 %933 to i64*
  store i64 %932, i64* %935, align 8
  %.pre44 = load i64, i64* %PC, align 8
  br label %block_400984

block_40079a:                                     ; preds = %block_40078b, %block_40077c
  %936 = phi i64 [ %1180, %block_40078b ], [ %693, %block_40077c ]
  %937 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 32) to i64*), align 16
  store i64 %937, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %938 = add i64 %367, -40
  %939 = add i64 %936, 12
  store i64 %939, i64* %PC, align 8
  %940 = inttoptr i64 %938 to i64*
  %941 = load i64, i64* %940, align 8
  store i64 %941, i64* %RAX, align 8, !tbaa !2428
  %942 = add i64 %936, 15
  store i64 %942, i64* %PC, align 8
  %943 = load i32, i32* %375, align 4
  %944 = zext i32 %943 to i64
  store i64 %944, i64* %RCX, align 8, !tbaa !2428
  %945 = add i64 %936, 19
  store i64 %945, i64* %PC, align 8
  %946 = load i32, i32* %674, align 4
  %947 = sext i32 %943 to i64
  %948 = sext i32 %946 to i64
  %949 = mul nsw i64 %948, %947
  %950 = trunc i64 %949 to i32
  %951 = and i64 %949, 4294967295
  store i64 %951, i64* %RCX, align 8, !tbaa !2428
  %952 = shl i64 %949, 32
  %953 = ashr exact i64 %952, 32
  %954 = icmp ne i64 %953, %949
  %955 = zext i1 %954 to i8
  store i8 %955, i8* %16, align 1, !tbaa !2432
  %956 = and i32 %950, 255
  %957 = tail call i32 @llvm.ctpop.i32(i32 %956) #14
  %958 = trunc i32 %957 to i8
  %959 = and i8 %958, 1
  %960 = xor i8 %959, 1
  store i8 %960, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2447
  store i8 0, i8* %31, align 1, !tbaa !2448
  %961 = lshr i32 %950, 31
  %962 = trunc i32 %961 to i8
  store i8 %962, i8* %34, align 1, !tbaa !2449
  store i8 %955, i8* %40, align 1, !tbaa !2450
  %963 = add i64 %936, 22
  store i64 %963, i64* %PC, align 8
  %964 = trunc i64 %949 to i32
  %965 = load i32, i32* %370, align 4
  %966 = add i32 %965, %964
  %967 = shl i32 %966, 1
  %968 = or i32 %967, 1
  %969 = zext i32 %968 to i64
  store i64 %969, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %970 = and i32 %968, 255
  %971 = tail call i32 @llvm.ctpop.i32(i32 %970) #14
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  %974 = xor i8 %973, 1
  store i8 %974, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2447
  store i8 0, i8* %31, align 1, !tbaa !2448
  %975 = lshr i32 %966, 30
  %976 = and i32 %975, 1
  %977 = trunc i32 %976 to i8
  store i8 %977, i8* %34, align 1, !tbaa !2449
  %978 = lshr i32 %966, 30
  %979 = and i32 %978, 1
  %980 = xor i32 %976, %979
  %981 = add nuw nsw i32 %980, %976
  %982 = icmp eq i32 %981, 2
  %983 = zext i1 %982 to i8
  store i8 %983, i8* %40, align 1, !tbaa !2450
  %984 = sext i32 %968 to i64
  store i64 %984, i64* %RDX, align 8, !tbaa !2428
  %985 = load i64, i64* %RAX, align 8
  %986 = shl nsw i64 %984, 3
  %987 = add i64 %985, %986
  %988 = add i64 %936, 36
  store i64 %988, i64* %PC, align 8
  %989 = load i64, i64* %1048, align 1
  %990 = inttoptr i64 %987 to i64*
  store i64 %989, i64* %990, align 8
  %.pre55 = load i64, i64* %PC, align 8
  %.pre56 = load i64, i64* %RBP, align 8
  br label %block_4007be

block_4009c0:                                     ; preds = %block_4009b3, %block_4009a1
  %991 = phi i64 [ %.pre47, %block_4009b3 ], [ %922, %block_4009a1 ]
  %992 = load i64, i64* %RBP, align 8
  %993 = add i64 %992, -176
  %994 = add i64 %991, 8
  store i64 %994, i64* %PC, align 8
  %995 = inttoptr i64 %993 to i64*
  %996 = load i64, i64* %995, align 8
  store i64 %996, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %997 = add i64 %992, -104
  %998 = add i64 %991, 13
  store i64 %998, i64* %PC, align 8
  %999 = inttoptr i64 %997 to i64*
  store i64 %996, i64* %999, align 8
  %1000 = load i64, i64* %RBP, align 8
  %1001 = add i64 %1000, -8
  %1002 = load i64, i64* %PC, align 8
  %1003 = add i64 %1002, 3
  store i64 %1003, i64* %PC, align 8
  %1004 = inttoptr i64 %1001 to i32*
  %1005 = load i32, i32* %1004, align 4
  %1006 = add i32 %1005, 2
  %1007 = zext i32 %1006 to i64
  store i64 %1007, i64* %RAX, align 8, !tbaa !2428
  %1008 = icmp ugt i32 %1005, -3
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %16, align 1, !tbaa !2432
  %1010 = and i32 %1006, 255
  %1011 = tail call i32 @llvm.ctpop.i32(i32 %1010) #14
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = xor i8 %1013, 1
  store i8 %1014, i8* %23, align 1, !tbaa !2446
  %1015 = xor i32 %1006, %1005
  %1016 = lshr i32 %1015, 4
  %1017 = trunc i32 %1016 to i8
  %1018 = and i8 %1017, 1
  store i8 %1018, i8* %28, align 1, !tbaa !2447
  %1019 = icmp eq i32 %1006, 0
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %31, align 1, !tbaa !2448
  %1021 = lshr i32 %1006, 31
  %1022 = trunc i32 %1021 to i8
  store i8 %1022, i8* %34, align 1, !tbaa !2449
  %1023 = lshr i32 %1005, 31
  %1024 = xor i32 %1021, %1023
  %1025 = add nuw nsw i32 %1024, %1021
  %1026 = icmp eq i32 %1025, 2
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %40, align 1, !tbaa !2450
  %1028 = add i64 %1002, 9
  store i64 %1028, i64* %PC, align 8
  store i32 %1006, i32* %1004, align 4
  %1029 = load i64, i64* %PC, align 8
  %1030 = add i64 %1029, -348
  store i64 %1030, i64* %PC, align 8, !tbaa !2428
  br label %block_40087a

block_400744:                                     ; preds = %block_4006b0
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 1, i8* %23, align 1, !tbaa !2446
  store i8 1, i8* %31, align 1, !tbaa !2448
  store i8 0, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  store i8 0, i8* %28, align 1, !tbaa !2447
  %1031 = add i64 %147, 6
  store i64 %1031, i64* %PC, align 8
  %1032 = load i64, i64* %135, align 8
  store i64 %1032, i64* %RAX, align 8, !tbaa !2428
  %1033 = add i64 %131, -56
  %1034 = add i64 %147, 10
  store i64 %1034, i64* %PC, align 8
  %1035 = inttoptr i64 %1033 to i64*
  %1036 = load i64, i64* %1035, align 8
  store i64 %1036, i64* %RDX, align 8, !tbaa !2428
  store i64 %1032, i64* %RDI, align 8, !tbaa !2428
  %1037 = add i64 %147, -468
  %1038 = add i64 %147, 18
  %1039 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1040 = add i64 %1039, -8
  %1041 = inttoptr i64 %1040 to i64*
  store i64 %1038, i64* %1041, align 8
  store i64 %1040, i64* %RSP, align 8, !tbaa !2428
  store i64 %1037, i64* %PC, align 8, !tbaa !2428
  %1042 = tail call fastcc %struct.Memory* @ext_6020a8_memset(%struct.State* nonnull %0, %struct.Memory* %124)
  %1043 = load i64, i64* %RBP, align 8
  %1044 = add i64 %1043, -8
  %1045 = load i64, i64* %PC, align 8
  %1046 = add i64 %1045, 7
  store i64 %1046, i64* %PC, align 8
  %1047 = inttoptr i64 %1044 to i32*
  store i32 0, i32* %1047, align 4
  %1048 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1050 = bitcast i64* %1049 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_40075d

block_4008e9:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %1051 = add i64 %1342, -112
  %1052 = add i64 %1347, 5
  store i64 %1052, i64* %PC, align 8
  %1053 = inttoptr i64 %1051 to i64*
  %1054 = load i64, i64* %1053, align 8
  store i64 %1054, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %1055 = add i64 %1342, -152
  %1056 = add i64 %1347, 13
  store i64 %1056, i64* %PC, align 8
  %1057 = inttoptr i64 %1055 to i64*
  store i64 %1054, i64* %1057, align 8
  %1058 = load i64, i64* %PC, align 8
  %1059 = add i64 %1058, 18
  store i64 %1059, i64* %PC, align 8, !tbaa !2428
  br label %block_400908

block_40075d:                                     ; preds = %block_400744, %block_4007d1
  %1060 = phi i64 [ %.pre, %block_400744 ], [ %503, %block_4007d1 ]
  %1061 = load i64, i64* %RBP, align 8
  %1062 = add i64 %1061, -8
  %1063 = add i64 %1060, 3
  store i64 %1063, i64* %PC, align 8
  %1064 = inttoptr i64 %1062 to i32*
  %1065 = load i32, i32* %1064, align 4
  %1066 = zext i32 %1065 to i64
  store i64 %1066, i64* %RAX, align 8, !tbaa !2428
  %1067 = add i64 %1061, -32
  %1068 = add i64 %1060, 6
  store i64 %1068, i64* %PC, align 8
  %1069 = inttoptr i64 %1067 to i32*
  %1070 = load i32, i32* %1069, align 4
  %1071 = sub i32 %1065, %1070
  %1072 = icmp ult i32 %1065, %1070
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %16, align 1, !tbaa !2432
  %1074 = and i32 %1071, 255
  %1075 = tail call i32 @llvm.ctpop.i32(i32 %1074) #14
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  %1078 = xor i8 %1077, 1
  store i8 %1078, i8* %23, align 1, !tbaa !2446
  %1079 = xor i32 %1070, %1065
  %1080 = xor i32 %1079, %1071
  %1081 = lshr i32 %1080, 4
  %1082 = trunc i32 %1081 to i8
  %1083 = and i8 %1082, 1
  store i8 %1083, i8* %28, align 1, !tbaa !2447
  %1084 = icmp eq i32 %1071, 0
  %1085 = zext i1 %1084 to i8
  store i8 %1085, i8* %31, align 1, !tbaa !2448
  %1086 = lshr i32 %1071, 31
  %1087 = trunc i32 %1086 to i8
  store i8 %1087, i8* %34, align 1, !tbaa !2449
  %1088 = lshr i32 %1065, 31
  %1089 = lshr i32 %1070, 31
  %1090 = xor i32 %1089, %1088
  %1091 = xor i32 %1086, %1088
  %1092 = add nuw nsw i32 %1091, %1090
  %1093 = icmp eq i32 %1092, 2
  %1094 = zext i1 %1093 to i8
  store i8 %1094, i8* %40, align 1, !tbaa !2450
  %1095 = icmp ne i8 %1087, 0
  %1096 = xor i1 %1095, %1093
  %.v59 = select i1 %1096, i64 12, i64 135
  %1097 = add i64 %1060, %.v59
  store i64 %1097, i64* %PC, align 8, !tbaa !2428
  br i1 %1096, label %block_400769, label %block_4007e4

block_400a0e:                                     ; preds = %block_400aed, %block_4009db
  %1098 = phi i64 [ %.pre48, %block_4009db ], [ %1435, %block_400aed ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.0, %block_4009db ], [ %MEMORY.4, %block_400aed ]
  %1099 = load i64, i64* %RBP, align 8
  %1100 = add i64 %1099, -8
  %1101 = add i64 %1098, 3
  store i64 %1101, i64* %PC, align 8
  %1102 = inttoptr i64 %1100 to i32*
  %1103 = load i32, i32* %1102, align 4
  %1104 = zext i32 %1103 to i64
  store i64 %1104, i64* %RAX, align 8, !tbaa !2428
  %1105 = add i64 %1099, -32
  %1106 = add i64 %1098, 6
  store i64 %1106, i64* %PC, align 8
  %1107 = inttoptr i64 %1105 to i32*
  %1108 = load i32, i32* %1107, align 4
  %1109 = sub i32 %1103, %1108
  %1110 = icmp ult i32 %1103, %1108
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %16, align 1, !tbaa !2432
  %1112 = and i32 %1109, 255
  %1113 = tail call i32 @llvm.ctpop.i32(i32 %1112) #14
  %1114 = trunc i32 %1113 to i8
  %1115 = and i8 %1114, 1
  %1116 = xor i8 %1115, 1
  store i8 %1116, i8* %23, align 1, !tbaa !2446
  %1117 = xor i32 %1108, %1103
  %1118 = xor i32 %1117, %1109
  %1119 = lshr i32 %1118, 4
  %1120 = trunc i32 %1119 to i8
  %1121 = and i8 %1120, 1
  store i8 %1121, i8* %28, align 1, !tbaa !2447
  %1122 = icmp eq i32 %1109, 0
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %31, align 1, !tbaa !2448
  %1124 = lshr i32 %1109, 31
  %1125 = trunc i32 %1124 to i8
  store i8 %1125, i8* %34, align 1, !tbaa !2449
  %1126 = lshr i32 %1103, 31
  %1127 = lshr i32 %1108, 31
  %1128 = xor i32 %1127, %1126
  %1129 = xor i32 %1124, %1126
  %1130 = add nuw nsw i32 %1129, %1128
  %1131 = icmp eq i32 %1130, 2
  %1132 = zext i1 %1131 to i8
  store i8 %1132, i8* %40, align 1, !tbaa !2450
  %1133 = icmp ne i8 %1125, 0
  %1134 = xor i1 %1133, %1131
  %.v62 = select i1 %1134, i64 12, i64 242
  %1135 = add i64 %1098, %.v62
  store i64 %1135, i64* %PC, align 8, !tbaa !2428
  br i1 %1134, label %block_400a1a, label %block_400b00

block_400a71:                                     ; preds = %block_400a2d
  %1136 = load i64, i64* %RBP, align 8
  %1137 = add i64 %1136, -12
  %1138 = add i64 %801, 3
  store i64 %1138, i64* %PC, align 8
  %1139 = inttoptr i64 %1137 to i32*
  %1140 = load i32, i32* %1139, align 4
  %1141 = and i32 %1140, 15
  %1142 = zext i32 %1141 to i64
  store i64 %1142, i64* %RAX, align 8, !tbaa !2428
  %1143 = add nsw i32 %1141, -8
  %1144 = icmp ult i32 %1141, 8
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %16, align 1, !tbaa !2432
  %1146 = and i32 %1143, 255
  %1147 = tail call i32 @llvm.ctpop.i32(i32 %1146) #14
  %1148 = trunc i32 %1147 to i8
  %1149 = and i8 %1148, 1
  %1150 = xor i8 %1149, 1
  store i8 %1150, i8* %23, align 1, !tbaa !2446
  %1151 = lshr i32 %1143, 4
  %1152 = trunc i32 %1151 to i8
  %1153 = and i8 %1152, 1
  store i8 %1153, i8* %28, align 1, !tbaa !2447
  %1154 = icmp eq i32 %1143, 0
  %1155 = zext i1 %1154 to i8
  store i8 %1155, i8* %31, align 1, !tbaa !2448
  %1156 = lshr i32 %1143, 31
  %1157 = trunc i32 %1156 to i8
  store i8 %1157, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  store i8 %1155, i8* %CL, align 1, !tbaa !2451
  %1158 = add i64 %1136, -177
  %1159 = add i64 %801, 18
  store i64 %1159, i64* %PC, align 8
  %1160 = inttoptr i64 %1158 to i8*
  store i8 %1155, i8* %1160, align 1
  %.pre51 = load i64, i64* %PC, align 8
  br label %block_400a83

block_40078b:                                     ; preds = %block_40077c
  %1161 = add i64 %693, 3
  store i64 %1161, i64* %PC, align 8
  %1162 = load i32, i32* %370, align 4
  %1163 = and i32 %1162, 15
  %1164 = zext i32 %1163 to i64
  store i64 %1164, i64* %RAX, align 8, !tbaa !2428
  %1165 = add nsw i32 %1163, -8
  %1166 = icmp ult i32 %1163, 8
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %16, align 1, !tbaa !2432
  %1168 = and i32 %1165, 255
  %1169 = tail call i32 @llvm.ctpop.i32(i32 %1168) #14
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  %1172 = xor i8 %1171, 1
  store i8 %1172, i8* %23, align 1, !tbaa !2446
  %1173 = lshr i32 %1165, 4
  %1174 = trunc i32 %1173 to i8
  %1175 = and i8 %1174, 1
  store i8 %1175, i8* %28, align 1, !tbaa !2447
  %1176 = icmp eq i32 %1165, 0
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %31, align 1, !tbaa !2448
  %1178 = lshr i32 %1165, 31
  %1179 = trunc i32 %1178 to i8
  store i8 %1179, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  %.v66 = select i1 %1176, i64 15, i64 51
  %1180 = add i64 %693, %.v66
  store i64 %1180, i64* %PC, align 8, !tbaa !2428
  br i1 %1176, label %block_40079a, label %block_4007be

block_40071b:                                     ; preds = %block_4006b0
  store i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 72), i64* %RSI, align 8, !tbaa !2428
  %1181 = load i64, i64* @stderr, align 32
  store i64 %1181, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1182 = add i64 %147, -411
  %1183 = add i64 %147, 25
  %1184 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1185 = add i64 %1184, -8
  %1186 = inttoptr i64 %1185 to i64*
  store i64 %1183, i64* %1186, align 8
  store i64 %1185, i64* %RSP, align 8, !tbaa !2428
  store i64 %1182, i64* %PC, align 8, !tbaa !2428
  %1187 = tail call fastcc %struct.Memory* @ext_6020b8_fprintf(%struct.State* nonnull %0, %struct.Memory* %124)
  %1188 = load i64, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %1189 = load i64, i64* %RBP, align 8
  %1190 = add i64 %1189, -140
  %1191 = load i32, i32* %EAX, align 4
  %1192 = add i64 %1188, 11
  store i64 %1192, i64* %PC, align 8
  %1193 = inttoptr i64 %1190 to i32*
  store i32 %1191, i32* %1193, align 4
  %1194 = load i64, i64* %PC, align 8
  %1195 = add i64 %1194, -399
  %1196 = add i64 %1194, 5
  %1197 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1198 = add i64 %1197, -8
  %1199 = inttoptr i64 %1198 to i64*
  store i64 %1196, i64* %1199, align 8
  store i64 %1198, i64* %RSP, align 8, !tbaa !2428
  store i64 %1195, i64* %PC, align 8, !tbaa !2428
  %1200 = tail call fastcc %struct.Memory* @ext_6020d0_exit(%struct.State* nonnull %0, %struct.Memory* %1187)
  %1201 = load i64, i64* %PC, align 8
  %1202 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %1201, %struct.Memory* %1200)
  ret %struct.Memory* %1202

block_400b0a:                                     ; preds = %block_400b00
  store i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 148), i64* %RSI, align 8, !tbaa !2428
  %1203 = load i64, i64* @stderr, align 32
  store i64 %1203, i64* %RDI, align 8, !tbaa !2428
  %1204 = add i64 %1099, -28
  %1205 = add i64 %1503, 21
  store i64 %1205, i64* %PC, align 8
  %1206 = inttoptr i64 %1204 to i32*
  %1207 = load i32, i32* %1206, align 4
  %1208 = zext i32 %1207 to i64
  store i64 %1208, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1209 = add i64 %1503, -1418
  %1210 = add i64 %1503, 28
  %1211 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1212 = add i64 %1211, -8
  %1213 = inttoptr i64 %1212 to i64*
  store i64 %1210, i64* %1213, align 8
  store i64 %1212, i64* %RSP, align 8, !tbaa !2428
  store i64 %1209, i64* %PC, align 8, !tbaa !2428
  %1214 = tail call fastcc %struct.Memory* @ext_6020b8_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.12)
  %1215 = load i64, i64* %RBP, align 8
  %1216 = add i64 %1215, -188
  %1217 = load i32, i32* %EAX, align 4
  %1218 = load i64, i64* %PC, align 8
  %1219 = add i64 %1218, 6
  store i64 %1219, i64* %PC, align 8
  %1220 = inttoptr i64 %1216 to i32*
  store i32 %1217, i32* %1220, align 4
  %1221 = load i64, i64* %PC, align 8
  %1222 = add i64 %1221, 42
  store i64 %1222, i64* %PC, align 8, !tbaa !2428
  br label %block_400b56

block_400888:                                     ; preds = %block_40087a
  %1223 = add i64 %149, -40
  %1224 = add i64 %186, 4
  store i64 %1224, i64* %PC, align 8
  %1225 = inttoptr i64 %1223 to i64*
  %1226 = load i64, i64* %1225, align 8
  store i64 %1226, i64* %RAX, align 8, !tbaa !2428
  %1227 = add i64 %186, 8
  store i64 %1227, i64* %PC, align 8
  %1228 = load i32, i32* %152, align 4
  %1229 = sext i32 %1228 to i64
  store i64 %1229, i64* %RCX, align 8, !tbaa !2428
  %1230 = shl nsw i64 %1229, 3
  %1231 = add i64 %1230, %1226
  %1232 = add i64 %186, 13
  store i64 %1232, i64* %PC, align 8
  %1233 = inttoptr i64 %1231 to i64*
  %1234 = load i64, i64* %1233, align 8
  store i64 %1234, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %1235 = add i64 %149, -112
  %1236 = add i64 %186, 18
  store i64 %1236, i64* %PC, align 8
  %1237 = inttoptr i64 %1235 to i64*
  store i64 %1234, i64* %1237, align 8
  %1238 = load i64, i64* %RBP, align 8
  %1239 = add i64 %1238, -40
  %1240 = load i64, i64* %PC, align 8
  %1241 = add i64 %1240, 4
  store i64 %1241, i64* %PC, align 8
  %1242 = inttoptr i64 %1239 to i64*
  %1243 = load i64, i64* %1242, align 8
  store i64 %1243, i64* %RAX, align 8, !tbaa !2428
  %1244 = add i64 %1238, -8
  %1245 = add i64 %1240, 7
  store i64 %1245, i64* %PC, align 8
  %1246 = inttoptr i64 %1244 to i32*
  %1247 = load i32, i32* %1246, align 4
  %1248 = add i32 %1247, 1
  %1249 = zext i32 %1248 to i64
  store i64 %1249, i64* %RDX, align 8, !tbaa !2428
  %1250 = icmp eq i32 %1247, -1
  %1251 = icmp eq i32 %1248, 0
  %1252 = or i1 %1250, %1251
  %1253 = zext i1 %1252 to i8
  store i8 %1253, i8* %16, align 1, !tbaa !2432
  %1254 = and i32 %1248, 255
  %1255 = tail call i32 @llvm.ctpop.i32(i32 %1254) #14
  %1256 = trunc i32 %1255 to i8
  %1257 = and i8 %1256, 1
  %1258 = xor i8 %1257, 1
  store i8 %1258, i8* %23, align 1, !tbaa !2446
  %1259 = xor i32 %1248, %1247
  %1260 = lshr i32 %1259, 4
  %1261 = trunc i32 %1260 to i8
  %1262 = and i8 %1261, 1
  store i8 %1262, i8* %28, align 1, !tbaa !2447
  %1263 = zext i1 %1251 to i8
  store i8 %1263, i8* %31, align 1, !tbaa !2448
  %1264 = lshr i32 %1248, 31
  %1265 = trunc i32 %1264 to i8
  store i8 %1265, i8* %34, align 1, !tbaa !2449
  %1266 = lshr i32 %1247, 31
  %1267 = xor i32 %1264, %1266
  %1268 = add nuw nsw i32 %1267, %1264
  %1269 = icmp eq i32 %1268, 2
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %40, align 1, !tbaa !2450
  %1271 = sext i32 %1248 to i64
  store i64 %1271, i64* %RCX, align 8, !tbaa !2428
  %1272 = shl nsw i64 %1271, 3
  %1273 = add i64 %1243, %1272
  %1274 = add i64 %1240, 18
  store i64 %1274, i64* %PC, align 8
  %1275 = inttoptr i64 %1273 to i64*
  %1276 = load i64, i64* %1275, align 8
  store i64 %1276, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %1277 = add i64 %1238, -120
  %1278 = add i64 %1240, 23
  store i64 %1278, i64* %PC, align 8
  %1279 = inttoptr i64 %1277 to i64*
  store i64 %1276, i64* %1279, align 8
  %1280 = load i64, i64* %RBP, align 8
  %1281 = add i64 %1280, -112
  %1282 = load i64, i64* %PC, align 8
  %1283 = add i64 %1282, 5
  store i64 %1283, i64* %PC, align 8
  %1284 = inttoptr i64 %1281 to i64*
  %1285 = load i64, i64* %1284, align 8
  store i64 %1285, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %1286 = add i64 %1280, -128
  %1287 = add i64 %1282, 10
  store i64 %1287, i64* %PC, align 8
  %1288 = bitcast i64 %1285 to double
  %1289 = inttoptr i64 %1286 to double*
  %1290 = load double, double* %1289, align 8
  %1291 = fadd double %1288, %1290
  store double %1291, double* %588, align 1, !tbaa !2452
  store i64 0, i64* %1049, align 1, !tbaa !2452
  %1292 = add i64 %1282, 15
  store i64 %1292, i64* %PC, align 8
  %1293 = inttoptr i64 %1286 to double*
  store double %1291, double* %1293, align 8
  %1294 = load i64, i64* %RBP, align 8
  %1295 = add i64 %1294, -120
  %1296 = load i64, i64* %PC, align 8
  %1297 = add i64 %1296, 5
  store i64 %1297, i64* %PC, align 8
  %1298 = inttoptr i64 %1295 to i64*
  %1299 = load i64, i64* %1298, align 8
  store i64 %1299, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %1300 = add i64 %1294, -136
  %1301 = add i64 %1296, 13
  store i64 %1301, i64* %PC, align 8
  %1302 = bitcast i64 %1299 to double
  %1303 = inttoptr i64 %1300 to double*
  %1304 = load double, double* %1303, align 8
  %1305 = fadd double %1302, %1304
  store double %1305, double* %588, align 1, !tbaa !2452
  store i64 0, i64* %1049, align 1, !tbaa !2452
  %1306 = add i64 %1296, 21
  store i64 %1306, i64* %PC, align 8
  %1307 = inttoptr i64 %1300 to double*
  store double %1305, double* %1307, align 8
  %1308 = load i64, i64* %RBP, align 8
  %1309 = add i64 %1308, -112
  %1310 = load i64, i64* %PC, align 8
  %1311 = add i64 %1310, 5
  store i64 %1311, i64* %PC, align 8
  %1312 = inttoptr i64 %1309 to i64*
  %1313 = load i64, i64* %1312, align 8
  store i64 %1313, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %1314 = add i64 %1308, -80
  %1315 = add i64 %1310, 10
  store i64 %1315, i64* %PC, align 8
  %1316 = inttoptr i64 %1314 to i64*
  %1317 = load i64, i64* %1316, align 8
  store i64 %1317, i64* %556, align 1, !tbaa !2452
  store double 0.000000e+00, double* %558, align 1, !tbaa !2452
  %1318 = add i64 %1310, 14
  store i64 %1318, i64* %PC, align 8
  %.cast = bitcast i64 %1317 to double
  %1319 = bitcast i64 %1313 to double
  %1320 = fcmp uno double %.cast, %1319
  br i1 %1320, label %1321, label %1331

; <label>:1321:                                   ; preds = %block_400888
  %1322 = fadd double %.cast, %1319
  %1323 = bitcast double %1322 to i64
  %1324 = and i64 %1323, 9221120237041090560
  %1325 = icmp eq i64 %1324, 9218868437227405312
  %1326 = and i64 %1323, 2251799813685247
  %1327 = icmp ne i64 %1326, 0
  %1328 = and i1 %1325, %1327
  br i1 %1328, label %1329, label %1337

; <label>:1329:                                   ; preds = %1321
  %1330 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1318, %struct.Memory* %MEMORY.0) #16
  %.pre36 = load i64, i64* %PC, align 8
  %.pre37 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:1331:                                   ; preds = %block_400888
  %1332 = fcmp ogt double %.cast, %1319
  br i1 %1332, label %1337, label %1333

; <label>:1333:                                   ; preds = %1331
  %1334 = fcmp olt double %.cast, %1319
  br i1 %1334, label %1337, label %1335

; <label>:1335:                                   ; preds = %1333
  %1336 = fcmp oeq double %.cast, %1319
  br i1 %1336, label %1337, label %1341

; <label>:1337:                                   ; preds = %1335, %1333, %1331, %1321
  %1338 = phi i8 [ 0, %1331 ], [ 0, %1333 ], [ 1, %1335 ], [ 1, %1321 ]
  %1339 = phi i8 [ 0, %1331 ], [ 0, %1333 ], [ 0, %1335 ], [ 1, %1321 ]
  %1340 = phi i8 [ 0, %1331 ], [ 1, %1333 ], [ 0, %1335 ], [ 1, %1321 ]
  store i8 %1338, i8* %31, align 1, !tbaa !2451
  store i8 %1339, i8* %23, align 1, !tbaa !2451
  store i8 %1340, i8* %16, align 1, !tbaa !2451
  br label %1341

; <label>:1341:                                   ; preds = %1337, %1335
  store i8 0, i8* %40, align 1, !tbaa !2451
  store i8 0, i8* %34, align 1, !tbaa !2451
  store i8 0, i8* %28, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %1341, %1329
  %1342 = phi i64 [ %.pre37, %1329 ], [ %1308, %1341 ]
  %1343 = phi i64 [ %.pre36, %1329 ], [ %1318, %1341 ]
  %1344 = phi %struct.Memory* [ %1330, %1329 ], [ %MEMORY.0, %1341 ]
  %1345 = load i8, i8* %16, align 1, !tbaa !2432
  %1346 = icmp ne i8 %1345, 0
  %.v79 = select i1 %1346, i64 24, i64 6
  %1347 = add i64 %1343, %.v79
  store i64 %1347, i64* %PC, align 8, !tbaa !2428
  %1348 = icmp eq i8 %1345, 1
  br i1 %1348, label %block_4008fb, label %block_4008e9

block_4009b3:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %1349 = add i64 %1398, -104
  %1350 = add i64 %1405, 5
  store i64 %1350, i64* %PC, align 8
  %1351 = inttoptr i64 %1349 to i64*
  %1352 = load i64, i64* %1351, align 8
  store i64 %1352, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %1353 = add i64 %1398, -176
  %1354 = add i64 %1405, 13
  store i64 %1354, i64* %PC, align 8
  %1355 = inttoptr i64 %1353 to i64*
  store i64 %1352, i64* %1355, align 8
  %.pre47 = load i64, i64* %PC, align 8
  br label %block_4009c0

block_400984:                                     ; preds = %block_400977, %block_400965
  %1356 = phi i64 [ %.pre44, %block_400977 ], [ %294, %block_400965 ]
  %1357 = load i64, i64* %RBP, align 8
  %1358 = add i64 %1357, -168
  %1359 = add i64 %1356, 8
  store i64 %1359, i64* %PC, align 8
  %1360 = inttoptr i64 %1358 to i64*
  %1361 = load i64, i64* %1360, align 8
  store i64 %1361, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %1362 = add i64 %1357, -96
  %1363 = add i64 %1356, 13
  store i64 %1363, i64* %PC, align 8
  %1364 = inttoptr i64 %1362 to i64*
  store i64 %1361, i64* %1364, align 8
  %1365 = load i64, i64* %RBP, align 8
  %1366 = add i64 %1365, -120
  %1367 = load i64, i64* %PC, align 8
  %1368 = add i64 %1367, 5
  store i64 %1368, i64* %PC, align 8
  %1369 = inttoptr i64 %1366 to i64*
  %1370 = load i64, i64* %1369, align 8
  store i64 %1370, i64* %1048, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1050, align 1, !tbaa !2452
  %1371 = add i64 %1365, -104
  %1372 = add i64 %1367, 10
  store i64 %1372, i64* %PC, align 8
  %1373 = bitcast i64 %1370 to double
  %1374 = inttoptr i64 %1371 to double*
  %1375 = load double, double* %1374, align 8
  %1376 = fcmp uno double %1373, %1375
  br i1 %1376, label %1377, label %1387

; <label>:1377:                                   ; preds = %block_400984
  %1378 = fadd double %1373, %1375
  %1379 = bitcast double %1378 to i64
  %1380 = and i64 %1379, 9221120237041090560
  %1381 = icmp eq i64 %1380, 9218868437227405312
  %1382 = and i64 %1379, 2251799813685247
  %1383 = icmp ne i64 %1382, 0
  %1384 = and i1 %1381, %1383
  br i1 %1384, label %1385, label %1393

; <label>:1385:                                   ; preds = %1377
  %1386 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1372, %struct.Memory* %549) #16
  %.pre45 = load i64, i64* %PC, align 8
  %.pre46 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:1387:                                   ; preds = %block_400984
  %1388 = fcmp ogt double %1373, %1375
  br i1 %1388, label %1393, label %1389

; <label>:1389:                                   ; preds = %1387
  %1390 = fcmp olt double %1373, %1375
  br i1 %1390, label %1393, label %1391

; <label>:1391:                                   ; preds = %1389
  %1392 = fcmp oeq double %1373, %1375
  br i1 %1392, label %1393, label %1397

; <label>:1393:                                   ; preds = %1391, %1389, %1387, %1377
  %1394 = phi i8 [ 0, %1387 ], [ 0, %1389 ], [ 1, %1391 ], [ 1, %1377 ]
  %1395 = phi i8 [ 0, %1387 ], [ 0, %1389 ], [ 0, %1391 ], [ 1, %1377 ]
  %1396 = phi i8 [ 0, %1387 ], [ 1, %1389 ], [ 0, %1391 ], [ 1, %1377 ]
  store i8 %1394, i8* %31, align 1, !tbaa !2451
  store i8 %1395, i8* %23, align 1, !tbaa !2451
  store i8 %1396, i8* %16, align 1, !tbaa !2451
  br label %1397

; <label>:1397:                                   ; preds = %1393, %1391
  store i8 0, i8* %40, align 1, !tbaa !2451
  store i8 0, i8* %34, align 1, !tbaa !2451
  store i8 0, i8* %28, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %1397, %1385
  %1398 = phi i64 [ %.pre46, %1385 ], [ %1365, %1397 ]
  %1399 = phi i64 [ %.pre45, %1385 ], [ %1372, %1397 ]
  %1400 = phi %struct.Memory* [ %1386, %1385 ], [ %549, %1397 ]
  %1401 = load i8, i8* %16, align 1, !tbaa !2432
  %1402 = load i8, i8* %31, align 1, !tbaa !2448
  %1403 = or i8 %1402, %1401
  %1404 = icmp ne i8 %1403, 0
  %.v82 = select i1 %1404, i64 24, i64 6
  %1405 = add i64 %1399, %.v82
  store i64 %1405, i64* %PC, align 8, !tbaa !2428
  br i1 %1404, label %block_4009b3, label %block_4009a1

block_400aed:                                     ; preds = %block_400a21
  %1406 = add i64 %406, -8
  %1407 = add i64 %442, 8
  store i64 %1407, i64* %PC, align 8
  %1408 = inttoptr i64 %1406 to i32*
  %1409 = load i32, i32* %1408, align 4
  %1410 = add i32 %1409, 1
  %1411 = zext i32 %1410 to i64
  store i64 %1411, i64* %RAX, align 8, !tbaa !2428
  %1412 = icmp eq i32 %1409, -1
  %1413 = icmp eq i32 %1410, 0
  %1414 = or i1 %1412, %1413
  %1415 = zext i1 %1414 to i8
  store i8 %1415, i8* %16, align 1, !tbaa !2432
  %1416 = and i32 %1410, 255
  %1417 = tail call i32 @llvm.ctpop.i32(i32 %1416) #14
  %1418 = trunc i32 %1417 to i8
  %1419 = and i8 %1418, 1
  %1420 = xor i8 %1419, 1
  store i8 %1420, i8* %23, align 1, !tbaa !2446
  %1421 = xor i32 %1410, %1409
  %1422 = lshr i32 %1421, 4
  %1423 = trunc i32 %1422 to i8
  %1424 = and i8 %1423, 1
  store i8 %1424, i8* %28, align 1, !tbaa !2447
  %1425 = zext i1 %1413 to i8
  store i8 %1425, i8* %31, align 1, !tbaa !2448
  %1426 = lshr i32 %1410, 31
  %1427 = trunc i32 %1426 to i8
  store i8 %1427, i8* %34, align 1, !tbaa !2449
  %1428 = lshr i32 %1409, 31
  %1429 = xor i32 %1426, %1428
  %1430 = add nuw nsw i32 %1429, %1426
  %1431 = icmp eq i32 %1430, 2
  %1432 = zext i1 %1431 to i8
  store i8 %1432, i8* %40, align 1, !tbaa !2450
  %1433 = add i64 %442, 14
  store i64 %1433, i64* %PC, align 8
  store i32 %1410, i32* %1408, align 4
  %1434 = load i64, i64* %PC, align 8
  %1435 = add i64 %1434, -237
  store i64 %1435, i64* %PC, align 8, !tbaa !2428
  br label %block_400a0e

block_400a83:                                     ; preds = %block_400a71, %block_400a2d
  %1436 = phi i64 [ %.pre51, %block_400a71 ], [ %801, %block_400a2d ]
  %1437 = load i64, i64* %RBP, align 8
  %1438 = add i64 %1437, -177
  %1439 = add i64 %1436, 6
  store i64 %1439, i64* %PC, align 8
  %1440 = inttoptr i64 %1438 to i8*
  %1441 = load i8, i8* %1440, align 1
  store i8 %1441, i8* %AL, align 1, !tbaa !2451
  store i64 255, i64* %RDX, align 8, !tbaa !2428
  %1442 = and i8 %1441, 1
  store i8 0, i8* %16, align 1, !tbaa !2432
  %1443 = zext i8 %1442 to i32
  %1444 = tail call i32 @llvm.ctpop.i32(i32 %1443) #14
  %1445 = trunc i32 %1444 to i8
  %1446 = xor i8 %1445, 1
  store i8 %1446, i8* %23, align 1, !tbaa !2446
  %1447 = xor i8 %1442, 1
  store i8 %1447, i8* %31, align 1, !tbaa !2448
  store i8 0, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  store i8 0, i8* %28, align 1, !tbaa !2447
  %1448 = icmp eq i8 %1447, 0
  %1449 = select i1 %1448, i64 255, i64 0
  store i64 %1449, i64* %RCX, align 8, !tbaa !2428
  %1450 = add i64 %1437, -20
  %1451 = trunc i64 %1449 to i32
  %1452 = add i64 %1436, 21
  store i64 %1452, i64* %PC, align 8
  %1453 = inttoptr i64 %1450 to i32*
  store i32 %1451, i32* %1453, align 4
  %1454 = load i64, i64* %RBP, align 8
  %1455 = add i64 %1454, -16
  %1456 = load i64, i64* %PC, align 8
  %1457 = add i64 %1456, 3
  store i64 %1457, i64* %PC, align 8
  %1458 = inttoptr i64 %1455 to i32*
  %1459 = load i32, i32* %1458, align 4
  %1460 = zext i32 %1459 to i64
  store i64 %1460, i64* %RCX, align 8, !tbaa !2428
  %1461 = add i64 %1454, -20
  %1462 = add i64 %1456, 6
  store i64 %1462, i64* %PC, align 8
  %1463 = inttoptr i64 %1461 to i32*
  %1464 = load i32, i32* %1463, align 4
  %1465 = sub i32 %1459, %1464
  %1466 = icmp ult i32 %1459, %1464
  %1467 = zext i1 %1466 to i8
  store i8 %1467, i8* %16, align 1, !tbaa !2432
  %1468 = and i32 %1465, 255
  %1469 = tail call i32 @llvm.ctpop.i32(i32 %1468) #14
  %1470 = trunc i32 %1469 to i8
  %1471 = and i8 %1470, 1
  %1472 = xor i8 %1471, 1
  store i8 %1472, i8* %23, align 1, !tbaa !2446
  %1473 = xor i32 %1464, %1459
  %1474 = xor i32 %1473, %1465
  %1475 = lshr i32 %1474, 4
  %1476 = trunc i32 %1475 to i8
  %1477 = and i8 %1476, 1
  store i8 %1477, i8* %28, align 1, !tbaa !2447
  %1478 = icmp eq i32 %1465, 0
  %1479 = zext i1 %1478 to i8
  store i8 %1479, i8* %31, align 1, !tbaa !2448
  %1480 = lshr i32 %1465, 31
  %1481 = trunc i32 %1480 to i8
  store i8 %1481, i8* %34, align 1, !tbaa !2449
  %1482 = lshr i32 %1459, 31
  %1483 = lshr i32 %1464, 31
  %1484 = xor i32 %1483, %1482
  %1485 = xor i32 %1480, %1482
  %1486 = add nuw nsw i32 %1485, %1484
  %1487 = icmp eq i32 %1486, 2
  %1488 = zext i1 %1487 to i8
  store i8 %1488, i8* %40, align 1, !tbaa !2450
  %.v64 = select i1 %1478, i64 66, i64 12
  %1489 = add i64 %1456, %.v64
  store i64 %1489, i64* %PC, align 8, !tbaa !2428
  br i1 %1478, label %block_400ada, label %block_400aa4

block_400b00:                                     ; preds = %block_400a0e
  %1490 = add i64 %1099, -24
  %1491 = add i64 %1135, 4
  store i64 %1491, i64* %PC, align 8
  %1492 = inttoptr i64 %1490 to i32*
  %1493 = load i32, i32* %1492, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %1494 = and i32 %1493, 255
  %1495 = tail call i32 @llvm.ctpop.i32(i32 %1494) #14
  %1496 = trunc i32 %1495 to i8
  %1497 = and i8 %1496, 1
  %1498 = xor i8 %1497, 1
  store i8 %1498, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2447
  %1499 = icmp eq i32 %1493, 0
  %1500 = zext i1 %1499 to i8
  store i8 %1500, i8* %31, align 1, !tbaa !2448
  %1501 = lshr i32 %1493, 31
  %1502 = trunc i32 %1501 to i8
  store i8 %1502, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  %.v63 = select i1 %1499, i64 10, i64 49
  %1503 = add i64 %1135, %.v63
  %1504 = add i64 %1503, 10
  store i64 %1504, i64* %PC, align 8
  br i1 %1499, label %block_400b0a, label %block_400b31
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4005c0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_4005c0:
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
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #14
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
  store i64 ptrtoint (void ()* @callback_sub_4010e0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401070___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %35 = add i64 %34, 27
  %36 = add i64 %15, -24
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37, align 8
  store i64 %36, i64* %RSP, align 8, !tbaa !2428
  %38 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %38, i64* %PC, align 8, !tbaa !2428
  %39 = tail call fastcc %struct.Memory* @ext_6020b0___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC, align 8
  %42 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %41, %struct.Memory* %39)
  ret %struct.Memory* %42
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4010e4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_4010e4:
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
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #14
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

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4005f0__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #9 {
block_4005f0:
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
define %struct.Memory* @sub_400540__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400540:
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
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #14
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
  br i1 %18, label %block_400552, label %block_400550

block_400550:                                     ; preds = %block_400540
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400552

block_400552:                                     ; preds = %block_400550, %block_400540
  %27 = phi i64 [ %22, %block_400540 ], [ %.pre1, %block_400550 ]
  %28 = phi i64 [ %4, %block_400540 ], [ %.pre, %block_400550 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400540 ], [ %26, %block_400550 ]
  %29 = add i64 %28, 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  %30 = icmp ugt i64 %28, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %5, align 1, !tbaa !2432
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #14
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

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4010e0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #9 {
block_4010e0:
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
define %struct.Memory* @sub_400600_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400628:
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
  store i64 6299728, i64* %RAX, align 8, !tbaa !2428
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1, !tbaa !2432
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %10, align 1, !tbaa !2446
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1, !tbaa !2447
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %12, align 1, !tbaa !2448
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %13, align 1, !tbaa !2449
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %14, align 1, !tbaa !2450
  store i64 %6, i64* %RBP, align 8, !tbaa !2428
  %15 = add i64 %8, 40
  store i64 %15, i64* %PC, align 8
  %16 = load i64, i64* %7, align 8
  store i64 %16, i64* %RBP, align 8, !tbaa !2428
  store i64 %5, i64* %RSP, align 8, !tbaa !2428
  %17 = add i64 %8, 41
  store i64 %17, i64* %PC, align 8
  %18 = inttoptr i64 %5 to i64*
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %PC, align 8, !tbaa !2428
  %20 = add i64 %5, 8
  store i64 %20, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400630_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400630:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 6299728, i64* %RSI, align 8, !tbaa !2428
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
  %10 = add i64 %8, -6299728
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
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #14
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
  br i1 %29, label %block_400668, label %block_400653

block_400653:                                     ; preds = %block_400630
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2432
  store i8 1, i8* %12, align 1, !tbaa !2446
  store i8 1, i8* %14, align 1, !tbaa !2448
  store i8 0, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  store i8 0, i8* %13, align 1, !tbaa !2447
  %34 = add i64 %33, 21
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br label %block_400668

block_400668:                                     ; preds = %block_400653, %block_400630
  %35 = phi i64 [ %34, %block_400653 ], [ %33, %block_400630 ]
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

; Function Attrs: noinline
define %struct.Memory* @sub_400670___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400670:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 8) to i8*), align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4, align 1, !tbaa !2432
  %5 = zext i8 %3 to i32
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #14
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
  br i1 %12, label %block_400679, label %block_400690

block_400690:                                     ; preds = %block_400670
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

block_400679:                                     ; preds = %block_400670
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
  %36 = tail call %struct.Memory* @sub_400600_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
  %37 = load i64, i64* %PC, align 8
  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 8) to i8*), align 8
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
define %struct.Memory* @sub_400b70_fourn(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400b70:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
%var_2_4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
%EAX = bitcast %union.anon* %var_2_3 to i32*
; Matched:  %ECX.i805 = bitcast %union.anon* %var_2_56 to i32*
; %ECX = bitcast %union.anon* %var_2_4 to i32*
; Matched:%var_2_49:  %var_2_49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
; %var_2_5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
; Matched:  %EDX.i808 = bitcast %union.anon* %var_2_49 to i32*
; %EDX = bitcast %union.anon* %var_2_5 to i32*
%RAX = getelementptr inbounds %union.anon, %union.anon* %var_2_3, i64 0, i32 0
; Matched:  %RCX.i788 = getelementptr inbounds %union.anon, %union.anon* %var_2_56, i64 0, i32 0
; %RCX = getelementptr inbounds %union.anon, %union.anon* %var_2_4, i64 0, i32 0
; Matched:  %RDX.i786 = getelementptr inbounds %union.anon, %union.anon* %var_2_49, i64 0, i32 0
; %RDX = getelementptr inbounds %union.anon, %union.anon* %var_2_5, i64 0, i32 0
; Matched:  %RSI.i811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; Matched:  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
; %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
%var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; Matched:%var_2_217:  %var_2_217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
; %var_2_7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
; Matched:%var_2_4:  %var_2_4 = load i64, i64* %RBP.i, align 8
; %var_2_8 = load i64, i64* %RBP, align 8
; Matched:%var_2_5:  %var_2_5 = add i64 %1, 1
; %var_2_9 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_5, i64* %var_2_3, align 8
; store i64 %var_2_9, i64* %PC, align 8
; Matched:%var_2_7:  %var_2_7 = load i64, i64* %var_2_6, align 8
; %var_2_10 = load i64, i64* %RSP, align 8
; Matched:%var_2_8:  %var_2_8 = add i64 %var_2_7, -8
; %var_2_11 = add i64 %var_2_10, -8
; Matched:%var_2_9:  %var_2_9 = inttoptr i64 %var_2_8 to i64*
; %var_2_12 = inttoptr i64 %var_2_11 to i64*
; Matched:\<badref\>:  store i64 %var_2_4, i64* %var_2_9, align 8
; store i64 %var_2_8, i64* %var_2_12, align 8
; Matched:%var_2_10:  %var_2_10 = load i64, i64* %var_2_3, align 8
; %var_2_13 = load i64, i64* %PC, align 8
; Matched:\<badref\>:  store i64 %var_2_8, i64* %RBP.i, align 8
; store i64 %var_2_11, i64* %RBP, align 8
; Matched:%var_2_11:  %var_2_11 = add i64 %var_2_7, -200
; %var_2_14 = add i64 %var_2_10, -200
; Matched:\<badref\>:  store i64 %var_2_11, i64* %var_2_6, align 8
; store i64 %var_2_14, i64* %RSP, align 8
; Matched:%var_2_12:  %var_2_12 = icmp ult i64 %var_2_8, 192
; %var_2_15 = icmp ult i64 %var_2_11, 192
; Matched:%var_2_13:  %var_2_13 = zext i1 %var_2_12 to i8
; %var_2_16 = zext i1 %var_2_15 to i8
%var_2_17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_13, i8* %var_2_14, align 1
; store i8 %var_2_16, i8* %var_2_17, align 1
; Matched:%var_2_15:  %var_2_15 = trunc i64 %var_2_11 to i32
; %var_2_18 = trunc i64 %var_2_14 to i32
; Matched:%var_2_16:  %var_2_16 = and i32 %var_2_15, 255
; %var_2_19 = and i32 %var_2_18, 255
; Matched:%var_2_17:  %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; %var_2_20 = tail call i32 @llvm.ctpop.i32(i32 %var_2_19) #14
; Matched:%var_2_18:  %var_2_18 = trunc i32 %var_2_17 to i8
; %var_2_21 = trunc i32 %var_2_20 to i8
; Matched:%var_2_19:  %var_2_19 = and i8 %var_2_18, 1
; %var_2_22 = and i8 %var_2_21, 1
; Matched:%var_2_20:  %var_2_20 = xor i8 %var_2_19, 1
; %var_2_23 = xor i8 %var_2_22, 1
%var_2_24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_20, i8* %var_2_21, align 1
; store i8 %var_2_23, i8* %var_2_24, align 1
; Matched:%var_2_22:  %var_2_22 = xor i64 %var_2_8, %var_2_11
; %var_2_25 = xor i64 %var_2_11, %var_2_14
; Matched:%var_2_23:  %var_2_23 = lshr i64 %var_2_22, 4
; %var_2_26 = lshr i64 %var_2_25, 4
; Matched:%var_2_24:  %var_2_24 = trunc i64 %var_2_23 to i8
; %var_2_27 = trunc i64 %var_2_26 to i8
; Matched:%var_2_25:  %var_2_25 = and i8 %var_2_24, 1
; %var_2_28 = and i8 %var_2_27, 1
%var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_25, i8* %var_2_26, align 1
; store i8 %var_2_28, i8* %var_2_29, align 1
; Matched:%var_2_27:  %var_2_27 = icmp eq i64 %var_2_11, 0
; %var_2_30 = icmp eq i64 %var_2_14, 0
; Matched:%var_2_28:  %var_2_28 = zext i1 %var_2_27 to i8
; %var_2_31 = zext i1 %var_2_30 to i8
%var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_28, i8* %var_2_29, align 1
; store i8 %var_2_31, i8* %var_2_32, align 1
; Matched:%var_2_30:  %var_2_30 = lshr i64 %var_2_11, 63
; %var_2_33 = lshr i64 %var_2_14, 63
; Matched:%var_2_31:  %var_2_31 = trunc i64 %var_2_30 to i8
; %var_2_34 = trunc i64 %var_2_33 to i8
%var_2_35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_31, i8* %var_2_32, align 1
; store i8 %var_2_34, i8* %var_2_35, align 1
; Matched:%var_2_33:  %var_2_33 = lshr i64 %var_2_8, 63
; %var_2_36 = lshr i64 %var_2_11, 63
; Matched:%var_2_34:  %var_2_34 = xor i64 %var_2_30, %var_2_33
; %var_2_37 = xor i64 %var_2_33, %var_2_36
; Matched:%var_2_35:  %var_2_35 = add nuw nsw i64 %var_2_34, %var_2_33
; %var_2_38 = add nuw nsw i64 %var_2_37, %var_2_36
; Matched:%var_2_36:  %var_2_36 = icmp eq i64 %var_2_35, 2
; %var_2_39 = icmp eq i64 %var_2_38, 2
; Matched:%var_2_37:  %var_2_37 = zext i1 %var_2_36 to i8
; %var_2_40 = zext i1 %var_2_39 to i8
%var_2_41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_37, i8* %var_2_38, align 1
; store i8 %var_2_40, i8* %var_2_41, align 1
; Matched:%var_2_39:  %var_2_39 = add i64 %var_2_7, -16
; %var_2_42 = add i64 %var_2_10, -16
; Matched:%var_2_40:  %var_2_40 = load i64, i64* %RDI.i, align 8
; %var_2_43 = load i64, i64* %RDI, align 8
; Matched:%var_2_41:  %var_2_41 = add i64 %var_2_10, 14
; %var_2_44 = add i64 %var_2_13, 14
; Matched:\<badref\>:  store i64 %var_2_41, i64* %var_2_3, align 8
; store i64 %var_2_44, i64* %PC, align 8
; Matched:%var_2_42:  %var_2_42 = inttoptr i64 %var_2_39 to i64*
; %var_2_45 = inttoptr i64 %var_2_42 to i64*
; Matched:\<badref\>:  store i64 %var_2_40, i64* %var_2_42, align 8
; store i64 %var_2_43, i64* %var_2_45, align 8
; Matched:%var_2_43:  %var_2_43 = load i64, i64* %RBP.i, align 8
; %var_2_46 = load i64, i64* %RBP, align 8
; Matched:%var_2_44:  %var_2_44 = add i64 %var_2_43, -16
; %var_2_47 = add i64 %var_2_46, -16
; Matched:%var_2_45:  %var_2_45 = load i64, i64* %RSI.i811, align 8
; %var_2_48 = load i64, i64* %RSI, align 8
%var_2_49 = load i64, i64* %PC, align 8
; Matched:%var_2_681:  %var_2_681 = add i64 %var_2_680, 4
; %var_2_50 = add i64 %var_2_49, 4
; Matched:\<badref\>:  store i64 %var_2_700, i64* %var_2_3, align 8
; store i64 %var_2_50, i64* %PC, align 8
; Matched:%var_2_48:  %var_2_48 = inttoptr i64 %var_2_44 to i64*
; %var_2_51 = inttoptr i64 %var_2_47 to i64*
; Matched:\<badref\>:  store i64 %var_2_45, i64* %var_2_48, align 8
; store i64 %var_2_48, i64* %var_2_51, align 8
; Matched:%var_2_50:  %var_2_50 = load i64, i64* %RBP.i, align 8
; %var_2_52 = load i64, i64* %RBP, align 8
; Matched:%var_2_51:  %var_2_51 = add i64 %var_2_50, -20
; %var_2_53 = add i64 %var_2_52, -20
; Matched:%var_2_52:  %var_2_52 = load i32, i32* %EDX.i808, align 4
; %var_2_54 = load i32, i32* %EDX, align 4
%var_2_55 = load i64, i64* %PC, align 8
; Matched:%var_2_903:  %var_2_903 = add i64 %var_2_902, 3
; %var_2_56 = add i64 %var_2_55, 3
; Matched:\<badref\>:  store i64 %var_2_1615, i64* %var_2_3, align 8
; store i64 %var_2_56, i64* %PC, align 8
; Matched:%var_2_55:  %var_2_55 = inttoptr i64 %var_2_51 to i32*
; %var_2_57 = inttoptr i64 %var_2_53 to i32*
; Matched:\<badref\>:  store i32 %var_2_52, i32* %var_2_55, align 4
; store i32 %var_2_54, i32* %var_2_57, align 4
; Matched:%var_2_57:  %var_2_57 = load i64, i64* %RBP.i, align 8
; %var_2_58 = load i64, i64* %RBP, align 8
; Matched:%var_2_58:  %var_2_58 = add i64 %var_2_57, -24
; %var_2_59 = add i64 %var_2_58, -24
; Matched:%var_2_59:  %var_2_59 = load i32, i32* %ECX.i805, align 4
; %var_2_60 = load i32, i32* %ECX, align 4
%var_2_61 = load i64, i64* %PC, align 8
; Matched:%var_2_150:  %var_2_150 = add i64 %var_2_149, 3
; %var_2_62 = add i64 %var_2_61, 3
; Matched:\<badref\>:  store i64 %var_2_2179, i64* %var_2_3, align 8
; store i64 %var_2_62, i64* %PC, align 8
; Matched:%var_2_62:  %var_2_62 = inttoptr i64 %var_2_58 to i32*
; %var_2_63 = inttoptr i64 %var_2_59 to i32*
; Matched:\<badref\>:  store i32 %var_2_59, i32* %var_2_62, align 4
; store i32 %var_2_60, i32* %var_2_63, align 4
%var_2_64 = load i64, i64* %RBP, align 8
%var_2_65 = add i64 %var_2_64, -96
%var_2_66 = load i64, i64* %PC, align 8
; Matched:%var_2_1467:  %var_2_1467 = add i64 %var_2_1466, 7
; %var_2_67 = add i64 %var_2_66, 7
; Matched:\<badref\>:  store i64 %var_2_66, i64* %var_2_3, align 8
; store i64 %var_2_67, i64* %PC, align 8
%var_2_68 = inttoptr i64 %var_2_65 to i32*
store i32 1, i32* %var_2_68, align 4
%var_2_69 = load i64, i64* %RBP, align 8
%var_2_70 = add i64 %var_2_69, -72
%var_2_71 = load i64, i64* %PC, align 8
; Matched:%var_2_378:  %var_2_378 = add i64 %var_2_372, 7
; %var_2_72 = add i64 %var_2_71, 7
; Matched:\<badref\>:  store i64 %var_2_378, i64* %var_2_3, align 8
; store i64 %var_2_72, i64* %PC, align 8
%var_2_73 = inttoptr i64 %var_2_70 to i32*
store i32 1, i32* %var_2_73, align 4
; Matched:  %.pre = load i64, i64* %var_2_3, align 8
; %.pre = load i64, i64* %PC, align 8
  br label %block_400b97

block_400d76:                                     ; preds = %block_400d63
; Matched:%var_2_1178:  %var_2_1178 = add i64 %var_2_1099, 3
; %var_2_74 = add i64 %var_2_507, 3
; Matched:\<badref\>:  store i64 %var_2_1178, i64* %var_2_3, align 8
; store i64 %var_2_74, i64* %PC, align 8
%var_2_75 = inttoptr i64 %var_2_508 to i32*
%var_2_76 = load i32, i32* %var_2_75, align 4
; Matched:%var_2_1104:  %var_2_1104 = zext i32 %var_2_1103 to i64
; %var_2_77 = zext i32 %var_2_76 to i64
; Matched:\<badref\>:  store i64 %var_2_1104, i64* %RAX.i798, align 8
; store i64 %var_2_77, i64* %RAX, align 8
%var_2_78 = add i64 %var_2_495, -40
; Matched:%var_2_1183:  %var_2_1183 = add i64 %var_2_1099, 6
; %var_2_79 = add i64 %var_2_507, 6
; Matched:\<badref\>:  store i64 %var_2_1183, i64* %var_2_3, align 8
; store i64 %var_2_79, i64* %PC, align 8
%var_2_80 = inttoptr i64 %var_2_78 to i32*
%var_2_81 = load i32, i32* %var_2_80, align 4
; Matched:%var_2_1186:  %var_2_1186 = sub i32 %var_2_1185, %var_2_1180
; %var_2_82 = sub i32 %var_2_81, %var_2_76
; Matched:%var_2_1187:  %var_2_1187 = zext i32 %var_2_1186 to i64
; %var_2_83 = zext i32 %var_2_82 to i64
; Matched:\<badref\>:  store i64 %var_2_1187, i64* %RCX.i788, align 8
; store i64 %var_2_83, i64* %RCX, align 8
; Matched:%var_2_1056:  %var_2_1056 = icmp ult i32 %var_2_1049, %var_2_1054
; %var_2_84 = icmp ult i32 %var_2_81, %var_2_76
; Matched:%var_2_1189:  %var_2_1189 = zext i1 %var_2_1188 to i8
; %var_2_85 = zext i1 %var_2_84 to i8
; Matched:\<badref\>:  store i8 %var_2_1057, i8* %var_2_14, align 1
; store i8 %var_2_85, i8* %var_2_17, align 1
; Matched:%var_2_1190:  %var_2_1190 = and i32 %var_2_1186, 255
; %var_2_86 = and i32 %var_2_82, 255
; Matched:%var_2_1191:  %var_2_1191 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1190)
; %var_2_87 = tail call i32 @llvm.ctpop.i32(i32 %var_2_86) #14
; Matched:%var_2_1192:  %var_2_1192 = trunc i32 %var_2_1191 to i8
; %var_2_88 = trunc i32 %var_2_87 to i8
; Matched:%var_2_1193:  %var_2_1193 = and i8 %var_2_1192, 1
; %var_2_89 = and i8 %var_2_88, 1
; Matched:%var_2_1194:  %var_2_1194 = xor i8 %var_2_1193, 1
; %var_2_90 = xor i8 %var_2_89, 1
; Matched:\<badref\>:  store i8 %var_2_1062, i8* %var_2_21, align 1
; store i8 %var_2_90, i8* %var_2_24, align 1
; Matched:%var_2_1195:  %var_2_1195 = xor i32 %var_2_1180, %var_2_1185
; %var_2_91 = xor i32 %var_2_76, %var_2_81
; Matched:%var_2_1064:  %var_2_1064 = xor i32 %var_2_1063, %var_2_1055
; %var_2_92 = xor i32 %var_2_91, %var_2_82
; Matched:%var_2_1197:  %var_2_1197 = lshr i32 %var_2_1196, 4
; %var_2_93 = lshr i32 %var_2_92, 4
; Matched:%var_2_1198:  %var_2_1198 = trunc i32 %var_2_1197 to i8
; %var_2_94 = trunc i32 %var_2_93 to i8
; Matched:%var_2_1199:  %var_2_1199 = and i8 %var_2_1198, 1
; %var_2_95 = and i8 %var_2_94, 1
; Matched:\<badref\>:  store i8 %var_2_1199, i8* %var_2_26, align 1
; store i8 %var_2_95, i8* %var_2_29, align 1
; Matched:%var_2_1200:  %var_2_1200 = icmp eq i32 %var_2_1186, 0
; %var_2_96 = icmp eq i32 %var_2_82, 0
; Matched:%var_2_1069:  %var_2_1069 = zext i1 %var_2_1068 to i8
; %var_2_97 = zext i1 %var_2_96 to i8
; Matched:\<badref\>:  store i8 %var_2_1201, i8* %var_2_29, align 1
; store i8 %var_2_97, i8* %var_2_32, align 1
; Matched:%var_2_1070:  %var_2_1070 = lshr i32 %var_2_1055, 31
; %var_2_98 = lshr i32 %var_2_82, 31
; Matched:%var_2_1203:  %var_2_1203 = trunc i32 %var_2_1202 to i8
; %var_2_99 = trunc i32 %var_2_98 to i8
; Matched:\<badref\>:  store i8 %var_2_1203, i8* %var_2_32, align 1
; store i8 %var_2_99, i8* %var_2_35, align 1
; Matched:%var_2_1204:  %var_2_1204 = lshr i32 %var_2_1185, 31
; %var_2_100 = lshr i32 %var_2_81, 31
; Matched:%var_2_1205:  %var_2_1205 = lshr i32 %var_2_1180, 31
; %var_2_101 = lshr i32 %var_2_76, 31
; Matched:%var_2_1206:  %var_2_1206 = xor i32 %var_2_1205, %var_2_1204
; %var_2_102 = xor i32 %var_2_101, %var_2_100
; Matched:%var_2_1075:  %var_2_1075 = xor i32 %var_2_1070, %var_2_1072
; %var_2_103 = xor i32 %var_2_98, %var_2_100
; Matched:%var_2_1208:  %var_2_1208 = add nuw nsw i32 %var_2_1207, %var_2_1206
; %var_2_104 = add nuw nsw i32 %var_2_103, %var_2_102
; Matched:%var_2_1077:  %var_2_1077 = icmp eq i32 %var_2_1076, 2
; %var_2_105 = icmp eq i32 %var_2_104, 2
; Matched:%var_2_1210:  %var_2_1210 = zext i1 %var_2_1209 to i8
; %var_2_106 = zext i1 %var_2_105 to i8
; Matched:\<badref\>:  store i8 %var_2_1210, i8* %var_2_38, align 1
; store i8 %var_2_106, i8* %var_2_41, align 1
; Matched:%var_2_1211:  %var_2_1211 = add i64 %var_2_1099, 11
; %var_2_107 = add i64 %var_2_507, 11
; Matched:\<badref\>:  store i64 %var_2_1211, i64* %var_2_3, align 8
; store i64 %var_2_107, i64* %PC, align 8
; Matched:\<badref\>:  store i32 %var_2_1186, i32* %var_2_1184, align 4
; store i32 %var_2_82, i32* %var_2_80, align 4
; Matched:%var_2_1212:  %var_2_1212 = load i64, i64* %RBP.i, align 8
; %var_2_108 = load i64, i64* %RBP, align 8
; Matched:%var_2_1213:  %var_2_1213 = add i64 %var_2_1212, -68
; %var_2_109 = add i64 %var_2_108, -68
%var_2_110 = load i64, i64* %PC, align 8
; Matched:%var_2_279:  %var_2_279 = add i64 %var_2_278, 3
; %var_2_111 = add i64 %var_2_110, 3
; Matched:\<badref\>:  store i64 %var_2_279, i64* %var_2_3, align 8
; store i64 %var_2_111, i64* %PC, align 8
; Matched:%var_2_1216:  %var_2_1216 = inttoptr i64 %var_2_1213 to i32*
; %var_2_112 = inttoptr i64 %var_2_109 to i32*
; Matched:%var_2_1217:  %var_2_1217 = load i32, i32* %var_2_1216, align 4
; %var_2_113 = load i32, i32* %var_2_112, align 4
; Matched:%var_2_1218:  %var_2_1218 = zext i32 %var_2_1217 to i64
; %var_2_114 = zext i32 %var_2_113 to i64
; Matched:%var_2_1219:  %var_2_1219 = shl nuw i64 %var_2_1218, 32
; %var_2_115 = shl nuw i64 %var_2_114, 32
; Matched:%var_2_1220:  %var_2_1220 = ashr i64 %var_2_1219, 33
; %var_2_116 = ashr i64 %var_2_115, 33
; Matched:%var_2_1221:  %var_2_1221 = trunc i32 %var_2_1217 to i8
; %var_2_117 = trunc i32 %var_2_113 to i8
; Matched:%var_2_1222:  %var_2_1222 = and i8 %var_2_1221, 1
; %var_2_118 = and i8 %var_2_117, 1
; Matched:%var_2_1223:  %var_2_1223 = trunc i64 %var_2_1220 to i32
; %var_2_119 = trunc i64 %var_2_116 to i32
; Matched:%var_2_1224:  %var_2_1224 = and i64 %var_2_1220, 4294967295
; %var_2_120 = and i64 %var_2_116, 4294967295
; Matched:\<badref\>:  store i64 %var_2_1224, i64* %RAX.i798, align 8
; store i64 %var_2_120, i64* %RAX, align 8
; Matched:\<badref\>:  store i8 %var_2_1222, i8* %var_2_14, align 1
; store i8 %var_2_118, i8* %var_2_17, align 1
; Matched:%var_2_1225:  %var_2_1225 = and i32 %var_2_1223, 255
; %var_2_121 = and i32 %var_2_119, 255
; Matched:%var_2_1226:  %var_2_1226 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1225)
; %var_2_122 = tail call i32 @llvm.ctpop.i32(i32 %var_2_121) #14
; Matched:%var_2_1227:  %var_2_1227 = trunc i32 %var_2_1226 to i8
; %var_2_123 = trunc i32 %var_2_122 to i8
; Matched:%var_2_1228:  %var_2_1228 = and i8 %var_2_1227, 1
; %var_2_124 = and i8 %var_2_123, 1
; Matched:%var_2_1229:  %var_2_1229 = xor i8 %var_2_1228, 1
; %var_2_125 = xor i8 %var_2_124, 1
; Matched:\<badref\>:  store i8 %var_2_1229, i8* %var_2_21, align 1
; store i8 %var_2_125, i8* %var_2_24, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_1230:  %var_2_1230 = icmp eq i32 %var_2_1223, 0
; %var_2_126 = icmp eq i32 %var_2_119, 0
; Matched:%var_2_1231:  %var_2_1231 = zext i1 %var_2_1230 to i8
; %var_2_127 = zext i1 %var_2_126 to i8
; Matched:\<badref\>:  store i8 %var_2_1231, i8* %var_2_29, align 1
; store i8 %var_2_127, i8* %var_2_32, align 1
; Matched:%var_2_1232:  %var_2_1232 = lshr i64 %var_2_1220, 31
; %var_2_128 = lshr i64 %var_2_116, 31
; Matched:%var_2_1233:  %var_2_1233 = trunc i64 %var_2_1232 to i8
; %var_2_129 = trunc i64 %var_2_128 to i8
; Matched:%var_2_1234:  %var_2_1234 = and i8 %var_2_1233, 1
; %var_2_130 = and i8 %var_2_129, 1
; Matched:\<badref\>:  store i8 %var_2_1234, i8* %var_2_32, align 1
; store i8 %var_2_130, i8* %var_2_35, align 1
store i8 0, i8* %var_2_41, align 1
; Matched:%var_2_1235:  %var_2_1235 = trunc i64 %var_2_1220 to i32
; %var_2_131 = trunc i64 %var_2_116 to i32
%var_2_132 = add i64 %var_2_110, 9
store i64 %var_2_132, i64* %PC, align 8
; Matched:\<badref\>:  store i32 %var_2_1235, i32* %var_2_1216, align 4
; store i32 %var_2_131, i32* %var_2_112, align 4
; Matched:%var_2_1237:  %var_2_1237 = load i64, i64* %var_2_3, align 8
; %var_2_133 = load i64, i64* %PC, align 8
; Matched:%var_2_1238:  %var_2_1238 = add i64 %var_2_1237, -76
; %var_2_134 = add i64 %var_2_133, -76
; Matched:\<badref\>:  store i64 %var_2_1238, i64* %var_2_3, align 8
; store i64 %var_2_134, i64* %PC, align 8
  br label %block_400d3e

block_400c73:                                     ; preds = %block_400c67
%var_2_135 = add i64 %var_2_1774, -40
; Matched:%var_2_614:  %var_2_614 = add i64 %var_2_612, 3
; %var_2_136 = add i64 %var_2_1810, 3
; Matched:\<badref\>:  store i64 %var_2_614, i64* %var_2_3, align 8
; store i64 %var_2_136, i64* %PC, align 8
%var_2_137 = inttoptr i64 %var_2_135 to i32*
%var_2_138 = load i32, i32* %var_2_137, align 4
; Matched:%var_2_617:  %var_2_617 = zext i32 %var_2_616 to i64
; %var_2_139 = zext i32 %var_2_138 to i64
; Matched:\<badref\>:  store i64 %var_2_1050, i64* %RAX.i798, align 8
; store i64 %var_2_139, i64* %RAX, align 8
; Matched:%var_2_618:  %var_2_618 = add i64 %var_2_612, 6
; %var_2_140 = add i64 %var_2_1810, 6
; Matched:\<badref\>:  store i64 %var_2_618, i64* %var_2_3, align 8
; store i64 %var_2_140, i64* %PC, align 8
; Matched:%var_2_619:  %var_2_619 = load i32, i32* %var_2_579, align 4
; %var_2_141 = load i32, i32* %var_2_1777, align 4
; Matched:%var_2_620:  %var_2_620 = add i32 %var_2_619, %var_2_616
; %var_2_142 = add i32 %var_2_141, %var_2_138
; Matched:%var_2_621:  %var_2_621 = zext i32 %var_2_620 to i64
; %var_2_143 = zext i32 %var_2_142 to i64
; Matched:\<badref\>:  store i64 %var_2_621, i64* %RAX.i798, align 8
; store i64 %var_2_143, i64* %RAX, align 8
; Matched:%var_2_622:  %var_2_622 = icmp ult i32 %var_2_620, %var_2_616
; %var_2_144 = icmp ult i32 %var_2_142, %var_2_138
; Matched:%var_2_623:  %var_2_623 = icmp ult i32 %var_2_620, %var_2_619
; %var_2_145 = icmp ult i32 %var_2_142, %var_2_141
; Matched:%var_2_624:  %var_2_624 = or i1 %var_2_622, %var_2_623
; %var_2_146 = or i1 %var_2_144, %var_2_145
; Matched:%var_2_625:  %var_2_625 = zext i1 %var_2_624 to i8
; %var_2_147 = zext i1 %var_2_146 to i8
; Matched:\<badref\>:  store i8 %var_2_625, i8* %var_2_14, align 1
; store i8 %var_2_147, i8* %var_2_17, align 1
; Matched:%var_2_626:  %var_2_626 = and i32 %var_2_620, 255
; %var_2_148 = and i32 %var_2_142, 255
; Matched:%var_2_627:  %var_2_627 = tail call i32 @llvm.ctpop.i32(i32 %var_2_626)
; %var_2_149 = tail call i32 @llvm.ctpop.i32(i32 %var_2_148) #14
; Matched:%var_2_628:  %var_2_628 = trunc i32 %var_2_627 to i8
; %var_2_150 = trunc i32 %var_2_149 to i8
; Matched:%var_2_629:  %var_2_629 = and i8 %var_2_628, 1
; %var_2_151 = and i8 %var_2_150, 1
; Matched:%var_2_630:  %var_2_630 = xor i8 %var_2_629, 1
; %var_2_152 = xor i8 %var_2_151, 1
; Matched:\<badref\>:  store i8 %var_2_630, i8* %var_2_21, align 1
; store i8 %var_2_152, i8* %var_2_24, align 1
; Matched:%var_2_631:  %var_2_631 = xor i32 %var_2_619, %var_2_616
; %var_2_153 = xor i32 %var_2_141, %var_2_138
; Matched:%var_2_632:  %var_2_632 = xor i32 %var_2_631, %var_2_620
; %var_2_154 = xor i32 %var_2_153, %var_2_142
; Matched:%var_2_633:  %var_2_633 = lshr i32 %var_2_632, 4
; %var_2_155 = lshr i32 %var_2_154, 4
; Matched:%var_2_634:  %var_2_634 = trunc i32 %var_2_633 to i8
; %var_2_156 = trunc i32 %var_2_155 to i8
; Matched:%var_2_635:  %var_2_635 = and i8 %var_2_634, 1
; %var_2_157 = and i8 %var_2_156, 1
; Matched:\<badref\>:  store i8 %var_2_635, i8* %var_2_26, align 1
; store i8 %var_2_157, i8* %var_2_29, align 1
; Matched:%var_2_636:  %var_2_636 = icmp eq i32 %var_2_620, 0
; %var_2_158 = icmp eq i32 %var_2_142, 0
; Matched:%var_2_637:  %var_2_637 = zext i1 %var_2_636 to i8
; %var_2_159 = zext i1 %var_2_158 to i8
; Matched:\<badref\>:  store i8 %var_2_637, i8* %var_2_29, align 1
; store i8 %var_2_159, i8* %var_2_32, align 1
; Matched:%var_2_638:  %var_2_638 = lshr i32 %var_2_620, 31
; %var_2_160 = lshr i32 %var_2_142, 31
; Matched:%var_2_639:  %var_2_639 = trunc i32 %var_2_638 to i8
; %var_2_161 = trunc i32 %var_2_160 to i8
; Matched:\<badref\>:  store i8 %var_2_639, i8* %var_2_32, align 1
; store i8 %var_2_161, i8* %var_2_35, align 1
; Matched:%var_2_640:  %var_2_640 = lshr i32 %var_2_616, 31
; %var_2_162 = lshr i32 %var_2_138, 31
; Matched:%var_2_641:  %var_2_641 = lshr i32 %var_2_619, 31
; %var_2_163 = lshr i32 %var_2_141, 31
; Matched:%var_2_642:  %var_2_642 = xor i32 %var_2_638, %var_2_640
; %var_2_164 = xor i32 %var_2_160, %var_2_162
; Matched:%var_2_643:  %var_2_643 = xor i32 %var_2_638, %var_2_641
; %var_2_165 = xor i32 %var_2_160, %var_2_163
; Matched:%var_2_644:  %var_2_644 = add nuw nsw i32 %var_2_642, %var_2_643
; %var_2_166 = add nuw nsw i32 %var_2_164, %var_2_165
; Matched:%var_2_645:  %var_2_645 = icmp eq i32 %var_2_644, 2
; %var_2_167 = icmp eq i32 %var_2_166, 2
; Matched:%var_2_646:  %var_2_646 = zext i1 %var_2_645 to i8
; %var_2_168 = zext i1 %var_2_167 to i8
; Matched:\<badref\>:  store i8 %var_2_646, i8* %var_2_38, align 1
; store i8 %var_2_168, i8* %var_2_41, align 1
; Matched:%var_2_647:  %var_2_647 = add i64 %var_2_576, -32
; %var_2_169 = add i64 %var_2_1774, -32
; Matched:%var_2_648:  %var_2_648 = add i64 %var_2_612, 9
; %var_2_170 = add i64 %var_2_1810, 9
; Matched:\<badref\>:  store i64 %var_2_648, i64* %var_2_3, align 8
; store i64 %var_2_170, i64* %PC, align 8
; Matched:%var_2_649:  %var_2_649 = inttoptr i64 %var_2_647 to i32*
; %var_2_171 = inttoptr i64 %var_2_169 to i32*
; Matched:%var_2_650:  %var_2_650 = load i32, i32* %var_2_649, align 4
; %var_2_172 = load i32, i32* %var_2_171, align 4
; Matched:%var_2_651:  %var_2_651 = sub i32 %var_2_620, %var_2_650
; %var_2_173 = sub i32 %var_2_142, %var_2_172
; Matched:%var_2_652:  %var_2_652 = zext i32 %var_2_651 to i64
; %var_2_174 = zext i32 %var_2_173 to i64
; Matched:\<badref\>:  store i64 %var_2_652, i64* %RAX.i798, align 8
; store i64 %var_2_174, i64* %RAX, align 8
; Matched:%var_2_653:  %var_2_653 = icmp ult i32 %var_2_620, %var_2_650
; %var_2_175 = icmp ult i32 %var_2_142, %var_2_172
; Matched:%var_2_654:  %var_2_654 = zext i1 %var_2_653 to i8
; %var_2_176 = zext i1 %var_2_175 to i8
; Matched:\<badref\>:  store i8 %var_2_654, i8* %var_2_14, align 1
; store i8 %var_2_176, i8* %var_2_17, align 1
; Matched:%var_2_655:  %var_2_655 = and i32 %var_2_651, 255
; %var_2_177 = and i32 %var_2_173, 255
; Matched:%var_2_656:  %var_2_656 = tail call i32 @llvm.ctpop.i32(i32 %var_2_655)
; %var_2_178 = tail call i32 @llvm.ctpop.i32(i32 %var_2_177) #14
; Matched:%var_2_657:  %var_2_657 = trunc i32 %var_2_656 to i8
; %var_2_179 = trunc i32 %var_2_178 to i8
; Matched:%var_2_658:  %var_2_658 = and i8 %var_2_657, 1
; %var_2_180 = and i8 %var_2_179, 1
; Matched:%var_2_659:  %var_2_659 = xor i8 %var_2_658, 1
; %var_2_181 = xor i8 %var_2_180, 1
; Matched:\<badref\>:  store i8 %var_2_659, i8* %var_2_21, align 1
; store i8 %var_2_181, i8* %var_2_24, align 1
; Matched:%var_2_660:  %var_2_660 = xor i32 %var_2_650, %var_2_620
; %var_2_182 = xor i32 %var_2_172, %var_2_142
; Matched:%var_2_661:  %var_2_661 = xor i32 %var_2_660, %var_2_651
; %var_2_183 = xor i32 %var_2_182, %var_2_173
; Matched:%var_2_662:  %var_2_662 = lshr i32 %var_2_661, 4
; %var_2_184 = lshr i32 %var_2_183, 4
; Matched:%var_2_663:  %var_2_663 = trunc i32 %var_2_662 to i8
; %var_2_185 = trunc i32 %var_2_184 to i8
; Matched:%var_2_664:  %var_2_664 = and i8 %var_2_663, 1
; %var_2_186 = and i8 %var_2_185, 1
; Matched:\<badref\>:  store i8 %var_2_664, i8* %var_2_26, align 1
; store i8 %var_2_186, i8* %var_2_29, align 1
; Matched:%var_2_665:  %var_2_665 = icmp eq i32 %var_2_651, 0
; %var_2_187 = icmp eq i32 %var_2_173, 0
; Matched:%var_2_666:  %var_2_666 = zext i1 %var_2_665 to i8
; %var_2_188 = zext i1 %var_2_187 to i8
; Matched:\<badref\>:  store i8 %var_2_666, i8* %var_2_29, align 1
; store i8 %var_2_188, i8* %var_2_32, align 1
; Matched:%var_2_667:  %var_2_667 = lshr i32 %var_2_651, 31
; %var_2_189 = lshr i32 %var_2_173, 31
; Matched:%var_2_668:  %var_2_668 = trunc i32 %var_2_667 to i8
; %var_2_190 = trunc i32 %var_2_189 to i8
; Matched:\<badref\>:  store i8 %var_2_668, i8* %var_2_32, align 1
; store i8 %var_2_190, i8* %var_2_35, align 1
; Matched:%var_2_669:  %var_2_669 = lshr i32 %var_2_650, 31
; %var_2_191 = lshr i32 %var_2_172, 31
; Matched:%var_2_670:  %var_2_670 = xor i32 %var_2_669, %var_2_638
; %var_2_192 = xor i32 %var_2_191, %var_2_160
; Matched:%var_2_671:  %var_2_671 = xor i32 %var_2_667, %var_2_638
; %var_2_193 = xor i32 %var_2_189, %var_2_160
; Matched:%var_2_672:  %var_2_672 = add nuw nsw i32 %var_2_671, %var_2_670
; %var_2_194 = add nuw nsw i32 %var_2_193, %var_2_192
; Matched:%var_2_673:  %var_2_673 = icmp eq i32 %var_2_672, 2
; %var_2_195 = icmp eq i32 %var_2_194, 2
; Matched:%var_2_674:  %var_2_674 = zext i1 %var_2_673 to i8
; %var_2_196 = zext i1 %var_2_195 to i8
; Matched:\<badref\>:  store i8 %var_2_674, i8* %var_2_38, align 1
; store i8 %var_2_196, i8* %var_2_41, align 1
; Matched:%var_2_675:  %var_2_675 = add i64 %var_2_576, -44
; %var_2_197 = add i64 %var_2_1774, -44
; Matched:%var_2_676:  %var_2_676 = add i64 %var_2_612, 12
; %var_2_198 = add i64 %var_2_1810, 12
; Matched:\<badref\>:  store i64 %var_2_676, i64* %var_2_3, align 8
; store i64 %var_2_198, i64* %PC, align 8
; Matched:%var_2_677:  %var_2_677 = inttoptr i64 %var_2_675 to i32*
; %var_2_199 = inttoptr i64 %var_2_197 to i32*
; Matched:\<badref\>:  store i32 %var_2_651, i32* %var_2_677, align 4
; store i32 %var_2_173, i32* %var_2_199, align 4
%var_2_200 = load i64, i64* %RBP, align 8
%var_2_201 = add i64 %var_2_200, -8
%var_2_202 = load i64, i64* %PC, align 8
; Matched:%var_2_1821:  %var_2_1821 = add i64 %var_2_1820, 4
; %var_2_203 = add i64 %var_2_202, 4
; Matched:\<badref\>:  store i64 %var_2_1788, i64* %var_2_3, align 8
; store i64 %var_2_203, i64* %PC, align 8
%var_2_204 = inttoptr i64 %var_2_201 to i64*
%var_2_205 = load i64, i64* %var_2_204, align 8
; Matched:\<badref\>:  store i64 %var_2_1662, i64* %RCX.i788, align 8
; store i64 %var_2_205, i64* %RCX, align 8
%var_2_206 = add i64 %var_2_200, -36
%var_2_207 = add i64 %var_2_202, 8
store i64 %var_2_207, i64* %PC, align 8
%var_2_208 = inttoptr i64 %var_2_206 to i32*
%var_2_209 = load i32, i32* %var_2_208, align 4
%var_2_210 = sext i32 %var_2_209 to i64
; Matched:\<badref\>:  store i64 %var_2_688, i64* %RDX.i786, align 8
; store i64 %var_2_210, i64* %RDX, align 8
%var_2_211 = shl nsw i64 %var_2_210, 3
%var_2_212 = add i64 %var_2_211, %var_2_205
; Matched:%var_2_1798:  %var_2_1798 = add i64 %var_2_1787, 13
; %var_2_213 = add i64 %var_2_202, 13
; Matched:\<badref\>:  store i64 %var_2_2078, i64* %var_2_3, align 8
; store i64 %var_2_213, i64* %PC, align 8
%var_2_214 = inttoptr i64 %var_2_212 to i64*
%var_2_215 = load i64, i64* %var_2_214, align 8
store i64 %var_2_215, i64* %var_2_1828, align 1
store double 0.000000e+00, double* %var_2_1830, align 1
; Matched:%var_2_694:  %var_2_694 = add i64 %var_2_678, -112
; %var_2_216 = add i64 %var_2_200, -112
; Matched:%var_2_821:  %var_2_821 = add i64 %var_2_787, 18
; %var_2_217 = add i64 %var_2_202, 18
; Matched:\<badref\>:  store i64 %var_2_821, i64* %var_2_3, align 8
; store i64 %var_2_217, i64* %PC, align 8
; Matched:%var_2_696:  %var_2_696 = inttoptr i64 %var_2_694 to i64*
; %var_2_218 = inttoptr i64 %var_2_216 to i64*
; Matched:\<badref\>:  store i64 %var_2_693, i64* %var_2_696, align 8
; store i64 %var_2_215, i64* %var_2_218, align 8
%var_2_219 = load i64, i64* %RBP, align 8
%var_2_220 = add i64 %var_2_219, -8
%var_2_221 = load i64, i64* %PC, align 8
; Matched:%var_2_746:  %var_2_746 = add i64 %var_2_745, 4
; %var_2_222 = add i64 %var_2_221, 4
; Matched:\<badref\>:  store i64 %var_2_47, i64* %var_2_3, align 8
; store i64 %var_2_222, i64* %PC, align 8
%var_2_223 = inttoptr i64 %var_2_220 to i64*
%var_2_224 = load i64, i64* %var_2_223, align 8
; Matched:\<badref\>:  store i64 %var_2_733, i64* %RCX.i788, align 8
; store i64 %var_2_224, i64* %RCX, align 8
%var_2_225 = add i64 %var_2_219, -44
%var_2_226 = add i64 %var_2_221, 8
store i64 %var_2_226, i64* %PC, align 8
%var_2_227 = inttoptr i64 %var_2_225 to i32*
%var_2_228 = load i32, i32* %var_2_227, align 4
%var_2_229 = sext i32 %var_2_228 to i64
; Matched:\<badref\>:  store i64 %var_2_707, i64* %RDX.i786, align 8
; store i64 %var_2_229, i64* %RDX, align 8
%var_2_230 = shl nsw i64 %var_2_229, 3
%var_2_231 = add i64 %var_2_230, %var_2_224
; Matched:%var_2_2078:  %var_2_2078 = add i64 %var_2_2073, 13
; %var_2_232 = add i64 %var_2_221, 13
; Matched:\<badref\>:  store i64 %var_2_1908, i64* %var_2_3, align 8
; store i64 %var_2_232, i64* %PC, align 8
%var_2_233 = inttoptr i64 %var_2_231 to i64*
%var_2_234 = load i64, i64* %var_2_233, align 8
store i64 %var_2_234, i64* %var_2_1828, align 1
store double 0.000000e+00, double* %var_2_1830, align 1
; Matched:%var_2_713:  %var_2_713 = add i64 %var_2_699, 17
; %var_2_235 = add i64 %var_2_221, 17
; Matched:\<badref\>:  store i64 %var_2_713, i64* %var_2_3, align 8
; store i64 %var_2_235, i64* %PC, align 8
; Matched:%var_2_1864:  %var_2_1864 = load i64, i64* %var_2_1822, align 8
; %var_2_236 = load i64, i64* %var_2_223, align 8
; Matched:\<badref\>:  store i64 %var_2_1864, i64* %RCX.i788, align 8
; store i64 %var_2_236, i64* %RCX, align 8
; Matched:%var_2_684:  %var_2_684 = add i64 %var_2_678, -36
; %var_2_237 = add i64 %var_2_219, -36
; Matched:%var_2_2058:  %var_2_2058 = add i64 %var_2_2047, 21
; %var_2_238 = add i64 %var_2_221, 21
; Matched:\<badref\>:  store i64 %var_2_716, i64* %var_2_3, align 8
; store i64 %var_2_238, i64* %PC, align 8
; Matched:%var_2_717:  %var_2_717 = inttoptr i64 %var_2_715 to i32*
; %var_2_239 = inttoptr i64 %var_2_237 to i32*
; Matched:%var_2_687:  %var_2_687 = load i32, i32* %var_2_686, align 4
; %var_2_240 = load i32, i32* %var_2_239, align 4
; Matched:%var_2_719:  %var_2_719 = sext i32 %var_2_718 to i64
; %var_2_241 = sext i32 %var_2_240 to i64
; Matched:\<badref\>:  store i64 %var_2_719, i64* %RDX.i786, align 8
; store i64 %var_2_241, i64* %RDX, align 8
; Matched:%var_2_720:  %var_2_720 = shl nsw i64 %var_2_719, 3
; %var_2_242 = shl nsw i64 %var_2_241, 3
; Matched:%var_2_721:  %var_2_721 = add i64 %var_2_720, %var_2_714
; %var_2_243 = add i64 %var_2_242, %var_2_236
; Matched:%var_2_1810:  %var_2_1810 = add i64 %var_2_1787, 26
; %var_2_244 = add i64 %var_2_221, 26
; Matched:\<badref\>:  store i64 %var_2_1759, i64* %var_2_3, align 8
; store i64 %var_2_244, i64* %PC, align 8
; Matched:%var_2_723:  %var_2_723 = inttoptr i64 %var_2_721 to i64*
; %var_2_245 = inttoptr i64 %var_2_243 to i64*
; Matched:\<badref\>:  store i64 %var_2_712, i64* %var_2_723, align 8
; store i64 %var_2_234, i64* %var_2_245, align 8
%var_2_246 = load i64, i64* %RBP, align 8
%var_2_247 = add i64 %var_2_246, -112
%var_2_248 = load i64, i64* %PC, align 8
; Matched:%var_2_1900:  %var_2_1900 = add i64 %var_2_1899, 5
; %var_2_249 = add i64 %var_2_248, 5
; Matched:\<badref\>:  store i64 %var_2_1900, i64* %var_2_3, align 8
; store i64 %var_2_249, i64* %PC, align 8
%var_2_250 = inttoptr i64 %var_2_247 to i64*
%var_2_251 = load i64, i64* %var_2_250, align 8
; Matched:\<badref\>:  store i64 %var_2_1902, i64* %var_2_225, align 1
; store i64 %var_2_251, i64* %var_2_1828, align 1
store double 0.000000e+00, double* %var_2_1830, align 1
; Matched:%var_2_1903:  %var_2_1903 = add i64 %var_2_1897, -8
; %var_2_252 = add i64 %var_2_246, -8
%var_2_253 = add i64 %var_2_248, 9
store i64 %var_2_253, i64* %PC, align 8
; Matched:%var_2_1661:  %var_2_1661 = inttoptr i64 %var_2_1659 to i64*
; %var_2_254 = inttoptr i64 %var_2_252 to i64*
; Matched:%var_2_1906:  %var_2_1906 = load i64, i64* %var_2_1905, align 8
; %var_2_255 = load i64, i64* %var_2_254, align 8
; Matched:\<badref\>:  store i64 %var_2_1906, i64* %RCX.i788, align 8
; store i64 %var_2_255, i64* %RCX, align 8
; Matched:%var_2_703:  %var_2_703 = add i64 %var_2_697, -44
; %var_2_256 = add i64 %var_2_246, -44
; Matched:%var_2_1462:  %var_2_1462 = add i64 %var_2_1457, 13
; %var_2_257 = add i64 %var_2_248, 13
; Matched:\<badref\>:  store i64 %var_2_1462, i64* %var_2_3, align 8
; store i64 %var_2_257, i64* %PC, align 8
; Matched:%var_2_736:  %var_2_736 = inttoptr i64 %var_2_734 to i32*
; %var_2_258 = inttoptr i64 %var_2_256 to i32*
; Matched:%var_2_706:  %var_2_706 = load i32, i32* %var_2_705, align 4
; %var_2_259 = load i32, i32* %var_2_258, align 4
; Matched:%var_2_738:  %var_2_738 = sext i32 %var_2_737 to i64
; %var_2_260 = sext i32 %var_2_259 to i64
; Matched:\<badref\>:  store i64 %var_2_738, i64* %RDX.i786, align 8
; store i64 %var_2_260, i64* %RDX, align 8
; Matched:%var_2_739:  %var_2_739 = shl nsw i64 %var_2_738, 3
; %var_2_261 = shl nsw i64 %var_2_260, 3
; Matched:%var_2_740:  %var_2_740 = add i64 %var_2_739, %var_2_733
; %var_2_262 = add i64 %var_2_261, %var_2_255
; Matched:%var_2_1914:  %var_2_1914 = add i64 %var_2_1899, 18
; %var_2_263 = add i64 %var_2_248, 18
; Matched:\<badref\>:  store i64 %var_2_1914, i64* %var_2_3, align 8
; store i64 %var_2_263, i64* %PC, align 8
; Matched:%var_2_742:  %var_2_742 = inttoptr i64 %var_2_740 to i64*
; %var_2_264 = inttoptr i64 %var_2_262 to i64*
; Matched:\<badref\>:  store i64 %var_2_729, i64* %var_2_742, align 8
; store i64 %var_2_251, i64* %var_2_264, align 8
%var_2_265 = load i64, i64* %RBP, align 8
%var_2_266 = add i64 %var_2_265, -8
%var_2_267 = load i64, i64* %PC, align 8
; Matched:%var_2_1788:  %var_2_1788 = add i64 %var_2_1787, 4
; %var_2_268 = add i64 %var_2_267, 4
; Matched:\<badref\>:  store i64 %var_2_788, i64* %var_2_3, align 8
; store i64 %var_2_268, i64* %PC, align 8
%var_2_269 = inttoptr i64 %var_2_266 to i64*
%var_2_270 = load i64, i64* %var_2_269, align 8
; Matched:\<badref\>:  store i64 %var_2_1808, i64* %RCX.i788, align 8
; store i64 %var_2_270, i64* %RCX, align 8
%var_2_271 = add i64 %var_2_265, -36
; Matched:%var_2_71:  %var_2_71 = add i64 %var_2_70, 7
; %var_2_272 = add i64 %var_2_267, 7
; Matched:\<badref\>:  store i64 %var_2_71, i64* %var_2_3, align 8
; store i64 %var_2_272, i64* %PC, align 8
%var_2_273 = inttoptr i64 %var_2_271 to i32*
%var_2_274 = load i32, i32* %var_2_273, align 4
%var_2_275 = add i32 %var_2_274, 1
; Matched:%var_2_831:  %var_2_831 = zext i32 %var_2_830 to i64
; %var_2_276 = zext i32 %var_2_275 to i64
; Matched:\<badref\>:  store i64 %var_2_831, i64* %RAX.i798, align 8
; store i64 %var_2_276, i64* %RAX, align 8
; Matched:%var_2_755:  %var_2_755 = icmp eq i32 %var_2_752, -1
; %var_2_277 = icmp eq i32 %var_2_274, -1
; Matched:%var_2_833:  %var_2_833 = icmp eq i32 %var_2_830, 0
; %var_2_278 = icmp eq i32 %var_2_275, 0
; Matched:%var_2_834:  %var_2_834 = or i1 %var_2_832, %var_2_833
; %var_2_279 = or i1 %var_2_277, %var_2_278
; Matched:%var_2_835:  %var_2_835 = zext i1 %var_2_834 to i8
; %var_2_280 = zext i1 %var_2_279 to i8
; Matched:\<badref\>:  store i8 %var_2_758, i8* %var_2_14, align 1
; store i8 %var_2_280, i8* %var_2_17, align 1
; Matched:%var_2_836:  %var_2_836 = and i32 %var_2_830, 255
; %var_2_281 = and i32 %var_2_275, 255
; Matched:%var_2_837:  %var_2_837 = tail call i32 @llvm.ctpop.i32(i32 %var_2_836)
; %var_2_282 = tail call i32 @llvm.ctpop.i32(i32 %var_2_281) #14
; Matched:%var_2_838:  %var_2_838 = trunc i32 %var_2_837 to i8
; %var_2_283 = trunc i32 %var_2_282 to i8
; Matched:%var_2_762:  %var_2_762 = and i8 %var_2_761, 1
; %var_2_284 = and i8 %var_2_283, 1
; Matched:%var_2_840:  %var_2_840 = xor i8 %var_2_839, 1
; %var_2_285 = xor i8 %var_2_284, 1
; Matched:\<badref\>:  store i8 %var_2_840, i8* %var_2_21, align 1
; store i8 %var_2_285, i8* %var_2_24, align 1
; Matched:%var_2_841:  %var_2_841 = xor i32 %var_2_830, %var_2_829
; %var_2_286 = xor i32 %var_2_275, %var_2_274
; Matched:%var_2_765:  %var_2_765 = lshr i32 %var_2_764, 4
; %var_2_287 = lshr i32 %var_2_286, 4
; Matched:%var_2_843:  %var_2_843 = trunc i32 %var_2_842 to i8
; %var_2_288 = trunc i32 %var_2_287 to i8
; Matched:%var_2_844:  %var_2_844 = and i8 %var_2_843, 1
; %var_2_289 = and i8 %var_2_288, 1
; Matched:\<badref\>:  store i8 %var_2_844, i8* %var_2_26, align 1
; store i8 %var_2_289, i8* %var_2_29, align 1
; Matched:%var_2_768:  %var_2_768 = zext i1 %var_2_756 to i8
; %var_2_290 = zext i1 %var_2_278 to i8
; Matched:\<badref\>:  store i8 %var_2_845, i8* %var_2_29, align 1
; store i8 %var_2_290, i8* %var_2_32, align 1
; Matched:%var_2_846:  %var_2_846 = lshr i32 %var_2_830, 31
; %var_2_291 = lshr i32 %var_2_275, 31
; Matched:%var_2_847:  %var_2_847 = trunc i32 %var_2_846 to i8
; %var_2_292 = trunc i32 %var_2_291 to i8
; Matched:\<badref\>:  store i8 %var_2_770, i8* %var_2_32, align 1
; store i8 %var_2_292, i8* %var_2_35, align 1
; Matched:%var_2_848:  %var_2_848 = lshr i32 %var_2_829, 31
; %var_2_293 = lshr i32 %var_2_274, 31
; Matched:%var_2_849:  %var_2_849 = xor i32 %var_2_846, %var_2_848
; %var_2_294 = xor i32 %var_2_291, %var_2_293
; Matched:%var_2_850:  %var_2_850 = add nuw nsw i32 %var_2_849, %var_2_846
; %var_2_295 = add nuw nsw i32 %var_2_294, %var_2_291
; Matched:%var_2_774:  %var_2_774 = icmp eq i32 %var_2_773, 2
; %var_2_296 = icmp eq i32 %var_2_295, 2
; Matched:%var_2_852:  %var_2_852 = zext i1 %var_2_851 to i8
; %var_2_297 = zext i1 %var_2_296 to i8
; Matched:\<badref\>:  store i8 %var_2_852, i8* %var_2_38, align 1
; store i8 %var_2_297, i8* %var_2_41, align 1
%var_2_298 = sext i32 %var_2_275 to i64
; Matched:\<badref\>:  store i64 %var_2_776, i64* %RDX.i786, align 8
; store i64 %var_2_298, i64* %RDX, align 8
%var_2_299 = shl nsw i64 %var_2_298, 3
%var_2_300 = add i64 %var_2_270, %var_2_299
; Matched:%var_2_695:  %var_2_695 = add i64 %var_2_680, 18
; %var_2_301 = add i64 %var_2_267, 18
; Matched:\<badref\>:  store i64 %var_2_695, i64* %var_2_3, align 8
; store i64 %var_2_301, i64* %PC, align 8
%var_2_302 = inttoptr i64 %var_2_300 to i64*
%var_2_303 = load i64, i64* %var_2_302, align 8
store i64 %var_2_303, i64* %var_2_1828, align 1
store double 0.000000e+00, double* %var_2_1830, align 1
; Matched:%var_2_782:  %var_2_782 = add i64 %var_2_743, -112
; %var_2_304 = add i64 %var_2_265, -112
; Matched:%var_2_1919:  %var_2_1919 = add i64 %var_2_1899, 23
; %var_2_305 = add i64 %var_2_267, 23
; Matched:\<badref\>:  store i64 %var_2_1919, i64* %var_2_3, align 8
; store i64 %var_2_305, i64* %PC, align 8
; Matched:%var_2_784:  %var_2_784 = inttoptr i64 %var_2_782 to i64*
; %var_2_306 = inttoptr i64 %var_2_304 to i64*
; Matched:\<badref\>:  store i64 %var_2_781, i64* %var_2_784, align 8
; store i64 %var_2_303, i64* %var_2_306, align 8
%var_2_307 = load i64, i64* %RBP, align 8
%var_2_308 = add i64 %var_2_307, -8
%var_2_309 = load i64, i64* %PC, align 8
; Matched:%var_2_700:  %var_2_700 = add i64 %var_2_699, 4
; %var_2_310 = add i64 %var_2_309, 4
; Matched:\<badref\>:  store i64 %var_2_681, i64* %var_2_3, align 8
; store i64 %var_2_310, i64* %PC, align 8
%var_2_311 = inttoptr i64 %var_2_308 to i64*
%var_2_312 = load i64, i64* %var_2_311, align 8
; Matched:\<badref\>:  store i64 %var_2_683, i64* %RCX.i788, align 8
; store i64 %var_2_312, i64* %RCX, align 8
%var_2_313 = add i64 %var_2_307, -44
; Matched:%var_2_66:  %var_2_66 = add i64 %var_2_65, 7
; %var_2_314 = add i64 %var_2_309, 7
; Matched:\<badref\>:  store i64 %var_2_1467, i64* %var_2_3, align 8
; store i64 %var_2_314, i64* %PC, align 8
%var_2_315 = inttoptr i64 %var_2_313 to i32*
%var_2_316 = load i32, i32* %var_2_315, align 4
%var_2_317 = add i32 %var_2_316, 1
; Matched:%var_2_796:  %var_2_796 = zext i32 %var_2_795 to i64
; %var_2_318 = zext i32 %var_2_317 to i64
; Matched:\<badref\>:  store i64 %var_2_873, i64* %RAX.i798, align 8
; store i64 %var_2_318, i64* %RAX, align 8
; Matched:%var_2_874:  %var_2_874 = icmp eq i32 %var_2_871, -1
; %var_2_319 = icmp eq i32 %var_2_316, -1
; Matched:%var_2_875:  %var_2_875 = icmp eq i32 %var_2_872, 0
; %var_2_320 = icmp eq i32 %var_2_317, 0
; Matched:%var_2_799:  %var_2_799 = or i1 %var_2_797, %var_2_798
; %var_2_321 = or i1 %var_2_319, %var_2_320
; Matched:%var_2_877:  %var_2_877 = zext i1 %var_2_876 to i8
; %var_2_322 = zext i1 %var_2_321 to i8
; Matched:\<badref\>:  store i8 %var_2_877, i8* %var_2_14, align 1
; store i8 %var_2_322, i8* %var_2_17, align 1
; Matched:%var_2_878:  %var_2_878 = and i32 %var_2_872, 255
; %var_2_323 = and i32 %var_2_317, 255
; Matched:%var_2_802:  %var_2_802 = tail call i32 @llvm.ctpop.i32(i32 %var_2_801)
; %var_2_324 = tail call i32 @llvm.ctpop.i32(i32 %var_2_323) #14
; Matched:%var_2_880:  %var_2_880 = trunc i32 %var_2_879 to i8
; %var_2_325 = trunc i32 %var_2_324 to i8
; Matched:%var_2_881:  %var_2_881 = and i8 %var_2_880, 1
; %var_2_326 = and i8 %var_2_325, 1
; Matched:%var_2_882:  %var_2_882 = xor i8 %var_2_881, 1
; %var_2_327 = xor i8 %var_2_326, 1
; Matched:\<badref\>:  store i8 %var_2_805, i8* %var_2_21, align 1
; store i8 %var_2_327, i8* %var_2_24, align 1
; Matched:%var_2_883:  %var_2_883 = xor i32 %var_2_872, %var_2_871
; %var_2_328 = xor i32 %var_2_317, %var_2_316
; Matched:%var_2_884:  %var_2_884 = lshr i32 %var_2_883, 4
; %var_2_329 = lshr i32 %var_2_328, 4
; Matched:%var_2_885:  %var_2_885 = trunc i32 %var_2_884 to i8
; %var_2_330 = trunc i32 %var_2_329 to i8
; Matched:%var_2_809:  %var_2_809 = and i8 %var_2_808, 1
; %var_2_331 = and i8 %var_2_330, 1
; Matched:\<badref\>:  store i8 %var_2_886, i8* %var_2_26, align 1
; store i8 %var_2_331, i8* %var_2_29, align 1
; Matched:%var_2_887:  %var_2_887 = zext i1 %var_2_875 to i8
; %var_2_332 = zext i1 %var_2_320 to i8
; Matched:\<badref\>:  store i8 %var_2_887, i8* %var_2_29, align 1
; store i8 %var_2_332, i8* %var_2_32, align 1
; Matched:%var_2_811:  %var_2_811 = lshr i32 %var_2_795, 31
; %var_2_333 = lshr i32 %var_2_317, 31
; Matched:%var_2_889:  %var_2_889 = trunc i32 %var_2_888 to i8
; %var_2_334 = trunc i32 %var_2_333 to i8
; Matched:\<badref\>:  store i8 %var_2_889, i8* %var_2_32, align 1
; store i8 %var_2_334, i8* %var_2_35, align 1
; Matched:%var_2_890:  %var_2_890 = lshr i32 %var_2_871, 31
; %var_2_335 = lshr i32 %var_2_316, 31
; Matched:%var_2_814:  %var_2_814 = xor i32 %var_2_811, %var_2_813
; %var_2_336 = xor i32 %var_2_333, %var_2_335
; Matched:%var_2_892:  %var_2_892 = add nuw nsw i32 %var_2_891, %var_2_888
; %var_2_337 = add nuw nsw i32 %var_2_336, %var_2_333
; Matched:%var_2_893:  %var_2_893 = icmp eq i32 %var_2_892, 2
; %var_2_338 = icmp eq i32 %var_2_337, 2
; Matched:%var_2_894:  %var_2_894 = zext i1 %var_2_893 to i8
; %var_2_339 = zext i1 %var_2_338 to i8
; Matched:\<badref\>:  store i8 %var_2_817, i8* %var_2_38, align 1
; store i8 %var_2_339, i8* %var_2_41, align 1
%var_2_340 = sext i32 %var_2_317 to i64
; Matched:\<badref\>:  store i64 %var_2_895, i64* %RDX.i786, align 8
; store i64 %var_2_340, i64* %RDX, align 8
%var_2_341 = shl nsw i64 %var_2_340, 3
%var_2_342 = add i64 %var_2_312, %var_2_341
; Matched:%var_2_779:  %var_2_779 = add i64 %var_2_745, 18
; %var_2_343 = add i64 %var_2_309, 18
; Matched:\<badref\>:  store i64 %var_2_779, i64* %var_2_3, align 8
; store i64 %var_2_343, i64* %PC, align 8
%var_2_344 = inttoptr i64 %var_2_342 to i64*
%var_2_345 = load i64, i64* %var_2_344, align 8
store i64 %var_2_345, i64* %var_2_1828, align 1
store double 0.000000e+00, double* %var_2_1830, align 1
; Matched:%var_2_1807:  %var_2_1807 = add i64 %var_2_1787, 22
; %var_2_346 = add i64 %var_2_309, 22
; Matched:\<badref\>:  store i64 %var_2_824, i64* %var_2_3, align 8
; store i64 %var_2_346, i64* %PC, align 8
; Matched:%var_2_1728:  %var_2_1728 = load i64, i64* %var_2_1727, align 8
; %var_2_347 = load i64, i64* %var_2_311, align 8
; Matched:\<badref\>:  store i64 %var_2_1728, i64* %RCX.i788, align 8
; store i64 %var_2_347, i64* %RCX, align 8
; Matched:%var_2_826:  %var_2_826 = add i64 %var_2_785, -36
; %var_2_348 = add i64 %var_2_307, -36
; Matched:%var_2_827:  %var_2_827 = add i64 %var_2_787, 25
; %var_2_349 = add i64 %var_2_309, 25
; Matched:\<badref\>:  store i64 %var_2_827, i64* %var_2_3, align 8
; store i64 %var_2_349, i64* %PC, align 8
; Matched:%var_2_751:  %var_2_751 = inttoptr i64 %var_2_749 to i32*
; %var_2_350 = inttoptr i64 %var_2_348 to i32*
; Matched:%var_2_829:  %var_2_829 = load i32, i32* %var_2_828, align 4
; %var_2_351 = load i32, i32* %var_2_350, align 4
; Matched:%var_2_753:  %var_2_753 = add i32 %var_2_752, 1
; %var_2_352 = add i32 %var_2_351, 1
; Matched:%var_2_754:  %var_2_754 = zext i32 %var_2_753 to i64
; %var_2_353 = zext i32 %var_2_352 to i64
; Matched:\<badref\>:  store i64 %var_2_754, i64* %RAX.i798, align 8
; store i64 %var_2_353, i64* %RAX, align 8
; Matched:%var_2_832:  %var_2_832 = icmp eq i32 %var_2_829, -1
; %var_2_354 = icmp eq i32 %var_2_351, -1
; Matched:%var_2_756:  %var_2_756 = icmp eq i32 %var_2_753, 0
; %var_2_355 = icmp eq i32 %var_2_352, 0
; Matched:%var_2_757:  %var_2_757 = or i1 %var_2_755, %var_2_756
; %var_2_356 = or i1 %var_2_354, %var_2_355
; Matched:%var_2_758:  %var_2_758 = zext i1 %var_2_757 to i8
; %var_2_357 = zext i1 %var_2_356 to i8
; Matched:\<badref\>:  store i8 %var_2_835, i8* %var_2_14, align 1
; store i8 %var_2_357, i8* %var_2_17, align 1
; Matched:%var_2_759:  %var_2_759 = and i32 %var_2_753, 255
; %var_2_358 = and i32 %var_2_352, 255
; Matched:%var_2_760:  %var_2_760 = tail call i32 @llvm.ctpop.i32(i32 %var_2_759)
; %var_2_359 = tail call i32 @llvm.ctpop.i32(i32 %var_2_358) #14
; Matched:%var_2_761:  %var_2_761 = trunc i32 %var_2_760 to i8
; %var_2_360 = trunc i32 %var_2_359 to i8
; Matched:%var_2_839:  %var_2_839 = and i8 %var_2_838, 1
; %var_2_361 = and i8 %var_2_360, 1
; Matched:%var_2_763:  %var_2_763 = xor i8 %var_2_762, 1
; %var_2_362 = xor i8 %var_2_361, 1
; Matched:\<badref\>:  store i8 %var_2_763, i8* %var_2_21, align 1
; store i8 %var_2_362, i8* %var_2_24, align 1
; Matched:%var_2_764:  %var_2_764 = xor i32 %var_2_753, %var_2_752
; %var_2_363 = xor i32 %var_2_352, %var_2_351
; Matched:%var_2_842:  %var_2_842 = lshr i32 %var_2_841, 4
; %var_2_364 = lshr i32 %var_2_363, 4
; Matched:%var_2_766:  %var_2_766 = trunc i32 %var_2_765 to i8
; %var_2_365 = trunc i32 %var_2_364 to i8
; Matched:%var_2_767:  %var_2_767 = and i8 %var_2_766, 1
; %var_2_366 = and i8 %var_2_365, 1
; Matched:\<badref\>:  store i8 %var_2_767, i8* %var_2_26, align 1
; store i8 %var_2_366, i8* %var_2_29, align 1
; Matched:%var_2_845:  %var_2_845 = zext i1 %var_2_833 to i8
; %var_2_367 = zext i1 %var_2_355 to i8
; Matched:\<badref\>:  store i8 %var_2_768, i8* %var_2_29, align 1
; store i8 %var_2_367, i8* %var_2_32, align 1
; Matched:%var_2_769:  %var_2_769 = lshr i32 %var_2_753, 31
; %var_2_368 = lshr i32 %var_2_352, 31
; Matched:%var_2_770:  %var_2_770 = trunc i32 %var_2_769 to i8
; %var_2_369 = trunc i32 %var_2_368 to i8
; Matched:\<badref\>:  store i8 %var_2_847, i8* %var_2_32, align 1
; store i8 %var_2_369, i8* %var_2_35, align 1
; Matched:%var_2_771:  %var_2_771 = lshr i32 %var_2_752, 31
; %var_2_370 = lshr i32 %var_2_351, 31
; Matched:%var_2_772:  %var_2_772 = xor i32 %var_2_769, %var_2_771
; %var_2_371 = xor i32 %var_2_368, %var_2_370
; Matched:%var_2_773:  %var_2_773 = add nuw nsw i32 %var_2_772, %var_2_769
; %var_2_372 = add nuw nsw i32 %var_2_371, %var_2_368
; Matched:%var_2_851:  %var_2_851 = icmp eq i32 %var_2_850, 2
; %var_2_373 = icmp eq i32 %var_2_372, 2
; Matched:%var_2_775:  %var_2_775 = zext i1 %var_2_774 to i8
; %var_2_374 = zext i1 %var_2_373 to i8
; Matched:\<badref\>:  store i8 %var_2_775, i8* %var_2_38, align 1
; store i8 %var_2_374, i8* %var_2_41, align 1
; Matched:%var_2_776:  %var_2_776 = sext i32 %var_2_753 to i64
; %var_2_375 = sext i32 %var_2_352 to i64
; Matched:\<badref\>:  store i64 %var_2_853, i64* %RDX.i786, align 8
; store i64 %var_2_375, i64* %RDX, align 8
; Matched:%var_2_854:  %var_2_854 = shl nsw i64 %var_2_853, 3
; %var_2_376 = shl nsw i64 %var_2_375, 3
; Matched:%var_2_855:  %var_2_855 = add i64 %var_2_825, %var_2_854
; %var_2_377 = add i64 %var_2_347, %var_2_376
; Matched:%var_2_856:  %var_2_856 = add i64 %var_2_787, 36
; %var_2_378 = add i64 %var_2_309, 36
; Matched:\<badref\>:  store i64 %var_2_856, i64* %var_2_3, align 8
; store i64 %var_2_378, i64* %PC, align 8
; Matched:%var_2_857:  %var_2_857 = inttoptr i64 %var_2_855 to i64*
; %var_2_379 = inttoptr i64 %var_2_377 to i64*
; Matched:\<badref\>:  store i64 %var_2_823, i64* %var_2_857, align 8
; store i64 %var_2_345, i64* %var_2_379, align 8
%var_2_380 = load i64, i64* %RBP, align 8
%var_2_381 = add i64 %var_2_380, -112
%var_2_382 = load i64, i64* %PC, align 8
; Matched:%var_2_1432:  %var_2_1432 = add i64 %var_2_1431, 5
; %var_2_383 = add i64 %var_2_382, 5
; Matched:\<badref\>:  store i64 %var_2_2074, i64* %var_2_3, align 8
; store i64 %var_2_383, i64* %PC, align 8
%var_2_384 = inttoptr i64 %var_2_381 to i64*
%var_2_385 = load i64, i64* %var_2_384, align 8
; Matched:\<badref\>:  store i64 %var_2_1902, i64* %var_2_225, align 1
; store i64 %var_2_385, i64* %var_2_1828, align 1
store double 0.000000e+00, double* %var_2_1830, align 1
; Matched:%var_2_730:  %var_2_730 = add i64 %var_2_724, -8
; %var_2_386 = add i64 %var_2_380, -8
%var_2_387 = add i64 %var_2_382, 9
store i64 %var_2_387, i64* %PC, align 8
; Matched:%var_2_732:  %var_2_732 = inttoptr i64 %var_2_730 to i64*
; %var_2_388 = inttoptr i64 %var_2_386 to i64*
; Matched:%var_2_1808:  %var_2_1808 = load i64, i64* %var_2_1789, align 8
; %var_2_389 = load i64, i64* %var_2_388, align 8
; Matched:\<badref\>:  store i64 %var_2_1769, i64* %RCX.i788, align 8
; store i64 %var_2_389, i64* %RCX, align 8
; Matched:%var_2_791:  %var_2_791 = add i64 %var_2_785, -44
; %var_2_390 = add i64 %var_2_380, -44
; Matched:%var_2_1660:  %var_2_1660 = add i64 %var_2_1655, 12
; %var_2_391 = add i64 %var_2_382, 12
; Matched:\<badref\>:  store i64 %var_2_1660, i64* %var_2_3, align 8
; store i64 %var_2_391, i64* %PC, align 8
; Matched:%var_2_793:  %var_2_793 = inttoptr i64 %var_2_791 to i32*
; %var_2_392 = inttoptr i64 %var_2_390 to i32*
; Matched:%var_2_794:  %var_2_794 = load i32, i32* %var_2_793, align 4
; %var_2_393 = load i32, i32* %var_2_392, align 4
; Matched:%var_2_795:  %var_2_795 = add i32 %var_2_794, 1
; %var_2_394 = add i32 %var_2_393, 1
; Matched:%var_2_873:  %var_2_873 = zext i32 %var_2_872 to i64
; %var_2_395 = zext i32 %var_2_394 to i64
; Matched:\<badref\>:  store i64 %var_2_796, i64* %RAX.i798, align 8
; store i64 %var_2_395, i64* %RAX, align 8
; Matched:%var_2_797:  %var_2_797 = icmp eq i32 %var_2_794, -1
; %var_2_396 = icmp eq i32 %var_2_393, -1
; Matched:%var_2_798:  %var_2_798 = icmp eq i32 %var_2_795, 0
; %var_2_397 = icmp eq i32 %var_2_394, 0
; Matched:%var_2_876:  %var_2_876 = or i1 %var_2_874, %var_2_875
; %var_2_398 = or i1 %var_2_396, %var_2_397
; Matched:%var_2_800:  %var_2_800 = zext i1 %var_2_799 to i8
; %var_2_399 = zext i1 %var_2_398 to i8
; Matched:\<badref\>:  store i8 %var_2_800, i8* %var_2_14, align 1
; store i8 %var_2_399, i8* %var_2_17, align 1
; Matched:%var_2_801:  %var_2_801 = and i32 %var_2_795, 255
; %var_2_400 = and i32 %var_2_394, 255
; Matched:%var_2_879:  %var_2_879 = tail call i32 @llvm.ctpop.i32(i32 %var_2_878)
; %var_2_401 = tail call i32 @llvm.ctpop.i32(i32 %var_2_400) #14
; Matched:%var_2_803:  %var_2_803 = trunc i32 %var_2_802 to i8
; %var_2_402 = trunc i32 %var_2_401 to i8
; Matched:%var_2_804:  %var_2_804 = and i8 %var_2_803, 1
; %var_2_403 = and i8 %var_2_402, 1
; Matched:%var_2_805:  %var_2_805 = xor i8 %var_2_804, 1
; %var_2_404 = xor i8 %var_2_403, 1
; Matched:\<badref\>:  store i8 %var_2_882, i8* %var_2_21, align 1
; store i8 %var_2_404, i8* %var_2_24, align 1
; Matched:%var_2_806:  %var_2_806 = xor i32 %var_2_795, %var_2_794
; %var_2_405 = xor i32 %var_2_394, %var_2_393
; Matched:%var_2_807:  %var_2_807 = lshr i32 %var_2_806, 4
; %var_2_406 = lshr i32 %var_2_405, 4
; Matched:%var_2_808:  %var_2_808 = trunc i32 %var_2_807 to i8
; %var_2_407 = trunc i32 %var_2_406 to i8
; Matched:%var_2_886:  %var_2_886 = and i8 %var_2_885, 1
; %var_2_408 = and i8 %var_2_407, 1
; Matched:\<badref\>:  store i8 %var_2_809, i8* %var_2_26, align 1
; store i8 %var_2_408, i8* %var_2_29, align 1
; Matched:%var_2_810:  %var_2_810 = zext i1 %var_2_798 to i8
; %var_2_409 = zext i1 %var_2_397 to i8
; Matched:\<badref\>:  store i8 %var_2_810, i8* %var_2_29, align 1
; store i8 %var_2_409, i8* %var_2_32, align 1
; Matched:%var_2_888:  %var_2_888 = lshr i32 %var_2_872, 31
; %var_2_410 = lshr i32 %var_2_394, 31
; Matched:%var_2_812:  %var_2_812 = trunc i32 %var_2_811 to i8
; %var_2_411 = trunc i32 %var_2_410 to i8
; Matched:\<badref\>:  store i8 %var_2_812, i8* %var_2_32, align 1
; store i8 %var_2_411, i8* %var_2_35, align 1
; Matched:%var_2_813:  %var_2_813 = lshr i32 %var_2_794, 31
; %var_2_412 = lshr i32 %var_2_393, 31
; Matched:%var_2_891:  %var_2_891 = xor i32 %var_2_888, %var_2_890
; %var_2_413 = xor i32 %var_2_410, %var_2_412
; Matched:%var_2_815:  %var_2_815 = add nuw nsw i32 %var_2_814, %var_2_811
; %var_2_414 = add nuw nsw i32 %var_2_413, %var_2_410
; Matched:%var_2_816:  %var_2_816 = icmp eq i32 %var_2_815, 2
; %var_2_415 = icmp eq i32 %var_2_414, 2
; Matched:%var_2_817:  %var_2_817 = zext i1 %var_2_816 to i8
; %var_2_416 = zext i1 %var_2_415 to i8
; Matched:\<badref\>:  store i8 %var_2_894, i8* %var_2_38, align 1
; store i8 %var_2_416, i8* %var_2_41, align 1
; Matched:%var_2_818:  %var_2_818 = sext i32 %var_2_795 to i64
; %var_2_417 = sext i32 %var_2_394 to i64
; Matched:\<badref\>:  store i64 %var_2_818, i64* %RDX.i786, align 8
; store i64 %var_2_417, i64* %RDX, align 8
; Matched:%var_2_896:  %var_2_896 = shl nsw i64 %var_2_895, 3
; %var_2_418 = shl nsw i64 %var_2_417, 3
; Matched:%var_2_897:  %var_2_897 = add i64 %var_2_867, %var_2_896
; %var_2_419 = add i64 %var_2_389, %var_2_418
; Matched:%var_2_1961:  %var_2_1961 = add i64 %var_2_1923, 23
; %var_2_420 = add i64 %var_2_382, 23
; Matched:\<badref\>:  store i64 %var_2_1961, i64* %var_2_3, align 8
; store i64 %var_2_420, i64* %PC, align 8
; Matched:%var_2_899:  %var_2_899 = inttoptr i64 %var_2_897 to i64*
; %var_2_421 = inttoptr i64 %var_2_419 to i64*
; Matched:\<badref\>:  store i64 %var_2_863, i64* %var_2_899, align 8
; store i64 %var_2_385, i64* %var_2_421, align 8
%var_2_422 = load i64, i64* %RBP, align 8
; Matched:%var_2_402:  %var_2_402 = add i64 %var_2_401, -52
; %var_2_423 = add i64 %var_2_422, -52
%var_2_424 = load i64, i64* %PC, align 8
; Matched:%var_2_1615:  %var_2_1615 = add i64 %var_2_1614, 3
; %var_2_425 = add i64 %var_2_424, 3
; Matched:\<badref\>:  store i64 %var_2_903, i64* %var_2_3, align 8
; store i64 %var_2_425, i64* %PC, align 8
; Matched:%var_2_405:  %var_2_405 = inttoptr i64 %var_2_402 to i32*
; %var_2_426 = inttoptr i64 %var_2_423 to i32*
; Matched:%var_2_905:  %var_2_905 = load i32, i32* %var_2_904, align 4
; %var_2_427 = load i32, i32* %var_2_426, align 4
; Matched:%var_2_906:  %var_2_906 = zext i32 %var_2_905 to i64
; %var_2_428 = zext i32 %var_2_427 to i64
; Matched:\<badref\>:  store i64 %var_2_407, i64* %RAX.i798, align 8
; store i64 %var_2_428, i64* %RAX, align 8
; Matched:%var_2_907:  %var_2_907 = add i64 %var_2_900, -36
; %var_2_429 = add i64 %var_2_422, -36
; Matched:%var_2_908:  %var_2_908 = add i64 %var_2_902, 6
; %var_2_430 = add i64 %var_2_424, 6
; Matched:\<badref\>:  store i64 %var_2_908, i64* %var_2_3, align 8
; store i64 %var_2_430, i64* %PC, align 8
; Matched:%var_2_909:  %var_2_909 = inttoptr i64 %var_2_907 to i32*
; %var_2_431 = inttoptr i64 %var_2_429 to i32*
; Matched:%var_2_910:  %var_2_910 = load i32, i32* %var_2_909, align 4
; %var_2_432 = load i32, i32* %var_2_431, align 4
; Matched:%var_2_911:  %var_2_911 = add i32 %var_2_910, %var_2_905
; %var_2_433 = add i32 %var_2_432, %var_2_427
; Matched:%var_2_912:  %var_2_912 = zext i32 %var_2_911 to i64
; %var_2_434 = zext i32 %var_2_433 to i64
; Matched:\<badref\>:  store i64 %var_2_912, i64* %RAX.i798, align 8
; store i64 %var_2_434, i64* %RAX, align 8
; Matched:%var_2_913:  %var_2_913 = icmp ult i32 %var_2_911, %var_2_905
; %var_2_435 = icmp ult i32 %var_2_433, %var_2_427
; Matched:%var_2_914:  %var_2_914 = icmp ult i32 %var_2_911, %var_2_910
; %var_2_436 = icmp ult i32 %var_2_433, %var_2_432
; Matched:%var_2_915:  %var_2_915 = or i1 %var_2_913, %var_2_914
; %var_2_437 = or i1 %var_2_435, %var_2_436
; Matched:%var_2_916:  %var_2_916 = zext i1 %var_2_915 to i8
; %var_2_438 = zext i1 %var_2_437 to i8
; Matched:\<badref\>:  store i8 %var_2_916, i8* %var_2_14, align 1
; store i8 %var_2_438, i8* %var_2_17, align 1
; Matched:%var_2_917:  %var_2_917 = and i32 %var_2_911, 255
; %var_2_439 = and i32 %var_2_433, 255
; Matched:%var_2_918:  %var_2_918 = tail call i32 @llvm.ctpop.i32(i32 %var_2_917)
; %var_2_440 = tail call i32 @llvm.ctpop.i32(i32 %var_2_439) #14
; Matched:%var_2_919:  %var_2_919 = trunc i32 %var_2_918 to i8
; %var_2_441 = trunc i32 %var_2_440 to i8
; Matched:%var_2_920:  %var_2_920 = and i8 %var_2_919, 1
; %var_2_442 = and i8 %var_2_441, 1
; Matched:%var_2_921:  %var_2_921 = xor i8 %var_2_920, 1
; %var_2_443 = xor i8 %var_2_442, 1
; Matched:\<badref\>:  store i8 %var_2_921, i8* %var_2_21, align 1
; store i8 %var_2_443, i8* %var_2_24, align 1
; Matched:%var_2_922:  %var_2_922 = xor i32 %var_2_910, %var_2_905
; %var_2_444 = xor i32 %var_2_432, %var_2_427
; Matched:%var_2_923:  %var_2_923 = xor i32 %var_2_922, %var_2_911
; %var_2_445 = xor i32 %var_2_444, %var_2_433
; Matched:%var_2_924:  %var_2_924 = lshr i32 %var_2_923, 4
; %var_2_446 = lshr i32 %var_2_445, 4
; Matched:%var_2_925:  %var_2_925 = trunc i32 %var_2_924 to i8
; %var_2_447 = trunc i32 %var_2_446 to i8
; Matched:%var_2_926:  %var_2_926 = and i8 %var_2_925, 1
; %var_2_448 = and i8 %var_2_447, 1
; Matched:\<badref\>:  store i8 %var_2_926, i8* %var_2_26, align 1
; store i8 %var_2_448, i8* %var_2_29, align 1
; Matched:%var_2_927:  %var_2_927 = icmp eq i32 %var_2_911, 0
; %var_2_449 = icmp eq i32 %var_2_433, 0
; Matched:%var_2_928:  %var_2_928 = zext i1 %var_2_927 to i8
; %var_2_450 = zext i1 %var_2_449 to i8
; Matched:\<badref\>:  store i8 %var_2_928, i8* %var_2_29, align 1
; store i8 %var_2_450, i8* %var_2_32, align 1
; Matched:%var_2_929:  %var_2_929 = lshr i32 %var_2_911, 31
; %var_2_451 = lshr i32 %var_2_433, 31
; Matched:%var_2_930:  %var_2_930 = trunc i32 %var_2_929 to i8
; %var_2_452 = trunc i32 %var_2_451 to i8
; Matched:\<badref\>:  store i8 %var_2_930, i8* %var_2_32, align 1
; store i8 %var_2_452, i8* %var_2_35, align 1
; Matched:%var_2_931:  %var_2_931 = lshr i32 %var_2_905, 31
; %var_2_453 = lshr i32 %var_2_427, 31
; Matched:%var_2_932:  %var_2_932 = lshr i32 %var_2_910, 31
; %var_2_454 = lshr i32 %var_2_432, 31
; Matched:%var_2_933:  %var_2_933 = xor i32 %var_2_929, %var_2_931
; %var_2_455 = xor i32 %var_2_451, %var_2_453
; Matched:%var_2_934:  %var_2_934 = xor i32 %var_2_929, %var_2_932
; %var_2_456 = xor i32 %var_2_451, %var_2_454
; Matched:%var_2_935:  %var_2_935 = add nuw nsw i32 %var_2_933, %var_2_934
; %var_2_457 = add nuw nsw i32 %var_2_455, %var_2_456
; Matched:%var_2_936:  %var_2_936 = icmp eq i32 %var_2_935, 2
; %var_2_458 = icmp eq i32 %var_2_457, 2
; Matched:%var_2_937:  %var_2_937 = zext i1 %var_2_936 to i8
; %var_2_459 = zext i1 %var_2_458 to i8
; Matched:\<badref\>:  store i8 %var_2_937, i8* %var_2_38, align 1
; store i8 %var_2_459, i8* %var_2_41, align 1
%var_2_460 = add i64 %var_2_424, 9
store i64 %var_2_460, i64* %PC, align 8
; Matched:\<badref\>:  store i32 %var_2_911, i32* %var_2_909, align 4
; store i32 %var_2_433, i32* %var_2_431, align 4
; Matched:%var_2_939:  %var_2_939 = load i64, i64* %var_2_3, align 8
; %var_2_461 = load i64, i64* %PC, align 8
; Matched:%var_2_940:  %var_2_940 = add i64 %var_2_939, -177
; %var_2_462 = add i64 %var_2_461, -177
; Matched:\<badref\>:  store i64 %var_2_940, i64* %var_2_3, align 8
; store i64 %var_2_462, i64* %PC, align 8
  br label %block_400c67

block_401066:                                     ; preds = %block_400bd0
; Matched:%var_2_2209:  %var_2_2209 = load i64, i64* %var_2_6, align 8
; %var_2_463 = load i64, i64* %RSP, align 8
; Matched:%var_2_2210:  %var_2_2210 = add i64 %var_2_2209, 192
; %var_2_464 = add i64 %var_2_463, 192
; Matched:\<badref\>:  store i64 %var_2_2210, i64* %var_2_6, align 8
; store i64 %var_2_464, i64* %RSP, align 8
; Matched:%var_2_2211:  %var_2_2211 = icmp ugt i64 %var_2_2209, -193
; %var_2_465 = icmp ugt i64 %var_2_463, -193
; Matched:%var_2_2212:  %var_2_2212 = zext i1 %var_2_2211 to i8
; %var_2_466 = zext i1 %var_2_465 to i8
; Matched:\<badref\>:  store i8 %var_2_2212, i8* %var_2_14, align 1
; store i8 %var_2_466, i8* %var_2_17, align 1
; Matched:%var_2_2213:  %var_2_2213 = trunc i64 %var_2_2210 to i32
; %var_2_467 = trunc i64 %var_2_464 to i32
; Matched:%var_2_2214:  %var_2_2214 = and i32 %var_2_2213, 255
; %var_2_468 = and i32 %var_2_467, 255
; Matched:%var_2_2215:  %var_2_2215 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2214)
; %var_2_469 = tail call i32 @llvm.ctpop.i32(i32 %var_2_468) #14
; Matched:%var_2_2216:  %var_2_2216 = trunc i32 %var_2_2215 to i8
; %var_2_470 = trunc i32 %var_2_469 to i8
; Matched:%var_2_2217:  %var_2_2217 = and i8 %var_2_2216, 1
; %var_2_471 = and i8 %var_2_470, 1
; Matched:%var_2_2218:  %var_2_2218 = xor i8 %var_2_2217, 1
; %var_2_472 = xor i8 %var_2_471, 1
; Matched:\<badref\>:  store i8 %var_2_2218, i8* %var_2_21, align 1
; store i8 %var_2_472, i8* %var_2_24, align 1
; Matched:%var_2_2219:  %var_2_2219 = xor i64 %var_2_2210, %var_2_2209
; %var_2_473 = xor i64 %var_2_464, %var_2_463
; Matched:%var_2_2220:  %var_2_2220 = lshr i64 %var_2_2219, 4
; %var_2_474 = lshr i64 %var_2_473, 4
; Matched:%var_2_2221:  %var_2_2221 = trunc i64 %var_2_2220 to i8
; %var_2_475 = trunc i64 %var_2_474 to i8
; Matched:%var_2_2222:  %var_2_2222 = and i8 %var_2_2221, 1
; %var_2_476 = and i8 %var_2_475, 1
; Matched:\<badref\>:  store i8 %var_2_2222, i8* %var_2_26, align 1
; store i8 %var_2_476, i8* %var_2_29, align 1
; Matched:%var_2_2223:  %var_2_2223 = icmp eq i64 %var_2_2210, 0
; %var_2_477 = icmp eq i64 %var_2_464, 0
; Matched:%var_2_2224:  %var_2_2224 = zext i1 %var_2_2223 to i8
; %var_2_478 = zext i1 %var_2_477 to i8
; Matched:\<badref\>:  store i8 %var_2_2224, i8* %var_2_29, align 1
; store i8 %var_2_478, i8* %var_2_32, align 1
; Matched:%var_2_2225:  %var_2_2225 = lshr i64 %var_2_2210, 63
; %var_2_479 = lshr i64 %var_2_464, 63
; Matched:%var_2_2226:  %var_2_2226 = trunc i64 %var_2_2225 to i8
; %var_2_480 = trunc i64 %var_2_479 to i8
; Matched:\<badref\>:  store i8 %var_2_2226, i8* %var_2_32, align 1
; store i8 %var_2_480, i8* %var_2_35, align 1
; Matched:%var_2_2227:  %var_2_2227 = lshr i64 %var_2_2209, 63
; %var_2_481 = lshr i64 %var_2_463, 63
; Matched:%var_2_2228:  %var_2_2228 = xor i64 %var_2_2225, %var_2_2227
; %var_2_482 = xor i64 %var_2_479, %var_2_481
; Matched:%var_2_2229:  %var_2_2229 = add nuw nsw i64 %var_2_2228, %var_2_2225
; %var_2_483 = add nuw nsw i64 %var_2_482, %var_2_479
; Matched:%var_2_2230:  %var_2_2230 = icmp eq i64 %var_2_2229, 2
; %var_2_484 = icmp eq i64 %var_2_483, 2
; Matched:%var_2_2231:  %var_2_2231 = zext i1 %var_2_2230 to i8
; %var_2_485 = zext i1 %var_2_484 to i8
; Matched:\<badref\>:  store i8 %var_2_2231, i8* %var_2_38, align 1
; store i8 %var_2_485, i8* %var_2_41, align 1
; Matched:%var_2_2232:  %var_2_2232 = add i64 %var_2_259, 8
; %var_2_486 = add i64 %var_2_687, 8
; Matched:\<badref\>:  store i64 %var_2_2232, i64* %var_2_3, align 8
; store i64 %var_2_486, i64* %PC, align 8
; Matched:%var_2_2233:  %var_2_2233 = add i64 %var_2_2209, 200
; %var_2_487 = add i64 %var_2_463, 200
; Matched:%var_2_2234:  %var_2_2234 = inttoptr i64 %var_2_2210 to i64*
; %var_2_488 = inttoptr i64 %var_2_464 to i64*
; Matched:%var_2_2235:  %var_2_2235 = load i64, i64* %var_2_2234, align 8
; %var_2_489 = load i64, i64* %var_2_488, align 8
; Matched:\<badref\>:  store i64 %var_2_2235, i64* %RBP.i, align 8
; store i64 %var_2_489, i64* %RBP, align 8
; Matched:\<badref\>:  store i64 %var_2_2233, i64* %var_2_6, align 8
; store i64 %var_2_487, i64* %RSP, align 8
; Matched:%var_2_2236:  %var_2_2236 = add i64 %var_2_259, 9
; %var_2_490 = add i64 %var_2_687, 9
; Matched:\<badref\>:  store i64 %var_2_2236, i64* %var_2_3, align 8
; store i64 %var_2_490, i64* %PC, align 8
; Matched:%var_2_2237:  %var_2_2237 = inttoptr i64 %var_2_2233 to i64*
; %var_2_491 = inttoptr i64 %var_2_487 to i64*
; Matched:%var_2_2238:  %var_2_2238 = load i64, i64* %var_2_2237, align 8
; %var_2_492 = load i64, i64* %var_2_491, align 8
; Matched:\<badref\>:  store i64 %var_2_2238, i64* %var_2_3, align 8
; store i64 %var_2_492, i64* %PC, align 8
; Matched:%var_2_2239:  %var_2_2239 = add i64 %var_2_2209, 208
; %var_2_493 = add i64 %var_2_463, 208
; Matched:\<badref\>:  store i64 %var_2_2239, i64* %var_2_6, align 8
; store i64 %var_2_493, i64* %RSP, align 8
  ret %struct.Memory* %MEMORY.1

block_400d63:                                     ; preds = %block_400d54, %block_400d3e
; Matched:%var_2_1086:  %var_2_1086 = phi i64 [ %.pre49, %block_400d54 ], [ %var_2_1037, %block_.L_400d3e ]
; %var_2_494 = phi i64 [ %.pre103, %block_400d54 ], [ %var_2_833, %block_400d3e ]
%var_2_495 = load i64, i64* %RBP, align 8
%var_2_496 = add i64 %var_2_495, -165
; Matched:%var_2_1089:  %var_2_1089 = add i64 %var_2_1086, 6
; %var_2_497 = add i64 %var_2_494, 6
; Matched:\<badref\>:  store i64 %var_2_1089, i64* %var_2_3, align 8
; store i64 %var_2_497, i64* %PC, align 8
%var_2_498 = inttoptr i64 %var_2_496 to i8*
%var_2_499 = load i8, i8* %var_2_498, align 1
; Matched:\<badref\>:  store i8 %var_2_1091, i8* %AL.i488, align 1
; store i8 %var_2_499, i8* %AL, align 1
%var_2_500 = and i8 %var_2_499, 1
store i8 0, i8* %var_2_17, align 1
; Matched:%var_2_1093:  %var_2_1093 = zext i8 %var_2_1092 to i32
; %var_2_501 = zext i8 %var_2_500 to i32
; Matched:%var_2_1094:  %var_2_1094 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1093)
; %var_2_502 = tail call i32 @llvm.ctpop.i32(i32 %var_2_501) #14
; Matched:%var_2_1095:  %var_2_1095 = trunc i32 %var_2_1094 to i8
; %var_2_503 = trunc i32 %var_2_502 to i8
; Matched:%var_2_1096:  %var_2_1096 = xor i8 %var_2_1095, 1
; %var_2_504 = xor i8 %var_2_503, 1
; Matched:\<badref\>:  store i8 %var_2_1096, i8* %var_2_21, align 1
; store i8 %var_2_504, i8* %var_2_24, align 1
%var_2_505 = xor i8 %var_2_500, 1
; Matched:\<badref\>:  store i8 %var_2_1097, i8* %var_2_29, align 1
; store i8 %var_2_505, i8* %var_2_32, align 1
store i8 0, i8* %var_2_35, align 1
store i8 0, i8* %var_2_41, align 1
store i8 0, i8* %var_2_29, align 1
%var_2_506 = icmp eq i8 %var_2_505, 0
; Matched:  %.v = select i1 %var_2_1098, i64 19, i64 14
; %.v = select i1 %var_2_506, i64 19, i64 14
; Matched:%var_2_1099:  %var_2_1099 = add i64 %var_2_1086, %.v
; %var_2_507 = add i64 %var_2_494, %.v
; Matched:\<badref\>:  store i64 %var_2_1099, i64* %var_2_3, align 8
; store i64 %var_2_507, i64* %PC, align 8
%var_2_508 = add i64 %var_2_495, -68
br i1 %var_2_506, label %block_400d76, label %block_400d71

block_401043:                                     ; preds = %block_400e84
; Matched:%var_2_1333:  %var_2_1333 = add i64 %var_2_1323, -64
; %var_2_509 = add i64 %var_2_2194, -64
; Matched:%var_2_2142:  %var_2_2142 = add i64 %var_2_1506, 3
; %var_2_510 = add i64 %var_2_2230, 3
; Matched:\<badref\>:  store i64 %var_2_2142, i64* %var_2_3, align 8
; store i64 %var_2_510, i64* %PC, align 8
; Matched:%var_2_2143:  %var_2_2143 = inttoptr i64 %var_2_2141 to i32*
; %var_2_511 = inttoptr i64 %var_2_509 to i32*
; Matched:%var_2_1973:  %var_2_1973 = load i32, i32* %var_2_1972, align 4
; %var_2_512 = load i32, i32* %var_2_511, align 4
; Matched:%var_2_1974:  %var_2_1974 = zext i32 %var_2_1973 to i64
; %var_2_513 = zext i32 %var_2_512 to i64
; Matched:\<badref\>:  store i64 %var_2_2145, i64* %RAX.i798, align 8
; store i64 %var_2_513, i64* %RAX, align 8
; Matched:%var_2_2146:  %var_2_2146 = add i64 %var_2_1506, 6
; %var_2_514 = add i64 %var_2_2230, 6
; Matched:\<badref\>:  store i64 %var_2_2146, i64* %var_2_3, align 8
; store i64 %var_2_514, i64* %PC, align 8
; Matched:\<badref\>:  store i32 %var_2_2144, i32* %var_2_1478, align 4
; store i32 %var_2_512, i32* %var_2_2202, align 4
%var_2_515 = load i64, i64* %PC, align 8
%var_2_516 = add i64 %var_2_515, -669
; Matched:\<badref\>:  store i64 %var_2_2148, i64* %var_2_3, align 8
; store i64 %var_2_516, i64* %PC, align 8
  br label %block_400dac

block_400fbe:                                     ; preds = %block_400eb0
; Matched:%var_2_2009:  %var_2_2009 = add i64 %var_2_1569, -28
; %var_2_517 = add i64 %var_2_869, -28
; Matched:%var_2_2010:  %var_2_2010 = add i64 %var_2_1605, 8
; %var_2_518 = add i64 %var_2_905, 8
; Matched:\<badref\>:  store i64 %var_2_2010, i64* %var_2_3, align 8
; store i64 %var_2_518, i64* %PC, align 8
; Matched:%var_2_943:  %var_2_943 = inttoptr i64 %var_2_941 to i32*
; %var_2_519 = inttoptr i64 %var_2_517 to i32*
; Matched:%var_2_944:  %var_2_944 = load i32, i32* %var_2_943, align 4
; %var_2_520 = load i32, i32* %var_2_519, align 4
; Matched:%var_2_945:  %var_2_945 = add i32 %var_2_944, 2
; %var_2_521 = add i32 %var_2_520, 2
; Matched:%var_2_946:  %var_2_946 = zext i32 %var_2_945 to i64
; %var_2_522 = zext i32 %var_2_521 to i64
; Matched:\<badref\>:  store i64 %var_2_946, i64* %RAX.i798, align 8
; store i64 %var_2_522, i64* %RAX, align 8
; Matched:%var_2_2015:  %var_2_2015 = icmp ugt i32 %var_2_2012, -3
; %var_2_523 = icmp ugt i32 %var_2_520, -3
; Matched:%var_2_948:  %var_2_948 = zext i1 %var_2_947 to i8
; %var_2_524 = zext i1 %var_2_523 to i8
; Matched:\<badref\>:  store i8 %var_2_2016, i8* %var_2_14, align 1
; store i8 %var_2_524, i8* %var_2_17, align 1
; Matched:%var_2_949:  %var_2_949 = and i32 %var_2_945, 255
; %var_2_525 = and i32 %var_2_521, 255
; Matched:%var_2_950:  %var_2_950 = tail call i32 @llvm.ctpop.i32(i32 %var_2_949)
; %var_2_526 = tail call i32 @llvm.ctpop.i32(i32 %var_2_525) #14
; Matched:%var_2_951:  %var_2_951 = trunc i32 %var_2_950 to i8
; %var_2_527 = trunc i32 %var_2_526 to i8
; Matched:%var_2_952:  %var_2_952 = and i8 %var_2_951, 1
; %var_2_528 = and i8 %var_2_527, 1
; Matched:%var_2_953:  %var_2_953 = xor i8 %var_2_952, 1
; %var_2_529 = xor i8 %var_2_528, 1
; Matched:\<badref\>:  store i8 %var_2_2021, i8* %var_2_21, align 1
; store i8 %var_2_529, i8* %var_2_24, align 1
; Matched:%var_2_954:  %var_2_954 = xor i32 %var_2_945, %var_2_944
; %var_2_530 = xor i32 %var_2_521, %var_2_520
; Matched:%var_2_2023:  %var_2_2023 = lshr i32 %var_2_2022, 4
; %var_2_531 = lshr i32 %var_2_530, 4
; Matched:%var_2_956:  %var_2_956 = trunc i32 %var_2_955 to i8
; %var_2_532 = trunc i32 %var_2_531 to i8
; Matched:%var_2_957:  %var_2_957 = and i8 %var_2_956, 1
; %var_2_533 = and i8 %var_2_532, 1
; Matched:\<badref\>:  store i8 %var_2_957, i8* %var_2_26, align 1
; store i8 %var_2_533, i8* %var_2_29, align 1
; Matched:%var_2_958:  %var_2_958 = icmp eq i32 %var_2_945, 0
; %var_2_534 = icmp eq i32 %var_2_521, 0
; Matched:%var_2_959:  %var_2_959 = zext i1 %var_2_958 to i8
; %var_2_535 = zext i1 %var_2_534 to i8
; Matched:\<badref\>:  store i8 %var_2_2027, i8* %var_2_29, align 1
; store i8 %var_2_535, i8* %var_2_32, align 1
; Matched:%var_2_960:  %var_2_960 = lshr i32 %var_2_945, 31
; %var_2_536 = lshr i32 %var_2_521, 31
; Matched:%var_2_2029:  %var_2_2029 = trunc i32 %var_2_2028 to i8
; %var_2_537 = trunc i32 %var_2_536 to i8
; Matched:\<badref\>:  store i8 %var_2_961, i8* %var_2_32, align 1
; store i8 %var_2_537, i8* %var_2_35, align 1
; Matched:%var_2_962:  %var_2_962 = lshr i32 %var_2_944, 31
; %var_2_538 = lshr i32 %var_2_520, 31
; Matched:%var_2_963:  %var_2_963 = xor i32 %var_2_960, %var_2_962
; %var_2_539 = xor i32 %var_2_536, %var_2_538
; Matched:%var_2_964:  %var_2_964 = add nuw nsw i32 %var_2_963, %var_2_960
; %var_2_540 = add nuw nsw i32 %var_2_539, %var_2_536
; Matched:%var_2_965:  %var_2_965 = icmp eq i32 %var_2_964, 2
; %var_2_541 = icmp eq i32 %var_2_540, 2
; Matched:%var_2_2034:  %var_2_2034 = zext i1 %var_2_2033 to i8
; %var_2_542 = zext i1 %var_2_541 to i8
; Matched:\<badref\>:  store i8 %var_2_966, i8* %var_2_38, align 1
; store i8 %var_2_542, i8* %var_2_41, align 1
; Matched:%var_2_2035:  %var_2_2035 = add i64 %var_2_1605, 14
; %var_2_543 = add i64 %var_2_905, 14
; Matched:\<badref\>:  store i64 %var_2_2035, i64* %var_2_3, align 8
; store i64 %var_2_543, i64* %PC, align 8
; Matched:\<badref\>:  store i32 %var_2_945, i32* %var_2_943, align 4
; store i32 %var_2_521, i32* %var_2_519, align 4
; Matched:%var_2_2036:  %var_2_2036 = load i64, i64* %var_2_3, align 8
; %var_2_544 = load i64, i64* %PC, align 8
; Matched:%var_2_2037:  %var_2_2037 = add i64 %var_2_2036, -310
; %var_2_545 = add i64 %var_2_544, -310
; Matched:\<badref\>:  store i64 %var_2_2037, i64* %var_2_3, align 8
; store i64 %var_2_545, i64* %PC, align 8
  br label %block_400e96

block_400c61:                                     ; preds = %block_400c4d
%var_2_546 = load i64, i64* %RBP, align 8
; Matched:%var_2_567:  %var_2_567 = add i64 %var_2_566, -28
; %var_2_547 = add i64 %var_2_546, -28
; Matched:%var_2_568:  %var_2_568 = add i64 %var_2_565, 3
; %var_2_548 = add i64 %var_2_793, 3
; Matched:\<badref\>:  store i64 %var_2_568, i64* %var_2_3, align 8
; store i64 %var_2_548, i64* %PC, align 8
; Matched:%var_2_569:  %var_2_569 = inttoptr i64 %var_2_567 to i32*
; %var_2_549 = inttoptr i64 %var_2_547 to i32*
; Matched:%var_2_1563:  %var_2_1563 = load i32, i32* %var_2_1562, align 4
; %var_2_550 = load i32, i32* %var_2_549, align 4
; Matched:%var_2_571:  %var_2_571 = zext i32 %var_2_570 to i64
; %var_2_551 = zext i32 %var_2_550 to i64
; Matched:\<badref\>:  store i64 %var_2_571, i64* %RAX.i798, align 8
; store i64 %var_2_551, i64* %RAX, align 8
; Matched:%var_2_572:  %var_2_572 = add i64 %var_2_566, -36
; %var_2_552 = add i64 %var_2_546, -36
; Matched:%var_2_573:  %var_2_573 = add i64 %var_2_565, 6
; %var_2_553 = add i64 %var_2_793, 6
; Matched:\<badref\>:  store i64 %var_2_573, i64* %var_2_3, align 8
; store i64 %var_2_553, i64* %PC, align 8
; Matched:%var_2_574:  %var_2_574 = inttoptr i64 %var_2_572 to i32*
; %var_2_554 = inttoptr i64 %var_2_552 to i32*
; Matched:\<badref\>:  store i32 %var_2_570, i32* %var_2_574, align 4
; store i32 %var_2_550, i32* %var_2_554, align 4
; Matched:  %.pre46 = load i64, i64* %var_2_3, align 8
; %.pre100 = load i64, i64* %PC, align 8
  br label %block_400c67

block_400fd1:                                     ; preds = %block_400e96
; Matched:%var_2_1654:  %var_2_1654 = add i64 %var_2_1653, -152
; %var_2_555 = add i64 %var_2_1772, -152
; Matched:%var_2_2039:  %var_2_2039 = add i64 %var_2_1558, 8
; %var_2_556 = add i64 %var_2_1771, 8
; Matched:\<badref\>:  store i64 %var_2_2039, i64* %var_2_3, align 8
; store i64 %var_2_556, i64* %PC, align 8
; Matched:%var_2_1723:  %var_2_1723 = inttoptr i64 %var_2_1720 to i64*
; %var_2_557 = inttoptr i64 %var_2_555 to i64*
; Matched:%var_2_1658:  %var_2_1658 = load i64, i64* %var_2_1657, align 8
; %var_2_558 = load i64, i64* %var_2_557, align 8
; Matched:\<badref\>:  store i64 %var_2_2041, i64* %var_2_225, align 1
; store i64 %var_2_558, i64* %var_2_1828, align 1
store double 0.000000e+00, double* %var_2_1830, align 1
; Matched:%var_2_2042:  %var_2_2042 = add i64 %var_2_1559, -160
; %var_2_559 = add i64 %var_2_1772, -160
; Matched:%var_2_2043:  %var_2_2043 = add i64 %var_2_1558, 16
; %var_2_560 = add i64 %var_2_1771, 16
; Matched:\<badref\>:  store i64 %var_2_2043, i64* %var_2_3, align 8
; store i64 %var_2_560, i64* %PC, align 8
; Matched:%var_2_2044:  %var_2_2044 = inttoptr i64 %var_2_2042 to i64*
; %var_2_561 = inttoptr i64 %var_2_559 to i64*
; Matched:\<badref\>:  store i64 %var_2_2041, i64* %var_2_2044, align 8
; store i64 %var_2_558, i64* %var_2_561, align 8
%var_2_562 = load i64, i64* %RBP, align 8
; Matched:%var_2_2046:  %var_2_2046 = add i64 %var_2_2045, -144
; %var_2_563 = add i64 %var_2_562, -144
%var_2_564 = load i64, i64* %PC, align 8
%var_2_565 = add i64 %var_2_564, 8
store i64 %var_2_565, i64* %PC, align 8
; Matched:%var_2_2049:  %var_2_2049 = load double, double* %var_2_228, align 1
; %var_2_566 = load double, double* %var_2_1857, align 1
; Matched:%var_2_2050:  %var_2_2050 = inttoptr i64 %var_2_2046 to double*
; %var_2_567 = inttoptr i64 %var_2_563 to double*
; Matched:%var_2_2051:  %var_2_2051 = load double, double* %var_2_2050, align 8
; %var_2_568 = load double, double* %var_2_567, align 8
; Matched:%var_2_2052:  %var_2_2052 = fmul double %var_2_2049, %var_2_2051
; %var_2_569 = fmul double %var_2_566, %var_2_568
; Matched:\<badref\>:  store double %var_2_2052, double* %var_2_228, align 1
; store double %var_2_569, double* %var_2_1857, align 1
; Matched:%var_2_2053:  %var_2_2053 = add i64 %var_2_2045, -128
; %var_2_570 = add i64 %var_2_562, -128
; Matched:%var_2_1378:  %var_2_1378 = add i64 %var_2_1371, 13
; %var_2_571 = add i64 %var_2_564, 13
; Matched:\<badref\>:  store i64 %var_2_1378, i64* %var_2_3, align 8
; store i64 %var_2_571, i64* %PC, align 8
; Matched:%var_2_2055:  %var_2_2055 = inttoptr i64 %var_2_2053 to i64*
; %var_2_572 = inttoptr i64 %var_2_570 to i64*
; Matched:%var_2_1767:  %var_2_1767 = load i64, i64* %var_2_1766, align 8
; %var_2_573 = load i64, i64* %var_2_572, align 8
; Matched:\<badref\>:  store i64 %var_2_1678, i64* %var_2_206, align 1
; store i64 %var_2_573, i64* %var_2_1839, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_208, align 1
; store double 0.000000e+00, double* %var_2_1841, align 1
; Matched:%var_2_2057:  %var_2_2057 = add i64 %var_2_2045, -136
; %var_2_574 = add i64 %var_2_562, -136
; Matched:%var_2_2084:  %var_2_2084 = add i64 %var_2_2073, 21
; %var_2_575 = add i64 %var_2_564, 21
; Matched:\<badref\>:  store i64 %var_2_2084, i64* %var_2_3, align 8
; store i64 %var_2_575, i64* %PC, align 8
; Matched:%var_2_2059:  %var_2_2059 = bitcast i64 %var_2_2056 to double
; %var_2_576 = bitcast i64 %var_2_573 to double
; Matched:%var_2_2060:  %var_2_2060 = inttoptr i64 %var_2_2057 to double*
; %var_2_577 = inttoptr i64 %var_2_574 to double*
; Matched:%var_2_2061:  %var_2_2061 = load double, double* %var_2_2060, align 8
; %var_2_578 = load double, double* %var_2_577, align 8
; Matched:%var_2_2062:  %var_2_2062 = fmul double %var_2_2059, %var_2_2061
; %var_2_579 = fmul double %var_2_576, %var_2_578
; Matched:\<badref\>:  store double %var_2_2062, double* %var_2_205, align 1
; store double %var_2_579, double* %var_2_1838, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_207, align 1
; store i64 0, i64* %var_2_1840, align 1
; Matched:%var_2_2063:  %var_2_2063 = fsub double %var_2_2052, %var_2_2062
; %var_2_580 = fsub double %var_2_569, %var_2_579
; Matched:\<badref\>:  store double %var_2_2063, double* %var_2_228, align 1
; store double %var_2_580, double* %var_2_1857, align 1
; Matched:%var_2_2064:  %var_2_2064 = add i64 %var_2_2045, -152
; %var_2_581 = add i64 %var_2_562, -152
; Matched:%var_2_2065:  %var_2_2065 = add i64 %var_2_2047, 33
; %var_2_582 = add i64 %var_2_564, 33
; Matched:\<badref\>:  store i64 %var_2_1681, i64* %var_2_3, align 8
; store i64 %var_2_582, i64* %PC, align 8
; Matched:%var_2_2066:  %var_2_2066 = inttoptr i64 %var_2_2064 to double*
; %var_2_583 = inttoptr i64 %var_2_581 to double*
; Matched:%var_2_2067:  %var_2_2067 = load double, double* %var_2_2066, align 8
; %var_2_584 = load double, double* %var_2_583, align 8
; Matched:%var_2_2068:  %var_2_2068 = fadd double %var_2_2063, %var_2_2067
; %var_2_585 = fadd double %var_2_580, %var_2_584
; Matched:\<badref\>:  store double %var_2_2068, double* %var_2_228, align 1
; store double %var_2_585, double* %var_2_1857, align 1
; Matched:%var_2_2069:  %var_2_2069 = add i64 %var_2_2047, 41
; %var_2_586 = add i64 %var_2_564, 41
; Matched:\<badref\>:  store i64 %var_2_1895, i64* %var_2_3, align 8
; store i64 %var_2_586, i64* %PC, align 8
; Matched:%var_2_2070:  %var_2_2070 = inttoptr i64 %var_2_2064 to double*
; %var_2_587 = inttoptr i64 %var_2_581 to double*
; Matched:\<badref\>:  store double %var_2_2068, double* %var_2_2070, align 8
; store double %var_2_585, double* %var_2_587, align 8
; Matched:%var_2_2071:  %var_2_2071 = load i64, i64* %RBP.i, align 8
; %var_2_588 = load i64, i64* %RBP, align 8
; Matched:%var_2_2072:  %var_2_2072 = add i64 %var_2_2071, -128
; %var_2_589 = add i64 %var_2_588, -128
%var_2_590 = load i64, i64* %PC, align 8
; Matched:%var_2_1372:  %var_2_1372 = add i64 %var_2_1371, 5
; %var_2_591 = add i64 %var_2_590, 5
; Matched:\<badref\>:  store i64 %var_2_1326, i64* %var_2_3, align 8
; store i64 %var_2_591, i64* %PC, align 8
; Matched:%var_2_2075:  %var_2_2075 = inttoptr i64 %var_2_2072 to i64*
; %var_2_592 = inttoptr i64 %var_2_589 to i64*
; Matched:%var_2_2076:  %var_2_2076 = load i64, i64* %var_2_2075, align 8
; %var_2_593 = load i64, i64* %var_2_592, align 8
; Matched:\<badref\>:  store i64 %var_2_2076, i64* %var_2_225, align 1
; store i64 %var_2_593, i64* %var_2_1828, align 1
store double 0.000000e+00, double* %var_2_1830, align 1
; Matched:%var_2_2077:  %var_2_2077 = add i64 %var_2_2071, -144
; %var_2_594 = add i64 %var_2_588, -144
; Matched:%var_2_2054:  %var_2_2054 = add i64 %var_2_2047, 13
; %var_2_595 = add i64 %var_2_590, 13
; Matched:\<badref\>:  store i64 %var_2_2054, i64* %var_2_3, align 8
; store i64 %var_2_595, i64* %PC, align 8
; Matched:%var_2_2079:  %var_2_2079 = bitcast i64 %var_2_2076 to double
; %var_2_596 = bitcast i64 %var_2_593 to double
; Matched:%var_2_2080:  %var_2_2080 = inttoptr i64 %var_2_2077 to double*
; %var_2_597 = inttoptr i64 %var_2_594 to double*
; Matched:%var_2_2081:  %var_2_2081 = load double, double* %var_2_2080, align 8
; %var_2_598 = load double, double* %var_2_597, align 8
; Matched:%var_2_2082:  %var_2_2082 = fmul double %var_2_2079, %var_2_2081
; %var_2_599 = fmul double %var_2_596, %var_2_598
; Matched:\<badref\>:  store double %var_2_2082, double* %var_2_228, align 1
; store double %var_2_599, double* %var_2_1857, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_194, align 1
; store i64 0, i64* %var_2_1829, align 1
; Matched:%var_2_2083:  %var_2_2083 = add i64 %var_2_2071, -160
; %var_2_600 = add i64 %var_2_588, -160
; Matched:%var_2_716:  %var_2_716 = add i64 %var_2_699, 21
; %var_2_601 = add i64 %var_2_590, 21
; Matched:\<badref\>:  store i64 %var_2_1670, i64* %var_2_3, align 8
; store i64 %var_2_601, i64* %PC, align 8
; Matched:%var_2_2085:  %var_2_2085 = inttoptr i64 %var_2_2083 to i64*
; %var_2_602 = inttoptr i64 %var_2_600 to i64*
; Matched:%var_2_2086:  %var_2_2086 = load i64, i64* %var_2_2085, align 8
; %var_2_603 = load i64, i64* %var_2_602, align 8
; Matched:\<badref\>:  store i64 %var_2_2086, i64* %var_2_206, align 1
; store i64 %var_2_603, i64* %var_2_1839, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_208, align 1
; store double 0.000000e+00, double* %var_2_1841, align 1
; Matched:%var_2_2087:  %var_2_2087 = add i64 %var_2_2071, -136
; %var_2_604 = add i64 %var_2_588, -136
; Matched:%var_2_2088:  %var_2_2088 = add i64 %var_2_2073, 29
; %var_2_605 = add i64 %var_2_590, 29
; Matched:\<badref\>:  store i64 %var_2_2088, i64* %var_2_3, align 8
; store i64 %var_2_605, i64* %PC, align 8
; Matched:%var_2_2089:  %var_2_2089 = bitcast i64 %var_2_2086 to double
; %var_2_606 = bitcast i64 %var_2_603 to double
; Matched:%var_2_2090:  %var_2_2090 = inttoptr i64 %var_2_2087 to double*
; %var_2_607 = inttoptr i64 %var_2_604 to double*
; Matched:%var_2_2091:  %var_2_2091 = load double, double* %var_2_2090, align 8
; %var_2_608 = load double, double* %var_2_607, align 8
; Matched:%var_2_2092:  %var_2_2092 = fmul double %var_2_2089, %var_2_2091
; %var_2_609 = fmul double %var_2_606, %var_2_608
; Matched:\<badref\>:  store double %var_2_2092, double* %var_2_205, align 1
; store double %var_2_609, double* %var_2_1838, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_207, align 1
; store i64 0, i64* %var_2_1840, align 1
; Matched:%var_2_2093:  %var_2_2093 = fadd double %var_2_2082, %var_2_2092
; %var_2_610 = fadd double %var_2_599, %var_2_609
; Matched:\<badref\>:  store double %var_2_2093, double* %var_2_228, align 1
; store double %var_2_610, double* %var_2_1857, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_194, align 1
; store i64 0, i64* %var_2_1829, align 1
; Matched:%var_2_2094:  %var_2_2094 = add i64 %var_2_2073, 38
; %var_2_611 = add i64 %var_2_590, 38
; Matched:\<badref\>:  store i64 %var_2_2094, i64* %var_2_3, align 8
; store i64 %var_2_611, i64* %PC, align 8
; Matched:%var_2_2095:  %var_2_2095 = inttoptr i64 %var_2_2072 to double*
; %var_2_612 = inttoptr i64 %var_2_589 to double*
; Matched:%var_2_2096:  %var_2_2096 = load double, double* %var_2_2095, align 8
; %var_2_613 = load double, double* %var_2_612, align 8
; Matched:%var_2_2097:  %var_2_2097 = fadd double %var_2_2093, %var_2_2096
; %var_2_614 = fadd double %var_2_610, %var_2_613
; Matched:\<badref\>:  store double %var_2_2097, double* %var_2_228, align 1
; store double %var_2_614, double* %var_2_1857, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_194, align 1
; store i64 0, i64* %var_2_1829, align 1
; Matched:%var_2_2098:  %var_2_2098 = add i64 %var_2_2073, 43
; %var_2_615 = add i64 %var_2_590, 43
; Matched:\<badref\>:  store i64 %var_2_2098, i64* %var_2_3, align 8
; store i64 %var_2_615, i64* %PC, align 8
; Matched:%var_2_2099:  %var_2_2099 = inttoptr i64 %var_2_2072 to double*
; %var_2_616 = inttoptr i64 %var_2_589 to double*
; Matched:\<badref\>:  store double %var_2_2097, double* %var_2_2099, align 8
; store double %var_2_614, double* %var_2_616, align 8
%var_2_617 = load i64, i64* %RBP, align 8
; Matched:%var_2_2101:  %var_2_2101 = add i64 %var_2_2100, -48
; %var_2_618 = add i64 %var_2_617, -48
%var_2_619 = load i64, i64* %PC, align 8
; Matched:%var_2_1140:  %var_2_1140 = add i64 %var_2_1139, 3
; %var_2_620 = add i64 %var_2_619, 3
; Matched:\<badref\>:  store i64 %var_2_150, i64* %var_2_3, align 8
; store i64 %var_2_620, i64* %PC, align 8
; Matched:%var_2_1241:  %var_2_1241 = inttoptr i64 %var_2_1239 to i32*
; %var_2_621 = inttoptr i64 %var_2_618 to i32*
; Matched:%var_2_2105:  %var_2_2105 = load i32, i32* %var_2_2104, align 4
; %var_2_622 = load i32, i32* %var_2_621, align 4
; Matched:%var_2_2106:  %var_2_2106 = zext i32 %var_2_2105 to i64
; %var_2_623 = zext i32 %var_2_622 to i64
; Matched:\<badref\>:  store i64 %var_2_1143, i64* %RAX.i798, align 8
; store i64 %var_2_623, i64* %RAX, align 8
; Matched:%var_2_2107:  %var_2_2107 = add i64 %var_2_2100, -36
; %var_2_624 = add i64 %var_2_617, -36
; Matched:%var_2_1620:  %var_2_1620 = add i64 %var_2_1614, 6
; %var_2_625 = add i64 %var_2_619, 6
; Matched:\<badref\>:  store i64 %var_2_1620, i64* %var_2_3, align 8
; store i64 %var_2_625, i64* %PC, align 8
; Matched:%var_2_2109:  %var_2_2109 = inttoptr i64 %var_2_2107 to i32*
; %var_2_626 = inttoptr i64 %var_2_624 to i32*
; Matched:%var_2_2110:  %var_2_2110 = load i32, i32* %var_2_2109, align 4
; %var_2_627 = load i32, i32* %var_2_626, align 4
; Matched:%var_2_2111:  %var_2_2111 = add i32 %var_2_2110, %var_2_2105
; %var_2_628 = add i32 %var_2_627, %var_2_622
; Matched:%var_2_2112:  %var_2_2112 = zext i32 %var_2_2111 to i64
; %var_2_629 = zext i32 %var_2_628 to i64
; Matched:\<badref\>:  store i64 %var_2_2112, i64* %RAX.i798, align 8
; store i64 %var_2_629, i64* %RAX, align 8
; Matched:%var_2_2113:  %var_2_2113 = icmp ult i32 %var_2_2111, %var_2_2105
; %var_2_630 = icmp ult i32 %var_2_628, %var_2_622
; Matched:%var_2_2114:  %var_2_2114 = icmp ult i32 %var_2_2111, %var_2_2110
; %var_2_631 = icmp ult i32 %var_2_628, %var_2_627
; Matched:%var_2_2115:  %var_2_2115 = or i1 %var_2_2113, %var_2_2114
; %var_2_632 = or i1 %var_2_630, %var_2_631
; Matched:%var_2_2116:  %var_2_2116 = zext i1 %var_2_2115 to i8
; %var_2_633 = zext i1 %var_2_632 to i8
; Matched:\<badref\>:  store i8 %var_2_2116, i8* %var_2_14, align 1
; store i8 %var_2_633, i8* %var_2_17, align 1
; Matched:%var_2_2117:  %var_2_2117 = and i32 %var_2_2111, 255
; %var_2_634 = and i32 %var_2_628, 255
; Matched:%var_2_2118:  %var_2_2118 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2117)
; %var_2_635 = tail call i32 @llvm.ctpop.i32(i32 %var_2_634) #14
; Matched:%var_2_2119:  %var_2_2119 = trunc i32 %var_2_2118 to i8
; %var_2_636 = trunc i32 %var_2_635 to i8
; Matched:%var_2_2120:  %var_2_2120 = and i8 %var_2_2119, 1
; %var_2_637 = and i8 %var_2_636, 1
; Matched:%var_2_2121:  %var_2_2121 = xor i8 %var_2_2120, 1
; %var_2_638 = xor i8 %var_2_637, 1
; Matched:\<badref\>:  store i8 %var_2_2121, i8* %var_2_21, align 1
; store i8 %var_2_638, i8* %var_2_24, align 1
; Matched:%var_2_2122:  %var_2_2122 = xor i32 %var_2_2110, %var_2_2105
; %var_2_639 = xor i32 %var_2_627, %var_2_622
; Matched:%var_2_2123:  %var_2_2123 = xor i32 %var_2_2122, %var_2_2111
; %var_2_640 = xor i32 %var_2_639, %var_2_628
; Matched:%var_2_2124:  %var_2_2124 = lshr i32 %var_2_2123, 4
; %var_2_641 = lshr i32 %var_2_640, 4
; Matched:%var_2_2125:  %var_2_2125 = trunc i32 %var_2_2124 to i8
; %var_2_642 = trunc i32 %var_2_641 to i8
; Matched:%var_2_2126:  %var_2_2126 = and i8 %var_2_2125, 1
; %var_2_643 = and i8 %var_2_642, 1
; Matched:\<badref\>:  store i8 %var_2_2126, i8* %var_2_26, align 1
; store i8 %var_2_643, i8* %var_2_29, align 1
; Matched:%var_2_2127:  %var_2_2127 = icmp eq i32 %var_2_2111, 0
; %var_2_644 = icmp eq i32 %var_2_628, 0
; Matched:%var_2_2128:  %var_2_2128 = zext i1 %var_2_2127 to i8
; %var_2_645 = zext i1 %var_2_644 to i8
; Matched:\<badref\>:  store i8 %var_2_2128, i8* %var_2_29, align 1
; store i8 %var_2_645, i8* %var_2_32, align 1
; Matched:%var_2_2129:  %var_2_2129 = lshr i32 %var_2_2111, 31
; %var_2_646 = lshr i32 %var_2_628, 31
; Matched:%var_2_2130:  %var_2_2130 = trunc i32 %var_2_2129 to i8
; %var_2_647 = trunc i32 %var_2_646 to i8
; Matched:\<badref\>:  store i8 %var_2_2130, i8* %var_2_32, align 1
; store i8 %var_2_647, i8* %var_2_35, align 1
; Matched:%var_2_2131:  %var_2_2131 = lshr i32 %var_2_2105, 31
; %var_2_648 = lshr i32 %var_2_622, 31
; Matched:%var_2_2132:  %var_2_2132 = lshr i32 %var_2_2110, 31
; %var_2_649 = lshr i32 %var_2_627, 31
; Matched:%var_2_2133:  %var_2_2133 = xor i32 %var_2_2129, %var_2_2131
; %var_2_650 = xor i32 %var_2_646, %var_2_648
; Matched:%var_2_2134:  %var_2_2134 = xor i32 %var_2_2129, %var_2_2132
; %var_2_651 = xor i32 %var_2_646, %var_2_649
; Matched:%var_2_2135:  %var_2_2135 = add nuw nsw i32 %var_2_2133, %var_2_2134
; %var_2_652 = add nuw nsw i32 %var_2_650, %var_2_651
; Matched:%var_2_2136:  %var_2_2136 = icmp eq i32 %var_2_2135, 2
; %var_2_653 = icmp eq i32 %var_2_652, 2
; Matched:%var_2_2137:  %var_2_2137 = zext i1 %var_2_2136 to i8
; %var_2_654 = zext i1 %var_2_653 to i8
; Matched:\<badref\>:  store i8 %var_2_2137, i8* %var_2_38, align 1
; store i8 %var_2_654, i8* %var_2_41, align 1
%var_2_655 = add i64 %var_2_619, 9
store i64 %var_2_655, i64* %PC, align 8
; Matched:\<badref\>:  store i32 %var_2_2111, i32* %var_2_2109, align 4
; store i32 %var_2_628, i32* %var_2_626, align 4
; Matched:%var_2_2139:  %var_2_2139 = load i64, i64* %var_2_3, align 8
; %var_2_656 = load i64, i64* %PC, align 8
; Matched:%var_2_2140:  %var_2_2140 = add i64 %var_2_2139, -442
; %var_2_657 = add i64 %var_2_656, -442
; Matched:\<badref\>:  store i64 %var_2_2140, i64* %var_2_3, align 8
; store i64 %var_2_657, i64* %PC, align 8
  br label %block_400e84

block_400bd0:                                     ; preds = %block_400bc3, %block_40104e
; Matched:%var_2_230:  %var_2_230 = phi i64 [ %.pre40, %block_.L_400bc3 ], [ %var_2_2208, %block_.L_40104e ]
; %var_2_658 = phi i64 [ %.pre94, %block_400bc3 ], [ %var_2_747, %block_40104e ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_400bc3 ], [ %MEMORY.6, %block_40104e ]
%var_2_659 = load i64, i64* %RBP, align 8
%var_2_660 = add i64 %var_2_659, -72
; Matched:%var_2_233:  %var_2_233 = add i64 %var_2_230, 4
; %var_2_661 = add i64 %var_2_658, 4
; Matched:\<badref\>:  store i64 %var_2_233, i64* %var_2_3, align 8
; store i64 %var_2_661, i64* %PC, align 8
%var_2_662 = inttoptr i64 %var_2_660 to i32*
%var_2_663 = load i32, i32* %var_2_662, align 4
%var_2_664 = add i32 %var_2_663, -1
%var_2_665 = icmp eq i32 %var_2_663, 0
%var_2_666 = zext i1 %var_2_665 to i8
store i8 %var_2_666, i8* %var_2_17, align 1
; Matched:%var_2_2186:  %var_2_2186 = and i32 %var_2_2182, 255
; %var_2_667 = and i32 %var_2_664, 255
; Matched:%var_2_240:  %var_2_240 = tail call i32 @llvm.ctpop.i32(i32 %var_2_239)
; %var_2_668 = tail call i32 @llvm.ctpop.i32(i32 %var_2_667) #14
; Matched:%var_2_2188:  %var_2_2188 = trunc i32 %var_2_2187 to i8
; %var_2_669 = trunc i32 %var_2_668 to i8
; Matched:%var_2_242:  %var_2_242 = and i8 %var_2_241, 1
; %var_2_670 = and i8 %var_2_669, 1
; Matched:%var_2_243:  %var_2_243 = xor i8 %var_2_242, 1
; %var_2_671 = xor i8 %var_2_670, 1
; Matched:\<badref\>:  store i8 %var_2_243, i8* %var_2_21, align 1
; store i8 %var_2_671, i8* %var_2_24, align 1
; Matched:%var_2_244:  %var_2_244 = xor i32 %var_2_236, %var_2_235
; %var_2_672 = xor i32 %var_2_664, %var_2_663
; Matched:%var_2_245:  %var_2_245 = lshr i32 %var_2_244, 4
; %var_2_673 = lshr i32 %var_2_672, 4
; Matched:%var_2_246:  %var_2_246 = trunc i32 %var_2_245 to i8
; %var_2_674 = trunc i32 %var_2_673 to i8
; Matched:%var_2_247:  %var_2_247 = and i8 %var_2_246, 1
; %var_2_675 = and i8 %var_2_674, 1
; Matched:\<badref\>:  store i8 %var_2_247, i8* %var_2_26, align 1
; store i8 %var_2_675, i8* %var_2_29, align 1
; Matched:%var_2_248:  %var_2_248 = icmp eq i32 %var_2_236, 0
; %var_2_676 = icmp eq i32 %var_2_664, 0
; Matched:%var_2_2197:  %var_2_2197 = zext i1 %var_2_2196 to i8
; %var_2_677 = zext i1 %var_2_676 to i8
; Matched:\<badref\>:  store i8 %var_2_249, i8* %var_2_29, align 1
; store i8 %var_2_677, i8* %var_2_32, align 1
%var_2_678 = lshr i32 %var_2_664, 31
%var_2_679 = trunc i32 %var_2_678 to i8
; Matched:\<badref\>:  store i8 %var_2_2199, i8* %var_2_32, align 1
; store i8 %var_2_679, i8* %var_2_35, align 1
%var_2_680 = lshr i32 %var_2_663, 31
%var_2_681 = xor i32 %var_2_678, %var_2_680
%var_2_682 = add nuw nsw i32 %var_2_681, %var_2_680
%var_2_683 = icmp eq i32 %var_2_682, 2
; Matched:%var_2_256:  %var_2_256 = zext i1 %var_2_255 to i8
; %var_2_684 = zext i1 %var_2_683 to i8
; Matched:\<badref\>:  store i8 %var_2_256, i8* %var_2_38, align 1
; store i8 %var_2_684, i8* %var_2_41, align 1
%var_2_685 = icmp ne i8 %var_2_679, 0
%var_2_686 = xor i1 %var_2_685, %var_2_683
; Matched:  %.v69 = select i1 %var_2_258, i64 1174, i64 10
; %.v123 = select i1 %var_2_686, i64 1174, i64 10
; Matched:%var_2_259:  %var_2_259 = add i64 %var_2_230, %.v69
; %var_2_687 = add i64 %var_2_658, %.v123
; Matched:\<badref\>:  store i64 %var_2_259, i64* %var_2_3, align 8
; store i64 %var_2_687, i64* %PC, align 8
br i1 %var_2_686, label %block_401066, label %block_400bda

block_40104e:                                     ; preds = %block_400dac
; Matched:%var_2_2149:  %var_2_2149 = add i64 %var_2_1248, -84
; %var_2_688 = add i64 %var_2_1613, -84
; Matched:%var_2_2150:  %var_2_2150 = add i64 %var_2_1284, 3
; %var_2_689 = add i64 %var_2_1649, 3
; Matched:\<badref\>:  store i64 %var_2_2150, i64* %var_2_3, align 8
; store i64 %var_2_689, i64* %PC, align 8
; Matched:%var_2_285:  %var_2_285 = inttoptr i64 %var_2_283 to i32*
; %var_2_690 = inttoptr i64 %var_2_688 to i32*
; Matched:%var_2_286:  %var_2_286 = load i32, i32* %var_2_285, align 4
; %var_2_691 = load i32, i32* %var_2_690, align 4
; Matched:%var_2_2153:  %var_2_2153 = zext i32 %var_2_2152 to i64
; %var_2_692 = zext i32 %var_2_691 to i64
; Matched:\<badref\>:  store i64 %var_2_2153, i64* %RAX.i798, align 8
; store i64 %var_2_692, i64* %RAX, align 8
%var_2_693 = add i64 %var_2_1613, -88
; Matched:%var_2_2155:  %var_2_2155 = add i64 %var_2_1284, 7
; %var_2_694 = add i64 %var_2_1649, 7
; Matched:\<badref\>:  store i64 %var_2_2155, i64* %var_2_3, align 8
; store i64 %var_2_694, i64* %PC, align 8
%var_2_695 = inttoptr i64 %var_2_693 to i32*
; Matched:%var_2_291:  %var_2_291 = load i32, i32* %var_2_290, align 4
; %var_2_696 = load i32, i32* %var_2_695, align 4
; Matched:%var_2_292:  %var_2_292 = sext i32 %var_2_286 to i64
; %var_2_697 = sext i32 %var_2_691 to i64
; Matched:%var_2_2159:  %var_2_2159 = sext i32 %var_2_2157 to i64
; %var_2_698 = sext i32 %var_2_696 to i64
; Matched:%var_2_2160:  %var_2_2160 = mul nsw i64 %var_2_2159, %var_2_2158
; %var_2_699 = mul nsw i64 %var_2_698, %var_2_697
; Matched:%var_2_295:  %var_2_295 = trunc i64 %var_2_294 to i32
; %var_2_700 = trunc i64 %var_2_699 to i32
; Matched:%var_2_2162:  %var_2_2162 = and i64 %var_2_2160, 4294967295
; %var_2_701 = and i64 %var_2_699, 4294967295
; Matched:\<badref\>:  store i64 %var_2_2162, i64* %RAX.i798, align 8
; store i64 %var_2_701, i64* %RAX, align 8
; Matched:%var_2_296:  %var_2_296 = shl i64 %var_2_294, 32
; %var_2_702 = shl i64 %var_2_699, 32
; Matched:%var_2_297:  %var_2_297 = ashr exact i64 %var_2_296, 32
; %var_2_703 = ashr exact i64 %var_2_702, 32
; Matched:%var_2_298:  %var_2_298 = icmp ne i64 %var_2_297, %var_2_294
; %var_2_704 = icmp ne i64 %var_2_703, %var_2_699
; Matched:%var_2_299:  %var_2_299 = zext i1 %var_2_298 to i8
; %var_2_705 = zext i1 %var_2_704 to i8
; Matched:\<badref\>:  store i8 %var_2_2166, i8* %var_2_14, align 1
; store i8 %var_2_705, i8* %var_2_17, align 1
; Matched:%var_2_300:  %var_2_300 = and i32 %var_2_295, 255
; %var_2_706 = and i32 %var_2_700, 255
; Matched:%var_2_301:  %var_2_301 = tail call i32 @llvm.ctpop.i32(i32 %var_2_300)
; %var_2_707 = tail call i32 @llvm.ctpop.i32(i32 %var_2_706) #14
; Matched:%var_2_302:  %var_2_302 = trunc i32 %var_2_301 to i8
; %var_2_708 = trunc i32 %var_2_707 to i8
; Matched:%var_2_2170:  %var_2_2170 = and i8 %var_2_2169, 1
; %var_2_709 = and i8 %var_2_708, 1
; Matched:%var_2_2171:  %var_2_2171 = xor i8 %var_2_2170, 1
; %var_2_710 = xor i8 %var_2_709, 1
; Matched:\<badref\>:  store i8 %var_2_304, i8* %var_2_21, align 1
; store i8 %var_2_710, i8* %var_2_24, align 1
store i8 0, i8* %var_2_29, align 1
store i8 0, i8* %var_2_32, align 1
; Matched:%var_2_305:  %var_2_305 = lshr i32 %var_2_295, 31
; %var_2_711 = lshr i32 %var_2_700, 31
; Matched:%var_2_306:  %var_2_306 = trunc i32 %var_2_305 to i8
; %var_2_712 = trunc i32 %var_2_711 to i8
; Matched:\<badref\>:  store i8 %var_2_306, i8* %var_2_32, align 1
; store i8 %var_2_712, i8* %var_2_35, align 1
; Matched:\<badref\>:  store i8 %var_2_2166, i8* %var_2_38, align 1
; store i8 %var_2_705, i8* %var_2_41, align 1
; Matched:%var_2_2174:  %var_2_2174 = trunc i64 %var_2_2160 to i32
; %var_2_713 = trunc i64 %var_2_699 to i32
; Matched:%var_2_2175:  %var_2_2175 = add i64 %var_2_1284, 10
; %var_2_714 = add i64 %var_2_1649, 10
; Matched:\<badref\>:  store i64 %var_2_2175, i64* %var_2_3, align 8
; store i64 %var_2_714, i64* %PC, align 8
; Matched:\<badref\>:  store i32 %var_2_2174, i32* %var_2_2156, align 4
; store i32 %var_2_713, i32* %var_2_695, align 4
%var_2_715 = load i64, i64* %RBP, align 8
%var_2_716 = add i64 %var_2_715, -72
%var_2_717 = load i64, i64* %PC, align 8
; Matched:%var_2_347:  %var_2_347 = add i64 %var_2_346, 3
; %var_2_718 = add i64 %var_2_717, 3
; Matched:\<badref\>:  store i64 %var_2_347, i64* %var_2_3, align 8
; store i64 %var_2_718, i64* %PC, align 8
%var_2_719 = inttoptr i64 %var_2_716 to i32*
%var_2_720 = load i32, i32* %var_2_719, align 4
; Matched:%var_2_2182:  %var_2_2182 = add i32 %var_2_2181, -1
; %var_2_721 = add i32 %var_2_720, -1
; Matched:%var_2_2183:  %var_2_2183 = zext i32 %var_2_2182 to i64
; %var_2_722 = zext i32 %var_2_721 to i64
; Matched:\<badref\>:  store i64 %var_2_2183, i64* %RAX.i798, align 8
; store i64 %var_2_722, i64* %RAX, align 8
%var_2_723 = icmp ne i32 %var_2_720, 0
%var_2_724 = zext i1 %var_2_723 to i8
store i8 %var_2_724, i8* %var_2_17, align 1
; Matched:%var_2_239:  %var_2_239 = and i32 %var_2_236, 255
; %var_2_725 = and i32 %var_2_721, 255
; Matched:%var_2_2187:  %var_2_2187 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2186)
; %var_2_726 = tail call i32 @llvm.ctpop.i32(i32 %var_2_725) #14
; Matched:%var_2_241:  %var_2_241 = trunc i32 %var_2_240 to i8
; %var_2_727 = trunc i32 %var_2_726 to i8
; Matched:%var_2_2189:  %var_2_2189 = and i8 %var_2_2188, 1
; %var_2_728 = and i8 %var_2_727, 1
; Matched:%var_2_2190:  %var_2_2190 = xor i8 %var_2_2189, 1
; %var_2_729 = xor i8 %var_2_728, 1
; Matched:\<badref\>:  store i8 %var_2_2190, i8* %var_2_21, align 1
; store i8 %var_2_729, i8* %var_2_24, align 1
; Matched:%var_2_2191:  %var_2_2191 = xor i32 %var_2_2181, 16
; %var_2_730 = xor i32 %var_2_720, 16
; Matched:%var_2_2192:  %var_2_2192 = xor i32 %var_2_2191, %var_2_2182
; %var_2_731 = xor i32 %var_2_730, %var_2_721
; Matched:%var_2_2193:  %var_2_2193 = lshr i32 %var_2_2192, 4
; %var_2_732 = lshr i32 %var_2_731, 4
; Matched:%var_2_2194:  %var_2_2194 = trunc i32 %var_2_2193 to i8
; %var_2_733 = trunc i32 %var_2_732 to i8
; Matched:%var_2_2195:  %var_2_2195 = and i8 %var_2_2194, 1
; %var_2_734 = and i8 %var_2_733, 1
; Matched:\<badref\>:  store i8 %var_2_2195, i8* %var_2_26, align 1
; store i8 %var_2_734, i8* %var_2_29, align 1
; Matched:%var_2_2196:  %var_2_2196 = icmp eq i32 %var_2_2182, 0
; %var_2_735 = icmp eq i32 %var_2_721, 0
; Matched:%var_2_249:  %var_2_249 = zext i1 %var_2_248 to i8
; %var_2_736 = zext i1 %var_2_735 to i8
; Matched:\<badref\>:  store i8 %var_2_2197, i8* %var_2_29, align 1
; store i8 %var_2_736, i8* %var_2_32, align 1
; Matched:%var_2_2198:  %var_2_2198 = lshr i32 %var_2_2182, 31
; %var_2_737 = lshr i32 %var_2_721, 31
; Matched:%var_2_2199:  %var_2_2199 = trunc i32 %var_2_2198 to i8
; %var_2_738 = trunc i32 %var_2_737 to i8
; Matched:\<badref\>:  store i8 %var_2_251, i8* %var_2_32, align 1
; store i8 %var_2_738, i8* %var_2_35, align 1
; Matched:%var_2_2200:  %var_2_2200 = lshr i32 %var_2_2181, 31
; %var_2_739 = lshr i32 %var_2_720, 31
; Matched:%var_2_2201:  %var_2_2201 = xor i32 %var_2_2198, %var_2_2200
; %var_2_740 = xor i32 %var_2_737, %var_2_739
; Matched:%var_2_2202:  %var_2_2202 = xor i32 %var_2_2198, 1
; %var_2_741 = xor i32 %var_2_737, 1
; Matched:%var_2_2203:  %var_2_2203 = add nuw nsw i32 %var_2_2201, %var_2_2202
; %var_2_742 = add nuw nsw i32 %var_2_740, %var_2_741
; Matched:%var_2_2204:  %var_2_2204 = icmp eq i32 %var_2_2203, 2
; %var_2_743 = icmp eq i32 %var_2_742, 2
; Matched:%var_2_2205:  %var_2_2205 = zext i1 %var_2_2204 to i8
; %var_2_744 = zext i1 %var_2_743 to i8
; Matched:\<badref\>:  store i8 %var_2_2205, i8* %var_2_38, align 1
; store i8 %var_2_744, i8* %var_2_41, align 1
%var_2_745 = add i64 %var_2_717, 9
store i64 %var_2_745, i64* %PC, align 8
; Matched:\<badref\>:  store i32 %var_2_2182, i32* %var_2_2180, align 4
; store i32 %var_2_721, i32* %var_2_719, align 4
; Matched:%var_2_2207:  %var_2_2207 = load i64, i64* %var_2_3, align 8
; %var_2_746 = load i64, i64* %PC, align 8
; Matched:%var_2_2208:  %var_2_2208 = add i64 %var_2_2207, -1169
; %var_2_747 = add i64 %var_2_746, -1169
; Matched:\<badref\>:  store i64 %var_2_2208, i64* %var_2_3, align 8
; store i64 %var_2_747, i64* %PC, align 8
  br label %block_400bd0

block_400c4d:                                     ; preds = %block_400c47, %block_400d1d
%var_2_748 = phi i64 [ %.pre99, %block_400c47 ], [ %var_2_1577, %block_400d1d ]
%var_2_749 = load i64, i64* %RBP, align 8
%var_2_750 = add i64 %var_2_749, -28
; Matched:%var_2_523:  %var_2_523 = add i64 %var_2_520, 3
; %var_2_751 = add i64 %var_2_748, 3
; Matched:\<badref\>:  store i64 %var_2_523, i64* %var_2_3, align 8
; store i64 %var_2_751, i64* %PC, align 8
%var_2_752 = inttoptr i64 %var_2_750 to i32*
%var_2_753 = load i32, i32* %var_2_752, align 4
; Matched:%var_2_1564:  %var_2_1564 = zext i32 %var_2_1563 to i64
; %var_2_754 = zext i32 %var_2_753 to i64
; Matched:\<badref\>:  store i64 %var_2_1564, i64* %RAX.i798, align 8
; store i64 %var_2_754, i64* %RAX, align 8
%var_2_755 = add i64 %var_2_749, -32
; Matched:%var_2_528:  %var_2_528 = add i64 %var_2_520, 6
; %var_2_756 = add i64 %var_2_748, 6
; Matched:\<badref\>:  store i64 %var_2_528, i64* %var_2_3, align 8
; store i64 %var_2_756, i64* %PC, align 8
%var_2_757 = inttoptr i64 %var_2_755 to i32*
%var_2_758 = load i32, i32* %var_2_757, align 4
; Matched:%var_2_531:  %var_2_531 = zext i32 %var_2_530 to i64
; %var_2_759 = zext i32 %var_2_758 to i64
; Matched:\<badref\>:  store i64 %var_2_531, i64* %RCX.i788, align 8
; store i64 %var_2_759, i64* %RCX, align 8
%var_2_760 = add i64 %var_2_749, -48
; Matched:%var_2_533:  %var_2_533 = add i64 %var_2_520, 9
; %var_2_761 = add i64 %var_2_748, 9
; Matched:\<badref\>:  store i64 %var_2_533, i64* %var_2_3, align 8
; store i64 %var_2_761, i64* %PC, align 8
%var_2_762 = inttoptr i64 %var_2_760 to i32*
%var_2_763 = load i32, i32* %var_2_762, align 4
%var_2_764 = add i32 %var_2_763, %var_2_758
%var_2_765 = add i32 %var_2_764, -2
; Matched:%var_2_538:  %var_2_538 = zext i32 %var_2_537 to i64
; %var_2_766 = zext i32 %var_2_765 to i64
; Matched:\<badref\>:  store i64 %var_2_538, i64* %RCX.i788, align 8
; store i64 %var_2_766, i64* %RCX, align 8
%var_2_767 = lshr i32 %var_2_765, 31
%var_2_768 = sub i32 %var_2_753, %var_2_765
; Matched:%var_2_541:  %var_2_541 = icmp ult i32 %var_2_525, %var_2_537
; %var_2_769 = icmp ult i32 %var_2_753, %var_2_765
; Matched:%var_2_542:  %var_2_542 = zext i1 %var_2_541 to i8
; %var_2_770 = zext i1 %var_2_769 to i8
; Matched:\<badref\>:  store i8 %var_2_542, i8* %var_2_14, align 1
; store i8 %var_2_770, i8* %var_2_17, align 1
; Matched:%var_2_543:  %var_2_543 = and i32 %var_2_540, 255
; %var_2_771 = and i32 %var_2_768, 255
; Matched:%var_2_544:  %var_2_544 = tail call i32 @llvm.ctpop.i32(i32 %var_2_543)
; %var_2_772 = tail call i32 @llvm.ctpop.i32(i32 %var_2_771) #14
; Matched:%var_2_545:  %var_2_545 = trunc i32 %var_2_544 to i8
; %var_2_773 = trunc i32 %var_2_772 to i8
; Matched:%var_2_546:  %var_2_546 = and i8 %var_2_545, 1
; %var_2_774 = and i8 %var_2_773, 1
; Matched:%var_2_547:  %var_2_547 = xor i8 %var_2_546, 1
; %var_2_775 = xor i8 %var_2_774, 1
; Matched:\<badref\>:  store i8 %var_2_547, i8* %var_2_21, align 1
; store i8 %var_2_775, i8* %var_2_24, align 1
; Matched:%var_2_548:  %var_2_548 = xor i32 %var_2_537, %var_2_525
; %var_2_776 = xor i32 %var_2_765, %var_2_753
; Matched:%var_2_549:  %var_2_549 = xor i32 %var_2_548, %var_2_540
; %var_2_777 = xor i32 %var_2_776, %var_2_768
; Matched:%var_2_550:  %var_2_550 = lshr i32 %var_2_549, 4
; %var_2_778 = lshr i32 %var_2_777, 4
; Matched:%var_2_551:  %var_2_551 = trunc i32 %var_2_550 to i8
; %var_2_779 = trunc i32 %var_2_778 to i8
; Matched:%var_2_552:  %var_2_552 = and i8 %var_2_551, 1
; %var_2_780 = and i8 %var_2_779, 1
; Matched:\<badref\>:  store i8 %var_2_552, i8* %var_2_26, align 1
; store i8 %var_2_780, i8* %var_2_29, align 1
%var_2_781 = icmp eq i32 %var_2_768, 0
; Matched:%var_2_554:  %var_2_554 = zext i1 %var_2_553 to i8
; %var_2_782 = zext i1 %var_2_781 to i8
; Matched:\<badref\>:  store i8 %var_2_554, i8* %var_2_29, align 1
; store i8 %var_2_782, i8* %var_2_32, align 1
%var_2_783 = lshr i32 %var_2_768, 31
%var_2_784 = trunc i32 %var_2_783 to i8
; Matched:\<badref\>:  store i8 %var_2_556, i8* %var_2_32, align 1
; store i8 %var_2_784, i8* %var_2_35, align 1
%var_2_785 = lshr i32 %var_2_753, 31
%var_2_786 = xor i32 %var_2_767, %var_2_785
%var_2_787 = xor i32 %var_2_783, %var_2_785
%var_2_788 = add nuw nsw i32 %var_2_787, %var_2_786
%var_2_789 = icmp eq i32 %var_2_788, 2
; Matched:%var_2_562:  %var_2_562 = zext i1 %var_2_561 to i8
; %var_2_790 = zext i1 %var_2_789 to i8
; Matched:\<badref\>:  store i8 %var_2_562, i8* %var_2_38, align 1
; store i8 %var_2_790, i8* %var_2_41, align 1
%var_2_791 = icmp ne i8 %var_2_784, 0
%var_2_792 = xor i1 %var_2_791, %var_2_789
%.demorgan115 = or i1 %var_2_781, %var_2_792
  %.v129 = select i1 %.demorgan115, i64 20, i64 227
%var_2_793 = add i64 %var_2_748, %.v129
; Matched:\<badref\>:  store i64 %var_2_565, i64* %var_2_3, align 8
; store i64 %var_2_793, i64* %PC, align 8
  br i1 %.demorgan115, label %block_400c61, label %block_400d30

block_400d3e:                                     ; preds = %block_400d35, %block_400d76
; Matched:%var_2_998:  %var_2_998 = phi i64 [ %var_2_1238, %block_.L_400d76 ], [ %.pre48, %block_.L_400d35 ]
; %var_2_794 = phi i64 [ %.pre102, %block_400d35 ], [ %var_2_134, %block_400d76 ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
store i8 0, i8* %var_2_17, align 1
store i8 1, i8* %var_2_24, align 1
store i8 1, i8* %var_2_32, align 1
store i8 0, i8* %var_2_35, align 1
store i8 0, i8* %var_2_41, align 1
store i8 0, i8* %var_2_29, align 1
  store i8 0, i8* %CL, align 1, !tbaa !2451
%var_2_795 = load i64, i64* %RBP, align 8
%var_2_796 = add i64 %var_2_795, -68
; Matched:%var_2_1001:  %var_2_1001 = add i64 %var_2_998, 7
; %var_2_797 = add i64 %var_2_794, 7
; Matched:\<badref\>:  store i64 %var_2_1001, i64* %var_2_3, align 8
; store i64 %var_2_797, i64* %PC, align 8
%var_2_798 = inttoptr i64 %var_2_796 to i32*
%var_2_799 = load i32, i32* %var_2_798, align 4
; Matched:%var_2_1181:  %var_2_1181 = zext i32 %var_2_1180 to i64
; %var_2_800 = zext i32 %var_2_799 to i64
; Matched:\<badref\>:  store i64 %var_2_1181, i64* %RAX.i798, align 8
; store i64 %var_2_800, i64* %RAX, align 8
; Matched:%var_2_1005:  %var_2_1005 = add i64 %var_2_999, -48
; %var_2_801 = add i64 %var_2_795, -48
; Matched:%var_2_1006:  %var_2_1006 = add i64 %var_2_998, 10
; %var_2_802 = add i64 %var_2_794, 10
; Matched:\<badref\>:  store i64 %var_2_1006, i64* %var_2_3, align 8
; store i64 %var_2_802, i64* %PC, align 8
; Matched:%var_2_1007:  %var_2_1007 = inttoptr i64 %var_2_1005 to i32*
; %var_2_803 = inttoptr i64 %var_2_801 to i32*
; Matched:%var_2_1008:  %var_2_1008 = load i32, i32* %var_2_1007, align 4
; %var_2_804 = load i32, i32* %var_2_803, align 4
; Matched:%var_2_1009:  %var_2_1009 = sub i32 %var_2_1003, %var_2_1008
; %var_2_805 = sub i32 %var_2_799, %var_2_804
; Matched:%var_2_1010:  %var_2_1010 = icmp ult i32 %var_2_1003, %var_2_1008
; %var_2_806 = icmp ult i32 %var_2_799, %var_2_804
; Matched:%var_2_1011:  %var_2_1011 = zext i1 %var_2_1010 to i8
; %var_2_807 = zext i1 %var_2_806 to i8
; Matched:\<badref\>:  store i8 %var_2_1011, i8* %var_2_14, align 1
; store i8 %var_2_807, i8* %var_2_17, align 1
; Matched:%var_2_1012:  %var_2_1012 = and i32 %var_2_1009, 255
; %var_2_808 = and i32 %var_2_805, 255
; Matched:%var_2_1013:  %var_2_1013 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1012)
; %var_2_809 = tail call i32 @llvm.ctpop.i32(i32 %var_2_808) #14
; Matched:%var_2_1014:  %var_2_1014 = trunc i32 %var_2_1013 to i8
; %var_2_810 = trunc i32 %var_2_809 to i8
; Matched:%var_2_1015:  %var_2_1015 = and i8 %var_2_1014, 1
; %var_2_811 = and i8 %var_2_810, 1
; Matched:%var_2_1016:  %var_2_1016 = xor i8 %var_2_1015, 1
; %var_2_812 = xor i8 %var_2_811, 1
; Matched:\<badref\>:  store i8 %var_2_1016, i8* %var_2_21, align 1
; store i8 %var_2_812, i8* %var_2_24, align 1
; Matched:%var_2_1017:  %var_2_1017 = xor i32 %var_2_1008, %var_2_1003
; %var_2_813 = xor i32 %var_2_804, %var_2_799
; Matched:%var_2_1018:  %var_2_1018 = xor i32 %var_2_1017, %var_2_1009
; %var_2_814 = xor i32 %var_2_813, %var_2_805
; Matched:%var_2_1019:  %var_2_1019 = lshr i32 %var_2_1018, 4
; %var_2_815 = lshr i32 %var_2_814, 4
; Matched:%var_2_1020:  %var_2_1020 = trunc i32 %var_2_1019 to i8
; %var_2_816 = trunc i32 %var_2_815 to i8
; Matched:%var_2_1021:  %var_2_1021 = and i8 %var_2_1020, 1
; %var_2_817 = and i8 %var_2_816, 1
; Matched:\<badref\>:  store i8 %var_2_1021, i8* %var_2_26, align 1
; store i8 %var_2_817, i8* %var_2_29, align 1
; Matched:%var_2_1022:  %var_2_1022 = icmp eq i32 %var_2_1009, 0
; %var_2_818 = icmp eq i32 %var_2_805, 0
; Matched:%var_2_1023:  %var_2_1023 = zext i1 %var_2_1022 to i8
; %var_2_819 = zext i1 %var_2_818 to i8
; Matched:\<badref\>:  store i8 %var_2_1023, i8* %var_2_29, align 1
; store i8 %var_2_819, i8* %var_2_32, align 1
; Matched:%var_2_1024:  %var_2_1024 = lshr i32 %var_2_1009, 31
; %var_2_820 = lshr i32 %var_2_805, 31
; Matched:%var_2_1025:  %var_2_1025 = trunc i32 %var_2_1024 to i8
; %var_2_821 = trunc i32 %var_2_820 to i8
; Matched:\<badref\>:  store i8 %var_2_1025, i8* %var_2_32, align 1
; store i8 %var_2_821, i8* %var_2_35, align 1
; Matched:%var_2_1026:  %var_2_1026 = lshr i32 %var_2_1003, 31
; %var_2_822 = lshr i32 %var_2_799, 31
; Matched:%var_2_1027:  %var_2_1027 = lshr i32 %var_2_1008, 31
; %var_2_823 = lshr i32 %var_2_804, 31
; Matched:%var_2_1028:  %var_2_1028 = xor i32 %var_2_1027, %var_2_1026
; %var_2_824 = xor i32 %var_2_823, %var_2_822
; Matched:%var_2_1029:  %var_2_1029 = xor i32 %var_2_1024, %var_2_1026
; %var_2_825 = xor i32 %var_2_820, %var_2_822
; Matched:%var_2_1030:  %var_2_1030 = add nuw nsw i32 %var_2_1029, %var_2_1028
; %var_2_826 = add nuw nsw i32 %var_2_825, %var_2_824
; Matched:%var_2_1031:  %var_2_1031 = icmp eq i32 %var_2_1030, 2
; %var_2_827 = icmp eq i32 %var_2_826, 2
; Matched:%var_2_1032:  %var_2_1032 = zext i1 %var_2_1031 to i8
; %var_2_828 = zext i1 %var_2_827 to i8
; Matched:\<badref\>:  store i8 %var_2_1032, i8* %var_2_38, align 1
; store i8 %var_2_828, i8* %var_2_41, align 1
%var_2_829 = add i64 %var_2_795, -165
; Matched:%var_2_1034:  %var_2_1034 = add i64 %var_2_998, 16
; %var_2_830 = add i64 %var_2_794, 16
; Matched:\<badref\>:  store i64 %var_2_1034, i64* %var_2_3, align 8
; store i64 %var_2_830, i64* %PC, align 8
%var_2_831 = inttoptr i64 %var_2_829 to i8*
store i8 0, i8* %var_2_831, align 1
; Matched:%var_2_1036:  %var_2_1036 = load i64, i64* %var_2_3, align 8
; %var_2_832 = load i64, i64* %PC, align 8
; Matched:%var_2_1037:  %var_2_1037 = add i64 %var_2_1036, 21
; %var_2_833 = add i64 %var_2_832, 21
; Matched:%var_2_1038:  %var_2_1038 = add i64 %var_2_1036, 6
; %var_2_834 = add i64 %var_2_832, 6
%var_2_835 = load i8, i8* %var_2_35, align 1
%var_2_836 = icmp ne i8 %var_2_835, 0
%var_2_837 = load i8, i8* %var_2_41, align 1
%var_2_838 = icmp ne i8 %var_2_837, 0
%var_2_839 = xor i1 %var_2_836, %var_2_838
; Matched:%var_2_1044:  %var_2_1044 = select i1 %var_2_1043, i64 %var_2_1037, i64 %var_2_1038
; %var_2_840 = select i1 %var_2_839, i64 %var_2_833, i64 %var_2_834
; Matched:\<badref\>:  store i64 %var_2_1044, i64* %var_2_3, align 8
; store i64 %var_2_840, i64* %PC, align 8
br i1 %var_2_839, label %block_400d63, label %block_400d54

block_400d35:                                     ; preds = %block_400c3b, %block_400d30
%var_2_841 = phi i64 [ %var_2_1611, %block_400c3b ], [ %var_2_1548, %block_400d30 ]
; Matched:%var_2_972:  %var_2_972 = phi i64 [ %var_2_443, %block_400c3b ], [ %.pre47, %block_.L_400d30 ]
; %var_2_842 = phi i64 [ %var_2_1689, %block_400c3b ], [ %.pre101, %block_400d30 ]
; Matched:%var_2_973:  %var_2_973 = add i64 %var_2_972, -52
; %var_2_843 = add i64 %var_2_842, -52
; Matched:%var_2_974:  %var_2_974 = add i64 %var_2_971, 3
; %var_2_844 = add i64 %var_2_841, 3
; Matched:\<badref\>:  store i64 %var_2_974, i64* %var_2_3, align 8
; store i64 %var_2_844, i64* %PC, align 8
; Matched:%var_2_975:  %var_2_975 = inttoptr i64 %var_2_973 to i32*
; %var_2_845 = inttoptr i64 %var_2_843 to i32*
; Matched:%var_2_976:  %var_2_976 = load i32, i32* %var_2_975, align 4
; %var_2_846 = load i32, i32* %var_2_845, align 4
; Matched:%var_2_977:  %var_2_977 = zext i32 %var_2_976 to i64
; %var_2_847 = zext i32 %var_2_846 to i64
; Matched:%var_2_978:  %var_2_978 = shl nuw i64 %var_2_977, 32
; %var_2_848 = shl nuw i64 %var_2_847, 32
; Matched:%var_2_979:  %var_2_979 = ashr i64 %var_2_978, 33
; %var_2_849 = ashr i64 %var_2_848, 33
; Matched:%var_2_980:  %var_2_980 = trunc i32 %var_2_976 to i8
; %var_2_850 = trunc i32 %var_2_846 to i8
; Matched:%var_2_981:  %var_2_981 = and i8 %var_2_980, 1
; %var_2_851 = and i8 %var_2_850, 1
; Matched:%var_2_982:  %var_2_982 = trunc i64 %var_2_979 to i32
; %var_2_852 = trunc i64 %var_2_849 to i32
; Matched:%var_2_983:  %var_2_983 = and i64 %var_2_979, 4294967295
; %var_2_853 = and i64 %var_2_849, 4294967295
; Matched:\<badref\>:  store i64 %var_2_983, i64* %RAX.i798, align 8
; store i64 %var_2_853, i64* %RAX, align 8
; Matched:\<badref\>:  store i8 %var_2_981, i8* %var_2_14, align 1
; store i8 %var_2_851, i8* %var_2_17, align 1
; Matched:%var_2_984:  %var_2_984 = and i32 %var_2_982, 255
; %var_2_854 = and i32 %var_2_852, 255
; Matched:%var_2_985:  %var_2_985 = tail call i32 @llvm.ctpop.i32(i32 %var_2_984)
; %var_2_855 = tail call i32 @llvm.ctpop.i32(i32 %var_2_854) #14
; Matched:%var_2_986:  %var_2_986 = trunc i32 %var_2_985 to i8
; %var_2_856 = trunc i32 %var_2_855 to i8
; Matched:%var_2_987:  %var_2_987 = and i8 %var_2_986, 1
; %var_2_857 = and i8 %var_2_856, 1
; Matched:%var_2_988:  %var_2_988 = xor i8 %var_2_987, 1
; %var_2_858 = xor i8 %var_2_857, 1
; Matched:\<badref\>:  store i8 %var_2_988, i8* %var_2_21, align 1
; store i8 %var_2_858, i8* %var_2_24, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_989:  %var_2_989 = icmp eq i32 %var_2_982, 0
; %var_2_859 = icmp eq i32 %var_2_852, 0
; Matched:%var_2_990:  %var_2_990 = zext i1 %var_2_989 to i8
; %var_2_860 = zext i1 %var_2_859 to i8
; Matched:\<badref\>:  store i8 %var_2_990, i8* %var_2_29, align 1
; store i8 %var_2_860, i8* %var_2_32, align 1
; Matched:%var_2_991:  %var_2_991 = lshr i64 %var_2_979, 31
; %var_2_861 = lshr i64 %var_2_849, 31
; Matched:%var_2_992:  %var_2_992 = trunc i64 %var_2_991 to i8
; %var_2_862 = trunc i64 %var_2_861 to i8
; Matched:%var_2_993:  %var_2_993 = and i8 %var_2_992, 1
; %var_2_863 = and i8 %var_2_862, 1
; Matched:\<badref\>:  store i8 %var_2_993, i8* %var_2_32, align 1
; store i8 %var_2_863, i8* %var_2_35, align 1
store i8 0, i8* %var_2_41, align 1
; Matched:%var_2_994:  %var_2_994 = add i64 %var_2_972, -68
; %var_2_864 = add i64 %var_2_842, -68
; Matched:%var_2_995:  %var_2_995 = trunc i64 %var_2_979 to i32
; %var_2_865 = trunc i64 %var_2_849 to i32
%var_2_866 = add i64 %var_2_841, 9
store i64 %var_2_866, i64* %PC, align 8
; Matched:%var_2_997:  %var_2_997 = inttoptr i64 %var_2_994 to i32*
; %var_2_867 = inttoptr i64 %var_2_864 to i32*
; Matched:\<badref\>:  store i32 %var_2_995, i32* %var_2_997, align 4
; store i32 %var_2_865, i32* %var_2_867, align 4
; Matched:  %.pre48 = load i64, i64* %var_2_3, align 8
; %.pre102 = load i64, i64* %PC, align 8
  br label %block_400d3e

block_400eb0:                                     ; preds = %block_400ebc, %block_400eaa
; Matched:%var_2_1568:  %var_2_1568 = phi i64 [ %var_2_2008, %block_400ebc ], [ %.pre58, %block_400eaa ]
; %var_2_868 = phi i64 [ %var_2_1547, %block_400ebc ], [ %.pre112, %block_400eaa ]
%var_2_869 = load i64, i64* %RBP, align 8
%var_2_870 = add i64 %var_2_869, -32
; Matched:%var_2_1571:  %var_2_1571 = add i64 %var_2_1568, 3
; %var_2_871 = add i64 %var_2_868, 3
; Matched:\<badref\>:  store i64 %var_2_1571, i64* %var_2_3, align 8
; store i64 %var_2_871, i64* %PC, align 8
%var_2_872 = inttoptr i64 %var_2_870 to i32*
%var_2_873 = load i32, i32* %var_2_872, align 4
; Matched:%var_2_1574:  %var_2_1574 = zext i32 %var_2_1573 to i64
; %var_2_874 = zext i32 %var_2_873 to i64
; Matched:\<badref\>:  store i64 %var_2_1574, i64* %RAX.i798, align 8
; store i64 %var_2_874, i64* %RAX, align 8
%var_2_875 = add i64 %var_2_869, -56
; Matched:%var_2_1576:  %var_2_1576 = add i64 %var_2_1568, 6
; %var_2_876 = add i64 %var_2_868, 6
; Matched:\<badref\>:  store i64 %var_2_1576, i64* %var_2_3, align 8
; store i64 %var_2_876, i64* %PC, align 8
%var_2_877 = inttoptr i64 %var_2_875 to i32*
%var_2_878 = load i32, i32* %var_2_877, align 4
%var_2_879 = sub i32 %var_2_873, %var_2_878
; Matched:%var_2_1580:  %var_2_1580 = icmp ult i32 %var_2_1573, %var_2_1578
; %var_2_880 = icmp ult i32 %var_2_873, %var_2_878
; Matched:%var_2_1581:  %var_2_1581 = zext i1 %var_2_1580 to i8
; %var_2_881 = zext i1 %var_2_880 to i8
; Matched:\<badref\>:  store i8 %var_2_1581, i8* %var_2_14, align 1
; store i8 %var_2_881, i8* %var_2_17, align 1
; Matched:%var_2_1582:  %var_2_1582 = and i32 %var_2_1579, 255
; %var_2_882 = and i32 %var_2_879, 255
; Matched:%var_2_1583:  %var_2_1583 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1582)
; %var_2_883 = tail call i32 @llvm.ctpop.i32(i32 %var_2_882) #14
; Matched:%var_2_1584:  %var_2_1584 = trunc i32 %var_2_1583 to i8
; %var_2_884 = trunc i32 %var_2_883 to i8
; Matched:%var_2_1585:  %var_2_1585 = and i8 %var_2_1584, 1
; %var_2_885 = and i8 %var_2_884, 1
; Matched:%var_2_1586:  %var_2_1586 = xor i8 %var_2_1585, 1
; %var_2_886 = xor i8 %var_2_885, 1
; Matched:\<badref\>:  store i8 %var_2_1586, i8* %var_2_21, align 1
; store i8 %var_2_886, i8* %var_2_24, align 1
; Matched:%var_2_1587:  %var_2_1587 = xor i32 %var_2_1578, %var_2_1573
; %var_2_887 = xor i32 %var_2_878, %var_2_873
; Matched:%var_2_1588:  %var_2_1588 = xor i32 %var_2_1587, %var_2_1579
; %var_2_888 = xor i32 %var_2_887, %var_2_879
; Matched:%var_2_1589:  %var_2_1589 = lshr i32 %var_2_1588, 4
; %var_2_889 = lshr i32 %var_2_888, 4
; Matched:%var_2_1590:  %var_2_1590 = trunc i32 %var_2_1589 to i8
; %var_2_890 = trunc i32 %var_2_889 to i8
; Matched:%var_2_1591:  %var_2_1591 = and i8 %var_2_1590, 1
; %var_2_891 = and i8 %var_2_890, 1
; Matched:\<badref\>:  store i8 %var_2_1591, i8* %var_2_26, align 1
; store i8 %var_2_891, i8* %var_2_29, align 1
%var_2_892 = icmp eq i32 %var_2_879, 0
; Matched:%var_2_1593:  %var_2_1593 = zext i1 %var_2_1592 to i8
; %var_2_893 = zext i1 %var_2_892 to i8
; Matched:\<badref\>:  store i8 %var_2_1593, i8* %var_2_29, align 1
; store i8 %var_2_893, i8* %var_2_32, align 1
%var_2_894 = lshr i32 %var_2_879, 31
%var_2_895 = trunc i32 %var_2_894 to i8
; Matched:\<badref\>:  store i8 %var_2_1595, i8* %var_2_32, align 1
; store i8 %var_2_895, i8* %var_2_35, align 1
%var_2_896 = lshr i32 %var_2_873, 31
%var_2_897 = lshr i32 %var_2_878, 31
%var_2_898 = xor i32 %var_2_897, %var_2_896
%var_2_899 = xor i32 %var_2_894, %var_2_896
%var_2_900 = add nuw nsw i32 %var_2_899, %var_2_898
%var_2_901 = icmp eq i32 %var_2_900, 2
; Matched:%var_2_1602:  %var_2_1602 = zext i1 %var_2_1601 to i8
; %var_2_902 = zext i1 %var_2_901 to i8
; Matched:\<badref\>:  store i8 %var_2_1602, i8* %var_2_38, align 1
; store i8 %var_2_902, i8* %var_2_41, align 1
%var_2_903 = icmp ne i8 %var_2_895, 0
%var_2_904 = xor i1 %var_2_903, %var_2_901
%.demorgan120 = or i1 %var_2_892, %var_2_904
; Matched:  %.v67 = select i1 %.demorgan66, i64 12, i64 270
; %.v121 = select i1 %.demorgan120, i64 12, i64 270
; Matched:%var_2_1605:  %var_2_1605 = add i64 %var_2_1568, %.v67
; %var_2_905 = add i64 %var_2_868, %.v121
; Matched:\<badref\>:  store i64 %var_2_1605, i64* %var_2_3, align 8
; store i64 %var_2_905, i64* %PC, align 8
  br i1 %.demorgan120, label %block_400ebc, label %block_400fbe

block_400eaa:                                     ; preds = %block_400e96
; Matched:%var_2_1515:  %var_2_1515 = add i64 %var_2_1514, -28
; %var_2_906 = add i64 %var_2_1772, -28
; Matched:%var_2_1561:  %var_2_1561 = add i64 %var_2_1558, 3
; %var_2_907 = add i64 %var_2_1771, 3
; Matched:\<badref\>:  store i64 %var_2_1561, i64* %var_2_3, align 8
; store i64 %var_2_907, i64* %PC, align 8
; Matched:%var_2_1517:  %var_2_1517 = inttoptr i64 %var_2_1515 to i32*
; %var_2_908 = inttoptr i64 %var_2_906 to i32*
; Matched:%var_2_570:  %var_2_570 = load i32, i32* %var_2_569, align 4
; %var_2_909 = load i32, i32* %var_2_908, align 4
; Matched:%var_2_1519:  %var_2_1519 = zext i32 %var_2_1518 to i64
; %var_2_910 = zext i32 %var_2_909 to i64
; Matched:\<badref\>:  store i64 %var_2_1519, i64* %RAX.i798, align 8
; store i64 %var_2_910, i64* %RAX, align 8
; Matched:%var_2_1565:  %var_2_1565 = add i64 %var_2_1559, -32
; %var_2_911 = add i64 %var_2_1772, -32
; Matched:%var_2_1566:  %var_2_1566 = add i64 %var_2_1558, 6
; %var_2_912 = add i64 %var_2_1771, 6
; Matched:\<badref\>:  store i64 %var_2_1566, i64* %var_2_3, align 8
; store i64 %var_2_912, i64* %PC, align 8
; Matched:%var_2_1567:  %var_2_1567 = inttoptr i64 %var_2_1565 to i32*
; %var_2_913 = inttoptr i64 %var_2_911 to i32*
; Matched:\<badref\>:  store i32 %var_2_1563, i32* %var_2_1567, align 4
; store i32 %var_2_909, i32* %var_2_913, align 4
; Matched:  %.pre58 = load i64, i64* %var_2_3, align 8
; %.pre112 = load i64, i64* %PC, align 8
  br label %block_400eb0

block_400d54:                                     ; preds = %block_400d3e
%var_2_914 = load i64, i64* %RBP, align 8
%var_2_915 = add i64 %var_2_914, -40
; Matched:%var_2_1047:  %var_2_1047 = add i64 %var_2_1044, 3
; %var_2_916 = add i64 %var_2_840, 3
; Matched:\<badref\>:  store i64 %var_2_1047, i64* %var_2_3, align 8
; store i64 %var_2_916, i64* %PC, align 8
%var_2_917 = inttoptr i64 %var_2_915 to i32*
%var_2_918 = load i32, i32* %var_2_917, align 4
; Matched:%var_2_1050:  %var_2_1050 = zext i32 %var_2_1049 to i64
; %var_2_919 = zext i32 %var_2_918 to i64
; Matched:\<badref\>:  store i64 %var_2_617, i64* %RAX.i798, align 8
; store i64 %var_2_919, i64* %RAX, align 8
%var_2_920 = add i64 %var_2_914, -68
; Matched:%var_2_1052:  %var_2_1052 = add i64 %var_2_1044, 6
; %var_2_921 = add i64 %var_2_840, 6
; Matched:\<badref\>:  store i64 %var_2_1052, i64* %var_2_3, align 8
; store i64 %var_2_921, i64* %PC, align 8
%var_2_922 = inttoptr i64 %var_2_920 to i32*
%var_2_923 = load i32, i32* %var_2_922, align 4
; Matched:%var_2_1055:  %var_2_1055 = sub i32 %var_2_1049, %var_2_1054
; %var_2_924 = sub i32 %var_2_918, %var_2_923
; Matched:%var_2_1188:  %var_2_1188 = icmp ult i32 %var_2_1185, %var_2_1180
; %var_2_925 = icmp ult i32 %var_2_918, %var_2_923
; Matched:%var_2_1057:  %var_2_1057 = zext i1 %var_2_1056 to i8
; %var_2_926 = zext i1 %var_2_925 to i8
; Matched:\<badref\>:  store i8 %var_2_1189, i8* %var_2_14, align 1
; store i8 %var_2_926, i8* %var_2_17, align 1
; Matched:%var_2_1058:  %var_2_1058 = and i32 %var_2_1055, 255
; %var_2_927 = and i32 %var_2_924, 255
; Matched:%var_2_1059:  %var_2_1059 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1058)
; %var_2_928 = tail call i32 @llvm.ctpop.i32(i32 %var_2_927) #14
; Matched:%var_2_1060:  %var_2_1060 = trunc i32 %var_2_1059 to i8
; %var_2_929 = trunc i32 %var_2_928 to i8
; Matched:%var_2_1061:  %var_2_1061 = and i8 %var_2_1060, 1
; %var_2_930 = and i8 %var_2_929, 1
; Matched:%var_2_1062:  %var_2_1062 = xor i8 %var_2_1061, 1
; %var_2_931 = xor i8 %var_2_930, 1
; Matched:\<badref\>:  store i8 %var_2_1194, i8* %var_2_21, align 1
; store i8 %var_2_931, i8* %var_2_24, align 1
; Matched:%var_2_1063:  %var_2_1063 = xor i32 %var_2_1054, %var_2_1049
; %var_2_932 = xor i32 %var_2_923, %var_2_918
; Matched:%var_2_1196:  %var_2_1196 = xor i32 %var_2_1195, %var_2_1186
; %var_2_933 = xor i32 %var_2_932, %var_2_924
; Matched:%var_2_1065:  %var_2_1065 = lshr i32 %var_2_1064, 4
; %var_2_934 = lshr i32 %var_2_933, 4
; Matched:%var_2_1066:  %var_2_1066 = trunc i32 %var_2_1065 to i8
; %var_2_935 = trunc i32 %var_2_934 to i8
; Matched:%var_2_1067:  %var_2_1067 = and i8 %var_2_1066, 1
; %var_2_936 = and i8 %var_2_935, 1
; Matched:\<badref\>:  store i8 %var_2_1067, i8* %var_2_26, align 1
; store i8 %var_2_936, i8* %var_2_29, align 1
; Matched:%var_2_1068:  %var_2_1068 = icmp eq i32 %var_2_1055, 0
; %var_2_937 = icmp eq i32 %var_2_924, 0
; Matched:%var_2_1201:  %var_2_1201 = zext i1 %var_2_1200 to i8
; %var_2_938 = zext i1 %var_2_937 to i8
; Matched:\<badref\>:  store i8 %var_2_1069, i8* %var_2_29, align 1
; store i8 %var_2_938, i8* %var_2_32, align 1
; Matched:%var_2_1202:  %var_2_1202 = lshr i32 %var_2_1186, 31
; %var_2_939 = lshr i32 %var_2_924, 31
; Matched:%var_2_1071:  %var_2_1071 = trunc i32 %var_2_1070 to i8
; %var_2_940 = trunc i32 %var_2_939 to i8
; Matched:\<badref\>:  store i8 %var_2_1071, i8* %var_2_32, align 1
; store i8 %var_2_940, i8* %var_2_35, align 1
; Matched:%var_2_1072:  %var_2_1072 = lshr i32 %var_2_1049, 31
; %var_2_941 = lshr i32 %var_2_918, 31
; Matched:%var_2_1073:  %var_2_1073 = lshr i32 %var_2_1054, 31
; %var_2_942 = lshr i32 %var_2_923, 31
; Matched:%var_2_1074:  %var_2_1074 = xor i32 %var_2_1073, %var_2_1072
; %var_2_943 = xor i32 %var_2_942, %var_2_941
; Matched:%var_2_1207:  %var_2_1207 = xor i32 %var_2_1202, %var_2_1204
; %var_2_944 = xor i32 %var_2_939, %var_2_941
; Matched:%var_2_1076:  %var_2_1076 = add nuw nsw i32 %var_2_1075, %var_2_1074
; %var_2_945 = add nuw nsw i32 %var_2_944, %var_2_943
; Matched:%var_2_1209:  %var_2_1209 = icmp eq i32 %var_2_1208, 2
; %var_2_946 = icmp eq i32 %var_2_945, 2
; Matched:%var_2_1078:  %var_2_1078 = zext i1 %var_2_1077 to i8
; %var_2_947 = zext i1 %var_2_946 to i8
; Matched:\<badref\>:  store i8 %var_2_1078, i8* %var_2_38, align 1
; store i8 %var_2_947, i8* %var_2_41, align 1
; Matched:%var_2_1079:  %var_2_1079 = icmp ne i8 %var_2_1071, 0
; %var_2_948 = icmp ne i8 %var_2_940, 0
; Matched:%var_2_1080:  %var_2_1080 = xor i1 %var_2_1079, %var_2_1077
; %var_2_949 = xor i1 %var_2_948, %var_2_946
; Matched:  %.demorgan60 = or i1 %var_2_1068, %var_2_1080
; %.demorgan114 = or i1 %var_2_937, %var_2_949
; Matched:%var_2_1081:  %var_2_1081 = xor i1 %.demorgan60, true
; %var_2_950 = xor i1 %.demorgan114, true
; Matched:%var_2_1082:  %var_2_1082 = zext i1 %var_2_1081 to i8
; %var_2_951 = zext i1 %var_2_950 to i8
; Matched:\<badref\>:  store i8 %var_2_1082, i8* %CL.i489, align 1
; store i8 %var_2_951, i8* %CL, align 1
; Matched:%var_2_1083:  %var_2_1083 = add i64 %var_2_1045, -165
; %var_2_952 = add i64 %var_2_914, -165
; Matched:%var_2_1084:  %var_2_1084 = add i64 %var_2_1044, 15
; %var_2_953 = add i64 %var_2_840, 15
; Matched:\<badref\>:  store i64 %var_2_1084, i64* %var_2_3, align 8
; store i64 %var_2_953, i64* %PC, align 8
; Matched:%var_2_1085:  %var_2_1085 = inttoptr i64 %var_2_1083 to i8*
; %var_2_954 = inttoptr i64 %var_2_952 to i8*
; Matched:\<badref\>:  store i8 %var_2_1082, i8* %var_2_1085, align 1
; store i8 %var_2_951, i8* %var_2_954, align 1
; Matched:  %.pre49 = load i64, i64* %var_2_3, align 8
; %.pre103 = load i64, i64* %PC, align 8
  br label %block_400d63

block_400da6:                                     ; preds = %block_400c2f
; Matched:%var_2_1138:  %var_2_1138 = add i64 %var_2_1137, -48
; %var_2_955 = add i64 %var_2_1689, -48
; Matched:%var_2_480:  %var_2_480 = add i64 %var_2_479, 3
; %var_2_956 = add i64 %var_2_1725, 3
; Matched:\<badref\>:  store i64 %var_2_480, i64* %var_2_3, align 8
; store i64 %var_2_956, i64* %PC, align 8
; Matched:%var_2_1141:  %var_2_1141 = inttoptr i64 %var_2_1138 to i32*
; %var_2_957 = inttoptr i64 %var_2_955 to i32*
; Matched:%var_2_375:  %var_2_375 = load i32, i32* %var_2_374, align 4
; %var_2_958 = load i32, i32* %var_2_957, align 4
; Matched:%var_2_376:  %var_2_376 = zext i32 %var_2_375 to i64
; %var_2_959 = zext i32 %var_2_958 to i64
; Matched:\<badref\>:  store i64 %var_2_1243, i64* %RAX.i798, align 8
; store i64 %var_2_959, i64* %RAX, align 8
; Matched:%var_2_1244:  %var_2_1244 = add i64 %var_2_443, -60
; %var_2_960 = add i64 %var_2_1689, -60
; Matched:%var_2_1245:  %var_2_1245 = add i64 %var_2_479, 6
; %var_2_961 = add i64 %var_2_1725, 6
; Matched:\<badref\>:  store i64 %var_2_484, i64* %var_2_3, align 8
; store i64 %var_2_961, i64* %PC, align 8
; Matched:%var_2_1246:  %var_2_1246 = inttoptr i64 %var_2_1244 to i32*
; %var_2_962 = inttoptr i64 %var_2_960 to i32*
; Matched:\<badref\>:  store i32 %var_2_1242, i32* %var_2_1246, align 4
; store i32 %var_2_958, i32* %var_2_962, align 4
  %.pre104 = load i64, i64* %PC, align 8
  br label %block_400dac

block_400bda:                                     ; preds = %block_400bd0
; Matched:%var_2_112:  %var_2_112 = add i64 %var_2_75, -16
; %var_2_963 = add i64 %var_2_659, -16
; Matched:%var_2_261:  %var_2_261 = add i64 %var_2_259, 4
; %var_2_964 = add i64 %var_2_687, 4
; Matched:\<badref\>:  store i64 %var_2_261, i64* %var_2_3, align 8
; store i64 %var_2_964, i64* %PC, align 8
; Matched:%var_2_114:  %var_2_114 = inttoptr i64 %var_2_112 to i64*
; %var_2_965 = inttoptr i64 %var_2_963 to i64*
; Matched:%var_2_263:  %var_2_263 = load i64, i64* %var_2_262, align 8
; %var_2_966 = load i64, i64* %var_2_965, align 8
; Matched:\<badref\>:  store i64 %var_2_263, i64* %RAX.i798, align 8
; store i64 %var_2_966, i64* %RAX, align 8
; Matched:%var_2_264:  %var_2_264 = add i64 %var_2_259, 8
; %var_2_967 = add i64 %var_2_687, 8
; Matched:\<badref\>:  store i64 %var_2_264, i64* %var_2_3, align 8
; store i64 %var_2_967, i64* %PC, align 8
; Matched:%var_2_117:  %var_2_117 = load i32, i32* %var_2_78, align 4
; %var_2_968 = load i32, i32* %var_2_662, align 4
; Matched:%var_2_266:  %var_2_266 = sext i32 %var_2_265 to i64
; %var_2_969 = sext i32 %var_2_968 to i64
; Matched:\<badref\>:  store i64 %var_2_266, i64* %RCX.i788, align 8
; store i64 %var_2_969, i64* %RCX, align 8
; Matched:%var_2_119:  %var_2_119 = shl nsw i64 %var_2_118, 2
; %var_2_970 = shl nsw i64 %var_2_969, 2
; Matched:%var_2_268:  %var_2_268 = add i64 %var_2_267, %var_2_263
; %var_2_971 = add i64 %var_2_970, %var_2_966
; Matched:%var_2_269:  %var_2_269 = add i64 %var_2_259, 11
; %var_2_972 = add i64 %var_2_687, 11
; Matched:\<badref\>:  store i64 %var_2_269, i64* %var_2_3, align 8
; store i64 %var_2_972, i64* %PC, align 8
; Matched:%var_2_270:  %var_2_270 = inttoptr i64 %var_2_268 to i32*
; %var_2_973 = inttoptr i64 %var_2_971 to i32*
; Matched:%var_2_123:  %var_2_123 = load i32, i32* %var_2_122, align 4
; %var_2_974 = load i32, i32* %var_2_973, align 4
; Matched:%var_2_272:  %var_2_272 = zext i32 %var_2_271 to i64
; %var_2_975 = zext i32 %var_2_974 to i64
; Matched:\<badref\>:  store i64 %var_2_272, i64* %RDX.i786, align 8
; store i64 %var_2_975, i64* %RDX, align 8
; Matched:%var_2_273:  %var_2_273 = add i64 %var_2_231, -84
; %var_2_976 = add i64 %var_2_659, -84
; Matched:%var_2_274:  %var_2_274 = add i64 %var_2_259, 14
; %var_2_977 = add i64 %var_2_687, 14
; Matched:\<badref\>:  store i64 %var_2_274, i64* %var_2_3, align 8
; store i64 %var_2_977, i64* %PC, align 8
; Matched:%var_2_275:  %var_2_275 = inttoptr i64 %var_2_273 to i32*
; %var_2_978 = inttoptr i64 %var_2_976 to i32*
; Matched:\<badref\>:  store i32 %var_2_271, i32* %var_2_275, align 4
; store i32 %var_2_974, i32* %var_2_978, align 4
%var_2_979 = load i64, i64* %RBP, align 8
; Matched:%var_2_277:  %var_2_277 = add i64 %var_2_276, -96
; %var_2_980 = add i64 %var_2_979, -96
%var_2_981 = load i64, i64* %PC, align 8
; Matched:%var_2_61:  %var_2_61 = add i64 %var_2_60, 3
; %var_2_982 = add i64 %var_2_981, 3
; Matched:\<badref\>:  store i64 %var_2_61, i64* %var_2_3, align 8
; store i64 %var_2_982, i64* %PC, align 8
; Matched:%var_2_280:  %var_2_280 = inttoptr i64 %var_2_277 to i32*
; %var_2_983 = inttoptr i64 %var_2_980 to i32*
; Matched:%var_2_281:  %var_2_281 = load i32, i32* %var_2_280, align 4
; %var_2_984 = load i32, i32* %var_2_983, align 4
; Matched:%var_2_282:  %var_2_282 = zext i32 %var_2_281 to i64
; %var_2_985 = zext i32 %var_2_984 to i64
; Matched:\<badref\>:  store i64 %var_2_282, i64* %RAX.i798, align 8
; store i64 %var_2_985, i64* %RAX, align 8
; Matched:%var_2_283:  %var_2_283 = add i64 %var_2_276, -84
; %var_2_986 = add i64 %var_2_979, -84
; Matched:%var_2_2108:  %var_2_2108 = add i64 %var_2_2102, 6
; %var_2_987 = add i64 %var_2_981, 6
; Matched:\<badref\>:  store i64 %var_2_2108, i64* %var_2_3, align 8
; store i64 %var_2_987, i64* %PC, align 8
; Matched:%var_2_2151:  %var_2_2151 = inttoptr i64 %var_2_2149 to i32*
; %var_2_988 = inttoptr i64 %var_2_986 to i32*
; Matched:%var_2_2152:  %var_2_2152 = load i32, i32* %var_2_2151, align 4
; %var_2_989 = load i32, i32* %var_2_988, align 4
; Matched:%var_2_287:  %var_2_287 = zext i32 %var_2_286 to i64
; %var_2_990 = zext i32 %var_2_989 to i64
; Matched:\<badref\>:  store i64 %var_2_287, i64* %RDX.i786, align 8
; store i64 %var_2_990, i64* %RDX, align 8
%var_2_991 = add i64 %var_2_979, -88
; Matched:%var_2_289:  %var_2_289 = add i64 %var_2_278, 10
; %var_2_992 = add i64 %var_2_981, 10
; Matched:\<badref\>:  store i64 %var_2_399, i64* %var_2_3, align 8
; store i64 %var_2_992, i64* %PC, align 8
%var_2_993 = inttoptr i64 %var_2_991 to i32*
; Matched:%var_2_2157:  %var_2_2157 = load i32, i32* %var_2_2156, align 4
; %var_2_994 = load i32, i32* %var_2_993, align 4
; Matched:%var_2_2158:  %var_2_2158 = sext i32 %var_2_2152 to i64
; %var_2_995 = sext i32 %var_2_989 to i64
; Matched:%var_2_293:  %var_2_293 = sext i32 %var_2_291 to i64
; %var_2_996 = sext i32 %var_2_994 to i64
; Matched:%var_2_294:  %var_2_294 = mul nsw i64 %var_2_293, %var_2_292
; %var_2_997 = mul nsw i64 %var_2_996, %var_2_995
; Matched:%var_2_2161:  %var_2_2161 = trunc i64 %var_2_2160 to i32
; %var_2_998 = trunc i64 %var_2_997 to i32
; Matched:%var_2_2163:  %var_2_2163 = shl i64 %var_2_2160, 32
; %var_2_999 = shl i64 %var_2_997, 32
; Matched:%var_2_2164:  %var_2_2164 = ashr exact i64 %var_2_2163, 32
; %var_2_1000 = ashr exact i64 %var_2_999, 32
; Matched:%var_2_2165:  %var_2_2165 = icmp ne i64 %var_2_2164, %var_2_2160
; %var_2_1001 = icmp ne i64 %var_2_1000, %var_2_997
; Matched:%var_2_2166:  %var_2_2166 = zext i1 %var_2_2165 to i8
; %var_2_1002 = zext i1 %var_2_1001 to i8
; Matched:\<badref\>:  store i8 %var_2_299, i8* %var_2_14, align 1
; store i8 %var_2_1002, i8* %var_2_17, align 1
; Matched:%var_2_2167:  %var_2_2167 = and i32 %var_2_2161, 255
; %var_2_1003 = and i32 %var_2_998, 255
; Matched:%var_2_2168:  %var_2_2168 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2167)
; %var_2_1004 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1003) #14
; Matched:%var_2_2169:  %var_2_2169 = trunc i32 %var_2_2168 to i8
; %var_2_1005 = trunc i32 %var_2_1004 to i8
; Matched:%var_2_303:  %var_2_303 = and i8 %var_2_302, 1
; %var_2_1006 = and i8 %var_2_1005, 1
; Matched:%var_2_304:  %var_2_304 = xor i8 %var_2_303, 1
; %var_2_1007 = xor i8 %var_2_1006, 1
; Matched:\<badref\>:  store i8 %var_2_2171, i8* %var_2_21, align 1
; store i8 %var_2_1007, i8* %var_2_24, align 1
store i8 0, i8* %var_2_29, align 1
store i8 0, i8* %var_2_32, align 1
; Matched:%var_2_2172:  %var_2_2172 = lshr i32 %var_2_2161, 31
; %var_2_1008 = lshr i32 %var_2_998, 31
; Matched:%var_2_2173:  %var_2_2173 = trunc i32 %var_2_2172 to i8
; %var_2_1009 = trunc i32 %var_2_1008 to i8
; Matched:\<badref\>:  store i8 %var_2_2173, i8* %var_2_32, align 1
; store i8 %var_2_1009, i8* %var_2_35, align 1
; Matched:\<badref\>:  store i8 %var_2_299, i8* %var_2_38, align 1
; store i8 %var_2_1002, i8* %var_2_41, align 1
; Matched:%var_2_307:  %var_2_307 = add i64 %var_2_276, -164
; %var_2_1010 = add i64 %var_2_979, -164
; Matched:%var_2_308:  %var_2_308 = trunc i64 %var_2_294 to i32
; %var_2_1011 = trunc i64 %var_2_997 to i32
; Matched:%var_2_1418:  %var_2_1418 = add i64 %var_2_1413, 16
; %var_2_1012 = add i64 %var_2_981, 16
; Matched:\<badref\>:  store i64 %var_2_1664, i64* %var_2_3, align 8
; store i64 %var_2_1012, i64* %PC, align 8
; Matched:%var_2_310:  %var_2_310 = inttoptr i64 %var_2_307 to i32*
; %var_2_1013 = inttoptr i64 %var_2_1010 to i32*
; Matched:\<badref\>:  store i32 %var_2_308, i32* %var_2_310, align 4
; store i32 %var_2_1011, i32* %var_2_1013, align 4
%var_2_1014 = load i64, i64* %PC, align 8
%var_2_1015 = load i32, i32* %EAX, align 8
%var_2_1016 = sext i32 %var_2_1015 to i64
%var_2_1017 = lshr i64 %var_2_1016, 32
; Matched:\<badref\>:  store i64 %var_2_314, i64* %var_2_192, align 8
; store i64 %var_2_1017, i64* %var_2_1827, align 8
%var_2_1018 = load i64, i64* %RBP, align 8
%var_2_1019 = add i64 %var_2_1018, -164
; Matched:%var_2_792:  %var_2_792 = add i64 %var_2_787, 7
; %var_2_1020 = add i64 %var_2_1014, 7
; Matched:\<badref\>:  store i64 %var_2_792, i64* %var_2_3, align 8
; store i64 %var_2_1020, i64* %PC, align 8
%var_2_1021 = inttoptr i64 %var_2_1019 to i32*
%var_2_1022 = load i32, i32* %var_2_1021, align 4
; Matched:%var_2_320:  %var_2_320 = zext i32 %var_2_319 to i64
; %var_2_1023 = zext i32 %var_2_1022 to i64
; Matched:\<badref\>:  store i64 %var_2_320, i64* %RSI.i811, align 8
; store i64 %var_2_1023, i64* %RSI, align 8
%var_2_1024 = add i64 %var_2_1014, 9
store i64 %var_2_1024, i64* %PC, align 8
%var_2_1025 = zext i32 %var_2_1015 to i64
%var_2_1026 = sext i32 %var_2_1022 to i64
%var_2_1027 = shl nuw i64 %var_2_1017, 32
%var_2_1028 = or i64 %var_2_1027, %var_2_1025
%var_2_1029 = sdiv i64 %var_2_1028, %var_2_1026
%var_2_1030 = shl i64 %var_2_1029, 32
%var_2_1031 = ashr exact i64 %var_2_1030, 32
%var_2_1032 = icmp eq i64 %var_2_1029, %var_2_1031
br i1 %var_2_1032, label %var_2_1035, label %var_2_1033

var_2_1033:
%var_2_1034 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_1024, %struct.Memory* %MEMORY.1) #16
; Matched:  %.pre41 = load i64, i64* %RBP.i, align 8
; %.pre95 = load i64, i64* %RBP, align 8
; Matched:  %.pre42 = load i32, i32* %EAX.i795, align 4
; %.pre96 = load i32, i32* %EAX, align 4
; Matched:  %.pre43 = load i64, i64* %var_2_3, align 8
; %.pre97 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

var_2_1035:
; Matched:%var_2_333:  %var_2_333 = srem i64 %var_2_325, %var_2_323
; %var_2_1036 = srem i64 %var_2_1028, %var_2_1026
; Matched:%var_2_334:  %var_2_334 = and i64 %var_2_326, 4294967295
; %var_2_1037 = and i64 %var_2_1029, 4294967295
; Matched:\<badref\>:  store i64 %var_2_334, i64* %RAX.i798, align 8
; store i64 %var_2_1037, i64* %RAX, align 8
; Matched:%var_2_335:  %var_2_335 = and i64 %var_2_333, 4294967295
; %var_2_1038 = and i64 %var_2_1036, 4294967295
; Matched:\<badref\>:  store i64 %var_2_335, i64* %RDX.i786, align 8
; store i64 %var_2_1038, i64* %RDX, align 8
store i8 0, i8* %var_2_17, align 1
store i8 0, i8* %var_2_24, align 1
store i8 0, i8* %var_2_29, align 1
store i8 0, i8* %var_2_32, align 1
store i8 0, i8* %var_2_35, align 1
store i8 0, i8* %var_2_41, align 1
; Matched:%var_2_336:  %var_2_336 = trunc i64 %var_2_326 to i32
; %var_2_1039 = trunc i64 %var_2_1029 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %var_2_1035, %var_2_1033
; Matched:%var_2_337:  %var_2_337 = phi i64 [ %.pre43, %var_2_330 ], [ %var_2_321, %var_2_332 ]
; %var_2_1040 = phi i64 [ %.pre97, %var_2_1033 ], [ %var_2_1024, %var_2_1035 ]
; Matched:%var_2_338:  %var_2_338 = phi i32 [ %.pre42, %var_2_330 ], [ %var_2_336, %var_2_332 ]
; %var_2_1041 = phi i32 [ %.pre96, %var_2_1033 ], [ %var_2_1039, %var_2_1035 ]
; Matched:%var_2_339:  %var_2_339 = phi i64 [ %.pre41, %var_2_330 ], [ %var_2_315, %var_2_332 ]
; %var_2_1042 = phi i64 [ %.pre95, %var_2_1033 ], [ %var_2_1018, %var_2_1035 ]
%var_2_1043 = phi %struct.Memory* [ %var_2_1034, %var_2_1033 ], [ %MEMORY.1, %var_2_1035 ]
; Matched:%var_2_341:  %var_2_341 = add i64 %var_2_339, -92
; %var_2_1044 = add i64 %var_2_1042, -92
; Matched:%var_2_342:  %var_2_342 = add i64 %var_2_337, 3
; %var_2_1045 = add i64 %var_2_1040, 3
; Matched:\<badref\>:  store i64 %var_2_342, i64* %var_2_3, align 8
; store i64 %var_2_1045, i64* %PC, align 8
; Matched:%var_2_343:  %var_2_343 = inttoptr i64 %var_2_341 to i32*
; %var_2_1046 = inttoptr i64 %var_2_1044 to i32*
; Matched:\<badref\>:  store i32 %var_2_338, i32* %var_2_343, align 4
; store i32 %var_2_1041, i32* %var_2_1046, align 4
; Matched:%var_2_344:  %var_2_344 = load i64, i64* %RBP.i, align 8
; %var_2_1047 = load i64, i64* %RBP, align 8
; Matched:%var_2_345:  %var_2_345 = add i64 %var_2_344, -88
; %var_2_1048 = add i64 %var_2_1047, -88
%var_2_1049 = load i64, i64* %PC, align 8
; Matched:%var_2_2179:  %var_2_2179 = add i64 %var_2_2178, 3
; %var_2_1050 = add i64 %var_2_1049, 3
; Matched:\<badref\>:  store i64 %var_2_1140, i64* %var_2_3, align 8
; store i64 %var_2_1050, i64* %PC, align 8
; Matched:%var_2_348:  %var_2_348 = inttoptr i64 %var_2_345 to i32*
; %var_2_1051 = inttoptr i64 %var_2_1048 to i32*
; Matched:%var_2_349:  %var_2_349 = load i32, i32* %var_2_348, align 4
; %var_2_1052 = load i32, i32* %var_2_1051, align 4
; Matched:%var_2_350:  %var_2_350 = shl i32 %var_2_349, 1
; %var_2_1053 = shl i32 %var_2_1052, 1
; Matched:%var_2_351:  %var_2_351 = icmp slt i32 %var_2_349, 0
; %var_2_1054 = icmp slt i32 %var_2_1052, 0
; Matched:%var_2_352:  %var_2_352 = icmp slt i32 %var_2_350, 0
; %var_2_1055 = icmp slt i32 %var_2_1053, 0
; Matched:%var_2_353:  %var_2_353 = xor i1 %var_2_351, %var_2_352
; %var_2_1056 = xor i1 %var_2_1054, %var_2_1055
; Matched:%var_2_354:  %var_2_354 = zext i32 %var_2_350 to i64
; %var_2_1057 = zext i32 %var_2_1053 to i64
; Matched:\<badref\>:  store i64 %var_2_354, i64* %RAX.i798, align 8
; store i64 %var_2_1057, i64* %RAX, align 8
; Matched:  %.lobit = lshr i32 %var_2_349, 31
; %.lobit = lshr i32 %var_2_1052, 31
; Matched:%var_2_355:  %var_2_355 = trunc i32 %.lobit to i8
; %var_2_1058 = trunc i32 %.lobit to i8
; Matched:\<badref\>:  store i8 %var_2_355, i8* %var_2_14, align 1
; store i8 %var_2_1058, i8* %var_2_17, align 1
; Matched:%var_2_356:  %var_2_356 = and i32 %var_2_350, 254
; %var_2_1059 = and i32 %var_2_1053, 254
; Matched:%var_2_357:  %var_2_357 = tail call i32 @llvm.ctpop.i32(i32 %var_2_356)
; %var_2_1060 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1059) #14
; Matched:%var_2_358:  %var_2_358 = trunc i32 %var_2_357 to i8
; %var_2_1061 = trunc i32 %var_2_1060 to i8
; Matched:%var_2_359:  %var_2_359 = and i8 %var_2_358, 1
; %var_2_1062 = and i8 %var_2_1061, 1
; Matched:%var_2_360:  %var_2_360 = xor i8 %var_2_359, 1
; %var_2_1063 = xor i8 %var_2_1062, 1
; Matched:\<badref\>:  store i8 %var_2_360, i8* %var_2_21, align 1
; store i8 %var_2_1063, i8* %var_2_24, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_361:  %var_2_361 = icmp eq i32 %var_2_350, 0
; %var_2_1064 = icmp eq i32 %var_2_1053, 0
; Matched:%var_2_362:  %var_2_362 = zext i1 %var_2_361 to i8
; %var_2_1065 = zext i1 %var_2_1064 to i8
; Matched:\<badref\>:  store i8 %var_2_362, i8* %var_2_29, align 1
; store i8 %var_2_1065, i8* %var_2_32, align 1
; Matched:%var_2_363:  %var_2_363 = lshr i32 %var_2_349, 30
; %var_2_1066 = lshr i32 %var_2_1052, 30
; Matched:%var_2_364:  %var_2_364 = trunc i32 %var_2_363 to i8
; %var_2_1067 = trunc i32 %var_2_1066 to i8
; Matched:%var_2_365:  %var_2_365 = and i8 %var_2_364, 1
; %var_2_1068 = and i8 %var_2_1067, 1
; Matched:\<badref\>:  store i8 %var_2_365, i8* %var_2_32, align 1
; store i8 %var_2_1068, i8* %var_2_35, align 1
; Matched:%var_2_366:  %var_2_366 = zext i1 %var_2_353 to i8
; %var_2_1069 = zext i1 %var_2_1056 to i8
; Matched:\<badref\>:  store i8 %var_2_366, i8* %var_2_38, align 1
; store i8 %var_2_1069, i8* %var_2_41, align 1
; Matched:%var_2_367:  %var_2_367 = add i64 %var_2_344, -48
; %var_2_1070 = add i64 %var_2_1047, -48
%var_2_1071 = add i64 %var_2_1049, 9
store i64 %var_2_1071, i64* %PC, align 8
; Matched:%var_2_369:  %var_2_369 = inttoptr i64 %var_2_367 to i32*
; %var_2_1072 = inttoptr i64 %var_2_1070 to i32*
; Matched:\<badref\>:  store i32 %var_2_350, i32* %var_2_369, align 4
; store i32 %var_2_1053, i32* %var_2_1072, align 4
%var_2_1073 = load i64, i64* %RBP, align 8
; Matched:%var_2_371:  %var_2_371 = add i64 %var_2_370, -48
; %var_2_1074 = add i64 %var_2_1073, -48
%var_2_1075 = load i64, i64* %PC, align 8
; Matched:%var_2_1215:  %var_2_1215 = add i64 %var_2_1214, 3
; %var_2_1076 = add i64 %var_2_1075, 3
; Matched:\<badref\>:  store i64 %var_2_1215, i64* %var_2_3, align 8
; store i64 %var_2_1076, i64* %PC, align 8
; Matched:%var_2_2104:  %var_2_2104 = inttoptr i64 %var_2_2101 to i32*
; %var_2_1077 = inttoptr i64 %var_2_1074 to i32*
; Matched:%var_2_1142:  %var_2_1142 = load i32, i32* %var_2_1141, align 4
; %var_2_1078 = load i32, i32* %var_2_1077, align 4
; Matched:%var_2_1143:  %var_2_1143 = zext i32 %var_2_1142 to i64
; %var_2_1079 = zext i32 %var_2_1078 to i64
; Matched:\<badref\>:  store i64 %var_2_376, i64* %RAX.i798, align 8
; store i64 %var_2_1079, i64* %RAX, align 8
; Matched:%var_2_377:  %var_2_377 = add i64 %var_2_370, -84
; %var_2_1080 = add i64 %var_2_1073, -84
; Matched:%var_2_440:  %var_2_440 = add i64 %var_2_439, 7
; %var_2_1081 = add i64 %var_2_1075, 7
; Matched:\<badref\>:  store i64 %var_2_440, i64* %var_2_3, align 8
; store i64 %var_2_1081, i64* %PC, align 8
; Matched:%var_2_379:  %var_2_379 = inttoptr i64 %var_2_377 to i32*
; %var_2_1082 = inttoptr i64 %var_2_1080 to i32*
; Matched:%var_2_380:  %var_2_380 = load i32, i32* %var_2_379, align 4
; %var_2_1083 = load i32, i32* %var_2_1082, align 4
; Matched:%var_2_381:  %var_2_381 = sext i32 %var_2_375 to i64
; %var_2_1084 = sext i32 %var_2_1078 to i64
; Matched:%var_2_382:  %var_2_382 = sext i32 %var_2_380 to i64
; %var_2_1085 = sext i32 %var_2_1083 to i64
; Matched:%var_2_383:  %var_2_383 = mul nsw i64 %var_2_382, %var_2_381
; %var_2_1086 = mul nsw i64 %var_2_1085, %var_2_1084
; Matched:%var_2_384:  %var_2_384 = trunc i64 %var_2_383 to i32
; %var_2_1087 = trunc i64 %var_2_1086 to i32
; Matched:%var_2_385:  %var_2_385 = and i64 %var_2_383, 4294967295
; %var_2_1088 = and i64 %var_2_1086, 4294967295
; Matched:\<badref\>:  store i64 %var_2_385, i64* %RAX.i798, align 8
; store i64 %var_2_1088, i64* %RAX, align 8
; Matched:%var_2_386:  %var_2_386 = shl i64 %var_2_383, 32
; %var_2_1089 = shl i64 %var_2_1086, 32
; Matched:%var_2_387:  %var_2_387 = ashr exact i64 %var_2_386, 32
; %var_2_1090 = ashr exact i64 %var_2_1089, 32
; Matched:%var_2_388:  %var_2_388 = icmp ne i64 %var_2_387, %var_2_383
; %var_2_1091 = icmp ne i64 %var_2_1090, %var_2_1086
; Matched:%var_2_389:  %var_2_389 = zext i1 %var_2_388 to i8
; %var_2_1092 = zext i1 %var_2_1091 to i8
; Matched:\<badref\>:  store i8 %var_2_389, i8* %var_2_14, align 1
; store i8 %var_2_1092, i8* %var_2_17, align 1
; Matched:%var_2_390:  %var_2_390 = and i32 %var_2_384, 255
; %var_2_1093 = and i32 %var_2_1087, 255
; Matched:%var_2_391:  %var_2_391 = tail call i32 @llvm.ctpop.i32(i32 %var_2_390)
; %var_2_1094 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1093) #14
; Matched:%var_2_392:  %var_2_392 = trunc i32 %var_2_391 to i8
; %var_2_1095 = trunc i32 %var_2_1094 to i8
; Matched:%var_2_393:  %var_2_393 = and i8 %var_2_392, 1
; %var_2_1096 = and i8 %var_2_1095, 1
; Matched:%var_2_394:  %var_2_394 = xor i8 %var_2_393, 1
; %var_2_1097 = xor i8 %var_2_1096, 1
; Matched:\<badref\>:  store i8 %var_2_394, i8* %var_2_21, align 1
; store i8 %var_2_1097, i8* %var_2_24, align 1
store i8 0, i8* %var_2_29, align 1
store i8 0, i8* %var_2_32, align 1
; Matched:%var_2_395:  %var_2_395 = lshr i32 %var_2_384, 31
; %var_2_1098 = lshr i32 %var_2_1087, 31
; Matched:%var_2_396:  %var_2_396 = trunc i32 %var_2_395 to i8
; %var_2_1099 = trunc i32 %var_2_1098 to i8
; Matched:\<badref\>:  store i8 %var_2_396, i8* %var_2_32, align 1
; store i8 %var_2_1099, i8* %var_2_35, align 1
; Matched:\<badref\>:  store i8 %var_2_389, i8* %var_2_38, align 1
; store i8 %var_2_1092, i8* %var_2_41, align 1
; Matched:%var_2_397:  %var_2_397 = add i64 %var_2_370, -52
; %var_2_1100 = add i64 %var_2_1073, -52
; Matched:%var_2_398:  %var_2_398 = trunc i64 %var_2_383 to i32
; %var_2_1101 = trunc i64 %var_2_1086 to i32
; Matched:%var_2_399:  %var_2_399 = add i64 %var_2_372, 10
; %var_2_1102 = add i64 %var_2_1075, 10
; Matched:\<badref\>:  store i64 %var_2_430, i64* %var_2_3, align 8
; store i64 %var_2_1102, i64* %PC, align 8
; Matched:%var_2_400:  %var_2_400 = inttoptr i64 %var_2_397 to i32*
; %var_2_1103 = inttoptr i64 %var_2_1100 to i32*
; Matched:\<badref\>:  store i32 %var_2_398, i32* %var_2_400, align 4
; store i32 %var_2_1101, i32* %var_2_1103, align 4
%var_2_1104 = load i64, i64* %RBP, align 8
; Matched:%var_2_901:  %var_2_901 = add i64 %var_2_900, -52
; %var_2_1105 = add i64 %var_2_1104, -52
%var_2_1106 = load i64, i64* %PC, align 8
; Matched:%var_2_185:  %var_2_185 = add i64 %var_2_184, 3
; %var_2_1107 = add i64 %var_2_1106, 3
; Matched:\<badref\>:  store i64 %var_2_185, i64* %var_2_3, align 8
; store i64 %var_2_1107, i64* %PC, align 8
; Matched:%var_2_904:  %var_2_904 = inttoptr i64 %var_2_901 to i32*
; %var_2_1108 = inttoptr i64 %var_2_1105 to i32*
; Matched:%var_2_406:  %var_2_406 = load i32, i32* %var_2_405, align 4
; %var_2_1109 = load i32, i32* %var_2_1108, align 4
; Matched:%var_2_407:  %var_2_407 = zext i32 %var_2_406 to i64
; %var_2_1110 = zext i32 %var_2_1109 to i64
; Matched:\<badref\>:  store i64 %var_2_906, i64* %RAX.i798, align 8
; store i64 %var_2_1110, i64* %RAX, align 8
; Matched:%var_2_408:  %var_2_408 = add i64 %var_2_401, -92
; %var_2_1111 = add i64 %var_2_1104, -92
; Matched:%var_2_409:  %var_2_409 = add i64 %var_2_403, 7
; %var_2_1112 = add i64 %var_2_1106, 7
; Matched:\<badref\>:  store i64 %var_2_409, i64* %var_2_3, align 8
; store i64 %var_2_1112, i64* %PC, align 8
; Matched:%var_2_410:  %var_2_410 = inttoptr i64 %var_2_408 to i32*
; %var_2_1113 = inttoptr i64 %var_2_1111 to i32*
; Matched:%var_2_411:  %var_2_411 = load i32, i32* %var_2_410, align 4
; %var_2_1114 = load i32, i32* %var_2_1113, align 4
; Matched:%var_2_412:  %var_2_412 = sext i32 %var_2_406 to i64
; %var_2_1115 = sext i32 %var_2_1109 to i64
; Matched:%var_2_413:  %var_2_413 = sext i32 %var_2_411 to i64
; %var_2_1116 = sext i32 %var_2_1114 to i64
; Matched:%var_2_414:  %var_2_414 = mul nsw i64 %var_2_413, %var_2_412
; %var_2_1117 = mul nsw i64 %var_2_1116, %var_2_1115
; Matched:%var_2_415:  %var_2_415 = trunc i64 %var_2_414 to i32
; %var_2_1118 = trunc i64 %var_2_1117 to i32
; Matched:%var_2_416:  %var_2_416 = and i64 %var_2_414, 4294967295
; %var_2_1119 = and i64 %var_2_1117, 4294967295
; Matched:\<badref\>:  store i64 %var_2_416, i64* %RAX.i798, align 8
; store i64 %var_2_1119, i64* %RAX, align 8
; Matched:%var_2_417:  %var_2_417 = shl i64 %var_2_414, 32
; %var_2_1120 = shl i64 %var_2_1117, 32
; Matched:%var_2_418:  %var_2_418 = ashr exact i64 %var_2_417, 32
; %var_2_1121 = ashr exact i64 %var_2_1120, 32
; Matched:%var_2_419:  %var_2_419 = icmp ne i64 %var_2_418, %var_2_414
; %var_2_1122 = icmp ne i64 %var_2_1121, %var_2_1117
; Matched:%var_2_420:  %var_2_420 = zext i1 %var_2_419 to i8
; %var_2_1123 = zext i1 %var_2_1122 to i8
; Matched:\<badref\>:  store i8 %var_2_420, i8* %var_2_14, align 1
; store i8 %var_2_1123, i8* %var_2_17, align 1
; Matched:%var_2_421:  %var_2_421 = and i32 %var_2_415, 255
; %var_2_1124 = and i32 %var_2_1118, 255
; Matched:%var_2_422:  %var_2_422 = tail call i32 @llvm.ctpop.i32(i32 %var_2_421)
; %var_2_1125 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1124) #14
; Matched:%var_2_423:  %var_2_423 = trunc i32 %var_2_422 to i8
; %var_2_1126 = trunc i32 %var_2_1125 to i8
; Matched:%var_2_424:  %var_2_424 = and i8 %var_2_423, 1
; %var_2_1127 = and i8 %var_2_1126, 1
; Matched:%var_2_425:  %var_2_425 = xor i8 %var_2_424, 1
; %var_2_1128 = xor i8 %var_2_1127, 1
; Matched:\<badref\>:  store i8 %var_2_425, i8* %var_2_21, align 1
; store i8 %var_2_1128, i8* %var_2_24, align 1
store i8 0, i8* %var_2_29, align 1
store i8 0, i8* %var_2_32, align 1
; Matched:%var_2_426:  %var_2_426 = lshr i32 %var_2_415, 31
; %var_2_1129 = lshr i32 %var_2_1118, 31
; Matched:%var_2_427:  %var_2_427 = trunc i32 %var_2_426 to i8
; %var_2_1130 = trunc i32 %var_2_1129 to i8
; Matched:\<badref\>:  store i8 %var_2_427, i8* %var_2_32, align 1
; store i8 %var_2_1130, i8* %var_2_35, align 1
; Matched:\<badref\>:  store i8 %var_2_420, i8* %var_2_38, align 1
; store i8 %var_2_1123, i8* %var_2_41, align 1
; Matched:%var_2_428:  %var_2_428 = add i64 %var_2_401, -56
; %var_2_1131 = add i64 %var_2_1104, -56
; Matched:%var_2_429:  %var_2_429 = trunc i64 %var_2_414 to i32
; %var_2_1132 = trunc i64 %var_2_1117 to i32
; Matched:%var_2_430:  %var_2_430 = add i64 %var_2_403, 10
; %var_2_1133 = add i64 %var_2_1106, 10
; Matched:\<badref\>:  store i64 %var_2_289, i64* %var_2_3, align 8
; store i64 %var_2_1133, i64* %PC, align 8
; Matched:%var_2_431:  %var_2_431 = inttoptr i64 %var_2_428 to i32*
; %var_2_1134 = inttoptr i64 %var_2_1131 to i32*
; Matched:\<badref\>:  store i32 %var_2_429, i32* %var_2_431, align 4
; store i32 %var_2_1132, i32* %var_2_1134, align 4
%var_2_1135 = load i64, i64* %RBP, align 8
%var_2_1136 = add i64 %var_2_1135, -40
%var_2_1137 = load i64, i64* %PC, align 8
; Matched:%var_2_1825:  %var_2_1825 = add i64 %var_2_1820, 7
; %var_2_1138 = add i64 %var_2_1137, 7
; Matched:\<badref\>:  store i64 %var_2_1825, i64* %var_2_3, align 8
; store i64 %var_2_1138, i64* %PC, align 8
%var_2_1139 = inttoptr i64 %var_2_1136 to i32*
store i32 1, i32* %var_2_1139, align 4
%var_2_1140 = load i64, i64* %RBP, align 8
%var_2_1141 = add i64 %var_2_1140, -32
%var_2_1142 = load i64, i64* %PC, align 8
; Matched:%var_2_317:  %var_2_317 = add i64 %var_2_311, 7
; %var_2_1143 = add i64 %var_2_1142, 7
; Matched:\<badref\>:  store i64 %var_2_750, i64* %var_2_3, align 8
; store i64 %var_2_1143, i64* %PC, align 8
%var_2_1144 = inttoptr i64 %var_2_1141 to i32*
store i32 1, i32* %var_2_1144, align 4
  %.pre98 = load i64, i64* %PC, align 8
  br label %block_400c2f

block_400ebc:                                     ; preds = %block_400eb0
; Matched:%var_2_1606:  %var_2_1606 = add i64 %var_2_1605, 3
; %var_2_1145 = add i64 %var_2_905, 3
; Matched:\<badref\>:  store i64 %var_2_1606, i64* %var_2_3, align 8
; store i64 %var_2_1145, i64* %PC, align 8
; Matched:%var_2_1573:  %var_2_1573 = load i32, i32* %var_2_1572, align 4
; %var_2_1146 = load i32, i32* %var_2_872, align 4
; Matched:%var_2_1608:  %var_2_1608 = zext i32 %var_2_1607 to i64
; %var_2_1147 = zext i32 %var_2_1146 to i64
; Matched:\<badref\>:  store i64 %var_2_1608, i64* %RAX.i798, align 8
; store i64 %var_2_1147, i64* %RAX, align 8
; Matched:%var_2_1609:  %var_2_1609 = add i64 %var_2_1569, -76
; %var_2_1148 = add i64 %var_2_869, -76
; Matched:%var_2_1610:  %var_2_1610 = add i64 %var_2_1605, 6
; %var_2_1149 = add i64 %var_2_905, 6
; Matched:\<badref\>:  store i64 %var_2_1610, i64* %var_2_3, align 8
; store i64 %var_2_1149, i64* %PC, align 8
; Matched:%var_2_1611:  %var_2_1611 = inttoptr i64 %var_2_1609 to i32*
; %var_2_1150 = inttoptr i64 %var_2_1148 to i32*
; Matched:\<badref\>:  store i32 %var_2_1607, i32* %var_2_1611, align 4
; store i32 %var_2_1146, i32* %var_2_1150, align 4
; Matched:%var_2_1612:  %var_2_1612 = load i64, i64* %RBP.i, align 8
; %var_2_1151 = load i64, i64* %RBP, align 8
; Matched:%var_2_1613:  %var_2_1613 = add i64 %var_2_1612, -76
; %var_2_1152 = add i64 %var_2_1151, -76
%var_2_1153 = load i64, i64* %PC, align 8
; Matched:%var_2_54:  %var_2_54 = add i64 %var_2_53, 3
; %var_2_1154 = add i64 %var_2_1153, 3
; Matched:\<badref\>:  store i64 %var_2_2103, i64* %var_2_3, align 8
; store i64 %var_2_1154, i64* %PC, align 8
; Matched:%var_2_1616:  %var_2_1616 = inttoptr i64 %var_2_1613 to i32*
; %var_2_1155 = inttoptr i64 %var_2_1152 to i32*
; Matched:%var_2_1617:  %var_2_1617 = load i32, i32* %var_2_1616, align 4
; %var_2_1156 = load i32, i32* %var_2_1155, align 4
; Matched:%var_2_1618:  %var_2_1618 = zext i32 %var_2_1617 to i64
; %var_2_1157 = zext i32 %var_2_1156 to i64
; Matched:\<badref\>:  store i64 %var_2_1618, i64* %RAX.i798, align 8
; store i64 %var_2_1157, i64* %RAX, align 8
; Matched:%var_2_1619:  %var_2_1619 = add i64 %var_2_1612, -60
; %var_2_1158 = add i64 %var_2_1151, -60
; Matched:%var_2_190:  %var_2_190 = add i64 %var_2_184, 6
; %var_2_1159 = add i64 %var_2_1153, 6
; Matched:\<badref\>:  store i64 %var_2_1976, i64* %var_2_3, align 8
; store i64 %var_2_1159, i64* %PC, align 8
; Matched:%var_2_1621:  %var_2_1621 = inttoptr i64 %var_2_1619 to i32*
; %var_2_1160 = inttoptr i64 %var_2_1158 to i32*
; Matched:%var_2_1622:  %var_2_1622 = load i32, i32* %var_2_1621, align 4
; %var_2_1161 = load i32, i32* %var_2_1160, align 4
; Matched:%var_2_1623:  %var_2_1623 = add i32 %var_2_1622, %var_2_1617
; %var_2_1162 = add i32 %var_2_1161, %var_2_1156
; Matched:%var_2_1624:  %var_2_1624 = zext i32 %var_2_1623 to i64
; %var_2_1163 = zext i32 %var_2_1162 to i64
; Matched:\<badref\>:  store i64 %var_2_1624, i64* %RAX.i798, align 8
; store i64 %var_2_1163, i64* %RAX, align 8
; Matched:%var_2_1625:  %var_2_1625 = icmp ult i32 %var_2_1623, %var_2_1617
; %var_2_1164 = icmp ult i32 %var_2_1162, %var_2_1156
; Matched:%var_2_1626:  %var_2_1626 = icmp ult i32 %var_2_1623, %var_2_1622
; %var_2_1165 = icmp ult i32 %var_2_1162, %var_2_1161
; Matched:%var_2_1627:  %var_2_1627 = or i1 %var_2_1625, %var_2_1626
; %var_2_1166 = or i1 %var_2_1164, %var_2_1165
; Matched:%var_2_1628:  %var_2_1628 = zext i1 %var_2_1627 to i8
; %var_2_1167 = zext i1 %var_2_1166 to i8
; Matched:\<badref\>:  store i8 %var_2_1628, i8* %var_2_14, align 1
; store i8 %var_2_1167, i8* %var_2_17, align 1
; Matched:%var_2_1629:  %var_2_1629 = and i32 %var_2_1623, 255
; %var_2_1168 = and i32 %var_2_1162, 255
; Matched:%var_2_1630:  %var_2_1630 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1629)
; %var_2_1169 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1168) #14
; Matched:%var_2_1631:  %var_2_1631 = trunc i32 %var_2_1630 to i8
; %var_2_1170 = trunc i32 %var_2_1169 to i8
; Matched:%var_2_1632:  %var_2_1632 = and i8 %var_2_1631, 1
; %var_2_1171 = and i8 %var_2_1170, 1
; Matched:%var_2_1633:  %var_2_1633 = xor i8 %var_2_1632, 1
; %var_2_1172 = xor i8 %var_2_1171, 1
; Matched:\<badref\>:  store i8 %var_2_1633, i8* %var_2_21, align 1
; store i8 %var_2_1172, i8* %var_2_24, align 1
; Matched:%var_2_1634:  %var_2_1634 = xor i32 %var_2_1622, %var_2_1617
; %var_2_1173 = xor i32 %var_2_1161, %var_2_1156
; Matched:%var_2_1635:  %var_2_1635 = xor i32 %var_2_1634, %var_2_1623
; %var_2_1174 = xor i32 %var_2_1173, %var_2_1162
; Matched:%var_2_1636:  %var_2_1636 = lshr i32 %var_2_1635, 4
; %var_2_1175 = lshr i32 %var_2_1174, 4
; Matched:%var_2_1637:  %var_2_1637 = trunc i32 %var_2_1636 to i8
; %var_2_1176 = trunc i32 %var_2_1175 to i8
; Matched:%var_2_1638:  %var_2_1638 = and i8 %var_2_1637, 1
; %var_2_1177 = and i8 %var_2_1176, 1
; Matched:\<badref\>:  store i8 %var_2_1638, i8* %var_2_26, align 1
; store i8 %var_2_1177, i8* %var_2_29, align 1
; Matched:%var_2_1639:  %var_2_1639 = icmp eq i32 %var_2_1623, 0
; %var_2_1178 = icmp eq i32 %var_2_1162, 0
; Matched:%var_2_1640:  %var_2_1640 = zext i1 %var_2_1639 to i8
; %var_2_1179 = zext i1 %var_2_1178 to i8
; Matched:\<badref\>:  store i8 %var_2_1640, i8* %var_2_29, align 1
; store i8 %var_2_1179, i8* %var_2_32, align 1
; Matched:%var_2_1641:  %var_2_1641 = lshr i32 %var_2_1623, 31
; %var_2_1180 = lshr i32 %var_2_1162, 31
; Matched:%var_2_1642:  %var_2_1642 = trunc i32 %var_2_1641 to i8
; %var_2_1181 = trunc i32 %var_2_1180 to i8
; Matched:\<badref\>:  store i8 %var_2_1642, i8* %var_2_32, align 1
; store i8 %var_2_1181, i8* %var_2_35, align 1
; Matched:%var_2_1643:  %var_2_1643 = lshr i32 %var_2_1617, 31
; %var_2_1182 = lshr i32 %var_2_1156, 31
; Matched:%var_2_1644:  %var_2_1644 = lshr i32 %var_2_1622, 31
; %var_2_1183 = lshr i32 %var_2_1161, 31
; Matched:%var_2_1645:  %var_2_1645 = xor i32 %var_2_1641, %var_2_1643
; %var_2_1184 = xor i32 %var_2_1180, %var_2_1182
; Matched:%var_2_1646:  %var_2_1646 = xor i32 %var_2_1641, %var_2_1644
; %var_2_1185 = xor i32 %var_2_1180, %var_2_1183
; Matched:%var_2_1647:  %var_2_1647 = add nuw nsw i32 %var_2_1645, %var_2_1646
; %var_2_1186 = add nuw nsw i32 %var_2_1184, %var_2_1185
; Matched:%var_2_1648:  %var_2_1648 = icmp eq i32 %var_2_1647, 2
; %var_2_1187 = icmp eq i32 %var_2_1186, 2
; Matched:%var_2_1649:  %var_2_1649 = zext i1 %var_2_1648 to i8
; %var_2_1188 = zext i1 %var_2_1187 to i8
; Matched:\<badref\>:  store i8 %var_2_1649, i8* %var_2_38, align 1
; store i8 %var_2_1188, i8* %var_2_41, align 1
; Matched:%var_2_1650:  %var_2_1650 = add i64 %var_2_1612, -80
; %var_2_1189 = add i64 %var_2_1151, -80
%var_2_1190 = add i64 %var_2_1153, 9
store i64 %var_2_1190, i64* %PC, align 8
; Matched:%var_2_1652:  %var_2_1652 = inttoptr i64 %var_2_1650 to i32*
; %var_2_1191 = inttoptr i64 %var_2_1189 to i32*
; Matched:\<badref\>:  store i32 %var_2_1623, i32* %var_2_1652, align 4
; store i32 %var_2_1162, i32* %var_2_1191, align 4
%var_2_1192 = load i64, i64* %RBP, align 8
; Matched:%var_2_1720:  %var_2_1720 = add i64 %var_2_1719, -152
; %var_2_1193 = add i64 %var_2_1192, -152
%var_2_1194 = load i64, i64* %PC, align 8
%var_2_1195 = add i64 %var_2_1194, 8
store i64 %var_2_1195, i64* %PC, align 8
; Matched:%var_2_2040:  %var_2_2040 = inttoptr i64 %var_2_2038 to i64*
; %var_2_1196 = inttoptr i64 %var_2_1193 to i64*
; Matched:%var_2_1724:  %var_2_1724 = load i64, i64* %var_2_1723, align 8
; %var_2_1197 = load i64, i64* %var_2_1196, align 8
; Matched:\<badref\>:  store i64 %var_2_1658, i64* %var_2_225, align 1
; store i64 %var_2_1197, i64* %var_2_1828, align 1
store double 0.000000e+00, double* %var_2_1830, align 1
; Matched:%var_2_786:  %var_2_786 = add i64 %var_2_785, -8
; %var_2_1198 = add i64 %var_2_1192, -8
; Matched:%var_2_1726:  %var_2_1726 = add i64 %var_2_1721, 12
; %var_2_1199 = add i64 %var_2_1194, 12
; Matched:\<badref\>:  store i64 %var_2_1726, i64* %var_2_3, align 8
; store i64 %var_2_1199, i64* %PC, align 8
; Matched:%var_2_1727:  %var_2_1727 = inttoptr i64 %var_2_1725 to i64*
; %var_2_1200 = inttoptr i64 %var_2_1198 to i64*
; Matched:%var_2_748:  %var_2_748 = load i64, i64* %var_2_747, align 8
; %var_2_1201 = load i64, i64* %var_2_1200, align 8
; Matched:\<badref\>:  store i64 %var_2_748, i64* %RCX.i788, align 8
; store i64 %var_2_1201, i64* %RCX, align 8
%var_2_1202 = add i64 %var_2_1192, -80
; Matched:%var_2_1341:  %var_2_1341 = add i64 %var_2_1325, 16
; %var_2_1203 = add i64 %var_2_1194, 16
; Matched:\<badref\>:  store i64 %var_2_1341, i64* %var_2_3, align 8
; store i64 %var_2_1203, i64* %PC, align 8
%var_2_1204 = inttoptr i64 %var_2_1202 to i32*
; Matched:%var_2_1771:  %var_2_1771 = load i32, i32* %var_2_1731, align 4
; %var_2_1205 = load i32, i32* %var_2_1204, align 4
; Matched:%var_2_1813:  %var_2_1813 = sext i32 %var_2_1812 to i64
; %var_2_1206 = sext i32 %var_2_1205 to i64
; Matched:\<badref\>:  store i64 %var_2_1667, i64* %RDX.i786, align 8
; store i64 %var_2_1206, i64* %RDX, align 8
; Matched:%var_2_1668:  %var_2_1668 = shl nsw i64 %var_2_1667, 3
; %var_2_1207 = shl nsw i64 %var_2_1206, 3
; Matched:%var_2_1669:  %var_2_1669 = add i64 %var_2_1668, %var_2_1662
; %var_2_1208 = add i64 %var_2_1207, %var_2_1201
; Matched:%var_2_1670:  %var_2_1670 = add i64 %var_2_1655, 21
; %var_2_1209 = add i64 %var_2_1194, 21
; Matched:\<badref\>:  store i64 %var_2_2058, i64* %var_2_3, align 8
; store i64 %var_2_1209, i64* %PC, align 8
; Matched:%var_2_1671:  %var_2_1671 = bitcast i64 %var_2_1658 to double
; %var_2_1210 = bitcast i64 %var_2_1197 to double
; Matched:%var_2_1672:  %var_2_1672 = inttoptr i64 %var_2_1669 to double*
; %var_2_1211 = inttoptr i64 %var_2_1208 to double*
; Matched:%var_2_1673:  %var_2_1673 = load double, double* %var_2_1672, align 8
; %var_2_1212 = load double, double* %var_2_1211, align 8
; Matched:%var_2_1674:  %var_2_1674 = fmul double %var_2_1671, %var_2_1673
; %var_2_1213 = fmul double %var_2_1210, %var_2_1212
; Matched:\<badref\>:  store double %var_2_1674, double* %var_2_228, align 1
; store double %var_2_1213, double* %var_2_1857, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_194, align 1
; store i64 0, i64* %var_2_1829, align 1
; Matched:%var_2_1675:  %var_2_1675 = add i64 %var_2_1653, -128
; %var_2_1214 = add i64 %var_2_1192, -128
; Matched:%var_2_1676:  %var_2_1676 = add i64 %var_2_1655, 26
; %var_2_1215 = add i64 %var_2_1194, 26
; Matched:\<badref\>:  store i64 %var_2_1810, i64* %var_2_3, align 8
; store i64 %var_2_1215, i64* %PC, align 8
; Matched:%var_2_1677:  %var_2_1677 = inttoptr i64 %var_2_1675 to i64*
; %var_2_1216 = inttoptr i64 %var_2_1214 to i64*
; Matched:%var_2_2056:  %var_2_2056 = load i64, i64* %var_2_2055, align 8
; %var_2_1217 = load i64, i64* %var_2_1216, align 8
; Matched:\<badref\>:  store i64 %var_2_1767, i64* %var_2_206, align 1
; store i64 %var_2_1217, i64* %var_2_1839, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_208, align 1
; store double 0.000000e+00, double* %var_2_1841, align 1
; Matched:%var_2_1866:  %var_2_1866 = add i64 %var_2_1820, 30
; %var_2_1218 = add i64 %var_2_1194, 30
; Matched:\<badref\>:  store i64 %var_2_1679, i64* %var_2_3, align 8
; store i64 %var_2_1218, i64* %PC, align 8
; Matched:%var_2_790:  %var_2_790 = load i64, i64* %var_2_789, align 8
; %var_2_1219 = load i64, i64* %var_2_1200, align 8
; Matched:\<badref\>:  store i64 %var_2_790, i64* %RCX.i788, align 8
; store i64 %var_2_1219, i64* %RCX, align 8
; Matched:%var_2_1681:  %var_2_1681 = add i64 %var_2_1655, 33
; %var_2_1220 = add i64 %var_2_1194, 33
; Matched:\<badref\>:  store i64 %var_2_2065, i64* %var_2_3, align 8
; store i64 %var_2_1220, i64* %PC, align 8
; Matched:%var_2_1732:  %var_2_1732 = load i32, i32* %var_2_1731, align 4
; %var_2_1221 = load i32, i32* %var_2_1204, align 4
; Matched:%var_2_1733:  %var_2_1733 = add i32 %var_2_1732, 1
; %var_2_1222 = add i32 %var_2_1221, 1
; Matched:%var_2_1870:  %var_2_1870 = zext i32 %var_2_1869 to i64
; %var_2_1223 = zext i32 %var_2_1222 to i64
; Matched:\<badref\>:  store i64 %var_2_1870, i64* %RAX.i798, align 8
; store i64 %var_2_1223, i64* %RAX, align 8
; Matched:%var_2_1871:  %var_2_1871 = icmp eq i32 %var_2_1868, -1
; %var_2_1224 = icmp eq i32 %var_2_1221, -1
; Matched:%var_2_1872:  %var_2_1872 = icmp eq i32 %var_2_1869, 0
; %var_2_1225 = icmp eq i32 %var_2_1222, 0
; Matched:%var_2_1687:  %var_2_1687 = or i1 %var_2_1685, %var_2_1686
; %var_2_1226 = or i1 %var_2_1224, %var_2_1225
; Matched:%var_2_1874:  %var_2_1874 = zext i1 %var_2_1873 to i8
; %var_2_1227 = zext i1 %var_2_1226 to i8
; Matched:\<badref\>:  store i8 %var_2_1738, i8* %var_2_14, align 1
; store i8 %var_2_1227, i8* %var_2_17, align 1
; Matched:%var_2_1739:  %var_2_1739 = and i32 %var_2_1733, 255
; %var_2_1228 = and i32 %var_2_1222, 255
; Matched:%var_2_1876:  %var_2_1876 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1875)
; %var_2_1229 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1228) #14
; Matched:%var_2_1877:  %var_2_1877 = trunc i32 %var_2_1876 to i8
; %var_2_1230 = trunc i32 %var_2_1229 to i8
; Matched:%var_2_1878:  %var_2_1878 = and i8 %var_2_1877, 1
; %var_2_1231 = and i8 %var_2_1230, 1
; Matched:%var_2_1879:  %var_2_1879 = xor i8 %var_2_1878, 1
; %var_2_1232 = xor i8 %var_2_1231, 1
; Matched:\<badref\>:  store i8 %var_2_1693, i8* %var_2_21, align 1
; store i8 %var_2_1232, i8* %var_2_24, align 1
; Matched:%var_2_1880:  %var_2_1880 = xor i32 %var_2_1869, %var_2_1868
; %var_2_1233 = xor i32 %var_2_1222, %var_2_1221
; Matched:%var_2_1745:  %var_2_1745 = lshr i32 %var_2_1744, 4
; %var_2_1234 = lshr i32 %var_2_1233, 4
; Matched:%var_2_1746:  %var_2_1746 = trunc i32 %var_2_1745 to i8
; %var_2_1235 = trunc i32 %var_2_1234 to i8
; Matched:%var_2_1883:  %var_2_1883 = and i8 %var_2_1882, 1
; %var_2_1236 = and i8 %var_2_1235, 1
; Matched:\<badref\>:  store i8 %var_2_1883, i8* %var_2_26, align 1
; store i8 %var_2_1236, i8* %var_2_29, align 1
; Matched:%var_2_1884:  %var_2_1884 = zext i1 %var_2_1872 to i8
; %var_2_1237 = zext i1 %var_2_1225 to i8
; Matched:\<badref\>:  store i8 %var_2_1884, i8* %var_2_29, align 1
; store i8 %var_2_1237, i8* %var_2_32, align 1
; Matched:%var_2_1699:  %var_2_1699 = lshr i32 %var_2_1683, 31
; %var_2_1238 = lshr i32 %var_2_1222, 31
; Matched:%var_2_1886:  %var_2_1886 = trunc i32 %var_2_1885 to i8
; %var_2_1239 = trunc i32 %var_2_1238 to i8
; Matched:\<badref\>:  store i8 %var_2_1750, i8* %var_2_32, align 1
; store i8 %var_2_1239, i8* %var_2_35, align 1
; Matched:%var_2_1751:  %var_2_1751 = lshr i32 %var_2_1732, 31
; %var_2_1240 = lshr i32 %var_2_1221, 31
; Matched:%var_2_1888:  %var_2_1888 = xor i32 %var_2_1885, %var_2_1887
; %var_2_1241 = xor i32 %var_2_1238, %var_2_1240
; Matched:%var_2_1889:  %var_2_1889 = add nuw nsw i32 %var_2_1888, %var_2_1885
; %var_2_1242 = add nuw nsw i32 %var_2_1241, %var_2_1238
; Matched:%var_2_1890:  %var_2_1890 = icmp eq i32 %var_2_1889, 2
; %var_2_1243 = icmp eq i32 %var_2_1242, 2
; Matched:%var_2_1891:  %var_2_1891 = zext i1 %var_2_1890 to i8
; %var_2_1244 = zext i1 %var_2_1243 to i8
; Matched:\<badref\>:  store i8 %var_2_1705, i8* %var_2_38, align 1
; store i8 %var_2_1244, i8* %var_2_41, align 1
; Matched:%var_2_1892:  %var_2_1892 = sext i32 %var_2_1869 to i64
; %var_2_1245 = sext i32 %var_2_1222 to i64
; Matched:\<badref\>:  store i64 %var_2_1756, i64* %RDX.i786, align 8
; store i64 %var_2_1245, i64* %RDX, align 8
; Matched:%var_2_1707:  %var_2_1707 = shl nsw i64 %var_2_1706, 3
; %var_2_1246 = shl nsw i64 %var_2_1245, 3
; Matched:%var_2_1708:  %var_2_1708 = add i64 %var_2_1680, %var_2_1707
; %var_2_1247 = add i64 %var_2_1219, %var_2_1246
; Matched:%var_2_1709:  %var_2_1709 = add i64 %var_2_1655, 44
; %var_2_1248 = add i64 %var_2_1194, 44
; Matched:\<badref\>:  store i64 %var_2_1709, i64* %var_2_3, align 8
; store i64 %var_2_1248, i64* %PC, align 8
; Matched:%var_2_1710:  %var_2_1710 = bitcast i64 %var_2_1678 to double
; %var_2_1249 = bitcast i64 %var_2_1217 to double
; Matched:%var_2_1711:  %var_2_1711 = inttoptr i64 %var_2_1708 to double*
; %var_2_1250 = inttoptr i64 %var_2_1247 to double*
; Matched:%var_2_1712:  %var_2_1712 = load double, double* %var_2_1711, align 8
; %var_2_1251 = load double, double* %var_2_1250, align 8
; Matched:%var_2_1713:  %var_2_1713 = fmul double %var_2_1710, %var_2_1712
; %var_2_1252 = fmul double %var_2_1249, %var_2_1251
; Matched:\<badref\>:  store double %var_2_1713, double* %var_2_205, align 1
; store double %var_2_1252, double* %var_2_1838, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_207, align 1
; store i64 0, i64* %var_2_1840, align 1
; Matched:%var_2_1714:  %var_2_1714 = fsub double %var_2_1674, %var_2_1713
; %var_2_1253 = fsub double %var_2_1213, %var_2_1252
; Matched:\<badref\>:  store double %var_2_1714, double* %var_2_228, align 1
; store double %var_2_1253, double* %var_2_1857, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_194, align 1
; store i64 0, i64* %var_2_1829, align 1
; Matched:%var_2_1715:  %var_2_1715 = load i64, i64* %RBP.i, align 8
; %var_2_1254 = load i64, i64* %RBP, align 8
; Matched:%var_2_1716:  %var_2_1716 = add i64 %var_2_1715, -112
; %var_2_1255 = add i64 %var_2_1254, -112
; Matched:%var_2_1717:  %var_2_1717 = add i64 %var_2_1655, 53
; %var_2_1256 = add i64 %var_2_1194, 53
; Matched:\<badref\>:  store i64 %var_2_1783, i64* %var_2_3, align 8
; store i64 %var_2_1256, i64* %PC, align 8
; Matched:%var_2_1718:  %var_2_1718 = inttoptr i64 %var_2_1716 to double*
; %var_2_1257 = inttoptr i64 %var_2_1255 to double*
; Matched:\<badref\>:  store double %var_2_1714, double* %var_2_1718, align 8
; store double %var_2_1253, double* %var_2_1257, align 8
%var_2_1258 = load i64, i64* %RBP, align 8
; Matched:%var_2_2038:  %var_2_2038 = add i64 %var_2_1559, -152
; %var_2_1259 = add i64 %var_2_1258, -152
%var_2_1260 = load i64, i64* %PC, align 8
%var_2_1261 = add i64 %var_2_1260, 8
store i64 %var_2_1261, i64* %PC, align 8
; Matched:%var_2_1657:  %var_2_1657 = inttoptr i64 %var_2_1654 to i64*
; %var_2_1262 = inttoptr i64 %var_2_1259 to i64*
; Matched:%var_2_2041:  %var_2_2041 = load i64, i64* %var_2_2040, align 8
; %var_2_1263 = load i64, i64* %var_2_1262, align 8
; Matched:\<badref\>:  store i64 %var_2_1724, i64* %var_2_225, align 1
; store i64 %var_2_1263, i64* %var_2_1828, align 1
store double 0.000000e+00, double* %var_2_1830, align 1
; Matched:%var_2_1659:  %var_2_1659 = add i64 %var_2_1653, -8
; %var_2_1264 = add i64 %var_2_1258, -8
; Matched:%var_2_869:  %var_2_869 = add i64 %var_2_860, 12
; %var_2_1265 = add i64 %var_2_1260, 12
; Matched:\<badref\>:  store i64 %var_2_869, i64* %var_2_3, align 8
; store i64 %var_2_1265, i64* %PC, align 8
; Matched:%var_2_789:  %var_2_789 = inttoptr i64 %var_2_786 to i64*
; %var_2_1266 = inttoptr i64 %var_2_1264 to i64*
; Matched:%var_2_1823:  %var_2_1823 = load i64, i64* %var_2_1822, align 8
; %var_2_1267 = load i64, i64* %var_2_1266, align 8
; Matched:\<badref\>:  store i64 %var_2_1823, i64* %RCX.i788, align 8
; store i64 %var_2_1267, i64* %RCX, align 8
%var_2_1268 = add i64 %var_2_1258, -80
; Matched:%var_2_1730:  %var_2_1730 = add i64 %var_2_1721, 15
; %var_2_1269 = add i64 %var_2_1260, 15
; Matched:\<badref\>:  store i64 %var_2_1730, i64* %var_2_3, align 8
; store i64 %var_2_1269, i64* %PC, align 8
%var_2_1270 = inttoptr i64 %var_2_1268 to i32*
; Matched:%var_2_1868:  %var_2_1868 = load i32, i32* %var_2_1867, align 4
; %var_2_1271 = load i32, i32* %var_2_1270, align 4
; Matched:%var_2_1869:  %var_2_1869 = add i32 %var_2_1868, 1
; %var_2_1272 = add i32 %var_2_1271, 1
; Matched:%var_2_1684:  %var_2_1684 = zext i32 %var_2_1683 to i64
; %var_2_1273 = zext i32 %var_2_1272 to i64
; Matched:\<badref\>:  store i64 %var_2_1684, i64* %RAX.i798, align 8
; store i64 %var_2_1273, i64* %RAX, align 8
; Matched:%var_2_1685:  %var_2_1685 = icmp eq i32 %var_2_1682, -1
; %var_2_1274 = icmp eq i32 %var_2_1271, -1
; Matched:%var_2_1686:  %var_2_1686 = icmp eq i32 %var_2_1683, 0
; %var_2_1275 = icmp eq i32 %var_2_1272, 0
; Matched:%var_2_1737:  %var_2_1737 = or i1 %var_2_1735, %var_2_1736
; %var_2_1276 = or i1 %var_2_1274, %var_2_1275
; Matched:%var_2_1688:  %var_2_1688 = zext i1 %var_2_1687 to i8
; %var_2_1277 = zext i1 %var_2_1276 to i8
; Matched:\<badref\>:  store i8 %var_2_1874, i8* %var_2_14, align 1
; store i8 %var_2_1277, i8* %var_2_17, align 1
; Matched:%var_2_1875:  %var_2_1875 = and i32 %var_2_1869, 255
; %var_2_1278 = and i32 %var_2_1272, 255
; Matched:%var_2_1690:  %var_2_1690 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1689)
; %var_2_1279 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1278) #14
; Matched:%var_2_1691:  %var_2_1691 = trunc i32 %var_2_1690 to i8
; %var_2_1280 = trunc i32 %var_2_1279 to i8
; Matched:%var_2_1692:  %var_2_1692 = and i8 %var_2_1691, 1
; %var_2_1281 = and i8 %var_2_1280, 1
; Matched:%var_2_1693:  %var_2_1693 = xor i8 %var_2_1692, 1
; %var_2_1282 = xor i8 %var_2_1281, 1
; Matched:\<badref\>:  store i8 %var_2_1743, i8* %var_2_21, align 1
; store i8 %var_2_1282, i8* %var_2_24, align 1
; Matched:%var_2_1694:  %var_2_1694 = xor i32 %var_2_1683, %var_2_1682
; %var_2_1283 = xor i32 %var_2_1272, %var_2_1271
; Matched:%var_2_1881:  %var_2_1881 = lshr i32 %var_2_1880, 4
; %var_2_1284 = lshr i32 %var_2_1283, 4
; Matched:%var_2_1882:  %var_2_1882 = trunc i32 %var_2_1881 to i8
; %var_2_1285 = trunc i32 %var_2_1284 to i8
; Matched:%var_2_1697:  %var_2_1697 = and i8 %var_2_1696, 1
; %var_2_1286 = and i8 %var_2_1285, 1
; Matched:\<badref\>:  store i8 %var_2_1697, i8* %var_2_26, align 1
; store i8 %var_2_1286, i8* %var_2_29, align 1
; Matched:%var_2_1698:  %var_2_1698 = zext i1 %var_2_1686 to i8
; %var_2_1287 = zext i1 %var_2_1275 to i8
; Matched:\<badref\>:  store i8 %var_2_1698, i8* %var_2_29, align 1
; store i8 %var_2_1287, i8* %var_2_32, align 1
; Matched:%var_2_1749:  %var_2_1749 = lshr i32 %var_2_1733, 31
; %var_2_1288 = lshr i32 %var_2_1272, 31
; Matched:%var_2_1700:  %var_2_1700 = trunc i32 %var_2_1699 to i8
; %var_2_1289 = trunc i32 %var_2_1288 to i8
; Matched:\<badref\>:  store i8 %var_2_1886, i8* %var_2_32, align 1
; store i8 %var_2_1289, i8* %var_2_35, align 1
; Matched:%var_2_1887:  %var_2_1887 = lshr i32 %var_2_1868, 31
; %var_2_1290 = lshr i32 %var_2_1271, 31
; Matched:%var_2_1702:  %var_2_1702 = xor i32 %var_2_1699, %var_2_1701
; %var_2_1291 = xor i32 %var_2_1288, %var_2_1290
; Matched:%var_2_1703:  %var_2_1703 = add nuw nsw i32 %var_2_1702, %var_2_1699
; %var_2_1292 = add nuw nsw i32 %var_2_1291, %var_2_1288
; Matched:%var_2_1704:  %var_2_1704 = icmp eq i32 %var_2_1703, 2
; %var_2_1293 = icmp eq i32 %var_2_1292, 2
; Matched:%var_2_1705:  %var_2_1705 = zext i1 %var_2_1704 to i8
; %var_2_1294 = zext i1 %var_2_1293 to i8
; Matched:\<badref\>:  store i8 %var_2_1755, i8* %var_2_38, align 1
; store i8 %var_2_1294, i8* %var_2_41, align 1
; Matched:%var_2_1706:  %var_2_1706 = sext i32 %var_2_1683 to i64
; %var_2_1295 = sext i32 %var_2_1272 to i64
; Matched:\<badref\>:  store i64 %var_2_1892, i64* %RDX.i786, align 8
; store i64 %var_2_1295, i64* %RDX, align 8
; Matched:%var_2_1757:  %var_2_1757 = shl nsw i64 %var_2_1756, 3
; %var_2_1296 = shl nsw i64 %var_2_1295, 3
; Matched:%var_2_1758:  %var_2_1758 = add i64 %var_2_1728, %var_2_1757
; %var_2_1297 = add i64 %var_2_1267, %var_2_1296
; Matched:%var_2_722:  %var_2_722 = add i64 %var_2_699, 26
; %var_2_1298 = add i64 %var_2_1260, 26
; Matched:\<badref\>:  store i64 %var_2_722, i64* %var_2_3, align 8
; store i64 %var_2_1298, i64* %PC, align 8
; Matched:%var_2_1760:  %var_2_1760 = bitcast i64 %var_2_1724 to double
; %var_2_1299 = bitcast i64 %var_2_1263 to double
; Matched:%var_2_1761:  %var_2_1761 = inttoptr i64 %var_2_1758 to double*
; %var_2_1300 = inttoptr i64 %var_2_1297 to double*
; Matched:%var_2_1762:  %var_2_1762 = load double, double* %var_2_1761, align 8
; %var_2_1301 = load double, double* %var_2_1300, align 8
; Matched:%var_2_1763:  %var_2_1763 = fmul double %var_2_1760, %var_2_1762
; %var_2_1302 = fmul double %var_2_1299, %var_2_1301
; Matched:\<badref\>:  store double %var_2_1763, double* %var_2_228, align 1
; store double %var_2_1302, double* %var_2_1857, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_194, align 1
; store i64 0, i64* %var_2_1829, align 1
; Matched:%var_2_1764:  %var_2_1764 = add i64 %var_2_1719, -128
; %var_2_1303 = add i64 %var_2_1258, -128
; Matched:%var_2_1765:  %var_2_1765 = add i64 %var_2_1721, 31
; %var_2_1304 = add i64 %var_2_1260, 31
; Matched:\<badref\>:  store i64 %var_2_1765, i64* %var_2_3, align 8
; store i64 %var_2_1304, i64* %PC, align 8
; Matched:%var_2_1766:  %var_2_1766 = inttoptr i64 %var_2_1764 to i64*
; %var_2_1305 = inttoptr i64 %var_2_1303 to i64*
; Matched:%var_2_1678:  %var_2_1678 = load i64, i64* %var_2_1677, align 8
; %var_2_1306 = load i64, i64* %var_2_1305, align 8
; Matched:\<badref\>:  store i64 %var_2_2056, i64* %var_2_206, align 1
; store i64 %var_2_1306, i64* %var_2_1839, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_208, align 1
; store double 0.000000e+00, double* %var_2_1841, align 1
; Matched:%var_2_1768:  %var_2_1768 = add i64 %var_2_1721, 35
; %var_2_1307 = add i64 %var_2_1260, 35
; Matched:\<badref\>:  store i64 %var_2_1768, i64* %var_2_3, align 8
; store i64 %var_2_1307, i64* %PC, align 8
; Matched:%var_2_1680:  %var_2_1680 = load i64, i64* %var_2_1661, align 8
; %var_2_1308 = load i64, i64* %var_2_1266, align 8
; Matched:\<badref\>:  store i64 %var_2_825, i64* %RCX.i788, align 8
; store i64 %var_2_1308, i64* %RCX, align 8
; Matched:%var_2_1770:  %var_2_1770 = add i64 %var_2_1721, 39
; %var_2_1309 = add i64 %var_2_1260, 39
; Matched:\<badref\>:  store i64 %var_2_1770, i64* %var_2_3, align 8
; store i64 %var_2_1309, i64* %PC, align 8
; Matched:%var_2_1812:  %var_2_1812 = load i32, i32* %var_2_1811, align 4
; %var_2_1310 = load i32, i32* %var_2_1270, align 4
; Matched:%var_2_1667:  %var_2_1667 = sext i32 %var_2_1666 to i64
; %var_2_1311 = sext i32 %var_2_1310 to i64
; Matched:\<badref\>:  store i64 %var_2_1772, i64* %RDX.i786, align 8
; store i64 %var_2_1311, i64* %RDX, align 8
; Matched:%var_2_1773:  %var_2_1773 = shl nsw i64 %var_2_1772, 3
; %var_2_1312 = shl nsw i64 %var_2_1311, 3
; Matched:%var_2_1774:  %var_2_1774 = add i64 %var_2_1773, %var_2_1769
; %var_2_1313 = add i64 %var_2_1312, %var_2_1308
; Matched:%var_2_1775:  %var_2_1775 = add i64 %var_2_1721, 44
; %var_2_1314 = add i64 %var_2_1260, 44
; Matched:\<badref\>:  store i64 %var_2_1775, i64* %var_2_3, align 8
; store i64 %var_2_1314, i64* %PC, align 8
; Matched:%var_2_1776:  %var_2_1776 = bitcast i64 %var_2_1767 to double
; %var_2_1315 = bitcast i64 %var_2_1306 to double
; Matched:%var_2_1777:  %var_2_1777 = inttoptr i64 %var_2_1774 to double*
; %var_2_1316 = inttoptr i64 %var_2_1313 to double*
; Matched:%var_2_1778:  %var_2_1778 = load double, double* %var_2_1777, align 8
; %var_2_1317 = load double, double* %var_2_1316, align 8
; Matched:%var_2_1779:  %var_2_1779 = fmul double %var_2_1776, %var_2_1778
; %var_2_1318 = fmul double %var_2_1315, %var_2_1317
; Matched:\<badref\>:  store double %var_2_1779, double* %var_2_205, align 1
; store double %var_2_1318, double* %var_2_1838, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_207, align 1
; store i64 0, i64* %var_2_1840, align 1
; Matched:%var_2_1780:  %var_2_1780 = fadd double %var_2_1763, %var_2_1779
; %var_2_1319 = fadd double %var_2_1302, %var_2_1318
; Matched:\<badref\>:  store double %var_2_1780, double* %var_2_228, align 1
; store double %var_2_1319, double* %var_2_1857, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_194, align 1
; store i64 0, i64* %var_2_1829, align 1
; Matched:%var_2_1781:  %var_2_1781 = load i64, i64* %RBP.i, align 8
; %var_2_1320 = load i64, i64* %RBP, align 8
; Matched:%var_2_1782:  %var_2_1782 = add i64 %var_2_1781, -104
; %var_2_1321 = add i64 %var_2_1320, -104
; Matched:%var_2_1783:  %var_2_1783 = add i64 %var_2_1721, 53
; %var_2_1322 = add i64 %var_2_1260, 53
; Matched:\<badref\>:  store i64 %var_2_1717, i64* %var_2_3, align 8
; store i64 %var_2_1322, i64* %PC, align 8
; Matched:%var_2_1784:  %var_2_1784 = inttoptr i64 %var_2_1782 to double*
; %var_2_1323 = inttoptr i64 %var_2_1321 to double*
; Matched:\<badref\>:  store double %var_2_1780, double* %var_2_1784, align 8
; store double %var_2_1319, double* %var_2_1323, align 8
%var_2_1324 = load i64, i64* %RBP, align 8
; Matched:%var_2_1786:  %var_2_1786 = add i64 %var_2_1785, -8
; %var_2_1325 = add i64 %var_2_1324, -8
%var_2_1326 = load i64, i64* %PC, align 8
; Matched:%var_2_788:  %var_2_788 = add i64 %var_2_787, 4
; %var_2_1327 = add i64 %var_2_1326, 4
; Matched:\<badref\>:  store i64 %var_2_1821, i64* %var_2_3, align 8
; store i64 %var_2_1327, i64* %PC, align 8
; Matched:%var_2_1789:  %var_2_1789 = inttoptr i64 %var_2_1786 to i64*
; %var_2_1328 = inttoptr i64 %var_2_1325 to i64*
; Matched:%var_2_702:  %var_2_702 = load i64, i64* %var_2_701, align 8
; %var_2_1329 = load i64, i64* %var_2_1328, align 8
; Matched:\<badref\>:  store i64 %var_2_702, i64* %RCX.i788, align 8
; store i64 %var_2_1329, i64* %RCX, align 8
; Matched:%var_2_1791:  %var_2_1791 = add i64 %var_2_1785, -76
; %var_2_1330 = add i64 %var_2_1324, -76
%var_2_1331 = add i64 %var_2_1326, 8
store i64 %var_2_1331, i64* %PC, align 8
; Matched:%var_2_1909:  %var_2_1909 = inttoptr i64 %var_2_1907 to i32*
; %var_2_1332 = inttoptr i64 %var_2_1330 to i32*
; Matched:%var_2_1910:  %var_2_1910 = load i32, i32* %var_2_1909, align 4
; %var_2_1333 = load i32, i32* %var_2_1332, align 4
; Matched:%var_2_1911:  %var_2_1911 = sext i32 %var_2_1910 to i64
; %var_2_1334 = sext i32 %var_2_1333 to i64
; Matched:\<badref\>:  store i64 %var_2_1911, i64* %RDX.i786, align 8
; store i64 %var_2_1334, i64* %RDX, align 8
; Matched:%var_2_1796:  %var_2_1796 = shl nsw i64 %var_2_1795, 3
; %var_2_1335 = shl nsw i64 %var_2_1334, 3
; Matched:%var_2_1797:  %var_2_1797 = add i64 %var_2_1796, %var_2_1790
; %var_2_1336 = add i64 %var_2_1335, %var_2_1329
; Matched:%var_2_691:  %var_2_691 = add i64 %var_2_680, 13
; %var_2_1337 = add i64 %var_2_1326, 13
; Matched:\<badref\>:  store i64 %var_2_691, i64* %var_2_3, align 8
; store i64 %var_2_1337, i64* %PC, align 8
; Matched:%var_2_1799:  %var_2_1799 = inttoptr i64 %var_2_1797 to i64*
; %var_2_1338 = inttoptr i64 %var_2_1336 to i64*
; Matched:%var_2_1800:  %var_2_1800 = load i64, i64* %var_2_1799, align 8
; %var_2_1339 = load i64, i64* %var_2_1338, align 8
; Matched:\<badref\>:  store i64 %var_2_1800, i64* %var_2_225, align 1
; store i64 %var_2_1339, i64* %var_2_1828, align 1
store double 0.000000e+00, double* %var_2_1830, align 1
; Matched:%var_2_1801:  %var_2_1801 = add i64 %var_2_1785, -112
; %var_2_1340 = add i64 %var_2_1324, -112
; Matched:%var_2_741:  %var_2_741 = add i64 %var_2_726, 18
; %var_2_1341 = add i64 %var_2_1326, 18
; Matched:\<badref\>:  store i64 %var_2_741, i64* %var_2_3, align 8
; store i64 %var_2_1341, i64* %PC, align 8
; Matched:%var_2_1803:  %var_2_1803 = bitcast i64 %var_2_1800 to double
; %var_2_1342 = bitcast i64 %var_2_1339 to double
; Matched:%var_2_1804:  %var_2_1804 = inttoptr i64 %var_2_1801 to double*
; %var_2_1343 = inttoptr i64 %var_2_1340 to double*
; Matched:%var_2_1805:  %var_2_1805 = load double, double* %var_2_1804, align 8
; %var_2_1344 = load double, double* %var_2_1343, align 8
; Matched:%var_2_1806:  %var_2_1806 = fsub double %var_2_1803, %var_2_1805
; %var_2_1345 = fsub double %var_2_1342, %var_2_1344
; Matched:\<badref\>:  store double %var_2_1806, double* %var_2_228, align 1
; store double %var_2_1345, double* %var_2_1857, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_194, align 1
; store i64 0, i64* %var_2_1829, align 1
; Matched:%var_2_824:  %var_2_824 = add i64 %var_2_787, 22
; %var_2_1346 = add i64 %var_2_1326, 22
; Matched:\<badref\>:  store i64 %var_2_1807, i64* %var_2_3, align 8
; store i64 %var_2_1346, i64* %PC, align 8
; Matched:%var_2_1769:  %var_2_1769 = load i64, i64* %var_2_1727, align 8
; %var_2_1347 = load i64, i64* %var_2_1328, align 8
; Matched:\<badref\>:  store i64 %var_2_1680, i64* %RCX.i788, align 8
; store i64 %var_2_1347, i64* %RCX, align 8
%var_2_1348 = add i64 %var_2_1324, -80
; Matched:%var_2_1759:  %var_2_1759 = add i64 %var_2_1721, 26
; %var_2_1349 = add i64 %var_2_1326, 26
; Matched:\<badref\>:  store i64 %var_2_1676, i64* %var_2_3, align 8
; store i64 %var_2_1349, i64* %PC, align 8
%var_2_1350 = inttoptr i64 %var_2_1348 to i32*
; Matched:%var_2_1666:  %var_2_1666 = load i32, i32* %var_2_1665, align 4
; %var_2_1351 = load i32, i32* %var_2_1350, align 4
; Matched:%var_2_1772:  %var_2_1772 = sext i32 %var_2_1771 to i64
; %var_2_1352 = sext i32 %var_2_1351 to i64
; Matched:\<badref\>:  store i64 %var_2_1813, i64* %RDX.i786, align 8
; store i64 %var_2_1352, i64* %RDX, align 8
; Matched:%var_2_1814:  %var_2_1814 = shl nsw i64 %var_2_1813, 3
; %var_2_1353 = shl nsw i64 %var_2_1352, 3
; Matched:%var_2_1815:  %var_2_1815 = add i64 %var_2_1814, %var_2_1808
; %var_2_1354 = add i64 %var_2_1353, %var_2_1347
; Matched:%var_2_1816:  %var_2_1816 = add i64 %var_2_1787, 31
; %var_2_1355 = add i64 %var_2_1326, 31
; Matched:\<badref\>:  store i64 %var_2_1816, i64* %var_2_3, align 8
; store i64 %var_2_1355, i64* %PC, align 8
; Matched:%var_2_1817:  %var_2_1817 = inttoptr i64 %var_2_1815 to double*
; %var_2_1356 = inttoptr i64 %var_2_1354 to double*
; Matched:\<badref\>:  store double %var_2_1806, double* %var_2_1817, align 8
; store double %var_2_1345, double* %var_2_1356, align 8
%var_2_1357 = load i64, i64* %RBP, align 8
; Matched:%var_2_744:  %var_2_744 = add i64 %var_2_743, -8
; %var_2_1358 = add i64 %var_2_1357, -8
%var_2_1359 = load i64, i64* %PC, align 8
; Matched:%var_2_47:  %var_2_47 = add i64 %var_2_46, 4
; %var_2_1360 = add i64 %var_2_1359, 4
; Matched:\<badref\>:  store i64 %var_2_746, i64* %var_2_3, align 8
; store i64 %var_2_1360, i64* %PC, align 8
; Matched:%var_2_682:  %var_2_682 = inttoptr i64 %var_2_679 to i64*
; %var_2_1361 = inttoptr i64 %var_2_1358 to i64*
; Matched:%var_2_733:  %var_2_733 = load i64, i64* %var_2_732, align 8
; %var_2_1362 = load i64, i64* %var_2_1361, align 8
; Matched:\<badref\>:  store i64 %var_2_867, i64* %RCX.i788, align 8
; store i64 %var_2_1362, i64* %RCX, align 8
; Matched:%var_2_1824:  %var_2_1824 = add i64 %var_2_1818, -76
; %var_2_1363 = add i64 %var_2_1357, -76
; Matched:%var_2_435:  %var_2_435 = add i64 %var_2_434, 7
; %var_2_1364 = add i64 %var_2_1359, 7
; Matched:\<badref\>:  store i64 %var_2_435, i64* %var_2_3, align 8
; store i64 %var_2_1364, i64* %PC, align 8
; Matched:%var_2_1933:  %var_2_1933 = inttoptr i64 %var_2_1931 to i32*
; %var_2_1365 = inttoptr i64 %var_2_1363 to i32*
; Matched:%var_2_1827:  %var_2_1827 = load i32, i32* %var_2_1826, align 4
; %var_2_1366 = load i32, i32* %var_2_1365, align 4
; Matched:%var_2_1935:  %var_2_1935 = add i32 %var_2_1934, 1
; %var_2_1367 = add i32 %var_2_1366, 1
; Matched:%var_2_1829:  %var_2_1829 = zext i32 %var_2_1828 to i64
; %var_2_1368 = zext i32 %var_2_1367 to i64
; Matched:\<badref\>:  store i64 %var_2_1936, i64* %RAX.i798, align 8
; store i64 %var_2_1368, i64* %RAX, align 8
; Matched:%var_2_1830:  %var_2_1830 = icmp eq i32 %var_2_1827, -1
; %var_2_1369 = icmp eq i32 %var_2_1366, -1
; Matched:%var_2_1831:  %var_2_1831 = icmp eq i32 %var_2_1828, 0
; %var_2_1370 = icmp eq i32 %var_2_1367, 0
; Matched:%var_2_1939:  %var_2_1939 = or i1 %var_2_1937, %var_2_1938
; %var_2_1371 = or i1 %var_2_1369, %var_2_1370
; Matched:%var_2_1940:  %var_2_1940 = zext i1 %var_2_1939 to i8
; %var_2_1372 = zext i1 %var_2_1371 to i8
; Matched:\<badref\>:  store i8 %var_2_1833, i8* %var_2_14, align 1
; store i8 %var_2_1372, i8* %var_2_17, align 1
; Matched:%var_2_1941:  %var_2_1941 = and i32 %var_2_1935, 255
; %var_2_1373 = and i32 %var_2_1367, 255
; Matched:%var_2_1835:  %var_2_1835 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1834)
; %var_2_1374 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1373) #14
; Matched:%var_2_1943:  %var_2_1943 = trunc i32 %var_2_1942 to i8
; %var_2_1375 = trunc i32 %var_2_1374 to i8
; Matched:%var_2_1837:  %var_2_1837 = and i8 %var_2_1836, 1
; %var_2_1376 = and i8 %var_2_1375, 1
; Matched:%var_2_1838:  %var_2_1838 = xor i8 %var_2_1837, 1
; %var_2_1377 = xor i8 %var_2_1376, 1
; Matched:\<badref\>:  store i8 %var_2_1945, i8* %var_2_21, align 1
; store i8 %var_2_1377, i8* %var_2_24, align 1
; Matched:%var_2_1946:  %var_2_1946 = xor i32 %var_2_1935, %var_2_1934
; %var_2_1378 = xor i32 %var_2_1367, %var_2_1366
; Matched:%var_2_1840:  %var_2_1840 = lshr i32 %var_2_1839, 4
; %var_2_1379 = lshr i32 %var_2_1378, 4
; Matched:%var_2_1948:  %var_2_1948 = trunc i32 %var_2_1947 to i8
; %var_2_1380 = trunc i32 %var_2_1379 to i8
; Matched:%var_2_1842:  %var_2_1842 = and i8 %var_2_1841, 1
; %var_2_1381 = and i8 %var_2_1380, 1
; Matched:\<badref\>:  store i8 %var_2_1949, i8* %var_2_26, align 1
; store i8 %var_2_1381, i8* %var_2_29, align 1
; Matched:%var_2_1843:  %var_2_1843 = zext i1 %var_2_1831 to i8
; %var_2_1382 = zext i1 %var_2_1370 to i8
; Matched:\<badref\>:  store i8 %var_2_1950, i8* %var_2_29, align 1
; store i8 %var_2_1382, i8* %var_2_32, align 1
; Matched:%var_2_1844:  %var_2_1844 = lshr i32 %var_2_1828, 31
; %var_2_1383 = lshr i32 %var_2_1367, 31
; Matched:%var_2_1952:  %var_2_1952 = trunc i32 %var_2_1951 to i8
; %var_2_1384 = trunc i32 %var_2_1383 to i8
; Matched:\<badref\>:  store i8 %var_2_1845, i8* %var_2_32, align 1
; store i8 %var_2_1384, i8* %var_2_35, align 1
; Matched:%var_2_1953:  %var_2_1953 = lshr i32 %var_2_1934, 31
; %var_2_1385 = lshr i32 %var_2_1366, 31
; Matched:%var_2_1847:  %var_2_1847 = xor i32 %var_2_1844, %var_2_1846
; %var_2_1386 = xor i32 %var_2_1383, %var_2_1385
; Matched:%var_2_1955:  %var_2_1955 = add nuw nsw i32 %var_2_1954, %var_2_1951
; %var_2_1387 = add nuw nsw i32 %var_2_1386, %var_2_1383
; Matched:%var_2_1849:  %var_2_1849 = icmp eq i32 %var_2_1848, 2
; %var_2_1388 = icmp eq i32 %var_2_1387, 2
; Matched:%var_2_1957:  %var_2_1957 = zext i1 %var_2_1956 to i8
; %var_2_1389 = zext i1 %var_2_1388 to i8
; Matched:\<badref\>:  store i8 %var_2_1850, i8* %var_2_38, align 1
; store i8 %var_2_1389, i8* %var_2_41, align 1
; Matched:%var_2_1958:  %var_2_1958 = sext i32 %var_2_1935 to i64
; %var_2_1390 = sext i32 %var_2_1367 to i64
; Matched:\<badref\>:  store i64 %var_2_1851, i64* %RDX.i786, align 8
; store i64 %var_2_1390, i64* %RDX, align 8
; Matched:%var_2_1852:  %var_2_1852 = shl nsw i64 %var_2_1851, 3
; %var_2_1391 = shl nsw i64 %var_2_1390, 3
; Matched:%var_2_1853:  %var_2_1853 = add i64 %var_2_1823, %var_2_1852
; %var_2_1392 = add i64 %var_2_1362, %var_2_1391
; Matched:%var_2_1854:  %var_2_1854 = add i64 %var_2_1820, 18
; %var_2_1393 = add i64 %var_2_1359, 18
; Matched:\<badref\>:  store i64 %var_2_1854, i64* %var_2_3, align 8
; store i64 %var_2_1393, i64* %PC, align 8
; Matched:%var_2_1855:  %var_2_1855 = inttoptr i64 %var_2_1853 to i64*
; %var_2_1394 = inttoptr i64 %var_2_1392 to i64*
; Matched:%var_2_1856:  %var_2_1856 = load i64, i64* %var_2_1855, align 8
; %var_2_1395 = load i64, i64* %var_2_1394, align 8
; Matched:\<badref\>:  store i64 %var_2_1856, i64* %var_2_225, align 1
; store i64 %var_2_1395, i64* %var_2_1828, align 1
store double 0.000000e+00, double* %var_2_1830, align 1
; Matched:%var_2_1857:  %var_2_1857 = add i64 %var_2_1818, -104
; %var_2_1396 = add i64 %var_2_1357, -104
; Matched:%var_2_1858:  %var_2_1858 = add i64 %var_2_1820, 23
; %var_2_1397 = add i64 %var_2_1359, 23
; Matched:\<badref\>:  store i64 %var_2_1858, i64* %var_2_3, align 8
; store i64 %var_2_1397, i64* %PC, align 8
; Matched:%var_2_1859:  %var_2_1859 = bitcast i64 %var_2_1856 to double
; %var_2_1398 = bitcast i64 %var_2_1395 to double
; Matched:%var_2_1860:  %var_2_1860 = inttoptr i64 %var_2_1857 to double*
; %var_2_1399 = inttoptr i64 %var_2_1396 to double*
; Matched:%var_2_1861:  %var_2_1861 = load double, double* %var_2_1860, align 8
; %var_2_1400 = load double, double* %var_2_1399, align 8
; Matched:%var_2_1862:  %var_2_1862 = fsub double %var_2_1859, %var_2_1861
; %var_2_1401 = fsub double %var_2_1398, %var_2_1400
; Matched:\<badref\>:  store double %var_2_1862, double* %var_2_228, align 1
; store double %var_2_1401, double* %var_2_1857, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_194, align 1
; store i64 0, i64* %var_2_1829, align 1
; Matched:%var_2_1863:  %var_2_1863 = add i64 %var_2_1820, 27
; %var_2_1402 = add i64 %var_2_1359, 27
; Matched:\<badref\>:  store i64 %var_2_1863, i64* %var_2_3, align 8
; store i64 %var_2_1402, i64* %PC, align 8
; Matched:%var_2_1930:  %var_2_1930 = load i64, i64* %var_2_1929, align 8
; %var_2_1403 = load i64, i64* %var_2_1361, align 8
; Matched:\<badref\>:  store i64 %var_2_1930, i64* %RCX.i788, align 8
; store i64 %var_2_1403, i64* %RCX, align 8
%var_2_1404 = add i64 %var_2_1357, -80
; Matched:%var_2_1679:  %var_2_1679 = add i64 %var_2_1655, 30
; %var_2_1405 = add i64 %var_2_1359, 30
; Matched:\<badref\>:  store i64 %var_2_1866, i64* %var_2_3, align 8
; store i64 %var_2_1405, i64* %PC, align 8
%var_2_1406 = inttoptr i64 %var_2_1404 to i32*
; Matched:%var_2_1682:  %var_2_1682 = load i32, i32* %var_2_1665, align 4
; %var_2_1407 = load i32, i32* %var_2_1406, align 4
; Matched:%var_2_1683:  %var_2_1683 = add i32 %var_2_1682, 1
; %var_2_1408 = add i32 %var_2_1407, 1
; Matched:%var_2_1734:  %var_2_1734 = zext i32 %var_2_1733 to i64
; %var_2_1409 = zext i32 %var_2_1408 to i64
; Matched:\<badref\>:  store i64 %var_2_1734, i64* %RAX.i798, align 8
; store i64 %var_2_1409, i64* %RAX, align 8
; Matched:%var_2_1735:  %var_2_1735 = icmp eq i32 %var_2_1732, -1
; %var_2_1410 = icmp eq i32 %var_2_1407, -1
; Matched:%var_2_1736:  %var_2_1736 = icmp eq i32 %var_2_1733, 0
; %var_2_1411 = icmp eq i32 %var_2_1408, 0
; Matched:%var_2_1873:  %var_2_1873 = or i1 %var_2_1871, %var_2_1872
; %var_2_1412 = or i1 %var_2_1410, %var_2_1411
; Matched:%var_2_1738:  %var_2_1738 = zext i1 %var_2_1737 to i8
; %var_2_1413 = zext i1 %var_2_1412 to i8
; Matched:\<badref\>:  store i8 %var_2_1688, i8* %var_2_14, align 1
; store i8 %var_2_1413, i8* %var_2_17, align 1
; Matched:%var_2_1689:  %var_2_1689 = and i32 %var_2_1683, 255
; %var_2_1414 = and i32 %var_2_1408, 255
; Matched:%var_2_1740:  %var_2_1740 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1739)
; %var_2_1415 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1414) #14
; Matched:%var_2_1741:  %var_2_1741 = trunc i32 %var_2_1740 to i8
; %var_2_1416 = trunc i32 %var_2_1415 to i8
; Matched:%var_2_1742:  %var_2_1742 = and i8 %var_2_1741, 1
; %var_2_1417 = and i8 %var_2_1416, 1
; Matched:%var_2_1743:  %var_2_1743 = xor i8 %var_2_1742, 1
; %var_2_1418 = xor i8 %var_2_1417, 1
; Matched:\<badref\>:  store i8 %var_2_1879, i8* %var_2_21, align 1
; store i8 %var_2_1418, i8* %var_2_24, align 1
; Matched:%var_2_1744:  %var_2_1744 = xor i32 %var_2_1733, %var_2_1732
; %var_2_1419 = xor i32 %var_2_1408, %var_2_1407
; Matched:%var_2_1695:  %var_2_1695 = lshr i32 %var_2_1694, 4
; %var_2_1420 = lshr i32 %var_2_1419, 4
; Matched:%var_2_1696:  %var_2_1696 = trunc i32 %var_2_1695 to i8
; %var_2_1421 = trunc i32 %var_2_1420 to i8
; Matched:%var_2_1747:  %var_2_1747 = and i8 %var_2_1746, 1
; %var_2_1422 = and i8 %var_2_1421, 1
; Matched:\<badref\>:  store i8 %var_2_1747, i8* %var_2_26, align 1
; store i8 %var_2_1422, i8* %var_2_29, align 1
; Matched:%var_2_1748:  %var_2_1748 = zext i1 %var_2_1736 to i8
; %var_2_1423 = zext i1 %var_2_1411 to i8
; Matched:\<badref\>:  store i8 %var_2_1748, i8* %var_2_29, align 1
; store i8 %var_2_1423, i8* %var_2_32, align 1
; Matched:%var_2_1885:  %var_2_1885 = lshr i32 %var_2_1869, 31
; %var_2_1424 = lshr i32 %var_2_1408, 31
; Matched:%var_2_1750:  %var_2_1750 = trunc i32 %var_2_1749 to i8
; %var_2_1425 = trunc i32 %var_2_1424 to i8
; Matched:\<badref\>:  store i8 %var_2_1700, i8* %var_2_32, align 1
; store i8 %var_2_1425, i8* %var_2_35, align 1
; Matched:%var_2_1701:  %var_2_1701 = lshr i32 %var_2_1682, 31
; %var_2_1426 = lshr i32 %var_2_1407, 31
; Matched:%var_2_1752:  %var_2_1752 = xor i32 %var_2_1749, %var_2_1751
; %var_2_1427 = xor i32 %var_2_1424, %var_2_1426
; Matched:%var_2_1753:  %var_2_1753 = add nuw nsw i32 %var_2_1752, %var_2_1749
; %var_2_1428 = add nuw nsw i32 %var_2_1427, %var_2_1424
; Matched:%var_2_1754:  %var_2_1754 = icmp eq i32 %var_2_1753, 2
; %var_2_1429 = icmp eq i32 %var_2_1428, 2
; Matched:%var_2_1755:  %var_2_1755 = zext i1 %var_2_1754 to i8
; %var_2_1430 = zext i1 %var_2_1429 to i8
; Matched:\<badref\>:  store i8 %var_2_1891, i8* %var_2_38, align 1
; store i8 %var_2_1430, i8* %var_2_41, align 1
; Matched:%var_2_1756:  %var_2_1756 = sext i32 %var_2_1733 to i64
; %var_2_1431 = sext i32 %var_2_1408 to i64
; Matched:\<badref\>:  store i64 %var_2_1706, i64* %RDX.i786, align 8
; store i64 %var_2_1431, i64* %RDX, align 8
; Matched:%var_2_1893:  %var_2_1893 = shl nsw i64 %var_2_1892, 3
; %var_2_1432 = shl nsw i64 %var_2_1431, 3
; Matched:%var_2_1894:  %var_2_1894 = add i64 %var_2_1864, %var_2_1893
; %var_2_1433 = add i64 %var_2_1403, %var_2_1432
; Matched:%var_2_1895:  %var_2_1895 = add i64 %var_2_1820, 41
; %var_2_1434 = add i64 %var_2_1359, 41
; Matched:\<badref\>:  store i64 %var_2_2069, i64* %var_2_3, align 8
; store i64 %var_2_1434, i64* %PC, align 8
; Matched:%var_2_1896:  %var_2_1896 = inttoptr i64 %var_2_1894 to double*
; %var_2_1435 = inttoptr i64 %var_2_1433 to double*
; Matched:\<badref\>:  store double %var_2_1862, double* %var_2_1896, align 8
; store double %var_2_1401, double* %var_2_1435, align 8
%var_2_1436 = load i64, i64* %RBP, align 8
; Matched:%var_2_1898:  %var_2_1898 = add i64 %var_2_1897, -112
; %var_2_1437 = add i64 %var_2_1436, -112
%var_2_1438 = load i64, i64* %PC, align 8
; Matched:%var_2_1326:  %var_2_1326 = add i64 %var_2_1325, 5
; %var_2_1439 = add i64 %var_2_1438, 5
; Matched:\<badref\>:  store i64 %var_2_1432, i64* %var_2_3, align 8
; store i64 %var_2_1439, i64* %PC, align 8
; Matched:%var_2_1901:  %var_2_1901 = inttoptr i64 %var_2_1898 to i64*
; %var_2_1440 = inttoptr i64 %var_2_1437 to i64*
; Matched:%var_2_1902:  %var_2_1902 = load i64, i64* %var_2_1901, align 8
; %var_2_1441 = load i64, i64* %var_2_1440, align 8
; Matched:\<badref\>:  store i64 %var_2_1902, i64* %var_2_225, align 1
; store i64 %var_2_1441, i64* %var_2_1828, align 1
store double 0.000000e+00, double* %var_2_1830, align 1
; Matched:%var_2_698:  %var_2_698 = add i64 %var_2_697, -8
; %var_2_1442 = add i64 %var_2_1436, -8
%var_2_1443 = add i64 %var_2_1438, 9
store i64 %var_2_1443, i64* %PC, align 8
; Matched:%var_2_1929:  %var_2_1929 = inttoptr i64 %var_2_1927 to i64*
; %var_2_1444 = inttoptr i64 %var_2_1442 to i64*
; Matched:%var_2_714:  %var_2_714 = load i64, i64* %var_2_701, align 8
; %var_2_1445 = load i64, i64* %var_2_1444, align 8
; Matched:\<badref\>:  store i64 %var_2_714, i64* %RCX.i788, align 8
; store i64 %var_2_1445, i64* %RCX, align 8
; Matched:%var_2_1907:  %var_2_1907 = add i64 %var_2_1897, -76
; %var_2_1446 = add i64 %var_2_1436, -76
; Matched:%var_2_710:  %var_2_710 = add i64 %var_2_699, 13
; %var_2_1447 = add i64 %var_2_1438, 13
; Matched:\<badref\>:  store i64 %var_2_710, i64* %var_2_3, align 8
; store i64 %var_2_1447, i64* %PC, align 8
; Matched:%var_2_1793:  %var_2_1793 = inttoptr i64 %var_2_1791 to i32*
; %var_2_1448 = inttoptr i64 %var_2_1446 to i32*
; Matched:%var_2_1794:  %var_2_1794 = load i32, i32* %var_2_1793, align 4
; %var_2_1449 = load i32, i32* %var_2_1448, align 4
; Matched:%var_2_1795:  %var_2_1795 = sext i32 %var_2_1794 to i64
; %var_2_1450 = sext i32 %var_2_1449 to i64
; Matched:\<badref\>:  store i64 %var_2_1795, i64* %RDX.i786, align 8
; store i64 %var_2_1450, i64* %RDX, align 8
; Matched:%var_2_1912:  %var_2_1912 = shl nsw i64 %var_2_1911, 3
; %var_2_1451 = shl nsw i64 %var_2_1450, 3
; Matched:%var_2_1913:  %var_2_1913 = add i64 %var_2_1912, %var_2_1906
; %var_2_1452 = add i64 %var_2_1451, %var_2_1445
; Matched:%var_2_1802:  %var_2_1802 = add i64 %var_2_1787, 18
; %var_2_1453 = add i64 %var_2_1438, 18
; Matched:\<badref\>:  store i64 %var_2_1802, i64* %var_2_3, align 8
; store i64 %var_2_1453, i64* %PC, align 8
; Matched:%var_2_1915:  %var_2_1915 = bitcast i64 %var_2_1902 to double
; %var_2_1454 = bitcast i64 %var_2_1441 to double
; Matched:%var_2_1916:  %var_2_1916 = inttoptr i64 %var_2_1913 to double*
; %var_2_1455 = inttoptr i64 %var_2_1452 to double*
; Matched:%var_2_1917:  %var_2_1917 = load double, double* %var_2_1916, align 8
; %var_2_1456 = load double, double* %var_2_1455, align 8
; Matched:%var_2_1918:  %var_2_1918 = fadd double %var_2_1915, %var_2_1917
; %var_2_1457 = fadd double %var_2_1454, %var_2_1456
; Matched:\<badref\>:  store double %var_2_1918, double* %var_2_228, align 1
; store double %var_2_1457, double* %var_2_1857, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_194, align 1
; store i64 0, i64* %var_2_1829, align 1
; Matched:%var_2_783:  %var_2_783 = add i64 %var_2_745, 23
; %var_2_1458 = add i64 %var_2_1438, 23
; Matched:\<badref\>:  store i64 %var_2_783, i64* %var_2_3, align 8
; store i64 %var_2_1458, i64* %PC, align 8
; Matched:%var_2_1920:  %var_2_1920 = inttoptr i64 %var_2_1913 to double*
; %var_2_1459 = inttoptr i64 %var_2_1452 to double*
; Matched:\<badref\>:  store double %var_2_1918, double* %var_2_1920, align 8
; store double %var_2_1457, double* %var_2_1459, align 8
%var_2_1460 = load i64, i64* %RBP, align 8
; Matched:%var_2_1922:  %var_2_1922 = add i64 %var_2_1921, -104
; %var_2_1461 = add i64 %var_2_1460, -104
%var_2_1462 = load i64, i64* %PC, align 8
; Matched:%var_2_1924:  %var_2_1924 = add i64 %var_2_1923, 5
; %var_2_1463 = add i64 %var_2_1462, 5
; Matched:\<badref\>:  store i64 %var_2_1924, i64* %var_2_3, align 8
; store i64 %var_2_1463, i64* %PC, align 8
; Matched:%var_2_1925:  %var_2_1925 = inttoptr i64 %var_2_1922 to i64*
; %var_2_1464 = inttoptr i64 %var_2_1461 to i64*
; Matched:%var_2_1926:  %var_2_1926 = load i64, i64* %var_2_1925, align 8
; %var_2_1465 = load i64, i64* %var_2_1464, align 8
; Matched:\<badref\>:  store i64 %var_2_1926, i64* %var_2_225, align 1
; store i64 %var_2_1465, i64* %var_2_1828, align 1
store double 0.000000e+00, double* %var_2_1830, align 1
; Matched:%var_2_1725:  %var_2_1725 = add i64 %var_2_1719, -8
; %var_2_1466 = add i64 %var_2_1460, -8
%var_2_1467 = add i64 %var_2_1462, 9
store i64 %var_2_1467, i64* %PC, align 8
; Matched:%var_2_701:  %var_2_701 = inttoptr i64 %var_2_698 to i64*
; %var_2_1468 = inttoptr i64 %var_2_1466 to i64*
; Matched:%var_2_1790:  %var_2_1790 = load i64, i64* %var_2_1789, align 8
; %var_2_1469 = load i64, i64* %var_2_1468, align 8
; Matched:\<badref\>:  store i64 %var_2_1790, i64* %RCX.i788, align 8
; store i64 %var_2_1469, i64* %RCX, align 8
; Matched:%var_2_1931:  %var_2_1931 = add i64 %var_2_1921, -76
; %var_2_1470 = add i64 %var_2_1460, -76
; Matched:%var_2_1334:  %var_2_1334 = add i64 %var_2_1325, 12
; %var_2_1471 = add i64 %var_2_1462, 12
; Matched:\<badref\>:  store i64 %var_2_1334, i64* %var_2_3, align 8
; store i64 %var_2_1471, i64* %PC, align 8
; Matched:%var_2_1826:  %var_2_1826 = inttoptr i64 %var_2_1824 to i32*
; %var_2_1472 = inttoptr i64 %var_2_1470 to i32*
; Matched:%var_2_1934:  %var_2_1934 = load i32, i32* %var_2_1933, align 4
; %var_2_1473 = load i32, i32* %var_2_1472, align 4
; Matched:%var_2_1828:  %var_2_1828 = add i32 %var_2_1827, 1
; %var_2_1474 = add i32 %var_2_1473, 1
; Matched:%var_2_1936:  %var_2_1936 = zext i32 %var_2_1935 to i64
; %var_2_1475 = zext i32 %var_2_1474 to i64
; Matched:\<badref\>:  store i64 %var_2_1829, i64* %RAX.i798, align 8
; store i64 %var_2_1475, i64* %RAX, align 8
; Matched:%var_2_1937:  %var_2_1937 = icmp eq i32 %var_2_1934, -1
; %var_2_1476 = icmp eq i32 %var_2_1473, -1
; Matched:%var_2_1938:  %var_2_1938 = icmp eq i32 %var_2_1935, 0
; %var_2_1477 = icmp eq i32 %var_2_1474, 0
; Matched:%var_2_1832:  %var_2_1832 = or i1 %var_2_1830, %var_2_1831
; %var_2_1478 = or i1 %var_2_1476, %var_2_1477
; Matched:%var_2_1833:  %var_2_1833 = zext i1 %var_2_1832 to i8
; %var_2_1479 = zext i1 %var_2_1478 to i8
; Matched:\<badref\>:  store i8 %var_2_1940, i8* %var_2_14, align 1
; store i8 %var_2_1479, i8* %var_2_17, align 1
; Matched:%var_2_1834:  %var_2_1834 = and i32 %var_2_1828, 255
; %var_2_1480 = and i32 %var_2_1474, 255
; Matched:%var_2_1942:  %var_2_1942 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1941)
; %var_2_1481 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1480) #14
; Matched:%var_2_1836:  %var_2_1836 = trunc i32 %var_2_1835 to i8
; %var_2_1482 = trunc i32 %var_2_1481 to i8
; Matched:%var_2_1944:  %var_2_1944 = and i8 %var_2_1943, 1
; %var_2_1483 = and i8 %var_2_1482, 1
; Matched:%var_2_1945:  %var_2_1945 = xor i8 %var_2_1944, 1
; %var_2_1484 = xor i8 %var_2_1483, 1
; Matched:\<badref\>:  store i8 %var_2_1838, i8* %var_2_21, align 1
; store i8 %var_2_1484, i8* %var_2_24, align 1
; Matched:%var_2_1839:  %var_2_1839 = xor i32 %var_2_1828, %var_2_1827
; %var_2_1485 = xor i32 %var_2_1474, %var_2_1473
; Matched:%var_2_1947:  %var_2_1947 = lshr i32 %var_2_1946, 4
; %var_2_1486 = lshr i32 %var_2_1485, 4
; Matched:%var_2_1841:  %var_2_1841 = trunc i32 %var_2_1840 to i8
; %var_2_1487 = trunc i32 %var_2_1486 to i8
; Matched:%var_2_1949:  %var_2_1949 = and i8 %var_2_1948, 1
; %var_2_1488 = and i8 %var_2_1487, 1
; Matched:\<badref\>:  store i8 %var_2_1842, i8* %var_2_26, align 1
; store i8 %var_2_1488, i8* %var_2_29, align 1
; Matched:%var_2_1950:  %var_2_1950 = zext i1 %var_2_1938 to i8
; %var_2_1489 = zext i1 %var_2_1477 to i8
; Matched:\<badref\>:  store i8 %var_2_1843, i8* %var_2_29, align 1
; store i8 %var_2_1489, i8* %var_2_32, align 1
; Matched:%var_2_1951:  %var_2_1951 = lshr i32 %var_2_1935, 31
; %var_2_1490 = lshr i32 %var_2_1474, 31
; Matched:%var_2_1845:  %var_2_1845 = trunc i32 %var_2_1844 to i8
; %var_2_1491 = trunc i32 %var_2_1490 to i8
; Matched:\<badref\>:  store i8 %var_2_1952, i8* %var_2_32, align 1
; store i8 %var_2_1491, i8* %var_2_35, align 1
; Matched:%var_2_1846:  %var_2_1846 = lshr i32 %var_2_1827, 31
; %var_2_1492 = lshr i32 %var_2_1473, 31
; Matched:%var_2_1954:  %var_2_1954 = xor i32 %var_2_1951, %var_2_1953
; %var_2_1493 = xor i32 %var_2_1490, %var_2_1492
; Matched:%var_2_1848:  %var_2_1848 = add nuw nsw i32 %var_2_1847, %var_2_1844
; %var_2_1494 = add nuw nsw i32 %var_2_1493, %var_2_1490
; Matched:%var_2_1956:  %var_2_1956 = icmp eq i32 %var_2_1955, 2
; %var_2_1495 = icmp eq i32 %var_2_1494, 2
; Matched:%var_2_1850:  %var_2_1850 = zext i1 %var_2_1849 to i8
; %var_2_1496 = zext i1 %var_2_1495 to i8
; Matched:\<badref\>:  store i8 %var_2_1957, i8* %var_2_38, align 1
; store i8 %var_2_1496, i8* %var_2_41, align 1
; Matched:%var_2_1851:  %var_2_1851 = sext i32 %var_2_1828 to i64
; %var_2_1497 = sext i32 %var_2_1474 to i64
; Matched:\<badref\>:  store i64 %var_2_1958, i64* %RDX.i786, align 8
; store i64 %var_2_1497, i64* %RDX, align 8
; Matched:%var_2_1959:  %var_2_1959 = shl nsw i64 %var_2_1958, 3
; %var_2_1498 = shl nsw i64 %var_2_1497, 3
; Matched:%var_2_1960:  %var_2_1960 = add i64 %var_2_1930, %var_2_1959
; %var_2_1499 = add i64 %var_2_1469, %var_2_1498
; Matched:%var_2_898:  %var_2_898 = add i64 %var_2_860, 23
; %var_2_1500 = add i64 %var_2_1462, 23
; Matched:\<badref\>:  store i64 %var_2_898, i64* %var_2_3, align 8
; store i64 %var_2_1500, i64* %PC, align 8
; Matched:%var_2_1962:  %var_2_1962 = bitcast i64 %var_2_1926 to double
; %var_2_1501 = bitcast i64 %var_2_1465 to double
; Matched:%var_2_1963:  %var_2_1963 = inttoptr i64 %var_2_1960 to double*
; %var_2_1502 = inttoptr i64 %var_2_1499 to double*
; Matched:%var_2_1964:  %var_2_1964 = load double, double* %var_2_1963, align 8
; %var_2_1503 = load double, double* %var_2_1502, align 8
; Matched:%var_2_1965:  %var_2_1965 = fadd double %var_2_1962, %var_2_1964
; %var_2_1504 = fadd double %var_2_1501, %var_2_1503
; Matched:\<badref\>:  store double %var_2_1965, double* %var_2_228, align 1
; store double %var_2_1504, double* %var_2_1857, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_194, align 1
; store i64 0, i64* %var_2_1829, align 1
; Matched:%var_2_1966:  %var_2_1966 = add i64 %var_2_1923, 28
; %var_2_1505 = add i64 %var_2_1462, 28
; Matched:\<badref\>:  store i64 %var_2_1966, i64* %var_2_3, align 8
; store i64 %var_2_1505, i64* %PC, align 8
; Matched:%var_2_1967:  %var_2_1967 = inttoptr i64 %var_2_1960 to double*
; %var_2_1506 = inttoptr i64 %var_2_1499 to double*
; Matched:\<badref\>:  store double %var_2_1965, double* %var_2_1967, align 8
; store double %var_2_1504, double* %var_2_1506, align 8
%var_2_1507 = load i64, i64* %RBP, align 8
; Matched:%var_2_2141:  %var_2_2141 = add i64 %var_2_1470, -64
; %var_2_1508 = add i64 %var_2_1507, -64
%var_2_1509 = load i64, i64* %PC, align 8
; Matched:%var_2_373:  %var_2_373 = add i64 %var_2_372, 3
; %var_2_1510 = add i64 %var_2_1509, 3
; Matched:\<badref\>:  store i64 %var_2_373, i64* %var_2_3, align 8
; store i64 %var_2_1510, i64* %PC, align 8
; Matched:%var_2_1972:  %var_2_1972 = inttoptr i64 %var_2_1969 to i32*
; %var_2_1511 = inttoptr i64 %var_2_1508 to i32*
; Matched:%var_2_2144:  %var_2_2144 = load i32, i32* %var_2_2143, align 4
; %var_2_1512 = load i32, i32* %var_2_1511, align 4
; Matched:%var_2_2145:  %var_2_2145 = zext i32 %var_2_2144 to i64
; %var_2_1513 = zext i32 %var_2_1512 to i64
; Matched:\<badref\>:  store i64 %var_2_1337, i64* %RAX.i798, align 8
; store i64 %var_2_1513, i64* %RAX, align 8
; Matched:%var_2_1975:  %var_2_1975 = add i64 %var_2_1968, -32
; %var_2_1514 = add i64 %var_2_1507, -32
; Matched:%var_2_284:  %var_2_284 = add i64 %var_2_278, 6
; %var_2_1515 = add i64 %var_2_1509, 6
; Matched:\<badref\>:  store i64 %var_2_284, i64* %var_2_3, align 8
; store i64 %var_2_1515, i64* %PC, align 8
; Matched:%var_2_1977:  %var_2_1977 = inttoptr i64 %var_2_1975 to i32*
; %var_2_1516 = inttoptr i64 %var_2_1514 to i32*
; Matched:%var_2_1978:  %var_2_1978 = load i32, i32* %var_2_1977, align 4
; %var_2_1517 = load i32, i32* %var_2_1516, align 4
; Matched:%var_2_1979:  %var_2_1979 = add i32 %var_2_1978, %var_2_1973
; %var_2_1518 = add i32 %var_2_1517, %var_2_1512
; Matched:%var_2_1980:  %var_2_1980 = zext i32 %var_2_1979 to i64
; %var_2_1519 = zext i32 %var_2_1518 to i64
; Matched:\<badref\>:  store i64 %var_2_1980, i64* %RAX.i798, align 8
; store i64 %var_2_1519, i64* %RAX, align 8
; Matched:%var_2_1981:  %var_2_1981 = icmp ult i32 %var_2_1979, %var_2_1973
; %var_2_1520 = icmp ult i32 %var_2_1518, %var_2_1512
; Matched:%var_2_1982:  %var_2_1982 = icmp ult i32 %var_2_1979, %var_2_1978
; %var_2_1521 = icmp ult i32 %var_2_1518, %var_2_1517
; Matched:%var_2_1983:  %var_2_1983 = or i1 %var_2_1981, %var_2_1982
; %var_2_1522 = or i1 %var_2_1520, %var_2_1521
; Matched:%var_2_1984:  %var_2_1984 = zext i1 %var_2_1983 to i8
; %var_2_1523 = zext i1 %var_2_1522 to i8
; Matched:\<badref\>:  store i8 %var_2_1984, i8* %var_2_14, align 1
; store i8 %var_2_1523, i8* %var_2_17, align 1
; Matched:%var_2_1985:  %var_2_1985 = and i32 %var_2_1979, 255
; %var_2_1524 = and i32 %var_2_1518, 255
; Matched:%var_2_1986:  %var_2_1986 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1985)
; %var_2_1525 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1524) #14
; Matched:%var_2_1987:  %var_2_1987 = trunc i32 %var_2_1986 to i8
; %var_2_1526 = trunc i32 %var_2_1525 to i8
; Matched:%var_2_1988:  %var_2_1988 = and i8 %var_2_1987, 1
; %var_2_1527 = and i8 %var_2_1526, 1
; Matched:%var_2_1989:  %var_2_1989 = xor i8 %var_2_1988, 1
; %var_2_1528 = xor i8 %var_2_1527, 1
; Matched:\<badref\>:  store i8 %var_2_1989, i8* %var_2_21, align 1
; store i8 %var_2_1528, i8* %var_2_24, align 1
; Matched:%var_2_1990:  %var_2_1990 = xor i32 %var_2_1978, %var_2_1973
; %var_2_1529 = xor i32 %var_2_1517, %var_2_1512
; Matched:%var_2_1991:  %var_2_1991 = xor i32 %var_2_1990, %var_2_1979
; %var_2_1530 = xor i32 %var_2_1529, %var_2_1518
; Matched:%var_2_1992:  %var_2_1992 = lshr i32 %var_2_1991, 4
; %var_2_1531 = lshr i32 %var_2_1530, 4
; Matched:%var_2_1993:  %var_2_1993 = trunc i32 %var_2_1992 to i8
; %var_2_1532 = trunc i32 %var_2_1531 to i8
; Matched:%var_2_1994:  %var_2_1994 = and i8 %var_2_1993, 1
; %var_2_1533 = and i8 %var_2_1532, 1
; Matched:\<badref\>:  store i8 %var_2_1994, i8* %var_2_26, align 1
; store i8 %var_2_1533, i8* %var_2_29, align 1
; Matched:%var_2_1995:  %var_2_1995 = icmp eq i32 %var_2_1979, 0
; %var_2_1534 = icmp eq i32 %var_2_1518, 0
; Matched:%var_2_1996:  %var_2_1996 = zext i1 %var_2_1995 to i8
; %var_2_1535 = zext i1 %var_2_1534 to i8
; Matched:\<badref\>:  store i8 %var_2_1996, i8* %var_2_29, align 1
; store i8 %var_2_1535, i8* %var_2_32, align 1
; Matched:%var_2_1997:  %var_2_1997 = lshr i32 %var_2_1979, 31
; %var_2_1536 = lshr i32 %var_2_1518, 31
; Matched:%var_2_1998:  %var_2_1998 = trunc i32 %var_2_1997 to i8
; %var_2_1537 = trunc i32 %var_2_1536 to i8
; Matched:\<badref\>:  store i8 %var_2_1998, i8* %var_2_32, align 1
; store i8 %var_2_1537, i8* %var_2_35, align 1
; Matched:%var_2_1999:  %var_2_1999 = lshr i32 %var_2_1973, 31
; %var_2_1538 = lshr i32 %var_2_1512, 31
; Matched:%var_2_2000:  %var_2_2000 = lshr i32 %var_2_1978, 31
; %var_2_1539 = lshr i32 %var_2_1517, 31
; Matched:%var_2_2001:  %var_2_2001 = xor i32 %var_2_1997, %var_2_1999
; %var_2_1540 = xor i32 %var_2_1536, %var_2_1538
; Matched:%var_2_2002:  %var_2_2002 = xor i32 %var_2_1997, %var_2_2000
; %var_2_1541 = xor i32 %var_2_1536, %var_2_1539
; Matched:%var_2_2003:  %var_2_2003 = add nuw nsw i32 %var_2_2001, %var_2_2002
; %var_2_1542 = add nuw nsw i32 %var_2_1540, %var_2_1541
; Matched:%var_2_2004:  %var_2_2004 = icmp eq i32 %var_2_2003, 2
; %var_2_1543 = icmp eq i32 %var_2_1542, 2
; Matched:%var_2_2005:  %var_2_2005 = zext i1 %var_2_2004 to i8
; %var_2_1544 = zext i1 %var_2_1543 to i8
; Matched:\<badref\>:  store i8 %var_2_2005, i8* %var_2_38, align 1
; store i8 %var_2_1544, i8* %var_2_41, align 1
%var_2_1545 = add i64 %var_2_1509, 9
store i64 %var_2_1545, i64* %PC, align 8
; Matched:\<badref\>:  store i32 %var_2_1979, i32* %var_2_1977, align 4
; store i32 %var_2_1518, i32* %var_2_1516, align 4
; Matched:%var_2_2007:  %var_2_2007 = load i64, i64* %var_2_3, align 8
; %var_2_1546 = load i64, i64* %PC, align 8
; Matched:%var_2_2008:  %var_2_2008 = add i64 %var_2_2007, -265
; %var_2_1547 = add i64 %var_2_1546, -265
; Matched:\<badref\>:  store i64 %var_2_2008, i64* %var_2_3, align 8
; store i64 %var_2_1547, i64* %PC, align 8
  br label %block_400eb0

block_400d30:                                     ; preds = %block_400c4d
%var_2_1548 = add i64 %var_2_793, 5
; Matched:\<badref\>:  store i64 %var_2_970, i64* %var_2_3, align 8
; store i64 %var_2_1548, i64* %PC, align 8
  %.pre101 = load i64, i64* %RBP, align 8
  br label %block_400d35

block_400d1d:                                     ; preds = %block_400c67
; Matched:%var_2_941:  %var_2_941 = add i64 %var_2_576, -28
; %var_2_1549 = add i64 %var_2_1774, -28
; Matched:%var_2_942:  %var_2_942 = add i64 %var_2_612, 8
; %var_2_1550 = add i64 %var_2_1810, 8
; Matched:\<badref\>:  store i64 %var_2_942, i64* %var_2_3, align 8
; store i64 %var_2_1550, i64* %PC, align 8
; Matched:%var_2_2011:  %var_2_2011 = inttoptr i64 %var_2_2009 to i32*
; %var_2_1551 = inttoptr i64 %var_2_1549 to i32*
; Matched:%var_2_2012:  %var_2_2012 = load i32, i32* %var_2_2011, align 4
; %var_2_1552 = load i32, i32* %var_2_1551, align 4
; Matched:%var_2_2013:  %var_2_2013 = add i32 %var_2_2012, 2
; %var_2_1553 = add i32 %var_2_1552, 2
; Matched:%var_2_2014:  %var_2_2014 = zext i32 %var_2_2013 to i64
; %var_2_1554 = zext i32 %var_2_1553 to i64
; Matched:\<badref\>:  store i64 %var_2_2014, i64* %RAX.i798, align 8
; store i64 %var_2_1554, i64* %RAX, align 8
; Matched:%var_2_947:  %var_2_947 = icmp ugt i32 %var_2_944, -3
; %var_2_1555 = icmp ugt i32 %var_2_1552, -3
; Matched:%var_2_2016:  %var_2_2016 = zext i1 %var_2_2015 to i8
; %var_2_1556 = zext i1 %var_2_1555 to i8
; Matched:\<badref\>:  store i8 %var_2_948, i8* %var_2_14, align 1
; store i8 %var_2_1556, i8* %var_2_17, align 1
; Matched:%var_2_2017:  %var_2_2017 = and i32 %var_2_2013, 255
; %var_2_1557 = and i32 %var_2_1553, 255
; Matched:%var_2_2018:  %var_2_2018 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2017)
; %var_2_1558 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1557) #14
; Matched:%var_2_2019:  %var_2_2019 = trunc i32 %var_2_2018 to i8
; %var_2_1559 = trunc i32 %var_2_1558 to i8
; Matched:%var_2_2020:  %var_2_2020 = and i8 %var_2_2019, 1
; %var_2_1560 = and i8 %var_2_1559, 1
; Matched:%var_2_2021:  %var_2_2021 = xor i8 %var_2_2020, 1
; %var_2_1561 = xor i8 %var_2_1560, 1
; Matched:\<badref\>:  store i8 %var_2_953, i8* %var_2_21, align 1
; store i8 %var_2_1561, i8* %var_2_24, align 1
; Matched:%var_2_2022:  %var_2_2022 = xor i32 %var_2_2013, %var_2_2012
; %var_2_1562 = xor i32 %var_2_1553, %var_2_1552
; Matched:%var_2_955:  %var_2_955 = lshr i32 %var_2_954, 4
; %var_2_1563 = lshr i32 %var_2_1562, 4
; Matched:%var_2_2024:  %var_2_2024 = trunc i32 %var_2_2023 to i8
; %var_2_1564 = trunc i32 %var_2_1563 to i8
; Matched:%var_2_2025:  %var_2_2025 = and i8 %var_2_2024, 1
; %var_2_1565 = and i8 %var_2_1564, 1
; Matched:\<badref\>:  store i8 %var_2_2025, i8* %var_2_26, align 1
; store i8 %var_2_1565, i8* %var_2_29, align 1
; Matched:%var_2_2026:  %var_2_2026 = icmp eq i32 %var_2_2013, 0
; %var_2_1566 = icmp eq i32 %var_2_1553, 0
; Matched:%var_2_2027:  %var_2_2027 = zext i1 %var_2_2026 to i8
; %var_2_1567 = zext i1 %var_2_1566 to i8
; Matched:\<badref\>:  store i8 %var_2_959, i8* %var_2_29, align 1
; store i8 %var_2_1567, i8* %var_2_32, align 1
; Matched:%var_2_2028:  %var_2_2028 = lshr i32 %var_2_2013, 31
; %var_2_1568 = lshr i32 %var_2_1553, 31
; Matched:%var_2_961:  %var_2_961 = trunc i32 %var_2_960 to i8
; %var_2_1569 = trunc i32 %var_2_1568 to i8
; Matched:\<badref\>:  store i8 %var_2_2029, i8* %var_2_32, align 1
; store i8 %var_2_1569, i8* %var_2_35, align 1
; Matched:%var_2_2030:  %var_2_2030 = lshr i32 %var_2_2012, 31
; %var_2_1570 = lshr i32 %var_2_1552, 31
; Matched:%var_2_2031:  %var_2_2031 = xor i32 %var_2_2028, %var_2_2030
; %var_2_1571 = xor i32 %var_2_1568, %var_2_1570
; Matched:%var_2_2032:  %var_2_2032 = add nuw nsw i32 %var_2_2031, %var_2_2028
; %var_2_1572 = add nuw nsw i32 %var_2_1571, %var_2_1568
; Matched:%var_2_2033:  %var_2_2033 = icmp eq i32 %var_2_2032, 2
; %var_2_1573 = icmp eq i32 %var_2_1572, 2
; Matched:%var_2_966:  %var_2_966 = zext i1 %var_2_965 to i8
; %var_2_1574 = zext i1 %var_2_1573 to i8
; Matched:\<badref\>:  store i8 %var_2_2034, i8* %var_2_38, align 1
; store i8 %var_2_1574, i8* %var_2_41, align 1
; Matched:%var_2_967:  %var_2_967 = add i64 %var_2_612, 14
; %var_2_1575 = add i64 %var_2_1810, 14
; Matched:\<badref\>:  store i64 %var_2_967, i64* %var_2_3, align 8
; store i64 %var_2_1575, i64* %PC, align 8
; Matched:\<badref\>:  store i32 %var_2_2013, i32* %var_2_2011, align 4
; store i32 %var_2_1553, i32* %var_2_1551, align 4
%var_2_1576 = load i64, i64* %PC, align 8
%var_2_1577 = add i64 %var_2_1576, -222
; Matched:\<badref\>:  store i64 %var_2_969, i64* %var_2_3, align 8
; store i64 %var_2_1577, i64* %PC, align 8
  br label %block_400c4d

block_400c3b:                                     ; preds = %block_400c2f
; Matched:%var_2_1240:  %var_2_1240 = add i64 %var_2_479, 3
; %var_2_1578 = add i64 %var_2_1725, 3
; Matched:\<badref\>:  store i64 %var_2_1240, i64* %var_2_3, align 8
; store i64 %var_2_1578, i64* %PC, align 8
%var_2_1579 = load i32, i32* %var_2_1692, align 4
; Matched:%var_2_482:  %var_2_482 = zext i32 %var_2_481 to i64
; %var_2_1580 = zext i32 %var_2_1579 to i64
; Matched:\<badref\>:  store i64 %var_2_482, i64* %RAX.i798, align 8
; store i64 %var_2_1580, i64* %RAX, align 8
%var_2_1581 = add i64 %var_2_1689, -40
; Matched:%var_2_484:  %var_2_484 = add i64 %var_2_479, 6
; %var_2_1582 = add i64 %var_2_1725, 6
; Matched:\<badref\>:  store i64 %var_2_1245, i64* %var_2_3, align 8
; store i64 %var_2_1582, i64* %PC, align 8
%var_2_1583 = inttoptr i64 %var_2_1581 to i32*
%var_2_1584 = load i32, i32* %var_2_1583, align 4
%var_2_1585 = sub i32 %var_2_1579, %var_2_1584
; Matched:%var_2_488:  %var_2_488 = icmp ult i32 %var_2_481, %var_2_486
; %var_2_1586 = icmp ult i32 %var_2_1579, %var_2_1584
; Matched:%var_2_489:  %var_2_489 = zext i1 %var_2_488 to i8
; %var_2_1587 = zext i1 %var_2_1586 to i8
; Matched:\<badref\>:  store i8 %var_2_489, i8* %var_2_14, align 1
; store i8 %var_2_1587, i8* %var_2_17, align 1
; Matched:%var_2_490:  %var_2_490 = and i32 %var_2_487, 255
; %var_2_1588 = and i32 %var_2_1585, 255
; Matched:%var_2_491:  %var_2_491 = tail call i32 @llvm.ctpop.i32(i32 %var_2_490)
; %var_2_1589 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1588) #14
; Matched:%var_2_492:  %var_2_492 = trunc i32 %var_2_491 to i8
; %var_2_1590 = trunc i32 %var_2_1589 to i8
; Matched:%var_2_493:  %var_2_493 = and i8 %var_2_492, 1
; %var_2_1591 = and i8 %var_2_1590, 1
; Matched:%var_2_494:  %var_2_494 = xor i8 %var_2_493, 1
; %var_2_1592 = xor i8 %var_2_1591, 1
; Matched:\<badref\>:  store i8 %var_2_494, i8* %var_2_21, align 1
; store i8 %var_2_1592, i8* %var_2_24, align 1
; Matched:%var_2_495:  %var_2_495 = xor i32 %var_2_486, %var_2_481
; %var_2_1593 = xor i32 %var_2_1584, %var_2_1579
; Matched:%var_2_496:  %var_2_496 = xor i32 %var_2_495, %var_2_487
; %var_2_1594 = xor i32 %var_2_1593, %var_2_1585
; Matched:%var_2_497:  %var_2_497 = lshr i32 %var_2_496, 4
; %var_2_1595 = lshr i32 %var_2_1594, 4
; Matched:%var_2_498:  %var_2_498 = trunc i32 %var_2_497 to i8
; %var_2_1596 = trunc i32 %var_2_1595 to i8
; Matched:%var_2_499:  %var_2_499 = and i8 %var_2_498, 1
; %var_2_1597 = and i8 %var_2_1596, 1
; Matched:\<badref\>:  store i8 %var_2_499, i8* %var_2_26, align 1
; store i8 %var_2_1597, i8* %var_2_29, align 1
; Matched:%var_2_500:  %var_2_500 = icmp eq i32 %var_2_487, 0
; %var_2_1598 = icmp eq i32 %var_2_1585, 0
; Matched:%var_2_501:  %var_2_501 = zext i1 %var_2_500 to i8
; %var_2_1599 = zext i1 %var_2_1598 to i8
; Matched:\<badref\>:  store i8 %var_2_501, i8* %var_2_29, align 1
; store i8 %var_2_1599, i8* %var_2_32, align 1
%var_2_1600 = lshr i32 %var_2_1585, 31
%var_2_1601 = trunc i32 %var_2_1600 to i8
; Matched:\<badref\>:  store i8 %var_2_503, i8* %var_2_32, align 1
; store i8 %var_2_1601, i8* %var_2_35, align 1
%var_2_1602 = lshr i32 %var_2_1579, 31
%var_2_1603 = lshr i32 %var_2_1584, 31
%var_2_1604 = xor i32 %var_2_1603, %var_2_1602
%var_2_1605 = xor i32 %var_2_1600, %var_2_1602
%var_2_1606 = add nuw nsw i32 %var_2_1605, %var_2_1604
%var_2_1607 = icmp eq i32 %var_2_1606, 2
; Matched:%var_2_510:  %var_2_510 = zext i1 %var_2_509 to i8
; %var_2_1608 = zext i1 %var_2_1607 to i8
; Matched:\<badref\>:  store i8 %var_2_510, i8* %var_2_38, align 1
; store i8 %var_2_1608, i8* %var_2_41, align 1
%var_2_1609 = icmp ne i8 %var_2_1601, 0
%var_2_1610 = xor i1 %var_2_1609, %var_2_1607
%.v128 = select i1 %var_2_1610, i64 12, i64 250
%var_2_1611 = add i64 %var_2_1725, %.v128
; Matched:\<badref\>:  store i64 %var_2_513, i64* %var_2_3, align 8
; store i64 %var_2_1611, i64* %PC, align 8
br i1 %var_2_1610, label %block_400c47, label %block_400d35

block_400dac:                                     ; preds = %block_400da6, %block_401043
%var_2_1612 = phi i64 [ %.pre104, %block_400da6 ], [ %var_2_516, %block_401043 ]
%MEMORY.6 = phi %struct.Memory* [ %var_2_1043, %block_400da6 ], [ %var_2_2018, %block_401043 ]
%var_2_1613 = load i64, i64* %RBP, align 8
%var_2_1614 = add i64 %var_2_1613, -60
; Matched:%var_2_1250:  %var_2_1250 = add i64 %var_2_1247, 3
; %var_2_1615 = add i64 %var_2_1612, 3
; Matched:\<badref\>:  store i64 %var_2_1250, i64* %var_2_3, align 8
; store i64 %var_2_1615, i64* %PC, align 8
%var_2_1616 = inttoptr i64 %var_2_1614 to i32*
%var_2_1617 = load i32, i32* %var_2_1616, align 4
; Matched:%var_2_1253:  %var_2_1253 = zext i32 %var_2_1252 to i64
; %var_2_1618 = zext i32 %var_2_1617 to i64
; Matched:\<badref\>:  store i64 %var_2_1253, i64* %RAX.i798, align 8
; store i64 %var_2_1618, i64* %RAX, align 8
%var_2_1619 = add i64 %var_2_1613, -52
; Matched:%var_2_1255:  %var_2_1255 = add i64 %var_2_1247, 6
; %var_2_1620 = add i64 %var_2_1612, 6
; Matched:\<badref\>:  store i64 %var_2_1255, i64* %var_2_3, align 8
; store i64 %var_2_1620, i64* %PC, align 8
%var_2_1621 = inttoptr i64 %var_2_1619 to i32*
%var_2_1622 = load i32, i32* %var_2_1621, align 4
%var_2_1623 = sub i32 %var_2_1617, %var_2_1622
; Matched:%var_2_1259:  %var_2_1259 = icmp ult i32 %var_2_1252, %var_2_1257
; %var_2_1624 = icmp ult i32 %var_2_1617, %var_2_1622
; Matched:%var_2_1260:  %var_2_1260 = zext i1 %var_2_1259 to i8
; %var_2_1625 = zext i1 %var_2_1624 to i8
; Matched:\<badref\>:  store i8 %var_2_1260, i8* %var_2_14, align 1
; store i8 %var_2_1625, i8* %var_2_17, align 1
; Matched:%var_2_1261:  %var_2_1261 = and i32 %var_2_1258, 255
; %var_2_1626 = and i32 %var_2_1623, 255
; Matched:%var_2_1262:  %var_2_1262 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1261)
; %var_2_1627 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1626) #14
; Matched:%var_2_1263:  %var_2_1263 = trunc i32 %var_2_1262 to i8
; %var_2_1628 = trunc i32 %var_2_1627 to i8
; Matched:%var_2_1264:  %var_2_1264 = and i8 %var_2_1263, 1
; %var_2_1629 = and i8 %var_2_1628, 1
; Matched:%var_2_1265:  %var_2_1265 = xor i8 %var_2_1264, 1
; %var_2_1630 = xor i8 %var_2_1629, 1
; Matched:\<badref\>:  store i8 %var_2_1265, i8* %var_2_21, align 1
; store i8 %var_2_1630, i8* %var_2_24, align 1
; Matched:%var_2_1266:  %var_2_1266 = xor i32 %var_2_1257, %var_2_1252
; %var_2_1631 = xor i32 %var_2_1622, %var_2_1617
; Matched:%var_2_1267:  %var_2_1267 = xor i32 %var_2_1266, %var_2_1258
; %var_2_1632 = xor i32 %var_2_1631, %var_2_1623
; Matched:%var_2_1268:  %var_2_1268 = lshr i32 %var_2_1267, 4
; %var_2_1633 = lshr i32 %var_2_1632, 4
; Matched:%var_2_1269:  %var_2_1269 = trunc i32 %var_2_1268 to i8
; %var_2_1634 = trunc i32 %var_2_1633 to i8
; Matched:%var_2_1270:  %var_2_1270 = and i8 %var_2_1269, 1
; %var_2_1635 = and i8 %var_2_1634, 1
; Matched:\<badref\>:  store i8 %var_2_1270, i8* %var_2_26, align 1
; store i8 %var_2_1635, i8* %var_2_29, align 1
; Matched:%var_2_1271:  %var_2_1271 = icmp eq i32 %var_2_1258, 0
; %var_2_1636 = icmp eq i32 %var_2_1623, 0
; Matched:%var_2_1272:  %var_2_1272 = zext i1 %var_2_1271 to i8
; %var_2_1637 = zext i1 %var_2_1636 to i8
; Matched:\<badref\>:  store i8 %var_2_1272, i8* %var_2_29, align 1
; store i8 %var_2_1637, i8* %var_2_32, align 1
%var_2_1638 = lshr i32 %var_2_1623, 31
%var_2_1639 = trunc i32 %var_2_1638 to i8
; Matched:\<badref\>:  store i8 %var_2_1274, i8* %var_2_32, align 1
; store i8 %var_2_1639, i8* %var_2_35, align 1
%var_2_1640 = lshr i32 %var_2_1617, 31
%var_2_1641 = lshr i32 %var_2_1622, 31
%var_2_1642 = xor i32 %var_2_1641, %var_2_1640
%var_2_1643 = xor i32 %var_2_1638, %var_2_1640
%var_2_1644 = add nuw nsw i32 %var_2_1643, %var_2_1642
%var_2_1645 = icmp eq i32 %var_2_1644, 2
; Matched:%var_2_1281:  %var_2_1281 = zext i1 %var_2_1280 to i8
; %var_2_1646 = zext i1 %var_2_1645 to i8
; Matched:\<badref\>:  store i8 %var_2_1281, i8* %var_2_38, align 1
; store i8 %var_2_1646, i8* %var_2_41, align 1
%var_2_1647 = icmp ne i8 %var_2_1639, 0
%var_2_1648 = xor i1 %var_2_1647, %var_2_1645
%.v125 = select i1 %var_2_1648, i64 12, i64 674
%var_2_1649 = add i64 %var_2_1612, %.v125
; Matched:\<badref\>:  store i64 %var_2_1284, i64* %var_2_3, align 8
; store i64 %var_2_1649, i64* %PC, align 8
br i1 %var_2_1648, label %block_400db8, label %block_40104e

block_400b97:                                     ; preds = %block_400ba3, %block_400b70
; Matched:%var_2_74:  %var_2_74 = phi i64 [ %var_2_178, %block_400ba3 ], [ %.pre, %entry ]
; %var_2_1650 = phi i64 [ %var_2_2192, %block_400ba3 ], [ %.pre, %block_400b70 ]
%var_2_1651 = load i64, i64* %RBP, align 8
%var_2_1652 = add i64 %var_2_1651, -72
; Matched:%var_2_77:  %var_2_77 = add i64 %var_2_74, 3
; %var_2_1653 = add i64 %var_2_1650, 3
; Matched:\<badref\>:  store i64 %var_2_77, i64* %var_2_3, align 8
; store i64 %var_2_1653, i64* %PC, align 8
%var_2_1654 = inttoptr i64 %var_2_1652 to i32*
%var_2_1655 = load i32, i32* %var_2_1654, align 4
; Matched:%var_2_80:  %var_2_80 = zext i32 %var_2_79 to i64
; %var_2_1656 = zext i32 %var_2_1655 to i64
; Matched:\<badref\>:  store i64 %var_2_80, i64* %RAX.i798, align 8
; store i64 %var_2_1656, i64* %RAX, align 8
%var_2_1657 = add i64 %var_2_1651, -20
; Matched:%var_2_82:  %var_2_82 = add i64 %var_2_74, 6
; %var_2_1658 = add i64 %var_2_1650, 6
; Matched:\<badref\>:  store i64 %var_2_82, i64* %var_2_3, align 8
; store i64 %var_2_1658, i64* %PC, align 8
%var_2_1659 = inttoptr i64 %var_2_1657 to i32*
%var_2_1660 = load i32, i32* %var_2_1659, align 4
%var_2_1661 = sub i32 %var_2_1655, %var_2_1660
; Matched:%var_2_86:  %var_2_86 = icmp ult i32 %var_2_79, %var_2_84
; %var_2_1662 = icmp ult i32 %var_2_1655, %var_2_1660
; Matched:%var_2_87:  %var_2_87 = zext i1 %var_2_86 to i8
; %var_2_1663 = zext i1 %var_2_1662 to i8
; Matched:\<badref\>:  store i8 %var_2_87, i8* %var_2_14, align 1
; store i8 %var_2_1663, i8* %var_2_17, align 1
; Matched:%var_2_88:  %var_2_88 = and i32 %var_2_85, 255
; %var_2_1664 = and i32 %var_2_1661, 255
; Matched:%var_2_89:  %var_2_89 = tail call i32 @llvm.ctpop.i32(i32 %var_2_88)
; %var_2_1665 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1664) #14
; Matched:%var_2_90:  %var_2_90 = trunc i32 %var_2_89 to i8
; %var_2_1666 = trunc i32 %var_2_1665 to i8
; Matched:%var_2_91:  %var_2_91 = and i8 %var_2_90, 1
; %var_2_1667 = and i8 %var_2_1666, 1
; Matched:%var_2_92:  %var_2_92 = xor i8 %var_2_91, 1
; %var_2_1668 = xor i8 %var_2_1667, 1
; Matched:\<badref\>:  store i8 %var_2_92, i8* %var_2_21, align 1
; store i8 %var_2_1668, i8* %var_2_24, align 1
; Matched:%var_2_93:  %var_2_93 = xor i32 %var_2_84, %var_2_79
; %var_2_1669 = xor i32 %var_2_1660, %var_2_1655
; Matched:%var_2_94:  %var_2_94 = xor i32 %var_2_93, %var_2_85
; %var_2_1670 = xor i32 %var_2_1669, %var_2_1661
; Matched:%var_2_95:  %var_2_95 = lshr i32 %var_2_94, 4
; %var_2_1671 = lshr i32 %var_2_1670, 4
; Matched:%var_2_96:  %var_2_96 = trunc i32 %var_2_95 to i8
; %var_2_1672 = trunc i32 %var_2_1671 to i8
; Matched:%var_2_97:  %var_2_97 = and i8 %var_2_96, 1
; %var_2_1673 = and i8 %var_2_1672, 1
; Matched:\<badref\>:  store i8 %var_2_97, i8* %var_2_26, align 1
; store i8 %var_2_1673, i8* %var_2_29, align 1
%var_2_1674 = icmp eq i32 %var_2_1661, 0
; Matched:%var_2_99:  %var_2_99 = zext i1 %var_2_98 to i8
; %var_2_1675 = zext i1 %var_2_1674 to i8
; Matched:\<badref\>:  store i8 %var_2_99, i8* %var_2_29, align 1
; store i8 %var_2_1675, i8* %var_2_32, align 1
%var_2_1676 = lshr i32 %var_2_1661, 31
%var_2_1677 = trunc i32 %var_2_1676 to i8
; Matched:\<badref\>:  store i8 %var_2_101, i8* %var_2_32, align 1
; store i8 %var_2_1677, i8* %var_2_35, align 1
%var_2_1678 = lshr i32 %var_2_1655, 31
%var_2_1679 = lshr i32 %var_2_1660, 31
%var_2_1680 = xor i32 %var_2_1679, %var_2_1678
%var_2_1681 = xor i32 %var_2_1676, %var_2_1678
%var_2_1682 = add nuw nsw i32 %var_2_1681, %var_2_1680
%var_2_1683 = icmp eq i32 %var_2_1682, 2
; Matched:%var_2_108:  %var_2_108 = zext i1 %var_2_107 to i8
; %var_2_1684 = zext i1 %var_2_1683 to i8
; Matched:\<badref\>:  store i8 %var_2_108, i8* %var_2_38, align 1
; store i8 %var_2_1684, i8* %var_2_41, align 1
%var_2_1685 = icmp ne i8 %var_2_1677, 0
%var_2_1686 = xor i1 %var_2_1685, %var_2_1683
%.demorgan = or i1 %var_2_1674, %var_2_1686
; Matched:  %.v68 = select i1 %.demorgan, i64 12, i64 44
; %.v122 = select i1 %.demorgan, i64 12, i64 44
; Matched:%var_2_111:  %var_2_111 = add i64 %var_2_74, %.v68
; %var_2_1687 = add i64 %var_2_1650, %.v122
; Matched:\<badref\>:  store i64 %var_2_111, i64* %var_2_3, align 8
; store i64 %var_2_1687, i64* %PC, align 8
  br i1 %.demorgan, label %block_400ba3, label %block_400bc3

block_400c2f:                                     ; preds = %block_400d71, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
%var_2_1688 = phi i64 [ %var_2_1939, %block_400d71 ], [ %.pre98, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
%var_2_1689 = load i64, i64* %RBP, align 8
%var_2_1690 = add i64 %var_2_1689, -32
; Matched:%var_2_445:  %var_2_445 = add i64 %var_2_442, 3
; %var_2_1691 = add i64 %var_2_1688, 3
; Matched:\<badref\>:  store i64 %var_2_445, i64* %var_2_3, align 8
; store i64 %var_2_1691, i64* %PC, align 8
%var_2_1692 = inttoptr i64 %var_2_1690 to i32*
%var_2_1693 = load i32, i32* %var_2_1692, align 4
; Matched:%var_2_516:  %var_2_516 = zext i32 %var_2_515 to i64
; %var_2_1694 = zext i32 %var_2_1693 to i64
; Matched:\<badref\>:  store i64 %var_2_516, i64* %RAX.i798, align 8
; store i64 %var_2_1694, i64* %RAX, align 8
%var_2_1695 = add i64 %var_2_1689, -52
; Matched:%var_2_450:  %var_2_450 = add i64 %var_2_442, 6
; %var_2_1696 = add i64 %var_2_1688, 6
; Matched:\<badref\>:  store i64 %var_2_450, i64* %var_2_3, align 8
; store i64 %var_2_1696, i64* %PC, align 8
%var_2_1697 = inttoptr i64 %var_2_1695 to i32*
%var_2_1698 = load i32, i32* %var_2_1697, align 4
%var_2_1699 = sub i32 %var_2_1693, %var_2_1698
; Matched:%var_2_454:  %var_2_454 = icmp ult i32 %var_2_447, %var_2_452
; %var_2_1700 = icmp ult i32 %var_2_1693, %var_2_1698
; Matched:%var_2_455:  %var_2_455 = zext i1 %var_2_454 to i8
; %var_2_1701 = zext i1 %var_2_1700 to i8
; Matched:\<badref\>:  store i8 %var_2_455, i8* %var_2_14, align 1
; store i8 %var_2_1701, i8* %var_2_17, align 1
; Matched:%var_2_456:  %var_2_456 = and i32 %var_2_453, 255
; %var_2_1702 = and i32 %var_2_1699, 255
; Matched:%var_2_457:  %var_2_457 = tail call i32 @llvm.ctpop.i32(i32 %var_2_456)
; %var_2_1703 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1702) #14
; Matched:%var_2_458:  %var_2_458 = trunc i32 %var_2_457 to i8
; %var_2_1704 = trunc i32 %var_2_1703 to i8
; Matched:%var_2_459:  %var_2_459 = and i8 %var_2_458, 1
; %var_2_1705 = and i8 %var_2_1704, 1
; Matched:%var_2_460:  %var_2_460 = xor i8 %var_2_459, 1
; %var_2_1706 = xor i8 %var_2_1705, 1
; Matched:\<badref\>:  store i8 %var_2_460, i8* %var_2_21, align 1
; store i8 %var_2_1706, i8* %var_2_24, align 1
; Matched:%var_2_461:  %var_2_461 = xor i32 %var_2_452, %var_2_447
; %var_2_1707 = xor i32 %var_2_1698, %var_2_1693
; Matched:%var_2_462:  %var_2_462 = xor i32 %var_2_461, %var_2_453
; %var_2_1708 = xor i32 %var_2_1707, %var_2_1699
; Matched:%var_2_463:  %var_2_463 = lshr i32 %var_2_462, 4
; %var_2_1709 = lshr i32 %var_2_1708, 4
; Matched:%var_2_464:  %var_2_464 = trunc i32 %var_2_463 to i8
; %var_2_1710 = trunc i32 %var_2_1709 to i8
; Matched:%var_2_465:  %var_2_465 = and i8 %var_2_464, 1
; %var_2_1711 = and i8 %var_2_1710, 1
; Matched:\<badref\>:  store i8 %var_2_465, i8* %var_2_26, align 1
; store i8 %var_2_1711, i8* %var_2_29, align 1
%var_2_1712 = icmp eq i32 %var_2_1699, 0
; Matched:%var_2_467:  %var_2_467 = zext i1 %var_2_466 to i8
; %var_2_1713 = zext i1 %var_2_1712 to i8
; Matched:\<badref\>:  store i8 %var_2_467, i8* %var_2_29, align 1
; store i8 %var_2_1713, i8* %var_2_32, align 1
%var_2_1714 = lshr i32 %var_2_1699, 31
%var_2_1715 = trunc i32 %var_2_1714 to i8
; Matched:\<badref\>:  store i8 %var_2_469, i8* %var_2_32, align 1
; store i8 %var_2_1715, i8* %var_2_35, align 1
%var_2_1716 = lshr i32 %var_2_1693, 31
%var_2_1717 = lshr i32 %var_2_1698, 31
%var_2_1718 = xor i32 %var_2_1717, %var_2_1716
%var_2_1719 = xor i32 %var_2_1714, %var_2_1716
%var_2_1720 = add nuw nsw i32 %var_2_1719, %var_2_1718
%var_2_1721 = icmp eq i32 %var_2_1720, 2
; Matched:%var_2_476:  %var_2_476 = zext i1 %var_2_475 to i8
; %var_2_1722 = zext i1 %var_2_1721 to i8
; Matched:\<badref\>:  store i8 %var_2_476, i8* %var_2_38, align 1
; store i8 %var_2_1722, i8* %var_2_41, align 1
%var_2_1723 = icmp ne i8 %var_2_1715, 0
%var_2_1724 = xor i1 %var_2_1723, %var_2_1721
%.demorgan113 = or i1 %var_2_1712, %var_2_1724
  %.v124 = select i1 %.demorgan113, i64 12, i64 375
%var_2_1725 = add i64 %var_2_1688, %.v124
; Matched:\<badref\>:  store i64 %var_2_479, i64* %var_2_3, align 8
; store i64 %var_2_1725, i64* %PC, align 8
  br i1 %.demorgan113, label %block_400c3b, label %block_400da6

block_400e96:                                     ; preds = %block_400e90, %block_400fbe
; Matched:%var_2_1513:  %var_2_1513 = phi i64 [ %var_2_2037, %block_.L_400fbe ], [ %.pre57, %block_400e90 ]
; %var_2_1726 = phi i64 [ %.pre111, %block_400e90 ], [ %var_2_545, %block_400fbe ]
%var_2_1727 = load i64, i64* %RBP, align 8
%var_2_1728 = add i64 %var_2_1727, -28
; Matched:%var_2_1516:  %var_2_1516 = add i64 %var_2_1513, 3
; %var_2_1729 = add i64 %var_2_1726, 3
; Matched:\<badref\>:  store i64 %var_2_1516, i64* %var_2_3, align 8
; store i64 %var_2_1729, i64* %PC, align 8
%var_2_1730 = inttoptr i64 %var_2_1728 to i32*
%var_2_1731 = load i32, i32* %var_2_1730, align 4
; Matched:%var_2_526:  %var_2_526 = zext i32 %var_2_525 to i64
; %var_2_1732 = zext i32 %var_2_1731 to i64
; Matched:\<badref\>:  store i64 %var_2_526, i64* %RAX.i798, align 8
; store i64 %var_2_1732, i64* %RAX, align 8
%var_2_1733 = add i64 %var_2_1727, -36
; Matched:%var_2_1521:  %var_2_1521 = add i64 %var_2_1513, 6
; %var_2_1734 = add i64 %var_2_1726, 6
; Matched:\<badref\>:  store i64 %var_2_1521, i64* %var_2_3, align 8
; store i64 %var_2_1734, i64* %PC, align 8
%var_2_1735 = inttoptr i64 %var_2_1733 to i32*
%var_2_1736 = load i32, i32* %var_2_1735, align 4
; Matched:%var_2_1524:  %var_2_1524 = zext i32 %var_2_1523 to i64
; %var_2_1737 = zext i32 %var_2_1736 to i64
; Matched:\<badref\>:  store i64 %var_2_1524, i64* %RCX.i788, align 8
; store i64 %var_2_1737, i64* %RCX, align 8
%var_2_1738 = add i64 %var_2_1727, -48
; Matched:%var_2_1526:  %var_2_1526 = add i64 %var_2_1513, 9
; %var_2_1739 = add i64 %var_2_1726, 9
; Matched:\<badref\>:  store i64 %var_2_1526, i64* %var_2_3, align 8
; store i64 %var_2_1739, i64* %PC, align 8
%var_2_1740 = inttoptr i64 %var_2_1738 to i32*
%var_2_1741 = load i32, i32* %var_2_1740, align 4
%var_2_1742 = add i32 %var_2_1741, %var_2_1736
%var_2_1743 = add i32 %var_2_1742, -2
; Matched:%var_2_1531:  %var_2_1531 = zext i32 %var_2_1530 to i64
; %var_2_1744 = zext i32 %var_2_1743 to i64
; Matched:\<badref\>:  store i64 %var_2_1531, i64* %RCX.i788, align 8
; store i64 %var_2_1744, i64* %RCX, align 8
%var_2_1745 = lshr i32 %var_2_1743, 31
%var_2_1746 = sub i32 %var_2_1731, %var_2_1743
; Matched:%var_2_1534:  %var_2_1534 = icmp ult i32 %var_2_1518, %var_2_1530
; %var_2_1747 = icmp ult i32 %var_2_1731, %var_2_1743
; Matched:%var_2_1535:  %var_2_1535 = zext i1 %var_2_1534 to i8
; %var_2_1748 = zext i1 %var_2_1747 to i8
; Matched:\<badref\>:  store i8 %var_2_1535, i8* %var_2_14, align 1
; store i8 %var_2_1748, i8* %var_2_17, align 1
; Matched:%var_2_1536:  %var_2_1536 = and i32 %var_2_1533, 255
; %var_2_1749 = and i32 %var_2_1746, 255
; Matched:%var_2_1537:  %var_2_1537 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1536)
; %var_2_1750 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1749) #14
; Matched:%var_2_1538:  %var_2_1538 = trunc i32 %var_2_1537 to i8
; %var_2_1751 = trunc i32 %var_2_1750 to i8
; Matched:%var_2_1539:  %var_2_1539 = and i8 %var_2_1538, 1
; %var_2_1752 = and i8 %var_2_1751, 1
; Matched:%var_2_1540:  %var_2_1540 = xor i8 %var_2_1539, 1
; %var_2_1753 = xor i8 %var_2_1752, 1
; Matched:\<badref\>:  store i8 %var_2_1540, i8* %var_2_21, align 1
; store i8 %var_2_1753, i8* %var_2_24, align 1
; Matched:%var_2_1541:  %var_2_1541 = xor i32 %var_2_1530, %var_2_1518
; %var_2_1754 = xor i32 %var_2_1743, %var_2_1731
; Matched:%var_2_1542:  %var_2_1542 = xor i32 %var_2_1541, %var_2_1533
; %var_2_1755 = xor i32 %var_2_1754, %var_2_1746
; Matched:%var_2_1543:  %var_2_1543 = lshr i32 %var_2_1542, 4
; %var_2_1756 = lshr i32 %var_2_1755, 4
; Matched:%var_2_1544:  %var_2_1544 = trunc i32 %var_2_1543 to i8
; %var_2_1757 = trunc i32 %var_2_1756 to i8
; Matched:%var_2_1545:  %var_2_1545 = and i8 %var_2_1544, 1
; %var_2_1758 = and i8 %var_2_1757, 1
; Matched:\<badref\>:  store i8 %var_2_1545, i8* %var_2_26, align 1
; store i8 %var_2_1758, i8* %var_2_29, align 1
%var_2_1759 = icmp eq i32 %var_2_1746, 0
; Matched:%var_2_1547:  %var_2_1547 = zext i1 %var_2_1546 to i8
; %var_2_1760 = zext i1 %var_2_1759 to i8
; Matched:\<badref\>:  store i8 %var_2_1547, i8* %var_2_29, align 1
; store i8 %var_2_1760, i8* %var_2_32, align 1
%var_2_1761 = lshr i32 %var_2_1746, 31
%var_2_1762 = trunc i32 %var_2_1761 to i8
; Matched:\<badref\>:  store i8 %var_2_1549, i8* %var_2_32, align 1
; store i8 %var_2_1762, i8* %var_2_35, align 1
%var_2_1763 = lshr i32 %var_2_1731, 31
%var_2_1764 = xor i32 %var_2_1745, %var_2_1763
%var_2_1765 = xor i32 %var_2_1761, %var_2_1763
%var_2_1766 = add nuw nsw i32 %var_2_1765, %var_2_1764
%var_2_1767 = icmp eq i32 %var_2_1766, 2
; Matched:%var_2_1555:  %var_2_1555 = zext i1 %var_2_1554 to i8
; %var_2_1768 = zext i1 %var_2_1767 to i8
; Matched:\<badref\>:  store i8 %var_2_1555, i8* %var_2_38, align 1
; store i8 %var_2_1768, i8* %var_2_41, align 1
%var_2_1769 = icmp ne i8 %var_2_1762, 0
%var_2_1770 = xor i1 %var_2_1769, %var_2_1767
%.demorgan119 = or i1 %var_2_1759, %var_2_1770
; Matched:  %.v73 = select i1 %.demorgan65, i64 20, i64 315
; %.v127 = select i1 %.demorgan119, i64 20, i64 315
; Matched:%var_2_1558:  %var_2_1558 = add i64 %var_2_1513, %.v73
; %var_2_1771 = add i64 %var_2_1726, %.v127
; Matched:\<badref\>:  store i64 %var_2_1558, i64* %var_2_3, align 8
; store i64 %var_2_1771, i64* %PC, align 8
%var_2_1772 = load i64, i64* %RBP, align 8
  br i1 %.demorgan119, label %block_400eaa, label %block_400fd1

block_400c67:                                     ; preds = %block_400c61, %block_400c73
; Matched:%var_2_575:  %var_2_575 = phi i64 [ %var_2_940, %block_400c73 ], [ %.pre46, %block_400c61 ]
; %var_2_1773 = phi i64 [ %.pre100, %block_400c61 ], [ %var_2_462, %block_400c73 ]
%var_2_1774 = load i64, i64* %RBP, align 8
%var_2_1775 = add i64 %var_2_1774, -36
; Matched:%var_2_578:  %var_2_578 = add i64 %var_2_575, 3
; %var_2_1776 = add i64 %var_2_1773, 3
; Matched:\<badref\>:  store i64 %var_2_578, i64* %var_2_3, align 8
; store i64 %var_2_1776, i64* %PC, align 8
%var_2_1777 = inttoptr i64 %var_2_1775 to i32*
%var_2_1778 = load i32, i32* %var_2_1777, align 4
; Matched:%var_2_1509:  %var_2_1509 = zext i32 %var_2_1508 to i64
; %var_2_1779 = zext i32 %var_2_1778 to i64
; Matched:\<badref\>:  store i64 %var_2_1509, i64* %RAX.i798, align 8
; store i64 %var_2_1779, i64* %RAX, align 8
%var_2_1780 = add i64 %var_2_1774, -56
; Matched:%var_2_583:  %var_2_583 = add i64 %var_2_575, 6
; %var_2_1781 = add i64 %var_2_1773, 6
; Matched:\<badref\>:  store i64 %var_2_583, i64* %var_2_3, align 8
; store i64 %var_2_1781, i64* %PC, align 8
%var_2_1782 = inttoptr i64 %var_2_1780 to i32*
%var_2_1783 = load i32, i32* %var_2_1782, align 4
%var_2_1784 = sub i32 %var_2_1778, %var_2_1783
; Matched:%var_2_587:  %var_2_587 = icmp ult i32 %var_2_580, %var_2_585
; %var_2_1785 = icmp ult i32 %var_2_1778, %var_2_1783
; Matched:%var_2_588:  %var_2_588 = zext i1 %var_2_587 to i8
; %var_2_1786 = zext i1 %var_2_1785 to i8
; Matched:\<badref\>:  store i8 %var_2_588, i8* %var_2_14, align 1
; store i8 %var_2_1786, i8* %var_2_17, align 1
; Matched:%var_2_589:  %var_2_589 = and i32 %var_2_586, 255
; %var_2_1787 = and i32 %var_2_1784, 255
; Matched:%var_2_590:  %var_2_590 = tail call i32 @llvm.ctpop.i32(i32 %var_2_589)
; %var_2_1788 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1787) #14
; Matched:%var_2_591:  %var_2_591 = trunc i32 %var_2_590 to i8
; %var_2_1789 = trunc i32 %var_2_1788 to i8
; Matched:%var_2_592:  %var_2_592 = and i8 %var_2_591, 1
; %var_2_1790 = and i8 %var_2_1789, 1
; Matched:%var_2_593:  %var_2_593 = xor i8 %var_2_592, 1
; %var_2_1791 = xor i8 %var_2_1790, 1
; Matched:\<badref\>:  store i8 %var_2_593, i8* %var_2_21, align 1
; store i8 %var_2_1791, i8* %var_2_24, align 1
; Matched:%var_2_594:  %var_2_594 = xor i32 %var_2_585, %var_2_580
; %var_2_1792 = xor i32 %var_2_1783, %var_2_1778
; Matched:%var_2_595:  %var_2_595 = xor i32 %var_2_594, %var_2_586
; %var_2_1793 = xor i32 %var_2_1792, %var_2_1784
; Matched:%var_2_596:  %var_2_596 = lshr i32 %var_2_595, 4
; %var_2_1794 = lshr i32 %var_2_1793, 4
; Matched:%var_2_597:  %var_2_597 = trunc i32 %var_2_596 to i8
; %var_2_1795 = trunc i32 %var_2_1794 to i8
; Matched:%var_2_598:  %var_2_598 = and i8 %var_2_597, 1
; %var_2_1796 = and i8 %var_2_1795, 1
; Matched:\<badref\>:  store i8 %var_2_598, i8* %var_2_26, align 1
; store i8 %var_2_1796, i8* %var_2_29, align 1
%var_2_1797 = icmp eq i32 %var_2_1784, 0
; Matched:%var_2_600:  %var_2_600 = zext i1 %var_2_599 to i8
; %var_2_1798 = zext i1 %var_2_1797 to i8
; Matched:\<badref\>:  store i8 %var_2_600, i8* %var_2_29, align 1
; store i8 %var_2_1798, i8* %var_2_32, align 1
%var_2_1799 = lshr i32 %var_2_1784, 31
%var_2_1800 = trunc i32 %var_2_1799 to i8
; Matched:\<badref\>:  store i8 %var_2_602, i8* %var_2_32, align 1
; store i8 %var_2_1800, i8* %var_2_35, align 1
%var_2_1801 = lshr i32 %var_2_1778, 31
%var_2_1802 = lshr i32 %var_2_1783, 31
%var_2_1803 = xor i32 %var_2_1802, %var_2_1801
%var_2_1804 = xor i32 %var_2_1799, %var_2_1801
%var_2_1805 = add nuw nsw i32 %var_2_1804, %var_2_1803
%var_2_1806 = icmp eq i32 %var_2_1805, 2
; Matched:%var_2_609:  %var_2_609 = zext i1 %var_2_608 to i8
; %var_2_1807 = zext i1 %var_2_1806 to i8
; Matched:\<badref\>:  store i8 %var_2_609, i8* %var_2_38, align 1
; store i8 %var_2_1807, i8* %var_2_41, align 1
%var_2_1808 = icmp ne i8 %var_2_1800, 0
%var_2_1809 = xor i1 %var_2_1808, %var_2_1806
%.demorgan116 = or i1 %var_2_1797, %var_2_1809
; Matched:  %.v63 = select i1 %.demorgan62, i64 12, i64 182
; %.v117 = select i1 %.demorgan116, i64 12, i64 182
; Matched:%var_2_612:  %var_2_612 = add i64 %var_2_575, %.v63
; %var_2_1810 = add i64 %var_2_1773, %.v117
; Matched:\<badref\>:  store i64 %var_2_612, i64* %var_2_3, align 8
; store i64 %var_2_1810, i64* %PC, align 8
  br i1 %.demorgan116, label %block_400c73, label %block_400d1d

block_400bc3:                                     ; preds = %block_400b97
; Matched:  %AL.i488 = bitcast %union.anon* %var_2_73 to i8*
; %AL = bitcast %union.anon* %var_2_3 to i8*
%CL = bitcast %union.anon* %var_2_4 to i8*
%var_2_1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; Matched:%var_2_212:  %var_2_212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
; %var_2_1812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
; Matched:%var_2_222:  %var_2_222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
; %var_2_1813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
%var_2_1814 = add i64 %var_2_1651, -88
; Matched:%var_2_180:  %var_2_180 = add i64 %var_2_111, 7
; %var_2_1815 = add i64 %var_2_1687, 7
; Matched:\<badref\>:  store i64 %var_2_180, i64* %var_2_3, align 8
; store i64 %var_2_1815, i64* %PC, align 8
%var_2_1816 = inttoptr i64 %var_2_1814 to i32*
store i32 1, i32* %var_2_1816, align 4
; Matched:%var_2_182:  %var_2_182 = load i64, i64* %RBP.i, align 8
; %var_2_1817 = load i64, i64* %RBP, align 8
; Matched:%var_2_183:  %var_2_183 = add i64 %var_2_182, -20
; %var_2_1818 = add i64 %var_2_1817, -20
%var_2_1819 = load i64, i64* %PC, align 8
; Matched:%var_2_2103:  %var_2_2103 = add i64 %var_2_2102, 3
; %var_2_1820 = add i64 %var_2_1819, 3
; Matched:\<badref\>:  store i64 %var_2_54, i64* %var_2_3, align 8
; store i64 %var_2_1820, i64* %PC, align 8
; Matched:%var_2_186:  %var_2_186 = inttoptr i64 %var_2_183 to i32*
; %var_2_1821 = inttoptr i64 %var_2_1818 to i32*
; Matched:%var_2_187:  %var_2_187 = load i32, i32* %var_2_186, align 4
; %var_2_1822 = load i32, i32* %var_2_1821, align 4
; Matched:%var_2_188:  %var_2_188 = zext i32 %var_2_187 to i64
; %var_2_1823 = zext i32 %var_2_1822 to i64
; Matched:\<badref\>:  store i64 %var_2_188, i64* %RAX.i798, align 8
; store i64 %var_2_1823, i64* %RAX, align 8
; Matched:%var_2_189:  %var_2_189 = add i64 %var_2_182, -72
; %var_2_1824 = add i64 %var_2_1817, -72
; Matched:%var_2_1976:  %var_2_1976 = add i64 %var_2_1970, 6
; %var_2_1825 = add i64 %var_2_1819, 6
; Matched:\<badref\>:  store i64 %var_2_190, i64* %var_2_3, align 8
; store i64 %var_2_1825, i64* %PC, align 8
; Matched:%var_2_191:  %var_2_191 = inttoptr i64 %var_2_189 to i32*
; %var_2_1826 = inttoptr i64 %var_2_1824 to i32*
; Matched:\<badref\>:  store i32 %var_2_187, i32* %var_2_191, align 4
; store i32 %var_2_1822, i32* %var_2_1826, align 4
; Matched:%var_2_192:  %var_2_192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
; %var_2_1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
%var_2_1828 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_1811, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
%var_2_1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_1830 = bitcast i64* %var_2_1829 to double*
; Matched:%var_2_197:  %var_2_197 = bitcast [32 x %union.VectorReg]* %var_2_196 to i8*
; %var_2_1831 = bitcast [32 x %union.VectorReg]* %var_2_1811 to i8*
; Matched:%var_2_198:  %var_2_198 = bitcast [32 x %union.VectorReg]* %var_2_196 to i32*
; %var_2_1832 = bitcast [32 x %union.VectorReg]* %var_2_1811 to i32*
; Matched:%var_2_199:  %var_2_199 = getelementptr inbounds i8, i8* %var_2_197, i64 4
; %var_2_1833 = getelementptr inbounds i8, i8* %var_2_1831, i64 4
; Matched:%var_2_200:  %var_2_200 = bitcast i8* %var_2_199 to i32*
; %var_2_1834 = bitcast i8* %var_2_1833 to i32*
; Matched:%var_2_201:  %var_2_201 = bitcast i64* %var_2_194 to i32*
; %var_2_1835 = bitcast i64* %var_2_1829 to i32*
; Matched:%var_2_202:  %var_2_202 = getelementptr inbounds i8, i8* %var_2_197, i64 12
; %var_2_1836 = getelementptr inbounds i8, i8* %var_2_1831, i64 12
; Matched:%var_2_203:  %var_2_203 = bitcast i8* %var_2_202 to i32*
; %var_2_1837 = bitcast i8* %var_2_1836 to i32*
; Matched:%var_2_205:  %var_2_205 = bitcast %union.VectorReg* %var_2_204 to double*
; %var_2_1838 = bitcast %union.VectorReg* %var_2_6 to double*
%var_2_1839 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_6, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_207:  %var_2_207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; %var_2_1840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_208:  %var_2_208 = bitcast i64* %var_2_207 to double*
; %var_2_1841 = bitcast i64* %var_2_1840 to double*
; Matched:%var_2_209:  %var_2_209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
; %var_2_1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_210:  %var_2_210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; %var_2_1843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_211:  %var_2_211 = bitcast i64* %var_2_210 to double*
; %var_2_1844 = bitcast i64* %var_2_1843 to double*
; Matched:%var_2_213:  %var_2_213 = bitcast %union.VectorReg* %var_2_212 to double*
; %var_2_1845 = bitcast %union.VectorReg* %var_2_1812 to double*
; Matched:%var_2_214:  %var_2_214 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_212, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_1846 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_1812, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_215:  %var_2_215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; %var_2_1847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_216:  %var_2_216 = bitcast i64* %var_2_215 to double*
; %var_2_1848 = bitcast i64* %var_2_1847 to double*
; Matched:%var_2_218:  %var_2_218 = bitcast %union.VectorReg* %var_2_217 to double*
; %var_2_1849 = bitcast %union.VectorReg* %var_2_7 to double*
; Matched:%var_2_219:  %var_2_219 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_217, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_1850 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_7, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_220:  %var_2_220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
; %var_2_1851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_221:  %var_2_221 = bitcast i64* %var_2_220 to double*
; %var_2_1852 = bitcast i64* %var_2_1851 to double*
; Matched:%var_2_223:  %var_2_223 = bitcast %union.VectorReg* %var_2_222 to double*
; %var_2_1853 = bitcast %union.VectorReg* %var_2_1813 to double*
; Matched:%var_2_224:  %var_2_224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
; %var_2_1854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
%var_2_1855 = bitcast %union.VectorReg* %var_2_1812 to <2 x i32>*
%var_2_1856 = bitcast i64* %var_2_1847 to <2 x i32>*
%var_2_1857 = bitcast [32 x %union.VectorReg]* %var_2_1811 to double*
; Matched:  %.pre40 = load i64, i64* %var_2_3, align 8
; %.pre94 = load i64, i64* %PC, align 8
%var_2_1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_1859 = bitcast i64* %var_2_1858 to i8*
%var_2_1860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_1861 = bitcast i64* %var_2_1860 to i8*
%var_2_1862 = bitcast [32 x %union.VectorReg]* %var_2_1811 to <4 x i32>*
  br label %block_400bd0

block_400d71:                                     ; preds = %block_400d63
; Matched:%var_2_1101:  %var_2_1101 = add i64 %var_2_1099, 33
; %var_2_1863 = add i64 %var_2_507, 33
; Matched:\<badref\>:  store i64 %var_2_1101, i64* %var_2_3, align 8
; store i64 %var_2_1863, i64* %PC, align 8
%var_2_1864 = inttoptr i64 %var_2_508 to i32*
%var_2_1865 = load i32, i32* %var_2_1864, align 4
; Matched:%var_2_1004:  %var_2_1004 = zext i32 %var_2_1003 to i64
; %var_2_1866 = zext i32 %var_2_1865 to i64
; Matched:\<badref\>:  store i64 %var_2_1004, i64* %RAX.i798, align 8
; store i64 %var_2_1866, i64* %RAX, align 8
; Matched:%var_2_1105:  %var_2_1105 = add i64 %var_2_1087, -40
; %var_2_1867 = add i64 %var_2_495, -40
; Matched:%var_2_1106:  %var_2_1106 = add i64 %var_2_1099, 36
; %var_2_1868 = add i64 %var_2_507, 36
; Matched:\<badref\>:  store i64 %var_2_1106, i64* %var_2_3, align 8
; store i64 %var_2_1868, i64* %PC, align 8
; Matched:%var_2_1107:  %var_2_1107 = inttoptr i64 %var_2_1105 to i32*
; %var_2_1869 = inttoptr i64 %var_2_1867 to i32*
; Matched:%var_2_1108:  %var_2_1108 = load i32, i32* %var_2_1107, align 4
; %var_2_1870 = load i32, i32* %var_2_1869, align 4
; Matched:%var_2_1109:  %var_2_1109 = add i32 %var_2_1108, %var_2_1103
; %var_2_1871 = add i32 %var_2_1870, %var_2_1865
; Matched:%var_2_1110:  %var_2_1110 = zext i32 %var_2_1109 to i64
; %var_2_1872 = zext i32 %var_2_1871 to i64
; Matched:\<badref\>:  store i64 %var_2_1110, i64* %RAX.i798, align 8
; store i64 %var_2_1872, i64* %RAX, align 8
; Matched:%var_2_1111:  %var_2_1111 = icmp ult i32 %var_2_1109, %var_2_1103
; %var_2_1873 = icmp ult i32 %var_2_1871, %var_2_1865
; Matched:%var_2_1112:  %var_2_1112 = icmp ult i32 %var_2_1109, %var_2_1108
; %var_2_1874 = icmp ult i32 %var_2_1871, %var_2_1870
; Matched:%var_2_1113:  %var_2_1113 = or i1 %var_2_1111, %var_2_1112
; %var_2_1875 = or i1 %var_2_1873, %var_2_1874
; Matched:%var_2_1114:  %var_2_1114 = zext i1 %var_2_1113 to i8
; %var_2_1876 = zext i1 %var_2_1875 to i8
; Matched:\<badref\>:  store i8 %var_2_1114, i8* %var_2_14, align 1
; store i8 %var_2_1876, i8* %var_2_17, align 1
; Matched:%var_2_1115:  %var_2_1115 = and i32 %var_2_1109, 255
; %var_2_1877 = and i32 %var_2_1871, 255
; Matched:%var_2_1116:  %var_2_1116 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1115)
; %var_2_1878 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1877) #14
; Matched:%var_2_1117:  %var_2_1117 = trunc i32 %var_2_1116 to i8
; %var_2_1879 = trunc i32 %var_2_1878 to i8
; Matched:%var_2_1118:  %var_2_1118 = and i8 %var_2_1117, 1
; %var_2_1880 = and i8 %var_2_1879, 1
; Matched:%var_2_1119:  %var_2_1119 = xor i8 %var_2_1118, 1
; %var_2_1881 = xor i8 %var_2_1880, 1
; Matched:\<badref\>:  store i8 %var_2_1119, i8* %var_2_21, align 1
; store i8 %var_2_1881, i8* %var_2_24, align 1
; Matched:%var_2_1120:  %var_2_1120 = xor i32 %var_2_1108, %var_2_1103
; %var_2_1882 = xor i32 %var_2_1870, %var_2_1865
; Matched:%var_2_1121:  %var_2_1121 = xor i32 %var_2_1120, %var_2_1109
; %var_2_1883 = xor i32 %var_2_1882, %var_2_1871
; Matched:%var_2_1122:  %var_2_1122 = lshr i32 %var_2_1121, 4
; %var_2_1884 = lshr i32 %var_2_1883, 4
; Matched:%var_2_1123:  %var_2_1123 = trunc i32 %var_2_1122 to i8
; %var_2_1885 = trunc i32 %var_2_1884 to i8
; Matched:%var_2_1124:  %var_2_1124 = and i8 %var_2_1123, 1
; %var_2_1886 = and i8 %var_2_1885, 1
; Matched:\<badref\>:  store i8 %var_2_1124, i8* %var_2_26, align 1
; store i8 %var_2_1886, i8* %var_2_29, align 1
; Matched:%var_2_1125:  %var_2_1125 = icmp eq i32 %var_2_1109, 0
; %var_2_1887 = icmp eq i32 %var_2_1871, 0
; Matched:%var_2_1126:  %var_2_1126 = zext i1 %var_2_1125 to i8
; %var_2_1888 = zext i1 %var_2_1887 to i8
; Matched:\<badref\>:  store i8 %var_2_1126, i8* %var_2_29, align 1
; store i8 %var_2_1888, i8* %var_2_32, align 1
; Matched:%var_2_1127:  %var_2_1127 = lshr i32 %var_2_1109, 31
; %var_2_1889 = lshr i32 %var_2_1871, 31
; Matched:%var_2_1128:  %var_2_1128 = trunc i32 %var_2_1127 to i8
; %var_2_1890 = trunc i32 %var_2_1889 to i8
; Matched:\<badref\>:  store i8 %var_2_1128, i8* %var_2_32, align 1
; store i8 %var_2_1890, i8* %var_2_35, align 1
; Matched:%var_2_1129:  %var_2_1129 = lshr i32 %var_2_1103, 31
; %var_2_1891 = lshr i32 %var_2_1865, 31
; Matched:%var_2_1130:  %var_2_1130 = lshr i32 %var_2_1108, 31
; %var_2_1892 = lshr i32 %var_2_1870, 31
; Matched:%var_2_1131:  %var_2_1131 = xor i32 %var_2_1127, %var_2_1129
; %var_2_1893 = xor i32 %var_2_1889, %var_2_1891
; Matched:%var_2_1132:  %var_2_1132 = xor i32 %var_2_1127, %var_2_1130
; %var_2_1894 = xor i32 %var_2_1889, %var_2_1892
; Matched:%var_2_1133:  %var_2_1133 = add nuw nsw i32 %var_2_1131, %var_2_1132
; %var_2_1895 = add nuw nsw i32 %var_2_1893, %var_2_1894
; Matched:%var_2_1134:  %var_2_1134 = icmp eq i32 %var_2_1133, 2
; %var_2_1896 = icmp eq i32 %var_2_1895, 2
; Matched:%var_2_1135:  %var_2_1135 = zext i1 %var_2_1134 to i8
; %var_2_1897 = zext i1 %var_2_1896 to i8
; Matched:\<badref\>:  store i8 %var_2_1135, i8* %var_2_38, align 1
; store i8 %var_2_1897, i8* %var_2_41, align 1
; Matched:%var_2_1136:  %var_2_1136 = add i64 %var_2_1099, 39
; %var_2_1898 = add i64 %var_2_507, 39
; Matched:\<badref\>:  store i64 %var_2_1136, i64* %var_2_3, align 8
; store i64 %var_2_1898, i64* %PC, align 8
; Matched:\<badref\>:  store i32 %var_2_1109, i32* %var_2_1107, align 4
; store i32 %var_2_1871, i32* %var_2_1869, align 4
%var_2_1899 = load i64, i64* %RBP, align 8
; Matched:%var_2_1239:  %var_2_1239 = add i64 %var_2_443, -48
; %var_2_1900 = add i64 %var_2_1899, -48
%var_2_1901 = load i64, i64* %PC, align 8
; Matched:%var_2_404:  %var_2_404 = add i64 %var_2_403, 3
; %var_2_1902 = add i64 %var_2_1901, 3
; Matched:\<badref\>:  store i64 %var_2_404, i64* %var_2_3, align 8
; store i64 %var_2_1902, i64* %PC, align 8
; Matched:%var_2_374:  %var_2_374 = inttoptr i64 %var_2_371 to i32*
; %var_2_1903 = inttoptr i64 %var_2_1900 to i32*
; Matched:%var_2_1242:  %var_2_1242 = load i32, i32* %var_2_1241, align 4
; %var_2_1904 = load i32, i32* %var_2_1903, align 4
; Matched:%var_2_1243:  %var_2_1243 = zext i32 %var_2_1242 to i64
; %var_2_1905 = zext i32 %var_2_1904 to i64
; Matched:\<badref\>:  store i64 %var_2_2106, i64* %RAX.i798, align 8
; store i64 %var_2_1905, i64* %RAX, align 8
; Matched:%var_2_1144:  %var_2_1144 = add i64 %var_2_1137, -32
; %var_2_1906 = add i64 %var_2_1899, -32
; Matched:%var_2_1145:  %var_2_1145 = add i64 %var_2_1139, 6
; %var_2_1907 = add i64 %var_2_1901, 6
; Matched:\<badref\>:  store i64 %var_2_1145, i64* %var_2_3, align 8
; store i64 %var_2_1907, i64* %PC, align 8
; Matched:%var_2_1146:  %var_2_1146 = inttoptr i64 %var_2_1144 to i32*
; %var_2_1908 = inttoptr i64 %var_2_1906 to i32*
; Matched:%var_2_1147:  %var_2_1147 = load i32, i32* %var_2_1146, align 4
; %var_2_1909 = load i32, i32* %var_2_1908, align 4
; Matched:%var_2_1148:  %var_2_1148 = add i32 %var_2_1147, %var_2_1142
; %var_2_1910 = add i32 %var_2_1909, %var_2_1904
; Matched:%var_2_1149:  %var_2_1149 = zext i32 %var_2_1148 to i64
; %var_2_1911 = zext i32 %var_2_1910 to i64
; Matched:\<badref\>:  store i64 %var_2_1149, i64* %RAX.i798, align 8
; store i64 %var_2_1911, i64* %RAX, align 8
; Matched:%var_2_1150:  %var_2_1150 = icmp ult i32 %var_2_1148, %var_2_1142
; %var_2_1912 = icmp ult i32 %var_2_1910, %var_2_1904
; Matched:%var_2_1151:  %var_2_1151 = icmp ult i32 %var_2_1148, %var_2_1147
; %var_2_1913 = icmp ult i32 %var_2_1910, %var_2_1909
; Matched:%var_2_1152:  %var_2_1152 = or i1 %var_2_1150, %var_2_1151
; %var_2_1914 = or i1 %var_2_1912, %var_2_1913
; Matched:%var_2_1153:  %var_2_1153 = zext i1 %var_2_1152 to i8
; %var_2_1915 = zext i1 %var_2_1914 to i8
; Matched:\<badref\>:  store i8 %var_2_1153, i8* %var_2_14, align 1
; store i8 %var_2_1915, i8* %var_2_17, align 1
; Matched:%var_2_1154:  %var_2_1154 = and i32 %var_2_1148, 255
; %var_2_1916 = and i32 %var_2_1910, 255
; Matched:%var_2_1155:  %var_2_1155 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1154)
; %var_2_1917 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1916) #14
; Matched:%var_2_1156:  %var_2_1156 = trunc i32 %var_2_1155 to i8
; %var_2_1918 = trunc i32 %var_2_1917 to i8
; Matched:%var_2_1157:  %var_2_1157 = and i8 %var_2_1156, 1
; %var_2_1919 = and i8 %var_2_1918, 1
; Matched:%var_2_1158:  %var_2_1158 = xor i8 %var_2_1157, 1
; %var_2_1920 = xor i8 %var_2_1919, 1
; Matched:\<badref\>:  store i8 %var_2_1158, i8* %var_2_21, align 1
; store i8 %var_2_1920, i8* %var_2_24, align 1
; Matched:%var_2_1159:  %var_2_1159 = xor i32 %var_2_1147, %var_2_1142
; %var_2_1921 = xor i32 %var_2_1909, %var_2_1904
; Matched:%var_2_1160:  %var_2_1160 = xor i32 %var_2_1159, %var_2_1148
; %var_2_1922 = xor i32 %var_2_1921, %var_2_1910
; Matched:%var_2_1161:  %var_2_1161 = lshr i32 %var_2_1160, 4
; %var_2_1923 = lshr i32 %var_2_1922, 4
; Matched:%var_2_1162:  %var_2_1162 = trunc i32 %var_2_1161 to i8
; %var_2_1924 = trunc i32 %var_2_1923 to i8
; Matched:%var_2_1163:  %var_2_1163 = and i8 %var_2_1162, 1
; %var_2_1925 = and i8 %var_2_1924, 1
; Matched:\<badref\>:  store i8 %var_2_1163, i8* %var_2_26, align 1
; store i8 %var_2_1925, i8* %var_2_29, align 1
; Matched:%var_2_1164:  %var_2_1164 = icmp eq i32 %var_2_1148, 0
; %var_2_1926 = icmp eq i32 %var_2_1910, 0
; Matched:%var_2_1165:  %var_2_1165 = zext i1 %var_2_1164 to i8
; %var_2_1927 = zext i1 %var_2_1926 to i8
; Matched:\<badref\>:  store i8 %var_2_1165, i8* %var_2_29, align 1
; store i8 %var_2_1927, i8* %var_2_32, align 1
; Matched:%var_2_1166:  %var_2_1166 = lshr i32 %var_2_1148, 31
; %var_2_1928 = lshr i32 %var_2_1910, 31
; Matched:%var_2_1167:  %var_2_1167 = trunc i32 %var_2_1166 to i8
; %var_2_1929 = trunc i32 %var_2_1928 to i8
; Matched:\<badref\>:  store i8 %var_2_1167, i8* %var_2_32, align 1
; store i8 %var_2_1929, i8* %var_2_35, align 1
; Matched:%var_2_1168:  %var_2_1168 = lshr i32 %var_2_1142, 31
; %var_2_1930 = lshr i32 %var_2_1904, 31
; Matched:%var_2_1169:  %var_2_1169 = lshr i32 %var_2_1147, 31
; %var_2_1931 = lshr i32 %var_2_1909, 31
; Matched:%var_2_1170:  %var_2_1170 = xor i32 %var_2_1166, %var_2_1168
; %var_2_1932 = xor i32 %var_2_1928, %var_2_1930
; Matched:%var_2_1171:  %var_2_1171 = xor i32 %var_2_1166, %var_2_1169
; %var_2_1933 = xor i32 %var_2_1928, %var_2_1931
; Matched:%var_2_1172:  %var_2_1172 = add nuw nsw i32 %var_2_1170, %var_2_1171
; %var_2_1934 = add nuw nsw i32 %var_2_1932, %var_2_1933
; Matched:%var_2_1173:  %var_2_1173 = icmp eq i32 %var_2_1172, 2
; %var_2_1935 = icmp eq i32 %var_2_1934, 2
; Matched:%var_2_1174:  %var_2_1174 = zext i1 %var_2_1173 to i8
; %var_2_1936 = zext i1 %var_2_1935 to i8
; Matched:\<badref\>:  store i8 %var_2_1174, i8* %var_2_38, align 1
; store i8 %var_2_1936, i8* %var_2_41, align 1
%var_2_1937 = add i64 %var_2_1901, 9
store i64 %var_2_1937, i64* %PC, align 8
; Matched:\<badref\>:  store i32 %var_2_1148, i32* %var_2_1146, align 4
; store i32 %var_2_1910, i32* %var_2_1908, align 4
%var_2_1938 = load i64, i64* %PC, align 8
%var_2_1939 = add i64 %var_2_1938, -370
; Matched:\<badref\>:  store i64 %var_2_1177, i64* %var_2_3, align 8
; store i64 %var_2_1939, i64* %PC, align 8
  br label %block_400c2f

block_400e90:                                     ; preds = %block_400e84
; Matched:%var_2_1507:  %var_2_1507 = add i64 %var_2_1506, 3
; %var_2_1940 = add i64 %var_2_2230, 3
; Matched:\<badref\>:  store i64 %var_2_1507, i64* %var_2_3, align 8
; store i64 %var_2_1940, i64* %PC, align 8
; Matched:%var_2_580:  %var_2_580 = load i32, i32* %var_2_579, align 4
; %var_2_1941 = load i32, i32* %var_2_2197, align 4
; Matched:%var_2_581:  %var_2_581 = zext i32 %var_2_580 to i64
; %var_2_1942 = zext i32 %var_2_1941 to i64
; Matched:\<badref\>:  store i64 %var_2_581, i64* %RAX.i798, align 8
; store i64 %var_2_1942, i64* %RAX, align 8
; Matched:%var_2_1510:  %var_2_1510 = add i64 %var_2_1470, -28
; %var_2_1943 = add i64 %var_2_2194, -28
; Matched:%var_2_1511:  %var_2_1511 = add i64 %var_2_1506, 6
; %var_2_1944 = add i64 %var_2_2230, 6
; Matched:\<badref\>:  store i64 %var_2_1511, i64* %var_2_3, align 8
; store i64 %var_2_1944, i64* %PC, align 8
; Matched:%var_2_1512:  %var_2_1512 = inttoptr i64 %var_2_1510 to i32*
; %var_2_1945 = inttoptr i64 %var_2_1943 to i32*
; Matched:\<badref\>:  store i32 %var_2_1508, i32* %var_2_1512, align 4
; store i32 %var_2_1941, i32* %var_2_1945, align 4
; Matched:  %.pre57 = load i64, i64* %var_2_3, align 8
; %.pre111 = load i64, i64* %PC, align 8
  br label %block_400e96

block_400c47:                                     ; preds = %block_400c3b
; Matched:%var_2_514:  %var_2_514 = add i64 %var_2_513, 3
; %var_2_1946 = add i64 %var_2_1611, 3
; Matched:\<badref\>:  store i64 %var_2_514, i64* %var_2_3, align 8
; store i64 %var_2_1946, i64* %PC, align 8
; Matched:%var_2_481:  %var_2_481 = load i32, i32* %var_2_446, align 4
; %var_2_1947 = load i32, i32* %var_2_1692, align 4
; Matched:%var_2_448:  %var_2_448 = zext i32 %var_2_447 to i64
; %var_2_1948 = zext i32 %var_2_1947 to i64
; Matched:\<badref\>:  store i64 %var_2_448, i64* %RAX.i798, align 8
; store i64 %var_2_1948, i64* %RAX, align 8
; Matched:%var_2_517:  %var_2_517 = add i64 %var_2_443, -28
; %var_2_1949 = add i64 %var_2_1689, -28
; Matched:%var_2_518:  %var_2_518 = add i64 %var_2_513, 6
; %var_2_1950 = add i64 %var_2_1611, 6
; Matched:\<badref\>:  store i64 %var_2_518, i64* %var_2_3, align 8
; store i64 %var_2_1950, i64* %PC, align 8
; Matched:%var_2_519:  %var_2_519 = inttoptr i64 %var_2_517 to i32*
; %var_2_1951 = inttoptr i64 %var_2_1949 to i32*
; Matched:\<badref\>:  store i32 %var_2_515, i32* %var_2_519, align 4
; store i32 %var_2_1947, i32* %var_2_1951, align 4
  %.pre99 = load i64, i64* %PC, align 8
  br label %block_400c4d

block_400db8:                                     ; preds = %block_400dac
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_1862, align 1
%var_2_1952 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 40) to i64*), align 8
store i64 %var_2_1952, i64* %var_2_1839, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_208, align 1
; store double 0.000000e+00, double* %var_2_1841, align 1
; Matched:%var_2_1292:  %var_2_1292 = load i64, i64* %var_2_1291, align 8
; %var_2_1953 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 48) to i64*), align 16
; Matched:\<badref\>:  store i64 %var_2_1292, i64* %var_2_209, align 1
; store i64 %var_2_1953, i64* %var_2_1842, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_211, align 1
; store double 0.000000e+00, double* %var_2_1844, align 1
; Matched:%var_2_1296:  %var_2_1296 = load i64, i64* %var_2_1295, align 8
; %var_2_1954 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 56) to i64*), align 8
; Matched:\<badref\>:  store i64 %var_2_1296, i64* %var_2_214, align 1
; store i64 %var_2_1954, i64* %var_2_1846, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_216, align 1
; store double 0.000000e+00, double* %var_2_1848, align 1
; Matched:%var_2_1300:  %var_2_1300 = load i64, i64* %var_2_1299, align 8
; %var_2_1955 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 64) to i64*), align 16
; Matched:\<badref\>:  store i64 %var_2_1300, i64* %var_2_219, align 1
; store i64 %var_2_1955, i64* %var_2_1850, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_221, align 1
; store double 0.000000e+00, double* %var_2_1852, align 1
; Matched:%var_2_1301:  %var_2_1301 = add i64 %var_2_1284, 38
; %var_2_1956 = add i64 %var_2_1649, 38
; Matched:\<badref\>:  store i64 %var_2_1301, i64* %var_2_3, align 8
; store i64 %var_2_1956, i64* %PC, align 8
; Matched:%var_2_1302:  %var_2_1302 = load i32, i32* %var_2_1251, align 4
; %var_2_1957 = load i32, i32* %var_2_1616, align 4
; Matched:%var_2_1303:  %var_2_1303 = shl i32 %var_2_1302, 1
; %var_2_1958 = shl i32 %var_2_1957, 1
; Matched:%var_2_1304:  %var_2_1304 = icmp slt i32 %var_2_1302, 0
; %var_2_1959 = icmp slt i32 %var_2_1957, 0
; Matched:%var_2_1305:  %var_2_1305 = icmp slt i32 %var_2_1303, 0
; %var_2_1960 = icmp slt i32 %var_2_1958, 0
; Matched:%var_2_1306:  %var_2_1306 = xor i1 %var_2_1304, %var_2_1305
; %var_2_1961 = xor i1 %var_2_1959, %var_2_1960
; Matched:%var_2_1307:  %var_2_1307 = zext i32 %var_2_1303 to i64
; %var_2_1962 = zext i32 %var_2_1958 to i64
; Matched:\<badref\>:  store i64 %var_2_1307, i64* %RAX.i798, align 8
; store i64 %var_2_1962, i64* %RAX, align 8
; Matched:  %.lobit12 = lshr i32 %var_2_1302, 31
; %.lobit60 = lshr i32 %var_2_1957, 31
; Matched:%var_2_1308:  %var_2_1308 = trunc i32 %.lobit12 to i8
; %var_2_1963 = trunc i32 %.lobit60 to i8
; Matched:\<badref\>:  store i8 %var_2_1308, i8* %var_2_14, align 1
; store i8 %var_2_1963, i8* %var_2_17, align 1
; Matched:%var_2_1309:  %var_2_1309 = and i32 %var_2_1303, 254
; %var_2_1964 = and i32 %var_2_1958, 254
; Matched:%var_2_1310:  %var_2_1310 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1309)
; %var_2_1965 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1964) #14
; Matched:%var_2_1311:  %var_2_1311 = trunc i32 %var_2_1310 to i8
; %var_2_1966 = trunc i32 %var_2_1965 to i8
; Matched:%var_2_1312:  %var_2_1312 = and i8 %var_2_1311, 1
; %var_2_1967 = and i8 %var_2_1966, 1
; Matched:%var_2_1313:  %var_2_1313 = xor i8 %var_2_1312, 1
; %var_2_1968 = xor i8 %var_2_1967, 1
; Matched:\<badref\>:  store i8 %var_2_1313, i8* %var_2_21, align 1
; store i8 %var_2_1968, i8* %var_2_24, align 1
store i8 0, i8* %var_2_29, align 1
; Matched:%var_2_1314:  %var_2_1314 = icmp eq i32 %var_2_1303, 0
; %var_2_1969 = icmp eq i32 %var_2_1958, 0
; Matched:%var_2_1315:  %var_2_1315 = zext i1 %var_2_1314 to i8
; %var_2_1970 = zext i1 %var_2_1969 to i8
; Matched:\<badref\>:  store i8 %var_2_1315, i8* %var_2_29, align 1
; store i8 %var_2_1970, i8* %var_2_32, align 1
; Matched:%var_2_1316:  %var_2_1316 = lshr i32 %var_2_1302, 30
; %var_2_1971 = lshr i32 %var_2_1957, 30
; Matched:%var_2_1317:  %var_2_1317 = trunc i32 %var_2_1316 to i8
; %var_2_1972 = trunc i32 %var_2_1971 to i8
; Matched:%var_2_1318:  %var_2_1318 = and i8 %var_2_1317, 1
; %var_2_1973 = and i8 %var_2_1972, 1
; Matched:\<badref\>:  store i8 %var_2_1318, i8* %var_2_32, align 1
; store i8 %var_2_1973, i8* %var_2_35, align 1
; Matched:%var_2_1319:  %var_2_1319 = zext i1 %var_2_1306 to i8
; %var_2_1974 = zext i1 %var_2_1961 to i8
; Matched:\<badref\>:  store i8 %var_2_1319, i8* %var_2_38, align 1
; store i8 %var_2_1974, i8* %var_2_41, align 1
; Matched:%var_2_1320:  %var_2_1320 = add i64 %var_2_1248, -64
; %var_2_1975 = add i64 %var_2_1613, -64
%var_2_1976 = add i64 %var_2_1649, 44
store i64 %var_2_1976, i64* %PC, align 8
; Matched:%var_2_1322:  %var_2_1322 = inttoptr i64 %var_2_1320 to i32*
; %var_2_1977 = inttoptr i64 %var_2_1975 to i32*
; Matched:\<badref\>:  store i32 %var_2_1303, i32* %var_2_1322, align 4
; store i32 %var_2_1958, i32* %var_2_1977, align 4
%var_2_1978 = load i64, i64* %RBP, align 8
; Matched:%var_2_1324:  %var_2_1324 = add i64 %var_2_1323, -24
; %var_2_1979 = add i64 %var_2_1978, -24
%var_2_1980 = load i64, i64* %PC, align 8
; Matched:%var_2_861:  %var_2_861 = add i64 %var_2_860, 5
; %var_2_1981 = add i64 %var_2_1980, 5
; Matched:\<badref\>:  store i64 %var_2_1372, i64* %var_2_3, align 8
; store i64 %var_2_1981, i64* %PC, align 8
; Matched:%var_2_1327:  %var_2_1327 = inttoptr i64 %var_2_1324 to i32*
; %var_2_1982 = inttoptr i64 %var_2_1979 to i32*
; Matched:%var_2_1328:  %var_2_1328 = load i32, i32* %var_2_1327, align 4
; %var_2_1983 = load i32, i32* %var_2_1982, align 4
; Matched:%var_2_1329:  %var_2_1329 = sitofp i32 %var_2_1328 to double
; %var_2_1984 = sitofp i32 %var_2_1983 to double
; Matched:%var_2_1330:  %var_2_1330 = load i64, i64* %var_2_224, align 1
; %var_2_1985 = load i64, i64* %var_2_1854, align 1
; Matched:%var_2_1331:  %var_2_1331 = load double, double* %var_2_218, align 1
; %var_2_1986 = load double, double* %var_2_1849, align 1
; Matched:%var_2_1332:  %var_2_1332 = fmul double %var_2_1329, %var_2_1331
; %var_2_1987 = fmul double %var_2_1984, %var_2_1986
; Matched:\<badref\>:  store double %var_2_1332, double* %var_2_223, align 1
; store double %var_2_1987, double* %var_2_1853, align 1
%var_2_1988 = add i64 %var_2_1978, -64
; Matched:%var_2_1932:  %var_2_1932 = add i64 %var_2_1923, 12
; %var_2_1989 = add i64 %var_2_1980, 12
; Matched:\<badref\>:  store i64 %var_2_1932, i64* %var_2_3, align 8
; store i64 %var_2_1989, i64* %PC, align 8
%var_2_1990 = inttoptr i64 %var_2_1988 to i32*
%var_2_1991 = load i32, i32* %var_2_1990, align 4
%var_2_1992 = zext i32 %var_2_1991 to i64
; Matched:\<badref\>:  store i64 %var_2_1974, i64* %RAX.i798, align 8
; store i64 %var_2_1992, i64* %RAX, align 8
%var_2_1993 = sext i32 %var_2_1991 to i64
%var_2_1994 = lshr i64 %var_2_1993, 32
; Matched:\<badref\>:  store i64 %var_2_1339, i64* %var_2_192, align 8
; store i64 %var_2_1994, i64* %var_2_1827, align 8
%var_2_1995 = add i64 %var_2_1978, -48
%var_2_1996 = add i64 %var_2_1980, 16
; Matched:\<badref\>:  store i64 %var_2_1453, i64* %var_2_3, align 8
; store i64 %var_2_1996, i64* %PC, align 8
%var_2_1997 = inttoptr i64 %var_2_1995 to i32*
%var_2_1998 = load i32, i32* %var_2_1997, align 4
%var_2_1999 = sext i32 %var_2_1998 to i64
%var_2_2000 = shl nuw i64 %var_2_1994, 32
%var_2_2001 = or i64 %var_2_2000, %var_2_1992
%var_2_2002 = sdiv i64 %var_2_2001, %var_2_1999
%var_2_2003 = shl i64 %var_2_2002, 32
%var_2_2004 = ashr exact i64 %var_2_2003, 32
%var_2_2005 = icmp eq i64 %var_2_2002, %var_2_2004
br i1 %var_2_2005, label %var_2_2008, label %var_2_2006

var_2_2006:
%var_2_2007 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %var_2_1996, %struct.Memory* %MEMORY.6) #16
; Matched:  %.pre51 = load i32, i32* %EAX.i795, align 4
; %.pre105 = load i32, i32* %EAX, align 4
; Matched:  %.pre52 = load i64, i64* %var_2_3, align 8
; %.pre106 = load i64, i64* %PC, align 8
; Matched:  %.pre53 = load double, double* %var_2_223, align 1
; %.pre107 = load double, double* %var_2_1853, align 1
; Matched:  %.pre54 = load i64, i64* %var_2_224, align 1
; %.pre108 = load i64, i64* %var_2_1854, align 1
  %.pre109 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

var_2_2008:
; Matched:%var_2_1354:  %var_2_1354 = srem i64 %var_2_1346, %var_2_1344
; %var_2_2009 = srem i64 %var_2_2001, %var_2_1999
; Matched:%var_2_1355:  %var_2_1355 = and i64 %var_2_1347, 4294967295
; %var_2_2010 = and i64 %var_2_2002, 4294967295
; Matched:\<badref\>:  store i64 %var_2_1355, i64* %RAX.i798, align 8
; store i64 %var_2_2010, i64* %RAX, align 8
; Matched:%var_2_1356:  %var_2_1356 = and i64 %var_2_1354, 4294967295
; %var_2_2011 = and i64 %var_2_2009, 4294967295
; Matched:\<badref\>:  store i64 %var_2_1356, i64* %RDX.i786, align 8
; store i64 %var_2_2011, i64* %RDX, align 8
store i8 0, i8* %var_2_17, align 1
store i8 0, i8* %var_2_24, align 1
store i8 0, i8* %var_2_29, align 1
store i8 0, i8* %var_2_32, align 1
store i8 0, i8* %var_2_35, align 1
store i8 0, i8* %var_2_41, align 1
; Matched:%var_2_1357:  %var_2_1357 = trunc i64 %var_2_1347 to i32
; %var_2_2012 = trunc i64 %var_2_2002 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %var_2_2008, %var_2_2006
; Matched:%var_2_1358:  %var_2_1358 = phi i64 [ %.pre55, %var_2_1351 ], [ %var_2_1323, %var_2_1353 ]
; %var_2_2013 = phi i64 [ %.pre109, %var_2_2006 ], [ %var_2_1978, %var_2_2008 ]
; Matched:%var_2_1359:  %var_2_1359 = phi i64 [ %.pre54, %var_2_1351 ], [ %var_2_1330, %var_2_1353 ]
; %var_2_2014 = phi i64 [ %.pre108, %var_2_2006 ], [ %var_2_1985, %var_2_2008 ]
; Matched:%var_2_1360:  %var_2_1360 = phi double [ %.pre53, %var_2_1351 ], [ %var_2_1332, %var_2_1353 ]
; %var_2_2015 = phi double [ %.pre107, %var_2_2006 ], [ %var_2_1987, %var_2_2008 ]
; Matched:%var_2_1361:  %var_2_1361 = phi i64 [ %.pre52, %var_2_1351 ], [ %var_2_1341, %var_2_1353 ]
; %var_2_2016 = phi i64 [ %.pre106, %var_2_2006 ], [ %var_2_1996, %var_2_2008 ]
; Matched:%var_2_1362:  %var_2_1362 = phi i32 [ %.pre51, %var_2_1351 ], [ %var_2_1357, %var_2_1353 ]
; %var_2_2017 = phi i32 [ %.pre105, %var_2_2006 ], [ %var_2_2012, %var_2_2008 ]
%var_2_2018 = phi %struct.Memory* [ %var_2_2007, %var_2_2006 ], [ %MEMORY.6, %var_2_2008 ]
; Matched:%var_2_1364:  %var_2_1364 = sitofp i32 %var_2_1362 to double
; %var_2_2019 = sitofp i32 %var_2_2017 to double
; Matched:\<badref\>:  store double %var_2_1364, double* %var_2_218, align 1
; store double %var_2_2019, double* %var_2_1849, align 1
; Matched:%var_2_1365:  %var_2_1365 = fdiv double %var_2_1360, %var_2_1364
; %var_2_2020 = fdiv double %var_2_2015, %var_2_2019
; Matched:\<badref\>:  store double %var_2_1365, double* %var_2_223, align 1
; store double %var_2_2020, double* %var_2_1853, align 1
; Matched:\<badref\>:  store i64 %var_2_1359, i64* %var_2_224, align 1
; store i64 %var_2_2014, i64* %var_2_1854, align 1
; Matched:%var_2_1366:  %var_2_1366 = add i64 %var_2_1358, -120
; %var_2_2021 = add i64 %var_2_2013, -120
; Matched:%var_2_1367:  %var_2_1367 = add i64 %var_2_1361, 13
; %var_2_2022 = add i64 %var_2_2016, 13
; Matched:\<badref\>:  store i64 %var_2_1367, i64* %var_2_3, align 8
; store i64 %var_2_2022, i64* %PC, align 8
; Matched:%var_2_1368:  %var_2_1368 = inttoptr i64 %var_2_1366 to double*
; %var_2_2023 = inttoptr i64 %var_2_2021 to double*
; Matched:\<badref\>:  store double %var_2_1365, double* %var_2_1368, align 8
; store double %var_2_2020, double* %var_2_2023, align 8
; Matched:%var_2_1369:  %var_2_1369 = load i64, i64* %RBP.i, align 8
; %var_2_2024 = load i64, i64* %RBP, align 8
; Matched:%var_2_1370:  %var_2_1370 = add i64 %var_2_1369, -120
; %var_2_2025 = add i64 %var_2_2024, -120
%var_2_2026 = load i64, i64* %PC, align 8
; Matched:%var_2_2074:  %var_2_2074 = add i64 %var_2_2073, 5
; %var_2_2027 = add i64 %var_2_2026, 5
; Matched:\<badref\>:  store i64 %var_2_727, i64* %var_2_3, align 8
; store i64 %var_2_2027, i64* %PC, align 8
; Matched:%var_2_1373:  %var_2_1373 = load double, double* %var_2_213, align 1
; %var_2_2028 = load double, double* %var_2_1845, align 1
; Matched:%var_2_1374:  %var_2_1374 = inttoptr i64 %var_2_1370 to double*
; %var_2_2029 = inttoptr i64 %var_2_2025 to double*
; Matched:%var_2_1375:  %var_2_1375 = load double, double* %var_2_1374, align 8
; %var_2_2030 = load double, double* %var_2_2029, align 8
; Matched:%var_2_1376:  %var_2_1376 = fmul double %var_2_1373, %var_2_1375
; %var_2_2031 = fmul double %var_2_2028, %var_2_2030
; Matched:\<badref\>:  store double %var_2_1376, double* %var_2_213, align 1
; store double %var_2_2031, double* %var_2_1845, align 1
; Matched:%var_2_1377:  %var_2_1377 = add i64 %var_2_1369, -176
; %var_2_2032 = add i64 %var_2_2024, -176
; Matched:%var_2_735:  %var_2_735 = add i64 %var_2_726, 13
; %var_2_2033 = add i64 %var_2_2026, 13
; Matched:\<badref\>:  store i64 %var_2_735, i64* %var_2_3, align 8
; store i64 %var_2_2033, i64* %PC, align 8
; Matched:%var_2_1379:  %var_2_1379 = load i64, i64* %var_2_225, align 1
; %var_2_2034 = load i64, i64* %var_2_1828, align 1
; Matched:%var_2_1380:  %var_2_1380 = inttoptr i64 %var_2_1377 to i64*
; %var_2_2035 = inttoptr i64 %var_2_2032 to i64*
; Matched:\<badref\>:  store i64 %var_2_1379, i64* %var_2_1380, align 8
; store i64 %var_2_2034, i64* %var_2_2035, align 8
; Matched:%var_2_1381:  %var_2_1381 = load i64, i64* %var_2_3, align 8
; %var_2_2036 = load i64, i64* %PC, align 8
%var_2_2037 = load <2 x i32>, <2 x i32>* %var_2_1855, align 1
%var_2_2038 = load <2 x i32>, <2 x i32>* %var_2_1856, align 1
%var_2_2039 = extractelement <2 x i32> %var_2_2037, i32 0
; Matched:\<badref\>:  store i32 %var_2_1384, i32* %var_2_198, align 1
; store i32 %var_2_2039, i32* %var_2_1832, align 1
%var_2_2040 = extractelement <2 x i32> %var_2_2037, i32 1
; Matched:\<badref\>:  store i32 %var_2_1385, i32* %var_2_200, align 1
; store i32 %var_2_2040, i32* %var_2_1834, align 1
%var_2_2041 = extractelement <2 x i32> %var_2_2038, i32 0
; Matched:\<badref\>:  store i32 %var_2_1386, i32* %var_2_201, align 1
; store i32 %var_2_2041, i32* %var_2_1835, align 1
%var_2_2042 = extractelement <2 x i32> %var_2_2038, i32 1
; Matched:\<badref\>:  store i32 %var_2_1387, i32* %var_2_203, align 1
; store i32 %var_2_2042, i32* %var_2_1837, align 1
; Matched:%var_2_1388:  %var_2_1388 = load i64, i64* %RBP.i, align 8
; %var_2_2043 = load i64, i64* %RBP, align 8
; Matched:%var_2_1389:  %var_2_1389 = add i64 %var_2_1388, -184
; %var_2_2044 = add i64 %var_2_2043, -184
; Matched:%var_2_1390:  %var_2_1390 = add i64 %var_2_1381, 11
; %var_2_2045 = add i64 %var_2_2036, 11
; Matched:\<badref\>:  store i64 %var_2_1390, i64* %var_2_3, align 8
; store i64 %var_2_2045, i64* %PC, align 8
; Matched:%var_2_1391:  %var_2_1391 = load i64, i64* %var_2_209, align 1
; %var_2_2046 = load i64, i64* %var_2_1842, align 1
; Matched:%var_2_1392:  %var_2_1392 = inttoptr i64 %var_2_1389 to i64*
; %var_2_2047 = inttoptr i64 %var_2_2044 to i64*
; Matched:\<badref\>:  store i64 %var_2_1391, i64* %var_2_1392, align 8
; store i64 %var_2_2046, i64* %var_2_2047, align 8
; Matched:%var_2_1393:  %var_2_1393 = load i64, i64* %RBP.i, align 8
; %var_2_2048 = load i64, i64* %RBP, align 8
; Matched:%var_2_1394:  %var_2_1394 = add i64 %var_2_1393, -192
; %var_2_2049 = add i64 %var_2_2048, -192
%var_2_2050 = load i64, i64* %PC, align 8
%var_2_2051 = add i64 %var_2_2050, 8
store i64 %var_2_2051, i64* %PC, align 8
; Matched:%var_2_1397:  %var_2_1397 = load i64, i64* %var_2_206, align 1
; %var_2_2052 = load i64, i64* %var_2_1839, align 1
; Matched:%var_2_1398:  %var_2_1398 = inttoptr i64 %var_2_1394 to i64*
; %var_2_2053 = inttoptr i64 %var_2_2049 to i64*
; Matched:\<badref\>:  store i64 %var_2_1397, i64* %var_2_1398, align 8
; store i64 %var_2_2052, i64* %var_2_2053, align 8
; Matched:%var_2_1399:  %var_2_1399 = load i64, i64* %var_2_3, align 8
; %var_2_2054 = load i64, i64* %PC, align 8
; Matched:%var_2_1400:  %var_2_1400 = add i64 %var_2_1399, -2177
; %var_2_2055 = add i64 %var_2_2054, -2177
; Matched:%var_2_1401:  %var_2_1401 = add i64 %var_2_1399, 5
; %var_2_2056 = add i64 %var_2_2054, 5
%var_2_2057 = load i64, i64* %RSP, align 8
%var_2_2058 = add i64 %var_2_2057, -8
%var_2_2059 = inttoptr i64 %var_2_2058 to i64*
; Matched:\<badref\>:  store i64 %var_2_1401, i64* %var_2_1404, align 8
; store i64 %var_2_2056, i64* %var_2_2059, align 8
; Matched:\<badref\>:  store i64 %var_2_1438, i64* %var_2_6, align 8
; store i64 %var_2_2058, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1400, i64* %var_2_3, align 8
; store i64 %var_2_2055, i64* %PC, align 8
%var_2_2060 = load double, double* %var_2_1857, align 8, !alias.scope !2457, !noalias !2460
%var_2_2061 = load i64, i64* %var_2_2059, align 8
store i64 %var_2_2057, i64* %RSP, align 8, !alias.scope !2457, !noalias !2460
%var_2_2062 = tail call double @sin(double %var_2_2060)
call void @llvm.memset.p0i8.i64(i8* %var_2_1859, i8 0, i64 24, i32 8, i1 false)
store double %var_2_2062, double* %var_2_1857, align 8, !alias.scope !2457, !noalias !2460
%var_2_2063 = load i64, i64* %RBP, align 8
%var_2_2064 = add i64 %var_2_2063, -160
%var_2_2065 = add i64 %var_2_2061, 8
store i64 %var_2_2065, i64* %PC, align 8
%var_2_2066 = inttoptr i64 %var_2_2064 to double*
store double %var_2_2062, double* %var_2_2066, align 8
; Matched:%var_2_1411:  %var_2_1411 = load i64, i64* %RBP.i, align 8
; %var_2_2067 = load i64, i64* %RBP, align 8
; Matched:%var_2_1412:  %var_2_1412 = add i64 %var_2_1411, -184
; %var_2_2068 = add i64 %var_2_2067, -184
%var_2_2069 = load i64, i64* %PC, align 8
%var_2_2070 = add i64 %var_2_2069, 8
store i64 %var_2_2070, i64* %PC, align 8
; Matched:%var_2_1415:  %var_2_1415 = inttoptr i64 %var_2_1412 to i64*
; %var_2_2071 = inttoptr i64 %var_2_2068 to i64*
; Matched:%var_2_1416:  %var_2_1416 = load i64, i64* %var_2_1415, align 8
; %var_2_2072 = load i64, i64* %var_2_2071, align 8
; Matched:\<badref\>:  store i64 %var_2_1416, i64* %var_2_225, align 1
; store i64 %var_2_2072, i64* %var_2_1828, align 1
store double 0.000000e+00, double* %var_2_1830, align 1
; Matched:%var_2_1417:  %var_2_1417 = add i64 %var_2_1411, -160
; %var_2_2073 = add i64 %var_2_2067, -160
; Matched:%var_2_1664:  %var_2_1664 = add i64 %var_2_1655, 16
; %var_2_2074 = add i64 %var_2_2069, 16
; Matched:\<badref\>:  store i64 %var_2_1418, i64* %var_2_3, align 8
; store i64 %var_2_2074, i64* %PC, align 8
; Matched:%var_2_1419:  %var_2_1419 = bitcast i64 %var_2_1416 to double
; %var_2_2075 = bitcast i64 %var_2_2072 to double
; Matched:%var_2_1420:  %var_2_1420 = inttoptr i64 %var_2_1417 to double*
; %var_2_2076 = inttoptr i64 %var_2_2073 to double*
; Matched:%var_2_1421:  %var_2_1421 = load double, double* %var_2_1420, align 8
; %var_2_2077 = load double, double* %var_2_2076, align 8
; Matched:%var_2_1422:  %var_2_1422 = fmul double %var_2_1419, %var_2_1421
; %var_2_2078 = fmul double %var_2_2075, %var_2_2077
; Matched:\<badref\>:  store double %var_2_1422, double* %var_2_228, align 1
; store double %var_2_2078, double* %var_2_1857, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_194, align 1
; store i64 0, i64* %var_2_1829, align 1
; Matched:%var_2_1423:  %var_2_1423 = add i64 %var_2_1413, 24
; %var_2_2079 = add i64 %var_2_2069, 24
; Matched:\<badref\>:  store i64 %var_2_1423, i64* %var_2_3, align 8
; store i64 %var_2_2079, i64* %PC, align 8
; Matched:%var_2_1424:  %var_2_1424 = load double, double* %var_2_1420, align 8
; %var_2_2080 = load double, double* %var_2_2076, align 8
; Matched:%var_2_1425:  %var_2_1425 = fmul double %var_2_1422, %var_2_1424
; %var_2_2081 = fmul double %var_2_2078, %var_2_2080
; Matched:\<badref\>:  store double %var_2_1425, double* %var_2_228, align 1
; store double %var_2_2081, double* %var_2_1857, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_194, align 1
; store i64 0, i64* %var_2_1829, align 1
; Matched:%var_2_1426:  %var_2_1426 = add i64 %var_2_1411, -144
; %var_2_2082 = add i64 %var_2_2067, -144
; Matched:%var_2_1427:  %var_2_1427 = add i64 %var_2_1413, 32
; %var_2_2083 = add i64 %var_2_2069, 32
; Matched:\<badref\>:  store i64 %var_2_1427, i64* %var_2_3, align 8
; store i64 %var_2_2083, i64* %PC, align 8
; Matched:%var_2_1428:  %var_2_1428 = inttoptr i64 %var_2_1426 to double*
; %var_2_2084 = inttoptr i64 %var_2_2082 to double*
; Matched:\<badref\>:  store double %var_2_1425, double* %var_2_1428, align 8
; store double %var_2_2081, double* %var_2_2084, align 8
; Matched:%var_2_1429:  %var_2_1429 = load i64, i64* %RBP.i, align 8
; %var_2_2085 = load i64, i64* %RBP, align 8
; Matched:%var_2_1430:  %var_2_1430 = add i64 %var_2_1429, -120
; %var_2_2086 = add i64 %var_2_2085, -120
%var_2_2087 = load i64, i64* %PC, align 8
; Matched:%var_2_727:  %var_2_727 = add i64 %var_2_726, 5
; %var_2_2088 = add i64 %var_2_2087, 5
; Matched:\<badref\>:  store i64 %var_2_861, i64* %var_2_3, align 8
; store i64 %var_2_2088, i64* %PC, align 8
; Matched:%var_2_1433:  %var_2_1433 = inttoptr i64 %var_2_1430 to i64*
; %var_2_2089 = inttoptr i64 %var_2_2086 to i64*
; Matched:%var_2_1434:  %var_2_1434 = load i64, i64* %var_2_1433, align 8
; %var_2_2090 = load i64, i64* %var_2_2089, align 8
; Matched:\<badref\>:  store i64 %var_2_1434, i64* %var_2_225, align 1
; store i64 %var_2_2090, i64* %var_2_1828, align 1
store double 0.000000e+00, double* %var_2_1830, align 1
; Matched:%var_2_1435:  %var_2_1435 = add i64 %var_2_1431, -2222
; %var_2_2091 = add i64 %var_2_2087, -2222
; Matched:%var_2_1436:  %var_2_1436 = add i64 %var_2_1431, 10
; %var_2_2092 = add i64 %var_2_2087, 10
%var_2_2093 = load i64, i64* %RSP, align 8
%var_2_2094 = add i64 %var_2_2093, -8
%var_2_2095 = inttoptr i64 %var_2_2094 to i64*
; Matched:\<badref\>:  store i64 %var_2_1436, i64* %var_2_1439, align 8
; store i64 %var_2_2092, i64* %var_2_2095, align 8
; Matched:\<badref\>:  store i64 %var_2_1403, i64* %var_2_6, align 8
; store i64 %var_2_2094, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1435, i64* %var_2_3, align 8
; store i64 %var_2_2091, i64* %PC, align 8
%var_2_2096 = load double, double* %var_2_1857, align 8, !alias.scope !2462, !noalias !2465
%var_2_2097 = load i64, i64* %var_2_2095, align 8
store i64 %var_2_2093, i64* %RSP, align 8, !alias.scope !2462, !noalias !2465
%var_2_2098 = tail call double @sin(double %var_2_2096)
call void @llvm.memset.p0i8.i64(i8* %var_2_1861, i8 0, i64 24, i32 8, i1 false)
store double %var_2_2098, double* %var_2_1857, align 8, !alias.scope !2462, !noalias !2465
%var_2_2099 = load i64, i64* %RBP, align 8
%var_2_2100 = add i64 %var_2_2099, -136
%var_2_2101 = add i64 %var_2_2097, 8
store i64 %var_2_2101, i64* %PC, align 8
%var_2_2102 = inttoptr i64 %var_2_2100 to double*
store double %var_2_2098, double* %var_2_2102, align 8
; Matched:%var_2_1446:  %var_2_1446 = load i64, i64* %RBP.i, align 8
; %var_2_2103 = load i64, i64* %RBP, align 8
; Matched:%var_2_1447:  %var_2_1447 = add i64 %var_2_1446, -192
; %var_2_2104 = add i64 %var_2_2103, -192
%var_2_2105 = load i64, i64* %PC, align 8
%var_2_2106 = add i64 %var_2_2105, 8
store i64 %var_2_2106, i64* %PC, align 8
; Matched:%var_2_1450:  %var_2_1450 = inttoptr i64 %var_2_1447 to i64*
; %var_2_2107 = inttoptr i64 %var_2_2104 to i64*
; Matched:%var_2_1451:  %var_2_1451 = load i64, i64* %var_2_1450, align 8
; %var_2_2108 = load i64, i64* %var_2_2107, align 8
; Matched:\<badref\>:  store i64 %var_2_1451, i64* %var_2_225, align 1
; store i64 %var_2_2108, i64* %var_2_1828, align 1
store double 0.000000e+00, double* %var_2_1830, align 1
; Matched:%var_2_1452:  %var_2_1452 = add i64 %var_2_1446, -152
; %var_2_2109 = add i64 %var_2_2103, -152
; Matched:%var_2_309:  %var_2_309 = add i64 %var_2_278, 16
; %var_2_2110 = add i64 %var_2_2105, 16
; Matched:\<badref\>:  store i64 %var_2_309, i64* %var_2_3, align 8
; store i64 %var_2_2110, i64* %PC, align 8
; Matched:%var_2_1454:  %var_2_1454 = inttoptr i64 %var_2_1452 to i64*
; %var_2_2111 = inttoptr i64 %var_2_2109 to i64*
; Matched:\<badref\>:  store i64 %var_2_1451, i64* %var_2_1454, align 8
; store i64 %var_2_2108, i64* %var_2_2111, align 8
; Matched:%var_2_1455:  %var_2_1455 = load i64, i64* %RBP.i, align 8
; %var_2_2112 = load i64, i64* %RBP, align 8
; Matched:%var_2_1456:  %var_2_1456 = add i64 %var_2_1455, -176
; %var_2_2113 = add i64 %var_2_2112, -176
%var_2_2114 = load i64, i64* %PC, align 8
%var_2_2115 = add i64 %var_2_2114, 8
store i64 %var_2_2115, i64* %PC, align 8
; Matched:%var_2_1459:  %var_2_1459 = inttoptr i64 %var_2_1456 to i64*
; %var_2_2116 = inttoptr i64 %var_2_2113 to i64*
; Matched:%var_2_1460:  %var_2_1460 = load i64, i64* %var_2_1459, align 8
; %var_2_2117 = load i64, i64* %var_2_2116, align 8
; Matched:\<badref\>:  store i64 %var_2_1460, i64* %var_2_206, align 1
; store i64 %var_2_2117, i64* %var_2_1839, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_208, align 1
; store double 0.000000e+00, double* %var_2_1841, align 1
; Matched:%var_2_1461:  %var_2_1461 = add i64 %var_2_1455, -128
; %var_2_2118 = add i64 %var_2_2112, -128
; Matched:%var_2_1908:  %var_2_1908 = add i64 %var_2_1899, 13
; %var_2_2119 = add i64 %var_2_2114, 13
; Matched:\<badref\>:  store i64 %var_2_1798, i64* %var_2_3, align 8
; store i64 %var_2_2119, i64* %PC, align 8
; Matched:%var_2_1463:  %var_2_1463 = inttoptr i64 %var_2_1461 to i64*
; %var_2_2120 = inttoptr i64 %var_2_2118 to i64*
; Matched:\<badref\>:  store i64 %var_2_1460, i64* %var_2_1463, align 8
; store i64 %var_2_2117, i64* %var_2_2120, align 8
%var_2_2121 = load i64, i64* %RBP, align 8
%var_2_2122 = add i64 %var_2_2121, -36
%var_2_2123 = load i64, i64* %PC, align 8
; Matched:%var_2_750:  %var_2_750 = add i64 %var_2_745, 7
; %var_2_2124 = add i64 %var_2_2123, 7
; Matched:\<badref\>:  store i64 %var_2_317, i64* %var_2_3, align 8
; store i64 %var_2_2124, i64* %PC, align 8
%var_2_2125 = inttoptr i64 %var_2_2122 to i32*
store i32 1, i32* %var_2_2125, align 4
; Matched:  %.pre56 = load i64, i64* %var_2_3, align 8
; %.pre110 = load i64, i64* %PC, align 8
  br label %block_400e84

block_400ba3:                                     ; preds = %block_400b97
; Matched:%var_2_260:  %var_2_260 = add i64 %var_2_231, -16
; %var_2_2126 = add i64 %var_2_1651, -16
; Matched:%var_2_113:  %var_2_113 = add i64 %var_2_111, 4
; %var_2_2127 = add i64 %var_2_1687, 4
; Matched:\<badref\>:  store i64 %var_2_113, i64* %var_2_3, align 8
; store i64 %var_2_2127, i64* %PC, align 8
; Matched:%var_2_262:  %var_2_262 = inttoptr i64 %var_2_260 to i64*
; %var_2_2128 = inttoptr i64 %var_2_2126 to i64*
; Matched:%var_2_115:  %var_2_115 = load i64, i64* %var_2_114, align 8
; %var_2_2129 = load i64, i64* %var_2_2128, align 8
; Matched:\<badref\>:  store i64 %var_2_115, i64* %RAX.i798, align 8
; store i64 %var_2_2129, i64* %RAX, align 8
; Matched:%var_2_116:  %var_2_116 = add i64 %var_2_111, 8
; %var_2_2130 = add i64 %var_2_1687, 8
; Matched:\<badref\>:  store i64 %var_2_116, i64* %var_2_3, align 8
; store i64 %var_2_2130, i64* %PC, align 8
; Matched:%var_2_265:  %var_2_265 = load i32, i32* %var_2_234, align 4
; %var_2_2131 = load i32, i32* %var_2_1654, align 4
; Matched:%var_2_118:  %var_2_118 = sext i32 %var_2_117 to i64
; %var_2_2132 = sext i32 %var_2_2131 to i64
; Matched:\<badref\>:  store i64 %var_2_118, i64* %RCX.i788, align 8
; store i64 %var_2_2132, i64* %RCX, align 8
; Matched:%var_2_267:  %var_2_267 = shl nsw i64 %var_2_266, 2
; %var_2_2133 = shl nsw i64 %var_2_2132, 2
; Matched:%var_2_120:  %var_2_120 = add i64 %var_2_119, %var_2_115
; %var_2_2134 = add i64 %var_2_2133, %var_2_2129
; Matched:%var_2_121:  %var_2_121 = add i64 %var_2_111, 11
; %var_2_2135 = add i64 %var_2_1687, 11
; Matched:\<badref\>:  store i64 %var_2_121, i64* %var_2_3, align 8
; store i64 %var_2_2135, i64* %PC, align 8
; Matched:%var_2_122:  %var_2_122 = inttoptr i64 %var_2_120 to i32*
; %var_2_2136 = inttoptr i64 %var_2_2134 to i32*
; Matched:%var_2_271:  %var_2_271 = load i32, i32* %var_2_270, align 4
; %var_2_2137 = load i32, i32* %var_2_2136, align 4
; Matched:%var_2_124:  %var_2_124 = zext i32 %var_2_123 to i64
; %var_2_2138 = zext i32 %var_2_2137 to i64
; Matched:\<badref\>:  store i64 %var_2_124, i64* %RDX.i786, align 8
; store i64 %var_2_2138, i64* %RDX, align 8
; Matched:%var_2_125:  %var_2_125 = add i64 %var_2_75, -96
; %var_2_2139 = add i64 %var_2_1651, -96
; Matched:%var_2_126:  %var_2_126 = add i64 %var_2_111, 15
; %var_2_2140 = add i64 %var_2_1687, 15
; Matched:\<badref\>:  store i64 %var_2_126, i64* %var_2_3, align 8
; store i64 %var_2_2140, i64* %PC, align 8
; Matched:%var_2_127:  %var_2_127 = inttoptr i64 %var_2_125 to i32*
; %var_2_2141 = inttoptr i64 %var_2_2139 to i32*
; Matched:%var_2_128:  %var_2_128 = load i32, i32* %var_2_127, align 4
; %var_2_2142 = load i32, i32* %var_2_2141, align 4
; Matched:%var_2_129:  %var_2_129 = sext i32 %var_2_123 to i64
; %var_2_2143 = sext i32 %var_2_2137 to i64
; Matched:%var_2_130:  %var_2_130 = sext i32 %var_2_128 to i64
; %var_2_2144 = sext i32 %var_2_2142 to i64
; Matched:%var_2_131:  %var_2_131 = mul nsw i64 %var_2_130, %var_2_129
; %var_2_2145 = mul nsw i64 %var_2_2144, %var_2_2143
; Matched:%var_2_132:  %var_2_132 = trunc i64 %var_2_131 to i32
; %var_2_2146 = trunc i64 %var_2_2145 to i32
; Matched:%var_2_133:  %var_2_133 = and i64 %var_2_131, 4294967295
; %var_2_2147 = and i64 %var_2_2145, 4294967295
; Matched:\<badref\>:  store i64 %var_2_133, i64* %RDX.i786, align 8
; store i64 %var_2_2147, i64* %RDX, align 8
; Matched:%var_2_134:  %var_2_134 = shl i64 %var_2_131, 32
; %var_2_2148 = shl i64 %var_2_2145, 32
; Matched:%var_2_135:  %var_2_135 = ashr exact i64 %var_2_134, 32
; %var_2_2149 = ashr exact i64 %var_2_2148, 32
; Matched:%var_2_136:  %var_2_136 = icmp ne i64 %var_2_135, %var_2_131
; %var_2_2150 = icmp ne i64 %var_2_2149, %var_2_2145
; Matched:%var_2_137:  %var_2_137 = zext i1 %var_2_136 to i8
; %var_2_2151 = zext i1 %var_2_2150 to i8
; Matched:\<badref\>:  store i8 %var_2_137, i8* %var_2_14, align 1
; store i8 %var_2_2151, i8* %var_2_17, align 1
; Matched:%var_2_138:  %var_2_138 = and i32 %var_2_132, 255
; %var_2_2152 = and i32 %var_2_2146, 255
; Matched:%var_2_139:  %var_2_139 = tail call i32 @llvm.ctpop.i32(i32 %var_2_138)
; %var_2_2153 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2152) #14
; Matched:%var_2_140:  %var_2_140 = trunc i32 %var_2_139 to i8
; %var_2_2154 = trunc i32 %var_2_2153 to i8
; Matched:%var_2_141:  %var_2_141 = and i8 %var_2_140, 1
; %var_2_2155 = and i8 %var_2_2154, 1
; Matched:%var_2_142:  %var_2_142 = xor i8 %var_2_141, 1
; %var_2_2156 = xor i8 %var_2_2155, 1
; Matched:\<badref\>:  store i8 %var_2_142, i8* %var_2_21, align 1
; store i8 %var_2_2156, i8* %var_2_24, align 1
store i8 0, i8* %var_2_29, align 1
store i8 0, i8* %var_2_32, align 1
; Matched:%var_2_143:  %var_2_143 = lshr i32 %var_2_132, 31
; %var_2_2157 = lshr i32 %var_2_2146, 31
; Matched:%var_2_144:  %var_2_144 = trunc i32 %var_2_143 to i8
; %var_2_2158 = trunc i32 %var_2_2157 to i8
; Matched:\<badref\>:  store i8 %var_2_144, i8* %var_2_32, align 1
; store i8 %var_2_2158, i8* %var_2_35, align 1
; Matched:\<badref\>:  store i8 %var_2_137, i8* %var_2_38, align 1
; store i8 %var_2_2151, i8* %var_2_41, align 1
; Matched:%var_2_145:  %var_2_145 = trunc i64 %var_2_131 to i32
; %var_2_2159 = trunc i64 %var_2_2145 to i32
; Matched:%var_2_146:  %var_2_146 = add i64 %var_2_111, 18
; %var_2_2160 = add i64 %var_2_1687, 18
; Matched:\<badref\>:  store i64 %var_2_146, i64* %var_2_3, align 8
; store i64 %var_2_2160, i64* %PC, align 8
; Matched:\<badref\>:  store i32 %var_2_145, i32* %var_2_127, align 4
; store i32 %var_2_2159, i32* %var_2_2141, align 4
; Matched:%var_2_147:  %var_2_147 = load i64, i64* %RBP.i, align 8
; %var_2_2161 = load i64, i64* %RBP, align 8
; Matched:%var_2_148:  %var_2_148 = add i64 %var_2_147, -72
; %var_2_2162 = add i64 %var_2_2161, -72
%var_2_2163 = load i64, i64* %PC, align 8
; Matched:%var_2_1971:  %var_2_1971 = add i64 %var_2_1970, 3
; %var_2_2164 = add i64 %var_2_2163, 3
; Matched:\<badref\>:  store i64 %var_2_1971, i64* %var_2_3, align 8
; store i64 %var_2_2164, i64* %PC, align 8
; Matched:%var_2_151:  %var_2_151 = inttoptr i64 %var_2_148 to i32*
; %var_2_2165 = inttoptr i64 %var_2_2162 to i32*
; Matched:%var_2_152:  %var_2_152 = load i32, i32* %var_2_151, align 4
; %var_2_2166 = load i32, i32* %var_2_2165, align 4
; Matched:%var_2_153:  %var_2_153 = add i32 %var_2_152, 1
; %var_2_2167 = add i32 %var_2_2166, 1
; Matched:%var_2_154:  %var_2_154 = zext i32 %var_2_153 to i64
; %var_2_2168 = zext i32 %var_2_2167 to i64
; Matched:\<badref\>:  store i64 %var_2_154, i64* %RAX.i798, align 8
; store i64 %var_2_2168, i64* %RAX, align 8
; Matched:%var_2_155:  %var_2_155 = icmp eq i32 %var_2_152, -1
; %var_2_2169 = icmp eq i32 %var_2_2166, -1
; Matched:%var_2_156:  %var_2_156 = icmp eq i32 %var_2_153, 0
; %var_2_2170 = icmp eq i32 %var_2_2167, 0
; Matched:%var_2_157:  %var_2_157 = or i1 %var_2_155, %var_2_156
; %var_2_2171 = or i1 %var_2_2169, %var_2_2170
; Matched:%var_2_158:  %var_2_158 = zext i1 %var_2_157 to i8
; %var_2_2172 = zext i1 %var_2_2171 to i8
; Matched:\<badref\>:  store i8 %var_2_158, i8* %var_2_14, align 1
; store i8 %var_2_2172, i8* %var_2_17, align 1
; Matched:%var_2_159:  %var_2_159 = and i32 %var_2_153, 255
; %var_2_2173 = and i32 %var_2_2167, 255
; Matched:%var_2_160:  %var_2_160 = tail call i32 @llvm.ctpop.i32(i32 %var_2_159)
; %var_2_2174 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2173) #14
; Matched:%var_2_161:  %var_2_161 = trunc i32 %var_2_160 to i8
; %var_2_2175 = trunc i32 %var_2_2174 to i8
; Matched:%var_2_162:  %var_2_162 = and i8 %var_2_161, 1
; %var_2_2176 = and i8 %var_2_2175, 1
; Matched:%var_2_163:  %var_2_163 = xor i8 %var_2_162, 1
; %var_2_2177 = xor i8 %var_2_2176, 1
; Matched:\<badref\>:  store i8 %var_2_163, i8* %var_2_21, align 1
; store i8 %var_2_2177, i8* %var_2_24, align 1
; Matched:%var_2_164:  %var_2_164 = xor i32 %var_2_153, %var_2_152
; %var_2_2178 = xor i32 %var_2_2167, %var_2_2166
; Matched:%var_2_165:  %var_2_165 = lshr i32 %var_2_164, 4
; %var_2_2179 = lshr i32 %var_2_2178, 4
; Matched:%var_2_166:  %var_2_166 = trunc i32 %var_2_165 to i8
; %var_2_2180 = trunc i32 %var_2_2179 to i8
; Matched:%var_2_167:  %var_2_167 = and i8 %var_2_166, 1
; %var_2_2181 = and i8 %var_2_2180, 1
; Matched:\<badref\>:  store i8 %var_2_167, i8* %var_2_26, align 1
; store i8 %var_2_2181, i8* %var_2_29, align 1
; Matched:%var_2_168:  %var_2_168 = zext i1 %var_2_156 to i8
; %var_2_2182 = zext i1 %var_2_2170 to i8
; Matched:\<badref\>:  store i8 %var_2_168, i8* %var_2_29, align 1
; store i8 %var_2_2182, i8* %var_2_32, align 1
; Matched:%var_2_169:  %var_2_169 = lshr i32 %var_2_153, 31
; %var_2_2183 = lshr i32 %var_2_2167, 31
; Matched:%var_2_170:  %var_2_170 = trunc i32 %var_2_169 to i8
; %var_2_2184 = trunc i32 %var_2_2183 to i8
; Matched:\<badref\>:  store i8 %var_2_170, i8* %var_2_32, align 1
; store i8 %var_2_2184, i8* %var_2_35, align 1
; Matched:%var_2_171:  %var_2_171 = lshr i32 %var_2_152, 31
; %var_2_2185 = lshr i32 %var_2_2166, 31
; Matched:%var_2_172:  %var_2_172 = xor i32 %var_2_169, %var_2_171
; %var_2_2186 = xor i32 %var_2_2183, %var_2_2185
; Matched:%var_2_173:  %var_2_173 = add nuw nsw i32 %var_2_172, %var_2_169
; %var_2_2187 = add nuw nsw i32 %var_2_2186, %var_2_2183
; Matched:%var_2_174:  %var_2_174 = icmp eq i32 %var_2_173, 2
; %var_2_2188 = icmp eq i32 %var_2_2187, 2
; Matched:%var_2_175:  %var_2_175 = zext i1 %var_2_174 to i8
; %var_2_2189 = zext i1 %var_2_2188 to i8
; Matched:\<badref\>:  store i8 %var_2_175, i8* %var_2_38, align 1
; store i8 %var_2_2189, i8* %var_2_41, align 1
%var_2_2190 = add i64 %var_2_2163, 9
store i64 %var_2_2190, i64* %PC, align 8
; Matched:\<badref\>:  store i32 %var_2_153, i32* %var_2_151, align 4
; store i32 %var_2_2167, i32* %var_2_2165, align 4
; Matched:%var_2_177:  %var_2_177 = load i64, i64* %var_2_3, align 8
; %var_2_2191 = load i64, i64* %PC, align 8
; Matched:%var_2_178:  %var_2_178 = add i64 %var_2_177, -39
; %var_2_2192 = add i64 %var_2_2191, -39
; Matched:\<badref\>:  store i64 %var_2_178, i64* %var_2_3, align 8
; store i64 %var_2_2192, i64* %PC, align 8
  br label %block_400b97

block_400e84:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit, %block_400fd1
; Matched:%var_2_1469:  %var_2_1469 = phi i64 [ %var_2_2140, %block_.L_400fd1 ], [ %.pre56, %routine_idivl_MINUS0x30__rbp_.exit ]
; %var_2_2193 = phi i64 [ %.pre110, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ], [ %var_2_657, %block_400fd1 ]
%var_2_2194 = load i64, i64* %RBP, align 8
%var_2_2195 = add i64 %var_2_2194, -36
; Matched:%var_2_1472:  %var_2_1472 = add i64 %var_2_1469, 3
; %var_2_2196 = add i64 %var_2_2193, 3
; Matched:\<badref\>:  store i64 %var_2_1472, i64* %var_2_3, align 8
; store i64 %var_2_2196, i64* %PC, align 8
%var_2_2197 = inttoptr i64 %var_2_2195 to i32*
%var_2_2198 = load i32, i32* %var_2_2197, align 4
; Matched:%var_2_1475:  %var_2_1475 = zext i32 %var_2_1474 to i64
; %var_2_2199 = zext i32 %var_2_2198 to i64
; Matched:\<badref\>:  store i64 %var_2_1475, i64* %RAX.i798, align 8
; store i64 %var_2_2199, i64* %RAX, align 8
%var_2_2200 = add i64 %var_2_2194, -60
; Matched:%var_2_1477:  %var_2_1477 = add i64 %var_2_1469, 6
; %var_2_2201 = add i64 %var_2_2193, 6
; Matched:\<badref\>:  store i64 %var_2_1477, i64* %var_2_3, align 8
; store i64 %var_2_2201, i64* %PC, align 8
%var_2_2202 = inttoptr i64 %var_2_2200 to i32*
%var_2_2203 = load i32, i32* %var_2_2202, align 4
%var_2_2204 = sub i32 %var_2_2198, %var_2_2203
; Matched:%var_2_1481:  %var_2_1481 = icmp ult i32 %var_2_1474, %var_2_1479
; %var_2_2205 = icmp ult i32 %var_2_2198, %var_2_2203
; Matched:%var_2_1482:  %var_2_1482 = zext i1 %var_2_1481 to i8
; %var_2_2206 = zext i1 %var_2_2205 to i8
; Matched:\<badref\>:  store i8 %var_2_1482, i8* %var_2_14, align 1
; store i8 %var_2_2206, i8* %var_2_17, align 1
; Matched:%var_2_1483:  %var_2_1483 = and i32 %var_2_1480, 255
; %var_2_2207 = and i32 %var_2_2204, 255
; Matched:%var_2_1484:  %var_2_1484 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1483)
; %var_2_2208 = tail call i32 @llvm.ctpop.i32(i32 %var_2_2207) #14
; Matched:%var_2_1485:  %var_2_1485 = trunc i32 %var_2_1484 to i8
; %var_2_2209 = trunc i32 %var_2_2208 to i8
; Matched:%var_2_1486:  %var_2_1486 = and i8 %var_2_1485, 1
; %var_2_2210 = and i8 %var_2_2209, 1
; Matched:%var_2_1487:  %var_2_1487 = xor i8 %var_2_1486, 1
; %var_2_2211 = xor i8 %var_2_2210, 1
; Matched:\<badref\>:  store i8 %var_2_1487, i8* %var_2_21, align 1
; store i8 %var_2_2211, i8* %var_2_24, align 1
; Matched:%var_2_1488:  %var_2_1488 = xor i32 %var_2_1479, %var_2_1474
; %var_2_2212 = xor i32 %var_2_2203, %var_2_2198
; Matched:%var_2_1489:  %var_2_1489 = xor i32 %var_2_1488, %var_2_1480
; %var_2_2213 = xor i32 %var_2_2212, %var_2_2204
; Matched:%var_2_1490:  %var_2_1490 = lshr i32 %var_2_1489, 4
; %var_2_2214 = lshr i32 %var_2_2213, 4
; Matched:%var_2_1491:  %var_2_1491 = trunc i32 %var_2_1490 to i8
; %var_2_2215 = trunc i32 %var_2_2214 to i8
; Matched:%var_2_1492:  %var_2_1492 = and i8 %var_2_1491, 1
; %var_2_2216 = and i8 %var_2_2215, 1
; Matched:\<badref\>:  store i8 %var_2_1492, i8* %var_2_26, align 1
; store i8 %var_2_2216, i8* %var_2_29, align 1
%var_2_2217 = icmp eq i32 %var_2_2204, 0
; Matched:%var_2_1494:  %var_2_1494 = zext i1 %var_2_1493 to i8
; %var_2_2218 = zext i1 %var_2_2217 to i8
; Matched:\<badref\>:  store i8 %var_2_1494, i8* %var_2_29, align 1
; store i8 %var_2_2218, i8* %var_2_32, align 1
%var_2_2219 = lshr i32 %var_2_2204, 31
%var_2_2220 = trunc i32 %var_2_2219 to i8
; Matched:\<badref\>:  store i8 %var_2_1496, i8* %var_2_32, align 1
; store i8 %var_2_2220, i8* %var_2_35, align 1
%var_2_2221 = lshr i32 %var_2_2198, 31
%var_2_2222 = lshr i32 %var_2_2203, 31
%var_2_2223 = xor i32 %var_2_2222, %var_2_2221
%var_2_2224 = xor i32 %var_2_2219, %var_2_2221
%var_2_2225 = add nuw nsw i32 %var_2_2224, %var_2_2223
%var_2_2226 = icmp eq i32 %var_2_2225, 2
; Matched:%var_2_1503:  %var_2_1503 = zext i1 %var_2_1502 to i8
; %var_2_2227 = zext i1 %var_2_2226 to i8
; Matched:\<badref\>:  store i8 %var_2_1503, i8* %var_2_38, align 1
; store i8 %var_2_2227, i8* %var_2_41, align 1
%var_2_2228 = icmp ne i8 %var_2_2220, 0
%var_2_2229 = xor i1 %var_2_2228, %var_2_2226
%.demorgan118 = or i1 %var_2_2217, %var_2_2229
; Matched:  %.v72 = select i1 %.demorgan64, i64 12, i64 447
; %.v126 = select i1 %.demorgan118, i64 12, i64 447
; Matched:%var_2_1506:  %var_2_1506 = add i64 %var_2_1469, %.v72
; %var_2_2230 = add i64 %var_2_2193, %.v126
; Matched:\<badref\>:  store i64 %var_2_1506, i64* %var_2_3, align 8
; store i64 %var_2_2230, i64* %PC, align 8
  br i1 %.demorgan118, label %block_400e90, label %block_401043
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006a0_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4006a0:
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
  %13 = tail call %struct.Memory* @sub_400630_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline
define %struct.Memory* @sub_401070___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_401070:
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
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #14
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
  %63 = add i64 %38, -2891
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_400540__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2432
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #14
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
  br i1 %76, label %block_4010c6, label %block_4010a6

block_4010c6.loopexit:                            ; preds = %block_4010b0
  br label %block_4010c6

block_4010c6:                                     ; preds = %block_4010c6.loopexit, %block_401070
  %81 = phi i64 [ %80, %block_401070 ], [ %179, %block_4010c6.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_401070 ], [ %149, %block_4010c6.loopexit ]
  %82 = load i64, i64* %RSP, align 8
  %83 = add i64 %82, 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  %84 = icmp ugt i64 %82, -9
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %43, align 1, !tbaa !2432
  %86 = trunc i64 %83 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #14
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

block_4010a6:                                     ; preds = %block_401070
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_4010b0

block_4010b0:                                     ; preds = %block_4010b0, %block_4010a6
  %134 = phi i64 [ 0, %block_4010a6 ], [ %152, %block_4010b0 ]
  %135 = phi i64 [ %133, %block_4010a6 ], [ %179, %block_4010b0 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_4010a6 ], [ %149, %block_4010b0 ]
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
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #14
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
  br i1 %169, label %block_4010c6.loopexit, label %block_4010b0
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #6

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4006a0_frame_dummy() #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4006a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #14
  ret void
}

define internal %struct.Memory* @callback_sub_4006a0_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4006a0_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400670___do_global_dtors_aux() #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400670;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #14
  ret void
}

define internal %struct.Memory* @callback_sub_400670___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400670___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020b8_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602090_malloc(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020a8_memset(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020d0_exit(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4010e0___libc_csu_fini() #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4010e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #14
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_4010e0___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4010e0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401070___libc_csu_init() #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401070;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #14
  ret void
}

define internal %struct.Memory* @callback_sub_401070___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401070___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4006b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #14
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4006b0_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020b0___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: alwaysinline inlinehint nounwind
define %struct.Memory* @ext_6020c8_sin(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #13 {
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %PC, align 8
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %4 to double*
  %6 = load double, double* %5, align 8
  %7 = load i64, i64* %RSP, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %PC, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %RSP, align 8
  %11 = tail call double @sin(double %6)
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 24, i32 8, i1 false)
  store double %11, double* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400540;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #14
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) #14 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400540__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4010e4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #14
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.term_proc_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #14 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4010e4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #14 {
  tail call void @callback_sub_4010e0___libc_csu_fini()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_constructor() #14 {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_401070___libc_csu_init()
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #15

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline }
attributes #7 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { naked nobuiltin noinline nounwind }
attributes #11 = { noinline nounwind }
attributes #12 = { norecurse nounwind }
attributes #13 = { alwaysinline inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind }
attributes #15 = { argmemonly nounwind }
attributes #16 = { alwaysinline nobuiltin nounwind }

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
!2452 = !{!2453, !2453, i64 0}
!2453 = !{!"double", !2430, i64 0}
!2454 = !{!2445, !2445, i64 0}
!2455 = !{!2456, !2456, i64 0}
!2456 = !{!"float", !2430, i64 0}
!2457 = !{!2458}
!2458 = distinct !{!2458, !2459, !"ext_6020c8_sin: argument 0"}
!2459 = distinct !{!2459, !"ext_6020c8_sin"}
!2460 = !{!2461}
!2461 = distinct !{!2461, !2459, !"ext_6020c8_sin: argument 1"}
!2462 = !{!2463}
!2463 = distinct !{!2463, !2464, !"ext_6020c8_sin: argument 0"}
!2464 = distinct !{!2464, !"ext_6020c8_sin"}
!2465 = !{!2466}
!2466 = distinct !{!2466, !2464, !"ext_6020c8_sin: argument 1"}
