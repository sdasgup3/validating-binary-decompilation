; ModuleID = 'binary/test.mcsema.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_401620__rodata_type = type <{ [4 x i8], [33 x i8], [26 x i8], [33 x i8], [23 x i8], [7 x i8], [35 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602050__data_type = type <{ [16 x i8], [8 x i8] }>
%seg_602080__bss_type = type <{ [32 x i8], [8 x i8], [8 x i8] }>
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
@stdout = external local_unnamed_addr global i64, align 128
@seg_401620__rodata = internal constant %seg_401620__rodata_type <{ [4 x i8] c"\01\00\02\00", [33 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ012345\00", [26 x i8] c"error: bit code overflow\0A\00", [33 x i8] c"error: file has only one value!\0A\00", [23 x i8] c"error: no compression\0A\00", [7 x i8] c"-ga\00%f\00", [35 x i8] c"\0Ahuffbench (Std. C) run time: %f\0A\0A\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400710_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_4006e0___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602050__data = internal global %seg_602050__data_type <{ [16 x i8] zeroinitializer, [8 x i8] c"-\05\00\00\00\00\00\00" }>
@seg_602080__bss = internal global %seg_602080__bss_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400710_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4006e0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401610___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4015a0___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @compdecomp_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @generate_test_data_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

declare %struct.Memory* @sub_4007b0_random4_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400590__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400720_generate_test_data_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401370_heap_adjust_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400670_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400870_compdecomp_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fflush(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #5

; Function Attrs: noinline
define %struct.Memory* @sub_400670_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400670:
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
  store i64 6299752, i64* %RAX, align 8, !tbaa !2428
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1, !tbaa !2432
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1, !tbaa !2446
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %12, align 1, !tbaa !2447
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
define %struct.Memory* @sub_400660__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400660:
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
define %struct.Memory* @sub_401610___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401610:
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
define %struct.Memory* @sub_401614__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401614:
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
define %struct.Memory* @sub_401470_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401470:
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
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
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
  %14 = add i64 %10, -72
  store i64 %14, i64* %RSP, align 8, !tbaa !2428
  %15 = icmp ult i64 %11, 64
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
  %42 = add i64 %10, -12
  %43 = add i64 %13, 14
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
  %58 = add i64 %57, -21
  %59 = load i64, i64* %PC, align 8
  %60 = add i64 %59, 4
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %58 to i8*
  store i8 0, i8* %61, align 1
  %62 = load i64, i64* %RBP, align 8
  %63 = add i64 %62, -8
  %64 = load i64, i64* %PC, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %63 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %67, -1
  %69 = icmp eq i32 %67, 0
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %17, align 1, !tbaa !2432
  %71 = and i32 %68, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #8
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %24, align 1, !tbaa !2446
  %76 = xor i32 %67, %68
  %77 = lshr i32 %76, 4
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  store i8 %79, i8* %29, align 1, !tbaa !2447
  %80 = icmp eq i32 %68, 0
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %32, align 1, !tbaa !2448
  %82 = lshr i32 %68, 31
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %35, align 1, !tbaa !2449
  %84 = lshr i32 %67, 31
  %85 = xor i32 %82, %84
  %86 = add nuw nsw i32 %85, %84
  %87 = icmp eq i32 %86, 2
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %41, align 1, !tbaa !2450
  %89 = icmp ne i8 %83, 0
  %90 = xor i1 %89, %87
  %91 = or i1 %80, %90
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %91, i64 91, i64 10
  %93 = add i64 %64, %.v
  store i64 %93, i64* %92, align 8, !tbaa !2428
  br i1 %91, label %block_4014e5, label %block_401494

block_4014e5:                                     ; preds = %block_4014e0, %block_401470
  %94 = phi i64 [ %93, %block_401470 ], [ %419, %block_4014e0 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_401470 ], [ %MEMORY.4, %block_4014e0 ]
  store i64 10000000, i64* %RAX, align 8, !tbaa !2428
  store i64 10000000, i64* %RDI, align 8, !tbaa !2428
  %95 = add i64 %94, -3525
  %96 = add i64 %94, 12
  %97 = load i64, i64* %9, align 8, !tbaa !2428
  %98 = add i64 %97, -8
  %99 = inttoptr i64 %98 to i64*
  store i64 %96, i64* %99, align 8
  store i64 %98, i64* %9, align 8, !tbaa !2428
  store i64 %95, i64* %92, align 8, !tbaa !2428
  %100 = tail call %struct.Memory* @sub_400720_generate_test_data_renamed_(%struct.State* nonnull %0, i64 %95, %struct.Memory* %MEMORY.0)
  %101 = load i64, i64* %RBP, align 8
  %102 = add i64 %101, -32
  %103 = load i64, i64* %RAX, align 8
  %104 = load i64, i64* %PC, align 8
  %105 = add i64 %104, 4
  store i64 %105, i64* %PC, align 8
  %106 = inttoptr i64 %102 to i64*
  store i64 %103, i64* %106, align 8
  %107 = load i64, i64* %RBP, align 8
  %108 = add i64 %107, -20
  %109 = load i64, i64* %PC, align 8
  %110 = add i64 %109, 7
  store i64 %110, i64* %PC, align 8
  %111 = inttoptr i64 %108 to i32*
  store i32 0, i32* %111, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_4014fc

block_40149b:                                     ; preds = %block_4014cd, %block_401494
  %112 = phi i64 [ %.pre, %block_401494 ], [ %252, %block_4014cd ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_401494 ], [ %297, %block_4014cd ]
  %113 = load i64, i64* %RBP, align 8
  %114 = add i64 %113, -20
  %115 = add i64 %112, 3
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %114 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %RAX, align 8, !tbaa !2428
  %119 = add i64 %113, -8
  %120 = add i64 %112, 6
  store i64 %120, i64* %PC, align 8
  %121 = inttoptr i64 %119 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = sub i32 %117, %122
  %124 = icmp ult i32 %117, %122
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %17, align 1, !tbaa !2432
  %126 = and i32 %123, 255
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126) #8
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %24, align 1, !tbaa !2446
  %131 = xor i32 %122, %117
  %132 = xor i32 %131, %123
  %133 = lshr i32 %132, 4
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  store i8 %135, i8* %29, align 1, !tbaa !2447
  %136 = icmp eq i32 %123, 0
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %32, align 1, !tbaa !2448
  %138 = lshr i32 %123, 31
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %35, align 1, !tbaa !2449
  %140 = lshr i32 %117, 31
  %141 = lshr i32 %122, 31
  %142 = xor i32 %141, %140
  %143 = xor i32 %138, %140
  %144 = add nuw nsw i32 %143, %142
  %145 = icmp eq i32 %144, 2
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %41, align 1, !tbaa !2450
  %147 = icmp ne i8 %139, 0
  %148 = xor i1 %147, %145
  %.v4 = select i1 %148, i64 12, i64 69
  %149 = add i64 %112, %.v4
  store i64 %149, i64* %92, align 8, !tbaa !2428
  br i1 %148, label %block_4014a7, label %block_4014e0

block_401586:                                     ; preds = %block_401565, %block_40153f
  %150 = phi i64 [ %.pre3, %block_401565 ], [ %221, %block_40153f ]
  %MEMORY.2 = phi %struct.Memory* [ %366, %block_401565 ], [ %213, %block_40153f ]
  %151 = load i64, i64* @stdout, align 128
  store i64 %151, i64* %RDI, align 8, !tbaa !2428
  %152 = add i64 %150, -3958
  %153 = add i64 %150, 13
  %154 = load i64, i64* %9, align 8, !tbaa !2428
  %155 = add i64 %154, -8
  %156 = inttoptr i64 %155 to i64*
  store i64 %153, i64* %156, align 8
  store i64 %155, i64* %9, align 8, !tbaa !2428
  store i64 %152, i64* %92, align 8, !tbaa !2428
  %157 = tail call fastcc %struct.Memory* @ext_6020e0_fflush(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %158 = load i64, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  %159 = load i64, i64* %RBP, align 8
  %160 = add i64 %159, -52
  %161 = load i32, i32* %EAX, align 4
  %162 = add i64 %158, 5
  store i64 %162, i64* %PC, align 8
  %163 = inttoptr i64 %160 to i32*
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* %ECX, align 4
  %165 = zext i32 %164 to i64
  %166 = load i64, i64* %PC, align 8
  store i64 %165, i64* %RAX, align 8, !tbaa !2428
  %167 = load i64, i64* %RSP, align 8
  %168 = add i64 %167, 64
  store i64 %168, i64* %RSP, align 8, !tbaa !2428
  %169 = icmp ugt i64 %167, -65
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %17, align 1, !tbaa !2432
  %171 = trunc i64 %168 to i32
  %172 = and i32 %171, 255
  %173 = tail call i32 @llvm.ctpop.i32(i32 %172) #8
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  %176 = xor i8 %175, 1
  store i8 %176, i8* %24, align 1, !tbaa !2446
  %177 = xor i64 %167, %168
  %178 = lshr i64 %177, 4
  %179 = trunc i64 %178 to i8
  %180 = and i8 %179, 1
  store i8 %180, i8* %29, align 1, !tbaa !2447
  %181 = icmp eq i64 %168, 0
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %32, align 1, !tbaa !2448
  %183 = lshr i64 %168, 63
  %184 = trunc i64 %183 to i8
  store i8 %184, i8* %35, align 1, !tbaa !2449
  %185 = lshr i64 %167, 63
  %186 = xor i64 %183, %185
  %187 = add nuw nsw i64 %186, %183
  %188 = icmp eq i64 %187, 2
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %41, align 1, !tbaa !2450
  %190 = add i64 %166, 7
  store i64 %190, i64* %PC, align 8
  %191 = add i64 %167, 72
  %192 = inttoptr i64 %168 to i64*
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %RBP, align 8, !tbaa !2428
  store i64 %191, i64* %9, align 8, !tbaa !2428
  %194 = add i64 %166, 8
  store i64 %194, i64* %PC, align 8
  %195 = inttoptr i64 %191 to i64*
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %92, align 8, !tbaa !2428
  %197 = add i64 %167, 80
  store i64 %197, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %157

block_401494:                                     ; preds = %block_401470
  %198 = add i64 %62, -20
  %199 = add i64 %93, 7
  store i64 %199, i64* %PC, align 8
  %200 = inttoptr i64 %198 to i32*
  store i32 1, i32* %200, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_40149b

block_40153f:                                     ; preds = %block_401524
  store i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 123), i64* %RSI, align 8, !tbaa !2428
  %201 = load i64, i64* @stdout, align 128
  store i64 %201, i64* %RDI, align 8, !tbaa !2428
  %202 = add i64 %403, -40
  %203 = add i64 %416, 23
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %202 to i64*
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %205, i64* %206, align 1, !tbaa !2451
  %207 = bitcast i64* %379 to double*
  store double 0.000000e+00, double* %207, align 1, !tbaa !2451
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %208 = add i64 %416, -3919
  %209 = add i64 %416, 30
  %210 = load i64, i64* %9, align 8, !tbaa !2428
  %211 = add i64 %210, -8
  %212 = inttoptr i64 %211 to i64*
  store i64 %209, i64* %212, align 8
  store i64 %211, i64* %9, align 8, !tbaa !2428
  store i64 %208, i64* %92, align 8, !tbaa !2428
  %213 = tail call fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %402)
  %214 = load i64, i64* %RBP, align 8
  %215 = add i64 %214, -44
  %216 = load i32, i32* %EAX, align 4
  %217 = load i64, i64* %PC, align 8
  %218 = add i64 %217, 3
  store i64 %218, i64* %PC, align 8
  %219 = inttoptr i64 %215 to i32*
  store i32 %216, i32* %219, align 4
  %220 = load i64, i64* %PC, align 8
  %221 = add i64 %220, 38
  store i64 %221, i64* %92, align 8, !tbaa !2428
  br label %block_401586

block_4014cd:                                     ; preds = %block_4014a7
  %222 = add i64 %310, -20
  %223 = add i64 %309, 8
  store i64 %223, i64* %PC, align 8
  %224 = inttoptr i64 %222 to i32*
  %225 = load i32, i32* %224, align 4
  %226 = add i32 %225, 1
  %227 = zext i32 %226 to i64
  store i64 %227, i64* %RAX, align 8, !tbaa !2428
  %228 = icmp eq i32 %225, -1
  %229 = icmp eq i32 %226, 0
  %230 = or i1 %228, %229
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %17, align 1, !tbaa !2432
  %232 = and i32 %226, 255
  %233 = tail call i32 @llvm.ctpop.i32(i32 %232) #8
  %234 = trunc i32 %233 to i8
  %235 = and i8 %234, 1
  %236 = xor i8 %235, 1
  store i8 %236, i8* %24, align 1, !tbaa !2446
  %237 = xor i32 %225, %226
  %238 = lshr i32 %237, 4
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  store i8 %240, i8* %29, align 1, !tbaa !2447
  %241 = icmp eq i32 %226, 0
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %32, align 1, !tbaa !2448
  %243 = lshr i32 %226, 31
  %244 = trunc i32 %243 to i8
  store i8 %244, i8* %35, align 1, !tbaa !2449
  %245 = lshr i32 %225, 31
  %246 = xor i32 %243, %245
  %247 = add nuw nsw i32 %246, %243
  %248 = icmp eq i32 %247, 2
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %41, align 1, !tbaa !2450
  %250 = add i64 %309, 14
  store i64 %250, i64* %PC, align 8
  store i32 %226, i32* %224, align 4
  %251 = load i64, i64* %PC, align 8
  %252 = add i64 %251, -64
  store i64 %252, i64* %92, align 8, !tbaa !2428
  br label %block_40149b

block_4014fc:                                     ; preds = %block_401506, %block_4014e5
  %253 = phi i64 [ %.pre2, %block_4014e5 ], [ %353, %block_401506 ]
  %MEMORY.3 = phi %struct.Memory* [ %100, %block_4014e5 ], [ %320, %block_401506 ]
  %254 = load i64, i64* %RBP, align 8
  %255 = add i64 %254, -20
  %256 = add i64 %253, 4
  store i64 %256, i64* %PC, align 8
  %257 = inttoptr i64 %255 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = add i32 %258, -30
  %260 = icmp ult i32 %258, 30
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %17, align 1, !tbaa !2432
  %262 = and i32 %259, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262) #8
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %24, align 1, !tbaa !2446
  %267 = xor i32 %258, 16
  %268 = xor i32 %267, %259
  %269 = lshr i32 %268, 4
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  store i8 %271, i8* %29, align 1, !tbaa !2447
  %272 = icmp eq i32 %259, 0
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %32, align 1, !tbaa !2448
  %274 = lshr i32 %259, 31
  %275 = trunc i32 %274 to i8
  store i8 %275, i8* %35, align 1, !tbaa !2449
  %276 = lshr i32 %258, 31
  %277 = xor i32 %274, %276
  %278 = add nuw nsw i32 %277, %276
  %279 = icmp eq i32 %278, 2
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %41, align 1, !tbaa !2450
  %281 = icmp ne i8 %275, 0
  %282 = xor i1 %281, %279
  %.v6 = select i1 %282, i64 10, i64 40
  %283 = add i64 %253, %.v6
  store i64 %283, i64* %92, align 8, !tbaa !2428
  br i1 %282, label %block_401506, label %block_401524

block_4014a7:                                     ; preds = %block_40149b
  %284 = add i64 %113, -16
  %285 = add i64 %149, 4
  store i64 %285, i64* %PC, align 8
  %286 = inttoptr i64 %284 to i64*
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %RAX, align 8, !tbaa !2428
  %288 = add i64 %287, 8
  %289 = add i64 %149, 8
  store i64 %289, i64* %PC, align 8
  %290 = inttoptr i64 %288 to i64*
  %291 = load i64, i64* %290, align 8
  store i64 %291, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 119), i64 4294967295), i64* %RCX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 119), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %292 = add i64 %149, -3783
  %293 = add i64 %149, 20
  %294 = load i64, i64* %9, align 8, !tbaa !2428
  %295 = add i64 %294, -8
  %296 = inttoptr i64 %295 to i64*
  store i64 %293, i64* %296, align 8
  store i64 %295, i64* %9, align 8, !tbaa !2428
  store i64 %292, i64* %92, align 8, !tbaa !2428
  %297 = tail call fastcc %struct.Memory* @ext_4005e0_strcmp(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %298 = load i32, i32* %EAX, align 4
  %299 = load i64, i64* %PC, align 8
  store i8 0, i8* %17, align 1, !tbaa !2432
  %300 = and i32 %298, 255
  %301 = tail call i32 @llvm.ctpop.i32(i32 %300) #8
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = xor i8 %303, 1
  store i8 %304, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %305 = icmp eq i32 %298, 0
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %32, align 1, !tbaa !2448
  %307 = lshr i32 %298, 31
  %308 = trunc i32 %307 to i8
  store i8 %308, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %.v5 = select i1 %305, i64 9, i64 18
  %309 = add i64 %299, %.v5
  store i64 %309, i64* %92, align 8, !tbaa !2428
  %310 = load i64, i64* %RBP, align 8
  br i1 %305, label %block_4014c4, label %block_4014cd

block_401506:                                     ; preds = %block_4014fc
  store i64 10000000, i64* %RAX, align 8, !tbaa !2428
  store i64 10000000, i64* %RSI, align 8, !tbaa !2428
  %311 = add i64 %254, -32
  %312 = add i64 %283, 11
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %311 to i64*
  %314 = load i64, i64* %313, align 8
  store i64 %314, i64* %RDI, align 8, !tbaa !2428
  %315 = add i64 %283, -3222
  %316 = add i64 %283, 16
  %317 = load i64, i64* %9, align 8, !tbaa !2428
  %318 = add i64 %317, -8
  %319 = inttoptr i64 %318 to i64*
  store i64 %316, i64* %319, align 8
  store i64 %318, i64* %9, align 8, !tbaa !2428
  store i64 %315, i64* %92, align 8, !tbaa !2428
  %320 = tail call %struct.Memory* @sub_400870_compdecomp_renamed_(%struct.State* nonnull %0, i64 %315, %struct.Memory* %MEMORY.3)
  %321 = load i64, i64* %RBP, align 8
  %322 = add i64 %321, -20
  %323 = load i64, i64* %PC, align 8
  %324 = add i64 %323, 3
  store i64 %324, i64* %PC, align 8
  %325 = inttoptr i64 %322 to i32*
  %326 = load i32, i32* %325, align 4
  %327 = add i32 %326, 1
  %328 = zext i32 %327 to i64
  store i64 %328, i64* %RAX, align 8, !tbaa !2428
  %329 = icmp eq i32 %326, -1
  %330 = icmp eq i32 %327, 0
  %331 = or i1 %329, %330
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %17, align 1, !tbaa !2432
  %333 = and i32 %327, 255
  %334 = tail call i32 @llvm.ctpop.i32(i32 %333) #8
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  %337 = xor i8 %336, 1
  store i8 %337, i8* %24, align 1, !tbaa !2446
  %338 = xor i32 %326, %327
  %339 = lshr i32 %338, 4
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  store i8 %341, i8* %29, align 1, !tbaa !2447
  %342 = icmp eq i32 %327, 0
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %32, align 1, !tbaa !2448
  %344 = lshr i32 %327, 31
  %345 = trunc i32 %344 to i8
  store i8 %345, i8* %35, align 1, !tbaa !2449
  %346 = lshr i32 %326, 31
  %347 = xor i32 %344, %346
  %348 = add nuw nsw i32 %347, %344
  %349 = icmp eq i32 %348, 2
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %41, align 1, !tbaa !2450
  %351 = add i64 %323, 9
  store i64 %351, i64* %PC, align 8
  store i32 %327, i32* %325, align 4
  %352 = load i64, i64* %PC, align 8
  %353 = add i64 %352, -35
  store i64 %353, i64* %92, align 8, !tbaa !2428
  br label %block_4014fc

block_401565:                                     ; preds = %block_401524
  store i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 126), i64* %RSI, align 8, !tbaa !2428
  %354 = load i64, i64* @stdout, align 128
  store i64 %354, i64* %RDI, align 8, !tbaa !2428
  %355 = add i64 %403, -40
  %356 = add i64 %416, 23
  store i64 %356, i64* %PC, align 8
  %357 = inttoptr i64 %355 to i64*
  %358 = load i64, i64* %357, align 8
  %359 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %358, i64* %359, align 1, !tbaa !2451
  %360 = bitcast i64* %379 to double*
  store double 0.000000e+00, double* %360, align 1, !tbaa !2451
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %361 = add i64 %416, -3957
  %362 = add i64 %416, 30
  %363 = load i64, i64* %9, align 8, !tbaa !2428
  %364 = add i64 %363, -8
  %365 = inttoptr i64 %364 to i64*
  store i64 %362, i64* %365, align 8
  store i64 %364, i64* %9, align 8, !tbaa !2428
  store i64 %361, i64* %92, align 8, !tbaa !2428
  %366 = tail call fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %402)
  %367 = load i64, i64* %RBP, align 8
  %368 = add i64 %367, -48
  %369 = load i32, i32* %EAX, align 4
  %370 = load i64, i64* %PC, align 8
  %371 = add i64 %370, 3
  store i64 %371, i64* %PC, align 8
  %372 = inttoptr i64 %368 to i32*
  store i32 %369, i32* %372, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_401586

block_4014c4:                                     ; preds = %block_4014a7
  %373 = add i64 %310, -21
  %374 = add i64 %309, 4
  store i64 %374, i64* %PC, align 8
  %375 = inttoptr i64 %373 to i8*
  store i8 1, i8* %375, align 1
  %376 = load i64, i64* %PC, align 8
  %377 = add i64 %376, 24
  store i64 %377, i64* %92, align 8, !tbaa !2428
  br label %block_4014e0

block_401524:                                     ; preds = %block_4014fc
  %378 = bitcast %union.VectorReg* %6 to i8*
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %380 = bitcast %union.VectorReg* %6 to i32*
  store i32 0, i32* %380, align 1, !tbaa !2454
  %381 = getelementptr inbounds i8, i8* %378, i64 4
  %382 = bitcast i8* %381 to i32*
  store i32 0, i32* %382, align 1, !tbaa !2454
  %383 = bitcast i64* %379 to i32*
  store i32 0, i32* %383, align 1, !tbaa !2454
  %384 = getelementptr inbounds i8, i8* %378, i64 12
  %385 = bitcast i8* %384 to i32*
  store i32 0, i32* %385, align 1, !tbaa !2454
  %386 = add i64 %254, -40
  %387 = add i64 %283, 8
  store i64 %387, i64* %PC, align 8
  %388 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  %389 = load i64, i64* %388, align 1
  %390 = inttoptr i64 %386 to i64*
  store i64 %389, i64* %390, align 8
  %391 = load i64, i64* %RBP, align 8
  %392 = add i64 %391, -32
  %393 = load i64, i64* %PC, align 8
  %394 = add i64 %393, 4
  store i64 %394, i64* %PC, align 8
  %395 = inttoptr i64 %392 to i64*
  %396 = load i64, i64* %395, align 8
  store i64 %396, i64* %RDI, align 8, !tbaa !2428
  %397 = add i64 %393, -3948
  %398 = add i64 %393, 9
  %399 = load i64, i64* %9, align 8, !tbaa !2428
  %400 = add i64 %399, -8
  %401 = inttoptr i64 %400 to i64*
  store i64 %398, i64* %401, align 8
  store i64 %400, i64* %9, align 8, !tbaa !2428
  store i64 %397, i64* %92, align 8, !tbaa !2428
  %402 = tail call fastcc %struct.Memory* @ext_6020f0_free(%struct.State* nonnull %0, %struct.Memory* %MEMORY.3)
  %403 = load i64, i64* %RBP, align 8
  %404 = add i64 %403, -21
  %405 = load i64, i64* %PC, align 8
  %406 = add i64 %405, 4
  store i64 %406, i64* %PC, align 8
  %407 = inttoptr i64 %404 to i8*
  %408 = load i8, i8* %407, align 1
  %409 = and i8 %408, 1
  store i8 0, i8* %17, align 1, !tbaa !2432
  %410 = zext i8 %409 to i32
  %411 = tail call i32 @llvm.ctpop.i32(i32 %410) #8
  %412 = trunc i32 %411 to i8
  %413 = xor i8 %412, 1
  store i8 %413, i8* %24, align 1, !tbaa !2446
  %414 = icmp eq i8 %409, 0
  %415 = xor i8 %409, 1
  store i8 %415, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %.v7 = select i1 %414, i64 48, i64 10
  %416 = add i64 %405, %.v7
  %417 = add i64 %416, 10
  store i64 %417, i64* %PC, align 8
  br i1 %414, label %block_401565, label %block_40153f

block_4014e0:                                     ; preds = %block_40149b, %block_4014c4
  %418 = phi i64 [ %377, %block_4014c4 ], [ %149, %block_40149b ]
  %MEMORY.4 = phi %struct.Memory* [ %297, %block_4014c4 ], [ %MEMORY.1, %block_40149b ]
  %419 = add i64 %418, 5
  store i64 %419, i64* %92, align 8, !tbaa !2428
  br label %block_4014e5
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007b0_random4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4007b0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
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
  store i64 127773, i64* %RCX, align 8, !tbaa !2428
  %10 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  %11 = xor i64 %10, 123459876
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1, !tbaa !2432
  %13 = trunc i64 %11 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14) #8
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1, !tbaa !2446
  %20 = icmp eq i64 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1, !tbaa !2448
  %23 = lshr i64 %10, 63
  %24 = trunc i64 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1, !tbaa !2449
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1, !tbaa !2450
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1, !tbaa !2447
  store i64 %11, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  store i64 %11, i64* %RAX, align 8, !tbaa !2428
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %30 = ashr i64 %10, 63
  store i64 %30, i64* %28, align 8, !tbaa !2428
  %31 = add i64 %9, 46
  store i64 %31, i64* %PC, align 8
  %32 = zext i64 %30 to i128
  %33 = shl nuw i128 %32, 64
  %34 = zext i64 %11 to i128
  %35 = or i128 %33, %34
  %36 = sdiv i128 %35, 127773
  %37 = trunc i128 %36 to i64
  %38 = and i128 %36, 18446744073709551615
  %39 = sext i64 %37 to i128
  %40 = and i128 %39, -18446744073709551616
  %41 = or i128 %40, %38
  %42 = icmp eq i128 %36, %41
  br i1 %42, label %45, label %43

; <label>:43:                                     ; preds = %block_4007b0
  %44 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %31, %struct.Memory* %2) #9
  %.pre = load i64, i64* %RBP, align 8
  %.pre1 = load i64, i64* %RAX, align 8
  %.pre2 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1

; <label>:45:                                     ; preds = %block_4007b0
  %46 = srem i128 %35, 127773
  %47 = trunc i128 %46 to i64
  store i64 %37, i64* %29, align 8, !tbaa !2428
  store i64 %47, i64* %28, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 0, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  store i8 0, i8* %22, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1: ; preds = %45, %43
  %48 = phi i64 [ %.pre2, %43 ], [ %31, %45 ]
  %49 = phi i64 [ %.pre1, %43 ], [ %37, %45 ]
  %50 = phi i64 [ %.pre, %43 ], [ %7, %45 ]
  %51 = phi %struct.Memory* [ %44, %43 ], [ %2, %45 ]
  %.pre-phi = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %52 = add i64 %50, -8
  %53 = add i64 %48, 4
  store i64 %53, i64* %PC, align 8
  %54 = inttoptr i64 %52 to i64*
  store i64 %49, i64* %54, align 8
  %55 = load i64, i64* %PC, align 8
  %56 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  store i64 %56, i64* %RAX, align 8, !tbaa !2428
  %57 = load i64, i64* %RBP, align 8
  %58 = add i64 %57, -8
  %59 = add i64 %55, 16
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %58 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = mul i64 %61, 127773
  store i64 %62, i64* %RCX, align 8, !tbaa !2428
  %63 = sub i64 %56, %62
  %64 = sext i64 %63 to i128
  %65 = and i128 %64, -18446744073709551616
  %66 = zext i64 %63 to i128
  %67 = or i128 %65, %66
  %68 = mul nsw i128 %67, 16807
  %69 = trunc i128 %68 to i64
  store i64 %69, i64* %RAX, align 8, !tbaa !2428
  %70 = sext i64 %69 to i128
  %71 = icmp ne i128 %70, %68
  %72 = zext i1 %71 to i8
  store i8 %72, i8* %12, align 1, !tbaa !2432
  %73 = trunc i128 %68 to i32
  %74 = and i32 %73, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74) #8
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  store i8 0, i8* %22, align 1, !tbaa !2448
  %79 = lshr i64 %69, 63
  %80 = trunc i64 %79 to i8
  store i8 %80, i8* %25, align 1, !tbaa !2449
  store i8 %72, i8* %26, align 1, !tbaa !2450
  %81 = add i64 %55, 34
  store i64 %81, i64* %PC, align 8
  %82 = load i64, i64* %60, align 8
  %83 = mul i64 %82, 2836
  store i64 %83, i64* %RCX, align 8, !tbaa !2428
  %84 = sub i64 %69, %83
  store i64 %84, i64* %RAX, align 8, !tbaa !2428
  %85 = trunc i64 %84 to i32
  %86 = and i32 %85, 255
  %87 = tail call i32 @llvm.ctpop.i32(i32 %86) #8
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  %90 = xor i8 %89, 1
  %91 = icmp eq i64 %84, 0
  %92 = zext i1 %91 to i8
  %93 = lshr i64 %84, 63
  %94 = trunc i64 %93 to i8
  store i64 %84, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 %90, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  store i8 %92, i8* %22, align 1, !tbaa !2448
  store i8 %94, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  %95 = icmp ne i8 %94, 0
  %.v = select i1 %95, i64 60, i64 82
  %96 = add i64 %55, %.v
  store i64 %96, i64* %.pre-phi, align 8, !tbaa !2428
  br i1 %95, label %block_40081f, label %block_400835

block_40081f:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1
  %97 = add i64 %84, 2147483647
  store i64 %97, i64* %RAX, align 8, !tbaa !2428
  %98 = icmp ugt i64 %84, -2147483648
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %12, align 1, !tbaa !2432
  %100 = trunc i64 %97 to i32
  %101 = and i32 %100, 255
  %102 = tail call i32 @llvm.ctpop.i32(i32 %101) #8
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  %105 = xor i8 %104, 1
  store i8 %105, i8* %19, align 1, !tbaa !2446
  %106 = xor i64 %84, 16
  %107 = xor i64 %106, %97
  %108 = lshr i64 %107, 4
  %109 = trunc i64 %108 to i8
  %110 = and i8 %109, 1
  store i8 %110, i8* %27, align 1, !tbaa !2447
  %111 = icmp eq i64 %97, 0
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %22, align 1, !tbaa !2448
  %113 = lshr i64 %97, 63
  %114 = trunc i64 %113 to i8
  store i8 %114, i8* %25, align 1, !tbaa !2449
  %115 = xor i64 %113, %93
  %116 = add nuw nsw i64 %115, %113
  %117 = icmp eq i64 %116, 2
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %26, align 1, !tbaa !2450
  %119 = add i64 %96, 22
  store i64 %119, i64* %PC, align 8
  store i64 %97, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  br label %block_400835

block_400835:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1, %block_40081f
  %120 = phi i64 [ %97, %block_40081f ], [ %84, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1 ]
  %121 = phi i64 [ %119, %block_40081f ], [ %96, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1 ]
  store i64 32, i64* %RCX, align 8, !tbaa !2428
  store i64 %120, i64* %RAX, align 8, !tbaa !2428
  %122 = ashr i64 %120, 63
  store i64 %122, i64* %28, align 8, !tbaa !2428
  %123 = add i64 %121, 20
  store i64 %123, i64* %PC, align 8
  %124 = zext i64 %122 to i128
  %125 = shl nuw i128 %124, 64
  %126 = zext i64 %120 to i128
  %127 = or i128 %125, %126
  %128 = sdiv i128 %127, 32
  %129 = trunc i128 %128 to i64
  %130 = and i128 %128, 18446744073709551615
  %131 = sext i64 %129 to i128
  %132 = and i128 %131, -18446744073709551616
  %133 = or i128 %132, %130
  %134 = icmp eq i128 %128, %133
  br i1 %134, label %137, label %135

; <label>:135:                                    ; preds = %block_400835
  %136 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %123, %struct.Memory* %51) #9
  %.pre3 = load i64, i64* %RDX, align 8
  %.pre4 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:137:                                    ; preds = %block_400835
  %138 = srem i128 %127, 32
  %139 = trunc i128 %138 to i64
  store i64 %129, i64* %29, align 8, !tbaa !2428
  store i64 %139, i64* %28, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 0, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  store i8 0, i8* %22, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %137, %135
  %140 = phi i64 [ %.pre4, %135 ], [ %123, %137 ]
  %141 = phi i64 [ %.pre3, %135 ], [ %139, %137 ]
  %142 = phi %struct.Memory* [ %136, %135 ], [ %51, %137 ]
  %143 = load i64, i64* %RBP, align 8
  %144 = add i64 %143, -16
  %145 = add i64 %140, 4
  store i64 %145, i64* %PC, align 8
  %146 = inttoptr i64 %144 to i64*
  store i64 %141, i64* %146, align 8
  %147 = load i64, i64* %PC, align 8
  %148 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  %149 = xor i64 %148, 123459876
  store i64 %149, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  %150 = trunc i64 %149 to i32
  %151 = and i32 %150, 255
  %152 = tail call i32 @llvm.ctpop.i32(i32 %151) #8
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  %155 = xor i8 %154, 1
  store i8 %155, i8* %19, align 1, !tbaa !2446
  %156 = icmp eq i64 %149, 0
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %22, align 1, !tbaa !2448
  %158 = lshr i64 %148, 63
  %159 = trunc i64 %158 to i8
  store i8 %159, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  store i8 0, i8* %27, align 1, !tbaa !2447
  store i64 %149, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  %160 = load i64, i64* %RBP, align 8
  %161 = add i64 %160, -16
  %162 = add i64 %147, 27
  store i64 %162, i64* %PC, align 8
  %163 = inttoptr i64 %161 to i64*
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %RCX, align 8, !tbaa !2428
  store i64 %164, i64* %RAX, align 8, !tbaa !2428
  %165 = add i64 %147, 31
  store i64 %165, i64* %PC, align 8
  %166 = load i64, i64* %5, align 8, !tbaa !2428
  %167 = add i64 %166, 8
  %168 = inttoptr i64 %166 to i64*
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %RBP, align 8, !tbaa !2428
  store i64 %167, i64* %5, align 8, !tbaa !2428
  %170 = add i64 %147, 32
  store i64 %170, i64* %PC, align 8
  %171 = inttoptr i64 %167 to i64*
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %.pre-phi, align 8, !tbaa !2428
  %173 = add i64 %166, 16
  store i64 %173, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %142
}

; Function Attrs: noinline
define %struct.Memory* @sub_400590__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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
  br i1 %18, label %block_400590.block_4005a2_crit_edge, label %block_4005a0

block_400590.block_4005a2_crit_edge:              ; preds = %block_400590
  %.pre2 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  br label %block_4005a2

block_4005a0:                                     ; preds = %block_400590
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
  br label %block_4005a2

block_4005a2:                                     ; preds = %block_400590.block_4005a2_crit_edge, %block_4005a0
  %.pre-phi = phi i64* [ %.pre2, %block_400590.block_4005a2_crit_edge ], [ %25, %block_4005a0 ]
  %29 = phi i64 [ %23, %block_400590.block_4005a2_crit_edge ], [ %.pre1, %block_4005a0 ]
  %30 = phi i64 [ %4, %block_400590.block_4005a2_crit_edge ], [ %.pre, %block_4005a0 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400590.block_4005a2_crit_edge ], [ %28, %block_4005a0 ]
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
define %struct.Memory* @sub_4006a0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4006a0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 6299752, i64* %RSI, align 8, !tbaa !2428
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
  %11 = add i64 %9, -6299752
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
  br i1 %30, label %block_4006d8, label %block_4006c3

block_4006d8:                                     ; preds = %block_4006c3, %block_4006a0
  %36 = phi i64 [ %46, %block_4006c3 ], [ %35, %block_4006a0 ]
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

block_4006c3:                                     ; preds = %block_4006a0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 1, i8* %13, align 1, !tbaa !2446
  store i8 1, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %14, align 1, !tbaa !2447
  %46 = add i64 %35, 21
  store i64 %46, i64* %34, align 8, !tbaa !2428
  br label %block_4006d8
}

; Function Attrs: noinline
define %struct.Memory* @sub_401370_heap_adjust(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401370:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %5 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %1, 1
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !2428
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %6, i64* %11, align 8
  store i64 %10, i64* %8, align 8, !tbaa !2428
  %12 = load i64, i64* %PC, align 8
  store i64 %10, i64* %RBP, align 8, !tbaa !2428
  %13 = add i64 %9, -16
  %14 = load i64, i64* %RDI, align 8
  %15 = add i64 %12, 7
  store i64 %15, i64* %PC, align 8
  %16 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* %RBP, align 8
  %18 = add i64 %17, -16
  %19 = load i64, i64* %RSI, align 8
  %20 = load i64, i64* %PC, align 8
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC, align 8
  %22 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %22, align 8
  %23 = load i64, i64* %RBP, align 8
  %24 = add i64 %23, -20
  %25 = load i32, i32* %EDX, align 4
  %26 = load i64, i64* %PC, align 8
  %27 = add i64 %26, 3
  store i64 %27, i64* %PC, align 8
  %28 = inttoptr i64 %24 to i32*
  store i32 %25, i32* %28, align 4
  %29 = load i64, i64* %RBP, align 8
  %30 = add i64 %29, -24
  %31 = load i32, i32* %ECX, align 4
  %32 = load i64, i64* %PC, align 8
  %33 = add i64 %32, 3
  store i64 %33, i64* %PC, align 8
  %34 = inttoptr i64 %30 to i32*
  store i32 %31, i32* %34, align 4
  %35 = load i64, i64* %RBP, align 8
  %36 = add i64 %35, -16
  %37 = load i64, i64* %PC, align 8
  %38 = add i64 %37, 4
  store i64 %38, i64* %PC, align 8
  %39 = inttoptr i64 %36 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, -8
  store i64 %41, i64* %RSI, align 8, !tbaa !2428
  %42 = icmp ugt i64 %40, 7
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %43, i8* %44, align 1, !tbaa !2432
  %45 = trunc i64 %41 to i32
  %46 = and i32 %45, 255
  %47 = tail call i32 @llvm.ctpop.i32(i32 %46) #8
  %48 = trunc i32 %47 to i8
  %49 = and i8 %48, 1
  %50 = xor i8 %49, 1
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %50, i8* %51, align 1, !tbaa !2446
  %52 = xor i64 %40, 16
  %53 = xor i64 %52, %41
  %54 = lshr i64 %53, 4
  %55 = trunc i64 %54 to i8
  %56 = and i8 %55, 1
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %56, i8* %57, align 1, !tbaa !2447
  %58 = icmp eq i64 %41, 0
  %59 = zext i1 %58 to i8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %59, i8* %60, align 1, !tbaa !2448
  %61 = lshr i64 %41, 63
  %62 = trunc i64 %61 to i8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %62, i8* %63, align 1, !tbaa !2449
  %64 = lshr i64 %40, 63
  %65 = xor i64 %61, %64
  %66 = xor i64 %61, 1
  %67 = add nuw nsw i64 %65, %66
  %68 = icmp eq i64 %67, 2
  %69 = zext i1 %68 to i8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %69, i8* %70, align 1, !tbaa !2450
  %71 = add i64 %37, 12
  store i64 %71, i64* %PC, align 8
  store i64 %41, i64* %39, align 8
  %72 = load i64, i64* %RBP, align 8
  %73 = add i64 %72, -16
  %74 = load i64, i64* %PC, align 8
  %75 = add i64 %74, 4
  store i64 %75, i64* %PC, align 8
  %76 = inttoptr i64 %73 to i64*
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %RSI, align 8, !tbaa !2428
  %78 = add i64 %72, -24
  %79 = add i64 %74, 8
  store i64 %79, i64* %PC, align 8
  %80 = inttoptr i64 %78 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %RDI, align 8, !tbaa !2428
  %83 = shl nsw i64 %82, 3
  %84 = add i64 %83, %77
  %85 = add i64 %74, 12
  store i64 %85, i64* %PC, align 8
  %86 = inttoptr i64 %84 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %RSI, align 8, !tbaa !2428
  %88 = and i64 %87, 4294967295
  store i64 %88, i64* %RCX, align 8, !tbaa !2428
  %89 = add i64 %72, -32
  %90 = trunc i64 %87 to i32
  %91 = add i64 %74, 17
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %89 to i32*
  store i32 %90, i32* %92, align 4
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_40139f

block_40145c:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_401434
  %97 = phi i64 [ %233, %block_401434 ], [ %199, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %98 = phi i64 [ %399, %block_401434 ], [ %.pre5, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %99 = add i64 %98, -32
  %100 = add i64 %97, 4
  store i64 %100, i64* %PC, align 8
  %101 = inttoptr i64 %99 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %RAX, align 8, !tbaa !2428
  %104 = add i64 %98, -16
  %105 = add i64 %97, 8
  store i64 %105, i64* %PC, align 8
  %106 = inttoptr i64 %104 to i64*
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %RCX, align 8, !tbaa !2428
  %108 = add i64 %98, -24
  %109 = add i64 %97, 12
  store i64 %109, i64* %PC, align 8
  %110 = inttoptr i64 %108 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %RDX, align 8, !tbaa !2428
  %113 = shl nsw i64 %112, 3
  %114 = add i64 %113, %107
  %115 = add i64 %97, 16
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %114 to i64*
  store i64 %103, i64* %116, align 8
  %117 = load i64, i64* %PC, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %PC, align 8
  %119 = load i64, i64* %8, align 8, !tbaa !2428
  %120 = add i64 %119, 8
  %121 = inttoptr i64 %119 to i64*
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %RBP, align 8, !tbaa !2428
  store i64 %120, i64* %8, align 8, !tbaa !2428
  %123 = add i64 %117, 2
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %120 to i64*
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %96, align 8, !tbaa !2428
  %126 = add i64 %119, 16
  store i64 %126, i64* %8, align 8, !tbaa !2428
  ret %struct.Memory* %171

block_40139f:                                     ; preds = %block_401439, %block_401370
  %127 = phi i64 [ %.pre, %block_401370 ], [ %232, %block_401439 ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_401370 ], [ %171, %block_401439 ]
  store i64 2, i64* %RAX, align 8, !tbaa !2428
  %128 = load i64, i64* %RBP, align 8
  %129 = add i64 %128, -24
  %130 = add i64 %127, 8
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %129 to i32*
  %132 = load i32, i32* %131, align 4
  %133 = zext i32 %132 to i64
  store i64 %133, i64* %RCX, align 8, !tbaa !2428
  %134 = add i64 %128, -20
  %135 = add i64 %127, 11
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %134 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = zext i32 %137 to i64
  store i64 %138, i64* %RDX, align 8, !tbaa !2428
  %139 = add i64 %128, -36
  %140 = add i64 %127, 14
  store i64 %140, i64* %PC, align 8
  %141 = inttoptr i64 %139 to i32*
  store i32 2, i32* %141, align 4
  %142 = load i32, i32* %EDX, align 4
  %143 = zext i32 %142 to i64
  %144 = load i64, i64* %PC, align 8
  store i64 %143, i64* %RAX, align 8, !tbaa !2428
  %145 = sext i32 %142 to i64
  %146 = lshr i64 %145, 32
  store i64 %146, i64* %93, align 8, !tbaa !2428
  %147 = load i64, i64* %RBP, align 8
  %148 = add i64 %147, -36
  %149 = add i64 %144, 6
  store i64 %149, i64* %PC, align 8
  %150 = inttoptr i64 %148 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = zext i32 %151 to i64
  store i64 %152, i64* %RSI, align 8, !tbaa !2428
  %153 = add i64 %144, 8
  store i64 %153, i64* %PC, align 8
  %154 = zext i32 %142 to i64
  %155 = sext i32 %151 to i64
  %156 = shl nuw i64 %146, 32
  %157 = or i64 %156, %154
  %158 = sdiv i64 %157, %155
  %159 = shl i64 %158, 32
  %160 = ashr exact i64 %159, 32
  %161 = icmp eq i64 %158, %160
  br i1 %161, label %164, label %162

; <label>:162:                                    ; preds = %block_40139f
  %163 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %153, %struct.Memory* %MEMORY.1) #9
  %.pre2 = load i32, i32* %EAX, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:164:                                    ; preds = %block_40139f
  %165 = srem i64 %157, %155
  %166 = and i64 %158, 4294967295
  store i64 %166, i64* %94, align 8, !tbaa !2428
  %167 = and i64 %165, 4294967295
  store i64 %167, i64* %95, align 8, !tbaa !2428
  store i8 0, i8* %44, align 1, !tbaa !2432
  store i8 0, i8* %51, align 1, !tbaa !2446
  store i8 0, i8* %57, align 1, !tbaa !2447
  store i8 0, i8* %60, align 1, !tbaa !2448
  store i8 0, i8* %63, align 1, !tbaa !2449
  store i8 0, i8* %70, align 1, !tbaa !2450
  %168 = trunc i64 %158 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %164, %162
  %169 = phi i64 [ %.pre3, %162 ], [ %153, %164 ]
  %170 = phi i32 [ %.pre2, %162 ], [ %168, %164 ]
  %171 = phi %struct.Memory* [ %163, %162 ], [ %MEMORY.1, %164 ]
  %172 = load i32, i32* %ECX, align 4
  %173 = sub i32 %172, %170
  %174 = icmp ult i32 %172, %170
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %44, align 1, !tbaa !2432
  %176 = and i32 %173, 255
  %177 = tail call i32 @llvm.ctpop.i32(i32 %176) #8
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  %180 = xor i8 %179, 1
  store i8 %180, i8* %51, align 1, !tbaa !2446
  %181 = xor i32 %170, %172
  %182 = xor i32 %181, %173
  %183 = lshr i32 %182, 4
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  store i8 %185, i8* %57, align 1, !tbaa !2447
  %186 = icmp eq i32 %173, 0
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %60, align 1, !tbaa !2448
  %188 = lshr i32 %173, 31
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %63, align 1, !tbaa !2449
  %190 = lshr i32 %172, 31
  %191 = lshr i32 %170, 31
  %192 = xor i32 %191, %190
  %193 = xor i32 %188, %190
  %194 = add nuw nsw i32 %193, %192
  %195 = icmp eq i32 %194, 2
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %70, align 1, !tbaa !2450
  %197 = icmp ne i8 %189, 0
  %198 = xor i1 %197, %195
  %.demorgan = or i1 %186, %198
  %.v = select i1 %.demorgan, i64 8, i64 167
  %199 = add i64 %169, %.v
  store i64 %199, i64* %96, align 8, !tbaa !2428
  %.pre5 = load i64, i64* %RBP, align 8
  br i1 %.demorgan, label %block_4013bd, label %block_40145c

block_401439:                                     ; preds = %block_40140e
  %200 = add i64 %460, 4
  store i64 %200, i64* %PC, align 8
  %201 = load i64, i64* %418, align 8
  store i64 %201, i64* %RAX, align 8, !tbaa !2428
  %202 = add i64 %460, 8
  store i64 %202, i64* %PC, align 8
  %203 = load i32, i32* %422, align 4
  %204 = sext i32 %203 to i64
  store i64 %204, i64* %RCX, align 8, !tbaa !2428
  %205 = shl nsw i64 %204, 3
  %206 = add i64 %205, %201
  %207 = add i64 %460, 12
  store i64 %207, i64* %PC, align 8
  %208 = inttoptr i64 %206 to i64*
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %RAX, align 8, !tbaa !2428
  %210 = add i64 %460, 16
  store i64 %210, i64* %PC, align 8
  %211 = load i64, i64* %418, align 8
  store i64 %211, i64* %RCX, align 8, !tbaa !2428
  %212 = add i64 %399, -24
  %213 = add i64 %460, 20
  store i64 %213, i64* %PC, align 8
  %214 = inttoptr i64 %212 to i32*
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  store i64 %216, i64* %RDX, align 8, !tbaa !2428
  %217 = shl nsw i64 %216, 3
  %218 = add i64 %217, %211
  %219 = add i64 %460, 24
  store i64 %219, i64* %PC, align 8
  %220 = inttoptr i64 %218 to i64*
  store i64 %209, i64* %220, align 8
  %221 = load i64, i64* %RBP, align 8
  %222 = add i64 %221, -28
  %223 = load i64, i64* %PC, align 8
  %224 = add i64 %223, 3
  store i64 %224, i64* %PC, align 8
  %225 = inttoptr i64 %222 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = zext i32 %226 to i64
  store i64 %227, i64* %RSI, align 8, !tbaa !2428
  %228 = add i64 %221, -24
  %229 = add i64 %223, 6
  store i64 %229, i64* %PC, align 8
  %230 = inttoptr i64 %228 to i32*
  store i32 %226, i32* %230, align 4
  %231 = load i64, i64* %PC, align 8
  %232 = add i64 %231, -184
  store i64 %232, i64* %96, align 8, !tbaa !2428
  br label %block_40139f

block_401434:                                     ; preds = %block_40140e
  %233 = add i64 %460, 40
  store i64 %233, i64* %96, align 8, !tbaa !2428
  br label %block_40145c

block_4013d2:                                     ; preds = %block_4013bd
  %234 = add i64 %360, -8
  %235 = add i64 %397, 4
  store i64 %235, i64* %PC, align 8
  %236 = inttoptr i64 %234 to i64*
  %237 = load i64, i64* %236, align 8
  store i64 %237, i64* %RAX, align 8, !tbaa !2428
  %238 = add i64 %360, -16
  %239 = add i64 %397, 8
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %238 to i64*
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* %RCX, align 8, !tbaa !2428
  %242 = add i64 %397, 12
  store i64 %242, i64* %PC, align 8
  %243 = load i32, i32* %364, align 4
  %244 = sext i32 %243 to i64
  store i64 %244, i64* %RDX, align 8, !tbaa !2428
  %245 = shl nsw i64 %244, 3
  %246 = add i64 %245, %241
  %247 = add i64 %397, 16
  store i64 %247, i64* %PC, align 8
  %248 = inttoptr i64 %246 to i64*
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %RCX, align 8, !tbaa !2428
  %250 = shl i64 %249, 3
  %251 = add i64 %250, %237
  %252 = add i64 %397, 20
  store i64 %252, i64* %PC, align 8
  %253 = inttoptr i64 %251 to i64*
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %RAX, align 8, !tbaa !2428
  %255 = add i64 %397, 24
  store i64 %255, i64* %PC, align 8
  %256 = load i64, i64* %236, align 8
  store i64 %256, i64* %RCX, align 8, !tbaa !2428
  %257 = add i64 %397, 28
  store i64 %257, i64* %PC, align 8
  %258 = load i64, i64* %240, align 8
  store i64 %258, i64* %RDX, align 8, !tbaa !2428
  %259 = add i64 %397, 31
  store i64 %259, i64* %PC, align 8
  %260 = load i32, i32* %364, align 4
  %261 = add i32 %260, 1
  %262 = zext i32 %261 to i64
  store i64 %262, i64* %RSI, align 8, !tbaa !2428
  %263 = icmp eq i32 %260, -1
  %264 = icmp eq i32 %261, 0
  %265 = or i1 %263, %264
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %44, align 1, !tbaa !2432
  %267 = and i32 %261, 255
  %268 = tail call i32 @llvm.ctpop.i32(i32 %267) #8
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  store i8 %271, i8* %51, align 1, !tbaa !2446
  %272 = xor i32 %260, %261
  %273 = lshr i32 %272, 4
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  store i8 %275, i8* %57, align 1, !tbaa !2447
  %276 = icmp eq i32 %261, 0
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %60, align 1, !tbaa !2448
  %278 = lshr i32 %261, 31
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %63, align 1, !tbaa !2449
  %280 = lshr i32 %260, 31
  %281 = xor i32 %278, %280
  %282 = add nuw nsw i32 %281, %278
  %283 = icmp eq i32 %282, 2
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %70, align 1, !tbaa !2450
  %285 = sext i32 %261 to i64
  store i64 %285, i64* %RDI, align 8, !tbaa !2428
  %286 = shl nsw i64 %285, 3
  %287 = add i64 %286, %258
  %288 = add i64 %397, 41
  store i64 %288, i64* %PC, align 8
  %289 = inttoptr i64 %287 to i64*
  %290 = load i64, i64* %289, align 8
  store i64 %290, i64* %RDX, align 8, !tbaa !2428
  %291 = shl i64 %290, 3
  %292 = add i64 %291, %256
  %293 = add i64 %397, 45
  store i64 %293, i64* %PC, align 8
  %294 = inttoptr i64 %292 to i64*
  %295 = load i64, i64* %294, align 8
  %296 = sub i64 %254, %295
  %297 = icmp ult i64 %254, %295
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %44, align 1, !tbaa !2432
  %299 = trunc i64 %296 to i32
  %300 = and i32 %299, 255
  %301 = tail call i32 @llvm.ctpop.i32(i32 %300) #8
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = xor i8 %303, 1
  store i8 %304, i8* %51, align 1, !tbaa !2446
  %305 = xor i64 %295, %254
  %306 = xor i64 %305, %296
  %307 = lshr i64 %306, 4
  %308 = trunc i64 %307 to i8
  %309 = and i8 %308, 1
  store i8 %309, i8* %57, align 1, !tbaa !2447
  %310 = icmp eq i64 %296, 0
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %60, align 1, !tbaa !2448
  %312 = lshr i64 %296, 63
  %313 = trunc i64 %312 to i8
  store i8 %313, i8* %63, align 1, !tbaa !2449
  %314 = lshr i64 %254, 63
  %315 = lshr i64 %295, 63
  %316 = xor i64 %315, %314
  %317 = xor i64 %312, %314
  %318 = add nuw nsw i64 %317, %316
  %319 = icmp eq i64 %318, 2
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %70, align 1, !tbaa !2450
  %321 = or i1 %310, %297
  %.v7 = select i1 %321, i64 60, i64 51
  %322 = add i64 %397, %.v7
  store i64 %322, i64* %96, align 8, !tbaa !2428
  br i1 %321, label %block_40140e, label %block_401405

block_4013bd:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %323 = add i64 %.pre5, -24
  %324 = add i64 %199, 3
  store i64 %324, i64* %PC, align 8
  %325 = inttoptr i64 %323 to i32*
  %326 = load i32, i32* %325, align 4
  %327 = zext i32 %326 to i64
  store i64 %327, i64* %RAX, align 8, !tbaa !2428
  %328 = add i64 %199, 6
  store i64 %328, i64* %PC, align 8
  %329 = load i32, i32* %325, align 4
  %330 = add i32 %329, %326
  %331 = zext i32 %330 to i64
  store i64 %331, i64* %RAX, align 8, !tbaa !2428
  %332 = icmp ult i32 %330, %326
  %333 = icmp ult i32 %330, %329
  %334 = or i1 %332, %333
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %44, align 1, !tbaa !2432
  %336 = and i32 %330, 255
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336) #8
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %51, align 1, !tbaa !2446
  %341 = xor i32 %329, %326
  %342 = xor i32 %341, %330
  %343 = lshr i32 %342, 4
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  store i8 %345, i8* %57, align 1, !tbaa !2447
  %346 = icmp eq i32 %330, 0
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %60, align 1, !tbaa !2448
  %348 = lshr i32 %330, 31
  %349 = trunc i32 %348 to i8
  store i8 %349, i8* %63, align 1, !tbaa !2449
  %350 = lshr i32 %326, 31
  %351 = lshr i32 %329, 31
  %352 = xor i32 %348, %350
  %353 = xor i32 %348, %351
  %354 = add nuw nsw i32 %352, %353
  %355 = icmp eq i32 %354, 2
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %70, align 1, !tbaa !2450
  %357 = add i64 %.pre5, -28
  %358 = add i64 %199, 9
  store i64 %358, i64* %PC, align 8
  %359 = inttoptr i64 %357 to i32*
  store i32 %330, i32* %359, align 4
  %360 = load i64, i64* %RBP, align 8
  %361 = add i64 %360, -28
  %362 = load i64, i64* %PC, align 8
  %363 = add i64 %362, 3
  store i64 %363, i64* %PC, align 8
  %364 = inttoptr i64 %361 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = zext i32 %365 to i64
  store i64 %366, i64* %RAX, align 8, !tbaa !2428
  %367 = add i64 %360, -20
  %368 = add i64 %362, 6
  store i64 %368, i64* %PC, align 8
  %369 = inttoptr i64 %367 to i32*
  %370 = load i32, i32* %369, align 4
  %371 = sub i32 %365, %370
  %372 = icmp ult i32 %365, %370
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %44, align 1, !tbaa !2432
  %374 = and i32 %371, 255
  %375 = tail call i32 @llvm.ctpop.i32(i32 %374) #8
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  %378 = xor i8 %377, 1
  store i8 %378, i8* %51, align 1, !tbaa !2446
  %379 = xor i32 %370, %365
  %380 = xor i32 %379, %371
  %381 = lshr i32 %380, 4
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  store i8 %383, i8* %57, align 1, !tbaa !2447
  %384 = icmp eq i32 %371, 0
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %60, align 1, !tbaa !2448
  %386 = lshr i32 %371, 31
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %63, align 1, !tbaa !2449
  %388 = lshr i32 %365, 31
  %389 = lshr i32 %370, 31
  %390 = xor i32 %389, %388
  %391 = xor i32 %386, %388
  %392 = add nuw nsw i32 %391, %390
  %393 = icmp eq i32 %392, 2
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %70, align 1, !tbaa !2450
  %395 = icmp ne i8 %387, 0
  %396 = xor i1 %395, %393
  %.v6 = select i1 %396, i64 12, i64 72
  %397 = add i64 %362, %.v6
  store i64 %397, i64* %96, align 8, !tbaa !2428
  br i1 %396, label %block_4013d2, label %block_40140e

block_40140e:                                     ; preds = %block_4013bd, %block_401405, %block_4013d2
  %398 = phi i64 [ %.pre4, %block_401405 ], [ %397, %block_4013bd ], [ %322, %block_4013d2 ]
  %399 = load i64, i64* %RBP, align 8
  %400 = add i64 %399, -8
  %401 = add i64 %398, 4
  store i64 %401, i64* %PC, align 8
  %402 = inttoptr i64 %400 to i64*
  %403 = load i64, i64* %402, align 8
  store i64 %403, i64* %RAX, align 8, !tbaa !2428
  %404 = add i64 %399, -32
  %405 = add i64 %398, 8
  store i64 %405, i64* %PC, align 8
  %406 = inttoptr i64 %404 to i32*
  %407 = load i32, i32* %406, align 4
  %408 = sext i32 %407 to i64
  store i64 %408, i64* %RCX, align 8, !tbaa !2428
  %409 = shl nsw i64 %408, 3
  %410 = add i64 %409, %403
  %411 = add i64 %398, 12
  store i64 %411, i64* %PC, align 8
  %412 = inttoptr i64 %410 to i64*
  %413 = load i64, i64* %412, align 8
  store i64 %413, i64* %RAX, align 8, !tbaa !2428
  %414 = add i64 %398, 16
  store i64 %414, i64* %PC, align 8
  %415 = load i64, i64* %402, align 8
  store i64 %415, i64* %RCX, align 8, !tbaa !2428
  %416 = add i64 %399, -16
  %417 = add i64 %398, 20
  store i64 %417, i64* %PC, align 8
  %418 = inttoptr i64 %416 to i64*
  %419 = load i64, i64* %418, align 8
  store i64 %419, i64* %RDX, align 8, !tbaa !2428
  %420 = add i64 %399, -28
  %421 = add i64 %398, 24
  store i64 %421, i64* %PC, align 8
  %422 = inttoptr i64 %420 to i32*
  %423 = load i32, i32* %422, align 4
  %424 = sext i32 %423 to i64
  store i64 %424, i64* %RSI, align 8, !tbaa !2428
  %425 = shl nsw i64 %424, 3
  %426 = add i64 %425, %419
  %427 = add i64 %398, 28
  store i64 %427, i64* %PC, align 8
  %428 = inttoptr i64 %426 to i64*
  %429 = load i64, i64* %428, align 8
  store i64 %429, i64* %RDX, align 8, !tbaa !2428
  %430 = shl i64 %429, 3
  %431 = add i64 %430, %415
  %432 = add i64 %398, 32
  store i64 %432, i64* %PC, align 8
  %433 = inttoptr i64 %431 to i64*
  %434 = load i64, i64* %433, align 8
  %435 = sub i64 %413, %434
  %436 = icmp ult i64 %413, %434
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %44, align 1, !tbaa !2432
  %438 = trunc i64 %435 to i32
  %439 = and i32 %438, 255
  %440 = tail call i32 @llvm.ctpop.i32(i32 %439) #8
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  %443 = xor i8 %442, 1
  store i8 %443, i8* %51, align 1, !tbaa !2446
  %444 = xor i64 %434, %413
  %445 = xor i64 %444, %435
  %446 = lshr i64 %445, 4
  %447 = trunc i64 %446 to i8
  %448 = and i8 %447, 1
  store i8 %448, i8* %57, align 1, !tbaa !2447
  %449 = icmp eq i64 %435, 0
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %60, align 1, !tbaa !2448
  %451 = lshr i64 %435, 63
  %452 = trunc i64 %451 to i8
  store i8 %452, i8* %63, align 1, !tbaa !2449
  %453 = lshr i64 %413, 63
  %454 = lshr i64 %434, 63
  %455 = xor i64 %454, %453
  %456 = xor i64 %451, %453
  %457 = add nuw nsw i64 %456, %455
  %458 = icmp eq i64 %457, 2
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %70, align 1, !tbaa !2450
  %.v8 = select i1 %436, i64 38, i64 43
  %460 = add i64 %398, %.v8
  store i64 %460, i64* %96, align 8, !tbaa !2428
  br i1 %436, label %block_401434, label %block_401439

block_401405:                                     ; preds = %block_4013d2
  %461 = load i64, i64* %RBP, align 8
  %462 = add i64 %461, -28
  %463 = add i64 %322, 3
  store i64 %463, i64* %PC, align 8
  %464 = inttoptr i64 %462 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = add i32 %465, 1
  %467 = zext i32 %466 to i64
  store i64 %467, i64* %RAX, align 8, !tbaa !2428
  %468 = icmp eq i32 %465, -1
  %469 = icmp eq i32 %466, 0
  %470 = or i1 %468, %469
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %44, align 1, !tbaa !2432
  %472 = and i32 %466, 255
  %473 = tail call i32 @llvm.ctpop.i32(i32 %472) #8
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  %476 = xor i8 %475, 1
  store i8 %476, i8* %51, align 1, !tbaa !2446
  %477 = xor i32 %465, %466
  %478 = lshr i32 %477, 4
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  store i8 %480, i8* %57, align 1, !tbaa !2447
  %481 = icmp eq i32 %466, 0
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %60, align 1, !tbaa !2448
  %483 = lshr i32 %466, 31
  %484 = trunc i32 %483 to i8
  store i8 %484, i8* %63, align 1, !tbaa !2449
  %485 = lshr i32 %465, 31
  %486 = xor i32 %483, %485
  %487 = add nuw nsw i32 %486, %483
  %488 = icmp eq i32 %487, 2
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %70, align 1, !tbaa !2450
  %490 = add i64 %322, 9
  store i64 %490, i64* %PC, align 8
  store i32 %466, i32* %464, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_40140e
}

; Function Attrs: noinline
define %struct.Memory* @sub_400630__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400630:
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
  store i64 ptrtoint (void ()* @callback_sub_401610___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_4015a0___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %36 = add i64 %35, 27
  %37 = add i64 %16, -24
  %38 = inttoptr i64 %37 to i64*
  store i64 %36, i64* %38, align 8
  store i64 %37, i64* %11, align 8, !tbaa !2428
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %40 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %40, i64* %39, align 8, !tbaa !2428
  %41 = tail call fastcc %struct.Memory* @ext_6020c0___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %42 = load i64, i64* %PC, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %PC, align 8
  %44 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %43, %struct.Memory* %41)
  ret %struct.Memory* %44
}

; Function Attrs: noinline
define %struct.Memory* @sub_400720_generate_test_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400720:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
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
  %11 = add i64 %7, -56
  store i64 %11, i64* %RSP, align 8, !tbaa !2428
  %12 = icmp ult i64 %8, 48
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
  %22 = xor i64 %8, 16
  %23 = xor i64 %22, %11
  %24 = lshr i64 %23, 4
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1, !tbaa !2447
  %28 = icmp eq i64 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1, !tbaa !2448
  %31 = lshr i64 %11, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1, !tbaa !2449
  %34 = lshr i64 %8, 63
  %35 = xor i64 %31, %34
  %36 = add nuw nsw i64 %35, %34
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1, !tbaa !2450
  store i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 4), i64* %RAX, align 8, !tbaa !2428
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI, align 8
  %42 = add i64 %10, 21
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %RBP, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %RAX, align 8
  %47 = load i64, i64* %PC, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %RBP, align 8
  %51 = add i64 %50, -8
  %52 = load i64, i64* %PC, align 8
  %53 = add i64 %52, 4
  store i64 %53, i64* %PC, align 8
  %54 = inttoptr i64 %51 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %RDI, align 8, !tbaa !2428
  %56 = add i64 %52, -314
  %57 = add i64 %52, 9
  %58 = load i64, i64* %6, align 8, !tbaa !2428
  %59 = add i64 %58, -8
  %60 = inttoptr i64 %59 to i64*
  store i64 %57, i64* %60, align 8
  store i64 %59, i64* %6, align 8, !tbaa !2428
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %56, i64* %61, align 8, !tbaa !2428
  %62 = tail call fastcc %struct.Memory* @ext_6020d8_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %63 = load i64, i64* %RBP, align 8
  %64 = add i64 %63, -24
  %65 = load i64, i64* %RAX, align 8
  %66 = load i64, i64* %PC, align 8
  %67 = add i64 %66, 4
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %64 to i64*
  store i64 %65, i64* %68, align 8
  %69 = load i64, i64* %RBP, align 8
  %70 = add i64 %69, -24
  %71 = load i64, i64* %PC, align 8
  %72 = add i64 %71, 4
  store i64 %72, i64* %PC, align 8
  %73 = inttoptr i64 %70 to i64*
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %RAX, align 8, !tbaa !2428
  %75 = add i64 %69, -32
  %76 = add i64 %71, 8
  store i64 %76, i64* %PC, align 8
  %77 = inttoptr i64 %75 to i64*
  store i64 %74, i64* %77, align 8
  %78 = load i64, i64* %RBP, align 8
  %79 = add i64 %78, -36
  %80 = load i64, i64* %PC, align 8
  %81 = add i64 %80, 7
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %79 to i32*
  store i32 0, i32* %82, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400756

block_400756:                                     ; preds = %block_400764, %block_400720
  %83 = phi i64 [ %.pre, %block_400720 ], [ %214, %block_400764 ]
  %MEMORY.0 = phi %struct.Memory* [ %62, %block_400720 ], [ %133, %block_400764 ]
  %84 = load i64, i64* %RBP, align 8
  %85 = add i64 %84, -36
  %86 = add i64 %83, 4
  store i64 %86, i64* %PC, align 8
  %87 = inttoptr i64 %85 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %RAX, align 8, !tbaa !2428
  %90 = add i64 %84, -8
  %91 = add i64 %83, 8
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %90 to i64*
  %93 = load i64, i64* %92, align 8
  %94 = sub i64 %89, %93
  %95 = icmp ult i64 %89, %93
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %14, align 1, !tbaa !2432
  %97 = trunc i64 %94 to i32
  %98 = and i32 %97, 255
  %99 = tail call i32 @llvm.ctpop.i32(i32 %98) #8
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  %102 = xor i8 %101, 1
  store i8 %102, i8* %21, align 1, !tbaa !2446
  %103 = xor i64 %93, %89
  %104 = xor i64 %103, %94
  %105 = lshr i64 %104, 4
  %106 = trunc i64 %105 to i8
  %107 = and i8 %106, 1
  store i8 %107, i8* %27, align 1, !tbaa !2447
  %108 = icmp eq i64 %94, 0
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %30, align 1, !tbaa !2448
  %110 = lshr i64 %94, 63
  %111 = trunc i64 %110 to i8
  store i8 %111, i8* %33, align 1, !tbaa !2449
  %112 = lshr i64 %89, 63
  %113 = lshr i64 %93, 63
  %114 = xor i64 %113, %112
  %115 = xor i64 %110, %112
  %116 = add nuw nsw i64 %115, %114
  %117 = icmp eq i64 %116, 2
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %39, align 1, !tbaa !2450
  %.v = select i1 %95, i64 14, i64 66
  %119 = add i64 %83, %.v
  store i64 %119, i64* %61, align 8, !tbaa !2428
  br i1 %95, label %block_400764, label %block_400798

block_400764:                                     ; preds = %block_400756
  %120 = add i64 %84, -16
  %121 = add i64 %119, 4
  store i64 %121, i64* %PC, align 8
  %122 = inttoptr i64 %120 to i64*
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %RAX, align 8, !tbaa !2428
  %124 = add i64 %84, -48
  %125 = add i64 %119, 8
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %124 to i64*
  store i64 %123, i64* %126, align 8
  %127 = load i64, i64* %PC, align 8
  %128 = add i64 %127, 68
  %129 = add i64 %127, 5
  %130 = load i64, i64* %6, align 8, !tbaa !2428
  %131 = add i64 %130, -8
  %132 = inttoptr i64 %131 to i64*
  store i64 %129, i64* %132, align 8
  store i64 %131, i64* %6, align 8, !tbaa !2428
  store i64 %128, i64* %61, align 8, !tbaa !2428
  %133 = tail call %struct.Memory* @sub_4007b0_random4_renamed_(%struct.State* nonnull %0, i64 %128, %struct.Memory* %MEMORY.0)
  %134 = load i64, i64* %RBP, align 8
  %135 = add i64 %134, -48
  %136 = load i64, i64* %PC, align 8
  %137 = add i64 %136, 4
  store i64 %137, i64* %PC, align 8
  %138 = inttoptr i64 %135 to i64*
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %RCX, align 8, !tbaa !2428
  %140 = load i64, i64* %RAX, align 8
  %141 = add i64 %140, %139
  %142 = add i64 %136, 7
  store i64 %142, i64* %PC, align 8
  %143 = inttoptr i64 %141 to i8*
  %144 = load i8, i8* %143, align 1
  store i8 %144, i8* %DL, align 1, !tbaa !2453
  %145 = add i64 %134, -32
  %146 = add i64 %136, 11
  store i64 %146, i64* %PC, align 8
  %147 = inttoptr i64 %145 to i64*
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %RAX, align 8, !tbaa !2428
  %149 = add i64 %136, 13
  store i64 %149, i64* %PC, align 8
  %150 = inttoptr i64 %148 to i8*
  store i8 %144, i8* %150, align 1
  %151 = load i64, i64* %RBP, align 8
  %152 = add i64 %151, -32
  %153 = load i64, i64* %PC, align 8
  %154 = add i64 %153, 4
  store i64 %154, i64* %PC, align 8
  %155 = inttoptr i64 %152 to i64*
  %156 = load i64, i64* %155, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %RAX, align 8, !tbaa !2428
  %158 = icmp eq i64 %156, -1
  %159 = icmp eq i64 %157, 0
  %160 = or i1 %158, %159
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %14, align 1, !tbaa !2432
  %162 = trunc i64 %157 to i32
  %163 = and i32 %162, 255
  %164 = tail call i32 @llvm.ctpop.i32(i32 %163) #8
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %21, align 1, !tbaa !2446
  %168 = xor i64 %156, %157
  %169 = lshr i64 %168, 4
  %170 = trunc i64 %169 to i8
  %171 = and i8 %170, 1
  store i8 %171, i8* %27, align 1, !tbaa !2447
  %172 = icmp eq i64 %157, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %30, align 1, !tbaa !2448
  %174 = lshr i64 %157, 63
  %175 = trunc i64 %174 to i8
  store i8 %175, i8* %33, align 1, !tbaa !2449
  %176 = lshr i64 %156, 63
  %177 = xor i64 %174, %176
  %178 = add nuw nsw i64 %177, %174
  %179 = icmp eq i64 %178, 2
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %39, align 1, !tbaa !2450
  %181 = add i64 %153, 12
  store i64 %181, i64* %PC, align 8
  store i64 %157, i64* %155, align 8
  %182 = load i64, i64* %RBP, align 8
  %183 = add i64 %182, -36
  %184 = load i64, i64* %PC, align 8
  %185 = add i64 %184, 3
  store i64 %185, i64* %PC, align 8
  %186 = inttoptr i64 %183 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = add i32 %187, 1
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RAX, align 8, !tbaa !2428
  %190 = icmp eq i32 %187, -1
  %191 = icmp eq i32 %188, 0
  %192 = or i1 %190, %191
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %14, align 1, !tbaa !2432
  %194 = and i32 %188, 255
  %195 = tail call i32 @llvm.ctpop.i32(i32 %194) #8
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  %198 = xor i8 %197, 1
  store i8 %198, i8* %21, align 1, !tbaa !2446
  %199 = xor i32 %187, %188
  %200 = lshr i32 %199, 4
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  store i8 %202, i8* %27, align 1, !tbaa !2447
  %203 = icmp eq i32 %188, 0
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %30, align 1, !tbaa !2448
  %205 = lshr i32 %188, 31
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %33, align 1, !tbaa !2449
  %207 = lshr i32 %187, 31
  %208 = xor i32 %205, %207
  %209 = add nuw nsw i32 %208, %205
  %210 = icmp eq i32 %209, 2
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %39, align 1, !tbaa !2450
  %212 = add i64 %184, 9
  store i64 %212, i64* %PC, align 8
  store i32 %188, i32* %186, align 4
  %213 = load i64, i64* %PC, align 8
  %214 = add i64 %213, -61
  store i64 %214, i64* %61, align 8, !tbaa !2428
  br label %block_400756

block_400798:                                     ; preds = %block_400756
  %215 = add i64 %84, -24
  %216 = add i64 %119, 4
  store i64 %216, i64* %PC, align 8
  %217 = inttoptr i64 %215 to i64*
  %218 = load i64, i64* %217, align 8
  store i64 %218, i64* %RAX, align 8, !tbaa !2428
  %219 = load i64, i64* %RSP, align 8
  %220 = add i64 %219, 48
  store i64 %220, i64* %RSP, align 8, !tbaa !2428
  %221 = icmp ugt i64 %219, -49
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %14, align 1, !tbaa !2432
  %223 = trunc i64 %220 to i32
  %224 = and i32 %223, 255
  %225 = tail call i32 @llvm.ctpop.i32(i32 %224) #8
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = xor i8 %227, 1
  store i8 %228, i8* %21, align 1, !tbaa !2446
  %229 = xor i64 %219, 16
  %230 = xor i64 %229, %220
  %231 = lshr i64 %230, 4
  %232 = trunc i64 %231 to i8
  %233 = and i8 %232, 1
  store i8 %233, i8* %27, align 1, !tbaa !2447
  %234 = icmp eq i64 %220, 0
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %30, align 1, !tbaa !2448
  %236 = lshr i64 %220, 63
  %237 = trunc i64 %236 to i8
  store i8 %237, i8* %33, align 1, !tbaa !2449
  %238 = lshr i64 %219, 63
  %239 = xor i64 %236, %238
  %240 = add nuw nsw i64 %239, %236
  %241 = icmp eq i64 %240, 2
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %39, align 1, !tbaa !2450
  %243 = add i64 %119, 9
  store i64 %243, i64* %PC, align 8
  %244 = add i64 %219, 56
  %245 = inttoptr i64 %220 to i64*
  %246 = load i64, i64* %245, align 8
  store i64 %246, i64* %RBP, align 8, !tbaa !2428
  store i64 %244, i64* %6, align 8, !tbaa !2428
  %247 = add i64 %119, 10
  store i64 %247, i64* %PC, align 8
  %248 = inttoptr i64 %244 to i64*
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %61, align 8, !tbaa !2428
  %250 = add i64 %219, 64
  store i64 %250, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_400870_compdecomp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400870:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %5 to i8*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %ECX = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
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
  %14 = load i64, i64* %R15, align 8
  %15 = add i64 %13, 5
  store i64 %15, i64* %PC, align 8
  %16 = add i64 %10, -16
  %17 = inttoptr i64 %16 to i64*
  store i64 %14, i64* %17, align 8
  %18 = load i64, i64* %R14, align 8
  %19 = load i64, i64* %PC, align 8
  %20 = add i64 %19, 2
  store i64 %20, i64* %PC, align 8
  %21 = add i64 %10, -24
  %22 = inttoptr i64 %21 to i64*
  store i64 %18, i64* %22, align 8
  %23 = load i64, i64* %RBX, align 8
  %24 = load i64, i64* %PC, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %PC, align 8
  %26 = add i64 %10, -32
  %27 = inttoptr i64 %26 to i64*
  store i64 %23, i64* %27, align 8
  %28 = load i64, i64* %PC, align 8
  %29 = add i64 %10, -13112
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  %30 = icmp ult i64 %26, 13080
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %32, align 1, !tbaa !2432
  %33 = trunc i64 %29 to i32
  %34 = and i32 %33, 255
  %35 = tail call i32 @llvm.ctpop.i32(i32 %34) #8
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  %38 = xor i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %38, i8* %39, align 1, !tbaa !2446
  %40 = xor i64 %26, 16
  %41 = xor i64 %40, %29
  %42 = lshr i64 %41, 4
  %43 = trunc i64 %42 to i8
  %44 = and i8 %43, 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %44, i8* %45, align 1, !tbaa !2447
  %46 = icmp eq i64 %29, 0
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %47, i8* %48, align 1, !tbaa !2448
  %49 = lshr i64 %29, 63
  %50 = trunc i64 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %50, i8* %51, align 1, !tbaa !2449
  %52 = lshr i64 %26, 63
  %53 = xor i64 %49, %52
  %54 = add nuw nsw i64 %53, %52
  %55 = icmp eq i64 %54, 2
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %56, i8* %57, align 1, !tbaa !2450
  %58 = load i64, i64* %RBP, align 8
  %59 = add i64 %58, -32
  %60 = load i64, i64* %RDI, align 8
  %61 = add i64 %28, 11
  store i64 %61, i64* %PC, align 8
  %62 = inttoptr i64 %59 to i64*
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %RBP, align 8
  %64 = add i64 %63, -40
  %65 = load i64, i64* %RSI, align 8
  %66 = load i64, i64* %PC, align 8
  %67 = add i64 %66, 4
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %64 to i64*
  store i64 %65, i64* %68, align 8
  %69 = load i64, i64* %RBP, align 8
  %70 = add i64 %69, -32
  %71 = load i64, i64* %PC, align 8
  %72 = add i64 %71, 4
  store i64 %72, i64* %PC, align 8
  %73 = inttoptr i64 %70 to i64*
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %RSI, align 8, !tbaa !2428
  %75 = add i64 %69, -112
  %76 = add i64 %71, 8
  store i64 %76, i64* %PC, align 8
  %77 = inttoptr i64 %75 to i64*
  store i64 %74, i64* %77, align 8
  %78 = load i64, i64* %RBP, align 8
  %79 = add i64 %78, -40
  %80 = load i64, i64* %PC, align 8
  %81 = add i64 %80, 4
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %79 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %RSI, align 8, !tbaa !2428
  %85 = icmp eq i64 %83, -1
  %86 = icmp eq i64 %84, 0
  %87 = or i1 %85, %86
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %32, align 1, !tbaa !2432
  %89 = trunc i64 %84 to i32
  %90 = and i32 %89, 255
  %91 = tail call i32 @llvm.ctpop.i32(i32 %90) #8
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  %94 = xor i8 %93, 1
  store i8 %94, i8* %39, align 1, !tbaa !2446
  %95 = xor i64 %83, %84
  %96 = lshr i64 %95, 4
  %97 = trunc i64 %96 to i8
  %98 = and i8 %97, 1
  store i8 %98, i8* %45, align 1, !tbaa !2447
  %99 = icmp eq i64 %84, 0
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %48, align 1, !tbaa !2448
  %101 = lshr i64 %84, 63
  %102 = trunc i64 %101 to i8
  store i8 %102, i8* %51, align 1, !tbaa !2449
  %103 = lshr i64 %83, 63
  %104 = xor i64 %101, %103
  %105 = add nuw nsw i64 %104, %101
  %106 = icmp eq i64 %105, 2
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %57, align 1, !tbaa !2450
  store i64 %84, i64* %RDI, align 8, !tbaa !2428
  %108 = add i64 %80, -656
  %109 = add i64 %80, 16
  %110 = load i64, i64* %9, align 8, !tbaa !2428
  %111 = add i64 %110, -8
  %112 = inttoptr i64 %111 to i64*
  store i64 %109, i64* %112, align 8
  store i64 %111, i64* %9, align 8, !tbaa !2428
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %108, i64* %113, align 8, !tbaa !2428
  %114 = tail call fastcc %struct.Memory* @ext_6020d8_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %115 = load i64, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %32, align 1, !tbaa !2432
  store i8 1, i8* %39, align 1, !tbaa !2446
  store i8 1, i8* %48, align 1, !tbaa !2448
  store i8 0, i8* %51, align 1, !tbaa !2449
  store i8 0, i8* %57, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  store i64 256, i64* %RDX, align 8, !tbaa !2428
  %116 = load i64, i64* %RBP, align 8
  %117 = add i64 %116, -10624
  store i64 %117, i64* %RDI, align 8, !tbaa !2428
  %118 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0
  store i64 2048, i64* %RSI, align 8, !tbaa !2428
  %119 = add i64 %116, -10368
  store i64 %119, i64* %R9, align 8, !tbaa !2428
  %120 = add i64 %116, -8320
  store i64 %120, i64* %R10, align 8, !tbaa !2428
  %121 = add i64 %116, -6272
  store i64 %121, i64* %R11, align 8, !tbaa !2428
  store i64 4096, i64* %118, align 8, !tbaa !2428
  store i64 4096, i64* %RBX, align 8, !tbaa !2428
  %122 = add i64 %116, -4224
  store i64 %122, i64* %R14, align 8, !tbaa !2428
  %123 = add i64 %116, -120
  %124 = load i64, i64* %RAX, align 8
  %125 = add i64 %115, 64
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %123 to i64*
  store i64 %124, i64* %126, align 8
  %127 = load i64, i64* %RBP, align 8
  %128 = add i64 %127, -120
  %129 = load i64, i64* %PC, align 8
  %130 = add i64 %129, 4
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %128 to i64*
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %RAX, align 8, !tbaa !2428
  %133 = add i64 %127, -40
  %134 = add i64 %129, 8
  store i64 %134, i64* %PC, align 8
  %135 = inttoptr i64 %133 to i64*
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %R15, align 8, !tbaa !2428
  %138 = icmp eq i64 %136, -1
  %139 = icmp eq i64 %137, 0
  %140 = or i1 %138, %139
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %32, align 1, !tbaa !2432
  %142 = trunc i64 %137 to i32
  %143 = and i32 %142, 255
  %144 = tail call i32 @llvm.ctpop.i32(i32 %143) #8
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  %147 = xor i8 %146, 1
  store i8 %147, i8* %39, align 1, !tbaa !2446
  %148 = xor i64 %136, %137
  %149 = lshr i64 %148, 4
  %150 = trunc i64 %149 to i8
  %151 = and i8 %150, 1
  store i8 %151, i8* %45, align 1, !tbaa !2447
  %152 = icmp eq i64 %137, 0
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %48, align 1, !tbaa !2448
  %154 = lshr i64 %137, 63
  %155 = trunc i64 %154 to i8
  store i8 %155, i8* %51, align 1, !tbaa !2449
  %156 = lshr i64 %136, 63
  %157 = xor i64 %154, %156
  %158 = add nuw nsw i64 %157, %154
  %159 = icmp eq i64 %158, 2
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %57, align 1, !tbaa !2450
  %161 = add i64 %127, -13008
  %162 = load i64, i64* %RDI, align 8
  %163 = add i64 %129, 23
  store i64 %163, i64* %PC, align 8
  %164 = inttoptr i64 %161 to i64*
  store i64 %162, i64* %164, align 8
  %165 = load i64, i64* %RAX, align 8
  %166 = load i64, i64* %PC, align 8
  store i64 %165, i64* %RDI, align 8, !tbaa !2428
  %167 = load i64, i64* %RBP, align 8
  %168 = add i64 %167, -13016
  %169 = load i64, i64* %RSI, align 8
  %170 = add i64 %166, 10
  store i64 %170, i64* %PC, align 8
  %171 = inttoptr i64 %168 to i64*
  store i64 %169, i64* %171, align 8
  %172 = load i32, i32* %ECX, align 4
  %173 = zext i32 %172 to i64
  %174 = load i64, i64* %PC, align 8
  store i64 %173, i64* %RSI, align 8, !tbaa !2428
  %175 = load i64, i64* %RBP, align 8
  %176 = add i64 %175, -13024
  %177 = load i64, i64* %RDX, align 8
  %178 = add i64 %174, 9
  store i64 %178, i64* %PC, align 8
  %179 = inttoptr i64 %176 to i64*
  store i64 %177, i64* %179, align 8
  %180 = load i64, i64* %R15, align 8
  %181 = load i64, i64* %PC, align 8
  store i64 %180, i64* %RDX, align 8, !tbaa !2428
  %182 = load i64, i64* %RBP, align 8
  %183 = add i64 %182, -13032
  %184 = load i64, i64* %R14, align 8
  %185 = add i64 %181, 10
  store i64 %185, i64* %PC, align 8
  %186 = inttoptr i64 %183 to i64*
  store i64 %184, i64* %186, align 8
  %187 = load i64, i64* %RBP, align 8
  %188 = add i64 %187, -13036
  %189 = load i32, i32* %ECX, align 4
  %190 = load i64, i64* %PC, align 8
  %191 = add i64 %190, 6
  store i64 %191, i64* %PC, align 8
  %192 = inttoptr i64 %188 to i32*
  store i32 %189, i32* %192, align 4
  %193 = load i64, i64* %RBP, align 8
  %194 = add i64 %193, -13048
  %195 = load i64, i64* %R10, align 8
  %196 = load i64, i64* %PC, align 8
  %197 = add i64 %196, 7
  store i64 %197, i64* %PC, align 8
  %198 = inttoptr i64 %194 to i64*
  store i64 %195, i64* %198, align 8
  %199 = load i64, i64* %RBP, align 8
  %200 = add i64 %199, -13056
  %201 = load i64, i64* %R11, align 8
  %202 = load i64, i64* %PC, align 8
  %203 = add i64 %202, 7
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %200 to i64*
  store i64 %201, i64* %204, align 8
  %205 = load i64, i64* %RBP, align 8
  %206 = add i64 %205, -13064
  %207 = load i64, i64* %RBX, align 8
  %208 = load i64, i64* %PC, align 8
  %209 = add i64 %208, 7
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %206 to i64*
  store i64 %207, i64* %210, align 8
  %211 = load i64, i64* %RBP, align 8
  %212 = add i64 %211, -13072
  %213 = load i64, i64* %R9, align 8
  %214 = load i64, i64* %PC, align 8
  %215 = add i64 %214, 7
  store i64 %215, i64* %PC, align 8
  %216 = inttoptr i64 %212 to i64*
  store i64 %213, i64* %216, align 8
  %217 = load i64, i64* %PC, align 8
  %218 = add i64 %217, -870
  %219 = add i64 %217, 5
  %220 = load i64, i64* %9, align 8, !tbaa !2428
  %221 = add i64 %220, -8
  %222 = inttoptr i64 %221 to i64*
  store i64 %219, i64* %222, align 8
  store i64 %221, i64* %9, align 8, !tbaa !2428
  store i64 %218, i64* %113, align 8, !tbaa !2428
  %223 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %114)
  %224 = load i64, i64* %RBP, align 8
  %225 = add i64 %224, -13032
  %226 = load i64, i64* %PC, align 8
  %227 = add i64 %226, 7
  store i64 %227, i64* %PC, align 8
  %228 = inttoptr i64 %225 to i64*
  %229 = load i64, i64* %228, align 8
  store i64 %229, i64* %RAX, align 8, !tbaa !2428
  store i64 %229, i64* %RDI, align 8, !tbaa !2428
  %230 = add i64 %224, -13036
  %231 = add i64 %226, 16
  store i64 %231, i64* %PC, align 8
  %232 = inttoptr i64 %230 to i32*
  %233 = load i32, i32* %232, align 4
  %234 = zext i32 %233 to i64
  store i64 %234, i64* %RSI, align 8, !tbaa !2428
  %235 = add i64 %224, -13064
  %236 = add i64 %226, 23
  store i64 %236, i64* %PC, align 8
  %237 = inttoptr i64 %235 to i64*
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %RDX, align 8, !tbaa !2428
  %239 = add i64 %226, -875
  %240 = add i64 %226, 28
  %241 = load i64, i64* %9, align 8, !tbaa !2428
  %242 = add i64 %241, -8
  %243 = inttoptr i64 %242 to i64*
  store i64 %240, i64* %243, align 8
  store i64 %242, i64* %9, align 8, !tbaa !2428
  store i64 %239, i64* %113, align 8, !tbaa !2428
  %244 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %223)
  %245 = load i64, i64* %RBP, align 8
  %246 = add i64 %245, -13056
  %247 = load i64, i64* %PC, align 8
  %248 = add i64 %247, 7
  store i64 %248, i64* %PC, align 8
  %249 = inttoptr i64 %246 to i64*
  %250 = load i64, i64* %249, align 8
  store i64 %250, i64* %RAX, align 8, !tbaa !2428
  store i64 %250, i64* %RDI, align 8, !tbaa !2428
  %251 = add i64 %245, -13036
  %252 = add i64 %247, 16
  store i64 %252, i64* %PC, align 8
  %253 = inttoptr i64 %251 to i32*
  %254 = load i32, i32* %253, align 4
  %255 = zext i32 %254 to i64
  store i64 %255, i64* %RSI, align 8, !tbaa !2428
  %256 = add i64 %245, -13016
  %257 = add i64 %247, 23
  store i64 %257, i64* %PC, align 8
  %258 = inttoptr i64 %256 to i64*
  %259 = load i64, i64* %258, align 8
  store i64 %259, i64* %RDX, align 8, !tbaa !2428
  %260 = add i64 %247, -903
  %261 = add i64 %247, 28
  %262 = load i64, i64* %9, align 8, !tbaa !2428
  %263 = add i64 %262, -8
  %264 = inttoptr i64 %263 to i64*
  store i64 %261, i64* %264, align 8
  store i64 %263, i64* %9, align 8, !tbaa !2428
  store i64 %260, i64* %113, align 8, !tbaa !2428
  %265 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %244)
  %266 = load i64, i64* %RBP, align 8
  %267 = add i64 %266, -13048
  %268 = load i64, i64* %PC, align 8
  %269 = add i64 %268, 7
  store i64 %269, i64* %PC, align 8
  %270 = inttoptr i64 %267 to i64*
  %271 = load i64, i64* %270, align 8
  store i64 %271, i64* %RAX, align 8, !tbaa !2428
  store i64 %271, i64* %RDI, align 8, !tbaa !2428
  %272 = add i64 %266, -13036
  %273 = add i64 %268, 16
  store i64 %273, i64* %PC, align 8
  %274 = inttoptr i64 %272 to i32*
  %275 = load i32, i32* %274, align 4
  %276 = zext i32 %275 to i64
  store i64 %276, i64* %RSI, align 8, !tbaa !2428
  %277 = add i64 %266, -13016
  %278 = add i64 %268, 23
  store i64 %278, i64* %PC, align 8
  %279 = inttoptr i64 %277 to i64*
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %RDX, align 8, !tbaa !2428
  %281 = add i64 %268, -931
  %282 = add i64 %268, 28
  %283 = load i64, i64* %9, align 8, !tbaa !2428
  %284 = add i64 %283, -8
  %285 = inttoptr i64 %284 to i64*
  store i64 %282, i64* %285, align 8
  store i64 %284, i64* %9, align 8, !tbaa !2428
  store i64 %281, i64* %113, align 8, !tbaa !2428
  %286 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %265)
  %287 = load i64, i64* %RBP, align 8
  %288 = add i64 %287, -13072
  %289 = load i64, i64* %PC, align 8
  %290 = add i64 %289, 7
  store i64 %290, i64* %PC, align 8
  %291 = inttoptr i64 %288 to i64*
  %292 = load i64, i64* %291, align 8
  store i64 %292, i64* %RAX, align 8, !tbaa !2428
  store i64 %292, i64* %RDI, align 8, !tbaa !2428
  %293 = add i64 %287, -13036
  %294 = add i64 %289, 16
  store i64 %294, i64* %PC, align 8
  %295 = inttoptr i64 %293 to i32*
  %296 = load i32, i32* %295, align 4
  %297 = zext i32 %296 to i64
  store i64 %297, i64* %RSI, align 8, !tbaa !2428
  %298 = add i64 %287, -13016
  %299 = add i64 %289, 23
  store i64 %299, i64* %PC, align 8
  %300 = inttoptr i64 %298 to i64*
  %301 = load i64, i64* %300, align 8
  store i64 %301, i64* %RDX, align 8, !tbaa !2428
  %302 = add i64 %289, -959
  %303 = add i64 %289, 28
  %304 = load i64, i64* %9, align 8, !tbaa !2428
  %305 = add i64 %304, -8
  %306 = inttoptr i64 %305 to i64*
  store i64 %303, i64* %306, align 8
  store i64 %305, i64* %9, align 8, !tbaa !2428
  store i64 %302, i64* %113, align 8, !tbaa !2428
  %307 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %286)
  %308 = load i64, i64* %RBP, align 8
  %309 = add i64 %308, -13008
  %310 = load i64, i64* %PC, align 8
  %311 = add i64 %310, 7
  store i64 %311, i64* %PC, align 8
  %312 = inttoptr i64 %309 to i64*
  %313 = load i64, i64* %312, align 8
  store i64 %313, i64* %RDI, align 8, !tbaa !2428
  %314 = add i64 %308, -13036
  %315 = add i64 %310, 13
  store i64 %315, i64* %PC, align 8
  %316 = inttoptr i64 %314 to i32*
  %317 = load i32, i32* %316, align 4
  %318 = zext i32 %317 to i64
  store i64 %318, i64* %RSI, align 8, !tbaa !2428
  %319 = add i64 %308, -13024
  %320 = add i64 %310, 20
  store i64 %320, i64* %PC, align 8
  %321 = inttoptr i64 %319 to i64*
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %RDX, align 8, !tbaa !2428
  %323 = add i64 %310, -987
  %324 = add i64 %310, 25
  %325 = load i64, i64* %9, align 8, !tbaa !2428
  %326 = add i64 %325, -8
  %327 = inttoptr i64 %326 to i64*
  store i64 %324, i64* %327, align 8
  store i64 %326, i64* %9, align 8, !tbaa !2428
  store i64 %323, i64* %113, align 8, !tbaa !2428
  %328 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %307)
  %329 = load i64, i64* %RBP, align 8
  %330 = add i64 %329, -48
  %331 = load i64, i64* %PC, align 8
  %332 = add i64 %331, 8
  store i64 %332, i64* %PC, align 8
  %333 = inttoptr i64 %330 to i64*
  store i64 0, i64* %333, align 8
  %.pre = load i64, i64* %PC, align 8
  br label %block_4009cc

block_400bf6:                                     ; preds = %block_400d4b, %block_400bc0
  %334 = phi i64 [ %.pre17, %block_400bc0 ], [ %905, %block_400d4b ]
  %335 = load i64, i64* %RBP, align 8
  %336 = add i64 %335, -10640
  %337 = add i64 %334, 11
  store i64 %337, i64* %PC, align 8
  %338 = inttoptr i64 %336 to i64*
  %339 = load i64, i64* %338, align 8
  %340 = add i64 %339, -256
  %341 = icmp ult i64 %339, 256
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %32, align 1, !tbaa !2432
  %343 = trunc i64 %340 to i32
  %344 = and i32 %343, 255
  %345 = tail call i32 @llvm.ctpop.i32(i32 %344) #8
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = xor i8 %347, 1
  store i8 %348, i8* %39, align 1, !tbaa !2446
  %349 = xor i64 %339, %340
  %350 = lshr i64 %349, 4
  %351 = trunc i64 %350 to i8
  %352 = and i8 %351, 1
  store i8 %352, i8* %45, align 1, !tbaa !2447
  %353 = icmp eq i64 %340, 0
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %48, align 1, !tbaa !2448
  %355 = lshr i64 %340, 63
  %356 = trunc i64 %355 to i8
  store i8 %356, i8* %51, align 1, !tbaa !2449
  %357 = lshr i64 %339, 63
  %358 = xor i64 %355, %357
  %359 = add nuw nsw i64 %358, %357
  %360 = icmp eq i64 %359, 2
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %57, align 1, !tbaa !2450
  %.v51 = select i1 %341, i64 17, i64 369
  %362 = add i64 %334, %.v51
  store i64 %362, i64* %113, align 8, !tbaa !2428
  br i1 %341, label %block_400c07, label %block_400d67

block_4011f9:                                     ; preds = %block_40110a
  %363 = add i64 %1584, -56
  %364 = add i64 %1611, 8
  store i64 %364, i64* %PC, align 8
  %365 = inttoptr i64 %363 to i64*
  store i64 0, i64* %365, align 8
  %.pre38 = load i64, i64* %PC, align 8
  br label %block_401201

block_400bc0:                                     ; preds = %block_400acd
  %366 = add i64 %1465, 4
  store i64 %366, i64* %PC, align 8
  %367 = load i64, i64* %1440, align 8
  %368 = add i64 %367, 256
  store i64 %368, i64* %RAX, align 8, !tbaa !2428
  %369 = icmp ugt i64 %367, -257
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %32, align 1, !tbaa !2432
  %371 = trunc i64 %368 to i32
  %372 = and i32 %371, 255
  %373 = tail call i32 @llvm.ctpop.i32(i32 %372) #8
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  %376 = xor i8 %375, 1
  store i8 %376, i8* %39, align 1, !tbaa !2446
  %377 = xor i64 %367, %368
  %378 = lshr i64 %377, 4
  %379 = trunc i64 %378 to i8
  %380 = and i8 %379, 1
  store i8 %380, i8* %45, align 1, !tbaa !2447
  %381 = icmp eq i64 %368, 0
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %48, align 1, !tbaa !2448
  %383 = lshr i64 %368, 63
  %384 = trunc i64 %383 to i8
  store i8 %384, i8* %51, align 1, !tbaa !2449
  %385 = lshr i64 %367, 63
  %386 = xor i64 %383, %385
  %387 = add nuw nsw i64 %386, %383
  %388 = icmp eq i64 %387, 2
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %57, align 1, !tbaa !2450
  %390 = shl i64 %368, 2
  %391 = add i64 %1437, -8320
  %392 = add i64 %391, %390
  %393 = add i64 %1465, 21
  store i64 %393, i64* %PC, align 8
  %394 = inttoptr i64 %392 to i32*
  store i32 0, i32* %394, align 4
  %395 = load i64, i64* %RBP, align 8
  %396 = add i64 %395, -10656
  %397 = load i64, i64* %PC, align 8
  %398 = add i64 %397, 11
  store i64 %398, i64* %PC, align 8
  %399 = inttoptr i64 %396 to i64*
  store i64 0, i64* %399, align 8
  %400 = load i64, i64* %RBP, align 8
  %401 = add i64 %400, -10664
  %402 = load i64, i64* %PC, align 8
  %403 = add i64 %402, 11
  store i64 %403, i64* %PC, align 8
  %404 = inttoptr i64 %401 to i64*
  store i64 0, i64* %404, align 8
  %405 = load i64, i64* %RBP, align 8
  %406 = add i64 %405, -10640
  %407 = load i64, i64* %PC, align 8
  %408 = add i64 %407, 11
  store i64 %408, i64* %PC, align 8
  %409 = inttoptr i64 %406 to i64*
  store i64 0, i64* %409, align 8
  %.pre17 = load i64, i64* %PC, align 8
  br label %block_400bf6

block_401183:                                     ; preds = %block_401170
  %410 = add i64 %520, -56
  %411 = add i64 %532, 4
  store i64 %411, i64* %PC, align 8
  %412 = inttoptr i64 %410 to i64*
  %413 = load i64, i64* %412, align 8
  %414 = add i64 %413, -1
  store i64 %414, i64* %RAX, align 8, !tbaa !2428
  %415 = icmp eq i64 %413, 0
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %32, align 1, !tbaa !2432
  %417 = trunc i64 %414 to i32
  %418 = and i32 %417, 255
  %419 = tail call i32 @llvm.ctpop.i32(i32 %418) #8
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  %422 = xor i8 %421, 1
  store i8 %422, i8* %39, align 1, !tbaa !2446
  %423 = xor i64 %413, %414
  %424 = lshr i64 %423, 4
  %425 = trunc i64 %424 to i8
  %426 = and i8 %425, 1
  store i8 %426, i8* %45, align 1, !tbaa !2447
  %427 = icmp eq i64 %414, 0
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %48, align 1, !tbaa !2448
  %429 = lshr i64 %414, 63
  %430 = trunc i64 %429 to i8
  store i8 %430, i8* %51, align 1, !tbaa !2449
  %431 = lshr i64 %413, 63
  %432 = xor i64 %429, %431
  %433 = add nuw nsw i64 %432, %431
  %434 = icmp eq i64 %433, 2
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %57, align 1, !tbaa !2450
  %436 = shl i64 %414, 3
  %437 = add i64 %520, -12736
  %438 = add i64 %437, %436
  %439 = add i64 %532, 16
  store i64 %439, i64* %PC, align 8
  %440 = inttoptr i64 %438 to i64*
  %441 = load i64, i64* %440, align 8
  store i64 %441, i64* %RAX, align 8, !tbaa !2428
  %442 = add i64 %532, 20
  store i64 %442, i64* %PC, align 8
  %443 = load i64, i64* %412, align 8
  store i64 %443, i64* %RCX, align 8, !tbaa !2428
  %444 = shl i64 %443, 3
  %445 = add i64 %437, %444
  %446 = add i64 %532, 28
  store i64 %446, i64* %PC, align 8
  %447 = inttoptr i64 %445 to i64*
  store i64 %441, i64* %447, align 8
  %448 = load i64, i64* %RBP, align 8
  %449 = add i64 %448, -56
  %450 = load i64, i64* %PC, align 8
  %451 = add i64 %450, 4
  store i64 %451, i64* %PC, align 8
  %452 = inttoptr i64 %449 to i64*
  %453 = load i64, i64* %452, align 8
  %454 = add i64 %453, -1
  store i64 %454, i64* %RAX, align 8, !tbaa !2428
  %455 = icmp eq i64 %453, 0
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %32, align 1, !tbaa !2432
  %457 = trunc i64 %454 to i32
  %458 = and i32 %457, 255
  %459 = tail call i32 @llvm.ctpop.i32(i32 %458) #8
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  %462 = xor i8 %461, 1
  store i8 %462, i8* %39, align 1, !tbaa !2446
  %463 = xor i64 %453, %454
  %464 = lshr i64 %463, 4
  %465 = trunc i64 %464 to i8
  %466 = and i8 %465, 1
  store i8 %466, i8* %45, align 1, !tbaa !2447
  %467 = icmp eq i64 %454, 0
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %48, align 1, !tbaa !2448
  %469 = lshr i64 %454, 63
  %470 = trunc i64 %469 to i8
  store i8 %470, i8* %51, align 1, !tbaa !2449
  %471 = lshr i64 %453, 63
  %472 = xor i64 %469, %471
  %473 = add nuw nsw i64 %472, %471
  %474 = icmp eq i64 %473, 2
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %57, align 1, !tbaa !2450
  %476 = add i64 %448, -12992
  %477 = add i64 %476, %454
  %478 = add i64 %450, 15
  store i64 %478, i64* %PC, align 8
  %479 = inttoptr i64 %477 to i8*
  %480 = load i8, i8* %479, align 1
  store i8 %480, i8* %DL, align 1, !tbaa !2453
  %481 = add i64 %450, 19
  store i64 %481, i64* %PC, align 8
  %482 = load i64, i64* %452, align 8
  store i64 %482, i64* %RAX, align 8, !tbaa !2428
  %483 = add i64 %476, %482
  %484 = add i64 %450, 26
  store i64 %484, i64* %PC, align 8
  %485 = inttoptr i64 %483 to i8*
  store i8 %480, i8* %485, align 1
  %486 = load i64, i64* %RBP, align 8
  %487 = add i64 %486, -56
  %488 = load i64, i64* %PC, align 8
  %489 = add i64 %488, 4
  store i64 %489, i64* %PC, align 8
  %490 = inttoptr i64 %487 to i64*
  %491 = load i64, i64* %490, align 8
  %492 = add i64 %491, -1
  store i64 %492, i64* %RAX, align 8, !tbaa !2428
  %493 = icmp ne i64 %491, 0
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %32, align 1, !tbaa !2432
  %495 = trunc i64 %492 to i32
  %496 = and i32 %495, 255
  %497 = tail call i32 @llvm.ctpop.i32(i32 %496) #8
  %498 = trunc i32 %497 to i8
  %499 = and i8 %498, 1
  %500 = xor i8 %499, 1
  store i8 %500, i8* %39, align 1, !tbaa !2446
  %501 = xor i64 %491, 16
  %502 = xor i64 %492, %501
  %503 = lshr i64 %502, 4
  %504 = trunc i64 %503 to i8
  %505 = and i8 %504, 1
  store i8 %505, i8* %45, align 1, !tbaa !2447
  %506 = icmp eq i64 %492, 0
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %48, align 1, !tbaa !2448
  %508 = lshr i64 %492, 63
  %509 = trunc i64 %508 to i8
  store i8 %509, i8* %51, align 1, !tbaa !2449
  %510 = lshr i64 %491, 63
  %511 = xor i64 %508, %510
  %512 = xor i64 %508, 1
  %513 = add nuw nsw i64 %511, %512
  %514 = icmp eq i64 %513, 2
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %57, align 1, !tbaa !2450
  %516 = add i64 %488, 12
  store i64 %516, i64* %PC, align 8
  store i64 %492, i64* %490, align 8
  %517 = load i64, i64* %PC, align 8
  %518 = add i64 %517, -135
  store i64 %518, i64* %113, align 8, !tbaa !2428
  br label %block_40113e

block_401170:                                     ; preds = %block_40113e, %block_401153
  %519 = phi i64 [ %3389, %block_40113e ], [ %.pre37, %block_401153 ]
  %520 = load i64, i64* %RBP, align 8
  %521 = add i64 %520, -13097
  %522 = add i64 %519, 6
  store i64 %522, i64* %PC, align 8
  %523 = inttoptr i64 %521 to i8*
  %524 = load i8, i8* %523, align 1
  store i8 %524, i8* %AL, align 1, !tbaa !2453
  %525 = and i8 %524, 1
  store i8 0, i8* %32, align 1, !tbaa !2432
  %526 = zext i8 %525 to i32
  %527 = tail call i32 @llvm.ctpop.i32(i32 %526) #8
  %528 = trunc i32 %527 to i8
  %529 = xor i8 %528, 1
  store i8 %529, i8* %39, align 1, !tbaa !2446
  %530 = xor i8 %525, 1
  store i8 %530, i8* %48, align 1, !tbaa !2448
  store i8 0, i8* %51, align 1, !tbaa !2449
  store i8 0, i8* %57, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %531 = icmp eq i8 %530, 0
  %.v71 = select i1 %531, i64 19, i64 14
  %532 = add i64 %519, %.v71
  store i64 %532, i64* %113, align 8, !tbaa !2428
  br i1 %531, label %block_401183, label %block_40117e

block_4009da:                                     ; preds = %block_4009cc
  %533 = add i64 %907, -112
  %534 = add i64 %941, 4
  store i64 %534, i64* %PC, align 8
  %535 = inttoptr i64 %533 to i64*
  %536 = load i64, i64* %535, align 8
  store i64 %536, i64* %RAX, align 8, !tbaa !2428
  %537 = add i64 %941, 7
  store i64 %537, i64* %PC, align 8
  %538 = inttoptr i64 %536 to i8*
  %539 = load i8, i8* %538, align 1
  %540 = zext i8 %539 to i64
  store i64 %540, i64* %RCX, align 8, !tbaa !2428
  %541 = zext i8 %539 to i64
  store i64 %541, i64* %RAX, align 8, !tbaa !2428
  %542 = shl nuw nsw i64 %541, 3
  %543 = add i64 %907, -4224
  %544 = add i64 %543, %542
  %545 = add i64 %941, 17
  store i64 %545, i64* %PC, align 8
  %546 = inttoptr i64 %544 to i64*
  %547 = load i64, i64* %546, align 8
  %548 = add i64 %547, 1
  store i64 %548, i64* %RDX, align 8, !tbaa !2428
  %549 = icmp eq i64 %547, -1
  %550 = icmp eq i64 %548, 0
  %551 = or i1 %549, %550
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %32, align 1, !tbaa !2432
  %553 = trunc i64 %548 to i32
  %554 = and i32 %553, 255
  %555 = tail call i32 @llvm.ctpop.i32(i32 %554) #8
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = xor i8 %557, 1
  store i8 %558, i8* %39, align 1, !tbaa !2446
  %559 = xor i64 %547, %548
  %560 = lshr i64 %559, 4
  %561 = trunc i64 %560 to i8
  %562 = and i8 %561, 1
  store i8 %562, i8* %45, align 1, !tbaa !2447
  %563 = icmp eq i64 %548, 0
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %48, align 1, !tbaa !2448
  %565 = lshr i64 %548, 63
  %566 = trunc i64 %565 to i8
  store i8 %566, i8* %51, align 1, !tbaa !2449
  %567 = lshr i64 %547, 63
  %568 = xor i64 %565, %567
  %569 = add nuw nsw i64 %568, %565
  %570 = icmp eq i64 %569, 2
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %57, align 1, !tbaa !2450
  %572 = add i64 %941, 29
  store i64 %572, i64* %PC, align 8
  store i64 %548, i64* %546, align 8
  %573 = load i64, i64* %RBP, align 8
  %574 = add i64 %573, -112
  %575 = load i64, i64* %PC, align 8
  %576 = add i64 %575, 4
  store i64 %576, i64* %PC, align 8
  %577 = inttoptr i64 %574 to i64*
  %578 = load i64, i64* %577, align 8
  %579 = add i64 %578, 1
  store i64 %579, i64* %RAX, align 8, !tbaa !2428
  %580 = icmp eq i64 %578, -1
  %581 = icmp eq i64 %579, 0
  %582 = or i1 %580, %581
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %32, align 1, !tbaa !2432
  %584 = trunc i64 %579 to i32
  %585 = and i32 %584, 255
  %586 = tail call i32 @llvm.ctpop.i32(i32 %585) #8
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  %589 = xor i8 %588, 1
  store i8 %589, i8* %39, align 1, !tbaa !2446
  %590 = xor i64 %578, %579
  %591 = lshr i64 %590, 4
  %592 = trunc i64 %591 to i8
  %593 = and i8 %592, 1
  store i8 %593, i8* %45, align 1, !tbaa !2447
  %594 = icmp eq i64 %579, 0
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %48, align 1, !tbaa !2448
  %596 = lshr i64 %579, 63
  %597 = trunc i64 %596 to i8
  store i8 %597, i8* %51, align 1, !tbaa !2449
  %598 = lshr i64 %578, 63
  %599 = xor i64 %596, %598
  %600 = add nuw nsw i64 %599, %596
  %601 = icmp eq i64 %600, 2
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %57, align 1, !tbaa !2450
  %603 = add i64 %575, 12
  store i64 %603, i64* %PC, align 8
  store i64 %579, i64* %577, align 8
  %604 = load i64, i64* %RBP, align 8
  %605 = add i64 %604, -48
  %606 = load i64, i64* %PC, align 8
  %607 = add i64 %606, 4
  store i64 %607, i64* %PC, align 8
  %608 = inttoptr i64 %605 to i64*
  %609 = load i64, i64* %608, align 8
  %610 = add i64 %609, 1
  store i64 %610, i64* %RAX, align 8, !tbaa !2428
  %611 = icmp eq i64 %609, -1
  %612 = icmp eq i64 %610, 0
  %613 = or i1 %611, %612
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %32, align 1, !tbaa !2432
  %615 = trunc i64 %610 to i32
  %616 = and i32 %615, 255
  %617 = tail call i32 @llvm.ctpop.i32(i32 %616) #8
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  %620 = xor i8 %619, 1
  store i8 %620, i8* %39, align 1, !tbaa !2446
  %621 = xor i64 %609, %610
  %622 = lshr i64 %621, 4
  %623 = trunc i64 %622 to i8
  %624 = and i8 %623, 1
  store i8 %624, i8* %45, align 1, !tbaa !2447
  %625 = icmp eq i64 %610, 0
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %48, align 1, !tbaa !2448
  %627 = lshr i64 %610, 63
  %628 = trunc i64 %627 to i8
  store i8 %628, i8* %51, align 1, !tbaa !2449
  %629 = lshr i64 %609, 63
  %630 = xor i64 %627, %629
  %631 = add nuw nsw i64 %630, %627
  %632 = icmp eq i64 %631, 2
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %57, align 1, !tbaa !2450
  %634 = add i64 %606, 12
  store i64 %634, i64* %PC, align 8
  store i64 %610, i64* %608, align 8
  %635 = load i64, i64* %PC, align 8
  %636 = add i64 %635, -67
  store i64 %636, i64* %113, align 8, !tbaa !2428
  br label %block_4009cc

block_400f6a:                                     ; preds = %block_400e01
  %637 = add i64 %3440, -12992
  store i64 %637, i64* %RAX, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %32, align 1, !tbaa !2432
  store i8 1, i8* %39, align 1, !tbaa !2446
  store i8 1, i8* %48, align 1, !tbaa !2448
  store i8 0, i8* %51, align 1, !tbaa !2449
  store i8 0, i8* %57, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  store i64 2048, i64* %RDX, align 8, !tbaa !2428
  %638 = add i64 %3440, -12736
  store i64 %638, i64* %RDI, align 8, !tbaa !2428
  store i64 7, i64* %RCX, align 8, !tbaa !2428
  %639 = add i64 %3440, -10688
  %640 = add i64 %3474, 34
  store i64 %640, i64* %PC, align 8
  %641 = inttoptr i64 %639 to i32*
  %642 = load i32, i32* %641, align 4
  %643 = sub i32 7, %642
  %644 = zext i32 %643 to i64
  store i64 %644, i64* %RCX, align 8, !tbaa !2428
  %645 = icmp ugt i32 %642, 7
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %32, align 1, !tbaa !2432
  %647 = and i32 %643, 255
  %648 = tail call i32 @llvm.ctpop.i32(i32 %647) #8
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = xor i8 %650, 1
  store i8 %651, i8* %39, align 1, !tbaa !2446
  %652 = xor i32 %642, %643
  %653 = lshr i32 %652, 4
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  store i8 %655, i8* %45, align 1, !tbaa !2447
  %656 = icmp eq i32 %643, 0
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %48, align 1, !tbaa !2448
  %658 = lshr i32 %643, 31
  %659 = trunc i32 %658 to i8
  store i8 %659, i8* %51, align 1, !tbaa !2449
  %660 = lshr i32 %642, 31
  %661 = add nuw nsw i32 %658, %660
  %662 = icmp eq i32 %661, 2
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %57, align 1, !tbaa !2450
  %664 = add i64 %3440, -10681
  %665 = add i64 %3474, 42
  store i64 %665, i64* %PC, align 8
  %666 = inttoptr i64 %664 to i8*
  %667 = load i8, i8* %666, align 1
  %668 = sext i8 %667 to i64
  %669 = and i64 %668, 4294967295
  store i64 %669, i64* %118, align 8, !tbaa !2428
  %670 = sext i8 %667 to i32
  %671 = add i64 %3474, 45
  store i64 %671, i64* %PC, align 8
  %672 = trunc i32 %643 to i5
  switch i5 %672, label %675 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2
    i5 1, label %673
  ]

; <label>:673:                                    ; preds = %block_400f6a
  %674 = icmp slt i8 %667, 0
  br label %684

; <label>:675:                                    ; preds = %block_400f6a
  %676 = zext i32 %670 to i64
  %677 = and i32 %643, 31
  %678 = zext i32 %677 to i64
  %679 = add nuw nsw i64 %678, 4294967295
  %680 = and i64 %679, 4294967295
  %681 = shl i64 %676, %680
  %682 = trunc i64 %681 to i32
  %683 = icmp slt i32 %682, 0
  br label %684

; <label>:684:                                    ; preds = %675, %673
  %685 = phi i1 [ %674, %673 ], [ %683, %675 ]
  %.in = phi i32 [ %670, %673 ], [ %682, %675 ]
  %686 = shl i32 %.in, 1
  %687 = zext i32 %686 to i64
  store i64 %687, i64* %118, align 8, !tbaa !2428
  %688 = zext i1 %685 to i8
  store i8 %688, i8* %32, align 1, !tbaa !2453
  %689 = and i32 %686, 254
  %690 = tail call i32 @llvm.ctpop.i32(i32 %689) #8
  %691 = trunc i32 %690 to i8
  %692 = and i8 %691, 1
  %693 = xor i8 %692, 1
  store i8 %693, i8* %39, align 1, !tbaa !2453
  store i8 0, i8* %45, align 1, !tbaa !2453
  %694 = icmp eq i32 %686, 0
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %48, align 1, !tbaa !2453
  %696 = lshr i32 %.in, 30
  %697 = trunc i32 %696 to i8
  %698 = and i8 %697, 1
  store i8 %698, i8* %51, align 1, !tbaa !2453
  store i8 0, i8* %57, align 1, !tbaa !2453
  %699 = trunc i32 %686 to i8
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2: ; preds = %684, %block_400f6a
  %700 = phi i8 [ %699, %684 ], [ %667, %block_400f6a ]
  store i8 %700, i8* %CL, align 1, !tbaa !2453
  %701 = add i64 %3474, 54
  store i64 %701, i64* %PC, align 8
  store i8 %700, i8* %666, align 1
  %702 = load i64, i64* %RBP, align 8
  %703 = add i64 %702, -10681
  %704 = load i64, i64* %PC, align 8
  %705 = add i64 %704, 6
  store i64 %705, i64* %PC, align 8
  %706 = inttoptr i64 %703 to i8*
  %707 = load i8, i8* %706, align 1
  store i8 %707, i8* %CL, align 1, !tbaa !2453
  %708 = add i64 %702, -120
  %709 = add i64 %704, 10
  store i64 %709, i64* %PC, align 8
  %710 = inttoptr i64 %708 to i64*
  %711 = load i64, i64* %710, align 8
  store i64 %711, i64* %R9, align 8, !tbaa !2428
  %712 = add i64 %702, -10680
  %713 = add i64 %704, 17
  store i64 %713, i64* %PC, align 8
  %714 = inttoptr i64 %712 to i64*
  %715 = load i64, i64* %714, align 8
  store i64 %715, i64* %R10, align 8, !tbaa !2428
  %716 = add i64 %715, %711
  %717 = add i64 %704, 21
  store i64 %717, i64* %PC, align 8
  %718 = inttoptr i64 %716 to i8*
  store i8 %707, i8* %718, align 1
  %719 = load i64, i64* %RBP, align 8
  %720 = add i64 %719, -10680
  %721 = load i64, i64* %PC, align 8
  %722 = add i64 %721, 7
  store i64 %722, i64* %PC, align 8
  %723 = inttoptr i64 %720 to i64*
  %724 = load i64, i64* %723, align 8
  %725 = add i64 %724, 1
  store i64 %725, i64* %R9, align 8, !tbaa !2428
  %726 = icmp eq i64 %724, -1
  %727 = icmp eq i64 %725, 0
  %728 = or i1 %726, %727
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %32, align 1, !tbaa !2432
  %730 = trunc i64 %725 to i32
  %731 = and i32 %730, 255
  %732 = tail call i32 @llvm.ctpop.i32(i32 %731) #8
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %39, align 1, !tbaa !2446
  %736 = xor i64 %724, %725
  %737 = lshr i64 %736, 4
  %738 = trunc i64 %737 to i8
  %739 = and i8 %738, 1
  store i8 %739, i8* %45, align 1, !tbaa !2447
  %740 = icmp eq i64 %725, 0
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %48, align 1, !tbaa !2448
  %742 = lshr i64 %725, 63
  %743 = trunc i64 %742 to i8
  store i8 %743, i8* %51, align 1, !tbaa !2449
  %744 = lshr i64 %724, 63
  %745 = xor i64 %742, %744
  %746 = add nuw nsw i64 %745, %742
  %747 = icmp eq i64 %746, 2
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %57, align 1, !tbaa !2450
  %749 = add i64 %721, 18
  store i64 %749, i64* %PC, align 8
  store i64 %725, i64* %723, align 8
  %750 = load i64, i64* %RBP, align 8
  %751 = add i64 %750, -13096
  %752 = load i64, i64* %RAX, align 8
  %753 = load i64, i64* %PC, align 8
  %754 = add i64 %753, 7
  store i64 %754, i64* %PC, align 8
  %755 = inttoptr i64 %751 to i64*
  store i64 %752, i64* %755, align 8
  %756 = load i64, i64* %PC, align 8
  %757 = add i64 %756, -2558
  %758 = add i64 %756, 5
  %759 = load i64, i64* %9, align 8, !tbaa !2428
  %760 = add i64 %759, -8
  %761 = inttoptr i64 %760 to i64*
  store i64 %758, i64* %761, align 8
  store i64 %760, i64* %9, align 8, !tbaa !2428
  store i64 %757, i64* %113, align 8, !tbaa !2428
  %762 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %MEMORY.11)
  %763 = load i64, i64* %RBP, align 8
  %764 = add i64 %763, -13096
  %765 = load i64, i64* %PC, align 8
  %766 = add i64 %765, 7
  store i64 %766, i64* %PC, align 8
  %767 = inttoptr i64 %764 to i64*
  %768 = load i64, i64* %767, align 8
  store i64 %768, i64* %RAX, align 8, !tbaa !2428
  %769 = add i64 %763, -13000
  %770 = add i64 %765, 14
  store i64 %770, i64* %PC, align 8
  %771 = inttoptr i64 %769 to i64*
  store i64 %768, i64* %771, align 8
  %772 = load i64, i64* %RBP, align 8
  %773 = add i64 %772, -56
  %774 = load i64, i64* %PC, align 8
  %775 = add i64 %774, 8
  store i64 %775, i64* %PC, align 8
  %776 = inttoptr i64 %773 to i64*
  store i64 0, i64* %776, align 8
  %.pre29 = load i64, i64* %PC, align 8
  br label %block_400fe9

block_400d67:                                     ; preds = %block_400bf6
  %777 = add i64 %335, -10664
  %778 = add i64 %362, 8
  store i64 %778, i64* %PC, align 8
  %779 = inttoptr i64 %777 to i64*
  %780 = load i64, i64* %779, align 8
  %781 = add i64 %780, -64
  %782 = icmp ult i64 %780, 64
  %783 = zext i1 %782 to i8
  store i8 %783, i8* %32, align 1, !tbaa !2432
  %784 = trunc i64 %781 to i32
  %785 = and i32 %784, 255
  %786 = tail call i32 @llvm.ctpop.i32(i32 %785) #8
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = xor i8 %788, 1
  store i8 %789, i8* %39, align 1, !tbaa !2446
  %790 = xor i64 %780, %781
  %791 = lshr i64 %790, 4
  %792 = trunc i64 %791 to i8
  %793 = and i8 %792, 1
  store i8 %793, i8* %45, align 1, !tbaa !2447
  %794 = icmp eq i64 %781, 0
  %795 = zext i1 %794 to i8
  store i8 %795, i8* %48, align 1, !tbaa !2448
  %796 = lshr i64 %781, 63
  %797 = trunc i64 %796 to i8
  store i8 %797, i8* %51, align 1, !tbaa !2449
  %798 = lshr i64 %780, 63
  %799 = xor i64 %796, %798
  %800 = add nuw nsw i64 %799, %798
  %801 = icmp eq i64 %800, 2
  %802 = zext i1 %801 to i8
  store i8 %802, i8* %57, align 1, !tbaa !2450
  %803 = or i1 %794, %782
  %.v57 = select i1 %803, i64 55, i64 14
  %804 = add i64 %362, %.v57
  store i64 %804, i64* %113, align 8, !tbaa !2428
  br i1 %803, label %block_400d9e, label %block_400d75

block_401153:                                     ; preds = %block_40113e
  %805 = load i64, i64* %RBP, align 8
  %806 = add i64 %805, -56
  %807 = add i64 %3389, 4
  store i64 %807, i64* %PC, align 8
  %808 = inttoptr i64 %806 to i64*
  %809 = load i64, i64* %808, align 8
  %810 = add i64 %809, -1
  store i64 %810, i64* %RAX, align 8, !tbaa !2428
  %811 = icmp eq i64 %809, 0
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %32, align 1, !tbaa !2432
  %813 = trunc i64 %810 to i32
  %814 = and i32 %813, 255
  %815 = tail call i32 @llvm.ctpop.i32(i32 %814) #8
  %816 = trunc i32 %815 to i8
  %817 = and i8 %816, 1
  %818 = xor i8 %817, 1
  store i8 %818, i8* %39, align 1, !tbaa !2446
  %819 = xor i64 %809, %810
  %820 = lshr i64 %819, 4
  %821 = trunc i64 %820 to i8
  %822 = and i8 %821, 1
  store i8 %822, i8* %45, align 1, !tbaa !2447
  %823 = icmp eq i64 %810, 0
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %48, align 1, !tbaa !2448
  %825 = lshr i64 %810, 63
  %826 = trunc i64 %825 to i8
  store i8 %826, i8* %51, align 1, !tbaa !2449
  %827 = lshr i64 %809, 63
  %828 = xor i64 %825, %827
  %829 = add nuw nsw i64 %828, %827
  %830 = icmp eq i64 %829, 2
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %57, align 1, !tbaa !2450
  %832 = shl i64 %810, 3
  %833 = add i64 %805, -12736
  %834 = add i64 %833, %832
  %835 = add i64 %3389, 16
  store i64 %835, i64* %PC, align 8
  %836 = inttoptr i64 %834 to i64*
  %837 = load i64, i64* %836, align 8
  store i64 %837, i64* %RAX, align 8, !tbaa !2428
  %838 = add i64 %805, -88
  %839 = add i64 %3389, 20
  store i64 %839, i64* %PC, align 8
  %840 = inttoptr i64 %838 to i64*
  %841 = load i64, i64* %840, align 8
  %842 = sub i64 %837, %841
  %843 = icmp ult i64 %837, %841
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %32, align 1, !tbaa !2432
  %845 = trunc i64 %842 to i32
  %846 = and i32 %845, 255
  %847 = tail call i32 @llvm.ctpop.i32(i32 %846) #8
  %848 = trunc i32 %847 to i8
  %849 = and i8 %848, 1
  %850 = xor i8 %849, 1
  store i8 %850, i8* %39, align 1, !tbaa !2446
  %851 = xor i64 %841, %837
  %852 = xor i64 %851, %842
  %853 = lshr i64 %852, 4
  %854 = trunc i64 %853 to i8
  %855 = and i8 %854, 1
  store i8 %855, i8* %45, align 1, !tbaa !2447
  %856 = icmp eq i64 %842, 0
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %48, align 1, !tbaa !2448
  %858 = lshr i64 %842, 63
  %859 = trunc i64 %858 to i8
  store i8 %859, i8* %51, align 1, !tbaa !2449
  %860 = lshr i64 %837, 63
  %861 = lshr i64 %841, 63
  %862 = xor i64 %861, %860
  %863 = xor i64 %858, %860
  %864 = add nuw nsw i64 %863, %862
  %865 = icmp eq i64 %864, 2
  %866 = zext i1 %865 to i8
  store i8 %866, i8* %57, align 1, !tbaa !2450
  %867 = or i1 %856, %843
  %868 = xor i1 %867, true
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %CL, align 1, !tbaa !2453
  %870 = add i64 %805, -13097
  %871 = add i64 %3389, 29
  store i64 %871, i64* %PC, align 8
  %872 = inttoptr i64 %870 to i8*
  store i8 %869, i8* %872, align 1
  %.pre37 = load i64, i64* %PC, align 8
  br label %block_401170

block_400d4b:                                     ; preds = %block_400c1d, %block_400d46
  %873 = phi i64 [ %943, %block_400d46 ], [ %3181, %block_400c1d ]
  %874 = load i64, i64* %RBP, align 8
  %875 = add i64 %874, -10640
  %876 = add i64 %873, 12
  store i64 %876, i64* %PC, align 8
  %877 = inttoptr i64 %875 to i64*
  %878 = load i64, i64* %877, align 8
  %879 = add i64 %878, 1
  store i64 %879, i64* %RAX, align 8, !tbaa !2428
  %880 = icmp eq i64 %878, -1
  %881 = icmp eq i64 %879, 0
  %882 = or i1 %880, %881
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %32, align 1, !tbaa !2432
  %884 = trunc i64 %879 to i32
  %885 = and i32 %884, 255
  %886 = tail call i32 @llvm.ctpop.i32(i32 %885) #8
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  %889 = xor i8 %888, 1
  store i8 %889, i8* %39, align 1, !tbaa !2446
  %890 = xor i64 %878, %879
  %891 = lshr i64 %890, 4
  %892 = trunc i64 %891 to i8
  %893 = and i8 %892, 1
  store i8 %893, i8* %45, align 1, !tbaa !2447
  %894 = icmp eq i64 %879, 0
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %48, align 1, !tbaa !2448
  %896 = lshr i64 %879, 63
  %897 = trunc i64 %896 to i8
  store i8 %897, i8* %51, align 1, !tbaa !2449
  %898 = lshr i64 %878, 63
  %899 = xor i64 %896, %898
  %900 = add nuw nsw i64 %899, %896
  %901 = icmp eq i64 %900, 2
  %902 = zext i1 %901 to i8
  store i8 %902, i8* %57, align 1, !tbaa !2450
  %903 = add i64 %873, 23
  store i64 %903, i64* %PC, align 8
  store i64 %879, i64* %877, align 8
  %904 = load i64, i64* %PC, align 8
  %905 = add i64 %904, -364
  store i64 %905, i64* %113, align 8, !tbaa !2428
  br label %block_400bf6

block_4009cc:                                     ; preds = %block_4009da, %block_400870
  %906 = phi i64 [ %636, %block_4009da ], [ %.pre, %block_400870 ]
  %907 = load i64, i64* %RBP, align 8
  %908 = add i64 %907, -48
  %909 = add i64 %906, 4
  store i64 %909, i64* %PC, align 8
  %910 = inttoptr i64 %908 to i64*
  %911 = load i64, i64* %910, align 8
  store i64 %911, i64* %RAX, align 8, !tbaa !2428
  %912 = add i64 %907, -40
  %913 = add i64 %906, 8
  store i64 %913, i64* %PC, align 8
  %914 = inttoptr i64 %912 to i64*
  %915 = load i64, i64* %914, align 8
  %916 = sub i64 %911, %915
  %917 = icmp ult i64 %911, %915
  %918 = zext i1 %917 to i8
  store i8 %918, i8* %32, align 1, !tbaa !2432
  %919 = trunc i64 %916 to i32
  %920 = and i32 %919, 255
  %921 = tail call i32 @llvm.ctpop.i32(i32 %920) #8
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  %924 = xor i8 %923, 1
  store i8 %924, i8* %39, align 1, !tbaa !2446
  %925 = xor i64 %915, %911
  %926 = xor i64 %925, %916
  %927 = lshr i64 %926, 4
  %928 = trunc i64 %927 to i8
  %929 = and i8 %928, 1
  store i8 %929, i8* %45, align 1, !tbaa !2447
  %930 = icmp eq i64 %916, 0
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %48, align 1, !tbaa !2448
  %932 = lshr i64 %916, 63
  %933 = trunc i64 %932 to i8
  store i8 %933, i8* %51, align 1, !tbaa !2449
  %934 = lshr i64 %911, 63
  %935 = lshr i64 %915, 63
  %936 = xor i64 %935, %934
  %937 = xor i64 %932, %934
  %938 = add nuw nsw i64 %937, %936
  %939 = icmp eq i64 %938, 2
  %940 = zext i1 %939 to i8
  store i8 %940, i8* %57, align 1, !tbaa !2450
  %.v = select i1 %917, i64 14, i64 72
  %941 = add i64 %906, %.v
  store i64 %941, i64* %113, align 8, !tbaa !2428
  br i1 %917, label %block_4009da, label %block_400a14

block_400d46:                                     ; preds = %block_400d3b, %block_400d2a
  %942 = phi i64 [ %.pre23, %block_400d3b ], [ %1142, %block_400d2a ]
  %943 = add i64 %942, 5
  br label %block_400d4b

block_400fe9:                                     ; preds = %block_4010ec, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2
  %944 = phi i64 [ %.pre29, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2 ], [ %1374, %block_4010ec ]
  %945 = load i64, i64* %RBP, align 8
  %946 = add i64 %945, -56
  %947 = add i64 %944, 8
  store i64 %947, i64* %PC, align 8
  %948 = inttoptr i64 %946 to i64*
  %949 = load i64, i64* %948, align 8
  %950 = add i64 %949, -256
  %951 = icmp ult i64 %949, 256
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %32, align 1, !tbaa !2432
  %953 = trunc i64 %950 to i32
  %954 = and i32 %953, 255
  %955 = tail call i32 @llvm.ctpop.i32(i32 %954) #8
  %956 = trunc i32 %955 to i8
  %957 = and i8 %956, 1
  %958 = xor i8 %957, 1
  store i8 %958, i8* %39, align 1, !tbaa !2446
  %959 = xor i64 %949, %950
  %960 = lshr i64 %959, 4
  %961 = trunc i64 %960 to i8
  %962 = and i8 %961, 1
  store i8 %962, i8* %45, align 1, !tbaa !2447
  %963 = icmp eq i64 %950, 0
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %48, align 1, !tbaa !2448
  %965 = lshr i64 %950, 63
  %966 = trunc i64 %965 to i8
  store i8 %966, i8* %51, align 1, !tbaa !2449
  %967 = lshr i64 %949, 63
  %968 = xor i64 %965, %967
  %969 = add nuw nsw i64 %968, %967
  %970 = icmp eq i64 %969, 2
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %57, align 1, !tbaa !2450
  %.v65 = select i1 %951, i64 14, i64 281
  %972 = add i64 %944, %.v65
  store i64 %972, i64* %113, align 8, !tbaa !2428
  br i1 %951, label %block_400ff7, label %block_401102

block_400ede:                                     ; preds = %block_400e5b
  %973 = add i64 %2701, 6
  store i64 %973, i64* %PC, align 8
  %974 = load i32, i32* %2678, align 4
  %975 = add i32 %974, 1
  %976 = zext i32 %975 to i64
  store i64 %976, i64* %RAX, align 8, !tbaa !2428
  %977 = icmp eq i32 %974, -1
  %978 = icmp eq i32 %975, 0
  %979 = or i1 %977, %978
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %32, align 1, !tbaa !2432
  %981 = and i32 %975, 255
  %982 = tail call i32 @llvm.ctpop.i32(i32 %981) #8
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  %985 = xor i8 %984, 1
  store i8 %985, i8* %39, align 1, !tbaa !2446
  %986 = xor i32 %974, %975
  %987 = lshr i32 %986, 4
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  store i8 %989, i8* %45, align 1, !tbaa !2447
  %990 = icmp eq i32 %975, 0
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %48, align 1, !tbaa !2448
  %992 = lshr i32 %975, 31
  %993 = trunc i32 %992 to i8
  store i8 %993, i8* %51, align 1, !tbaa !2449
  %994 = lshr i32 %974, 31
  %995 = xor i32 %992, %994
  %996 = add nuw nsw i32 %995, %992
  %997 = icmp eq i32 %996, 2
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %57, align 1, !tbaa !2450
  %999 = add i64 %2701, 15
  store i64 %999, i64* %PC, align 8
  store i32 %975, i32* %2678, align 4
  %1000 = load i64, i64* %RBP, align 8
  %1001 = add i64 %1000, -10681
  %1002 = load i64, i64* %PC, align 8
  %1003 = add i64 %1002, 7
  store i64 %1003, i64* %PC, align 8
  %1004 = inttoptr i64 %1001 to i8*
  %1005 = load i8, i8* %1004, align 1
  %1006 = sext i8 %1005 to i32
  %1007 = shl nsw i32 %1006, 1
  %1008 = zext i32 %1007 to i64
  store i64 %1008, i64* %RAX, align 8, !tbaa !2428
  %.lobit64 = lshr i8 %1005, 7
  store i8 %.lobit64, i8* %32, align 1, !tbaa !2453
  %1009 = and i32 %1007, 254
  %1010 = tail call i32 @llvm.ctpop.i32(i32 %1009) #8
  %1011 = trunc i32 %1010 to i8
  %1012 = and i8 %1011, 1
  %1013 = xor i8 %1012, 1
  store i8 %1013, i8* %39, align 1, !tbaa !2453
  store i8 0, i8* %45, align 1, !tbaa !2453
  %1014 = icmp eq i8 %1005, 0
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %48, align 1, !tbaa !2453
  %1016 = lshr i32 %1006, 30
  %1017 = trunc i32 %1016 to i8
  %1018 = and i8 %1017, 1
  store i8 %1018, i8* %51, align 1, !tbaa !2453
  store i8 0, i8* %57, align 1, !tbaa !2453
  %1019 = trunc i32 %1007 to i8
  store i8 %1019, i8* %CL, align 1, !tbaa !2453
  %1020 = add i64 %1002, 18
  store i64 %1020, i64* %PC, align 8
  store i8 %1019, i8* %1004, align 1
  %.pre26 = load i64, i64* %PC, align 8
  br label %block_400eff

block_401332:                                     ; preds = %block_401316
  %1021 = add i64 %1232, 8
  store i64 %1021, i64* %PC, align 8
  store i64 128, i64* %1207, align 8
  %1022 = load i64, i64* %RBP, align 8
  %1023 = add i64 %1022, -104
  %1024 = load i64, i64* %PC, align 8
  %1025 = add i64 %1024, 4
  store i64 %1025, i64* %PC, align 8
  %1026 = inttoptr i64 %1023 to i64*
  %1027 = load i64, i64* %1026, align 8
  %1028 = add i64 %1027, 1
  store i64 %1028, i64* %RAX, align 8, !tbaa !2428
  %1029 = icmp eq i64 %1027, -1
  %1030 = icmp eq i64 %1028, 0
  %1031 = or i1 %1029, %1030
  %1032 = zext i1 %1031 to i8
  store i8 %1032, i8* %32, align 1, !tbaa !2432
  %1033 = trunc i64 %1028 to i32
  %1034 = and i32 %1033, 255
  %1035 = tail call i32 @llvm.ctpop.i32(i32 %1034) #8
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  %1038 = xor i8 %1037, 1
  store i8 %1038, i8* %39, align 1, !tbaa !2446
  %1039 = xor i64 %1027, %1028
  %1040 = lshr i64 %1039, 4
  %1041 = trunc i64 %1040 to i8
  %1042 = and i8 %1041, 1
  store i8 %1042, i8* %45, align 1, !tbaa !2447
  %1043 = icmp eq i64 %1028, 0
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %48, align 1, !tbaa !2448
  %1045 = lshr i64 %1028, 63
  %1046 = trunc i64 %1045 to i8
  store i8 %1046, i8* %51, align 1, !tbaa !2449
  %1047 = lshr i64 %1027, 63
  %1048 = xor i64 %1045, %1047
  %1049 = add nuw nsw i64 %1048, %1045
  %1050 = icmp eq i64 %1049, 2
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %57, align 1, !tbaa !2450
  %1052 = add i64 %1024, 12
  store i64 %1052, i64* %PC, align 8
  store i64 %1028, i64* %1026, align 8
  %.pre43 = load i64, i64* %PC, align 8
  br label %block_401346

block_400f30:                                     ; preds = %block_400eff, %block_400f1e
  %1053 = phi i64 [ %1341, %block_400eff ], [ %.pre28, %block_400f1e ]
  %1054 = phi i64 [ %1310, %block_400eff ], [ %.pre27, %block_400f1e ]
  %1055 = add i64 %1054, -72
  %1056 = add i64 %1053, 4
  store i64 %1056, i64* %PC, align 8
  %1057 = inttoptr i64 %1055 to i64*
  %1058 = load i64, i64* %1057, align 8
  %1059 = lshr i64 %1058, 63
  %1060 = trunc i64 %1059 to i8
  %1061 = trunc i64 %1058 to i8
  %1062 = and i8 %1061, 1
  %1063 = lshr i64 %1058, 1
  store i64 %1063, i64* %RAX, align 8, !tbaa !2428
  store i8 %1062, i8* %32, align 1, !tbaa !2453
  %1064 = trunc i64 %1063 to i32
  %1065 = and i32 %1064, 255
  %1066 = tail call i32 @llvm.ctpop.i32(i32 %1065) #8
  %1067 = trunc i32 %1066 to i8
  %1068 = and i8 %1067, 1
  %1069 = xor i8 %1068, 1
  store i8 %1069, i8* %39, align 1, !tbaa !2453
  store i8 0, i8* %45, align 1, !tbaa !2453
  %1070 = icmp eq i64 %1063, 0
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %48, align 1, !tbaa !2453
  store i8 0, i8* %51, align 1, !tbaa !2453
  store i8 %1060, i8* %57, align 1, !tbaa !2453
  %1072 = add i64 %1053, 12
  store i64 %1072, i64* %PC, align 8
  store i64 %1063, i64* %1057, align 8
  %1073 = load i64, i64* %RBP, align 8
  %1074 = add i64 %1073, -48
  %1075 = load i64, i64* %PC, align 8
  %1076 = add i64 %1075, 4
  store i64 %1076, i64* %PC, align 8
  %1077 = inttoptr i64 %1074 to i64*
  %1078 = load i64, i64* %1077, align 8
  %1079 = add i64 %1078, 1
  store i64 %1079, i64* %RAX, align 8, !tbaa !2428
  %1080 = icmp eq i64 %1078, -1
  %1081 = icmp eq i64 %1079, 0
  %1082 = or i1 %1080, %1081
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %32, align 1, !tbaa !2432
  %1084 = trunc i64 %1079 to i32
  %1085 = and i32 %1084, 255
  %1086 = tail call i32 @llvm.ctpop.i32(i32 %1085) #8
  %1087 = trunc i32 %1086 to i8
  %1088 = and i8 %1087, 1
  %1089 = xor i8 %1088, 1
  store i8 %1089, i8* %39, align 1, !tbaa !2446
  %1090 = xor i64 %1078, %1079
  %1091 = lshr i64 %1090, 4
  %1092 = trunc i64 %1091 to i8
  %1093 = and i8 %1092, 1
  store i8 %1093, i8* %45, align 1, !tbaa !2447
  %1094 = icmp eq i64 %1079, 0
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %48, align 1, !tbaa !2448
  %1096 = lshr i64 %1079, 63
  %1097 = trunc i64 %1096 to i8
  store i8 %1097, i8* %51, align 1, !tbaa !2449
  %1098 = lshr i64 %1078, 63
  %1099 = xor i64 %1096, %1098
  %1100 = add nuw nsw i64 %1099, %1096
  %1101 = icmp eq i64 %1100, 2
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %57, align 1, !tbaa !2450
  %1103 = add i64 %1075, 12
  store i64 %1103, i64* %PC, align 8
  store i64 %1079, i64* %1077, align 8
  %1104 = load i64, i64* %PC, align 8
  %1105 = add i64 %1104, -269
  store i64 %1105, i64* %113, align 8, !tbaa !2428
  br label %block_400e3b

block_400d2a:                                     ; preds = %block_400cde, %block_400d1c
  %1106 = phi i64 [ %1676, %block_400cde ], [ %.pre22, %block_400d1c ]
  %1107 = phi i64 [ %1640, %block_400cde ], [ %.pre21, %block_400d1c ]
  %1108 = add i64 %1107, -48
  %1109 = add i64 %1106, 4
  store i64 %1109, i64* %PC, align 8
  %1110 = inttoptr i64 %1108 to i64*
  %1111 = load i64, i64* %1110, align 8
  store i64 %1111, i64* %RAX, align 8, !tbaa !2428
  %1112 = add i64 %1107, -10664
  %1113 = add i64 %1106, 11
  store i64 %1113, i64* %PC, align 8
  %1114 = inttoptr i64 %1112 to i64*
  %1115 = load i64, i64* %1114, align 8
  %1116 = sub i64 %1111, %1115
  %1117 = icmp ult i64 %1111, %1115
  %1118 = zext i1 %1117 to i8
  store i8 %1118, i8* %32, align 1, !tbaa !2432
  %1119 = trunc i64 %1116 to i32
  %1120 = and i32 %1119, 255
  %1121 = tail call i32 @llvm.ctpop.i32(i32 %1120) #8
  %1122 = trunc i32 %1121 to i8
  %1123 = and i8 %1122, 1
  %1124 = xor i8 %1123, 1
  store i8 %1124, i8* %39, align 1, !tbaa !2446
  %1125 = xor i64 %1115, %1111
  %1126 = xor i64 %1125, %1116
  %1127 = lshr i64 %1126, 4
  %1128 = trunc i64 %1127 to i8
  %1129 = and i8 %1128, 1
  store i8 %1129, i8* %45, align 1, !tbaa !2447
  %1130 = icmp eq i64 %1116, 0
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %48, align 1, !tbaa !2448
  %1132 = lshr i64 %1116, 63
  %1133 = trunc i64 %1132 to i8
  store i8 %1133, i8* %51, align 1, !tbaa !2449
  %1134 = lshr i64 %1111, 63
  %1135 = lshr i64 %1115, 63
  %1136 = xor i64 %1135, %1134
  %1137 = xor i64 %1132, %1134
  %1138 = add nuw nsw i64 %1137, %1136
  %1139 = icmp eq i64 %1138, 2
  %1140 = zext i1 %1139 to i8
  store i8 %1140, i8* %57, align 1, !tbaa !2450
  %1141 = or i1 %1130, %1117
  %.v56 = select i1 %1141, i64 28, i64 17
  %1142 = add i64 %1106, %.v56
  store i64 %1142, i64* %113, align 8, !tbaa !2428
  br i1 %1141, label %block_400d46, label %block_400d3b

block_401321:                                     ; preds = %block_401316
  %1143 = add i64 %1232, 4
  store i64 %1143, i64* %PC, align 8
  %1144 = load i64, i64* %1207, align 8
  %1145 = lshr i64 %1144, 63
  %1146 = trunc i64 %1145 to i8
  %1147 = trunc i64 %1144 to i8
  %1148 = and i8 %1147, 1
  %1149 = lshr i64 %1144, 1
  store i64 %1149, i64* %RAX, align 8, !tbaa !2428
  store i8 %1148, i8* %32, align 1, !tbaa !2453
  %1150 = trunc i64 %1149 to i32
  %1151 = and i32 %1150, 255
  %1152 = tail call i32 @llvm.ctpop.i32(i32 %1151) #8
  %1153 = trunc i32 %1152 to i8
  %1154 = and i8 %1153, 1
  %1155 = xor i8 %1154, 1
  store i8 %1155, i8* %39, align 1, !tbaa !2453
  store i8 0, i8* %45, align 1, !tbaa !2453
  %1156 = icmp eq i64 %1149, 0
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %48, align 1, !tbaa !2453
  store i8 0, i8* %51, align 1, !tbaa !2453
  store i8 %1146, i8* %57, align 1, !tbaa !2453
  %1158 = add i64 %1232, 12
  store i64 %1158, i64* %PC, align 8
  store i64 %1149, i64* %1207, align 8
  %1159 = load i64, i64* %PC, align 8
  %1160 = add i64 %1159, 25
  store i64 %1160, i64* %113, align 8, !tbaa !2428
  br label %block_401346

block_400f1e:                                     ; preds = %block_400eff
  %1161 = add i64 %1310, -10681
  %1162 = add i64 %1341, 7
  store i64 %1162, i64* %PC, align 8
  %1163 = inttoptr i64 %1161 to i8*
  %1164 = load i8, i8* %1163, align 1
  %1165 = sext i8 %1164 to i64
  %1166 = and i64 %1165, 4294967294
  %1167 = or i64 %1166, 1
  %1168 = trunc i64 %1167 to i32
  store i64 %1167, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %32, align 1, !tbaa !2432
  %1169 = and i32 %1168, 255
  %1170 = tail call i32 @llvm.ctpop.i32(i32 %1169) #8
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  %1173 = xor i8 %1172, 1
  store i8 %1173, i8* %39, align 1, !tbaa !2446
  store i8 0, i8* %48, align 1, !tbaa !2448
  %1174 = lshr i32 %1168, 31
  %1175 = trunc i32 %1174 to i8
  store i8 %1175, i8* %51, align 1, !tbaa !2449
  store i8 0, i8* %57, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %1176 = trunc i64 %1167 to i8
  store i8 %1176, i8* %CL, align 1, !tbaa !2453
  %1177 = add i64 %1341, 18
  store i64 %1177, i64* %PC, align 8
  store i8 %1176, i8* %1163, align 1
  %.pre27 = load i64, i64* %RBP, align 8
  %.pre28 = load i64, i64* %PC, align 8
  br label %block_400f30

block_400d75:                                     ; preds = %block_400d67
  store i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %1178 = load i64, i64* @stderr, align 32
  store i64 %1178, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %1179 = add i64 %804, -1925
  %1180 = add i64 %804, 25
  %1181 = load i64, i64* %9, align 8, !tbaa !2428
  %1182 = add i64 %1181, -8
  %1183 = inttoptr i64 %1182 to i64*
  store i64 %1180, i64* %1183, align 8
  store i64 %1182, i64* %9, align 8, !tbaa !2428
  store i64 %1179, i64* %113, align 8, !tbaa !2428
  %1184 = tail call fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.11)
  %1185 = load i64, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %1186 = load i64, i64* %RBP, align 8
  %1187 = add i64 %1186, -13080
  %1188 = load i32, i32* %EAX, align 4
  %1189 = add i64 %1185, 11
  store i64 %1189, i64* %PC, align 8
  %1190 = inttoptr i64 %1187 to i32*
  store i32 %1188, i32* %1190, align 4
  %1191 = load i64, i64* %PC, align 8
  %1192 = add i64 %1191, -1913
  %1193 = add i64 %1191, 5
  %1194 = load i64, i64* %9, align 8, !tbaa !2428
  %1195 = add i64 %1194, -8
  %1196 = inttoptr i64 %1195 to i64*
  store i64 %1193, i64* %1196, align 8
  store i64 %1195, i64* %9, align 8, !tbaa !2428
  store i64 %1192, i64* %113, align 8, !tbaa !2428
  %1197 = tail call fastcc %struct.Memory* @ext_400620_exit(%struct.State* nonnull %0, %struct.Memory* %1184)
  %1198 = load i64, i64* %PC, align 8
  %1199 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %1198, %struct.Memory* %1197)
  ret %struct.Memory* %1199

block_400d1c:                                     ; preds = %block_400cde
  %1200 = add i64 %1676, 7
  store i64 %1200, i64* %PC, align 8
  %1201 = load i64, i64* %1644, align 8
  store i64 %1201, i64* %RAX, align 8, !tbaa !2428
  %1202 = add i64 %1676, 14
  store i64 %1202, i64* %PC, align 8
  store i64 %1201, i64* %1648, align 8
  %.pre21 = load i64, i64* %RBP, align 8
  %.pre22 = load i64, i64* %PC, align 8
  br label %block_400d2a

block_401316:                                     ; preds = %block_4012c7, %block_4012dd
  %1203 = phi i64 [ %.pre42, %block_4012dd ], [ %1710, %block_4012c7 ]
  %1204 = phi i64 [ %.pre41, %block_4012dd ], [ %1784, %block_4012c7 ]
  %1205 = add i64 %1204, -72
  %1206 = add i64 %1203, 5
  store i64 %1206, i64* %PC, align 8
  %1207 = inttoptr i64 %1205 to i64*
  %1208 = load i64, i64* %1207, align 8
  %1209 = add i64 %1208, -1
  %1210 = icmp eq i64 %1208, 0
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %32, align 1, !tbaa !2432
  %1212 = trunc i64 %1209 to i32
  %1213 = and i32 %1212, 255
  %1214 = tail call i32 @llvm.ctpop.i32(i32 %1213) #8
  %1215 = trunc i32 %1214 to i8
  %1216 = and i8 %1215, 1
  %1217 = xor i8 %1216, 1
  store i8 %1217, i8* %39, align 1, !tbaa !2446
  %1218 = xor i64 %1208, %1209
  %1219 = lshr i64 %1218, 4
  %1220 = trunc i64 %1219 to i8
  %1221 = and i8 %1220, 1
  store i8 %1221, i8* %45, align 1, !tbaa !2447
  %1222 = icmp eq i64 %1209, 0
  %1223 = zext i1 %1222 to i8
  store i8 %1223, i8* %48, align 1, !tbaa !2448
  %1224 = lshr i64 %1209, 63
  %1225 = trunc i64 %1224 to i8
  store i8 %1225, i8* %51, align 1, !tbaa !2449
  %1226 = lshr i64 %1208, 63
  %1227 = xor i64 %1224, %1226
  %1228 = add nuw nsw i64 %1227, %1226
  %1229 = icmp eq i64 %1228, 2
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %57, align 1, !tbaa !2450
  %1231 = or i1 %1222, %1210
  %.v77 = select i1 %1231, i64 28, i64 11
  %1232 = add i64 %1203, %.v77
  store i64 %1232, i64* %113, align 8, !tbaa !2428
  br i1 %1231, label %block_401332, label %block_401321

block_400ff7:                                     ; preds = %block_400fe9
  %1233 = add i64 %972, 4
  store i64 %1233, i64* %PC, align 8
  %1234 = load i64, i64* %948, align 8
  store i64 %1234, i64* %RAX, align 8, !tbaa !2428
  %1235 = trunc i64 %1234 to i8
  store i8 %1235, i8* %CL, align 1, !tbaa !2453
  %1236 = add i64 %945, -13000
  %1237 = add i64 %972, 13
  store i64 %1237, i64* %PC, align 8
  %1238 = inttoptr i64 %1236 to i64*
  %1239 = load i64, i64* %1238, align 8
  store i64 %1239, i64* %RAX, align 8, !tbaa !2428
  %1240 = add i64 %972, 15
  store i64 %1240, i64* %PC, align 8
  %1241 = inttoptr i64 %1239 to i8*
  store i8 %1235, i8* %1241, align 1
  %1242 = load i64, i64* %RBP, align 8
  %1243 = add i64 %1242, -13000
  %1244 = load i64, i64* %PC, align 8
  %1245 = add i64 %1244, 7
  store i64 %1245, i64* %PC, align 8
  %1246 = inttoptr i64 %1243 to i64*
  %1247 = load i64, i64* %1246, align 8
  %1248 = add i64 %1247, 1
  store i64 %1248, i64* %RAX, align 8, !tbaa !2428
  %1249 = icmp eq i64 %1247, -1
  %1250 = icmp eq i64 %1248, 0
  %1251 = or i1 %1249, %1250
  %1252 = zext i1 %1251 to i8
  store i8 %1252, i8* %32, align 1, !tbaa !2432
  %1253 = trunc i64 %1248 to i32
  %1254 = and i32 %1253, 255
  %1255 = tail call i32 @llvm.ctpop.i32(i32 %1254) #8
  %1256 = trunc i32 %1255 to i8
  %1257 = and i8 %1256, 1
  %1258 = xor i8 %1257, 1
  store i8 %1258, i8* %39, align 1, !tbaa !2446
  %1259 = xor i64 %1247, %1248
  %1260 = lshr i64 %1259, 4
  %1261 = trunc i64 %1260 to i8
  %1262 = and i8 %1261, 1
  store i8 %1262, i8* %45, align 1, !tbaa !2447
  %1263 = icmp eq i64 %1248, 0
  %1264 = zext i1 %1263 to i8
  store i8 %1264, i8* %48, align 1, !tbaa !2448
  %1265 = lshr i64 %1248, 63
  %1266 = trunc i64 %1265 to i8
  store i8 %1266, i8* %51, align 1, !tbaa !2449
  %1267 = lshr i64 %1247, 63
  %1268 = xor i64 %1265, %1267
  %1269 = add nuw nsw i64 %1268, %1265
  %1270 = icmp eq i64 %1269, 2
  %1271 = zext i1 %1270 to i8
  store i8 %1271, i8* %57, align 1, !tbaa !2450
  %1272 = add i64 %1244, 18
  store i64 %1272, i64* %PC, align 8
  store i64 %1248, i64* %1246, align 8
  %1273 = load i64, i64* %RBP, align 8
  %1274 = add i64 %1273, -56
  %1275 = load i64, i64* %PC, align 8
  %1276 = add i64 %1275, 4
  store i64 %1276, i64* %PC, align 8
  %1277 = inttoptr i64 %1274 to i64*
  %1278 = load i64, i64* %1277, align 8
  store i64 %1278, i64* %RAX, align 8, !tbaa !2428
  %1279 = shl i64 %1278, 3
  %1280 = add i64 %1273, -10368
  %1281 = add i64 %1280, %1279
  %1282 = add i64 %1275, 12
  store i64 %1282, i64* %PC, align 8
  %1283 = inttoptr i64 %1281 to i64*
  %1284 = load i64, i64* %1283, align 8
  store i64 %1284, i64* %RAX, align 8, !tbaa !2428
  %1285 = add i64 %1275, 16
  store i64 %1285, i64* %PC, align 8
  %1286 = load i64, i64* %1277, align 8
  store i64 %1286, i64* %RDX, align 8, !tbaa !2428
  %1287 = add i64 %1273, -10624
  %1288 = add i64 %1287, %1286
  %1289 = add i64 %1275, 24
  store i64 %1289, i64* %PC, align 8
  %1290 = inttoptr i64 %1288 to i8*
  %1291 = load i8, i8* %1290, align 1
  %1292 = zext i8 %1291 to i64
  store i64 %1292, i64* %RSI, align 8, !tbaa !2428
  %1293 = zext i8 %1291 to i64
  store i64 %1293, i64* %RDX, align 8, !tbaa !2428
  %1294 = or i64 %1293, %1284
  store i64 %1294, i64* %RAX, align 8, !tbaa !2428
  %1295 = trunc i64 %1294 to i32
  %1296 = and i32 %1295, 255
  %1297 = tail call i32 @llvm.ctpop.i32(i32 %1296) #8
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  %1300 = xor i8 %1299, 1
  %1301 = icmp eq i64 %1294, 0
  %1302 = zext i1 %1301 to i8
  %1303 = lshr i64 %1284, 63
  %1304 = trunc i64 %1303 to i8
  store i8 0, i8* %32, align 1, !tbaa !2432
  store i8 %1300, i8* %39, align 1, !tbaa !2446
  store i8 0, i8* %45, align 1, !tbaa !2447
  store i8 %1302, i8* %48, align 1, !tbaa !2448
  store i8 %1304, i8* %51, align 1, !tbaa !2449
  store i8 0, i8* %57, align 1, !tbaa !2450
  %.v66 = select i1 %1301, i64 212, i64 39
  %1305 = add i64 %1275, %.v66
  store i64 %1305, i64* %113, align 8, !tbaa !2428
  br i1 %1301, label %block_4010ec, label %block_40103f

block_401102:                                     ; preds = %block_400fe9
  %1306 = add i64 %945, -48
  %1307 = add i64 %972, 8
  store i64 %1307, i64* %PC, align 8
  %1308 = inttoptr i64 %1306 to i64*
  store i64 1, i64* %1308, align 8
  %.pre35 = load i64, i64* %PC, align 8
  br label %block_40110a

block_400eff:                                     ; preds = %block_400ec8, %block_400ede
  %1309 = phi i64 [ %1835, %block_400ec8 ], [ %.pre26, %block_400ede ]
  %1310 = load i64, i64* %RBP, align 8
  %1311 = add i64 %1310, -112
  %1312 = add i64 %1309, 4
  store i64 %1312, i64* %PC, align 8
  %1313 = inttoptr i64 %1311 to i64*
  %1314 = load i64, i64* %1313, align 8
  store i64 %1314, i64* %RAX, align 8, !tbaa !2428
  %1315 = add i64 %1309, 7
  store i64 %1315, i64* %PC, align 8
  %1316 = inttoptr i64 %1314 to i8*
  %1317 = load i8, i8* %1316, align 1
  %1318 = zext i8 %1317 to i64
  store i64 %1318, i64* %RCX, align 8, !tbaa !2428
  %1319 = zext i8 %1317 to i64
  store i64 %1319, i64* %RAX, align 8, !tbaa !2428
  %1320 = shl nuw nsw i64 %1319, 3
  %1321 = add i64 %1310, -10368
  %1322 = add i64 %1321, %1320
  %1323 = add i64 %1309, 17
  store i64 %1323, i64* %PC, align 8
  %1324 = inttoptr i64 %1322 to i64*
  %1325 = load i64, i64* %1324, align 8
  store i64 %1325, i64* %RAX, align 8, !tbaa !2428
  %1326 = add i64 %1310, -72
  %1327 = add i64 %1309, 21
  store i64 %1327, i64* %PC, align 8
  %1328 = inttoptr i64 %1326 to i64*
  %1329 = load i64, i64* %1328, align 8
  %1330 = and i64 %1329, %1325
  store i64 %1330, i64* %RAX, align 8, !tbaa !2428
  %1331 = trunc i64 %1330 to i32
  %1332 = and i32 %1331, 255
  %1333 = tail call i32 @llvm.ctpop.i32(i32 %1332) #8
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  %1336 = xor i8 %1335, 1
  %1337 = icmp eq i64 %1330, 0
  %1338 = zext i1 %1337 to i8
  %1339 = lshr i64 %1330, 63
  %1340 = trunc i64 %1339 to i8
  store i8 0, i8* %32, align 1, !tbaa !2432
  store i8 %1336, i8* %39, align 1, !tbaa !2446
  store i8 0, i8* %45, align 1, !tbaa !2447
  store i8 %1338, i8* %48, align 1, !tbaa !2448
  store i8 %1340, i8* %51, align 1, !tbaa !2449
  store i8 0, i8* %57, align 1, !tbaa !2450
  %.v63 = select i1 %1337, i64 49, i64 31
  %1341 = add i64 %1309, %.v63
  store i64 %1341, i64* %113, align 8, !tbaa !2428
  br i1 %1337, label %block_400f30, label %block_400f1e

block_4010ec:                                     ; preds = %block_4010dc, %block_400ff7
  %1342 = phi i64 [ %1273, %block_400ff7 ], [ %.pre34, %block_4010dc ]
  %1343 = phi i64 [ %1305, %block_400ff7 ], [ %.pre33, %block_4010dc ]
  %1344 = add i64 %1342, -56
  %1345 = add i64 %1343, 9
  store i64 %1345, i64* %PC, align 8
  %1346 = inttoptr i64 %1344 to i64*
  %1347 = load i64, i64* %1346, align 8
  %1348 = add i64 %1347, 1
  store i64 %1348, i64* %RAX, align 8, !tbaa !2428
  %1349 = icmp eq i64 %1347, -1
  %1350 = icmp eq i64 %1348, 0
  %1351 = or i1 %1349, %1350
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %32, align 1, !tbaa !2432
  %1353 = trunc i64 %1348 to i32
  %1354 = and i32 %1353, 255
  %1355 = tail call i32 @llvm.ctpop.i32(i32 %1354) #8
  %1356 = trunc i32 %1355 to i8
  %1357 = and i8 %1356, 1
  %1358 = xor i8 %1357, 1
  store i8 %1358, i8* %39, align 1, !tbaa !2446
  %1359 = xor i64 %1347, %1348
  %1360 = lshr i64 %1359, 4
  %1361 = trunc i64 %1360 to i8
  %1362 = and i8 %1361, 1
  store i8 %1362, i8* %45, align 1, !tbaa !2447
  %1363 = icmp eq i64 %1348, 0
  %1364 = zext i1 %1363 to i8
  store i8 %1364, i8* %48, align 1, !tbaa !2448
  %1365 = lshr i64 %1348, 63
  %1366 = trunc i64 %1365 to i8
  store i8 %1366, i8* %51, align 1, !tbaa !2449
  %1367 = lshr i64 %1347, 63
  %1368 = xor i64 %1365, %1367
  %1369 = add nuw nsw i64 %1368, %1365
  %1370 = icmp eq i64 %1369, 2
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %57, align 1, !tbaa !2450
  %1372 = add i64 %1343, 17
  store i64 %1372, i64* %PC, align 8
  store i64 %1348, i64* %1346, align 8
  %1373 = load i64, i64* %PC, align 8
  %1374 = add i64 %1373, -276
  store i64 %1374, i64* %113, align 8, !tbaa !2428
  br label %block_400fe9

block_40134b:                                     ; preds = %block_40125a
  %1375 = add i64 %2726, -120
  %1376 = add i64 %2760, 4
  store i64 %1376, i64* %PC, align 8
  %1377 = inttoptr i64 %1375 to i64*
  %1378 = load i64, i64* %1377, align 8
  store i64 %1378, i64* %RDI, align 8, !tbaa !2428
  %1379 = add i64 %2760, -3467
  %1380 = add i64 %2760, 9
  %1381 = load i64, i64* %9, align 8, !tbaa !2428
  %1382 = add i64 %1381, -8
  %1383 = inttoptr i64 %1382 to i64*
  store i64 %1380, i64* %1383, align 8
  store i64 %1382, i64* %9, align 8, !tbaa !2428
  store i64 %1379, i64* %113, align 8, !tbaa !2428
  %1384 = tail call fastcc %struct.Memory* @ext_6020f0_free(%struct.State* nonnull %0, %struct.Memory* %762)
  %1385 = load i64, i64* %RSP, align 8
  %1386 = load i64, i64* %PC, align 8
  %1387 = add i64 %1385, 13080
  store i64 %1387, i64* %RSP, align 8, !tbaa !2428
  %1388 = icmp ugt i64 %1385, -13081
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %32, align 1, !tbaa !2432
  %1390 = trunc i64 %1387 to i32
  %1391 = and i32 %1390, 255
  %1392 = tail call i32 @llvm.ctpop.i32(i32 %1391) #8
  %1393 = trunc i32 %1392 to i8
  %1394 = and i8 %1393, 1
  %1395 = xor i8 %1394, 1
  store i8 %1395, i8* %39, align 1, !tbaa !2446
  %1396 = xor i64 %1385, 16
  %1397 = xor i64 %1396, %1387
  %1398 = lshr i64 %1397, 4
  %1399 = trunc i64 %1398 to i8
  %1400 = and i8 %1399, 1
  store i8 %1400, i8* %45, align 1, !tbaa !2447
  %1401 = icmp eq i64 %1387, 0
  %1402 = zext i1 %1401 to i8
  store i8 %1402, i8* %48, align 1, !tbaa !2448
  %1403 = lshr i64 %1387, 63
  %1404 = trunc i64 %1403 to i8
  store i8 %1404, i8* %51, align 1, !tbaa !2449
  %1405 = lshr i64 %1385, 63
  %1406 = xor i64 %1403, %1405
  %1407 = add nuw nsw i64 %1406, %1403
  %1408 = icmp eq i64 %1407, 2
  %1409 = zext i1 %1408 to i8
  store i8 %1409, i8* %57, align 1, !tbaa !2450
  %1410 = add i64 %1386, 8
  store i64 %1410, i64* %PC, align 8
  %1411 = add i64 %1385, 13088
  %1412 = inttoptr i64 %1387 to i64*
  %1413 = load i64, i64* %1412, align 8
  store i64 %1413, i64* %RBX, align 8, !tbaa !2428
  store i64 %1411, i64* %9, align 8, !tbaa !2428
  %1414 = add i64 %1386, 10
  store i64 %1414, i64* %PC, align 8
  %1415 = add i64 %1385, 13096
  %1416 = inttoptr i64 %1411 to i64*
  %1417 = load i64, i64* %1416, align 8
  store i64 %1417, i64* %R14, align 8, !tbaa !2428
  store i64 %1415, i64* %9, align 8, !tbaa !2428
  %1418 = add i64 %1386, 12
  store i64 %1418, i64* %PC, align 8
  %1419 = add i64 %1385, 13104
  %1420 = inttoptr i64 %1415 to i64*
  %1421 = load i64, i64* %1420, align 8
  store i64 %1421, i64* %R15, align 8, !tbaa !2428
  store i64 %1419, i64* %9, align 8, !tbaa !2428
  %1422 = add i64 %1386, 13
  store i64 %1422, i64* %PC, align 8
  %1423 = add i64 %1385, 13112
  %1424 = inttoptr i64 %1419 to i64*
  %1425 = load i64, i64* %1424, align 8
  store i64 %1425, i64* %RBP, align 8, !tbaa !2428
  store i64 %1423, i64* %9, align 8, !tbaa !2428
  %1426 = add i64 %1386, 14
  store i64 %1426, i64* %PC, align 8
  %1427 = inttoptr i64 %1423 to i64*
  %1428 = load i64, i64* %1427, align 8
  store i64 %1428, i64* %113, align 8, !tbaa !2428
  %1429 = add i64 %1385, 13120
  store i64 %1429, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %1384

block_4010dc:                                     ; preds = %block_40106e
  %1430 = load i64, i64* %2559, align 8
  store i64 %1430, i64* %RCX, align 8, !tbaa !2428
  %1431 = shl i64 %1430, 3
  %1432 = add i64 %2552, -12736
  %1433 = add i64 %1432, %1431
  %1434 = add i64 %2591, 16
  store i64 %1434, i64* %PC, align 8
  %1435 = inttoptr i64 %1433 to i64*
  store i64 %2595, i64* %1435, align 8
  %.pre33 = load i64, i64* %PC, align 8
  %.pre34 = load i64, i64* %RBP, align 8
  br label %block_4010ec

block_400acd:                                     ; preds = %block_400ad8, %block_400ac8
  %1436 = phi i64 [ %1711, %block_400ac8 ], [ %2324, %block_400ad8 ]
  %1437 = phi i64 [ %2326, %block_400ac8 ], [ %.pre16, %block_400ad8 ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.16, %block_400ac8 ], [ %2322, %block_400ad8 ]
  %1438 = add i64 %1437, -64
  %1439 = add i64 %1436, 5
  store i64 %1439, i64* %PC, align 8
  %1440 = inttoptr i64 %1438 to i64*
  %1441 = load i64, i64* %1440, align 8
  %1442 = add i64 %1441, -1
  %1443 = icmp eq i64 %1441, 0
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %32, align 1, !tbaa !2432
  %1445 = trunc i64 %1442 to i32
  %1446 = and i32 %1445, 255
  %1447 = tail call i32 @llvm.ctpop.i32(i32 %1446) #8
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  %1450 = xor i8 %1449, 1
  store i8 %1450, i8* %39, align 1, !tbaa !2446
  %1451 = xor i64 %1441, %1442
  %1452 = lshr i64 %1451, 4
  %1453 = trunc i64 %1452 to i8
  %1454 = and i8 %1453, 1
  store i8 %1454, i8* %45, align 1, !tbaa !2447
  %1455 = icmp eq i64 %1442, 0
  %1456 = zext i1 %1455 to i8
  store i8 %1456, i8* %48, align 1, !tbaa !2448
  %1457 = lshr i64 %1442, 63
  %1458 = trunc i64 %1457 to i8
  store i8 %1458, i8* %51, align 1, !tbaa !2449
  %1459 = lshr i64 %1441, 63
  %1460 = xor i64 %1457, %1459
  %1461 = add nuw nsw i64 %1460, %1459
  %1462 = icmp eq i64 %1461, 2
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %57, align 1, !tbaa !2450
  %1464 = or i1 %1455, %1443
  %.v50 = select i1 %1464, i64 243, i64 11
  %1465 = add i64 %1436, %.v50
  store i64 %1465, i64* %113, align 8, !tbaa !2428
  br i1 %1464, label %block_400bc0, label %block_400ad8

block_4012b6:                                     ; preds = %block_4012a0
  %1466 = load i64, i64* %1787, align 8
  %1467 = add i64 %1466, 1
  store i64 %1467, i64* %RAX, align 8, !tbaa !2428
  %1468 = icmp eq i64 %1466, -1
  %1469 = icmp eq i64 %1467, 0
  %1470 = or i1 %1468, %1469
  %1471 = zext i1 %1470 to i8
  store i8 %1471, i8* %32, align 1, !tbaa !2432
  %1472 = trunc i64 %1467 to i32
  %1473 = and i32 %1472, 255
  %1474 = tail call i32 @llvm.ctpop.i32(i32 %1473) #8
  %1475 = trunc i32 %1474 to i8
  %1476 = and i8 %1475, 1
  %1477 = xor i8 %1476, 1
  store i8 %1477, i8* %39, align 1, !tbaa !2446
  %1478 = xor i64 %1466, %1467
  %1479 = lshr i64 %1478, 4
  %1480 = trunc i64 %1479 to i8
  %1481 = and i8 %1480, 1
  store i8 %1481, i8* %45, align 1, !tbaa !2447
  %1482 = icmp eq i64 %1467, 0
  %1483 = zext i1 %1482 to i8
  store i8 %1483, i8* %48, align 1, !tbaa !2448
  %1484 = lshr i64 %1467, 63
  %1485 = trunc i64 %1484 to i8
  store i8 %1485, i8* %51, align 1, !tbaa !2449
  %1486 = lshr i64 %1466, 63
  %1487 = xor i64 %1484, %1486
  %1488 = add nuw nsw i64 %1487, %1484
  %1489 = icmp eq i64 %1488, 2
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %57, align 1, !tbaa !2450
  %1491 = add i64 %1824, 12
  store i64 %1491, i64* %PC, align 8
  store i64 %1467, i64* %1787, align 8
  %1492 = load i64, i64* %PC, align 8
  %1493 = add i64 %1492, -34
  br label %block_4012a0

block_4010b3:                                     ; preds = %block_401089
  %1494 = add i64 %2006, -80
  %1495 = add i64 %2033, 4
  store i64 %1495, i64* %PC, align 8
  %1496 = inttoptr i64 %1494 to i64*
  %1497 = load i64, i64* %1496, align 8
  %1498 = add i64 %1497, 1
  store i64 %1498, i64* %RAX, align 8, !tbaa !2428
  %1499 = icmp eq i64 %1497, -1
  %1500 = icmp eq i64 %1498, 0
  %1501 = or i1 %1499, %1500
  %1502 = zext i1 %1501 to i8
  store i8 %1502, i8* %32, align 1, !tbaa !2432
  %1503 = trunc i64 %1498 to i32
  %1504 = and i32 %1503, 255
  %1505 = tail call i32 @llvm.ctpop.i32(i32 %1504) #8
  %1506 = trunc i32 %1505 to i8
  %1507 = and i8 %1506, 1
  %1508 = xor i8 %1507, 1
  store i8 %1508, i8* %39, align 1, !tbaa !2446
  %1509 = xor i64 %1497, %1498
  %1510 = lshr i64 %1509, 4
  %1511 = trunc i64 %1510 to i8
  %1512 = and i8 %1511, 1
  store i8 %1512, i8* %45, align 1, !tbaa !2447
  %1513 = icmp eq i64 %1498, 0
  %1514 = zext i1 %1513 to i8
  store i8 %1514, i8* %48, align 1, !tbaa !2448
  %1515 = lshr i64 %1498, 63
  %1516 = trunc i64 %1515 to i8
  store i8 %1516, i8* %51, align 1, !tbaa !2449
  %1517 = lshr i64 %1497, 63
  %1518 = xor i64 %1515, %1517
  %1519 = add nuw nsw i64 %1518, %1515
  %1520 = icmp eq i64 %1519, 2
  %1521 = zext i1 %1520 to i8
  store i8 %1521, i8* %57, align 1, !tbaa !2450
  %1522 = add i64 %2033, 12
  store i64 %1522, i64* %PC, align 8
  store i64 %1498, i64* %1496, align 8
  %.pre31 = load i64, i64* %RBP, align 8
  %.pre32 = load i64, i64* %PC, align 8
  br label %block_4010bf

block_400f4d:                                     ; preds = %block_400e3b
  %1523 = add i64 %2948, 4
  store i64 %1523, i64* %PC, align 8
  %1524 = load i64, i64* %2911, align 8
  %1525 = add i64 %1524, 1
  store i64 %1525, i64* %RAX, align 8, !tbaa !2428
  %1526 = icmp eq i64 %1524, -1
  %1527 = icmp eq i64 %1525, 0
  %1528 = or i1 %1526, %1527
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %32, align 1, !tbaa !2432
  %1530 = trunc i64 %1525 to i32
  %1531 = and i32 %1530, 255
  %1532 = tail call i32 @llvm.ctpop.i32(i32 %1531) #8
  %1533 = trunc i32 %1532 to i8
  %1534 = and i8 %1533, 1
  %1535 = xor i8 %1534, 1
  store i8 %1535, i8* %39, align 1, !tbaa !2446
  %1536 = xor i64 %1524, %1525
  %1537 = lshr i64 %1536, 4
  %1538 = trunc i64 %1537 to i8
  %1539 = and i8 %1538, 1
  store i8 %1539, i8* %45, align 1, !tbaa !2447
  %1540 = icmp eq i64 %1525, 0
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %48, align 1, !tbaa !2448
  %1542 = lshr i64 %1525, 63
  %1543 = trunc i64 %1542 to i8
  store i8 %1543, i8* %51, align 1, !tbaa !2449
  %1544 = lshr i64 %1524, 63
  %1545 = xor i64 %1542, %1544
  %1546 = add nuw nsw i64 %1545, %1542
  %1547 = icmp eq i64 %1546, 2
  %1548 = zext i1 %1547 to i8
  store i8 %1548, i8* %57, align 1, !tbaa !2450
  %1549 = add i64 %2948, 12
  store i64 %1549, i64* %PC, align 8
  store i64 %1525, i64* %2911, align 8
  %1550 = load i64, i64* %RBP, align 8
  %1551 = add i64 %1550, -56
  %1552 = load i64, i64* %PC, align 8
  %1553 = add i64 %1552, 4
  store i64 %1553, i64* %PC, align 8
  %1554 = inttoptr i64 %1551 to i64*
  %1555 = load i64, i64* %1554, align 8
  %1556 = add i64 %1555, 1
  store i64 %1556, i64* %RAX, align 8, !tbaa !2428
  %1557 = icmp eq i64 %1555, -1
  %1558 = icmp eq i64 %1556, 0
  %1559 = or i1 %1557, %1558
  %1560 = zext i1 %1559 to i8
  store i8 %1560, i8* %32, align 1, !tbaa !2432
  %1561 = trunc i64 %1556 to i32
  %1562 = and i32 %1561, 255
  %1563 = tail call i32 @llvm.ctpop.i32(i32 %1562) #8
  %1564 = trunc i32 %1563 to i8
  %1565 = and i8 %1564, 1
  %1566 = xor i8 %1565, 1
  store i8 %1566, i8* %39, align 1, !tbaa !2446
  %1567 = xor i64 %1555, %1556
  %1568 = lshr i64 %1567, 4
  %1569 = trunc i64 %1568 to i8
  %1570 = and i8 %1569, 1
  store i8 %1570, i8* %45, align 1, !tbaa !2447
  %1571 = icmp eq i64 %1556, 0
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %48, align 1, !tbaa !2448
  %1573 = lshr i64 %1556, 63
  %1574 = trunc i64 %1573 to i8
  store i8 %1574, i8* %51, align 1, !tbaa !2449
  %1575 = lshr i64 %1555, 63
  %1576 = xor i64 %1573, %1575
  %1577 = add nuw nsw i64 %1576, %1573
  %1578 = icmp eq i64 %1577, 2
  %1579 = zext i1 %1578 to i8
  store i8 %1579, i8* %57, align 1, !tbaa !2450
  %1580 = add i64 %1552, 12
  store i64 %1580, i64* %PC, align 8
  store i64 %1556, i64* %1554, align 8
  %1581 = load i64, i64* %PC, align 8
  %1582 = add i64 %1581, -356
  store i64 %1582, i64* %113, align 8, !tbaa !2428
  br label %block_400e01

block_40110a:                                     ; preds = %block_40117e, %block_401102
  %1583 = phi i64 [ %.pre35, %block_401102 ], [ %1926, %block_40117e ]
  %1584 = load i64, i64* %RBP, align 8
  %1585 = add i64 %1584, -48
  %1586 = add i64 %1583, 8
  store i64 %1586, i64* %PC, align 8
  %1587 = inttoptr i64 %1585 to i64*
  %1588 = load i64, i64* %1587, align 8
  %1589 = add i64 %1588, -256
  %1590 = icmp ult i64 %1588, 256
  %1591 = zext i1 %1590 to i8
  store i8 %1591, i8* %32, align 1, !tbaa !2432
  %1592 = trunc i64 %1589 to i32
  %1593 = and i32 %1592, 255
  %1594 = tail call i32 @llvm.ctpop.i32(i32 %1593) #8
  %1595 = trunc i32 %1594 to i8
  %1596 = and i8 %1595, 1
  %1597 = xor i8 %1596, 1
  store i8 %1597, i8* %39, align 1, !tbaa !2446
  %1598 = xor i64 %1588, %1589
  %1599 = lshr i64 %1598, 4
  %1600 = trunc i64 %1599 to i8
  %1601 = and i8 %1600, 1
  store i8 %1601, i8* %45, align 1, !tbaa !2447
  %1602 = icmp eq i64 %1589, 0
  %1603 = zext i1 %1602 to i8
  store i8 %1603, i8* %48, align 1, !tbaa !2448
  %1604 = lshr i64 %1589, 63
  %1605 = trunc i64 %1604 to i8
  store i8 %1605, i8* %51, align 1, !tbaa !2449
  %1606 = lshr i64 %1588, 63
  %1607 = xor i64 %1604, %1606
  %1608 = add nuw nsw i64 %1607, %1606
  %1609 = icmp eq i64 %1608, 2
  %1610 = zext i1 %1609 to i8
  store i8 %1610, i8* %57, align 1, !tbaa !2450
  %.v69 = select i1 %1590, i64 14, i64 239
  %1611 = add i64 %1583, %.v69
  store i64 %1611, i64* %113, align 8, !tbaa !2428
  br i1 %1590, label %block_401118, label %block_4011f9

block_400cde:                                     ; preds = %block_400c73
  %1612 = add i64 %2447, -10648
  %1613 = add i64 %2461, 7
  store i64 %1613, i64* %PC, align 8
  %1614 = inttoptr i64 %1612 to i64*
  %1615 = load i64, i64* %1614, align 8
  store i64 %1615, i64* %RAX, align 8, !tbaa !2428
  %1616 = add i64 %2447, -10640
  %1617 = add i64 %2461, 14
  store i64 %1617, i64* %PC, align 8
  %1618 = inttoptr i64 %1616 to i64*
  %1619 = load i64, i64* %1618, align 8
  store i64 %1619, i64* %RCX, align 8, !tbaa !2428
  %1620 = shl i64 %1619, 3
  %1621 = add i64 %2447, -10368
  %1622 = add i64 %1621, %1620
  %1623 = add i64 %2461, 22
  store i64 %1623, i64* %PC, align 8
  %1624 = inttoptr i64 %1622 to i64*
  store i64 %1615, i64* %1624, align 8
  %1625 = load i64, i64* %RBP, align 8
  %1626 = add i64 %1625, -48
  %1627 = load i64, i64* %PC, align 8
  %1628 = add i64 %1627, 4
  store i64 %1628, i64* %PC, align 8
  %1629 = inttoptr i64 %1626 to i64*
  %1630 = load i64, i64* %1629, align 8
  store i64 %1630, i64* %RAX, align 8, !tbaa !2428
  %1631 = trunc i64 %1630 to i8
  store i8 %1631, i8* %DL, align 1, !tbaa !2453
  %1632 = add i64 %1625, -10640
  %1633 = add i64 %1627, 13
  store i64 %1633, i64* %PC, align 8
  %1634 = inttoptr i64 %1632 to i64*
  %1635 = load i64, i64* %1634, align 8
  store i64 %1635, i64* %RAX, align 8, !tbaa !2428
  %1636 = add i64 %1625, -10624
  %1637 = add i64 %1636, %1635
  %1638 = add i64 %1627, 20
  store i64 %1638, i64* %PC, align 8
  %1639 = inttoptr i64 %1637 to i8*
  store i8 %1631, i8* %1639, align 1
  %1640 = load i64, i64* %RBP, align 8
  %1641 = add i64 %1640, -10648
  %1642 = load i64, i64* %PC, align 8
  %1643 = add i64 %1642, 7
  store i64 %1643, i64* %PC, align 8
  %1644 = inttoptr i64 %1641 to i64*
  %1645 = load i64, i64* %1644, align 8
  store i64 %1645, i64* %RAX, align 8, !tbaa !2428
  %1646 = add i64 %1640, -10656
  %1647 = add i64 %1642, 14
  store i64 %1647, i64* %PC, align 8
  %1648 = inttoptr i64 %1646 to i64*
  %1649 = load i64, i64* %1648, align 8
  %1650 = sub i64 %1645, %1649
  %1651 = icmp ult i64 %1645, %1649
  %1652 = zext i1 %1651 to i8
  store i8 %1652, i8* %32, align 1, !tbaa !2432
  %1653 = trunc i64 %1650 to i32
  %1654 = and i32 %1653, 255
  %1655 = tail call i32 @llvm.ctpop.i32(i32 %1654) #8
  %1656 = trunc i32 %1655 to i8
  %1657 = and i8 %1656, 1
  %1658 = xor i8 %1657, 1
  store i8 %1658, i8* %39, align 1, !tbaa !2446
  %1659 = xor i64 %1649, %1645
  %1660 = xor i64 %1659, %1650
  %1661 = lshr i64 %1660, 4
  %1662 = trunc i64 %1661 to i8
  %1663 = and i8 %1662, 1
  store i8 %1663, i8* %45, align 1, !tbaa !2447
  %1664 = icmp eq i64 %1650, 0
  %1665 = zext i1 %1664 to i8
  store i8 %1665, i8* %48, align 1, !tbaa !2448
  %1666 = lshr i64 %1650, 63
  %1667 = trunc i64 %1666 to i8
  store i8 %1667, i8* %51, align 1, !tbaa !2449
  %1668 = lshr i64 %1645, 63
  %1669 = lshr i64 %1649, 63
  %1670 = xor i64 %1669, %1668
  %1671 = xor i64 %1666, %1668
  %1672 = add nuw nsw i64 %1671, %1670
  %1673 = icmp eq i64 %1672, 2
  %1674 = zext i1 %1673 to i8
  store i8 %1674, i8* %57, align 1, !tbaa !2450
  %1675 = or i1 %1664, %1651
  %.v55 = select i1 %1675, i64 34, i64 20
  %1676 = add i64 %1642, %.v55
  store i64 %1676, i64* %113, align 8, !tbaa !2428
  br i1 %1675, label %block_400d2a, label %block_400d1c

block_4012c7:                                     ; preds = %block_4012a0
  %1677 = load i64, i64* %1797, align 8
  store i64 %1677, i64* %RAX, align 8, !tbaa !2428
  %1678 = add i64 %1824, 8
  store i64 %1678, i64* %PC, align 8
  %1679 = load i64, i64* %1787, align 8
  store i64 %1679, i64* %RCX, align 8, !tbaa !2428
  %1680 = shl i64 %1679, 3
  %1681 = add i64 %1790, %1680
  %1682 = add i64 %1824, 16
  store i64 %1682, i64* %PC, align 8
  %1683 = inttoptr i64 %1681 to i64*
  %1684 = load i64, i64* %1683, align 8
  %1685 = sub i64 %1677, %1684
  %1686 = icmp ult i64 %1677, %1684
  %1687 = zext i1 %1686 to i8
  store i8 %1687, i8* %32, align 1, !tbaa !2432
  %1688 = trunc i64 %1685 to i32
  %1689 = and i32 %1688, 255
  %1690 = tail call i32 @llvm.ctpop.i32(i32 %1689) #8
  %1691 = trunc i32 %1690 to i8
  %1692 = and i8 %1691, 1
  %1693 = xor i8 %1692, 1
  store i8 %1693, i8* %39, align 1, !tbaa !2446
  %1694 = xor i64 %1684, %1677
  %1695 = xor i64 %1694, %1685
  %1696 = lshr i64 %1695, 4
  %1697 = trunc i64 %1696 to i8
  %1698 = and i8 %1697, 1
  store i8 %1698, i8* %45, align 1, !tbaa !2447
  %1699 = icmp eq i64 %1685, 0
  %1700 = zext i1 %1699 to i8
  store i8 %1700, i8* %48, align 1, !tbaa !2448
  %1701 = lshr i64 %1685, 63
  %1702 = trunc i64 %1701 to i8
  store i8 %1702, i8* %51, align 1, !tbaa !2449
  %1703 = lshr i64 %1677, 63
  %1704 = lshr i64 %1684, 63
  %1705 = xor i64 %1704, %1703
  %1706 = xor i64 %1701, %1703
  %1707 = add nuw nsw i64 %1706, %1705
  %1708 = icmp eq i64 %1707, 2
  %1709 = zext i1 %1708 to i8
  store i8 %1709, i8* %57, align 1, !tbaa !2450
  %.v76 = select i1 %1699, i64 22, i64 79
  %1710 = add i64 %1824, %.v76
  store i64 %1710, i64* %113, align 8, !tbaa !2428
  br i1 %1699, label %block_4012dd, label %block_401316

block_400ac8:                                     ; preds = %block_400a7f
  %1711 = add i64 %2341, 5
  store i64 %1711, i64* %113, align 8, !tbaa !2428
  br label %block_400acd

block_400cad:                                     ; preds = %block_400c80, %block_400c8d
  %1712 = phi i64 [ %.pre20, %block_400c8d ], [ %2046, %block_400c80 ]
  %1713 = phi i64 [ %.pre19, %block_400c8d ], [ %2447, %block_400c80 ]
  %1714 = add i64 %1713, -10668
  %1715 = add i64 %1712, 7
  store i64 %1715, i64* %PC, align 8
  %1716 = inttoptr i64 %1714 to i32*
  %1717 = load i32, i32* %1716, align 4
  %1718 = sext i32 %1717 to i64
  store i64 %1718, i64* %RAX, align 8, !tbaa !2428
  %1719 = shl nsw i64 %1718, 2
  %1720 = add i64 %1713, -8320
  %1721 = add i64 %1720, %1719
  %1722 = add i64 %1712, 14
  store i64 %1722, i64* %PC, align 8
  %1723 = inttoptr i64 %1721 to i32*
  %1724 = load i32, i32* %1723, align 4
  %1725 = zext i32 %1724 to i64
  store i64 %1725, i64* %RCX, align 8, !tbaa !2428
  %1726 = add i64 %1712, 20
  store i64 %1726, i64* %PC, align 8
  store i32 %1724, i32* %1716, align 4
  %1727 = load i64, i64* %RBP, align 8
  %1728 = add i64 %1727, -56
  %1729 = load i64, i64* %PC, align 8
  %1730 = add i64 %1729, 4
  store i64 %1730, i64* %PC, align 8
  %1731 = inttoptr i64 %1728 to i64*
  %1732 = load i64, i64* %1731, align 8
  %1733 = shl i64 %1732, 1
  %1734 = icmp slt i64 %1732, 0
  %1735 = icmp slt i64 %1733, 0
  %1736 = xor i1 %1734, %1735
  store i64 %1733, i64* %RAX, align 8, !tbaa !2428
  %.lobit = lshr i64 %1732, 63
  %1737 = trunc i64 %.lobit to i8
  store i8 %1737, i8* %32, align 1, !tbaa !2453
  %1738 = trunc i64 %1733 to i32
  %1739 = and i32 %1738, 254
  %1740 = tail call i32 @llvm.ctpop.i32(i32 %1739) #8
  %1741 = trunc i32 %1740 to i8
  %1742 = and i8 %1741, 1
  %1743 = xor i8 %1742, 1
  store i8 %1743, i8* %39, align 1, !tbaa !2453
  store i8 0, i8* %45, align 1, !tbaa !2453
  %1744 = icmp eq i64 %1733, 0
  %1745 = zext i1 %1744 to i8
  store i8 %1745, i8* %48, align 1, !tbaa !2453
  %1746 = lshr i64 %1732, 62
  %1747 = trunc i64 %1746 to i8
  %1748 = and i8 %1747, 1
  store i8 %1748, i8* %51, align 1, !tbaa !2453
  %1749 = zext i1 %1736 to i8
  store i8 %1749, i8* %57, align 1, !tbaa !2453
  %1750 = add i64 %1729, 12
  store i64 %1750, i64* %PC, align 8
  store i64 %1733, i64* %1731, align 8
  %1751 = load i64, i64* %RBP, align 8
  %1752 = add i64 %1751, -48
  %1753 = load i64, i64* %PC, align 8
  %1754 = add i64 %1753, 4
  store i64 %1754, i64* %PC, align 8
  %1755 = inttoptr i64 %1752 to i64*
  %1756 = load i64, i64* %1755, align 8
  %1757 = add i64 %1756, 1
  store i64 %1757, i64* %RAX, align 8, !tbaa !2428
  %1758 = icmp eq i64 %1756, -1
  %1759 = icmp eq i64 %1757, 0
  %1760 = or i1 %1758, %1759
  %1761 = zext i1 %1760 to i8
  store i8 %1761, i8* %32, align 1, !tbaa !2432
  %1762 = trunc i64 %1757 to i32
  %1763 = and i32 %1762, 255
  %1764 = tail call i32 @llvm.ctpop.i32(i32 %1763) #8
  %1765 = trunc i32 %1764 to i8
  %1766 = and i8 %1765, 1
  %1767 = xor i8 %1766, 1
  store i8 %1767, i8* %39, align 1, !tbaa !2446
  %1768 = xor i64 %1756, %1757
  %1769 = lshr i64 %1768, 4
  %1770 = trunc i64 %1769 to i8
  %1771 = and i8 %1770, 1
  store i8 %1771, i8* %45, align 1, !tbaa !2447
  %1772 = icmp eq i64 %1757, 0
  %1773 = zext i1 %1772 to i8
  store i8 %1773, i8* %48, align 1, !tbaa !2448
  %1774 = lshr i64 %1757, 63
  %1775 = trunc i64 %1774 to i8
  store i8 %1775, i8* %51, align 1, !tbaa !2449
  %1776 = lshr i64 %1756, 63
  %1777 = xor i64 %1774, %1776
  %1778 = add nuw nsw i64 %1777, %1774
  %1779 = icmp eq i64 %1778, 2
  %1780 = zext i1 %1779 to i8
  store i8 %1780, i8* %57, align 1, !tbaa !2450
  %1781 = add i64 %1753, 12
  store i64 %1781, i64* %PC, align 8
  store i64 %1757, i64* %1755, align 8
  %1782 = load i64, i64* %PC, align 8
  %1783 = add i64 %1782, -102
  store i64 %1783, i64* %113, align 8, !tbaa !2428
  br label %block_400c73

block_4012a0:                                     ; preds = %block_40129b, %block_4012b6
  %.sink45 = phi i64 [ %1837, %block_40129b ], [ %1493, %block_4012b6 ]
  %1784 = load i64, i64* %RBP, align 8
  %1785 = add i64 %1784, -48
  %1786 = add i64 %.sink45, 4
  store i64 %1786, i64* %PC, align 8
  %1787 = inttoptr i64 %1785 to i64*
  %1788 = load i64, i64* %1787, align 8
  store i64 %1788, i64* %RAX, align 8, !tbaa !2428
  %1789 = shl i64 %1788, 3
  %1790 = add i64 %1784, -12736
  %1791 = add i64 %1790, %1789
  %1792 = add i64 %.sink45, 12
  store i64 %1792, i64* %PC, align 8
  %1793 = inttoptr i64 %1791 to i64*
  %1794 = load i64, i64* %1793, align 8
  store i64 %1794, i64* %RAX, align 8, !tbaa !2428
  %1795 = add i64 %1784, -80
  %1796 = add i64 %.sink45, 16
  store i64 %1796, i64* %PC, align 8
  %1797 = inttoptr i64 %1795 to i64*
  %1798 = load i64, i64* %1797, align 8
  %1799 = sub i64 %1794, %1798
  %1800 = icmp ult i64 %1794, %1798
  %1801 = zext i1 %1800 to i8
  store i8 %1801, i8* %32, align 1, !tbaa !2432
  %1802 = trunc i64 %1799 to i32
  %1803 = and i32 %1802, 255
  %1804 = tail call i32 @llvm.ctpop.i32(i32 %1803) #8
  %1805 = trunc i32 %1804 to i8
  %1806 = and i8 %1805, 1
  %1807 = xor i8 %1806, 1
  store i8 %1807, i8* %39, align 1, !tbaa !2446
  %1808 = xor i64 %1798, %1794
  %1809 = xor i64 %1808, %1799
  %1810 = lshr i64 %1809, 4
  %1811 = trunc i64 %1810 to i8
  %1812 = and i8 %1811, 1
  store i8 %1812, i8* %45, align 1, !tbaa !2447
  %1813 = icmp eq i64 %1799, 0
  %1814 = zext i1 %1813 to i8
  store i8 %1814, i8* %48, align 1, !tbaa !2448
  %1815 = lshr i64 %1799, 63
  %1816 = trunc i64 %1815 to i8
  store i8 %1816, i8* %51, align 1, !tbaa !2449
  %1817 = lshr i64 %1794, 63
  %1818 = lshr i64 %1798, 63
  %1819 = xor i64 %1818, %1817
  %1820 = xor i64 %1815, %1817
  %1821 = add nuw nsw i64 %1820, %1819
  %1822 = icmp eq i64 %1821, 2
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %57, align 1, !tbaa !2450
  %.v75 = select i1 %1800, i64 22, i64 39
  %1824 = add i64 %.sink45, %.v75
  %1825 = add i64 %1824, 4
  store i64 %1825, i64* %PC, align 8
  br i1 %1800, label %block_4012b6, label %block_4012c7

block_400ec8:                                     ; preds = %block_400e68
  %1826 = add i64 %3263, -10688
  %1827 = add i64 %3298, 10
  store i64 %1827, i64* %PC, align 8
  %1828 = inttoptr i64 %1826 to i32*
  store i32 0, i32* %1828, align 4
  %1829 = load i64, i64* %RBP, align 8
  %1830 = add i64 %1829, -10681
  %1831 = load i64, i64* %PC, align 8
  %1832 = add i64 %1831, 7
  store i64 %1832, i64* %PC, align 8
  %1833 = inttoptr i64 %1830 to i8*
  store i8 0, i8* %1833, align 1
  %1834 = load i64, i64* %PC, align 8
  %1835 = add i64 %1834, 38
  store i64 %1835, i64* %113, align 8, !tbaa !2428
  br label %block_400eff

block_40129b:                                     ; preds = %block_401268, %block_40128f
  %1836 = phi i64 [ %2642, %block_401268 ], [ %.pre40, %block_40128f ]
  %1837 = add i64 %1836, 5
  br label %block_4012a0

block_40128f:                                     ; preds = %block_401268
  %1838 = add i64 %2619, -80
  %1839 = add i64 %2642, 4
  store i64 %1839, i64* %PC, align 8
  %1840 = inttoptr i64 %1838 to i64*
  %1841 = load i64, i64* %1840, align 8
  %1842 = add i64 %1841, 1
  store i64 %1842, i64* %RAX, align 8, !tbaa !2428
  %1843 = icmp eq i64 %1841, -1
  %1844 = icmp eq i64 %1842, 0
  %1845 = or i1 %1843, %1844
  %1846 = zext i1 %1845 to i8
  store i8 %1846, i8* %32, align 1, !tbaa !2432
  %1847 = trunc i64 %1842 to i32
  %1848 = and i32 %1847, 255
  %1849 = tail call i32 @llvm.ctpop.i32(i32 %1848) #8
  %1850 = trunc i32 %1849 to i8
  %1851 = and i8 %1850, 1
  %1852 = xor i8 %1851, 1
  store i8 %1852, i8* %39, align 1, !tbaa !2446
  %1853 = xor i64 %1841, %1842
  %1854 = lshr i64 %1853, 4
  %1855 = trunc i64 %1854 to i8
  %1856 = and i8 %1855, 1
  store i8 %1856, i8* %45, align 1, !tbaa !2447
  %1857 = icmp eq i64 %1842, 0
  %1858 = zext i1 %1857 to i8
  store i8 %1858, i8* %48, align 1, !tbaa !2448
  %1859 = lshr i64 %1842, 63
  %1860 = trunc i64 %1859 to i8
  store i8 %1860, i8* %51, align 1, !tbaa !2449
  %1861 = lshr i64 %1841, 63
  %1862 = xor i64 %1859, %1861
  %1863 = add nuw nsw i64 %1862, %1859
  %1864 = icmp eq i64 %1863, 2
  %1865 = zext i1 %1864 to i8
  store i8 %1865, i8* %57, align 1, !tbaa !2450
  %1866 = add i64 %2642, 12
  store i64 %1866, i64* %PC, align 8
  store i64 %1842, i64* %1840, align 8
  %.pre40 = load i64, i64* %PC, align 8
  br label %block_40129b

block_40117e:                                     ; preds = %block_401170
  %1867 = add i64 %520, -88
  %1868 = add i64 %532, 80
  store i64 %1868, i64* %PC, align 8
  %1869 = inttoptr i64 %1867 to i64*
  %1870 = load i64, i64* %1869, align 8
  store i64 %1870, i64* %RAX, align 8, !tbaa !2428
  %1871 = add i64 %520, -56
  %1872 = add i64 %532, 84
  store i64 %1872, i64* %PC, align 8
  %1873 = inttoptr i64 %1871 to i64*
  %1874 = load i64, i64* %1873, align 8
  store i64 %1874, i64* %RCX, align 8, !tbaa !2428
  %1875 = shl i64 %1874, 3
  %1876 = add i64 %520, -12736
  %1877 = add i64 %1876, %1875
  %1878 = add i64 %532, 92
  store i64 %1878, i64* %PC, align 8
  %1879 = inttoptr i64 %1877 to i64*
  store i64 %1870, i64* %1879, align 8
  %1880 = load i64, i64* %RBP, align 8
  %1881 = add i64 %1880, -89
  %1882 = load i64, i64* %PC, align 8
  %1883 = add i64 %1882, 3
  store i64 %1883, i64* %PC, align 8
  %1884 = inttoptr i64 %1881 to i8*
  %1885 = load i8, i8* %1884, align 1
  store i8 %1885, i8* %DL, align 1, !tbaa !2453
  %1886 = add i64 %1880, -56
  %1887 = add i64 %1882, 7
  store i64 %1887, i64* %PC, align 8
  %1888 = inttoptr i64 %1886 to i64*
  %1889 = load i64, i64* %1888, align 8
  store i64 %1889, i64* %RAX, align 8, !tbaa !2428
  %1890 = add i64 %1880, -12992
  %1891 = add i64 %1890, %1889
  %1892 = add i64 %1882, 14
  store i64 %1892, i64* %PC, align 8
  %1893 = inttoptr i64 %1891 to i8*
  store i8 %1885, i8* %1893, align 1
  %1894 = load i64, i64* %RBP, align 8
  %1895 = add i64 %1894, -48
  %1896 = load i64, i64* %PC, align 8
  %1897 = add i64 %1896, 4
  store i64 %1897, i64* %PC, align 8
  %1898 = inttoptr i64 %1895 to i64*
  %1899 = load i64, i64* %1898, align 8
  %1900 = add i64 %1899, 1
  store i64 %1900, i64* %RAX, align 8, !tbaa !2428
  %1901 = icmp eq i64 %1899, -1
  %1902 = icmp eq i64 %1900, 0
  %1903 = or i1 %1901, %1902
  %1904 = zext i1 %1903 to i8
  store i8 %1904, i8* %32, align 1, !tbaa !2432
  %1905 = trunc i64 %1900 to i32
  %1906 = and i32 %1905, 255
  %1907 = tail call i32 @llvm.ctpop.i32(i32 %1906) #8
  %1908 = trunc i32 %1907 to i8
  %1909 = and i8 %1908, 1
  %1910 = xor i8 %1909, 1
  store i8 %1910, i8* %39, align 1, !tbaa !2446
  %1911 = xor i64 %1899, %1900
  %1912 = lshr i64 %1911, 4
  %1913 = trunc i64 %1912 to i8
  %1914 = and i8 %1913, 1
  store i8 %1914, i8* %45, align 1, !tbaa !2447
  %1915 = icmp eq i64 %1900, 0
  %1916 = zext i1 %1915 to i8
  store i8 %1916, i8* %48, align 1, !tbaa !2448
  %1917 = lshr i64 %1900, 63
  %1918 = trunc i64 %1917 to i8
  store i8 %1918, i8* %51, align 1, !tbaa !2449
  %1919 = lshr i64 %1899, 63
  %1920 = xor i64 %1917, %1919
  %1921 = add nuw nsw i64 %1920, %1917
  %1922 = icmp eq i64 %1921, 2
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %57, align 1, !tbaa !2450
  %1924 = add i64 %1896, 12
  store i64 %1924, i64* %PC, align 8
  store i64 %1900, i64* %1898, align 8
  %1925 = load i64, i64* %PC, align 8
  %1926 = add i64 %1925, -234
  store i64 %1926, i64* %113, align 8, !tbaa !2428
  br label %block_40110a

block_400a8a:                                     ; preds = %block_400a7f
  %1927 = add i64 %2326, -6272
  store i64 %1927, i64* %RSI, align 8, !tbaa !2428
  %1928 = add i64 %2326, -4224
  store i64 %1928, i64* %RDI, align 8, !tbaa !2428
  %1929 = add i64 %2326, -64
  %1930 = add i64 %2341, 18
  store i64 %1930, i64* %PC, align 8
  %1931 = inttoptr i64 %1929 to i64*
  %1932 = load i64, i64* %1931, align 8
  store i64 %1932, i64* %RAX, align 8, !tbaa !2428
  %1933 = and i64 %1932, 4294967295
  store i64 %1933, i64* %RCX, align 8, !tbaa !2428
  %1934 = add i64 %2341, 24
  store i64 %1934, i64* %PC, align 8
  %1935 = load i64, i64* %2329, align 8
  store i64 %1935, i64* %RAX, align 8, !tbaa !2428
  %1936 = add i64 %2326, -13076
  %1937 = trunc i64 %1935 to i32
  %1938 = add i64 %2341, 32
  store i64 %1938, i64* %PC, align 8
  %1939 = inttoptr i64 %1936 to i32*
  store i32 %1937, i32* %1939, align 4
  %1940 = load i32, i32* %ECX, align 4
  %1941 = zext i32 %1940 to i64
  %1942 = load i64, i64* %PC, align 8
  store i64 %1941, i64* %RDX, align 8, !tbaa !2428
  %1943 = load i64, i64* %RBP, align 8
  %1944 = add i64 %1943, -13076
  %1945 = add i64 %1942, 8
  store i64 %1945, i64* %PC, align 8
  %1946 = inttoptr i64 %1944 to i32*
  %1947 = load i32, i32* %1946, align 4
  %1948 = zext i32 %1947 to i64
  store i64 %1948, i64* %RCX, align 8, !tbaa !2428
  %1949 = add i64 %1942, 2246
  %1950 = add i64 %1942, 13
  %1951 = load i64, i64* %9, align 8, !tbaa !2428
  %1952 = add i64 %1951, -8
  %1953 = inttoptr i64 %1952 to i64*
  store i64 %1950, i64* %1953, align 8
  store i64 %1952, i64* %9, align 8, !tbaa !2428
  store i64 %1949, i64* %113, align 8, !tbaa !2428
  %1954 = tail call %struct.Memory* @sub_401370_heap_adjust_renamed_(%struct.State* nonnull %0, i64 %1949, %struct.Memory* %MEMORY.16)
  %1955 = load i64, i64* %RBP, align 8
  %1956 = add i64 %1955, -48
  %1957 = load i64, i64* %PC, align 8
  %1958 = add i64 %1957, 4
  store i64 %1958, i64* %PC, align 8
  %1959 = inttoptr i64 %1956 to i64*
  %1960 = load i64, i64* %1959, align 8
  %1961 = add i64 %1960, -1
  store i64 %1961, i64* %RAX, align 8, !tbaa !2428
  %1962 = icmp ne i64 %1960, 0
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %32, align 1, !tbaa !2432
  %1964 = trunc i64 %1961 to i32
  %1965 = and i32 %1964, 255
  %1966 = tail call i32 @llvm.ctpop.i32(i32 %1965) #8
  %1967 = trunc i32 %1966 to i8
  %1968 = and i8 %1967, 1
  %1969 = xor i8 %1968, 1
  store i8 %1969, i8* %39, align 1, !tbaa !2446
  %1970 = xor i64 %1960, 16
  %1971 = xor i64 %1961, %1970
  %1972 = lshr i64 %1971, 4
  %1973 = trunc i64 %1972 to i8
  %1974 = and i8 %1973, 1
  store i8 %1974, i8* %45, align 1, !tbaa !2447
  %1975 = icmp eq i64 %1961, 0
  %1976 = zext i1 %1975 to i8
  store i8 %1976, i8* %48, align 1, !tbaa !2448
  %1977 = lshr i64 %1961, 63
  %1978 = trunc i64 %1977 to i8
  store i8 %1978, i8* %51, align 1, !tbaa !2449
  %1979 = lshr i64 %1960, 63
  %1980 = xor i64 %1977, %1979
  %1981 = xor i64 %1977, 1
  %1982 = add nuw nsw i64 %1980, %1981
  %1983 = icmp eq i64 %1982, 2
  %1984 = zext i1 %1983 to i8
  store i8 %1984, i8* %57, align 1, !tbaa !2450
  %1985 = add i64 %1957, 12
  store i64 %1985, i64* %PC, align 8
  store i64 %1961, i64* %1959, align 8
  %1986 = load i64, i64* %PC, align 8
  %1987 = add i64 %1986, -68
  store i64 %1987, i64* %113, align 8, !tbaa !2428
  br label %block_400a7f

block_401089:                                     ; preds = %block_40106e
  %1988 = shl i64 %2595, 1
  %1989 = lshr i64 %2595, 62
  %1990 = and i64 %1989, 1
  %1991 = or i64 %1988, 1
  store i64 %1991, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %32, align 1, !tbaa !2432
  %1992 = trunc i64 %1991 to i32
  %1993 = and i32 %1992, 255
  %1994 = tail call i32 @llvm.ctpop.i32(i32 %1993) #8
  %1995 = trunc i32 %1994 to i8
  %1996 = and i8 %1995, 1
  %1997 = xor i8 %1996, 1
  store i8 %1997, i8* %39, align 1, !tbaa !2446
  store i8 0, i8* %45, align 1, !tbaa !2447
  store i8 0, i8* %48, align 1, !tbaa !2448
  %1998 = lshr i64 %2595, 62
  %1999 = and i64 %1998, 1
  %2000 = trunc i64 %1999 to i8
  store i8 %2000, i8* %51, align 1, !tbaa !2449
  %2001 = xor i64 %1999, %1990
  %2002 = add nuw nsw i64 %2001, %1999
  %2003 = icmp eq i64 %2002, 2
  %2004 = zext i1 %2003 to i8
  store i8 %2004, i8* %57, align 1, !tbaa !2450
  %2005 = add i64 %2591, 16
  store i64 %2005, i64* %PC, align 8
  store i64 %1991, i64* %2594, align 8
  %2006 = load i64, i64* %RBP, align 8
  %2007 = add i64 %2006, -56
  %2008 = load i64, i64* %PC, align 8
  %2009 = add i64 %2008, 4
  store i64 %2009, i64* %PC, align 8
  %2010 = inttoptr i64 %2007 to i64*
  %2011 = load i64, i64* %2010, align 8
  store i64 %2011, i64* %RAX, align 8, !tbaa !2428
  %2012 = shl i64 %2011, 3
  %2013 = add i64 %2006, -10368
  %2014 = add i64 %2013, %2012
  %2015 = add i64 %2008, 12
  store i64 %2015, i64* %PC, align 8
  %2016 = inttoptr i64 %2014 to i64*
  %2017 = load i64, i64* %2016, align 8
  store i64 %2017, i64* %RAX, align 8, !tbaa !2428
  %2018 = add i64 %2006, -72
  %2019 = add i64 %2008, 16
  store i64 %2019, i64* %PC, align 8
  %2020 = inttoptr i64 %2018 to i64*
  %2021 = load i64, i64* %2020, align 8
  %2022 = and i64 %2021, %2017
  store i64 %2022, i64* %RAX, align 8, !tbaa !2428
  %2023 = trunc i64 %2022 to i32
  %2024 = and i32 %2023, 255
  %2025 = tail call i32 @llvm.ctpop.i32(i32 %2024) #8
  %2026 = trunc i32 %2025 to i8
  %2027 = and i8 %2026, 1
  %2028 = xor i8 %2027, 1
  %2029 = icmp eq i64 %2022, 0
  %2030 = zext i1 %2029 to i8
  %2031 = lshr i64 %2022, 63
  %2032 = trunc i64 %2031 to i8
  store i8 0, i8* %32, align 1, !tbaa !2432
  store i8 %2028, i8* %39, align 1, !tbaa !2446
  store i8 0, i8* %45, align 1, !tbaa !2447
  store i8 %2030, i8* %48, align 1, !tbaa !2448
  store i8 %2032, i8* %51, align 1, !tbaa !2449
  store i8 0, i8* %57, align 1, !tbaa !2450
  %.v68 = select i1 %2029, i64 38, i64 26
  %2033 = add i64 %2008, %.v68
  store i64 %2033, i64* %113, align 8, !tbaa !2428
  br i1 %2029, label %block_4010bf, label %block_4010b3

block_400c80:                                     ; preds = %block_400c73
  %2034 = add i64 %2461, 7
  store i64 %2034, i64* %PC, align 8
  %2035 = load i32, i32* %2450, align 4
  store i8 0, i8* %32, align 1, !tbaa !2432
  %2036 = and i32 %2035, 255
  %2037 = tail call i32 @llvm.ctpop.i32(i32 %2036) #8
  %2038 = trunc i32 %2037 to i8
  %2039 = and i8 %2038, 1
  %2040 = xor i8 %2039, 1
  store i8 %2040, i8* %39, align 1, !tbaa !2446
  store i8 0, i8* %45, align 1, !tbaa !2447
  %2041 = icmp eq i32 %2035, 0
  %2042 = zext i1 %2041 to i8
  store i8 %2042, i8* %48, align 1, !tbaa !2448
  %2043 = lshr i32 %2035, 31
  %2044 = trunc i32 %2043 to i8
  store i8 %2044, i8* %51, align 1, !tbaa !2449
  store i8 0, i8* %57, align 1, !tbaa !2450
  %2045 = icmp ne i8 %2044, 0
  %.v54 = select i1 %2045, i64 13, i64 45
  %2046 = add i64 %2461, %.v54
  store i64 %2046, i64* %113, align 8, !tbaa !2428
  br i1 %2045, label %block_400c8d, label %block_400cad

block_400df9:                                     ; preds = %block_400d9e
  %2047 = add i64 %3030, -56
  %2048 = add i64 %3046, 8
  store i64 %2048, i64* %PC, align 8
  %2049 = inttoptr i64 %2047 to i64*
  store i64 0, i64* %2049, align 8
  %.pre24 = load i64, i64* %PC, align 8
  br label %block_400e01

block_400ad8:                                     ; preds = %block_400acd
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %2050 = add i64 %1437, -6272
  store i64 %2050, i64* %RSI, align 8, !tbaa !2428
  %2051 = add i64 %1437, -4224
  store i64 %2051, i64* %RDI, align 8, !tbaa !2428
  %2052 = add i64 %1465, 23
  store i64 %2052, i64* %PC, align 8
  %2053 = load i64, i64* %1440, align 8
  %2054 = add i64 %2053, -1
  store i64 %2054, i64* %RAX, align 8, !tbaa !2428
  %2055 = icmp ne i64 %2053, 0
  %2056 = zext i1 %2055 to i8
  store i8 %2056, i8* %32, align 1, !tbaa !2432
  %2057 = trunc i64 %2054 to i32
  %2058 = and i32 %2057, 255
  %2059 = tail call i32 @llvm.ctpop.i32(i32 %2058) #8
  %2060 = trunc i32 %2059 to i8
  %2061 = and i8 %2060, 1
  %2062 = xor i8 %2061, 1
  store i8 %2062, i8* %39, align 1, !tbaa !2446
  %2063 = xor i64 %2053, 16
  %2064 = xor i64 %2054, %2063
  %2065 = lshr i64 %2064, 4
  %2066 = trunc i64 %2065 to i8
  %2067 = and i8 %2066, 1
  store i8 %2067, i8* %45, align 1, !tbaa !2447
  %2068 = icmp eq i64 %2054, 0
  %2069 = zext i1 %2068 to i8
  store i8 %2069, i8* %48, align 1, !tbaa !2448
  %2070 = lshr i64 %2054, 63
  %2071 = trunc i64 %2070 to i8
  store i8 %2071, i8* %51, align 1, !tbaa !2449
  %2072 = lshr i64 %2053, 63
  %2073 = xor i64 %2070, %2072
  %2074 = xor i64 %2070, 1
  %2075 = add nuw nsw i64 %2073, %2074
  %2076 = icmp eq i64 %2075, 2
  %2077 = zext i1 %2076 to i8
  store i8 %2077, i8* %57, align 1, !tbaa !2450
  %2078 = add i64 %1465, 31
  store i64 %2078, i64* %PC, align 8
  store i64 %2054, i64* %1440, align 8
  %2079 = load i64, i64* %RBP, align 8
  %2080 = add i64 %2079, -6272
  %2081 = load i64, i64* %PC, align 8
  %2082 = add i64 %2081, 7
  store i64 %2082, i64* %PC, align 8
  %2083 = inttoptr i64 %2080 to i64*
  %2084 = load i64, i64* %2083, align 8
  store i64 %2084, i64* %RAX, align 8, !tbaa !2428
  %2085 = add i64 %2079, -10632
  %2086 = add i64 %2081, 14
  store i64 %2086, i64* %PC, align 8
  %2087 = inttoptr i64 %2085 to i64*
  store i64 %2084, i64* %2087, align 8
  %2088 = load i64, i64* %RBP, align 8
  %2089 = add i64 %2088, -64
  %2090 = load i64, i64* %PC, align 8
  %2091 = add i64 %2090, 4
  store i64 %2091, i64* %PC, align 8
  %2092 = inttoptr i64 %2089 to i64*
  %2093 = load i64, i64* %2092, align 8
  store i64 %2093, i64* %RAX, align 8, !tbaa !2428
  %2094 = shl i64 %2093, 3
  %2095 = add i64 %2088, -6272
  %2096 = add i64 %2095, %2094
  %2097 = add i64 %2090, 12
  store i64 %2097, i64* %PC, align 8
  %2098 = inttoptr i64 %2096 to i64*
  %2099 = load i64, i64* %2098, align 8
  store i64 %2099, i64* %RAX, align 8, !tbaa !2428
  %2100 = add i64 %2088, -6272
  %2101 = add i64 %2090, 19
  store i64 %2101, i64* %PC, align 8
  %2102 = inttoptr i64 %2100 to i64*
  store i64 %2099, i64* %2102, align 8
  %2103 = load i64, i64* %RBP, align 8
  %2104 = add i64 %2103, -64
  %2105 = load i64, i64* %PC, align 8
  %2106 = add i64 %2105, 4
  store i64 %2106, i64* %PC, align 8
  %2107 = inttoptr i64 %2104 to i64*
  %2108 = load i64, i64* %2107, align 8
  store i64 %2108, i64* %RAX, align 8, !tbaa !2428
  %2109 = and i64 %2108, 4294967295
  store i64 %2109, i64* %RDX, align 8, !tbaa !2428
  %2110 = add i64 %2105, 2136
  %2111 = add i64 %2105, 11
  %2112 = load i64, i64* %9, align 8, !tbaa !2428
  %2113 = add i64 %2112, -8
  %2114 = inttoptr i64 %2113 to i64*
  store i64 %2111, i64* %2114, align 8
  store i64 %2113, i64* %9, align 8, !tbaa !2428
  store i64 %2110, i64* %113, align 8, !tbaa !2428
  %2115 = tail call %struct.Memory* @sub_401370_heap_adjust_renamed_(%struct.State* nonnull %0, i64 %2110, %struct.Memory* %MEMORY.11)
  %2116 = load i64, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %2117 = load i64, i64* %RBP, align 8
  %2118 = add i64 %2117, -6272
  store i64 %2118, i64* %RSI, align 8, !tbaa !2428
  %2119 = add i64 %2117, -4224
  store i64 %2119, i64* %RDI, align 8, !tbaa !2428
  store i64 -256, i64* %RAX, align 8, !tbaa !2428
  %2120 = add i64 %2116, 33
  store i64 %2120, i64* %PC, align 8
  %2121 = inttoptr i64 %2118 to i64*
  %2122 = load i64, i64* %2121, align 8
  store i64 %2122, i64* %R8, align 8, !tbaa !2428
  %2123 = shl i64 %2122, 3
  %2124 = add i64 %2117, -4224
  %2125 = add i64 %2124, %2123
  %2126 = add i64 %2116, 41
  store i64 %2126, i64* %PC, align 8
  %2127 = inttoptr i64 %2125 to i64*
  %2128 = load i64, i64* %2127, align 8
  store i64 %2128, i64* %R8, align 8, !tbaa !2428
  %2129 = add i64 %2117, -10632
  %2130 = add i64 %2116, 48
  store i64 %2130, i64* %PC, align 8
  %2131 = inttoptr i64 %2129 to i64*
  %2132 = load i64, i64* %2131, align 8
  store i64 %2132, i64* %R9, align 8, !tbaa !2428
  %2133 = shl i64 %2132, 3
  %2134 = add i64 %2124, %2133
  %2135 = add i64 %2116, 56
  store i64 %2135, i64* %PC, align 8
  %2136 = inttoptr i64 %2134 to i64*
  %2137 = load i64, i64* %2136, align 8
  %2138 = add i64 %2137, %2128
  store i64 %2138, i64* %R8, align 8, !tbaa !2428
  %2139 = icmp ult i64 %2138, %2128
  %2140 = icmp ult i64 %2138, %2137
  %2141 = or i1 %2139, %2140
  %2142 = zext i1 %2141 to i8
  store i8 %2142, i8* %32, align 1, !tbaa !2432
  %2143 = trunc i64 %2138 to i32
  %2144 = and i32 %2143, 255
  %2145 = tail call i32 @llvm.ctpop.i32(i32 %2144) #8
  %2146 = trunc i32 %2145 to i8
  %2147 = and i8 %2146, 1
  %2148 = xor i8 %2147, 1
  store i8 %2148, i8* %39, align 1, !tbaa !2446
  %2149 = xor i64 %2137, %2128
  %2150 = xor i64 %2149, %2138
  %2151 = lshr i64 %2150, 4
  %2152 = trunc i64 %2151 to i8
  %2153 = and i8 %2152, 1
  store i8 %2153, i8* %45, align 1, !tbaa !2447
  %2154 = icmp eq i64 %2138, 0
  %2155 = zext i1 %2154 to i8
  store i8 %2155, i8* %48, align 1, !tbaa !2448
  %2156 = lshr i64 %2138, 63
  %2157 = trunc i64 %2156 to i8
  store i8 %2157, i8* %51, align 1, !tbaa !2449
  %2158 = lshr i64 %2128, 63
  %2159 = lshr i64 %2137, 63
  %2160 = xor i64 %2156, %2158
  %2161 = xor i64 %2156, %2159
  %2162 = add nuw nsw i64 %2160, %2161
  %2163 = icmp eq i64 %2162, 2
  %2164 = zext i1 %2163 to i8
  store i8 %2164, i8* %57, align 1, !tbaa !2450
  %2165 = add i64 %2117, -64
  %2166 = add i64 %2116, 60
  store i64 %2166, i64* %PC, align 8
  %2167 = inttoptr i64 %2165 to i64*
  %2168 = load i64, i64* %2167, align 8
  %2169 = add i64 %2168, 256
  store i64 %2169, i64* %R9, align 8, !tbaa !2428
  %2170 = icmp ugt i64 %2168, -257
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %32, align 1, !tbaa !2432
  %2172 = trunc i64 %2169 to i32
  %2173 = and i32 %2172, 255
  %2174 = tail call i32 @llvm.ctpop.i32(i32 %2173) #8
  %2175 = trunc i32 %2174 to i8
  %2176 = and i8 %2175, 1
  %2177 = xor i8 %2176, 1
  store i8 %2177, i8* %39, align 1, !tbaa !2446
  %2178 = xor i64 %2168, %2169
  %2179 = lshr i64 %2178, 4
  %2180 = trunc i64 %2179 to i8
  %2181 = and i8 %2180, 1
  store i8 %2181, i8* %45, align 1, !tbaa !2447
  %2182 = icmp eq i64 %2169, 0
  %2183 = zext i1 %2182 to i8
  store i8 %2183, i8* %48, align 1, !tbaa !2448
  %2184 = lshr i64 %2169, 63
  %2185 = trunc i64 %2184 to i8
  store i8 %2185, i8* %51, align 1, !tbaa !2449
  %2186 = lshr i64 %2168, 63
  %2187 = xor i64 %2184, %2186
  %2188 = add nuw nsw i64 %2187, %2184
  %2189 = icmp eq i64 %2188, 2
  %2190 = zext i1 %2189 to i8
  store i8 %2190, i8* %57, align 1, !tbaa !2450
  %2191 = load i64, i64* %RBP, align 8
  %2192 = shl i64 %2169, 3
  %2193 = add i64 %2191, -4224
  %2194 = add i64 %2193, %2192
  %2195 = add i64 %2116, 75
  store i64 %2195, i64* %PC, align 8
  %2196 = inttoptr i64 %2194 to i64*
  store i64 %2138, i64* %2196, align 8
  %2197 = load i64, i64* %RBP, align 8
  %2198 = add i64 %2197, -64
  %2199 = load i64, i64* %PC, align 8
  %2200 = add i64 %2199, 4
  store i64 %2200, i64* %PC, align 8
  %2201 = inttoptr i64 %2198 to i64*
  %2202 = load i64, i64* %2201, align 8
  %2203 = add i64 %2202, 256
  store i64 %2203, i64* %R8, align 8, !tbaa !2428
  %2204 = icmp ugt i64 %2202, -257
  %2205 = zext i1 %2204 to i8
  store i8 %2205, i8* %32, align 1, !tbaa !2432
  %2206 = trunc i64 %2203 to i32
  %2207 = and i32 %2206, 255
  %2208 = tail call i32 @llvm.ctpop.i32(i32 %2207) #8
  %2209 = trunc i32 %2208 to i8
  %2210 = and i8 %2209, 1
  %2211 = xor i8 %2210, 1
  store i8 %2211, i8* %39, align 1, !tbaa !2446
  %2212 = xor i64 %2202, %2203
  %2213 = lshr i64 %2212, 4
  %2214 = trunc i64 %2213 to i8
  %2215 = and i8 %2214, 1
  store i8 %2215, i8* %45, align 1, !tbaa !2447
  %2216 = icmp eq i64 %2203, 0
  %2217 = zext i1 %2216 to i8
  store i8 %2217, i8* %48, align 1, !tbaa !2448
  %2218 = lshr i64 %2203, 63
  %2219 = trunc i64 %2218 to i8
  store i8 %2219, i8* %51, align 1, !tbaa !2449
  %2220 = lshr i64 %2202, 63
  %2221 = xor i64 %2218, %2220
  %2222 = add nuw nsw i64 %2221, %2218
  %2223 = icmp eq i64 %2222, 2
  %2224 = zext i1 %2223 to i8
  store i8 %2224, i8* %57, align 1, !tbaa !2450
  %2225 = and i64 %2203, 4294967295
  store i64 %2225, i64* %RDX, align 8, !tbaa !2428
  %2226 = add i64 %2197, -10632
  %2227 = add i64 %2199, 21
  store i64 %2227, i64* %PC, align 8
  %2228 = inttoptr i64 %2226 to i64*
  %2229 = load i64, i64* %2228, align 8
  store i64 %2229, i64* %R8, align 8, !tbaa !2428
  %2230 = shl i64 %2229, 2
  %2231 = add i64 %2197, -8320
  %2232 = add i64 %2231, %2230
  %2233 = trunc i64 %2203 to i32
  %2234 = add i64 %2199, 29
  store i64 %2234, i64* %PC, align 8
  %2235 = inttoptr i64 %2232 to i32*
  store i32 %2233, i32* %2235, align 4
  %2236 = load i64, i64* %RAX, align 8
  %2237 = load i64, i64* %RBP, align 8
  %2238 = add i64 %2237, -64
  %2239 = load i64, i64* %PC, align 8
  %2240 = add i64 %2239, 4
  store i64 %2240, i64* %PC, align 8
  %2241 = inttoptr i64 %2238 to i64*
  %2242 = load i64, i64* %2241, align 8
  %2243 = sub i64 %2236, %2242
  store i64 %2243, i64* %RAX, align 8, !tbaa !2428
  %2244 = icmp ult i64 %2236, %2242
  %2245 = zext i1 %2244 to i8
  store i8 %2245, i8* %32, align 1, !tbaa !2432
  %2246 = trunc i64 %2243 to i32
  %2247 = and i32 %2246, 255
  %2248 = tail call i32 @llvm.ctpop.i32(i32 %2247) #8
  %2249 = trunc i32 %2248 to i8
  %2250 = and i8 %2249, 1
  %2251 = xor i8 %2250, 1
  store i8 %2251, i8* %39, align 1, !tbaa !2446
  %2252 = xor i64 %2242, %2236
  %2253 = xor i64 %2252, %2243
  %2254 = lshr i64 %2253, 4
  %2255 = trunc i64 %2254 to i8
  %2256 = and i8 %2255, 1
  store i8 %2256, i8* %45, align 1, !tbaa !2447
  %2257 = icmp eq i64 %2243, 0
  %2258 = zext i1 %2257 to i8
  store i8 %2258, i8* %48, align 1, !tbaa !2448
  %2259 = lshr i64 %2243, 63
  %2260 = trunc i64 %2259 to i8
  store i8 %2260, i8* %51, align 1, !tbaa !2449
  %2261 = lshr i64 %2236, 63
  %2262 = lshr i64 %2242, 63
  %2263 = xor i64 %2262, %2261
  %2264 = xor i64 %2259, %2261
  %2265 = add nuw nsw i64 %2264, %2263
  %2266 = icmp eq i64 %2265, 2
  %2267 = zext i1 %2266 to i8
  store i8 %2267, i8* %57, align 1, !tbaa !2450
  %2268 = and i64 %2243, 4294967295
  store i64 %2268, i64* %RDX, align 8, !tbaa !2428
  %2269 = add i64 %2237, -6272
  %2270 = add i64 %2239, 13
  store i64 %2270, i64* %PC, align 8
  %2271 = inttoptr i64 %2269 to i64*
  %2272 = load i64, i64* %2271, align 8
  store i64 %2272, i64* %RAX, align 8, !tbaa !2428
  %2273 = shl i64 %2272, 2
  %2274 = add i64 %2237, -8320
  %2275 = add i64 %2274, %2273
  %2276 = trunc i64 %2243 to i32
  %2277 = add i64 %2239, 20
  store i64 %2277, i64* %PC, align 8
  %2278 = inttoptr i64 %2275 to i32*
  store i32 %2276, i32* %2278, align 4
  %2279 = load i64, i64* %RBP, align 8
  %2280 = add i64 %2279, -64
  %2281 = load i64, i64* %PC, align 8
  %2282 = add i64 %2281, 4
  store i64 %2282, i64* %PC, align 8
  %2283 = inttoptr i64 %2280 to i64*
  %2284 = load i64, i64* %2283, align 8
  %2285 = add i64 %2284, 256
  store i64 %2285, i64* %RAX, align 8, !tbaa !2428
  %2286 = icmp ugt i64 %2284, -257
  %2287 = zext i1 %2286 to i8
  store i8 %2287, i8* %32, align 1, !tbaa !2432
  %2288 = trunc i64 %2285 to i32
  %2289 = and i32 %2288, 255
  %2290 = tail call i32 @llvm.ctpop.i32(i32 %2289) #8
  %2291 = trunc i32 %2290 to i8
  %2292 = and i8 %2291, 1
  %2293 = xor i8 %2292, 1
  store i8 %2293, i8* %39, align 1, !tbaa !2446
  %2294 = xor i64 %2284, %2285
  %2295 = lshr i64 %2294, 4
  %2296 = trunc i64 %2295 to i8
  %2297 = and i8 %2296, 1
  store i8 %2297, i8* %45, align 1, !tbaa !2447
  %2298 = icmp eq i64 %2285, 0
  %2299 = zext i1 %2298 to i8
  store i8 %2299, i8* %48, align 1, !tbaa !2448
  %2300 = lshr i64 %2285, 63
  %2301 = trunc i64 %2300 to i8
  store i8 %2301, i8* %51, align 1, !tbaa !2449
  %2302 = lshr i64 %2284, 63
  %2303 = xor i64 %2300, %2302
  %2304 = add nuw nsw i64 %2303, %2300
  %2305 = icmp eq i64 %2304, 2
  %2306 = zext i1 %2305 to i8
  store i8 %2306, i8* %57, align 1, !tbaa !2450
  %2307 = add i64 %2279, -6272
  %2308 = add i64 %2281, 17
  store i64 %2308, i64* %PC, align 8
  %2309 = inttoptr i64 %2307 to i64*
  store i64 %2285, i64* %2309, align 8
  %2310 = load i64, i64* %RBP, align 8
  %2311 = add i64 %2310, -64
  %2312 = load i64, i64* %PC, align 8
  %2313 = add i64 %2312, 4
  store i64 %2313, i64* %PC, align 8
  %2314 = inttoptr i64 %2311 to i64*
  %2315 = load i64, i64* %2314, align 8
  store i64 %2315, i64* %RAX, align 8, !tbaa !2428
  %2316 = and i64 %2315, 4294967295
  store i64 %2316, i64* %RDX, align 8, !tbaa !2428
  %2317 = add i64 %2312, 1984
  %2318 = add i64 %2312, 11
  %2319 = load i64, i64* %9, align 8, !tbaa !2428
  %2320 = add i64 %2319, -8
  %2321 = inttoptr i64 %2320 to i64*
  store i64 %2318, i64* %2321, align 8
  store i64 %2320, i64* %9, align 8, !tbaa !2428
  store i64 %2317, i64* %113, align 8, !tbaa !2428
  %2322 = tail call %struct.Memory* @sub_401370_heap_adjust_renamed_(%struct.State* nonnull %0, i64 %2317, %struct.Memory* %2115)
  %2323 = load i64, i64* %PC, align 8
  %2324 = add i64 %2323, -238
  store i64 %2324, i64* %113, align 8, !tbaa !2428
  %.pre16 = load i64, i64* %RBP, align 8
  br label %block_400acd

block_400a7f:                                     ; preds = %block_400a77, %block_400a8a
  %2325 = phi i64 [ %.pre15, %block_400a77 ], [ %1987, %block_400a8a ]
  %MEMORY.16 = phi %struct.Memory* [ %328, %block_400a77 ], [ %1954, %block_400a8a ]
  %2326 = load i64, i64* %RBP, align 8
  %2327 = add i64 %2326, -48
  %2328 = add i64 %2325, 5
  store i64 %2328, i64* %PC, align 8
  %2329 = inttoptr i64 %2327 to i64*
  %2330 = load i64, i64* %2329, align 8
  store i8 0, i8* %32, align 1, !tbaa !2432
  %2331 = trunc i64 %2330 to i32
  %2332 = and i32 %2331, 255
  %2333 = tail call i32 @llvm.ctpop.i32(i32 %2332) #8
  %2334 = trunc i32 %2333 to i8
  %2335 = and i8 %2334, 1
  %2336 = xor i8 %2335, 1
  store i8 %2336, i8* %39, align 1, !tbaa !2446
  store i8 0, i8* %45, align 1, !tbaa !2447
  %2337 = icmp eq i64 %2330, 0
  %2338 = zext i1 %2337 to i8
  store i8 %2338, i8* %48, align 1, !tbaa !2448
  %2339 = lshr i64 %2330, 63
  %2340 = trunc i64 %2339 to i8
  store i8 %2340, i8* %51, align 1, !tbaa !2449
  store i8 0, i8* %57, align 1, !tbaa !2450
  %.v49 = select i1 %2337, i64 73, i64 11
  %2341 = add i64 %2325, %.v49
  store i64 %2341, i64* %113, align 8, !tbaa !2428
  br i1 %2337, label %block_400ac8, label %block_400a8a

block_401214:                                     ; preds = %block_401201
  %2342 = add i64 %2724, 9
  store i64 %2342, i64* %PC, align 8
  %2343 = load i64, i64* %2706, align 8
  %2344 = add i64 %2343, 1
  store i64 %2344, i64* %RAX, align 8, !tbaa !2428
  %2345 = icmp eq i64 %2343, -1
  %2346 = icmp eq i64 %2344, 0
  %2347 = or i1 %2345, %2346
  %2348 = zext i1 %2347 to i8
  store i8 %2348, i8* %32, align 1, !tbaa !2432
  %2349 = trunc i64 %2344 to i32
  %2350 = and i32 %2349, 255
  %2351 = tail call i32 @llvm.ctpop.i32(i32 %2350) #8
  %2352 = trunc i32 %2351 to i8
  %2353 = and i8 %2352, 1
  %2354 = xor i8 %2353, 1
  store i8 %2354, i8* %39, align 1, !tbaa !2446
  %2355 = xor i64 %2343, %2344
  %2356 = lshr i64 %2355, 4
  %2357 = trunc i64 %2356 to i8
  %2358 = and i8 %2357, 1
  store i8 %2358, i8* %45, align 1, !tbaa !2447
  %2359 = icmp eq i64 %2344, 0
  %2360 = zext i1 %2359 to i8
  store i8 %2360, i8* %48, align 1, !tbaa !2448
  %2361 = lshr i64 %2344, 63
  %2362 = trunc i64 %2361 to i8
  store i8 %2362, i8* %51, align 1, !tbaa !2449
  %2363 = lshr i64 %2343, 63
  %2364 = xor i64 %2361, %2363
  %2365 = add nuw nsw i64 %2364, %2361
  %2366 = icmp eq i64 %2365, 2
  %2367 = zext i1 %2366 to i8
  store i8 %2367, i8* %57, align 1, !tbaa !2450
  %2368 = add i64 %2724, 17
  store i64 %2368, i64* %PC, align 8
  store i64 %2344, i64* %2706, align 8
  %2369 = load i64, i64* %PC, align 8
  %2370 = add i64 %2369, -36
  store i64 %2370, i64* %113, align 8, !tbaa !2428
  br label %block_401201

block_400c8d:                                     ; preds = %block_400c80
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %32, align 1, !tbaa !2432
  store i8 1, i8* %39, align 1, !tbaa !2446
  store i8 1, i8* %48, align 1, !tbaa !2448
  store i8 0, i8* %51, align 1, !tbaa !2449
  store i8 0, i8* %57, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %2371 = add i64 %2447, -56
  %2372 = add i64 %2046, 6
  store i64 %2372, i64* %PC, align 8
  %2373 = inttoptr i64 %2371 to i64*
  %2374 = load i64, i64* %2373, align 8
  store i64 %2374, i64* %RCX, align 8, !tbaa !2428
  %2375 = add i64 %2447, -10648
  %2376 = add i64 %2046, 13
  store i64 %2376, i64* %PC, align 8
  %2377 = inttoptr i64 %2375 to i64*
  %2378 = load i64, i64* %2377, align 8
  %2379 = add i64 %2378, %2374
  store i64 %2379, i64* %RCX, align 8, !tbaa !2428
  %2380 = icmp ult i64 %2379, %2374
  %2381 = icmp ult i64 %2379, %2378
  %2382 = or i1 %2380, %2381
  %2383 = zext i1 %2382 to i8
  store i8 %2383, i8* %32, align 1, !tbaa !2432
  %2384 = trunc i64 %2379 to i32
  %2385 = and i32 %2384, 255
  %2386 = tail call i32 @llvm.ctpop.i32(i32 %2385) #8
  %2387 = trunc i32 %2386 to i8
  %2388 = and i8 %2387, 1
  %2389 = xor i8 %2388, 1
  store i8 %2389, i8* %39, align 1, !tbaa !2446
  %2390 = xor i64 %2378, %2374
  %2391 = xor i64 %2390, %2379
  %2392 = lshr i64 %2391, 4
  %2393 = trunc i64 %2392 to i8
  %2394 = and i8 %2393, 1
  store i8 %2394, i8* %45, align 1, !tbaa !2447
  %2395 = icmp eq i64 %2379, 0
  %2396 = zext i1 %2395 to i8
  store i8 %2396, i8* %48, align 1, !tbaa !2448
  %2397 = lshr i64 %2379, 63
  %2398 = trunc i64 %2397 to i8
  store i8 %2398, i8* %51, align 1, !tbaa !2449
  %2399 = lshr i64 %2374, 63
  %2400 = lshr i64 %2378, 63
  %2401 = xor i64 %2397, %2399
  %2402 = xor i64 %2397, %2400
  %2403 = add nuw nsw i64 %2401, %2402
  %2404 = icmp eq i64 %2403, 2
  %2405 = zext i1 %2404 to i8
  store i8 %2405, i8* %57, align 1, !tbaa !2450
  %2406 = add i64 %2046, 20
  store i64 %2406, i64* %PC, align 8
  store i64 %2379, i64* %2377, align 8
  %2407 = load i64, i64* %RAX, align 8
  %2408 = load i64, i64* %RBP, align 8
  %2409 = add i64 %2408, -10668
  %2410 = load i64, i64* %PC, align 8
  %2411 = add i64 %2410, 6
  store i64 %2411, i64* %PC, align 8
  %2412 = trunc i64 %2407 to i32
  %2413 = inttoptr i64 %2409 to i32*
  %2414 = load i32, i32* %2413, align 4
  %2415 = sub i32 %2412, %2414
  %2416 = zext i32 %2415 to i64
  store i64 %2416, i64* %RAX, align 8, !tbaa !2428
  %2417 = icmp ult i32 %2412, %2414
  %2418 = zext i1 %2417 to i8
  store i8 %2418, i8* %32, align 1, !tbaa !2432
  %2419 = and i32 %2415, 255
  %2420 = tail call i32 @llvm.ctpop.i32(i32 %2419) #8
  %2421 = trunc i32 %2420 to i8
  %2422 = and i8 %2421, 1
  %2423 = xor i8 %2422, 1
  store i8 %2423, i8* %39, align 1, !tbaa !2446
  %2424 = xor i32 %2414, %2412
  %2425 = xor i32 %2424, %2415
  %2426 = lshr i32 %2425, 4
  %2427 = trunc i32 %2426 to i8
  %2428 = and i8 %2427, 1
  store i8 %2428, i8* %45, align 1, !tbaa !2447
  %2429 = icmp eq i32 %2415, 0
  %2430 = zext i1 %2429 to i8
  store i8 %2430, i8* %48, align 1, !tbaa !2448
  %2431 = lshr i32 %2415, 31
  %2432 = trunc i32 %2431 to i8
  store i8 %2432, i8* %51, align 1, !tbaa !2449
  %2433 = lshr i32 %2412, 31
  %2434 = lshr i32 %2414, 31
  %2435 = xor i32 %2434, %2433
  %2436 = xor i32 %2431, %2433
  %2437 = add nuw nsw i32 %2436, %2435
  %2438 = icmp eq i32 %2437, 2
  %2439 = zext i1 %2438 to i8
  store i8 %2439, i8* %57, align 1, !tbaa !2450
  %2440 = add i64 %2410, 12
  store i64 %2440, i64* %PC, align 8
  store i32 %2415, i32* %2413, align 4
  %.pre19 = load i64, i64* %RBP, align 8
  %.pre20 = load i64, i64* %PC, align 8
  br label %block_400cad

block_400a77:                                     ; preds = %block_400a24
  %2441 = add i64 %3135, -64
  %2442 = add i64 %3162, 4
  store i64 %2442, i64* %PC, align 8
  %2443 = inttoptr i64 %2441 to i64*
  %2444 = load i64, i64* %2443, align 8
  store i64 %2444, i64* %RAX, align 8, !tbaa !2428
  %2445 = add i64 %3162, 8
  store i64 %2445, i64* %PC, align 8
  store i64 %2444, i64* %3138, align 8
  %.pre15 = load i64, i64* %PC, align 8
  br label %block_400a7f

block_400c73:                                     ; preds = %block_400c44, %block_400cad
  %2446 = phi i64 [ %.pre18, %block_400c44 ], [ %1783, %block_400cad ]
  %2447 = load i64, i64* %RBP, align 8
  %2448 = add i64 %2447, -10668
  %2449 = add i64 %2446, 7
  store i64 %2449, i64* %PC, align 8
  %2450 = inttoptr i64 %2448 to i32*
  %2451 = load i32, i32* %2450, align 4
  store i8 0, i8* %32, align 1, !tbaa !2432
  %2452 = and i32 %2451, 255
  %2453 = tail call i32 @llvm.ctpop.i32(i32 %2452) #8
  %2454 = trunc i32 %2453 to i8
  %2455 = and i8 %2454, 1
  %2456 = xor i8 %2455, 1
  store i8 %2456, i8* %39, align 1, !tbaa !2446
  store i8 0, i8* %45, align 1, !tbaa !2447
  %2457 = icmp eq i32 %2451, 0
  %2458 = zext i1 %2457 to i8
  store i8 %2458, i8* %48, align 1, !tbaa !2448
  %2459 = lshr i32 %2451, 31
  %2460 = trunc i32 %2459 to i8
  store i8 %2460, i8* %51, align 1, !tbaa !2449
  store i8 0, i8* %57, align 1, !tbaa !2450
  %.v53 = select i1 %2457, i64 107, i64 13
  %2461 = add i64 %2446, %.v53
  store i64 %2461, i64* %113, align 8, !tbaa !2428
  br i1 %2457, label %block_400cde, label %block_400c80

block_4012dd:                                     ; preds = %block_4012c7
  %2462 = add i64 %1710, 4
  store i64 %2462, i64* %PC, align 8
  %2463 = load i64, i64* %1787, align 8
  store i64 %2463, i64* %RAX, align 8, !tbaa !2428
  %2464 = add i64 %1784, -12992
  %2465 = add i64 %2464, %2463
  %2466 = add i64 %1710, 11
  store i64 %2466, i64* %PC, align 8
  %2467 = inttoptr i64 %2465 to i8*
  %2468 = load i8, i8* %2467, align 1
  store i8 %2468, i8* %CL, align 1, !tbaa !2453
  %2469 = add i64 %1784, -112
  %2470 = add i64 %1710, 15
  store i64 %2470, i64* %PC, align 8
  %2471 = inttoptr i64 %2469 to i64*
  %2472 = load i64, i64* %2471, align 8
  store i64 %2472, i64* %RAX, align 8, !tbaa !2428
  %2473 = add i64 %1710, 17
  store i64 %2473, i64* %PC, align 8
  %2474 = inttoptr i64 %2472 to i8*
  store i8 %2468, i8* %2474, align 1
  %2475 = load i64, i64* %RBP, align 8
  %2476 = add i64 %2475, -112
  %2477 = load i64, i64* %PC, align 8
  %2478 = add i64 %2477, 4
  store i64 %2478, i64* %PC, align 8
  %2479 = inttoptr i64 %2476 to i64*
  %2480 = load i64, i64* %2479, align 8
  %2481 = add i64 %2480, 1
  store i64 %2481, i64* %RAX, align 8, !tbaa !2428
  %2482 = icmp eq i64 %2480, -1
  %2483 = icmp eq i64 %2481, 0
  %2484 = or i1 %2482, %2483
  %2485 = zext i1 %2484 to i8
  store i8 %2485, i8* %32, align 1, !tbaa !2432
  %2486 = trunc i64 %2481 to i32
  %2487 = and i32 %2486, 255
  %2488 = tail call i32 @llvm.ctpop.i32(i32 %2487) #8
  %2489 = trunc i32 %2488 to i8
  %2490 = and i8 %2489, 1
  %2491 = xor i8 %2490, 1
  store i8 %2491, i8* %39, align 1, !tbaa !2446
  %2492 = xor i64 %2480, %2481
  %2493 = lshr i64 %2492, 4
  %2494 = trunc i64 %2493 to i8
  %2495 = and i8 %2494, 1
  store i8 %2495, i8* %45, align 1, !tbaa !2447
  %2496 = icmp eq i64 %2481, 0
  %2497 = zext i1 %2496 to i8
  store i8 %2497, i8* %48, align 1, !tbaa !2448
  %2498 = lshr i64 %2481, 63
  %2499 = trunc i64 %2498 to i8
  store i8 %2499, i8* %51, align 1, !tbaa !2449
  %2500 = lshr i64 %2480, 63
  %2501 = xor i64 %2498, %2500
  %2502 = add nuw nsw i64 %2501, %2498
  %2503 = icmp eq i64 %2502, 2
  %2504 = zext i1 %2503 to i8
  store i8 %2504, i8* %57, align 1, !tbaa !2450
  %2505 = add i64 %2477, 12
  store i64 %2505, i64* %PC, align 8
  store i64 %2481, i64* %2479, align 8
  %2506 = load i64, i64* %RBP, align 8
  %2507 = add i64 %2506, -64
  %2508 = load i64, i64* %PC, align 8
  %2509 = add i64 %2508, 4
  store i64 %2509, i64* %PC, align 8
  %2510 = inttoptr i64 %2507 to i64*
  %2511 = load i64, i64* %2510, align 8
  %2512 = add i64 %2511, 1
  store i64 %2512, i64* %RAX, align 8, !tbaa !2428
  %2513 = icmp eq i64 %2511, -1
  %2514 = icmp eq i64 %2512, 0
  %2515 = or i1 %2513, %2514
  %2516 = zext i1 %2515 to i8
  store i8 %2516, i8* %32, align 1, !tbaa !2432
  %2517 = trunc i64 %2512 to i32
  %2518 = and i32 %2517, 255
  %2519 = tail call i32 @llvm.ctpop.i32(i32 %2518) #8
  %2520 = trunc i32 %2519 to i8
  %2521 = and i8 %2520, 1
  %2522 = xor i8 %2521, 1
  store i8 %2522, i8* %39, align 1, !tbaa !2446
  %2523 = xor i64 %2511, %2512
  %2524 = lshr i64 %2523, 4
  %2525 = trunc i64 %2524 to i8
  %2526 = and i8 %2525, 1
  store i8 %2526, i8* %45, align 1, !tbaa !2447
  %2527 = icmp eq i64 %2512, 0
  %2528 = zext i1 %2527 to i8
  store i8 %2528, i8* %48, align 1, !tbaa !2448
  %2529 = lshr i64 %2512, 63
  %2530 = trunc i64 %2529 to i8
  store i8 %2530, i8* %51, align 1, !tbaa !2449
  %2531 = lshr i64 %2511, 63
  %2532 = xor i64 %2529, %2531
  %2533 = add nuw nsw i64 %2532, %2529
  %2534 = icmp eq i64 %2533, 2
  %2535 = zext i1 %2534 to i8
  store i8 %2535, i8* %57, align 1, !tbaa !2450
  %2536 = add i64 %2508, 12
  store i64 %2536, i64* %PC, align 8
  store i64 %2512, i64* %2510, align 8
  %2537 = load i64, i64* %RBP, align 8
  %2538 = add i64 %2537, -80
  %2539 = load i64, i64* %PC, align 8
  %2540 = add i64 %2539, 8
  store i64 %2540, i64* %PC, align 8
  %2541 = inttoptr i64 %2538 to i64*
  store i64 0, i64* %2541, align 8
  %2542 = load i64, i64* %RBP, align 8
  %2543 = add i64 %2542, -56
  %2544 = load i64, i64* %PC, align 8
  %2545 = add i64 %2544, 4
  store i64 %2545, i64* %PC, align 8
  %2546 = inttoptr i64 %2543 to i64*
  %2547 = load i64, i64* %2546, align 8
  store i64 %2547, i64* %RAX, align 8, !tbaa !2428
  %2548 = add i64 %2542, -48
  %2549 = add i64 %2544, 8
  store i64 %2549, i64* %PC, align 8
  %2550 = inttoptr i64 %2548 to i64*
  store i64 %2547, i64* %2550, align 8
  %.pre41 = load i64, i64* %RBP, align 8
  %.pre42 = load i64, i64* %PC, align 8
  br label %block_401316

block_40106e:                                     ; preds = %block_4010bf, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1
  %2551 = phi i64 [ %.pre30, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1 ], [ %3133, %block_4010bf ]
  %2552 = load i64, i64* %RBP, align 8
  %2553 = add i64 %2552, -48
  %2554 = add i64 %2551, 4
  store i64 %2554, i64* %PC, align 8
  %2555 = inttoptr i64 %2553 to i64*
  %2556 = load i64, i64* %2555, align 8
  store i64 %2556, i64* %RAX, align 8, !tbaa !2428
  %2557 = add i64 %2552, -56
  %2558 = add i64 %2551, 8
  store i64 %2558, i64* %PC, align 8
  %2559 = inttoptr i64 %2557 to i64*
  %2560 = load i64, i64* %2559, align 8
  store i64 %2560, i64* %RCX, align 8, !tbaa !2428
  %2561 = add i64 %2552, -10624
  %2562 = add i64 %2561, %2560
  %2563 = add i64 %2551, 16
  store i64 %2563, i64* %PC, align 8
  %2564 = inttoptr i64 %2562 to i8*
  %2565 = load i8, i8* %2564, align 1
  %2566 = zext i8 %2565 to i64
  store i64 %2566, i64* %RDX, align 8, !tbaa !2428
  %2567 = zext i8 %2565 to i64
  store i64 %2567, i64* %RCX, align 8, !tbaa !2428
  %2568 = sub i64 %2556, %2567
  %2569 = icmp ult i64 %2556, %2567
  %2570 = zext i1 %2569 to i8
  store i8 %2570, i8* %32, align 1, !tbaa !2432
  %2571 = trunc i64 %2568 to i32
  %2572 = and i32 %2571, 255
  %2573 = tail call i32 @llvm.ctpop.i32(i32 %2572) #8
  %2574 = trunc i32 %2573 to i8
  %2575 = and i8 %2574, 1
  %2576 = xor i8 %2575, 1
  store i8 %2576, i8* %39, align 1, !tbaa !2446
  %2577 = xor i64 %2567, %2556
  %2578 = xor i64 %2577, %2568
  %2579 = lshr i64 %2578, 4
  %2580 = trunc i64 %2579 to i8
  %2581 = and i8 %2580, 1
  store i8 %2581, i8* %45, align 1, !tbaa !2447
  %2582 = icmp eq i64 %2568, 0
  %2583 = zext i1 %2582 to i8
  store i8 %2583, i8* %48, align 1, !tbaa !2448
  %2584 = lshr i64 %2568, 63
  %2585 = trunc i64 %2584 to i8
  store i8 %2585, i8* %51, align 1, !tbaa !2449
  %2586 = lshr i64 %2556, 63
  %2587 = xor i64 %2584, %2586
  %2588 = add nuw nsw i64 %2587, %2586
  %2589 = icmp eq i64 %2588, 2
  %2590 = zext i1 %2589 to i8
  store i8 %2590, i8* %57, align 1, !tbaa !2450
  %.v67 = select i1 %2569, i64 27, i64 110
  %2591 = add i64 %2551, %.v67
  %2592 = add i64 %2552, -80
  %2593 = add i64 %2591, 4
  store i64 %2593, i64* %PC, align 8
  %2594 = inttoptr i64 %2592 to i64*
  %2595 = load i64, i64* %2594, align 8
  store i64 %2595, i64* %RAX, align 8, !tbaa !2428
  %2596 = add i64 %2591, 8
  store i64 %2596, i64* %PC, align 8
  br i1 %2569, label %block_401089, label %block_4010dc

block_401268:                                     ; preds = %block_40125a
  %2597 = add i64 %2726, -80
  %2598 = add i64 %2760, 4
  store i64 %2598, i64* %PC, align 8
  %2599 = inttoptr i64 %2597 to i64*
  %2600 = load i64, i64* %2599, align 8
  %2601 = shl i64 %2600, 1
  %2602 = lshr i64 %2600, 62
  %2603 = and i64 %2602, 1
  %2604 = or i64 %2601, 1
  store i64 %2604, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %32, align 1, !tbaa !2432
  %2605 = trunc i64 %2604 to i32
  %2606 = and i32 %2605, 255
  %2607 = tail call i32 @llvm.ctpop.i32(i32 %2606) #8
  %2608 = trunc i32 %2607 to i8
  %2609 = and i8 %2608, 1
  %2610 = xor i8 %2609, 1
  store i8 %2610, i8* %39, align 1, !tbaa !2446
  store i8 0, i8* %45, align 1, !tbaa !2447
  store i8 0, i8* %48, align 1, !tbaa !2448
  %2611 = lshr i64 %2600, 62
  %2612 = and i64 %2611, 1
  %2613 = trunc i64 %2612 to i8
  store i8 %2613, i8* %51, align 1, !tbaa !2449
  %2614 = xor i64 %2612, %2603
  %2615 = add nuw nsw i64 %2614, %2612
  %2616 = icmp eq i64 %2615, 2
  %2617 = zext i1 %2616 to i8
  store i8 %2617, i8* %57, align 1, !tbaa !2450
  %2618 = add i64 %2760, 16
  store i64 %2618, i64* %PC, align 8
  store i64 %2604, i64* %2599, align 8
  %2619 = load i64, i64* %RBP, align 8
  %2620 = add i64 %2619, -104
  %2621 = load i64, i64* %PC, align 8
  %2622 = add i64 %2621, 4
  store i64 %2622, i64* %PC, align 8
  %2623 = inttoptr i64 %2620 to i64*
  %2624 = load i64, i64* %2623, align 8
  store i64 %2624, i64* %RAX, align 8, !tbaa !2428
  %2625 = add i64 %2621, 7
  store i64 %2625, i64* %PC, align 8
  %2626 = inttoptr i64 %2624 to i8*
  %2627 = load i8, i8* %2626, align 1
  %2628 = zext i8 %2627 to i64
  store i64 %2628, i64* %RCX, align 8, !tbaa !2428
  %2629 = zext i8 %2627 to i64
  store i64 %2629, i64* %RAX, align 8, !tbaa !2428
  %2630 = add i64 %2619, -72
  %2631 = add i64 %2621, 13
  store i64 %2631, i64* %PC, align 8
  %2632 = inttoptr i64 %2630 to i64*
  %2633 = load i64, i64* %2632, align 8
  %2634 = and i64 %2633, %2629
  store i64 %2634, i64* %RAX, align 8, !tbaa !2428
  %2635 = trunc i64 %2634 to i32
  %2636 = tail call i32 @llvm.ctpop.i32(i32 %2635) #8
  %2637 = trunc i32 %2636 to i8
  %2638 = and i8 %2637, 1
  %2639 = xor i8 %2638, 1
  %2640 = icmp eq i64 %2634, 0
  %2641 = zext i1 %2640 to i8
  store i8 0, i8* %32, align 1, !tbaa !2432
  store i8 %2639, i8* %39, align 1, !tbaa !2446
  store i8 0, i8* %45, align 1, !tbaa !2447
  store i8 %2641, i8* %48, align 1, !tbaa !2448
  store i8 0, i8* %51, align 1, !tbaa !2449
  store i8 0, i8* %57, align 1, !tbaa !2450
  %.v74 = select i1 %2640, i64 35, i64 23
  %2642 = add i64 %2621, %.v74
  store i64 %2642, i64* %113, align 8, !tbaa !2428
  br i1 %2640, label %block_40129b, label %block_40128f

block_400a61:                                     ; preds = %block_400a32, %block_400a45
  %2643 = phi i64 [ %3135, %block_400a32 ], [ %.pre14, %block_400a45 ]
  %2644 = phi i64 [ %2967, %block_400a32 ], [ %.pre13, %block_400a45 ]
  %2645 = add i64 %2643, -48
  %2646 = add i64 %2644, 9
  store i64 %2646, i64* %PC, align 8
  %2647 = inttoptr i64 %2645 to i64*
  %2648 = load i64, i64* %2647, align 8
  %2649 = add i64 %2648, 1
  store i64 %2649, i64* %RAX, align 8, !tbaa !2428
  %2650 = icmp eq i64 %2648, -1
  %2651 = icmp eq i64 %2649, 0
  %2652 = or i1 %2650, %2651
  %2653 = zext i1 %2652 to i8
  store i8 %2653, i8* %32, align 1, !tbaa !2432
  %2654 = trunc i64 %2649 to i32
  %2655 = and i32 %2654, 255
  %2656 = tail call i32 @llvm.ctpop.i32(i32 %2655) #8
  %2657 = trunc i32 %2656 to i8
  %2658 = and i8 %2657, 1
  %2659 = xor i8 %2658, 1
  store i8 %2659, i8* %39, align 1, !tbaa !2446
  %2660 = xor i64 %2648, %2649
  %2661 = lshr i64 %2660, 4
  %2662 = trunc i64 %2661 to i8
  %2663 = and i8 %2662, 1
  store i8 %2663, i8* %45, align 1, !tbaa !2447
  %2664 = icmp eq i64 %2649, 0
  %2665 = zext i1 %2664 to i8
  store i8 %2665, i8* %48, align 1, !tbaa !2448
  %2666 = lshr i64 %2649, 63
  %2667 = trunc i64 %2666 to i8
  store i8 %2667, i8* %51, align 1, !tbaa !2449
  %2668 = lshr i64 %2648, 63
  %2669 = xor i64 %2666, %2668
  %2670 = add nuw nsw i64 %2669, %2666
  %2671 = icmp eq i64 %2670, 2
  %2672 = zext i1 %2671 to i8
  store i8 %2672, i8* %57, align 1, !tbaa !2450
  %2673 = add i64 %2644, 17
  store i64 %2673, i64* %PC, align 8
  store i64 %2649, i64* %2647, align 8
  %2674 = load i64, i64* %PC, align 8
  %2675 = add i64 %2674, -78
  store i64 %2675, i64* %113, align 8, !tbaa !2428
  br label %block_400a24

block_400e5b:                                     ; preds = %block_400e3b
  %2676 = add i64 %2904, -10688
  %2677 = add i64 %2948, 7
  store i64 %2677, i64* %PC, align 8
  %2678 = inttoptr i64 %2676 to i32*
  %2679 = load i32, i32* %2678, align 4
  %2680 = add i32 %2679, -7
  %2681 = icmp ult i32 %2679, 7
  %2682 = zext i1 %2681 to i8
  store i8 %2682, i8* %32, align 1, !tbaa !2432
  %2683 = and i32 %2680, 255
  %2684 = tail call i32 @llvm.ctpop.i32(i32 %2683) #8
  %2685 = trunc i32 %2684 to i8
  %2686 = and i8 %2685, 1
  %2687 = xor i8 %2686, 1
  store i8 %2687, i8* %39, align 1, !tbaa !2446
  %2688 = xor i32 %2679, %2680
  %2689 = lshr i32 %2688, 4
  %2690 = trunc i32 %2689 to i8
  %2691 = and i8 %2690, 1
  store i8 %2691, i8* %45, align 1, !tbaa !2447
  %2692 = icmp eq i32 %2680, 0
  %2693 = zext i1 %2692 to i8
  store i8 %2693, i8* %48, align 1, !tbaa !2448
  %2694 = lshr i32 %2680, 31
  %2695 = trunc i32 %2694 to i8
  store i8 %2695, i8* %51, align 1, !tbaa !2449
  %2696 = lshr i32 %2679, 31
  %2697 = xor i32 %2694, %2696
  %2698 = add nuw nsw i32 %2697, %2696
  %2699 = icmp eq i32 %2698, 2
  %2700 = zext i1 %2699 to i8
  store i8 %2700, i8* %57, align 1, !tbaa !2450
  %.v61 = select i1 %2692, i64 13, i64 131
  %2701 = add i64 %2948, %.v61
  store i64 %2701, i64* %113, align 8, !tbaa !2428
  br i1 %2692, label %block_400e68, label %block_400ede

block_401201:                                     ; preds = %block_401214, %block_4011f9
  %2702 = phi i64 [ %2370, %block_401214 ], [ %.pre38, %block_4011f9 ]
  %2703 = load i64, i64* %RBP, align 8
  %2704 = add i64 %2703, -56
  %2705 = add i64 %2702, 4
  store i64 %2705, i64* %PC, align 8
  %2706 = inttoptr i64 %2704 to i64*
  %2707 = load i64, i64* %2706, align 8
  store i64 %2707, i64* %RAX, align 8, !tbaa !2428
  %2708 = shl i64 %2707, 3
  %2709 = add i64 %2703, -12736
  %2710 = add i64 %2709, %2708
  %2711 = add i64 %2702, 13
  store i64 %2711, i64* %PC, align 8
  %2712 = inttoptr i64 %2710 to i64*
  %2713 = load i64, i64* %2712, align 8
  store i8 0, i8* %32, align 1, !tbaa !2432
  %2714 = trunc i64 %2713 to i32
  %2715 = and i32 %2714, 255
  %2716 = tail call i32 @llvm.ctpop.i32(i32 %2715) #8
  %2717 = trunc i32 %2716 to i8
  %2718 = and i8 %2717, 1
  %2719 = xor i8 %2718, 1
  store i8 %2719, i8* %39, align 1, !tbaa !2446
  store i8 0, i8* %45, align 1, !tbaa !2447
  %2720 = icmp eq i64 %2713, 0
  %2721 = zext i1 %2720 to i8
  store i8 %2721, i8* %48, align 1, !tbaa !2448
  %2722 = lshr i64 %2713, 63
  %2723 = trunc i64 %2722 to i8
  store i8 %2723, i8* %51, align 1, !tbaa !2449
  store i8 0, i8* %57, align 1, !tbaa !2450
  %.v72 = select i1 %2720, i64 19, i64 41
  %2724 = add i64 %2702, %.v72
  store i64 %2724, i64* %113, align 8, !tbaa !2428
  br i1 %2720, label %block_401214, label %block_40122a

block_40125a:                                     ; preds = %block_401346, %block_40122a
  %2725 = phi i64 [ %.pre39, %block_40122a ], [ %3216, %block_401346 ]
  %2726 = load i64, i64* %RBP, align 8
  %2727 = add i64 %2726, -64
  %2728 = add i64 %2725, 4
  store i64 %2728, i64* %PC, align 8
  %2729 = inttoptr i64 %2727 to i64*
  %2730 = load i64, i64* %2729, align 8
  store i64 %2730, i64* %RAX, align 8, !tbaa !2428
  %2731 = add i64 %2726, -40
  %2732 = add i64 %2725, 8
  store i64 %2732, i64* %PC, align 8
  %2733 = inttoptr i64 %2731 to i64*
  %2734 = load i64, i64* %2733, align 8
  %2735 = sub i64 %2730, %2734
  %2736 = icmp ult i64 %2730, %2734
  %2737 = zext i1 %2736 to i8
  store i8 %2737, i8* %32, align 1, !tbaa !2432
  %2738 = trunc i64 %2735 to i32
  %2739 = and i32 %2738, 255
  %2740 = tail call i32 @llvm.ctpop.i32(i32 %2739) #8
  %2741 = trunc i32 %2740 to i8
  %2742 = and i8 %2741, 1
  %2743 = xor i8 %2742, 1
  store i8 %2743, i8* %39, align 1, !tbaa !2446
  %2744 = xor i64 %2734, %2730
  %2745 = xor i64 %2744, %2735
  %2746 = lshr i64 %2745, 4
  %2747 = trunc i64 %2746 to i8
  %2748 = and i8 %2747, 1
  store i8 %2748, i8* %45, align 1, !tbaa !2447
  %2749 = icmp eq i64 %2735, 0
  %2750 = zext i1 %2749 to i8
  store i8 %2750, i8* %48, align 1, !tbaa !2448
  %2751 = lshr i64 %2735, 63
  %2752 = trunc i64 %2751 to i8
  store i8 %2752, i8* %51, align 1, !tbaa !2449
  %2753 = lshr i64 %2730, 63
  %2754 = lshr i64 %2734, 63
  %2755 = xor i64 %2754, %2753
  %2756 = xor i64 %2751, %2753
  %2757 = add nuw nsw i64 %2756, %2755
  %2758 = icmp eq i64 %2757, 2
  %2759 = zext i1 %2758 to i8
  store i8 %2759, i8* %57, align 1, !tbaa !2450
  %.v73 = select i1 %2736, i64 14, i64 241
  %2760 = add i64 %2725, %.v73
  store i64 %2760, i64* %113, align 8, !tbaa !2428
  br i1 %2736, label %block_401268, label %block_40134b

block_400a45:                                     ; preds = %block_400a32
  %2761 = add i64 %2967, 4
  store i64 %2761, i64* %PC, align 8
  %2762 = load i64, i64* %3138, align 8
  store i64 %2762, i64* %RAX, align 8, !tbaa !2428
  %2763 = add i64 %3135, -64
  %2764 = add i64 %2967, 8
  store i64 %2764, i64* %PC, align 8
  %2765 = inttoptr i64 %2763 to i64*
  %2766 = load i64, i64* %2765, align 8
  store i64 %2766, i64* %RCX, align 8, !tbaa !2428
  %2767 = shl i64 %2766, 3
  %2768 = add i64 %3135, -6272
  %2769 = add i64 %2768, %2767
  %2770 = add i64 %2967, 16
  store i64 %2770, i64* %PC, align 8
  %2771 = inttoptr i64 %2769 to i64*
  store i64 %2762, i64* %2771, align 8
  %2772 = load i64, i64* %RBP, align 8
  %2773 = add i64 %2772, -64
  %2774 = load i64, i64* %PC, align 8
  %2775 = add i64 %2774, 4
  store i64 %2775, i64* %PC, align 8
  %2776 = inttoptr i64 %2773 to i64*
  %2777 = load i64, i64* %2776, align 8
  %2778 = add i64 %2777, 1
  store i64 %2778, i64* %RAX, align 8, !tbaa !2428
  %2779 = icmp eq i64 %2777, -1
  %2780 = icmp eq i64 %2778, 0
  %2781 = or i1 %2779, %2780
  %2782 = zext i1 %2781 to i8
  store i8 %2782, i8* %32, align 1, !tbaa !2432
  %2783 = trunc i64 %2778 to i32
  %2784 = and i32 %2783, 255
  %2785 = tail call i32 @llvm.ctpop.i32(i32 %2784) #8
  %2786 = trunc i32 %2785 to i8
  %2787 = and i8 %2786, 1
  %2788 = xor i8 %2787, 1
  store i8 %2788, i8* %39, align 1, !tbaa !2446
  %2789 = xor i64 %2777, %2778
  %2790 = lshr i64 %2789, 4
  %2791 = trunc i64 %2790 to i8
  %2792 = and i8 %2791, 1
  store i8 %2792, i8* %45, align 1, !tbaa !2447
  %2793 = icmp eq i64 %2778, 0
  %2794 = zext i1 %2793 to i8
  store i8 %2794, i8* %48, align 1, !tbaa !2448
  %2795 = lshr i64 %2778, 63
  %2796 = trunc i64 %2795 to i8
  store i8 %2796, i8* %51, align 1, !tbaa !2449
  %2797 = lshr i64 %2777, 63
  %2798 = xor i64 %2795, %2797
  %2799 = add nuw nsw i64 %2798, %2795
  %2800 = icmp eq i64 %2799, 2
  %2801 = zext i1 %2800 to i8
  store i8 %2801, i8* %57, align 1, !tbaa !2450
  %2802 = add i64 %2774, 12
  store i64 %2802, i64* %PC, align 8
  store i64 %2778, i64* %2776, align 8
  %.pre13 = load i64, i64* %PC, align 8
  %.pre14 = load i64, i64* %RBP, align 8
  br label %block_400a61

block_400dd0:                                     ; preds = %block_400d9e
  store i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 63), i64* %RSI, align 8, !tbaa !2428
  %2803 = load i64, i64* @stderr, align 32
  store i64 %2803, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %2804 = add i64 %3046, -2016
  %2805 = add i64 %3046, 25
  %2806 = load i64, i64* %9, align 8, !tbaa !2428
  %2807 = add i64 %2806, -8
  %2808 = inttoptr i64 %2807 to i64*
  store i64 %2805, i64* %2808, align 8
  store i64 %2807, i64* %9, align 8, !tbaa !2428
  store i64 %2804, i64* %113, align 8, !tbaa !2428
  %2809 = tail call fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.11)
  %2810 = load i64, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %2811 = load i64, i64* %RBP, align 8
  %2812 = add i64 %2811, -13084
  %2813 = load i32, i32* %EAX, align 4
  %2814 = add i64 %2810, 11
  store i64 %2814, i64* %PC, align 8
  %2815 = inttoptr i64 %2812 to i32*
  store i32 %2813, i32* %2815, align 4
  %2816 = load i64, i64* %PC, align 8
  %2817 = add i64 %2816, -2004
  %2818 = add i64 %2816, 5
  %2819 = load i64, i64* %9, align 8, !tbaa !2428
  %2820 = add i64 %2819, -8
  %2821 = inttoptr i64 %2820 to i64*
  store i64 %2818, i64* %2821, align 8
  store i64 %2820, i64* %9, align 8, !tbaa !2428
  store i64 %2817, i64* %113, align 8, !tbaa !2428
  %2822 = tail call fastcc %struct.Memory* @ext_400620_exit(%struct.State* nonnull %0, %struct.Memory* %2809)
  %2823 = load i64, i64* %PC, align 8
  %2824 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %2823, %struct.Memory* %2822)
  ret %struct.Memory* %2824

block_40103f:                                     ; preds = %block_400ff7
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %2825 = add i64 %1273, -80
  %2826 = add i64 %1305, 13
  store i64 %2826, i64* %PC, align 8
  %2827 = inttoptr i64 %2825 to i64*
  store i64 0, i64* %2827, align 8
  %2828 = load i64, i64* %RBP, align 8
  %2829 = add i64 %2828, -56
  %2830 = load i64, i64* %PC, align 8
  %2831 = add i64 %2830, 4
  store i64 %2831, i64* %PC, align 8
  %2832 = inttoptr i64 %2829 to i64*
  %2833 = load i64, i64* %2832, align 8
  store i64 %2833, i64* %RCX, align 8, !tbaa !2428
  %2834 = add i64 %2828, -10624
  %2835 = add i64 %2834, %2833
  %2836 = add i64 %2830, 12
  store i64 %2836, i64* %PC, align 8
  %2837 = inttoptr i64 %2835 to i8*
  %2838 = load i8, i8* %2837, align 1
  %2839 = zext i8 %2838 to i32
  %2840 = add nsw i32 %2839, -1
  %2841 = zext i32 %2840 to i64
  store i64 %2841, i64* %RDX, align 8, !tbaa !2428
  %2842 = icmp eq i8 %2838, 0
  %2843 = zext i1 %2842 to i8
  store i8 %2843, i8* %32, align 1, !tbaa !2432
  %2844 = and i32 %2840, 255
  %2845 = tail call i32 @llvm.ctpop.i32(i32 %2844) #8
  %2846 = trunc i32 %2845 to i8
  %2847 = and i8 %2846, 1
  %2848 = xor i8 %2847, 1
  store i8 %2848, i8* %39, align 1, !tbaa !2446
  %2849 = zext i8 %2838 to i32
  %2850 = xor i32 %2849, %2840
  %2851 = lshr i32 %2850, 4
  %2852 = trunc i32 %2851 to i8
  %2853 = and i8 %2852, 1
  store i8 %2853, i8* %45, align 1, !tbaa !2447
  %2854 = icmp eq i32 %2840, 0
  %2855 = zext i1 %2854 to i8
  store i8 %2855, i8* %48, align 1, !tbaa !2448
  %2856 = lshr i32 %2840, 31
  %2857 = trunc i32 %2856 to i8
  store i8 %2857, i8* %51, align 1, !tbaa !2449
  store i8 0, i8* %57, align 1, !tbaa !2450
  store i64 %2841, i64* %RCX, align 8, !tbaa !2428
  %2858 = load i64, i64* %RAX, align 8
  %2859 = add i64 %2830, 19
  store i64 %2859, i64* %PC, align 8
  %2860 = trunc i32 %2840 to i5
  %2861 = trunc i64 %2858 to i32
  switch i5 %2860, label %2867 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1
    i5 1, label %2862
  ]

; <label>:2862:                                   ; preds = %block_40103f
  %2863 = shl i32 %2861, 1
  %2864 = icmp slt i32 %2861, 0
  %2865 = icmp slt i32 %2863, 0
  %2866 = xor i1 %2864, %2865
  br label %2877

; <label>:2867:                                   ; preds = %block_40103f
  %2868 = and i32 %2840, 31
  %2869 = zext i32 %2868 to i64
  %2870 = add nuw nsw i64 %2869, 4294967295
  %2871 = and i64 %2858, 4294967295
  %2872 = and i64 %2870, 4294967295
  %2873 = shl i64 %2871, %2872
  %2874 = trunc i64 %2873 to i32
  %2875 = icmp slt i32 %2874, 0
  %2876 = shl i32 %2874, 1
  br label %2877

; <label>:2877:                                   ; preds = %2867, %2862
  %2878 = phi i1 [ %2864, %2862 ], [ %2875, %2867 ]
  %2879 = phi i1 [ %2866, %2862 ], [ false, %2867 ]
  %2880 = phi i32 [ %2863, %2862 ], [ %2876, %2867 ]
  %2881 = zext i32 %2880 to i64
  store i64 %2881, i64* %RAX, align 8, !tbaa !2428
  %2882 = zext i1 %2878 to i8
  store i8 %2882, i8* %32, align 1, !tbaa !2453
  %2883 = and i32 %2880, 254
  %2884 = tail call i32 @llvm.ctpop.i32(i32 %2883) #8
  %2885 = trunc i32 %2884 to i8
  %2886 = and i8 %2885, 1
  %2887 = xor i8 %2886, 1
  store i8 %2887, i8* %39, align 1, !tbaa !2453
  store i8 0, i8* %45, align 1, !tbaa !2453
  %2888 = icmp eq i32 %2880, 0
  %2889 = zext i1 %2888 to i8
  store i8 %2889, i8* %48, align 1, !tbaa !2453
  %2890 = lshr i32 %2880, 31
  %2891 = trunc i32 %2890 to i8
  store i8 %2891, i8* %51, align 1, !tbaa !2453
  %2892 = zext i1 %2879 to i8
  store i8 %2892, i8* %57, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1: ; preds = %2877, %block_40103f
  %2893 = phi i32 [ %2880, %2877 ], [ %2861, %block_40103f ]
  %2894 = sext i32 %2893 to i64
  store i64 %2894, i64* %RSI, align 8, !tbaa !2428
  %2895 = add i64 %2828, -72
  %2896 = add i64 %2830, 26
  store i64 %2896, i64* %PC, align 8
  %2897 = inttoptr i64 %2895 to i64*
  store i64 %2894, i64* %2897, align 8
  %2898 = load i64, i64* %RBP, align 8
  %2899 = add i64 %2898, -48
  %2900 = load i64, i64* %PC, align 8
  %2901 = add i64 %2900, 8
  store i64 %2901, i64* %PC, align 8
  %2902 = inttoptr i64 %2899 to i64*
  store i64 0, i64* %2902, align 8
  %.pre30 = load i64, i64* %PC, align 8
  br label %block_40106e

block_400e3b:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit, %block_400f30
  %2903 = phi i64 [ %.pre25, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit ], [ %1105, %block_400f30 ]
  %2904 = load i64, i64* %RBP, align 8
  %2905 = add i64 %2904, -48
  %2906 = add i64 %2903, 4
  store i64 %2906, i64* %PC, align 8
  %2907 = inttoptr i64 %2905 to i64*
  %2908 = load i64, i64* %2907, align 8
  store i64 %2908, i64* %RAX, align 8, !tbaa !2428
  %2909 = add i64 %2904, -112
  %2910 = add i64 %2903, 8
  store i64 %2910, i64* %PC, align 8
  %2911 = inttoptr i64 %2909 to i64*
  %2912 = load i64, i64* %2911, align 8
  store i64 %2912, i64* %RCX, align 8, !tbaa !2428
  %2913 = add i64 %2903, 11
  store i64 %2913, i64* %PC, align 8
  %2914 = inttoptr i64 %2912 to i8*
  %2915 = load i8, i8* %2914, align 1
  %2916 = zext i8 %2915 to i64
  store i64 %2916, i64* %RDX, align 8, !tbaa !2428
  %2917 = zext i8 %2915 to i64
  store i64 %2917, i64* %RCX, align 8, !tbaa !2428
  %2918 = add i64 %2904, -10624
  %2919 = add i64 %2918, %2917
  %2920 = add i64 %2903, 21
  store i64 %2920, i64* %PC, align 8
  %2921 = inttoptr i64 %2919 to i8*
  %2922 = load i8, i8* %2921, align 1
  %2923 = zext i8 %2922 to i64
  store i64 %2923, i64* %RDX, align 8, !tbaa !2428
  %2924 = zext i8 %2922 to i64
  store i64 %2924, i64* %RCX, align 8, !tbaa !2428
  %2925 = sub i64 %2908, %2924
  %2926 = icmp ult i64 %2908, %2924
  %2927 = zext i1 %2926 to i8
  store i8 %2927, i8* %32, align 1, !tbaa !2432
  %2928 = trunc i64 %2925 to i32
  %2929 = and i32 %2928, 255
  %2930 = tail call i32 @llvm.ctpop.i32(i32 %2929) #8
  %2931 = trunc i32 %2930 to i8
  %2932 = and i8 %2931, 1
  %2933 = xor i8 %2932, 1
  store i8 %2933, i8* %39, align 1, !tbaa !2446
  %2934 = xor i64 %2924, %2908
  %2935 = xor i64 %2934, %2925
  %2936 = lshr i64 %2935, 4
  %2937 = trunc i64 %2936 to i8
  %2938 = and i8 %2937, 1
  store i8 %2938, i8* %45, align 1, !tbaa !2447
  %2939 = icmp eq i64 %2925, 0
  %2940 = zext i1 %2939 to i8
  store i8 %2940, i8* %48, align 1, !tbaa !2448
  %2941 = lshr i64 %2925, 63
  %2942 = trunc i64 %2941 to i8
  store i8 %2942, i8* %51, align 1, !tbaa !2449
  %2943 = lshr i64 %2908, 63
  %2944 = xor i64 %2941, %2943
  %2945 = add nuw nsw i64 %2944, %2943
  %2946 = icmp eq i64 %2945, 2
  %2947 = zext i1 %2946 to i8
  store i8 %2947, i8* %57, align 1, !tbaa !2450
  %.v60 = select i1 %2926, i64 32, i64 274
  %2948 = add i64 %2903, %.v60
  store i64 %2948, i64* %113, align 8, !tbaa !2428
  br i1 %2926, label %block_400e5b, label %block_400f4d

block_400a32:                                     ; preds = %block_400a24
  %2949 = add i64 %3162, 4
  store i64 %2949, i64* %PC, align 8
  %2950 = load i64, i64* %3138, align 8
  store i64 %2950, i64* %RAX, align 8, !tbaa !2428
  %2951 = shl i64 %2950, 3
  %2952 = add i64 %3135, -4224
  %2953 = add i64 %2952, %2951
  %2954 = add i64 %3162, 13
  store i64 %2954, i64* %PC, align 8
  %2955 = inttoptr i64 %2953 to i64*
  %2956 = load i64, i64* %2955, align 8
  store i8 0, i8* %32, align 1, !tbaa !2432
  %2957 = trunc i64 %2956 to i32
  %2958 = and i32 %2957, 255
  %2959 = tail call i32 @llvm.ctpop.i32(i32 %2958) #8
  %2960 = trunc i32 %2959 to i8
  %2961 = and i8 %2960, 1
  %2962 = xor i8 %2961, 1
  store i8 %2962, i8* %39, align 1, !tbaa !2446
  store i8 0, i8* %45, align 1, !tbaa !2447
  %2963 = icmp eq i64 %2956, 0
  %2964 = zext i1 %2963 to i8
  store i8 %2964, i8* %48, align 1, !tbaa !2448
  %2965 = lshr i64 %2956, 63
  %2966 = trunc i64 %2965 to i8
  store i8 %2966, i8* %51, align 1, !tbaa !2449
  store i8 0, i8* %57, align 1, !tbaa !2450
  %.v48 = select i1 %2963, i64 47, i64 19
  %2967 = add i64 %3162, %.v48
  store i64 %2967, i64* %113, align 8, !tbaa !2428
  br i1 %2963, label %block_400a61, label %block_400a45

block_40122a:                                     ; preds = %block_401201
  %2968 = add i64 %2703, -80
  %2969 = add i64 %2724, 8
  store i64 %2969, i64* %PC, align 8
  %2970 = inttoptr i64 %2968 to i64*
  store i64 0, i64* %2970, align 8
  %2971 = load i64, i64* %RBP, align 8
  %2972 = add i64 %2971, -56
  %2973 = load i64, i64* %PC, align 8
  %2974 = add i64 %2973, 4
  store i64 %2974, i64* %PC, align 8
  %2975 = inttoptr i64 %2972 to i64*
  %2976 = load i64, i64* %2975, align 8
  store i64 %2976, i64* %RAX, align 8, !tbaa !2428
  %2977 = add i64 %2971, -48
  %2978 = add i64 %2973, 8
  store i64 %2978, i64* %PC, align 8
  %2979 = inttoptr i64 %2977 to i64*
  store i64 %2976, i64* %2979, align 8
  %2980 = load i64, i64* %RBP, align 8
  %2981 = add i64 %2980, -72
  %2982 = load i64, i64* %PC, align 8
  %2983 = add i64 %2982, 8
  store i64 %2983, i64* %PC, align 8
  %2984 = inttoptr i64 %2981 to i64*
  store i64 128, i64* %2984, align 8
  %2985 = load i64, i64* %RBP, align 8
  %2986 = add i64 %2985, -64
  %2987 = load i64, i64* %PC, align 8
  %2988 = add i64 %2987, 8
  store i64 %2988, i64* %PC, align 8
  %2989 = inttoptr i64 %2986 to i64*
  store i64 0, i64* %2989, align 8
  %2990 = load i64, i64* %RBP, align 8
  %2991 = add i64 %2990, -120
  %2992 = load i64, i64* %PC, align 8
  %2993 = add i64 %2992, 4
  store i64 %2993, i64* %PC, align 8
  %2994 = inttoptr i64 %2991 to i64*
  %2995 = load i64, i64* %2994, align 8
  store i64 %2995, i64* %RAX, align 8, !tbaa !2428
  %2996 = add i64 %2990, -104
  %2997 = add i64 %2992, 8
  store i64 %2997, i64* %PC, align 8
  %2998 = inttoptr i64 %2996 to i64*
  store i64 %2995, i64* %2998, align 8
  %2999 = load i64, i64* %RBP, align 8
  %3000 = add i64 %2999, -32
  %3001 = load i64, i64* %PC, align 8
  %3002 = add i64 %3001, 4
  store i64 %3002, i64* %PC, align 8
  %3003 = inttoptr i64 %3000 to i64*
  %3004 = load i64, i64* %3003, align 8
  store i64 %3004, i64* %RAX, align 8, !tbaa !2428
  %3005 = add i64 %2999, -112
  %3006 = add i64 %3001, 8
  store i64 %3006, i64* %PC, align 8
  %3007 = inttoptr i64 %3005 to i64*
  store i64 %3004, i64* %3007, align 8
  %.pre39 = load i64, i64* %PC, align 8
  br label %block_40125a

block_400d9e:                                     ; preds = %block_400d67
  %3008 = add i64 %335, -10680
  %3009 = add i64 %804, 11
  store i64 %3009, i64* %PC, align 8
  %3010 = inttoptr i64 %3008 to i64*
  store i64 0, i64* %3010, align 8
  %3011 = load i64, i64* %RBP, align 8
  %3012 = add i64 %3011, -10681
  %3013 = load i64, i64* %PC, align 8
  %3014 = add i64 %3013, 7
  store i64 %3014, i64* %PC, align 8
  %3015 = inttoptr i64 %3012 to i8*
  store i8 0, i8* %3015, align 1
  %3016 = load i64, i64* %RBP, align 8
  %3017 = add i64 %3016, -10688
  %3018 = load i64, i64* %PC, align 8
  %3019 = add i64 %3018, 10
  store i64 %3019, i64* %PC, align 8
  %3020 = inttoptr i64 %3017 to i32*
  store i32 -1, i32* %3020, align 4
  %3021 = load i64, i64* %RBP, align 8
  %3022 = add i64 %3021, -32
  %3023 = load i64, i64* %PC, align 8
  %3024 = add i64 %3023, 4
  store i64 %3024, i64* %PC, align 8
  %3025 = inttoptr i64 %3022 to i64*
  %3026 = load i64, i64* %3025, align 8
  store i64 %3026, i64* %RAX, align 8, !tbaa !2428
  %3027 = add i64 %3021, -112
  %3028 = add i64 %3023, 8
  store i64 %3028, i64* %PC, align 8
  %3029 = inttoptr i64 %3027 to i64*
  store i64 %3026, i64* %3029, align 8
  %3030 = load i64, i64* %RBP, align 8
  %3031 = add i64 %3030, -10656
  %3032 = load i64, i64* %PC, align 8
  %3033 = add i64 %3032, 8
  store i64 %3033, i64* %PC, align 8
  %3034 = inttoptr i64 %3031 to i64*
  %3035 = load i64, i64* %3034, align 8
  store i8 0, i8* %32, align 1, !tbaa !2432
  %3036 = trunc i64 %3035 to i32
  %3037 = and i32 %3036, 255
  %3038 = tail call i32 @llvm.ctpop.i32(i32 %3037) #8
  %3039 = trunc i32 %3038 to i8
  %3040 = and i8 %3039, 1
  %3041 = xor i8 %3040, 1
  store i8 %3041, i8* %39, align 1, !tbaa !2446
  store i8 0, i8* %45, align 1, !tbaa !2447
  %3042 = icmp eq i64 %3035, 0
  %3043 = zext i1 %3042 to i8
  store i8 %3043, i8* %48, align 1, !tbaa !2448
  %3044 = lshr i64 %3035, 63
  %3045 = trunc i64 %3044 to i8
  store i8 %3045, i8* %51, align 1, !tbaa !2449
  store i8 0, i8* %57, align 1, !tbaa !2450
  %.v58 = select i1 %3042, i64 14, i64 55
  %3046 = add i64 %3032, %.v58
  store i64 %3046, i64* %113, align 8, !tbaa !2428
  br i1 %3042, label %block_400dd0, label %block_400df9

block_401118:                                     ; preds = %block_40110a
  %3047 = add i64 %1611, 4
  store i64 %3047, i64* %PC, align 8
  %3048 = load i64, i64* %1587, align 8
  store i64 %3048, i64* %RAX, align 8, !tbaa !2428
  %3049 = shl i64 %3048, 3
  %3050 = add i64 %1584, -12736
  %3051 = add i64 %3050, %3049
  %3052 = add i64 %1611, 12
  store i64 %3052, i64* %PC, align 8
  %3053 = inttoptr i64 %3051 to i64*
  %3054 = load i64, i64* %3053, align 8
  store i64 %3054, i64* %RAX, align 8, !tbaa !2428
  %3055 = add i64 %1584, -88
  %3056 = add i64 %1611, 16
  store i64 %3056, i64* %PC, align 8
  %3057 = inttoptr i64 %3055 to i64*
  store i64 %3054, i64* %3057, align 8
  %3058 = load i64, i64* %RBP, align 8
  %3059 = add i64 %3058, -48
  %3060 = load i64, i64* %PC, align 8
  %3061 = add i64 %3060, 4
  store i64 %3061, i64* %PC, align 8
  %3062 = inttoptr i64 %3059 to i64*
  %3063 = load i64, i64* %3062, align 8
  store i64 %3063, i64* %RAX, align 8, !tbaa !2428
  %3064 = add i64 %3058, -12992
  %3065 = add i64 %3064, %3063
  %3066 = add i64 %3060, 11
  store i64 %3066, i64* %PC, align 8
  %3067 = inttoptr i64 %3065 to i8*
  %3068 = load i8, i8* %3067, align 1
  store i8 %3068, i8* %CL, align 1, !tbaa !2453
  %3069 = add i64 %3058, -89
  %3070 = add i64 %3060, 14
  store i64 %3070, i64* %PC, align 8
  %3071 = inttoptr i64 %3069 to i8*
  store i8 %3068, i8* %3071, align 1
  %3072 = load i64, i64* %RBP, align 8
  %3073 = add i64 %3072, -48
  %3074 = load i64, i64* %PC, align 8
  %3075 = add i64 %3074, 4
  store i64 %3075, i64* %PC, align 8
  %3076 = inttoptr i64 %3073 to i64*
  %3077 = load i64, i64* %3076, align 8
  store i64 %3077, i64* %RAX, align 8, !tbaa !2428
  %3078 = add i64 %3072, -56
  %3079 = add i64 %3074, 8
  store i64 %3079, i64* %PC, align 8
  %3080 = inttoptr i64 %3078 to i64*
  store i64 %3077, i64* %3080, align 8
  %.pre36 = load i64, i64* %PC, align 8
  br label %block_40113e

block_4010bf:                                     ; preds = %block_401089, %block_4010b3
  %3081 = phi i64 [ %2033, %block_401089 ], [ %.pre32, %block_4010b3 ]
  %3082 = phi i64 [ %2006, %block_401089 ], [ %.pre31, %block_4010b3 ]
  %3083 = add i64 %3082, -72
  %3084 = add i64 %3081, 4
  store i64 %3084, i64* %PC, align 8
  %3085 = inttoptr i64 %3083 to i64*
  %3086 = load i64, i64* %3085, align 8
  %3087 = lshr i64 %3086, 63
  %3088 = trunc i64 %3087 to i8
  %3089 = trunc i64 %3086 to i8
  %3090 = and i8 %3089, 1
  %3091 = lshr i64 %3086, 1
  store i64 %3091, i64* %RAX, align 8, !tbaa !2428
  store i8 %3090, i8* %32, align 1, !tbaa !2453
  %3092 = trunc i64 %3091 to i32
  %3093 = and i32 %3092, 255
  %3094 = tail call i32 @llvm.ctpop.i32(i32 %3093) #8
  %3095 = trunc i32 %3094 to i8
  %3096 = and i8 %3095, 1
  %3097 = xor i8 %3096, 1
  store i8 %3097, i8* %39, align 1, !tbaa !2453
  store i8 0, i8* %45, align 1, !tbaa !2453
  %3098 = icmp eq i64 %3091, 0
  %3099 = zext i1 %3098 to i8
  store i8 %3099, i8* %48, align 1, !tbaa !2453
  store i8 0, i8* %51, align 1, !tbaa !2453
  store i8 %3088, i8* %57, align 1, !tbaa !2453
  %3100 = add i64 %3081, 12
  store i64 %3100, i64* %PC, align 8
  store i64 %3091, i64* %3085, align 8
  %3101 = load i64, i64* %RBP, align 8
  %3102 = add i64 %3101, -48
  %3103 = load i64, i64* %PC, align 8
  %3104 = add i64 %3103, 4
  store i64 %3104, i64* %PC, align 8
  %3105 = inttoptr i64 %3102 to i64*
  %3106 = load i64, i64* %3105, align 8
  %3107 = add i64 %3106, 1
  store i64 %3107, i64* %RAX, align 8, !tbaa !2428
  %3108 = icmp eq i64 %3106, -1
  %3109 = icmp eq i64 %3107, 0
  %3110 = or i1 %3108, %3109
  %3111 = zext i1 %3110 to i8
  store i8 %3111, i8* %32, align 1, !tbaa !2432
  %3112 = trunc i64 %3107 to i32
  %3113 = and i32 %3112, 255
  %3114 = tail call i32 @llvm.ctpop.i32(i32 %3113) #8
  %3115 = trunc i32 %3114 to i8
  %3116 = and i8 %3115, 1
  %3117 = xor i8 %3116, 1
  store i8 %3117, i8* %39, align 1, !tbaa !2446
  %3118 = xor i64 %3106, %3107
  %3119 = lshr i64 %3118, 4
  %3120 = trunc i64 %3119 to i8
  %3121 = and i8 %3120, 1
  store i8 %3121, i8* %45, align 1, !tbaa !2447
  %3122 = icmp eq i64 %3107, 0
  %3123 = zext i1 %3122 to i8
  store i8 %3123, i8* %48, align 1, !tbaa !2448
  %3124 = lshr i64 %3107, 63
  %3125 = trunc i64 %3124 to i8
  store i8 %3125, i8* %51, align 1, !tbaa !2449
  %3126 = lshr i64 %3106, 63
  %3127 = xor i64 %3124, %3126
  %3128 = add nuw nsw i64 %3127, %3124
  %3129 = icmp eq i64 %3128, 2
  %3130 = zext i1 %3129 to i8
  store i8 %3130, i8* %57, align 1, !tbaa !2450
  %3131 = add i64 %3103, 12
  store i64 %3131, i64* %PC, align 8
  store i64 %3107, i64* %3105, align 8
  %3132 = load i64, i64* %PC, align 8
  %3133 = add i64 %3132, -105
  store i64 %3133, i64* %113, align 8, !tbaa !2428
  br label %block_40106e

block_400a24:                                     ; preds = %block_400a14, %block_400a61
  %3134 = phi i64 [ %.pre12, %block_400a14 ], [ %2675, %block_400a61 ]
  %3135 = load i64, i64* %RBP, align 8
  %3136 = add i64 %3135, -48
  %3137 = add i64 %3134, 8
  store i64 %3137, i64* %PC, align 8
  %3138 = inttoptr i64 %3136 to i64*
  %3139 = load i64, i64* %3138, align 8
  %3140 = add i64 %3139, -256
  %3141 = icmp ult i64 %3139, 256
  %3142 = zext i1 %3141 to i8
  store i8 %3142, i8* %32, align 1, !tbaa !2432
  %3143 = trunc i64 %3140 to i32
  %3144 = and i32 %3143, 255
  %3145 = tail call i32 @llvm.ctpop.i32(i32 %3144) #8
  %3146 = trunc i32 %3145 to i8
  %3147 = and i8 %3146, 1
  %3148 = xor i8 %3147, 1
  store i8 %3148, i8* %39, align 1, !tbaa !2446
  %3149 = xor i64 %3139, %3140
  %3150 = lshr i64 %3149, 4
  %3151 = trunc i64 %3150 to i8
  %3152 = and i8 %3151, 1
  store i8 %3152, i8* %45, align 1, !tbaa !2447
  %3153 = icmp eq i64 %3140, 0
  %3154 = zext i1 %3153 to i8
  store i8 %3154, i8* %48, align 1, !tbaa !2448
  %3155 = lshr i64 %3140, 63
  %3156 = trunc i64 %3155 to i8
  store i8 %3156, i8* %51, align 1, !tbaa !2449
  %3157 = lshr i64 %3139, 63
  %3158 = xor i64 %3155, %3157
  %3159 = add nuw nsw i64 %3158, %3157
  %3160 = icmp eq i64 %3159, 2
  %3161 = zext i1 %3160 to i8
  store i8 %3161, i8* %57, align 1, !tbaa !2450
  %.v47 = select i1 %3141, i64 14, i64 83
  %3162 = add i64 %3134, %.v47
  store i64 %3162, i64* %113, align 8, !tbaa !2428
  br i1 %3141, label %block_400a32, label %block_400a77

block_400c1d:                                     ; preds = %block_400c07
  %3163 = add i64 %3409, 7
  store i64 %3163, i64* %PC, align 8
  %3164 = load i64, i64* %338, align 8
  store i64 %3164, i64* %RAX, align 8, !tbaa !2428
  %3165 = shl i64 %3164, 3
  %3166 = add i64 %335, -10368
  %3167 = add i64 %3166, %3165
  %3168 = add i64 %3409, 19
  store i64 %3168, i64* %PC, align 8
  %3169 = inttoptr i64 %3167 to i64*
  store i64 0, i64* %3169, align 8
  %3170 = load i64, i64* %RBP, align 8
  %3171 = add i64 %3170, -10640
  %3172 = load i64, i64* %PC, align 8
  %3173 = add i64 %3172, 7
  store i64 %3173, i64* %PC, align 8
  %3174 = inttoptr i64 %3171 to i64*
  %3175 = load i64, i64* %3174, align 8
  store i64 %3175, i64* %RAX, align 8, !tbaa !2428
  %3176 = add i64 %3170, -10624
  %3177 = add i64 %3176, %3175
  %3178 = add i64 %3172, 15
  store i64 %3178, i64* %PC, align 8
  %3179 = inttoptr i64 %3177 to i8*
  store i8 0, i8* %3179, align 1
  %3180 = load i64, i64* %PC, align 8
  %3181 = add i64 %3180, 268
  br label %block_400d4b

block_400d3b:                                     ; preds = %block_400d2a
  %3182 = add i64 %1142, 4
  store i64 %3182, i64* %PC, align 8
  %3183 = load i64, i64* %1110, align 8
  store i64 %3183, i64* %RAX, align 8, !tbaa !2428
  %3184 = add i64 %1142, 11
  store i64 %3184, i64* %PC, align 8
  store i64 %3183, i64* %1114, align 8
  %.pre23 = load i64, i64* %PC, align 8
  br label %block_400d46

block_400e9f:                                     ; preds = %block_400e68
  store i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 96), i64* %RSI, align 8, !tbaa !2428
  %3185 = load i64, i64* @stderr, align 32
  store i64 %3185, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %3186 = add i64 %3298, -2223
  %3187 = add i64 %3298, 25
  %3188 = load i64, i64* %9, align 8, !tbaa !2428
  %3189 = add i64 %3188, -8
  %3190 = inttoptr i64 %3189 to i64*
  store i64 %3187, i64* %3190, align 8
  store i64 %3189, i64* %9, align 8, !tbaa !2428
  store i64 %3186, i64* %113, align 8, !tbaa !2428
  %3191 = tail call fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.11)
  %3192 = load i64, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %3193 = load i64, i64* %RBP, align 8
  %3194 = add i64 %3193, -13088
  %3195 = load i32, i32* %EAX, align 4
  %3196 = add i64 %3192, 11
  store i64 %3196, i64* %PC, align 8
  %3197 = inttoptr i64 %3194 to i32*
  store i32 %3195, i32* %3197, align 4
  %3198 = load i64, i64* %PC, align 8
  %3199 = add i64 %3198, -2211
  %3200 = add i64 %3198, 5
  %3201 = load i64, i64* %9, align 8, !tbaa !2428
  %3202 = add i64 %3201, -8
  %3203 = inttoptr i64 %3202 to i64*
  store i64 %3200, i64* %3203, align 8
  store i64 %3202, i64* %9, align 8, !tbaa !2428
  store i64 %3199, i64* %113, align 8, !tbaa !2428
  %3204 = tail call fastcc %struct.Memory* @ext_400620_exit(%struct.State* nonnull %0, %struct.Memory* %3191)
  %3205 = load i64, i64* %PC, align 8
  %3206 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %3205, %struct.Memory* %3204)
  ret %struct.Memory* %3206

block_400a14:                                     ; preds = %block_4009cc
  %3207 = add i64 %907, -64
  %3208 = add i64 %941, 8
  store i64 %3208, i64* %PC, align 8
  %3209 = inttoptr i64 %3207 to i64*
  store i64 0, i64* %3209, align 8
  %3210 = load i64, i64* %RBP, align 8
  %3211 = add i64 %3210, -48
  %3212 = load i64, i64* %PC, align 8
  %3213 = add i64 %3212, 8
  store i64 %3213, i64* %PC, align 8
  %3214 = inttoptr i64 %3211 to i64*
  store i64 0, i64* %3214, align 8
  %.pre12 = load i64, i64* %PC, align 8
  br label %block_400a24

block_401346:                                     ; preds = %block_401321, %block_401332
  %3215 = phi i64 [ %1160, %block_401321 ], [ %.pre43, %block_401332 ]
  %3216 = add i64 %3215, -236
  store i64 %3216, i64* %113, align 8, !tbaa !2428
  br label %block_40125a

block_400e68:                                     ; preds = %block_400e5b
  %3217 = add i64 %2904, -10681
  %3218 = add i64 %2701, 6
  store i64 %3218, i64* %PC, align 8
  %3219 = inttoptr i64 %3217 to i8*
  %3220 = load i8, i8* %3219, align 1
  store i8 %3220, i8* %AL, align 1, !tbaa !2453
  %3221 = add i64 %2904, -120
  %3222 = add i64 %2701, 10
  store i64 %3222, i64* %PC, align 8
  %3223 = inttoptr i64 %3221 to i64*
  %3224 = load i64, i64* %3223, align 8
  store i64 %3224, i64* %RCX, align 8, !tbaa !2428
  %3225 = add i64 %2904, -10680
  %3226 = add i64 %2701, 17
  store i64 %3226, i64* %PC, align 8
  %3227 = inttoptr i64 %3225 to i64*
  %3228 = load i64, i64* %3227, align 8
  store i64 %3228, i64* %RDX, align 8, !tbaa !2428
  %3229 = add i64 %3228, %3224
  %3230 = add i64 %2701, 20
  store i64 %3230, i64* %PC, align 8
  %3231 = inttoptr i64 %3229 to i8*
  store i8 %3220, i8* %3231, align 1
  %3232 = load i64, i64* %RBP, align 8
  %3233 = add i64 %3232, -10680
  %3234 = load i64, i64* %PC, align 8
  %3235 = add i64 %3234, 7
  store i64 %3235, i64* %PC, align 8
  %3236 = inttoptr i64 %3233 to i64*
  %3237 = load i64, i64* %3236, align 8
  %3238 = add i64 %3237, 1
  store i64 %3238, i64* %RCX, align 8, !tbaa !2428
  %3239 = icmp eq i64 %3237, -1
  %3240 = icmp eq i64 %3238, 0
  %3241 = or i1 %3239, %3240
  %3242 = zext i1 %3241 to i8
  store i8 %3242, i8* %32, align 1, !tbaa !2432
  %3243 = trunc i64 %3238 to i32
  %3244 = and i32 %3243, 255
  %3245 = tail call i32 @llvm.ctpop.i32(i32 %3244) #8
  %3246 = trunc i32 %3245 to i8
  %3247 = and i8 %3246, 1
  %3248 = xor i8 %3247, 1
  store i8 %3248, i8* %39, align 1, !tbaa !2446
  %3249 = xor i64 %3237, %3238
  %3250 = lshr i64 %3249, 4
  %3251 = trunc i64 %3250 to i8
  %3252 = and i8 %3251, 1
  store i8 %3252, i8* %45, align 1, !tbaa !2447
  %3253 = icmp eq i64 %3238, 0
  %3254 = zext i1 %3253 to i8
  store i8 %3254, i8* %48, align 1, !tbaa !2448
  %3255 = lshr i64 %3238, 63
  %3256 = trunc i64 %3255 to i8
  store i8 %3256, i8* %51, align 1, !tbaa !2449
  %3257 = lshr i64 %3237, 63
  %3258 = xor i64 %3255, %3257
  %3259 = add nuw nsw i64 %3258, %3255
  %3260 = icmp eq i64 %3259, 2
  %3261 = zext i1 %3260 to i8
  store i8 %3261, i8* %57, align 1, !tbaa !2450
  %3262 = add i64 %3234, 18
  store i64 %3262, i64* %PC, align 8
  store i64 %3238, i64* %3236, align 8
  %3263 = load i64, i64* %RBP, align 8
  %3264 = add i64 %3263, -10680
  %3265 = load i64, i64* %PC, align 8
  %3266 = add i64 %3265, 7
  store i64 %3266, i64* %PC, align 8
  %3267 = inttoptr i64 %3264 to i64*
  %3268 = load i64, i64* %3267, align 8
  store i64 %3268, i64* %RCX, align 8, !tbaa !2428
  %3269 = add i64 %3263, -40
  %3270 = add i64 %3265, 11
  store i64 %3270, i64* %PC, align 8
  %3271 = inttoptr i64 %3269 to i64*
  %3272 = load i64, i64* %3271, align 8
  %3273 = sub i64 %3268, %3272
  %3274 = icmp ult i64 %3268, %3272
  %3275 = zext i1 %3274 to i8
  store i8 %3275, i8* %32, align 1, !tbaa !2432
  %3276 = trunc i64 %3273 to i32
  %3277 = and i32 %3276, 255
  %3278 = tail call i32 @llvm.ctpop.i32(i32 %3277) #8
  %3279 = trunc i32 %3278 to i8
  %3280 = and i8 %3279, 1
  %3281 = xor i8 %3280, 1
  store i8 %3281, i8* %39, align 1, !tbaa !2446
  %3282 = xor i64 %3272, %3268
  %3283 = xor i64 %3282, %3273
  %3284 = lshr i64 %3283, 4
  %3285 = trunc i64 %3284 to i8
  %3286 = and i8 %3285, 1
  store i8 %3286, i8* %45, align 1, !tbaa !2447
  %3287 = icmp eq i64 %3273, 0
  %3288 = zext i1 %3287 to i8
  store i8 %3288, i8* %48, align 1, !tbaa !2448
  %3289 = lshr i64 %3273, 63
  %3290 = trunc i64 %3289 to i8
  store i8 %3290, i8* %51, align 1, !tbaa !2449
  %3291 = lshr i64 %3268, 63
  %3292 = lshr i64 %3272, 63
  %3293 = xor i64 %3292, %3291
  %3294 = xor i64 %3289, %3291
  %3295 = add nuw nsw i64 %3294, %3293
  %3296 = icmp eq i64 %3295, 2
  %3297 = zext i1 %3296 to i8
  store i8 %3297, i8* %57, align 1, !tbaa !2450
  %.v62 = select i1 %3287, i64 17, i64 58
  %3298 = add i64 %3265, %.v62
  store i64 %3298, i64* %113, align 8, !tbaa !2428
  br i1 %3287, label %block_400e9f, label %block_400ec8

block_400e0f:                                     ; preds = %block_400e01
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %3299 = add i64 %3440, -112
  %3300 = add i64 %3474, 9
  store i64 %3300, i64* %PC, align 8
  %3301 = inttoptr i64 %3299 to i64*
  %3302 = load i64, i64* %3301, align 8
  store i64 %3302, i64* %RCX, align 8, !tbaa !2428
  %3303 = add i64 %3474, 12
  store i64 %3303, i64* %PC, align 8
  %3304 = inttoptr i64 %3302 to i8*
  %3305 = load i8, i8* %3304, align 1
  %3306 = zext i8 %3305 to i64
  store i64 %3306, i64* %RDX, align 8, !tbaa !2428
  %3307 = zext i8 %3305 to i64
  store i64 %3307, i64* %RCX, align 8, !tbaa !2428
  %3308 = add i64 %3440, -10624
  %3309 = add i64 %3308, %3307
  %3310 = add i64 %3474, 22
  store i64 %3310, i64* %PC, align 8
  %3311 = inttoptr i64 %3309 to i8*
  %3312 = load i8, i8* %3311, align 1
  %3313 = zext i8 %3312 to i32
  %3314 = add nsw i32 %3313, -1
  %3315 = zext i32 %3314 to i64
  store i64 %3315, i64* %RDX, align 8, !tbaa !2428
  %3316 = icmp eq i8 %3312, 0
  %3317 = zext i1 %3316 to i8
  store i8 %3317, i8* %32, align 1, !tbaa !2432
  %3318 = and i32 %3314, 255
  %3319 = tail call i32 @llvm.ctpop.i32(i32 %3318) #8
  %3320 = trunc i32 %3319 to i8
  %3321 = and i8 %3320, 1
  %3322 = xor i8 %3321, 1
  store i8 %3322, i8* %39, align 1, !tbaa !2446
  %3323 = zext i8 %3312 to i32
  %3324 = xor i32 %3323, %3314
  %3325 = lshr i32 %3324, 4
  %3326 = trunc i32 %3325 to i8
  %3327 = and i8 %3326, 1
  store i8 %3327, i8* %45, align 1, !tbaa !2447
  %3328 = icmp eq i32 %3314, 0
  %3329 = zext i1 %3328 to i8
  store i8 %3329, i8* %48, align 1, !tbaa !2448
  %3330 = lshr i32 %3314, 31
  %3331 = trunc i32 %3330 to i8
  store i8 %3331, i8* %51, align 1, !tbaa !2449
  store i8 0, i8* %57, align 1, !tbaa !2450
  store i64 %3315, i64* %RCX, align 8, !tbaa !2428
  %3332 = add i64 %3474, 29
  store i64 %3332, i64* %PC, align 8
  %3333 = trunc i32 %3314 to i5
  switch i5 %3333, label %3334 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %3343
  ]

; <label>:3334:                                   ; preds = %block_400e0f
  %3335 = and i32 %3314, 31
  %3336 = zext i32 %3335 to i64
  %3337 = add nuw nsw i64 %3336, 4294967295
  %3338 = and i64 %3337, 4294967295
  %3339 = shl i64 1, %3338
  %3340 = trunc i64 %3339 to i32
  %3341 = icmp slt i32 %3340, 0
  %3342 = shl i32 %3340, 1
  br label %3343

; <label>:3343:                                   ; preds = %block_400e0f, %3334
  %3344 = phi i1 [ %3341, %3334 ], [ false, %block_400e0f ]
  %3345 = phi i32 [ %3342, %3334 ], [ 2, %block_400e0f ]
  %3346 = zext i32 %3345 to i64
  store i64 %3346, i64* %RAX, align 8, !tbaa !2428
  %3347 = zext i1 %3344 to i8
  store i8 %3347, i8* %32, align 1, !tbaa !2453
  %3348 = and i32 %3345, 254
  %3349 = tail call i32 @llvm.ctpop.i32(i32 %3348) #8
  %3350 = trunc i32 %3349 to i8
  %3351 = and i8 %3350, 1
  %3352 = xor i8 %3351, 1
  store i8 %3352, i8* %39, align 1, !tbaa !2453
  store i8 0, i8* %45, align 1, !tbaa !2453
  %3353 = icmp eq i32 %3345, 0
  %3354 = zext i1 %3353 to i8
  store i8 %3354, i8* %48, align 1, !tbaa !2453
  %3355 = lshr i32 %3345, 31
  %3356 = trunc i32 %3355 to i8
  store i8 %3356, i8* %51, align 1, !tbaa !2453
  store i8 0, i8* %57, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %3343, %block_400e0f
  %3357 = phi i32 [ %3345, %3343 ], [ 1, %block_400e0f ]
  %3358 = sext i32 %3357 to i64
  store i64 %3358, i64* %RSI, align 8, !tbaa !2428
  %3359 = add i64 %3440, -72
  %3360 = add i64 %3474, 36
  store i64 %3360, i64* %PC, align 8
  %3361 = inttoptr i64 %3359 to i64*
  store i64 %3358, i64* %3361, align 8
  %3362 = load i64, i64* %RBP, align 8
  %3363 = add i64 %3362, -48
  %3364 = load i64, i64* %PC, align 8
  %3365 = add i64 %3364, 8
  store i64 %3365, i64* %PC, align 8
  %3366 = inttoptr i64 %3363 to i64*
  store i64 0, i64* %3366, align 8
  %.pre25 = load i64, i64* %PC, align 8
  br label %block_400e3b

block_40113e:                                     ; preds = %block_401118, %block_401183
  %3367 = phi i64 [ %.pre36, %block_401118 ], [ %518, %block_401183 ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %32, align 1, !tbaa !2432
  store i8 1, i8* %39, align 1, !tbaa !2446
  store i8 1, i8* %48, align 1, !tbaa !2448
  store i8 0, i8* %51, align 1, !tbaa !2449
  store i8 0, i8* %57, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  store i8 0, i8* %CL, align 1, !tbaa !2453
  %3368 = load i64, i64* %RBP, align 8
  %3369 = add i64 %3368, -56
  %3370 = add i64 %3367, 9
  store i64 %3370, i64* %PC, align 8
  %3371 = inttoptr i64 %3369 to i64*
  %3372 = load i64, i64* %3371, align 8
  store i8 0, i8* %32, align 1, !tbaa !2432
  %3373 = trunc i64 %3372 to i32
  %3374 = and i32 %3373, 255
  %3375 = tail call i32 @llvm.ctpop.i32(i32 %3374) #8
  %3376 = trunc i32 %3375 to i8
  %3377 = and i8 %3376, 1
  %3378 = xor i8 %3377, 1
  store i8 %3378, i8* %39, align 1, !tbaa !2446
  store i8 0, i8* %45, align 1, !tbaa !2447
  %3379 = icmp eq i64 %3372, 0
  %3380 = zext i1 %3379 to i8
  store i8 %3380, i8* %48, align 1, !tbaa !2448
  %3381 = lshr i64 %3372, 63
  %3382 = trunc i64 %3381 to i8
  store i8 %3382, i8* %51, align 1, !tbaa !2449
  store i8 0, i8* %57, align 1, !tbaa !2450
  %3383 = add i64 %3368, -13097
  %3384 = add i64 %3367, 15
  store i64 %3384, i64* %PC, align 8
  %3385 = inttoptr i64 %3383 to i8*
  store i8 0, i8* %3385, align 1
  %3386 = load i64, i64* %PC, align 8
  %3387 = load i8, i8* %48, align 1, !tbaa !2448
  %3388 = icmp ne i8 %3387, 0
  %.v70 = select i1 %3388, i64 35, i64 6
  %3389 = add i64 %3386, %.v70
  store i64 %3389, i64* %113, align 8, !tbaa !2428
  %3390 = icmp eq i8 %3387, 1
  br i1 %3390, label %block_401170, label %block_401153

block_400c07:                                     ; preds = %block_400bf6
  %3391 = add i64 %362, 7
  store i64 %3391, i64* %PC, align 8
  %3392 = load i64, i64* %338, align 8
  store i64 %3392, i64* %RAX, align 8, !tbaa !2428
  %3393 = shl i64 %3392, 3
  %3394 = add i64 %335, -4224
  %3395 = add i64 %3394, %3393
  %3396 = add i64 %362, 16
  store i64 %3396, i64* %PC, align 8
  %3397 = inttoptr i64 %3395 to i64*
  %3398 = load i64, i64* %3397, align 8
  store i8 0, i8* %32, align 1, !tbaa !2432
  %3399 = trunc i64 %3398 to i32
  %3400 = and i32 %3399, 255
  %3401 = tail call i32 @llvm.ctpop.i32(i32 %3400) #8
  %3402 = trunc i32 %3401 to i8
  %3403 = and i8 %3402, 1
  %3404 = xor i8 %3403, 1
  store i8 %3404, i8* %39, align 1, !tbaa !2446
  store i8 0, i8* %45, align 1, !tbaa !2447
  %3405 = icmp eq i64 %3398, 0
  %3406 = zext i1 %3405 to i8
  store i8 %3406, i8* %48, align 1, !tbaa !2448
  %3407 = lshr i64 %3398, 63
  %3408 = trunc i64 %3407 to i8
  store i8 %3408, i8* %51, align 1, !tbaa !2449
  store i8 0, i8* %57, align 1, !tbaa !2450
  %.v52 = select i1 %3405, i64 22, i64 61
  %3409 = add i64 %362, %.v52
  store i64 %3409, i64* %113, align 8, !tbaa !2428
  br i1 %3405, label %block_400c1d, label %block_400c44

block_400c44:                                     ; preds = %block_400c07
  %3410 = add i64 %335, -48
  %3411 = add i64 %3409, 8
  store i64 %3411, i64* %PC, align 8
  %3412 = inttoptr i64 %3410 to i64*
  store i64 0, i64* %3412, align 8
  %3413 = load i64, i64* %RBP, align 8
  %3414 = add i64 %3413, -56
  %3415 = load i64, i64* %PC, align 8
  %3416 = add i64 %3415, 8
  store i64 %3416, i64* %PC, align 8
  %3417 = inttoptr i64 %3414 to i64*
  store i64 1, i64* %3417, align 8
  %3418 = load i64, i64* %RBP, align 8
  %3419 = add i64 %3418, -10648
  %3420 = load i64, i64* %PC, align 8
  %3421 = add i64 %3420, 11
  store i64 %3421, i64* %PC, align 8
  %3422 = inttoptr i64 %3419 to i64*
  store i64 0, i64* %3422, align 8
  %3423 = load i64, i64* %RBP, align 8
  %3424 = add i64 %3423, -10640
  %3425 = load i64, i64* %PC, align 8
  %3426 = add i64 %3425, 7
  store i64 %3426, i64* %PC, align 8
  %3427 = inttoptr i64 %3424 to i64*
  %3428 = load i64, i64* %3427, align 8
  store i64 %3428, i64* %RAX, align 8, !tbaa !2428
  %3429 = shl i64 %3428, 2
  %3430 = add i64 %3423, -8320
  %3431 = add i64 %3430, %3429
  %3432 = add i64 %3425, 14
  store i64 %3432, i64* %PC, align 8
  %3433 = inttoptr i64 %3431 to i32*
  %3434 = load i32, i32* %3433, align 4
  %3435 = zext i32 %3434 to i64
  store i64 %3435, i64* %RCX, align 8, !tbaa !2428
  %3436 = add i64 %3423, -10668
  %3437 = add i64 %3425, 20
  store i64 %3437, i64* %PC, align 8
  %3438 = inttoptr i64 %3436 to i32*
  store i32 %3434, i32* %3438, align 4
  %.pre18 = load i64, i64* %PC, align 8
  br label %block_400c73

block_400e01:                                     ; preds = %block_400df9, %block_400f4d
  %3439 = phi i64 [ %.pre24, %block_400df9 ], [ %1582, %block_400f4d ]
  %3440 = load i64, i64* %RBP, align 8
  %3441 = add i64 %3440, -56
  %3442 = add i64 %3439, 4
  store i64 %3442, i64* %PC, align 8
  %3443 = inttoptr i64 %3441 to i64*
  %3444 = load i64, i64* %3443, align 8
  store i64 %3444, i64* %RAX, align 8, !tbaa !2428
  %3445 = add i64 %3440, -40
  %3446 = add i64 %3439, 8
  store i64 %3446, i64* %PC, align 8
  %3447 = inttoptr i64 %3445 to i64*
  %3448 = load i64, i64* %3447, align 8
  %3449 = sub i64 %3444, %3448
  %3450 = icmp ult i64 %3444, %3448
  %3451 = zext i1 %3450 to i8
  store i8 %3451, i8* %32, align 1, !tbaa !2432
  %3452 = trunc i64 %3449 to i32
  %3453 = and i32 %3452, 255
  %3454 = tail call i32 @llvm.ctpop.i32(i32 %3453) #8
  %3455 = trunc i32 %3454 to i8
  %3456 = and i8 %3455, 1
  %3457 = xor i8 %3456, 1
  store i8 %3457, i8* %39, align 1, !tbaa !2446
  %3458 = xor i64 %3448, %3444
  %3459 = xor i64 %3458, %3449
  %3460 = lshr i64 %3459, 4
  %3461 = trunc i64 %3460 to i8
  %3462 = and i8 %3461, 1
  store i8 %3462, i8* %45, align 1, !tbaa !2447
  %3463 = icmp eq i64 %3449, 0
  %3464 = zext i1 %3463 to i8
  store i8 %3464, i8* %48, align 1, !tbaa !2448
  %3465 = lshr i64 %3449, 63
  %3466 = trunc i64 %3465 to i8
  store i8 %3466, i8* %51, align 1, !tbaa !2449
  %3467 = lshr i64 %3444, 63
  %3468 = lshr i64 %3448, 63
  %3469 = xor i64 %3468, %3467
  %3470 = xor i64 %3465, %3467
  %3471 = add nuw nsw i64 %3470, %3469
  %3472 = icmp eq i64 %3471, 2
  %3473 = zext i1 %3472 to i8
  store i8 %3473, i8* %57, align 1, !tbaa !2450
  %.v59 = select i1 %3450, i64 14, i64 361
  %3474 = add i64 %3439, %.v59
  store i64 %3474, i64* %113, align 8, !tbaa !2428
  br i1 %3450, label %block_400e0f, label %block_400f6a
}

; Function Attrs: noinline
define %struct.Memory* @sub_4015a0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4015a0:
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
  %65 = add i64 %40, -4139
  %66 = add i64 %40, 22
  %67 = add i64 %8, -64
  %68 = inttoptr i64 %67 to i64*
  store i64 %66, i64* %68, align 8
  store i64 %67, i64* %7, align 8, !tbaa !2428
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %65, i64* %69, align 8, !tbaa !2428
  %70 = tail call %struct.Memory* @sub_400590__init_proc_renamed_(%struct.State* nonnull %0, i64 %65, %struct.Memory* %2)
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
  br i1 %79, label %block_4015f6, label %block_4015d6

block_4015f6:                                     ; preds = %block_4015e0, %block_4015a0
  %84 = phi i64 [ %83, %block_4015a0 ], [ %182, %block_4015e0 ]
  %MEMORY.0 = phi %struct.Memory* [ %70, %block_4015a0 ], [ %152, %block_4015e0 ]
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

block_4015d6:                                     ; preds = %block_4015a0
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %45, align 1, !tbaa !2432
  store i8 1, i8* %46, align 1, !tbaa !2446
  store i8 1, i8* %48, align 1, !tbaa !2448
  store i8 0, i8* %49, align 1, !tbaa !2449
  store i8 0, i8* %50, align 1, !tbaa !2450
  store i8 0, i8* %47, align 1, !tbaa !2447
  %136 = add i64 %83, 10
  store i64 %136, i64* %PC, align 8
  br label %block_4015e0

block_4015e0:                                     ; preds = %block_4015e0, %block_4015d6
  %137 = phi i64 [ 0, %block_4015d6 ], [ %155, %block_4015e0 ]
  %138 = phi i64 [ %136, %block_4015d6 ], [ %182, %block_4015e0 ]
  %MEMORY.1 = phi %struct.Memory* [ %70, %block_4015d6 ], [ %152, %block_4015e0 ]
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
  br i1 %172, label %block_4015f6, label %block_4015e0
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006e0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4006e0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 40) to i8*), align 8
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
  br i1 %12, label %block_4006e9, label %block_400700

block_400700:                                     ; preds = %block_4006e0
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

block_4006e9:                                     ; preds = %block_4006e0
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
  %37 = tail call %struct.Memory* @sub_400670_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %33, %struct.Memory* %2)
  %38 = load i64, i64* %PC, align 8
  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 40) to i8*), align 8
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
define %struct.Memory* @sub_400710_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400710:
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
  %14 = tail call %struct.Memory* @sub_4006a0_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %14
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400710_frame_dummy() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400710;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_400710_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400710_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4006e0___do_global_dtors_aux() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4006e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_4006e0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4006e0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020e0_fflush(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @fflush to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_4005e0_strcmp(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020f0_free(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401610___libc_csu_fini() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401610;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_401610___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401610___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4015a0___libc_csu_init() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4015a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_4015a0___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4015a0___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401470;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401470_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020c0___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020d8_malloc(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6020f8_memset(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_400620_exit(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @compdecomp() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400870;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @compdecomp_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400870_compdecomp(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401614;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @.term_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401614__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400590;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400590__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @generate_test_data() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400720;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @generate_test_data_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400720_generate_test_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

define internal void @__mcsema_destructor() {
  tail call void @callback_sub_401610___libc_csu_fini()
  ret void
}

define internal void @__mcsema_constructor() {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_4015a0___libc_csu_init()
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
attributes #9 = { alwaysinline nobuiltin nounwind }

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
!2452 = !{!"double", !2430, i64 0}
!2453 = !{!2430, !2430, i64 0}
!2454 = !{!2445, !2445, i64 0}
