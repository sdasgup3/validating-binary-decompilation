; ModuleID = 'binary/test.mcsema.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4010c0__rodata_type = type <{ [72 x i8], [28 x i8], [48 x i8], [35 x i8], [35 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
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
@seg_4010c0__rodata = internal constant %seg_4010c0__rodata_type <{ [72 x i8] c"\01\00\02\00\00\00\00\00\00\00\00 _\A0\02\C2\00\00\00 _\A0\02B\00\00\00\00\00\E0o@\00\00\00\00\00\00`@\00\00\00\00\00\00\F0?\00\00\00\00\00\00\00\C0\00\00\00\00\00\00\E0?\1C-DT\FB!\19@", [28 x i8] c"Can't allocate data array.\0A\00", [48 x i8] c"Wrong answer at (%d,%d)!  Expected %d, got %d.\0A\00", [35 x i8] c"%d passes.  No errors in results.\0A\00", [35 x i8] c"%d passes.  %d errors in results.\0A\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400660_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400630___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602060__bss = internal global %seg_602060__bss_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400660_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400630___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4010b0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401040___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @sub_4005c0_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400508__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400b30_fourn_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_jump(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #5

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
define %struct.Memory* @sub_4005f0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4005f0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 6299728, i64* %RSI, align 8, !tbaa !2428
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
  %11 = add i64 %9, -6299728
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
  store i8 %22, i8* %12, align 1, !tbaa !2432
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 255
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25) #10
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  store i8 %29, i8* %13, align 1, !tbaa !2432
  store i8 0, i8* %14, align 1, !tbaa !2432
  %30 = icmp eq i64 %23, 0
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %15, align 1, !tbaa !2432
  %32 = lshr i64 %23, 63
  %33 = trunc i64 %32 to i8
  store i8 %33, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %17, align 1, !tbaa !2432
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %30, i64 50, i64 29
  %35 = add i64 %10, %.v
  store i64 %35, i64* %34, align 8, !tbaa !2428
  br i1 %30, label %block_400628, label %block_400613

block_400613:                                     ; preds = %block_4005f0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2433
  store i8 1, i8* %13, align 1, !tbaa !2447
  store i8 1, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %14, align 1, !tbaa !2451
  %36 = add i64 %35, 21
  store i64 %36, i64* %34, align 8, !tbaa !2428
  br label %block_400628

block_400628:                                     ; preds = %block_400613, %block_4005f0
  %37 = phi i64 [ %36, %block_400613 ], [ %35, %block_4005f0 ]
  %38 = add i64 %37, 1
  store i64 %38, i64* %PC, align 8
  %39 = load i64, i64* %5, align 8, !tbaa !2428
  %40 = add i64 %39, 8
  %41 = inttoptr i64 %39 to i64*
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %RBP, align 8, !tbaa !2428
  store i64 %40, i64* %5, align 8, !tbaa !2428
  %43 = add i64 %37, 2
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %40 to i64*
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %34, align 8, !tbaa !2428
  %46 = add i64 %39, 16
  store i64 %46, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400508__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
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
  %11 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_601ff0__got_type* @seg_601ff0__got to i64), i64 8) to i64*), align 8
  store i64 %11, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %5, align 1, !tbaa !2433
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #10
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
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %18, i64 18, i64 16
  %23 = add i64 %.v, %1
  store i64 %23, i64* %22, align 8, !tbaa !2428
  br i1 %18, label %block_400508.block_40051a_crit_edge, label %block_400518

block_400508.block_40051a_crit_edge:              ; preds = %block_400508
  %.pre2 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  br label %block_40051a

block_400518:                                     ; preds = %block_400508
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
  br label %block_40051a

block_40051a:                                     ; preds = %block_400508.block_40051a_crit_edge, %block_400518
  %.pre-phi = phi i64* [ %.pre2, %block_400508.block_40051a_crit_edge ], [ %25, %block_400518 ]
  %29 = phi i64 [ %23, %block_400508.block_40051a_crit_edge ], [ %.pre1, %block_400518 ]
  %30 = phi i64 [ %4, %block_400508.block_40051a_crit_edge ], [ %.pre, %block_400518 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400508.block_40051a_crit_edge ], [ %28, %block_400518 ]
  %31 = add i64 %30, 8
  store i64 %31, i64* %RSP, align 8, !tbaa !2428
  %32 = icmp ugt i64 %30, -9
  %33 = zext i1 %32 to i8
  store i8 %33, i8* %5, align 1, !tbaa !2433
  %34 = trunc i64 %31 to i32
  %35 = and i32 %34, 255
  %36 = tail call i32 @llvm.ctpop.i32(i32 %35) #10
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = xor i8 %38, 1
  store i8 %39, i8* %6, align 1, !tbaa !2447
  %40 = xor i64 %30, %31
  %41 = lshr i64 %40, 4
  %42 = trunc i64 %41 to i8
  %43 = and i8 %42, 1
  store i8 %43, i8* %7, align 1, !tbaa !2451
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
define %struct.Memory* @sub_401040___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_401040:
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
  store i64 ptrtoint (%seg_601df0__init_array_type* @seg_601df0__init_array to i64), i64* %R12, align 8, !tbaa !2428
  %28 = load i64, i64* %RBP, align 8
  %29 = add i64 %27, 8
  store i64 %29, i64* %PC, align 8
  %30 = add i64 %8, -40
  %31 = inttoptr i64 %30 to i64*
  store i64 %28, i64* %31, align 8
  %32 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_601df0__init_array_type* @seg_601df0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2428
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
  store i8 %53, i8* %45, align 1, !tbaa !2432
  %55 = trunc i64 %54 to i32
  %56 = and i32 %55, 255
  %57 = tail call i32 @llvm.ctpop.i32(i32 %56) #10
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  store i8 %60, i8* %46, align 1, !tbaa !2432
  store i8 0, i8* %47, align 1, !tbaa !2432
  %61 = icmp eq i64 %54, 0
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %48, align 1, !tbaa !2432
  %63 = lshr i64 %54, 63
  %64 = trunc i64 %63 to i8
  store i8 %64, i8* %49, align 1, !tbaa !2432
  store i8 0, i8* %50, align 1, !tbaa !2432
  %65 = add i64 %40, -2899
  %66 = add i64 %40, 22
  %67 = add i64 %8, -64
  %68 = inttoptr i64 %67 to i64*
  store i64 %66, i64* %68, align 8
  store i64 %67, i64* %7, align 8, !tbaa !2428
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %65, i64* %69, align 8, !tbaa !2428
  %70 = tail call %struct.Memory* @sub_400508__init_proc_renamed_(%struct.State* nonnull %0, i64 %65, %struct.Memory* %2)
  %71 = load i64, i64* %RBP, align 8
  %72 = load i64, i64* %PC, align 8
  store i8 0, i8* %45, align 1, !tbaa !2433
  %73 = trunc i64 %71 to i32
  %74 = and i32 %73, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74) #10
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %46, align 1, !tbaa !2447
  %79 = icmp eq i64 %71, 0
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %48, align 1, !tbaa !2448
  %81 = lshr i64 %71, 63
  %82 = trunc i64 %81 to i8
  store i8 %82, i8* %49, align 1, !tbaa !2449
  store i8 0, i8* %50, align 1, !tbaa !2450
  store i8 0, i8* %47, align 1, !tbaa !2451
  %.v = select i1 %79, i64 37, i64 5
  %83 = add i64 %72, %.v
  store i64 %83, i64* %69, align 8, !tbaa !2428
  br i1 %79, label %block_401096, label %block_401076

block_401096:                                     ; preds = %block_401080, %block_401040
  %84 = phi i64 [ %83, %block_401040 ], [ %182, %block_401080 ]
  %MEMORY.0 = phi %struct.Memory* [ %70, %block_401040 ], [ %152, %block_401080 ]
  %85 = load i64, i64* %RSP, align 8
  %86 = add i64 %85, 8
  store i64 %86, i64* %RSP, align 8, !tbaa !2428
  %87 = icmp ugt i64 %85, -9
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %45, align 1, !tbaa !2433
  %89 = trunc i64 %86 to i32
  %90 = and i32 %89, 255
  %91 = tail call i32 @llvm.ctpop.i32(i32 %90) #10
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  %94 = xor i8 %93, 1
  store i8 %94, i8* %46, align 1, !tbaa !2447
  %95 = xor i64 %85, %86
  %96 = lshr i64 %95, 4
  %97 = trunc i64 %96 to i8
  %98 = and i8 %97, 1
  store i8 %98, i8* %47, align 1, !tbaa !2451
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

block_401076:                                     ; preds = %block_401040
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %45, align 1, !tbaa !2433
  store i8 1, i8* %46, align 1, !tbaa !2447
  store i8 1, i8* %48, align 1, !tbaa !2448
  store i8 0, i8* %49, align 1, !tbaa !2449
  store i8 0, i8* %50, align 1, !tbaa !2450
  store i8 0, i8* %47, align 1, !tbaa !2451
  %136 = add i64 %83, 10
  store i64 %136, i64* %PC, align 8
  br label %block_401080

block_401080:                                     ; preds = %block_401080, %block_401076
  %137 = phi i64 [ 0, %block_401076 ], [ %155, %block_401080 ]
  %138 = phi i64 [ %136, %block_401076 ], [ %182, %block_401080 ]
  %MEMORY.1 = phi %struct.Memory* [ %70, %block_401076 ], [ %152, %block_401080 ]
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
  store i8 %160, i8* %45, align 1, !tbaa !2433
  %161 = trunc i64 %158 to i32
  %162 = and i32 %161, 255
  %163 = tail call i32 @llvm.ctpop.i32(i32 %162) #10
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  %166 = xor i8 %165, 1
  store i8 %166, i8* %46, align 1, !tbaa !2447
  %167 = xor i64 %155, %157
  %168 = xor i64 %167, %158
  %169 = lshr i64 %168, 4
  %170 = trunc i64 %169 to i8
  %171 = and i8 %170, 1
  store i8 %171, i8* %47, align 1, !tbaa !2451
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
  br i1 %172, label %block_401096, label %block_401080
}

; Function Attrs: noinline
define %struct.Memory* @sub_400630___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400630:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 8) to i8*), align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4, align 1, !tbaa !2433
  %5 = zext i8 %3 to i32
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #10
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
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %12, i64 9, i64 32
  %19 = add i64 %.v, %1
  store i64 %19, i64* %18, align 8, !tbaa !2428
  br i1 %12, label %block_400639, label %block_400650

block_400650:                                     ; preds = %block_400630
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

block_400639:                                     ; preds = %block_400630
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
  %37 = tail call %struct.Memory* @sub_4005c0_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %33, %struct.Memory* %2)
  %38 = load i64, i64* %PC, align 8
  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 8) to i8*), align 8
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
define %struct.Memory* @sub_4010b0___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4010b0:
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
define %struct.Memory* @sub_4010b4__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4010b4:
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
  store i8 %18, i8* %6, align 1, !tbaa !2433
  %19 = trunc i64 %3 to i32
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20) #10
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  store i8 %24, i8* %7, align 1, !tbaa !2447
  %25 = xor i64 %4, %3
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i8
  %28 = and i8 %27, 1
  store i8 %28, i8* %8, align 1, !tbaa !2451
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
define %struct.Memory* @sub_4005b0__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4005b0:
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
define %struct.Memory* @sub_400580__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400580:
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !2428
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %RSI, align 8, !tbaa !2428
  store i64 %13, i64* %RDX, align 8, !tbaa !2428
  %16 = and i64 %13, -16
  store i8 0, i8* %3, align 1, !tbaa !2433
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 240
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #10
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  store i8 %22, i8* %4, align 1, !tbaa !2447
  %23 = icmp eq i64 %16, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %5, align 1, !tbaa !2448
  %25 = lshr i64 %13, 63
  %26 = trunc i64 %25 to i8
  store i8 %26, i8* %6, align 1, !tbaa !2449
  store i8 0, i8* %7, align 1, !tbaa !2450
  store i8 0, i8* %8, align 1, !tbaa !2451
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
  store i64 ptrtoint (void ()* @callback_sub_4010b0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401040___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %36 = add i64 %35, 27
  %37 = add i64 %16, -24
  %38 = inttoptr i64 %37 to i64*
  store i64 %36, i64* %38, align 8
  store i64 %37, i64* %11, align 8, !tbaa !2428
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %40 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %40, i64* %39, align 8, !tbaa !2428
  %41 = tail call fastcc %struct.Memory* @ext_6020b0___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %42 = load i64, i64* %PC, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %PC, align 8
  %44 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %43, %struct.Memory* %41)
  ret %struct.Memory* %44
}

; Function Attrs: noinline
define %struct.Memory* @sub_400b30_fourn(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400b30:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %5 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %12 = load i64, i64* %RBP, align 8
  %13 = add i64 %1, 1
  store i64 %13, i64* %PC, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8, !tbaa !2428
  %16 = add i64 %15, -8
  %17 = inttoptr i64 %16 to i64*
  store i64 %12, i64* %17, align 8
  %18 = load i64, i64* %PC, align 8
  store i64 %16, i64* %RBP, align 8, !tbaa !2428
  %19 = add i64 %15, -200
  store i64 %19, i64* %RSP, align 8, !tbaa !2428
  %20 = icmp ult i64 %16, 192
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1, !tbaa !2433
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #10
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1, !tbaa !2447
  %30 = xor i64 %16, %19
  %31 = lshr i64 %30, 4
  %32 = trunc i64 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1, !tbaa !2451
  %35 = icmp eq i64 %19, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1, !tbaa !2448
  %38 = lshr i64 %19, 63
  %39 = trunc i64 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1, !tbaa !2449
  %41 = lshr i64 %16, 63
  %42 = xor i64 %38, %41
  %43 = add nuw nsw i64 %42, %41
  %44 = icmp eq i64 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1, !tbaa !2450
  %47 = add i64 %15, -16
  %48 = load i64, i64* %RDI, align 8
  %49 = add i64 %18, 14
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %47 to i64*
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %RBP, align 8
  %52 = add i64 %51, -16
  %53 = load i64, i64* %RSI, align 8
  %54 = load i64, i64* %PC, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %RBP, align 8
  %58 = add i64 %57, -20
  %59 = load i32, i32* %EDX, align 4
  %60 = load i64, i64* %PC, align 8
  %61 = add i64 %60, 3
  store i64 %61, i64* %PC, align 8
  %62 = inttoptr i64 %58 to i32*
  store i32 %59, i32* %62, align 4
  %63 = load i64, i64* %RBP, align 8
  %64 = add i64 %63, -24
  %65 = load i32, i32* %ECX, align 4
  %66 = load i64, i64* %PC, align 8
  %67 = add i64 %66, 3
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %64 to i32*
  store i32 %65, i32* %68, align 4
  %69 = load i64, i64* %RBP, align 8
  %70 = add i64 %69, -96
  %71 = load i64, i64* %PC, align 8
  %72 = add i64 %71, 7
  store i64 %72, i64* %PC, align 8
  %73 = inttoptr i64 %70 to i32*
  store i32 1, i32* %73, align 4
  %74 = load i64, i64* %RBP, align 8
  %75 = add i64 %74, -72
  %76 = load i64, i64* %PC, align 8
  %77 = add i64 %76, 7
  store i64 %77, i64* %PC, align 8
  %78 = inttoptr i64 %75 to i32*
  store i32 1, i32* %78, align 4
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_400b57

block_400bef:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_400d31
  %80 = phi i64 [ %.pre7, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %1224, %block_400d31 ]
  %81 = load i64, i64* %RBP, align 8
  %82 = add i64 %81, -32
  %83 = add i64 %80, 3
  store i64 %83, i64* %PC, align 8
  %84 = inttoptr i64 %82 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = zext i32 %85 to i64
  store i64 %86, i64* %RAX, align 8, !tbaa !2428
  %87 = add i64 %81, -52
  %88 = add i64 %80, 6
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %87 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = sub i32 %85, %90
  %92 = icmp ult i32 %85, %90
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %22, align 1, !tbaa !2433
  %94 = and i32 %91, 255
  %95 = tail call i32 @llvm.ctpop.i32(i32 %94) #10
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  %98 = xor i8 %97, 1
  store i8 %98, i8* %29, align 1, !tbaa !2447
  %99 = xor i32 %90, %85
  %100 = xor i32 %99, %91
  %101 = lshr i32 %100, 4
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  store i8 %103, i8* %34, align 1, !tbaa !2451
  %104 = icmp eq i32 %91, 0
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %37, align 1, !tbaa !2448
  %106 = lshr i32 %91, 31
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %40, align 1, !tbaa !2449
  %108 = lshr i32 %85, 31
  %109 = lshr i32 %90, 31
  %110 = xor i32 %109, %108
  %111 = xor i32 %106, %108
  %112 = add nuw nsw i32 %111, %110
  %113 = icmp eq i32 %112, 2
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %46, align 1, !tbaa !2450
  %115 = icmp ne i8 %107, 0
  %116 = xor i1 %115, %113
  %.demorgan23 = or i1 %104, %116
  %.v24 = select i1 %.demorgan23, i64 12, i64 375
  %117 = add i64 %80, %.v24
  store i64 %117, i64* %79, align 8, !tbaa !2428
  br i1 %.demorgan23, label %block_400bfb, label %block_400d66

block_400e6c:                                     ; preds = %block_400e58
  %118 = add i64 %261, -28
  %119 = add i64 %260, 3
  store i64 %119, i64* %PC, align 8
  %120 = inttoptr i64 %118 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = zext i32 %121 to i64
  store i64 %122, i64* %RAX, align 8, !tbaa !2428
  %123 = add i64 %261, -32
  %124 = add i64 %260, 6
  store i64 %124, i64* %PC, align 8
  %125 = inttoptr i64 %123 to i32*
  store i32 %121, i32* %125, align 4
  %.pre21 = load i64, i64* %PC, align 8
  br label %block_400e72

block_401010:                                     ; preds = %block_400d6c
  %126 = add i64 %1773, -84
  %127 = add i64 %1809, 3
  store i64 %127, i64* %PC, align 8
  %128 = inttoptr i64 %126 to i32*
  %129 = load i32, i32* %128, align 4
  %130 = zext i32 %129 to i64
  store i64 %130, i64* %RAX, align 8, !tbaa !2428
  %131 = add i64 %1773, -88
  %132 = add i64 %1809, 7
  store i64 %132, i64* %PC, align 8
  %133 = inttoptr i64 %131 to i32*
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %129 to i64
  %136 = sext i32 %134 to i64
  %137 = mul nsw i64 %136, %135
  %138 = trunc i64 %137 to i32
  %139 = and i64 %137, 4294967295
  store i64 %139, i64* %RAX, align 8, !tbaa !2428
  %140 = shl i64 %137, 32
  %141 = ashr exact i64 %140, 32
  %142 = icmp ne i64 %141, %137
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %22, align 1, !tbaa !2433
  %144 = and i32 %138, 255
  %145 = tail call i32 @llvm.ctpop.i32(i32 %144) #10
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  %148 = xor i8 %147, 1
  store i8 %148, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %34, align 1, !tbaa !2451
  store i8 0, i8* %37, align 1, !tbaa !2448
  %149 = lshr i32 %138, 31
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %40, align 1, !tbaa !2449
  store i8 %143, i8* %46, align 1, !tbaa !2450
  %151 = trunc i64 %137 to i32
  %152 = add i64 %1809, 10
  store i64 %152, i64* %PC, align 8
  store i32 %151, i32* %133, align 4
  %153 = load i64, i64* %RBP, align 8
  %154 = add i64 %153, -72
  %155 = load i64, i64* %PC, align 8
  %156 = add i64 %155, 3
  store i64 %156, i64* %PC, align 8
  %157 = inttoptr i64 %154 to i32*
  %158 = load i32, i32* %157, align 4
  %159 = add i32 %158, -1
  %160 = zext i32 %159 to i64
  store i64 %160, i64* %RAX, align 8, !tbaa !2428
  %161 = icmp ne i32 %158, 0
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %22, align 1, !tbaa !2433
  %163 = and i32 %159, 255
  %164 = tail call i32 @llvm.ctpop.i32(i32 %163) #10
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %29, align 1, !tbaa !2447
  %168 = xor i32 %158, 16
  %169 = xor i32 %159, %168
  %170 = lshr i32 %169, 4
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  store i8 %172, i8* %34, align 1, !tbaa !2451
  %173 = icmp eq i32 %159, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %37, align 1, !tbaa !2448
  %175 = lshr i32 %159, 31
  %176 = trunc i32 %175 to i8
  store i8 %176, i8* %40, align 1, !tbaa !2449
  %177 = lshr i32 %158, 31
  %178 = xor i32 %175, %177
  %179 = xor i32 %175, 1
  %180 = add nuw nsw i32 %178, %179
  %181 = icmp eq i32 %180, 2
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %46, align 1, !tbaa !2450
  %183 = add i64 %155, 9
  store i64 %183, i64* %PC, align 8
  store i32 %159, i32* %157, align 4
  %184 = load i64, i64* %PC, align 8
  %185 = add i64 %184, -1171
  store i64 %185, i64* %79, align 8, !tbaa !2428
  br label %block_400b90

block_400cdd:                                     ; preds = %block_400c27
  %186 = add i64 %2133, -28
  %187 = add i64 %2169, 8
  store i64 %187, i64* %PC, align 8
  %188 = inttoptr i64 %186 to i32*
  %189 = load i32, i32* %188, align 4
  %190 = add i32 %189, 2
  %191 = zext i32 %190 to i64
  store i64 %191, i64* %RAX, align 8, !tbaa !2428
  %192 = icmp ugt i32 %189, -3
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %22, align 1, !tbaa !2433
  %194 = and i32 %190, 255
  %195 = tail call i32 @llvm.ctpop.i32(i32 %194) #10
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  %198 = xor i8 %197, 1
  store i8 %198, i8* %29, align 1, !tbaa !2447
  %199 = xor i32 %189, %190
  %200 = lshr i32 %199, 4
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  store i8 %202, i8* %34, align 1, !tbaa !2451
  %203 = icmp eq i32 %190, 0
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %37, align 1, !tbaa !2448
  %205 = lshr i32 %190, 31
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %40, align 1, !tbaa !2449
  %207 = lshr i32 %189, 31
  %208 = xor i32 %205, %207
  %209 = add nuw nsw i32 %208, %205
  %210 = icmp eq i32 %209, 2
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %46, align 1, !tbaa !2450
  %212 = add i64 %2169, 14
  store i64 %212, i64* %PC, align 8
  store i32 %190, i32* %188, align 4
  %213 = load i64, i64* %PC, align 8
  %214 = add i64 %213, -222
  store i64 %214, i64* %79, align 8, !tbaa !2428
  br label %block_400c0d

block_400e58:                                     ; preds = %block_400f80, %block_400e52
  %215 = phi i64 [ %2245, %block_400f80 ], [ %.pre20, %block_400e52 ]
  %216 = load i64, i64* %RBP, align 8
  %217 = add i64 %216, -28
  %218 = add i64 %215, 3
  store i64 %218, i64* %PC, align 8
  %219 = inttoptr i64 %217 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = zext i32 %220 to i64
  store i64 %221, i64* %RAX, align 8, !tbaa !2428
  %222 = add i64 %216, -36
  %223 = add i64 %215, 6
  store i64 %223, i64* %PC, align 8
  %224 = inttoptr i64 %222 to i32*
  %225 = load i32, i32* %224, align 4
  %226 = zext i32 %225 to i64
  store i64 %226, i64* %RCX, align 8, !tbaa !2428
  %227 = add i64 %216, -48
  %228 = add i64 %215, 9
  store i64 %228, i64* %PC, align 8
  %229 = inttoptr i64 %227 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = add i32 %230, %225
  %232 = add i32 %231, -2
  %233 = zext i32 %232 to i64
  store i64 %233, i64* %RCX, align 8, !tbaa !2428
  %234 = lshr i32 %232, 31
  %235 = sub i32 %220, %232
  %236 = icmp ult i32 %220, %232
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %22, align 1, !tbaa !2433
  %238 = and i32 %235, 255
  %239 = tail call i32 @llvm.ctpop.i32(i32 %238) #10
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  %242 = xor i8 %241, 1
  store i8 %242, i8* %29, align 1, !tbaa !2447
  %243 = xor i32 %232, %220
  %244 = xor i32 %243, %235
  %245 = lshr i32 %244, 4
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  store i8 %247, i8* %34, align 1, !tbaa !2451
  %248 = icmp eq i32 %235, 0
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %37, align 1, !tbaa !2448
  %250 = lshr i32 %235, 31
  %251 = trunc i32 %250 to i8
  store i8 %251, i8* %40, align 1, !tbaa !2449
  %252 = lshr i32 %220, 31
  %253 = xor i32 %234, %252
  %254 = xor i32 %250, %252
  %255 = add nuw nsw i32 %254, %253
  %256 = icmp eq i32 %255, 2
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %46, align 1, !tbaa !2450
  %258 = icmp ne i8 %251, 0
  %259 = xor i1 %258, %256
  %.demorgan44 = or i1 %248, %259
  %.v45 = select i1 %.demorgan44, i64 20, i64 315
  %260 = add i64 %215, %.v45
  store i64 %260, i64* %79, align 8, !tbaa !2428
  %261 = load i64, i64* %RBP, align 8
  br i1 %.demorgan44, label %block_400e6c, label %block_400f93

block_400e52:                                     ; preds = %block_400e46
  %262 = add i64 %350, 3
  store i64 %262, i64* %PC, align 8
  %263 = load i32, i32* %317, align 4
  %264 = zext i32 %263 to i64
  store i64 %264, i64* %RAX, align 8, !tbaa !2428
  %265 = add i64 %314, -28
  %266 = add i64 %350, 6
  store i64 %266, i64* %PC, align 8
  %267 = inttoptr i64 %265 to i32*
  store i32 %263, i32* %267, align 4
  %.pre20 = load i64, i64* %PC, align 8
  br label %block_400e58

block_400cfe:                                     ; preds = %block_400cf5, %block_400d36
  %268 = phi i64 [ %.pre11, %block_400cf5 ], [ %809, %block_400d36 ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %22, align 1, !tbaa !2433
  store i8 1, i8* %29, align 1, !tbaa !2447
  store i8 1, i8* %37, align 1, !tbaa !2448
  store i8 0, i8* %40, align 1, !tbaa !2449
  store i8 0, i8* %46, align 1, !tbaa !2450
  store i8 0, i8* %34, align 1, !tbaa !2451
  store i8 0, i8* %CL, align 1, !tbaa !2432
  %269 = load i64, i64* %RBP, align 8
  %270 = add i64 %269, -68
  %271 = add i64 %268, 7
  store i64 %271, i64* %PC, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = zext i32 %273 to i64
  store i64 %274, i64* %RAX, align 8, !tbaa !2428
  %275 = add i64 %269, -48
  %276 = add i64 %268, 10
  store i64 %276, i64* %PC, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = sub i32 %273, %278
  %280 = icmp ult i32 %273, %278
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %22, align 1, !tbaa !2433
  %282 = and i32 %279, 255
  %283 = tail call i32 @llvm.ctpop.i32(i32 %282) #10
  %284 = trunc i32 %283 to i8
  %285 = and i8 %284, 1
  %286 = xor i8 %285, 1
  store i8 %286, i8* %29, align 1, !tbaa !2447
  %287 = xor i32 %278, %273
  %288 = xor i32 %287, %279
  %289 = lshr i32 %288, 4
  %290 = trunc i32 %289 to i8
  %291 = and i8 %290, 1
  store i8 %291, i8* %34, align 1, !tbaa !2451
  %292 = icmp eq i32 %279, 0
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %37, align 1, !tbaa !2448
  %294 = lshr i32 %279, 31
  %295 = trunc i32 %294 to i8
  store i8 %295, i8* %40, align 1, !tbaa !2449
  %296 = lshr i32 %273, 31
  %297 = lshr i32 %278, 31
  %298 = xor i32 %297, %296
  %299 = xor i32 %294, %296
  %300 = add nuw nsw i32 %299, %298
  %301 = icmp eq i32 %300, 2
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %46, align 1, !tbaa !2450
  %303 = add i64 %269, -165
  %304 = add i64 %268, 16
  store i64 %304, i64* %PC, align 8
  %305 = inttoptr i64 %303 to i8*
  store i8 0, i8* %305, align 1
  %306 = load i64, i64* %PC, align 8
  %307 = load i8, i8* %40, align 1, !tbaa !2449
  %308 = icmp ne i8 %307, 0
  %309 = load i8, i8* %46, align 1, !tbaa !2450
  %310 = icmp ne i8 %309, 0
  %311 = xor i1 %308, %310
  %.v30 = select i1 %311, i64 21, i64 6
  %312 = add i64 %306, %.v30
  store i64 %312, i64* %79, align 8, !tbaa !2428
  br i1 %311, label %block_400d23, label %block_400d14

block_400e46:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit, %block_400f93
  %313 = phi i64 [ %.pre19, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ], [ %1653, %block_400f93 ]
  %314 = load i64, i64* %RBP, align 8
  %315 = add i64 %314, -36
  %316 = add i64 %313, 3
  store i64 %316, i64* %PC, align 8
  %317 = inttoptr i64 %315 to i32*
  %318 = load i32, i32* %317, align 4
  %319 = zext i32 %318 to i64
  store i64 %319, i64* %RAX, align 8, !tbaa !2428
  %320 = add i64 %314, -60
  %321 = add i64 %313, 6
  store i64 %321, i64* %PC, align 8
  %322 = inttoptr i64 %320 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = sub i32 %318, %323
  %325 = icmp ult i32 %318, %323
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %22, align 1, !tbaa !2433
  %327 = and i32 %324, 255
  %328 = tail call i32 @llvm.ctpop.i32(i32 %327) #10
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  %331 = xor i8 %330, 1
  store i8 %331, i8* %29, align 1, !tbaa !2447
  %332 = xor i32 %323, %318
  %333 = xor i32 %332, %324
  %334 = lshr i32 %333, 4
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  store i8 %336, i8* %34, align 1, !tbaa !2451
  %337 = icmp eq i32 %324, 0
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %37, align 1, !tbaa !2448
  %339 = lshr i32 %324, 31
  %340 = trunc i32 %339 to i8
  store i8 %340, i8* %40, align 1, !tbaa !2449
  %341 = lshr i32 %318, 31
  %342 = lshr i32 %323, 31
  %343 = xor i32 %342, %341
  %344 = xor i32 %339, %341
  %345 = add nuw nsw i32 %344, %343
  %346 = icmp eq i32 %345, 2
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %46, align 1, !tbaa !2450
  %348 = icmp ne i8 %340, 0
  %349 = xor i1 %348, %346
  %.demorgan42 = or i1 %337, %349
  %.v43 = select i1 %.demorgan42, i64 12, i64 447
  %350 = add i64 %313, %.v43
  store i64 %350, i64* %79, align 8, !tbaa !2428
  br i1 %.demorgan42, label %block_400e52, label %block_401005

block_400e7e:                                     ; preds = %block_400e72
  %351 = add i64 %1525, 3
  store i64 %351, i64* %PC, align 8
  %352 = load i32, i32* %1492, align 4
  %353 = zext i32 %352 to i64
  store i64 %353, i64* %RAX, align 8, !tbaa !2428
  %354 = add i64 %1489, -76
  %355 = add i64 %1525, 6
  store i64 %355, i64* %PC, align 8
  %356 = inttoptr i64 %354 to i32*
  store i32 %352, i32* %356, align 4
  %357 = load i64, i64* %RBP, align 8
  %358 = add i64 %357, -76
  %359 = load i64, i64* %PC, align 8
  %360 = add i64 %359, 3
  store i64 %360, i64* %PC, align 8
  %361 = inttoptr i64 %358 to i32*
  %362 = load i32, i32* %361, align 4
  %363 = zext i32 %362 to i64
  store i64 %363, i64* %RAX, align 8, !tbaa !2428
  %364 = add i64 %357, -60
  %365 = add i64 %359, 6
  store i64 %365, i64* %PC, align 8
  %366 = inttoptr i64 %364 to i32*
  %367 = load i32, i32* %366, align 4
  %368 = add i32 %367, %362
  %369 = zext i32 %368 to i64
  store i64 %369, i64* %RAX, align 8, !tbaa !2428
  %370 = icmp ult i32 %368, %362
  %371 = icmp ult i32 %368, %367
  %372 = or i1 %370, %371
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %22, align 1, !tbaa !2433
  %374 = and i32 %368, 255
  %375 = tail call i32 @llvm.ctpop.i32(i32 %374) #10
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  %378 = xor i8 %377, 1
  store i8 %378, i8* %29, align 1, !tbaa !2447
  %379 = xor i32 %367, %362
  %380 = xor i32 %379, %368
  %381 = lshr i32 %380, 4
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  store i8 %383, i8* %34, align 1, !tbaa !2451
  %384 = icmp eq i32 %368, 0
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %37, align 1, !tbaa !2448
  %386 = lshr i32 %368, 31
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %40, align 1, !tbaa !2449
  %388 = lshr i32 %362, 31
  %389 = lshr i32 %367, 31
  %390 = xor i32 %386, %388
  %391 = xor i32 %386, %389
  %392 = add nuw nsw i32 %390, %391
  %393 = icmp eq i32 %392, 2
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %46, align 1, !tbaa !2450
  %395 = add i64 %357, -80
  %396 = add i64 %359, 9
  store i64 %396, i64* %PC, align 8
  %397 = inttoptr i64 %395 to i32*
  store i32 %368, i32* %397, align 4
  %398 = load i64, i64* %RBP, align 8
  %399 = add i64 %398, -152
  %400 = load i64, i64* %PC, align 8
  %401 = add i64 %400, 8
  store i64 %401, i64* %PC, align 8
  %402 = inttoptr i64 %399 to double*
  %403 = load double, double* %402, align 8
  store double %403, double* %2189, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2191, align 1, !tbaa !2452
  %404 = add i64 %398, -8
  %405 = add i64 %400, 12
  store i64 %405, i64* %PC, align 8
  %406 = inttoptr i64 %404 to i64*
  %407 = load i64, i64* %406, align 8
  store i64 %407, i64* %RCX, align 8, !tbaa !2428
  %408 = add i64 %398, -80
  %409 = add i64 %400, 16
  store i64 %409, i64* %PC, align 8
  %410 = inttoptr i64 %408 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = sext i32 %411 to i64
  store i64 %412, i64* %RDX, align 8, !tbaa !2428
  %413 = shl nsw i64 %412, 3
  %414 = add i64 %413, %407
  %415 = add i64 %400, 21
  store i64 %415, i64* %PC, align 8
  %416 = inttoptr i64 %414 to double*
  %417 = load double, double* %416, align 8
  %418 = fmul double %403, %417
  store double %418, double* %2189, align 1, !tbaa !2452
  store i64 0, i64* %2190, align 1, !tbaa !2452
  %419 = add i64 %398, -128
  %420 = add i64 %400, 26
  store i64 %420, i64* %PC, align 8
  %421 = inttoptr i64 %419 to double*
  %422 = load double, double* %421, align 8
  store double %422, double* %2198, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2200, align 1, !tbaa !2452
  %423 = add i64 %400, 30
  store i64 %423, i64* %PC, align 8
  %424 = load i64, i64* %406, align 8
  store i64 %424, i64* %RCX, align 8, !tbaa !2428
  %425 = add i64 %400, 33
  store i64 %425, i64* %PC, align 8
  %426 = load i32, i32* %410, align 4
  %427 = add i32 %426, 1
  %428 = zext i32 %427 to i64
  store i64 %428, i64* %RAX, align 8, !tbaa !2428
  %429 = icmp eq i32 %426, -1
  %430 = icmp eq i32 %427, 0
  %431 = or i1 %429, %430
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %22, align 1, !tbaa !2433
  %433 = and i32 %427, 255
  %434 = tail call i32 @llvm.ctpop.i32(i32 %433) #10
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  store i8 %437, i8* %29, align 1, !tbaa !2447
  %438 = xor i32 %426, %427
  %439 = lshr i32 %438, 4
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  store i8 %441, i8* %34, align 1, !tbaa !2451
  %442 = icmp eq i32 %427, 0
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %37, align 1, !tbaa !2448
  %444 = lshr i32 %427, 31
  %445 = trunc i32 %444 to i8
  store i8 %445, i8* %40, align 1, !tbaa !2449
  %446 = lshr i32 %426, 31
  %447 = xor i32 %444, %446
  %448 = add nuw nsw i32 %447, %444
  %449 = icmp eq i32 %448, 2
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %46, align 1, !tbaa !2450
  %451 = sext i32 %427 to i64
  store i64 %451, i64* %RDX, align 8, !tbaa !2428
  %452 = shl nsw i64 %451, 3
  %453 = add i64 %452, %424
  %454 = add i64 %400, 44
  store i64 %454, i64* %PC, align 8
  %455 = inttoptr i64 %453 to double*
  %456 = load double, double* %455, align 8
  %457 = fmul double %422, %456
  store double %457, double* %2198, align 1, !tbaa !2452
  store i64 0, i64* %2199, align 1, !tbaa !2452
  %458 = fsub double %418, %457
  store double %458, double* %2189, align 1, !tbaa !2452
  store i64 0, i64* %2190, align 1, !tbaa !2452
  %459 = load i64, i64* %RBP, align 8
  %460 = add i64 %459, -112
  %461 = add i64 %400, 53
  store i64 %461, i64* %PC, align 8
  %462 = inttoptr i64 %460 to double*
  store double %458, double* %462, align 8
  %463 = load i64, i64* %RBP, align 8
  %464 = add i64 %463, -152
  %465 = load i64, i64* %PC, align 8
  %466 = add i64 %465, 8
  store i64 %466, i64* %PC, align 8
  %467 = inttoptr i64 %464 to double*
  %468 = load double, double* %467, align 8
  store double %468, double* %2189, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2191, align 1, !tbaa !2452
  %469 = add i64 %463, -8
  %470 = add i64 %465, 12
  store i64 %470, i64* %PC, align 8
  %471 = inttoptr i64 %469 to i64*
  %472 = load i64, i64* %471, align 8
  store i64 %472, i64* %RCX, align 8, !tbaa !2428
  %473 = add i64 %463, -80
  %474 = add i64 %465, 15
  store i64 %474, i64* %PC, align 8
  %475 = inttoptr i64 %473 to i32*
  %476 = load i32, i32* %475, align 4
  %477 = add i32 %476, 1
  %478 = zext i32 %477 to i64
  store i64 %478, i64* %RAX, align 8, !tbaa !2428
  %479 = icmp eq i32 %476, -1
  %480 = icmp eq i32 %477, 0
  %481 = or i1 %479, %480
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %22, align 1, !tbaa !2433
  %483 = and i32 %477, 255
  %484 = tail call i32 @llvm.ctpop.i32(i32 %483) #10
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  %487 = xor i8 %486, 1
  store i8 %487, i8* %29, align 1, !tbaa !2447
  %488 = xor i32 %476, %477
  %489 = lshr i32 %488, 4
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  store i8 %491, i8* %34, align 1, !tbaa !2451
  %492 = icmp eq i32 %477, 0
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %37, align 1, !tbaa !2448
  %494 = lshr i32 %477, 31
  %495 = trunc i32 %494 to i8
  store i8 %495, i8* %40, align 1, !tbaa !2449
  %496 = lshr i32 %476, 31
  %497 = xor i32 %494, %496
  %498 = add nuw nsw i32 %497, %494
  %499 = icmp eq i32 %498, 2
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %46, align 1, !tbaa !2450
  %501 = sext i32 %477 to i64
  store i64 %501, i64* %RDX, align 8, !tbaa !2428
  %502 = shl nsw i64 %501, 3
  %503 = add i64 %502, %472
  %504 = add i64 %465, 26
  store i64 %504, i64* %PC, align 8
  %505 = inttoptr i64 %503 to double*
  %506 = load double, double* %505, align 8
  %507 = fmul double %468, %506
  store double %507, double* %2189, align 1, !tbaa !2452
  store i64 0, i64* %2190, align 1, !tbaa !2452
  %508 = add i64 %463, -128
  %509 = add i64 %465, 31
  store i64 %509, i64* %PC, align 8
  %510 = inttoptr i64 %508 to double*
  %511 = load double, double* %510, align 8
  store double %511, double* %2198, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2200, align 1, !tbaa !2452
  %512 = add i64 %465, 35
  store i64 %512, i64* %PC, align 8
  %513 = load i64, i64* %471, align 8
  store i64 %513, i64* %RCX, align 8, !tbaa !2428
  %514 = add i64 %465, 39
  store i64 %514, i64* %PC, align 8
  %515 = load i32, i32* %475, align 4
  %516 = sext i32 %515 to i64
  store i64 %516, i64* %RDX, align 8, !tbaa !2428
  %517 = shl nsw i64 %516, 3
  %518 = add i64 %517, %513
  %519 = add i64 %465, 44
  store i64 %519, i64* %PC, align 8
  %520 = inttoptr i64 %518 to double*
  %521 = load double, double* %520, align 8
  %522 = fmul double %511, %521
  store double %522, double* %2198, align 1, !tbaa !2452
  store i64 0, i64* %2199, align 1, !tbaa !2452
  %523 = fadd double %507, %522
  store double %523, double* %2189, align 1, !tbaa !2452
  store i64 0, i64* %2190, align 1, !tbaa !2452
  %524 = load i64, i64* %RBP, align 8
  %525 = add i64 %524, -104
  %526 = add i64 %465, 53
  store i64 %526, i64* %PC, align 8
  %527 = inttoptr i64 %525 to double*
  store double %523, double* %527, align 8
  %528 = load i64, i64* %RBP, align 8
  %529 = add i64 %528, -8
  %530 = load i64, i64* %PC, align 8
  %531 = add i64 %530, 4
  store i64 %531, i64* %PC, align 8
  %532 = inttoptr i64 %529 to i64*
  %533 = load i64, i64* %532, align 8
  store i64 %533, i64* %RCX, align 8, !tbaa !2428
  %534 = add i64 %528, -76
  %535 = add i64 %530, 8
  store i64 %535, i64* %PC, align 8
  %536 = inttoptr i64 %534 to i32*
  %537 = load i32, i32* %536, align 4
  %538 = sext i32 %537 to i64
  store i64 %538, i64* %RDX, align 8, !tbaa !2428
  %539 = shl nsw i64 %538, 3
  %540 = add i64 %539, %533
  %541 = add i64 %530, 13
  store i64 %541, i64* %PC, align 8
  %542 = inttoptr i64 %540 to double*
  %543 = load double, double* %542, align 8
  store double %543, double* %2189, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2191, align 1, !tbaa !2452
  %544 = add i64 %528, -112
  %545 = add i64 %530, 18
  store i64 %545, i64* %PC, align 8
  %546 = inttoptr i64 %544 to double*
  %547 = load double, double* %546, align 8
  %548 = fsub double %543, %547
  store double %548, double* %2189, align 1, !tbaa !2452
  store i64 0, i64* %2190, align 1, !tbaa !2452
  %549 = add i64 %530, 22
  store i64 %549, i64* %PC, align 8
  %550 = load i64, i64* %532, align 8
  store i64 %550, i64* %RCX, align 8, !tbaa !2428
  %551 = add i64 %528, -80
  %552 = add i64 %530, 26
  store i64 %552, i64* %PC, align 8
  %553 = inttoptr i64 %551 to i32*
  %554 = load i32, i32* %553, align 4
  %555 = sext i32 %554 to i64
  store i64 %555, i64* %RDX, align 8, !tbaa !2428
  %556 = shl nsw i64 %555, 3
  %557 = add i64 %556, %550
  %558 = add i64 %530, 31
  store i64 %558, i64* %PC, align 8
  %559 = inttoptr i64 %557 to double*
  store double %548, double* %559, align 8
  %560 = load i64, i64* %RBP, align 8
  %561 = add i64 %560, -8
  %562 = load i64, i64* %PC, align 8
  %563 = add i64 %562, 4
  store i64 %563, i64* %PC, align 8
  %564 = inttoptr i64 %561 to i64*
  %565 = load i64, i64* %564, align 8
  store i64 %565, i64* %RCX, align 8, !tbaa !2428
  %566 = add i64 %560, -76
  %567 = add i64 %562, 7
  store i64 %567, i64* %PC, align 8
  %568 = inttoptr i64 %566 to i32*
  %569 = load i32, i32* %568, align 4
  %570 = add i32 %569, 1
  %571 = zext i32 %570 to i64
  store i64 %571, i64* %RAX, align 8, !tbaa !2428
  %572 = icmp eq i32 %569, -1
  %573 = icmp eq i32 %570, 0
  %574 = or i1 %572, %573
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %22, align 1, !tbaa !2433
  %576 = and i32 %570, 255
  %577 = tail call i32 @llvm.ctpop.i32(i32 %576) #10
  %578 = trunc i32 %577 to i8
  %579 = and i8 %578, 1
  %580 = xor i8 %579, 1
  store i8 %580, i8* %29, align 1, !tbaa !2447
  %581 = xor i32 %569, %570
  %582 = lshr i32 %581, 4
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  store i8 %584, i8* %34, align 1, !tbaa !2451
  %585 = icmp eq i32 %570, 0
  %586 = zext i1 %585 to i8
  store i8 %586, i8* %37, align 1, !tbaa !2448
  %587 = lshr i32 %570, 31
  %588 = trunc i32 %587 to i8
  store i8 %588, i8* %40, align 1, !tbaa !2449
  %589 = lshr i32 %569, 31
  %590 = xor i32 %587, %589
  %591 = add nuw nsw i32 %590, %587
  %592 = icmp eq i32 %591, 2
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %46, align 1, !tbaa !2450
  %594 = sext i32 %570 to i64
  store i64 %594, i64* %RDX, align 8, !tbaa !2428
  %595 = shl nsw i64 %594, 3
  %596 = add i64 %595, %565
  %597 = add i64 %562, 18
  store i64 %597, i64* %PC, align 8
  %598 = inttoptr i64 %596 to double*
  %599 = load double, double* %598, align 8
  store double %599, double* %2189, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2191, align 1, !tbaa !2452
  %600 = add i64 %560, -104
  %601 = add i64 %562, 23
  store i64 %601, i64* %PC, align 8
  %602 = inttoptr i64 %600 to double*
  %603 = load double, double* %602, align 8
  %604 = fsub double %599, %603
  store double %604, double* %2189, align 1, !tbaa !2452
  store i64 0, i64* %2190, align 1, !tbaa !2452
  %605 = add i64 %562, 27
  store i64 %605, i64* %PC, align 8
  %606 = load i64, i64* %564, align 8
  store i64 %606, i64* %RCX, align 8, !tbaa !2428
  %607 = add i64 %560, -80
  %608 = add i64 %562, 30
  store i64 %608, i64* %PC, align 8
  %609 = inttoptr i64 %607 to i32*
  %610 = load i32, i32* %609, align 4
  %611 = add i32 %610, 1
  %612 = zext i32 %611 to i64
  store i64 %612, i64* %RAX, align 8, !tbaa !2428
  %613 = icmp eq i32 %610, -1
  %614 = icmp eq i32 %611, 0
  %615 = or i1 %613, %614
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %22, align 1, !tbaa !2433
  %617 = and i32 %611, 255
  %618 = tail call i32 @llvm.ctpop.i32(i32 %617) #10
  %619 = trunc i32 %618 to i8
  %620 = and i8 %619, 1
  %621 = xor i8 %620, 1
  store i8 %621, i8* %29, align 1, !tbaa !2447
  %622 = xor i32 %610, %611
  %623 = lshr i32 %622, 4
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  store i8 %625, i8* %34, align 1, !tbaa !2451
  %626 = icmp eq i32 %611, 0
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %37, align 1, !tbaa !2448
  %628 = lshr i32 %611, 31
  %629 = trunc i32 %628 to i8
  store i8 %629, i8* %40, align 1, !tbaa !2449
  %630 = lshr i32 %610, 31
  %631 = xor i32 %628, %630
  %632 = add nuw nsw i32 %631, %628
  %633 = icmp eq i32 %632, 2
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %46, align 1, !tbaa !2450
  %635 = sext i32 %611 to i64
  store i64 %635, i64* %RDX, align 8, !tbaa !2428
  %636 = shl nsw i64 %635, 3
  %637 = add i64 %636, %606
  %638 = add i64 %562, 41
  store i64 %638, i64* %PC, align 8
  %639 = inttoptr i64 %637 to double*
  store double %604, double* %639, align 8
  %640 = load i64, i64* %RBP, align 8
  %641 = add i64 %640, -112
  %642 = load i64, i64* %PC, align 8
  %643 = add i64 %642, 5
  store i64 %643, i64* %PC, align 8
  %644 = inttoptr i64 %641 to double*
  %645 = load double, double* %644, align 8
  store double %645, double* %2189, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2191, align 1, !tbaa !2452
  %646 = add i64 %640, -8
  %647 = add i64 %642, 9
  store i64 %647, i64* %PC, align 8
  %648 = inttoptr i64 %646 to i64*
  %649 = load i64, i64* %648, align 8
  store i64 %649, i64* %RCX, align 8, !tbaa !2428
  %650 = add i64 %640, -76
  %651 = add i64 %642, 13
  store i64 %651, i64* %PC, align 8
  %652 = inttoptr i64 %650 to i32*
  %653 = load i32, i32* %652, align 4
  %654 = sext i32 %653 to i64
  store i64 %654, i64* %RDX, align 8, !tbaa !2428
  %655 = shl nsw i64 %654, 3
  %656 = add i64 %655, %649
  %657 = add i64 %642, 18
  store i64 %657, i64* %PC, align 8
  %658 = inttoptr i64 %656 to double*
  %659 = load double, double* %658, align 8
  %660 = fadd double %645, %659
  store double %660, double* %2189, align 1, !tbaa !2452
  store i64 0, i64* %2190, align 1, !tbaa !2452
  %661 = add i64 %642, 23
  store i64 %661, i64* %PC, align 8
  store double %660, double* %658, align 8
  %662 = load i64, i64* %RBP, align 8
  %663 = add i64 %662, -104
  %664 = load i64, i64* %PC, align 8
  %665 = add i64 %664, 5
  store i64 %665, i64* %PC, align 8
  %666 = inttoptr i64 %663 to double*
  %667 = load double, double* %666, align 8
  store double %667, double* %2189, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2191, align 1, !tbaa !2452
  %668 = add i64 %662, -8
  %669 = add i64 %664, 9
  store i64 %669, i64* %PC, align 8
  %670 = inttoptr i64 %668 to i64*
  %671 = load i64, i64* %670, align 8
  store i64 %671, i64* %RCX, align 8, !tbaa !2428
  %672 = add i64 %662, -76
  %673 = add i64 %664, 12
  store i64 %673, i64* %PC, align 8
  %674 = inttoptr i64 %672 to i32*
  %675 = load i32, i32* %674, align 4
  %676 = add i32 %675, 1
  %677 = zext i32 %676 to i64
  store i64 %677, i64* %RAX, align 8, !tbaa !2428
  %678 = icmp eq i32 %675, -1
  %679 = icmp eq i32 %676, 0
  %680 = or i1 %678, %679
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %22, align 1, !tbaa !2433
  %682 = and i32 %676, 255
  %683 = tail call i32 @llvm.ctpop.i32(i32 %682) #10
  %684 = trunc i32 %683 to i8
  %685 = and i8 %684, 1
  %686 = xor i8 %685, 1
  store i8 %686, i8* %29, align 1, !tbaa !2447
  %687 = xor i32 %675, %676
  %688 = lshr i32 %687, 4
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  store i8 %690, i8* %34, align 1, !tbaa !2451
  %691 = icmp eq i32 %676, 0
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %37, align 1, !tbaa !2448
  %693 = lshr i32 %676, 31
  %694 = trunc i32 %693 to i8
  store i8 %694, i8* %40, align 1, !tbaa !2449
  %695 = lshr i32 %675, 31
  %696 = xor i32 %693, %695
  %697 = add nuw nsw i32 %696, %693
  %698 = icmp eq i32 %697, 2
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %46, align 1, !tbaa !2450
  %700 = sext i32 %676 to i64
  store i64 %700, i64* %RDX, align 8, !tbaa !2428
  %701 = shl nsw i64 %700, 3
  %702 = add i64 %701, %671
  %703 = add i64 %664, 23
  store i64 %703, i64* %PC, align 8
  %704 = inttoptr i64 %702 to double*
  %705 = load double, double* %704, align 8
  %706 = fadd double %667, %705
  store double %706, double* %2189, align 1, !tbaa !2452
  store i64 0, i64* %2190, align 1, !tbaa !2452
  %707 = add i64 %664, 28
  store i64 %707, i64* %PC, align 8
  store double %706, double* %704, align 8
  %708 = load i64, i64* %RBP, align 8
  %709 = add i64 %708, -64
  %710 = load i64, i64* %PC, align 8
  %711 = add i64 %710, 3
  store i64 %711, i64* %PC, align 8
  %712 = inttoptr i64 %709 to i32*
  %713 = load i32, i32* %712, align 4
  %714 = zext i32 %713 to i64
  store i64 %714, i64* %RAX, align 8, !tbaa !2428
  %715 = add i64 %708, -32
  %716 = add i64 %710, 6
  store i64 %716, i64* %PC, align 8
  %717 = inttoptr i64 %715 to i32*
  %718 = load i32, i32* %717, align 4
  %719 = add i32 %718, %713
  %720 = zext i32 %719 to i64
  store i64 %720, i64* %RAX, align 8, !tbaa !2428
  %721 = icmp ult i32 %719, %713
  %722 = icmp ult i32 %719, %718
  %723 = or i1 %721, %722
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %22, align 1, !tbaa !2433
  %725 = and i32 %719, 255
  %726 = tail call i32 @llvm.ctpop.i32(i32 %725) #10
  %727 = trunc i32 %726 to i8
  %728 = and i8 %727, 1
  %729 = xor i8 %728, 1
  store i8 %729, i8* %29, align 1, !tbaa !2447
  %730 = xor i32 %718, %713
  %731 = xor i32 %730, %719
  %732 = lshr i32 %731, 4
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  store i8 %734, i8* %34, align 1, !tbaa !2451
  %735 = icmp eq i32 %719, 0
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %37, align 1, !tbaa !2448
  %737 = lshr i32 %719, 31
  %738 = trunc i32 %737 to i8
  store i8 %738, i8* %40, align 1, !tbaa !2449
  %739 = lshr i32 %713, 31
  %740 = lshr i32 %718, 31
  %741 = xor i32 %737, %739
  %742 = xor i32 %737, %740
  %743 = add nuw nsw i32 %741, %742
  %744 = icmp eq i32 %743, 2
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %46, align 1, !tbaa !2450
  %746 = add i64 %710, 9
  store i64 %746, i64* %PC, align 8
  store i32 %719, i32* %717, align 4
  %747 = load i64, i64* %PC, align 8
  %748 = add i64 %747, -265
  store i64 %748, i64* %79, align 8, !tbaa !2428
  br label %block_400e72

block_400d36:                                     ; preds = %block_400d23
  %749 = add i64 %1247, 3
  store i64 %749, i64* %PC, align 8
  %750 = inttoptr i64 %1248 to i32*
  %751 = load i32, i32* %750, align 4
  %752 = zext i32 %751 to i64
  store i64 %752, i64* %RAX, align 8, !tbaa !2428
  %753 = add i64 %1235, -40
  %754 = add i64 %1247, 6
  store i64 %754, i64* %PC, align 8
  %755 = inttoptr i64 %753 to i32*
  %756 = load i32, i32* %755, align 4
  %757 = sub i32 %756, %751
  %758 = zext i32 %757 to i64
  store i64 %758, i64* %RCX, align 8, !tbaa !2428
  %759 = icmp ult i32 %756, %751
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %22, align 1, !tbaa !2433
  %761 = and i32 %757, 255
  %762 = tail call i32 @llvm.ctpop.i32(i32 %761) #10
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  %765 = xor i8 %764, 1
  store i8 %765, i8* %29, align 1, !tbaa !2447
  %766 = xor i32 %751, %756
  %767 = xor i32 %766, %757
  %768 = lshr i32 %767, 4
  %769 = trunc i32 %768 to i8
  %770 = and i8 %769, 1
  store i8 %770, i8* %34, align 1, !tbaa !2451
  %771 = icmp eq i32 %757, 0
  %772 = zext i1 %771 to i8
  store i8 %772, i8* %37, align 1, !tbaa !2448
  %773 = lshr i32 %757, 31
  %774 = trunc i32 %773 to i8
  store i8 %774, i8* %40, align 1, !tbaa !2449
  %775 = lshr i32 %756, 31
  %776 = lshr i32 %751, 31
  %777 = xor i32 %776, %775
  %778 = xor i32 %773, %775
  %779 = add nuw nsw i32 %778, %777
  %780 = icmp eq i32 %779, 2
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %46, align 1, !tbaa !2450
  %782 = add i64 %1247, 11
  store i64 %782, i64* %PC, align 8
  store i32 %757, i32* %755, align 4
  %783 = load i64, i64* %RBP, align 8
  %784 = add i64 %783, -68
  %785 = load i64, i64* %PC, align 8
  %786 = add i64 %785, 3
  store i64 %786, i64* %PC, align 8
  %787 = inttoptr i64 %784 to i32*
  %788 = load i32, i32* %787, align 4
  %789 = zext i32 %788 to i64
  %790 = shl nuw i64 %789, 32
  %791 = ashr i64 %790, 33
  %792 = trunc i32 %788 to i8
  %793 = and i8 %792, 1
  %794 = trunc i64 %791 to i32
  %795 = and i64 %791, 4294967295
  store i64 %795, i64* %RAX, align 8, !tbaa !2428
  store i8 %793, i8* %22, align 1, !tbaa !2432
  %796 = and i32 %794, 255
  %797 = tail call i32 @llvm.ctpop.i32(i32 %796) #10
  %798 = trunc i32 %797 to i8
  %799 = and i8 %798, 1
  %800 = xor i8 %799, 1
  store i8 %800, i8* %29, align 1, !tbaa !2432
  store i8 0, i8* %34, align 1, !tbaa !2432
  %801 = icmp eq i32 %794, 0
  %802 = zext i1 %801 to i8
  store i8 %802, i8* %37, align 1, !tbaa !2432
  %803 = lshr i64 %791, 31
  %804 = trunc i64 %803 to i8
  %805 = and i8 %804, 1
  store i8 %805, i8* %40, align 1, !tbaa !2432
  store i8 0, i8* %46, align 1, !tbaa !2432
  %806 = trunc i64 %791 to i32
  %807 = add i64 %785, 9
  store i64 %807, i64* %PC, align 8
  store i32 %806, i32* %787, align 4
  %808 = load i64, i64* %PC, align 8
  %809 = add i64 %808, -76
  store i64 %809, i64* %79, align 8, !tbaa !2428
  br label %block_400cfe

block_400c33:                                     ; preds = %block_400c27
  %810 = add i64 %2133, -40
  %811 = add i64 %2169, 3
  store i64 %811, i64* %PC, align 8
  %812 = inttoptr i64 %810 to i32*
  %813 = load i32, i32* %812, align 4
  %814 = zext i32 %813 to i64
  store i64 %814, i64* %RAX, align 8, !tbaa !2428
  %815 = add i64 %2169, 6
  store i64 %815, i64* %PC, align 8
  %816 = load i32, i32* %2136, align 4
  %817 = add i32 %816, %813
  %818 = zext i32 %817 to i64
  store i64 %818, i64* %RAX, align 8, !tbaa !2428
  %819 = icmp ult i32 %817, %813
  %820 = icmp ult i32 %817, %816
  %821 = or i1 %819, %820
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %22, align 1, !tbaa !2433
  %823 = and i32 %817, 255
  %824 = tail call i32 @llvm.ctpop.i32(i32 %823) #10
  %825 = trunc i32 %824 to i8
  %826 = and i8 %825, 1
  %827 = xor i8 %826, 1
  store i8 %827, i8* %29, align 1, !tbaa !2447
  %828 = xor i32 %816, %813
  %829 = xor i32 %828, %817
  %830 = lshr i32 %829, 4
  %831 = trunc i32 %830 to i8
  %832 = and i8 %831, 1
  store i8 %832, i8* %34, align 1, !tbaa !2451
  %833 = icmp eq i32 %817, 0
  %834 = zext i1 %833 to i8
  store i8 %834, i8* %37, align 1, !tbaa !2448
  %835 = lshr i32 %817, 31
  %836 = trunc i32 %835 to i8
  store i8 %836, i8* %40, align 1, !tbaa !2449
  %837 = lshr i32 %813, 31
  %838 = lshr i32 %816, 31
  %839 = xor i32 %835, %837
  %840 = xor i32 %835, %838
  %841 = add nuw nsw i32 %839, %840
  %842 = icmp eq i32 %841, 2
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %46, align 1, !tbaa !2450
  %844 = add i64 %2133, -32
  %845 = add i64 %2169, 9
  store i64 %845, i64* %PC, align 8
  %846 = inttoptr i64 %844 to i32*
  %847 = load i32, i32* %846, align 4
  %848 = sub i32 %817, %847
  %849 = zext i32 %848 to i64
  store i64 %849, i64* %RAX, align 8, !tbaa !2428
  %850 = icmp ult i32 %817, %847
  %851 = zext i1 %850 to i8
  store i8 %851, i8* %22, align 1, !tbaa !2433
  %852 = and i32 %848, 255
  %853 = tail call i32 @llvm.ctpop.i32(i32 %852) #10
  %854 = trunc i32 %853 to i8
  %855 = and i8 %854, 1
  %856 = xor i8 %855, 1
  store i8 %856, i8* %29, align 1, !tbaa !2447
  %857 = xor i32 %847, %817
  %858 = xor i32 %857, %848
  %859 = lshr i32 %858, 4
  %860 = trunc i32 %859 to i8
  %861 = and i8 %860, 1
  store i8 %861, i8* %34, align 1, !tbaa !2451
  %862 = icmp eq i32 %848, 0
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %37, align 1, !tbaa !2448
  %864 = lshr i32 %848, 31
  %865 = trunc i32 %864 to i8
  store i8 %865, i8* %40, align 1, !tbaa !2449
  %866 = lshr i32 %847, 31
  %867 = xor i32 %866, %835
  %868 = xor i32 %864, %835
  %869 = add nuw nsw i32 %868, %867
  %870 = icmp eq i32 %869, 2
  %871 = zext i1 %870 to i8
  store i8 %871, i8* %46, align 1, !tbaa !2450
  %872 = add i64 %2133, -44
  %873 = add i64 %2169, 12
  store i64 %873, i64* %PC, align 8
  %874 = inttoptr i64 %872 to i32*
  store i32 %848, i32* %874, align 4
  %875 = load i64, i64* %RBP, align 8
  %876 = add i64 %875, -8
  %877 = load i64, i64* %PC, align 8
  %878 = add i64 %877, 4
  store i64 %878, i64* %PC, align 8
  %879 = inttoptr i64 %876 to i64*
  %880 = load i64, i64* %879, align 8
  store i64 %880, i64* %RCX, align 8, !tbaa !2428
  %881 = add i64 %875, -36
  %882 = add i64 %877, 8
  store i64 %882, i64* %PC, align 8
  %883 = inttoptr i64 %881 to i32*
  %884 = load i32, i32* %883, align 4
  %885 = sext i32 %884 to i64
  store i64 %885, i64* %RDX, align 8, !tbaa !2428
  %886 = shl nsw i64 %885, 3
  %887 = add i64 %886, %880
  %888 = add i64 %877, 13
  store i64 %888, i64* %PC, align 8
  %889 = inttoptr i64 %887 to i64*
  %890 = load i64, i64* %889, align 8
  %891 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %890, i64* %891, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2191, align 1, !tbaa !2452
  %892 = add i64 %875, -112
  %893 = add i64 %877, 18
  store i64 %893, i64* %PC, align 8
  %894 = inttoptr i64 %892 to i64*
  store i64 %890, i64* %894, align 8
  %895 = load i64, i64* %RBP, align 8
  %896 = add i64 %895, -8
  %897 = load i64, i64* %PC, align 8
  %898 = add i64 %897, 4
  store i64 %898, i64* %PC, align 8
  %899 = inttoptr i64 %896 to i64*
  %900 = load i64, i64* %899, align 8
  store i64 %900, i64* %RCX, align 8, !tbaa !2428
  %901 = add i64 %895, -44
  %902 = add i64 %897, 8
  store i64 %902, i64* %PC, align 8
  %903 = inttoptr i64 %901 to i32*
  %904 = load i32, i32* %903, align 4
  %905 = sext i32 %904 to i64
  store i64 %905, i64* %RDX, align 8, !tbaa !2428
  %906 = shl nsw i64 %905, 3
  %907 = add i64 %906, %900
  %908 = add i64 %897, 13
  store i64 %908, i64* %PC, align 8
  %909 = inttoptr i64 %907 to i64*
  %910 = load i64, i64* %909, align 8
  %911 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %910, i64* %911, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2191, align 1, !tbaa !2452
  %912 = add i64 %897, 17
  store i64 %912, i64* %PC, align 8
  %913 = load i64, i64* %899, align 8
  store i64 %913, i64* %RCX, align 8, !tbaa !2428
  %914 = add i64 %895, -36
  %915 = add i64 %897, 21
  store i64 %915, i64* %PC, align 8
  %916 = inttoptr i64 %914 to i32*
  %917 = load i32, i32* %916, align 4
  %918 = sext i32 %917 to i64
  store i64 %918, i64* %RDX, align 8, !tbaa !2428
  %919 = shl nsw i64 %918, 3
  %920 = add i64 %919, %913
  %921 = add i64 %897, 26
  store i64 %921, i64* %PC, align 8
  %922 = inttoptr i64 %920 to i64*
  store i64 %910, i64* %922, align 8
  %923 = load i64, i64* %RBP, align 8
  %924 = add i64 %923, -112
  %925 = load i64, i64* %PC, align 8
  %926 = add i64 %925, 5
  store i64 %926, i64* %PC, align 8
  %927 = inttoptr i64 %924 to i64*
  %928 = load i64, i64* %927, align 8
  %929 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %928, i64* %929, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2191, align 1, !tbaa !2452
  %930 = add i64 %923, -8
  %931 = add i64 %925, 9
  store i64 %931, i64* %PC, align 8
  %932 = inttoptr i64 %930 to i64*
  %933 = load i64, i64* %932, align 8
  store i64 %933, i64* %RCX, align 8, !tbaa !2428
  %934 = add i64 %923, -44
  %935 = add i64 %925, 13
  store i64 %935, i64* %PC, align 8
  %936 = inttoptr i64 %934 to i32*
  %937 = load i32, i32* %936, align 4
  %938 = sext i32 %937 to i64
  store i64 %938, i64* %RDX, align 8, !tbaa !2428
  %939 = shl nsw i64 %938, 3
  %940 = add i64 %939, %933
  %941 = add i64 %925, 18
  store i64 %941, i64* %PC, align 8
  %942 = inttoptr i64 %940 to i64*
  store i64 %928, i64* %942, align 8
  %943 = load i64, i64* %RBP, align 8
  %944 = add i64 %943, -8
  %945 = load i64, i64* %PC, align 8
  %946 = add i64 %945, 4
  store i64 %946, i64* %PC, align 8
  %947 = inttoptr i64 %944 to i64*
  %948 = load i64, i64* %947, align 8
  store i64 %948, i64* %RCX, align 8, !tbaa !2428
  %949 = add i64 %943, -36
  %950 = add i64 %945, 7
  store i64 %950, i64* %PC, align 8
  %951 = inttoptr i64 %949 to i32*
  %952 = load i32, i32* %951, align 4
  %953 = add i32 %952, 1
  %954 = zext i32 %953 to i64
  store i64 %954, i64* %RAX, align 8, !tbaa !2428
  %955 = icmp eq i32 %952, -1
  %956 = icmp eq i32 %953, 0
  %957 = or i1 %955, %956
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %22, align 1, !tbaa !2433
  %959 = and i32 %953, 255
  %960 = tail call i32 @llvm.ctpop.i32(i32 %959) #10
  %961 = trunc i32 %960 to i8
  %962 = and i8 %961, 1
  %963 = xor i8 %962, 1
  store i8 %963, i8* %29, align 1, !tbaa !2447
  %964 = xor i32 %952, %953
  %965 = lshr i32 %964, 4
  %966 = trunc i32 %965 to i8
  %967 = and i8 %966, 1
  store i8 %967, i8* %34, align 1, !tbaa !2451
  %968 = icmp eq i32 %953, 0
  %969 = zext i1 %968 to i8
  store i8 %969, i8* %37, align 1, !tbaa !2448
  %970 = lshr i32 %953, 31
  %971 = trunc i32 %970 to i8
  store i8 %971, i8* %40, align 1, !tbaa !2449
  %972 = lshr i32 %952, 31
  %973 = xor i32 %970, %972
  %974 = add nuw nsw i32 %973, %970
  %975 = icmp eq i32 %974, 2
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %46, align 1, !tbaa !2450
  %977 = sext i32 %953 to i64
  store i64 %977, i64* %RDX, align 8, !tbaa !2428
  %978 = shl nsw i64 %977, 3
  %979 = add i64 %978, %948
  %980 = add i64 %945, 18
  store i64 %980, i64* %PC, align 8
  %981 = inttoptr i64 %979 to i64*
  %982 = load i64, i64* %981, align 8
  %983 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %982, i64* %983, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2191, align 1, !tbaa !2452
  %984 = add i64 %943, -112
  %985 = add i64 %945, 23
  store i64 %985, i64* %PC, align 8
  %986 = inttoptr i64 %984 to i64*
  store i64 %982, i64* %986, align 8
  %987 = load i64, i64* %RBP, align 8
  %988 = add i64 %987, -8
  %989 = load i64, i64* %PC, align 8
  %990 = add i64 %989, 4
  store i64 %990, i64* %PC, align 8
  %991 = inttoptr i64 %988 to i64*
  %992 = load i64, i64* %991, align 8
  store i64 %992, i64* %RCX, align 8, !tbaa !2428
  %993 = add i64 %987, -44
  %994 = add i64 %989, 7
  store i64 %994, i64* %PC, align 8
  %995 = inttoptr i64 %993 to i32*
  %996 = load i32, i32* %995, align 4
  %997 = add i32 %996, 1
  %998 = zext i32 %997 to i64
  store i64 %998, i64* %RAX, align 8, !tbaa !2428
  %999 = icmp eq i32 %996, -1
  %1000 = icmp eq i32 %997, 0
  %1001 = or i1 %999, %1000
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %22, align 1, !tbaa !2433
  %1003 = and i32 %997, 255
  %1004 = tail call i32 @llvm.ctpop.i32(i32 %1003) #10
  %1005 = trunc i32 %1004 to i8
  %1006 = and i8 %1005, 1
  %1007 = xor i8 %1006, 1
  store i8 %1007, i8* %29, align 1, !tbaa !2447
  %1008 = xor i32 %996, %997
  %1009 = lshr i32 %1008, 4
  %1010 = trunc i32 %1009 to i8
  %1011 = and i8 %1010, 1
  store i8 %1011, i8* %34, align 1, !tbaa !2451
  %1012 = icmp eq i32 %997, 0
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %37, align 1, !tbaa !2448
  %1014 = lshr i32 %997, 31
  %1015 = trunc i32 %1014 to i8
  store i8 %1015, i8* %40, align 1, !tbaa !2449
  %1016 = lshr i32 %996, 31
  %1017 = xor i32 %1014, %1016
  %1018 = add nuw nsw i32 %1017, %1014
  %1019 = icmp eq i32 %1018, 2
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %46, align 1, !tbaa !2450
  %1021 = sext i32 %997 to i64
  store i64 %1021, i64* %RDX, align 8, !tbaa !2428
  %1022 = shl nsw i64 %1021, 3
  %1023 = add i64 %1022, %992
  %1024 = add i64 %989, 18
  store i64 %1024, i64* %PC, align 8
  %1025 = inttoptr i64 %1023 to i64*
  %1026 = load i64, i64* %1025, align 8
  %1027 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1026, i64* %1027, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2191, align 1, !tbaa !2452
  %1028 = add i64 %989, 22
  store i64 %1028, i64* %PC, align 8
  %1029 = load i64, i64* %991, align 8
  store i64 %1029, i64* %RCX, align 8, !tbaa !2428
  %1030 = add i64 %987, -36
  %1031 = add i64 %989, 25
  store i64 %1031, i64* %PC, align 8
  %1032 = inttoptr i64 %1030 to i32*
  %1033 = load i32, i32* %1032, align 4
  %1034 = add i32 %1033, 1
  %1035 = zext i32 %1034 to i64
  store i64 %1035, i64* %RAX, align 8, !tbaa !2428
  %1036 = icmp eq i32 %1033, -1
  %1037 = icmp eq i32 %1034, 0
  %1038 = or i1 %1036, %1037
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %22, align 1, !tbaa !2433
  %1040 = and i32 %1034, 255
  %1041 = tail call i32 @llvm.ctpop.i32(i32 %1040) #10
  %1042 = trunc i32 %1041 to i8
  %1043 = and i8 %1042, 1
  %1044 = xor i8 %1043, 1
  store i8 %1044, i8* %29, align 1, !tbaa !2447
  %1045 = xor i32 %1033, %1034
  %1046 = lshr i32 %1045, 4
  %1047 = trunc i32 %1046 to i8
  %1048 = and i8 %1047, 1
  store i8 %1048, i8* %34, align 1, !tbaa !2451
  %1049 = icmp eq i32 %1034, 0
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %37, align 1, !tbaa !2448
  %1051 = lshr i32 %1034, 31
  %1052 = trunc i32 %1051 to i8
  store i8 %1052, i8* %40, align 1, !tbaa !2449
  %1053 = lshr i32 %1033, 31
  %1054 = xor i32 %1051, %1053
  %1055 = add nuw nsw i32 %1054, %1051
  %1056 = icmp eq i32 %1055, 2
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %46, align 1, !tbaa !2450
  %1058 = sext i32 %1034 to i64
  store i64 %1058, i64* %RDX, align 8, !tbaa !2428
  %1059 = shl nsw i64 %1058, 3
  %1060 = add i64 %1059, %1029
  %1061 = add i64 %989, 36
  store i64 %1061, i64* %PC, align 8
  %1062 = inttoptr i64 %1060 to i64*
  store i64 %1026, i64* %1062, align 8
  %1063 = load i64, i64* %RBP, align 8
  %1064 = add i64 %1063, -112
  %1065 = load i64, i64* %PC, align 8
  %1066 = add i64 %1065, 5
  store i64 %1066, i64* %PC, align 8
  %1067 = inttoptr i64 %1064 to i64*
  %1068 = load i64, i64* %1067, align 8
  %1069 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1068, i64* %1069, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2191, align 1, !tbaa !2452
  %1070 = add i64 %1063, -8
  %1071 = add i64 %1065, 9
  store i64 %1071, i64* %PC, align 8
  %1072 = inttoptr i64 %1070 to i64*
  %1073 = load i64, i64* %1072, align 8
  store i64 %1073, i64* %RCX, align 8, !tbaa !2428
  %1074 = add i64 %1063, -44
  %1075 = add i64 %1065, 12
  store i64 %1075, i64* %PC, align 8
  %1076 = inttoptr i64 %1074 to i32*
  %1077 = load i32, i32* %1076, align 4
  %1078 = add i32 %1077, 1
  %1079 = zext i32 %1078 to i64
  store i64 %1079, i64* %RAX, align 8, !tbaa !2428
  %1080 = icmp eq i32 %1077, -1
  %1081 = icmp eq i32 %1078, 0
  %1082 = or i1 %1080, %1081
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %22, align 1, !tbaa !2433
  %1084 = and i32 %1078, 255
  %1085 = tail call i32 @llvm.ctpop.i32(i32 %1084) #10
  %1086 = trunc i32 %1085 to i8
  %1087 = and i8 %1086, 1
  %1088 = xor i8 %1087, 1
  store i8 %1088, i8* %29, align 1, !tbaa !2447
  %1089 = xor i32 %1077, %1078
  %1090 = lshr i32 %1089, 4
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  store i8 %1092, i8* %34, align 1, !tbaa !2451
  %1093 = icmp eq i32 %1078, 0
  %1094 = zext i1 %1093 to i8
  store i8 %1094, i8* %37, align 1, !tbaa !2448
  %1095 = lshr i32 %1078, 31
  %1096 = trunc i32 %1095 to i8
  store i8 %1096, i8* %40, align 1, !tbaa !2449
  %1097 = lshr i32 %1077, 31
  %1098 = xor i32 %1095, %1097
  %1099 = add nuw nsw i32 %1098, %1095
  %1100 = icmp eq i32 %1099, 2
  %1101 = zext i1 %1100 to i8
  store i8 %1101, i8* %46, align 1, !tbaa !2450
  %1102 = sext i32 %1078 to i64
  store i64 %1102, i64* %RDX, align 8, !tbaa !2428
  %1103 = shl nsw i64 %1102, 3
  %1104 = add i64 %1103, %1073
  %1105 = add i64 %1065, 23
  store i64 %1105, i64* %PC, align 8
  %1106 = inttoptr i64 %1104 to i64*
  store i64 %1068, i64* %1106, align 8
  %1107 = load i64, i64* %RBP, align 8
  %1108 = add i64 %1107, -52
  %1109 = load i64, i64* %PC, align 8
  %1110 = add i64 %1109, 3
  store i64 %1110, i64* %PC, align 8
  %1111 = inttoptr i64 %1108 to i32*
  %1112 = load i32, i32* %1111, align 4
  %1113 = zext i32 %1112 to i64
  store i64 %1113, i64* %RAX, align 8, !tbaa !2428
  %1114 = add i64 %1107, -36
  %1115 = add i64 %1109, 6
  store i64 %1115, i64* %PC, align 8
  %1116 = inttoptr i64 %1114 to i32*
  %1117 = load i32, i32* %1116, align 4
  %1118 = add i32 %1117, %1112
  %1119 = zext i32 %1118 to i64
  store i64 %1119, i64* %RAX, align 8, !tbaa !2428
  %1120 = icmp ult i32 %1118, %1112
  %1121 = icmp ult i32 %1118, %1117
  %1122 = or i1 %1120, %1121
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %22, align 1, !tbaa !2433
  %1124 = and i32 %1118, 255
  %1125 = tail call i32 @llvm.ctpop.i32(i32 %1124) #10
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  %1128 = xor i8 %1127, 1
  store i8 %1128, i8* %29, align 1, !tbaa !2447
  %1129 = xor i32 %1117, %1112
  %1130 = xor i32 %1129, %1118
  %1131 = lshr i32 %1130, 4
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  store i8 %1133, i8* %34, align 1, !tbaa !2451
  %1134 = icmp eq i32 %1118, 0
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %37, align 1, !tbaa !2448
  %1136 = lshr i32 %1118, 31
  %1137 = trunc i32 %1136 to i8
  store i8 %1137, i8* %40, align 1, !tbaa !2449
  %1138 = lshr i32 %1112, 31
  %1139 = lshr i32 %1117, 31
  %1140 = xor i32 %1136, %1138
  %1141 = xor i32 %1136, %1139
  %1142 = add nuw nsw i32 %1140, %1141
  %1143 = icmp eq i32 %1142, 2
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %46, align 1, !tbaa !2450
  %1145 = add i64 %1109, 9
  store i64 %1145, i64* %PC, align 8
  store i32 %1118, i32* %1116, align 4
  %1146 = load i64, i64* %PC, align 8
  %1147 = add i64 %1146, -177
  store i64 %1147, i64* %79, align 8, !tbaa !2428
  br label %block_400c27

block_400d31:                                     ; preds = %block_400d23
  %1148 = add i64 %1247, 33
  store i64 %1148, i64* %PC, align 8
  %1149 = inttoptr i64 %1248 to i32*
  %1150 = load i32, i32* %1149, align 4
  %1151 = zext i32 %1150 to i64
  store i64 %1151, i64* %RAX, align 8, !tbaa !2428
  %1152 = add i64 %1235, -40
  %1153 = add i64 %1247, 36
  store i64 %1153, i64* %PC, align 8
  %1154 = inttoptr i64 %1152 to i32*
  %1155 = load i32, i32* %1154, align 4
  %1156 = add i32 %1155, %1150
  %1157 = zext i32 %1156 to i64
  store i64 %1157, i64* %RAX, align 8, !tbaa !2428
  %1158 = icmp ult i32 %1156, %1150
  %1159 = icmp ult i32 %1156, %1155
  %1160 = or i1 %1158, %1159
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %22, align 1, !tbaa !2433
  %1162 = and i32 %1156, 255
  %1163 = tail call i32 @llvm.ctpop.i32(i32 %1162) #10
  %1164 = trunc i32 %1163 to i8
  %1165 = and i8 %1164, 1
  %1166 = xor i8 %1165, 1
  store i8 %1166, i8* %29, align 1, !tbaa !2447
  %1167 = xor i32 %1155, %1150
  %1168 = xor i32 %1167, %1156
  %1169 = lshr i32 %1168, 4
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  store i8 %1171, i8* %34, align 1, !tbaa !2451
  %1172 = icmp eq i32 %1156, 0
  %1173 = zext i1 %1172 to i8
  store i8 %1173, i8* %37, align 1, !tbaa !2448
  %1174 = lshr i32 %1156, 31
  %1175 = trunc i32 %1174 to i8
  store i8 %1175, i8* %40, align 1, !tbaa !2449
  %1176 = lshr i32 %1150, 31
  %1177 = lshr i32 %1155, 31
  %1178 = xor i32 %1174, %1176
  %1179 = xor i32 %1174, %1177
  %1180 = add nuw nsw i32 %1178, %1179
  %1181 = icmp eq i32 %1180, 2
  %1182 = zext i1 %1181 to i8
  store i8 %1182, i8* %46, align 1, !tbaa !2450
  %1183 = add i64 %1247, 39
  store i64 %1183, i64* %PC, align 8
  store i32 %1156, i32* %1154, align 4
  %1184 = load i64, i64* %RBP, align 8
  %1185 = add i64 %1184, -48
  %1186 = load i64, i64* %PC, align 8
  %1187 = add i64 %1186, 3
  store i64 %1187, i64* %PC, align 8
  %1188 = inttoptr i64 %1185 to i32*
  %1189 = load i32, i32* %1188, align 4
  %1190 = zext i32 %1189 to i64
  store i64 %1190, i64* %RAX, align 8, !tbaa !2428
  %1191 = add i64 %1184, -32
  %1192 = add i64 %1186, 6
  store i64 %1192, i64* %PC, align 8
  %1193 = inttoptr i64 %1191 to i32*
  %1194 = load i32, i32* %1193, align 4
  %1195 = add i32 %1194, %1189
  %1196 = zext i32 %1195 to i64
  store i64 %1196, i64* %RAX, align 8, !tbaa !2428
  %1197 = icmp ult i32 %1195, %1189
  %1198 = icmp ult i32 %1195, %1194
  %1199 = or i1 %1197, %1198
  %1200 = zext i1 %1199 to i8
  store i8 %1200, i8* %22, align 1, !tbaa !2433
  %1201 = and i32 %1195, 255
  %1202 = tail call i32 @llvm.ctpop.i32(i32 %1201) #10
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  %1205 = xor i8 %1204, 1
  store i8 %1205, i8* %29, align 1, !tbaa !2447
  %1206 = xor i32 %1194, %1189
  %1207 = xor i32 %1206, %1195
  %1208 = lshr i32 %1207, 4
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  store i8 %1210, i8* %34, align 1, !tbaa !2451
  %1211 = icmp eq i32 %1195, 0
  %1212 = zext i1 %1211 to i8
  store i8 %1212, i8* %37, align 1, !tbaa !2448
  %1213 = lshr i32 %1195, 31
  %1214 = trunc i32 %1213 to i8
  store i8 %1214, i8* %40, align 1, !tbaa !2449
  %1215 = lshr i32 %1189, 31
  %1216 = lshr i32 %1194, 31
  %1217 = xor i32 %1213, %1215
  %1218 = xor i32 %1213, %1216
  %1219 = add nuw nsw i32 %1217, %1218
  %1220 = icmp eq i32 %1219, 2
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %46, align 1, !tbaa !2450
  %1222 = add i64 %1186, 9
  store i64 %1222, i64* %PC, align 8
  store i32 %1195, i32* %1193, align 4
  %1223 = load i64, i64* %PC, align 8
  %1224 = add i64 %1223, -370
  store i64 %1224, i64* %79, align 8, !tbaa !2428
  br label %block_400bef

block_400c21:                                     ; preds = %block_400c0d
  %1225 = load i64, i64* %RBP, align 8
  %1226 = add i64 %1225, -28
  %1227 = add i64 %1699, 3
  store i64 %1227, i64* %PC, align 8
  %1228 = inttoptr i64 %1226 to i32*
  %1229 = load i32, i32* %1228, align 4
  %1230 = zext i32 %1229 to i64
  store i64 %1230, i64* %RAX, align 8, !tbaa !2428
  %1231 = add i64 %1225, -36
  %1232 = add i64 %1699, 6
  store i64 %1232, i64* %PC, align 8
  %1233 = inttoptr i64 %1231 to i32*
  store i32 %1229, i32* %1233, align 4
  %.pre9 = load i64, i64* %PC, align 8
  br label %block_400c27

block_400d23:                                     ; preds = %block_400d14, %block_400cfe
  %1234 = phi i64 [ %.pre12, %block_400d14 ], [ %312, %block_400cfe ]
  %1235 = load i64, i64* %RBP, align 8
  %1236 = add i64 %1235, -165
  %1237 = add i64 %1234, 6
  store i64 %1237, i64* %PC, align 8
  %1238 = inttoptr i64 %1236 to i8*
  %1239 = load i8, i8* %1238, align 1
  store i8 %1239, i8* %AL, align 1, !tbaa !2432
  %1240 = and i8 %1239, 1
  store i8 0, i8* %22, align 1, !tbaa !2433
  %1241 = zext i8 %1240 to i32
  %1242 = tail call i32 @llvm.ctpop.i32(i32 %1241) #10
  %1243 = trunc i32 %1242 to i8
  %1244 = xor i8 %1243, 1
  store i8 %1244, i8* %29, align 1, !tbaa !2447
  %1245 = xor i8 %1240, 1
  store i8 %1245, i8* %37, align 1, !tbaa !2448
  store i8 0, i8* %40, align 1, !tbaa !2449
  store i8 0, i8* %46, align 1, !tbaa !2450
  store i8 0, i8* %34, align 1, !tbaa !2451
  %1246 = icmp eq i8 %1245, 0
  %.v32 = select i1 %1246, i64 19, i64 14
  %1247 = add i64 %1234, %.v32
  store i64 %1247, i64* %79, align 8, !tbaa !2428
  %1248 = add i64 %1235, -68
  br i1 %1246, label %block_400d36, label %block_400d31

block_401005:                                     ; preds = %block_400e46
  %1249 = add i64 %314, -64
  %1250 = add i64 %350, 3
  store i64 %1250, i64* %PC, align 8
  %1251 = inttoptr i64 %1249 to i32*
  %1252 = load i32, i32* %1251, align 4
  %1253 = zext i32 %1252 to i64
  store i64 %1253, i64* %RAX, align 8, !tbaa !2428
  %1254 = add i64 %350, 6
  store i64 %1254, i64* %PC, align 8
  store i32 %1252, i32* %322, align 4
  %1255 = load i64, i64* %PC, align 8
  %1256 = add i64 %1255, -671
  store i64 %1256, i64* %79, align 8, !tbaa !2428
  br label %block_400d6c

block_400b9a:                                     ; preds = %block_400b90
  %1257 = add i64 %1527, -16
  %1258 = add i64 %1555, 4
  store i64 %1258, i64* %PC, align 8
  %1259 = inttoptr i64 %1257 to i64*
  %1260 = load i64, i64* %1259, align 8
  store i64 %1260, i64* %RAX, align 8, !tbaa !2428
  %1261 = add i64 %1555, 8
  store i64 %1261, i64* %PC, align 8
  %1262 = load i32, i32* %1530, align 4
  %1263 = sext i32 %1262 to i64
  store i64 %1263, i64* %RCX, align 8, !tbaa !2428
  %1264 = shl nsw i64 %1263, 2
  %1265 = add i64 %1264, %1260
  %1266 = add i64 %1555, 11
  store i64 %1266, i64* %PC, align 8
  %1267 = inttoptr i64 %1265 to i32*
  %1268 = load i32, i32* %1267, align 4
  %1269 = zext i32 %1268 to i64
  store i64 %1269, i64* %RDX, align 8, !tbaa !2428
  %1270 = add i64 %1527, -84
  %1271 = add i64 %1555, 14
  store i64 %1271, i64* %PC, align 8
  %1272 = inttoptr i64 %1270 to i32*
  store i32 %1268, i32* %1272, align 4
  %1273 = load i64, i64* %RBP, align 8
  %1274 = add i64 %1273, -96
  %1275 = load i64, i64* %PC, align 8
  %1276 = add i64 %1275, 3
  store i64 %1276, i64* %PC, align 8
  %1277 = inttoptr i64 %1274 to i32*
  %1278 = load i32, i32* %1277, align 4
  %1279 = zext i32 %1278 to i64
  store i64 %1279, i64* %RAX, align 8, !tbaa !2428
  %1280 = add i64 %1273, -84
  %1281 = add i64 %1275, 6
  store i64 %1281, i64* %PC, align 8
  %1282 = inttoptr i64 %1280 to i32*
  %1283 = load i32, i32* %1282, align 4
  %1284 = zext i32 %1283 to i64
  store i64 %1284, i64* %RDX, align 8, !tbaa !2428
  %1285 = add i64 %1273, -88
  %1286 = add i64 %1275, 10
  store i64 %1286, i64* %PC, align 8
  %1287 = inttoptr i64 %1285 to i32*
  %1288 = load i32, i32* %1287, align 4
  %1289 = sext i32 %1283 to i64
  %1290 = sext i32 %1288 to i64
  %1291 = mul nsw i64 %1290, %1289
  %1292 = trunc i64 %1291 to i32
  %1293 = shl i64 %1291, 32
  %1294 = ashr exact i64 %1293, 32
  %1295 = icmp ne i64 %1294, %1291
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %22, align 1, !tbaa !2433
  %1297 = and i32 %1292, 255
  %1298 = tail call i32 @llvm.ctpop.i32(i32 %1297) #10
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  %1301 = xor i8 %1300, 1
  store i8 %1301, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %34, align 1, !tbaa !2451
  store i8 0, i8* %37, align 1, !tbaa !2448
  %1302 = lshr i32 %1292, 31
  %1303 = trunc i32 %1302 to i8
  store i8 %1303, i8* %40, align 1, !tbaa !2449
  store i8 %1296, i8* %46, align 1, !tbaa !2450
  %1304 = add i64 %1273, -164
  %1305 = trunc i64 %1291 to i32
  %1306 = add i64 %1275, 16
  store i64 %1306, i64* %PC, align 8
  %1307 = inttoptr i64 %1304 to i32*
  store i32 %1305, i32* %1307, align 4
  %1308 = load i64, i64* %PC, align 8
  %1309 = load i32, i32* %2185, align 8, !tbaa !2454
  %1310 = sext i32 %1309 to i64
  %1311 = lshr i64 %1310, 32
  store i64 %1311, i64* %2183, align 8, !tbaa !2428
  %1312 = load i64, i64* %RBP, align 8
  %1313 = add i64 %1312, -164
  %1314 = add i64 %1308, 7
  store i64 %1314, i64* %PC, align 8
  %1315 = inttoptr i64 %1313 to i32*
  %1316 = load i32, i32* %1315, align 4
  %1317 = zext i32 %1316 to i64
  store i64 %1317, i64* %RSI, align 8, !tbaa !2428
  %1318 = add i64 %1308, 9
  store i64 %1318, i64* %PC, align 8
  %1319 = zext i32 %1309 to i64
  %1320 = sext i32 %1316 to i64
  %1321 = shl nuw i64 %1311, 32
  %1322 = or i64 %1321, %1319
  %1323 = sdiv i64 %1322, %1320
  %1324 = shl i64 %1323, 32
  %1325 = ashr exact i64 %1324, 32
  %1326 = icmp eq i64 %1323, %1325
  br i1 %1326, label %1329, label %1327

; <label>:1327:                                   ; preds = %block_400b9a
  %1328 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1318, %struct.Memory* %MEMORY.6) #11
  %.pre4 = load i64, i64* %RBP, align 8
  %.pre5 = load i32, i32* %EAX, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:1329:                                   ; preds = %block_400b9a
  %1330 = srem i64 %1322, %1320
  %1331 = and i64 %1323, 4294967295
  store i64 %1331, i64* %2186, align 8, !tbaa !2428
  %1332 = and i64 %1330, 4294967295
  store i64 %1332, i64* %2187, align 8, !tbaa !2428
  store i8 0, i8* %22, align 1, !tbaa !2433
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %34, align 1, !tbaa !2451
  store i8 0, i8* %37, align 1, !tbaa !2448
  store i8 0, i8* %40, align 1, !tbaa !2449
  store i8 0, i8* %46, align 1, !tbaa !2450
  %1333 = trunc i64 %1323 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %1329, %1327
  %1334 = phi i64 [ %.pre6, %1327 ], [ %1318, %1329 ]
  %1335 = phi i32 [ %.pre5, %1327 ], [ %1333, %1329 ]
  %1336 = phi i64 [ %.pre4, %1327 ], [ %1312, %1329 ]
  %1337 = phi %struct.Memory* [ %1328, %1327 ], [ %MEMORY.6, %1329 ]
  %1338 = add i64 %1336, -92
  %1339 = add i64 %1334, 3
  store i64 %1339, i64* %PC, align 8
  %1340 = inttoptr i64 %1338 to i32*
  store i32 %1335, i32* %1340, align 4
  %1341 = load i64, i64* %RBP, align 8
  %1342 = add i64 %1341, -88
  %1343 = load i64, i64* %PC, align 8
  %1344 = add i64 %1343, 3
  store i64 %1344, i64* %PC, align 8
  %1345 = inttoptr i64 %1342 to i32*
  %1346 = load i32, i32* %1345, align 4
  %1347 = shl i32 %1346, 1
  %1348 = icmp slt i32 %1346, 0
  %1349 = icmp slt i32 %1347, 0
  %1350 = xor i1 %1348, %1349
  %1351 = zext i32 %1347 to i64
  store i64 %1351, i64* %RAX, align 8, !tbaa !2428
  %.lobit = lshr i32 %1346, 31
  %1352 = trunc i32 %.lobit to i8
  store i8 %1352, i8* %22, align 1, !tbaa !2432
  %1353 = and i32 %1347, 254
  %1354 = tail call i32 @llvm.ctpop.i32(i32 %1353) #10
  %1355 = trunc i32 %1354 to i8
  %1356 = and i8 %1355, 1
  %1357 = xor i8 %1356, 1
  store i8 %1357, i8* %29, align 1, !tbaa !2432
  store i8 0, i8* %34, align 1, !tbaa !2432
  %1358 = icmp eq i32 %1347, 0
  %1359 = zext i1 %1358 to i8
  store i8 %1359, i8* %37, align 1, !tbaa !2432
  %1360 = lshr i32 %1346, 30
  %1361 = trunc i32 %1360 to i8
  %1362 = and i8 %1361, 1
  store i8 %1362, i8* %40, align 1, !tbaa !2432
  %1363 = zext i1 %1350 to i8
  store i8 %1363, i8* %46, align 1, !tbaa !2432
  %1364 = add i64 %1341, -48
  %1365 = add i64 %1343, 9
  store i64 %1365, i64* %PC, align 8
  %1366 = inttoptr i64 %1364 to i32*
  store i32 %1347, i32* %1366, align 4
  %1367 = load i64, i64* %RBP, align 8
  %1368 = add i64 %1367, -48
  %1369 = load i64, i64* %PC, align 8
  %1370 = add i64 %1369, 3
  store i64 %1370, i64* %PC, align 8
  %1371 = inttoptr i64 %1368 to i32*
  %1372 = load i32, i32* %1371, align 4
  %1373 = zext i32 %1372 to i64
  store i64 %1373, i64* %RAX, align 8, !tbaa !2428
  %1374 = add i64 %1367, -84
  %1375 = add i64 %1369, 7
  store i64 %1375, i64* %PC, align 8
  %1376 = inttoptr i64 %1374 to i32*
  %1377 = load i32, i32* %1376, align 4
  %1378 = sext i32 %1372 to i64
  %1379 = sext i32 %1377 to i64
  %1380 = mul nsw i64 %1379, %1378
  %1381 = trunc i64 %1380 to i32
  %1382 = and i64 %1380, 4294967295
  store i64 %1382, i64* %RAX, align 8, !tbaa !2428
  %1383 = shl i64 %1380, 32
  %1384 = ashr exact i64 %1383, 32
  %1385 = icmp ne i64 %1384, %1380
  %1386 = zext i1 %1385 to i8
  store i8 %1386, i8* %22, align 1, !tbaa !2433
  %1387 = and i32 %1381, 255
  %1388 = tail call i32 @llvm.ctpop.i32(i32 %1387) #10
  %1389 = trunc i32 %1388 to i8
  %1390 = and i8 %1389, 1
  %1391 = xor i8 %1390, 1
  store i8 %1391, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %34, align 1, !tbaa !2451
  store i8 0, i8* %37, align 1, !tbaa !2448
  %1392 = lshr i32 %1381, 31
  %1393 = trunc i32 %1392 to i8
  store i8 %1393, i8* %40, align 1, !tbaa !2449
  store i8 %1386, i8* %46, align 1, !tbaa !2450
  %1394 = add i64 %1367, -52
  %1395 = trunc i64 %1380 to i32
  %1396 = add i64 %1369, 10
  store i64 %1396, i64* %PC, align 8
  %1397 = inttoptr i64 %1394 to i32*
  store i32 %1395, i32* %1397, align 4
  %1398 = load i64, i64* %RBP, align 8
  %1399 = add i64 %1398, -52
  %1400 = load i64, i64* %PC, align 8
  %1401 = add i64 %1400, 3
  store i64 %1401, i64* %PC, align 8
  %1402 = inttoptr i64 %1399 to i32*
  %1403 = load i32, i32* %1402, align 4
  %1404 = zext i32 %1403 to i64
  store i64 %1404, i64* %RAX, align 8, !tbaa !2428
  %1405 = add i64 %1398, -92
  %1406 = add i64 %1400, 7
  store i64 %1406, i64* %PC, align 8
  %1407 = inttoptr i64 %1405 to i32*
  %1408 = load i32, i32* %1407, align 4
  %1409 = sext i32 %1403 to i64
  %1410 = sext i32 %1408 to i64
  %1411 = mul nsw i64 %1410, %1409
  %1412 = trunc i64 %1411 to i32
  %1413 = and i64 %1411, 4294967295
  store i64 %1413, i64* %RAX, align 8, !tbaa !2428
  %1414 = shl i64 %1411, 32
  %1415 = ashr exact i64 %1414, 32
  %1416 = icmp ne i64 %1415, %1411
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %22, align 1, !tbaa !2433
  %1418 = and i32 %1412, 255
  %1419 = tail call i32 @llvm.ctpop.i32(i32 %1418) #10
  %1420 = trunc i32 %1419 to i8
  %1421 = and i8 %1420, 1
  %1422 = xor i8 %1421, 1
  store i8 %1422, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %34, align 1, !tbaa !2451
  store i8 0, i8* %37, align 1, !tbaa !2448
  %1423 = lshr i32 %1412, 31
  %1424 = trunc i32 %1423 to i8
  store i8 %1424, i8* %40, align 1, !tbaa !2449
  store i8 %1417, i8* %46, align 1, !tbaa !2450
  %1425 = add i64 %1398, -56
  %1426 = trunc i64 %1411 to i32
  %1427 = add i64 %1400, 10
  store i64 %1427, i64* %PC, align 8
  %1428 = inttoptr i64 %1425 to i32*
  store i32 %1426, i32* %1428, align 4
  %1429 = load i64, i64* %RBP, align 8
  %1430 = add i64 %1429, -40
  %1431 = load i64, i64* %PC, align 8
  %1432 = add i64 %1431, 7
  store i64 %1432, i64* %PC, align 8
  %1433 = inttoptr i64 %1430 to i32*
  store i32 1, i32* %1433, align 4
  %1434 = load i64, i64* %RBP, align 8
  %1435 = add i64 %1434, -32
  %1436 = load i64, i64* %PC, align 8
  %1437 = add i64 %1436, 7
  store i64 %1437, i64* %PC, align 8
  %1438 = inttoptr i64 %1435 to i32*
  store i32 1, i32* %1438, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_400bef

block_400d66:                                     ; preds = %block_400bef
  %1439 = add i64 %81, -48
  %1440 = add i64 %117, 3
  store i64 %1440, i64* %PC, align 8
  %1441 = inttoptr i64 %1439 to i32*
  %1442 = load i32, i32* %1441, align 4
  %1443 = zext i32 %1442 to i64
  store i64 %1443, i64* %RAX, align 8, !tbaa !2428
  %1444 = add i64 %81, -60
  %1445 = add i64 %117, 6
  store i64 %1445, i64* %PC, align 8
  %1446 = inttoptr i64 %1444 to i32*
  store i32 %1442, i32* %1446, align 4
  %.pre13 = load i64, i64* %PC, align 8
  br label %block_400d6c

block_400d14:                                     ; preds = %block_400cfe
  %1447 = load i64, i64* %RBP, align 8
  %1448 = add i64 %1447, -40
  %1449 = add i64 %312, 3
  store i64 %1449, i64* %PC, align 8
  %1450 = inttoptr i64 %1448 to i32*
  %1451 = load i32, i32* %1450, align 4
  %1452 = zext i32 %1451 to i64
  store i64 %1452, i64* %RAX, align 8, !tbaa !2428
  %1453 = add i64 %1447, -68
  %1454 = add i64 %312, 6
  store i64 %1454, i64* %PC, align 8
  %1455 = inttoptr i64 %1453 to i32*
  %1456 = load i32, i32* %1455, align 4
  %1457 = sub i32 %1451, %1456
  %1458 = icmp ult i32 %1451, %1456
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %22, align 1, !tbaa !2433
  %1460 = and i32 %1457, 255
  %1461 = tail call i32 @llvm.ctpop.i32(i32 %1460) #10
  %1462 = trunc i32 %1461 to i8
  %1463 = and i8 %1462, 1
  %1464 = xor i8 %1463, 1
  store i8 %1464, i8* %29, align 1, !tbaa !2447
  %1465 = xor i32 %1456, %1451
  %1466 = xor i32 %1465, %1457
  %1467 = lshr i32 %1466, 4
  %1468 = trunc i32 %1467 to i8
  %1469 = and i8 %1468, 1
  store i8 %1469, i8* %34, align 1, !tbaa !2451
  %1470 = icmp eq i32 %1457, 0
  %1471 = zext i1 %1470 to i8
  store i8 %1471, i8* %37, align 1, !tbaa !2448
  %1472 = lshr i32 %1457, 31
  %1473 = trunc i32 %1472 to i8
  store i8 %1473, i8* %40, align 1, !tbaa !2449
  %1474 = lshr i32 %1451, 31
  %1475 = lshr i32 %1456, 31
  %1476 = xor i32 %1475, %1474
  %1477 = xor i32 %1472, %1474
  %1478 = add nuw nsw i32 %1477, %1476
  %1479 = icmp eq i32 %1478, 2
  %1480 = zext i1 %1479 to i8
  store i8 %1480, i8* %46, align 1, !tbaa !2450
  %1481 = icmp ne i8 %1473, 0
  %1482 = xor i1 %1481, %1479
  %.demorgan31 = or i1 %1470, %1482
  %1483 = xor i1 %.demorgan31, true
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %CL, align 1, !tbaa !2432
  %1485 = add i64 %1447, -165
  %1486 = add i64 %312, 15
  store i64 %1486, i64* %PC, align 8
  %1487 = inttoptr i64 %1485 to i8*
  store i8 %1484, i8* %1487, align 1
  %.pre12 = load i64, i64* %PC, align 8
  br label %block_400d23

block_400e72:                                     ; preds = %block_400e7e, %block_400e6c
  %1488 = phi i64 [ %748, %block_400e7e ], [ %.pre21, %block_400e6c ]
  %1489 = load i64, i64* %RBP, align 8
  %1490 = add i64 %1489, -32
  %1491 = add i64 %1488, 3
  store i64 %1491, i64* %PC, align 8
  %1492 = inttoptr i64 %1490 to i32*
  %1493 = load i32, i32* %1492, align 4
  %1494 = zext i32 %1493 to i64
  store i64 %1494, i64* %RAX, align 8, !tbaa !2428
  %1495 = add i64 %1489, -56
  %1496 = add i64 %1488, 6
  store i64 %1496, i64* %PC, align 8
  %1497 = inttoptr i64 %1495 to i32*
  %1498 = load i32, i32* %1497, align 4
  %1499 = sub i32 %1493, %1498
  %1500 = icmp ult i32 %1493, %1498
  %1501 = zext i1 %1500 to i8
  store i8 %1501, i8* %22, align 1, !tbaa !2433
  %1502 = and i32 %1499, 255
  %1503 = tail call i32 @llvm.ctpop.i32(i32 %1502) #10
  %1504 = trunc i32 %1503 to i8
  %1505 = and i8 %1504, 1
  %1506 = xor i8 %1505, 1
  store i8 %1506, i8* %29, align 1, !tbaa !2447
  %1507 = xor i32 %1498, %1493
  %1508 = xor i32 %1507, %1499
  %1509 = lshr i32 %1508, 4
  %1510 = trunc i32 %1509 to i8
  %1511 = and i8 %1510, 1
  store i8 %1511, i8* %34, align 1, !tbaa !2451
  %1512 = icmp eq i32 %1499, 0
  %1513 = zext i1 %1512 to i8
  store i8 %1513, i8* %37, align 1, !tbaa !2448
  %1514 = lshr i32 %1499, 31
  %1515 = trunc i32 %1514 to i8
  store i8 %1515, i8* %40, align 1, !tbaa !2449
  %1516 = lshr i32 %1493, 31
  %1517 = lshr i32 %1498, 31
  %1518 = xor i32 %1517, %1516
  %1519 = xor i32 %1514, %1516
  %1520 = add nuw nsw i32 %1519, %1518
  %1521 = icmp eq i32 %1520, 2
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %46, align 1, !tbaa !2450
  %1523 = icmp ne i8 %1515, 0
  %1524 = xor i1 %1523, %1521
  %.demorgan46 = or i1 %1512, %1524
  %.v47 = select i1 %.demorgan46, i64 12, i64 270
  %1525 = add i64 %1488, %.v47
  store i64 %1525, i64* %79, align 8, !tbaa !2428
  br i1 %.demorgan46, label %block_400e7e, label %block_400f80

block_400b90:                                     ; preds = %block_400b83, %block_401010
  %1526 = phi i64 [ %.pre3, %block_400b83 ], [ %185, %block_401010 ]
  %MEMORY.6 = phi %struct.Memory* [ %2, %block_400b83 ], [ %MEMORY.9, %block_401010 ]
  %1527 = load i64, i64* %RBP, align 8
  %1528 = add i64 %1527, -72
  %1529 = add i64 %1526, 4
  store i64 %1529, i64* %PC, align 8
  %1530 = inttoptr i64 %1528 to i32*
  %1531 = load i32, i32* %1530, align 4
  %1532 = add i32 %1531, -1
  %1533 = icmp eq i32 %1531, 0
  %1534 = zext i1 %1533 to i8
  store i8 %1534, i8* %22, align 1, !tbaa !2433
  %1535 = and i32 %1532, 255
  %1536 = tail call i32 @llvm.ctpop.i32(i32 %1535) #10
  %1537 = trunc i32 %1536 to i8
  %1538 = and i8 %1537, 1
  %1539 = xor i8 %1538, 1
  store i8 %1539, i8* %29, align 1, !tbaa !2447
  %1540 = xor i32 %1531, %1532
  %1541 = lshr i32 %1540, 4
  %1542 = trunc i32 %1541 to i8
  %1543 = and i8 %1542, 1
  store i8 %1543, i8* %34, align 1, !tbaa !2451
  %1544 = icmp eq i32 %1532, 0
  %1545 = zext i1 %1544 to i8
  store i8 %1545, i8* %37, align 1, !tbaa !2448
  %1546 = lshr i32 %1532, 31
  %1547 = trunc i32 %1546 to i8
  store i8 %1547, i8* %40, align 1, !tbaa !2449
  %1548 = lshr i32 %1531, 31
  %1549 = xor i32 %1546, %1548
  %1550 = add nuw nsw i32 %1549, %1548
  %1551 = icmp eq i32 %1550, 2
  %1552 = zext i1 %1551 to i8
  store i8 %1552, i8* %46, align 1, !tbaa !2450
  %1553 = icmp ne i8 %1547, 0
  %1554 = xor i1 %1553, %1551
  %.v22 = select i1 %1554, i64 1176, i64 10
  %1555 = add i64 %1526, %.v22
  store i64 %1555, i64* %79, align 8, !tbaa !2428
  br i1 %1554, label %block_401028, label %block_400b9a

block_400f93:                                     ; preds = %block_400e58
  %1556 = add i64 %261, -152
  %1557 = add i64 %260, 8
  store i64 %1557, i64* %PC, align 8
  %1558 = inttoptr i64 %1556 to i64*
  %1559 = load i64, i64* %1558, align 8
  %1560 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1559, i64* %1560, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2191, align 1, !tbaa !2452
  %1561 = add i64 %261, -160
  %1562 = add i64 %260, 16
  store i64 %1562, i64* %PC, align 8
  %1563 = inttoptr i64 %1561 to i64*
  store i64 %1559, i64* %1563, align 8
  %1564 = load i64, i64* %RBP, align 8
  %1565 = add i64 %1564, -144
  %1566 = load i64, i64* %PC, align 8
  %1567 = add i64 %1566, 8
  store i64 %1567, i64* %PC, align 8
  %1568 = load double, double* %2189, align 1
  %1569 = inttoptr i64 %1565 to double*
  %1570 = load double, double* %1569, align 8
  %1571 = fmul double %1568, %1570
  store double %1571, double* %2189, align 1, !tbaa !2452
  %1572 = add i64 %1564, -128
  %1573 = add i64 %1566, 13
  store i64 %1573, i64* %PC, align 8
  %1574 = inttoptr i64 %1572 to double*
  %1575 = load double, double* %1574, align 8
  store double %1575, double* %2198, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2200, align 1, !tbaa !2452
  %1576 = add i64 %1564, -136
  %1577 = add i64 %1566, 21
  store i64 %1577, i64* %PC, align 8
  %1578 = inttoptr i64 %1576 to double*
  %1579 = load double, double* %1578, align 8
  %1580 = fmul double %1575, %1579
  store double %1580, double* %2198, align 1, !tbaa !2452
  store i64 0, i64* %2199, align 1, !tbaa !2452
  %1581 = fsub double %1571, %1580
  store double %1581, double* %2189, align 1, !tbaa !2452
  %1582 = add i64 %1564, -152
  %1583 = add i64 %1566, 33
  store i64 %1583, i64* %PC, align 8
  %1584 = inttoptr i64 %1582 to double*
  %1585 = load double, double* %1584, align 8
  %1586 = fadd double %1581, %1585
  store double %1586, double* %2189, align 1, !tbaa !2452
  %1587 = add i64 %1566, 41
  store i64 %1587, i64* %PC, align 8
  store double %1586, double* %1584, align 8
  %1588 = load i64, i64* %RBP, align 8
  %1589 = add i64 %1588, -128
  %1590 = load i64, i64* %PC, align 8
  %1591 = add i64 %1590, 5
  store i64 %1591, i64* %PC, align 8
  %1592 = inttoptr i64 %1589 to double*
  %1593 = load double, double* %1592, align 8
  store double %1593, double* %2189, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2191, align 1, !tbaa !2452
  %1594 = add i64 %1588, -144
  %1595 = add i64 %1590, 13
  store i64 %1595, i64* %PC, align 8
  %1596 = inttoptr i64 %1594 to double*
  %1597 = load double, double* %1596, align 8
  %1598 = fmul double %1593, %1597
  store double %1598, double* %2189, align 1, !tbaa !2452
  store i64 0, i64* %2190, align 1, !tbaa !2452
  %1599 = add i64 %1588, -160
  %1600 = add i64 %1590, 21
  store i64 %1600, i64* %PC, align 8
  %1601 = inttoptr i64 %1599 to double*
  %1602 = load double, double* %1601, align 8
  store double %1602, double* %2198, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2200, align 1, !tbaa !2452
  %1603 = add i64 %1588, -136
  %1604 = add i64 %1590, 29
  store i64 %1604, i64* %PC, align 8
  %1605 = inttoptr i64 %1603 to double*
  %1606 = load double, double* %1605, align 8
  %1607 = fmul double %1602, %1606
  store double %1607, double* %2198, align 1, !tbaa !2452
  store i64 0, i64* %2199, align 1, !tbaa !2452
  %1608 = fadd double %1598, %1607
  store double %1608, double* %2189, align 1, !tbaa !2452
  store i64 0, i64* %2190, align 1, !tbaa !2452
  %1609 = add i64 %1590, 38
  store i64 %1609, i64* %PC, align 8
  %1610 = load double, double* %1592, align 8
  %1611 = fadd double %1608, %1610
  store double %1611, double* %2189, align 1, !tbaa !2452
  store i64 0, i64* %2190, align 1, !tbaa !2452
  %1612 = add i64 %1590, 43
  store i64 %1612, i64* %PC, align 8
  store double %1611, double* %1592, align 8
  %1613 = load i64, i64* %RBP, align 8
  %1614 = add i64 %1613, -48
  %1615 = load i64, i64* %PC, align 8
  %1616 = add i64 %1615, 3
  store i64 %1616, i64* %PC, align 8
  %1617 = inttoptr i64 %1614 to i32*
  %1618 = load i32, i32* %1617, align 4
  %1619 = zext i32 %1618 to i64
  store i64 %1619, i64* %RAX, align 8, !tbaa !2428
  %1620 = add i64 %1613, -36
  %1621 = add i64 %1615, 6
  store i64 %1621, i64* %PC, align 8
  %1622 = inttoptr i64 %1620 to i32*
  %1623 = load i32, i32* %1622, align 4
  %1624 = add i32 %1623, %1618
  %1625 = zext i32 %1624 to i64
  store i64 %1625, i64* %RAX, align 8, !tbaa !2428
  %1626 = icmp ult i32 %1624, %1618
  %1627 = icmp ult i32 %1624, %1623
  %1628 = or i1 %1626, %1627
  %1629 = zext i1 %1628 to i8
  store i8 %1629, i8* %22, align 1, !tbaa !2433
  %1630 = and i32 %1624, 255
  %1631 = tail call i32 @llvm.ctpop.i32(i32 %1630) #10
  %1632 = trunc i32 %1631 to i8
  %1633 = and i8 %1632, 1
  %1634 = xor i8 %1633, 1
  store i8 %1634, i8* %29, align 1, !tbaa !2447
  %1635 = xor i32 %1623, %1618
  %1636 = xor i32 %1635, %1624
  %1637 = lshr i32 %1636, 4
  %1638 = trunc i32 %1637 to i8
  %1639 = and i8 %1638, 1
  store i8 %1639, i8* %34, align 1, !tbaa !2451
  %1640 = icmp eq i32 %1624, 0
  %1641 = zext i1 %1640 to i8
  store i8 %1641, i8* %37, align 1, !tbaa !2448
  %1642 = lshr i32 %1624, 31
  %1643 = trunc i32 %1642 to i8
  store i8 %1643, i8* %40, align 1, !tbaa !2449
  %1644 = lshr i32 %1618, 31
  %1645 = lshr i32 %1623, 31
  %1646 = xor i32 %1642, %1644
  %1647 = xor i32 %1642, %1645
  %1648 = add nuw nsw i32 %1646, %1647
  %1649 = icmp eq i32 %1648, 2
  %1650 = zext i1 %1649 to i8
  store i8 %1650, i8* %46, align 1, !tbaa !2450
  %1651 = add i64 %1615, 9
  store i64 %1651, i64* %PC, align 8
  store i32 %1624, i32* %1622, align 4
  %1652 = load i64, i64* %PC, align 8
  %1653 = add i64 %1652, -442
  store i64 %1653, i64* %79, align 8, !tbaa !2428
  br label %block_400e46

block_400c0d:                                     ; preds = %block_400c07, %block_400cdd
  %1654 = phi i64 [ %.pre8, %block_400c07 ], [ %214, %block_400cdd ]
  %1655 = load i64, i64* %RBP, align 8
  %1656 = add i64 %1655, -28
  %1657 = add i64 %1654, 3
  store i64 %1657, i64* %PC, align 8
  %1658 = inttoptr i64 %1656 to i32*
  %1659 = load i32, i32* %1658, align 4
  %1660 = zext i32 %1659 to i64
  store i64 %1660, i64* %RAX, align 8, !tbaa !2428
  %1661 = add i64 %1655, -32
  %1662 = add i64 %1654, 6
  store i64 %1662, i64* %PC, align 8
  %1663 = inttoptr i64 %1661 to i32*
  %1664 = load i32, i32* %1663, align 4
  %1665 = zext i32 %1664 to i64
  store i64 %1665, i64* %RCX, align 8, !tbaa !2428
  %1666 = add i64 %1655, -48
  %1667 = add i64 %1654, 9
  store i64 %1667, i64* %PC, align 8
  %1668 = inttoptr i64 %1666 to i32*
  %1669 = load i32, i32* %1668, align 4
  %1670 = add i32 %1669, %1664
  %1671 = add i32 %1670, -2
  %1672 = zext i32 %1671 to i64
  store i64 %1672, i64* %RCX, align 8, !tbaa !2428
  %1673 = lshr i32 %1671, 31
  %1674 = sub i32 %1659, %1671
  %1675 = icmp ult i32 %1659, %1671
  %1676 = zext i1 %1675 to i8
  store i8 %1676, i8* %22, align 1, !tbaa !2433
  %1677 = and i32 %1674, 255
  %1678 = tail call i32 @llvm.ctpop.i32(i32 %1677) #10
  %1679 = trunc i32 %1678 to i8
  %1680 = and i8 %1679, 1
  %1681 = xor i8 %1680, 1
  store i8 %1681, i8* %29, align 1, !tbaa !2447
  %1682 = xor i32 %1671, %1659
  %1683 = xor i32 %1682, %1674
  %1684 = lshr i32 %1683, 4
  %1685 = trunc i32 %1684 to i8
  %1686 = and i8 %1685, 1
  store i8 %1686, i8* %34, align 1, !tbaa !2451
  %1687 = icmp eq i32 %1674, 0
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %37, align 1, !tbaa !2448
  %1689 = lshr i32 %1674, 31
  %1690 = trunc i32 %1689 to i8
  store i8 %1690, i8* %40, align 1, !tbaa !2449
  %1691 = lshr i32 %1659, 31
  %1692 = xor i32 %1673, %1691
  %1693 = xor i32 %1689, %1691
  %1694 = add nuw nsw i32 %1693, %1692
  %1695 = icmp eq i32 %1694, 2
  %1696 = zext i1 %1695 to i8
  store i8 %1696, i8* %46, align 1, !tbaa !2450
  %1697 = icmp ne i8 %1690, 0
  %1698 = xor i1 %1697, %1695
  %.demorgan26 = or i1 %1687, %1698
  %.v27 = select i1 %.demorgan26, i64 20, i64 227
  %1699 = add i64 %1654, %.v27
  store i64 %1699, i64* %79, align 8, !tbaa !2428
  br i1 %.demorgan26, label %block_400c21, label %block_400cf0

block_400bfb:                                     ; preds = %block_400bef
  %1700 = add i64 %117, 3
  store i64 %1700, i64* %PC, align 8
  %1701 = load i32, i32* %84, align 4
  %1702 = zext i32 %1701 to i64
  store i64 %1702, i64* %RAX, align 8, !tbaa !2428
  %1703 = add i64 %81, -40
  %1704 = add i64 %117, 6
  store i64 %1704, i64* %PC, align 8
  %1705 = inttoptr i64 %1703 to i32*
  %1706 = load i32, i32* %1705, align 4
  %1707 = sub i32 %1701, %1706
  %1708 = icmp ult i32 %1701, %1706
  %1709 = zext i1 %1708 to i8
  store i8 %1709, i8* %22, align 1, !tbaa !2433
  %1710 = and i32 %1707, 255
  %1711 = tail call i32 @llvm.ctpop.i32(i32 %1710) #10
  %1712 = trunc i32 %1711 to i8
  %1713 = and i8 %1712, 1
  %1714 = xor i8 %1713, 1
  store i8 %1714, i8* %29, align 1, !tbaa !2447
  %1715 = xor i32 %1706, %1701
  %1716 = xor i32 %1715, %1707
  %1717 = lshr i32 %1716, 4
  %1718 = trunc i32 %1717 to i8
  %1719 = and i8 %1718, 1
  store i8 %1719, i8* %34, align 1, !tbaa !2451
  %1720 = icmp eq i32 %1707, 0
  %1721 = zext i1 %1720 to i8
  store i8 %1721, i8* %37, align 1, !tbaa !2448
  %1722 = lshr i32 %1707, 31
  %1723 = trunc i32 %1722 to i8
  store i8 %1723, i8* %40, align 1, !tbaa !2449
  %1724 = lshr i32 %1701, 31
  %1725 = lshr i32 %1706, 31
  %1726 = xor i32 %1725, %1724
  %1727 = xor i32 %1722, %1724
  %1728 = add nuw nsw i32 %1727, %1726
  %1729 = icmp eq i32 %1728, 2
  %1730 = zext i1 %1729 to i8
  store i8 %1730, i8* %46, align 1, !tbaa !2450
  %1731 = icmp ne i8 %1723, 0
  %1732 = xor i1 %1731, %1729
  %.v25 = select i1 %1732, i64 12, i64 250
  %1733 = add i64 %117, %.v25
  store i64 %1733, i64* %79, align 8, !tbaa !2428
  br i1 %1732, label %block_400c07, label %block_400cf5

block_400b57:                                     ; preds = %block_400b63, %block_400b30
  %1734 = phi i64 [ %2067, %block_400b63 ], [ %.pre, %block_400b30 ]
  %1735 = load i64, i64* %RBP, align 8
  %1736 = add i64 %1735, -72
  %1737 = add i64 %1734, 3
  store i64 %1737, i64* %PC, align 8
  %1738 = inttoptr i64 %1736 to i32*
  %1739 = load i32, i32* %1738, align 4
  %1740 = zext i32 %1739 to i64
  store i64 %1740, i64* %RAX, align 8, !tbaa !2428
  %1741 = add i64 %1735, -20
  %1742 = add i64 %1734, 6
  store i64 %1742, i64* %PC, align 8
  %1743 = inttoptr i64 %1741 to i32*
  %1744 = load i32, i32* %1743, align 4
  %1745 = sub i32 %1739, %1744
  %1746 = icmp ult i32 %1739, %1744
  %1747 = zext i1 %1746 to i8
  store i8 %1747, i8* %22, align 1, !tbaa !2433
  %1748 = and i32 %1745, 255
  %1749 = tail call i32 @llvm.ctpop.i32(i32 %1748) #10
  %1750 = trunc i32 %1749 to i8
  %1751 = and i8 %1750, 1
  %1752 = xor i8 %1751, 1
  store i8 %1752, i8* %29, align 1, !tbaa !2447
  %1753 = xor i32 %1744, %1739
  %1754 = xor i32 %1753, %1745
  %1755 = lshr i32 %1754, 4
  %1756 = trunc i32 %1755 to i8
  %1757 = and i8 %1756, 1
  store i8 %1757, i8* %34, align 1, !tbaa !2451
  %1758 = icmp eq i32 %1745, 0
  %1759 = zext i1 %1758 to i8
  store i8 %1759, i8* %37, align 1, !tbaa !2448
  %1760 = lshr i32 %1745, 31
  %1761 = trunc i32 %1760 to i8
  store i8 %1761, i8* %40, align 1, !tbaa !2449
  %1762 = lshr i32 %1739, 31
  %1763 = lshr i32 %1744, 31
  %1764 = xor i32 %1763, %1762
  %1765 = xor i32 %1760, %1762
  %1766 = add nuw nsw i32 %1765, %1764
  %1767 = icmp eq i32 %1766, 2
  %1768 = zext i1 %1767 to i8
  store i8 %1768, i8* %46, align 1, !tbaa !2450
  %1769 = icmp ne i8 %1761, 0
  %1770 = xor i1 %1769, %1767
  %.demorgan = or i1 %1758, %1770
  %.v = select i1 %.demorgan, i64 12, i64 44
  %1771 = add i64 %1734, %.v
  store i64 %1771, i64* %79, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400b63, label %block_400b83

block_400d6c:                                     ; preds = %block_400d66, %block_401005
  %1772 = phi i64 [ %.pre13, %block_400d66 ], [ %1256, %block_401005 ]
  %MEMORY.9 = phi %struct.Memory* [ %1337, %block_400d66 ], [ %1881, %block_401005 ]
  %1773 = load i64, i64* %RBP, align 8
  %1774 = add i64 %1773, -60
  %1775 = add i64 %1772, 3
  store i64 %1775, i64* %PC, align 8
  %1776 = inttoptr i64 %1774 to i32*
  %1777 = load i32, i32* %1776, align 4
  %1778 = zext i32 %1777 to i64
  store i64 %1778, i64* %RAX, align 8, !tbaa !2428
  %1779 = add i64 %1773, -52
  %1780 = add i64 %1772, 6
  store i64 %1780, i64* %PC, align 8
  %1781 = inttoptr i64 %1779 to i32*
  %1782 = load i32, i32* %1781, align 4
  %1783 = sub i32 %1777, %1782
  %1784 = icmp ult i32 %1777, %1782
  %1785 = zext i1 %1784 to i8
  store i8 %1785, i8* %22, align 1, !tbaa !2433
  %1786 = and i32 %1783, 255
  %1787 = tail call i32 @llvm.ctpop.i32(i32 %1786) #10
  %1788 = trunc i32 %1787 to i8
  %1789 = and i8 %1788, 1
  %1790 = xor i8 %1789, 1
  store i8 %1790, i8* %29, align 1, !tbaa !2447
  %1791 = xor i32 %1782, %1777
  %1792 = xor i32 %1791, %1783
  %1793 = lshr i32 %1792, 4
  %1794 = trunc i32 %1793 to i8
  %1795 = and i8 %1794, 1
  store i8 %1795, i8* %34, align 1, !tbaa !2451
  %1796 = icmp eq i32 %1783, 0
  %1797 = zext i1 %1796 to i8
  store i8 %1797, i8* %37, align 1, !tbaa !2448
  %1798 = lshr i32 %1783, 31
  %1799 = trunc i32 %1798 to i8
  store i8 %1799, i8* %40, align 1, !tbaa !2449
  %1800 = lshr i32 %1777, 31
  %1801 = lshr i32 %1782, 31
  %1802 = xor i32 %1801, %1800
  %1803 = xor i32 %1798, %1800
  %1804 = add nuw nsw i32 %1803, %1802
  %1805 = icmp eq i32 %1804, 2
  %1806 = zext i1 %1805 to i8
  store i8 %1806, i8* %46, align 1, !tbaa !2450
  %1807 = icmp ne i8 %1799, 0
  %1808 = xor i1 %1807, %1805
  %.v33 = select i1 %1808, i64 12, i64 676
  %1809 = add i64 %1772, %.v33
  store i64 %1809, i64* %79, align 8, !tbaa !2428
  br i1 %1808, label %block_400d78, label %block_401010

block_400d78:                                     ; preds = %block_400d6c
  store i32 0, i32* %2192, align 1, !tbaa !2454
  store i32 0, i32* %2194, align 1, !tbaa !2454
  store i32 0, i32* %2195, align 1, !tbaa !2454
  store i32 0, i32* %2197, align 1, !tbaa !2454
  %1810 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 40) to i64*), align 8
  %1811 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1810, i64* %1811, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2200, align 1, !tbaa !2452
  %1812 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 48) to i64*), align 16
  %1813 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1812, i64* %1813, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2202, align 1, !tbaa !2452
  %1814 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 56) to i64*), align 8
  %1815 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %9, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1814, i64* %1815, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2205, align 1, !tbaa !2452
  %1816 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 64) to i64*), align 16
  %1817 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %10, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1816, i64* %1817, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2208, align 1, !tbaa !2452
  %1818 = add i64 %1809, 38
  store i64 %1818, i64* %PC, align 8
  %1819 = load i32, i32* %1776, align 4
  %1820 = shl i32 %1819, 1
  %1821 = icmp slt i32 %1819, 0
  %1822 = icmp slt i32 %1820, 0
  %1823 = xor i1 %1821, %1822
  %1824 = zext i32 %1820 to i64
  store i64 %1824, i64* %RAX, align 8, !tbaa !2428
  %.lobit34 = lshr i32 %1819, 31
  %1825 = trunc i32 %.lobit34 to i8
  store i8 %1825, i8* %22, align 1, !tbaa !2432
  %1826 = and i32 %1820, 254
  %1827 = tail call i32 @llvm.ctpop.i32(i32 %1826) #10
  %1828 = trunc i32 %1827 to i8
  %1829 = and i8 %1828, 1
  %1830 = xor i8 %1829, 1
  store i8 %1830, i8* %29, align 1, !tbaa !2432
  store i8 0, i8* %34, align 1, !tbaa !2432
  %1831 = icmp eq i32 %1820, 0
  %1832 = zext i1 %1831 to i8
  store i8 %1832, i8* %37, align 1, !tbaa !2432
  %1833 = lshr i32 %1819, 30
  %1834 = trunc i32 %1833 to i8
  %1835 = and i8 %1834, 1
  store i8 %1835, i8* %40, align 1, !tbaa !2432
  %1836 = zext i1 %1823 to i8
  store i8 %1836, i8* %46, align 1, !tbaa !2432
  %1837 = add i64 %1773, -64
  %1838 = add i64 %1809, 44
  store i64 %1838, i64* %PC, align 8
  %1839 = inttoptr i64 %1837 to i32*
  store i32 %1820, i32* %1839, align 4
  %1840 = load i64, i64* %RBP, align 8
  %1841 = add i64 %1840, -24
  %1842 = load i64, i64* %PC, align 8
  %1843 = add i64 %1842, 3
  store i64 %1843, i64* %PC, align 8
  %1844 = inttoptr i64 %1841 to i32*
  %1845 = load i32, i32* %1844, align 4
  %1846 = zext i32 %1845 to i64
  store i64 %1846, i64* %RAX, align 8, !tbaa !2428
  %1847 = sitofp i32 %1845 to double
  %1848 = load i64, i64* %2210, align 1
  %1849 = load double, double* %2211, align 1
  %1850 = fmul double %1847, %1849
  store double %1850, double* %2209, align 1, !tbaa !2452
  %1851 = add i64 %1840, -64
  %1852 = add i64 %1842, 14
  store i64 %1852, i64* %PC, align 8
  %1853 = inttoptr i64 %1851 to i32*
  %1854 = load i32, i32* %1853, align 4
  %1855 = zext i32 %1854 to i64
  store i64 %1855, i64* %RAX, align 8, !tbaa !2428
  %1856 = sext i32 %1854 to i64
  %1857 = lshr i64 %1856, 32
  store i64 %1857, i64* %2183, align 8, !tbaa !2428
  %1858 = add i64 %1840, -48
  %1859 = add i64 %1842, 18
  store i64 %1859, i64* %PC, align 8
  %1860 = inttoptr i64 %1858 to i32*
  %1861 = load i32, i32* %1860, align 4
  %1862 = sext i32 %1861 to i64
  %1863 = shl nuw i64 %1857, 32
  %1864 = or i64 %1863, %1855
  %1865 = sdiv i64 %1864, %1862
  %1866 = shl i64 %1865, 32
  %1867 = ashr exact i64 %1866, 32
  %1868 = icmp eq i64 %1865, %1867
  br i1 %1868, label %1871, label %1869

; <label>:1869:                                   ; preds = %block_400d78
  %1870 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1859, %struct.Memory* %MEMORY.9) #11
  %.pre14 = load i32, i32* %EAX, align 4
  %.pre15 = load i64, i64* %PC, align 8
  %.pre16 = load double, double* %2209, align 1
  %.pre17 = load i64, i64* %2210, align 1
  %.pre18 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:1871:                                   ; preds = %block_400d78
  %1872 = srem i64 %1864, %1862
  %1873 = and i64 %1865, 4294967295
  store i64 %1873, i64* %2186, align 8, !tbaa !2428
  %1874 = and i64 %1872, 4294967295
  store i64 %1874, i64* %2187, align 8, !tbaa !2428
  store i8 0, i8* %22, align 1, !tbaa !2433
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %34, align 1, !tbaa !2451
  store i8 0, i8* %37, align 1, !tbaa !2448
  store i8 0, i8* %40, align 1, !tbaa !2449
  store i8 0, i8* %46, align 1, !tbaa !2450
  %1875 = trunc i64 %1865 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %1871, %1869
  %1876 = phi i64 [ %.pre18, %1869 ], [ %1840, %1871 ]
  %1877 = phi i64 [ %.pre17, %1869 ], [ %1848, %1871 ]
  %1878 = phi double [ %.pre16, %1869 ], [ %1850, %1871 ]
  %1879 = phi i64 [ %.pre15, %1869 ], [ %1859, %1871 ]
  %1880 = phi i32 [ %.pre14, %1869 ], [ %1875, %1871 ]
  %1881 = phi %struct.Memory* [ %1870, %1869 ], [ %MEMORY.9, %1871 ]
  %1882 = sitofp i32 %1880 to double
  store double %1882, double* %2206, align 1, !tbaa !2452
  %1883 = fdiv double %1878, %1882
  store double %1883, double* %2209, align 1, !tbaa !2452
  store i64 %1877, i64* %2210, align 1, !tbaa !2452
  %1884 = add i64 %1876, -120
  %1885 = add i64 %1879, 13
  store i64 %1885, i64* %PC, align 8
  %1886 = inttoptr i64 %1884 to double*
  store double %1883, double* %1886, align 8
  %1887 = load i64, i64* %RBP, align 8
  %1888 = add i64 %1887, -120
  %1889 = load i64, i64* %PC, align 8
  %1890 = add i64 %1889, 5
  store i64 %1890, i64* %PC, align 8
  %1891 = load double, double* %2203, align 1
  %1892 = inttoptr i64 %1888 to double*
  %1893 = load double, double* %1892, align 8
  %1894 = fmul double %1891, %1893
  store double %1894, double* %2203, align 1, !tbaa !2452
  %1895 = add i64 %1887, -176
  %1896 = add i64 %1889, 13
  store i64 %1896, i64* %PC, align 8
  %1897 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1898 = load i64, i64* %1897, align 1
  %1899 = inttoptr i64 %1895 to i64*
  store i64 %1898, i64* %1899, align 8
  %1900 = load i64, i64* %PC, align 8
  %1901 = load <2 x i32>, <2 x i32>* %2212, align 1
  %1902 = load <2 x i32>, <2 x i32>* %2214, align 1
  %1903 = extractelement <2 x i32> %1901, i32 0
  store i32 %1903, i32* %2192, align 1, !tbaa !2455
  %1904 = extractelement <2 x i32> %1901, i32 1
  store i32 %1904, i32* %2194, align 1, !tbaa !2455
  %1905 = extractelement <2 x i32> %1902, i32 0
  store i32 %1905, i32* %2195, align 1, !tbaa !2455
  %1906 = extractelement <2 x i32> %1902, i32 1
  store i32 %1906, i32* %2197, align 1, !tbaa !2455
  %1907 = load i64, i64* %RBP, align 8
  %1908 = add i64 %1907, -184
  %1909 = add i64 %1900, 11
  store i64 %1909, i64* %PC, align 8
  %1910 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  %1911 = load i64, i64* %1910, align 1
  %1912 = inttoptr i64 %1908 to i64*
  store i64 %1911, i64* %1912, align 8
  %1913 = load i64, i64* %RBP, align 8
  %1914 = add i64 %1913, -192
  %1915 = load i64, i64* %PC, align 8
  %1916 = add i64 %1915, 8
  store i64 %1916, i64* %PC, align 8
  %1917 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  %1918 = load i64, i64* %1917, align 1
  %1919 = inttoptr i64 %1914 to i64*
  store i64 %1918, i64* %1919, align 8
  %1920 = load i64, i64* %PC, align 8
  %1921 = add i64 %1920, -2179
  %1922 = add i64 %1920, 5
  %1923 = load i64, i64* %14, align 8, !tbaa !2428
  %1924 = add i64 %1923, -8
  %1925 = inttoptr i64 %1924 to i64*
  store i64 %1922, i64* %1925, align 8
  store i64 %1924, i64* %14, align 8, !tbaa !2428
  store i64 %1921, i64* %PC, align 8, !alias.scope !2457, !noalias !2460
  %1926 = load double, double* %2215, align 8, !alias.scope !2457, !noalias !2460
  %1927 = load i64, i64* %1925, align 8
  store i64 %1923, i64* %RSP, align 8, !alias.scope !2457, !noalias !2460
  %1928 = tail call double @sin(double %1926)
  %.repack = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 0, i64* %.repack, align 8
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %1929, align 8
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 2
  store i64 0, i64* %1930, align 8
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 3
  store i64 0, i64* %1931, align 8
  store double %1928, double* %2215, align 8, !alias.scope !2457, !noalias !2460
  %1932 = load i64, i64* %RBP, align 8
  %1933 = add i64 %1932, -160
  %1934 = add i64 %1927, 8
  store i64 %1934, i64* %PC, align 8
  %1935 = inttoptr i64 %1933 to double*
  store double %1928, double* %1935, align 8
  %1936 = load i64, i64* %RBP, align 8
  %1937 = add i64 %1936, -184
  %1938 = load i64, i64* %PC, align 8
  %1939 = add i64 %1938, 8
  store i64 %1939, i64* %PC, align 8
  %1940 = inttoptr i64 %1937 to double*
  %1941 = load double, double* %1940, align 8
  store double %1941, double* %2189, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2191, align 1, !tbaa !2452
  %1942 = add i64 %1936, -160
  %1943 = add i64 %1938, 16
  store i64 %1943, i64* %PC, align 8
  %1944 = inttoptr i64 %1942 to double*
  %1945 = load double, double* %1944, align 8
  %1946 = fmul double %1941, %1945
  store double %1946, double* %2189, align 1, !tbaa !2452
  store i64 0, i64* %2190, align 1, !tbaa !2452
  %1947 = add i64 %1938, 24
  store i64 %1947, i64* %PC, align 8
  %1948 = load double, double* %1944, align 8
  %1949 = fmul double %1946, %1948
  store double %1949, double* %2189, align 1, !tbaa !2452
  store i64 0, i64* %2190, align 1, !tbaa !2452
  %1950 = add i64 %1936, -144
  %1951 = add i64 %1938, 32
  store i64 %1951, i64* %PC, align 8
  %1952 = inttoptr i64 %1950 to double*
  store double %1949, double* %1952, align 8
  %1953 = load i64, i64* %RBP, align 8
  %1954 = add i64 %1953, -120
  %1955 = load i64, i64* %PC, align 8
  %1956 = add i64 %1955, 5
  store i64 %1956, i64* %PC, align 8
  %1957 = inttoptr i64 %1954 to i64*
  %1958 = load i64, i64* %1957, align 8
  %1959 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1958, i64* %1959, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2191, align 1, !tbaa !2452
  %1960 = add i64 %1955, -2224
  %1961 = add i64 %1955, 10
  %1962 = load i64, i64* %14, align 8, !tbaa !2428
  %1963 = add i64 %1962, -8
  %1964 = inttoptr i64 %1963 to i64*
  store i64 %1961, i64* %1964, align 8
  store i64 %1963, i64* %14, align 8, !tbaa !2428
  store i64 %1960, i64* %PC, align 8, !alias.scope !2462, !noalias !2465
  %1965 = load double, double* %2215, align 8, !alias.scope !2462, !noalias !2465
  %1966 = load i64, i64* %1964, align 8
  store i64 %1962, i64* %RSP, align 8, !alias.scope !2462, !noalias !2465
  %1967 = tail call double @sin(double %1965)
  %.repack38 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 0, i64* %.repack38, align 8
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %1968, align 8
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 2
  store i64 0, i64* %1969, align 8
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 3
  store i64 0, i64* %1970, align 8
  store double %1967, double* %2215, align 8, !alias.scope !2462, !noalias !2465
  %1971 = load i64, i64* %RBP, align 8
  %1972 = add i64 %1971, -136
  %1973 = add i64 %1966, 8
  store i64 %1973, i64* %PC, align 8
  %1974 = inttoptr i64 %1972 to double*
  store double %1967, double* %1974, align 8
  %1975 = load i64, i64* %RBP, align 8
  %1976 = add i64 %1975, -192
  %1977 = load i64, i64* %PC, align 8
  %1978 = add i64 %1977, 8
  store i64 %1978, i64* %PC, align 8
  %1979 = inttoptr i64 %1976 to i64*
  %1980 = load i64, i64* %1979, align 8
  %1981 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1980, i64* %1981, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2191, align 1, !tbaa !2452
  %1982 = add i64 %1975, -152
  %1983 = add i64 %1977, 16
  store i64 %1983, i64* %PC, align 8
  %1984 = inttoptr i64 %1982 to i64*
  store i64 %1980, i64* %1984, align 8
  %1985 = load i64, i64* %RBP, align 8
  %1986 = add i64 %1985, -176
  %1987 = load i64, i64* %PC, align 8
  %1988 = add i64 %1987, 8
  store i64 %1988, i64* %PC, align 8
  %1989 = inttoptr i64 %1986 to i64*
  %1990 = load i64, i64* %1989, align 8
  %1991 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1990, i64* %1991, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2200, align 1, !tbaa !2452
  %1992 = add i64 %1985, -128
  %1993 = add i64 %1987, 13
  store i64 %1993, i64* %PC, align 8
  %1994 = inttoptr i64 %1992 to i64*
  store i64 %1990, i64* %1994, align 8
  %1995 = load i64, i64* %RBP, align 8
  %1996 = add i64 %1995, -36
  %1997 = load i64, i64* %PC, align 8
  %1998 = add i64 %1997, 7
  store i64 %1998, i64* %PC, align 8
  %1999 = inttoptr i64 %1996 to i32*
  store i32 1, i32* %1999, align 4
  %.pre19 = load i64, i64* %PC, align 8
  br label %block_400e46

block_400b63:                                     ; preds = %block_400b57
  %2000 = add i64 %1735, -16
  %2001 = add i64 %1771, 4
  store i64 %2001, i64* %PC, align 8
  %2002 = inttoptr i64 %2000 to i64*
  %2003 = load i64, i64* %2002, align 8
  store i64 %2003, i64* %RAX, align 8, !tbaa !2428
  %2004 = add i64 %1771, 8
  store i64 %2004, i64* %PC, align 8
  %2005 = load i32, i32* %1738, align 4
  %2006 = sext i32 %2005 to i64
  store i64 %2006, i64* %RCX, align 8, !tbaa !2428
  %2007 = shl nsw i64 %2006, 2
  %2008 = add i64 %2007, %2003
  %2009 = add i64 %1771, 11
  store i64 %2009, i64* %PC, align 8
  %2010 = inttoptr i64 %2008 to i32*
  %2011 = load i32, i32* %2010, align 4
  %2012 = zext i32 %2011 to i64
  store i64 %2012, i64* %RDX, align 8, !tbaa !2428
  %2013 = add i64 %1735, -96
  %2014 = add i64 %1771, 15
  store i64 %2014, i64* %PC, align 8
  %2015 = inttoptr i64 %2013 to i32*
  %2016 = load i32, i32* %2015, align 4
  %2017 = sext i32 %2011 to i64
  %2018 = sext i32 %2016 to i64
  %2019 = mul nsw i64 %2018, %2017
  %2020 = trunc i64 %2019 to i32
  %2021 = and i64 %2019, 4294967295
  store i64 %2021, i64* %RDX, align 8, !tbaa !2428
  %2022 = shl i64 %2019, 32
  %2023 = ashr exact i64 %2022, 32
  %2024 = icmp ne i64 %2023, %2019
  %2025 = zext i1 %2024 to i8
  store i8 %2025, i8* %22, align 1, !tbaa !2433
  %2026 = and i32 %2020, 255
  %2027 = tail call i32 @llvm.ctpop.i32(i32 %2026) #10
  %2028 = trunc i32 %2027 to i8
  %2029 = and i8 %2028, 1
  %2030 = xor i8 %2029, 1
  store i8 %2030, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %34, align 1, !tbaa !2451
  store i8 0, i8* %37, align 1, !tbaa !2448
  %2031 = lshr i32 %2020, 31
  %2032 = trunc i32 %2031 to i8
  store i8 %2032, i8* %40, align 1, !tbaa !2449
  store i8 %2025, i8* %46, align 1, !tbaa !2450
  %2033 = trunc i64 %2019 to i32
  %2034 = add i64 %1771, 18
  store i64 %2034, i64* %PC, align 8
  store i32 %2033, i32* %2015, align 4
  %2035 = load i64, i64* %RBP, align 8
  %2036 = add i64 %2035, -72
  %2037 = load i64, i64* %PC, align 8
  %2038 = add i64 %2037, 3
  store i64 %2038, i64* %PC, align 8
  %2039 = inttoptr i64 %2036 to i32*
  %2040 = load i32, i32* %2039, align 4
  %2041 = add i32 %2040, 1
  %2042 = zext i32 %2041 to i64
  store i64 %2042, i64* %RAX, align 8, !tbaa !2428
  %2043 = icmp eq i32 %2040, -1
  %2044 = icmp eq i32 %2041, 0
  %2045 = or i1 %2043, %2044
  %2046 = zext i1 %2045 to i8
  store i8 %2046, i8* %22, align 1, !tbaa !2433
  %2047 = and i32 %2041, 255
  %2048 = tail call i32 @llvm.ctpop.i32(i32 %2047) #10
  %2049 = trunc i32 %2048 to i8
  %2050 = and i8 %2049, 1
  %2051 = xor i8 %2050, 1
  store i8 %2051, i8* %29, align 1, !tbaa !2447
  %2052 = xor i32 %2040, %2041
  %2053 = lshr i32 %2052, 4
  %2054 = trunc i32 %2053 to i8
  %2055 = and i8 %2054, 1
  store i8 %2055, i8* %34, align 1, !tbaa !2451
  %2056 = icmp eq i32 %2041, 0
  %2057 = zext i1 %2056 to i8
  store i8 %2057, i8* %37, align 1, !tbaa !2448
  %2058 = lshr i32 %2041, 31
  %2059 = trunc i32 %2058 to i8
  store i8 %2059, i8* %40, align 1, !tbaa !2449
  %2060 = lshr i32 %2040, 31
  %2061 = xor i32 %2058, %2060
  %2062 = add nuw nsw i32 %2061, %2058
  %2063 = icmp eq i32 %2062, 2
  %2064 = zext i1 %2063 to i8
  store i8 %2064, i8* %46, align 1, !tbaa !2450
  %2065 = add i64 %2037, 9
  store i64 %2065, i64* %PC, align 8
  store i32 %2041, i32* %2039, align 4
  %2066 = load i64, i64* %PC, align 8
  %2067 = add i64 %2066, -39
  store i64 %2067, i64* %79, align 8, !tbaa !2428
  br label %block_400b57

block_400c07:                                     ; preds = %block_400bfb
  %2068 = add i64 %1733, 3
  store i64 %2068, i64* %PC, align 8
  %2069 = load i32, i32* %84, align 4
  %2070 = zext i32 %2069 to i64
  store i64 %2070, i64* %RAX, align 8, !tbaa !2428
  %2071 = add i64 %81, -28
  %2072 = add i64 %1733, 6
  store i64 %2072, i64* %PC, align 8
  %2073 = inttoptr i64 %2071 to i32*
  store i32 %2069, i32* %2073, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_400c0d

block_400cf5:                                     ; preds = %block_400bfb, %block_400cf0
  %2074 = phi i64 [ %2216, %block_400cf0 ], [ %1733, %block_400bfb ]
  %2075 = phi i64 [ %.pre10, %block_400cf0 ], [ %81, %block_400bfb ]
  %2076 = add i64 %2075, -52
  %2077 = add i64 %2074, 3
  store i64 %2077, i64* %PC, align 8
  %2078 = inttoptr i64 %2076 to i32*
  %2079 = load i32, i32* %2078, align 4
  %2080 = zext i32 %2079 to i64
  %2081 = shl nuw i64 %2080, 32
  %2082 = ashr i64 %2081, 33
  %2083 = trunc i32 %2079 to i8
  %2084 = and i8 %2083, 1
  %2085 = trunc i64 %2082 to i32
  %2086 = and i64 %2082, 4294967295
  store i64 %2086, i64* %RAX, align 8, !tbaa !2428
  store i8 %2084, i8* %22, align 1, !tbaa !2432
  %2087 = and i32 %2085, 255
  %2088 = tail call i32 @llvm.ctpop.i32(i32 %2087) #10
  %2089 = trunc i32 %2088 to i8
  %2090 = and i8 %2089, 1
  %2091 = xor i8 %2090, 1
  store i8 %2091, i8* %29, align 1, !tbaa !2432
  store i8 0, i8* %34, align 1, !tbaa !2432
  %2092 = icmp eq i32 %2085, 0
  %2093 = zext i1 %2092 to i8
  store i8 %2093, i8* %37, align 1, !tbaa !2432
  %2094 = lshr i64 %2082, 31
  %2095 = trunc i64 %2094 to i8
  %2096 = and i8 %2095, 1
  store i8 %2096, i8* %40, align 1, !tbaa !2432
  store i8 0, i8* %46, align 1, !tbaa !2432
  %2097 = add i64 %2075, -68
  %2098 = trunc i64 %2082 to i32
  %2099 = add i64 %2074, 9
  store i64 %2099, i64* %PC, align 8
  %2100 = inttoptr i64 %2097 to i32*
  store i32 %2098, i32* %2100, align 4
  %.pre11 = load i64, i64* %PC, align 8
  br label %block_400cfe

block_401028:                                     ; preds = %block_400b90
  %2101 = load i64, i64* %RSP, align 8
  %2102 = add i64 %2101, 192
  store i64 %2102, i64* %RSP, align 8, !tbaa !2428
  %2103 = icmp ugt i64 %2101, -193
  %2104 = zext i1 %2103 to i8
  store i8 %2104, i8* %22, align 1, !tbaa !2433
  %2105 = trunc i64 %2102 to i32
  %2106 = and i32 %2105, 255
  %2107 = tail call i32 @llvm.ctpop.i32(i32 %2106) #10
  %2108 = trunc i32 %2107 to i8
  %2109 = and i8 %2108, 1
  %2110 = xor i8 %2109, 1
  store i8 %2110, i8* %29, align 1, !tbaa !2447
  %2111 = xor i64 %2101, %2102
  %2112 = lshr i64 %2111, 4
  %2113 = trunc i64 %2112 to i8
  %2114 = and i8 %2113, 1
  store i8 %2114, i8* %34, align 1, !tbaa !2451
  %2115 = icmp eq i64 %2102, 0
  %2116 = zext i1 %2115 to i8
  store i8 %2116, i8* %37, align 1, !tbaa !2448
  %2117 = lshr i64 %2102, 63
  %2118 = trunc i64 %2117 to i8
  store i8 %2118, i8* %40, align 1, !tbaa !2449
  %2119 = lshr i64 %2101, 63
  %2120 = xor i64 %2117, %2119
  %2121 = add nuw nsw i64 %2120, %2117
  %2122 = icmp eq i64 %2121, 2
  %2123 = zext i1 %2122 to i8
  store i8 %2123, i8* %46, align 1, !tbaa !2450
  %2124 = add i64 %1555, 8
  store i64 %2124, i64* %PC, align 8
  %2125 = add i64 %2101, 200
  %2126 = inttoptr i64 %2102 to i64*
  %2127 = load i64, i64* %2126, align 8
  store i64 %2127, i64* %RBP, align 8, !tbaa !2428
  store i64 %2125, i64* %14, align 8, !tbaa !2428
  %2128 = add i64 %1555, 9
  store i64 %2128, i64* %PC, align 8
  %2129 = inttoptr i64 %2125 to i64*
  %2130 = load i64, i64* %2129, align 8
  store i64 %2130, i64* %79, align 8, !tbaa !2428
  %2131 = add i64 %2101, 208
  store i64 %2131, i64* %14, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.6

block_400c27:                                     ; preds = %block_400c21, %block_400c33
  %2132 = phi i64 [ %.pre9, %block_400c21 ], [ %1147, %block_400c33 ]
  %2133 = load i64, i64* %RBP, align 8
  %2134 = add i64 %2133, -36
  %2135 = add i64 %2132, 3
  store i64 %2135, i64* %PC, align 8
  %2136 = inttoptr i64 %2134 to i32*
  %2137 = load i32, i32* %2136, align 4
  %2138 = zext i32 %2137 to i64
  store i64 %2138, i64* %RAX, align 8, !tbaa !2428
  %2139 = add i64 %2133, -56
  %2140 = add i64 %2132, 6
  store i64 %2140, i64* %PC, align 8
  %2141 = inttoptr i64 %2139 to i32*
  %2142 = load i32, i32* %2141, align 4
  %2143 = sub i32 %2137, %2142
  %2144 = icmp ult i32 %2137, %2142
  %2145 = zext i1 %2144 to i8
  store i8 %2145, i8* %22, align 1, !tbaa !2433
  %2146 = and i32 %2143, 255
  %2147 = tail call i32 @llvm.ctpop.i32(i32 %2146) #10
  %2148 = trunc i32 %2147 to i8
  %2149 = and i8 %2148, 1
  %2150 = xor i8 %2149, 1
  store i8 %2150, i8* %29, align 1, !tbaa !2447
  %2151 = xor i32 %2142, %2137
  %2152 = xor i32 %2151, %2143
  %2153 = lshr i32 %2152, 4
  %2154 = trunc i32 %2153 to i8
  %2155 = and i8 %2154, 1
  store i8 %2155, i8* %34, align 1, !tbaa !2451
  %2156 = icmp eq i32 %2143, 0
  %2157 = zext i1 %2156 to i8
  store i8 %2157, i8* %37, align 1, !tbaa !2448
  %2158 = lshr i32 %2143, 31
  %2159 = trunc i32 %2158 to i8
  store i8 %2159, i8* %40, align 1, !tbaa !2449
  %2160 = lshr i32 %2137, 31
  %2161 = lshr i32 %2142, 31
  %2162 = xor i32 %2161, %2160
  %2163 = xor i32 %2158, %2160
  %2164 = add nuw nsw i32 %2163, %2162
  %2165 = icmp eq i32 %2164, 2
  %2166 = zext i1 %2165 to i8
  store i8 %2166, i8* %46, align 1, !tbaa !2450
  %2167 = icmp ne i8 %2159, 0
  %2168 = xor i1 %2167, %2165
  %.demorgan28 = or i1 %2156, %2168
  %.v29 = select i1 %.demorgan28, i64 12, i64 182
  %2169 = add i64 %2132, %.v29
  store i64 %2169, i64* %79, align 8, !tbaa !2428
  br i1 %.demorgan28, label %block_400c33, label %block_400cdd

block_400b83:                                     ; preds = %block_400b57
  %2170 = add i64 %1735, -88
  %2171 = add i64 %1771, 7
  store i64 %2171, i64* %PC, align 8
  %2172 = inttoptr i64 %2170 to i32*
  store i32 1, i32* %2172, align 4
  %2173 = load i64, i64* %RBP, align 8
  %2174 = add i64 %2173, -20
  %2175 = load i64, i64* %PC, align 8
  %2176 = add i64 %2175, 3
  store i64 %2176, i64* %PC, align 8
  %2177 = inttoptr i64 %2174 to i32*
  %2178 = load i32, i32* %2177, align 4
  %2179 = zext i32 %2178 to i64
  store i64 %2179, i64* %RAX, align 8, !tbaa !2428
  %2180 = add i64 %2173, -72
  %2181 = add i64 %2175, 6
  store i64 %2181, i64* %PC, align 8
  %2182 = inttoptr i64 %2180 to i32*
  store i32 %2178, i32* %2182, align 4
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2185 = bitcast %union.anon* %2184 to i32*
  %2186 = getelementptr inbounds %union.anon, %union.anon* %2184, i64 0, i32 0
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2188 = bitcast [32 x %union.VectorReg]* %6 to i8*
  %2189 = bitcast [32 x %union.VectorReg]* %6 to double*
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %2191 = bitcast i64* %2190 to double*
  %2192 = bitcast [32 x %union.VectorReg]* %6 to i32*
  %2193 = getelementptr inbounds i8, i8* %2188, i64 4
  %2194 = bitcast i8* %2193 to i32*
  %2195 = bitcast i64* %2190 to i32*
  %2196 = getelementptr inbounds i8, i8* %2188, i64 12
  %2197 = bitcast i8* %2196 to i32*
  %2198 = bitcast %union.VectorReg* %7 to double*
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %2200 = bitcast i64* %2199 to double*
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %2202 = bitcast i64* %2201 to double*
  %2203 = bitcast %union.VectorReg* %9 to double*
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %2205 = bitcast i64* %2204 to double*
  %2206 = bitcast %union.VectorReg* %10 to double*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %2208 = bitcast i64* %2207 to double*
  %2209 = bitcast %union.VectorReg* %11 to double*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %2211 = bitcast %union.VectorReg* %10 to double*
  %2212 = bitcast %union.VectorReg* %9 to <2 x i32>*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %2214 = bitcast i64* %2213 to <2 x i32>*
  %2215 = bitcast [32 x %union.VectorReg]* %6 to double*
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400b90

block_400cf0:                                     ; preds = %block_400c0d
  %2216 = add i64 %1699, 5
  store i64 %2216, i64* %79, align 8, !tbaa !2428
  %.pre10 = load i64, i64* %RBP, align 8
  br label %block_400cf5

block_400f80:                                     ; preds = %block_400e72
  %2217 = add i64 %1489, -28
  %2218 = add i64 %1525, 8
  store i64 %2218, i64* %PC, align 8
  %2219 = inttoptr i64 %2217 to i32*
  %2220 = load i32, i32* %2219, align 4
  %2221 = add i32 %2220, 2
  %2222 = zext i32 %2221 to i64
  store i64 %2222, i64* %RAX, align 8, !tbaa !2428
  %2223 = icmp ugt i32 %2220, -3
  %2224 = zext i1 %2223 to i8
  store i8 %2224, i8* %22, align 1, !tbaa !2433
  %2225 = and i32 %2221, 255
  %2226 = tail call i32 @llvm.ctpop.i32(i32 %2225) #10
  %2227 = trunc i32 %2226 to i8
  %2228 = and i8 %2227, 1
  %2229 = xor i8 %2228, 1
  store i8 %2229, i8* %29, align 1, !tbaa !2447
  %2230 = xor i32 %2220, %2221
  %2231 = lshr i32 %2230, 4
  %2232 = trunc i32 %2231 to i8
  %2233 = and i8 %2232, 1
  store i8 %2233, i8* %34, align 1, !tbaa !2451
  %2234 = icmp eq i32 %2221, 0
  %2235 = zext i1 %2234 to i8
  store i8 %2235, i8* %37, align 1, !tbaa !2448
  %2236 = lshr i32 %2221, 31
  %2237 = trunc i32 %2236 to i8
  store i8 %2237, i8* %40, align 1, !tbaa !2449
  %2238 = lshr i32 %2220, 31
  %2239 = xor i32 %2236, %2238
  %2240 = add nuw nsw i32 %2239, %2236
  %2241 = icmp eq i32 %2240, 2
  %2242 = zext i1 %2241 to i8
  store i8 %2242, i8* %46, align 1, !tbaa !2450
  %2243 = add i64 %1525, 14
  store i64 %2243, i64* %PC, align 8
  store i32 %2221, i32* %2219, align 4
  %2244 = load i64, i64* %PC, align 8
  %2245 = add i64 %2244, -310
  store i64 %2245, i64* %79, align 8, !tbaa !2428
  br label %block_400e58
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005c0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4005c0:
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
  store i64 6299728, i64* %RAX, align 8, !tbaa !2428
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1, !tbaa !2433
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1, !tbaa !2447
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %12, align 1, !tbaa !2451
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %13, align 1, !tbaa !2448
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %14, align 1, !tbaa !2449
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %15, align 1, !tbaa !2450
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = add i64 %9, 40
  store i64 %17, i64* %PC, align 8
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %RBP, align 8, !tbaa !2428
  store i64 %6, i64* %5, align 8, !tbaa !2428
  %19 = add i64 %9, 41
  store i64 %19, i64* %PC, align 8
  %20 = inttoptr i64 %6 to i64*
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %16, align 8, !tbaa !2428
  %22 = add i64 %6, 8
  store i64 %22, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400660_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400660:
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
  %14 = tail call %struct.Memory* @sub_4005f0_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %14
}

; Function Attrs: noinline
define %struct.Memory* @sub_400670_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400670:
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
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %8 = load i64, i64* %RBP, align 8
  %9 = add i64 %1, 1
  store i64 %9, i64* %PC, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !2428
  %12 = add i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64 %8, i64* %13, align 8
  %14 = load i64, i64* %PC, align 8
  store i64 %12, i64* %RBP, align 8, !tbaa !2428
  %15 = add i64 %11, -200
  store i64 %15, i64* %RSP, align 8, !tbaa !2428
  %16 = icmp ult i64 %12, 192
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1, !tbaa !2433
  %19 = trunc i64 %15 to i32
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20) #10
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1, !tbaa !2447
  %26 = xor i64 %12, %15
  %27 = lshr i64 %26, 4
  %28 = trunc i64 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1, !tbaa !2451
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
  %43 = add i64 %11, -12
  %44 = add i64 %14, 17
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %43 to i32*
  store i32 0, i32* %45, align 4
  %46 = load i64, i64* %RBP, align 8
  %47 = add i64 %46, -28
  %48 = load i64, i64* %PC, align 8
  %49 = add i64 %48, 7
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %47 to i32*
  store i32 63, i32* %50, align 4
  %51 = load i64, i64* %RBP, align 8
  %52 = add i64 %51, -32
  %53 = load i64, i64* %PC, align 8
  %54 = add i64 %53, 7
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %52 to i32*
  store i32 256, i32* %55, align 4
  %56 = load i64, i64* %RBP, align 8
  %57 = add i64 %56, -32
  %58 = load i64, i64* %PC, align 8
  %59 = add i64 %58, 3
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %57 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = zext i32 %61 to i64
  store i64 %62, i64* %RAX, align 8, !tbaa !2428
  %63 = add i64 %58, 7
  store i64 %63, i64* %PC, align 8
  %64 = load i32, i32* %60, align 4
  %65 = sext i32 %61 to i64
  %66 = sext i32 %64 to i64
  %67 = mul nsw i64 %66, %65
  %68 = trunc i64 %67 to i32
  %69 = and i64 %67, 4294967295
  store i64 %69, i64* %RAX, align 8, !tbaa !2428
  %70 = shl i64 %67, 32
  %71 = ashr exact i64 %70, 32
  %72 = icmp ne i64 %71, %67
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %18, align 1, !tbaa !2433
  %74 = and i32 %68, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74) #10
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %25, align 1, !tbaa !2447
  store i8 0, i8* %30, align 1, !tbaa !2451
  store i8 0, i8* %33, align 1, !tbaa !2448
  %79 = lshr i32 %68, 31
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %36, align 1, !tbaa !2449
  store i8 %73, i8* %42, align 1, !tbaa !2450
  %81 = shl i64 %67, 32
  %82 = ashr exact i64 %81, 32
  store i64 %82, i64* %RCX, align 8, !tbaa !2428
  %83 = add i64 %56, -48
  %84 = add i64 %58, 14
  store i64 %84, i64* %PC, align 8
  %85 = inttoptr i64 %83 to i64*
  store i64 %82, i64* %85, align 8
  %86 = load i64, i64* %RBP, align 8
  %87 = add i64 %86, -48
  %88 = load i64, i64* %PC, align 8
  %89 = add i64 %88, 4
  store i64 %89, i64* %PC, align 8
  %90 = inttoptr i64 %87 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = shl i64 %91, 3
  %93 = add i64 %92, 8
  %94 = shl i64 %93, 1
  store i64 %94, i64* %RCX, align 8, !tbaa !2428
  %.lobit = lshr i64 %93, 63
  %95 = trunc i64 %.lobit to i8
  store i8 %95, i8* %18, align 1, !tbaa !2432
  %96 = trunc i64 %94 to i32
  %97 = and i32 %96, 240
  %98 = tail call i32 @llvm.ctpop.i32(i32 %97) #10
  %99 = trunc i32 %98 to i8
  %100 = and i8 %99, 1
  %101 = xor i8 %100, 1
  store i8 %101, i8* %25, align 1, !tbaa !2432
  store i8 0, i8* %30, align 1, !tbaa !2432
  %102 = icmp eq i64 %94, 0
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %33, align 1, !tbaa !2432
  %104 = lshr i64 %93, 62
  %105 = trunc i64 %104 to i8
  %106 = and i8 %105, 1
  store i8 %106, i8* %36, align 1, !tbaa !2432
  store i8 0, i8* %42, align 1, !tbaa !2432
  %107 = add i64 %86, -56
  %108 = add i64 %88, 20
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %107 to i64*
  store i64 %94, i64* %109, align 8
  %110 = load i64, i64* %RBP, align 8
  %111 = add i64 %110, -32
  %112 = load i64, i64* %PC, align 8
  %113 = add i64 %112, 3
  store i64 %113, i64* %PC, align 8
  %114 = inttoptr i64 %111 to i32*
  %115 = load i32, i32* %114, align 4
  %116 = zext i32 %115 to i64
  store i64 %116, i64* %RAX, align 8, !tbaa !2428
  store i32 %115, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 20) to i32*), align 4
  store i32 %115, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 16) to i32*), align 16
  %117 = add i64 %110, -56
  %118 = add i64 %112, 21
  store i64 %118, i64* %PC, align 8
  %119 = inttoptr i64 %117 to i64*
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %RDI, align 8, !tbaa !2428
  %121 = add i64 %112, -354
  %122 = add i64 %112, 26
  %123 = load i64, i64* %10, align 8, !tbaa !2428
  %124 = add i64 %123, -8
  %125 = inttoptr i64 %124 to i64*
  store i64 %122, i64* %125, align 8
  store i64 %124, i64* %10, align 8, !tbaa !2428
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %121, i64* %126, align 8, !tbaa !2428
  %127 = tail call fastcc %struct.Memory* @ext_602090_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %128 = load i64, i64* %RBP, align 8
  %129 = add i64 %128, -40
  %130 = load i64, i64* %RAX, align 8
  %131 = load i64, i64* %PC, align 8
  %132 = add i64 %131, 4
  store i64 %132, i64* %PC, align 8
  %133 = inttoptr i64 %129 to i64*
  store i64 %130, i64* %133, align 8
  %134 = load i64, i64* %RBP, align 8
  %135 = add i64 %134, -40
  %136 = load i64, i64* %PC, align 8
  %137 = add i64 %136, 5
  store i64 %137, i64* %PC, align 8
  %138 = inttoptr i64 %135 to i64*
  %139 = load i64, i64* %138, align 8
  store i8 0, i8* %18, align 1, !tbaa !2433
  %140 = trunc i64 %139 to i32
  %141 = and i32 %140, 255
  %142 = tail call i32 @llvm.ctpop.i32(i32 %141) #10
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  store i8 %145, i8* %25, align 1, !tbaa !2447
  store i8 0, i8* %30, align 1, !tbaa !2451
  %146 = icmp eq i64 %139, 0
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %33, align 1, !tbaa !2448
  %148 = lshr i64 %139, 63
  %149 = trunc i64 %148 to i8
  store i8 %149, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %.v = select i1 %146, i64 11, i64 52
  %150 = add i64 %136, %.v
  store i64 %150, i64* %126, align 8, !tbaa !2428
  br i1 %146, label %block_4006db, label %block_400704

block_4007ff:                                     ; preds = %block_4007ab
  %151 = bitcast [32 x %union.VectorReg]* %5 to i32*
  store i32 0, i32* %151, align 1, !tbaa !2454
  %152 = getelementptr inbounds i8, i8* %1488, i64 4
  %153 = bitcast i8* %152 to i32*
  store i32 0, i32* %153, align 1, !tbaa !2454
  %154 = bitcast i64* %1490 to i32*
  store i32 0, i32* %154, align 1, !tbaa !2454
  %155 = getelementptr inbounds i8, i8* %1488, i64 12
  %156 = bitcast i8* %155 to i32*
  store i32 0, i32* %156, align 1, !tbaa !2454
  %157 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 8) to i64*), align 8
  %158 = bitcast %union.VectorReg* %6 to double*
  %159 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %157, i64* %159, align 1, !tbaa !2452
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %161 = bitcast i64* %160 to double*
  store double 0.000000e+00, double* %161, align 1, !tbaa !2452
  %162 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 16) to i64*), align 16
  %163 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %162, i64* %163, align 1, !tbaa !2452
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %165 = bitcast i64* %164 to double*
  store double 0.000000e+00, double* %165, align 1, !tbaa !2452
  %166 = add i64 %1019, -80
  %167 = add i64 %1055, 24
  store i64 %167, i64* %PC, align 8
  %168 = inttoptr i64 %166 to i64*
  store i64 %162, i64* %168, align 8
  %169 = load i64, i64* %RBP, align 8
  %170 = add i64 %169, -88
  %171 = load i64, i64* %PC, align 8
  %172 = add i64 %171, 5
  store i64 %172, i64* %PC, align 8
  %173 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  %174 = load i64, i64* %173, align 1
  %175 = inttoptr i64 %170 to i64*
  store i64 %174, i64* %175, align 8
  %176 = load i64, i64* %RBP, align 8
  %177 = add i64 %176, -96
  %178 = load i64, i64* %PC, align 8
  %179 = add i64 %178, 5
  store i64 %179, i64* %PC, align 8
  %180 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  %181 = load i64, i64* %180, align 1
  %182 = inttoptr i64 %177 to i64*
  store i64 %181, i64* %182, align 8
  %183 = load i64, i64* %RBP, align 8
  %184 = add i64 %183, -104
  %185 = load i64, i64* %PC, align 8
  %186 = add i64 %185, 5
  store i64 %186, i64* %PC, align 8
  %187 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  %188 = load i64, i64* %187, align 1
  %189 = inttoptr i64 %184 to i64*
  store i64 %188, i64* %189, align 8
  %190 = load i64, i64* %RBP, align 8
  %191 = add i64 %190, -128
  %192 = load i64, i64* %PC, align 8
  %193 = add i64 %192, 5
  store i64 %193, i64* %PC, align 8
  %194 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %195 = load i64, i64* %194, align 1
  %196 = inttoptr i64 %191 to i64*
  store i64 %195, i64* %196, align 8
  %197 = load i64, i64* %RBP, align 8
  %198 = add i64 %197, -136
  %199 = load i64, i64* %PC, align 8
  %200 = add i64 %199, 8
  store i64 %200, i64* %PC, align 8
  %201 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %202 = load i64, i64* %201, align 1
  %203 = inttoptr i64 %198 to i64*
  store i64 %202, i64* %203, align 8
  %204 = load i64, i64* %RBP, align 8
  %205 = add i64 %204, -8
  %206 = load i64, i64* %PC, align 8
  %207 = add i64 %206, 7
  store i64 %207, i64* %PC, align 8
  %208 = inttoptr i64 %205 to i32*
  store i32 1, i32* %208, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_40083a

block_400af1:                                     ; preds = %block_400ac0
  store i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 183), i64* %RSI, align 8, !tbaa !2428
  %209 = load i64, i64* @stderr, align 32
  store i64 %209, i64* %RDI, align 8, !tbaa !2428
  %210 = add i64 %1154, -28
  %211 = add i64 %507, 21
  store i64 %211, i64* %PC, align 8
  %212 = inttoptr i64 %210 to i32*
  %213 = load i32, i32* %212, align 4
  %214 = zext i32 %213 to i64
  store i64 %214, i64* %RDX, align 8, !tbaa !2428
  %215 = add i64 %507, 24
  store i64 %215, i64* %PC, align 8
  %216 = load i32, i32* %496, align 4
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2432
  %218 = add i64 %507, -1457
  %219 = add i64 %507, 31
  %220 = load i64, i64* %10, align 8, !tbaa !2428
  %221 = add i64 %220, -8
  %222 = inttoptr i64 %221 to i64*
  store i64 %219, i64* %222, align 8
  store i64 %221, i64* %10, align 8, !tbaa !2428
  store i64 %218, i64* %126, align 8, !tbaa !2428
  %223 = tail call fastcc %struct.Memory* @ext_6020b8_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.9)
  %224 = load i64, i64* %RBP, align 8
  %225 = add i64 %224, -192
  %226 = load i32, i32* %EAX, align 4
  %227 = load i64, i64* %PC, align 8
  %228 = add i64 %227, 6
  store i64 %228, i64* %PC, align 8
  %229 = inttoptr i64 %225 to i32*
  store i32 %226, i32* %229, align 4
  %.pre25 = load i64, i64* %PC, align 8
  br label %block_400b16

block_4008e5:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2
  %230 = add i64 %486, -112
  %231 = add i64 %493, 5
  store i64 %231, i64* %PC, align 8
  %232 = inttoptr i64 %230 to i64*
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %233, i64* %234, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %235 = add i64 %486, -160
  %236 = add i64 %493, 13
  store i64 %236, i64* %PC, align 8
  %237 = inttoptr i64 %235 to i64*
  store i64 %233, i64* %237, align 8
  %238 = load i64, i64* %PC, align 8
  %239 = add i64 %238, 18
  store i64 %239, i64* %126, align 8, !tbaa !2428
  br label %block_400904

block_40077e:                                     ; preds = %block_40074b, %block_40075a
  %240 = phi i64 [ %895, %block_40074b ], [ %.pre5, %block_40075a ]
  %241 = phi i64 [ %1462, %block_40074b ], [ %.pre4, %block_40075a ]
  %242 = add i64 %240, -12
  %243 = add i64 %241, 8
  store i64 %243, i64* %PC, align 8
  %244 = inttoptr i64 %242 to i32*
  %245 = load i32, i32* %244, align 4
  %246 = add i32 %245, 1
  %247 = zext i32 %246 to i64
  store i64 %247, i64* %RAX, align 8, !tbaa !2428
  %248 = icmp eq i32 %245, -1
  %249 = icmp eq i32 %246, 0
  %250 = or i1 %248, %249
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %18, align 1, !tbaa !2433
  %252 = and i32 %246, 255
  %253 = tail call i32 @llvm.ctpop.i32(i32 %252) #10
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = xor i8 %255, 1
  store i8 %256, i8* %25, align 1, !tbaa !2447
  %257 = xor i32 %245, %246
  %258 = lshr i32 %257, 4
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  store i8 %260, i8* %30, align 1, !tbaa !2451
  %261 = icmp eq i32 %246, 0
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %33, align 1, !tbaa !2448
  %263 = lshr i32 %246, 31
  %264 = trunc i32 %263 to i8
  store i8 %264, i8* %36, align 1, !tbaa !2449
  %265 = lshr i32 %245, 31
  %266 = xor i32 %263, %265
  %267 = add nuw nsw i32 %266, %263
  %268 = icmp eq i32 %267, 2
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %42, align 1, !tbaa !2450
  %270 = add i64 %241, 14
  store i64 %270, i64* %PC, align 8
  store i32 %246, i32* %244, align 4
  %271 = load i64, i64* %PC, align 8
  %272 = add i64 %271, -92
  store i64 %272, i64* %126, align 8, !tbaa !2428
  br label %block_400730

block_400a64:                                     ; preds = %block_400a43
  store i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 100), i64* %RSI, align 8, !tbaa !2428
  %273 = add i64 %951, -24
  %274 = add i64 %986, 13
  store i64 %274, i64* %PC, align 8
  %275 = inttoptr i64 %273 to i32*
  %276 = load i32, i32* %275, align 4
  %277 = add i32 %276, 1
  %278 = zext i32 %277 to i64
  store i64 %278, i64* %RAX, align 8, !tbaa !2428
  %279 = icmp eq i32 %276, -1
  %280 = icmp eq i32 %277, 0
  %281 = or i1 %279, %280
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %18, align 1, !tbaa !2433
  %283 = and i32 %277, 255
  %284 = tail call i32 @llvm.ctpop.i32(i32 %283) #10
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  %287 = xor i8 %286, 1
  store i8 %287, i8* %25, align 1, !tbaa !2447
  %288 = xor i32 %276, %277
  %289 = lshr i32 %288, 4
  %290 = trunc i32 %289 to i8
  %291 = and i8 %290, 1
  store i8 %291, i8* %30, align 1, !tbaa !2451
  %292 = icmp eq i32 %277, 0
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %33, align 1, !tbaa !2448
  %294 = lshr i32 %277, 31
  %295 = trunc i32 %294 to i8
  store i8 %295, i8* %36, align 1, !tbaa !2449
  %296 = lshr i32 %276, 31
  %297 = xor i32 %294, %296
  %298 = add nuw nsw i32 %297, %294
  %299 = icmp eq i32 %298, 2
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %42, align 1, !tbaa !2450
  %301 = add i64 %986, 19
  store i64 %301, i64* %PC, align 8
  store i32 %277, i32* %275, align 4
  %302 = load i64, i64* %PC, align 8
  %303 = load i64, i64* @stderr, align 32
  store i64 %303, i64* %RDI, align 8, !tbaa !2428
  %304 = load i64, i64* %RBP, align 8
  %305 = add i64 %304, -8
  %306 = add i64 %302, 11
  store i64 %306, i64* %PC, align 8
  %307 = inttoptr i64 %305 to i32*
  %308 = load i32, i32* %307, align 4
  %309 = zext i32 %308 to i64
  store i64 %309, i64* %RDX, align 8, !tbaa !2428
  %310 = add i64 %304, -12
  %311 = add i64 %302, 14
  store i64 %311, i64* %PC, align 8
  %312 = inttoptr i64 %310 to i32*
  %313 = load i32, i32* %312, align 4
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RCX, align 8, !tbaa !2428
  %315 = add i64 %304, -20
  %316 = add i64 %302, 18
  store i64 %316, i64* %PC, align 8
  %317 = inttoptr i64 %315 to i32*
  %318 = load i32, i32* %317, align 4
  %319 = zext i32 %318 to i64
  store i64 %319, i64* %1265, align 8, !tbaa !2428
  %320 = add i64 %304, -16
  %321 = add i64 %302, 22
  store i64 %321, i64* %PC, align 8
  %322 = inttoptr i64 %320 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %1266, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2432
  %325 = add i64 %302, -1335
  %326 = add i64 %302, 29
  %327 = load i64, i64* %10, align 8, !tbaa !2428
  %328 = add i64 %327, -8
  %329 = inttoptr i64 %328 to i64*
  store i64 %326, i64* %329, align 8
  store i64 %328, i64* %10, align 8, !tbaa !2428
  store i64 %325, i64* %126, align 8, !tbaa !2428
  %330 = tail call fastcc %struct.Memory* @ext_6020b8_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %331 = load i64, i64* %RBP, align 8
  %332 = add i64 %331, -184
  %333 = load i32, i32* %EAX, align 4
  %334 = load i64, i64* %PC, align 8
  %335 = add i64 %334, 6
  store i64 %335, i64* %PC, align 8
  %336 = inttoptr i64 %332 to i32*
  store i32 %333, i32* %336, align 4
  %.pre23 = load i64, i64* %PC, align 8
  %.pre24 = load i64, i64* %RBP, align 8
  br label %block_400a9a

block_40075a:                                     ; preds = %block_40074b, %block_40073c
  %337 = phi i64 [ %1462, %block_40074b ], [ %637, %block_40073c ]
  %338 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 32) to i64*), align 16
  %339 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %338, i64* %339, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %340 = add i64 %895, -40
  %341 = add i64 %337, 12
  store i64 %341, i64* %PC, align 8
  %342 = inttoptr i64 %340 to i64*
  %343 = load i64, i64* %342, align 8
  store i64 %343, i64* %RAX, align 8, !tbaa !2428
  %344 = add i64 %337, 15
  store i64 %344, i64* %PC, align 8
  %345 = load i32, i32* %903, align 4
  %346 = zext i32 %345 to i64
  store i64 %346, i64* %RCX, align 8, !tbaa !2428
  %347 = add i64 %337, 19
  store i64 %347, i64* %PC, align 8
  %348 = load i32, i32* %618, align 4
  %349 = sext i32 %345 to i64
  %350 = sext i32 %348 to i64
  %351 = mul nsw i64 %350, %349
  %352 = trunc i64 %351 to i32
  %353 = and i64 %351, 4294967295
  store i64 %353, i64* %RCX, align 8, !tbaa !2428
  %354 = shl i64 %351, 32
  %355 = ashr exact i64 %354, 32
  %356 = icmp ne i64 %355, %351
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %18, align 1, !tbaa !2433
  %358 = and i32 %352, 255
  %359 = tail call i32 @llvm.ctpop.i32(i32 %358) #10
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  %362 = xor i8 %361, 1
  store i8 %362, i8* %25, align 1, !tbaa !2447
  store i8 0, i8* %30, align 1, !tbaa !2451
  store i8 0, i8* %33, align 1, !tbaa !2448
  %363 = lshr i32 %352, 31
  %364 = trunc i32 %363 to i8
  store i8 %364, i8* %36, align 1, !tbaa !2449
  store i8 %357, i8* %42, align 1, !tbaa !2450
  %365 = add i64 %337, 22
  store i64 %365, i64* %PC, align 8
  %366 = trunc i64 %351 to i32
  %367 = load i32, i32* %898, align 4
  %368 = add i32 %367, %366
  %369 = shl i32 %368, 1
  %370 = lshr i32 %368, 30
  %371 = and i32 %370, 1
  %372 = or i32 %369, 1
  %373 = zext i32 %372 to i64
  store i64 %373, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2433
  %374 = and i32 %372, 255
  %375 = tail call i32 @llvm.ctpop.i32(i32 %374) #10
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  %378 = xor i8 %377, 1
  store i8 %378, i8* %25, align 1, !tbaa !2447
  store i8 0, i8* %30, align 1, !tbaa !2451
  store i8 0, i8* %33, align 1, !tbaa !2448
  %379 = lshr i32 %368, 30
  %380 = and i32 %379, 1
  %381 = trunc i32 %380 to i8
  store i8 %381, i8* %36, align 1, !tbaa !2449
  %382 = xor i32 %380, %371
  %383 = add nuw nsw i32 %382, %380
  %384 = icmp eq i32 %383, 2
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %42, align 1, !tbaa !2450
  %386 = sext i32 %372 to i64
  store i64 %386, i64* %RDX, align 8, !tbaa !2428
  %387 = load i64, i64* %RAX, align 8
  %388 = shl nsw i64 %386, 3
  %389 = add i64 %388, %387
  %390 = add i64 %337, 36
  store i64 %390, i64* %PC, align 8
  %391 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %392 = load i64, i64* %391, align 1
  %393 = inttoptr i64 %389 to i64*
  store i64 %392, i64* %393, align 8
  %.pre4 = load i64, i64* %PC, align 8
  %.pre5 = load i64, i64* %RBP, align 8
  br label %block_40077e

block_400937:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %394 = add i64 %1343, -96
  %395 = add i64 %1348, 5
  store i64 %395, i64* %PC, align 8
  %396 = inttoptr i64 %394 to i64*
  %397 = load i64, i64* %396, align 8
  %398 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %397, i64* %398, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %399 = add i64 %1343, -168
  %400 = add i64 %1348, 13
  store i64 %400, i64* %PC, align 8
  %401 = inttoptr i64 %399 to i64*
  store i64 %397, i64* %401, align 8
  %.pre16 = load i64, i64* %PC, align 8
  br label %block_400944

block_4006db:                                     ; preds = %block_400670
  store i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 72), i64* %RSI, align 8, !tbaa !2428
  %402 = load i64, i64* @stderr, align 32
  store i64 %402, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2432
  %403 = add i64 %150, -411
  %404 = add i64 %150, 25
  %405 = load i64, i64* %10, align 8, !tbaa !2428
  %406 = add i64 %405, -8
  %407 = inttoptr i64 %406 to i64*
  store i64 %404, i64* %407, align 8
  store i64 %406, i64* %10, align 8, !tbaa !2428
  store i64 %403, i64* %126, align 8, !tbaa !2428
  %408 = tail call fastcc %struct.Memory* @ext_6020b8_fprintf(%struct.State* nonnull %0, %struct.Memory* %127)
  %409 = load i64, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %410 = load i64, i64* %RBP, align 8
  %411 = add i64 %410, -140
  %412 = load i32, i32* %EAX, align 4
  %413 = add i64 %409, 11
  store i64 %413, i64* %PC, align 8
  %414 = inttoptr i64 %411 to i32*
  store i32 %412, i32* %414, align 4
  %415 = load i64, i64* %PC, align 8
  %416 = add i64 %415, -399
  %417 = add i64 %415, 5
  %418 = load i64, i64* %10, align 8, !tbaa !2428
  %419 = add i64 %418, -8
  %420 = inttoptr i64 %419 to i64*
  store i64 %417, i64* %420, align 8
  store i64 %419, i64* %10, align 8, !tbaa !2428
  store i64 %416, i64* %126, align 8, !tbaa !2428
  %421 = tail call fastcc %struct.Memory* @ext_400570_exit(%struct.State* nonnull %0, %struct.Memory* %408)
  %422 = load i64, i64* %PC, align 8
  %423 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %422, %struct.Memory* %421)
  ret %struct.Memory* %423

block_400aca:                                     ; preds = %block_400ac0
  store i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 148), i64* %RSI, align 8, !tbaa !2428
  %424 = load i64, i64* @stderr, align 32
  store i64 %424, i64* %RDI, align 8, !tbaa !2428
  %425 = add i64 %1154, -28
  %426 = add i64 %507, 21
  store i64 %426, i64* %PC, align 8
  %427 = inttoptr i64 %425 to i32*
  %428 = load i32, i32* %427, align 4
  %429 = zext i32 %428 to i64
  store i64 %429, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2432
  %430 = add i64 %507, -1418
  %431 = add i64 %507, 28
  %432 = load i64, i64* %10, align 8, !tbaa !2428
  %433 = add i64 %432, -8
  %434 = inttoptr i64 %433 to i64*
  store i64 %431, i64* %434, align 8
  store i64 %433, i64* %10, align 8, !tbaa !2428
  store i64 %430, i64* %126, align 8, !tbaa !2428
  %435 = tail call fastcc %struct.Memory* @ext_6020b8_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.9)
  %436 = load i64, i64* %RBP, align 8
  %437 = add i64 %436, -188
  %438 = load i32, i32* %EAX, align 4
  %439 = load i64, i64* %PC, align 8
  %440 = add i64 %439, 6
  store i64 %440, i64* %PC, align 8
  %441 = inttoptr i64 %437 to i32*
  store i32 %438, i32* %441, align 4
  %442 = load i64, i64* %PC, align 8
  %443 = add i64 %442, 42
  store i64 %443, i64* %126, align 8, !tbaa !2428
  br label %block_400b16

block_4008c8:                                     ; preds = %block_4008bb, %block_4008a9
  %444 = phi i64 [ %.pre10, %block_4008bb ], [ %1065, %block_4008a9 ]
  %445 = load i64, i64* %RBP, align 8
  %446 = add i64 %445, -152
  %447 = add i64 %444, 8
  store i64 %447, i64* %PC, align 8
  %448 = inttoptr i64 %446 to i64*
  %449 = load i64, i64* %448, align 8
  %450 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %449, i64* %450, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %451 = add i64 %445, -80
  %452 = add i64 %444, 13
  store i64 %452, i64* %PC, align 8
  %453 = inttoptr i64 %451 to i64*
  store i64 %449, i64* %453, align 8
  %454 = load i64, i64* %RBP, align 8
  %455 = add i64 %454, -112
  %456 = load i64, i64* %PC, align 8
  %457 = add i64 %456, 5
  store i64 %457, i64* %PC, align 8
  %458 = inttoptr i64 %455 to double*
  %459 = load double, double* %458, align 8
  store double %459, double* %1489, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %460 = add i64 %454, -88
  %461 = add i64 %456, 10
  store i64 %461, i64* %PC, align 8
  %462 = inttoptr i64 %460 to double*
  %463 = load double, double* %462, align 8
  %464 = fcmp uno double %459, %463
  br i1 %464, label %465, label %475

; <label>:465:                                    ; preds = %block_4008c8
  %466 = fadd double %459, %463
  %467 = bitcast double %466 to i64
  %468 = and i64 %467, 9221120237041090560
  %469 = icmp eq i64 %468, 9218868437227405312
  %470 = and i64 %467, 2251799813685247
  %471 = icmp ne i64 %470, 0
  %472 = and i1 %469, %471
  br i1 %472, label %473, label %481

; <label>:473:                                    ; preds = %465
  %474 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %461, %struct.Memory* %796) #11
  %.pre11 = load i64, i64* %PC, align 8
  %.pre12 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2

; <label>:475:                                    ; preds = %block_4008c8
  %476 = fcmp ogt double %459, %463
  br i1 %476, label %481, label %477

; <label>:477:                                    ; preds = %475
  %478 = fcmp olt double %459, %463
  br i1 %478, label %481, label %479

; <label>:479:                                    ; preds = %477
  %480 = fcmp oeq double %459, %463
  br i1 %480, label %481, label %485

; <label>:481:                                    ; preds = %479, %477, %475, %465
  %482 = phi i8 [ 0, %475 ], [ 0, %477 ], [ 1, %479 ], [ 1, %465 ]
  %483 = phi i8 [ 0, %475 ], [ 0, %477 ], [ 0, %479 ], [ 1, %465 ]
  %484 = phi i8 [ 0, %475 ], [ 1, %477 ], [ 0, %479 ], [ 1, %465 ]
  store i8 %482, i8* %33, align 1, !tbaa !2432
  store i8 %483, i8* %25, align 1, !tbaa !2432
  store i8 %484, i8* %18, align 1, !tbaa !2432
  br label %485

; <label>:485:                                    ; preds = %481, %479
  store i8 0, i8* %42, align 1, !tbaa !2432
  store i8 0, i8* %36, align 1, !tbaa !2432
  store i8 0, i8* %30, align 1, !tbaa !2432
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2: ; preds = %485, %473
  %486 = phi i64 [ %.pre12, %473 ], [ %454, %485 ]
  %487 = phi i64 [ %.pre11, %473 ], [ %461, %485 ]
  %488 = phi %struct.Memory* [ %474, %473 ], [ %796, %485 ]
  %489 = load i8, i8* %18, align 1, !tbaa !2433
  %490 = load i8, i8* %33, align 1, !tbaa !2448
  %491 = or i8 %490, %489
  %492 = icmp ne i8 %491, 0
  %.v33 = select i1 %492, i64 24, i64 6
  %493 = add i64 %487, %.v33
  store i64 %493, i64* %126, align 8, !tbaa !2428
  br i1 %492, label %block_4008f7, label %block_4008e5

block_400ac0:                                     ; preds = %block_4009ce
  %494 = add i64 %1154, -24
  %495 = add i64 %1190, 4
  store i64 %495, i64* %PC, align 8
  %496 = inttoptr i64 %494 to i32*
  %497 = load i32, i32* %496, align 4
  store i8 0, i8* %18, align 1, !tbaa !2433
  %498 = and i32 %497, 255
  %499 = tail call i32 @llvm.ctpop.i32(i32 %498) #10
  %500 = trunc i32 %499 to i8
  %501 = and i8 %500, 1
  %502 = xor i8 %501, 1
  store i8 %502, i8* %25, align 1, !tbaa !2447
  store i8 0, i8* %30, align 1, !tbaa !2451
  %503 = icmp eq i32 %497, 0
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %33, align 1, !tbaa !2448
  %505 = lshr i32 %497, 31
  %506 = trunc i32 %505 to i8
  store i8 %506, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %.v40 = select i1 %503, i64 10, i64 49
  %507 = add i64 %1190, %.v40
  %508 = add i64 %507, 10
  store i64 %508, i64* %PC, align 8
  br i1 %503, label %block_400aca, label %block_400af1

block_4009ed:                                     ; preds = %block_4009e1
  store i8 1, i8* %AL, align 1, !tbaa !2432
  %509 = add i64 %857, -40
  %510 = add i64 %893, 6
  store i64 %510, i64* %PC, align 8
  %511 = inttoptr i64 %509 to i64*
  %512 = load i64, i64* %511, align 8
  store i64 %512, i64* %RCX, align 8, !tbaa !2428
  %513 = add i64 %893, 9
  store i64 %513, i64* %PC, align 8
  %514 = load i32, i32* %865, align 4
  %515 = zext i32 %514 to i64
  store i64 %515, i64* %RDX, align 8, !tbaa !2428
  %516 = add i64 %857, -8
  %517 = add i64 %893, 13
  store i64 %517, i64* %PC, align 8
  %518 = inttoptr i64 %516 to i32*
  %519 = load i32, i32* %518, align 4
  %520 = sext i32 %514 to i64
  %521 = sext i32 %519 to i64
  %522 = mul nsw i64 %521, %520
  %523 = trunc i64 %522 to i32
  %524 = and i64 %522, 4294967295
  store i64 %524, i64* %RDX, align 8, !tbaa !2428
  %525 = shl i64 %522, 32
  %526 = ashr exact i64 %525, 32
  %527 = icmp ne i64 %526, %522
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %18, align 1, !tbaa !2433
  %529 = and i32 %523, 255
  %530 = tail call i32 @llvm.ctpop.i32(i32 %529) #10
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  store i8 %533, i8* %25, align 1, !tbaa !2447
  store i8 0, i8* %30, align 1, !tbaa !2451
  store i8 0, i8* %33, align 1, !tbaa !2448
  %534 = lshr i32 %523, 31
  %535 = trunc i32 %534 to i8
  store i8 %535, i8* %36, align 1, !tbaa !2449
  store i8 %528, i8* %42, align 1, !tbaa !2450
  %536 = add i64 %893, 16
  store i64 %536, i64* %PC, align 8
  %537 = trunc i64 %522 to i32
  %538 = load i32, i32* %860, align 4
  %539 = add i32 %538, %537
  %540 = shl i32 %539, 1
  %541 = lshr i32 %539, 30
  %542 = and i32 %541, 1
  %543 = or i32 %540, 1
  %544 = zext i32 %543 to i64
  store i64 %544, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2433
  %545 = and i32 %543, 255
  %546 = tail call i32 @llvm.ctpop.i32(i32 %545) #10
  %547 = trunc i32 %546 to i8
  %548 = and i8 %547, 1
  %549 = xor i8 %548, 1
  store i8 %549, i8* %25, align 1, !tbaa !2447
  store i8 0, i8* %30, align 1, !tbaa !2451
  store i8 0, i8* %33, align 1, !tbaa !2448
  %550 = lshr i32 %539, 30
  %551 = and i32 %550, 1
  %552 = trunc i32 %551 to i8
  store i8 %552, i8* %36, align 1, !tbaa !2449
  %553 = xor i32 %551, %542
  %554 = add nuw nsw i32 %553, %551
  %555 = icmp eq i32 %554, 2
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %42, align 1, !tbaa !2450
  %557 = sext i32 %543 to i64
  store i64 %557, i64* %RSI, align 8, !tbaa !2428
  %558 = load i64, i64* %RCX, align 8
  %559 = shl nsw i64 %557, 3
  %560 = add i64 %559, %558
  %561 = add i64 %893, 30
  store i64 %561, i64* %PC, align 8
  %562 = inttoptr i64 %560 to double*
  %563 = load double, double* %562, align 8
  store double %563, double* %1489, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %564 = load i64, i64* %RBP, align 8
  %565 = add i64 %564, -64
  %566 = add i64 %893, 35
  store i64 %566, i64* %PC, align 8
  %567 = inttoptr i64 %565 to double*
  %568 = load double, double* %567, align 8
  %569 = fsub double %563, %568
  store double %569, double* %1489, align 1, !tbaa !2452
  store i64 0, i64* %1490, align 1, !tbaa !2452
  %570 = add i64 %564, -72
  %571 = add i64 %893, 40
  store i64 %571, i64* %PC, align 8
  %572 = inttoptr i64 %570 to double*
  %573 = load double, double* %572, align 8
  %574 = fmul double %569, %573
  store double %574, double* %1489, align 1, !tbaa !2452
  store i64 0, i64* %1490, align 1, !tbaa !2452
  %575 = tail call double @llvm.trunc.f64(double %574) #10
  %576 = tail call double @llvm.fabs.f64(double %575) #10
  %577 = fcmp ogt double %576, 0x41DFFFFFFFC00000
  %578 = fptosi double %575 to i32
  %579 = zext i32 %578 to i64
  %580 = select i1 %577, i64 2147483648, i64 %579
  store i64 %580, i64* %RDX, align 8, !tbaa !2428
  %581 = add i64 %564, -16
  %582 = trunc i64 %580 to i32
  %583 = add i64 %893, 47
  store i64 %583, i64* %PC, align 8
  %584 = inttoptr i64 %581 to i32*
  store i32 %582, i32* %584, align 4
  %585 = load i64, i64* %RBP, align 8
  %586 = add i64 %585, -8
  %587 = load i64, i64* %PC, align 8
  %588 = add i64 %587, 3
  store i64 %588, i64* %PC, align 8
  %589 = inttoptr i64 %586 to i32*
  %590 = load i32, i32* %589, align 4
  %591 = and i32 %590, 15
  %592 = zext i32 %591 to i64
  store i64 %592, i64* %RDX, align 8, !tbaa !2428
  %593 = add nsw i32 %591, -8
  %594 = icmp ult i32 %591, 8
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %18, align 1, !tbaa !2433
  %596 = and i32 %593, 255
  %597 = tail call i32 @llvm.ctpop.i32(i32 %596) #10
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = xor i8 %599, 1
  store i8 %600, i8* %25, align 1, !tbaa !2447
  %601 = lshr i32 %593, 4
  %602 = trunc i32 %601 to i8
  %603 = and i8 %602, 1
  store i8 %603, i8* %30, align 1, !tbaa !2451
  %604 = icmp eq i32 %593, 0
  %605 = zext i1 %604 to i8
  store i8 %605, i8* %33, align 1, !tbaa !2448
  %606 = lshr i32 %593, 31
  %607 = trunc i32 %606 to i8
  store i8 %607, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %608 = add i64 %585, -177
  %609 = load i8, i8* %AL, align 1
  %610 = add i64 %587, 15
  store i64 %610, i64* %PC, align 8
  %611 = inttoptr i64 %608 to i8*
  store i8 %609, i8* %611, align 1
  %612 = load i64, i64* %PC, align 8
  %613 = load i8, i8* %33, align 1, !tbaa !2448
  %614 = icmp ne i8 %613, 0
  %.v38 = select i1 %614, i64 24, i64 6
  %615 = add i64 %612, %.v38
  store i64 %615, i64* %126, align 8, !tbaa !2428
  %616 = icmp eq i8 %613, 1
  br i1 %616, label %block_400a43, label %block_400a31

block_40073c:                                     ; preds = %block_400730
  %617 = add i64 %931, 3
  store i64 %617, i64* %PC, align 8
  %618 = inttoptr i64 %932 to i32*
  %619 = load i32, i32* %618, align 4
  %620 = and i32 %619, 15
  %621 = zext i32 %620 to i64
  store i64 %621, i64* %RAX, align 8, !tbaa !2428
  %622 = add nsw i32 %620, -8
  %623 = icmp ult i32 %620, 8
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %18, align 1, !tbaa !2433
  %625 = and i32 %622, 255
  %626 = tail call i32 @llvm.ctpop.i32(i32 %625) #10
  %627 = trunc i32 %626 to i8
  %628 = and i8 %627, 1
  %629 = xor i8 %628, 1
  store i8 %629, i8* %25, align 1, !tbaa !2447
  %630 = lshr i32 %622, 4
  %631 = trunc i32 %630 to i8
  %632 = and i8 %631, 1
  store i8 %632, i8* %30, align 1, !tbaa !2451
  %633 = icmp eq i32 %622, 0
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %33, align 1, !tbaa !2448
  %635 = lshr i32 %622, 31
  %636 = trunc i32 %635 to i8
  store i8 %636, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %.v28 = select i1 %633, i64 30, i64 15
  %637 = add i64 %931, %.v28
  store i64 %637, i64* %126, align 8, !tbaa !2428
  br i1 %633, label %block_40075a, label %block_40074b

block_40083a:                                     ; preds = %block_400980, %block_4007ff
  %638 = phi i64 [ %.pre7, %block_4007ff ], [ %1532, %block_400980 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.7, %block_4007ff ], [ %1129, %block_400980 ]
  %639 = load i64, i64* %RBP, align 8
  %640 = add i64 %639, -8
  %641 = add i64 %638, 4
  store i64 %641, i64* %PC, align 8
  %642 = inttoptr i64 %640 to i32*
  %643 = load i32, i32* %642, align 4
  %644 = sext i32 %643 to i64
  store i64 %644, i64* %RAX, align 8, !tbaa !2428
  %645 = add i64 %639, -48
  %646 = add i64 %638, 8
  store i64 %646, i64* %PC, align 8
  %647 = inttoptr i64 %645 to i64*
  %648 = load i64, i64* %647, align 8
  %649 = sub i64 %644, %648
  %650 = icmp ult i64 %644, %648
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %18, align 1, !tbaa !2433
  %652 = trunc i64 %649 to i32
  %653 = and i32 %652, 255
  %654 = tail call i32 @llvm.ctpop.i32(i32 %653) #10
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  %657 = xor i8 %656, 1
  store i8 %657, i8* %25, align 1, !tbaa !2447
  %658 = xor i64 %648, %644
  %659 = xor i64 %658, %649
  %660 = lshr i64 %659, 4
  %661 = trunc i64 %660 to i8
  %662 = and i8 %661, 1
  store i8 %662, i8* %30, align 1, !tbaa !2451
  %663 = icmp eq i64 %649, 0
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %33, align 1, !tbaa !2448
  %665 = lshr i64 %649, 63
  %666 = trunc i64 %665 to i8
  store i8 %666, i8* %36, align 1, !tbaa !2449
  %667 = lshr i64 %644, 63
  %668 = lshr i64 %648, 63
  %669 = xor i64 %668, %667
  %670 = xor i64 %665, %667
  %671 = add nuw nsw i64 %670, %669
  %672 = icmp eq i64 %671, 2
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %42, align 1, !tbaa !2450
  %674 = icmp ne i8 %666, 0
  %675 = xor i1 %674, %672
  %.demorgan = or i1 %663, %675
  %.v31 = select i1 %.demorgan, i64 14, i64 353
  %676 = add i64 %638, %.v31
  store i64 %676, i64* %126, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400848, label %block_40099b

block_400848:                                     ; preds = %block_40083a
  %677 = add i64 %639, -40
  %678 = add i64 %676, 4
  store i64 %678, i64* %PC, align 8
  %679 = inttoptr i64 %677 to i64*
  %680 = load i64, i64* %679, align 8
  store i64 %680, i64* %RAX, align 8, !tbaa !2428
  %681 = add i64 %676, 8
  store i64 %681, i64* %PC, align 8
  %682 = load i32, i32* %642, align 4
  %683 = sext i32 %682 to i64
  store i64 %683, i64* %RCX, align 8, !tbaa !2428
  %684 = shl nsw i64 %683, 3
  %685 = add i64 %684, %680
  %686 = add i64 %676, 13
  store i64 %686, i64* %PC, align 8
  %687 = inttoptr i64 %685 to i64*
  %688 = load i64, i64* %687, align 8
  %689 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %688, i64* %689, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %690 = add i64 %639, -112
  %691 = add i64 %676, 18
  store i64 %691, i64* %PC, align 8
  %692 = inttoptr i64 %690 to i64*
  store i64 %688, i64* %692, align 8
  %693 = load i64, i64* %RBP, align 8
  %694 = add i64 %693, -40
  %695 = load i64, i64* %PC, align 8
  %696 = add i64 %695, 4
  store i64 %696, i64* %PC, align 8
  %697 = inttoptr i64 %694 to i64*
  %698 = load i64, i64* %697, align 8
  store i64 %698, i64* %RAX, align 8, !tbaa !2428
  %699 = add i64 %693, -8
  %700 = add i64 %695, 7
  store i64 %700, i64* %PC, align 8
  %701 = inttoptr i64 %699 to i32*
  %702 = load i32, i32* %701, align 4
  %703 = add i32 %702, 1
  %704 = zext i32 %703 to i64
  store i64 %704, i64* %RDX, align 8, !tbaa !2428
  %705 = icmp eq i32 %702, -1
  %706 = icmp eq i32 %703, 0
  %707 = or i1 %705, %706
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %18, align 1, !tbaa !2433
  %709 = and i32 %703, 255
  %710 = tail call i32 @llvm.ctpop.i32(i32 %709) #10
  %711 = trunc i32 %710 to i8
  %712 = and i8 %711, 1
  %713 = xor i8 %712, 1
  store i8 %713, i8* %25, align 1, !tbaa !2447
  %714 = xor i32 %702, %703
  %715 = lshr i32 %714, 4
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  store i8 %717, i8* %30, align 1, !tbaa !2451
  %718 = icmp eq i32 %703, 0
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %33, align 1, !tbaa !2448
  %720 = lshr i32 %703, 31
  %721 = trunc i32 %720 to i8
  store i8 %721, i8* %36, align 1, !tbaa !2449
  %722 = lshr i32 %702, 31
  %723 = xor i32 %720, %722
  %724 = add nuw nsw i32 %723, %720
  %725 = icmp eq i32 %724, 2
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %42, align 1, !tbaa !2450
  %727 = sext i32 %703 to i64
  store i64 %727, i64* %RCX, align 8, !tbaa !2428
  %728 = shl nsw i64 %727, 3
  %729 = add i64 %728, %698
  %730 = add i64 %695, 18
  store i64 %730, i64* %PC, align 8
  %731 = inttoptr i64 %729 to i64*
  %732 = load i64, i64* %731, align 8
  %733 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %732, i64* %733, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %734 = add i64 %693, -120
  %735 = add i64 %695, 23
  store i64 %735, i64* %PC, align 8
  %736 = inttoptr i64 %734 to i64*
  store i64 %732, i64* %736, align 8
  %737 = load i64, i64* %RBP, align 8
  %738 = add i64 %737, -112
  %739 = load i64, i64* %PC, align 8
  %740 = add i64 %739, 5
  store i64 %740, i64* %PC, align 8
  %741 = inttoptr i64 %738 to double*
  %742 = load double, double* %741, align 8
  store double %742, double* %1489, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %743 = add i64 %737, -128
  %744 = add i64 %739, 10
  store i64 %744, i64* %PC, align 8
  %745 = inttoptr i64 %743 to double*
  %746 = load double, double* %745, align 8
  %747 = fadd double %742, %746
  store double %747, double* %1489, align 1, !tbaa !2452
  store i64 0, i64* %1490, align 1, !tbaa !2452
  %748 = add i64 %739, 15
  store i64 %748, i64* %PC, align 8
  store double %747, double* %745, align 8
  %749 = load i64, i64* %RBP, align 8
  %750 = add i64 %749, -120
  %751 = load i64, i64* %PC, align 8
  %752 = add i64 %751, 5
  store i64 %752, i64* %PC, align 8
  %753 = inttoptr i64 %750 to double*
  %754 = load double, double* %753, align 8
  store double %754, double* %1489, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %755 = add i64 %749, -136
  %756 = add i64 %751, 13
  store i64 %756, i64* %PC, align 8
  %757 = inttoptr i64 %755 to double*
  %758 = load double, double* %757, align 8
  %759 = fadd double %754, %758
  store double %759, double* %1489, align 1, !tbaa !2452
  store i64 0, i64* %1490, align 1, !tbaa !2452
  %760 = add i64 %751, 21
  store i64 %760, i64* %PC, align 8
  store double %759, double* %757, align 8
  %761 = load i64, i64* %RBP, align 8
  %762 = add i64 %761, -112
  %763 = load i64, i64* %PC, align 8
  %764 = add i64 %763, 5
  store i64 %764, i64* %PC, align 8
  %765 = inttoptr i64 %762 to double*
  %766 = load double, double* %765, align 8
  store double %766, double* %1489, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %767 = add i64 %761, -80
  %768 = add i64 %763, 10
  store i64 %768, i64* %PC, align 8
  %769 = inttoptr i64 %767 to double*
  %770 = load double, double* %769, align 8
  store double %770, double* %158, align 1, !tbaa !2452
  store double 0.000000e+00, double* %161, align 1, !tbaa !2452
  %771 = add i64 %763, 14
  store i64 %771, i64* %PC, align 8
  %772 = fcmp uno double %770, %766
  br i1 %772, label %773, label %783

; <label>:773:                                    ; preds = %block_400848
  %774 = fadd double %770, %766
  %775 = bitcast double %774 to i64
  %776 = and i64 %775, 9221120237041090560
  %777 = icmp eq i64 %776, 9218868437227405312
  %778 = and i64 %775, 2251799813685247
  %779 = icmp ne i64 %778, 0
  %780 = and i1 %777, %779
  br i1 %780, label %781, label %789

; <label>:781:                                    ; preds = %773
  %782 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %771, %struct.Memory* %MEMORY.3) #11
  %.pre8 = load i64, i64* %PC, align 8
  %.pre9 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit1

; <label>:783:                                    ; preds = %block_400848
  %784 = fcmp ogt double %770, %766
  br i1 %784, label %789, label %785

; <label>:785:                                    ; preds = %783
  %786 = fcmp olt double %770, %766
  br i1 %786, label %789, label %787

; <label>:787:                                    ; preds = %785
  %788 = fcmp oeq double %770, %766
  br i1 %788, label %789, label %793

; <label>:789:                                    ; preds = %787, %785, %783, %773
  %790 = phi i8 [ 0, %783 ], [ 0, %785 ], [ 1, %787 ], [ 1, %773 ]
  %791 = phi i8 [ 0, %783 ], [ 0, %785 ], [ 0, %787 ], [ 1, %773 ]
  %792 = phi i8 [ 0, %783 ], [ 1, %785 ], [ 0, %787 ], [ 1, %773 ]
  store i8 %790, i8* %33, align 1, !tbaa !2432
  store i8 %791, i8* %25, align 1, !tbaa !2432
  store i8 %792, i8* %18, align 1, !tbaa !2432
  br label %793

; <label>:793:                                    ; preds = %789, %787
  store i8 0, i8* %42, align 1, !tbaa !2432
  store i8 0, i8* %36, align 1, !tbaa !2432
  store i8 0, i8* %30, align 1, !tbaa !2432
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit1

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit1: ; preds = %793, %781
  %794 = phi i64 [ %.pre9, %781 ], [ %761, %793 ]
  %795 = phi i64 [ %.pre8, %781 ], [ %771, %793 ]
  %796 = phi %struct.Memory* [ %782, %781 ], [ %MEMORY.3, %793 ]
  %797 = load i8, i8* %18, align 1, !tbaa !2433
  %798 = icmp ne i8 %797, 0
  %.v32 = select i1 %798, i64 24, i64 6
  %799 = add i64 %795, %.v32
  store i64 %799, i64* %126, align 8, !tbaa !2428
  %800 = icmp eq i8 %797, 1
  br i1 %800, label %block_4008bb, label %block_4008a9

block_4007b7:                                     ; preds = %block_4007ab
  store i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 12), i64* %RSI, align 8, !tbaa !2428
  store i64 2, i64* %RDX, align 8, !tbaa !2428
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %801 = add i64 %1019, -40
  %802 = add i64 %1055, 24
  store i64 %802, i64* %PC, align 8
  %803 = inttoptr i64 %801 to i64*
  %804 = load i64, i64* %803, align 8
  store i64 %804, i64* %RDI, align 8, !tbaa !2428
  %805 = add i64 %1055, 889
  %806 = add i64 %1055, 29
  %807 = load i64, i64* %10, align 8, !tbaa !2428
  %808 = add i64 %807, -8
  %809 = inttoptr i64 %808 to i64*
  store i64 %806, i64* %809, align 8
  store i64 %808, i64* %10, align 8, !tbaa !2428
  store i64 %805, i64* %126, align 8, !tbaa !2428
  %810 = tail call %struct.Memory* @sub_400b30_fourn_renamed_(%struct.State* nonnull %0, i64 %805, %struct.Memory* %MEMORY.7)
  %811 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 12), i64* %RSI, align 8, !tbaa !2428
  store i64 2, i64* %RDX, align 8, !tbaa !2428
  store i64 4294967295, i64* %RCX, align 8, !tbaa !2428
  %812 = load i64, i64* %RBP, align 8
  %813 = add i64 %812, -40
  %814 = add i64 %811, 24
  store i64 %814, i64* %PC, align 8
  %815 = inttoptr i64 %813 to i64*
  %816 = load i64, i64* %815, align 8
  store i64 %816, i64* %RDI, align 8, !tbaa !2428
  %817 = add i64 %811, 860
  %818 = add i64 %811, 29
  %819 = load i64, i64* %10, align 8, !tbaa !2428
  %820 = add i64 %819, -8
  %821 = inttoptr i64 %820 to i64*
  store i64 %818, i64* %821, align 8
  store i64 %820, i64* %10, align 8, !tbaa !2428
  store i64 %817, i64* %126, align 8, !tbaa !2428
  %822 = tail call %struct.Memory* @sub_400b30_fourn_renamed_(%struct.State* nonnull %0, i64 %817, %struct.Memory* %810)
  %823 = load i64, i64* %RBP, align 8
  %824 = add i64 %823, -8
  %825 = load i64, i64* %PC, align 8
  %826 = add i64 %825, 3
  store i64 %826, i64* %PC, align 8
  %827 = inttoptr i64 %824 to i32*
  %828 = load i32, i32* %827, align 4
  %829 = add i32 %828, 1
  %830 = zext i32 %829 to i64
  store i64 %830, i64* %RAX, align 8, !tbaa !2428
  %831 = icmp eq i32 %828, -1
  %832 = icmp eq i32 %829, 0
  %833 = or i1 %831, %832
  %834 = zext i1 %833 to i8
  store i8 %834, i8* %18, align 1, !tbaa !2433
  %835 = and i32 %829, 255
  %836 = tail call i32 @llvm.ctpop.i32(i32 %835) #10
  %837 = trunc i32 %836 to i8
  %838 = and i8 %837, 1
  %839 = xor i8 %838, 1
  store i8 %839, i8* %25, align 1, !tbaa !2447
  %840 = xor i32 %828, %829
  %841 = lshr i32 %840, 4
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  store i8 %843, i8* %30, align 1, !tbaa !2451
  %844 = icmp eq i32 %829, 0
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %33, align 1, !tbaa !2448
  %846 = lshr i32 %829, 31
  %847 = trunc i32 %846 to i8
  store i8 %847, i8* %36, align 1, !tbaa !2449
  %848 = lshr i32 %828, 31
  %849 = xor i32 %846, %848
  %850 = add nuw nsw i32 %849, %846
  %851 = icmp eq i32 %850, 2
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %42, align 1, !tbaa !2450
  %853 = add i64 %825, 9
  store i64 %853, i64* %PC, align 8
  store i32 %829, i32* %827, align 4
  %854 = load i64, i64* %PC, align 8
  %855 = add i64 %854, -79
  store i64 %855, i64* %126, align 8, !tbaa !2428
  br label %block_4007ab

block_4009e1:                                     ; preds = %block_4009da, %block_400a9a
  %856 = phi i64 [ %.pre21, %block_4009da ], [ %1299, %block_400a9a ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.9, %block_4009da ], [ %MEMORY.11, %block_400a9a ]
  %857 = load i64, i64* %RBP, align 8
  %858 = add i64 %857, -12
  %859 = add i64 %856, 3
  store i64 %859, i64* %PC, align 8
  %860 = inttoptr i64 %858 to i32*
  %861 = load i32, i32* %860, align 4
  %862 = zext i32 %861 to i64
  store i64 %862, i64* %RAX, align 8, !tbaa !2428
  %863 = add i64 %857, -32
  %864 = add i64 %856, 6
  store i64 %864, i64* %PC, align 8
  %865 = inttoptr i64 %863 to i32*
  %866 = load i32, i32* %865, align 4
  %867 = sub i32 %861, %866
  %868 = icmp ult i32 %861, %866
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %18, align 1, !tbaa !2433
  %870 = and i32 %867, 255
  %871 = tail call i32 @llvm.ctpop.i32(i32 %870) #10
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  %874 = xor i8 %873, 1
  store i8 %874, i8* %25, align 1, !tbaa !2447
  %875 = xor i32 %866, %861
  %876 = xor i32 %875, %867
  %877 = lshr i32 %876, 4
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  store i8 %879, i8* %30, align 1, !tbaa !2451
  %880 = icmp eq i32 %867, 0
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %33, align 1, !tbaa !2448
  %882 = lshr i32 %867, 31
  %883 = trunc i32 %882 to i8
  store i8 %883, i8* %36, align 1, !tbaa !2449
  %884 = lshr i32 %861, 31
  %885 = lshr i32 %866, 31
  %886 = xor i32 %885, %884
  %887 = xor i32 %882, %884
  %888 = add nuw nsw i32 %887, %886
  %889 = icmp eq i32 %888, 2
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %42, align 1, !tbaa !2450
  %891 = icmp ne i8 %883, 0
  %892 = xor i1 %891, %889
  %.v37 = select i1 %892, i64 12, i64 204
  %893 = add i64 %856, %.v37
  store i64 %893, i64* %126, align 8, !tbaa !2428
  br i1 %892, label %block_4009ed, label %block_400aad

block_400730:                                     ; preds = %block_400729, %block_40077e
  %894 = phi i64 [ %.pre3, %block_400729 ], [ %272, %block_40077e ]
  %895 = load i64, i64* %RBP, align 8
  %896 = add i64 %895, -12
  %897 = add i64 %894, 3
  store i64 %897, i64* %PC, align 8
  %898 = inttoptr i64 %896 to i32*
  %899 = load i32, i32* %898, align 4
  %900 = zext i32 %899 to i64
  store i64 %900, i64* %RAX, align 8, !tbaa !2428
  %901 = add i64 %895, -32
  %902 = add i64 %894, 6
  store i64 %902, i64* %PC, align 8
  %903 = inttoptr i64 %901 to i32*
  %904 = load i32, i32* %903, align 4
  %905 = sub i32 %899, %904
  %906 = icmp ult i32 %899, %904
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %18, align 1, !tbaa !2433
  %908 = and i32 %905, 255
  %909 = tail call i32 @llvm.ctpop.i32(i32 %908) #10
  %910 = trunc i32 %909 to i8
  %911 = and i8 %910, 1
  %912 = xor i8 %911, 1
  store i8 %912, i8* %25, align 1, !tbaa !2447
  %913 = xor i32 %904, %899
  %914 = xor i32 %913, %905
  %915 = lshr i32 %914, 4
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  store i8 %917, i8* %30, align 1, !tbaa !2451
  %918 = icmp eq i32 %905, 0
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %33, align 1, !tbaa !2448
  %920 = lshr i32 %905, 31
  %921 = trunc i32 %920 to i8
  store i8 %921, i8* %36, align 1, !tbaa !2449
  %922 = lshr i32 %899, 31
  %923 = lshr i32 %904, 31
  %924 = xor i32 %923, %922
  %925 = xor i32 %920, %922
  %926 = add nuw nsw i32 %925, %924
  %927 = icmp eq i32 %926, 2
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %42, align 1, !tbaa !2450
  %929 = icmp ne i8 %921, 0
  %930 = xor i1 %929, %927
  %.v27 = select i1 %930, i64 12, i64 97
  %931 = add i64 %894, %.v27
  store i64 %931, i64* %126, align 8, !tbaa !2428
  %932 = add i64 %895, -8
  br i1 %930, label %block_40073c, label %block_400791

block_400a43:                                     ; preds = %block_400a31, %block_4009ed
  %933 = phi i64 [ %.pre22, %block_400a31 ], [ %615, %block_4009ed ]
  %934 = load i64, i64* %RBP, align 8
  %935 = add i64 %934, -177
  %936 = add i64 %933, 6
  store i64 %936, i64* %PC, align 8
  %937 = inttoptr i64 %935 to i8*
  %938 = load i8, i8* %937, align 1
  store i8 %938, i8* %AL, align 1, !tbaa !2432
  store i64 255, i64* %RDX, align 8, !tbaa !2428
  %939 = and i8 %938, 1
  store i8 0, i8* %18, align 1, !tbaa !2433
  %940 = zext i8 %939 to i32
  %941 = tail call i32 @llvm.ctpop.i32(i32 %940) #10
  %942 = trunc i32 %941 to i8
  %943 = xor i8 %942, 1
  store i8 %943, i8* %25, align 1, !tbaa !2447
  %944 = xor i8 %939, 1
  store i8 %944, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  store i8 0, i8* %30, align 1, !tbaa !2451
  %945 = icmp eq i8 %944, 0
  %946 = select i1 %945, i64 255, i64 0
  store i64 %946, i64* %RCX, align 8, !tbaa !2428
  %947 = add i64 %934, -20
  %948 = trunc i64 %946 to i32
  %949 = add i64 %933, 21
  store i64 %949, i64* %PC, align 8
  %950 = inttoptr i64 %947 to i32*
  store i32 %948, i32* %950, align 4
  %951 = load i64, i64* %RBP, align 8
  %952 = add i64 %951, -16
  %953 = load i64, i64* %PC, align 8
  %954 = add i64 %953, 3
  store i64 %954, i64* %PC, align 8
  %955 = inttoptr i64 %952 to i32*
  %956 = load i32, i32* %955, align 4
  %957 = zext i32 %956 to i64
  store i64 %957, i64* %RCX, align 8, !tbaa !2428
  %958 = add i64 %951, -20
  %959 = add i64 %953, 6
  store i64 %959, i64* %PC, align 8
  %960 = inttoptr i64 %958 to i32*
  %961 = load i32, i32* %960, align 4
  %962 = sub i32 %956, %961
  %963 = icmp ult i32 %956, %961
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %18, align 1, !tbaa !2433
  %965 = and i32 %962, 255
  %966 = tail call i32 @llvm.ctpop.i32(i32 %965) #10
  %967 = trunc i32 %966 to i8
  %968 = and i8 %967, 1
  %969 = xor i8 %968, 1
  store i8 %969, i8* %25, align 1, !tbaa !2447
  %970 = xor i32 %961, %956
  %971 = xor i32 %970, %962
  %972 = lshr i32 %971, 4
  %973 = trunc i32 %972 to i8
  %974 = and i8 %973, 1
  store i8 %974, i8* %30, align 1, !tbaa !2451
  %975 = icmp eq i32 %962, 0
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %33, align 1, !tbaa !2448
  %977 = lshr i32 %962, 31
  %978 = trunc i32 %977 to i8
  store i8 %978, i8* %36, align 1, !tbaa !2449
  %979 = lshr i32 %956, 31
  %980 = lshr i32 %961, 31
  %981 = xor i32 %980, %979
  %982 = xor i32 %977, %979
  %983 = add nuw nsw i32 %982, %981
  %984 = icmp eq i32 %983, 2
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %42, align 1, !tbaa !2450
  %.v39 = select i1 %975, i64 66, i64 12
  %986 = add i64 %953, %.v39
  store i64 %986, i64* %126, align 8, !tbaa !2428
  br i1 %975, label %block_400a9a, label %block_400a64

block_400aad:                                     ; preds = %block_4009e1
  %987 = add i64 %857, -8
  %988 = add i64 %893, 8
  store i64 %988, i64* %PC, align 8
  %989 = inttoptr i64 %987 to i32*
  %990 = load i32, i32* %989, align 4
  %991 = add i32 %990, 1
  %992 = zext i32 %991 to i64
  store i64 %992, i64* %RAX, align 8, !tbaa !2428
  %993 = icmp eq i32 %990, -1
  %994 = icmp eq i32 %991, 0
  %995 = or i1 %993, %994
  %996 = zext i1 %995 to i8
  store i8 %996, i8* %18, align 1, !tbaa !2433
  %997 = and i32 %991, 255
  %998 = tail call i32 @llvm.ctpop.i32(i32 %997) #10
  %999 = trunc i32 %998 to i8
  %1000 = and i8 %999, 1
  %1001 = xor i8 %1000, 1
  store i8 %1001, i8* %25, align 1, !tbaa !2447
  %1002 = xor i32 %990, %991
  %1003 = lshr i32 %1002, 4
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  store i8 %1005, i8* %30, align 1, !tbaa !2451
  %1006 = icmp eq i32 %991, 0
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %33, align 1, !tbaa !2448
  %1008 = lshr i32 %991, 31
  %1009 = trunc i32 %1008 to i8
  store i8 %1009, i8* %36, align 1, !tbaa !2449
  %1010 = lshr i32 %990, 31
  %1011 = xor i32 %1008, %1010
  %1012 = add nuw nsw i32 %1011, %1008
  %1013 = icmp eq i32 %1012, 2
  %1014 = zext i1 %1013 to i8
  store i8 %1014, i8* %42, align 1, !tbaa !2450
  %1015 = add i64 %893, 14
  store i64 %1015, i64* %PC, align 8
  store i32 %991, i32* %989, align 4
  %1016 = load i64, i64* %PC, align 8
  %1017 = add i64 %1016, -237
  store i64 %1017, i64* %126, align 8, !tbaa !2428
  br label %block_4009ce

block_4007ab:                                     ; preds = %block_4007a4, %block_4007b7
  %1018 = phi i64 [ %.pre6, %block_4007a4 ], [ %855, %block_4007b7 ]
  %MEMORY.7 = phi %struct.Memory* [ %1482, %block_4007a4 ], [ %822, %block_4007b7 ]
  %1019 = load i64, i64* %RBP, align 8
  %1020 = add i64 %1019, -8
  %1021 = add i64 %1018, 3
  store i64 %1021, i64* %PC, align 8
  %1022 = inttoptr i64 %1020 to i32*
  %1023 = load i32, i32* %1022, align 4
  %1024 = zext i32 %1023 to i64
  store i64 %1024, i64* %RAX, align 8, !tbaa !2428
  %1025 = add i64 %1019, -28
  %1026 = add i64 %1018, 6
  store i64 %1026, i64* %PC, align 8
  %1027 = inttoptr i64 %1025 to i32*
  %1028 = load i32, i32* %1027, align 4
  %1029 = sub i32 %1023, %1028
  %1030 = icmp ult i32 %1023, %1028
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %18, align 1, !tbaa !2433
  %1032 = and i32 %1029, 255
  %1033 = tail call i32 @llvm.ctpop.i32(i32 %1032) #10
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  %1036 = xor i8 %1035, 1
  store i8 %1036, i8* %25, align 1, !tbaa !2447
  %1037 = xor i32 %1028, %1023
  %1038 = xor i32 %1037, %1029
  %1039 = lshr i32 %1038, 4
  %1040 = trunc i32 %1039 to i8
  %1041 = and i8 %1040, 1
  store i8 %1041, i8* %30, align 1, !tbaa !2451
  %1042 = icmp eq i32 %1029, 0
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %33, align 1, !tbaa !2448
  %1044 = lshr i32 %1029, 31
  %1045 = trunc i32 %1044 to i8
  store i8 %1045, i8* %36, align 1, !tbaa !2449
  %1046 = lshr i32 %1023, 31
  %1047 = lshr i32 %1028, 31
  %1048 = xor i32 %1047, %1046
  %1049 = xor i32 %1044, %1046
  %1050 = add nuw nsw i32 %1049, %1048
  %1051 = icmp eq i32 %1050, 2
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %42, align 1, !tbaa !2450
  %1053 = icmp ne i8 %1045, 0
  %1054 = xor i1 %1053, %1051
  %.v30 = select i1 %1054, i64 12, i64 84
  %1055 = add i64 %1018, %.v30
  store i64 %1055, i64* %126, align 8, !tbaa !2428
  br i1 %1054, label %block_4007b7, label %block_4007ff

block_4008a9:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit1
  %1056 = add i64 %794, -112
  %1057 = add i64 %799, 5
  store i64 %1057, i64* %PC, align 8
  %1058 = inttoptr i64 %1056 to i64*
  %1059 = load i64, i64* %1058, align 8
  %1060 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1059, i64* %1060, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %1061 = add i64 %794, -152
  %1062 = add i64 %799, 13
  store i64 %1062, i64* %PC, align 8
  %1063 = inttoptr i64 %1061 to i64*
  store i64 %1059, i64* %1063, align 8
  %1064 = load i64, i64* %PC, align 8
  %1065 = add i64 %1064, 18
  store i64 %1065, i64* %126, align 8, !tbaa !2428
  br label %block_4008c8

block_4008bb:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit1
  %1066 = add i64 %794, -80
  %1067 = add i64 %799, 5
  store i64 %1067, i64* %PC, align 8
  %1068 = inttoptr i64 %1066 to i64*
  %1069 = load i64, i64* %1068, align 8
  %1070 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1069, i64* %1070, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %1071 = add i64 %794, -152
  %1072 = add i64 %799, 13
  store i64 %1072, i64* %PC, align 8
  %1073 = inttoptr i64 %1071 to i64*
  store i64 %1069, i64* %1073, align 8
  %.pre10 = load i64, i64* %PC, align 8
  br label %block_4008c8

block_400925:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %1074 = add i64 %1343, -120
  %1075 = add i64 %1348, 5
  store i64 %1075, i64* %PC, align 8
  %1076 = inttoptr i64 %1074 to i64*
  %1077 = load i64, i64* %1076, align 8
  %1078 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1077, i64* %1078, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %1079 = add i64 %1343, -168
  %1080 = add i64 %1348, 13
  store i64 %1080, i64* %PC, align 8
  %1081 = inttoptr i64 %1079 to i64*
  store i64 %1077, i64* %1081, align 8
  %1082 = load i64, i64* %PC, align 8
  %1083 = add i64 %1082, 18
  store i64 %1083, i64* %126, align 8, !tbaa !2428
  br label %block_400944

block_4007a4:                                     ; preds = %block_40071d
  %1084 = add i64 %1228, 7
  store i64 %1084, i64* %PC, align 8
  store i32 0, i32* %1195, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_4007ab

block_400944:                                     ; preds = %block_400925, %block_400937
  %1085 = phi i64 [ %1083, %block_400925 ], [ %.pre16, %block_400937 ]
  %1086 = load i64, i64* %RBP, align 8
  %1087 = add i64 %1086, -168
  %1088 = add i64 %1085, 8
  store i64 %1088, i64* %PC, align 8
  %1089 = inttoptr i64 %1087 to i64*
  %1090 = load i64, i64* %1089, align 8
  %1091 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1090, i64* %1091, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %1092 = add i64 %1086, -96
  %1093 = add i64 %1085, 13
  store i64 %1093, i64* %PC, align 8
  %1094 = inttoptr i64 %1092 to i64*
  store i64 %1090, i64* %1094, align 8
  %1095 = load i64, i64* %RBP, align 8
  %1096 = add i64 %1095, -120
  %1097 = load i64, i64* %PC, align 8
  %1098 = add i64 %1097, 5
  store i64 %1098, i64* %PC, align 8
  %1099 = inttoptr i64 %1096 to double*
  %1100 = load double, double* %1099, align 8
  store double %1100, double* %1489, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %1101 = add i64 %1095, -104
  %1102 = add i64 %1097, 10
  store i64 %1102, i64* %PC, align 8
  %1103 = inttoptr i64 %1101 to double*
  %1104 = load double, double* %1103, align 8
  %1105 = fcmp uno double %1100, %1104
  br i1 %1105, label %1106, label %1116

; <label>:1106:                                   ; preds = %block_400944
  %1107 = fadd double %1100, %1104
  %1108 = bitcast double %1107 to i64
  %1109 = and i64 %1108, 9221120237041090560
  %1110 = icmp eq i64 %1109, 9218868437227405312
  %1111 = and i64 %1108, 2251799813685247
  %1112 = icmp ne i64 %1111, 0
  %1113 = and i1 %1110, %1112
  br i1 %1113, label %1114, label %1122

; <label>:1114:                                   ; preds = %1106
  %1115 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1102, %struct.Memory* %1345) #11
  %.pre17 = load i64, i64* %PC, align 8
  %.pre18 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:1116:                                   ; preds = %block_400944
  %1117 = fcmp ogt double %1100, %1104
  br i1 %1117, label %1122, label %1118

; <label>:1118:                                   ; preds = %1116
  %1119 = fcmp olt double %1100, %1104
  br i1 %1119, label %1122, label %1120

; <label>:1120:                                   ; preds = %1118
  %1121 = fcmp oeq double %1100, %1104
  br i1 %1121, label %1122, label %1126

; <label>:1122:                                   ; preds = %1120, %1118, %1116, %1106
  %1123 = phi i8 [ 0, %1116 ], [ 0, %1118 ], [ 1, %1120 ], [ 1, %1106 ]
  %1124 = phi i8 [ 0, %1116 ], [ 0, %1118 ], [ 0, %1120 ], [ 1, %1106 ]
  %1125 = phi i8 [ 0, %1116 ], [ 1, %1118 ], [ 0, %1120 ], [ 1, %1106 ]
  store i8 %1123, i8* %33, align 1, !tbaa !2432
  store i8 %1124, i8* %25, align 1, !tbaa !2432
  store i8 %1125, i8* %18, align 1, !tbaa !2432
  br label %1126

; <label>:1126:                                   ; preds = %1122, %1120
  store i8 0, i8* %42, align 1, !tbaa !2432
  store i8 0, i8* %36, align 1, !tbaa !2432
  store i8 0, i8* %30, align 1, !tbaa !2432
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %1126, %1114
  %1127 = phi i64 [ %.pre18, %1114 ], [ %1095, %1126 ]
  %1128 = phi i64 [ %.pre17, %1114 ], [ %1102, %1126 ]
  %1129 = phi %struct.Memory* [ %1115, %1114 ], [ %1345, %1126 ]
  %1130 = load i8, i8* %18, align 1, !tbaa !2433
  %1131 = load i8, i8* %33, align 1, !tbaa !2448
  %1132 = or i8 %1131, %1130
  %1133 = icmp ne i8 %1132, 0
  %.v35 = select i1 %1133, i64 24, i64 6
  %1134 = add i64 %1128, %.v35
  store i64 %1134, i64* %126, align 8, !tbaa !2428
  br i1 %1133, label %block_400973, label %block_400961

block_4008f7:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2
  %1135 = add i64 %486, -88
  %1136 = add i64 %493, 5
  store i64 %1136, i64* %PC, align 8
  %1137 = inttoptr i64 %1135 to i64*
  %1138 = load i64, i64* %1137, align 8
  %1139 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1138, i64* %1139, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %1140 = add i64 %486, -160
  %1141 = add i64 %493, 13
  store i64 %1141, i64* %PC, align 8
  %1142 = inttoptr i64 %1140 to i64*
  store i64 %1138, i64* %1142, align 8
  %.pre13 = load i64, i64* %PC, align 8
  br label %block_400904

block_400961:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %1143 = add i64 %1127, -120
  %1144 = add i64 %1134, 5
  store i64 %1144, i64* %PC, align 8
  %1145 = inttoptr i64 %1143 to i64*
  %1146 = load i64, i64* %1145, align 8
  %1147 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1146, i64* %1147, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %1148 = add i64 %1127, -176
  %1149 = add i64 %1134, 13
  store i64 %1149, i64* %PC, align 8
  %1150 = inttoptr i64 %1148 to i64*
  store i64 %1146, i64* %1150, align 8
  %1151 = load i64, i64* %PC, align 8
  %1152 = add i64 %1151, 18
  store i64 %1152, i64* %126, align 8, !tbaa !2428
  br label %block_400980

block_4009ce:                                     ; preds = %block_40099b, %block_400aad
  %1153 = phi i64 [ %.pre20, %block_40099b ], [ %1017, %block_400aad ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.3, %block_40099b ], [ %MEMORY.4, %block_400aad ]
  %1154 = load i64, i64* %RBP, align 8
  %1155 = add i64 %1154, -8
  %1156 = add i64 %1153, 3
  store i64 %1156, i64* %PC, align 8
  %1157 = inttoptr i64 %1155 to i32*
  %1158 = load i32, i32* %1157, align 4
  %1159 = zext i32 %1158 to i64
  store i64 %1159, i64* %RAX, align 8, !tbaa !2428
  %1160 = add i64 %1154, -32
  %1161 = add i64 %1153, 6
  store i64 %1161, i64* %PC, align 8
  %1162 = inttoptr i64 %1160 to i32*
  %1163 = load i32, i32* %1162, align 4
  %1164 = sub i32 %1158, %1163
  %1165 = icmp ult i32 %1158, %1163
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %18, align 1, !tbaa !2433
  %1167 = and i32 %1164, 255
  %1168 = tail call i32 @llvm.ctpop.i32(i32 %1167) #10
  %1169 = trunc i32 %1168 to i8
  %1170 = and i8 %1169, 1
  %1171 = xor i8 %1170, 1
  store i8 %1171, i8* %25, align 1, !tbaa !2447
  %1172 = xor i32 %1163, %1158
  %1173 = xor i32 %1172, %1164
  %1174 = lshr i32 %1173, 4
  %1175 = trunc i32 %1174 to i8
  %1176 = and i8 %1175, 1
  store i8 %1176, i8* %30, align 1, !tbaa !2451
  %1177 = icmp eq i32 %1164, 0
  %1178 = zext i1 %1177 to i8
  store i8 %1178, i8* %33, align 1, !tbaa !2448
  %1179 = lshr i32 %1164, 31
  %1180 = trunc i32 %1179 to i8
  store i8 %1180, i8* %36, align 1, !tbaa !2449
  %1181 = lshr i32 %1158, 31
  %1182 = lshr i32 %1163, 31
  %1183 = xor i32 %1182, %1181
  %1184 = xor i32 %1179, %1181
  %1185 = add nuw nsw i32 %1184, %1183
  %1186 = icmp eq i32 %1185, 2
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %42, align 1, !tbaa !2450
  %1188 = icmp ne i8 %1180, 0
  %1189 = xor i1 %1188, %1186
  %.v36 = select i1 %1189, i64 12, i64 242
  %1190 = add i64 %1153, %.v36
  store i64 %1190, i64* %126, align 8, !tbaa !2428
  br i1 %1189, label %block_4009da, label %block_400ac0

block_40071d:                                     ; preds = %block_400704, %block_400791
  %1191 = phi i64 [ %.pre, %block_400704 ], [ %1411, %block_400791 ]
  %1192 = load i64, i64* %RBP, align 8
  %1193 = add i64 %1192, -8
  %1194 = add i64 %1191, 3
  store i64 %1194, i64* %PC, align 8
  %1195 = inttoptr i64 %1193 to i32*
  %1196 = load i32, i32* %1195, align 4
  %1197 = zext i32 %1196 to i64
  store i64 %1197, i64* %RAX, align 8, !tbaa !2428
  %1198 = add i64 %1192, -32
  %1199 = add i64 %1191, 6
  store i64 %1199, i64* %PC, align 8
  %1200 = inttoptr i64 %1198 to i32*
  %1201 = load i32, i32* %1200, align 4
  %1202 = sub i32 %1196, %1201
  %1203 = icmp ult i32 %1196, %1201
  %1204 = zext i1 %1203 to i8
  store i8 %1204, i8* %18, align 1, !tbaa !2433
  %1205 = and i32 %1202, 255
  %1206 = tail call i32 @llvm.ctpop.i32(i32 %1205) #10
  %1207 = trunc i32 %1206 to i8
  %1208 = and i8 %1207, 1
  %1209 = xor i8 %1208, 1
  store i8 %1209, i8* %25, align 1, !tbaa !2447
  %1210 = xor i32 %1201, %1196
  %1211 = xor i32 %1210, %1202
  %1212 = lshr i32 %1211, 4
  %1213 = trunc i32 %1212 to i8
  %1214 = and i8 %1213, 1
  store i8 %1214, i8* %30, align 1, !tbaa !2451
  %1215 = icmp eq i32 %1202, 0
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %33, align 1, !tbaa !2448
  %1217 = lshr i32 %1202, 31
  %1218 = trunc i32 %1217 to i8
  store i8 %1218, i8* %36, align 1, !tbaa !2449
  %1219 = lshr i32 %1196, 31
  %1220 = lshr i32 %1201, 31
  %1221 = xor i32 %1220, %1219
  %1222 = xor i32 %1217, %1219
  %1223 = add nuw nsw i32 %1222, %1221
  %1224 = icmp eq i32 %1223, 2
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %42, align 1, !tbaa !2450
  %1226 = icmp ne i8 %1218, 0
  %1227 = xor i1 %1226, %1224
  %.v26 = select i1 %1227, i64 12, i64 135
  %1228 = add i64 %1191, %.v26
  store i64 %1228, i64* %126, align 8, !tbaa !2428
  br i1 %1227, label %block_400729, label %block_4007a4

block_40099b:                                     ; preds = %block_40083a
  %1229 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 24) to i64*), align 8
  %1230 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1229, i64* %1230, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %1231 = add i64 %639, -80
  %1232 = add i64 %676, 13
  store i64 %1232, i64* %PC, align 8
  %1233 = inttoptr i64 %1231 to i64*
  %1234 = load i64, i64* %1233, align 8
  %1235 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1234, i64* %1235, align 1, !tbaa !2452
  store double 0.000000e+00, double* %161, align 1, !tbaa !2452
  %1236 = add i64 %639, -64
  %1237 = add i64 %676, 18
  store i64 %1237, i64* %PC, align 8
  %1238 = inttoptr i64 %1236 to i64*
  store i64 %1234, i64* %1238, align 8
  %1239 = load i64, i64* %RBP, align 8
  %1240 = add i64 %1239, -88
  %1241 = load i64, i64* %PC, align 8
  %1242 = add i64 %1241, 5
  store i64 %1242, i64* %PC, align 8
  %1243 = inttoptr i64 %1240 to double*
  %1244 = load double, double* %1243, align 8
  store double %1244, double* %158, align 1, !tbaa !2452
  store double 0.000000e+00, double* %161, align 1, !tbaa !2452
  %1245 = add i64 %1239, -80
  %1246 = add i64 %1241, 10
  store i64 %1246, i64* %PC, align 8
  %1247 = inttoptr i64 %1245 to double*
  %1248 = load double, double* %1247, align 8
  %1249 = fsub double %1244, %1248
  store double %1249, double* %158, align 1, !tbaa !2452
  store i64 0, i64* %160, align 1, !tbaa !2452
  %1250 = load double, double* %1489, align 1
  %1251 = fdiv double %1250, %1249
  store double %1251, double* %1489, align 1, !tbaa !2452
  %1252 = add i64 %1239, -72
  %1253 = add i64 %1241, 19
  store i64 %1253, i64* %PC, align 8
  %1254 = inttoptr i64 %1252 to double*
  store double %1251, double* %1254, align 8
  %1255 = load i64, i64* %RBP, align 8
  %1256 = add i64 %1255, -24
  %1257 = load i64, i64* %PC, align 8
  %1258 = add i64 %1257, 7
  store i64 %1258, i64* %PC, align 8
  %1259 = inttoptr i64 %1256 to i32*
  store i32 0, i32* %1259, align 4
  %1260 = load i64, i64* %RBP, align 8
  %1261 = add i64 %1260, -8
  %1262 = load i64, i64* %PC, align 8
  %1263 = add i64 %1262, 7
  store i64 %1263, i64* %PC, align 8
  %1264 = inttoptr i64 %1261 to i32*
  store i32 0, i32* %1264, align 4
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %.pre20 = load i64, i64* %PC, align 8
  br label %block_4009ce

block_400a9a:                                     ; preds = %block_400a43, %block_400a64
  %1267 = phi i64 [ %951, %block_400a43 ], [ %.pre24, %block_400a64 ]
  %1268 = phi i64 [ %986, %block_400a43 ], [ %.pre23, %block_400a64 ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.4, %block_400a43 ], [ %330, %block_400a64 ]
  %1269 = add i64 %1267, -12
  %1270 = add i64 %1268, 8
  store i64 %1270, i64* %PC, align 8
  %1271 = inttoptr i64 %1269 to i32*
  %1272 = load i32, i32* %1271, align 4
  %1273 = add i32 %1272, 1
  %1274 = zext i32 %1273 to i64
  store i64 %1274, i64* %RAX, align 8, !tbaa !2428
  %1275 = icmp eq i32 %1272, -1
  %1276 = icmp eq i32 %1273, 0
  %1277 = or i1 %1275, %1276
  %1278 = zext i1 %1277 to i8
  store i8 %1278, i8* %18, align 1, !tbaa !2433
  %1279 = and i32 %1273, 255
  %1280 = tail call i32 @llvm.ctpop.i32(i32 %1279) #10
  %1281 = trunc i32 %1280 to i8
  %1282 = and i8 %1281, 1
  %1283 = xor i8 %1282, 1
  store i8 %1283, i8* %25, align 1, !tbaa !2447
  %1284 = xor i32 %1272, %1273
  %1285 = lshr i32 %1284, 4
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  store i8 %1287, i8* %30, align 1, !tbaa !2451
  %1288 = icmp eq i32 %1273, 0
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %33, align 1, !tbaa !2448
  %1290 = lshr i32 %1273, 31
  %1291 = trunc i32 %1290 to i8
  store i8 %1291, i8* %36, align 1, !tbaa !2449
  %1292 = lshr i32 %1272, 31
  %1293 = xor i32 %1290, %1292
  %1294 = add nuw nsw i32 %1293, %1290
  %1295 = icmp eq i32 %1294, 2
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %42, align 1, !tbaa !2450
  %1297 = add i64 %1268, 14
  store i64 %1297, i64* %PC, align 8
  store i32 %1273, i32* %1271, align 4
  %1298 = load i64, i64* %PC, align 8
  %1299 = add i64 %1298, -199
  store i64 %1299, i64* %126, align 8, !tbaa !2428
  br label %block_4009e1

block_400904:                                     ; preds = %block_4008f7, %block_4008e5
  %1300 = phi i64 [ %.pre13, %block_4008f7 ], [ %239, %block_4008e5 ]
  %1301 = load i64, i64* %RBP, align 8
  %1302 = add i64 %1301, -160
  %1303 = add i64 %1300, 8
  store i64 %1303, i64* %PC, align 8
  %1304 = inttoptr i64 %1302 to i64*
  %1305 = load i64, i64* %1304, align 8
  %1306 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1305, i64* %1306, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %1307 = add i64 %1301, -88
  %1308 = add i64 %1300, 13
  store i64 %1308, i64* %PC, align 8
  %1309 = inttoptr i64 %1307 to i64*
  store i64 %1305, i64* %1309, align 8
  %1310 = load i64, i64* %RBP, align 8
  %1311 = add i64 %1310, -120
  %1312 = load i64, i64* %PC, align 8
  %1313 = add i64 %1312, 5
  store i64 %1313, i64* %PC, align 8
  %1314 = inttoptr i64 %1311 to double*
  %1315 = load double, double* %1314, align 8
  store double %1315, double* %1489, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %1316 = add i64 %1310, -96
  %1317 = add i64 %1312, 10
  store i64 %1317, i64* %PC, align 8
  %1318 = inttoptr i64 %1316 to double*
  %1319 = load double, double* %1318, align 8
  store double %1319, double* %158, align 1, !tbaa !2452
  store double 0.000000e+00, double* %161, align 1, !tbaa !2452
  %1320 = add i64 %1312, 14
  store i64 %1320, i64* %PC, align 8
  %1321 = fcmp uno double %1319, %1315
  br i1 %1321, label %1322, label %1332

; <label>:1322:                                   ; preds = %block_400904
  %1323 = fadd double %1319, %1315
  %1324 = bitcast double %1323 to i64
  %1325 = and i64 %1324, 9221120237041090560
  %1326 = icmp eq i64 %1325, 9218868437227405312
  %1327 = and i64 %1324, 2251799813685247
  %1328 = icmp ne i64 %1327, 0
  %1329 = and i1 %1326, %1328
  br i1 %1329, label %1330, label %1338

; <label>:1330:                                   ; preds = %1322
  %1331 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1320, %struct.Memory* %488) #11
  %.pre14 = load i64, i64* %PC, align 8
  %.pre15 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:1332:                                   ; preds = %block_400904
  %1333 = fcmp ogt double %1319, %1315
  br i1 %1333, label %1338, label %1334

; <label>:1334:                                   ; preds = %1332
  %1335 = fcmp olt double %1319, %1315
  br i1 %1335, label %1338, label %1336

; <label>:1336:                                   ; preds = %1334
  %1337 = fcmp oeq double %1319, %1315
  br i1 %1337, label %1338, label %1342

; <label>:1338:                                   ; preds = %1336, %1334, %1332, %1322
  %1339 = phi i8 [ 0, %1332 ], [ 0, %1334 ], [ 1, %1336 ], [ 1, %1322 ]
  %1340 = phi i8 [ 0, %1332 ], [ 0, %1334 ], [ 0, %1336 ], [ 1, %1322 ]
  %1341 = phi i8 [ 0, %1332 ], [ 1, %1334 ], [ 0, %1336 ], [ 1, %1322 ]
  store i8 %1339, i8* %33, align 1, !tbaa !2432
  store i8 %1340, i8* %25, align 1, !tbaa !2432
  store i8 %1341, i8* %18, align 1, !tbaa !2432
  br label %1342

; <label>:1342:                                   ; preds = %1338, %1336
  store i8 0, i8* %42, align 1, !tbaa !2432
  store i8 0, i8* %36, align 1, !tbaa !2432
  store i8 0, i8* %30, align 1, !tbaa !2432
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %1342, %1330
  %1343 = phi i64 [ %.pre15, %1330 ], [ %1310, %1342 ]
  %1344 = phi i64 [ %.pre14, %1330 ], [ %1320, %1342 ]
  %1345 = phi %struct.Memory* [ %1331, %1330 ], [ %488, %1342 ]
  %1346 = load i8, i8* %18, align 1, !tbaa !2433
  %1347 = icmp ne i8 %1346, 0
  %.v34 = select i1 %1347, i64 24, i64 6
  %1348 = add i64 %1344, %.v34
  store i64 %1348, i64* %126, align 8, !tbaa !2428
  %1349 = icmp eq i8 %1346, 1
  br i1 %1349, label %block_400937, label %block_400925

block_400b16:                                     ; preds = %block_400aca, %block_400af1
  %1350 = phi i64 [ %.pre25, %block_400af1 ], [ %443, %block_400aca ]
  %MEMORY.13 = phi %struct.Memory* [ %223, %block_400af1 ], [ %435, %block_400aca ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %1351 = load i64, i64* %RSP, align 8
  %1352 = add i64 %1351, 192
  store i64 %1352, i64* %RSP, align 8, !tbaa !2428
  %1353 = icmp ugt i64 %1351, -193
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %18, align 1, !tbaa !2433
  %1355 = trunc i64 %1352 to i32
  %1356 = and i32 %1355, 255
  %1357 = tail call i32 @llvm.ctpop.i32(i32 %1356) #10
  %1358 = trunc i32 %1357 to i8
  %1359 = and i8 %1358, 1
  %1360 = xor i8 %1359, 1
  store i8 %1360, i8* %25, align 1, !tbaa !2447
  %1361 = xor i64 %1351, %1352
  %1362 = lshr i64 %1361, 4
  %1363 = trunc i64 %1362 to i8
  %1364 = and i8 %1363, 1
  store i8 %1364, i8* %30, align 1, !tbaa !2451
  %1365 = icmp eq i64 %1352, 0
  %1366 = zext i1 %1365 to i8
  store i8 %1366, i8* %33, align 1, !tbaa !2448
  %1367 = lshr i64 %1352, 63
  %1368 = trunc i64 %1367 to i8
  store i8 %1368, i8* %36, align 1, !tbaa !2449
  %1369 = lshr i64 %1351, 63
  %1370 = xor i64 %1367, %1369
  %1371 = add nuw nsw i64 %1370, %1367
  %1372 = icmp eq i64 %1371, 2
  %1373 = zext i1 %1372 to i8
  store i8 %1373, i8* %42, align 1, !tbaa !2450
  %1374 = add i64 %1350, 10
  store i64 %1374, i64* %PC, align 8
  %1375 = add i64 %1351, 200
  %1376 = inttoptr i64 %1352 to i64*
  %1377 = load i64, i64* %1376, align 8
  store i64 %1377, i64* %RBP, align 8, !tbaa !2428
  store i64 %1375, i64* %10, align 8, !tbaa !2428
  %1378 = add i64 %1350, 11
  store i64 %1378, i64* %PC, align 8
  %1379 = inttoptr i64 %1375 to i64*
  %1380 = load i64, i64* %1379, align 8
  store i64 %1380, i64* %126, align 8, !tbaa !2428
  %1381 = add i64 %1351, 208
  store i64 %1381, i64* %10, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.13

block_400791:                                     ; preds = %block_400730
  %1382 = add i64 %931, 8
  store i64 %1382, i64* %PC, align 8
  %1383 = inttoptr i64 %932 to i32*
  %1384 = load i32, i32* %1383, align 4
  %1385 = add i32 %1384, 1
  %1386 = zext i32 %1385 to i64
  store i64 %1386, i64* %RAX, align 8, !tbaa !2428
  %1387 = icmp eq i32 %1384, -1
  %1388 = icmp eq i32 %1385, 0
  %1389 = or i1 %1387, %1388
  %1390 = zext i1 %1389 to i8
  store i8 %1390, i8* %18, align 1, !tbaa !2433
  %1391 = and i32 %1385, 255
  %1392 = tail call i32 @llvm.ctpop.i32(i32 %1391) #10
  %1393 = trunc i32 %1392 to i8
  %1394 = and i8 %1393, 1
  %1395 = xor i8 %1394, 1
  store i8 %1395, i8* %25, align 1, !tbaa !2447
  %1396 = xor i32 %1384, %1385
  %1397 = lshr i32 %1396, 4
  %1398 = trunc i32 %1397 to i8
  %1399 = and i8 %1398, 1
  store i8 %1399, i8* %30, align 1, !tbaa !2451
  %1400 = icmp eq i32 %1385, 0
  %1401 = zext i1 %1400 to i8
  store i8 %1401, i8* %33, align 1, !tbaa !2448
  %1402 = lshr i32 %1385, 31
  %1403 = trunc i32 %1402 to i8
  store i8 %1403, i8* %36, align 1, !tbaa !2449
  %1404 = lshr i32 %1384, 31
  %1405 = xor i32 %1402, %1404
  %1406 = add nuw nsw i32 %1405, %1402
  %1407 = icmp eq i32 %1406, 2
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %42, align 1, !tbaa !2450
  %1409 = add i64 %931, 14
  store i64 %1409, i64* %PC, align 8
  store i32 %1385, i32* %1383, align 4
  %1410 = load i64, i64* %PC, align 8
  %1411 = add i64 %1410, -130
  store i64 %1411, i64* %126, align 8, !tbaa !2428
  br label %block_40071d

block_4009da:                                     ; preds = %block_4009ce
  %1412 = add i64 %1154, -12
  %1413 = add i64 %1190, 7
  store i64 %1413, i64* %PC, align 8
  %1414 = inttoptr i64 %1412 to i32*
  store i32 0, i32* %1414, align 4
  %.pre21 = load i64, i64* %PC, align 8
  br label %block_4009e1

block_400729:                                     ; preds = %block_40071d
  %1415 = add i64 %1192, -12
  %1416 = add i64 %1228, 7
  store i64 %1416, i64* %PC, align 8
  %1417 = inttoptr i64 %1415 to i32*
  store i32 0, i32* %1417, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_400730

block_400a31:                                     ; preds = %block_4009ed
  %1418 = load i64, i64* %RBP, align 8
  %1419 = add i64 %1418, -12
  %1420 = add i64 %615, 3
  store i64 %1420, i64* %PC, align 8
  %1421 = inttoptr i64 %1419 to i32*
  %1422 = load i32, i32* %1421, align 4
  %1423 = and i32 %1422, 15
  %1424 = zext i32 %1423 to i64
  store i64 %1424, i64* %RAX, align 8, !tbaa !2428
  %1425 = add nsw i32 %1423, -8
  %1426 = icmp ult i32 %1423, 8
  %1427 = zext i1 %1426 to i8
  store i8 %1427, i8* %18, align 1, !tbaa !2433
  %1428 = and i32 %1425, 255
  %1429 = tail call i32 @llvm.ctpop.i32(i32 %1428) #10
  %1430 = trunc i32 %1429 to i8
  %1431 = and i8 %1430, 1
  %1432 = xor i8 %1431, 1
  store i8 %1432, i8* %25, align 1, !tbaa !2447
  %1433 = lshr i32 %1425, 4
  %1434 = trunc i32 %1433 to i8
  %1435 = and i8 %1434, 1
  store i8 %1435, i8* %30, align 1, !tbaa !2451
  %1436 = icmp eq i32 %1425, 0
  %1437 = zext i1 %1436 to i8
  store i8 %1437, i8* %33, align 1, !tbaa !2448
  %1438 = lshr i32 %1425, 31
  %1439 = trunc i32 %1438 to i8
  store i8 %1439, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  store i8 %1437, i8* %CL, align 1, !tbaa !2432
  %1440 = add i64 %1418, -177
  %1441 = add i64 %615, 18
  store i64 %1441, i64* %PC, align 8
  %1442 = inttoptr i64 %1440 to i8*
  store i8 %1437, i8* %1442, align 1
  %.pre22 = load i64, i64* %PC, align 8
  br label %block_400a43

block_40074b:                                     ; preds = %block_40073c
  %1443 = add i64 %637, 3
  store i64 %1443, i64* %PC, align 8
  %1444 = load i32, i32* %898, align 4
  %1445 = and i32 %1444, 15
  %1446 = zext i32 %1445 to i64
  store i64 %1446, i64* %RAX, align 8, !tbaa !2428
  %1447 = add nsw i32 %1445, -8
  %1448 = icmp ult i32 %1445, 8
  %1449 = zext i1 %1448 to i8
  store i8 %1449, i8* %18, align 1, !tbaa !2433
  %1450 = and i32 %1447, 255
  %1451 = tail call i32 @llvm.ctpop.i32(i32 %1450) #10
  %1452 = trunc i32 %1451 to i8
  %1453 = and i8 %1452, 1
  %1454 = xor i8 %1453, 1
  store i8 %1454, i8* %25, align 1, !tbaa !2447
  %1455 = lshr i32 %1447, 4
  %1456 = trunc i32 %1455 to i8
  %1457 = and i8 %1456, 1
  store i8 %1457, i8* %30, align 1, !tbaa !2451
  %1458 = icmp eq i32 %1447, 0
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %33, align 1, !tbaa !2448
  %1460 = lshr i32 %1447, 31
  %1461 = trunc i32 %1460 to i8
  store i8 %1461, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %.v29 = select i1 %1458, i64 15, i64 51
  %1462 = add i64 %637, %.v29
  store i64 %1462, i64* %126, align 8, !tbaa !2428
  br i1 %1458, label %block_40075a, label %block_40077e

block_400973:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %1463 = add i64 %1127, -104
  %1464 = add i64 %1134, 5
  store i64 %1464, i64* %PC, align 8
  %1465 = inttoptr i64 %1463 to i64*
  %1466 = load i64, i64* %1465, align 8
  %1467 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1466, i64* %1467, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %1468 = add i64 %1127, -176
  %1469 = add i64 %1134, 13
  store i64 %1469, i64* %PC, align 8
  %1470 = inttoptr i64 %1468 to i64*
  store i64 %1466, i64* %1470, align 8
  %.pre19 = load i64, i64* %PC, align 8
  br label %block_400980

block_400704:                                     ; preds = %block_400670
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2433
  store i8 1, i8* %25, align 1, !tbaa !2447
  store i8 1, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  store i8 0, i8* %30, align 1, !tbaa !2451
  %1471 = add i64 %150, 6
  store i64 %1471, i64* %PC, align 8
  %1472 = load i64, i64* %138, align 8
  store i64 %1472, i64* %RAX, align 8, !tbaa !2428
  %1473 = add i64 %134, -56
  %1474 = add i64 %150, 10
  store i64 %1474, i64* %PC, align 8
  %1475 = inttoptr i64 %1473 to i64*
  %1476 = load i64, i64* %1475, align 8
  store i64 %1476, i64* %RDX, align 8, !tbaa !2428
  store i64 %1472, i64* %RDI, align 8, !tbaa !2428
  %1477 = add i64 %150, -468
  %1478 = add i64 %150, 18
  %1479 = load i64, i64* %10, align 8, !tbaa !2428
  %1480 = add i64 %1479, -8
  %1481 = inttoptr i64 %1480 to i64*
  store i64 %1478, i64* %1481, align 8
  store i64 %1480, i64* %10, align 8, !tbaa !2428
  store i64 %1477, i64* %126, align 8, !tbaa !2428
  %1482 = tail call fastcc %struct.Memory* @ext_6020a8_memset(%struct.State* nonnull %0, %struct.Memory* %127)
  %1483 = load i64, i64* %RBP, align 8
  %1484 = add i64 %1483, -8
  %1485 = load i64, i64* %PC, align 8
  %1486 = add i64 %1485, 7
  store i64 %1486, i64* %PC, align 8
  %1487 = inttoptr i64 %1484 to i32*
  store i32 0, i32* %1487, align 4
  %1488 = bitcast [32 x %union.VectorReg]* %5 to i8*
  %1489 = bitcast [32 x %union.VectorReg]* %5 to double*
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1491 = bitcast i64* %1490 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_40071d

block_400980:                                     ; preds = %block_400973, %block_400961
  %1492 = phi i64 [ %.pre19, %block_400973 ], [ %1152, %block_400961 ]
  %1493 = load i64, i64* %RBP, align 8
  %1494 = add i64 %1493, -176
  %1495 = add i64 %1492, 8
  store i64 %1495, i64* %PC, align 8
  %1496 = inttoptr i64 %1494 to i64*
  %1497 = load i64, i64* %1496, align 8
  %1498 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1497, i64* %1498, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1491, align 1, !tbaa !2452
  %1499 = add i64 %1493, -104
  %1500 = add i64 %1492, 13
  store i64 %1500, i64* %PC, align 8
  %1501 = inttoptr i64 %1499 to i64*
  store i64 %1497, i64* %1501, align 8
  %1502 = load i64, i64* %RBP, align 8
  %1503 = add i64 %1502, -8
  %1504 = load i64, i64* %PC, align 8
  %1505 = add i64 %1504, 3
  store i64 %1505, i64* %PC, align 8
  %1506 = inttoptr i64 %1503 to i32*
  %1507 = load i32, i32* %1506, align 4
  %1508 = add i32 %1507, 2
  %1509 = zext i32 %1508 to i64
  store i64 %1509, i64* %RAX, align 8, !tbaa !2428
  %1510 = icmp ugt i32 %1507, -3
  %1511 = zext i1 %1510 to i8
  store i8 %1511, i8* %18, align 1, !tbaa !2433
  %1512 = and i32 %1508, 255
  %1513 = tail call i32 @llvm.ctpop.i32(i32 %1512) #10
  %1514 = trunc i32 %1513 to i8
  %1515 = and i8 %1514, 1
  %1516 = xor i8 %1515, 1
  store i8 %1516, i8* %25, align 1, !tbaa !2447
  %1517 = xor i32 %1507, %1508
  %1518 = lshr i32 %1517, 4
  %1519 = trunc i32 %1518 to i8
  %1520 = and i8 %1519, 1
  store i8 %1520, i8* %30, align 1, !tbaa !2451
  %1521 = icmp eq i32 %1508, 0
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %33, align 1, !tbaa !2448
  %1523 = lshr i32 %1508, 31
  %1524 = trunc i32 %1523 to i8
  store i8 %1524, i8* %36, align 1, !tbaa !2449
  %1525 = lshr i32 %1507, 31
  %1526 = xor i32 %1523, %1525
  %1527 = add nuw nsw i32 %1526, %1523
  %1528 = icmp eq i32 %1527, 2
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %42, align 1, !tbaa !2450
  %1530 = add i64 %1504, 9
  store i64 %1530, i64* %PC, align 8
  store i32 %1508, i32* %1506, align 4
  %1531 = load i64, i64* %PC, align 8
  %1532 = add i64 %1531, -348
  store i64 %1532, i64* %126, align 8, !tbaa !2428
  br label %block_40083a
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #6

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400660_frame_dummy() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400660;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @callback_sub_400660_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400660_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400630___do_global_dtors_aux() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400630;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @callback_sub_400630___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400630___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4010b0___libc_csu_fini() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4010b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @callback_sub_4010b0___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4010b0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401040___libc_csu_init() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401040;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @callback_sub_401040___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401040___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400670;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400670_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020b0___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_602098_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #9 {
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
  %.repack = getelementptr inbounds %union.VectorReg, %union.VectorReg* %4, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 0, i64* %.repack, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 2
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 3
  store i64 0, i64* %14, align 8
  store double %11, double* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020b8_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_602090_malloc(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_400570_exit(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020a8_memset(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4010b4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @.term_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4010b4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400508;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #10
  ret void
}

define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400508__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

define internal void @__mcsema_constructor() {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_401040___libc_csu_init()
  ret void
}

define internal void @__mcsema_destructor() {
  tail call void @callback_sub_4010b0___libc_csu_fini()
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline }
attributes #7 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { naked nobuiltin noinline }
attributes #9 = { alwaysinline inlinehint "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { alwaysinline nobuiltin nounwind }

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
!2453 = !{!"double", !2430, i64 0}
!2454 = !{!2446, !2446, i64 0}
!2455 = !{!2456, !2456, i64 0}
!2456 = !{!"float", !2430, i64 0}
!2457 = !{!2458}
!2458 = distinct !{!2458, !2459, !"ext_602098_sin: argument 0"}
!2459 = distinct !{!2459, !"ext_602098_sin"}
!2460 = !{!2461}
!2461 = distinct !{!2461, !2459, !"ext_602098_sin: argument 1"}
!2462 = !{!2463}
!2463 = distinct !{!2463, !2464, !"ext_602098_sin: argument 0"}
!2464 = distinct !{!2464, !"ext_602098_sin"}
!2465 = !{!2466}
!2466 = distinct !{!2466, !2464, !"ext_602098_sin: argument 1"}
