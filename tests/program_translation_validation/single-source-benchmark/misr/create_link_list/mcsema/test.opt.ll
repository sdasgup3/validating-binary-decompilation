; ModuleID = 'mcsema/test.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4010a0__rodata_type = type <{ [44 x i8], [30 x i8], [31 x i8], [43 x i8], [75 x i8], [32 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%__bss_start_type = type <{ [4 x i8] }>
%reg_len_type = type <{ [4 x i8] }>
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
@seg_4010a0__rodata = internal constant %seg_4010a0__rodata_type <{ [44 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\D0?\00\00\00\00\00\00\F0?\00\00\00\00\00\88\C3@\00\00\00\00\00@\8F@%hu\00", [30 x i8] c"Register too long; Max. = %d\0A\00", [31 x i8] c"Prob. out of range 0=<Prob>=1\0A\00", [43 x i8] c"Structure does not match Register length:\0A\00", [75 x i8] c"reg_len\09#_vect\09prob      #_tms\09struct\09seed1\09seed2\09seed3\09Prob same output\0A \00", [32 x i8] c"%d\09%d\09%.3e %d\09%s\09%d\09%d\09%d\09%.8e\0A\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400780_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400750___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@__bss_start = global %__bss_start_type zeroinitializer
@reg_len = local_unnamed_addr global %reg_len_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400780_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400750___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401090___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401020___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @simulate_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @create_link_list_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @init_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @kill_list_wrapper
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
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @seed48(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__isoc99_sscanf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @lrand48() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strcpy(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strlen(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4006a0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4006a0:
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
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #9
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
  store i64 ptrtoint (void ()* @callback_sub_401090___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401020___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %35 = add i64 %34, 27
  %36 = add i64 %15, -24
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37, align 8
  store i64 %36, i64* %RSP, align 8, !tbaa !2428
  %38 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %38, i64* %PC, align 8, !tbaa !2428
  %39 = tail call fastcc %struct.Memory* @ext_6020a0___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC, align 8
  %42 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %41, %struct.Memory* %39)
  ret %struct.Memory* %42
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401094__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_401094:
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
define %struct.Memory* @sub_400780_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400780:
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
  %13 = tail call %struct.Memory* @sub_400710_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400c20_simulate(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400c20:
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
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %8 = load i64, i64* %RBP, align 8
  %9 = add i64 %1, 1
  store i64 %9, i64* %PC, align 8
  %10 = load i64, i64* %RSP, align 8, !tbaa !2428
  %11 = add i64 %10, -8
  %12 = inttoptr i64 %11 to i64*
  store i64 %8, i64* %12, align 8
  %13 = load i64, i64* %PC, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2428
  %14 = add i64 %10, -136
  store i64 %14, i64* %RSP, align 8, !tbaa !2428
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 31, i64* %RAX, align 8, !tbaa !2428
  %21 = add i64 %10, -12
  %22 = load i32, i32* %EDI, align 4
  %23 = add i64 %13, 18
  store i64 %23, i64* %PC, align 8
  %24 = inttoptr i64 %21 to i32*
  store i32 %22, i32* %24, align 4
  %25 = load i64, i64* %RBP, align 8
  %26 = add i64 %25, -16
  %27 = load i64, i64* %RSI, align 8
  %28 = load i64, i64* %PC, align 8
  %29 = add i64 %28, 4
  store i64 %29, i64* %PC, align 8
  %30 = inttoptr i64 %26 to i64*
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %RBP, align 8
  %32 = add i64 %31, -24
  %33 = load i64, i64* %PC, align 8
  %34 = add i64 %33, 5
  store i64 %34, i64* %PC, align 8
  %35 = bitcast [32 x %union.VectorReg]* %6 to double*
  %36 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %37 = load i64, i64* %36, align 1
  %38 = inttoptr i64 %32 to i64*
  store i64 %37, i64* %38, align 8
  %39 = load i64, i64* %RBP, align 8
  %40 = add i64 %39, -32
  %41 = load i64, i64* %RDX, align 8
  %42 = load i64, i64* %PC, align 8
  %43 = add i64 %42, 4
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %44, align 8
  %45 = load i64, i64* %RBP, align 8
  %46 = add i64 %45, -44
  %47 = load i64, i64* %PC, align 8
  %48 = add i64 %47, 7
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %46 to i32*
  store i32 0, i32* %49, align 4
  %50 = load i64, i64* %PC, align 8
  %51 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*), align 8
  %52 = add i32 %51, -1
  %53 = zext i32 %52 to i64
  store i64 %53, i64* %RDI, align 8, !tbaa !2428
  %54 = icmp eq i32 %51, 0
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %15, align 1, !tbaa !2432
  %56 = and i32 %52, 255
  %57 = tail call i32 @llvm.ctpop.i32(i32 %56) #9
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  store i8 %60, i8* %16, align 1, !tbaa !2446
  %61 = xor i32 %52, %51
  %62 = lshr i32 %61, 4
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, 1
  store i8 %64, i8* %17, align 1, !tbaa !2450
  %65 = icmp eq i32 %52, 0
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %18, align 1, !tbaa !2447
  %67 = lshr i32 %52, 31
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %19, align 1, !tbaa !2448
  %69 = lshr i32 %51, 31
  %70 = xor i32 %67, %69
  %71 = add nuw nsw i32 %70, %69
  %72 = icmp eq i32 %71, 2
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %20, align 1, !tbaa !2449
  %74 = load i64, i64* %RBP, align 8
  %75 = add i64 %74, -92
  %76 = load i32, i32* %EAX, align 4
  %77 = add i64 %50, 13
  store i64 %77, i64* %PC, align 8
  %78 = inttoptr i64 %75 to i32*
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %EDI, align 4
  %80 = zext i32 %79 to i64
  %81 = load i64, i64* %PC, align 8
  store i64 %80, i64* %RAX, align 8, !tbaa !2428
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %83 = sext i32 %79 to i64
  %84 = lshr i64 %83, 32
  store i64 %84, i64* %82, align 8, !tbaa !2428
  %85 = load i64, i64* %RBP, align 8
  %86 = add i64 %85, -92
  %87 = add i64 %81, 6
  store i64 %87, i64* %PC, align 8
  %88 = inttoptr i64 %86 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = zext i32 %89 to i64
  store i64 %90, i64* %RDI, align 8, !tbaa !2428
  %91 = add i64 %81, 8
  store i64 %91, i64* %PC, align 8
  %92 = sext i32 %89 to i64
  %93 = shl nuw i64 %84, 32
  %94 = or i64 %93, %80
  %95 = sdiv i64 %94, %92
  %96 = shl i64 %95, 32
  %97 = ashr exact i64 %96, 32
  %98 = icmp eq i64 %95, %97
  br i1 %98, label %101, label %99

; <label>:99:                                     ; preds = %block_400c20
  %100 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %91, %struct.Memory* %2) #12
  %.pre = load i64, i64* %RBP, align 8
  %.pre24 = load i32, i32* %EAX, align 4
  %.pre25 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5

; <label>:101:                                    ; preds = %block_400c20
  %102 = srem i64 %94, %92
  %103 = and i64 %95, 4294967295
  store i64 %103, i64* %RAX, align 8, !tbaa !2428
  %104 = and i64 %102, 4294967295
  store i64 %104, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2432
  store i8 0, i8* %16, align 1, !tbaa !2446
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %18, align 1, !tbaa !2447
  store i8 0, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  %105 = trunc i64 %95 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5: ; preds = %101, %99
  %106 = phi i64 [ %.pre25, %99 ], [ %91, %101 ]
  %107 = phi i32 [ %.pre24, %99 ], [ %105, %101 ]
  %108 = phi i64 [ %.pre, %99 ], [ %85, %101 ]
  %109 = phi %struct.Memory* [ %100, %99 ], [ %2, %101 ]
  %110 = add i64 %108, -60
  %111 = add i64 %106, 3
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %110 to i32*
  store i32 %107, i32* %112, align 4
  %113 = load i64, i64* %PC, align 8
  %114 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*), align 8
  %115 = add i32 %114, -1
  %116 = zext i32 %115 to i64
  store i64 %116, i64* %RAX, align 8, !tbaa !2428
  %117 = icmp eq i32 %114, 0
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %15, align 1, !tbaa !2432
  %119 = and i32 %115, 255
  %120 = tail call i32 @llvm.ctpop.i32(i32 %119) #9
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = xor i8 %122, 1
  store i8 %123, i8* %16, align 1, !tbaa !2446
  %124 = xor i32 %115, %114
  %125 = lshr i32 %124, 4
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  store i8 %127, i8* %17, align 1, !tbaa !2450
  %128 = icmp eq i32 %115, 0
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %18, align 1, !tbaa !2447
  %130 = lshr i32 %115, 31
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %19, align 1, !tbaa !2448
  %132 = lshr i32 %114, 31
  %133 = xor i32 %130, %132
  %134 = add nuw nsw i32 %133, %132
  %135 = icmp eq i32 %134, 2
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %20, align 1, !tbaa !2449
  %137 = sext i32 %115 to i64
  %138 = lshr i64 %137, 32
  store i64 %138, i64* %82, align 8, !tbaa !2428
  %139 = load i32, i32* %EDI, align 4
  %140 = add i64 %113, 13
  store i64 %140, i64* %PC, align 8
  %141 = sext i32 %139 to i64
  %142 = shl nuw i64 %138, 32
  %143 = or i64 %142, %116
  %144 = sdiv i64 %143, %141
  %145 = shl i64 %144, 32
  %146 = ashr exact i64 %145, 32
  %147 = icmp eq i64 %144, %146
  br i1 %147, label %150, label %148

; <label>:148:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5
  %149 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %140, %struct.Memory* %109) #12
  %.pre26 = load i32, i32* %EDX, align 4
  %.pre27 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:150:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5
  %151 = srem i64 %143, %141
  %152 = and i64 %144, 4294967295
  store i64 %152, i64* %RAX, align 8, !tbaa !2428
  %153 = and i64 %151, 4294967295
  store i64 %153, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2432
  store i8 0, i8* %16, align 1, !tbaa !2446
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %18, align 1, !tbaa !2447
  store i8 0, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  %154 = trunc i64 %151 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %150, %148
  %155 = phi i64 [ %.pre27, %148 ], [ %140, %150 ]
  %156 = phi i32 [ %.pre26, %148 ], [ %154, %150 ]
  %157 = phi %struct.Memory* [ %149, %148 ], [ %109, %150 ]
  %158 = load i64, i64* %RBP, align 8
  %159 = add i64 %158, -56
  %160 = add i64 %155, 3
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %159 to i32*
  store i32 %156, i32* %161, align 4
  %162 = load i64, i64* %RBP, align 8
  %163 = add i64 %162, -16
  %164 = load i64, i64* %PC, align 8
  %165 = add i64 %164, 4
  store i64 %165, i64* %PC, align 8
  %166 = inttoptr i64 %163 to i64*
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* %RSI, align 8, !tbaa !2428
  %168 = add i64 %162, -40
  %169 = add i64 %164, 8
  store i64 %169, i64* %PC, align 8
  %170 = inttoptr i64 %168 to i64*
  store i64 %167, i64* %170, align 8
  %171 = load i64, i64* %RBP, align 8
  %172 = add i64 %171, -64
  %173 = load i64, i64* %PC, align 8
  %174 = add i64 %173, 7
  store i64 %174, i64* %PC, align 8
  %175 = inttoptr i64 %172 to i32*
  store i32 0, i32* %175, align 4
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %177 = bitcast i64* %176 to double*
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %179 = bitcast %union.VectorReg* %7 to double*
  %.pre28 = load i64, i64* %PC, align 8
  br label %block_400c7e

block_400fa2:                                     ; preds = %block_400f8f
  %180 = add i64 %184, -44
  %181 = add i64 %1370, 7
  store i64 %181, i64* %PC, align 8
  %182 = inttoptr i64 %180 to i32*
  store i32 1, i32* %182, align 4
  %.pre30 = load i64, i64* %RBP, align 8
  %.pre31 = load i64, i64* %PC, align 8
  br label %block_400fa9

block_400f7f:                                     ; preds = %block_400fa9, %block_400f78
  %183 = phi i64 [ %1162, %block_400fa9 ], [ %.pre29, %block_400f78 ]
  %184 = load i64, i64* %RBP, align 8
  %185 = add i64 %184, -68
  %186 = add i64 %183, 3
  store i64 %186, i64* %PC, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RAX, align 8, !tbaa !2428
  %190 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*), align 8
  %191 = sub i32 %188, %190
  %192 = icmp ult i32 %188, %190
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %15, align 1, !tbaa !2432
  %194 = and i32 %191, 255
  %195 = tail call i32 @llvm.ctpop.i32(i32 %194) #9
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  %198 = xor i8 %197, 1
  store i8 %198, i8* %16, align 1, !tbaa !2446
  %199 = xor i32 %190, %188
  %200 = xor i32 %199, %191
  %201 = lshr i32 %200, 4
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  store i8 %203, i8* %17, align 1, !tbaa !2450
  %204 = icmp eq i32 %191, 0
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %18, align 1, !tbaa !2447
  %206 = lshr i32 %191, 31
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %19, align 1, !tbaa !2448
  %208 = lshr i32 %188, 31
  %209 = lshr i32 %190, 31
  %210 = xor i32 %209, %208
  %211 = xor i32 %206, %208
  %212 = add nuw nsw i32 %211, %210
  %213 = icmp eq i32 %212, 2
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %20, align 1, !tbaa !2449
  %215 = icmp ne i8 %207, 0
  %216 = xor i1 %215, %213
  %.v55 = select i1 %216, i64 16, i64 68
  %217 = add i64 %183, %.v55
  store i64 %217, i64* %PC, align 8, !tbaa !2428
  br i1 %216, label %block_400f8f, label %block_400fc3

block_400f78:                                     ; preds = %block_400c7e
  %218 = add i64 %456, -68
  %219 = add i64 %492, 7
  store i64 %219, i64* %PC, align 8
  %220 = inttoptr i64 %218 to i32*
  store i32 0, i32* %220, align 4
  %.pre29 = load i64, i64* %PC, align 8
  br label %block_400f7f

block_400eee:                                     ; preds = %block_400eae, %block_400ed5
  %221 = phi i64 [ %1035, %block_400eae ], [ %.pre35, %block_400ed5 ]
  %222 = phi i64 [ %976, %block_400eae ], [ %.pre34, %block_400ed5 ]
  %223 = add i64 %222, -48
  %224 = add i64 %221, 4
  store i64 %224, i64* %PC, align 8
  %225 = inttoptr i64 %223 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %RAX, align 8, !tbaa !2428
  %228 = add i64 %222, -80
  %229 = add i64 %221, 8
  store i64 %229, i64* %PC, align 8
  %230 = inttoptr i64 %228 to i64*
  %231 = load i64, i64* %230, align 8
  %232 = add i64 %231, %227
  %233 = and i64 %232, 1
  store i64 %233, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2432
  %234 = trunc i64 %233 to i32
  %235 = tail call i32 @llvm.ctpop.i32(i32 %234) #9
  %236 = trunc i32 %235 to i8
  %237 = xor i8 %236, 1
  store i8 %237, i8* %16, align 1, !tbaa !2446
  %238 = trunc i64 %233 to i8
  %239 = xor i8 %238, 1
  store i8 %239, i8* %18, align 1, !tbaa !2447
  store i8 0, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i64 %233, i64* %RCX, align 8, !tbaa !2428
  %240 = add i64 %222, -40
  %241 = add i64 %221, 18
  store i64 %241, i64* %PC, align 8
  %242 = inttoptr i64 %240 to i64*
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %RAX, align 8, !tbaa !2428
  %244 = add i64 %221, 20
  store i64 %244, i64* %PC, align 8
  %245 = inttoptr i64 %243 to i32*
  store i32 %234, i32* %245, align 4
  %246 = load i64, i64* %PC, align 8
  %247 = add i64 %246, -2162
  %248 = add i64 %246, 5
  %249 = load i64, i64* %RSP, align 8, !tbaa !2428
  %250 = add i64 %249, -8
  %251 = inttoptr i64 %250 to i64*
  store i64 %248, i64* %251, align 8
  store i64 %250, i64* %RSP, align 8, !tbaa !2428
  store i64 %247, i64* %PC, align 8, !tbaa !2428
  %252 = tail call fastcc %struct.Memory* @ext_602110_lrand48(%struct.State* nonnull %0, %struct.Memory* %969)
  %253 = load i64, i64* %PC, align 8
  %254 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 24) to i64*), align 8
  store i64 %254, i64* %36, align 1, !tbaa !2451
  store double 0.000000e+00, double* %177, align 1, !tbaa !2451
  store i64 10000, i64* %RCX, align 8, !tbaa !2428
  %255 = load i64, i64* %RBP, align 8
  %256 = add i64 %255, -120
  %257 = add i64 %253, 19
  store i64 %257, i64* %PC, align 8
  %258 = inttoptr i64 %256 to i64*
  store i64 10000, i64* %258, align 8
  %259 = load i64, i64* %PC, align 8
  %260 = load i64, i64* %178, align 8, !tbaa !2428
  %261 = ashr i64 %260, 63
  store i64 %261, i64* %82, align 8, !tbaa !2428
  %262 = load i64, i64* %RBP, align 8
  %263 = add i64 %262, -120
  %264 = add i64 %259, 6
  store i64 %264, i64* %PC, align 8
  %265 = inttoptr i64 %263 to i64*
  %266 = load i64, i64* %265, align 8
  store i64 %266, i64* %RSI, align 8, !tbaa !2428
  %267 = add i64 %259, 9
  store i64 %267, i64* %PC, align 8
  %268 = sext i64 %266 to i128
  %269 = and i128 %268, -18446744073709551616
  %270 = zext i64 %261 to i128
  %271 = shl nuw i128 %270, 64
  %272 = zext i64 %260 to i128
  %273 = or i128 %271, %272
  %274 = zext i64 %266 to i128
  %275 = or i128 %269, %274
  %276 = sdiv i128 %273, %275
  %277 = trunc i128 %276 to i64
  %278 = and i128 %276, 18446744073709551615
  %279 = sext i64 %277 to i128
  %280 = and i128 %279, -18446744073709551616
  %281 = or i128 %280, %278
  %282 = icmp eq i128 %276, %281
  br i1 %282, label %285, label %283

; <label>:283:                                    ; preds = %block_400eee
  %284 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %267, %struct.Memory* %252) #12
  %.pre36 = load i64, i64* %RDX, align 8
  %.pre37 = load i64, i64* %PC, align 8
  %.pre38 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit4

; <label>:285:                                    ; preds = %block_400eee
  %286 = srem i128 %273, %275
  %287 = trunc i128 %286 to i64
  store i64 %277, i64* %178, align 8, !tbaa !2428
  store i64 %287, i64* %82, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2432
  store i8 0, i8* %16, align 1, !tbaa !2446
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %18, align 1, !tbaa !2447
  store i8 0, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit4

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit4: ; preds = %285, %283
  %288 = phi i64 [ %.pre38, %283 ], [ %262, %285 ]
  %289 = phi i64 [ %.pre37, %283 ], [ %267, %285 ]
  %290 = phi i64 [ %.pre36, %283 ], [ %287, %285 ]
  %291 = phi %struct.Memory* [ %284, %283 ], [ %252, %285 ]
  %292 = sitofp i64 %290 to double
  %293 = load double, double* %35, align 1
  %294 = fdiv double %292, %293
  store double %294, double* %179, align 1, !tbaa !2451
  %295 = add i64 %288, -88
  %296 = add i64 %289, 14
  store i64 %296, i64* %PC, align 8
  %297 = inttoptr i64 %295 to double*
  store double %294, double* %297, align 8
  %298 = load i64, i64* %RBP, align 8
  %299 = add i64 %298, -24
  %300 = load i64, i64* %PC, align 8
  %301 = add i64 %300, 5
  store i64 %301, i64* %PC, align 8
  %302 = inttoptr i64 %299 to i64*
  %303 = load i64, i64* %302, align 8
  store i64 %303, i64* %36, align 1, !tbaa !2451
  store double 0.000000e+00, double* %177, align 1, !tbaa !2451
  %304 = add i64 %298, -88
  %305 = add i64 %300, 10
  store i64 %305, i64* %PC, align 8
  %306 = bitcast i64 %303 to double
  %307 = inttoptr i64 %304 to double*
  %308 = load double, double* %307, align 8
  %309 = fcmp uno double %306, %308
  br i1 %309, label %310, label %320

; <label>:310:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit4
  %311 = fadd double %306, %308
  %312 = bitcast double %311 to i64
  %313 = and i64 %312, 9221120237041090560
  %314 = icmp eq i64 %313, 9218868437227405312
  %315 = and i64 %312, 2251799813685247
  %316 = icmp ne i64 %315, 0
  %317 = and i1 %314, %316
  br i1 %317, label %318, label %326

; <label>:318:                                    ; preds = %310
  %319 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %305, %struct.Memory* %291) #12
  %.pre39 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3

; <label>:320:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit4
  %321 = fcmp ogt double %306, %308
  br i1 %321, label %326, label %322

; <label>:322:                                    ; preds = %320
  %323 = fcmp olt double %306, %308
  br i1 %323, label %326, label %324

; <label>:324:                                    ; preds = %322
  %325 = fcmp oeq double %306, %308
  br i1 %325, label %326, label %330

; <label>:326:                                    ; preds = %324, %322, %320, %310
  %327 = phi i8 [ 0, %320 ], [ 0, %322 ], [ 1, %324 ], [ 1, %310 ]
  %328 = phi i8 [ 0, %320 ], [ 0, %322 ], [ 0, %324 ], [ 1, %310 ]
  %329 = phi i8 [ 0, %320 ], [ 1, %322 ], [ 0, %324 ], [ 1, %310 ]
  store i8 %327, i8* %18, align 1, !tbaa !2453
  store i8 %328, i8* %16, align 1, !tbaa !2453
  store i8 %329, i8* %15, align 1, !tbaa !2453
  br label %330

; <label>:330:                                    ; preds = %326, %324
  store i8 0, i8* %20, align 1, !tbaa !2453
  store i8 0, i8* %19, align 1, !tbaa !2453
  store i8 0, i8* %17, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3: ; preds = %330, %318
  %331 = phi i64 [ %.pre39, %318 ], [ %305, %330 ]
  %332 = phi %struct.Memory* [ %319, %318 ], [ %291, %330 ]
  %333 = add i64 %331, 18
  %334 = add i64 %331, 6
  %335 = load i8, i8* %15, align 1, !tbaa !2432
  %336 = load i8, i8* %18, align 1, !tbaa !2447
  %337 = or i8 %336, %335
  %338 = icmp ne i8 %337, 0
  %339 = select i1 %338, i64 %333, i64 %334
  store i64 %339, i64* %PC, align 8, !tbaa !2428
  br i1 %338, label %block_400f4d, label %block_400f41

block_400cbb:                                     ; preds = %block_400cab, %block_400d5f
  %340 = phi i64 [ %.pre47, %block_400cab ], [ %908, %block_400d5f ]
  %MEMORY.2 = phi %struct.Memory* [ %1320, %block_400cab ], [ %1487, %block_400d5f ]
  %341 = load i64, i64* %RBP, align 8
  %342 = add i64 %341, -72
  %343 = add i64 %340, 4
  store i64 %343, i64* %PC, align 8
  %344 = inttoptr i64 %342 to i32*
  %345 = load i32, i32* %344, align 4
  %346 = add i32 %345, -31
  %347 = icmp ult i32 %345, 31
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %15, align 1, !tbaa !2432
  %349 = and i32 %346, 255
  %350 = tail call i32 @llvm.ctpop.i32(i32 %349) #9
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = xor i8 %352, 1
  store i8 %353, i8* %16, align 1, !tbaa !2446
  %354 = xor i32 %345, 16
  %355 = xor i32 %354, %346
  %356 = lshr i32 %355, 4
  %357 = trunc i32 %356 to i8
  %358 = and i8 %357, 1
  store i8 %358, i8* %17, align 1, !tbaa !2450
  %359 = icmp eq i32 %346, 0
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %18, align 1, !tbaa !2447
  %361 = lshr i32 %346, 31
  %362 = trunc i32 %361 to i8
  store i8 %362, i8* %19, align 1, !tbaa !2448
  %363 = lshr i32 %345, 31
  %364 = xor i32 %361, %363
  %365 = add nuw nsw i32 %364, %363
  %366 = icmp eq i32 %365, 2
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %20, align 1, !tbaa !2449
  %368 = icmp ne i8 %362, 0
  %369 = xor i1 %368, %366
  %.v = select i1 %369, i64 10, i64 231
  %370 = add i64 %340, %.v
  store i64 %370, i64* %PC, align 8, !tbaa !2428
  br i1 %369, label %block_400cc5, label %block_400da2

block_400ce0:                                     ; preds = %block_400cc5
  %371 = load i64, i64* %RBP, align 8
  %372 = add i64 %371, -40
  %373 = add i64 %1119, 4
  store i64 %373, i64* %PC, align 8
  %374 = inttoptr i64 %372 to i64*
  %375 = load i64, i64* %374, align 8
  store i64 %375, i64* %RAX, align 8, !tbaa !2428
  %376 = add i64 %1119, 6
  store i64 %376, i64* %PC, align 8
  %377 = inttoptr i64 %375 to i32*
  %378 = load i32, i32* %377, align 4
  %379 = zext i32 %378 to i64
  store i64 %379, i64* %RCX, align 8, !tbaa !2428
  %380 = add i64 %371, -48
  %381 = add i64 %1119, 9
  store i64 %381, i64* %PC, align 8
  %382 = inttoptr i64 %380 to i32*
  %383 = load i32, i32* %382, align 4
  %384 = add i32 %383, %378
  %385 = zext i32 %384 to i64
  store i64 %385, i64* %RCX, align 8, !tbaa !2428
  %386 = icmp ult i32 %384, %378
  %387 = icmp ult i32 %384, %383
  %388 = or i1 %386, %387
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %15, align 1, !tbaa !2432
  %390 = and i32 %384, 255
  %391 = tail call i32 @llvm.ctpop.i32(i32 %390) #9
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  %394 = xor i8 %393, 1
  store i8 %394, i8* %16, align 1, !tbaa !2446
  %395 = xor i32 %383, %378
  %396 = xor i32 %395, %384
  %397 = lshr i32 %396, 4
  %398 = trunc i32 %397 to i8
  %399 = and i8 %398, 1
  store i8 %399, i8* %17, align 1, !tbaa !2450
  %400 = icmp eq i32 %384, 0
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %18, align 1, !tbaa !2447
  %402 = lshr i32 %384, 31
  %403 = trunc i32 %402 to i8
  store i8 %403, i8* %19, align 1, !tbaa !2448
  %404 = lshr i32 %378, 31
  %405 = lshr i32 %383, 31
  %406 = xor i32 %402, %404
  %407 = xor i32 %402, %405
  %408 = add nuw nsw i32 %406, %407
  %409 = icmp eq i32 %408, 2
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %20, align 1, !tbaa !2449
  %411 = add i64 %1119, 12
  store i64 %411, i64* %PC, align 8
  store i32 %384, i32* %382, align 4
  %412 = load i64, i64* %RBP, align 8
  %413 = add i64 %412, -40
  %414 = load i64, i64* %PC, align 8
  %415 = add i64 %414, 4
  store i64 %415, i64* %PC, align 8
  %416 = inttoptr i64 %413 to i64*
  %417 = load i64, i64* %416, align 8
  store i64 %417, i64* %RAX, align 8, !tbaa !2428
  %418 = add i64 %417, 4
  %419 = add i64 %414, 7
  store i64 %419, i64* %PC, align 8
  %420 = inttoptr i64 %418 to i32*
  %421 = load i32, i32* %420, align 4
  %422 = zext i32 %421 to i64
  store i64 %422, i64* %RCX, align 8, !tbaa !2428
  %423 = add i64 %412, -52
  %424 = add i64 %414, 10
  store i64 %424, i64* %PC, align 8
  %425 = inttoptr i64 %423 to i32*
  %426 = load i32, i32* %425, align 4
  %427 = add i32 %426, %421
  %428 = zext i32 %427 to i64
  store i64 %428, i64* %RCX, align 8, !tbaa !2428
  %429 = icmp ult i32 %427, %421
  %430 = icmp ult i32 %427, %426
  %431 = or i1 %429, %430
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %15, align 1, !tbaa !2432
  %433 = and i32 %427, 255
  %434 = tail call i32 @llvm.ctpop.i32(i32 %433) #9
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  store i8 %437, i8* %16, align 1, !tbaa !2446
  %438 = xor i32 %426, %421
  %439 = xor i32 %438, %427
  %440 = lshr i32 %439, 4
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  store i8 %442, i8* %17, align 1, !tbaa !2450
  %443 = icmp eq i32 %427, 0
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %18, align 1, !tbaa !2447
  %445 = lshr i32 %427, 31
  %446 = trunc i32 %445 to i8
  store i8 %446, i8* %19, align 1, !tbaa !2448
  %447 = lshr i32 %421, 31
  %448 = lshr i32 %426, 31
  %449 = xor i32 %445, %447
  %450 = xor i32 %445, %448
  %451 = add nuw nsw i32 %449, %450
  %452 = icmp eq i32 %451, 2
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %20, align 1, !tbaa !2449
  %454 = add i64 %414, 13
  store i64 %454, i64* %PC, align 8
  store i32 %427, i32* %425, align 4
  %.pre48 = load i64, i64* %PC, align 8
  br label %block_400cf9

block_400c7e:                                     ; preds = %block_400f4d, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %455 = phi i64 [ %.pre28, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %760, %block_400f4d ]
  %MEMORY.3 = phi %struct.Memory* [ %157, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %332, %block_400f4d ]
  %456 = load i64, i64* %RBP, align 8
  %457 = add i64 %456, -64
  %458 = add i64 %455, 3
  store i64 %458, i64* %PC, align 8
  %459 = inttoptr i64 %457 to i32*
  %460 = load i32, i32* %459, align 4
  %461 = zext i32 %460 to i64
  store i64 %461, i64* %RAX, align 8, !tbaa !2428
  %462 = add i64 %456, -4
  %463 = add i64 %455, 6
  store i64 %463, i64* %PC, align 8
  %464 = inttoptr i64 %462 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = sub i32 %460, %465
  %467 = icmp ult i32 %460, %465
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %15, align 1, !tbaa !2432
  %469 = and i32 %466, 255
  %470 = tail call i32 @llvm.ctpop.i32(i32 %469) #9
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  %473 = xor i8 %472, 1
  store i8 %473, i8* %16, align 1, !tbaa !2446
  %474 = xor i32 %465, %460
  %475 = xor i32 %474, %466
  %476 = lshr i32 %475, 4
  %477 = trunc i32 %476 to i8
  %478 = and i8 %477, 1
  store i8 %478, i8* %17, align 1, !tbaa !2450
  %479 = icmp eq i32 %466, 0
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %18, align 1, !tbaa !2447
  %481 = lshr i32 %466, 31
  %482 = trunc i32 %481 to i8
  store i8 %482, i8* %19, align 1, !tbaa !2448
  %483 = lshr i32 %460, 31
  %484 = lshr i32 %465, 31
  %485 = xor i32 %484, %483
  %486 = xor i32 %481, %483
  %487 = add nuw nsw i32 %486, %485
  %488 = icmp eq i32 %487, 2
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %20, align 1, !tbaa !2449
  %490 = icmp ne i8 %482, 0
  %491 = xor i1 %490, %488
  %.v54 = select i1 %491, i64 12, i64 762
  %492 = add i64 %455, %.v54
  store i64 %492, i64* %PC, align 8, !tbaa !2428
  br i1 %491, label %block_400c8a, label %block_400f78

block_400e5f:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %493 = load i64, i64* %RBP, align 8
  %494 = add i64 %493, -80
  %495 = add i64 %1726, 4
  store i64 %495, i64* %PC, align 8
  %496 = inttoptr i64 %494 to i64*
  %497 = load i64, i64* %496, align 8
  %498 = xor i64 %497, 1
  store i64 %498, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2432
  %499 = trunc i64 %498 to i32
  %500 = and i32 %499, 255
  %501 = tail call i32 @llvm.ctpop.i32(i32 %500) #9
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  %504 = xor i8 %503, 1
  store i8 %504, i8* %16, align 1, !tbaa !2446
  %505 = icmp eq i64 %498, 0
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %18, align 1, !tbaa !2447
  %507 = lshr i64 %497, 63
  %508 = trunc i64 %507 to i8
  store i8 %508, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  %509 = add i64 %1726, 12
  store i64 %509, i64* %PC, align 8
  store i64 %498, i64* %496, align 8
  %.pre46 = load i64, i64* %PC, align 8
  br label %block_400e6b

block_400ed5:                                     ; preds = %block_400eae
  %510 = add i64 %976, -40
  %511 = add i64 %1035, 4
  store i64 %511, i64* %PC, align 8
  %512 = inttoptr i64 %510 to i64*
  %513 = load i64, i64* %512, align 8
  store i64 %513, i64* %RAX, align 8, !tbaa !2428
  %514 = add i64 %1035, 6
  store i64 %514, i64* %PC, align 8
  %515 = inttoptr i64 %513 to i32*
  %516 = load i32, i32* %515, align 4
  %517 = zext i32 %516 to i64
  store i64 %517, i64* %RCX, align 8, !tbaa !2428
  %518 = add i64 %976, -48
  %519 = add i64 %1035, 9
  store i64 %519, i64* %PC, align 8
  %520 = inttoptr i64 %518 to i32*
  %521 = load i32, i32* %520, align 4
  %522 = add i32 %521, %516
  %523 = zext i32 %522 to i64
  store i64 %523, i64* %RCX, align 8, !tbaa !2428
  %524 = icmp ult i32 %522, %516
  %525 = icmp ult i32 %522, %521
  %526 = or i1 %524, %525
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %15, align 1, !tbaa !2432
  %528 = and i32 %522, 255
  %529 = tail call i32 @llvm.ctpop.i32(i32 %528) #9
  %530 = trunc i32 %529 to i8
  %531 = and i8 %530, 1
  %532 = xor i8 %531, 1
  store i8 %532, i8* %16, align 1, !tbaa !2446
  %533 = xor i32 %521, %516
  %534 = xor i32 %533, %522
  %535 = lshr i32 %534, 4
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  store i8 %537, i8* %17, align 1, !tbaa !2450
  %538 = icmp eq i32 %522, 0
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %18, align 1, !tbaa !2447
  %540 = lshr i32 %522, 31
  %541 = trunc i32 %540 to i8
  store i8 %541, i8* %19, align 1, !tbaa !2448
  %542 = lshr i32 %516, 31
  %543 = lshr i32 %521, 31
  %544 = xor i32 %540, %542
  %545 = xor i32 %540, %543
  %546 = add nuw nsw i32 %544, %545
  %547 = icmp eq i32 %546, 2
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %20, align 1, !tbaa !2449
  %549 = add i64 %1035, 12
  store i64 %549, i64* %PC, align 8
  store i32 %522, i32* %520, align 4
  %550 = load i64, i64* %RBP, align 8
  %551 = add i64 %550, -40
  %552 = load i64, i64* %PC, align 8
  %553 = add i64 %552, 4
  store i64 %553, i64* %PC, align 8
  %554 = inttoptr i64 %551 to i64*
  %555 = load i64, i64* %554, align 8
  store i64 %555, i64* %RAX, align 8, !tbaa !2428
  %556 = add i64 %555, 4
  %557 = add i64 %552, 7
  store i64 %557, i64* %PC, align 8
  %558 = inttoptr i64 %556 to i32*
  %559 = load i32, i32* %558, align 4
  %560 = zext i32 %559 to i64
  store i64 %560, i64* %RCX, align 8, !tbaa !2428
  %561 = add i64 %550, -52
  %562 = add i64 %552, 10
  store i64 %562, i64* %PC, align 8
  %563 = inttoptr i64 %561 to i32*
  %564 = load i32, i32* %563, align 4
  %565 = add i32 %564, %559
  %566 = zext i32 %565 to i64
  store i64 %566, i64* %RCX, align 8, !tbaa !2428
  %567 = icmp ult i32 %565, %559
  %568 = icmp ult i32 %565, %564
  %569 = or i1 %567, %568
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %15, align 1, !tbaa !2432
  %571 = and i32 %565, 255
  %572 = tail call i32 @llvm.ctpop.i32(i32 %571) #9
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  %575 = xor i8 %574, 1
  store i8 %575, i8* %16, align 1, !tbaa !2446
  %576 = xor i32 %564, %559
  %577 = xor i32 %576, %565
  %578 = lshr i32 %577, 4
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  store i8 %580, i8* %17, align 1, !tbaa !2450
  %581 = icmp eq i32 %565, 0
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %18, align 1, !tbaa !2447
  %583 = lshr i32 %565, 31
  %584 = trunc i32 %583 to i8
  store i8 %584, i8* %19, align 1, !tbaa !2448
  %585 = lshr i32 %559, 31
  %586 = lshr i32 %564, 31
  %587 = xor i32 %583, %585
  %588 = xor i32 %583, %586
  %589 = add nuw nsw i32 %587, %588
  %590 = icmp eq i32 %589, 2
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %20, align 1, !tbaa !2449
  %592 = add i64 %552, 13
  store i64 %592, i64* %PC, align 8
  store i32 %565, i32* %563, align 4
  %.pre34 = load i64, i64* %RBP, align 8
  %.pre35 = load i64, i64* %PC, align 8
  br label %block_400eee

block_400d53:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %593 = load i64, i64* %RBP, align 8
  %594 = add i64 %593, -80
  %595 = add i64 %1494, 4
  store i64 %595, i64* %PC, align 8
  %596 = inttoptr i64 %594 to i64*
  %597 = load i64, i64* %596, align 8
  %598 = xor i64 %597, 1
  store i64 %598, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2432
  %599 = trunc i64 %598 to i32
  %600 = and i32 %599, 255
  %601 = tail call i32 @llvm.ctpop.i32(i32 %600) #9
  %602 = trunc i32 %601 to i8
  %603 = and i8 %602, 1
  %604 = xor i8 %603, 1
  store i8 %604, i8* %16, align 1, !tbaa !2446
  %605 = icmp eq i64 %598, 0
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %18, align 1, !tbaa !2447
  %607 = lshr i64 %597, 63
  %608 = trunc i64 %607 to i8
  store i8 %608, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  %609 = add i64 %1494, 12
  store i64 %609, i64* %PC, align 8
  store i64 %598, i64* %596, align 8
  %.pre53 = load i64, i64* %PC, align 8
  br label %block_400d5f

block_400dd1:                                     ; preds = %block_400dc5
  %610 = add i64 %910, -32
  %611 = add i64 %946, 4
  store i64 %611, i64* %PC, align 8
  %612 = inttoptr i64 %610 to i64*
  %613 = load i64, i64* %612, align 8
  store i64 %613, i64* %RAX, align 8, !tbaa !2428
  %614 = add i64 %910, -60
  %615 = add i64 %946, 8
  store i64 %615, i64* %PC, align 8
  %616 = inttoptr i64 %614 to i32*
  %617 = load i32, i32* %616, align 4
  %618 = sext i32 %617 to i64
  %619 = mul nsw i64 %618, 31
  %620 = trunc i64 %619 to i32
  %621 = and i64 %619, 4294967295
  store i64 %621, i64* %RCX, align 8, !tbaa !2428
  %622 = mul i64 %618, 133143986176
  %623 = ashr exact i64 %622, 32
  %624 = icmp ne i64 %623, %619
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %15, align 1, !tbaa !2432
  %626 = and i32 %620, 255
  %627 = tail call i32 @llvm.ctpop.i32(i32 %626) #9
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = xor i8 %629, 1
  store i8 %630, i8* %16, align 1, !tbaa !2446
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %18, align 1, !tbaa !2447
  %631 = lshr i32 %620, 31
  %632 = trunc i32 %631 to i8
  store i8 %632, i8* %19, align 1, !tbaa !2448
  store i8 %625, i8* %20, align 1, !tbaa !2449
  %633 = add i64 %946, 11
  store i64 %633, i64* %PC, align 8
  %634 = trunc i64 %619 to i32
  %635 = load i32, i32* %913, align 4
  %636 = add i32 %635, %634
  %637 = zext i32 %636 to i64
  store i64 %637, i64* %RCX, align 8, !tbaa !2428
  %638 = icmp ult i32 %636, %634
  %639 = icmp ult i32 %636, %635
  %640 = or i1 %638, %639
  %641 = zext i1 %640 to i8
  store i8 %641, i8* %15, align 1, !tbaa !2432
  %642 = and i32 %636, 255
  %643 = tail call i32 @llvm.ctpop.i32(i32 %642) #9
  %644 = trunc i32 %643 to i8
  %645 = and i8 %644, 1
  %646 = xor i8 %645, 1
  store i8 %646, i8* %16, align 1, !tbaa !2446
  %647 = xor i32 %635, %634
  %648 = xor i32 %647, %636
  %649 = lshr i32 %648, 4
  %650 = trunc i32 %649 to i8
  %651 = and i8 %650, 1
  store i8 %651, i8* %17, align 1, !tbaa !2450
  %652 = icmp eq i32 %636, 0
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %18, align 1, !tbaa !2447
  %654 = lshr i32 %636, 31
  %655 = trunc i32 %654 to i8
  store i8 %655, i8* %19, align 1, !tbaa !2448
  %656 = lshr i32 %634, 31
  %657 = lshr i32 %635, 31
  %658 = xor i32 %654, %656
  %659 = xor i32 %654, %657
  %660 = add nuw nsw i32 %658, %659
  %661 = icmp eq i32 %660, 2
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %20, align 1, !tbaa !2449
  %663 = sext i32 %636 to i64
  store i64 %663, i64* %RDX, align 8, !tbaa !2428
  %664 = add i64 %613, %663
  %665 = add i64 %946, 18
  store i64 %665, i64* %PC, align 8
  %666 = inttoptr i64 %664 to i8*
  %667 = load i8, i8* %666, align 1
  %668 = sext i8 %667 to i64
  %669 = and i64 %668, 4294967295
  store i64 %669, i64* %RCX, align 8, !tbaa !2428
  %670 = sext i8 %667 to i32
  %671 = add nsw i32 %670, -49
  %672 = icmp ult i8 %667, 49
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %15, align 1, !tbaa !2432
  %674 = and i32 %671, 255
  %675 = tail call i32 @llvm.ctpop.i32(i32 %674) #9
  %676 = trunc i32 %675 to i8
  %677 = and i8 %676, 1
  %678 = xor i8 %677, 1
  store i8 %678, i8* %16, align 1, !tbaa !2446
  %679 = xor i32 %670, 16
  %680 = xor i32 %679, %671
  %681 = lshr i32 %680, 4
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  store i8 %683, i8* %17, align 1, !tbaa !2450
  %684 = icmp eq i32 %671, 0
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %18, align 1, !tbaa !2447
  %686 = lshr i32 %671, 31
  %687 = trunc i32 %686 to i8
  store i8 %687, i8* %19, align 1, !tbaa !2448
  %688 = lshr i32 %670, 31
  %689 = xor i32 %686, %688
  %690 = add nuw nsw i32 %689, %688
  %691 = icmp eq i32 %690, 2
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %20, align 1, !tbaa !2449
  %.v60 = select i1 %684, i64 27, i64 52
  %693 = add i64 %946, %.v60
  store i64 %693, i64* %PC, align 8, !tbaa !2428
  br i1 %684, label %block_400dec, label %block_400e05

block_400f4d:                                     ; preds = %block_400f41, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3
  %694 = phi i64 [ %.pre40, %block_400f41 ], [ %333, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3 ]
  %695 = load i64, i64* %RBP, align 8
  %696 = add i64 %695, -52
  %697 = add i64 %694, 4
  store i64 %697, i64* %PC, align 8
  %698 = inttoptr i64 %696 to i32*
  %699 = load i32, i32* %698, align 4
  %700 = sext i32 %699 to i64
  store i64 %700, i64* %RAX, align 8, !tbaa !2428
  %701 = add i64 %695, -80
  %702 = add i64 %694, 8
  store i64 %702, i64* %PC, align 8
  %703 = inttoptr i64 %701 to i64*
  %704 = load i64, i64* %703, align 8
  %705 = add i64 %704, %700
  %706 = and i64 %705, 1
  store i64 %706, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2432
  %707 = trunc i64 %706 to i32
  %708 = tail call i32 @llvm.ctpop.i32(i32 %707) #9
  %709 = trunc i32 %708 to i8
  %710 = xor i8 %709, 1
  store i8 %710, i8* %16, align 1, !tbaa !2446
  %711 = trunc i64 %706 to i8
  %712 = xor i8 %711, 1
  store i8 %712, i8* %18, align 1, !tbaa !2447
  store i8 0, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i64 %706, i64* %RCX, align 8, !tbaa !2428
  %713 = add i64 %695, -40
  %714 = add i64 %694, 18
  store i64 %714, i64* %PC, align 8
  %715 = inttoptr i64 %713 to i64*
  %716 = load i64, i64* %715, align 8
  store i64 %716, i64* %RAX, align 8, !tbaa !2428
  %717 = add i64 %716, 4
  %718 = add i64 %694, 21
  store i64 %718, i64* %PC, align 8
  %719 = inttoptr i64 %717 to i32*
  store i32 %707, i32* %719, align 4
  %720 = load i64, i64* %RBP, align 8
  %721 = add i64 %720, -16
  %722 = load i64, i64* %PC, align 8
  %723 = add i64 %722, 4
  store i64 %723, i64* %PC, align 8
  %724 = inttoptr i64 %721 to i64*
  %725 = load i64, i64* %724, align 8
  store i64 %725, i64* %RAX, align 8, !tbaa !2428
  %726 = add i64 %720, -40
  %727 = add i64 %722, 8
  store i64 %727, i64* %PC, align 8
  %728 = inttoptr i64 %726 to i64*
  store i64 %725, i64* %728, align 8
  %729 = load i64, i64* %RBP, align 8
  %730 = add i64 %729, -64
  %731 = load i64, i64* %PC, align 8
  %732 = add i64 %731, 3
  store i64 %732, i64* %PC, align 8
  %733 = inttoptr i64 %730 to i32*
  %734 = load i32, i32* %733, align 4
  %735 = add i32 %734, 1
  %736 = zext i32 %735 to i64
  store i64 %736, i64* %RAX, align 8, !tbaa !2428
  %737 = icmp eq i32 %734, -1
  %738 = icmp eq i32 %735, 0
  %739 = or i1 %737, %738
  %740 = zext i1 %739 to i8
  store i8 %740, i8* %15, align 1, !tbaa !2432
  %741 = and i32 %735, 255
  %742 = tail call i32 @llvm.ctpop.i32(i32 %741) #9
  %743 = trunc i32 %742 to i8
  %744 = and i8 %743, 1
  %745 = xor i8 %744, 1
  store i8 %745, i8* %16, align 1, !tbaa !2446
  %746 = xor i32 %735, %734
  %747 = lshr i32 %746, 4
  %748 = trunc i32 %747 to i8
  %749 = and i8 %748, 1
  store i8 %749, i8* %17, align 1, !tbaa !2450
  %750 = zext i1 %738 to i8
  store i8 %750, i8* %18, align 1, !tbaa !2447
  %751 = lshr i32 %735, 31
  %752 = trunc i32 %751 to i8
  store i8 %752, i8* %19, align 1, !tbaa !2448
  %753 = lshr i32 %734, 31
  %754 = xor i32 %751, %753
  %755 = add nuw nsw i32 %754, %751
  %756 = icmp eq i32 %755, 2
  %757 = zext i1 %756 to i8
  store i8 %757, i8* %20, align 1, !tbaa !2449
  %758 = add i64 %731, 9
  store i64 %758, i64* %PC, align 8
  store i32 %735, i32* %733, align 4
  %759 = load i64, i64* %PC, align 8
  %760 = add i64 %759, -757
  store i64 %760, i64* %PC, align 8, !tbaa !2428
  br label %block_400c7e

block_400fc3:                                     ; preds = %block_400f7f
  %761 = add i64 %184, -44
  %762 = add i64 %217, 3
  store i64 %762, i64* %PC, align 8
  %763 = inttoptr i64 %761 to i32*
  %764 = load i32, i32* %763, align 4
  %765 = zext i32 %764 to i64
  store i64 %765, i64* %RAX, align 8, !tbaa !2428
  %766 = load i64, i64* %RSP, align 8
  %767 = add i64 %766, 128
  store i64 %767, i64* %RSP, align 8, !tbaa !2428
  %768 = icmp ugt i64 %766, -129
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %15, align 1, !tbaa !2432
  %770 = trunc i64 %767 to i32
  %771 = and i32 %770, 255
  %772 = tail call i32 @llvm.ctpop.i32(i32 %771) #9
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  %775 = xor i8 %774, 1
  store i8 %775, i8* %16, align 1, !tbaa !2446
  %776 = xor i64 %767, %766
  %777 = lshr i64 %776, 4
  %778 = trunc i64 %777 to i8
  %779 = and i8 %778, 1
  store i8 %779, i8* %17, align 1, !tbaa !2450
  %780 = icmp eq i64 %767, 0
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %18, align 1, !tbaa !2447
  %782 = lshr i64 %767, 63
  %783 = trunc i64 %782 to i8
  store i8 %783, i8* %19, align 1, !tbaa !2448
  %784 = lshr i64 %766, 63
  %785 = xor i64 %782, %784
  %786 = add nuw nsw i64 %785, %782
  %787 = icmp eq i64 %786, 2
  %788 = zext i1 %787 to i8
  store i8 %788, i8* %20, align 1, !tbaa !2449
  %789 = add i64 %217, 11
  store i64 %789, i64* %PC, align 8
  %790 = add i64 %766, 136
  %791 = inttoptr i64 %767 to i64*
  %792 = load i64, i64* %791, align 8
  store i64 %792, i64* %RBP, align 8, !tbaa !2428
  store i64 %790, i64* %RSP, align 8, !tbaa !2428
  %793 = add i64 %217, 12
  store i64 %793, i64* %PC, align 8
  %794 = inttoptr i64 %790 to i64*
  %795 = load i64, i64* %794, align 8
  store i64 %795, i64* %PC, align 8, !tbaa !2428
  %796 = add i64 %766, 144
  store i64 %796, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.3

block_400f41:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit3
  %797 = load i64, i64* %RBP, align 8
  %798 = add i64 %797, -80
  %799 = add i64 %339, 4
  store i64 %799, i64* %PC, align 8
  %800 = inttoptr i64 %798 to i64*
  %801 = load i64, i64* %800, align 8
  %802 = xor i64 %801, 1
  store i64 %802, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2432
  %803 = trunc i64 %802 to i32
  %804 = and i32 %803, 255
  %805 = tail call i32 @llvm.ctpop.i32(i32 %804) #9
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  %808 = xor i8 %807, 1
  store i8 %808, i8* %16, align 1, !tbaa !2446
  %809 = icmp eq i64 %802, 0
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %18, align 1, !tbaa !2447
  %811 = lshr i64 %801, 63
  %812 = trunc i64 %811 to i8
  store i8 %812, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  %813 = add i64 %339, 12
  store i64 %813, i64* %PC, align 8
  store i64 %802, i64* %800, align 8
  %.pre40 = load i64, i64* %PC, align 8
  br label %block_400f4d

block_400d5f:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1, %block_400d53
  %814 = phi i64 [ %1488, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1 ], [ %.pre53, %block_400d53 ]
  %815 = load i64, i64* %RBP, align 8
  %816 = add i64 %815, -40
  %817 = add i64 %814, 4
  store i64 %817, i64* %PC, align 8
  %818 = inttoptr i64 %816 to i64*
  %819 = load i64, i64* %818, align 8
  store i64 %819, i64* %RAX, align 8, !tbaa !2428
  %820 = add i64 %819, 8
  %821 = add i64 %814, 8
  store i64 %821, i64* %PC, align 8
  %822 = inttoptr i64 %820 to i64*
  %823 = load i64, i64* %822, align 8
  store i64 %823, i64* %RAX, align 8, !tbaa !2428
  %824 = add i64 %823, 4
  %825 = add i64 %814, 12
  store i64 %825, i64* %PC, align 8
  %826 = inttoptr i64 %824 to i32*
  %827 = load i32, i32* %826, align 4
  %828 = sext i32 %827 to i64
  store i64 %828, i64* %RAX, align 8, !tbaa !2428
  %829 = add i64 %815, -80
  %830 = add i64 %814, 16
  store i64 %830, i64* %PC, align 8
  %831 = inttoptr i64 %829 to i64*
  %832 = load i64, i64* %831, align 8
  %833 = add i64 %832, %828
  %834 = and i64 %833, 1
  store i64 %834, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2432
  %835 = trunc i64 %834 to i32
  %836 = tail call i32 @llvm.ctpop.i32(i32 %835) #9
  %837 = trunc i32 %836 to i8
  %838 = xor i8 %837, 1
  store i8 %838, i8* %16, align 1, !tbaa !2446
  %839 = trunc i64 %834 to i8
  %840 = xor i8 %839, 1
  store i8 %840, i8* %18, align 1, !tbaa !2447
  store i8 0, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i64 %834, i64* %RCX, align 8, !tbaa !2428
  %841 = add i64 %814, 26
  store i64 %841, i64* %PC, align 8
  %842 = load i64, i64* %818, align 8
  store i64 %842, i64* %RAX, align 8, !tbaa !2428
  %843 = add i64 %842, 4
  %844 = add i64 %814, 29
  store i64 %844, i64* %PC, align 8
  %845 = inttoptr i64 %843 to i32*
  store i32 %835, i32* %845, align 4
  %846 = load i64, i64* %RBP, align 8
  %847 = add i64 %846, -40
  %848 = load i64, i64* %PC, align 8
  %849 = add i64 %848, 4
  store i64 %849, i64* %PC, align 8
  %850 = inttoptr i64 %847 to i64*
  %851 = load i64, i64* %850, align 8
  store i64 %851, i64* %RAX, align 8, !tbaa !2428
  %852 = add i64 %851, 8
  %853 = add i64 %848, 8
  store i64 %853, i64* %PC, align 8
  %854 = inttoptr i64 %852 to i64*
  %855 = load i64, i64* %854, align 8
  store i64 %855, i64* %RAX, align 8, !tbaa !2428
  %856 = add i64 %848, 12
  store i64 %856, i64* %PC, align 8
  store i64 %855, i64* %850, align 8
  %857 = load i64, i64* %RBP, align 8
  %858 = add i64 %857, -80
  %859 = load i64, i64* %PC, align 8
  %860 = add i64 %859, 4
  store i64 %860, i64* %PC, align 8
  %861 = inttoptr i64 %858 to i64*
  %862 = load i64, i64* %861, align 8
  %863 = trunc i64 %862 to i8
  %864 = and i8 %863, 1
  %865 = ashr i64 %862, 1
  store i64 %865, i64* %RAX, align 8, !tbaa !2428
  store i8 %864, i8* %15, align 1, !tbaa !2453
  %866 = trunc i64 %865 to i32
  %867 = and i32 %866, 255
  %868 = tail call i32 @llvm.ctpop.i32(i32 %867) #9
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  %871 = xor i8 %870, 1
  store i8 %871, i8* %16, align 1, !tbaa !2453
  store i8 0, i8* %17, align 1, !tbaa !2453
  %872 = icmp eq i64 %865, 0
  %873 = zext i1 %872 to i8
  store i8 %873, i8* %18, align 1, !tbaa !2453
  %874 = lshr i64 %865, 63
  %875 = trunc i64 %874 to i8
  store i8 %875, i8* %19, align 1, !tbaa !2453
  store i8 0, i8* %20, align 1, !tbaa !2453
  %876 = add i64 %859, 12
  store i64 %876, i64* %PC, align 8
  store i64 %865, i64* %861, align 8
  %877 = load i64, i64* %RBP, align 8
  %878 = add i64 %877, -72
  %879 = load i64, i64* %PC, align 8
  %880 = add i64 %879, 3
  store i64 %880, i64* %PC, align 8
  %881 = inttoptr i64 %878 to i32*
  %882 = load i32, i32* %881, align 4
  %883 = add i32 %882, 1
  %884 = zext i32 %883 to i64
  store i64 %884, i64* %RAX, align 8, !tbaa !2428
  %885 = icmp eq i32 %882, -1
  %886 = icmp eq i32 %883, 0
  %887 = or i1 %885, %886
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %15, align 1, !tbaa !2432
  %889 = and i32 %883, 255
  %890 = tail call i32 @llvm.ctpop.i32(i32 %889) #9
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  %893 = xor i8 %892, 1
  store i8 %893, i8* %16, align 1, !tbaa !2446
  %894 = xor i32 %883, %882
  %895 = lshr i32 %894, 4
  %896 = trunc i32 %895 to i8
  %897 = and i8 %896, 1
  store i8 %897, i8* %17, align 1, !tbaa !2450
  %898 = zext i1 %886 to i8
  store i8 %898, i8* %18, align 1, !tbaa !2447
  %899 = lshr i32 %883, 31
  %900 = trunc i32 %899 to i8
  store i8 %900, i8* %19, align 1, !tbaa !2448
  %901 = lshr i32 %882, 31
  %902 = xor i32 %899, %901
  %903 = add nuw nsw i32 %902, %899
  %904 = icmp eq i32 %903, 2
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %20, align 1, !tbaa !2449
  %906 = add i64 %879, 9
  store i64 %906, i64* %PC, align 8
  store i32 %883, i32* %881, align 4
  %907 = load i64, i64* %PC, align 8
  %908 = add i64 %907, -226
  store i64 %908, i64* %PC, align 8, !tbaa !2428
  br label %block_400cbb

block_400dc5:                                     ; preds = %block_400e6b, %block_400db5
  %909 = phi i64 [ %.pre33, %block_400db5 ], [ %1589, %block_400e6b ]
  %MEMORY.6 = phi %struct.Memory* [ %952, %block_400db5 ], [ %1719, %block_400e6b ]
  %910 = load i64, i64* %RBP, align 8
  %911 = add i64 %910, -72
  %912 = add i64 %909, 3
  store i64 %912, i64* %PC, align 8
  %913 = inttoptr i64 %911 to i32*
  %914 = load i32, i32* %913, align 4
  %915 = zext i32 %914 to i64
  store i64 %915, i64* %RAX, align 8, !tbaa !2428
  %916 = add i64 %910, -56
  %917 = add i64 %909, 6
  store i64 %917, i64* %PC, align 8
  %918 = inttoptr i64 %916 to i32*
  %919 = load i32, i32* %918, align 4
  %920 = sub i32 %914, %919
  %921 = icmp ult i32 %914, %919
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %15, align 1, !tbaa !2432
  %923 = and i32 %920, 255
  %924 = tail call i32 @llvm.ctpop.i32(i32 %923) #9
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  %927 = xor i8 %926, 1
  store i8 %927, i8* %16, align 1, !tbaa !2446
  %928 = xor i32 %919, %914
  %929 = xor i32 %928, %920
  %930 = lshr i32 %929, 4
  %931 = trunc i32 %930 to i8
  %932 = and i8 %931, 1
  store i8 %932, i8* %17, align 1, !tbaa !2450
  %933 = icmp eq i32 %920, 0
  %934 = zext i1 %933 to i8
  store i8 %934, i8* %18, align 1, !tbaa !2447
  %935 = lshr i32 %920, 31
  %936 = trunc i32 %935 to i8
  store i8 %936, i8* %19, align 1, !tbaa !2448
  %937 = lshr i32 %914, 31
  %938 = lshr i32 %919, 31
  %939 = xor i32 %938, %937
  %940 = xor i32 %935, %937
  %941 = add nuw nsw i32 %940, %939
  %942 = icmp eq i32 %941, 2
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %20, align 1, !tbaa !2449
  %944 = icmp ne i8 %936, 0
  %945 = xor i1 %944, %942
  %.v58 = select i1 %945, i64 12, i64 233
  %946 = add i64 %909, %.v58
  store i64 %946, i64* %PC, align 8, !tbaa !2428
  br i1 %945, label %block_400dd1, label %block_400eae

block_400db5:                                     ; preds = %block_400c9f
  %947 = add i64 %1314, -1829
  %948 = add i64 %1314, 5
  %949 = load i64, i64* %RSP, align 8, !tbaa !2428
  %950 = add i64 %949, -8
  %951 = inttoptr i64 %950 to i64*
  store i64 %948, i64* %951, align 8
  store i64 %950, i64* %RSP, align 8, !tbaa !2428
  store i64 %947, i64* %PC, align 8, !tbaa !2428
  %952 = tail call fastcc %struct.Memory* @ext_602110_lrand48(%struct.State* nonnull %0, %struct.Memory* %MEMORY.8)
  %953 = load i64, i64* %RBP, align 8
  %954 = add i64 %953, -80
  %955 = load i64, i64* %RAX, align 8
  %956 = load i64, i64* %PC, align 8
  %957 = add i64 %956, 4
  store i64 %957, i64* %PC, align 8
  %958 = inttoptr i64 %954 to i64*
  store i64 %955, i64* %958, align 8
  %959 = load i64, i64* %RBP, align 8
  %960 = add i64 %959, -72
  %961 = load i64, i64* %PC, align 8
  %962 = add i64 %961, 7
  store i64 %962, i64* %PC, align 8
  %963 = inttoptr i64 %960 to i32*
  store i32 0, i32* %963, align 4
  %.pre33 = load i64, i64* %PC, align 8
  br label %block_400dc5

block_400eae:                                     ; preds = %block_400dc5
  %964 = add i64 %946, -2078
  %965 = add i64 %946, 5
  %966 = load i64, i64* %RSP, align 8, !tbaa !2428
  %967 = add i64 %966, -8
  %968 = inttoptr i64 %967 to i64*
  store i64 %965, i64* %968, align 8
  store i64 %967, i64* %RSP, align 8, !tbaa !2428
  store i64 %964, i64* %PC, align 8, !tbaa !2428
  %969 = tail call fastcc %struct.Memory* @ext_602110_lrand48(%struct.State* nonnull %0, %struct.Memory* %MEMORY.6)
  %970 = load i64, i64* %RBP, align 8
  %971 = add i64 %970, -80
  %972 = load i64, i64* %RAX, align 8
  %973 = load i64, i64* %PC, align 8
  %974 = add i64 %973, 4
  store i64 %974, i64* %PC, align 8
  %975 = inttoptr i64 %971 to i64*
  store i64 %972, i64* %975, align 8
  %976 = load i64, i64* %RBP, align 8
  %977 = add i64 %976, -32
  %978 = load i64, i64* %PC, align 8
  %979 = add i64 %978, 4
  store i64 %979, i64* %PC, align 8
  %980 = inttoptr i64 %977 to i64*
  %981 = load i64, i64* %980, align 8
  store i64 %981, i64* %RAX, align 8, !tbaa !2428
  %982 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*), align 8
  %983 = add i32 %982, -1
  %984 = zext i32 %983 to i64
  store i64 %984, i64* %RCX, align 8, !tbaa !2428
  %985 = icmp eq i32 %982, 0
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %15, align 1, !tbaa !2432
  %987 = and i32 %983, 255
  %988 = tail call i32 @llvm.ctpop.i32(i32 %987) #9
  %989 = trunc i32 %988 to i8
  %990 = and i8 %989, 1
  %991 = xor i8 %990, 1
  store i8 %991, i8* %16, align 1, !tbaa !2446
  %992 = xor i32 %983, %982
  %993 = lshr i32 %992, 4
  %994 = trunc i32 %993 to i8
  %995 = and i8 %994, 1
  store i8 %995, i8* %17, align 1, !tbaa !2450
  %996 = icmp eq i32 %983, 0
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %18, align 1, !tbaa !2447
  %998 = lshr i32 %983, 31
  %999 = trunc i32 %998 to i8
  store i8 %999, i8* %19, align 1, !tbaa !2448
  %1000 = lshr i32 %982, 31
  %1001 = xor i32 %998, %1000
  %1002 = add nuw nsw i32 %1001, %1000
  %1003 = icmp eq i32 %1002, 2
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %20, align 1, !tbaa !2449
  %1005 = sext i32 %983 to i64
  store i64 %1005, i64* %RDX, align 8, !tbaa !2428
  %1006 = add i64 %981, %1005
  %1007 = add i64 %978, 21
  store i64 %1007, i64* %PC, align 8
  %1008 = inttoptr i64 %1006 to i8*
  %1009 = load i8, i8* %1008, align 1
  %1010 = sext i8 %1009 to i64
  %1011 = and i64 %1010, 4294967295
  store i64 %1011, i64* %RCX, align 8, !tbaa !2428
  %1012 = sext i8 %1009 to i32
  %1013 = add nsw i32 %1012, -49
  %1014 = icmp ult i8 %1009, 49
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %15, align 1, !tbaa !2432
  %1016 = and i32 %1013, 255
  %1017 = tail call i32 @llvm.ctpop.i32(i32 %1016) #9
  %1018 = trunc i32 %1017 to i8
  %1019 = and i8 %1018, 1
  %1020 = xor i8 %1019, 1
  store i8 %1020, i8* %16, align 1, !tbaa !2446
  %1021 = xor i32 %1012, 16
  %1022 = xor i32 %1021, %1013
  %1023 = lshr i32 %1022, 4
  %1024 = trunc i32 %1023 to i8
  %1025 = and i8 %1024, 1
  store i8 %1025, i8* %17, align 1, !tbaa !2450
  %1026 = icmp eq i32 %1013, 0
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %18, align 1, !tbaa !2447
  %1028 = lshr i32 %1013, 31
  %1029 = trunc i32 %1028 to i8
  store i8 %1029, i8* %19, align 1, !tbaa !2448
  %1030 = lshr i32 %1012, 31
  %1031 = xor i32 %1028, %1030
  %1032 = add nuw nsw i32 %1031, %1030
  %1033 = icmp eq i32 %1032, 2
  %1034 = zext i1 %1033 to i8
  store i8 %1034, i8* %20, align 1, !tbaa !2449
  %.v59 = select i1 %1026, i64 30, i64 55
  %1035 = add i64 %978, %.v59
  store i64 %1035, i64* %PC, align 8, !tbaa !2428
  br i1 %1026, label %block_400ed5, label %block_400eee

block_400cc5:                                     ; preds = %block_400cbb
  %1036 = add i64 %341, -32
  %1037 = add i64 %370, 4
  store i64 %1037, i64* %PC, align 8
  %1038 = inttoptr i64 %1036 to i64*
  %1039 = load i64, i64* %1038, align 8
  store i64 %1039, i64* %RAX, align 8, !tbaa !2428
  %1040 = add i64 %341, -68
  %1041 = add i64 %370, 8
  store i64 %1041, i64* %PC, align 8
  %1042 = inttoptr i64 %1040 to i32*
  %1043 = load i32, i32* %1042, align 4
  %1044 = sext i32 %1043 to i64
  %1045 = mul nsw i64 %1044, 31
  %1046 = trunc i64 %1045 to i32
  %1047 = and i64 %1045, 4294967295
  store i64 %1047, i64* %RCX, align 8, !tbaa !2428
  %1048 = mul i64 %1044, 133143986176
  %1049 = ashr exact i64 %1048, 32
  %1050 = icmp ne i64 %1049, %1045
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %15, align 1, !tbaa !2432
  %1052 = and i32 %1046, 255
  %1053 = tail call i32 @llvm.ctpop.i32(i32 %1052) #9
  %1054 = trunc i32 %1053 to i8
  %1055 = and i8 %1054, 1
  %1056 = xor i8 %1055, 1
  store i8 %1056, i8* %16, align 1, !tbaa !2446
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %18, align 1, !tbaa !2447
  %1057 = lshr i32 %1046, 31
  %1058 = trunc i32 %1057 to i8
  store i8 %1058, i8* %19, align 1, !tbaa !2448
  store i8 %1051, i8* %20, align 1, !tbaa !2449
  %1059 = add i64 %370, 11
  store i64 %1059, i64* %PC, align 8
  %1060 = trunc i64 %1045 to i32
  %1061 = load i32, i32* %344, align 4
  %1062 = add i32 %1061, %1060
  %1063 = zext i32 %1062 to i64
  store i64 %1063, i64* %RCX, align 8, !tbaa !2428
  %1064 = icmp ult i32 %1062, %1060
  %1065 = icmp ult i32 %1062, %1061
  %1066 = or i1 %1064, %1065
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %15, align 1, !tbaa !2432
  %1068 = and i32 %1062, 255
  %1069 = tail call i32 @llvm.ctpop.i32(i32 %1068) #9
  %1070 = trunc i32 %1069 to i8
  %1071 = and i8 %1070, 1
  %1072 = xor i8 %1071, 1
  store i8 %1072, i8* %16, align 1, !tbaa !2446
  %1073 = xor i32 %1061, %1060
  %1074 = xor i32 %1073, %1062
  %1075 = lshr i32 %1074, 4
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  store i8 %1077, i8* %17, align 1, !tbaa !2450
  %1078 = icmp eq i32 %1062, 0
  %1079 = zext i1 %1078 to i8
  store i8 %1079, i8* %18, align 1, !tbaa !2447
  %1080 = lshr i32 %1062, 31
  %1081 = trunc i32 %1080 to i8
  store i8 %1081, i8* %19, align 1, !tbaa !2448
  %1082 = lshr i32 %1060, 31
  %1083 = lshr i32 %1061, 31
  %1084 = xor i32 %1080, %1082
  %1085 = xor i32 %1080, %1083
  %1086 = add nuw nsw i32 %1084, %1085
  %1087 = icmp eq i32 %1086, 2
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %20, align 1, !tbaa !2449
  %1089 = sext i32 %1062 to i64
  store i64 %1089, i64* %RDX, align 8, !tbaa !2428
  %1090 = add i64 %1039, %1089
  %1091 = add i64 %370, 18
  store i64 %1091, i64* %PC, align 8
  %1092 = inttoptr i64 %1090 to i8*
  %1093 = load i8, i8* %1092, align 1
  %1094 = sext i8 %1093 to i64
  %1095 = and i64 %1094, 4294967295
  store i64 %1095, i64* %RCX, align 8, !tbaa !2428
  %1096 = sext i8 %1093 to i32
  %1097 = add nsw i32 %1096, -49
  %1098 = icmp ult i8 %1093, 49
  %1099 = zext i1 %1098 to i8
  store i8 %1099, i8* %15, align 1, !tbaa !2432
  %1100 = and i32 %1097, 255
  %1101 = tail call i32 @llvm.ctpop.i32(i32 %1100) #9
  %1102 = trunc i32 %1101 to i8
  %1103 = and i8 %1102, 1
  %1104 = xor i8 %1103, 1
  store i8 %1104, i8* %16, align 1, !tbaa !2446
  %1105 = xor i32 %1096, 16
  %1106 = xor i32 %1105, %1097
  %1107 = lshr i32 %1106, 4
  %1108 = trunc i32 %1107 to i8
  %1109 = and i8 %1108, 1
  store i8 %1109, i8* %17, align 1, !tbaa !2450
  %1110 = icmp eq i32 %1097, 0
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %18, align 1, !tbaa !2447
  %1112 = lshr i32 %1097, 31
  %1113 = trunc i32 %1112 to i8
  store i8 %1113, i8* %19, align 1, !tbaa !2448
  %1114 = lshr i32 %1096, 31
  %1115 = xor i32 %1112, %1114
  %1116 = add nuw nsw i32 %1115, %1114
  %1117 = icmp eq i32 %1116, 2
  %1118 = zext i1 %1117 to i8
  store i8 %1118, i8* %20, align 1, !tbaa !2449
  %.v61 = select i1 %1110, i64 27, i64 52
  %1119 = add i64 %370, %.v61
  store i64 %1119, i64* %PC, align 8, !tbaa !2428
  br i1 %1110, label %block_400ce0, label %block_400cf9

block_400fa9:                                     ; preds = %block_400f8f, %block_400fa2
  %1120 = phi i64 [ %1370, %block_400f8f ], [ %.pre31, %block_400fa2 ]
  %1121 = phi i64 [ %184, %block_400f8f ], [ %.pre30, %block_400fa2 ]
  %1122 = add i64 %1121, -40
  %1123 = add i64 %1120, 4
  store i64 %1123, i64* %PC, align 8
  %1124 = inttoptr i64 %1122 to i64*
  %1125 = load i64, i64* %1124, align 8
  store i64 %1125, i64* %RAX, align 8, !tbaa !2428
  %1126 = add i64 %1125, 8
  %1127 = add i64 %1120, 8
  store i64 %1127, i64* %PC, align 8
  %1128 = inttoptr i64 %1126 to i64*
  %1129 = load i64, i64* %1128, align 8
  store i64 %1129, i64* %RAX, align 8, !tbaa !2428
  %1130 = add i64 %1120, 12
  store i64 %1130, i64* %PC, align 8
  store i64 %1129, i64* %1124, align 8
  %1131 = load i64, i64* %RBP, align 8
  %1132 = add i64 %1131, -68
  %1133 = load i64, i64* %PC, align 8
  %1134 = add i64 %1133, 3
  store i64 %1134, i64* %PC, align 8
  %1135 = inttoptr i64 %1132 to i32*
  %1136 = load i32, i32* %1135, align 4
  %1137 = add i32 %1136, 1
  %1138 = zext i32 %1137 to i64
  store i64 %1138, i64* %RAX, align 8, !tbaa !2428
  %1139 = icmp eq i32 %1136, -1
  %1140 = icmp eq i32 %1137, 0
  %1141 = or i1 %1139, %1140
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %15, align 1, !tbaa !2432
  %1143 = and i32 %1137, 255
  %1144 = tail call i32 @llvm.ctpop.i32(i32 %1143) #9
  %1145 = trunc i32 %1144 to i8
  %1146 = and i8 %1145, 1
  %1147 = xor i8 %1146, 1
  store i8 %1147, i8* %16, align 1, !tbaa !2446
  %1148 = xor i32 %1137, %1136
  %1149 = lshr i32 %1148, 4
  %1150 = trunc i32 %1149 to i8
  %1151 = and i8 %1150, 1
  store i8 %1151, i8* %17, align 1, !tbaa !2450
  %1152 = zext i1 %1140 to i8
  store i8 %1152, i8* %18, align 1, !tbaa !2447
  %1153 = lshr i32 %1137, 31
  %1154 = trunc i32 %1153 to i8
  store i8 %1154, i8* %19, align 1, !tbaa !2448
  %1155 = lshr i32 %1136, 31
  %1156 = xor i32 %1153, %1155
  %1157 = add nuw nsw i32 %1156, %1153
  %1158 = icmp eq i32 %1157, 2
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %20, align 1, !tbaa !2449
  %1160 = add i64 %1133, 9
  store i64 %1160, i64* %PC, align 8
  store i32 %1137, i32* %1135, align 4
  %1161 = load i64, i64* %PC, align 8
  %1162 = add i64 %1161, -63
  store i64 %1162, i64* %PC, align 8, !tbaa !2428
  br label %block_400f7f

block_400dec:                                     ; preds = %block_400dd1
  %1163 = load i64, i64* %RBP, align 8
  %1164 = add i64 %1163, -40
  %1165 = add i64 %693, 4
  store i64 %1165, i64* %PC, align 8
  %1166 = inttoptr i64 %1164 to i64*
  %1167 = load i64, i64* %1166, align 8
  store i64 %1167, i64* %RAX, align 8, !tbaa !2428
  %1168 = add i64 %693, 6
  store i64 %1168, i64* %PC, align 8
  %1169 = inttoptr i64 %1167 to i32*
  %1170 = load i32, i32* %1169, align 4
  %1171 = zext i32 %1170 to i64
  store i64 %1171, i64* %RCX, align 8, !tbaa !2428
  %1172 = add i64 %1163, -48
  %1173 = add i64 %693, 9
  store i64 %1173, i64* %PC, align 8
  %1174 = inttoptr i64 %1172 to i32*
  %1175 = load i32, i32* %1174, align 4
  %1176 = add i32 %1175, %1170
  %1177 = zext i32 %1176 to i64
  store i64 %1177, i64* %RCX, align 8, !tbaa !2428
  %1178 = icmp ult i32 %1176, %1170
  %1179 = icmp ult i32 %1176, %1175
  %1180 = or i1 %1178, %1179
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %15, align 1, !tbaa !2432
  %1182 = and i32 %1176, 255
  %1183 = tail call i32 @llvm.ctpop.i32(i32 %1182) #9
  %1184 = trunc i32 %1183 to i8
  %1185 = and i8 %1184, 1
  %1186 = xor i8 %1185, 1
  store i8 %1186, i8* %16, align 1, !tbaa !2446
  %1187 = xor i32 %1175, %1170
  %1188 = xor i32 %1187, %1176
  %1189 = lshr i32 %1188, 4
  %1190 = trunc i32 %1189 to i8
  %1191 = and i8 %1190, 1
  store i8 %1191, i8* %17, align 1, !tbaa !2450
  %1192 = icmp eq i32 %1176, 0
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %18, align 1, !tbaa !2447
  %1194 = lshr i32 %1176, 31
  %1195 = trunc i32 %1194 to i8
  store i8 %1195, i8* %19, align 1, !tbaa !2448
  %1196 = lshr i32 %1170, 31
  %1197 = lshr i32 %1175, 31
  %1198 = xor i32 %1194, %1196
  %1199 = xor i32 %1194, %1197
  %1200 = add nuw nsw i32 %1198, %1199
  %1201 = icmp eq i32 %1200, 2
  %1202 = zext i1 %1201 to i8
  store i8 %1202, i8* %20, align 1, !tbaa !2449
  %1203 = add i64 %693, 12
  store i64 %1203, i64* %PC, align 8
  store i32 %1176, i32* %1174, align 4
  %1204 = load i64, i64* %RBP, align 8
  %1205 = add i64 %1204, -40
  %1206 = load i64, i64* %PC, align 8
  %1207 = add i64 %1206, 4
  store i64 %1207, i64* %PC, align 8
  %1208 = inttoptr i64 %1205 to i64*
  %1209 = load i64, i64* %1208, align 8
  store i64 %1209, i64* %RAX, align 8, !tbaa !2428
  %1210 = add i64 %1209, 4
  %1211 = add i64 %1206, 7
  store i64 %1211, i64* %PC, align 8
  %1212 = inttoptr i64 %1210 to i32*
  %1213 = load i32, i32* %1212, align 4
  %1214 = zext i32 %1213 to i64
  store i64 %1214, i64* %RCX, align 8, !tbaa !2428
  %1215 = add i64 %1204, -52
  %1216 = add i64 %1206, 10
  store i64 %1216, i64* %PC, align 8
  %1217 = inttoptr i64 %1215 to i32*
  %1218 = load i32, i32* %1217, align 4
  %1219 = add i32 %1218, %1213
  %1220 = zext i32 %1219 to i64
  store i64 %1220, i64* %RCX, align 8, !tbaa !2428
  %1221 = icmp ult i32 %1219, %1213
  %1222 = icmp ult i32 %1219, %1218
  %1223 = or i1 %1221, %1222
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %15, align 1, !tbaa !2432
  %1225 = and i32 %1219, 255
  %1226 = tail call i32 @llvm.ctpop.i32(i32 %1225) #9
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  %1229 = xor i8 %1228, 1
  store i8 %1229, i8* %16, align 1, !tbaa !2446
  %1230 = xor i32 %1218, %1213
  %1231 = xor i32 %1230, %1219
  %1232 = lshr i32 %1231, 4
  %1233 = trunc i32 %1232 to i8
  %1234 = and i8 %1233, 1
  store i8 %1234, i8* %17, align 1, !tbaa !2450
  %1235 = icmp eq i32 %1219, 0
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %18, align 1, !tbaa !2447
  %1237 = lshr i32 %1219, 31
  %1238 = trunc i32 %1237 to i8
  store i8 %1238, i8* %19, align 1, !tbaa !2448
  %1239 = lshr i32 %1213, 31
  %1240 = lshr i32 %1218, 31
  %1241 = xor i32 %1237, %1239
  %1242 = xor i32 %1237, %1240
  %1243 = add nuw nsw i32 %1241, %1242
  %1244 = icmp eq i32 %1243, 2
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %20, align 1, !tbaa !2449
  %1246 = add i64 %1206, 13
  store i64 %1246, i64* %PC, align 8
  store i32 %1219, i32* %1217, align 4
  %.pre41 = load i64, i64* %PC, align 8
  br label %block_400e05

block_400da2:                                     ; preds = %block_400cbb
  %1247 = add i64 %341, -68
  %1248 = add i64 %370, 8
  store i64 %1248, i64* %PC, align 8
  %1249 = inttoptr i64 %1247 to i32*
  %1250 = load i32, i32* %1249, align 4
  %1251 = add i32 %1250, 1
  %1252 = zext i32 %1251 to i64
  store i64 %1252, i64* %RAX, align 8, !tbaa !2428
  %1253 = icmp eq i32 %1250, -1
  %1254 = icmp eq i32 %1251, 0
  %1255 = or i1 %1253, %1254
  %1256 = zext i1 %1255 to i8
  store i8 %1256, i8* %15, align 1, !tbaa !2432
  %1257 = and i32 %1251, 255
  %1258 = tail call i32 @llvm.ctpop.i32(i32 %1257) #9
  %1259 = trunc i32 %1258 to i8
  %1260 = and i8 %1259, 1
  %1261 = xor i8 %1260, 1
  store i8 %1261, i8* %16, align 1, !tbaa !2446
  %1262 = xor i32 %1251, %1250
  %1263 = lshr i32 %1262, 4
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  store i8 %1265, i8* %17, align 1, !tbaa !2450
  %1266 = zext i1 %1254 to i8
  store i8 %1266, i8* %18, align 1, !tbaa !2447
  %1267 = lshr i32 %1251, 31
  %1268 = trunc i32 %1267 to i8
  store i8 %1268, i8* %19, align 1, !tbaa !2448
  %1269 = lshr i32 %1250, 31
  %1270 = xor i32 %1267, %1269
  %1271 = add nuw nsw i32 %1270, %1267
  %1272 = icmp eq i32 %1271, 2
  %1273 = zext i1 %1272 to i8
  store i8 %1273, i8* %20, align 1, !tbaa !2449
  %1274 = add i64 %370, 14
  store i64 %1274, i64* %PC, align 8
  store i32 %1251, i32* %1249, align 4
  %1275 = load i64, i64* %PC, align 8
  %1276 = add i64 %1275, -273
  store i64 %1276, i64* %PC, align 8, !tbaa !2428
  br label %block_400c9f

block_400c9f:                                     ; preds = %block_400c8a, %block_400da2
  %1277 = phi i64 [ %.pre32, %block_400c8a ], [ %1276, %block_400da2 ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.3, %block_400c8a ], [ %MEMORY.2, %block_400da2 ]
  %1278 = load i64, i64* %RBP, align 8
  %1279 = add i64 %1278, -68
  %1280 = add i64 %1277, 3
  store i64 %1280, i64* %PC, align 8
  %1281 = inttoptr i64 %1279 to i32*
  %1282 = load i32, i32* %1281, align 4
  %1283 = zext i32 %1282 to i64
  store i64 %1283, i64* %RAX, align 8, !tbaa !2428
  %1284 = add i64 %1278, -60
  %1285 = add i64 %1277, 6
  store i64 %1285, i64* %PC, align 8
  %1286 = inttoptr i64 %1284 to i32*
  %1287 = load i32, i32* %1286, align 4
  %1288 = sub i32 %1282, %1287
  %1289 = icmp ult i32 %1282, %1287
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %15, align 1, !tbaa !2432
  %1291 = and i32 %1288, 255
  %1292 = tail call i32 @llvm.ctpop.i32(i32 %1291) #9
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  %1295 = xor i8 %1294, 1
  store i8 %1295, i8* %16, align 1, !tbaa !2446
  %1296 = xor i32 %1287, %1282
  %1297 = xor i32 %1296, %1288
  %1298 = lshr i32 %1297, 4
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  store i8 %1300, i8* %17, align 1, !tbaa !2450
  %1301 = icmp eq i32 %1288, 0
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %18, align 1, !tbaa !2447
  %1303 = lshr i32 %1288, 31
  %1304 = trunc i32 %1303 to i8
  store i8 %1304, i8* %19, align 1, !tbaa !2448
  %1305 = lshr i32 %1282, 31
  %1306 = lshr i32 %1287, 31
  %1307 = xor i32 %1306, %1305
  %1308 = xor i32 %1303, %1305
  %1309 = add nuw nsw i32 %1308, %1307
  %1310 = icmp eq i32 %1309, 2
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %20, align 1, !tbaa !2449
  %1312 = icmp ne i8 %1304, 0
  %1313 = xor i1 %1312, %1310
  %.v57 = select i1 %1313, i64 12, i64 278
  %1314 = add i64 %1277, %.v57
  store i64 %1314, i64* %PC, align 8, !tbaa !2428
  br i1 %1313, label %block_400cab, label %block_400db5

block_400cab:                                     ; preds = %block_400c9f
  %1315 = add i64 %1314, -1563
  %1316 = add i64 %1314, 5
  %1317 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1318 = add i64 %1317, -8
  %1319 = inttoptr i64 %1318 to i64*
  store i64 %1316, i64* %1319, align 8
  store i64 %1318, i64* %RSP, align 8, !tbaa !2428
  store i64 %1315, i64* %PC, align 8, !tbaa !2428
  %1320 = tail call fastcc %struct.Memory* @ext_602110_lrand48(%struct.State* nonnull %0, %struct.Memory* %MEMORY.8)
  %1321 = load i64, i64* %RBP, align 8
  %1322 = add i64 %1321, -80
  %1323 = load i64, i64* %RAX, align 8
  %1324 = load i64, i64* %PC, align 8
  %1325 = add i64 %1324, 4
  store i64 %1325, i64* %PC, align 8
  %1326 = inttoptr i64 %1322 to i64*
  store i64 %1323, i64* %1326, align 8
  %1327 = load i64, i64* %RBP, align 8
  %1328 = add i64 %1327, -72
  %1329 = load i64, i64* %PC, align 8
  %1330 = add i64 %1329, 7
  store i64 %1330, i64* %PC, align 8
  %1331 = inttoptr i64 %1328 to i32*
  store i32 0, i32* %1331, align 4
  %.pre47 = load i64, i64* %PC, align 8
  br label %block_400cbb

block_400f8f:                                     ; preds = %block_400f7f
  %1332 = add i64 %184, -40
  %1333 = add i64 %217, 4
  store i64 %1333, i64* %PC, align 8
  %1334 = inttoptr i64 %1332 to i64*
  %1335 = load i64, i64* %1334, align 8
  store i64 %1335, i64* %RAX, align 8, !tbaa !2428
  %1336 = add i64 %217, 6
  store i64 %1336, i64* %PC, align 8
  %1337 = inttoptr i64 %1335 to i32*
  %1338 = load i32, i32* %1337, align 4
  %1339 = zext i32 %1338 to i64
  store i64 %1339, i64* %RCX, align 8, !tbaa !2428
  %1340 = add i64 %217, 10
  store i64 %1340, i64* %PC, align 8
  %1341 = load i64, i64* %1334, align 8
  store i64 %1341, i64* %RAX, align 8, !tbaa !2428
  %1342 = add i64 %1341, 4
  %1343 = add i64 %217, 13
  store i64 %1343, i64* %PC, align 8
  %1344 = inttoptr i64 %1342 to i32*
  %1345 = load i32, i32* %1344, align 4
  %1346 = sub i32 %1338, %1345
  %1347 = icmp ult i32 %1338, %1345
  %1348 = zext i1 %1347 to i8
  store i8 %1348, i8* %15, align 1, !tbaa !2432
  %1349 = and i32 %1346, 255
  %1350 = tail call i32 @llvm.ctpop.i32(i32 %1349) #9
  %1351 = trunc i32 %1350 to i8
  %1352 = and i8 %1351, 1
  %1353 = xor i8 %1352, 1
  store i8 %1353, i8* %16, align 1, !tbaa !2446
  %1354 = xor i32 %1345, %1338
  %1355 = xor i32 %1354, %1346
  %1356 = lshr i32 %1355, 4
  %1357 = trunc i32 %1356 to i8
  %1358 = and i8 %1357, 1
  store i8 %1358, i8* %17, align 1, !tbaa !2450
  %1359 = icmp eq i32 %1346, 0
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %18, align 1, !tbaa !2447
  %1361 = lshr i32 %1346, 31
  %1362 = trunc i32 %1361 to i8
  store i8 %1362, i8* %19, align 1, !tbaa !2448
  %1363 = lshr i32 %1338, 31
  %1364 = lshr i32 %1345, 31
  %1365 = xor i32 %1364, %1363
  %1366 = xor i32 %1361, %1363
  %1367 = add nuw nsw i32 %1366, %1365
  %1368 = icmp eq i32 %1367, 2
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %20, align 1, !tbaa !2449
  %.v56 = select i1 %1359, i64 26, i64 19
  %1370 = add i64 %217, %.v56
  store i64 %1370, i64* %PC, align 8, !tbaa !2428
  br i1 %1359, label %block_400fa9, label %block_400fa2

block_400cf9:                                     ; preds = %block_400cc5, %block_400ce0
  %1371 = phi i64 [ %1119, %block_400cc5 ], [ %.pre48, %block_400ce0 ]
  %1372 = load i64, i64* %RBP, align 8
  %1373 = add i64 %1372, -40
  %1374 = add i64 %1371, 4
  store i64 %1374, i64* %PC, align 8
  %1375 = inttoptr i64 %1373 to i64*
  %1376 = load i64, i64* %1375, align 8
  store i64 %1376, i64* %RAX, align 8, !tbaa !2428
  %1377 = add i64 %1376, 8
  %1378 = add i64 %1371, 8
  store i64 %1378, i64* %PC, align 8
  %1379 = inttoptr i64 %1377 to i64*
  %1380 = load i64, i64* %1379, align 8
  store i64 %1380, i64* %RAX, align 8, !tbaa !2428
  %1381 = add i64 %1371, 11
  store i64 %1381, i64* %PC, align 8
  %1382 = inttoptr i64 %1380 to i32*
  %1383 = load i32, i32* %1382, align 4
  %1384 = sext i32 %1383 to i64
  store i64 %1384, i64* %RAX, align 8, !tbaa !2428
  %1385 = add i64 %1372, -80
  %1386 = add i64 %1371, 15
  store i64 %1386, i64* %PC, align 8
  %1387 = inttoptr i64 %1385 to i64*
  %1388 = load i64, i64* %1387, align 8
  %1389 = add i64 %1388, %1384
  %1390 = and i64 %1389, 1
  store i64 %1390, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2432
  %1391 = trunc i64 %1390 to i32
  %1392 = tail call i32 @llvm.ctpop.i32(i32 %1391) #9
  %1393 = trunc i32 %1392 to i8
  %1394 = xor i8 %1393, 1
  store i8 %1394, i8* %16, align 1, !tbaa !2446
  %1395 = trunc i64 %1390 to i8
  %1396 = xor i8 %1395, 1
  store i8 %1396, i8* %18, align 1, !tbaa !2447
  store i8 0, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i64 %1390, i64* %RCX, align 8, !tbaa !2428
  %1397 = add i64 %1371, 25
  store i64 %1397, i64* %PC, align 8
  %1398 = load i64, i64* %1375, align 8
  store i64 %1398, i64* %RAX, align 8, !tbaa !2428
  %1399 = add i64 %1371, 27
  store i64 %1399, i64* %PC, align 8
  %1400 = inttoptr i64 %1398 to i32*
  store i32 %1391, i32* %1400, align 4
  %1401 = load i64, i64* %PC, align 8
  %1402 = add i64 %1401, -1668
  %1403 = add i64 %1401, 5
  %1404 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1405 = add i64 %1404, -8
  %1406 = inttoptr i64 %1405 to i64*
  store i64 %1403, i64* %1406, align 8
  store i64 %1405, i64* %RSP, align 8, !tbaa !2428
  store i64 %1402, i64* %PC, align 8, !tbaa !2428
  %1407 = tail call fastcc %struct.Memory* @ext_602110_lrand48(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %1408 = load i64, i64* %PC, align 8
  %1409 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 32) to i64*), align 16
  store i64 %1409, i64* %36, align 1, !tbaa !2451
  store double 0.000000e+00, double* %177, align 1, !tbaa !2451
  store i64 1000, i64* %RCX, align 8, !tbaa !2428
  %1410 = load i64, i64* %RBP, align 8
  %1411 = add i64 %1410, -104
  %1412 = add i64 %1408, 19
  store i64 %1412, i64* %PC, align 8
  %1413 = inttoptr i64 %1411 to i64*
  store i64 1000, i64* %1413, align 8
  %1414 = load i64, i64* %PC, align 8
  %1415 = load i64, i64* %178, align 8, !tbaa !2428
  %1416 = ashr i64 %1415, 63
  store i64 %1416, i64* %82, align 8, !tbaa !2428
  %1417 = load i64, i64* %RBP, align 8
  %1418 = add i64 %1417, -104
  %1419 = add i64 %1414, 6
  store i64 %1419, i64* %PC, align 8
  %1420 = inttoptr i64 %1418 to i64*
  %1421 = load i64, i64* %1420, align 8
  store i64 %1421, i64* %RSI, align 8, !tbaa !2428
  %1422 = add i64 %1414, 9
  store i64 %1422, i64* %PC, align 8
  %1423 = sext i64 %1421 to i128
  %1424 = and i128 %1423, -18446744073709551616
  %1425 = zext i64 %1416 to i128
  %1426 = shl nuw i128 %1425, 64
  %1427 = zext i64 %1415 to i128
  %1428 = or i128 %1426, %1427
  %1429 = zext i64 %1421 to i128
  %1430 = or i128 %1424, %1429
  %1431 = sdiv i128 %1428, %1430
  %1432 = trunc i128 %1431 to i64
  %1433 = and i128 %1431, 18446744073709551615
  %1434 = sext i64 %1432 to i128
  %1435 = and i128 %1434, -18446744073709551616
  %1436 = or i128 %1435, %1433
  %1437 = icmp eq i128 %1431, %1436
  br i1 %1437, label %1440, label %1438

; <label>:1438:                                   ; preds = %block_400cf9
  %1439 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1422, %struct.Memory* %1407) #12
  %.pre49 = load i64, i64* %RDX, align 8
  %.pre50 = load i64, i64* %PC, align 8
  %.pre51 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit2

; <label>:1440:                                   ; preds = %block_400cf9
  %1441 = srem i128 %1428, %1430
  %1442 = trunc i128 %1441 to i64
  store i64 %1432, i64* %178, align 8, !tbaa !2428
  store i64 %1442, i64* %82, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2432
  store i8 0, i8* %16, align 1, !tbaa !2446
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %18, align 1, !tbaa !2447
  store i8 0, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit2

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit2: ; preds = %1440, %1438
  %1443 = phi i64 [ %.pre51, %1438 ], [ %1417, %1440 ]
  %1444 = phi i64 [ %.pre50, %1438 ], [ %1422, %1440 ]
  %1445 = phi i64 [ %.pre49, %1438 ], [ %1442, %1440 ]
  %1446 = phi %struct.Memory* [ %1439, %1438 ], [ %1407, %1440 ]
  %1447 = sitofp i64 %1445 to double
  %1448 = load double, double* %35, align 1
  %1449 = fdiv double %1447, %1448
  store double %1449, double* %179, align 1, !tbaa !2451
  %1450 = add i64 %1443, -88
  %1451 = add i64 %1444, 14
  store i64 %1451, i64* %PC, align 8
  %1452 = inttoptr i64 %1450 to double*
  store double %1449, double* %1452, align 8
  %1453 = load i64, i64* %RBP, align 8
  %1454 = add i64 %1453, -24
  %1455 = load i64, i64* %PC, align 8
  %1456 = add i64 %1455, 5
  store i64 %1456, i64* %PC, align 8
  %1457 = inttoptr i64 %1454 to i64*
  %1458 = load i64, i64* %1457, align 8
  store i64 %1458, i64* %36, align 1, !tbaa !2451
  store double 0.000000e+00, double* %177, align 1, !tbaa !2451
  %1459 = add i64 %1453, -88
  %1460 = add i64 %1455, 10
  store i64 %1460, i64* %PC, align 8
  %1461 = bitcast i64 %1458 to double
  %1462 = inttoptr i64 %1459 to double*
  %1463 = load double, double* %1462, align 8
  %1464 = fcmp uno double %1461, %1463
  br i1 %1464, label %1465, label %1475

; <label>:1465:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit2
  %1466 = fadd double %1461, %1463
  %1467 = bitcast double %1466 to i64
  %1468 = and i64 %1467, 9221120237041090560
  %1469 = icmp eq i64 %1468, 9218868437227405312
  %1470 = and i64 %1467, 2251799813685247
  %1471 = icmp ne i64 %1470, 0
  %1472 = and i1 %1469, %1471
  br i1 %1472, label %1473, label %1481

; <label>:1473:                                   ; preds = %1465
  %1474 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1460, %struct.Memory* %1446) #12
  %.pre52 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

; <label>:1475:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit2
  %1476 = fcmp ogt double %1461, %1463
  br i1 %1476, label %1481, label %1477

; <label>:1477:                                   ; preds = %1475
  %1478 = fcmp olt double %1461, %1463
  br i1 %1478, label %1481, label %1479

; <label>:1479:                                   ; preds = %1477
  %1480 = fcmp oeq double %1461, %1463
  br i1 %1480, label %1481, label %1485

; <label>:1481:                                   ; preds = %1479, %1477, %1475, %1465
  %1482 = phi i8 [ 0, %1475 ], [ 0, %1477 ], [ 1, %1479 ], [ 1, %1465 ]
  %1483 = phi i8 [ 0, %1475 ], [ 0, %1477 ], [ 0, %1479 ], [ 1, %1465 ]
  %1484 = phi i8 [ 0, %1475 ], [ 1, %1477 ], [ 0, %1479 ], [ 1, %1465 ]
  store i8 %1482, i8* %18, align 1, !tbaa !2453
  store i8 %1483, i8* %16, align 1, !tbaa !2453
  store i8 %1484, i8* %15, align 1, !tbaa !2453
  br label %1485

; <label>:1485:                                   ; preds = %1481, %1479
  store i8 0, i8* %20, align 1, !tbaa !2453
  store i8 0, i8* %19, align 1, !tbaa !2453
  store i8 0, i8* %17, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1: ; preds = %1485, %1473
  %1486 = phi i64 [ %.pre52, %1473 ], [ %1460, %1485 ]
  %1487 = phi %struct.Memory* [ %1474, %1473 ], [ %1446, %1485 ]
  %1488 = add i64 %1486, 18
  %1489 = add i64 %1486, 6
  %1490 = load i8, i8* %15, align 1, !tbaa !2432
  %1491 = load i8, i8* %18, align 1, !tbaa !2447
  %1492 = or i8 %1491, %1490
  %1493 = icmp ne i8 %1492, 0
  %1494 = select i1 %1493, i64 %1488, i64 %1489
  store i64 %1494, i64* %PC, align 8, !tbaa !2428
  br i1 %1493, label %block_400d5f, label %block_400d53

block_400e6b:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit, %block_400e5f
  %1495 = phi i64 [ %1720, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit ], [ %.pre46, %block_400e5f ]
  %1496 = load i64, i64* %RBP, align 8
  %1497 = add i64 %1496, -40
  %1498 = add i64 %1495, 4
  store i64 %1498, i64* %PC, align 8
  %1499 = inttoptr i64 %1497 to i64*
  %1500 = load i64, i64* %1499, align 8
  store i64 %1500, i64* %RAX, align 8, !tbaa !2428
  %1501 = add i64 %1500, 8
  %1502 = add i64 %1495, 8
  store i64 %1502, i64* %PC, align 8
  %1503 = inttoptr i64 %1501 to i64*
  %1504 = load i64, i64* %1503, align 8
  store i64 %1504, i64* %RAX, align 8, !tbaa !2428
  %1505 = add i64 %1504, 4
  %1506 = add i64 %1495, 12
  store i64 %1506, i64* %PC, align 8
  %1507 = inttoptr i64 %1505 to i32*
  %1508 = load i32, i32* %1507, align 4
  %1509 = sext i32 %1508 to i64
  store i64 %1509, i64* %RAX, align 8, !tbaa !2428
  %1510 = add i64 %1496, -80
  %1511 = add i64 %1495, 16
  store i64 %1511, i64* %PC, align 8
  %1512 = inttoptr i64 %1510 to i64*
  %1513 = load i64, i64* %1512, align 8
  %1514 = add i64 %1513, %1509
  %1515 = and i64 %1514, 1
  store i64 %1515, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2432
  %1516 = trunc i64 %1515 to i32
  %1517 = tail call i32 @llvm.ctpop.i32(i32 %1516) #9
  %1518 = trunc i32 %1517 to i8
  %1519 = xor i8 %1518, 1
  store i8 %1519, i8* %16, align 1, !tbaa !2446
  %1520 = trunc i64 %1515 to i8
  %1521 = xor i8 %1520, 1
  store i8 %1521, i8* %18, align 1, !tbaa !2447
  store i8 0, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i64 %1515, i64* %RCX, align 8, !tbaa !2428
  %1522 = add i64 %1495, 26
  store i64 %1522, i64* %PC, align 8
  %1523 = load i64, i64* %1499, align 8
  store i64 %1523, i64* %RAX, align 8, !tbaa !2428
  %1524 = add i64 %1523, 4
  %1525 = add i64 %1495, 29
  store i64 %1525, i64* %PC, align 8
  %1526 = inttoptr i64 %1524 to i32*
  store i32 %1516, i32* %1526, align 4
  %1527 = load i64, i64* %RBP, align 8
  %1528 = add i64 %1527, -40
  %1529 = load i64, i64* %PC, align 8
  %1530 = add i64 %1529, 4
  store i64 %1530, i64* %PC, align 8
  %1531 = inttoptr i64 %1528 to i64*
  %1532 = load i64, i64* %1531, align 8
  store i64 %1532, i64* %RAX, align 8, !tbaa !2428
  %1533 = add i64 %1532, 8
  %1534 = add i64 %1529, 8
  store i64 %1534, i64* %PC, align 8
  %1535 = inttoptr i64 %1533 to i64*
  %1536 = load i64, i64* %1535, align 8
  store i64 %1536, i64* %RAX, align 8, !tbaa !2428
  %1537 = add i64 %1529, 12
  store i64 %1537, i64* %PC, align 8
  store i64 %1536, i64* %1531, align 8
  %1538 = load i64, i64* %RBP, align 8
  %1539 = add i64 %1538, -80
  %1540 = load i64, i64* %PC, align 8
  %1541 = add i64 %1540, 4
  store i64 %1541, i64* %PC, align 8
  %1542 = inttoptr i64 %1539 to i64*
  %1543 = load i64, i64* %1542, align 8
  %1544 = trunc i64 %1543 to i8
  %1545 = and i8 %1544, 1
  %1546 = ashr i64 %1543, 1
  store i64 %1546, i64* %RAX, align 8, !tbaa !2428
  store i8 %1545, i8* %15, align 1, !tbaa !2453
  %1547 = trunc i64 %1546 to i32
  %1548 = and i32 %1547, 255
  %1549 = tail call i32 @llvm.ctpop.i32(i32 %1548) #9
  %1550 = trunc i32 %1549 to i8
  %1551 = and i8 %1550, 1
  %1552 = xor i8 %1551, 1
  store i8 %1552, i8* %16, align 1, !tbaa !2453
  store i8 0, i8* %17, align 1, !tbaa !2453
  %1553 = icmp eq i64 %1546, 0
  %1554 = zext i1 %1553 to i8
  store i8 %1554, i8* %18, align 1, !tbaa !2453
  %1555 = lshr i64 %1546, 63
  %1556 = trunc i64 %1555 to i8
  store i8 %1556, i8* %19, align 1, !tbaa !2453
  store i8 0, i8* %20, align 1, !tbaa !2453
  %1557 = add i64 %1540, 12
  store i64 %1557, i64* %PC, align 8
  store i64 %1546, i64* %1542, align 8
  %1558 = load i64, i64* %RBP, align 8
  %1559 = add i64 %1558, -72
  %1560 = load i64, i64* %PC, align 8
  %1561 = add i64 %1560, 3
  store i64 %1561, i64* %PC, align 8
  %1562 = inttoptr i64 %1559 to i32*
  %1563 = load i32, i32* %1562, align 4
  %1564 = add i32 %1563, 1
  %1565 = zext i32 %1564 to i64
  store i64 %1565, i64* %RAX, align 8, !tbaa !2428
  %1566 = icmp eq i32 %1563, -1
  %1567 = icmp eq i32 %1564, 0
  %1568 = or i1 %1566, %1567
  %1569 = zext i1 %1568 to i8
  store i8 %1569, i8* %15, align 1, !tbaa !2432
  %1570 = and i32 %1564, 255
  %1571 = tail call i32 @llvm.ctpop.i32(i32 %1570) #9
  %1572 = trunc i32 %1571 to i8
  %1573 = and i8 %1572, 1
  %1574 = xor i8 %1573, 1
  store i8 %1574, i8* %16, align 1, !tbaa !2446
  %1575 = xor i32 %1564, %1563
  %1576 = lshr i32 %1575, 4
  %1577 = trunc i32 %1576 to i8
  %1578 = and i8 %1577, 1
  store i8 %1578, i8* %17, align 1, !tbaa !2450
  %1579 = zext i1 %1567 to i8
  store i8 %1579, i8* %18, align 1, !tbaa !2447
  %1580 = lshr i32 %1564, 31
  %1581 = trunc i32 %1580 to i8
  store i8 %1581, i8* %19, align 1, !tbaa !2448
  %1582 = lshr i32 %1563, 31
  %1583 = xor i32 %1580, %1582
  %1584 = add nuw nsw i32 %1583, %1580
  %1585 = icmp eq i32 %1584, 2
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %20, align 1, !tbaa !2449
  %1587 = add i64 %1560, 9
  store i64 %1587, i64* %PC, align 8
  store i32 %1564, i32* %1562, align 4
  %1588 = load i64, i64* %PC, align 8
  %1589 = add i64 %1588, -228
  store i64 %1589, i64* %PC, align 8, !tbaa !2428
  br label %block_400dc5

block_400c8a:                                     ; preds = %block_400c7e
  %1590 = add i64 %456, -48
  %1591 = add i64 %492, 7
  store i64 %1591, i64* %PC, align 8
  %1592 = inttoptr i64 %1590 to i32*
  store i32 0, i32* %1592, align 4
  %1593 = load i64, i64* %RBP, align 8
  %1594 = add i64 %1593, -52
  %1595 = load i64, i64* %PC, align 8
  %1596 = add i64 %1595, 7
  store i64 %1596, i64* %PC, align 8
  %1597 = inttoptr i64 %1594 to i32*
  store i32 0, i32* %1597, align 4
  %1598 = load i64, i64* %RBP, align 8
  %1599 = add i64 %1598, -68
  %1600 = load i64, i64* %PC, align 8
  %1601 = add i64 %1600, 7
  store i64 %1601, i64* %PC, align 8
  %1602 = inttoptr i64 %1599 to i32*
  store i32 0, i32* %1602, align 4
  %.pre32 = load i64, i64* %PC, align 8
  br label %block_400c9f

block_400e05:                                     ; preds = %block_400dd1, %block_400dec
  %1603 = phi i64 [ %.pre41, %block_400dec ], [ %693, %block_400dd1 ]
  %1604 = load i64, i64* %RBP, align 8
  %1605 = add i64 %1604, -40
  %1606 = add i64 %1603, 4
  store i64 %1606, i64* %PC, align 8
  %1607 = inttoptr i64 %1605 to i64*
  %1608 = load i64, i64* %1607, align 8
  store i64 %1608, i64* %RAX, align 8, !tbaa !2428
  %1609 = add i64 %1608, 8
  %1610 = add i64 %1603, 8
  store i64 %1610, i64* %PC, align 8
  %1611 = inttoptr i64 %1609 to i64*
  %1612 = load i64, i64* %1611, align 8
  store i64 %1612, i64* %RAX, align 8, !tbaa !2428
  %1613 = add i64 %1603, 11
  store i64 %1613, i64* %PC, align 8
  %1614 = inttoptr i64 %1612 to i32*
  %1615 = load i32, i32* %1614, align 4
  %1616 = sext i32 %1615 to i64
  store i64 %1616, i64* %RAX, align 8, !tbaa !2428
  %1617 = add i64 %1604, -80
  %1618 = add i64 %1603, 15
  store i64 %1618, i64* %PC, align 8
  %1619 = inttoptr i64 %1617 to i64*
  %1620 = load i64, i64* %1619, align 8
  %1621 = add i64 %1620, %1616
  %1622 = and i64 %1621, 1
  store i64 %1622, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2432
  %1623 = trunc i64 %1622 to i32
  %1624 = tail call i32 @llvm.ctpop.i32(i32 %1623) #9
  %1625 = trunc i32 %1624 to i8
  %1626 = xor i8 %1625, 1
  store i8 %1626, i8* %16, align 1, !tbaa !2446
  %1627 = trunc i64 %1622 to i8
  %1628 = xor i8 %1627, 1
  store i8 %1628, i8* %18, align 1, !tbaa !2447
  store i8 0, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i64 %1622, i64* %RCX, align 8, !tbaa !2428
  %1629 = add i64 %1603, 25
  store i64 %1629, i64* %PC, align 8
  %1630 = load i64, i64* %1607, align 8
  store i64 %1630, i64* %RAX, align 8, !tbaa !2428
  %1631 = add i64 %1603, 27
  store i64 %1631, i64* %PC, align 8
  %1632 = inttoptr i64 %1630 to i32*
  store i32 %1623, i32* %1632, align 4
  %1633 = load i64, i64* %PC, align 8
  %1634 = add i64 %1633, -1936
  %1635 = add i64 %1633, 5
  %1636 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1637 = add i64 %1636, -8
  %1638 = inttoptr i64 %1637 to i64*
  store i64 %1635, i64* %1638, align 8
  store i64 %1637, i64* %RSP, align 8, !tbaa !2428
  store i64 %1634, i64* %PC, align 8, !tbaa !2428
  %1639 = tail call fastcc %struct.Memory* @ext_602110_lrand48(%struct.State* nonnull %0, %struct.Memory* %MEMORY.6)
  %1640 = load i64, i64* %PC, align 8
  %1641 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 32) to i64*), align 16
  store i64 %1641, i64* %36, align 1, !tbaa !2451
  store double 0.000000e+00, double* %177, align 1, !tbaa !2451
  store i64 1000, i64* %RCX, align 8, !tbaa !2428
  %1642 = load i64, i64* %RBP, align 8
  %1643 = add i64 %1642, -112
  %1644 = add i64 %1640, 19
  store i64 %1644, i64* %PC, align 8
  %1645 = inttoptr i64 %1643 to i64*
  store i64 1000, i64* %1645, align 8
  %1646 = load i64, i64* %PC, align 8
  %1647 = load i64, i64* %178, align 8, !tbaa !2428
  %1648 = ashr i64 %1647, 63
  store i64 %1648, i64* %82, align 8, !tbaa !2428
  %1649 = load i64, i64* %RBP, align 8
  %1650 = add i64 %1649, -112
  %1651 = add i64 %1646, 6
  store i64 %1651, i64* %PC, align 8
  %1652 = inttoptr i64 %1650 to i64*
  %1653 = load i64, i64* %1652, align 8
  store i64 %1653, i64* %RSI, align 8, !tbaa !2428
  %1654 = add i64 %1646, 9
  store i64 %1654, i64* %PC, align 8
  %1655 = sext i64 %1653 to i128
  %1656 = and i128 %1655, -18446744073709551616
  %1657 = zext i64 %1648 to i128
  %1658 = shl nuw i128 %1657, 64
  %1659 = zext i64 %1647 to i128
  %1660 = or i128 %1658, %1659
  %1661 = zext i64 %1653 to i128
  %1662 = or i128 %1656, %1661
  %1663 = sdiv i128 %1660, %1662
  %1664 = trunc i128 %1663 to i64
  %1665 = and i128 %1663, 18446744073709551615
  %1666 = sext i64 %1664 to i128
  %1667 = and i128 %1666, -18446744073709551616
  %1668 = or i128 %1667, %1665
  %1669 = icmp eq i128 %1663, %1668
  br i1 %1669, label %1672, label %1670

; <label>:1670:                                   ; preds = %block_400e05
  %1671 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1654, %struct.Memory* %1639) #12
  %.pre42 = load i64, i64* %RDX, align 8
  %.pre43 = load i64, i64* %PC, align 8
  %.pre44 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:1672:                                   ; preds = %block_400e05
  %1673 = srem i128 %1660, %1662
  %1674 = trunc i128 %1673 to i64
  store i64 %1664, i64* %178, align 8, !tbaa !2428
  store i64 %1674, i64* %82, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2432
  store i8 0, i8* %16, align 1, !tbaa !2446
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %18, align 1, !tbaa !2447
  store i8 0, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %1672, %1670
  %1675 = phi i64 [ %.pre44, %1670 ], [ %1649, %1672 ]
  %1676 = phi i64 [ %.pre43, %1670 ], [ %1654, %1672 ]
  %1677 = phi i64 [ %.pre42, %1670 ], [ %1674, %1672 ]
  %1678 = phi %struct.Memory* [ %1671, %1670 ], [ %1639, %1672 ]
  %1679 = sitofp i64 %1677 to double
  %1680 = load double, double* %35, align 1
  %1681 = fdiv double %1679, %1680
  store double %1681, double* %179, align 1, !tbaa !2451
  %1682 = add i64 %1675, -88
  %1683 = add i64 %1676, 14
  store i64 %1683, i64* %PC, align 8
  %1684 = inttoptr i64 %1682 to double*
  store double %1681, double* %1684, align 8
  %1685 = load i64, i64* %RBP, align 8
  %1686 = add i64 %1685, -24
  %1687 = load i64, i64* %PC, align 8
  %1688 = add i64 %1687, 5
  store i64 %1688, i64* %PC, align 8
  %1689 = inttoptr i64 %1686 to i64*
  %1690 = load i64, i64* %1689, align 8
  store i64 %1690, i64* %36, align 1, !tbaa !2451
  store double 0.000000e+00, double* %177, align 1, !tbaa !2451
  %1691 = add i64 %1685, -88
  %1692 = add i64 %1687, 10
  store i64 %1692, i64* %PC, align 8
  %1693 = bitcast i64 %1690 to double
  %1694 = inttoptr i64 %1691 to double*
  %1695 = load double, double* %1694, align 8
  %1696 = fcmp uno double %1693, %1695
  br i1 %1696, label %1697, label %1707

; <label>:1697:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit
  %1698 = fadd double %1693, %1695
  %1699 = bitcast double %1698 to i64
  %1700 = and i64 %1699, 9221120237041090560
  %1701 = icmp eq i64 %1700, 9218868437227405312
  %1702 = and i64 %1699, 2251799813685247
  %1703 = icmp ne i64 %1702, 0
  %1704 = and i1 %1701, %1703
  br i1 %1704, label %1705, label %1713

; <label>:1705:                                   ; preds = %1697
  %1706 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1692, %struct.Memory* %1678) #12
  %.pre45 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:1707:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit
  %1708 = fcmp ogt double %1693, %1695
  br i1 %1708, label %1713, label %1709

; <label>:1709:                                   ; preds = %1707
  %1710 = fcmp olt double %1693, %1695
  br i1 %1710, label %1713, label %1711

; <label>:1711:                                   ; preds = %1709
  %1712 = fcmp oeq double %1693, %1695
  br i1 %1712, label %1713, label %1717

; <label>:1713:                                   ; preds = %1711, %1709, %1707, %1697
  %1714 = phi i8 [ 0, %1707 ], [ 0, %1709 ], [ 1, %1711 ], [ 1, %1697 ]
  %1715 = phi i8 [ 0, %1707 ], [ 0, %1709 ], [ 0, %1711 ], [ 1, %1697 ]
  %1716 = phi i8 [ 0, %1707 ], [ 1, %1709 ], [ 0, %1711 ], [ 1, %1697 ]
  store i8 %1714, i8* %18, align 1, !tbaa !2453
  store i8 %1715, i8* %16, align 1, !tbaa !2453
  store i8 %1716, i8* %15, align 1, !tbaa !2453
  br label %1717

; <label>:1717:                                   ; preds = %1713, %1711
  store i8 0, i8* %20, align 1, !tbaa !2453
  store i8 0, i8* %19, align 1, !tbaa !2453
  store i8 0, i8* %17, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %1717, %1705
  %1718 = phi i64 [ %.pre45, %1705 ], [ %1692, %1717 ]
  %1719 = phi %struct.Memory* [ %1706, %1705 ], [ %1678, %1717 ]
  %1720 = add i64 %1718, 18
  %1721 = add i64 %1718, 6
  %1722 = load i8, i8* %15, align 1, !tbaa !2432
  %1723 = load i8, i8* %18, align 1, !tbaa !2447
  %1724 = or i8 %1723, %1722
  %1725 = icmp ne i8 %1724, 0
  %1726 = select i1 %1725, i64 %1720, i64 %1721
  store i64 %1726, i64* %PC, align 8, !tbaa !2428
  br i1 %1725, label %block_400e6b, label %block_400e5f
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400710_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400710:
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
  store i8 %21, i8* %11, align 1, !tbaa !2453
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #9
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %12, align 1, !tbaa !2453
  store i8 0, i8* %13, align 1, !tbaa !2453
  %29 = icmp eq i64 %22, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %14, align 1, !tbaa !2453
  %31 = lshr i64 %22, 63
  %32 = trunc i64 %31 to i8
  store i8 %32, i8* %15, align 1, !tbaa !2453
  store i8 0, i8* %16, align 1, !tbaa !2453
  %.v = select i1 %29, i64 50, i64 29
  %33 = add i64 %9, %.v
  store i64 %33, i64* %PC, align 8, !tbaa !2428
  br i1 %29, label %block_400748, label %block_400733

block_400733:                                     ; preds = %block_400710
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2432
  store i8 1, i8* %12, align 1, !tbaa !2446
  store i8 1, i8* %14, align 1, !tbaa !2447
  store i8 0, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %13, align 1, !tbaa !2450
  %34 = add i64 %33, 21
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br label %block_400748

block_400748:                                     ; preds = %block_400733, %block_400710
  %35 = phi i64 [ %34, %block_400733 ], [ %33, %block_400710 ]
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
define %struct.Memory* @sub_4005e8__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4005e8:
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
  store i8 %19, i8* %8, align 1, !tbaa !2447
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !2448
  store i8 0, i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %7, align 1, !tbaa !2450
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2428
  br i1 %18, label %block_4005fa, label %block_4005f8

block_4005f8:                                     ; preds = %block_4005e8
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_4005fa

block_4005fa:                                     ; preds = %block_4005f8, %block_4005e8
  %27 = phi i64 [ %22, %block_4005e8 ], [ %.pre1, %block_4005f8 ]
  %28 = phi i64 [ %4, %block_4005e8 ], [ %.pre, %block_4005f8 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005e8 ], [ %26, %block_4005f8 ]
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
define %struct.Memory* @sub_400790_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400790:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %5 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
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
  %15 = load i64, i64* %RBX, align 8
  %16 = add i64 %14, 4
  store i64 %16, i64* %PC, align 8
  %17 = add i64 %11, -16
  %18 = inttoptr i64 %17 to i64*
  store i64 %15, i64* %18, align 8
  %19 = load i64, i64* %PC, align 8
  %20 = add i64 %11, -264
  store i64 %20, i64* %RSP, align 8, !tbaa !2428
  %21 = icmp ult i64 %17, 248
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %22, i8* %23, align 1, !tbaa !2432
  %24 = trunc i64 %20 to i32
  %25 = and i32 %24, 255
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25) #9
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1, !tbaa !2446
  %31 = xor i64 %17, 16
  %32 = xor i64 %31, %20
  %33 = lshr i64 %32, 4
  %34 = trunc i64 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1, !tbaa !2450
  %37 = icmp eq i64 %20, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1, !tbaa !2447
  %40 = lshr i64 %20, 63
  %41 = trunc i64 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1, !tbaa !2448
  %43 = lshr i64 %17, 63
  %44 = xor i64 %40, %43
  %45 = add nuw nsw i64 %44, %43
  %46 = icmp eq i64 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1, !tbaa !2449
  %49 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 8) to i64*), align 8
  %50 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %49, i64* %50, align 1, !tbaa !2451
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %52 = bitcast i64* %51 to double*
  store double 0.000000e+00, double* %52, align 1, !tbaa !2451
  %53 = load i64, i64* %RBP, align 8
  %54 = add i64 %53, -12
  %55 = add i64 %19, 22
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %54 to i32*
  store i32 0, i32* %56, align 4
  %57 = load i64, i64* %RBP, align 8
  %58 = add i64 %57, -16
  %59 = load i32, i32* %EDI, align 4
  %60 = load i64, i64* %PC, align 8
  %61 = add i64 %60, 3
  store i64 %61, i64* %PC, align 8
  %62 = inttoptr i64 %58 to i32*
  store i32 %59, i32* %62, align 4
  %63 = load i64, i64* %RBP, align 8
  %64 = add i64 %63, -24
  %65 = load i64, i64* %RSI, align 8
  %66 = load i64, i64* %PC, align 8
  %67 = add i64 %66, 4
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %64 to i64*
  store i64 %65, i64* %68, align 8
  %69 = load i64, i64* %RBP, align 8
  %70 = add i64 %69, -44
  %71 = load i64, i64* %PC, align 8
  %72 = add i64 %71, 7
  store i64 %72, i64* %PC, align 8
  %73 = inttoptr i64 %70 to i32*
  store i32 10, i32* %73, align 4
  %74 = load i64, i64* %PC, align 8
  store i32 10, i32* bitcast (%reg_len_type* @reg_len to i32*), align 8
  %75 = load i64, i64* %RBP, align 8
  %76 = add i64 %75, -64
  %77 = add i64 %74, 16
  store i64 %77, i64* %PC, align 8
  %78 = bitcast [32 x %union.VectorReg]* %6 to double*
  %79 = load i64, i64* %50, align 1
  %80 = inttoptr i64 %76 to i64*
  store i64 %79, i64* %80, align 8
  %81 = load i64, i64* %RBP, align 8
  %82 = add i64 %81, -48
  %83 = load i64, i64* %PC, align 8
  %84 = add i64 %83, 7
  store i64 %84, i64* %PC, align 8
  %85 = inttoptr i64 %82 to i32*
  store i32 100000, i32* %85, align 4
  %86 = load i64, i64* %RBP, align 8
  %87 = add i64 %86, -16
  %88 = load i64, i64* %PC, align 8
  %89 = add i64 %88, 4
  store i64 %89, i64* %PC, align 8
  %90 = inttoptr i64 %87 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = add i32 %91, -6
  %93 = icmp ult i32 %91, 6
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %23, align 1, !tbaa !2432
  %95 = and i32 %92, 255
  %96 = tail call i32 @llvm.ctpop.i32(i32 %95) #9
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = xor i8 %98, 1
  store i8 %99, i8* %30, align 1, !tbaa !2446
  %100 = xor i32 %92, %91
  %101 = lshr i32 %100, 4
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  store i8 %103, i8* %36, align 1, !tbaa !2450
  %104 = icmp eq i32 %92, 0
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %39, align 1, !tbaa !2447
  %106 = lshr i32 %92, 31
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %42, align 1, !tbaa !2448
  %108 = lshr i32 %91, 31
  %109 = xor i32 %106, %108
  %110 = add nuw nsw i32 %109, %108
  %111 = icmp eq i32 %110, 2
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %48, align 1, !tbaa !2449
  %113 = icmp ne i8 %107, 0
  %114 = xor i1 %113, %111
  %115 = or i1 %104, %114
  %.v = select i1 %115, i64 42, i64 10
  %116 = add i64 %88, %.v
  store i64 %116, i64* %PC, align 8, !tbaa !2428
  br i1 %115, label %block_4007fa, label %block_4007da

block_400a7e:                                     ; preds = %block_400a72
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %117 = add i64 %207, -40
  store i64 %117, i64* %RSI, align 8, !tbaa !2428
  %118 = add i64 %207, -176
  store i64 %118, i64* %RDX, align 8, !tbaa !2428
  %119 = add i64 %207, -64
  %120 = add i64 %243, 21
  store i64 %120, i64* %PC, align 8
  %121 = inttoptr i64 %119 to i64*
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %50, align 1, !tbaa !2451
  store double 0.000000e+00, double* %52, align 1, !tbaa !2451
  %123 = add i64 %243, 418
  %124 = add i64 %243, 26
  %125 = load i64, i64* %RSP, align 8, !tbaa !2428
  %126 = add i64 %125, -8
  %127 = inttoptr i64 %126 to i64*
  store i64 %124, i64* %127, align 8
  store i64 %126, i64* %RSP, align 8, !tbaa !2428
  store i64 %123, i64* %PC, align 8, !tbaa !2428
  %128 = tail call %struct.Memory* @sub_400c20_simulate(%struct.State* nonnull %0, i64 %123, %struct.Memory* %MEMORY.0)
  %129 = load i64, i64* %RAX, align 8
  %130 = load i64, i64* %RBP, align 8
  %131 = add i64 %130, -52
  %132 = load i64, i64* %PC, align 8
  %133 = add i64 %132, 3
  store i64 %133, i64* %PC, align 8
  %134 = trunc i64 %129 to i32
  %135 = inttoptr i64 %131 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = add i32 %136, %134
  %138 = zext i32 %137 to i64
  store i64 %138, i64* %RAX, align 8, !tbaa !2428
  %139 = icmp ult i32 %137, %134
  %140 = icmp ult i32 %137, %136
  %141 = or i1 %139, %140
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %23, align 1, !tbaa !2432
  %143 = and i32 %137, 255
  %144 = tail call i32 @llvm.ctpop.i32(i32 %143) #9
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  %147 = xor i8 %146, 1
  store i8 %147, i8* %30, align 1, !tbaa !2446
  %148 = xor i32 %136, %134
  %149 = xor i32 %148, %137
  %150 = lshr i32 %149, 4
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  store i8 %152, i8* %36, align 1, !tbaa !2450
  %153 = icmp eq i32 %137, 0
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %39, align 1, !tbaa !2447
  %155 = lshr i32 %137, 31
  %156 = trunc i32 %155 to i8
  store i8 %156, i8* %42, align 1, !tbaa !2448
  %157 = lshr i32 %134, 31
  %158 = lshr i32 %136, 31
  %159 = xor i32 %155, %157
  %160 = xor i32 %155, %158
  %161 = add nuw nsw i32 %159, %160
  %162 = icmp eq i32 %161, 2
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %48, align 1, !tbaa !2449
  %164 = add i64 %132, 6
  store i64 %164, i64* %PC, align 8
  store i32 %137, i32* %135, align 4
  %165 = load i64, i64* %RBP, align 8
  %166 = add i64 %165, -56
  %167 = load i64, i64* %PC, align 8
  %168 = add i64 %167, 3
  store i64 %168, i64* %PC, align 8
  %169 = inttoptr i64 %166 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = add i32 %170, 1
  %172 = zext i32 %171 to i64
  store i64 %172, i64* %RAX, align 8, !tbaa !2428
  %173 = icmp eq i32 %170, -1
  %174 = icmp eq i32 %171, 0
  %175 = or i1 %173, %174
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %23, align 1, !tbaa !2432
  %177 = and i32 %171, 255
  %178 = tail call i32 @llvm.ctpop.i32(i32 %177) #9
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  %181 = xor i8 %180, 1
  store i8 %181, i8* %30, align 1, !tbaa !2446
  %182 = xor i32 %171, %170
  %183 = lshr i32 %182, 4
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  store i8 %185, i8* %36, align 1, !tbaa !2450
  %186 = zext i1 %174 to i8
  store i8 %186, i8* %39, align 1, !tbaa !2447
  %187 = lshr i32 %171, 31
  %188 = trunc i32 %187 to i8
  store i8 %188, i8* %42, align 1, !tbaa !2448
  %189 = lshr i32 %170, 31
  %190 = xor i32 %187, %189
  %191 = add nuw nsw i32 %190, %187
  %192 = icmp eq i32 %191, 2
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %48, align 1, !tbaa !2449
  %194 = add i64 %167, 9
  store i64 %194, i64* %PC, align 8
  store i32 %171, i32* %169, align 4
  %195 = load i64, i64* %PC, align 8
  %196 = add i64 %195, -53
  store i64 %196, i64* %PC, align 8, !tbaa !2428
  br label %block_400a72

block_4007fa:                                     ; preds = %block_400790
  %197 = add i64 %86, -56
  %198 = add i64 %116, 7
  store i64 %198, i64* %PC, align 8
  %199 = inttoptr i64 %197 to i32*
  store i32 1, i32* %199, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400801

block_400877:                                     ; preds = %block_400842
  %200 = add i64 %857, -182
  %201 = add i64 %886, 9
  store i64 %201, i64* %PC, align 8
  %202 = inttoptr i64 %200 to i16*
  store i16 1, i16* %202, align 2
  %.pre22 = load i64, i64* %PC, align 8
  br label %block_400880

block_4009f5:                                     ; preds = %block_4009c8
  %203 = add i64 %309, -56
  %204 = add i64 %324, 7
  store i64 %204, i64* %PC, align 8
  %205 = inttoptr i64 %203 to i32*
  store i32 0, i32* %205, align 4
  %.pre31 = load i64, i64* %PC, align 8
  br label %block_4009fc

block_400a72:                                     ; preds = %block_400a42, %block_400a7e
  %206 = phi i64 [ %.pre32, %block_400a42 ], [ %196, %block_400a7e ]
  %MEMORY.0 = phi %struct.Memory* [ %664, %block_400a42 ], [ %128, %block_400a7e ]
  %207 = load i64, i64* %RBP, align 8
  %208 = add i64 %207, -56
  %209 = add i64 %206, 3
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %208 to i32*
  %211 = load i32, i32* %210, align 4
  %212 = zext i32 %211 to i64
  store i64 %212, i64* %RAX, align 8, !tbaa !2428
  %213 = add i64 %207, -48
  %214 = add i64 %206, 6
  store i64 %214, i64* %PC, align 8
  %215 = inttoptr i64 %213 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = sub i32 %211, %216
  %218 = icmp ult i32 %211, %216
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %23, align 1, !tbaa !2432
  %220 = and i32 %217, 255
  %221 = tail call i32 @llvm.ctpop.i32(i32 %220) #9
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  %224 = xor i8 %223, 1
  store i8 %224, i8* %30, align 1, !tbaa !2446
  %225 = xor i32 %216, %211
  %226 = xor i32 %225, %217
  %227 = lshr i32 %226, 4
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  store i8 %229, i8* %36, align 1, !tbaa !2450
  %230 = icmp eq i32 %217, 0
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %39, align 1, !tbaa !2447
  %232 = lshr i32 %217, 31
  %233 = trunc i32 %232 to i8
  store i8 %233, i8* %42, align 1, !tbaa !2448
  %234 = lshr i32 %211, 31
  %235 = lshr i32 %216, 31
  %236 = xor i32 %235, %234
  %237 = xor i32 %232, %234
  %238 = add nuw nsw i32 %237, %236
  %239 = icmp eq i32 %238, 2
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %48, align 1, !tbaa !2449
  %241 = icmp ne i8 %233, 0
  %242 = xor i1 %241, %239
  %.v43 = select i1 %242, i64 12, i64 58
  %243 = add i64 %206, %.v43
  store i64 %243, i64* %PC, align 8, !tbaa !2428
  br i1 %242, label %block_400a7e, label %block_400ab1.loopexit

block_400957:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %244 = bitcast [32 x %union.VectorReg]* %6 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %244, align 1, !tbaa !2454
  %245 = load i64, i64* %RBP, align 8
  %246 = add i64 %245, -64
  %247 = add i64 %419, 8
  store i64 %247, i64* %PC, align 8
  %248 = load double, double* %78, align 1
  %249 = inttoptr i64 %246 to double*
  %250 = load double, double* %249, align 8
  %251 = fcmp uno double %248, %250
  br i1 %251, label %252, label %262

; <label>:252:                                    ; preds = %block_400957
  %253 = fadd double %248, %250
  %254 = bitcast double %253 to i64
  %255 = and i64 %254, 9221120237041090560
  %256 = icmp eq i64 %255, 9218868437227405312
  %257 = and i64 %254, 2251799813685247
  %258 = icmp ne i64 %257, 0
  %259 = and i1 %256, %258
  br i1 %259, label %260, label %268

; <label>:260:                                    ; preds = %252
  %261 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %247, %struct.Memory* %416) #12
  %.pre28 = load i64, i64* %PC, align 8
  %.pre29 = load i8, i8* %23, align 1, !tbaa !2432
  %.pre30 = load i8, i8* %39, align 1, !tbaa !2447
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:262:                                    ; preds = %block_400957
  %263 = fcmp ogt double %248, %250
  br i1 %263, label %268, label %264

; <label>:264:                                    ; preds = %262
  %265 = fcmp olt double %248, %250
  br i1 %265, label %268, label %266

; <label>:266:                                    ; preds = %264
  %267 = fcmp oeq double %248, %250
  br i1 %267, label %268, label %272

; <label>:268:                                    ; preds = %266, %264, %262, %252
  %269 = phi i8 [ 0, %262 ], [ 0, %264 ], [ 1, %266 ], [ 1, %252 ]
  %270 = phi i8 [ 0, %262 ], [ 0, %264 ], [ 0, %266 ], [ 1, %252 ]
  %271 = phi i8 [ 0, %262 ], [ 1, %264 ], [ 0, %266 ], [ 1, %252 ]
  store i8 %269, i8* %39, align 1, !tbaa !2453
  store i8 %270, i8* %30, align 1, !tbaa !2453
  store i8 %271, i8* %23, align 1, !tbaa !2453
  br label %272

; <label>:272:                                    ; preds = %268, %266
  %273 = phi i8 [ %269, %268 ], [ %413, %266 ]
  %274 = phi i8 [ %271, %268 ], [ %414, %266 ]
  store i8 0, i8* %48, align 1, !tbaa !2453
  store i8 0, i8* %42, align 1, !tbaa !2453
  store i8 0, i8* %36, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %272, %260
  %275 = phi i8 [ %.pre30, %260 ], [ %273, %272 ]
  %276 = phi i8 [ %.pre29, %260 ], [ %274, %272 ]
  %277 = phi i64 [ %.pre28, %260 ], [ %247, %272 ]
  %278 = phi %struct.Memory* [ %261, %260 ], [ %416, %272 ]
  %279 = or i8 %275, %276
  %280 = icmp ne i8 %279, 0
  %.v39 = select i1 %280, i64 41, i64 6
  %281 = add i64 %277, %.v39
  store i64 %281, i64* %PC, align 8, !tbaa !2428
  br i1 %280, label %block_400988, label %block_400965

block_4009c8:                                     ; preds = %block_400988
  %282 = load i64, i64* %RBP, align 8
  %283 = add i64 %282, -182
  store i64 %283, i64* %RDI, align 8, !tbaa !2428
  %284 = add i64 %631, -872
  %285 = add i64 %631, 12
  %286 = load i64, i64* %RSP, align 8, !tbaa !2428
  %287 = add i64 %286, -8
  %288 = inttoptr i64 %287 to i64*
  store i64 %285, i64* %288, align 8
  store i64 %287, i64* %RSP, align 8, !tbaa !2428
  store i64 %284, i64* %PC, align 8, !tbaa !2428
  %289 = tail call fastcc %struct.Memory* @ext_400660_seed48(%struct.State* nonnull %0, %struct.Memory* %601)
  %290 = load i64, i64* %RBP, align 8
  %291 = add i64 %290, -40
  %292 = load i64, i64* %PC, align 8
  store i64 %291, i64* %RDI, align 8, !tbaa !2428
  %293 = add i64 %290, -224
  %294 = load i64, i64* %RAX, align 8
  %295 = add i64 %292, 11
  store i64 %295, i64* %PC, align 8
  %296 = inttoptr i64 %293 to i64*
  store i64 %294, i64* %296, align 8
  %297 = load i64, i64* %PC, align 8
  %298 = add i64 %297, 353
  %299 = add i64 %297, 5
  %300 = load i64, i64* %RSP, align 8, !tbaa !2428
  %301 = add i64 %300, -8
  %302 = inttoptr i64 %301 to i64*
  store i64 %299, i64* %302, align 8
  store i64 %301, i64* %RSP, align 8, !tbaa !2428
  store i64 %298, i64* %PC, align 8, !tbaa !2428
  %303 = tail call %struct.Memory* @sub_400b40_create_link_list(%struct.State* nonnull %0, i64 %298, %struct.Memory* %289)
  %304 = load i64, i64* %RBP, align 8
  %305 = add i64 %304, -52
  %306 = load i64, i64* %PC, align 8
  %307 = add i64 %306, 7
  store i64 %307, i64* %PC, align 8
  %308 = inttoptr i64 %305 to i32*
  store i32 0, i32* %308, align 4
  %309 = load i64, i64* %RBP, align 8
  %310 = add i64 %309, -44
  %311 = load i64, i64* %PC, align 8
  %312 = add i64 %311, 4
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %310 to i32*
  %314 = load i32, i32* %313, align 4
  store i8 0, i8* %23, align 1, !tbaa !2432
  %315 = and i32 %314, 255
  %316 = tail call i32 @llvm.ctpop.i32(i32 %315) #9
  %317 = trunc i32 %316 to i8
  %318 = and i8 %317, 1
  %319 = xor i8 %318, 1
  store i8 %319, i8* %30, align 1, !tbaa !2446
  store i8 0, i8* %36, align 1, !tbaa !2450
  %320 = icmp eq i32 %314, 0
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %39, align 1, !tbaa !2447
  %322 = lshr i32 %314, 31
  %323 = trunc i32 %322 to i8
  store i8 %323, i8* %42, align 1, !tbaa !2448
  store i8 0, i8* %48, align 1, !tbaa !2449
  %.v41 = select i1 %320, i64 87, i64 10
  %324 = add i64 %311, %.v41
  store i64 %324, i64* %PC, align 8, !tbaa !2428
  br i1 %320, label %block_400a42, label %block_4009f5

block_4008c5:                                     ; preds = %block_4008bc, %block_40088a
  %325 = phi i64 [ %.pre23, %block_4008bc ], [ %502, %block_40088a ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.9, %block_4008bc ], [ %494, %block_40088a ]
  %326 = load i64, i64* %RBP, align 8
  %327 = add i64 %326, -16
  %328 = add i64 %325, 4
  store i64 %328, i64* %PC, align 8
  %329 = inttoptr i64 %327 to i32*
  %330 = load i32, i32* %329, align 4
  %331 = add i32 %330, -9
  %332 = icmp ult i32 %330, 9
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %23, align 1, !tbaa !2432
  %334 = and i32 %331, 255
  %335 = tail call i32 @llvm.ctpop.i32(i32 %334) #9
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  %338 = xor i8 %337, 1
  store i8 %338, i8* %30, align 1, !tbaa !2446
  %339 = xor i32 %331, %330
  %340 = lshr i32 %339, 4
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  store i8 %342, i8* %36, align 1, !tbaa !2450
  %343 = icmp eq i32 %331, 0
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %39, align 1, !tbaa !2447
  %345 = lshr i32 %331, 31
  %346 = trunc i32 %345 to i8
  store i8 %346, i8* %42, align 1, !tbaa !2448
  %347 = lshr i32 %330, 31
  %348 = xor i32 %345, %347
  %349 = add nuw nsw i32 %348, %347
  %350 = icmp eq i32 %349, 2
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %48, align 1, !tbaa !2449
  %352 = icmp ne i8 %346, 0
  %353 = xor i1 %352, %350
  %354 = or i1 %343, %353
  %.v36 = select i1 %354, i64 60, i64 10
  %355 = add i64 %325, %.v36
  store i64 %355, i64* %PC, align 8, !tbaa !2428
  br i1 %354, label %block_400901, label %block_4008cf

block_400965:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %356 = phi i64 [ %419, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ], [ %281, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit ]
  %MEMORY.2 = phi %struct.Memory* [ %416, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ], [ %278, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit ]
  store i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 74), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %357 = add i64 %356, -805
  %358 = add i64 %356, 17
  %359 = load i64, i64* %RSP, align 8, !tbaa !2428
  %360 = add i64 %359, -8
  %361 = inttoptr i64 %360 to i64*
  store i64 %358, i64* %361, align 8
  store i64 %360, i64* %RSP, align 8, !tbaa !2428
  store i64 %357, i64* %PC, align 8, !tbaa !2428
  %362 = tail call fastcc %struct.Memory* @ext_602090_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %363 = load i64, i64* %RBP, align 8
  %364 = add i64 %363, -12
  %365 = load i64, i64* %PC, align 8
  %366 = add i64 %365, 7
  store i64 %366, i64* %PC, align 8
  %367 = inttoptr i64 %364 to i32*
  store i32 3, i32* %367, align 4
  %368 = load i64, i64* %RBP, align 8
  %369 = add i64 %368, -212
  %370 = load i32, i32* %EAX, align 4
  %371 = load i64, i64* %PC, align 8
  %372 = add i64 %371, 6
  store i64 %372, i64* %PC, align 8
  %373 = inttoptr i64 %369 to i32*
  store i32 %370, i32* %373, align 4
  %374 = load i64, i64* %PC, align 8
  %375 = add i64 %374, 432
  store i64 %375, i64* %PC, align 8, !tbaa !2428
  br label %block_400b33

block_400940:                                     ; preds = %block_40090a
  %376 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 16) to i64*), align 16
  store i64 %376, i64* %50, align 1, !tbaa !2451
  store double 0.000000e+00, double* %52, align 1, !tbaa !2451
  %377 = load i64, i64* %RBP, align 8
  %378 = add i64 %377, -64
  %379 = add i64 %913, 13
  store i64 %379, i64* %PC, align 8
  %380 = inttoptr i64 %378 to i64*
  %381 = load i64, i64* %380, align 8
  %382 = bitcast %union.VectorReg* %7 to double*
  %383 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %381, i64* %383, align 1, !tbaa !2451
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %385 = bitcast i64* %384 to double*
  store double 0.000000e+00, double* %385, align 1, !tbaa !2451
  %386 = add i64 %913, 17
  store i64 %386, i64* %PC, align 8
  %387 = bitcast i64 %381 to double
  %388 = bitcast i64 %376 to double
  %389 = fcmp uno double %387, %388
  br i1 %389, label %390, label %400

; <label>:390:                                    ; preds = %block_400940
  %391 = fadd double %387, %388
  %392 = bitcast double %391 to i64
  %393 = and i64 %392, 9221120237041090560
  %394 = icmp eq i64 %393, 9218868437227405312
  %395 = and i64 %392, 2251799813685247
  %396 = icmp ne i64 %395, 0
  %397 = and i1 %394, %396
  br i1 %397, label %398, label %406

; <label>:398:                                    ; preds = %390
  %399 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %386, %struct.Memory* %MEMORY.7) #12
  %.pre25 = load i64, i64* %PC, align 8
  %.pre26 = load i8, i8* %23, align 1, !tbaa !2432
  %.pre27 = load i8, i8* %39, align 1, !tbaa !2447
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:400:                                    ; preds = %block_400940
  %401 = fcmp ogt double %387, %388
  br i1 %401, label %406, label %402

; <label>:402:                                    ; preds = %400
  %403 = fcmp olt double %387, %388
  br i1 %403, label %406, label %404

; <label>:404:                                    ; preds = %402
  %405 = fcmp oeq double %387, %388
  br i1 %405, label %406, label %410

; <label>:406:                                    ; preds = %404, %402, %400, %390
  %407 = phi i8 [ 0, %400 ], [ 0, %402 ], [ 1, %404 ], [ 1, %390 ]
  %408 = phi i8 [ 0, %400 ], [ 0, %402 ], [ 0, %404 ], [ 1, %390 ]
  %409 = phi i8 [ 0, %400 ], [ 1, %402 ], [ 0, %404 ], [ 1, %390 ]
  store i8 %407, i8* %39, align 1, !tbaa !2453
  store i8 %408, i8* %30, align 1, !tbaa !2453
  store i8 %409, i8* %23, align 1, !tbaa !2453
  br label %410

; <label>:410:                                    ; preds = %406, %404
  %411 = phi i8 [ %407, %406 ], [ %902, %404 ]
  %412 = phi i8 [ %409, %406 ], [ %891, %404 ]
  store i8 0, i8* %48, align 1, !tbaa !2453
  store i8 0, i8* %42, align 1, !tbaa !2453
  store i8 0, i8* %36, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %410, %398
  %413 = phi i8 [ %.pre27, %398 ], [ %411, %410 ]
  %414 = phi i8 [ %.pre26, %398 ], [ %412, %410 ]
  %415 = phi i64 [ %.pre25, %398 ], [ %386, %410 ]
  %416 = phi %struct.Memory* [ %399, %398 ], [ %MEMORY.7, %410 ]
  %417 = or i8 %413, %414
  %418 = icmp eq i8 %417, 0
  %.v38 = select i1 %418, i64 20, i64 6
  %419 = add i64 %415, %.v38
  store i64 %419, i64* %PC, align 8, !tbaa !2428
  br i1 %418, label %block_400965, label %block_400957

block_4009fc:                                     ; preds = %block_400a08, %block_4009f5
  %420 = phi i64 [ %.pre31, %block_4009f5 ], [ %1030, %block_400a08 ]
  %MEMORY.3 = phi %struct.Memory* [ %303, %block_4009f5 ], [ %962, %block_400a08 ]
  %421 = load i64, i64* %RBP, align 8
  %422 = add i64 %421, -56
  %423 = add i64 %420, 3
  store i64 %423, i64* %PC, align 8
  %424 = inttoptr i64 %422 to i32*
  %425 = load i32, i32* %424, align 4
  %426 = zext i32 %425 to i64
  store i64 %426, i64* %RAX, align 8, !tbaa !2428
  %427 = add i64 %421, -48
  %428 = add i64 %420, 6
  store i64 %428, i64* %PC, align 8
  %429 = inttoptr i64 %427 to i32*
  %430 = load i32, i32* %429, align 4
  %431 = sub i32 %425, %430
  %432 = icmp ult i32 %425, %430
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %23, align 1, !tbaa !2432
  %434 = and i32 %431, 255
  %435 = tail call i32 @llvm.ctpop.i32(i32 %434) #9
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  %438 = xor i8 %437, 1
  store i8 %438, i8* %30, align 1, !tbaa !2446
  %439 = xor i32 %430, %425
  %440 = xor i32 %439, %431
  %441 = lshr i32 %440, 4
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  store i8 %443, i8* %36, align 1, !tbaa !2450
  %444 = icmp eq i32 %431, 0
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %39, align 1, !tbaa !2447
  %446 = lshr i32 %431, 31
  %447 = trunc i32 %446 to i8
  store i8 %447, i8* %42, align 1, !tbaa !2448
  %448 = lshr i32 %425, 31
  %449 = lshr i32 %430, 31
  %450 = xor i32 %449, %448
  %451 = xor i32 %446, %448
  %452 = add nuw nsw i32 %451, %450
  %453 = icmp eq i32 %452, 2
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %48, align 1, !tbaa !2449
  %455 = icmp ne i8 %447, 0
  %456 = xor i1 %455, %453
  %.v42 = select i1 %456, i64 12, i64 65
  %457 = add i64 %420, %.v42
  store i64 %457, i64* %PC, align 8, !tbaa !2428
  br i1 %456, label %block_400a08, label %block_400a3d

block_40088a:                                     ; preds = %block_400880
  store i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 40), i64* %RSI, align 8, !tbaa !2428
  %458 = add i64 %1109, -182
  store i64 %458, i64* %RAX, align 8, !tbaa !2428
  %459 = add i64 %1109, -24
  %460 = add i64 %1138, 21
  store i64 %460, i64* %PC, align 8
  %461 = inttoptr i64 %459 to i64*
  %462 = load i64, i64* %461, align 8
  store i64 %462, i64* %RCX, align 8, !tbaa !2428
  %463 = add i64 %462, 64
  %464 = add i64 %1138, 25
  store i64 %464, i64* %PC, align 8
  %465 = inttoptr i64 %463 to i64*
  %466 = load i64, i64* %465, align 8
  store i64 %466, i64* %RDI, align 8, !tbaa !2428
  %467 = add i64 %1109, -180
  store i64 %467, i64* %RAX, align 8, !tbaa !2428
  %468 = icmp ugt i64 %458, -3
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %23, align 1, !tbaa !2432
  %470 = trunc i64 %467 to i32
  %471 = and i32 %470, 255
  %472 = tail call i32 @llvm.ctpop.i32(i32 %471) #9
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  store i8 %475, i8* %30, align 1, !tbaa !2446
  %476 = xor i64 %467, %458
  %477 = lshr i64 %476, 4
  %478 = trunc i64 %477 to i8
  %479 = and i8 %478, 1
  store i8 %479, i8* %36, align 1, !tbaa !2450
  %480 = icmp eq i64 %467, 0
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %39, align 1, !tbaa !2447
  %482 = lshr i64 %467, 63
  %483 = trunc i64 %482 to i8
  store i8 %483, i8* %42, align 1, !tbaa !2448
  %484 = lshr i64 %458, 63
  %485 = xor i64 %482, %484
  %486 = add nuw nsw i64 %485, %482
  %487 = icmp eq i64 %486, 2
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %48, align 1, !tbaa !2449
  store i64 %467, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %489 = add i64 %1138, -522
  %490 = add i64 %1138, 39
  %491 = load i64, i64* %RSP, align 8, !tbaa !2428
  %492 = add i64 %491, -8
  %493 = inttoptr i64 %492 to i64*
  store i64 %490, i64* %493, align 8
  store i64 %492, i64* %RSP, align 8, !tbaa !2428
  store i64 %489, i64* %PC, align 8, !tbaa !2428
  %494 = tail call fastcc %struct.Memory* @ext_400680___isoc99_sscanf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.9)
  %495 = load i64, i64* %RBP, align 8
  %496 = add i64 %495, -200
  %497 = load i32, i32* %EAX, align 4
  %498 = load i64, i64* %PC, align 8
  %499 = add i64 %498, 6
  store i64 %499, i64* %PC, align 8
  %500 = inttoptr i64 %496 to i32*
  store i32 %497, i32* %500, align 4
  %501 = load i64, i64* %PC, align 8
  %502 = add i64 %501, 14
  store i64 %502, i64* %PC, align 8, !tbaa !2428
  br label %block_4008c5

block_4008bc:                                     ; preds = %block_400880
  %503 = add i64 %1109, -180
  %504 = add i64 %1138, 9
  store i64 %504, i64* %PC, align 8
  %505 = inttoptr i64 %503 to i16*
  store i16 0, i16* %505, align 2
  %.pre23 = load i64, i64* %PC, align 8
  br label %block_4008c5

block_400b33:                                     ; preds = %block_400918, %block_4009a5, %block_400ab1, %block_400965
  %506 = phi i64 [ %375, %block_400965 ], [ %.pre33, %block_400ab1 ], [ %813, %block_4009a5 ], [ %832, %block_400918 ]
  %MEMORY.4 = phi %struct.Memory* [ %362, %block_400965 ], [ %783, %block_400ab1 ], [ %800, %block_4009a5 ], [ %819, %block_400918 ]
  %507 = load i64, i64* %RBP, align 8
  %508 = add i64 %507, -12
  %509 = add i64 %506, 3
  store i64 %509, i64* %PC, align 8
  %510 = inttoptr i64 %508 to i32*
  %511 = load i32, i32* %510, align 4
  %512 = zext i32 %511 to i64
  store i64 %512, i64* %RAX, align 8, !tbaa !2428
  %513 = load i64, i64* %RSP, align 8
  %514 = add i64 %513, 248
  store i64 %514, i64* %RSP, align 8, !tbaa !2428
  %515 = icmp ugt i64 %513, -249
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %23, align 1, !tbaa !2432
  %517 = trunc i64 %514 to i32
  %518 = and i32 %517, 255
  %519 = tail call i32 @llvm.ctpop.i32(i32 %518) #9
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  %522 = xor i8 %521, 1
  store i8 %522, i8* %30, align 1, !tbaa !2446
  %523 = xor i64 %513, 16
  %524 = xor i64 %523, %514
  %525 = lshr i64 %524, 4
  %526 = trunc i64 %525 to i8
  %527 = and i8 %526, 1
  store i8 %527, i8* %36, align 1, !tbaa !2450
  %528 = icmp eq i64 %514, 0
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %39, align 1, !tbaa !2447
  %530 = lshr i64 %514, 63
  %531 = trunc i64 %530 to i8
  store i8 %531, i8* %42, align 1, !tbaa !2448
  %532 = lshr i64 %513, 63
  %533 = xor i64 %530, %532
  %534 = add nuw nsw i64 %533, %530
  %535 = icmp eq i64 %534, 2
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %48, align 1, !tbaa !2449
  %537 = add i64 %506, 11
  store i64 %537, i64* %PC, align 8
  %538 = add i64 %513, 256
  %539 = inttoptr i64 %514 to i64*
  %540 = load i64, i64* %539, align 8
  store i64 %540, i64* %RBX, align 8, !tbaa !2428
  store i64 %538, i64* %RSP, align 8, !tbaa !2428
  %541 = add i64 %506, 12
  store i64 %541, i64* %PC, align 8
  %542 = add i64 %513, 264
  %543 = inttoptr i64 %538 to i64*
  %544 = load i64, i64* %543, align 8
  store i64 %544, i64* %RBP, align 8, !tbaa !2428
  store i64 %542, i64* %RSP, align 8, !tbaa !2428
  %545 = add i64 %506, 13
  store i64 %545, i64* %PC, align 8
  %546 = inttoptr i64 %542 to i64*
  %547 = load i64, i64* %546, align 8
  store i64 %547, i64* %PC, align 8, !tbaa !2428
  %548 = add i64 %513, 272
  store i64 %548, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.4

block_4008cf:                                     ; preds = %block_4008c5
  store i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 40), i64* %RSI, align 8, !tbaa !2428
  %549 = add i64 %326, -182
  store i64 %549, i64* %RAX, align 8, !tbaa !2428
  %550 = add i64 %326, -24
  %551 = add i64 %355, 21
  store i64 %551, i64* %PC, align 8
  %552 = inttoptr i64 %550 to i64*
  %553 = load i64, i64* %552, align 8
  store i64 %553, i64* %RCX, align 8, !tbaa !2428
  %554 = add i64 %553, 72
  %555 = add i64 %355, 25
  store i64 %555, i64* %PC, align 8
  %556 = inttoptr i64 %554 to i64*
  %557 = load i64, i64* %556, align 8
  store i64 %557, i64* %RDI, align 8, !tbaa !2428
  %558 = add i64 %326, -178
  store i64 %558, i64* %RAX, align 8, !tbaa !2428
  %559 = icmp ugt i64 %549, -5
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %23, align 1, !tbaa !2432
  %561 = trunc i64 %558 to i32
  %562 = and i32 %561, 255
  %563 = tail call i32 @llvm.ctpop.i32(i32 %562) #9
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  %566 = xor i8 %565, 1
  store i8 %566, i8* %30, align 1, !tbaa !2446
  %567 = xor i64 %558, %549
  %568 = lshr i64 %567, 4
  %569 = trunc i64 %568 to i8
  %570 = and i8 %569, 1
  store i8 %570, i8* %36, align 1, !tbaa !2450
  %571 = icmp eq i64 %558, 0
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %39, align 1, !tbaa !2447
  %573 = lshr i64 %558, 63
  %574 = trunc i64 %573 to i8
  store i8 %574, i8* %42, align 1, !tbaa !2448
  %575 = lshr i64 %549, 63
  %576 = xor i64 %573, %575
  %577 = add nuw nsw i64 %576, %573
  %578 = icmp eq i64 %577, 2
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %48, align 1, !tbaa !2449
  store i64 %558, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %580 = add i64 %355, -591
  %581 = add i64 %355, 39
  %582 = load i64, i64* %RSP, align 8, !tbaa !2428
  %583 = add i64 %582, -8
  %584 = inttoptr i64 %583 to i64*
  store i64 %581, i64* %584, align 8
  store i64 %583, i64* %RSP, align 8, !tbaa !2428
  store i64 %580, i64* %PC, align 8, !tbaa !2428
  %585 = tail call fastcc %struct.Memory* @ext_400680___isoc99_sscanf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %586 = load i64, i64* %RBP, align 8
  %587 = add i64 %586, -204
  %588 = load i32, i32* %EAX, align 4
  %589 = load i64, i64* %PC, align 8
  %590 = add i64 %589, 6
  store i64 %590, i64* %PC, align 8
  %591 = inttoptr i64 %587 to i32*
  store i32 %588, i32* %591, align 4
  %592 = load i64, i64* %PC, align 8
  %593 = add i64 %592, 14
  store i64 %593, i64* %PC, align 8, !tbaa !2428
  br label %block_40090a

block_400988:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %594 = load i64, i64* %RBP, align 8
  %595 = add i64 %594, -176
  store i64 %595, i64* %RDI, align 8, !tbaa !2428
  %596 = add i64 %281, -856
  %597 = add i64 %281, 12
  %598 = load i64, i64* %RSP, align 8, !tbaa !2428
  %599 = add i64 %598, -8
  %600 = inttoptr i64 %599 to i64*
  store i64 %597, i64* %600, align 8
  store i64 %599, i64* %RSP, align 8, !tbaa !2428
  store i64 %596, i64* %PC, align 8, !tbaa !2428
  %601 = tail call fastcc %struct.Memory* @ext_6020d8_strlen(%struct.State* nonnull %0, %struct.Memory* %278)
  %602 = load i64, i64* %PC, align 8
  %603 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*), align 8
  %604 = sext i32 %603 to i64
  store i64 %604, i64* %RDI, align 8, !tbaa !2428
  %605 = load i64, i64* %RAX, align 8
  %606 = sub i64 %605, %604
  %607 = icmp ult i64 %605, %604
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %23, align 1, !tbaa !2432
  %609 = trunc i64 %606 to i32
  %610 = and i32 %609, 255
  %611 = tail call i32 @llvm.ctpop.i32(i32 %610) #9
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  %614 = xor i8 %613, 1
  store i8 %614, i8* %30, align 1, !tbaa !2446
  %615 = xor i64 %605, %604
  %616 = xor i64 %615, %606
  %617 = lshr i64 %616, 4
  %618 = trunc i64 %617 to i8
  %619 = and i8 %618, 1
  store i8 %619, i8* %36, align 1, !tbaa !2450
  %620 = icmp eq i64 %606, 0
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %39, align 1, !tbaa !2447
  %622 = lshr i64 %606, 63
  %623 = trunc i64 %622 to i8
  store i8 %623, i8* %42, align 1, !tbaa !2448
  %624 = lshr i64 %605, 63
  %625 = lshr i64 %604, 63
  %626 = xor i64 %624, %625
  %627 = xor i64 %622, %624
  %628 = add nuw nsw i64 %627, %626
  %629 = icmp eq i64 %628, 2
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %48, align 1, !tbaa !2449
  %.v40 = select i1 %620, i64 52, i64 17
  %631 = add i64 %602, %.v40
  store i64 %631, i64* %PC, align 8, !tbaa !2428
  br i1 %620, label %block_4009c8, label %block_4009a5

block_400a3d:                                     ; preds = %block_4009fc
  %632 = add i64 %457, 116
  br label %block_400ab1

block_40082b:                                     ; preds = %block_400801
  %633 = add i64 %1035, -176
  %634 = add i64 %1068, 7
  store i64 %634, i64* %PC, align 8
  %635 = inttoptr i64 %633 to i8*
  store i8 49, i8* %635, align 1
  %636 = load i64, i64* %PC, align 8
  %637 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*), align 8
  %638 = sext i32 %637 to i64
  store i64 %638, i64* %RAX, align 8, !tbaa !2428
  %639 = load i64, i64* %RBP, align 8
  %640 = add nsw i64 %638, -176
  %641 = add i64 %640, %639
  %642 = add i64 %636, 16
  store i64 %642, i64* %PC, align 8
  %643 = inttoptr i64 %641 to i8*
  store i8 0, i8* %643, align 1
  %.pre21 = load i64, i64* %PC, align 8
  br label %block_400842

block_400a42:                                     ; preds = %block_4009c8
  %644 = add i64 %309, -40
  store i64 %644, i64* %RDI, align 8, !tbaa !2428
  %645 = add i64 %324, 414
  %646 = add i64 %324, 9
  %647 = load i64, i64* %RSP, align 8, !tbaa !2428
  %648 = add i64 %647, -8
  %649 = inttoptr i64 %648 to i64*
  store i64 %646, i64* %649, align 8
  store i64 %648, i64* %RSP, align 8, !tbaa !2428
  store i64 %645, i64* %PC, align 8, !tbaa !2428
  %650 = tail call %struct.Memory* @sub_400be0_init(%struct.State* nonnull %0, i64 %645, %struct.Memory* %303)
  %651 = load i64, i64* %PC, align 8
  store i64 10000, i64* %RDI, align 8, !tbaa !2428
  %652 = load i64, i64* %RBP, align 8
  %653 = add i64 %652, -40
  store i64 %653, i64* %RSI, align 8, !tbaa !2428
  %654 = add i64 %652, -176
  store i64 %654, i64* %RDX, align 8, !tbaa !2428
  %655 = add i64 %652, -64
  %656 = add i64 %651, 21
  store i64 %656, i64* %PC, align 8
  %657 = inttoptr i64 %655 to i64*
  %658 = load i64, i64* %657, align 8
  store i64 %658, i64* %50, align 1, !tbaa !2451
  store double 0.000000e+00, double* %52, align 1, !tbaa !2451
  %659 = add i64 %651, 469
  %660 = add i64 %651, 26
  %661 = load i64, i64* %RSP, align 8, !tbaa !2428
  %662 = add i64 %661, -8
  %663 = inttoptr i64 %662 to i64*
  store i64 %660, i64* %663, align 8
  store i64 %662, i64* %RSP, align 8, !tbaa !2428
  store i64 %659, i64* %PC, align 8, !tbaa !2428
  %664 = tail call %struct.Memory* @sub_400c20_simulate(%struct.State* nonnull %0, i64 %659, %struct.Memory* %650)
  %665 = load i64, i64* %RBP, align 8
  %666 = add i64 %665, -56
  %667 = load i64, i64* %PC, align 8
  %668 = add i64 %667, 7
  store i64 %668, i64* %PC, align 8
  %669 = inttoptr i64 %666 to i32*
  store i32 0, i32* %669, align 4
  %670 = load i64, i64* %RBP, align 8
  %671 = add i64 %670, -228
  %672 = load i32, i32* %EAX, align 4
  %673 = load i64, i64* %PC, align 8
  %674 = add i64 %673, 6
  store i64 %674, i64* %PC, align 8
  %675 = inttoptr i64 %671 to i32*
  store i32 %672, i32* %675, align 4
  %.pre32 = load i64, i64* %PC, align 8
  br label %block_400a72

block_400ab1.loopexit:                            ; preds = %block_400a72
  %676 = add i64 %243, 5
  br label %block_400ab1

block_400ab1:                                     ; preds = %block_400ab1.loopexit, %block_400a3d
  %.sink = phi i64 [ %632, %block_400a3d ], [ %676, %block_400ab1.loopexit ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.3, %block_400a3d ], [ %MEMORY.0, %block_400ab1.loopexit ]
  store i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 148), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %677 = add i64 %.sink, -1137
  %678 = add i64 %.sink, 17
  %679 = load i64, i64* %RSP, align 8, !tbaa !2428
  %680 = add i64 %679, -8
  %681 = inttoptr i64 %680 to i64*
  store i64 %678, i64* %681, align 8
  store i64 %680, i64* %RSP, align 8, !tbaa !2428
  store i64 %677, i64* %PC, align 8, !tbaa !2428
  %682 = tail call fastcc %struct.Memory* @ext_602090_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.5)
  %683 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 223), i64* %RDI, align 8, !tbaa !2428
  %684 = load i64, i64* %RBP, align 8
  %685 = add i64 %684, -176
  store i64 %685, i64* %R8, align 8, !tbaa !2428
  %686 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*), align 8
  %687 = zext i32 %686 to i64
  store i64 %687, i64* %RSI, align 8, !tbaa !2428
  %688 = add i64 %684, -44
  %689 = add i64 %683, 27
  store i64 %689, i64* %PC, align 8
  %690 = inttoptr i64 %688 to i32*
  %691 = load i32, i32* %690, align 4
  %692 = zext i32 %691 to i64
  store i64 %692, i64* %RDX, align 8, !tbaa !2428
  %693 = add i64 %684, -64
  %694 = add i64 %683, 32
  store i64 %694, i64* %PC, align 8
  %695 = inttoptr i64 %693 to i64*
  %696 = load i64, i64* %695, align 8
  store i64 %696, i64* %50, align 1, !tbaa !2451
  store double 0.000000e+00, double* %52, align 1, !tbaa !2451
  %697 = add i64 %684, -48
  %698 = add i64 %683, 35
  store i64 %698, i64* %PC, align 8
  %699 = inttoptr i64 %697 to i32*
  %700 = load i32, i32* %699, align 4
  %701 = zext i32 %700 to i64
  store i64 %701, i64* %RCX, align 8, !tbaa !2428
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %703 = add i64 %684, -182
  %704 = add i64 %683, 43
  store i64 %704, i64* %PC, align 8
  %705 = inttoptr i64 %703 to i16*
  %706 = load i16, i16* %705, align 2
  %707 = zext i16 %706 to i64
  store i64 %707, i64* %702, align 8, !tbaa !2428
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %709 = add i64 %684, -180
  %710 = add i64 %683, 51
  store i64 %710, i64* %PC, align 8
  %711 = inttoptr i64 %709 to i16*
  %712 = load i16, i16* %711, align 2
  %713 = zext i16 %712 to i64
  store i64 %713, i64* %708, align 8, !tbaa !2428
  %714 = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %715 = add i64 %684, -178
  %716 = add i64 %683, 59
  store i64 %716, i64* %PC, align 8
  %717 = inttoptr i64 %715 to i16*
  %718 = load i16, i16* %717, align 2
  %719 = zext i16 %718 to i64
  store i64 %719, i64* %714, align 8, !tbaa !2428
  %720 = add i64 %683, 62
  store i64 %720, i64* %PC, align 8
  %721 = load i32, i32* %699, align 4
  %722 = zext i32 %721 to i64
  store i64 %722, i64* %RBX, align 8, !tbaa !2428
  %723 = add i64 %684, -52
  %724 = add i64 %683, 65
  store i64 %724, i64* %PC, align 8
  %725 = inttoptr i64 %723 to i32*
  %726 = load i32, i32* %725, align 4
  %727 = sub i32 %721, %726
  %728 = zext i32 %727 to i64
  store i64 %728, i64* %RBX, align 8, !tbaa !2428
  %729 = icmp ult i32 %721, %726
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %23, align 1, !tbaa !2432
  %731 = and i32 %727, 255
  %732 = tail call i32 @llvm.ctpop.i32(i32 %731) #9
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %30, align 1, !tbaa !2446
  %736 = xor i32 %726, %721
  %737 = xor i32 %736, %727
  %738 = lshr i32 %737, 4
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  store i8 %740, i8* %36, align 1, !tbaa !2450
  %741 = icmp eq i32 %727, 0
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %39, align 1, !tbaa !2447
  %743 = lshr i32 %727, 31
  %744 = trunc i32 %743 to i8
  store i8 %744, i8* %42, align 1, !tbaa !2448
  %745 = lshr i32 %721, 31
  %746 = lshr i32 %726, 31
  %747 = xor i32 %746, %745
  %748 = xor i32 %743, %745
  %749 = add nuw nsw i32 %748, %747
  %750 = icmp eq i32 %749, 2
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %48, align 1, !tbaa !2449
  %752 = sitofp i32 %727 to double
  store double %752, double* %382, align 1, !tbaa !2451
  %753 = load i64, i64* %RBP, align 8
  %754 = add i64 %753, -48
  %755 = add i64 %683, 74
  store i64 %755, i64* %PC, align 8
  %756 = inttoptr i64 %754 to i32*
  %757 = load i32, i32* %756, align 4
  %758 = sitofp i32 %757 to double
  %759 = bitcast %union.VectorReg* %8 to double*
  store double %758, double* %759, align 1, !tbaa !2451
  %760 = fdiv double %752, %758
  store double %760, double* %382, align 1, !tbaa !2451
  %761 = bitcast i64* %RSP to i32**
  %762 = load i32*, i32** %761, align 8
  %763 = zext i16 %712 to i32
  %764 = add i64 %683, 82
  store i64 %764, i64* %PC, align 8
  store i32 %763, i32* %762, align 4
  %765 = load i64, i64* %RSP, align 8
  %766 = add i64 %765, 8
  %767 = load i32, i32* %R11D, align 4
  %768 = load i64, i64* %PC, align 8
  %769 = add i64 %768, 5
  store i64 %769, i64* %PC, align 8
  %770 = inttoptr i64 %766 to i32*
  store i32 %767, i32* %770, align 4
  %771 = load i64, i64* %RBP, align 8
  %772 = add i64 %771, -232
  %773 = load i32, i32* %EAX, align 4
  %774 = load i64, i64* %PC, align 8
  %775 = add i64 %774, 6
  store i64 %775, i64* %PC, align 8
  %776 = inttoptr i64 %772 to i32*
  store i32 %773, i32* %776, align 4
  %777 = load i64, i64* %PC, align 8
  store i8 2, i8* %AL, align 1, !tbaa !2453
  %778 = add i64 %777, -1247
  %779 = add i64 %777, 7
  %780 = load i64, i64* %RSP, align 8, !tbaa !2428
  %781 = add i64 %780, -8
  %782 = inttoptr i64 %781 to i64*
  store i64 %779, i64* %782, align 8
  store i64 %781, i64* %RSP, align 8, !tbaa !2428
  store i64 %778, i64* %PC, align 8, !tbaa !2428
  %783 = tail call fastcc %struct.Memory* @ext_602090_printf(%struct.State* nonnull %0, %struct.Memory* %682)
  %784 = load i64, i64* %RBP, align 8
  %785 = add i64 %784, -12
  %786 = load i64, i64* %PC, align 8
  %787 = add i64 %786, 7
  store i64 %787, i64* %PC, align 8
  %788 = inttoptr i64 %785 to i32*
  store i32 0, i32* %788, align 4
  %789 = load i64, i64* %RBP, align 8
  %790 = add i64 %789, -236
  %791 = load i32, i32* %EAX, align 4
  %792 = load i64, i64* %PC, align 8
  %793 = add i64 %792, 6
  store i64 %793, i64* %PC, align 8
  %794 = inttoptr i64 %790 to i32*
  store i32 %791, i32* %794, align 4
  %.pre33 = load i64, i64* %PC, align 8
  br label %block_400b33

block_4009a5:                                     ; preds = %block_400988
  store i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 105), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %795 = add i64 %631, -869
  %796 = add i64 %631, 17
  %797 = load i64, i64* %RSP, align 8, !tbaa !2428
  %798 = add i64 %797, -8
  %799 = inttoptr i64 %798 to i64*
  store i64 %796, i64* %799, align 8
  store i64 %798, i64* %RSP, align 8, !tbaa !2428
  store i64 %795, i64* %PC, align 8, !tbaa !2428
  %800 = tail call fastcc %struct.Memory* @ext_602090_printf(%struct.State* nonnull %0, %struct.Memory* %601)
  %801 = load i64, i64* %RBP, align 8
  %802 = add i64 %801, -12
  %803 = load i64, i64* %PC, align 8
  %804 = add i64 %803, 7
  store i64 %804, i64* %PC, align 8
  %805 = inttoptr i64 %802 to i32*
  store i32 4, i32* %805, align 4
  %806 = load i64, i64* %RBP, align 8
  %807 = add i64 %806, -216
  %808 = load i32, i32* %EAX, align 4
  %809 = load i64, i64* %PC, align 8
  %810 = add i64 %809, 6
  store i64 %810, i64* %PC, align 8
  %811 = inttoptr i64 %807 to i32*
  store i32 %808, i32* %811, align 4
  %812 = load i64, i64* %PC, align 8
  %813 = add i64 %812, 368
  store i64 %813, i64* %PC, align 8, !tbaa !2428
  br label %block_400b33

block_400918:                                     ; preds = %block_40090a
  store i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 44), i64* %RDI, align 8, !tbaa !2428
  store i64 100, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %814 = add i64 %913, -728
  %815 = add i64 %913, 22
  %816 = load i64, i64* %RSP, align 8, !tbaa !2428
  %817 = add i64 %816, -8
  %818 = inttoptr i64 %817 to i64*
  store i64 %815, i64* %818, align 8
  store i64 %817, i64* %RSP, align 8, !tbaa !2428
  store i64 %814, i64* %PC, align 8, !tbaa !2428
  %819 = tail call fastcc %struct.Memory* @ext_602090_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.7)
  %820 = load i64, i64* %RBP, align 8
  %821 = add i64 %820, -12
  %822 = load i64, i64* %PC, align 8
  %823 = add i64 %822, 7
  store i64 %823, i64* %PC, align 8
  %824 = inttoptr i64 %821 to i32*
  store i32 2, i32* %824, align 4
  %825 = load i64, i64* %RBP, align 8
  %826 = add i64 %825, -208
  %827 = load i32, i32* %EAX, align 4
  %828 = load i64, i64* %PC, align 8
  %829 = add i64 %828, 6
  store i64 %829, i64* %PC, align 8
  %830 = inttoptr i64 %826 to i32*
  store i32 %827, i32* %830, align 4
  %831 = load i64, i64* %PC, align 8
  %832 = add i64 %831, 504
  store i64 %832, i64* %PC, align 8, !tbaa !2428
  br label %block_400b33

block_4007da:                                     ; preds = %block_400790
  %833 = add i64 %86, -176
  store i64 %833, i64* %RDI, align 8, !tbaa !2428
  %834 = add i64 %86, -24
  %835 = add i64 %116, 11
  store i64 %835, i64* %PC, align 8
  %836 = inttoptr i64 %834 to i64*
  %837 = load i64, i64* %836, align 8
  store i64 %837, i64* %RAX, align 8, !tbaa !2428
  %838 = add i64 %837, 48
  %839 = add i64 %116, 15
  store i64 %839, i64* %PC, align 8
  %840 = inttoptr i64 %838 to i64*
  %841 = load i64, i64* %840, align 8
  store i64 %841, i64* %RSI, align 8, !tbaa !2428
  %842 = add i64 %116, -442
  %843 = add i64 %116, 20
  %844 = load i64, i64* %RSP, align 8, !tbaa !2428
  %845 = add i64 %844, -8
  %846 = inttoptr i64 %845 to i64*
  store i64 %843, i64* %846, align 8
  store i64 %845, i64* %RSP, align 8, !tbaa !2428
  store i64 %842, i64* %PC, align 8, !tbaa !2428
  %847 = tail call fastcc %struct.Memory* @ext_6020d0_strcpy(%struct.State* nonnull %0, %struct.Memory* %2)
  %848 = load i64, i64* %RBP, align 8
  %849 = add i64 %848, -192
  %850 = load i64, i64* %RAX, align 8
  %851 = load i64, i64* %PC, align 8
  %852 = add i64 %851, 7
  store i64 %852, i64* %PC, align 8
  %853 = inttoptr i64 %849 to i64*
  store i64 %850, i64* %853, align 8
  %854 = load i64, i64* %PC, align 8
  %855 = add i64 %854, 77
  store i64 %855, i64* %PC, align 8, !tbaa !2428
  br label %block_400842

block_400842:                                     ; preds = %block_4007da, %block_40082b
  %856 = phi i64 [ %.pre21, %block_40082b ], [ %855, %block_4007da ]
  %MEMORY.6 = phi %struct.Memory* [ %2, %block_40082b ], [ %847, %block_4007da ]
  %857 = load i64, i64* %RBP, align 8
  %858 = add i64 %857, -16
  %859 = add i64 %856, 4
  store i64 %859, i64* %PC, align 8
  %860 = inttoptr i64 %858 to i32*
  %861 = load i32, i32* %860, align 4
  %862 = add i32 %861, -7
  %863 = icmp ult i32 %861, 7
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %23, align 1, !tbaa !2432
  %865 = and i32 %862, 255
  %866 = tail call i32 @llvm.ctpop.i32(i32 %865) #9
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  %869 = xor i8 %868, 1
  store i8 %869, i8* %30, align 1, !tbaa !2446
  %870 = xor i32 %862, %861
  %871 = lshr i32 %870, 4
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  store i8 %873, i8* %36, align 1, !tbaa !2450
  %874 = icmp eq i32 %862, 0
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %39, align 1, !tbaa !2447
  %876 = lshr i32 %862, 31
  %877 = trunc i32 %876 to i8
  store i8 %877, i8* %42, align 1, !tbaa !2448
  %878 = lshr i32 %861, 31
  %879 = xor i32 %876, %878
  %880 = add nuw nsw i32 %879, %878
  %881 = icmp eq i32 %880, 2
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %48, align 1, !tbaa !2449
  %883 = icmp ne i8 %877, 0
  %884 = xor i1 %883, %881
  %885 = or i1 %874, %884
  %.v34 = select i1 %885, i64 53, i64 10
  %886 = add i64 %856, %.v34
  store i64 %886, i64* %PC, align 8, !tbaa !2428
  br i1 %885, label %block_400877, label %block_40084c

block_40090a:                                     ; preds = %block_400901, %block_4008cf
  %887 = phi i64 [ %.pre24, %block_400901 ], [ %593, %block_4008cf ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.1, %block_400901 ], [ %585, %block_4008cf ]
  %888 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*), align 8
  %889 = add i32 %888, -100
  %890 = icmp ult i32 %888, 100
  %891 = zext i1 %890 to i8
  store i8 %891, i8* %23, align 1, !tbaa !2432
  %892 = and i32 %889, 255
  %893 = tail call i32 @llvm.ctpop.i32(i32 %892) #9
  %894 = trunc i32 %893 to i8
  %895 = and i8 %894, 1
  %896 = xor i8 %895, 1
  store i8 %896, i8* %30, align 1, !tbaa !2446
  %897 = xor i32 %889, %888
  %898 = lshr i32 %897, 4
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  store i8 %900, i8* %36, align 1, !tbaa !2450
  %901 = icmp eq i32 %889, 0
  %902 = zext i1 %901 to i8
  store i8 %902, i8* %39, align 1, !tbaa !2447
  %903 = lshr i32 %889, 31
  %904 = trunc i32 %903 to i8
  store i8 %904, i8* %42, align 1, !tbaa !2448
  %905 = lshr i32 %888, 31
  %906 = xor i32 %903, %905
  %907 = add nuw nsw i32 %906, %905
  %908 = icmp eq i32 %907, 2
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %48, align 1, !tbaa !2449
  %910 = icmp ne i8 %904, 0
  %911 = xor i1 %910, %908
  %912 = or i1 %901, %911
  %.v37 = select i1 %912, i64 54, i64 14
  %913 = add i64 %887, %.v37
  store i64 %913, i64* %PC, align 8, !tbaa !2428
  br i1 %912, label %block_400940, label %block_400918

block_40084c:                                     ; preds = %block_400842
  store i64 add (i64 ptrtoint (%seg_4010a0__rodata_type* @seg_4010a0__rodata to i64), i64 40), i64* %RSI, align 8, !tbaa !2428
  %914 = add i64 %857, -182
  store i64 %914, i64* %RDX, align 8, !tbaa !2428
  %915 = add i64 %857, -24
  %916 = add i64 %886, 21
  store i64 %916, i64* %PC, align 8
  %917 = inttoptr i64 %915 to i64*
  %918 = load i64, i64* %917, align 8
  store i64 %918, i64* %RAX, align 8, !tbaa !2428
  %919 = add i64 %918, 56
  %920 = add i64 %886, 25
  store i64 %920, i64* %PC, align 8
  %921 = inttoptr i64 %919 to i64*
  %922 = load i64, i64* %921, align 8
  store i64 %922, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %923 = add i64 %886, -460
  %924 = add i64 %886, 32
  %925 = load i64, i64* %RSP, align 8, !tbaa !2428
  %926 = add i64 %925, -8
  %927 = inttoptr i64 %926 to i64*
  store i64 %924, i64* %927, align 8
  store i64 %926, i64* %RSP, align 8, !tbaa !2428
  store i64 %923, i64* %PC, align 8, !tbaa !2428
  %928 = tail call fastcc %struct.Memory* @ext_400680___isoc99_sscanf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.6)
  %929 = load i64, i64* %RBP, align 8
  %930 = add i64 %929, -196
  %931 = load i32, i32* %EAX, align 4
  %932 = load i64, i64* %PC, align 8
  %933 = add i64 %932, 6
  store i64 %933, i64* %PC, align 8
  %934 = inttoptr i64 %930 to i32*
  store i32 %931, i32* %934, align 4
  %935 = load i64, i64* %PC, align 8
  %936 = add i64 %935, 14
  store i64 %936, i64* %PC, align 8, !tbaa !2428
  br label %block_400880

block_400a08:                                     ; preds = %block_4009fc
  %937 = add i64 %421, -40
  store i64 %937, i64* %RDI, align 8, !tbaa !2428
  %938 = add i64 %457, 472
  %939 = add i64 %457, 9
  %940 = load i64, i64* %RSP, align 8, !tbaa !2428
  %941 = add i64 %940, -8
  %942 = inttoptr i64 %941 to i64*
  store i64 %939, i64* %942, align 8
  store i64 %941, i64* %RSP, align 8, !tbaa !2428
  store i64 %938, i64* %PC, align 8, !tbaa !2428
  %943 = tail call %struct.Memory* @sub_400be0_init(%struct.State* nonnull %0, i64 %938, %struct.Memory* %MEMORY.3)
  %944 = load i64, i64* %RBP, align 8
  %945 = add i64 %944, -40
  %946 = load i64, i64* %PC, align 8
  store i64 %945, i64* %RSI, align 8, !tbaa !2428
  %947 = add i64 %944, -176
  store i64 %947, i64* %RDX, align 8, !tbaa !2428
  %948 = add i64 %944, -44
  %949 = add i64 %946, 14
  store i64 %949, i64* %PC, align 8
  %950 = inttoptr i64 %948 to i32*
  %951 = load i32, i32* %950, align 4
  %952 = zext i32 %951 to i64
  store i64 %952, i64* %RDI, align 8, !tbaa !2428
  %953 = add i64 %944, -64
  %954 = add i64 %946, 19
  store i64 %954, i64* %PC, align 8
  %955 = inttoptr i64 %953 to i64*
  %956 = load i64, i64* %955, align 8
  store i64 %956, i64* %50, align 1, !tbaa !2451
  store double 0.000000e+00, double* %52, align 1, !tbaa !2451
  %957 = add i64 %946, 527
  %958 = add i64 %946, 24
  %959 = load i64, i64* %RSP, align 8, !tbaa !2428
  %960 = add i64 %959, -8
  %961 = inttoptr i64 %960 to i64*
  store i64 %958, i64* %961, align 8
  store i64 %960, i64* %RSP, align 8, !tbaa !2428
  store i64 %957, i64* %PC, align 8, !tbaa !2428
  %962 = tail call %struct.Memory* @sub_400c20_simulate(%struct.State* nonnull %0, i64 %957, %struct.Memory* %MEMORY.3)
  %963 = load i64, i64* %RAX, align 8
  %964 = load i64, i64* %RBP, align 8
  %965 = add i64 %964, -52
  %966 = load i64, i64* %PC, align 8
  %967 = add i64 %966, 3
  store i64 %967, i64* %PC, align 8
  %968 = trunc i64 %963 to i32
  %969 = inttoptr i64 %965 to i32*
  %970 = load i32, i32* %969, align 4
  %971 = add i32 %970, %968
  %972 = zext i32 %971 to i64
  store i64 %972, i64* %RAX, align 8, !tbaa !2428
  %973 = icmp ult i32 %971, %968
  %974 = icmp ult i32 %971, %970
  %975 = or i1 %973, %974
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %23, align 1, !tbaa !2432
  %977 = and i32 %971, 255
  %978 = tail call i32 @llvm.ctpop.i32(i32 %977) #9
  %979 = trunc i32 %978 to i8
  %980 = and i8 %979, 1
  %981 = xor i8 %980, 1
  store i8 %981, i8* %30, align 1, !tbaa !2446
  %982 = xor i32 %970, %968
  %983 = xor i32 %982, %971
  %984 = lshr i32 %983, 4
  %985 = trunc i32 %984 to i8
  %986 = and i8 %985, 1
  store i8 %986, i8* %36, align 1, !tbaa !2450
  %987 = icmp eq i32 %971, 0
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %39, align 1, !tbaa !2447
  %989 = lshr i32 %971, 31
  %990 = trunc i32 %989 to i8
  store i8 %990, i8* %42, align 1, !tbaa !2448
  %991 = lshr i32 %968, 31
  %992 = lshr i32 %970, 31
  %993 = xor i32 %989, %991
  %994 = xor i32 %989, %992
  %995 = add nuw nsw i32 %993, %994
  %996 = icmp eq i32 %995, 2
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %48, align 1, !tbaa !2449
  %998 = add i64 %966, 6
  store i64 %998, i64* %PC, align 8
  store i32 %971, i32* %969, align 4
  %999 = load i64, i64* %RBP, align 8
  %1000 = add i64 %999, -56
  %1001 = load i64, i64* %PC, align 8
  %1002 = add i64 %1001, 3
  store i64 %1002, i64* %PC, align 8
  %1003 = inttoptr i64 %1000 to i32*
  %1004 = load i32, i32* %1003, align 4
  %1005 = add i32 %1004, 1
  %1006 = zext i32 %1005 to i64
  store i64 %1006, i64* %RAX, align 8, !tbaa !2428
  %1007 = icmp eq i32 %1004, -1
  %1008 = icmp eq i32 %1005, 0
  %1009 = or i1 %1007, %1008
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %23, align 1, !tbaa !2432
  %1011 = and i32 %1005, 255
  %1012 = tail call i32 @llvm.ctpop.i32(i32 %1011) #9
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  %1015 = xor i8 %1014, 1
  store i8 %1015, i8* %30, align 1, !tbaa !2446
  %1016 = xor i32 %1005, %1004
  %1017 = lshr i32 %1016, 4
  %1018 = trunc i32 %1017 to i8
  %1019 = and i8 %1018, 1
  store i8 %1019, i8* %36, align 1, !tbaa !2450
  %1020 = zext i1 %1008 to i8
  store i8 %1020, i8* %39, align 1, !tbaa !2447
  %1021 = lshr i32 %1005, 31
  %1022 = trunc i32 %1021 to i8
  store i8 %1022, i8* %42, align 1, !tbaa !2448
  %1023 = lshr i32 %1004, 31
  %1024 = xor i32 %1021, %1023
  %1025 = add nuw nsw i32 %1024, %1021
  %1026 = icmp eq i32 %1025, 2
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %48, align 1, !tbaa !2449
  %1028 = add i64 %1001, 9
  store i64 %1028, i64* %PC, align 8
  store i32 %1005, i32* %1003, align 4
  %1029 = load i64, i64* %PC, align 8
  %1030 = add i64 %1029, -60
  store i64 %1030, i64* %PC, align 8, !tbaa !2428
  br label %block_4009fc

block_400901:                                     ; preds = %block_4008c5
  %1031 = add i64 %326, -178
  %1032 = add i64 %355, 9
  store i64 %1032, i64* %PC, align 8
  %1033 = inttoptr i64 %1031 to i16*
  store i16 0, i16* %1033, align 2
  %.pre24 = load i64, i64* %PC, align 8
  br label %block_40090a

block_400801:                                     ; preds = %block_400811, %block_4007fa
  %1034 = phi i64 [ %1107, %block_400811 ], [ %.pre, %block_4007fa ]
  %1035 = load i64, i64* %RBP, align 8
  %1036 = add i64 %1035, -56
  %1037 = add i64 %1034, 3
  store i64 %1037, i64* %PC, align 8
  %1038 = inttoptr i64 %1036 to i32*
  %1039 = load i32, i32* %1038, align 4
  %1040 = zext i32 %1039 to i64
  store i64 %1040, i64* %RAX, align 8, !tbaa !2428
  %1041 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*), align 8
  %1042 = sub i32 %1039, %1041
  %1043 = icmp ult i32 %1039, %1041
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %23, align 1, !tbaa !2432
  %1045 = and i32 %1042, 255
  %1046 = tail call i32 @llvm.ctpop.i32(i32 %1045) #9
  %1047 = trunc i32 %1046 to i8
  %1048 = and i8 %1047, 1
  %1049 = xor i8 %1048, 1
  store i8 %1049, i8* %30, align 1, !tbaa !2446
  %1050 = xor i32 %1041, %1039
  %1051 = xor i32 %1050, %1042
  %1052 = lshr i32 %1051, 4
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  store i8 %1054, i8* %36, align 1, !tbaa !2450
  %1055 = icmp eq i32 %1042, 0
  %1056 = zext i1 %1055 to i8
  store i8 %1056, i8* %39, align 1, !tbaa !2447
  %1057 = lshr i32 %1042, 31
  %1058 = trunc i32 %1057 to i8
  store i8 %1058, i8* %42, align 1, !tbaa !2448
  %1059 = lshr i32 %1039, 31
  %1060 = lshr i32 %1041, 31
  %1061 = xor i32 %1060, %1059
  %1062 = xor i32 %1057, %1059
  %1063 = add nuw nsw i32 %1062, %1061
  %1064 = icmp eq i32 %1063, 2
  %1065 = zext i1 %1064 to i8
  store i8 %1065, i8* %48, align 1, !tbaa !2449
  %1066 = icmp ne i8 %1058, 0
  %1067 = xor i1 %1066, %1064
  %.v44 = select i1 %1067, i64 16, i64 42
  %1068 = add i64 %1034, %.v44
  store i64 %1068, i64* %PC, align 8, !tbaa !2428
  br i1 %1067, label %block_400811, label %block_40082b

block_400811:                                     ; preds = %block_400801
  %1069 = add i64 %1068, 4
  store i64 %1069, i64* %PC, align 8
  %1070 = load i32, i32* %1038, align 4
  %1071 = sext i32 %1070 to i64
  store i64 %1071, i64* %RAX, align 8, !tbaa !2428
  %1072 = add nsw i64 %1071, -176
  %1073 = add i64 %1072, %1035
  %1074 = add i64 %1068, 12
  store i64 %1074, i64* %PC, align 8
  %1075 = inttoptr i64 %1073 to i8*
  store i8 48, i8* %1075, align 1
  %1076 = load i64, i64* %RBP, align 8
  %1077 = add i64 %1076, -56
  %1078 = load i64, i64* %PC, align 8
  %1079 = add i64 %1078, 3
  store i64 %1079, i64* %PC, align 8
  %1080 = inttoptr i64 %1077 to i32*
  %1081 = load i32, i32* %1080, align 4
  %1082 = add i32 %1081, 1
  %1083 = zext i32 %1082 to i64
  store i64 %1083, i64* %RAX, align 8, !tbaa !2428
  %1084 = icmp eq i32 %1081, -1
  %1085 = icmp eq i32 %1082, 0
  %1086 = or i1 %1084, %1085
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %23, align 1, !tbaa !2432
  %1088 = and i32 %1082, 255
  %1089 = tail call i32 @llvm.ctpop.i32(i32 %1088) #9
  %1090 = trunc i32 %1089 to i8
  %1091 = and i8 %1090, 1
  %1092 = xor i8 %1091, 1
  store i8 %1092, i8* %30, align 1, !tbaa !2446
  %1093 = xor i32 %1082, %1081
  %1094 = lshr i32 %1093, 4
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  store i8 %1096, i8* %36, align 1, !tbaa !2450
  %1097 = zext i1 %1085 to i8
  store i8 %1097, i8* %39, align 1, !tbaa !2447
  %1098 = lshr i32 %1082, 31
  %1099 = trunc i32 %1098 to i8
  store i8 %1099, i8* %42, align 1, !tbaa !2448
  %1100 = lshr i32 %1081, 31
  %1101 = xor i32 %1098, %1100
  %1102 = add nuw nsw i32 %1101, %1098
  %1103 = icmp eq i32 %1102, 2
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %48, align 1, !tbaa !2449
  %1105 = add i64 %1078, 9
  store i64 %1105, i64* %PC, align 8
  store i32 %1082, i32* %1080, align 4
  %1106 = load i64, i64* %PC, align 8
  %1107 = add i64 %1106, -37
  store i64 %1107, i64* %PC, align 8, !tbaa !2428
  br label %block_400801

block_400880:                                     ; preds = %block_40084c, %block_400877
  %1108 = phi i64 [ %.pre22, %block_400877 ], [ %936, %block_40084c ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.6, %block_400877 ], [ %928, %block_40084c ]
  %1109 = load i64, i64* %RBP, align 8
  %1110 = add i64 %1109, -16
  %1111 = add i64 %1108, 4
  store i64 %1111, i64* %PC, align 8
  %1112 = inttoptr i64 %1110 to i32*
  %1113 = load i32, i32* %1112, align 4
  %1114 = add i32 %1113, -8
  %1115 = icmp ult i32 %1113, 8
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %23, align 1, !tbaa !2432
  %1117 = and i32 %1114, 255
  %1118 = tail call i32 @llvm.ctpop.i32(i32 %1117) #9
  %1119 = trunc i32 %1118 to i8
  %1120 = and i8 %1119, 1
  %1121 = xor i8 %1120, 1
  store i8 %1121, i8* %30, align 1, !tbaa !2446
  %1122 = xor i32 %1114, %1113
  %1123 = lshr i32 %1122, 4
  %1124 = trunc i32 %1123 to i8
  %1125 = and i8 %1124, 1
  store i8 %1125, i8* %36, align 1, !tbaa !2450
  %1126 = icmp eq i32 %1114, 0
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %39, align 1, !tbaa !2447
  %1128 = lshr i32 %1114, 31
  %1129 = trunc i32 %1128 to i8
  store i8 %1129, i8* %42, align 1, !tbaa !2448
  %1130 = lshr i32 %1113, 31
  %1131 = xor i32 %1128, %1130
  %1132 = add nuw nsw i32 %1131, %1130
  %1133 = icmp eq i32 %1132, 2
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %48, align 1, !tbaa !2449
  %1135 = icmp ne i8 %1129, 0
  %1136 = xor i1 %1135, %1133
  %1137 = or i1 %1126, %1136
  %.v35 = select i1 %1137, i64 60, i64 10
  %1138 = add i64 %1108, %.v35
  store i64 %1138, i64* %PC, align 8, !tbaa !2428
  br i1 %1137, label %block_4008bc, label %block_40088a
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400be0_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400be0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
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
  %10 = add i64 %6, -16
  %11 = load i64, i64* %RDI, align 8
  %12 = add i64 %9, 7
  store i64 %12, i64* %PC, align 8
  %13 = inttoptr i64 %10 to i64*
  store i64 %11, i64* %13, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %PC, align 8
  br label %block_400be8

block_400bf7:                                     ; preds = %block_400be8
  %20 = add i64 %73, 4
  store i64 %20, i64* %PC, align 8
  %21 = load i64, i64* %57, align 8
  store i64 %21, i64* %RAX, align 8, !tbaa !2428
  %22 = add i64 %73, 6
  store i64 %22, i64* %PC, align 8
  %23 = inttoptr i64 %21 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = zext i32 %24 to i64
  store i64 %25, i64* %RCX, align 8, !tbaa !2428
  %26 = add i64 %73, 10
  store i64 %26, i64* %PC, align 8
  %27 = load i64, i64* %57, align 8
  store i64 %27, i64* %RAX, align 8, !tbaa !2428
  %28 = add i64 %27, 4
  %29 = add i64 %73, 13
  store i64 %29, i64* %PC, align 8
  %30 = inttoptr i64 %28 to i32*
  store i32 %24, i32* %30, align 4
  %31 = load i64, i64* %RBP, align 8
  %32 = add i64 %31, -8
  %33 = load i64, i64* %PC, align 8
  %34 = add i64 %33, 4
  store i64 %34, i64* %PC, align 8
  %35 = inttoptr i64 %32 to i64*
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %RAX, align 8, !tbaa !2428
  %37 = add i64 %36, 8
  %38 = add i64 %33, 8
  store i64 %38, i64* %PC, align 8
  %39 = inttoptr i64 %37 to i64*
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %RAX, align 8, !tbaa !2428
  %41 = add i64 %33, 12
  store i64 %41, i64* %PC, align 8
  store i64 %40, i64* %35, align 8
  %42 = load i64, i64* %PC, align 8
  %43 = add i64 %42, -40
  store i64 %43, i64* %PC, align 8, !tbaa !2428
  br label %block_400be8

block_400c15:                                     ; preds = %block_400be8
  %44 = add i64 %73, 1
  store i64 %44, i64* %PC, align 8
  %45 = load i64, i64* %5, align 8, !tbaa !2428
  %46 = add i64 %45, 8
  %47 = inttoptr i64 %45 to i64*
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %RBP, align 8, !tbaa !2428
  store i64 %46, i64* %5, align 8, !tbaa !2428
  %49 = add i64 %73, 2
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %46 to i64*
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %PC, align 8, !tbaa !2428
  %52 = add i64 %45, 16
  store i64 %52, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400be8:                                     ; preds = %block_400bf7, %block_400be0
  %53 = phi i64 [ %43, %block_400bf7 ], [ %.pre, %block_400be0 ]
  %54 = load i64, i64* %RBP, align 8
  %55 = add i64 %54, -8
  %56 = add i64 %53, 4
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %55 to i64*
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %RAX, align 8, !tbaa !2428
  %59 = add i64 %58, 8
  %60 = add i64 %53, 9
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %59 to i64*
  %62 = load i64, i64* %61, align 8
  store i8 0, i8* %14, align 1, !tbaa !2432
  %63 = trunc i64 %62 to i32
  %64 = and i32 %63, 255
  %65 = tail call i32 @llvm.ctpop.i32(i32 %64) #9
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  store i8 %68, i8* %15, align 1, !tbaa !2446
  store i8 0, i8* %16, align 1, !tbaa !2450
  %69 = icmp eq i64 %62, 0
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %17, align 1, !tbaa !2447
  %71 = lshr i64 %62, 63
  %72 = trunc i64 %71 to i8
  store i8 %72, i8* %18, align 1, !tbaa !2448
  store i8 0, i8* %19, align 1, !tbaa !2449
  %.v = select i1 %69, i64 45, i64 15
  %73 = add i64 %53, %.v
  store i64 %73, i64* %PC, align 8, !tbaa !2428
  br i1 %69, label %block_400c15, label %block_400bf7
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_401090___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_401090:
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
define %struct.Memory* @sub_401020___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401020:
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
  store i8 %51, i8* %43, align 1, !tbaa !2453
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #9
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
  %63 = add i64 %38, -2643
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_4005e8__init_proc(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
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
  store i8 %77, i8* %46, align 1, !tbaa !2447
  %78 = lshr i64 %68, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %47, align 1, !tbaa !2448
  store i8 0, i8* %48, align 1, !tbaa !2449
  store i8 0, i8* %45, align 1, !tbaa !2450
  %.v = select i1 %76, i64 37, i64 5
  %80 = add i64 %69, %.v
  store i64 %80, i64* %PC, align 8, !tbaa !2428
  br i1 %76, label %block_401076, label %block_401056

block_401076.loopexit:                            ; preds = %block_401060
  br label %block_401076

block_401076:                                     ; preds = %block_401076.loopexit, %block_401020
  %81 = phi i64 [ %80, %block_401020 ], [ %179, %block_401076.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_401020 ], [ %149, %block_401076.loopexit ]
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

block_401056:                                     ; preds = %block_401020
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2447
  store i8 0, i8* %47, align 1, !tbaa !2448
  store i8 0, i8* %48, align 1, !tbaa !2449
  store i8 0, i8* %45, align 1, !tbaa !2450
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401060

block_401060:                                     ; preds = %block_401060, %block_401056
  %134 = phi i64 [ 0, %block_401056 ], [ %152, %block_401060 ]
  %135 = phi i64 [ %133, %block_401056 ], [ %179, %block_401060 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401056 ], [ %149, %block_401060 ]
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
  br i1 %169, label %block_401076.loopexit, label %block_401060
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400750___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400750:
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
  br i1 %12, label %block_400759, label %block_400770

block_400770:                                     ; preds = %block_400750
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

block_400759:                                     ; preds = %block_400750
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
  %36 = tail call %struct.Memory* @sub_4006e0_deregister_tm_clones(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
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
define %struct.Memory* @sub_400fd0_kill_list(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400fd0:
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
  store i8 %24, i8* %25, align 1, !tbaa !2450
  %26 = icmp eq i64 %9, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1, !tbaa !2447
  %29 = lshr i64 %9, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1, !tbaa !2448
  %32 = lshr i64 %6, 63
  %33 = xor i64 %29, %32
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1, !tbaa !2449
  %38 = add i64 %5, -16
  %39 = load i64, i64* %RDI, align 8
  %40 = add i64 %8, 11
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %38 to i64*
  store i64 %39, i64* %41, align 8
  %.pre = load i64, i64* %PC, align 8
  br label %block_400fdc

block_400fe7:                                     ; preds = %block_400fdc
  %42 = add i64 %90, 4
  store i64 %42, i64* %PC, align 8
  %43 = load i64, i64* %78, align 8
  store i64 %43, i64* %RAX, align 8, !tbaa !2428
  %44 = add i64 %43, 8
  %45 = add i64 %90, 8
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %44 to i64*
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %RAX, align 8, !tbaa !2428
  %48 = add i64 %75, -16
  %49 = add i64 %90, 12
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %48 to i64*
  store i64 %47, i64* %50, align 8
  %51 = load i64, i64* %RBP, align 8
  %52 = add i64 %51, -8
  %53 = load i64, i64* %PC, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %52 to i64*
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %RAX, align 8, !tbaa !2428
  store i64 %56, i64* %RDI, align 8, !tbaa !2428
  %57 = add i64 %53, -2531
  %58 = add i64 %53, 12
  %59 = load i64, i64* %RSP, align 8, !tbaa !2428
  %60 = add i64 %59, -8
  %61 = inttoptr i64 %60 to i64*
  store i64 %58, i64* %61, align 8
  store i64 %60, i64* %RSP, align 8, !tbaa !2428
  store i64 %57, i64* %PC, align 8, !tbaa !2428
  %62 = tail call fastcc %struct.Memory* @ext_602078_free(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %63 = load i64, i64* %RBP, align 8
  %64 = add i64 %63, -16
  %65 = load i64, i64* %PC, align 8
  %66 = add i64 %65, 4
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %64 to i64*
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %RAX, align 8, !tbaa !2428
  %69 = add i64 %63, -8
  %70 = add i64 %65, 8
  store i64 %70, i64* %PC, align 8
  %71 = inttoptr i64 %69 to i64*
  store i64 %68, i64* %71, align 8
  %72 = load i64, i64* %PC, align 8
  %73 = add i64 %72, -43
  store i64 %73, i64* %PC, align 8, !tbaa !2428
  br label %block_400fdc

block_400fdc:                                     ; preds = %block_400fe7, %block_400fd0
  %74 = phi i64 [ %.pre, %block_400fd0 ], [ %73, %block_400fe7 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400fd0 ], [ %62, %block_400fe7 ]
  %75 = load i64, i64* %RBP, align 8
  %76 = add i64 %75, -8
  %77 = add i64 %74, 5
  store i64 %77, i64* %PC, align 8
  %78 = inttoptr i64 %76 to i64*
  %79 = load i64, i64* %78, align 8
  store i8 0, i8* %12, align 1, !tbaa !2432
  %80 = trunc i64 %79 to i32
  %81 = and i32 %80, 255
  %82 = tail call i32 @llvm.ctpop.i32(i32 %81) #9
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  %85 = xor i8 %84, 1
  store i8 %85, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %25, align 1, !tbaa !2450
  %86 = icmp eq i64 %79, 0
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %28, align 1, !tbaa !2447
  %88 = lshr i64 %79, 63
  %89 = trunc i64 %88 to i8
  store i8 %89, i8* %31, align 1, !tbaa !2448
  store i8 0, i8* %37, align 1, !tbaa !2449
  %.v = select i1 %86, i64 48, i64 11
  %90 = add i64 %74, %.v
  store i64 %90, i64* %PC, align 8, !tbaa !2428
  br i1 %86, label %block_40100c, label %block_400fe7

block_40100c:                                     ; preds = %block_400fdc
  %91 = load i64, i64* %RSP, align 8
  %92 = add i64 %91, 16
  store i64 %92, i64* %RSP, align 8, !tbaa !2428
  %93 = icmp ugt i64 %91, -17
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %12, align 1, !tbaa !2432
  %95 = trunc i64 %92 to i32
  %96 = and i32 %95, 255
  %97 = tail call i32 @llvm.ctpop.i32(i32 %96) #9
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  %100 = xor i8 %99, 1
  store i8 %100, i8* %19, align 1, !tbaa !2446
  %101 = xor i64 %91, 16
  %102 = xor i64 %101, %92
  %103 = lshr i64 %102, 4
  %104 = trunc i64 %103 to i8
  %105 = and i8 %104, 1
  store i8 %105, i8* %25, align 1, !tbaa !2450
  %106 = icmp eq i64 %92, 0
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %28, align 1, !tbaa !2447
  %108 = lshr i64 %92, 63
  %109 = trunc i64 %108 to i8
  store i8 %109, i8* %31, align 1, !tbaa !2448
  %110 = lshr i64 %91, 63
  %111 = xor i64 %108, %110
  %112 = add nuw nsw i64 %111, %108
  %113 = icmp eq i64 %112, 2
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %37, align 1, !tbaa !2449
  %115 = add i64 %90, 5
  store i64 %115, i64* %PC, align 8
  %116 = add i64 %91, 24
  %117 = inttoptr i64 %92 to i64*
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %RBP, align 8, !tbaa !2428
  store i64 %116, i64* %RSP, align 8, !tbaa !2428
  %119 = add i64 %90, 6
  store i64 %119, i64* %PC, align 8
  %120 = inttoptr i64 %116 to i64*
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %PC, align 8, !tbaa !2428
  %122 = add i64 %91, 32
  store i64 %122, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4006e0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4006e0:
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
  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), label %block_400708, label %block_4006f1

block_4006f1:                                     ; preds = %block_4006e0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %9, align 1, !tbaa !2432
  store i8 1, i8* %14, align 1, !tbaa !2446
  store i8 1, i8* %16, align 1, !tbaa !2447
  store i8 0, i8* %17, align 1, !tbaa !2448
  store i8 0, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %15, align 1, !tbaa !2450
  %20 = add i64 %8, add (i64 select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), i64 39, i64 16), i64 23)
  store i64 %20, i64* %PC, align 8, !tbaa !2428
  br label %block_400708

block_400708:                                     ; preds = %block_4006f1, %block_4006e0
  %21 = phi i64 [ %20, %block_4006f1 ], [ %19, %block_4006e0 ]
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
define %struct.Memory* @sub_400b40_create_link_list(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400b40:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
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
  %9 = add i64 %5, -40
  store i64 %9, i64* %RSP, align 8, !tbaa !2428
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %10, align 1, !tbaa !2432
  store i8 1, i8* %11, align 1, !tbaa !2446
  store i8 1, i8* %13, align 1, !tbaa !2447
  store i8 0, i8* %14, align 1, !tbaa !2448
  store i8 0, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %12, align 1, !tbaa !2450
  store i64 16, i64* %RAX, align 8, !tbaa !2428
  store i64 16, i64* %RDX, align 8, !tbaa !2428
  %16 = add i64 %5, -16
  %17 = load i64, i64* %RDI, align 8
  %18 = add i64 %8, 20
  store i64 %18, i64* %PC, align 8
  %19 = inttoptr i64 %16 to i64*
  store i64 %17, i64* %19, align 8
  %20 = load i64, i64* %RBP, align 8
  %21 = add i64 %20, -8
  %22 = load i64, i64* %PC, align 8
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC, align 8
  %24 = inttoptr i64 %21 to i64*
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %RDI, align 8, !tbaa !2428
  %26 = add i64 %22, -1285
  %27 = add i64 %22, 9
  %28 = load i64, i64* %RSP, align 8, !tbaa !2428
  %29 = add i64 %28, -8
  %30 = inttoptr i64 %29 to i64*
  store i64 %27, i64* %30, align 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  store i64 %26, i64* %PC, align 8, !tbaa !2428
  %31 = tail call fastcc %struct.Memory* @ext_400650_memset(%struct.State* nonnull %0, %struct.Memory* %2)
  %32 = load i64, i64* %RBP, align 8
  %33 = add i64 %32, -8
  %34 = load i64, i64* %PC, align 8
  %35 = add i64 %34, 4
  store i64 %35, i64* %PC, align 8
  %36 = inttoptr i64 %33 to i64*
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %RDX, align 8, !tbaa !2428
  %38 = add i64 %32, -32
  %39 = add i64 %34, 8
  store i64 %39, i64* %PC, align 8
  %40 = inttoptr i64 %38 to i64*
  store i64 %37, i64* %40, align 8
  %41 = load i64, i64* %RBP, align 8
  %42 = add i64 %41, -12
  %43 = load i64, i64* %PC, align 8
  %44 = add i64 %43, 7
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %42 to i32*
  store i32 0, i32* %45, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400b6d

block_400b82:                                     ; preds = %block_400b6d
  store i64 16, i64* %RAX, align 8, !tbaa !2428
  store i64 16, i64* %RDI, align 8, !tbaa !2428
  %46 = add i64 %207, -1298
  %47 = add i64 %207, 12
  %48 = load i64, i64* %RSP, align 8, !tbaa !2428
  %49 = add i64 %48, -8
  %50 = inttoptr i64 %49 to i64*
  store i64 %47, i64* %50, align 8
  store i64 %49, i64* %RSP, align 8, !tbaa !2428
  store i64 %46, i64* %PC, align 8, !tbaa !2428
  %51 = tail call fastcc %struct.Memory* @ext_400670_malloc(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %52 = load i64, i64* %RBP, align 8
  %53 = add i64 %52, -24
  %54 = load i64, i64* %RAX, align 8
  %55 = load i64, i64* %PC, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %PC, align 8
  %57 = inttoptr i64 %53 to i64*
  store i64 %54, i64* %57, align 8
  %58 = load i64, i64* %RBP, align 8
  %59 = add i64 %58, -24
  %60 = load i64, i64* %PC, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %PC, align 8
  %62 = inttoptr i64 %59 to i64*
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %RAX, align 8, !tbaa !2428
  %64 = add i64 %60, 10
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %63 to i32*
  store i32 1, i32* %65, align 4
  %66 = load i64, i64* %RBP, align 8
  %67 = add i64 %66, -24
  %68 = load i64, i64* %PC, align 8
  %69 = add i64 %68, 4
  store i64 %69, i64* %PC, align 8
  %70 = inttoptr i64 %67 to i64*
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %RAX, align 8, !tbaa !2428
  %72 = add i64 %71, 4
  %73 = add i64 %68, 11
  store i64 %73, i64* %PC, align 8
  %74 = inttoptr i64 %72 to i32*
  store i32 1, i32* %74, align 4
  %75 = load i64, i64* %RBP, align 8
  %76 = add i64 %75, -24
  %77 = load i64, i64* %PC, align 8
  %78 = add i64 %77, 4
  store i64 %78, i64* %PC, align 8
  %79 = inttoptr i64 %76 to i64*
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %RAX, align 8, !tbaa !2428
  %81 = add i64 %80, 8
  %82 = add i64 %77, 12
  store i64 %82, i64* %PC, align 8
  %83 = inttoptr i64 %81 to i64*
  store i64 0, i64* %83, align 8
  %84 = load i64, i64* %RBP, align 8
  %85 = add i64 %84, -24
  %86 = load i64, i64* %PC, align 8
  %87 = add i64 %86, 4
  store i64 %87, i64* %PC, align 8
  %88 = inttoptr i64 %85 to i64*
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %RAX, align 8, !tbaa !2428
  %90 = add i64 %84, -32
  %91 = add i64 %86, 8
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %90 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %RDI, align 8, !tbaa !2428
  %94 = add i64 %93, 8
  %95 = add i64 %86, 12
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %94 to i64*
  store i64 %89, i64* %96, align 8
  %97 = load i64, i64* %RBP, align 8
  %98 = add i64 %97, -32
  %99 = load i64, i64* %PC, align 8
  %100 = add i64 %99, 4
  store i64 %100, i64* %PC, align 8
  %101 = inttoptr i64 %98 to i64*
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %RAX, align 8, !tbaa !2428
  %103 = add i64 %102, 8
  %104 = add i64 %99, 8
  store i64 %104, i64* %PC, align 8
  %105 = inttoptr i64 %103 to i64*
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %RAX, align 8, !tbaa !2428
  %107 = add i64 %99, 12
  store i64 %107, i64* %PC, align 8
  store i64 %106, i64* %101, align 8
  %108 = load i64, i64* %RBP, align 8
  %109 = add i64 %108, -12
  %110 = load i64, i64* %PC, align 8
  %111 = add i64 %110, 3
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %109 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = add i32 %113, 1
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RAX, align 8, !tbaa !2428
  %116 = icmp eq i32 %113, -1
  %117 = icmp eq i32 %114, 0
  %118 = or i1 %116, %117
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %10, align 1, !tbaa !2432
  %120 = and i32 %114, 255
  %121 = tail call i32 @llvm.ctpop.i32(i32 %120) #9
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  %124 = xor i8 %123, 1
  store i8 %124, i8* %11, align 1, !tbaa !2446
  %125 = xor i32 %114, %113
  %126 = lshr i32 %125, 4
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  store i8 %128, i8* %12, align 1, !tbaa !2450
  %129 = zext i1 %117 to i8
  store i8 %129, i8* %13, align 1, !tbaa !2447
  %130 = lshr i32 %114, 31
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %14, align 1, !tbaa !2448
  %132 = lshr i32 %113, 31
  %133 = xor i32 %130, %132
  %134 = add nuw nsw i32 %133, %130
  %135 = icmp eq i32 %134, 2
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %15, align 1, !tbaa !2449
  %137 = add i64 %110, 9
  store i64 %137, i64* %PC, align 8
  store i32 %114, i32* %112, align 4
  %138 = load i64, i64* %PC, align 8
  %139 = add i64 %138, -103
  store i64 %139, i64* %PC, align 8, !tbaa !2428
  br label %block_400b6d

block_400bd9:                                     ; preds = %block_400b6d
  %140 = load i64, i64* %RSP, align 8
  %141 = add i64 %140, 32
  store i64 %141, i64* %RSP, align 8, !tbaa !2428
  %142 = icmp ugt i64 %140, -33
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %10, align 1, !tbaa !2432
  %144 = trunc i64 %141 to i32
  %145 = and i32 %144, 255
  %146 = tail call i32 @llvm.ctpop.i32(i32 %145) #9
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  store i8 %149, i8* %11, align 1, !tbaa !2446
  %150 = xor i64 %141, %140
  %151 = lshr i64 %150, 4
  %152 = trunc i64 %151 to i8
  %153 = and i8 %152, 1
  store i8 %153, i8* %12, align 1, !tbaa !2450
  %154 = icmp eq i64 %141, 0
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %13, align 1, !tbaa !2447
  %156 = lshr i64 %141, 63
  %157 = trunc i64 %156 to i8
  store i8 %157, i8* %14, align 1, !tbaa !2448
  %158 = lshr i64 %140, 63
  %159 = xor i64 %156, %158
  %160 = add nuw nsw i64 %159, %156
  %161 = icmp eq i64 %160, 2
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %15, align 1, !tbaa !2449
  %163 = add i64 %207, 5
  store i64 %163, i64* %PC, align 8
  %164 = add i64 %140, 40
  %165 = inttoptr i64 %141 to i64*
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %RBP, align 8, !tbaa !2428
  store i64 %164, i64* %RSP, align 8, !tbaa !2428
  %167 = add i64 %207, 6
  store i64 %167, i64* %PC, align 8
  %168 = inttoptr i64 %164 to i64*
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %PC, align 8, !tbaa !2428
  %170 = add i64 %140, 48
  store i64 %170, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400b6d:                                     ; preds = %block_400b82, %block_400b40
  %171 = phi i64 [ %.pre, %block_400b40 ], [ %139, %block_400b82 ]
  %MEMORY.0 = phi %struct.Memory* [ %31, %block_400b40 ], [ %51, %block_400b82 ]
  %172 = load i64, i64* %RBP, align 8
  %173 = add i64 %172, -12
  %174 = add i64 %171, 3
  store i64 %174, i64* %PC, align 8
  %175 = inttoptr i64 %173 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = zext i32 %176 to i64
  store i64 %177, i64* %RAX, align 8, !tbaa !2428
  %178 = load i32, i32* bitcast (%reg_len_type* @reg_len to i32*), align 8
  %179 = add i32 %178, 1
  %180 = zext i32 %179 to i64
  store i64 %180, i64* %RCX, align 8, !tbaa !2428
  %181 = lshr i32 %179, 31
  %182 = sub i32 %176, %179
  %183 = icmp ult i32 %176, %179
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %10, align 1, !tbaa !2432
  %185 = and i32 %182, 255
  %186 = tail call i32 @llvm.ctpop.i32(i32 %185) #9
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  %189 = xor i8 %188, 1
  store i8 %189, i8* %11, align 1, !tbaa !2446
  %190 = xor i32 %179, %176
  %191 = xor i32 %190, %182
  %192 = lshr i32 %191, 4
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  store i8 %194, i8* %12, align 1, !tbaa !2450
  %195 = icmp eq i32 %182, 0
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %13, align 1, !tbaa !2447
  %197 = lshr i32 %182, 31
  %198 = trunc i32 %197 to i8
  store i8 %198, i8* %14, align 1, !tbaa !2448
  %199 = lshr i32 %176, 31
  %200 = xor i32 %181, %199
  %201 = xor i32 %197, %199
  %202 = add nuw nsw i32 %201, %200
  %203 = icmp eq i32 %202, 2
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %15, align 1, !tbaa !2449
  %205 = icmp ne i8 %198, 0
  %206 = xor i1 %205, %203
  %.v = select i1 %206, i64 21, i64 108
  %207 = add i64 %171, %.v
  store i64 %207, i64* %PC, align 8, !tbaa !2428
  br i1 %206, label %block_400b82, label %block_400bd9
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4006d0__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_4006d0:
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
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400780_frame_dummy() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400780;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400780_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400780_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400750___do_global_dtors_aux() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400750;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400750___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400750___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401090___libc_csu_fini() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401090;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_401090___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401090___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401020___libc_csu_init() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401020;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_401020___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401020___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400790;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_400790_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020a0___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602110_lrand48(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400660_seed48(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @seed48 to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602090_printf(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400680___isoc99_sscanf(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @__isoc99_sscanf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020d8_strlen(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020d0_strcpy(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602078_free(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400670_malloc(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400650_memset(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4005e8;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_4005e8__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @simulate() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400c20;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @simulate_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400c20_simulate(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401094;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_401094__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @create_link_list() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400b40;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @create_link_list_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400b40_create_link_list(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @init() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400be0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @11, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @init_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400be0_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @kill_list() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400fd0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @12, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @kill_list_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400fd0_kill_list(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #9 {
  tail call void @callback_sub_401090___libc_csu_fini()
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
  tail call void @callback_sub_401020___libc_csu_init()
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
attributes #10 = { norecurse nounwind }
attributes #11 = { noinline nounwind }
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
!2447 = !{!2433, !2430, i64 2071}
!2448 = !{!2433, !2430, i64 2073}
!2449 = !{!2433, !2430, i64 2077}
!2450 = !{!2433, !2430, i64 2069}
!2451 = !{!2452, !2452, i64 0}
!2452 = !{!"double", !2430, i64 0}
!2453 = !{!2430, !2430, i64 0}
!2454 = !{!2445, !2445, i64 0}
