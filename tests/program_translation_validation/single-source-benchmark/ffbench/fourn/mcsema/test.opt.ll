; ModuleID = 'mcsema/test.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4010e0__rodata_type = type <{ [72 x i8], [28 x i8], [48 x i8], [35 x i8], [35 x i8] }>
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
@seg_4010e0__rodata = internal constant %seg_4010e0__rodata_type <{ [72 x i8] c"\01\00\02\00\00\00\00\00\00\00\00 _\A0\02\C2\00\00\00 _\A0\02B\00\00\00\00\00\E0o@\00\00\00\00\00\00`@\00\00\00\00\00\00\F0?\00\00\00\00\00\00\00\C0\00\00\00\00\00\00\E0?\1C-DT\FB!\19@", [28 x i8] c"Can't allocate data array.\0A\00", [48 x i8] c"Wrong answer at (%d,%d)!  Expected %d, got %d.\0A\00", [35 x i8] c"%d passes.  No errors in results.\0A\00", [35 x i8] c"%d passes.  %d errors in results.\0A\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400690_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400660___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602060__bss = internal global %seg_602060__bss_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400690_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400660___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4010d0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401060___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

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
declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #6

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401060___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_401060:
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
  store i8 %51, i8* %43, align 1, !tbaa !2432
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #10
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
  %63 = add i64 %38, -2891
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_400530__init_proc(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2433
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #10
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
  br i1 %76, label %block_4010b6, label %block_401096

block_4010b6.loopexit:                            ; preds = %block_4010a0
  br label %block_4010b6

block_4010b6:                                     ; preds = %block_4010b6.loopexit, %block_401060
  %81 = phi i64 [ %80, %block_401060 ], [ %179, %block_4010b6.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_401060 ], [ %149, %block_4010b6.loopexit ]
  %82 = load i64, i64* %RSP, align 8
  %83 = add i64 %82, 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  %84 = icmp ugt i64 %82, -9
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %43, align 1, !tbaa !2433
  %86 = trunc i64 %83 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #10
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

block_401096:                                     ; preds = %block_401060
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2433
  store i8 1, i8* %44, align 1, !tbaa !2447
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2451
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_4010a0

block_4010a0:                                     ; preds = %block_4010a0, %block_401096
  %134 = phi i64 [ 0, %block_401096 ], [ %152, %block_4010a0 ]
  %135 = phi i64 [ %133, %block_401096 ], [ %179, %block_4010a0 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401096 ], [ %149, %block_4010a0 ]
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
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #10
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
  br i1 %169, label %block_4010b6.loopexit, label %block_4010a0
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4006a0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4006a0:
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
  store i8 %15, i8* %16, align 1, !tbaa !2433
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #10
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
  store i8 %71, i8* %16, align 1, !tbaa !2433
  %72 = and i32 %66, 255
  %73 = tail call i32 @llvm.ctpop.i32(i32 %72) #10
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 1
  %76 = xor i8 %75, 1
  store i8 %76, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %28, align 1, !tbaa !2451
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
  store i8 %93, i8* %16, align 1, !tbaa !2432
  %94 = trunc i64 %90 to i32
  %95 = and i32 %94, 240
  %96 = tail call i32 @llvm.ctpop.i32(i32 %95) #10
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = xor i8 %98, 1
  store i8 %99, i8* %23, align 1, !tbaa !2432
  store i8 0, i8* %28, align 1, !tbaa !2432
  %100 = icmp eq i64 %90, 0
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %31, align 1, !tbaa !2432
  %102 = lshr i64 %89, 59
  %103 = trunc i64 %102 to i8
  %104 = and i8 %103, 1
  store i8 %104, i8* %34, align 1, !tbaa !2432
  store i8 0, i8* %40, align 1, !tbaa !2432
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
  store i8 0, i8* %16, align 1, !tbaa !2433
  %137 = trunc i64 %136 to i32
  %138 = and i32 %137, 255
  %139 = tail call i32 @llvm.ctpop.i32(i32 %138) #10
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  %142 = xor i8 %141, 1
  store i8 %142, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %28, align 1, !tbaa !2451
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
  br i1 %143, label %block_40070b, label %block_400734

block_400878:                                     ; preds = %block_40086a
  %148 = add i64 %290, -40
  %149 = add i64 %327, 4
  store i64 %149, i64* %PC, align 8
  %150 = inttoptr i64 %148 to i64*
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %RAX, align 8, !tbaa !2428
  %152 = add i64 %327, 8
  store i64 %152, i64* %PC, align 8
  %153 = load i32, i32* %293, align 4
  %154 = sext i32 %153 to i64
  store i64 %154, i64* %RCX, align 8, !tbaa !2428
  %155 = shl nsw i64 %154, 3
  %156 = add i64 %155, %151
  %157 = add i64 %327, 13
  store i64 %157, i64* %PC, align 8
  %158 = inttoptr i64 %156 to i64*
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %160 = add i64 %290, -112
  %161 = add i64 %327, 18
  store i64 %161, i64* %PC, align 8
  %162 = inttoptr i64 %160 to i64*
  store i64 %159, i64* %162, align 8
  %163 = load i64, i64* %RBP, align 8
  %164 = add i64 %163, -40
  %165 = load i64, i64* %PC, align 8
  %166 = add i64 %165, 4
  store i64 %166, i64* %PC, align 8
  %167 = inttoptr i64 %164 to i64*
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %RAX, align 8, !tbaa !2428
  %169 = add i64 %163, -8
  %170 = add i64 %165, 7
  store i64 %170, i64* %PC, align 8
  %171 = inttoptr i64 %169 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = add i32 %172, 1
  %174 = zext i32 %173 to i64
  store i64 %174, i64* %RDX, align 8, !tbaa !2428
  %175 = icmp eq i32 %172, -1
  %176 = icmp eq i32 %173, 0
  %177 = or i1 %175, %176
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %16, align 1, !tbaa !2433
  %179 = and i32 %173, 255
  %180 = tail call i32 @llvm.ctpop.i32(i32 %179) #10
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  %183 = xor i8 %182, 1
  store i8 %183, i8* %23, align 1, !tbaa !2447
  %184 = xor i32 %173, %172
  %185 = lshr i32 %184, 4
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  store i8 %187, i8* %28, align 1, !tbaa !2451
  %188 = zext i1 %176 to i8
  store i8 %188, i8* %31, align 1, !tbaa !2448
  %189 = lshr i32 %173, 31
  %190 = trunc i32 %189 to i8
  store i8 %190, i8* %34, align 1, !tbaa !2449
  %191 = lshr i32 %172, 31
  %192 = xor i32 %189, %191
  %193 = add nuw nsw i32 %192, %189
  %194 = icmp eq i32 %193, 2
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %40, align 1, !tbaa !2450
  %196 = sext i32 %173 to i64
  store i64 %196, i64* %RCX, align 8, !tbaa !2428
  %197 = shl nsw i64 %196, 3
  %198 = add i64 %168, %197
  %199 = add i64 %165, 18
  store i64 %199, i64* %PC, align 8
  %200 = inttoptr i64 %198 to i64*
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %202 = add i64 %163, -120
  %203 = add i64 %165, 23
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %202 to i64*
  store i64 %201, i64* %204, align 8
  %205 = load i64, i64* %RBP, align 8
  %206 = add i64 %205, -112
  %207 = load i64, i64* %PC, align 8
  %208 = add i64 %207, 5
  store i64 %208, i64* %PC, align 8
  %209 = inttoptr i64 %206 to i64*
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %211 = add i64 %205, -128
  %212 = add i64 %207, 10
  store i64 %212, i64* %PC, align 8
  %213 = bitcast i64 %210 to double
  %214 = inttoptr i64 %211 to double*
  %215 = load double, double* %214, align 8
  %216 = fadd double %213, %215
  store double %216, double* %961, align 1, !tbaa !2452
  store i64 0, i64* %885, align 1, !tbaa !2452
  %217 = add i64 %207, 15
  store i64 %217, i64* %PC, align 8
  %218 = inttoptr i64 %211 to double*
  store double %216, double* %218, align 8
  %219 = load i64, i64* %RBP, align 8
  %220 = add i64 %219, -120
  %221 = load i64, i64* %PC, align 8
  %222 = add i64 %221, 5
  store i64 %222, i64* %PC, align 8
  %223 = inttoptr i64 %220 to i64*
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %225 = add i64 %219, -136
  %226 = add i64 %221, 13
  store i64 %226, i64* %PC, align 8
  %227 = bitcast i64 %224 to double
  %228 = inttoptr i64 %225 to double*
  %229 = load double, double* %228, align 8
  %230 = fadd double %227, %229
  store double %230, double* %961, align 1, !tbaa !2452
  store i64 0, i64* %885, align 1, !tbaa !2452
  %231 = add i64 %221, 21
  store i64 %231, i64* %PC, align 8
  %232 = inttoptr i64 %225 to double*
  store double %230, double* %232, align 8
  %233 = load i64, i64* %RBP, align 8
  %234 = add i64 %233, -112
  %235 = load i64, i64* %PC, align 8
  %236 = add i64 %235, 5
  store i64 %236, i64* %PC, align 8
  %237 = inttoptr i64 %234 to i64*
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %239 = add i64 %233, -80
  %240 = add i64 %235, 10
  store i64 %240, i64* %PC, align 8
  %241 = inttoptr i64 %239 to i64*
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %929, align 1, !tbaa !2452
  store double 0.000000e+00, double* %931, align 1, !tbaa !2452
  %243 = add i64 %235, 14
  store i64 %243, i64* %PC, align 8
  %.cast = bitcast i64 %242 to double
  %244 = bitcast i64 %238 to double
  %245 = fcmp uno double %.cast, %244
  br i1 %245, label %246, label %256

; <label>:246:                                    ; preds = %block_400878
  %247 = fadd double %.cast, %244
  %248 = bitcast double %247 to i64
  %249 = and i64 %248, 9221120237041090560
  %250 = icmp eq i64 %249, 9218868437227405312
  %251 = and i64 %248, 2251799813685247
  %252 = icmp ne i64 %251, 0
  %253 = and i1 %250, %252
  br i1 %253, label %254, label %262

; <label>:254:                                    ; preds = %246
  %255 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %243, %struct.Memory* %MEMORY.0) #15
  %.pre36 = load i64, i64* %PC, align 8
  %.pre37 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit2

; <label>:256:                                    ; preds = %block_400878
  %257 = fcmp ogt double %.cast, %244
  br i1 %257, label %262, label %258

; <label>:258:                                    ; preds = %256
  %259 = fcmp olt double %.cast, %244
  br i1 %259, label %262, label %260

; <label>:260:                                    ; preds = %258
  %261 = fcmp oeq double %.cast, %244
  br i1 %261, label %262, label %266

; <label>:262:                                    ; preds = %260, %258, %256, %246
  %263 = phi i8 [ 0, %256 ], [ 0, %258 ], [ 1, %260 ], [ 1, %246 ]
  %264 = phi i8 [ 0, %256 ], [ 0, %258 ], [ 0, %260 ], [ 1, %246 ]
  %265 = phi i8 [ 0, %256 ], [ 1, %258 ], [ 0, %260 ], [ 1, %246 ]
  store i8 %263, i8* %31, align 1, !tbaa !2432
  store i8 %264, i8* %23, align 1, !tbaa !2432
  store i8 %265, i8* %16, align 1, !tbaa !2432
  br label %266

; <label>:266:                                    ; preds = %262, %260
  store i8 0, i8* %40, align 1, !tbaa !2432
  store i8 0, i8* %34, align 1, !tbaa !2432
  store i8 0, i8* %28, align 1, !tbaa !2432
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit2

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit2: ; preds = %266, %254
  %267 = phi i64 [ %.pre37, %254 ], [ %233, %266 ]
  %268 = phi i64 [ %.pre36, %254 ], [ %243, %266 ]
  %269 = phi %struct.Memory* [ %255, %254 ], [ %MEMORY.0, %266 ]
  %270 = load i8, i8* %16, align 1, !tbaa !2433
  %271 = icmp ne i8 %270, 0
  %.v79 = select i1 %271, i64 24, i64 6
  %272 = add i64 %268, %.v79
  store i64 %272, i64* %PC, align 8, !tbaa !2428
  %273 = icmp eq i8 %270, 1
  br i1 %273, label %block_4008eb, label %block_4008d9

block_400af0:                                     ; preds = %block_4009fe
  %274 = add i64 %610, -24
  %275 = add i64 %646, 4
  store i64 %275, i64* %PC, align 8
  %276 = inttoptr i64 %274 to i32*
  %277 = load i32, i32* %276, align 4
  store i8 0, i8* %16, align 1, !tbaa !2433
  %278 = and i32 %277, 255
  %279 = tail call i32 @llvm.ctpop.i32(i32 %278) #10
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  %282 = xor i8 %281, 1
  store i8 %282, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %28, align 1, !tbaa !2451
  %283 = icmp eq i32 %277, 0
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %31, align 1, !tbaa !2448
  %285 = lshr i32 %277, 31
  %286 = trunc i32 %285 to i8
  store i8 %286, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  %.v63 = select i1 %283, i64 10, i64 49
  %287 = add i64 %646, %.v63
  %288 = add i64 %287, 10
  store i64 %288, i64* %PC, align 8
  br i1 %283, label %block_400afa, label %block_400b21

block_40086a:                                     ; preds = %block_40082f, %block_4009b0
  %289 = phi i64 [ %.pre35, %block_40082f ], [ %926, %block_4009b0 ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_40082f ], [ %603, %block_4009b0 ]
  %290 = load i64, i64* %RBP, align 8
  %291 = add i64 %290, -8
  %292 = add i64 %289, 4
  store i64 %292, i64* %PC, align 8
  %293 = inttoptr i64 %291 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  store i64 %295, i64* %RAX, align 8, !tbaa !2428
  %296 = add i64 %290, -48
  %297 = add i64 %289, 8
  store i64 %297, i64* %PC, align 8
  %298 = inttoptr i64 %296 to i64*
  %299 = load i64, i64* %298, align 8
  %300 = sub i64 %295, %299
  %301 = icmp ult i64 %295, %299
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %16, align 1, !tbaa !2433
  %303 = trunc i64 %300 to i32
  %304 = and i32 %303, 255
  %305 = tail call i32 @llvm.ctpop.i32(i32 %304) #10
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = xor i8 %307, 1
  store i8 %308, i8* %23, align 1, !tbaa !2447
  %309 = xor i64 %299, %295
  %310 = xor i64 %309, %300
  %311 = lshr i64 %310, 4
  %312 = trunc i64 %311 to i8
  %313 = and i8 %312, 1
  store i8 %313, i8* %28, align 1, !tbaa !2451
  %314 = icmp eq i64 %300, 0
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %31, align 1, !tbaa !2448
  %316 = lshr i64 %300, 63
  %317 = trunc i64 %316 to i8
  store i8 %317, i8* %34, align 1, !tbaa !2449
  %318 = lshr i64 %295, 63
  %319 = lshr i64 %299, 63
  %320 = xor i64 %319, %318
  %321 = xor i64 %316, %318
  %322 = add nuw nsw i64 %321, %320
  %323 = icmp eq i64 %322, 2
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %40, align 1, !tbaa !2450
  %325 = icmp ne i8 %317, 0
  %326 = xor i1 %325, %323
  %.demorgan = or i1 %314, %326
  %.v61 = select i1 %.demorgan, i64 14, i64 353
  %327 = add i64 %289, %.v61
  store i64 %327, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400878, label %block_4009cb

block_40077b:                                     ; preds = %block_40076c
  %328 = add i64 %1150, 3
  store i64 %328, i64* %PC, align 8
  %329 = load i32, i32* %1368, align 4
  %330 = and i32 %329, 15
  %331 = zext i32 %330 to i64
  store i64 %331, i64* %RAX, align 8, !tbaa !2428
  %332 = add nsw i32 %330, -8
  %333 = icmp ult i32 %330, 8
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %16, align 1, !tbaa !2433
  %335 = and i32 %332, 255
  %336 = tail call i32 @llvm.ctpop.i32(i32 %335) #10
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  %339 = xor i8 %338, 1
  store i8 %339, i8* %23, align 1, !tbaa !2447
  %340 = lshr i32 %332, 4
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  store i8 %342, i8* %28, align 1, !tbaa !2451
  %343 = icmp eq i32 %332, 0
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %31, align 1, !tbaa !2448
  %345 = lshr i32 %332, 31
  %346 = trunc i32 %345 to i8
  store i8 %346, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  %.v66 = select i1 %343, i64 15, i64 51
  %347 = add i64 %1150, %.v66
  store i64 %347, i64* %PC, align 8, !tbaa !2428
  br i1 %343, label %block_40078a, label %block_4007ae

block_400a61:                                     ; preds = %block_400a1d
  %348 = load i64, i64* %RBP, align 8
  %349 = add i64 %348, -12
  %350 = add i64 %1258, 3
  store i64 %350, i64* %PC, align 8
  %351 = inttoptr i64 %349 to i32*
  %352 = load i32, i32* %351, align 4
  %353 = and i32 %352, 15
  %354 = zext i32 %353 to i64
  store i64 %354, i64* %RAX, align 8, !tbaa !2428
  %355 = add nsw i32 %353, -8
  %356 = icmp ult i32 %353, 8
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %16, align 1, !tbaa !2433
  %358 = and i32 %355, 255
  %359 = tail call i32 @llvm.ctpop.i32(i32 %358) #10
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  %362 = xor i8 %361, 1
  store i8 %362, i8* %23, align 1, !tbaa !2447
  %363 = lshr i32 %355, 4
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  store i8 %365, i8* %28, align 1, !tbaa !2451
  %366 = icmp eq i32 %355, 0
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %31, align 1, !tbaa !2448
  %368 = lshr i32 %355, 31
  %369 = trunc i32 %368 to i8
  store i8 %369, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  store i8 %367, i8* %CL, align 1, !tbaa !2432
  %370 = add i64 %348, -177
  %371 = add i64 %1258, 18
  store i64 %371, i64* %PC, align 8
  %372 = inttoptr i64 %370 to i8*
  store i8 %367, i8* %372, align 1
  %.pre51 = load i64, i64* %PC, align 8
  br label %block_400a73

block_400a73:                                     ; preds = %block_400a1d, %block_400a61
  %373 = phi i64 [ %1258, %block_400a1d ], [ %.pre51, %block_400a61 ]
  %374 = load i64, i64* %RBP, align 8
  %375 = add i64 %374, -177
  %376 = add i64 %373, 6
  store i64 %376, i64* %PC, align 8
  %377 = inttoptr i64 %375 to i8*
  %378 = load i8, i8* %377, align 1
  store i8 %378, i8* %AL, align 1, !tbaa !2432
  store i64 255, i64* %RDX, align 8, !tbaa !2428
  %379 = and i8 %378, 1
  store i8 0, i8* %16, align 1, !tbaa !2433
  %380 = zext i8 %379 to i32
  %381 = tail call i32 @llvm.ctpop.i32(i32 %380) #10
  %382 = trunc i32 %381 to i8
  %383 = xor i8 %382, 1
  store i8 %383, i8* %23, align 1, !tbaa !2447
  %384 = xor i8 %379, 1
  store i8 %384, i8* %31, align 1, !tbaa !2448
  store i8 0, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  store i8 0, i8* %28, align 1, !tbaa !2451
  %385 = icmp eq i8 %384, 0
  %386 = select i1 %385, i64 255, i64 0
  store i64 %386, i64* %RCX, align 8, !tbaa !2428
  %387 = add i64 %374, -20
  %388 = trunc i64 %386 to i32
  %389 = add i64 %373, 21
  store i64 %389, i64* %PC, align 8
  %390 = inttoptr i64 %387 to i32*
  store i32 %388, i32* %390, align 4
  %391 = load i64, i64* %RBP, align 8
  %392 = add i64 %391, -16
  %393 = load i64, i64* %PC, align 8
  %394 = add i64 %393, 3
  store i64 %394, i64* %PC, align 8
  %395 = inttoptr i64 %392 to i32*
  %396 = load i32, i32* %395, align 4
  %397 = zext i32 %396 to i64
  store i64 %397, i64* %RCX, align 8, !tbaa !2428
  %398 = add i64 %391, -20
  %399 = add i64 %393, 6
  store i64 %399, i64* %PC, align 8
  %400 = inttoptr i64 %398 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = sub i32 %396, %401
  %403 = icmp ult i32 %396, %401
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %16, align 1, !tbaa !2433
  %405 = and i32 %402, 255
  %406 = tail call i32 @llvm.ctpop.i32(i32 %405) #10
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  %409 = xor i8 %408, 1
  store i8 %409, i8* %23, align 1, !tbaa !2447
  %410 = xor i32 %401, %396
  %411 = xor i32 %410, %402
  %412 = lshr i32 %411, 4
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  store i8 %414, i8* %28, align 1, !tbaa !2451
  %415 = icmp eq i32 %402, 0
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %31, align 1, !tbaa !2448
  %417 = lshr i32 %402, 31
  %418 = trunc i32 %417 to i8
  store i8 %418, i8* %34, align 1, !tbaa !2449
  %419 = lshr i32 %396, 31
  %420 = lshr i32 %401, 31
  %421 = xor i32 %420, %419
  %422 = xor i32 %417, %419
  %423 = add nuw nsw i32 %422, %421
  %424 = icmp eq i32 %423, 2
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %40, align 1, !tbaa !2450
  %.v64 = select i1 %415, i64 66, i64 12
  %426 = add i64 %393, %.v64
  store i64 %426, i64* %PC, align 8, !tbaa !2428
  br i1 %415, label %block_400aca, label %block_400a94

block_400add:                                     ; preds = %block_400a11
  %427 = add i64 %1404, -8
  %428 = add i64 %1440, 8
  store i64 %428, i64* %PC, align 8
  %429 = inttoptr i64 %427 to i32*
  %430 = load i32, i32* %429, align 4
  %431 = add i32 %430, 1
  %432 = zext i32 %431 to i64
  store i64 %432, i64* %RAX, align 8, !tbaa !2428
  %433 = icmp eq i32 %430, -1
  %434 = icmp eq i32 %431, 0
  %435 = or i1 %433, %434
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %16, align 1, !tbaa !2433
  %437 = and i32 %431, 255
  %438 = tail call i32 @llvm.ctpop.i32(i32 %437) #10
  %439 = trunc i32 %438 to i8
  %440 = and i8 %439, 1
  %441 = xor i8 %440, 1
  store i8 %441, i8* %23, align 1, !tbaa !2447
  %442 = xor i32 %431, %430
  %443 = lshr i32 %442, 4
  %444 = trunc i32 %443 to i8
  %445 = and i8 %444, 1
  store i8 %445, i8* %28, align 1, !tbaa !2451
  %446 = zext i1 %434 to i8
  store i8 %446, i8* %31, align 1, !tbaa !2448
  %447 = lshr i32 %431, 31
  %448 = trunc i32 %447 to i8
  store i8 %448, i8* %34, align 1, !tbaa !2449
  %449 = lshr i32 %430, 31
  %450 = xor i32 %447, %449
  %451 = add nuw nsw i32 %450, %447
  %452 = icmp eq i32 %451, 2
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %40, align 1, !tbaa !2450
  %454 = add i64 %1440, 14
  store i64 %454, i64* %PC, align 8
  store i32 %431, i32* %429, align 4
  %455 = load i64, i64* %PC, align 8
  %456 = add i64 %455, -237
  store i64 %456, i64* %PC, align 8, !tbaa !2428
  br label %block_4009fe

block_4007db:                                     ; preds = %block_4007d4, %block_4007e7
  %457 = phi i64 [ %.pre34, %block_4007d4 ], [ %557, %block_4007e7 ]
  %MEMORY.2 = phi %struct.Memory* [ %878, %block_4007d4 ], [ %525, %block_4007e7 ]
  %458 = load i64, i64* %RBP, align 8
  %459 = add i64 %458, -8
  %460 = add i64 %457, 3
  store i64 %460, i64* %PC, align 8
  %461 = inttoptr i64 %459 to i32*
  %462 = load i32, i32* %461, align 4
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RAX, align 8, !tbaa !2428
  %464 = add i64 %458, -28
  %465 = add i64 %457, 6
  store i64 %465, i64* %PC, align 8
  %466 = inttoptr i64 %464 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = sub i32 %462, %467
  %469 = icmp ult i32 %462, %467
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %16, align 1, !tbaa !2433
  %471 = and i32 %468, 255
  %472 = tail call i32 @llvm.ctpop.i32(i32 %471) #10
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  store i8 %475, i8* %23, align 1, !tbaa !2447
  %476 = xor i32 %467, %462
  %477 = xor i32 %476, %468
  %478 = lshr i32 %477, 4
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  store i8 %480, i8* %28, align 1, !tbaa !2451
  %481 = icmp eq i32 %468, 0
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %31, align 1, !tbaa !2448
  %483 = lshr i32 %468, 31
  %484 = trunc i32 %483 to i8
  store i8 %484, i8* %34, align 1, !tbaa !2449
  %485 = lshr i32 %462, 31
  %486 = lshr i32 %467, 31
  %487 = xor i32 %486, %485
  %488 = xor i32 %483, %485
  %489 = add nuw nsw i32 %488, %487
  %490 = icmp eq i32 %489, 2
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %40, align 1, !tbaa !2450
  %492 = icmp ne i8 %484, 0
  %493 = xor i1 %492, %490
  %.v60 = select i1 %493, i64 12, i64 84
  %494 = add i64 %457, %.v60
  store i64 %494, i64* %PC, align 8, !tbaa !2428
  br i1 %493, label %block_4007e7, label %block_40082f

block_4008d9:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit2
  %495 = add i64 %267, -112
  %496 = add i64 %272, 5
  store i64 %496, i64* %PC, align 8
  %497 = inttoptr i64 %495 to i64*
  %498 = load i64, i64* %497, align 8
  store i64 %498, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %499 = add i64 %267, -152
  %500 = add i64 %272, 13
  store i64 %500, i64* %PC, align 8
  %501 = inttoptr i64 %499 to i64*
  store i64 %498, i64* %501, align 8
  %502 = load i64, i64* %PC, align 8
  %503 = add i64 %502, 18
  store i64 %503, i64* %PC, align 8, !tbaa !2428
  br label %block_4008f8

block_4007e7:                                     ; preds = %block_4007db
  store i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 12), i64* %RSI, align 8, !tbaa !2428
  store i64 2, i64* %RDX, align 8, !tbaa !2428
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %504 = add i64 %458, -40
  %505 = add i64 %494, 24
  store i64 %505, i64* %PC, align 8
  %506 = inttoptr i64 %504 to i64*
  %507 = load i64, i64* %506, align 8
  store i64 %507, i64* %RDI, align 8, !tbaa !2428
  %508 = add i64 %494, 889
  %509 = add i64 %494, 29
  %510 = load i64, i64* %RSP, align 8, !tbaa !2428
  %511 = add i64 %510, -8
  %512 = inttoptr i64 %511 to i64*
  store i64 %509, i64* %512, align 8
  store i64 %511, i64* %RSP, align 8, !tbaa !2428
  store i64 %508, i64* %PC, align 8, !tbaa !2428
  %513 = tail call %struct.Memory* @sub_400b60_fourn(%struct.State* nonnull %0, i64 %508, %struct.Memory* %MEMORY.2)
  %514 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 12), i64* %RSI, align 8, !tbaa !2428
  store i64 2, i64* %RDX, align 8, !tbaa !2428
  store i64 4294967295, i64* %RCX, align 8, !tbaa !2428
  %515 = load i64, i64* %RBP, align 8
  %516 = add i64 %515, -40
  %517 = add i64 %514, 24
  store i64 %517, i64* %PC, align 8
  %518 = inttoptr i64 %516 to i64*
  %519 = load i64, i64* %518, align 8
  store i64 %519, i64* %RDI, align 8, !tbaa !2428
  %520 = add i64 %514, 860
  %521 = add i64 %514, 29
  %522 = load i64, i64* %RSP, align 8, !tbaa !2428
  %523 = add i64 %522, -8
  %524 = inttoptr i64 %523 to i64*
  store i64 %521, i64* %524, align 8
  store i64 %523, i64* %RSP, align 8, !tbaa !2428
  store i64 %520, i64* %PC, align 8, !tbaa !2428
  %525 = tail call %struct.Memory* @sub_400b60_fourn(%struct.State* nonnull %0, i64 %520, %struct.Memory* %513)
  %526 = load i64, i64* %RBP, align 8
  %527 = add i64 %526, -8
  %528 = load i64, i64* %PC, align 8
  %529 = add i64 %528, 3
  store i64 %529, i64* %PC, align 8
  %530 = inttoptr i64 %527 to i32*
  %531 = load i32, i32* %530, align 4
  %532 = add i32 %531, 1
  %533 = zext i32 %532 to i64
  store i64 %533, i64* %RAX, align 8, !tbaa !2428
  %534 = icmp eq i32 %531, -1
  %535 = icmp eq i32 %532, 0
  %536 = or i1 %534, %535
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %16, align 1, !tbaa !2433
  %538 = and i32 %532, 255
  %539 = tail call i32 @llvm.ctpop.i32(i32 %538) #10
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  store i8 %542, i8* %23, align 1, !tbaa !2447
  %543 = xor i32 %532, %531
  %544 = lshr i32 %543, 4
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  store i8 %546, i8* %28, align 1, !tbaa !2451
  %547 = zext i1 %535 to i8
  store i8 %547, i8* %31, align 1, !tbaa !2448
  %548 = lshr i32 %532, 31
  %549 = trunc i32 %548 to i8
  store i8 %549, i8* %34, align 1, !tbaa !2449
  %550 = lshr i32 %531, 31
  %551 = xor i32 %548, %550
  %552 = add nuw nsw i32 %551, %548
  %553 = icmp eq i32 %552, 2
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %40, align 1, !tbaa !2450
  %555 = add i64 %528, 9
  store i64 %555, i64* %PC, align 8
  store i32 %532, i32* %530, align 4
  %556 = load i64, i64* %PC, align 8
  %557 = add i64 %556, -79
  store i64 %557, i64* %PC, align 8, !tbaa !2428
  br label %block_4007db

block_4007d4:                                     ; preds = %block_40074d
  %558 = add i64 %684, 7
  store i64 %558, i64* %PC, align 8
  store i32 0, i32* %651, align 4
  %.pre34 = load i64, i64* %PC, align 8
  br label %block_4007db

block_400974:                                     ; preds = %block_400955, %block_400967
  %559 = phi i64 [ %1497, %block_400955 ], [ %.pre44, %block_400967 ]
  %560 = load i64, i64* %RBP, align 8
  %561 = add i64 %560, -168
  %562 = add i64 %559, 8
  store i64 %562, i64* %PC, align 8
  %563 = inttoptr i64 %561 to i64*
  %564 = load i64, i64* %563, align 8
  store i64 %564, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %565 = add i64 %560, -96
  %566 = add i64 %559, 13
  store i64 %566, i64* %PC, align 8
  %567 = inttoptr i64 %565 to i64*
  store i64 %564, i64* %567, align 8
  %568 = load i64, i64* %RBP, align 8
  %569 = add i64 %568, -120
  %570 = load i64, i64* %PC, align 8
  %571 = add i64 %570, 5
  store i64 %571, i64* %PC, align 8
  %572 = inttoptr i64 %569 to i64*
  %573 = load i64, i64* %572, align 8
  store i64 %573, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %574 = add i64 %568, -104
  %575 = add i64 %570, 10
  store i64 %575, i64* %PC, align 8
  %576 = bitcast i64 %573 to double
  %577 = inttoptr i64 %574 to double*
  %578 = load double, double* %577, align 8
  %579 = fcmp uno double %576, %578
  br i1 %579, label %580, label %590

; <label>:580:                                    ; preds = %block_400974
  %581 = fadd double %576, %578
  %582 = bitcast double %581 to i64
  %583 = and i64 %582, 9221120237041090560
  %584 = icmp eq i64 %583, 9218868437227405312
  %585 = and i64 %582, 2251799813685247
  %586 = icmp ne i64 %585, 0
  %587 = and i1 %584, %586
  br i1 %587, label %588, label %596

; <label>:588:                                    ; preds = %580
  %589 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %575, %struct.Memory* %1065) #15
  %.pre45 = load i64, i64* %PC, align 8
  %.pre46 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

; <label>:590:                                    ; preds = %block_400974
  %591 = fcmp ogt double %576, %578
  br i1 %591, label %596, label %592

; <label>:592:                                    ; preds = %590
  %593 = fcmp olt double %576, %578
  br i1 %593, label %596, label %594

; <label>:594:                                    ; preds = %592
  %595 = fcmp oeq double %576, %578
  br i1 %595, label %596, label %600

; <label>:596:                                    ; preds = %594, %592, %590, %580
  %597 = phi i8 [ 0, %590 ], [ 0, %592 ], [ 1, %594 ], [ 1, %580 ]
  %598 = phi i8 [ 0, %590 ], [ 0, %592 ], [ 0, %594 ], [ 1, %580 ]
  %599 = phi i8 [ 0, %590 ], [ 1, %592 ], [ 0, %594 ], [ 1, %580 ]
  store i8 %597, i8* %31, align 1, !tbaa !2432
  store i8 %598, i8* %23, align 1, !tbaa !2432
  store i8 %599, i8* %16, align 1, !tbaa !2432
  br label %600

; <label>:600:                                    ; preds = %596, %594
  store i8 0, i8* %40, align 1, !tbaa !2432
  store i8 0, i8* %34, align 1, !tbaa !2432
  store i8 0, i8* %28, align 1, !tbaa !2432
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1: ; preds = %600, %588
  %601 = phi i64 [ %.pre46, %588 ], [ %568, %600 ]
  %602 = phi i64 [ %.pre45, %588 ], [ %575, %600 ]
  %603 = phi %struct.Memory* [ %589, %588 ], [ %1065, %600 ]
  %604 = load i8, i8* %16, align 1, !tbaa !2433
  %605 = load i8, i8* %31, align 1, !tbaa !2448
  %606 = or i8 %605, %604
  %607 = icmp ne i8 %606, 0
  %.v82 = select i1 %607, i64 24, i64 6
  %608 = add i64 %602, %.v82
  store i64 %608, i64* %PC, align 8, !tbaa !2428
  br i1 %607, label %block_4009a3, label %block_400991

block_4009fe:                                     ; preds = %block_4009cb, %block_400add
  %609 = phi i64 [ %.pre48, %block_4009cb ], [ %456, %block_400add ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.0, %block_4009cb ], [ %MEMORY.14, %block_400add ]
  %610 = load i64, i64* %RBP, align 8
  %611 = add i64 %610, -8
  %612 = add i64 %609, 3
  store i64 %612, i64* %PC, align 8
  %613 = inttoptr i64 %611 to i32*
  %614 = load i32, i32* %613, align 4
  %615 = zext i32 %614 to i64
  store i64 %615, i64* %RAX, align 8, !tbaa !2428
  %616 = add i64 %610, -32
  %617 = add i64 %609, 6
  store i64 %617, i64* %PC, align 8
  %618 = inttoptr i64 %616 to i32*
  %619 = load i32, i32* %618, align 4
  %620 = sub i32 %614, %619
  %621 = icmp ult i32 %614, %619
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %16, align 1, !tbaa !2433
  %623 = and i32 %620, 255
  %624 = tail call i32 @llvm.ctpop.i32(i32 %623) #10
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  %627 = xor i8 %626, 1
  store i8 %627, i8* %23, align 1, !tbaa !2447
  %628 = xor i32 %619, %614
  %629 = xor i32 %628, %620
  %630 = lshr i32 %629, 4
  %631 = trunc i32 %630 to i8
  %632 = and i8 %631, 1
  store i8 %632, i8* %28, align 1, !tbaa !2451
  %633 = icmp eq i32 %620, 0
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %31, align 1, !tbaa !2448
  %635 = lshr i32 %620, 31
  %636 = trunc i32 %635 to i8
  store i8 %636, i8* %34, align 1, !tbaa !2449
  %637 = lshr i32 %614, 31
  %638 = lshr i32 %619, 31
  %639 = xor i32 %638, %637
  %640 = xor i32 %635, %637
  %641 = add nuw nsw i32 %640, %639
  %642 = icmp eq i32 %641, 2
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %40, align 1, !tbaa !2450
  %644 = icmp ne i8 %636, 0
  %645 = xor i1 %644, %642
  %.v62 = select i1 %645, i64 12, i64 242
  %646 = add i64 %609, %.v62
  store i64 %646, i64* %PC, align 8, !tbaa !2428
  br i1 %645, label %block_400a0a, label %block_400af0

block_40074d:                                     ; preds = %block_4007c1, %block_400734
  %647 = phi i64 [ %1019, %block_4007c1 ], [ %.pre, %block_400734 ]
  %648 = load i64, i64* %RBP, align 8
  %649 = add i64 %648, -8
  %650 = add i64 %647, 3
  store i64 %650, i64* %PC, align 8
  %651 = inttoptr i64 %649 to i32*
  %652 = load i32, i32* %651, align 4
  %653 = zext i32 %652 to i64
  store i64 %653, i64* %RAX, align 8, !tbaa !2428
  %654 = add i64 %648, -32
  %655 = add i64 %647, 6
  store i64 %655, i64* %PC, align 8
  %656 = inttoptr i64 %654 to i32*
  %657 = load i32, i32* %656, align 4
  %658 = sub i32 %652, %657
  %659 = icmp ult i32 %652, %657
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %16, align 1, !tbaa !2433
  %661 = and i32 %658, 255
  %662 = tail call i32 @llvm.ctpop.i32(i32 %661) #10
  %663 = trunc i32 %662 to i8
  %664 = and i8 %663, 1
  %665 = xor i8 %664, 1
  store i8 %665, i8* %23, align 1, !tbaa !2447
  %666 = xor i32 %657, %652
  %667 = xor i32 %666, %658
  %668 = lshr i32 %667, 4
  %669 = trunc i32 %668 to i8
  %670 = and i8 %669, 1
  store i8 %670, i8* %28, align 1, !tbaa !2451
  %671 = icmp eq i32 %658, 0
  %672 = zext i1 %671 to i8
  store i8 %672, i8* %31, align 1, !tbaa !2448
  %673 = lshr i32 %658, 31
  %674 = trunc i32 %673 to i8
  store i8 %674, i8* %34, align 1, !tbaa !2449
  %675 = lshr i32 %652, 31
  %676 = lshr i32 %657, 31
  %677 = xor i32 %676, %675
  %678 = xor i32 %673, %675
  %679 = add nuw nsw i32 %678, %677
  %680 = icmp eq i32 %679, 2
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %40, align 1, !tbaa !2450
  %682 = icmp ne i8 %674, 0
  %683 = xor i1 %682, %680
  %.v59 = select i1 %683, i64 12, i64 135
  %684 = add i64 %647, %.v59
  store i64 %684, i64* %PC, align 8, !tbaa !2428
  br i1 %683, label %block_400759, label %block_4007d4

block_4009cb:                                     ; preds = %block_40086a
  %685 = bitcast %union.VectorReg* %6 to double*
  %686 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 24) to i64*), align 8
  store i64 %686, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %687 = add i64 %290, -80
  %688 = add i64 %327, 13
  store i64 %688, i64* %PC, align 8
  %689 = inttoptr i64 %687 to i64*
  %690 = load i64, i64* %689, align 8
  store i64 %690, i64* %929, align 1, !tbaa !2452
  store double 0.000000e+00, double* %931, align 1, !tbaa !2452
  %691 = add i64 %290, -64
  %692 = add i64 %327, 18
  store i64 %692, i64* %PC, align 8
  %693 = inttoptr i64 %691 to i64*
  store i64 %690, i64* %693, align 8
  %694 = load i64, i64* %RBP, align 8
  %695 = add i64 %694, -88
  %696 = load i64, i64* %PC, align 8
  %697 = add i64 %696, 5
  store i64 %697, i64* %PC, align 8
  %698 = inttoptr i64 %695 to i64*
  %699 = load i64, i64* %698, align 8
  store i64 %699, i64* %929, align 1, !tbaa !2452
  store double 0.000000e+00, double* %931, align 1, !tbaa !2452
  %700 = add i64 %694, -80
  %701 = add i64 %696, 10
  store i64 %701, i64* %PC, align 8
  %702 = bitcast i64 %699 to double
  %703 = inttoptr i64 %700 to double*
  %704 = load double, double* %703, align 8
  %705 = fsub double %702, %704
  store double %705, double* %685, align 1, !tbaa !2452
  store i64 0, i64* %930, align 1, !tbaa !2452
  %706 = load double, double* %961, align 1
  %707 = fdiv double %706, %705
  store double %707, double* %961, align 1, !tbaa !2452
  %708 = add i64 %694, -72
  %709 = add i64 %696, 19
  store i64 %709, i64* %PC, align 8
  %710 = inttoptr i64 %708 to double*
  store double %707, double* %710, align 8
  %711 = load i64, i64* %RBP, align 8
  %712 = add i64 %711, -24
  %713 = load i64, i64* %PC, align 8
  %714 = add i64 %713, 7
  store i64 %714, i64* %PC, align 8
  %715 = inttoptr i64 %712 to i32*
  store i32 0, i32* %715, align 4
  %716 = load i64, i64* %RBP, align 8
  %717 = add i64 %716, -8
  %718 = load i64, i64* %PC, align 8
  %719 = add i64 %718, 7
  store i64 %719, i64* %PC, align 8
  %720 = inttoptr i64 %717 to i32*
  store i32 0, i32* %720, align 4
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %.pre48 = load i64, i64* %PC, align 8
  br label %block_4009fe

block_400aca:                                     ; preds = %block_400a94, %block_400a73
  %723 = phi i64 [ %391, %block_400a73 ], [ %.pre53, %block_400a94 ]
  %724 = phi i64 [ %426, %block_400a73 ], [ %.pre52, %block_400a94 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.14, %block_400a73 ], [ %1357, %block_400a94 ]
  %725 = add i64 %723, -12
  %726 = add i64 %724, 8
  store i64 %726, i64* %PC, align 8
  %727 = inttoptr i64 %725 to i32*
  %728 = load i32, i32* %727, align 4
  %729 = add i32 %728, 1
  %730 = zext i32 %729 to i64
  store i64 %730, i64* %RAX, align 8, !tbaa !2428
  %731 = icmp eq i32 %728, -1
  %732 = icmp eq i32 %729, 0
  %733 = or i1 %731, %732
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %16, align 1, !tbaa !2433
  %735 = and i32 %729, 255
  %736 = tail call i32 @llvm.ctpop.i32(i32 %735) #10
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  %739 = xor i8 %738, 1
  store i8 %739, i8* %23, align 1, !tbaa !2447
  %740 = xor i32 %729, %728
  %741 = lshr i32 %740, 4
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  store i8 %743, i8* %28, align 1, !tbaa !2451
  %744 = zext i1 %732 to i8
  store i8 %744, i8* %31, align 1, !tbaa !2448
  %745 = lshr i32 %729, 31
  %746 = trunc i32 %745 to i8
  store i8 %746, i8* %34, align 1, !tbaa !2449
  %747 = lshr i32 %728, 31
  %748 = xor i32 %745, %747
  %749 = add nuw nsw i32 %748, %745
  %750 = icmp eq i32 %749, 2
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %40, align 1, !tbaa !2450
  %752 = add i64 %724, 14
  store i64 %752, i64* %PC, align 8
  store i32 %729, i32* %727, align 4
  %753 = load i64, i64* %PC, align 8
  %754 = add i64 %753, -199
  store i64 %754, i64* %PC, align 8, !tbaa !2428
  br label %block_400a11

block_4008f8:                                     ; preds = %block_4008eb, %block_4008d9
  %755 = phi i64 [ %.pre38, %block_4008eb ], [ %503, %block_4008d9 ]
  %756 = load i64, i64* %RBP, align 8
  %757 = add i64 %756, -152
  %758 = add i64 %755, 8
  store i64 %758, i64* %PC, align 8
  %759 = inttoptr i64 %757 to i64*
  %760 = load i64, i64* %759, align 8
  store i64 %760, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %761 = add i64 %756, -80
  %762 = add i64 %755, 13
  store i64 %762, i64* %PC, align 8
  %763 = inttoptr i64 %761 to i64*
  store i64 %760, i64* %763, align 8
  %764 = load i64, i64* %RBP, align 8
  %765 = add i64 %764, -112
  %766 = load i64, i64* %PC, align 8
  %767 = add i64 %766, 5
  store i64 %767, i64* %PC, align 8
  %768 = inttoptr i64 %765 to i64*
  %769 = load i64, i64* %768, align 8
  store i64 %769, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %770 = add i64 %764, -88
  %771 = add i64 %766, 10
  store i64 %771, i64* %PC, align 8
  %772 = bitcast i64 %769 to double
  %773 = inttoptr i64 %770 to double*
  %774 = load double, double* %773, align 8
  %775 = fcmp uno double %772, %774
  br i1 %775, label %776, label %786

; <label>:776:                                    ; preds = %block_4008f8
  %777 = fadd double %772, %774
  %778 = bitcast double %777 to i64
  %779 = and i64 %778, 9221120237041090560
  %780 = icmp eq i64 %779, 9218868437227405312
  %781 = and i64 %778, 2251799813685247
  %782 = icmp ne i64 %781, 0
  %783 = and i1 %780, %782
  br i1 %783, label %784, label %792

; <label>:784:                                    ; preds = %776
  %785 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %771, %struct.Memory* %269) #15
  %.pre39 = load i64, i64* %PC, align 8
  %.pre40 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:786:                                    ; preds = %block_4008f8
  %787 = fcmp ogt double %772, %774
  br i1 %787, label %792, label %788

; <label>:788:                                    ; preds = %786
  %789 = fcmp olt double %772, %774
  br i1 %789, label %792, label %790

; <label>:790:                                    ; preds = %788
  %791 = fcmp oeq double %772, %774
  br i1 %791, label %792, label %796

; <label>:792:                                    ; preds = %790, %788, %786, %776
  %793 = phi i8 [ 0, %786 ], [ 0, %788 ], [ 1, %790 ], [ 1, %776 ]
  %794 = phi i8 [ 0, %786 ], [ 0, %788 ], [ 0, %790 ], [ 1, %776 ]
  %795 = phi i8 [ 0, %786 ], [ 1, %788 ], [ 0, %790 ], [ 1, %776 ]
  store i8 %793, i8* %31, align 1, !tbaa !2432
  store i8 %794, i8* %23, align 1, !tbaa !2432
  store i8 %795, i8* %16, align 1, !tbaa !2432
  br label %796

; <label>:796:                                    ; preds = %792, %790
  store i8 0, i8* %40, align 1, !tbaa !2432
  store i8 0, i8* %34, align 1, !tbaa !2432
  store i8 0, i8* %28, align 1, !tbaa !2432
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %796, %784
  %797 = phi i64 [ %.pre40, %784 ], [ %764, %796 ]
  %798 = phi i64 [ %.pre39, %784 ], [ %771, %796 ]
  %799 = phi %struct.Memory* [ %785, %784 ], [ %269, %796 ]
  %800 = load i8, i8* %16, align 1, !tbaa !2433
  %801 = load i8, i8* %31, align 1, !tbaa !2448
  %802 = or i8 %801, %800
  %803 = icmp ne i8 %802, 0
  %.v80 = select i1 %803, i64 24, i64 6
  %804 = add i64 %798, %.v80
  store i64 %804, i64* %PC, align 8, !tbaa !2428
  br i1 %803, label %block_400927, label %block_400915

block_400967:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %805 = add i64 %1063, -96
  %806 = add i64 %1068, 5
  store i64 %806, i64* %PC, align 8
  %807 = inttoptr i64 %805 to i64*
  %808 = load i64, i64* %807, align 8
  store i64 %808, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %809 = add i64 %1063, -168
  %810 = add i64 %1068, 13
  store i64 %810, i64* %PC, align 8
  %811 = inttoptr i64 %809 to i64*
  store i64 %808, i64* %811, align 8
  %.pre44 = load i64, i64* %PC, align 8
  br label %block_400974

block_40078a:                                     ; preds = %block_40077b, %block_40076c
  %812 = phi i64 [ %1150, %block_40076c ], [ %347, %block_40077b ]
  %813 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 32) to i64*), align 16
  store i64 %813, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %814 = add i64 %1365, -40
  %815 = add i64 %812, 12
  store i64 %815, i64* %PC, align 8
  %816 = inttoptr i64 %814 to i64*
  %817 = load i64, i64* %816, align 8
  store i64 %817, i64* %RAX, align 8, !tbaa !2428
  %818 = add i64 %812, 15
  store i64 %818, i64* %PC, align 8
  %819 = load i32, i32* %1373, align 4
  %820 = zext i32 %819 to i64
  store i64 %820, i64* %RCX, align 8, !tbaa !2428
  %821 = add i64 %812, 19
  store i64 %821, i64* %PC, align 8
  %822 = load i32, i32* %1131, align 4
  %823 = sext i32 %819 to i64
  %824 = sext i32 %822 to i64
  %825 = mul nsw i64 %824, %823
  %826 = trunc i64 %825 to i32
  %827 = and i64 %825, 4294967295
  store i64 %827, i64* %RCX, align 8, !tbaa !2428
  %828 = shl i64 %825, 32
  %829 = ashr exact i64 %828, 32
  %830 = icmp ne i64 %829, %825
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %16, align 1, !tbaa !2433
  %832 = and i32 %826, 255
  %833 = tail call i32 @llvm.ctpop.i32(i32 %832) #10
  %834 = trunc i32 %833 to i8
  %835 = and i8 %834, 1
  %836 = xor i8 %835, 1
  store i8 %836, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %28, align 1, !tbaa !2451
  store i8 0, i8* %31, align 1, !tbaa !2448
  %837 = lshr i32 %826, 31
  %838 = trunc i32 %837 to i8
  store i8 %838, i8* %34, align 1, !tbaa !2449
  store i8 %831, i8* %40, align 1, !tbaa !2450
  %839 = add i64 %812, 22
  store i64 %839, i64* %PC, align 8
  %840 = trunc i64 %825 to i32
  %841 = load i32, i32* %1368, align 4
  %842 = add i32 %841, %840
  %843 = shl i32 %842, 1
  %844 = or i32 %843, 1
  %845 = zext i32 %844 to i64
  store i64 %845, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2433
  %846 = and i32 %844, 255
  %847 = tail call i32 @llvm.ctpop.i32(i32 %846) #10
  %848 = trunc i32 %847 to i8
  %849 = and i8 %848, 1
  %850 = xor i8 %849, 1
  store i8 %850, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %28, align 1, !tbaa !2451
  store i8 0, i8* %31, align 1, !tbaa !2448
  %851 = lshr i32 %842, 30
  %852 = and i32 %851, 1
  %853 = trunc i32 %852 to i8
  store i8 %853, i8* %34, align 1, !tbaa !2449
  %854 = lshr i32 %842, 30
  %855 = and i32 %854, 1
  %856 = xor i32 %852, %855
  %857 = add nuw nsw i32 %856, %852
  %858 = icmp eq i32 %857, 2
  %859 = zext i1 %858 to i8
  store i8 %859, i8* %40, align 1, !tbaa !2450
  %860 = sext i32 %844 to i64
  store i64 %860, i64* %RDX, align 8, !tbaa !2428
  %861 = load i64, i64* %RAX, align 8
  %862 = shl nsw i64 %860, 3
  %863 = add i64 %861, %862
  %864 = add i64 %812, 36
  store i64 %864, i64* %PC, align 8
  %865 = load i64, i64* %884, align 1
  %866 = inttoptr i64 %863 to i64*
  store i64 %865, i64* %866, align 8
  %.pre55 = load i64, i64* %PC, align 8
  %.pre56 = load i64, i64* %RBP, align 8
  br label %block_4007ae

block_400734:                                     ; preds = %block_4006a0
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2433
  store i8 1, i8* %23, align 1, !tbaa !2447
  store i8 1, i8* %31, align 1, !tbaa !2448
  store i8 0, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  store i8 0, i8* %28, align 1, !tbaa !2451
  %867 = add i64 %147, 6
  store i64 %867, i64* %PC, align 8
  %868 = load i64, i64* %135, align 8
  store i64 %868, i64* %RAX, align 8, !tbaa !2428
  %869 = add i64 %131, -56
  %870 = add i64 %147, 10
  store i64 %870, i64* %PC, align 8
  %871 = inttoptr i64 %869 to i64*
  %872 = load i64, i64* %871, align 8
  store i64 %872, i64* %RDX, align 8, !tbaa !2428
  store i64 %868, i64* %RDI, align 8, !tbaa !2428
  %873 = add i64 %147, -468
  %874 = add i64 %147, 18
  %875 = load i64, i64* %RSP, align 8, !tbaa !2428
  %876 = add i64 %875, -8
  %877 = inttoptr i64 %876 to i64*
  store i64 %874, i64* %877, align 8
  store i64 %876, i64* %RSP, align 8, !tbaa !2428
  store i64 %873, i64* %PC, align 8, !tbaa !2428
  %878 = tail call fastcc %struct.Memory* @ext_6020a8_memset(%struct.State* nonnull %0, %struct.Memory* %124)
  %879 = load i64, i64* %RBP, align 8
  %880 = add i64 %879, -8
  %881 = load i64, i64* %PC, align 8
  %882 = add i64 %881, 7
  store i64 %882, i64* %PC, align 8
  %883 = inttoptr i64 %880 to i32*
  store i32 0, i32* %883, align 4
  %884 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %886 = bitcast i64* %885 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_40074d

block_4009b0:                                     ; preds = %block_4009a3, %block_400991
  %887 = phi i64 [ %.pre47, %block_4009a3 ], [ %983, %block_400991 ]
  %888 = load i64, i64* %RBP, align 8
  %889 = add i64 %888, -176
  %890 = add i64 %887, 8
  store i64 %890, i64* %PC, align 8
  %891 = inttoptr i64 %889 to i64*
  %892 = load i64, i64* %891, align 8
  store i64 %892, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %893 = add i64 %888, -104
  %894 = add i64 %887, 13
  store i64 %894, i64* %PC, align 8
  %895 = inttoptr i64 %893 to i64*
  store i64 %892, i64* %895, align 8
  %896 = load i64, i64* %RBP, align 8
  %897 = add i64 %896, -8
  %898 = load i64, i64* %PC, align 8
  %899 = add i64 %898, 3
  store i64 %899, i64* %PC, align 8
  %900 = inttoptr i64 %897 to i32*
  %901 = load i32, i32* %900, align 4
  %902 = add i32 %901, 2
  %903 = zext i32 %902 to i64
  store i64 %903, i64* %RAX, align 8, !tbaa !2428
  %904 = icmp ugt i32 %901, -3
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %16, align 1, !tbaa !2433
  %906 = and i32 %902, 255
  %907 = tail call i32 @llvm.ctpop.i32(i32 %906) #10
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  %910 = xor i8 %909, 1
  store i8 %910, i8* %23, align 1, !tbaa !2447
  %911 = xor i32 %902, %901
  %912 = lshr i32 %911, 4
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  store i8 %914, i8* %28, align 1, !tbaa !2451
  %915 = icmp eq i32 %902, 0
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %31, align 1, !tbaa !2448
  %917 = lshr i32 %902, 31
  %918 = trunc i32 %917 to i8
  store i8 %918, i8* %34, align 1, !tbaa !2449
  %919 = lshr i32 %901, 31
  %920 = xor i32 %917, %919
  %921 = add nuw nsw i32 %920, %917
  %922 = icmp eq i32 %921, 2
  %923 = zext i1 %922 to i8
  store i8 %923, i8* %40, align 1, !tbaa !2450
  %924 = add i64 %898, 9
  store i64 %924, i64* %PC, align 8
  store i32 %902, i32* %900, align 4
  %925 = load i64, i64* %PC, align 8
  %926 = add i64 %925, -348
  store i64 %926, i64* %PC, align 8, !tbaa !2428
  br label %block_40086a

block_40082f:                                     ; preds = %block_4007db
  %927 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %927, align 1, !tbaa !2454
  %928 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 8) to i64*), align 8
  %929 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %928, i64* %929, align 1, !tbaa !2452
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %931 = bitcast i64* %930 to double*
  store double 0.000000e+00, double* %931, align 1, !tbaa !2452
  %932 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 16) to i64*), align 16
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %932, i64* %933, align 1, !tbaa !2452
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %935 = bitcast i64* %934 to double*
  store double 0.000000e+00, double* %935, align 1, !tbaa !2452
  %936 = add i64 %458, -80
  %937 = add i64 %494, 24
  store i64 %937, i64* %PC, align 8
  %938 = inttoptr i64 %936 to i64*
  store i64 %932, i64* %938, align 8
  %939 = load i64, i64* %RBP, align 8
  %940 = add i64 %939, -88
  %941 = load i64, i64* %PC, align 8
  %942 = add i64 %941, 5
  store i64 %942, i64* %PC, align 8
  %943 = load i64, i64* %929, align 1
  %944 = inttoptr i64 %940 to i64*
  store i64 %943, i64* %944, align 8
  %945 = load i64, i64* %RBP, align 8
  %946 = add i64 %945, -96
  %947 = load i64, i64* %PC, align 8
  %948 = add i64 %947, 5
  store i64 %948, i64* %PC, align 8
  %949 = load i64, i64* %933, align 1
  %950 = inttoptr i64 %946 to i64*
  store i64 %949, i64* %950, align 8
  %951 = load i64, i64* %RBP, align 8
  %952 = add i64 %951, -104
  %953 = load i64, i64* %PC, align 8
  %954 = add i64 %953, 5
  store i64 %954, i64* %PC, align 8
  %955 = load i64, i64* %929, align 1
  %956 = inttoptr i64 %952 to i64*
  store i64 %955, i64* %956, align 8
  %957 = load i64, i64* %RBP, align 8
  %958 = add i64 %957, -128
  %959 = load i64, i64* %PC, align 8
  %960 = add i64 %959, 5
  store i64 %960, i64* %PC, align 8
  %961 = bitcast [32 x %union.VectorReg]* %5 to double*
  %962 = load i64, i64* %884, align 1
  %963 = inttoptr i64 %958 to i64*
  store i64 %962, i64* %963, align 8
  %964 = load i64, i64* %RBP, align 8
  %965 = add i64 %964, -136
  %966 = load i64, i64* %PC, align 8
  %967 = add i64 %966, 8
  store i64 %967, i64* %PC, align 8
  %968 = load i64, i64* %884, align 1
  %969 = inttoptr i64 %965 to i64*
  store i64 %968, i64* %969, align 8
  %970 = load i64, i64* %RBP, align 8
  %971 = add i64 %970, -8
  %972 = load i64, i64* %PC, align 8
  %973 = add i64 %972, 7
  store i64 %973, i64* %PC, align 8
  %974 = inttoptr i64 %971 to i32*
  store i32 1, i32* %974, align 4
  %.pre35 = load i64, i64* %PC, align 8
  br label %block_40086a

block_400991:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %975 = add i64 %601, -120
  %976 = add i64 %608, 5
  store i64 %976, i64* %PC, align 8
  %977 = inttoptr i64 %975 to i64*
  %978 = load i64, i64* %977, align 8
  store i64 %978, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %979 = add i64 %601, -176
  %980 = add i64 %608, 13
  store i64 %980, i64* %PC, align 8
  %981 = inttoptr i64 %979 to i64*
  store i64 %978, i64* %981, align 8
  %982 = load i64, i64* %PC, align 8
  %983 = add i64 %982, 18
  store i64 %983, i64* %PC, align 8, !tbaa !2428
  br label %block_4009b0

block_400927:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %984 = add i64 %797, -88
  %985 = add i64 %804, 5
  store i64 %985, i64* %PC, align 8
  %986 = inttoptr i64 %984 to i64*
  %987 = load i64, i64* %986, align 8
  store i64 %987, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %988 = add i64 %797, -160
  %989 = add i64 %804, 13
  store i64 %989, i64* %PC, align 8
  %990 = inttoptr i64 %988 to i64*
  store i64 %987, i64* %990, align 8
  %.pre41 = load i64, i64* %PC, align 8
  br label %block_400934

block_4007c1:                                     ; preds = %block_400760
  %991 = add i64 %1401, 8
  store i64 %991, i64* %PC, align 8
  %992 = inttoptr i64 %1402 to i32*
  %993 = load i32, i32* %992, align 4
  %994 = add i32 %993, 1
  %995 = zext i32 %994 to i64
  store i64 %995, i64* %RAX, align 8, !tbaa !2428
  %996 = icmp eq i32 %993, -1
  %997 = icmp eq i32 %994, 0
  %998 = or i1 %996, %997
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %16, align 1, !tbaa !2433
  %1000 = and i32 %994, 255
  %1001 = tail call i32 @llvm.ctpop.i32(i32 %1000) #10
  %1002 = trunc i32 %1001 to i8
  %1003 = and i8 %1002, 1
  %1004 = xor i8 %1003, 1
  store i8 %1004, i8* %23, align 1, !tbaa !2447
  %1005 = xor i32 %994, %993
  %1006 = lshr i32 %1005, 4
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  store i8 %1008, i8* %28, align 1, !tbaa !2451
  %1009 = zext i1 %997 to i8
  store i8 %1009, i8* %31, align 1, !tbaa !2448
  %1010 = lshr i32 %994, 31
  %1011 = trunc i32 %1010 to i8
  store i8 %1011, i8* %34, align 1, !tbaa !2449
  %1012 = lshr i32 %993, 31
  %1013 = xor i32 %1010, %1012
  %1014 = add nuw nsw i32 %1013, %1010
  %1015 = icmp eq i32 %1014, 2
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %40, align 1, !tbaa !2450
  %1017 = add i64 %1401, 14
  store i64 %1017, i64* %PC, align 8
  store i32 %994, i32* %992, align 4
  %1018 = load i64, i64* %PC, align 8
  %1019 = add i64 %1018, -130
  store i64 %1019, i64* %PC, align 8, !tbaa !2428
  br label %block_40074d

block_400934:                                     ; preds = %block_400915, %block_400927
  %1020 = phi i64 [ %1268, %block_400915 ], [ %.pre41, %block_400927 ]
  %1021 = load i64, i64* %RBP, align 8
  %1022 = add i64 %1021, -160
  %1023 = add i64 %1020, 8
  store i64 %1023, i64* %PC, align 8
  %1024 = inttoptr i64 %1022 to i64*
  %1025 = load i64, i64* %1024, align 8
  store i64 %1025, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %1026 = add i64 %1021, -88
  %1027 = add i64 %1020, 13
  store i64 %1027, i64* %PC, align 8
  %1028 = inttoptr i64 %1026 to i64*
  store i64 %1025, i64* %1028, align 8
  %1029 = load i64, i64* %RBP, align 8
  %1030 = add i64 %1029, -120
  %1031 = load i64, i64* %PC, align 8
  %1032 = add i64 %1031, 5
  store i64 %1032, i64* %PC, align 8
  %1033 = inttoptr i64 %1030 to i64*
  %1034 = load i64, i64* %1033, align 8
  store i64 %1034, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %1035 = add i64 %1029, -96
  %1036 = add i64 %1031, 10
  store i64 %1036, i64* %PC, align 8
  %1037 = inttoptr i64 %1035 to i64*
  %1038 = load i64, i64* %1037, align 8
  store i64 %1038, i64* %929, align 1, !tbaa !2452
  store double 0.000000e+00, double* %931, align 1, !tbaa !2452
  %1039 = add i64 %1031, 14
  store i64 %1039, i64* %PC, align 8
  %.cast18 = bitcast i64 %1038 to double
  %1040 = bitcast i64 %1034 to double
  %1041 = fcmp uno double %.cast18, %1040
  br i1 %1041, label %1042, label %1052

; <label>:1042:                                   ; preds = %block_400934
  %1043 = fadd double %.cast18, %1040
  %1044 = bitcast double %1043 to i64
  %1045 = and i64 %1044, 9221120237041090560
  %1046 = icmp eq i64 %1045, 9218868437227405312
  %1047 = and i64 %1044, 2251799813685247
  %1048 = icmp ne i64 %1047, 0
  %1049 = and i1 %1046, %1048
  br i1 %1049, label %1050, label %1058

; <label>:1050:                                   ; preds = %1042
  %1051 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1039, %struct.Memory* %799) #15
  %.pre42 = load i64, i64* %PC, align 8
  %.pre43 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:1052:                                   ; preds = %block_400934
  %1053 = fcmp ogt double %.cast18, %1040
  br i1 %1053, label %1058, label %1054

; <label>:1054:                                   ; preds = %1052
  %1055 = fcmp olt double %.cast18, %1040
  br i1 %1055, label %1058, label %1056

; <label>:1056:                                   ; preds = %1054
  %1057 = fcmp oeq double %.cast18, %1040
  br i1 %1057, label %1058, label %1062

; <label>:1058:                                   ; preds = %1056, %1054, %1052, %1042
  %1059 = phi i8 [ 0, %1052 ], [ 0, %1054 ], [ 1, %1056 ], [ 1, %1042 ]
  %1060 = phi i8 [ 0, %1052 ], [ 0, %1054 ], [ 0, %1056 ], [ 1, %1042 ]
  %1061 = phi i8 [ 0, %1052 ], [ 1, %1054 ], [ 0, %1056 ], [ 1, %1042 ]
  store i8 %1059, i8* %31, align 1, !tbaa !2432
  store i8 %1060, i8* %23, align 1, !tbaa !2432
  store i8 %1061, i8* %16, align 1, !tbaa !2432
  br label %1062

; <label>:1062:                                   ; preds = %1058, %1056
  store i8 0, i8* %40, align 1, !tbaa !2432
  store i8 0, i8* %34, align 1, !tbaa !2432
  store i8 0, i8* %28, align 1, !tbaa !2432
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %1062, %1050
  %1063 = phi i64 [ %.pre43, %1050 ], [ %1029, %1062 ]
  %1064 = phi i64 [ %.pre42, %1050 ], [ %1039, %1062 ]
  %1065 = phi %struct.Memory* [ %1051, %1050 ], [ %799, %1062 ]
  %1066 = load i8, i8* %16, align 1, !tbaa !2433
  %1067 = icmp ne i8 %1066, 0
  %.v81 = select i1 %1067, i64 24, i64 6
  %1068 = add i64 %1064, %.v81
  store i64 %1068, i64* %PC, align 8, !tbaa !2428
  %1069 = icmp eq i8 %1066, 1
  br i1 %1069, label %block_400967, label %block_400955

block_400b46:                                     ; preds = %block_400afa, %block_400b21
  %1070 = phi i64 [ %.pre49, %block_400b21 ], [ %1460, %block_400afa ]
  %MEMORY.11 = phi %struct.Memory* [ %1123, %block_400b21 ], [ %1452, %block_400afa ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %1071 = load i64, i64* %RSP, align 8
  %1072 = add i64 %1071, 192
  store i64 %1072, i64* %RSP, align 8, !tbaa !2428
  %1073 = icmp ugt i64 %1071, -193
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %16, align 1, !tbaa !2433
  %1075 = trunc i64 %1072 to i32
  %1076 = and i32 %1075, 255
  %1077 = tail call i32 @llvm.ctpop.i32(i32 %1076) #10
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  store i8 %1080, i8* %23, align 1, !tbaa !2447
  %1081 = xor i64 %1072, %1071
  %1082 = lshr i64 %1081, 4
  %1083 = trunc i64 %1082 to i8
  %1084 = and i8 %1083, 1
  store i8 %1084, i8* %28, align 1, !tbaa !2451
  %1085 = icmp eq i64 %1072, 0
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %31, align 1, !tbaa !2448
  %1087 = lshr i64 %1072, 63
  %1088 = trunc i64 %1087 to i8
  store i8 %1088, i8* %34, align 1, !tbaa !2449
  %1089 = lshr i64 %1071, 63
  %1090 = xor i64 %1087, %1089
  %1091 = add nuw nsw i64 %1090, %1087
  %1092 = icmp eq i64 %1091, 2
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %40, align 1, !tbaa !2450
  %1094 = add i64 %1070, 10
  store i64 %1094, i64* %PC, align 8
  %1095 = add i64 %1071, 200
  %1096 = inttoptr i64 %1072 to i64*
  %1097 = load i64, i64* %1096, align 8
  store i64 %1097, i64* %RBP, align 8, !tbaa !2428
  store i64 %1095, i64* %RSP, align 8, !tbaa !2428
  %1098 = add i64 %1070, 11
  store i64 %1098, i64* %PC, align 8
  %1099 = inttoptr i64 %1095 to i64*
  %1100 = load i64, i64* %1099, align 8
  store i64 %1100, i64* %PC, align 8, !tbaa !2428
  %1101 = add i64 %1071, 208
  store i64 %1101, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.11

block_4009a3:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %1102 = add i64 %601, -104
  %1103 = add i64 %608, 5
  store i64 %1103, i64* %PC, align 8
  %1104 = inttoptr i64 %1102 to i64*
  %1105 = load i64, i64* %1104, align 8
  store i64 %1105, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %1106 = add i64 %601, -176
  %1107 = add i64 %608, 13
  store i64 %1107, i64* %PC, align 8
  %1108 = inttoptr i64 %1106 to i64*
  store i64 %1105, i64* %1108, align 8
  %.pre47 = load i64, i64* %PC, align 8
  br label %block_4009b0

block_400b21:                                     ; preds = %block_400af0
  store i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 183), i64* %RSI, align 8, !tbaa !2428
  %1109 = load i64, i64* @stderr, align 32
  store i64 %1109, i64* %RDI, align 8, !tbaa !2428
  %1110 = add i64 %610, -28
  %1111 = add i64 %287, 21
  store i64 %1111, i64* %PC, align 8
  %1112 = inttoptr i64 %1110 to i32*
  %1113 = load i32, i32* %1112, align 4
  %1114 = zext i32 %1113 to i64
  store i64 %1114, i64* %RDX, align 8, !tbaa !2428
  %1115 = add i64 %287, 24
  store i64 %1115, i64* %PC, align 8
  %1116 = load i32, i32* %276, align 4
  %1117 = zext i32 %1116 to i64
  store i64 %1117, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2432
  %1118 = add i64 %287, -1457
  %1119 = add i64 %287, 31
  %1120 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1121 = add i64 %1120, -8
  %1122 = inttoptr i64 %1121 to i64*
  store i64 %1119, i64* %1122, align 8
  store i64 %1121, i64* %RSP, align 8, !tbaa !2428
  store i64 %1118, i64* %PC, align 8, !tbaa !2428
  %1123 = tail call fastcc %struct.Memory* @ext_400570_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %1124 = load i64, i64* %RBP, align 8
  %1125 = add i64 %1124, -192
  %1126 = load i32, i32* %EAX, align 4
  %1127 = load i64, i64* %PC, align 8
  %1128 = add i64 %1127, 6
  store i64 %1128, i64* %PC, align 8
  %1129 = inttoptr i64 %1125 to i32*
  store i32 %1126, i32* %1129, align 4
  %.pre49 = load i64, i64* %PC, align 8
  br label %block_400b46

block_40076c:                                     ; preds = %block_400760
  %1130 = add i64 %1401, 3
  store i64 %1130, i64* %PC, align 8
  %1131 = inttoptr i64 %1402 to i32*
  %1132 = load i32, i32* %1131, align 4
  %1133 = and i32 %1132, 15
  %1134 = zext i32 %1133 to i64
  store i64 %1134, i64* %RAX, align 8, !tbaa !2428
  %1135 = add nsw i32 %1133, -8
  %1136 = icmp ult i32 %1133, 8
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %16, align 1, !tbaa !2433
  %1138 = and i32 %1135, 255
  %1139 = tail call i32 @llvm.ctpop.i32(i32 %1138) #10
  %1140 = trunc i32 %1139 to i8
  %1141 = and i8 %1140, 1
  %1142 = xor i8 %1141, 1
  store i8 %1142, i8* %23, align 1, !tbaa !2447
  %1143 = lshr i32 %1135, 4
  %1144 = trunc i32 %1143 to i8
  %1145 = and i8 %1144, 1
  store i8 %1145, i8* %28, align 1, !tbaa !2451
  %1146 = icmp eq i32 %1135, 0
  %1147 = zext i1 %1146 to i8
  store i8 %1147, i8* %31, align 1, !tbaa !2448
  %1148 = lshr i32 %1135, 31
  %1149 = trunc i32 %1148 to i8
  store i8 %1149, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  %.v65 = select i1 %1146, i64 30, i64 15
  %1150 = add i64 %1401, %.v65
  store i64 %1150, i64* %PC, align 8, !tbaa !2428
  br i1 %1146, label %block_40078a, label %block_40077b

block_400a1d:                                     ; preds = %block_400a11
  store i8 1, i8* %AL, align 1, !tbaa !2432
  %1151 = add i64 %1404, -40
  %1152 = add i64 %1440, 6
  store i64 %1152, i64* %PC, align 8
  %1153 = inttoptr i64 %1151 to i64*
  %1154 = load i64, i64* %1153, align 8
  store i64 %1154, i64* %RCX, align 8, !tbaa !2428
  %1155 = add i64 %1440, 9
  store i64 %1155, i64* %PC, align 8
  %1156 = load i32, i32* %1412, align 4
  %1157 = zext i32 %1156 to i64
  store i64 %1157, i64* %RDX, align 8, !tbaa !2428
  %1158 = add i64 %1404, -8
  %1159 = add i64 %1440, 13
  store i64 %1159, i64* %PC, align 8
  %1160 = inttoptr i64 %1158 to i32*
  %1161 = load i32, i32* %1160, align 4
  %1162 = sext i32 %1156 to i64
  %1163 = sext i32 %1161 to i64
  %1164 = mul nsw i64 %1163, %1162
  %1165 = trunc i64 %1164 to i32
  %1166 = and i64 %1164, 4294967295
  store i64 %1166, i64* %RDX, align 8, !tbaa !2428
  %1167 = shl i64 %1164, 32
  %1168 = ashr exact i64 %1167, 32
  %1169 = icmp ne i64 %1168, %1164
  %1170 = zext i1 %1169 to i8
  store i8 %1170, i8* %16, align 1, !tbaa !2433
  %1171 = and i32 %1165, 255
  %1172 = tail call i32 @llvm.ctpop.i32(i32 %1171) #10
  %1173 = trunc i32 %1172 to i8
  %1174 = and i8 %1173, 1
  %1175 = xor i8 %1174, 1
  store i8 %1175, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %28, align 1, !tbaa !2451
  store i8 0, i8* %31, align 1, !tbaa !2448
  %1176 = lshr i32 %1165, 31
  %1177 = trunc i32 %1176 to i8
  store i8 %1177, i8* %34, align 1, !tbaa !2449
  store i8 %1170, i8* %40, align 1, !tbaa !2450
  %1178 = add i64 %1440, 16
  store i64 %1178, i64* %PC, align 8
  %1179 = trunc i64 %1164 to i32
  %1180 = load i32, i32* %1407, align 4
  %1181 = add i32 %1180, %1179
  %1182 = shl i32 %1181, 1
  %1183 = or i32 %1182, 1
  %1184 = zext i32 %1183 to i64
  store i64 %1184, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2433
  %1185 = and i32 %1183, 255
  %1186 = tail call i32 @llvm.ctpop.i32(i32 %1185) #10
  %1187 = trunc i32 %1186 to i8
  %1188 = and i8 %1187, 1
  %1189 = xor i8 %1188, 1
  store i8 %1189, i8* %23, align 1, !tbaa !2447
  store i8 0, i8* %28, align 1, !tbaa !2451
  store i8 0, i8* %31, align 1, !tbaa !2448
  %1190 = lshr i32 %1181, 30
  %1191 = and i32 %1190, 1
  %1192 = trunc i32 %1191 to i8
  store i8 %1192, i8* %34, align 1, !tbaa !2449
  %1193 = lshr i32 %1181, 30
  %1194 = and i32 %1193, 1
  %1195 = xor i32 %1191, %1194
  %1196 = add nuw nsw i32 %1195, %1191
  %1197 = icmp eq i32 %1196, 2
  %1198 = zext i1 %1197 to i8
  store i8 %1198, i8* %40, align 1, !tbaa !2450
  %1199 = sext i32 %1183 to i64
  store i64 %1199, i64* %RSI, align 8, !tbaa !2428
  %1200 = load i64, i64* %RCX, align 8
  %1201 = shl nsw i64 %1199, 3
  %1202 = add i64 %1200, %1201
  %1203 = add i64 %1440, 30
  store i64 %1203, i64* %PC, align 8
  %1204 = inttoptr i64 %1202 to i64*
  %1205 = load i64, i64* %1204, align 8
  store i64 %1205, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %1206 = load i64, i64* %RBP, align 8
  %1207 = add i64 %1206, -64
  %1208 = add i64 %1440, 35
  store i64 %1208, i64* %PC, align 8
  %1209 = bitcast i64 %1205 to double
  %1210 = inttoptr i64 %1207 to double*
  %1211 = load double, double* %1210, align 8
  %1212 = fsub double %1209, %1211
  store double %1212, double* %961, align 1, !tbaa !2452
  store i64 0, i64* %885, align 1, !tbaa !2452
  %1213 = add i64 %1206, -72
  %1214 = add i64 %1440, 40
  store i64 %1214, i64* %PC, align 8
  %1215 = inttoptr i64 %1213 to double*
  %1216 = load double, double* %1215, align 8
  %1217 = fmul double %1212, %1216
  store double %1217, double* %961, align 1, !tbaa !2452
  store i64 0, i64* %885, align 1, !tbaa !2452
  %1218 = tail call double @llvm.trunc.f64(double %1217) #10
  %1219 = tail call double @llvm.fabs.f64(double %1218) #10
  %1220 = fcmp ogt double %1219, 0x41DFFFFFFFC00000
  %1221 = fptosi double %1218 to i32
  %1222 = zext i32 %1221 to i64
  %1223 = select i1 %1220, i64 2147483648, i64 %1222
  store i64 %1223, i64* %RDX, align 8, !tbaa !2428
  %1224 = add i64 %1206, -16
  %1225 = trunc i64 %1223 to i32
  %1226 = add i64 %1440, 47
  store i64 %1226, i64* %PC, align 8
  %1227 = inttoptr i64 %1224 to i32*
  store i32 %1225, i32* %1227, align 4
  %1228 = load i64, i64* %RBP, align 8
  %1229 = add i64 %1228, -8
  %1230 = load i64, i64* %PC, align 8
  %1231 = add i64 %1230, 3
  store i64 %1231, i64* %PC, align 8
  %1232 = inttoptr i64 %1229 to i32*
  %1233 = load i32, i32* %1232, align 4
  %1234 = and i32 %1233, 15
  %1235 = zext i32 %1234 to i64
  store i64 %1235, i64* %RDX, align 8, !tbaa !2428
  %1236 = add nsw i32 %1234, -8
  %1237 = icmp ult i32 %1234, 8
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %16, align 1, !tbaa !2433
  %1239 = and i32 %1236, 255
  %1240 = tail call i32 @llvm.ctpop.i32(i32 %1239) #10
  %1241 = trunc i32 %1240 to i8
  %1242 = and i8 %1241, 1
  %1243 = xor i8 %1242, 1
  store i8 %1243, i8* %23, align 1, !tbaa !2447
  %1244 = lshr i32 %1236, 4
  %1245 = trunc i32 %1244 to i8
  %1246 = and i8 %1245, 1
  store i8 %1246, i8* %28, align 1, !tbaa !2451
  %1247 = icmp eq i32 %1236, 0
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %31, align 1, !tbaa !2448
  %1249 = lshr i32 %1236, 31
  %1250 = trunc i32 %1249 to i8
  store i8 %1250, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  %1251 = add i64 %1228, -177
  %1252 = load i8, i8* %AL, align 1
  %1253 = add i64 %1230, 15
  store i64 %1253, i64* %PC, align 8
  %1254 = inttoptr i64 %1251 to i8*
  store i8 %1252, i8* %1254, align 1
  %1255 = load i64, i64* %PC, align 8
  %1256 = load i8, i8* %31, align 1, !tbaa !2448
  %1257 = icmp ne i8 %1256, 0
  %.v78 = select i1 %1257, i64 24, i64 6
  %1258 = add i64 %1255, %.v78
  store i64 %1258, i64* %PC, align 8, !tbaa !2428
  %1259 = icmp eq i8 %1256, 1
  br i1 %1259, label %block_400a73, label %block_400a61

block_400915:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %1260 = add i64 %797, -112
  %1261 = add i64 %804, 5
  store i64 %1261, i64* %PC, align 8
  %1262 = inttoptr i64 %1260 to i64*
  %1263 = load i64, i64* %1262, align 8
  store i64 %1263, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %1264 = add i64 %797, -160
  %1265 = add i64 %804, 13
  store i64 %1265, i64* %PC, align 8
  %1266 = inttoptr i64 %1264 to i64*
  store i64 %1263, i64* %1266, align 8
  %1267 = load i64, i64* %PC, align 8
  %1268 = add i64 %1267, 18
  store i64 %1268, i64* %PC, align 8, !tbaa !2428
  br label %block_400934

block_4007ae:                                     ; preds = %block_40077b, %block_40078a
  %1269 = phi i64 [ %.pre56, %block_40078a ], [ %1365, %block_40077b ]
  %1270 = phi i64 [ %.pre55, %block_40078a ], [ %347, %block_40077b ]
  %1271 = add i64 %1269, -12
  %1272 = add i64 %1270, 8
  store i64 %1272, i64* %PC, align 8
  %1273 = inttoptr i64 %1271 to i32*
  %1274 = load i32, i32* %1273, align 4
  %1275 = add i32 %1274, 1
  %1276 = zext i32 %1275 to i64
  store i64 %1276, i64* %RAX, align 8, !tbaa !2428
  %1277 = icmp eq i32 %1274, -1
  %1278 = icmp eq i32 %1275, 0
  %1279 = or i1 %1277, %1278
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %16, align 1, !tbaa !2433
  %1281 = and i32 %1275, 255
  %1282 = tail call i32 @llvm.ctpop.i32(i32 %1281) #10
  %1283 = trunc i32 %1282 to i8
  %1284 = and i8 %1283, 1
  %1285 = xor i8 %1284, 1
  store i8 %1285, i8* %23, align 1, !tbaa !2447
  %1286 = xor i32 %1275, %1274
  %1287 = lshr i32 %1286, 4
  %1288 = trunc i32 %1287 to i8
  %1289 = and i8 %1288, 1
  store i8 %1289, i8* %28, align 1, !tbaa !2451
  %1290 = zext i1 %1278 to i8
  store i8 %1290, i8* %31, align 1, !tbaa !2448
  %1291 = lshr i32 %1275, 31
  %1292 = trunc i32 %1291 to i8
  store i8 %1292, i8* %34, align 1, !tbaa !2449
  %1293 = lshr i32 %1274, 31
  %1294 = xor i32 %1291, %1293
  %1295 = add nuw nsw i32 %1294, %1291
  %1296 = icmp eq i32 %1295, 2
  %1297 = zext i1 %1296 to i8
  store i8 %1297, i8* %40, align 1, !tbaa !2450
  %1298 = add i64 %1270, 14
  store i64 %1298, i64* %PC, align 8
  store i32 %1275, i32* %1273, align 4
  %1299 = load i64, i64* %PC, align 8
  %1300 = add i64 %1299, -92
  store i64 %1300, i64* %PC, align 8, !tbaa !2428
  br label %block_400760

block_400a94:                                     ; preds = %block_400a73
  store i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 100), i64* %RSI, align 8, !tbaa !2428
  %1301 = add i64 %391, -24
  %1302 = add i64 %426, 13
  store i64 %1302, i64* %PC, align 8
  %1303 = inttoptr i64 %1301 to i32*
  %1304 = load i32, i32* %1303, align 4
  %1305 = add i32 %1304, 1
  %1306 = zext i32 %1305 to i64
  store i64 %1306, i64* %RAX, align 8, !tbaa !2428
  %1307 = icmp eq i32 %1304, -1
  %1308 = icmp eq i32 %1305, 0
  %1309 = or i1 %1307, %1308
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %16, align 1, !tbaa !2433
  %1311 = and i32 %1305, 255
  %1312 = tail call i32 @llvm.ctpop.i32(i32 %1311) #10
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  %1315 = xor i8 %1314, 1
  store i8 %1315, i8* %23, align 1, !tbaa !2447
  %1316 = xor i32 %1305, %1304
  %1317 = lshr i32 %1316, 4
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  store i8 %1319, i8* %28, align 1, !tbaa !2451
  %1320 = zext i1 %1308 to i8
  store i8 %1320, i8* %31, align 1, !tbaa !2448
  %1321 = lshr i32 %1305, 31
  %1322 = trunc i32 %1321 to i8
  store i8 %1322, i8* %34, align 1, !tbaa !2449
  %1323 = lshr i32 %1304, 31
  %1324 = xor i32 %1321, %1323
  %1325 = add nuw nsw i32 %1324, %1321
  %1326 = icmp eq i32 %1325, 2
  %1327 = zext i1 %1326 to i8
  store i8 %1327, i8* %40, align 1, !tbaa !2450
  %1328 = add i64 %426, 19
  store i64 %1328, i64* %PC, align 8
  store i32 %1305, i32* %1303, align 4
  %1329 = load i64, i64* %PC, align 8
  %1330 = load i64, i64* @stderr, align 32
  store i64 %1330, i64* %RDI, align 8, !tbaa !2428
  %1331 = load i64, i64* %RBP, align 8
  %1332 = add i64 %1331, -8
  %1333 = add i64 %1329, 11
  store i64 %1333, i64* %PC, align 8
  %1334 = inttoptr i64 %1332 to i32*
  %1335 = load i32, i32* %1334, align 4
  %1336 = zext i32 %1335 to i64
  store i64 %1336, i64* %RDX, align 8, !tbaa !2428
  %1337 = add i64 %1331, -12
  %1338 = add i64 %1329, 14
  store i64 %1338, i64* %PC, align 8
  %1339 = inttoptr i64 %1337 to i32*
  %1340 = load i32, i32* %1339, align 4
  %1341 = zext i32 %1340 to i64
  store i64 %1341, i64* %RCX, align 8, !tbaa !2428
  %1342 = add i64 %1331, -20
  %1343 = add i64 %1329, 18
  store i64 %1343, i64* %PC, align 8
  %1344 = inttoptr i64 %1342 to i32*
  %1345 = load i32, i32* %1344, align 4
  %1346 = zext i32 %1345 to i64
  store i64 %1346, i64* %721, align 8, !tbaa !2428
  %1347 = add i64 %1331, -16
  %1348 = add i64 %1329, 22
  store i64 %1348, i64* %PC, align 8
  %1349 = inttoptr i64 %1347 to i32*
  %1350 = load i32, i32* %1349, align 4
  %1351 = zext i32 %1350 to i64
  store i64 %1351, i64* %722, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2432
  %1352 = add i64 %1329, -1335
  %1353 = add i64 %1329, 29
  %1354 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1355 = add i64 %1354, -8
  %1356 = inttoptr i64 %1355 to i64*
  store i64 %1353, i64* %1356, align 8
  store i64 %1355, i64* %RSP, align 8, !tbaa !2428
  store i64 %1352, i64* %PC, align 8, !tbaa !2428
  %1357 = tail call fastcc %struct.Memory* @ext_400570_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.14)
  %1358 = load i64, i64* %RBP, align 8
  %1359 = add i64 %1358, -184
  %1360 = load i32, i32* %EAX, align 4
  %1361 = load i64, i64* %PC, align 8
  %1362 = add i64 %1361, 6
  store i64 %1362, i64* %PC, align 8
  %1363 = inttoptr i64 %1359 to i32*
  store i32 %1360, i32* %1363, align 4
  %.pre52 = load i64, i64* %PC, align 8
  %.pre53 = load i64, i64* %RBP, align 8
  br label %block_400aca

block_400760:                                     ; preds = %block_400759, %block_4007ae
  %1364 = phi i64 [ %.pre54, %block_400759 ], [ %1300, %block_4007ae ]
  %1365 = load i64, i64* %RBP, align 8
  %1366 = add i64 %1365, -12
  %1367 = add i64 %1364, 3
  store i64 %1367, i64* %PC, align 8
  %1368 = inttoptr i64 %1366 to i32*
  %1369 = load i32, i32* %1368, align 4
  %1370 = zext i32 %1369 to i64
  store i64 %1370, i64* %RAX, align 8, !tbaa !2428
  %1371 = add i64 %1365, -32
  %1372 = add i64 %1364, 6
  store i64 %1372, i64* %PC, align 8
  %1373 = inttoptr i64 %1371 to i32*
  %1374 = load i32, i32* %1373, align 4
  %1375 = sub i32 %1369, %1374
  %1376 = icmp ult i32 %1369, %1374
  %1377 = zext i1 %1376 to i8
  store i8 %1377, i8* %16, align 1, !tbaa !2433
  %1378 = and i32 %1375, 255
  %1379 = tail call i32 @llvm.ctpop.i32(i32 %1378) #10
  %1380 = trunc i32 %1379 to i8
  %1381 = and i8 %1380, 1
  %1382 = xor i8 %1381, 1
  store i8 %1382, i8* %23, align 1, !tbaa !2447
  %1383 = xor i32 %1374, %1369
  %1384 = xor i32 %1383, %1375
  %1385 = lshr i32 %1384, 4
  %1386 = trunc i32 %1385 to i8
  %1387 = and i8 %1386, 1
  store i8 %1387, i8* %28, align 1, !tbaa !2451
  %1388 = icmp eq i32 %1375, 0
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %31, align 1, !tbaa !2448
  %1390 = lshr i32 %1375, 31
  %1391 = trunc i32 %1390 to i8
  store i8 %1391, i8* %34, align 1, !tbaa !2449
  %1392 = lshr i32 %1369, 31
  %1393 = lshr i32 %1374, 31
  %1394 = xor i32 %1393, %1392
  %1395 = xor i32 %1390, %1392
  %1396 = add nuw nsw i32 %1395, %1394
  %1397 = icmp eq i32 %1396, 2
  %1398 = zext i1 %1397 to i8
  store i8 %1398, i8* %40, align 1, !tbaa !2450
  %1399 = icmp ne i8 %1391, 0
  %1400 = xor i1 %1399, %1397
  %.v57 = select i1 %1400, i64 12, i64 97
  %1401 = add i64 %1364, %.v57
  store i64 %1401, i64* %PC, align 8, !tbaa !2428
  %1402 = add i64 %1365, -8
  br i1 %1400, label %block_40076c, label %block_4007c1

block_400a11:                                     ; preds = %block_400a0a, %block_400aca
  %1403 = phi i64 [ %.pre50, %block_400a0a ], [ %754, %block_400aca ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.4, %block_400a0a ], [ %MEMORY.6, %block_400aca ]
  %1404 = load i64, i64* %RBP, align 8
  %1405 = add i64 %1404, -12
  %1406 = add i64 %1403, 3
  store i64 %1406, i64* %PC, align 8
  %1407 = inttoptr i64 %1405 to i32*
  %1408 = load i32, i32* %1407, align 4
  %1409 = zext i32 %1408 to i64
  store i64 %1409, i64* %RAX, align 8, !tbaa !2428
  %1410 = add i64 %1404, -32
  %1411 = add i64 %1403, 6
  store i64 %1411, i64* %PC, align 8
  %1412 = inttoptr i64 %1410 to i32*
  %1413 = load i32, i32* %1412, align 4
  %1414 = sub i32 %1408, %1413
  %1415 = icmp ult i32 %1408, %1413
  %1416 = zext i1 %1415 to i8
  store i8 %1416, i8* %16, align 1, !tbaa !2433
  %1417 = and i32 %1414, 255
  %1418 = tail call i32 @llvm.ctpop.i32(i32 %1417) #10
  %1419 = trunc i32 %1418 to i8
  %1420 = and i8 %1419, 1
  %1421 = xor i8 %1420, 1
  store i8 %1421, i8* %23, align 1, !tbaa !2447
  %1422 = xor i32 %1413, %1408
  %1423 = xor i32 %1422, %1414
  %1424 = lshr i32 %1423, 4
  %1425 = trunc i32 %1424 to i8
  %1426 = and i8 %1425, 1
  store i8 %1426, i8* %28, align 1, !tbaa !2451
  %1427 = icmp eq i32 %1414, 0
  %1428 = zext i1 %1427 to i8
  store i8 %1428, i8* %31, align 1, !tbaa !2448
  %1429 = lshr i32 %1414, 31
  %1430 = trunc i32 %1429 to i8
  store i8 %1430, i8* %34, align 1, !tbaa !2449
  %1431 = lshr i32 %1408, 31
  %1432 = lshr i32 %1413, 31
  %1433 = xor i32 %1432, %1431
  %1434 = xor i32 %1429, %1431
  %1435 = add nuw nsw i32 %1434, %1433
  %1436 = icmp eq i32 %1435, 2
  %1437 = zext i1 %1436 to i8
  store i8 %1437, i8* %40, align 1, !tbaa !2450
  %1438 = icmp ne i8 %1430, 0
  %1439 = xor i1 %1438, %1436
  %.v = select i1 %1439, i64 12, i64 204
  %1440 = add i64 %1403, %.v
  store i64 %1440, i64* %PC, align 8, !tbaa !2428
  br i1 %1439, label %block_400a1d, label %block_400add

block_400afa:                                     ; preds = %block_400af0
  store i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 148), i64* %RSI, align 8, !tbaa !2428
  %1441 = load i64, i64* @stderr, align 32
  store i64 %1441, i64* %RDI, align 8, !tbaa !2428
  %1442 = add i64 %610, -28
  %1443 = add i64 %287, 21
  store i64 %1443, i64* %PC, align 8
  %1444 = inttoptr i64 %1442 to i32*
  %1445 = load i32, i32* %1444, align 4
  %1446 = zext i32 %1445 to i64
  store i64 %1446, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2432
  %1447 = add i64 %287, -1418
  %1448 = add i64 %287, 28
  %1449 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1450 = add i64 %1449, -8
  %1451 = inttoptr i64 %1450 to i64*
  store i64 %1448, i64* %1451, align 8
  store i64 %1450, i64* %RSP, align 8, !tbaa !2428
  store i64 %1447, i64* %PC, align 8, !tbaa !2428
  %1452 = tail call fastcc %struct.Memory* @ext_400570_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %1453 = load i64, i64* %RBP, align 8
  %1454 = add i64 %1453, -188
  %1455 = load i32, i32* %EAX, align 4
  %1456 = load i64, i64* %PC, align 8
  %1457 = add i64 %1456, 6
  store i64 %1457, i64* %PC, align 8
  %1458 = inttoptr i64 %1454 to i32*
  store i32 %1455, i32* %1458, align 4
  %1459 = load i64, i64* %PC, align 8
  %1460 = add i64 %1459, 42
  store i64 %1460, i64* %PC, align 8, !tbaa !2428
  br label %block_400b46

block_40070b:                                     ; preds = %block_4006a0
  store i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 72), i64* %RSI, align 8, !tbaa !2428
  %1461 = load i64, i64* @stderr, align 32
  store i64 %1461, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2432
  %1462 = add i64 %147, -411
  %1463 = add i64 %147, 25
  %1464 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1465 = add i64 %1464, -8
  %1466 = inttoptr i64 %1465 to i64*
  store i64 %1463, i64* %1466, align 8
  store i64 %1465, i64* %RSP, align 8, !tbaa !2428
  store i64 %1462, i64* %PC, align 8, !tbaa !2428
  %1467 = tail call fastcc %struct.Memory* @ext_400570_fprintf(%struct.State* nonnull %0, %struct.Memory* %124)
  %1468 = load i64, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %1469 = load i64, i64* %RBP, align 8
  %1470 = add i64 %1469, -140
  %1471 = load i32, i32* %EAX, align 4
  %1472 = add i64 %1468, 11
  store i64 %1472, i64* %PC, align 8
  %1473 = inttoptr i64 %1470 to i32*
  store i32 %1471, i32* %1473, align 4
  %1474 = load i64, i64* %PC, align 8
  %1475 = add i64 %1474, -399
  %1476 = add i64 %1474, 5
  %1477 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1478 = add i64 %1477, -8
  %1479 = inttoptr i64 %1478 to i64*
  store i64 %1476, i64* %1479, align 8
  store i64 %1478, i64* %RSP, align 8, !tbaa !2428
  store i64 %1475, i64* %PC, align 8, !tbaa !2428
  %1480 = tail call fastcc %struct.Memory* @ext_6020d0_exit(%struct.State* nonnull %0, %struct.Memory* %1467)
  %1481 = load i64, i64* %PC, align 8
  %1482 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %1481, %struct.Memory* %1480)
  ret %struct.Memory* %1482

block_400759:                                     ; preds = %block_40074d
  %1483 = add i64 %648, -12
  %1484 = add i64 %684, 7
  store i64 %1484, i64* %PC, align 8
  %1485 = inttoptr i64 %1483 to i32*
  store i32 0, i32* %1485, align 4
  %.pre54 = load i64, i64* %PC, align 8
  br label %block_400760

block_400a0a:                                     ; preds = %block_4009fe
  %1486 = add i64 %610, -12
  %1487 = add i64 %646, 7
  store i64 %1487, i64* %PC, align 8
  %1488 = inttoptr i64 %1486 to i32*
  store i32 0, i32* %1488, align 4
  %.pre50 = load i64, i64* %PC, align 8
  br label %block_400a11

block_400955:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %1489 = add i64 %1063, -120
  %1490 = add i64 %1068, 5
  store i64 %1490, i64* %PC, align 8
  %1491 = inttoptr i64 %1489 to i64*
  %1492 = load i64, i64* %1491, align 8
  store i64 %1492, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %1493 = add i64 %1063, -168
  %1494 = add i64 %1068, 13
  store i64 %1494, i64* %PC, align 8
  %1495 = inttoptr i64 %1493 to i64*
  store i64 %1492, i64* %1495, align 8
  %1496 = load i64, i64* %PC, align 8
  %1497 = add i64 %1496, 18
  store i64 %1497, i64* %PC, align 8, !tbaa !2428
  br label %block_400974

block_4008eb:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit2
  %1498 = add i64 %267, -80
  %1499 = add i64 %272, 5
  store i64 %1499, i64* %PC, align 8
  %1500 = inttoptr i64 %1498 to i64*
  %1501 = load i64, i64* %1500, align 8
  store i64 %1501, i64* %884, align 1, !tbaa !2452
  store double 0.000000e+00, double* %886, align 1, !tbaa !2452
  %1502 = add i64 %267, -152
  %1503 = add i64 %272, 13
  store i64 %1503, i64* %PC, align 8
  %1504 = inttoptr i64 %1502 to i64*
  store i64 %1501, i64* %1504, align 8
  %.pre38 = load i64, i64* %PC, align 8
  br label %block_4008f8
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400b60_fourn(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400b60:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
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
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %8 = load i64, i64* %RBP, align 8
  %9 = add i64 %1, 1
  store i64 %9, i64* %PC, align 8
  %10 = load i64, i64* %RSP, align 8, !tbaa !2428
  %11 = add i64 %10, -8
  %12 = inttoptr i64 %11 to i64*
  store i64 %8, i64* %12, align 8
  %13 = load i64, i64* %PC, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2428
  %14 = add i64 %10, -200
  store i64 %14, i64* %RSP, align 8, !tbaa !2428
  %15 = icmp ult i64 %11, 192
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1, !tbaa !2433
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19) #10
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1, !tbaa !2447
  %25 = xor i64 %11, %14
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1, !tbaa !2451
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
  %44 = add i64 %13, 14
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %42 to i64*
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %RBP, align 8
  %47 = add i64 %46, -16
  %48 = load i64, i64* %RSI, align 8
  %49 = load i64, i64* %PC, align 8
  %50 = add i64 %49, 4
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %47 to i64*
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* %RBP, align 8
  %53 = add i64 %52, -20
  %54 = load i32, i32* %EDX, align 4
  %55 = load i64, i64* %PC, align 8
  %56 = add i64 %55, 3
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %53 to i32*
  store i32 %54, i32* %57, align 4
  %58 = load i64, i64* %RBP, align 8
  %59 = add i64 %58, -24
  %60 = load i32, i32* %ECX, align 4
  %61 = load i64, i64* %PC, align 8
  %62 = add i64 %61, 3
  store i64 %62, i64* %PC, align 8
  %63 = inttoptr i64 %59 to i32*
  store i32 %60, i32* %63, align 4
  %64 = load i64, i64* %RBP, align 8
  %65 = add i64 %64, -96
  %66 = load i64, i64* %PC, align 8
  %67 = add i64 %66, 7
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %65 to i32*
  store i32 1, i32* %68, align 4
  %69 = load i64, i64* %RBP, align 8
  %70 = add i64 %69, -72
  %71 = load i64, i64* %PC, align 8
  %72 = add i64 %71, 7
  store i64 %72, i64* %PC, align 8
  %73 = inttoptr i64 %70 to i32*
  store i32 1, i32* %73, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400b87

block_400e74:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit, %block_400fc1
  %74 = phi i64 [ %.pre110, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ], [ %739, %block_400fc1 ]
  %75 = load i64, i64* %RBP, align 8
  %76 = add i64 %75, -36
  %77 = add i64 %74, 3
  store i64 %77, i64* %PC, align 8
  %78 = inttoptr i64 %76 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = zext i32 %79 to i64
  store i64 %80, i64* %RAX, align 8, !tbaa !2428
  %81 = add i64 %75, -60
  %82 = add i64 %74, 6
  store i64 %82, i64* %PC, align 8
  %83 = inttoptr i64 %81 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = sub i32 %79, %84
  %86 = icmp ult i32 %79, %84
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %17, align 1, !tbaa !2433
  %88 = and i32 %85, 255
  %89 = tail call i32 @llvm.ctpop.i32(i32 %88) #10
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  store i8 %92, i8* %24, align 1, !tbaa !2447
  %93 = xor i32 %84, %79
  %94 = xor i32 %93, %85
  %95 = lshr i32 %94, 4
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  store i8 %97, i8* %29, align 1, !tbaa !2451
  %98 = icmp eq i32 %85, 0
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %32, align 1, !tbaa !2448
  %100 = lshr i32 %85, 31
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %35, align 1, !tbaa !2449
  %102 = lshr i32 %79, 31
  %103 = lshr i32 %84, 31
  %104 = xor i32 %103, %102
  %105 = xor i32 %100, %102
  %106 = add nuw nsw i32 %105, %104
  %107 = icmp eq i32 %106, 2
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %41, align 1, !tbaa !2450
  %109 = icmp ne i8 %101, 0
  %110 = xor i1 %109, %107
  %.demorgan118 = or i1 %98, %110
  %.v126 = select i1 %.demorgan118, i64 12, i64 447
  %111 = add i64 %74, %.v126
  store i64 %111, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan118, label %block_400e80, label %block_401033

block_400d66:                                     ; preds = %block_400d53
  %112 = add i64 %635, 3
  store i64 %112, i64* %PC, align 8
  %113 = inttoptr i64 %636 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RAX, align 8, !tbaa !2428
  %116 = add i64 %623, -40
  %117 = add i64 %635, 6
  store i64 %117, i64* %PC, align 8
  %118 = inttoptr i64 %116 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = sub i32 %119, %114
  %121 = zext i32 %120 to i64
  store i64 %121, i64* %RCX, align 8, !tbaa !2428
  %122 = icmp ult i32 %119, %114
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %17, align 1, !tbaa !2433
  %124 = and i32 %120, 255
  %125 = tail call i32 @llvm.ctpop.i32(i32 %124) #10
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  store i8 %128, i8* %24, align 1, !tbaa !2447
  %129 = xor i32 %114, %119
  %130 = xor i32 %129, %120
  %131 = lshr i32 %130, 4
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  store i8 %133, i8* %29, align 1, !tbaa !2451
  %134 = icmp eq i32 %120, 0
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %32, align 1, !tbaa !2448
  %136 = lshr i32 %120, 31
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %35, align 1, !tbaa !2449
  %138 = lshr i32 %119, 31
  %139 = lshr i32 %114, 31
  %140 = xor i32 %139, %138
  %141 = xor i32 %136, %138
  %142 = add nuw nsw i32 %141, %140
  %143 = icmp eq i32 %142, 2
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %41, align 1, !tbaa !2450
  %145 = add i64 %635, 11
  store i64 %145, i64* %PC, align 8
  store i32 %120, i32* %118, align 4
  %146 = load i64, i64* %RBP, align 8
  %147 = add i64 %146, -68
  %148 = load i64, i64* %PC, align 8
  %149 = add i64 %148, 3
  store i64 %149, i64* %PC, align 8
  %150 = inttoptr i64 %147 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = zext i32 %151 to i64
  %153 = shl nuw i64 %152, 32
  %154 = ashr i64 %153, 33
  %155 = trunc i32 %151 to i8
  %156 = and i8 %155, 1
  %157 = trunc i64 %154 to i32
  %158 = and i64 %154, 4294967295
  store i64 %158, i64* %RAX, align 8, !tbaa !2428
  store i8 %156, i8* %17, align 1, !tbaa !2432
  %159 = and i32 %157, 255
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #10
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %24, align 1, !tbaa !2432
  store i8 0, i8* %29, align 1, !tbaa !2432
  %164 = icmp eq i32 %157, 0
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %32, align 1, !tbaa !2432
  %166 = lshr i64 %154, 31
  %167 = trunc i64 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %35, align 1, !tbaa !2432
  store i8 0, i8* %41, align 1, !tbaa !2432
  %169 = trunc i64 %154 to i32
  %170 = add i64 %148, 9
  store i64 %170, i64* %PC, align 8
  store i32 %169, i32* %150, align 4
  %171 = load i64, i64* %PC, align 8
  %172 = add i64 %171, -76
  store i64 %172, i64* %PC, align 8, !tbaa !2428
  br label %block_400d2e

block_400c63:                                     ; preds = %block_400c57
  %173 = add i64 %554, -40
  %174 = add i64 %590, 3
  store i64 %174, i64* %PC, align 8
  %175 = inttoptr i64 %173 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = zext i32 %176 to i64
  store i64 %177, i64* %RAX, align 8, !tbaa !2428
  %178 = add i64 %590, 6
  store i64 %178, i64* %PC, align 8
  %179 = load i32, i32* %557, align 4
  %180 = add i32 %179, %176
  %181 = zext i32 %180 to i64
  store i64 %181, i64* %RAX, align 8, !tbaa !2428
  %182 = icmp ult i32 %180, %176
  %183 = icmp ult i32 %180, %179
  %184 = or i1 %182, %183
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %17, align 1, !tbaa !2433
  %186 = and i32 %180, 255
  %187 = tail call i32 @llvm.ctpop.i32(i32 %186) #10
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %24, align 1, !tbaa !2447
  %191 = xor i32 %179, %176
  %192 = xor i32 %191, %180
  %193 = lshr i32 %192, 4
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  store i8 %195, i8* %29, align 1, !tbaa !2451
  %196 = icmp eq i32 %180, 0
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %32, align 1, !tbaa !2448
  %198 = lshr i32 %180, 31
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %35, align 1, !tbaa !2449
  %200 = lshr i32 %176, 31
  %201 = lshr i32 %179, 31
  %202 = xor i32 %198, %200
  %203 = xor i32 %198, %201
  %204 = add nuw nsw i32 %202, %203
  %205 = icmp eq i32 %204, 2
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %41, align 1, !tbaa !2450
  %207 = add i64 %554, -32
  %208 = add i64 %590, 9
  store i64 %208, i64* %PC, align 8
  %209 = inttoptr i64 %207 to i32*
  %210 = load i32, i32* %209, align 4
  %211 = sub i32 %180, %210
  %212 = zext i32 %211 to i64
  store i64 %212, i64* %RAX, align 8, !tbaa !2428
  %213 = icmp ult i32 %180, %210
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %17, align 1, !tbaa !2433
  %215 = and i32 %211, 255
  %216 = tail call i32 @llvm.ctpop.i32(i32 %215) #10
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 1
  %219 = xor i8 %218, 1
  store i8 %219, i8* %24, align 1, !tbaa !2447
  %220 = xor i32 %210, %180
  %221 = xor i32 %220, %211
  %222 = lshr i32 %221, 4
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  store i8 %224, i8* %29, align 1, !tbaa !2451
  %225 = icmp eq i32 %211, 0
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %32, align 1, !tbaa !2448
  %227 = lshr i32 %211, 31
  %228 = trunc i32 %227 to i8
  store i8 %228, i8* %35, align 1, !tbaa !2449
  %229 = lshr i32 %210, 31
  %230 = xor i32 %229, %198
  %231 = xor i32 %227, %198
  %232 = add nuw nsw i32 %231, %230
  %233 = icmp eq i32 %232, 2
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %41, align 1, !tbaa !2450
  %235 = add i64 %554, -44
  %236 = add i64 %590, 12
  store i64 %236, i64* %PC, align 8
  %237 = inttoptr i64 %235 to i32*
  store i32 %211, i32* %237, align 4
  %238 = load i64, i64* %RBP, align 8
  %239 = add i64 %238, -8
  %240 = load i64, i64* %PC, align 8
  %241 = add i64 %240, 4
  store i64 %241, i64* %PC, align 8
  %242 = inttoptr i64 %239 to i64*
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %RCX, align 8, !tbaa !2428
  %244 = add i64 %238, -36
  %245 = add i64 %240, 8
  store i64 %245, i64* %PC, align 8
  %246 = inttoptr i64 %244 to i32*
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  store i64 %248, i64* %RDX, align 8, !tbaa !2428
  %249 = shl nsw i64 %248, 3
  %250 = add i64 %249, %243
  %251 = add i64 %240, 13
  store i64 %251, i64* %PC, align 8
  %252 = inttoptr i64 %250 to i64*
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %518, align 1, !tbaa !2452
  store double 0.000000e+00, double* %520, align 1, !tbaa !2452
  %254 = add i64 %238, -112
  %255 = add i64 %240, 18
  store i64 %255, i64* %PC, align 8
  %256 = inttoptr i64 %254 to i64*
  store i64 %253, i64* %256, align 8
  %257 = load i64, i64* %RBP, align 8
  %258 = add i64 %257, -8
  %259 = load i64, i64* %PC, align 8
  %260 = add i64 %259, 4
  store i64 %260, i64* %PC, align 8
  %261 = inttoptr i64 %258 to i64*
  %262 = load i64, i64* %261, align 8
  store i64 %262, i64* %RCX, align 8, !tbaa !2428
  %263 = add i64 %257, -44
  %264 = add i64 %259, 8
  store i64 %264, i64* %PC, align 8
  %265 = inttoptr i64 %263 to i32*
  %266 = load i32, i32* %265, align 4
  %267 = sext i32 %266 to i64
  store i64 %267, i64* %RDX, align 8, !tbaa !2428
  %268 = shl nsw i64 %267, 3
  %269 = add i64 %268, %262
  %270 = add i64 %259, 13
  store i64 %270, i64* %PC, align 8
  %271 = inttoptr i64 %269 to i64*
  %272 = load i64, i64* %271, align 8
  store i64 %272, i64* %518, align 1, !tbaa !2452
  store double 0.000000e+00, double* %520, align 1, !tbaa !2452
  %273 = add i64 %259, 17
  store i64 %273, i64* %PC, align 8
  %274 = load i64, i64* %261, align 8
  store i64 %274, i64* %RCX, align 8, !tbaa !2428
  %275 = add i64 %257, -36
  %276 = add i64 %259, 21
  store i64 %276, i64* %PC, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  store i64 %279, i64* %RDX, align 8, !tbaa !2428
  %280 = shl nsw i64 %279, 3
  %281 = add i64 %280, %274
  %282 = add i64 %259, 26
  store i64 %282, i64* %PC, align 8
  %283 = inttoptr i64 %281 to i64*
  store i64 %272, i64* %283, align 8
  %284 = load i64, i64* %RBP, align 8
  %285 = add i64 %284, -112
  %286 = load i64, i64* %PC, align 8
  %287 = add i64 %286, 5
  store i64 %287, i64* %PC, align 8
  %288 = inttoptr i64 %285 to i64*
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %518, align 1, !tbaa !2452
  store double 0.000000e+00, double* %520, align 1, !tbaa !2452
  %290 = add i64 %284, -8
  %291 = add i64 %286, 9
  store i64 %291, i64* %PC, align 8
  %292 = inttoptr i64 %290 to i64*
  %293 = load i64, i64* %292, align 8
  store i64 %293, i64* %RCX, align 8, !tbaa !2428
  %294 = add i64 %284, -44
  %295 = add i64 %286, 13
  store i64 %295, i64* %PC, align 8
  %296 = inttoptr i64 %294 to i32*
  %297 = load i32, i32* %296, align 4
  %298 = sext i32 %297 to i64
  store i64 %298, i64* %RDX, align 8, !tbaa !2428
  %299 = shl nsw i64 %298, 3
  %300 = add i64 %299, %293
  %301 = add i64 %286, 18
  store i64 %301, i64* %PC, align 8
  %302 = inttoptr i64 %300 to i64*
  store i64 %289, i64* %302, align 8
  %303 = load i64, i64* %RBP, align 8
  %304 = add i64 %303, -8
  %305 = load i64, i64* %PC, align 8
  %306 = add i64 %305, 4
  store i64 %306, i64* %PC, align 8
  %307 = inttoptr i64 %304 to i64*
  %308 = load i64, i64* %307, align 8
  store i64 %308, i64* %RCX, align 8, !tbaa !2428
  %309 = add i64 %303, -36
  %310 = add i64 %305, 7
  store i64 %310, i64* %PC, align 8
  %311 = inttoptr i64 %309 to i32*
  %312 = load i32, i32* %311, align 4
  %313 = add i32 %312, 1
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RAX, align 8, !tbaa !2428
  %315 = icmp eq i32 %312, -1
  %316 = icmp eq i32 %313, 0
  %317 = or i1 %315, %316
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %17, align 1, !tbaa !2433
  %319 = and i32 %313, 255
  %320 = tail call i32 @llvm.ctpop.i32(i32 %319) #10
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  %323 = xor i8 %322, 1
  store i8 %323, i8* %24, align 1, !tbaa !2447
  %324 = xor i32 %313, %312
  %325 = lshr i32 %324, 4
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  store i8 %327, i8* %29, align 1, !tbaa !2451
  %328 = zext i1 %316 to i8
  store i8 %328, i8* %32, align 1, !tbaa !2448
  %329 = lshr i32 %313, 31
  %330 = trunc i32 %329 to i8
  store i8 %330, i8* %35, align 1, !tbaa !2449
  %331 = lshr i32 %312, 31
  %332 = xor i32 %329, %331
  %333 = add nuw nsw i32 %332, %329
  %334 = icmp eq i32 %333, 2
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %41, align 1, !tbaa !2450
  %336 = sext i32 %313 to i64
  store i64 %336, i64* %RDX, align 8, !tbaa !2428
  %337 = shl nsw i64 %336, 3
  %338 = add i64 %308, %337
  %339 = add i64 %305, 18
  store i64 %339, i64* %PC, align 8
  %340 = inttoptr i64 %338 to i64*
  %341 = load i64, i64* %340, align 8
  store i64 %341, i64* %518, align 1, !tbaa !2452
  store double 0.000000e+00, double* %520, align 1, !tbaa !2452
  %342 = add i64 %303, -112
  %343 = add i64 %305, 23
  store i64 %343, i64* %PC, align 8
  %344 = inttoptr i64 %342 to i64*
  store i64 %341, i64* %344, align 8
  %345 = load i64, i64* %RBP, align 8
  %346 = add i64 %345, -8
  %347 = load i64, i64* %PC, align 8
  %348 = add i64 %347, 4
  store i64 %348, i64* %PC, align 8
  %349 = inttoptr i64 %346 to i64*
  %350 = load i64, i64* %349, align 8
  store i64 %350, i64* %RCX, align 8, !tbaa !2428
  %351 = add i64 %345, -44
  %352 = add i64 %347, 7
  store i64 %352, i64* %PC, align 8
  %353 = inttoptr i64 %351 to i32*
  %354 = load i32, i32* %353, align 4
  %355 = add i32 %354, 1
  %356 = zext i32 %355 to i64
  store i64 %356, i64* %RAX, align 8, !tbaa !2428
  %357 = icmp eq i32 %354, -1
  %358 = icmp eq i32 %355, 0
  %359 = or i1 %357, %358
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %17, align 1, !tbaa !2433
  %361 = and i32 %355, 255
  %362 = tail call i32 @llvm.ctpop.i32(i32 %361) #10
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  %365 = xor i8 %364, 1
  store i8 %365, i8* %24, align 1, !tbaa !2447
  %366 = xor i32 %355, %354
  %367 = lshr i32 %366, 4
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  store i8 %369, i8* %29, align 1, !tbaa !2451
  %370 = zext i1 %358 to i8
  store i8 %370, i8* %32, align 1, !tbaa !2448
  %371 = lshr i32 %355, 31
  %372 = trunc i32 %371 to i8
  store i8 %372, i8* %35, align 1, !tbaa !2449
  %373 = lshr i32 %354, 31
  %374 = xor i32 %371, %373
  %375 = add nuw nsw i32 %374, %371
  %376 = icmp eq i32 %375, 2
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %41, align 1, !tbaa !2450
  %378 = sext i32 %355 to i64
  store i64 %378, i64* %RDX, align 8, !tbaa !2428
  %379 = shl nsw i64 %378, 3
  %380 = add i64 %350, %379
  %381 = add i64 %347, 18
  store i64 %381, i64* %PC, align 8
  %382 = inttoptr i64 %380 to i64*
  %383 = load i64, i64* %382, align 8
  store i64 %383, i64* %518, align 1, !tbaa !2452
  store double 0.000000e+00, double* %520, align 1, !tbaa !2452
  %384 = add i64 %347, 22
  store i64 %384, i64* %PC, align 8
  %385 = load i64, i64* %349, align 8
  store i64 %385, i64* %RCX, align 8, !tbaa !2428
  %386 = add i64 %345, -36
  %387 = add i64 %347, 25
  store i64 %387, i64* %PC, align 8
  %388 = inttoptr i64 %386 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = add i32 %389, 1
  %391 = zext i32 %390 to i64
  store i64 %391, i64* %RAX, align 8, !tbaa !2428
  %392 = icmp eq i32 %389, -1
  %393 = icmp eq i32 %390, 0
  %394 = or i1 %392, %393
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %17, align 1, !tbaa !2433
  %396 = and i32 %390, 255
  %397 = tail call i32 @llvm.ctpop.i32(i32 %396) #10
  %398 = trunc i32 %397 to i8
  %399 = and i8 %398, 1
  %400 = xor i8 %399, 1
  store i8 %400, i8* %24, align 1, !tbaa !2447
  %401 = xor i32 %390, %389
  %402 = lshr i32 %401, 4
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  store i8 %404, i8* %29, align 1, !tbaa !2451
  %405 = zext i1 %393 to i8
  store i8 %405, i8* %32, align 1, !tbaa !2448
  %406 = lshr i32 %390, 31
  %407 = trunc i32 %406 to i8
  store i8 %407, i8* %35, align 1, !tbaa !2449
  %408 = lshr i32 %389, 31
  %409 = xor i32 %406, %408
  %410 = add nuw nsw i32 %409, %406
  %411 = icmp eq i32 %410, 2
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %41, align 1, !tbaa !2450
  %413 = sext i32 %390 to i64
  store i64 %413, i64* %RDX, align 8, !tbaa !2428
  %414 = shl nsw i64 %413, 3
  %415 = add i64 %385, %414
  %416 = add i64 %347, 36
  store i64 %416, i64* %PC, align 8
  %417 = inttoptr i64 %415 to i64*
  store i64 %383, i64* %417, align 8
  %418 = load i64, i64* %RBP, align 8
  %419 = add i64 %418, -112
  %420 = load i64, i64* %PC, align 8
  %421 = add i64 %420, 5
  store i64 %421, i64* %PC, align 8
  %422 = inttoptr i64 %419 to i64*
  %423 = load i64, i64* %422, align 8
  store i64 %423, i64* %518, align 1, !tbaa !2452
  store double 0.000000e+00, double* %520, align 1, !tbaa !2452
  %424 = add i64 %418, -8
  %425 = add i64 %420, 9
  store i64 %425, i64* %PC, align 8
  %426 = inttoptr i64 %424 to i64*
  %427 = load i64, i64* %426, align 8
  store i64 %427, i64* %RCX, align 8, !tbaa !2428
  %428 = add i64 %418, -44
  %429 = add i64 %420, 12
  store i64 %429, i64* %PC, align 8
  %430 = inttoptr i64 %428 to i32*
  %431 = load i32, i32* %430, align 4
  %432 = add i32 %431, 1
  %433 = zext i32 %432 to i64
  store i64 %433, i64* %RAX, align 8, !tbaa !2428
  %434 = icmp eq i32 %431, -1
  %435 = icmp eq i32 %432, 0
  %436 = or i1 %434, %435
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %17, align 1, !tbaa !2433
  %438 = and i32 %432, 255
  %439 = tail call i32 @llvm.ctpop.i32(i32 %438) #10
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  %442 = xor i8 %441, 1
  store i8 %442, i8* %24, align 1, !tbaa !2447
  %443 = xor i32 %432, %431
  %444 = lshr i32 %443, 4
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  store i8 %446, i8* %29, align 1, !tbaa !2451
  %447 = zext i1 %435 to i8
  store i8 %447, i8* %32, align 1, !tbaa !2448
  %448 = lshr i32 %432, 31
  %449 = trunc i32 %448 to i8
  store i8 %449, i8* %35, align 1, !tbaa !2449
  %450 = lshr i32 %431, 31
  %451 = xor i32 %448, %450
  %452 = add nuw nsw i32 %451, %448
  %453 = icmp eq i32 %452, 2
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %41, align 1, !tbaa !2450
  %455 = sext i32 %432 to i64
  store i64 %455, i64* %RDX, align 8, !tbaa !2428
  %456 = shl nsw i64 %455, 3
  %457 = add i64 %427, %456
  %458 = add i64 %420, 23
  store i64 %458, i64* %PC, align 8
  %459 = inttoptr i64 %457 to i64*
  store i64 %423, i64* %459, align 8
  %460 = load i64, i64* %RBP, align 8
  %461 = add i64 %460, -52
  %462 = load i64, i64* %PC, align 8
  %463 = add i64 %462, 3
  store i64 %463, i64* %PC, align 8
  %464 = inttoptr i64 %461 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = zext i32 %465 to i64
  store i64 %466, i64* %RAX, align 8, !tbaa !2428
  %467 = add i64 %460, -36
  %468 = add i64 %462, 6
  store i64 %468, i64* %PC, align 8
  %469 = inttoptr i64 %467 to i32*
  %470 = load i32, i32* %469, align 4
  %471 = add i32 %470, %465
  %472 = zext i32 %471 to i64
  store i64 %472, i64* %RAX, align 8, !tbaa !2428
  %473 = icmp ult i32 %471, %465
  %474 = icmp ult i32 %471, %470
  %475 = or i1 %473, %474
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %17, align 1, !tbaa !2433
  %477 = and i32 %471, 255
  %478 = tail call i32 @llvm.ctpop.i32(i32 %477) #10
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  %481 = xor i8 %480, 1
  store i8 %481, i8* %24, align 1, !tbaa !2447
  %482 = xor i32 %470, %465
  %483 = xor i32 %482, %471
  %484 = lshr i32 %483, 4
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  store i8 %486, i8* %29, align 1, !tbaa !2451
  %487 = icmp eq i32 %471, 0
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %32, align 1, !tbaa !2448
  %489 = lshr i32 %471, 31
  %490 = trunc i32 %489 to i8
  store i8 %490, i8* %35, align 1, !tbaa !2449
  %491 = lshr i32 %465, 31
  %492 = lshr i32 %470, 31
  %493 = xor i32 %489, %491
  %494 = xor i32 %489, %492
  %495 = add nuw nsw i32 %493, %494
  %496 = icmp eq i32 %495, 2
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %41, align 1, !tbaa !2450
  %498 = add i64 %462, 9
  store i64 %498, i64* %PC, align 8
  store i32 %471, i32* %469, align 4
  %499 = load i64, i64* %PC, align 8
  %500 = add i64 %499, -177
  store i64 %500, i64* %PC, align 8, !tbaa !2428
  br label %block_400c57

block_400bb3:                                     ; preds = %block_400b87
  %AL = bitcast %union.anon* %3 to i8*
  %CL = bitcast %union.anon* %4 to i8*
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %504 = add i64 %2026, -88
  %505 = add i64 %2062, 7
  store i64 %505, i64* %PC, align 8
  %506 = inttoptr i64 %504 to i32*
  store i32 1, i32* %506, align 4
  %507 = load i64, i64* %RBP, align 8
  %508 = add i64 %507, -20
  %509 = load i64, i64* %PC, align 8
  %510 = add i64 %509, 3
  store i64 %510, i64* %PC, align 8
  %511 = inttoptr i64 %508 to i32*
  %512 = load i32, i32* %511, align 4
  %513 = zext i32 %512 to i64
  store i64 %513, i64* %RAX, align 8, !tbaa !2428
  %514 = add i64 %507, -72
  %515 = add i64 %509, 6
  store i64 %515, i64* %PC, align 8
  %516 = inttoptr i64 %514 to i32*
  store i32 %512, i32* %516, align 4
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %518 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %501, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %520 = bitcast i64* %519 to double*
  %521 = bitcast [32 x %union.VectorReg]* %501 to i8*
  %522 = bitcast [32 x %union.VectorReg]* %501 to i32*
  %523 = getelementptr inbounds i8, i8* %521, i64 4
  %524 = bitcast i8* %523 to i32*
  %525 = bitcast i64* %519 to i32*
  %526 = getelementptr inbounds i8, i8* %521, i64 12
  %527 = bitcast i8* %526 to i32*
  %528 = bitcast %union.VectorReg* %6 to double*
  %529 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %531 = bitcast i64* %530 to double*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %534 = bitcast i64* %533 to double*
  %535 = bitcast %union.VectorReg* %502 to double*
  %536 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %502, i64 0, i32 0, i32 0, i32 0, i64 0
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %538 = bitcast i64* %537 to double*
  %539 = bitcast %union.VectorReg* %7 to double*
  %540 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %542 = bitcast i64* %541 to double*
  %543 = bitcast %union.VectorReg* %503 to double*
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %545 = bitcast %union.VectorReg* %502 to <2 x i32>*
  %546 = bitcast i64* %537 to <2 x i32>*
  %547 = bitcast [32 x %union.VectorReg]* %501 to double*
  %.pre94 = load i64, i64* %PC, align 8
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %549 = bitcast i64* %548 to i8*
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %551 = bitcast i64* %550 to i8*
  %552 = bitcast [32 x %union.VectorReg]* %501 to <4 x i32>*
  br label %block_400bc0

block_400c57:                                     ; preds = %block_400c51, %block_400c63
  %553 = phi i64 [ %.pre100, %block_400c51 ], [ %500, %block_400c63 ]
  %554 = load i64, i64* %RBP, align 8
  %555 = add i64 %554, -36
  %556 = add i64 %553, 3
  store i64 %556, i64* %PC, align 8
  %557 = inttoptr i64 %555 to i32*
  %558 = load i32, i32* %557, align 4
  %559 = zext i32 %558 to i64
  store i64 %559, i64* %RAX, align 8, !tbaa !2428
  %560 = add i64 %554, -56
  %561 = add i64 %553, 6
  store i64 %561, i64* %PC, align 8
  %562 = inttoptr i64 %560 to i32*
  %563 = load i32, i32* %562, align 4
  %564 = sub i32 %558, %563
  %565 = icmp ult i32 %558, %563
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %17, align 1, !tbaa !2433
  %567 = and i32 %564, 255
  %568 = tail call i32 @llvm.ctpop.i32(i32 %567) #10
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  store i8 %571, i8* %24, align 1, !tbaa !2447
  %572 = xor i32 %563, %558
  %573 = xor i32 %572, %564
  %574 = lshr i32 %573, 4
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  store i8 %576, i8* %29, align 1, !tbaa !2451
  %577 = icmp eq i32 %564, 0
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %32, align 1, !tbaa !2448
  %579 = lshr i32 %564, 31
  %580 = trunc i32 %579 to i8
  store i8 %580, i8* %35, align 1, !tbaa !2449
  %581 = lshr i32 %558, 31
  %582 = lshr i32 %563, 31
  %583 = xor i32 %582, %581
  %584 = xor i32 %579, %581
  %585 = add nuw nsw i32 %584, %583
  %586 = icmp eq i32 %585, 2
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %41, align 1, !tbaa !2450
  %588 = icmp ne i8 %580, 0
  %589 = xor i1 %588, %586
  %.demorgan116 = or i1 %577, %589
  %.v117 = select i1 %.demorgan116, i64 12, i64 182
  %590 = add i64 %553, %.v117
  store i64 %590, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan116, label %block_400c63, label %block_400d0d

block_401056:                                     ; preds = %block_400bc0
  %591 = load i64, i64* %RSP, align 8
  %592 = add i64 %591, 192
  store i64 %592, i64* %RSP, align 8, !tbaa !2428
  %593 = icmp ugt i64 %591, -193
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %17, align 1, !tbaa !2433
  %595 = trunc i64 %592 to i32
  %596 = and i32 %595, 255
  %597 = tail call i32 @llvm.ctpop.i32(i32 %596) #10
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = xor i8 %599, 1
  store i8 %600, i8* %24, align 1, !tbaa !2447
  %601 = xor i64 %592, %591
  %602 = lshr i64 %601, 4
  %603 = trunc i64 %602 to i8
  %604 = and i8 %603, 1
  store i8 %604, i8* %29, align 1, !tbaa !2451
  %605 = icmp eq i64 %592, 0
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %32, align 1, !tbaa !2448
  %607 = lshr i64 %592, 63
  %608 = trunc i64 %607 to i8
  store i8 %608, i8* %35, align 1, !tbaa !2449
  %609 = lshr i64 %591, 63
  %610 = xor i64 %607, %609
  %611 = add nuw nsw i64 %610, %607
  %612 = icmp eq i64 %611, 2
  %613 = zext i1 %612 to i8
  store i8 %613, i8* %41, align 1, !tbaa !2450
  %614 = add i64 %769, 8
  store i64 %614, i64* %PC, align 8
  %615 = add i64 %591, 200
  %616 = inttoptr i64 %592 to i64*
  %617 = load i64, i64* %616, align 8
  store i64 %617, i64* %RBP, align 8, !tbaa !2428
  store i64 %615, i64* %RSP, align 8, !tbaa !2428
  %618 = add i64 %769, 9
  store i64 %618, i64* %PC, align 8
  %619 = inttoptr i64 %615 to i64*
  %620 = load i64, i64* %619, align 8
  store i64 %620, i64* %PC, align 8, !tbaa !2428
  %621 = add i64 %591, 208
  store i64 %621, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.3

block_400d53:                                     ; preds = %block_400d2e, %block_400d44
  %622 = phi i64 [ %1084, %block_400d2e ], [ %.pre103, %block_400d44 ]
  %623 = load i64, i64* %RBP, align 8
  %624 = add i64 %623, -165
  %625 = add i64 %622, 6
  store i64 %625, i64* %PC, align 8
  %626 = inttoptr i64 %624 to i8*
  %627 = load i8, i8* %626, align 1
  store i8 %627, i8* %AL, align 1, !tbaa !2432
  %628 = and i8 %627, 1
  store i8 0, i8* %17, align 1, !tbaa !2433
  %629 = zext i8 %628 to i32
  %630 = tail call i32 @llvm.ctpop.i32(i32 %629) #10
  %631 = trunc i32 %630 to i8
  %632 = xor i8 %631, 1
  store i8 %632, i8* %24, align 1, !tbaa !2447
  %633 = xor i8 %628, 1
  store i8 %633, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2451
  %634 = icmp eq i8 %633, 0
  %.v = select i1 %634, i64 19, i64 14
  %635 = add i64 %622, %.v
  store i64 %635, i64* %PC, align 8, !tbaa !2428
  %636 = add i64 %623, -68
  br i1 %634, label %block_400d66, label %block_400d61

block_400fc1:                                     ; preds = %block_400e86
  %637 = add i64 %2147, -152
  %638 = add i64 %2146, 8
  store i64 %638, i64* %PC, align 8
  %639 = inttoptr i64 %637 to i64*
  %640 = load i64, i64* %639, align 8
  store i64 %640, i64* %518, align 1, !tbaa !2452
  store double 0.000000e+00, double* %520, align 1, !tbaa !2452
  %641 = add i64 %2147, -160
  %642 = add i64 %2146, 16
  store i64 %642, i64* %PC, align 8
  %643 = inttoptr i64 %641 to i64*
  store i64 %640, i64* %643, align 8
  %644 = load i64, i64* %RBP, align 8
  %645 = add i64 %644, -144
  %646 = load i64, i64* %PC, align 8
  %647 = add i64 %646, 8
  store i64 %647, i64* %PC, align 8
  %648 = load double, double* %547, align 1
  %649 = inttoptr i64 %645 to double*
  %650 = load double, double* %649, align 8
  %651 = fmul double %648, %650
  store double %651, double* %547, align 1, !tbaa !2452
  %652 = add i64 %644, -128
  %653 = add i64 %646, 13
  store i64 %653, i64* %PC, align 8
  %654 = inttoptr i64 %652 to i64*
  %655 = load i64, i64* %654, align 8
  store i64 %655, i64* %529, align 1, !tbaa !2452
  store double 0.000000e+00, double* %531, align 1, !tbaa !2452
  %656 = add i64 %644, -136
  %657 = add i64 %646, 21
  store i64 %657, i64* %PC, align 8
  %658 = bitcast i64 %655 to double
  %659 = inttoptr i64 %656 to double*
  %660 = load double, double* %659, align 8
  %661 = fmul double %658, %660
  store double %661, double* %528, align 1, !tbaa !2452
  store i64 0, i64* %530, align 1, !tbaa !2452
  %662 = fsub double %651, %661
  store double %662, double* %547, align 1, !tbaa !2452
  %663 = add i64 %644, -152
  %664 = add i64 %646, 33
  store i64 %664, i64* %PC, align 8
  %665 = inttoptr i64 %663 to double*
  %666 = load double, double* %665, align 8
  %667 = fadd double %662, %666
  store double %667, double* %547, align 1, !tbaa !2452
  %668 = add i64 %646, 41
  store i64 %668, i64* %PC, align 8
  %669 = inttoptr i64 %663 to double*
  store double %667, double* %669, align 8
  %670 = load i64, i64* %RBP, align 8
  %671 = add i64 %670, -128
  %672 = load i64, i64* %PC, align 8
  %673 = add i64 %672, 5
  store i64 %673, i64* %PC, align 8
  %674 = inttoptr i64 %671 to i64*
  %675 = load i64, i64* %674, align 8
  store i64 %675, i64* %518, align 1, !tbaa !2452
  store double 0.000000e+00, double* %520, align 1, !tbaa !2452
  %676 = add i64 %670, -144
  %677 = add i64 %672, 13
  store i64 %677, i64* %PC, align 8
  %678 = bitcast i64 %675 to double
  %679 = inttoptr i64 %676 to double*
  %680 = load double, double* %679, align 8
  %681 = fmul double %678, %680
  store double %681, double* %547, align 1, !tbaa !2452
  store i64 0, i64* %519, align 1, !tbaa !2452
  %682 = add i64 %670, -160
  %683 = add i64 %672, 21
  store i64 %683, i64* %PC, align 8
  %684 = inttoptr i64 %682 to i64*
  %685 = load i64, i64* %684, align 8
  store i64 %685, i64* %529, align 1, !tbaa !2452
  store double 0.000000e+00, double* %531, align 1, !tbaa !2452
  %686 = add i64 %670, -136
  %687 = add i64 %672, 29
  store i64 %687, i64* %PC, align 8
  %688 = bitcast i64 %685 to double
  %689 = inttoptr i64 %686 to double*
  %690 = load double, double* %689, align 8
  %691 = fmul double %688, %690
  store double %691, double* %528, align 1, !tbaa !2452
  store i64 0, i64* %530, align 1, !tbaa !2452
  %692 = fadd double %681, %691
  store double %692, double* %547, align 1, !tbaa !2452
  store i64 0, i64* %519, align 1, !tbaa !2452
  %693 = add i64 %672, 38
  store i64 %693, i64* %PC, align 8
  %694 = inttoptr i64 %671 to double*
  %695 = load double, double* %694, align 8
  %696 = fadd double %692, %695
  store double %696, double* %547, align 1, !tbaa !2452
  store i64 0, i64* %519, align 1, !tbaa !2452
  %697 = add i64 %672, 43
  store i64 %697, i64* %PC, align 8
  %698 = inttoptr i64 %671 to double*
  store double %696, double* %698, align 8
  %699 = load i64, i64* %RBP, align 8
  %700 = add i64 %699, -48
  %701 = load i64, i64* %PC, align 8
  %702 = add i64 %701, 3
  store i64 %702, i64* %PC, align 8
  %703 = inttoptr i64 %700 to i32*
  %704 = load i32, i32* %703, align 4
  %705 = zext i32 %704 to i64
  store i64 %705, i64* %RAX, align 8, !tbaa !2428
  %706 = add i64 %699, -36
  %707 = add i64 %701, 6
  store i64 %707, i64* %PC, align 8
  %708 = inttoptr i64 %706 to i32*
  %709 = load i32, i32* %708, align 4
  %710 = add i32 %709, %704
  %711 = zext i32 %710 to i64
  store i64 %711, i64* %RAX, align 8, !tbaa !2428
  %712 = icmp ult i32 %710, %704
  %713 = icmp ult i32 %710, %709
  %714 = or i1 %712, %713
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %17, align 1, !tbaa !2433
  %716 = and i32 %710, 255
  %717 = tail call i32 @llvm.ctpop.i32(i32 %716) #10
  %718 = trunc i32 %717 to i8
  %719 = and i8 %718, 1
  %720 = xor i8 %719, 1
  store i8 %720, i8* %24, align 1, !tbaa !2447
  %721 = xor i32 %709, %704
  %722 = xor i32 %721, %710
  %723 = lshr i32 %722, 4
  %724 = trunc i32 %723 to i8
  %725 = and i8 %724, 1
  store i8 %725, i8* %29, align 1, !tbaa !2451
  %726 = icmp eq i32 %710, 0
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %32, align 1, !tbaa !2448
  %728 = lshr i32 %710, 31
  %729 = trunc i32 %728 to i8
  store i8 %729, i8* %35, align 1, !tbaa !2449
  %730 = lshr i32 %704, 31
  %731 = lshr i32 %709, 31
  %732 = xor i32 %728, %730
  %733 = xor i32 %728, %731
  %734 = add nuw nsw i32 %732, %733
  %735 = icmp eq i32 %734, 2
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %41, align 1, !tbaa !2450
  %737 = add i64 %701, 9
  store i64 %737, i64* %PC, align 8
  store i32 %710, i32* %708, align 4
  %738 = load i64, i64* %PC, align 8
  %739 = add i64 %738, -442
  store i64 %739, i64* %PC, align 8, !tbaa !2428
  br label %block_400e74

block_400bc0:                                     ; preds = %block_40103e, %block_400bb3
  %740 = phi i64 [ %.pre94, %block_400bb3 ], [ %829, %block_40103e ]
  %MEMORY.3 = phi %struct.Memory* [ %2, %block_400bb3 ], [ %MEMORY.8, %block_40103e ]
  %741 = load i64, i64* %RBP, align 8
  %742 = add i64 %741, -72
  %743 = add i64 %740, 4
  store i64 %743, i64* %PC, align 8
  %744 = inttoptr i64 %742 to i32*
  %745 = load i32, i32* %744, align 4
  %746 = add i32 %745, -1
  %747 = icmp eq i32 %745, 0
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %17, align 1, !tbaa !2433
  %749 = and i32 %746, 255
  %750 = tail call i32 @llvm.ctpop.i32(i32 %749) #10
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  %753 = xor i8 %752, 1
  store i8 %753, i8* %24, align 1, !tbaa !2447
  %754 = xor i32 %746, %745
  %755 = lshr i32 %754, 4
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  store i8 %757, i8* %29, align 1, !tbaa !2451
  %758 = icmp eq i32 %746, 0
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %32, align 1, !tbaa !2448
  %760 = lshr i32 %746, 31
  %761 = trunc i32 %760 to i8
  store i8 %761, i8* %35, align 1, !tbaa !2449
  %762 = lshr i32 %745, 31
  %763 = xor i32 %760, %762
  %764 = add nuw nsw i32 %763, %762
  %765 = icmp eq i32 %764, 2
  %766 = zext i1 %765 to i8
  store i8 %766, i8* %41, align 1, !tbaa !2450
  %767 = icmp ne i8 %761, 0
  %768 = xor i1 %767, %765
  %.v123 = select i1 %768, i64 1174, i64 10
  %769 = add i64 %740, %.v123
  store i64 %769, i64* %PC, align 8, !tbaa !2428
  br i1 %768, label %block_401056, label %block_400bca

block_40103e:                                     ; preds = %block_400d9c
  %770 = add i64 %1988, -84
  %771 = add i64 %2024, 3
  store i64 %771, i64* %PC, align 8
  %772 = inttoptr i64 %770 to i32*
  %773 = load i32, i32* %772, align 4
  %774 = zext i32 %773 to i64
  store i64 %774, i64* %RAX, align 8, !tbaa !2428
  %775 = add i64 %1988, -88
  %776 = add i64 %2024, 7
  store i64 %776, i64* %PC, align 8
  %777 = inttoptr i64 %775 to i32*
  %778 = load i32, i32* %777, align 4
  %779 = sext i32 %773 to i64
  %780 = sext i32 %778 to i64
  %781 = mul nsw i64 %780, %779
  %782 = trunc i64 %781 to i32
  %783 = and i64 %781, 4294967295
  store i64 %783, i64* %RAX, align 8, !tbaa !2428
  %784 = shl i64 %781, 32
  %785 = ashr exact i64 %784, 32
  %786 = icmp ne i64 %785, %781
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %17, align 1, !tbaa !2433
  %788 = and i32 %782, 255
  %789 = tail call i32 @llvm.ctpop.i32(i32 %788) #10
  %790 = trunc i32 %789 to i8
  %791 = and i8 %790, 1
  %792 = xor i8 %791, 1
  store i8 %792, i8* %24, align 1, !tbaa !2447
  store i8 0, i8* %29, align 1, !tbaa !2451
  store i8 0, i8* %32, align 1, !tbaa !2448
  %793 = lshr i32 %782, 31
  %794 = trunc i32 %793 to i8
  store i8 %794, i8* %35, align 1, !tbaa !2449
  store i8 %787, i8* %41, align 1, !tbaa !2450
  %795 = trunc i64 %781 to i32
  %796 = add i64 %2024, 10
  store i64 %796, i64* %PC, align 8
  store i32 %795, i32* %777, align 4
  %797 = load i64, i64* %RBP, align 8
  %798 = add i64 %797, -72
  %799 = load i64, i64* %PC, align 8
  %800 = add i64 %799, 3
  store i64 %800, i64* %PC, align 8
  %801 = inttoptr i64 %798 to i32*
  %802 = load i32, i32* %801, align 4
  %803 = add i32 %802, -1
  %804 = zext i32 %803 to i64
  store i64 %804, i64* %RAX, align 8, !tbaa !2428
  %805 = icmp ne i32 %802, 0
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %17, align 1, !tbaa !2433
  %807 = and i32 %803, 255
  %808 = tail call i32 @llvm.ctpop.i32(i32 %807) #10
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  %811 = xor i8 %810, 1
  store i8 %811, i8* %24, align 1, !tbaa !2447
  %812 = xor i32 %802, 16
  %813 = xor i32 %812, %803
  %814 = lshr i32 %813, 4
  %815 = trunc i32 %814 to i8
  %816 = and i8 %815, 1
  store i8 %816, i8* %29, align 1, !tbaa !2451
  %817 = icmp eq i32 %803, 0
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %32, align 1, !tbaa !2448
  %819 = lshr i32 %803, 31
  %820 = trunc i32 %819 to i8
  store i8 %820, i8* %35, align 1, !tbaa !2449
  %821 = lshr i32 %802, 31
  %822 = xor i32 %819, %821
  %823 = xor i32 %819, 1
  %824 = add nuw nsw i32 %822, %823
  %825 = icmp eq i32 %824, 2
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %41, align 1, !tbaa !2450
  %827 = add i64 %799, 9
  store i64 %827, i64* %PC, align 8
  store i32 %803, i32* %801, align 4
  %828 = load i64, i64* %PC, align 8
  %829 = add i64 %828, -1169
  store i64 %829, i64* %PC, align 8, !tbaa !2428
  br label %block_400bc0

block_400c3d:                                     ; preds = %block_400d0d, %block_400c37
  %830 = phi i64 [ %1952, %block_400d0d ], [ %.pre99, %block_400c37 ]
  %831 = load i64, i64* %RBP, align 8
  %832 = add i64 %831, -28
  %833 = add i64 %830, 3
  store i64 %833, i64* %PC, align 8
  %834 = inttoptr i64 %832 to i32*
  %835 = load i32, i32* %834, align 4
  %836 = zext i32 %835 to i64
  store i64 %836, i64* %RAX, align 8, !tbaa !2428
  %837 = add i64 %831, -32
  %838 = add i64 %830, 6
  store i64 %838, i64* %PC, align 8
  %839 = inttoptr i64 %837 to i32*
  %840 = load i32, i32* %839, align 4
  %841 = zext i32 %840 to i64
  store i64 %841, i64* %RCX, align 8, !tbaa !2428
  %842 = add i64 %831, -48
  %843 = add i64 %830, 9
  store i64 %843, i64* %PC, align 8
  %844 = inttoptr i64 %842 to i32*
  %845 = load i32, i32* %844, align 4
  %846 = add i32 %845, %840
  %847 = add i32 %846, -2
  %848 = zext i32 %847 to i64
  store i64 %848, i64* %RCX, align 8, !tbaa !2428
  %849 = lshr i32 %847, 31
  %850 = sub i32 %835, %847
  %851 = icmp ult i32 %835, %847
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %17, align 1, !tbaa !2433
  %853 = and i32 %850, 255
  %854 = tail call i32 @llvm.ctpop.i32(i32 %853) #10
  %855 = trunc i32 %854 to i8
  %856 = and i8 %855, 1
  %857 = xor i8 %856, 1
  store i8 %857, i8* %24, align 1, !tbaa !2447
  %858 = xor i32 %847, %835
  %859 = xor i32 %858, %850
  %860 = lshr i32 %859, 4
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  store i8 %862, i8* %29, align 1, !tbaa !2451
  %863 = icmp eq i32 %850, 0
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %32, align 1, !tbaa !2448
  %865 = lshr i32 %850, 31
  %866 = trunc i32 %865 to i8
  store i8 %866, i8* %35, align 1, !tbaa !2449
  %867 = lshr i32 %835, 31
  %868 = xor i32 %849, %867
  %869 = xor i32 %865, %867
  %870 = add nuw nsw i32 %869, %868
  %871 = icmp eq i32 %870, 2
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %41, align 1, !tbaa !2450
  %873 = icmp ne i8 %866, 0
  %874 = xor i1 %873, %871
  %.demorgan115 = or i1 %863, %874
  %.v129 = select i1 %.demorgan115, i64 20, i64 227
  %875 = add i64 %830, %.v129
  store i64 %875, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan115, label %block_400c51, label %block_400d20

block_400ea0:                                     ; preds = %block_400eac, %block_400e9a
  %876 = phi i64 [ %1923, %block_400eac ], [ %.pre112, %block_400e9a ]
  %877 = load i64, i64* %RBP, align 8
  %878 = add i64 %877, -32
  %879 = add i64 %876, 3
  store i64 %879, i64* %PC, align 8
  %880 = inttoptr i64 %878 to i32*
  %881 = load i32, i32* %880, align 4
  %882 = zext i32 %881 to i64
  store i64 %882, i64* %RAX, align 8, !tbaa !2428
  %883 = add i64 %877, -56
  %884 = add i64 %876, 6
  store i64 %884, i64* %PC, align 8
  %885 = inttoptr i64 %883 to i32*
  %886 = load i32, i32* %885, align 4
  %887 = sub i32 %881, %886
  %888 = icmp ult i32 %881, %886
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %17, align 1, !tbaa !2433
  %890 = and i32 %887, 255
  %891 = tail call i32 @llvm.ctpop.i32(i32 %890) #10
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  store i8 %894, i8* %24, align 1, !tbaa !2447
  %895 = xor i32 %886, %881
  %896 = xor i32 %895, %887
  %897 = lshr i32 %896, 4
  %898 = trunc i32 %897 to i8
  %899 = and i8 %898, 1
  store i8 %899, i8* %29, align 1, !tbaa !2451
  %900 = icmp eq i32 %887, 0
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %32, align 1, !tbaa !2448
  %902 = lshr i32 %887, 31
  %903 = trunc i32 %902 to i8
  store i8 %903, i8* %35, align 1, !tbaa !2449
  %904 = lshr i32 %881, 31
  %905 = lshr i32 %886, 31
  %906 = xor i32 %905, %904
  %907 = xor i32 %902, %904
  %908 = add nuw nsw i32 %907, %906
  %909 = icmp eq i32 %908, 2
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %41, align 1, !tbaa !2450
  %911 = icmp ne i8 %903, 0
  %912 = xor i1 %911, %909
  %.demorgan120 = or i1 %900, %912
  %.v121 = select i1 %.demorgan120, i64 12, i64 270
  %913 = add i64 %876, %.v121
  store i64 %913, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan120, label %block_400eac, label %block_400fae

block_401033:                                     ; preds = %block_400e74
  %914 = add i64 %75, -64
  %915 = add i64 %111, 3
  store i64 %915, i64* %PC, align 8
  %916 = inttoptr i64 %914 to i32*
  %917 = load i32, i32* %916, align 4
  %918 = zext i32 %917 to i64
  store i64 %918, i64* %RAX, align 8, !tbaa !2428
  %919 = add i64 %111, 6
  store i64 %919, i64* %PC, align 8
  store i32 %917, i32* %83, align 4
  %920 = load i64, i64* %PC, align 8
  %921 = add i64 %920, -669
  store i64 %921, i64* %PC, align 8, !tbaa !2428
  br label %block_400d9c

block_400c51:                                     ; preds = %block_400c3d
  %922 = load i64, i64* %RBP, align 8
  %923 = add i64 %922, -28
  %924 = add i64 %875, 3
  store i64 %924, i64* %PC, align 8
  %925 = inttoptr i64 %923 to i32*
  %926 = load i32, i32* %925, align 4
  %927 = zext i32 %926 to i64
  store i64 %927, i64* %RAX, align 8, !tbaa !2428
  %928 = add i64 %922, -36
  %929 = add i64 %875, 6
  store i64 %929, i64* %PC, align 8
  %930 = inttoptr i64 %928 to i32*
  store i32 %926, i32* %930, align 4
  %.pre100 = load i64, i64* %PC, align 8
  br label %block_400c57

block_400fae:                                     ; preds = %block_400ea0
  %931 = add i64 %877, -28
  %932 = add i64 %913, 8
  store i64 %932, i64* %PC, align 8
  %933 = inttoptr i64 %931 to i32*
  %934 = load i32, i32* %933, align 4
  %935 = add i32 %934, 2
  %936 = zext i32 %935 to i64
  store i64 %936, i64* %RAX, align 8, !tbaa !2428
  %937 = icmp ugt i32 %934, -3
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %17, align 1, !tbaa !2433
  %939 = and i32 %935, 255
  %940 = tail call i32 @llvm.ctpop.i32(i32 %939) #10
  %941 = trunc i32 %940 to i8
  %942 = and i8 %941, 1
  %943 = xor i8 %942, 1
  store i8 %943, i8* %24, align 1, !tbaa !2447
  %944 = xor i32 %935, %934
  %945 = lshr i32 %944, 4
  %946 = trunc i32 %945 to i8
  %947 = and i8 %946, 1
  store i8 %947, i8* %29, align 1, !tbaa !2451
  %948 = icmp eq i32 %935, 0
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %32, align 1, !tbaa !2448
  %950 = lshr i32 %935, 31
  %951 = trunc i32 %950 to i8
  store i8 %951, i8* %35, align 1, !tbaa !2449
  %952 = lshr i32 %934, 31
  %953 = xor i32 %950, %952
  %954 = add nuw nsw i32 %953, %950
  %955 = icmp eq i32 %954, 2
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %41, align 1, !tbaa !2450
  %957 = add i64 %913, 14
  store i64 %957, i64* %PC, align 8
  store i32 %935, i32* %933, align 4
  %958 = load i64, i64* %PC, align 8
  %959 = add i64 %958, -310
  store i64 %959, i64* %PC, align 8, !tbaa !2428
  br label %block_400e86

block_400d25:                                     ; preds = %block_400c2b, %block_400d20
  %960 = phi i64 [ %1986, %block_400c2b ], [ %987, %block_400d20 ]
  %961 = phi i64 [ %2064, %block_400c2b ], [ %.pre101, %block_400d20 ]
  %962 = add i64 %961, -52
  %963 = add i64 %960, 3
  store i64 %963, i64* %PC, align 8
  %964 = inttoptr i64 %962 to i32*
  %965 = load i32, i32* %964, align 4
  %966 = zext i32 %965 to i64
  %967 = shl nuw i64 %966, 32
  %968 = ashr i64 %967, 33
  %969 = trunc i32 %965 to i8
  %970 = and i8 %969, 1
  %971 = trunc i64 %968 to i32
  %972 = and i64 %968, 4294967295
  store i64 %972, i64* %RAX, align 8, !tbaa !2428
  store i8 %970, i8* %17, align 1, !tbaa !2432
  %973 = and i32 %971, 255
  %974 = tail call i32 @llvm.ctpop.i32(i32 %973) #10
  %975 = trunc i32 %974 to i8
  %976 = and i8 %975, 1
  %977 = xor i8 %976, 1
  store i8 %977, i8* %24, align 1, !tbaa !2432
  store i8 0, i8* %29, align 1, !tbaa !2432
  %978 = icmp eq i32 %971, 0
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %32, align 1, !tbaa !2432
  %980 = lshr i64 %968, 31
  %981 = trunc i64 %980 to i8
  %982 = and i8 %981, 1
  store i8 %982, i8* %35, align 1, !tbaa !2432
  store i8 0, i8* %41, align 1, !tbaa !2432
  %983 = add i64 %961, -68
  %984 = trunc i64 %968 to i32
  %985 = add i64 %960, 9
  store i64 %985, i64* %PC, align 8
  %986 = inttoptr i64 %983 to i32*
  store i32 %984, i32* %986, align 4
  %.pre102 = load i64, i64* %PC, align 8
  br label %block_400d2e

block_400d20:                                     ; preds = %block_400c3d
  %987 = add i64 %875, 5
  store i64 %987, i64* %PC, align 8, !tbaa !2428
  %.pre101 = load i64, i64* %RBP, align 8
  br label %block_400d25

block_400e9a:                                     ; preds = %block_400e86
  %988 = add i64 %2147, -28
  %989 = add i64 %2146, 3
  store i64 %989, i64* %PC, align 8
  %990 = inttoptr i64 %988 to i32*
  %991 = load i32, i32* %990, align 4
  %992 = zext i32 %991 to i64
  store i64 %992, i64* %RAX, align 8, !tbaa !2428
  %993 = add i64 %2147, -32
  %994 = add i64 %2146, 6
  store i64 %994, i64* %PC, align 8
  %995 = inttoptr i64 %993 to i32*
  store i32 %991, i32* %995, align 4
  %.pre112 = load i64, i64* %PC, align 8
  br label %block_400ea0

block_400d44:                                     ; preds = %block_400d2e
  %996 = load i64, i64* %RBP, align 8
  %997 = add i64 %996, -40
  %998 = add i64 %1091, 3
  store i64 %998, i64* %PC, align 8
  %999 = inttoptr i64 %997 to i32*
  %1000 = load i32, i32* %999, align 4
  %1001 = zext i32 %1000 to i64
  store i64 %1001, i64* %RAX, align 8, !tbaa !2428
  %1002 = add i64 %996, -68
  %1003 = add i64 %1091, 6
  store i64 %1003, i64* %PC, align 8
  %1004 = inttoptr i64 %1002 to i32*
  %1005 = load i32, i32* %1004, align 4
  %1006 = sub i32 %1000, %1005
  %1007 = icmp ult i32 %1000, %1005
  %1008 = zext i1 %1007 to i8
  store i8 %1008, i8* %17, align 1, !tbaa !2433
  %1009 = and i32 %1006, 255
  %1010 = tail call i32 @llvm.ctpop.i32(i32 %1009) #10
  %1011 = trunc i32 %1010 to i8
  %1012 = and i8 %1011, 1
  %1013 = xor i8 %1012, 1
  store i8 %1013, i8* %24, align 1, !tbaa !2447
  %1014 = xor i32 %1005, %1000
  %1015 = xor i32 %1014, %1006
  %1016 = lshr i32 %1015, 4
  %1017 = trunc i32 %1016 to i8
  %1018 = and i8 %1017, 1
  store i8 %1018, i8* %29, align 1, !tbaa !2451
  %1019 = icmp eq i32 %1006, 0
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %32, align 1, !tbaa !2448
  %1021 = lshr i32 %1006, 31
  %1022 = trunc i32 %1021 to i8
  store i8 %1022, i8* %35, align 1, !tbaa !2449
  %1023 = lshr i32 %1000, 31
  %1024 = lshr i32 %1005, 31
  %1025 = xor i32 %1024, %1023
  %1026 = xor i32 %1021, %1023
  %1027 = add nuw nsw i32 %1026, %1025
  %1028 = icmp eq i32 %1027, 2
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %41, align 1, !tbaa !2450
  %1030 = icmp ne i8 %1022, 0
  %1031 = xor i1 %1030, %1028
  %.demorgan114 = or i1 %1019, %1031
  %1032 = xor i1 %.demorgan114, true
  %1033 = zext i1 %1032 to i8
  store i8 %1033, i8* %CL, align 1, !tbaa !2432
  %1034 = add i64 %996, -165
  %1035 = add i64 %1091, 15
  store i64 %1035, i64* %PC, align 8
  %1036 = inttoptr i64 %1034 to i8*
  store i8 %1033, i8* %1036, align 1
  %.pre103 = load i64, i64* %PC, align 8
  br label %block_400d53

block_400d96:                                     ; preds = %block_400c1f
  %1037 = add i64 %2064, -48
  %1038 = add i64 %2100, 3
  store i64 %1038, i64* %PC, align 8
  %1039 = inttoptr i64 %1037 to i32*
  %1040 = load i32, i32* %1039, align 4
  %1041 = zext i32 %1040 to i64
  store i64 %1041, i64* %RAX, align 8, !tbaa !2428
  %1042 = add i64 %2064, -60
  %1043 = add i64 %2100, 6
  store i64 %1043, i64* %PC, align 8
  %1044 = inttoptr i64 %1042 to i32*
  store i32 %1040, i32* %1044, align 4
  %.pre104 = load i64, i64* %PC, align 8
  br label %block_400d9c

block_400d2e:                                     ; preds = %block_400d25, %block_400d66
  %1045 = phi i64 [ %.pre102, %block_400d25 ], [ %172, %block_400d66 ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2433
  store i8 1, i8* %24, align 1, !tbaa !2447
  store i8 1, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2451
  store i8 0, i8* %CL, align 1, !tbaa !2432
  %1046 = load i64, i64* %RBP, align 8
  %1047 = add i64 %1046, -68
  %1048 = add i64 %1045, 7
  store i64 %1048, i64* %PC, align 8
  %1049 = inttoptr i64 %1047 to i32*
  %1050 = load i32, i32* %1049, align 4
  %1051 = zext i32 %1050 to i64
  store i64 %1051, i64* %RAX, align 8, !tbaa !2428
  %1052 = add i64 %1046, -48
  %1053 = add i64 %1045, 10
  store i64 %1053, i64* %PC, align 8
  %1054 = inttoptr i64 %1052 to i32*
  %1055 = load i32, i32* %1054, align 4
  %1056 = sub i32 %1050, %1055
  %1057 = icmp ult i32 %1050, %1055
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %17, align 1, !tbaa !2433
  %1059 = and i32 %1056, 255
  %1060 = tail call i32 @llvm.ctpop.i32(i32 %1059) #10
  %1061 = trunc i32 %1060 to i8
  %1062 = and i8 %1061, 1
  %1063 = xor i8 %1062, 1
  store i8 %1063, i8* %24, align 1, !tbaa !2447
  %1064 = xor i32 %1055, %1050
  %1065 = xor i32 %1064, %1056
  %1066 = lshr i32 %1065, 4
  %1067 = trunc i32 %1066 to i8
  %1068 = and i8 %1067, 1
  store i8 %1068, i8* %29, align 1, !tbaa !2451
  %1069 = icmp eq i32 %1056, 0
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %32, align 1, !tbaa !2448
  %1071 = lshr i32 %1056, 31
  %1072 = trunc i32 %1071 to i8
  store i8 %1072, i8* %35, align 1, !tbaa !2449
  %1073 = lshr i32 %1050, 31
  %1074 = lshr i32 %1055, 31
  %1075 = xor i32 %1074, %1073
  %1076 = xor i32 %1071, %1073
  %1077 = add nuw nsw i32 %1076, %1075
  %1078 = icmp eq i32 %1077, 2
  %1079 = zext i1 %1078 to i8
  store i8 %1079, i8* %41, align 1, !tbaa !2450
  %1080 = add i64 %1046, -165
  %1081 = add i64 %1045, 16
  store i64 %1081, i64* %PC, align 8
  %1082 = inttoptr i64 %1080 to i8*
  store i8 0, i8* %1082, align 1
  %1083 = load i64, i64* %PC, align 8
  %1084 = add i64 %1083, 21
  %1085 = add i64 %1083, 6
  %1086 = load i8, i8* %35, align 1, !tbaa !2449
  %1087 = icmp ne i8 %1086, 0
  %1088 = load i8, i8* %41, align 1, !tbaa !2450
  %1089 = icmp ne i8 %1088, 0
  %1090 = xor i1 %1087, %1089
  %1091 = select i1 %1090, i64 %1084, i64 %1085
  store i64 %1091, i64* %PC, align 8, !tbaa !2428
  br i1 %1090, label %block_400d53, label %block_400d44

block_400c37:                                     ; preds = %block_400c2b
  %1092 = add i64 %1986, 3
  store i64 %1092, i64* %PC, align 8
  %1093 = load i32, i32* %2067, align 4
  %1094 = zext i32 %1093 to i64
  store i64 %1094, i64* %RAX, align 8, !tbaa !2428
  %1095 = add i64 %2064, -28
  %1096 = add i64 %1986, 6
  store i64 %1096, i64* %PC, align 8
  %1097 = inttoptr i64 %1095 to i32*
  store i32 %1093, i32* %1097, align 4
  %.pre99 = load i64, i64* %PC, align 8
  br label %block_400c3d

block_400da8:                                     ; preds = %block_400d9c
  store <4 x i32> zeroinitializer, <4 x i32>* %552, align 1, !tbaa !2454
  %1098 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 40) to i64*), align 8
  store i64 %1098, i64* %529, align 1, !tbaa !2452
  store double 0.000000e+00, double* %531, align 1, !tbaa !2452
  %1099 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 48) to i64*), align 16
  store i64 %1099, i64* %532, align 1, !tbaa !2452
  store double 0.000000e+00, double* %534, align 1, !tbaa !2452
  %1100 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 56) to i64*), align 8
  store i64 %1100, i64* %536, align 1, !tbaa !2452
  store double 0.000000e+00, double* %538, align 1, !tbaa !2452
  %1101 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 64) to i64*), align 16
  store i64 %1101, i64* %540, align 1, !tbaa !2452
  store double 0.000000e+00, double* %542, align 1, !tbaa !2452
  %1102 = add i64 %2024, 38
  store i64 %1102, i64* %PC, align 8
  %1103 = load i32, i32* %1991, align 4
  %1104 = shl i32 %1103, 1
  %1105 = icmp slt i32 %1103, 0
  %1106 = icmp slt i32 %1104, 0
  %1107 = xor i1 %1105, %1106
  %1108 = zext i32 %1104 to i64
  store i64 %1108, i64* %RAX, align 8, !tbaa !2428
  %.lobit60 = lshr i32 %1103, 31
  %1109 = trunc i32 %.lobit60 to i8
  store i8 %1109, i8* %17, align 1, !tbaa !2432
  %1110 = and i32 %1104, 254
  %1111 = tail call i32 @llvm.ctpop.i32(i32 %1110) #10
  %1112 = trunc i32 %1111 to i8
  %1113 = and i8 %1112, 1
  %1114 = xor i8 %1113, 1
  store i8 %1114, i8* %24, align 1, !tbaa !2432
  store i8 0, i8* %29, align 1, !tbaa !2432
  %1115 = icmp eq i32 %1104, 0
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %32, align 1, !tbaa !2432
  %1117 = lshr i32 %1103, 30
  %1118 = trunc i32 %1117 to i8
  %1119 = and i8 %1118, 1
  store i8 %1119, i8* %35, align 1, !tbaa !2432
  %1120 = zext i1 %1107 to i8
  store i8 %1120, i8* %41, align 1, !tbaa !2432
  %1121 = add i64 %1988, -64
  %1122 = add i64 %2024, 44
  store i64 %1122, i64* %PC, align 8
  %1123 = inttoptr i64 %1121 to i32*
  store i32 %1104, i32* %1123, align 4
  %1124 = load i64, i64* %RBP, align 8
  %1125 = add i64 %1124, -24
  %1126 = load i64, i64* %PC, align 8
  %1127 = add i64 %1126, 5
  store i64 %1127, i64* %PC, align 8
  %1128 = inttoptr i64 %1125 to i32*
  %1129 = load i32, i32* %1128, align 4
  %1130 = sitofp i32 %1129 to double
  %1131 = load i64, i64* %544, align 1
  %1132 = load double, double* %539, align 1
  %1133 = fmul double %1130, %1132
  store double %1133, double* %543, align 1, !tbaa !2452
  %1134 = add i64 %1124, -64
  %1135 = add i64 %1126, 12
  store i64 %1135, i64* %PC, align 8
  %1136 = inttoptr i64 %1134 to i32*
  %1137 = load i32, i32* %1136, align 4
  %1138 = zext i32 %1137 to i64
  store i64 %1138, i64* %RAX, align 8, !tbaa !2428
  %1139 = sext i32 %1137 to i64
  %1140 = lshr i64 %1139, 32
  store i64 %1140, i64* %517, align 8, !tbaa !2428
  %1141 = add i64 %1124, -48
  %1142 = add i64 %1126, 16
  store i64 %1142, i64* %PC, align 8
  %1143 = inttoptr i64 %1141 to i32*
  %1144 = load i32, i32* %1143, align 4
  %1145 = sext i32 %1144 to i64
  %1146 = shl nuw i64 %1140, 32
  %1147 = or i64 %1146, %1138
  %1148 = sdiv i64 %1147, %1145
  %1149 = shl i64 %1148, 32
  %1150 = ashr exact i64 %1149, 32
  %1151 = icmp eq i64 %1148, %1150
  br i1 %1151, label %1154, label %1152

; <label>:1152:                                   ; preds = %block_400da8
  %1153 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1142, %struct.Memory* %MEMORY.8) #15
  %.pre105 = load i32, i32* %EAX, align 4
  %.pre106 = load i64, i64* %PC, align 8
  %.pre107 = load double, double* %543, align 1
  %.pre108 = load i64, i64* %544, align 1
  %.pre109 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:1154:                                   ; preds = %block_400da8
  %1155 = srem i64 %1147, %1145
  %1156 = and i64 %1148, 4294967295
  store i64 %1156, i64* %RAX, align 8, !tbaa !2428
  %1157 = and i64 %1155, 4294967295
  store i64 %1157, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2433
  store i8 0, i8* %24, align 1, !tbaa !2447
  store i8 0, i8* %29, align 1, !tbaa !2451
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %1158 = trunc i64 %1148 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %1154, %1152
  %1159 = phi i64 [ %.pre109, %1152 ], [ %1124, %1154 ]
  %1160 = phi i64 [ %.pre108, %1152 ], [ %1131, %1154 ]
  %1161 = phi double [ %.pre107, %1152 ], [ %1133, %1154 ]
  %1162 = phi i64 [ %.pre106, %1152 ], [ %1142, %1154 ]
  %1163 = phi i32 [ %.pre105, %1152 ], [ %1158, %1154 ]
  %1164 = phi %struct.Memory* [ %1153, %1152 ], [ %MEMORY.8, %1154 ]
  %1165 = sitofp i32 %1163 to double
  store double %1165, double* %539, align 1, !tbaa !2452
  %1166 = fdiv double %1161, %1165
  store double %1166, double* %543, align 1, !tbaa !2452
  store i64 %1160, i64* %544, align 1, !tbaa !2452
  %1167 = add i64 %1159, -120
  %1168 = add i64 %1162, 13
  store i64 %1168, i64* %PC, align 8
  %1169 = inttoptr i64 %1167 to double*
  store double %1166, double* %1169, align 8
  %1170 = load i64, i64* %RBP, align 8
  %1171 = add i64 %1170, -120
  %1172 = load i64, i64* %PC, align 8
  %1173 = add i64 %1172, 5
  store i64 %1173, i64* %PC, align 8
  %1174 = load double, double* %535, align 1
  %1175 = inttoptr i64 %1171 to double*
  %1176 = load double, double* %1175, align 8
  %1177 = fmul double %1174, %1176
  store double %1177, double* %535, align 1, !tbaa !2452
  %1178 = add i64 %1170, -176
  %1179 = add i64 %1172, 13
  store i64 %1179, i64* %PC, align 8
  %1180 = load i64, i64* %518, align 1
  %1181 = inttoptr i64 %1178 to i64*
  store i64 %1180, i64* %1181, align 8
  %1182 = load i64, i64* %PC, align 8
  %1183 = load <2 x i32>, <2 x i32>* %545, align 1
  %1184 = load <2 x i32>, <2 x i32>* %546, align 1
  %1185 = extractelement <2 x i32> %1183, i32 0
  store i32 %1185, i32* %522, align 1, !tbaa !2455
  %1186 = extractelement <2 x i32> %1183, i32 1
  store i32 %1186, i32* %524, align 1, !tbaa !2455
  %1187 = extractelement <2 x i32> %1184, i32 0
  store i32 %1187, i32* %525, align 1, !tbaa !2455
  %1188 = extractelement <2 x i32> %1184, i32 1
  store i32 %1188, i32* %527, align 1, !tbaa !2455
  %1189 = load i64, i64* %RBP, align 8
  %1190 = add i64 %1189, -184
  %1191 = add i64 %1182, 11
  store i64 %1191, i64* %PC, align 8
  %1192 = load i64, i64* %532, align 1
  %1193 = inttoptr i64 %1190 to i64*
  store i64 %1192, i64* %1193, align 8
  %1194 = load i64, i64* %RBP, align 8
  %1195 = add i64 %1194, -192
  %1196 = load i64, i64* %PC, align 8
  %1197 = add i64 %1196, 8
  store i64 %1197, i64* %PC, align 8
  %1198 = load i64, i64* %529, align 1
  %1199 = inttoptr i64 %1195 to i64*
  store i64 %1198, i64* %1199, align 8
  %1200 = load i64, i64* %PC, align 8
  %1201 = add i64 %1200, -2177
  %1202 = add i64 %1200, 5
  %1203 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1204 = add i64 %1203, -8
  %1205 = inttoptr i64 %1204 to i64*
  store i64 %1202, i64* %1205, align 8
  store i64 %1204, i64* %RSP, align 8, !tbaa !2428
  store i64 %1201, i64* %PC, align 8, !tbaa !2428
  %1206 = load double, double* %547, align 8, !alias.scope !2457, !noalias !2460
  %1207 = load i64, i64* %1205, align 8
  store i64 %1203, i64* %RSP, align 8, !alias.scope !2457, !noalias !2460
  %1208 = tail call double @sin(double %1206)
  call void @llvm.memset.p0i8.i64(i8* %549, i8 0, i64 24, i32 8, i1 false)
  store double %1208, double* %547, align 8, !alias.scope !2457, !noalias !2460
  %1209 = load i64, i64* %RBP, align 8
  %1210 = add i64 %1209, -160
  %1211 = add i64 %1207, 8
  store i64 %1211, i64* %PC, align 8
  %1212 = inttoptr i64 %1210 to double*
  store double %1208, double* %1212, align 8
  %1213 = load i64, i64* %RBP, align 8
  %1214 = add i64 %1213, -184
  %1215 = load i64, i64* %PC, align 8
  %1216 = add i64 %1215, 8
  store i64 %1216, i64* %PC, align 8
  %1217 = inttoptr i64 %1214 to i64*
  %1218 = load i64, i64* %1217, align 8
  store i64 %1218, i64* %518, align 1, !tbaa !2452
  store double 0.000000e+00, double* %520, align 1, !tbaa !2452
  %1219 = add i64 %1213, -160
  %1220 = add i64 %1215, 16
  store i64 %1220, i64* %PC, align 8
  %1221 = bitcast i64 %1218 to double
  %1222 = inttoptr i64 %1219 to double*
  %1223 = load double, double* %1222, align 8
  %1224 = fmul double %1221, %1223
  store double %1224, double* %547, align 1, !tbaa !2452
  store i64 0, i64* %519, align 1, !tbaa !2452
  %1225 = add i64 %1215, 24
  store i64 %1225, i64* %PC, align 8
  %1226 = load double, double* %1222, align 8
  %1227 = fmul double %1224, %1226
  store double %1227, double* %547, align 1, !tbaa !2452
  store i64 0, i64* %519, align 1, !tbaa !2452
  %1228 = add i64 %1213, -144
  %1229 = add i64 %1215, 32
  store i64 %1229, i64* %PC, align 8
  %1230 = inttoptr i64 %1228 to double*
  store double %1227, double* %1230, align 8
  %1231 = load i64, i64* %RBP, align 8
  %1232 = add i64 %1231, -120
  %1233 = load i64, i64* %PC, align 8
  %1234 = add i64 %1233, 5
  store i64 %1234, i64* %PC, align 8
  %1235 = inttoptr i64 %1232 to i64*
  %1236 = load i64, i64* %1235, align 8
  store i64 %1236, i64* %518, align 1, !tbaa !2452
  store double 0.000000e+00, double* %520, align 1, !tbaa !2452
  %1237 = add i64 %1233, -2222
  %1238 = add i64 %1233, 10
  %1239 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1240 = add i64 %1239, -8
  %1241 = inttoptr i64 %1240 to i64*
  store i64 %1238, i64* %1241, align 8
  store i64 %1240, i64* %RSP, align 8, !tbaa !2428
  store i64 %1237, i64* %PC, align 8, !tbaa !2428
  %1242 = load double, double* %547, align 8, !alias.scope !2462, !noalias !2465
  %1243 = load i64, i64* %1241, align 8
  store i64 %1239, i64* %RSP, align 8, !alias.scope !2462, !noalias !2465
  %1244 = tail call double @sin(double %1242)
  call void @llvm.memset.p0i8.i64(i8* %551, i8 0, i64 24, i32 8, i1 false)
  store double %1244, double* %547, align 8, !alias.scope !2462, !noalias !2465
  %1245 = load i64, i64* %RBP, align 8
  %1246 = add i64 %1245, -136
  %1247 = add i64 %1243, 8
  store i64 %1247, i64* %PC, align 8
  %1248 = inttoptr i64 %1246 to double*
  store double %1244, double* %1248, align 8
  %1249 = load i64, i64* %RBP, align 8
  %1250 = add i64 %1249, -192
  %1251 = load i64, i64* %PC, align 8
  %1252 = add i64 %1251, 8
  store i64 %1252, i64* %PC, align 8
  %1253 = inttoptr i64 %1250 to i64*
  %1254 = load i64, i64* %1253, align 8
  store i64 %1254, i64* %518, align 1, !tbaa !2452
  store double 0.000000e+00, double* %520, align 1, !tbaa !2452
  %1255 = add i64 %1249, -152
  %1256 = add i64 %1251, 16
  store i64 %1256, i64* %PC, align 8
  %1257 = inttoptr i64 %1255 to i64*
  store i64 %1254, i64* %1257, align 8
  %1258 = load i64, i64* %RBP, align 8
  %1259 = add i64 %1258, -176
  %1260 = load i64, i64* %PC, align 8
  %1261 = add i64 %1260, 8
  store i64 %1261, i64* %PC, align 8
  %1262 = inttoptr i64 %1259 to i64*
  %1263 = load i64, i64* %1262, align 8
  store i64 %1263, i64* %529, align 1, !tbaa !2452
  store double 0.000000e+00, double* %531, align 1, !tbaa !2452
  %1264 = add i64 %1258, -128
  %1265 = add i64 %1260, 13
  store i64 %1265, i64* %PC, align 8
  %1266 = inttoptr i64 %1264 to i64*
  store i64 %1263, i64* %1266, align 8
  %1267 = load i64, i64* %RBP, align 8
  %1268 = add i64 %1267, -36
  %1269 = load i64, i64* %PC, align 8
  %1270 = add i64 %1269, 7
  store i64 %1270, i64* %PC, align 8
  %1271 = inttoptr i64 %1268 to i32*
  store i32 1, i32* %1271, align 4
  %.pre110 = load i64, i64* %PC, align 8
  br label %block_400e74

block_400b93:                                     ; preds = %block_400b87
  %1272 = add i64 %2026, -16
  %1273 = add i64 %2062, 4
  store i64 %1273, i64* %PC, align 8
  %1274 = inttoptr i64 %1272 to i64*
  %1275 = load i64, i64* %1274, align 8
  store i64 %1275, i64* %RAX, align 8, !tbaa !2428
  %1276 = add i64 %2062, 8
  store i64 %1276, i64* %PC, align 8
  %1277 = load i32, i32* %2029, align 4
  %1278 = sext i32 %1277 to i64
  store i64 %1278, i64* %RCX, align 8, !tbaa !2428
  %1279 = shl nsw i64 %1278, 2
  %1280 = add i64 %1279, %1275
  %1281 = add i64 %2062, 11
  store i64 %1281, i64* %PC, align 8
  %1282 = inttoptr i64 %1280 to i32*
  %1283 = load i32, i32* %1282, align 4
  %1284 = zext i32 %1283 to i64
  store i64 %1284, i64* %RDX, align 8, !tbaa !2428
  %1285 = add i64 %2026, -96
  %1286 = add i64 %2062, 15
  store i64 %1286, i64* %PC, align 8
  %1287 = inttoptr i64 %1285 to i32*
  %1288 = load i32, i32* %1287, align 4
  %1289 = sext i32 %1283 to i64
  %1290 = sext i32 %1288 to i64
  %1291 = mul nsw i64 %1290, %1289
  %1292 = trunc i64 %1291 to i32
  %1293 = and i64 %1291, 4294967295
  store i64 %1293, i64* %RDX, align 8, !tbaa !2428
  %1294 = shl i64 %1291, 32
  %1295 = ashr exact i64 %1294, 32
  %1296 = icmp ne i64 %1295, %1291
  %1297 = zext i1 %1296 to i8
  store i8 %1297, i8* %17, align 1, !tbaa !2433
  %1298 = and i32 %1292, 255
  %1299 = tail call i32 @llvm.ctpop.i32(i32 %1298) #10
  %1300 = trunc i32 %1299 to i8
  %1301 = and i8 %1300, 1
  %1302 = xor i8 %1301, 1
  store i8 %1302, i8* %24, align 1, !tbaa !2447
  store i8 0, i8* %29, align 1, !tbaa !2451
  store i8 0, i8* %32, align 1, !tbaa !2448
  %1303 = lshr i32 %1292, 31
  %1304 = trunc i32 %1303 to i8
  store i8 %1304, i8* %35, align 1, !tbaa !2449
  store i8 %1297, i8* %41, align 1, !tbaa !2450
  %1305 = trunc i64 %1291 to i32
  %1306 = add i64 %2062, 18
  store i64 %1306, i64* %PC, align 8
  store i32 %1305, i32* %1287, align 4
  %1307 = load i64, i64* %RBP, align 8
  %1308 = add i64 %1307, -72
  %1309 = load i64, i64* %PC, align 8
  %1310 = add i64 %1309, 3
  store i64 %1310, i64* %PC, align 8
  %1311 = inttoptr i64 %1308 to i32*
  %1312 = load i32, i32* %1311, align 4
  %1313 = add i32 %1312, 1
  %1314 = zext i32 %1313 to i64
  store i64 %1314, i64* %RAX, align 8, !tbaa !2428
  %1315 = icmp eq i32 %1312, -1
  %1316 = icmp eq i32 %1313, 0
  %1317 = or i1 %1315, %1316
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %17, align 1, !tbaa !2433
  %1319 = and i32 %1313, 255
  %1320 = tail call i32 @llvm.ctpop.i32(i32 %1319) #10
  %1321 = trunc i32 %1320 to i8
  %1322 = and i8 %1321, 1
  %1323 = xor i8 %1322, 1
  store i8 %1323, i8* %24, align 1, !tbaa !2447
  %1324 = xor i32 %1313, %1312
  %1325 = lshr i32 %1324, 4
  %1326 = trunc i32 %1325 to i8
  %1327 = and i8 %1326, 1
  store i8 %1327, i8* %29, align 1, !tbaa !2451
  %1328 = zext i1 %1316 to i8
  store i8 %1328, i8* %32, align 1, !tbaa !2448
  %1329 = lshr i32 %1313, 31
  %1330 = trunc i32 %1329 to i8
  store i8 %1330, i8* %35, align 1, !tbaa !2449
  %1331 = lshr i32 %1312, 31
  %1332 = xor i32 %1329, %1331
  %1333 = add nuw nsw i32 %1332, %1329
  %1334 = icmp eq i32 %1333, 2
  %1335 = zext i1 %1334 to i8
  store i8 %1335, i8* %41, align 1, !tbaa !2450
  %1336 = add i64 %1309, 9
  store i64 %1336, i64* %PC, align 8
  store i32 %1313, i32* %1311, align 4
  %1337 = load i64, i64* %PC, align 8
  %1338 = add i64 %1337, -39
  store i64 %1338, i64* %PC, align 8, !tbaa !2428
  br label %block_400b87

block_400bca:                                     ; preds = %block_400bc0
  %1339 = add i64 %741, -16
  %1340 = add i64 %769, 4
  store i64 %1340, i64* %PC, align 8
  %1341 = inttoptr i64 %1339 to i64*
  %1342 = load i64, i64* %1341, align 8
  store i64 %1342, i64* %RAX, align 8, !tbaa !2428
  %1343 = add i64 %769, 8
  store i64 %1343, i64* %PC, align 8
  %1344 = load i32, i32* %744, align 4
  %1345 = sext i32 %1344 to i64
  store i64 %1345, i64* %RCX, align 8, !tbaa !2428
  %1346 = shl nsw i64 %1345, 2
  %1347 = add i64 %1346, %1342
  %1348 = add i64 %769, 11
  store i64 %1348, i64* %PC, align 8
  %1349 = inttoptr i64 %1347 to i32*
  %1350 = load i32, i32* %1349, align 4
  %1351 = zext i32 %1350 to i64
  store i64 %1351, i64* %RDX, align 8, !tbaa !2428
  %1352 = add i64 %741, -84
  %1353 = add i64 %769, 14
  store i64 %1353, i64* %PC, align 8
  %1354 = inttoptr i64 %1352 to i32*
  store i32 %1350, i32* %1354, align 4
  %1355 = load i64, i64* %RBP, align 8
  %1356 = add i64 %1355, -96
  %1357 = load i64, i64* %PC, align 8
  %1358 = add i64 %1357, 3
  store i64 %1358, i64* %PC, align 8
  %1359 = inttoptr i64 %1356 to i32*
  %1360 = load i32, i32* %1359, align 4
  %1361 = zext i32 %1360 to i64
  store i64 %1361, i64* %RAX, align 8, !tbaa !2428
  %1362 = add i64 %1355, -84
  %1363 = add i64 %1357, 6
  store i64 %1363, i64* %PC, align 8
  %1364 = inttoptr i64 %1362 to i32*
  %1365 = load i32, i32* %1364, align 4
  %1366 = zext i32 %1365 to i64
  store i64 %1366, i64* %RDX, align 8, !tbaa !2428
  %1367 = add i64 %1355, -88
  %1368 = add i64 %1357, 10
  store i64 %1368, i64* %PC, align 8
  %1369 = inttoptr i64 %1367 to i32*
  %1370 = load i32, i32* %1369, align 4
  %1371 = sext i32 %1365 to i64
  %1372 = sext i32 %1370 to i64
  %1373 = mul nsw i64 %1372, %1371
  %1374 = trunc i64 %1373 to i32
  %1375 = shl i64 %1373, 32
  %1376 = ashr exact i64 %1375, 32
  %1377 = icmp ne i64 %1376, %1373
  %1378 = zext i1 %1377 to i8
  store i8 %1378, i8* %17, align 1, !tbaa !2433
  %1379 = and i32 %1374, 255
  %1380 = tail call i32 @llvm.ctpop.i32(i32 %1379) #10
  %1381 = trunc i32 %1380 to i8
  %1382 = and i8 %1381, 1
  %1383 = xor i8 %1382, 1
  store i8 %1383, i8* %24, align 1, !tbaa !2447
  store i8 0, i8* %29, align 1, !tbaa !2451
  store i8 0, i8* %32, align 1, !tbaa !2448
  %1384 = lshr i32 %1374, 31
  %1385 = trunc i32 %1384 to i8
  store i8 %1385, i8* %35, align 1, !tbaa !2449
  store i8 %1378, i8* %41, align 1, !tbaa !2450
  %1386 = add i64 %1355, -164
  %1387 = trunc i64 %1373 to i32
  %1388 = add i64 %1357, 16
  store i64 %1388, i64* %PC, align 8
  %1389 = inttoptr i64 %1386 to i32*
  store i32 %1387, i32* %1389, align 4
  %1390 = load i64, i64* %PC, align 8
  %1391 = load i32, i32* %EAX, align 8, !tbaa !2454
  %1392 = sext i32 %1391 to i64
  %1393 = lshr i64 %1392, 32
  store i64 %1393, i64* %517, align 8, !tbaa !2428
  %1394 = load i64, i64* %RBP, align 8
  %1395 = add i64 %1394, -164
  %1396 = add i64 %1390, 7
  store i64 %1396, i64* %PC, align 8
  %1397 = inttoptr i64 %1395 to i32*
  %1398 = load i32, i32* %1397, align 4
  %1399 = zext i32 %1398 to i64
  store i64 %1399, i64* %RSI, align 8, !tbaa !2428
  %1400 = add i64 %1390, 9
  store i64 %1400, i64* %PC, align 8
  %1401 = zext i32 %1391 to i64
  %1402 = sext i32 %1398 to i64
  %1403 = shl nuw i64 %1393, 32
  %1404 = or i64 %1403, %1401
  %1405 = sdiv i64 %1404, %1402
  %1406 = shl i64 %1405, 32
  %1407 = ashr exact i64 %1406, 32
  %1408 = icmp eq i64 %1405, %1407
  br i1 %1408, label %1411, label %1409

; <label>:1409:                                   ; preds = %block_400bca
  %1410 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1400, %struct.Memory* %MEMORY.3) #15
  %.pre95 = load i64, i64* %RBP, align 8
  %.pre96 = load i32, i32* %EAX, align 4
  %.pre97 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:1411:                                   ; preds = %block_400bca
  %1412 = srem i64 %1404, %1402
  %1413 = and i64 %1405, 4294967295
  store i64 %1413, i64* %RAX, align 8, !tbaa !2428
  %1414 = and i64 %1412, 4294967295
  store i64 %1414, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2433
  store i8 0, i8* %24, align 1, !tbaa !2447
  store i8 0, i8* %29, align 1, !tbaa !2451
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %1415 = trunc i64 %1405 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %1411, %1409
  %1416 = phi i64 [ %.pre97, %1409 ], [ %1400, %1411 ]
  %1417 = phi i32 [ %.pre96, %1409 ], [ %1415, %1411 ]
  %1418 = phi i64 [ %.pre95, %1409 ], [ %1394, %1411 ]
  %1419 = phi %struct.Memory* [ %1410, %1409 ], [ %MEMORY.3, %1411 ]
  %1420 = add i64 %1418, -92
  %1421 = add i64 %1416, 3
  store i64 %1421, i64* %PC, align 8
  %1422 = inttoptr i64 %1420 to i32*
  store i32 %1417, i32* %1422, align 4
  %1423 = load i64, i64* %RBP, align 8
  %1424 = add i64 %1423, -88
  %1425 = load i64, i64* %PC, align 8
  %1426 = add i64 %1425, 3
  store i64 %1426, i64* %PC, align 8
  %1427 = inttoptr i64 %1424 to i32*
  %1428 = load i32, i32* %1427, align 4
  %1429 = shl i32 %1428, 1
  %1430 = icmp slt i32 %1428, 0
  %1431 = icmp slt i32 %1429, 0
  %1432 = xor i1 %1430, %1431
  %1433 = zext i32 %1429 to i64
  store i64 %1433, i64* %RAX, align 8, !tbaa !2428
  %.lobit = lshr i32 %1428, 31
  %1434 = trunc i32 %.lobit to i8
  store i8 %1434, i8* %17, align 1, !tbaa !2432
  %1435 = and i32 %1429, 254
  %1436 = tail call i32 @llvm.ctpop.i32(i32 %1435) #10
  %1437 = trunc i32 %1436 to i8
  %1438 = and i8 %1437, 1
  %1439 = xor i8 %1438, 1
  store i8 %1439, i8* %24, align 1, !tbaa !2432
  store i8 0, i8* %29, align 1, !tbaa !2432
  %1440 = icmp eq i32 %1429, 0
  %1441 = zext i1 %1440 to i8
  store i8 %1441, i8* %32, align 1, !tbaa !2432
  %1442 = lshr i32 %1428, 30
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  store i8 %1444, i8* %35, align 1, !tbaa !2432
  %1445 = zext i1 %1432 to i8
  store i8 %1445, i8* %41, align 1, !tbaa !2432
  %1446 = add i64 %1423, -48
  %1447 = add i64 %1425, 9
  store i64 %1447, i64* %PC, align 8
  %1448 = inttoptr i64 %1446 to i32*
  store i32 %1429, i32* %1448, align 4
  %1449 = load i64, i64* %RBP, align 8
  %1450 = add i64 %1449, -48
  %1451 = load i64, i64* %PC, align 8
  %1452 = add i64 %1451, 3
  store i64 %1452, i64* %PC, align 8
  %1453 = inttoptr i64 %1450 to i32*
  %1454 = load i32, i32* %1453, align 4
  %1455 = zext i32 %1454 to i64
  store i64 %1455, i64* %RAX, align 8, !tbaa !2428
  %1456 = add i64 %1449, -84
  %1457 = add i64 %1451, 7
  store i64 %1457, i64* %PC, align 8
  %1458 = inttoptr i64 %1456 to i32*
  %1459 = load i32, i32* %1458, align 4
  %1460 = sext i32 %1454 to i64
  %1461 = sext i32 %1459 to i64
  %1462 = mul nsw i64 %1461, %1460
  %1463 = trunc i64 %1462 to i32
  %1464 = and i64 %1462, 4294967295
  store i64 %1464, i64* %RAX, align 8, !tbaa !2428
  %1465 = shl i64 %1462, 32
  %1466 = ashr exact i64 %1465, 32
  %1467 = icmp ne i64 %1466, %1462
  %1468 = zext i1 %1467 to i8
  store i8 %1468, i8* %17, align 1, !tbaa !2433
  %1469 = and i32 %1463, 255
  %1470 = tail call i32 @llvm.ctpop.i32(i32 %1469) #10
  %1471 = trunc i32 %1470 to i8
  %1472 = and i8 %1471, 1
  %1473 = xor i8 %1472, 1
  store i8 %1473, i8* %24, align 1, !tbaa !2447
  store i8 0, i8* %29, align 1, !tbaa !2451
  store i8 0, i8* %32, align 1, !tbaa !2448
  %1474 = lshr i32 %1463, 31
  %1475 = trunc i32 %1474 to i8
  store i8 %1475, i8* %35, align 1, !tbaa !2449
  store i8 %1468, i8* %41, align 1, !tbaa !2450
  %1476 = add i64 %1449, -52
  %1477 = trunc i64 %1462 to i32
  %1478 = add i64 %1451, 10
  store i64 %1478, i64* %PC, align 8
  %1479 = inttoptr i64 %1476 to i32*
  store i32 %1477, i32* %1479, align 4
  %1480 = load i64, i64* %RBP, align 8
  %1481 = add i64 %1480, -52
  %1482 = load i64, i64* %PC, align 8
  %1483 = add i64 %1482, 3
  store i64 %1483, i64* %PC, align 8
  %1484 = inttoptr i64 %1481 to i32*
  %1485 = load i32, i32* %1484, align 4
  %1486 = zext i32 %1485 to i64
  store i64 %1486, i64* %RAX, align 8, !tbaa !2428
  %1487 = add i64 %1480, -92
  %1488 = add i64 %1482, 7
  store i64 %1488, i64* %PC, align 8
  %1489 = inttoptr i64 %1487 to i32*
  %1490 = load i32, i32* %1489, align 4
  %1491 = sext i32 %1485 to i64
  %1492 = sext i32 %1490 to i64
  %1493 = mul nsw i64 %1492, %1491
  %1494 = trunc i64 %1493 to i32
  %1495 = and i64 %1493, 4294967295
  store i64 %1495, i64* %RAX, align 8, !tbaa !2428
  %1496 = shl i64 %1493, 32
  %1497 = ashr exact i64 %1496, 32
  %1498 = icmp ne i64 %1497, %1493
  %1499 = zext i1 %1498 to i8
  store i8 %1499, i8* %17, align 1, !tbaa !2433
  %1500 = and i32 %1494, 255
  %1501 = tail call i32 @llvm.ctpop.i32(i32 %1500) #10
  %1502 = trunc i32 %1501 to i8
  %1503 = and i8 %1502, 1
  %1504 = xor i8 %1503, 1
  store i8 %1504, i8* %24, align 1, !tbaa !2447
  store i8 0, i8* %29, align 1, !tbaa !2451
  store i8 0, i8* %32, align 1, !tbaa !2448
  %1505 = lshr i32 %1494, 31
  %1506 = trunc i32 %1505 to i8
  store i8 %1506, i8* %35, align 1, !tbaa !2449
  store i8 %1499, i8* %41, align 1, !tbaa !2450
  %1507 = add i64 %1480, -56
  %1508 = trunc i64 %1493 to i32
  %1509 = add i64 %1482, 10
  store i64 %1509, i64* %PC, align 8
  %1510 = inttoptr i64 %1507 to i32*
  store i32 %1508, i32* %1510, align 4
  %1511 = load i64, i64* %RBP, align 8
  %1512 = add i64 %1511, -40
  %1513 = load i64, i64* %PC, align 8
  %1514 = add i64 %1513, 7
  store i64 %1514, i64* %PC, align 8
  %1515 = inttoptr i64 %1512 to i32*
  store i32 1, i32* %1515, align 4
  %1516 = load i64, i64* %RBP, align 8
  %1517 = add i64 %1516, -32
  %1518 = load i64, i64* %PC, align 8
  %1519 = add i64 %1518, 7
  store i64 %1519, i64* %PC, align 8
  %1520 = inttoptr i64 %1517 to i32*
  store i32 1, i32* %1520, align 4
  %.pre98 = load i64, i64* %PC, align 8
  br label %block_400c1f

block_400eac:                                     ; preds = %block_400ea0
  %1521 = add i64 %913, 3
  store i64 %1521, i64* %PC, align 8
  %1522 = load i32, i32* %880, align 4
  %1523 = zext i32 %1522 to i64
  store i64 %1523, i64* %RAX, align 8, !tbaa !2428
  %1524 = add i64 %877, -76
  %1525 = add i64 %913, 6
  store i64 %1525, i64* %PC, align 8
  %1526 = inttoptr i64 %1524 to i32*
  store i32 %1522, i32* %1526, align 4
  %1527 = load i64, i64* %RBP, align 8
  %1528 = add i64 %1527, -76
  %1529 = load i64, i64* %PC, align 8
  %1530 = add i64 %1529, 3
  store i64 %1530, i64* %PC, align 8
  %1531 = inttoptr i64 %1528 to i32*
  %1532 = load i32, i32* %1531, align 4
  %1533 = zext i32 %1532 to i64
  store i64 %1533, i64* %RAX, align 8, !tbaa !2428
  %1534 = add i64 %1527, -60
  %1535 = add i64 %1529, 6
  store i64 %1535, i64* %PC, align 8
  %1536 = inttoptr i64 %1534 to i32*
  %1537 = load i32, i32* %1536, align 4
  %1538 = add i32 %1537, %1532
  %1539 = zext i32 %1538 to i64
  store i64 %1539, i64* %RAX, align 8, !tbaa !2428
  %1540 = icmp ult i32 %1538, %1532
  %1541 = icmp ult i32 %1538, %1537
  %1542 = or i1 %1540, %1541
  %1543 = zext i1 %1542 to i8
  store i8 %1543, i8* %17, align 1, !tbaa !2433
  %1544 = and i32 %1538, 255
  %1545 = tail call i32 @llvm.ctpop.i32(i32 %1544) #10
  %1546 = trunc i32 %1545 to i8
  %1547 = and i8 %1546, 1
  %1548 = xor i8 %1547, 1
  store i8 %1548, i8* %24, align 1, !tbaa !2447
  %1549 = xor i32 %1537, %1532
  %1550 = xor i32 %1549, %1538
  %1551 = lshr i32 %1550, 4
  %1552 = trunc i32 %1551 to i8
  %1553 = and i8 %1552, 1
  store i8 %1553, i8* %29, align 1, !tbaa !2451
  %1554 = icmp eq i32 %1538, 0
  %1555 = zext i1 %1554 to i8
  store i8 %1555, i8* %32, align 1, !tbaa !2448
  %1556 = lshr i32 %1538, 31
  %1557 = trunc i32 %1556 to i8
  store i8 %1557, i8* %35, align 1, !tbaa !2449
  %1558 = lshr i32 %1532, 31
  %1559 = lshr i32 %1537, 31
  %1560 = xor i32 %1556, %1558
  %1561 = xor i32 %1556, %1559
  %1562 = add nuw nsw i32 %1560, %1561
  %1563 = icmp eq i32 %1562, 2
  %1564 = zext i1 %1563 to i8
  store i8 %1564, i8* %41, align 1, !tbaa !2450
  %1565 = add i64 %1527, -80
  %1566 = add i64 %1529, 9
  store i64 %1566, i64* %PC, align 8
  %1567 = inttoptr i64 %1565 to i32*
  store i32 %1538, i32* %1567, align 4
  %1568 = load i64, i64* %RBP, align 8
  %1569 = add i64 %1568, -152
  %1570 = load i64, i64* %PC, align 8
  %1571 = add i64 %1570, 8
  store i64 %1571, i64* %PC, align 8
  %1572 = inttoptr i64 %1569 to i64*
  %1573 = load i64, i64* %1572, align 8
  store i64 %1573, i64* %518, align 1, !tbaa !2452
  store double 0.000000e+00, double* %520, align 1, !tbaa !2452
  %1574 = add i64 %1568, -8
  %1575 = add i64 %1570, 12
  store i64 %1575, i64* %PC, align 8
  %1576 = inttoptr i64 %1574 to i64*
  %1577 = load i64, i64* %1576, align 8
  store i64 %1577, i64* %RCX, align 8, !tbaa !2428
  %1578 = add i64 %1568, -80
  %1579 = add i64 %1570, 16
  store i64 %1579, i64* %PC, align 8
  %1580 = inttoptr i64 %1578 to i32*
  %1581 = load i32, i32* %1580, align 4
  %1582 = sext i32 %1581 to i64
  store i64 %1582, i64* %RDX, align 8, !tbaa !2428
  %1583 = shl nsw i64 %1582, 3
  %1584 = add i64 %1583, %1577
  %1585 = add i64 %1570, 21
  store i64 %1585, i64* %PC, align 8
  %1586 = bitcast i64 %1573 to double
  %1587 = inttoptr i64 %1584 to double*
  %1588 = load double, double* %1587, align 8
  %1589 = fmul double %1586, %1588
  store double %1589, double* %547, align 1, !tbaa !2452
  store i64 0, i64* %519, align 1, !tbaa !2452
  %1590 = add i64 %1568, -128
  %1591 = add i64 %1570, 26
  store i64 %1591, i64* %PC, align 8
  %1592 = inttoptr i64 %1590 to i64*
  %1593 = load i64, i64* %1592, align 8
  store i64 %1593, i64* %529, align 1, !tbaa !2452
  store double 0.000000e+00, double* %531, align 1, !tbaa !2452
  %1594 = add i64 %1570, 30
  store i64 %1594, i64* %PC, align 8
  %1595 = load i64, i64* %1576, align 8
  store i64 %1595, i64* %RCX, align 8, !tbaa !2428
  %1596 = add i64 %1570, 33
  store i64 %1596, i64* %PC, align 8
  %1597 = load i32, i32* %1580, align 4
  %1598 = add i32 %1597, 1
  %1599 = zext i32 %1598 to i64
  store i64 %1599, i64* %RAX, align 8, !tbaa !2428
  %1600 = icmp eq i32 %1597, -1
  %1601 = icmp eq i32 %1598, 0
  %1602 = or i1 %1600, %1601
  %1603 = zext i1 %1602 to i8
  store i8 %1603, i8* %17, align 1, !tbaa !2433
  %1604 = and i32 %1598, 255
  %1605 = tail call i32 @llvm.ctpop.i32(i32 %1604) #10
  %1606 = trunc i32 %1605 to i8
  %1607 = and i8 %1606, 1
  %1608 = xor i8 %1607, 1
  store i8 %1608, i8* %24, align 1, !tbaa !2447
  %1609 = xor i32 %1598, %1597
  %1610 = lshr i32 %1609, 4
  %1611 = trunc i32 %1610 to i8
  %1612 = and i8 %1611, 1
  store i8 %1612, i8* %29, align 1, !tbaa !2451
  %1613 = zext i1 %1601 to i8
  store i8 %1613, i8* %32, align 1, !tbaa !2448
  %1614 = lshr i32 %1598, 31
  %1615 = trunc i32 %1614 to i8
  store i8 %1615, i8* %35, align 1, !tbaa !2449
  %1616 = lshr i32 %1597, 31
  %1617 = xor i32 %1614, %1616
  %1618 = add nuw nsw i32 %1617, %1614
  %1619 = icmp eq i32 %1618, 2
  %1620 = zext i1 %1619 to i8
  store i8 %1620, i8* %41, align 1, !tbaa !2450
  %1621 = sext i32 %1598 to i64
  store i64 %1621, i64* %RDX, align 8, !tbaa !2428
  %1622 = shl nsw i64 %1621, 3
  %1623 = add i64 %1595, %1622
  %1624 = add i64 %1570, 44
  store i64 %1624, i64* %PC, align 8
  %1625 = bitcast i64 %1593 to double
  %1626 = inttoptr i64 %1623 to double*
  %1627 = load double, double* %1626, align 8
  %1628 = fmul double %1625, %1627
  store double %1628, double* %528, align 1, !tbaa !2452
  store i64 0, i64* %530, align 1, !tbaa !2452
  %1629 = fsub double %1589, %1628
  store double %1629, double* %547, align 1, !tbaa !2452
  store i64 0, i64* %519, align 1, !tbaa !2452
  %1630 = load i64, i64* %RBP, align 8
  %1631 = add i64 %1630, -112
  %1632 = add i64 %1570, 53
  store i64 %1632, i64* %PC, align 8
  %1633 = inttoptr i64 %1631 to double*
  store double %1629, double* %1633, align 8
  %1634 = load i64, i64* %RBP, align 8
  %1635 = add i64 %1634, -152
  %1636 = load i64, i64* %PC, align 8
  %1637 = add i64 %1636, 8
  store i64 %1637, i64* %PC, align 8
  %1638 = inttoptr i64 %1635 to i64*
  %1639 = load i64, i64* %1638, align 8
  store i64 %1639, i64* %518, align 1, !tbaa !2452
  store double 0.000000e+00, double* %520, align 1, !tbaa !2452
  %1640 = add i64 %1634, -8
  %1641 = add i64 %1636, 12
  store i64 %1641, i64* %PC, align 8
  %1642 = inttoptr i64 %1640 to i64*
  %1643 = load i64, i64* %1642, align 8
  store i64 %1643, i64* %RCX, align 8, !tbaa !2428
  %1644 = add i64 %1634, -80
  %1645 = add i64 %1636, 15
  store i64 %1645, i64* %PC, align 8
  %1646 = inttoptr i64 %1644 to i32*
  %1647 = load i32, i32* %1646, align 4
  %1648 = add i32 %1647, 1
  %1649 = zext i32 %1648 to i64
  store i64 %1649, i64* %RAX, align 8, !tbaa !2428
  %1650 = icmp eq i32 %1647, -1
  %1651 = icmp eq i32 %1648, 0
  %1652 = or i1 %1650, %1651
  %1653 = zext i1 %1652 to i8
  store i8 %1653, i8* %17, align 1, !tbaa !2433
  %1654 = and i32 %1648, 255
  %1655 = tail call i32 @llvm.ctpop.i32(i32 %1654) #10
  %1656 = trunc i32 %1655 to i8
  %1657 = and i8 %1656, 1
  %1658 = xor i8 %1657, 1
  store i8 %1658, i8* %24, align 1, !tbaa !2447
  %1659 = xor i32 %1648, %1647
  %1660 = lshr i32 %1659, 4
  %1661 = trunc i32 %1660 to i8
  %1662 = and i8 %1661, 1
  store i8 %1662, i8* %29, align 1, !tbaa !2451
  %1663 = zext i1 %1651 to i8
  store i8 %1663, i8* %32, align 1, !tbaa !2448
  %1664 = lshr i32 %1648, 31
  %1665 = trunc i32 %1664 to i8
  store i8 %1665, i8* %35, align 1, !tbaa !2449
  %1666 = lshr i32 %1647, 31
  %1667 = xor i32 %1664, %1666
  %1668 = add nuw nsw i32 %1667, %1664
  %1669 = icmp eq i32 %1668, 2
  %1670 = zext i1 %1669 to i8
  store i8 %1670, i8* %41, align 1, !tbaa !2450
  %1671 = sext i32 %1648 to i64
  store i64 %1671, i64* %RDX, align 8, !tbaa !2428
  %1672 = shl nsw i64 %1671, 3
  %1673 = add i64 %1643, %1672
  %1674 = add i64 %1636, 26
  store i64 %1674, i64* %PC, align 8
  %1675 = bitcast i64 %1639 to double
  %1676 = inttoptr i64 %1673 to double*
  %1677 = load double, double* %1676, align 8
  %1678 = fmul double %1675, %1677
  store double %1678, double* %547, align 1, !tbaa !2452
  store i64 0, i64* %519, align 1, !tbaa !2452
  %1679 = add i64 %1634, -128
  %1680 = add i64 %1636, 31
  store i64 %1680, i64* %PC, align 8
  %1681 = inttoptr i64 %1679 to i64*
  %1682 = load i64, i64* %1681, align 8
  store i64 %1682, i64* %529, align 1, !tbaa !2452
  store double 0.000000e+00, double* %531, align 1, !tbaa !2452
  %1683 = add i64 %1636, 35
  store i64 %1683, i64* %PC, align 8
  %1684 = load i64, i64* %1642, align 8
  store i64 %1684, i64* %RCX, align 8, !tbaa !2428
  %1685 = add i64 %1636, 39
  store i64 %1685, i64* %PC, align 8
  %1686 = load i32, i32* %1646, align 4
  %1687 = sext i32 %1686 to i64
  store i64 %1687, i64* %RDX, align 8, !tbaa !2428
  %1688 = shl nsw i64 %1687, 3
  %1689 = add i64 %1688, %1684
  %1690 = add i64 %1636, 44
  store i64 %1690, i64* %PC, align 8
  %1691 = bitcast i64 %1682 to double
  %1692 = inttoptr i64 %1689 to double*
  %1693 = load double, double* %1692, align 8
  %1694 = fmul double %1691, %1693
  store double %1694, double* %528, align 1, !tbaa !2452
  store i64 0, i64* %530, align 1, !tbaa !2452
  %1695 = fadd double %1678, %1694
  store double %1695, double* %547, align 1, !tbaa !2452
  store i64 0, i64* %519, align 1, !tbaa !2452
  %1696 = load i64, i64* %RBP, align 8
  %1697 = add i64 %1696, -104
  %1698 = add i64 %1636, 53
  store i64 %1698, i64* %PC, align 8
  %1699 = inttoptr i64 %1697 to double*
  store double %1695, double* %1699, align 8
  %1700 = load i64, i64* %RBP, align 8
  %1701 = add i64 %1700, -8
  %1702 = load i64, i64* %PC, align 8
  %1703 = add i64 %1702, 4
  store i64 %1703, i64* %PC, align 8
  %1704 = inttoptr i64 %1701 to i64*
  %1705 = load i64, i64* %1704, align 8
  store i64 %1705, i64* %RCX, align 8, !tbaa !2428
  %1706 = add i64 %1700, -76
  %1707 = add i64 %1702, 8
  store i64 %1707, i64* %PC, align 8
  %1708 = inttoptr i64 %1706 to i32*
  %1709 = load i32, i32* %1708, align 4
  %1710 = sext i32 %1709 to i64
  store i64 %1710, i64* %RDX, align 8, !tbaa !2428
  %1711 = shl nsw i64 %1710, 3
  %1712 = add i64 %1711, %1705
  %1713 = add i64 %1702, 13
  store i64 %1713, i64* %PC, align 8
  %1714 = inttoptr i64 %1712 to i64*
  %1715 = load i64, i64* %1714, align 8
  store i64 %1715, i64* %518, align 1, !tbaa !2452
  store double 0.000000e+00, double* %520, align 1, !tbaa !2452
  %1716 = add i64 %1700, -112
  %1717 = add i64 %1702, 18
  store i64 %1717, i64* %PC, align 8
  %1718 = bitcast i64 %1715 to double
  %1719 = inttoptr i64 %1716 to double*
  %1720 = load double, double* %1719, align 8
  %1721 = fsub double %1718, %1720
  store double %1721, double* %547, align 1, !tbaa !2452
  store i64 0, i64* %519, align 1, !tbaa !2452
  %1722 = add i64 %1702, 22
  store i64 %1722, i64* %PC, align 8
  %1723 = load i64, i64* %1704, align 8
  store i64 %1723, i64* %RCX, align 8, !tbaa !2428
  %1724 = add i64 %1700, -80
  %1725 = add i64 %1702, 26
  store i64 %1725, i64* %PC, align 8
  %1726 = inttoptr i64 %1724 to i32*
  %1727 = load i32, i32* %1726, align 4
  %1728 = sext i32 %1727 to i64
  store i64 %1728, i64* %RDX, align 8, !tbaa !2428
  %1729 = shl nsw i64 %1728, 3
  %1730 = add i64 %1729, %1723
  %1731 = add i64 %1702, 31
  store i64 %1731, i64* %PC, align 8
  %1732 = inttoptr i64 %1730 to double*
  store double %1721, double* %1732, align 8
  %1733 = load i64, i64* %RBP, align 8
  %1734 = add i64 %1733, -8
  %1735 = load i64, i64* %PC, align 8
  %1736 = add i64 %1735, 4
  store i64 %1736, i64* %PC, align 8
  %1737 = inttoptr i64 %1734 to i64*
  %1738 = load i64, i64* %1737, align 8
  store i64 %1738, i64* %RCX, align 8, !tbaa !2428
  %1739 = add i64 %1733, -76
  %1740 = add i64 %1735, 7
  store i64 %1740, i64* %PC, align 8
  %1741 = inttoptr i64 %1739 to i32*
  %1742 = load i32, i32* %1741, align 4
  %1743 = add i32 %1742, 1
  %1744 = zext i32 %1743 to i64
  store i64 %1744, i64* %RAX, align 8, !tbaa !2428
  %1745 = icmp eq i32 %1742, -1
  %1746 = icmp eq i32 %1743, 0
  %1747 = or i1 %1745, %1746
  %1748 = zext i1 %1747 to i8
  store i8 %1748, i8* %17, align 1, !tbaa !2433
  %1749 = and i32 %1743, 255
  %1750 = tail call i32 @llvm.ctpop.i32(i32 %1749) #10
  %1751 = trunc i32 %1750 to i8
  %1752 = and i8 %1751, 1
  %1753 = xor i8 %1752, 1
  store i8 %1753, i8* %24, align 1, !tbaa !2447
  %1754 = xor i32 %1743, %1742
  %1755 = lshr i32 %1754, 4
  %1756 = trunc i32 %1755 to i8
  %1757 = and i8 %1756, 1
  store i8 %1757, i8* %29, align 1, !tbaa !2451
  %1758 = zext i1 %1746 to i8
  store i8 %1758, i8* %32, align 1, !tbaa !2448
  %1759 = lshr i32 %1743, 31
  %1760 = trunc i32 %1759 to i8
  store i8 %1760, i8* %35, align 1, !tbaa !2449
  %1761 = lshr i32 %1742, 31
  %1762 = xor i32 %1759, %1761
  %1763 = add nuw nsw i32 %1762, %1759
  %1764 = icmp eq i32 %1763, 2
  %1765 = zext i1 %1764 to i8
  store i8 %1765, i8* %41, align 1, !tbaa !2450
  %1766 = sext i32 %1743 to i64
  store i64 %1766, i64* %RDX, align 8, !tbaa !2428
  %1767 = shl nsw i64 %1766, 3
  %1768 = add i64 %1738, %1767
  %1769 = add i64 %1735, 18
  store i64 %1769, i64* %PC, align 8
  %1770 = inttoptr i64 %1768 to i64*
  %1771 = load i64, i64* %1770, align 8
  store i64 %1771, i64* %518, align 1, !tbaa !2452
  store double 0.000000e+00, double* %520, align 1, !tbaa !2452
  %1772 = add i64 %1733, -104
  %1773 = add i64 %1735, 23
  store i64 %1773, i64* %PC, align 8
  %1774 = bitcast i64 %1771 to double
  %1775 = inttoptr i64 %1772 to double*
  %1776 = load double, double* %1775, align 8
  %1777 = fsub double %1774, %1776
  store double %1777, double* %547, align 1, !tbaa !2452
  store i64 0, i64* %519, align 1, !tbaa !2452
  %1778 = add i64 %1735, 27
  store i64 %1778, i64* %PC, align 8
  %1779 = load i64, i64* %1737, align 8
  store i64 %1779, i64* %RCX, align 8, !tbaa !2428
  %1780 = add i64 %1733, -80
  %1781 = add i64 %1735, 30
  store i64 %1781, i64* %PC, align 8
  %1782 = inttoptr i64 %1780 to i32*
  %1783 = load i32, i32* %1782, align 4
  %1784 = add i32 %1783, 1
  %1785 = zext i32 %1784 to i64
  store i64 %1785, i64* %RAX, align 8, !tbaa !2428
  %1786 = icmp eq i32 %1783, -1
  %1787 = icmp eq i32 %1784, 0
  %1788 = or i1 %1786, %1787
  %1789 = zext i1 %1788 to i8
  store i8 %1789, i8* %17, align 1, !tbaa !2433
  %1790 = and i32 %1784, 255
  %1791 = tail call i32 @llvm.ctpop.i32(i32 %1790) #10
  %1792 = trunc i32 %1791 to i8
  %1793 = and i8 %1792, 1
  %1794 = xor i8 %1793, 1
  store i8 %1794, i8* %24, align 1, !tbaa !2447
  %1795 = xor i32 %1784, %1783
  %1796 = lshr i32 %1795, 4
  %1797 = trunc i32 %1796 to i8
  %1798 = and i8 %1797, 1
  store i8 %1798, i8* %29, align 1, !tbaa !2451
  %1799 = zext i1 %1787 to i8
  store i8 %1799, i8* %32, align 1, !tbaa !2448
  %1800 = lshr i32 %1784, 31
  %1801 = trunc i32 %1800 to i8
  store i8 %1801, i8* %35, align 1, !tbaa !2449
  %1802 = lshr i32 %1783, 31
  %1803 = xor i32 %1800, %1802
  %1804 = add nuw nsw i32 %1803, %1800
  %1805 = icmp eq i32 %1804, 2
  %1806 = zext i1 %1805 to i8
  store i8 %1806, i8* %41, align 1, !tbaa !2450
  %1807 = sext i32 %1784 to i64
  store i64 %1807, i64* %RDX, align 8, !tbaa !2428
  %1808 = shl nsw i64 %1807, 3
  %1809 = add i64 %1779, %1808
  %1810 = add i64 %1735, 41
  store i64 %1810, i64* %PC, align 8
  %1811 = inttoptr i64 %1809 to double*
  store double %1777, double* %1811, align 8
  %1812 = load i64, i64* %RBP, align 8
  %1813 = add i64 %1812, -112
  %1814 = load i64, i64* %PC, align 8
  %1815 = add i64 %1814, 5
  store i64 %1815, i64* %PC, align 8
  %1816 = inttoptr i64 %1813 to i64*
  %1817 = load i64, i64* %1816, align 8
  store i64 %1817, i64* %518, align 1, !tbaa !2452
  store double 0.000000e+00, double* %520, align 1, !tbaa !2452
  %1818 = add i64 %1812, -8
  %1819 = add i64 %1814, 9
  store i64 %1819, i64* %PC, align 8
  %1820 = inttoptr i64 %1818 to i64*
  %1821 = load i64, i64* %1820, align 8
  store i64 %1821, i64* %RCX, align 8, !tbaa !2428
  %1822 = add i64 %1812, -76
  %1823 = add i64 %1814, 13
  store i64 %1823, i64* %PC, align 8
  %1824 = inttoptr i64 %1822 to i32*
  %1825 = load i32, i32* %1824, align 4
  %1826 = sext i32 %1825 to i64
  store i64 %1826, i64* %RDX, align 8, !tbaa !2428
  %1827 = shl nsw i64 %1826, 3
  %1828 = add i64 %1827, %1821
  %1829 = add i64 %1814, 18
  store i64 %1829, i64* %PC, align 8
  %1830 = bitcast i64 %1817 to double
  %1831 = inttoptr i64 %1828 to double*
  %1832 = load double, double* %1831, align 8
  %1833 = fadd double %1830, %1832
  store double %1833, double* %547, align 1, !tbaa !2452
  store i64 0, i64* %519, align 1, !tbaa !2452
  %1834 = add i64 %1814, 23
  store i64 %1834, i64* %PC, align 8
  %1835 = inttoptr i64 %1828 to double*
  store double %1833, double* %1835, align 8
  %1836 = load i64, i64* %RBP, align 8
  %1837 = add i64 %1836, -104
  %1838 = load i64, i64* %PC, align 8
  %1839 = add i64 %1838, 5
  store i64 %1839, i64* %PC, align 8
  %1840 = inttoptr i64 %1837 to i64*
  %1841 = load i64, i64* %1840, align 8
  store i64 %1841, i64* %518, align 1, !tbaa !2452
  store double 0.000000e+00, double* %520, align 1, !tbaa !2452
  %1842 = add i64 %1836, -8
  %1843 = add i64 %1838, 9
  store i64 %1843, i64* %PC, align 8
  %1844 = inttoptr i64 %1842 to i64*
  %1845 = load i64, i64* %1844, align 8
  store i64 %1845, i64* %RCX, align 8, !tbaa !2428
  %1846 = add i64 %1836, -76
  %1847 = add i64 %1838, 12
  store i64 %1847, i64* %PC, align 8
  %1848 = inttoptr i64 %1846 to i32*
  %1849 = load i32, i32* %1848, align 4
  %1850 = add i32 %1849, 1
  %1851 = zext i32 %1850 to i64
  store i64 %1851, i64* %RAX, align 8, !tbaa !2428
  %1852 = icmp eq i32 %1849, -1
  %1853 = icmp eq i32 %1850, 0
  %1854 = or i1 %1852, %1853
  %1855 = zext i1 %1854 to i8
  store i8 %1855, i8* %17, align 1, !tbaa !2433
  %1856 = and i32 %1850, 255
  %1857 = tail call i32 @llvm.ctpop.i32(i32 %1856) #10
  %1858 = trunc i32 %1857 to i8
  %1859 = and i8 %1858, 1
  %1860 = xor i8 %1859, 1
  store i8 %1860, i8* %24, align 1, !tbaa !2447
  %1861 = xor i32 %1850, %1849
  %1862 = lshr i32 %1861, 4
  %1863 = trunc i32 %1862 to i8
  %1864 = and i8 %1863, 1
  store i8 %1864, i8* %29, align 1, !tbaa !2451
  %1865 = zext i1 %1853 to i8
  store i8 %1865, i8* %32, align 1, !tbaa !2448
  %1866 = lshr i32 %1850, 31
  %1867 = trunc i32 %1866 to i8
  store i8 %1867, i8* %35, align 1, !tbaa !2449
  %1868 = lshr i32 %1849, 31
  %1869 = xor i32 %1866, %1868
  %1870 = add nuw nsw i32 %1869, %1866
  %1871 = icmp eq i32 %1870, 2
  %1872 = zext i1 %1871 to i8
  store i8 %1872, i8* %41, align 1, !tbaa !2450
  %1873 = sext i32 %1850 to i64
  store i64 %1873, i64* %RDX, align 8, !tbaa !2428
  %1874 = shl nsw i64 %1873, 3
  %1875 = add i64 %1845, %1874
  %1876 = add i64 %1838, 23
  store i64 %1876, i64* %PC, align 8
  %1877 = bitcast i64 %1841 to double
  %1878 = inttoptr i64 %1875 to double*
  %1879 = load double, double* %1878, align 8
  %1880 = fadd double %1877, %1879
  store double %1880, double* %547, align 1, !tbaa !2452
  store i64 0, i64* %519, align 1, !tbaa !2452
  %1881 = add i64 %1838, 28
  store i64 %1881, i64* %PC, align 8
  %1882 = inttoptr i64 %1875 to double*
  store double %1880, double* %1882, align 8
  %1883 = load i64, i64* %RBP, align 8
  %1884 = add i64 %1883, -64
  %1885 = load i64, i64* %PC, align 8
  %1886 = add i64 %1885, 3
  store i64 %1886, i64* %PC, align 8
  %1887 = inttoptr i64 %1884 to i32*
  %1888 = load i32, i32* %1887, align 4
  %1889 = zext i32 %1888 to i64
  store i64 %1889, i64* %RAX, align 8, !tbaa !2428
  %1890 = add i64 %1883, -32
  %1891 = add i64 %1885, 6
  store i64 %1891, i64* %PC, align 8
  %1892 = inttoptr i64 %1890 to i32*
  %1893 = load i32, i32* %1892, align 4
  %1894 = add i32 %1893, %1888
  %1895 = zext i32 %1894 to i64
  store i64 %1895, i64* %RAX, align 8, !tbaa !2428
  %1896 = icmp ult i32 %1894, %1888
  %1897 = icmp ult i32 %1894, %1893
  %1898 = or i1 %1896, %1897
  %1899 = zext i1 %1898 to i8
  store i8 %1899, i8* %17, align 1, !tbaa !2433
  %1900 = and i32 %1894, 255
  %1901 = tail call i32 @llvm.ctpop.i32(i32 %1900) #10
  %1902 = trunc i32 %1901 to i8
  %1903 = and i8 %1902, 1
  %1904 = xor i8 %1903, 1
  store i8 %1904, i8* %24, align 1, !tbaa !2447
  %1905 = xor i32 %1893, %1888
  %1906 = xor i32 %1905, %1894
  %1907 = lshr i32 %1906, 4
  %1908 = trunc i32 %1907 to i8
  %1909 = and i8 %1908, 1
  store i8 %1909, i8* %29, align 1, !tbaa !2451
  %1910 = icmp eq i32 %1894, 0
  %1911 = zext i1 %1910 to i8
  store i8 %1911, i8* %32, align 1, !tbaa !2448
  %1912 = lshr i32 %1894, 31
  %1913 = trunc i32 %1912 to i8
  store i8 %1913, i8* %35, align 1, !tbaa !2449
  %1914 = lshr i32 %1888, 31
  %1915 = lshr i32 %1893, 31
  %1916 = xor i32 %1912, %1914
  %1917 = xor i32 %1912, %1915
  %1918 = add nuw nsw i32 %1916, %1917
  %1919 = icmp eq i32 %1918, 2
  %1920 = zext i1 %1919 to i8
  store i8 %1920, i8* %41, align 1, !tbaa !2450
  %1921 = add i64 %1885, 9
  store i64 %1921, i64* %PC, align 8
  store i32 %1894, i32* %1892, align 4
  %1922 = load i64, i64* %PC, align 8
  %1923 = add i64 %1922, -265
  store i64 %1923, i64* %PC, align 8, !tbaa !2428
  br label %block_400ea0

block_400d0d:                                     ; preds = %block_400c57
  %1924 = add i64 %554, -28
  %1925 = add i64 %590, 8
  store i64 %1925, i64* %PC, align 8
  %1926 = inttoptr i64 %1924 to i32*
  %1927 = load i32, i32* %1926, align 4
  %1928 = add i32 %1927, 2
  %1929 = zext i32 %1928 to i64
  store i64 %1929, i64* %RAX, align 8, !tbaa !2428
  %1930 = icmp ugt i32 %1927, -3
  %1931 = zext i1 %1930 to i8
  store i8 %1931, i8* %17, align 1, !tbaa !2433
  %1932 = and i32 %1928, 255
  %1933 = tail call i32 @llvm.ctpop.i32(i32 %1932) #10
  %1934 = trunc i32 %1933 to i8
  %1935 = and i8 %1934, 1
  %1936 = xor i8 %1935, 1
  store i8 %1936, i8* %24, align 1, !tbaa !2447
  %1937 = xor i32 %1928, %1927
  %1938 = lshr i32 %1937, 4
  %1939 = trunc i32 %1938 to i8
  %1940 = and i8 %1939, 1
  store i8 %1940, i8* %29, align 1, !tbaa !2451
  %1941 = icmp eq i32 %1928, 0
  %1942 = zext i1 %1941 to i8
  store i8 %1942, i8* %32, align 1, !tbaa !2448
  %1943 = lshr i32 %1928, 31
  %1944 = trunc i32 %1943 to i8
  store i8 %1944, i8* %35, align 1, !tbaa !2449
  %1945 = lshr i32 %1927, 31
  %1946 = xor i32 %1943, %1945
  %1947 = add nuw nsw i32 %1946, %1943
  %1948 = icmp eq i32 %1947, 2
  %1949 = zext i1 %1948 to i8
  store i8 %1949, i8* %41, align 1, !tbaa !2450
  %1950 = add i64 %590, 14
  store i64 %1950, i64* %PC, align 8
  store i32 %1928, i32* %1926, align 4
  %1951 = load i64, i64* %PC, align 8
  %1952 = add i64 %1951, -222
  store i64 %1952, i64* %PC, align 8, !tbaa !2428
  br label %block_400c3d

block_400c2b:                                     ; preds = %block_400c1f
  %1953 = add i64 %2100, 3
  store i64 %1953, i64* %PC, align 8
  %1954 = load i32, i32* %2067, align 4
  %1955 = zext i32 %1954 to i64
  store i64 %1955, i64* %RAX, align 8, !tbaa !2428
  %1956 = add i64 %2064, -40
  %1957 = add i64 %2100, 6
  store i64 %1957, i64* %PC, align 8
  %1958 = inttoptr i64 %1956 to i32*
  %1959 = load i32, i32* %1958, align 4
  %1960 = sub i32 %1954, %1959
  %1961 = icmp ult i32 %1954, %1959
  %1962 = zext i1 %1961 to i8
  store i8 %1962, i8* %17, align 1, !tbaa !2433
  %1963 = and i32 %1960, 255
  %1964 = tail call i32 @llvm.ctpop.i32(i32 %1963) #10
  %1965 = trunc i32 %1964 to i8
  %1966 = and i8 %1965, 1
  %1967 = xor i8 %1966, 1
  store i8 %1967, i8* %24, align 1, !tbaa !2447
  %1968 = xor i32 %1959, %1954
  %1969 = xor i32 %1968, %1960
  %1970 = lshr i32 %1969, 4
  %1971 = trunc i32 %1970 to i8
  %1972 = and i8 %1971, 1
  store i8 %1972, i8* %29, align 1, !tbaa !2451
  %1973 = icmp eq i32 %1960, 0
  %1974 = zext i1 %1973 to i8
  store i8 %1974, i8* %32, align 1, !tbaa !2448
  %1975 = lshr i32 %1960, 31
  %1976 = trunc i32 %1975 to i8
  store i8 %1976, i8* %35, align 1, !tbaa !2449
  %1977 = lshr i32 %1954, 31
  %1978 = lshr i32 %1959, 31
  %1979 = xor i32 %1978, %1977
  %1980 = xor i32 %1975, %1977
  %1981 = add nuw nsw i32 %1980, %1979
  %1982 = icmp eq i32 %1981, 2
  %1983 = zext i1 %1982 to i8
  store i8 %1983, i8* %41, align 1, !tbaa !2450
  %1984 = icmp ne i8 %1976, 0
  %1985 = xor i1 %1984, %1982
  %.v128 = select i1 %1985, i64 12, i64 250
  %1986 = add i64 %2100, %.v128
  store i64 %1986, i64* %PC, align 8, !tbaa !2428
  br i1 %1985, label %block_400c37, label %block_400d25

block_400d9c:                                     ; preds = %block_400d96, %block_401033
  %1987 = phi i64 [ %.pre104, %block_400d96 ], [ %921, %block_401033 ]
  %MEMORY.8 = phi %struct.Memory* [ %1419, %block_400d96 ], [ %1164, %block_401033 ]
  %1988 = load i64, i64* %RBP, align 8
  %1989 = add i64 %1988, -60
  %1990 = add i64 %1987, 3
  store i64 %1990, i64* %PC, align 8
  %1991 = inttoptr i64 %1989 to i32*
  %1992 = load i32, i32* %1991, align 4
  %1993 = zext i32 %1992 to i64
  store i64 %1993, i64* %RAX, align 8, !tbaa !2428
  %1994 = add i64 %1988, -52
  %1995 = add i64 %1987, 6
  store i64 %1995, i64* %PC, align 8
  %1996 = inttoptr i64 %1994 to i32*
  %1997 = load i32, i32* %1996, align 4
  %1998 = sub i32 %1992, %1997
  %1999 = icmp ult i32 %1992, %1997
  %2000 = zext i1 %1999 to i8
  store i8 %2000, i8* %17, align 1, !tbaa !2433
  %2001 = and i32 %1998, 255
  %2002 = tail call i32 @llvm.ctpop.i32(i32 %2001) #10
  %2003 = trunc i32 %2002 to i8
  %2004 = and i8 %2003, 1
  %2005 = xor i8 %2004, 1
  store i8 %2005, i8* %24, align 1, !tbaa !2447
  %2006 = xor i32 %1997, %1992
  %2007 = xor i32 %2006, %1998
  %2008 = lshr i32 %2007, 4
  %2009 = trunc i32 %2008 to i8
  %2010 = and i8 %2009, 1
  store i8 %2010, i8* %29, align 1, !tbaa !2451
  %2011 = icmp eq i32 %1998, 0
  %2012 = zext i1 %2011 to i8
  store i8 %2012, i8* %32, align 1, !tbaa !2448
  %2013 = lshr i32 %1998, 31
  %2014 = trunc i32 %2013 to i8
  store i8 %2014, i8* %35, align 1, !tbaa !2449
  %2015 = lshr i32 %1992, 31
  %2016 = lshr i32 %1997, 31
  %2017 = xor i32 %2016, %2015
  %2018 = xor i32 %2013, %2015
  %2019 = add nuw nsw i32 %2018, %2017
  %2020 = icmp eq i32 %2019, 2
  %2021 = zext i1 %2020 to i8
  store i8 %2021, i8* %41, align 1, !tbaa !2450
  %2022 = icmp ne i8 %2014, 0
  %2023 = xor i1 %2022, %2020
  %.v125 = select i1 %2023, i64 12, i64 674
  %2024 = add i64 %1987, %.v125
  store i64 %2024, i64* %PC, align 8, !tbaa !2428
  br i1 %2023, label %block_400da8, label %block_40103e

block_400b87:                                     ; preds = %block_400b93, %block_400b60
  %2025 = phi i64 [ %1338, %block_400b93 ], [ %.pre, %block_400b60 ]
  %2026 = load i64, i64* %RBP, align 8
  %2027 = add i64 %2026, -72
  %2028 = add i64 %2025, 3
  store i64 %2028, i64* %PC, align 8
  %2029 = inttoptr i64 %2027 to i32*
  %2030 = load i32, i32* %2029, align 4
  %2031 = zext i32 %2030 to i64
  store i64 %2031, i64* %RAX, align 8, !tbaa !2428
  %2032 = add i64 %2026, -20
  %2033 = add i64 %2025, 6
  store i64 %2033, i64* %PC, align 8
  %2034 = inttoptr i64 %2032 to i32*
  %2035 = load i32, i32* %2034, align 4
  %2036 = sub i32 %2030, %2035
  %2037 = icmp ult i32 %2030, %2035
  %2038 = zext i1 %2037 to i8
  store i8 %2038, i8* %17, align 1, !tbaa !2433
  %2039 = and i32 %2036, 255
  %2040 = tail call i32 @llvm.ctpop.i32(i32 %2039) #10
  %2041 = trunc i32 %2040 to i8
  %2042 = and i8 %2041, 1
  %2043 = xor i8 %2042, 1
  store i8 %2043, i8* %24, align 1, !tbaa !2447
  %2044 = xor i32 %2035, %2030
  %2045 = xor i32 %2044, %2036
  %2046 = lshr i32 %2045, 4
  %2047 = trunc i32 %2046 to i8
  %2048 = and i8 %2047, 1
  store i8 %2048, i8* %29, align 1, !tbaa !2451
  %2049 = icmp eq i32 %2036, 0
  %2050 = zext i1 %2049 to i8
  store i8 %2050, i8* %32, align 1, !tbaa !2448
  %2051 = lshr i32 %2036, 31
  %2052 = trunc i32 %2051 to i8
  store i8 %2052, i8* %35, align 1, !tbaa !2449
  %2053 = lshr i32 %2030, 31
  %2054 = lshr i32 %2035, 31
  %2055 = xor i32 %2054, %2053
  %2056 = xor i32 %2051, %2053
  %2057 = add nuw nsw i32 %2056, %2055
  %2058 = icmp eq i32 %2057, 2
  %2059 = zext i1 %2058 to i8
  store i8 %2059, i8* %41, align 1, !tbaa !2450
  %2060 = icmp ne i8 %2052, 0
  %2061 = xor i1 %2060, %2058
  %.demorgan = or i1 %2049, %2061
  %.v122 = select i1 %.demorgan, i64 12, i64 44
  %2062 = add i64 %2025, %.v122
  store i64 %2062, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400b93, label %block_400bb3

block_400c1f:                                     ; preds = %block_400d61, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %2063 = phi i64 [ %2224, %block_400d61 ], [ %.pre98, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %2064 = load i64, i64* %RBP, align 8
  %2065 = add i64 %2064, -32
  %2066 = add i64 %2063, 3
  store i64 %2066, i64* %PC, align 8
  %2067 = inttoptr i64 %2065 to i32*
  %2068 = load i32, i32* %2067, align 4
  %2069 = zext i32 %2068 to i64
  store i64 %2069, i64* %RAX, align 8, !tbaa !2428
  %2070 = add i64 %2064, -52
  %2071 = add i64 %2063, 6
  store i64 %2071, i64* %PC, align 8
  %2072 = inttoptr i64 %2070 to i32*
  %2073 = load i32, i32* %2072, align 4
  %2074 = sub i32 %2068, %2073
  %2075 = icmp ult i32 %2068, %2073
  %2076 = zext i1 %2075 to i8
  store i8 %2076, i8* %17, align 1, !tbaa !2433
  %2077 = and i32 %2074, 255
  %2078 = tail call i32 @llvm.ctpop.i32(i32 %2077) #10
  %2079 = trunc i32 %2078 to i8
  %2080 = and i8 %2079, 1
  %2081 = xor i8 %2080, 1
  store i8 %2081, i8* %24, align 1, !tbaa !2447
  %2082 = xor i32 %2073, %2068
  %2083 = xor i32 %2082, %2074
  %2084 = lshr i32 %2083, 4
  %2085 = trunc i32 %2084 to i8
  %2086 = and i8 %2085, 1
  store i8 %2086, i8* %29, align 1, !tbaa !2451
  %2087 = icmp eq i32 %2074, 0
  %2088 = zext i1 %2087 to i8
  store i8 %2088, i8* %32, align 1, !tbaa !2448
  %2089 = lshr i32 %2074, 31
  %2090 = trunc i32 %2089 to i8
  store i8 %2090, i8* %35, align 1, !tbaa !2449
  %2091 = lshr i32 %2068, 31
  %2092 = lshr i32 %2073, 31
  %2093 = xor i32 %2092, %2091
  %2094 = xor i32 %2089, %2091
  %2095 = add nuw nsw i32 %2094, %2093
  %2096 = icmp eq i32 %2095, 2
  %2097 = zext i1 %2096 to i8
  store i8 %2097, i8* %41, align 1, !tbaa !2450
  %2098 = icmp ne i8 %2090, 0
  %2099 = xor i1 %2098, %2096
  %.demorgan113 = or i1 %2087, %2099
  %.v124 = select i1 %.demorgan113, i64 12, i64 375
  %2100 = add i64 %2063, %.v124
  store i64 %2100, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan113, label %block_400c2b, label %block_400d96

block_400e86:                                     ; preds = %block_400e80, %block_400fae
  %2101 = phi i64 [ %.pre111, %block_400e80 ], [ %959, %block_400fae ]
  %2102 = load i64, i64* %RBP, align 8
  %2103 = add i64 %2102, -28
  %2104 = add i64 %2101, 3
  store i64 %2104, i64* %PC, align 8
  %2105 = inttoptr i64 %2103 to i32*
  %2106 = load i32, i32* %2105, align 4
  %2107 = zext i32 %2106 to i64
  store i64 %2107, i64* %RAX, align 8, !tbaa !2428
  %2108 = add i64 %2102, -36
  %2109 = add i64 %2101, 6
  store i64 %2109, i64* %PC, align 8
  %2110 = inttoptr i64 %2108 to i32*
  %2111 = load i32, i32* %2110, align 4
  %2112 = zext i32 %2111 to i64
  store i64 %2112, i64* %RCX, align 8, !tbaa !2428
  %2113 = add i64 %2102, -48
  %2114 = add i64 %2101, 9
  store i64 %2114, i64* %PC, align 8
  %2115 = inttoptr i64 %2113 to i32*
  %2116 = load i32, i32* %2115, align 4
  %2117 = add i32 %2116, %2111
  %2118 = add i32 %2117, -2
  %2119 = zext i32 %2118 to i64
  store i64 %2119, i64* %RCX, align 8, !tbaa !2428
  %2120 = lshr i32 %2118, 31
  %2121 = sub i32 %2106, %2118
  %2122 = icmp ult i32 %2106, %2118
  %2123 = zext i1 %2122 to i8
  store i8 %2123, i8* %17, align 1, !tbaa !2433
  %2124 = and i32 %2121, 255
  %2125 = tail call i32 @llvm.ctpop.i32(i32 %2124) #10
  %2126 = trunc i32 %2125 to i8
  %2127 = and i8 %2126, 1
  %2128 = xor i8 %2127, 1
  store i8 %2128, i8* %24, align 1, !tbaa !2447
  %2129 = xor i32 %2118, %2106
  %2130 = xor i32 %2129, %2121
  %2131 = lshr i32 %2130, 4
  %2132 = trunc i32 %2131 to i8
  %2133 = and i8 %2132, 1
  store i8 %2133, i8* %29, align 1, !tbaa !2451
  %2134 = icmp eq i32 %2121, 0
  %2135 = zext i1 %2134 to i8
  store i8 %2135, i8* %32, align 1, !tbaa !2448
  %2136 = lshr i32 %2121, 31
  %2137 = trunc i32 %2136 to i8
  store i8 %2137, i8* %35, align 1, !tbaa !2449
  %2138 = lshr i32 %2106, 31
  %2139 = xor i32 %2120, %2138
  %2140 = xor i32 %2136, %2138
  %2141 = add nuw nsw i32 %2140, %2139
  %2142 = icmp eq i32 %2141, 2
  %2143 = zext i1 %2142 to i8
  store i8 %2143, i8* %41, align 1, !tbaa !2450
  %2144 = icmp ne i8 %2137, 0
  %2145 = xor i1 %2144, %2142
  %.demorgan119 = or i1 %2134, %2145
  %.v127 = select i1 %.demorgan119, i64 20, i64 315
  %2146 = add i64 %2101, %.v127
  store i64 %2146, i64* %PC, align 8, !tbaa !2428
  %2147 = load i64, i64* %RBP, align 8
  br i1 %.demorgan119, label %block_400e9a, label %block_400fc1

block_400d61:                                     ; preds = %block_400d53
  %2148 = add i64 %635, 33
  store i64 %2148, i64* %PC, align 8
  %2149 = inttoptr i64 %636 to i32*
  %2150 = load i32, i32* %2149, align 4
  %2151 = zext i32 %2150 to i64
  store i64 %2151, i64* %RAX, align 8, !tbaa !2428
  %2152 = add i64 %623, -40
  %2153 = add i64 %635, 36
  store i64 %2153, i64* %PC, align 8
  %2154 = inttoptr i64 %2152 to i32*
  %2155 = load i32, i32* %2154, align 4
  %2156 = add i32 %2155, %2150
  %2157 = zext i32 %2156 to i64
  store i64 %2157, i64* %RAX, align 8, !tbaa !2428
  %2158 = icmp ult i32 %2156, %2150
  %2159 = icmp ult i32 %2156, %2155
  %2160 = or i1 %2158, %2159
  %2161 = zext i1 %2160 to i8
  store i8 %2161, i8* %17, align 1, !tbaa !2433
  %2162 = and i32 %2156, 255
  %2163 = tail call i32 @llvm.ctpop.i32(i32 %2162) #10
  %2164 = trunc i32 %2163 to i8
  %2165 = and i8 %2164, 1
  %2166 = xor i8 %2165, 1
  store i8 %2166, i8* %24, align 1, !tbaa !2447
  %2167 = xor i32 %2155, %2150
  %2168 = xor i32 %2167, %2156
  %2169 = lshr i32 %2168, 4
  %2170 = trunc i32 %2169 to i8
  %2171 = and i8 %2170, 1
  store i8 %2171, i8* %29, align 1, !tbaa !2451
  %2172 = icmp eq i32 %2156, 0
  %2173 = zext i1 %2172 to i8
  store i8 %2173, i8* %32, align 1, !tbaa !2448
  %2174 = lshr i32 %2156, 31
  %2175 = trunc i32 %2174 to i8
  store i8 %2175, i8* %35, align 1, !tbaa !2449
  %2176 = lshr i32 %2150, 31
  %2177 = lshr i32 %2155, 31
  %2178 = xor i32 %2174, %2176
  %2179 = xor i32 %2174, %2177
  %2180 = add nuw nsw i32 %2178, %2179
  %2181 = icmp eq i32 %2180, 2
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %41, align 1, !tbaa !2450
  %2183 = add i64 %635, 39
  store i64 %2183, i64* %PC, align 8
  store i32 %2156, i32* %2154, align 4
  %2184 = load i64, i64* %RBP, align 8
  %2185 = add i64 %2184, -48
  %2186 = load i64, i64* %PC, align 8
  %2187 = add i64 %2186, 3
  store i64 %2187, i64* %PC, align 8
  %2188 = inttoptr i64 %2185 to i32*
  %2189 = load i32, i32* %2188, align 4
  %2190 = zext i32 %2189 to i64
  store i64 %2190, i64* %RAX, align 8, !tbaa !2428
  %2191 = add i64 %2184, -32
  %2192 = add i64 %2186, 6
  store i64 %2192, i64* %PC, align 8
  %2193 = inttoptr i64 %2191 to i32*
  %2194 = load i32, i32* %2193, align 4
  %2195 = add i32 %2194, %2189
  %2196 = zext i32 %2195 to i64
  store i64 %2196, i64* %RAX, align 8, !tbaa !2428
  %2197 = icmp ult i32 %2195, %2189
  %2198 = icmp ult i32 %2195, %2194
  %2199 = or i1 %2197, %2198
  %2200 = zext i1 %2199 to i8
  store i8 %2200, i8* %17, align 1, !tbaa !2433
  %2201 = and i32 %2195, 255
  %2202 = tail call i32 @llvm.ctpop.i32(i32 %2201) #10
  %2203 = trunc i32 %2202 to i8
  %2204 = and i8 %2203, 1
  %2205 = xor i8 %2204, 1
  store i8 %2205, i8* %24, align 1, !tbaa !2447
  %2206 = xor i32 %2194, %2189
  %2207 = xor i32 %2206, %2195
  %2208 = lshr i32 %2207, 4
  %2209 = trunc i32 %2208 to i8
  %2210 = and i8 %2209, 1
  store i8 %2210, i8* %29, align 1, !tbaa !2451
  %2211 = icmp eq i32 %2195, 0
  %2212 = zext i1 %2211 to i8
  store i8 %2212, i8* %32, align 1, !tbaa !2448
  %2213 = lshr i32 %2195, 31
  %2214 = trunc i32 %2213 to i8
  store i8 %2214, i8* %35, align 1, !tbaa !2449
  %2215 = lshr i32 %2189, 31
  %2216 = lshr i32 %2194, 31
  %2217 = xor i32 %2213, %2215
  %2218 = xor i32 %2213, %2216
  %2219 = add nuw nsw i32 %2217, %2218
  %2220 = icmp eq i32 %2219, 2
  %2221 = zext i1 %2220 to i8
  store i8 %2221, i8* %41, align 1, !tbaa !2450
  %2222 = add i64 %2186, 9
  store i64 %2222, i64* %PC, align 8
  store i32 %2195, i32* %2193, align 4
  %2223 = load i64, i64* %PC, align 8
  %2224 = add i64 %2223, -370
  store i64 %2224, i64* %PC, align 8, !tbaa !2428
  br label %block_400c1f

block_400e80:                                     ; preds = %block_400e74
  %2225 = add i64 %111, 3
  store i64 %2225, i64* %PC, align 8
  %2226 = load i32, i32* %78, align 4
  %2227 = zext i32 %2226 to i64
  store i64 %2227, i64* %RAX, align 8, !tbaa !2428
  %2228 = add i64 %75, -28
  %2229 = add i64 %111, 6
  store i64 %2229, i64* %PC, align 8
  %2230 = inttoptr i64 %2228 to i32*
  store i32 %2226, i32* %2230, align 4
  %.pre111 = load i64, i64* %PC, align 8
  br label %block_400e86
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4005f0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400618:
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
  store i8 0, i8* %9, align 1, !tbaa !2433
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %10, align 1, !tbaa !2447
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1, !tbaa !2451
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400530__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400530:
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
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2428
  br i1 %18, label %block_400542, label %block_400540

block_400540:                                     ; preds = %block_400530
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400542

block_400542:                                     ; preds = %block_400540, %block_400530
  %27 = phi i64 [ %22, %block_400530 ], [ %.pre1, %block_400540 ]
  %28 = phi i64 [ %4, %block_400530 ], [ %.pre, %block_400540 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400530 ], [ %26, %block_400540 ]
  %29 = add i64 %28, 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  %30 = icmp ugt i64 %28, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %5, align 1, !tbaa !2433
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #10
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

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4010d0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_4010d0:
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
define %struct.Memory* @sub_4005b0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4005b0:
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
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #10
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
  store i64 ptrtoint (void ()* @callback_sub_4010d0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401060___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
define %struct.Memory* @sub_4010d4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_4010d4:
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
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #10
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

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4005e0__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_4005e0:
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
define %struct.Memory* @sub_400620_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400620:
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
  store i8 %21, i8* %11, align 1, !tbaa !2432
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #10
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
  br i1 %29, label %block_400658, label %block_400643

block_400658:                                     ; preds = %block_400643, %block_400620
  %34 = phi i64 [ %44, %block_400643 ], [ %33, %block_400620 ]
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

block_400643:                                     ; preds = %block_400620
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2433
  store i8 1, i8* %12, align 1, !tbaa !2447
  store i8 1, i8* %14, align 1, !tbaa !2448
  store i8 0, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  store i8 0, i8* %13, align 1, !tbaa !2451
  %44 = add i64 %33, 21
  store i64 %44, i64* %PC, align 8, !tbaa !2428
  br label %block_400658
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400660___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400660:
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
  %.v = select i1 %12, i64 9, i64 32
  %18 = add i64 %.v, %1
  store i64 %18, i64* %PC, align 8, !tbaa !2428
  br i1 %12, label %block_400669, label %block_400680

block_400680:                                     ; preds = %block_400660
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

block_400669:                                     ; preds = %block_400660
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
  %36 = tail call %struct.Memory* @sub_4005f0_deregister_tm_clones(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
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
define %struct.Memory* @sub_400690_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400690:
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
  %13 = tail call %struct.Memory* @sub_400620_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #6

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400690_frame_dummy() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400690;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400690_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400690_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400660___do_global_dtors_aux() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400660;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400660___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400660___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020a8_memset(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400570_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602090_malloc(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020d0_exit(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: alwaysinline inlinehint nounwind
define %struct.Memory* @ext_6020c8_sin(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #12 {
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
define internal void @callback_sub_4010d0___libc_csu_fini() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4010d0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_4010d0___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #13 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4010d0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401060___libc_csu_init() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401060;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_401060___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401060___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4006a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4006a0_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020b0___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400530;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400530__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4010d4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.term_proc_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4010d4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_constructor() #10 {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_401060___libc_csu_init()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #10 {
  tail call void @callback_sub_4010d0___libc_csu_fini()
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #14

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline }
attributes #7 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { naked nobuiltin noinline nounwind }
attributes #10 = { nounwind }
attributes #11 = { noinline nounwind }
attributes #12 = { alwaysinline inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { norecurse nounwind }
attributes #14 = { argmemonly nounwind }
attributes #15 = { alwaysinline nobuiltin nounwind }

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
!2458 = distinct !{!2458, !2459, !"ext_6020c8_sin: argument 0"}
!2459 = distinct !{!2459, !"ext_6020c8_sin"}
!2460 = !{!2461}
!2461 = distinct !{!2461, !2459, !"ext_6020c8_sin: argument 1"}
!2462 = !{!2463}
!2463 = distinct !{!2463, !2464, !"ext_6020c8_sin: argument 0"}
!2464 = distinct !{!2464, !"ext_6020c8_sin"}
!2465 = !{!2466}
!2466 = distinct !{!2466, !2464, !"ext_6020c8_sin: argument 1"}
