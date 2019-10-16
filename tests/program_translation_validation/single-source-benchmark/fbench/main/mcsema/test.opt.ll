; ModuleID = 'mcsema/test.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4015e0__rodata_type = type <{ [120 x i8], [54 x i8], [58 x i8], [56 x i8], [60 x i8], [67 x i8], [24 x i8], [13 x i8], [13 x i8], [48 x i8], [48 x i8], [48 x i8], [48 x i8], [33 x i8], [17 x i8], [17 x i8], [13 x i8], [3 x i8], [2 x i8], [48 x i8], [24 x i8], [56 x i8], [56 x i8], [57 x i8], [57 x i8], [57 x i8], [57 x i8], [57 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%niter_type = type <{ [16 x i8], [128 x i8], i64, i64, i64, i64, i64, i64, i64, i64 }>
%__bss_start_type = type <{ [16 x i8], [72 x i8], [8 x i8], [16 x i8], [400 x i8], [8 x i8], [8 x i8], [8 x i8], [24 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [16 x i8], [640 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }>
%itercount_type = type <{ [8 x i8] }>
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
@seg_4015e0__rodata = internal constant %seg_4015e0__rodata_type <{ [120 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\10@sh\91\ED\FC\00\AF@1\08\AC\1Cz\F4\B0@\D3Mb\10X\FD\B2@\DFO\8D\97\8E\95\B4@m\E7\FB\A9\F1\07\B7@\89A`\E5\D0\A2\B9@\AEG\E1z\F4\D5\BA@\00\00\00\00\00\C5\BD@\00\00\00\00\00@\8F@{\14\AEG\E1zd?\82\A0\ED\E2GF\18?\00\00\00\00\00\00\F0?\00\00\00\00\00\00\00@", [54 x i8] c"Ready to begin John Walker's floating point accuracy\0A\00", [58 x i8] c"and performance benchmark.  %d iterations will be made.\0A\0A\00", [56 x i8] c"\0AMeasured run time in seconds should be divided by %.f\0A\00", [60 x i8] c"to normalise for reporting results.  For archival results,\0A\00", [67 x i8] c"adjust iteration count so the benchmark runs about five minutes.\0A\0A\00", [24 x i8] c"%15s   %21.11f  %14.11f\00", [13 x i8] c"Marginal ray\00", [13 x i8] c"Paraxial ray\00", [48 x i8] c"Longitudinal spherical aberration:      %16.11f\00", [48 x i8] c"    (Maximum permissible):              %16.11f\00", [48 x i8] c"Offense against sine condition (coma):  %16.11f\00", [48 x i8] c"Axial chromatic aberration:             %16.11f\00", [33 x i8] c"\0AError in results on line %d...\0A\00", [17 x i8] c"Expected:  \22%s\22\0A\00", [17 x i8] c"Received:  \22%s\22\0A\00", [13 x i8] c"(Errors)    \00", [3 x i8] c"%c\00", [2 x i8] c"s\00", [48 x i8] c"\0A%d error%s in results.  This is VERY SERIOUS.\0A\00", [24 x i8] c"\0ANo errors in results.\0A\00", [56 x i8] c"   Marginal ray          47.09479120920   0.04178472683\00", [56 x i8] c"   Paraxial ray          47.08372160249   0.04177864821\00", [57 x i8] c"Longitudinal spherical aberration:        -0.01106960671\00", [57 x i8] c"    (Maximum permissible):                 0.05306749907\00", [57 x i8] c"Offense against sine condition (coma):     0.00008954761\00", [57 x i8] c"    (Maximum permissible):                 0.00250000000\00", [57 x i8] c"Axial chromatic aberration:                0.00448229032\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400720_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_4006f0___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@niter = global %niter_type <{ [16 x i8] c"\E8\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"\CD\CC\CC\CC\CC\0C;@\80H\BF}\1D8\F8?\CD\CC\CC\CC\CC\CCO@\A4p=\0A\D7\A3\E0?\AEG\E1z\14\AE0\C0\00\00\00\00\00\00\F0?\00\00\00\00\00\00\00\00D\8Bl\E7\FB\A9\C1?\AEG\E1z\14\AE0\C0\06\12\14?\C6\DC\F9?\9A\99\99\99\99YB@R\B8\1E\85\EBQ\D8?fffff\86S\C0\00\00\00\00\00\00\F0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 814), i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 870), i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 926), i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 983), i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 1040), i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 1097), i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 1154), i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 983) }>
@__bss_start = global %__bss_start_type zeroinitializer
@itercount = local_unnamed_addr global %itercount_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400720_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4006f0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4015d0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401560___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare double @cos(double) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare double @sin(double) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare double @tan(double) local_unnamed_addr #2

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
declare extern_weak x86_64_sysvcc i64 @strlen(i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @asin(i64) #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #6

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @sprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #6

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400590__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400590:
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
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #10
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %6, align 1, !tbaa !2446
  %18 = icmp eq i64 %11, 0
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %8, align 1, !tbaa !2447
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !2448
  store i8 0, i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %7, align 1, !tbaa !2450
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2428
  br i1 %18, label %block_4005a2, label %block_4005a0

block_4005a0:                                     ; preds = %block_400590
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_4005a2

block_4005a2:                                     ; preds = %block_4005a0, %block_400590
  %27 = phi i64 [ %22, %block_400590 ], [ %.pre1, %block_4005a0 ]
  %28 = phi i64 [ %4, %block_400590 ], [ %.pre, %block_4005a0 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400590 ], [ %26, %block_4005a0 ]
  %29 = add i64 %28, 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  %30 = icmp ugt i64 %28, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %5, align 1, !tbaa !2432
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #10
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %6, align 1, !tbaa !2446
  %38 = xor i64 %29, %28
  %39 = lshr i64 %38, 4
  %40 = trunc i64 %39 to i8
  %41 = and i8 %40, 1
  store i8 %41, i8* %7, align 1, !tbaa !2450
  %42 = icmp eq i64 %29, 0
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %8, align 1, !tbaa !2447
  %44 = lshr i64 %29, 63
  %45 = trunc i64 %44 to i8
  store i8 %45, i8* %9, align 1, !tbaa !2448
  %46 = lshr i64 %28, 63
  %47 = xor i64 %44, %46
  %48 = add nuw nsw i64 %47, %44
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %10, align 1, !tbaa !2449
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
define %struct.Memory* @sub_400f60_trace_line(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400f60:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %8 = load i64, i64* %RBP, align 8
  %9 = add i64 %1, 1
  store i64 %9, i64* %PC, align 8
  %10 = load i64, i64* %RSP, align 8, !tbaa !2428
  %11 = add i64 %10, -8
  %12 = inttoptr i64 %11 to i64*
  store i64 %8, i64* %12, align 8
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
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19) #10
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
  store i8 %28, i8* %29, align 1, !tbaa !2450
  %30 = icmp eq i64 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1, !tbaa !2447
  %33 = lshr i64 %14, 63
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1, !tbaa !2448
  %36 = lshr i64 %11, 63
  %37 = xor i64 %33, %36
  %38 = add nuw nsw i64 %37, %36
  %39 = icmp eq i64 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1, !tbaa !2449
  %42 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 104) to i64*), align 8
  %43 = bitcast %union.VectorReg* %5 to double*
  %44 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %5, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %42, i64* %44, align 1, !tbaa !2451
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %46 = bitcast i64* %45 to double*
  store double 0.000000e+00, double* %46, align 1, !tbaa !2451
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %48 = bitcast %union.VectorReg* %6 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %48, align 1, !tbaa !2453
  %49 = add i64 %10, -16
  %50 = load i32, i32* %EDI, align 4
  %51 = add i64 %13, 21
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %49 to i32*
  store i32 %50, i32* %52, align 4
  %53 = load i64, i64* %RBP, align 8
  %54 = add i64 %53, -16
  %55 = load i64, i64* %PC, align 8
  %56 = add i64 %55, 5
  store i64 %56, i64* %PC, align 8
  %57 = bitcast [32 x %union.VectorReg]* %4 to double*
  %58 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %59 = load i64, i64* %58, align 1
  %60 = inttoptr i64 %54 to i64*
  store i64 %59, i64* %60, align 8
  %61 = load i64, i64* %PC, align 8
  %62 = bitcast %union.VectorReg* %6 to double*
  %63 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  %64 = load i64, i64* %63, align 1
  store i64 %64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 520) to i64*), align 8
  %65 = load i64, i64* %RBP, align 8
  %66 = add i64 %65, -16
  %67 = add i64 %61, 14
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %66 to i64*
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %58, align 1, !tbaa !2451
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %71 = bitcast i64* %70 to double*
  store double 0.000000e+00, double* %71, align 1, !tbaa !2451
  store i64 %69, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1264) to i64*), align 16
  %72 = load i64, i64* %44, align 1
  store i64 %72, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1272) to i64*), align 8
  %73 = add i64 %65, -20
  %74 = add i64 %61, 39
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %73 to i32*
  store i32 1, i32* %75, align 4
  %76 = bitcast i64* %47 to double*
  %77 = bitcast %union.VectorReg* %7 to double*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %.pre = load i64, i64* %PC, align 8
  br label %block_400fa2

block_40100f:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 112), i64* %RAX, align 8, !tbaa !2428
  %79 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 104) to i64*), align 8
  store i64 %79, i64* %58, align 1, !tbaa !2451
  store double 0.000000e+00, double* %71, align 1, !tbaa !2451
  %80 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1288) to i64*), align 8
  store i64 %80, i64* %44, align 1, !tbaa !2451
  store double 0.000000e+00, double* %46, align 1, !tbaa !2451
  %81 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 48) to i64*), align 16
  store i64 %81, i64* %63, align 1, !tbaa !2451
  store double 0.000000e+00, double* %76, align 1, !tbaa !2451
  %82 = load i64, i64* %RBP, align 8
  %83 = add i64 %82, -8
  %84 = add i64 %331, 40
  store i64 %84, i64* %PC, align 8
  %85 = inttoptr i64 %83 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %RCX, align 8, !tbaa !2428
  %88 = shl nsw i64 %87, 3
  %89 = add i64 %88, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
  %90 = add i64 %331, 49
  store i64 %90, i64* %PC, align 8
  %91 = bitcast i64 %81 to double
  %92 = inttoptr i64 %89 to double*
  %93 = load double, double* %92, align 8
  %94 = fsub double %91, %93
  %95 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 40) to double*), align 8
  %96 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 64) to double*), align 16
  %97 = fsub double %95, %96
  store double %97, double* %77, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %98 = fdiv double %94, %97
  store double %98, double* %62, align 1, !tbaa !2451
  store i64 0, i64* %47, align 1, !tbaa !2451
  %99 = add i64 %82, -20
  %100 = add i64 %331, 75
  store i64 %100, i64* %PC, align 8
  %101 = inttoptr i64 %99 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = mul nsw i64 %103, 40
  store i64 %104, i64* %RCX, align 8, !tbaa !2428
  %105 = lshr i64 %104, 63
  %106 = add i64 %104, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 112)
  store i64 %106, i64* %RDX, align 8, !tbaa !2428
  %107 = icmp ult i64 %106, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 112)
  %108 = icmp ult i64 %106, %104
  %109 = or i1 %107, %108
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %17, align 1, !tbaa !2432
  %111 = trunc i64 %106 to i32
  %112 = and i32 %111, 248
  %113 = tail call i32 @llvm.ctpop.i32(i32 %112) #10
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = xor i8 %115, 1
  store i8 %116, i8* %24, align 1, !tbaa !2446
  %117 = xor i64 %104, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 112)
  %118 = xor i64 %117, %106
  %119 = lshr i64 %118, 4
  %120 = trunc i64 %119 to i8
  %121 = and i8 %120, 1
  store i8 %121, i8* %29, align 1, !tbaa !2450
  %122 = icmp eq i64 %106, 0
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %32, align 1, !tbaa !2447
  %124 = lshr i64 %106, 63
  %125 = trunc i64 %124 to i8
  store i8 %125, i8* %35, align 1, !tbaa !2448
  %126 = xor i64 %124, lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 112), i64 63)
  %127 = xor i64 %124, %105
  %128 = add nuw nsw i64 %126, %127
  %129 = icmp eq i64 %128, 2
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %41, align 1, !tbaa !2449
  %131 = add i64 %104, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 128)
  %132 = add i64 %331, 90
  store i64 %132, i64* %PC, align 8
  %133 = inttoptr i64 %131 to double*
  %134 = load double, double* %133, align 8
  %135 = load double, double* %57, align 1
  %136 = fsub double %134, %135
  store double %136, double* %77, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %137 = load i64, i64* %RBP, align 8
  %138 = add i64 %137, -20
  %139 = add i64 %331, 98
  store i64 %139, i64* %PC, align 8
  %140 = inttoptr i64 %138 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = mul nsw i64 %142, 40
  store i64 %143, i64* %RCX, align 8, !tbaa !2428
  %144 = lshr i64 %143, 63
  %145 = load i64, i64* %RAX, align 8
  %146 = add i64 %143, %145
  store i64 %146, i64* %RAX, align 8, !tbaa !2428
  %147 = icmp ult i64 %146, %145
  %148 = icmp ult i64 %146, %143
  %149 = or i1 %147, %148
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %17, align 1, !tbaa !2432
  %151 = trunc i64 %146 to i32
  %152 = and i32 %151, 255
  %153 = tail call i32 @llvm.ctpop.i32(i32 %152) #10
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  store i8 %156, i8* %24, align 1, !tbaa !2446
  %157 = xor i64 %143, %145
  %158 = xor i64 %157, %146
  %159 = lshr i64 %158, 4
  %160 = trunc i64 %159 to i8
  %161 = and i8 %160, 1
  store i8 %161, i8* %29, align 1, !tbaa !2450
  %162 = icmp eq i64 %146, 0
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %32, align 1, !tbaa !2447
  %164 = lshr i64 %146, 63
  %165 = trunc i64 %164 to i8
  store i8 %165, i8* %35, align 1, !tbaa !2448
  %166 = lshr i64 %145, 63
  %167 = xor i64 %164, %166
  %168 = xor i64 %164, %144
  %169 = add nuw nsw i64 %167, %168
  %170 = icmp eq i64 %169, 2
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %41, align 1, !tbaa !2449
  %172 = add i64 %146, 24
  %173 = add i64 %331, 110
  store i64 %173, i64* %PC, align 8
  %174 = inttoptr i64 %172 to double*
  %175 = load double, double* %174, align 8
  %176 = fdiv double %136, %175
  store double %176, double* %77, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %177 = load double, double* %62, align 1
  %178 = fmul double %177, %176
  store double %178, double* %62, align 1, !tbaa !2451
  %179 = load double, double* %43, align 1
  %180 = fadd double %179, %178
  store double %180, double* %43, align 1, !tbaa !2451
  %181 = add i64 %331, 127
  store i64 %181, i64* %PC, align 8
  store double %180, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1288) to double*), align 8
  br label %block_40108e

block_40108e:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit, %block_40100f
  %182 = phi i64 [ %331, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ], [ %181, %block_40100f ]
  %183 = add i64 %182, 114
  %184 = add i64 %182, 5
  %185 = load i64, i64* %RSP, align 8, !tbaa !2428
  %186 = add i64 %185, -8
  %187 = inttoptr i64 %186 to i64*
  store i64 %184, i64* %187, align 8
  store i64 %186, i64* %RSP, align 8, !tbaa !2428
  store i64 %183, i64* %PC, align 8, !tbaa !2428
  %188 = tail call %struct.Memory* @sub_401100_transit_surface(%struct.State* nonnull %0, i64 %183, %struct.Memory* %328)
  %189 = load i64, i64* %PC, align 8
  %190 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1288) to i64*), align 8
  store i64 %190, i64* %58, align 1, !tbaa !2451
  store double 0.000000e+00, double* %71, align 1, !tbaa !2451
  store i64 %190, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1272) to i64*), align 8
  %191 = load i64, i64* %RBP, align 8
  %192 = add i64 %191, -20
  %193 = add i64 %189, 21
  store i64 %193, i64* %PC, align 8
  %194 = inttoptr i64 %192 to i32*
  %195 = load i32, i32* %194, align 4
  %196 = zext i32 %195 to i64
  store i64 %196, i64* %RAX, align 8, !tbaa !2428
  %197 = load i16, i16* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 96) to i16*), align 16
  %198 = sext i16 %197 to i64
  %199 = and i64 %198, 4294967295
  store i64 %199, i64* %RCX, align 8, !tbaa !2428
  %200 = sext i16 %197 to i32
  %201 = sub i32 %195, %200
  %202 = icmp ult i32 %195, %200
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %17, align 1, !tbaa !2432
  %204 = and i32 %201, 255
  %205 = tail call i32 @llvm.ctpop.i32(i32 %204) #10
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  %208 = xor i8 %207, 1
  store i8 %208, i8* %24, align 1, !tbaa !2446
  %209 = xor i32 %200, %195
  %210 = xor i32 %209, %201
  %211 = lshr i32 %210, 4
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  store i8 %213, i8* %29, align 1, !tbaa !2450
  %214 = icmp eq i32 %201, 0
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %32, align 1, !tbaa !2447
  %216 = lshr i32 %201, 31
  %217 = trunc i32 %216 to i8
  store i8 %217, i8* %35, align 1, !tbaa !2448
  %218 = lshr i32 %195, 31
  %219 = lshr i32 %200, 31
  %220 = xor i32 %219, %218
  %221 = xor i32 %216, %218
  %222 = add nuw nsw i32 %221, %220
  %223 = icmp eq i32 %222, 2
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %41, align 1, !tbaa !2449
  %225 = icmp ne i8 %217, 0
  %226 = xor i1 %225, %223
  %.v11 = select i1 %226, i64 37, i64 81
  %227 = add i64 %189, %.v11
  store i64 %227, i64* %PC, align 8, !tbaa !2428
  br i1 %226, label %block_4010b8, label %block_4010e4

block_400fb5:                                     ; preds = %block_400fa2
  %228 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 104) to i64*), align 8
  store i64 %228, i64* %58, align 1, !tbaa !2451
  store double 0.000000e+00, double* %71, align 1, !tbaa !2451
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 112), i64* %RAX, align 8, !tbaa !2428
  %229 = add i64 %472, 22
  store i64 %229, i64* %PC, align 8
  %230 = load i32, i32* %439, align 4
  %231 = sext i32 %230 to i64
  %232 = mul nsw i64 %231, 40
  store i64 %232, i64* %RCX, align 8, !tbaa !2428
  %233 = lshr i64 %232, 63
  %234 = add i64 %232, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 112)
  store i64 %234, i64* %RDX, align 8, !tbaa !2428
  %235 = icmp ult i64 %234, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 112)
  %236 = icmp ult i64 %234, %232
  %237 = or i1 %235, %236
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %17, align 1, !tbaa !2432
  %239 = trunc i64 %234 to i32
  %240 = and i32 %239, 248
  %241 = tail call i32 @llvm.ctpop.i32(i32 %240) #10
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  %244 = xor i8 %243, 1
  store i8 %244, i8* %24, align 1, !tbaa !2446
  %245 = xor i64 %232, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 112)
  %246 = xor i64 %245, %234
  %247 = lshr i64 %246, 4
  %248 = trunc i64 %247 to i8
  %249 = and i8 %248, 1
  store i8 %249, i8* %29, align 1, !tbaa !2450
  %250 = icmp eq i64 %234, 0
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %32, align 1, !tbaa !2447
  %252 = lshr i64 %234, 63
  %253 = trunc i64 %252 to i8
  store i8 %253, i8* %35, align 1, !tbaa !2448
  %254 = xor i64 %252, lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 112), i64 63)
  %255 = xor i64 %252, %233
  %256 = add nuw nsw i64 %254, %255
  %257 = icmp eq i64 %256, 2
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %41, align 1, !tbaa !2449
  %259 = add i64 %232, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 120)
  %260 = add i64 %472, 37
  store i64 %260, i64* %PC, align 8
  %261 = inttoptr i64 %259 to i64*
  %262 = load i64, i64* %261, align 8
  store i64 %262, i64* %44, align 1, !tbaa !2451
  store double 0.000000e+00, double* %46, align 1, !tbaa !2451
  store i64 %262, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1280) to i64*), align 16
  %263 = add i64 %472, 50
  store i64 %263, i64* %PC, align 8
  %264 = load i32, i32* %439, align 4
  %265 = sext i32 %264 to i64
  %266 = mul nsw i64 %265, 40
  store i64 %266, i64* %RCX, align 8, !tbaa !2428
  %267 = lshr i64 %266, 63
  %268 = load i64, i64* %RAX, align 8
  %269 = add i64 %266, %268
  store i64 %269, i64* %RAX, align 8, !tbaa !2428
  %270 = icmp ult i64 %269, %268
  %271 = icmp ult i64 %269, %266
  %272 = or i1 %270, %271
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %17, align 1, !tbaa !2432
  %274 = trunc i64 %269 to i32
  %275 = and i32 %274, 255
  %276 = tail call i32 @llvm.ctpop.i32(i32 %275) #10
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  %279 = xor i8 %278, 1
  store i8 %279, i8* %24, align 1, !tbaa !2446
  %280 = xor i64 %266, %268
  %281 = xor i64 %280, %269
  %282 = lshr i64 %281, 4
  %283 = trunc i64 %282 to i8
  %284 = and i8 %283, 1
  store i8 %284, i8* %29, align 1, !tbaa !2450
  %285 = icmp eq i64 %269, 0
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %32, align 1, !tbaa !2447
  %287 = lshr i64 %269, 63
  %288 = trunc i64 %287 to i8
  store i8 %288, i8* %35, align 1, !tbaa !2448
  %289 = lshr i64 %268, 63
  %290 = xor i64 %287, %289
  %291 = xor i64 %287, %267
  %292 = add nuw nsw i64 %290, %291
  %293 = icmp eq i64 %292, 2
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %41, align 1, !tbaa !2449
  %295 = add i64 %269, 16
  %296 = add i64 %472, 62
  store i64 %296, i64* %PC, align 8
  %297 = inttoptr i64 %295 to i64*
  %298 = load i64, i64* %297, align 8
  store i64 %298, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1288) to i64*), align 8
  store i64 %298, i64* %44, align 1, !tbaa !2451
  store double 0.000000e+00, double* %46, align 1, !tbaa !2451
  %299 = add i64 %472, 84
  store i64 %299, i64* %PC, align 8
  %.cast = bitcast i64 %298 to double
  %300 = load double, double* %57, align 1
  %301 = fcmp uno double %.cast, %300
  br i1 %301, label %302, label %312

; <label>:302:                                    ; preds = %block_400fb5
  %303 = fadd double %.cast, %300
  %304 = bitcast double %303 to i64
  %305 = and i64 %304, 9221120237041090560
  %306 = icmp eq i64 %305, 9218868437227405312
  %307 = and i64 %304, 2251799813685247
  %308 = icmp ne i64 %307, 0
  %309 = and i1 %306, %308
  br i1 %309, label %310, label %318

; <label>:310:                                    ; preds = %302
  %311 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %299, %struct.Memory* %MEMORY.2) #15
  %.pre7 = load i64, i64* %PC, align 8
  %.pre8 = load i8, i8* %17, align 1, !tbaa !2432
  %.pre9 = load i8, i8* %32, align 1, !tbaa !2447
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:312:                                    ; preds = %block_400fb5
  %313 = fcmp ogt double %.cast, %300
  br i1 %313, label %318, label %314

; <label>:314:                                    ; preds = %312
  %315 = fcmp olt double %.cast, %300
  br i1 %315, label %318, label %316

; <label>:316:                                    ; preds = %314
  %317 = fcmp oeq double %.cast, %300
  br i1 %317, label %318, label %322

; <label>:318:                                    ; preds = %316, %314, %312, %302
  %319 = phi i8 [ 0, %312 ], [ 0, %314 ], [ 1, %316 ], [ 1, %302 ]
  %320 = phi i8 [ 0, %312 ], [ 0, %314 ], [ 0, %316 ], [ 1, %302 ]
  %321 = phi i8 [ 0, %312 ], [ 1, %314 ], [ 0, %316 ], [ 1, %302 ]
  store i8 %319, i8* %32, align 1, !tbaa !2454
  store i8 %320, i8* %24, align 1, !tbaa !2454
  store i8 %321, i8* %17, align 1, !tbaa !2454
  br label %322

; <label>:322:                                    ; preds = %318, %316
  %323 = phi i8 [ %319, %318 ], [ %286, %316 ]
  %324 = phi i8 [ %321, %318 ], [ %273, %316 ]
  store i8 0, i8* %41, align 1, !tbaa !2454
  store i8 0, i8* %35, align 1, !tbaa !2454
  store i8 0, i8* %29, align 1, !tbaa !2454
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %322, %310
  %325 = phi i8 [ %.pre9, %310 ], [ %323, %322 ]
  %326 = phi i8 [ %.pre8, %310 ], [ %324, %322 ]
  %327 = phi i64 [ %.pre7, %310 ], [ %299, %322 ]
  %328 = phi %struct.Memory* [ %311, %310 ], [ %MEMORY.2, %322 ]
  %329 = or i8 %325, %326
  %330 = icmp ne i8 %329, 0
  %.v10 = select i1 %330, i64 133, i64 6
  %331 = add i64 %327, %.v10
  store i64 %331, i64* %PC, align 8, !tbaa !2428
  br i1 %330, label %block_40108e, label %block_40100f

block_4010b8:                                     ; preds = %block_40108e
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 112), i64* %RAX, align 8, !tbaa !2428
  %332 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 520) to i64*), align 8
  store i64 %332, i64* %58, align 1, !tbaa !2451
  store double 0.000000e+00, double* %71, align 1, !tbaa !2451
  %333 = add i64 %227, 23
  store i64 %333, i64* %PC, align 8
  %334 = load i32, i32* %194, align 4
  %335 = sext i32 %334 to i64
  %336 = mul nsw i64 %335, 40
  store i64 %336, i64* %RCX, align 8, !tbaa !2428
  %337 = lshr i64 %336, 63
  %338 = add i64 %336, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 112)
  store i64 %338, i64* %RAX, align 8, !tbaa !2428
  %339 = icmp ult i64 %338, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 112)
  %340 = icmp ult i64 %338, %336
  %341 = or i1 %339, %340
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %17, align 1, !tbaa !2432
  %343 = trunc i64 %338 to i32
  %344 = and i32 %343, 248
  %345 = tail call i32 @llvm.ctpop.i32(i32 %344) #10
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = xor i8 %347, 1
  store i8 %348, i8* %24, align 1, !tbaa !2446
  %349 = xor i64 %336, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 112)
  %350 = xor i64 %349, %338
  %351 = lshr i64 %350, 4
  %352 = trunc i64 %351 to i8
  %353 = and i8 %352, 1
  store i8 %353, i8* %29, align 1, !tbaa !2450
  %354 = icmp eq i64 %338, 0
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %32, align 1, !tbaa !2447
  %356 = lshr i64 %338, 63
  %357 = trunc i64 %356 to i8
  store i8 %357, i8* %35, align 1, !tbaa !2448
  %358 = xor i64 %356, lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 112), i64 63)
  %359 = xor i64 %356, %337
  %360 = add nuw nsw i64 %358, %359
  %361 = icmp eq i64 %360, 2
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %41, align 1, !tbaa !2449
  %363 = add i64 %336, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 144)
  %364 = add i64 %227, 35
  store i64 %364, i64* %PC, align 8
  %365 = bitcast i64 %332 to double
  %366 = inttoptr i64 %363 to double*
  %367 = load double, double* %366, align 8
  %368 = fsub double %365, %367
  store double %368, double* %57, align 1, !tbaa !2451
  store i64 0, i64* %70, align 1, !tbaa !2451
  %369 = add i64 %227, 44
  store i64 %369, i64* %PC, align 8
  store double %368, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 520) to double*), align 8
  br label %block_4010e4

block_4010e4:                                     ; preds = %block_40108e, %block_4010b8
  %370 = phi i64 [ %227, %block_40108e ], [ %369, %block_4010b8 ]
  %371 = add i64 %370, 8
  store i64 %371, i64* %PC, align 8
  %372 = load i32, i32* %194, align 4
  %373 = add i32 %372, 1
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %RAX, align 8, !tbaa !2428
  %375 = icmp eq i32 %372, -1
  %376 = icmp eq i32 %373, 0
  %377 = or i1 %375, %376
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %17, align 1, !tbaa !2432
  %379 = and i32 %373, 255
  %380 = tail call i32 @llvm.ctpop.i32(i32 %379) #10
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  store i8 %383, i8* %24, align 1, !tbaa !2446
  %384 = xor i32 %373, %372
  %385 = lshr i32 %384, 4
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  store i8 %387, i8* %29, align 1, !tbaa !2450
  %388 = zext i1 %376 to i8
  store i8 %388, i8* %32, align 1, !tbaa !2447
  %389 = lshr i32 %373, 31
  %390 = trunc i32 %389 to i8
  store i8 %390, i8* %35, align 1, !tbaa !2448
  %391 = lshr i32 %372, 31
  %392 = xor i32 %389, %391
  %393 = add nuw nsw i32 %392, %389
  %394 = icmp eq i32 %393, 2
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %41, align 1, !tbaa !2449
  %396 = add i64 %370, 14
  store i64 %396, i64* %PC, align 8
  store i32 %373, i32* %194, align 4
  %397 = load i64, i64* %PC, align 8
  %398 = add i64 %397, -336
  store i64 %398, i64* %PC, align 8, !tbaa !2428
  br label %block_400fa2

block_4010f7:                                     ; preds = %block_400fa2
  %399 = add i64 %436, -4
  %400 = add i64 %472, 3
  store i64 %400, i64* %PC, align 8
  %401 = inttoptr i64 %399 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RAX, align 8, !tbaa !2428
  %404 = load i64, i64* %RSP, align 8
  %405 = add i64 %404, 32
  store i64 %405, i64* %RSP, align 8, !tbaa !2428
  %406 = icmp ugt i64 %404, -33
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %17, align 1, !tbaa !2432
  %408 = trunc i64 %405 to i32
  %409 = and i32 %408, 255
  %410 = tail call i32 @llvm.ctpop.i32(i32 %409) #10
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  %413 = xor i8 %412, 1
  store i8 %413, i8* %24, align 1, !tbaa !2446
  %414 = xor i64 %405, %404
  %415 = lshr i64 %414, 4
  %416 = trunc i64 %415 to i8
  %417 = and i8 %416, 1
  store i8 %417, i8* %29, align 1, !tbaa !2450
  %418 = icmp eq i64 %405, 0
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %32, align 1, !tbaa !2447
  %420 = lshr i64 %405, 63
  %421 = trunc i64 %420 to i8
  store i8 %421, i8* %35, align 1, !tbaa !2448
  %422 = lshr i64 %404, 63
  %423 = xor i64 %420, %422
  %424 = add nuw nsw i64 %423, %420
  %425 = icmp eq i64 %424, 2
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %41, align 1, !tbaa !2449
  %427 = add i64 %472, 8
  store i64 %427, i64* %PC, align 8
  %428 = add i64 %404, 40
  %429 = inttoptr i64 %405 to i64*
  %430 = load i64, i64* %429, align 8
  store i64 %430, i64* %RBP, align 8, !tbaa !2428
  store i64 %428, i64* %RSP, align 8, !tbaa !2428
  %431 = add i64 %472, 9
  store i64 %431, i64* %PC, align 8
  %432 = inttoptr i64 %428 to i64*
  %433 = load i64, i64* %432, align 8
  store i64 %433, i64* %PC, align 8, !tbaa !2428
  %434 = add i64 %404, 48
  store i64 %434, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.2

block_400fa2:                                     ; preds = %block_4010e4, %block_400f60
  %435 = phi i64 [ %.pre, %block_400f60 ], [ %398, %block_4010e4 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_400f60 ], [ %188, %block_4010e4 ]
  %436 = load i64, i64* %RBP, align 8
  %437 = add i64 %436, -20
  %438 = add i64 %435, 3
  store i64 %438, i64* %PC, align 8
  %439 = inttoptr i64 %437 to i32*
  %440 = load i32, i32* %439, align 4
  %441 = zext i32 %440 to i64
  store i64 %441, i64* %RAX, align 8, !tbaa !2428
  %442 = load i16, i16* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 96) to i16*), align 16
  %443 = sext i16 %442 to i64
  %444 = and i64 %443, 4294967295
  store i64 %444, i64* %RCX, align 8, !tbaa !2428
  %445 = sext i16 %442 to i32
  %446 = sub i32 %440, %445
  %447 = icmp ult i32 %440, %445
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %17, align 1, !tbaa !2432
  %449 = and i32 %446, 255
  %450 = tail call i32 @llvm.ctpop.i32(i32 %449) #10
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  %453 = xor i8 %452, 1
  store i8 %453, i8* %24, align 1, !tbaa !2446
  %454 = xor i32 %445, %440
  %455 = xor i32 %454, %446
  %456 = lshr i32 %455, 4
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  store i8 %458, i8* %29, align 1, !tbaa !2450
  %459 = icmp eq i32 %446, 0
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %32, align 1, !tbaa !2447
  %461 = lshr i32 %446, 31
  %462 = trunc i32 %461 to i8
  store i8 %462, i8* %35, align 1, !tbaa !2448
  %463 = lshr i32 %440, 31
  %464 = lshr i32 %445, 31
  %465 = xor i32 %464, %463
  %466 = xor i32 %461, %463
  %467 = add nuw nsw i32 %466, %465
  %468 = icmp eq i32 %467, 2
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %41, align 1, !tbaa !2449
  %470 = icmp ne i8 %462, 0
  %471 = xor i1 %470, %468
  %.demorgan = or i1 %459, %471
  %.v = select i1 %.demorgan, i64 19, i64 341
  %472 = add i64 %435, %.v
  store i64 %472, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400fb5, label %block_4010f7
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4015d4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_4015d4:
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
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #10
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %6, align 1, !tbaa !2446
  store i8 %10, i8* %11, align 1, !tbaa !2450
  %29 = icmp eq i64 %3, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %12, align 1, !tbaa !2447
  %31 = trunc i64 %15 to i8
  store i8 %31, i8* %14, align 1, !tbaa !2448
  store i8 %19, i8* %20, align 1, !tbaa !2449
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
define %struct.Memory* @sub_401100_transit_surface(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_401100:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
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
  %12 = add i64 %8, -152
  store i64 %12, i64* %RSP, align 8, !tbaa !2428
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = load i16, i16* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 512) to i16*), align 16
  store i8 0, i8* %13, align 1, !tbaa !2432
  %20 = and i16 %19, 255
  %21 = zext i16 %20 to i32
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21) #10
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  store i8 %25, i8* %14, align 1, !tbaa !2446
  store i8 0, i8* %15, align 1, !tbaa !2450
  %26 = icmp eq i16 %19, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %16, align 1, !tbaa !2447
  %28 = lshr i16 %19, 15
  %29 = trunc i16 %28 to i8
  store i8 %29, i8* %17, align 1, !tbaa !2448
  store i8 0, i8* %18, align 1, !tbaa !2449
  %.v = select i1 %26, i64 410, i64 25
  %30 = add i64 %11, %.v
  %31 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %32 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %34 = bitcast [32 x %union.VectorReg]* %3 to i32*
  %35 = getelementptr inbounds i8, i8* %31, i64 4
  %36 = bitcast i8* %35 to i32*
  %37 = bitcast i64* %33 to i32*
  %38 = getelementptr inbounds i8, i8* %31, i64 12
  %39 = bitcast i8* %38 to i32*
  %40 = bitcast [32 x %union.VectorReg]* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %40, align 1, !tbaa !2453
  %41 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1280) to i64*), align 16
  %42 = bitcast %union.VectorReg* %4 to double*
  %43 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %4, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %41, i64* %43, align 1, !tbaa !2451
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %45 = bitcast i64* %44 to double*
  store double 0.000000e+00, double* %45, align 1, !tbaa !2451
  %46 = add i64 %30, 16
  store i64 %46, i64* %PC, align 8
  %47 = bitcast i64 %41 to double
  %48 = bitcast [32 x %union.VectorReg]* %3 to double*
  %49 = load double, double* %48, align 1
  %50 = fcmp uno double %47, %49
  br i1 %50, label %51, label %61

; <label>:51:                                     ; preds = %block_401100
  %52 = fadd double %47, %49
  %53 = bitcast double %52 to i64
  %54 = and i64 %53, 9221120237041090560
  %55 = icmp eq i64 %54, 9218868437227405312
  %56 = and i64 %53, 2251799813685247
  %57 = icmp ne i64 %56, 0
  %58 = and i1 %55, %57
  br i1 %58, label %59, label %67

; <label>:59:                                     ; preds = %51
  %60 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %46, %struct.Memory* %2) #15
  %.pre = load i64, i64* %PC, align 8
  %.pre239 = load i8, i8* %16, align 1, !tbaa !2447
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit479

; <label>:61:                                     ; preds = %block_401100
  %62 = fcmp ogt double %47, %49
  br i1 %62, label %67, label %63

; <label>:63:                                     ; preds = %61
  %64 = fcmp olt double %47, %49
  br i1 %64, label %67, label %65

; <label>:65:                                     ; preds = %63
  %66 = fcmp oeq double %47, %49
  br i1 %66, label %67, label %71

; <label>:67:                                     ; preds = %65, %63, %61, %51
  %68 = phi i8 [ 0, %61 ], [ 0, %63 ], [ 1, %65 ], [ 1, %51 ]
  %69 = phi i8 [ 0, %61 ], [ 0, %63 ], [ 0, %65 ], [ 1, %51 ]
  %70 = phi i8 [ 0, %61 ], [ 1, %63 ], [ 0, %65 ], [ 1, %51 ]
  store i8 %68, i8* %16, align 1, !tbaa !2454
  store i8 %69, i8* %14, align 1, !tbaa !2454
  store i8 %70, i8* %13, align 1, !tbaa !2454
  br label %71

; <label>:71:                                     ; preds = %67, %65
  %72 = phi i8 [ %68, %67 ], [ %27, %65 ]
  store i8 0, i8* %18, align 1, !tbaa !2454
  store i8 0, i8* %17, align 1, !tbaa !2454
  store i8 0, i8* %15, align 1, !tbaa !2454
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit479

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit479: ; preds = %71, %59
  %73 = phi i8 [ %.pre239, %59 ], [ %72, %71 ]
  %74 = phi i64 [ %.pre, %59 ], [ %46, %71 ]
  %75 = phi %struct.Memory* [ %60, %59 ], [ %2, %71 ]
  %76 = icmp eq i8 %73, 0
  %.v257 = select i1 %76, i64 17, i64 6
  %77 = add i64 %74, %.v257
  store i64 %77, i64* %PC, align 8, !tbaa !2428
  br i1 %26, label %block_40129b, label %block_40111a

block_40117f:                                     ; preds = %block_401151, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit478
  %78 = phi i64 [ %411, %block_401151 ], [ %393, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit478 ]
  %79 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 520) to double*), align 8
  %80 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1280) to double*), align 16
  %81 = fsub double %79, %80
  %82 = fdiv double %81, %80
  %83 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to double*), align 16
  %84 = fmul double %82, %83
  store double %84, double* %48, align 1, !tbaa !2451
  store i64 0, i64* %33, align 1, !tbaa !2451
  %85 = load i64, i64* %RBP, align 8
  %86 = add i64 %85, -24
  %87 = add i64 %78, 41
  store i64 %87, i64* %PC, align 8
  %88 = inttoptr i64 %86 to double*
  store double %84, double* %88, align 8
  %.pre242 = load i64, i64* %PC, align 8
  br label %block_4011a8

block_4012d8:                                     ; preds = %block_4012d2
  store i32 0, i32* %34, align 1, !tbaa !2453
  store i32 0, i32* %36, align 1, !tbaa !2453
  %89 = load i64, i64* %32, align 1
  store i64 %89, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to i64*), align 16
  %90 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1264) to double*), align 16
  %91 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1280) to double*), align 16
  %92 = fdiv double %90, %91
  store double %92, double* %48, align 1, !tbaa !2451
  store i64 0, i64* %33, align 1, !tbaa !2451
  %93 = load i64, i64* %RBP, align 8
  %94 = add i64 %93, -24
  %95 = add i64 %101, 35
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %94 to double*
  store double %92, double* %96, align 8
  %97 = load i64, i64* %PC, align 8
  %98 = add i64 %97, 68
  store i64 %98, i64* %PC, align 8, !tbaa !2428
  %.pre247 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %.pre249 = bitcast i64* %44 to <2 x i32>*
  br label %block_40133f

block_4012d2:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit480
  %99 = load i8, i8* %14, align 1, !tbaa !2446
  %100 = icmp ne i8 %99, 0
  %.v264 = select i1 %100, i64 46, i64 6
  %101 = add i64 %360, %.v264
  store i64 %101, i64* %PC, align 8, !tbaa !2428
  %102 = icmp eq i8 %99, 1
  br i1 %102, label %block_401300, label %block_4012d8

block_401555:                                     ; preds = %block_401226, %block_4012b7, %block_401136, %block_40133f
  %103 = phi i64 [ %327, %block_40133f ], [ %660, %block_4012b7 ], [ %665, %block_401226 ], [ %404, %block_401136 ]
  %MEMORY.1 = phi %struct.Memory* [ %200, %block_40133f ], [ %516, %block_4012b7 ], [ %472, %block_401226 ], [ %75, %block_401136 ]
  %104 = load i64, i64* %RSP, align 8
  %105 = add i64 %104, 144
  store i64 %105, i64* %RSP, align 8, !tbaa !2428
  %106 = icmp ugt i64 %104, -145
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %13, align 1, !tbaa !2432
  %108 = trunc i64 %105 to i32
  %109 = and i32 %108, 255
  %110 = tail call i32 @llvm.ctpop.i32(i32 %109) #10
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  %113 = xor i8 %112, 1
  store i8 %113, i8* %14, align 1, !tbaa !2446
  %114 = xor i64 %104, 16
  %115 = xor i64 %114, %105
  %116 = lshr i64 %115, 4
  %117 = trunc i64 %116 to i8
  %118 = and i8 %117, 1
  store i8 %118, i8* %15, align 1, !tbaa !2450
  %119 = icmp eq i64 %105, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %16, align 1, !tbaa !2447
  %121 = lshr i64 %105, 63
  %122 = trunc i64 %121 to i8
  store i8 %122, i8* %17, align 1, !tbaa !2448
  %123 = lshr i64 %104, 63
  %124 = xor i64 %121, %123
  %125 = add nuw nsw i64 %124, %121
  %126 = icmp eq i64 %125, 2
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %18, align 1, !tbaa !2449
  %128 = add i64 %103, 8
  store i64 %128, i64* %PC, align 8
  %129 = add i64 %104, 152
  %130 = inttoptr i64 %105 to i64*
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %RBP, align 8, !tbaa !2428
  store i64 %129, i64* %RSP, align 8, !tbaa !2428
  %132 = add i64 %103, 9
  store i64 %132, i64* %PC, align 8
  %133 = inttoptr i64 %129 to i64*
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %PC, align 8, !tbaa !2428
  %135 = add i64 %104, 160
  store i64 %135, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_40133f:                                     ; preds = %block_401300, %block_4012d8
  %.pre-phi250 = phi <2 x i32>* [ %699, %block_401300 ], [ %.pre249, %block_4012d8 ]
  %.pre-phi248 = phi <2 x i32>* [ %697, %block_401300 ], [ %.pre247, %block_4012d8 ]
  %136 = phi i64 [ %.pre246, %block_401300 ], [ %98, %block_4012d8 ]
  %.pre-phi = bitcast i64* %33 to double*
  %.pre-phi252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 2
  %.pre-phi254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 3
  %137 = load i64, i64* %RBP, align 8
  %138 = add i64 %137, -24
  %139 = add i64 %136, 5
  store i64 %139, i64* %PC, align 8
  %140 = inttoptr i64 %138 to i64*
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %32, align 1, !tbaa !2451
  store double 0.000000e+00, double* %.pre-phi, align 1, !tbaa !2451
  %142 = add i64 %136, -3359
  %143 = add i64 %136, 10
  %144 = load i64, i64* %RSP, align 8, !tbaa !2428
  %145 = add i64 %144, -8
  %146 = inttoptr i64 %145 to i64*
  store i64 %143, i64* %146, align 8
  store i64 %145, i64* %RSP, align 8, !tbaa !2428
  store i64 %142, i64* %PC, align 8, !tbaa !2428
  %147 = tail call fastcc %struct.Memory* @ext_602690_asin(%struct.State* nonnull %0, %struct.Memory* %358)
  %148 = load i64, i64* %RBP, align 8
  %149 = add i64 %148, -8
  %150 = load i64, i64* %PC, align 8
  %151 = add i64 %150, 5
  store i64 %151, i64* %PC, align 8
  %152 = load i64, i64* %32, align 1
  %153 = inttoptr i64 %149 to i64*
  store i64 %152, i64* %153, align 8
  %154 = load i64, i64* %PC, align 8
  %155 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1272) to double*), align 8
  store double 0.000000e+00, double* %.pre-phi, align 1, !tbaa !2451
  %156 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1288) to double*), align 8
  %157 = fdiv double %155, %156
  store double %157, double* %48, align 1, !tbaa !2451
  store i64 0, i64* %33, align 1, !tbaa !2451
  %158 = load i64, i64* %RBP, align 8
  %159 = add i64 %158, -24
  %160 = add i64 %154, 23
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %159 to double*
  %162 = load double, double* %161, align 8
  %163 = fmul double %157, %162
  store i64 0, i64* %33, align 1, !tbaa !2451
  %164 = add i64 %158, -32
  %165 = add i64 %154, 28
  store i64 %165, i64* %PC, align 8
  %166 = inttoptr i64 %164 to double*
  store double %163, double* %166, align 8
  %167 = load i64, i64* %PC, align 8
  %168 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to i64*), align 16
  %169 = load i64, i64* %RBP, align 8
  %170 = add i64 %169, -40
  %171 = add i64 %167, 14
  store i64 %171, i64* %PC, align 8
  %172 = inttoptr i64 %170 to i64*
  store i64 %168, i64* %172, align 8
  %173 = load i64, i64* %PC, align 8
  %174 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to i64*), align 16
  store i64 %174, i64* %32, align 1, !tbaa !2451
  store double 0.000000e+00, double* %.pre-phi, align 1, !tbaa !2451
  %175 = load i64, i64* %RBP, align 8
  %176 = add i64 %175, -8
  %177 = add i64 %173, 14
  store i64 %177, i64* %PC, align 8
  %.cast237 = bitcast i64 %174 to double
  %178 = inttoptr i64 %176 to double*
  %179 = load double, double* %178, align 8
  %180 = fadd double %.cast237, %179
  store double %180, double* %48, align 1, !tbaa !2451
  store i64 0, i64* %33, align 1, !tbaa !2451
  %181 = add i64 %175, -32
  %182 = add i64 %173, 19
  store i64 %182, i64* %PC, align 8
  %183 = inttoptr i64 %181 to i64*
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %43, align 1, !tbaa !2451
  store double 0.000000e+00, double* %45, align 1, !tbaa !2451
  %185 = add i64 %175, -64
  %186 = add i64 %173, 24
  store i64 %186, i64* %PC, align 8
  %187 = inttoptr i64 %185 to double*
  store double %180, double* %187, align 8
  %188 = load i64, i64* %PC, align 8
  %189 = load <2 x i32>, <2 x i32>* %.pre-phi248, align 1
  %190 = load <2 x i32>, <2 x i32>* %.pre-phi250, align 1
  %191 = extractelement <2 x i32> %189, i32 0
  store i32 %191, i32* %34, align 1, !tbaa !2455
  %192 = extractelement <2 x i32> %189, i32 1
  store i32 %192, i32* %36, align 1, !tbaa !2455
  %193 = extractelement <2 x i32> %190, i32 0
  store i32 %193, i32* %37, align 1, !tbaa !2455
  %194 = extractelement <2 x i32> %190, i32 1
  store i32 %194, i32* %39, align 1, !tbaa !2455
  %195 = add i64 %188, -3440
  %196 = add i64 %188, 8
  %197 = load i64, i64* %RSP, align 8, !tbaa !2428
  %198 = add i64 %197, -8
  %199 = inttoptr i64 %198 to i64*
  store i64 %196, i64* %199, align 8
  store i64 %198, i64* %RSP, align 8, !tbaa !2428
  store i64 %195, i64* %PC, align 8, !tbaa !2428
  %200 = tail call fastcc %struct.Memory* @ext_602690_asin(%struct.State* nonnull %0, %struct.Memory* %147)
  %201 = load i64, i64* %PC, align 8
  %202 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 112) to i64*), align 16
  store i64 %202, i64* %43, align 1, !tbaa !2451
  store double 0.000000e+00, double* %45, align 1, !tbaa !2451
  %203 = load i64, i64* %RBP, align 8
  %204 = add i64 %203, -64
  %205 = add i64 %201, 13
  store i64 %205, i64* %PC, align 8
  %206 = inttoptr i64 %204 to double*
  %207 = load double, double* %206, align 8
  %208 = bitcast %union.VectorReg* %5 to double*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %210 = load double, double* %48, align 1
  %211 = fsub double %207, %210
  store double %211, double* %208, align 1, !tbaa !2451
  store i64 0, i64* %209, align 1, !tbaa !2451
  store double %211, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to double*), align 16
  %212 = add i64 %203, -40
  %213 = add i64 %201, 31
  store i64 %213, i64* %PC, align 8
  %214 = inttoptr i64 %212 to i64*
  %215 = load i64, i64* %214, align 8
  store i64 %215, i64* %32, align 1, !tbaa !2451
  store double 0.000000e+00, double* %.pre-phi, align 1, !tbaa !2451
  %216 = add i64 %203, -8
  %217 = add i64 %201, 36
  store i64 %217, i64* %PC, align 8
  %218 = bitcast i64 %215 to double
  %219 = inttoptr i64 %216 to double*
  %220 = load double, double* %219, align 8
  %221 = fadd double %218, %220
  %222 = bitcast i64 %202 to double
  %223 = fdiv double %221, %222
  store double %223, double* %48, align 1, !tbaa !2451
  store i64 0, i64* %33, align 1, !tbaa !2451
  %224 = add i64 %203, -72
  %225 = add i64 %201, 45
  store i64 %225, i64* %PC, align 8
  %226 = inttoptr i64 %224 to i64*
  store i64 %202, i64* %226, align 8
  %227 = load i64, i64* %PC, align 8
  %228 = add i64 %227, -3509
  %229 = add i64 %227, 5
  %230 = load i64, i64* %RSP, align 8, !tbaa !2428
  %231 = add i64 %230, -8
  %232 = inttoptr i64 %231 to i64*
  store i64 %229, i64* %232, align 8
  store i64 %231, i64* %RSP, align 8, !tbaa !2428
  store i64 %228, i64* %PC, align 8, !tbaa !2428
  %233 = load double, double* %48, align 8, !alias.scope !2457, !noalias !2460
  %234 = load i64, i64* %232, align 8
  store i64 %230, i64* %RSP, align 8, !alias.scope !2457, !noalias !2460
  %235 = tail call double @sin(double %233)
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %236, align 8
  %237 = bitcast i64* %.pre-phi252 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %237, align 8
  store double %235, double* %48, align 8, !alias.scope !2457, !noalias !2460
  %238 = load i64, i64* %RBP, align 8
  %239 = add i64 %238, -48
  %240 = add i64 %234, 5
  store i64 %240, i64* %PC, align 8
  %241 = inttoptr i64 %239 to double*
  store double %235, double* %241, align 8
  %242 = load i64, i64* %RBP, align 8
  %243 = add i64 %242, -72
  %244 = load i64, i64* %PC, align 8
  %245 = add i64 %244, 5
  store i64 %245, i64* %PC, align 8
  %246 = inttoptr i64 %243 to double*
  %247 = load double, double* %246, align 8
  store double 0.000000e+00, double* %.pre-phi, align 1, !tbaa !2451
  %248 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1280) to double*), align 16
  %249 = fmul double %247, %248
  store double %249, double* %48, align 1, !tbaa !2451
  store i64 0, i64* %33, align 1, !tbaa !2451
  %250 = add i64 %242, -48
  %251 = add i64 %244, 19
  store i64 %251, i64* %PC, align 8
  %252 = inttoptr i64 %250 to double*
  %253 = load double, double* %252, align 8
  %254 = fmul double %249, %253
  store double %254, double* %48, align 1, !tbaa !2451
  store i64 0, i64* %33, align 1, !tbaa !2451
  %255 = add i64 %244, 24
  store i64 %255, i64* %PC, align 8
  %256 = load double, double* %252, align 8
  %257 = fmul double %254, %256
  store i64 0, i64* %33, align 1, !tbaa !2451
  %258 = add i64 %244, 29
  store i64 %258, i64* %PC, align 8
  %259 = inttoptr i64 %250 to double*
  store double %257, double* %259, align 8
  %260 = load i64, i64* %PC, align 8
  %261 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1280) to i64*), align 16
  store i64 %261, i64* %32, align 1, !tbaa !2451
  store double 0.000000e+00, double* %.pre-phi, align 1, !tbaa !2451
  %262 = load i64, i64* %RBP, align 8
  %263 = add i64 %262, -40
  %264 = add i64 %260, 14
  store i64 %264, i64* %PC, align 8
  %265 = inttoptr i64 %263 to i64*
  %266 = load i64, i64* %265, align 8
  store i64 %266, i64* %43, align 1, !tbaa !2451
  store double 0.000000e+00, double* %45, align 1, !tbaa !2451
  %267 = add i64 %262, -8
  %268 = add i64 %260, 19
  store i64 %268, i64* %PC, align 8
  %269 = bitcast i64 %266 to double
  %270 = inttoptr i64 %267 to double*
  %271 = load double, double* %270, align 8
  %272 = fadd double %269, %271
  store double %272, double* %42, align 1, !tbaa !2451
  store i64 0, i64* %44, align 1, !tbaa !2451
  %273 = add i64 %262, -80
  %274 = add i64 %260, 24
  store i64 %274, i64* %PC, align 8
  %275 = inttoptr i64 %273 to i64*
  store i64 %261, i64* %275, align 8
  %276 = load i64, i64* %PC, align 8
  %277 = load <2 x i32>, <2 x i32>* %.pre-phi248, align 1
  %278 = load <2 x i32>, <2 x i32>* %.pre-phi250, align 1
  %279 = extractelement <2 x i32> %277, i32 0
  store i32 %279, i32* %34, align 1, !tbaa !2455
  %280 = extractelement <2 x i32> %277, i32 1
  store i32 %280, i32* %36, align 1, !tbaa !2455
  %281 = extractelement <2 x i32> %278, i32 0
  store i32 %281, i32* %37, align 1, !tbaa !2455
  %282 = extractelement <2 x i32> %278, i32 1
  store i32 %282, i32* %39, align 1, !tbaa !2455
  %283 = add i64 %276, -3572
  %284 = add i64 %276, 8
  %285 = load i64, i64* %RSP, align 8, !tbaa !2428
  %286 = add i64 %285, -8
  %287 = inttoptr i64 %286 to i64*
  store i64 %284, i64* %287, align 8
  store i64 %286, i64* %RSP, align 8, !tbaa !2428
  store i64 %283, i64* %PC, align 8, !tbaa !2428
  %288 = load double, double* %48, align 8, !alias.scope !2462, !noalias !2465
  %289 = load i64, i64* %287, align 8
  store i64 %285, i64* %RSP, align 8, !alias.scope !2462, !noalias !2465
  %290 = tail call double @sin(double %288)
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %292 = bitcast i64* %291 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %292, align 8
  store i64 0, i64* %.pre-phi254, align 8
  store double %290, double* %48, align 8, !alias.scope !2462, !noalias !2465
  %293 = load i64, i64* %RBP, align 8
  %294 = add i64 %293, -80
  %295 = add i64 %289, 5
  store i64 %295, i64* %PC, align 8
  %296 = inttoptr i64 %294 to double*
  %297 = load double, double* %296, align 8
  %298 = fmul double %297, %290
  store double %298, double* %42, align 1, !tbaa !2451
  store i64 0, i64* %44, align 1, !tbaa !2451
  %299 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to i64*), align 16
  store i64 %299, i64* %32, align 1, !tbaa !2451
  store double 0.000000e+00, double* %.pre-phi, align 1, !tbaa !2451
  %300 = add i64 %293, -88
  %301 = add i64 %289, 23
  store i64 %301, i64* %PC, align 8
  %302 = inttoptr i64 %300 to double*
  store double %298, double* %302, align 8
  %303 = load i64, i64* %PC, align 8
  %304 = add i64 %303, -3619
  %305 = add i64 %303, 5
  %306 = load i64, i64* %RSP, align 8, !tbaa !2428
  %307 = add i64 %306, -8
  %308 = inttoptr i64 %307 to i64*
  store i64 %305, i64* %308, align 8
  store i64 %307, i64* %RSP, align 8, !tbaa !2428
  store i64 %304, i64* %PC, align 8, !tbaa !2428
  %309 = load double, double* %48, align 8, !alias.scope !2467, !noalias !2470
  %310 = load i64, i64* %308, align 8
  store i64 %306, i64* %RSP, align 8, !alias.scope !2467, !noalias !2470
  %311 = tail call double @tan(double %309)
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %313 = bitcast i64* %312 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %313, align 8
  store i64 0, i64* %.pre-phi254, align 8
  store double %311, double* %48, align 8, !alias.scope !2467, !noalias !2470
  %314 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 104) to double*), align 8
  %315 = fdiv double %314, %311
  store double %315, double* %42, align 1, !tbaa !2451
  store i64 0, i64* %44, align 1, !tbaa !2451
  %316 = load i64, i64* %RBP, align 8
  %317 = add i64 %316, -88
  %318 = add i64 %310, 17
  store i64 %318, i64* %PC, align 8
  %319 = inttoptr i64 %317 to double*
  %320 = load double, double* %319, align 8
  store double 0.000000e+00, double* %.pre-phi, align 1, !tbaa !2451
  %321 = fmul double %320, %315
  store double %321, double* %48, align 1, !tbaa !2451
  store i64 0, i64* %33, align 1, !tbaa !2451
  %322 = add i64 %316, -48
  %323 = add i64 %310, 26
  store i64 %323, i64* %PC, align 8
  %324 = inttoptr i64 %322 to double*
  %325 = load double, double* %324, align 8
  %326 = fadd double %321, %325
  store double %326, double* %48, align 1, !tbaa !2451
  store i64 0, i64* %33, align 1, !tbaa !2451
  store double %326, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 520) to double*), align 8
  %327 = add i64 %310, 301
  store i64 %327, i64* %PC, align 8, !tbaa !2428
  br label %block_401555

block_4012bc:                                     ; preds = %block_40129b, %block_4012b1
  %328 = phi i64 [ %77, %block_40129b ], [ %407, %block_4012b1 ]
  %329 = bitcast [32 x %union.VectorReg]* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %329, align 1, !tbaa !2453
  %330 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 520) to i64*), align 8
  store i64 %330, i64* %43, align 1, !tbaa !2451
  store double 0.000000e+00, double* %45, align 1, !tbaa !2451
  %331 = add i64 %328, 16
  store i64 %331, i64* %PC, align 8
  %.cast209 = bitcast i64 %330 to double
  %332 = load double, double* %48, align 1
  %333 = fcmp uno double %.cast209, %332
  br i1 %333, label %334, label %344

; <label>:334:                                    ; preds = %block_4012bc
  %335 = fadd double %.cast209, %332
  %336 = bitcast double %335 to i64
  %337 = and i64 %336, 9221120237041090560
  %338 = icmp eq i64 %337, 9218868437227405312
  %339 = and i64 %336, 2251799813685247
  %340 = icmp ne i64 %339, 0
  %341 = and i1 %338, %340
  br i1 %341, label %342, label %350

; <label>:342:                                    ; preds = %334
  %343 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %331, %struct.Memory* %75) #15
  %.pre244 = load i64, i64* %PC, align 8
  %.pre245 = load i8, i8* %16, align 1, !tbaa !2447
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit480

; <label>:344:                                    ; preds = %block_4012bc
  %345 = fcmp ogt double %.cast209, %332
  br i1 %345, label %350, label %346

; <label>:346:                                    ; preds = %344
  %347 = fcmp olt double %.cast209, %332
  br i1 %347, label %350, label %348

; <label>:348:                                    ; preds = %346
  %349 = fcmp oeq double %.cast209, %332
  br i1 %349, label %350, label %354

; <label>:350:                                    ; preds = %348, %346, %344, %334
  %351 = phi i8 [ 0, %344 ], [ 0, %346 ], [ 1, %348 ], [ 1, %334 ]
  %352 = phi i8 [ 0, %344 ], [ 0, %346 ], [ 0, %348 ], [ 1, %334 ]
  %353 = phi i8 [ 0, %344 ], [ 1, %346 ], [ 0, %348 ], [ 1, %334 ]
  store i8 %351, i8* %16, align 1, !tbaa !2454
  store i8 %352, i8* %14, align 1, !tbaa !2454
  store i8 %353, i8* %13, align 1, !tbaa !2454
  br label %354

; <label>:354:                                    ; preds = %350, %348
  %355 = phi i8 [ %351, %350 ], [ %73, %348 ]
  store i8 0, i8* %18, align 1, !tbaa !2454
  store i8 0, i8* %17, align 1, !tbaa !2454
  store i8 0, i8* %15, align 1, !tbaa !2454
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit480

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit480: ; preds = %354, %342
  %356 = phi i8 [ %.pre245, %342 ], [ %355, %354 ]
  %357 = phi i64 [ %.pre244, %342 ], [ %331, %354 ]
  %358 = phi %struct.Memory* [ %343, %342 ], [ %75, %354 ]
  %359 = icmp eq i8 %356, 0
  %.v259 = select i1 %359, i64 52, i64 6
  %360 = add i64 %357, %.v259
  store i64 %360, i64* %PC, align 8, !tbaa !2428
  br i1 %359, label %block_401300, label %block_4012d2

block_40113b:                                     ; preds = %block_401130, %block_40111a
  %361 = phi i64 [ %684, %block_401130 ], [ %77, %block_40111a ]
  %362 = bitcast [32 x %union.VectorReg]* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %362, align 1, !tbaa !2453
  %363 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 520) to i64*), align 8
  store i64 %363, i64* %43, align 1, !tbaa !2451
  store double 0.000000e+00, double* %45, align 1, !tbaa !2451
  %364 = add i64 %361, 16
  store i64 %364, i64* %PC, align 8
  %.cast181 = bitcast i64 %363 to double
  %365 = load double, double* %48, align 1
  %366 = fcmp uno double %.cast181, %365
  br i1 %366, label %367, label %377

; <label>:367:                                    ; preds = %block_40113b
  %368 = fadd double %.cast181, %365
  %369 = bitcast double %368 to i64
  %370 = and i64 %369, 9221120237041090560
  %371 = icmp eq i64 %370, 9218868437227405312
  %372 = and i64 %369, 2251799813685247
  %373 = icmp ne i64 %372, 0
  %374 = and i1 %371, %373
  br i1 %374, label %375, label %383

; <label>:375:                                    ; preds = %367
  %376 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %364, %struct.Memory* %75) #15
  %.pre240 = load i64, i64* %PC, align 8
  %.pre241 = load i8, i8* %16, align 1, !tbaa !2447
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit478

; <label>:377:                                    ; preds = %block_40113b
  %378 = fcmp ogt double %.cast181, %365
  br i1 %378, label %383, label %379

; <label>:379:                                    ; preds = %377
  %380 = fcmp olt double %.cast181, %365
  br i1 %380, label %383, label %381

; <label>:381:                                    ; preds = %379
  %382 = fcmp oeq double %.cast181, %365
  br i1 %382, label %383, label %387

; <label>:383:                                    ; preds = %381, %379, %377, %367
  %384 = phi i8 [ 0, %377 ], [ 0, %379 ], [ 1, %381 ], [ 1, %367 ]
  %385 = phi i8 [ 0, %377 ], [ 0, %379 ], [ 0, %381 ], [ 1, %367 ]
  %386 = phi i8 [ 0, %377 ], [ 1, %379 ], [ 0, %381 ], [ 1, %367 ]
  store i8 %384, i8* %16, align 1, !tbaa !2454
  store i8 %385, i8* %14, align 1, !tbaa !2454
  store i8 %386, i8* %13, align 1, !tbaa !2454
  br label %387

; <label>:387:                                    ; preds = %383, %381
  %388 = phi i8 [ %384, %383 ], [ %73, %381 ]
  store i8 0, i8* %18, align 1, !tbaa !2454
  store i8 0, i8* %17, align 1, !tbaa !2454
  store i8 0, i8* %15, align 1, !tbaa !2454
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit478

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit478: ; preds = %387, %375
  %389 = phi i8 [ %.pre241, %375 ], [ %388, %387 ]
  %390 = phi i64 [ %.pre240, %375 ], [ %364, %387 ]
  %391 = phi %struct.Memory* [ %376, %375 ], [ %75, %387 ]
  %392 = icmp eq i8 %389, 0
  %.v258 = select i1 %392, i64 52, i64 6
  %393 = add i64 %390, %.v258
  store i64 %393, i64* %PC, align 8, !tbaa !2428
  br i1 %392, label %block_40117f, label %block_401151

block_401136:                                     ; preds = %block_401130
  %394 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 520) to double*), align 8
  %395 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1288) to double*), align 8
  %396 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1272) to double*), align 8
  %397 = fdiv double %395, %396
  %398 = fmul double %397, %394
  store double %398, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 520) to double*), align 8
  %399 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to double*), align 16
  %400 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1272) to double*), align 8
  %401 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1288) to double*), align 8
  %402 = fdiv double %400, %401
  store double %402, double* %42, align 1, !tbaa !2451
  store i64 0, i64* %44, align 1, !tbaa !2451
  %403 = fmul double %402, %399
  store double %403, double* %48, align 1, !tbaa !2451
  store i64 0, i64* %33, align 1, !tbaa !2451
  store double %403, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to double*), align 16
  %404 = add i64 %684, 1055
  store i64 %404, i64* %PC, align 8, !tbaa !2428
  br label %block_401555

block_4012b1:                                     ; preds = %block_40129b
  %405 = load i8, i8* %14, align 1, !tbaa !2446
  %406 = icmp ne i8 %405, 0
  %.v263 = select i1 %406, i64 11, i64 6
  %407 = add i64 %77, %.v263
  store i64 %407, i64* %PC, align 8, !tbaa !2428
  %408 = icmp eq i8 %405, 1
  br i1 %408, label %block_4012bc, label %block_4012b7

block_401151:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit478
  %409 = load i8, i8* %14, align 1, !tbaa !2446
  %410 = icmp ne i8 %409, 0
  %.v261 = select i1 %410, i64 46, i64 6
  %411 = add i64 %393, %.v261
  store i64 %411, i64* %PC, align 8, !tbaa !2428
  %412 = icmp eq i8 %409, 1
  br i1 %412, label %block_40117f, label %block_401157

block_4011a8:                                     ; preds = %block_401157, %block_40117f
  %413 = phi i64 [ %733, %block_401157 ], [ %.pre242, %block_40117f ]
  %414 = bitcast [32 x %union.VectorReg]* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %414, align 1, !tbaa !2453
  %415 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1272) to double*), align 8
  %416 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1288) to double*), align 8
  %417 = fdiv double %415, %416
  store double %417, double* %42, align 1, !tbaa !2451
  store i64 0, i64* %44, align 1, !tbaa !2451
  %418 = load i64, i64* %RBP, align 8
  %419 = add i64 %418, -24
  %420 = add i64 %413, 26
  store i64 %420, i64* %PC, align 8
  %421 = inttoptr i64 %419 to double*
  %422 = load double, double* %421, align 8
  %423 = fmul double %417, %422
  %424 = add i64 %418, -32
  %425 = add i64 %413, 31
  store i64 %425, i64* %PC, align 8
  %426 = inttoptr i64 %424 to double*
  store double %423, double* %426, align 8
  %427 = load i64, i64* %PC, align 8
  %428 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to i64*), align 16
  %429 = load i64, i64* %RBP, align 8
  %430 = add i64 %429, -40
  %431 = add i64 %427, 14
  store i64 %431, i64* %PC, align 8
  %432 = inttoptr i64 %430 to i64*
  store i64 %428, i64* %432, align 8
  %433 = load i64, i64* %PC, align 8
  %434 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to i64*), align 16
  store i64 %434, i64* %43, align 1, !tbaa !2451
  store double 0.000000e+00, double* %45, align 1, !tbaa !2451
  %435 = load i64, i64* %RBP, align 8
  %436 = add i64 %435, -24
  %437 = add i64 %433, 14
  store i64 %437, i64* %PC, align 8
  %.cast236 = bitcast i64 %434 to double
  %438 = inttoptr i64 %436 to double*
  %439 = load double, double* %438, align 8
  %440 = fadd double %.cast236, %439
  store double %440, double* %42, align 1, !tbaa !2451
  store i64 0, i64* %44, align 1, !tbaa !2451
  %441 = add i64 %435, -32
  %442 = add i64 %433, 19
  store i64 %442, i64* %PC, align 8
  %443 = inttoptr i64 %441 to double*
  %444 = load double, double* %443, align 8
  %445 = fsub double %440, %444
  store double %445, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to double*), align 16
  %446 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 520) to i64*), align 8
  store i64 %446, i64* %43, align 1, !tbaa !2451
  store double 0.000000e+00, double* %45, align 1, !tbaa !2451
  %447 = add i64 %433, 41
  store i64 %447, i64* %PC, align 8
  %.cast185 = bitcast i64 %446 to double
  %448 = load double, double* %48, align 1
  %449 = fcmp uno double %.cast185, %448
  br i1 %449, label %450, label %460

; <label>:450:                                    ; preds = %block_4011a8
  %451 = fadd double %.cast185, %448
  %452 = bitcast double %451 to i64
  %453 = and i64 %452, 9221120237041090560
  %454 = icmp eq i64 %453, 9218868437227405312
  %455 = and i64 %452, 2251799813685247
  %456 = icmp ne i64 %455, 0
  %457 = and i1 %454, %456
  br i1 %457, label %458, label %466

; <label>:458:                                    ; preds = %450
  %459 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %447, %struct.Memory* %391) #15
  %.pre243 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:460:                                    ; preds = %block_4011a8
  %461 = fcmp ogt double %.cast185, %448
  br i1 %461, label %466, label %462

; <label>:462:                                    ; preds = %460
  %463 = fcmp olt double %.cast185, %448
  br i1 %463, label %466, label %464

; <label>:464:                                    ; preds = %462
  %465 = fcmp oeq double %.cast185, %448
  br i1 %465, label %466, label %470

; <label>:466:                                    ; preds = %464, %462, %460, %450
  %467 = phi i8 [ 0, %460 ], [ 0, %462 ], [ 1, %464 ], [ 1, %450 ]
  %468 = phi i8 [ 0, %460 ], [ 0, %462 ], [ 0, %464 ], [ 1, %450 ]
  %469 = phi i8 [ 0, %460 ], [ 1, %462 ], [ 0, %464 ], [ 1, %450 ]
  store i8 %467, i8* %16, align 1, !tbaa !2454
  store i8 %468, i8* %14, align 1, !tbaa !2454
  store i8 %469, i8* %13, align 1, !tbaa !2454
  br label %470

; <label>:470:                                    ; preds = %466, %464
  store i8 0, i8* %18, align 1, !tbaa !2454
  store i8 0, i8* %17, align 1, !tbaa !2454
  store i8 0, i8* %15, align 1, !tbaa !2454
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %470, %458
  %471 = phi i64 [ %.pre243, %458 ], [ %447, %470 ]
  %472 = phi %struct.Memory* [ %459, %458 ], [ %391, %470 ]
  %473 = add i64 %471, 17
  %474 = add i64 %471, 6
  %475 = load i8, i8* %16, align 1, !tbaa !2447
  %476 = icmp eq i8 %475, 0
  %477 = select i1 %476, i64 %473, i64 %474
  store i64 %477, i64* %PC, align 8, !tbaa !2428
  br i1 %476, label %block_40120f, label %block_401204

block_4012b7:                                     ; preds = %block_4012b1
  %478 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1272) to double*), align 8
  %479 = bitcast i64* %33 to double*
  %480 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1288) to double*), align 8
  %481 = fdiv double %478, %480
  %482 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to i64*), align 16
  store i64 %482, i64* %43, align 1, !tbaa !2451
  store double 0.000000e+00, double* %45, align 1, !tbaa !2451
  %483 = load i64, i64* %RBP, align 8
  %484 = add i64 %483, -96
  %485 = add i64 %407, 441
  store i64 %485, i64* %PC, align 8
  %486 = inttoptr i64 %484 to double*
  store double %481, double* %486, align 8
  %487 = load i64, i64* %PC, align 8
  %488 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %489 = load <2 x i32>, <2 x i32>* %488, align 1
  %490 = bitcast i64* %44 to <2 x i32>*
  %491 = load <2 x i32>, <2 x i32>* %490, align 1
  %492 = extractelement <2 x i32> %489, i32 0
  store i32 %492, i32* %34, align 1, !tbaa !2455
  %493 = extractelement <2 x i32> %489, i32 1
  store i32 %493, i32* %36, align 1, !tbaa !2455
  %494 = extractelement <2 x i32> %491, i32 0
  store i32 %494, i32* %37, align 1, !tbaa !2455
  %495 = extractelement <2 x i32> %491, i32 1
  store i32 %495, i32* %39, align 1, !tbaa !2455
  %496 = add i64 %487, -3680
  %497 = add i64 %487, 8
  %498 = load i64, i64* %RSP, align 8, !tbaa !2428
  %499 = add i64 %498, -8
  %500 = inttoptr i64 %499 to i64*
  store i64 %497, i64* %500, align 8
  store i64 %499, i64* %RSP, align 8, !tbaa !2428
  store i64 %496, i64* %PC, align 8, !tbaa !2428
  %501 = load double, double* %48, align 8, !alias.scope !2472, !noalias !2475
  %502 = load i64, i64* %500, align 8
  store i64 %498, i64* %RSP, align 8, !alias.scope !2472, !noalias !2475
  %503 = tail call double @sin(double %501)
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %505 = bitcast i64* %504 to i8*
  call void @llvm.memset.p0i8.i64(i8* %505, i8 0, i64 24, i32 8, i1 false)
  store double %503, double* %48, align 8, !alias.scope !2472, !noalias !2475
  %506 = load i64, i64* %RBP, align 8
  %507 = add i64 %506, -96
  %508 = add i64 %502, 5
  store i64 %508, i64* %PC, align 8
  %509 = inttoptr i64 %507 to double*
  %510 = load double, double* %509, align 8
  %511 = fmul double %510, %503
  store double %511, double* %42, align 1, !tbaa !2451
  store i64 0, i64* %44, align 1, !tbaa !2451
  %.cast195 = bitcast double %511 to <2 x i32>
  %512 = extractelement <2 x i32> %.cast195, i32 0
  store i32 %512, i32* %34, align 1, !tbaa !2455
  %513 = extractelement <2 x i32> %.cast195, i32 1
  store i32 %513, i32* %36, align 1, !tbaa !2455
  store i32 0, i32* %37, align 1, !tbaa !2455
  store i32 0, i32* %39, align 1, !tbaa !2455
  %514 = add i64 %502, -3672
  %515 = add i64 %502, 17
  store i64 %515, i64* %500, align 8
  store i64 %499, i64* %RSP, align 8, !tbaa !2428
  store i64 %514, i64* %PC, align 8, !tbaa !2428
  %516 = tail call fastcc %struct.Memory* @ext_602690_asin(%struct.State* nonnull %0, %struct.Memory* %75)
  %517 = load i64, i64* %PC, align 8
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
  %518 = load i64, i64* %32, align 1
  %519 = xor i64 %518, -9223372036854775808
  store i64 %519, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  %520 = trunc i64 %518 to i32
  %521 = and i32 %520, 255
  %522 = tail call i32 @llvm.ctpop.i32(i32 %521) #10
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  %525 = xor i8 %524, 1
  store i8 %525, i8* %14, align 1, !tbaa !2446
  %526 = icmp eq i64 %519, 0
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %16, align 1, !tbaa !2447
  %528 = lshr i64 %519, 63
  %529 = trunc i64 %528 to i8
  store i8 %529, i8* %17, align 1, !tbaa !2448
  store i8 0, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %15, align 1, !tbaa !2450
  %530 = load i64, i64* %RBP, align 8
  %531 = add i64 %530, -16
  %532 = add i64 %517, 28
  store i64 %532, i64* %PC, align 8
  %533 = inttoptr i64 %531 to i64*
  store i64 %519, i64* %533, align 8
  %534 = load i64, i64* %PC, align 8
  %535 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 520) to i64*), align 8
  store i64 %535, i64* %32, align 1, !tbaa !2451
  store double 0.000000e+00, double* %479, align 1, !tbaa !2451
  %536 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1288) to i64*), align 8
  store i64 %536, i64* %43, align 1, !tbaa !2451
  store double 0.000000e+00, double* %45, align 1, !tbaa !2451
  %537 = load i64, i64* %RBP, align 8
  %538 = add i64 %537, -16
  %539 = add i64 %534, 23
  store i64 %539, i64* %PC, align 8
  %540 = inttoptr i64 %538 to i64*
  %541 = load i64, i64* %540, align 8
  %542 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %5, i64 0, i32 0, i32 0, i32 0, i64 0
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %544 = bitcast i64* %543 to double*
  %545 = load i64, i64* %RAX, align 8
  %546 = xor i64 %545, %541
  store i64 %546, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  %547 = trunc i64 %546 to i32
  %548 = and i32 %547, 255
  %549 = tail call i32 @llvm.ctpop.i32(i32 %548) #10
  %550 = trunc i32 %549 to i8
  %551 = and i8 %550, 1
  %552 = xor i8 %551, 1
  store i8 %552, i8* %14, align 1, !tbaa !2446
  %553 = icmp eq i64 %546, 0
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %16, align 1, !tbaa !2447
  %555 = lshr i64 %546, 63
  %556 = trunc i64 %555 to i8
  store i8 %556, i8* %17, align 1, !tbaa !2448
  store i8 0, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %15, align 1, !tbaa !2450
  store i64 %546, i64* %542, align 1, !tbaa !2428
  store i64 0, i64* %543, align 1, !tbaa !2428
  %557 = add i64 %537, -104
  %558 = add i64 %534, 41
  store i64 %558, i64* %PC, align 8
  %559 = inttoptr i64 %557 to i64*
  store i64 %535, i64* %559, align 8
  %560 = load i64, i64* %PC, align 8
  %561 = bitcast %union.VectorReg* %5 to <2 x i32>*
  %562 = load <2 x i32>, <2 x i32>* %561, align 1
  %563 = bitcast i64* %543 to <2 x i32>*
  %564 = load <2 x i32>, <2 x i32>* %563, align 1
  %565 = extractelement <2 x i32> %562, i32 0
  store i32 %565, i32* %34, align 1, !tbaa !2455
  %566 = extractelement <2 x i32> %562, i32 1
  store i32 %566, i32* %36, align 1, !tbaa !2455
  %567 = extractelement <2 x i32> %564, i32 0
  store i32 %567, i32* %37, align 1, !tbaa !2455
  %568 = extractelement <2 x i32> %564, i32 1
  store i32 %568, i32* %39, align 1, !tbaa !2455
  %569 = load i64, i64* %RBP, align 8
  %570 = add i64 %569, -112
  %571 = load i64, i64* %RAX, align 8
  %572 = add i64 %560, 7
  store i64 %572, i64* %PC, align 8
  %573 = inttoptr i64 %570 to i64*
  store i64 %571, i64* %573, align 8
  %574 = load i64, i64* %RBP, align 8
  %575 = add i64 %574, -120
  %576 = load i64, i64* %PC, align 8
  %577 = add i64 %576, 5
  store i64 %577, i64* %PC, align 8
  %578 = load i64, i64* %43, align 1
  %579 = inttoptr i64 %575 to i64*
  store i64 %578, i64* %579, align 8
  %580 = load i64, i64* %PC, align 8
  %581 = add i64 %580, -3834
  %582 = add i64 %580, 5
  %583 = load i64, i64* %RSP, align 8, !tbaa !2428
  %584 = add i64 %583, -8
  %585 = inttoptr i64 %584 to i64*
  store i64 %582, i64* %585, align 8
  store i64 %584, i64* %RSP, align 8, !tbaa !2428
  store i64 %581, i64* %PC, align 8, !tbaa !2428
  %586 = load double, double* %48, align 8, !alias.scope !2477, !noalias !2480
  %587 = load i64, i64* %585, align 8
  store i64 %583, i64* %RSP, align 8, !alias.scope !2477, !noalias !2480
  %588 = tail call double @cos(double %586)
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %590 = bitcast i64* %589 to i8*
  call void @llvm.memset.p0i8.i64(i8* %590, i8 0, i64 24, i32 8, i1 false)
  store double %588, double* %48, align 8, !alias.scope !2477, !noalias !2480
  %591 = load i64, i64* %RBP, align 8
  %592 = add i64 %591, -120
  %593 = add i64 %587, 5
  store i64 %593, i64* %PC, align 8
  %594 = inttoptr i64 %592 to double*
  %595 = load double, double* %594, align 8
  %596 = fmul double %595, %588
  store double %596, double* %42, align 1, !tbaa !2451
  store i64 0, i64* %44, align 1, !tbaa !2451
  %597 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1272) to i64*), align 8
  %598 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to i64*), align 16
  store i64 %598, i64* %542, align 1, !tbaa !2451
  store double 0.000000e+00, double* %544, align 1, !tbaa !2451
  %599 = add i64 %591, -128
  %600 = add i64 %587, 32
  store i64 %600, i64* %PC, align 8
  %601 = inttoptr i64 %599 to i64*
  store i64 %597, i64* %601, align 8
  %602 = load i64, i64* %PC, align 8
  %603 = load <2 x i32>, <2 x i32>* %561, align 1
  %604 = load <2 x i32>, <2 x i32>* %563, align 1
  %605 = extractelement <2 x i32> %603, i32 0
  store i32 %605, i32* %34, align 1, !tbaa !2455
  %606 = extractelement <2 x i32> %603, i32 1
  store i32 %606, i32* %36, align 1, !tbaa !2455
  %607 = extractelement <2 x i32> %604, i32 0
  store i32 %607, i32* %37, align 1, !tbaa !2455
  %608 = extractelement <2 x i32> %604, i32 1
  store i32 %608, i32* %39, align 1, !tbaa !2455
  %609 = load i64, i64* %RBP, align 8
  %610 = add i64 %609, -136
  %611 = add i64 %602, 11
  store i64 %611, i64* %PC, align 8
  %612 = load i64, i64* %43, align 1
  %613 = inttoptr i64 %610 to i64*
  store i64 %612, i64* %613, align 8
  %614 = load i64, i64* %PC, align 8
  %615 = add i64 %614, -3882
  %616 = add i64 %614, 5
  %617 = load i64, i64* %RSP, align 8, !tbaa !2428
  %618 = add i64 %617, -8
  %619 = inttoptr i64 %618 to i64*
  store i64 %616, i64* %619, align 8
  store i64 %618, i64* %RSP, align 8, !tbaa !2428
  store i64 %615, i64* %PC, align 8, !tbaa !2428
  %620 = load double, double* %48, align 8, !alias.scope !2482, !noalias !2485
  %621 = load i64, i64* %619, align 8
  store i64 %617, i64* %RSP, align 8, !alias.scope !2482, !noalias !2485
  %622 = tail call double @cos(double %620)
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %624 = bitcast i64* %623 to i8*
  call void @llvm.memset.p0i8.i64(i8* %624, i8 0, i64 24, i32 8, i1 false)
  store double %622, double* %48, align 8, !alias.scope !2482, !noalias !2485
  %625 = load i64, i64* %RBP, align 8
  %626 = add i64 %625, -128
  %627 = add i64 %621, 5
  store i64 %627, i64* %PC, align 8
  %628 = inttoptr i64 %626 to double*
  %629 = load double, double* %628, align 8
  %630 = fmul double %629, %622
  store double %630, double* %42, align 1, !tbaa !2451
  store i64 0, i64* %44, align 1, !tbaa !2451
  %631 = add i64 %625, -136
  %632 = add i64 %621, 17
  store i64 %632, i64* %PC, align 8
  %633 = inttoptr i64 %631 to double*
  %634 = load double, double* %633, align 8
  %635 = fdiv double %634, %630
  store double %635, double* %48, align 1, !tbaa !2451
  store i64 0, i64* %33, align 1, !tbaa !2451
  %636 = add i64 %625, -104
  %637 = add i64 %621, 26
  store i64 %637, i64* %PC, align 8
  %638 = inttoptr i64 %636 to double*
  %639 = load double, double* %638, align 8
  %640 = fmul double %639, %635
  store double %640, double* %42, align 1, !tbaa !2451
  store i64 0, i64* %44, align 1, !tbaa !2451
  store double %640, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 520) to double*), align 8
  %641 = add i64 %625, -16
  %642 = add i64 %621, 44
  store i64 %642, i64* %PC, align 8
  %643 = inttoptr i64 %641 to i64*
  %644 = load i64, i64* %643, align 8
  store i64 %644, i64* %32, align 1, !tbaa !2451
  store double 0.000000e+00, double* %479, align 1, !tbaa !2451
  store i64 %644, i64* %RAX, align 1, !tbaa !2428
  %645 = add i64 %625, -112
  %646 = add i64 %621, 53
  store i64 %646, i64* %PC, align 8
  %647 = inttoptr i64 %645 to i64*
  %648 = load i64, i64* %647, align 8
  store i64 %648, i64* %RCX, align 8, !tbaa !2428
  %649 = xor i64 %644, %648
  store i64 %649, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  %650 = trunc i64 %649 to i32
  %651 = and i32 %650, 255
  %652 = tail call i32 @llvm.ctpop.i32(i32 %651) #10
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  %655 = xor i8 %654, 1
  store i8 %655, i8* %14, align 1, !tbaa !2446
  %656 = icmp eq i64 %649, 0
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %16, align 1, !tbaa !2447
  %658 = lshr i64 %649, 63
  %659 = trunc i64 %658 to i8
  store i8 %659, i8* %17, align 1, !tbaa !2448
  store i8 0, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %15, align 1, !tbaa !2450
  store i64 %649, i64* %32, align 1, !tbaa !2428
  store i64 0, i64* %33, align 1, !tbaa !2428
  %660 = add i64 %621, 70
  store i64 %660, i64* %PC, align 8
  store i64 %649, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to i64*), align 16
  br label %block_401555

block_401226:                                     ; preds = %block_40120a, %block_40120f
  %.pre-phi256 = phi double* [ %.pre255, %block_40120a ], [ %668, %block_40120f ]
  %661 = phi i64 [ %677, %block_40120a ], [ %676, %block_40120f ]
  %662 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1264) to double*), align 16
  store double 0.000000e+00, double* %.pre-phi256, align 1, !tbaa !2451
  %663 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to double*), align 16
  %664 = fdiv double %662, %663
  store double %664, double* %48, align 1, !tbaa !2451
  store i64 0, i64* %33, align 1, !tbaa !2451
  store double %664, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 520) to double*), align 8
  %665 = add i64 %661, 815
  store i64 %665, i64* %PC, align 8, !tbaa !2428
  br label %block_401555

block_40111a:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit479
  br i1 %76, label %block_40113b, label %block_401130

block_40120f:                                     ; preds = %block_401204, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %666 = phi i64 [ %680, %block_401204 ], [ %473, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ]
  %667 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 520) to i64*), align 8
  store i64 %667, i64* %32, align 1, !tbaa !2451
  %668 = bitcast i64* %33 to double*
  store double 0.000000e+00, double* %668, align 1, !tbaa !2451
  %669 = load i64, i64* %RBP, align 8
  %670 = add i64 %669, -40
  %671 = add i64 %666, 14
  store i64 %671, i64* %PC, align 8
  %672 = bitcast i64 %667 to double
  %673 = inttoptr i64 %670 to double*
  %674 = load double, double* %673, align 8
  %675 = fmul double %672, %674
  store double %675, double* %48, align 1, !tbaa !2451
  store i64 0, i64* %33, align 1, !tbaa !2451
  %676 = add i64 %666, 23
  store i64 %676, i64* %PC, align 8
  store double %675, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1264) to double*), align 16
  br label %block_401226

block_40129b:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit479
  br i1 %76, label %block_4012bc, label %block_4012b1

block_40120a:                                     ; preds = %block_401204
  %677 = add i64 %680, 28
  store i64 %677, i64* %PC, align 8, !tbaa !2428
  %.pre255 = bitcast i64* %33 to double*
  br label %block_401226

block_401204:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %678 = load i8, i8* %14, align 1, !tbaa !2446
  %679 = icmp ne i8 %678, 0
  %.v262 = select i1 %679, i64 11, i64 6
  %680 = add i64 %477, %.v262
  store i64 %680, i64* %PC, align 8, !tbaa !2428
  %681 = icmp eq i8 %678, 1
  br i1 %681, label %block_40120f, label %block_40120a

block_401130:                                     ; preds = %block_40111a
  %682 = load i8, i8* %14, align 1, !tbaa !2446
  %683 = icmp ne i8 %682, 0
  %.v260 = select i1 %683, i64 11, i64 6
  %684 = add i64 %77, %.v260
  store i64 %684, i64* %PC, align 8, !tbaa !2428
  %685 = icmp eq i8 %682, 1
  br i1 %685, label %block_40113b, label %block_401136

block_401300:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit480, %block_4012d2
  %686 = phi i64 [ %360, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit480 ], [ %101, %block_4012d2 ]
  %687 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 520) to double*), align 8
  %688 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1280) to double*), align 16
  %689 = fsub double %687, %688
  %690 = fdiv double %689, %688
  %691 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to i64*), align 16
  store i64 %691, i64* %43, align 1, !tbaa !2451
  store double 0.000000e+00, double* %45, align 1, !tbaa !2451
  %692 = load i64, i64* %RBP, align 8
  %693 = add i64 %692, -56
  %694 = add i64 %686, 41
  store i64 %694, i64* %PC, align 8
  %695 = inttoptr i64 %693 to double*
  store double %690, double* %695, align 8
  %696 = load i64, i64* %PC, align 8
  %697 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %698 = load <2 x i32>, <2 x i32>* %697, align 1
  %699 = bitcast i64* %44 to <2 x i32>*
  %700 = load <2 x i32>, <2 x i32>* %699, align 1
  %701 = extractelement <2 x i32> %698, i32 0
  store i32 %701, i32* %34, align 1, !tbaa !2455
  %702 = extractelement <2 x i32> %698, i32 1
  store i32 %702, i32* %36, align 1, !tbaa !2455
  %703 = extractelement <2 x i32> %700, i32 0
  store i32 %703, i32* %37, align 1, !tbaa !2455
  %704 = extractelement <2 x i32> %700, i32 1
  store i32 %704, i32* %39, align 1, !tbaa !2455
  %705 = add i64 %696, -3353
  %706 = add i64 %696, 8
  %707 = load i64, i64* %RSP, align 8, !tbaa !2428
  %708 = add i64 %707, -8
  %709 = inttoptr i64 %708 to i64*
  store i64 %706, i64* %709, align 8
  store i64 %708, i64* %RSP, align 8, !tbaa !2428
  store i64 %705, i64* %PC, align 8, !tbaa !2428
  %710 = load double, double* %48, align 8, !alias.scope !2487, !noalias !2490
  %711 = load i64, i64* %709, align 8
  store i64 %707, i64* %RSP, align 8, !alias.scope !2487, !noalias !2490
  %712 = tail call double @sin(double %710)
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %714 = bitcast i64* %713 to i8*
  call void @llvm.memset.p0i8.i64(i8* %714, i8 0, i64 24, i32 8, i1 false)
  store double %712, double* %48, align 8, !alias.scope !2487, !noalias !2490
  %715 = load i64, i64* %RBP, align 8
  %716 = add i64 %715, -56
  %717 = add i64 %711, 5
  store i64 %717, i64* %PC, align 8
  %718 = inttoptr i64 %716 to double*
  %719 = load double, double* %718, align 8
  %720 = fmul double %719, %712
  store double %720, double* %42, align 1, !tbaa !2451
  store i64 0, i64* %44, align 1, !tbaa !2451
  %721 = add i64 %715, -24
  %722 = add i64 %711, 14
  store i64 %722, i64* %PC, align 8
  %723 = inttoptr i64 %721 to double*
  store double %720, double* %723, align 8
  %.pre246 = load i64, i64* %PC, align 8
  br label %block_40133f

block_401157:                                     ; preds = %block_401151
  store i32 0, i32* %34, align 1, !tbaa !2453
  store i32 0, i32* %36, align 1, !tbaa !2453
  %724 = load i64, i64* %32, align 1
  store i64 %724, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to i64*), align 16
  %725 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1264) to double*), align 16
  %726 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1280) to double*), align 16
  %727 = fdiv double %725, %726
  store double %727, double* %48, align 1, !tbaa !2451
  store i64 0, i64* %33, align 1, !tbaa !2451
  %728 = load i64, i64* %RBP, align 8
  %729 = add i64 %728, -24
  %730 = add i64 %411, 35
  store i64 %730, i64* %PC, align 8
  %731 = inttoptr i64 %729 to double*
  store double %727, double* %731, align 8
  %732 = load i64, i64* %PC, align 8
  %733 = add i64 %732, 46
  store i64 %733, i64* %PC, align 8, !tbaa !2428
  br label %block_4011a8
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400730_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400730:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %5 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %10 = load i64, i64* %RBP, align 8
  %11 = add i64 %1, 1
  store i64 %11, i64* %PC, align 8
  %12 = load i64, i64* %RSP, align 8, !tbaa !2428
  %13 = add i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64 %10, i64* %14, align 8
  %15 = load i64, i64* %PC, align 8
  store i64 %13, i64* %RBP, align 8, !tbaa !2428
  %16 = add i64 %12, -200
  store i64 %16, i64* %RSP, align 8, !tbaa !2428
  %17 = icmp ult i64 %13, 192
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1, !tbaa !2432
  %20 = trunc i64 %16 to i32
  %21 = and i32 %20, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21) #10
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1, !tbaa !2446
  %27 = xor i64 %13, %16
  %28 = lshr i64 %27, 4
  %29 = trunc i64 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1, !tbaa !2450
  %32 = icmp eq i64 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1, !tbaa !2447
  %35 = lshr i64 %16, 63
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1, !tbaa !2448
  %38 = lshr i64 %13, 63
  %39 = xor i64 %35, %38
  %40 = add nuw nsw i64 %39, %38
  %41 = icmp eq i64 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1, !tbaa !2449
  %44 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 8) to i64*), align 8
  %45 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %44, i64* %45, align 1, !tbaa !2451
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %47 = bitcast i64* %46 to double*
  store double 0.000000e+00, double* %47, align 1, !tbaa !2451
  %48 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 16) to i64*), align 16
  %49 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %48, i64* %49, align 1, !tbaa !2451
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %51 = bitcast i64* %50 to double*
  store double 0.000000e+00, double* %51, align 1, !tbaa !2451
  %52 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 24) to i64*), align 8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %52, i64* %53, align 1, !tbaa !2451
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %55 = bitcast i64* %54 to double*
  store double 0.000000e+00, double* %55, align 1, !tbaa !2451
  %56 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 32) to i64*), align 16
  %57 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %56, i64* %57, align 1, !tbaa !2451
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %59 = bitcast i64* %58 to double*
  store double 0.000000e+00, double* %59, align 1, !tbaa !2451
  %60 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 40) to i64*), align 8
  %61 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %9, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %60, i64* %61, align 1, !tbaa !2451
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %63 = bitcast i64* %62 to double*
  store double 0.000000e+00, double* %63, align 1, !tbaa !2451
  %64 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 48) to i64*), align 16
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 0
  store i64 %64, i64* %65, align 1, !tbaa !2451
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %67 = bitcast i64* %66 to double*
  store double 0.000000e+00, double* %67, align 1, !tbaa !2451
  %68 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 56) to i64*), align 8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 0
  store i64 %68, i64* %69, align 1, !tbaa !2451
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %71 = bitcast i64* %70 to double*
  store double 0.000000e+00, double* %71, align 1, !tbaa !2451
  %72 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 64) to i64*), align 16
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 0
  store i64 %72, i64* %73, align 1, !tbaa !2451
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
  %75 = bitcast i64* %74 to double*
  store double 0.000000e+00, double* %75, align 1, !tbaa !2451
  %76 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 72) to i64*), align 8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 0
  store i64 %76, i64* %77, align 1, !tbaa !2451
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1
  %79 = bitcast i64* %78 to double*
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %80 = load i64, i64* %RBP, align 8
  %81 = add i64 %80, -4
  %82 = add i64 %15, 90
  store i64 %82, i64* %PC, align 8
  %83 = inttoptr i64 %81 to i32*
  store i32 0, i32* %83, align 4
  %84 = load i64, i64* %RBP, align 8
  %85 = add i64 %84, -8
  %86 = load i32, i32* %EDI, align 4
  %87 = load i64, i64* %PC, align 8
  %88 = add i64 %87, 3
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %85 to i32*
  store i32 %86, i32* %89, align 4
  %90 = load i64, i64* %RBP, align 8
  %91 = add i64 %90, -16
  %92 = load i64, i64* %RSI, align 8
  %93 = load i64, i64* %PC, align 8
  %94 = add i64 %93, 4
  store i64 %94, i64* %PC, align 8
  %95 = inttoptr i64 %91 to i64*
  store i64 %92, i64* %95, align 8
  %96 = load i64, i64* %PC, align 8
  %97 = load i64, i64* %77, align 1
  store i64 %97, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 24) to i64*), align 8
  %98 = load i64, i64* %73, align 1
  store i64 %98, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 32) to i64*), align 16
  %99 = load i64, i64* %69, align 1
  store i64 %99, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 40) to i64*), align 8
  %100 = load i64, i64* %65, align 1
  store i64 %100, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 48) to i64*), align 16
  %101 = load i64, i64* %61, align 1
  store i64 %101, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 56) to i64*), align 8
  %102 = load i64, i64* %57, align 1
  store i64 %102, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 64) to i64*), align 16
  %103 = load i64, i64* %53, align 1
  store i64 %103, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 72) to i64*), align 8
  %104 = load i64, i64* %49, align 1
  store i64 %104, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 80) to i64*), align 16
  store i32 1000000, i32* bitcast (%niter_type* @niter to i32*), align 16
  %105 = load i64, i64* %45, align 1
  store i64 %105, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 88) to i64*), align 8
  store i16 4, i16* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 96) to i16*), align 16
  %106 = load i64, i64* %RBP, align 8
  %107 = add i64 %106, -20
  %108 = add i64 %96, 110
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %107 to i32*
  store i32 0, i32* %109, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400800

block_400878:                                     ; preds = %block_40081a
  %110 = add i64 %1055, -20
  %111 = add i64 %1083, 8
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %110 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = add i32 %113, 1
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RAX, align 8, !tbaa !2428
  %116 = icmp eq i32 %113, -1
  %117 = icmp eq i32 %114, 0
  %118 = or i1 %116, %117
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %19, align 1, !tbaa !2432
  %120 = and i32 %114, 255
  %121 = tail call i32 @llvm.ctpop.i32(i32 %120) #10
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  %124 = xor i8 %123, 1
  store i8 %124, i8* %26, align 1, !tbaa !2446
  %125 = xor i32 %114, %113
  %126 = lshr i32 %125, 4
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  store i8 %128, i8* %31, align 1, !tbaa !2450
  %129 = zext i1 %117 to i8
  store i8 %129, i8* %34, align 1, !tbaa !2447
  %130 = lshr i32 %114, 31
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %37, align 1, !tbaa !2448
  %132 = lshr i32 %113, 31
  %133 = xor i32 %130, %132
  %134 = add nuw nsw i32 %133, %130
  %135 = icmp eq i32 %134, 2
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %43, align 1, !tbaa !2449
  %137 = add i64 %1083, 14
  store i64 %137, i64* %PC, align 8
  store i32 %114, i32* %112, align 4
  %138 = load i64, i64* %PC, align 8
  %139 = add i64 %138, -134
  store i64 %139, i64* %PC, align 8, !tbaa !2428
  br label %block_400800

block_400ed5:                                     ; preds = %block_400d29, %block_400ebe
  %140 = phi i64 [ %1203, %block_400d29 ], [ %.pre94, %block_400ebe ]
  %MEMORY.0 = phi %struct.Memory* [ %1191, %block_400d29 ], [ %433, %block_400ebe ]
  %141 = load i64, i64* %RBP, align 8
  %142 = add i64 %141, -20
  %143 = add i64 %140, 8
  store i64 %143, i64* %PC, align 8
  %144 = inttoptr i64 %142 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = add i32 %145, 1
  %147 = zext i32 %146 to i64
  store i64 %147, i64* %RAX, align 8, !tbaa !2428
  %148 = icmp eq i32 %145, -1
  %149 = icmp eq i32 %146, 0
  %150 = or i1 %148, %149
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %19, align 1, !tbaa !2432
  %152 = and i32 %146, 255
  %153 = tail call i32 @llvm.ctpop.i32(i32 %152) #10
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  store i8 %156, i8* %26, align 1, !tbaa !2446
  %157 = xor i32 %146, %145
  %158 = lshr i32 %157, 4
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  store i8 %160, i8* %31, align 1, !tbaa !2450
  %161 = zext i1 %149 to i8
  store i8 %161, i8* %34, align 1, !tbaa !2447
  %162 = lshr i32 %146, 31
  %163 = trunc i32 %162 to i8
  store i8 %163, i8* %37, align 1, !tbaa !2448
  %164 = lshr i32 %145, 31
  %165 = xor i32 %162, %164
  %166 = add nuw nsw i32 %165, %162
  %167 = icmp eq i32 %166, 2
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %43, align 1, !tbaa !2449
  %169 = add i64 %140, 14
  store i64 %169, i64* %PC, align 8
  store i32 %146, i32* %144, align 4
  %170 = load i64, i64* %PC, align 8
  %171 = add i64 %170, -452
  store i64 %171, i64* %PC, align 8, !tbaa !2428
  br label %block_400d1f

block_4009ce:                                     ; preds = %block_400937
  store i64 3, i64* %RDI, align 8, !tbaa !2428
  %172 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 112) to double*), align 16
  store i16 0, i16* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 512) to i16*), align 16
  %173 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 88) to double*), align 8
  %174 = fdiv double %173, %172
  store double %174, double* %1408, align 1, !tbaa !2451
  store i64 0, i64* %50, align 1, !tbaa !2451
  %.cast62 = bitcast double %174 to <2 x i32>
  %175 = extractelement <2 x i32> %.cast62, i32 0
  store i32 %175, i32* %1439, align 1, !tbaa !2455
  %176 = extractelement <2 x i32> %.cast62, i32 1
  store i32 %176, i32* %1442, align 1, !tbaa !2455
  store i32 0, i32* %1444, align 1, !tbaa !2455
  store i32 0, i32* %1447, align 1, !tbaa !2455
  %177 = add i64 %485, 1426
  %178 = add i64 %485, 44
  %179 = load i64, i64* %RSP, align 8, !tbaa !2428
  %180 = add i64 %179, -8
  %181 = inttoptr i64 %180 to i64*
  store i64 %178, i64* %181, align 8
  store i64 %180, i64* %RSP, align 8, !tbaa !2428
  store i64 %177, i64* %PC, align 8, !tbaa !2428
  %182 = tail call %struct.Memory* @sub_400f60_trace_line(%struct.State* nonnull %0, i64 %177, %struct.Memory* %MEMORY.2)
  %183 = load i64, i64* %PC, align 8
  store i64 6, i64* %RDI, align 8, !tbaa !2428
  %184 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 112) to i64*), align 16
  store i64 %184, i64* %45, align 1, !tbaa !2451
  %185 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 520) to i64*), align 8
  %186 = load i64, i64* %RBP, align 8
  %187 = add i64 %186, -48
  %188 = add i64 %183, 27
  store i64 %188, i64* %PC, align 8
  %189 = inttoptr i64 %187 to i64*
  store i64 %185, i64* %189, align 8
  %190 = load i64, i64* %PC, align 8
  %191 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 88) to double*), align 8
  %192 = load double, double* %1407, align 1
  %193 = fdiv double %191, %192
  store double %193, double* %1408, align 1, !tbaa !2451
  store i64 0, i64* %50, align 1, !tbaa !2451
  %.cast64 = bitcast double %193 to <2 x i32>
  %194 = extractelement <2 x i32> %.cast64, i32 0
  store i32 %194, i32* %1439, align 1, !tbaa !2455
  %195 = extractelement <2 x i32> %.cast64, i32 1
  store i32 %195, i32* %1442, align 1, !tbaa !2455
  store i32 0, i32* %1444, align 1, !tbaa !2455
  store i32 0, i32* %1447, align 1, !tbaa !2455
  %196 = load i64, i64* %RBP, align 8
  %197 = add i64 %196, -76
  %198 = load i32, i32* %EAX, align 4
  %199 = add i64 %190, 19
  store i64 %199, i64* %PC, align 8
  %200 = inttoptr i64 %197 to i32*
  store i32 %198, i32* %200, align 4
  %201 = load i64, i64* %PC, align 8
  %202 = add i64 %201, 1336
  %203 = add i64 %201, 5
  %204 = load i64, i64* %RSP, align 8, !tbaa !2428
  %205 = add i64 %204, -8
  %206 = inttoptr i64 %205 to i64*
  store i64 %203, i64* %206, align 8
  store i64 %205, i64* %RSP, align 8, !tbaa !2428
  store i64 %202, i64* %PC, align 8, !tbaa !2428
  %207 = tail call %struct.Memory* @sub_400f60_trace_line(%struct.State* nonnull %0, i64 %202, %struct.Memory* %182)
  %208 = load i64, i64* %PC, align 8
  %209 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 88) to i64*), align 8
  store i64 %209, i64* %45, align 1, !tbaa !2451
  %210 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 96) to i64*), align 16
  store i64 %210, i64* %49, align 1, !tbaa !2451
  store double 0.000000e+00, double* %51, align 1, !tbaa !2451
  %211 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 104) to i64*), align 8
  store i64 %211, i64* %53, align 1, !tbaa !2451
  store double 0.000000e+00, double* %55, align 1, !tbaa !2451
  %212 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 520) to i64*), align 8
  %213 = load i64, i64* %RBP, align 8
  %214 = add i64 %213, -40
  %215 = add i64 %208, 38
  store i64 %215, i64* %PC, align 8
  %216 = inttoptr i64 %214 to i64*
  store i64 %212, i64* %216, align 8
  %217 = load i64, i64* %PC, align 8
  %218 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 544) to double*), align 16
  %219 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 528) to double*), align 16
  %220 = fsub double %218, %219
  store double %220, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 568) to double*), align 8
  %221 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 544) to double*), align 16
  %222 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 552) to double*), align 8
  %223 = fmul double %221, %222
  store double %223, double* %1409, align 1, !tbaa !2451
  store i64 0, i64* %58, align 1, !tbaa !2451
  %224 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 536) to i64*), align 8
  store i64 %224, i64* %61, align 1, !tbaa !2451
  store double 0.000000e+00, double* %63, align 1, !tbaa !2451
  %225 = load i64, i64* %RBP, align 8
  %226 = add i64 %225, -88
  %227 = add i64 %217, 59
  store i64 %227, i64* %PC, align 8
  %228 = load i64, i64* %45, align 1
  %229 = inttoptr i64 %226 to i64*
  store i64 %228, i64* %229, align 8
  %230 = load i64, i64* %PC, align 8
  %231 = load <2 x i32>, <2 x i32>* %1492, align 1
  %232 = load <2 x i32>, <2 x i32>* %1493, align 1
  %233 = extractelement <2 x i32> %231, i32 0
  store i32 %233, i32* %1439, align 1, !tbaa !2455
  %234 = extractelement <2 x i32> %231, i32 1
  store i32 %234, i32* %1442, align 1, !tbaa !2455
  %235 = extractelement <2 x i32> %232, i32 0
  store i32 %235, i32* %1444, align 1, !tbaa !2455
  %236 = extractelement <2 x i32> %232, i32 1
  store i32 %236, i32* %1447, align 1, !tbaa !2455
  %237 = load i64, i64* %RBP, align 8
  %238 = add i64 %237, -92
  %239 = load i32, i32* %EAX, align 4
  %240 = add i64 %230, 6
  store i64 %240, i64* %PC, align 8
  %241 = inttoptr i64 %238 to i32*
  store i32 %239, i32* %241, align 4
  %242 = load i64, i64* %RBP, align 8
  %243 = add i64 %242, -104
  %244 = load i64, i64* %PC, align 8
  %245 = add i64 %244, 5
  store i64 %245, i64* %PC, align 8
  %246 = load i64, i64* %57, align 1
  %247 = inttoptr i64 %243 to i64*
  store i64 %246, i64* %247, align 8
  %248 = load i64, i64* %RBP, align 8
  %249 = add i64 %248, -112
  %250 = load i64, i64* %PC, align 8
  %251 = add i64 %250, 5
  store i64 %251, i64* %PC, align 8
  %252 = load i64, i64* %49, align 1
  %253 = inttoptr i64 %249 to i64*
  store i64 %252, i64* %253, align 8
  %254 = load i64, i64* %RBP, align 8
  %255 = add i64 %254, -120
  %256 = load i64, i64* %PC, align 8
  %257 = add i64 %256, 5
  store i64 %257, i64* %PC, align 8
  %258 = load i64, i64* %53, align 1
  %259 = inttoptr i64 %255 to i64*
  store i64 %258, i64* %259, align 8
  %260 = load i64, i64* %PC, align 8
  %261 = add i64 %260, -1171
  %262 = add i64 %260, 5
  %263 = load i64, i64* %RSP, align 8, !tbaa !2428
  %264 = add i64 %263, -8
  %265 = inttoptr i64 %264 to i64*
  store i64 %262, i64* %265, align 8
  store i64 %264, i64* %RSP, align 8, !tbaa !2428
  store i64 %261, i64* %PC, align 8, !tbaa !2428
  %266 = load double, double* %1407, align 8, !alias.scope !2492, !noalias !2495
  %267 = load i64, i64* %265, align 8
  store i64 %263, i64* %RSP, align 8, !alias.scope !2492, !noalias !2495
  %268 = tail call double @sin(double %266)
  call void @llvm.memset.p0i8.i64(i8* %1495, i8 0, i64 16, i32 8, i1 false)
  %269 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 528) to double*), align 16
  %270 = fmul double %268, %269
  store double %270, double* %1407, align 1, !tbaa !2451
  store i64 0, i64* %46, align 1, !tbaa !2451
  %271 = load i64, i64* %RBP, align 8
  %272 = add i64 %271, -104
  %273 = add i64 %267, 14
  store i64 %273, i64* %PC, align 8
  %274 = inttoptr i64 %272 to double*
  %275 = load double, double* %274, align 8
  %276 = fdiv double %275, %270
  store double %276, double* %1408, align 1, !tbaa !2451
  store i64 0, i64* %50, align 1, !tbaa !2451
  %277 = add i64 %271, -120
  %278 = add i64 %267, 23
  store i64 %278, i64* %PC, align 8
  %279 = inttoptr i64 %277 to double*
  %280 = load double, double* %279, align 8
  %281 = fsub double %280, %276
  store double %281, double* %1407, align 1, !tbaa !2451
  store i64 0, i64* %46, align 1, !tbaa !2451
  store double %281, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 576) to double*), align 16
  %282 = add i64 %271, -40
  %283 = add i64 %267, 41
  store i64 %283, i64* %PC, align 8
  %284 = inttoptr i64 %282 to i64*
  %285 = load i64, i64* %284, align 8
  store i64 %285, i64* %45, align 1, !tbaa !2451
  store double 0.000000e+00, double* %47, align 1, !tbaa !2451
  %286 = add i64 %271, -48
  %287 = add i64 %267, 46
  store i64 %287, i64* %PC, align 8
  %288 = bitcast i64 %285 to double
  %289 = inttoptr i64 %286 to double*
  %290 = load double, double* %289, align 8
  %291 = fsub double %288, %290
  store double %291, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 584) to double*), align 8
  %292 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 536) to i64*), align 8
  store i64 %292, i64* %45, align 1, !tbaa !2451
  store double 0.000000e+00, double* %47, align 1, !tbaa !2451
  %293 = add i64 %267, -1176
  %294 = add i64 %267, 69
  store i64 %294, i64* %265, align 8
  store i64 %264, i64* %RSP, align 8, !tbaa !2428
  store i64 %293, i64* %PC, align 8, !tbaa !2428
  %295 = load double, double* %1407, align 8, !alias.scope !2497, !noalias !2500
  %296 = load i64, i64* %265, align 8
  store i64 %263, i64* %RSP, align 8, !alias.scope !2497, !noalias !2500
  %297 = tail call double @sin(double %295)
  call void @llvm.memset.p0i8.i64(i8* %1497, i8 0, i64 16, i32 8, i1 false)
  store double %297, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 592) to double*), align 16
  %298 = fmul double %297, %297
  store double %298, double* %1407, align 1, !tbaa !2451
  store i64 0, i64* %46, align 1, !tbaa !2451
  %299 = load i64, i64* %RBP, align 8
  %300 = add i64 %299, -112
  %301 = add i64 %296, 32
  store i64 %301, i64* %PC, align 8
  %302 = inttoptr i64 %300 to double*
  %303 = load double, double* %302, align 8
  %304 = fdiv double %303, %298
  store double %304, double* %1408, align 1, !tbaa !2451
  store i64 0, i64* %50, align 1, !tbaa !2451
  store double %304, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 592) to double*), align 16
  %305 = add i64 %299, -88
  %306 = add i64 %296, 50
  store i64 %306, i64* %PC, align 8
  %307 = inttoptr i64 %305 to i64*
  %308 = load i64, i64* %307, align 8
  store i64 %308, i64* %45, align 1, !tbaa !2451
  store double 0.000000e+00, double* %47, align 1, !tbaa !2451
  store i64 %308, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 600) to i64*), align 8
  %309 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 592) to i64*), align 16
  store i64 %309, i64* %49, align 1, !tbaa !2451
  store double 0.000000e+00, double* %51, align 1, !tbaa !2451
  store i64 %309, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 608) to i64*), align 16
  %310 = load i32, i32* bitcast (%itercount_type* @itercount to i32*), align 8
  %311 = add i32 %310, 1
  %312 = zext i32 %311 to i64
  store i64 %312, i64* %RAX, align 8, !tbaa !2428
  %313 = icmp eq i32 %310, -1
  %314 = icmp eq i32 %311, 0
  %315 = or i1 %313, %314
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %19, align 1, !tbaa !2432
  %317 = and i32 %311, 255
  %318 = tail call i32 @llvm.ctpop.i32(i32 %317) #10
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  %321 = xor i8 %320, 1
  store i8 %321, i8* %26, align 1, !tbaa !2446
  %322 = xor i32 %311, %310
  %323 = lshr i32 %322, 4
  %324 = trunc i32 %323 to i8
  %325 = and i8 %324, 1
  store i8 %325, i8* %31, align 1, !tbaa !2450
  %326 = zext i1 %314 to i8
  store i8 %326, i8* %34, align 1, !tbaa !2447
  %327 = lshr i32 %311, 31
  %328 = trunc i32 %327 to i8
  store i8 %328, i8* %37, align 1, !tbaa !2448
  %329 = lshr i32 %310, 31
  %330 = xor i32 %327, %329
  %331 = add nuw nsw i32 %330, %327
  %332 = icmp eq i32 %331, 2
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %43, align 1, !tbaa !2449
  store i32 %311, i32* bitcast (%itercount_type* @itercount to i32*), align 8
  %334 = add i64 %296, -468
  store i64 %334, i64* %PC, align 8, !tbaa !2428
  br label %block_400919

block_400948:                                     ; preds = %block_400937
  store i64 4, i64* %RDI, align 8, !tbaa !2428
  %335 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 112) to double*), align 16
  %336 = load double, double* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 88) to double*), align 8
  %337 = fdiv double %336, %335
  store double %337, double* %1408, align 1, !tbaa !2451
  store i64 0, i64* %50, align 1, !tbaa !2451
  %.cast58 = bitcast double %337 to <2 x i32>
  %338 = extractelement <2 x i32> %.cast58, i32 0
  store i32 %338, i32* %1439, align 1, !tbaa !2455
  %339 = extractelement <2 x i32> %.cast58, i32 1
  store i32 %339, i32* %1442, align 1, !tbaa !2455
  store i32 0, i32* %1444, align 1, !tbaa !2455
  store i32 0, i32* %1447, align 1, !tbaa !2455
  %340 = add i64 %485, 1560
  %341 = add i64 %485, 34
  %342 = load i64, i64* %RSP, align 8, !tbaa !2428
  %343 = add i64 %342, -8
  %344 = inttoptr i64 %343 to i64*
  store i64 %341, i64* %344, align 8
  store i64 %343, i64* %RSP, align 8, !tbaa !2428
  store i64 %340, i64* %PC, align 8, !tbaa !2428
  %345 = tail call %struct.Memory* @sub_400f60_trace_line(%struct.State* nonnull %0, i64 %340, %struct.Memory* %MEMORY.2)
  %346 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 528), i64* %RCX, align 8, !tbaa !2428
  %347 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 520) to i64*), align 8
  %348 = load i16, i16* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 512) to i16*), align 16
  %349 = sext i16 %348 to i64
  %350 = shl nsw i64 %349, 4
  %351 = add i64 %350, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 528)
  store i64 %351, i64* %RSI, align 8, !tbaa !2428
  %352 = inttoptr i64 %351 to i64*
  %353 = add i64 %346, 42
  store i64 %353, i64* %PC, align 8
  store i64 %347, i64* %352, align 16
  %354 = load i64, i64* %PC, align 8
  %355 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 560) to i64*), align 16
  store i64 %355, i64* %45, align 1, !tbaa !2451
  store double 0.000000e+00, double* %47, align 1, !tbaa !2451
  %356 = load i16, i16* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 512) to i16*), align 16
  %357 = sext i16 %356 to i64
  %358 = shl nsw i64 %357, 4
  store i64 %358, i64* %RDX, align 8, !tbaa !2428
  %359 = load i64, i64* %RCX, align 8
  %360 = add i64 %358, %359
  store i64 %360, i64* %RCX, align 8, !tbaa !2428
  %361 = add i64 %360, 8
  %362 = add i64 %354, 30
  store i64 %362, i64* %PC, align 8
  %363 = inttoptr i64 %361 to i64*
  store i64 %355, i64* %363, align 8
  %364 = load i64, i64* %RBP, align 8
  %365 = add i64 %364, -72
  %366 = load i32, i32* %EAX, align 4
  %367 = load i64, i64* %PC, align 8
  %368 = add i64 %367, 3
  store i64 %368, i64* %PC, align 8
  %369 = inttoptr i64 %365 to i32*
  store i32 %366, i32* %369, align 4
  %370 = load i64, i64* %PC, align 8
  %371 = load i16, i16* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 512) to i16*), align 16
  %372 = add i16 %371, 1
  store i16 %372, i16* %AX, align 2, !tbaa !2502
  %373 = icmp eq i16 %371, -1
  %374 = icmp eq i16 %372, 0
  %375 = or i1 %373, %374
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %19, align 1, !tbaa !2432
  %377 = and i16 %372, 255
  %378 = zext i16 %377 to i32
  %379 = tail call i32 @llvm.ctpop.i32(i32 %378) #10
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  %382 = xor i8 %381, 1
  store i8 %382, i8* %26, align 1, !tbaa !2446
  %383 = xor i16 %372, %371
  %384 = lshr i16 %383, 4
  %385 = trunc i16 %384 to i8
  %386 = and i8 %385, 1
  store i8 %386, i8* %31, align 1, !tbaa !2450
  %387 = zext i1 %374 to i8
  store i8 %387, i8* %34, align 1, !tbaa !2447
  %388 = lshr i16 %372, 15
  %389 = trunc i16 %388 to i8
  store i8 %389, i8* %37, align 1, !tbaa !2448
  %390 = lshr i16 %371, 15
  %391 = xor i16 %388, %390
  %392 = add nuw nsw i16 %391, %388
  %393 = icmp eq i16 %392, 2
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %43, align 1, !tbaa !2449
  store i16 %372, i16* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 512) to i16*), align 16
  %395 = add i64 %370, -126
  store i64 %395, i64* %PC, align 8, !tbaa !2428
  br label %block_400937

block_400f47:                                     ; preds = %block_400f30, %block_400ef2
  %396 = phi i64 [ %.pre91, %block_400f30 ], [ %529, %block_400ef2 ]
  %MEMORY.1 = phi %struct.Memory* [ %698, %block_400f30 ], [ %521, %block_400ef2 ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %397 = load i64, i64* %RSP, align 8
  %398 = add i64 %397, 192
  store i64 %398, i64* %RSP, align 8, !tbaa !2428
  %399 = icmp ugt i64 %397, -193
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %19, align 1, !tbaa !2432
  %401 = trunc i64 %398 to i32
  %402 = and i32 %401, 255
  %403 = tail call i32 @llvm.ctpop.i32(i32 %402) #10
  %404 = trunc i32 %403 to i8
  %405 = and i8 %404, 1
  %406 = xor i8 %405, 1
  store i8 %406, i8* %26, align 1, !tbaa !2446
  %407 = xor i64 %398, %397
  %408 = lshr i64 %407, 4
  %409 = trunc i64 %408 to i8
  %410 = and i8 %409, 1
  store i8 %410, i8* %31, align 1, !tbaa !2450
  %411 = icmp eq i64 %398, 0
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %34, align 1, !tbaa !2447
  %413 = lshr i64 %398, 63
  %414 = trunc i64 %413 to i8
  store i8 %414, i8* %37, align 1, !tbaa !2448
  %415 = lshr i64 %397, 63
  %416 = xor i64 %413, %415
  %417 = add nuw nsw i64 %416, %413
  %418 = icmp eq i64 %417, 2
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %43, align 1, !tbaa !2449
  %420 = add i64 %396, 10
  store i64 %420, i64* %PC, align 8
  %421 = add i64 %397, 200
  %422 = inttoptr i64 %398 to i64*
  %423 = load i64, i64* %422, align 8
  store i64 %423, i64* %RBP, align 8, !tbaa !2428
  store i64 %421, i64* %RSP, align 8, !tbaa !2428
  %424 = add i64 %396, 11
  store i64 %424, i64* %PC, align 8
  %425 = inttoptr i64 %421 to i64*
  %426 = load i64, i64* %425, align 8
  store i64 %426, i64* %PC, align 8, !tbaa !2428
  %427 = add i64 %397, 208
  store i64 %427, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_400ebe:                                     ; preds = %block_400e00
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 230), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %428 = add i64 %1535, -2286
  %429 = add i64 %1535, 17
  %430 = load i64, i64* %RSP, align 8, !tbaa !2428
  %431 = add i64 %430, -8
  %432 = inttoptr i64 %431 to i64*
  store i64 %429, i64* %432, align 8
  store i64 %431, i64* %RSP, align 8, !tbaa !2428
  store i64 %428, i64* %PC, align 8, !tbaa !2428
  %433 = tail call fastcc %struct.Memory* @ext_4005d0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.7)
  %434 = load i64, i64* %RBP, align 8
  %435 = add i64 %434, -184
  %436 = load i32, i32* %EAX, align 4
  %437 = load i64, i64* %PC, align 8
  %438 = add i64 %437, 6
  store i64 %438, i64* %PC, align 8
  %439 = inttoptr i64 %435 to i32*
  store i32 %436, i32* %439, align 4
  %.pre94 = load i64, i64* %PC, align 8
  br label %block_400ed5

block_400ee8:                                     ; preds = %block_400d1f
  %440 = add i64 %1025, -32
  %441 = add i64 %1053, 4
  store i64 %441, i64* %PC, align 8
  %442 = inttoptr i64 %440 to i32*
  %443 = load i32, i32* %442, align 4
  store i8 0, i8* %19, align 1, !tbaa !2432
  %444 = and i32 %443, 255
  %445 = tail call i32 @llvm.ctpop.i32(i32 %444) #10
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  %448 = xor i8 %447, 1
  store i8 %448, i8* %26, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2450
  %449 = icmp eq i32 %443, 0
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %34, align 1, !tbaa !2447
  %451 = lshr i32 %443, 31
  %452 = trunc i32 %451 to i8
  store i8 %452, i8* %37, align 1, !tbaa !2448
  store i8 0, i8* %43, align 1, !tbaa !2449
  %453 = icmp ne i8 %452, 0
  %454 = or i1 %449, %453
  %.v100 = select i1 %454, i64 72, i64 10
  %455 = add i64 %1053, %.v100
  %456 = add i64 %455, 10
  store i64 %456, i64* %PC, align 8
  br i1 %454, label %block_400f30, label %block_400ef2

block_400937:                                     ; preds = %block_40092d, %block_400948
  %457 = phi i16 [ 0, %block_40092d ], [ %372, %block_400948 ]
  %458 = phi i64 [ %1147, %block_40092d ], [ %395, %block_400948 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.6, %block_40092d ], [ %345, %block_400948 ]
  %459 = sext i16 %457 to i64
  %460 = and i64 %459, 4294967295
  store i64 %460, i64* %RAX, align 8, !tbaa !2428
  %461 = sext i16 %457 to i32
  %462 = add nsw i32 %461, -1
  %463 = icmp eq i16 %457, 0
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %19, align 1, !tbaa !2432
  %465 = and i32 %462, 255
  %466 = tail call i32 @llvm.ctpop.i32(i32 %465) #10
  %467 = trunc i32 %466 to i8
  %468 = and i8 %467, 1
  %469 = xor i8 %468, 1
  store i8 %469, i8* %26, align 1, !tbaa !2446
  %470 = xor i32 %462, %461
  %471 = lshr i32 %470, 4
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  store i8 %473, i8* %31, align 1, !tbaa !2450
  %474 = icmp eq i32 %462, 0
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %34, align 1, !tbaa !2447
  %476 = lshr i32 %462, 31
  %477 = trunc i32 %476 to i8
  store i8 %477, i8* %37, align 1, !tbaa !2448
  %478 = lshr i32 %461, 31
  %479 = xor i32 %476, %478
  %480 = add nuw nsw i32 %479, %478
  %481 = icmp eq i32 %480, 2
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %43, align 1, !tbaa !2449
  %483 = icmp ne i8 %477, 0
  %484 = xor i1 %483, %481
  %.demorgan96 = or i1 %474, %484
  %.v103 = select i1 %.demorgan96, i64 17, i64 151
  %485 = add i64 %458, %.v103
  %486 = add i64 %485, 5
  store i64 %486, i64* %PC, align 8
  br i1 %.demorgan96, label %block_400948, label %block_4009ce

block_400ef2:                                     ; preds = %block_400ee8
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 742), i64* %RDI, align 8, !tbaa !2428
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 231), i64* %RAX, align 8, !tbaa !2428
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 740), i64* %RCX, align 8, !tbaa !2428
  %487 = add i64 %455, 33
  store i64 %487, i64* %PC, align 8
  %488 = load i32, i32* %442, align 4
  %489 = zext i32 %488 to i64
  store i64 %489, i64* %RSI, align 8, !tbaa !2428
  %490 = add i64 %455, 37
  store i64 %490, i64* %PC, align 8
  %491 = load i32, i32* %442, align 4
  %492 = add i32 %491, -1
  %493 = icmp eq i32 %491, 0
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %19, align 1, !tbaa !2432
  %495 = and i32 %492, 255
  %496 = tail call i32 @llvm.ctpop.i32(i32 %495) #10
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  %499 = xor i8 %498, 1
  store i8 %499, i8* %26, align 1, !tbaa !2446
  %500 = xor i32 %492, %491
  %501 = lshr i32 %500, 4
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  store i8 %503, i8* %31, align 1, !tbaa !2450
  %504 = icmp eq i32 %492, 0
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %34, align 1, !tbaa !2447
  %506 = lshr i32 %492, 31
  %507 = trunc i32 %506 to i8
  store i8 %507, i8* %37, align 1, !tbaa !2448
  %508 = lshr i32 %491, 31
  %509 = xor i32 %506, %508
  %510 = add nuw nsw i32 %509, %508
  %511 = icmp eq i32 %510, 2
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %43, align 1, !tbaa !2449
  %513 = icmp ne i8 %507, 0
  %514 = xor i1 %513, %511
  %.demorgan = or i1 %504, %514
  %515 = select i1 %.demorgan, i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 231), i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 740)
  store i64 %515, i64* %RAX, align 8, !tbaa !2428
  store i64 %515, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %516 = add i64 %455, -2338
  %517 = add i64 %455, 51
  %518 = load i64, i64* %RSP, align 8, !tbaa !2428
  %519 = add i64 %518, -8
  %520 = inttoptr i64 %519 to i64*
  store i64 %517, i64* %520, align 8
  store i64 %519, i64* %RSP, align 8, !tbaa !2428
  store i64 %516, i64* %PC, align 8, !tbaa !2428
  %521 = tail call fastcc %struct.Memory* @ext_4005d0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.3)
  %522 = load i64, i64* %RBP, align 8
  %523 = add i64 %522, -188
  %524 = load i32, i32* %EAX, align 4
  %525 = load i64, i64* %PC, align 8
  %526 = add i64 %525, 6
  store i64 %526, i64* %PC, align 8
  %527 = inttoptr i64 %523 to i32*
  store i32 %524, i32* %527, align 4
  %528 = load i64, i64* %PC, align 8
  %529 = add i64 %528, 28
  store i64 %529, i64* %PC, align 8, !tbaa !2428
  br label %block_400f47

block_400b50:                                     ; preds = %block_400919
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64* %RDI, align 8, !tbaa !2428
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 415), i64* %RSI, align 8, !tbaa !2428
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 439), i64* %RDX, align 8, !tbaa !2428
  %530 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 528) to i64*), align 16
  store i64 %530, i64* %45, align 1, !tbaa !2451
  store double 0.000000e+00, double* %47, align 1, !tbaa !2451
  %531 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 536) to i64*), align 8
  store i64 %531, i64* %49, align 1, !tbaa !2451
  store double 0.000000e+00, double* %51, align 1, !tbaa !2451
  store i8 2, i8* %AL, align 1, !tbaa !2454
  %532 = add i64 %1146, -1312
  %533 = add i64 %1146, 55
  %534 = load i64, i64* %RSP, align 8, !tbaa !2428
  %535 = add i64 %534, -8
  %536 = inttoptr i64 %535 to i64*
  store i64 %533, i64* %536, align 8
  store i64 %535, i64* %RSP, align 8, !tbaa !2428
  store i64 %532, i64* %PC, align 8, !tbaa !2428
  %537 = tail call fastcc %struct.Memory* @ext_6026e0_sprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.6)
  %538 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 704), i64* %RDX, align 8, !tbaa !2428
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 704), i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)), i1 icmp ult (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 704), i64 80)) to i8), i8* %19, align 1, !tbaa !2432
  %539 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 704) to i32), i32 255)) #10
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  store i8 %542, i8* %26, align 1, !tbaa !2446
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64 80), i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 704)), i64 4) to i8), i8 1), i8* %31, align 1, !tbaa !2450
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 704), i64 0) to i8), i8* %34, align 1, !tbaa !2447
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 704), i64 63) to i8), i8* %37, align 1, !tbaa !2448
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 704), i64 63), i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 704), i64 63)), i64 2) to i8), i8* %43, align 1, !tbaa !2449
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 415), i64* %RSI, align 8, !tbaa !2428
  %543 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 544) to i64*), align 16
  store i64 %543, i64* %45, align 1, !tbaa !2451
  store double 0.000000e+00, double* %47, align 1, !tbaa !2451
  %544 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 552) to i64*), align 8
  store i64 %544, i64* %49, align 1, !tbaa !2451
  store double 0.000000e+00, double* %51, align 1, !tbaa !2451
  %545 = load i64, i64* %RBP, align 8
  %546 = add i64 %545, -128
  %547 = add i64 %538, 56
  store i64 %547, i64* %PC, align 8
  %548 = inttoptr i64 %546 to i64*
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 452), i64* %548, align 8
  %549 = load i64, i64* %RDX, align 8
  %550 = load i64, i64* %PC, align 8
  store i64 %549, i64* %RDI, align 8, !tbaa !2428
  %551 = load i64, i64* %RBP, align 8
  %552 = add i64 %551, -128
  %553 = add i64 %550, 7
  store i64 %553, i64* %PC, align 8
  %554 = inttoptr i64 %552 to i64*
  %555 = load i64, i64* %554, align 8
  store i64 %555, i64* %RDX, align 8, !tbaa !2428
  %556 = add i64 %551, -132
  %557 = load i32, i32* %EAX, align 4
  %558 = add i64 %550, 13
  store i64 %558, i64* %PC, align 8
  %559 = inttoptr i64 %556 to i32*
  store i32 %557, i32* %559, align 4
  %560 = load i64, i64* %PC, align 8
  store i8 2, i8* %AL, align 1, !tbaa !2454
  %561 = add i64 %560, -1436
  %562 = add i64 %560, 7
  %563 = load i64, i64* %RSP, align 8, !tbaa !2428
  %564 = add i64 %563, -8
  %565 = inttoptr i64 %564 to i64*
  store i64 %562, i64* %565, align 8
  store i64 %564, i64* %RSP, align 8, !tbaa !2428
  store i64 %561, i64* %PC, align 8, !tbaa !2428
  %566 = tail call fastcc %struct.Memory* @ext_6026e0_sprintf(%struct.State* nonnull %0, %struct.Memory* %537)
  %567 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 784), i64* %RDX, align 8, !tbaa !2428
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 784), i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)), i1 icmp ult (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 784), i64 160)) to i8), i8* %19, align 1, !tbaa !2432
  %568 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 784) to i32), i32 255)) #10
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  store i8 %571, i8* %26, align 1, !tbaa !2446
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64 160), i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 784)), i64 4) to i8), i8 1), i8* %31, align 1, !tbaa !2450
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 784), i64 0) to i8), i8* %34, align 1, !tbaa !2447
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 784), i64 63) to i8), i8* %37, align 1, !tbaa !2448
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 784), i64 63), i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 784), i64 63)), i64 2) to i8), i8* %43, align 1, !tbaa !2449
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 465), i64* %RSI, align 8, !tbaa !2428
  %572 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 568) to i64*), align 8
  store i64 %572, i64* %45, align 1, !tbaa !2451
  store double 0.000000e+00, double* %47, align 1, !tbaa !2451
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 784), i64* %RDI, align 8, !tbaa !2428
  %573 = load i64, i64* %RBP, align 8
  %574 = add i64 %573, -136
  %575 = load i32, i32* %EAX, align 4
  %576 = add i64 %567, 45
  store i64 %576, i64* %PC, align 8
  %577 = inttoptr i64 %574 to i32*
  store i32 %575, i32* %577, align 4
  %578 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2454
  %579 = add i64 %578, -1488
  %580 = add i64 %578, 7
  %581 = load i64, i64* %RSP, align 8, !tbaa !2428
  %582 = add i64 %581, -8
  %583 = inttoptr i64 %582 to i64*
  store i64 %580, i64* %583, align 8
  store i64 %582, i64* %RSP, align 8, !tbaa !2428
  store i64 %579, i64* %PC, align 8, !tbaa !2428
  %584 = tail call fastcc %struct.Memory* @ext_6026e0_sprintf(%struct.State* nonnull %0, %struct.Memory* %566)
  %585 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 864), i64* %RDX, align 8, !tbaa !2428
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 864), i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)), i1 icmp ult (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 864), i64 240)) to i8), i8* %19, align 1, !tbaa !2432
  %586 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 864) to i32), i32 255)) #10
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  %589 = xor i8 %588, 1
  store i8 %589, i8* %26, align 1, !tbaa !2446
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64 240), i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 864)), i64 4) to i8), i8 1), i8* %31, align 1, !tbaa !2450
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 864), i64 0) to i8), i8* %34, align 1, !tbaa !2447
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 864), i64 63) to i8), i8* %37, align 1, !tbaa !2448
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 864), i64 63), i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 864), i64 63)), i64 2) to i8), i8* %43, align 1, !tbaa !2449
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 513), i64* %RSI, align 8, !tbaa !2428
  %590 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 592) to i64*), align 16
  store i64 %590, i64* %45, align 1, !tbaa !2451
  store double 0.000000e+00, double* %47, align 1, !tbaa !2451
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 864), i64* %RDI, align 8, !tbaa !2428
  %591 = load i64, i64* %RBP, align 8
  %592 = add i64 %591, -140
  %593 = load i32, i32* %EAX, align 4
  %594 = add i64 %585, 45
  store i64 %594, i64* %PC, align 8
  %595 = inttoptr i64 %592 to i32*
  store i32 %593, i32* %595, align 4
  %596 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2454
  %597 = add i64 %596, -1540
  %598 = add i64 %596, 7
  %599 = load i64, i64* %RSP, align 8, !tbaa !2428
  %600 = add i64 %599, -8
  %601 = inttoptr i64 %600 to i64*
  store i64 %598, i64* %601, align 8
  store i64 %600, i64* %RSP, align 8, !tbaa !2428
  store i64 %597, i64* %PC, align 8, !tbaa !2428
  %602 = tail call fastcc %struct.Memory* @ext_6026e0_sprintf(%struct.State* nonnull %0, %struct.Memory* %584)
  %603 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 944), i64* %RDX, align 8, !tbaa !2428
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 944), i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)), i1 icmp ult (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 944), i64 320)) to i8), i8* %19, align 1, !tbaa !2432
  %604 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 944) to i32), i32 255)) #10
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  %607 = xor i8 %606, 1
  store i8 %607, i8* %26, align 1, !tbaa !2446
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64 320), i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 944)), i64 4) to i8), i8 1), i8* %31, align 1, !tbaa !2450
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 944), i64 0) to i8), i8* %34, align 1, !tbaa !2447
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 944), i64 63) to i8), i8* %37, align 1, !tbaa !2448
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 944), i64 63), i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 944), i64 63)), i64 2) to i8), i8* %43, align 1, !tbaa !2449
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 561), i64* %RSI, align 8, !tbaa !2428
  %608 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 576) to i64*), align 16
  store i64 %608, i64* %45, align 1, !tbaa !2451
  store double 0.000000e+00, double* %47, align 1, !tbaa !2451
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 944), i64* %RDI, align 8, !tbaa !2428
  %609 = load i64, i64* %RBP, align 8
  %610 = add i64 %609, -144
  %611 = load i32, i32* %EAX, align 4
  %612 = add i64 %603, 45
  store i64 %612, i64* %PC, align 8
  %613 = inttoptr i64 %610 to i32*
  store i32 %611, i32* %613, align 4
  %614 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2454
  %615 = add i64 %614, -1592
  %616 = add i64 %614, 7
  %617 = load i64, i64* %RSP, align 8, !tbaa !2428
  %618 = add i64 %617, -8
  %619 = inttoptr i64 %618 to i64*
  store i64 %616, i64* %619, align 8
  store i64 %618, i64* %RSP, align 8, !tbaa !2428
  store i64 %615, i64* %PC, align 8, !tbaa !2428
  %620 = tail call fastcc %struct.Memory* @ext_6026e0_sprintf(%struct.State* nonnull %0, %struct.Memory* %602)
  %621 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1024), i64* %RDX, align 8, !tbaa !2428
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1024), i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)), i1 icmp ult (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1024), i64 400)) to i8), i8* %19, align 1, !tbaa !2432
  %622 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1024) to i32), i32 255)) #10
  %623 = trunc i32 %622 to i8
  %624 = and i8 %623, 1
  %625 = xor i8 %624, 1
  store i8 %625, i8* %26, align 1, !tbaa !2446
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64 400), i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1024)), i64 4) to i8), i8 1), i8* %31, align 1, !tbaa !2450
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1024), i64 0) to i8), i8* %34, align 1, !tbaa !2447
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1024), i64 63) to i8), i8* %37, align 1, !tbaa !2448
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1024), i64 63), i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1024), i64 63)), i64 2) to i8), i8* %43, align 1, !tbaa !2449
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 513), i64* %RSI, align 8, !tbaa !2428
  %626 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 600) to i64*), align 8
  store i64 %626, i64* %45, align 1, !tbaa !2451
  store double 0.000000e+00, double* %47, align 1, !tbaa !2451
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1024), i64* %RDI, align 8, !tbaa !2428
  %627 = load i64, i64* %RBP, align 8
  %628 = add i64 %627, -148
  %629 = load i32, i32* %EAX, align 4
  %630 = add i64 %621, 45
  store i64 %630, i64* %PC, align 8
  %631 = inttoptr i64 %628 to i32*
  store i32 %629, i32* %631, align 4
  %632 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2454
  %633 = add i64 %632, -1644
  %634 = add i64 %632, 7
  %635 = load i64, i64* %RSP, align 8, !tbaa !2428
  %636 = add i64 %635, -8
  %637 = inttoptr i64 %636 to i64*
  store i64 %634, i64* %637, align 8
  store i64 %636, i64* %RSP, align 8, !tbaa !2428
  store i64 %633, i64* %PC, align 8, !tbaa !2428
  %638 = tail call fastcc %struct.Memory* @ext_6026e0_sprintf(%struct.State* nonnull %0, %struct.Memory* %620)
  %639 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1104), i64* %RDX, align 8, !tbaa !2428
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1104), i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)), i1 icmp ult (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1104), i64 480)) to i8), i8* %19, align 1, !tbaa !2432
  %640 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1104) to i32), i32 255)) #10
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  %643 = xor i8 %642, 1
  store i8 %643, i8* %26, align 1, !tbaa !2446
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64 480), i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1104)), i64 4) to i8), i8 1), i8* %31, align 1, !tbaa !2450
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1104), i64 0) to i8), i8* %34, align 1, !tbaa !2447
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1104), i64 63) to i8), i8* %37, align 1, !tbaa !2448
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1104), i64 63), i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1104), i64 63)), i64 2) to i8), i8* %43, align 1, !tbaa !2449
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 609), i64* %RSI, align 8, !tbaa !2428
  %644 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 584) to i64*), align 8
  store i64 %644, i64* %45, align 1, !tbaa !2451
  store double 0.000000e+00, double* %47, align 1, !tbaa !2451
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1104), i64* %RDI, align 8, !tbaa !2428
  %645 = load i64, i64* %RBP, align 8
  %646 = add i64 %645, -152
  %647 = load i32, i32* %EAX, align 4
  %648 = add i64 %639, 45
  store i64 %648, i64* %PC, align 8
  %649 = inttoptr i64 %646 to i32*
  store i32 %647, i32* %649, align 4
  %650 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2454
  %651 = add i64 %650, -1696
  %652 = add i64 %650, 7
  %653 = load i64, i64* %RSP, align 8, !tbaa !2428
  %654 = add i64 %653, -8
  %655 = inttoptr i64 %654 to i64*
  store i64 %652, i64* %655, align 8
  store i64 %654, i64* %RSP, align 8, !tbaa !2428
  store i64 %651, i64* %PC, align 8, !tbaa !2428
  %656 = tail call fastcc %struct.Memory* @ext_6026e0_sprintf(%struct.State* nonnull %0, %struct.Memory* %638)
  %657 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1184), i64* %RDX, align 8, !tbaa !2428
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1184), i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)), i1 icmp ult (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1184), i64 560)) to i8), i8* %19, align 1, !tbaa !2432
  %658 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1184) to i32), i32 255)) #10
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  %661 = xor i8 %660, 1
  store i8 %661, i8* %26, align 1, !tbaa !2446
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64 560), i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1184)), i64 4) to i8), i8 1), i8* %31, align 1, !tbaa !2450
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1184), i64 0) to i8), i8* %34, align 1, !tbaa !2447
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1184), i64 63) to i8), i8* %37, align 1, !tbaa !2448
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1184), i64 63), i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1184), i64 63)), i64 2) to i8), i8* %43, align 1, !tbaa !2449
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 513), i64* %RSI, align 8, !tbaa !2428
  %662 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 608) to i64*), align 16
  store i64 %662, i64* %45, align 1, !tbaa !2451
  store double 0.000000e+00, double* %47, align 1, !tbaa !2451
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 1184), i64* %RDI, align 8, !tbaa !2428
  %663 = load i64, i64* %RBP, align 8
  %664 = add i64 %663, -156
  %665 = load i32, i32* %EAX, align 4
  %666 = add i64 %657, 45
  store i64 %666, i64* %PC, align 8
  %667 = inttoptr i64 %664 to i32*
  store i32 %665, i32* %667, align 4
  %668 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2454
  %669 = add i64 %668, -1748
  %670 = add i64 %668, 7
  %671 = load i64, i64* %RSP, align 8, !tbaa !2428
  %672 = add i64 %671, -8
  %673 = inttoptr i64 %672 to i64*
  store i64 %670, i64* %673, align 8
  store i64 %672, i64* %RSP, align 8, !tbaa !2428
  store i64 %669, i64* %PC, align 8, !tbaa !2428
  %674 = tail call fastcc %struct.Memory* @ext_6026e0_sprintf(%struct.State* nonnull %0, %struct.Memory* %656)
  %675 = load i64, i64* %RBP, align 8
  %676 = add i64 %675, -32
  %677 = load i64, i64* %PC, align 8
  %678 = add i64 %677, 7
  store i64 %678, i64* %PC, align 8
  %679 = inttoptr i64 %676 to i32*
  store i32 0, i32* %679, align 4
  %680 = load i64, i64* %RBP, align 8
  %681 = add i64 %680, -20
  %682 = load i64, i64* %PC, align 8
  %683 = add i64 %682, 7
  store i64 %683, i64* %PC, align 8
  %684 = inttoptr i64 %681 to i32*
  store i32 0, i32* %684, align 4
  %685 = load i64, i64* %RBP, align 8
  %686 = add i64 %685, -160
  %687 = load i32, i32* %EAX, align 4
  %688 = load i64, i64* %PC, align 8
  %689 = add i64 %688, 6
  store i64 %689, i64* %PC, align 8
  %690 = inttoptr i64 %686 to i32*
  store i32 %687, i32* %690, align 4
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %.pre90 = load i64, i64* %PC, align 8
  br label %block_400d1f

block_400f30:                                     ; preds = %block_400ee8
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 790), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %693 = add i64 %455, -2400
  %694 = add i64 %455, 17
  %695 = load i64, i64* %RSP, align 8, !tbaa !2428
  %696 = add i64 %695, -8
  %697 = inttoptr i64 %696 to i64*
  store i64 %694, i64* %697, align 8
  store i64 %696, i64* %RSP, align 8, !tbaa !2428
  store i64 %693, i64* %PC, align 8, !tbaa !2428
  %698 = tail call fastcc %struct.Memory* @ext_4005d0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.3)
  %699 = load i64, i64* %RBP, align 8
  %700 = add i64 %699, -192
  %701 = load i32, i32* %EAX, align 4
  %702 = load i64, i64* %PC, align 8
  %703 = add i64 %702, 6
  store i64 %703, i64* %PC, align 8
  %704 = inttoptr i64 %700 to i32*
  store i32 %701, i32* %704, align 4
  %.pre91 = load i64, i64* %PC, align 8
  br label %block_400f47

block_40092d:                                     ; preds = %block_400919
  store i16 0, i16* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 512) to i16*), align 16
  br label %block_400937

block_400824:                                     ; preds = %block_40081a
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 112), i64* %RAX, align 8, !tbaa !2428
  store i64 add (i64 ptrtoint (%niter_type* @niter to i64), i64 16), i64* %RCX, align 8, !tbaa !2428
  %705 = add i64 %1055, -20
  %706 = add i64 %1083, 24
  store i64 %706, i64* %PC, align 8
  %707 = inttoptr i64 %705 to i32*
  %708 = load i32, i32* %707, align 4
  %709 = sext i32 %708 to i64
  %710 = shl nsw i64 %709, 5
  store i64 %710, i64* %RDX, align 8, !tbaa !2428
  %711 = add i64 %710, add (i64 ptrtoint (%niter_type* @niter to i64), i64 16)
  store i64 %711, i64* %RCX, align 8, !tbaa !2428
  %712 = icmp ult i64 %711, add (i64 ptrtoint (%niter_type* @niter to i64), i64 16)
  %713 = icmp ult i64 %711, %710
  %714 = or i1 %712, %713
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %19, align 1, !tbaa !2432
  %716 = trunc i64 %711 to i32
  %717 = and i32 %716, 240
  %718 = tail call i32 @llvm.ctpop.i32(i32 %717) #10
  %719 = trunc i32 %718 to i8
  %720 = and i8 %719, 1
  %721 = xor i8 %720, 1
  store i8 %721, i8* %26, align 1, !tbaa !2446
  %722 = xor i64 %711, add (i64 ptrtoint (%niter_type* @niter to i64), i64 16)
  %723 = lshr exact i64 %722, 4
  %724 = trunc i64 %723 to i8
  %725 = and i8 %724, 1
  store i8 %725, i8* %31, align 1, !tbaa !2450
  %726 = icmp eq i64 %711, 0
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %34, align 1, !tbaa !2447
  %728 = lshr i64 %711, 63
  %729 = trunc i64 %728 to i8
  store i8 %729, i8* %37, align 1, !tbaa !2448
  %730 = lshr i64 %709, 58
  %731 = and i64 %730, 1
  %732 = xor i64 %728, lshr (i64 add (i64 ptrtoint (%niter_type* @niter to i64), i64 16), i64 63)
  %733 = xor i64 %728, %731
  %734 = add nuw nsw i64 %732, %733
  %735 = icmp eq i64 %734, 2
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %43, align 1, !tbaa !2449
  %737 = add i64 %1083, 35
  store i64 %737, i64* %PC, align 8
  %738 = load i32, i32* %1058, align 4
  %739 = sext i32 %738 to i64
  store i64 %739, i64* %RDX, align 8, !tbaa !2428
  %740 = shl nsw i64 %739, 3
  %741 = add i64 %740, %711
  %742 = add i64 %1083, 40
  store i64 %742, i64* %PC, align 8
  %743 = inttoptr i64 %741 to i64*
  %744 = load i64, i64* %743, align 8
  store i64 %744, i64* %45, align 1, !tbaa !2451
  store double 0.000000e+00, double* %47, align 1, !tbaa !2451
  %745 = add i64 %1083, 43
  store i64 %745, i64* %PC, align 8
  %746 = load i32, i32* %707, align 4
  %747 = add i32 %746, 1
  %748 = zext i32 %747 to i64
  store i64 %748, i64* %RSI, align 8, !tbaa !2428
  %749 = sext i32 %747 to i64
  %750 = mul nsw i64 %749, 40
  store i64 %750, i64* %RCX, align 8, !tbaa !2428
  %751 = lshr i64 %750, 63
  %752 = load i64, i64* %RAX, align 8
  %753 = add i64 %750, %752
  store i64 %753, i64* %RAX, align 8, !tbaa !2428
  %754 = icmp ult i64 %753, %752
  %755 = icmp ult i64 %753, %750
  %756 = or i1 %754, %755
  %757 = zext i1 %756 to i8
  store i8 %757, i8* %19, align 1, !tbaa !2432
  %758 = trunc i64 %753 to i32
  %759 = and i32 %758, 255
  %760 = tail call i32 @llvm.ctpop.i32(i32 %759) #10
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  %763 = xor i8 %762, 1
  store i8 %763, i8* %26, align 1, !tbaa !2446
  %764 = xor i64 %750, %752
  %765 = xor i64 %764, %753
  %766 = lshr i64 %765, 4
  %767 = trunc i64 %766 to i8
  %768 = and i8 %767, 1
  store i8 %768, i8* %31, align 1, !tbaa !2450
  %769 = icmp eq i64 %753, 0
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %34, align 1, !tbaa !2447
  %771 = lshr i64 %753, 63
  %772 = trunc i64 %771 to i8
  store i8 %772, i8* %37, align 1, !tbaa !2448
  %773 = lshr i64 %752, 63
  %774 = xor i64 %771, %773
  %775 = xor i64 %771, %751
  %776 = add nuw nsw i64 %774, %775
  %777 = icmp eq i64 %776, 2
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %43, align 1, !tbaa !2449
  %779 = load i64, i64* %RBP, align 8
  %780 = add i64 %779, -24
  %781 = add i64 %1083, 59
  store i64 %781, i64* %PC, align 8
  %782 = inttoptr i64 %780 to i32*
  %783 = load i32, i32* %782, align 4
  %784 = add i32 %783, 1
  %785 = zext i32 %784 to i64
  store i64 %785, i64* %RSI, align 8, !tbaa !2428
  %786 = icmp eq i32 %783, -1
  %787 = icmp eq i32 %784, 0
  %788 = or i1 %786, %787
  %789 = zext i1 %788 to i8
  store i8 %789, i8* %19, align 1, !tbaa !2432
  %790 = and i32 %784, 255
  %791 = tail call i32 @llvm.ctpop.i32(i32 %790) #10
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  %794 = xor i8 %793, 1
  store i8 %794, i8* %26, align 1, !tbaa !2446
  %795 = xor i32 %784, %783
  %796 = lshr i32 %795, 4
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  store i8 %798, i8* %31, align 1, !tbaa !2450
  %799 = zext i1 %787 to i8
  store i8 %799, i8* %34, align 1, !tbaa !2447
  %800 = lshr i32 %784, 31
  %801 = trunc i32 %800 to i8
  store i8 %801, i8* %37, align 1, !tbaa !2448
  %802 = lshr i32 %783, 31
  %803 = xor i32 %800, %802
  %804 = add nuw nsw i32 %803, %800
  %805 = icmp eq i32 %804, 2
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %43, align 1, !tbaa !2449
  %807 = sext i32 %784 to i64
  store i64 %807, i64* %RCX, align 8, !tbaa !2428
  %808 = shl nsw i64 %807, 3
  %809 = add i64 %753, %808
  %810 = add i64 %1083, 70
  store i64 %810, i64* %PC, align 8
  %811 = load i64, i64* %45, align 1
  %812 = inttoptr i64 %809 to i64*
  store i64 %811, i64* %812, align 8
  %813 = load i64, i64* %RBP, align 8
  %814 = add i64 %813, -24
  %815 = load i64, i64* %PC, align 8
  %816 = add i64 %815, 3
  store i64 %816, i64* %PC, align 8
  %817 = inttoptr i64 %814 to i32*
  %818 = load i32, i32* %817, align 4
  %819 = add i32 %818, 1
  %820 = zext i32 %819 to i64
  store i64 %820, i64* %RAX, align 8, !tbaa !2428
  %821 = icmp eq i32 %818, -1
  %822 = icmp eq i32 %819, 0
  %823 = or i1 %821, %822
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %19, align 1, !tbaa !2432
  %825 = and i32 %819, 255
  %826 = tail call i32 @llvm.ctpop.i32(i32 %825) #10
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  %829 = xor i8 %828, 1
  store i8 %829, i8* %26, align 1, !tbaa !2446
  %830 = xor i32 %819, %818
  %831 = lshr i32 %830, 4
  %832 = trunc i32 %831 to i8
  %833 = and i8 %832, 1
  store i8 %833, i8* %31, align 1, !tbaa !2450
  %834 = zext i1 %822 to i8
  store i8 %834, i8* %34, align 1, !tbaa !2447
  %835 = lshr i32 %819, 31
  %836 = trunc i32 %835 to i8
  store i8 %836, i8* %37, align 1, !tbaa !2448
  %837 = lshr i32 %818, 31
  %838 = xor i32 %835, %837
  %839 = add nuw nsw i32 %838, %835
  %840 = icmp eq i32 %839, 2
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %43, align 1, !tbaa !2449
  %842 = add i64 %815, 9
  store i64 %842, i64* %PC, align 8
  store i32 %819, i32* %817, align 4
  %843 = load i64, i64* %PC, align 8
  %844 = add i64 %843, -89
  store i64 %844, i64* %PC, align 8, !tbaa !2428
  br label %block_40081a

block_400ea2:                                     ; preds = %block_400e0c
  %845 = load i64, i64* %RBP, align 8
  %846 = add i64 %845, -32
  %847 = add i64 %1404, 3
  store i64 %847, i64* %PC, align 8
  %848 = inttoptr i64 %846 to i32*
  %849 = load i32, i32* %848, align 4
  %850 = add i32 %849, 1
  %851 = zext i32 %850 to i64
  store i64 %851, i64* %RAX, align 8, !tbaa !2428
  %852 = icmp eq i32 %849, -1
  %853 = icmp eq i32 %850, 0
  %854 = or i1 %852, %853
  %855 = zext i1 %854 to i8
  store i8 %855, i8* %19, align 1, !tbaa !2432
  %856 = and i32 %850, 255
  %857 = tail call i32 @llvm.ctpop.i32(i32 %856) #10
  %858 = trunc i32 %857 to i8
  %859 = and i8 %858, 1
  %860 = xor i8 %859, 1
  store i8 %860, i8* %26, align 1, !tbaa !2446
  %861 = xor i32 %850, %849
  %862 = lshr i32 %861, 4
  %863 = trunc i32 %862 to i8
  %864 = and i8 %863, 1
  store i8 %864, i8* %31, align 1, !tbaa !2450
  %865 = zext i1 %853 to i8
  store i8 %865, i8* %34, align 1, !tbaa !2447
  %866 = lshr i32 %850, 31
  %867 = trunc i32 %866 to i8
  store i8 %867, i8* %37, align 1, !tbaa !2448
  %868 = lshr i32 %849, 31
  %869 = xor i32 %866, %868
  %870 = add nuw nsw i32 %869, %866
  %871 = icmp eq i32 %870, 2
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %43, align 1, !tbaa !2449
  %873 = add i64 %1404, 9
  store i64 %873, i64* %PC, align 8
  store i32 %850, i32* %848, align 4
  %.pre93 = load i64, i64* %PC, align 8
  br label %block_400eab

block_400d5b:                                     ; preds = %block_400d29
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 657), i64* %RDI, align 8, !tbaa !2428
  %874 = load i64, i64* %RBP, align 8
  %875 = add i64 %874, -20
  %876 = add i64 %1203, 13
  store i64 %876, i64* %PC, align 8
  %877 = inttoptr i64 %875 to i32*
  %878 = load i32, i32* %877, align 4
  %879 = add i32 %878, 1
  %880 = zext i32 %879 to i64
  store i64 %880, i64* %RAX, align 8, !tbaa !2428
  %881 = icmp eq i32 %878, -1
  %882 = icmp eq i32 %879, 0
  %883 = or i1 %881, %882
  %884 = zext i1 %883 to i8
  store i8 %884, i8* %19, align 1, !tbaa !2432
  %885 = and i32 %879, 255
  %886 = tail call i32 @llvm.ctpop.i32(i32 %885) #10
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  %889 = xor i8 %888, 1
  store i8 %889, i8* %26, align 1, !tbaa !2446
  %890 = xor i32 %879, %878
  %891 = lshr i32 %890, 4
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  store i8 %893, i8* %31, align 1, !tbaa !2450
  %894 = zext i1 %882 to i8
  store i8 %894, i8* %34, align 1, !tbaa !2447
  %895 = lshr i32 %879, 31
  %896 = trunc i32 %895 to i8
  store i8 %896, i8* %37, align 1, !tbaa !2448
  %897 = lshr i32 %878, 31
  %898 = xor i32 %895, %897
  %899 = add nuw nsw i32 %898, %895
  %900 = icmp eq i32 %899, 2
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %43, align 1, !tbaa !2449
  store i64 %880, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %902 = add i64 %1203, -1931
  %903 = add i64 %1203, 25
  %904 = load i64, i64* %RSP, align 8, !tbaa !2428
  %905 = add i64 %904, -8
  %906 = inttoptr i64 %905 to i64*
  store i64 %903, i64* %906, align 8
  store i64 %905, i64* %RSP, align 8, !tbaa !2428
  store i64 %902, i64* %PC, align 8, !tbaa !2428
  %907 = tail call fastcc %struct.Memory* @ext_4005d0_printf(%struct.State* nonnull %0, %struct.Memory* %1191)
  %908 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 690), i64* %RDI, align 8, !tbaa !2428
  %909 = load i64, i64* %RBP, align 8
  %910 = add i64 %909, -20
  %911 = add i64 %908, 14
  store i64 %911, i64* %PC, align 8
  %912 = inttoptr i64 %910 to i32*
  %913 = load i32, i32* %912, align 4
  %914 = sext i32 %913 to i64
  store i64 %914, i64* %RCX, align 8, !tbaa !2428
  %915 = shl nsw i64 %914, 3
  %916 = add i64 %915, add (i64 ptrtoint (%niter_type* @niter to i64), i64 144)
  %917 = add i64 %908, 22
  store i64 %917, i64* %PC, align 8
  %918 = inttoptr i64 %916 to i64*
  %919 = load i64, i64* %918, align 8
  store i64 %919, i64* %RSI, align 8, !tbaa !2428
  %920 = add i64 %909, -164
  %921 = load i32, i32* %EAX, align 4
  %922 = add i64 %908, 28
  store i64 %922, i64* %PC, align 8
  %923 = inttoptr i64 %920 to i32*
  store i32 %921, i32* %923, align 4
  %924 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %925 = add i64 %924, -1984
  %926 = add i64 %924, 7
  %927 = load i64, i64* %RSP, align 8, !tbaa !2428
  %928 = add i64 %927, -8
  %929 = inttoptr i64 %928 to i64*
  store i64 %926, i64* %929, align 8
  store i64 %928, i64* %RSP, align 8, !tbaa !2428
  store i64 %925, i64* %PC, align 8, !tbaa !2428
  %930 = tail call fastcc %struct.Memory* @ext_4005d0_printf(%struct.State* nonnull %0, %struct.Memory* %907)
  %931 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 707), i64* %RDI, align 8, !tbaa !2428
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64* %RCX, align 8, !tbaa !2428
  %932 = load i64, i64* %RBP, align 8
  %933 = add i64 %932, -20
  %934 = add i64 %931, 24
  store i64 %934, i64* %PC, align 8
  %935 = inttoptr i64 %933 to i32*
  %936 = load i32, i32* %935, align 4
  %937 = sext i32 %936 to i64
  %938 = mul nsw i64 %937, 80
  %939 = lshr i64 %938, 63
  %940 = add i64 %938, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)
  store i64 %940, i64* %RCX, align 8, !tbaa !2428
  %941 = icmp ult i64 %940, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)
  %942 = icmp ult i64 %940, %938
  %943 = or i1 %941, %942
  %944 = zext i1 %943 to i8
  store i8 %944, i8* %19, align 1, !tbaa !2432
  %945 = trunc i64 %940 to i32
  %946 = and i32 %945, 240
  %947 = tail call i32 @llvm.ctpop.i32(i32 %946) #10
  %948 = trunc i32 %947 to i8
  %949 = and i8 %948, 1
  %950 = xor i8 %949, 1
  store i8 %950, i8* %26, align 1, !tbaa !2446
  %951 = xor i64 %938, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)
  %952 = xor i64 %951, %940
  %953 = lshr exact i64 %952, 4
  %954 = trunc i64 %953 to i8
  %955 = and i8 %954, 1
  store i8 %955, i8* %31, align 1, !tbaa !2450
  %956 = icmp eq i64 %940, 0
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %34, align 1, !tbaa !2447
  %958 = lshr i64 %940, 63
  %959 = trunc i64 %958 to i8
  store i8 %959, i8* %37, align 1, !tbaa !2448
  %960 = xor i64 %958, lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64 63)
  %961 = xor i64 %958, %939
  %962 = add nuw nsw i64 %960, %961
  %963 = icmp eq i64 %962, 2
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %43, align 1, !tbaa !2449
  store i64 %940, i64* %RSI, align 8, !tbaa !2428
  %965 = add i64 %932, -168
  %966 = load i32, i32* %EAX, align 4
  %967 = add i64 %931, 40
  store i64 %967, i64* %PC, align 8
  %968 = inttoptr i64 %965 to i32*
  store i32 %966, i32* %968, align 4
  %969 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %970 = add i64 %969, -2031
  %971 = add i64 %969, 7
  %972 = load i64, i64* %RSP, align 8, !tbaa !2428
  %973 = add i64 %972, -8
  %974 = inttoptr i64 %973 to i64*
  store i64 %971, i64* %974, align 8
  store i64 %973, i64* %RSP, align 8, !tbaa !2428
  store i64 %970, i64* %PC, align 8, !tbaa !2428
  %975 = tail call fastcc %struct.Memory* @ext_4005d0_printf(%struct.State* nonnull %0, %struct.Memory* %930)
  %976 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 724), i64* %RDI, align 8, !tbaa !2428
  %977 = load i64, i64* %RBP, align 8
  %978 = add i64 %977, -172
  %979 = load i32, i32* %EAX, align 4
  %980 = add i64 %976, 16
  store i64 %980, i64* %PC, align 8
  %981 = inttoptr i64 %978 to i32*
  store i32 %979, i32* %981, align 4
  %982 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %983 = add i64 %982, -2054
  %984 = add i64 %982, 7
  %985 = load i64, i64* %RSP, align 8, !tbaa !2428
  %986 = add i64 %985, -8
  %987 = inttoptr i64 %986 to i64*
  store i64 %984, i64* %987, align 8
  store i64 %986, i64* %RSP, align 8, !tbaa !2428
  store i64 %983, i64* %PC, align 8, !tbaa !2428
  %988 = tail call fastcc %struct.Memory* @ext_4005d0_printf(%struct.State* nonnull %0, %struct.Memory* %975)
  %989 = load i64, i64* %RBP, align 8
  %990 = add i64 %989, -20
  %991 = load i64, i64* %PC, align 8
  %992 = add i64 %991, 4
  store i64 %992, i64* %PC, align 8
  %993 = inttoptr i64 %990 to i32*
  %994 = load i32, i32* %993, align 4
  %995 = sext i32 %994 to i64
  store i64 %995, i64* %RCX, align 8, !tbaa !2428
  %996 = shl nsw i64 %995, 3
  %997 = add i64 %996, add (i64 ptrtoint (%niter_type* @niter to i64), i64 144)
  %998 = add i64 %991, 12
  store i64 %998, i64* %PC, align 8
  %999 = inttoptr i64 %997 to i64*
  %1000 = load i64, i64* %999, align 8
  store i64 %1000, i64* %RDI, align 8, !tbaa !2428
  %1001 = add i64 %989, -176
  %1002 = load i32, i32* %EAX, align 4
  %1003 = add i64 %991, 18
  store i64 %1003, i64* %PC, align 8
  %1004 = inttoptr i64 %1001 to i32*
  store i32 %1002, i32* %1004, align 4
  %1005 = load i64, i64* %PC, align 8
  %1006 = add i64 %1005, -2095
  %1007 = add i64 %1005, 5
  %1008 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1009 = add i64 %1008, -8
  %1010 = inttoptr i64 %1009 to i64*
  store i64 %1007, i64* %1010, align 8
  store i64 %1009, i64* %RSP, align 8, !tbaa !2428
  store i64 %1006, i64* %PC, align 8, !tbaa !2428
  %1011 = tail call fastcc %struct.Memory* @ext_6026a0_strlen(%struct.State* nonnull %0, %struct.Memory* %988)
  %1012 = load i32, i32* %EAX, align 4
  %1013 = zext i32 %1012 to i64
  %1014 = load i64, i64* %PC, align 8
  store i64 %1013, i64* %RDX, align 8, !tbaa !2428
  %1015 = load i64, i64* %RBP, align 8
  %1016 = add i64 %1015, -28
  %1017 = add i64 %1014, 5
  store i64 %1017, i64* %PC, align 8
  %1018 = inttoptr i64 %1016 to i32*
  store i32 %1012, i32* %1018, align 4
  %1019 = load i64, i64* %RBP, align 8
  %1020 = add i64 %1019, -24
  %1021 = load i64, i64* %PC, align 8
  %1022 = add i64 %1021, 7
  store i64 %1022, i64* %PC, align 8
  %1023 = inttoptr i64 %1020 to i32*
  store i32 0, i32* %1023, align 4
  %.pre92 = load i64, i64* %PC, align 8
  br label %block_400e00

block_400d1f:                                     ; preds = %block_400b50, %block_400ed5
  %1024 = phi i64 [ %.pre90, %block_400b50 ], [ %171, %block_400ed5 ]
  %MEMORY.3 = phi %struct.Memory* [ %674, %block_400b50 ], [ %MEMORY.0, %block_400ed5 ]
  %1025 = load i64, i64* %RBP, align 8
  %1026 = add i64 %1025, -20
  %1027 = add i64 %1024, 4
  store i64 %1027, i64* %PC, align 8
  %1028 = inttoptr i64 %1026 to i32*
  %1029 = load i32, i32* %1028, align 4
  %1030 = add i32 %1029, -8
  %1031 = icmp ult i32 %1029, 8
  %1032 = zext i1 %1031 to i8
  store i8 %1032, i8* %19, align 1, !tbaa !2432
  %1033 = and i32 %1030, 255
  %1034 = tail call i32 @llvm.ctpop.i32(i32 %1033) #10
  %1035 = trunc i32 %1034 to i8
  %1036 = and i8 %1035, 1
  %1037 = xor i8 %1036, 1
  store i8 %1037, i8* %26, align 1, !tbaa !2446
  %1038 = xor i32 %1030, %1029
  %1039 = lshr i32 %1038, 4
  %1040 = trunc i32 %1039 to i8
  %1041 = and i8 %1040, 1
  store i8 %1041, i8* %31, align 1, !tbaa !2450
  %1042 = icmp eq i32 %1030, 0
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %34, align 1, !tbaa !2447
  %1044 = lshr i32 %1030, 31
  %1045 = trunc i32 %1044 to i8
  store i8 %1045, i8* %37, align 1, !tbaa !2448
  %1046 = lshr i32 %1029, 31
  %1047 = xor i32 %1044, %1046
  %1048 = add nuw nsw i32 %1047, %1046
  %1049 = icmp eq i32 %1048, 2
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %43, align 1, !tbaa !2449
  %1051 = icmp ne i8 %1045, 0
  %1052 = xor i1 %1051, %1049
  %.v99 = select i1 %1052, i64 10, i64 457
  %1053 = add i64 %1024, %.v99
  store i64 %1053, i64* %PC, align 8, !tbaa !2428
  br i1 %1052, label %block_400d29, label %block_400ee8

block_40081a:                                     ; preds = %block_400813, %block_400824
  %1054 = phi i64 [ %.pre95, %block_400813 ], [ %844, %block_400824 ]
  %1055 = load i64, i64* %RBP, align 8
  %1056 = add i64 %1055, -24
  %1057 = add i64 %1054, 4
  store i64 %1057, i64* %PC, align 8
  %1058 = inttoptr i64 %1056 to i32*
  %1059 = load i32, i32* %1058, align 4
  %1060 = add i32 %1059, -4
  %1061 = icmp ult i32 %1059, 4
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %19, align 1, !tbaa !2432
  %1063 = and i32 %1060, 255
  %1064 = tail call i32 @llvm.ctpop.i32(i32 %1063) #10
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = xor i8 %1066, 1
  store i8 %1067, i8* %26, align 1, !tbaa !2446
  %1068 = xor i32 %1060, %1059
  %1069 = lshr i32 %1068, 4
  %1070 = trunc i32 %1069 to i8
  %1071 = and i8 %1070, 1
  store i8 %1071, i8* %31, align 1, !tbaa !2450
  %1072 = icmp eq i32 %1060, 0
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %34, align 1, !tbaa !2447
  %1074 = lshr i32 %1060, 31
  %1075 = trunc i32 %1074 to i8
  store i8 %1075, i8* %37, align 1, !tbaa !2448
  %1076 = lshr i32 %1059, 31
  %1077 = xor i32 %1074, %1076
  %1078 = add nuw nsw i32 %1077, %1076
  %1079 = icmp eq i32 %1078, 2
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %43, align 1, !tbaa !2449
  %1081 = icmp ne i8 %1075, 0
  %1082 = xor i1 %1081, %1079
  %.v = select i1 %1082, i64 10, i64 94
  %1083 = add i64 %1054, %.v
  store i64 %1083, i64* %PC, align 8, !tbaa !2428
  br i1 %1082, label %block_400824, label %block_400878

block_400eab:                                     ; preds = %block_400e0c, %block_400ea2
  %1084 = phi i64 [ %1404, %block_400e0c ], [ %.pre93, %block_400ea2 ]
  %1085 = load i64, i64* %RBP, align 8
  %1086 = add i64 %1085, -24
  %1087 = add i64 %1084, 8
  store i64 %1087, i64* %PC, align 8
  %1088 = inttoptr i64 %1086 to i32*
  %1089 = load i32, i32* %1088, align 4
  %1090 = add i32 %1089, 1
  %1091 = zext i32 %1090 to i64
  store i64 %1091, i64* %RAX, align 8, !tbaa !2428
  %1092 = icmp eq i32 %1089, -1
  %1093 = icmp eq i32 %1090, 0
  %1094 = or i1 %1092, %1093
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %19, align 1, !tbaa !2432
  %1096 = and i32 %1090, 255
  %1097 = tail call i32 @llvm.ctpop.i32(i32 %1096) #10
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  %1100 = xor i8 %1099, 1
  store i8 %1100, i8* %26, align 1, !tbaa !2446
  %1101 = xor i32 %1090, %1089
  %1102 = lshr i32 %1101, 4
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  store i8 %1104, i8* %31, align 1, !tbaa !2450
  %1105 = zext i1 %1093 to i8
  store i8 %1105, i8* %34, align 1, !tbaa !2447
  %1106 = lshr i32 %1090, 31
  %1107 = trunc i32 %1106 to i8
  store i8 %1107, i8* %37, align 1, !tbaa !2448
  %1108 = lshr i32 %1089, 31
  %1109 = xor i32 %1106, %1108
  %1110 = add nuw nsw i32 %1109, %1106
  %1111 = icmp eq i32 %1110, 2
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %43, align 1, !tbaa !2449
  %1113 = add i64 %1084, 14
  store i64 %1113, i64* %PC, align 8
  store i32 %1090, i32* %1088, align 4
  %1114 = load i64, i64* %PC, align 8
  %1115 = add i64 %1114, -185
  store i64 %1115, i64* %PC, align 8, !tbaa !2428
  br label %block_400e00

block_400919:                                     ; preds = %block_40088b, %block_4009ce
  %1116 = phi i32 [ %.pre89, %block_40088b ], [ %311, %block_4009ce ]
  %1117 = phi i64 [ %.pre88, %block_40088b ], [ %334, %block_4009ce ]
  %MEMORY.6 = phi %struct.Memory* [ %1485, %block_40088b ], [ %207, %block_4009ce ]
  %1118 = zext i32 %1116 to i64
  store i64 %1118, i64* %RAX, align 8, !tbaa !2428
  %1119 = load i32, i32* bitcast (%niter_type* @niter to i32*), align 16
  %1120 = sub i32 %1116, %1119
  %1121 = icmp ult i32 %1116, %1119
  %1122 = zext i1 %1121 to i8
  store i8 %1122, i8* %19, align 1, !tbaa !2432
  %1123 = and i32 %1120, 255
  %1124 = tail call i32 @llvm.ctpop.i32(i32 %1123) #10
  %1125 = trunc i32 %1124 to i8
  %1126 = and i8 %1125, 1
  %1127 = xor i8 %1126, 1
  store i8 %1127, i8* %26, align 1, !tbaa !2446
  %1128 = xor i32 %1119, %1116
  %1129 = xor i32 %1128, %1120
  %1130 = lshr i32 %1129, 4
  %1131 = trunc i32 %1130 to i8
  %1132 = and i8 %1131, 1
  store i8 %1132, i8* %31, align 1, !tbaa !2450
  %1133 = icmp eq i32 %1120, 0
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %34, align 1, !tbaa !2447
  %1135 = lshr i32 %1120, 31
  %1136 = trunc i32 %1135 to i8
  store i8 %1136, i8* %37, align 1, !tbaa !2448
  %1137 = lshr i32 %1116, 31
  %1138 = lshr i32 %1119, 31
  %1139 = xor i32 %1138, %1137
  %1140 = xor i32 %1135, %1137
  %1141 = add nuw nsw i32 %1140, %1139
  %1142 = icmp eq i32 %1141, 2
  %1143 = zext i1 %1142 to i8
  store i8 %1143, i8* %43, align 1, !tbaa !2449
  %1144 = icmp ne i8 %1136, 0
  %1145 = xor i1 %1144, %1142
  %.v98 = select i1 %1145, i64 20, i64 567
  %1146 = add i64 %1117, %.v98
  %1147 = add i64 %1146, 10
  store i64 %1147, i64* %PC, align 8
  br i1 %1145, label %block_40092d, label %block_400b50

block_400d29:                                     ; preds = %block_400d1f
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64* %RAX, align 8, !tbaa !2428
  %1148 = add i64 %1053, 14
  store i64 %1148, i64* %PC, align 8
  %1149 = load i32, i32* %1028, align 4
  %1150 = sext i32 %1149 to i64
  %1151 = mul nsw i64 %1150, 80
  store i64 %1151, i64* %RCX, align 8, !tbaa !2428
  %1152 = lshr i64 %1151, 63
  %1153 = add i64 %1151, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)
  store i64 %1153, i64* %RAX, align 8, !tbaa !2428
  %1154 = icmp ult i64 %1153, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)
  %1155 = icmp ult i64 %1153, %1151
  %1156 = or i1 %1154, %1155
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %19, align 1, !tbaa !2432
  %1158 = trunc i64 %1153 to i32
  %1159 = and i32 %1158, 240
  %1160 = tail call i32 @llvm.ctpop.i32(i32 %1159) #10
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  %1163 = xor i8 %1162, 1
  store i8 %1163, i8* %26, align 1, !tbaa !2446
  %1164 = xor i64 %1151, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)
  %1165 = xor i64 %1164, %1153
  %1166 = lshr exact i64 %1165, 4
  %1167 = trunc i64 %1166 to i8
  %1168 = and i8 %1167, 1
  store i8 %1168, i8* %31, align 1, !tbaa !2450
  %1169 = icmp eq i64 %1153, 0
  %1170 = zext i1 %1169 to i8
  store i8 %1170, i8* %34, align 1, !tbaa !2447
  %1171 = lshr i64 %1153, 63
  %1172 = trunc i64 %1171 to i8
  store i8 %1172, i8* %37, align 1, !tbaa !2448
  %1173 = xor i64 %1171, lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64 63)
  %1174 = xor i64 %1171, %1152
  %1175 = add nuw nsw i64 %1173, %1174
  %1176 = icmp eq i64 %1175, 2
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %43, align 1, !tbaa !2449
  %1178 = add i64 %1053, 25
  store i64 %1178, i64* %PC, align 8
  %1179 = load i32, i32* %1028, align 4
  %1180 = sext i32 %1179 to i64
  store i64 %1180, i64* %RCX, align 8, !tbaa !2428
  %1181 = shl nsw i64 %1180, 3
  %1182 = add i64 %1181, add (i64 ptrtoint (%niter_type* @niter to i64), i64 144)
  %1183 = add i64 %1053, 33
  store i64 %1183, i64* %PC, align 8
  %1184 = inttoptr i64 %1182 to i64*
  %1185 = load i64, i64* %1184, align 8
  store i64 %1185, i64* %RSI, align 8, !tbaa !2428
  store i64 %1153, i64* %RDI, align 8, !tbaa !2428
  %1186 = add i64 %1053, -1849
  %1187 = add i64 %1053, 41
  %1188 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1189 = add i64 %1188, -8
  %1190 = inttoptr i64 %1189 to i64*
  store i64 %1187, i64* %1190, align 8
  store i64 %1189, i64* %RSP, align 8, !tbaa !2428
  store i64 %1186, i64* %PC, align 8, !tbaa !2428
  %1191 = tail call fastcc %struct.Memory* @ext_602678_strcmp(%struct.State* nonnull %0, %struct.Memory* %MEMORY.3)
  %1192 = load i32, i32* %EAX, align 4
  %1193 = load i64, i64* %PC, align 8
  store i8 0, i8* %19, align 1, !tbaa !2432
  %1194 = and i32 %1192, 255
  %1195 = tail call i32 @llvm.ctpop.i32(i32 %1194) #10
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  %1198 = xor i8 %1197, 1
  store i8 %1198, i8* %26, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2450
  %1199 = icmp eq i32 %1192, 0
  %1200 = zext i1 %1199 to i8
  store i8 %1200, i8* %34, align 1, !tbaa !2447
  %1201 = lshr i32 %1192, 31
  %1202 = trunc i32 %1201 to i8
  store i8 %1202, i8* %37, align 1, !tbaa !2448
  store i8 0, i8* %43, align 1, !tbaa !2449
  %.v101 = select i1 %1199, i64 387, i64 9
  %1203 = add i64 %1193, %.v101
  store i64 %1203, i64* %PC, align 8, !tbaa !2428
  br i1 %1199, label %block_400ed5, label %block_400d5b

block_400813:                                     ; preds = %block_400800
  %1204 = add i64 %1538, -24
  %1205 = add i64 %1574, 7
  store i64 %1205, i64* %PC, align 8
  %1206 = inttoptr i64 %1204 to i32*
  store i32 0, i32* %1206, align 4
  %.pre95 = load i64, i64* %PC, align 8
  br label %block_40081a

block_400e0c:                                     ; preds = %block_400e00
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 737), i64* %RDI, align 8, !tbaa !2428
  store i64 94, i64* %RAX, align 8, !tbaa !2428
  store i64 32, i64* %RCX, align 8, !tbaa !2428
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64* %RDX, align 8, !tbaa !2428
  %1207 = add i64 %1499, -20
  %1208 = add i64 %1535, 34
  store i64 %1208, i64* %PC, align 8
  %1209 = inttoptr i64 %1207 to i32*
  %1210 = load i32, i32* %1209, align 4
  %1211 = sext i32 %1210 to i64
  store i64 %1211, i64* %RSI, align 8, !tbaa !2428
  %1212 = shl nsw i64 %1211, 3
  %1213 = add i64 %1212, add (i64 ptrtoint (%niter_type* @niter to i64), i64 144)
  %1214 = add i64 %1535, 42
  store i64 %1214, i64* %PC, align 8
  %1215 = inttoptr i64 %1213 to i64*
  %1216 = load i64, i64* %1215, align 8
  store i64 %1216, i64* %RSI, align 8, !tbaa !2428
  %1217 = add i64 %1535, 46
  store i64 %1217, i64* %PC, align 8
  %1218 = load i32, i32* %1502, align 4
  %1219 = sext i32 %1218 to i64
  store i64 %1219, i64* %R8, align 8, !tbaa !2428
  %1220 = add i64 %1216, %1219
  %1221 = add i64 %1535, 51
  store i64 %1221, i64* %PC, align 8
  %1222 = inttoptr i64 %1220 to i8*
  %1223 = load i8, i8* %1222, align 1
  %1224 = sext i8 %1223 to i64
  %1225 = and i64 %1224, 4294967295
  store i64 %1225, i64* %691, align 8, !tbaa !2428
  %1226 = add i64 %1535, 55
  store i64 %1226, i64* %PC, align 8
  %1227 = load i32, i32* %1209, align 4
  %1228 = sext i32 %1227 to i64
  %1229 = mul nsw i64 %1228, 80
  store i64 %1229, i64* %RSI, align 8, !tbaa !2428
  %1230 = lshr i64 %1229, 63
  %1231 = add i64 %1229, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)
  store i64 %1231, i64* %RDX, align 8, !tbaa !2428
  %1232 = icmp ult i64 %1231, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)
  %1233 = icmp ult i64 %1231, %1229
  %1234 = or i1 %1232, %1233
  %1235 = zext i1 %1234 to i8
  store i8 %1235, i8* %19, align 1, !tbaa !2432
  %1236 = trunc i64 %1231 to i32
  %1237 = and i32 %1236, 240
  %1238 = tail call i32 @llvm.ctpop.i32(i32 %1237) #10
  %1239 = trunc i32 %1238 to i8
  %1240 = and i8 %1239, 1
  %1241 = xor i8 %1240, 1
  store i8 %1241, i8* %26, align 1, !tbaa !2446
  %1242 = xor i64 %1229, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)
  %1243 = xor i64 %1242, %1231
  %1244 = lshr exact i64 %1243, 4
  %1245 = trunc i64 %1244 to i8
  %1246 = and i8 %1245, 1
  store i8 %1246, i8* %31, align 1, !tbaa !2450
  %1247 = icmp eq i64 %1231, 0
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %34, align 1, !tbaa !2447
  %1249 = lshr i64 %1231, 63
  %1250 = trunc i64 %1249 to i8
  store i8 %1250, i8* %37, align 1, !tbaa !2448
  %1251 = xor i64 %1249, lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64 63)
  %1252 = xor i64 %1249, %1230
  %1253 = add nuw nsw i64 %1251, %1252
  %1254 = icmp eq i64 %1253, 2
  %1255 = zext i1 %1254 to i8
  store i8 %1255, i8* %43, align 1, !tbaa !2449
  %1256 = load i64, i64* %RBP, align 8
  %1257 = add i64 %1256, -24
  %1258 = add i64 %1535, 66
  store i64 %1258, i64* %PC, align 8
  %1259 = inttoptr i64 %1257 to i32*
  %1260 = load i32, i32* %1259, align 4
  %1261 = sext i32 %1260 to i64
  store i64 %1261, i64* %RSI, align 8, !tbaa !2428
  %1262 = add i64 %1231, %1261
  %1263 = add i64 %1535, 71
  store i64 %1263, i64* %PC, align 8
  %1264 = inttoptr i64 %1262 to i8*
  %1265 = load i8, i8* %1264, align 1
  %1266 = sext i8 %1265 to i64
  %1267 = and i64 %1266, 4294967295
  store i64 %1267, i64* %692, align 8, !tbaa !2428
  %1268 = sext i8 %1223 to i32
  %1269 = sext i8 %1265 to i32
  %1270 = sub nsw i32 %1268, %1269
  %1271 = icmp ult i8 %1223, %1265
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %19, align 1, !tbaa !2432
  %1273 = and i32 %1270, 255
  %1274 = tail call i32 @llvm.ctpop.i32(i32 %1273) #10
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  %1277 = xor i8 %1276, 1
  store i8 %1277, i8* %26, align 1, !tbaa !2446
  %1278 = xor i8 %1265, %1223
  %1279 = zext i8 %1278 to i32
  %1280 = xor i32 %1279, %1270
  %1281 = lshr i32 %1280, 4
  %1282 = trunc i32 %1281 to i8
  %1283 = and i8 %1282, 1
  store i8 %1283, i8* %31, align 1, !tbaa !2450
  %1284 = icmp eq i32 %1270, 0
  %1285 = zext i1 %1284 to i8
  store i8 %1285, i8* %34, align 1, !tbaa !2447
  %1286 = lshr i32 %1270, 31
  %1287 = trunc i32 %1286 to i8
  store i8 %1287, i8* %37, align 1, !tbaa !2448
  %1288 = lshr i32 %1268, 31
  %1289 = lshr i32 %1269, 31
  %1290 = xor i32 %1289, %1288
  %1291 = xor i32 %1286, %1288
  %1292 = add nuw nsw i32 %1291, %1290
  %1293 = icmp eq i32 %1292, 2
  %1294 = zext i1 %1293 to i8
  store i8 %1294, i8* %43, align 1, !tbaa !2449
  %1295 = load i32, i32* %ECX, align 4
  %1296 = zext i32 %1295 to i64
  %1297 = load i64, i64* %RAX, align 8, !tbaa !2428
  %1298 = select i1 %1284, i64 %1296, i64 %1297
  %1299 = and i64 %1298, 4294967295
  store i64 %1299, i64* %RAX, align 8, !tbaa !2428
  %1300 = and i64 %1298, 4294967295
  store i64 %1300, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %1301 = add i64 %1535, -2108
  %1302 = add i64 %1535, 86
  %1303 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1304 = add i64 %1303, -8
  %1305 = inttoptr i64 %1304 to i64*
  store i64 %1302, i64* %1305, align 8
  store i64 %1304, i64* %RSP, align 8, !tbaa !2428
  store i64 %1301, i64* %PC, align 8, !tbaa !2428
  %1306 = tail call fastcc %struct.Memory* @ext_4005d0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.7)
  %1307 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64* %RDX, align 8, !tbaa !2428
  %1308 = load i64, i64* %RBP, align 8
  %1309 = add i64 %1308, -20
  %1310 = add i64 %1307, 14
  store i64 %1310, i64* %PC, align 8
  %1311 = inttoptr i64 %1309 to i32*
  %1312 = load i32, i32* %1311, align 4
  %1313 = sext i32 %1312 to i64
  store i64 %1313, i64* %RDI, align 8, !tbaa !2428
  %1314 = shl nsw i64 %1313, 3
  %1315 = add i64 %1314, add (i64 ptrtoint (%niter_type* @niter to i64), i64 144)
  %1316 = add i64 %1307, 22
  store i64 %1316, i64* %PC, align 8
  %1317 = inttoptr i64 %1315 to i64*
  %1318 = load i64, i64* %1317, align 8
  store i64 %1318, i64* %RDI, align 8, !tbaa !2428
  %1319 = add i64 %1308, -24
  %1320 = add i64 %1307, 26
  store i64 %1320, i64* %PC, align 8
  %1321 = inttoptr i64 %1319 to i32*
  %1322 = load i32, i32* %1321, align 4
  %1323 = sext i32 %1322 to i64
  store i64 %1323, i64* %R8, align 8, !tbaa !2428
  %1324 = add i64 %1318, %1323
  %1325 = add i64 %1307, 31
  store i64 %1325, i64* %PC, align 8
  %1326 = inttoptr i64 %1324 to i8*
  %1327 = load i8, i8* %1326, align 1
  %1328 = sext i8 %1327 to i64
  %1329 = and i64 %1328, 4294967295
  store i64 %1329, i64* %RCX, align 8, !tbaa !2428
  %1330 = add i64 %1307, 35
  store i64 %1330, i64* %PC, align 8
  %1331 = load i32, i32* %1311, align 4
  %1332 = sext i32 %1331 to i64
  %1333 = mul nsw i64 %1332, 80
  store i64 %1333, i64* %RDI, align 8, !tbaa !2428
  %1334 = lshr i64 %1333, 63
  %1335 = add i64 %1333, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)
  store i64 %1335, i64* %RDX, align 8, !tbaa !2428
  %1336 = icmp ult i64 %1335, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)
  %1337 = icmp ult i64 %1335, %1333
  %1338 = or i1 %1336, %1337
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %19, align 1, !tbaa !2432
  %1340 = trunc i64 %1335 to i32
  %1341 = and i32 %1340, 240
  %1342 = tail call i32 @llvm.ctpop.i32(i32 %1341) #10
  %1343 = trunc i32 %1342 to i8
  %1344 = and i8 %1343, 1
  %1345 = xor i8 %1344, 1
  store i8 %1345, i8* %26, align 1, !tbaa !2446
  %1346 = xor i64 %1333, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624)
  %1347 = xor i64 %1346, %1335
  %1348 = lshr exact i64 %1347, 4
  %1349 = trunc i64 %1348 to i8
  %1350 = and i8 %1349, 1
  store i8 %1350, i8* %31, align 1, !tbaa !2450
  %1351 = icmp eq i64 %1335, 0
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %34, align 1, !tbaa !2447
  %1353 = lshr i64 %1335, 63
  %1354 = trunc i64 %1353 to i8
  store i8 %1354, i8* %37, align 1, !tbaa !2448
  %1355 = xor i64 %1353, lshr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 624), i64 63)
  %1356 = xor i64 %1353, %1334
  %1357 = add nuw nsw i64 %1355, %1356
  %1358 = icmp eq i64 %1357, 2
  %1359 = zext i1 %1358 to i8
  store i8 %1359, i8* %43, align 1, !tbaa !2449
  %1360 = add i64 %1307, 46
  store i64 %1360, i64* %PC, align 8
  %1361 = load i32, i32* %1321, align 4
  %1362 = sext i32 %1361 to i64
  store i64 %1362, i64* %RDI, align 8, !tbaa !2428
  %1363 = add i64 %1335, %1362
  %1364 = add i64 %1307, 50
  store i64 %1364, i64* %PC, align 8
  %1365 = inttoptr i64 %1363 to i8*
  %1366 = load i8, i8* %1365, align 1
  %1367 = sext i8 %1366 to i64
  %1368 = and i64 %1367, 4294967295
  store i64 %1368, i64* %RSI, align 8, !tbaa !2428
  %1369 = sext i8 %1327 to i32
  %1370 = sext i8 %1366 to i32
  %1371 = sub nsw i32 %1369, %1370
  %1372 = icmp ult i8 %1327, %1366
  %1373 = zext i1 %1372 to i8
  store i8 %1373, i8* %19, align 1, !tbaa !2432
  %1374 = and i32 %1371, 255
  %1375 = tail call i32 @llvm.ctpop.i32(i32 %1374) #10
  %1376 = trunc i32 %1375 to i8
  %1377 = and i8 %1376, 1
  %1378 = xor i8 %1377, 1
  store i8 %1378, i8* %26, align 1, !tbaa !2446
  %1379 = xor i8 %1366, %1327
  %1380 = zext i8 %1379 to i32
  %1381 = xor i32 %1380, %1371
  %1382 = lshr i32 %1381, 4
  %1383 = trunc i32 %1382 to i8
  %1384 = and i8 %1383, 1
  store i8 %1384, i8* %31, align 1, !tbaa !2450
  %1385 = icmp eq i32 %1371, 0
  %1386 = zext i1 %1385 to i8
  store i8 %1386, i8* %34, align 1, !tbaa !2447
  %1387 = lshr i32 %1371, 31
  %1388 = trunc i32 %1387 to i8
  store i8 %1388, i8* %37, align 1, !tbaa !2448
  %1389 = lshr i32 %1369, 31
  %1390 = lshr i32 %1370, 31
  %1391 = xor i32 %1390, %1389
  %1392 = xor i32 %1387, %1389
  %1393 = add nuw nsw i32 %1392, %1391
  %1394 = icmp eq i32 %1393, 2
  %1395 = zext i1 %1394 to i8
  store i8 %1395, i8* %43, align 1, !tbaa !2449
  %1396 = load i64, i64* %RBP, align 8
  %1397 = add i64 %1396, -180
  %1398 = load i32, i32* %EAX, align 4
  %1399 = add i64 %1307, 58
  store i64 %1399, i64* %PC, align 8
  %1400 = inttoptr i64 %1397 to i32*
  store i32 %1398, i32* %1400, align 4
  %1401 = load i64, i64* %PC, align 8
  %1402 = load i8, i8* %34, align 1, !tbaa !2447
  %1403 = icmp ne i8 %1402, 0
  %.v111 = select i1 %1403, i64 15, i64 6
  %1404 = add i64 %1401, %.v111
  store i64 %1404, i64* %PC, align 8, !tbaa !2428
  %1405 = icmp eq i8 %1402, 1
  br i1 %1405, label %block_400eab, label %block_400ea2

block_40088b:                                     ; preds = %block_400800
  %AX = bitcast %union.anon* %3 to i16*
  %RDI = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %1406 = bitcast [32 x %union.VectorReg]* %6 to i8*
  %1407 = bitcast [32 x %union.VectorReg]* %6 to double*
  %1408 = bitcast %union.VectorReg* %7 to double*
  %1409 = bitcast %union.VectorReg* %8 to double*
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 120), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %1410 = add i64 %1574, -699
  %1411 = add i64 %1574, 17
  %1412 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1413 = add i64 %1412, -8
  %1414 = inttoptr i64 %1413 to i64*
  store i64 %1411, i64* %1414, align 8
  store i64 %1413, i64* %RSP, align 8, !tbaa !2428
  store i64 %1410, i64* %PC, align 8, !tbaa !2428
  %1415 = tail call fastcc %struct.Memory* @ext_4005d0_printf(%struct.State* nonnull %0, %struct.Memory* %2)
  %1416 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 174), i64* %RDI, align 8, !tbaa !2428
  %1417 = load i32, i32* bitcast (%niter_type* @niter to i32*), align 16
  %1418 = zext i32 %1417 to i64
  store i64 %1418, i64* %RSI, align 8, !tbaa !2428
  %1419 = load i64, i64* %RBP, align 8
  %1420 = add i64 %1419, -52
  %1421 = load i32, i32* %EAX, align 4
  %1422 = add i64 %1416, 20
  store i64 %1422, i64* %PC, align 8
  %1423 = inttoptr i64 %1420 to i32*
  store i32 %1421, i32* %1423, align 4
  %1424 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %1425 = add i64 %1424, -736
  %1426 = add i64 %1424, 7
  %1427 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1428 = add i64 %1427, -8
  %1429 = inttoptr i64 %1428 to i64*
  store i64 %1426, i64* %1429, align 8
  store i64 %1428, i64* %RSP, align 8, !tbaa !2428
  store i64 %1425, i64* %PC, align 8, !tbaa !2428
  %1430 = tail call fastcc %struct.Memory* @ext_4005d0_printf(%struct.State* nonnull %0, %struct.Memory* %1415)
  %1431 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 232), i64* %RDI, align 8, !tbaa !2428
  %1432 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 80) to double*), align 16
  %1433 = load i32, i32* bitcast (%niter_type* @niter to i32*), align 16
  %1434 = sitofp i32 %1433 to double
  %1435 = bitcast i64* %50 to <2 x i32>*
  %1436 = load <2 x i32>, <2 x i32>* %1435, align 1
  %1437 = fdiv double %1434, %1432
  store double %1437, double* %1408, align 1, !tbaa !2451
  %.cast = bitcast double %1437 to <2 x i32>
  %1438 = extractelement <2 x i32> %.cast, i32 0
  %1439 = bitcast [32 x %union.VectorReg]* %6 to i32*
  store i32 %1438, i32* %1439, align 1, !tbaa !2455
  %1440 = extractelement <2 x i32> %.cast, i32 1
  %1441 = getelementptr inbounds i8, i8* %1406, i64 4
  %1442 = bitcast i8* %1441 to i32*
  store i32 %1440, i32* %1442, align 1, !tbaa !2455
  %1443 = extractelement <2 x i32> %1436, i32 0
  %1444 = bitcast i64* %46 to i32*
  store i32 %1443, i32* %1444, align 1, !tbaa !2455
  %1445 = extractelement <2 x i32> %1436, i32 1
  %1446 = getelementptr inbounds i8, i8* %1406, i64 12
  %1447 = bitcast i8* %1446 to i32*
  store i32 %1445, i32* %1447, align 1, !tbaa !2455
  %1448 = load i64, i64* %RBP, align 8
  %1449 = add i64 %1448, -56
  %1450 = load i32, i32* %EAX, align 4
  %1451 = add i64 %1431, 37
  store i64 %1451, i64* %PC, align 8
  %1452 = inttoptr i64 %1449 to i32*
  store i32 %1450, i32* %1452, align 4
  %1453 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2454
  %1454 = add i64 %1453, -780
  %1455 = add i64 %1453, 7
  %1456 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1457 = add i64 %1456, -8
  %1458 = inttoptr i64 %1457 to i64*
  store i64 %1455, i64* %1458, align 8
  store i64 %1457, i64* %RSP, align 8, !tbaa !2428
  store i64 %1454, i64* %PC, align 8, !tbaa !2428
  %1459 = tail call fastcc %struct.Memory* @ext_4005d0_printf(%struct.State* nonnull %0, %struct.Memory* %1430)
  %1460 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 288), i64* %RDI, align 8, !tbaa !2428
  %1461 = load i64, i64* %RBP, align 8
  %1462 = add i64 %1461, -60
  %1463 = load i32, i32* %EAX, align 4
  %1464 = add i64 %1460, 13
  store i64 %1464, i64* %PC, align 8
  %1465 = inttoptr i64 %1462 to i32*
  store i32 %1463, i32* %1465, align 4
  %1466 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %1467 = add i64 %1466, -800
  %1468 = add i64 %1466, 7
  %1469 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1470 = add i64 %1469, -8
  %1471 = inttoptr i64 %1470 to i64*
  store i64 %1468, i64* %1471, align 8
  store i64 %1470, i64* %RSP, align 8, !tbaa !2428
  store i64 %1467, i64* %PC, align 8, !tbaa !2428
  %1472 = tail call fastcc %struct.Memory* @ext_4005d0_printf(%struct.State* nonnull %0, %struct.Memory* %1459)
  %1473 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4015e0__rodata_type* @seg_4015e0__rodata to i64), i64 348), i64* %RDI, align 8, !tbaa !2428
  %1474 = load i64, i64* %RBP, align 8
  %1475 = add i64 %1474, -64
  %1476 = load i32, i32* %EAX, align 4
  %1477 = add i64 %1473, 13
  store i64 %1477, i64* %PC, align 8
  %1478 = inttoptr i64 %1475 to i32*
  store i32 %1476, i32* %1478, align 4
  %1479 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2454
  %1480 = add i64 %1479, -820
  %1481 = add i64 %1479, 7
  %1482 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1483 = add i64 %1482, -8
  %1484 = inttoptr i64 %1483 to i64*
  store i64 %1481, i64* %1484, align 8
  store i64 %1483, i64* %RSP, align 8, !tbaa !2428
  store i64 %1480, i64* %PC, align 8, !tbaa !2428
  %1485 = tail call fastcc %struct.Memory* @ext_4005d0_printf(%struct.State* nonnull %0, %struct.Memory* %1472)
  %1486 = load i64, i64* %PC, align 8
  store i32 0, i32* bitcast (%itercount_type* @itercount to i32*), align 8
  %1487 = load i64, i64* %RBP, align 8
  %1488 = add i64 %1487, -68
  %1489 = load i32, i32* %EAX, align 4
  %1490 = add i64 %1486, 14
  store i64 %1490, i64* %PC, align 8
  %1491 = inttoptr i64 %1488 to i32*
  store i32 %1489, i32* %1491, align 4
  %1492 = bitcast %union.VectorReg* %9 to <2 x i32>*
  %1493 = bitcast i64* %62 to <2 x i32>*
  %.pre88 = load i64, i64* %PC, align 8
  %.pre89 = load i32, i32* bitcast (%itercount_type* @itercount to i32*), align 8
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 2
  %1495 = bitcast i64* %1494 to i8*
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 2
  %1497 = bitcast i64* %1496 to i8*
  br label %block_400919

block_400e00:                                     ; preds = %block_400eab, %block_400d5b
  %1498 = phi i64 [ %.pre92, %block_400d5b ], [ %1115, %block_400eab ]
  %MEMORY.7 = phi %struct.Memory* [ %1011, %block_400d5b ], [ %1306, %block_400eab ]
  %1499 = load i64, i64* %RBP, align 8
  %1500 = add i64 %1499, -24
  %1501 = add i64 %1498, 3
  store i64 %1501, i64* %PC, align 8
  %1502 = inttoptr i64 %1500 to i32*
  %1503 = load i32, i32* %1502, align 4
  %1504 = zext i32 %1503 to i64
  store i64 %1504, i64* %RAX, align 8, !tbaa !2428
  %1505 = add i64 %1499, -28
  %1506 = add i64 %1498, 6
  store i64 %1506, i64* %PC, align 8
  %1507 = inttoptr i64 %1505 to i32*
  %1508 = load i32, i32* %1507, align 4
  %1509 = sub i32 %1503, %1508
  %1510 = icmp ult i32 %1503, %1508
  %1511 = zext i1 %1510 to i8
  store i8 %1511, i8* %19, align 1, !tbaa !2432
  %1512 = and i32 %1509, 255
  %1513 = tail call i32 @llvm.ctpop.i32(i32 %1512) #10
  %1514 = trunc i32 %1513 to i8
  %1515 = and i8 %1514, 1
  %1516 = xor i8 %1515, 1
  store i8 %1516, i8* %26, align 1, !tbaa !2446
  %1517 = xor i32 %1508, %1503
  %1518 = xor i32 %1517, %1509
  %1519 = lshr i32 %1518, 4
  %1520 = trunc i32 %1519 to i8
  %1521 = and i8 %1520, 1
  store i8 %1521, i8* %31, align 1, !tbaa !2450
  %1522 = icmp eq i32 %1509, 0
  %1523 = zext i1 %1522 to i8
  store i8 %1523, i8* %34, align 1, !tbaa !2447
  %1524 = lshr i32 %1509, 31
  %1525 = trunc i32 %1524 to i8
  store i8 %1525, i8* %37, align 1, !tbaa !2448
  %1526 = lshr i32 %1503, 31
  %1527 = lshr i32 %1508, 31
  %1528 = xor i32 %1527, %1526
  %1529 = xor i32 %1524, %1526
  %1530 = add nuw nsw i32 %1529, %1528
  %1531 = icmp eq i32 %1530, 2
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %43, align 1, !tbaa !2449
  %1533 = icmp ne i8 %1525, 0
  %1534 = xor i1 %1533, %1531
  %.v102 = select i1 %1534, i64 12, i64 190
  %1535 = add i64 %1498, %.v102
  %1536 = add i64 %1535, 10
  store i64 %1536, i64* %PC, align 8
  br i1 %1534, label %block_400e0c, label %block_400ebe

block_400800:                                     ; preds = %block_400878, %block_400730
  %1537 = phi i64 [ %139, %block_400878 ], [ %.pre, %block_400730 ]
  %1538 = load i64, i64* %RBP, align 8
  %1539 = add i64 %1538, -20
  %1540 = add i64 %1537, 3
  store i64 %1540, i64* %PC, align 8
  %1541 = inttoptr i64 %1539 to i32*
  %1542 = load i32, i32* %1541, align 4
  %1543 = zext i32 %1542 to i64
  store i64 %1543, i64* %RAX, align 8, !tbaa !2428
  %1544 = load i16, i16* inttoptr (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 96) to i16*), align 16
  %1545 = sext i16 %1544 to i64
  %1546 = and i64 %1545, 4294967295
  store i64 %1546, i64* %RCX, align 8, !tbaa !2428
  %1547 = sext i16 %1544 to i32
  %1548 = sub i32 %1542, %1547
  %1549 = icmp ult i32 %1542, %1547
  %1550 = zext i1 %1549 to i8
  store i8 %1550, i8* %19, align 1, !tbaa !2432
  %1551 = and i32 %1548, 255
  %1552 = tail call i32 @llvm.ctpop.i32(i32 %1551) #10
  %1553 = trunc i32 %1552 to i8
  %1554 = and i8 %1553, 1
  %1555 = xor i8 %1554, 1
  store i8 %1555, i8* %26, align 1, !tbaa !2446
  %1556 = xor i32 %1547, %1542
  %1557 = xor i32 %1556, %1548
  %1558 = lshr i32 %1557, 4
  %1559 = trunc i32 %1558 to i8
  %1560 = and i8 %1559, 1
  store i8 %1560, i8* %31, align 1, !tbaa !2450
  %1561 = icmp eq i32 %1548, 0
  %1562 = zext i1 %1561 to i8
  store i8 %1562, i8* %34, align 1, !tbaa !2447
  %1563 = lshr i32 %1548, 31
  %1564 = trunc i32 %1563 to i8
  store i8 %1564, i8* %37, align 1, !tbaa !2448
  %1565 = lshr i32 %1542, 31
  %1566 = lshr i32 %1547, 31
  %1567 = xor i32 %1566, %1565
  %1568 = xor i32 %1563, %1565
  %1569 = add nuw nsw i32 %1568, %1567
  %1570 = icmp eq i32 %1569, 2
  %1571 = zext i1 %1570 to i8
  store i8 %1571, i8* %43, align 1, !tbaa !2449
  %1572 = icmp ne i8 %1564, 0
  %1573 = xor i1 %1572, %1570
  %.v97 = select i1 %1573, i64 19, i64 139
  %1574 = add i64 %1537, %.v97
  store i64 %1574, i64* %PC, align 8, !tbaa !2428
  br i1 %1573, label %block_400813, label %block_40088b
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400670__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_400670:
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
define %struct.Memory* @sub_4015d0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_4015d0:
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
define %struct.Memory* @sub_400640__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400640:
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
  store i8 1, i8* %5, align 1, !tbaa !2447
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6, align 1, !tbaa !2448
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7, align 1, !tbaa !2449
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8, align 1, !tbaa !2450
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
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #10
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  store i8 %21, i8* %4, align 1, !tbaa !2446
  %22 = icmp eq i64 %15, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %5, align 1, !tbaa !2447
  %24 = lshr i64 %12, 63
  %25 = trunc i64 %24 to i8
  store i8 %25, i8* %6, align 1, !tbaa !2448
  store i8 0, i8* %7, align 1, !tbaa !2449
  store i8 0, i8* %8, align 1, !tbaa !2450
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
  store i64 ptrtoint (void ()* @callback_sub_4015d0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401560___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %35 = add i64 %34, 27
  %36 = add i64 %15, -24
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37, align 8
  store i64 %36, i64* %RSP, align 8, !tbaa !2428
  %38 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %38, i64* %PC, align 8, !tbaa !2428
  %39 = tail call fastcc %struct.Memory* @ext_602670___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC, align 8
  %42 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %41, %struct.Memory* %39)
  ret %struct.Memory* %42
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400680_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400680:
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
  %10 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)) to i32), i32 255)) #10
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1, !tbaa !2446
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295)), i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64))), i64 4) to i8), i8 1), i8* %15, align 1, !tbaa !2450
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0) to i8), i8* %16, align 1, !tbaa !2447
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 trunc (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 63) to i8), i8* %17, align 1, !tbaa !2448
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 63), i64 lshr (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 63)), i64 xor (i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63), i64 lshr (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 63))), i64 2) to i8), i8* %18, align 1, !tbaa !2449
  store i64 %6, i64* %RBP, align 8, !tbaa !2428
  %19 = add i64 %8, select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), i64 39, i64 16)
  store i64 %19, i64* %PC, align 8, !tbaa !2428
  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), label %block_4006a8, label %block_400691

block_400691:                                     ; preds = %block_400680
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %9, align 1, !tbaa !2432
  store i8 1, i8* %14, align 1, !tbaa !2446
  store i8 1, i8* %16, align 1, !tbaa !2447
  store i8 0, i8* %17, align 1, !tbaa !2448
  store i8 0, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %15, align 1, !tbaa !2450
  %20 = add i64 %8, add (i64 select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), i64 39, i64 16), i64 23)
  store i64 %20, i64* %PC, align 8, !tbaa !2428
  br label %block_4006a8

block_4006a8:                                     ; preds = %block_400691, %block_400680
  %21 = phi i64 [ %20, %block_400691 ], [ %19, %block_400680 ]
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
define %struct.Memory* @sub_4006b0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4006b0:
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
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #10
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
  br i1 %29, label %block_4006e8, label %block_4006d3

block_4006d3:                                     ; preds = %block_4006b0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2432
  store i8 1, i8* %12, align 1, !tbaa !2446
  store i8 1, i8* %14, align 1, !tbaa !2447
  store i8 0, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %13, align 1, !tbaa !2450
  %34 = add i64 %33, 21
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br label %block_4006e8

block_4006e8:                                     ; preds = %block_4006d3, %block_4006b0
  %35 = phi i64 [ %34, %block_4006d3 ], [ %33, %block_4006b0 ]
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
define %struct.Memory* @sub_4006f0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4006f0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i64 0, i32 0, i64 0), align 16
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4, align 1, !tbaa !2432
  %5 = zext i8 %3 to i32
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #10
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  %9 = xor i8 %8, 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9, i8* %10, align 1, !tbaa !2446
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1, !tbaa !2450
  %12 = icmp eq i8 %3, 0
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %13, i8* %14, align 1, !tbaa !2447
  %15 = lshr i8 %3, 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %15, i8* %16, align 1, !tbaa !2448
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1, !tbaa !2449
  %.v = select i1 %12, i64 9, i64 32
  %18 = add i64 %.v, %1
  store i64 %18, i64* %PC, align 8, !tbaa !2428
  br i1 %12, label %block_4006f9, label %block_400710

block_400710:                                     ; preds = %block_4006f0
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

block_4006f9:                                     ; preds = %block_4006f0
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
  %36 = tail call %struct.Memory* @sub_400680_deregister_tm_clones(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
  %37 = load i64, i64* %PC, align 8
  store i8 1, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i64 0, i32 0, i64 0), align 16
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
define %struct.Memory* @sub_400720_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400720:
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
  %13 = tail call %struct.Memory* @sub_4006b0_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401560___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_401560:
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
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #10
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
  %63 = add i64 %38, -4075
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_400590__init_proc(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2432
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #10
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %44, align 1, !tbaa !2446
  %76 = icmp eq i64 %68, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %46, align 1, !tbaa !2447
  %78 = lshr i64 %68, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %47, align 1, !tbaa !2448
  store i8 0, i8* %48, align 1, !tbaa !2449
  store i8 0, i8* %45, align 1, !tbaa !2450
  %.v = select i1 %76, i64 37, i64 5
  %80 = add i64 %69, %.v
  store i64 %80, i64* %PC, align 8, !tbaa !2428
  br i1 %76, label %block_4015b6, label %block_401596

block_4015b6.loopexit:                            ; preds = %block_4015a0
  br label %block_4015b6

block_4015b6:                                     ; preds = %block_4015b6.loopexit, %block_401560
  %81 = phi i64 [ %80, %block_401560 ], [ %179, %block_4015b6.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_401560 ], [ %149, %block_4015b6.loopexit ]
  %82 = load i64, i64* %RSP, align 8
  %83 = add i64 %82, 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  %84 = icmp ugt i64 %82, -9
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %43, align 1, !tbaa !2432
  %86 = trunc i64 %83 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #10
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %44, align 1, !tbaa !2446
  %92 = xor i64 %83, %82
  %93 = lshr i64 %92, 4
  %94 = trunc i64 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %45, align 1, !tbaa !2450
  %96 = icmp eq i64 %83, 0
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %46, align 1, !tbaa !2447
  %98 = lshr i64 %83, 63
  %99 = trunc i64 %98 to i8
  store i8 %99, i8* %47, align 1, !tbaa !2448
  %100 = lshr i64 %82, 63
  %101 = xor i64 %98, %100
  %102 = add nuw nsw i64 %101, %98
  %103 = icmp eq i64 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %48, align 1, !tbaa !2449
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

block_401596:                                     ; preds = %block_401560
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2447
  store i8 0, i8* %47, align 1, !tbaa !2448
  store i8 0, i8* %48, align 1, !tbaa !2449
  store i8 0, i8* %45, align 1, !tbaa !2450
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_4015a0

block_4015a0:                                     ; preds = %block_4015a0, %block_401596
  %134 = phi i64 [ 0, %block_401596 ], [ %152, %block_4015a0 ]
  %135 = phi i64 [ %133, %block_401596 ], [ %179, %block_4015a0 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401596 ], [ %149, %block_4015a0 ]
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
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #10
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %44, align 1, !tbaa !2446
  %164 = xor i64 %152, %154
  %165 = xor i64 %164, %155
  %166 = lshr i64 %165, 4
  %167 = trunc i64 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %45, align 1, !tbaa !2450
  %169 = icmp eq i64 %155, 0
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %46, align 1, !tbaa !2447
  %171 = lshr i64 %155, 63
  %172 = trunc i64 %171 to i8
  store i8 %172, i8* %47, align 1, !tbaa !2448
  %173 = lshr i64 %154, 63
  %174 = xor i64 %153, %173
  %175 = xor i64 %171, %173
  %176 = add nuw nsw i64 %175, %174
  %177 = icmp eq i64 %176, 2
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %48, align 1, !tbaa !2449
  %.v2 = select i1 %169, i64 9, i64 -13
  %179 = add i64 %151, %.v2
  store i64 %179, i64* %PC, align 8, !tbaa !2428
  br i1 %169, label %block_4015b6.loopexit, label %block_4015a0
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #6

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400720_frame_dummy() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400720;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400720_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400720_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4006f0___do_global_dtors_aux() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4006f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_4006f0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4006f0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: alwaysinline inlinehint nounwind
define %struct.Memory* @ext_6026d0_sin(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #11 {
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

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602690_asin(%struct.State*, %struct.Memory*) unnamed_addr #12 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @asin to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: alwaysinline inlinehint nounwind
define %struct.Memory* @ext_602668_cos(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #11 {
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
  %11 = tail call double @cos(double %6)
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 24, i32 8, i1 false)
  store double %11, double* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint nounwind
define %struct.Memory* @ext_6026c8_tan(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #11 {
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
  %11 = tail call double @tan(double %6)
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 24, i32 8, i1 false)
  store double %11, double* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_4005d0_printf(%struct.State*, %struct.Memory*) unnamed_addr #12 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6026e0_sprintf(%struct.State*, %struct.Memory*) unnamed_addr #12 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6026a0_strlen(%struct.State*, %struct.Memory*) unnamed_addr #12 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602678_strcmp(%struct.State*, %struct.Memory*) unnamed_addr #12 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4015d0___libc_csu_fini() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4015d0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_4015d0___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #13 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4015d0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401560___libc_csu_init() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401560;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #10
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_401560___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401560___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400730;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #10
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
  %6 = tail call %struct.Memory* @sub_400730_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602670___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #12 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4015d4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #10
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
  %6 = tail call %struct.Memory* @sub_4015d4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400590;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #10
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
  %6 = tail call %struct.Memory* @sub_400590__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #10 {
  tail call void @callback_sub_4015d0___libc_csu_fini()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_constructor() #10 {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_401560___libc_csu_init()
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
attributes #11 = { alwaysinline inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noinline nounwind }
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
!2447 = !{!2433, !2430, i64 2071}
!2448 = !{!2433, !2430, i64 2073}
!2449 = !{!2433, !2430, i64 2077}
!2450 = !{!2433, !2430, i64 2069}
!2451 = !{!2452, !2452, i64 0}
!2452 = !{!"double", !2430, i64 0}
!2453 = !{!2445, !2445, i64 0}
!2454 = !{!2430, !2430, i64 0}
!2455 = !{!2456, !2456, i64 0}
!2456 = !{!"float", !2430, i64 0}
!2457 = !{!2458}
!2458 = distinct !{!2458, !2459, !"ext_6026d0_sin: argument 0"}
!2459 = distinct !{!2459, !"ext_6026d0_sin"}
!2460 = !{!2461}
!2461 = distinct !{!2461, !2459, !"ext_6026d0_sin: argument 1"}
!2462 = !{!2463}
!2463 = distinct !{!2463, !2464, !"ext_6026d0_sin: argument 0"}
!2464 = distinct !{!2464, !"ext_6026d0_sin"}
!2465 = !{!2466}
!2466 = distinct !{!2466, !2464, !"ext_6026d0_sin: argument 1"}
!2467 = !{!2468}
!2468 = distinct !{!2468, !2469, !"ext_6026c8_tan: argument 0"}
!2469 = distinct !{!2469, !"ext_6026c8_tan"}
!2470 = !{!2471}
!2471 = distinct !{!2471, !2469, !"ext_6026c8_tan: argument 1"}
!2472 = !{!2473}
!2473 = distinct !{!2473, !2474, !"ext_6026d0_sin: argument 0"}
!2474 = distinct !{!2474, !"ext_6026d0_sin"}
!2475 = !{!2476}
!2476 = distinct !{!2476, !2474, !"ext_6026d0_sin: argument 1"}
!2477 = !{!2478}
!2478 = distinct !{!2478, !2479, !"ext_602668_cos: argument 0"}
!2479 = distinct !{!2479, !"ext_602668_cos"}
!2480 = !{!2481}
!2481 = distinct !{!2481, !2479, !"ext_602668_cos: argument 1"}
!2482 = !{!2483}
!2483 = distinct !{!2483, !2484, !"ext_602668_cos: argument 0"}
!2484 = distinct !{!2484, !"ext_602668_cos"}
!2485 = !{!2486}
!2486 = distinct !{!2486, !2484, !"ext_602668_cos: argument 1"}
!2487 = !{!2488}
!2488 = distinct !{!2488, !2489, !"ext_6026d0_sin: argument 0"}
!2489 = distinct !{!2489, !"ext_6026d0_sin"}
!2490 = !{!2491}
!2491 = distinct !{!2491, !2489, !"ext_6026d0_sin: argument 1"}
!2492 = !{!2493}
!2493 = distinct !{!2493, !2494, !"ext_6026d0_sin: argument 0"}
!2494 = distinct !{!2494, !"ext_6026d0_sin"}
!2495 = !{!2496}
!2496 = distinct !{!2496, !2494, !"ext_6026d0_sin: argument 1"}
!2497 = !{!2498}
!2498 = distinct !{!2498, !2499, !"ext_6026d0_sin: argument 0"}
!2499 = distinct !{!2499, !"ext_6026d0_sin"}
!2500 = !{!2501}
!2501 = distinct !{!2501, !2499, !"ext_6026d0_sin: argument 1"}
!2502 = !{!2436, !2436, i64 0}
