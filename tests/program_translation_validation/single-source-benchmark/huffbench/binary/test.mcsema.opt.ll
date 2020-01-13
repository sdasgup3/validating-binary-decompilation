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

declare %struct.Memory* @sub_400590__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400870_compdecomp_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400670_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400720_generate_test_data_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007b0_random4_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401370_heap_adjust_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
  %16 = add i64 %9, 40
  store i64 %16, i64* %PC, align 8
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %RBP, align 8, !tbaa !2428
  store i64 %6, i64* %5, align 8, !tbaa !2428
  %18 = add i64 %9, 41
  store i64 %18, i64* %PC, align 8
  %19 = inttoptr i64 %6 to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %PC, align 8, !tbaa !2428
  %21 = add i64 %6, 8
  store i64 %21, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400660__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400660:
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
define %struct.Memory* @sub_401610___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401610:
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
  %9 = load i64, i64* %RSP, align 8, !tbaa !2428
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %7, i64* %11, align 8
  %12 = load i64, i64* %PC, align 8
  store i64 %10, i64* %RBP, align 8, !tbaa !2428
  %13 = add i64 %9, -72
  store i64 %13, i64* %RSP, align 8, !tbaa !2428
  %14 = icmp ult i64 %10, 64
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
  %41 = add i64 %9, -12
  %42 = add i64 %12, 14
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
  %57 = add i64 %56, -21
  %58 = load i64, i64* %PC, align 8
  %59 = add i64 %58, 4
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %57 to i8*
  store i8 0, i8* %60, align 1
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -8
  %63 = load i64, i64* %PC, align 8
  %64 = add i64 %63, 4
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %62 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = add i32 %66, -1
  %68 = icmp eq i32 %66, 0
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %16, align 1, !tbaa !2432
  %70 = and i32 %67, 255
  %71 = tail call i32 @llvm.ctpop.i32(i32 %70) #8
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  store i8 %74, i8* %23, align 1, !tbaa !2446
  %75 = xor i32 %66, %67
  %76 = lshr i32 %75, 4
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  store i8 %78, i8* %28, align 1, !tbaa !2447
  %79 = icmp eq i32 %67, 0
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %31, align 1, !tbaa !2448
  %81 = lshr i32 %67, 31
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %34, align 1, !tbaa !2449
  %83 = lshr i32 %66, 31
  %84 = xor i32 %81, %83
  %85 = add nuw nsw i32 %84, %83
  %86 = icmp eq i32 %85, 2
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %40, align 1, !tbaa !2450
  %88 = icmp ne i8 %82, 0
  %89 = xor i1 %88, %86
  %90 = or i1 %79, %89
  %.v = select i1 %90, i64 91, i64 10
  %91 = add i64 %63, %.v
  store i64 %91, i64* %PC, align 8, !tbaa !2428
  br i1 %90, label %block_4014e5, label %block_401494

block_4014e5:                                     ; preds = %block_4014e0, %block_401470
  %92 = phi i64 [ %91, %block_401470 ], [ %413, %block_4014e0 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_401470 ], [ %MEMORY.4, %block_4014e0 ]
  store i64 10000000, i64* %RAX, align 8, !tbaa !2428
  store i64 10000000, i64* %RDI, align 8, !tbaa !2428
  %93 = add i64 %92, -3525
  %94 = add i64 %92, 12
  %95 = load i64, i64* %RSP, align 8, !tbaa !2428
  %96 = add i64 %95, -8
  %97 = inttoptr i64 %96 to i64*
  store i64 %94, i64* %97, align 8
  store i64 %96, i64* %RSP, align 8, !tbaa !2428
  store i64 %93, i64* %PC, align 8, !tbaa !2428
  %98 = tail call %struct.Memory* @sub_400720_generate_test_data_renamed_(%struct.State* nonnull %0, i64 %93, %struct.Memory* %MEMORY.0)
  %99 = load i64, i64* %RBP, align 8
  %100 = add i64 %99, -32
  %101 = load i64, i64* %RAX, align 8
  %102 = load i64, i64* %PC, align 8
  %103 = add i64 %102, 4
  store i64 %103, i64* %PC, align 8
  %104 = inttoptr i64 %100 to i64*
  store i64 %101, i64* %104, align 8
  %105 = load i64, i64* %RBP, align 8
  %106 = add i64 %105, -20
  %107 = load i64, i64* %PC, align 8
  %108 = add i64 %107, 7
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %106 to i32*
  store i32 0, i32* %109, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_4014fc

block_40149b:                                     ; preds = %block_4014cd, %block_401494
  %110 = phi i64 [ %.pre, %block_401494 ], [ %248, %block_4014cd ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_401494 ], [ %293, %block_4014cd ]
  %111 = load i64, i64* %RBP, align 8
  %112 = add i64 %111, -20
  %113 = add i64 %110, 3
  store i64 %113, i64* %PC, align 8
  %114 = inttoptr i64 %112 to i32*
  %115 = load i32, i32* %114, align 4
  %116 = zext i32 %115 to i64
  store i64 %116, i64* %RAX, align 8, !tbaa !2428
  %117 = add i64 %111, -8
  %118 = add i64 %110, 6
  store i64 %118, i64* %PC, align 8
  %119 = inttoptr i64 %117 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = sub i32 %115, %120
  %122 = icmp ult i32 %115, %120
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %16, align 1, !tbaa !2432
  %124 = and i32 %121, 255
  %125 = tail call i32 @llvm.ctpop.i32(i32 %124) #8
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  store i8 %128, i8* %23, align 1, !tbaa !2446
  %129 = xor i32 %120, %115
  %130 = xor i32 %129, %121
  %131 = lshr i32 %130, 4
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  store i8 %133, i8* %28, align 1, !tbaa !2447
  %134 = icmp eq i32 %121, 0
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %31, align 1, !tbaa !2448
  %136 = lshr i32 %121, 31
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %34, align 1, !tbaa !2449
  %138 = lshr i32 %115, 31
  %139 = lshr i32 %120, 31
  %140 = xor i32 %139, %138
  %141 = xor i32 %136, %138
  %142 = add nuw nsw i32 %141, %140
  %143 = icmp eq i32 %142, 2
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %40, align 1, !tbaa !2450
  %145 = icmp ne i8 %137, 0
  %146 = xor i1 %145, %143
  %.v4 = select i1 %146, i64 12, i64 69
  %147 = add i64 %110, %.v4
  store i64 %147, i64* %PC, align 8, !tbaa !2428
  br i1 %146, label %block_4014a7, label %block_4014e0

block_401586:                                     ; preds = %block_401565, %block_40153f
  %148 = phi i64 [ %.pre3, %block_401565 ], [ %218, %block_40153f ]
  %MEMORY.2 = phi %struct.Memory* [ %360, %block_401565 ], [ %210, %block_40153f ]
  %149 = load i64, i64* @stdout, align 128
  store i64 %149, i64* %RDI, align 8, !tbaa !2428
  %150 = add i64 %148, -3958
  %151 = add i64 %148, 13
  %152 = load i64, i64* %RSP, align 8, !tbaa !2428
  %153 = add i64 %152, -8
  %154 = inttoptr i64 %153 to i64*
  store i64 %151, i64* %154, align 8
  store i64 %153, i64* %RSP, align 8, !tbaa !2428
  store i64 %150, i64* %PC, align 8, !tbaa !2428
  %155 = tail call fastcc %struct.Memory* @ext_6020e0_fflush(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %156 = load i64, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  %157 = load i64, i64* %RBP, align 8
  %158 = add i64 %157, -52
  %159 = load i32, i32* %EAX, align 4
  %160 = add i64 %156, 5
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %158 to i32*
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %ECX, align 4
  %163 = zext i32 %162 to i64
  %164 = load i64, i64* %PC, align 8
  store i64 %163, i64* %RAX, align 8, !tbaa !2428
  %165 = load i64, i64* %RSP, align 8
  %166 = add i64 %165, 64
  store i64 %166, i64* %RSP, align 8, !tbaa !2428
  %167 = icmp ugt i64 %165, -65
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %16, align 1, !tbaa !2432
  %169 = trunc i64 %166 to i32
  %170 = and i32 %169, 255
  %171 = tail call i32 @llvm.ctpop.i32(i32 %170) #8
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  %174 = xor i8 %173, 1
  store i8 %174, i8* %23, align 1, !tbaa !2446
  %175 = xor i64 %165, %166
  %176 = lshr i64 %175, 4
  %177 = trunc i64 %176 to i8
  %178 = and i8 %177, 1
  store i8 %178, i8* %28, align 1, !tbaa !2447
  %179 = icmp eq i64 %166, 0
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %31, align 1, !tbaa !2448
  %181 = lshr i64 %166, 63
  %182 = trunc i64 %181 to i8
  store i8 %182, i8* %34, align 1, !tbaa !2449
  %183 = lshr i64 %165, 63
  %184 = xor i64 %181, %183
  %185 = add nuw nsw i64 %184, %181
  %186 = icmp eq i64 %185, 2
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %40, align 1, !tbaa !2450
  %188 = add i64 %164, 7
  store i64 %188, i64* %PC, align 8
  %189 = add i64 %165, 72
  %190 = inttoptr i64 %166 to i64*
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %RBP, align 8, !tbaa !2428
  store i64 %189, i64* %RSP, align 8, !tbaa !2428
  %192 = add i64 %164, 8
  store i64 %192, i64* %PC, align 8
  %193 = inttoptr i64 %189 to i64*
  %194 = load i64, i64* %193, align 8
  store i64 %194, i64* %PC, align 8, !tbaa !2428
  %195 = add i64 %165, 80
  store i64 %195, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %155

block_401494:                                     ; preds = %block_401470
  %196 = add i64 %61, -20
  %197 = add i64 %91, 7
  store i64 %197, i64* %PC, align 8
  %198 = inttoptr i64 %196 to i32*
  store i32 1, i32* %198, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_40149b

block_40153f:                                     ; preds = %block_401524
  store i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 123), i64* %RSI, align 8, !tbaa !2428
  %199 = load i64, i64* @stdout, align 128
  store i64 %199, i64* %RDI, align 8, !tbaa !2428
  %200 = add i64 %397, -40
  %201 = add i64 %410, 23
  store i64 %201, i64* %PC, align 8
  %202 = inttoptr i64 %200 to i64*
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %382, align 1, !tbaa !2451
  %204 = bitcast i64* %373 to double*
  store double 0.000000e+00, double* %204, align 1, !tbaa !2451
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %205 = add i64 %410, -3919
  %206 = add i64 %410, 30
  %207 = load i64, i64* %RSP, align 8, !tbaa !2428
  %208 = add i64 %207, -8
  %209 = inttoptr i64 %208 to i64*
  store i64 %206, i64* %209, align 8
  store i64 %208, i64* %RSP, align 8, !tbaa !2428
  store i64 %205, i64* %PC, align 8, !tbaa !2428
  %210 = tail call fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %396)
  %211 = load i64, i64* %RBP, align 8
  %212 = add i64 %211, -44
  %213 = load i32, i32* %EAX, align 4
  %214 = load i64, i64* %PC, align 8
  %215 = add i64 %214, 3
  store i64 %215, i64* %PC, align 8
  %216 = inttoptr i64 %212 to i32*
  store i32 %213, i32* %216, align 4
  %217 = load i64, i64* %PC, align 8
  %218 = add i64 %217, 38
  store i64 %218, i64* %PC, align 8, !tbaa !2428
  br label %block_401586

block_4014cd:                                     ; preds = %block_4014a7
  %219 = add i64 %306, -20
  %220 = add i64 %305, 8
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
  store i8 %228, i8* %16, align 1, !tbaa !2432
  %229 = and i32 %223, 255
  %230 = tail call i32 @llvm.ctpop.i32(i32 %229) #8
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  %233 = xor i8 %232, 1
  store i8 %233, i8* %23, align 1, !tbaa !2446
  %234 = xor i32 %222, %223
  %235 = lshr i32 %234, 4
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  store i8 %237, i8* %28, align 1, !tbaa !2447
  %238 = zext i1 %226 to i8
  store i8 %238, i8* %31, align 1, !tbaa !2448
  %239 = lshr i32 %223, 31
  %240 = trunc i32 %239 to i8
  store i8 %240, i8* %34, align 1, !tbaa !2449
  %241 = lshr i32 %222, 31
  %242 = xor i32 %239, %241
  %243 = add nuw nsw i32 %242, %239
  %244 = icmp eq i32 %243, 2
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %40, align 1, !tbaa !2450
  %246 = add i64 %305, 14
  store i64 %246, i64* %PC, align 8
  store i32 %223, i32* %221, align 4
  %247 = load i64, i64* %PC, align 8
  %248 = add i64 %247, -64
  store i64 %248, i64* %PC, align 8, !tbaa !2428
  br label %block_40149b

block_4014fc:                                     ; preds = %block_401506, %block_4014e5
  %249 = phi i64 [ %.pre2, %block_4014e5 ], [ %348, %block_401506 ]
  %MEMORY.3 = phi %struct.Memory* [ %98, %block_4014e5 ], [ %316, %block_401506 ]
  %250 = load i64, i64* %RBP, align 8
  %251 = add i64 %250, -20
  %252 = add i64 %249, 4
  store i64 %252, i64* %PC, align 8
  %253 = inttoptr i64 %251 to i32*
  %254 = load i32, i32* %253, align 4
  %255 = add i32 %254, -30
  %256 = icmp ult i32 %254, 30
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %16, align 1, !tbaa !2432
  %258 = and i32 %255, 255
  %259 = tail call i32 @llvm.ctpop.i32(i32 %258) #8
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  %262 = xor i8 %261, 1
  store i8 %262, i8* %23, align 1, !tbaa !2446
  %263 = xor i32 %254, 16
  %264 = xor i32 %263, %255
  %265 = lshr i32 %264, 4
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  store i8 %267, i8* %28, align 1, !tbaa !2447
  %268 = icmp eq i32 %255, 0
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %31, align 1, !tbaa !2448
  %270 = lshr i32 %255, 31
  %271 = trunc i32 %270 to i8
  store i8 %271, i8* %34, align 1, !tbaa !2449
  %272 = lshr i32 %254, 31
  %273 = xor i32 %270, %272
  %274 = add nuw nsw i32 %273, %272
  %275 = icmp eq i32 %274, 2
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %40, align 1, !tbaa !2450
  %277 = icmp ne i8 %271, 0
  %278 = xor i1 %277, %275
  %.v6 = select i1 %278, i64 10, i64 40
  %279 = add i64 %249, %.v6
  store i64 %279, i64* %PC, align 8, !tbaa !2428
  br i1 %278, label %block_401506, label %block_401524

block_4014a7:                                     ; preds = %block_40149b
  %280 = add i64 %111, -16
  %281 = add i64 %147, 4
  store i64 %281, i64* %PC, align 8
  %282 = inttoptr i64 %280 to i64*
  %283 = load i64, i64* %282, align 8
  store i64 %283, i64* %RAX, align 8, !tbaa !2428
  %284 = add i64 %283, 8
  %285 = add i64 %147, 8
  store i64 %285, i64* %PC, align 8
  %286 = inttoptr i64 %284 to i64*
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %RDI, align 8, !tbaa !2428
  store i64 and (i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 119), i64 4294967295), i64* %RCX, align 8, !tbaa !2428
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 119), i64 4294967295) to i32) to i64), i64* %RSI, align 8, !tbaa !2428
  %288 = add i64 %147, -3783
  %289 = add i64 %147, 20
  %290 = load i64, i64* %RSP, align 8, !tbaa !2428
  %291 = add i64 %290, -8
  %292 = inttoptr i64 %291 to i64*
  store i64 %289, i64* %292, align 8
  store i64 %291, i64* %RSP, align 8, !tbaa !2428
  store i64 %288, i64* %PC, align 8, !tbaa !2428
  %293 = tail call fastcc %struct.Memory* @ext_4005e0_strcmp(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %294 = load i32, i32* %EAX, align 4
  %295 = load i64, i64* %PC, align 8
  store i8 0, i8* %16, align 1, !tbaa !2432
  %296 = and i32 %294, 255
  %297 = tail call i32 @llvm.ctpop.i32(i32 %296) #8
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = xor i8 %299, 1
  store i8 %300, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %28, align 1, !tbaa !2447
  %301 = icmp eq i32 %294, 0
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %31, align 1, !tbaa !2448
  %303 = lshr i32 %294, 31
  %304 = trunc i32 %303 to i8
  store i8 %304, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  %.v5 = select i1 %301, i64 9, i64 18
  %305 = add i64 %295, %.v5
  store i64 %305, i64* %PC, align 8, !tbaa !2428
  %306 = load i64, i64* %RBP, align 8
  br i1 %301, label %block_4014c4, label %block_4014cd

block_401506:                                     ; preds = %block_4014fc
  store i64 10000000, i64* %RAX, align 8, !tbaa !2428
  store i64 10000000, i64* %RSI, align 8, !tbaa !2428
  %307 = add i64 %250, -32
  %308 = add i64 %279, 11
  store i64 %308, i64* %PC, align 8
  %309 = inttoptr i64 %307 to i64*
  %310 = load i64, i64* %309, align 8
  store i64 %310, i64* %RDI, align 8, !tbaa !2428
  %311 = add i64 %279, -3222
  %312 = add i64 %279, 16
  %313 = load i64, i64* %RSP, align 8, !tbaa !2428
  %314 = add i64 %313, -8
  %315 = inttoptr i64 %314 to i64*
  store i64 %312, i64* %315, align 8
  store i64 %314, i64* %RSP, align 8, !tbaa !2428
  store i64 %311, i64* %PC, align 8, !tbaa !2428
  %316 = tail call %struct.Memory* @sub_400870_compdecomp_renamed_(%struct.State* nonnull %0, i64 %311, %struct.Memory* %MEMORY.3)
  %317 = load i64, i64* %RBP, align 8
  %318 = add i64 %317, -20
  %319 = load i64, i64* %PC, align 8
  %320 = add i64 %319, 3
  store i64 %320, i64* %PC, align 8
  %321 = inttoptr i64 %318 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = add i32 %322, 1
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RAX, align 8, !tbaa !2428
  %325 = icmp eq i32 %322, -1
  %326 = icmp eq i32 %323, 0
  %327 = or i1 %325, %326
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %16, align 1, !tbaa !2432
  %329 = and i32 %323, 255
  %330 = tail call i32 @llvm.ctpop.i32(i32 %329) #8
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = xor i8 %332, 1
  store i8 %333, i8* %23, align 1, !tbaa !2446
  %334 = xor i32 %322, %323
  %335 = lshr i32 %334, 4
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  store i8 %337, i8* %28, align 1, !tbaa !2447
  %338 = zext i1 %326 to i8
  store i8 %338, i8* %31, align 1, !tbaa !2448
  %339 = lshr i32 %323, 31
  %340 = trunc i32 %339 to i8
  store i8 %340, i8* %34, align 1, !tbaa !2449
  %341 = lshr i32 %322, 31
  %342 = xor i32 %339, %341
  %343 = add nuw nsw i32 %342, %339
  %344 = icmp eq i32 %343, 2
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %40, align 1, !tbaa !2450
  %346 = add i64 %319, 9
  store i64 %346, i64* %PC, align 8
  store i32 %323, i32* %321, align 4
  %347 = load i64, i64* %PC, align 8
  %348 = add i64 %347, -35
  store i64 %348, i64* %PC, align 8, !tbaa !2428
  br label %block_4014fc

block_401565:                                     ; preds = %block_401524
  store i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 126), i64* %RSI, align 8, !tbaa !2428
  %349 = load i64, i64* @stdout, align 128
  store i64 %349, i64* %RDI, align 8, !tbaa !2428
  %350 = add i64 %397, -40
  %351 = add i64 %410, 23
  store i64 %351, i64* %PC, align 8
  %352 = inttoptr i64 %350 to i64*
  %353 = load i64, i64* %352, align 8
  store i64 %353, i64* %382, align 1, !tbaa !2451
  %354 = bitcast i64* %373 to double*
  store double 0.000000e+00, double* %354, align 1, !tbaa !2451
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %355 = add i64 %410, -3957
  %356 = add i64 %410, 30
  %357 = load i64, i64* %RSP, align 8, !tbaa !2428
  %358 = add i64 %357, -8
  %359 = inttoptr i64 %358 to i64*
  store i64 %356, i64* %359, align 8
  store i64 %358, i64* %RSP, align 8, !tbaa !2428
  store i64 %355, i64* %PC, align 8, !tbaa !2428
  %360 = tail call fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %396)
  %361 = load i64, i64* %RBP, align 8
  %362 = add i64 %361, -48
  %363 = load i32, i32* %EAX, align 4
  %364 = load i64, i64* %PC, align 8
  %365 = add i64 %364, 3
  store i64 %365, i64* %PC, align 8
  %366 = inttoptr i64 %362 to i32*
  store i32 %363, i32* %366, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_401586

block_4014c4:                                     ; preds = %block_4014a7
  %367 = add i64 %306, -21
  %368 = add i64 %305, 4
  store i64 %368, i64* %PC, align 8
  %369 = inttoptr i64 %367 to i8*
  store i8 1, i8* %369, align 1
  %370 = load i64, i64* %PC, align 8
  %371 = add i64 %370, 24
  store i64 %371, i64* %PC, align 8, !tbaa !2428
  br label %block_4014e0

block_401524:                                     ; preds = %block_4014fc
  %372 = bitcast %union.VectorReg* %6 to i8*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %374 = bitcast %union.VectorReg* %6 to i32*
  store i32 0, i32* %374, align 1, !tbaa !2454
  %375 = getelementptr inbounds i8, i8* %372, i64 4
  %376 = bitcast i8* %375 to i32*
  store i32 0, i32* %376, align 1, !tbaa !2454
  %377 = bitcast i64* %373 to i32*
  store i32 0, i32* %377, align 1, !tbaa !2454
  %378 = getelementptr inbounds i8, i8* %372, i64 12
  %379 = bitcast i8* %378 to i32*
  store i32 0, i32* %379, align 1, !tbaa !2454
  %380 = add i64 %250, -40
  %381 = add i64 %279, 8
  store i64 %381, i64* %PC, align 8
  %382 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  %383 = load i64, i64* %382, align 1
  %384 = inttoptr i64 %380 to i64*
  store i64 %383, i64* %384, align 8
  %385 = load i64, i64* %RBP, align 8
  %386 = add i64 %385, -32
  %387 = load i64, i64* %PC, align 8
  %388 = add i64 %387, 4
  store i64 %388, i64* %PC, align 8
  %389 = inttoptr i64 %386 to i64*
  %390 = load i64, i64* %389, align 8
  store i64 %390, i64* %RDI, align 8, !tbaa !2428
  %391 = add i64 %387, -3948
  %392 = add i64 %387, 9
  %393 = load i64, i64* %RSP, align 8, !tbaa !2428
  %394 = add i64 %393, -8
  %395 = inttoptr i64 %394 to i64*
  store i64 %392, i64* %395, align 8
  store i64 %394, i64* %RSP, align 8, !tbaa !2428
  store i64 %391, i64* %PC, align 8, !tbaa !2428
  %396 = tail call fastcc %struct.Memory* @ext_6020f0_free(%struct.State* nonnull %0, %struct.Memory* %MEMORY.3)
  %397 = load i64, i64* %RBP, align 8
  %398 = add i64 %397, -21
  %399 = load i64, i64* %PC, align 8
  %400 = add i64 %399, 4
  store i64 %400, i64* %PC, align 8
  %401 = inttoptr i64 %398 to i8*
  %402 = load i8, i8* %401, align 1
  %403 = and i8 %402, 1
  store i8 0, i8* %16, align 1, !tbaa !2432
  %404 = zext i8 %403 to i32
  %405 = tail call i32 @llvm.ctpop.i32(i32 %404) #8
  %406 = trunc i32 %405 to i8
  %407 = xor i8 %406, 1
  store i8 %407, i8* %23, align 1, !tbaa !2446
  %408 = icmp eq i8 %403, 0
  %409 = xor i8 %403, 1
  store i8 %409, i8* %31, align 1, !tbaa !2448
  store i8 0, i8* %34, align 1, !tbaa !2449
  store i8 0, i8* %40, align 1, !tbaa !2450
  store i8 0, i8* %28, align 1, !tbaa !2447
  %.v7 = select i1 %408, i64 48, i64 10
  %410 = add i64 %399, %.v7
  %411 = add i64 %410, 10
  store i64 %411, i64* %PC, align 8
  br i1 %408, label %block_401565, label %block_40153f

block_4014e0:                                     ; preds = %block_40149b, %block_4014c4
  %412 = phi i64 [ %371, %block_4014c4 ], [ %147, %block_40149b ]
  %MEMORY.4 = phi %struct.Memory* [ %293, %block_4014c4 ], [ %MEMORY.1, %block_40149b ]
  %413 = add i64 %412, 5
  store i64 %413, i64* %PC, align 8, !tbaa !2428
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
  %28 = ashr i64 %10, 63
  store i64 %28, i64* %RDX, align 8, !tbaa !2428
  %29 = add i64 %9, 46
  store i64 %29, i64* %PC, align 8
  %30 = zext i64 %28 to i128
  %31 = shl nuw i128 %30, 64
  %32 = zext i64 %11 to i128
  %33 = or i128 %31, %32
  %34 = sdiv i128 %33, 127773
  %35 = trunc i128 %34 to i64
  %36 = and i128 %34, 18446744073709551615
  %37 = sext i64 %35 to i128
  %38 = and i128 %37, -18446744073709551616
  %39 = or i128 %38, %36
  %40 = icmp eq i128 %34, %39
  br i1 %40, label %43, label %41

; <label>:41:                                     ; preds = %block_4007b0
  %42 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %29, %struct.Memory* %2) #9
  %.pre = load i64, i64* %RBP, align 8
  %.pre1 = load i64, i64* %RAX, align 8
  %.pre2 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1

; <label>:43:                                     ; preds = %block_4007b0
  %44 = srem i128 %33, 127773
  %45 = trunc i128 %44 to i64
  store i64 %35, i64* %RAX, align 8, !tbaa !2428
  store i64 %45, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 0, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  store i8 0, i8* %22, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1: ; preds = %43, %41
  %46 = phi i64 [ %.pre2, %41 ], [ %29, %43 ]
  %47 = phi i64 [ %.pre1, %41 ], [ %35, %43 ]
  %48 = phi i64 [ %.pre, %41 ], [ %7, %43 ]
  %49 = phi %struct.Memory* [ %42, %41 ], [ %2, %43 ]
  %50 = add i64 %48, -8
  %51 = add i64 %46, 4
  store i64 %51, i64* %PC, align 8
  %52 = inttoptr i64 %50 to i64*
  store i64 %47, i64* %52, align 8
  %53 = load i64, i64* %PC, align 8
  %54 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  store i64 %54, i64* %RAX, align 8, !tbaa !2428
  %55 = load i64, i64* %RBP, align 8
  %56 = add i64 %55, -8
  %57 = add i64 %53, 16
  store i64 %57, i64* %PC, align 8
  %58 = inttoptr i64 %56 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = mul i64 %59, 127773
  store i64 %60, i64* %RCX, align 8, !tbaa !2428
  %61 = sub i64 %54, %60
  %62 = sext i64 %61 to i128
  %63 = and i128 %62, -18446744073709551616
  %64 = zext i64 %61 to i128
  %65 = or i128 %63, %64
  %66 = mul nsw i128 %65, 16807
  %67 = trunc i128 %66 to i64
  store i64 %67, i64* %RAX, align 8, !tbaa !2428
  %68 = sext i64 %67 to i128
  %69 = icmp ne i128 %68, %66
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %12, align 1, !tbaa !2432
  %71 = trunc i128 %66 to i32
  %72 = and i32 %71, 255
  %73 = tail call i32 @llvm.ctpop.i32(i32 %72) #8
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 1
  %76 = xor i8 %75, 1
  store i8 %76, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  store i8 0, i8* %22, align 1, !tbaa !2448
  %77 = lshr i64 %67, 63
  %78 = trunc i64 %77 to i8
  store i8 %78, i8* %25, align 1, !tbaa !2449
  store i8 %70, i8* %26, align 1, !tbaa !2450
  %79 = add i64 %53, 34
  store i64 %79, i64* %PC, align 8
  %80 = load i64, i64* %58, align 8
  %81 = mul i64 %80, 2836
  store i64 %81, i64* %RCX, align 8, !tbaa !2428
  %82 = sub i64 %67, %81
  store i64 %82, i64* %RAX, align 8, !tbaa !2428
  %83 = trunc i64 %82 to i32
  %84 = and i32 %83, 255
  %85 = tail call i32 @llvm.ctpop.i32(i32 %84) #8
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  %89 = icmp eq i64 %82, 0
  %90 = zext i1 %89 to i8
  %91 = lshr i64 %82, 63
  %92 = trunc i64 %91 to i8
  store i64 %82, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 %88, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  store i8 %90, i8* %22, align 1, !tbaa !2448
  store i8 %92, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  %93 = icmp ne i8 %92, 0
  %.v = select i1 %93, i64 60, i64 82
  %94 = add i64 %53, %.v
  store i64 %94, i64* %PC, align 8, !tbaa !2428
  br i1 %93, label %block_40081f, label %block_400835

block_40081f:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1
  %95 = add i64 %82, 2147483647
  store i64 %95, i64* %RAX, align 8, !tbaa !2428
  %96 = icmp ugt i64 %82, -2147483648
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %12, align 1, !tbaa !2432
  %98 = trunc i64 %95 to i32
  %99 = and i32 %98, 255
  %100 = tail call i32 @llvm.ctpop.i32(i32 %99) #8
  %101 = trunc i32 %100 to i8
  %102 = and i8 %101, 1
  %103 = xor i8 %102, 1
  store i8 %103, i8* %19, align 1, !tbaa !2446
  %104 = xor i64 %82, 16
  %105 = xor i64 %104, %95
  %106 = lshr i64 %105, 4
  %107 = trunc i64 %106 to i8
  %108 = and i8 %107, 1
  store i8 %108, i8* %27, align 1, !tbaa !2447
  %109 = icmp eq i64 %95, 0
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %22, align 1, !tbaa !2448
  %111 = lshr i64 %95, 63
  %112 = trunc i64 %111 to i8
  store i8 %112, i8* %25, align 1, !tbaa !2449
  %113 = xor i64 %111, %91
  %114 = add nuw nsw i64 %113, %111
  %115 = icmp eq i64 %114, 2
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %26, align 1, !tbaa !2450
  %117 = add i64 %94, 22
  store i64 %117, i64* %PC, align 8
  store i64 %95, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  br label %block_400835

block_400835:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1, %block_40081f
  %118 = phi i64 [ %95, %block_40081f ], [ %82, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1 ]
  %119 = phi i64 [ %117, %block_40081f ], [ %94, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1 ]
  store i64 32, i64* %RCX, align 8, !tbaa !2428
  store i64 %118, i64* %RAX, align 8, !tbaa !2428
  %120 = ashr i64 %118, 63
  store i64 %120, i64* %RDX, align 8, !tbaa !2428
  %121 = add i64 %119, 20
  store i64 %121, i64* %PC, align 8
  %122 = zext i64 %120 to i128
  %123 = shl nuw i128 %122, 64
  %124 = zext i64 %118 to i128
  %125 = or i128 %123, %124
  %126 = sdiv i128 %125, 32
  %127 = trunc i128 %126 to i64
  %128 = and i128 %126, 18446744073709551615
  %129 = sext i64 %127 to i128
  %130 = and i128 %129, -18446744073709551616
  %131 = or i128 %130, %128
  %132 = icmp eq i128 %126, %131
  br i1 %132, label %135, label %133

; <label>:133:                                    ; preds = %block_400835
  %134 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %121, %struct.Memory* %49) #9
  %.pre3 = load i64, i64* %RDX, align 8
  %.pre4 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:135:                                    ; preds = %block_400835
  %136 = srem i128 %125, 32
  %137 = trunc i128 %136 to i64
  store i64 %127, i64* %RAX, align 8, !tbaa !2428
  store i64 %137, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 0, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  store i8 0, i8* %22, align 1, !tbaa !2448
  store i8 0, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %135, %133
  %138 = phi i64 [ %.pre4, %133 ], [ %121, %135 ]
  %139 = phi i64 [ %.pre3, %133 ], [ %137, %135 ]
  %140 = phi %struct.Memory* [ %134, %133 ], [ %49, %135 ]
  %141 = load i64, i64* %RBP, align 8
  %142 = add i64 %141, -16
  %143 = add i64 %138, 4
  store i64 %143, i64* %PC, align 8
  %144 = inttoptr i64 %142 to i64*
  store i64 %139, i64* %144, align 8
  %145 = load i64, i64* %PC, align 8
  %146 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  %147 = xor i64 %146, 123459876
  store i64 %147, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  %148 = trunc i64 %147 to i32
  %149 = and i32 %148, 255
  %150 = tail call i32 @llvm.ctpop.i32(i32 %149) #8
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  %153 = xor i8 %152, 1
  store i8 %153, i8* %19, align 1, !tbaa !2446
  %154 = icmp eq i64 %147, 0
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %22, align 1, !tbaa !2448
  %156 = lshr i64 %146, 63
  %157 = trunc i64 %156 to i8
  store i8 %157, i8* %25, align 1, !tbaa !2449
  store i8 0, i8* %26, align 1, !tbaa !2450
  store i8 0, i8* %27, align 1, !tbaa !2447
  store i64 %147, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  %158 = load i64, i64* %RBP, align 8
  %159 = add i64 %158, -16
  %160 = add i64 %145, 27
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %159 to i64*
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %RCX, align 8, !tbaa !2428
  store i64 %162, i64* %RAX, align 8, !tbaa !2428
  %163 = add i64 %145, 31
  store i64 %163, i64* %PC, align 8
  %164 = load i64, i64* %5, align 8, !tbaa !2428
  %165 = add i64 %164, 8
  %166 = inttoptr i64 %164 to i64*
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* %RBP, align 8, !tbaa !2428
  store i64 %165, i64* %5, align 8, !tbaa !2428
  %168 = add i64 %145, 32
  store i64 %168, i64* %PC, align 8
  %169 = inttoptr i64 %165 to i64*
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %PC, align 8, !tbaa !2428
  %171 = add i64 %164, 16
  store i64 %171, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %140
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
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2428
  br i1 %18, label %block_400590.block_4005a2_crit_edge, label %block_4005a0

block_400590.block_4005a2_crit_edge:              ; preds = %block_400590
  br label %block_4005a2

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

block_4005a2:                                     ; preds = %block_400590.block_4005a2_crit_edge, %block_4005a0
  %.pre-phi = phi i64* [ %RSP, %block_400590.block_4005a2_crit_edge ], [ %RSP, %block_4005a0 ]
  %27 = phi i64 [ %22, %block_400590.block_4005a2_crit_edge ], [ %.pre1, %block_4005a0 ]
  %28 = phi i64 [ %4, %block_400590.block_4005a2_crit_edge ], [ %.pre, %block_4005a0 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400590.block_4005a2_crit_edge ], [ %26, %block_4005a0 ]
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
  store i64 %54, i64* %.pre-phi, align 8, !tbaa !2428
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
  %.v = select i1 %30, i64 50, i64 29
  %34 = add i64 %10, %.v
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br i1 %30, label %block_4006d8, label %block_4006c3

block_4006d8:                                     ; preds = %block_4006c3, %block_4006a0
  %35 = phi i64 [ %45, %block_4006c3 ], [ %34, %block_4006a0 ]
  %36 = add i64 %35, 1
  store i64 %36, i64* %PC, align 8
  %37 = load i64, i64* %5, align 8, !tbaa !2428
  %38 = add i64 %37, 8
  %39 = inttoptr i64 %37 to i64*
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %RBP, align 8, !tbaa !2428
  store i64 %38, i64* %5, align 8, !tbaa !2428
  %41 = add i64 %35, 2
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %38 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %PC, align 8, !tbaa !2428
  %44 = add i64 %37, 16
  store i64 %44, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4006c3:                                     ; preds = %block_4006a0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 1, i8* %13, align 1, !tbaa !2446
  store i8 1, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %14, align 1, !tbaa !2447
  %45 = add i64 %34, 21
  store i64 %45, i64* %PC, align 8, !tbaa !2428
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
  %.pre = load i64, i64* %PC, align 8
  br label %block_40139f

block_40145c:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_401434
  %95 = phi i64 [ %230, %block_401434 ], [ %196, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %96 = phi i64 [ %395, %block_401434 ], [ %.pre5, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %97 = add i64 %96, -32
  %98 = add i64 %95, 4
  store i64 %98, i64* %PC, align 8
  %99 = inttoptr i64 %97 to i32*
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %RAX, align 8, !tbaa !2428
  %102 = add i64 %96, -16
  %103 = add i64 %95, 8
  store i64 %103, i64* %PC, align 8
  %104 = inttoptr i64 %102 to i64*
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %RCX, align 8, !tbaa !2428
  %106 = add i64 %96, -24
  %107 = add i64 %95, 12
  store i64 %107, i64* %PC, align 8
  %108 = inttoptr i64 %106 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  store i64 %110, i64* %RDX, align 8, !tbaa !2428
  %111 = shl nsw i64 %110, 3
  %112 = add i64 %111, %105
  %113 = add i64 %95, 16
  store i64 %113, i64* %PC, align 8
  %114 = inttoptr i64 %112 to i64*
  store i64 %101, i64* %114, align 8
  %115 = load i64, i64* %PC, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %PC, align 8
  %117 = load i64, i64* %8, align 8, !tbaa !2428
  %118 = add i64 %117, 8
  %119 = inttoptr i64 %117 to i64*
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %RBP, align 8, !tbaa !2428
  store i64 %118, i64* %8, align 8, !tbaa !2428
  %121 = add i64 %115, 2
  store i64 %121, i64* %PC, align 8
  %122 = inttoptr i64 %118 to i64*
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %PC, align 8, !tbaa !2428
  %124 = add i64 %117, 16
  store i64 %124, i64* %8, align 8, !tbaa !2428
  ret %struct.Memory* %168

block_40139f:                                     ; preds = %block_401439, %block_401370
  %125 = phi i64 [ %.pre, %block_401370 ], [ %229, %block_401439 ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_401370 ], [ %168, %block_401439 ]
  store i64 2, i64* %RAX, align 8, !tbaa !2428
  %126 = load i64, i64* %RBP, align 8
  %127 = add i64 %126, -24
  %128 = add i64 %125, 8
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %127 to i32*
  %130 = load i32, i32* %129, align 4
  %131 = zext i32 %130 to i64
  store i64 %131, i64* %RCX, align 8, !tbaa !2428
  %132 = add i64 %126, -20
  %133 = add i64 %125, 11
  store i64 %133, i64* %PC, align 8
  %134 = inttoptr i64 %132 to i32*
  %135 = load i32, i32* %134, align 4
  %136 = zext i32 %135 to i64
  store i64 %136, i64* %RDX, align 8, !tbaa !2428
  %137 = add i64 %126, -36
  %138 = add i64 %125, 14
  store i64 %138, i64* %PC, align 8
  %139 = inttoptr i64 %137 to i32*
  store i32 2, i32* %139, align 4
  %140 = load i32, i32* %EDX, align 4
  %141 = zext i32 %140 to i64
  %142 = load i64, i64* %PC, align 8
  store i64 %141, i64* %RAX, align 8, !tbaa !2428
  %143 = sext i32 %140 to i64
  %144 = lshr i64 %143, 32
  store i64 %144, i64* %93, align 8, !tbaa !2428
  %145 = load i64, i64* %RBP, align 8
  %146 = add i64 %145, -36
  %147 = add i64 %142, 6
  store i64 %147, i64* %PC, align 8
  %148 = inttoptr i64 %146 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = zext i32 %149 to i64
  store i64 %150, i64* %RSI, align 8, !tbaa !2428
  %151 = add i64 %142, 8
  store i64 %151, i64* %PC, align 8
  %152 = sext i32 %149 to i64
  %153 = shl nuw i64 %144, 32
  %154 = or i64 %153, %141
  %155 = sdiv i64 %154, %152
  %156 = shl i64 %155, 32
  %157 = ashr exact i64 %156, 32
  %158 = icmp eq i64 %155, %157
  br i1 %158, label %161, label %159

; <label>:159:                                    ; preds = %block_40139f
  %160 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %151, %struct.Memory* %MEMORY.1) #9
  %.pre2 = load i32, i32* %EAX, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:161:                                    ; preds = %block_40139f
  %162 = srem i64 %154, %152
  %163 = and i64 %155, 4294967295
  store i64 %163, i64* %94, align 8, !tbaa !2428
  %164 = and i64 %162, 4294967295
  store i64 %164, i64* %93, align 8, !tbaa !2428
  store i8 0, i8* %44, align 1, !tbaa !2432
  store i8 0, i8* %51, align 1, !tbaa !2446
  store i8 0, i8* %57, align 1, !tbaa !2447
  store i8 0, i8* %60, align 1, !tbaa !2448
  store i8 0, i8* %63, align 1, !tbaa !2449
  store i8 0, i8* %70, align 1, !tbaa !2450
  %165 = trunc i64 %155 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %161, %159
  %166 = phi i64 [ %.pre3, %159 ], [ %151, %161 ]
  %167 = phi i32 [ %.pre2, %159 ], [ %165, %161 ]
  %168 = phi %struct.Memory* [ %160, %159 ], [ %MEMORY.1, %161 ]
  %169 = load i32, i32* %ECX, align 4
  %170 = sub i32 %169, %167
  %171 = icmp ult i32 %169, %167
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %44, align 1, !tbaa !2432
  %173 = and i32 %170, 255
  %174 = tail call i32 @llvm.ctpop.i32(i32 %173) #8
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  store i8 %177, i8* %51, align 1, !tbaa !2446
  %178 = xor i32 %167, %169
  %179 = xor i32 %178, %170
  %180 = lshr i32 %179, 4
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  store i8 %182, i8* %57, align 1, !tbaa !2447
  %183 = icmp eq i32 %170, 0
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %60, align 1, !tbaa !2448
  %185 = lshr i32 %170, 31
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %63, align 1, !tbaa !2449
  %187 = lshr i32 %169, 31
  %188 = lshr i32 %167, 31
  %189 = xor i32 %188, %187
  %190 = xor i32 %185, %187
  %191 = add nuw nsw i32 %190, %189
  %192 = icmp eq i32 %191, 2
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %70, align 1, !tbaa !2450
  %194 = icmp ne i8 %186, 0
  %195 = xor i1 %194, %192
  %.demorgan = or i1 %183, %195
  %.v = select i1 %.demorgan, i64 8, i64 167
  %196 = add i64 %166, %.v
  store i64 %196, i64* %PC, align 8, !tbaa !2428
  %.pre5 = load i64, i64* %RBP, align 8
  br i1 %.demorgan, label %block_4013bd, label %block_40145c

block_401439:                                     ; preds = %block_40140e
  %197 = add i64 %456, 4
  store i64 %197, i64* %PC, align 8
  %198 = load i64, i64* %414, align 8
  store i64 %198, i64* %RAX, align 8, !tbaa !2428
  %199 = add i64 %456, 8
  store i64 %199, i64* %PC, align 8
  %200 = load i32, i32* %418, align 4
  %201 = sext i32 %200 to i64
  store i64 %201, i64* %RCX, align 8, !tbaa !2428
  %202 = shl nsw i64 %201, 3
  %203 = add i64 %202, %198
  %204 = add i64 %456, 12
  store i64 %204, i64* %PC, align 8
  %205 = inttoptr i64 %203 to i64*
  %206 = load i64, i64* %205, align 8
  store i64 %206, i64* %RAX, align 8, !tbaa !2428
  %207 = add i64 %456, 16
  store i64 %207, i64* %PC, align 8
  %208 = load i64, i64* %414, align 8
  store i64 %208, i64* %RCX, align 8, !tbaa !2428
  %209 = add i64 %395, -24
  %210 = add i64 %456, 20
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %209 to i32*
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  store i64 %213, i64* %RDX, align 8, !tbaa !2428
  %214 = shl nsw i64 %213, 3
  %215 = add i64 %214, %208
  %216 = add i64 %456, 24
  store i64 %216, i64* %PC, align 8
  %217 = inttoptr i64 %215 to i64*
  store i64 %206, i64* %217, align 8
  %218 = load i64, i64* %RBP, align 8
  %219 = add i64 %218, -28
  %220 = load i64, i64* %PC, align 8
  %221 = add i64 %220, 3
  store i64 %221, i64* %PC, align 8
  %222 = inttoptr i64 %219 to i32*
  %223 = load i32, i32* %222, align 4
  %224 = zext i32 %223 to i64
  store i64 %224, i64* %RSI, align 8, !tbaa !2428
  %225 = add i64 %218, -24
  %226 = add i64 %220, 6
  store i64 %226, i64* %PC, align 8
  %227 = inttoptr i64 %225 to i32*
  store i32 %223, i32* %227, align 4
  %228 = load i64, i64* %PC, align 8
  %229 = add i64 %228, -184
  store i64 %229, i64* %PC, align 8, !tbaa !2428
  br label %block_40139f

block_401434:                                     ; preds = %block_40140e
  %230 = add i64 %456, 40
  store i64 %230, i64* %PC, align 8, !tbaa !2428
  br label %block_40145c

block_4013d2:                                     ; preds = %block_4013bd
  %231 = add i64 %356, -8
  %232 = add i64 %393, 4
  store i64 %232, i64* %PC, align 8
  %233 = inttoptr i64 %231 to i64*
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %RAX, align 8, !tbaa !2428
  %235 = add i64 %356, -16
  %236 = add i64 %393, 8
  store i64 %236, i64* %PC, align 8
  %237 = inttoptr i64 %235 to i64*
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %RCX, align 8, !tbaa !2428
  %239 = add i64 %393, 12
  store i64 %239, i64* %PC, align 8
  %240 = load i32, i32* %360, align 4
  %241 = sext i32 %240 to i64
  store i64 %241, i64* %RDX, align 8, !tbaa !2428
  %242 = shl nsw i64 %241, 3
  %243 = add i64 %242, %238
  %244 = add i64 %393, 16
  store i64 %244, i64* %PC, align 8
  %245 = inttoptr i64 %243 to i64*
  %246 = load i64, i64* %245, align 8
  store i64 %246, i64* %RCX, align 8, !tbaa !2428
  %247 = shl i64 %246, 3
  %248 = add i64 %247, %234
  %249 = add i64 %393, 20
  store i64 %249, i64* %PC, align 8
  %250 = inttoptr i64 %248 to i64*
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %RAX, align 8, !tbaa !2428
  %252 = add i64 %393, 24
  store i64 %252, i64* %PC, align 8
  %253 = load i64, i64* %233, align 8
  store i64 %253, i64* %RCX, align 8, !tbaa !2428
  %254 = add i64 %393, 28
  store i64 %254, i64* %PC, align 8
  %255 = load i64, i64* %237, align 8
  store i64 %255, i64* %RDX, align 8, !tbaa !2428
  %256 = add i64 %393, 31
  store i64 %256, i64* %PC, align 8
  %257 = load i32, i32* %360, align 4
  %258 = add i32 %257, 1
  %259 = zext i32 %258 to i64
  store i64 %259, i64* %RSI, align 8, !tbaa !2428
  %260 = icmp eq i32 %257, -1
  %261 = icmp eq i32 %258, 0
  %262 = or i1 %260, %261
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %44, align 1, !tbaa !2432
  %264 = and i32 %258, 255
  %265 = tail call i32 @llvm.ctpop.i32(i32 %264) #8
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  %268 = xor i8 %267, 1
  store i8 %268, i8* %51, align 1, !tbaa !2446
  %269 = xor i32 %257, %258
  %270 = lshr i32 %269, 4
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  store i8 %272, i8* %57, align 1, !tbaa !2447
  %273 = zext i1 %261 to i8
  store i8 %273, i8* %60, align 1, !tbaa !2448
  %274 = lshr i32 %258, 31
  %275 = trunc i32 %274 to i8
  store i8 %275, i8* %63, align 1, !tbaa !2449
  %276 = lshr i32 %257, 31
  %277 = xor i32 %274, %276
  %278 = add nuw nsw i32 %277, %274
  %279 = icmp eq i32 %278, 2
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %70, align 1, !tbaa !2450
  %281 = sext i32 %258 to i64
  store i64 %281, i64* %RDI, align 8, !tbaa !2428
  %282 = shl nsw i64 %281, 3
  %283 = add i64 %282, %255
  %284 = add i64 %393, 41
  store i64 %284, i64* %PC, align 8
  %285 = inttoptr i64 %283 to i64*
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %RDX, align 8, !tbaa !2428
  %287 = shl i64 %286, 3
  %288 = add i64 %287, %253
  %289 = add i64 %393, 45
  store i64 %289, i64* %PC, align 8
  %290 = inttoptr i64 %288 to i64*
  %291 = load i64, i64* %290, align 8
  %292 = sub i64 %251, %291
  %293 = icmp ult i64 %251, %291
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %44, align 1, !tbaa !2432
  %295 = trunc i64 %292 to i32
  %296 = and i32 %295, 255
  %297 = tail call i32 @llvm.ctpop.i32(i32 %296) #8
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = xor i8 %299, 1
  store i8 %300, i8* %51, align 1, !tbaa !2446
  %301 = xor i64 %291, %251
  %302 = xor i64 %301, %292
  %303 = lshr i64 %302, 4
  %304 = trunc i64 %303 to i8
  %305 = and i8 %304, 1
  store i8 %305, i8* %57, align 1, !tbaa !2447
  %306 = icmp eq i64 %292, 0
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %60, align 1, !tbaa !2448
  %308 = lshr i64 %292, 63
  %309 = trunc i64 %308 to i8
  store i8 %309, i8* %63, align 1, !tbaa !2449
  %310 = lshr i64 %251, 63
  %311 = lshr i64 %291, 63
  %312 = xor i64 %311, %310
  %313 = xor i64 %308, %310
  %314 = add nuw nsw i64 %313, %312
  %315 = icmp eq i64 %314, 2
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %70, align 1, !tbaa !2450
  %317 = or i1 %306, %293
  %.v7 = select i1 %317, i64 60, i64 51
  %318 = add i64 %393, %.v7
  store i64 %318, i64* %PC, align 8, !tbaa !2428
  br i1 %317, label %block_40140e, label %block_401405

block_4013bd:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %319 = add i64 %.pre5, -24
  %320 = add i64 %196, 3
  store i64 %320, i64* %PC, align 8
  %321 = inttoptr i64 %319 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RAX, align 8, !tbaa !2428
  %324 = add i64 %196, 6
  store i64 %324, i64* %PC, align 8
  %325 = load i32, i32* %321, align 4
  %326 = add i32 %325, %322
  %327 = zext i32 %326 to i64
  store i64 %327, i64* %RAX, align 8, !tbaa !2428
  %328 = icmp ult i32 %326, %322
  %329 = icmp ult i32 %326, %325
  %330 = or i1 %328, %329
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %44, align 1, !tbaa !2432
  %332 = and i32 %326, 255
  %333 = tail call i32 @llvm.ctpop.i32(i32 %332) #8
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  store i8 %336, i8* %51, align 1, !tbaa !2446
  %337 = xor i32 %325, %322
  %338 = xor i32 %337, %326
  %339 = lshr i32 %338, 4
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  store i8 %341, i8* %57, align 1, !tbaa !2447
  %342 = icmp eq i32 %326, 0
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %60, align 1, !tbaa !2448
  %344 = lshr i32 %326, 31
  %345 = trunc i32 %344 to i8
  store i8 %345, i8* %63, align 1, !tbaa !2449
  %346 = lshr i32 %322, 31
  %347 = lshr i32 %325, 31
  %348 = xor i32 %344, %346
  %349 = xor i32 %344, %347
  %350 = add nuw nsw i32 %348, %349
  %351 = icmp eq i32 %350, 2
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %70, align 1, !tbaa !2450
  %353 = add i64 %.pre5, -28
  %354 = add i64 %196, 9
  store i64 %354, i64* %PC, align 8
  %355 = inttoptr i64 %353 to i32*
  store i32 %326, i32* %355, align 4
  %356 = load i64, i64* %RBP, align 8
  %357 = add i64 %356, -28
  %358 = load i64, i64* %PC, align 8
  %359 = add i64 %358, 3
  store i64 %359, i64* %PC, align 8
  %360 = inttoptr i64 %357 to i32*
  %361 = load i32, i32* %360, align 4
  %362 = zext i32 %361 to i64
  store i64 %362, i64* %RAX, align 8, !tbaa !2428
  %363 = add i64 %356, -20
  %364 = add i64 %358, 6
  store i64 %364, i64* %PC, align 8
  %365 = inttoptr i64 %363 to i32*
  %366 = load i32, i32* %365, align 4
  %367 = sub i32 %361, %366
  %368 = icmp ult i32 %361, %366
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %44, align 1, !tbaa !2432
  %370 = and i32 %367, 255
  %371 = tail call i32 @llvm.ctpop.i32(i32 %370) #8
  %372 = trunc i32 %371 to i8
  %373 = and i8 %372, 1
  %374 = xor i8 %373, 1
  store i8 %374, i8* %51, align 1, !tbaa !2446
  %375 = xor i32 %366, %361
  %376 = xor i32 %375, %367
  %377 = lshr i32 %376, 4
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  store i8 %379, i8* %57, align 1, !tbaa !2447
  %380 = icmp eq i32 %367, 0
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %60, align 1, !tbaa !2448
  %382 = lshr i32 %367, 31
  %383 = trunc i32 %382 to i8
  store i8 %383, i8* %63, align 1, !tbaa !2449
  %384 = lshr i32 %361, 31
  %385 = lshr i32 %366, 31
  %386 = xor i32 %385, %384
  %387 = xor i32 %382, %384
  %388 = add nuw nsw i32 %387, %386
  %389 = icmp eq i32 %388, 2
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %70, align 1, !tbaa !2450
  %391 = icmp ne i8 %383, 0
  %392 = xor i1 %391, %389
  %.v6 = select i1 %392, i64 12, i64 72
  %393 = add i64 %358, %.v6
  store i64 %393, i64* %PC, align 8, !tbaa !2428
  br i1 %392, label %block_4013d2, label %block_40140e

block_40140e:                                     ; preds = %block_4013bd, %block_401405, %block_4013d2
  %394 = phi i64 [ %.pre4, %block_401405 ], [ %393, %block_4013bd ], [ %318, %block_4013d2 ]
  %395 = load i64, i64* %RBP, align 8
  %396 = add i64 %395, -8
  %397 = add i64 %394, 4
  store i64 %397, i64* %PC, align 8
  %398 = inttoptr i64 %396 to i64*
  %399 = load i64, i64* %398, align 8
  store i64 %399, i64* %RAX, align 8, !tbaa !2428
  %400 = add i64 %395, -32
  %401 = add i64 %394, 8
  store i64 %401, i64* %PC, align 8
  %402 = inttoptr i64 %400 to i32*
  %403 = load i32, i32* %402, align 4
  %404 = sext i32 %403 to i64
  store i64 %404, i64* %RCX, align 8, !tbaa !2428
  %405 = shl nsw i64 %404, 3
  %406 = add i64 %405, %399
  %407 = add i64 %394, 12
  store i64 %407, i64* %PC, align 8
  %408 = inttoptr i64 %406 to i64*
  %409 = load i64, i64* %408, align 8
  store i64 %409, i64* %RAX, align 8, !tbaa !2428
  %410 = add i64 %394, 16
  store i64 %410, i64* %PC, align 8
  %411 = load i64, i64* %398, align 8
  store i64 %411, i64* %RCX, align 8, !tbaa !2428
  %412 = add i64 %395, -16
  %413 = add i64 %394, 20
  store i64 %413, i64* %PC, align 8
  %414 = inttoptr i64 %412 to i64*
  %415 = load i64, i64* %414, align 8
  store i64 %415, i64* %RDX, align 8, !tbaa !2428
  %416 = add i64 %395, -28
  %417 = add i64 %394, 24
  store i64 %417, i64* %PC, align 8
  %418 = inttoptr i64 %416 to i32*
  %419 = load i32, i32* %418, align 4
  %420 = sext i32 %419 to i64
  store i64 %420, i64* %RSI, align 8, !tbaa !2428
  %421 = shl nsw i64 %420, 3
  %422 = add i64 %421, %415
  %423 = add i64 %394, 28
  store i64 %423, i64* %PC, align 8
  %424 = inttoptr i64 %422 to i64*
  %425 = load i64, i64* %424, align 8
  store i64 %425, i64* %RDX, align 8, !tbaa !2428
  %426 = shl i64 %425, 3
  %427 = add i64 %426, %411
  %428 = add i64 %394, 32
  store i64 %428, i64* %PC, align 8
  %429 = inttoptr i64 %427 to i64*
  %430 = load i64, i64* %429, align 8
  %431 = sub i64 %409, %430
  %432 = icmp ult i64 %409, %430
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %44, align 1, !tbaa !2432
  %434 = trunc i64 %431 to i32
  %435 = and i32 %434, 255
  %436 = tail call i32 @llvm.ctpop.i32(i32 %435) #8
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  %439 = xor i8 %438, 1
  store i8 %439, i8* %51, align 1, !tbaa !2446
  %440 = xor i64 %430, %409
  %441 = xor i64 %440, %431
  %442 = lshr i64 %441, 4
  %443 = trunc i64 %442 to i8
  %444 = and i8 %443, 1
  store i8 %444, i8* %57, align 1, !tbaa !2447
  %445 = icmp eq i64 %431, 0
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %60, align 1, !tbaa !2448
  %447 = lshr i64 %431, 63
  %448 = trunc i64 %447 to i8
  store i8 %448, i8* %63, align 1, !tbaa !2449
  %449 = lshr i64 %409, 63
  %450 = lshr i64 %430, 63
  %451 = xor i64 %450, %449
  %452 = xor i64 %447, %449
  %453 = add nuw nsw i64 %452, %451
  %454 = icmp eq i64 %453, 2
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %70, align 1, !tbaa !2450
  %.v8 = select i1 %432, i64 38, i64 43
  %456 = add i64 %394, %.v8
  store i64 %456, i64* %PC, align 8, !tbaa !2428
  br i1 %432, label %block_401434, label %block_401439

block_401405:                                     ; preds = %block_4013d2
  %457 = load i64, i64* %RBP, align 8
  %458 = add i64 %457, -28
  %459 = add i64 %318, 3
  store i64 %459, i64* %PC, align 8
  %460 = inttoptr i64 %458 to i32*
  %461 = load i32, i32* %460, align 4
  %462 = add i32 %461, 1
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RAX, align 8, !tbaa !2428
  %464 = icmp eq i32 %461, -1
  %465 = icmp eq i32 %462, 0
  %466 = or i1 %464, %465
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %44, align 1, !tbaa !2432
  %468 = and i32 %462, 255
  %469 = tail call i32 @llvm.ctpop.i32(i32 %468) #8
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  %472 = xor i8 %471, 1
  store i8 %472, i8* %51, align 1, !tbaa !2446
  %473 = xor i32 %461, %462
  %474 = lshr i32 %473, 4
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  store i8 %476, i8* %57, align 1, !tbaa !2447
  %477 = zext i1 %465 to i8
  store i8 %477, i8* %60, align 1, !tbaa !2448
  %478 = lshr i32 %462, 31
  %479 = trunc i32 %478 to i8
  store i8 %479, i8* %63, align 1, !tbaa !2449
  %480 = lshr i32 %461, 31
  %481 = xor i32 %478, %480
  %482 = add nuw nsw i32 %481, %478
  %483 = icmp eq i32 %482, 2
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %70, align 1, !tbaa !2450
  %485 = add i64 %318, 9
  store i64 %485, i64* %PC, align 8
  store i32 %462, i32* %460, align 4
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
  %39 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %39, i64* %PC, align 8, !tbaa !2428
  %40 = tail call fastcc %struct.Memory* @ext_6020c0___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %41 = load i64, i64* %PC, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %PC, align 8
  %43 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %42, %struct.Memory* %40)
  ret %struct.Memory* %43
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
  %6 = load i64, i64* %RSP, align 8, !tbaa !2428
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 8
  %9 = load i64, i64* %PC, align 8
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %10 = add i64 %6, -56
  store i64 %10, i64* %RSP, align 8, !tbaa !2428
  %11 = icmp ult i64 %7, 48
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
  store i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 4), i64* %RAX, align 8, !tbaa !2428
  %39 = add i64 %6, -16
  %40 = load i64, i64* %RDI, align 8
  %41 = add i64 %9, 21
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %RBP, align 8
  %44 = add i64 %43, -16
  %45 = load i64, i64* %RAX, align 8
  %46 = load i64, i64* %PC, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48, align 8
  %49 = load i64, i64* %RBP, align 8
  %50 = add i64 %49, -8
  %51 = load i64, i64* %PC, align 8
  %52 = add i64 %51, 4
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %50 to i64*
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %RDI, align 8, !tbaa !2428
  %55 = add i64 %51, -314
  %56 = add i64 %51, 9
  %57 = load i64, i64* %RSP, align 8, !tbaa !2428
  %58 = add i64 %57, -8
  %59 = inttoptr i64 %58 to i64*
  store i64 %56, i64* %59, align 8
  store i64 %58, i64* %RSP, align 8, !tbaa !2428
  store i64 %55, i64* %PC, align 8, !tbaa !2428
  %60 = tail call fastcc %struct.Memory* @ext_6020d8_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -24
  %63 = load i64, i64* %RAX, align 8
  %64 = load i64, i64* %PC, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %62 to i64*
  store i64 %63, i64* %66, align 8
  %67 = load i64, i64* %RBP, align 8
  %68 = add i64 %67, -24
  %69 = load i64, i64* %PC, align 8
  %70 = add i64 %69, 4
  store i64 %70, i64* %PC, align 8
  %71 = inttoptr i64 %68 to i64*
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %RAX, align 8, !tbaa !2428
  %73 = add i64 %67, -32
  %74 = add i64 %69, 8
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %73 to i64*
  store i64 %72, i64* %75, align 8
  %76 = load i64, i64* %RBP, align 8
  %77 = add i64 %76, -36
  %78 = load i64, i64* %PC, align 8
  %79 = add i64 %78, 7
  store i64 %79, i64* %PC, align 8
  %80 = inttoptr i64 %77 to i32*
  store i32 0, i32* %80, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_400756

block_400756:                                     ; preds = %block_400764, %block_400720
  %81 = phi i64 [ %.pre, %block_400720 ], [ %210, %block_400764 ]
  %MEMORY.0 = phi %struct.Memory* [ %60, %block_400720 ], [ %131, %block_400764 ]
  %82 = load i64, i64* %RBP, align 8
  %83 = add i64 %82, -36
  %84 = add i64 %81, 4
  store i64 %84, i64* %PC, align 8
  %85 = inttoptr i64 %83 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %RAX, align 8, !tbaa !2428
  %88 = add i64 %82, -8
  %89 = add i64 %81, 8
  store i64 %89, i64* %PC, align 8
  %90 = inttoptr i64 %88 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = sub i64 %87, %91
  %93 = icmp ult i64 %87, %91
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %13, align 1, !tbaa !2432
  %95 = trunc i64 %92 to i32
  %96 = and i32 %95, 255
  %97 = tail call i32 @llvm.ctpop.i32(i32 %96) #8
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  %100 = xor i8 %99, 1
  store i8 %100, i8* %20, align 1, !tbaa !2446
  %101 = xor i64 %91, %87
  %102 = xor i64 %101, %92
  %103 = lshr i64 %102, 4
  %104 = trunc i64 %103 to i8
  %105 = and i8 %104, 1
  store i8 %105, i8* %26, align 1, !tbaa !2447
  %106 = icmp eq i64 %92, 0
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %29, align 1, !tbaa !2448
  %108 = lshr i64 %92, 63
  %109 = trunc i64 %108 to i8
  store i8 %109, i8* %32, align 1, !tbaa !2449
  %110 = lshr i64 %87, 63
  %111 = lshr i64 %91, 63
  %112 = xor i64 %111, %110
  %113 = xor i64 %108, %110
  %114 = add nuw nsw i64 %113, %112
  %115 = icmp eq i64 %114, 2
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %38, align 1, !tbaa !2450
  %.v = select i1 %93, i64 14, i64 66
  %117 = add i64 %81, %.v
  store i64 %117, i64* %PC, align 8, !tbaa !2428
  br i1 %93, label %block_400764, label %block_400798

block_400764:                                     ; preds = %block_400756
  %118 = add i64 %82, -16
  %119 = add i64 %117, 4
  store i64 %119, i64* %PC, align 8
  %120 = inttoptr i64 %118 to i64*
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %RAX, align 8, !tbaa !2428
  %122 = add i64 %82, -48
  %123 = add i64 %117, 8
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %122 to i64*
  store i64 %121, i64* %124, align 8
  %125 = load i64, i64* %PC, align 8
  %126 = add i64 %125, 68
  %127 = add i64 %125, 5
  %128 = load i64, i64* %RSP, align 8, !tbaa !2428
  %129 = add i64 %128, -8
  %130 = inttoptr i64 %129 to i64*
  store i64 %127, i64* %130, align 8
  store i64 %129, i64* %RSP, align 8, !tbaa !2428
  store i64 %126, i64* %PC, align 8, !tbaa !2428
  %131 = tail call %struct.Memory* @sub_4007b0_random4_renamed_(%struct.State* nonnull %0, i64 %126, %struct.Memory* %MEMORY.0)
  %132 = load i64, i64* %RBP, align 8
  %133 = add i64 %132, -48
  %134 = load i64, i64* %PC, align 8
  %135 = add i64 %134, 4
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %133 to i64*
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %RCX, align 8, !tbaa !2428
  %138 = load i64, i64* %RAX, align 8
  %139 = add i64 %138, %137
  %140 = add i64 %134, 7
  store i64 %140, i64* %PC, align 8
  %141 = inttoptr i64 %139 to i8*
  %142 = load i8, i8* %141, align 1
  store i8 %142, i8* %DL, align 1, !tbaa !2453
  %143 = add i64 %132, -32
  %144 = add i64 %134, 11
  store i64 %144, i64* %PC, align 8
  %145 = inttoptr i64 %143 to i64*
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %RAX, align 8, !tbaa !2428
  %147 = add i64 %134, 13
  store i64 %147, i64* %PC, align 8
  %148 = inttoptr i64 %146 to i8*
  store i8 %142, i8* %148, align 1
  %149 = load i64, i64* %RBP, align 8
  %150 = add i64 %149, -32
  %151 = load i64, i64* %PC, align 8
  %152 = add i64 %151, 4
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %150 to i64*
  %154 = load i64, i64* %153, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %RAX, align 8, !tbaa !2428
  %156 = icmp eq i64 %154, -1
  %157 = icmp eq i64 %155, 0
  %158 = or i1 %156, %157
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %13, align 1, !tbaa !2432
  %160 = trunc i64 %155 to i32
  %161 = and i32 %160, 255
  %162 = tail call i32 @llvm.ctpop.i32(i32 %161) #8
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  %165 = xor i8 %164, 1
  store i8 %165, i8* %20, align 1, !tbaa !2446
  %166 = xor i64 %154, %155
  %167 = lshr i64 %166, 4
  %168 = trunc i64 %167 to i8
  %169 = and i8 %168, 1
  store i8 %169, i8* %26, align 1, !tbaa !2447
  %170 = zext i1 %157 to i8
  store i8 %170, i8* %29, align 1, !tbaa !2448
  %171 = lshr i64 %155, 63
  %172 = trunc i64 %171 to i8
  store i8 %172, i8* %32, align 1, !tbaa !2449
  %173 = lshr i64 %154, 63
  %174 = xor i64 %171, %173
  %175 = add nuw nsw i64 %174, %171
  %176 = icmp eq i64 %175, 2
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %38, align 1, !tbaa !2450
  %178 = add i64 %151, 12
  store i64 %178, i64* %PC, align 8
  store i64 %155, i64* %153, align 8
  %179 = load i64, i64* %RBP, align 8
  %180 = add i64 %179, -36
  %181 = load i64, i64* %PC, align 8
  %182 = add i64 %181, 3
  store i64 %182, i64* %PC, align 8
  %183 = inttoptr i64 %180 to i32*
  %184 = load i32, i32* %183, align 4
  %185 = add i32 %184, 1
  %186 = zext i32 %185 to i64
  store i64 %186, i64* %RAX, align 8, !tbaa !2428
  %187 = icmp eq i32 %184, -1
  %188 = icmp eq i32 %185, 0
  %189 = or i1 %187, %188
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %13, align 1, !tbaa !2432
  %191 = and i32 %185, 255
  %192 = tail call i32 @llvm.ctpop.i32(i32 %191) #8
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  %195 = xor i8 %194, 1
  store i8 %195, i8* %20, align 1, !tbaa !2446
  %196 = xor i32 %184, %185
  %197 = lshr i32 %196, 4
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  store i8 %199, i8* %26, align 1, !tbaa !2447
  %200 = zext i1 %188 to i8
  store i8 %200, i8* %29, align 1, !tbaa !2448
  %201 = lshr i32 %185, 31
  %202 = trunc i32 %201 to i8
  store i8 %202, i8* %32, align 1, !tbaa !2449
  %203 = lshr i32 %184, 31
  %204 = xor i32 %201, %203
  %205 = add nuw nsw i32 %204, %201
  %206 = icmp eq i32 %205, 2
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %38, align 1, !tbaa !2450
  %208 = add i64 %181, 9
  store i64 %208, i64* %PC, align 8
  store i32 %185, i32* %183, align 4
  %209 = load i64, i64* %PC, align 8
  %210 = add i64 %209, -61
  store i64 %210, i64* %PC, align 8, !tbaa !2428
  br label %block_400756

block_400798:                                     ; preds = %block_400756
  %211 = add i64 %82, -24
  %212 = add i64 %117, 4
  store i64 %212, i64* %PC, align 8
  %213 = inttoptr i64 %211 to i64*
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %RAX, align 8, !tbaa !2428
  %215 = load i64, i64* %RSP, align 8
  %216 = add i64 %215, 48
  store i64 %216, i64* %RSP, align 8, !tbaa !2428
  %217 = icmp ugt i64 %215, -49
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %13, align 1, !tbaa !2432
  %219 = trunc i64 %216 to i32
  %220 = and i32 %219, 255
  %221 = tail call i32 @llvm.ctpop.i32(i32 %220) #8
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  %224 = xor i8 %223, 1
  store i8 %224, i8* %20, align 1, !tbaa !2446
  %225 = xor i64 %215, 16
  %226 = xor i64 %225, %216
  %227 = lshr i64 %226, 4
  %228 = trunc i64 %227 to i8
  %229 = and i8 %228, 1
  store i8 %229, i8* %26, align 1, !tbaa !2447
  %230 = icmp eq i64 %216, 0
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %29, align 1, !tbaa !2448
  %232 = lshr i64 %216, 63
  %233 = trunc i64 %232 to i8
  store i8 %233, i8* %32, align 1, !tbaa !2449
  %234 = lshr i64 %215, 63
  %235 = xor i64 %232, %234
  %236 = add nuw nsw i64 %235, %232
  %237 = icmp eq i64 %236, 2
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %38, align 1, !tbaa !2450
  %239 = add i64 %117, 9
  store i64 %239, i64* %PC, align 8
  %240 = add i64 %215, 56
  %241 = inttoptr i64 %216 to i64*
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %RBP, align 8, !tbaa !2428
  store i64 %240, i64* %RSP, align 8, !tbaa !2428
  %243 = add i64 %117, 10
  store i64 %243, i64* %PC, align 8
  %244 = inttoptr i64 %240 to i64*
  %245 = load i64, i64* %244, align 8
  store i64 %245, i64* %PC, align 8, !tbaa !2428
  %246 = add i64 %215, 64
  store i64 %246, i64* %RSP, align 8, !tbaa !2428
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
  %9 = load i64, i64* %RSP, align 8, !tbaa !2428
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %7, i64* %11, align 8
  %12 = load i64, i64* %PC, align 8
  store i64 %10, i64* %RBP, align 8, !tbaa !2428
  %13 = load i64, i64* %R15, align 8
  %14 = add i64 %12, 5
  store i64 %14, i64* %PC, align 8
  %15 = add i64 %9, -16
  %16 = inttoptr i64 %15 to i64*
  store i64 %13, i64* %16, align 8
  %17 = load i64, i64* %R14, align 8
  %18 = load i64, i64* %PC, align 8
  %19 = add i64 %18, 2
  store i64 %19, i64* %PC, align 8
  %20 = add i64 %9, -24
  %21 = inttoptr i64 %20 to i64*
  store i64 %17, i64* %21, align 8
  %22 = load i64, i64* %RBX, align 8
  %23 = load i64, i64* %PC, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %PC, align 8
  %25 = add i64 %9, -32
  %26 = inttoptr i64 %25 to i64*
  store i64 %22, i64* %26, align 8
  %27 = load i64, i64* %PC, align 8
  %28 = add i64 %9, -13112
  store i64 %28, i64* %RSP, align 8, !tbaa !2428
  %29 = icmp ult i64 %25, 13080
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %31, align 1, !tbaa !2432
  %32 = trunc i64 %28 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #8
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %37, i8* %38, align 1, !tbaa !2446
  %39 = xor i64 %25, 16
  %40 = xor i64 %39, %28
  %41 = lshr i64 %40, 4
  %42 = trunc i64 %41 to i8
  %43 = and i8 %42, 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %43, i8* %44, align 1, !tbaa !2447
  %45 = icmp eq i64 %28, 0
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %46, i8* %47, align 1, !tbaa !2448
  %48 = lshr i64 %28, 63
  %49 = trunc i64 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %49, i8* %50, align 1, !tbaa !2449
  %51 = lshr i64 %25, 63
  %52 = xor i64 %48, %51
  %53 = add nuw nsw i64 %52, %51
  %54 = icmp eq i64 %53, 2
  %55 = zext i1 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %55, i8* %56, align 1, !tbaa !2450
  %57 = load i64, i64* %RBP, align 8
  %58 = add i64 %57, -32
  %59 = load i64, i64* %RDI, align 8
  %60 = add i64 %27, 11
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %58 to i64*
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* %RBP, align 8
  %63 = add i64 %62, -40
  %64 = load i64, i64* %RSI, align 8
  %65 = load i64, i64* %PC, align 8
  %66 = add i64 %65, 4
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %63 to i64*
  store i64 %64, i64* %67, align 8
  %68 = load i64, i64* %RBP, align 8
  %69 = add i64 %68, -32
  %70 = load i64, i64* %PC, align 8
  %71 = add i64 %70, 4
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %69 to i64*
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %RSI, align 8, !tbaa !2428
  %74 = add i64 %68, -112
  %75 = add i64 %70, 8
  store i64 %75, i64* %PC, align 8
  %76 = inttoptr i64 %74 to i64*
  store i64 %73, i64* %76, align 8
  %77 = load i64, i64* %RBP, align 8
  %78 = add i64 %77, -40
  %79 = load i64, i64* %PC, align 8
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC, align 8
  %81 = inttoptr i64 %78 to i64*
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %RSI, align 8, !tbaa !2428
  %84 = icmp eq i64 %82, -1
  %85 = icmp eq i64 %83, 0
  %86 = or i1 %84, %85
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %31, align 1, !tbaa !2432
  %88 = trunc i64 %83 to i32
  %89 = and i32 %88, 255
  %90 = tail call i32 @llvm.ctpop.i32(i32 %89) #8
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  %93 = xor i8 %92, 1
  store i8 %93, i8* %38, align 1, !tbaa !2446
  %94 = xor i64 %82, %83
  %95 = lshr i64 %94, 4
  %96 = trunc i64 %95 to i8
  %97 = and i8 %96, 1
  store i8 %97, i8* %44, align 1, !tbaa !2447
  %98 = zext i1 %85 to i8
  store i8 %98, i8* %47, align 1, !tbaa !2448
  %99 = lshr i64 %83, 63
  %100 = trunc i64 %99 to i8
  store i8 %100, i8* %50, align 1, !tbaa !2449
  %101 = lshr i64 %82, 63
  %102 = xor i64 %99, %101
  %103 = add nuw nsw i64 %102, %99
  %104 = icmp eq i64 %103, 2
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %56, align 1, !tbaa !2450
  store i64 %83, i64* %RDI, align 8, !tbaa !2428
  %106 = add i64 %79, -656
  %107 = add i64 %79, 16
  %108 = load i64, i64* %RSP, align 8, !tbaa !2428
  %109 = add i64 %108, -8
  %110 = inttoptr i64 %109 to i64*
  store i64 %107, i64* %110, align 8
  store i64 %109, i64* %RSP, align 8, !tbaa !2428
  store i64 %106, i64* %PC, align 8, !tbaa !2428
  %111 = tail call fastcc %struct.Memory* @ext_6020d8_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %112 = load i64, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %31, align 1, !tbaa !2432
  store i8 1, i8* %38, align 1, !tbaa !2446
  store i8 1, i8* %47, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  store i8 0, i8* %44, align 1, !tbaa !2447
  store i64 256, i64* %RDX, align 8, !tbaa !2428
  %113 = load i64, i64* %RBP, align 8
  %114 = add i64 %113, -10624
  store i64 %114, i64* %RDI, align 8, !tbaa !2428
  store i64 2048, i64* %RSI, align 8, !tbaa !2428
  %115 = add i64 %113, -10368
  store i64 %115, i64* %R9, align 8, !tbaa !2428
  %116 = add i64 %113, -8320
  store i64 %116, i64* %R10, align 8, !tbaa !2428
  %117 = add i64 %113, -6272
  store i64 %117, i64* %R11, align 8, !tbaa !2428
  store i64 4096, i64* %R8, align 8, !tbaa !2428
  store i64 4096, i64* %RBX, align 8, !tbaa !2428
  %118 = add i64 %113, -4224
  store i64 %118, i64* %R14, align 8, !tbaa !2428
  %119 = add i64 %113, -120
  %120 = load i64, i64* %RAX, align 8
  %121 = add i64 %112, 64
  store i64 %121, i64* %PC, align 8
  %122 = inttoptr i64 %119 to i64*
  store i64 %120, i64* %122, align 8
  %123 = load i64, i64* %RBP, align 8
  %124 = add i64 %123, -120
  %125 = load i64, i64* %PC, align 8
  %126 = add i64 %125, 4
  store i64 %126, i64* %PC, align 8
  %127 = inttoptr i64 %124 to i64*
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %RAX, align 8, !tbaa !2428
  %129 = add i64 %123, -40
  %130 = add i64 %125, 8
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %129 to i64*
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %R15, align 8, !tbaa !2428
  %134 = icmp eq i64 %132, -1
  %135 = icmp eq i64 %133, 0
  %136 = or i1 %134, %135
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %31, align 1, !tbaa !2432
  %138 = trunc i64 %133 to i32
  %139 = and i32 %138, 255
  %140 = tail call i32 @llvm.ctpop.i32(i32 %139) #8
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  store i8 %143, i8* %38, align 1, !tbaa !2446
  %144 = xor i64 %132, %133
  %145 = lshr i64 %144, 4
  %146 = trunc i64 %145 to i8
  %147 = and i8 %146, 1
  store i8 %147, i8* %44, align 1, !tbaa !2447
  %148 = zext i1 %135 to i8
  store i8 %148, i8* %47, align 1, !tbaa !2448
  %149 = lshr i64 %133, 63
  %150 = trunc i64 %149 to i8
  store i8 %150, i8* %50, align 1, !tbaa !2449
  %151 = lshr i64 %132, 63
  %152 = xor i64 %149, %151
  %153 = add nuw nsw i64 %152, %149
  %154 = icmp eq i64 %153, 2
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %56, align 1, !tbaa !2450
  %156 = add i64 %123, -13008
  %157 = load i64, i64* %RDI, align 8
  %158 = add i64 %125, 23
  store i64 %158, i64* %PC, align 8
  %159 = inttoptr i64 %156 to i64*
  store i64 %157, i64* %159, align 8
  %160 = load i64, i64* %RAX, align 8
  %161 = load i64, i64* %PC, align 8
  store i64 %160, i64* %RDI, align 8, !tbaa !2428
  %162 = load i64, i64* %RBP, align 8
  %163 = add i64 %162, -13016
  %164 = load i64, i64* %RSI, align 8
  %165 = add i64 %161, 10
  store i64 %165, i64* %PC, align 8
  %166 = inttoptr i64 %163 to i64*
  store i64 %164, i64* %166, align 8
  %167 = load i32, i32* %ECX, align 4
  %168 = zext i32 %167 to i64
  %169 = load i64, i64* %PC, align 8
  store i64 %168, i64* %RSI, align 8, !tbaa !2428
  %170 = load i64, i64* %RBP, align 8
  %171 = add i64 %170, -13024
  %172 = load i64, i64* %RDX, align 8
  %173 = add i64 %169, 9
  store i64 %173, i64* %PC, align 8
  %174 = inttoptr i64 %171 to i64*
  store i64 %172, i64* %174, align 8
  %175 = load i64, i64* %R15, align 8
  %176 = load i64, i64* %PC, align 8
  store i64 %175, i64* %RDX, align 8, !tbaa !2428
  %177 = load i64, i64* %RBP, align 8
  %178 = add i64 %177, -13032
  %179 = load i64, i64* %R14, align 8
  %180 = add i64 %176, 10
  store i64 %180, i64* %PC, align 8
  %181 = inttoptr i64 %178 to i64*
  store i64 %179, i64* %181, align 8
  %182 = load i64, i64* %RBP, align 8
  %183 = add i64 %182, -13036
  %184 = load i32, i32* %ECX, align 4
  %185 = load i64, i64* %PC, align 8
  %186 = add i64 %185, 6
  store i64 %186, i64* %PC, align 8
  %187 = inttoptr i64 %183 to i32*
  store i32 %184, i32* %187, align 4
  %188 = load i64, i64* %RBP, align 8
  %189 = add i64 %188, -13048
  %190 = load i64, i64* %R10, align 8
  %191 = load i64, i64* %PC, align 8
  %192 = add i64 %191, 7
  store i64 %192, i64* %PC, align 8
  %193 = inttoptr i64 %189 to i64*
  store i64 %190, i64* %193, align 8
  %194 = load i64, i64* %RBP, align 8
  %195 = add i64 %194, -13056
  %196 = load i64, i64* %R11, align 8
  %197 = load i64, i64* %PC, align 8
  %198 = add i64 %197, 7
  store i64 %198, i64* %PC, align 8
  %199 = inttoptr i64 %195 to i64*
  store i64 %196, i64* %199, align 8
  %200 = load i64, i64* %RBP, align 8
  %201 = add i64 %200, -13064
  %202 = load i64, i64* %RBX, align 8
  %203 = load i64, i64* %PC, align 8
  %204 = add i64 %203, 7
  store i64 %204, i64* %PC, align 8
  %205 = inttoptr i64 %201 to i64*
  store i64 %202, i64* %205, align 8
  %206 = load i64, i64* %RBP, align 8
  %207 = add i64 %206, -13072
  %208 = load i64, i64* %R9, align 8
  %209 = load i64, i64* %PC, align 8
  %210 = add i64 %209, 7
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %207 to i64*
  store i64 %208, i64* %211, align 8
  %212 = load i64, i64* %PC, align 8
  %213 = add i64 %212, -870
  %214 = add i64 %212, 5
  %215 = load i64, i64* %RSP, align 8, !tbaa !2428
  %216 = add i64 %215, -8
  %217 = inttoptr i64 %216 to i64*
  store i64 %214, i64* %217, align 8
  store i64 %216, i64* %RSP, align 8, !tbaa !2428
  store i64 %213, i64* %PC, align 8, !tbaa !2428
  %218 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %111)
  %219 = load i64, i64* %RBP, align 8
  %220 = add i64 %219, -13032
  %221 = load i64, i64* %PC, align 8
  %222 = add i64 %221, 7
  store i64 %222, i64* %PC, align 8
  %223 = inttoptr i64 %220 to i64*
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %RAX, align 8, !tbaa !2428
  store i64 %224, i64* %RDI, align 8, !tbaa !2428
  %225 = add i64 %219, -13036
  %226 = add i64 %221, 16
  store i64 %226, i64* %PC, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = zext i32 %228 to i64
  store i64 %229, i64* %RSI, align 8, !tbaa !2428
  %230 = add i64 %219, -13064
  %231 = add i64 %221, 23
  store i64 %231, i64* %PC, align 8
  %232 = inttoptr i64 %230 to i64*
  %233 = load i64, i64* %232, align 8
  store i64 %233, i64* %RDX, align 8, !tbaa !2428
  %234 = add i64 %221, -875
  %235 = add i64 %221, 28
  %236 = load i64, i64* %RSP, align 8, !tbaa !2428
  %237 = add i64 %236, -8
  %238 = inttoptr i64 %237 to i64*
  store i64 %235, i64* %238, align 8
  store i64 %237, i64* %RSP, align 8, !tbaa !2428
  store i64 %234, i64* %PC, align 8, !tbaa !2428
  %239 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %218)
  %240 = load i64, i64* %RBP, align 8
  %241 = add i64 %240, -13056
  %242 = load i64, i64* %PC, align 8
  %243 = add i64 %242, 7
  store i64 %243, i64* %PC, align 8
  %244 = inttoptr i64 %241 to i64*
  %245 = load i64, i64* %244, align 8
  store i64 %245, i64* %RAX, align 8, !tbaa !2428
  store i64 %245, i64* %RDI, align 8, !tbaa !2428
  %246 = add i64 %240, -13036
  %247 = add i64 %242, 16
  store i64 %247, i64* %PC, align 8
  %248 = inttoptr i64 %246 to i32*
  %249 = load i32, i32* %248, align 4
  %250 = zext i32 %249 to i64
  store i64 %250, i64* %RSI, align 8, !tbaa !2428
  %251 = add i64 %240, -13016
  %252 = add i64 %242, 23
  store i64 %252, i64* %PC, align 8
  %253 = inttoptr i64 %251 to i64*
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %RDX, align 8, !tbaa !2428
  %255 = add i64 %242, -903
  %256 = add i64 %242, 28
  %257 = load i64, i64* %RSP, align 8, !tbaa !2428
  %258 = add i64 %257, -8
  %259 = inttoptr i64 %258 to i64*
  store i64 %256, i64* %259, align 8
  store i64 %258, i64* %RSP, align 8, !tbaa !2428
  store i64 %255, i64* %PC, align 8, !tbaa !2428
  %260 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %239)
  %261 = load i64, i64* %RBP, align 8
  %262 = add i64 %261, -13048
  %263 = load i64, i64* %PC, align 8
  %264 = add i64 %263, 7
  store i64 %264, i64* %PC, align 8
  %265 = inttoptr i64 %262 to i64*
  %266 = load i64, i64* %265, align 8
  store i64 %266, i64* %RAX, align 8, !tbaa !2428
  store i64 %266, i64* %RDI, align 8, !tbaa !2428
  %267 = add i64 %261, -13036
  %268 = add i64 %263, 16
  store i64 %268, i64* %PC, align 8
  %269 = inttoptr i64 %267 to i32*
  %270 = load i32, i32* %269, align 4
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %RSI, align 8, !tbaa !2428
  %272 = add i64 %261, -13016
  %273 = add i64 %263, 23
  store i64 %273, i64* %PC, align 8
  %274 = inttoptr i64 %272 to i64*
  %275 = load i64, i64* %274, align 8
  store i64 %275, i64* %RDX, align 8, !tbaa !2428
  %276 = add i64 %263, -931
  %277 = add i64 %263, 28
  %278 = load i64, i64* %RSP, align 8, !tbaa !2428
  %279 = add i64 %278, -8
  %280 = inttoptr i64 %279 to i64*
  store i64 %277, i64* %280, align 8
  store i64 %279, i64* %RSP, align 8, !tbaa !2428
  store i64 %276, i64* %PC, align 8, !tbaa !2428
  %281 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %260)
  %282 = load i64, i64* %RBP, align 8
  %283 = add i64 %282, -13072
  %284 = load i64, i64* %PC, align 8
  %285 = add i64 %284, 7
  store i64 %285, i64* %PC, align 8
  %286 = inttoptr i64 %283 to i64*
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %RAX, align 8, !tbaa !2428
  store i64 %287, i64* %RDI, align 8, !tbaa !2428
  %288 = add i64 %282, -13036
  %289 = add i64 %284, 16
  store i64 %289, i64* %PC, align 8
  %290 = inttoptr i64 %288 to i32*
  %291 = load i32, i32* %290, align 4
  %292 = zext i32 %291 to i64
  store i64 %292, i64* %RSI, align 8, !tbaa !2428
  %293 = add i64 %282, -13016
  %294 = add i64 %284, 23
  store i64 %294, i64* %PC, align 8
  %295 = inttoptr i64 %293 to i64*
  %296 = load i64, i64* %295, align 8
  store i64 %296, i64* %RDX, align 8, !tbaa !2428
  %297 = add i64 %284, -959
  %298 = add i64 %284, 28
  %299 = load i64, i64* %RSP, align 8, !tbaa !2428
  %300 = add i64 %299, -8
  %301 = inttoptr i64 %300 to i64*
  store i64 %298, i64* %301, align 8
  store i64 %300, i64* %RSP, align 8, !tbaa !2428
  store i64 %297, i64* %PC, align 8, !tbaa !2428
  %302 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %281)
  %303 = load i64, i64* %RBP, align 8
  %304 = add i64 %303, -13008
  %305 = load i64, i64* %PC, align 8
  %306 = add i64 %305, 7
  store i64 %306, i64* %PC, align 8
  %307 = inttoptr i64 %304 to i64*
  %308 = load i64, i64* %307, align 8
  store i64 %308, i64* %RDI, align 8, !tbaa !2428
  %309 = add i64 %303, -13036
  %310 = add i64 %305, 13
  store i64 %310, i64* %PC, align 8
  %311 = inttoptr i64 %309 to i32*
  %312 = load i32, i32* %311, align 4
  %313 = zext i32 %312 to i64
  store i64 %313, i64* %RSI, align 8, !tbaa !2428
  %314 = add i64 %303, -13024
  %315 = add i64 %305, 20
  store i64 %315, i64* %PC, align 8
  %316 = inttoptr i64 %314 to i64*
  %317 = load i64, i64* %316, align 8
  store i64 %317, i64* %RDX, align 8, !tbaa !2428
  %318 = add i64 %305, -987
  %319 = add i64 %305, 25
  %320 = load i64, i64* %RSP, align 8, !tbaa !2428
  %321 = add i64 %320, -8
  %322 = inttoptr i64 %321 to i64*
  store i64 %319, i64* %322, align 8
  store i64 %321, i64* %RSP, align 8, !tbaa !2428
  store i64 %318, i64* %PC, align 8, !tbaa !2428
  %323 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %302)
  %324 = load i64, i64* %RBP, align 8
  %325 = add i64 %324, -48
  %326 = load i64, i64* %PC, align 8
  %327 = add i64 %326, 8
  store i64 %327, i64* %PC, align 8
  %328 = inttoptr i64 %325 to i64*
  store i64 0, i64* %328, align 8
  %.pre = load i64, i64* %PC, align 8
  br label %block_4009cc

block_400bf6:                                     ; preds = %block_400d4b, %block_400bc0
  %329 = phi i64 [ %.pre17, %block_400bc0 ], [ %894, %block_400d4b ]
  %330 = load i64, i64* %RBP, align 8
  %331 = add i64 %330, -10640
  %332 = add i64 %329, 11
  store i64 %332, i64* %PC, align 8
  %333 = inttoptr i64 %331 to i64*
  %334 = load i64, i64* %333, align 8
  %335 = add i64 %334, -256
  %336 = icmp ult i64 %334, 256
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %31, align 1, !tbaa !2432
  %338 = trunc i64 %335 to i32
  %339 = and i32 %338, 255
  %340 = tail call i32 @llvm.ctpop.i32(i32 %339) #8
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  %343 = xor i8 %342, 1
  store i8 %343, i8* %38, align 1, !tbaa !2446
  %344 = xor i64 %334, %335
  %345 = lshr i64 %344, 4
  %346 = trunc i64 %345 to i8
  %347 = and i8 %346, 1
  store i8 %347, i8* %44, align 1, !tbaa !2447
  %348 = icmp eq i64 %335, 0
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %47, align 1, !tbaa !2448
  %350 = lshr i64 %335, 63
  %351 = trunc i64 %350 to i8
  store i8 %351, i8* %50, align 1, !tbaa !2449
  %352 = lshr i64 %334, 63
  %353 = xor i64 %350, %352
  %354 = add nuw nsw i64 %353, %352
  %355 = icmp eq i64 %354, 2
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %56, align 1, !tbaa !2450
  %.v51 = select i1 %336, i64 17, i64 369
  %357 = add i64 %329, %.v51
  store i64 %357, i64* %PC, align 8, !tbaa !2428
  br i1 %336, label %block_400c07, label %block_400d67

block_4011f9:                                     ; preds = %block_40110a
  %358 = add i64 %1562, -56
  %359 = add i64 %1589, 8
  store i64 %359, i64* %PC, align 8
  %360 = inttoptr i64 %358 to i64*
  store i64 0, i64* %360, align 8
  %.pre38 = load i64, i64* %PC, align 8
  br label %block_401201

block_400bc0:                                     ; preds = %block_400acd
  %361 = add i64 %1447, 4
  store i64 %361, i64* %PC, align 8
  %362 = load i64, i64* %1422, align 8
  %363 = add i64 %362, 256
  store i64 %363, i64* %RAX, align 8, !tbaa !2428
  %364 = icmp ugt i64 %362, -257
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %31, align 1, !tbaa !2432
  %366 = trunc i64 %363 to i32
  %367 = and i32 %366, 255
  %368 = tail call i32 @llvm.ctpop.i32(i32 %367) #8
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  %371 = xor i8 %370, 1
  store i8 %371, i8* %38, align 1, !tbaa !2446
  %372 = xor i64 %362, %363
  %373 = lshr i64 %372, 4
  %374 = trunc i64 %373 to i8
  %375 = and i8 %374, 1
  store i8 %375, i8* %44, align 1, !tbaa !2447
  %376 = icmp eq i64 %363, 0
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %47, align 1, !tbaa !2448
  %378 = lshr i64 %363, 63
  %379 = trunc i64 %378 to i8
  store i8 %379, i8* %50, align 1, !tbaa !2449
  %380 = lshr i64 %362, 63
  %381 = xor i64 %378, %380
  %382 = add nuw nsw i64 %381, %378
  %383 = icmp eq i64 %382, 2
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %56, align 1, !tbaa !2450
  %385 = shl i64 %363, 2
  %386 = add i64 %1419, -8320
  %387 = add i64 %386, %385
  %388 = add i64 %1447, 21
  store i64 %388, i64* %PC, align 8
  %389 = inttoptr i64 %387 to i32*
  store i32 0, i32* %389, align 4
  %390 = load i64, i64* %RBP, align 8
  %391 = add i64 %390, -10656
  %392 = load i64, i64* %PC, align 8
  %393 = add i64 %392, 11
  store i64 %393, i64* %PC, align 8
  %394 = inttoptr i64 %391 to i64*
  store i64 0, i64* %394, align 8
  %395 = load i64, i64* %RBP, align 8
  %396 = add i64 %395, -10664
  %397 = load i64, i64* %PC, align 8
  %398 = add i64 %397, 11
  store i64 %398, i64* %PC, align 8
  %399 = inttoptr i64 %396 to i64*
  store i64 0, i64* %399, align 8
  %400 = load i64, i64* %RBP, align 8
  %401 = add i64 %400, -10640
  %402 = load i64, i64* %PC, align 8
  %403 = add i64 %402, 11
  store i64 %403, i64* %PC, align 8
  %404 = inttoptr i64 %401 to i64*
  store i64 0, i64* %404, align 8
  %.pre17 = load i64, i64* %PC, align 8
  br label %block_400bf6

block_401183:                                     ; preds = %block_401170
  %405 = add i64 %515, -56
  %406 = add i64 %527, 4
  store i64 %406, i64* %PC, align 8
  %407 = inttoptr i64 %405 to i64*
  %408 = load i64, i64* %407, align 8
  %409 = add i64 %408, -1
  store i64 %409, i64* %RAX, align 8, !tbaa !2428
  %410 = icmp eq i64 %408, 0
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %31, align 1, !tbaa !2432
  %412 = trunc i64 %409 to i32
  %413 = and i32 %412, 255
  %414 = tail call i32 @llvm.ctpop.i32(i32 %413) #8
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  %417 = xor i8 %416, 1
  store i8 %417, i8* %38, align 1, !tbaa !2446
  %418 = xor i64 %408, %409
  %419 = lshr i64 %418, 4
  %420 = trunc i64 %419 to i8
  %421 = and i8 %420, 1
  store i8 %421, i8* %44, align 1, !tbaa !2447
  %422 = icmp eq i64 %409, 0
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %47, align 1, !tbaa !2448
  %424 = lshr i64 %409, 63
  %425 = trunc i64 %424 to i8
  store i8 %425, i8* %50, align 1, !tbaa !2449
  %426 = lshr i64 %408, 63
  %427 = xor i64 %424, %426
  %428 = add nuw nsw i64 %427, %426
  %429 = icmp eq i64 %428, 2
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %56, align 1, !tbaa !2450
  %431 = shl i64 %409, 3
  %432 = add i64 %515, -12736
  %433 = add i64 %432, %431
  %434 = add i64 %527, 16
  store i64 %434, i64* %PC, align 8
  %435 = inttoptr i64 %433 to i64*
  %436 = load i64, i64* %435, align 8
  store i64 %436, i64* %RAX, align 8, !tbaa !2428
  %437 = add i64 %527, 20
  store i64 %437, i64* %PC, align 8
  %438 = load i64, i64* %407, align 8
  store i64 %438, i64* %RCX, align 8, !tbaa !2428
  %439 = shl i64 %438, 3
  %440 = add i64 %432, %439
  %441 = add i64 %527, 28
  store i64 %441, i64* %PC, align 8
  %442 = inttoptr i64 %440 to i64*
  store i64 %436, i64* %442, align 8
  %443 = load i64, i64* %RBP, align 8
  %444 = add i64 %443, -56
  %445 = load i64, i64* %PC, align 8
  %446 = add i64 %445, 4
  store i64 %446, i64* %PC, align 8
  %447 = inttoptr i64 %444 to i64*
  %448 = load i64, i64* %447, align 8
  %449 = add i64 %448, -1
  store i64 %449, i64* %RAX, align 8, !tbaa !2428
  %450 = icmp eq i64 %448, 0
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %31, align 1, !tbaa !2432
  %452 = trunc i64 %449 to i32
  %453 = and i32 %452, 255
  %454 = tail call i32 @llvm.ctpop.i32(i32 %453) #8
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = xor i8 %456, 1
  store i8 %457, i8* %38, align 1, !tbaa !2446
  %458 = xor i64 %448, %449
  %459 = lshr i64 %458, 4
  %460 = trunc i64 %459 to i8
  %461 = and i8 %460, 1
  store i8 %461, i8* %44, align 1, !tbaa !2447
  %462 = icmp eq i64 %449, 0
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %47, align 1, !tbaa !2448
  %464 = lshr i64 %449, 63
  %465 = trunc i64 %464 to i8
  store i8 %465, i8* %50, align 1, !tbaa !2449
  %466 = lshr i64 %448, 63
  %467 = xor i64 %464, %466
  %468 = add nuw nsw i64 %467, %466
  %469 = icmp eq i64 %468, 2
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %56, align 1, !tbaa !2450
  %471 = add i64 %443, -12992
  %472 = add i64 %471, %449
  %473 = add i64 %445, 15
  store i64 %473, i64* %PC, align 8
  %474 = inttoptr i64 %472 to i8*
  %475 = load i8, i8* %474, align 1
  store i8 %475, i8* %DL, align 1, !tbaa !2453
  %476 = add i64 %445, 19
  store i64 %476, i64* %PC, align 8
  %477 = load i64, i64* %447, align 8
  store i64 %477, i64* %RAX, align 8, !tbaa !2428
  %478 = add i64 %471, %477
  %479 = add i64 %445, 26
  store i64 %479, i64* %PC, align 8
  %480 = inttoptr i64 %478 to i8*
  store i8 %475, i8* %480, align 1
  %481 = load i64, i64* %RBP, align 8
  %482 = add i64 %481, -56
  %483 = load i64, i64* %PC, align 8
  %484 = add i64 %483, 4
  store i64 %484, i64* %PC, align 8
  %485 = inttoptr i64 %482 to i64*
  %486 = load i64, i64* %485, align 8
  %487 = add i64 %486, -1
  store i64 %487, i64* %RAX, align 8, !tbaa !2428
  %488 = icmp ne i64 %486, 0
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %31, align 1, !tbaa !2432
  %490 = trunc i64 %487 to i32
  %491 = and i32 %490, 255
  %492 = tail call i32 @llvm.ctpop.i32(i32 %491) #8
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  %495 = xor i8 %494, 1
  store i8 %495, i8* %38, align 1, !tbaa !2446
  %496 = xor i64 %486, 16
  %497 = xor i64 %487, %496
  %498 = lshr i64 %497, 4
  %499 = trunc i64 %498 to i8
  %500 = and i8 %499, 1
  store i8 %500, i8* %44, align 1, !tbaa !2447
  %501 = icmp eq i64 %487, 0
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %47, align 1, !tbaa !2448
  %503 = lshr i64 %487, 63
  %504 = trunc i64 %503 to i8
  store i8 %504, i8* %50, align 1, !tbaa !2449
  %505 = lshr i64 %486, 63
  %506 = xor i64 %503, %505
  %507 = xor i64 %503, 1
  %508 = add nuw nsw i64 %506, %507
  %509 = icmp eq i64 %508, 2
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %56, align 1, !tbaa !2450
  %511 = add i64 %483, 12
  store i64 %511, i64* %PC, align 8
  store i64 %487, i64* %485, align 8
  %512 = load i64, i64* %PC, align 8
  %513 = add i64 %512, -135
  store i64 %513, i64* %PC, align 8, !tbaa !2428
  br label %block_40113e

block_401170:                                     ; preds = %block_40113e, %block_401153
  %514 = phi i64 [ %3334, %block_40113e ], [ %.pre37, %block_401153 ]
  %515 = load i64, i64* %RBP, align 8
  %516 = add i64 %515, -13097
  %517 = add i64 %514, 6
  store i64 %517, i64* %PC, align 8
  %518 = inttoptr i64 %516 to i8*
  %519 = load i8, i8* %518, align 1
  store i8 %519, i8* %AL, align 1, !tbaa !2453
  %520 = and i8 %519, 1
  store i8 0, i8* %31, align 1, !tbaa !2432
  %521 = zext i8 %520 to i32
  %522 = tail call i32 @llvm.ctpop.i32(i32 %521) #8
  %523 = trunc i32 %522 to i8
  %524 = xor i8 %523, 1
  store i8 %524, i8* %38, align 1, !tbaa !2446
  %525 = xor i8 %520, 1
  store i8 %525, i8* %47, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  store i8 0, i8* %44, align 1, !tbaa !2447
  %526 = icmp eq i8 %525, 0
  %.v71 = select i1 %526, i64 19, i64 14
  %527 = add i64 %514, %.v71
  store i64 %527, i64* %PC, align 8, !tbaa !2428
  br i1 %526, label %block_401183, label %block_40117e

block_4009da:                                     ; preds = %block_4009cc
  %528 = add i64 %896, -112
  %529 = add i64 %930, 4
  store i64 %529, i64* %PC, align 8
  %530 = inttoptr i64 %528 to i64*
  %531 = load i64, i64* %530, align 8
  store i64 %531, i64* %RAX, align 8, !tbaa !2428
  %532 = add i64 %930, 7
  store i64 %532, i64* %PC, align 8
  %533 = inttoptr i64 %531 to i8*
  %534 = load i8, i8* %533, align 1
  %535 = zext i8 %534 to i64
  store i64 %535, i64* %RCX, align 8, !tbaa !2428
  store i64 %535, i64* %RAX, align 8, !tbaa !2428
  %536 = shl nuw nsw i64 %535, 3
  %537 = add i64 %896, -4224
  %538 = add i64 %537, %536
  %539 = add i64 %930, 17
  store i64 %539, i64* %PC, align 8
  %540 = inttoptr i64 %538 to i64*
  %541 = load i64, i64* %540, align 8
  %542 = add i64 %541, 1
  store i64 %542, i64* %RDX, align 8, !tbaa !2428
  %543 = icmp eq i64 %541, -1
  %544 = icmp eq i64 %542, 0
  %545 = or i1 %543, %544
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %31, align 1, !tbaa !2432
  %547 = trunc i64 %542 to i32
  %548 = and i32 %547, 255
  %549 = tail call i32 @llvm.ctpop.i32(i32 %548) #8
  %550 = trunc i32 %549 to i8
  %551 = and i8 %550, 1
  %552 = xor i8 %551, 1
  store i8 %552, i8* %38, align 1, !tbaa !2446
  %553 = xor i64 %541, %542
  %554 = lshr i64 %553, 4
  %555 = trunc i64 %554 to i8
  %556 = and i8 %555, 1
  store i8 %556, i8* %44, align 1, !tbaa !2447
  %557 = zext i1 %544 to i8
  store i8 %557, i8* %47, align 1, !tbaa !2448
  %558 = lshr i64 %542, 63
  %559 = trunc i64 %558 to i8
  store i8 %559, i8* %50, align 1, !tbaa !2449
  %560 = lshr i64 %541, 63
  %561 = xor i64 %558, %560
  %562 = add nuw nsw i64 %561, %558
  %563 = icmp eq i64 %562, 2
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %56, align 1, !tbaa !2450
  %565 = add i64 %930, 29
  store i64 %565, i64* %PC, align 8
  store i64 %542, i64* %540, align 8
  %566 = load i64, i64* %RBP, align 8
  %567 = add i64 %566, -112
  %568 = load i64, i64* %PC, align 8
  %569 = add i64 %568, 4
  store i64 %569, i64* %PC, align 8
  %570 = inttoptr i64 %567 to i64*
  %571 = load i64, i64* %570, align 8
  %572 = add i64 %571, 1
  store i64 %572, i64* %RAX, align 8, !tbaa !2428
  %573 = icmp eq i64 %571, -1
  %574 = icmp eq i64 %572, 0
  %575 = or i1 %573, %574
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %31, align 1, !tbaa !2432
  %577 = trunc i64 %572 to i32
  %578 = and i32 %577, 255
  %579 = tail call i32 @llvm.ctpop.i32(i32 %578) #8
  %580 = trunc i32 %579 to i8
  %581 = and i8 %580, 1
  %582 = xor i8 %581, 1
  store i8 %582, i8* %38, align 1, !tbaa !2446
  %583 = xor i64 %571, %572
  %584 = lshr i64 %583, 4
  %585 = trunc i64 %584 to i8
  %586 = and i8 %585, 1
  store i8 %586, i8* %44, align 1, !tbaa !2447
  %587 = zext i1 %574 to i8
  store i8 %587, i8* %47, align 1, !tbaa !2448
  %588 = lshr i64 %572, 63
  %589 = trunc i64 %588 to i8
  store i8 %589, i8* %50, align 1, !tbaa !2449
  %590 = lshr i64 %571, 63
  %591 = xor i64 %588, %590
  %592 = add nuw nsw i64 %591, %588
  %593 = icmp eq i64 %592, 2
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %56, align 1, !tbaa !2450
  %595 = add i64 %568, 12
  store i64 %595, i64* %PC, align 8
  store i64 %572, i64* %570, align 8
  %596 = load i64, i64* %RBP, align 8
  %597 = add i64 %596, -48
  %598 = load i64, i64* %PC, align 8
  %599 = add i64 %598, 4
  store i64 %599, i64* %PC, align 8
  %600 = inttoptr i64 %597 to i64*
  %601 = load i64, i64* %600, align 8
  %602 = add i64 %601, 1
  store i64 %602, i64* %RAX, align 8, !tbaa !2428
  %603 = icmp eq i64 %601, -1
  %604 = icmp eq i64 %602, 0
  %605 = or i1 %603, %604
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %31, align 1, !tbaa !2432
  %607 = trunc i64 %602 to i32
  %608 = and i32 %607, 255
  %609 = tail call i32 @llvm.ctpop.i32(i32 %608) #8
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  %612 = xor i8 %611, 1
  store i8 %612, i8* %38, align 1, !tbaa !2446
  %613 = xor i64 %601, %602
  %614 = lshr i64 %613, 4
  %615 = trunc i64 %614 to i8
  %616 = and i8 %615, 1
  store i8 %616, i8* %44, align 1, !tbaa !2447
  %617 = zext i1 %604 to i8
  store i8 %617, i8* %47, align 1, !tbaa !2448
  %618 = lshr i64 %602, 63
  %619 = trunc i64 %618 to i8
  store i8 %619, i8* %50, align 1, !tbaa !2449
  %620 = lshr i64 %601, 63
  %621 = xor i64 %618, %620
  %622 = add nuw nsw i64 %621, %618
  %623 = icmp eq i64 %622, 2
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %56, align 1, !tbaa !2450
  %625 = add i64 %598, 12
  store i64 %625, i64* %PC, align 8
  store i64 %602, i64* %600, align 8
  %626 = load i64, i64* %PC, align 8
  %627 = add i64 %626, -67
  store i64 %627, i64* %PC, align 8, !tbaa !2428
  br label %block_4009cc

block_400f6a:                                     ; preds = %block_400e01
  %628 = add i64 %3385, -12992
  store i64 %628, i64* %RAX, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %31, align 1, !tbaa !2432
  store i8 1, i8* %38, align 1, !tbaa !2446
  store i8 1, i8* %47, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  store i8 0, i8* %44, align 1, !tbaa !2447
  store i64 2048, i64* %RDX, align 8, !tbaa !2428
  %629 = add i64 %3385, -12736
  store i64 %629, i64* %RDI, align 8, !tbaa !2428
  store i64 7, i64* %RCX, align 8, !tbaa !2428
  %630 = add i64 %3385, -10688
  %631 = add i64 %3419, 34
  store i64 %631, i64* %PC, align 8
  %632 = inttoptr i64 %630 to i32*
  %633 = load i32, i32* %632, align 4
  %634 = sub i32 7, %633
  %635 = zext i32 %634 to i64
  store i64 %635, i64* %RCX, align 8, !tbaa !2428
  %636 = icmp ugt i32 %633, 7
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %31, align 1, !tbaa !2432
  %638 = and i32 %634, 255
  %639 = tail call i32 @llvm.ctpop.i32(i32 %638) #8
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  %642 = xor i8 %641, 1
  store i8 %642, i8* %38, align 1, !tbaa !2446
  %643 = xor i32 %633, %634
  %644 = lshr i32 %643, 4
  %645 = trunc i32 %644 to i8
  %646 = and i8 %645, 1
  store i8 %646, i8* %44, align 1, !tbaa !2447
  %647 = icmp eq i32 %634, 0
  %648 = zext i1 %647 to i8
  store i8 %648, i8* %47, align 1, !tbaa !2448
  %649 = lshr i32 %634, 31
  %650 = trunc i32 %649 to i8
  store i8 %650, i8* %50, align 1, !tbaa !2449
  %651 = lshr i32 %633, 31
  %652 = add nuw nsw i32 %649, %651
  %653 = icmp eq i32 %652, 2
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %56, align 1, !tbaa !2450
  %655 = add i64 %3385, -10681
  %656 = add i64 %3419, 42
  store i64 %656, i64* %PC, align 8
  %657 = inttoptr i64 %655 to i8*
  %658 = load i8, i8* %657, align 1
  %659 = sext i8 %658 to i64
  %660 = and i64 %659, 4294967295
  store i64 %660, i64* %R8, align 8, !tbaa !2428
  %661 = sext i8 %658 to i32
  %662 = add i64 %3419, 45
  store i64 %662, i64* %PC, align 8
  %663 = trunc i32 %634 to i5
  switch i5 %663, label %666 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2
    i5 1, label %664
  ]

; <label>:664:                                    ; preds = %block_400f6a
  %665 = icmp slt i8 %658, 0
  br label %675

; <label>:666:                                    ; preds = %block_400f6a
  %667 = zext i32 %661 to i64
  %668 = and i32 %634, 31
  %669 = zext i32 %668 to i64
  %670 = add nuw nsw i64 %669, 4294967295
  %671 = and i64 %670, 4294967295
  %672 = shl i64 %667, %671
  %673 = trunc i64 %672 to i32
  %674 = icmp slt i32 %673, 0
  br label %675

; <label>:675:                                    ; preds = %666, %664
  %676 = phi i1 [ %665, %664 ], [ %674, %666 ]
  %.in = phi i32 [ %661, %664 ], [ %673, %666 ]
  %677 = shl i32 %.in, 1
  %678 = zext i32 %677 to i64
  store i64 %678, i64* %R8, align 8, !tbaa !2428
  %679 = zext i1 %676 to i8
  store i8 %679, i8* %31, align 1, !tbaa !2453
  %680 = and i32 %677, 254
  %681 = tail call i32 @llvm.ctpop.i32(i32 %680) #8
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  %684 = xor i8 %683, 1
  store i8 %684, i8* %38, align 1, !tbaa !2453
  store i8 0, i8* %44, align 1, !tbaa !2453
  %685 = icmp eq i32 %677, 0
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %47, align 1, !tbaa !2453
  %687 = lshr i32 %.in, 30
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  store i8 %689, i8* %50, align 1, !tbaa !2453
  store i8 0, i8* %56, align 1, !tbaa !2453
  %690 = trunc i32 %677 to i8
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2: ; preds = %675, %block_400f6a
  %691 = phi i8 [ %690, %675 ], [ %658, %block_400f6a ]
  store i8 %691, i8* %CL, align 1, !tbaa !2453
  %692 = add i64 %3419, 54
  store i64 %692, i64* %PC, align 8
  store i8 %691, i8* %657, align 1
  %693 = load i64, i64* %RBP, align 8
  %694 = add i64 %693, -10681
  %695 = load i64, i64* %PC, align 8
  %696 = add i64 %695, 6
  store i64 %696, i64* %PC, align 8
  %697 = inttoptr i64 %694 to i8*
  %698 = load i8, i8* %697, align 1
  store i8 %698, i8* %CL, align 1, !tbaa !2453
  %699 = add i64 %693, -120
  %700 = add i64 %695, 10
  store i64 %700, i64* %PC, align 8
  %701 = inttoptr i64 %699 to i64*
  %702 = load i64, i64* %701, align 8
  store i64 %702, i64* %R9, align 8, !tbaa !2428
  %703 = add i64 %693, -10680
  %704 = add i64 %695, 17
  store i64 %704, i64* %PC, align 8
  %705 = inttoptr i64 %703 to i64*
  %706 = load i64, i64* %705, align 8
  store i64 %706, i64* %R10, align 8, !tbaa !2428
  %707 = add i64 %706, %702
  %708 = add i64 %695, 21
  store i64 %708, i64* %PC, align 8
  %709 = inttoptr i64 %707 to i8*
  store i8 %698, i8* %709, align 1
  %710 = load i64, i64* %RBP, align 8
  %711 = add i64 %710, -10680
  %712 = load i64, i64* %PC, align 8
  %713 = add i64 %712, 7
  store i64 %713, i64* %PC, align 8
  %714 = inttoptr i64 %711 to i64*
  %715 = load i64, i64* %714, align 8
  %716 = add i64 %715, 1
  store i64 %716, i64* %R9, align 8, !tbaa !2428
  %717 = icmp eq i64 %715, -1
  %718 = icmp eq i64 %716, 0
  %719 = or i1 %717, %718
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %31, align 1, !tbaa !2432
  %721 = trunc i64 %716 to i32
  %722 = and i32 %721, 255
  %723 = tail call i32 @llvm.ctpop.i32(i32 %722) #8
  %724 = trunc i32 %723 to i8
  %725 = and i8 %724, 1
  %726 = xor i8 %725, 1
  store i8 %726, i8* %38, align 1, !tbaa !2446
  %727 = xor i64 %715, %716
  %728 = lshr i64 %727, 4
  %729 = trunc i64 %728 to i8
  %730 = and i8 %729, 1
  store i8 %730, i8* %44, align 1, !tbaa !2447
  %731 = zext i1 %718 to i8
  store i8 %731, i8* %47, align 1, !tbaa !2448
  %732 = lshr i64 %716, 63
  %733 = trunc i64 %732 to i8
  store i8 %733, i8* %50, align 1, !tbaa !2449
  %734 = lshr i64 %715, 63
  %735 = xor i64 %732, %734
  %736 = add nuw nsw i64 %735, %732
  %737 = icmp eq i64 %736, 2
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %56, align 1, !tbaa !2450
  %739 = add i64 %712, 18
  store i64 %739, i64* %PC, align 8
  store i64 %716, i64* %714, align 8
  %740 = load i64, i64* %RBP, align 8
  %741 = add i64 %740, -13096
  %742 = load i64, i64* %RAX, align 8
  %743 = load i64, i64* %PC, align 8
  %744 = add i64 %743, 7
  store i64 %744, i64* %PC, align 8
  %745 = inttoptr i64 %741 to i64*
  store i64 %742, i64* %745, align 8
  %746 = load i64, i64* %PC, align 8
  %747 = add i64 %746, -2558
  %748 = add i64 %746, 5
  %749 = load i64, i64* %RSP, align 8, !tbaa !2428
  %750 = add i64 %749, -8
  %751 = inttoptr i64 %750 to i64*
  store i64 %748, i64* %751, align 8
  store i64 %750, i64* %RSP, align 8, !tbaa !2428
  store i64 %747, i64* %PC, align 8, !tbaa !2428
  %752 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %MEMORY.11)
  %753 = load i64, i64* %RBP, align 8
  %754 = add i64 %753, -13096
  %755 = load i64, i64* %PC, align 8
  %756 = add i64 %755, 7
  store i64 %756, i64* %PC, align 8
  %757 = inttoptr i64 %754 to i64*
  %758 = load i64, i64* %757, align 8
  store i64 %758, i64* %RAX, align 8, !tbaa !2428
  %759 = add i64 %753, -13000
  %760 = add i64 %755, 14
  store i64 %760, i64* %PC, align 8
  %761 = inttoptr i64 %759 to i64*
  store i64 %758, i64* %761, align 8
  %762 = load i64, i64* %RBP, align 8
  %763 = add i64 %762, -56
  %764 = load i64, i64* %PC, align 8
  %765 = add i64 %764, 8
  store i64 %765, i64* %PC, align 8
  %766 = inttoptr i64 %763 to i64*
  store i64 0, i64* %766, align 8
  %.pre29 = load i64, i64* %PC, align 8
  br label %block_400fe9

block_400d67:                                     ; preds = %block_400bf6
  %767 = add i64 %330, -10664
  %768 = add i64 %357, 8
  store i64 %768, i64* %PC, align 8
  %769 = inttoptr i64 %767 to i64*
  %770 = load i64, i64* %769, align 8
  %771 = add i64 %770, -64
  %772 = icmp ult i64 %770, 64
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %31, align 1, !tbaa !2432
  %774 = trunc i64 %771 to i32
  %775 = and i32 %774, 255
  %776 = tail call i32 @llvm.ctpop.i32(i32 %775) #8
  %777 = trunc i32 %776 to i8
  %778 = and i8 %777, 1
  %779 = xor i8 %778, 1
  store i8 %779, i8* %38, align 1, !tbaa !2446
  %780 = xor i64 %770, %771
  %781 = lshr i64 %780, 4
  %782 = trunc i64 %781 to i8
  %783 = and i8 %782, 1
  store i8 %783, i8* %44, align 1, !tbaa !2447
  %784 = icmp eq i64 %771, 0
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %47, align 1, !tbaa !2448
  %786 = lshr i64 %771, 63
  %787 = trunc i64 %786 to i8
  store i8 %787, i8* %50, align 1, !tbaa !2449
  %788 = lshr i64 %770, 63
  %789 = xor i64 %786, %788
  %790 = add nuw nsw i64 %789, %788
  %791 = icmp eq i64 %790, 2
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %56, align 1, !tbaa !2450
  %793 = or i1 %784, %772
  %.v57 = select i1 %793, i64 55, i64 14
  %794 = add i64 %357, %.v57
  store i64 %794, i64* %PC, align 8, !tbaa !2428
  br i1 %793, label %block_400d9e, label %block_400d75

block_401153:                                     ; preds = %block_40113e
  %795 = load i64, i64* %RBP, align 8
  %796 = add i64 %795, -56
  %797 = add i64 %3334, 4
  store i64 %797, i64* %PC, align 8
  %798 = inttoptr i64 %796 to i64*
  %799 = load i64, i64* %798, align 8
  %800 = add i64 %799, -1
  store i64 %800, i64* %RAX, align 8, !tbaa !2428
  %801 = icmp eq i64 %799, 0
  %802 = zext i1 %801 to i8
  store i8 %802, i8* %31, align 1, !tbaa !2432
  %803 = trunc i64 %800 to i32
  %804 = and i32 %803, 255
  %805 = tail call i32 @llvm.ctpop.i32(i32 %804) #8
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  %808 = xor i8 %807, 1
  store i8 %808, i8* %38, align 1, !tbaa !2446
  %809 = xor i64 %799, %800
  %810 = lshr i64 %809, 4
  %811 = trunc i64 %810 to i8
  %812 = and i8 %811, 1
  store i8 %812, i8* %44, align 1, !tbaa !2447
  %813 = icmp eq i64 %800, 0
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %47, align 1, !tbaa !2448
  %815 = lshr i64 %800, 63
  %816 = trunc i64 %815 to i8
  store i8 %816, i8* %50, align 1, !tbaa !2449
  %817 = lshr i64 %799, 63
  %818 = xor i64 %815, %817
  %819 = add nuw nsw i64 %818, %817
  %820 = icmp eq i64 %819, 2
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %56, align 1, !tbaa !2450
  %822 = shl i64 %800, 3
  %823 = add i64 %795, -12736
  %824 = add i64 %823, %822
  %825 = add i64 %3334, 16
  store i64 %825, i64* %PC, align 8
  %826 = inttoptr i64 %824 to i64*
  %827 = load i64, i64* %826, align 8
  store i64 %827, i64* %RAX, align 8, !tbaa !2428
  %828 = add i64 %795, -88
  %829 = add i64 %3334, 20
  store i64 %829, i64* %PC, align 8
  %830 = inttoptr i64 %828 to i64*
  %831 = load i64, i64* %830, align 8
  %832 = sub i64 %827, %831
  %833 = icmp ult i64 %827, %831
  %834 = zext i1 %833 to i8
  store i8 %834, i8* %31, align 1, !tbaa !2432
  %835 = trunc i64 %832 to i32
  %836 = and i32 %835, 255
  %837 = tail call i32 @llvm.ctpop.i32(i32 %836) #8
  %838 = trunc i32 %837 to i8
  %839 = and i8 %838, 1
  %840 = xor i8 %839, 1
  store i8 %840, i8* %38, align 1, !tbaa !2446
  %841 = xor i64 %831, %827
  %842 = xor i64 %841, %832
  %843 = lshr i64 %842, 4
  %844 = trunc i64 %843 to i8
  %845 = and i8 %844, 1
  store i8 %845, i8* %44, align 1, !tbaa !2447
  %846 = icmp eq i64 %832, 0
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %47, align 1, !tbaa !2448
  %848 = lshr i64 %832, 63
  %849 = trunc i64 %848 to i8
  store i8 %849, i8* %50, align 1, !tbaa !2449
  %850 = lshr i64 %827, 63
  %851 = lshr i64 %831, 63
  %852 = xor i64 %851, %850
  %853 = xor i64 %848, %850
  %854 = add nuw nsw i64 %853, %852
  %855 = icmp eq i64 %854, 2
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %56, align 1, !tbaa !2450
  %857 = or i1 %846, %833
  %858 = xor i1 %857, true
  %859 = zext i1 %858 to i8
  store i8 %859, i8* %CL, align 1, !tbaa !2453
  %860 = add i64 %795, -13097
  %861 = add i64 %3334, 29
  store i64 %861, i64* %PC, align 8
  %862 = inttoptr i64 %860 to i8*
  store i8 %859, i8* %862, align 1
  %.pre37 = load i64, i64* %PC, align 8
  br label %block_401170

block_400d4b:                                     ; preds = %block_400c1d, %block_400d46
  %863 = phi i64 [ %932, %block_400d46 ], [ %3129, %block_400c1d ]
  %864 = load i64, i64* %RBP, align 8
  %865 = add i64 %864, -10640
  %866 = add i64 %863, 12
  store i64 %866, i64* %PC, align 8
  %867 = inttoptr i64 %865 to i64*
  %868 = load i64, i64* %867, align 8
  %869 = add i64 %868, 1
  store i64 %869, i64* %RAX, align 8, !tbaa !2428
  %870 = icmp eq i64 %868, -1
  %871 = icmp eq i64 %869, 0
  %872 = or i1 %870, %871
  %873 = zext i1 %872 to i8
  store i8 %873, i8* %31, align 1, !tbaa !2432
  %874 = trunc i64 %869 to i32
  %875 = and i32 %874, 255
  %876 = tail call i32 @llvm.ctpop.i32(i32 %875) #8
  %877 = trunc i32 %876 to i8
  %878 = and i8 %877, 1
  %879 = xor i8 %878, 1
  store i8 %879, i8* %38, align 1, !tbaa !2446
  %880 = xor i64 %868, %869
  %881 = lshr i64 %880, 4
  %882 = trunc i64 %881 to i8
  %883 = and i8 %882, 1
  store i8 %883, i8* %44, align 1, !tbaa !2447
  %884 = zext i1 %871 to i8
  store i8 %884, i8* %47, align 1, !tbaa !2448
  %885 = lshr i64 %869, 63
  %886 = trunc i64 %885 to i8
  store i8 %886, i8* %50, align 1, !tbaa !2449
  %887 = lshr i64 %868, 63
  %888 = xor i64 %885, %887
  %889 = add nuw nsw i64 %888, %885
  %890 = icmp eq i64 %889, 2
  %891 = zext i1 %890 to i8
  store i8 %891, i8* %56, align 1, !tbaa !2450
  %892 = add i64 %863, 23
  store i64 %892, i64* %PC, align 8
  store i64 %869, i64* %867, align 8
  %893 = load i64, i64* %PC, align 8
  %894 = add i64 %893, -364
  store i64 %894, i64* %PC, align 8, !tbaa !2428
  br label %block_400bf6

block_4009cc:                                     ; preds = %block_4009da, %block_400870
  %895 = phi i64 [ %627, %block_4009da ], [ %.pre, %block_400870 ]
  %896 = load i64, i64* %RBP, align 8
  %897 = add i64 %896, -48
  %898 = add i64 %895, 4
  store i64 %898, i64* %PC, align 8
  %899 = inttoptr i64 %897 to i64*
  %900 = load i64, i64* %899, align 8
  store i64 %900, i64* %RAX, align 8, !tbaa !2428
  %901 = add i64 %896, -40
  %902 = add i64 %895, 8
  store i64 %902, i64* %PC, align 8
  %903 = inttoptr i64 %901 to i64*
  %904 = load i64, i64* %903, align 8
  %905 = sub i64 %900, %904
  %906 = icmp ult i64 %900, %904
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %31, align 1, !tbaa !2432
  %908 = trunc i64 %905 to i32
  %909 = and i32 %908, 255
  %910 = tail call i32 @llvm.ctpop.i32(i32 %909) #8
  %911 = trunc i32 %910 to i8
  %912 = and i8 %911, 1
  %913 = xor i8 %912, 1
  store i8 %913, i8* %38, align 1, !tbaa !2446
  %914 = xor i64 %904, %900
  %915 = xor i64 %914, %905
  %916 = lshr i64 %915, 4
  %917 = trunc i64 %916 to i8
  %918 = and i8 %917, 1
  store i8 %918, i8* %44, align 1, !tbaa !2447
  %919 = icmp eq i64 %905, 0
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %47, align 1, !tbaa !2448
  %921 = lshr i64 %905, 63
  %922 = trunc i64 %921 to i8
  store i8 %922, i8* %50, align 1, !tbaa !2449
  %923 = lshr i64 %900, 63
  %924 = lshr i64 %904, 63
  %925 = xor i64 %924, %923
  %926 = xor i64 %921, %923
  %927 = add nuw nsw i64 %926, %925
  %928 = icmp eq i64 %927, 2
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %56, align 1, !tbaa !2450
  %.v = select i1 %906, i64 14, i64 72
  %930 = add i64 %895, %.v
  store i64 %930, i64* %PC, align 8, !tbaa !2428
  br i1 %906, label %block_4009da, label %block_400a14

block_400d46:                                     ; preds = %block_400d3b, %block_400d2a
  %931 = phi i64 [ %.pre23, %block_400d3b ], [ %1128, %block_400d2a ]
  %932 = add i64 %931, 5
  br label %block_400d4b

block_400fe9:                                     ; preds = %block_4010ec, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2
  %933 = phi i64 [ %.pre29, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2 ], [ %1356, %block_4010ec ]
  %934 = load i64, i64* %RBP, align 8
  %935 = add i64 %934, -56
  %936 = add i64 %933, 8
  store i64 %936, i64* %PC, align 8
  %937 = inttoptr i64 %935 to i64*
  %938 = load i64, i64* %937, align 8
  %939 = add i64 %938, -256
  %940 = icmp ult i64 %938, 256
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %31, align 1, !tbaa !2432
  %942 = trunc i64 %939 to i32
  %943 = and i32 %942, 255
  %944 = tail call i32 @llvm.ctpop.i32(i32 %943) #8
  %945 = trunc i32 %944 to i8
  %946 = and i8 %945, 1
  %947 = xor i8 %946, 1
  store i8 %947, i8* %38, align 1, !tbaa !2446
  %948 = xor i64 %938, %939
  %949 = lshr i64 %948, 4
  %950 = trunc i64 %949 to i8
  %951 = and i8 %950, 1
  store i8 %951, i8* %44, align 1, !tbaa !2447
  %952 = icmp eq i64 %939, 0
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %47, align 1, !tbaa !2448
  %954 = lshr i64 %939, 63
  %955 = trunc i64 %954 to i8
  store i8 %955, i8* %50, align 1, !tbaa !2449
  %956 = lshr i64 %938, 63
  %957 = xor i64 %954, %956
  %958 = add nuw nsw i64 %957, %956
  %959 = icmp eq i64 %958, 2
  %960 = zext i1 %959 to i8
  store i8 %960, i8* %56, align 1, !tbaa !2450
  %.v65 = select i1 %940, i64 14, i64 281
  %961 = add i64 %933, %.v65
  store i64 %961, i64* %PC, align 8, !tbaa !2428
  br i1 %940, label %block_400ff7, label %block_401102

block_400ede:                                     ; preds = %block_400e5b
  %962 = add i64 %2654, 6
  store i64 %962, i64* %PC, align 8
  %963 = load i32, i32* %2631, align 4
  %964 = add i32 %963, 1
  %965 = zext i32 %964 to i64
  store i64 %965, i64* %RAX, align 8, !tbaa !2428
  %966 = icmp eq i32 %963, -1
  %967 = icmp eq i32 %964, 0
  %968 = or i1 %966, %967
  %969 = zext i1 %968 to i8
  store i8 %969, i8* %31, align 1, !tbaa !2432
  %970 = and i32 %964, 255
  %971 = tail call i32 @llvm.ctpop.i32(i32 %970) #8
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  %974 = xor i8 %973, 1
  store i8 %974, i8* %38, align 1, !tbaa !2446
  %975 = xor i32 %963, %964
  %976 = lshr i32 %975, 4
  %977 = trunc i32 %976 to i8
  %978 = and i8 %977, 1
  store i8 %978, i8* %44, align 1, !tbaa !2447
  %979 = zext i1 %967 to i8
  store i8 %979, i8* %47, align 1, !tbaa !2448
  %980 = lshr i32 %964, 31
  %981 = trunc i32 %980 to i8
  store i8 %981, i8* %50, align 1, !tbaa !2449
  %982 = lshr i32 %963, 31
  %983 = xor i32 %980, %982
  %984 = add nuw nsw i32 %983, %980
  %985 = icmp eq i32 %984, 2
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %56, align 1, !tbaa !2450
  %987 = add i64 %2654, 15
  store i64 %987, i64* %PC, align 8
  store i32 %964, i32* %2631, align 4
  %988 = load i64, i64* %RBP, align 8
  %989 = add i64 %988, -10681
  %990 = load i64, i64* %PC, align 8
  %991 = add i64 %990, 7
  store i64 %991, i64* %PC, align 8
  %992 = inttoptr i64 %989 to i8*
  %993 = load i8, i8* %992, align 1
  %994 = sext i8 %993 to i32
  %995 = shl nsw i32 %994, 1
  %996 = zext i32 %995 to i64
  store i64 %996, i64* %RAX, align 8, !tbaa !2428
  %.lobit64 = lshr i8 %993, 7
  store i8 %.lobit64, i8* %31, align 1, !tbaa !2453
  %997 = and i32 %995, 254
  %998 = tail call i32 @llvm.ctpop.i32(i32 %997) #8
  %999 = trunc i32 %998 to i8
  %1000 = and i8 %999, 1
  %1001 = xor i8 %1000, 1
  store i8 %1001, i8* %38, align 1, !tbaa !2453
  store i8 0, i8* %44, align 1, !tbaa !2453
  %1002 = icmp eq i8 %993, 0
  %1003 = zext i1 %1002 to i8
  store i8 %1003, i8* %47, align 1, !tbaa !2453
  %1004 = lshr i32 %994, 30
  %1005 = trunc i32 %1004 to i8
  %1006 = and i8 %1005, 1
  store i8 %1006, i8* %50, align 1, !tbaa !2453
  store i8 0, i8* %56, align 1, !tbaa !2453
  %1007 = trunc i32 %995 to i8
  store i8 %1007, i8* %CL, align 1, !tbaa !2453
  %1008 = add i64 %990, 18
  store i64 %1008, i64* %PC, align 8
  store i8 %1007, i8* %992, align 1
  %.pre26 = load i64, i64* %PC, align 8
  br label %block_400eff

block_401332:                                     ; preds = %block_401316
  %1009 = add i64 %1218, 8
  store i64 %1009, i64* %PC, align 8
  store i64 128, i64* %1193, align 8
  %1010 = load i64, i64* %RBP, align 8
  %1011 = add i64 %1010, -104
  %1012 = load i64, i64* %PC, align 8
  %1013 = add i64 %1012, 4
  store i64 %1013, i64* %PC, align 8
  %1014 = inttoptr i64 %1011 to i64*
  %1015 = load i64, i64* %1014, align 8
  %1016 = add i64 %1015, 1
  store i64 %1016, i64* %RAX, align 8, !tbaa !2428
  %1017 = icmp eq i64 %1015, -1
  %1018 = icmp eq i64 %1016, 0
  %1019 = or i1 %1017, %1018
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %31, align 1, !tbaa !2432
  %1021 = trunc i64 %1016 to i32
  %1022 = and i32 %1021, 255
  %1023 = tail call i32 @llvm.ctpop.i32(i32 %1022) #8
  %1024 = trunc i32 %1023 to i8
  %1025 = and i8 %1024, 1
  %1026 = xor i8 %1025, 1
  store i8 %1026, i8* %38, align 1, !tbaa !2446
  %1027 = xor i64 %1015, %1016
  %1028 = lshr i64 %1027, 4
  %1029 = trunc i64 %1028 to i8
  %1030 = and i8 %1029, 1
  store i8 %1030, i8* %44, align 1, !tbaa !2447
  %1031 = zext i1 %1018 to i8
  store i8 %1031, i8* %47, align 1, !tbaa !2448
  %1032 = lshr i64 %1016, 63
  %1033 = trunc i64 %1032 to i8
  store i8 %1033, i8* %50, align 1, !tbaa !2449
  %1034 = lshr i64 %1015, 63
  %1035 = xor i64 %1032, %1034
  %1036 = add nuw nsw i64 %1035, %1032
  %1037 = icmp eq i64 %1036, 2
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %56, align 1, !tbaa !2450
  %1039 = add i64 %1012, 12
  store i64 %1039, i64* %PC, align 8
  store i64 %1016, i64* %1014, align 8
  %.pre43 = load i64, i64* %PC, align 8
  br label %block_401346

block_400f30:                                     ; preds = %block_400eff, %block_400f1e
  %1040 = phi i64 [ %1324, %block_400eff ], [ %.pre28, %block_400f1e ]
  %1041 = phi i64 [ %1294, %block_400eff ], [ %.pre27, %block_400f1e ]
  %1042 = add i64 %1041, -72
  %1043 = add i64 %1040, 4
  store i64 %1043, i64* %PC, align 8
  %1044 = inttoptr i64 %1042 to i64*
  %1045 = load i64, i64* %1044, align 8
  %1046 = lshr i64 %1045, 63
  %1047 = trunc i64 %1046 to i8
  %1048 = trunc i64 %1045 to i8
  %1049 = and i8 %1048, 1
  %1050 = lshr i64 %1045, 1
  store i64 %1050, i64* %RAX, align 8, !tbaa !2428
  store i8 %1049, i8* %31, align 1, !tbaa !2453
  %1051 = trunc i64 %1050 to i32
  %1052 = and i32 %1051, 255
  %1053 = tail call i32 @llvm.ctpop.i32(i32 %1052) #8
  %1054 = trunc i32 %1053 to i8
  %1055 = and i8 %1054, 1
  %1056 = xor i8 %1055, 1
  store i8 %1056, i8* %38, align 1, !tbaa !2453
  store i8 0, i8* %44, align 1, !tbaa !2453
  %1057 = icmp eq i64 %1050, 0
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %47, align 1, !tbaa !2453
  store i8 0, i8* %50, align 1, !tbaa !2453
  store i8 %1047, i8* %56, align 1, !tbaa !2453
  %1059 = add i64 %1040, 12
  store i64 %1059, i64* %PC, align 8
  store i64 %1050, i64* %1044, align 8
  %1060 = load i64, i64* %RBP, align 8
  %1061 = add i64 %1060, -48
  %1062 = load i64, i64* %PC, align 8
  %1063 = add i64 %1062, 4
  store i64 %1063, i64* %PC, align 8
  %1064 = inttoptr i64 %1061 to i64*
  %1065 = load i64, i64* %1064, align 8
  %1066 = add i64 %1065, 1
  store i64 %1066, i64* %RAX, align 8, !tbaa !2428
  %1067 = icmp eq i64 %1065, -1
  %1068 = icmp eq i64 %1066, 0
  %1069 = or i1 %1067, %1068
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %31, align 1, !tbaa !2432
  %1071 = trunc i64 %1066 to i32
  %1072 = and i32 %1071, 255
  %1073 = tail call i32 @llvm.ctpop.i32(i32 %1072) #8
  %1074 = trunc i32 %1073 to i8
  %1075 = and i8 %1074, 1
  %1076 = xor i8 %1075, 1
  store i8 %1076, i8* %38, align 1, !tbaa !2446
  %1077 = xor i64 %1065, %1066
  %1078 = lshr i64 %1077, 4
  %1079 = trunc i64 %1078 to i8
  %1080 = and i8 %1079, 1
  store i8 %1080, i8* %44, align 1, !tbaa !2447
  %1081 = zext i1 %1068 to i8
  store i8 %1081, i8* %47, align 1, !tbaa !2448
  %1082 = lshr i64 %1066, 63
  %1083 = trunc i64 %1082 to i8
  store i8 %1083, i8* %50, align 1, !tbaa !2449
  %1084 = lshr i64 %1065, 63
  %1085 = xor i64 %1082, %1084
  %1086 = add nuw nsw i64 %1085, %1082
  %1087 = icmp eq i64 %1086, 2
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %56, align 1, !tbaa !2450
  %1089 = add i64 %1062, 12
  store i64 %1089, i64* %PC, align 8
  store i64 %1066, i64* %1064, align 8
  %1090 = load i64, i64* %PC, align 8
  %1091 = add i64 %1090, -269
  store i64 %1091, i64* %PC, align 8, !tbaa !2428
  br label %block_400e3b

block_400d2a:                                     ; preds = %block_400cde, %block_400d1c
  %1092 = phi i64 [ %1654, %block_400cde ], [ %.pre22, %block_400d1c ]
  %1093 = phi i64 [ %1618, %block_400cde ], [ %.pre21, %block_400d1c ]
  %1094 = add i64 %1093, -48
  %1095 = add i64 %1092, 4
  store i64 %1095, i64* %PC, align 8
  %1096 = inttoptr i64 %1094 to i64*
  %1097 = load i64, i64* %1096, align 8
  store i64 %1097, i64* %RAX, align 8, !tbaa !2428
  %1098 = add i64 %1093, -10664
  %1099 = add i64 %1092, 11
  store i64 %1099, i64* %PC, align 8
  %1100 = inttoptr i64 %1098 to i64*
  %1101 = load i64, i64* %1100, align 8
  %1102 = sub i64 %1097, %1101
  %1103 = icmp ult i64 %1097, %1101
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %31, align 1, !tbaa !2432
  %1105 = trunc i64 %1102 to i32
  %1106 = and i32 %1105, 255
  %1107 = tail call i32 @llvm.ctpop.i32(i32 %1106) #8
  %1108 = trunc i32 %1107 to i8
  %1109 = and i8 %1108, 1
  %1110 = xor i8 %1109, 1
  store i8 %1110, i8* %38, align 1, !tbaa !2446
  %1111 = xor i64 %1101, %1097
  %1112 = xor i64 %1111, %1102
  %1113 = lshr i64 %1112, 4
  %1114 = trunc i64 %1113 to i8
  %1115 = and i8 %1114, 1
  store i8 %1115, i8* %44, align 1, !tbaa !2447
  %1116 = icmp eq i64 %1102, 0
  %1117 = zext i1 %1116 to i8
  store i8 %1117, i8* %47, align 1, !tbaa !2448
  %1118 = lshr i64 %1102, 63
  %1119 = trunc i64 %1118 to i8
  store i8 %1119, i8* %50, align 1, !tbaa !2449
  %1120 = lshr i64 %1097, 63
  %1121 = lshr i64 %1101, 63
  %1122 = xor i64 %1121, %1120
  %1123 = xor i64 %1118, %1120
  %1124 = add nuw nsw i64 %1123, %1122
  %1125 = icmp eq i64 %1124, 2
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %56, align 1, !tbaa !2450
  %1127 = or i1 %1116, %1103
  %.v56 = select i1 %1127, i64 28, i64 17
  %1128 = add i64 %1092, %.v56
  store i64 %1128, i64* %PC, align 8, !tbaa !2428
  br i1 %1127, label %block_400d46, label %block_400d3b

block_401321:                                     ; preds = %block_401316
  %1129 = add i64 %1218, 4
  store i64 %1129, i64* %PC, align 8
  %1130 = load i64, i64* %1193, align 8
  %1131 = lshr i64 %1130, 63
  %1132 = trunc i64 %1131 to i8
  %1133 = trunc i64 %1130 to i8
  %1134 = and i8 %1133, 1
  %1135 = lshr i64 %1130, 1
  store i64 %1135, i64* %RAX, align 8, !tbaa !2428
  store i8 %1134, i8* %31, align 1, !tbaa !2453
  %1136 = trunc i64 %1135 to i32
  %1137 = and i32 %1136, 255
  %1138 = tail call i32 @llvm.ctpop.i32(i32 %1137) #8
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  %1141 = xor i8 %1140, 1
  store i8 %1141, i8* %38, align 1, !tbaa !2453
  store i8 0, i8* %44, align 1, !tbaa !2453
  %1142 = icmp eq i64 %1135, 0
  %1143 = zext i1 %1142 to i8
  store i8 %1143, i8* %47, align 1, !tbaa !2453
  store i8 0, i8* %50, align 1, !tbaa !2453
  store i8 %1132, i8* %56, align 1, !tbaa !2453
  %1144 = add i64 %1218, 12
  store i64 %1144, i64* %PC, align 8
  store i64 %1135, i64* %1193, align 8
  %1145 = load i64, i64* %PC, align 8
  %1146 = add i64 %1145, 25
  store i64 %1146, i64* %PC, align 8, !tbaa !2428
  br label %block_401346

block_400f1e:                                     ; preds = %block_400eff
  %1147 = add i64 %1294, -10681
  %1148 = add i64 %1324, 7
  store i64 %1148, i64* %PC, align 8
  %1149 = inttoptr i64 %1147 to i8*
  %1150 = load i8, i8* %1149, align 1
  %1151 = sext i8 %1150 to i64
  %1152 = and i64 %1151, 4294967294
  %1153 = or i64 %1152, 1
  %1154 = trunc i64 %1153 to i32
  store i64 %1153, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %31, align 1, !tbaa !2432
  %1155 = and i32 %1154, 255
  %1156 = tail call i32 @llvm.ctpop.i32(i32 %1155) #8
  %1157 = trunc i32 %1156 to i8
  %1158 = and i8 %1157, 1
  %1159 = xor i8 %1158, 1
  store i8 %1159, i8* %38, align 1, !tbaa !2446
  store i8 0, i8* %47, align 1, !tbaa !2448
  %1160 = lshr i32 %1154, 31
  %1161 = trunc i32 %1160 to i8
  store i8 %1161, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  store i8 0, i8* %44, align 1, !tbaa !2447
  %1162 = trunc i64 %1153 to i8
  store i8 %1162, i8* %CL, align 1, !tbaa !2453
  %1163 = add i64 %1324, 18
  store i64 %1163, i64* %PC, align 8
  store i8 %1162, i8* %1149, align 1
  %.pre27 = load i64, i64* %RBP, align 8
  %.pre28 = load i64, i64* %PC, align 8
  br label %block_400f30

block_400d75:                                     ; preds = %block_400d67
  store i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %1164 = load i64, i64* @stderr, align 32
  store i64 %1164, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %1165 = add i64 %794, -1925
  %1166 = add i64 %794, 25
  %1167 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1168 = add i64 %1167, -8
  %1169 = inttoptr i64 %1168 to i64*
  store i64 %1166, i64* %1169, align 8
  store i64 %1168, i64* %RSP, align 8, !tbaa !2428
  store i64 %1165, i64* %PC, align 8, !tbaa !2428
  %1170 = tail call fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.11)
  %1171 = load i64, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %1172 = load i64, i64* %RBP, align 8
  %1173 = add i64 %1172, -13080
  %1174 = load i32, i32* %EAX, align 4
  %1175 = add i64 %1171, 11
  store i64 %1175, i64* %PC, align 8
  %1176 = inttoptr i64 %1173 to i32*
  store i32 %1174, i32* %1176, align 4
  %1177 = load i64, i64* %PC, align 8
  %1178 = add i64 %1177, -1913
  %1179 = add i64 %1177, 5
  %1180 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1181 = add i64 %1180, -8
  %1182 = inttoptr i64 %1181 to i64*
  store i64 %1179, i64* %1182, align 8
  store i64 %1181, i64* %RSP, align 8, !tbaa !2428
  store i64 %1178, i64* %PC, align 8, !tbaa !2428
  %1183 = tail call fastcc %struct.Memory* @ext_400620_exit(%struct.State* nonnull %0, %struct.Memory* %1170)
  %1184 = load i64, i64* %PC, align 8
  %1185 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %1184, %struct.Memory* %1183)
  ret %struct.Memory* %1185

block_400d1c:                                     ; preds = %block_400cde
  %1186 = add i64 %1654, 7
  store i64 %1186, i64* %PC, align 8
  %1187 = load i64, i64* %1622, align 8
  store i64 %1187, i64* %RAX, align 8, !tbaa !2428
  %1188 = add i64 %1654, 14
  store i64 %1188, i64* %PC, align 8
  store i64 %1187, i64* %1626, align 8
  %.pre21 = load i64, i64* %RBP, align 8
  %.pre22 = load i64, i64* %PC, align 8
  br label %block_400d2a

block_401316:                                     ; preds = %block_4012c7, %block_4012dd
  %1189 = phi i64 [ %.pre42, %block_4012dd ], [ %1688, %block_4012c7 ]
  %1190 = phi i64 [ %.pre41, %block_4012dd ], [ %1761, %block_4012c7 ]
  %1191 = add i64 %1190, -72
  %1192 = add i64 %1189, 5
  store i64 %1192, i64* %PC, align 8
  %1193 = inttoptr i64 %1191 to i64*
  %1194 = load i64, i64* %1193, align 8
  %1195 = add i64 %1194, -1
  %1196 = icmp eq i64 %1194, 0
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %31, align 1, !tbaa !2432
  %1198 = trunc i64 %1195 to i32
  %1199 = and i32 %1198, 255
  %1200 = tail call i32 @llvm.ctpop.i32(i32 %1199) #8
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  %1203 = xor i8 %1202, 1
  store i8 %1203, i8* %38, align 1, !tbaa !2446
  %1204 = xor i64 %1194, %1195
  %1205 = lshr i64 %1204, 4
  %1206 = trunc i64 %1205 to i8
  %1207 = and i8 %1206, 1
  store i8 %1207, i8* %44, align 1, !tbaa !2447
  %1208 = icmp eq i64 %1195, 0
  %1209 = zext i1 %1208 to i8
  store i8 %1209, i8* %47, align 1, !tbaa !2448
  %1210 = lshr i64 %1195, 63
  %1211 = trunc i64 %1210 to i8
  store i8 %1211, i8* %50, align 1, !tbaa !2449
  %1212 = lshr i64 %1194, 63
  %1213 = xor i64 %1210, %1212
  %1214 = add nuw nsw i64 %1213, %1212
  %1215 = icmp eq i64 %1214, 2
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %56, align 1, !tbaa !2450
  %1217 = or i1 %1208, %1196
  %.v77 = select i1 %1217, i64 28, i64 11
  %1218 = add i64 %1189, %.v77
  store i64 %1218, i64* %PC, align 8, !tbaa !2428
  br i1 %1217, label %block_401332, label %block_401321

block_400ff7:                                     ; preds = %block_400fe9
  %1219 = add i64 %961, 4
  store i64 %1219, i64* %PC, align 8
  %1220 = load i64, i64* %937, align 8
  store i64 %1220, i64* %RAX, align 8, !tbaa !2428
  %1221 = trunc i64 %1220 to i8
  store i8 %1221, i8* %CL, align 1, !tbaa !2453
  %1222 = add i64 %934, -13000
  %1223 = add i64 %961, 13
  store i64 %1223, i64* %PC, align 8
  %1224 = inttoptr i64 %1222 to i64*
  %1225 = load i64, i64* %1224, align 8
  store i64 %1225, i64* %RAX, align 8, !tbaa !2428
  %1226 = add i64 %961, 15
  store i64 %1226, i64* %PC, align 8
  %1227 = inttoptr i64 %1225 to i8*
  store i8 %1221, i8* %1227, align 1
  %1228 = load i64, i64* %RBP, align 8
  %1229 = add i64 %1228, -13000
  %1230 = load i64, i64* %PC, align 8
  %1231 = add i64 %1230, 7
  store i64 %1231, i64* %PC, align 8
  %1232 = inttoptr i64 %1229 to i64*
  %1233 = load i64, i64* %1232, align 8
  %1234 = add i64 %1233, 1
  store i64 %1234, i64* %RAX, align 8, !tbaa !2428
  %1235 = icmp eq i64 %1233, -1
  %1236 = icmp eq i64 %1234, 0
  %1237 = or i1 %1235, %1236
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %31, align 1, !tbaa !2432
  %1239 = trunc i64 %1234 to i32
  %1240 = and i32 %1239, 255
  %1241 = tail call i32 @llvm.ctpop.i32(i32 %1240) #8
  %1242 = trunc i32 %1241 to i8
  %1243 = and i8 %1242, 1
  %1244 = xor i8 %1243, 1
  store i8 %1244, i8* %38, align 1, !tbaa !2446
  %1245 = xor i64 %1233, %1234
  %1246 = lshr i64 %1245, 4
  %1247 = trunc i64 %1246 to i8
  %1248 = and i8 %1247, 1
  store i8 %1248, i8* %44, align 1, !tbaa !2447
  %1249 = zext i1 %1236 to i8
  store i8 %1249, i8* %47, align 1, !tbaa !2448
  %1250 = lshr i64 %1234, 63
  %1251 = trunc i64 %1250 to i8
  store i8 %1251, i8* %50, align 1, !tbaa !2449
  %1252 = lshr i64 %1233, 63
  %1253 = xor i64 %1250, %1252
  %1254 = add nuw nsw i64 %1253, %1250
  %1255 = icmp eq i64 %1254, 2
  %1256 = zext i1 %1255 to i8
  store i8 %1256, i8* %56, align 1, !tbaa !2450
  %1257 = add i64 %1230, 18
  store i64 %1257, i64* %PC, align 8
  store i64 %1234, i64* %1232, align 8
  %1258 = load i64, i64* %RBP, align 8
  %1259 = add i64 %1258, -56
  %1260 = load i64, i64* %PC, align 8
  %1261 = add i64 %1260, 4
  store i64 %1261, i64* %PC, align 8
  %1262 = inttoptr i64 %1259 to i64*
  %1263 = load i64, i64* %1262, align 8
  store i64 %1263, i64* %RAX, align 8, !tbaa !2428
  %1264 = shl i64 %1263, 3
  %1265 = add i64 %1258, -10368
  %1266 = add i64 %1265, %1264
  %1267 = add i64 %1260, 12
  store i64 %1267, i64* %PC, align 8
  %1268 = inttoptr i64 %1266 to i64*
  %1269 = load i64, i64* %1268, align 8
  store i64 %1269, i64* %RAX, align 8, !tbaa !2428
  %1270 = add i64 %1260, 16
  store i64 %1270, i64* %PC, align 8
  %1271 = load i64, i64* %1262, align 8
  store i64 %1271, i64* %RDX, align 8, !tbaa !2428
  %1272 = add i64 %1258, -10624
  %1273 = add i64 %1272, %1271
  %1274 = add i64 %1260, 24
  store i64 %1274, i64* %PC, align 8
  %1275 = inttoptr i64 %1273 to i8*
  %1276 = load i8, i8* %1275, align 1
  %1277 = zext i8 %1276 to i64
  store i64 %1277, i64* %RSI, align 8, !tbaa !2428
  store i64 %1277, i64* %RDX, align 8, !tbaa !2428
  %1278 = or i64 %1277, %1269
  store i64 %1278, i64* %RAX, align 8, !tbaa !2428
  %1279 = trunc i64 %1278 to i32
  %1280 = and i32 %1279, 255
  %1281 = tail call i32 @llvm.ctpop.i32(i32 %1280) #8
  %1282 = trunc i32 %1281 to i8
  %1283 = and i8 %1282, 1
  %1284 = xor i8 %1283, 1
  %1285 = icmp eq i64 %1278, 0
  %1286 = zext i1 %1285 to i8
  %1287 = lshr i64 %1269, 63
  %1288 = trunc i64 %1287 to i8
  store i8 0, i8* %31, align 1, !tbaa !2432
  store i8 %1284, i8* %38, align 1, !tbaa !2446
  store i8 0, i8* %44, align 1, !tbaa !2447
  store i8 %1286, i8* %47, align 1, !tbaa !2448
  store i8 %1288, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  %.v66 = select i1 %1285, i64 212, i64 39
  %1289 = add i64 %1260, %.v66
  store i64 %1289, i64* %PC, align 8, !tbaa !2428
  br i1 %1285, label %block_4010ec, label %block_40103f

block_401102:                                     ; preds = %block_400fe9
  %1290 = add i64 %934, -48
  %1291 = add i64 %961, 8
  store i64 %1291, i64* %PC, align 8
  %1292 = inttoptr i64 %1290 to i64*
  store i64 1, i64* %1292, align 8
  %.pre35 = load i64, i64* %PC, align 8
  br label %block_40110a

block_400eff:                                     ; preds = %block_400ec8, %block_400ede
  %1293 = phi i64 [ %1812, %block_400ec8 ], [ %.pre26, %block_400ede ]
  %1294 = load i64, i64* %RBP, align 8
  %1295 = add i64 %1294, -112
  %1296 = add i64 %1293, 4
  store i64 %1296, i64* %PC, align 8
  %1297 = inttoptr i64 %1295 to i64*
  %1298 = load i64, i64* %1297, align 8
  store i64 %1298, i64* %RAX, align 8, !tbaa !2428
  %1299 = add i64 %1293, 7
  store i64 %1299, i64* %PC, align 8
  %1300 = inttoptr i64 %1298 to i8*
  %1301 = load i8, i8* %1300, align 1
  %1302 = zext i8 %1301 to i64
  store i64 %1302, i64* %RCX, align 8, !tbaa !2428
  store i64 %1302, i64* %RAX, align 8, !tbaa !2428
  %1303 = shl nuw nsw i64 %1302, 3
  %1304 = add i64 %1294, -10368
  %1305 = add i64 %1304, %1303
  %1306 = add i64 %1293, 17
  store i64 %1306, i64* %PC, align 8
  %1307 = inttoptr i64 %1305 to i64*
  %1308 = load i64, i64* %1307, align 8
  store i64 %1308, i64* %RAX, align 8, !tbaa !2428
  %1309 = add i64 %1294, -72
  %1310 = add i64 %1293, 21
  store i64 %1310, i64* %PC, align 8
  %1311 = inttoptr i64 %1309 to i64*
  %1312 = load i64, i64* %1311, align 8
  %1313 = and i64 %1312, %1308
  store i64 %1313, i64* %RAX, align 8, !tbaa !2428
  %1314 = trunc i64 %1313 to i32
  %1315 = and i32 %1314, 255
  %1316 = tail call i32 @llvm.ctpop.i32(i32 %1315) #8
  %1317 = trunc i32 %1316 to i8
  %1318 = and i8 %1317, 1
  %1319 = xor i8 %1318, 1
  %1320 = icmp eq i64 %1313, 0
  %1321 = zext i1 %1320 to i8
  %1322 = lshr i64 %1313, 63
  %1323 = trunc i64 %1322 to i8
  store i8 0, i8* %31, align 1, !tbaa !2432
  store i8 %1319, i8* %38, align 1, !tbaa !2446
  store i8 0, i8* %44, align 1, !tbaa !2447
  store i8 %1321, i8* %47, align 1, !tbaa !2448
  store i8 %1323, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  %.v63 = select i1 %1320, i64 49, i64 31
  %1324 = add i64 %1293, %.v63
  store i64 %1324, i64* %PC, align 8, !tbaa !2428
  br i1 %1320, label %block_400f30, label %block_400f1e

block_4010ec:                                     ; preds = %block_4010dc, %block_400ff7
  %1325 = phi i64 [ %1258, %block_400ff7 ], [ %.pre34, %block_4010dc ]
  %1326 = phi i64 [ %1289, %block_400ff7 ], [ %.pre33, %block_4010dc ]
  %1327 = add i64 %1325, -56
  %1328 = add i64 %1326, 9
  store i64 %1328, i64* %PC, align 8
  %1329 = inttoptr i64 %1327 to i64*
  %1330 = load i64, i64* %1329, align 8
  %1331 = add i64 %1330, 1
  store i64 %1331, i64* %RAX, align 8, !tbaa !2428
  %1332 = icmp eq i64 %1330, -1
  %1333 = icmp eq i64 %1331, 0
  %1334 = or i1 %1332, %1333
  %1335 = zext i1 %1334 to i8
  store i8 %1335, i8* %31, align 1, !tbaa !2432
  %1336 = trunc i64 %1331 to i32
  %1337 = and i32 %1336, 255
  %1338 = tail call i32 @llvm.ctpop.i32(i32 %1337) #8
  %1339 = trunc i32 %1338 to i8
  %1340 = and i8 %1339, 1
  %1341 = xor i8 %1340, 1
  store i8 %1341, i8* %38, align 1, !tbaa !2446
  %1342 = xor i64 %1330, %1331
  %1343 = lshr i64 %1342, 4
  %1344 = trunc i64 %1343 to i8
  %1345 = and i8 %1344, 1
  store i8 %1345, i8* %44, align 1, !tbaa !2447
  %1346 = zext i1 %1333 to i8
  store i8 %1346, i8* %47, align 1, !tbaa !2448
  %1347 = lshr i64 %1331, 63
  %1348 = trunc i64 %1347 to i8
  store i8 %1348, i8* %50, align 1, !tbaa !2449
  %1349 = lshr i64 %1330, 63
  %1350 = xor i64 %1347, %1349
  %1351 = add nuw nsw i64 %1350, %1347
  %1352 = icmp eq i64 %1351, 2
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %56, align 1, !tbaa !2450
  %1354 = add i64 %1326, 17
  store i64 %1354, i64* %PC, align 8
  store i64 %1331, i64* %1329, align 8
  %1355 = load i64, i64* %PC, align 8
  %1356 = add i64 %1355, -276
  store i64 %1356, i64* %PC, align 8, !tbaa !2428
  br label %block_400fe9

block_40134b:                                     ; preds = %block_40125a
  %1357 = add i64 %2679, -120
  %1358 = add i64 %2713, 4
  store i64 %1358, i64* %PC, align 8
  %1359 = inttoptr i64 %1357 to i64*
  %1360 = load i64, i64* %1359, align 8
  store i64 %1360, i64* %RDI, align 8, !tbaa !2428
  %1361 = add i64 %2713, -3467
  %1362 = add i64 %2713, 9
  %1363 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1364 = add i64 %1363, -8
  %1365 = inttoptr i64 %1364 to i64*
  store i64 %1362, i64* %1365, align 8
  store i64 %1364, i64* %RSP, align 8, !tbaa !2428
  store i64 %1361, i64* %PC, align 8, !tbaa !2428
  %1366 = tail call fastcc %struct.Memory* @ext_6020f0_free(%struct.State* nonnull %0, %struct.Memory* %752)
  %1367 = load i64, i64* %RSP, align 8
  %1368 = load i64, i64* %PC, align 8
  %1369 = add i64 %1367, 13080
  store i64 %1369, i64* %RSP, align 8, !tbaa !2428
  %1370 = icmp ugt i64 %1367, -13081
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %31, align 1, !tbaa !2432
  %1372 = trunc i64 %1369 to i32
  %1373 = and i32 %1372, 255
  %1374 = tail call i32 @llvm.ctpop.i32(i32 %1373) #8
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  %1377 = xor i8 %1376, 1
  store i8 %1377, i8* %38, align 1, !tbaa !2446
  %1378 = xor i64 %1367, 16
  %1379 = xor i64 %1378, %1369
  %1380 = lshr i64 %1379, 4
  %1381 = trunc i64 %1380 to i8
  %1382 = and i8 %1381, 1
  store i8 %1382, i8* %44, align 1, !tbaa !2447
  %1383 = icmp eq i64 %1369, 0
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %47, align 1, !tbaa !2448
  %1385 = lshr i64 %1369, 63
  %1386 = trunc i64 %1385 to i8
  store i8 %1386, i8* %50, align 1, !tbaa !2449
  %1387 = lshr i64 %1367, 63
  %1388 = xor i64 %1385, %1387
  %1389 = add nuw nsw i64 %1388, %1385
  %1390 = icmp eq i64 %1389, 2
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %56, align 1, !tbaa !2450
  %1392 = add i64 %1368, 8
  store i64 %1392, i64* %PC, align 8
  %1393 = add i64 %1367, 13088
  %1394 = inttoptr i64 %1369 to i64*
  %1395 = load i64, i64* %1394, align 8
  store i64 %1395, i64* %RBX, align 8, !tbaa !2428
  store i64 %1393, i64* %RSP, align 8, !tbaa !2428
  %1396 = add i64 %1368, 10
  store i64 %1396, i64* %PC, align 8
  %1397 = add i64 %1367, 13096
  %1398 = inttoptr i64 %1393 to i64*
  %1399 = load i64, i64* %1398, align 8
  store i64 %1399, i64* %R14, align 8, !tbaa !2428
  store i64 %1397, i64* %RSP, align 8, !tbaa !2428
  %1400 = add i64 %1368, 12
  store i64 %1400, i64* %PC, align 8
  %1401 = add i64 %1367, 13104
  %1402 = inttoptr i64 %1397 to i64*
  %1403 = load i64, i64* %1402, align 8
  store i64 %1403, i64* %R15, align 8, !tbaa !2428
  store i64 %1401, i64* %RSP, align 8, !tbaa !2428
  %1404 = add i64 %1368, 13
  store i64 %1404, i64* %PC, align 8
  %1405 = add i64 %1367, 13112
  %1406 = inttoptr i64 %1401 to i64*
  %1407 = load i64, i64* %1406, align 8
  store i64 %1407, i64* %RBP, align 8, !tbaa !2428
  store i64 %1405, i64* %RSP, align 8, !tbaa !2428
  %1408 = add i64 %1368, 14
  store i64 %1408, i64* %PC, align 8
  %1409 = inttoptr i64 %1405 to i64*
  %1410 = load i64, i64* %1409, align 8
  store i64 %1410, i64* %PC, align 8, !tbaa !2428
  %1411 = add i64 %1367, 13120
  store i64 %1411, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %1366

block_4010dc:                                     ; preds = %block_40106e
  %1412 = load i64, i64* %2521, align 8
  store i64 %1412, i64* %RCX, align 8, !tbaa !2428
  %1413 = shl i64 %1412, 3
  %1414 = add i64 %2514, -12736
  %1415 = add i64 %1414, %1413
  %1416 = add i64 %2552, 16
  store i64 %1416, i64* %PC, align 8
  %1417 = inttoptr i64 %1415 to i64*
  store i64 %2556, i64* %1417, align 8
  %.pre33 = load i64, i64* %PC, align 8
  %.pre34 = load i64, i64* %RBP, align 8
  br label %block_4010ec

block_400acd:                                     ; preds = %block_400ad8, %block_400ac8
  %1418 = phi i64 [ %1689, %block_400ac8 ], [ %2289, %block_400ad8 ]
  %1419 = phi i64 [ %2291, %block_400ac8 ], [ %.pre16, %block_400ad8 ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.16, %block_400ac8 ], [ %2287, %block_400ad8 ]
  %1420 = add i64 %1419, -64
  %1421 = add i64 %1418, 5
  store i64 %1421, i64* %PC, align 8
  %1422 = inttoptr i64 %1420 to i64*
  %1423 = load i64, i64* %1422, align 8
  %1424 = add i64 %1423, -1
  %1425 = icmp eq i64 %1423, 0
  %1426 = zext i1 %1425 to i8
  store i8 %1426, i8* %31, align 1, !tbaa !2432
  %1427 = trunc i64 %1424 to i32
  %1428 = and i32 %1427, 255
  %1429 = tail call i32 @llvm.ctpop.i32(i32 %1428) #8
  %1430 = trunc i32 %1429 to i8
  %1431 = and i8 %1430, 1
  %1432 = xor i8 %1431, 1
  store i8 %1432, i8* %38, align 1, !tbaa !2446
  %1433 = xor i64 %1423, %1424
  %1434 = lshr i64 %1433, 4
  %1435 = trunc i64 %1434 to i8
  %1436 = and i8 %1435, 1
  store i8 %1436, i8* %44, align 1, !tbaa !2447
  %1437 = icmp eq i64 %1424, 0
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %47, align 1, !tbaa !2448
  %1439 = lshr i64 %1424, 63
  %1440 = trunc i64 %1439 to i8
  store i8 %1440, i8* %50, align 1, !tbaa !2449
  %1441 = lshr i64 %1423, 63
  %1442 = xor i64 %1439, %1441
  %1443 = add nuw nsw i64 %1442, %1441
  %1444 = icmp eq i64 %1443, 2
  %1445 = zext i1 %1444 to i8
  store i8 %1445, i8* %56, align 1, !tbaa !2450
  %1446 = or i1 %1437, %1425
  %.v50 = select i1 %1446, i64 243, i64 11
  %1447 = add i64 %1418, %.v50
  store i64 %1447, i64* %PC, align 8, !tbaa !2428
  br i1 %1446, label %block_400bc0, label %block_400ad8

block_4012b6:                                     ; preds = %block_4012a0
  %1448 = load i64, i64* %1764, align 8
  %1449 = add i64 %1448, 1
  store i64 %1449, i64* %RAX, align 8, !tbaa !2428
  %1450 = icmp eq i64 %1448, -1
  %1451 = icmp eq i64 %1449, 0
  %1452 = or i1 %1450, %1451
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %31, align 1, !tbaa !2432
  %1454 = trunc i64 %1449 to i32
  %1455 = and i32 %1454, 255
  %1456 = tail call i32 @llvm.ctpop.i32(i32 %1455) #8
  %1457 = trunc i32 %1456 to i8
  %1458 = and i8 %1457, 1
  %1459 = xor i8 %1458, 1
  store i8 %1459, i8* %38, align 1, !tbaa !2446
  %1460 = xor i64 %1448, %1449
  %1461 = lshr i64 %1460, 4
  %1462 = trunc i64 %1461 to i8
  %1463 = and i8 %1462, 1
  store i8 %1463, i8* %44, align 1, !tbaa !2447
  %1464 = zext i1 %1451 to i8
  store i8 %1464, i8* %47, align 1, !tbaa !2448
  %1465 = lshr i64 %1449, 63
  %1466 = trunc i64 %1465 to i8
  store i8 %1466, i8* %50, align 1, !tbaa !2449
  %1467 = lshr i64 %1448, 63
  %1468 = xor i64 %1465, %1467
  %1469 = add nuw nsw i64 %1468, %1465
  %1470 = icmp eq i64 %1469, 2
  %1471 = zext i1 %1470 to i8
  store i8 %1471, i8* %56, align 1, !tbaa !2450
  %1472 = add i64 %1801, 12
  store i64 %1472, i64* %PC, align 8
  store i64 %1449, i64* %1764, align 8
  %1473 = load i64, i64* %PC, align 8
  %1474 = add i64 %1473, -34
  br label %block_4012a0

block_4010b3:                                     ; preds = %block_401089
  %1475 = add i64 %1975, -80
  %1476 = add i64 %2002, 4
  store i64 %1476, i64* %PC, align 8
  %1477 = inttoptr i64 %1475 to i64*
  %1478 = load i64, i64* %1477, align 8
  %1479 = add i64 %1478, 1
  store i64 %1479, i64* %RAX, align 8, !tbaa !2428
  %1480 = icmp eq i64 %1478, -1
  %1481 = icmp eq i64 %1479, 0
  %1482 = or i1 %1480, %1481
  %1483 = zext i1 %1482 to i8
  store i8 %1483, i8* %31, align 1, !tbaa !2432
  %1484 = trunc i64 %1479 to i32
  %1485 = and i32 %1484, 255
  %1486 = tail call i32 @llvm.ctpop.i32(i32 %1485) #8
  %1487 = trunc i32 %1486 to i8
  %1488 = and i8 %1487, 1
  %1489 = xor i8 %1488, 1
  store i8 %1489, i8* %38, align 1, !tbaa !2446
  %1490 = xor i64 %1478, %1479
  %1491 = lshr i64 %1490, 4
  %1492 = trunc i64 %1491 to i8
  %1493 = and i8 %1492, 1
  store i8 %1493, i8* %44, align 1, !tbaa !2447
  %1494 = zext i1 %1481 to i8
  store i8 %1494, i8* %47, align 1, !tbaa !2448
  %1495 = lshr i64 %1479, 63
  %1496 = trunc i64 %1495 to i8
  store i8 %1496, i8* %50, align 1, !tbaa !2449
  %1497 = lshr i64 %1478, 63
  %1498 = xor i64 %1495, %1497
  %1499 = add nuw nsw i64 %1498, %1495
  %1500 = icmp eq i64 %1499, 2
  %1501 = zext i1 %1500 to i8
  store i8 %1501, i8* %56, align 1, !tbaa !2450
  %1502 = add i64 %2002, 12
  store i64 %1502, i64* %PC, align 8
  store i64 %1479, i64* %1477, align 8
  %.pre31 = load i64, i64* %RBP, align 8
  %.pre32 = load i64, i64* %PC, align 8
  br label %block_4010bf

block_400f4d:                                     ; preds = %block_400e3b
  %1503 = add i64 %2897, 4
  store i64 %1503, i64* %PC, align 8
  %1504 = load i64, i64* %2862, align 8
  %1505 = add i64 %1504, 1
  store i64 %1505, i64* %RAX, align 8, !tbaa !2428
  %1506 = icmp eq i64 %1504, -1
  %1507 = icmp eq i64 %1505, 0
  %1508 = or i1 %1506, %1507
  %1509 = zext i1 %1508 to i8
  store i8 %1509, i8* %31, align 1, !tbaa !2432
  %1510 = trunc i64 %1505 to i32
  %1511 = and i32 %1510, 255
  %1512 = tail call i32 @llvm.ctpop.i32(i32 %1511) #8
  %1513 = trunc i32 %1512 to i8
  %1514 = and i8 %1513, 1
  %1515 = xor i8 %1514, 1
  store i8 %1515, i8* %38, align 1, !tbaa !2446
  %1516 = xor i64 %1504, %1505
  %1517 = lshr i64 %1516, 4
  %1518 = trunc i64 %1517 to i8
  %1519 = and i8 %1518, 1
  store i8 %1519, i8* %44, align 1, !tbaa !2447
  %1520 = zext i1 %1507 to i8
  store i8 %1520, i8* %47, align 1, !tbaa !2448
  %1521 = lshr i64 %1505, 63
  %1522 = trunc i64 %1521 to i8
  store i8 %1522, i8* %50, align 1, !tbaa !2449
  %1523 = lshr i64 %1504, 63
  %1524 = xor i64 %1521, %1523
  %1525 = add nuw nsw i64 %1524, %1521
  %1526 = icmp eq i64 %1525, 2
  %1527 = zext i1 %1526 to i8
  store i8 %1527, i8* %56, align 1, !tbaa !2450
  %1528 = add i64 %2897, 12
  store i64 %1528, i64* %PC, align 8
  store i64 %1505, i64* %2862, align 8
  %1529 = load i64, i64* %RBP, align 8
  %1530 = add i64 %1529, -56
  %1531 = load i64, i64* %PC, align 8
  %1532 = add i64 %1531, 4
  store i64 %1532, i64* %PC, align 8
  %1533 = inttoptr i64 %1530 to i64*
  %1534 = load i64, i64* %1533, align 8
  %1535 = add i64 %1534, 1
  store i64 %1535, i64* %RAX, align 8, !tbaa !2428
  %1536 = icmp eq i64 %1534, -1
  %1537 = icmp eq i64 %1535, 0
  %1538 = or i1 %1536, %1537
  %1539 = zext i1 %1538 to i8
  store i8 %1539, i8* %31, align 1, !tbaa !2432
  %1540 = trunc i64 %1535 to i32
  %1541 = and i32 %1540, 255
  %1542 = tail call i32 @llvm.ctpop.i32(i32 %1541) #8
  %1543 = trunc i32 %1542 to i8
  %1544 = and i8 %1543, 1
  %1545 = xor i8 %1544, 1
  store i8 %1545, i8* %38, align 1, !tbaa !2446
  %1546 = xor i64 %1534, %1535
  %1547 = lshr i64 %1546, 4
  %1548 = trunc i64 %1547 to i8
  %1549 = and i8 %1548, 1
  store i8 %1549, i8* %44, align 1, !tbaa !2447
  %1550 = zext i1 %1537 to i8
  store i8 %1550, i8* %47, align 1, !tbaa !2448
  %1551 = lshr i64 %1535, 63
  %1552 = trunc i64 %1551 to i8
  store i8 %1552, i8* %50, align 1, !tbaa !2449
  %1553 = lshr i64 %1534, 63
  %1554 = xor i64 %1551, %1553
  %1555 = add nuw nsw i64 %1554, %1551
  %1556 = icmp eq i64 %1555, 2
  %1557 = zext i1 %1556 to i8
  store i8 %1557, i8* %56, align 1, !tbaa !2450
  %1558 = add i64 %1531, 12
  store i64 %1558, i64* %PC, align 8
  store i64 %1535, i64* %1533, align 8
  %1559 = load i64, i64* %PC, align 8
  %1560 = add i64 %1559, -356
  store i64 %1560, i64* %PC, align 8, !tbaa !2428
  br label %block_400e01

block_40110a:                                     ; preds = %block_40117e, %block_401102
  %1561 = phi i64 [ %.pre35, %block_401102 ], [ %1901, %block_40117e ]
  %1562 = load i64, i64* %RBP, align 8
  %1563 = add i64 %1562, -48
  %1564 = add i64 %1561, 8
  store i64 %1564, i64* %PC, align 8
  %1565 = inttoptr i64 %1563 to i64*
  %1566 = load i64, i64* %1565, align 8
  %1567 = add i64 %1566, -256
  %1568 = icmp ult i64 %1566, 256
  %1569 = zext i1 %1568 to i8
  store i8 %1569, i8* %31, align 1, !tbaa !2432
  %1570 = trunc i64 %1567 to i32
  %1571 = and i32 %1570, 255
  %1572 = tail call i32 @llvm.ctpop.i32(i32 %1571) #8
  %1573 = trunc i32 %1572 to i8
  %1574 = and i8 %1573, 1
  %1575 = xor i8 %1574, 1
  store i8 %1575, i8* %38, align 1, !tbaa !2446
  %1576 = xor i64 %1566, %1567
  %1577 = lshr i64 %1576, 4
  %1578 = trunc i64 %1577 to i8
  %1579 = and i8 %1578, 1
  store i8 %1579, i8* %44, align 1, !tbaa !2447
  %1580 = icmp eq i64 %1567, 0
  %1581 = zext i1 %1580 to i8
  store i8 %1581, i8* %47, align 1, !tbaa !2448
  %1582 = lshr i64 %1567, 63
  %1583 = trunc i64 %1582 to i8
  store i8 %1583, i8* %50, align 1, !tbaa !2449
  %1584 = lshr i64 %1566, 63
  %1585 = xor i64 %1582, %1584
  %1586 = add nuw nsw i64 %1585, %1584
  %1587 = icmp eq i64 %1586, 2
  %1588 = zext i1 %1587 to i8
  store i8 %1588, i8* %56, align 1, !tbaa !2450
  %.v69 = select i1 %1568, i64 14, i64 239
  %1589 = add i64 %1561, %.v69
  store i64 %1589, i64* %PC, align 8, !tbaa !2428
  br i1 %1568, label %block_401118, label %block_4011f9

block_400cde:                                     ; preds = %block_400c73
  %1590 = add i64 %2411, -10648
  %1591 = add i64 %2425, 7
  store i64 %1591, i64* %PC, align 8
  %1592 = inttoptr i64 %1590 to i64*
  %1593 = load i64, i64* %1592, align 8
  store i64 %1593, i64* %RAX, align 8, !tbaa !2428
  %1594 = add i64 %2411, -10640
  %1595 = add i64 %2425, 14
  store i64 %1595, i64* %PC, align 8
  %1596 = inttoptr i64 %1594 to i64*
  %1597 = load i64, i64* %1596, align 8
  store i64 %1597, i64* %RCX, align 8, !tbaa !2428
  %1598 = shl i64 %1597, 3
  %1599 = add i64 %2411, -10368
  %1600 = add i64 %1599, %1598
  %1601 = add i64 %2425, 22
  store i64 %1601, i64* %PC, align 8
  %1602 = inttoptr i64 %1600 to i64*
  store i64 %1593, i64* %1602, align 8
  %1603 = load i64, i64* %RBP, align 8
  %1604 = add i64 %1603, -48
  %1605 = load i64, i64* %PC, align 8
  %1606 = add i64 %1605, 4
  store i64 %1606, i64* %PC, align 8
  %1607 = inttoptr i64 %1604 to i64*
  %1608 = load i64, i64* %1607, align 8
  store i64 %1608, i64* %RAX, align 8, !tbaa !2428
  %1609 = trunc i64 %1608 to i8
  store i8 %1609, i8* %DL, align 1, !tbaa !2453
  %1610 = add i64 %1603, -10640
  %1611 = add i64 %1605, 13
  store i64 %1611, i64* %PC, align 8
  %1612 = inttoptr i64 %1610 to i64*
  %1613 = load i64, i64* %1612, align 8
  store i64 %1613, i64* %RAX, align 8, !tbaa !2428
  %1614 = add i64 %1603, -10624
  %1615 = add i64 %1614, %1613
  %1616 = add i64 %1605, 20
  store i64 %1616, i64* %PC, align 8
  %1617 = inttoptr i64 %1615 to i8*
  store i8 %1609, i8* %1617, align 1
  %1618 = load i64, i64* %RBP, align 8
  %1619 = add i64 %1618, -10648
  %1620 = load i64, i64* %PC, align 8
  %1621 = add i64 %1620, 7
  store i64 %1621, i64* %PC, align 8
  %1622 = inttoptr i64 %1619 to i64*
  %1623 = load i64, i64* %1622, align 8
  store i64 %1623, i64* %RAX, align 8, !tbaa !2428
  %1624 = add i64 %1618, -10656
  %1625 = add i64 %1620, 14
  store i64 %1625, i64* %PC, align 8
  %1626 = inttoptr i64 %1624 to i64*
  %1627 = load i64, i64* %1626, align 8
  %1628 = sub i64 %1623, %1627
  %1629 = icmp ult i64 %1623, %1627
  %1630 = zext i1 %1629 to i8
  store i8 %1630, i8* %31, align 1, !tbaa !2432
  %1631 = trunc i64 %1628 to i32
  %1632 = and i32 %1631, 255
  %1633 = tail call i32 @llvm.ctpop.i32(i32 %1632) #8
  %1634 = trunc i32 %1633 to i8
  %1635 = and i8 %1634, 1
  %1636 = xor i8 %1635, 1
  store i8 %1636, i8* %38, align 1, !tbaa !2446
  %1637 = xor i64 %1627, %1623
  %1638 = xor i64 %1637, %1628
  %1639 = lshr i64 %1638, 4
  %1640 = trunc i64 %1639 to i8
  %1641 = and i8 %1640, 1
  store i8 %1641, i8* %44, align 1, !tbaa !2447
  %1642 = icmp eq i64 %1628, 0
  %1643 = zext i1 %1642 to i8
  store i8 %1643, i8* %47, align 1, !tbaa !2448
  %1644 = lshr i64 %1628, 63
  %1645 = trunc i64 %1644 to i8
  store i8 %1645, i8* %50, align 1, !tbaa !2449
  %1646 = lshr i64 %1623, 63
  %1647 = lshr i64 %1627, 63
  %1648 = xor i64 %1647, %1646
  %1649 = xor i64 %1644, %1646
  %1650 = add nuw nsw i64 %1649, %1648
  %1651 = icmp eq i64 %1650, 2
  %1652 = zext i1 %1651 to i8
  store i8 %1652, i8* %56, align 1, !tbaa !2450
  %1653 = or i1 %1642, %1629
  %.v55 = select i1 %1653, i64 34, i64 20
  %1654 = add i64 %1620, %.v55
  store i64 %1654, i64* %PC, align 8, !tbaa !2428
  br i1 %1653, label %block_400d2a, label %block_400d1c

block_4012c7:                                     ; preds = %block_4012a0
  %1655 = load i64, i64* %1774, align 8
  store i64 %1655, i64* %RAX, align 8, !tbaa !2428
  %1656 = add i64 %1801, 8
  store i64 %1656, i64* %PC, align 8
  %1657 = load i64, i64* %1764, align 8
  store i64 %1657, i64* %RCX, align 8, !tbaa !2428
  %1658 = shl i64 %1657, 3
  %1659 = add i64 %1767, %1658
  %1660 = add i64 %1801, 16
  store i64 %1660, i64* %PC, align 8
  %1661 = inttoptr i64 %1659 to i64*
  %1662 = load i64, i64* %1661, align 8
  %1663 = sub i64 %1655, %1662
  %1664 = icmp ult i64 %1655, %1662
  %1665 = zext i1 %1664 to i8
  store i8 %1665, i8* %31, align 1, !tbaa !2432
  %1666 = trunc i64 %1663 to i32
  %1667 = and i32 %1666, 255
  %1668 = tail call i32 @llvm.ctpop.i32(i32 %1667) #8
  %1669 = trunc i32 %1668 to i8
  %1670 = and i8 %1669, 1
  %1671 = xor i8 %1670, 1
  store i8 %1671, i8* %38, align 1, !tbaa !2446
  %1672 = xor i64 %1662, %1655
  %1673 = xor i64 %1672, %1663
  %1674 = lshr i64 %1673, 4
  %1675 = trunc i64 %1674 to i8
  %1676 = and i8 %1675, 1
  store i8 %1676, i8* %44, align 1, !tbaa !2447
  %1677 = icmp eq i64 %1663, 0
  %1678 = zext i1 %1677 to i8
  store i8 %1678, i8* %47, align 1, !tbaa !2448
  %1679 = lshr i64 %1663, 63
  %1680 = trunc i64 %1679 to i8
  store i8 %1680, i8* %50, align 1, !tbaa !2449
  %1681 = lshr i64 %1655, 63
  %1682 = lshr i64 %1662, 63
  %1683 = xor i64 %1682, %1681
  %1684 = xor i64 %1679, %1681
  %1685 = add nuw nsw i64 %1684, %1683
  %1686 = icmp eq i64 %1685, 2
  %1687 = zext i1 %1686 to i8
  store i8 %1687, i8* %56, align 1, !tbaa !2450
  %.v76 = select i1 %1677, i64 22, i64 79
  %1688 = add i64 %1801, %.v76
  store i64 %1688, i64* %PC, align 8, !tbaa !2428
  br i1 %1677, label %block_4012dd, label %block_401316

block_400ac8:                                     ; preds = %block_400a7f
  %1689 = add i64 %2306, 5
  store i64 %1689, i64* %PC, align 8, !tbaa !2428
  br label %block_400acd

block_400cad:                                     ; preds = %block_400c80, %block_400c8d
  %1690 = phi i64 [ %.pre20, %block_400c8d ], [ %2015, %block_400c80 ]
  %1691 = phi i64 [ %.pre19, %block_400c8d ], [ %2411, %block_400c80 ]
  %1692 = add i64 %1691, -10668
  %1693 = add i64 %1690, 7
  store i64 %1693, i64* %PC, align 8
  %1694 = inttoptr i64 %1692 to i32*
  %1695 = load i32, i32* %1694, align 4
  %1696 = sext i32 %1695 to i64
  store i64 %1696, i64* %RAX, align 8, !tbaa !2428
  %1697 = shl nsw i64 %1696, 2
  %1698 = add i64 %1691, -8320
  %1699 = add i64 %1698, %1697
  %1700 = add i64 %1690, 14
  store i64 %1700, i64* %PC, align 8
  %1701 = inttoptr i64 %1699 to i32*
  %1702 = load i32, i32* %1701, align 4
  %1703 = zext i32 %1702 to i64
  store i64 %1703, i64* %RCX, align 8, !tbaa !2428
  %1704 = add i64 %1690, 20
  store i64 %1704, i64* %PC, align 8
  store i32 %1702, i32* %1694, align 4
  %1705 = load i64, i64* %RBP, align 8
  %1706 = add i64 %1705, -56
  %1707 = load i64, i64* %PC, align 8
  %1708 = add i64 %1707, 4
  store i64 %1708, i64* %PC, align 8
  %1709 = inttoptr i64 %1706 to i64*
  %1710 = load i64, i64* %1709, align 8
  %1711 = shl i64 %1710, 1
  %1712 = icmp slt i64 %1710, 0
  %1713 = icmp slt i64 %1711, 0
  %1714 = xor i1 %1712, %1713
  store i64 %1711, i64* %RAX, align 8, !tbaa !2428
  %.lobit = lshr i64 %1710, 63
  %1715 = trunc i64 %.lobit to i8
  store i8 %1715, i8* %31, align 1, !tbaa !2453
  %1716 = trunc i64 %1711 to i32
  %1717 = and i32 %1716, 254
  %1718 = tail call i32 @llvm.ctpop.i32(i32 %1717) #8
  %1719 = trunc i32 %1718 to i8
  %1720 = and i8 %1719, 1
  %1721 = xor i8 %1720, 1
  store i8 %1721, i8* %38, align 1, !tbaa !2453
  store i8 0, i8* %44, align 1, !tbaa !2453
  %1722 = icmp eq i64 %1711, 0
  %1723 = zext i1 %1722 to i8
  store i8 %1723, i8* %47, align 1, !tbaa !2453
  %1724 = lshr i64 %1710, 62
  %1725 = trunc i64 %1724 to i8
  %1726 = and i8 %1725, 1
  store i8 %1726, i8* %50, align 1, !tbaa !2453
  %1727 = zext i1 %1714 to i8
  store i8 %1727, i8* %56, align 1, !tbaa !2453
  %1728 = add i64 %1707, 12
  store i64 %1728, i64* %PC, align 8
  store i64 %1711, i64* %1709, align 8
  %1729 = load i64, i64* %RBP, align 8
  %1730 = add i64 %1729, -48
  %1731 = load i64, i64* %PC, align 8
  %1732 = add i64 %1731, 4
  store i64 %1732, i64* %PC, align 8
  %1733 = inttoptr i64 %1730 to i64*
  %1734 = load i64, i64* %1733, align 8
  %1735 = add i64 %1734, 1
  store i64 %1735, i64* %RAX, align 8, !tbaa !2428
  %1736 = icmp eq i64 %1734, -1
  %1737 = icmp eq i64 %1735, 0
  %1738 = or i1 %1736, %1737
  %1739 = zext i1 %1738 to i8
  store i8 %1739, i8* %31, align 1, !tbaa !2432
  %1740 = trunc i64 %1735 to i32
  %1741 = and i32 %1740, 255
  %1742 = tail call i32 @llvm.ctpop.i32(i32 %1741) #8
  %1743 = trunc i32 %1742 to i8
  %1744 = and i8 %1743, 1
  %1745 = xor i8 %1744, 1
  store i8 %1745, i8* %38, align 1, !tbaa !2446
  %1746 = xor i64 %1734, %1735
  %1747 = lshr i64 %1746, 4
  %1748 = trunc i64 %1747 to i8
  %1749 = and i8 %1748, 1
  store i8 %1749, i8* %44, align 1, !tbaa !2447
  %1750 = zext i1 %1737 to i8
  store i8 %1750, i8* %47, align 1, !tbaa !2448
  %1751 = lshr i64 %1735, 63
  %1752 = trunc i64 %1751 to i8
  store i8 %1752, i8* %50, align 1, !tbaa !2449
  %1753 = lshr i64 %1734, 63
  %1754 = xor i64 %1751, %1753
  %1755 = add nuw nsw i64 %1754, %1751
  %1756 = icmp eq i64 %1755, 2
  %1757 = zext i1 %1756 to i8
  store i8 %1757, i8* %56, align 1, !tbaa !2450
  %1758 = add i64 %1731, 12
  store i64 %1758, i64* %PC, align 8
  store i64 %1735, i64* %1733, align 8
  %1759 = load i64, i64* %PC, align 8
  %1760 = add i64 %1759, -102
  store i64 %1760, i64* %PC, align 8, !tbaa !2428
  br label %block_400c73

block_4012a0:                                     ; preds = %block_40129b, %block_4012b6
  %.sink45 = phi i64 [ %1814, %block_40129b ], [ %1474, %block_4012b6 ]
  %1761 = load i64, i64* %RBP, align 8
  %1762 = add i64 %1761, -48
  %1763 = add i64 %.sink45, 4
  store i64 %1763, i64* %PC, align 8
  %1764 = inttoptr i64 %1762 to i64*
  %1765 = load i64, i64* %1764, align 8
  store i64 %1765, i64* %RAX, align 8, !tbaa !2428
  %1766 = shl i64 %1765, 3
  %1767 = add i64 %1761, -12736
  %1768 = add i64 %1767, %1766
  %1769 = add i64 %.sink45, 12
  store i64 %1769, i64* %PC, align 8
  %1770 = inttoptr i64 %1768 to i64*
  %1771 = load i64, i64* %1770, align 8
  store i64 %1771, i64* %RAX, align 8, !tbaa !2428
  %1772 = add i64 %1761, -80
  %1773 = add i64 %.sink45, 16
  store i64 %1773, i64* %PC, align 8
  %1774 = inttoptr i64 %1772 to i64*
  %1775 = load i64, i64* %1774, align 8
  %1776 = sub i64 %1771, %1775
  %1777 = icmp ult i64 %1771, %1775
  %1778 = zext i1 %1777 to i8
  store i8 %1778, i8* %31, align 1, !tbaa !2432
  %1779 = trunc i64 %1776 to i32
  %1780 = and i32 %1779, 255
  %1781 = tail call i32 @llvm.ctpop.i32(i32 %1780) #8
  %1782 = trunc i32 %1781 to i8
  %1783 = and i8 %1782, 1
  %1784 = xor i8 %1783, 1
  store i8 %1784, i8* %38, align 1, !tbaa !2446
  %1785 = xor i64 %1775, %1771
  %1786 = xor i64 %1785, %1776
  %1787 = lshr i64 %1786, 4
  %1788 = trunc i64 %1787 to i8
  %1789 = and i8 %1788, 1
  store i8 %1789, i8* %44, align 1, !tbaa !2447
  %1790 = icmp eq i64 %1776, 0
  %1791 = zext i1 %1790 to i8
  store i8 %1791, i8* %47, align 1, !tbaa !2448
  %1792 = lshr i64 %1776, 63
  %1793 = trunc i64 %1792 to i8
  store i8 %1793, i8* %50, align 1, !tbaa !2449
  %1794 = lshr i64 %1771, 63
  %1795 = lshr i64 %1775, 63
  %1796 = xor i64 %1795, %1794
  %1797 = xor i64 %1792, %1794
  %1798 = add nuw nsw i64 %1797, %1796
  %1799 = icmp eq i64 %1798, 2
  %1800 = zext i1 %1799 to i8
  store i8 %1800, i8* %56, align 1, !tbaa !2450
  %.v75 = select i1 %1777, i64 22, i64 39
  %1801 = add i64 %.sink45, %.v75
  %1802 = add i64 %1801, 4
  store i64 %1802, i64* %PC, align 8
  br i1 %1777, label %block_4012b6, label %block_4012c7

block_400ec8:                                     ; preds = %block_400e68
  %1803 = add i64 %3210, -10688
  %1804 = add i64 %3245, 10
  store i64 %1804, i64* %PC, align 8
  %1805 = inttoptr i64 %1803 to i32*
  store i32 0, i32* %1805, align 4
  %1806 = load i64, i64* %RBP, align 8
  %1807 = add i64 %1806, -10681
  %1808 = load i64, i64* %PC, align 8
  %1809 = add i64 %1808, 7
  store i64 %1809, i64* %PC, align 8
  %1810 = inttoptr i64 %1807 to i8*
  store i8 0, i8* %1810, align 1
  %1811 = load i64, i64* %PC, align 8
  %1812 = add i64 %1811, 38
  store i64 %1812, i64* %PC, align 8, !tbaa !2428
  br label %block_400eff

block_40129b:                                     ; preds = %block_401268, %block_40128f
  %1813 = phi i64 [ %2596, %block_401268 ], [ %.pre40, %block_40128f ]
  %1814 = add i64 %1813, 5
  br label %block_4012a0

block_40128f:                                     ; preds = %block_401268
  %1815 = add i64 %2574, -80
  %1816 = add i64 %2596, 4
  store i64 %1816, i64* %PC, align 8
  %1817 = inttoptr i64 %1815 to i64*
  %1818 = load i64, i64* %1817, align 8
  %1819 = add i64 %1818, 1
  store i64 %1819, i64* %RAX, align 8, !tbaa !2428
  %1820 = icmp eq i64 %1818, -1
  %1821 = icmp eq i64 %1819, 0
  %1822 = or i1 %1820, %1821
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %31, align 1, !tbaa !2432
  %1824 = trunc i64 %1819 to i32
  %1825 = and i32 %1824, 255
  %1826 = tail call i32 @llvm.ctpop.i32(i32 %1825) #8
  %1827 = trunc i32 %1826 to i8
  %1828 = and i8 %1827, 1
  %1829 = xor i8 %1828, 1
  store i8 %1829, i8* %38, align 1, !tbaa !2446
  %1830 = xor i64 %1818, %1819
  %1831 = lshr i64 %1830, 4
  %1832 = trunc i64 %1831 to i8
  %1833 = and i8 %1832, 1
  store i8 %1833, i8* %44, align 1, !tbaa !2447
  %1834 = zext i1 %1821 to i8
  store i8 %1834, i8* %47, align 1, !tbaa !2448
  %1835 = lshr i64 %1819, 63
  %1836 = trunc i64 %1835 to i8
  store i8 %1836, i8* %50, align 1, !tbaa !2449
  %1837 = lshr i64 %1818, 63
  %1838 = xor i64 %1835, %1837
  %1839 = add nuw nsw i64 %1838, %1835
  %1840 = icmp eq i64 %1839, 2
  %1841 = zext i1 %1840 to i8
  store i8 %1841, i8* %56, align 1, !tbaa !2450
  %1842 = add i64 %2596, 12
  store i64 %1842, i64* %PC, align 8
  store i64 %1819, i64* %1817, align 8
  %.pre40 = load i64, i64* %PC, align 8
  br label %block_40129b

block_40117e:                                     ; preds = %block_401170
  %1843 = add i64 %515, -88
  %1844 = add i64 %527, 80
  store i64 %1844, i64* %PC, align 8
  %1845 = inttoptr i64 %1843 to i64*
  %1846 = load i64, i64* %1845, align 8
  store i64 %1846, i64* %RAX, align 8, !tbaa !2428
  %1847 = add i64 %515, -56
  %1848 = add i64 %527, 84
  store i64 %1848, i64* %PC, align 8
  %1849 = inttoptr i64 %1847 to i64*
  %1850 = load i64, i64* %1849, align 8
  store i64 %1850, i64* %RCX, align 8, !tbaa !2428
  %1851 = shl i64 %1850, 3
  %1852 = add i64 %515, -12736
  %1853 = add i64 %1852, %1851
  %1854 = add i64 %527, 92
  store i64 %1854, i64* %PC, align 8
  %1855 = inttoptr i64 %1853 to i64*
  store i64 %1846, i64* %1855, align 8
  %1856 = load i64, i64* %RBP, align 8
  %1857 = add i64 %1856, -89
  %1858 = load i64, i64* %PC, align 8
  %1859 = add i64 %1858, 3
  store i64 %1859, i64* %PC, align 8
  %1860 = inttoptr i64 %1857 to i8*
  %1861 = load i8, i8* %1860, align 1
  store i8 %1861, i8* %DL, align 1, !tbaa !2453
  %1862 = add i64 %1856, -56
  %1863 = add i64 %1858, 7
  store i64 %1863, i64* %PC, align 8
  %1864 = inttoptr i64 %1862 to i64*
  %1865 = load i64, i64* %1864, align 8
  store i64 %1865, i64* %RAX, align 8, !tbaa !2428
  %1866 = add i64 %1856, -12992
  %1867 = add i64 %1866, %1865
  %1868 = add i64 %1858, 14
  store i64 %1868, i64* %PC, align 8
  %1869 = inttoptr i64 %1867 to i8*
  store i8 %1861, i8* %1869, align 1
  %1870 = load i64, i64* %RBP, align 8
  %1871 = add i64 %1870, -48
  %1872 = load i64, i64* %PC, align 8
  %1873 = add i64 %1872, 4
  store i64 %1873, i64* %PC, align 8
  %1874 = inttoptr i64 %1871 to i64*
  %1875 = load i64, i64* %1874, align 8
  %1876 = add i64 %1875, 1
  store i64 %1876, i64* %RAX, align 8, !tbaa !2428
  %1877 = icmp eq i64 %1875, -1
  %1878 = icmp eq i64 %1876, 0
  %1879 = or i1 %1877, %1878
  %1880 = zext i1 %1879 to i8
  store i8 %1880, i8* %31, align 1, !tbaa !2432
  %1881 = trunc i64 %1876 to i32
  %1882 = and i32 %1881, 255
  %1883 = tail call i32 @llvm.ctpop.i32(i32 %1882) #8
  %1884 = trunc i32 %1883 to i8
  %1885 = and i8 %1884, 1
  %1886 = xor i8 %1885, 1
  store i8 %1886, i8* %38, align 1, !tbaa !2446
  %1887 = xor i64 %1875, %1876
  %1888 = lshr i64 %1887, 4
  %1889 = trunc i64 %1888 to i8
  %1890 = and i8 %1889, 1
  store i8 %1890, i8* %44, align 1, !tbaa !2447
  %1891 = zext i1 %1878 to i8
  store i8 %1891, i8* %47, align 1, !tbaa !2448
  %1892 = lshr i64 %1876, 63
  %1893 = trunc i64 %1892 to i8
  store i8 %1893, i8* %50, align 1, !tbaa !2449
  %1894 = lshr i64 %1875, 63
  %1895 = xor i64 %1892, %1894
  %1896 = add nuw nsw i64 %1895, %1892
  %1897 = icmp eq i64 %1896, 2
  %1898 = zext i1 %1897 to i8
  store i8 %1898, i8* %56, align 1, !tbaa !2450
  %1899 = add i64 %1872, 12
  store i64 %1899, i64* %PC, align 8
  store i64 %1876, i64* %1874, align 8
  %1900 = load i64, i64* %PC, align 8
  %1901 = add i64 %1900, -234
  store i64 %1901, i64* %PC, align 8, !tbaa !2428
  br label %block_40110a

block_400a8a:                                     ; preds = %block_400a7f
  %1902 = add i64 %2291, -6272
  store i64 %1902, i64* %RSI, align 8, !tbaa !2428
  %1903 = add i64 %2291, -4224
  store i64 %1903, i64* %RDI, align 8, !tbaa !2428
  %1904 = add i64 %2291, -64
  %1905 = add i64 %2306, 18
  store i64 %1905, i64* %PC, align 8
  %1906 = inttoptr i64 %1904 to i64*
  %1907 = load i64, i64* %1906, align 8
  store i64 %1907, i64* %RAX, align 8, !tbaa !2428
  %1908 = and i64 %1907, 4294967295
  store i64 %1908, i64* %RCX, align 8, !tbaa !2428
  %1909 = add i64 %2306, 24
  store i64 %1909, i64* %PC, align 8
  %1910 = load i64, i64* %2294, align 8
  store i64 %1910, i64* %RAX, align 8, !tbaa !2428
  %1911 = add i64 %2291, -13076
  %1912 = trunc i64 %1910 to i32
  %1913 = add i64 %2306, 32
  store i64 %1913, i64* %PC, align 8
  %1914 = inttoptr i64 %1911 to i32*
  store i32 %1912, i32* %1914, align 4
  %1915 = load i32, i32* %ECX, align 4
  %1916 = zext i32 %1915 to i64
  %1917 = load i64, i64* %PC, align 8
  store i64 %1916, i64* %RDX, align 8, !tbaa !2428
  %1918 = load i64, i64* %RBP, align 8
  %1919 = add i64 %1918, -13076
  %1920 = add i64 %1917, 8
  store i64 %1920, i64* %PC, align 8
  %1921 = inttoptr i64 %1919 to i32*
  %1922 = load i32, i32* %1921, align 4
  %1923 = zext i32 %1922 to i64
  store i64 %1923, i64* %RCX, align 8, !tbaa !2428
  %1924 = add i64 %1917, 2246
  %1925 = add i64 %1917, 13
  %1926 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1927 = add i64 %1926, -8
  %1928 = inttoptr i64 %1927 to i64*
  store i64 %1925, i64* %1928, align 8
  store i64 %1927, i64* %RSP, align 8, !tbaa !2428
  store i64 %1924, i64* %PC, align 8, !tbaa !2428
  %1929 = tail call %struct.Memory* @sub_401370_heap_adjust_renamed_(%struct.State* nonnull %0, i64 %1924, %struct.Memory* %MEMORY.16)
  %1930 = load i64, i64* %RBP, align 8
  %1931 = add i64 %1930, -48
  %1932 = load i64, i64* %PC, align 8
  %1933 = add i64 %1932, 4
  store i64 %1933, i64* %PC, align 8
  %1934 = inttoptr i64 %1931 to i64*
  %1935 = load i64, i64* %1934, align 8
  %1936 = add i64 %1935, -1
  store i64 %1936, i64* %RAX, align 8, !tbaa !2428
  %1937 = icmp ne i64 %1935, 0
  %1938 = zext i1 %1937 to i8
  store i8 %1938, i8* %31, align 1, !tbaa !2432
  %1939 = trunc i64 %1936 to i32
  %1940 = and i32 %1939, 255
  %1941 = tail call i32 @llvm.ctpop.i32(i32 %1940) #8
  %1942 = trunc i32 %1941 to i8
  %1943 = and i8 %1942, 1
  %1944 = xor i8 %1943, 1
  store i8 %1944, i8* %38, align 1, !tbaa !2446
  %1945 = xor i64 %1935, 16
  %1946 = xor i64 %1936, %1945
  %1947 = lshr i64 %1946, 4
  %1948 = trunc i64 %1947 to i8
  %1949 = and i8 %1948, 1
  store i8 %1949, i8* %44, align 1, !tbaa !2447
  %1950 = icmp eq i64 %1936, 0
  %1951 = zext i1 %1950 to i8
  store i8 %1951, i8* %47, align 1, !tbaa !2448
  %1952 = lshr i64 %1936, 63
  %1953 = trunc i64 %1952 to i8
  store i8 %1953, i8* %50, align 1, !tbaa !2449
  %1954 = lshr i64 %1935, 63
  %1955 = xor i64 %1952, %1954
  %1956 = xor i64 %1952, 1
  %1957 = add nuw nsw i64 %1955, %1956
  %1958 = icmp eq i64 %1957, 2
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %56, align 1, !tbaa !2450
  %1960 = add i64 %1932, 12
  store i64 %1960, i64* %PC, align 8
  store i64 %1936, i64* %1934, align 8
  %1961 = load i64, i64* %PC, align 8
  %1962 = add i64 %1961, -68
  store i64 %1962, i64* %PC, align 8, !tbaa !2428
  br label %block_400a7f

block_401089:                                     ; preds = %block_40106e
  %1963 = shl i64 %2556, 1
  %1964 = lshr i64 %2556, 62
  %1965 = and i64 %1964, 1
  %1966 = or i64 %1963, 1
  store i64 %1966, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %31, align 1, !tbaa !2432
  %1967 = trunc i64 %1966 to i32
  %1968 = and i32 %1967, 255
  %1969 = tail call i32 @llvm.ctpop.i32(i32 %1968) #8
  %1970 = trunc i32 %1969 to i8
  %1971 = and i8 %1970, 1
  %1972 = xor i8 %1971, 1
  store i8 %1972, i8* %38, align 1, !tbaa !2446
  store i8 0, i8* %44, align 1, !tbaa !2447
  store i8 0, i8* %47, align 1, !tbaa !2448
  %1973 = trunc i64 %1965 to i8
  store i8 %1973, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  %1974 = add i64 %2552, 16
  store i64 %1974, i64* %PC, align 8
  store i64 %1966, i64* %2555, align 8
  %1975 = load i64, i64* %RBP, align 8
  %1976 = add i64 %1975, -56
  %1977 = load i64, i64* %PC, align 8
  %1978 = add i64 %1977, 4
  store i64 %1978, i64* %PC, align 8
  %1979 = inttoptr i64 %1976 to i64*
  %1980 = load i64, i64* %1979, align 8
  store i64 %1980, i64* %RAX, align 8, !tbaa !2428
  %1981 = shl i64 %1980, 3
  %1982 = add i64 %1975, -10368
  %1983 = add i64 %1982, %1981
  %1984 = add i64 %1977, 12
  store i64 %1984, i64* %PC, align 8
  %1985 = inttoptr i64 %1983 to i64*
  %1986 = load i64, i64* %1985, align 8
  store i64 %1986, i64* %RAX, align 8, !tbaa !2428
  %1987 = add i64 %1975, -72
  %1988 = add i64 %1977, 16
  store i64 %1988, i64* %PC, align 8
  %1989 = inttoptr i64 %1987 to i64*
  %1990 = load i64, i64* %1989, align 8
  %1991 = and i64 %1990, %1986
  store i64 %1991, i64* %RAX, align 8, !tbaa !2428
  %1992 = trunc i64 %1991 to i32
  %1993 = and i32 %1992, 255
  %1994 = tail call i32 @llvm.ctpop.i32(i32 %1993) #8
  %1995 = trunc i32 %1994 to i8
  %1996 = and i8 %1995, 1
  %1997 = xor i8 %1996, 1
  %1998 = icmp eq i64 %1991, 0
  %1999 = zext i1 %1998 to i8
  %2000 = lshr i64 %1991, 63
  %2001 = trunc i64 %2000 to i8
  store i8 0, i8* %31, align 1, !tbaa !2432
  store i8 %1997, i8* %38, align 1, !tbaa !2446
  store i8 0, i8* %44, align 1, !tbaa !2447
  store i8 %1999, i8* %47, align 1, !tbaa !2448
  store i8 %2001, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  %.v68 = select i1 %1998, i64 38, i64 26
  %2002 = add i64 %1977, %.v68
  store i64 %2002, i64* %PC, align 8, !tbaa !2428
  br i1 %1998, label %block_4010bf, label %block_4010b3

block_400c80:                                     ; preds = %block_400c73
  %2003 = add i64 %2425, 7
  store i64 %2003, i64* %PC, align 8
  %2004 = load i32, i32* %2414, align 4
  store i8 0, i8* %31, align 1, !tbaa !2432
  %2005 = and i32 %2004, 255
  %2006 = tail call i32 @llvm.ctpop.i32(i32 %2005) #8
  %2007 = trunc i32 %2006 to i8
  %2008 = and i8 %2007, 1
  %2009 = xor i8 %2008, 1
  store i8 %2009, i8* %38, align 1, !tbaa !2446
  store i8 0, i8* %44, align 1, !tbaa !2447
  %2010 = icmp eq i32 %2004, 0
  %2011 = zext i1 %2010 to i8
  store i8 %2011, i8* %47, align 1, !tbaa !2448
  %2012 = lshr i32 %2004, 31
  %2013 = trunc i32 %2012 to i8
  store i8 %2013, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  %2014 = icmp ne i8 %2013, 0
  %.v54 = select i1 %2014, i64 13, i64 45
  %2015 = add i64 %2425, %.v54
  store i64 %2015, i64* %PC, align 8, !tbaa !2428
  br i1 %2014, label %block_400c8d, label %block_400cad

block_400df9:                                     ; preds = %block_400d9e
  %2016 = add i64 %2979, -56
  %2017 = add i64 %2995, 8
  store i64 %2017, i64* %PC, align 8
  %2018 = inttoptr i64 %2016 to i64*
  store i64 0, i64* %2018, align 8
  %.pre24 = load i64, i64* %PC, align 8
  br label %block_400e01

block_400ad8:                                     ; preds = %block_400acd
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %2019 = add i64 %1419, -6272
  store i64 %2019, i64* %RSI, align 8, !tbaa !2428
  %2020 = add i64 %1419, -4224
  store i64 %2020, i64* %RDI, align 8, !tbaa !2428
  %2021 = add i64 %1447, 23
  store i64 %2021, i64* %PC, align 8
  %2022 = load i64, i64* %1422, align 8
  %2023 = add i64 %2022, -1
  store i64 %2023, i64* %RAX, align 8, !tbaa !2428
  %2024 = icmp ne i64 %2022, 0
  %2025 = zext i1 %2024 to i8
  store i8 %2025, i8* %31, align 1, !tbaa !2432
  %2026 = trunc i64 %2023 to i32
  %2027 = and i32 %2026, 255
  %2028 = tail call i32 @llvm.ctpop.i32(i32 %2027) #8
  %2029 = trunc i32 %2028 to i8
  %2030 = and i8 %2029, 1
  %2031 = xor i8 %2030, 1
  store i8 %2031, i8* %38, align 1, !tbaa !2446
  %2032 = xor i64 %2022, 16
  %2033 = xor i64 %2023, %2032
  %2034 = lshr i64 %2033, 4
  %2035 = trunc i64 %2034 to i8
  %2036 = and i8 %2035, 1
  store i8 %2036, i8* %44, align 1, !tbaa !2447
  %2037 = icmp eq i64 %2023, 0
  %2038 = zext i1 %2037 to i8
  store i8 %2038, i8* %47, align 1, !tbaa !2448
  %2039 = lshr i64 %2023, 63
  %2040 = trunc i64 %2039 to i8
  store i8 %2040, i8* %50, align 1, !tbaa !2449
  %2041 = lshr i64 %2022, 63
  %2042 = xor i64 %2039, %2041
  %2043 = xor i64 %2039, 1
  %2044 = add nuw nsw i64 %2042, %2043
  %2045 = icmp eq i64 %2044, 2
  %2046 = zext i1 %2045 to i8
  store i8 %2046, i8* %56, align 1, !tbaa !2450
  %2047 = add i64 %1447, 31
  store i64 %2047, i64* %PC, align 8
  store i64 %2023, i64* %1422, align 8
  %2048 = load i64, i64* %RBP, align 8
  %2049 = add i64 %2048, -6272
  %2050 = load i64, i64* %PC, align 8
  %2051 = add i64 %2050, 7
  store i64 %2051, i64* %PC, align 8
  %2052 = inttoptr i64 %2049 to i64*
  %2053 = load i64, i64* %2052, align 8
  store i64 %2053, i64* %RAX, align 8, !tbaa !2428
  %2054 = add i64 %2048, -10632
  %2055 = add i64 %2050, 14
  store i64 %2055, i64* %PC, align 8
  %2056 = inttoptr i64 %2054 to i64*
  store i64 %2053, i64* %2056, align 8
  %2057 = load i64, i64* %RBP, align 8
  %2058 = add i64 %2057, -64
  %2059 = load i64, i64* %PC, align 8
  %2060 = add i64 %2059, 4
  store i64 %2060, i64* %PC, align 8
  %2061 = inttoptr i64 %2058 to i64*
  %2062 = load i64, i64* %2061, align 8
  store i64 %2062, i64* %RAX, align 8, !tbaa !2428
  %2063 = shl i64 %2062, 3
  %2064 = add i64 %2057, -6272
  %2065 = add i64 %2064, %2063
  %2066 = add i64 %2059, 12
  store i64 %2066, i64* %PC, align 8
  %2067 = inttoptr i64 %2065 to i64*
  %2068 = load i64, i64* %2067, align 8
  store i64 %2068, i64* %RAX, align 8, !tbaa !2428
  %2069 = add i64 %2059, 19
  store i64 %2069, i64* %PC, align 8
  %2070 = inttoptr i64 %2064 to i64*
  store i64 %2068, i64* %2070, align 8
  %2071 = load i64, i64* %RBP, align 8
  %2072 = add i64 %2071, -64
  %2073 = load i64, i64* %PC, align 8
  %2074 = add i64 %2073, 4
  store i64 %2074, i64* %PC, align 8
  %2075 = inttoptr i64 %2072 to i64*
  %2076 = load i64, i64* %2075, align 8
  store i64 %2076, i64* %RAX, align 8, !tbaa !2428
  %2077 = and i64 %2076, 4294967295
  store i64 %2077, i64* %RDX, align 8, !tbaa !2428
  %2078 = add i64 %2073, 2136
  %2079 = add i64 %2073, 11
  %2080 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2081 = add i64 %2080, -8
  %2082 = inttoptr i64 %2081 to i64*
  store i64 %2079, i64* %2082, align 8
  store i64 %2081, i64* %RSP, align 8, !tbaa !2428
  store i64 %2078, i64* %PC, align 8, !tbaa !2428
  %2083 = tail call %struct.Memory* @sub_401370_heap_adjust_renamed_(%struct.State* nonnull %0, i64 %2078, %struct.Memory* %MEMORY.11)
  %2084 = load i64, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %2085 = load i64, i64* %RBP, align 8
  %2086 = add i64 %2085, -6272
  store i64 %2086, i64* %RSI, align 8, !tbaa !2428
  %2087 = add i64 %2085, -4224
  store i64 %2087, i64* %RDI, align 8, !tbaa !2428
  store i64 -256, i64* %RAX, align 8, !tbaa !2428
  %2088 = add i64 %2084, 33
  store i64 %2088, i64* %PC, align 8
  %2089 = inttoptr i64 %2086 to i64*
  %2090 = load i64, i64* %2089, align 8
  store i64 %2090, i64* %R8, align 8, !tbaa !2428
  %2091 = shl i64 %2090, 3
  %2092 = add i64 %2087, %2091
  %2093 = add i64 %2084, 41
  store i64 %2093, i64* %PC, align 8
  %2094 = inttoptr i64 %2092 to i64*
  %2095 = load i64, i64* %2094, align 8
  store i64 %2095, i64* %R8, align 8, !tbaa !2428
  %2096 = add i64 %2085, -10632
  %2097 = add i64 %2084, 48
  store i64 %2097, i64* %PC, align 8
  %2098 = inttoptr i64 %2096 to i64*
  %2099 = load i64, i64* %2098, align 8
  store i64 %2099, i64* %R9, align 8, !tbaa !2428
  %2100 = shl i64 %2099, 3
  %2101 = add i64 %2087, %2100
  %2102 = add i64 %2084, 56
  store i64 %2102, i64* %PC, align 8
  %2103 = inttoptr i64 %2101 to i64*
  %2104 = load i64, i64* %2103, align 8
  %2105 = add i64 %2104, %2095
  store i64 %2105, i64* %R8, align 8, !tbaa !2428
  %2106 = icmp ult i64 %2105, %2095
  %2107 = icmp ult i64 %2105, %2104
  %2108 = or i1 %2106, %2107
  %2109 = zext i1 %2108 to i8
  store i8 %2109, i8* %31, align 1, !tbaa !2432
  %2110 = trunc i64 %2105 to i32
  %2111 = and i32 %2110, 255
  %2112 = tail call i32 @llvm.ctpop.i32(i32 %2111) #8
  %2113 = trunc i32 %2112 to i8
  %2114 = and i8 %2113, 1
  %2115 = xor i8 %2114, 1
  store i8 %2115, i8* %38, align 1, !tbaa !2446
  %2116 = xor i64 %2104, %2095
  %2117 = xor i64 %2116, %2105
  %2118 = lshr i64 %2117, 4
  %2119 = trunc i64 %2118 to i8
  %2120 = and i8 %2119, 1
  store i8 %2120, i8* %44, align 1, !tbaa !2447
  %2121 = icmp eq i64 %2105, 0
  %2122 = zext i1 %2121 to i8
  store i8 %2122, i8* %47, align 1, !tbaa !2448
  %2123 = lshr i64 %2105, 63
  %2124 = trunc i64 %2123 to i8
  store i8 %2124, i8* %50, align 1, !tbaa !2449
  %2125 = lshr i64 %2095, 63
  %2126 = lshr i64 %2104, 63
  %2127 = xor i64 %2123, %2125
  %2128 = xor i64 %2123, %2126
  %2129 = add nuw nsw i64 %2127, %2128
  %2130 = icmp eq i64 %2129, 2
  %2131 = zext i1 %2130 to i8
  store i8 %2131, i8* %56, align 1, !tbaa !2450
  %2132 = add i64 %2085, -64
  %2133 = add i64 %2084, 60
  store i64 %2133, i64* %PC, align 8
  %2134 = inttoptr i64 %2132 to i64*
  %2135 = load i64, i64* %2134, align 8
  %2136 = add i64 %2135, 256
  store i64 %2136, i64* %R9, align 8, !tbaa !2428
  %2137 = icmp ugt i64 %2135, -257
  %2138 = zext i1 %2137 to i8
  store i8 %2138, i8* %31, align 1, !tbaa !2432
  %2139 = trunc i64 %2136 to i32
  %2140 = and i32 %2139, 255
  %2141 = tail call i32 @llvm.ctpop.i32(i32 %2140) #8
  %2142 = trunc i32 %2141 to i8
  %2143 = and i8 %2142, 1
  %2144 = xor i8 %2143, 1
  store i8 %2144, i8* %38, align 1, !tbaa !2446
  %2145 = xor i64 %2135, %2136
  %2146 = lshr i64 %2145, 4
  %2147 = trunc i64 %2146 to i8
  %2148 = and i8 %2147, 1
  store i8 %2148, i8* %44, align 1, !tbaa !2447
  %2149 = icmp eq i64 %2136, 0
  %2150 = zext i1 %2149 to i8
  store i8 %2150, i8* %47, align 1, !tbaa !2448
  %2151 = lshr i64 %2136, 63
  %2152 = trunc i64 %2151 to i8
  store i8 %2152, i8* %50, align 1, !tbaa !2449
  %2153 = lshr i64 %2135, 63
  %2154 = xor i64 %2151, %2153
  %2155 = add nuw nsw i64 %2154, %2151
  %2156 = icmp eq i64 %2155, 2
  %2157 = zext i1 %2156 to i8
  store i8 %2157, i8* %56, align 1, !tbaa !2450
  %2158 = load i64, i64* %RBP, align 8
  %2159 = shl i64 %2136, 3
  %2160 = add i64 %2158, -4224
  %2161 = add i64 %2160, %2159
  %2162 = add i64 %2084, 75
  store i64 %2162, i64* %PC, align 8
  %2163 = inttoptr i64 %2161 to i64*
  store i64 %2105, i64* %2163, align 8
  %2164 = load i64, i64* %RBP, align 8
  %2165 = add i64 %2164, -64
  %2166 = load i64, i64* %PC, align 8
  %2167 = add i64 %2166, 4
  store i64 %2167, i64* %PC, align 8
  %2168 = inttoptr i64 %2165 to i64*
  %2169 = load i64, i64* %2168, align 8
  %2170 = add i64 %2169, 256
  store i64 %2170, i64* %R8, align 8, !tbaa !2428
  %2171 = icmp ugt i64 %2169, -257
  %2172 = zext i1 %2171 to i8
  store i8 %2172, i8* %31, align 1, !tbaa !2432
  %2173 = trunc i64 %2170 to i32
  %2174 = and i32 %2173, 255
  %2175 = tail call i32 @llvm.ctpop.i32(i32 %2174) #8
  %2176 = trunc i32 %2175 to i8
  %2177 = and i8 %2176, 1
  %2178 = xor i8 %2177, 1
  store i8 %2178, i8* %38, align 1, !tbaa !2446
  %2179 = xor i64 %2169, %2170
  %2180 = lshr i64 %2179, 4
  %2181 = trunc i64 %2180 to i8
  %2182 = and i8 %2181, 1
  store i8 %2182, i8* %44, align 1, !tbaa !2447
  %2183 = icmp eq i64 %2170, 0
  %2184 = zext i1 %2183 to i8
  store i8 %2184, i8* %47, align 1, !tbaa !2448
  %2185 = lshr i64 %2170, 63
  %2186 = trunc i64 %2185 to i8
  store i8 %2186, i8* %50, align 1, !tbaa !2449
  %2187 = lshr i64 %2169, 63
  %2188 = xor i64 %2185, %2187
  %2189 = add nuw nsw i64 %2188, %2185
  %2190 = icmp eq i64 %2189, 2
  %2191 = zext i1 %2190 to i8
  store i8 %2191, i8* %56, align 1, !tbaa !2450
  %2192 = and i64 %2170, 4294967295
  store i64 %2192, i64* %RDX, align 8, !tbaa !2428
  %2193 = add i64 %2164, -10632
  %2194 = add i64 %2166, 21
  store i64 %2194, i64* %PC, align 8
  %2195 = inttoptr i64 %2193 to i64*
  %2196 = load i64, i64* %2195, align 8
  store i64 %2196, i64* %R8, align 8, !tbaa !2428
  %2197 = shl i64 %2196, 2
  %2198 = add i64 %2164, -8320
  %2199 = add i64 %2198, %2197
  %2200 = add i64 %2166, 29
  store i64 %2200, i64* %PC, align 8
  %2201 = inttoptr i64 %2199 to i32*
  store i32 %2173, i32* %2201, align 4
  %2202 = load i64, i64* %RAX, align 8
  %2203 = load i64, i64* %RBP, align 8
  %2204 = add i64 %2203, -64
  %2205 = load i64, i64* %PC, align 8
  %2206 = add i64 %2205, 4
  store i64 %2206, i64* %PC, align 8
  %2207 = inttoptr i64 %2204 to i64*
  %2208 = load i64, i64* %2207, align 8
  %2209 = sub i64 %2202, %2208
  store i64 %2209, i64* %RAX, align 8, !tbaa !2428
  %2210 = icmp ult i64 %2202, %2208
  %2211 = zext i1 %2210 to i8
  store i8 %2211, i8* %31, align 1, !tbaa !2432
  %2212 = trunc i64 %2209 to i32
  %2213 = and i32 %2212, 255
  %2214 = tail call i32 @llvm.ctpop.i32(i32 %2213) #8
  %2215 = trunc i32 %2214 to i8
  %2216 = and i8 %2215, 1
  %2217 = xor i8 %2216, 1
  store i8 %2217, i8* %38, align 1, !tbaa !2446
  %2218 = xor i64 %2208, %2202
  %2219 = xor i64 %2218, %2209
  %2220 = lshr i64 %2219, 4
  %2221 = trunc i64 %2220 to i8
  %2222 = and i8 %2221, 1
  store i8 %2222, i8* %44, align 1, !tbaa !2447
  %2223 = icmp eq i64 %2209, 0
  %2224 = zext i1 %2223 to i8
  store i8 %2224, i8* %47, align 1, !tbaa !2448
  %2225 = lshr i64 %2209, 63
  %2226 = trunc i64 %2225 to i8
  store i8 %2226, i8* %50, align 1, !tbaa !2449
  %2227 = lshr i64 %2202, 63
  %2228 = lshr i64 %2208, 63
  %2229 = xor i64 %2228, %2227
  %2230 = xor i64 %2225, %2227
  %2231 = add nuw nsw i64 %2230, %2229
  %2232 = icmp eq i64 %2231, 2
  %2233 = zext i1 %2232 to i8
  store i8 %2233, i8* %56, align 1, !tbaa !2450
  %2234 = and i64 %2209, 4294967295
  store i64 %2234, i64* %RDX, align 8, !tbaa !2428
  %2235 = add i64 %2203, -6272
  %2236 = add i64 %2205, 13
  store i64 %2236, i64* %PC, align 8
  %2237 = inttoptr i64 %2235 to i64*
  %2238 = load i64, i64* %2237, align 8
  store i64 %2238, i64* %RAX, align 8, !tbaa !2428
  %2239 = shl i64 %2238, 2
  %2240 = add i64 %2203, -8320
  %2241 = add i64 %2240, %2239
  %2242 = add i64 %2205, 20
  store i64 %2242, i64* %PC, align 8
  %2243 = inttoptr i64 %2241 to i32*
  store i32 %2212, i32* %2243, align 4
  %2244 = load i64, i64* %RBP, align 8
  %2245 = add i64 %2244, -64
  %2246 = load i64, i64* %PC, align 8
  %2247 = add i64 %2246, 4
  store i64 %2247, i64* %PC, align 8
  %2248 = inttoptr i64 %2245 to i64*
  %2249 = load i64, i64* %2248, align 8
  %2250 = add i64 %2249, 256
  store i64 %2250, i64* %RAX, align 8, !tbaa !2428
  %2251 = icmp ugt i64 %2249, -257
  %2252 = zext i1 %2251 to i8
  store i8 %2252, i8* %31, align 1, !tbaa !2432
  %2253 = trunc i64 %2250 to i32
  %2254 = and i32 %2253, 255
  %2255 = tail call i32 @llvm.ctpop.i32(i32 %2254) #8
  %2256 = trunc i32 %2255 to i8
  %2257 = and i8 %2256, 1
  %2258 = xor i8 %2257, 1
  store i8 %2258, i8* %38, align 1, !tbaa !2446
  %2259 = xor i64 %2249, %2250
  %2260 = lshr i64 %2259, 4
  %2261 = trunc i64 %2260 to i8
  %2262 = and i8 %2261, 1
  store i8 %2262, i8* %44, align 1, !tbaa !2447
  %2263 = icmp eq i64 %2250, 0
  %2264 = zext i1 %2263 to i8
  store i8 %2264, i8* %47, align 1, !tbaa !2448
  %2265 = lshr i64 %2250, 63
  %2266 = trunc i64 %2265 to i8
  store i8 %2266, i8* %50, align 1, !tbaa !2449
  %2267 = lshr i64 %2249, 63
  %2268 = xor i64 %2265, %2267
  %2269 = add nuw nsw i64 %2268, %2265
  %2270 = icmp eq i64 %2269, 2
  %2271 = zext i1 %2270 to i8
  store i8 %2271, i8* %56, align 1, !tbaa !2450
  %2272 = add i64 %2244, -6272
  %2273 = add i64 %2246, 17
  store i64 %2273, i64* %PC, align 8
  %2274 = inttoptr i64 %2272 to i64*
  store i64 %2250, i64* %2274, align 8
  %2275 = load i64, i64* %RBP, align 8
  %2276 = add i64 %2275, -64
  %2277 = load i64, i64* %PC, align 8
  %2278 = add i64 %2277, 4
  store i64 %2278, i64* %PC, align 8
  %2279 = inttoptr i64 %2276 to i64*
  %2280 = load i64, i64* %2279, align 8
  store i64 %2280, i64* %RAX, align 8, !tbaa !2428
  %2281 = and i64 %2280, 4294967295
  store i64 %2281, i64* %RDX, align 8, !tbaa !2428
  %2282 = add i64 %2277, 1984
  %2283 = add i64 %2277, 11
  %2284 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2285 = add i64 %2284, -8
  %2286 = inttoptr i64 %2285 to i64*
  store i64 %2283, i64* %2286, align 8
  store i64 %2285, i64* %RSP, align 8, !tbaa !2428
  store i64 %2282, i64* %PC, align 8, !tbaa !2428
  %2287 = tail call %struct.Memory* @sub_401370_heap_adjust_renamed_(%struct.State* nonnull %0, i64 %2282, %struct.Memory* %2083)
  %2288 = load i64, i64* %PC, align 8
  %2289 = add i64 %2288, -238
  store i64 %2289, i64* %PC, align 8, !tbaa !2428
  %.pre16 = load i64, i64* %RBP, align 8
  br label %block_400acd

block_400a7f:                                     ; preds = %block_400a77, %block_400a8a
  %2290 = phi i64 [ %.pre15, %block_400a77 ], [ %1962, %block_400a8a ]
  %MEMORY.16 = phi %struct.Memory* [ %323, %block_400a77 ], [ %1929, %block_400a8a ]
  %2291 = load i64, i64* %RBP, align 8
  %2292 = add i64 %2291, -48
  %2293 = add i64 %2290, 5
  store i64 %2293, i64* %PC, align 8
  %2294 = inttoptr i64 %2292 to i64*
  %2295 = load i64, i64* %2294, align 8
  store i8 0, i8* %31, align 1, !tbaa !2432
  %2296 = trunc i64 %2295 to i32
  %2297 = and i32 %2296, 255
  %2298 = tail call i32 @llvm.ctpop.i32(i32 %2297) #8
  %2299 = trunc i32 %2298 to i8
  %2300 = and i8 %2299, 1
  %2301 = xor i8 %2300, 1
  store i8 %2301, i8* %38, align 1, !tbaa !2446
  store i8 0, i8* %44, align 1, !tbaa !2447
  %2302 = icmp eq i64 %2295, 0
  %2303 = zext i1 %2302 to i8
  store i8 %2303, i8* %47, align 1, !tbaa !2448
  %2304 = lshr i64 %2295, 63
  %2305 = trunc i64 %2304 to i8
  store i8 %2305, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  %.v49 = select i1 %2302, i64 73, i64 11
  %2306 = add i64 %2290, %.v49
  store i64 %2306, i64* %PC, align 8, !tbaa !2428
  br i1 %2302, label %block_400ac8, label %block_400a8a

block_401214:                                     ; preds = %block_401201
  %2307 = add i64 %2677, 9
  store i64 %2307, i64* %PC, align 8
  %2308 = load i64, i64* %2659, align 8
  %2309 = add i64 %2308, 1
  store i64 %2309, i64* %RAX, align 8, !tbaa !2428
  %2310 = icmp eq i64 %2308, -1
  %2311 = icmp eq i64 %2309, 0
  %2312 = or i1 %2310, %2311
  %2313 = zext i1 %2312 to i8
  store i8 %2313, i8* %31, align 1, !tbaa !2432
  %2314 = trunc i64 %2309 to i32
  %2315 = and i32 %2314, 255
  %2316 = tail call i32 @llvm.ctpop.i32(i32 %2315) #8
  %2317 = trunc i32 %2316 to i8
  %2318 = and i8 %2317, 1
  %2319 = xor i8 %2318, 1
  store i8 %2319, i8* %38, align 1, !tbaa !2446
  %2320 = xor i64 %2308, %2309
  %2321 = lshr i64 %2320, 4
  %2322 = trunc i64 %2321 to i8
  %2323 = and i8 %2322, 1
  store i8 %2323, i8* %44, align 1, !tbaa !2447
  %2324 = zext i1 %2311 to i8
  store i8 %2324, i8* %47, align 1, !tbaa !2448
  %2325 = lshr i64 %2309, 63
  %2326 = trunc i64 %2325 to i8
  store i8 %2326, i8* %50, align 1, !tbaa !2449
  %2327 = lshr i64 %2308, 63
  %2328 = xor i64 %2325, %2327
  %2329 = add nuw nsw i64 %2328, %2325
  %2330 = icmp eq i64 %2329, 2
  %2331 = zext i1 %2330 to i8
  store i8 %2331, i8* %56, align 1, !tbaa !2450
  %2332 = add i64 %2677, 17
  store i64 %2332, i64* %PC, align 8
  store i64 %2309, i64* %2659, align 8
  %2333 = load i64, i64* %PC, align 8
  %2334 = add i64 %2333, -36
  store i64 %2334, i64* %PC, align 8, !tbaa !2428
  br label %block_401201

block_400c8d:                                     ; preds = %block_400c80
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %31, align 1, !tbaa !2432
  store i8 1, i8* %38, align 1, !tbaa !2446
  store i8 1, i8* %47, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  store i8 0, i8* %44, align 1, !tbaa !2447
  %2335 = add i64 %2411, -56
  %2336 = add i64 %2015, 6
  store i64 %2336, i64* %PC, align 8
  %2337 = inttoptr i64 %2335 to i64*
  %2338 = load i64, i64* %2337, align 8
  store i64 %2338, i64* %RCX, align 8, !tbaa !2428
  %2339 = add i64 %2411, -10648
  %2340 = add i64 %2015, 13
  store i64 %2340, i64* %PC, align 8
  %2341 = inttoptr i64 %2339 to i64*
  %2342 = load i64, i64* %2341, align 8
  %2343 = add i64 %2342, %2338
  store i64 %2343, i64* %RCX, align 8, !tbaa !2428
  %2344 = icmp ult i64 %2343, %2338
  %2345 = icmp ult i64 %2343, %2342
  %2346 = or i1 %2344, %2345
  %2347 = zext i1 %2346 to i8
  store i8 %2347, i8* %31, align 1, !tbaa !2432
  %2348 = trunc i64 %2343 to i32
  %2349 = and i32 %2348, 255
  %2350 = tail call i32 @llvm.ctpop.i32(i32 %2349) #8
  %2351 = trunc i32 %2350 to i8
  %2352 = and i8 %2351, 1
  %2353 = xor i8 %2352, 1
  store i8 %2353, i8* %38, align 1, !tbaa !2446
  %2354 = xor i64 %2342, %2338
  %2355 = xor i64 %2354, %2343
  %2356 = lshr i64 %2355, 4
  %2357 = trunc i64 %2356 to i8
  %2358 = and i8 %2357, 1
  store i8 %2358, i8* %44, align 1, !tbaa !2447
  %2359 = icmp eq i64 %2343, 0
  %2360 = zext i1 %2359 to i8
  store i8 %2360, i8* %47, align 1, !tbaa !2448
  %2361 = lshr i64 %2343, 63
  %2362 = trunc i64 %2361 to i8
  store i8 %2362, i8* %50, align 1, !tbaa !2449
  %2363 = lshr i64 %2338, 63
  %2364 = lshr i64 %2342, 63
  %2365 = xor i64 %2361, %2363
  %2366 = xor i64 %2361, %2364
  %2367 = add nuw nsw i64 %2365, %2366
  %2368 = icmp eq i64 %2367, 2
  %2369 = zext i1 %2368 to i8
  store i8 %2369, i8* %56, align 1, !tbaa !2450
  %2370 = add i64 %2015, 20
  store i64 %2370, i64* %PC, align 8
  store i64 %2343, i64* %2341, align 8
  %2371 = load i64, i64* %RAX, align 8
  %2372 = load i64, i64* %RBP, align 8
  %2373 = add i64 %2372, -10668
  %2374 = load i64, i64* %PC, align 8
  %2375 = add i64 %2374, 6
  store i64 %2375, i64* %PC, align 8
  %2376 = trunc i64 %2371 to i32
  %2377 = inttoptr i64 %2373 to i32*
  %2378 = load i32, i32* %2377, align 4
  %2379 = sub i32 %2376, %2378
  %2380 = zext i32 %2379 to i64
  store i64 %2380, i64* %RAX, align 8, !tbaa !2428
  %2381 = icmp ult i32 %2376, %2378
  %2382 = zext i1 %2381 to i8
  store i8 %2382, i8* %31, align 1, !tbaa !2432
  %2383 = and i32 %2379, 255
  %2384 = tail call i32 @llvm.ctpop.i32(i32 %2383) #8
  %2385 = trunc i32 %2384 to i8
  %2386 = and i8 %2385, 1
  %2387 = xor i8 %2386, 1
  store i8 %2387, i8* %38, align 1, !tbaa !2446
  %2388 = xor i32 %2378, %2376
  %2389 = xor i32 %2388, %2379
  %2390 = lshr i32 %2389, 4
  %2391 = trunc i32 %2390 to i8
  %2392 = and i8 %2391, 1
  store i8 %2392, i8* %44, align 1, !tbaa !2447
  %2393 = icmp eq i32 %2379, 0
  %2394 = zext i1 %2393 to i8
  store i8 %2394, i8* %47, align 1, !tbaa !2448
  %2395 = lshr i32 %2379, 31
  %2396 = trunc i32 %2395 to i8
  store i8 %2396, i8* %50, align 1, !tbaa !2449
  %2397 = lshr i32 %2376, 31
  %2398 = lshr i32 %2378, 31
  %2399 = xor i32 %2398, %2397
  %2400 = xor i32 %2395, %2397
  %2401 = add nuw nsw i32 %2400, %2399
  %2402 = icmp eq i32 %2401, 2
  %2403 = zext i1 %2402 to i8
  store i8 %2403, i8* %56, align 1, !tbaa !2450
  %2404 = add i64 %2374, 12
  store i64 %2404, i64* %PC, align 8
  store i32 %2379, i32* %2377, align 4
  %.pre19 = load i64, i64* %RBP, align 8
  %.pre20 = load i64, i64* %PC, align 8
  br label %block_400cad

block_400a77:                                     ; preds = %block_400a24
  %2405 = add i64 %3083, -64
  %2406 = add i64 %3110, 4
  store i64 %2406, i64* %PC, align 8
  %2407 = inttoptr i64 %2405 to i64*
  %2408 = load i64, i64* %2407, align 8
  store i64 %2408, i64* %RAX, align 8, !tbaa !2428
  %2409 = add i64 %3110, 8
  store i64 %2409, i64* %PC, align 8
  store i64 %2408, i64* %3086, align 8
  %.pre15 = load i64, i64* %PC, align 8
  br label %block_400a7f

block_400c73:                                     ; preds = %block_400c44, %block_400cad
  %2410 = phi i64 [ %.pre18, %block_400c44 ], [ %1760, %block_400cad ]
  %2411 = load i64, i64* %RBP, align 8
  %2412 = add i64 %2411, -10668
  %2413 = add i64 %2410, 7
  store i64 %2413, i64* %PC, align 8
  %2414 = inttoptr i64 %2412 to i32*
  %2415 = load i32, i32* %2414, align 4
  store i8 0, i8* %31, align 1, !tbaa !2432
  %2416 = and i32 %2415, 255
  %2417 = tail call i32 @llvm.ctpop.i32(i32 %2416) #8
  %2418 = trunc i32 %2417 to i8
  %2419 = and i8 %2418, 1
  %2420 = xor i8 %2419, 1
  store i8 %2420, i8* %38, align 1, !tbaa !2446
  store i8 0, i8* %44, align 1, !tbaa !2447
  %2421 = icmp eq i32 %2415, 0
  %2422 = zext i1 %2421 to i8
  store i8 %2422, i8* %47, align 1, !tbaa !2448
  %2423 = lshr i32 %2415, 31
  %2424 = trunc i32 %2423 to i8
  store i8 %2424, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  %.v53 = select i1 %2421, i64 107, i64 13
  %2425 = add i64 %2410, %.v53
  store i64 %2425, i64* %PC, align 8, !tbaa !2428
  br i1 %2421, label %block_400cde, label %block_400c80

block_4012dd:                                     ; preds = %block_4012c7
  %2426 = add i64 %1688, 4
  store i64 %2426, i64* %PC, align 8
  %2427 = load i64, i64* %1764, align 8
  store i64 %2427, i64* %RAX, align 8, !tbaa !2428
  %2428 = add i64 %1761, -12992
  %2429 = add i64 %2428, %2427
  %2430 = add i64 %1688, 11
  store i64 %2430, i64* %PC, align 8
  %2431 = inttoptr i64 %2429 to i8*
  %2432 = load i8, i8* %2431, align 1
  store i8 %2432, i8* %CL, align 1, !tbaa !2453
  %2433 = add i64 %1761, -112
  %2434 = add i64 %1688, 15
  store i64 %2434, i64* %PC, align 8
  %2435 = inttoptr i64 %2433 to i64*
  %2436 = load i64, i64* %2435, align 8
  store i64 %2436, i64* %RAX, align 8, !tbaa !2428
  %2437 = add i64 %1688, 17
  store i64 %2437, i64* %PC, align 8
  %2438 = inttoptr i64 %2436 to i8*
  store i8 %2432, i8* %2438, align 1
  %2439 = load i64, i64* %RBP, align 8
  %2440 = add i64 %2439, -112
  %2441 = load i64, i64* %PC, align 8
  %2442 = add i64 %2441, 4
  store i64 %2442, i64* %PC, align 8
  %2443 = inttoptr i64 %2440 to i64*
  %2444 = load i64, i64* %2443, align 8
  %2445 = add i64 %2444, 1
  store i64 %2445, i64* %RAX, align 8, !tbaa !2428
  %2446 = icmp eq i64 %2444, -1
  %2447 = icmp eq i64 %2445, 0
  %2448 = or i1 %2446, %2447
  %2449 = zext i1 %2448 to i8
  store i8 %2449, i8* %31, align 1, !tbaa !2432
  %2450 = trunc i64 %2445 to i32
  %2451 = and i32 %2450, 255
  %2452 = tail call i32 @llvm.ctpop.i32(i32 %2451) #8
  %2453 = trunc i32 %2452 to i8
  %2454 = and i8 %2453, 1
  %2455 = xor i8 %2454, 1
  store i8 %2455, i8* %38, align 1, !tbaa !2446
  %2456 = xor i64 %2444, %2445
  %2457 = lshr i64 %2456, 4
  %2458 = trunc i64 %2457 to i8
  %2459 = and i8 %2458, 1
  store i8 %2459, i8* %44, align 1, !tbaa !2447
  %2460 = zext i1 %2447 to i8
  store i8 %2460, i8* %47, align 1, !tbaa !2448
  %2461 = lshr i64 %2445, 63
  %2462 = trunc i64 %2461 to i8
  store i8 %2462, i8* %50, align 1, !tbaa !2449
  %2463 = lshr i64 %2444, 63
  %2464 = xor i64 %2461, %2463
  %2465 = add nuw nsw i64 %2464, %2461
  %2466 = icmp eq i64 %2465, 2
  %2467 = zext i1 %2466 to i8
  store i8 %2467, i8* %56, align 1, !tbaa !2450
  %2468 = add i64 %2441, 12
  store i64 %2468, i64* %PC, align 8
  store i64 %2445, i64* %2443, align 8
  %2469 = load i64, i64* %RBP, align 8
  %2470 = add i64 %2469, -64
  %2471 = load i64, i64* %PC, align 8
  %2472 = add i64 %2471, 4
  store i64 %2472, i64* %PC, align 8
  %2473 = inttoptr i64 %2470 to i64*
  %2474 = load i64, i64* %2473, align 8
  %2475 = add i64 %2474, 1
  store i64 %2475, i64* %RAX, align 8, !tbaa !2428
  %2476 = icmp eq i64 %2474, -1
  %2477 = icmp eq i64 %2475, 0
  %2478 = or i1 %2476, %2477
  %2479 = zext i1 %2478 to i8
  store i8 %2479, i8* %31, align 1, !tbaa !2432
  %2480 = trunc i64 %2475 to i32
  %2481 = and i32 %2480, 255
  %2482 = tail call i32 @llvm.ctpop.i32(i32 %2481) #8
  %2483 = trunc i32 %2482 to i8
  %2484 = and i8 %2483, 1
  %2485 = xor i8 %2484, 1
  store i8 %2485, i8* %38, align 1, !tbaa !2446
  %2486 = xor i64 %2474, %2475
  %2487 = lshr i64 %2486, 4
  %2488 = trunc i64 %2487 to i8
  %2489 = and i8 %2488, 1
  store i8 %2489, i8* %44, align 1, !tbaa !2447
  %2490 = zext i1 %2477 to i8
  store i8 %2490, i8* %47, align 1, !tbaa !2448
  %2491 = lshr i64 %2475, 63
  %2492 = trunc i64 %2491 to i8
  store i8 %2492, i8* %50, align 1, !tbaa !2449
  %2493 = lshr i64 %2474, 63
  %2494 = xor i64 %2491, %2493
  %2495 = add nuw nsw i64 %2494, %2491
  %2496 = icmp eq i64 %2495, 2
  %2497 = zext i1 %2496 to i8
  store i8 %2497, i8* %56, align 1, !tbaa !2450
  %2498 = add i64 %2471, 12
  store i64 %2498, i64* %PC, align 8
  store i64 %2475, i64* %2473, align 8
  %2499 = load i64, i64* %RBP, align 8
  %2500 = add i64 %2499, -80
  %2501 = load i64, i64* %PC, align 8
  %2502 = add i64 %2501, 8
  store i64 %2502, i64* %PC, align 8
  %2503 = inttoptr i64 %2500 to i64*
  store i64 0, i64* %2503, align 8
  %2504 = load i64, i64* %RBP, align 8
  %2505 = add i64 %2504, -56
  %2506 = load i64, i64* %PC, align 8
  %2507 = add i64 %2506, 4
  store i64 %2507, i64* %PC, align 8
  %2508 = inttoptr i64 %2505 to i64*
  %2509 = load i64, i64* %2508, align 8
  store i64 %2509, i64* %RAX, align 8, !tbaa !2428
  %2510 = add i64 %2504, -48
  %2511 = add i64 %2506, 8
  store i64 %2511, i64* %PC, align 8
  %2512 = inttoptr i64 %2510 to i64*
  store i64 %2509, i64* %2512, align 8
  %.pre41 = load i64, i64* %RBP, align 8
  %.pre42 = load i64, i64* %PC, align 8
  br label %block_401316

block_40106e:                                     ; preds = %block_4010bf, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1
  %2513 = phi i64 [ %.pre30, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1 ], [ %3081, %block_4010bf ]
  %2514 = load i64, i64* %RBP, align 8
  %2515 = add i64 %2514, -48
  %2516 = add i64 %2513, 4
  store i64 %2516, i64* %PC, align 8
  %2517 = inttoptr i64 %2515 to i64*
  %2518 = load i64, i64* %2517, align 8
  store i64 %2518, i64* %RAX, align 8, !tbaa !2428
  %2519 = add i64 %2514, -56
  %2520 = add i64 %2513, 8
  store i64 %2520, i64* %PC, align 8
  %2521 = inttoptr i64 %2519 to i64*
  %2522 = load i64, i64* %2521, align 8
  store i64 %2522, i64* %RCX, align 8, !tbaa !2428
  %2523 = add i64 %2514, -10624
  %2524 = add i64 %2523, %2522
  %2525 = add i64 %2513, 16
  store i64 %2525, i64* %PC, align 8
  %2526 = inttoptr i64 %2524 to i8*
  %2527 = load i8, i8* %2526, align 1
  %2528 = zext i8 %2527 to i64
  store i64 %2528, i64* %RDX, align 8, !tbaa !2428
  store i64 %2528, i64* %RCX, align 8, !tbaa !2428
  %2529 = sub i64 %2518, %2528
  %2530 = icmp ult i64 %2518, %2528
  %2531 = zext i1 %2530 to i8
  store i8 %2531, i8* %31, align 1, !tbaa !2432
  %2532 = trunc i64 %2529 to i32
  %2533 = and i32 %2532, 255
  %2534 = tail call i32 @llvm.ctpop.i32(i32 %2533) #8
  %2535 = trunc i32 %2534 to i8
  %2536 = and i8 %2535, 1
  %2537 = xor i8 %2536, 1
  store i8 %2537, i8* %38, align 1, !tbaa !2446
  %2538 = xor i64 %2528, %2518
  %2539 = xor i64 %2538, %2529
  %2540 = lshr i64 %2539, 4
  %2541 = trunc i64 %2540 to i8
  %2542 = and i8 %2541, 1
  store i8 %2542, i8* %44, align 1, !tbaa !2447
  %2543 = icmp eq i64 %2529, 0
  %2544 = zext i1 %2543 to i8
  store i8 %2544, i8* %47, align 1, !tbaa !2448
  %2545 = lshr i64 %2529, 63
  %2546 = trunc i64 %2545 to i8
  store i8 %2546, i8* %50, align 1, !tbaa !2449
  %2547 = lshr i64 %2518, 63
  %2548 = xor i64 %2545, %2547
  %2549 = add nuw nsw i64 %2548, %2547
  %2550 = icmp eq i64 %2549, 2
  %2551 = zext i1 %2550 to i8
  store i8 %2551, i8* %56, align 1, !tbaa !2450
  %.v67 = select i1 %2530, i64 27, i64 110
  %2552 = add i64 %2513, %.v67
  %2553 = add i64 %2514, -80
  %2554 = add i64 %2552, 4
  store i64 %2554, i64* %PC, align 8
  %2555 = inttoptr i64 %2553 to i64*
  %2556 = load i64, i64* %2555, align 8
  store i64 %2556, i64* %RAX, align 8, !tbaa !2428
  %2557 = add i64 %2552, 8
  store i64 %2557, i64* %PC, align 8
  br i1 %2530, label %block_401089, label %block_4010dc

block_401268:                                     ; preds = %block_40125a
  %2558 = add i64 %2679, -80
  %2559 = add i64 %2713, 4
  store i64 %2559, i64* %PC, align 8
  %2560 = inttoptr i64 %2558 to i64*
  %2561 = load i64, i64* %2560, align 8
  %2562 = shl i64 %2561, 1
  %2563 = lshr i64 %2561, 62
  %2564 = and i64 %2563, 1
  %2565 = or i64 %2562, 1
  store i64 %2565, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %31, align 1, !tbaa !2432
  %2566 = trunc i64 %2565 to i32
  %2567 = and i32 %2566, 255
  %2568 = tail call i32 @llvm.ctpop.i32(i32 %2567) #8
  %2569 = trunc i32 %2568 to i8
  %2570 = and i8 %2569, 1
  %2571 = xor i8 %2570, 1
  store i8 %2571, i8* %38, align 1, !tbaa !2446
  store i8 0, i8* %44, align 1, !tbaa !2447
  store i8 0, i8* %47, align 1, !tbaa !2448
  %2572 = trunc i64 %2564 to i8
  store i8 %2572, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  %2573 = add i64 %2713, 16
  store i64 %2573, i64* %PC, align 8
  store i64 %2565, i64* %2560, align 8
  %2574 = load i64, i64* %RBP, align 8
  %2575 = add i64 %2574, -104
  %2576 = load i64, i64* %PC, align 8
  %2577 = add i64 %2576, 4
  store i64 %2577, i64* %PC, align 8
  %2578 = inttoptr i64 %2575 to i64*
  %2579 = load i64, i64* %2578, align 8
  store i64 %2579, i64* %RAX, align 8, !tbaa !2428
  %2580 = add i64 %2576, 7
  store i64 %2580, i64* %PC, align 8
  %2581 = inttoptr i64 %2579 to i8*
  %2582 = load i8, i8* %2581, align 1
  %2583 = zext i8 %2582 to i64
  store i64 %2583, i64* %RCX, align 8, !tbaa !2428
  store i64 %2583, i64* %RAX, align 8, !tbaa !2428
  %2584 = add i64 %2574, -72
  %2585 = add i64 %2576, 13
  store i64 %2585, i64* %PC, align 8
  %2586 = inttoptr i64 %2584 to i64*
  %2587 = load i64, i64* %2586, align 8
  %2588 = and i64 %2587, %2583
  store i64 %2588, i64* %RAX, align 8, !tbaa !2428
  %2589 = trunc i64 %2588 to i32
  %2590 = tail call i32 @llvm.ctpop.i32(i32 %2589) #8
  %2591 = trunc i32 %2590 to i8
  %2592 = and i8 %2591, 1
  %2593 = xor i8 %2592, 1
  %2594 = icmp eq i64 %2588, 0
  %2595 = zext i1 %2594 to i8
  store i8 0, i8* %31, align 1, !tbaa !2432
  store i8 %2593, i8* %38, align 1, !tbaa !2446
  store i8 0, i8* %44, align 1, !tbaa !2447
  store i8 %2595, i8* %47, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  %.v74 = select i1 %2594, i64 35, i64 23
  %2596 = add i64 %2576, %.v74
  store i64 %2596, i64* %PC, align 8, !tbaa !2428
  br i1 %2594, label %block_40129b, label %block_40128f

block_400a61:                                     ; preds = %block_400a32, %block_400a45
  %2597 = phi i64 [ %3083, %block_400a32 ], [ %.pre14, %block_400a45 ]
  %2598 = phi i64 [ %2916, %block_400a32 ], [ %.pre13, %block_400a45 ]
  %2599 = add i64 %2597, -48
  %2600 = add i64 %2598, 9
  store i64 %2600, i64* %PC, align 8
  %2601 = inttoptr i64 %2599 to i64*
  %2602 = load i64, i64* %2601, align 8
  %2603 = add i64 %2602, 1
  store i64 %2603, i64* %RAX, align 8, !tbaa !2428
  %2604 = icmp eq i64 %2602, -1
  %2605 = icmp eq i64 %2603, 0
  %2606 = or i1 %2604, %2605
  %2607 = zext i1 %2606 to i8
  store i8 %2607, i8* %31, align 1, !tbaa !2432
  %2608 = trunc i64 %2603 to i32
  %2609 = and i32 %2608, 255
  %2610 = tail call i32 @llvm.ctpop.i32(i32 %2609) #8
  %2611 = trunc i32 %2610 to i8
  %2612 = and i8 %2611, 1
  %2613 = xor i8 %2612, 1
  store i8 %2613, i8* %38, align 1, !tbaa !2446
  %2614 = xor i64 %2602, %2603
  %2615 = lshr i64 %2614, 4
  %2616 = trunc i64 %2615 to i8
  %2617 = and i8 %2616, 1
  store i8 %2617, i8* %44, align 1, !tbaa !2447
  %2618 = zext i1 %2605 to i8
  store i8 %2618, i8* %47, align 1, !tbaa !2448
  %2619 = lshr i64 %2603, 63
  %2620 = trunc i64 %2619 to i8
  store i8 %2620, i8* %50, align 1, !tbaa !2449
  %2621 = lshr i64 %2602, 63
  %2622 = xor i64 %2619, %2621
  %2623 = add nuw nsw i64 %2622, %2619
  %2624 = icmp eq i64 %2623, 2
  %2625 = zext i1 %2624 to i8
  store i8 %2625, i8* %56, align 1, !tbaa !2450
  %2626 = add i64 %2598, 17
  store i64 %2626, i64* %PC, align 8
  store i64 %2603, i64* %2601, align 8
  %2627 = load i64, i64* %PC, align 8
  %2628 = add i64 %2627, -78
  store i64 %2628, i64* %PC, align 8, !tbaa !2428
  br label %block_400a24

block_400e5b:                                     ; preds = %block_400e3b
  %2629 = add i64 %2855, -10688
  %2630 = add i64 %2897, 7
  store i64 %2630, i64* %PC, align 8
  %2631 = inttoptr i64 %2629 to i32*
  %2632 = load i32, i32* %2631, align 4
  %2633 = add i32 %2632, -7
  %2634 = icmp ult i32 %2632, 7
  %2635 = zext i1 %2634 to i8
  store i8 %2635, i8* %31, align 1, !tbaa !2432
  %2636 = and i32 %2633, 255
  %2637 = tail call i32 @llvm.ctpop.i32(i32 %2636) #8
  %2638 = trunc i32 %2637 to i8
  %2639 = and i8 %2638, 1
  %2640 = xor i8 %2639, 1
  store i8 %2640, i8* %38, align 1, !tbaa !2446
  %2641 = xor i32 %2632, %2633
  %2642 = lshr i32 %2641, 4
  %2643 = trunc i32 %2642 to i8
  %2644 = and i8 %2643, 1
  store i8 %2644, i8* %44, align 1, !tbaa !2447
  %2645 = icmp eq i32 %2633, 0
  %2646 = zext i1 %2645 to i8
  store i8 %2646, i8* %47, align 1, !tbaa !2448
  %2647 = lshr i32 %2633, 31
  %2648 = trunc i32 %2647 to i8
  store i8 %2648, i8* %50, align 1, !tbaa !2449
  %2649 = lshr i32 %2632, 31
  %2650 = xor i32 %2647, %2649
  %2651 = add nuw nsw i32 %2650, %2649
  %2652 = icmp eq i32 %2651, 2
  %2653 = zext i1 %2652 to i8
  store i8 %2653, i8* %56, align 1, !tbaa !2450
  %.v61 = select i1 %2645, i64 13, i64 131
  %2654 = add i64 %2897, %.v61
  store i64 %2654, i64* %PC, align 8, !tbaa !2428
  br i1 %2645, label %block_400e68, label %block_400ede

block_401201:                                     ; preds = %block_401214, %block_4011f9
  %2655 = phi i64 [ %2334, %block_401214 ], [ %.pre38, %block_4011f9 ]
  %2656 = load i64, i64* %RBP, align 8
  %2657 = add i64 %2656, -56
  %2658 = add i64 %2655, 4
  store i64 %2658, i64* %PC, align 8
  %2659 = inttoptr i64 %2657 to i64*
  %2660 = load i64, i64* %2659, align 8
  store i64 %2660, i64* %RAX, align 8, !tbaa !2428
  %2661 = shl i64 %2660, 3
  %2662 = add i64 %2656, -12736
  %2663 = add i64 %2662, %2661
  %2664 = add i64 %2655, 13
  store i64 %2664, i64* %PC, align 8
  %2665 = inttoptr i64 %2663 to i64*
  %2666 = load i64, i64* %2665, align 8
  store i8 0, i8* %31, align 1, !tbaa !2432
  %2667 = trunc i64 %2666 to i32
  %2668 = and i32 %2667, 255
  %2669 = tail call i32 @llvm.ctpop.i32(i32 %2668) #8
  %2670 = trunc i32 %2669 to i8
  %2671 = and i8 %2670, 1
  %2672 = xor i8 %2671, 1
  store i8 %2672, i8* %38, align 1, !tbaa !2446
  store i8 0, i8* %44, align 1, !tbaa !2447
  %2673 = icmp eq i64 %2666, 0
  %2674 = zext i1 %2673 to i8
  store i8 %2674, i8* %47, align 1, !tbaa !2448
  %2675 = lshr i64 %2666, 63
  %2676 = trunc i64 %2675 to i8
  store i8 %2676, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  %.v72 = select i1 %2673, i64 19, i64 41
  %2677 = add i64 %2655, %.v72
  store i64 %2677, i64* %PC, align 8, !tbaa !2428
  br i1 %2673, label %block_401214, label %block_40122a

block_40125a:                                     ; preds = %block_401346, %block_40122a
  %2678 = phi i64 [ %.pre39, %block_40122a ], [ %3164, %block_401346 ]
  %2679 = load i64, i64* %RBP, align 8
  %2680 = add i64 %2679, -64
  %2681 = add i64 %2678, 4
  store i64 %2681, i64* %PC, align 8
  %2682 = inttoptr i64 %2680 to i64*
  %2683 = load i64, i64* %2682, align 8
  store i64 %2683, i64* %RAX, align 8, !tbaa !2428
  %2684 = add i64 %2679, -40
  %2685 = add i64 %2678, 8
  store i64 %2685, i64* %PC, align 8
  %2686 = inttoptr i64 %2684 to i64*
  %2687 = load i64, i64* %2686, align 8
  %2688 = sub i64 %2683, %2687
  %2689 = icmp ult i64 %2683, %2687
  %2690 = zext i1 %2689 to i8
  store i8 %2690, i8* %31, align 1, !tbaa !2432
  %2691 = trunc i64 %2688 to i32
  %2692 = and i32 %2691, 255
  %2693 = tail call i32 @llvm.ctpop.i32(i32 %2692) #8
  %2694 = trunc i32 %2693 to i8
  %2695 = and i8 %2694, 1
  %2696 = xor i8 %2695, 1
  store i8 %2696, i8* %38, align 1, !tbaa !2446
  %2697 = xor i64 %2687, %2683
  %2698 = xor i64 %2697, %2688
  %2699 = lshr i64 %2698, 4
  %2700 = trunc i64 %2699 to i8
  %2701 = and i8 %2700, 1
  store i8 %2701, i8* %44, align 1, !tbaa !2447
  %2702 = icmp eq i64 %2688, 0
  %2703 = zext i1 %2702 to i8
  store i8 %2703, i8* %47, align 1, !tbaa !2448
  %2704 = lshr i64 %2688, 63
  %2705 = trunc i64 %2704 to i8
  store i8 %2705, i8* %50, align 1, !tbaa !2449
  %2706 = lshr i64 %2683, 63
  %2707 = lshr i64 %2687, 63
  %2708 = xor i64 %2707, %2706
  %2709 = xor i64 %2704, %2706
  %2710 = add nuw nsw i64 %2709, %2708
  %2711 = icmp eq i64 %2710, 2
  %2712 = zext i1 %2711 to i8
  store i8 %2712, i8* %56, align 1, !tbaa !2450
  %.v73 = select i1 %2689, i64 14, i64 241
  %2713 = add i64 %2678, %.v73
  store i64 %2713, i64* %PC, align 8, !tbaa !2428
  br i1 %2689, label %block_401268, label %block_40134b

block_400a45:                                     ; preds = %block_400a32
  %2714 = add i64 %2916, 4
  store i64 %2714, i64* %PC, align 8
  %2715 = load i64, i64* %3086, align 8
  store i64 %2715, i64* %RAX, align 8, !tbaa !2428
  %2716 = add i64 %3083, -64
  %2717 = add i64 %2916, 8
  store i64 %2717, i64* %PC, align 8
  %2718 = inttoptr i64 %2716 to i64*
  %2719 = load i64, i64* %2718, align 8
  store i64 %2719, i64* %RCX, align 8, !tbaa !2428
  %2720 = shl i64 %2719, 3
  %2721 = add i64 %3083, -6272
  %2722 = add i64 %2721, %2720
  %2723 = add i64 %2916, 16
  store i64 %2723, i64* %PC, align 8
  %2724 = inttoptr i64 %2722 to i64*
  store i64 %2715, i64* %2724, align 8
  %2725 = load i64, i64* %RBP, align 8
  %2726 = add i64 %2725, -64
  %2727 = load i64, i64* %PC, align 8
  %2728 = add i64 %2727, 4
  store i64 %2728, i64* %PC, align 8
  %2729 = inttoptr i64 %2726 to i64*
  %2730 = load i64, i64* %2729, align 8
  %2731 = add i64 %2730, 1
  store i64 %2731, i64* %RAX, align 8, !tbaa !2428
  %2732 = icmp eq i64 %2730, -1
  %2733 = icmp eq i64 %2731, 0
  %2734 = or i1 %2732, %2733
  %2735 = zext i1 %2734 to i8
  store i8 %2735, i8* %31, align 1, !tbaa !2432
  %2736 = trunc i64 %2731 to i32
  %2737 = and i32 %2736, 255
  %2738 = tail call i32 @llvm.ctpop.i32(i32 %2737) #8
  %2739 = trunc i32 %2738 to i8
  %2740 = and i8 %2739, 1
  %2741 = xor i8 %2740, 1
  store i8 %2741, i8* %38, align 1, !tbaa !2446
  %2742 = xor i64 %2730, %2731
  %2743 = lshr i64 %2742, 4
  %2744 = trunc i64 %2743 to i8
  %2745 = and i8 %2744, 1
  store i8 %2745, i8* %44, align 1, !tbaa !2447
  %2746 = zext i1 %2733 to i8
  store i8 %2746, i8* %47, align 1, !tbaa !2448
  %2747 = lshr i64 %2731, 63
  %2748 = trunc i64 %2747 to i8
  store i8 %2748, i8* %50, align 1, !tbaa !2449
  %2749 = lshr i64 %2730, 63
  %2750 = xor i64 %2747, %2749
  %2751 = add nuw nsw i64 %2750, %2747
  %2752 = icmp eq i64 %2751, 2
  %2753 = zext i1 %2752 to i8
  store i8 %2753, i8* %56, align 1, !tbaa !2450
  %2754 = add i64 %2727, 12
  store i64 %2754, i64* %PC, align 8
  store i64 %2731, i64* %2729, align 8
  %.pre13 = load i64, i64* %PC, align 8
  %.pre14 = load i64, i64* %RBP, align 8
  br label %block_400a61

block_400dd0:                                     ; preds = %block_400d9e
  store i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 63), i64* %RSI, align 8, !tbaa !2428
  %2755 = load i64, i64* @stderr, align 32
  store i64 %2755, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %2756 = add i64 %2995, -2016
  %2757 = add i64 %2995, 25
  %2758 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2759 = add i64 %2758, -8
  %2760 = inttoptr i64 %2759 to i64*
  store i64 %2757, i64* %2760, align 8
  store i64 %2759, i64* %RSP, align 8, !tbaa !2428
  store i64 %2756, i64* %PC, align 8, !tbaa !2428
  %2761 = tail call fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.11)
  %2762 = load i64, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %2763 = load i64, i64* %RBP, align 8
  %2764 = add i64 %2763, -13084
  %2765 = load i32, i32* %EAX, align 4
  %2766 = add i64 %2762, 11
  store i64 %2766, i64* %PC, align 8
  %2767 = inttoptr i64 %2764 to i32*
  store i32 %2765, i32* %2767, align 4
  %2768 = load i64, i64* %PC, align 8
  %2769 = add i64 %2768, -2004
  %2770 = add i64 %2768, 5
  %2771 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2772 = add i64 %2771, -8
  %2773 = inttoptr i64 %2772 to i64*
  store i64 %2770, i64* %2773, align 8
  store i64 %2772, i64* %RSP, align 8, !tbaa !2428
  store i64 %2769, i64* %PC, align 8, !tbaa !2428
  %2774 = tail call fastcc %struct.Memory* @ext_400620_exit(%struct.State* nonnull %0, %struct.Memory* %2761)
  %2775 = load i64, i64* %PC, align 8
  %2776 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %2775, %struct.Memory* %2774)
  ret %struct.Memory* %2776

block_40103f:                                     ; preds = %block_400ff7
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %2777 = add i64 %1258, -80
  %2778 = add i64 %1289, 13
  store i64 %2778, i64* %PC, align 8
  %2779 = inttoptr i64 %2777 to i64*
  store i64 0, i64* %2779, align 8
  %2780 = load i64, i64* %RBP, align 8
  %2781 = add i64 %2780, -56
  %2782 = load i64, i64* %PC, align 8
  %2783 = add i64 %2782, 4
  store i64 %2783, i64* %PC, align 8
  %2784 = inttoptr i64 %2781 to i64*
  %2785 = load i64, i64* %2784, align 8
  store i64 %2785, i64* %RCX, align 8, !tbaa !2428
  %2786 = add i64 %2780, -10624
  %2787 = add i64 %2786, %2785
  %2788 = add i64 %2782, 12
  store i64 %2788, i64* %PC, align 8
  %2789 = inttoptr i64 %2787 to i8*
  %2790 = load i8, i8* %2789, align 1
  %2791 = zext i8 %2790 to i32
  %2792 = add nsw i32 %2791, -1
  %2793 = zext i32 %2792 to i64
  store i64 %2793, i64* %RDX, align 8, !tbaa !2428
  %2794 = icmp eq i8 %2790, 0
  %2795 = zext i1 %2794 to i8
  store i8 %2795, i8* %31, align 1, !tbaa !2432
  %2796 = and i32 %2792, 255
  %2797 = tail call i32 @llvm.ctpop.i32(i32 %2796) #8
  %2798 = trunc i32 %2797 to i8
  %2799 = and i8 %2798, 1
  %2800 = xor i8 %2799, 1
  store i8 %2800, i8* %38, align 1, !tbaa !2446
  %2801 = xor i32 %2791, %2792
  %2802 = lshr i32 %2801, 4
  %2803 = trunc i32 %2802 to i8
  %2804 = and i8 %2803, 1
  store i8 %2804, i8* %44, align 1, !tbaa !2447
  %2805 = icmp eq i32 %2792, 0
  %2806 = zext i1 %2805 to i8
  store i8 %2806, i8* %47, align 1, !tbaa !2448
  %2807 = lshr i32 %2792, 31
  %2808 = trunc i32 %2807 to i8
  store i8 %2808, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  store i64 %2793, i64* %RCX, align 8, !tbaa !2428
  %2809 = load i64, i64* %RAX, align 8
  %2810 = add i64 %2782, 19
  store i64 %2810, i64* %PC, align 8
  %2811 = trunc i32 %2792 to i5
  %2812 = trunc i64 %2809 to i32
  switch i5 %2811, label %2818 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1
    i5 1, label %2813
  ]

; <label>:2813:                                   ; preds = %block_40103f
  %2814 = shl i32 %2812, 1
  %2815 = icmp slt i32 %2812, 0
  %2816 = icmp slt i32 %2814, 0
  %2817 = xor i1 %2815, %2816
  br label %2828

; <label>:2818:                                   ; preds = %block_40103f
  %2819 = and i32 %2792, 31
  %2820 = zext i32 %2819 to i64
  %2821 = add nuw nsw i64 %2820, 4294967295
  %2822 = and i64 %2809, 4294967295
  %2823 = and i64 %2821, 4294967295
  %2824 = shl i64 %2822, %2823
  %2825 = trunc i64 %2824 to i32
  %2826 = icmp slt i32 %2825, 0
  %2827 = shl i32 %2825, 1
  br label %2828

; <label>:2828:                                   ; preds = %2818, %2813
  %2829 = phi i1 [ %2815, %2813 ], [ %2826, %2818 ]
  %2830 = phi i1 [ %2817, %2813 ], [ false, %2818 ]
  %2831 = phi i32 [ %2814, %2813 ], [ %2827, %2818 ]
  %2832 = zext i32 %2831 to i64
  store i64 %2832, i64* %RAX, align 8, !tbaa !2428
  %2833 = zext i1 %2829 to i8
  store i8 %2833, i8* %31, align 1, !tbaa !2453
  %2834 = and i32 %2831, 254
  %2835 = tail call i32 @llvm.ctpop.i32(i32 %2834) #8
  %2836 = trunc i32 %2835 to i8
  %2837 = and i8 %2836, 1
  %2838 = xor i8 %2837, 1
  store i8 %2838, i8* %38, align 1, !tbaa !2453
  store i8 0, i8* %44, align 1, !tbaa !2453
  %2839 = icmp eq i32 %2831, 0
  %2840 = zext i1 %2839 to i8
  store i8 %2840, i8* %47, align 1, !tbaa !2453
  %2841 = lshr i32 %2831, 31
  %2842 = trunc i32 %2841 to i8
  store i8 %2842, i8* %50, align 1, !tbaa !2453
  %2843 = zext i1 %2830 to i8
  store i8 %2843, i8* %56, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1: ; preds = %2828, %block_40103f
  %2844 = phi i32 [ %2831, %2828 ], [ %2812, %block_40103f ]
  %2845 = sext i32 %2844 to i64
  store i64 %2845, i64* %RSI, align 8, !tbaa !2428
  %2846 = add i64 %2780, -72
  %2847 = add i64 %2782, 26
  store i64 %2847, i64* %PC, align 8
  %2848 = inttoptr i64 %2846 to i64*
  store i64 %2845, i64* %2848, align 8
  %2849 = load i64, i64* %RBP, align 8
  %2850 = add i64 %2849, -48
  %2851 = load i64, i64* %PC, align 8
  %2852 = add i64 %2851, 8
  store i64 %2852, i64* %PC, align 8
  %2853 = inttoptr i64 %2850 to i64*
  store i64 0, i64* %2853, align 8
  %.pre30 = load i64, i64* %PC, align 8
  br label %block_40106e

block_400e3b:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit, %block_400f30
  %2854 = phi i64 [ %.pre25, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit ], [ %1091, %block_400f30 ]
  %2855 = load i64, i64* %RBP, align 8
  %2856 = add i64 %2855, -48
  %2857 = add i64 %2854, 4
  store i64 %2857, i64* %PC, align 8
  %2858 = inttoptr i64 %2856 to i64*
  %2859 = load i64, i64* %2858, align 8
  store i64 %2859, i64* %RAX, align 8, !tbaa !2428
  %2860 = add i64 %2855, -112
  %2861 = add i64 %2854, 8
  store i64 %2861, i64* %PC, align 8
  %2862 = inttoptr i64 %2860 to i64*
  %2863 = load i64, i64* %2862, align 8
  store i64 %2863, i64* %RCX, align 8, !tbaa !2428
  %2864 = add i64 %2854, 11
  store i64 %2864, i64* %PC, align 8
  %2865 = inttoptr i64 %2863 to i8*
  %2866 = load i8, i8* %2865, align 1
  %2867 = zext i8 %2866 to i64
  store i64 %2867, i64* %RDX, align 8, !tbaa !2428
  store i64 %2867, i64* %RCX, align 8, !tbaa !2428
  %2868 = add i64 %2855, -10624
  %2869 = add i64 %2868, %2867
  %2870 = add i64 %2854, 21
  store i64 %2870, i64* %PC, align 8
  %2871 = inttoptr i64 %2869 to i8*
  %2872 = load i8, i8* %2871, align 1
  %2873 = zext i8 %2872 to i64
  store i64 %2873, i64* %RDX, align 8, !tbaa !2428
  store i64 %2873, i64* %RCX, align 8, !tbaa !2428
  %2874 = sub i64 %2859, %2873
  %2875 = icmp ult i64 %2859, %2873
  %2876 = zext i1 %2875 to i8
  store i8 %2876, i8* %31, align 1, !tbaa !2432
  %2877 = trunc i64 %2874 to i32
  %2878 = and i32 %2877, 255
  %2879 = tail call i32 @llvm.ctpop.i32(i32 %2878) #8
  %2880 = trunc i32 %2879 to i8
  %2881 = and i8 %2880, 1
  %2882 = xor i8 %2881, 1
  store i8 %2882, i8* %38, align 1, !tbaa !2446
  %2883 = xor i64 %2873, %2859
  %2884 = xor i64 %2883, %2874
  %2885 = lshr i64 %2884, 4
  %2886 = trunc i64 %2885 to i8
  %2887 = and i8 %2886, 1
  store i8 %2887, i8* %44, align 1, !tbaa !2447
  %2888 = icmp eq i64 %2874, 0
  %2889 = zext i1 %2888 to i8
  store i8 %2889, i8* %47, align 1, !tbaa !2448
  %2890 = lshr i64 %2874, 63
  %2891 = trunc i64 %2890 to i8
  store i8 %2891, i8* %50, align 1, !tbaa !2449
  %2892 = lshr i64 %2859, 63
  %2893 = xor i64 %2890, %2892
  %2894 = add nuw nsw i64 %2893, %2892
  %2895 = icmp eq i64 %2894, 2
  %2896 = zext i1 %2895 to i8
  store i8 %2896, i8* %56, align 1, !tbaa !2450
  %.v60 = select i1 %2875, i64 32, i64 274
  %2897 = add i64 %2854, %.v60
  store i64 %2897, i64* %PC, align 8, !tbaa !2428
  br i1 %2875, label %block_400e5b, label %block_400f4d

block_400a32:                                     ; preds = %block_400a24
  %2898 = add i64 %3110, 4
  store i64 %2898, i64* %PC, align 8
  %2899 = load i64, i64* %3086, align 8
  store i64 %2899, i64* %RAX, align 8, !tbaa !2428
  %2900 = shl i64 %2899, 3
  %2901 = add i64 %3083, -4224
  %2902 = add i64 %2901, %2900
  %2903 = add i64 %3110, 13
  store i64 %2903, i64* %PC, align 8
  %2904 = inttoptr i64 %2902 to i64*
  %2905 = load i64, i64* %2904, align 8
  store i8 0, i8* %31, align 1, !tbaa !2432
  %2906 = trunc i64 %2905 to i32
  %2907 = and i32 %2906, 255
  %2908 = tail call i32 @llvm.ctpop.i32(i32 %2907) #8
  %2909 = trunc i32 %2908 to i8
  %2910 = and i8 %2909, 1
  %2911 = xor i8 %2910, 1
  store i8 %2911, i8* %38, align 1, !tbaa !2446
  store i8 0, i8* %44, align 1, !tbaa !2447
  %2912 = icmp eq i64 %2905, 0
  %2913 = zext i1 %2912 to i8
  store i8 %2913, i8* %47, align 1, !tbaa !2448
  %2914 = lshr i64 %2905, 63
  %2915 = trunc i64 %2914 to i8
  store i8 %2915, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  %.v48 = select i1 %2912, i64 47, i64 19
  %2916 = add i64 %3110, %.v48
  store i64 %2916, i64* %PC, align 8, !tbaa !2428
  br i1 %2912, label %block_400a61, label %block_400a45

block_40122a:                                     ; preds = %block_401201
  %2917 = add i64 %2656, -80
  %2918 = add i64 %2677, 8
  store i64 %2918, i64* %PC, align 8
  %2919 = inttoptr i64 %2917 to i64*
  store i64 0, i64* %2919, align 8
  %2920 = load i64, i64* %RBP, align 8
  %2921 = add i64 %2920, -56
  %2922 = load i64, i64* %PC, align 8
  %2923 = add i64 %2922, 4
  store i64 %2923, i64* %PC, align 8
  %2924 = inttoptr i64 %2921 to i64*
  %2925 = load i64, i64* %2924, align 8
  store i64 %2925, i64* %RAX, align 8, !tbaa !2428
  %2926 = add i64 %2920, -48
  %2927 = add i64 %2922, 8
  store i64 %2927, i64* %PC, align 8
  %2928 = inttoptr i64 %2926 to i64*
  store i64 %2925, i64* %2928, align 8
  %2929 = load i64, i64* %RBP, align 8
  %2930 = add i64 %2929, -72
  %2931 = load i64, i64* %PC, align 8
  %2932 = add i64 %2931, 8
  store i64 %2932, i64* %PC, align 8
  %2933 = inttoptr i64 %2930 to i64*
  store i64 128, i64* %2933, align 8
  %2934 = load i64, i64* %RBP, align 8
  %2935 = add i64 %2934, -64
  %2936 = load i64, i64* %PC, align 8
  %2937 = add i64 %2936, 8
  store i64 %2937, i64* %PC, align 8
  %2938 = inttoptr i64 %2935 to i64*
  store i64 0, i64* %2938, align 8
  %2939 = load i64, i64* %RBP, align 8
  %2940 = add i64 %2939, -120
  %2941 = load i64, i64* %PC, align 8
  %2942 = add i64 %2941, 4
  store i64 %2942, i64* %PC, align 8
  %2943 = inttoptr i64 %2940 to i64*
  %2944 = load i64, i64* %2943, align 8
  store i64 %2944, i64* %RAX, align 8, !tbaa !2428
  %2945 = add i64 %2939, -104
  %2946 = add i64 %2941, 8
  store i64 %2946, i64* %PC, align 8
  %2947 = inttoptr i64 %2945 to i64*
  store i64 %2944, i64* %2947, align 8
  %2948 = load i64, i64* %RBP, align 8
  %2949 = add i64 %2948, -32
  %2950 = load i64, i64* %PC, align 8
  %2951 = add i64 %2950, 4
  store i64 %2951, i64* %PC, align 8
  %2952 = inttoptr i64 %2949 to i64*
  %2953 = load i64, i64* %2952, align 8
  store i64 %2953, i64* %RAX, align 8, !tbaa !2428
  %2954 = add i64 %2948, -112
  %2955 = add i64 %2950, 8
  store i64 %2955, i64* %PC, align 8
  %2956 = inttoptr i64 %2954 to i64*
  store i64 %2953, i64* %2956, align 8
  %.pre39 = load i64, i64* %PC, align 8
  br label %block_40125a

block_400d9e:                                     ; preds = %block_400d67
  %2957 = add i64 %330, -10680
  %2958 = add i64 %794, 11
  store i64 %2958, i64* %PC, align 8
  %2959 = inttoptr i64 %2957 to i64*
  store i64 0, i64* %2959, align 8
  %2960 = load i64, i64* %RBP, align 8
  %2961 = add i64 %2960, -10681
  %2962 = load i64, i64* %PC, align 8
  %2963 = add i64 %2962, 7
  store i64 %2963, i64* %PC, align 8
  %2964 = inttoptr i64 %2961 to i8*
  store i8 0, i8* %2964, align 1
  %2965 = load i64, i64* %RBP, align 8
  %2966 = add i64 %2965, -10688
  %2967 = load i64, i64* %PC, align 8
  %2968 = add i64 %2967, 10
  store i64 %2968, i64* %PC, align 8
  %2969 = inttoptr i64 %2966 to i32*
  store i32 -1, i32* %2969, align 4
  %2970 = load i64, i64* %RBP, align 8
  %2971 = add i64 %2970, -32
  %2972 = load i64, i64* %PC, align 8
  %2973 = add i64 %2972, 4
  store i64 %2973, i64* %PC, align 8
  %2974 = inttoptr i64 %2971 to i64*
  %2975 = load i64, i64* %2974, align 8
  store i64 %2975, i64* %RAX, align 8, !tbaa !2428
  %2976 = add i64 %2970, -112
  %2977 = add i64 %2972, 8
  store i64 %2977, i64* %PC, align 8
  %2978 = inttoptr i64 %2976 to i64*
  store i64 %2975, i64* %2978, align 8
  %2979 = load i64, i64* %RBP, align 8
  %2980 = add i64 %2979, -10656
  %2981 = load i64, i64* %PC, align 8
  %2982 = add i64 %2981, 8
  store i64 %2982, i64* %PC, align 8
  %2983 = inttoptr i64 %2980 to i64*
  %2984 = load i64, i64* %2983, align 8
  store i8 0, i8* %31, align 1, !tbaa !2432
  %2985 = trunc i64 %2984 to i32
  %2986 = and i32 %2985, 255
  %2987 = tail call i32 @llvm.ctpop.i32(i32 %2986) #8
  %2988 = trunc i32 %2987 to i8
  %2989 = and i8 %2988, 1
  %2990 = xor i8 %2989, 1
  store i8 %2990, i8* %38, align 1, !tbaa !2446
  store i8 0, i8* %44, align 1, !tbaa !2447
  %2991 = icmp eq i64 %2984, 0
  %2992 = zext i1 %2991 to i8
  store i8 %2992, i8* %47, align 1, !tbaa !2448
  %2993 = lshr i64 %2984, 63
  %2994 = trunc i64 %2993 to i8
  store i8 %2994, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  %.v58 = select i1 %2991, i64 14, i64 55
  %2995 = add i64 %2981, %.v58
  store i64 %2995, i64* %PC, align 8, !tbaa !2428
  br i1 %2991, label %block_400dd0, label %block_400df9

block_401118:                                     ; preds = %block_40110a
  %2996 = add i64 %1589, 4
  store i64 %2996, i64* %PC, align 8
  %2997 = load i64, i64* %1565, align 8
  store i64 %2997, i64* %RAX, align 8, !tbaa !2428
  %2998 = shl i64 %2997, 3
  %2999 = add i64 %1562, -12736
  %3000 = add i64 %2999, %2998
  %3001 = add i64 %1589, 12
  store i64 %3001, i64* %PC, align 8
  %3002 = inttoptr i64 %3000 to i64*
  %3003 = load i64, i64* %3002, align 8
  store i64 %3003, i64* %RAX, align 8, !tbaa !2428
  %3004 = add i64 %1562, -88
  %3005 = add i64 %1589, 16
  store i64 %3005, i64* %PC, align 8
  %3006 = inttoptr i64 %3004 to i64*
  store i64 %3003, i64* %3006, align 8
  %3007 = load i64, i64* %RBP, align 8
  %3008 = add i64 %3007, -48
  %3009 = load i64, i64* %PC, align 8
  %3010 = add i64 %3009, 4
  store i64 %3010, i64* %PC, align 8
  %3011 = inttoptr i64 %3008 to i64*
  %3012 = load i64, i64* %3011, align 8
  store i64 %3012, i64* %RAX, align 8, !tbaa !2428
  %3013 = add i64 %3007, -12992
  %3014 = add i64 %3013, %3012
  %3015 = add i64 %3009, 11
  store i64 %3015, i64* %PC, align 8
  %3016 = inttoptr i64 %3014 to i8*
  %3017 = load i8, i8* %3016, align 1
  store i8 %3017, i8* %CL, align 1, !tbaa !2453
  %3018 = add i64 %3007, -89
  %3019 = add i64 %3009, 14
  store i64 %3019, i64* %PC, align 8
  %3020 = inttoptr i64 %3018 to i8*
  store i8 %3017, i8* %3020, align 1
  %3021 = load i64, i64* %RBP, align 8
  %3022 = add i64 %3021, -48
  %3023 = load i64, i64* %PC, align 8
  %3024 = add i64 %3023, 4
  store i64 %3024, i64* %PC, align 8
  %3025 = inttoptr i64 %3022 to i64*
  %3026 = load i64, i64* %3025, align 8
  store i64 %3026, i64* %RAX, align 8, !tbaa !2428
  %3027 = add i64 %3021, -56
  %3028 = add i64 %3023, 8
  store i64 %3028, i64* %PC, align 8
  %3029 = inttoptr i64 %3027 to i64*
  store i64 %3026, i64* %3029, align 8
  %.pre36 = load i64, i64* %PC, align 8
  br label %block_40113e

block_4010bf:                                     ; preds = %block_401089, %block_4010b3
  %3030 = phi i64 [ %2002, %block_401089 ], [ %.pre32, %block_4010b3 ]
  %3031 = phi i64 [ %1975, %block_401089 ], [ %.pre31, %block_4010b3 ]
  %3032 = add i64 %3031, -72
  %3033 = add i64 %3030, 4
  store i64 %3033, i64* %PC, align 8
  %3034 = inttoptr i64 %3032 to i64*
  %3035 = load i64, i64* %3034, align 8
  %3036 = lshr i64 %3035, 63
  %3037 = trunc i64 %3036 to i8
  %3038 = trunc i64 %3035 to i8
  %3039 = and i8 %3038, 1
  %3040 = lshr i64 %3035, 1
  store i64 %3040, i64* %RAX, align 8, !tbaa !2428
  store i8 %3039, i8* %31, align 1, !tbaa !2453
  %3041 = trunc i64 %3040 to i32
  %3042 = and i32 %3041, 255
  %3043 = tail call i32 @llvm.ctpop.i32(i32 %3042) #8
  %3044 = trunc i32 %3043 to i8
  %3045 = and i8 %3044, 1
  %3046 = xor i8 %3045, 1
  store i8 %3046, i8* %38, align 1, !tbaa !2453
  store i8 0, i8* %44, align 1, !tbaa !2453
  %3047 = icmp eq i64 %3040, 0
  %3048 = zext i1 %3047 to i8
  store i8 %3048, i8* %47, align 1, !tbaa !2453
  store i8 0, i8* %50, align 1, !tbaa !2453
  store i8 %3037, i8* %56, align 1, !tbaa !2453
  %3049 = add i64 %3030, 12
  store i64 %3049, i64* %PC, align 8
  store i64 %3040, i64* %3034, align 8
  %3050 = load i64, i64* %RBP, align 8
  %3051 = add i64 %3050, -48
  %3052 = load i64, i64* %PC, align 8
  %3053 = add i64 %3052, 4
  store i64 %3053, i64* %PC, align 8
  %3054 = inttoptr i64 %3051 to i64*
  %3055 = load i64, i64* %3054, align 8
  %3056 = add i64 %3055, 1
  store i64 %3056, i64* %RAX, align 8, !tbaa !2428
  %3057 = icmp eq i64 %3055, -1
  %3058 = icmp eq i64 %3056, 0
  %3059 = or i1 %3057, %3058
  %3060 = zext i1 %3059 to i8
  store i8 %3060, i8* %31, align 1, !tbaa !2432
  %3061 = trunc i64 %3056 to i32
  %3062 = and i32 %3061, 255
  %3063 = tail call i32 @llvm.ctpop.i32(i32 %3062) #8
  %3064 = trunc i32 %3063 to i8
  %3065 = and i8 %3064, 1
  %3066 = xor i8 %3065, 1
  store i8 %3066, i8* %38, align 1, !tbaa !2446
  %3067 = xor i64 %3055, %3056
  %3068 = lshr i64 %3067, 4
  %3069 = trunc i64 %3068 to i8
  %3070 = and i8 %3069, 1
  store i8 %3070, i8* %44, align 1, !tbaa !2447
  %3071 = zext i1 %3058 to i8
  store i8 %3071, i8* %47, align 1, !tbaa !2448
  %3072 = lshr i64 %3056, 63
  %3073 = trunc i64 %3072 to i8
  store i8 %3073, i8* %50, align 1, !tbaa !2449
  %3074 = lshr i64 %3055, 63
  %3075 = xor i64 %3072, %3074
  %3076 = add nuw nsw i64 %3075, %3072
  %3077 = icmp eq i64 %3076, 2
  %3078 = zext i1 %3077 to i8
  store i8 %3078, i8* %56, align 1, !tbaa !2450
  %3079 = add i64 %3052, 12
  store i64 %3079, i64* %PC, align 8
  store i64 %3056, i64* %3054, align 8
  %3080 = load i64, i64* %PC, align 8
  %3081 = add i64 %3080, -105
  store i64 %3081, i64* %PC, align 8, !tbaa !2428
  br label %block_40106e

block_400a24:                                     ; preds = %block_400a14, %block_400a61
  %3082 = phi i64 [ %.pre12, %block_400a14 ], [ %2628, %block_400a61 ]
  %3083 = load i64, i64* %RBP, align 8
  %3084 = add i64 %3083, -48
  %3085 = add i64 %3082, 8
  store i64 %3085, i64* %PC, align 8
  %3086 = inttoptr i64 %3084 to i64*
  %3087 = load i64, i64* %3086, align 8
  %3088 = add i64 %3087, -256
  %3089 = icmp ult i64 %3087, 256
  %3090 = zext i1 %3089 to i8
  store i8 %3090, i8* %31, align 1, !tbaa !2432
  %3091 = trunc i64 %3088 to i32
  %3092 = and i32 %3091, 255
  %3093 = tail call i32 @llvm.ctpop.i32(i32 %3092) #8
  %3094 = trunc i32 %3093 to i8
  %3095 = and i8 %3094, 1
  %3096 = xor i8 %3095, 1
  store i8 %3096, i8* %38, align 1, !tbaa !2446
  %3097 = xor i64 %3087, %3088
  %3098 = lshr i64 %3097, 4
  %3099 = trunc i64 %3098 to i8
  %3100 = and i8 %3099, 1
  store i8 %3100, i8* %44, align 1, !tbaa !2447
  %3101 = icmp eq i64 %3088, 0
  %3102 = zext i1 %3101 to i8
  store i8 %3102, i8* %47, align 1, !tbaa !2448
  %3103 = lshr i64 %3088, 63
  %3104 = trunc i64 %3103 to i8
  store i8 %3104, i8* %50, align 1, !tbaa !2449
  %3105 = lshr i64 %3087, 63
  %3106 = xor i64 %3103, %3105
  %3107 = add nuw nsw i64 %3106, %3105
  %3108 = icmp eq i64 %3107, 2
  %3109 = zext i1 %3108 to i8
  store i8 %3109, i8* %56, align 1, !tbaa !2450
  %.v47 = select i1 %3089, i64 14, i64 83
  %3110 = add i64 %3082, %.v47
  store i64 %3110, i64* %PC, align 8, !tbaa !2428
  br i1 %3089, label %block_400a32, label %block_400a77

block_400c1d:                                     ; preds = %block_400c07
  %3111 = add i64 %3354, 7
  store i64 %3111, i64* %PC, align 8
  %3112 = load i64, i64* %333, align 8
  store i64 %3112, i64* %RAX, align 8, !tbaa !2428
  %3113 = shl i64 %3112, 3
  %3114 = add i64 %330, -10368
  %3115 = add i64 %3114, %3113
  %3116 = add i64 %3354, 19
  store i64 %3116, i64* %PC, align 8
  %3117 = inttoptr i64 %3115 to i64*
  store i64 0, i64* %3117, align 8
  %3118 = load i64, i64* %RBP, align 8
  %3119 = add i64 %3118, -10640
  %3120 = load i64, i64* %PC, align 8
  %3121 = add i64 %3120, 7
  store i64 %3121, i64* %PC, align 8
  %3122 = inttoptr i64 %3119 to i64*
  %3123 = load i64, i64* %3122, align 8
  store i64 %3123, i64* %RAX, align 8, !tbaa !2428
  %3124 = add i64 %3118, -10624
  %3125 = add i64 %3124, %3123
  %3126 = add i64 %3120, 15
  store i64 %3126, i64* %PC, align 8
  %3127 = inttoptr i64 %3125 to i8*
  store i8 0, i8* %3127, align 1
  %3128 = load i64, i64* %PC, align 8
  %3129 = add i64 %3128, 268
  br label %block_400d4b

block_400d3b:                                     ; preds = %block_400d2a
  %3130 = add i64 %1128, 4
  store i64 %3130, i64* %PC, align 8
  %3131 = load i64, i64* %1096, align 8
  store i64 %3131, i64* %RAX, align 8, !tbaa !2428
  %3132 = add i64 %1128, 11
  store i64 %3132, i64* %PC, align 8
  store i64 %3131, i64* %1100, align 8
  %.pre23 = load i64, i64* %PC, align 8
  br label %block_400d46

block_400e9f:                                     ; preds = %block_400e68
  store i64 add (i64 ptrtoint (%seg_401620__rodata_type* @seg_401620__rodata to i64), i64 96), i64* %RSI, align 8, !tbaa !2428
  %3133 = load i64, i64* @stderr, align 32
  store i64 %3133, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %3134 = add i64 %3245, -2223
  %3135 = add i64 %3245, 25
  %3136 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3137 = add i64 %3136, -8
  %3138 = inttoptr i64 %3137 to i64*
  store i64 %3135, i64* %3138, align 8
  store i64 %3137, i64* %RSP, align 8, !tbaa !2428
  store i64 %3134, i64* %PC, align 8, !tbaa !2428
  %3139 = tail call fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.11)
  %3140 = load i64, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %3141 = load i64, i64* %RBP, align 8
  %3142 = add i64 %3141, -13088
  %3143 = load i32, i32* %EAX, align 4
  %3144 = add i64 %3140, 11
  store i64 %3144, i64* %PC, align 8
  %3145 = inttoptr i64 %3142 to i32*
  store i32 %3143, i32* %3145, align 4
  %3146 = load i64, i64* %PC, align 8
  %3147 = add i64 %3146, -2211
  %3148 = add i64 %3146, 5
  %3149 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3150 = add i64 %3149, -8
  %3151 = inttoptr i64 %3150 to i64*
  store i64 %3148, i64* %3151, align 8
  store i64 %3150, i64* %RSP, align 8, !tbaa !2428
  store i64 %3147, i64* %PC, align 8, !tbaa !2428
  %3152 = tail call fastcc %struct.Memory* @ext_400620_exit(%struct.State* nonnull %0, %struct.Memory* %3139)
  %3153 = load i64, i64* %PC, align 8
  %3154 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %3153, %struct.Memory* %3152)
  ret %struct.Memory* %3154

block_400a14:                                     ; preds = %block_4009cc
  %3155 = add i64 %896, -64
  %3156 = add i64 %930, 8
  store i64 %3156, i64* %PC, align 8
  %3157 = inttoptr i64 %3155 to i64*
  store i64 0, i64* %3157, align 8
  %3158 = load i64, i64* %RBP, align 8
  %3159 = add i64 %3158, -48
  %3160 = load i64, i64* %PC, align 8
  %3161 = add i64 %3160, 8
  store i64 %3161, i64* %PC, align 8
  %3162 = inttoptr i64 %3159 to i64*
  store i64 0, i64* %3162, align 8
  %.pre12 = load i64, i64* %PC, align 8
  br label %block_400a24

block_401346:                                     ; preds = %block_401321, %block_401332
  %3163 = phi i64 [ %1146, %block_401321 ], [ %.pre43, %block_401332 ]
  %3164 = add i64 %3163, -236
  store i64 %3164, i64* %PC, align 8, !tbaa !2428
  br label %block_40125a

block_400e68:                                     ; preds = %block_400e5b
  %3165 = add i64 %2855, -10681
  %3166 = add i64 %2654, 6
  store i64 %3166, i64* %PC, align 8
  %3167 = inttoptr i64 %3165 to i8*
  %3168 = load i8, i8* %3167, align 1
  store i8 %3168, i8* %AL, align 1, !tbaa !2453
  %3169 = add i64 %2855, -120
  %3170 = add i64 %2654, 10
  store i64 %3170, i64* %PC, align 8
  %3171 = inttoptr i64 %3169 to i64*
  %3172 = load i64, i64* %3171, align 8
  store i64 %3172, i64* %RCX, align 8, !tbaa !2428
  %3173 = add i64 %2855, -10680
  %3174 = add i64 %2654, 17
  store i64 %3174, i64* %PC, align 8
  %3175 = inttoptr i64 %3173 to i64*
  %3176 = load i64, i64* %3175, align 8
  store i64 %3176, i64* %RDX, align 8, !tbaa !2428
  %3177 = add i64 %3176, %3172
  %3178 = add i64 %2654, 20
  store i64 %3178, i64* %PC, align 8
  %3179 = inttoptr i64 %3177 to i8*
  store i8 %3168, i8* %3179, align 1
  %3180 = load i64, i64* %RBP, align 8
  %3181 = add i64 %3180, -10680
  %3182 = load i64, i64* %PC, align 8
  %3183 = add i64 %3182, 7
  store i64 %3183, i64* %PC, align 8
  %3184 = inttoptr i64 %3181 to i64*
  %3185 = load i64, i64* %3184, align 8
  %3186 = add i64 %3185, 1
  store i64 %3186, i64* %RCX, align 8, !tbaa !2428
  %3187 = icmp eq i64 %3185, -1
  %3188 = icmp eq i64 %3186, 0
  %3189 = or i1 %3187, %3188
  %3190 = zext i1 %3189 to i8
  store i8 %3190, i8* %31, align 1, !tbaa !2432
  %3191 = trunc i64 %3186 to i32
  %3192 = and i32 %3191, 255
  %3193 = tail call i32 @llvm.ctpop.i32(i32 %3192) #8
  %3194 = trunc i32 %3193 to i8
  %3195 = and i8 %3194, 1
  %3196 = xor i8 %3195, 1
  store i8 %3196, i8* %38, align 1, !tbaa !2446
  %3197 = xor i64 %3185, %3186
  %3198 = lshr i64 %3197, 4
  %3199 = trunc i64 %3198 to i8
  %3200 = and i8 %3199, 1
  store i8 %3200, i8* %44, align 1, !tbaa !2447
  %3201 = zext i1 %3188 to i8
  store i8 %3201, i8* %47, align 1, !tbaa !2448
  %3202 = lshr i64 %3186, 63
  %3203 = trunc i64 %3202 to i8
  store i8 %3203, i8* %50, align 1, !tbaa !2449
  %3204 = lshr i64 %3185, 63
  %3205 = xor i64 %3202, %3204
  %3206 = add nuw nsw i64 %3205, %3202
  %3207 = icmp eq i64 %3206, 2
  %3208 = zext i1 %3207 to i8
  store i8 %3208, i8* %56, align 1, !tbaa !2450
  %3209 = add i64 %3182, 18
  store i64 %3209, i64* %PC, align 8
  store i64 %3186, i64* %3184, align 8
  %3210 = load i64, i64* %RBP, align 8
  %3211 = add i64 %3210, -10680
  %3212 = load i64, i64* %PC, align 8
  %3213 = add i64 %3212, 7
  store i64 %3213, i64* %PC, align 8
  %3214 = inttoptr i64 %3211 to i64*
  %3215 = load i64, i64* %3214, align 8
  store i64 %3215, i64* %RCX, align 8, !tbaa !2428
  %3216 = add i64 %3210, -40
  %3217 = add i64 %3212, 11
  store i64 %3217, i64* %PC, align 8
  %3218 = inttoptr i64 %3216 to i64*
  %3219 = load i64, i64* %3218, align 8
  %3220 = sub i64 %3215, %3219
  %3221 = icmp ult i64 %3215, %3219
  %3222 = zext i1 %3221 to i8
  store i8 %3222, i8* %31, align 1, !tbaa !2432
  %3223 = trunc i64 %3220 to i32
  %3224 = and i32 %3223, 255
  %3225 = tail call i32 @llvm.ctpop.i32(i32 %3224) #8
  %3226 = trunc i32 %3225 to i8
  %3227 = and i8 %3226, 1
  %3228 = xor i8 %3227, 1
  store i8 %3228, i8* %38, align 1, !tbaa !2446
  %3229 = xor i64 %3219, %3215
  %3230 = xor i64 %3229, %3220
  %3231 = lshr i64 %3230, 4
  %3232 = trunc i64 %3231 to i8
  %3233 = and i8 %3232, 1
  store i8 %3233, i8* %44, align 1, !tbaa !2447
  %3234 = icmp eq i64 %3220, 0
  %3235 = zext i1 %3234 to i8
  store i8 %3235, i8* %47, align 1, !tbaa !2448
  %3236 = lshr i64 %3220, 63
  %3237 = trunc i64 %3236 to i8
  store i8 %3237, i8* %50, align 1, !tbaa !2449
  %3238 = lshr i64 %3215, 63
  %3239 = lshr i64 %3219, 63
  %3240 = xor i64 %3239, %3238
  %3241 = xor i64 %3236, %3238
  %3242 = add nuw nsw i64 %3241, %3240
  %3243 = icmp eq i64 %3242, 2
  %3244 = zext i1 %3243 to i8
  store i8 %3244, i8* %56, align 1, !tbaa !2450
  %.v62 = select i1 %3234, i64 17, i64 58
  %3245 = add i64 %3212, %.v62
  store i64 %3245, i64* %PC, align 8, !tbaa !2428
  br i1 %3234, label %block_400e9f, label %block_400ec8

block_400e0f:                                     ; preds = %block_400e01
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %3246 = add i64 %3385, -112
  %3247 = add i64 %3419, 9
  store i64 %3247, i64* %PC, align 8
  %3248 = inttoptr i64 %3246 to i64*
  %3249 = load i64, i64* %3248, align 8
  store i64 %3249, i64* %RCX, align 8, !tbaa !2428
  %3250 = add i64 %3419, 12
  store i64 %3250, i64* %PC, align 8
  %3251 = inttoptr i64 %3249 to i8*
  %3252 = load i8, i8* %3251, align 1
  %3253 = zext i8 %3252 to i64
  store i64 %3253, i64* %RDX, align 8, !tbaa !2428
  store i64 %3253, i64* %RCX, align 8, !tbaa !2428
  %3254 = add i64 %3385, -10624
  %3255 = add i64 %3254, %3253
  %3256 = add i64 %3419, 22
  store i64 %3256, i64* %PC, align 8
  %3257 = inttoptr i64 %3255 to i8*
  %3258 = load i8, i8* %3257, align 1
  %3259 = zext i8 %3258 to i32
  %3260 = add nsw i32 %3259, -1
  %3261 = zext i32 %3260 to i64
  store i64 %3261, i64* %RDX, align 8, !tbaa !2428
  %3262 = icmp eq i8 %3258, 0
  %3263 = zext i1 %3262 to i8
  store i8 %3263, i8* %31, align 1, !tbaa !2432
  %3264 = and i32 %3260, 255
  %3265 = tail call i32 @llvm.ctpop.i32(i32 %3264) #8
  %3266 = trunc i32 %3265 to i8
  %3267 = and i8 %3266, 1
  %3268 = xor i8 %3267, 1
  store i8 %3268, i8* %38, align 1, !tbaa !2446
  %3269 = xor i32 %3259, %3260
  %3270 = lshr i32 %3269, 4
  %3271 = trunc i32 %3270 to i8
  %3272 = and i8 %3271, 1
  store i8 %3272, i8* %44, align 1, !tbaa !2447
  %3273 = icmp eq i32 %3260, 0
  %3274 = zext i1 %3273 to i8
  store i8 %3274, i8* %47, align 1, !tbaa !2448
  %3275 = lshr i32 %3260, 31
  %3276 = trunc i32 %3275 to i8
  store i8 %3276, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  store i64 %3261, i64* %RCX, align 8, !tbaa !2428
  %3277 = add i64 %3419, 29
  store i64 %3277, i64* %PC, align 8
  %3278 = trunc i32 %3260 to i5
  switch i5 %3278, label %3279 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %3288
  ]

; <label>:3279:                                   ; preds = %block_400e0f
  %3280 = and i32 %3260, 31
  %3281 = zext i32 %3280 to i64
  %3282 = add nuw nsw i64 %3281, 4294967295
  %3283 = and i64 %3282, 4294967295
  %3284 = shl i64 1, %3283
  %3285 = trunc i64 %3284 to i32
  %3286 = icmp slt i32 %3285, 0
  %3287 = shl i32 %3285, 1
  br label %3288

; <label>:3288:                                   ; preds = %block_400e0f, %3279
  %3289 = phi i1 [ %3286, %3279 ], [ false, %block_400e0f ]
  %3290 = phi i32 [ %3287, %3279 ], [ 2, %block_400e0f ]
  %3291 = zext i32 %3290 to i64
  store i64 %3291, i64* %RAX, align 8, !tbaa !2428
  %3292 = zext i1 %3289 to i8
  store i8 %3292, i8* %31, align 1, !tbaa !2453
  %3293 = and i32 %3290, 254
  %3294 = tail call i32 @llvm.ctpop.i32(i32 %3293) #8
  %3295 = trunc i32 %3294 to i8
  %3296 = and i8 %3295, 1
  %3297 = xor i8 %3296, 1
  store i8 %3297, i8* %38, align 1, !tbaa !2453
  store i8 0, i8* %44, align 1, !tbaa !2453
  %3298 = icmp eq i32 %3290, 0
  %3299 = zext i1 %3298 to i8
  store i8 %3299, i8* %47, align 1, !tbaa !2453
  %3300 = lshr i32 %3290, 31
  %3301 = trunc i32 %3300 to i8
  store i8 %3301, i8* %50, align 1, !tbaa !2453
  store i8 0, i8* %56, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %3288, %block_400e0f
  %3302 = phi i32 [ %3290, %3288 ], [ 1, %block_400e0f ]
  %3303 = sext i32 %3302 to i64
  store i64 %3303, i64* %RSI, align 8, !tbaa !2428
  %3304 = add i64 %3385, -72
  %3305 = add i64 %3419, 36
  store i64 %3305, i64* %PC, align 8
  %3306 = inttoptr i64 %3304 to i64*
  store i64 %3303, i64* %3306, align 8
  %3307 = load i64, i64* %RBP, align 8
  %3308 = add i64 %3307, -48
  %3309 = load i64, i64* %PC, align 8
  %3310 = add i64 %3309, 8
  store i64 %3310, i64* %PC, align 8
  %3311 = inttoptr i64 %3308 to i64*
  store i64 0, i64* %3311, align 8
  %.pre25 = load i64, i64* %PC, align 8
  br label %block_400e3b

block_40113e:                                     ; preds = %block_401118, %block_401183
  %3312 = phi i64 [ %.pre36, %block_401118 ], [ %513, %block_401183 ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %31, align 1, !tbaa !2432
  store i8 1, i8* %38, align 1, !tbaa !2446
  store i8 1, i8* %47, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  store i8 0, i8* %44, align 1, !tbaa !2447
  store i8 0, i8* %CL, align 1, !tbaa !2453
  %3313 = load i64, i64* %RBP, align 8
  %3314 = add i64 %3313, -56
  %3315 = add i64 %3312, 9
  store i64 %3315, i64* %PC, align 8
  %3316 = inttoptr i64 %3314 to i64*
  %3317 = load i64, i64* %3316, align 8
  store i8 0, i8* %31, align 1, !tbaa !2432
  %3318 = trunc i64 %3317 to i32
  %3319 = and i32 %3318, 255
  %3320 = tail call i32 @llvm.ctpop.i32(i32 %3319) #8
  %3321 = trunc i32 %3320 to i8
  %3322 = and i8 %3321, 1
  %3323 = xor i8 %3322, 1
  store i8 %3323, i8* %38, align 1, !tbaa !2446
  store i8 0, i8* %44, align 1, !tbaa !2447
  %3324 = icmp eq i64 %3317, 0
  %3325 = zext i1 %3324 to i8
  store i8 %3325, i8* %47, align 1, !tbaa !2448
  %3326 = lshr i64 %3317, 63
  %3327 = trunc i64 %3326 to i8
  store i8 %3327, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  %3328 = add i64 %3313, -13097
  %3329 = add i64 %3312, 15
  store i64 %3329, i64* %PC, align 8
  %3330 = inttoptr i64 %3328 to i8*
  store i8 0, i8* %3330, align 1
  %3331 = load i64, i64* %PC, align 8
  %3332 = load i8, i8* %47, align 1, !tbaa !2448
  %3333 = icmp ne i8 %3332, 0
  %.v70 = select i1 %3333, i64 35, i64 6
  %3334 = add i64 %3331, %.v70
  store i64 %3334, i64* %PC, align 8, !tbaa !2428
  %3335 = icmp eq i8 %3332, 1
  br i1 %3335, label %block_401170, label %block_401153

block_400c07:                                     ; preds = %block_400bf6
  %3336 = add i64 %357, 7
  store i64 %3336, i64* %PC, align 8
  %3337 = load i64, i64* %333, align 8
  store i64 %3337, i64* %RAX, align 8, !tbaa !2428
  %3338 = shl i64 %3337, 3
  %3339 = add i64 %330, -4224
  %3340 = add i64 %3339, %3338
  %3341 = add i64 %357, 16
  store i64 %3341, i64* %PC, align 8
  %3342 = inttoptr i64 %3340 to i64*
  %3343 = load i64, i64* %3342, align 8
  store i8 0, i8* %31, align 1, !tbaa !2432
  %3344 = trunc i64 %3343 to i32
  %3345 = and i32 %3344, 255
  %3346 = tail call i32 @llvm.ctpop.i32(i32 %3345) #8
  %3347 = trunc i32 %3346 to i8
  %3348 = and i8 %3347, 1
  %3349 = xor i8 %3348, 1
  store i8 %3349, i8* %38, align 1, !tbaa !2446
  store i8 0, i8* %44, align 1, !tbaa !2447
  %3350 = icmp eq i64 %3343, 0
  %3351 = zext i1 %3350 to i8
  store i8 %3351, i8* %47, align 1, !tbaa !2448
  %3352 = lshr i64 %3343, 63
  %3353 = trunc i64 %3352 to i8
  store i8 %3353, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  %.v52 = select i1 %3350, i64 22, i64 61
  %3354 = add i64 %357, %.v52
  store i64 %3354, i64* %PC, align 8, !tbaa !2428
  br i1 %3350, label %block_400c1d, label %block_400c44

block_400c44:                                     ; preds = %block_400c07
  %3355 = add i64 %330, -48
  %3356 = add i64 %3354, 8
  store i64 %3356, i64* %PC, align 8
  %3357 = inttoptr i64 %3355 to i64*
  store i64 0, i64* %3357, align 8
  %3358 = load i64, i64* %RBP, align 8
  %3359 = add i64 %3358, -56
  %3360 = load i64, i64* %PC, align 8
  %3361 = add i64 %3360, 8
  store i64 %3361, i64* %PC, align 8
  %3362 = inttoptr i64 %3359 to i64*
  store i64 1, i64* %3362, align 8
  %3363 = load i64, i64* %RBP, align 8
  %3364 = add i64 %3363, -10648
  %3365 = load i64, i64* %PC, align 8
  %3366 = add i64 %3365, 11
  store i64 %3366, i64* %PC, align 8
  %3367 = inttoptr i64 %3364 to i64*
  store i64 0, i64* %3367, align 8
  %3368 = load i64, i64* %RBP, align 8
  %3369 = add i64 %3368, -10640
  %3370 = load i64, i64* %PC, align 8
  %3371 = add i64 %3370, 7
  store i64 %3371, i64* %PC, align 8
  %3372 = inttoptr i64 %3369 to i64*
  %3373 = load i64, i64* %3372, align 8
  store i64 %3373, i64* %RAX, align 8, !tbaa !2428
  %3374 = shl i64 %3373, 2
  %3375 = add i64 %3368, -8320
  %3376 = add i64 %3375, %3374
  %3377 = add i64 %3370, 14
  store i64 %3377, i64* %PC, align 8
  %3378 = inttoptr i64 %3376 to i32*
  %3379 = load i32, i32* %3378, align 4
  %3380 = zext i32 %3379 to i64
  store i64 %3380, i64* %RCX, align 8, !tbaa !2428
  %3381 = add i64 %3368, -10668
  %3382 = add i64 %3370, 20
  store i64 %3382, i64* %PC, align 8
  %3383 = inttoptr i64 %3381 to i32*
  store i32 %3379, i32* %3383, align 4
  %.pre18 = load i64, i64* %PC, align 8
  br label %block_400c73

block_400e01:                                     ; preds = %block_400df9, %block_400f4d
  %3384 = phi i64 [ %.pre24, %block_400df9 ], [ %1560, %block_400f4d ]
  %3385 = load i64, i64* %RBP, align 8
  %3386 = add i64 %3385, -56
  %3387 = add i64 %3384, 4
  store i64 %3387, i64* %PC, align 8
  %3388 = inttoptr i64 %3386 to i64*
  %3389 = load i64, i64* %3388, align 8
  store i64 %3389, i64* %RAX, align 8, !tbaa !2428
  %3390 = add i64 %3385, -40
  %3391 = add i64 %3384, 8
  store i64 %3391, i64* %PC, align 8
  %3392 = inttoptr i64 %3390 to i64*
  %3393 = load i64, i64* %3392, align 8
  %3394 = sub i64 %3389, %3393
  %3395 = icmp ult i64 %3389, %3393
  %3396 = zext i1 %3395 to i8
  store i8 %3396, i8* %31, align 1, !tbaa !2432
  %3397 = trunc i64 %3394 to i32
  %3398 = and i32 %3397, 255
  %3399 = tail call i32 @llvm.ctpop.i32(i32 %3398) #8
  %3400 = trunc i32 %3399 to i8
  %3401 = and i8 %3400, 1
  %3402 = xor i8 %3401, 1
  store i8 %3402, i8* %38, align 1, !tbaa !2446
  %3403 = xor i64 %3393, %3389
  %3404 = xor i64 %3403, %3394
  %3405 = lshr i64 %3404, 4
  %3406 = trunc i64 %3405 to i8
  %3407 = and i8 %3406, 1
  store i8 %3407, i8* %44, align 1, !tbaa !2447
  %3408 = icmp eq i64 %3394, 0
  %3409 = zext i1 %3408 to i8
  store i8 %3409, i8* %47, align 1, !tbaa !2448
  %3410 = lshr i64 %3394, 63
  %3411 = trunc i64 %3410 to i8
  store i8 %3411, i8* %50, align 1, !tbaa !2449
  %3412 = lshr i64 %3389, 63
  %3413 = lshr i64 %3393, 63
  %3414 = xor i64 %3413, %3412
  %3415 = xor i64 %3410, %3412
  %3416 = add nuw nsw i64 %3415, %3414
  %3417 = icmp eq i64 %3416, 2
  %3418 = zext i1 %3417 to i8
  store i8 %3418, i8* %56, align 1, !tbaa !2450
  %.v59 = select i1 %3395, i64 14, i64 361
  %3419 = add i64 %3384, %.v59
  store i64 %3419, i64* %PC, align 8, !tbaa !2428
  br i1 %3395, label %block_400e0f, label %block_400f6a
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
  %63 = add i64 %38, -4139
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_400590__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
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
  br i1 %76, label %block_4015f6, label %block_4015d6

block_4015f6:                                     ; preds = %block_4015e0, %block_4015a0
  %81 = phi i64 [ %80, %block_4015a0 ], [ %179, %block_4015e0 ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_4015a0 ], [ %149, %block_4015e0 ]
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

block_4015d6:                                     ; preds = %block_4015a0
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_4015e0

block_4015e0:                                     ; preds = %block_4015e0, %block_4015d6
  %134 = phi i64 [ 0, %block_4015d6 ], [ %152, %block_4015e0 ]
  %135 = phi i64 [ %133, %block_4015d6 ], [ %179, %block_4015e0 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_4015d6 ], [ %149, %block_4015e0 ]
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
  br i1 %169, label %block_4015f6, label %block_4015e0
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
  %.v = select i1 %12, i64 9, i64 32
  %18 = add i64 %.v, %1
  store i64 %18, i64* %PC, align 8, !tbaa !2428
  br i1 %12, label %block_4006e9, label %block_400700

block_400700:                                     ; preds = %block_4006e0
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

block_4006e9:                                     ; preds = %block_4006e0
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
  %36 = tail call %struct.Memory* @sub_400670_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
  %37 = load i64, i64* %PC, align 8
  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 40) to i8*), align 8
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
  store i64 %12, i64* %PC, align 8, !tbaa !2428
  %13 = tail call %struct.Memory* @sub_4006a0_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
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
