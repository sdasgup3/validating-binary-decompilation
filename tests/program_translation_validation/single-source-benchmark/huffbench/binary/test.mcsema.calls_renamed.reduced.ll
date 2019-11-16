; ModuleID = '/tmp/tmpamy27c0y-target.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_401660__rodata_type = type <{ [4 x i8], [33 x i8], [26 x i8], [33 x i8], [23 x i8], [7 x i8], [35 x i8] }>
%seg_601de0__init_array_type = type <{ i64, i64 }>
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
@seg_401660__rodata = internal constant %seg_401660__rodata_type <{ [4 x i8] c"\01\00\02\00", [33 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ012345\00", [26 x i8] c"error: bit code overflow\0A\00", [33 x i8] c"error: file has only one value!\0A\00", [23 x i8] c"error: no compression\0A\00", [7 x i8] c"-ga\00%f\00", [35 x i8] c"\0Ahuffbench (Std. C) run time: %f\0A\0A\00" }>
@seg_601de0__init_array = internal global %seg_601de0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400750_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400720___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602050__data = internal global %seg_602050__data_type <{ [16 x i8] zeroinitializer, [8 x i8] c"-\05\00\00\00\00\00\00" }>
@seg_602080__bss = internal global %seg_602080__bss_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400750_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400720___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401650___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4015e0___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @compdecomp_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @generate_test_data_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @sub_400760_generate_test_data_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4008b0_compdecomp_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4006b0_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4005d8__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4013b0_heap_adjust_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007f0_random4_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fflush(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64) #5

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400670__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400670:
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
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #12
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
  store i64 ptrtoint (void ()* @callback_sub_401650___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_4015e0___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %35 = add i64 %34, 27
  %36 = add i64 %15, -24
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37, align 8
  store i64 %36, i64* %RSP, align 8, !tbaa !2428
  %38 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %38, i64* %PC, align 8, !tbaa !2428
  %39 = tail call fastcc %struct.Memory* @ext_602100___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC, align 8
  %42 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %41, %struct.Memory* %39)
  ret %struct.Memory* %42
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006b0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4006d8:
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
  store i64 6299752, i64* %RAX, align 8, !tbaa !2428
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1, !tbaa !2432
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %10, align 1, !tbaa !2446
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1, !tbaa !2450
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %12, align 1, !tbaa !2447
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %13, align 1, !tbaa !2448
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %14, align 1, !tbaa !2449
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

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4006a0__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_4006a0:
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
define %struct.Memory* @sub_4015e0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4015e0:
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
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #12
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
  %63 = add i64 %38, -4131
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_4005d8__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2432
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #12
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
  br i1 %76, label %block_401636, label %block_401616

block_401636.loopexit:                            ; preds = %block_401620
  br label %block_401636

block_401636:                                     ; preds = %block_401636.loopexit, %block_4015e0
  %81 = phi i64 [ %80, %block_4015e0 ], [ %179, %block_401636.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_4015e0 ], [ %149, %block_401636.loopexit ]
  %82 = load i64, i64* %RSP, align 8
  %83 = add i64 %82, 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2428
  %84 = icmp ugt i64 %82, -9
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %43, align 1, !tbaa !2432
  %86 = trunc i64 %83 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #12
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

block_401616:                                     ; preds = %block_4015e0
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2447
  store i8 0, i8* %47, align 1, !tbaa !2448
  store i8 0, i8* %48, align 1, !tbaa !2449
  store i8 0, i8* %45, align 1, !tbaa !2450
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401620

block_401620:                                     ; preds = %block_401620, %block_401616
  %134 = phi i64 [ 0, %block_401616 ], [ %152, %block_401620 ]
  %135 = phi i64 [ %133, %block_401616 ], [ %179, %block_401620 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401616 ], [ %149, %block_401620 ]
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
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #12
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
  br i1 %169, label %block_401636.loopexit, label %block_401620
}

; Function Attrs: noinline
define %struct.Memory* @sub_4014b0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4014b0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
%var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
%AL = bitcast %union.anon* %var_2_3 to i8*
%EAX = bitcast %union.anon* %var_2_3 to i32*
%var_2_4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
%ECX = bitcast %union.anon* %var_2_4 to i32*
%var_2_5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
; Matched:  %EDI.i = bitcast %union.anon* %var_2_42 to i32*
; %EDI = bitcast %union.anon* %var_2_5 to i32*
%RAX = getelementptr inbounds %union.anon, %union.anon* %var_2_3, i64 0, i32 0
; Matched:  %RCX.i = getelementptr inbounds %union.anon, %union.anon* %var_2_367, i64 0, i32 0
; %RCX = getelementptr inbounds %union.anon, %union.anon* %var_2_4, i64 0, i32 0
; Matched:  %RSI.i107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
; %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
%RDI = getelementptr inbounds %union.anon, %union.anon* %var_2_5, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_286:  %var_2_286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
; %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
; Matched:%var_2_4:  %var_2_4 = load i64, i64* %RBP.i, align 8
; %var_2_7 = load i64, i64* %RBP, align 8
; Matched:%var_2_5:  %var_2_5 = add i64 %1, 1
; %var_2_8 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_5, i64* %var_2_3, align 8
; store i64 %var_2_8, i64* %PC, align 8
; Matched:%var_2_7:  %var_2_7 = load i64, i64* %var_2_6, align 8
; %var_2_9 = load i64, i64* %RSP, align 8
; Matched:%var_2_8:  %var_2_8 = add i64 %var_2_7, -8
; %var_2_10 = add i64 %var_2_9, -8
; Matched:%var_2_9:  %var_2_9 = inttoptr i64 %var_2_8 to i64*
; %var_2_11 = inttoptr i64 %var_2_10 to i64*
; Matched:\<badref\>:  store i64 %var_2_4, i64* %var_2_9, align 8
; store i64 %var_2_7, i64* %var_2_11, align 8
; Matched:%var_2_10:  %var_2_10 = load i64, i64* %var_2_3, align 8
; %var_2_12 = load i64, i64* %PC, align 8
; Matched:\<badref\>:  store i64 %var_2_8, i64* %RBP.i, align 8
; store i64 %var_2_10, i64* %RBP, align 8
; Matched:%var_2_11:  %var_2_11 = add i64 %var_2_7, -72
; %var_2_13 = add i64 %var_2_9, -72
; Matched:\<badref\>:  store i64 %var_2_11, i64* %var_2_6, align 8
; store i64 %var_2_13, i64* %RSP, align 8
; Matched:%var_2_12:  %var_2_12 = icmp ult i64 %var_2_8, 64
; %var_2_14 = icmp ult i64 %var_2_10, 64
; Matched:%var_2_13:  %var_2_13 = zext i1 %var_2_12 to i8
; %var_2_15 = zext i1 %var_2_14 to i8
%var_2_16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_13, i8* %var_2_14, align 1
; store i8 %var_2_15, i8* %var_2_16, align 1
; Matched:%var_2_15:  %var_2_15 = trunc i64 %var_2_11 to i32
; %var_2_17 = trunc i64 %var_2_13 to i32
; Matched:%var_2_16:  %var_2_16 = and i32 %var_2_15, 255
; %var_2_18 = and i32 %var_2_17, 255
; Matched:%var_2_17:  %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; %var_2_19 = tail call i32 @llvm.ctpop.i32(i32 %var_2_18) #12
; Matched:%var_2_18:  %var_2_18 = trunc i32 %var_2_17 to i8
; %var_2_20 = trunc i32 %var_2_19 to i8
; Matched:%var_2_19:  %var_2_19 = and i8 %var_2_18, 1
; %var_2_21 = and i8 %var_2_20, 1
; Matched:%var_2_20:  %var_2_20 = xor i8 %var_2_19, 1
; %var_2_22 = xor i8 %var_2_21, 1
; Matched:%var_2_21:  %var_2_21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; %var_2_23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_20, i8* %var_2_21, align 1
; store i8 %var_2_22, i8* %var_2_23, align 1
; Matched:%var_2_22:  %var_2_22 = xor i64 %var_2_8, %var_2_11
; %var_2_24 = xor i64 %var_2_10, %var_2_13
; Matched:%var_2_23:  %var_2_23 = lshr i64 %var_2_22, 4
; %var_2_25 = lshr i64 %var_2_24, 4
; Matched:%var_2_24:  %var_2_24 = trunc i64 %var_2_23 to i8
; %var_2_26 = trunc i64 %var_2_25 to i8
; Matched:%var_2_25:  %var_2_25 = and i8 %var_2_24, 1
; %var_2_27 = and i8 %var_2_26, 1
%var_2_28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_25, i8* %var_2_26, align 1
; store i8 %var_2_27, i8* %var_2_28, align 1
; Matched:%var_2_27:  %var_2_27 = icmp eq i64 %var_2_11, 0
; %var_2_29 = icmp eq i64 %var_2_13, 0
; Matched:%var_2_28:  %var_2_28 = zext i1 %var_2_27 to i8
; %var_2_30 = zext i1 %var_2_29 to i8
; Matched:%var_2_29:  %var_2_29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; %var_2_31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_28, i8* %var_2_29, align 1
; store i8 %var_2_30, i8* %var_2_31, align 1
; Matched:%var_2_30:  %var_2_30 = lshr i64 %var_2_11, 63
; %var_2_32 = lshr i64 %var_2_13, 63
; Matched:%var_2_31:  %var_2_31 = trunc i64 %var_2_30 to i8
; %var_2_33 = trunc i64 %var_2_32 to i8
%var_2_34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_31, i8* %var_2_32, align 1
; store i8 %var_2_33, i8* %var_2_34, align 1
; Matched:%var_2_33:  %var_2_33 = lshr i64 %var_2_8, 63
; %var_2_35 = lshr i64 %var_2_10, 63
; Matched:%var_2_34:  %var_2_34 = xor i64 %var_2_30, %var_2_33
; %var_2_36 = xor i64 %var_2_32, %var_2_35
; Matched:%var_2_35:  %var_2_35 = add nuw nsw i64 %var_2_34, %var_2_33
; %var_2_37 = add nuw nsw i64 %var_2_36, %var_2_35
; Matched:%var_2_36:  %var_2_36 = icmp eq i64 %var_2_35, 2
; %var_2_38 = icmp eq i64 %var_2_37, 2
; Matched:%var_2_37:  %var_2_37 = zext i1 %var_2_36 to i8
; %var_2_39 = zext i1 %var_2_38 to i8
%var_2_40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_37, i8* %var_2_38, align 1
; store i8 %var_2_39, i8* %var_2_40, align 1
; Matched:%var_2_39:  %var_2_39 = add i64 %var_2_7, -12
; %var_2_41 = add i64 %var_2_9, -12
; Matched:%var_2_40:  %var_2_40 = add i64 %var_2_10, 14
; %var_2_42 = add i64 %var_2_12, 14
; Matched:\<badref\>:  store i64 %var_2_40, i64* %var_2_3, align 8
; store i64 %var_2_42, i64* %PC, align 8
; Matched:%var_2_41:  %var_2_41 = inttoptr i64 %var_2_39 to i32*
; %var_2_43 = inttoptr i64 %var_2_41 to i32*
; Matched:\<badref\>:  store i32 0, i32* %var_2_41, align 4
; store i32 0, i32* %var_2_43, align 4
; Matched:%var_2_43:  %var_2_43 = load i64, i64* %RBP.i, align 8
; %var_2_44 = load i64, i64* %RBP, align 8
; Matched:%var_2_44:  %var_2_44 = add i64 %var_2_43, -8
; %var_2_45 = add i64 %var_2_44, -8
; Matched:%var_2_45:  %var_2_45 = load i32, i32* %EDI.i, align 4
; %var_2_46 = load i32, i32* %EDI, align 4
; Matched:%var_2_46:  %var_2_46 = load i64, i64* %var_2_3, align 8
; %var_2_47 = load i64, i64* %PC, align 8
; Matched:%var_2_337:  %var_2_337 = add i64 %var_2_336, 3
; %var_2_48 = add i64 %var_2_47, 3
; Matched:\<badref\>:  store i64 %var_2_47, i64* %var_2_3, align 8
; store i64 %var_2_48, i64* %PC, align 8
; Matched:%var_2_48:  %var_2_48 = inttoptr i64 %var_2_44 to i32*
; %var_2_49 = inttoptr i64 %var_2_45 to i32*
; Matched:\<badref\>:  store i32 %var_2_45, i32* %var_2_48, align 4
; store i32 %var_2_46, i32* %var_2_49, align 4
; Matched:%var_2_49:  %var_2_49 = load i64, i64* %RBP.i, align 8
; %var_2_50 = load i64, i64* %RBP, align 8
; Matched:%var_2_50:  %var_2_50 = add i64 %var_2_49, -16
; %var_2_51 = add i64 %var_2_50, -16
; Matched:%var_2_51:  %var_2_51 = load i64, i64* %RSI.i107, align 8
; %var_2_52 = load i64, i64* %RSI, align 8
; Matched:%var_2_52:  %var_2_52 = load i64, i64* %var_2_3, align 8
; %var_2_53 = load i64, i64* %PC, align 8
; Matched:%var_2_53:  %var_2_53 = add i64 %var_2_52, 4
; %var_2_54 = add i64 %var_2_53, 4
; Matched:\<badref\>:  store i64 %var_2_53, i64* %var_2_3, align 8
; store i64 %var_2_54, i64* %PC, align 8
; Matched:%var_2_54:  %var_2_54 = inttoptr i64 %var_2_50 to i64*
; %var_2_55 = inttoptr i64 %var_2_51 to i64*
; Matched:\<badref\>:  store i64 %var_2_51, i64* %var_2_54, align 8
; store i64 %var_2_52, i64* %var_2_55, align 8
%var_2_56 = load i64, i64* %RBP, align 8
; Matched:%var_2_160:  %var_2_160 = add i64 %var_2_159, -21
; %var_2_57 = add i64 %var_2_56, -21
; Matched:%var_2_308:  %var_2_308 = load i64, i64* %var_2_3, align 8
; %var_2_58 = load i64, i64* %PC, align 8
; Matched:%var_2_309:  %var_2_309 = add i64 %var_2_308, 4
; %var_2_59 = add i64 %var_2_58, 4
; Matched:\<badref\>:  store i64 %var_2_309, i64* %var_2_3, align 8
; store i64 %var_2_59, i64* %PC, align 8
; Matched:%var_2_162:  %var_2_162 = inttoptr i64 %var_2_160 to i8*
; %var_2_60 = inttoptr i64 %var_2_57 to i8*
; Matched:\<badref\>:  store i8 0, i8* %var_2_59, align 1
; store i8 0, i8* %var_2_60, align 1
%var_2_61 = load i64, i64* %RBP, align 8
%var_2_62 = add i64 %var_2_61, -8
%var_2_63 = load i64, i64* %PC, align 8
; Matched:%var_2_58:  %var_2_58 = add i64 %var_2_57, 4
; %var_2_64 = add i64 %var_2_63, 4
; Matched:\<badref\>:  store i64 %var_2_58, i64* %var_2_3, align 8
; store i64 %var_2_64, i64* %PC, align 8
%var_2_65 = inttoptr i64 %var_2_62 to i32*
%var_2_66 = load i32, i32* %var_2_65, align 4
%var_2_67 = add i32 %var_2_66, -1
%var_2_68 = icmp eq i32 %var_2_66, 0
%var_2_69 = zext i1 %var_2_68 to i8
store i8 %var_2_69, i8* %var_2_16, align 1
; Matched:%var_2_69:  %var_2_69 = and i32 %var_2_66, 255
; %var_2_70 = and i32 %var_2_67, 255
; Matched:%var_2_70:  %var_2_70 = tail call i32 @llvm.ctpop.i32(i32 %var_2_69)
; %var_2_71 = tail call i32 @llvm.ctpop.i32(i32 %var_2_70) #12
; Matched:%var_2_71:  %var_2_71 = trunc i32 %var_2_70 to i8
; %var_2_72 = trunc i32 %var_2_71 to i8
; Matched:%var_2_72:  %var_2_72 = and i8 %var_2_71, 1
; %var_2_73 = and i8 %var_2_72, 1
; Matched:%var_2_73:  %var_2_73 = xor i8 %var_2_72, 1
; %var_2_74 = xor i8 %var_2_73, 1
; Matched:\<badref\>:  store i8 %var_2_73, i8* %var_2_21, align 1
; store i8 %var_2_74, i8* %var_2_23, align 1
; Matched:%var_2_74:  %var_2_74 = xor i32 %var_2_66, %var_2_65
; %var_2_75 = xor i32 %var_2_67, %var_2_66
; Matched:%var_2_75:  %var_2_75 = lshr i32 %var_2_74, 4
; %var_2_76 = lshr i32 %var_2_75, 4
; Matched:%var_2_76:  %var_2_76 = trunc i32 %var_2_75 to i8
; %var_2_77 = trunc i32 %var_2_76 to i8
; Matched:%var_2_77:  %var_2_77 = and i8 %var_2_76, 1
; %var_2_78 = and i8 %var_2_77, 1
; Matched:\<badref\>:  store i8 %var_2_77, i8* %var_2_26, align 1
; store i8 %var_2_78, i8* %var_2_28, align 1
%var_2_79 = icmp eq i32 %var_2_67, 0
; Matched:%var_2_79:  %var_2_79 = zext i1 %var_2_78 to i8
; %var_2_80 = zext i1 %var_2_79 to i8
; Matched:\<badref\>:  store i8 %var_2_79, i8* %var_2_29, align 1
; store i8 %var_2_80, i8* %var_2_31, align 1
%var_2_81 = lshr i32 %var_2_67, 31
%var_2_82 = trunc i32 %var_2_81 to i8
; Matched:\<badref\>:  store i8 %var_2_81, i8* %var_2_32, align 1
; store i8 %var_2_82, i8* %var_2_34, align 1
%var_2_83 = lshr i32 %var_2_66, 31
%var_2_84 = xor i32 %var_2_81, %var_2_83
%var_2_85 = add nuw nsw i32 %var_2_84, %var_2_83
%var_2_86 = icmp eq i32 %var_2_85, 2
; Matched:%var_2_86:  %var_2_86 = zext i1 %var_2_85 to i8
; %var_2_87 = zext i1 %var_2_86 to i8
; Matched:\<badref\>:  store i8 %var_2_86, i8* %var_2_38, align 1
; store i8 %var_2_87, i8* %var_2_40, align 1
%var_2_88 = icmp ne i8 %var_2_82, 0
%var_2_89 = xor i1 %var_2_88, %var_2_86
%var_2_90 = or i1 %var_2_79, %var_2_89
%.v = select i1 %var_2_90, i64 91, i64 10
%var_2_91 = add i64 %var_2_63, %.v
; Matched:\<badref\>:  store i64 %var_2_90, i64* %var_2_3, align 8
; store i64 %var_2_91, i64* %PC, align 8
br i1 %var_2_90, label %block_401525, label %block_4014d4

block_4015a5:                                     ; preds = %block_401564
; Matched:\<badref\>:  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4016d7_type* @G__0x4016d7 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i107, align 8
; store i64 add (i64 ptrtoint (%seg_401660__rodata_type* @seg_401660__rodata to i64), i64 126), i64* %RSI, align 8
; Matched:%var_2_140:  %var_2_140 = load i64, i64* %var_2_139, align 8
; %var_2_92 = load i64, i64* @stdout, align 128
; Matched:\<badref\>:  store i64 %var_2_140, i64* %RDI.i117, align 8
; store i64 %var_2_92, i64* %RDI, align 8
; Matched:%var_2_342:  %var_2_342 = add i64 %var_2_306, -40
; %var_2_93 = add i64 %var_2_391, -40
; Matched:%var_2_343:  %var_2_343 = add i64 %var_2_319, 23
; %var_2_94 = add i64 %var_2_404, 23
; Matched:\<badref\>:  store i64 %var_2_343, i64* %var_2_3, align 8
; store i64 %var_2_94, i64* %PC, align 8
; Matched:%var_2_344:  %var_2_344 = inttoptr i64 %var_2_342 to i64*
; %var_2_95 = inttoptr i64 %var_2_93 to i64*
; Matched:%var_2_325:  %var_2_325 = load i64, i64* %var_2_324, align 8
; %var_2_96 = load i64, i64* %var_2_95, align 8
; Matched:\<badref\>:  store i64 %var_2_345, i64* %var_2_291, align 1
; store i64 %var_2_96, i64* %var_2_376, align 1
; Matched:%var_2_326:  %var_2_326 = bitcast i64* %var_2_287 to double*
; %var_2_97 = bitcast i64* %var_2_372 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_346, align 1
; store double 0.000000e+00, double* %var_2_97, align 1
  store i8 1, i8* %AL, align 1, !tbaa !2451
; Matched:%var_2_347:  %var_2_347 = add i64 %var_2_319, -3957
; %var_2_98 = add i64 %var_2_404, -3957
; Matched:%var_2_348:  %var_2_348 = add i64 %var_2_319, 30
; %var_2_99 = add i64 %var_2_404, 30
%var_2_100 = load i64, i64* %RSP, align 8
%var_2_101 = add i64 %var_2_100, -8
; Matched:%var_2_331:  %var_2_331 = inttoptr i64 %var_2_330 to i64*
; %var_2_102 = inttoptr i64 %var_2_101 to i64*
; Matched:\<badref\>:  store i64 %var_2_328, i64* %var_2_331, align 8
; store i64 %var_2_99, i64* %var_2_102, align 8
; Matched:\<badref\>:  store i64 %var_2_252, i64* %var_2_6, align 8
; store i64 %var_2_101, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_347, i64* %var_2_3, align 8
; store i64 %var_2_98, i64* %PC, align 8
%var_2_103 = tail call fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %var_2_390)
%var_2_104 = load i64, i64* %RBP, align 8
%var_2_105 = add i64 %var_2_104, -48
%var_2_106 = load i32, i32* %EAX, align 4
; Matched:%var_2_336:  %var_2_336 = load i64, i64* %var_2_3, align 8
; %var_2_107 = load i64, i64* %PC, align 8
; Matched:%var_2_257:  %var_2_257 = add i64 %var_2_256, 3
; %var_2_108 = add i64 %var_2_107, 3
; Matched:\<badref\>:  store i64 %var_2_337, i64* %var_2_3, align 8
; store i64 %var_2_108, i64* %PC, align 8
%var_2_109 = inttoptr i64 %var_2_105 to i32*
store i32 %var_2_106, i32* %var_2_109, align 4
; Matched:  %.pre12 = load i64, i64* %var_2_3, align 8
; %.pre12 = load i64, i64* %PC, align 8
  br label %block_4015c6

block_4014db:                                     ; preds = %block_40150d, %block_4014d4
%var_2_110 = phi i64 [ %.pre, %block_4014d4 ], [ %var_2_242, %block_40150d ]
%MEMORY.0 = phi %struct.Memory* [ %2, %block_4014d4 ], [ %var_2_287, %block_40150d ]
%var_2_111 = load i64, i64* %RBP, align 8
%var_2_112 = add i64 %var_2_111, -20
; Matched:%var_2_98:  %var_2_98 = add i64 %var_2_95, 3
; %var_2_113 = add i64 %var_2_110, 3
; Matched:\<badref\>:  store i64 %var_2_98, i64* %var_2_3, align 8
; store i64 %var_2_113, i64* %PC, align 8
%var_2_114 = inttoptr i64 %var_2_112 to i32*
%var_2_115 = load i32, i32* %var_2_114, align 4
; Matched:%var_2_101:  %var_2_101 = zext i32 %var_2_100 to i64
; %var_2_116 = zext i32 %var_2_115 to i64
; Matched:\<badref\>:  store i64 %var_2_101, i64* %RAX.i126, align 8
; store i64 %var_2_116, i64* %RAX, align 8
%var_2_117 = add i64 %var_2_111, -8
; Matched:%var_2_103:  %var_2_103 = add i64 %var_2_95, 6
; %var_2_118 = add i64 %var_2_110, 6
; Matched:\<badref\>:  store i64 %var_2_103, i64* %var_2_3, align 8
; store i64 %var_2_118, i64* %PC, align 8
%var_2_119 = inttoptr i64 %var_2_117 to i32*
%var_2_120 = load i32, i32* %var_2_119, align 4
%var_2_121 = sub i32 %var_2_115, %var_2_120
; Matched:%var_2_107:  %var_2_107 = icmp ult i32 %var_2_100, %var_2_105
; %var_2_122 = icmp ult i32 %var_2_115, %var_2_120
; Matched:%var_2_108:  %var_2_108 = zext i1 %var_2_107 to i8
; %var_2_123 = zext i1 %var_2_122 to i8
; Matched:\<badref\>:  store i8 %var_2_108, i8* %var_2_14, align 1
; store i8 %var_2_123, i8* %var_2_16, align 1
; Matched:%var_2_109:  %var_2_109 = and i32 %var_2_106, 255
; %var_2_124 = and i32 %var_2_121, 255
; Matched:%var_2_110:  %var_2_110 = tail call i32 @llvm.ctpop.i32(i32 %var_2_109)
; %var_2_125 = tail call i32 @llvm.ctpop.i32(i32 %var_2_124) #12
; Matched:%var_2_111:  %var_2_111 = trunc i32 %var_2_110 to i8
; %var_2_126 = trunc i32 %var_2_125 to i8
; Matched:%var_2_112:  %var_2_112 = and i8 %var_2_111, 1
; %var_2_127 = and i8 %var_2_126, 1
; Matched:%var_2_113:  %var_2_113 = xor i8 %var_2_112, 1
; %var_2_128 = xor i8 %var_2_127, 1
; Matched:\<badref\>:  store i8 %var_2_113, i8* %var_2_21, align 1
; store i8 %var_2_128, i8* %var_2_23, align 1
; Matched:%var_2_114:  %var_2_114 = xor i32 %var_2_105, %var_2_100
; %var_2_129 = xor i32 %var_2_120, %var_2_115
; Matched:%var_2_115:  %var_2_115 = xor i32 %var_2_114, %var_2_106
; %var_2_130 = xor i32 %var_2_129, %var_2_121
; Matched:%var_2_116:  %var_2_116 = lshr i32 %var_2_115, 4
; %var_2_131 = lshr i32 %var_2_130, 4
; Matched:%var_2_117:  %var_2_117 = trunc i32 %var_2_116 to i8
; %var_2_132 = trunc i32 %var_2_131 to i8
; Matched:%var_2_118:  %var_2_118 = and i8 %var_2_117, 1
; %var_2_133 = and i8 %var_2_132, 1
; Matched:\<badref\>:  store i8 %var_2_118, i8* %var_2_26, align 1
; store i8 %var_2_133, i8* %var_2_28, align 1
; Matched:%var_2_119:  %var_2_119 = icmp eq i32 %var_2_106, 0
; %var_2_134 = icmp eq i32 %var_2_121, 0
; Matched:%var_2_120:  %var_2_120 = zext i1 %var_2_119 to i8
; %var_2_135 = zext i1 %var_2_134 to i8
; Matched:\<badref\>:  store i8 %var_2_120, i8* %var_2_29, align 1
; store i8 %var_2_135, i8* %var_2_31, align 1
%var_2_136 = lshr i32 %var_2_121, 31
%var_2_137 = trunc i32 %var_2_136 to i8
; Matched:\<badref\>:  store i8 %var_2_122, i8* %var_2_32, align 1
; store i8 %var_2_137, i8* %var_2_34, align 1
%var_2_138 = lshr i32 %var_2_115, 31
%var_2_139 = lshr i32 %var_2_120, 31
%var_2_140 = xor i32 %var_2_139, %var_2_138
%var_2_141 = xor i32 %var_2_136, %var_2_138
%var_2_142 = add nuw nsw i32 %var_2_141, %var_2_140
%var_2_143 = icmp eq i32 %var_2_142, 2
; Matched:%var_2_129:  %var_2_129 = zext i1 %var_2_128 to i8
; %var_2_144 = zext i1 %var_2_143 to i8
; Matched:\<badref\>:  store i8 %var_2_129, i8* %var_2_38, align 1
; store i8 %var_2_144, i8* %var_2_40, align 1
%var_2_145 = icmp ne i8 %var_2_137, 0
%var_2_146 = xor i1 %var_2_145, %var_2_143
%.v13 = select i1 %var_2_146, i64 12, i64 69
%var_2_147 = add i64 %var_2_110, %.v13
; Matched:\<badref\>:  store i64 %var_2_132, i64* %var_2_3, align 8
; store i64 %var_2_147, i64* %PC, align 8
br i1 %var_2_146, label %block_4014e7, label %block_401520.loopexit

block_401546:                                     ; preds = %block_40153c
  store i64 10000000, i64* %RAX, align 8, !tbaa !2428
; Matched:\<badref\>:  store i64 ptrtoint (%G__0x4016de_type* @G__0x4016de to i64), i64* %RSI.i107, align 8
; store i64 10000000, i64* %RSI, align 8
%var_2_148 = add i64 %var_2_244, -32
; Matched:%var_2_246:  %var_2_246 = add i64 %var_2_244, 11
; %var_2_149 = add i64 %var_2_273, 11
; Matched:\<badref\>:  store i64 %var_2_246, i64* %var_2_3, align 8
; store i64 %var_2_149, i64* %PC, align 8
%var_2_150 = inttoptr i64 %var_2_148 to i64*
%var_2_151 = load i64, i64* %var_2_150, align 8
store i64 %var_2_151, i64* %RDI, align 8
; Matched:%var_2_249:  %var_2_249 = add i64 %var_2_244, -3222
; %var_2_152 = add i64 %var_2_273, -3222
; Matched:%var_2_250:  %var_2_250 = add i64 %var_2_244, 16
; %var_2_153 = add i64 %var_2_273, 16
%var_2_154 = load i64, i64* %RSP, align 8
%var_2_155 = add i64 %var_2_154, -8
; Matched:%var_2_253:  %var_2_253 = inttoptr i64 %var_2_252 to i64*
; %var_2_156 = inttoptr i64 %var_2_155 to i64*
; Matched:\<badref\>:  store i64 %var_2_250, i64* %var_2_253, align 8
; store i64 %var_2_153, i64* %var_2_156, align 8
; Matched:\<badref\>:  store i64 %var_2_303, i64* %var_2_6, align 8
; store i64 %var_2_155, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_249, i64* %var_2_3, align 8
; store i64 %var_2_152, i64* %PC, align 8
; Matched:  %call2_401551 = tail call %struct.Memory* @sub_4008b0.compdecomp(%struct.State* nonnull %0, i64 %var_2_249, %struct.Memory* %call2_40152c)
; %var_2_157 = tail call %struct.Memory* @sub_4008b0_compdecomp_renamed_(%struct.State* nonnull %0, i64 %var_2_152, %struct.Memory* %var_2_355)
%var_2_158 = load i64, i64* %RBP, align 8
; Matched:%var_2_165:  %var_2_165 = add i64 %var_2_159, -20
; %var_2_159 = add i64 %var_2_158, -20
; Matched:%var_2_356:  %var_2_356 = load i64, i64* %var_2_3, align 8
; %var_2_160 = load i64, i64* %PC, align 8
; Matched:%var_2_47:  %var_2_47 = add i64 %var_2_46, 3
; %var_2_161 = add i64 %var_2_160, 3
; Matched:\<badref\>:  store i64 %var_2_357, i64* %var_2_3, align 8
; store i64 %var_2_161, i64* %PC, align 8
; Matched:%var_2_258:  %var_2_258 = inttoptr i64 %var_2_255 to i32*
; %var_2_162 = inttoptr i64 %var_2_159 to i32*
; Matched:%var_2_259:  %var_2_259 = load i32, i32* %var_2_258, align 4
; %var_2_163 = load i32, i32* %var_2_162, align 4
; Matched:%var_2_260:  %var_2_260 = add i32 %var_2_259, 1
; %var_2_164 = add i32 %var_2_163, 1
; Matched:%var_2_170:  %var_2_170 = zext i32 %var_2_169 to i64
; %var_2_165 = zext i32 %var_2_164 to i64
; Matched:\<badref\>:  store i64 %var_2_170, i64* %RAX.i126, align 8
; store i64 %var_2_165, i64* %RAX, align 8
; Matched:%var_2_171:  %var_2_171 = icmp eq i32 %var_2_168, -1
; %var_2_166 = icmp eq i32 %var_2_163, -1
; Matched:%var_2_172:  %var_2_172 = icmp eq i32 %var_2_169, 0
; %var_2_167 = icmp eq i32 %var_2_164, 0
; Matched:%var_2_173:  %var_2_173 = or i1 %var_2_171, %var_2_172
; %var_2_168 = or i1 %var_2_166, %var_2_167
; Matched:%var_2_265:  %var_2_265 = zext i1 %var_2_264 to i8
; %var_2_169 = zext i1 %var_2_168 to i8
; Matched:\<badref\>:  store i8 %var_2_265, i8* %var_2_14, align 1
; store i8 %var_2_169, i8* %var_2_16, align 1
; Matched:%var_2_266:  %var_2_266 = and i32 %var_2_260, 255
; %var_2_170 = and i32 %var_2_164, 255
; Matched:%var_2_267:  %var_2_267 = tail call i32 @llvm.ctpop.i32(i32 %var_2_266)
; %var_2_171 = tail call i32 @llvm.ctpop.i32(i32 %var_2_170) #12
; Matched:%var_2_177:  %var_2_177 = trunc i32 %var_2_176 to i8
; %var_2_172 = trunc i32 %var_2_171 to i8
; Matched:%var_2_178:  %var_2_178 = and i8 %var_2_177, 1
; %var_2_173 = and i8 %var_2_172, 1
; Matched:%var_2_179:  %var_2_179 = xor i8 %var_2_178, 1
; %var_2_174 = xor i8 %var_2_173, 1
; Matched:\<badref\>:  store i8 %var_2_179, i8* %var_2_21, align 1
; store i8 %var_2_174, i8* %var_2_23, align 1
; Matched:%var_2_271:  %var_2_271 = xor i32 %var_2_260, %var_2_259
; %var_2_175 = xor i32 %var_2_164, %var_2_163
; Matched:%var_2_272:  %var_2_272 = lshr i32 %var_2_271, 4
; %var_2_176 = lshr i32 %var_2_175, 4
; Matched:%var_2_273:  %var_2_273 = trunc i32 %var_2_272 to i8
; %var_2_177 = trunc i32 %var_2_176 to i8
; Matched:%var_2_274:  %var_2_274 = and i8 %var_2_273, 1
; %var_2_178 = and i8 %var_2_177, 1
; Matched:\<badref\>:  store i8 %var_2_183, i8* %var_2_26, align 1
; store i8 %var_2_178, i8* %var_2_28, align 1
; Matched:%var_2_184:  %var_2_184 = zext i1 %var_2_172 to i8
; %var_2_179 = zext i1 %var_2_167 to i8
; Matched:\<badref\>:  store i8 %var_2_184, i8* %var_2_29, align 1
; store i8 %var_2_179, i8* %var_2_31, align 1
; Matched:%var_2_185:  %var_2_185 = lshr i32 %var_2_169, 31
; %var_2_180 = lshr i32 %var_2_164, 31
; Matched:%var_2_277:  %var_2_277 = trunc i32 %var_2_276 to i8
; %var_2_181 = trunc i32 %var_2_180 to i8
; Matched:\<badref\>:  store i8 %var_2_277, i8* %var_2_32, align 1
; store i8 %var_2_181, i8* %var_2_34, align 1
; Matched:%var_2_278:  %var_2_278 = lshr i32 %var_2_259, 31
; %var_2_182 = lshr i32 %var_2_163, 31
; Matched:%var_2_279:  %var_2_279 = xor i32 %var_2_276, %var_2_278
; %var_2_183 = xor i32 %var_2_180, %var_2_182
; Matched:%var_2_189:  %var_2_189 = add nuw nsw i32 %var_2_188, %var_2_185
; %var_2_184 = add nuw nsw i32 %var_2_183, %var_2_180
; Matched:%var_2_190:  %var_2_190 = icmp eq i32 %var_2_189, 2
; %var_2_185 = icmp eq i32 %var_2_184, 2
; Matched:%var_2_191:  %var_2_191 = zext i1 %var_2_190 to i8
; %var_2_186 = zext i1 %var_2_185 to i8
; Matched:\<badref\>:  store i8 %var_2_191, i8* %var_2_38, align 1
; store i8 %var_2_186, i8* %var_2_40, align 1
; Matched:%var_2_283:  %var_2_283 = add i64 %var_2_256, 9
; %var_2_187 = add i64 %var_2_160, 9
; Matched:\<badref\>:  store i64 %var_2_283, i64* %var_2_3, align 8
; store i64 %var_2_187, i64* %PC, align 8
; Matched:\<badref\>:  store i32 %var_2_260, i32* %var_2_258, align 4
; store i32 %var_2_164, i32* %var_2_162, align 4
; Matched:%var_2_284:  %var_2_284 = load i64, i64* %var_2_3, align 8
; %var_2_188 = load i64, i64* %PC, align 8
; Matched:%var_2_285:  %var_2_285 = add i64 %var_2_284, -35
; %var_2_189 = add i64 %var_2_188, -35
; Matched:\<badref\>:  store i64 %var_2_285, i64* %var_2_3, align 8
; store i64 %var_2_189, i64* %PC, align 8
  br label %block_40153c

block_4014d4:                                     ; preds = %block_4014b0
%var_2_190 = add i64 %var_2_61, -20
; Matched:%var_2_92:  %var_2_92 = add i64 %var_2_90, 7
; %var_2_191 = add i64 %var_2_91, 7
; Matched:\<badref\>:  store i64 %var_2_92, i64* %var_2_3, align 8
; store i64 %var_2_191, i64* %PC, align 8
%var_2_192 = inttoptr i64 %var_2_190 to i32*
store i32 1, i32* %var_2_192, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_4014db

block_40157f:                                     ; preds = %block_401564
; Matched:\<badref\>:  store i64 10000000, i64* %RSI.i107, align 8
; store i64 add (i64 ptrtoint (%seg_401660__rodata_type* @seg_401660__rodata to i64), i64 123), i64* %RSI, align 8
; Matched:%var_2_140:  %var_2_140 = load i64, i64* %var_2_139, align 8
; %var_2_193 = load i64, i64* @stdout, align 128
; Matched:\<badref\>:  store i64 %var_2_140, i64* %RDI.i117, align 8
; store i64 %var_2_193, i64* %RDI, align 8
; Matched:%var_2_322:  %var_2_322 = add i64 %var_2_306, -40
; %var_2_194 = add i64 %var_2_391, -40
; Matched:%var_2_323:  %var_2_323 = add i64 %var_2_319, 23
; %var_2_195 = add i64 %var_2_404, 23
; Matched:\<badref\>:  store i64 %var_2_323, i64* %var_2_3, align 8
; store i64 %var_2_195, i64* %PC, align 8
; Matched:%var_2_324:  %var_2_324 = inttoptr i64 %var_2_322 to i64*
; %var_2_196 = inttoptr i64 %var_2_194 to i64*
; Matched:%var_2_345:  %var_2_345 = load i64, i64* %var_2_344, align 8
; %var_2_197 = load i64, i64* %var_2_196, align 8
; Matched:\<badref\>:  store i64 %var_2_325, i64* %var_2_291, align 1
; store i64 %var_2_197, i64* %var_2_376, align 1
; Matched:%var_2_346:  %var_2_346 = bitcast i64* %var_2_287 to double*
; %var_2_198 = bitcast i64* %var_2_372 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_326, align 1
; store double 0.000000e+00, double* %var_2_198, align 1
  store i8 1, i8* %AL, align 1, !tbaa !2451
; Matched:%var_2_327:  %var_2_327 = add i64 %var_2_319, -3919
; %var_2_199 = add i64 %var_2_404, -3919
; Matched:%var_2_328:  %var_2_328 = add i64 %var_2_319, 30
; %var_2_200 = add i64 %var_2_404, 30
%var_2_201 = load i64, i64* %RSP, align 8
%var_2_202 = add i64 %var_2_201, -8
; Matched:%var_2_351:  %var_2_351 = inttoptr i64 %var_2_350 to i64*
; %var_2_203 = inttoptr i64 %var_2_202 to i64*
; Matched:\<badref\>:  store i64 %var_2_348, i64* %var_2_351, align 8
; store i64 %var_2_200, i64* %var_2_203, align 8
; Matched:\<badref\>:  store i64 %var_2_350, i64* %var_2_6, align 8
; store i64 %var_2_202, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_327, i64* %var_2_3, align 8
; store i64 %var_2_199, i64* %PC, align 8
%var_2_204 = tail call fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %var_2_390)
%var_2_205 = load i64, i64* %RBP, align 8
%var_2_206 = add i64 %var_2_205, -44
%var_2_207 = load i32, i32* %EAX, align 4
; Matched:%var_2_256:  %var_2_256 = load i64, i64* %var_2_3, align 8
; %var_2_208 = load i64, i64* %PC, align 8
; Matched:%var_2_357:  %var_2_357 = add i64 %var_2_356, 3
; %var_2_209 = add i64 %var_2_208, 3
; Matched:\<badref\>:  store i64 %var_2_257, i64* %var_2_3, align 8
; store i64 %var_2_209, i64* %PC, align 8
%var_2_210 = inttoptr i64 %var_2_206 to i32*
store i32 %var_2_207, i32* %var_2_210, align 4
; Matched:%var_2_339:  %var_2_339 = load i64, i64* %var_2_3, align 8
; %var_2_211 = load i64, i64* %PC, align 8
; Matched:%var_2_340:  %var_2_340 = add i64 %var_2_339, 38
; %var_2_212 = add i64 %var_2_211, 38
; Matched:\<badref\>:  store i64 %var_2_340, i64* %var_2_3, align 8
; store i64 %var_2_212, i64* %PC, align 8
  br label %block_4015c6

block_40150d:                                     ; preds = %block_4014e7
; Matched:%var_2_255:  %var_2_255 = add i64 %var_2_254, -20
; %var_2_213 = add i64 %var_2_300, -20
; Matched:%var_2_166:  %var_2_166 = add i64 %var_2_158, 8
; %var_2_214 = add i64 %var_2_299, 8
; Matched:\<badref\>:  store i64 %var_2_166, i64* %var_2_3, align 8
; store i64 %var_2_214, i64* %PC, align 8
; Matched:%var_2_167:  %var_2_167 = inttoptr i64 %var_2_165 to i32*
; %var_2_215 = inttoptr i64 %var_2_213 to i32*
; Matched:%var_2_168:  %var_2_168 = load i32, i32* %var_2_167, align 4
; %var_2_216 = load i32, i32* %var_2_215, align 4
; Matched:%var_2_169:  %var_2_169 = add i32 %var_2_168, 1
; %var_2_217 = add i32 %var_2_216, 1
; Matched:%var_2_170:  %var_2_170 = zext i32 %var_2_169 to i64
; %var_2_218 = zext i32 %var_2_217 to i64
; Matched:\<badref\>:  store i64 %var_2_170, i64* %RAX.i126, align 8
; store i64 %var_2_218, i64* %RAX, align 8
; Matched:%var_2_262:  %var_2_262 = icmp eq i32 %var_2_259, -1
; %var_2_219 = icmp eq i32 %var_2_216, -1
; Matched:%var_2_263:  %var_2_263 = icmp eq i32 %var_2_260, 0
; %var_2_220 = icmp eq i32 %var_2_217, 0
; Matched:%var_2_264:  %var_2_264 = or i1 %var_2_262, %var_2_263
; %var_2_221 = or i1 %var_2_219, %var_2_220
; Matched:%var_2_174:  %var_2_174 = zext i1 %var_2_173 to i8
; %var_2_222 = zext i1 %var_2_221 to i8
; Matched:\<badref\>:  store i8 %var_2_174, i8* %var_2_14, align 1
; store i8 %var_2_222, i8* %var_2_16, align 1
; Matched:%var_2_175:  %var_2_175 = and i32 %var_2_169, 255
; %var_2_223 = and i32 %var_2_217, 255
; Matched:%var_2_176:  %var_2_176 = tail call i32 @llvm.ctpop.i32(i32 %var_2_175)
; %var_2_224 = tail call i32 @llvm.ctpop.i32(i32 %var_2_223) #12
; Matched:%var_2_268:  %var_2_268 = trunc i32 %var_2_267 to i8
; %var_2_225 = trunc i32 %var_2_224 to i8
; Matched:%var_2_269:  %var_2_269 = and i8 %var_2_268, 1
; %var_2_226 = and i8 %var_2_225, 1
; Matched:%var_2_270:  %var_2_270 = xor i8 %var_2_269, 1
; %var_2_227 = xor i8 %var_2_226, 1
; Matched:\<badref\>:  store i8 %var_2_270, i8* %var_2_21, align 1
; store i8 %var_2_227, i8* %var_2_23, align 1
; Matched:%var_2_180:  %var_2_180 = xor i32 %var_2_169, %var_2_168
; %var_2_228 = xor i32 %var_2_217, %var_2_216
; Matched:%var_2_181:  %var_2_181 = lshr i32 %var_2_180, 4
; %var_2_229 = lshr i32 %var_2_228, 4
; Matched:%var_2_182:  %var_2_182 = trunc i32 %var_2_181 to i8
; %var_2_230 = trunc i32 %var_2_229 to i8
; Matched:%var_2_183:  %var_2_183 = and i8 %var_2_182, 1
; %var_2_231 = and i8 %var_2_230, 1
; Matched:\<badref\>:  store i8 %var_2_274, i8* %var_2_26, align 1
; store i8 %var_2_231, i8* %var_2_28, align 1
; Matched:%var_2_275:  %var_2_275 = zext i1 %var_2_263 to i8
; %var_2_232 = zext i1 %var_2_220 to i8
; Matched:\<badref\>:  store i8 %var_2_275, i8* %var_2_29, align 1
; store i8 %var_2_232, i8* %var_2_31, align 1
; Matched:%var_2_276:  %var_2_276 = lshr i32 %var_2_260, 31
; %var_2_233 = lshr i32 %var_2_217, 31
; Matched:%var_2_186:  %var_2_186 = trunc i32 %var_2_185 to i8
; %var_2_234 = trunc i32 %var_2_233 to i8
; Matched:\<badref\>:  store i8 %var_2_186, i8* %var_2_32, align 1
; store i8 %var_2_234, i8* %var_2_34, align 1
; Matched:%var_2_187:  %var_2_187 = lshr i32 %var_2_168, 31
; %var_2_235 = lshr i32 %var_2_216, 31
; Matched:%var_2_188:  %var_2_188 = xor i32 %var_2_185, %var_2_187
; %var_2_236 = xor i32 %var_2_233, %var_2_235
; Matched:%var_2_280:  %var_2_280 = add nuw nsw i32 %var_2_279, %var_2_276
; %var_2_237 = add nuw nsw i32 %var_2_236, %var_2_233
; Matched:%var_2_281:  %var_2_281 = icmp eq i32 %var_2_280, 2
; %var_2_238 = icmp eq i32 %var_2_237, 2
; Matched:%var_2_282:  %var_2_282 = zext i1 %var_2_281 to i8
; %var_2_239 = zext i1 %var_2_238 to i8
; Matched:\<badref\>:  store i8 %var_2_282, i8* %var_2_38, align 1
; store i8 %var_2_239, i8* %var_2_40, align 1
; Matched:%var_2_192:  %var_2_192 = add i64 %var_2_158, 14
; %var_2_240 = add i64 %var_2_299, 14
; Matched:\<badref\>:  store i64 %var_2_192, i64* %var_2_3, align 8
; store i64 %var_2_240, i64* %PC, align 8
; Matched:\<badref\>:  store i32 %var_2_169, i32* %var_2_167, align 4
; store i32 %var_2_217, i32* %var_2_215, align 4
%var_2_241 = load i64, i64* %PC, align 8
%var_2_242 = add i64 %var_2_241, -64
; Matched:\<badref\>:  store i64 %var_2_194, i64* %var_2_3, align 8
; store i64 %var_2_242, i64* %PC, align 8
  br label %block_4014db

block_40153c:                                     ; preds = %block_401525, %block_401546
; Matched:%var_2_214:  %var_2_214 = phi i64 [ %var_2_285, %block_401546 ], [ %.pre11, %block_.L_401525 ]
; %var_2_243 = phi i64 [ %.pre11, %block_401525 ], [ %var_2_189, %block_401546 ]
%var_2_244 = load i64, i64* %RBP, align 8
%var_2_245 = add i64 %var_2_244, -20
; Matched:%var_2_217:  %var_2_217 = add i64 %var_2_214, 4
; %var_2_246 = add i64 %var_2_243, 4
; Matched:\<badref\>:  store i64 %var_2_217, i64* %var_2_3, align 8
; store i64 %var_2_246, i64* %PC, align 8
%var_2_247 = inttoptr i64 %var_2_245 to i32*
%var_2_248 = load i32, i32* %var_2_247, align 4
%var_2_249 = add i32 %var_2_248, -30
; Matched:%var_2_221:  %var_2_221 = icmp ult i32 %var_2_219, 30
; %var_2_250 = icmp ult i32 %var_2_248, 30
; Matched:%var_2_222:  %var_2_222 = zext i1 %var_2_221 to i8
; %var_2_251 = zext i1 %var_2_250 to i8
; Matched:\<badref\>:  store i8 %var_2_222, i8* %var_2_14, align 1
; store i8 %var_2_251, i8* %var_2_16, align 1
; Matched:%var_2_223:  %var_2_223 = and i32 %var_2_220, 255
; %var_2_252 = and i32 %var_2_249, 255
; Matched:%var_2_224:  %var_2_224 = tail call i32 @llvm.ctpop.i32(i32 %var_2_223)
; %var_2_253 = tail call i32 @llvm.ctpop.i32(i32 %var_2_252) #12
; Matched:%var_2_225:  %var_2_225 = trunc i32 %var_2_224 to i8
; %var_2_254 = trunc i32 %var_2_253 to i8
; Matched:%var_2_226:  %var_2_226 = and i8 %var_2_225, 1
; %var_2_255 = and i8 %var_2_254, 1
; Matched:%var_2_227:  %var_2_227 = xor i8 %var_2_226, 1
; %var_2_256 = xor i8 %var_2_255, 1
; Matched:\<badref\>:  store i8 %var_2_227, i8* %var_2_21, align 1
; store i8 %var_2_256, i8* %var_2_23, align 1
; Matched:%var_2_228:  %var_2_228 = xor i32 %var_2_219, 16
; %var_2_257 = xor i32 %var_2_248, 16
; Matched:%var_2_229:  %var_2_229 = xor i32 %var_2_228, %var_2_220
; %var_2_258 = xor i32 %var_2_257, %var_2_249
; Matched:%var_2_230:  %var_2_230 = lshr i32 %var_2_229, 4
; %var_2_259 = lshr i32 %var_2_258, 4
; Matched:%var_2_231:  %var_2_231 = trunc i32 %var_2_230 to i8
; %var_2_260 = trunc i32 %var_2_259 to i8
; Matched:%var_2_232:  %var_2_232 = and i8 %var_2_231, 1
; %var_2_261 = and i8 %var_2_260, 1
; Matched:\<badref\>:  store i8 %var_2_232, i8* %var_2_26, align 1
; store i8 %var_2_261, i8* %var_2_28, align 1
; Matched:%var_2_233:  %var_2_233 = icmp eq i32 %var_2_220, 0
; %var_2_262 = icmp eq i32 %var_2_249, 0
; Matched:%var_2_234:  %var_2_234 = zext i1 %var_2_233 to i8
; %var_2_263 = zext i1 %var_2_262 to i8
; Matched:\<badref\>:  store i8 %var_2_234, i8* %var_2_29, align 1
; store i8 %var_2_263, i8* %var_2_31, align 1
%var_2_264 = lshr i32 %var_2_249, 31
%var_2_265 = trunc i32 %var_2_264 to i8
; Matched:\<badref\>:  store i8 %var_2_236, i8* %var_2_32, align 1
; store i8 %var_2_265, i8* %var_2_34, align 1
%var_2_266 = lshr i32 %var_2_248, 31
%var_2_267 = xor i32 %var_2_264, %var_2_266
%var_2_268 = add nuw nsw i32 %var_2_267, %var_2_266
%var_2_269 = icmp eq i32 %var_2_268, 2
; Matched:%var_2_241:  %var_2_241 = zext i1 %var_2_240 to i8
; %var_2_270 = zext i1 %var_2_269 to i8
; Matched:\<badref\>:  store i8 %var_2_241, i8* %var_2_38, align 1
; store i8 %var_2_270, i8* %var_2_40, align 1
%var_2_271 = icmp ne i8 %var_2_265, 0
%var_2_272 = xor i1 %var_2_271, %var_2_269
; Matched:  %.v18 = select i1 %var_2_243, i64 10, i64 40
; %.v14 = select i1 %var_2_272, i64 10, i64 40
; Matched:%var_2_244:  %var_2_244 = add i64 %var_2_214, %.v18
; %var_2_273 = add i64 %var_2_243, %.v14
; Matched:\<badref\>:  store i64 %var_2_244, i64* %var_2_3, align 8
; store i64 %var_2_273, i64* %PC, align 8
br i1 %var_2_272, label %block_401546, label %block_401564

block_4014e7:                                     ; preds = %block_4014db
; Matched:%var_2_133:  %var_2_133 = add i64 %var_2_96, -16
; %var_2_274 = add i64 %var_2_111, -16
; Matched:%var_2_134:  %var_2_134 = add i64 %var_2_132, 4
; %var_2_275 = add i64 %var_2_147, 4
; Matched:\<badref\>:  store i64 %var_2_134, i64* %var_2_3, align 8
; store i64 %var_2_275, i64* %PC, align 8
; Matched:%var_2_135:  %var_2_135 = inttoptr i64 %var_2_133 to i64*
; %var_2_276 = inttoptr i64 %var_2_274 to i64*
; Matched:%var_2_136:  %var_2_136 = load i64, i64* %var_2_135, align 8
; %var_2_277 = load i64, i64* %var_2_276, align 8
; Matched:\<badref\>:  store i64 %var_2_136, i64* %RAX.i126, align 8
; store i64 %var_2_277, i64* %RAX, align 8
; Matched:%var_2_137:  %var_2_137 = add i64 %var_2_136, 8
; %var_2_278 = add i64 %var_2_277, 8
; Matched:%var_2_138:  %var_2_138 = add i64 %var_2_132, 8
; %var_2_279 = add i64 %var_2_147, 8
; Matched:\<badref\>:  store i64 %var_2_138, i64* %var_2_3, align 8
; store i64 %var_2_279, i64* %PC, align 8
; Matched:%var_2_139:  %var_2_139 = inttoptr i64 %var_2_137 to i64*
; %var_2_280 = inttoptr i64 %var_2_278 to i64*
; Matched:%var_2_140:  %var_2_140 = load i64, i64* %var_2_139, align 8
; %var_2_281 = load i64, i64* %var_2_280, align 8
; Matched:\<badref\>:  store i64 %var_2_140, i64* %RDI.i117, align 8
; store i64 %var_2_281, i64* %RDI, align 8
; Matched:\<badref\>:  store i64 0, i64* %RCX.i, align 8
; store i64 and (i64 add (i64 ptrtoint (%seg_401660__rodata_type* @seg_401660__rodata to i64), i64 119), i64 4294967295), i64* %RCX, align 8
; Matched:\<badref\>:  store i64 ptrtoint (%G__0x4016db_type* @G__0x4016db to i64), i64* %RSI.i107, align 8
; store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401660__rodata_type* @seg_401660__rodata to i64), i64 119), i64 4294967295) to i32) to i64), i64* %RSI, align 8
; Matched:%var_2_141:  %var_2_141 = add i64 %var_2_132, -3783
; %var_2_282 = add i64 %var_2_147, -3783
; Matched:%var_2_142:  %var_2_142 = add i64 %var_2_132, 20
; %var_2_283 = add i64 %var_2_147, 20
%var_2_284 = load i64, i64* %RSP, align 8
%var_2_285 = add i64 %var_2_284, -8
; Matched:%var_2_145:  %var_2_145 = inttoptr i64 %var_2_144 to i64*
; %var_2_286 = inttoptr i64 %var_2_285 to i64*
; Matched:\<badref\>:  store i64 %var_2_142, i64* %var_2_145, align 8
; store i64 %var_2_283, i64* %var_2_286, align 8
; Matched:\<badref\>:  store i64 %var_2_144, i64* %var_2_6, align 8
; store i64 %var_2_285, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_141, i64* %var_2_3, align 8
; store i64 %var_2_282, i64* %PC, align 8
%var_2_287 = tail call fastcc %struct.Memory* @ext_6020c8_strcmp(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
%var_2_288 = load i32, i32* %EAX, align 4
; Matched:%var_2_148:  %var_2_148 = load i64, i64* %var_2_3, align 8
; %var_2_289 = load i64, i64* %PC, align 8
store i8 0, i8* %var_2_16, align 1
; Matched:%var_2_149:  %var_2_149 = and i32 %var_2_147, 255
; %var_2_290 = and i32 %var_2_288, 255
; Matched:%var_2_150:  %var_2_150 = tail call i32 @llvm.ctpop.i32(i32 %var_2_149)
; %var_2_291 = tail call i32 @llvm.ctpop.i32(i32 %var_2_290) #12
; Matched:%var_2_151:  %var_2_151 = trunc i32 %var_2_150 to i8
; %var_2_292 = trunc i32 %var_2_291 to i8
; Matched:%var_2_152:  %var_2_152 = and i8 %var_2_151, 1
; %var_2_293 = and i8 %var_2_292, 1
; Matched:%var_2_153:  %var_2_153 = xor i8 %var_2_152, 1
; %var_2_294 = xor i8 %var_2_293, 1
; Matched:\<badref\>:  store i8 %var_2_153, i8* %var_2_21, align 1
; store i8 %var_2_294, i8* %var_2_23, align 1
store i8 0, i8* %var_2_28, align 1
%var_2_295 = icmp eq i32 %var_2_288, 0
; Matched:%var_2_155:  %var_2_155 = zext i1 %var_2_154 to i8
; %var_2_296 = zext i1 %var_2_295 to i8
; Matched:\<badref\>:  store i8 %var_2_155, i8* %var_2_29, align 1
; store i8 %var_2_296, i8* %var_2_31, align 1
; Matched:%var_2_156:  %var_2_156 = lshr i32 %var_2_147, 31
; %var_2_297 = lshr i32 %var_2_288, 31
; Matched:%var_2_157:  %var_2_157 = trunc i32 %var_2_156 to i8
; %var_2_298 = trunc i32 %var_2_297 to i8
; Matched:\<badref\>:  store i8 %var_2_157, i8* %var_2_32, align 1
; store i8 %var_2_298, i8* %var_2_34, align 1
store i8 0, i8* %var_2_40, align 1
; Matched:  %.v20 = select i1 %var_2_154, i64 9, i64 18
; %.v16 = select i1 %var_2_295, i64 9, i64 18
; Matched:%var_2_158:  %var_2_158 = add i64 %var_2_148, %.v20
; %var_2_299 = add i64 %var_2_289, %.v16
; Matched:\<badref\>:  store i64 %var_2_158, i64* %var_2_3, align 8
; store i64 %var_2_299, i64* %PC, align 8
%var_2_300 = load i64, i64* %RBP, align 8
br i1 %var_2_295, label %block_401504, label %block_40150d

block_4015c6:                                     ; preds = %block_40157f, %block_4015a5
; Matched:%var_2_359:  %var_2_359 = phi i64 [ %.pre12, %block_.L_4015a5 ], [ %var_2_340, %block_40157f ]
; %var_2_301 = phi i64 [ %.pre12, %block_4015a5 ], [ %var_2_212, %block_40157f ]
%MEMORY.2 = phi %struct.Memory* [ %var_2_103, %block_4015a5 ], [ %var_2_204, %block_40157f ]
; Matched:%var_2_140:  %var_2_140 = load i64, i64* %var_2_139, align 8
; %var_2_302 = load i64, i64* @stdout, align 128
; Matched:\<badref\>:  store i64 %var_2_140, i64* %RDI.i117, align 8
; store i64 %var_2_302, i64* %RDI, align 8
; Matched:%var_2_361:  %var_2_361 = add i64 %var_2_359, -3958
; %var_2_303 = add i64 %var_2_301, -3958
; Matched:%var_2_362:  %var_2_362 = add i64 %var_2_359, 13
; %var_2_304 = add i64 %var_2_301, 13
%var_2_305 = load i64, i64* %RSP, align 8
%var_2_306 = add i64 %var_2_305, -8
; Matched:%var_2_365:  %var_2_365 = inttoptr i64 %var_2_364 to i64*
; %var_2_307 = inttoptr i64 %var_2_306 to i64*
; Matched:\<badref\>:  store i64 %var_2_362, i64* %var_2_365, align 8
; store i64 %var_2_304, i64* %var_2_307, align 8
; Matched:\<badref\>:  store i64 %var_2_330, i64* %var_2_6, align 8
; store i64 %var_2_306, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_361, i64* %var_2_3, align 8
; store i64 %var_2_303, i64* %PC, align 8
%var_2_308 = tail call fastcc %struct.Memory* @ext_6020e0_fflush(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
; Matched:%var_2_368:  %var_2_368 = load i64, i64* %var_2_3, align 8
; %var_2_309 = load i64, i64* %PC, align 8
; Matched:\<badref\>:  store i64 0, i64* %RCX.i, align 8
; store i64 0, i64* %RCX, align 8
%var_2_310 = load i64, i64* %RBP, align 8
%var_2_311 = add i64 %var_2_310, -52
%var_2_312 = load i32, i32* %EAX, align 4
; Matched:%var_2_372:  %var_2_372 = add i64 %var_2_368, 5
; %var_2_313 = add i64 %var_2_309, 5
; Matched:\<badref\>:  store i64 %var_2_372, i64* %var_2_3, align 8
; store i64 %var_2_313, i64* %PC, align 8
%var_2_314 = inttoptr i64 %var_2_311 to i32*
store i32 %var_2_312, i32* %var_2_314, align 4
%var_2_315 = load i32, i32* %ECX, align 4
%var_2_316 = zext i32 %var_2_315 to i64
; Matched:%var_2_376:  %var_2_376 = load i64, i64* %var_2_3, align 8
; %var_2_317 = load i64, i64* %PC, align 8
store i64 %var_2_316, i64* %RAX, align 8
; Matched:%var_2_377:  %var_2_377 = load i64, i64* %var_2_6, align 8
; %var_2_318 = load i64, i64* %RSP, align 8
; Matched:%var_2_378:  %var_2_378 = add i64 %var_2_377, 64
; %var_2_319 = add i64 %var_2_318, 64
; Matched:\<badref\>:  store i64 %var_2_378, i64* %var_2_6, align 8
; store i64 %var_2_319, i64* %RSP, align 8
; Matched:%var_2_379:  %var_2_379 = icmp ugt i64 %var_2_377, -65
; %var_2_320 = icmp ugt i64 %var_2_318, -65
; Matched:%var_2_380:  %var_2_380 = zext i1 %var_2_379 to i8
; %var_2_321 = zext i1 %var_2_320 to i8
; Matched:\<badref\>:  store i8 %var_2_380, i8* %var_2_14, align 1
; store i8 %var_2_321, i8* %var_2_16, align 1
; Matched:%var_2_381:  %var_2_381 = trunc i64 %var_2_378 to i32
; %var_2_322 = trunc i64 %var_2_319 to i32
; Matched:%var_2_382:  %var_2_382 = and i32 %var_2_381, 255
; %var_2_323 = and i32 %var_2_322, 255
; Matched:%var_2_383:  %var_2_383 = tail call i32 @llvm.ctpop.i32(i32 %var_2_382)
; %var_2_324 = tail call i32 @llvm.ctpop.i32(i32 %var_2_323) #12
; Matched:%var_2_384:  %var_2_384 = trunc i32 %var_2_383 to i8
; %var_2_325 = trunc i32 %var_2_324 to i8
; Matched:%var_2_385:  %var_2_385 = and i8 %var_2_384, 1
; %var_2_326 = and i8 %var_2_325, 1
; Matched:%var_2_386:  %var_2_386 = xor i8 %var_2_385, 1
; %var_2_327 = xor i8 %var_2_326, 1
; Matched:\<badref\>:  store i8 %var_2_386, i8* %var_2_21, align 1
; store i8 %var_2_327, i8* %var_2_23, align 1
; Matched:%var_2_387:  %var_2_387 = xor i64 %var_2_378, %var_2_377
; %var_2_328 = xor i64 %var_2_319, %var_2_318
; Matched:%var_2_388:  %var_2_388 = lshr i64 %var_2_387, 4
; %var_2_329 = lshr i64 %var_2_328, 4
; Matched:%var_2_389:  %var_2_389 = trunc i64 %var_2_388 to i8
; %var_2_330 = trunc i64 %var_2_329 to i8
; Matched:%var_2_390:  %var_2_390 = and i8 %var_2_389, 1
; %var_2_331 = and i8 %var_2_330, 1
; Matched:\<badref\>:  store i8 %var_2_390, i8* %var_2_26, align 1
; store i8 %var_2_331, i8* %var_2_28, align 1
; Matched:%var_2_391:  %var_2_391 = icmp eq i64 %var_2_378, 0
; %var_2_332 = icmp eq i64 %var_2_319, 0
; Matched:%var_2_392:  %var_2_392 = zext i1 %var_2_391 to i8
; %var_2_333 = zext i1 %var_2_332 to i8
; Matched:\<badref\>:  store i8 %var_2_392, i8* %var_2_29, align 1
; store i8 %var_2_333, i8* %var_2_31, align 1
; Matched:%var_2_393:  %var_2_393 = lshr i64 %var_2_378, 63
; %var_2_334 = lshr i64 %var_2_319, 63
; Matched:%var_2_394:  %var_2_394 = trunc i64 %var_2_393 to i8
; %var_2_335 = trunc i64 %var_2_334 to i8
; Matched:\<badref\>:  store i8 %var_2_394, i8* %var_2_32, align 1
; store i8 %var_2_335, i8* %var_2_34, align 1
; Matched:%var_2_395:  %var_2_395 = lshr i64 %var_2_377, 63
; %var_2_336 = lshr i64 %var_2_318, 63
; Matched:%var_2_396:  %var_2_396 = xor i64 %var_2_393, %var_2_395
; %var_2_337 = xor i64 %var_2_334, %var_2_336
; Matched:%var_2_397:  %var_2_397 = add nuw nsw i64 %var_2_396, %var_2_393
; %var_2_338 = add nuw nsw i64 %var_2_337, %var_2_334
; Matched:%var_2_398:  %var_2_398 = icmp eq i64 %var_2_397, 2
; %var_2_339 = icmp eq i64 %var_2_338, 2
; Matched:%var_2_399:  %var_2_399 = zext i1 %var_2_398 to i8
; %var_2_340 = zext i1 %var_2_339 to i8
; Matched:\<badref\>:  store i8 %var_2_399, i8* %var_2_38, align 1
; store i8 %var_2_340, i8* %var_2_40, align 1
; Matched:%var_2_212:  %var_2_212 = add i64 %var_2_211, 7
; %var_2_341 = add i64 %var_2_317, 7
; Matched:\<badref\>:  store i64 %var_2_400, i64* %var_2_3, align 8
; store i64 %var_2_341, i64* %PC, align 8
; Matched:%var_2_401:  %var_2_401 = add i64 %var_2_377, 72
; %var_2_342 = add i64 %var_2_318, 72
; Matched:%var_2_402:  %var_2_402 = inttoptr i64 %var_2_378 to i64*
; %var_2_343 = inttoptr i64 %var_2_319 to i64*
; Matched:%var_2_403:  %var_2_403 = load i64, i64* %var_2_402, align 8
; %var_2_344 = load i64, i64* %var_2_343, align 8
; Matched:\<badref\>:  store i64 %var_2_403, i64* %RBP.i, align 8
; store i64 %var_2_344, i64* %RBP, align 8
; Matched:\<badref\>:  store i64 %var_2_401, i64* %var_2_6, align 8
; store i64 %var_2_342, i64* %RSP, align 8
; Matched:%var_2_404:  %var_2_404 = add i64 %var_2_376, 8
; %var_2_345 = add i64 %var_2_317, 8
; Matched:\<badref\>:  store i64 %var_2_404, i64* %var_2_3, align 8
; store i64 %var_2_345, i64* %PC, align 8
; Matched:%var_2_405:  %var_2_405 = inttoptr i64 %var_2_401 to i64*
; %var_2_346 = inttoptr i64 %var_2_342 to i64*
; Matched:%var_2_406:  %var_2_406 = load i64, i64* %var_2_405, align 8
; %var_2_347 = load i64, i64* %var_2_346, align 8
; Matched:\<badref\>:  store i64 %var_2_406, i64* %var_2_3, align 8
; store i64 %var_2_347, i64* %PC, align 8
; Matched:%var_2_407:  %var_2_407 = add i64 %var_2_377, 80
; %var_2_348 = add i64 %var_2_318, 80
; Matched:\<badref\>:  store i64 %var_2_407, i64* %var_2_6, align 8
; store i64 %var_2_348, i64* %RSP, align 8
ret %struct.Memory* %var_2_308

block_401525:                                     ; preds = %block_401520, %block_4014b0
%var_2_349 = phi i64 [ %var_2_91, %block_4014b0 ], [ %var_2_408, %block_401520 ]
  %MEMORY.3 = phi %struct.Memory* [ %2, %block_4014b0 ], [ %MEMORY.4, %block_401520 ]
  store i64 10000000, i64* %RAX, align 8, !tbaa !2428
; Matched:\<badref\>:  store i64 %var_2_140, i64* %RDI.i117, align 8
; store i64 10000000, i64* %RDI, align 8
%var_2_350 = add i64 %var_2_349, -3525
; Matched:%var_2_199:  %var_2_199 = add i64 %var_2_197, 12
; %var_2_351 = add i64 %var_2_349, 12
%var_2_352 = load i64, i64* %RSP, align 8
%var_2_353 = add i64 %var_2_352, -8
; Matched:%var_2_202:  %var_2_202 = inttoptr i64 %var_2_201 to i64*
; %var_2_354 = inttoptr i64 %var_2_353 to i64*
; Matched:\<badref\>:  store i64 %var_2_199, i64* %var_2_202, align 8
; store i64 %var_2_351, i64* %var_2_354, align 8
; Matched:\<badref\>:  store i64 %var_2_201, i64* %var_2_6, align 8
; store i64 %var_2_353, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_198, i64* %var_2_3, align 8
; store i64 %var_2_350, i64* %PC, align 8
%var_2_355 = tail call %struct.Memory* @sub_400760_generate_test_data_renamed_(%struct.State* nonnull %0, i64 %var_2_350, %struct.Memory* %MEMORY.3)
%var_2_356 = load i64, i64* %RBP, align 8
%var_2_357 = add i64 %var_2_356, -32
%var_2_358 = load i64, i64* %RAX, align 8
; Matched:%var_2_206:  %var_2_206 = load i64, i64* %var_2_3, align 8
; %var_2_359 = load i64, i64* %PC, align 8
; Matched:%var_2_207:  %var_2_207 = add i64 %var_2_206, 4
; %var_2_360 = add i64 %var_2_359, 4
; Matched:\<badref\>:  store i64 %var_2_207, i64* %var_2_3, align 8
; store i64 %var_2_360, i64* %PC, align 8
%var_2_361 = inttoptr i64 %var_2_357 to i64*
store i64 %var_2_358, i64* %var_2_361, align 8
%var_2_362 = load i64, i64* %RBP, align 8
%var_2_363 = add i64 %var_2_362, -20
; Matched:%var_2_211:  %var_2_211 = load i64, i64* %var_2_3, align 8
; %var_2_364 = load i64, i64* %PC, align 8
; Matched:%var_2_400:  %var_2_400 = add i64 %var_2_376, 7
; %var_2_365 = add i64 %var_2_364, 7
; Matched:\<badref\>:  store i64 %var_2_212, i64* %var_2_3, align 8
; store i64 %var_2_365, i64* %PC, align 8
%var_2_366 = inttoptr i64 %var_2_363 to i32*
store i32 0, i32* %var_2_366, align 4
; Matched:  %.pre11 = load i64, i64* %var_2_3, align 8
; %.pre11 = load i64, i64* %PC, align 8
  br label %block_40153c

block_401504:                                     ; preds = %block_4014e7
; Matched:%var_2_56:  %var_2_56 = add i64 %var_2_55, -21
; %var_2_367 = add i64 %var_2_300, -21
; Matched:%var_2_161:  %var_2_161 = add i64 %var_2_158, 4
; %var_2_368 = add i64 %var_2_299, 4
; Matched:\<badref\>:  store i64 %var_2_161, i64* %var_2_3, align 8
; store i64 %var_2_368, i64* %PC, align 8
; Matched:%var_2_59:  %var_2_59 = inttoptr i64 %var_2_56 to i8*
; %var_2_369 = inttoptr i64 %var_2_367 to i8*
; Matched:\<badref\>:  store i8 1, i8* %var_2_162, align 1
; store i8 1, i8* %var_2_369, align 1
%var_2_370 = load i64, i64* %PC, align 8
%var_2_371 = add i64 %var_2_370, 24
; Matched:\<badref\>:  store i64 %var_2_164, i64* %var_2_3, align 8
; store i64 %var_2_371, i64* %PC, align 8
  br label %block_401520

block_401564:                                     ; preds = %block_40153c
; Matched:%var_2_287:  %var_2_287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
; %var_2_372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_373 = bitcast %union.VectorReg* %var_2_6 to <4 x i32>*
store <4 x i32> zeroinitializer, <4 x i32>* %var_2_373, align 1
; Matched:%var_2_289:  %var_2_289 = add i64 %var_2_215, -40
; %var_2_374 = add i64 %var_2_244, -40
; Matched:%var_2_290:  %var_2_290 = add i64 %var_2_244, 8
; %var_2_375 = add i64 %var_2_273, 8
; Matched:\<badref\>:  store i64 %var_2_290, i64* %var_2_3, align 8
; store i64 %var_2_375, i64* %PC, align 8
; Matched:%var_2_291:  %var_2_291 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_286, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_376 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_6, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_292:  %var_2_292 = load i64, i64* %var_2_291, align 1
; %var_2_377 = load i64, i64* %var_2_376, align 1
; Matched:%var_2_293:  %var_2_293 = inttoptr i64 %var_2_289 to i64*
; %var_2_378 = inttoptr i64 %var_2_374 to i64*
; Matched:\<badref\>:  store i64 %var_2_292, i64* %var_2_293, align 8
; store i64 %var_2_377, i64* %var_2_378, align 8
%var_2_379 = load i64, i64* %RBP, align 8
%var_2_380 = add i64 %var_2_379, -32
; Matched:%var_2_296:  %var_2_296 = load i64, i64* %var_2_3, align 8
; %var_2_381 = load i64, i64* %PC, align 8
; Matched:%var_2_297:  %var_2_297 = add i64 %var_2_296, 4
; %var_2_382 = add i64 %var_2_381, 4
; Matched:\<badref\>:  store i64 %var_2_297, i64* %var_2_3, align 8
; store i64 %var_2_382, i64* %PC, align 8
%var_2_383 = inttoptr i64 %var_2_380 to i64*
%var_2_384 = load i64, i64* %var_2_383, align 8
store i64 %var_2_384, i64* %RDI, align 8
; Matched:%var_2_300:  %var_2_300 = add i64 %var_2_296, -3948
; %var_2_385 = add i64 %var_2_381, -3948
; Matched:%var_2_301:  %var_2_301 = add i64 %var_2_296, 9
; %var_2_386 = add i64 %var_2_381, 9
%var_2_387 = load i64, i64* %RSP, align 8
%var_2_388 = add i64 %var_2_387, -8
; Matched:%var_2_304:  %var_2_304 = inttoptr i64 %var_2_303 to i64*
; %var_2_389 = inttoptr i64 %var_2_388 to i64*
; Matched:\<badref\>:  store i64 %var_2_301, i64* %var_2_304, align 8
; store i64 %var_2_386, i64* %var_2_389, align 8
; Matched:\<badref\>:  store i64 %var_2_364, i64* %var_2_6, align 8
; store i64 %var_2_388, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_300, i64* %var_2_3, align 8
; store i64 %var_2_385, i64* %PC, align 8
%var_2_390 = tail call fastcc %struct.Memory* @ext_6020f0_free(%struct.State* nonnull %0, %struct.Memory* %var_2_355)
%var_2_391 = load i64, i64* %RBP, align 8
%var_2_392 = add i64 %var_2_391, -21
; Matched:%var_2_62:  %var_2_62 = load i64, i64* %var_2_3, align 8
; %var_2_393 = load i64, i64* %PC, align 8
; Matched:%var_2_63:  %var_2_63 = add i64 %var_2_62, 4
; %var_2_394 = add i64 %var_2_393, 4
; Matched:\<badref\>:  store i64 %var_2_63, i64* %var_2_3, align 8
; store i64 %var_2_394, i64* %PC, align 8
%var_2_395 = inttoptr i64 %var_2_392 to i8*
%var_2_396 = load i8, i8* %var_2_395, align 1
%var_2_397 = and i8 %var_2_396, 1
store i8 0, i8* %var_2_16, align 1
; Matched:%var_2_313:  %var_2_313 = zext i8 %var_2_312 to i32
; %var_2_398 = zext i8 %var_2_397 to i32
; Matched:%var_2_314:  %var_2_314 = tail call i32 @llvm.ctpop.i32(i32 %var_2_313)
; %var_2_399 = tail call i32 @llvm.ctpop.i32(i32 %var_2_398) #12
; Matched:%var_2_315:  %var_2_315 = trunc i32 %var_2_314 to i8
; %var_2_400 = trunc i32 %var_2_399 to i8
; Matched:%var_2_316:  %var_2_316 = xor i8 %var_2_315, 1
; %var_2_401 = xor i8 %var_2_400, 1
; Matched:\<badref\>:  store i8 %var_2_316, i8* %var_2_21, align 1
; store i8 %var_2_401, i8* %var_2_23, align 1
; Matched:%var_2_317:  %var_2_317 = xor i8 %var_2_312, 1
; %var_2_402 = xor i8 %var_2_397, 1
; Matched:\<badref\>:  store i8 %var_2_317, i8* %var_2_29, align 1
; store i8 %var_2_402, i8* %var_2_31, align 1
store i8 0, i8* %var_2_34, align 1
store i8 0, i8* %var_2_40, align 1
store i8 0, i8* %var_2_28, align 1
; Matched:%var_2_318:  %var_2_318 = icmp ne i8 %var_2_317, 0
; %var_2_403 = icmp ne i8 %var_2_402, 0
; Matched:  %.v19 = select i1 %var_2_318, i64 48, i64 10
; %.v15 = select i1 %var_2_403, i64 48, i64 10
; Matched:%var_2_319:  %var_2_319 = add i64 %var_2_308, %.v19
; %var_2_404 = add i64 %var_2_393, %.v15
%var_2_405 = icmp eq i8 %var_2_397, 0
; Matched:%var_2_320:  %var_2_320 = add i64 %var_2_319, 10
; %var_2_406 = add i64 %var_2_404, 10
; Matched:\<badref\>:  store i64 %var_2_320, i64* %var_2_3, align 8
; store i64 %var_2_406, i64* %PC, align 8
br i1 %var_2_405, label %block_4015a5, label %block_40157f

block_401520.loopexit:                            ; preds = %block_4014db
  br label %block_401520

block_401520:                                     ; preds = %block_401520.loopexit, %block_401504
%var_2_407 = phi i64 [ %var_2_371, %block_401504 ], [ %var_2_147, %block_401520.loopexit ]
%MEMORY.4 = phi %struct.Memory* [ %var_2_287, %block_401504 ], [ %MEMORY.0, %block_401520.loopexit ]
%var_2_408 = add i64 %var_2_407, 5
; Matched:\<badref\>:  store i64 %var_2_196, i64* %var_2_3, align 8
; store i64 %var_2_408, i64* %PC, align 8
  br label %block_401525
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4007f0_random4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4007f0:
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
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14) #12
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1, !tbaa !2446
  %20 = icmp eq i64 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1, !tbaa !2447
  %23 = lshr i64 %10, 63
  %24 = trunc i64 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1, !tbaa !2448
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1, !tbaa !2449
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1, !tbaa !2450
  store i64 %11, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  store i64 %11, i64* %RAX, align 8, !tbaa !2428
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %29 = ashr i64 %10, 63
  store i64 %29, i64* %RDX, align 8, !tbaa !2428
  %30 = add i64 %9, 46
  store i64 %30, i64* %PC, align 8
  %31 = zext i64 %29 to i128
  %32 = shl nuw i128 %31, 64
  %33 = zext i64 %11 to i128
  %34 = or i128 %32, %33
  %35 = sdiv i128 %34, 127773
  %36 = trunc i128 %35 to i64
  %37 = and i128 %35, 18446744073709551615
  %38 = sext i64 %36 to i128
  %39 = and i128 %38, -18446744073709551616
  %40 = or i128 %39, %37
  %41 = icmp eq i128 %35, %40
  br i1 %41, label %44, label %42

; <label>:42:                                     ; preds = %block_4007f0
  %43 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %30, %struct.Memory* %2) #13
  %.pre = load i64, i64* %RBP, align 8
  %.pre1 = load i64, i64* %RAX, align 8
  %.pre2 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1

; <label>:44:                                     ; preds = %block_4007f0
  %45 = srem i128 %34, 127773
  %46 = trunc i128 %45 to i64
  store i64 %36, i64* %28, align 8, !tbaa !2428
  store i64 %46, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 0, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2450
  store i8 0, i8* %22, align 1, !tbaa !2447
  store i8 0, i8* %25, align 1, !tbaa !2448
  store i8 0, i8* %26, align 1, !tbaa !2449
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1: ; preds = %44, %42
  %47 = phi i64 [ %.pre2, %42 ], [ %30, %44 ]
  %48 = phi i64 [ %.pre1, %42 ], [ %36, %44 ]
  %49 = phi i64 [ %.pre, %42 ], [ %7, %44 ]
  %50 = phi %struct.Memory* [ %43, %42 ], [ %2, %44 ]
  %51 = add i64 %49, -8
  %52 = add i64 %47, 4
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %51 to i64*
  store i64 %48, i64* %53, align 8
  %54 = load i64, i64* %PC, align 8
  %55 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  store i64 %55, i64* %RAX, align 8, !tbaa !2428
  %56 = load i64, i64* %RBP, align 8
  %57 = add i64 %56, -8
  %58 = add i64 %54, 16
  store i64 %58, i64* %PC, align 8
  %59 = inttoptr i64 %57 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = mul i64 %60, 127773
  store i64 %61, i64* %RCX, align 8, !tbaa !2428
  %62 = sub i64 %55, %61
  %63 = sext i64 %62 to i128
  %64 = and i128 %63, -18446744073709551616
  %65 = zext i64 %62 to i128
  %66 = or i128 %64, %65
  %67 = mul nsw i128 %66, 16807
  %68 = trunc i128 %67 to i64
  store i64 %68, i64* %RAX, align 8, !tbaa !2428
  %69 = sext i64 %68 to i128
  %70 = icmp ne i128 %69, %67
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %12, align 1, !tbaa !2432
  %72 = trunc i128 %67 to i32
  %73 = and i32 %72, 255
  %74 = tail call i32 @llvm.ctpop.i32(i32 %73) #12
  %75 = trunc i32 %74 to i8
  %76 = and i8 %75, 1
  %77 = xor i8 %76, 1
  store i8 %77, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2450
  store i8 0, i8* %22, align 1, !tbaa !2447
  %78 = lshr i64 %68, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %25, align 1, !tbaa !2448
  store i8 %71, i8* %26, align 1, !tbaa !2449
  %80 = add i64 %54, 34
  store i64 %80, i64* %PC, align 8
  %81 = load i64, i64* %59, align 8
  %82 = mul i64 %81, 2836
  store i64 %82, i64* %RCX, align 8, !tbaa !2428
  %83 = sub i64 %68, %82
  store i64 %83, i64* %RAX, align 8, !tbaa !2428
  %84 = trunc i64 %83 to i32
  %85 = and i32 %84, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85) #12
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  %90 = icmp eq i64 %83, 0
  %91 = zext i1 %90 to i8
  %92 = lshr i64 %83, 63
  %93 = trunc i64 %92 to i8
  store i64 %83, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  %94 = add i64 %54, 54
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 %89, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2450
  store i8 %91, i8* %22, align 1, !tbaa !2447
  store i8 %93, i8* %25, align 1, !tbaa !2448
  store i8 0, i8* %26, align 1, !tbaa !2449
  %95 = icmp ne i8 %93, 0
  %.v = select i1 %95, i64 6, i64 28
  %96 = add i64 %94, %.v
  store i64 %96, i64* %PC, align 8, !tbaa !2428
  br i1 %95, label %block_40085f, label %block_400875

block_40085f:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1
  %97 = add i64 %83, 2147483647
  store i64 %97, i64* %RAX, align 8, !tbaa !2428
  %98 = icmp ugt i64 %83, -2147483648
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %12, align 1, !tbaa !2432
  %100 = trunc i64 %97 to i32
  %101 = and i32 %100, 255
  %102 = tail call i32 @llvm.ctpop.i32(i32 %101) #12
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  %105 = xor i8 %104, 1
  store i8 %105, i8* %19, align 1, !tbaa !2446
  %106 = xor i64 %83, 16
  %107 = xor i64 %106, %97
  %108 = lshr i64 %107, 4
  %109 = trunc i64 %108 to i8
  %110 = and i8 %109, 1
  store i8 %110, i8* %27, align 1, !tbaa !2450
  %111 = icmp eq i64 %97, 0
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %22, align 1, !tbaa !2447
  %113 = lshr i64 %97, 63
  %114 = trunc i64 %113 to i8
  store i8 %114, i8* %25, align 1, !tbaa !2448
  %115 = xor i64 %113, %92
  %116 = add nuw nsw i64 %115, %113
  %117 = icmp eq i64 %116, 2
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %26, align 1, !tbaa !2449
  %119 = add i64 %96, 22
  store i64 %119, i64* %PC, align 8
  store i64 %97, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602050__data_type* @seg_602050__data to i64), i64 16) to i64*), align 16
  br label %block_400875

block_400875:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1, %block_40085f
  %120 = phi i64 [ %83, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1 ], [ %97, %block_40085f ]
  %121 = phi i64 [ %96, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit1 ], [ %119, %block_40085f ]
  store i64 32, i64* %RCX, align 8, !tbaa !2428
  store i64 %120, i64* %RAX, align 8, !tbaa !2428
  %122 = ashr i64 %120, 63
  store i64 %122, i64* %RDX, align 8, !tbaa !2428
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

; <label>:135:                                    ; preds = %block_400875
  %136 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %123, %struct.Memory* %50) #13
  %.pre3 = load i64, i64* %RDX, align 8
  %.pre4 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:137:                                    ; preds = %block_400875
  %138 = srem i128 %127, 32
  %139 = trunc i128 %138 to i64
  store i64 %129, i64* %28, align 8, !tbaa !2428
  store i64 %139, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 0, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2450
  store i8 0, i8* %22, align 1, !tbaa !2447
  store i8 0, i8* %25, align 1, !tbaa !2448
  store i8 0, i8* %26, align 1, !tbaa !2449
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %137, %135
  %140 = phi i64 [ %.pre4, %135 ], [ %123, %137 ]
  %141 = phi i64 [ %.pre3, %135 ], [ %139, %137 ]
  %142 = phi %struct.Memory* [ %136, %135 ], [ %50, %137 ]
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
  %152 = tail call i32 @llvm.ctpop.i32(i32 %151) #12
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  %155 = xor i8 %154, 1
  store i8 %155, i8* %19, align 1, !tbaa !2446
  %156 = icmp eq i64 %149, 0
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %22, align 1, !tbaa !2447
  %158 = lshr i64 %148, 63
  %159 = trunc i64 %158 to i8
  store i8 %159, i8* %25, align 1, !tbaa !2448
  store i8 0, i8* %26, align 1, !tbaa !2449
  store i8 0, i8* %27, align 1, !tbaa !2450
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
  store i64 %172, i64* %PC, align 8, !tbaa !2428
  %173 = add i64 %166, 16
  store i64 %173, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %142
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4013b0_heap_adjust(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4013b0:
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
  %47 = tail call i32 @llvm.ctpop.i32(i32 %46) #12
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
  store i8 %56, i8* %57, align 1, !tbaa !2450
  %58 = icmp eq i64 %41, 0
  %59 = zext i1 %58 to i8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %59, i8* %60, align 1, !tbaa !2447
  %61 = lshr i64 %41, 63
  %62 = trunc i64 %61 to i8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %62, i8* %63, align 1, !tbaa !2448
  %64 = lshr i64 %40, 63
  %65 = xor i64 %61, %64
  %66 = xor i64 %61, 1
  %67 = add nuw nsw i64 %65, %66
  %68 = icmp eq i64 %67, 2
  %69 = zext i1 %68 to i8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %69, i8* %70, align 1, !tbaa !2449
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
  %88 = trunc i64 %87 to i32
  %89 = and i64 %87, 4294967295
  store i64 %89, i64* %RCX, align 8, !tbaa !2428
  %90 = add i64 %72, -32
  %91 = add i64 %74, 17
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %90 to i32*
  store i32 %88, i32* %92, align 4
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_4013df

block_40149c.loopexit:                            ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  br label %block_40149c

block_40149c:                                     ; preds = %block_40149c.loopexit, %block_401474
  %94 = phi i64 [ %230, %block_401474 ], [ %195, %block_40149c.loopexit ]
  %95 = phi i64 [ %395, %block_401474 ], [ %196, %block_40149c.loopexit ]
  %96 = add i64 %95, -32
  %97 = add i64 %94, 4
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %96 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %RAX, align 8, !tbaa !2428
  %101 = add i64 %95, -16
  %102 = add i64 %94, 8
  store i64 %102, i64* %PC, align 8
  %103 = inttoptr i64 %101 to i64*
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %RCX, align 8, !tbaa !2428
  %105 = add i64 %95, -24
  %106 = add i64 %94, 12
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %105 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %RDX, align 8, !tbaa !2428
  %110 = shl nsw i64 %109, 3
  %111 = add i64 %110, %104
  %112 = add i64 %94, 16
  store i64 %112, i64* %PC, align 8
  %113 = inttoptr i64 %111 to i64*
  store i64 %100, i64* %113, align 8
  %114 = load i64, i64* %PC, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %PC, align 8
  %116 = load i64, i64* %8, align 8, !tbaa !2428
  %117 = add i64 %116, 8
  %118 = inttoptr i64 %116 to i64*
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %RBP, align 8, !tbaa !2428
  store i64 %117, i64* %8, align 8, !tbaa !2428
  %120 = add i64 %114, 2
  store i64 %120, i64* %PC, align 8
  %121 = inttoptr i64 %117 to i64*
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %PC, align 8, !tbaa !2428
  %123 = add i64 %116, 16
  store i64 %123, i64* %8, align 8, !tbaa !2428
  ret %struct.Memory* %167

block_4013df:                                     ; preds = %block_401479, %block_4013b0
  %124 = phi i64 [ %.pre, %block_4013b0 ], [ %229, %block_401479 ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_4013b0 ], [ %167, %block_401479 ]
  store i64 2, i64* %RAX, align 8, !tbaa !2428
  %125 = load i64, i64* %RBP, align 8
  %126 = add i64 %125, -24
  %127 = add i64 %124, 8
  store i64 %127, i64* %PC, align 8
  %128 = inttoptr i64 %126 to i32*
  %129 = load i32, i32* %128, align 4
  %130 = zext i32 %129 to i64
  store i64 %130, i64* %RCX, align 8, !tbaa !2428
  %131 = add i64 %125, -20
  %132 = add i64 %124, 11
  store i64 %132, i64* %PC, align 8
  %133 = inttoptr i64 %131 to i32*
  %134 = load i32, i32* %133, align 4
  %135 = zext i32 %134 to i64
  store i64 %135, i64* %RDX, align 8, !tbaa !2428
  %136 = add i64 %125, -36
  %137 = add i64 %124, 14
  store i64 %137, i64* %PC, align 8
  %138 = inttoptr i64 %136 to i32*
  store i32 2, i32* %138, align 4
  %139 = load i32, i32* %EDX, align 4
  %140 = zext i32 %139 to i64
  %141 = load i64, i64* %PC, align 8
  store i64 %140, i64* %RAX, align 8, !tbaa !2428
  %142 = sext i32 %139 to i64
  %143 = lshr i64 %142, 32
  store i64 %143, i64* %93, align 8, !tbaa !2428
  %144 = load i64, i64* %RBP, align 8
  %145 = add i64 %144, -36
  %146 = add i64 %141, 6
  store i64 %146, i64* %PC, align 8
  %147 = inttoptr i64 %145 to i32*
  %148 = load i32, i32* %147, align 4
  %149 = zext i32 %148 to i64
  store i64 %149, i64* %RSI, align 8, !tbaa !2428
  %150 = add i64 %141, 8
  store i64 %150, i64* %PC, align 8
  %151 = sext i32 %148 to i64
  %152 = shl nuw i64 %143, 32
  %153 = or i64 %152, %140
  %154 = sdiv i64 %153, %151
  %155 = shl i64 %154, 32
  %156 = ashr exact i64 %155, 32
  %157 = icmp eq i64 %154, %156
  br i1 %157, label %160, label %158

; <label>:158:                                    ; preds = %block_4013df
  %159 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %150, %struct.Memory* %MEMORY.1) #13
  %.pre8 = load i32, i32* %EAX, align 4
  %.pre9 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:160:                                    ; preds = %block_4013df
  %161 = srem i64 %153, %151
  %162 = and i64 %154, 4294967295
  store i64 %162, i64* %RAX, align 8, !tbaa !2428
  %163 = and i64 %161, 4294967295
  store i64 %163, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %44, align 1, !tbaa !2432
  store i8 0, i8* %51, align 1, !tbaa !2446
  store i8 0, i8* %57, align 1, !tbaa !2450
  store i8 0, i8* %60, align 1, !tbaa !2447
  store i8 0, i8* %63, align 1, !tbaa !2448
  store i8 0, i8* %70, align 1, !tbaa !2449
  %164 = trunc i64 %154 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %160, %158
  %165 = phi i64 [ %.pre9, %158 ], [ %150, %160 ]
  %166 = phi i32 [ %.pre8, %158 ], [ %164, %160 ]
  %167 = phi %struct.Memory* [ %159, %158 ], [ %MEMORY.1, %160 ]
  %168 = load i32, i32* %ECX, align 4
  %169 = sub i32 %168, %166
  %170 = icmp ult i32 %168, %166
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %44, align 1, !tbaa !2432
  %172 = and i32 %169, 255
  %173 = tail call i32 @llvm.ctpop.i32(i32 %172) #12
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  %176 = xor i8 %175, 1
  store i8 %176, i8* %51, align 1, !tbaa !2446
  %177 = xor i32 %166, %168
  %178 = xor i32 %177, %169
  %179 = lshr i32 %178, 4
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  store i8 %181, i8* %57, align 1, !tbaa !2450
  %182 = icmp eq i32 %169, 0
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %60, align 1, !tbaa !2447
  %184 = lshr i32 %169, 31
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %63, align 1, !tbaa !2448
  %186 = lshr i32 %168, 31
  %187 = lshr i32 %166, 31
  %188 = xor i32 %187, %186
  %189 = xor i32 %184, %186
  %190 = add nuw nsw i32 %189, %188
  %191 = icmp eq i32 %190, 2
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %70, align 1, !tbaa !2449
  %193 = icmp ne i8 %185, 0
  %194 = xor i1 %193, %191
  %.demorgan = or i1 %182, %194
  %.v = select i1 %.demorgan, i64 8, i64 167
  %195 = add i64 %165, %.v
  store i64 %195, i64* %PC, align 8, !tbaa !2428
  %196 = load i64, i64* %RBP, align 8
  br i1 %.demorgan, label %block_4013fd, label %block_40149c.loopexit

block_401479:                                     ; preds = %block_40144e
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
  br label %block_4013df

block_401474:                                     ; preds = %block_40144e
  %230 = add i64 %456, 40
  store i64 %230, i64* %PC, align 8, !tbaa !2428
  br label %block_40149c

block_401412:                                     ; preds = %block_4013fd
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
  %248 = add i64 %234, %247
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
  %265 = tail call i32 @llvm.ctpop.i32(i32 %264) #12
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  %268 = xor i8 %267, 1
  store i8 %268, i8* %51, align 1, !tbaa !2446
  %269 = xor i32 %258, %257
  %270 = lshr i32 %269, 4
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  store i8 %272, i8* %57, align 1, !tbaa !2450
  %273 = zext i1 %261 to i8
  store i8 %273, i8* %60, align 1, !tbaa !2447
  %274 = lshr i32 %258, 31
  %275 = trunc i32 %274 to i8
  store i8 %275, i8* %63, align 1, !tbaa !2448
  %276 = lshr i32 %257, 31
  %277 = xor i32 %274, %276
  %278 = add nuw nsw i32 %277, %274
  %279 = icmp eq i32 %278, 2
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %70, align 1, !tbaa !2449
  %281 = sext i32 %258 to i64
  store i64 %281, i64* %RDI, align 8, !tbaa !2428
  %282 = shl nsw i64 %281, 3
  %283 = add i64 %255, %282
  %284 = add i64 %393, 41
  store i64 %284, i64* %PC, align 8
  %285 = inttoptr i64 %283 to i64*
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %RDX, align 8, !tbaa !2428
  %287 = shl i64 %286, 3
  %288 = add i64 %253, %287
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
  %297 = tail call i32 @llvm.ctpop.i32(i32 %296) #12
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = xor i8 %299, 1
  store i8 %300, i8* %51, align 1, !tbaa !2446
  %301 = xor i64 %291, %251
  %302 = xor i64 %301, %292
  %303 = lshr i64 %302, 4
  %304 = trunc i64 %303 to i8
  %305 = and i8 %304, 1
  store i8 %305, i8* %57, align 1, !tbaa !2450
  %306 = icmp eq i64 %292, 0
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %60, align 1, !tbaa !2447
  %308 = lshr i64 %292, 63
  %309 = trunc i64 %308 to i8
  store i8 %309, i8* %63, align 1, !tbaa !2448
  %310 = lshr i64 %251, 63
  %311 = lshr i64 %291, 63
  %312 = xor i64 %311, %310
  %313 = xor i64 %308, %310
  %314 = add nuw nsw i64 %313, %312
  %315 = icmp eq i64 %314, 2
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %70, align 1, !tbaa !2449
  %317 = or i1 %306, %293
  %.v14 = select i1 %317, i64 60, i64 51
  %318 = add i64 %393, %.v14
  store i64 %318, i64* %PC, align 8, !tbaa !2428
  br i1 %317, label %block_40144e, label %block_401445

block_4013fd:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %319 = add i64 %196, -24
  %320 = add i64 %195, 3
  store i64 %320, i64* %PC, align 8
  %321 = inttoptr i64 %319 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RAX, align 8, !tbaa !2428
  %324 = add i64 %195, 6
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
  %333 = tail call i32 @llvm.ctpop.i32(i32 %332) #12
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  store i8 %336, i8* %51, align 1, !tbaa !2446
  %337 = xor i32 %325, %322
  %338 = xor i32 %337, %326
  %339 = lshr i32 %338, 4
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  store i8 %341, i8* %57, align 1, !tbaa !2450
  %342 = icmp eq i32 %326, 0
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %60, align 1, !tbaa !2447
  %344 = lshr i32 %326, 31
  %345 = trunc i32 %344 to i8
  store i8 %345, i8* %63, align 1, !tbaa !2448
  %346 = lshr i32 %322, 31
  %347 = lshr i32 %325, 31
  %348 = xor i32 %344, %346
  %349 = xor i32 %344, %347
  %350 = add nuw nsw i32 %348, %349
  %351 = icmp eq i32 %350, 2
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %70, align 1, !tbaa !2449
  %353 = add i64 %196, -28
  %354 = add i64 %195, 9
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
  %371 = tail call i32 @llvm.ctpop.i32(i32 %370) #12
  %372 = trunc i32 %371 to i8
  %373 = and i8 %372, 1
  %374 = xor i8 %373, 1
  store i8 %374, i8* %51, align 1, !tbaa !2446
  %375 = xor i32 %366, %361
  %376 = xor i32 %375, %367
  %377 = lshr i32 %376, 4
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  store i8 %379, i8* %57, align 1, !tbaa !2450
  %380 = icmp eq i32 %367, 0
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %60, align 1, !tbaa !2447
  %382 = lshr i32 %367, 31
  %383 = trunc i32 %382 to i8
  store i8 %383, i8* %63, align 1, !tbaa !2448
  %384 = lshr i32 %361, 31
  %385 = lshr i32 %366, 31
  %386 = xor i32 %385, %384
  %387 = xor i32 %382, %384
  %388 = add nuw nsw i32 %387, %386
  %389 = icmp eq i32 %388, 2
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %70, align 1, !tbaa !2449
  %391 = icmp ne i8 %383, 0
  %392 = xor i1 %391, %389
  %.v12 = select i1 %392, i64 12, i64 72
  %393 = add i64 %358, %.v12
  store i64 %393, i64* %PC, align 8, !tbaa !2428
  br i1 %392, label %block_401412, label %block_40144e

block_40144e:                                     ; preds = %block_4013fd, %block_401445, %block_401412
  %394 = phi i64 [ %393, %block_4013fd ], [ %.pre10, %block_401445 ], [ %318, %block_401412 ]
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
  %427 = add i64 %411, %426
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
  %436 = tail call i32 @llvm.ctpop.i32(i32 %435) #12
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  %439 = xor i8 %438, 1
  store i8 %439, i8* %51, align 1, !tbaa !2446
  %440 = xor i64 %430, %409
  %441 = xor i64 %440, %431
  %442 = lshr i64 %441, 4
  %443 = trunc i64 %442 to i8
  %444 = and i8 %443, 1
  store i8 %444, i8* %57, align 1, !tbaa !2450
  %445 = icmp eq i64 %431, 0
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %60, align 1, !tbaa !2447
  %447 = lshr i64 %431, 63
  %448 = trunc i64 %447 to i8
  store i8 %448, i8* %63, align 1, !tbaa !2448
  %449 = lshr i64 %409, 63
  %450 = lshr i64 %430, 63
  %451 = xor i64 %450, %449
  %452 = xor i64 %447, %449
  %453 = add nuw nsw i64 %452, %451
  %454 = icmp eq i64 %453, 2
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %70, align 1, !tbaa !2449
  %.v13 = select i1 %432, i64 38, i64 43
  %456 = add i64 %394, %.v13
  store i64 %456, i64* %PC, align 8, !tbaa !2428
  br i1 %432, label %block_401474, label %block_401479

block_401445:                                     ; preds = %block_401412
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
  %469 = tail call i32 @llvm.ctpop.i32(i32 %468) #12
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  %472 = xor i8 %471, 1
  store i8 %472, i8* %51, align 1, !tbaa !2446
  %473 = xor i32 %462, %461
  %474 = lshr i32 %473, 4
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  store i8 %476, i8* %57, align 1, !tbaa !2450
  %477 = zext i1 %465 to i8
  store i8 %477, i8* %60, align 1, !tbaa !2447
  %478 = lshr i32 %462, 31
  %479 = trunc i32 %478 to i8
  store i8 %479, i8* %63, align 1, !tbaa !2448
  %480 = lshr i32 %461, 31
  %481 = xor i32 %478, %480
  %482 = add nuw nsw i32 %481, %478
  %483 = icmp eq i32 %482, 2
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %70, align 1, !tbaa !2449
  %485 = add i64 %318, 9
  store i64 %485, i64* %PC, align 8
  store i32 %462, i32* %460, align 4
  %.pre10 = load i64, i64* %PC, align 8
  br label %block_40144e
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006e0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4006e0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 6299752, i64* %RSI, align 8, !tbaa !2428
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
  %10 = add i64 %8, -6299752
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
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #12
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
  br i1 %29, label %block_400718, label %block_400703

block_400718:                                     ; preds = %block_400703, %block_4006e0
  %34 = phi i64 [ %44, %block_400703 ], [ %33, %block_4006e0 ]
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

block_400703:                                     ; preds = %block_4006e0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2432
  store i8 1, i8* %12, align 1, !tbaa !2446
  store i8 1, i8* %14, align 1, !tbaa !2447
  store i8 0, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %13, align 1, !tbaa !2450
  %44 = add i64 %33, 21
  store i64 %44, i64* %PC, align 8, !tbaa !2428
  br label %block_400718
}

; Function Attrs: noinline
define %struct.Memory* @sub_400750_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400750:
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
  %13 = tail call %struct.Memory* @sub_4006e0_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401654__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_401654:
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
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #12
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
define %struct.Memory* @sub_4005d8__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4005d8:
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
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #12
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
  br i1 %18, label %block_4005ea, label %block_4005e8

block_4005e8:                                     ; preds = %block_4005d8
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_4005ea

block_4005ea:                                     ; preds = %block_4005e8, %block_4005d8
  %27 = phi i64 [ %22, %block_4005d8 ], [ %.pre1, %block_4005e8 ]
  %28 = phi i64 [ %4, %block_4005d8 ], [ %.pre, %block_4005e8 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005d8 ], [ %26, %block_4005e8 ]
  %29 = add i64 %28, 8
  store i64 %29, i64* %RSP, align 8, !tbaa !2428
  %30 = icmp ugt i64 %28, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %5, align 1, !tbaa !2432
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #12
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

; Function Attrs: noinline
define %struct.Memory* @sub_400720___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400720:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 40) to i8*), align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4, align 1, !tbaa !2432
  %5 = zext i8 %3 to i32
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #12
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
  br i1 %12, label %block_400729, label %block_400740

block_400740:                                     ; preds = %block_400720
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

block_400729:                                     ; preds = %block_400720
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
  %36 = tail call %struct.Memory* @sub_4006b0_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
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
define %struct.Memory* @sub_400760_generate_test_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400760:
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
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #12
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
  store i8 %25, i8* %26, align 1, !tbaa !2450
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1, !tbaa !2447
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1, !tbaa !2448
  %33 = lshr i64 %7, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1, !tbaa !2449
  store i64 add (i64 ptrtoint (%seg_401660__rodata_type* @seg_401660__rodata to i64), i64 4), i64* %RAX, align 8, !tbaa !2428
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
  br label %block_400796

block_400796:                                     ; preds = %block_4007a4, %block_400760
  %81 = phi i64 [ %210, %block_4007a4 ], [ %.pre, %block_400760 ]
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
  %97 = tail call i32 @llvm.ctpop.i32(i32 %96) #12
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  %100 = xor i8 %99, 1
  store i8 %100, i8* %20, align 1, !tbaa !2446
  %101 = xor i64 %91, %87
  %102 = xor i64 %101, %92
  %103 = lshr i64 %102, 4
  %104 = trunc i64 %103 to i8
  %105 = and i8 %104, 1
  store i8 %105, i8* %26, align 1, !tbaa !2450
  %106 = icmp eq i64 %92, 0
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %29, align 1, !tbaa !2447
  %108 = lshr i64 %92, 63
  %109 = trunc i64 %108 to i8
  store i8 %109, i8* %32, align 1, !tbaa !2448
  %110 = lshr i64 %87, 63
  %111 = lshr i64 %91, 63
  %112 = xor i64 %111, %110
  %113 = xor i64 %108, %110
  %114 = add nuw nsw i64 %113, %112
  %115 = icmp eq i64 %114, 2
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %38, align 1, !tbaa !2449
  %.v = select i1 %93, i64 14, i64 66
  %117 = add i64 %81, %.v
  store i64 %117, i64* %PC, align 8, !tbaa !2428
  br i1 %93, label %block_4007a4, label %block_4007d8

block_4007a4:                                     ; preds = %block_400796
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
  %131 = tail call %struct.Memory* @sub_4007f0_random4_renamed_(%struct.State* nonnull %0, i64 %126, %struct.Memory* %60)
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
  store i8 %142, i8* %DL, align 1, !tbaa !2451
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
  %162 = tail call i32 @llvm.ctpop.i32(i32 %161) #12
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  %165 = xor i8 %164, 1
  store i8 %165, i8* %20, align 1, !tbaa !2446
  %166 = xor i64 %155, %154
  %167 = lshr i64 %166, 4
  %168 = trunc i64 %167 to i8
  %169 = and i8 %168, 1
  store i8 %169, i8* %26, align 1, !tbaa !2450
  %170 = zext i1 %157 to i8
  store i8 %170, i8* %29, align 1, !tbaa !2447
  %171 = lshr i64 %155, 63
  %172 = trunc i64 %171 to i8
  store i8 %172, i8* %32, align 1, !tbaa !2448
  %173 = lshr i64 %154, 63
  %174 = xor i64 %171, %173
  %175 = add nuw nsw i64 %174, %171
  %176 = icmp eq i64 %175, 2
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %38, align 1, !tbaa !2449
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
  %192 = tail call i32 @llvm.ctpop.i32(i32 %191) #12
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  %195 = xor i8 %194, 1
  store i8 %195, i8* %20, align 1, !tbaa !2446
  %196 = xor i32 %185, %184
  %197 = lshr i32 %196, 4
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  store i8 %199, i8* %26, align 1, !tbaa !2450
  %200 = zext i1 %188 to i8
  store i8 %200, i8* %29, align 1, !tbaa !2447
  %201 = lshr i32 %185, 31
  %202 = trunc i32 %201 to i8
  store i8 %202, i8* %32, align 1, !tbaa !2448
  %203 = lshr i32 %184, 31
  %204 = xor i32 %201, %203
  %205 = add nuw nsw i32 %204, %201
  %206 = icmp eq i32 %205, 2
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %38, align 1, !tbaa !2449
  %208 = add i64 %181, 9
  store i64 %208, i64* %PC, align 8
  store i32 %185, i32* %183, align 4
  %209 = load i64, i64* %PC, align 8
  %210 = add i64 %209, -61
  store i64 %210, i64* %PC, align 8, !tbaa !2428
  br label %block_400796

block_4007d8:                                     ; preds = %block_400796
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
  %221 = tail call i32 @llvm.ctpop.i32(i32 %220) #12
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  %224 = xor i8 %223, 1
  store i8 %224, i8* %20, align 1, !tbaa !2446
  %225 = xor i64 %215, 16
  %226 = xor i64 %225, %216
  %227 = lshr i64 %226, 4
  %228 = trunc i64 %227 to i8
  %229 = and i8 %228, 1
  store i8 %229, i8* %26, align 1, !tbaa !2450
  %230 = icmp eq i64 %216, 0
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %29, align 1, !tbaa !2447
  %232 = lshr i64 %216, 63
  %233 = trunc i64 %232 to i8
  store i8 %233, i8* %32, align 1, !tbaa !2448
  %234 = lshr i64 %215, 63
  %235 = xor i64 %232, %234
  %236 = add nuw nsw i64 %235, %232
  %237 = icmp eq i64 %236, 2
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %38, align 1, !tbaa !2449
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
  ret %struct.Memory* %60
}

; Function Attrs: noinline
define %struct.Memory* @sub_4008b0_compdecomp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4008b0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %1, 1
  store i64 %7, i64* %PC, align 8
  %8 = load i64, i64* %RSP, align 8, !tbaa !2428
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %6, i64* %10, align 8
  %11 = load i64, i64* %PC, align 8
  store i64 %9, i64* %RBP, align 8, !tbaa !2428
  %12 = load i64, i64* %R15, align 8
  %13 = add i64 %11, 5
  store i64 %13, i64* %PC, align 8
  %14 = add i64 %8, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15, align 8
  %16 = load i64, i64* %R14, align 8
  %17 = load i64, i64* %PC, align 8
  %18 = add i64 %17, 2
  store i64 %18, i64* %PC, align 8
  %19 = add i64 %8, -24
  %20 = inttoptr i64 %19 to i64*
  store i64 %16, i64* %20, align 8
  %21 = load i64, i64* %RBX, align 8
  %22 = load i64, i64* %PC, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %PC, align 8
  %24 = add i64 %8, -32
  %25 = inttoptr i64 %24 to i64*
  store i64 %21, i64* %25, align 8
  %26 = load i64, i64* %PC, align 8
  %27 = add i64 %8, -13112
  store i64 %27, i64* %RSP, align 8, !tbaa !2428
  %28 = icmp ult i64 %24, 13080
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %29, i8* %30, align 1, !tbaa !2432
  %31 = trunc i64 %27 to i32
  %32 = and i32 %31, 255
  %33 = tail call i32 @llvm.ctpop.i32(i32 %32) #12
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1, !tbaa !2446
  %38 = xor i64 %24, 16
  %39 = xor i64 %38, %27
  %40 = lshr i64 %39, 4
  %41 = trunc i64 %40 to i8
  %42 = and i8 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %42, i8* %43, align 1, !tbaa !2450
  %44 = icmp eq i64 %27, 0
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %45, i8* %46, align 1, !tbaa !2447
  %47 = lshr i64 %27, 63
  %48 = trunc i64 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %48, i8* %49, align 1, !tbaa !2448
  %50 = lshr i64 %24, 63
  %51 = xor i64 %47, %50
  %52 = add nuw nsw i64 %51, %50
  %53 = icmp eq i64 %52, 2
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %54, i8* %55, align 1, !tbaa !2449
  %56 = load i64, i64* %RBP, align 8
  %57 = add i64 %56, -32
  %58 = load i64, i64* %RDI, align 8
  %59 = add i64 %26, 11
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %57 to i64*
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -40
  %63 = load i64, i64* %RSI, align 8
  %64 = load i64, i64* %PC, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %62 to i64*
  store i64 %63, i64* %66, align 8
  %67 = load i64, i64* %RBP, align 8
  %68 = add i64 %67, -32
  %69 = load i64, i64* %PC, align 8
  %70 = add i64 %69, 4
  store i64 %70, i64* %PC, align 8
  %71 = inttoptr i64 %68 to i64*
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %RSI, align 8, !tbaa !2428
  %73 = add i64 %67, -112
  %74 = add i64 %69, 8
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %73 to i64*
  store i64 %72, i64* %75, align 8
  %76 = load i64, i64* %RBP, align 8
  %77 = add i64 %76, -40
  %78 = load i64, i64* %PC, align 8
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC, align 8
  %80 = inttoptr i64 %77 to i64*
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %RSI, align 8, !tbaa !2428
  %83 = icmp eq i64 %81, -1
  %84 = icmp eq i64 %82, 0
  %85 = or i1 %83, %84
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %30, align 1, !tbaa !2432
  %87 = trunc i64 %82 to i32
  %88 = and i32 %87, 255
  %89 = tail call i32 @llvm.ctpop.i32(i32 %88) #12
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  store i8 %92, i8* %37, align 1, !tbaa !2446
  %93 = xor i64 %82, %81
  %94 = lshr i64 %93, 4
  %95 = trunc i64 %94 to i8
  %96 = and i8 %95, 1
  store i8 %96, i8* %43, align 1, !tbaa !2450
  %97 = zext i1 %84 to i8
  store i8 %97, i8* %46, align 1, !tbaa !2447
  %98 = lshr i64 %82, 63
  %99 = trunc i64 %98 to i8
  store i8 %99, i8* %49, align 1, !tbaa !2448
  %100 = lshr i64 %81, 63
  %101 = xor i64 %98, %100
  %102 = add nuw nsw i64 %101, %98
  %103 = icmp eq i64 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %55, align 1, !tbaa !2449
  store i64 %82, i64* %RDI, align 8, !tbaa !2428
  %105 = add i64 %78, -656
  %106 = add i64 %78, 16
  %107 = load i64, i64* %RSP, align 8, !tbaa !2428
  %108 = add i64 %107, -8
  %109 = inttoptr i64 %108 to i64*
  store i64 %106, i64* %109, align 8
  store i64 %108, i64* %RSP, align 8, !tbaa !2428
  store i64 %105, i64* %PC, align 8, !tbaa !2428
  %110 = tail call fastcc %struct.Memory* @ext_6020d8_malloc(%struct.State* nonnull %0, %struct.Memory* %2)
  %111 = load i64, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %30, align 1, !tbaa !2432
  store i8 1, i8* %37, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i64 256, i64* %RDX, align 8, !tbaa !2428
  %112 = load i64, i64* %RBP, align 8
  %113 = add i64 %112, -10624
  store i64 %113, i64* %RDI, align 8, !tbaa !2428
  store i64 2048, i64* %RSI, align 8, !tbaa !2428
  %114 = add i64 %112, -10368
  store i64 %114, i64* %R9, align 8, !tbaa !2428
  %115 = add i64 %112, -8320
  store i64 %115, i64* %R10, align 8, !tbaa !2428
  %116 = add i64 %112, -6272
  store i64 %116, i64* %R11, align 8, !tbaa !2428
  store i64 4096, i64* %R8, align 8, !tbaa !2428
  store i64 4096, i64* %RBX, align 8, !tbaa !2428
  %117 = add i64 %112, -4224
  store i64 %117, i64* %R14, align 8, !tbaa !2428
  %118 = add i64 %112, -120
  %119 = load i64, i64* %RAX, align 8
  %120 = add i64 %111, 64
  store i64 %120, i64* %PC, align 8
  %121 = inttoptr i64 %118 to i64*
  store i64 %119, i64* %121, align 8
  %122 = load i64, i64* %RBP, align 8
  %123 = add i64 %122, -120
  %124 = load i64, i64* %PC, align 8
  %125 = add i64 %124, 4
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %123 to i64*
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %RAX, align 8, !tbaa !2428
  %128 = add i64 %122, -40
  %129 = add i64 %124, 8
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %128 to i64*
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %R15, align 8, !tbaa !2428
  %133 = icmp eq i64 %131, -1
  %134 = icmp eq i64 %132, 0
  %135 = or i1 %133, %134
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %30, align 1, !tbaa !2432
  %137 = trunc i64 %132 to i32
  %138 = and i32 %137, 255
  %139 = tail call i32 @llvm.ctpop.i32(i32 %138) #12
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  %142 = xor i8 %141, 1
  store i8 %142, i8* %37, align 1, !tbaa !2446
  %143 = xor i64 %132, %131
  %144 = lshr i64 %143, 4
  %145 = trunc i64 %144 to i8
  %146 = and i8 %145, 1
  store i8 %146, i8* %43, align 1, !tbaa !2450
  %147 = zext i1 %134 to i8
  store i8 %147, i8* %46, align 1, !tbaa !2447
  %148 = lshr i64 %132, 63
  %149 = trunc i64 %148 to i8
  store i8 %149, i8* %49, align 1, !tbaa !2448
  %150 = lshr i64 %131, 63
  %151 = xor i64 %148, %150
  %152 = add nuw nsw i64 %151, %148
  %153 = icmp eq i64 %152, 2
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %55, align 1, !tbaa !2449
  %155 = add i64 %122, -13008
  %156 = load i64, i64* %RDI, align 8
  %157 = add i64 %124, 23
  store i64 %157, i64* %PC, align 8
  %158 = inttoptr i64 %155 to i64*
  store i64 %156, i64* %158, align 8
  %159 = load i64, i64* %RAX, align 8
  %160 = load i64, i64* %PC, align 8
  store i64 %159, i64* %RDI, align 8, !tbaa !2428
  %161 = load i64, i64* %RBP, align 8
  %162 = add i64 %161, -13016
  %163 = load i64, i64* %RSI, align 8
  %164 = add i64 %160, 10
  store i64 %164, i64* %PC, align 8
  %165 = inttoptr i64 %162 to i64*
  store i64 %163, i64* %165, align 8
  %166 = load i32, i32* %ECX, align 4
  %167 = zext i32 %166 to i64
  %168 = load i64, i64* %PC, align 8
  store i64 %167, i64* %RSI, align 8, !tbaa !2428
  %169 = load i64, i64* %RBP, align 8
  %170 = add i64 %169, -13024
  %171 = load i64, i64* %RDX, align 8
  %172 = add i64 %168, 9
  store i64 %172, i64* %PC, align 8
  %173 = inttoptr i64 %170 to i64*
  store i64 %171, i64* %173, align 8
  %174 = load i64, i64* %R15, align 8
  %175 = load i64, i64* %PC, align 8
  store i64 %174, i64* %RDX, align 8, !tbaa !2428
  %176 = load i64, i64* %RBP, align 8
  %177 = add i64 %176, -13032
  %178 = load i64, i64* %R14, align 8
  %179 = add i64 %175, 10
  store i64 %179, i64* %PC, align 8
  %180 = inttoptr i64 %177 to i64*
  store i64 %178, i64* %180, align 8
  %181 = load i64, i64* %RBP, align 8
  %182 = add i64 %181, -13036
  %183 = load i32, i32* %ECX, align 4
  %184 = load i64, i64* %PC, align 8
  %185 = add i64 %184, 6
  store i64 %185, i64* %PC, align 8
  %186 = inttoptr i64 %182 to i32*
  store i32 %183, i32* %186, align 4
  %187 = load i64, i64* %RBP, align 8
  %188 = add i64 %187, -13048
  %189 = load i64, i64* %R10, align 8
  %190 = load i64, i64* %PC, align 8
  %191 = add i64 %190, 7
  store i64 %191, i64* %PC, align 8
  %192 = inttoptr i64 %188 to i64*
  store i64 %189, i64* %192, align 8
  %193 = load i64, i64* %RBP, align 8
  %194 = add i64 %193, -13056
  %195 = load i64, i64* %R11, align 8
  %196 = load i64, i64* %PC, align 8
  %197 = add i64 %196, 7
  store i64 %197, i64* %PC, align 8
  %198 = inttoptr i64 %194 to i64*
  store i64 %195, i64* %198, align 8
  %199 = load i64, i64* %RBP, align 8
  %200 = add i64 %199, -13064
  %201 = load i64, i64* %RBX, align 8
  %202 = load i64, i64* %PC, align 8
  %203 = add i64 %202, 7
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %200 to i64*
  store i64 %201, i64* %204, align 8
  %205 = load i64, i64* %RBP, align 8
  %206 = add i64 %205, -13072
  %207 = load i64, i64* %R9, align 8
  %208 = load i64, i64* %PC, align 8
  %209 = add i64 %208, 7
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %206 to i64*
  store i64 %207, i64* %210, align 8
  %211 = load i64, i64* %PC, align 8
  %212 = add i64 %211, -870
  %213 = add i64 %211, 5
  %214 = load i64, i64* %RSP, align 8, !tbaa !2428
  %215 = add i64 %214, -8
  %216 = inttoptr i64 %215 to i64*
  store i64 %213, i64* %216, align 8
  store i64 %215, i64* %RSP, align 8, !tbaa !2428
  store i64 %212, i64* %PC, align 8, !tbaa !2428
  %217 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %110)
  %218 = load i64, i64* %RBP, align 8
  %219 = add i64 %218, -13032
  %220 = load i64, i64* %PC, align 8
  %221 = add i64 %220, 7
  store i64 %221, i64* %PC, align 8
  %222 = inttoptr i64 %219 to i64*
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %RAX, align 8, !tbaa !2428
  store i64 %223, i64* %RDI, align 8, !tbaa !2428
  %224 = add i64 %218, -13036
  %225 = add i64 %220, 16
  store i64 %225, i64* %PC, align 8
  %226 = inttoptr i64 %224 to i32*
  %227 = load i32, i32* %226, align 4
  %228 = zext i32 %227 to i64
  store i64 %228, i64* %RSI, align 8, !tbaa !2428
  %229 = add i64 %218, -13064
  %230 = add i64 %220, 23
  store i64 %230, i64* %PC, align 8
  %231 = inttoptr i64 %229 to i64*
  %232 = load i64, i64* %231, align 8
  store i64 %232, i64* %RDX, align 8, !tbaa !2428
  %233 = add i64 %220, -875
  %234 = add i64 %220, 28
  %235 = load i64, i64* %RSP, align 8, !tbaa !2428
  %236 = add i64 %235, -8
  %237 = inttoptr i64 %236 to i64*
  store i64 %234, i64* %237, align 8
  store i64 %236, i64* %RSP, align 8, !tbaa !2428
  store i64 %233, i64* %PC, align 8, !tbaa !2428
  %238 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %217)
  %239 = load i64, i64* %RBP, align 8
  %240 = add i64 %239, -13056
  %241 = load i64, i64* %PC, align 8
  %242 = add i64 %241, 7
  store i64 %242, i64* %PC, align 8
  %243 = inttoptr i64 %240 to i64*
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %RAX, align 8, !tbaa !2428
  store i64 %244, i64* %RDI, align 8, !tbaa !2428
  %245 = add i64 %239, -13036
  %246 = add i64 %241, 16
  store i64 %246, i64* %PC, align 8
  %247 = inttoptr i64 %245 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = zext i32 %248 to i64
  store i64 %249, i64* %RSI, align 8, !tbaa !2428
  %250 = add i64 %239, -13016
  %251 = add i64 %241, 23
  store i64 %251, i64* %PC, align 8
  %252 = inttoptr i64 %250 to i64*
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %RDX, align 8, !tbaa !2428
  %254 = add i64 %241, -903
  %255 = add i64 %241, 28
  %256 = load i64, i64* %RSP, align 8, !tbaa !2428
  %257 = add i64 %256, -8
  %258 = inttoptr i64 %257 to i64*
  store i64 %255, i64* %258, align 8
  store i64 %257, i64* %RSP, align 8, !tbaa !2428
  store i64 %254, i64* %PC, align 8, !tbaa !2428
  %259 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %238)
  %260 = load i64, i64* %RBP, align 8
  %261 = add i64 %260, -13048
  %262 = load i64, i64* %PC, align 8
  %263 = add i64 %262, 7
  store i64 %263, i64* %PC, align 8
  %264 = inttoptr i64 %261 to i64*
  %265 = load i64, i64* %264, align 8
  store i64 %265, i64* %RAX, align 8, !tbaa !2428
  store i64 %265, i64* %RDI, align 8, !tbaa !2428
  %266 = add i64 %260, -13036
  %267 = add i64 %262, 16
  store i64 %267, i64* %PC, align 8
  %268 = inttoptr i64 %266 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = zext i32 %269 to i64
  store i64 %270, i64* %RSI, align 8, !tbaa !2428
  %271 = add i64 %260, -13016
  %272 = add i64 %262, 23
  store i64 %272, i64* %PC, align 8
  %273 = inttoptr i64 %271 to i64*
  %274 = load i64, i64* %273, align 8
  store i64 %274, i64* %RDX, align 8, !tbaa !2428
  %275 = add i64 %262, -931
  %276 = add i64 %262, 28
  %277 = load i64, i64* %RSP, align 8, !tbaa !2428
  %278 = add i64 %277, -8
  %279 = inttoptr i64 %278 to i64*
  store i64 %276, i64* %279, align 8
  store i64 %278, i64* %RSP, align 8, !tbaa !2428
  store i64 %275, i64* %PC, align 8, !tbaa !2428
  %280 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %259)
  %281 = load i64, i64* %RBP, align 8
  %282 = add i64 %281, -13072
  %283 = load i64, i64* %PC, align 8
  %284 = add i64 %283, 7
  store i64 %284, i64* %PC, align 8
  %285 = inttoptr i64 %282 to i64*
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %RAX, align 8, !tbaa !2428
  store i64 %286, i64* %RDI, align 8, !tbaa !2428
  %287 = add i64 %281, -13036
  %288 = add i64 %283, 16
  store i64 %288, i64* %PC, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = zext i32 %290 to i64
  store i64 %291, i64* %RSI, align 8, !tbaa !2428
  %292 = add i64 %281, -13016
  %293 = add i64 %283, 23
  store i64 %293, i64* %PC, align 8
  %294 = inttoptr i64 %292 to i64*
  %295 = load i64, i64* %294, align 8
  store i64 %295, i64* %RDX, align 8, !tbaa !2428
  %296 = add i64 %283, -959
  %297 = add i64 %283, 28
  %298 = load i64, i64* %RSP, align 8, !tbaa !2428
  %299 = add i64 %298, -8
  %300 = inttoptr i64 %299 to i64*
  store i64 %297, i64* %300, align 8
  store i64 %299, i64* %RSP, align 8, !tbaa !2428
  store i64 %296, i64* %PC, align 8, !tbaa !2428
  %301 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %280)
  %302 = load i64, i64* %RBP, align 8
  %303 = add i64 %302, -13008
  %304 = load i64, i64* %PC, align 8
  %305 = add i64 %304, 7
  store i64 %305, i64* %PC, align 8
  %306 = inttoptr i64 %303 to i64*
  %307 = load i64, i64* %306, align 8
  store i64 %307, i64* %RDI, align 8, !tbaa !2428
  %308 = add i64 %302, -13036
  %309 = add i64 %304, 13
  store i64 %309, i64* %PC, align 8
  %310 = inttoptr i64 %308 to i32*
  %311 = load i32, i32* %310, align 4
  %312 = zext i32 %311 to i64
  store i64 %312, i64* %RSI, align 8, !tbaa !2428
  %313 = add i64 %302, -13024
  %314 = add i64 %304, 20
  store i64 %314, i64* %PC, align 8
  %315 = inttoptr i64 %313 to i64*
  %316 = load i64, i64* %315, align 8
  store i64 %316, i64* %RDX, align 8, !tbaa !2428
  %317 = add i64 %304, -987
  %318 = add i64 %304, 25
  %319 = load i64, i64* %RSP, align 8, !tbaa !2428
  %320 = add i64 %319, -8
  %321 = inttoptr i64 %320 to i64*
  store i64 %318, i64* %321, align 8
  store i64 %320, i64* %RSP, align 8, !tbaa !2428
  store i64 %317, i64* %PC, align 8, !tbaa !2428
  %322 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %301)
  %323 = load i64, i64* %RBP, align 8
  %324 = add i64 %323, -48
  %325 = load i64, i64* %PC, align 8
  %326 = add i64 %325, 8
  store i64 %326, i64* %PC, align 8
  %327 = inttoptr i64 %324 to i64*
  store i64 0, i64* %327, align 8
  %.pre = load i64, i64* %PC, align 8
  br label %block_400a0c

block_400a54:                                     ; preds = %block_400a0c
  %AL = bitcast %union.anon* %3 to i8*
  %CL = bitcast %union.anon* %4 to i8*
  %DL = bitcast %union.anon* %5 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %328 = add i64 %3204, -64
  %329 = add i64 %3238, 8
  store i64 %329, i64* %PC, align 8
  %330 = inttoptr i64 %328 to i64*
  store i64 0, i64* %330, align 8
  %331 = load i64, i64* %RBP, align 8
  %332 = add i64 %331, -48
  %333 = load i64, i64* %PC, align 8
  %334 = add i64 %333, 8
  store i64 %334, i64* %PC, align 8
  %335 = inttoptr i64 %332 to i64*
  store i64 0, i64* %335, align 8
  %.pre116 = load i64, i64* %PC, align 8
  br label %block_400a64

block_4012a8:                                     ; preds = %block_40129a
  %336 = add i64 %1693, -80
  %337 = add i64 %1727, 4
  store i64 %337, i64* %PC, align 8
  %338 = inttoptr i64 %336 to i64*
  %339 = load i64, i64* %338, align 8
  %340 = shl i64 %339, 1
  %341 = or i64 %340, 1
  store i64 %341, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %30, align 1, !tbaa !2432
  %342 = trunc i64 %341 to i32
  %343 = and i32 %342, 255
  %344 = tail call i32 @llvm.ctpop.i32(i32 %343) #12
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  %347 = xor i8 %346, 1
  store i8 %347, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 0, i8* %46, align 1, !tbaa !2447
  %348 = lshr i64 %339, 62
  %349 = and i64 %348, 1
  %350 = trunc i64 %349 to i8
  store i8 %350, i8* %49, align 1, !tbaa !2448
  %351 = lshr i64 %339, 62
  %352 = and i64 %351, 1
  %353 = xor i64 %349, %352
  %354 = add nuw nsw i64 %353, %349
  %355 = icmp eq i64 %354, 2
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %55, align 1, !tbaa !2449
  %357 = add i64 %1727, 16
  store i64 %357, i64* %PC, align 8
  store i64 %341, i64* %338, align 8
  %358 = load i64, i64* %RBP, align 8
  %359 = add i64 %358, -104
  %360 = load i64, i64* %PC, align 8
  %361 = add i64 %360, 4
  store i64 %361, i64* %PC, align 8
  %362 = inttoptr i64 %359 to i64*
  %363 = load i64, i64* %362, align 8
  store i64 %363, i64* %RAX, align 8, !tbaa !2428
  %364 = add i64 %360, 7
  store i64 %364, i64* %PC, align 8
  %365 = inttoptr i64 %363 to i8*
  %366 = load i8, i8* %365, align 1
  %367 = zext i8 %366 to i64
  store i64 %367, i64* %RCX, align 8, !tbaa !2428
  %368 = zext i8 %366 to i64
  store i64 %368, i64* %RAX, align 8, !tbaa !2428
  %369 = add i64 %358, -72
  %370 = add i64 %360, 13
  store i64 %370, i64* %PC, align 8
  %371 = inttoptr i64 %369 to i64*
  %372 = load i64, i64* %371, align 8
  %373 = and i64 %372, %368
  store i64 %373, i64* %RAX, align 8, !tbaa !2428
  %374 = trunc i64 %373 to i32
  %375 = tail call i32 @llvm.ctpop.i32(i32 %374) #12
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  %378 = xor i8 %377, 1
  %379 = icmp eq i64 %373, 0
  %380 = zext i1 %379 to i8
  store i8 0, i8* %30, align 1, !tbaa !2432
  store i8 %378, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 %380, i8* %46, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %.v163 = select i1 %379, i64 35, i64 23
  %381 = add i64 %360, %.v163
  store i64 %381, i64* %PC, align 8, !tbaa !2428
  br i1 %379, label %block_4012e0, label %block_4012cf

block_4011c3:                                     ; preds = %block_4011b0
  %382 = add i64 %494, -56
  %383 = add i64 %506, 4
  store i64 %383, i64* %PC, align 8
  %384 = inttoptr i64 %382 to i64*
  %385 = load i64, i64* %384, align 8
  %386 = add i64 %385, -1
  store i64 %386, i64* %RAX, align 8, !tbaa !2428
  %387 = icmp eq i64 %385, 0
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %30, align 1, !tbaa !2432
  %389 = trunc i64 %386 to i32
  %390 = and i32 %389, 255
  %391 = tail call i32 @llvm.ctpop.i32(i32 %390) #12
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  %394 = xor i8 %393, 1
  store i8 %394, i8* %37, align 1, !tbaa !2446
  %395 = xor i64 %386, %385
  %396 = lshr i64 %395, 4
  %397 = trunc i64 %396 to i8
  %398 = and i8 %397, 1
  store i8 %398, i8* %43, align 1, !tbaa !2450
  %399 = icmp eq i64 %386, 0
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %46, align 1, !tbaa !2447
  %401 = lshr i64 %386, 63
  %402 = trunc i64 %401 to i8
  store i8 %402, i8* %49, align 1, !tbaa !2448
  %403 = lshr i64 %385, 63
  %404 = xor i64 %401, %403
  %405 = add nuw nsw i64 %404, %403
  %406 = icmp eq i64 %405, 2
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %55, align 1, !tbaa !2449
  %408 = shl i64 %386, 3
  %409 = add i64 %494, -12736
  %410 = add i64 %409, %408
  %411 = add i64 %506, 16
  store i64 %411, i64* %PC, align 8
  %412 = inttoptr i64 %410 to i64*
  %413 = load i64, i64* %412, align 8
  store i64 %413, i64* %RAX, align 8, !tbaa !2428
  %414 = add i64 %506, 20
  store i64 %414, i64* %PC, align 8
  %415 = load i64, i64* %384, align 8
  store i64 %415, i64* %RCX, align 8, !tbaa !2428
  %416 = shl i64 %415, 3
  %417 = add i64 %416, -12736
  %418 = add i64 %417, %494
  %419 = add i64 %506, 28
  store i64 %419, i64* %PC, align 8
  %420 = inttoptr i64 %418 to i64*
  store i64 %413, i64* %420, align 8
  %421 = load i64, i64* %RBP, align 8
  %422 = add i64 %421, -56
  %423 = load i64, i64* %PC, align 8
  %424 = add i64 %423, 4
  store i64 %424, i64* %PC, align 8
  %425 = inttoptr i64 %422 to i64*
  %426 = load i64, i64* %425, align 8
  %427 = add i64 %426, -1
  store i64 %427, i64* %RAX, align 8, !tbaa !2428
  %428 = icmp eq i64 %426, 0
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %30, align 1, !tbaa !2432
  %430 = trunc i64 %427 to i32
  %431 = and i32 %430, 255
  %432 = tail call i32 @llvm.ctpop.i32(i32 %431) #12
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  store i8 %435, i8* %37, align 1, !tbaa !2446
  %436 = xor i64 %427, %426
  %437 = lshr i64 %436, 4
  %438 = trunc i64 %437 to i8
  %439 = and i8 %438, 1
  store i8 %439, i8* %43, align 1, !tbaa !2450
  %440 = icmp eq i64 %427, 0
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %46, align 1, !tbaa !2447
  %442 = lshr i64 %427, 63
  %443 = trunc i64 %442 to i8
  store i8 %443, i8* %49, align 1, !tbaa !2448
  %444 = lshr i64 %426, 63
  %445 = xor i64 %442, %444
  %446 = add nuw nsw i64 %445, %444
  %447 = icmp eq i64 %446, 2
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %55, align 1, !tbaa !2449
  %449 = add i64 %421, -12992
  %450 = add i64 %449, %427
  %451 = add i64 %423, 15
  store i64 %451, i64* %PC, align 8
  %452 = inttoptr i64 %450 to i8*
  %453 = load i8, i8* %452, align 1
  store i8 %453, i8* %DL, align 1, !tbaa !2451
  %454 = add i64 %423, 19
  store i64 %454, i64* %PC, align 8
  %455 = load i64, i64* %425, align 8
  store i64 %455, i64* %RAX, align 8, !tbaa !2428
  %456 = add i64 %455, -12992
  %457 = add i64 %456, %421
  %458 = add i64 %423, 26
  store i64 %458, i64* %PC, align 8
  %459 = inttoptr i64 %457 to i8*
  store i8 %453, i8* %459, align 1
  %460 = load i64, i64* %RBP, align 8
  %461 = add i64 %460, -56
  %462 = load i64, i64* %PC, align 8
  %463 = add i64 %462, 4
  store i64 %463, i64* %PC, align 8
  %464 = inttoptr i64 %461 to i64*
  %465 = load i64, i64* %464, align 8
  %466 = add i64 %465, -1
  store i64 %466, i64* %RAX, align 8, !tbaa !2428
  %467 = icmp ne i64 %465, 0
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %30, align 1, !tbaa !2432
  %469 = trunc i64 %466 to i32
  %470 = and i32 %469, 255
  %471 = tail call i32 @llvm.ctpop.i32(i32 %470) #12
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  %474 = xor i8 %473, 1
  store i8 %474, i8* %37, align 1, !tbaa !2446
  %475 = xor i64 %465, 16
  %476 = xor i64 %475, %466
  %477 = lshr i64 %476, 4
  %478 = trunc i64 %477 to i8
  %479 = and i8 %478, 1
  store i8 %479, i8* %43, align 1, !tbaa !2450
  %480 = icmp eq i64 %466, 0
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %46, align 1, !tbaa !2447
  %482 = lshr i64 %466, 63
  %483 = trunc i64 %482 to i8
  store i8 %483, i8* %49, align 1, !tbaa !2448
  %484 = lshr i64 %465, 63
  %485 = xor i64 %482, %484
  %486 = xor i64 %482, 1
  %487 = add nuw nsw i64 %485, %486
  %488 = icmp eq i64 %487, 2
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %55, align 1, !tbaa !2449
  %490 = add i64 %462, 12
  store i64 %490, i64* %PC, align 8
  store i64 %466, i64* %464, align 8
  %491 = load i64, i64* %PC, align 8
  %492 = add i64 %491, -135
  store i64 %492, i64* %PC, align 8, !tbaa !2428
  br label %block_40117e

block_4011b0:                                     ; preds = %block_40117e, %block_401193
  %493 = phi i64 [ %2116, %block_40117e ], [ %.pre141, %block_401193 ]
  %494 = load i64, i64* %RBP, align 8
  %495 = add i64 %494, -13097
  %496 = add i64 %493, 6
  store i64 %496, i64* %PC, align 8
  %497 = inttoptr i64 %495 to i8*
  %498 = load i8, i8* %497, align 1
  store i8 %498, i8* %AL, align 1, !tbaa !2451
  %499 = and i8 %498, 1
  store i8 0, i8* %30, align 1, !tbaa !2432
  %500 = zext i8 %499 to i32
  %501 = tail call i32 @llvm.ctpop.i32(i32 %500) #12
  %502 = trunc i32 %501 to i8
  %503 = xor i8 %502, 1
  store i8 %503, i8* %37, align 1, !tbaa !2446
  %504 = xor i8 %499, 1
  store i8 %504, i8* %46, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %505 = icmp eq i8 %504, 0
  %.v150 = select i1 %505, i64 19, i64 14
  %506 = add i64 %493, %.v150
  store i64 %506, i64* %PC, align 8, !tbaa !2428
  br i1 %505, label %block_4011c3, label %block_4011be

block_400da7:                                     ; preds = %block_400c36
  %507 = add i64 %2570, -10664
  %508 = add i64 %2597, 8
  store i64 %508, i64* %PC, align 8
  %509 = inttoptr i64 %507 to i64*
  %510 = load i64, i64* %509, align 8
  %511 = add i64 %510, -64
  %512 = icmp ult i64 %510, 64
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %30, align 1, !tbaa !2432
  %514 = trunc i64 %511 to i32
  %515 = and i32 %514, 255
  %516 = tail call i32 @llvm.ctpop.i32(i32 %515) #12
  %517 = trunc i32 %516 to i8
  %518 = and i8 %517, 1
  %519 = xor i8 %518, 1
  store i8 %519, i8* %37, align 1, !tbaa !2446
  %520 = xor i64 %511, %510
  %521 = lshr i64 %520, 4
  %522 = trunc i64 %521 to i8
  %523 = and i8 %522, 1
  store i8 %523, i8* %43, align 1, !tbaa !2450
  %524 = icmp eq i64 %511, 0
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %46, align 1, !tbaa !2447
  %526 = lshr i64 %511, 63
  %527 = trunc i64 %526 to i8
  store i8 %527, i8* %49, align 1, !tbaa !2448
  %528 = lshr i64 %510, 63
  %529 = xor i64 %526, %528
  %530 = add nuw nsw i64 %529, %528
  %531 = icmp eq i64 %530, 2
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %55, align 1, !tbaa !2449
  %533 = or i1 %524, %512
  %.v157 = select i1 %533, i64 55, i64 14
  %534 = add i64 %2597, %.v157
  store i64 %534, i64* %PC, align 8, !tbaa !2428
  br i1 %533, label %block_400dde, label %block_400db5

block_401193:                                     ; preds = %block_40117e
  %535 = load i64, i64* %RBP, align 8
  %536 = add i64 %535, -56
  %537 = add i64 %2116, 4
  store i64 %537, i64* %PC, align 8
  %538 = inttoptr i64 %536 to i64*
  %539 = load i64, i64* %538, align 8
  %540 = add i64 %539, -1
  store i64 %540, i64* %RAX, align 8, !tbaa !2428
  %541 = icmp eq i64 %539, 0
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %30, align 1, !tbaa !2432
  %543 = trunc i64 %540 to i32
  %544 = and i32 %543, 255
  %545 = tail call i32 @llvm.ctpop.i32(i32 %544) #12
  %546 = trunc i32 %545 to i8
  %547 = and i8 %546, 1
  %548 = xor i8 %547, 1
  store i8 %548, i8* %37, align 1, !tbaa !2446
  %549 = xor i64 %540, %539
  %550 = lshr i64 %549, 4
  %551 = trunc i64 %550 to i8
  %552 = and i8 %551, 1
  store i8 %552, i8* %43, align 1, !tbaa !2450
  %553 = icmp eq i64 %540, 0
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %46, align 1, !tbaa !2447
  %555 = lshr i64 %540, 63
  %556 = trunc i64 %555 to i8
  store i8 %556, i8* %49, align 1, !tbaa !2448
  %557 = lshr i64 %539, 63
  %558 = xor i64 %555, %557
  %559 = add nuw nsw i64 %558, %557
  %560 = icmp eq i64 %559, 2
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %55, align 1, !tbaa !2449
  %562 = shl i64 %540, 3
  %563 = add i64 %535, -12736
  %564 = add i64 %563, %562
  %565 = add i64 %2116, 16
  store i64 %565, i64* %PC, align 8
  %566 = inttoptr i64 %564 to i64*
  %567 = load i64, i64* %566, align 8
  store i64 %567, i64* %RAX, align 8, !tbaa !2428
  %568 = add i64 %535, -88
  %569 = add i64 %2116, 20
  store i64 %569, i64* %PC, align 8
  %570 = inttoptr i64 %568 to i64*
  %571 = load i64, i64* %570, align 8
  %572 = sub i64 %567, %571
  %573 = icmp ult i64 %567, %571
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %30, align 1, !tbaa !2432
  %575 = trunc i64 %572 to i32
  %576 = and i32 %575, 255
  %577 = tail call i32 @llvm.ctpop.i32(i32 %576) #12
  %578 = trunc i32 %577 to i8
  %579 = and i8 %578, 1
  %580 = xor i8 %579, 1
  store i8 %580, i8* %37, align 1, !tbaa !2446
  %581 = xor i64 %571, %567
  %582 = xor i64 %581, %572
  %583 = lshr i64 %582, 4
  %584 = trunc i64 %583 to i8
  %585 = and i8 %584, 1
  store i8 %585, i8* %43, align 1, !tbaa !2450
  %586 = icmp eq i64 %572, 0
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %46, align 1, !tbaa !2447
  %588 = lshr i64 %572, 63
  %589 = trunc i64 %588 to i8
  store i8 %589, i8* %49, align 1, !tbaa !2448
  %590 = lshr i64 %567, 63
  %591 = lshr i64 %571, 63
  %592 = xor i64 %591, %590
  %593 = xor i64 %588, %590
  %594 = add nuw nsw i64 %593, %592
  %595 = icmp eq i64 %594, 2
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %55, align 1, !tbaa !2449
  %597 = or i1 %586, %573
  %598 = xor i1 %597, true
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %CL, align 1, !tbaa !2451
  %600 = add i64 %535, -13097
  %601 = add i64 %2116, 29
  store i64 %601, i64* %PC, align 8
  %602 = inttoptr i64 %600 to i8*
  store i8 %599, i8* %602, align 1
  %.pre141 = load i64, i64* %PC, align 8
  br label %block_4011b0

block_401372:                                     ; preds = %block_401356
  %603 = add i64 %815, 8
  store i64 %603, i64* %PC, align 8
  store i64 128, i64* %790, align 8
  %604 = load i64, i64* %RBP, align 8
  %605 = add i64 %604, -104
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
  store i8 %614, i8* %30, align 1, !tbaa !2432
  %615 = trunc i64 %610 to i32
  %616 = and i32 %615, 255
  %617 = tail call i32 @llvm.ctpop.i32(i32 %616) #12
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  %620 = xor i8 %619, 1
  store i8 %620, i8* %37, align 1, !tbaa !2446
  %621 = xor i64 %610, %609
  %622 = lshr i64 %621, 4
  %623 = trunc i64 %622 to i8
  %624 = and i8 %623, 1
  store i8 %624, i8* %43, align 1, !tbaa !2450
  %625 = zext i1 %612 to i8
  store i8 %625, i8* %46, align 1, !tbaa !2447
  %626 = lshr i64 %610, 63
  %627 = trunc i64 %626 to i8
  store i8 %627, i8* %49, align 1, !tbaa !2448
  %628 = lshr i64 %609, 63
  %629 = xor i64 %626, %628
  %630 = add nuw nsw i64 %629, %626
  %631 = icmp eq i64 %630, 2
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %55, align 1, !tbaa !2449
  %633 = add i64 %606, 12
  store i64 %633, i64* %PC, align 8
  store i64 %610, i64* %608, align 8
  %.pre148 = load i64, i64* %PC, align 8
  br label %block_401386

block_400f70:                                     ; preds = %block_400f3f, %block_400f5e
  %634 = phi i64 [ %881, %block_400f3f ], [ %.pre132, %block_400f5e ]
  %635 = phi i64 [ %850, %block_400f3f ], [ %.pre131, %block_400f5e ]
  %636 = add i64 %635, -72
  %637 = add i64 %634, 4
  store i64 %637, i64* %PC, align 8
  %638 = inttoptr i64 %636 to i64*
  %639 = load i64, i64* %638, align 8
  %640 = lshr i64 %639, 63
  %641 = trunc i64 %640 to i8
  %642 = trunc i64 %639 to i8
  %643 = and i8 %642, 1
  %644 = lshr i64 %639, 1
  store i64 %644, i64* %RAX, align 8, !tbaa !2428
  store i8 %643, i8* %30, align 1, !tbaa !2451
  %645 = trunc i64 %644 to i32
  %646 = and i32 %645, 255
  %647 = tail call i32 @llvm.ctpop.i32(i32 %646) #12
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  %650 = xor i8 %649, 1
  store i8 %650, i8* %37, align 1, !tbaa !2451
  store i8 0, i8* %43, align 1, !tbaa !2451
  %651 = icmp eq i64 %644, 0
  %652 = zext i1 %651 to i8
  store i8 %652, i8* %46, align 1, !tbaa !2451
  store i8 0, i8* %49, align 1, !tbaa !2451
  store i8 %641, i8* %55, align 1, !tbaa !2451
  %653 = add i64 %634, 12
  store i64 %653, i64* %PC, align 8
  store i64 %644, i64* %638, align 8
  %654 = load i64, i64* %RBP, align 8
  %655 = add i64 %654, -48
  %656 = load i64, i64* %PC, align 8
  %657 = add i64 %656, 4
  store i64 %657, i64* %PC, align 8
  %658 = inttoptr i64 %655 to i64*
  %659 = load i64, i64* %658, align 8
  %660 = add i64 %659, 1
  store i64 %660, i64* %RAX, align 8, !tbaa !2428
  %661 = icmp eq i64 %659, -1
  %662 = icmp eq i64 %660, 0
  %663 = or i1 %661, %662
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %30, align 1, !tbaa !2432
  %665 = trunc i64 %660 to i32
  %666 = and i32 %665, 255
  %667 = tail call i32 @llvm.ctpop.i32(i32 %666) #12
  %668 = trunc i32 %667 to i8
  %669 = and i8 %668, 1
  %670 = xor i8 %669, 1
  store i8 %670, i8* %37, align 1, !tbaa !2446
  %671 = xor i64 %660, %659
  %672 = lshr i64 %671, 4
  %673 = trunc i64 %672 to i8
  %674 = and i8 %673, 1
  store i8 %674, i8* %43, align 1, !tbaa !2450
  %675 = zext i1 %662 to i8
  store i8 %675, i8* %46, align 1, !tbaa !2447
  %676 = lshr i64 %660, 63
  %677 = trunc i64 %676 to i8
  store i8 %677, i8* %49, align 1, !tbaa !2448
  %678 = lshr i64 %659, 63
  %679 = xor i64 %676, %678
  %680 = add nuw nsw i64 %679, %676
  %681 = icmp eq i64 %680, 2
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %55, align 1, !tbaa !2449
  %683 = add i64 %656, 12
  store i64 %683, i64* %PC, align 8
  store i64 %660, i64* %658, align 8
  %684 = load i64, i64* %PC, align 8
  %685 = add i64 %684, -269
  store i64 %685, i64* %PC, align 8, !tbaa !2428
  br label %block_400e7b

block_400d6a:                                     ; preds = %block_400d1e, %block_400d5c
  %686 = phi i64 [ %2749, %block_400d1e ], [ %.pre127, %block_400d5c ]
  %687 = phi i64 [ %2713, %block_400d1e ], [ %.pre126, %block_400d5c ]
  %688 = add i64 %687, -48
  %689 = add i64 %686, 4
  store i64 %689, i64* %PC, align 8
  %690 = inttoptr i64 %688 to i64*
  %691 = load i64, i64* %690, align 8
  store i64 %691, i64* %RAX, align 8, !tbaa !2428
  %692 = add i64 %687, -10664
  %693 = add i64 %686, 11
  store i64 %693, i64* %PC, align 8
  %694 = inttoptr i64 %692 to i64*
  %695 = load i64, i64* %694, align 8
  %696 = sub i64 %691, %695
  %697 = icmp ult i64 %691, %695
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %30, align 1, !tbaa !2432
  %699 = trunc i64 %696 to i32
  %700 = and i32 %699, 255
  %701 = tail call i32 @llvm.ctpop.i32(i32 %700) #12
  %702 = trunc i32 %701 to i8
  %703 = and i8 %702, 1
  %704 = xor i8 %703, 1
  store i8 %704, i8* %37, align 1, !tbaa !2446
  %705 = xor i64 %695, %691
  %706 = xor i64 %705, %696
  %707 = lshr i64 %706, 4
  %708 = trunc i64 %707 to i8
  %709 = and i8 %708, 1
  store i8 %709, i8* %43, align 1, !tbaa !2450
  %710 = icmp eq i64 %696, 0
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %46, align 1, !tbaa !2447
  %712 = lshr i64 %696, 63
  %713 = trunc i64 %712 to i8
  store i8 %713, i8* %49, align 1, !tbaa !2448
  %714 = lshr i64 %691, 63
  %715 = lshr i64 %695, 63
  %716 = xor i64 %715, %714
  %717 = xor i64 %712, %714
  %718 = add nuw nsw i64 %717, %716
  %719 = icmp eq i64 %718, 2
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %55, align 1, !tbaa !2449
  %721 = or i1 %710, %697
  %.v176 = select i1 %721, i64 28, i64 17
  %722 = add i64 %686, %.v176
  store i64 %722, i64* %PC, align 8, !tbaa !2428
  br i1 %721, label %block_400d8b, label %block_400d7b

block_401361:                                     ; preds = %block_401356
  %723 = add i64 %815, 4
  store i64 %723, i64* %PC, align 8
  %724 = load i64, i64* %790, align 8
  %725 = lshr i64 %724, 63
  %726 = trunc i64 %725 to i8
  %727 = trunc i64 %724 to i8
  %728 = and i8 %727, 1
  %729 = lshr i64 %724, 1
  store i64 %729, i64* %RAX, align 8, !tbaa !2428
  store i8 %728, i8* %30, align 1, !tbaa !2451
  %730 = trunc i64 %729 to i32
  %731 = and i32 %730, 255
  %732 = tail call i32 @llvm.ctpop.i32(i32 %731) #12
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %37, align 1, !tbaa !2451
  store i8 0, i8* %43, align 1, !tbaa !2451
  %736 = icmp eq i64 %729, 0
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %46, align 1, !tbaa !2451
  store i8 0, i8* %49, align 1, !tbaa !2451
  store i8 %726, i8* %55, align 1, !tbaa !2451
  %738 = add i64 %815, 12
  store i64 %738, i64* %PC, align 8
  store i64 %729, i64* %790, align 8
  %739 = load i64, i64* %PC, align 8
  %740 = add i64 %739, 25
  store i64 %740, i64* %PC, align 8, !tbaa !2428
  br label %block_401386

block_400f5e:                                     ; preds = %block_400f3f
  %741 = add i64 %850, -10681
  %742 = add i64 %881, 7
  store i64 %742, i64* %PC, align 8
  %743 = inttoptr i64 %741 to i8*
  %744 = load i8, i8* %743, align 1
  %745 = sext i8 %744 to i64
  %746 = and i64 %745, 4294967294
  %747 = or i64 %746, 1
  %748 = trunc i64 %747 to i32
  store i64 %747, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %30, align 1, !tbaa !2432
  %749 = and i32 %748, 255
  %750 = tail call i32 @llvm.ctpop.i32(i32 %749) #12
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  %753 = xor i8 %752, 1
  store i8 %753, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %46, align 1, !tbaa !2447
  %754 = lshr i32 %748, 31
  %755 = trunc i32 %754 to i8
  store i8 %755, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %756 = trunc i64 %747 to i8
  store i8 %756, i8* %CL, align 1, !tbaa !2451
  %757 = add i64 %881, 18
  store i64 %757, i64* %PC, align 8
  store i8 %756, i8* %743, align 1
  %.pre131 = load i64, i64* %RBP, align 8
  %.pre132 = load i64, i64* %PC, align 8
  br label %block_400f70

block_400db5:                                     ; preds = %block_400da7
  store i64 add (i64 ptrtoint (%seg_401660__rodata_type* @seg_401660__rodata to i64), i64 37), i64* %RSI, align 8, !tbaa !2428
  %758 = load i64, i64* @stderr, align 32
  store i64 %758, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %759 = add i64 %534, -1925
  %760 = add i64 %534, 25
  %761 = load i64, i64* %RSP, align 8, !tbaa !2428
  %762 = add i64 %761, -8
  %763 = inttoptr i64 %762 to i64*
  store i64 %760, i64* %763, align 8
  store i64 %762, i64* %RSP, align 8, !tbaa !2428
  store i64 %759, i64* %PC, align 8, !tbaa !2428
  %764 = tail call fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %322)
  %765 = load i64, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %766 = load i64, i64* %RBP, align 8
  %767 = add i64 %766, -13080
  %768 = load i32, i32* %EAX, align 4
  %769 = add i64 %765, 11
  store i64 %769, i64* %PC, align 8
  %770 = inttoptr i64 %767 to i32*
  store i32 %768, i32* %770, align 4
  %771 = load i64, i64* %PC, align 8
  %772 = add i64 %771, -1913
  %773 = add i64 %771, 5
  %774 = load i64, i64* %RSP, align 8, !tbaa !2428
  %775 = add i64 %774, -8
  %776 = inttoptr i64 %775 to i64*
  store i64 %773, i64* %776, align 8
  store i64 %775, i64* %RSP, align 8, !tbaa !2428
  store i64 %772, i64* %PC, align 8, !tbaa !2428
  %777 = tail call fastcc %struct.Memory* @ext_400660_exit(%struct.State* nonnull %0, %struct.Memory* %764)
  %778 = load i64, i64* %PC, align 8
  %779 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %778, %struct.Memory* %777)
  ret %struct.Memory* %779

block_400d5c:                                     ; preds = %block_400d1e
  %780 = add i64 %2749, 7
  store i64 %780, i64* %PC, align 8
  %781 = load i64, i64* %2717, align 8
  store i64 %781, i64* %RAX, align 8, !tbaa !2428
  %782 = add i64 %2749, 14
  store i64 %782, i64* %PC, align 8
  store i64 %781, i64* %2721, align 8
  %.pre126 = load i64, i64* %RBP, align 8
  %.pre127 = load i64, i64* %PC, align 8
  br label %block_400d6a

block_401239:                                     ; preds = %block_40114a
  %783 = add i64 %2657, -56
  %784 = add i64 %2684, 8
  store i64 %784, i64* %PC, align 8
  %785 = inttoptr i64 %783 to i64*
  store i64 0, i64* %785, align 8
  %.pre142 = load i64, i64* %PC, align 8
  br label %block_401241

block_401356:                                     ; preds = %block_401307, %block_40131d
  %786 = phi i64 [ %2784, %block_401307 ], [ %.pre147, %block_40131d ]
  %787 = phi i64 [ %1138, %block_401307 ], [ %.pre146, %block_40131d ]
  %788 = add i64 %787, -72
  %789 = add i64 %786, 5
  store i64 %789, i64* %PC, align 8
  %790 = inttoptr i64 %788 to i64*
  %791 = load i64, i64* %790, align 8
  %792 = add i64 %791, -1
  %793 = icmp eq i64 %791, 0
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %30, align 1, !tbaa !2432
  %795 = trunc i64 %792 to i32
  %796 = and i32 %795, 255
  %797 = tail call i32 @llvm.ctpop.i32(i32 %796) #12
  %798 = trunc i32 %797 to i8
  %799 = and i8 %798, 1
  %800 = xor i8 %799, 1
  store i8 %800, i8* %37, align 1, !tbaa !2446
  %801 = xor i64 %792, %791
  %802 = lshr i64 %801, 4
  %803 = trunc i64 %802 to i8
  %804 = and i8 %803, 1
  store i8 %804, i8* %43, align 1, !tbaa !2450
  %805 = icmp eq i64 %792, 0
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %46, align 1, !tbaa !2447
  %807 = lshr i64 %792, 63
  %808 = trunc i64 %807 to i8
  store i8 %808, i8* %49, align 1, !tbaa !2448
  %809 = lshr i64 %791, 63
  %810 = xor i64 %807, %809
  %811 = add nuw nsw i64 %810, %809
  %812 = icmp eq i64 %811, 2
  %813 = zext i1 %812 to i8
  store i8 %813, i8* %55, align 1, !tbaa !2449
  %814 = or i1 %805, %793
  %.v166 = select i1 %814, i64 28, i64 11
  %815 = add i64 %786, %.v166
  store i64 %815, i64* %PC, align 8, !tbaa !2428
  br i1 %814, label %block_401372, label %block_401361

block_400d8b:                                     ; preds = %block_400d6a, %block_400d7b, %block_400c5d
  %.sink9 = phi i64 [ 268, %block_400c5d ], [ 5, %block_400d7b ], [ 5, %block_400d6a ]
  %816 = load i64, i64* %PC, align 8
  %817 = add i64 %816, %.sink9
  %818 = load i64, i64* %RBP, align 8
  %819 = add i64 %818, -10640
  %820 = add i64 %817, 12
  store i64 %820, i64* %PC, align 8
  %821 = inttoptr i64 %819 to i64*
  %822 = load i64, i64* %821, align 8
  %823 = add i64 %822, 1
  store i64 %823, i64* %RAX, align 8, !tbaa !2428
  %824 = icmp eq i64 %822, -1
  %825 = icmp eq i64 %823, 0
  %826 = or i1 %824, %825
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %30, align 1, !tbaa !2432
  %828 = trunc i64 %823 to i32
  %829 = and i32 %828, 255
  %830 = tail call i32 @llvm.ctpop.i32(i32 %829) #12
  %831 = trunc i32 %830 to i8
  %832 = and i8 %831, 1
  %833 = xor i8 %832, 1
  store i8 %833, i8* %37, align 1, !tbaa !2446
  %834 = xor i64 %823, %822
  %835 = lshr i64 %834, 4
  %836 = trunc i64 %835 to i8
  %837 = and i8 %836, 1
  store i8 %837, i8* %43, align 1, !tbaa !2450
  %838 = zext i1 %825 to i8
  store i8 %838, i8* %46, align 1, !tbaa !2447
  %839 = lshr i64 %823, 63
  %840 = trunc i64 %839 to i8
  store i8 %840, i8* %49, align 1, !tbaa !2448
  %841 = lshr i64 %822, 63
  %842 = xor i64 %839, %841
  %843 = add nuw nsw i64 %842, %839
  %844 = icmp eq i64 %843, 2
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %55, align 1, !tbaa !2449
  %846 = add i64 %817, 23
  store i64 %846, i64* %PC, align 8
  store i64 %823, i64* %821, align 8
  %847 = load i64, i64* %PC, align 8
  %848 = add i64 %847, -364
  store i64 %848, i64* %PC, align 8, !tbaa !2428
  br label %block_400c36

block_400f3f:                                     ; preds = %block_400f1e, %block_400f08
  %849 = phi i64 [ %.pre130, %block_400f1e ], [ %1191, %block_400f08 ]
  %850 = load i64, i64* %RBP, align 8
  %851 = add i64 %850, -112
  %852 = add i64 %849, 4
  store i64 %852, i64* %PC, align 8
  %853 = inttoptr i64 %851 to i64*
  %854 = load i64, i64* %853, align 8
  store i64 %854, i64* %RAX, align 8, !tbaa !2428
  %855 = add i64 %849, 7
  store i64 %855, i64* %PC, align 8
  %856 = inttoptr i64 %854 to i8*
  %857 = load i8, i8* %856, align 1
  %858 = zext i8 %857 to i64
  store i64 %858, i64* %RCX, align 8, !tbaa !2428
  %859 = zext i8 %857 to i64
  store i64 %859, i64* %RAX, align 8, !tbaa !2428
  %860 = shl nuw nsw i64 %859, 3
  %861 = add nsw i64 %860, -10368
  %862 = add i64 %861, %850
  %863 = add i64 %849, 17
  store i64 %863, i64* %PC, align 8
  %864 = inttoptr i64 %862 to i64*
  %865 = load i64, i64* %864, align 8
  store i64 %865, i64* %RAX, align 8, !tbaa !2428
  %866 = add i64 %850, -72
  %867 = add i64 %849, 21
  store i64 %867, i64* %PC, align 8
  %868 = inttoptr i64 %866 to i64*
  %869 = load i64, i64* %868, align 8
  %870 = and i64 %869, %865
  store i64 %870, i64* %RAX, align 8, !tbaa !2428
  %871 = trunc i64 %870 to i32
  %872 = and i32 %871, 255
  %873 = tail call i32 @llvm.ctpop.i32(i32 %872) #12
  %874 = trunc i32 %873 to i8
  %875 = and i8 %874, 1
  %876 = xor i8 %875, 1
  %877 = icmp eq i64 %870, 0
  %878 = zext i1 %877 to i8
  %879 = lshr i64 %870, 63
  %880 = trunc i64 %879 to i8
  store i8 0, i8* %30, align 1, !tbaa !2432
  store i8 %876, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 %878, i8* %46, align 1, !tbaa !2447
  store i8 %880, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %.v171 = select i1 %877, i64 49, i64 31
  %881 = add i64 %849, %.v171
  store i64 %881, i64* %PC, align 8, !tbaa !2428
  br i1 %877, label %block_400f70, label %block_400f5e

block_40112c:                                     ; preds = %block_401037, %block_40111c
  %882 = phi i64 [ %2536, %block_401037 ], [ %.pre138, %block_40111c ]
  %883 = phi i64 [ %2568, %block_401037 ], [ %.pre137, %block_40111c ]
  %884 = add i64 %882, -56
  %885 = add i64 %883, 9
  store i64 %885, i64* %PC, align 8
  %886 = inttoptr i64 %884 to i64*
  %887 = load i64, i64* %886, align 8
  %888 = add i64 %887, 1
  store i64 %888, i64* %RAX, align 8, !tbaa !2428
  %889 = icmp eq i64 %887, -1
  %890 = icmp eq i64 %888, 0
  %891 = or i1 %889, %890
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %30, align 1, !tbaa !2432
  %893 = trunc i64 %888 to i32
  %894 = and i32 %893, 255
  %895 = tail call i32 @llvm.ctpop.i32(i32 %894) #12
  %896 = trunc i32 %895 to i8
  %897 = and i8 %896, 1
  %898 = xor i8 %897, 1
  store i8 %898, i8* %37, align 1, !tbaa !2446
  %899 = xor i64 %888, %887
  %900 = lshr i64 %899, 4
  %901 = trunc i64 %900 to i8
  %902 = and i8 %901, 1
  store i8 %902, i8* %43, align 1, !tbaa !2450
  %903 = zext i1 %890 to i8
  store i8 %903, i8* %46, align 1, !tbaa !2447
  %904 = lshr i64 %888, 63
  %905 = trunc i64 %904 to i8
  store i8 %905, i8* %49, align 1, !tbaa !2448
  %906 = lshr i64 %887, 63
  %907 = xor i64 %904, %906
  %908 = add nuw nsw i64 %907, %904
  %909 = icmp eq i64 %908, 2
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %55, align 1, !tbaa !2449
  %911 = add i64 %883, 17
  store i64 %911, i64* %PC, align 8
  store i64 %888, i64* %886, align 8
  %912 = load i64, i64* %PC, align 8
  %913 = add i64 %912, -276
  store i64 %913, i64* %PC, align 8, !tbaa !2428
  br label %block_401029

block_40138b:                                     ; preds = %block_40129a
  %914 = add i64 %1693, -120
  %915 = add i64 %1727, 4
  store i64 %915, i64* %PC, align 8
  %916 = inttoptr i64 %914 to i64*
  %917 = load i64, i64* %916, align 8
  store i64 %917, i64* %RDI, align 8, !tbaa !2428
  %918 = add i64 %1727, -3467
  %919 = add i64 %1727, 9
  %920 = load i64, i64* %RSP, align 8, !tbaa !2428
  %921 = add i64 %920, -8
  %922 = inttoptr i64 %921 to i64*
  store i64 %919, i64* %922, align 8
  store i64 %921, i64* %RSP, align 8, !tbaa !2428
  store i64 %918, i64* %PC, align 8, !tbaa !2428
  %923 = tail call fastcc %struct.Memory* @ext_6020f0_free(%struct.State* nonnull %0, %struct.Memory* %2985)
  %924 = load i64, i64* %RSP, align 8
  %925 = load i64, i64* %PC, align 8
  %926 = add i64 %924, 13080
  store i64 %926, i64* %RSP, align 8, !tbaa !2428
  %927 = icmp ugt i64 %924, -13081
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %30, align 1, !tbaa !2432
  %929 = trunc i64 %926 to i32
  %930 = and i32 %929, 255
  %931 = tail call i32 @llvm.ctpop.i32(i32 %930) #12
  %932 = trunc i32 %931 to i8
  %933 = and i8 %932, 1
  %934 = xor i8 %933, 1
  store i8 %934, i8* %37, align 1, !tbaa !2446
  %935 = xor i64 %924, 16
  %936 = xor i64 %935, %926
  %937 = lshr i64 %936, 4
  %938 = trunc i64 %937 to i8
  %939 = and i8 %938, 1
  store i8 %939, i8* %43, align 1, !tbaa !2450
  %940 = icmp eq i64 %926, 0
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %46, align 1, !tbaa !2447
  %942 = lshr i64 %926, 63
  %943 = trunc i64 %942 to i8
  store i8 %943, i8* %49, align 1, !tbaa !2448
  %944 = lshr i64 %924, 63
  %945 = xor i64 %942, %944
  %946 = add nuw nsw i64 %945, %942
  %947 = icmp eq i64 %946, 2
  %948 = zext i1 %947 to i8
  store i8 %948, i8* %55, align 1, !tbaa !2449
  %949 = add i64 %925, 8
  store i64 %949, i64* %PC, align 8
  %950 = add i64 %924, 13088
  %951 = inttoptr i64 %926 to i64*
  %952 = load i64, i64* %951, align 8
  store i64 %952, i64* %RBX, align 8, !tbaa !2428
  store i64 %950, i64* %RSP, align 8, !tbaa !2428
  %953 = add i64 %925, 10
  store i64 %953, i64* %PC, align 8
  %954 = add i64 %924, 13096
  %955 = inttoptr i64 %950 to i64*
  %956 = load i64, i64* %955, align 8
  store i64 %956, i64* %R14, align 8, !tbaa !2428
  store i64 %954, i64* %RSP, align 8, !tbaa !2428
  %957 = add i64 %925, 12
  store i64 %957, i64* %PC, align 8
  %958 = add i64 %924, 13104
  %959 = inttoptr i64 %954 to i64*
  %960 = load i64, i64* %959, align 8
  store i64 %960, i64* %R15, align 8, !tbaa !2428
  store i64 %958, i64* %RSP, align 8, !tbaa !2428
  %961 = add i64 %925, 13
  store i64 %961, i64* %PC, align 8
  %962 = add i64 %924, 13112
  %963 = inttoptr i64 %958 to i64*
  %964 = load i64, i64* %963, align 8
  store i64 %964, i64* %RBP, align 8, !tbaa !2428
  store i64 %962, i64* %RSP, align 8, !tbaa !2428
  %965 = add i64 %925, 14
  store i64 %965, i64* %PC, align 8
  %966 = inttoptr i64 %962 to i64*
  %967 = load i64, i64* %966, align 8
  store i64 %967, i64* %PC, align 8, !tbaa !2428
  %968 = add i64 %924, 13120
  store i64 %968, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %923

block_40111c:                                     ; preds = %block_4010ae
  %969 = add i64 %1606, 8
  store i64 %969, i64* %PC, align 8
  %970 = load i64, i64* %1574, align 8
  store i64 %970, i64* %RCX, align 8, !tbaa !2428
  %971 = shl i64 %970, 3
  %972 = add i64 %971, -12736
  %973 = add i64 %972, %1567
  %974 = add i64 %1606, 16
  store i64 %974, i64* %PC, align 8
  %975 = inttoptr i64 %973 to i64*
  store i64 %1610, i64* %975, align 8
  %.pre137 = load i64, i64* %PC, align 8
  %.pre138 = load i64, i64* %RBP, align 8
  br label %block_40112c

block_400b0d:                                     ; preds = %block_400b0d.preheader, %block_400b18
  %976 = phi i64 [ %.pre121, %block_400b18 ], [ %2475, %block_400b0d.preheader ]
  %977 = phi i64 [ %.pre120, %block_400b18 ], [ %2490, %block_400b0d.preheader ]
  %.sink62 = phi i64 [ -238, %block_400b18 ], [ 5, %block_400b0d.preheader ]
  %978 = add i64 %977, %.sink62
  %979 = add i64 %976, -64
  %980 = add i64 %978, 5
  store i64 %980, i64* %PC, align 8
  %981 = inttoptr i64 %979 to i64*
  %982 = load i64, i64* %981, align 8
  %983 = add i64 %982, -1
  %984 = icmp eq i64 %982, 0
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %30, align 1, !tbaa !2432
  %986 = trunc i64 %983 to i32
  %987 = and i32 %986, 255
  %988 = tail call i32 @llvm.ctpop.i32(i32 %987) #12
  %989 = trunc i32 %988 to i8
  %990 = and i8 %989, 1
  %991 = xor i8 %990, 1
  store i8 %991, i8* %37, align 1, !tbaa !2446
  %992 = xor i64 %983, %982
  %993 = lshr i64 %992, 4
  %994 = trunc i64 %993 to i8
  %995 = and i8 %994, 1
  store i8 %995, i8* %43, align 1, !tbaa !2450
  %996 = icmp eq i64 %983, 0
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %46, align 1, !tbaa !2447
  %998 = lshr i64 %983, 63
  %999 = trunc i64 %998 to i8
  store i8 %999, i8* %49, align 1, !tbaa !2448
  %1000 = lshr i64 %982, 63
  %1001 = xor i64 %998, %1000
  %1002 = add nuw nsw i64 %1001, %1000
  %1003 = icmp eq i64 %1002, 2
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %55, align 1, !tbaa !2449
  %1005 = or i1 %996, %984
  %.v155 = select i1 %1005, i64 243, i64 11
  %1006 = add i64 %978, %.v155
  store i64 %1006, i64* %PC, align 8, !tbaa !2428
  br i1 %1005, label %block_400c00, label %block_400b18

block_4012f6:                                     ; preds = %block_4012e0
  %1007 = load i64, i64* %1143, align 8
  %1008 = add i64 %1180, 8
  store i64 %1008, i64* %PC, align 8
  %1009 = add i64 %1007, 1
  store i64 %1009, i64* %RAX, align 8, !tbaa !2428
  %1010 = icmp eq i64 %1007, -1
  %1011 = icmp eq i64 %1009, 0
  %1012 = or i1 %1010, %1011
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %30, align 1, !tbaa !2432
  %1014 = trunc i64 %1009 to i32
  %1015 = and i32 %1014, 255
  %1016 = tail call i32 @llvm.ctpop.i32(i32 %1015) #12
  %1017 = trunc i32 %1016 to i8
  %1018 = and i8 %1017, 1
  %1019 = xor i8 %1018, 1
  store i8 %1019, i8* %37, align 1, !tbaa !2446
  %1020 = xor i64 %1009, %1007
  br label %block_4012e0.sink.split

block_4010f3:                                     ; preds = %block_4010c9
  %1021 = add i64 %1347, -80
  %1022 = add i64 %1374, 4
  store i64 %1022, i64* %PC, align 8
  %1023 = inttoptr i64 %1021 to i64*
  %1024 = load i64, i64* %1023, align 8
  %1025 = add i64 %1024, 1
  store i64 %1025, i64* %RAX, align 8, !tbaa !2428
  %1026 = icmp eq i64 %1024, -1
  %1027 = icmp eq i64 %1025, 0
  %1028 = or i1 %1026, %1027
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %30, align 1, !tbaa !2432
  %1030 = trunc i64 %1025 to i32
  %1031 = and i32 %1030, 255
  %1032 = tail call i32 @llvm.ctpop.i32(i32 %1031) #12
  %1033 = trunc i32 %1032 to i8
  %1034 = and i8 %1033, 1
  %1035 = xor i8 %1034, 1
  store i8 %1035, i8* %37, align 1, !tbaa !2446
  %1036 = xor i64 %1025, %1024
  %1037 = lshr i64 %1036, 4
  %1038 = trunc i64 %1037 to i8
  %1039 = and i8 %1038, 1
  store i8 %1039, i8* %43, align 1, !tbaa !2450
  %1040 = zext i1 %1027 to i8
  store i8 %1040, i8* %46, align 1, !tbaa !2447
  %1041 = lshr i64 %1025, 63
  %1042 = trunc i64 %1041 to i8
  store i8 %1042, i8* %49, align 1, !tbaa !2448
  %1043 = lshr i64 %1024, 63
  %1044 = xor i64 %1041, %1043
  %1045 = add nuw nsw i64 %1044, %1041
  %1046 = icmp eq i64 %1045, 2
  %1047 = zext i1 %1046 to i8
  store i8 %1047, i8* %55, align 1, !tbaa !2449
  %1048 = add i64 %1374, 12
  store i64 %1048, i64* %PC, align 8
  store i64 %1025, i64* %1023, align 8
  %.pre135 = load i64, i64* %RBP, align 8
  %.pre136 = load i64, i64* %PC, align 8
  br label %block_4010ff

block_400ced:                                     ; preds = %block_400cc0, %block_400ccd
  %1049 = phi i64 [ %1387, %block_400cc0 ], [ %.pre125, %block_400ccd ]
  %1050 = phi i64 [ %1464, %block_400cc0 ], [ %.pre124, %block_400ccd ]
  %1051 = add i64 %1050, -10668
  %1052 = add i64 %1049, 7
  store i64 %1052, i64* %PC, align 8
  %1053 = inttoptr i64 %1051 to i32*
  %1054 = load i32, i32* %1053, align 4
  %1055 = sext i32 %1054 to i64
  store i64 %1055, i64* %RAX, align 8, !tbaa !2428
  %1056 = shl nsw i64 %1055, 2
  %1057 = add i64 %1050, -8320
  %1058 = add i64 %1057, %1056
  %1059 = add i64 %1049, 14
  store i64 %1059, i64* %PC, align 8
  %1060 = inttoptr i64 %1058 to i32*
  %1061 = load i32, i32* %1060, align 4
  %1062 = zext i32 %1061 to i64
  store i64 %1062, i64* %RCX, align 8, !tbaa !2428
  %1063 = add i64 %1049, 20
  store i64 %1063, i64* %PC, align 8
  store i32 %1061, i32* %1053, align 4
  %1064 = load i64, i64* %RBP, align 8
  %1065 = add i64 %1064, -56
  %1066 = load i64, i64* %PC, align 8
  %1067 = add i64 %1066, 4
  store i64 %1067, i64* %PC, align 8
  %1068 = inttoptr i64 %1065 to i64*
  %1069 = load i64, i64* %1068, align 8
  %1070 = shl i64 %1069, 1
  %1071 = icmp slt i64 %1069, 0
  %1072 = icmp slt i64 %1070, 0
  %1073 = xor i1 %1071, %1072
  store i64 %1070, i64* %RAX, align 8, !tbaa !2428
  %.lobit = lshr i64 %1069, 63
  %1074 = trunc i64 %.lobit to i8
  store i8 %1074, i8* %30, align 1, !tbaa !2451
  %1075 = trunc i64 %1070 to i32
  %1076 = and i32 %1075, 254
  %1077 = tail call i32 @llvm.ctpop.i32(i32 %1076) #12
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  store i8 %1080, i8* %37, align 1, !tbaa !2451
  store i8 0, i8* %43, align 1, !tbaa !2451
  %1081 = icmp eq i64 %1070, 0
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %46, align 1, !tbaa !2451
  %1083 = lshr i64 %1069, 62
  %1084 = trunc i64 %1083 to i8
  %1085 = and i8 %1084, 1
  store i8 %1085, i8* %49, align 1, !tbaa !2451
  %1086 = zext i1 %1073 to i8
  store i8 %1086, i8* %55, align 1, !tbaa !2451
  %1087 = add i64 %1066, 12
  store i64 %1087, i64* %PC, align 8
  store i64 %1070, i64* %1068, align 8
  %1088 = load i64, i64* %RBP, align 8
  %1089 = add i64 %1088, -48
  %1090 = load i64, i64* %PC, align 8
  %1091 = add i64 %1090, 4
  store i64 %1091, i64* %PC, align 8
  %1092 = inttoptr i64 %1089 to i64*
  %1093 = load i64, i64* %1092, align 8
  %1094 = add i64 %1093, 1
  store i64 %1094, i64* %RAX, align 8, !tbaa !2428
  %1095 = icmp eq i64 %1093, -1
  %1096 = icmp eq i64 %1094, 0
  %1097 = or i1 %1095, %1096
  %1098 = zext i1 %1097 to i8
  store i8 %1098, i8* %30, align 1, !tbaa !2432
  %1099 = trunc i64 %1094 to i32
  %1100 = and i32 %1099, 255
  %1101 = tail call i32 @llvm.ctpop.i32(i32 %1100) #12
  %1102 = trunc i32 %1101 to i8
  %1103 = and i8 %1102, 1
  %1104 = xor i8 %1103, 1
  store i8 %1104, i8* %37, align 1, !tbaa !2446
  %1105 = xor i64 %1094, %1093
  %1106 = lshr i64 %1105, 4
  %1107 = trunc i64 %1106 to i8
  %1108 = and i8 %1107, 1
  store i8 %1108, i8* %43, align 1, !tbaa !2450
  %1109 = zext i1 %1096 to i8
  store i8 %1109, i8* %46, align 1, !tbaa !2447
  %1110 = lshr i64 %1094, 63
  %1111 = trunc i64 %1110 to i8
  store i8 %1111, i8* %49, align 1, !tbaa !2448
  %1112 = lshr i64 %1093, 63
  %1113 = xor i64 %1110, %1112
  %1114 = add nuw nsw i64 %1113, %1110
  %1115 = icmp eq i64 %1114, 2
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %55, align 1, !tbaa !2449
  %1117 = add i64 %1090, 12
  store i64 %1117, i64* %PC, align 8
  store i64 %1094, i64* %1092, align 8
  %1118 = load i64, i64* %PC, align 8
  %1119 = add i64 %1118, -102
  store i64 %1119, i64* %PC, align 8, !tbaa !2428
  br label %block_400cb3

block_4012e0.sink.split:                          ; preds = %block_4012f6, %block_4012cf
  %1120 = phi i64 [ %1008, %block_4012f6 ], [ %1196, %block_4012cf ]
  %1121 = phi i64 [ %1138, %block_4012f6 ], [ %358, %block_4012cf ]
  %.sink69 = phi i64 [ %1020, %block_4012f6 ], [ %1208, %block_4012cf ]
  %1122 = phi i64 [ %1009, %block_4012f6 ], [ %1197, %block_4012cf ]
  %.sink58 = phi i64 [ %1007, %block_4012f6 ], [ %1195, %block_4012cf ]
  %.sink53 = phi i64 [ -48, %block_4012f6 ], [ -80, %block_4012cf ]
  %.sink48.ph = phi i64 [ -34, %block_4012f6 ], [ 5, %block_4012cf ]
  %1123 = lshr i64 %.sink69, 4
  %1124 = trunc i64 %1123 to i8
  %1125 = and i8 %1124, 1
  store i8 %1125, i8* %43, align 1, !tbaa !2450
  %1126 = icmp eq i64 %1122, 0
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %46, align 1, !tbaa !2447
  %1128 = lshr i64 %1122, 63
  %1129 = trunc i64 %1128 to i8
  store i8 %1129, i8* %49, align 1, !tbaa !2448
  %1130 = lshr i64 %.sink58, 63
  %1131 = xor i64 %1130, %1128
  %1132 = add nuw nsw i64 %1131, %1128
  %1133 = icmp eq i64 %1132, 2
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %55, align 1, !tbaa !2449
  %1135 = add i64 %1121, %.sink53
  %1136 = add i64 %1120, 4
  store i64 %1136, i64* %PC, align 8
  %1137 = inttoptr i64 %1135 to i64*
  store i64 %1122, i64* %1137, align 8
  %.pre144 = load i64, i64* %PC, align 8
  %.pre145 = load i64, i64* %RBP, align 8
  br label %block_4012e0

block_4012e0:                                     ; preds = %block_4012e0.sink.split, %block_4012a8
  %1138 = phi i64 [ %358, %block_4012a8 ], [ %.pre145, %block_4012e0.sink.split ]
  %1139 = phi i64 [ %381, %block_4012a8 ], [ %.pre144, %block_4012e0.sink.split ]
  %.sink48 = phi i64 [ 5, %block_4012a8 ], [ %.sink48.ph, %block_4012e0.sink.split ]
  %1140 = add i64 %1139, %.sink48
  %1141 = add i64 %1138, -48
  %1142 = add i64 %1140, 4
  store i64 %1142, i64* %PC, align 8
  %1143 = inttoptr i64 %1141 to i64*
  %1144 = load i64, i64* %1143, align 8
  store i64 %1144, i64* %RAX, align 8, !tbaa !2428
  %1145 = shl i64 %1144, 3
  %1146 = add i64 %1145, -12736
  %1147 = add i64 %1146, %1138
  %1148 = add i64 %1140, 12
  store i64 %1148, i64* %PC, align 8
  %1149 = inttoptr i64 %1147 to i64*
  %1150 = load i64, i64* %1149, align 8
  store i64 %1150, i64* %RAX, align 8, !tbaa !2428
  %1151 = add i64 %1138, -80
  %1152 = add i64 %1140, 16
  store i64 %1152, i64* %PC, align 8
  %1153 = inttoptr i64 %1151 to i64*
  %1154 = load i64, i64* %1153, align 8
  %1155 = sub i64 %1150, %1154
  %1156 = icmp ult i64 %1150, %1154
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %30, align 1, !tbaa !2432
  %1158 = trunc i64 %1155 to i32
  %1159 = and i32 %1158, 255
  %1160 = tail call i32 @llvm.ctpop.i32(i32 %1159) #12
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  %1163 = xor i8 %1162, 1
  store i8 %1163, i8* %37, align 1, !tbaa !2446
  %1164 = xor i64 %1154, %1150
  %1165 = xor i64 %1164, %1155
  %1166 = lshr i64 %1165, 4
  %1167 = trunc i64 %1166 to i8
  %1168 = and i8 %1167, 1
  store i8 %1168, i8* %43, align 1, !tbaa !2450
  %1169 = icmp eq i64 %1155, 0
  %1170 = zext i1 %1169 to i8
  store i8 %1170, i8* %46, align 1, !tbaa !2447
  %1171 = lshr i64 %1155, 63
  %1172 = trunc i64 %1171 to i8
  store i8 %1172, i8* %49, align 1, !tbaa !2448
  %1173 = lshr i64 %1150, 63
  %1174 = lshr i64 %1154, 63
  %1175 = xor i64 %1174, %1173
  %1176 = xor i64 %1171, %1173
  %1177 = add nuw nsw i64 %1176, %1175
  %1178 = icmp eq i64 %1177, 2
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %55, align 1, !tbaa !2449
  %.v164 = select i1 %1156, i64 22, i64 39
  %1180 = add i64 %1140, %.v164
  %1181 = add i64 %1180, 4
  store i64 %1181, i64* %PC, align 8
  br i1 %1156, label %block_4012f6, label %block_401307

block_400f08:                                     ; preds = %block_400ea8
  %1182 = add i64 %1991, -10688
  %1183 = add i64 %2026, 10
  store i64 %1183, i64* %PC, align 8
  %1184 = inttoptr i64 %1182 to i32*
  store i32 0, i32* %1184, align 4
  %1185 = load i64, i64* %RBP, align 8
  %1186 = add i64 %1185, -10681
  %1187 = load i64, i64* %PC, align 8
  %1188 = add i64 %1187, 7
  store i64 %1188, i64* %PC, align 8
  %1189 = inttoptr i64 %1186 to i8*
  store i8 0, i8* %1189, align 1
  %1190 = load i64, i64* %PC, align 8
  %1191 = add i64 %1190, 38
  store i64 %1191, i64* %PC, align 8, !tbaa !2428
  br label %block_400f3f

block_4012cf:                                     ; preds = %block_4012a8
  %1192 = add i64 %358, -80
  %1193 = add i64 %381, 4
  store i64 %1193, i64* %PC, align 8
  %1194 = inttoptr i64 %1192 to i64*
  %1195 = load i64, i64* %1194, align 8
  %1196 = add i64 %381, 8
  store i64 %1196, i64* %PC, align 8
  %1197 = add i64 %1195, 1
  store i64 %1197, i64* %RAX, align 8, !tbaa !2428
  %1198 = icmp eq i64 %1195, -1
  %1199 = icmp eq i64 %1197, 0
  %1200 = or i1 %1198, %1199
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %30, align 1, !tbaa !2432
  %1202 = trunc i64 %1197 to i32
  %1203 = and i32 %1202, 255
  %1204 = tail call i32 @llvm.ctpop.i32(i32 %1203) #12
  %1205 = trunc i32 %1204 to i8
  %1206 = and i8 %1205, 1
  %1207 = xor i8 %1206, 1
  store i8 %1207, i8* %37, align 1, !tbaa !2446
  %1208 = xor i64 %1197, %1195
  br label %block_4012e0.sink.split

block_4011be:                                     ; preds = %block_4011b0
  %1209 = add i64 %494, -88
  %1210 = add i64 %506, 80
  store i64 %1210, i64* %PC, align 8
  %1211 = inttoptr i64 %1209 to i64*
  %1212 = load i64, i64* %1211, align 8
  store i64 %1212, i64* %RAX, align 8, !tbaa !2428
  %1213 = add i64 %494, -56
  %1214 = add i64 %506, 84
  store i64 %1214, i64* %PC, align 8
  %1215 = inttoptr i64 %1213 to i64*
  %1216 = load i64, i64* %1215, align 8
  store i64 %1216, i64* %RCX, align 8, !tbaa !2428
  %1217 = shl i64 %1216, 3
  %1218 = add i64 %1217, -12736
  %1219 = add i64 %1218, %494
  %1220 = add i64 %506, 92
  store i64 %1220, i64* %PC, align 8
  %1221 = inttoptr i64 %1219 to i64*
  store i64 %1212, i64* %1221, align 8
  %1222 = load i64, i64* %RBP, align 8
  %1223 = add i64 %1222, -89
  %1224 = load i64, i64* %PC, align 8
  %1225 = add i64 %1224, 3
  store i64 %1225, i64* %PC, align 8
  %1226 = inttoptr i64 %1223 to i8*
  %1227 = load i8, i8* %1226, align 1
  store i8 %1227, i8* %DL, align 1, !tbaa !2451
  %1228 = add i64 %1222, -56
  %1229 = add i64 %1224, 7
  store i64 %1229, i64* %PC, align 8
  %1230 = inttoptr i64 %1228 to i64*
  %1231 = load i64, i64* %1230, align 8
  store i64 %1231, i64* %RAX, align 8, !tbaa !2428
  %1232 = add i64 %1231, -12992
  %1233 = add i64 %1232, %1222
  %1234 = add i64 %1224, 14
  store i64 %1234, i64* %PC, align 8
  %1235 = inttoptr i64 %1233 to i8*
  store i8 %1227, i8* %1235, align 1
  %1236 = load i64, i64* %RBP, align 8
  %1237 = add i64 %1236, -48
  %1238 = load i64, i64* %PC, align 8
  %1239 = add i64 %1238, 4
  store i64 %1239, i64* %PC, align 8
  %1240 = inttoptr i64 %1237 to i64*
  %1241 = load i64, i64* %1240, align 8
  %1242 = add i64 %1241, 1
  store i64 %1242, i64* %RAX, align 8, !tbaa !2428
  %1243 = icmp eq i64 %1241, -1
  %1244 = icmp eq i64 %1242, 0
  %1245 = or i1 %1243, %1244
  %1246 = zext i1 %1245 to i8
  store i8 %1246, i8* %30, align 1, !tbaa !2432
  %1247 = trunc i64 %1242 to i32
  %1248 = and i32 %1247, 255
  %1249 = tail call i32 @llvm.ctpop.i32(i32 %1248) #12
  %1250 = trunc i32 %1249 to i8
  %1251 = and i8 %1250, 1
  %1252 = xor i8 %1251, 1
  store i8 %1252, i8* %37, align 1, !tbaa !2446
  %1253 = xor i64 %1242, %1241
  %1254 = lshr i64 %1253, 4
  %1255 = trunc i64 %1254 to i8
  %1256 = and i8 %1255, 1
  store i8 %1256, i8* %43, align 1, !tbaa !2450
  %1257 = zext i1 %1244 to i8
  store i8 %1257, i8* %46, align 1, !tbaa !2447
  %1258 = lshr i64 %1242, 63
  %1259 = trunc i64 %1258 to i8
  store i8 %1259, i8* %49, align 1, !tbaa !2448
  %1260 = lshr i64 %1241, 63
  %1261 = xor i64 %1258, %1260
  %1262 = add nuw nsw i64 %1261, %1258
  %1263 = icmp eq i64 %1262, 2
  %1264 = zext i1 %1263 to i8
  store i8 %1264, i8* %55, align 1, !tbaa !2449
  %1265 = add i64 %1238, 12
  store i64 %1265, i64* %PC, align 8
  store i64 %1242, i64* %1240, align 8
  %1266 = load i64, i64* %PC, align 8
  %1267 = add i64 %1266, -234
  store i64 %1267, i64* %PC, align 8, !tbaa !2428
  br label %block_40114a

block_400aca:                                     ; preds = %block_400abf
  %1268 = add i64 %2475, -6272
  store i64 %1268, i64* %RSI, align 8, !tbaa !2428
  %1269 = add i64 %2475, -4224
  store i64 %1269, i64* %RDI, align 8, !tbaa !2428
  %1270 = add i64 %2475, -64
  %1271 = add i64 %2490, 18
  store i64 %1271, i64* %PC, align 8
  %1272 = inttoptr i64 %1270 to i64*
  %1273 = load i64, i64* %1272, align 8
  store i64 %1273, i64* %RAX, align 8, !tbaa !2428
  %1274 = and i64 %1273, 4294967295
  store i64 %1274, i64* %RCX, align 8, !tbaa !2428
  %1275 = add i64 %2490, 24
  store i64 %1275, i64* %PC, align 8
  %1276 = load i64, i64* %2478, align 8
  store i64 %1276, i64* %RAX, align 8, !tbaa !2428
  %1277 = trunc i64 %1276 to i32
  %1278 = add i64 %2475, -13076
  %1279 = add i64 %2490, 32
  store i64 %1279, i64* %PC, align 8
  %1280 = inttoptr i64 %1278 to i32*
  store i32 %1277, i32* %1280, align 4
  %1281 = load i32, i32* %ECX, align 4
  %1282 = zext i32 %1281 to i64
  %1283 = load i64, i64* %PC, align 8
  store i64 %1282, i64* %RDX, align 8, !tbaa !2428
  %1284 = load i64, i64* %RBP, align 8
  %1285 = add i64 %1284, -13076
  %1286 = add i64 %1283, 8
  store i64 %1286, i64* %PC, align 8
  %1287 = inttoptr i64 %1285 to i32*
  %1288 = load i32, i32* %1287, align 4
  %1289 = zext i32 %1288 to i64
  store i64 %1289, i64* %RCX, align 8, !tbaa !2428
  %1290 = add i64 %1283, 2246
  %1291 = add i64 %1283, 13
  %1292 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1293 = add i64 %1292, -8
  %1294 = inttoptr i64 %1293 to i64*
  store i64 %1291, i64* %1294, align 8
  store i64 %1293, i64* %RSP, align 8, !tbaa !2428
  store i64 %1290, i64* %PC, align 8, !tbaa !2428
  %1295 = tail call %struct.Memory* @sub_4013b0_heap_adjust_renamed_(%struct.State* nonnull %0, i64 %1290, %struct.Memory* %322)
  %1296 = load i64, i64* %RBP, align 8
  %1297 = add i64 %1296, -48
  %1298 = load i64, i64* %PC, align 8
  %1299 = add i64 %1298, 4
  store i64 %1299, i64* %PC, align 8
  %1300 = inttoptr i64 %1297 to i64*
  %1301 = load i64, i64* %1300, align 8
  %1302 = add i64 %1301, -1
  store i64 %1302, i64* %RAX, align 8, !tbaa !2428
  %1303 = icmp ne i64 %1301, 0
  %1304 = zext i1 %1303 to i8
  store i8 %1304, i8* %30, align 1, !tbaa !2432
  %1305 = trunc i64 %1302 to i32
  %1306 = and i32 %1305, 255
  %1307 = tail call i32 @llvm.ctpop.i32(i32 %1306) #12
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  %1310 = xor i8 %1309, 1
  store i8 %1310, i8* %37, align 1, !tbaa !2446
  %1311 = xor i64 %1301, 16
  %1312 = xor i64 %1311, %1302
  %1313 = lshr i64 %1312, 4
  %1314 = trunc i64 %1313 to i8
  %1315 = and i8 %1314, 1
  store i8 %1315, i8* %43, align 1, !tbaa !2450
  %1316 = icmp eq i64 %1302, 0
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %46, align 1, !tbaa !2447
  %1318 = lshr i64 %1302, 63
  %1319 = trunc i64 %1318 to i8
  store i8 %1319, i8* %49, align 1, !tbaa !2448
  %1320 = lshr i64 %1301, 63
  %1321 = xor i64 %1318, %1320
  %1322 = xor i64 %1318, 1
  %1323 = add nuw nsw i64 %1321, %1322
  %1324 = icmp eq i64 %1323, 2
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %55, align 1, !tbaa !2449
  %1326 = add i64 %1298, 12
  store i64 %1326, i64* %PC, align 8
  store i64 %1302, i64* %1300, align 8
  %1327 = load i64, i64* %PC, align 8
  %1328 = add i64 %1327, -68
  store i64 %1328, i64* %PC, align 8, !tbaa !2428
  br label %block_400abf

block_4010c9:                                     ; preds = %block_4010ae
  %1329 = shl i64 %1610, 1
  %1330 = or i64 %1329, 1
  store i64 %1330, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %30, align 1, !tbaa !2432
  %1331 = trunc i64 %1330 to i32
  %1332 = and i32 %1331, 255
  %1333 = tail call i32 @llvm.ctpop.i32(i32 %1332) #12
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  %1336 = xor i8 %1335, 1
  store i8 %1336, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 0, i8* %46, align 1, !tbaa !2447
  %1337 = lshr i64 %1610, 62
  %1338 = and i64 %1337, 1
  %1339 = trunc i64 %1338 to i8
  store i8 %1339, i8* %49, align 1, !tbaa !2448
  %1340 = lshr i64 %1610, 62
  %1341 = and i64 %1340, 1
  %1342 = xor i64 %1338, %1341
  %1343 = add nuw nsw i64 %1342, %1338
  %1344 = icmp eq i64 %1343, 2
  %1345 = zext i1 %1344 to i8
  store i8 %1345, i8* %55, align 1, !tbaa !2449
  %1346 = add i64 %1606, 16
  store i64 %1346, i64* %PC, align 8
  store i64 %1330, i64* %1609, align 8
  %1347 = load i64, i64* %RBP, align 8
  %1348 = add i64 %1347, -56
  %1349 = load i64, i64* %PC, align 8
  %1350 = add i64 %1349, 4
  store i64 %1350, i64* %PC, align 8
  %1351 = inttoptr i64 %1348 to i64*
  %1352 = load i64, i64* %1351, align 8
  store i64 %1352, i64* %RAX, align 8, !tbaa !2428
  %1353 = shl i64 %1352, 3
  %1354 = add i64 %1353, -10368
  %1355 = add i64 %1354, %1347
  %1356 = add i64 %1349, 12
  store i64 %1356, i64* %PC, align 8
  %1357 = inttoptr i64 %1355 to i64*
  %1358 = load i64, i64* %1357, align 8
  store i64 %1358, i64* %RAX, align 8, !tbaa !2428
  %1359 = add i64 %1347, -72
  %1360 = add i64 %1349, 16
  store i64 %1360, i64* %PC, align 8
  %1361 = inttoptr i64 %1359 to i64*
  %1362 = load i64, i64* %1361, align 8
  %1363 = and i64 %1362, %1358
  store i64 %1363, i64* %RAX, align 8, !tbaa !2428
  %1364 = trunc i64 %1363 to i32
  %1365 = and i32 %1364, 255
  %1366 = tail call i32 @llvm.ctpop.i32(i32 %1365) #12
  %1367 = trunc i32 %1366 to i8
  %1368 = and i8 %1367, 1
  %1369 = xor i8 %1368, 1
  %1370 = icmp eq i64 %1363, 0
  %1371 = zext i1 %1370 to i8
  %1372 = lshr i64 %1363, 63
  %1373 = trunc i64 %1372 to i8
  store i8 0, i8* %30, align 1, !tbaa !2432
  store i8 %1369, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 %1371, i8* %46, align 1, !tbaa !2447
  store i8 %1373, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %.v168 = select i1 %1370, i64 38, i64 26
  %1374 = add i64 %1349, %.v168
  store i64 %1374, i64* %PC, align 8, !tbaa !2428
  br i1 %1370, label %block_4010ff, label %block_4010f3

block_400cc0:                                     ; preds = %block_400cb3
  %1375 = add i64 %1478, 7
  store i64 %1375, i64* %PC, align 8
  %1376 = load i32, i32* %1467, align 4
  store i8 0, i8* %30, align 1, !tbaa !2432
  %1377 = and i32 %1376, 255
  %1378 = tail call i32 @llvm.ctpop.i32(i32 %1377) #12
  %1379 = trunc i32 %1378 to i8
  %1380 = and i8 %1379, 1
  %1381 = xor i8 %1380, 1
  store i8 %1381, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  %1382 = icmp eq i32 %1376, 0
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %46, align 1, !tbaa !2447
  %1384 = lshr i32 %1376, 31
  %1385 = trunc i32 %1384 to i8
  store i8 %1385, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %1386 = icmp ne i8 %1385, 0
  %.v = select i1 %1386, i64 6, i64 38
  %1387 = add i64 %1375, %.v
  store i64 %1387, i64* %PC, align 8, !tbaa !2428
  br i1 %1386, label %block_400ccd, label %block_400ced

block_400ccd:                                     ; preds = %block_400cc0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %30, align 1, !tbaa !2432
  store i8 1, i8* %37, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %1388 = add i64 %1464, -56
  %1389 = add i64 %1387, 6
  store i64 %1389, i64* %PC, align 8
  %1390 = inttoptr i64 %1388 to i64*
  %1391 = load i64, i64* %1390, align 8
  store i64 %1391, i64* %RCX, align 8, !tbaa !2428
  %1392 = add i64 %1464, -10648
  %1393 = add i64 %1387, 13
  store i64 %1393, i64* %PC, align 8
  %1394 = inttoptr i64 %1392 to i64*
  %1395 = load i64, i64* %1394, align 8
  %1396 = add i64 %1395, %1391
  store i64 %1396, i64* %RCX, align 8, !tbaa !2428
  %1397 = icmp ult i64 %1396, %1391
  %1398 = icmp ult i64 %1396, %1395
  %1399 = or i1 %1397, %1398
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %30, align 1, !tbaa !2432
  %1401 = trunc i64 %1396 to i32
  %1402 = and i32 %1401, 255
  %1403 = tail call i32 @llvm.ctpop.i32(i32 %1402) #12
  %1404 = trunc i32 %1403 to i8
  %1405 = and i8 %1404, 1
  %1406 = xor i8 %1405, 1
  store i8 %1406, i8* %37, align 1, !tbaa !2446
  %1407 = xor i64 %1395, %1391
  %1408 = xor i64 %1407, %1396
  %1409 = lshr i64 %1408, 4
  %1410 = trunc i64 %1409 to i8
  %1411 = and i8 %1410, 1
  store i8 %1411, i8* %43, align 1, !tbaa !2450
  %1412 = icmp eq i64 %1396, 0
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %46, align 1, !tbaa !2447
  %1414 = lshr i64 %1396, 63
  %1415 = trunc i64 %1414 to i8
  store i8 %1415, i8* %49, align 1, !tbaa !2448
  %1416 = lshr i64 %1391, 63
  %1417 = lshr i64 %1395, 63
  %1418 = xor i64 %1414, %1416
  %1419 = xor i64 %1414, %1417
  %1420 = add nuw nsw i64 %1418, %1419
  %1421 = icmp eq i64 %1420, 2
  %1422 = zext i1 %1421 to i8
  store i8 %1422, i8* %55, align 1, !tbaa !2449
  %1423 = add i64 %1387, 20
  store i64 %1423, i64* %PC, align 8
  store i64 %1396, i64* %1394, align 8
  %1424 = load i64, i64* %RAX, align 8
  %1425 = load i64, i64* %RBP, align 8
  %1426 = add i64 %1425, -10668
  %1427 = load i64, i64* %PC, align 8
  %1428 = add i64 %1427, 6
  store i64 %1428, i64* %PC, align 8
  %1429 = trunc i64 %1424 to i32
  %1430 = inttoptr i64 %1426 to i32*
  %1431 = load i32, i32* %1430, align 4
  %1432 = sub i32 %1429, %1431
  %1433 = zext i32 %1432 to i64
  store i64 %1433, i64* %RAX, align 8, !tbaa !2428
  %1434 = icmp ult i32 %1429, %1431
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %30, align 1, !tbaa !2432
  %1436 = and i32 %1432, 255
  %1437 = tail call i32 @llvm.ctpop.i32(i32 %1436) #12
  %1438 = trunc i32 %1437 to i8
  %1439 = and i8 %1438, 1
  %1440 = xor i8 %1439, 1
  store i8 %1440, i8* %37, align 1, !tbaa !2446
  %1441 = xor i32 %1431, %1429
  %1442 = xor i32 %1441, %1432
  %1443 = lshr i32 %1442, 4
  %1444 = trunc i32 %1443 to i8
  %1445 = and i8 %1444, 1
  store i8 %1445, i8* %43, align 1, !tbaa !2450
  %1446 = icmp eq i32 %1432, 0
  %1447 = zext i1 %1446 to i8
  store i8 %1447, i8* %46, align 1, !tbaa !2447
  %1448 = lshr i32 %1432, 31
  %1449 = trunc i32 %1448 to i8
  store i8 %1449, i8* %49, align 1, !tbaa !2448
  %1450 = lshr i32 %1429, 31
  %1451 = lshr i32 %1431, 31
  %1452 = xor i32 %1451, %1450
  %1453 = xor i32 %1448, %1450
  %1454 = add nuw nsw i32 %1453, %1452
  %1455 = icmp eq i32 %1454, 2
  %1456 = zext i1 %1455 to i8
  store i8 %1456, i8* %55, align 1, !tbaa !2449
  %1457 = add i64 %1427, 12
  store i64 %1457, i64* %PC, align 8
  store i32 %1432, i32* %1430, align 4
  %.pre124 = load i64, i64* %RBP, align 8
  %.pre125 = load i64, i64* %PC, align 8
  br label %block_400ced

block_400ab7:                                     ; preds = %block_400a64
  %1458 = add i64 %3365, -64
  %1459 = add i64 %3392, 4
  store i64 %1459, i64* %PC, align 8
  %1460 = inttoptr i64 %1458 to i64*
  %1461 = load i64, i64* %1460, align 8
  store i64 %1461, i64* %RAX, align 8, !tbaa !2428
  %1462 = add i64 %3392, 8
  store i64 %1462, i64* %PC, align 8
  store i64 %1461, i64* %3368, align 8
  %.pre119 = load i64, i64* %PC, align 8
  br label %block_400abf

block_400cb3:                                     ; preds = %block_400c84, %block_400ced
  %1463 = phi i64 [ %.pre123, %block_400c84 ], [ %1119, %block_400ced ]
  %1464 = load i64, i64* %RBP, align 8
  %1465 = add i64 %1464, -10668
  %1466 = add i64 %1463, 7
  store i64 %1466, i64* %PC, align 8
  %1467 = inttoptr i64 %1465 to i32*
  %1468 = load i32, i32* %1467, align 4
  store i8 0, i8* %30, align 1, !tbaa !2432
  %1469 = and i32 %1468, 255
  %1470 = tail call i32 @llvm.ctpop.i32(i32 %1469) #12
  %1471 = trunc i32 %1470 to i8
  %1472 = and i8 %1471, 1
  %1473 = xor i8 %1472, 1
  store i8 %1473, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  %1474 = icmp eq i32 %1468, 0
  %1475 = zext i1 %1474 to i8
  store i8 %1475, i8* %46, align 1, !tbaa !2447
  %1476 = lshr i32 %1468, 31
  %1477 = trunc i32 %1476 to i8
  store i8 %1477, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %.v174 = select i1 %1474, i64 107, i64 13
  %1478 = add i64 %1463, %.v174
  store i64 %1478, i64* %PC, align 8, !tbaa !2428
  br i1 %1474, label %block_400d1e, label %block_400cc0

block_40131d:                                     ; preds = %block_401307
  %1479 = add i64 %2784, 4
  store i64 %1479, i64* %PC, align 8
  %1480 = load i64, i64* %1143, align 8
  store i64 %1480, i64* %RAX, align 8, !tbaa !2428
  %1481 = add i64 %1480, -12992
  %1482 = add i64 %1481, %1138
  %1483 = add i64 %2784, 11
  store i64 %1483, i64* %PC, align 8
  %1484 = inttoptr i64 %1482 to i8*
  %1485 = load i8, i8* %1484, align 1
  store i8 %1485, i8* %CL, align 1, !tbaa !2451
  %1486 = add i64 %1138, -112
  %1487 = add i64 %2784, 15
  store i64 %1487, i64* %PC, align 8
  %1488 = inttoptr i64 %1486 to i64*
  %1489 = load i64, i64* %1488, align 8
  store i64 %1489, i64* %RAX, align 8, !tbaa !2428
  %1490 = add i64 %2784, 17
  store i64 %1490, i64* %PC, align 8
  %1491 = inttoptr i64 %1489 to i8*
  store i8 %1485, i8* %1491, align 1
  %1492 = load i64, i64* %RBP, align 8
  %1493 = add i64 %1492, -112
  %1494 = load i64, i64* %PC, align 8
  %1495 = add i64 %1494, 4
  store i64 %1495, i64* %PC, align 8
  %1496 = inttoptr i64 %1493 to i64*
  %1497 = load i64, i64* %1496, align 8
  %1498 = add i64 %1497, 1
  store i64 %1498, i64* %RAX, align 8, !tbaa !2428
  %1499 = icmp eq i64 %1497, -1
  %1500 = icmp eq i64 %1498, 0
  %1501 = or i1 %1499, %1500
  %1502 = zext i1 %1501 to i8
  store i8 %1502, i8* %30, align 1, !tbaa !2432
  %1503 = trunc i64 %1498 to i32
  %1504 = and i32 %1503, 255
  %1505 = tail call i32 @llvm.ctpop.i32(i32 %1504) #12
  %1506 = trunc i32 %1505 to i8
  %1507 = and i8 %1506, 1
  %1508 = xor i8 %1507, 1
  store i8 %1508, i8* %37, align 1, !tbaa !2446
  %1509 = xor i64 %1498, %1497
  %1510 = lshr i64 %1509, 4
  %1511 = trunc i64 %1510 to i8
  %1512 = and i8 %1511, 1
  store i8 %1512, i8* %43, align 1, !tbaa !2450
  %1513 = zext i1 %1500 to i8
  store i8 %1513, i8* %46, align 1, !tbaa !2447
  %1514 = lshr i64 %1498, 63
  %1515 = trunc i64 %1514 to i8
  store i8 %1515, i8* %49, align 1, !tbaa !2448
  %1516 = lshr i64 %1497, 63
  %1517 = xor i64 %1514, %1516
  %1518 = add nuw nsw i64 %1517, %1514
  %1519 = icmp eq i64 %1518, 2
  %1520 = zext i1 %1519 to i8
  store i8 %1520, i8* %55, align 1, !tbaa !2449
  %1521 = add i64 %1494, 12
  store i64 %1521, i64* %PC, align 8
  store i64 %1498, i64* %1496, align 8
  %1522 = load i64, i64* %RBP, align 8
  %1523 = add i64 %1522, -64
  %1524 = load i64, i64* %PC, align 8
  %1525 = add i64 %1524, 4
  store i64 %1525, i64* %PC, align 8
  %1526 = inttoptr i64 %1523 to i64*
  %1527 = load i64, i64* %1526, align 8
  %1528 = add i64 %1527, 1
  store i64 %1528, i64* %RAX, align 8, !tbaa !2428
  %1529 = icmp eq i64 %1527, -1
  %1530 = icmp eq i64 %1528, 0
  %1531 = or i1 %1529, %1530
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %30, align 1, !tbaa !2432
  %1533 = trunc i64 %1528 to i32
  %1534 = and i32 %1533, 255
  %1535 = tail call i32 @llvm.ctpop.i32(i32 %1534) #12
  %1536 = trunc i32 %1535 to i8
  %1537 = and i8 %1536, 1
  %1538 = xor i8 %1537, 1
  store i8 %1538, i8* %37, align 1, !tbaa !2446
  %1539 = xor i64 %1528, %1527
  %1540 = lshr i64 %1539, 4
  %1541 = trunc i64 %1540 to i8
  %1542 = and i8 %1541, 1
  store i8 %1542, i8* %43, align 1, !tbaa !2450
  %1543 = zext i1 %1530 to i8
  store i8 %1543, i8* %46, align 1, !tbaa !2447
  %1544 = lshr i64 %1528, 63
  %1545 = trunc i64 %1544 to i8
  store i8 %1545, i8* %49, align 1, !tbaa !2448
  %1546 = lshr i64 %1527, 63
  %1547 = xor i64 %1544, %1546
  %1548 = add nuw nsw i64 %1547, %1544
  %1549 = icmp eq i64 %1548, 2
  %1550 = zext i1 %1549 to i8
  store i8 %1550, i8* %55, align 1, !tbaa !2449
  %1551 = add i64 %1524, 12
  store i64 %1551, i64* %PC, align 8
  store i64 %1528, i64* %1526, align 8
  %1552 = load i64, i64* %RBP, align 8
  %1553 = add i64 %1552, -80
  %1554 = load i64, i64* %PC, align 8
  %1555 = add i64 %1554, 8
  store i64 %1555, i64* %PC, align 8
  %1556 = inttoptr i64 %1553 to i64*
  store i64 0, i64* %1556, align 8
  %1557 = load i64, i64* %RBP, align 8
  %1558 = add i64 %1557, -56
  %1559 = load i64, i64* %PC, align 8
  %1560 = add i64 %1559, 4
  store i64 %1560, i64* %PC, align 8
  %1561 = inttoptr i64 %1558 to i64*
  %1562 = load i64, i64* %1561, align 8
  store i64 %1562, i64* %RAX, align 8, !tbaa !2428
  %1563 = add i64 %1557, -48
  %1564 = add i64 %1559, 8
  store i64 %1564, i64* %PC, align 8
  %1565 = inttoptr i64 %1563 to i64*
  store i64 %1562, i64* %1565, align 8
  %.pre146 = load i64, i64* %RBP, align 8
  %.pre147 = load i64, i64* %PC, align 8
  br label %block_401356

block_4010ae:                                     ; preds = %block_4010ff, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
  %1566 = phi i64 [ %3363, %block_4010ff ], [ %.pre134, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit ]
  %1567 = load i64, i64* %RBP, align 8
  %1568 = add i64 %1567, -48
  %1569 = add i64 %1566, 4
  store i64 %1569, i64* %PC, align 8
  %1570 = inttoptr i64 %1568 to i64*
  %1571 = load i64, i64* %1570, align 8
  store i64 %1571, i64* %RAX, align 8, !tbaa !2428
  %1572 = add i64 %1567, -56
  %1573 = add i64 %1566, 8
  store i64 %1573, i64* %PC, align 8
  %1574 = inttoptr i64 %1572 to i64*
  %1575 = load i64, i64* %1574, align 8
  store i64 %1575, i64* %RCX, align 8, !tbaa !2428
  %1576 = add i64 %1575, -10624
  %1577 = add i64 %1576, %1567
  %1578 = add i64 %1566, 16
  store i64 %1578, i64* %PC, align 8
  %1579 = inttoptr i64 %1577 to i8*
  %1580 = load i8, i8* %1579, align 1
  %1581 = zext i8 %1580 to i64
  store i64 %1581, i64* %RDX, align 8, !tbaa !2428
  %1582 = zext i8 %1580 to i64
  store i64 %1582, i64* %RCX, align 8, !tbaa !2428
  %1583 = sub i64 %1571, %1582
  %1584 = icmp ult i64 %1571, %1582
  %1585 = zext i1 %1584 to i8
  store i8 %1585, i8* %30, align 1, !tbaa !2432
  %1586 = trunc i64 %1583 to i32
  %1587 = and i32 %1586, 255
  %1588 = tail call i32 @llvm.ctpop.i32(i32 %1587) #12
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  %1591 = xor i8 %1590, 1
  store i8 %1591, i8* %37, align 1, !tbaa !2446
  %1592 = xor i64 %1571, %1582
  %1593 = xor i64 %1592, %1583
  %1594 = lshr i64 %1593, 4
  %1595 = trunc i64 %1594 to i8
  %1596 = and i8 %1595, 1
  store i8 %1596, i8* %43, align 1, !tbaa !2450
  %1597 = icmp eq i64 %1583, 0
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %46, align 1, !tbaa !2447
  %1599 = lshr i64 %1583, 63
  %1600 = trunc i64 %1599 to i8
  store i8 %1600, i8* %49, align 1, !tbaa !2448
  %1601 = lshr i64 %1571, 63
  %1602 = xor i64 %1599, %1601
  %1603 = add nuw nsw i64 %1602, %1601
  %1604 = icmp eq i64 %1603, 2
  %1605 = zext i1 %1604 to i8
  store i8 %1605, i8* %55, align 1, !tbaa !2449
  %.v149 = select i1 %1584, i64 27, i64 110
  %1606 = add i64 %1566, %.v149
  %1607 = add i64 %1567, -80
  %1608 = add i64 %1606, 4
  store i64 %1608, i64* %PC, align 8
  %1609 = inttoptr i64 %1607 to i64*
  %1610 = load i64, i64* %1609, align 8
  store i64 %1610, i64* %RAX, align 8, !tbaa !2428
  br i1 %1584, label %block_4010c9, label %block_40111c

block_400aa1:                                     ; preds = %block_400a72, %block_400a85
  %1611 = phi i64 [ %3365, %block_400a72 ], [ %.pre118, %block_400a85 ]
  %1612 = phi i64 [ %1833, %block_400a72 ], [ %.pre117, %block_400a85 ]
  %1613 = add i64 %1611, -48
  %1614 = add i64 %1612, 9
  store i64 %1614, i64* %PC, align 8
  %1615 = inttoptr i64 %1613 to i64*
  %1616 = load i64, i64* %1615, align 8
  %1617 = add i64 %1616, 1
  store i64 %1617, i64* %RAX, align 8, !tbaa !2428
  %1618 = icmp eq i64 %1616, -1
  %1619 = icmp eq i64 %1617, 0
  %1620 = or i1 %1618, %1619
  %1621 = zext i1 %1620 to i8
  store i8 %1621, i8* %30, align 1, !tbaa !2432
  %1622 = trunc i64 %1617 to i32
  %1623 = and i32 %1622, 255
  %1624 = tail call i32 @llvm.ctpop.i32(i32 %1623) #12
  %1625 = trunc i32 %1624 to i8
  %1626 = and i8 %1625, 1
  %1627 = xor i8 %1626, 1
  store i8 %1627, i8* %37, align 1, !tbaa !2446
  %1628 = xor i64 %1617, %1616
  %1629 = lshr i64 %1628, 4
  %1630 = trunc i64 %1629 to i8
  %1631 = and i8 %1630, 1
  store i8 %1631, i8* %43, align 1, !tbaa !2450
  %1632 = zext i1 %1619 to i8
  store i8 %1632, i8* %46, align 1, !tbaa !2447
  %1633 = lshr i64 %1617, 63
  %1634 = trunc i64 %1633 to i8
  store i8 %1634, i8* %49, align 1, !tbaa !2448
  %1635 = lshr i64 %1616, 63
  %1636 = xor i64 %1633, %1635
  %1637 = add nuw nsw i64 %1636, %1633
  %1638 = icmp eq i64 %1637, 2
  %1639 = zext i1 %1638 to i8
  store i8 %1639, i8* %55, align 1, !tbaa !2449
  %1640 = add i64 %1612, 17
  store i64 %1640, i64* %PC, align 8
  store i64 %1617, i64* %1615, align 8
  %1641 = load i64, i64* %PC, align 8
  %1642 = add i64 %1641, -78
  store i64 %1642, i64* %PC, align 8, !tbaa !2428
  br label %block_400a64

block_400e9b:                                     ; preds = %block_400e7b
  %1643 = add i64 %1770, -10688
  %1644 = add i64 %1814, 7
  store i64 %1644, i64* %PC, align 8
  %1645 = inttoptr i64 %1643 to i32*
  %1646 = load i32, i32* %1645, align 4
  %1647 = add i32 %1646, -7
  %1648 = icmp ult i32 %1646, 7
  %1649 = zext i1 %1648 to i8
  store i8 %1649, i8* %30, align 1, !tbaa !2432
  %1650 = and i32 %1647, 255
  %1651 = tail call i32 @llvm.ctpop.i32(i32 %1650) #12
  %1652 = trunc i32 %1651 to i8
  %1653 = and i8 %1652, 1
  %1654 = xor i8 %1653, 1
  store i8 %1654, i8* %37, align 1, !tbaa !2446
  %1655 = xor i32 %1647, %1646
  %1656 = lshr i32 %1655, 4
  %1657 = trunc i32 %1656 to i8
  %1658 = and i8 %1657, 1
  store i8 %1658, i8* %43, align 1, !tbaa !2450
  %1659 = icmp eq i32 %1647, 0
  %1660 = zext i1 %1659 to i8
  store i8 %1660, i8* %46, align 1, !tbaa !2447
  %1661 = lshr i32 %1647, 31
  %1662 = trunc i32 %1661 to i8
  store i8 %1662, i8* %49, align 1, !tbaa !2448
  %1663 = lshr i32 %1646, 31
  %1664 = xor i32 %1661, %1663
  %1665 = add nuw nsw i32 %1664, %1663
  %1666 = icmp eq i32 %1665, 2
  %1667 = zext i1 %1666 to i8
  store i8 %1667, i8* %55, align 1, !tbaa !2449
  %.v170 = select i1 %1659, i64 13, i64 131
  %1668 = add i64 %1814, %.v170
  store i64 %1668, i64* %PC, align 8, !tbaa !2428
  br i1 %1659, label %block_400ea8, label %block_400f1e

block_401241:                                     ; preds = %block_401254, %block_401239
  %1669 = phi i64 [ %1943, %block_401254 ], [ %.pre142, %block_401239 ]
  %1670 = load i64, i64* %RBP, align 8
  %1671 = add i64 %1670, -56
  %1672 = add i64 %1669, 4
  store i64 %1672, i64* %PC, align 8
  %1673 = inttoptr i64 %1671 to i64*
  %1674 = load i64, i64* %1673, align 8
  store i64 %1674, i64* %RAX, align 8, !tbaa !2428
  %1675 = shl i64 %1674, 3
  %1676 = add i64 %1675, -12736
  %1677 = add i64 %1676, %1670
  %1678 = add i64 %1669, 13
  store i64 %1678, i64* %PC, align 8
  %1679 = inttoptr i64 %1677 to i64*
  %1680 = load i64, i64* %1679, align 8
  store i8 0, i8* %30, align 1, !tbaa !2432
  %1681 = trunc i64 %1680 to i32
  %1682 = and i32 %1681, 255
  %1683 = tail call i32 @llvm.ctpop.i32(i32 %1682) #12
  %1684 = trunc i32 %1683 to i8
  %1685 = and i8 %1684, 1
  %1686 = xor i8 %1685, 1
  store i8 %1686, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  %1687 = icmp eq i64 %1680, 0
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %46, align 1, !tbaa !2447
  %1689 = lshr i64 %1680, 63
  %1690 = trunc i64 %1689 to i8
  store i8 %1690, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %.v151 = select i1 %1687, i64 19, i64 41
  %1691 = add i64 %1669, %.v151
  store i64 %1691, i64* %PC, align 8, !tbaa !2428
  br i1 %1687, label %block_401254, label %block_40126a

block_40129a:                                     ; preds = %block_401386, %block_40126a
  %1692 = phi i64 [ %1945, %block_401386 ], [ %.pre143, %block_40126a ]
  %1693 = load i64, i64* %RBP, align 8
  %1694 = add i64 %1693, -64
  %1695 = add i64 %1692, 4
  store i64 %1695, i64* %PC, align 8
  %1696 = inttoptr i64 %1694 to i64*
  %1697 = load i64, i64* %1696, align 8
  store i64 %1697, i64* %RAX, align 8, !tbaa !2428
  %1698 = add i64 %1693, -40
  %1699 = add i64 %1692, 8
  store i64 %1699, i64* %PC, align 8
  %1700 = inttoptr i64 %1698 to i64*
  %1701 = load i64, i64* %1700, align 8
  %1702 = sub i64 %1697, %1701
  %1703 = icmp ult i64 %1697, %1701
  %1704 = zext i1 %1703 to i8
  store i8 %1704, i8* %30, align 1, !tbaa !2432
  %1705 = trunc i64 %1702 to i32
  %1706 = and i32 %1705, 255
  %1707 = tail call i32 @llvm.ctpop.i32(i32 %1706) #12
  %1708 = trunc i32 %1707 to i8
  %1709 = and i8 %1708, 1
  %1710 = xor i8 %1709, 1
  store i8 %1710, i8* %37, align 1, !tbaa !2446
  %1711 = xor i64 %1701, %1697
  %1712 = xor i64 %1711, %1702
  %1713 = lshr i64 %1712, 4
  %1714 = trunc i64 %1713 to i8
  %1715 = and i8 %1714, 1
  store i8 %1715, i8* %43, align 1, !tbaa !2450
  %1716 = icmp eq i64 %1702, 0
  %1717 = zext i1 %1716 to i8
  store i8 %1717, i8* %46, align 1, !tbaa !2447
  %1718 = lshr i64 %1702, 63
  %1719 = trunc i64 %1718 to i8
  store i8 %1719, i8* %49, align 1, !tbaa !2448
  %1720 = lshr i64 %1697, 63
  %1721 = lshr i64 %1701, 63
  %1722 = xor i64 %1721, %1720
  %1723 = xor i64 %1718, %1720
  %1724 = add nuw nsw i64 %1723, %1722
  %1725 = icmp eq i64 %1724, 2
  %1726 = zext i1 %1725 to i8
  store i8 %1726, i8* %55, align 1, !tbaa !2449
  %.v162 = select i1 %1703, i64 14, i64 241
  %1727 = add i64 %1692, %.v162
  store i64 %1727, i64* %PC, align 8, !tbaa !2428
  br i1 %1703, label %block_4012a8, label %block_40138b

block_400a85:                                     ; preds = %block_400a72
  %1728 = add i64 %1833, 4
  store i64 %1728, i64* %PC, align 8
  %1729 = load i64, i64* %3368, align 8
  store i64 %1729, i64* %RAX, align 8, !tbaa !2428
  %1730 = add i64 %3365, -64
  %1731 = add i64 %1833, 8
  store i64 %1731, i64* %PC, align 8
  %1732 = inttoptr i64 %1730 to i64*
  %1733 = load i64, i64* %1732, align 8
  store i64 %1733, i64* %RCX, align 8, !tbaa !2428
  %1734 = shl i64 %1733, 3
  %1735 = add i64 %1734, -6272
  %1736 = add i64 %1735, %3365
  %1737 = add i64 %1833, 16
  store i64 %1737, i64* %PC, align 8
  %1738 = inttoptr i64 %1736 to i64*
  store i64 %1729, i64* %1738, align 8
  %1739 = load i64, i64* %RBP, align 8
  %1740 = add i64 %1739, -64
  %1741 = load i64, i64* %PC, align 8
  %1742 = add i64 %1741, 4
  store i64 %1742, i64* %PC, align 8
  %1743 = inttoptr i64 %1740 to i64*
  %1744 = load i64, i64* %1743, align 8
  %1745 = add i64 %1744, 1
  store i64 %1745, i64* %RAX, align 8, !tbaa !2428
  %1746 = icmp eq i64 %1744, -1
  %1747 = icmp eq i64 %1745, 0
  %1748 = or i1 %1746, %1747
  %1749 = zext i1 %1748 to i8
  store i8 %1749, i8* %30, align 1, !tbaa !2432
  %1750 = trunc i64 %1745 to i32
  %1751 = and i32 %1750, 255
  %1752 = tail call i32 @llvm.ctpop.i32(i32 %1751) #12
  %1753 = trunc i32 %1752 to i8
  %1754 = and i8 %1753, 1
  %1755 = xor i8 %1754, 1
  store i8 %1755, i8* %37, align 1, !tbaa !2446
  %1756 = xor i64 %1745, %1744
  %1757 = lshr i64 %1756, 4
  %1758 = trunc i64 %1757 to i8
  %1759 = and i8 %1758, 1
  store i8 %1759, i8* %43, align 1, !tbaa !2450
  %1760 = zext i1 %1747 to i8
  store i8 %1760, i8* %46, align 1, !tbaa !2447
  %1761 = lshr i64 %1745, 63
  %1762 = trunc i64 %1761 to i8
  store i8 %1762, i8* %49, align 1, !tbaa !2448
  %1763 = lshr i64 %1744, 63
  %1764 = xor i64 %1761, %1763
  %1765 = add nuw nsw i64 %1764, %1761
  %1766 = icmp eq i64 %1765, 2
  %1767 = zext i1 %1766 to i8
  store i8 %1767, i8* %55, align 1, !tbaa !2449
  %1768 = add i64 %1741, 12
  store i64 %1768, i64* %PC, align 8
  store i64 %1745, i64* %1743, align 8
  %.pre117 = load i64, i64* %PC, align 8
  %.pre118 = load i64, i64* %RBP, align 8
  br label %block_400aa1

block_400e7b:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2, %block_400f70
  %1769 = phi i64 [ %.pre129, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2 ], [ %685, %block_400f70 ]
  %1770 = load i64, i64* %RBP, align 8
  %1771 = add i64 %1770, -48
  %1772 = add i64 %1769, 4
  store i64 %1772, i64* %PC, align 8
  %1773 = inttoptr i64 %1771 to i64*
  %1774 = load i64, i64* %1773, align 8
  store i64 %1774, i64* %RAX, align 8, !tbaa !2428
  %1775 = add i64 %1770, -112
  %1776 = add i64 %1769, 8
  store i64 %1776, i64* %PC, align 8
  %1777 = inttoptr i64 %1775 to i64*
  %1778 = load i64, i64* %1777, align 8
  store i64 %1778, i64* %RCX, align 8, !tbaa !2428
  %1779 = add i64 %1769, 11
  store i64 %1779, i64* %PC, align 8
  %1780 = inttoptr i64 %1778 to i8*
  %1781 = load i8, i8* %1780, align 1
  %1782 = zext i8 %1781 to i64
  store i64 %1782, i64* %RDX, align 8, !tbaa !2428
  %1783 = zext i8 %1781 to i64
  store i64 %1783, i64* %RCX, align 8, !tbaa !2428
  %1784 = add nsw i64 %1783, -10624
  %1785 = add i64 %1784, %1770
  %1786 = add i64 %1769, 21
  store i64 %1786, i64* %PC, align 8
  %1787 = inttoptr i64 %1785 to i8*
  %1788 = load i8, i8* %1787, align 1
  %1789 = zext i8 %1788 to i64
  store i64 %1789, i64* %RDX, align 8, !tbaa !2428
  %1790 = zext i8 %1788 to i64
  store i64 %1790, i64* %RCX, align 8, !tbaa !2428
  %1791 = sub i64 %1774, %1790
  %1792 = icmp ult i64 %1774, %1790
  %1793 = zext i1 %1792 to i8
  store i8 %1793, i8* %30, align 1, !tbaa !2432
  %1794 = trunc i64 %1791 to i32
  %1795 = and i32 %1794, 255
  %1796 = tail call i32 @llvm.ctpop.i32(i32 %1795) #12
  %1797 = trunc i32 %1796 to i8
  %1798 = and i8 %1797, 1
  %1799 = xor i8 %1798, 1
  store i8 %1799, i8* %37, align 1, !tbaa !2446
  %1800 = xor i64 %1774, %1790
  %1801 = xor i64 %1800, %1791
  %1802 = lshr i64 %1801, 4
  %1803 = trunc i64 %1802 to i8
  %1804 = and i8 %1803, 1
  store i8 %1804, i8* %43, align 1, !tbaa !2450
  %1805 = icmp eq i64 %1791, 0
  %1806 = zext i1 %1805 to i8
  store i8 %1806, i8* %46, align 1, !tbaa !2447
  %1807 = lshr i64 %1791, 63
  %1808 = trunc i64 %1807 to i8
  store i8 %1808, i8* %49, align 1, !tbaa !2448
  %1809 = lshr i64 %1774, 63
  %1810 = xor i64 %1807, %1809
  %1811 = add nuw nsw i64 %1810, %1809
  %1812 = icmp eq i64 %1811, 2
  %1813 = zext i1 %1812 to i8
  store i8 %1813, i8* %55, align 1, !tbaa !2449
  %.v169 = select i1 %1792, i64 32, i64 274
  %1814 = add i64 %1769, %.v169
  store i64 %1814, i64* %PC, align 8, !tbaa !2428
  br i1 %1792, label %block_400e9b, label %block_400f8d

block_400a72:                                     ; preds = %block_400a64
  %1815 = add i64 %3392, 4
  store i64 %1815, i64* %PC, align 8
  %1816 = load i64, i64* %3368, align 8
  store i64 %1816, i64* %RAX, align 8, !tbaa !2428
  %1817 = shl i64 %1816, 3
  %1818 = add i64 %1817, -4224
  %1819 = add i64 %1818, %3365
  %1820 = add i64 %3392, 13
  store i64 %1820, i64* %PC, align 8
  %1821 = inttoptr i64 %1819 to i64*
  %1822 = load i64, i64* %1821, align 8
  store i8 0, i8* %30, align 1, !tbaa !2432
  %1823 = trunc i64 %1822 to i32
  %1824 = and i32 %1823, 255
  %1825 = tail call i32 @llvm.ctpop.i32(i32 %1824) #12
  %1826 = trunc i32 %1825 to i8
  %1827 = and i8 %1826, 1
  %1828 = xor i8 %1827, 1
  store i8 %1828, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  %1829 = icmp eq i64 %1822, 0
  %1830 = zext i1 %1829 to i8
  store i8 %1830, i8* %46, align 1, !tbaa !2447
  %1831 = lshr i64 %1822, 63
  %1832 = trunc i64 %1831 to i8
  store i8 %1832, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %.v177 = select i1 %1829, i64 47, i64 19
  %1833 = add i64 %3392, %.v177
  store i64 %1833, i64* %PC, align 8, !tbaa !2428
  br i1 %1829, label %block_400aa1, label %block_400a85

block_40126a:                                     ; preds = %block_401241
  %1834 = add i64 %1670, -80
  %1835 = add i64 %1691, 8
  store i64 %1835, i64* %PC, align 8
  %1836 = inttoptr i64 %1834 to i64*
  store i64 0, i64* %1836, align 8
  %1837 = load i64, i64* %RBP, align 8
  %1838 = add i64 %1837, -56
  %1839 = load i64, i64* %PC, align 8
  %1840 = add i64 %1839, 4
  store i64 %1840, i64* %PC, align 8
  %1841 = inttoptr i64 %1838 to i64*
  %1842 = load i64, i64* %1841, align 8
  store i64 %1842, i64* %RAX, align 8, !tbaa !2428
  %1843 = add i64 %1837, -48
  %1844 = add i64 %1839, 8
  store i64 %1844, i64* %PC, align 8
  %1845 = inttoptr i64 %1843 to i64*
  store i64 %1842, i64* %1845, align 8
  %1846 = load i64, i64* %RBP, align 8
  %1847 = add i64 %1846, -72
  %1848 = load i64, i64* %PC, align 8
  %1849 = add i64 %1848, 8
  store i64 %1849, i64* %PC, align 8
  %1850 = inttoptr i64 %1847 to i64*
  store i64 128, i64* %1850, align 8
  %1851 = load i64, i64* %RBP, align 8
  %1852 = add i64 %1851, -64
  %1853 = load i64, i64* %PC, align 8
  %1854 = add i64 %1853, 8
  store i64 %1854, i64* %PC, align 8
  %1855 = inttoptr i64 %1852 to i64*
  store i64 0, i64* %1855, align 8
  %1856 = load i64, i64* %RBP, align 8
  %1857 = add i64 %1856, -120
  %1858 = load i64, i64* %PC, align 8
  %1859 = add i64 %1858, 4
  store i64 %1859, i64* %PC, align 8
  %1860 = inttoptr i64 %1857 to i64*
  %1861 = load i64, i64* %1860, align 8
  store i64 %1861, i64* %RAX, align 8, !tbaa !2428
  %1862 = add i64 %1856, -104
  %1863 = add i64 %1858, 8
  store i64 %1863, i64* %PC, align 8
  %1864 = inttoptr i64 %1862 to i64*
  store i64 %1861, i64* %1864, align 8
  %1865 = load i64, i64* %RBP, align 8
  %1866 = add i64 %1865, -32
  %1867 = load i64, i64* %PC, align 8
  %1868 = add i64 %1867, 4
  store i64 %1868, i64* %PC, align 8
  %1869 = inttoptr i64 %1866 to i64*
  %1870 = load i64, i64* %1869, align 8
  store i64 %1870, i64* %RAX, align 8, !tbaa !2428
  %1871 = add i64 %1865, -112
  %1872 = add i64 %1867, 8
  store i64 %1872, i64* %PC, align 8
  %1873 = inttoptr i64 %1871 to i64*
  store i64 %1870, i64* %1873, align 8
  %.pre143 = load i64, i64* %PC, align 8
  br label %block_40129a

block_400c5d:                                     ; preds = %block_400c47
  %1874 = add i64 %2136, 7
  store i64 %1874, i64* %PC, align 8
  %1875 = load i64, i64* %2573, align 8
  store i64 %1875, i64* %RAX, align 8, !tbaa !2428
  %1876 = shl i64 %1875, 3
  %1877 = add i64 %1876, -10368
  %1878 = add i64 %1877, %2570
  %1879 = add i64 %2136, 19
  store i64 %1879, i64* %PC, align 8
  %1880 = inttoptr i64 %1878 to i64*
  store i64 0, i64* %1880, align 8
  %1881 = load i64, i64* %RBP, align 8
  %1882 = add i64 %1881, -10640
  %1883 = load i64, i64* %PC, align 8
  %1884 = add i64 %1883, 7
  store i64 %1884, i64* %PC, align 8
  %1885 = inttoptr i64 %1882 to i64*
  %1886 = load i64, i64* %1885, align 8
  store i64 %1886, i64* %RAX, align 8, !tbaa !2428
  %1887 = add i64 %1886, -10624
  %1888 = add i64 %1887, %1881
  %1889 = add i64 %1883, 15
  store i64 %1889, i64* %PC, align 8
  %1890 = inttoptr i64 %1888 to i8*
  store i8 0, i8* %1890, align 1
  br label %block_400d8b

block_400d7b:                                     ; preds = %block_400d6a
  %1891 = add i64 %722, 4
  store i64 %1891, i64* %PC, align 8
  %1892 = load i64, i64* %690, align 8
  store i64 %1892, i64* %RAX, align 8, !tbaa !2428
  %1893 = add i64 %722, 11
  store i64 %1893, i64* %PC, align 8
  store i64 %1892, i64* %694, align 8
  br label %block_400d8b

block_400edf:                                     ; preds = %block_400ea8
  store i64 add (i64 ptrtoint (%seg_401660__rodata_type* @seg_401660__rodata to i64), i64 96), i64* %RSI, align 8, !tbaa !2428
  %1894 = load i64, i64* @stderr, align 32
  store i64 %1894, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1895 = add i64 %2026, -2223
  %1896 = add i64 %2026, 25
  %1897 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1898 = add i64 %1897, -8
  %1899 = inttoptr i64 %1898 to i64*
  store i64 %1896, i64* %1899, align 8
  store i64 %1898, i64* %RSP, align 8, !tbaa !2428
  store i64 %1895, i64* %PC, align 8, !tbaa !2428
  %1900 = tail call fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %322)
  %1901 = load i64, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %1902 = load i64, i64* %RBP, align 8
  %1903 = add i64 %1902, -13088
  %1904 = load i32, i32* %EAX, align 4
  %1905 = add i64 %1901, 11
  store i64 %1905, i64* %PC, align 8
  %1906 = inttoptr i64 %1903 to i32*
  store i32 %1904, i32* %1906, align 4
  %1907 = load i64, i64* %PC, align 8
  %1908 = add i64 %1907, -2211
  %1909 = add i64 %1907, 5
  %1910 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1911 = add i64 %1910, -8
  %1912 = inttoptr i64 %1911 to i64*
  store i64 %1909, i64* %1912, align 8
  store i64 %1911, i64* %RSP, align 8, !tbaa !2428
  store i64 %1908, i64* %PC, align 8, !tbaa !2428
  %1913 = tail call fastcc %struct.Memory* @ext_400660_exit(%struct.State* nonnull %0, %struct.Memory* %1900)
  %1914 = load i64, i64* %PC, align 8
  %1915 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %1914, %struct.Memory* %1913)
  ret %struct.Memory* %1915

block_401254:                                     ; preds = %block_401241
  %1916 = add i64 %1691, 9
  store i64 %1916, i64* %PC, align 8
  %1917 = load i64, i64* %1673, align 8
  %1918 = add i64 %1917, 1
  store i64 %1918, i64* %RAX, align 8, !tbaa !2428
  %1919 = icmp eq i64 %1917, -1
  %1920 = icmp eq i64 %1918, 0
  %1921 = or i1 %1919, %1920
  %1922 = zext i1 %1921 to i8
  store i8 %1922, i8* %30, align 1, !tbaa !2432
  %1923 = trunc i64 %1918 to i32
  %1924 = and i32 %1923, 255
  %1925 = tail call i32 @llvm.ctpop.i32(i32 %1924) #12
  %1926 = trunc i32 %1925 to i8
  %1927 = and i8 %1926, 1
  %1928 = xor i8 %1927, 1
  store i8 %1928, i8* %37, align 1, !tbaa !2446
  %1929 = xor i64 %1918, %1917
  %1930 = lshr i64 %1929, 4
  %1931 = trunc i64 %1930 to i8
  %1932 = and i8 %1931, 1
  store i8 %1932, i8* %43, align 1, !tbaa !2450
  %1933 = zext i1 %1920 to i8
  store i8 %1933, i8* %46, align 1, !tbaa !2447
  %1934 = lshr i64 %1918, 63
  %1935 = trunc i64 %1934 to i8
  store i8 %1935, i8* %49, align 1, !tbaa !2448
  %1936 = lshr i64 %1917, 63
  %1937 = xor i64 %1934, %1936
  %1938 = add nuw nsw i64 %1937, %1934
  %1939 = icmp eq i64 %1938, 2
  %1940 = zext i1 %1939 to i8
  store i8 %1940, i8* %55, align 1, !tbaa !2449
  %1941 = add i64 %1691, 17
  store i64 %1941, i64* %PC, align 8
  store i64 %1918, i64* %1673, align 8
  %1942 = load i64, i64* %PC, align 8
  %1943 = add i64 %1942, -36
  store i64 %1943, i64* %PC, align 8, !tbaa !2428
  br label %block_401241

block_401386:                                     ; preds = %block_401361, %block_401372
  %1944 = phi i64 [ %740, %block_401361 ], [ %.pre148, %block_401372 ]
  %1945 = add i64 %1944, -236
  store i64 %1945, i64* %PC, align 8, !tbaa !2428
  br label %block_40129a

block_400ea8:                                     ; preds = %block_400e9b
  %1946 = add i64 %1770, -10681
  %1947 = add i64 %1668, 6
  store i64 %1947, i64* %PC, align 8
  %1948 = inttoptr i64 %1946 to i8*
  %1949 = load i8, i8* %1948, align 1
  store i8 %1949, i8* %AL, align 1, !tbaa !2451
  %1950 = add i64 %1770, -120
  %1951 = add i64 %1668, 10
  store i64 %1951, i64* %PC, align 8
  %1952 = inttoptr i64 %1950 to i64*
  %1953 = load i64, i64* %1952, align 8
  store i64 %1953, i64* %RCX, align 8, !tbaa !2428
  %1954 = add i64 %1770, -10680
  %1955 = add i64 %1668, 17
  store i64 %1955, i64* %PC, align 8
  %1956 = inttoptr i64 %1954 to i64*
  %1957 = load i64, i64* %1956, align 8
  store i64 %1957, i64* %RDX, align 8, !tbaa !2428
  %1958 = add i64 %1953, %1957
  %1959 = add i64 %1668, 20
  store i64 %1959, i64* %PC, align 8
  %1960 = inttoptr i64 %1958 to i8*
  store i8 %1949, i8* %1960, align 1
  %1961 = load i64, i64* %RBP, align 8
  %1962 = add i64 %1961, -10680
  %1963 = load i64, i64* %PC, align 8
  %1964 = add i64 %1963, 7
  store i64 %1964, i64* %PC, align 8
  %1965 = inttoptr i64 %1962 to i64*
  %1966 = load i64, i64* %1965, align 8
  %1967 = add i64 %1966, 1
  store i64 %1967, i64* %RCX, align 8, !tbaa !2428
  %1968 = icmp eq i64 %1966, -1
  %1969 = icmp eq i64 %1967, 0
  %1970 = or i1 %1968, %1969
  %1971 = zext i1 %1970 to i8
  store i8 %1971, i8* %30, align 1, !tbaa !2432
  %1972 = trunc i64 %1967 to i32
  %1973 = and i32 %1972, 255
  %1974 = tail call i32 @llvm.ctpop.i32(i32 %1973) #12
  %1975 = trunc i32 %1974 to i8
  %1976 = and i8 %1975, 1
  %1977 = xor i8 %1976, 1
  store i8 %1977, i8* %37, align 1, !tbaa !2446
  %1978 = xor i64 %1967, %1966
  %1979 = lshr i64 %1978, 4
  %1980 = trunc i64 %1979 to i8
  %1981 = and i8 %1980, 1
  store i8 %1981, i8* %43, align 1, !tbaa !2450
  %1982 = zext i1 %1969 to i8
  store i8 %1982, i8* %46, align 1, !tbaa !2447
  %1983 = lshr i64 %1967, 63
  %1984 = trunc i64 %1983 to i8
  store i8 %1984, i8* %49, align 1, !tbaa !2448
  %1985 = lshr i64 %1966, 63
  %1986 = xor i64 %1983, %1985
  %1987 = add nuw nsw i64 %1986, %1983
  %1988 = icmp eq i64 %1987, 2
  %1989 = zext i1 %1988 to i8
  store i8 %1989, i8* %55, align 1, !tbaa !2449
  %1990 = add i64 %1963, 18
  store i64 %1990, i64* %PC, align 8
  store i64 %1967, i64* %1965, align 8
  %1991 = load i64, i64* %RBP, align 8
  %1992 = add i64 %1991, -10680
  %1993 = load i64, i64* %PC, align 8
  %1994 = add i64 %1993, 7
  store i64 %1994, i64* %PC, align 8
  %1995 = inttoptr i64 %1992 to i64*
  %1996 = load i64, i64* %1995, align 8
  store i64 %1996, i64* %RCX, align 8, !tbaa !2428
  %1997 = add i64 %1991, -40
  %1998 = add i64 %1993, 11
  store i64 %1998, i64* %PC, align 8
  %1999 = inttoptr i64 %1997 to i64*
  %2000 = load i64, i64* %1999, align 8
  %2001 = sub i64 %1996, %2000
  %2002 = icmp ult i64 %1996, %2000
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %30, align 1, !tbaa !2432
  %2004 = trunc i64 %2001 to i32
  %2005 = and i32 %2004, 255
  %2006 = tail call i32 @llvm.ctpop.i32(i32 %2005) #12
  %2007 = trunc i32 %2006 to i8
  %2008 = and i8 %2007, 1
  %2009 = xor i8 %2008, 1
  store i8 %2009, i8* %37, align 1, !tbaa !2446
  %2010 = xor i64 %2000, %1996
  %2011 = xor i64 %2010, %2001
  %2012 = lshr i64 %2011, 4
  %2013 = trunc i64 %2012 to i8
  %2014 = and i8 %2013, 1
  store i8 %2014, i8* %43, align 1, !tbaa !2450
  %2015 = icmp eq i64 %2001, 0
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %46, align 1, !tbaa !2447
  %2017 = lshr i64 %2001, 63
  %2018 = trunc i64 %2017 to i8
  store i8 %2018, i8* %49, align 1, !tbaa !2448
  %2019 = lshr i64 %1996, 63
  %2020 = lshr i64 %2000, 63
  %2021 = xor i64 %2020, %2019
  %2022 = xor i64 %2017, %2019
  %2023 = add nuw nsw i64 %2022, %2021
  %2024 = icmp eq i64 %2023, 2
  %2025 = zext i1 %2024 to i8
  store i8 %2025, i8* %55, align 1, !tbaa !2449
  %.v172 = select i1 %2015, i64 17, i64 58
  %2026 = add i64 %1993, %.v172
  store i64 %2026, i64* %PC, align 8, !tbaa !2428
  br i1 %2015, label %block_400edf, label %block_400f08

block_400e4f:                                     ; preds = %block_400e41
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %2027 = add i64 %2167, -112
  %2028 = add i64 %2201, 9
  store i64 %2028, i64* %PC, align 8
  %2029 = inttoptr i64 %2027 to i64*
  %2030 = load i64, i64* %2029, align 8
  store i64 %2030, i64* %RCX, align 8, !tbaa !2428
  %2031 = add i64 %2201, 12
  store i64 %2031, i64* %PC, align 8
  %2032 = inttoptr i64 %2030 to i8*
  %2033 = load i8, i8* %2032, align 1
  %2034 = zext i8 %2033 to i64
  store i64 %2034, i64* %RDX, align 8, !tbaa !2428
  %2035 = zext i8 %2033 to i64
  store i64 %2035, i64* %RCX, align 8, !tbaa !2428
  %2036 = add nsw i64 %2035, -10624
  %2037 = add i64 %2036, %2167
  %2038 = add i64 %2201, 22
  store i64 %2038, i64* %PC, align 8
  %2039 = inttoptr i64 %2037 to i8*
  %2040 = load i8, i8* %2039, align 1
  %2041 = zext i8 %2040 to i32
  %2042 = add nsw i32 %2041, -1
  %2043 = zext i32 %2042 to i64
  store i64 %2043, i64* %RDX, align 8, !tbaa !2428
  %2044 = icmp eq i8 %2040, 0
  %2045 = zext i1 %2044 to i8
  store i8 %2045, i8* %30, align 1, !tbaa !2432
  %2046 = and i32 %2042, 255
  %2047 = tail call i32 @llvm.ctpop.i32(i32 %2046) #12
  %2048 = trunc i32 %2047 to i8
  %2049 = and i8 %2048, 1
  %2050 = xor i8 %2049, 1
  store i8 %2050, i8* %37, align 1, !tbaa !2446
  %2051 = xor i32 %2042, %2041
  %2052 = lshr i32 %2051, 4
  %2053 = trunc i32 %2052 to i8
  %2054 = and i8 %2053, 1
  store i8 %2054, i8* %43, align 1, !tbaa !2450
  %2055 = icmp eq i32 %2042, 0
  %2056 = zext i1 %2055 to i8
  store i8 %2056, i8* %46, align 1, !tbaa !2447
  %2057 = lshr i32 %2042, 31
  %2058 = trunc i32 %2057 to i8
  store i8 %2058, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  store i64 %2043, i64* %RCX, align 8, !tbaa !2428
  %2059 = add i64 %2201, 29
  store i64 %2059, i64* %PC, align 8
  %2060 = trunc i32 %2042 to i5
  switch i5 %2060, label %2061 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2
    i5 1, label %2070
  ]

; <label>:2061:                                   ; preds = %block_400e4f
  %2062 = and i32 %2042, 31
  %2063 = zext i32 %2062 to i64
  %2064 = add nuw nsw i64 %2063, 4294967295
  %2065 = and i64 %2064, 4294967295
  %2066 = shl i64 1, %2065
  %2067 = trunc i64 %2066 to i32
  %2068 = icmp slt i32 %2067, 0
  %2069 = shl i32 %2067, 1
  br label %2070

; <label>:2070:                                   ; preds = %block_400e4f, %2061
  %2071 = phi i1 [ %2068, %2061 ], [ false, %block_400e4f ]
  %2072 = phi i32 [ %2069, %2061 ], [ 2, %block_400e4f ]
  %2073 = zext i32 %2072 to i64
  store i64 %2073, i64* %RAX, align 8, !tbaa !2428
  %2074 = zext i1 %2071 to i8
  store i8 %2074, i8* %30, align 1, !tbaa !2451
  %2075 = and i32 %2072, 254
  %2076 = tail call i32 @llvm.ctpop.i32(i32 %2075) #12
  %2077 = trunc i32 %2076 to i8
  %2078 = and i8 %2077, 1
  %2079 = xor i8 %2078, 1
  store i8 %2079, i8* %37, align 1, !tbaa !2451
  store i8 0, i8* %43, align 1, !tbaa !2451
  %2080 = icmp eq i32 %2072, 0
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %46, align 1, !tbaa !2451
  %2082 = lshr i32 %2072, 31
  %2083 = trunc i32 %2082 to i8
  store i8 %2083, i8* %49, align 1, !tbaa !2451
  store i8 0, i8* %55, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit2: ; preds = %2070, %block_400e4f
  %2084 = phi i32 [ %2072, %2070 ], [ 1, %block_400e4f ]
  %2085 = sext i32 %2084 to i64
  store i64 %2085, i64* %RSI, align 8, !tbaa !2428
  %2086 = add i64 %2167, -72
  %2087 = add i64 %2201, 36
  store i64 %2087, i64* %PC, align 8
  %2088 = inttoptr i64 %2086 to i64*
  store i64 %2085, i64* %2088, align 8
  %2089 = load i64, i64* %RBP, align 8
  %2090 = add i64 %2089, -48
  %2091 = load i64, i64* %PC, align 8
  %2092 = add i64 %2091, 8
  store i64 %2092, i64* %PC, align 8
  %2093 = inttoptr i64 %2090 to i64*
  store i64 0, i64* %2093, align 8
  %.pre129 = load i64, i64* %PC, align 8
  br label %block_400e7b

block_40117e:                                     ; preds = %block_401158, %block_4011c3
  %2094 = phi i64 [ %.pre140, %block_401158 ], [ %492, %block_4011c3 ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %30, align 1, !tbaa !2432
  store i8 1, i8* %37, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 0, i8* %CL, align 1, !tbaa !2451
  %2095 = load i64, i64* %RBP, align 8
  %2096 = add i64 %2095, -56
  %2097 = add i64 %2094, 9
  store i64 %2097, i64* %PC, align 8
  %2098 = inttoptr i64 %2096 to i64*
  %2099 = load i64, i64* %2098, align 8
  store i8 0, i8* %30, align 1, !tbaa !2432
  %2100 = trunc i64 %2099 to i32
  %2101 = and i32 %2100, 255
  %2102 = tail call i32 @llvm.ctpop.i32(i32 %2101) #12
  %2103 = trunc i32 %2102 to i8
  %2104 = and i8 %2103, 1
  %2105 = xor i8 %2104, 1
  store i8 %2105, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  %2106 = icmp eq i64 %2099, 0
  %2107 = zext i1 %2106 to i8
  store i8 %2107, i8* %46, align 1, !tbaa !2447
  %2108 = lshr i64 %2099, 63
  %2109 = trunc i64 %2108 to i8
  store i8 %2109, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %2110 = add i64 %2095, -13097
  %2111 = add i64 %2094, 15
  store i64 %2111, i64* %PC, align 8
  %2112 = inttoptr i64 %2110 to i8*
  store i8 0, i8* %2112, align 1
  %2113 = load i64, i64* %PC, align 8
  %2114 = load i8, i8* %46, align 1, !tbaa !2447
  %2115 = icmp ne i8 %2114, 0
  %.v214 = select i1 %2115, i64 35, i64 6
  %2116 = add i64 %2113, %.v214
  store i64 %2116, i64* %PC, align 8, !tbaa !2428
  %2117 = icmp eq i8 %2114, 1
  br i1 %2117, label %block_4011b0, label %block_401193

block_400c47:                                     ; preds = %block_400c36
  %2118 = add i64 %2597, 7
  store i64 %2118, i64* %PC, align 8
  %2119 = load i64, i64* %2573, align 8
  store i64 %2119, i64* %RAX, align 8, !tbaa !2428
  %2120 = shl i64 %2119, 3
  %2121 = add i64 %2120, -4224
  %2122 = add i64 %2121, %2570
  %2123 = add i64 %2597, 16
  store i64 %2123, i64* %PC, align 8
  %2124 = inttoptr i64 %2122 to i64*
  %2125 = load i64, i64* %2124, align 8
  store i8 0, i8* %30, align 1, !tbaa !2432
  %2126 = trunc i64 %2125 to i32
  %2127 = and i32 %2126, 255
  %2128 = tail call i32 @llvm.ctpop.i32(i32 %2127) #12
  %2129 = trunc i32 %2128 to i8
  %2130 = and i8 %2129, 1
  %2131 = xor i8 %2130, 1
  store i8 %2131, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  %2132 = icmp eq i64 %2125, 0
  %2133 = zext i1 %2132 to i8
  store i8 %2133, i8* %46, align 1, !tbaa !2447
  %2134 = lshr i64 %2125, 63
  %2135 = trunc i64 %2134 to i8
  store i8 %2135, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %.v173 = select i1 %2132, i64 22, i64 61
  %2136 = add i64 %2597, %.v173
  store i64 %2136, i64* %PC, align 8, !tbaa !2428
  br i1 %2132, label %block_400c5d, label %block_400c84

block_400c84:                                     ; preds = %block_400c47
  %2137 = add i64 %2570, -48
  %2138 = add i64 %2136, 8
  store i64 %2138, i64* %PC, align 8
  %2139 = inttoptr i64 %2137 to i64*
  store i64 0, i64* %2139, align 8
  %2140 = load i64, i64* %RBP, align 8
  %2141 = add i64 %2140, -56
  %2142 = load i64, i64* %PC, align 8
  %2143 = add i64 %2142, 8
  store i64 %2143, i64* %PC, align 8
  %2144 = inttoptr i64 %2141 to i64*
  store i64 1, i64* %2144, align 8
  %2145 = load i64, i64* %RBP, align 8
  %2146 = add i64 %2145, -10648
  %2147 = load i64, i64* %PC, align 8
  %2148 = add i64 %2147, 11
  store i64 %2148, i64* %PC, align 8
  %2149 = inttoptr i64 %2146 to i64*
  store i64 0, i64* %2149, align 8
  %2150 = load i64, i64* %RBP, align 8
  %2151 = add i64 %2150, -10640
  %2152 = load i64, i64* %PC, align 8
  %2153 = add i64 %2152, 7
  store i64 %2153, i64* %PC, align 8
  %2154 = inttoptr i64 %2151 to i64*
  %2155 = load i64, i64* %2154, align 8
  store i64 %2155, i64* %RAX, align 8, !tbaa !2428
  %2156 = shl i64 %2155, 2
  %2157 = add i64 %2156, -8320
  %2158 = add i64 %2157, %2150
  %2159 = add i64 %2152, 14
  store i64 %2159, i64* %PC, align 8
  %2160 = inttoptr i64 %2158 to i32*
  %2161 = load i32, i32* %2160, align 4
  %2162 = zext i32 %2161 to i64
  store i64 %2162, i64* %RCX, align 8, !tbaa !2428
  %2163 = add i64 %2150, -10668
  %2164 = add i64 %2152, 20
  store i64 %2164, i64* %PC, align 8
  %2165 = inttoptr i64 %2163 to i32*
  store i32 %2161, i32* %2165, align 4
  %.pre123 = load i64, i64* %PC, align 8
  br label %block_400cb3

block_400e41:                                     ; preds = %block_400f8d, %block_400e39
  %2166 = phi i64 [ %2655, %block_400f8d ], [ %.pre128, %block_400e39 ]
  %2167 = load i64, i64* %RBP, align 8
  %2168 = add i64 %2167, -56
  %2169 = add i64 %2166, 4
  store i64 %2169, i64* %PC, align 8
  %2170 = inttoptr i64 %2168 to i64*
  %2171 = load i64, i64* %2170, align 8
  store i64 %2171, i64* %RAX, align 8, !tbaa !2428
  %2172 = add i64 %2167, -40
  %2173 = add i64 %2166, 8
  store i64 %2173, i64* %PC, align 8
  %2174 = inttoptr i64 %2172 to i64*
  %2175 = load i64, i64* %2174, align 8
  %2176 = sub i64 %2171, %2175
  %2177 = icmp ult i64 %2171, %2175
  %2178 = zext i1 %2177 to i8
  store i8 %2178, i8* %30, align 1, !tbaa !2432
  %2179 = trunc i64 %2176 to i32
  %2180 = and i32 %2179, 255
  %2181 = tail call i32 @llvm.ctpop.i32(i32 %2180) #12
  %2182 = trunc i32 %2181 to i8
  %2183 = and i8 %2182, 1
  %2184 = xor i8 %2183, 1
  store i8 %2184, i8* %37, align 1, !tbaa !2446
  %2185 = xor i64 %2175, %2171
  %2186 = xor i64 %2185, %2176
  %2187 = lshr i64 %2186, 4
  %2188 = trunc i64 %2187 to i8
  %2189 = and i8 %2188, 1
  store i8 %2189, i8* %43, align 1, !tbaa !2450
  %2190 = icmp eq i64 %2176, 0
  %2191 = zext i1 %2190 to i8
  store i8 %2191, i8* %46, align 1, !tbaa !2447
  %2192 = lshr i64 %2176, 63
  %2193 = trunc i64 %2192 to i8
  store i8 %2193, i8* %49, align 1, !tbaa !2448
  %2194 = lshr i64 %2171, 63
  %2195 = lshr i64 %2175, 63
  %2196 = xor i64 %2195, %2194
  %2197 = xor i64 %2192, %2194
  %2198 = add nuw nsw i64 %2197, %2196
  %2199 = icmp eq i64 %2198, 2
  %2200 = zext i1 %2199 to i8
  store i8 %2200, i8* %55, align 1, !tbaa !2449
  %.v159 = select i1 %2177, i64 14, i64 361
  %2201 = add i64 %2166, %.v159
  store i64 %2201, i64* %PC, align 8, !tbaa !2428
  br i1 %2177, label %block_400e4f, label %block_400faa

block_400b18:                                     ; preds = %block_400b0d
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %2202 = add i64 %976, -6272
  store i64 %2202, i64* %RSI, align 8, !tbaa !2428
  %2203 = add i64 %976, -4224
  store i64 %2203, i64* %RDI, align 8, !tbaa !2428
  %2204 = add i64 %1006, 23
  store i64 %2204, i64* %PC, align 8
  %2205 = load i64, i64* %981, align 8
  %2206 = add i64 %2205, -1
  store i64 %2206, i64* %RAX, align 8, !tbaa !2428
  %2207 = icmp ne i64 %2205, 0
  %2208 = zext i1 %2207 to i8
  store i8 %2208, i8* %30, align 1, !tbaa !2432
  %2209 = trunc i64 %2206 to i32
  %2210 = and i32 %2209, 255
  %2211 = tail call i32 @llvm.ctpop.i32(i32 %2210) #12
  %2212 = trunc i32 %2211 to i8
  %2213 = and i8 %2212, 1
  %2214 = xor i8 %2213, 1
  store i8 %2214, i8* %37, align 1, !tbaa !2446
  %2215 = xor i64 %2205, 16
  %2216 = xor i64 %2215, %2206
  %2217 = lshr i64 %2216, 4
  %2218 = trunc i64 %2217 to i8
  %2219 = and i8 %2218, 1
  store i8 %2219, i8* %43, align 1, !tbaa !2450
  %2220 = icmp eq i64 %2206, 0
  %2221 = zext i1 %2220 to i8
  store i8 %2221, i8* %46, align 1, !tbaa !2447
  %2222 = lshr i64 %2206, 63
  %2223 = trunc i64 %2222 to i8
  store i8 %2223, i8* %49, align 1, !tbaa !2448
  %2224 = lshr i64 %2205, 63
  %2225 = xor i64 %2222, %2224
  %2226 = xor i64 %2222, 1
  %2227 = add nuw nsw i64 %2225, %2226
  %2228 = icmp eq i64 %2227, 2
  %2229 = zext i1 %2228 to i8
  store i8 %2229, i8* %55, align 1, !tbaa !2449
  %2230 = add i64 %1006, 31
  store i64 %2230, i64* %PC, align 8
  store i64 %2206, i64* %981, align 8
  %2231 = load i64, i64* %RBP, align 8
  %2232 = add i64 %2231, -6272
  %2233 = load i64, i64* %PC, align 8
  %2234 = add i64 %2233, 7
  store i64 %2234, i64* %PC, align 8
  %2235 = inttoptr i64 %2232 to i64*
  %2236 = load i64, i64* %2235, align 8
  store i64 %2236, i64* %RAX, align 8, !tbaa !2428
  %2237 = add i64 %2231, -10632
  %2238 = add i64 %2233, 14
  store i64 %2238, i64* %PC, align 8
  %2239 = inttoptr i64 %2237 to i64*
  store i64 %2236, i64* %2239, align 8
  %2240 = load i64, i64* %RBP, align 8
  %2241 = add i64 %2240, -64
  %2242 = load i64, i64* %PC, align 8
  %2243 = add i64 %2242, 4
  store i64 %2243, i64* %PC, align 8
  %2244 = inttoptr i64 %2241 to i64*
  %2245 = load i64, i64* %2244, align 8
  store i64 %2245, i64* %RAX, align 8, !tbaa !2428
  %2246 = shl i64 %2245, 3
  %2247 = add i64 %2246, -6272
  %2248 = add i64 %2247, %2240
  %2249 = add i64 %2242, 12
  store i64 %2249, i64* %PC, align 8
  %2250 = inttoptr i64 %2248 to i64*
  %2251 = load i64, i64* %2250, align 8
  store i64 %2251, i64* %RAX, align 8, !tbaa !2428
  %2252 = add i64 %2240, -6272
  %2253 = add i64 %2242, 19
  store i64 %2253, i64* %PC, align 8
  %2254 = inttoptr i64 %2252 to i64*
  store i64 %2251, i64* %2254, align 8
  %2255 = load i64, i64* %RBP, align 8
  %2256 = add i64 %2255, -64
  %2257 = load i64, i64* %PC, align 8
  %2258 = add i64 %2257, 4
  store i64 %2258, i64* %PC, align 8
  %2259 = inttoptr i64 %2256 to i64*
  %2260 = load i64, i64* %2259, align 8
  store i64 %2260, i64* %RAX, align 8, !tbaa !2428
  %2261 = and i64 %2260, 4294967295
  store i64 %2261, i64* %RDX, align 8, !tbaa !2428
  %2262 = add i64 %2257, 2136
  %2263 = add i64 %2257, 11
  %2264 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2265 = add i64 %2264, -8
  %2266 = inttoptr i64 %2265 to i64*
  store i64 %2263, i64* %2266, align 8
  store i64 %2265, i64* %RSP, align 8, !tbaa !2428
  store i64 %2262, i64* %PC, align 8, !tbaa !2428
  %2267 = tail call %struct.Memory* @sub_4013b0_heap_adjust_renamed_(%struct.State* nonnull %0, i64 %2262, %struct.Memory* %322)
  %2268 = load i64, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %2269 = load i64, i64* %RBP, align 8
  %2270 = add i64 %2269, -6272
  store i64 %2270, i64* %RSI, align 8, !tbaa !2428
  %2271 = add i64 %2269, -4224
  store i64 %2271, i64* %RDI, align 8, !tbaa !2428
  store i64 -256, i64* %RAX, align 8, !tbaa !2428
  %2272 = add i64 %2268, 33
  store i64 %2272, i64* %PC, align 8
  %2273 = inttoptr i64 %2270 to i64*
  %2274 = load i64, i64* %2273, align 8
  store i64 %2274, i64* %R8, align 8, !tbaa !2428
  %2275 = shl i64 %2274, 3
  %2276 = add i64 %2275, -4224
  %2277 = add i64 %2276, %2269
  %2278 = add i64 %2268, 41
  store i64 %2278, i64* %PC, align 8
  %2279 = inttoptr i64 %2277 to i64*
  %2280 = load i64, i64* %2279, align 8
  store i64 %2280, i64* %R8, align 8, !tbaa !2428
  %2281 = add i64 %2269, -10632
  %2282 = add i64 %2268, 48
  store i64 %2282, i64* %PC, align 8
  %2283 = inttoptr i64 %2281 to i64*
  %2284 = load i64, i64* %2283, align 8
  store i64 %2284, i64* %R9, align 8, !tbaa !2428
  %2285 = shl i64 %2284, 3
  %2286 = add i64 %2285, -4224
  %2287 = add i64 %2286, %2269
  %2288 = add i64 %2268, 56
  store i64 %2288, i64* %PC, align 8
  %2289 = inttoptr i64 %2287 to i64*
  %2290 = load i64, i64* %2289, align 8
  %2291 = add i64 %2290, %2280
  store i64 %2291, i64* %R8, align 8, !tbaa !2428
  %2292 = icmp ult i64 %2291, %2280
  %2293 = icmp ult i64 %2291, %2290
  %2294 = or i1 %2292, %2293
  %2295 = zext i1 %2294 to i8
  store i8 %2295, i8* %30, align 1, !tbaa !2432
  %2296 = trunc i64 %2291 to i32
  %2297 = and i32 %2296, 255
  %2298 = tail call i32 @llvm.ctpop.i32(i32 %2297) #12
  %2299 = trunc i32 %2298 to i8
  %2300 = and i8 %2299, 1
  %2301 = xor i8 %2300, 1
  store i8 %2301, i8* %37, align 1, !tbaa !2446
  %2302 = xor i64 %2290, %2280
  %2303 = xor i64 %2302, %2291
  %2304 = lshr i64 %2303, 4
  %2305 = trunc i64 %2304 to i8
  %2306 = and i8 %2305, 1
  store i8 %2306, i8* %43, align 1, !tbaa !2450
  %2307 = icmp eq i64 %2291, 0
  %2308 = zext i1 %2307 to i8
  store i8 %2308, i8* %46, align 1, !tbaa !2447
  %2309 = lshr i64 %2291, 63
  %2310 = trunc i64 %2309 to i8
  store i8 %2310, i8* %49, align 1, !tbaa !2448
  %2311 = lshr i64 %2280, 63
  %2312 = lshr i64 %2290, 63
  %2313 = xor i64 %2309, %2311
  %2314 = xor i64 %2309, %2312
  %2315 = add nuw nsw i64 %2313, %2314
  %2316 = icmp eq i64 %2315, 2
  %2317 = zext i1 %2316 to i8
  store i8 %2317, i8* %55, align 1, !tbaa !2449
  %2318 = add i64 %2269, -64
  %2319 = add i64 %2268, 60
  store i64 %2319, i64* %PC, align 8
  %2320 = inttoptr i64 %2318 to i64*
  %2321 = load i64, i64* %2320, align 8
  %2322 = add i64 %2321, 256
  store i64 %2322, i64* %R9, align 8, !tbaa !2428
  %2323 = icmp ugt i64 %2321, -257
  %2324 = zext i1 %2323 to i8
  store i8 %2324, i8* %30, align 1, !tbaa !2432
  %2325 = trunc i64 %2322 to i32
  %2326 = and i32 %2325, 255
  %2327 = tail call i32 @llvm.ctpop.i32(i32 %2326) #12
  %2328 = trunc i32 %2327 to i8
  %2329 = and i8 %2328, 1
  %2330 = xor i8 %2329, 1
  store i8 %2330, i8* %37, align 1, !tbaa !2446
  %2331 = xor i64 %2322, %2321
  %2332 = lshr i64 %2331, 4
  %2333 = trunc i64 %2332 to i8
  %2334 = and i8 %2333, 1
  store i8 %2334, i8* %43, align 1, !tbaa !2450
  %2335 = icmp eq i64 %2322, 0
  %2336 = zext i1 %2335 to i8
  store i8 %2336, i8* %46, align 1, !tbaa !2447
  %2337 = lshr i64 %2322, 63
  %2338 = trunc i64 %2337 to i8
  store i8 %2338, i8* %49, align 1, !tbaa !2448
  %2339 = lshr i64 %2321, 63
  %2340 = xor i64 %2337, %2339
  %2341 = add nuw nsw i64 %2340, %2337
  %2342 = icmp eq i64 %2341, 2
  %2343 = zext i1 %2342 to i8
  store i8 %2343, i8* %55, align 1, !tbaa !2449
  %2344 = load i64, i64* %RBP, align 8
  %2345 = shl i64 %2322, 3
  %2346 = add i64 %2344, -4224
  %2347 = add i64 %2346, %2345
  %2348 = add i64 %2268, 75
  store i64 %2348, i64* %PC, align 8
  %2349 = inttoptr i64 %2347 to i64*
  store i64 %2291, i64* %2349, align 8
  %2350 = load i64, i64* %RBP, align 8
  %2351 = add i64 %2350, -64
  %2352 = load i64, i64* %PC, align 8
  %2353 = add i64 %2352, 4
  store i64 %2353, i64* %PC, align 8
  %2354 = inttoptr i64 %2351 to i64*
  %2355 = load i64, i64* %2354, align 8
  %2356 = add i64 %2355, 256
  store i64 %2356, i64* %R8, align 8, !tbaa !2428
  %2357 = icmp ugt i64 %2355, -257
  %2358 = zext i1 %2357 to i8
  store i8 %2358, i8* %30, align 1, !tbaa !2432
  %2359 = trunc i64 %2356 to i32
  %2360 = and i32 %2359, 255
  %2361 = tail call i32 @llvm.ctpop.i32(i32 %2360) #12
  %2362 = trunc i32 %2361 to i8
  %2363 = and i8 %2362, 1
  %2364 = xor i8 %2363, 1
  store i8 %2364, i8* %37, align 1, !tbaa !2446
  %2365 = xor i64 %2356, %2355
  %2366 = lshr i64 %2365, 4
  %2367 = trunc i64 %2366 to i8
  %2368 = and i8 %2367, 1
  store i8 %2368, i8* %43, align 1, !tbaa !2450
  %2369 = icmp eq i64 %2356, 0
  %2370 = zext i1 %2369 to i8
  store i8 %2370, i8* %46, align 1, !tbaa !2447
  %2371 = lshr i64 %2356, 63
  %2372 = trunc i64 %2371 to i8
  store i8 %2372, i8* %49, align 1, !tbaa !2448
  %2373 = lshr i64 %2355, 63
  %2374 = xor i64 %2371, %2373
  %2375 = add nuw nsw i64 %2374, %2371
  %2376 = icmp eq i64 %2375, 2
  %2377 = zext i1 %2376 to i8
  store i8 %2377, i8* %55, align 1, !tbaa !2449
  %2378 = and i64 %2356, 4294967295
  store i64 %2378, i64* %RDX, align 8, !tbaa !2428
  %2379 = add i64 %2350, -10632
  %2380 = add i64 %2352, 21
  store i64 %2380, i64* %PC, align 8
  %2381 = inttoptr i64 %2379 to i64*
  %2382 = load i64, i64* %2381, align 8
  store i64 %2382, i64* %R8, align 8, !tbaa !2428
  %2383 = shl i64 %2382, 2
  %2384 = add i64 %2383, -8320
  %2385 = add i64 %2384, %2350
  %2386 = add i64 %2352, 29
  store i64 %2386, i64* %PC, align 8
  %2387 = inttoptr i64 %2385 to i32*
  store i32 %2359, i32* %2387, align 4
  %2388 = load i64, i64* %RAX, align 8
  %2389 = load i64, i64* %RBP, align 8
  %2390 = add i64 %2389, -64
  %2391 = load i64, i64* %PC, align 8
  %2392 = add i64 %2391, 4
  store i64 %2392, i64* %PC, align 8
  %2393 = inttoptr i64 %2390 to i64*
  %2394 = load i64, i64* %2393, align 8
  %2395 = sub i64 %2388, %2394
  store i64 %2395, i64* %RAX, align 8, !tbaa !2428
  %2396 = icmp ult i64 %2388, %2394
  %2397 = zext i1 %2396 to i8
  store i8 %2397, i8* %30, align 1, !tbaa !2432
  %2398 = trunc i64 %2395 to i32
  %2399 = and i32 %2398, 255
  %2400 = tail call i32 @llvm.ctpop.i32(i32 %2399) #12
  %2401 = trunc i32 %2400 to i8
  %2402 = and i8 %2401, 1
  %2403 = xor i8 %2402, 1
  store i8 %2403, i8* %37, align 1, !tbaa !2446
  %2404 = xor i64 %2394, %2388
  %2405 = xor i64 %2404, %2395
  %2406 = lshr i64 %2405, 4
  %2407 = trunc i64 %2406 to i8
  %2408 = and i8 %2407, 1
  store i8 %2408, i8* %43, align 1, !tbaa !2450
  %2409 = icmp eq i64 %2395, 0
  %2410 = zext i1 %2409 to i8
  store i8 %2410, i8* %46, align 1, !tbaa !2447
  %2411 = lshr i64 %2395, 63
  %2412 = trunc i64 %2411 to i8
  store i8 %2412, i8* %49, align 1, !tbaa !2448
  %2413 = lshr i64 %2388, 63
  %2414 = lshr i64 %2394, 63
  %2415 = xor i64 %2414, %2413
  %2416 = xor i64 %2411, %2413
  %2417 = add nuw nsw i64 %2416, %2415
  %2418 = icmp eq i64 %2417, 2
  %2419 = zext i1 %2418 to i8
  store i8 %2419, i8* %55, align 1, !tbaa !2449
  %2420 = and i64 %2395, 4294967295
  store i64 %2420, i64* %RDX, align 8, !tbaa !2428
  %2421 = add i64 %2389, -6272
  %2422 = add i64 %2391, 13
  store i64 %2422, i64* %PC, align 8
  %2423 = inttoptr i64 %2421 to i64*
  %2424 = load i64, i64* %2423, align 8
  store i64 %2424, i64* %RAX, align 8, !tbaa !2428
  %2425 = shl i64 %2424, 2
  %2426 = add i64 %2425, -8320
  %2427 = add i64 %2426, %2389
  %2428 = add i64 %2391, 20
  store i64 %2428, i64* %PC, align 8
  %2429 = inttoptr i64 %2427 to i32*
  store i32 %2398, i32* %2429, align 4
  %2430 = load i64, i64* %RBP, align 8
  %2431 = add i64 %2430, -64
  %2432 = load i64, i64* %PC, align 8
  %2433 = add i64 %2432, 4
  store i64 %2433, i64* %PC, align 8
  %2434 = inttoptr i64 %2431 to i64*
  %2435 = load i64, i64* %2434, align 8
  %2436 = add i64 %2435, 256
  store i64 %2436, i64* %RAX, align 8, !tbaa !2428
  %2437 = icmp ugt i64 %2435, -257
  %2438 = zext i1 %2437 to i8
  store i8 %2438, i8* %30, align 1, !tbaa !2432
  %2439 = trunc i64 %2436 to i32
  %2440 = and i32 %2439, 255
  %2441 = tail call i32 @llvm.ctpop.i32(i32 %2440) #12
  %2442 = trunc i32 %2441 to i8
  %2443 = and i8 %2442, 1
  %2444 = xor i8 %2443, 1
  store i8 %2444, i8* %37, align 1, !tbaa !2446
  %2445 = xor i64 %2436, %2435
  %2446 = lshr i64 %2445, 4
  %2447 = trunc i64 %2446 to i8
  %2448 = and i8 %2447, 1
  store i8 %2448, i8* %43, align 1, !tbaa !2450
  %2449 = icmp eq i64 %2436, 0
  %2450 = zext i1 %2449 to i8
  store i8 %2450, i8* %46, align 1, !tbaa !2447
  %2451 = lshr i64 %2436, 63
  %2452 = trunc i64 %2451 to i8
  store i8 %2452, i8* %49, align 1, !tbaa !2448
  %2453 = lshr i64 %2435, 63
  %2454 = xor i64 %2451, %2453
  %2455 = add nuw nsw i64 %2454, %2451
  %2456 = icmp eq i64 %2455, 2
  %2457 = zext i1 %2456 to i8
  store i8 %2457, i8* %55, align 1, !tbaa !2449
  %2458 = add i64 %2430, -6272
  %2459 = add i64 %2432, 17
  store i64 %2459, i64* %PC, align 8
  %2460 = inttoptr i64 %2458 to i64*
  store i64 %2436, i64* %2460, align 8
  %2461 = load i64, i64* %RBP, align 8
  %2462 = add i64 %2461, -64
  %2463 = load i64, i64* %PC, align 8
  %2464 = add i64 %2463, 4
  store i64 %2464, i64* %PC, align 8
  %2465 = inttoptr i64 %2462 to i64*
  %2466 = load i64, i64* %2465, align 8
  store i64 %2466, i64* %RAX, align 8, !tbaa !2428
  %2467 = and i64 %2466, 4294967295
  store i64 %2467, i64* %RDX, align 8, !tbaa !2428
  %2468 = add i64 %2463, 1984
  %2469 = add i64 %2463, 11
  %2470 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2471 = add i64 %2470, -8
  %2472 = inttoptr i64 %2471 to i64*
  store i64 %2469, i64* %2472, align 8
  store i64 %2471, i64* %RSP, align 8, !tbaa !2428
  store i64 %2468, i64* %PC, align 8, !tbaa !2428
  %2473 = tail call %struct.Memory* @sub_4013b0_heap_adjust_renamed_(%struct.State* nonnull %0, i64 %2468, %struct.Memory* %322)
  %.pre120 = load i64, i64* %PC, align 8
  %.pre121 = load i64, i64* %RBP, align 8
  br label %block_400b0d

block_400abf:                                     ; preds = %block_400ab7, %block_400aca
  %2474 = phi i64 [ %.pre119, %block_400ab7 ], [ %1328, %block_400aca ]
  %2475 = load i64, i64* %RBP, align 8
  %2476 = add i64 %2475, -48
  %2477 = add i64 %2474, 5
  store i64 %2477, i64* %PC, align 8
  %2478 = inttoptr i64 %2476 to i64*
  %2479 = load i64, i64* %2478, align 8
  store i8 0, i8* %30, align 1, !tbaa !2432
  %2480 = trunc i64 %2479 to i32
  %2481 = and i32 %2480, 255
  %2482 = tail call i32 @llvm.ctpop.i32(i32 %2481) #12
  %2483 = trunc i32 %2482 to i8
  %2484 = and i8 %2483, 1
  %2485 = xor i8 %2484, 1
  store i8 %2485, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  %2486 = icmp eq i64 %2479, 0
  %2487 = zext i1 %2486 to i8
  store i8 %2487, i8* %46, align 1, !tbaa !2447
  %2488 = lshr i64 %2479, 63
  %2489 = trunc i64 %2488 to i8
  store i8 %2489, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %.v154 = select i1 %2486, i64 73, i64 11
  %2490 = add i64 %2474, %.v154
  store i64 %2490, i64* %PC, align 8, !tbaa !2428
  br i1 %2486, label %block_400b0d.preheader, label %block_400aca

block_400b0d.preheader:                           ; preds = %block_400abf
  br label %block_400b0d

block_400e39:                                     ; preds = %block_400dde
  %2491 = add i64 %3261, -56
  %2492 = add i64 %3277, 8
  store i64 %2492, i64* %PC, align 8
  %2493 = inttoptr i64 %2491 to i64*
  store i64 0, i64* %2493, align 8
  %.pre128 = load i64, i64* %PC, align 8
  br label %block_400e41

block_401142:                                     ; preds = %block_401029
  %2494 = add i64 %2833, -48
  %2495 = add i64 %2860, 8
  store i64 %2495, i64* %PC, align 8
  %2496 = inttoptr i64 %2494 to i64*
  store i64 1, i64* %2496, align 8
  %.pre139 = load i64, i64* %PC, align 8
  br label %block_40114a

block_401037:                                     ; preds = %block_401029
  %2497 = add i64 %2860, 4
  store i64 %2497, i64* %PC, align 8
  %2498 = load i64, i64* %2836, align 8
  store i64 %2498, i64* %RAX, align 8, !tbaa !2428
  %2499 = trunc i64 %2498 to i8
  store i8 %2499, i8* %CL, align 1, !tbaa !2451
  %2500 = add i64 %2833, -13000
  %2501 = add i64 %2860, 13
  store i64 %2501, i64* %PC, align 8
  %2502 = inttoptr i64 %2500 to i64*
  %2503 = load i64, i64* %2502, align 8
  store i64 %2503, i64* %RAX, align 8, !tbaa !2428
  %2504 = add i64 %2860, 15
  store i64 %2504, i64* %PC, align 8
  %2505 = inttoptr i64 %2503 to i8*
  store i8 %2499, i8* %2505, align 1
  %2506 = load i64, i64* %RBP, align 8
  %2507 = add i64 %2506, -13000
  %2508 = load i64, i64* %PC, align 8
  %2509 = add i64 %2508, 7
  store i64 %2509, i64* %PC, align 8
  %2510 = inttoptr i64 %2507 to i64*
  %2511 = load i64, i64* %2510, align 8
  %2512 = add i64 %2511, 1
  store i64 %2512, i64* %RAX, align 8, !tbaa !2428
  %2513 = icmp eq i64 %2511, -1
  %2514 = icmp eq i64 %2512, 0
  %2515 = or i1 %2513, %2514
  %2516 = zext i1 %2515 to i8
  store i8 %2516, i8* %30, align 1, !tbaa !2432
  %2517 = trunc i64 %2512 to i32
  %2518 = and i32 %2517, 255
  %2519 = tail call i32 @llvm.ctpop.i32(i32 %2518) #12
  %2520 = trunc i32 %2519 to i8
  %2521 = and i8 %2520, 1
  %2522 = xor i8 %2521, 1
  store i8 %2522, i8* %37, align 1, !tbaa !2446
  %2523 = xor i64 %2512, %2511
  %2524 = lshr i64 %2523, 4
  %2525 = trunc i64 %2524 to i8
  %2526 = and i8 %2525, 1
  store i8 %2526, i8* %43, align 1, !tbaa !2450
  %2527 = zext i1 %2514 to i8
  store i8 %2527, i8* %46, align 1, !tbaa !2447
  %2528 = lshr i64 %2512, 63
  %2529 = trunc i64 %2528 to i8
  store i8 %2529, i8* %49, align 1, !tbaa !2448
  %2530 = lshr i64 %2511, 63
  %2531 = xor i64 %2528, %2530
  %2532 = add nuw nsw i64 %2531, %2528
  %2533 = icmp eq i64 %2532, 2
  %2534 = zext i1 %2533 to i8
  store i8 %2534, i8* %55, align 1, !tbaa !2449
  %2535 = add i64 %2508, 18
  store i64 %2535, i64* %PC, align 8
  store i64 %2512, i64* %2510, align 8
  %2536 = load i64, i64* %RBP, align 8
  %2537 = add i64 %2536, -56
  %2538 = load i64, i64* %PC, align 8
  %2539 = add i64 %2538, 4
  store i64 %2539, i64* %PC, align 8
  %2540 = inttoptr i64 %2537 to i64*
  %2541 = load i64, i64* %2540, align 8
  store i64 %2541, i64* %RAX, align 8, !tbaa !2428
  %2542 = shl i64 %2541, 3
  %2543 = add i64 %2542, -10368
  %2544 = add i64 %2543, %2536
  %2545 = add i64 %2538, 12
  store i64 %2545, i64* %PC, align 8
  %2546 = inttoptr i64 %2544 to i64*
  %2547 = load i64, i64* %2546, align 8
  store i64 %2547, i64* %RAX, align 8, !tbaa !2428
  %2548 = add i64 %2538, 16
  store i64 %2548, i64* %PC, align 8
  %2549 = load i64, i64* %2540, align 8
  store i64 %2549, i64* %RDX, align 8, !tbaa !2428
  %2550 = add i64 %2549, -10624
  %2551 = add i64 %2550, %2536
  %2552 = add i64 %2538, 24
  store i64 %2552, i64* %PC, align 8
  %2553 = inttoptr i64 %2551 to i8*
  %2554 = load i8, i8* %2553, align 1
  %2555 = zext i8 %2554 to i64
  store i64 %2555, i64* %RSI, align 8, !tbaa !2428
  %2556 = zext i8 %2554 to i64
  store i64 %2556, i64* %RDX, align 8, !tbaa !2428
  %2557 = or i64 %2547, %2556
  store i64 %2557, i64* %RAX, align 8, !tbaa !2428
  %2558 = trunc i64 %2557 to i32
  %2559 = and i32 %2558, 255
  %2560 = tail call i32 @llvm.ctpop.i32(i32 %2559) #12
  %2561 = trunc i32 %2560 to i8
  %2562 = and i8 %2561, 1
  %2563 = xor i8 %2562, 1
  %2564 = icmp eq i64 %2557, 0
  %2565 = zext i1 %2564 to i8
  store i8 0, i8* %30, align 1, !tbaa !2432
  store i8 %2563, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 %2565, i8* %46, align 1, !tbaa !2447
  %2566 = lshr i64 %2547, 63
  %2567 = trunc i64 %2566 to i8
  store i8 %2567, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %.v167 = select i1 %2564, i64 212, i64 39
  %2568 = add i64 %2538, %.v167
  store i64 %2568, i64* %PC, align 8, !tbaa !2428
  br i1 %2564, label %block_40112c, label %block_40107f

block_400c36:                                     ; preds = %block_400c00, %block_400d8b
  %2569 = phi i64 [ %.pre122, %block_400c00 ], [ %848, %block_400d8b ]
  %2570 = load i64, i64* %RBP, align 8
  %2571 = add i64 %2570, -10640
  %2572 = add i64 %2569, 11
  store i64 %2572, i64* %PC, align 8
  %2573 = inttoptr i64 %2571 to i64*
  %2574 = load i64, i64* %2573, align 8
  %2575 = add i64 %2574, -256
  %2576 = icmp ult i64 %2574, 256
  %2577 = zext i1 %2576 to i8
  store i8 %2577, i8* %30, align 1, !tbaa !2432
  %2578 = trunc i64 %2575 to i32
  %2579 = and i32 %2578, 255
  %2580 = tail call i32 @llvm.ctpop.i32(i32 %2579) #12
  %2581 = trunc i32 %2580 to i8
  %2582 = and i8 %2581, 1
  %2583 = xor i8 %2582, 1
  store i8 %2583, i8* %37, align 1, !tbaa !2446
  %2584 = xor i64 %2575, %2574
  %2585 = lshr i64 %2584, 4
  %2586 = trunc i64 %2585 to i8
  %2587 = and i8 %2586, 1
  store i8 %2587, i8* %43, align 1, !tbaa !2450
  %2588 = icmp eq i64 %2575, 0
  %2589 = zext i1 %2588 to i8
  store i8 %2589, i8* %46, align 1, !tbaa !2447
  %2590 = lshr i64 %2575, 63
  %2591 = trunc i64 %2590 to i8
  store i8 %2591, i8* %49, align 1, !tbaa !2448
  %2592 = lshr i64 %2574, 63
  %2593 = xor i64 %2590, %2592
  %2594 = add nuw nsw i64 %2593, %2592
  %2595 = icmp eq i64 %2594, 2
  %2596 = zext i1 %2595 to i8
  store i8 %2596, i8* %55, align 1, !tbaa !2449
  %.v156 = select i1 %2576, i64 17, i64 369
  %2597 = add i64 %2569, %.v156
  store i64 %2597, i64* %PC, align 8, !tbaa !2428
  br i1 %2576, label %block_400c47, label %block_400da7

block_400f8d:                                     ; preds = %block_400e7b
  %2598 = add i64 %1814, 4
  store i64 %2598, i64* %PC, align 8
  %2599 = load i64, i64* %1777, align 8
  %2600 = add i64 %2599, 1
  store i64 %2600, i64* %RAX, align 8, !tbaa !2428
  %2601 = icmp eq i64 %2599, -1
  %2602 = icmp eq i64 %2600, 0
  %2603 = or i1 %2601, %2602
  %2604 = zext i1 %2603 to i8
  store i8 %2604, i8* %30, align 1, !tbaa !2432
  %2605 = trunc i64 %2600 to i32
  %2606 = and i32 %2605, 255
  %2607 = tail call i32 @llvm.ctpop.i32(i32 %2606) #12
  %2608 = trunc i32 %2607 to i8
  %2609 = and i8 %2608, 1
  %2610 = xor i8 %2609, 1
  store i8 %2610, i8* %37, align 1, !tbaa !2446
  %2611 = xor i64 %2600, %2599
  %2612 = lshr i64 %2611, 4
  %2613 = trunc i64 %2612 to i8
  %2614 = and i8 %2613, 1
  store i8 %2614, i8* %43, align 1, !tbaa !2450
  %2615 = zext i1 %2602 to i8
  store i8 %2615, i8* %46, align 1, !tbaa !2447
  %2616 = lshr i64 %2600, 63
  %2617 = trunc i64 %2616 to i8
  store i8 %2617, i8* %49, align 1, !tbaa !2448
  %2618 = lshr i64 %2599, 63
  %2619 = xor i64 %2616, %2618
  %2620 = add nuw nsw i64 %2619, %2616
  %2621 = icmp eq i64 %2620, 2
  %2622 = zext i1 %2621 to i8
  store i8 %2622, i8* %55, align 1, !tbaa !2449
  %2623 = add i64 %1814, 12
  store i64 %2623, i64* %PC, align 8
  store i64 %2600, i64* %1777, align 8
  %2624 = load i64, i64* %RBP, align 8
  %2625 = add i64 %2624, -56
  %2626 = load i64, i64* %PC, align 8
  %2627 = add i64 %2626, 4
  store i64 %2627, i64* %PC, align 8
  %2628 = inttoptr i64 %2625 to i64*
  %2629 = load i64, i64* %2628, align 8
  %2630 = add i64 %2629, 1
  store i64 %2630, i64* %RAX, align 8, !tbaa !2428
  %2631 = icmp eq i64 %2629, -1
  %2632 = icmp eq i64 %2630, 0
  %2633 = or i1 %2631, %2632
  %2634 = zext i1 %2633 to i8
  store i8 %2634, i8* %30, align 1, !tbaa !2432
  %2635 = trunc i64 %2630 to i32
  %2636 = and i32 %2635, 255
  %2637 = tail call i32 @llvm.ctpop.i32(i32 %2636) #12
  %2638 = trunc i32 %2637 to i8
  %2639 = and i8 %2638, 1
  %2640 = xor i8 %2639, 1
  store i8 %2640, i8* %37, align 1, !tbaa !2446
  %2641 = xor i64 %2630, %2629
  %2642 = lshr i64 %2641, 4
  %2643 = trunc i64 %2642 to i8
  %2644 = and i8 %2643, 1
  store i8 %2644, i8* %43, align 1, !tbaa !2450
  %2645 = zext i1 %2632 to i8
  store i8 %2645, i8* %46, align 1, !tbaa !2447
  %2646 = lshr i64 %2630, 63
  %2647 = trunc i64 %2646 to i8
  store i8 %2647, i8* %49, align 1, !tbaa !2448
  %2648 = lshr i64 %2629, 63
  %2649 = xor i64 %2646, %2648
  %2650 = add nuw nsw i64 %2649, %2646
  %2651 = icmp eq i64 %2650, 2
  %2652 = zext i1 %2651 to i8
  store i8 %2652, i8* %55, align 1, !tbaa !2449
  %2653 = add i64 %2626, 12
  store i64 %2653, i64* %PC, align 8
  store i64 %2630, i64* %2628, align 8
  %2654 = load i64, i64* %PC, align 8
  %2655 = add i64 %2654, -356
  store i64 %2655, i64* %PC, align 8, !tbaa !2428
  br label %block_400e41

block_40114a:                                     ; preds = %block_401142, %block_4011be
  %2656 = phi i64 [ %.pre139, %block_401142 ], [ %1267, %block_4011be ]
  %2657 = load i64, i64* %RBP, align 8
  %2658 = add i64 %2657, -48
  %2659 = add i64 %2656, 8
  store i64 %2659, i64* %PC, align 8
  %2660 = inttoptr i64 %2658 to i64*
  %2661 = load i64, i64* %2660, align 8
  %2662 = add i64 %2661, -256
  %2663 = icmp ult i64 %2661, 256
  %2664 = zext i1 %2663 to i8
  store i8 %2664, i8* %30, align 1, !tbaa !2432
  %2665 = trunc i64 %2662 to i32
  %2666 = and i32 %2665, 255
  %2667 = tail call i32 @llvm.ctpop.i32(i32 %2666) #12
  %2668 = trunc i32 %2667 to i8
  %2669 = and i8 %2668, 1
  %2670 = xor i8 %2669, 1
  store i8 %2670, i8* %37, align 1, !tbaa !2446
  %2671 = xor i64 %2662, %2661
  %2672 = lshr i64 %2671, 4
  %2673 = trunc i64 %2672 to i8
  %2674 = and i8 %2673, 1
  store i8 %2674, i8* %43, align 1, !tbaa !2450
  %2675 = icmp eq i64 %2662, 0
  %2676 = zext i1 %2675 to i8
  store i8 %2676, i8* %46, align 1, !tbaa !2447
  %2677 = lshr i64 %2662, 63
  %2678 = trunc i64 %2677 to i8
  store i8 %2678, i8* %49, align 1, !tbaa !2448
  %2679 = lshr i64 %2661, 63
  %2680 = xor i64 %2677, %2679
  %2681 = add nuw nsw i64 %2680, %2679
  %2682 = icmp eq i64 %2681, 2
  %2683 = zext i1 %2682 to i8
  store i8 %2683, i8* %55, align 1, !tbaa !2449
  %.v161 = select i1 %2663, i64 14, i64 239
  %2684 = add i64 %2656, %.v161
  store i64 %2684, i64* %PC, align 8, !tbaa !2428
  br i1 %2663, label %block_401158, label %block_401239

block_400d1e:                                     ; preds = %block_400cb3
  %2685 = add i64 %1464, -10648
  %2686 = add i64 %1478, 7
  store i64 %2686, i64* %PC, align 8
  %2687 = inttoptr i64 %2685 to i64*
  %2688 = load i64, i64* %2687, align 8
  store i64 %2688, i64* %RAX, align 8, !tbaa !2428
  %2689 = add i64 %1464, -10640
  %2690 = add i64 %1478, 14
  store i64 %2690, i64* %PC, align 8
  %2691 = inttoptr i64 %2689 to i64*
  %2692 = load i64, i64* %2691, align 8
  store i64 %2692, i64* %RCX, align 8, !tbaa !2428
  %2693 = shl i64 %2692, 3
  %2694 = add i64 %2693, -10368
  %2695 = add i64 %2694, %1464
  %2696 = add i64 %1478, 22
  store i64 %2696, i64* %PC, align 8
  %2697 = inttoptr i64 %2695 to i64*
  store i64 %2688, i64* %2697, align 8
  %2698 = load i64, i64* %RBP, align 8
  %2699 = add i64 %2698, -48
  %2700 = load i64, i64* %PC, align 8
  %2701 = add i64 %2700, 4
  store i64 %2701, i64* %PC, align 8
  %2702 = inttoptr i64 %2699 to i64*
  %2703 = load i64, i64* %2702, align 8
  store i64 %2703, i64* %RAX, align 8, !tbaa !2428
  %2704 = trunc i64 %2703 to i8
  store i8 %2704, i8* %DL, align 1, !tbaa !2451
  %2705 = add i64 %2698, -10640
  %2706 = add i64 %2700, 13
  store i64 %2706, i64* %PC, align 8
  %2707 = inttoptr i64 %2705 to i64*
  %2708 = load i64, i64* %2707, align 8
  store i64 %2708, i64* %RAX, align 8, !tbaa !2428
  %2709 = add i64 %2708, -10624
  %2710 = add i64 %2709, %2698
  %2711 = add i64 %2700, 20
  store i64 %2711, i64* %PC, align 8
  %2712 = inttoptr i64 %2710 to i8*
  store i8 %2704, i8* %2712, align 1
  %2713 = load i64, i64* %RBP, align 8
  %2714 = add i64 %2713, -10648
  %2715 = load i64, i64* %PC, align 8
  %2716 = add i64 %2715, 7
  store i64 %2716, i64* %PC, align 8
  %2717 = inttoptr i64 %2714 to i64*
  %2718 = load i64, i64* %2717, align 8
  store i64 %2718, i64* %RAX, align 8, !tbaa !2428
  %2719 = add i64 %2713, -10656
  %2720 = add i64 %2715, 14
  store i64 %2720, i64* %PC, align 8
  %2721 = inttoptr i64 %2719 to i64*
  %2722 = load i64, i64* %2721, align 8
  %2723 = sub i64 %2718, %2722
  %2724 = icmp ult i64 %2718, %2722
  %2725 = zext i1 %2724 to i8
  store i8 %2725, i8* %30, align 1, !tbaa !2432
  %2726 = trunc i64 %2723 to i32
  %2727 = and i32 %2726, 255
  %2728 = tail call i32 @llvm.ctpop.i32(i32 %2727) #12
  %2729 = trunc i32 %2728 to i8
  %2730 = and i8 %2729, 1
  %2731 = xor i8 %2730, 1
  store i8 %2731, i8* %37, align 1, !tbaa !2446
  %2732 = xor i64 %2722, %2718
  %2733 = xor i64 %2732, %2723
  %2734 = lshr i64 %2733, 4
  %2735 = trunc i64 %2734 to i8
  %2736 = and i8 %2735, 1
  store i8 %2736, i8* %43, align 1, !tbaa !2450
  %2737 = icmp eq i64 %2723, 0
  %2738 = zext i1 %2737 to i8
  store i8 %2738, i8* %46, align 1, !tbaa !2447
  %2739 = lshr i64 %2723, 63
  %2740 = trunc i64 %2739 to i8
  store i8 %2740, i8* %49, align 1, !tbaa !2448
  %2741 = lshr i64 %2718, 63
  %2742 = lshr i64 %2722, 63
  %2743 = xor i64 %2742, %2741
  %2744 = xor i64 %2739, %2741
  %2745 = add nuw nsw i64 %2744, %2743
  %2746 = icmp eq i64 %2745, 2
  %2747 = zext i1 %2746 to i8
  store i8 %2747, i8* %55, align 1, !tbaa !2449
  %2748 = or i1 %2737, %2724
  %.v175 = select i1 %2748, i64 34, i64 20
  %2749 = add i64 %2715, %.v175
  store i64 %2749, i64* %PC, align 8, !tbaa !2428
  br i1 %2748, label %block_400d6a, label %block_400d5c

block_401307:                                     ; preds = %block_4012e0
  %2750 = load i64, i64* %1153, align 8
  store i64 %2750, i64* %RAX, align 8, !tbaa !2428
  %2751 = add i64 %1180, 8
  store i64 %2751, i64* %PC, align 8
  %2752 = load i64, i64* %1143, align 8
  store i64 %2752, i64* %RCX, align 8, !tbaa !2428
  %2753 = shl i64 %2752, 3
  %2754 = add i64 %2753, -12736
  %2755 = add i64 %2754, %1138
  %2756 = add i64 %1180, 16
  store i64 %2756, i64* %PC, align 8
  %2757 = inttoptr i64 %2755 to i64*
  %2758 = load i64, i64* %2757, align 8
  %2759 = sub i64 %2750, %2758
  %2760 = icmp ult i64 %2750, %2758
  %2761 = zext i1 %2760 to i8
  store i8 %2761, i8* %30, align 1, !tbaa !2432
  %2762 = trunc i64 %2759 to i32
  %2763 = and i32 %2762, 255
  %2764 = tail call i32 @llvm.ctpop.i32(i32 %2763) #12
  %2765 = trunc i32 %2764 to i8
  %2766 = and i8 %2765, 1
  %2767 = xor i8 %2766, 1
  store i8 %2767, i8* %37, align 1, !tbaa !2446
  %2768 = xor i64 %2758, %2750
  %2769 = xor i64 %2768, %2759
  %2770 = lshr i64 %2769, 4
  %2771 = trunc i64 %2770 to i8
  %2772 = and i8 %2771, 1
  store i8 %2772, i8* %43, align 1, !tbaa !2450
  %2773 = icmp eq i64 %2759, 0
  %2774 = zext i1 %2773 to i8
  store i8 %2774, i8* %46, align 1, !tbaa !2447
  %2775 = lshr i64 %2759, 63
  %2776 = trunc i64 %2775 to i8
  store i8 %2776, i8* %49, align 1, !tbaa !2448
  %2777 = lshr i64 %2750, 63
  %2778 = lshr i64 %2758, 63
  %2779 = xor i64 %2778, %2777
  %2780 = xor i64 %2775, %2777
  %2781 = add nuw nsw i64 %2780, %2779
  %2782 = icmp eq i64 %2781, 2
  %2783 = zext i1 %2782 to i8
  store i8 %2783, i8* %55, align 1, !tbaa !2449
  %.v165 = select i1 %2773, i64 22, i64 79
  %2784 = add i64 %1180, %.v165
  store i64 %2784, i64* %PC, align 8, !tbaa !2428
  br i1 %2773, label %block_40131d, label %block_401356

block_400f1e:                                     ; preds = %block_400e9b
  %2785 = add i64 %1668, 6
  store i64 %2785, i64* %PC, align 8
  %2786 = load i32, i32* %1645, align 4
  %2787 = add i32 %2786, 1
  %2788 = zext i32 %2787 to i64
  store i64 %2788, i64* %RAX, align 8, !tbaa !2428
  %2789 = icmp eq i32 %2786, -1
  %2790 = icmp eq i32 %2787, 0
  %2791 = or i1 %2789, %2790
  %2792 = zext i1 %2791 to i8
  store i8 %2792, i8* %30, align 1, !tbaa !2432
  %2793 = and i32 %2787, 255
  %2794 = tail call i32 @llvm.ctpop.i32(i32 %2793) #12
  %2795 = trunc i32 %2794 to i8
  %2796 = and i8 %2795, 1
  %2797 = xor i8 %2796, 1
  store i8 %2797, i8* %37, align 1, !tbaa !2446
  %2798 = xor i32 %2787, %2786
  %2799 = lshr i32 %2798, 4
  %2800 = trunc i32 %2799 to i8
  %2801 = and i8 %2800, 1
  store i8 %2801, i8* %43, align 1, !tbaa !2450
  %2802 = zext i1 %2790 to i8
  store i8 %2802, i8* %46, align 1, !tbaa !2447
  %2803 = lshr i32 %2787, 31
  %2804 = trunc i32 %2803 to i8
  store i8 %2804, i8* %49, align 1, !tbaa !2448
  %2805 = lshr i32 %2786, 31
  %2806 = xor i32 %2803, %2805
  %2807 = add nuw nsw i32 %2806, %2803
  %2808 = icmp eq i32 %2807, 2
  %2809 = zext i1 %2808 to i8
  store i8 %2809, i8* %55, align 1, !tbaa !2449
  %2810 = add i64 %1668, 15
  store i64 %2810, i64* %PC, align 8
  store i32 %2787, i32* %1645, align 4
  %2811 = load i64, i64* %RBP, align 8
  %2812 = add i64 %2811, -10681
  %2813 = load i64, i64* %PC, align 8
  %2814 = add i64 %2813, 7
  store i64 %2814, i64* %PC, align 8
  %2815 = inttoptr i64 %2812 to i8*
  %2816 = load i8, i8* %2815, align 1
  %2817 = sext i8 %2816 to i32
  %2818 = shl nsw i32 %2817, 1
  %2819 = zext i32 %2818 to i64
  store i64 %2819, i64* %RAX, align 8, !tbaa !2428
  %.lobit44 = lshr i8 %2816, 7
  store i8 %.lobit44, i8* %30, align 1, !tbaa !2451
  %2820 = and i32 %2818, 254
  %2821 = tail call i32 @llvm.ctpop.i32(i32 %2820) #12
  %2822 = trunc i32 %2821 to i8
  %2823 = and i8 %2822, 1
  %2824 = xor i8 %2823, 1
  store i8 %2824, i8* %37, align 1, !tbaa !2451
  store i8 0, i8* %43, align 1, !tbaa !2451
  %2825 = icmp eq i8 %2816, 0
  %2826 = zext i1 %2825 to i8
  store i8 %2826, i8* %46, align 1, !tbaa !2451
  %2827 = lshr i32 %2817, 30
  %2828 = trunc i32 %2827 to i8
  %2829 = and i8 %2828, 1
  store i8 %2829, i8* %49, align 1, !tbaa !2451
  store i8 0, i8* %55, align 1, !tbaa !2451
  %2830 = trunc i32 %2818 to i8
  store i8 %2830, i8* %CL, align 1, !tbaa !2451
  %2831 = add i64 %2813, 18
  store i64 %2831, i64* %PC, align 8
  store i8 %2830, i8* %2815, align 1
  %.pre130 = load i64, i64* %PC, align 8
  br label %block_400f3f

block_401029:                                     ; preds = %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1, %block_40112c
  %2832 = phi i64 [ %.pre133, %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1 ], [ %913, %block_40112c ]
  %2833 = load i64, i64* %RBP, align 8
  %2834 = add i64 %2833, -56
  %2835 = add i64 %2832, 8
  store i64 %2835, i64* %PC, align 8
  %2836 = inttoptr i64 %2834 to i64*
  %2837 = load i64, i64* %2836, align 8
  %2838 = add i64 %2837, -256
  %2839 = icmp ult i64 %2837, 256
  %2840 = zext i1 %2839 to i8
  store i8 %2840, i8* %30, align 1, !tbaa !2432
  %2841 = trunc i64 %2838 to i32
  %2842 = and i32 %2841, 255
  %2843 = tail call i32 @llvm.ctpop.i32(i32 %2842) #12
  %2844 = trunc i32 %2843 to i8
  %2845 = and i8 %2844, 1
  %2846 = xor i8 %2845, 1
  store i8 %2846, i8* %37, align 1, !tbaa !2446
  %2847 = xor i64 %2838, %2837
  %2848 = lshr i64 %2847, 4
  %2849 = trunc i64 %2848 to i8
  %2850 = and i8 %2849, 1
  store i8 %2850, i8* %43, align 1, !tbaa !2450
  %2851 = icmp eq i64 %2838, 0
  %2852 = zext i1 %2851 to i8
  store i8 %2852, i8* %46, align 1, !tbaa !2447
  %2853 = lshr i64 %2838, 63
  %2854 = trunc i64 %2853 to i8
  store i8 %2854, i8* %49, align 1, !tbaa !2448
  %2855 = lshr i64 %2837, 63
  %2856 = xor i64 %2853, %2855
  %2857 = add nuw nsw i64 %2856, %2855
  %2858 = icmp eq i64 %2857, 2
  %2859 = zext i1 %2858 to i8
  store i8 %2859, i8* %55, align 1, !tbaa !2449
  %.v160 = select i1 %2839, i64 14, i64 281
  %2860 = add i64 %2832, %.v160
  store i64 %2860, i64* %PC, align 8, !tbaa !2428
  br i1 %2839, label %block_401037, label %block_401142

block_400faa:                                     ; preds = %block_400e41
  %2861 = add i64 %2167, -12992
  store i64 %2861, i64* %RAX, align 8, !tbaa !2428
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %30, align 1, !tbaa !2432
  store i8 1, i8* %37, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i64 2048, i64* %RDX, align 8, !tbaa !2428
  %2862 = add i64 %2167, -12736
  store i64 %2862, i64* %RDI, align 8, !tbaa !2428
  store i64 7, i64* %RCX, align 8, !tbaa !2428
  %2863 = add i64 %2167, -10688
  %2864 = add i64 %2201, 34
  store i64 %2864, i64* %PC, align 8
  %2865 = inttoptr i64 %2863 to i32*
  %2866 = load i32, i32* %2865, align 4
  %2867 = sub i32 7, %2866
  %2868 = zext i32 %2867 to i64
  store i64 %2868, i64* %RCX, align 8, !tbaa !2428
  %2869 = icmp ugt i32 %2866, 7
  %2870 = zext i1 %2869 to i8
  store i8 %2870, i8* %30, align 1, !tbaa !2432
  %2871 = and i32 %2867, 255
  %2872 = tail call i32 @llvm.ctpop.i32(i32 %2871) #12
  %2873 = trunc i32 %2872 to i8
  %2874 = and i8 %2873, 1
  %2875 = xor i8 %2874, 1
  store i8 %2875, i8* %37, align 1, !tbaa !2446
  %2876 = xor i32 %2867, %2866
  %2877 = lshr i32 %2876, 4
  %2878 = trunc i32 %2877 to i8
  %2879 = and i8 %2878, 1
  store i8 %2879, i8* %43, align 1, !tbaa !2450
  %2880 = icmp eq i32 %2867, 0
  %2881 = zext i1 %2880 to i8
  store i8 %2881, i8* %46, align 1, !tbaa !2447
  %2882 = lshr i32 %2867, 31
  %2883 = trunc i32 %2882 to i8
  store i8 %2883, i8* %49, align 1, !tbaa !2448
  %2884 = lshr i32 %2866, 31
  %2885 = add nuw nsw i32 %2882, %2884
  %2886 = icmp eq i32 %2885, 2
  %2887 = zext i1 %2886 to i8
  store i8 %2887, i8* %55, align 1, !tbaa !2449
  %2888 = add i64 %2167, -10681
  %2889 = add i64 %2201, 42
  store i64 %2889, i64* %PC, align 8
  %2890 = inttoptr i64 %2888 to i8*
  %2891 = load i8, i8* %2890, align 1
  %2892 = sext i8 %2891 to i64
  %2893 = and i64 %2892, 4294967295
  store i64 %2893, i64* %R8, align 8, !tbaa !2428
  %2894 = sext i8 %2891 to i32
  %2895 = add i64 %2201, 45
  store i64 %2895, i64* %PC, align 8
  %2896 = trunc i32 %2867 to i5
  switch i5 %2896, label %2899 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1
    i5 1, label %2897
  ]

; <label>:2897:                                   ; preds = %block_400faa
  %2898 = icmp slt i8 %2891, 0
  br label %2908

; <label>:2899:                                   ; preds = %block_400faa
  %2900 = zext i32 %2894 to i64
  %2901 = and i32 %2867, 31
  %2902 = zext i32 %2901 to i64
  %2903 = add nuw nsw i64 %2902, 4294967295
  %2904 = and i64 %2903, 4294967295
  %2905 = shl i64 %2900, %2904
  %2906 = trunc i64 %2905 to i32
  %2907 = icmp slt i32 %2906, 0
  br label %2908

; <label>:2908:                                   ; preds = %2899, %2897
  %2909 = phi i1 [ %2898, %2897 ], [ %2907, %2899 ]
  %.in = phi i32 [ %2894, %2897 ], [ %2906, %2899 ]
  %2910 = shl i32 %.in, 1
  %2911 = zext i32 %2910 to i64
  store i64 %2911, i64* %R8, align 8, !tbaa !2428
  %2912 = zext i1 %2909 to i8
  store i8 %2912, i8* %30, align 1, !tbaa !2451
  %2913 = and i32 %2910, 254
  %2914 = tail call i32 @llvm.ctpop.i32(i32 %2913) #12
  %2915 = trunc i32 %2914 to i8
  %2916 = and i8 %2915, 1
  %2917 = xor i8 %2916, 1
  store i8 %2917, i8* %37, align 1, !tbaa !2451
  store i8 0, i8* %43, align 1, !tbaa !2451
  %2918 = icmp eq i32 %2910, 0
  %2919 = zext i1 %2918 to i8
  store i8 %2919, i8* %46, align 1, !tbaa !2451
  %2920 = lshr i32 %.in, 30
  %2921 = trunc i32 %2920 to i8
  %2922 = and i8 %2921, 1
  store i8 %2922, i8* %49, align 1, !tbaa !2451
  store i8 0, i8* %55, align 1, !tbaa !2451
  %2923 = trunc i32 %2910 to i8
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit1: ; preds = %2908, %block_400faa
  %2924 = phi i8 [ %2923, %2908 ], [ %2891, %block_400faa ]
  store i8 %2924, i8* %CL, align 1, !tbaa !2451
  %2925 = add i64 %2201, 54
  store i64 %2925, i64* %PC, align 8
  store i8 %2924, i8* %2890, align 1
  %2926 = load i64, i64* %RBP, align 8
  %2927 = add i64 %2926, -10681
  %2928 = load i64, i64* %PC, align 8
  %2929 = add i64 %2928, 6
  store i64 %2929, i64* %PC, align 8
  %2930 = inttoptr i64 %2927 to i8*
  %2931 = load i8, i8* %2930, align 1
  store i8 %2931, i8* %CL, align 1, !tbaa !2451
  %2932 = add i64 %2926, -120
  %2933 = add i64 %2928, 10
  store i64 %2933, i64* %PC, align 8
  %2934 = inttoptr i64 %2932 to i64*
  %2935 = load i64, i64* %2934, align 8
  store i64 %2935, i64* %R9, align 8, !tbaa !2428
  %2936 = add i64 %2926, -10680
  %2937 = add i64 %2928, 17
  store i64 %2937, i64* %PC, align 8
  %2938 = inttoptr i64 %2936 to i64*
  %2939 = load i64, i64* %2938, align 8
  store i64 %2939, i64* %R10, align 8, !tbaa !2428
  %2940 = add i64 %2935, %2939
  %2941 = add i64 %2928, 21
  store i64 %2941, i64* %PC, align 8
  %2942 = inttoptr i64 %2940 to i8*
  store i8 %2931, i8* %2942, align 1
  %2943 = load i64, i64* %RBP, align 8
  %2944 = add i64 %2943, -10680
  %2945 = load i64, i64* %PC, align 8
  %2946 = add i64 %2945, 7
  store i64 %2946, i64* %PC, align 8
  %2947 = inttoptr i64 %2944 to i64*
  %2948 = load i64, i64* %2947, align 8
  %2949 = add i64 %2948, 1
  store i64 %2949, i64* %R9, align 8, !tbaa !2428
  %2950 = icmp eq i64 %2948, -1
  %2951 = icmp eq i64 %2949, 0
  %2952 = or i1 %2950, %2951
  %2953 = zext i1 %2952 to i8
  store i8 %2953, i8* %30, align 1, !tbaa !2432
  %2954 = trunc i64 %2949 to i32
  %2955 = and i32 %2954, 255
  %2956 = tail call i32 @llvm.ctpop.i32(i32 %2955) #12
  %2957 = trunc i32 %2956 to i8
  %2958 = and i8 %2957, 1
  %2959 = xor i8 %2958, 1
  store i8 %2959, i8* %37, align 1, !tbaa !2446
  %2960 = xor i64 %2949, %2948
  %2961 = lshr i64 %2960, 4
  %2962 = trunc i64 %2961 to i8
  %2963 = and i8 %2962, 1
  store i8 %2963, i8* %43, align 1, !tbaa !2450
  %2964 = zext i1 %2951 to i8
  store i8 %2964, i8* %46, align 1, !tbaa !2447
  %2965 = lshr i64 %2949, 63
  %2966 = trunc i64 %2965 to i8
  store i8 %2966, i8* %49, align 1, !tbaa !2448
  %2967 = lshr i64 %2948, 63
  %2968 = xor i64 %2965, %2967
  %2969 = add nuw nsw i64 %2968, %2965
  %2970 = icmp eq i64 %2969, 2
  %2971 = zext i1 %2970 to i8
  store i8 %2971, i8* %55, align 1, !tbaa !2449
  %2972 = add i64 %2945, 18
  store i64 %2972, i64* %PC, align 8
  store i64 %2949, i64* %2947, align 8
  %2973 = load i64, i64* %RBP, align 8
  %2974 = add i64 %2973, -13096
  %2975 = load i64, i64* %RAX, align 8
  %2976 = load i64, i64* %PC, align 8
  %2977 = add i64 %2976, 7
  store i64 %2977, i64* %PC, align 8
  %2978 = inttoptr i64 %2974 to i64*
  store i64 %2975, i64* %2978, align 8
  %2979 = load i64, i64* %PC, align 8
  %2980 = add i64 %2979, -2558
  %2981 = add i64 %2979, 5
  %2982 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2983 = add i64 %2982, -8
  %2984 = inttoptr i64 %2983 to i64*
  store i64 %2981, i64* %2984, align 8
  store i64 %2983, i64* %RSP, align 8, !tbaa !2428
  store i64 %2980, i64* %PC, align 8, !tbaa !2428
  %2985 = tail call fastcc %struct.Memory* @ext_6020f8_memset(%struct.State* nonnull %0, %struct.Memory* %322)
  %2986 = load i64, i64* %RBP, align 8
  %2987 = add i64 %2986, -13096
  %2988 = load i64, i64* %PC, align 8
  %2989 = add i64 %2988, 7
  store i64 %2989, i64* %PC, align 8
  %2990 = inttoptr i64 %2987 to i64*
  %2991 = load i64, i64* %2990, align 8
  store i64 %2991, i64* %RAX, align 8, !tbaa !2428
  %2992 = add i64 %2986, -13000
  %2993 = add i64 %2988, 14
  store i64 %2993, i64* %PC, align 8
  %2994 = inttoptr i64 %2992 to i64*
  store i64 %2991, i64* %2994, align 8
  %2995 = load i64, i64* %RBP, align 8
  %2996 = add i64 %2995, -56
  %2997 = load i64, i64* %PC, align 8
  %2998 = add i64 %2997, 8
  store i64 %2998, i64* %PC, align 8
  %2999 = inttoptr i64 %2996 to i64*
  store i64 0, i64* %2999, align 8
  %.pre133 = load i64, i64* %PC, align 8
  br label %block_401029

block_400a1a:                                     ; preds = %block_400a0c
  %3000 = add i64 %3204, -112
  %3001 = add i64 %3238, 4
  store i64 %3001, i64* %PC, align 8
  %3002 = inttoptr i64 %3000 to i64*
  %3003 = load i64, i64* %3002, align 8
  store i64 %3003, i64* %RAX, align 8, !tbaa !2428
  %3004 = add i64 %3238, 7
  store i64 %3004, i64* %PC, align 8
  %3005 = inttoptr i64 %3003 to i8*
  %3006 = load i8, i8* %3005, align 1
  %3007 = zext i8 %3006 to i64
  store i64 %3007, i64* %RCX, align 8, !tbaa !2428
  %3008 = zext i8 %3006 to i64
  store i64 %3008, i64* %RAX, align 8, !tbaa !2428
  %3009 = shl nuw nsw i64 %3008, 3
  %3010 = add nsw i64 %3009, -4224
  %3011 = add i64 %3010, %3204
  %3012 = add i64 %3238, 17
  store i64 %3012, i64* %PC, align 8
  %3013 = inttoptr i64 %3011 to i64*
  %3014 = load i64, i64* %3013, align 8
  %3015 = add i64 %3014, 1
  store i64 %3015, i64* %RDX, align 8, !tbaa !2428
  %3016 = icmp eq i64 %3014, -1
  %3017 = icmp eq i64 %3015, 0
  %3018 = or i1 %3016, %3017
  %3019 = zext i1 %3018 to i8
  store i8 %3019, i8* %30, align 1, !tbaa !2432
  %3020 = trunc i64 %3015 to i32
  %3021 = and i32 %3020, 255
  %3022 = tail call i32 @llvm.ctpop.i32(i32 %3021) #12
  %3023 = trunc i32 %3022 to i8
  %3024 = and i8 %3023, 1
  %3025 = xor i8 %3024, 1
  store i8 %3025, i8* %37, align 1, !tbaa !2446
  %3026 = xor i64 %3015, %3014
  %3027 = lshr i64 %3026, 4
  %3028 = trunc i64 %3027 to i8
  %3029 = and i8 %3028, 1
  store i8 %3029, i8* %43, align 1, !tbaa !2450
  %3030 = zext i1 %3017 to i8
  store i8 %3030, i8* %46, align 1, !tbaa !2447
  %3031 = lshr i64 %3015, 63
  %3032 = trunc i64 %3031 to i8
  store i8 %3032, i8* %49, align 1, !tbaa !2448
  %3033 = lshr i64 %3014, 63
  %3034 = xor i64 %3031, %3033
  %3035 = add nuw nsw i64 %3034, %3031
  %3036 = icmp eq i64 %3035, 2
  %3037 = zext i1 %3036 to i8
  store i8 %3037, i8* %55, align 1, !tbaa !2449
  %3038 = add i64 %3204, -4224
  %3039 = add i64 %3038, %3009
  %3040 = add i64 %3238, 29
  store i64 %3040, i64* %PC, align 8
  %3041 = inttoptr i64 %3039 to i64*
  store i64 %3015, i64* %3041, align 8
  %3042 = load i64, i64* %RBP, align 8
  %3043 = add i64 %3042, -112
  %3044 = load i64, i64* %PC, align 8
  %3045 = add i64 %3044, 4
  store i64 %3045, i64* %PC, align 8
  %3046 = inttoptr i64 %3043 to i64*
  %3047 = load i64, i64* %3046, align 8
  %3048 = add i64 %3047, 1
  store i64 %3048, i64* %RAX, align 8, !tbaa !2428
  %3049 = icmp eq i64 %3047, -1
  %3050 = icmp eq i64 %3048, 0
  %3051 = or i1 %3049, %3050
  %3052 = zext i1 %3051 to i8
  store i8 %3052, i8* %30, align 1, !tbaa !2432
  %3053 = trunc i64 %3048 to i32
  %3054 = and i32 %3053, 255
  %3055 = tail call i32 @llvm.ctpop.i32(i32 %3054) #12
  %3056 = trunc i32 %3055 to i8
  %3057 = and i8 %3056, 1
  %3058 = xor i8 %3057, 1
  store i8 %3058, i8* %37, align 1, !tbaa !2446
  %3059 = xor i64 %3048, %3047
  %3060 = lshr i64 %3059, 4
  %3061 = trunc i64 %3060 to i8
  %3062 = and i8 %3061, 1
  store i8 %3062, i8* %43, align 1, !tbaa !2450
  %3063 = zext i1 %3050 to i8
  store i8 %3063, i8* %46, align 1, !tbaa !2447
  %3064 = lshr i64 %3048, 63
  %3065 = trunc i64 %3064 to i8
  store i8 %3065, i8* %49, align 1, !tbaa !2448
  %3066 = lshr i64 %3047, 63
  %3067 = xor i64 %3064, %3066
  %3068 = add nuw nsw i64 %3067, %3064
  %3069 = icmp eq i64 %3068, 2
  %3070 = zext i1 %3069 to i8
  store i8 %3070, i8* %55, align 1, !tbaa !2449
  %3071 = add i64 %3044, 12
  store i64 %3071, i64* %PC, align 8
  store i64 %3048, i64* %3046, align 8
  %3072 = load i64, i64* %RBP, align 8
  %3073 = add i64 %3072, -48
  %3074 = load i64, i64* %PC, align 8
  %3075 = add i64 %3074, 4
  store i64 %3075, i64* %PC, align 8
  %3076 = inttoptr i64 %3073 to i64*
  %3077 = load i64, i64* %3076, align 8
  %3078 = add i64 %3077, 1
  store i64 %3078, i64* %RAX, align 8, !tbaa !2428
  %3079 = icmp eq i64 %3077, -1
  %3080 = icmp eq i64 %3078, 0
  %3081 = or i1 %3079, %3080
  %3082 = zext i1 %3081 to i8
  store i8 %3082, i8* %30, align 1, !tbaa !2432
  %3083 = trunc i64 %3078 to i32
  %3084 = and i32 %3083, 255
  %3085 = tail call i32 @llvm.ctpop.i32(i32 %3084) #12
  %3086 = trunc i32 %3085 to i8
  %3087 = and i8 %3086, 1
  %3088 = xor i8 %3087, 1
  store i8 %3088, i8* %37, align 1, !tbaa !2446
  %3089 = xor i64 %3078, %3077
  %3090 = lshr i64 %3089, 4
  %3091 = trunc i64 %3090 to i8
  %3092 = and i8 %3091, 1
  store i8 %3092, i8* %43, align 1, !tbaa !2450
  %3093 = zext i1 %3080 to i8
  store i8 %3093, i8* %46, align 1, !tbaa !2447
  %3094 = lshr i64 %3078, 63
  %3095 = trunc i64 %3094 to i8
  store i8 %3095, i8* %49, align 1, !tbaa !2448
  %3096 = lshr i64 %3077, 63
  %3097 = xor i64 %3094, %3096
  %3098 = add nuw nsw i64 %3097, %3094
  %3099 = icmp eq i64 %3098, 2
  %3100 = zext i1 %3099 to i8
  store i8 %3100, i8* %55, align 1, !tbaa !2449
  %3101 = add i64 %3074, 12
  store i64 %3101, i64* %PC, align 8
  store i64 %3078, i64* %3076, align 8
  %3102 = load i64, i64* %PC, align 8
  %3103 = add i64 %3102, -67
  store i64 %3103, i64* %PC, align 8, !tbaa !2428
  br label %block_400a0c

block_40107f:                                     ; preds = %block_401037
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %3104 = add i64 %2536, -80
  %3105 = add i64 %2568, 13
  store i64 %3105, i64* %PC, align 8
  %3106 = inttoptr i64 %3104 to i64*
  store i64 0, i64* %3106, align 8
  %3107 = load i64, i64* %RBP, align 8
  %3108 = add i64 %3107, -56
  %3109 = load i64, i64* %PC, align 8
  %3110 = add i64 %3109, 4
  store i64 %3110, i64* %PC, align 8
  %3111 = inttoptr i64 %3108 to i64*
  %3112 = load i64, i64* %3111, align 8
  store i64 %3112, i64* %RCX, align 8, !tbaa !2428
  %3113 = add i64 %3112, -10624
  %3114 = add i64 %3113, %3107
  %3115 = add i64 %3109, 12
  store i64 %3115, i64* %PC, align 8
  %3116 = inttoptr i64 %3114 to i8*
  %3117 = load i8, i8* %3116, align 1
  %3118 = zext i8 %3117 to i32
  %3119 = add nsw i32 %3118, -1
  %3120 = zext i32 %3119 to i64
  store i64 %3120, i64* %RDX, align 8, !tbaa !2428
  %3121 = icmp eq i8 %3117, 0
  %3122 = zext i1 %3121 to i8
  store i8 %3122, i8* %30, align 1, !tbaa !2432
  %3123 = and i32 %3119, 255
  %3124 = tail call i32 @llvm.ctpop.i32(i32 %3123) #12
  %3125 = trunc i32 %3124 to i8
  %3126 = and i8 %3125, 1
  %3127 = xor i8 %3126, 1
  store i8 %3127, i8* %37, align 1, !tbaa !2446
  %3128 = xor i32 %3119, %3118
  %3129 = lshr i32 %3128, 4
  %3130 = trunc i32 %3129 to i8
  %3131 = and i8 %3130, 1
  store i8 %3131, i8* %43, align 1, !tbaa !2450
  %3132 = icmp eq i32 %3119, 0
  %3133 = zext i1 %3132 to i8
  store i8 %3133, i8* %46, align 1, !tbaa !2447
  %3134 = lshr i32 %3119, 31
  %3135 = trunc i32 %3134 to i8
  store i8 %3135, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  store i64 %3120, i64* %RCX, align 8, !tbaa !2428
  %3136 = load i64, i64* %RAX, align 8
  %3137 = add i64 %3109, 19
  store i64 %3137, i64* %PC, align 8
  %3138 = trunc i32 %3119 to i5
  %3139 = trunc i64 %3136 to i32
  switch i5 %3138, label %3145 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %3140
  ]

; <label>:3140:                                   ; preds = %block_40107f
  %3141 = shl i32 %3139, 1
  %3142 = icmp slt i32 %3139, 0
  %3143 = icmp slt i32 %3141, 0
  %3144 = xor i1 %3142, %3143
  br label %3155

; <label>:3145:                                   ; preds = %block_40107f
  %3146 = and i32 %3119, 31
  %3147 = zext i32 %3146 to i64
  %3148 = add nuw nsw i64 %3147, 4294967295
  %3149 = and i64 %3136, 4294967295
  %3150 = and i64 %3148, 4294967295
  %3151 = shl i64 %3149, %3150
  %3152 = trunc i64 %3151 to i32
  %3153 = icmp slt i32 %3152, 0
  %3154 = shl i32 %3152, 1
  br label %3155

; <label>:3155:                                   ; preds = %3145, %3140
  %3156 = phi i1 [ %3142, %3140 ], [ %3153, %3145 ]
  %3157 = phi i1 [ %3144, %3140 ], [ false, %3145 ]
  %3158 = phi i32 [ %3141, %3140 ], [ %3154, %3145 ]
  %3159 = zext i32 %3158 to i64
  store i64 %3159, i64* %RAX, align 8, !tbaa !2428
  %3160 = zext i1 %3156 to i8
  store i8 %3160, i8* %30, align 1, !tbaa !2451
  %3161 = and i32 %3158, 254
  %3162 = tail call i32 @llvm.ctpop.i32(i32 %3161) #12
  %3163 = trunc i32 %3162 to i8
  %3164 = and i8 %3163, 1
  %3165 = xor i8 %3164, 1
  store i8 %3165, i8* %37, align 1, !tbaa !2451
  store i8 0, i8* %43, align 1, !tbaa !2451
  %3166 = icmp eq i32 %3158, 0
  %3167 = zext i1 %3166 to i8
  store i8 %3167, i8* %46, align 1, !tbaa !2451
  %3168 = lshr i32 %3158, 31
  %3169 = trunc i32 %3168 to i8
  store i8 %3169, i8* %49, align 1, !tbaa !2451
  %3170 = zext i1 %3157 to i8
  store i8 %3170, i8* %55, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %3155, %block_40107f
  %3171 = phi i32 [ %3158, %3155 ], [ %3139, %block_40107f ]
  %3172 = sext i32 %3171 to i64
  store i64 %3172, i64* %RSI, align 8, !tbaa !2428
  %3173 = add i64 %3107, -72
  %3174 = add i64 %3109, 26
  store i64 %3174, i64* %PC, align 8
  %3175 = inttoptr i64 %3173 to i64*
  store i64 %3172, i64* %3175, align 8
  %3176 = load i64, i64* %RBP, align 8
  %3177 = add i64 %3176, -48
  %3178 = load i64, i64* %PC, align 8
  %3179 = add i64 %3178, 8
  store i64 %3179, i64* %PC, align 8
  %3180 = inttoptr i64 %3177 to i64*
  store i64 0, i64* %3180, align 8
  %.pre134 = load i64, i64* %PC, align 8
  br label %block_4010ae

block_400e10:                                     ; preds = %block_400dde
  store i64 add (i64 ptrtoint (%seg_401660__rodata_type* @seg_401660__rodata to i64), i64 63), i64* %RSI, align 8, !tbaa !2428
  %3181 = load i64, i64* @stderr, align 32
  store i64 %3181, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %3182 = add i64 %3277, -2016
  %3183 = add i64 %3277, 25
  %3184 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3185 = add i64 %3184, -8
  %3186 = inttoptr i64 %3185 to i64*
  store i64 %3183, i64* %3186, align 8
  store i64 %3185, i64* %RSP, align 8, !tbaa !2428
  store i64 %3182, i64* %PC, align 8, !tbaa !2428
  %3187 = tail call fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State* nonnull %0, %struct.Memory* %322)
  %3188 = load i64, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %3189 = load i64, i64* %RBP, align 8
  %3190 = add i64 %3189, -13084
  %3191 = load i32, i32* %EAX, align 4
  %3192 = add i64 %3188, 11
  store i64 %3192, i64* %PC, align 8
  %3193 = inttoptr i64 %3190 to i32*
  store i32 %3191, i32* %3193, align 4
  %3194 = load i64, i64* %PC, align 8
  %3195 = add i64 %3194, -2004
  %3196 = add i64 %3194, 5
  %3197 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3198 = add i64 %3197, -8
  %3199 = inttoptr i64 %3198 to i64*
  store i64 %3196, i64* %3199, align 8
  store i64 %3198, i64* %RSP, align 8, !tbaa !2428
  store i64 %3195, i64* %PC, align 8, !tbaa !2428
  %3200 = tail call fastcc %struct.Memory* @ext_400660_exit(%struct.State* nonnull %0, %struct.Memory* %3187)
  %3201 = load i64, i64* %PC, align 8
  %3202 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %3201, %struct.Memory* %3200)
  ret %struct.Memory* %3202

block_400a0c:                                     ; preds = %block_400a1a, %block_4008b0
  %3203 = phi i64 [ %3103, %block_400a1a ], [ %.pre, %block_4008b0 ]
  %3204 = load i64, i64* %RBP, align 8
  %3205 = add i64 %3204, -48
  %3206 = add i64 %3203, 4
  store i64 %3206, i64* %PC, align 8
  %3207 = inttoptr i64 %3205 to i64*
  %3208 = load i64, i64* %3207, align 8
  store i64 %3208, i64* %RAX, align 8, !tbaa !2428
  %3209 = add i64 %3204, -40
  %3210 = add i64 %3203, 8
  store i64 %3210, i64* %PC, align 8
  %3211 = inttoptr i64 %3209 to i64*
  %3212 = load i64, i64* %3211, align 8
  %3213 = sub i64 %3208, %3212
  %3214 = icmp ult i64 %3208, %3212
  %3215 = zext i1 %3214 to i8
  store i8 %3215, i8* %30, align 1, !tbaa !2432
  %3216 = trunc i64 %3213 to i32
  %3217 = and i32 %3216, 255
  %3218 = tail call i32 @llvm.ctpop.i32(i32 %3217) #12
  %3219 = trunc i32 %3218 to i8
  %3220 = and i8 %3219, 1
  %3221 = xor i8 %3220, 1
  store i8 %3221, i8* %37, align 1, !tbaa !2446
  %3222 = xor i64 %3212, %3208
  %3223 = xor i64 %3222, %3213
  %3224 = lshr i64 %3223, 4
  %3225 = trunc i64 %3224 to i8
  %3226 = and i8 %3225, 1
  store i8 %3226, i8* %43, align 1, !tbaa !2450
  %3227 = icmp eq i64 %3213, 0
  %3228 = zext i1 %3227 to i8
  store i8 %3228, i8* %46, align 1, !tbaa !2447
  %3229 = lshr i64 %3213, 63
  %3230 = trunc i64 %3229 to i8
  store i8 %3230, i8* %49, align 1, !tbaa !2448
  %3231 = lshr i64 %3208, 63
  %3232 = lshr i64 %3212, 63
  %3233 = xor i64 %3232, %3231
  %3234 = xor i64 %3229, %3231
  %3235 = add nuw nsw i64 %3234, %3233
  %3236 = icmp eq i64 %3235, 2
  %3237 = zext i1 %3236 to i8
  store i8 %3237, i8* %55, align 1, !tbaa !2449
  %.v152 = select i1 %3214, i64 14, i64 72
  %3238 = add i64 %3203, %.v152
  store i64 %3238, i64* %PC, align 8, !tbaa !2428
  br i1 %3214, label %block_400a1a, label %block_400a54

block_400dde:                                     ; preds = %block_400da7
  %3239 = add i64 %2570, -10680
  %3240 = add i64 %534, 11
  store i64 %3240, i64* %PC, align 8
  %3241 = inttoptr i64 %3239 to i64*
  store i64 0, i64* %3241, align 8
  %3242 = load i64, i64* %RBP, align 8
  %3243 = add i64 %3242, -10681
  %3244 = load i64, i64* %PC, align 8
  %3245 = add i64 %3244, 7
  store i64 %3245, i64* %PC, align 8
  %3246 = inttoptr i64 %3243 to i8*
  store i8 0, i8* %3246, align 1
  %3247 = load i64, i64* %RBP, align 8
  %3248 = add i64 %3247, -10688
  %3249 = load i64, i64* %PC, align 8
  %3250 = add i64 %3249, 10
  store i64 %3250, i64* %PC, align 8
  %3251 = inttoptr i64 %3248 to i32*
  store i32 -1, i32* %3251, align 4
  %3252 = load i64, i64* %RBP, align 8
  %3253 = add i64 %3252, -32
  %3254 = load i64, i64* %PC, align 8
  %3255 = add i64 %3254, 4
  store i64 %3255, i64* %PC, align 8
  %3256 = inttoptr i64 %3253 to i64*
  %3257 = load i64, i64* %3256, align 8
  store i64 %3257, i64* %RAX, align 8, !tbaa !2428
  %3258 = add i64 %3252, -112
  %3259 = add i64 %3254, 8
  store i64 %3259, i64* %PC, align 8
  %3260 = inttoptr i64 %3258 to i64*
  store i64 %3257, i64* %3260, align 8
  %3261 = load i64, i64* %RBP, align 8
  %3262 = add i64 %3261, -10656
  %3263 = load i64, i64* %PC, align 8
  %3264 = add i64 %3263, 8
  store i64 %3264, i64* %PC, align 8
  %3265 = inttoptr i64 %3262 to i64*
  %3266 = load i64, i64* %3265, align 8
  store i8 0, i8* %30, align 1, !tbaa !2432
  %3267 = trunc i64 %3266 to i32
  %3268 = and i32 %3267, 255
  %3269 = tail call i32 @llvm.ctpop.i32(i32 %3268) #12
  %3270 = trunc i32 %3269 to i8
  %3271 = and i8 %3270, 1
  %3272 = xor i8 %3271, 1
  store i8 %3272, i8* %37, align 1, !tbaa !2446
  store i8 0, i8* %43, align 1, !tbaa !2450
  %3273 = icmp eq i64 %3266, 0
  %3274 = zext i1 %3273 to i8
  store i8 %3274, i8* %46, align 1, !tbaa !2447
  %3275 = lshr i64 %3266, 63
  %3276 = trunc i64 %3275 to i8
  store i8 %3276, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  %.v158 = select i1 %3273, i64 14, i64 55
  %3277 = add i64 %3263, %.v158
  store i64 %3277, i64* %PC, align 8, !tbaa !2428
  br i1 %3273, label %block_400e10, label %block_400e39

block_401158:                                     ; preds = %block_40114a
  %3278 = add i64 %2684, 4
  store i64 %3278, i64* %PC, align 8
  %3279 = load i64, i64* %2660, align 8
  store i64 %3279, i64* %RAX, align 8, !tbaa !2428
  %3280 = shl i64 %3279, 3
  %3281 = add i64 %3280, -12736
  %3282 = add i64 %3281, %2657
  %3283 = add i64 %2684, 12
  store i64 %3283, i64* %PC, align 8
  %3284 = inttoptr i64 %3282 to i64*
  %3285 = load i64, i64* %3284, align 8
  store i64 %3285, i64* %RAX, align 8, !tbaa !2428
  %3286 = add i64 %2657, -88
  %3287 = add i64 %2684, 16
  store i64 %3287, i64* %PC, align 8
  %3288 = inttoptr i64 %3286 to i64*
  store i64 %3285, i64* %3288, align 8
  %3289 = load i64, i64* %RBP, align 8
  %3290 = add i64 %3289, -48
  %3291 = load i64, i64* %PC, align 8
  %3292 = add i64 %3291, 4
  store i64 %3292, i64* %PC, align 8
  %3293 = inttoptr i64 %3290 to i64*
  %3294 = load i64, i64* %3293, align 8
  store i64 %3294, i64* %RAX, align 8, !tbaa !2428
  %3295 = add i64 %3294, -12992
  %3296 = add i64 %3295, %3289
  %3297 = add i64 %3291, 11
  store i64 %3297, i64* %PC, align 8
  %3298 = inttoptr i64 %3296 to i8*
  %3299 = load i8, i8* %3298, align 1
  store i8 %3299, i8* %CL, align 1, !tbaa !2451
  %3300 = add i64 %3289, -89
  %3301 = add i64 %3291, 14
  store i64 %3301, i64* %PC, align 8
  %3302 = inttoptr i64 %3300 to i8*
  store i8 %3299, i8* %3302, align 1
  %3303 = load i64, i64* %RBP, align 8
  %3304 = add i64 %3303, -48
  %3305 = load i64, i64* %PC, align 8
  %3306 = add i64 %3305, 4
  store i64 %3306, i64* %PC, align 8
  %3307 = inttoptr i64 %3304 to i64*
  %3308 = load i64, i64* %3307, align 8
  store i64 %3308, i64* %RAX, align 8, !tbaa !2428
  %3309 = add i64 %3303, -56
  %3310 = add i64 %3305, 8
  store i64 %3310, i64* %PC, align 8
  %3311 = inttoptr i64 %3309 to i64*
  store i64 %3308, i64* %3311, align 8
  %.pre140 = load i64, i64* %PC, align 8
  br label %block_40117e

block_4010ff:                                     ; preds = %block_4010c9, %block_4010f3
  %3312 = phi i64 [ %1374, %block_4010c9 ], [ %.pre136, %block_4010f3 ]
  %3313 = phi i64 [ %1347, %block_4010c9 ], [ %.pre135, %block_4010f3 ]
  %3314 = add i64 %3313, -72
  %3315 = add i64 %3312, 4
  store i64 %3315, i64* %PC, align 8
  %3316 = inttoptr i64 %3314 to i64*
  %3317 = load i64, i64* %3316, align 8
  %3318 = lshr i64 %3317, 63
  %3319 = trunc i64 %3318 to i8
  %3320 = trunc i64 %3317 to i8
  %3321 = and i8 %3320, 1
  %3322 = lshr i64 %3317, 1
  store i64 %3322, i64* %RAX, align 8, !tbaa !2428
  store i8 %3321, i8* %30, align 1, !tbaa !2451
  %3323 = trunc i64 %3322 to i32
  %3324 = and i32 %3323, 255
  %3325 = tail call i32 @llvm.ctpop.i32(i32 %3324) #12
  %3326 = trunc i32 %3325 to i8
  %3327 = and i8 %3326, 1
  %3328 = xor i8 %3327, 1
  store i8 %3328, i8* %37, align 1, !tbaa !2451
  store i8 0, i8* %43, align 1, !tbaa !2451
  %3329 = icmp eq i64 %3322, 0
  %3330 = zext i1 %3329 to i8
  store i8 %3330, i8* %46, align 1, !tbaa !2451
  store i8 0, i8* %49, align 1, !tbaa !2451
  store i8 %3319, i8* %55, align 1, !tbaa !2451
  %3331 = add i64 %3312, 12
  store i64 %3331, i64* %PC, align 8
  store i64 %3322, i64* %3316, align 8
  %3332 = load i64, i64* %RBP, align 8
  %3333 = add i64 %3332, -48
  %3334 = load i64, i64* %PC, align 8
  %3335 = add i64 %3334, 4
  store i64 %3335, i64* %PC, align 8
  %3336 = inttoptr i64 %3333 to i64*
  %3337 = load i64, i64* %3336, align 8
  %3338 = add i64 %3337, 1
  store i64 %3338, i64* %RAX, align 8, !tbaa !2428
  %3339 = icmp eq i64 %3337, -1
  %3340 = icmp eq i64 %3338, 0
  %3341 = or i1 %3339, %3340
  %3342 = zext i1 %3341 to i8
  store i8 %3342, i8* %30, align 1, !tbaa !2432
  %3343 = trunc i64 %3338 to i32
  %3344 = and i32 %3343, 255
  %3345 = tail call i32 @llvm.ctpop.i32(i32 %3344) #12
  %3346 = trunc i32 %3345 to i8
  %3347 = and i8 %3346, 1
  %3348 = xor i8 %3347, 1
  store i8 %3348, i8* %37, align 1, !tbaa !2446
  %3349 = xor i64 %3338, %3337
  %3350 = lshr i64 %3349, 4
  %3351 = trunc i64 %3350 to i8
  %3352 = and i8 %3351, 1
  store i8 %3352, i8* %43, align 1, !tbaa !2450
  %3353 = zext i1 %3340 to i8
  store i8 %3353, i8* %46, align 1, !tbaa !2447
  %3354 = lshr i64 %3338, 63
  %3355 = trunc i64 %3354 to i8
  store i8 %3355, i8* %49, align 1, !tbaa !2448
  %3356 = lshr i64 %3337, 63
  %3357 = xor i64 %3354, %3356
  %3358 = add nuw nsw i64 %3357, %3354
  %3359 = icmp eq i64 %3358, 2
  %3360 = zext i1 %3359 to i8
  store i8 %3360, i8* %55, align 1, !tbaa !2449
  %3361 = add i64 %3334, 12
  store i64 %3361, i64* %PC, align 8
  store i64 %3338, i64* %3336, align 8
  %3362 = load i64, i64* %PC, align 8
  %3363 = add i64 %3362, -105
  store i64 %3363, i64* %PC, align 8, !tbaa !2428
  br label %block_4010ae

block_400a64:                                     ; preds = %block_400aa1, %block_400a54
  %3364 = phi i64 [ %1642, %block_400aa1 ], [ %.pre116, %block_400a54 ]
  %3365 = load i64, i64* %RBP, align 8
  %3366 = add i64 %3365, -48
  %3367 = add i64 %3364, 8
  store i64 %3367, i64* %PC, align 8
  %3368 = inttoptr i64 %3366 to i64*
  %3369 = load i64, i64* %3368, align 8
  %3370 = add i64 %3369, -256
  %3371 = icmp ult i64 %3369, 256
  %3372 = zext i1 %3371 to i8
  store i8 %3372, i8* %30, align 1, !tbaa !2432
  %3373 = trunc i64 %3370 to i32
  %3374 = and i32 %3373, 255
  %3375 = tail call i32 @llvm.ctpop.i32(i32 %3374) #12
  %3376 = trunc i32 %3375 to i8
  %3377 = and i8 %3376, 1
  %3378 = xor i8 %3377, 1
  store i8 %3378, i8* %37, align 1, !tbaa !2446
  %3379 = xor i64 %3370, %3369
  %3380 = lshr i64 %3379, 4
  %3381 = trunc i64 %3380 to i8
  %3382 = and i8 %3381, 1
  store i8 %3382, i8* %43, align 1, !tbaa !2450
  %3383 = icmp eq i64 %3370, 0
  %3384 = zext i1 %3383 to i8
  store i8 %3384, i8* %46, align 1, !tbaa !2447
  %3385 = lshr i64 %3370, 63
  %3386 = trunc i64 %3385 to i8
  store i8 %3386, i8* %49, align 1, !tbaa !2448
  %3387 = lshr i64 %3369, 63
  %3388 = xor i64 %3385, %3387
  %3389 = add nuw nsw i64 %3388, %3387
  %3390 = icmp eq i64 %3389, 2
  %3391 = zext i1 %3390 to i8
  store i8 %3391, i8* %55, align 1, !tbaa !2449
  %.v153 = select i1 %3371, i64 14, i64 83
  %3392 = add i64 %3364, %.v153
  store i64 %3392, i64* %PC, align 8, !tbaa !2428
  br i1 %3371, label %block_400a72, label %block_400ab7

block_400c00:                                     ; preds = %block_400b0d
  %3393 = add i64 %1006, 4
  store i64 %3393, i64* %PC, align 8
  %3394 = load i64, i64* %981, align 8
  %3395 = add i64 %3394, 256
  store i64 %3395, i64* %RAX, align 8, !tbaa !2428
  %3396 = icmp ugt i64 %3394, -257
  %3397 = zext i1 %3396 to i8
  store i8 %3397, i8* %30, align 1, !tbaa !2432
  %3398 = trunc i64 %3395 to i32
  %3399 = and i32 %3398, 255
  %3400 = tail call i32 @llvm.ctpop.i32(i32 %3399) #12
  %3401 = trunc i32 %3400 to i8
  %3402 = and i8 %3401, 1
  %3403 = xor i8 %3402, 1
  store i8 %3403, i8* %37, align 1, !tbaa !2446
  %3404 = xor i64 %3395, %3394
  %3405 = lshr i64 %3404, 4
  %3406 = trunc i64 %3405 to i8
  %3407 = and i8 %3406, 1
  store i8 %3407, i8* %43, align 1, !tbaa !2450
  %3408 = icmp eq i64 %3395, 0
  %3409 = zext i1 %3408 to i8
  store i8 %3409, i8* %46, align 1, !tbaa !2447
  %3410 = lshr i64 %3395, 63
  %3411 = trunc i64 %3410 to i8
  store i8 %3411, i8* %49, align 1, !tbaa !2448
  %3412 = lshr i64 %3394, 63
  %3413 = xor i64 %3410, %3412
  %3414 = add nuw nsw i64 %3413, %3410
  %3415 = icmp eq i64 %3414, 2
  %3416 = zext i1 %3415 to i8
  store i8 %3416, i8* %55, align 1, !tbaa !2449
  %3417 = shl i64 %3395, 2
  %3418 = add i64 %976, -8320
  %3419 = add i64 %3418, %3417
  %3420 = add i64 %1006, 21
  store i64 %3420, i64* %PC, align 8
  %3421 = inttoptr i64 %3419 to i32*
  store i32 0, i32* %3421, align 4
  %3422 = load i64, i64* %RBP, align 8
  %3423 = add i64 %3422, -10656
  %3424 = load i64, i64* %PC, align 8
  %3425 = add i64 %3424, 11
  store i64 %3425, i64* %PC, align 8
  %3426 = inttoptr i64 %3423 to i64*
  store i64 0, i64* %3426, align 8
  %3427 = load i64, i64* %RBP, align 8
  %3428 = add i64 %3427, -10664
  %3429 = load i64, i64* %PC, align 8
  %3430 = add i64 %3429, 11
  store i64 %3430, i64* %PC, align 8
  %3431 = inttoptr i64 %3428 to i64*
  store i64 0, i64* %3431, align 8
  %3432 = load i64, i64* %RBP, align 8
  %3433 = add i64 %3432, -10640
  %3434 = load i64, i64* %PC, align 8
  %3435 = add i64 %3434, 11
  store i64 %3435, i64* %PC, align 8
  %3436 = inttoptr i64 %3433 to i64*
  store i64 0, i64* %3436, align 8
  %.pre122 = load i64, i64* %PC, align 8
  br label %block_400c36
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_401650___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_401650:
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
define internal void @callback_sub_400750_frame_dummy() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400750;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_400750_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400750_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400720___do_global_dtors_aux() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400720;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_400720___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400720___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401650___libc_csu_fini() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401650;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_401650___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401650___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4015e0___libc_csu_init() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4015e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_4015e0___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4015e0___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4014b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4014b0_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602100___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020d0_fprintf(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020c8_strcmp(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020e0_fflush(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @fflush to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020f0_free(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020d8_malloc(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400660_exit(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6020f8_memset(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @compdecomp() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4008b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @compdecomp_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4008b0_compdecomp(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @generate_test_data() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400760;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @generate_test_data_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400760_generate_test_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4005d8;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #12
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
  %6 = tail call %struct.Memory* @sub_4005d8__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401654;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #12
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
  %6 = tail call %struct.Memory* @sub_401654__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_constructor() #12 {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_4015e0___libc_csu_init()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #12 {
  tail call void @callback_sub_401650___libc_csu_fini()
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline }
attributes #6 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { naked nobuiltin noinline nounwind }
attributes #10 = { norecurse nounwind }
attributes #11 = { noinline nounwind }
attributes #12 = { nounwind }
attributes #13 = { alwaysinline nobuiltin nounwind }

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
!2451 = !{!2430, !2430, i64 0}
!2452 = !{!2453, !2453, i64 0}
!2453 = !{!"double", !2430, i64 0}
!2454 = !{!2445, !2445, i64 0}
