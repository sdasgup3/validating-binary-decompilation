; ModuleID = 'binary/test.mcsema.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_602de0__init_array_type = type <{ i64, i64 }>
%seg_602ff0__got_type = type <{ i64, i64 }>
%seg_603020__data_type = type <{ [16 x i8], [36 x i8] }>
%seg_603060__bss_type = type <{ [16 x i8], [16 x i8], [1024 x i8], [1024 x i8], [1024 x i8], [80 x i8], [960 x i8], [64 x i8] }>
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
@seg_602de0__init_array = internal global %seg_602de0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400510_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_4004e0___do_global_dtors_aux to i64) }>
@seg_602ff0__got = internal global %seg_602ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_603020__data = internal global %seg_603020__data_type <{ [16 x i8] zeroinitializer, [36 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00" }>
@seg_603060__bss = internal global %seg_603060__bss_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400510_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4004e0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401ce0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401c70___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @rsenc_204_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @rsdec_204_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @sub_400470_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400690_generate_gf_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4019b0_encode_rs_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007e0_gen_poly_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401880_rsenc_204_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4003f0__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400520_rsdec_204_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400940_decode_rs_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @random() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400940_decode_rs(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400940:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %ECX = bitcast %union.anon* %4 to i32*
  %EDX = bitcast %union.anon* %5 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %6 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RSI = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0
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
  %13 = add i64 %9, -2616
  store i64 %13, i64* %RSP, align 8, !tbaa !2428
  %14 = icmp ult i64 %10, 2608
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1, !tbaa !2432
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #12
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1, !tbaa !2446
  %24 = xor i64 %10, 16
  %25 = xor i64 %24, %13
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1, !tbaa !2447
  %30 = icmp eq i64 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1, !tbaa !2448
  %33 = lshr i64 %13, 63
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1, !tbaa !2449
  %36 = lshr i64 %10, 63
  %37 = xor i64 %33, %36
  %38 = add nuw nsw i64 %37, %36
  %39 = icmp eq i64 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1, !tbaa !2450
  %42 = add i64 %9, -1500
  %43 = add i64 %12, 20
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %42 to i32*
  store i32 0, i32* %44, align 4
  %45 = load i64, i64* %RBP, align 8
  %46 = add i64 %45, -1496
  %47 = load i64, i64* %PC, align 8
  %48 = add i64 %47, 10
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %46 to i32*
  store i32 0, i32* %49, align 4
  %50 = load i64, i64* %RBP, align 8
  %51 = add i64 %50, -4
  %52 = load i64, i64* %PC, align 8
  %53 = add i64 %52, 7
  store i64 %53, i64* %PC, align 8
  %54 = inttoptr i64 %51 to i32*
  store i32 1, i32* %54, align 4
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_400966

block_4017f8.loopexit:                            ; preds = %block_40178f
  br label %block_4017f8

block_4017f8:                                     ; preds = %block_4017f8.loopexit, %block_401783
  %56 = phi i64 [ %3077, %block_401783 ], [ %3167, %block_4017f8.loopexit ]
  %.sink30 = phi i64 [ 117, %block_401783 ], [ 5, %block_4017f8.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.22, %block_401783 ], [ %MEMORY.27, %block_4017f8.loopexit ]
  %57 = add i64 %56, %.sink30
  store i64 %57, i64* %PC, align 8, !tbaa !2428
  br label %block_40186d

block_400def:                                     ; preds = %block_400ddb
  %58 = add i64 %1623, -1168
  store i64 %58, i64* %RAX, align 8, !tbaa !2428
  %59 = add i64 %1666, 11
  store i64 %59, i64* %PC, align 8
  %60 = load i32, i32* %1631, align 4
  %61 = sext i32 %60 to i64
  %62 = shl nsw i64 %61, 6
  store i64 %62, i64* %RCX, align 8, !tbaa !2428
  %63 = add i64 %62, %58
  store i64 %63, i64* %RDX, align 8, !tbaa !2428
  %64 = icmp ult i64 %63, %58
  %65 = icmp ult i64 %63, %62
  %66 = or i1 %64, %65
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %16, align 1, !tbaa !2432
  %68 = trunc i64 %63 to i32
  %69 = and i32 %68, 255
  %70 = tail call i32 @llvm.ctpop.i32(i32 %69) #12
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  %73 = xor i8 %72, 1
  store i8 %73, i8* %23, align 1, !tbaa !2446
  %74 = xor i64 %58, %63
  %75 = lshr i64 %74, 4
  %76 = trunc i64 %75 to i8
  %77 = and i8 %76, 1
  store i8 %77, i8* %29, align 1, !tbaa !2447
  %78 = icmp eq i64 %63, 0
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %32, align 1, !tbaa !2448
  %80 = lshr i64 %63, 63
  %81 = trunc i64 %80 to i8
  store i8 %81, i8* %35, align 1, !tbaa !2449
  %82 = lshr i64 %58, 63
  %83 = lshr i64 %61, 57
  %84 = and i64 %83, 1
  %85 = xor i64 %80, %82
  %86 = xor i64 %80, %84
  %87 = add nuw nsw i64 %85, %86
  %88 = icmp eq i64 %87, 2
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %41, align 1, !tbaa !2450
  %90 = add i64 %1666, 25
  store i64 %90, i64* %PC, align 8
  %91 = load i32, i32* %1626, align 4
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %RCX, align 8, !tbaa !2428
  %93 = shl nsw i64 %92, 2
  %94 = add i64 %93, %63
  %95 = add i64 %1666, 28
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %94 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = zext i32 %97 to i64
  store i64 %98, i64* %RSI, align 8, !tbaa !2428
  %99 = add i64 %1666, 31
  store i64 %99, i64* %PC, align 8
  %100 = load i32, i32* %1631, align 4
  %101 = add i32 %100, 1
  %102 = zext i32 %101 to i64
  store i64 %102, i64* %RDI, align 8, !tbaa !2428
  %103 = sext i32 %101 to i64
  %104 = shl nsw i64 %103, 6
  store i64 %104, i64* %RCX, align 8, !tbaa !2428
  %105 = load i64, i64* %RAX, align 8
  %106 = add i64 %104, %105
  store i64 %106, i64* %RDX, align 8, !tbaa !2428
  %107 = icmp ult i64 %106, %105
  %108 = icmp ult i64 %106, %104
  %109 = or i1 %107, %108
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %16, align 1, !tbaa !2432
  %111 = trunc i64 %106 to i32
  %112 = and i32 %111, 255
  %113 = tail call i32 @llvm.ctpop.i32(i32 %112) #12
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = xor i8 %115, 1
  store i8 %116, i8* %23, align 1, !tbaa !2446
  %117 = xor i64 %105, %106
  %118 = lshr i64 %117, 4
  %119 = trunc i64 %118 to i8
  %120 = and i8 %119, 1
  store i8 %120, i8* %29, align 1, !tbaa !2447
  %121 = icmp eq i64 %106, 0
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %32, align 1, !tbaa !2448
  %123 = lshr i64 %106, 63
  %124 = trunc i64 %123 to i8
  store i8 %124, i8* %35, align 1, !tbaa !2449
  %125 = lshr i64 %105, 63
  %126 = lshr i64 %103, 57
  %127 = and i64 %126, 1
  %128 = xor i64 %123, %125
  %129 = xor i64 %123, %127
  %130 = add nuw nsw i64 %128, %129
  %131 = icmp eq i64 %130, 2
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %41, align 1, !tbaa !2450
  %133 = load i64, i64* %RBP, align 8
  %134 = add i64 %133, -4
  %135 = add i64 %1666, 51
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %134 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %RCX, align 8, !tbaa !2428
  %139 = load i64, i64* %RSI, align 8
  %140 = shl nsw i64 %138, 2
  %141 = add i64 %106, %140
  %142 = add i64 %1666, 54
  store i64 %142, i64* %PC, align 8
  %143 = trunc i64 %139 to i32
  %144 = inttoptr i64 %141 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = xor i32 %145, %143
  %147 = zext i32 %146 to i64
  store i64 %147, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %148 = and i32 %146, 255
  %149 = tail call i32 @llvm.ctpop.i32(i32 %148) #12
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  %152 = xor i8 %151, 1
  store i8 %152, i8* %23, align 1, !tbaa !2446
  %153 = icmp eq i32 %146, 0
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %32, align 1, !tbaa !2448
  %155 = lshr i32 %146, 31
  %156 = trunc i32 %155 to i8
  store i8 %156, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %157 = add i64 %1666, 57
  store i64 %157, i64* %PC, align 8
  store i32 %146, i32* %144, align 4
  %158 = load i64, i64* %RBP, align 8
  %159 = add i64 %158, -12
  %160 = load i64, i64* %PC, align 8
  %161 = add i64 %160, 4
  store i64 %161, i64* %PC, align 8
  %162 = inttoptr i64 %159 to i32*
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = shl nsw i64 %164, 6
  store i64 %165, i64* %RCX, align 8, !tbaa !2428
  %166 = load i64, i64* %RAX, align 8
  %167 = add i64 %165, %166
  store i64 %167, i64* %RDX, align 8, !tbaa !2428
  %168 = icmp ult i64 %167, %166
  %169 = icmp ult i64 %167, %165
  %170 = or i1 %168, %169
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %16, align 1, !tbaa !2432
  %172 = trunc i64 %167 to i32
  %173 = and i32 %172, 255
  %174 = tail call i32 @llvm.ctpop.i32(i32 %173) #12
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  store i8 %177, i8* %23, align 1, !tbaa !2446
  %178 = xor i64 %166, %167
  %179 = lshr i64 %178, 4
  %180 = trunc i64 %179 to i8
  %181 = and i8 %180, 1
  store i8 %181, i8* %29, align 1, !tbaa !2447
  %182 = icmp eq i64 %167, 0
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %32, align 1, !tbaa !2448
  %184 = lshr i64 %167, 63
  %185 = trunc i64 %184 to i8
  store i8 %185, i8* %35, align 1, !tbaa !2449
  %186 = lshr i64 %166, 63
  %187 = lshr i64 %164, 57
  %188 = and i64 %187, 1
  %189 = xor i64 %184, %186
  %190 = xor i64 %184, %188
  %191 = add nuw nsw i64 %189, %190
  %192 = icmp eq i64 %191, 2
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %41, align 1, !tbaa !2450
  %194 = add i64 %158, -4
  %195 = add i64 %160, 18
  store i64 %195, i64* %PC, align 8
  %196 = inttoptr i64 %194 to i32*
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  store i64 %198, i64* %RCX, align 8, !tbaa !2428
  %199 = shl nsw i64 %198, 2
  %200 = add i64 %199, %167
  %201 = add i64 %160, 22
  store i64 %201, i64* %PC, align 8
  %202 = inttoptr i64 %200 to i32*
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  store i64 %204, i64* %RCX, align 8, !tbaa !2428
  %205 = shl nsw i64 %204, 2
  %206 = add i64 %205, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %207 = add i64 %160, 29
  store i64 %207, i64* %PC, align 8
  %208 = inttoptr i64 %206 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %RSI, align 8, !tbaa !2428
  %211 = add i64 %160, 33
  store i64 %211, i64* %PC, align 8
  %212 = load i32, i32* %162, align 4
  %213 = sext i32 %212 to i64
  %214 = shl nsw i64 %213, 6
  store i64 %214, i64* %RCX, align 8, !tbaa !2428
  %215 = add i64 %214, %166
  store i64 %215, i64* %RAX, align 8, !tbaa !2428
  %216 = icmp ult i64 %215, %166
  %217 = icmp ult i64 %215, %214
  %218 = or i1 %216, %217
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %16, align 1, !tbaa !2432
  %220 = trunc i64 %215 to i32
  %221 = and i32 %220, 255
  %222 = tail call i32 @llvm.ctpop.i32(i32 %221) #12
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  store i8 %225, i8* %23, align 1, !tbaa !2446
  %226 = xor i64 %166, %215
  %227 = lshr i64 %226, 4
  %228 = trunc i64 %227 to i8
  %229 = and i8 %228, 1
  store i8 %229, i8* %29, align 1, !tbaa !2447
  %230 = icmp eq i64 %215, 0
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %32, align 1, !tbaa !2448
  %232 = lshr i64 %215, 63
  %233 = trunc i64 %232 to i8
  store i8 %233, i8* %35, align 1, !tbaa !2449
  %234 = lshr i64 %213, 57
  %235 = and i64 %234, 1
  %236 = xor i64 %232, %186
  %237 = xor i64 %232, %235
  %238 = add nuw nsw i64 %236, %237
  %239 = icmp eq i64 %238, 2
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %41, align 1, !tbaa !2450
  %241 = load i64, i64* %RBP, align 8
  %242 = add i64 %241, -4
  %243 = add i64 %160, 44
  store i64 %243, i64* %PC, align 8
  %244 = inttoptr i64 %242 to i32*
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  store i64 %246, i64* %RCX, align 8, !tbaa !2428
  %247 = shl nsw i64 %246, 2
  %248 = add i64 %247, %215
  %249 = add i64 %160, 47
  store i64 %249, i64* %PC, align 8
  %250 = inttoptr i64 %248 to i32*
  store i32 %209, i32* %250, align 4
  %251 = load i64, i64* %RBP, align 8
  %252 = add i64 %251, -4
  %253 = load i64, i64* %PC, align 8
  %254 = add i64 %253, 3
  store i64 %254, i64* %PC, align 8
  %255 = inttoptr i64 %252 to i32*
  %256 = load i32, i32* %255, align 4
  %257 = add i32 %256, 1
  %258 = zext i32 %257 to i64
  store i64 %258, i64* %RAX, align 8, !tbaa !2428
  %259 = icmp eq i32 %256, -1
  %260 = icmp eq i32 %257, 0
  %261 = or i1 %259, %260
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %16, align 1, !tbaa !2432
  %263 = and i32 %257, 255
  %264 = tail call i32 @llvm.ctpop.i32(i32 %263) #12
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  %267 = xor i8 %266, 1
  store i8 %267, i8* %23, align 1, !tbaa !2446
  %268 = xor i32 %257, %256
  %269 = lshr i32 %268, 4
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  store i8 %271, i8* %29, align 1, !tbaa !2447
  %272 = zext i1 %260 to i8
  store i8 %272, i8* %32, align 1, !tbaa !2448
  %273 = lshr i32 %257, 31
  %274 = trunc i32 %273 to i8
  store i8 %274, i8* %35, align 1, !tbaa !2449
  %275 = lshr i32 %256, 31
  %276 = xor i32 %273, %275
  %277 = add nuw nsw i32 %276, %273
  %278 = icmp eq i32 %277, 2
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %41, align 1, !tbaa !2450
  %280 = add i64 %253, 9
  store i64 %280, i64* %PC, align 8
  store i32 %257, i32* %255, align 4
  %281 = load i64, i64* %PC, align 8
  %282 = add i64 %281, -133
  store i64 %282, i64* %PC, align 8, !tbaa !2428
  br label %block_400ddb

block_4009eb:                                     ; preds = %block_400993, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8
  %283 = phi i64 [ %1025, %block_400993 ], [ %.pre180, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8 ]
  %284 = phi i64 [ %2216, %block_400993 ], [ %.pre179, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.10, %block_400993 ], [ %396, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8 ]
  %285 = add i64 %283, -8
  %286 = add i64 %284, 8
  store i64 %286, i64* %PC, align 8
  %287 = inttoptr i64 %285 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = add i32 %288, 1
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %RAX, align 8, !tbaa !2428
  %291 = icmp eq i32 %288, -1
  %292 = icmp eq i32 %289, 0
  %293 = or i1 %291, %292
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %16, align 1, !tbaa !2432
  %295 = and i32 %289, 255
  %296 = tail call i32 @llvm.ctpop.i32(i32 %295) #12
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = xor i8 %298, 1
  store i8 %299, i8* %23, align 1, !tbaa !2446
  %300 = xor i32 %289, %288
  %301 = lshr i32 %300, 4
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  store i8 %303, i8* %29, align 1, !tbaa !2447
  %304 = zext i1 %292 to i8
  store i8 %304, i8* %32, align 1, !tbaa !2448
  %305 = lshr i32 %289, 31
  %306 = trunc i32 %305 to i8
  store i8 %306, i8* %35, align 1, !tbaa !2449
  %307 = lshr i32 %288, 31
  %308 = xor i32 %305, %307
  %309 = add nuw nsw i32 %308, %305
  %310 = icmp eq i32 %309, 2
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %41, align 1, !tbaa !2450
  %312 = add i64 %284, 14
  store i64 %312, i64* %PC, align 8
  store i32 %289, i32* %287, align 4
  %313 = load i64, i64* %PC, align 8
  %314 = add i64 %313, -115
  store i64 %314, i64* %PC, align 8, !tbaa !2428
  br label %block_400986

block_4009a5:                                     ; preds = %block_400993
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %315 = add i64 %2216, 9
  store i64 %315, i64* %PC, align 8
  %316 = load i32, i32* %1028, align 4
  %317 = sext i32 %316 to i64
  store i64 %317, i64* %RCX, align 8, !tbaa !2428
  %318 = shl nsw i64 %317, 2
  %319 = add i64 %318, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %320 = add i64 %2216, 16
  store i64 %320, i64* %PC, align 8
  %321 = inttoptr i64 %319 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RDX, align 8, !tbaa !2428
  %324 = add i64 %1025, -4
  %325 = add i64 %2216, 19
  store i64 %325, i64* %PC, align 8
  %326 = inttoptr i64 %324 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = zext i32 %327 to i64
  store i64 %328, i64* %RSI, align 8, !tbaa !2428
  %329 = add i64 %2216, 23
  store i64 %329, i64* %PC, align 8
  %330 = load i32, i32* %1028, align 4
  %331 = sext i32 %327 to i64
  %332 = sext i32 %330 to i64
  %333 = mul nsw i64 %332, %331
  %334 = and i64 %333, 4294967295
  store i64 %334, i64* %RSI, align 8, !tbaa !2428
  %335 = trunc i64 %333 to i32
  %336 = add i32 %335, %322
  %337 = zext i32 %336 to i64
  store i64 %337, i64* %RDX, align 8, !tbaa !2428
  %338 = icmp ult i32 %336, %322
  %339 = icmp ult i32 %336, %335
  %340 = or i1 %338, %339
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %16, align 1, !tbaa !2432
  %342 = and i32 %336, 255
  %343 = tail call i32 @llvm.ctpop.i32(i32 %342) #12
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  store i8 %346, i8* %23, align 1, !tbaa !2446
  %347 = xor i64 %333, %323
  %348 = trunc i64 %347 to i32
  %349 = xor i32 %348, %336
  %350 = lshr i32 %349, 4
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  store i8 %352, i8* %29, align 1, !tbaa !2447
  %353 = icmp eq i32 %336, 0
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %32, align 1, !tbaa !2448
  %355 = lshr i32 %336, 31
  %356 = trunc i32 %355 to i8
  store i8 %356, i8* %35, align 1, !tbaa !2449
  %357 = lshr i32 %322, 31
  %358 = lshr i32 %335, 31
  %359 = xor i32 %355, %357
  %360 = xor i32 %355, %358
  %361 = add nuw nsw i32 %359, %360
  %362 = icmp eq i32 %361, 2
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %41, align 1, !tbaa !2450
  %364 = add i64 %1025, -2692
  %365 = add i64 %2216, 31
  store i64 %365, i64* %PC, align 8
  %366 = inttoptr i64 %364 to i32*
  store i32 255, i32* %366, align 4
  %367 = load i32, i32* %EDX, align 4
  %368 = zext i32 %367 to i64
  %369 = load i64, i64* %PC, align 8
  store i64 %368, i64* %RAX, align 8, !tbaa !2428
  %370 = sext i32 %367 to i64
  %371 = lshr i64 %370, 32
  store i64 %371, i64* %55, align 8, !tbaa !2428
  %372 = load i64, i64* %RBP, align 8
  %373 = add i64 %372, -2692
  %374 = add i64 %369, 9
  store i64 %374, i64* %PC, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %RSI, align 8, !tbaa !2428
  %378 = add i64 %369, 11
  store i64 %378, i64* %PC, align 8
  %379 = sext i32 %376 to i64
  %380 = shl nuw i64 %371, 32
  %381 = or i64 %380, %368
  %382 = sdiv i64 %381, %379
  %383 = shl i64 %382, 32
  %384 = ashr exact i64 %383, 32
  %385 = icmp eq i64 %382, %384
  br i1 %385, label %388, label %386

; <label>:386:                                    ; preds = %block_4009a5
  %387 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %378, %struct.Memory* %MEMORY.10) #13
  %.pre176 = load i32, i32* %EDX, align 4
  %.pre177 = load i64, i64* %PC, align 8
  %.pre178 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8

; <label>:388:                                    ; preds = %block_4009a5
  %389 = srem i64 %381, %379
  %390 = and i64 %382, 4294967295
  store i64 %390, i64* %RAX, align 8, !tbaa !2428
  %391 = and i64 %389, 4294967295
  store i64 %391, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %392 = trunc i64 %389 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8: ; preds = %388, %386
  %393 = phi i64 [ %.pre178, %386 ], [ %372, %388 ]
  %394 = phi i64 [ %.pre177, %386 ], [ %378, %388 ]
  %395 = phi i32 [ %.pre176, %386 ], [ %392, %388 ]
  %396 = phi %struct.Memory* [ %387, %386 ], [ %MEMORY.10, %388 ]
  %397 = sext i32 %395 to i64
  store i64 %397, i64* %RCX, align 8, !tbaa !2428
  %398 = shl nsw i64 %397, 2
  %399 = add i64 %398, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %400 = add i64 %394, 10
  store i64 %400, i64* %PC, align 8
  %401 = inttoptr i64 %399 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RDX, align 8, !tbaa !2428
  %404 = add i64 %393, -4
  %405 = add i64 %394, 14
  store i64 %405, i64* %PC, align 8
  %406 = inttoptr i64 %404 to i32*
  %407 = load i32, i32* %406, align 4
  %408 = sext i32 %407 to i64
  store i64 %408, i64* %RCX, align 8, !tbaa !2428
  %409 = shl nsw i64 %408, 2
  %410 = add nsw i64 %409, -1488
  %411 = add i64 %410, %393
  %412 = add i64 %394, 21
  store i64 %412, i64* %PC, align 8
  %413 = inttoptr i64 %411 to i32*
  %414 = load i32, i32* %413, align 4
  %415 = xor i32 %414, %402
  %416 = zext i32 %415 to i64
  store i64 %416, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %417 = and i32 %415, 255
  %418 = tail call i32 @llvm.ctpop.i32(i32 %417) #12
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = xor i8 %420, 1
  store i8 %421, i8* %23, align 1, !tbaa !2446
  %422 = icmp eq i32 %415, 0
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %32, align 1, !tbaa !2448
  %424 = lshr i32 %415, 31
  %425 = trunc i32 %424 to i8
  store i8 %425, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %426 = add i64 %393, -1488
  %427 = add i64 %426, %409
  %428 = add i64 %394, 28
  store i64 %428, i64* %PC, align 8
  %429 = inttoptr i64 %427 to i32*
  store i32 %415, i32* %429, align 4
  %.pre179 = load i64, i64* %PC, align 8
  %.pre180 = load i64, i64* %RBP, align 8
  br label %block_4009eb

block_400bd7:                                     ; preds = %block_400bbb
  %430 = load i64, i64* %RBP, align 8
  %431 = add i64 %430, -16
  %432 = add i64 %945, 4
  store i64 %432, i64* %PC, align 8
  %433 = inttoptr i64 %431 to i32*
  %434 = load i32, i32* %433, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %435 = and i32 %434, 255
  %436 = tail call i32 @llvm.ctpop.i32(i32 %435) #12
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  %439 = xor i8 %438, 1
  store i8 %439, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %440 = icmp eq i32 %434, 0
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %32, align 1, !tbaa !2448
  %442 = lshr i32 %434, 31
  %443 = trunc i32 %442 to i8
  store i8 %443, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %444 = xor i1 %440, true
  %445 = icmp eq i8 %443, 0
  %446 = and i1 %445, %444
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %AL, align 1, !tbaa !2451
  %448 = add i64 %430, -2693
  %449 = add i64 %945, 13
  store i64 %449, i64* %PC, align 8
  %450 = inttoptr i64 %448 to i8*
  store i8 %447, i8* %450, align 1
  %.pre186 = load i64, i64* %PC, align 8
  br label %block_400be4

block_400dd4:                                     ; preds = %block_400d13
  %451 = add i64 %3122, 7
  store i64 %451, i64* %PC, align 8
  store i32 0, i32* %3082, align 4
  %.pre197 = load i64, i64* %PC, align 8
  br label %block_400ddb

block_4017d1:                                     ; preds = %block_40179c
  %452 = add i64 %803, 15
  store i64 %452, i64* %PC, align 8
  %453 = inttoptr i64 %808 to i32*
  store i32 0, i32* %453, align 4
  %.pre254 = load i64, i64* %PC, align 8
  br label %block_4017e0

block_400c61:                                     ; preds = %block_400c52
  %454 = add i64 %5446, 5
  store i64 %454, i64* %PC, align 8, !tbaa !2428
  br label %block_400c66

block_400bf2:                                     ; preds = %block_400be4
  %455 = add i64 %1962, 23
  store i64 %455, i64* %PC, align 8
  %456 = inttoptr i64 %1963 to i32*
  %457 = load i32, i32* %456, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %458 = and i32 %457, 255
  %459 = tail call i32 @llvm.ctpop.i32(i32 %458) #12
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  %462 = xor i8 %461, 1
  store i8 %462, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %463 = icmp eq i32 %457, 0
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %32, align 1, !tbaa !2448
  %465 = lshr i32 %457, 31
  %466 = trunc i32 %465 to i8
  store i8 %466, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %467 = icmp ne i8 %466, 0
  %468 = or i1 %463, %467
  %.v284 = select i1 %468, i64 116, i64 29
  %469 = add i64 %1962, %.v284
  store i64 %469, i64* %PC, align 8, !tbaa !2428
  br i1 %468, label %block_400c66, label %block_400c0f

block_4013c6:                                     ; preds = %block_4013a1
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %470 = load i64, i64* %RBP, align 8
  %471 = add i64 %470, -1168
  store i64 %471, i64* %RCX, align 8, !tbaa !2428
  %472 = add i64 %470, -12
  %473 = add i64 %4752, 16
  store i64 %473, i64* %PC, align 8
  %474 = inttoptr i64 %472 to i32*
  %475 = load i32, i32* %474, align 4
  %476 = sext i32 %475 to i64
  %477 = shl nsw i64 %476, 6
  store i64 %477, i64* %RDX, align 8, !tbaa !2428
  %478 = add i64 %477, %471
  store i64 %478, i64* %RCX, align 8, !tbaa !2428
  %479 = icmp ult i64 %478, %471
  %480 = icmp ult i64 %478, %477
  %481 = or i1 %479, %480
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %16, align 1, !tbaa !2432
  %483 = trunc i64 %478 to i32
  %484 = and i32 %483, 255
  %485 = tail call i32 @llvm.ctpop.i32(i32 %484) #12
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  %488 = xor i8 %487, 1
  store i8 %488, i8* %23, align 1, !tbaa !2446
  %489 = xor i64 %471, %478
  %490 = lshr i64 %489, 4
  %491 = trunc i64 %490 to i8
  %492 = and i8 %491, 1
  store i8 %492, i8* %29, align 1, !tbaa !2447
  %493 = icmp eq i64 %478, 0
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %32, align 1, !tbaa !2448
  %495 = lshr i64 %478, 63
  %496 = trunc i64 %495 to i8
  store i8 %496, i8* %35, align 1, !tbaa !2449
  %497 = lshr i64 %471, 63
  %498 = lshr i64 %476, 57
  %499 = and i64 %498, 1
  %500 = xor i64 %495, %497
  %501 = xor i64 %495, %499
  %502 = add nuw nsw i64 %500, %501
  %503 = icmp eq i64 %502, 2
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %41, align 1, !tbaa !2450
  %505 = add i64 %470, -4
  %506 = add i64 %4752, 26
  store i64 %506, i64* %PC, align 8
  %507 = inttoptr i64 %505 to i32*
  %508 = load i32, i32* %507, align 4
  %509 = zext i32 %508 to i64
  store i64 %509, i64* %RSI, align 8, !tbaa !2428
  %510 = add i64 %470, -8
  %511 = add i64 %4752, 29
  store i64 %511, i64* %PC, align 8
  %512 = inttoptr i64 %510 to i32*
  %513 = load i32, i32* %512, align 4
  %514 = sub i32 %508, %513
  %515 = zext i32 %514 to i64
  store i64 %515, i64* %RSI, align 8, !tbaa !2428
  %516 = icmp ult i32 %508, %513
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %16, align 1, !tbaa !2432
  %518 = and i32 %514, 255
  %519 = tail call i32 @llvm.ctpop.i32(i32 %518) #12
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  %522 = xor i8 %521, 1
  store i8 %522, i8* %23, align 1, !tbaa !2446
  %523 = xor i32 %513, %508
  %524 = xor i32 %523, %514
  %525 = lshr i32 %524, 4
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  store i8 %527, i8* %29, align 1, !tbaa !2447
  %528 = icmp eq i32 %514, 0
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %32, align 1, !tbaa !2448
  %530 = lshr i32 %514, 31
  %531 = trunc i32 %530 to i8
  store i8 %531, i8* %35, align 1, !tbaa !2449
  %532 = lshr i32 %508, 31
  %533 = lshr i32 %513, 31
  %534 = xor i32 %533, %532
  %535 = xor i32 %530, %532
  %536 = add nuw nsw i32 %535, %534
  %537 = icmp eq i32 %536, 2
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %41, align 1, !tbaa !2450
  %539 = sext i32 %514 to i64
  store i64 %539, i64* %RDX, align 8, !tbaa !2428
  %540 = shl nsw i64 %539, 2
  %541 = add i64 %478, %540
  %542 = add i64 %4752, 35
  store i64 %542, i64* %PC, align 8
  %543 = inttoptr i64 %541 to i32*
  %544 = load i32, i32* %543, align 4
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %RSI, align 8, !tbaa !2428
  %546 = load i64, i64* %RBP, align 8
  %547 = add i64 %546, -8
  %548 = add i64 %4752, 39
  store i64 %548, i64* %PC, align 8
  %549 = inttoptr i64 %547 to i32*
  %550 = load i32, i32* %549, align 4
  %551 = sext i32 %550 to i64
  store i64 %551, i64* %RCX, align 8, !tbaa !2428
  %552 = shl nsw i64 %551, 2
  %553 = add nsw i64 %552, -1488
  %554 = add i64 %553, %546
  %555 = add i64 %4752, 46
  store i64 %555, i64* %PC, align 8
  %556 = inttoptr i64 %554 to i32*
  %557 = load i32, i32* %556, align 4
  %558 = add i32 %557, %544
  %559 = zext i32 %558 to i64
  store i64 %559, i64* %RSI, align 8, !tbaa !2428
  %560 = icmp ult i32 %558, %544
  %561 = icmp ult i32 %558, %557
  %562 = or i1 %560, %561
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %16, align 1, !tbaa !2432
  %564 = and i32 %558, 255
  %565 = tail call i32 @llvm.ctpop.i32(i32 %564) #12
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 1
  %568 = xor i8 %567, 1
  store i8 %568, i8* %23, align 1, !tbaa !2446
  %569 = xor i32 %557, %544
  %570 = xor i32 %569, %558
  %571 = lshr i32 %570, 4
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  store i8 %573, i8* %29, align 1, !tbaa !2447
  %574 = icmp eq i32 %558, 0
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %32, align 1, !tbaa !2448
  %576 = lshr i32 %558, 31
  %577 = trunc i32 %576 to i8
  store i8 %577, i8* %35, align 1, !tbaa !2449
  %578 = lshr i32 %544, 31
  %579 = lshr i32 %557, 31
  %580 = xor i32 %576, %578
  %581 = xor i32 %576, %579
  %582 = add nuw nsw i32 %580, %581
  %583 = icmp eq i32 %582, 2
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %41, align 1, !tbaa !2450
  %585 = add i64 %546, -2720
  %586 = load i32, i32* %EAX, align 4
  %587 = add i64 %4752, 52
  store i64 %587, i64* %PC, align 8
  %588 = inttoptr i64 %585 to i32*
  store i32 %586, i32* %588, align 4
  %589 = load i32, i32* %ESI, align 4
  %590 = zext i32 %589 to i64
  %591 = load i64, i64* %PC, align 8
  store i64 %590, i64* %RAX, align 8, !tbaa !2428
  %592 = sext i32 %589 to i64
  %593 = lshr i64 %592, 32
  store i64 %593, i64* %55, align 8, !tbaa !2428
  %594 = load i64, i64* %RBP, align 8
  %595 = add i64 %594, -2720
  %596 = add i64 %591, 9
  store i64 %596, i64* %PC, align 8
  %597 = inttoptr i64 %595 to i32*
  %598 = load i32, i32* %597, align 4
  %599 = zext i32 %598 to i64
  store i64 %599, i64* %RSI, align 8, !tbaa !2428
  %600 = add i64 %591, 11
  store i64 %600, i64* %PC, align 8
  %601 = sext i32 %598 to i64
  %602 = shl nuw i64 %593, 32
  %603 = or i64 %602, %590
  %604 = sdiv i64 %603, %601
  %605 = shl i64 %604, 32
  %606 = ashr exact i64 %605, 32
  %607 = icmp eq i64 %604, %606
  br i1 %607, label %610, label %608

; <label>:608:                                    ; preds = %block_4013c6
  %609 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %600, %struct.Memory* %MEMORY.42) #13
  %.pre225 = load i32, i32* %EDX, align 4
  %.pre226 = load i64, i64* %PC, align 8
  %.pre227 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7

; <label>:610:                                    ; preds = %block_4013c6
  %611 = srem i64 %603, %601
  %612 = and i64 %604, 4294967295
  store i64 %612, i64* %RAX, align 8, !tbaa !2428
  %613 = and i64 %611, 4294967295
  store i64 %613, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %614 = trunc i64 %611 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7: ; preds = %610, %608
  %615 = phi i64 [ %.pre227, %608 ], [ %594, %610 ]
  %616 = phi i64 [ %.pre226, %608 ], [ %600, %610 ]
  %617 = phi i32 [ %.pre225, %608 ], [ %614, %610 ]
  %618 = phi %struct.Memory* [ %609, %608 ], [ %MEMORY.42, %610 ]
  %619 = sext i32 %617 to i64
  store i64 %619, i64* %RCX, align 8, !tbaa !2428
  %620 = shl nsw i64 %619, 2
  %621 = add i64 %620, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %622 = add i64 %616, 10
  store i64 %622, i64* %PC, align 8
  %623 = inttoptr i64 %621 to i32*
  %624 = load i32, i32* %623, align 4
  %625 = zext i32 %624 to i64
  store i64 %625, i64* %RDX, align 8, !tbaa !2428
  %626 = add i64 %615, -4
  %627 = add i64 %616, 14
  store i64 %627, i64* %PC, align 8
  %628 = inttoptr i64 %626 to i32*
  %629 = load i32, i32* %628, align 4
  %630 = sext i32 %629 to i64
  store i64 %630, i64* %RCX, align 8, !tbaa !2428
  %631 = shl nsw i64 %630, 2
  %632 = add nsw i64 %631, -1616
  %633 = add i64 %632, %615
  %634 = add i64 %616, 21
  store i64 %634, i64* %PC, align 8
  %635 = inttoptr i64 %633 to i32*
  %636 = load i32, i32* %635, align 4
  %637 = xor i32 %636, %624
  %638 = zext i32 %637 to i64
  store i64 %638, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %639 = and i32 %637, 255
  %640 = tail call i32 @llvm.ctpop.i32(i32 %639) #12
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  %643 = xor i8 %642, 1
  store i8 %643, i8* %23, align 1, !tbaa !2446
  %644 = icmp eq i32 %637, 0
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %32, align 1, !tbaa !2448
  %646 = lshr i32 %637, 31
  %647 = trunc i32 %646 to i8
  store i8 %647, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %648 = add i64 %615, -1616
  %649 = add i64 %648, %631
  %650 = add i64 %616, 28
  store i64 %650, i64* %PC, align 8
  %651 = inttoptr i64 %649 to i32*
  store i32 %637, i32* %651, align 4
  %.pre228 = load i64, i64* %PC, align 8
  br label %block_401421

block_400fc0:                                     ; preds = %block_400f0f, %block_400f29, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5
  %652 = phi i64 [ %2064, %block_400f0f ], [ %1701, %block_400f29 ], [ %.pre204, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5 ]
  %653 = phi i64 [ %1812, %block_400f0f ], [ %1721, %block_400f29 ], [ %.pre203, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.16, %block_400f0f ], [ %MEMORY.16, %block_400f29 ], [ %1403, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5 ]
  %654 = add i64 %652, -4
  %655 = add i64 %653, 8
  store i64 %655, i64* %PC, align 8
  %656 = inttoptr i64 %654 to i32*
  %657 = load i32, i32* %656, align 4
  %658 = add i32 %657, 1
  %659 = zext i32 %658 to i64
  store i64 %659, i64* %RAX, align 8, !tbaa !2428
  %660 = icmp eq i32 %657, -1
  %661 = icmp eq i32 %658, 0
  %662 = or i1 %660, %661
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %16, align 1, !tbaa !2432
  %664 = and i32 %658, 255
  %665 = tail call i32 @llvm.ctpop.i32(i32 %664) #12
  %666 = trunc i32 %665 to i8
  %667 = and i8 %666, 1
  %668 = xor i8 %667, 1
  store i8 %668, i8* %23, align 1, !tbaa !2446
  %669 = xor i32 %658, %657
  %670 = lshr i32 %669, 4
  %671 = trunc i32 %670 to i8
  %672 = and i8 %671, 1
  store i8 %672, i8* %29, align 1, !tbaa !2447
  %673 = zext i1 %661 to i8
  store i8 %673, i8* %32, align 1, !tbaa !2448
  %674 = lshr i32 %658, 31
  %675 = trunc i32 %674 to i8
  store i8 %675, i8* %35, align 1, !tbaa !2449
  %676 = lshr i32 %657, 31
  %677 = xor i32 %674, %676
  %678 = add nuw nsw i32 %677, %674
  %679 = icmp eq i32 %678, 2
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %41, align 1, !tbaa !2450
  %681 = add i64 %653, 14
  store i64 %681, i64* %PC, align 8
  store i32 %658, i32* %656, align 4
  %682 = load i64, i64* %PC, align 8
  %683 = add i64 %682, -216
  store i64 %683, i64* %PC, align 8, !tbaa !2428
  br label %block_400ef6

block_4011ba:                                     ; preds = %block_4011b0
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %684 = add i64 %1844, -4
  %685 = add i64 %3136, 8
  store i64 %685, i64* %PC, align 8
  %686 = inttoptr i64 %684 to i32*
  %687 = load i32, i32* %686, align 4
  %688 = zext i32 %687 to i64
  store i64 %688, i64* %RCX, align 8, !tbaa !2428
  %689 = add i64 %1844, -1492
  %690 = add i64 %3136, 15
  store i64 %690, i64* %PC, align 8
  %691 = inttoptr i64 %689 to i32*
  %692 = load i32, i32* %691, align 4
  %693 = sext i32 %692 to i64
  store i64 %693, i64* %RDX, align 8, !tbaa !2428
  %694 = shl nsw i64 %693, 2
  %695 = add i64 %1844, -1536
  %696 = add i64 %695, %694
  %697 = add i64 %3136, 22
  store i64 %697, i64* %PC, align 8
  %698 = inttoptr i64 %696 to i32*
  store i32 %687, i32* %698, align 4
  %699 = load i64, i64* %RAX, align 8
  %700 = load i64, i64* %RBP, align 8
  %701 = add i64 %700, -4
  %702 = load i64, i64* %PC, align 8
  %703 = add i64 %702, 3
  store i64 %703, i64* %PC, align 8
  %704 = trunc i64 %699 to i32
  %705 = inttoptr i64 %701 to i32*
  %706 = load i32, i32* %705, align 4
  %707 = sub i32 %704, %706
  %708 = zext i32 %707 to i64
  store i64 %708, i64* %RAX, align 8, !tbaa !2428
  %709 = icmp ult i32 %704, %706
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %16, align 1, !tbaa !2432
  %711 = and i32 %707, 255
  %712 = tail call i32 @llvm.ctpop.i32(i32 %711) #12
  %713 = trunc i32 %712 to i8
  %714 = and i8 %713, 1
  %715 = xor i8 %714, 1
  store i8 %715, i8* %23, align 1, !tbaa !2446
  %716 = xor i32 %706, %704
  %717 = xor i32 %716, %707
  %718 = lshr i32 %717, 4
  %719 = trunc i32 %718 to i8
  %720 = and i8 %719, 1
  store i8 %720, i8* %29, align 1, !tbaa !2447
  %721 = icmp eq i32 %707, 0
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %32, align 1, !tbaa !2448
  %723 = lshr i32 %707, 31
  %724 = trunc i32 %723 to i8
  store i8 %724, i8* %35, align 1, !tbaa !2449
  %725 = lshr i32 %704, 31
  %726 = lshr i32 %706, 31
  %727 = xor i32 %726, %725
  %728 = xor i32 %723, %725
  %729 = add nuw nsw i32 %728, %727
  %730 = icmp eq i32 %729, 2
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %41, align 1, !tbaa !2450
  %732 = add i64 %700, -1492
  %733 = add i64 %702, 10
  store i64 %733, i64* %PC, align 8
  %734 = inttoptr i64 %732 to i32*
  %735 = load i32, i32* %734, align 4
  %736 = sext i32 %735 to i64
  store i64 %736, i64* %RDX, align 8, !tbaa !2428
  %737 = shl nsw i64 %736, 2
  %738 = add i64 %700, -1568
  %739 = add i64 %738, %737
  %740 = add i64 %702, 17
  store i64 %740, i64* %PC, align 8
  %741 = inttoptr i64 %739 to i32*
  store i32 %707, i32* %741, align 4
  %742 = load i64, i64* %RBP, align 8
  %743 = add i64 %742, -1492
  %744 = load i64, i64* %PC, align 8
  %745 = add i64 %744, 6
  store i64 %745, i64* %PC, align 8
  %746 = inttoptr i64 %743 to i32*
  %747 = load i32, i32* %746, align 4
  %748 = add i32 %747, 1
  %749 = zext i32 %748 to i64
  store i64 %749, i64* %RAX, align 8, !tbaa !2428
  %750 = icmp eq i32 %747, -1
  %751 = icmp eq i32 %748, 0
  %752 = or i1 %750, %751
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %16, align 1, !tbaa !2432
  %754 = and i32 %748, 255
  %755 = tail call i32 @llvm.ctpop.i32(i32 %754) #12
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  %758 = xor i8 %757, 1
  store i8 %758, i8* %23, align 1, !tbaa !2446
  %759 = xor i32 %748, %747
  %760 = lshr i32 %759, 4
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  store i8 %762, i8* %29, align 1, !tbaa !2447
  %763 = zext i1 %751 to i8
  store i8 %763, i8* %32, align 1, !tbaa !2448
  %764 = lshr i32 %748, 31
  %765 = trunc i32 %764 to i8
  store i8 %765, i8* %35, align 1, !tbaa !2449
  %766 = lshr i32 %747, 31
  %767 = xor i32 %764, %766
  %768 = add nuw nsw i32 %767, %764
  %769 = icmp eq i32 %768, 2
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %41, align 1, !tbaa !2450
  %771 = add i64 %744, 15
  store i64 %771, i64* %PC, align 8
  store i32 %748, i32* %746, align 4
  %.pre217 = load i64, i64* %PC, align 8
  %.pre218 = load i64, i64* %RBP, align 8
  br label %block_4011f0

block_40179c:                                     ; preds = %block_40178f
  %772 = add i64 %3167, 4
  store i64 %772, i64* %PC, align 8
  %773 = load i32, i32* %3141, align 4
  %774 = sext i32 %773 to i64
  store i64 %774, i64* %RAX, align 8, !tbaa !2428
  %775 = shl nsw i64 %774, 2
  %776 = add i64 %775, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %777 = add i64 %3167, 12
  store i64 %777, i64* %PC, align 8
  %778 = inttoptr i64 %776 to i32*
  %779 = load i32, i32* %778, align 4
  %780 = add i32 %779, 1
  %781 = icmp ne i32 %779, -1
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %16, align 1, !tbaa !2432
  %783 = and i32 %780, 255
  %784 = tail call i32 @llvm.ctpop.i32(i32 %783) #12
  %785 = trunc i32 %784 to i8
  %786 = and i8 %785, 1
  %787 = xor i8 %786, 1
  store i8 %787, i8* %23, align 1, !tbaa !2446
  %788 = xor i32 %779, 16
  %789 = xor i32 %788, %780
  %790 = lshr i32 %789, 4
  %791 = trunc i32 %790 to i8
  %792 = and i8 %791, 1
  store i8 %792, i8* %29, align 1, !tbaa !2447
  %793 = icmp eq i32 %780, 0
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %32, align 1, !tbaa !2448
  %795 = lshr i32 %780, 31
  %796 = trunc i32 %795 to i8
  store i8 %796, i8* %35, align 1, !tbaa !2449
  %797 = lshr i32 %779, 31
  %798 = xor i32 %797, 1
  %799 = xor i32 %795, %797
  %800 = add nuw nsw i32 %799, %798
  %801 = icmp eq i32 %800, 2
  %802 = zext i1 %801 to i8
  store i8 %802, i8* %41, align 1, !tbaa !2450
  %.v270 = select i1 %793, i64 53, i64 18
  %803 = add i64 %3167, %.v270
  %804 = add i64 %803, 4
  store i64 %804, i64* %PC, align 8
  %805 = load i32, i32* %3141, align 4
  %806 = sext i32 %805 to i64
  store i64 %806, i64* %RAX, align 8, !tbaa !2428
  %807 = shl nsw i64 %806, 2
  %808 = add i64 %807, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  br i1 %793, label %block_4017d1, label %block_4017ae

block_401377:                                     ; preds = %block_401363, %block_401332, %block_4012dd
  %.sink25 = phi i64 [ 124, %block_4012dd ], [ 5, %block_401332 ], [ 5, %block_401363 ]
  %809 = load i64, i64* %PC, align 8
  %810 = add i64 %809, %.sink25
  store i64 %810, i64* %PC, align 8, !tbaa !2428
  br label %block_40137c

block_400bb2:                                     ; preds = %block_400ae9
  %811 = add i64 %2568, 3
  store i64 %811, i64* %PC, align 8
  %812 = load i32, i32* %2536, align 4
  %813 = add i32 %812, -1
  %814 = zext i32 %813 to i64
  store i64 %814, i64* %RAX, align 8, !tbaa !2428
  %815 = icmp eq i32 %812, 0
  %816 = zext i1 %815 to i8
  store i8 %816, i8* %16, align 1, !tbaa !2432
  %817 = and i32 %813, 255
  %818 = tail call i32 @llvm.ctpop.i32(i32 %817) #12
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  %821 = xor i8 %820, 1
  store i8 %821, i8* %23, align 1, !tbaa !2446
  %822 = xor i32 %813, %812
  %823 = lshr i32 %822, 4
  %824 = trunc i32 %823 to i8
  %825 = and i8 %824, 1
  store i8 %825, i8* %29, align 1, !tbaa !2447
  %826 = icmp eq i32 %813, 0
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %32, align 1, !tbaa !2448
  %828 = lshr i32 %813, 31
  %829 = trunc i32 %828 to i8
  store i8 %829, i8* %35, align 1, !tbaa !2449
  %830 = lshr i32 %812, 31
  %831 = xor i32 %828, %830
  %832 = add nuw nsw i32 %831, %830
  %833 = icmp eq i32 %832, 2
  %834 = zext i1 %833 to i8
  store i8 %834, i8* %41, align 1, !tbaa !2450
  %835 = add i64 %2532, -16
  %836 = add i64 %2568, 9
  store i64 %836, i64* %PC, align 8
  %837 = inttoptr i64 %835 to i32*
  store i32 %813, i32* %837, align 4
  %.pre185 = load i64, i64* %PC, align 8
  br label %block_400bbb

block_40176b:                                     ; preds = %block_401739, %block_40175c
  %838 = phi i64 [ %1073, %block_401739 ], [ %.pre252, %block_40175c ]
  %839 = load i64, i64* %RBP, align 8
  %840 = add i64 %839, -4
  %841 = add i64 %838, 8
  store i64 %841, i64* %PC, align 8
  %842 = inttoptr i64 %840 to i32*
  %843 = load i32, i32* %842, align 4
  %844 = add i32 %843, 1
  %845 = zext i32 %844 to i64
  store i64 %845, i64* %RAX, align 8, !tbaa !2428
  %846 = icmp eq i32 %843, -1
  %847 = icmp eq i32 %844, 0
  %848 = or i1 %846, %847
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %16, align 1, !tbaa !2432
  %850 = and i32 %844, 255
  %851 = tail call i32 @llvm.ctpop.i32(i32 %850) #12
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  %854 = xor i8 %853, 1
  store i8 %854, i8* %23, align 1, !tbaa !2446
  %855 = xor i32 %844, %843
  %856 = lshr i32 %855, 4
  %857 = trunc i32 %856 to i8
  %858 = and i8 %857, 1
  store i8 %858, i8* %29, align 1, !tbaa !2447
  %859 = zext i1 %847 to i8
  store i8 %859, i8* %32, align 1, !tbaa !2448
  %860 = lshr i32 %844, 31
  %861 = trunc i32 %860 to i8
  store i8 %861, i8* %35, align 1, !tbaa !2449
  %862 = lshr i32 %843, 31
  %863 = xor i32 %860, %862
  %864 = add nuw nsw i32 %863, %860
  %865 = icmp eq i32 %864, 2
  %866 = zext i1 %865 to i8
  store i8 %866, i8* %41, align 1, !tbaa !2450
  %867 = add i64 %838, 14
  store i64 %867, i64* %PC, align 8
  store i32 %844, i32* %842, align 4
  %868 = load i64, i64* %PC, align 8
  %869 = add i64 %868, -95
  store i64 %869, i64* %PC, align 8, !tbaa !2428
  br label %block_40171a

block_400966:                                     ; preds = %block_400a1a, %block_400940
  %870 = phi i64 [ %.pre, %block_400940 ], [ %6036, %block_400a1a ]
  %MEMORY.5 = phi %struct.Memory* [ %2, %block_400940 ], [ %MEMORY.10, %block_400a1a ]
  %871 = load i64, i64* %RBP, align 8
  %872 = add i64 %871, -4
  %873 = add i64 %870, 4
  store i64 %873, i64* %PC, align 8
  %874 = inttoptr i64 %872 to i32*
  %875 = load i32, i32* %874, align 4
  %876 = add i32 %875, -16
  %877 = icmp ult i32 %875, 16
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %16, align 1, !tbaa !2432
  %879 = and i32 %876, 255
  %880 = tail call i32 @llvm.ctpop.i32(i32 %879) #12
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  %883 = xor i8 %882, 1
  store i8 %883, i8* %23, align 1, !tbaa !2446
  %884 = xor i32 %875, 16
  %885 = xor i32 %884, %876
  %886 = lshr i32 %885, 4
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  store i8 %888, i8* %29, align 1, !tbaa !2447
  %889 = icmp eq i32 %876, 0
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %32, align 1, !tbaa !2448
  %891 = lshr i32 %876, 31
  %892 = trunc i32 %891 to i8
  store i8 %892, i8* %35, align 1, !tbaa !2449
  %893 = lshr i32 %875, 31
  %894 = xor i32 %891, %893
  %895 = add nuw nsw i32 %894, %893
  %896 = icmp eq i32 %895, 2
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %41, align 1, !tbaa !2450
  %898 = icmp ne i8 %892, 0
  %899 = xor i1 %898, %896
  %.demorgan = or i1 %889, %899
  %.v280 = select i1 %.demorgan, i64 10, i64 224
  %900 = add i64 %870, %.v280
  store i64 %900, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400970, label %block_400a46

block_400bbb:                                     ; preds = %block_400bf7, %block_400bb2
  %901 = phi i64 [ %1842, %block_400bf7 ], [ %.pre185, %block_400bb2 ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 1, i8* %23, align 1, !tbaa !2446
  store i8 1, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %CL, align 1, !tbaa !2451
  %902 = load i64, i64* %RBP, align 8
  %903 = add i64 %902, -16
  %904 = add i64 %901, 8
  store i64 %904, i64* %PC, align 8
  %905 = inttoptr i64 %903 to i32*
  %906 = load i32, i32* %905, align 4
  %907 = sext i32 %906 to i64
  store i64 %907, i64* %RDX, align 8, !tbaa !2428
  %908 = shl nsw i64 %907, 2
  %909 = add i64 %902, -1248
  %910 = add i64 %909, %908
  %911 = add i64 %901, 16
  store i64 %911, i64* %PC, align 8
  %912 = inttoptr i64 %910 to i32*
  %913 = load i32, i32* %912, align 4
  %914 = add i32 %913, 1
  %915 = icmp ne i32 %913, -1
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %16, align 1, !tbaa !2432
  %917 = and i32 %914, 255
  %918 = tail call i32 @llvm.ctpop.i32(i32 %917) #12
  %919 = trunc i32 %918 to i8
  %920 = and i8 %919, 1
  %921 = xor i8 %920, 1
  store i8 %921, i8* %23, align 1, !tbaa !2446
  %922 = xor i32 %913, 16
  %923 = xor i32 %922, %914
  %924 = lshr i32 %923, 4
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  store i8 %926, i8* %29, align 1, !tbaa !2447
  %927 = icmp eq i32 %914, 0
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %32, align 1, !tbaa !2448
  %929 = lshr i32 %914, 31
  %930 = trunc i32 %929 to i8
  store i8 %930, i8* %35, align 1, !tbaa !2449
  %931 = lshr i32 %913, 31
  %932 = xor i32 %931, 1
  %933 = xor i32 %929, %931
  %934 = add nuw nsw i32 %933, %932
  %935 = icmp eq i32 %934, 2
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %41, align 1, !tbaa !2450
  %937 = add i64 %902, -2693
  %938 = add i64 %901, 22
  store i64 %938, i64* %PC, align 8
  %939 = inttoptr i64 %937 to i8*
  store i8 0, i8* %939, align 1
  %940 = load i64, i64* %PC, align 8
  %941 = add i64 %940, 19
  %942 = add i64 %940, 6
  %943 = load i8, i8* %32, align 1, !tbaa !2448
  %944 = icmp eq i8 %943, 0
  %945 = select i1 %944, i64 %941, i64 %942
  store i64 %945, i64* %PC, align 8, !tbaa !2428
  br i1 %944, label %block_400be4, label %block_400bd7

block_40138f:                                     ; preds = %block_401383
  %946 = load i32, i32* %5198, align 4
  %947 = sext i32 %946 to i64
  store i64 %947, i64* %RAX, align 8, !tbaa !2428
  %948 = shl nsw i64 %947, 2
  %949 = add i64 %5195, -1488
  %950 = add i64 %949, %948
  %951 = add i64 %5231, 12
  store i64 %951, i64* %PC, align 8
  %952 = inttoptr i64 %950 to i32*
  %953 = load i32, i32* %952, align 4
  %954 = add i32 %953, 1
  %955 = icmp ne i32 %953, -1
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %16, align 1, !tbaa !2432
  %957 = and i32 %954, 255
  %958 = tail call i32 @llvm.ctpop.i32(i32 %957) #12
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  %961 = xor i8 %960, 1
  store i8 %961, i8* %23, align 1, !tbaa !2446
  %962 = xor i32 %953, 16
  %963 = xor i32 %962, %954
  %964 = lshr i32 %963, 4
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  store i8 %966, i8* %29, align 1, !tbaa !2447
  %967 = icmp eq i32 %954, 0
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %32, align 1, !tbaa !2448
  %969 = lshr i32 %954, 31
  %970 = trunc i32 %969 to i8
  store i8 %970, i8* %35, align 1, !tbaa !2449
  %971 = lshr i32 %953, 31
  %972 = xor i32 %971, 1
  %973 = xor i32 %969, %971
  %974 = add nuw nsw i32 %973, %972
  %975 = icmp eq i32 %974, 2
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %41, align 1, !tbaa !2450
  %.v306 = select i1 %967, i64 146, i64 18
  %977 = add i64 %5231, %.v306
  store i64 %977, i64* %PC, align 8, !tbaa !2428
  br i1 %967, label %block_401421, label %block_4013a1

block_401363:                                     ; preds = %block_401312, %block_401300
  %978 = phi i64 [ %6338, %block_401300 ], [ %4657, %block_401312 ]
  %979 = phi i64 [ %6303, %block_401300 ], [ %.pre222, %block_401312 ]
  %980 = add i64 %979, -4
  %981 = add i64 %978, 4
  store i64 %981, i64* %PC, align 8
  %982 = inttoptr i64 %980 to i32*
  %983 = load i32, i32* %982, align 4
  %984 = sext i32 %983 to i64
  store i64 %984, i64* %RAX, align 8, !tbaa !2428
  %985 = shl nsw i64 %984, 2
  %986 = add i64 %979, -1616
  %987 = add i64 %986, %985
  %988 = add i64 %978, 15
  store i64 %988, i64* %PC, align 8
  %989 = inttoptr i64 %987 to i32*
  store i32 0, i32* %989, align 4
  br label %block_401377

block_40175c:                                     ; preds = %block_401727
  %990 = add i64 %1222, 15
  store i64 %990, i64* %PC, align 8
  %991 = inttoptr i64 %1227 to i32*
  store i32 0, i32* %991, align 4
  %.pre252 = load i64, i64* %PC, align 8
  br label %block_40176b

block_4017e0:                                     ; preds = %block_4017ae, %block_4017d1
  %992 = phi i64 [ %5019, %block_4017ae ], [ %.pre254, %block_4017d1 ]
  %993 = load i64, i64* %RBP, align 8
  %994 = add i64 %993, -4
  %995 = add i64 %992, 8
  store i64 %995, i64* %PC, align 8
  %996 = inttoptr i64 %994 to i32*
  %997 = load i32, i32* %996, align 4
  %998 = add i32 %997, 1
  %999 = zext i32 %998 to i64
  store i64 %999, i64* %RAX, align 8, !tbaa !2428
  %1000 = icmp eq i32 %997, -1
  %1001 = icmp eq i32 %998, 0
  %1002 = or i1 %1000, %1001
  %1003 = zext i1 %1002 to i8
  store i8 %1003, i8* %16, align 1, !tbaa !2432
  %1004 = and i32 %998, 255
  %1005 = tail call i32 @llvm.ctpop.i32(i32 %1004) #12
  %1006 = trunc i32 %1005 to i8
  %1007 = and i8 %1006, 1
  %1008 = xor i8 %1007, 1
  store i8 %1008, i8* %23, align 1, !tbaa !2446
  %1009 = xor i32 %998, %997
  %1010 = lshr i32 %1009, 4
  %1011 = trunc i32 %1010 to i8
  %1012 = and i8 %1011, 1
  store i8 %1012, i8* %29, align 1, !tbaa !2447
  %1013 = zext i1 %1001 to i8
  store i8 %1013, i8* %32, align 1, !tbaa !2448
  %1014 = lshr i32 %998, 31
  %1015 = trunc i32 %1014 to i8
  store i8 %1015, i8* %35, align 1, !tbaa !2449
  %1016 = lshr i32 %997, 31
  %1017 = xor i32 %1014, %1016
  %1018 = add nuw nsw i32 %1017, %1014
  %1019 = icmp eq i32 %1018, 2
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %41, align 1, !tbaa !2450
  %1021 = add i64 %992, 14
  store i64 %1021, i64* %PC, align 8
  store i32 %998, i32* %996, align 4
  %1022 = load i64, i64* %PC, align 8
  %1023 = add i64 %1022, -95
  store i64 %1023, i64* %PC, align 8, !tbaa !2428
  br label %block_40178f

block_400986:                                     ; preds = %block_400970, %block_4009eb
  %1024 = phi i64 [ %.pre173, %block_400970 ], [ %314, %block_4009eb ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.5, %block_400970 ], [ %MEMORY.1, %block_4009eb ]
  %1025 = load i64, i64* %RBP, align 8
  %1026 = add i64 %1025, -8
  %1027 = add i64 %1024, 7
  store i64 %1027, i64* %PC, align 8
  %1028 = inttoptr i64 %1026 to i32*
  %1029 = load i32, i32* %1028, align 4
  %1030 = add i32 %1029, -255
  %1031 = icmp ult i32 %1029, 255
  %1032 = zext i1 %1031 to i8
  store i8 %1032, i8* %16, align 1, !tbaa !2432
  %1033 = and i32 %1030, 255
  %1034 = tail call i32 @llvm.ctpop.i32(i32 %1033) #12
  %1035 = trunc i32 %1034 to i8
  %1036 = and i8 %1035, 1
  %1037 = xor i8 %1036, 1
  store i8 %1037, i8* %23, align 1, !tbaa !2446
  %1038 = xor i32 %1029, 16
  %1039 = xor i32 %1038, %1030
  %1040 = lshr i32 %1039, 4
  %1041 = trunc i32 %1040 to i8
  %1042 = and i8 %1041, 1
  store i8 %1042, i8* %29, align 1, !tbaa !2447
  %1043 = icmp eq i32 %1030, 0
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %32, align 1, !tbaa !2448
  %1045 = lshr i32 %1030, 31
  %1046 = trunc i32 %1045 to i8
  store i8 %1046, i8* %35, align 1, !tbaa !2449
  %1047 = lshr i32 %1029, 31
  %1048 = xor i32 %1045, %1047
  %1049 = add nuw nsw i32 %1048, %1047
  %1050 = icmp eq i32 %1049, 2
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %41, align 1, !tbaa !2450
  %1052 = icmp ne i8 %1046, 0
  %1053 = xor i1 %1052, %1050
  %.v320 = select i1 %1053, i64 13, i64 120
  %1054 = add i64 %1024, %.v320
  store i64 %1054, i64* %PC, align 8, !tbaa !2428
  br i1 %1053, label %block_400993, label %block_4009fe

block_401739:                                     ; preds = %block_401727
  %1055 = add i64 %1222, 12
  store i64 %1055, i64* %PC, align 8
  %1056 = inttoptr i64 %1227 to i32*
  %1057 = load i32, i32* %1056, align 4
  %1058 = sext i32 %1057 to i64
  store i64 %1058, i64* %RAX, align 8, !tbaa !2428
  %1059 = shl nsw i64 %1058, 2
  %1060 = add i64 %1059, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %1061 = add i64 %1222, 19
  store i64 %1061, i64* %PC, align 8
  %1062 = inttoptr i64 %1060 to i32*
  %1063 = load i32, i32* %1062, align 4
  %1064 = zext i32 %1063 to i64
  store i64 %1064, i64* %RCX, align 8, !tbaa !2428
  %1065 = add i64 %1222, 23
  store i64 %1065, i64* %PC, align 8
  %1066 = load i32, i32* %4356, align 4
  %1067 = sext i32 %1066 to i64
  store i64 %1067, i64* %RAX, align 8, !tbaa !2428
  %1068 = shl nsw i64 %1067, 2
  %1069 = add i64 %1068, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %1070 = add i64 %1222, 30
  store i64 %1070, i64* %PC, align 8
  %1071 = inttoptr i64 %1069 to i32*
  store i32 %1063, i32* %1071, align 4
  %1072 = load i64, i64* %PC, align 8
  %1073 = add i64 %1072, 20
  store i64 %1073, i64* %PC, align 8, !tbaa !2428
  br label %block_40176b

block_401155:                                     ; preds = %block_401143
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %1074 = add i64 %1492, 9
  store i64 %1074, i64* %PC, align 8
  %1075 = load i32, i32* %1847, align 4
  %1076 = sext i32 %1075 to i64
  store i64 %1076, i64* %RCX, align 8, !tbaa !2428
  %1077 = shl nsw i64 %1076, 2
  %1078 = add i64 %1464, %1077
  %1079 = add i64 %1492, 16
  store i64 %1079, i64* %PC, align 8
  %1080 = inttoptr i64 %1078 to i32*
  %1081 = load i32, i32* %1080, align 4
  %1082 = zext i32 %1081 to i64
  store i64 %1082, i64* %RDX, align 8, !tbaa !2428
  %1083 = add i64 %1492, 19
  store i64 %1083, i64* %PC, align 8
  %1084 = load i32, i32* %1847, align 4
  %1085 = add i32 %1084, %1081
  %1086 = zext i32 %1085 to i64
  store i64 %1086, i64* %RDX, align 8, !tbaa !2428
  %1087 = icmp ult i32 %1085, %1081
  %1088 = icmp ult i32 %1085, %1084
  %1089 = or i1 %1087, %1088
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %16, align 1, !tbaa !2432
  %1091 = and i32 %1085, 255
  %1092 = tail call i32 @llvm.ctpop.i32(i32 %1091) #12
  %1093 = trunc i32 %1092 to i8
  %1094 = and i8 %1093, 1
  %1095 = xor i8 %1094, 1
  store i8 %1095, i8* %23, align 1, !tbaa !2446
  %1096 = xor i32 %1084, %1081
  %1097 = xor i32 %1096, %1085
  %1098 = lshr i32 %1097, 4
  %1099 = trunc i32 %1098 to i8
  %1100 = and i8 %1099, 1
  store i8 %1100, i8* %29, align 1, !tbaa !2447
  %1101 = icmp eq i32 %1085, 0
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %32, align 1, !tbaa !2448
  %1103 = lshr i32 %1085, 31
  %1104 = trunc i32 %1103 to i8
  store i8 %1104, i8* %35, align 1, !tbaa !2449
  %1105 = lshr i32 %1081, 31
  %1106 = lshr i32 %1084, 31
  %1107 = xor i32 %1103, %1105
  %1108 = xor i32 %1103, %1106
  %1109 = add nuw nsw i32 %1107, %1108
  %1110 = icmp eq i32 %1109, 2
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %41, align 1, !tbaa !2450
  %1112 = add i64 %1844, -2716
  %1113 = add i64 %1492, 25
  store i64 %1113, i64* %PC, align 8
  %1114 = inttoptr i64 %1112 to i32*
  store i32 255, i32* %1114, align 4
  %1115 = load i32, i32* %EDX, align 4
  %1116 = zext i32 %1115 to i64
  %1117 = load i64, i64* %PC, align 8
  store i64 %1116, i64* %RAX, align 8, !tbaa !2428
  %1118 = sext i32 %1115 to i64
  %1119 = lshr i64 %1118, 32
  store i64 %1119, i64* %55, align 8, !tbaa !2428
  %1120 = load i64, i64* %RBP, align 8
  %1121 = add i64 %1120, -2716
  %1122 = add i64 %1117, 9
  store i64 %1122, i64* %PC, align 8
  %1123 = inttoptr i64 %1121 to i32*
  %1124 = load i32, i32* %1123, align 4
  %1125 = zext i32 %1124 to i64
  store i64 %1125, i64* %RSI, align 8, !tbaa !2428
  %1126 = add i64 %1117, 11
  store i64 %1126, i64* %PC, align 8
  %1127 = sext i32 %1124 to i64
  %1128 = shl nuw i64 %1119, 32
  %1129 = or i64 %1128, %1116
  %1130 = sdiv i64 %1129, %1127
  %1131 = shl i64 %1130, 32
  %1132 = ashr exact i64 %1131, 32
  %1133 = icmp eq i64 %1130, %1132
  br i1 %1133, label %1136, label %1134

; <label>:1134:                                   ; preds = %block_401155
  %1135 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1126, %struct.Memory* %MEMORY.13) #13
  %.pre212 = load i64, i64* %RBP, align 8
  %.pre213 = load i64, i64* %PC, align 8
  %.pre214 = load i32, i32* %EDX, align 4
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6

; <label>:1136:                                   ; preds = %block_401155
  %1137 = srem i64 %1129, %1127
  %1138 = and i64 %1130, 4294967295
  store i64 %1138, i64* %RAX, align 8, !tbaa !2428
  %1139 = and i64 %1137, 4294967295
  store i64 %1139, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %1140 = trunc i64 %1137 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6: ; preds = %1136, %1134
  %1141 = phi i32 [ %.pre214, %1134 ], [ %1140, %1136 ]
  %1142 = phi i64 [ %.pre213, %1134 ], [ %1126, %1136 ]
  %1143 = phi i64 [ %.pre212, %1134 ], [ %1120, %1136 ]
  %1144 = phi %struct.Memory* [ %1135, %1134 ], [ %MEMORY.13, %1136 ]
  %1145 = add i64 %1143, -8
  %1146 = add i64 %1142, 4
  store i64 %1146, i64* %PC, align 8
  %1147 = inttoptr i64 %1145 to i32*
  %1148 = load i32, i32* %1147, align 4
  %1149 = sext i32 %1148 to i64
  store i64 %1149, i64* %RCX, align 8, !tbaa !2428
  %1150 = shl nsw i64 %1149, 2
  %1151 = add i64 %1143, -2688
  %1152 = add i64 %1151, %1150
  %1153 = add i64 %1142, 11
  store i64 %1153, i64* %PC, align 8
  %1154 = inttoptr i64 %1152 to i32*
  store i32 %1141, i32* %1154, align 4
  %1155 = load i64, i64* %RBP, align 8
  %1156 = add i64 %1155, -8
  %1157 = load i64, i64* %PC, align 8
  %1158 = add i64 %1157, 4
  store i64 %1158, i64* %PC, align 8
  %1159 = inttoptr i64 %1156 to i32*
  %1160 = load i32, i32* %1159, align 4
  %1161 = sext i32 %1160 to i64
  store i64 %1161, i64* %RCX, align 8, !tbaa !2428
  %1162 = shl nsw i64 %1161, 2
  %1163 = add i64 %1155, -2688
  %1164 = add i64 %1163, %1162
  %1165 = add i64 %1157, 12
  store i64 %1165, i64* %PC, align 8
  %1166 = inttoptr i64 %1164 to i32*
  %1167 = load i32, i32* %1166, align 4
  %1168 = sext i32 %1167 to i64
  store i64 %1168, i64* %RCX, align 8, !tbaa !2428
  %1169 = shl nsw i64 %1168, 2
  %1170 = add i64 %1169, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %1171 = add i64 %1157, 19
  store i64 %1171, i64* %PC, align 8
  %1172 = inttoptr i64 %1170 to i32*
  %1173 = load i32, i32* %1172, align 4
  %1174 = zext i32 %1173 to i64
  store i64 %1174, i64* %RDX, align 8, !tbaa !2428
  %1175 = add i64 %1155, -16
  %1176 = add i64 %1157, 22
  store i64 %1176, i64* %PC, align 8
  %1177 = inttoptr i64 %1175 to i32*
  %1178 = load i32, i32* %1177, align 4
  %1179 = xor i32 %1178, %1173
  %1180 = zext i32 %1179 to i64
  store i64 %1180, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %1181 = and i32 %1179, 255
  %1182 = tail call i32 @llvm.ctpop.i32(i32 %1181) #12
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  %1185 = xor i8 %1184, 1
  store i8 %1185, i8* %23, align 1, !tbaa !2446
  %1186 = icmp eq i32 %1179, 0
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %32, align 1, !tbaa !2448
  %1188 = lshr i32 %1179, 31
  %1189 = trunc i32 %1188 to i8
  store i8 %1189, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %1190 = add i64 %1157, 25
  store i64 %1190, i64* %PC, align 8
  store i32 %1179, i32* %1177, align 4
  %.pre215 = load i64, i64* %PC, align 8
  %.pre216 = load i64, i64* %RBP, align 8
  br label %block_40119d

block_401727:                                     ; preds = %block_40171a
  %1191 = add i64 %4382, 4
  store i64 %1191, i64* %PC, align 8
  %1192 = load i32, i32* %4356, align 4
  %1193 = sext i32 %1192 to i64
  store i64 %1193, i64* %RAX, align 8, !tbaa !2428
  %1194 = shl nsw i64 %1193, 2
  %1195 = add i64 %1194, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %1196 = add i64 %4382, 12
  store i64 %1196, i64* %PC, align 8
  %1197 = inttoptr i64 %1195 to i32*
  %1198 = load i32, i32* %1197, align 4
  %1199 = add i32 %1198, 1
  %1200 = icmp ne i32 %1198, -1
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %16, align 1, !tbaa !2432
  %1202 = and i32 %1199, 255
  %1203 = tail call i32 @llvm.ctpop.i32(i32 %1202) #12
  %1204 = trunc i32 %1203 to i8
  %1205 = and i8 %1204, 1
  %1206 = xor i8 %1205, 1
  store i8 %1206, i8* %23, align 1, !tbaa !2446
  %1207 = xor i32 %1198, 16
  %1208 = xor i32 %1207, %1199
  %1209 = lshr i32 %1208, 4
  %1210 = trunc i32 %1209 to i8
  %1211 = and i8 %1210, 1
  store i8 %1211, i8* %29, align 1, !tbaa !2447
  %1212 = icmp eq i32 %1199, 0
  %1213 = zext i1 %1212 to i8
  store i8 %1213, i8* %32, align 1, !tbaa !2448
  %1214 = lshr i32 %1199, 31
  %1215 = trunc i32 %1214 to i8
  store i8 %1215, i8* %35, align 1, !tbaa !2449
  %1216 = lshr i32 %1198, 31
  %1217 = xor i32 %1216, 1
  %1218 = xor i32 %1214, %1216
  %1219 = add nuw nsw i32 %1218, %1217
  %1220 = icmp eq i32 %1219, 2
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %41, align 1, !tbaa !2450
  %.v268 = select i1 %1212, i64 53, i64 18
  %1222 = add i64 %4382, %.v268
  %1223 = add i64 %1222, 4
  store i64 %1223, i64* %PC, align 8
  %1224 = load i32, i32* %4356, align 4
  %1225 = sext i32 %1224 to i64
  store i64 %1225, i64* %RAX, align 8, !tbaa !2428
  %1226 = shl nsw i64 %1225, 2
  %1227 = add i64 %1226, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  br i1 %1212, label %block_40175c, label %block_401739

block_400f4e:                                     ; preds = %block_400f29
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %1228 = add i64 %1701, -1168
  store i64 %1228, i64* %RCX, align 8, !tbaa !2428
  %1229 = add i64 %1701, -12
  %1230 = add i64 %1721, 15
  store i64 %1230, i64* %PC, align 8
  %1231 = inttoptr i64 %1229 to i32*
  %1232 = load i32, i32* %1231, align 4
  %1233 = add i32 %1232, 1
  %1234 = zext i32 %1233 to i64
  store i64 %1234, i64* %RDX, align 8, !tbaa !2428
  %1235 = icmp eq i32 %1232, -1
  %1236 = icmp eq i32 %1233, 0
  %1237 = or i1 %1235, %1236
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %16, align 1, !tbaa !2432
  %1239 = and i32 %1233, 255
  %1240 = tail call i32 @llvm.ctpop.i32(i32 %1239) #12
  %1241 = trunc i32 %1240 to i8
  %1242 = and i8 %1241, 1
  %1243 = xor i8 %1242, 1
  store i8 %1243, i8* %23, align 1, !tbaa !2446
  %1244 = xor i32 %1233, %1232
  %1245 = lshr i32 %1244, 4
  %1246 = trunc i32 %1245 to i8
  %1247 = and i8 %1246, 1
  store i8 %1247, i8* %29, align 1, !tbaa !2447
  %1248 = zext i1 %1236 to i8
  store i8 %1248, i8* %32, align 1, !tbaa !2448
  %1249 = lshr i32 %1233, 31
  %1250 = trunc i32 %1249 to i8
  store i8 %1250, i8* %35, align 1, !tbaa !2449
  %1251 = lshr i32 %1232, 31
  %1252 = xor i32 %1249, %1251
  %1253 = add nuw nsw i32 %1252, %1249
  %1254 = icmp eq i32 %1253, 2
  %1255 = zext i1 %1254 to i8
  store i8 %1255, i8* %41, align 1, !tbaa !2450
  %1256 = add i64 %1721, 21
  store i64 %1256, i64* %PC, align 8
  %1257 = load i32, i32* %1704, align 4
  %1258 = sub i32 %1233, %1257
  %1259 = zext i32 %1258 to i64
  store i64 %1259, i64* %RDX, align 8, !tbaa !2428
  %1260 = icmp ult i32 %1233, %1257
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %16, align 1, !tbaa !2432
  %1262 = and i32 %1258, 255
  %1263 = tail call i32 @llvm.ctpop.i32(i32 %1262) #12
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  %1266 = xor i8 %1265, 1
  store i8 %1266, i8* %23, align 1, !tbaa !2446
  %1267 = xor i32 %1257, %1233
  %1268 = xor i32 %1267, %1258
  %1269 = lshr i32 %1268, 4
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  store i8 %1271, i8* %29, align 1, !tbaa !2447
  %1272 = icmp eq i32 %1258, 0
  %1273 = zext i1 %1272 to i8
  store i8 %1273, i8* %32, align 1, !tbaa !2448
  %1274 = lshr i32 %1258, 31
  %1275 = trunc i32 %1274 to i8
  store i8 %1275, i8* %35, align 1, !tbaa !2449
  %1276 = lshr i32 %1257, 31
  %1277 = xor i32 %1276, %1249
  %1278 = xor i32 %1274, %1249
  %1279 = add nuw nsw i32 %1278, %1277
  %1280 = icmp eq i32 %1279, 2
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %41, align 1, !tbaa !2450
  %1282 = sext i32 %1258 to i64
  store i64 %1282, i64* %RSI, align 8, !tbaa !2428
  %1283 = shl nsw i64 %1282, 2
  %1284 = add nsw i64 %1283, -1488
  %1285 = add i64 %1284, %1701
  %1286 = add i64 %1721, 31
  store i64 %1286, i64* %PC, align 8
  %1287 = inttoptr i64 %1285 to i32*
  %1288 = load i32, i32* %1287, align 4
  %1289 = zext i32 %1288 to i64
  store i64 %1289, i64* %RDX, align 8, !tbaa !2428
  %1290 = add i64 %1721, 34
  store i64 %1290, i64* %PC, align 8
  %1291 = load i32, i32* %1231, align 4
  %1292 = add i32 %1291, 1
  %1293 = zext i32 %1292 to i64
  store i64 %1293, i64* %RDI, align 8, !tbaa !2428
  %1294 = sext i32 %1292 to i64
  %1295 = shl nsw i64 %1294, 6
  store i64 %1295, i64* %RSI, align 8, !tbaa !2428
  %1296 = load i64, i64* %RCX, align 8
  %1297 = add i64 %1295, %1296
  store i64 %1297, i64* %RCX, align 8, !tbaa !2428
  %1298 = icmp ult i64 %1297, %1296
  %1299 = icmp ult i64 %1297, %1295
  %1300 = or i1 %1298, %1299
  %1301 = zext i1 %1300 to i8
  store i8 %1301, i8* %16, align 1, !tbaa !2432
  %1302 = trunc i64 %1297 to i32
  %1303 = and i32 %1302, 255
  %1304 = tail call i32 @llvm.ctpop.i32(i32 %1303) #12
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  %1307 = xor i8 %1306, 1
  store i8 %1307, i8* %23, align 1, !tbaa !2446
  %1308 = xor i64 %1296, %1297
  %1309 = lshr i64 %1308, 4
  %1310 = trunc i64 %1309 to i8
  %1311 = and i8 %1310, 1
  store i8 %1311, i8* %29, align 1, !tbaa !2447
  %1312 = icmp eq i64 %1297, 0
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %32, align 1, !tbaa !2448
  %1314 = lshr i64 %1297, 63
  %1315 = trunc i64 %1314 to i8
  store i8 %1315, i8* %35, align 1, !tbaa !2449
  %1316 = lshr i64 %1296, 63
  %1317 = lshr i64 %1294, 57
  %1318 = and i64 %1317, 1
  %1319 = xor i64 %1314, %1316
  %1320 = xor i64 %1314, %1318
  %1321 = add nuw nsw i64 %1319, %1320
  %1322 = icmp eq i64 %1321, 2
  %1323 = zext i1 %1322 to i8
  store i8 %1323, i8* %41, align 1, !tbaa !2450
  %1324 = load i64, i64* %RBP, align 8
  %1325 = add i64 %1324, -4
  %1326 = add i64 %1721, 51
  store i64 %1326, i64* %PC, align 8
  %1327 = inttoptr i64 %1325 to i32*
  %1328 = load i32, i32* %1327, align 4
  %1329 = sext i32 %1328 to i64
  store i64 %1329, i64* %RSI, align 8, !tbaa !2428
  %1330 = shl nsw i64 %1329, 2
  %1331 = add i64 %1330, %1297
  %1332 = add i64 %1721, 55
  store i64 %1332, i64* %PC, align 8
  %1333 = inttoptr i64 %1331 to i32*
  %1334 = load i32, i32* %1333, align 4
  %1335 = sext i32 %1334 to i64
  store i64 %1335, i64* %RCX, align 8, !tbaa !2428
  %1336 = load i64, i64* %RDX, align 8
  %1337 = shl nsw i64 %1335, 2
  %1338 = add i64 %1337, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %1339 = add i64 %1721, 62
  store i64 %1339, i64* %PC, align 8
  %1340 = trunc i64 %1336 to i32
  %1341 = inttoptr i64 %1338 to i32*
  %1342 = load i32, i32* %1341, align 4
  %1343 = add i32 %1342, %1340
  %1344 = zext i32 %1343 to i64
  store i64 %1344, i64* %RDX, align 8, !tbaa !2428
  %1345 = icmp ult i32 %1343, %1340
  %1346 = icmp ult i32 %1343, %1342
  %1347 = or i1 %1345, %1346
  %1348 = zext i1 %1347 to i8
  store i8 %1348, i8* %16, align 1, !tbaa !2432
  %1349 = and i32 %1343, 255
  %1350 = tail call i32 @llvm.ctpop.i32(i32 %1349) #12
  %1351 = trunc i32 %1350 to i8
  %1352 = and i8 %1351, 1
  %1353 = xor i8 %1352, 1
  store i8 %1353, i8* %23, align 1, !tbaa !2446
  %1354 = xor i32 %1342, %1340
  %1355 = xor i32 %1354, %1343
  %1356 = lshr i32 %1355, 4
  %1357 = trunc i32 %1356 to i8
  %1358 = and i8 %1357, 1
  store i8 %1358, i8* %29, align 1, !tbaa !2447
  %1359 = icmp eq i32 %1343, 0
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %32, align 1, !tbaa !2448
  %1361 = lshr i32 %1343, 31
  %1362 = trunc i32 %1361 to i8
  store i8 %1362, i8* %35, align 1, !tbaa !2449
  %1363 = lshr i32 %1340, 31
  %1364 = lshr i32 %1342, 31
  %1365 = xor i32 %1361, %1363
  %1366 = xor i32 %1361, %1364
  %1367 = add nuw nsw i32 %1365, %1366
  %1368 = icmp eq i32 %1367, 2
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %41, align 1, !tbaa !2450
  %1370 = add i64 %1324, -2708
  %1371 = load i32, i32* %EAX, align 4
  %1372 = add i64 %1721, 68
  store i64 %1372, i64* %PC, align 8
  %1373 = inttoptr i64 %1370 to i32*
  store i32 %1371, i32* %1373, align 4
  %1374 = load i32, i32* %EDX, align 4
  %1375 = zext i32 %1374 to i64
  %1376 = load i64, i64* %PC, align 8
  store i64 %1375, i64* %RAX, align 8, !tbaa !2428
  %1377 = sext i32 %1374 to i64
  %1378 = lshr i64 %1377, 32
  store i64 %1378, i64* %55, align 8, !tbaa !2428
  %1379 = load i64, i64* %RBP, align 8
  %1380 = add i64 %1379, -2708
  %1381 = add i64 %1376, 9
  store i64 %1381, i64* %PC, align 8
  %1382 = inttoptr i64 %1380 to i32*
  %1383 = load i32, i32* %1382, align 4
  %1384 = zext i32 %1383 to i64
  store i64 %1384, i64* %RDI, align 8, !tbaa !2428
  %1385 = add i64 %1376, 11
  store i64 %1385, i64* %PC, align 8
  %1386 = sext i32 %1383 to i64
  %1387 = shl nuw i64 %1378, 32
  %1388 = or i64 %1387, %1375
  %1389 = sdiv i64 %1388, %1386
  %1390 = shl i64 %1389, 32
  %1391 = ashr exact i64 %1390, 32
  %1392 = icmp eq i64 %1389, %1391
  br i1 %1392, label %1395, label %1393

; <label>:1393:                                   ; preds = %block_400f4e
  %1394 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1385, %struct.Memory* %MEMORY.16) #13
  %.pre200 = load i32, i32* %EDX, align 4
  %.pre201 = load i64, i64* %PC, align 8
  %.pre202 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5

; <label>:1395:                                   ; preds = %block_400f4e
  %1396 = srem i64 %1388, %1386
  %1397 = and i64 %1389, 4294967295
  store i64 %1397, i64* %RAX, align 8, !tbaa !2428
  %1398 = and i64 %1396, 4294967295
  store i64 %1398, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %1399 = trunc i64 %1396 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5: ; preds = %1395, %1393
  %1400 = phi i64 [ %.pre202, %1393 ], [ %1379, %1395 ]
  %1401 = phi i64 [ %.pre201, %1393 ], [ %1385, %1395 ]
  %1402 = phi i32 [ %.pre200, %1393 ], [ %1399, %1395 ]
  %1403 = phi %struct.Memory* [ %1394, %1393 ], [ %MEMORY.16, %1395 ]
  %1404 = sext i32 %1402 to i64
  store i64 %1404, i64* %RCX, align 8, !tbaa !2428
  %1405 = shl nsw i64 %1404, 2
  %1406 = add i64 %1405, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %1407 = add i64 %1401, 10
  store i64 %1407, i64* %PC, align 8
  %1408 = inttoptr i64 %1406 to i32*
  %1409 = load i32, i32* %1408, align 4
  %1410 = zext i32 %1409 to i64
  store i64 %1410, i64* %RDX, align 8, !tbaa !2428
  %1411 = add i64 %1400, -12
  %1412 = add i64 %1401, 14
  store i64 %1412, i64* %PC, align 8
  %1413 = inttoptr i64 %1411 to i32*
  %1414 = load i32, i32* %1413, align 4
  %1415 = add i32 %1414, 1
  %1416 = zext i32 %1415 to i64
  store i64 %1416, i64* %R8, align 8, !tbaa !2428
  %1417 = icmp eq i32 %1414, -1
  %1418 = icmp eq i32 %1415, 0
  %1419 = or i1 %1417, %1418
  %1420 = zext i1 %1419 to i8
  store i8 %1420, i8* %16, align 1, !tbaa !2432
  %1421 = and i32 %1415, 255
  %1422 = tail call i32 @llvm.ctpop.i32(i32 %1421) #12
  %1423 = trunc i32 %1422 to i8
  %1424 = and i8 %1423, 1
  %1425 = xor i8 %1424, 1
  store i8 %1425, i8* %23, align 1, !tbaa !2446
  %1426 = xor i32 %1415, %1414
  %1427 = lshr i32 %1426, 4
  %1428 = trunc i32 %1427 to i8
  %1429 = and i8 %1428, 1
  store i8 %1429, i8* %29, align 1, !tbaa !2447
  %1430 = zext i1 %1418 to i8
  store i8 %1430, i8* %32, align 1, !tbaa !2448
  %1431 = lshr i32 %1415, 31
  %1432 = trunc i32 %1431 to i8
  store i8 %1432, i8* %35, align 1, !tbaa !2449
  %1433 = lshr i32 %1414, 31
  %1434 = xor i32 %1431, %1433
  %1435 = add nuw nsw i32 %1434, %1431
  %1436 = icmp eq i32 %1435, 2
  %1437 = zext i1 %1436 to i8
  store i8 %1437, i8* %41, align 1, !tbaa !2450
  %1438 = sext i32 %1415 to i64
  store i64 %1438, i64* %RCX, align 8, !tbaa !2428
  %1439 = shl nsw i64 %1438, 2
  %1440 = add nsw i64 %1439, -1248
  %1441 = add i64 %1440, %1400
  %1442 = add i64 %1401, 28
  store i64 %1442, i64* %PC, align 8
  %1443 = inttoptr i64 %1441 to i32*
  %1444 = load i32, i32* %1443, align 4
  %1445 = xor i32 %1444, %1409
  %1446 = zext i32 %1445 to i64
  store i64 %1446, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %1447 = and i32 %1445, 255
  %1448 = tail call i32 @llvm.ctpop.i32(i32 %1447) #12
  %1449 = trunc i32 %1448 to i8
  %1450 = and i8 %1449, 1
  %1451 = xor i8 %1450, 1
  store i8 %1451, i8* %23, align 1, !tbaa !2446
  %1452 = icmp eq i32 %1445, 0
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %32, align 1, !tbaa !2448
  %1454 = lshr i32 %1445, 31
  %1455 = trunc i32 %1454 to i8
  store i8 %1455, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %1456 = add i64 %1400, -1248
  %1457 = add i64 %1456, %1439
  %1458 = add i64 %1401, 35
  store i64 %1458, i64* %PC, align 8
  %1459 = inttoptr i64 %1457 to i32*
  store i32 %1445, i32* %1459, align 4
  %.pre203 = load i64, i64* %PC, align 8
  %.pre204 = load i64, i64* %RBP, align 8
  br label %block_400fc0

block_401143:                                     ; preds = %block_40112f
  %1460 = add i64 %1887, 4
  store i64 %1460, i64* %PC, align 8
  %1461 = load i32, i32* %1847, align 4
  %1462 = sext i32 %1461 to i64
  store i64 %1462, i64* %RAX, align 8, !tbaa !2428
  %1463 = shl nsw i64 %1462, 2
  %1464 = add i64 %1844, -2688
  %1465 = add i64 %1464, %1463
  %1466 = add i64 %1887, 12
  store i64 %1466, i64* %PC, align 8
  %1467 = inttoptr i64 %1465 to i32*
  %1468 = load i32, i32* %1467, align 4
  %1469 = add i32 %1468, 1
  %1470 = icmp ne i32 %1468, -1
  %1471 = zext i1 %1470 to i8
  store i8 %1471, i8* %16, align 1, !tbaa !2432
  %1472 = and i32 %1469, 255
  %1473 = tail call i32 @llvm.ctpop.i32(i32 %1472) #12
  %1474 = trunc i32 %1473 to i8
  %1475 = and i8 %1474, 1
  %1476 = xor i8 %1475, 1
  store i8 %1476, i8* %23, align 1, !tbaa !2446
  %1477 = xor i32 %1468, 16
  %1478 = xor i32 %1477, %1469
  %1479 = lshr i32 %1478, 4
  %1480 = trunc i32 %1479 to i8
  %1481 = and i8 %1480, 1
  store i8 %1481, i8* %29, align 1, !tbaa !2447
  %1482 = icmp eq i32 %1469, 0
  %1483 = zext i1 %1482 to i8
  store i8 %1483, i8* %32, align 1, !tbaa !2448
  %1484 = lshr i32 %1469, 31
  %1485 = trunc i32 %1484 to i8
  store i8 %1485, i8* %35, align 1, !tbaa !2449
  %1486 = lshr i32 %1468, 31
  %1487 = xor i32 %1486, 1
  %1488 = xor i32 %1484, %1486
  %1489 = add nuw nsw i32 %1488, %1487
  %1490 = icmp eq i32 %1489, 2
  %1491 = zext i1 %1490 to i8
  store i8 %1491, i8* %41, align 1, !tbaa !2450
  %.v314 = select i1 %1482, i64 90, i64 18
  %1492 = add i64 %1887, %.v314
  store i64 %1492, i64* %PC, align 8, !tbaa !2428
  br i1 %1482, label %block_40119d, label %block_401155

block_401539:                                     ; preds = %block_401527
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %1493 = add i64 %6200, 9
  store i64 %1493, i64* %PC, align 8
  %1494 = load i32, i32* %4519, align 4
  %1495 = sext i32 %1494 to i64
  store i64 %1495, i64* %RCX, align 8, !tbaa !2428
  %1496 = shl nsw i64 %1495, 2
  %1497 = add i64 %6172, %1496
  %1498 = add i64 %6200, 16
  store i64 %1498, i64* %PC, align 8
  %1499 = inttoptr i64 %1497 to i32*
  %1500 = load i32, i32* %1499, align 4
  %1501 = zext i32 %1500 to i64
  store i64 %1501, i64* %RDX, align 8, !tbaa !2428
  %1502 = add i64 %6200, 19
  store i64 %1502, i64* %PC, align 8
  %1503 = load i32, i32* %4519, align 4
  %1504 = zext i32 %1503 to i64
  store i64 %1504, i64* %RSI, align 8, !tbaa !2428
  %1505 = add i64 %4516, -4
  %1506 = add i64 %6200, 23
  store i64 %1506, i64* %PC, align 8
  %1507 = inttoptr i64 %1505 to i32*
  %1508 = load i32, i32* %1507, align 4
  %1509 = sext i32 %1508 to i64
  store i64 %1509, i64* %RCX, align 8, !tbaa !2428
  %1510 = shl nsw i64 %1509, 2
  %1511 = add nsw i64 %1510, -1536
  %1512 = add i64 %1511, %4516
  %1513 = add i64 %6200, 31
  store i64 %1513, i64* %PC, align 8
  %1514 = inttoptr i64 %1512 to i32*
  %1515 = load i32, i32* %1514, align 4
  %1516 = sext i32 %1503 to i64
  %1517 = sext i32 %1515 to i64
  %1518 = mul nsw i64 %1517, %1516
  %1519 = and i64 %1518, 4294967295
  store i64 %1519, i64* %RSI, align 8, !tbaa !2428
  %1520 = trunc i64 %1518 to i32
  %1521 = add i32 %1520, %1500
  %1522 = zext i32 %1521 to i64
  store i64 %1522, i64* %RDX, align 8, !tbaa !2428
  %1523 = icmp ult i32 %1521, %1500
  %1524 = icmp ult i32 %1521, %1520
  %1525 = or i1 %1523, %1524
  %1526 = zext i1 %1525 to i8
  store i8 %1526, i8* %16, align 1, !tbaa !2432
  %1527 = and i32 %1521, 255
  %1528 = tail call i32 @llvm.ctpop.i32(i32 %1527) #12
  %1529 = trunc i32 %1528 to i8
  %1530 = and i8 %1529, 1
  %1531 = xor i8 %1530, 1
  store i8 %1531, i8* %23, align 1, !tbaa !2446
  %1532 = xor i64 %1518, %1501
  %1533 = trunc i64 %1532 to i32
  %1534 = xor i32 %1533, %1521
  %1535 = lshr i32 %1534, 4
  %1536 = trunc i32 %1535 to i8
  %1537 = and i8 %1536, 1
  store i8 %1537, i8* %29, align 1, !tbaa !2447
  %1538 = icmp eq i32 %1521, 0
  %1539 = zext i1 %1538 to i8
  store i8 %1539, i8* %32, align 1, !tbaa !2448
  %1540 = lshr i32 %1521, 31
  %1541 = trunc i32 %1540 to i8
  store i8 %1541, i8* %35, align 1, !tbaa !2449
  %1542 = lshr i32 %1500, 31
  %1543 = lshr i32 %1520, 31
  %1544 = xor i32 %1540, %1542
  %1545 = xor i32 %1540, %1543
  %1546 = add nuw nsw i32 %1544, %1545
  %1547 = icmp eq i32 %1546, 2
  %1548 = zext i1 %1547 to i8
  store i8 %1548, i8* %41, align 1, !tbaa !2450
  %1549 = add i64 %4516, -2724
  %1550 = add i64 %6200, 39
  store i64 %1550, i64* %PC, align 8
  %1551 = inttoptr i64 %1549 to i32*
  store i32 255, i32* %1551, align 4
  %1552 = load i32, i32* %EDX, align 4
  %1553 = zext i32 %1552 to i64
  %1554 = load i64, i64* %PC, align 8
  store i64 %1553, i64* %RAX, align 8, !tbaa !2428
  %1555 = sext i32 %1552 to i64
  %1556 = lshr i64 %1555, 32
  store i64 %1556, i64* %55, align 8, !tbaa !2428
  %1557 = load i64, i64* %RBP, align 8
  %1558 = add i64 %1557, -2724
  %1559 = add i64 %1554, 9
  store i64 %1559, i64* %PC, align 8
  %1560 = inttoptr i64 %1558 to i32*
  %1561 = load i32, i32* %1560, align 4
  %1562 = zext i32 %1561 to i64
  store i64 %1562, i64* %RSI, align 8, !tbaa !2428
  %1563 = add i64 %1554, 11
  store i64 %1563, i64* %PC, align 8
  %1564 = sext i32 %1561 to i64
  %1565 = shl nuw i64 %1556, 32
  %1566 = or i64 %1565, %1553
  %1567 = sdiv i64 %1566, %1564
  %1568 = shl i64 %1567, 32
  %1569 = ashr exact i64 %1568, 32
  %1570 = icmp eq i64 %1567, %1569
  br i1 %1570, label %1573, label %1571

; <label>:1571:                                   ; preds = %block_401539
  %1572 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1563, %struct.Memory* %MEMORY.34) #13
  %.pre232 = load i32, i32* %EDX, align 4
  %.pre233 = load i64, i64* %PC, align 8
  %.pre234 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4

; <label>:1573:                                   ; preds = %block_401539
  %1574 = srem i64 %1566, %1564
  %1575 = and i64 %1567, 4294967295
  store i64 %1575, i64* %RAX, align 8, !tbaa !2428
  %1576 = and i64 %1574, 4294967295
  store i64 %1576, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %1577 = trunc i64 %1574 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4: ; preds = %1573, %1571
  %1578 = phi i64 [ %.pre234, %1571 ], [ %1557, %1573 ]
  %1579 = phi i64 [ %.pre233, %1571 ], [ %1563, %1573 ]
  %1580 = phi i32 [ %.pre232, %1571 ], [ %1577, %1573 ]
  %1581 = phi %struct.Memory* [ %1572, %1571 ], [ %MEMORY.34, %1573 ]
  %1582 = sext i32 %1580 to i64
  store i64 %1582, i64* %RCX, align 8, !tbaa !2428
  %1583 = shl nsw i64 %1582, 2
  %1584 = add i64 %1583, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %1585 = add i64 %1579, 10
  store i64 %1585, i64* %PC, align 8
  %1586 = inttoptr i64 %1584 to i32*
  %1587 = load i32, i32* %1586, align 4
  %1588 = zext i32 %1587 to i64
  store i64 %1588, i64* %RDX, align 8, !tbaa !2428
  %1589 = add i64 %1578, -4
  %1590 = add i64 %1579, 14
  store i64 %1590, i64* %PC, align 8
  %1591 = inttoptr i64 %1589 to i32*
  %1592 = load i32, i32* %1591, align 4
  %1593 = sext i32 %1592 to i64
  store i64 %1593, i64* %RCX, align 8, !tbaa !2428
  %1594 = shl nsw i64 %1593, 2
  %1595 = add i64 %1578, -1568
  %1596 = add i64 %1595, %1594
  %1597 = add i64 %1579, 22
  store i64 %1597, i64* %PC, align 8
  %1598 = inttoptr i64 %1596 to i32*
  %1599 = load i32, i32* %1598, align 4
  %1600 = sext i32 %1599 to i64
  store i64 %1600, i64* %RCX, align 8, !tbaa !2428
  %1601 = shl nsw i64 %1600, 2
  %1602 = add nsw i64 %1601, -2640
  %1603 = add i64 %1602, %1578
  %1604 = add i64 %1579, 29
  store i64 %1604, i64* %PC, align 8
  %1605 = inttoptr i64 %1603 to i32*
  %1606 = load i32, i32* %1605, align 4
  %1607 = xor i32 %1606, %1587
  %1608 = zext i32 %1607 to i64
  store i64 %1608, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %1609 = and i32 %1607, 255
  %1610 = tail call i32 @llvm.ctpop.i32(i32 %1609) #12
  %1611 = trunc i32 %1610 to i8
  %1612 = and i8 %1611, 1
  %1613 = xor i8 %1612, 1
  store i8 %1613, i8* %23, align 1, !tbaa !2446
  %1614 = icmp eq i32 %1607, 0
  %1615 = zext i1 %1614 to i8
  store i8 %1615, i8* %32, align 1, !tbaa !2448
  %1616 = lshr i32 %1607, 31
  %1617 = trunc i32 %1616 to i8
  store i8 %1617, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %1618 = add i64 %1578, -2640
  %1619 = add i64 %1618, %1601
  %1620 = add i64 %1579, 36
  store i64 %1620, i64* %PC, align 8
  %1621 = inttoptr i64 %1619 to i32*
  store i32 %1607, i32* %1621, align 4
  %.pre235 = load i64, i64* %PC, align 8
  %.pre236 = load i64, i64* %RBP, align 8
  br label %block_40158f

block_400ddb:                                     ; preds = %block_400dd4, %block_400def
  %1622 = phi i64 [ %.pre197, %block_400dd4 ], [ %282, %block_400def ]
  %1623 = load i64, i64* %RBP, align 8
  %1624 = add i64 %1623, -4
  %1625 = add i64 %1622, 3
  store i64 %1625, i64* %PC, align 8
  %1626 = inttoptr i64 %1624 to i32*
  %1627 = load i32, i32* %1626, align 4
  %1628 = zext i32 %1627 to i64
  store i64 %1628, i64* %RAX, align 8, !tbaa !2428
  %1629 = add i64 %1623, -12
  %1630 = add i64 %1622, 7
  store i64 %1630, i64* %PC, align 8
  %1631 = inttoptr i64 %1629 to i32*
  %1632 = load i32, i32* %1631, align 4
  %1633 = sext i32 %1632 to i64
  store i64 %1633, i64* %RCX, align 8, !tbaa !2428
  %1634 = shl nsw i64 %1633, 2
  %1635 = add nsw i64 %1634, -1328
  %1636 = add i64 %1635, %1623
  %1637 = add i64 %1622, 14
  store i64 %1637, i64* %PC, align 8
  %1638 = inttoptr i64 %1636 to i32*
  %1639 = load i32, i32* %1638, align 4
  %1640 = sub i32 %1627, %1639
  %1641 = icmp ult i32 %1627, %1639
  %1642 = zext i1 %1641 to i8
  store i8 %1642, i8* %16, align 1, !tbaa !2432
  %1643 = and i32 %1640, 255
  %1644 = tail call i32 @llvm.ctpop.i32(i32 %1643) #12
  %1645 = trunc i32 %1644 to i8
  %1646 = and i8 %1645, 1
  %1647 = xor i8 %1646, 1
  store i8 %1647, i8* %23, align 1, !tbaa !2446
  %1648 = xor i32 %1639, %1627
  %1649 = xor i32 %1648, %1640
  %1650 = lshr i32 %1649, 4
  %1651 = trunc i32 %1650 to i8
  %1652 = and i8 %1651, 1
  store i8 %1652, i8* %29, align 1, !tbaa !2447
  %1653 = icmp eq i32 %1640, 0
  %1654 = zext i1 %1653 to i8
  store i8 %1654, i8* %32, align 1, !tbaa !2448
  %1655 = lshr i32 %1640, 31
  %1656 = trunc i32 %1655 to i8
  store i8 %1656, i8* %35, align 1, !tbaa !2449
  %1657 = lshr i32 %1627, 31
  %1658 = lshr i32 %1639, 31
  %1659 = xor i32 %1658, %1657
  %1660 = xor i32 %1655, %1657
  %1661 = add nuw nsw i32 %1660, %1659
  %1662 = icmp eq i32 %1661, 2
  %1663 = zext i1 %1662 to i8
  store i8 %1663, i8* %41, align 1, !tbaa !2450
  %1664 = icmp ne i8 %1656, 0
  %1665 = xor i1 %1664, %1662
  %.demorgan277 = or i1 %1653, %1665
  %.v291 = select i1 %.demorgan277, i64 20, i64 138
  %1666 = add i64 %1622, %.v291
  store i64 %1666, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan277, label %block_400def, label %block_400e6a.loopexit424

block_400f29:                                     ; preds = %block_400f0f
  %1667 = add i64 %2064, -1168
  store i64 %1667, i64* %RAX, align 8, !tbaa !2428
  %1668 = add i64 %1812, 10
  store i64 %1668, i64* %PC, align 8
  %1669 = load i32, i32* %2067, align 4
  %1670 = add i32 %1669, 1
  %1671 = zext i32 %1670 to i64
  store i64 %1671, i64* %RCX, align 8, !tbaa !2428
  %1672 = sext i32 %1670 to i64
  %1673 = shl nsw i64 %1672, 6
  store i64 %1673, i64* %RDX, align 8, !tbaa !2428
  %1674 = add i64 %1673, %1667
  store i64 %1674, i64* %RAX, align 8, !tbaa !2428
  %1675 = icmp ult i64 %1674, %1667
  %1676 = icmp ult i64 %1674, %1673
  %1677 = or i1 %1675, %1676
  %1678 = zext i1 %1677 to i8
  store i8 %1678, i8* %16, align 1, !tbaa !2432
  %1679 = trunc i64 %1674 to i32
  %1680 = and i32 %1679, 255
  %1681 = tail call i32 @llvm.ctpop.i32(i32 %1680) #12
  %1682 = trunc i32 %1681 to i8
  %1683 = and i8 %1682, 1
  %1684 = xor i8 %1683, 1
  store i8 %1684, i8* %23, align 1, !tbaa !2446
  %1685 = xor i64 %1667, %1674
  %1686 = lshr i64 %1685, 4
  %1687 = trunc i64 %1686 to i8
  %1688 = and i8 %1687, 1
  store i8 %1688, i8* %29, align 1, !tbaa !2447
  %1689 = icmp eq i64 %1674, 0
  %1690 = zext i1 %1689 to i8
  store i8 %1690, i8* %32, align 1, !tbaa !2448
  %1691 = lshr i64 %1674, 63
  %1692 = trunc i64 %1691 to i8
  store i8 %1692, i8* %35, align 1, !tbaa !2449
  %1693 = lshr i64 %1667, 63
  %1694 = lshr i64 %1672, 57
  %1695 = and i64 %1694, 1
  %1696 = xor i64 %1691, %1693
  %1697 = xor i64 %1691, %1695
  %1698 = add nuw nsw i64 %1696, %1697
  %1699 = icmp eq i64 %1698, 2
  %1700 = zext i1 %1699 to i8
  store i8 %1700, i8* %41, align 1, !tbaa !2450
  %1701 = load i64, i64* %RBP, align 8
  %1702 = add i64 %1701, -4
  %1703 = add i64 %1812, 27
  store i64 %1703, i64* %PC, align 8
  %1704 = inttoptr i64 %1702 to i32*
  %1705 = load i32, i32* %1704, align 4
  %1706 = sext i32 %1705 to i64
  store i64 %1706, i64* %RDX, align 8, !tbaa !2428
  %1707 = shl nsw i64 %1706, 2
  %1708 = add i64 %1707, %1674
  %1709 = add i64 %1812, 31
  store i64 %1709, i64* %PC, align 8
  %1710 = inttoptr i64 %1708 to i32*
  %1711 = load i32, i32* %1710, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %1712 = and i32 %1711, 255
  %1713 = tail call i32 @llvm.ctpop.i32(i32 %1712) #12
  %1714 = trunc i32 %1713 to i8
  %1715 = and i8 %1714, 1
  %1716 = xor i8 %1715, 1
  store i8 %1716, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %1717 = icmp eq i32 %1711, 0
  %1718 = zext i1 %1717 to i8
  store i8 %1718, i8* %32, align 1, !tbaa !2448
  %1719 = lshr i32 %1711, 31
  %1720 = trunc i32 %1719 to i8
  store i8 %1720, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %.v317 = select i1 %1717, i64 151, i64 37
  %1721 = add i64 %1812, %.v317
  store i64 %1721, i64* %PC, align 8, !tbaa !2428
  br i1 %1717, label %block_400fc0, label %block_400f4e

block_400dc1:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3, %block_400d27
  %1722 = phi i64 [ %2184, %block_400d27 ], [ %.pre196, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3 ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.23, %block_400d27 ], [ %2808, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3 ]
  %1723 = load i64, i64* %RBP, align 8
  %1724 = add i64 %1723, -4
  %1725 = add i64 %1722, 8
  store i64 %1725, i64* %PC, align 8
  %1726 = inttoptr i64 %1724 to i32*
  %1727 = load i32, i32* %1726, align 4
  %1728 = add i32 %1727, 1
  %1729 = zext i32 %1728 to i64
  store i64 %1729, i64* %RAX, align 8, !tbaa !2428
  %1730 = icmp eq i32 %1727, -1
  %1731 = icmp eq i32 %1728, 0
  %1732 = or i1 %1730, %1731
  %1733 = zext i1 %1732 to i8
  store i8 %1733, i8* %16, align 1, !tbaa !2432
  %1734 = and i32 %1728, 255
  %1735 = tail call i32 @llvm.ctpop.i32(i32 %1734) #12
  %1736 = trunc i32 %1735 to i8
  %1737 = and i8 %1736, 1
  %1738 = xor i8 %1737, 1
  store i8 %1738, i8* %23, align 1, !tbaa !2446
  %1739 = xor i32 %1728, %1727
  %1740 = lshr i32 %1739, 4
  %1741 = trunc i32 %1740 to i8
  %1742 = and i8 %1741, 1
  store i8 %1742, i8* %29, align 1, !tbaa !2447
  %1743 = zext i1 %1731 to i8
  store i8 %1743, i8* %32, align 1, !tbaa !2448
  %1744 = lshr i32 %1728, 31
  %1745 = trunc i32 %1744 to i8
  store i8 %1745, i8* %35, align 1, !tbaa !2449
  %1746 = lshr i32 %1727, 31
  %1747 = xor i32 %1744, %1746
  %1748 = add nuw nsw i32 %1747, %1744
  %1749 = icmp eq i32 %1748, 2
  %1750 = zext i1 %1749 to i8
  store i8 %1750, i8* %41, align 1, !tbaa !2450
  %1751 = add i64 %1722, 14
  store i64 %1751, i64* %PC, align 8
  store i32 %1728, i32* %1726, align 4
  %1752 = load i64, i64* %PC, align 8
  %1753 = add i64 %1752, -188
  store i64 %1753, i64* %PC, align 8, !tbaa !2428
  br label %block_400d13

block_400f0f:                                     ; preds = %block_400ef6
  %1754 = add i64 %2064, -4
  %1755 = add i64 %2063, 9
  store i64 %1755, i64* %PC, align 8
  %1756 = inttoptr i64 %1754 to i32*
  %1757 = load i32, i32* %1756, align 4
  %1758 = sub i32 %2070, %1757
  %1759 = zext i32 %1758 to i64
  store i64 %1759, i64* %RAX, align 8, !tbaa !2428
  %1760 = icmp ult i32 %2070, %1757
  %1761 = zext i1 %1760 to i8
  store i8 %1761, i8* %16, align 1, !tbaa !2432
  %1762 = and i32 %1758, 255
  %1763 = tail call i32 @llvm.ctpop.i32(i32 %1762) #12
  %1764 = trunc i32 %1763 to i8
  %1765 = and i8 %1764, 1
  %1766 = xor i8 %1765, 1
  store i8 %1766, i8* %23, align 1, !tbaa !2446
  %1767 = xor i32 %1757, %2070
  %1768 = xor i32 %1767, %1758
  %1769 = lshr i32 %1768, 4
  %1770 = trunc i32 %1769 to i8
  %1771 = and i8 %1770, 1
  store i8 %1771, i8* %29, align 1, !tbaa !2447
  %1772 = icmp eq i32 %1758, 0
  %1773 = zext i1 %1772 to i8
  store i8 %1773, i8* %32, align 1, !tbaa !2448
  %1774 = lshr i32 %1758, 31
  %1775 = trunc i32 %1774 to i8
  store i8 %1775, i8* %35, align 1, !tbaa !2449
  %1776 = lshr i32 %1757, 31
  %1777 = xor i32 %1776, %2086
  %1778 = xor i32 %1774, %2086
  %1779 = add nuw nsw i32 %1778, %1777
  %1780 = icmp eq i32 %1779, 2
  %1781 = zext i1 %1780 to i8
  store i8 %1781, i8* %41, align 1, !tbaa !2450
  %1782 = sext i32 %1758 to i64
  store i64 %1782, i64* %RCX, align 8, !tbaa !2428
  %1783 = shl nsw i64 %1782, 2
  %1784 = add nsw i64 %1783, -1488
  %1785 = add i64 %1784, %2064
  %1786 = add i64 %2063, 20
  store i64 %1786, i64* %PC, align 8
  %1787 = inttoptr i64 %1785 to i32*
  %1788 = load i32, i32* %1787, align 4
  %1789 = add i32 %1788, 1
  %1790 = icmp ne i32 %1788, -1
  %1791 = zext i1 %1790 to i8
  store i8 %1791, i8* %16, align 1, !tbaa !2432
  %1792 = and i32 %1789, 255
  %1793 = tail call i32 @llvm.ctpop.i32(i32 %1792) #12
  %1794 = trunc i32 %1793 to i8
  %1795 = and i8 %1794, 1
  %1796 = xor i8 %1795, 1
  store i8 %1796, i8* %23, align 1, !tbaa !2446
  %1797 = xor i32 %1788, 16
  %1798 = xor i32 %1797, %1789
  %1799 = lshr i32 %1798, 4
  %1800 = trunc i32 %1799 to i8
  %1801 = and i8 %1800, 1
  store i8 %1801, i8* %29, align 1, !tbaa !2447
  %1802 = icmp eq i32 %1789, 0
  %1803 = zext i1 %1802 to i8
  store i8 %1803, i8* %32, align 1, !tbaa !2448
  %1804 = lshr i32 %1789, 31
  %1805 = trunc i32 %1804 to i8
  store i8 %1805, i8* %35, align 1, !tbaa !2449
  %1806 = lshr i32 %1788, 31
  %1807 = xor i32 %1806, 1
  %1808 = xor i32 %1804, %1806
  %1809 = add nuw nsw i32 %1808, %1807
  %1810 = icmp eq i32 %1809, 2
  %1811 = zext i1 %1810 to i8
  store i8 %1811, i8* %41, align 1, !tbaa !2450
  %.v316 = select i1 %1802, i64 177, i64 26
  %1812 = add i64 %2063, %.v316
  store i64 %1812, i64* %PC, align 8, !tbaa !2428
  br i1 %1802, label %block_400fc0, label %block_400f29

block_400bf7:                                     ; preds = %block_400be4
  %1813 = add i64 %1962, 3
  store i64 %1813, i64* %PC, align 8
  %1814 = inttoptr i64 %1963 to i32*
  %1815 = load i32, i32* %1814, align 4
  %1816 = add i32 %1815, -1
  %1817 = zext i32 %1816 to i64
  store i64 %1817, i64* %RAX, align 8, !tbaa !2428
  %1818 = icmp ne i32 %1815, 0
  %1819 = zext i1 %1818 to i8
  store i8 %1819, i8* %16, align 1, !tbaa !2432
  %1820 = and i32 %1816, 255
  %1821 = tail call i32 @llvm.ctpop.i32(i32 %1820) #12
  %1822 = trunc i32 %1821 to i8
  %1823 = and i8 %1822, 1
  %1824 = xor i8 %1823, 1
  store i8 %1824, i8* %23, align 1, !tbaa !2446
  %1825 = xor i32 %1815, 16
  %1826 = xor i32 %1825, %1816
  %1827 = lshr i32 %1826, 4
  %1828 = trunc i32 %1827 to i8
  %1829 = and i8 %1828, 1
  store i8 %1829, i8* %29, align 1, !tbaa !2447
  %1830 = icmp eq i32 %1816, 0
  %1831 = zext i1 %1830 to i8
  store i8 %1831, i8* %32, align 1, !tbaa !2448
  %1832 = lshr i32 %1816, 31
  %1833 = trunc i32 %1832 to i8
  store i8 %1833, i8* %35, align 1, !tbaa !2449
  %1834 = lshr i32 %1815, 31
  %1835 = xor i32 %1832, %1834
  %1836 = xor i32 %1832, 1
  %1837 = add nuw nsw i32 %1835, %1836
  %1838 = icmp eq i32 %1837, 2
  %1839 = zext i1 %1838 to i8
  store i8 %1839, i8* %41, align 1, !tbaa !2450
  %1840 = add i64 %1962, 9
  store i64 %1840, i64* %PC, align 8
  store i32 %1816, i32* %1814, align 4
  %1841 = load i64, i64* %PC, align 8
  %1842 = add i64 %1841, -69
  store i64 %1842, i64* %PC, align 8, !tbaa !2428
  br label %block_400bbb

block_40112f:                                     ; preds = %block_40119d, %block_401121
  %1843 = phi i64 [ %.pre211, %block_401121 ], [ %5546, %block_40119d ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.25, %block_401121 ], [ %MEMORY.45, %block_40119d ]
  %1844 = load i64, i64* %RBP, align 8
  %1845 = add i64 %1844, -8
  %1846 = add i64 %1843, 3
  store i64 %1846, i64* %PC, align 8
  %1847 = inttoptr i64 %1845 to i32*
  %1848 = load i32, i32* %1847, align 4
  %1849 = zext i32 %1848 to i64
  store i64 %1849, i64* %RAX, align 8, !tbaa !2428
  %1850 = add i64 %1844, -12
  %1851 = add i64 %1843, 7
  store i64 %1851, i64* %PC, align 8
  %1852 = inttoptr i64 %1850 to i32*
  %1853 = load i32, i32* %1852, align 4
  %1854 = sext i32 %1853 to i64
  store i64 %1854, i64* %RCX, align 8, !tbaa !2428
  %1855 = shl nsw i64 %1854, 2
  %1856 = add nsw i64 %1855, -1328
  %1857 = add i64 %1856, %1844
  %1858 = add i64 %1843, 14
  store i64 %1858, i64* %PC, align 8
  %1859 = inttoptr i64 %1857 to i32*
  %1860 = load i32, i32* %1859, align 4
  %1861 = sub i32 %1848, %1860
  %1862 = icmp ult i32 %1848, %1860
  %1863 = zext i1 %1862 to i8
  store i8 %1863, i8* %16, align 1, !tbaa !2432
  %1864 = and i32 %1861, 255
  %1865 = tail call i32 @llvm.ctpop.i32(i32 %1864) #12
  %1866 = trunc i32 %1865 to i8
  %1867 = and i8 %1866, 1
  %1868 = xor i8 %1867, 1
  store i8 %1868, i8* %23, align 1, !tbaa !2446
  %1869 = xor i32 %1860, %1848
  %1870 = xor i32 %1869, %1861
  %1871 = lshr i32 %1870, 4
  %1872 = trunc i32 %1871 to i8
  %1873 = and i8 %1872, 1
  store i8 %1873, i8* %29, align 1, !tbaa !2447
  %1874 = icmp eq i32 %1861, 0
  %1875 = zext i1 %1874 to i8
  store i8 %1875, i8* %32, align 1, !tbaa !2448
  %1876 = lshr i32 %1861, 31
  %1877 = trunc i32 %1876 to i8
  store i8 %1877, i8* %35, align 1, !tbaa !2449
  %1878 = lshr i32 %1848, 31
  %1879 = lshr i32 %1860, 31
  %1880 = xor i32 %1879, %1878
  %1881 = xor i32 %1876, %1878
  %1882 = add nuw nsw i32 %1881, %1880
  %1883 = icmp eq i32 %1882, 2
  %1884 = zext i1 %1883 to i8
  store i8 %1884, i8* %41, align 1, !tbaa !2450
  %1885 = icmp ne i8 %1877, 0
  %1886 = xor i1 %1885, %1883
  %.demorgan262 = or i1 %1874, %1886
  %.v312 = select i1 %.demorgan262, i64 20, i64 129
  %1887 = add i64 %1843, %.v312
  store i64 %1887, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan262, label %block_401143, label %block_4011b0

block_401103:                                     ; preds = %block_4010bd
  %1888 = add i64 %3701, -1492
  %1889 = add i64 %3744, 10
  store i64 %1889, i64* %PC, align 8
  %1890 = inttoptr i64 %1888 to i32*
  store i32 0, i32* %1890, align 4
  %1891 = load i64, i64* %RBP, align 8
  %1892 = add i64 %1891, -4
  %1893 = load i64, i64* %PC, align 8
  %1894 = add i64 %1893, 7
  store i64 %1894, i64* %PC, align 8
  %1895 = inttoptr i64 %1892 to i32*
  store i32 1, i32* %1895, align 4
  %.pre210 = load i64, i64* %PC, align 8
  br label %block_401114

block_400fd3:                                     ; preds = %block_400ef6
  %1896 = sext i32 %2070 to i64
  store i64 %1896, i64* %RCX, align 8, !tbaa !2428
  %1897 = shl nsw i64 %1896, 2
  %1898 = add nsw i64 %1897, -1248
  %1899 = add i64 %1898, %2064
  %1900 = add i64 %2063, 17
  store i64 %1900, i64* %PC, align 8
  %1901 = inttoptr i64 %1899 to i32*
  %1902 = load i32, i32* %1901, align 4
  %1903 = sext i32 %1902 to i64
  store i64 %1903, i64* %RCX, align 8, !tbaa !2428
  %1904 = shl nsw i64 %1903, 2
  %1905 = add i64 %1904, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %1906 = add i64 %2063, 24
  store i64 %1906, i64* %PC, align 8
  %1907 = inttoptr i64 %1905 to i32*
  %1908 = load i32, i32* %1907, align 4
  %1909 = zext i32 %1908 to i64
  store i64 %1909, i64* %RAX, align 8, !tbaa !2428
  %1910 = add i64 %2063, 27
  store i64 %1910, i64* %PC, align 8
  %1911 = load i32, i32* %2067, align 4
  %1912 = add i32 %1911, 1
  %1913 = zext i32 %1912 to i64
  store i64 %1913, i64* %RDX, align 8, !tbaa !2428
  %1914 = icmp eq i32 %1911, -1
  %1915 = icmp eq i32 %1912, 0
  %1916 = or i1 %1914, %1915
  %1917 = zext i1 %1916 to i8
  store i8 %1917, i8* %16, align 1, !tbaa !2432
  %1918 = and i32 %1912, 255
  %1919 = tail call i32 @llvm.ctpop.i32(i32 %1918) #12
  %1920 = trunc i32 %1919 to i8
  %1921 = and i8 %1920, 1
  %1922 = xor i8 %1921, 1
  store i8 %1922, i8* %23, align 1, !tbaa !2446
  %1923 = xor i32 %1912, %1911
  %1924 = lshr i32 %1923, 4
  %1925 = trunc i32 %1924 to i8
  %1926 = and i8 %1925, 1
  store i8 %1926, i8* %29, align 1, !tbaa !2447
  %1927 = zext i1 %1915 to i8
  store i8 %1927, i8* %32, align 1, !tbaa !2448
  %1928 = lshr i32 %1912, 31
  %1929 = trunc i32 %1928 to i8
  store i8 %1929, i8* %35, align 1, !tbaa !2449
  %1930 = lshr i32 %1911, 31
  %1931 = xor i32 %1928, %1930
  %1932 = add nuw nsw i32 %1931, %1928
  %1933 = icmp eq i32 %1932, 2
  %1934 = zext i1 %1933 to i8
  store i8 %1934, i8* %41, align 1, !tbaa !2450
  %1935 = sext i32 %1912 to i64
  store i64 %1935, i64* %RCX, align 8, !tbaa !2428
  %1936 = shl nsw i64 %1935, 2
  %1937 = add nsw i64 %1936, -1248
  %1938 = add i64 %1937, %2064
  %1939 = add i64 %2063, 40
  store i64 %1939, i64* %PC, align 8
  %1940 = inttoptr i64 %1938 to i32*
  store i32 %1908, i32* %1940, align 4
  %.pre205 = load i64, i64* %PC, align 8
  %.pre206 = load i64, i64* %RBP, align 8
  br label %block_400ffb

block_401121:                                     ; preds = %block_401114
  %1941 = add i64 %3287, -16
  %1942 = add i64 %3316, 7
  store i64 %1942, i64* %PC, align 8
  %1943 = inttoptr i64 %1941 to i32*
  store i32 1, i32* %1943, align 4
  %1944 = load i64, i64* %RBP, align 8
  %1945 = add i64 %1944, -8
  %1946 = load i64, i64* %PC, align 8
  %1947 = add i64 %1946, 7
  store i64 %1947, i64* %PC, align 8
  %1948 = inttoptr i64 %1945 to i32*
  store i32 1, i32* %1948, align 4
  %.pre211 = load i64, i64* %PC, align 8
  br label %block_40112f

block_400be4:                                     ; preds = %block_400bbb, %block_400bd7
  %1949 = phi i64 [ %941, %block_400bbb ], [ %.pre186, %block_400bd7 ]
  %1950 = load i64, i64* %RBP, align 8
  %1951 = add i64 %1950, -2693
  %1952 = add i64 %1949, 6
  store i64 %1952, i64* %PC, align 8
  %1953 = inttoptr i64 %1951 to i8*
  %1954 = load i8, i8* %1953, align 1
  store i8 %1954, i8* %AL, align 1, !tbaa !2451
  %1955 = and i8 %1954, 1
  store i8 0, i8* %16, align 1, !tbaa !2432
  %1956 = zext i8 %1955 to i32
  %1957 = tail call i32 @llvm.ctpop.i32(i32 %1956) #12
  %1958 = trunc i32 %1957 to i8
  %1959 = xor i8 %1958, 1
  store i8 %1959, i8* %23, align 1, !tbaa !2446
  %1960 = xor i8 %1955, 1
  store i8 %1960, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %1961 = icmp eq i8 %1960, 0
  %.v275 = select i1 %1961, i64 19, i64 14
  %1962 = add i64 %1949, %.v275
  store i64 %1962, i64* %PC, align 8, !tbaa !2428
  %1963 = add i64 %1950, -16
  br i1 %1961, label %block_400bf7, label %block_400bf2

block_4016fb:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1, %block_4015a2
  %1964 = phi i64 [ %4516, %block_4015a2 ], [ %.pre249, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %1965 = phi i64 [ %2120, %block_4015a2 ], [ %.pre248, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.34, %block_4015a2 ], [ %3627, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %1966 = add i64 %1964, -4
  %1967 = add i64 %1965, 8
  store i64 %1967, i64* %PC, align 8
  %1968 = inttoptr i64 %1966 to i32*
  %1969 = load i32, i32* %1968, align 4
  %1970 = add i32 %1969, 1
  %1971 = zext i32 %1970 to i64
  store i64 %1971, i64* %RAX, align 8, !tbaa !2428
  %1972 = icmp eq i32 %1969, -1
  %1973 = icmp eq i32 %1970, 0
  %1974 = or i1 %1972, %1973
  %1975 = zext i1 %1974 to i8
  store i8 %1975, i8* %16, align 1, !tbaa !2432
  %1976 = and i32 %1970, 255
  %1977 = tail call i32 @llvm.ctpop.i32(i32 %1976) #12
  %1978 = trunc i32 %1977 to i8
  %1979 = and i8 %1978, 1
  %1980 = xor i8 %1979, 1
  store i8 %1980, i8* %23, align 1, !tbaa !2446
  %1981 = xor i32 %1970, %1969
  %1982 = lshr i32 %1981, 4
  %1983 = trunc i32 %1982 to i8
  %1984 = and i8 %1983, 1
  store i8 %1984, i8* %29, align 1, !tbaa !2447
  %1985 = zext i1 %1973 to i8
  store i8 %1985, i8* %32, align 1, !tbaa !2448
  %1986 = lshr i32 %1970, 31
  %1987 = trunc i32 %1986 to i8
  store i8 %1987, i8* %35, align 1, !tbaa !2449
  %1988 = lshr i32 %1969, 31
  %1989 = xor i32 %1986, %1988
  %1990 = add nuw nsw i32 %1989, %1986
  %1991 = icmp eq i32 %1990, 2
  %1992 = zext i1 %1991 to i8
  store i8 %1992, i8* %41, align 1, !tbaa !2450
  %1993 = add i64 %1965, 14
  store i64 %1993, i64* %PC, align 8
  store i32 %1970, i32* %1968, align 4
  %1994 = load i64, i64* %PC, align 8
  %1995 = add i64 %1994, -552
  store i64 %1995, i64* %PC, align 8, !tbaa !2428
  br label %block_4014e1

block_400ef6:                                     ; preds = %block_400eef, %block_400fc0
  %1996 = phi i64 [ %.pre199, %block_400eef ], [ %683, %block_400fc0 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.31, %block_400eef ], [ %MEMORY.2, %block_400fc0 ]
  %1997 = load i64, i64* %RBP, align 8
  %1998 = add i64 %1997, -4
  %1999 = add i64 %1996, 3
  store i64 %1999, i64* %PC, align 8
  %2000 = inttoptr i64 %1998 to i32*
  %2001 = load i32, i32* %2000, align 4
  %2002 = zext i32 %2001 to i64
  store i64 %2002, i64* %RAX, align 8, !tbaa !2428
  %2003 = add i64 %1997, -12
  %2004 = add i64 %1996, 6
  store i64 %2004, i64* %PC, align 8
  %2005 = inttoptr i64 %2003 to i32*
  %2006 = load i32, i32* %2005, align 4
  %2007 = add i32 %2006, 1
  %2008 = zext i32 %2007 to i64
  store i64 %2008, i64* %RCX, align 8, !tbaa !2428
  %2009 = icmp eq i32 %2006, -1
  %2010 = icmp eq i32 %2007, 0
  %2011 = or i1 %2009, %2010
  %2012 = zext i1 %2011 to i8
  store i8 %2012, i8* %16, align 1, !tbaa !2432
  %2013 = and i32 %2007, 255
  %2014 = tail call i32 @llvm.ctpop.i32(i32 %2013) #12
  %2015 = trunc i32 %2014 to i8
  %2016 = and i8 %2015, 1
  %2017 = xor i8 %2016, 1
  store i8 %2017, i8* %23, align 1, !tbaa !2446
  %2018 = xor i32 %2007, %2006
  %2019 = lshr i32 %2018, 4
  %2020 = trunc i32 %2019 to i8
  %2021 = and i8 %2020, 1
  store i8 %2021, i8* %29, align 1, !tbaa !2447
  %2022 = zext i1 %2010 to i8
  store i8 %2022, i8* %32, align 1, !tbaa !2448
  %2023 = lshr i32 %2007, 31
  %2024 = trunc i32 %2023 to i8
  store i8 %2024, i8* %35, align 1, !tbaa !2449
  %2025 = lshr i32 %2006, 31
  %2026 = xor i32 %2023, %2025
  %2027 = add nuw nsw i32 %2026, %2023
  %2028 = icmp eq i32 %2027, 2
  %2029 = zext i1 %2028 to i8
  store i8 %2029, i8* %41, align 1, !tbaa !2450
  %2030 = sext i32 %2007 to i64
  store i64 %2030, i64* %RDX, align 8, !tbaa !2428
  %2031 = shl nsw i64 %2030, 2
  %2032 = add nsw i64 %2031, -1328
  %2033 = add i64 %2032, %1997
  %2034 = add i64 %1996, 19
  store i64 %2034, i64* %PC, align 8
  %2035 = inttoptr i64 %2033 to i32*
  %2036 = load i32, i32* %2035, align 4
  %2037 = sub i32 %2001, %2036
  %2038 = icmp ult i32 %2001, %2036
  %2039 = zext i1 %2038 to i8
  store i8 %2039, i8* %16, align 1, !tbaa !2432
  %2040 = and i32 %2037, 255
  %2041 = tail call i32 @llvm.ctpop.i32(i32 %2040) #12
  %2042 = trunc i32 %2041 to i8
  %2043 = and i8 %2042, 1
  %2044 = xor i8 %2043, 1
  store i8 %2044, i8* %23, align 1, !tbaa !2446
  %2045 = xor i32 %2036, %2001
  %2046 = xor i32 %2045, %2037
  %2047 = lshr i32 %2046, 4
  %2048 = trunc i32 %2047 to i8
  %2049 = and i8 %2048, 1
  store i8 %2049, i8* %29, align 1, !tbaa !2447
  %2050 = icmp eq i32 %2037, 0
  %2051 = zext i1 %2050 to i8
  store i8 %2051, i8* %32, align 1, !tbaa !2448
  %2052 = lshr i32 %2037, 31
  %2053 = trunc i32 %2052 to i8
  store i8 %2053, i8* %35, align 1, !tbaa !2449
  %2054 = lshr i32 %2001, 31
  %2055 = lshr i32 %2036, 31
  %2056 = xor i32 %2055, %2054
  %2057 = xor i32 %2052, %2054
  %2058 = add nuw nsw i32 %2057, %2056
  %2059 = icmp eq i32 %2058, 2
  %2060 = zext i1 %2059 to i8
  store i8 %2060, i8* %41, align 1, !tbaa !2450
  %2061 = icmp ne i8 %2053, 0
  %2062 = xor i1 %2061, %2059
  %.demorgan274 = or i1 %2050, %2062
  %.v315 = select i1 %.demorgan274, i64 25, i64 221
  %2063 = add i64 %1996, %.v315
  %2064 = load i64, i64* %RBP, align 8
  %2065 = add i64 %2064, -12
  %2066 = add i64 %2063, 3
  store i64 %2066, i64* %PC, align 8
  %2067 = inttoptr i64 %2065 to i32*
  %2068 = load i32, i32* %2067, align 4
  %2069 = add i64 %2063, 6
  store i64 %2069, i64* %PC, align 8
  %2070 = add i32 %2068, 1
  %2071 = zext i32 %2070 to i64
  store i64 %2071, i64* %RAX, align 8, !tbaa !2428
  %2072 = icmp eq i32 %2068, -1
  %2073 = icmp eq i32 %2070, 0
  %2074 = or i1 %2072, %2073
  %2075 = zext i1 %2074 to i8
  store i8 %2075, i8* %16, align 1, !tbaa !2432
  %2076 = and i32 %2070, 255
  %2077 = tail call i32 @llvm.ctpop.i32(i32 %2076) #12
  %2078 = trunc i32 %2077 to i8
  %2079 = and i8 %2078, 1
  %2080 = xor i8 %2079, 1
  store i8 %2080, i8* %23, align 1, !tbaa !2446
  %2081 = xor i32 %2070, %2068
  %2082 = lshr i32 %2081, 4
  %2083 = trunc i32 %2082 to i8
  %2084 = and i8 %2083, 1
  store i8 %2084, i8* %29, align 1, !tbaa !2447
  %2085 = zext i1 %2073 to i8
  store i8 %2085, i8* %32, align 1, !tbaa !2448
  %2086 = lshr i32 %2070, 31
  %2087 = trunc i32 %2086 to i8
  store i8 %2087, i8* %35, align 1, !tbaa !2449
  %2088 = lshr i32 %2068, 31
  %2089 = xor i32 %2086, %2088
  %2090 = add nuw nsw i32 %2089, %2086
  %2091 = icmp eq i32 %2090, 2
  %2092 = zext i1 %2091 to i8
  store i8 %2092, i8* %41, align 1, !tbaa !2450
  br i1 %.demorgan274, label %block_400f0f, label %block_400fd3

block_4015a2:                                     ; preds = %block_401513
  %2093 = add i64 %4516, -4
  %2094 = add i64 %4559, 4
  store i64 %2094, i64* %PC, align 8
  %2095 = inttoptr i64 %2093 to i32*
  %2096 = load i32, i32* %2095, align 4
  %2097 = sext i32 %2096 to i64
  store i64 %2097, i64* %RAX, align 8, !tbaa !2428
  %2098 = shl nsw i64 %2097, 2
  %2099 = add i64 %4516, -1568
  %2100 = add i64 %2099, %2098
  %2101 = add i64 %4559, 12
  store i64 %2101, i64* %PC, align 8
  %2102 = inttoptr i64 %2100 to i32*
  %2103 = load i32, i32* %2102, align 4
  %2104 = sext i32 %2103 to i64
  store i64 %2104, i64* %RAX, align 8, !tbaa !2428
  %2105 = shl nsw i64 %2104, 2
  %2106 = add i64 %4516, -2640
  %2107 = add i64 %2106, %2105
  %2108 = add i64 %4559, 20
  store i64 %2108, i64* %PC, align 8
  %2109 = inttoptr i64 %2107 to i32*
  %2110 = load i32, i32* %2109, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %2111 = and i32 %2110, 255
  %2112 = tail call i32 @llvm.ctpop.i32(i32 %2111) #12
  %2113 = trunc i32 %2112 to i8
  %2114 = and i8 %2113, 1
  %2115 = xor i8 %2114, 1
  store i8 %2115, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %2116 = icmp eq i32 %2110, 0
  %2117 = zext i1 %2116 to i8
  store i8 %2117, i8* %32, align 1, !tbaa !2448
  %2118 = lshr i32 %2110, 31
  %2119 = trunc i32 %2118 to i8
  store i8 %2119, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %.v299 = select i1 %2116, i64 345, i64 26
  %2120 = add i64 %4559, %.v299
  store i64 %2120, i64* %PC, align 8, !tbaa !2428
  br i1 %2116, label %block_4016fb, label %block_4015bc

block_400d27:                                     ; preds = %block_400d13
  %2121 = add i64 %3079, -1168
  store i64 %2121, i64* %RAX, align 8, !tbaa !2428
  %2122 = add i64 %3122, 11
  store i64 %2122, i64* %PC, align 8
  %2123 = load i32, i32* %3087, align 4
  %2124 = sext i32 %2123 to i64
  %2125 = shl nsw i64 %2124, 6
  store i64 %2125, i64* %RCX, align 8, !tbaa !2428
  %2126 = add i64 %2125, %2121
  store i64 %2126, i64* %RAX, align 8, !tbaa !2428
  %2127 = icmp ult i64 %2126, %2121
  %2128 = icmp ult i64 %2126, %2125
  %2129 = or i1 %2127, %2128
  %2130 = zext i1 %2129 to i8
  store i8 %2130, i8* %16, align 1, !tbaa !2432
  %2131 = trunc i64 %2126 to i32
  %2132 = and i32 %2131, 255
  %2133 = tail call i32 @llvm.ctpop.i32(i32 %2132) #12
  %2134 = trunc i32 %2133 to i8
  %2135 = and i8 %2134, 1
  %2136 = xor i8 %2135, 1
  store i8 %2136, i8* %23, align 1, !tbaa !2446
  %2137 = xor i64 %2121, %2126
  %2138 = lshr i64 %2137, 4
  %2139 = trunc i64 %2138 to i8
  %2140 = and i8 %2139, 1
  store i8 %2140, i8* %29, align 1, !tbaa !2447
  %2141 = icmp eq i64 %2126, 0
  %2142 = zext i1 %2141 to i8
  store i8 %2142, i8* %32, align 1, !tbaa !2448
  %2143 = lshr i64 %2126, 63
  %2144 = trunc i64 %2143 to i8
  store i8 %2144, i8* %35, align 1, !tbaa !2449
  %2145 = lshr i64 %2121, 63
  %2146 = lshr i64 %2124, 57
  %2147 = and i64 %2146, 1
  %2148 = xor i64 %2143, %2145
  %2149 = xor i64 %2143, %2147
  %2150 = add nuw nsw i64 %2148, %2149
  %2151 = icmp eq i64 %2150, 2
  %2152 = zext i1 %2151 to i8
  store i8 %2152, i8* %41, align 1, !tbaa !2450
  %2153 = add i64 %3122, 22
  store i64 %2153, i64* %PC, align 8
  %2154 = load i32, i32* %3082, align 4
  %2155 = sext i32 %2154 to i64
  store i64 %2155, i64* %RCX, align 8, !tbaa !2428
  %2156 = shl nsw i64 %2155, 2
  %2157 = add i64 %2156, %2126
  %2158 = add i64 %3122, 26
  store i64 %2158, i64* %PC, align 8
  %2159 = inttoptr i64 %2157 to i32*
  %2160 = load i32, i32* %2159, align 4
  %2161 = add i32 %2160, 1
  %2162 = icmp ne i32 %2160, -1
  %2163 = zext i1 %2162 to i8
  store i8 %2163, i8* %16, align 1, !tbaa !2432
  %2164 = and i32 %2161, 255
  %2165 = tail call i32 @llvm.ctpop.i32(i32 %2164) #12
  %2166 = trunc i32 %2165 to i8
  %2167 = and i8 %2166, 1
  %2168 = xor i8 %2167, 1
  store i8 %2168, i8* %23, align 1, !tbaa !2446
  %2169 = xor i32 %2160, 16
  %2170 = xor i32 %2169, %2161
  %2171 = lshr i32 %2170, 4
  %2172 = trunc i32 %2171 to i8
  %2173 = and i8 %2172, 1
  store i8 %2173, i8* %29, align 1, !tbaa !2447
  %2174 = icmp eq i32 %2161, 0
  %2175 = zext i1 %2174 to i8
  store i8 %2175, i8* %32, align 1, !tbaa !2448
  %2176 = lshr i32 %2161, 31
  %2177 = trunc i32 %2176 to i8
  store i8 %2177, i8* %35, align 1, !tbaa !2449
  %2178 = lshr i32 %2160, 31
  %2179 = xor i32 %2178, 1
  %2180 = xor i32 %2176, %2178
  %2181 = add nuw nsw i32 %2180, %2179
  %2182 = icmp eq i32 %2181, 2
  %2183 = zext i1 %2182 to i8
  store i8 %2183, i8* %41, align 1, !tbaa !2450
  %.v318 = select i1 %2174, i64 154, i64 32
  %2184 = add i64 %3122, %.v318
  store i64 %2184, i64* %PC, align 8, !tbaa !2428
  br i1 %2174, label %block_400dc1, label %block_400d47

block_400993:                                     ; preds = %block_400986
  %2185 = add i64 %1054, 4
  store i64 %2185, i64* %PC, align 8
  %2186 = load i32, i32* %1028, align 4
  %2187 = sext i32 %2186 to i64
  store i64 %2187, i64* %RAX, align 8, !tbaa !2428
  %2188 = shl nsw i64 %2187, 2
  %2189 = add i64 %2188, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %2190 = add i64 %1054, 12
  store i64 %2190, i64* %PC, align 8
  %2191 = inttoptr i64 %2189 to i32*
  %2192 = load i32, i32* %2191, align 4
  %2193 = add i32 %2192, 1
  %2194 = icmp ne i32 %2192, -1
  %2195 = zext i1 %2194 to i8
  store i8 %2195, i8* %16, align 1, !tbaa !2432
  %2196 = and i32 %2193, 255
  %2197 = tail call i32 @llvm.ctpop.i32(i32 %2196) #12
  %2198 = trunc i32 %2197 to i8
  %2199 = and i8 %2198, 1
  %2200 = xor i8 %2199, 1
  store i8 %2200, i8* %23, align 1, !tbaa !2446
  %2201 = xor i32 %2192, 16
  %2202 = xor i32 %2201, %2193
  %2203 = lshr i32 %2202, 4
  %2204 = trunc i32 %2203 to i8
  %2205 = and i8 %2204, 1
  store i8 %2205, i8* %29, align 1, !tbaa !2447
  %2206 = icmp eq i32 %2193, 0
  %2207 = zext i1 %2206 to i8
  store i8 %2207, i8* %32, align 1, !tbaa !2448
  %2208 = lshr i32 %2193, 31
  %2209 = trunc i32 %2208 to i8
  store i8 %2209, i8* %35, align 1, !tbaa !2449
  %2210 = lshr i32 %2192, 31
  %2211 = xor i32 %2210, 1
  %2212 = xor i32 %2208, %2210
  %2213 = add nuw nsw i32 %2212, %2211
  %2214 = icmp eq i32 %2213, 2
  %2215 = zext i1 %2214 to i8
  store i8 %2215, i8* %41, align 1, !tbaa !2450
  %.v322 = select i1 %2206, i64 88, i64 18
  %2216 = add i64 %1054, %.v322
  store i64 %2216, i64* %PC, align 8, !tbaa !2428
  br i1 %2206, label %block_4009eb, label %block_4009a5

block_4015f8:                                     ; preds = %block_4015bc, %block_401661
  %2217 = phi i64 [ %.pre237, %block_4015bc ], [ %4591, %block_401661 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.34, %block_4015bc ], [ %MEMORY.35, %block_401661 ]
  %2218 = load i64, i64* %RBP, align 8
  %2219 = add i64 %2218, -8
  %2220 = add i64 %2217, 3
  store i64 %2220, i64* %PC, align 8
  %2221 = inttoptr i64 %2219 to i32*
  %2222 = load i32, i32* %2221, align 4
  %2223 = zext i32 %2222 to i64
  store i64 %2223, i64* %RAX, align 8, !tbaa !2428
  %2224 = add i64 %2218, -12
  %2225 = add i64 %2217, 7
  store i64 %2225, i64* %PC, align 8
  %2226 = inttoptr i64 %2224 to i32*
  %2227 = load i32, i32* %2226, align 4
  %2228 = sext i32 %2227 to i64
  store i64 %2228, i64* %RCX, align 8, !tbaa !2428
  %2229 = shl nsw i64 %2228, 2
  %2230 = add nsw i64 %2229, -1328
  %2231 = add i64 %2230, %2218
  %2232 = add i64 %2217, 14
  store i64 %2232, i64* %PC, align 8
  %2233 = inttoptr i64 %2231 to i32*
  %2234 = load i32, i32* %2233, align 4
  %2235 = sub i32 %2222, %2234
  %2236 = icmp ult i32 %2222, %2234
  %2237 = zext i1 %2236 to i8
  store i8 %2237, i8* %16, align 1, !tbaa !2432
  %2238 = and i32 %2235, 255
  %2239 = tail call i32 @llvm.ctpop.i32(i32 %2238) #12
  %2240 = trunc i32 %2239 to i8
  %2241 = and i8 %2240, 1
  %2242 = xor i8 %2241, 1
  store i8 %2242, i8* %23, align 1, !tbaa !2446
  %2243 = xor i32 %2234, %2222
  %2244 = xor i32 %2243, %2235
  %2245 = lshr i32 %2244, 4
  %2246 = trunc i32 %2245 to i8
  %2247 = and i8 %2246, 1
  store i8 %2247, i8* %29, align 1, !tbaa !2447
  %2248 = icmp eq i32 %2235, 0
  %2249 = zext i1 %2248 to i8
  store i8 %2249, i8* %32, align 1, !tbaa !2448
  %2250 = lshr i32 %2235, 31
  %2251 = trunc i32 %2250 to i8
  store i8 %2251, i8* %35, align 1, !tbaa !2449
  %2252 = lshr i32 %2222, 31
  %2253 = lshr i32 %2234, 31
  %2254 = xor i32 %2253, %2252
  %2255 = xor i32 %2250, %2252
  %2256 = add nuw nsw i32 %2255, %2254
  %2257 = icmp eq i32 %2256, 2
  %2258 = zext i1 %2257 to i8
  store i8 %2258, i8* %41, align 1, !tbaa !2450
  %2259 = icmp ne i8 %2251, 0
  %2260 = xor i1 %2259, %2257
  %.v300 = select i1 %2260, i64 20, i64 124
  %2261 = add i64 %2217, %.v300
  store i64 %2261, i64* %PC, align 8, !tbaa !2428
  br i1 %2260, label %block_40160c, label %block_401674

block_400cdc:                                     ; preds = %block_400cd2
  %2262 = add i64 %2346, -1168
  store i64 %2262, i64* %RAX, align 8, !tbaa !2428
  %2263 = add i64 %2346, -12
  %2264 = add i64 %2375, 10
  store i64 %2264, i64* %PC, align 8
  %2265 = inttoptr i64 %2263 to i32*
  %2266 = load i32, i32* %2265, align 4
  %2267 = add i32 %2266, 1
  %2268 = zext i32 %2267 to i64
  store i64 %2268, i64* %RCX, align 8, !tbaa !2428
  %2269 = sext i32 %2267 to i64
  %2270 = shl nsw i64 %2269, 6
  store i64 %2270, i64* %RDX, align 8, !tbaa !2428
  %2271 = add i64 %2270, %2262
  store i64 %2271, i64* %RAX, align 8, !tbaa !2428
  %2272 = icmp ult i64 %2271, %2262
  %2273 = icmp ult i64 %2271, %2270
  %2274 = or i1 %2272, %2273
  %2275 = zext i1 %2274 to i8
  store i8 %2275, i8* %16, align 1, !tbaa !2432
  %2276 = trunc i64 %2271 to i32
  %2277 = and i32 %2276, 255
  %2278 = tail call i32 @llvm.ctpop.i32(i32 %2277) #12
  %2279 = trunc i32 %2278 to i8
  %2280 = and i8 %2279, 1
  %2281 = xor i8 %2280, 1
  store i8 %2281, i8* %23, align 1, !tbaa !2446
  %2282 = xor i64 %2262, %2271
  %2283 = lshr i64 %2282, 4
  %2284 = trunc i64 %2283 to i8
  %2285 = and i8 %2284, 1
  store i8 %2285, i8* %29, align 1, !tbaa !2447
  %2286 = icmp eq i64 %2271, 0
  %2287 = zext i1 %2286 to i8
  store i8 %2287, i8* %32, align 1, !tbaa !2448
  %2288 = lshr i64 %2271, 63
  %2289 = trunc i64 %2288 to i8
  store i8 %2289, i8* %35, align 1, !tbaa !2449
  %2290 = lshr i64 %2262, 63
  %2291 = lshr i64 %2269, 57
  %2292 = and i64 %2291, 1
  %2293 = xor i64 %2288, %2290
  %2294 = xor i64 %2288, %2292
  %2295 = add nuw nsw i64 %2293, %2294
  %2296 = icmp eq i64 %2295, 2
  %2297 = zext i1 %2296 to i8
  store i8 %2297, i8* %41, align 1, !tbaa !2450
  %2298 = load i64, i64* %RBP, align 8
  %2299 = add i64 %2298, -4
  %2300 = add i64 %2375, 27
  store i64 %2300, i64* %PC, align 8
  %2301 = inttoptr i64 %2299 to i32*
  %2302 = load i32, i32* %2301, align 4
  %2303 = sext i32 %2302 to i64
  store i64 %2303, i64* %RDX, align 8, !tbaa !2428
  %2304 = shl nsw i64 %2303, 2
  %2305 = add i64 %2304, %2271
  %2306 = add i64 %2375, 34
  store i64 %2306, i64* %PC, align 8
  %2307 = inttoptr i64 %2305 to i32*
  store i32 0, i32* %2307, align 4
  %2308 = load i64, i64* %RBP, align 8
  %2309 = add i64 %2308, -4
  %2310 = load i64, i64* %PC, align 8
  %2311 = add i64 %2310, 3
  store i64 %2311, i64* %PC, align 8
  %2312 = inttoptr i64 %2309 to i32*
  %2313 = load i32, i32* %2312, align 4
  %2314 = add i32 %2313, 1
  %2315 = zext i32 %2314 to i64
  store i64 %2315, i64* %RAX, align 8, !tbaa !2428
  %2316 = icmp eq i32 %2313, -1
  %2317 = icmp eq i32 %2314, 0
  %2318 = or i1 %2316, %2317
  %2319 = zext i1 %2318 to i8
  store i8 %2319, i8* %16, align 1, !tbaa !2432
  %2320 = and i32 %2314, 255
  %2321 = tail call i32 @llvm.ctpop.i32(i32 %2320) #12
  %2322 = trunc i32 %2321 to i8
  %2323 = and i8 %2322, 1
  %2324 = xor i8 %2323, 1
  store i8 %2324, i8* %23, align 1, !tbaa !2446
  %2325 = xor i32 %2314, %2313
  %2326 = lshr i32 %2325, 4
  %2327 = trunc i32 %2326 to i8
  %2328 = and i8 %2327, 1
  store i8 %2328, i8* %29, align 1, !tbaa !2447
  %2329 = zext i1 %2317 to i8
  store i8 %2329, i8* %32, align 1, !tbaa !2448
  %2330 = lshr i32 %2314, 31
  %2331 = trunc i32 %2330 to i8
  store i8 %2331, i8* %35, align 1, !tbaa !2449
  %2332 = lshr i32 %2313, 31
  %2333 = xor i32 %2330, %2332
  %2334 = add nuw nsw i32 %2333, %2330
  %2335 = icmp eq i32 %2334, 2
  %2336 = zext i1 %2335 to i8
  store i8 %2336, i8* %41, align 1, !tbaa !2450
  %2337 = add i64 %2310, 9
  store i64 %2337, i64* %PC, align 8
  store i32 %2314, i32* %2312, align 4
  %2338 = load i64, i64* %PC, align 8
  %2339 = add i64 %2338, -53
  store i64 %2339, i64* %PC, align 8, !tbaa !2428
  br label %block_400cd2

block_4017fd:                                     ; preds = %block_400a46
  %2340 = add i64 %5193, 7
  store i64 %2340, i64* %PC, align 8
  store i32 0, i32* %874, align 4
  %.pre255 = load i64, i64* %PC, align 8
  br label %block_401804

block_400edb:                                     ; preds = %block_400e97
  %2341 = add i64 %3266, -1248
  %2342 = add i64 %3236, 20
  store i64 %2342, i64* %PC, align 8
  %2343 = inttoptr i64 %2341 to i32*
  store i32 0, i32* %2343, align 4
  %.pre198 = load i64, i64* %PC, align 8
  br label %block_400eef

block_4014da:                                     ; preds = %block_401467
  %2344 = add i64 %4514, 7
  store i64 %2344, i64* %PC, align 8
  store i32 0, i32* %4488, align 4
  %.pre230 = load i64, i64* %PC, align 8
  br label %block_4014e1

block_400cd2:                                     ; preds = %block_400ccb, %block_400cdc
  %2345 = phi i64 [ %.pre192, %block_400ccb ], [ %2339, %block_400cdc ]
  %2346 = load i64, i64* %RBP, align 8
  %2347 = add i64 %2346, -4
  %2348 = add i64 %2345, 4
  store i64 %2348, i64* %PC, align 8
  %2349 = inttoptr i64 %2347 to i32*
  %2350 = load i32, i32* %2349, align 4
  %2351 = add i32 %2350, -16
  %2352 = icmp ult i32 %2350, 16
  %2353 = zext i1 %2352 to i8
  store i8 %2353, i8* %16, align 1, !tbaa !2432
  %2354 = and i32 %2351, 255
  %2355 = tail call i32 @llvm.ctpop.i32(i32 %2354) #12
  %2356 = trunc i32 %2355 to i8
  %2357 = and i8 %2356, 1
  %2358 = xor i8 %2357, 1
  store i8 %2358, i8* %23, align 1, !tbaa !2446
  %2359 = xor i32 %2350, 16
  %2360 = xor i32 %2359, %2351
  %2361 = lshr i32 %2360, 4
  %2362 = trunc i32 %2361 to i8
  %2363 = and i8 %2362, 1
  store i8 %2363, i8* %29, align 1, !tbaa !2447
  %2364 = icmp eq i32 %2351, 0
  %2365 = zext i1 %2364 to i8
  store i8 %2365, i8* %32, align 1, !tbaa !2448
  %2366 = lshr i32 %2351, 31
  %2367 = trunc i32 %2366 to i8
  store i8 %2367, i8* %35, align 1, !tbaa !2449
  %2368 = lshr i32 %2350, 31
  %2369 = xor i32 %2366, %2368
  %2370 = add nuw nsw i32 %2369, %2368
  %2371 = icmp eq i32 %2370, 2
  %2372 = zext i1 %2371 to i8
  store i8 %2372, i8* %41, align 1, !tbaa !2450
  %2373 = icmp ne i8 %2367, 0
  %2374 = xor i1 %2373, %2371
  %.v289 = select i1 %2374, i64 10, i64 58
  %2375 = add i64 %2345, %.v289
  store i64 %2375, i64* %PC, align 8, !tbaa !2428
  br i1 %2374, label %block_400cdc, label %block_400d0c

block_4010d1:                                     ; preds = %block_4010bd
  %2376 = add i64 %3701, -1168
  store i64 %2376, i64* %RAX, align 8, !tbaa !2428
  %2377 = add i64 %3744, 11
  store i64 %2377, i64* %PC, align 8
  %2378 = load i32, i32* %3709, align 4
  %2379 = sext i32 %2378 to i64
  %2380 = shl nsw i64 %2379, 6
  store i64 %2380, i64* %RCX, align 8, !tbaa !2428
  %2381 = add i64 %2380, %2376
  store i64 %2381, i64* %RAX, align 8, !tbaa !2428
  %2382 = icmp ult i64 %2381, %2376
  %2383 = icmp ult i64 %2381, %2380
  %2384 = or i1 %2382, %2383
  %2385 = zext i1 %2384 to i8
  store i8 %2385, i8* %16, align 1, !tbaa !2432
  %2386 = trunc i64 %2381 to i32
  %2387 = and i32 %2386, 255
  %2388 = tail call i32 @llvm.ctpop.i32(i32 %2387) #12
  %2389 = trunc i32 %2388 to i8
  %2390 = and i8 %2389, 1
  %2391 = xor i8 %2390, 1
  store i8 %2391, i8* %23, align 1, !tbaa !2446
  %2392 = xor i64 %2376, %2381
  %2393 = lshr i64 %2392, 4
  %2394 = trunc i64 %2393 to i8
  %2395 = and i8 %2394, 1
  store i8 %2395, i8* %29, align 1, !tbaa !2447
  %2396 = icmp eq i64 %2381, 0
  %2397 = zext i1 %2396 to i8
  store i8 %2397, i8* %32, align 1, !tbaa !2448
  %2398 = lshr i64 %2381, 63
  %2399 = trunc i64 %2398 to i8
  store i8 %2399, i8* %35, align 1, !tbaa !2449
  %2400 = lshr i64 %2376, 63
  %2401 = lshr i64 %2379, 57
  %2402 = and i64 %2401, 1
  %2403 = xor i64 %2398, %2400
  %2404 = xor i64 %2398, %2402
  %2405 = add nuw nsw i64 %2403, %2404
  %2406 = icmp eq i64 %2405, 2
  %2407 = zext i1 %2406 to i8
  store i8 %2407, i8* %41, align 1, !tbaa !2450
  %2408 = add i64 %3744, 22
  store i64 %2408, i64* %PC, align 8
  %2409 = load i32, i32* %3704, align 4
  %2410 = sext i32 %2409 to i64
  store i64 %2410, i64* %RCX, align 8, !tbaa !2428
  %2411 = shl nsw i64 %2410, 2
  %2412 = add i64 %2411, %2381
  %2413 = add i64 %3744, 25
  store i64 %2413, i64* %PC, align 8
  %2414 = inttoptr i64 %2412 to i32*
  %2415 = load i32, i32* %2414, align 4
  %2416 = zext i32 %2415 to i64
  store i64 %2416, i64* %RDX, align 8, !tbaa !2428
  %2417 = add i64 %3744, 29
  store i64 %2417, i64* %PC, align 8
  %2418 = load i32, i32* %3704, align 4
  %2419 = sext i32 %2418 to i64
  store i64 %2419, i64* %RAX, align 8, !tbaa !2428
  %2420 = shl nsw i64 %2419, 2
  %2421 = add i64 %3701, -2688
  %2422 = add i64 %2421, %2420
  %2423 = add i64 %3744, 36
  store i64 %2423, i64* %PC, align 8
  %2424 = inttoptr i64 %2422 to i32*
  store i32 %2415, i32* %2424, align 4
  %2425 = load i64, i64* %RBP, align 8
  %2426 = add i64 %2425, -4
  %2427 = load i64, i64* %PC, align 8
  %2428 = add i64 %2427, 3
  store i64 %2428, i64* %PC, align 8
  %2429 = inttoptr i64 %2426 to i32*
  %2430 = load i32, i32* %2429, align 4
  %2431 = add i32 %2430, 1
  %2432 = zext i32 %2431 to i64
  store i64 %2432, i64* %RAX, align 8, !tbaa !2428
  %2433 = icmp eq i32 %2430, -1
  %2434 = icmp eq i32 %2431, 0
  %2435 = or i1 %2433, %2434
  %2436 = zext i1 %2435 to i8
  store i8 %2436, i8* %16, align 1, !tbaa !2432
  %2437 = and i32 %2431, 255
  %2438 = tail call i32 @llvm.ctpop.i32(i32 %2437) #12
  %2439 = trunc i32 %2438 to i8
  %2440 = and i8 %2439, 1
  %2441 = xor i8 %2440, 1
  store i8 %2441, i8* %23, align 1, !tbaa !2446
  %2442 = xor i32 %2431, %2430
  %2443 = lshr i32 %2442, 4
  %2444 = trunc i32 %2443 to i8
  %2445 = and i8 %2444, 1
  store i8 %2445, i8* %29, align 1, !tbaa !2447
  %2446 = zext i1 %2434 to i8
  store i8 %2446, i8* %32, align 1, !tbaa !2448
  %2447 = lshr i32 %2431, 31
  %2448 = trunc i32 %2447 to i8
  store i8 %2448, i8* %35, align 1, !tbaa !2449
  %2449 = lshr i32 %2430, 31
  %2450 = xor i32 %2447, %2449
  %2451 = add nuw nsw i32 %2450, %2447
  %2452 = icmp eq i32 %2451, 2
  %2453 = zext i1 %2452 to i8
  store i8 %2453, i8* %41, align 1, !tbaa !2450
  %2454 = add i64 %2427, 9
  store i64 %2454, i64* %PC, align 8
  store i32 %2431, i32* %2429, align 4
  %2455 = load i64, i64* %PC, align 8
  %2456 = add i64 %2455, -65
  store i64 %2456, i64* %PC, align 8, !tbaa !2428
  br label %block_4010bd

block_401221:                                     ; preds = %block_401434, %block_40121a
  %2457 = phi i64 [ %.pre219, %block_40121a ], [ %5319, %block_401434 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.25, %block_40121a ], [ %MEMORY.42, %block_401434 ]
  %2458 = load i64, i64* %RBP, align 8
  %2459 = add i64 %2458, -4
  %2460 = add i64 %2457, 3
  store i64 %2460, i64* %PC, align 8
  %2461 = inttoptr i64 %2459 to i32*
  %2462 = load i32, i32* %2461, align 4
  %2463 = zext i32 %2462 to i64
  store i64 %2463, i64* %RAX, align 8, !tbaa !2428
  %2464 = add i64 %2458, -12
  %2465 = add i64 %2457, 7
  store i64 %2465, i64* %PC, align 8
  %2466 = inttoptr i64 %2464 to i32*
  %2467 = load i32, i32* %2466, align 4
  %2468 = sext i32 %2467 to i64
  store i64 %2468, i64* %RCX, align 8, !tbaa !2428
  %2469 = shl nsw i64 %2468, 2
  %2470 = add nsw i64 %2469, -1328
  %2471 = add i64 %2470, %2458
  %2472 = add i64 %2457, 14
  store i64 %2472, i64* %PC, align 8
  %2473 = inttoptr i64 %2471 to i32*
  %2474 = load i32, i32* %2473, align 4
  %2475 = sub i32 %2462, %2474
  %2476 = icmp ult i32 %2462, %2474
  %2477 = zext i1 %2476 to i8
  store i8 %2477, i8* %16, align 1, !tbaa !2432
  %2478 = and i32 %2475, 255
  %2479 = tail call i32 @llvm.ctpop.i32(i32 %2478) #12
  %2480 = trunc i32 %2479 to i8
  %2481 = and i8 %2480, 1
  %2482 = xor i8 %2481, 1
  store i8 %2482, i8* %23, align 1, !tbaa !2446
  %2483 = xor i32 %2474, %2462
  %2484 = xor i32 %2483, %2475
  %2485 = lshr i32 %2484, 4
  %2486 = trunc i32 %2485 to i8
  %2487 = and i8 %2486, 1
  store i8 %2487, i8* %29, align 1, !tbaa !2447
  %2488 = icmp eq i32 %2475, 0
  %2489 = zext i1 %2488 to i8
  store i8 %2489, i8* %32, align 1, !tbaa !2448
  %2490 = lshr i32 %2475, 31
  %2491 = trunc i32 %2490 to i8
  store i8 %2491, i8* %35, align 1, !tbaa !2449
  %2492 = lshr i32 %2462, 31
  %2493 = lshr i32 %2474, 31
  %2494 = xor i32 %2493, %2492
  %2495 = xor i32 %2490, %2492
  %2496 = add nuw nsw i32 %2495, %2494
  %2497 = icmp eq i32 %2496, 2
  %2498 = zext i1 %2497 to i8
  store i8 %2498, i8* %41, align 1, !tbaa !2450
  %2499 = icmp ne i8 %2491, 0
  %2500 = xor i1 %2499, %2497
  %.demorgan265 = or i1 %2488, %2500
  %.v295 = select i1 %.demorgan265, i64 20, i64 575
  %2501 = add i64 %2457, %.v295
  store i64 %2501, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan265, label %block_401235, label %block_401460

block_400ae9:                                     ; preds = %block_40102e, %block_400aba
  %2502 = phi i64 [ %.pre183, %block_400aba ], [ %5381, %block_40102e ]
  %2503 = phi i64 [ %.pre182, %block_400aba ], [ %5369, %block_40102e ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.5, %block_400aba ], [ %MEMORY.27, %block_40102e ]
  %2504 = add i64 %2503, -12
  %2505 = add i64 %2502, 3
  store i64 %2505, i64* %PC, align 8
  %2506 = inttoptr i64 %2504 to i32*
  %2507 = load i32, i32* %2506, align 4
  %2508 = add i32 %2507, 1
  %2509 = zext i32 %2508 to i64
  store i64 %2509, i64* %RAX, align 8, !tbaa !2428
  %2510 = icmp eq i32 %2507, -1
  %2511 = icmp eq i32 %2508, 0
  %2512 = or i1 %2510, %2511
  %2513 = zext i1 %2512 to i8
  store i8 %2513, i8* %16, align 1, !tbaa !2432
  %2514 = and i32 %2508, 255
  %2515 = tail call i32 @llvm.ctpop.i32(i32 %2514) #12
  %2516 = trunc i32 %2515 to i8
  %2517 = and i8 %2516, 1
  %2518 = xor i8 %2517, 1
  store i8 %2518, i8* %23, align 1, !tbaa !2446
  %2519 = xor i32 %2508, %2507
  %2520 = lshr i32 %2519, 4
  %2521 = trunc i32 %2520 to i8
  %2522 = and i8 %2521, 1
  store i8 %2522, i8* %29, align 1, !tbaa !2447
  %2523 = zext i1 %2511 to i8
  store i8 %2523, i8* %32, align 1, !tbaa !2448
  %2524 = lshr i32 %2508, 31
  %2525 = trunc i32 %2524 to i8
  store i8 %2525, i8* %35, align 1, !tbaa !2449
  %2526 = lshr i32 %2507, 31
  %2527 = xor i32 %2524, %2526
  %2528 = add nuw nsw i32 %2527, %2524
  %2529 = icmp eq i32 %2528, 2
  %2530 = zext i1 %2529 to i8
  store i8 %2530, i8* %41, align 1, !tbaa !2450
  %2531 = add i64 %2502, 9
  store i64 %2531, i64* %PC, align 8
  store i32 %2508, i32* %2506, align 4
  %2532 = load i64, i64* %RBP, align 8
  %2533 = add i64 %2532, -12
  %2534 = load i64, i64* %PC, align 8
  %2535 = add i64 %2534, 4
  store i64 %2535, i64* %PC, align 8
  %2536 = inttoptr i64 %2533 to i32*
  %2537 = load i32, i32* %2536, align 4
  %2538 = sext i32 %2537 to i64
  store i64 %2538, i64* %RCX, align 8, !tbaa !2428
  %2539 = shl nsw i64 %2538, 2
  %2540 = add i64 %2532, -1248
  %2541 = add i64 %2540, %2539
  %2542 = add i64 %2534, 12
  store i64 %2542, i64* %PC, align 8
  %2543 = inttoptr i64 %2541 to i32*
  %2544 = load i32, i32* %2543, align 4
  %2545 = add i32 %2544, 1
  %2546 = icmp ne i32 %2544, -1
  %2547 = zext i1 %2546 to i8
  store i8 %2547, i8* %16, align 1, !tbaa !2432
  %2548 = and i32 %2545, 255
  %2549 = tail call i32 @llvm.ctpop.i32(i32 %2548) #12
  %2550 = trunc i32 %2549 to i8
  %2551 = and i8 %2550, 1
  %2552 = xor i8 %2551, 1
  store i8 %2552, i8* %23, align 1, !tbaa !2446
  %2553 = xor i32 %2544, 16
  %2554 = xor i32 %2553, %2545
  %2555 = lshr i32 %2554, 4
  %2556 = trunc i32 %2555 to i8
  %2557 = and i8 %2556, 1
  store i8 %2557, i8* %29, align 1, !tbaa !2447
  %2558 = icmp eq i32 %2545, 0
  %2559 = zext i1 %2558 to i8
  store i8 %2559, i8* %32, align 1, !tbaa !2448
  %2560 = lshr i32 %2545, 31
  %2561 = trunc i32 %2560 to i8
  store i8 %2561, i8* %35, align 1, !tbaa !2449
  %2562 = lshr i32 %2544, 31
  %2563 = xor i32 %2562, 1
  %2564 = xor i32 %2560, %2562
  %2565 = add nuw nsw i32 %2564, %2563
  %2566 = icmp eq i32 %2565, 2
  %2567 = zext i1 %2566 to i8
  store i8 %2567, i8* %41, align 1, !tbaa !2450
  %.v283 = select i1 %2558, i64 18, i64 192
  %2568 = add i64 %2534, %.v283
  store i64 %2568, i64* %PC, align 8, !tbaa !2428
  br i1 %2558, label %block_400b04, label %block_400bb2

block_4012bd:                                     ; preds = %block_4012ab
  %2569 = add i64 %3040, -1168
  store i64 %2569, i64* %RAX, align 8, !tbaa !2428
  %2570 = add i64 %3040, -12
  %2571 = add i64 %3075, 11
  store i64 %2571, i64* %PC, align 8
  %2572 = inttoptr i64 %2570 to i32*
  %2573 = load i32, i32* %2572, align 4
  %2574 = sext i32 %2573 to i64
  %2575 = shl nsw i64 %2574, 6
  store i64 %2575, i64* %RCX, align 8, !tbaa !2428
  %2576 = add i64 %2575, %2569
  store i64 %2576, i64* %RAX, align 8, !tbaa !2428
  %2577 = icmp ult i64 %2576, %2569
  %2578 = icmp ult i64 %2576, %2575
  %2579 = or i1 %2577, %2578
  %2580 = zext i1 %2579 to i8
  store i8 %2580, i8* %16, align 1, !tbaa !2432
  %2581 = trunc i64 %2576 to i32
  %2582 = and i32 %2581, 255
  %2583 = tail call i32 @llvm.ctpop.i32(i32 %2582) #12
  %2584 = trunc i32 %2583 to i8
  %2585 = and i8 %2584, 1
  %2586 = xor i8 %2585, 1
  store i8 %2586, i8* %23, align 1, !tbaa !2446
  %2587 = xor i64 %2569, %2576
  %2588 = lshr i64 %2587, 4
  %2589 = trunc i64 %2588 to i8
  %2590 = and i8 %2589, 1
  store i8 %2590, i8* %29, align 1, !tbaa !2447
  %2591 = icmp eq i64 %2576, 0
  %2592 = zext i1 %2591 to i8
  store i8 %2592, i8* %32, align 1, !tbaa !2448
  %2593 = lshr i64 %2576, 63
  %2594 = trunc i64 %2593 to i8
  store i8 %2594, i8* %35, align 1, !tbaa !2449
  %2595 = lshr i64 %2569, 63
  %2596 = lshr i64 %2574, 57
  %2597 = and i64 %2596, 1
  %2598 = xor i64 %2593, %2595
  %2599 = xor i64 %2593, %2597
  %2600 = add nuw nsw i64 %2598, %2599
  %2601 = icmp eq i64 %2600, 2
  %2602 = zext i1 %2601 to i8
  store i8 %2602, i8* %41, align 1, !tbaa !2450
  %2603 = add i64 %3075, 22
  store i64 %2603, i64* %PC, align 8
  %2604 = load i32, i32* %3043, align 4
  %2605 = sext i32 %2604 to i64
  store i64 %2605, i64* %RCX, align 8, !tbaa !2428
  %2606 = shl nsw i64 %2605, 2
  %2607 = add i64 %2606, %2576
  %2608 = add i64 %3075, 26
  store i64 %2608, i64* %PC, align 8
  %2609 = inttoptr i64 %2607 to i32*
  %2610 = load i32, i32* %2609, align 4
  %2611 = add i32 %2610, 1
  %2612 = icmp ne i32 %2610, -1
  %2613 = zext i1 %2612 to i8
  store i8 %2613, i8* %16, align 1, !tbaa !2432
  %2614 = and i32 %2611, 255
  %2615 = tail call i32 @llvm.ctpop.i32(i32 %2614) #12
  %2616 = trunc i32 %2615 to i8
  %2617 = and i8 %2616, 1
  %2618 = xor i8 %2617, 1
  store i8 %2618, i8* %23, align 1, !tbaa !2446
  %2619 = xor i32 %2610, 16
  %2620 = xor i32 %2619, %2611
  %2621 = lshr i32 %2620, 4
  %2622 = trunc i32 %2621 to i8
  %2623 = and i8 %2622, 1
  store i8 %2623, i8* %29, align 1, !tbaa !2447
  %2624 = icmp eq i32 %2611, 0
  %2625 = zext i1 %2624 to i8
  store i8 %2625, i8* %32, align 1, !tbaa !2448
  %2626 = lshr i32 %2611, 31
  %2627 = trunc i32 %2626 to i8
  store i8 %2627, i8* %35, align 1, !tbaa !2449
  %2628 = lshr i32 %2610, 31
  %2629 = xor i32 %2628, 1
  %2630 = xor i32 %2626, %2628
  %2631 = add nuw nsw i32 %2630, %2629
  %2632 = icmp eq i32 %2631, 2
  %2633 = zext i1 %2632 to i8
  store i8 %2633, i8* %41, align 1, !tbaa !2450
  %.v309 = select i1 %2624, i64 32, i64 67
  %2634 = add i64 %3075, %.v309
  store i64 %2634, i64* %PC, align 8, !tbaa !2428
  %2635 = load i64, i64* %RBP, align 8
  br i1 %2624, label %block_4012dd, label %block_401300

block_400d47:                                     ; preds = %block_400d27
  %2636 = load i64, i64* %RBP, align 8
  %2637 = add i64 %2636, -1168
  store i64 %2637, i64* %RAX, align 8, !tbaa !2428
  store i64 255, i64* %RCX, align 8, !tbaa !2428
  %2638 = add i64 %2636, -12
  %2639 = add i64 %2184, 16
  store i64 %2639, i64* %PC, align 8
  %2640 = inttoptr i64 %2638 to i32*
  %2641 = load i32, i32* %2640, align 4
  %2642 = sext i32 %2641 to i64
  store i64 %2642, i64* %RDX, align 8, !tbaa !2428
  %2643 = shl nsw i64 %2642, 2
  %2644 = add i64 %2636, -1248
  %2645 = add i64 %2644, %2643
  %2646 = add i64 %2184, 23
  store i64 %2646, i64* %PC, align 8
  %2647 = inttoptr i64 %2645 to i32*
  %2648 = load i32, i32* %2647, align 4
  %2649 = add i32 %2648, 255
  %2650 = zext i32 %2649 to i64
  store i64 %2650, i64* %RSI, align 8, !tbaa !2428
  %2651 = icmp ugt i32 %2648, -256
  %2652 = zext i1 %2651 to i8
  store i8 %2652, i8* %16, align 1, !tbaa !2432
  %2653 = and i32 %2649, 255
  %2654 = tail call i32 @llvm.ctpop.i32(i32 %2653) #12
  %2655 = trunc i32 %2654 to i8
  %2656 = and i8 %2655, 1
  %2657 = xor i8 %2656, 1
  store i8 %2657, i8* %23, align 1, !tbaa !2446
  %2658 = xor i32 %2648, 16
  %2659 = xor i32 %2658, %2649
  %2660 = lshr i32 %2659, 4
  %2661 = trunc i32 %2660 to i8
  %2662 = and i8 %2661, 1
  store i8 %2662, i8* %29, align 1, !tbaa !2447
  %2663 = icmp eq i32 %2649, 0
  %2664 = zext i1 %2663 to i8
  store i8 %2664, i8* %32, align 1, !tbaa !2448
  %2665 = lshr i32 %2649, 31
  %2666 = trunc i32 %2665 to i8
  store i8 %2666, i8* %35, align 1, !tbaa !2449
  %2667 = lshr i32 %2648, 31
  %2668 = xor i32 %2665, %2667
  %2669 = add nuw nsw i32 %2668, %2665
  %2670 = icmp eq i32 %2669, 2
  %2671 = zext i1 %2670 to i8
  store i8 %2671, i8* %41, align 1, !tbaa !2450
  %2672 = add i64 %2636, -16
  %2673 = add i64 %2184, 33
  store i64 %2673, i64* %PC, align 8
  %2674 = inttoptr i64 %2672 to i32*
  %2675 = load i32, i32* %2674, align 4
  %2676 = sext i32 %2675 to i64
  store i64 %2676, i64* %RDX, align 8, !tbaa !2428
  %2677 = shl nsw i64 %2676, 2
  %2678 = add nsw i64 %2677, -1248
  %2679 = add i64 %2678, %2636
  %2680 = add i64 %2184, 40
  store i64 %2680, i64* %PC, align 8
  %2681 = inttoptr i64 %2679 to i32*
  %2682 = load i32, i32* %2681, align 4
  %2683 = sub i32 %2649, %2682
  %2684 = zext i32 %2683 to i64
  store i64 %2684, i64* %RSI, align 8, !tbaa !2428
  %2685 = icmp ult i32 %2649, %2682
  %2686 = zext i1 %2685 to i8
  store i8 %2686, i8* %16, align 1, !tbaa !2432
  %2687 = and i32 %2683, 255
  %2688 = tail call i32 @llvm.ctpop.i32(i32 %2687) #12
  %2689 = trunc i32 %2688 to i8
  %2690 = and i8 %2689, 1
  %2691 = xor i8 %2690, 1
  store i8 %2691, i8* %23, align 1, !tbaa !2446
  %2692 = xor i32 %2682, %2649
  %2693 = xor i32 %2692, %2683
  %2694 = lshr i32 %2693, 4
  %2695 = trunc i32 %2694 to i8
  %2696 = and i8 %2695, 1
  store i8 %2696, i8* %29, align 1, !tbaa !2447
  %2697 = icmp eq i32 %2683, 0
  %2698 = zext i1 %2697 to i8
  store i8 %2698, i8* %32, align 1, !tbaa !2448
  %2699 = lshr i32 %2683, 31
  %2700 = trunc i32 %2699 to i8
  store i8 %2700, i8* %35, align 1, !tbaa !2449
  %2701 = lshr i32 %2682, 31
  %2702 = xor i32 %2701, %2665
  %2703 = xor i32 %2699, %2665
  %2704 = add nuw nsw i32 %2703, %2702
  %2705 = icmp eq i32 %2704, 2
  %2706 = zext i1 %2705 to i8
  store i8 %2706, i8* %41, align 1, !tbaa !2450
  %2707 = load i64, i64* %RBP, align 8
  %2708 = add i64 %2707, -16
  %2709 = add i64 %2184, 44
  store i64 %2709, i64* %PC, align 8
  %2710 = inttoptr i64 %2708 to i32*
  %2711 = load i32, i32* %2710, align 4
  %2712 = sext i32 %2711 to i64
  %2713 = shl nsw i64 %2712, 6
  store i64 %2713, i64* %RDX, align 8, !tbaa !2428
  %2714 = load i64, i64* %RAX, align 8
  %2715 = add i64 %2713, %2714
  store i64 %2715, i64* %RDI, align 8, !tbaa !2428
  %2716 = icmp ult i64 %2715, %2714
  %2717 = icmp ult i64 %2715, %2713
  %2718 = or i1 %2716, %2717
  %2719 = zext i1 %2718 to i8
  store i8 %2719, i8* %16, align 1, !tbaa !2432
  %2720 = trunc i64 %2715 to i32
  %2721 = and i32 %2720, 255
  %2722 = tail call i32 @llvm.ctpop.i32(i32 %2721) #12
  %2723 = trunc i32 %2722 to i8
  %2724 = and i8 %2723, 1
  %2725 = xor i8 %2724, 1
  store i8 %2725, i8* %23, align 1, !tbaa !2446
  %2726 = xor i64 %2714, %2715
  %2727 = lshr i64 %2726, 4
  %2728 = trunc i64 %2727 to i8
  %2729 = and i8 %2728, 1
  store i8 %2729, i8* %29, align 1, !tbaa !2447
  %2730 = icmp eq i64 %2715, 0
  %2731 = zext i1 %2730 to i8
  store i8 %2731, i8* %32, align 1, !tbaa !2448
  %2732 = lshr i64 %2715, 63
  %2733 = trunc i64 %2732 to i8
  store i8 %2733, i8* %35, align 1, !tbaa !2449
  %2734 = lshr i64 %2714, 63
  %2735 = lshr i64 %2712, 57
  %2736 = and i64 %2735, 1
  %2737 = xor i64 %2732, %2734
  %2738 = xor i64 %2732, %2736
  %2739 = add nuw nsw i64 %2737, %2738
  %2740 = icmp eq i64 %2739, 2
  %2741 = zext i1 %2740 to i8
  store i8 %2741, i8* %41, align 1, !tbaa !2450
  %2742 = add i64 %2707, -4
  %2743 = add i64 %2184, 58
  store i64 %2743, i64* %PC, align 8
  %2744 = inttoptr i64 %2742 to i32*
  %2745 = load i32, i32* %2744, align 4
  %2746 = sext i32 %2745 to i64
  store i64 %2746, i64* %RDX, align 8, !tbaa !2428
  %2747 = load i64, i64* %RSI, align 8
  %2748 = shl nsw i64 %2746, 2
  %2749 = add i64 %2715, %2748
  %2750 = add i64 %2184, 61
  store i64 %2750, i64* %PC, align 8
  %2751 = trunc i64 %2747 to i32
  %2752 = inttoptr i64 %2749 to i32*
  %2753 = load i32, i32* %2752, align 4
  %2754 = add i32 %2753, %2751
  %2755 = zext i32 %2754 to i64
  store i64 %2755, i64* %RSI, align 8, !tbaa !2428
  %2756 = icmp ult i32 %2754, %2751
  %2757 = icmp ult i32 %2754, %2753
  %2758 = or i1 %2756, %2757
  %2759 = zext i1 %2758 to i8
  store i8 %2759, i8* %16, align 1, !tbaa !2432
  %2760 = and i32 %2754, 255
  %2761 = tail call i32 @llvm.ctpop.i32(i32 %2760) #12
  %2762 = trunc i32 %2761 to i8
  %2763 = and i8 %2762, 1
  %2764 = xor i8 %2763, 1
  store i8 %2764, i8* %23, align 1, !tbaa !2446
  %2765 = xor i32 %2753, %2751
  %2766 = xor i32 %2765, %2754
  %2767 = lshr i32 %2766, 4
  %2768 = trunc i32 %2767 to i8
  %2769 = and i8 %2768, 1
  store i8 %2769, i8* %29, align 1, !tbaa !2447
  %2770 = icmp eq i32 %2754, 0
  %2771 = zext i1 %2770 to i8
  store i8 %2771, i8* %32, align 1, !tbaa !2448
  %2772 = lshr i32 %2754, 31
  %2773 = trunc i32 %2772 to i8
  store i8 %2773, i8* %35, align 1, !tbaa !2449
  %2774 = lshr i32 %2751, 31
  %2775 = lshr i32 %2753, 31
  %2776 = xor i32 %2772, %2774
  %2777 = xor i32 %2772, %2775
  %2778 = add nuw nsw i32 %2776, %2777
  %2779 = icmp eq i32 %2778, 2
  %2780 = zext i1 %2779 to i8
  store i8 %2780, i8* %41, align 1, !tbaa !2450
  %2781 = load i64, i64* %RBP, align 8
  %2782 = add i64 %2781, -2704
  %2783 = add i64 %2184, 68
  store i64 %2783, i64* %PC, align 8
  %2784 = inttoptr i64 %2782 to i64*
  store i64 %2714, i64* %2784, align 8
  %2785 = load i32, i32* %ESI, align 4
  %2786 = zext i32 %2785 to i64
  %2787 = load i64, i64* %PC, align 8
  store i64 %2786, i64* %RAX, align 8, !tbaa !2428
  %2788 = sext i32 %2785 to i64
  %2789 = lshr i64 %2788, 32
  store i64 %2789, i64* %55, align 8, !tbaa !2428
  %2790 = load i32, i32* %ECX, align 4
  %2791 = add i64 %2787, 5
  store i64 %2791, i64* %PC, align 8
  %2792 = sext i32 %2790 to i64
  %2793 = shl nuw i64 %2789, 32
  %2794 = or i64 %2793, %2786
  %2795 = sdiv i64 %2794, %2792
  %2796 = shl i64 %2795, 32
  %2797 = ashr exact i64 %2796, 32
  %2798 = icmp eq i64 %2795, %2797
  br i1 %2798, label %2801, label %2799

; <label>:2799:                                   ; preds = %block_400d47
  %2800 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2791, %struct.Memory* %MEMORY.23) #13
  %.pre194 = load i32, i32* %EDX, align 4
  %.pre195 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3

; <label>:2801:                                   ; preds = %block_400d47
  %2802 = srem i64 %2794, %2792
  %2803 = and i64 %2795, 4294967295
  store i64 %2803, i64* %RAX, align 8, !tbaa !2428
  %2804 = and i64 %2802, 4294967295
  store i64 %2804, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %2805 = trunc i64 %2802 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3: ; preds = %2801, %2799
  %2806 = phi i64 [ %.pre195, %2799 ], [ %2791, %2801 ]
  %2807 = phi i32 [ %.pre194, %2799 ], [ %2805, %2801 ]
  %2808 = phi %struct.Memory* [ %2800, %2799 ], [ %MEMORY.23, %2801 ]
  %2809 = sext i32 %2807 to i64
  store i64 %2809, i64* %RDI, align 8, !tbaa !2428
  %2810 = shl nsw i64 %2809, 2
  %2811 = add i64 %2810, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %2812 = add i64 %2806, 10
  store i64 %2812, i64* %PC, align 8
  %2813 = inttoptr i64 %2811 to i32*
  %2814 = load i32, i32* %2813, align 4
  %2815 = zext i32 %2814 to i64
  store i64 %2815, i64* %RCX, align 8, !tbaa !2428
  %2816 = load i64, i64* %RBP, align 8
  %2817 = add i64 %2816, -12
  %2818 = add i64 %2806, 13
  store i64 %2818, i64* %PC, align 8
  %2819 = inttoptr i64 %2817 to i32*
  %2820 = load i32, i32* %2819, align 4
  %2821 = add i32 %2820, 1
  %2822 = zext i32 %2821 to i64
  store i64 %2822, i64* %RDX, align 8, !tbaa !2428
  %2823 = icmp eq i32 %2821, 0
  %2824 = zext i1 %2823 to i8
  %2825 = lshr i32 %2821, 31
  %2826 = trunc i32 %2825 to i8
  %2827 = sext i32 %2821 to i64
  %2828 = shl nsw i64 %2827, 6
  store i64 %2828, i64* %RDI, align 8, !tbaa !2428
  store i8 %2826, i8* %16, align 1, !tbaa !2451
  %2829 = trunc i64 %2828 to i32
  %2830 = and i32 %2829, 192
  %2831 = tail call i32 @llvm.ctpop.i32(i32 %2830) #12
  %2832 = trunc i32 %2831 to i8
  %2833 = and i8 %2832, 1
  %2834 = xor i8 %2833, 1
  store i8 %2834, i8* %23, align 1, !tbaa !2451
  store i8 0, i8* %29, align 1, !tbaa !2451
  store i8 %2824, i8* %32, align 1, !tbaa !2451
  %2835 = lshr i64 %2827, 57
  %2836 = trunc i64 %2835 to i8
  %2837 = and i8 %2836, 1
  store i8 %2837, i8* %35, align 1, !tbaa !2451
  store i8 0, i8* %41, align 1, !tbaa !2451
  %2838 = add i64 %2816, -2704
  %2839 = add i64 %2806, 30
  store i64 %2839, i64* %PC, align 8
  %2840 = inttoptr i64 %2838 to i64*
  %2841 = load i64, i64* %2840, align 8
  %2842 = add i64 %2828, %2841
  store i64 %2842, i64* %R8, align 8, !tbaa !2428
  %2843 = icmp ult i64 %2842, %2841
  %2844 = icmp ult i64 %2842, %2828
  %2845 = or i1 %2843, %2844
  %2846 = zext i1 %2845 to i8
  store i8 %2846, i8* %16, align 1, !tbaa !2432
  %2847 = trunc i64 %2842 to i32
  %2848 = and i32 %2847, 255
  %2849 = tail call i32 @llvm.ctpop.i32(i32 %2848) #12
  %2850 = trunc i32 %2849 to i8
  %2851 = and i8 %2850, 1
  %2852 = xor i8 %2851, 1
  store i8 %2852, i8* %23, align 1, !tbaa !2446
  %2853 = xor i64 %2841, %2842
  %2854 = lshr i64 %2853, 4
  %2855 = trunc i64 %2854 to i8
  %2856 = and i8 %2855, 1
  store i8 %2856, i8* %29, align 1, !tbaa !2447
  %2857 = icmp eq i64 %2842, 0
  %2858 = zext i1 %2857 to i8
  store i8 %2858, i8* %32, align 1, !tbaa !2448
  %2859 = lshr i64 %2842, 63
  %2860 = trunc i64 %2859 to i8
  store i8 %2860, i8* %35, align 1, !tbaa !2449
  %2861 = lshr i64 %2841, 63
  %2862 = lshr i64 %2827, 57
  %2863 = and i64 %2862, 1
  %2864 = xor i64 %2859, %2861
  %2865 = xor i64 %2859, %2863
  %2866 = add nuw nsw i64 %2864, %2865
  %2867 = icmp eq i64 %2866, 2
  %2868 = zext i1 %2867 to i8
  store i8 %2868, i8* %41, align 1, !tbaa !2450
  %2869 = load i64, i64* %RBP, align 8
  %2870 = add i64 %2869, -4
  %2871 = add i64 %2806, 36
  store i64 %2871, i64* %PC, align 8
  %2872 = inttoptr i64 %2870 to i32*
  %2873 = load i32, i32* %2872, align 4
  %2874 = zext i32 %2873 to i64
  store i64 %2874, i64* %RDX, align 8, !tbaa !2428
  %2875 = add i64 %2869, -12
  %2876 = add i64 %2806, 39
  store i64 %2876, i64* %PC, align 8
  %2877 = inttoptr i64 %2875 to i32*
  %2878 = load i32, i32* %2877, align 4
  %2879 = add i32 %2878, %2873
  %2880 = zext i32 %2879 to i64
  store i64 %2880, i64* %RDX, align 8, !tbaa !2428
  %2881 = icmp ult i32 %2879, %2873
  %2882 = icmp ult i32 %2879, %2878
  %2883 = or i1 %2881, %2882
  %2884 = zext i1 %2883 to i8
  store i8 %2884, i8* %16, align 1, !tbaa !2432
  %2885 = and i32 %2879, 255
  %2886 = tail call i32 @llvm.ctpop.i32(i32 %2885) #12
  %2887 = trunc i32 %2886 to i8
  %2888 = and i8 %2887, 1
  %2889 = xor i8 %2888, 1
  store i8 %2889, i8* %23, align 1, !tbaa !2446
  %2890 = xor i32 %2878, %2873
  %2891 = xor i32 %2890, %2879
  %2892 = lshr i32 %2891, 4
  %2893 = trunc i32 %2892 to i8
  %2894 = and i8 %2893, 1
  store i8 %2894, i8* %29, align 1, !tbaa !2447
  %2895 = icmp eq i32 %2879, 0
  %2896 = zext i1 %2895 to i8
  store i8 %2896, i8* %32, align 1, !tbaa !2448
  %2897 = lshr i32 %2879, 31
  %2898 = trunc i32 %2897 to i8
  store i8 %2898, i8* %35, align 1, !tbaa !2449
  %2899 = lshr i32 %2873, 31
  %2900 = lshr i32 %2878, 31
  %2901 = xor i32 %2897, %2899
  %2902 = xor i32 %2897, %2900
  %2903 = add nuw nsw i32 %2901, %2902
  %2904 = icmp eq i32 %2903, 2
  %2905 = zext i1 %2904 to i8
  store i8 %2905, i8* %41, align 1, !tbaa !2450
  %2906 = add i64 %2869, -16
  %2907 = add i64 %2806, 42
  store i64 %2907, i64* %PC, align 8
  %2908 = inttoptr i64 %2906 to i32*
  %2909 = load i32, i32* %2908, align 4
  %2910 = sub i32 %2879, %2909
  %2911 = zext i32 %2910 to i64
  store i64 %2911, i64* %RDX, align 8, !tbaa !2428
  %2912 = icmp ult i32 %2879, %2909
  %2913 = zext i1 %2912 to i8
  store i8 %2913, i8* %16, align 1, !tbaa !2432
  %2914 = and i32 %2910, 255
  %2915 = tail call i32 @llvm.ctpop.i32(i32 %2914) #12
  %2916 = trunc i32 %2915 to i8
  %2917 = and i8 %2916, 1
  %2918 = xor i8 %2917, 1
  store i8 %2918, i8* %23, align 1, !tbaa !2446
  %2919 = xor i32 %2909, %2879
  %2920 = xor i32 %2919, %2910
  %2921 = lshr i32 %2920, 4
  %2922 = trunc i32 %2921 to i8
  %2923 = and i8 %2922, 1
  store i8 %2923, i8* %29, align 1, !tbaa !2447
  %2924 = icmp eq i32 %2910, 0
  %2925 = zext i1 %2924 to i8
  store i8 %2925, i8* %32, align 1, !tbaa !2448
  %2926 = lshr i32 %2910, 31
  %2927 = trunc i32 %2926 to i8
  store i8 %2927, i8* %35, align 1, !tbaa !2449
  %2928 = lshr i32 %2909, 31
  %2929 = xor i32 %2928, %2897
  %2930 = xor i32 %2926, %2897
  %2931 = add nuw nsw i32 %2930, %2929
  %2932 = icmp eq i32 %2931, 2
  %2933 = zext i1 %2932 to i8
  store i8 %2933, i8* %41, align 1, !tbaa !2450
  %2934 = sext i32 %2910 to i64
  store i64 %2934, i64* %RDI, align 8, !tbaa !2428
  %2935 = load i64, i64* %R8, align 8
  %2936 = shl nsw i64 %2934, 2
  %2937 = add i64 %2935, %2936
  %2938 = load i32, i32* %ECX, align 4
  %2939 = add i64 %2806, 49
  store i64 %2939, i64* %PC, align 8
  %2940 = inttoptr i64 %2937 to i32*
  store i32 %2938, i32* %2940, align 4
  %.pre196 = load i64, i64* %PC, align 8
  br label %block_400dc1

block_401474:                                     ; preds = %block_401467
  %2941 = add i64 %4514, 4
  store i64 %2941, i64* %PC, align 8
  %2942 = load i32, i32* %4488, align 4
  %2943 = sext i32 %2942 to i64
  store i64 %2943, i64* %RAX, align 8, !tbaa !2428
  %2944 = shl nsw i64 %2943, 2
  %2945 = add i64 %4485, -2640
  %2946 = add i64 %2945, %2944
  %2947 = add i64 %4514, 15
  store i64 %2947, i64* %PC, align 8
  %2948 = inttoptr i64 %2946 to i32*
  store i32 0, i32* %2948, align 4
  %2949 = load i64, i64* %RBP, align 8
  %2950 = add i64 %2949, -4
  %2951 = load i64, i64* %PC, align 8
  %2952 = add i64 %2951, 4
  store i64 %2952, i64* %PC, align 8
  %2953 = inttoptr i64 %2950 to i32*
  %2954 = load i32, i32* %2953, align 4
  %2955 = sext i32 %2954 to i64
  store i64 %2955, i64* %RAX, align 8, !tbaa !2428
  %2956 = shl nsw i64 %2955, 2
  %2957 = add i64 %2956, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %2958 = add i64 %2951, 12
  store i64 %2958, i64* %PC, align 8
  %2959 = inttoptr i64 %2957 to i32*
  %2960 = load i32, i32* %2959, align 4
  %2961 = add i32 %2960, 1
  %2962 = icmp ne i32 %2960, -1
  %2963 = zext i1 %2962 to i8
  store i8 %2963, i8* %16, align 1, !tbaa !2432
  %2964 = and i32 %2961, 255
  %2965 = tail call i32 @llvm.ctpop.i32(i32 %2964) #12
  %2966 = trunc i32 %2965 to i8
  %2967 = and i8 %2966, 1
  %2968 = xor i8 %2967, 1
  store i8 %2968, i8* %23, align 1, !tbaa !2446
  %2969 = xor i32 %2960, 16
  %2970 = xor i32 %2969, %2961
  %2971 = lshr i32 %2970, 4
  %2972 = trunc i32 %2971 to i8
  %2973 = and i8 %2972, 1
  store i8 %2973, i8* %29, align 1, !tbaa !2447
  %2974 = icmp eq i32 %2961, 0
  %2975 = zext i1 %2974 to i8
  store i8 %2975, i8* %32, align 1, !tbaa !2448
  %2976 = lshr i32 %2961, 31
  %2977 = trunc i32 %2976 to i8
  store i8 %2977, i8* %35, align 1, !tbaa !2449
  %2978 = lshr i32 %2960, 31
  %2979 = xor i32 %2978, 1
  %2980 = xor i32 %2976, %2978
  %2981 = add nuw nsw i32 %2980, %2979
  %2982 = icmp eq i32 %2981, 2
  %2983 = zext i1 %2982 to i8
  store i8 %2983, i8* %41, align 1, !tbaa !2450
  %.v267 = select i1 %2974, i64 53, i64 18
  %2984 = add i64 %2951, %.v267
  %2985 = add i64 %2984, 4
  store i64 %2985, i64* %PC, align 8
  %2986 = load i32, i32* %2953, align 4
  %2987 = sext i32 %2986 to i64
  store i64 %2987, i64* %RAX, align 8, !tbaa !2428
  %2988 = shl nsw i64 %2987, 2
  %2989 = add i64 %2988, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  br i1 %2974, label %block_4014b8, label %block_401495

block_4014b8:                                     ; preds = %block_401474
  %2990 = add i64 %2984, 15
  store i64 %2990, i64* %PC, align 8
  %2991 = inttoptr i64 %2989 to i32*
  store i32 0, i32* %2991, align 4
  %.pre250 = load i64, i64* %PC, align 8
  br label %block_4014c7

block_400eae:                                     ; preds = %block_400e97
  %2992 = add i64 %3266, -1488
  %2993 = add i64 %3236, 17
  store i64 %2993, i64* %PC, align 8
  %2994 = inttoptr i64 %2992 to i32*
  %2995 = load i32, i32* %2994, align 4
  %2996 = sext i32 %2995 to i64
  store i64 %2996, i64* %RCX, align 8, !tbaa !2428
  %2997 = shl nsw i64 %2996, 2
  %2998 = add i64 %2997, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %2999 = add i64 %3236, 24
  store i64 %2999, i64* %PC, align 8
  %3000 = inttoptr i64 %2998 to i32*
  %3001 = load i32, i32* %3000, align 4
  %3002 = zext i32 %3001 to i64
  store i64 %3002, i64* %RAX, align 8, !tbaa !2428
  %3003 = add i64 %3264, -12
  %3004 = add i64 %3236, 27
  store i64 %3004, i64* %PC, align 8
  %3005 = inttoptr i64 %3003 to i32*
  %3006 = load i32, i32* %3005, align 4
  %3007 = add i32 %3006, 1
  %3008 = zext i32 %3007 to i64
  store i64 %3008, i64* %RDX, align 8, !tbaa !2428
  %3009 = icmp eq i32 %3006, -1
  %3010 = icmp eq i32 %3007, 0
  %3011 = or i1 %3009, %3010
  %3012 = zext i1 %3011 to i8
  store i8 %3012, i8* %16, align 1, !tbaa !2432
  %3013 = and i32 %3007, 255
  %3014 = tail call i32 @llvm.ctpop.i32(i32 %3013) #12
  %3015 = trunc i32 %3014 to i8
  %3016 = and i8 %3015, 1
  %3017 = xor i8 %3016, 1
  store i8 %3017, i8* %23, align 1, !tbaa !2446
  %3018 = xor i32 %3007, %3006
  %3019 = lshr i32 %3018, 4
  %3020 = trunc i32 %3019 to i8
  %3021 = and i8 %3020, 1
  store i8 %3021, i8* %29, align 1, !tbaa !2447
  %3022 = zext i1 %3010 to i8
  store i8 %3022, i8* %32, align 1, !tbaa !2448
  %3023 = lshr i32 %3007, 31
  %3024 = trunc i32 %3023 to i8
  store i8 %3024, i8* %35, align 1, !tbaa !2449
  %3025 = lshr i32 %3006, 31
  %3026 = xor i32 %3023, %3025
  %3027 = add nuw nsw i32 %3026, %3023
  %3028 = icmp eq i32 %3027, 2
  %3029 = zext i1 %3028 to i8
  store i8 %3029, i8* %41, align 1, !tbaa !2450
  %3030 = sext i32 %3007 to i64
  store i64 %3030, i64* %RCX, align 8, !tbaa !2428
  %3031 = shl nsw i64 %3030, 2
  %3032 = add nsw i64 %3031, -1248
  %3033 = add i64 %3032, %3264
  %3034 = add i64 %3236, 40
  store i64 %3034, i64* %PC, align 8
  %3035 = inttoptr i64 %3033 to i32*
  store i32 %3001, i32* %3035, align 4
  %3036 = load i64, i64* %PC, align 8
  %3037 = add i64 %3036, 25
  store i64 %3037, i64* %PC, align 8, !tbaa !2428
  br label %block_400eef

block_4010b6:                                     ; preds = %block_40105e
  %3038 = add i64 %4842, 7
  store i64 %3038, i64* %PC, align 8
  store i32 1, i32* %4802, align 4
  %.pre209 = load i64, i64* %PC, align 8
  br label %block_4010bd

block_4012ab:                                     ; preds = %block_401247, %block_401235
  %3039 = phi i64 [ %5265, %block_401235 ], [ %5179, %block_401247 ]
  %3040 = phi i64 [ %2458, %block_401235 ], [ %.pre220, %block_401247 ]
  %3041 = add i64 %3040, -4
  %3042 = add i64 %3039, 4
  store i64 %3042, i64* %PC, align 8
  %3043 = inttoptr i64 %3041 to i32*
  %3044 = load i32, i32* %3043, align 4
  %3045 = sext i32 %3044 to i64
  store i64 %3045, i64* %RAX, align 8, !tbaa !2428
  %3046 = shl nsw i64 %3045, 2
  %3047 = add i64 %3040, -1488
  %3048 = add i64 %3047, %3046
  %3049 = add i64 %3039, 12
  store i64 %3049, i64* %PC, align 8
  %3050 = inttoptr i64 %3048 to i32*
  %3051 = load i32, i32* %3050, align 4
  %3052 = add i32 %3051, 1
  %3053 = icmp ne i32 %3051, -1
  %3054 = zext i1 %3053 to i8
  store i8 %3054, i8* %16, align 1, !tbaa !2432
  %3055 = and i32 %3052, 255
  %3056 = tail call i32 @llvm.ctpop.i32(i32 %3055) #12
  %3057 = trunc i32 %3056 to i8
  %3058 = and i8 %3057, 1
  %3059 = xor i8 %3058, 1
  store i8 %3059, i8* %23, align 1, !tbaa !2446
  %3060 = xor i32 %3051, 16
  %3061 = xor i32 %3060, %3052
  %3062 = lshr i32 %3061, 4
  %3063 = trunc i32 %3062 to i8
  %3064 = and i8 %3063, 1
  store i8 %3064, i8* %29, align 1, !tbaa !2447
  %3065 = icmp eq i32 %3052, 0
  %3066 = zext i1 %3065 to i8
  store i8 %3066, i8* %32, align 1, !tbaa !2448
  %3067 = lshr i32 %3052, 31
  %3068 = trunc i32 %3067 to i8
  store i8 %3068, i8* %35, align 1, !tbaa !2449
  %3069 = lshr i32 %3051, 31
  %3070 = xor i32 %3069, 1
  %3071 = xor i32 %3067, %3069
  %3072 = add nuw nsw i32 %3071, %3070
  %3073 = icmp eq i32 %3072, 2
  %3074 = zext i1 %3073 to i8
  store i8 %3074, i8* %41, align 1, !tbaa !2450
  %.v308 = select i1 %3065, i64 85, i64 18
  %3075 = add i64 %3039, %.v308
  store i64 %3075, i64* %PC, align 8, !tbaa !2428
  br i1 %3065, label %block_401300, label %block_4012bd

block_401783.loopexit:                            ; preds = %block_4014e1
  br label %block_401783

block_401783.loopexit423:                         ; preds = %block_40171a
  br label %block_401783

block_401783:                                     ; preds = %block_401783.loopexit423, %block_401783.loopexit
  %3076 = phi i64 [ %4887, %block_401783.loopexit ], [ %4382, %block_401783.loopexit423 ]
  %.sink10 = phi i64 [ 117, %block_401783.loopexit ], [ 5, %block_401783.loopexit423 ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.38, %block_401783.loopexit ], [ %MEMORY.25, %block_401783.loopexit423 ]
  %3077 = add i64 %3076, %.sink10
  store i64 %3077, i64* %PC, align 8, !tbaa !2428
  br label %block_4017f8

block_400d13:                                     ; preds = %block_400d0c, %block_400dc1
  %3078 = phi i64 [ %.pre193, %block_400d0c ], [ %1753, %block_400dc1 ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.20, %block_400d0c ], [ %MEMORY.12, %block_400dc1 ]
  %3079 = load i64, i64* %RBP, align 8
  %3080 = add i64 %3079, -4
  %3081 = add i64 %3078, 3
  store i64 %3081, i64* %PC, align 8
  %3082 = inttoptr i64 %3080 to i32*
  %3083 = load i32, i32* %3082, align 4
  %3084 = zext i32 %3083 to i64
  store i64 %3084, i64* %RAX, align 8, !tbaa !2428
  %3085 = add i64 %3079, -16
  %3086 = add i64 %3078, 7
  store i64 %3086, i64* %PC, align 8
  %3087 = inttoptr i64 %3085 to i32*
  %3088 = load i32, i32* %3087, align 4
  %3089 = sext i32 %3088 to i64
  store i64 %3089, i64* %RCX, align 8, !tbaa !2428
  %3090 = shl nsw i64 %3089, 2
  %3091 = add nsw i64 %3090, -1328
  %3092 = add i64 %3091, %3079
  %3093 = add i64 %3078, 14
  store i64 %3093, i64* %PC, align 8
  %3094 = inttoptr i64 %3092 to i32*
  %3095 = load i32, i32* %3094, align 4
  %3096 = sub i32 %3083, %3095
  %3097 = icmp ult i32 %3083, %3095
  %3098 = zext i1 %3097 to i8
  store i8 %3098, i8* %16, align 1, !tbaa !2432
  %3099 = and i32 %3096, 255
  %3100 = tail call i32 @llvm.ctpop.i32(i32 %3099) #12
  %3101 = trunc i32 %3100 to i8
  %3102 = and i8 %3101, 1
  %3103 = xor i8 %3102, 1
  store i8 %3103, i8* %23, align 1, !tbaa !2446
  %3104 = xor i32 %3095, %3083
  %3105 = xor i32 %3104, %3096
  %3106 = lshr i32 %3105, 4
  %3107 = trunc i32 %3106 to i8
  %3108 = and i8 %3107, 1
  store i8 %3108, i8* %29, align 1, !tbaa !2447
  %3109 = icmp eq i32 %3096, 0
  %3110 = zext i1 %3109 to i8
  store i8 %3110, i8* %32, align 1, !tbaa !2448
  %3111 = lshr i32 %3096, 31
  %3112 = trunc i32 %3111 to i8
  store i8 %3112, i8* %35, align 1, !tbaa !2449
  %3113 = lshr i32 %3083, 31
  %3114 = lshr i32 %3095, 31
  %3115 = xor i32 %3114, %3113
  %3116 = xor i32 %3111, %3113
  %3117 = add nuw nsw i32 %3116, %3115
  %3118 = icmp eq i32 %3117, 2
  %3119 = zext i1 %3118 to i8
  store i8 %3119, i8* %41, align 1, !tbaa !2450
  %3120 = icmp ne i8 %3112, 0
  %3121 = xor i1 %3120, %3118
  %.demorgan276 = or i1 %3109, %3121
  %.v290 = select i1 %.demorgan276, i64 20, i64 193
  %3122 = add i64 %3078, %.v290
  store i64 %3122, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan276, label %block_400d27, label %block_400dd4

block_4011b0:                                     ; preds = %block_40112f
  %3123 = add i64 %1844, -16
  %3124 = add i64 %1887, 4
  store i64 %3124, i64* %PC, align 8
  %3125 = inttoptr i64 %3123 to i32*
  %3126 = load i32, i32* %3125, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %3127 = and i32 %3126, 255
  %3128 = tail call i32 @llvm.ctpop.i32(i32 %3127) #12
  %3129 = trunc i32 %3128 to i8
  %3130 = and i8 %3129, 1
  %3131 = xor i8 %3130, 1
  store i8 %3131, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %3132 = icmp eq i32 %3126, 0
  %3133 = zext i1 %3132 to i8
  store i8 %3133, i8* %32, align 1, !tbaa !2448
  %3134 = lshr i32 %3126, 31
  %3135 = trunc i32 %3134 to i8
  store i8 %3135, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %.v313 = select i1 %3132, i64 10, i64 64
  %3136 = add i64 %1887, %.v313
  store i64 %3136, i64* %PC, align 8, !tbaa !2428
  br i1 %3132, label %block_4011ba, label %block_4011f0

block_40178f:                                     ; preds = %block_40178f.preheader, %block_4017e0
  %3137 = phi i64 [ %1023, %block_4017e0 ], [ %.pre208, %block_40178f.preheader ]
  %3138 = load i64, i64* %RBP, align 8
  %3139 = add i64 %3138, -4
  %3140 = add i64 %3137, 7
  store i64 %3140, i64* %PC, align 8
  %3141 = inttoptr i64 %3139 to i32*
  %3142 = load i32, i32* %3141, align 4
  %3143 = add i32 %3142, -255
  %3144 = icmp ult i32 %3142, 255
  %3145 = zext i1 %3144 to i8
  store i8 %3145, i8* %16, align 1, !tbaa !2432
  %3146 = and i32 %3143, 255
  %3147 = tail call i32 @llvm.ctpop.i32(i32 %3146) #12
  %3148 = trunc i32 %3147 to i8
  %3149 = and i8 %3148, 1
  %3150 = xor i8 %3149, 1
  store i8 %3150, i8* %23, align 1, !tbaa !2446
  %3151 = xor i32 %3142, 16
  %3152 = xor i32 %3151, %3143
  %3153 = lshr i32 %3152, 4
  %3154 = trunc i32 %3153 to i8
  %3155 = and i8 %3154, 1
  store i8 %3155, i8* %29, align 1, !tbaa !2447
  %3156 = icmp eq i32 %3143, 0
  %3157 = zext i1 %3156 to i8
  store i8 %3157, i8* %32, align 1, !tbaa !2448
  %3158 = lshr i32 %3143, 31
  %3159 = trunc i32 %3158 to i8
  store i8 %3159, i8* %35, align 1, !tbaa !2449
  %3160 = lshr i32 %3142, 31
  %3161 = xor i32 %3158, %3160
  %3162 = add nuw nsw i32 %3161, %3160
  %3163 = icmp eq i32 %3162, 2
  %3164 = zext i1 %3163 to i8
  store i8 %3164, i8* %41, align 1, !tbaa !2450
  %3165 = icmp ne i8 %3159, 0
  %3166 = xor i1 %3165, %3163
  %.v271 = select i1 %3166, i64 13, i64 100
  %3167 = add i64 %3137, %.v271
  store i64 %3167, i64* %PC, align 8, !tbaa !2428
  br i1 %3166, label %block_40179c, label %block_4017f8.loopexit

block_400970:                                     ; preds = %block_400966
  %3168 = add i64 %900, 4
  store i64 %3168, i64* %PC, align 8
  %3169 = load i32, i32* %874, align 4
  %3170 = sext i32 %3169 to i64
  store i64 %3170, i64* %RAX, align 8, !tbaa !2428
  %3171 = shl nsw i64 %3170, 2
  %3172 = add i64 %871, -1488
  %3173 = add i64 %3172, %3171
  %3174 = add i64 %900, 15
  store i64 %3174, i64* %PC, align 8
  %3175 = inttoptr i64 %3173 to i32*
  store i32 0, i32* %3175, align 4
  %3176 = load i64, i64* %RBP, align 8
  %3177 = add i64 %3176, -8
  %3178 = load i64, i64* %PC, align 8
  %3179 = add i64 %3178, 7
  store i64 %3179, i64* %PC, align 8
  %3180 = inttoptr i64 %3177 to i32*
  store i32 0, i32* %3180, align 4
  %.pre173 = load i64, i64* %PC, align 8
  br label %block_400986

block_400e97:                                     ; preds = %block_400e6a
  %3181 = add i64 %4351, 3
  store i64 %3181, i64* %PC, align 8
  %3182 = load i32, i32* %4325, align 4
  %3183 = add i32 %3182, 1
  %3184 = zext i32 %3183 to i64
  store i64 %3184, i64* %RAX, align 8, !tbaa !2428
  %3185 = icmp eq i32 %3182, -1
  %3186 = icmp eq i32 %3183, 0
  %3187 = or i1 %3185, %3186
  %3188 = zext i1 %3187 to i8
  store i8 %3188, i8* %16, align 1, !tbaa !2432
  %3189 = and i32 %3183, 255
  %3190 = tail call i32 @llvm.ctpop.i32(i32 %3189) #12
  %3191 = trunc i32 %3190 to i8
  %3192 = and i8 %3191, 1
  %3193 = xor i8 %3192, 1
  store i8 %3193, i8* %23, align 1, !tbaa !2446
  %3194 = xor i32 %3183, %3182
  %3195 = lshr i32 %3194, 4
  %3196 = trunc i32 %3195 to i8
  %3197 = and i8 %3196, 1
  store i8 %3197, i8* %29, align 1, !tbaa !2447
  %3198 = zext i1 %3186 to i8
  store i8 %3198, i8* %32, align 1, !tbaa !2448
  %3199 = lshr i32 %3183, 31
  %3200 = trunc i32 %3199 to i8
  store i8 %3200, i8* %35, align 1, !tbaa !2449
  %3201 = lshr i32 %3182, 31
  %3202 = xor i32 %3199, %3201
  %3203 = add nuw nsw i32 %3202, %3199
  %3204 = icmp eq i32 %3203, 2
  %3205 = zext i1 %3204 to i8
  store i8 %3205, i8* %41, align 1, !tbaa !2450
  %3206 = sext i32 %3183 to i64
  store i64 %3206, i64* %RCX, align 8, !tbaa !2428
  %3207 = shl nsw i64 %3206, 2
  %3208 = add nsw i64 %3207, -1488
  %3209 = add i64 %3208, %4321
  %3210 = add i64 %4351, 17
  store i64 %3210, i64* %PC, align 8
  %3211 = inttoptr i64 %3209 to i32*
  %3212 = load i32, i32* %3211, align 4
  %3213 = add i32 %3212, 1
  %3214 = icmp ne i32 %3212, -1
  %3215 = zext i1 %3214 to i8
  store i8 %3215, i8* %16, align 1, !tbaa !2432
  %3216 = and i32 %3213, 255
  %3217 = tail call i32 @llvm.ctpop.i32(i32 %3216) #12
  %3218 = trunc i32 %3217 to i8
  %3219 = and i8 %3218, 1
  %3220 = xor i8 %3219, 1
  store i8 %3220, i8* %23, align 1, !tbaa !2446
  %3221 = xor i32 %3212, 16
  %3222 = xor i32 %3221, %3213
  %3223 = lshr i32 %3222, 4
  %3224 = trunc i32 %3223 to i8
  %3225 = and i8 %3224, 1
  store i8 %3225, i8* %29, align 1, !tbaa !2447
  %3226 = icmp eq i32 %3213, 0
  %3227 = zext i1 %3226 to i8
  store i8 %3227, i8* %32, align 1, !tbaa !2448
  %3228 = lshr i32 %3213, 31
  %3229 = trunc i32 %3228 to i8
  store i8 %3229, i8* %35, align 1, !tbaa !2449
  %3230 = lshr i32 %3212, 31
  %3231 = xor i32 %3230, 1
  %3232 = xor i32 %3228, %3230
  %3233 = add nuw nsw i32 %3232, %3231
  %3234 = icmp eq i32 %3233, 2
  %3235 = zext i1 %3234 to i8
  store i8 %3235, i8* %41, align 1, !tbaa !2450
  %.v272 = select i1 %3226, i64 68, i64 23
  %3236 = add i64 %4351, %.v272
  %3237 = add i64 %3236, 3
  store i64 %3237, i64* %PC, align 8
  %3238 = load i32, i32* %4325, align 4
  %3239 = add i32 %3238, 1
  %3240 = zext i32 %3239 to i64
  store i64 %3240, i64* %RAX, align 8, !tbaa !2428
  %3241 = icmp eq i32 %3238, -1
  %3242 = icmp eq i32 %3239, 0
  %3243 = or i1 %3241, %3242
  %3244 = zext i1 %3243 to i8
  store i8 %3244, i8* %16, align 1, !tbaa !2432
  %3245 = and i32 %3239, 255
  %3246 = tail call i32 @llvm.ctpop.i32(i32 %3245) #12
  %3247 = trunc i32 %3246 to i8
  %3248 = and i8 %3247, 1
  %3249 = xor i8 %3248, 1
  store i8 %3249, i8* %23, align 1, !tbaa !2446
  %3250 = xor i32 %3239, %3238
  %3251 = lshr i32 %3250, 4
  %3252 = trunc i32 %3251 to i8
  %3253 = and i8 %3252, 1
  store i8 %3253, i8* %29, align 1, !tbaa !2447
  %3254 = zext i1 %3242 to i8
  store i8 %3254, i8* %32, align 1, !tbaa !2448
  %3255 = lshr i32 %3239, 31
  %3256 = trunc i32 %3255 to i8
  store i8 %3256, i8* %35, align 1, !tbaa !2449
  %3257 = lshr i32 %3238, 31
  %3258 = xor i32 %3255, %3257
  %3259 = add nuw nsw i32 %3258, %3255
  %3260 = icmp eq i32 %3259, 2
  %3261 = zext i1 %3260 to i8
  store i8 %3261, i8* %41, align 1, !tbaa !2450
  %3262 = add i64 %3236, 9
  store i64 %3262, i64* %PC, align 8
  %3263 = sext i32 %3239 to i64
  store i64 %3263, i64* %RCX, align 8, !tbaa !2428
  %3264 = load i64, i64* %RBP, align 8
  %3265 = shl nsw i64 %3263, 2
  %3266 = add i64 %3264, %3265
  br i1 %3226, label %block_400edb, label %block_400eae

block_401495:                                     ; preds = %block_401474
  %3267 = add i64 %2984, 12
  store i64 %3267, i64* %PC, align 8
  %3268 = inttoptr i64 %2989 to i32*
  %3269 = load i32, i32* %3268, align 4
  %3270 = sext i32 %3269 to i64
  store i64 %3270, i64* %RAX, align 8, !tbaa !2428
  %3271 = shl nsw i64 %3270, 2
  %3272 = add i64 %3271, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %3273 = add i64 %2984, 19
  store i64 %3273, i64* %PC, align 8
  %3274 = inttoptr i64 %3272 to i32*
  %3275 = load i32, i32* %3274, align 4
  %3276 = zext i32 %3275 to i64
  store i64 %3276, i64* %RCX, align 8, !tbaa !2428
  %3277 = add i64 %2984, 23
  store i64 %3277, i64* %PC, align 8
  %3278 = load i32, i32* %2953, align 4
  %3279 = sext i32 %3278 to i64
  store i64 %3279, i64* %RAX, align 8, !tbaa !2428
  %3280 = shl nsw i64 %3279, 2
  %3281 = add i64 %3280, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %3282 = add i64 %2984, 30
  store i64 %3282, i64* %PC, align 8
  %3283 = inttoptr i64 %3281 to i32*
  store i32 %3275, i32* %3283, align 4
  %3284 = load i64, i64* %PC, align 8
  %3285 = add i64 %3284, 20
  store i64 %3285, i64* %PC, align 8, !tbaa !2428
  br label %block_4014c7

block_401114:                                     ; preds = %block_4011f0, %block_401103
  %3286 = phi i64 [ %.pre210, %block_401103 ], [ %3516, %block_4011f0 ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.27, %block_401103 ], [ %MEMORY.13, %block_4011f0 ]
  %3287 = load i64, i64* %RBP, align 8
  %3288 = add i64 %3287, -4
  %3289 = add i64 %3286, 7
  store i64 %3289, i64* %PC, align 8
  %3290 = inttoptr i64 %3288 to i32*
  %3291 = load i32, i32* %3290, align 4
  %3292 = add i32 %3291, -255
  %3293 = icmp ult i32 %3291, 255
  %3294 = zext i1 %3293 to i8
  store i8 %3294, i8* %16, align 1, !tbaa !2432
  %3295 = and i32 %3292, 255
  %3296 = tail call i32 @llvm.ctpop.i32(i32 %3295) #12
  %3297 = trunc i32 %3296 to i8
  %3298 = and i8 %3297, 1
  %3299 = xor i8 %3298, 1
  store i8 %3299, i8* %23, align 1, !tbaa !2446
  %3300 = xor i32 %3291, 16
  %3301 = xor i32 %3300, %3292
  %3302 = lshr i32 %3301, 4
  %3303 = trunc i32 %3302 to i8
  %3304 = and i8 %3303, 1
  store i8 %3304, i8* %29, align 1, !tbaa !2447
  %3305 = icmp eq i32 %3292, 0
  %3306 = zext i1 %3305 to i8
  store i8 %3306, i8* %32, align 1, !tbaa !2448
  %3307 = lshr i32 %3292, 31
  %3308 = trunc i32 %3307 to i8
  store i8 %3308, i8* %35, align 1, !tbaa !2449
  %3309 = lshr i32 %3291, 31
  %3310 = xor i32 %3307, %3309
  %3311 = add nuw nsw i32 %3310, %3309
  %3312 = icmp eq i32 %3311, 2
  %3313 = zext i1 %3312 to i8
  store i8 %3313, i8* %41, align 1, !tbaa !2450
  %3314 = icmp ne i8 %3308, 0
  %3315 = xor i1 %3314, %3312
  %.demorgan261 = or i1 %3305, %3315
  %.v264 = select i1 %.demorgan261, i64 13, i64 239
  %3316 = add i64 %3286, %.v264
  store i64 %3316, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan261, label %block_401121, label %block_401203

block_400a8e:                                     ; preds = %block_400a84
  %3317 = add i64 %3444, 4
  store i64 %3317, i64* %PC, align 8
  %3318 = load i32, i32* %3418, align 4
  %3319 = sext i32 %3318 to i64
  store i64 %3319, i64* %RAX, align 8, !tbaa !2428
  %3320 = shl nsw i64 %3319, 2
  %3321 = add i64 %3415, -1168
  %3322 = add i64 %3321, %3320
  %3323 = add i64 %3444, 15
  store i64 %3323, i64* %PC, align 8
  %3324 = inttoptr i64 %3322 to i32*
  store i32 -1, i32* %3324, align 4
  %3325 = load i64, i64* %RBP, align 8
  %3326 = add i64 %3325, -4
  %3327 = load i64, i64* %PC, align 8
  %3328 = add i64 %3327, 4
  store i64 %3328, i64* %PC, align 8
  %3329 = inttoptr i64 %3326 to i32*
  %3330 = load i32, i32* %3329, align 4
  %3331 = sext i32 %3330 to i64
  store i64 %3331, i64* %RAX, align 8, !tbaa !2428
  %3332 = shl nsw i64 %3331, 2
  %3333 = add i64 %3325, -1104
  %3334 = add i64 %3333, %3332
  %3335 = add i64 %3327, 15
  store i64 %3335, i64* %PC, align 8
  %3336 = inttoptr i64 %3334 to i32*
  store i32 0, i32* %3336, align 4
  %3337 = load i64, i64* %RBP, align 8
  %3338 = add i64 %3337, -4
  %3339 = load i64, i64* %PC, align 8
  %3340 = add i64 %3339, 3
  store i64 %3340, i64* %PC, align 8
  %3341 = inttoptr i64 %3338 to i32*
  %3342 = load i32, i32* %3341, align 4
  %3343 = add i32 %3342, 1
  %3344 = zext i32 %3343 to i64
  store i64 %3344, i64* %RAX, align 8, !tbaa !2428
  %3345 = icmp eq i32 %3342, -1
  %3346 = icmp eq i32 %3343, 0
  %3347 = or i1 %3345, %3346
  %3348 = zext i1 %3347 to i8
  store i8 %3348, i8* %16, align 1, !tbaa !2432
  %3349 = and i32 %3343, 255
  %3350 = tail call i32 @llvm.ctpop.i32(i32 %3349) #12
  %3351 = trunc i32 %3350 to i8
  %3352 = and i8 %3351, 1
  %3353 = xor i8 %3352, 1
  store i8 %3353, i8* %23, align 1, !tbaa !2446
  %3354 = xor i32 %3343, %3342
  %3355 = lshr i32 %3354, 4
  %3356 = trunc i32 %3355 to i8
  %3357 = and i8 %3356, 1
  store i8 %3357, i8* %29, align 1, !tbaa !2447
  %3358 = zext i1 %3346 to i8
  store i8 %3358, i8* %32, align 1, !tbaa !2448
  %3359 = lshr i32 %3343, 31
  %3360 = trunc i32 %3359 to i8
  store i8 %3360, i8* %35, align 1, !tbaa !2449
  %3361 = lshr i32 %3342, 31
  %3362 = xor i32 %3359, %3361
  %3363 = add nuw nsw i32 %3362, %3359
  %3364 = icmp eq i32 %3363, 2
  %3365 = zext i1 %3364 to i8
  store i8 %3365, i8* %41, align 1, !tbaa !2450
  %3366 = add i64 %3339, 9
  store i64 %3366, i64* %PC, align 8
  store i32 %3343, i32* %3341, align 4
  %3367 = load i64, i64* %PC, align 8
  %3368 = add i64 %3367, -49
  store i64 %3368, i64* %PC, align 8, !tbaa !2428
  br label %block_400a84

block_400c8a:                                     ; preds = %block_400c66
  %3369 = add i64 %4974, -12
  %3370 = add i64 %4973, 4
  store i64 %3370, i64* %PC, align 8
  %3371 = inttoptr i64 %3369 to i32*
  %3372 = load i32, i32* %3371, align 4
  %3373 = sext i32 %3372 to i64
  store i64 %3373, i64* %RAX, align 8, !tbaa !2428
  %3374 = shl nsw i64 %3373, 2
  %3375 = add i64 %4974, -1328
  %3376 = add i64 %3375, %3374
  %3377 = add i64 %4973, 11
  store i64 %3377, i64* %PC, align 8
  %3378 = inttoptr i64 %3376 to i32*
  %3379 = load i32, i32* %3378, align 4
  %3380 = zext i32 %3379 to i64
  store i64 %3380, i64* %RCX, align 8, !tbaa !2428
  %3381 = add i64 %4973, 14
  store i64 %3381, i64* %PC, align 8
  %3382 = load i32, i32* %3371, align 4
  %3383 = add i32 %3382, 1
  %3384 = zext i32 %3383 to i64
  store i64 %3384, i64* %RDX, align 8, !tbaa !2428
  %3385 = icmp eq i32 %3382, -1
  %3386 = icmp eq i32 %3383, 0
  %3387 = or i1 %3385, %3386
  %3388 = zext i1 %3387 to i8
  store i8 %3388, i8* %16, align 1, !tbaa !2432
  %3389 = and i32 %3383, 255
  %3390 = tail call i32 @llvm.ctpop.i32(i32 %3389) #12
  %3391 = trunc i32 %3390 to i8
  %3392 = and i8 %3391, 1
  %3393 = xor i8 %3392, 1
  store i8 %3393, i8* %23, align 1, !tbaa !2446
  %3394 = xor i32 %3383, %3382
  %3395 = lshr i32 %3394, 4
  %3396 = trunc i32 %3395 to i8
  %3397 = and i8 %3396, 1
  store i8 %3397, i8* %29, align 1, !tbaa !2447
  %3398 = zext i1 %3386 to i8
  store i8 %3398, i8* %32, align 1, !tbaa !2448
  %3399 = lshr i32 %3383, 31
  %3400 = trunc i32 %3399 to i8
  store i8 %3400, i8* %35, align 1, !tbaa !2449
  %3401 = lshr i32 %3382, 31
  %3402 = xor i32 %3399, %3401
  %3403 = add nuw nsw i32 %3402, %3399
  %3404 = icmp eq i32 %3403, 2
  %3405 = zext i1 %3404 to i8
  store i8 %3405, i8* %41, align 1, !tbaa !2450
  %3406 = sext i32 %3383 to i64
  store i64 %3406, i64* %RAX, align 8, !tbaa !2428
  %3407 = shl nsw i64 %3406, 2
  %3408 = add nsw i64 %3407, -1328
  %3409 = add i64 %3408, %4974
  %3410 = add i64 %4973, 27
  store i64 %3410, i64* %PC, align 8
  %3411 = inttoptr i64 %3409 to i32*
  store i32 %3379, i32* %3411, align 4
  %3412 = load i64, i64* %PC, align 8
  %3413 = add i64 %3412, 38
  store i64 %3413, i64* %PC, align 8, !tbaa !2428
  br label %block_400ccb

block_400a84:                                     ; preds = %block_400a53, %block_400a8e
  %3414 = phi i64 [ %.pre181, %block_400a53 ], [ %3368, %block_400a8e ]
  %3415 = load i64, i64* %RBP, align 8
  %3416 = add i64 %3415, -4
  %3417 = add i64 %3414, 4
  store i64 %3417, i64* %PC, align 8
  %3418 = inttoptr i64 %3416 to i32*
  %3419 = load i32, i32* %3418, align 4
  %3420 = add i32 %3419, -16
  %3421 = icmp ult i32 %3419, 16
  %3422 = zext i1 %3421 to i8
  store i8 %3422, i8* %16, align 1, !tbaa !2432
  %3423 = and i32 %3420, 255
  %3424 = tail call i32 @llvm.ctpop.i32(i32 %3423) #12
  %3425 = trunc i32 %3424 to i8
  %3426 = and i8 %3425, 1
  %3427 = xor i8 %3426, 1
  store i8 %3427, i8* %23, align 1, !tbaa !2446
  %3428 = xor i32 %3419, 16
  %3429 = xor i32 %3428, %3420
  %3430 = lshr i32 %3429, 4
  %3431 = trunc i32 %3430 to i8
  %3432 = and i8 %3431, 1
  store i8 %3432, i8* %29, align 1, !tbaa !2447
  %3433 = icmp eq i32 %3420, 0
  %3434 = zext i1 %3433 to i8
  store i8 %3434, i8* %32, align 1, !tbaa !2448
  %3435 = lshr i32 %3420, 31
  %3436 = trunc i32 %3435 to i8
  store i8 %3436, i8* %35, align 1, !tbaa !2449
  %3437 = lshr i32 %3419, 31
  %3438 = xor i32 %3435, %3437
  %3439 = add nuw nsw i32 %3438, %3437
  %3440 = icmp eq i32 %3439, 2
  %3441 = zext i1 %3440 to i8
  store i8 %3441, i8* %41, align 1, !tbaa !2450
  %3442 = icmp ne i8 %3436, 0
  %3443 = xor i1 %3442, %3440
  %.v282 = select i1 %3443, i64 10, i64 54
  %3444 = add i64 %3414, %.v282
  store i64 %3444, i64* %PC, align 8, !tbaa !2428
  br i1 %3443, label %block_400a8e, label %block_400aba

block_400ffb:                                     ; preds = %block_400e6a, %block_400fd3
  %3445 = phi i64 [ %4321, %block_400e6a ], [ %.pre206, %block_400fd3 ]
  %3446 = phi i64 [ %4351, %block_400e6a ], [ %.pre205, %block_400fd3 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.31, %block_400e6a ], [ %MEMORY.16, %block_400fd3 ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 1, i8* %23, align 1, !tbaa !2446
  store i8 1, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %CL, align 1, !tbaa !2451
  %3447 = add i64 %3445, -12
  %3448 = add i64 %3446, 13
  store i64 %3448, i64* %PC, align 8
  %3449 = inttoptr i64 %3447 to i32*
  %3450 = load i32, i32* %3449, align 4
  %3451 = add i32 %3450, -16
  %3452 = icmp ult i32 %3450, 16
  %3453 = zext i1 %3452 to i8
  store i8 %3453, i8* %16, align 1, !tbaa !2432
  %3454 = and i32 %3451, 255
  %3455 = tail call i32 @llvm.ctpop.i32(i32 %3454) #12
  %3456 = trunc i32 %3455 to i8
  %3457 = and i8 %3456, 1
  %3458 = xor i8 %3457, 1
  store i8 %3458, i8* %23, align 1, !tbaa !2446
  %3459 = xor i32 %3450, 16
  %3460 = xor i32 %3459, %3451
  %3461 = lshr i32 %3460, 4
  %3462 = trunc i32 %3461 to i8
  %3463 = and i8 %3462, 1
  store i8 %3463, i8* %29, align 1, !tbaa !2447
  %3464 = icmp eq i32 %3451, 0
  %3465 = zext i1 %3464 to i8
  store i8 %3465, i8* %32, align 1, !tbaa !2448
  %3466 = lshr i32 %3451, 31
  %3467 = trunc i32 %3466 to i8
  store i8 %3467, i8* %35, align 1, !tbaa !2449
  %3468 = lshr i32 %3450, 31
  %3469 = xor i32 %3466, %3468
  %3470 = add nuw nsw i32 %3469, %3468
  %3471 = icmp eq i32 %3470, 2
  %3472 = zext i1 %3471 to i8
  store i8 %3472, i8* %41, align 1, !tbaa !2450
  %3473 = add i64 %3445, -2709
  %3474 = add i64 %3446, 19
  store i64 %3474, i64* %PC, align 8
  %3475 = inttoptr i64 %3473 to i8*
  store i8 0, i8* %3475, align 1
  %3476 = load i64, i64* %PC, align 8
  %3477 = add i64 %3476, 32
  %3478 = add i64 %3476, 6
  %3479 = load i8, i8* %35, align 1, !tbaa !2449
  %3480 = icmp ne i8 %3479, 0
  %3481 = load i8, i8* %41, align 1, !tbaa !2450
  %3482 = icmp ne i8 %3481, 0
  %3483 = xor i1 %3480, %3482
  %3484 = select i1 %3483, i64 %3478, i64 %3477
  store i64 %3484, i64* %PC, align 8, !tbaa !2428
  br i1 %3483, label %block_401014, label %block_40102e

block_4011f0:                                     ; preds = %block_4011b0, %block_4011ba
  %3485 = phi i64 [ %1844, %block_4011b0 ], [ %.pre218, %block_4011ba ]
  %3486 = phi i64 [ %3136, %block_4011b0 ], [ %.pre217, %block_4011ba ]
  %3487 = add i64 %3485, -4
  %3488 = add i64 %3486, 8
  store i64 %3488, i64* %PC, align 8
  %3489 = inttoptr i64 %3487 to i32*
  %3490 = load i32, i32* %3489, align 4
  %3491 = add i32 %3490, 1
  %3492 = zext i32 %3491 to i64
  store i64 %3492, i64* %RAX, align 8, !tbaa !2428
  %3493 = icmp eq i32 %3490, -1
  %3494 = icmp eq i32 %3491, 0
  %3495 = or i1 %3493, %3494
  %3496 = zext i1 %3495 to i8
  store i8 %3496, i8* %16, align 1, !tbaa !2432
  %3497 = and i32 %3491, 255
  %3498 = tail call i32 @llvm.ctpop.i32(i32 %3497) #12
  %3499 = trunc i32 %3498 to i8
  %3500 = and i8 %3499, 1
  %3501 = xor i8 %3500, 1
  store i8 %3501, i8* %23, align 1, !tbaa !2446
  %3502 = xor i32 %3491, %3490
  %3503 = lshr i32 %3502, 4
  %3504 = trunc i32 %3503 to i8
  %3505 = and i8 %3504, 1
  store i8 %3505, i8* %29, align 1, !tbaa !2447
  %3506 = zext i1 %3494 to i8
  store i8 %3506, i8* %32, align 1, !tbaa !2448
  %3507 = lshr i32 %3491, 31
  %3508 = trunc i32 %3507 to i8
  store i8 %3508, i8* %35, align 1, !tbaa !2449
  %3509 = lshr i32 %3490, 31
  %3510 = xor i32 %3507, %3509
  %3511 = add nuw nsw i32 %3510, %3507
  %3512 = icmp eq i32 %3511, 2
  %3513 = zext i1 %3512 to i8
  store i8 %3513, i8* %41, align 1, !tbaa !2450
  %3514 = add i64 %3486, 14
  store i64 %3514, i64* %PC, align 8
  store i32 %3491, i32* %3489, align 4
  %3515 = load i64, i64* %PC, align 8
  %3516 = add i64 %3515, -234
  store i64 %3516, i64* %PC, align 8, !tbaa !2428
  br label %block_401114

block_401674:                                     ; preds = %block_4015f8
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %3517 = add i64 %2218, -16
  %3518 = add i64 %2261, 8
  store i64 %3518, i64* %PC, align 8
  %3519 = inttoptr i64 %3517 to i32*
  %3520 = load i32, i32* %3519, align 4
  %3521 = zext i32 %3520 to i64
  store i64 %3521, i64* %RCX, align 8, !tbaa !2428
  %3522 = add i64 %2218, -2732
  %3523 = add i64 %2261, 14
  store i64 %3523, i64* %PC, align 8
  %3524 = inttoptr i64 %3522 to i32*
  store i32 255, i32* %3524, align 4
  %3525 = load i32, i32* %ECX, align 4
  %3526 = zext i32 %3525 to i64
  %3527 = load i64, i64* %PC, align 8
  store i64 %3526, i64* %RAX, align 8, !tbaa !2428
  %3528 = sext i32 %3525 to i64
  %3529 = lshr i64 %3528, 32
  store i64 %3529, i64* %55, align 8, !tbaa !2428
  %3530 = load i64, i64* %RBP, align 8
  %3531 = add i64 %3530, -2732
  %3532 = add i64 %3527, 9
  store i64 %3532, i64* %PC, align 8
  %3533 = inttoptr i64 %3531 to i32*
  %3534 = load i32, i32* %3533, align 4
  %3535 = zext i32 %3534 to i64
  store i64 %3535, i64* %RCX, align 8, !tbaa !2428
  %3536 = add i64 %3527, 11
  store i64 %3536, i64* %PC, align 8
  %3537 = sext i32 %3534 to i64
  %3538 = shl nuw i64 %3529, 32
  %3539 = or i64 %3538, %3526
  %3540 = sdiv i64 %3539, %3537
  %3541 = shl i64 %3540, 32
  %3542 = ashr exact i64 %3541, 32
  %3543 = icmp eq i64 %3540, %3542
  br i1 %3543, label %3546, label %3544

; <label>:3544:                                   ; preds = %block_401674
  %3545 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3536, %struct.Memory* %MEMORY.17) #13
  %.pre238 = load i64, i64* %RBP, align 8
  %.pre239 = load i32, i32* %EDX, align 4
  %.pre240 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2

; <label>:3546:                                   ; preds = %block_401674
  %3547 = srem i64 %3539, %3537
  %3548 = and i64 %3540, 4294967295
  store i64 %3548, i64* %RAX, align 8, !tbaa !2428
  %3549 = and i64 %3547, 4294967295
  store i64 %3549, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %3550 = trunc i64 %3547 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2: ; preds = %3546, %3544
  %3551 = phi i64 [ %.pre240, %3544 ], [ %3536, %3546 ]
  %3552 = phi i32 [ %.pre239, %3544 ], [ %3550, %3546 ]
  %3553 = phi i64 [ %.pre238, %3544 ], [ %3530, %3546 ]
  %3554 = phi %struct.Memory* [ %3545, %3544 ], [ %MEMORY.17, %3546 ]
  %3555 = add i64 %3553, -16
  %3556 = add i64 %3551, 3
  store i64 %3556, i64* %PC, align 8
  %3557 = inttoptr i64 %3555 to i32*
  store i32 %3552, i32* %3557, align 4
  %3558 = load i64, i64* %RBP, align 8
  %3559 = add i64 %3558, -4
  %3560 = load i64, i64* %PC, align 8
  %3561 = add i64 %3560, 4
  store i64 %3561, i64* %PC, align 8
  %3562 = inttoptr i64 %3559 to i32*
  %3563 = load i32, i32* %3562, align 4
  %3564 = sext i32 %3563 to i64
  store i64 %3564, i64* %RSI, align 8, !tbaa !2428
  %3565 = shl nsw i64 %3564, 2
  %3566 = add i64 %3558, -1568
  %3567 = add i64 %3566, %3565
  %3568 = add i64 %3560, 12
  store i64 %3568, i64* %PC, align 8
  %3569 = inttoptr i64 %3567 to i32*
  %3570 = load i32, i32* %3569, align 4
  %3571 = sext i32 %3570 to i64
  store i64 %3571, i64* %RSI, align 8, !tbaa !2428
  %3572 = shl nsw i64 %3571, 2
  %3573 = add i64 %3558, -2640
  %3574 = add i64 %3573, %3572
  %3575 = add i64 %3560, 19
  store i64 %3575, i64* %PC, align 8
  %3576 = inttoptr i64 %3574 to i32*
  %3577 = load i32, i32* %3576, align 4
  %3578 = zext i32 %3577 to i64
  store i64 %3578, i64* %RDX, align 8, !tbaa !2428
  %3579 = add i64 %3558, -16
  %3580 = add i64 %3560, 22
  store i64 %3580, i64* %PC, align 8
  %3581 = inttoptr i64 %3579 to i32*
  %3582 = load i32, i32* %3581, align 4
  %3583 = sub i32 %3577, %3582
  %3584 = lshr i32 %3583, 31
  %3585 = add i32 %3583, 255
  %3586 = zext i32 %3585 to i64
  %3587 = icmp ugt i32 %3583, -256
  %3588 = zext i1 %3587 to i8
  store i8 %3588, i8* %16, align 1, !tbaa !2432
  %3589 = and i32 %3585, 255
  %3590 = tail call i32 @llvm.ctpop.i32(i32 %3589) #12
  %3591 = trunc i32 %3590 to i8
  %3592 = and i8 %3591, 1
  %3593 = xor i8 %3592, 1
  store i8 %3593, i8* %23, align 1, !tbaa !2446
  %3594 = xor i32 %3583, 16
  %3595 = xor i32 %3594, %3585
  %3596 = lshr i32 %3595, 4
  %3597 = trunc i32 %3596 to i8
  %3598 = and i8 %3597, 1
  store i8 %3598, i8* %29, align 1, !tbaa !2447
  %3599 = icmp eq i32 %3585, 0
  %3600 = zext i1 %3599 to i8
  store i8 %3600, i8* %32, align 1, !tbaa !2448
  %3601 = lshr i32 %3585, 31
  %3602 = trunc i32 %3601 to i8
  store i8 %3602, i8* %35, align 1, !tbaa !2449
  %3603 = xor i32 %3601, %3584
  %3604 = add nuw nsw i32 %3603, %3601
  %3605 = icmp eq i32 %3604, 2
  %3606 = zext i1 %3605 to i8
  store i8 %3606, i8* %41, align 1, !tbaa !2450
  store i64 %3586, i64* %RAX, align 8, !tbaa !2428
  %3607 = sext i32 %3585 to i64
  %3608 = lshr i64 %3607, 32
  store i64 %3608, i64* %55, align 8, !tbaa !2428
  %3609 = load i32, i32* %ECX, align 4
  %3610 = add i64 %3560, 33
  store i64 %3610, i64* %PC, align 8
  %3611 = sext i32 %3609 to i64
  %3612 = shl nuw i64 %3608, 32
  %3613 = or i64 %3612, %3586
  %3614 = sdiv i64 %3613, %3611
  %3615 = shl i64 %3614, 32
  %3616 = ashr exact i64 %3615, 32
  %3617 = icmp eq i64 %3614, %3616
  br i1 %3617, label %3620, label %3618

; <label>:3618:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2
  %3619 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3610, %struct.Memory* %3554) #13
  %.pre241 = load i32, i32* %EDX, align 4
  %.pre242 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:3620:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2
  %3621 = srem i64 %3613, %3611
  %3622 = and i64 %3614, 4294967295
  store i64 %3622, i64* %RAX, align 8, !tbaa !2428
  %3623 = and i64 %3621, 4294967295
  store i64 %3623, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %3624 = trunc i64 %3621 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %3620, %3618
  %3625 = phi i64 [ %.pre242, %3618 ], [ %3610, %3620 ]
  %3626 = phi i32 [ %.pre241, %3618 ], [ %3624, %3620 ]
  %3627 = phi %struct.Memory* [ %3619, %3618 ], [ %3554, %3620 ]
  %3628 = sext i32 %3626 to i64
  store i64 %3628, i64* %RSI, align 8, !tbaa !2428
  %3629 = shl nsw i64 %3628, 2
  %3630 = add i64 %3629, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %3631 = add i64 %3625, 10
  store i64 %3631, i64* %PC, align 8
  %3632 = inttoptr i64 %3630 to i32*
  %3633 = load i32, i32* %3632, align 4
  %3634 = zext i32 %3633 to i64
  store i64 %3634, i64* %RDX, align 8, !tbaa !2428
  %3635 = load i64, i64* %RBP, align 8
  %3636 = add i64 %3635, -4
  %3637 = add i64 %3625, 14
  store i64 %3637, i64* %PC, align 8
  %3638 = inttoptr i64 %3636 to i32*
  %3639 = load i32, i32* %3638, align 4
  %3640 = sext i32 %3639 to i64
  store i64 %3640, i64* %RSI, align 8, !tbaa !2428
  %3641 = shl nsw i64 %3640, 2
  %3642 = add i64 %3635, -1568
  %3643 = add i64 %3642, %3641
  %3644 = add i64 %3625, 22
  store i64 %3644, i64* %PC, align 8
  %3645 = inttoptr i64 %3643 to i32*
  %3646 = load i32, i32* %3645, align 4
  %3647 = sext i32 %3646 to i64
  store i64 %3647, i64* %RSI, align 8, !tbaa !2428
  %3648 = shl nsw i64 %3647, 2
  %3649 = add i64 %3635, -2640
  %3650 = add i64 %3649, %3648
  %3651 = add i64 %3625, 29
  store i64 %3651, i64* %PC, align 8
  %3652 = inttoptr i64 %3650 to i32*
  store i32 %3633, i32* %3652, align 4
  %3653 = load i64, i64* %RBP, align 8
  %3654 = add i64 %3653, -4
  %3655 = load i64, i64* %PC, align 8
  %3656 = add i64 %3655, 4
  store i64 %3656, i64* %PC, align 8
  %3657 = inttoptr i64 %3654 to i32*
  %3658 = load i32, i32* %3657, align 4
  %3659 = sext i32 %3658 to i64
  store i64 %3659, i64* %RSI, align 8, !tbaa !2428
  %3660 = shl nsw i64 %3659, 2
  %3661 = add i64 %3653, -1568
  %3662 = add i64 %3661, %3660
  %3663 = add i64 %3655, 12
  store i64 %3663, i64* %PC, align 8
  %3664 = inttoptr i64 %3662 to i32*
  %3665 = load i32, i32* %3664, align 4
  %3666 = sext i32 %3665 to i64
  store i64 %3666, i64* %RSI, align 8, !tbaa !2428
  %3667 = shl nsw i64 %3666, 2
  %3668 = add i64 %3653, -2640
  %3669 = add i64 %3668, %3667
  %3670 = add i64 %3655, 19
  store i64 %3670, i64* %PC, align 8
  %3671 = inttoptr i64 %3669 to i32*
  %3672 = load i32, i32* %3671, align 4
  %3673 = zext i32 %3672 to i64
  store i64 %3673, i64* %RDX, align 8, !tbaa !2428
  %3674 = add i64 %3655, 23
  store i64 %3674, i64* %PC, align 8
  %3675 = load i32, i32* %3657, align 4
  %3676 = sext i32 %3675 to i64
  store i64 %3676, i64* %RSI, align 8, !tbaa !2428
  %3677 = shl nsw i64 %3676, 2
  %3678 = add i64 %3661, %3677
  %3679 = add i64 %3655, 31
  store i64 %3679, i64* %PC, align 8
  %3680 = inttoptr i64 %3678 to i32*
  %3681 = load i32, i32* %3680, align 4
  %3682 = sext i32 %3681 to i64
  store i64 %3682, i64* %RSI, align 8, !tbaa !2428
  %3683 = shl nsw i64 %3682, 2
  %3684 = add i64 %3683, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %3685 = add i64 %3655, 38
  store i64 %3685, i64* %PC, align 8
  %3686 = inttoptr i64 %3684 to i32*
  %3687 = load i32, i32* %3686, align 4
  %3688 = xor i32 %3687, %3672
  %3689 = zext i32 %3688 to i64
  store i64 %3689, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %3690 = and i32 %3688, 255
  %3691 = tail call i32 @llvm.ctpop.i32(i32 %3690) #12
  %3692 = trunc i32 %3691 to i8
  %3693 = and i8 %3692, 1
  %3694 = xor i8 %3693, 1
  store i8 %3694, i8* %23, align 1, !tbaa !2446
  %3695 = icmp eq i32 %3688, 0
  %3696 = zext i1 %3695 to i8
  store i8 %3696, i8* %32, align 1, !tbaa !2448
  %3697 = lshr i32 %3688, 31
  %3698 = trunc i32 %3697 to i8
  store i8 %3698, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %3699 = add i64 %3655, 45
  store i64 %3699, i64* %PC, align 8
  store i32 %3688, i32* %3686, align 4
  %.pre248 = load i64, i64* %PC, align 8
  %.pre249 = load i64, i64* %RBP, align 8
  br label %block_4016fb

block_401713:                                     ; preds = %block_401203
  store i32 0, i32* %3290, align 4
  %.pre251 = load i64, i64* %PC, align 8
  br label %block_40171a

block_4010bd:                                     ; preds = %block_4010b6, %block_4010d1
  %3700 = phi i64 [ %.pre209, %block_4010b6 ], [ %2456, %block_4010d1 ]
  %3701 = load i64, i64* %RBP, align 8
  %3702 = add i64 %3701, -4
  %3703 = add i64 %3700, 3
  store i64 %3703, i64* %PC, align 8
  %3704 = inttoptr i64 %3702 to i32*
  %3705 = load i32, i32* %3704, align 4
  %3706 = zext i32 %3705 to i64
  store i64 %3706, i64* %RAX, align 8, !tbaa !2428
  %3707 = add i64 %3701, -12
  %3708 = add i64 %3700, 7
  store i64 %3708, i64* %PC, align 8
  %3709 = inttoptr i64 %3707 to i32*
  %3710 = load i32, i32* %3709, align 4
  %3711 = sext i32 %3710 to i64
  store i64 %3711, i64* %RCX, align 8, !tbaa !2428
  %3712 = shl nsw i64 %3711, 2
  %3713 = add nsw i64 %3712, -1328
  %3714 = add i64 %3713, %3701
  %3715 = add i64 %3700, 14
  store i64 %3715, i64* %PC, align 8
  %3716 = inttoptr i64 %3714 to i32*
  %3717 = load i32, i32* %3716, align 4
  %3718 = sub i32 %3705, %3717
  %3719 = icmp ult i32 %3705, %3717
  %3720 = zext i1 %3719 to i8
  store i8 %3720, i8* %16, align 1, !tbaa !2432
  %3721 = and i32 %3718, 255
  %3722 = tail call i32 @llvm.ctpop.i32(i32 %3721) #12
  %3723 = trunc i32 %3722 to i8
  %3724 = and i8 %3723, 1
  %3725 = xor i8 %3724, 1
  store i8 %3725, i8* %23, align 1, !tbaa !2446
  %3726 = xor i32 %3717, %3705
  %3727 = xor i32 %3726, %3718
  %3728 = lshr i32 %3727, 4
  %3729 = trunc i32 %3728 to i8
  %3730 = and i8 %3729, 1
  store i8 %3730, i8* %29, align 1, !tbaa !2447
  %3731 = icmp eq i32 %3718, 0
  %3732 = zext i1 %3731 to i8
  store i8 %3732, i8* %32, align 1, !tbaa !2448
  %3733 = lshr i32 %3718, 31
  %3734 = trunc i32 %3733 to i8
  store i8 %3734, i8* %35, align 1, !tbaa !2449
  %3735 = lshr i32 %3705, 31
  %3736 = lshr i32 %3717, 31
  %3737 = xor i32 %3736, %3735
  %3738 = xor i32 %3733, %3735
  %3739 = add nuw nsw i32 %3738, %3737
  %3740 = icmp eq i32 %3739, 2
  %3741 = zext i1 %3740 to i8
  store i8 %3741, i8* %41, align 1, !tbaa !2450
  %3742 = icmp ne i8 %3734, 0
  %3743 = xor i1 %3742, %3740
  %.demorgan260 = or i1 %3731, %3743
  %.v294 = select i1 %.demorgan260, i64 20, i64 70
  %3744 = add i64 %3700, %.v294
  store i64 %3744, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan260, label %block_4010d1, label %block_401103

block_400aba:                                     ; preds = %block_400a84
  %3745 = add i64 %3415, -1328
  %3746 = add i64 %3444, 10
  store i64 %3746, i64* %PC, align 8
  %3747 = inttoptr i64 %3745 to i32*
  store i32 0, i32* %3747, align 4
  %3748 = load i64, i64* %RBP, align 8
  %3749 = add i64 %3748, -1324
  %3750 = load i64, i64* %PC, align 8
  %3751 = add i64 %3750, 10
  store i64 %3751, i64* %PC, align 8
  %3752 = inttoptr i64 %3749 to i32*
  store i32 0, i32* %3752, align 4
  %3753 = load i64, i64* %RBP, align 8
  %3754 = add i64 %3753, -1408
  %3755 = load i64, i64* %PC, align 8
  %3756 = add i64 %3755, 10
  store i64 %3756, i64* %PC, align 8
  %3757 = inttoptr i64 %3754 to i32*
  store i32 -1, i32* %3757, align 4
  %3758 = load i64, i64* %RBP, align 8
  %3759 = add i64 %3758, -1404
  %3760 = load i64, i64* %PC, align 8
  %3761 = add i64 %3760, 10
  store i64 %3761, i64* %PC, align 8
  %3762 = inttoptr i64 %3759 to i32*
  store i32 0, i32* %3762, align 4
  %3763 = load i64, i64* %RBP, align 8
  %3764 = add i64 %3763, -12
  %3765 = load i64, i64* %PC, align 8
  %3766 = add i64 %3765, 7
  store i64 %3766, i64* %PC, align 8
  %3767 = inttoptr i64 %3764 to i32*
  store i32 0, i32* %3767, align 4
  %.pre182 = load i64, i64* %RBP, align 8
  %.pre183 = load i64, i64* %PC, align 8
  br label %block_400ae9

block_40186d.loopexit:                            ; preds = %block_401804
  br label %block_40186d

block_40186d:                                     ; preds = %block_40186d.loopexit, %block_4017f8
  %3768 = phi i64 [ %57, %block_4017f8 ], [ %6234, %block_40186d.loopexit ]
  %.sink5 = phi i64 [ 117, %block_4017f8 ], [ 5, %block_40186d.loopexit ]
  %MEMORY.30 = phi %struct.Memory* [ %MEMORY.0, %block_4017f8 ], [ %MEMORY.5, %block_40186d.loopexit ]
  %3769 = add i64 %3768, %.sink5
  %3770 = load i64, i64* %RSP, align 8
  %3771 = add i64 %3770, 2608
  store i64 %3771, i64* %RSP, align 8, !tbaa !2428
  %3772 = icmp ugt i64 %3770, -2609
  %3773 = zext i1 %3772 to i8
  store i8 %3773, i8* %16, align 1, !tbaa !2432
  %3774 = trunc i64 %3771 to i32
  %3775 = and i32 %3774, 255
  %3776 = tail call i32 @llvm.ctpop.i32(i32 %3775) #12
  %3777 = trunc i32 %3776 to i8
  %3778 = and i8 %3777, 1
  %3779 = xor i8 %3778, 1
  store i8 %3779, i8* %23, align 1, !tbaa !2446
  %3780 = xor i64 %3770, 16
  %3781 = xor i64 %3780, %3771
  %3782 = lshr i64 %3781, 4
  %3783 = trunc i64 %3782 to i8
  %3784 = and i8 %3783, 1
  store i8 %3784, i8* %29, align 1, !tbaa !2447
  %3785 = icmp eq i64 %3771, 0
  %3786 = zext i1 %3785 to i8
  store i8 %3786, i8* %32, align 1, !tbaa !2448
  %3787 = lshr i64 %3771, 63
  %3788 = trunc i64 %3787 to i8
  store i8 %3788, i8* %35, align 1, !tbaa !2449
  %3789 = lshr i64 %3770, 63
  %3790 = xor i64 %3787, %3789
  %3791 = add nuw nsw i64 %3790, %3787
  %3792 = icmp eq i64 %3791, 2
  %3793 = zext i1 %3792 to i8
  store i8 %3793, i8* %41, align 1, !tbaa !2450
  %3794 = add i64 %3769, 8
  store i64 %3794, i64* %PC, align 8
  %3795 = add i64 %3770, 2616
  %3796 = inttoptr i64 %3771 to i64*
  %3797 = load i64, i64* %3796, align 8
  store i64 %3797, i64* %RBP, align 8, !tbaa !2428
  store i64 %3795, i64* %RSP, align 8, !tbaa !2428
  %3798 = add i64 %3769, 9
  store i64 %3798, i64* %PC, align 8
  %3799 = inttoptr i64 %3795 to i64*
  %3800 = load i64, i64* %3799, align 8
  store i64 %3800, i64* %PC, align 8, !tbaa !2428
  %3801 = add i64 %3770, 2624
  store i64 %3801, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.30

block_401846:                                     ; preds = %block_401811
  %3802 = add i64 %5972, 15
  store i64 %3802, i64* %PC, align 8
  %3803 = inttoptr i64 %5977 to i32*
  store i32 0, i32* %3803, align 4
  %.pre256 = load i64, i64* %PC, align 8
  br label %block_401855

block_400b3a:                                     ; preds = %block_400b26
  %3804 = add i64 %4754, -1168
  store i64 %3804, i64* %RAX, align 8, !tbaa !2428
  %3805 = add i64 %4797, 11
  store i64 %3805, i64* %PC, align 8
  %3806 = load i32, i32* %4762, align 4
  %3807 = sext i32 %3806 to i64
  %3808 = shl nsw i64 %3807, 6
  store i64 %3808, i64* %RCX, align 8, !tbaa !2428
  %3809 = add i64 %3808, %3804
  store i64 %3809, i64* %RDX, align 8, !tbaa !2428
  %3810 = icmp ult i64 %3809, %3804
  %3811 = icmp ult i64 %3809, %3808
  %3812 = or i1 %3810, %3811
  %3813 = zext i1 %3812 to i8
  store i8 %3813, i8* %16, align 1, !tbaa !2432
  %3814 = trunc i64 %3809 to i32
  %3815 = and i32 %3814, 255
  %3816 = tail call i32 @llvm.ctpop.i32(i32 %3815) #12
  %3817 = trunc i32 %3816 to i8
  %3818 = and i8 %3817, 1
  %3819 = xor i8 %3818, 1
  store i8 %3819, i8* %23, align 1, !tbaa !2446
  %3820 = xor i64 %3804, %3809
  %3821 = lshr i64 %3820, 4
  %3822 = trunc i64 %3821 to i8
  %3823 = and i8 %3822, 1
  store i8 %3823, i8* %29, align 1, !tbaa !2447
  %3824 = icmp eq i64 %3809, 0
  %3825 = zext i1 %3824 to i8
  store i8 %3825, i8* %32, align 1, !tbaa !2448
  %3826 = lshr i64 %3809, 63
  %3827 = trunc i64 %3826 to i8
  store i8 %3827, i8* %35, align 1, !tbaa !2449
  %3828 = lshr i64 %3804, 63
  %3829 = lshr i64 %3807, 57
  %3830 = and i64 %3829, 1
  %3831 = xor i64 %3826, %3828
  %3832 = xor i64 %3826, %3830
  %3833 = add nuw nsw i64 %3831, %3832
  %3834 = icmp eq i64 %3833, 2
  %3835 = zext i1 %3834 to i8
  store i8 %3835, i8* %41, align 1, !tbaa !2450
  %3836 = add i64 %4797, 25
  store i64 %3836, i64* %PC, align 8
  %3837 = load i32, i32* %4757, align 4
  %3838 = sext i32 %3837 to i64
  store i64 %3838, i64* %RCX, align 8, !tbaa !2428
  %3839 = shl nsw i64 %3838, 2
  %3840 = add i64 %3839, %3809
  %3841 = add i64 %4797, 28
  store i64 %3841, i64* %PC, align 8
  %3842 = inttoptr i64 %3840 to i32*
  %3843 = load i32, i32* %3842, align 4
  %3844 = zext i32 %3843 to i64
  store i64 %3844, i64* %RSI, align 8, !tbaa !2428
  %3845 = add i64 %4797, 31
  store i64 %3845, i64* %PC, align 8
  %3846 = load i32, i32* %4762, align 4
  %3847 = add i32 %3846, 1
  %3848 = zext i32 %3847 to i64
  store i64 %3848, i64* %RDI, align 8, !tbaa !2428
  %3849 = sext i32 %3847 to i64
  %3850 = shl nsw i64 %3849, 6
  store i64 %3850, i64* %RCX, align 8, !tbaa !2428
  %3851 = load i64, i64* %RAX, align 8
  %3852 = add i64 %3850, %3851
  store i64 %3852, i64* %RDX, align 8, !tbaa !2428
  %3853 = icmp ult i64 %3852, %3851
  %3854 = icmp ult i64 %3852, %3850
  %3855 = or i1 %3853, %3854
  %3856 = zext i1 %3855 to i8
  store i8 %3856, i8* %16, align 1, !tbaa !2432
  %3857 = trunc i64 %3852 to i32
  %3858 = and i32 %3857, 255
  %3859 = tail call i32 @llvm.ctpop.i32(i32 %3858) #12
  %3860 = trunc i32 %3859 to i8
  %3861 = and i8 %3860, 1
  %3862 = xor i8 %3861, 1
  store i8 %3862, i8* %23, align 1, !tbaa !2446
  %3863 = xor i64 %3851, %3852
  %3864 = lshr i64 %3863, 4
  %3865 = trunc i64 %3864 to i8
  %3866 = and i8 %3865, 1
  store i8 %3866, i8* %29, align 1, !tbaa !2447
  %3867 = icmp eq i64 %3852, 0
  %3868 = zext i1 %3867 to i8
  store i8 %3868, i8* %32, align 1, !tbaa !2448
  %3869 = lshr i64 %3852, 63
  %3870 = trunc i64 %3869 to i8
  store i8 %3870, i8* %35, align 1, !tbaa !2449
  %3871 = lshr i64 %3851, 63
  %3872 = lshr i64 %3849, 57
  %3873 = and i64 %3872, 1
  %3874 = xor i64 %3869, %3871
  %3875 = xor i64 %3869, %3873
  %3876 = add nuw nsw i64 %3874, %3875
  %3877 = icmp eq i64 %3876, 2
  %3878 = zext i1 %3877 to i8
  store i8 %3878, i8* %41, align 1, !tbaa !2450
  %3879 = load i64, i64* %RBP, align 8
  %3880 = add i64 %3879, -4
  %3881 = add i64 %4797, 51
  store i64 %3881, i64* %PC, align 8
  %3882 = inttoptr i64 %3880 to i32*
  %3883 = load i32, i32* %3882, align 4
  %3884 = sext i32 %3883 to i64
  store i64 %3884, i64* %RCX, align 8, !tbaa !2428
  %3885 = shl nsw i64 %3884, 2
  %3886 = add i64 %3885, %3852
  %3887 = load i32, i32* %ESI, align 4
  %3888 = add i64 %4797, 54
  store i64 %3888, i64* %PC, align 8
  %3889 = inttoptr i64 %3886 to i32*
  store i32 %3887, i32* %3889, align 4
  %3890 = load i64, i64* %RBP, align 8
  %3891 = add i64 %3890, -12
  %3892 = load i64, i64* %PC, align 8
  %3893 = add i64 %3892, 4
  store i64 %3893, i64* %PC, align 8
  %3894 = inttoptr i64 %3891 to i32*
  %3895 = load i32, i32* %3894, align 4
  %3896 = sext i32 %3895 to i64
  %3897 = shl nsw i64 %3896, 6
  store i64 %3897, i64* %RCX, align 8, !tbaa !2428
  %3898 = load i64, i64* %RAX, align 8
  %3899 = add i64 %3897, %3898
  store i64 %3899, i64* %RDX, align 8, !tbaa !2428
  %3900 = icmp ult i64 %3899, %3898
  %3901 = icmp ult i64 %3899, %3897
  %3902 = or i1 %3900, %3901
  %3903 = zext i1 %3902 to i8
  store i8 %3903, i8* %16, align 1, !tbaa !2432
  %3904 = trunc i64 %3899 to i32
  %3905 = and i32 %3904, 255
  %3906 = tail call i32 @llvm.ctpop.i32(i32 %3905) #12
  %3907 = trunc i32 %3906 to i8
  %3908 = and i8 %3907, 1
  %3909 = xor i8 %3908, 1
  store i8 %3909, i8* %23, align 1, !tbaa !2446
  %3910 = xor i64 %3898, %3899
  %3911 = lshr i64 %3910, 4
  %3912 = trunc i64 %3911 to i8
  %3913 = and i8 %3912, 1
  store i8 %3913, i8* %29, align 1, !tbaa !2447
  %3914 = icmp eq i64 %3899, 0
  %3915 = zext i1 %3914 to i8
  store i8 %3915, i8* %32, align 1, !tbaa !2448
  %3916 = lshr i64 %3899, 63
  %3917 = trunc i64 %3916 to i8
  store i8 %3917, i8* %35, align 1, !tbaa !2449
  %3918 = lshr i64 %3898, 63
  %3919 = lshr i64 %3896, 57
  %3920 = and i64 %3919, 1
  %3921 = xor i64 %3916, %3918
  %3922 = xor i64 %3916, %3920
  %3923 = add nuw nsw i64 %3921, %3922
  %3924 = icmp eq i64 %3923, 2
  %3925 = zext i1 %3924 to i8
  store i8 %3925, i8* %41, align 1, !tbaa !2450
  %3926 = add i64 %3890, -4
  %3927 = add i64 %3892, 18
  store i64 %3927, i64* %PC, align 8
  %3928 = inttoptr i64 %3926 to i32*
  %3929 = load i32, i32* %3928, align 4
  %3930 = sext i32 %3929 to i64
  store i64 %3930, i64* %RCX, align 8, !tbaa !2428
  %3931 = shl nsw i64 %3930, 2
  %3932 = add i64 %3931, %3899
  %3933 = add i64 %3892, 22
  store i64 %3933, i64* %PC, align 8
  %3934 = inttoptr i64 %3932 to i32*
  %3935 = load i32, i32* %3934, align 4
  %3936 = sext i32 %3935 to i64
  store i64 %3936, i64* %RCX, align 8, !tbaa !2428
  %3937 = shl nsw i64 %3936, 2
  %3938 = add i64 %3937, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %3939 = add i64 %3892, 29
  store i64 %3939, i64* %PC, align 8
  %3940 = inttoptr i64 %3938 to i32*
  %3941 = load i32, i32* %3940, align 4
  %3942 = zext i32 %3941 to i64
  store i64 %3942, i64* %RSI, align 8, !tbaa !2428
  %3943 = add i64 %3892, 33
  store i64 %3943, i64* %PC, align 8
  %3944 = load i32, i32* %3894, align 4
  %3945 = sext i32 %3944 to i64
  %3946 = shl nsw i64 %3945, 6
  store i64 %3946, i64* %RCX, align 8, !tbaa !2428
  %3947 = add i64 %3946, %3898
  store i64 %3947, i64* %RAX, align 8, !tbaa !2428
  %3948 = icmp ult i64 %3947, %3898
  %3949 = icmp ult i64 %3947, %3946
  %3950 = or i1 %3948, %3949
  %3951 = zext i1 %3950 to i8
  store i8 %3951, i8* %16, align 1, !tbaa !2432
  %3952 = trunc i64 %3947 to i32
  %3953 = and i32 %3952, 255
  %3954 = tail call i32 @llvm.ctpop.i32(i32 %3953) #12
  %3955 = trunc i32 %3954 to i8
  %3956 = and i8 %3955, 1
  %3957 = xor i8 %3956, 1
  store i8 %3957, i8* %23, align 1, !tbaa !2446
  %3958 = xor i64 %3898, %3947
  %3959 = lshr i64 %3958, 4
  %3960 = trunc i64 %3959 to i8
  %3961 = and i8 %3960, 1
  store i8 %3961, i8* %29, align 1, !tbaa !2447
  %3962 = icmp eq i64 %3947, 0
  %3963 = zext i1 %3962 to i8
  store i8 %3963, i8* %32, align 1, !tbaa !2448
  %3964 = lshr i64 %3947, 63
  %3965 = trunc i64 %3964 to i8
  store i8 %3965, i8* %35, align 1, !tbaa !2449
  %3966 = lshr i64 %3945, 57
  %3967 = and i64 %3966, 1
  %3968 = xor i64 %3964, %3918
  %3969 = xor i64 %3964, %3967
  %3970 = add nuw nsw i64 %3968, %3969
  %3971 = icmp eq i64 %3970, 2
  %3972 = zext i1 %3971 to i8
  store i8 %3972, i8* %41, align 1, !tbaa !2450
  %3973 = load i64, i64* %RBP, align 8
  %3974 = add i64 %3973, -4
  %3975 = add i64 %3892, 44
  store i64 %3975, i64* %PC, align 8
  %3976 = inttoptr i64 %3974 to i32*
  %3977 = load i32, i32* %3976, align 4
  %3978 = sext i32 %3977 to i64
  store i64 %3978, i64* %RCX, align 8, !tbaa !2428
  %3979 = shl nsw i64 %3978, 2
  %3980 = add i64 %3979, %3947
  %3981 = add i64 %3892, 47
  store i64 %3981, i64* %PC, align 8
  %3982 = inttoptr i64 %3980 to i32*
  store i32 %3941, i32* %3982, align 4
  %3983 = load i64, i64* %RBP, align 8
  %3984 = add i64 %3983, -4
  %3985 = load i64, i64* %PC, align 8
  %3986 = add i64 %3985, 3
  store i64 %3986, i64* %PC, align 8
  %3987 = inttoptr i64 %3984 to i32*
  %3988 = load i32, i32* %3987, align 4
  %3989 = add i32 %3988, 1
  %3990 = zext i32 %3989 to i64
  store i64 %3990, i64* %RAX, align 8, !tbaa !2428
  %3991 = icmp eq i32 %3988, -1
  %3992 = icmp eq i32 %3989, 0
  %3993 = or i1 %3991, %3992
  %3994 = zext i1 %3993 to i8
  store i8 %3994, i8* %16, align 1, !tbaa !2432
  %3995 = and i32 %3989, 255
  %3996 = tail call i32 @llvm.ctpop.i32(i32 %3995) #12
  %3997 = trunc i32 %3996 to i8
  %3998 = and i8 %3997, 1
  %3999 = xor i8 %3998, 1
  store i8 %3999, i8* %23, align 1, !tbaa !2446
  %4000 = xor i32 %3989, %3988
  %4001 = lshr i32 %4000, 4
  %4002 = trunc i32 %4001 to i8
  %4003 = and i8 %4002, 1
  store i8 %4003, i8* %29, align 1, !tbaa !2447
  %4004 = zext i1 %3992 to i8
  store i8 %4004, i8* %32, align 1, !tbaa !2448
  %4005 = lshr i32 %3989, 31
  %4006 = trunc i32 %4005 to i8
  store i8 %4006, i8* %35, align 1, !tbaa !2449
  %4007 = lshr i32 %3988, 31
  %4008 = xor i32 %4005, %4007
  %4009 = add nuw nsw i32 %4008, %4005
  %4010 = icmp eq i32 %4009, 2
  %4011 = zext i1 %4010 to i8
  store i8 %4011, i8* %41, align 1, !tbaa !2450
  %4012 = add i64 %3985, 9
  store i64 %4012, i64* %PC, align 8
  store i32 %3989, i32* %3987, align 4
  %4013 = load i64, i64* %PC, align 8
  %4014 = add i64 %4013, -130
  store i64 %4014, i64* %PC, align 8, !tbaa !2428
  br label %block_400b26

block_401072:                                     ; preds = %block_40105e
  %4015 = add i64 %4799, -1168
  store i64 %4015, i64* %RAX, align 8, !tbaa !2428
  %4016 = add i64 %4842, 11
  store i64 %4016, i64* %PC, align 8
  %4017 = load i32, i32* %4807, align 4
  %4018 = sext i32 %4017 to i64
  %4019 = shl nsw i64 %4018, 6
  store i64 %4019, i64* %RCX, align 8, !tbaa !2428
  %4020 = add i64 %4019, %4015
  store i64 %4020, i64* %RDX, align 8, !tbaa !2428
  %4021 = icmp ult i64 %4020, %4015
  %4022 = icmp ult i64 %4020, %4019
  %4023 = or i1 %4021, %4022
  %4024 = zext i1 %4023 to i8
  store i8 %4024, i8* %16, align 1, !tbaa !2432
  %4025 = trunc i64 %4020 to i32
  %4026 = and i32 %4025, 255
  %4027 = tail call i32 @llvm.ctpop.i32(i32 %4026) #12
  %4028 = trunc i32 %4027 to i8
  %4029 = and i8 %4028, 1
  %4030 = xor i8 %4029, 1
  store i8 %4030, i8* %23, align 1, !tbaa !2446
  %4031 = xor i64 %4015, %4020
  %4032 = lshr i64 %4031, 4
  %4033 = trunc i64 %4032 to i8
  %4034 = and i8 %4033, 1
  store i8 %4034, i8* %29, align 1, !tbaa !2447
  %4035 = icmp eq i64 %4020, 0
  %4036 = zext i1 %4035 to i8
  store i8 %4036, i8* %32, align 1, !tbaa !2448
  %4037 = lshr i64 %4020, 63
  %4038 = trunc i64 %4037 to i8
  store i8 %4038, i8* %35, align 1, !tbaa !2449
  %4039 = lshr i64 %4015, 63
  %4040 = lshr i64 %4018, 57
  %4041 = and i64 %4040, 1
  %4042 = xor i64 %4037, %4039
  %4043 = xor i64 %4037, %4041
  %4044 = add nuw nsw i64 %4042, %4043
  %4045 = icmp eq i64 %4044, 2
  %4046 = zext i1 %4045 to i8
  store i8 %4046, i8* %41, align 1, !tbaa !2450
  %4047 = add i64 %4842, 25
  store i64 %4047, i64* %PC, align 8
  %4048 = load i32, i32* %4802, align 4
  %4049 = sext i32 %4048 to i64
  store i64 %4049, i64* %RCX, align 8, !tbaa !2428
  %4050 = shl nsw i64 %4049, 2
  %4051 = add i64 %4050, %4020
  %4052 = add i64 %4842, 29
  store i64 %4052, i64* %PC, align 8
  %4053 = inttoptr i64 %4051 to i32*
  %4054 = load i32, i32* %4053, align 4
  %4055 = sext i32 %4054 to i64
  store i64 %4055, i64* %RCX, align 8, !tbaa !2428
  %4056 = shl nsw i64 %4055, 2
  %4057 = add i64 %4056, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %4058 = add i64 %4842, 36
  store i64 %4058, i64* %PC, align 8
  %4059 = inttoptr i64 %4057 to i32*
  %4060 = load i32, i32* %4059, align 4
  %4061 = zext i32 %4060 to i64
  store i64 %4061, i64* %RSI, align 8, !tbaa !2428
  %4062 = add i64 %4842, 40
  store i64 %4062, i64* %PC, align 8
  %4063 = load i32, i32* %4807, align 4
  %4064 = sext i32 %4063 to i64
  %4065 = shl nsw i64 %4064, 6
  store i64 %4065, i64* %RCX, align 8, !tbaa !2428
  %4066 = load i64, i64* %RAX, align 8
  %4067 = add i64 %4065, %4066
  store i64 %4067, i64* %RAX, align 8, !tbaa !2428
  %4068 = icmp ult i64 %4067, %4066
  %4069 = icmp ult i64 %4067, %4065
  %4070 = or i1 %4068, %4069
  %4071 = zext i1 %4070 to i8
  store i8 %4071, i8* %16, align 1, !tbaa !2432
  %4072 = trunc i64 %4067 to i32
  %4073 = and i32 %4072, 255
  %4074 = tail call i32 @llvm.ctpop.i32(i32 %4073) #12
  %4075 = trunc i32 %4074 to i8
  %4076 = and i8 %4075, 1
  %4077 = xor i8 %4076, 1
  store i8 %4077, i8* %23, align 1, !tbaa !2446
  %4078 = xor i64 %4066, %4067
  %4079 = lshr i64 %4078, 4
  %4080 = trunc i64 %4079 to i8
  %4081 = and i8 %4080, 1
  store i8 %4081, i8* %29, align 1, !tbaa !2447
  %4082 = icmp eq i64 %4067, 0
  %4083 = zext i1 %4082 to i8
  store i8 %4083, i8* %32, align 1, !tbaa !2448
  %4084 = lshr i64 %4067, 63
  %4085 = trunc i64 %4084 to i8
  store i8 %4085, i8* %35, align 1, !tbaa !2449
  %4086 = lshr i64 %4066, 63
  %4087 = lshr i64 %4064, 57
  %4088 = and i64 %4087, 1
  %4089 = xor i64 %4084, %4086
  %4090 = xor i64 %4084, %4088
  %4091 = add nuw nsw i64 %4089, %4090
  %4092 = icmp eq i64 %4091, 2
  %4093 = zext i1 %4092 to i8
  store i8 %4093, i8* %41, align 1, !tbaa !2450
  %4094 = load i64, i64* %RBP, align 8
  %4095 = add i64 %4094, -4
  %4096 = add i64 %4842, 51
  store i64 %4096, i64* %PC, align 8
  %4097 = inttoptr i64 %4095 to i32*
  %4098 = load i32, i32* %4097, align 4
  %4099 = sext i32 %4098 to i64
  store i64 %4099, i64* %RCX, align 8, !tbaa !2428
  %4100 = shl nsw i64 %4099, 2
  %4101 = add i64 %4100, %4067
  %4102 = add i64 %4842, 54
  store i64 %4102, i64* %PC, align 8
  %4103 = inttoptr i64 %4101 to i32*
  store i32 %4060, i32* %4103, align 4
  %4104 = load i64, i64* %RBP, align 8
  %4105 = add i64 %4104, -4
  %4106 = load i64, i64* %PC, align 8
  %4107 = add i64 %4106, 3
  store i64 %4107, i64* %PC, align 8
  %4108 = inttoptr i64 %4105 to i32*
  %4109 = load i32, i32* %4108, align 4
  %4110 = add i32 %4109, 1
  %4111 = zext i32 %4110 to i64
  store i64 %4111, i64* %RAX, align 8, !tbaa !2428
  %4112 = icmp eq i32 %4109, -1
  %4113 = icmp eq i32 %4110, 0
  %4114 = or i1 %4112, %4113
  %4115 = zext i1 %4114 to i8
  store i8 %4115, i8* %16, align 1, !tbaa !2432
  %4116 = and i32 %4110, 255
  %4117 = tail call i32 @llvm.ctpop.i32(i32 %4116) #12
  %4118 = trunc i32 %4117 to i8
  %4119 = and i8 %4118, 1
  %4120 = xor i8 %4119, 1
  store i8 %4120, i8* %23, align 1, !tbaa !2446
  %4121 = xor i32 %4110, %4109
  %4122 = lshr i32 %4121, 4
  %4123 = trunc i32 %4122 to i8
  %4124 = and i8 %4123, 1
  store i8 %4124, i8* %29, align 1, !tbaa !2447
  %4125 = zext i1 %4113 to i8
  store i8 %4125, i8* %32, align 1, !tbaa !2448
  %4126 = lshr i32 %4110, 31
  %4127 = trunc i32 %4126 to i8
  store i8 %4127, i8* %35, align 1, !tbaa !2449
  %4128 = lshr i32 %4109, 31
  %4129 = xor i32 %4126, %4128
  %4130 = add nuw nsw i32 %4129, %4126
  %4131 = icmp eq i32 %4130, 2
  %4132 = zext i1 %4131 to i8
  store i8 %4132, i8* %41, align 1, !tbaa !2450
  %4133 = add i64 %4106, 9
  store i64 %4133, i64* %PC, align 8
  store i32 %4110, i32* %4108, align 4
  %4134 = load i64, i64* %PC, align 8
  %4135 = add i64 %4134, -83
  store i64 %4135, i64* %PC, align 8, !tbaa !2428
  br label %block_40105e

block_401267:                                     ; preds = %block_401247
  %4136 = add i64 %.pre220, -1168
  store i64 %4136, i64* %RAX, align 8, !tbaa !2428
  %4137 = add i64 %.pre220, -4
  %4138 = add i64 %5179, 11
  store i64 %4138, i64* %PC, align 8
  %4139 = inttoptr i64 %4137 to i32*
  %4140 = load i32, i32* %4139, align 4
  %4141 = sext i32 %4140 to i64
  store i64 %4141, i64* %RCX, align 8, !tbaa !2428
  %4142 = shl nsw i64 %4141, 2
  %4143 = add i64 %.pre220, -1488
  %4144 = add i64 %4143, %4142
  %4145 = add i64 %5179, 19
  store i64 %4145, i64* %PC, align 8
  %4146 = inttoptr i64 %4144 to i32*
  %4147 = load i32, i32* %4146, align 4
  %4148 = sext i32 %4147 to i64
  store i64 %4148, i64* %RCX, align 8, !tbaa !2428
  %4149 = shl nsw i64 %4148, 2
  %4150 = add i64 %4149, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %4151 = add i64 %5179, 26
  store i64 %4151, i64* %PC, align 8
  %4152 = inttoptr i64 %4150 to i32*
  %4153 = load i32, i32* %4152, align 4
  %4154 = zext i32 %4153 to i64
  store i64 %4154, i64* %RDX, align 8, !tbaa !2428
  %4155 = add i64 %.pre220, -12
  %4156 = add i64 %5179, 30
  store i64 %4156, i64* %PC, align 8
  %4157 = inttoptr i64 %4155 to i32*
  %4158 = load i32, i32* %4157, align 4
  %4159 = sext i32 %4158 to i64
  %4160 = shl nsw i64 %4159, 6
  store i64 %4160, i64* %RCX, align 8, !tbaa !2428
  %4161 = add i64 %4160, %4136
  store i64 %4161, i64* %RAX, align 8, !tbaa !2428
  %4162 = icmp ult i64 %4161, %4136
  %4163 = icmp ult i64 %4161, %4160
  %4164 = or i1 %4162, %4163
  %4165 = zext i1 %4164 to i8
  store i8 %4165, i8* %16, align 1, !tbaa !2432
  %4166 = trunc i64 %4161 to i32
  %4167 = and i32 %4166, 255
  %4168 = tail call i32 @llvm.ctpop.i32(i32 %4167) #12
  %4169 = trunc i32 %4168 to i8
  %4170 = and i8 %4169, 1
  %4171 = xor i8 %4170, 1
  store i8 %4171, i8* %23, align 1, !tbaa !2446
  %4172 = xor i64 %4136, %4161
  %4173 = lshr i64 %4172, 4
  %4174 = trunc i64 %4173 to i8
  %4175 = and i8 %4174, 1
  store i8 %4175, i8* %29, align 1, !tbaa !2447
  %4176 = icmp eq i64 %4161, 0
  %4177 = zext i1 %4176 to i8
  store i8 %4177, i8* %32, align 1, !tbaa !2448
  %4178 = lshr i64 %4161, 63
  %4179 = trunc i64 %4178 to i8
  store i8 %4179, i8* %35, align 1, !tbaa !2449
  %4180 = lshr i64 %4136, 63
  %4181 = lshr i64 %4159, 57
  %4182 = and i64 %4181, 1
  %4183 = xor i64 %4178, %4180
  %4184 = xor i64 %4178, %4182
  %4185 = add nuw nsw i64 %4183, %4184
  %4186 = icmp eq i64 %4185, 2
  %4187 = zext i1 %4186 to i8
  store i8 %4187, i8* %41, align 1, !tbaa !2450
  %4188 = add i64 %5179, 41
  store i64 %4188, i64* %PC, align 8
  %4189 = load i32, i32* %4139, align 4
  %4190 = sext i32 %4189 to i64
  store i64 %4190, i64* %RCX, align 8, !tbaa !2428
  %4191 = shl nsw i64 %4190, 2
  %4192 = add i64 %4191, %4161
  %4193 = add i64 %5179, 45
  store i64 %4193, i64* %PC, align 8
  %4194 = inttoptr i64 %4192 to i32*
  %4195 = load i32, i32* %4194, align 4
  %4196 = sext i32 %4195 to i64
  store i64 %4196, i64* %RAX, align 8, !tbaa !2428
  %4197 = shl nsw i64 %4196, 2
  %4198 = add i64 %4197, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %4199 = add i64 %5179, 52
  store i64 %4199, i64* %PC, align 8
  %4200 = inttoptr i64 %4198 to i32*
  %4201 = load i32, i32* %4200, align 4
  %4202 = xor i32 %4201, %4153
  %4203 = zext i32 %4202 to i64
  store i64 %4203, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %4204 = and i32 %4202, 255
  %4205 = tail call i32 @llvm.ctpop.i32(i32 %4204) #12
  %4206 = trunc i32 %4205 to i8
  %4207 = and i8 %4206, 1
  %4208 = xor i8 %4207, 1
  store i8 %4208, i8* %23, align 1, !tbaa !2446
  %4209 = icmp eq i32 %4202, 0
  %4210 = zext i1 %4209 to i8
  store i8 %4210, i8* %32, align 1, !tbaa !2448
  %4211 = lshr i32 %4202, 31
  %4212 = trunc i32 %4211 to i8
  store i8 %4212, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %4213 = load i64, i64* %RBP, align 8
  %4214 = add i64 %4213, -4
  %4215 = add i64 %5179, 56
  store i64 %4215, i64* %PC, align 8
  %4216 = inttoptr i64 %4214 to i32*
  %4217 = load i32, i32* %4216, align 4
  %4218 = sext i32 %4217 to i64
  store i64 %4218, i64* %RAX, align 8, !tbaa !2428
  %4219 = shl nsw i64 %4218, 2
  %4220 = add i64 %4213, -1616
  %4221 = add i64 %4220, %4219
  %4222 = add i64 %5179, 63
  store i64 %4222, i64* %PC, align 8
  %4223 = inttoptr i64 %4221 to i32*
  store i32 %4202, i32* %4223, align 4
  %.pre223 = load i64, i64* %PC, align 8
  br label %block_40137c

block_400e6a.loopexit:                            ; preds = %block_400b26
  br label %block_400e6a

block_400e6a.loopexit424:                         ; preds = %block_400ddb
  br label %block_400e6a

block_400e6a:                                     ; preds = %block_400e6a.loopexit424, %block_400e6a.loopexit
  %4224 = phi i64 [ %4754, %block_400e6a.loopexit ], [ %1623, %block_400e6a.loopexit424 ]
  %4225 = phi i64 [ %4797, %block_400e6a.loopexit ], [ %1666, %block_400e6a.loopexit424 ]
  %.sink20 = phi i64 [ 701, %block_400e6a.loopexit ], [ 5, %block_400e6a.loopexit424 ]
  %MEMORY.31 = phi %struct.Memory* [ %MEMORY.20, %block_400e6a.loopexit ], [ %MEMORY.23, %block_400e6a.loopexit424 ]
  %4226 = add i64 %4225, %.sink20
  %4227 = add i64 %4224, -12
  %4228 = add i64 %4226, 3
  store i64 %4228, i64* %PC, align 8
  %4229 = inttoptr i64 %4227 to i32*
  %4230 = load i32, i32* %4229, align 4
  %4231 = zext i32 %4230 to i64
  store i64 %4231, i64* %RAX, align 8, !tbaa !2428
  %4232 = add i64 %4226, 6
  store i64 %4232, i64* %PC, align 8
  %4233 = load i32, i32* %4229, align 4
  %4234 = add i32 %4233, 1
  %4235 = zext i32 %4234 to i64
  store i64 %4235, i64* %RCX, align 8, !tbaa !2428
  %4236 = icmp eq i32 %4233, -1
  %4237 = icmp eq i32 %4234, 0
  %4238 = or i1 %4236, %4237
  %4239 = zext i1 %4238 to i8
  store i8 %4239, i8* %16, align 1, !tbaa !2432
  %4240 = and i32 %4234, 255
  %4241 = tail call i32 @llvm.ctpop.i32(i32 %4240) #12
  %4242 = trunc i32 %4241 to i8
  %4243 = and i8 %4242, 1
  %4244 = xor i8 %4243, 1
  store i8 %4244, i8* %23, align 1, !tbaa !2446
  %4245 = xor i32 %4234, %4233
  %4246 = lshr i32 %4245, 4
  %4247 = trunc i32 %4246 to i8
  %4248 = and i8 %4247, 1
  store i8 %4248, i8* %29, align 1, !tbaa !2447
  %4249 = zext i1 %4237 to i8
  store i8 %4249, i8* %32, align 1, !tbaa !2448
  %4250 = lshr i32 %4234, 31
  %4251 = trunc i32 %4250 to i8
  store i8 %4251, i8* %35, align 1, !tbaa !2449
  %4252 = lshr i32 %4233, 31
  %4253 = xor i32 %4250, %4252
  %4254 = add nuw nsw i32 %4253, %4250
  %4255 = icmp eq i32 %4254, 2
  %4256 = zext i1 %4255 to i8
  store i8 %4256, i8* %41, align 1, !tbaa !2450
  %4257 = sext i32 %4234 to i64
  store i64 %4257, i64* %RDX, align 8, !tbaa !2428
  %4258 = shl nsw i64 %4257, 2
  %4259 = add nsw i64 %4258, -1328
  %4260 = add i64 %4259, %4224
  %4261 = add i64 %4226, 19
  store i64 %4261, i64* %PC, align 8
  %4262 = inttoptr i64 %4260 to i32*
  %4263 = load i32, i32* %4262, align 4
  %4264 = sub i32 %4230, %4263
  %4265 = zext i32 %4264 to i64
  store i64 %4265, i64* %RAX, align 8, !tbaa !2428
  %4266 = icmp ult i32 %4230, %4263
  %4267 = zext i1 %4266 to i8
  store i8 %4267, i8* %16, align 1, !tbaa !2432
  %4268 = and i32 %4264, 255
  %4269 = tail call i32 @llvm.ctpop.i32(i32 %4268) #12
  %4270 = trunc i32 %4269 to i8
  %4271 = and i8 %4270, 1
  %4272 = xor i8 %4271, 1
  store i8 %4272, i8* %23, align 1, !tbaa !2446
  %4273 = xor i32 %4263, %4230
  %4274 = xor i32 %4273, %4264
  %4275 = lshr i32 %4274, 4
  %4276 = trunc i32 %4275 to i8
  %4277 = and i8 %4276, 1
  store i8 %4277, i8* %29, align 1, !tbaa !2447
  %4278 = icmp eq i32 %4264, 0
  %4279 = zext i1 %4278 to i8
  store i8 %4279, i8* %32, align 1, !tbaa !2448
  %4280 = lshr i32 %4264, 31
  %4281 = trunc i32 %4280 to i8
  store i8 %4281, i8* %35, align 1, !tbaa !2449
  %4282 = lshr i32 %4230, 31
  %4283 = lshr i32 %4263, 31
  %4284 = xor i32 %4283, %4282
  %4285 = xor i32 %4280, %4282
  %4286 = add nuw nsw i32 %4285, %4284
  %4287 = icmp eq i32 %4286, 2
  %4288 = zext i1 %4287 to i8
  store i8 %4288, i8* %41, align 1, !tbaa !2450
  %4289 = add i64 %4226, 22
  store i64 %4289, i64* %PC, align 8
  %4290 = load i32, i32* %4229, align 4
  %4291 = add i32 %4290, 1
  %4292 = zext i32 %4291 to i64
  store i64 %4292, i64* %RCX, align 8, !tbaa !2428
  %4293 = icmp eq i32 %4290, -1
  %4294 = icmp eq i32 %4291, 0
  %4295 = or i1 %4293, %4294
  %4296 = zext i1 %4295 to i8
  store i8 %4296, i8* %16, align 1, !tbaa !2432
  %4297 = and i32 %4291, 255
  %4298 = tail call i32 @llvm.ctpop.i32(i32 %4297) #12
  %4299 = trunc i32 %4298 to i8
  %4300 = and i8 %4299, 1
  %4301 = xor i8 %4300, 1
  store i8 %4301, i8* %23, align 1, !tbaa !2446
  %4302 = xor i32 %4291, %4290
  %4303 = lshr i32 %4302, 4
  %4304 = trunc i32 %4303 to i8
  %4305 = and i8 %4304, 1
  store i8 %4305, i8* %29, align 1, !tbaa !2447
  %4306 = zext i1 %4294 to i8
  store i8 %4306, i8* %32, align 1, !tbaa !2448
  %4307 = lshr i32 %4291, 31
  %4308 = trunc i32 %4307 to i8
  store i8 %4308, i8* %35, align 1, !tbaa !2449
  %4309 = lshr i32 %4290, 31
  %4310 = xor i32 %4307, %4309
  %4311 = add nuw nsw i32 %4310, %4307
  %4312 = icmp eq i32 %4311, 2
  %4313 = zext i1 %4312 to i8
  store i8 %4313, i8* %41, align 1, !tbaa !2450
  %4314 = sext i32 %4291 to i64
  store i64 %4314, i64* %RDX, align 8, !tbaa !2428
  %4315 = load i64, i64* %RBP, align 8
  %4316 = shl nsw i64 %4314, 2
  %4317 = add nsw i64 %4316, -1408
  %4318 = add i64 %4317, %4315
  %4319 = add i64 %4226, 35
  store i64 %4319, i64* %PC, align 8
  %4320 = inttoptr i64 %4318 to i32*
  store i32 %4264, i32* %4320, align 4
  %4321 = load i64, i64* %RBP, align 8
  %4322 = add i64 %4321, -12
  %4323 = load i64, i64* %PC, align 8
  %4324 = add i64 %4323, 4
  store i64 %4324, i64* %PC, align 8
  %4325 = inttoptr i64 %4322 to i32*
  %4326 = load i32, i32* %4325, align 4
  %4327 = add i32 %4326, -16
  %4328 = icmp ult i32 %4326, 16
  %4329 = zext i1 %4328 to i8
  store i8 %4329, i8* %16, align 1, !tbaa !2432
  %4330 = and i32 %4327, 255
  %4331 = tail call i32 @llvm.ctpop.i32(i32 %4330) #12
  %4332 = trunc i32 %4331 to i8
  %4333 = and i8 %4332, 1
  %4334 = xor i8 %4333, 1
  store i8 %4334, i8* %23, align 1, !tbaa !2446
  %4335 = xor i32 %4326, 16
  %4336 = xor i32 %4335, %4327
  %4337 = lshr i32 %4336, 4
  %4338 = trunc i32 %4337 to i8
  %4339 = and i8 %4338, 1
  store i8 %4339, i8* %29, align 1, !tbaa !2447
  %4340 = icmp eq i32 %4327, 0
  %4341 = zext i1 %4340 to i8
  store i8 %4341, i8* %32, align 1, !tbaa !2448
  %4342 = lshr i32 %4327, 31
  %4343 = trunc i32 %4342 to i8
  store i8 %4343, i8* %35, align 1, !tbaa !2449
  %4344 = lshr i32 %4326, 31
  %4345 = xor i32 %4342, %4344
  %4346 = add nuw nsw i32 %4345, %4344
  %4347 = icmp eq i32 %4346, 2
  %4348 = zext i1 %4347 to i8
  store i8 %4348, i8* %41, align 1, !tbaa !2450
  %4349 = icmp ne i8 %4343, 0
  %4350 = xor i1 %4349, %4347
  %.v273 = select i1 %4350, i64 10, i64 366
  %4351 = add i64 %4323, %.v273
  store i64 %4351, i64* %PC, align 8, !tbaa !2428
  br i1 %4350, label %block_400e97, label %block_400ffb

block_40171a:                                     ; preds = %block_401713, %block_40176b
  %4352 = phi i64 [ %.pre251, %block_401713 ], [ %869, %block_40176b ]
  %4353 = load i64, i64* %RBP, align 8
  %4354 = add i64 %4353, -4
  %4355 = add i64 %4352, 7
  store i64 %4355, i64* %PC, align 8
  %4356 = inttoptr i64 %4354 to i32*
  %4357 = load i32, i32* %4356, align 4
  %4358 = add i32 %4357, -255
  %4359 = icmp ult i32 %4357, 255
  %4360 = zext i1 %4359 to i8
  store i8 %4360, i8* %16, align 1, !tbaa !2432
  %4361 = and i32 %4358, 255
  %4362 = tail call i32 @llvm.ctpop.i32(i32 %4361) #12
  %4363 = trunc i32 %4362 to i8
  %4364 = and i8 %4363, 1
  %4365 = xor i8 %4364, 1
  store i8 %4365, i8* %23, align 1, !tbaa !2446
  %4366 = xor i32 %4357, 16
  %4367 = xor i32 %4366, %4358
  %4368 = lshr i32 %4367, 4
  %4369 = trunc i32 %4368 to i8
  %4370 = and i8 %4369, 1
  store i8 %4370, i8* %29, align 1, !tbaa !2447
  %4371 = icmp eq i32 %4358, 0
  %4372 = zext i1 %4371 to i8
  store i8 %4372, i8* %32, align 1, !tbaa !2448
  %4373 = lshr i32 %4358, 31
  %4374 = trunc i32 %4373 to i8
  store i8 %4374, i8* %35, align 1, !tbaa !2449
  %4375 = lshr i32 %4357, 31
  %4376 = xor i32 %4373, %4375
  %4377 = add nuw nsw i32 %4376, %4375
  %4378 = icmp eq i32 %4377, 2
  %4379 = zext i1 %4378 to i8
  store i8 %4379, i8* %41, align 1, !tbaa !2450
  %4380 = icmp ne i8 %4374, 0
  %4381 = xor i1 %4380, %4378
  %.v269 = select i1 %4381, i64 13, i64 100
  %4382 = add i64 %4352, %.v269
  store i64 %4382, i64* %PC, align 8, !tbaa !2428
  br i1 %4381, label %block_401727, label %block_401783.loopexit423

block_400caa:                                     ; preds = %block_400c66
  %4383 = add i64 %4974, -16
  %4384 = add i64 %4973, 4
  store i64 %4384, i64* %PC, align 8
  %4385 = inttoptr i64 %4383 to i32*
  %4386 = load i32, i32* %4385, align 4
  %4387 = sext i32 %4386 to i64
  store i64 %4387, i64* %RAX, align 8, !tbaa !2428
  %4388 = shl nsw i64 %4387, 2
  %4389 = add i64 %4974, -1328
  %4390 = add i64 %4389, %4388
  %4391 = add i64 %4973, 11
  store i64 %4391, i64* %PC, align 8
  %4392 = inttoptr i64 %4390 to i32*
  %4393 = load i32, i32* %4392, align 4
  %4394 = zext i32 %4393 to i64
  store i64 %4394, i64* %RCX, align 8, !tbaa !2428
  %4395 = add i64 %4974, -12
  %4396 = add i64 %4973, 14
  store i64 %4396, i64* %PC, align 8
  %4397 = inttoptr i64 %4395 to i32*
  %4398 = load i32, i32* %4397, align 4
  %4399 = add i32 %4398, %4393
  %4400 = zext i32 %4399 to i64
  store i64 %4400, i64* %RCX, align 8, !tbaa !2428
  %4401 = icmp ult i32 %4399, %4393
  %4402 = icmp ult i32 %4399, %4398
  %4403 = or i1 %4401, %4402
  %4404 = zext i1 %4403 to i8
  store i8 %4404, i8* %16, align 1, !tbaa !2432
  %4405 = and i32 %4399, 255
  %4406 = tail call i32 @llvm.ctpop.i32(i32 %4405) #12
  %4407 = trunc i32 %4406 to i8
  %4408 = and i8 %4407, 1
  %4409 = xor i8 %4408, 1
  store i8 %4409, i8* %23, align 1, !tbaa !2446
  %4410 = xor i32 %4398, %4393
  %4411 = xor i32 %4410, %4399
  %4412 = lshr i32 %4411, 4
  %4413 = trunc i32 %4412 to i8
  %4414 = and i8 %4413, 1
  store i8 %4414, i8* %29, align 1, !tbaa !2447
  %4415 = icmp eq i32 %4399, 0
  %4416 = zext i1 %4415 to i8
  store i8 %4416, i8* %32, align 1, !tbaa !2448
  %4417 = lshr i32 %4399, 31
  %4418 = trunc i32 %4417 to i8
  store i8 %4418, i8* %35, align 1, !tbaa !2449
  %4419 = lshr i32 %4393, 31
  %4420 = lshr i32 %4398, 31
  %4421 = xor i32 %4417, %4419
  %4422 = xor i32 %4417, %4420
  %4423 = add nuw nsw i32 %4421, %4422
  %4424 = icmp eq i32 %4423, 2
  %4425 = zext i1 %4424 to i8
  store i8 %4425, i8* %41, align 1, !tbaa !2450
  %4426 = add i64 %4973, 17
  store i64 %4426, i64* %PC, align 8
  %4427 = load i32, i32* %4385, align 4
  %4428 = sub i32 %4399, %4427
  %4429 = zext i32 %4428 to i64
  store i64 %4429, i64* %RCX, align 8, !tbaa !2428
  %4430 = icmp ult i32 %4399, %4427
  %4431 = zext i1 %4430 to i8
  store i8 %4431, i8* %16, align 1, !tbaa !2432
  %4432 = and i32 %4428, 255
  %4433 = tail call i32 @llvm.ctpop.i32(i32 %4432) #12
  %4434 = trunc i32 %4433 to i8
  %4435 = and i8 %4434, 1
  %4436 = xor i8 %4435, 1
  store i8 %4436, i8* %23, align 1, !tbaa !2446
  %4437 = xor i32 %4427, %4399
  %4438 = xor i32 %4437, %4428
  %4439 = lshr i32 %4438, 4
  %4440 = trunc i32 %4439 to i8
  %4441 = and i8 %4440, 1
  store i8 %4441, i8* %29, align 1, !tbaa !2447
  %4442 = icmp eq i32 %4428, 0
  %4443 = zext i1 %4442 to i8
  store i8 %4443, i8* %32, align 1, !tbaa !2448
  %4444 = lshr i32 %4428, 31
  %4445 = trunc i32 %4444 to i8
  store i8 %4445, i8* %35, align 1, !tbaa !2449
  %4446 = lshr i32 %4427, 31
  %4447 = xor i32 %4446, %4417
  %4448 = xor i32 %4444, %4417
  %4449 = add nuw nsw i32 %4448, %4447
  %4450 = icmp eq i32 %4449, 2
  %4451 = zext i1 %4450 to i8
  store i8 %4451, i8* %41, align 1, !tbaa !2450
  %4452 = add i64 %4973, 20
  store i64 %4452, i64* %PC, align 8
  %4453 = load i32, i32* %4397, align 4
  %4454 = add i32 %4453, 1
  %4455 = zext i32 %4454 to i64
  store i64 %4455, i64* %RDX, align 8, !tbaa !2428
  %4456 = icmp eq i32 %4453, -1
  %4457 = icmp eq i32 %4454, 0
  %4458 = or i1 %4456, %4457
  %4459 = zext i1 %4458 to i8
  store i8 %4459, i8* %16, align 1, !tbaa !2432
  %4460 = and i32 %4454, 255
  %4461 = tail call i32 @llvm.ctpop.i32(i32 %4460) #12
  %4462 = trunc i32 %4461 to i8
  %4463 = and i8 %4462, 1
  %4464 = xor i8 %4463, 1
  store i8 %4464, i8* %23, align 1, !tbaa !2446
  %4465 = xor i32 %4454, %4453
  %4466 = lshr i32 %4465, 4
  %4467 = trunc i32 %4466 to i8
  %4468 = and i8 %4467, 1
  store i8 %4468, i8* %29, align 1, !tbaa !2447
  %4469 = zext i1 %4457 to i8
  store i8 %4469, i8* %32, align 1, !tbaa !2448
  %4470 = lshr i32 %4454, 31
  %4471 = trunc i32 %4470 to i8
  store i8 %4471, i8* %35, align 1, !tbaa !2449
  %4472 = lshr i32 %4453, 31
  %4473 = xor i32 %4470, %4472
  %4474 = add nuw nsw i32 %4473, %4470
  %4475 = icmp eq i32 %4474, 2
  %4476 = zext i1 %4475 to i8
  store i8 %4476, i8* %41, align 1, !tbaa !2450
  %4477 = sext i32 %4454 to i64
  store i64 %4477, i64* %RAX, align 8, !tbaa !2428
  %4478 = load i64, i64* %RBP, align 8
  %4479 = shl nsw i64 %4477, 2
  %4480 = add nsw i64 %4479, -1328
  %4481 = add i64 %4480, %4478
  %4482 = add i64 %4973, 33
  store i64 %4482, i64* %PC, align 8
  %4483 = inttoptr i64 %4481 to i32*
  store i32 %4428, i32* %4483, align 4
  %.pre191 = load i64, i64* %PC, align 8
  br label %block_400ccb

block_401467:                                     ; preds = %block_4014c7, %block_401460
  %4484 = phi i64 [ %5111, %block_4014c7 ], [ %.pre229, %block_401460 ]
  %4485 = load i64, i64* %RBP, align 8
  %4486 = add i64 %4485, -4
  %4487 = add i64 %4484, 7
  store i64 %4487, i64* %PC, align 8
  %4488 = inttoptr i64 %4486 to i32*
  %4489 = load i32, i32* %4488, align 4
  %4490 = add i32 %4489, -255
  %4491 = icmp ult i32 %4489, 255
  %4492 = zext i1 %4491 to i8
  store i8 %4492, i8* %16, align 1, !tbaa !2432
  %4493 = and i32 %4490, 255
  %4494 = tail call i32 @llvm.ctpop.i32(i32 %4493) #12
  %4495 = trunc i32 %4494 to i8
  %4496 = and i8 %4495, 1
  %4497 = xor i8 %4496, 1
  store i8 %4497, i8* %23, align 1, !tbaa !2446
  %4498 = xor i32 %4489, 16
  %4499 = xor i32 %4498, %4490
  %4500 = lshr i32 %4499, 4
  %4501 = trunc i32 %4500 to i8
  %4502 = and i8 %4501, 1
  store i8 %4502, i8* %29, align 1, !tbaa !2447
  %4503 = icmp eq i32 %4490, 0
  %4504 = zext i1 %4503 to i8
  store i8 %4504, i8* %32, align 1, !tbaa !2448
  %4505 = lshr i32 %4490, 31
  %4506 = trunc i32 %4505 to i8
  store i8 %4506, i8* %35, align 1, !tbaa !2449
  %4507 = lshr i32 %4489, 31
  %4508 = xor i32 %4505, %4507
  %4509 = add nuw nsw i32 %4508, %4507
  %4510 = icmp eq i32 %4509, 2
  %4511 = zext i1 %4510 to i8
  store i8 %4511, i8* %41, align 1, !tbaa !2450
  %4512 = icmp ne i8 %4506, 0
  %4513 = xor i1 %4512, %4510
  %.v296 = select i1 %4513, i64 13, i64 115
  %4514 = add i64 %4484, %.v296
  store i64 %4514, i64* %PC, align 8, !tbaa !2428
  br i1 %4513, label %block_401474, label %block_4014da

block_401513:                                     ; preds = %block_4014f5, %block_40158f
  %4515 = phi i64 [ %.pre231, %block_4014f5 ], [ %6106, %block_40158f ]
  %MEMORY.34 = phi %struct.Memory* [ %MEMORY.38, %block_4014f5 ], [ %MEMORY.51, %block_40158f ]
  %4516 = load i64, i64* %RBP, align 8
  %4517 = add i64 %4516, -8
  %4518 = add i64 %4515, 3
  store i64 %4518, i64* %PC, align 8
  %4519 = inttoptr i64 %4517 to i32*
  %4520 = load i32, i32* %4519, align 4
  %4521 = zext i32 %4520 to i64
  store i64 %4521, i64* %RAX, align 8, !tbaa !2428
  %4522 = add i64 %4516, -12
  %4523 = add i64 %4515, 7
  store i64 %4523, i64* %PC, align 8
  %4524 = inttoptr i64 %4522 to i32*
  %4525 = load i32, i32* %4524, align 4
  %4526 = sext i32 %4525 to i64
  store i64 %4526, i64* %RCX, align 8, !tbaa !2428
  %4527 = shl nsw i64 %4526, 2
  %4528 = add nsw i64 %4527, -1328
  %4529 = add i64 %4528, %4516
  %4530 = add i64 %4515, 14
  store i64 %4530, i64* %PC, align 8
  %4531 = inttoptr i64 %4529 to i32*
  %4532 = load i32, i32* %4531, align 4
  %4533 = sub i32 %4520, %4532
  %4534 = icmp ult i32 %4520, %4532
  %4535 = zext i1 %4534 to i8
  store i8 %4535, i8* %16, align 1, !tbaa !2432
  %4536 = and i32 %4533, 255
  %4537 = tail call i32 @llvm.ctpop.i32(i32 %4536) #12
  %4538 = trunc i32 %4537 to i8
  %4539 = and i8 %4538, 1
  %4540 = xor i8 %4539, 1
  store i8 %4540, i8* %23, align 1, !tbaa !2446
  %4541 = xor i32 %4532, %4520
  %4542 = xor i32 %4541, %4533
  %4543 = lshr i32 %4542, 4
  %4544 = trunc i32 %4543 to i8
  %4545 = and i8 %4544, 1
  store i8 %4545, i8* %29, align 1, !tbaa !2447
  %4546 = icmp eq i32 %4533, 0
  %4547 = zext i1 %4546 to i8
  store i8 %4547, i8* %32, align 1, !tbaa !2448
  %4548 = lshr i32 %4533, 31
  %4549 = trunc i32 %4548 to i8
  store i8 %4549, i8* %35, align 1, !tbaa !2449
  %4550 = lshr i32 %4520, 31
  %4551 = lshr i32 %4532, 31
  %4552 = xor i32 %4551, %4550
  %4553 = xor i32 %4548, %4550
  %4554 = add nuw nsw i32 %4553, %4552
  %4555 = icmp eq i32 %4554, 2
  %4556 = zext i1 %4555 to i8
  store i8 %4556, i8* %41, align 1, !tbaa !2450
  %4557 = icmp ne i8 %4549, 0
  %4558 = xor i1 %4557, %4555
  %.demorgan266 = or i1 %4546, %4558
  %.v298 = select i1 %.demorgan266, i64 20, i64 143
  %4559 = add i64 %4515, %.v298
  store i64 %4559, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan266, label %block_401527, label %block_4015a2

block_401661:                                     ; preds = %block_40160c, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %4560 = phi i64 [ %2218, %block_40160c ], [ %.pre247, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %4561 = phi i64 [ %6074, %block_40160c ], [ %.pre246, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %MEMORY.35 = phi %struct.Memory* [ %MEMORY.17, %block_40160c ], [ %5748, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %4562 = add i64 %4560, -8
  %4563 = add i64 %4561, 8
  store i64 %4563, i64* %PC, align 8
  %4564 = inttoptr i64 %4562 to i32*
  %4565 = load i32, i32* %4564, align 4
  %4566 = add i32 %4565, 1
  %4567 = zext i32 %4566 to i64
  store i64 %4567, i64* %RAX, align 8, !tbaa !2428
  %4568 = icmp eq i32 %4565, -1
  %4569 = icmp eq i32 %4566, 0
  %4570 = or i1 %4568, %4569
  %4571 = zext i1 %4570 to i8
  store i8 %4571, i8* %16, align 1, !tbaa !2432
  %4572 = and i32 %4566, 255
  %4573 = tail call i32 @llvm.ctpop.i32(i32 %4572) #12
  %4574 = trunc i32 %4573 to i8
  %4575 = and i8 %4574, 1
  %4576 = xor i8 %4575, 1
  store i8 %4576, i8* %23, align 1, !tbaa !2446
  %4577 = xor i32 %4566, %4565
  %4578 = lshr i32 %4577, 4
  %4579 = trunc i32 %4578 to i8
  %4580 = and i8 %4579, 1
  store i8 %4580, i8* %29, align 1, !tbaa !2447
  %4581 = zext i1 %4569 to i8
  store i8 %4581, i8* %32, align 1, !tbaa !2448
  %4582 = lshr i32 %4566, 31
  %4583 = trunc i32 %4582 to i8
  store i8 %4583, i8* %35, align 1, !tbaa !2449
  %4584 = lshr i32 %4565, 31
  %4585 = xor i32 %4582, %4584
  %4586 = add nuw nsw i32 %4585, %4582
  %4587 = icmp eq i32 %4586, 2
  %4588 = zext i1 %4587 to i8
  store i8 %4588, i8* %41, align 1, !tbaa !2450
  %4589 = add i64 %4561, 14
  store i64 %4589, i64* %PC, align 8
  store i32 %4566, i32* %4564, align 4
  %4590 = load i64, i64* %PC, align 8
  %4591 = add i64 %4590, -119
  store i64 %4591, i64* %PC, align 8, !tbaa !2428
  br label %block_4015f8

block_401312:                                     ; preds = %block_401300
  %4592 = add i64 %6303, -1168
  store i64 %4592, i64* %RAX, align 8, !tbaa !2428
  %4593 = add i64 %6303, -12
  %4594 = add i64 %6338, 11
  store i64 %4594, i64* %PC, align 8
  %4595 = inttoptr i64 %4593 to i32*
  %4596 = load i32, i32* %4595, align 4
  %4597 = sext i32 %4596 to i64
  %4598 = shl nsw i64 %4597, 6
  store i64 %4598, i64* %RCX, align 8, !tbaa !2428
  %4599 = add i64 %4598, %4592
  store i64 %4599, i64* %RAX, align 8, !tbaa !2428
  %4600 = icmp ult i64 %4599, %4592
  %4601 = icmp ult i64 %4599, %4598
  %4602 = or i1 %4600, %4601
  %4603 = zext i1 %4602 to i8
  store i8 %4603, i8* %16, align 1, !tbaa !2432
  %4604 = trunc i64 %4599 to i32
  %4605 = and i32 %4604, 255
  %4606 = tail call i32 @llvm.ctpop.i32(i32 %4605) #12
  %4607 = trunc i32 %4606 to i8
  %4608 = and i8 %4607, 1
  %4609 = xor i8 %4608, 1
  store i8 %4609, i8* %23, align 1, !tbaa !2446
  %4610 = xor i64 %4592, %4599
  %4611 = lshr i64 %4610, 4
  %4612 = trunc i64 %4611 to i8
  %4613 = and i8 %4612, 1
  store i8 %4613, i8* %29, align 1, !tbaa !2447
  %4614 = icmp eq i64 %4599, 0
  %4615 = zext i1 %4614 to i8
  store i8 %4615, i8* %32, align 1, !tbaa !2448
  %4616 = lshr i64 %4599, 63
  %4617 = trunc i64 %4616 to i8
  store i8 %4617, i8* %35, align 1, !tbaa !2449
  %4618 = lshr i64 %4592, 63
  %4619 = lshr i64 %4597, 57
  %4620 = and i64 %4619, 1
  %4621 = xor i64 %4616, %4618
  %4622 = xor i64 %4616, %4620
  %4623 = add nuw nsw i64 %4621, %4622
  %4624 = icmp eq i64 %4623, 2
  %4625 = zext i1 %4624 to i8
  store i8 %4625, i8* %41, align 1, !tbaa !2450
  %4626 = add i64 %6338, 22
  store i64 %4626, i64* %PC, align 8
  %4627 = load i32, i32* %6306, align 4
  %4628 = sext i32 %4627 to i64
  store i64 %4628, i64* %RCX, align 8, !tbaa !2428
  %4629 = shl nsw i64 %4628, 2
  %4630 = add i64 %4629, %4599
  %4631 = add i64 %6338, 26
  store i64 %4631, i64* %PC, align 8
  %4632 = inttoptr i64 %4630 to i32*
  %4633 = load i32, i32* %4632, align 4
  %4634 = add i32 %4633, 1
  %4635 = icmp ne i32 %4633, -1
  %4636 = zext i1 %4635 to i8
  store i8 %4636, i8* %16, align 1, !tbaa !2432
  %4637 = and i32 %4634, 255
  %4638 = tail call i32 @llvm.ctpop.i32(i32 %4637) #12
  %4639 = trunc i32 %4638 to i8
  %4640 = and i8 %4639, 1
  %4641 = xor i8 %4640, 1
  store i8 %4641, i8* %23, align 1, !tbaa !2446
  %4642 = xor i32 %4633, 16
  %4643 = xor i32 %4642, %4634
  %4644 = lshr i32 %4643, 4
  %4645 = trunc i32 %4644 to i8
  %4646 = and i8 %4645, 1
  store i8 %4646, i8* %29, align 1, !tbaa !2447
  %4647 = icmp eq i32 %4634, 0
  %4648 = zext i1 %4647 to i8
  store i8 %4648, i8* %32, align 1, !tbaa !2448
  %4649 = lshr i32 %4634, 31
  %4650 = trunc i32 %4649 to i8
  store i8 %4650, i8* %35, align 1, !tbaa !2449
  %4651 = lshr i32 %4633, 31
  %4652 = xor i32 %4651, 1
  %4653 = xor i32 %4649, %4651
  %4654 = add nuw nsw i32 %4653, %4652
  %4655 = icmp eq i32 %4654, 2
  %4656 = zext i1 %4655 to i8
  store i8 %4656, i8* %41, align 1, !tbaa !2450
  %.v311 = select i1 %4647, i64 81, i64 32
  %4657 = add i64 %6338, %.v311
  store i64 %4657, i64* %PC, align 8, !tbaa !2428
  %.pre222 = load i64, i64* %RBP, align 8
  br i1 %4647, label %block_401363, label %block_401332

block_401460:                                     ; preds = %block_401221
  %4658 = add i64 %2501, 7
  store i64 %4658, i64* %PC, align 8
  store i32 0, i32* %2461, align 4
  %.pre229 = load i64, i64* %PC, align 8
  br label %block_401467

block_4013a1:                                     ; preds = %block_40138f
  %4659 = add i64 %5195, -1168
  store i64 %4659, i64* %RAX, align 8, !tbaa !2428
  %4660 = add i64 %5195, -12
  %4661 = add i64 %977, 11
  store i64 %4661, i64* %PC, align 8
  %4662 = inttoptr i64 %4660 to i32*
  %4663 = load i32, i32* %4662, align 4
  %4664 = sext i32 %4663 to i64
  %4665 = shl nsw i64 %4664, 6
  store i64 %4665, i64* %RCX, align 8, !tbaa !2428
  %4666 = add i64 %4665, %4659
  store i64 %4666, i64* %RAX, align 8, !tbaa !2428
  %4667 = icmp ult i64 %4666, %4659
  %4668 = icmp ult i64 %4666, %4665
  %4669 = or i1 %4667, %4668
  %4670 = zext i1 %4669 to i8
  store i8 %4670, i8* %16, align 1, !tbaa !2432
  %4671 = trunc i64 %4666 to i32
  %4672 = and i32 %4671, 255
  %4673 = tail call i32 @llvm.ctpop.i32(i32 %4672) #12
  %4674 = trunc i32 %4673 to i8
  %4675 = and i8 %4674, 1
  %4676 = xor i8 %4675, 1
  store i8 %4676, i8* %23, align 1, !tbaa !2446
  %4677 = xor i64 %4659, %4666
  %4678 = lshr i64 %4677, 4
  %4679 = trunc i64 %4678 to i8
  %4680 = and i8 %4679, 1
  store i8 %4680, i8* %29, align 1, !tbaa !2447
  %4681 = icmp eq i64 %4666, 0
  %4682 = zext i1 %4681 to i8
  store i8 %4682, i8* %32, align 1, !tbaa !2448
  %4683 = lshr i64 %4666, 63
  %4684 = trunc i64 %4683 to i8
  store i8 %4684, i8* %35, align 1, !tbaa !2449
  %4685 = lshr i64 %4659, 63
  %4686 = lshr i64 %4664, 57
  %4687 = and i64 %4686, 1
  %4688 = xor i64 %4683, %4685
  %4689 = xor i64 %4683, %4687
  %4690 = add nuw nsw i64 %4688, %4689
  %4691 = icmp eq i64 %4690, 2
  %4692 = zext i1 %4691 to i8
  store i8 %4692, i8* %41, align 1, !tbaa !2450
  %4693 = add i64 %977, 21
  store i64 %4693, i64* %PC, align 8
  %4694 = load i32, i32* %5203, align 4
  %4695 = zext i32 %4694 to i64
  store i64 %4695, i64* %RDX, align 8, !tbaa !2428
  %4696 = add i64 %977, 24
  store i64 %4696, i64* %PC, align 8
  %4697 = load i32, i32* %5198, align 4
  %4698 = sub i32 %4694, %4697
  %4699 = zext i32 %4698 to i64
  store i64 %4699, i64* %RDX, align 8, !tbaa !2428
  %4700 = icmp ult i32 %4694, %4697
  %4701 = zext i1 %4700 to i8
  store i8 %4701, i8* %16, align 1, !tbaa !2432
  %4702 = and i32 %4698, 255
  %4703 = tail call i32 @llvm.ctpop.i32(i32 %4702) #12
  %4704 = trunc i32 %4703 to i8
  %4705 = and i8 %4704, 1
  %4706 = xor i8 %4705, 1
  store i8 %4706, i8* %23, align 1, !tbaa !2446
  %4707 = xor i32 %4697, %4694
  %4708 = xor i32 %4707, %4698
  %4709 = lshr i32 %4708, 4
  %4710 = trunc i32 %4709 to i8
  %4711 = and i8 %4710, 1
  store i8 %4711, i8* %29, align 1, !tbaa !2447
  %4712 = icmp eq i32 %4698, 0
  %4713 = zext i1 %4712 to i8
  store i8 %4713, i8* %32, align 1, !tbaa !2448
  %4714 = lshr i32 %4698, 31
  %4715 = trunc i32 %4714 to i8
  store i8 %4715, i8* %35, align 1, !tbaa !2449
  %4716 = lshr i32 %4694, 31
  %4717 = lshr i32 %4697, 31
  %4718 = xor i32 %4717, %4716
  %4719 = xor i32 %4714, %4716
  %4720 = add nuw nsw i32 %4719, %4718
  %4721 = icmp eq i32 %4720, 2
  %4722 = zext i1 %4721 to i8
  store i8 %4722, i8* %41, align 1, !tbaa !2450
  %4723 = sext i32 %4698 to i64
  store i64 %4723, i64* %RCX, align 8, !tbaa !2428
  %4724 = shl nsw i64 %4723, 2
  %4725 = add i64 %4666, %4724
  %4726 = add i64 %977, 31
  store i64 %4726, i64* %PC, align 8
  %4727 = inttoptr i64 %4725 to i32*
  %4728 = load i32, i32* %4727, align 4
  %4729 = add i32 %4728, 1
  %4730 = icmp ne i32 %4728, -1
  %4731 = zext i1 %4730 to i8
  store i8 %4731, i8* %16, align 1, !tbaa !2432
  %4732 = and i32 %4729, 255
  %4733 = tail call i32 @llvm.ctpop.i32(i32 %4732) #12
  %4734 = trunc i32 %4733 to i8
  %4735 = and i8 %4734, 1
  %4736 = xor i8 %4735, 1
  store i8 %4736, i8* %23, align 1, !tbaa !2446
  %4737 = xor i32 %4728, 16
  %4738 = xor i32 %4737, %4729
  %4739 = lshr i32 %4738, 4
  %4740 = trunc i32 %4739 to i8
  %4741 = and i8 %4740, 1
  store i8 %4741, i8* %29, align 1, !tbaa !2447
  %4742 = icmp eq i32 %4729, 0
  %4743 = zext i1 %4742 to i8
  store i8 %4743, i8* %32, align 1, !tbaa !2448
  %4744 = lshr i32 %4729, 31
  %4745 = trunc i32 %4744 to i8
  store i8 %4745, i8* %35, align 1, !tbaa !2449
  %4746 = lshr i32 %4728, 31
  %4747 = xor i32 %4746, 1
  %4748 = xor i32 %4744, %4746
  %4749 = add nuw nsw i32 %4748, %4747
  %4750 = icmp eq i32 %4749, 2
  %4751 = zext i1 %4750 to i8
  store i8 %4751, i8* %41, align 1, !tbaa !2450
  %.v307 = select i1 %4742, i64 128, i64 37
  %4752 = add i64 %977, %.v307
  store i64 %4752, i64* %PC, align 8, !tbaa !2428
  br i1 %4742, label %block_401421, label %block_4013c6

block_400b26:                                     ; preds = %block_400b04, %block_400b3a
  %4753 = phi i64 [ %.pre184, %block_400b04 ], [ %4014, %block_400b3a ]
  %4754 = load i64, i64* %RBP, align 8
  %4755 = add i64 %4754, -4
  %4756 = add i64 %4753, 3
  store i64 %4756, i64* %PC, align 8
  %4757 = inttoptr i64 %4755 to i32*
  %4758 = load i32, i32* %4757, align 4
  %4759 = zext i32 %4758 to i64
  store i64 %4759, i64* %RAX, align 8, !tbaa !2428
  %4760 = add i64 %4754, -12
  %4761 = add i64 %4753, 7
  store i64 %4761, i64* %PC, align 8
  %4762 = inttoptr i64 %4760 to i32*
  %4763 = load i32, i32* %4762, align 4
  %4764 = sext i32 %4763 to i64
  store i64 %4764, i64* %RCX, align 8, !tbaa !2428
  %4765 = shl nsw i64 %4764, 2
  %4766 = add nsw i64 %4765, -1328
  %4767 = add i64 %4766, %4754
  %4768 = add i64 %4753, 14
  store i64 %4768, i64* %PC, align 8
  %4769 = inttoptr i64 %4767 to i32*
  %4770 = load i32, i32* %4769, align 4
  %4771 = sub i32 %4758, %4770
  %4772 = icmp ult i32 %4758, %4770
  %4773 = zext i1 %4772 to i8
  store i8 %4773, i8* %16, align 1, !tbaa !2432
  %4774 = and i32 %4771, 255
  %4775 = tail call i32 @llvm.ctpop.i32(i32 %4774) #12
  %4776 = trunc i32 %4775 to i8
  %4777 = and i8 %4776, 1
  %4778 = xor i8 %4777, 1
  store i8 %4778, i8* %23, align 1, !tbaa !2446
  %4779 = xor i32 %4770, %4758
  %4780 = xor i32 %4779, %4771
  %4781 = lshr i32 %4780, 4
  %4782 = trunc i32 %4781 to i8
  %4783 = and i8 %4782, 1
  store i8 %4783, i8* %29, align 1, !tbaa !2447
  %4784 = icmp eq i32 %4771, 0
  %4785 = zext i1 %4784 to i8
  store i8 %4785, i8* %32, align 1, !tbaa !2448
  %4786 = lshr i32 %4771, 31
  %4787 = trunc i32 %4786 to i8
  store i8 %4787, i8* %35, align 1, !tbaa !2449
  %4788 = lshr i32 %4758, 31
  %4789 = lshr i32 %4770, 31
  %4790 = xor i32 %4789, %4788
  %4791 = xor i32 %4786, %4788
  %4792 = add nuw nsw i32 %4791, %4790
  %4793 = icmp eq i32 %4792, 2
  %4794 = zext i1 %4793 to i8
  store i8 %4794, i8* %41, align 1, !tbaa !2450
  %4795 = icmp ne i8 %4787, 0
  %4796 = xor i1 %4795, %4793
  %.demorgan257 = or i1 %4784, %4796
  %.v319 = select i1 %.demorgan257, i64 20, i64 135
  %4797 = add i64 %4753, %.v319
  store i64 %4797, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan257, label %block_400b3a, label %block_400e6a.loopexit

block_40105e:                                     ; preds = %block_40105e.preheader, %block_401072
  %4798 = phi i64 [ %4135, %block_401072 ], [ %.pre208, %block_40105e.preheader ]
  %4799 = load i64, i64* %RBP, align 8
  %4800 = add i64 %4799, -4
  %4801 = add i64 %4798, 3
  store i64 %4801, i64* %PC, align 8
  %4802 = inttoptr i64 %4800 to i32*
  %4803 = load i32, i32* %4802, align 4
  %4804 = zext i32 %4803 to i64
  store i64 %4804, i64* %RAX, align 8, !tbaa !2428
  %4805 = add i64 %4799, -12
  %4806 = add i64 %4798, 7
  store i64 %4806, i64* %PC, align 8
  %4807 = inttoptr i64 %4805 to i32*
  %4808 = load i32, i32* %4807, align 4
  %4809 = sext i32 %4808 to i64
  store i64 %4809, i64* %RCX, align 8, !tbaa !2428
  %4810 = shl nsw i64 %4809, 2
  %4811 = add nsw i64 %4810, -1328
  %4812 = add i64 %4811, %4799
  %4813 = add i64 %4798, 14
  store i64 %4813, i64* %PC, align 8
  %4814 = inttoptr i64 %4812 to i32*
  %4815 = load i32, i32* %4814, align 4
  %4816 = sub i32 %4803, %4815
  %4817 = icmp ult i32 %4803, %4815
  %4818 = zext i1 %4817 to i8
  store i8 %4818, i8* %16, align 1, !tbaa !2432
  %4819 = and i32 %4816, 255
  %4820 = tail call i32 @llvm.ctpop.i32(i32 %4819) #12
  %4821 = trunc i32 %4820 to i8
  %4822 = and i8 %4821, 1
  %4823 = xor i8 %4822, 1
  store i8 %4823, i8* %23, align 1, !tbaa !2446
  %4824 = xor i32 %4815, %4803
  %4825 = xor i32 %4824, %4816
  %4826 = lshr i32 %4825, 4
  %4827 = trunc i32 %4826 to i8
  %4828 = and i8 %4827, 1
  store i8 %4828, i8* %29, align 1, !tbaa !2447
  %4829 = icmp eq i32 %4816, 0
  %4830 = zext i1 %4829 to i8
  store i8 %4830, i8* %32, align 1, !tbaa !2448
  %4831 = lshr i32 %4816, 31
  %4832 = trunc i32 %4831 to i8
  store i8 %4832, i8* %35, align 1, !tbaa !2449
  %4833 = lshr i32 %4803, 31
  %4834 = lshr i32 %4815, 31
  %4835 = xor i32 %4834, %4833
  %4836 = xor i32 %4831, %4833
  %4837 = add nuw nsw i32 %4836, %4835
  %4838 = icmp eq i32 %4837, 2
  %4839 = zext i1 %4838 to i8
  store i8 %4839, i8* %41, align 1, !tbaa !2450
  %4840 = icmp ne i8 %4832, 0
  %4841 = xor i1 %4840, %4838
  %.demorgan259 = or i1 %4829, %4841
  %.v293 = select i1 %.demorgan259, i64 20, i64 88
  %4842 = add i64 %4798, %.v293
  store i64 %4842, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan259, label %block_401072, label %block_4010b6

block_4014e1:                                     ; preds = %block_4014da, %block_4016fb
  %4843 = phi i64 [ %.pre230, %block_4014da ], [ %1995, %block_4016fb ]
  %MEMORY.38 = phi %struct.Memory* [ %MEMORY.19, %block_4014da ], [ %MEMORY.15, %block_4016fb ]
  %4844 = load i64, i64* %RBP, align 8
  %4845 = add i64 %4844, -4
  %4846 = add i64 %4843, 3
  store i64 %4846, i64* %PC, align 8
  %4847 = inttoptr i64 %4845 to i32*
  %4848 = load i32, i32* %4847, align 4
  %4849 = zext i32 %4848 to i64
  store i64 %4849, i64* %RAX, align 8, !tbaa !2428
  %4850 = add i64 %4844, -12
  %4851 = add i64 %4843, 7
  store i64 %4851, i64* %PC, align 8
  %4852 = inttoptr i64 %4850 to i32*
  %4853 = load i32, i32* %4852, align 4
  %4854 = sext i32 %4853 to i64
  store i64 %4854, i64* %RCX, align 8, !tbaa !2428
  %4855 = shl nsw i64 %4854, 2
  %4856 = add nsw i64 %4855, -1328
  %4857 = add i64 %4856, %4844
  %4858 = add i64 %4843, 14
  store i64 %4858, i64* %PC, align 8
  %4859 = inttoptr i64 %4857 to i32*
  %4860 = load i32, i32* %4859, align 4
  %4861 = sub i32 %4848, %4860
  %4862 = icmp ult i32 %4848, %4860
  %4863 = zext i1 %4862 to i8
  store i8 %4863, i8* %16, align 1, !tbaa !2432
  %4864 = and i32 %4861, 255
  %4865 = tail call i32 @llvm.ctpop.i32(i32 %4864) #12
  %4866 = trunc i32 %4865 to i8
  %4867 = and i8 %4866, 1
  %4868 = xor i8 %4867, 1
  store i8 %4868, i8* %23, align 1, !tbaa !2446
  %4869 = xor i32 %4860, %4848
  %4870 = xor i32 %4869, %4861
  %4871 = lshr i32 %4870, 4
  %4872 = trunc i32 %4871 to i8
  %4873 = and i8 %4872, 1
  store i8 %4873, i8* %29, align 1, !tbaa !2447
  %4874 = icmp eq i32 %4861, 0
  %4875 = zext i1 %4874 to i8
  store i8 %4875, i8* %32, align 1, !tbaa !2448
  %4876 = lshr i32 %4861, 31
  %4877 = trunc i32 %4876 to i8
  store i8 %4877, i8* %35, align 1, !tbaa !2449
  %4878 = lshr i32 %4848, 31
  %4879 = lshr i32 %4860, 31
  %4880 = xor i32 %4879, %4878
  %4881 = xor i32 %4876, %4878
  %4882 = add nuw nsw i32 %4881, %4880
  %4883 = icmp eq i32 %4882, 2
  %4884 = zext i1 %4883 to i8
  store i8 %4884, i8* %41, align 1, !tbaa !2450
  %4885 = icmp ne i8 %4877, 0
  %4886 = xor i1 %4885, %4883
  %.v297 = select i1 %4886, i64 20, i64 557
  %4887 = add i64 %4843, %.v297
  store i64 %4887, i64* %PC, align 8, !tbaa !2428
  br i1 %4886, label %block_4014f5, label %block_401783.loopexit

block_400c66:                                     ; preds = %block_400bf2, %block_400c61
  %4888 = phi i64 [ %469, %block_400bf2 ], [ %454, %block_400c61 ]
  %4889 = phi i64 [ %1950, %block_400bf2 ], [ %5428, %block_400c61 ]
  %4890 = add i64 %4889, -12
  %4891 = add i64 %4888, 4
  store i64 %4891, i64* %PC, align 8
  %4892 = inttoptr i64 %4890 to i32*
  %4893 = load i32, i32* %4892, align 4
  %4894 = sext i32 %4893 to i64
  store i64 %4894, i64* %RAX, align 8, !tbaa !2428
  %4895 = shl nsw i64 %4894, 2
  %4896 = add i64 %4889, -1328
  %4897 = add i64 %4896, %4895
  %4898 = add i64 %4888, 11
  store i64 %4898, i64* %PC, align 8
  %4899 = inttoptr i64 %4897 to i32*
  %4900 = load i32, i32* %4899, align 4
  %4901 = zext i32 %4900 to i64
  store i64 %4901, i64* %RCX, align 8, !tbaa !2428
  %4902 = add i64 %4889, -16
  %4903 = add i64 %4888, 15
  store i64 %4903, i64* %PC, align 8
  %4904 = inttoptr i64 %4902 to i32*
  %4905 = load i32, i32* %4904, align 4
  %4906 = sext i32 %4905 to i64
  store i64 %4906, i64* %RAX, align 8, !tbaa !2428
  %4907 = shl nsw i64 %4906, 2
  %4908 = add i64 %4896, %4907
  %4909 = add i64 %4888, 22
  store i64 %4909, i64* %PC, align 8
  %4910 = inttoptr i64 %4908 to i32*
  %4911 = load i32, i32* %4910, align 4
  %4912 = zext i32 %4911 to i64
  store i64 %4912, i64* %RDX, align 8, !tbaa !2428
  %4913 = add i64 %4888, 25
  store i64 %4913, i64* %PC, align 8
  %4914 = load i32, i32* %4892, align 4
  %4915 = add i32 %4914, %4911
  %4916 = zext i32 %4915 to i64
  store i64 %4916, i64* %RDX, align 8, !tbaa !2428
  %4917 = icmp ult i32 %4915, %4911
  %4918 = icmp ult i32 %4915, %4914
  %4919 = or i1 %4917, %4918
  %4920 = zext i1 %4919 to i8
  store i8 %4920, i8* %16, align 1, !tbaa !2432
  %4921 = and i32 %4915, 255
  %4922 = tail call i32 @llvm.ctpop.i32(i32 %4921) #12
  %4923 = trunc i32 %4922 to i8
  %4924 = and i8 %4923, 1
  %4925 = xor i8 %4924, 1
  store i8 %4925, i8* %23, align 1, !tbaa !2446
  %4926 = xor i32 %4914, %4911
  %4927 = xor i32 %4926, %4915
  %4928 = lshr i32 %4927, 4
  %4929 = trunc i32 %4928 to i8
  %4930 = and i8 %4929, 1
  store i8 %4930, i8* %29, align 1, !tbaa !2447
  %4931 = icmp eq i32 %4915, 0
  %4932 = zext i1 %4931 to i8
  store i8 %4932, i8* %32, align 1, !tbaa !2448
  %4933 = lshr i32 %4915, 31
  %4934 = trunc i32 %4933 to i8
  store i8 %4934, i8* %35, align 1, !tbaa !2449
  %4935 = lshr i32 %4911, 31
  %4936 = lshr i32 %4914, 31
  %4937 = xor i32 %4933, %4935
  %4938 = xor i32 %4933, %4936
  %4939 = add nuw nsw i32 %4937, %4938
  %4940 = icmp eq i32 %4939, 2
  %4941 = zext i1 %4940 to i8
  store i8 %4941, i8* %41, align 1, !tbaa !2450
  %4942 = add i64 %4888, 28
  store i64 %4942, i64* %PC, align 8
  %4943 = load i32, i32* %4904, align 4
  %4944 = sub i32 %4915, %4943
  %4945 = zext i32 %4944 to i64
  store i64 %4945, i64* %RDX, align 8, !tbaa !2428
  %4946 = lshr i32 %4944, 31
  %4947 = sub i32 %4900, %4944
  %4948 = icmp ult i32 %4900, %4944
  %4949 = zext i1 %4948 to i8
  store i8 %4949, i8* %16, align 1, !tbaa !2432
  %4950 = and i32 %4947, 255
  %4951 = tail call i32 @llvm.ctpop.i32(i32 %4950) #12
  %4952 = trunc i32 %4951 to i8
  %4953 = and i8 %4952, 1
  %4954 = xor i8 %4953, 1
  store i8 %4954, i8* %23, align 1, !tbaa !2446
  %4955 = xor i32 %4944, %4900
  %4956 = xor i32 %4955, %4947
  %4957 = lshr i32 %4956, 4
  %4958 = trunc i32 %4957 to i8
  %4959 = and i8 %4958, 1
  store i8 %4959, i8* %29, align 1, !tbaa !2447
  %4960 = icmp eq i32 %4947, 0
  %4961 = zext i1 %4960 to i8
  store i8 %4961, i8* %32, align 1, !tbaa !2448
  %4962 = lshr i32 %4947, 31
  %4963 = trunc i32 %4962 to i8
  store i8 %4963, i8* %35, align 1, !tbaa !2449
  %4964 = lshr i32 %4900, 31
  %4965 = xor i32 %4946, %4964
  %4966 = xor i32 %4962, %4964
  %4967 = add nuw nsw i32 %4966, %4965
  %4968 = icmp eq i32 %4967, 2
  %4969 = zext i1 %4968 to i8
  store i8 %4969, i8* %41, align 1, !tbaa !2450
  %4970 = icmp ne i8 %4963, 0
  %4971 = xor i1 %4970, %4968
  %4972 = or i1 %4960, %4971
  %.v288 = select i1 %4972, i64 68, i64 36
  %4973 = add i64 %4888, %.v288
  store i64 %4973, i64* %PC, align 8, !tbaa !2428
  %4974 = load i64, i64* %RBP, align 8
  br i1 %4972, label %block_400caa, label %block_400c8a

block_4012dd:                                     ; preds = %block_4012bd
  %4975 = add i64 %2635, -4
  %4976 = add i64 %2634, 4
  store i64 %4976, i64* %PC, align 8
  %4977 = inttoptr i64 %4975 to i32*
  %4978 = load i32, i32* %4977, align 4
  %4979 = sext i32 %4978 to i64
  store i64 %4979, i64* %RAX, align 8, !tbaa !2428
  %4980 = shl nsw i64 %4979, 2
  %4981 = add i64 %2635, -1488
  %4982 = add i64 %4981, %4980
  %4983 = add i64 %2634, 12
  store i64 %4983, i64* %PC, align 8
  %4984 = inttoptr i64 %4982 to i32*
  %4985 = load i32, i32* %4984, align 4
  %4986 = sext i32 %4985 to i64
  store i64 %4986, i64* %RAX, align 8, !tbaa !2428
  %4987 = shl nsw i64 %4986, 2
  %4988 = add i64 %4987, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %4989 = add i64 %2634, 19
  store i64 %4989, i64* %PC, align 8
  %4990 = inttoptr i64 %4988 to i32*
  %4991 = load i32, i32* %4990, align 4
  %4992 = zext i32 %4991 to i64
  store i64 %4992, i64* %RCX, align 8, !tbaa !2428
  %4993 = add i64 %2634, 23
  store i64 %4993, i64* %PC, align 8
  %4994 = load i32, i32* %4977, align 4
  %4995 = sext i32 %4994 to i64
  store i64 %4995, i64* %RAX, align 8, !tbaa !2428
  %4996 = shl nsw i64 %4995, 2
  %4997 = add i64 %2635, -1616
  %4998 = add i64 %4997, %4996
  %4999 = add i64 %2634, 30
  store i64 %4999, i64* %PC, align 8
  %5000 = inttoptr i64 %4998 to i32*
  store i32 %4991, i32* %5000, align 4
  br label %block_401377

block_4017ae:                                     ; preds = %block_40179c
  %5001 = add i64 %803, 12
  store i64 %5001, i64* %PC, align 8
  %5002 = inttoptr i64 %808 to i32*
  %5003 = load i32, i32* %5002, align 4
  %5004 = sext i32 %5003 to i64
  store i64 %5004, i64* %RAX, align 8, !tbaa !2428
  %5005 = shl nsw i64 %5004, 2
  %5006 = add i64 %5005, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %5007 = add i64 %803, 19
  store i64 %5007, i64* %PC, align 8
  %5008 = inttoptr i64 %5006 to i32*
  %5009 = load i32, i32* %5008, align 4
  %5010 = zext i32 %5009 to i64
  store i64 %5010, i64* %RCX, align 8, !tbaa !2428
  %5011 = add i64 %803, 23
  store i64 %5011, i64* %PC, align 8
  %5012 = load i32, i32* %3141, align 4
  %5013 = sext i32 %5012 to i64
  store i64 %5013, i64* %RAX, align 8, !tbaa !2428
  %5014 = shl nsw i64 %5013, 2
  %5015 = add i64 %5014, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %5016 = add i64 %803, 30
  store i64 %5016, i64* %PC, align 8
  %5017 = inttoptr i64 %5015 to i32*
  store i32 %5009, i32* %5017, align 4
  %5018 = load i64, i64* %PC, align 8
  %5019 = add i64 %5018, 20
  store i64 %5019, i64* %PC, align 8, !tbaa !2428
  br label %block_4017e0

block_401855:                                     ; preds = %block_401823, %block_401846
  %5020 = phi i64 [ %5566, %block_401823 ], [ %.pre256, %block_401846 ]
  %5021 = load i64, i64* %RBP, align 8
  %5022 = add i64 %5021, -4
  %5023 = add i64 %5020, 8
  store i64 %5023, i64* %PC, align 8
  %5024 = inttoptr i64 %5022 to i32*
  %5025 = load i32, i32* %5024, align 4
  %5026 = add i32 %5025, 1
  %5027 = zext i32 %5026 to i64
  store i64 %5027, i64* %RAX, align 8, !tbaa !2428
  %5028 = icmp eq i32 %5025, -1
  %5029 = icmp eq i32 %5026, 0
  %5030 = or i1 %5028, %5029
  %5031 = zext i1 %5030 to i8
  store i8 %5031, i8* %16, align 1, !tbaa !2432
  %5032 = and i32 %5026, 255
  %5033 = tail call i32 @llvm.ctpop.i32(i32 %5032) #12
  %5034 = trunc i32 %5033 to i8
  %5035 = and i8 %5034, 1
  %5036 = xor i8 %5035, 1
  store i8 %5036, i8* %23, align 1, !tbaa !2446
  %5037 = xor i32 %5026, %5025
  %5038 = lshr i32 %5037, 4
  %5039 = trunc i32 %5038 to i8
  %5040 = and i8 %5039, 1
  store i8 %5040, i8* %29, align 1, !tbaa !2447
  %5041 = zext i1 %5029 to i8
  store i8 %5041, i8* %32, align 1, !tbaa !2448
  %5042 = lshr i32 %5026, 31
  %5043 = trunc i32 %5042 to i8
  store i8 %5043, i8* %35, align 1, !tbaa !2449
  %5044 = lshr i32 %5025, 31
  %5045 = xor i32 %5042, %5044
  %5046 = add nuw nsw i32 %5045, %5042
  %5047 = icmp eq i32 %5046, 2
  %5048 = zext i1 %5047 to i8
  store i8 %5048, i8* %41, align 1, !tbaa !2450
  %5049 = add i64 %5020, 14
  store i64 %5049, i64* %PC, align 8
  store i32 %5026, i32* %5024, align 4
  %5050 = load i64, i64* %PC, align 8
  %5051 = add i64 %5050, -95
  store i64 %5051, i64* %PC, align 8, !tbaa !2428
  br label %block_401804

block_400a53:                                     ; preds = %block_400a46
  %5052 = add i64 %871, -1248
  %5053 = add i64 %5193, 10
  store i64 %5053, i64* %PC, align 8
  %5054 = inttoptr i64 %5052 to i32*
  store i32 0, i32* %5054, align 4
  %5055 = load i64, i64* %RBP, align 8
  %5056 = add i64 %5055, -1484
  %5057 = load i64, i64* %PC, align 8
  %5058 = add i64 %5057, 6
  store i64 %5058, i64* %PC, align 8
  %5059 = inttoptr i64 %5056 to i32*
  %5060 = load i32, i32* %5059, align 4
  %5061 = zext i32 %5060 to i64
  store i64 %5061, i64* %RAX, align 8, !tbaa !2428
  %5062 = add i64 %5055, -1244
  %5063 = add i64 %5057, 12
  store i64 %5063, i64* %PC, align 8
  %5064 = inttoptr i64 %5062 to i32*
  store i32 %5060, i32* %5064, align 4
  %5065 = load i64, i64* %RBP, align 8
  %5066 = add i64 %5065, -1168
  %5067 = load i64, i64* %PC, align 8
  %5068 = add i64 %5067, 10
  store i64 %5068, i64* %PC, align 8
  %5069 = inttoptr i64 %5066 to i32*
  store i32 0, i32* %5069, align 4
  %5070 = load i64, i64* %RBP, align 8
  %5071 = add i64 %5070, -1104
  %5072 = load i64, i64* %PC, align 8
  %5073 = add i64 %5072, 10
  store i64 %5073, i64* %PC, align 8
  %5074 = inttoptr i64 %5071 to i32*
  store i32 1, i32* %5074, align 4
  %5075 = load i64, i64* %RBP, align 8
  %5076 = add i64 %5075, -4
  %5077 = load i64, i64* %PC, align 8
  %5078 = add i64 %5077, 7
  store i64 %5078, i64* %PC, align 8
  %5079 = inttoptr i64 %5076 to i32*
  store i32 1, i32* %5079, align 4
  %.pre181 = load i64, i64* %PC, align 8
  br label %block_400a84

block_4014c7:                                     ; preds = %block_401495, %block_4014b8
  %5080 = phi i64 [ %3285, %block_401495 ], [ %.pre250, %block_4014b8 ]
  %5081 = load i64, i64* %RBP, align 8
  %5082 = add i64 %5081, -4
  %5083 = add i64 %5080, 8
  store i64 %5083, i64* %PC, align 8
  %5084 = inttoptr i64 %5082 to i32*
  %5085 = load i32, i32* %5084, align 4
  %5086 = add i32 %5085, 1
  %5087 = zext i32 %5086 to i64
  store i64 %5087, i64* %RAX, align 8, !tbaa !2428
  %5088 = icmp eq i32 %5085, -1
  %5089 = icmp eq i32 %5086, 0
  %5090 = or i1 %5088, %5089
  %5091 = zext i1 %5090 to i8
  store i8 %5091, i8* %16, align 1, !tbaa !2432
  %5092 = and i32 %5086, 255
  %5093 = tail call i32 @llvm.ctpop.i32(i32 %5092) #12
  %5094 = trunc i32 %5093 to i8
  %5095 = and i8 %5094, 1
  %5096 = xor i8 %5095, 1
  store i8 %5096, i8* %23, align 1, !tbaa !2446
  %5097 = xor i32 %5086, %5085
  %5098 = lshr i32 %5097, 4
  %5099 = trunc i32 %5098 to i8
  %5100 = and i8 %5099, 1
  store i8 %5100, i8* %29, align 1, !tbaa !2447
  %5101 = zext i1 %5089 to i8
  store i8 %5101, i8* %32, align 1, !tbaa !2448
  %5102 = lshr i32 %5086, 31
  %5103 = trunc i32 %5102 to i8
  store i8 %5103, i8* %35, align 1, !tbaa !2449
  %5104 = lshr i32 %5085, 31
  %5105 = xor i32 %5102, %5104
  %5106 = add nuw nsw i32 %5105, %5102
  %5107 = icmp eq i32 %5106, 2
  %5108 = zext i1 %5107 to i8
  store i8 %5108, i8* %41, align 1, !tbaa !2450
  %5109 = add i64 %5080, 14
  store i64 %5109, i64* %PC, align 8
  store i32 %5086, i32* %5084, align 4
  %5110 = load i64, i64* %PC, align 8
  %5111 = add i64 %5110, -110
  store i64 %5111, i64* %PC, align 8, !tbaa !2428
  br label %block_401467

block_400c4c:                                     ; preds = %block_400c30
  %5112 = add i64 %5367, 3
  store i64 %5112, i64* %PC, align 8
  %5113 = load i32, i32* %5840, align 4
  %5114 = zext i32 %5113 to i64
  store i64 %5114, i64* %RAX, align 8, !tbaa !2428
  %5115 = add i64 %5367, 6
  store i64 %5115, i64* %PC, align 8
  store i32 %5113, i32* %5322, align 4
  %.pre189 = load i64, i64* %PC, align 8
  %.pre190 = load i64, i64* %RBP, align 8
  br label %block_400c52

block_401247:                                     ; preds = %block_401235
  %5116 = add i64 %2458, -1168
  store i64 %5116, i64* %RAX, align 8, !tbaa !2428
  %5117 = add i64 %5265, 11
  store i64 %5117, i64* %PC, align 8
  %5118 = load i32, i32* %2466, align 4
  %5119 = sext i32 %5118 to i64
  %5120 = shl nsw i64 %5119, 6
  store i64 %5120, i64* %RCX, align 8, !tbaa !2428
  %5121 = add i64 %5120, %5116
  store i64 %5121, i64* %RAX, align 8, !tbaa !2428
  %5122 = icmp ult i64 %5121, %5116
  %5123 = icmp ult i64 %5121, %5120
  %5124 = or i1 %5122, %5123
  %5125 = zext i1 %5124 to i8
  store i8 %5125, i8* %16, align 1, !tbaa !2432
  %5126 = trunc i64 %5121 to i32
  %5127 = and i32 %5126, 255
  %5128 = tail call i32 @llvm.ctpop.i32(i32 %5127) #12
  %5129 = trunc i32 %5128 to i8
  %5130 = and i8 %5129, 1
  %5131 = xor i8 %5130, 1
  store i8 %5131, i8* %23, align 1, !tbaa !2446
  %5132 = xor i64 %5116, %5121
  %5133 = lshr i64 %5132, 4
  %5134 = trunc i64 %5133 to i8
  %5135 = and i8 %5134, 1
  store i8 %5135, i8* %29, align 1, !tbaa !2447
  %5136 = icmp eq i64 %5121, 0
  %5137 = zext i1 %5136 to i8
  store i8 %5137, i8* %32, align 1, !tbaa !2448
  %5138 = lshr i64 %5121, 63
  %5139 = trunc i64 %5138 to i8
  store i8 %5139, i8* %35, align 1, !tbaa !2449
  %5140 = lshr i64 %5116, 63
  %5141 = lshr i64 %5119, 57
  %5142 = and i64 %5141, 1
  %5143 = xor i64 %5138, %5140
  %5144 = xor i64 %5138, %5142
  %5145 = add nuw nsw i64 %5143, %5144
  %5146 = icmp eq i64 %5145, 2
  %5147 = zext i1 %5146 to i8
  store i8 %5147, i8* %41, align 1, !tbaa !2450
  %5148 = add i64 %5265, 22
  store i64 %5148, i64* %PC, align 8
  %5149 = load i32, i32* %2461, align 4
  %5150 = sext i32 %5149 to i64
  store i64 %5150, i64* %RCX, align 8, !tbaa !2428
  %5151 = shl nsw i64 %5150, 2
  %5152 = add i64 %5151, %5121
  %5153 = add i64 %5265, 26
  store i64 %5153, i64* %PC, align 8
  %5154 = inttoptr i64 %5152 to i32*
  %5155 = load i32, i32* %5154, align 4
  %5156 = add i32 %5155, 1
  %5157 = icmp ne i32 %5155, -1
  %5158 = zext i1 %5157 to i8
  store i8 %5158, i8* %16, align 1, !tbaa !2432
  %5159 = and i32 %5156, 255
  %5160 = tail call i32 @llvm.ctpop.i32(i32 %5159) #12
  %5161 = trunc i32 %5160 to i8
  %5162 = and i8 %5161, 1
  %5163 = xor i8 %5162, 1
  store i8 %5163, i8* %23, align 1, !tbaa !2446
  %5164 = xor i32 %5155, 16
  %5165 = xor i32 %5164, %5156
  %5166 = lshr i32 %5165, 4
  %5167 = trunc i32 %5166 to i8
  %5168 = and i8 %5167, 1
  store i8 %5168, i8* %29, align 1, !tbaa !2447
  %5169 = icmp eq i32 %5156, 0
  %5170 = zext i1 %5169 to i8
  store i8 %5170, i8* %32, align 1, !tbaa !2448
  %5171 = lshr i32 %5156, 31
  %5172 = trunc i32 %5171 to i8
  store i8 %5172, i8* %35, align 1, !tbaa !2449
  %5173 = lshr i32 %5155, 31
  %5174 = xor i32 %5173, 1
  %5175 = xor i32 %5171, %5173
  %5176 = add nuw nsw i32 %5175, %5174
  %5177 = icmp eq i32 %5176, 2
  %5178 = zext i1 %5177 to i8
  store i8 %5178, i8* %41, align 1, !tbaa !2450
  %.v304 = select i1 %5169, i64 100, i64 32
  %5179 = add i64 %5265, %.v304
  store i64 %5179, i64* %PC, align 8, !tbaa !2428
  %.pre220 = load i64, i64* %RBP, align 8
  br i1 %5169, label %block_4012ab, label %block_401267

block_40121a:                                     ; preds = %block_401203
  store i32 1, i32* %3290, align 4
  %.pre219 = load i64, i64* %PC, align 8
  br label %block_401221

block_400a46:                                     ; preds = %block_400966
  %AL = bitcast %union.anon* %3 to i8*
  %CL = bitcast %union.anon* %4 to i8*
  %DL = bitcast %union.anon* %5 to i8*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5180 = add i64 %871, -1496
  %5181 = add i64 %900, 7
  store i64 %5181, i64* %PC, align 8
  %5182 = inttoptr i64 %5180 to i32*
  %5183 = load i32, i32* %5182, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %5184 = and i32 %5183, 255
  %5185 = tail call i32 @llvm.ctpop.i32(i32 %5184) #12
  %5186 = trunc i32 %5185 to i8
  %5187 = and i8 %5186, 1
  %5188 = xor i8 %5187, 1
  store i8 %5188, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %5189 = icmp eq i32 %5183, 0
  %5190 = zext i1 %5189 to i8
  store i8 %5190, i8* %32, align 1, !tbaa !2448
  %5191 = lshr i32 %5183, 31
  %5192 = trunc i32 %5191 to i8
  store i8 %5192, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %.v281 = select i1 %5189, i64 3511, i64 13
  %5193 = add i64 %900, %.v281
  store i64 %5193, i64* %PC, align 8, !tbaa !2428
  br i1 %5189, label %block_4017fd, label %block_400a53

block_401383:                                     ; preds = %block_40137c, %block_401421
  %5194 = phi i64 [ %.pre224, %block_40137c ], [ %5598, %block_401421 ]
  %MEMORY.42 = phi %struct.Memory* [ %MEMORY.19, %block_40137c ], [ %MEMORY.46, %block_401421 ]
  %5195 = load i64, i64* %RBP, align 8
  %5196 = add i64 %5195, -8
  %5197 = add i64 %5194, 3
  store i64 %5197, i64* %PC, align 8
  %5198 = inttoptr i64 %5196 to i32*
  %5199 = load i32, i32* %5198, align 4
  %5200 = zext i32 %5199 to i64
  store i64 %5200, i64* %RAX, align 8, !tbaa !2428
  %5201 = add i64 %5195, -4
  %5202 = add i64 %5194, 6
  store i64 %5202, i64* %PC, align 8
  %5203 = inttoptr i64 %5201 to i32*
  %5204 = load i32, i32* %5203, align 4
  %5205 = sub i32 %5199, %5204
  %5206 = icmp ult i32 %5199, %5204
  %5207 = zext i1 %5206 to i8
  store i8 %5207, i8* %16, align 1, !tbaa !2432
  %5208 = and i32 %5205, 255
  %5209 = tail call i32 @llvm.ctpop.i32(i32 %5208) #12
  %5210 = trunc i32 %5209 to i8
  %5211 = and i8 %5210, 1
  %5212 = xor i8 %5211, 1
  store i8 %5212, i8* %23, align 1, !tbaa !2446
  %5213 = xor i32 %5204, %5199
  %5214 = xor i32 %5213, %5205
  %5215 = lshr i32 %5214, 4
  %5216 = trunc i32 %5215 to i8
  %5217 = and i8 %5216, 1
  store i8 %5217, i8* %29, align 1, !tbaa !2447
  %5218 = icmp eq i32 %5205, 0
  %5219 = zext i1 %5218 to i8
  store i8 %5219, i8* %32, align 1, !tbaa !2448
  %5220 = lshr i32 %5205, 31
  %5221 = trunc i32 %5220 to i8
  store i8 %5221, i8* %35, align 1, !tbaa !2449
  %5222 = lshr i32 %5199, 31
  %5223 = lshr i32 %5204, 31
  %5224 = xor i32 %5223, %5222
  %5225 = xor i32 %5220, %5222
  %5226 = add nuw nsw i32 %5225, %5224
  %5227 = icmp eq i32 %5226, 2
  %5228 = zext i1 %5227 to i8
  store i8 %5228, i8* %41, align 1, !tbaa !2450
  %5229 = icmp ne i8 %5221, 0
  %5230 = xor i1 %5229, %5227
  %.v305 = select i1 %5230, i64 12, i64 177
  %5231 = add i64 %5194, %.v305
  %5232 = add i64 %5231, 4
  store i64 %5232, i64* %PC, align 8
  br i1 %5230, label %block_40138f, label %block_401434

block_401235:                                     ; preds = %block_401221
  %5233 = add i64 %2501, 4
  store i64 %5233, i64* %PC, align 8
  %5234 = load i32, i32* %2461, align 4
  %5235 = sext i32 %5234 to i64
  store i64 %5235, i64* %RAX, align 8, !tbaa !2428
  %5236 = shl nsw i64 %5235, 2
  %5237 = add i64 %2458, -1488
  %5238 = add i64 %5237, %5236
  %5239 = add i64 %2501, 12
  store i64 %5239, i64* %PC, align 8
  %5240 = inttoptr i64 %5238 to i32*
  %5241 = load i32, i32* %5240, align 4
  %5242 = add i32 %5241, 1
  %5243 = icmp ne i32 %5241, -1
  %5244 = zext i1 %5243 to i8
  store i8 %5244, i8* %16, align 1, !tbaa !2432
  %5245 = and i32 %5242, 255
  %5246 = tail call i32 @llvm.ctpop.i32(i32 %5245) #12
  %5247 = trunc i32 %5246 to i8
  %5248 = and i8 %5247, 1
  %5249 = xor i8 %5248, 1
  store i8 %5249, i8* %23, align 1, !tbaa !2446
  %5250 = xor i32 %5241, 16
  %5251 = xor i32 %5250, %5242
  %5252 = lshr i32 %5251, 4
  %5253 = trunc i32 %5252 to i8
  %5254 = and i8 %5253, 1
  store i8 %5254, i8* %29, align 1, !tbaa !2447
  %5255 = icmp eq i32 %5242, 0
  %5256 = zext i1 %5255 to i8
  store i8 %5256, i8* %32, align 1, !tbaa !2448
  %5257 = lshr i32 %5242, 31
  %5258 = trunc i32 %5257 to i8
  store i8 %5258, i8* %35, align 1, !tbaa !2449
  %5259 = lshr i32 %5241, 31
  %5260 = xor i32 %5259, 1
  %5261 = xor i32 %5257, %5259
  %5262 = add nuw nsw i32 %5261, %5260
  %5263 = icmp eq i32 %5262, 2
  %5264 = zext i1 %5263 to i8
  store i8 %5264, i8* %41, align 1, !tbaa !2450
  %.v303 = select i1 %5255, i64 118, i64 18
  %5265 = add i64 %2501, %.v303
  store i64 %5265, i64* %PC, align 8, !tbaa !2428
  br i1 %5255, label %block_4012ab, label %block_401247

block_401434:                                     ; preds = %block_401383
  %5266 = load i32, i32* %5203, align 4
  %5267 = sext i32 %5266 to i64
  store i64 %5267, i64* %RAX, align 8, !tbaa !2428
  %5268 = shl nsw i64 %5267, 2
  %5269 = add i64 %5195, -1616
  %5270 = add i64 %5269, %5268
  %5271 = add i64 %5231, 12
  store i64 %5271, i64* %PC, align 8
  %5272 = inttoptr i64 %5270 to i32*
  %5273 = load i32, i32* %5272, align 4
  %5274 = sext i32 %5273 to i64
  store i64 %5274, i64* %RAX, align 8, !tbaa !2428
  %5275 = shl nsw i64 %5274, 2
  %5276 = add i64 %5275, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %5277 = add i64 %5231, 19
  store i64 %5277, i64* %PC, align 8
  %5278 = inttoptr i64 %5276 to i32*
  %5279 = load i32, i32* %5278, align 4
  %5280 = zext i32 %5279 to i64
  store i64 %5280, i64* %RCX, align 8, !tbaa !2428
  %5281 = add i64 %5231, 23
  store i64 %5281, i64* %PC, align 8
  %5282 = load i32, i32* %5203, align 4
  %5283 = sext i32 %5282 to i64
  store i64 %5283, i64* %RAX, align 8, !tbaa !2428
  %5284 = shl nsw i64 %5283, 2
  %5285 = add i64 %5269, %5284
  %5286 = add i64 %5231, 30
  store i64 %5286, i64* %PC, align 8
  %5287 = inttoptr i64 %5285 to i32*
  store i32 %5279, i32* %5287, align 4
  %5288 = load i64, i64* %RBP, align 8
  %5289 = add i64 %5288, -4
  %5290 = load i64, i64* %PC, align 8
  %5291 = add i64 %5290, 3
  store i64 %5291, i64* %PC, align 8
  %5292 = inttoptr i64 %5289 to i32*
  %5293 = load i32, i32* %5292, align 4
  %5294 = add i32 %5293, 1
  %5295 = zext i32 %5294 to i64
  store i64 %5295, i64* %RAX, align 8, !tbaa !2428
  %5296 = icmp eq i32 %5293, -1
  %5297 = icmp eq i32 %5294, 0
  %5298 = or i1 %5296, %5297
  %5299 = zext i1 %5298 to i8
  store i8 %5299, i8* %16, align 1, !tbaa !2432
  %5300 = and i32 %5294, 255
  %5301 = tail call i32 @llvm.ctpop.i32(i32 %5300) #12
  %5302 = trunc i32 %5301 to i8
  %5303 = and i8 %5302, 1
  %5304 = xor i8 %5303, 1
  store i8 %5304, i8* %23, align 1, !tbaa !2446
  %5305 = xor i32 %5294, %5293
  %5306 = lshr i32 %5305, 4
  %5307 = trunc i32 %5306 to i8
  %5308 = and i8 %5307, 1
  store i8 %5308, i8* %29, align 1, !tbaa !2447
  %5309 = zext i1 %5297 to i8
  store i8 %5309, i8* %32, align 1, !tbaa !2448
  %5310 = lshr i32 %5294, 31
  %5311 = trunc i32 %5310 to i8
  store i8 %5311, i8* %35, align 1, !tbaa !2449
  %5312 = lshr i32 %5293, 31
  %5313 = xor i32 %5310, %5312
  %5314 = add nuw nsw i32 %5313, %5310
  %5315 = icmp eq i32 %5314, 2
  %5316 = zext i1 %5315 to i8
  store i8 %5316, i8* %41, align 1, !tbaa !2450
  %5317 = add i64 %5290, 9
  store i64 %5317, i64* %PC, align 8
  store i32 %5294, i32* %5292, align 4
  %5318 = load i64, i64* %PC, align 8
  %5319 = add i64 %5318, -570
  store i64 %5319, i64* %PC, align 8, !tbaa !2428
  br label %block_401221

block_400c30:                                     ; preds = %block_400c15
  %5320 = add i64 %5836, -16
  %5321 = add i64 %5872, 4
  store i64 %5321, i64* %PC, align 8
  %5322 = inttoptr i64 %5320 to i32*
  %5323 = load i32, i32* %5322, align 4
  %5324 = sext i32 %5323 to i64
  store i64 %5324, i64* %RAX, align 8, !tbaa !2428
  %5325 = shl nsw i64 %5324, 2
  %5326 = add i64 %5836, -1408
  %5327 = add i64 %5326, %5325
  %5328 = add i64 %5872, 11
  store i64 %5328, i64* %PC, align 8
  %5329 = inttoptr i64 %5327 to i32*
  %5330 = load i32, i32* %5329, align 4
  %5331 = zext i32 %5330 to i64
  store i64 %5331, i64* %RCX, align 8, !tbaa !2428
  %5332 = add i64 %5872, 15
  store i64 %5332, i64* %PC, align 8
  %5333 = load i32, i32* %5840, align 4
  %5334 = sext i32 %5333 to i64
  store i64 %5334, i64* %RAX, align 8, !tbaa !2428
  %5335 = shl nsw i64 %5334, 2
  %5336 = add nsw i64 %5335, -1408
  %5337 = add i64 %5336, %5836
  %5338 = add i64 %5872, 22
  store i64 %5338, i64* %PC, align 8
  %5339 = inttoptr i64 %5337 to i32*
  %5340 = load i32, i32* %5339, align 4
  %5341 = sub i32 %5330, %5340
  %5342 = icmp ult i32 %5330, %5340
  %5343 = zext i1 %5342 to i8
  store i8 %5343, i8* %16, align 1, !tbaa !2432
  %5344 = and i32 %5341, 255
  %5345 = tail call i32 @llvm.ctpop.i32(i32 %5344) #12
  %5346 = trunc i32 %5345 to i8
  %5347 = and i8 %5346, 1
  %5348 = xor i8 %5347, 1
  store i8 %5348, i8* %23, align 1, !tbaa !2446
  %5349 = xor i32 %5340, %5330
  %5350 = xor i32 %5349, %5341
  %5351 = lshr i32 %5350, 4
  %5352 = trunc i32 %5351 to i8
  %5353 = and i8 %5352, 1
  store i8 %5353, i8* %29, align 1, !tbaa !2447
  %5354 = icmp eq i32 %5341, 0
  %5355 = zext i1 %5354 to i8
  store i8 %5355, i8* %32, align 1, !tbaa !2448
  %5356 = lshr i32 %5341, 31
  %5357 = trunc i32 %5356 to i8
  store i8 %5357, i8* %35, align 1, !tbaa !2449
  %5358 = lshr i32 %5330, 31
  %5359 = lshr i32 %5340, 31
  %5360 = xor i32 %5359, %5358
  %5361 = xor i32 %5356, %5358
  %5362 = add nuw nsw i32 %5361, %5360
  %5363 = icmp eq i32 %5362, 2
  %5364 = zext i1 %5363 to i8
  store i8 %5364, i8* %41, align 1, !tbaa !2450
  %5365 = icmp ne i8 %5357, 0
  %5366 = xor i1 %5365, %5363
  %.v286 = select i1 %5366, i64 28, i64 34
  %5367 = add i64 %5872, %.v286
  store i64 %5367, i64* %PC, align 8, !tbaa !2428
  br i1 %5366, label %block_400c4c, label %block_400c52

block_40102e:                                     ; preds = %block_400ffb, %block_401014
  %5368 = phi i64 [ %3477, %block_400ffb ], [ %.pre207, %block_401014 ]
  %5369 = load i64, i64* %RBP, align 8
  %5370 = add i64 %5369, -2709
  %5371 = add i64 %5368, 6
  store i64 %5371, i64* %PC, align 8
  %5372 = inttoptr i64 %5370 to i8*
  %5373 = load i8, i8* %5372, align 1
  store i8 %5373, i8* %AL, align 1, !tbaa !2451
  %5374 = and i8 %5373, 1
  store i8 0, i8* %16, align 1, !tbaa !2432
  %5375 = zext i8 %5374 to i32
  %5376 = tail call i32 @llvm.ctpop.i32(i32 %5375) #12
  %5377 = trunc i32 %5376 to i8
  %5378 = xor i8 %5377, 1
  store i8 %5378, i8* %23, align 1, !tbaa !2446
  %5379 = xor i8 %5374, 1
  store i8 %5379, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %5380 = icmp eq i8 %5379, 0
  %.v292 = select i1 %5380, i64 -1349, i64 14
  %5381 = add i64 %5368, %.v292
  store i64 %5381, i64* %PC, align 8, !tbaa !2428
  br i1 %5380, label %block_400ae9, label %block_40103c

block_400b04:                                     ; preds = %block_400ae9
  %5382 = add i64 %2568, 4
  store i64 %5382, i64* %PC, align 8
  %5383 = load i32, i32* %2536, align 4
  %5384 = sext i32 %5383 to i64
  store i64 %5384, i64* %RAX, align 8, !tbaa !2428
  %5385 = shl nsw i64 %5384, 2
  %5386 = add i64 %2532, -1328
  %5387 = add i64 %5386, %5385
  %5388 = add i64 %2568, 11
  store i64 %5388, i64* %PC, align 8
  %5389 = inttoptr i64 %5387 to i32*
  %5390 = load i32, i32* %5389, align 4
  %5391 = zext i32 %5390 to i64
  store i64 %5391, i64* %RCX, align 8, !tbaa !2428
  %5392 = add i64 %2568, 14
  store i64 %5392, i64* %PC, align 8
  %5393 = load i32, i32* %2536, align 4
  %5394 = add i32 %5393, 1
  %5395 = zext i32 %5394 to i64
  store i64 %5395, i64* %RDX, align 8, !tbaa !2428
  %5396 = icmp eq i32 %5393, -1
  %5397 = icmp eq i32 %5394, 0
  %5398 = or i1 %5396, %5397
  %5399 = zext i1 %5398 to i8
  store i8 %5399, i8* %16, align 1, !tbaa !2432
  %5400 = and i32 %5394, 255
  %5401 = tail call i32 @llvm.ctpop.i32(i32 %5400) #12
  %5402 = trunc i32 %5401 to i8
  %5403 = and i8 %5402, 1
  %5404 = xor i8 %5403, 1
  store i8 %5404, i8* %23, align 1, !tbaa !2446
  %5405 = xor i32 %5394, %5393
  %5406 = lshr i32 %5405, 4
  %5407 = trunc i32 %5406 to i8
  %5408 = and i8 %5407, 1
  store i8 %5408, i8* %29, align 1, !tbaa !2447
  %5409 = zext i1 %5397 to i8
  store i8 %5409, i8* %32, align 1, !tbaa !2448
  %5410 = lshr i32 %5394, 31
  %5411 = trunc i32 %5410 to i8
  store i8 %5411, i8* %35, align 1, !tbaa !2449
  %5412 = lshr i32 %5393, 31
  %5413 = xor i32 %5410, %5412
  %5414 = add nuw nsw i32 %5413, %5410
  %5415 = icmp eq i32 %5414, 2
  %5416 = zext i1 %5415 to i8
  store i8 %5416, i8* %41, align 1, !tbaa !2450
  %5417 = sext i32 %5394 to i64
  store i64 %5417, i64* %RAX, align 8, !tbaa !2428
  %5418 = shl nsw i64 %5417, 2
  %5419 = add nsw i64 %5418, -1328
  %5420 = add i64 %5419, %2532
  %5421 = add i64 %2568, 27
  store i64 %5421, i64* %PC, align 8
  %5422 = inttoptr i64 %5420 to i32*
  store i32 %5390, i32* %5422, align 4
  %5423 = load i64, i64* %RBP, align 8
  %5424 = add i64 %5423, -4
  %5425 = load i64, i64* %PC, align 8
  %5426 = add i64 %5425, 7
  store i64 %5426, i64* %PC, align 8
  %5427 = inttoptr i64 %5424 to i32*
  store i32 0, i32* %5427, align 4
  %.pre184 = load i64, i64* %PC, align 8
  br label %block_400b26

block_400c52:                                     ; preds = %block_400c30, %block_400c15, %block_400c4c
  %5428 = phi i64 [ %5836, %block_400c30 ], [ %5836, %block_400c15 ], [ %.pre190, %block_400c4c ]
  %5429 = phi i64 [ %5367, %block_400c30 ], [ %5872, %block_400c15 ], [ %.pre189, %block_400c4c ]
  %5430 = add i64 %5428, -8
  %5431 = add i64 %5429, 9
  store i64 %5431, i64* %PC, align 8
  %5432 = inttoptr i64 %5430 to i32*
  %5433 = load i32, i32* %5432, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %5434 = and i32 %5433, 255
  %5435 = tail call i32 @llvm.ctpop.i32(i32 %5434) #12
  %5436 = trunc i32 %5435 to i8
  %5437 = and i8 %5436, 1
  %5438 = xor i8 %5437, 1
  store i8 %5438, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %5439 = icmp eq i32 %5433, 0
  %5440 = zext i1 %5439 to i8
  store i8 %5440, i8* %32, align 1, !tbaa !2448
  %5441 = lshr i32 %5433, 31
  %5442 = trunc i32 %5441 to i8
  store i8 %5442, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %5443 = xor i1 %5439, true
  %5444 = icmp eq i8 %5442, 0
  %5445 = and i1 %5444, %5443
  %.v287 = select i1 %5445, i64 -61, i64 15
  %5446 = add i64 %5429, %.v287
  store i64 %5446, i64* %PC, align 8, !tbaa !2428
  br i1 %5445, label %block_400c15, label %block_400c61

block_40103c:                                     ; preds = %block_40102e
  %5447 = add i64 %5369, -12
  %5448 = add i64 %5381, 3
  store i64 %5448, i64* %PC, align 8
  %5449 = inttoptr i64 %5447 to i32*
  %5450 = load i32, i32* %5449, align 4
  %5451 = add i32 %5450, 1
  %5452 = zext i32 %5451 to i64
  store i64 %5452, i64* %RAX, align 8, !tbaa !2428
  %5453 = icmp eq i32 %5450, -1
  %5454 = icmp eq i32 %5451, 0
  %5455 = or i1 %5453, %5454
  %5456 = zext i1 %5455 to i8
  store i8 %5456, i8* %16, align 1, !tbaa !2432
  %5457 = and i32 %5451, 255
  %5458 = tail call i32 @llvm.ctpop.i32(i32 %5457) #12
  %5459 = trunc i32 %5458 to i8
  %5460 = and i8 %5459, 1
  %5461 = xor i8 %5460, 1
  store i8 %5461, i8* %23, align 1, !tbaa !2446
  %5462 = xor i32 %5451, %5450
  %5463 = lshr i32 %5462, 4
  %5464 = trunc i32 %5463 to i8
  %5465 = and i8 %5464, 1
  store i8 %5465, i8* %29, align 1, !tbaa !2447
  %5466 = zext i1 %5454 to i8
  store i8 %5466, i8* %32, align 1, !tbaa !2448
  %5467 = lshr i32 %5451, 31
  %5468 = trunc i32 %5467 to i8
  store i8 %5468, i8* %35, align 1, !tbaa !2449
  %5469 = lshr i32 %5450, 31
  %5470 = xor i32 %5467, %5469
  %5471 = add nuw nsw i32 %5470, %5467
  %5472 = icmp eq i32 %5471, 2
  %5473 = zext i1 %5472 to i8
  store i8 %5473, i8* %41, align 1, !tbaa !2450
  %5474 = add i64 %5381, 9
  store i64 %5474, i64* %PC, align 8
  store i32 %5451, i32* %5449, align 4
  %5475 = load i64, i64* %RBP, align 8
  %5476 = add i64 %5475, -12
  %5477 = load i64, i64* %PC, align 8
  %5478 = add i64 %5477, 4
  store i64 %5478, i64* %PC, align 8
  %5479 = inttoptr i64 %5476 to i32*
  %5480 = load i32, i32* %5479, align 4
  %5481 = sext i32 %5480 to i64
  store i64 %5481, i64* %RCX, align 8, !tbaa !2428
  %5482 = shl nsw i64 %5481, 2
  %5483 = add i64 %5475, -1328
  %5484 = add i64 %5483, %5482
  %5485 = add i64 %5477, 12
  store i64 %5485, i64* %PC, align 8
  %5486 = inttoptr i64 %5484 to i32*
  %5487 = load i32, i32* %5486, align 4
  %5488 = add i32 %5487, -8
  %5489 = icmp ult i32 %5487, 8
  %5490 = zext i1 %5489 to i8
  store i8 %5490, i8* %16, align 1, !tbaa !2432
  %5491 = and i32 %5488, 255
  %5492 = tail call i32 @llvm.ctpop.i32(i32 %5491) #12
  %5493 = trunc i32 %5492 to i8
  %5494 = and i8 %5493, 1
  %5495 = xor i8 %5494, 1
  store i8 %5495, i8* %23, align 1, !tbaa !2446
  %5496 = xor i32 %5488, %5487
  %5497 = lshr i32 %5496, 4
  %5498 = trunc i32 %5497 to i8
  %5499 = and i8 %5498, 1
  store i8 %5499, i8* %29, align 1, !tbaa !2447
  %5500 = icmp eq i32 %5488, 0
  %5501 = zext i1 %5500 to i8
  store i8 %5501, i8* %32, align 1, !tbaa !2448
  %5502 = lshr i32 %5488, 31
  %5503 = trunc i32 %5502 to i8
  store i8 %5503, i8* %35, align 1, !tbaa !2449
  %5504 = lshr i32 %5487, 31
  %5505 = xor i32 %5502, %5504
  %5506 = add nuw nsw i32 %5505, %5504
  %5507 = icmp eq i32 %5506, 2
  %5508 = zext i1 %5507 to i8
  store i8 %5508, i8* %41, align 1, !tbaa !2450
  %5509 = icmp ne i8 %5503, 0
  %5510 = xor i1 %5509, %5507
  %.demorgan258 = or i1 %5500, %5510
  %.v = select i1 %.demorgan258, i64 18, i64 1859
  %5511 = add i64 %5477, %.v
  %5512 = add i64 %5475, -4
  %5513 = add i64 %5511, 7
  store i64 %5513, i64* %PC, align 8
  %5514 = inttoptr i64 %5512 to i32*
  store i32 0, i32* %5514, align 4
  %.pre208 = load i64, i64* %PC, align 8
  br i1 %.demorgan258, label %block_40105e.preheader, label %block_40178f.preheader

block_40178f.preheader:                           ; preds = %block_40103c
  br label %block_40178f

block_40105e.preheader:                           ; preds = %block_40103c
  br label %block_40105e

block_40119d:                                     ; preds = %block_401143, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6
  %5515 = phi i64 [ %1844, %block_401143 ], [ %.pre216, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6 ]
  %5516 = phi i64 [ %1492, %block_401143 ], [ %.pre215, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6 ]
  %MEMORY.45 = phi %struct.Memory* [ %MEMORY.13, %block_401143 ], [ %1144, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6 ]
  %5517 = add i64 %5515, -8
  %5518 = add i64 %5516, 8
  store i64 %5518, i64* %PC, align 8
  %5519 = inttoptr i64 %5517 to i32*
  %5520 = load i32, i32* %5519, align 4
  %5521 = add i32 %5520, 1
  %5522 = zext i32 %5521 to i64
  store i64 %5522, i64* %RAX, align 8, !tbaa !2428
  %5523 = icmp eq i32 %5520, -1
  %5524 = icmp eq i32 %5521, 0
  %5525 = or i1 %5523, %5524
  %5526 = zext i1 %5525 to i8
  store i8 %5526, i8* %16, align 1, !tbaa !2432
  %5527 = and i32 %5521, 255
  %5528 = tail call i32 @llvm.ctpop.i32(i32 %5527) #12
  %5529 = trunc i32 %5528 to i8
  %5530 = and i8 %5529, 1
  %5531 = xor i8 %5530, 1
  store i8 %5531, i8* %23, align 1, !tbaa !2446
  %5532 = xor i32 %5521, %5520
  %5533 = lshr i32 %5532, 4
  %5534 = trunc i32 %5533 to i8
  %5535 = and i8 %5534, 1
  store i8 %5535, i8* %29, align 1, !tbaa !2447
  %5536 = zext i1 %5524 to i8
  store i8 %5536, i8* %32, align 1, !tbaa !2448
  %5537 = lshr i32 %5521, 31
  %5538 = trunc i32 %5537 to i8
  store i8 %5538, i8* %35, align 1, !tbaa !2449
  %5539 = lshr i32 %5520, 31
  %5540 = xor i32 %5537, %5539
  %5541 = add nuw nsw i32 %5540, %5537
  %5542 = icmp eq i32 %5541, 2
  %5543 = zext i1 %5542 to i8
  store i8 %5543, i8* %41, align 1, !tbaa !2450
  %5544 = add i64 %5516, 14
  store i64 %5544, i64* %PC, align 8
  store i32 %5521, i32* %5519, align 4
  %5545 = load i64, i64* %PC, align 8
  %5546 = add i64 %5545, -124
  store i64 %5546, i64* %PC, align 8, !tbaa !2428
  br label %block_40112f

block_400d0c:                                     ; preds = %block_400cd2
  %5547 = add i64 %2375, 7
  store i64 %5547, i64* %PC, align 8
  store i32 0, i32* %2349, align 4
  %.pre193 = load i64, i64* %PC, align 8
  br label %block_400d13

block_401823:                                     ; preds = %block_401811
  %5548 = add i64 %5972, 12
  store i64 %5548, i64* %PC, align 8
  %5549 = inttoptr i64 %5977 to i32*
  %5550 = load i32, i32* %5549, align 4
  %5551 = sext i32 %5550 to i64
  store i64 %5551, i64* %RAX, align 8, !tbaa !2428
  %5552 = shl nsw i64 %5551, 2
  %5553 = add i64 %5552, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %5554 = add i64 %5972, 19
  store i64 %5554, i64* %PC, align 8
  %5555 = inttoptr i64 %5553 to i32*
  %5556 = load i32, i32* %5555, align 4
  %5557 = zext i32 %5556 to i64
  store i64 %5557, i64* %RCX, align 8, !tbaa !2428
  %5558 = add i64 %5972, 23
  store i64 %5558, i64* %PC, align 8
  %5559 = load i32, i32* %6208, align 4
  %5560 = sext i32 %5559 to i64
  store i64 %5560, i64* %RAX, align 8, !tbaa !2428
  %5561 = shl nsw i64 %5560, 2
  %5562 = add i64 %5561, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %5563 = add i64 %5972, 30
  store i64 %5563, i64* %PC, align 8
  %5564 = inttoptr i64 %5562 to i32*
  store i32 %5556, i32* %5564, align 4
  %5565 = load i64, i64* %PC, align 8
  %5566 = add i64 %5565, 20
  store i64 %5566, i64* %PC, align 8, !tbaa !2428
  br label %block_401855

block_401421:                                     ; preds = %block_4013a1, %block_40138f, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7
  %5567 = phi i64 [ %977, %block_40138f ], [ %4752, %block_4013a1 ], [ %.pre228, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7 ]
  %MEMORY.46 = phi %struct.Memory* [ %MEMORY.42, %block_40138f ], [ %MEMORY.42, %block_4013a1 ], [ %618, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7 ]
  %5568 = load i64, i64* %RBP, align 8
  %5569 = add i64 %5568, -8
  %5570 = add i64 %5567, 8
  store i64 %5570, i64* %PC, align 8
  %5571 = inttoptr i64 %5569 to i32*
  %5572 = load i32, i32* %5571, align 4
  %5573 = add i32 %5572, 1
  %5574 = zext i32 %5573 to i64
  store i64 %5574, i64* %RAX, align 8, !tbaa !2428
  %5575 = icmp eq i32 %5572, -1
  %5576 = icmp eq i32 %5573, 0
  %5577 = or i1 %5575, %5576
  %5578 = zext i1 %5577 to i8
  store i8 %5578, i8* %16, align 1, !tbaa !2432
  %5579 = and i32 %5573, 255
  %5580 = tail call i32 @llvm.ctpop.i32(i32 %5579) #12
  %5581 = trunc i32 %5580 to i8
  %5582 = and i8 %5581, 1
  %5583 = xor i8 %5582, 1
  store i8 %5583, i8* %23, align 1, !tbaa !2446
  %5584 = xor i32 %5573, %5572
  %5585 = lshr i32 %5584, 4
  %5586 = trunc i32 %5585 to i8
  %5587 = and i8 %5586, 1
  store i8 %5587, i8* %29, align 1, !tbaa !2447
  %5588 = zext i1 %5576 to i8
  store i8 %5588, i8* %32, align 1, !tbaa !2448
  %5589 = lshr i32 %5573, 31
  %5590 = trunc i32 %5589 to i8
  store i8 %5590, i8* %35, align 1, !tbaa !2449
  %5591 = lshr i32 %5572, 31
  %5592 = xor i32 %5589, %5591
  %5593 = add nuw nsw i32 %5592, %5589
  %5594 = icmp eq i32 %5593, 2
  %5595 = zext i1 %5594 to i8
  store i8 %5595, i8* %41, align 1, !tbaa !2450
  %5596 = add i64 %5567, 14
  store i64 %5596, i64* %PC, align 8
  store i32 %5573, i32* %5571, align 4
  %5597 = load i64, i64* %PC, align 8
  %5598 = add i64 %5597, -172
  store i64 %5598, i64* %PC, align 8, !tbaa !2428
  br label %block_401383

block_4015bc:                                     ; preds = %block_4015a2
  %5599 = add i64 %2120, 4
  store i64 %5599, i64* %PC, align 8
  %5600 = load i32, i32* %2095, align 4
  %5601 = sext i32 %5600 to i64
  store i64 %5601, i64* %RAX, align 8, !tbaa !2428
  %5602 = shl nsw i64 %5601, 2
  %5603 = add i64 %2099, %5602
  %5604 = add i64 %2120, 12
  store i64 %5604, i64* %PC, align 8
  %5605 = inttoptr i64 %5603 to i32*
  %5606 = load i32, i32* %5605, align 4
  %5607 = sext i32 %5606 to i64
  store i64 %5607, i64* %RAX, align 8, !tbaa !2428
  %5608 = shl nsw i64 %5607, 2
  %5609 = add i64 %2106, %5608
  %5610 = add i64 %2120, 20
  store i64 %5610, i64* %PC, align 8
  %5611 = inttoptr i64 %5609 to i32*
  %5612 = load i32, i32* %5611, align 4
  %5613 = sext i32 %5612 to i64
  store i64 %5613, i64* %RAX, align 8, !tbaa !2428
  %5614 = shl nsw i64 %5613, 2
  %5615 = add i64 %5614, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %5616 = add i64 %2120, 27
  store i64 %5616, i64* %PC, align 8
  %5617 = inttoptr i64 %5615 to i32*
  %5618 = load i32, i32* %5617, align 4
  %5619 = zext i32 %5618 to i64
  store i64 %5619, i64* %RCX, align 8, !tbaa !2428
  %5620 = add i64 %2120, 31
  store i64 %5620, i64* %PC, align 8
  %5621 = load i32, i32* %2095, align 4
  %5622 = sext i32 %5621 to i64
  store i64 %5622, i64* %RAX, align 8, !tbaa !2428
  %5623 = shl nsw i64 %5622, 2
  %5624 = add i64 %2099, %5623
  %5625 = add i64 %2120, 39
  store i64 %5625, i64* %PC, align 8
  %5626 = inttoptr i64 %5624 to i32*
  %5627 = load i32, i32* %5626, align 4
  %5628 = sext i32 %5627 to i64
  store i64 %5628, i64* %RAX, align 8, !tbaa !2428
  %5629 = shl nsw i64 %5628, 2
  %5630 = add i64 %2106, %5629
  %5631 = add i64 %2120, 46
  store i64 %5631, i64* %PC, align 8
  %5632 = inttoptr i64 %5630 to i32*
  store i32 %5618, i32* %5632, align 4
  %5633 = load i64, i64* %RBP, align 8
  %5634 = add i64 %5633, -16
  %5635 = load i64, i64* %PC, align 8
  %5636 = add i64 %5635, 7
  store i64 %5636, i64* %PC, align 8
  %5637 = inttoptr i64 %5634 to i32*
  store i32 0, i32* %5637, align 4
  %5638 = load i64, i64* %RBP, align 8
  %5639 = add i64 %5638, -8
  %5640 = load i64, i64* %PC, align 8
  %5641 = add i64 %5640, 7
  store i64 %5641, i64* %PC, align 8
  %5642 = inttoptr i64 %5639 to i32*
  store i32 0, i32* %5642, align 4
  %.pre237 = load i64, i64* %PC, align 8
  br label %block_4015f8

block_4009fe:                                     ; preds = %block_400986
  %5643 = add i64 %1025, -4
  %5644 = add i64 %1054, 4
  store i64 %5644, i64* %PC, align 8
  %5645 = inttoptr i64 %5643 to i32*
  %5646 = load i32, i32* %5645, align 4
  %5647 = sext i32 %5646 to i64
  store i64 %5647, i64* %RAX, align 8, !tbaa !2428
  %5648 = shl nsw i64 %5647, 2
  %5649 = add i64 %1025, -1488
  %5650 = add i64 %5649, %5648
  %5651 = add i64 %1054, 12
  store i64 %5651, i64* %PC, align 8
  %5652 = inttoptr i64 %5650 to i32*
  %5653 = load i32, i32* %5652, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %5654 = and i32 %5653, 255
  %5655 = tail call i32 @llvm.ctpop.i32(i32 %5654) #12
  %5656 = trunc i32 %5655 to i8
  %5657 = and i8 %5656, 1
  %5658 = xor i8 %5657, 1
  store i8 %5658, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  %5659 = icmp eq i32 %5653, 0
  %5660 = zext i1 %5659 to i8
  store i8 %5660, i8* %32, align 1, !tbaa !2448
  %5661 = lshr i32 %5653, 31
  %5662 = trunc i32 %5661 to i8
  store i8 %5662, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %.v321 = select i1 %5659, i64 28, i64 18
  %5663 = add i64 %1054, %.v321
  store i64 %5663, i64* %PC, align 8, !tbaa !2428
  br i1 %5659, label %block_400a1a, label %block_400a10

block_40137c:                                     ; preds = %block_401267, %block_401377
  %5664 = phi i64 [ %.pre223, %block_401267 ], [ %810, %block_401377 ]
  %.sink15 = phi i64 [ 214, %block_401267 ], [ 5, %block_401377 ]
  %5665 = add i64 %5664, %.sink15
  %5666 = load i64, i64* %RBP, align 8
  %5667 = add i64 %5666, -8
  %5668 = add i64 %5665, 7
  store i64 %5668, i64* %PC, align 8
  %5669 = inttoptr i64 %5667 to i32*
  store i32 1, i32* %5669, align 4
  %.pre224 = load i64, i64* %PC, align 8
  br label %block_401383

block_401618:                                     ; preds = %block_40160c
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %5670 = add i64 %6074, 9
  store i64 %5670, i64* %PC, align 8
  %5671 = load i32, i32* %2221, align 4
  %5672 = sext i32 %5671 to i64
  store i64 %5672, i64* %RCX, align 8, !tbaa !2428
  %5673 = shl nsw i64 %5672, 2
  %5674 = add i64 %2218, -1568
  %5675 = add i64 %5674, %5673
  %5676 = add i64 %6074, 16
  store i64 %5676, i64* %PC, align 8
  %5677 = inttoptr i64 %5675 to i32*
  %5678 = load i32, i32* %5677, align 4
  %5679 = zext i32 %5678 to i64
  store i64 %5679, i64* %RDX, align 8, !tbaa !2428
  %5680 = add i64 %6074, 20
  store i64 %5680, i64* %PC, align 8
  %5681 = load i32, i32* %6048, align 4
  %5682 = sext i32 %5681 to i64
  store i64 %5682, i64* %RCX, align 8, !tbaa !2428
  %5683 = shl nsw i64 %5682, 2
  %5684 = add nsw i64 %5683, -1536
  %5685 = add i64 %5684, %2218
  %5686 = add i64 %6074, 27
  store i64 %5686, i64* %PC, align 8
  %5687 = inttoptr i64 %5685 to i32*
  %5688 = load i32, i32* %5687, align 4
  %5689 = add i32 %5688, %5678
  %5690 = zext i32 %5689 to i64
  store i64 %5690, i64* %RDX, align 8, !tbaa !2428
  %5691 = icmp ult i32 %5689, %5678
  %5692 = icmp ult i32 %5689, %5688
  %5693 = or i1 %5691, %5692
  %5694 = zext i1 %5693 to i8
  store i8 %5694, i8* %16, align 1, !tbaa !2432
  %5695 = and i32 %5689, 255
  %5696 = tail call i32 @llvm.ctpop.i32(i32 %5695) #12
  %5697 = trunc i32 %5696 to i8
  %5698 = and i8 %5697, 1
  %5699 = xor i8 %5698, 1
  store i8 %5699, i8* %23, align 1, !tbaa !2446
  %5700 = xor i32 %5688, %5678
  %5701 = xor i32 %5700, %5689
  %5702 = lshr i32 %5701, 4
  %5703 = trunc i32 %5702 to i8
  %5704 = and i8 %5703, 1
  store i8 %5704, i8* %29, align 1, !tbaa !2447
  %5705 = icmp eq i32 %5689, 0
  %5706 = zext i1 %5705 to i8
  store i8 %5706, i8* %32, align 1, !tbaa !2448
  %5707 = lshr i32 %5689, 31
  %5708 = trunc i32 %5707 to i8
  store i8 %5708, i8* %35, align 1, !tbaa !2449
  %5709 = lshr i32 %5678, 31
  %5710 = lshr i32 %5688, 31
  %5711 = xor i32 %5707, %5709
  %5712 = xor i32 %5707, %5710
  %5713 = add nuw nsw i32 %5711, %5712
  %5714 = icmp eq i32 %5713, 2
  %5715 = zext i1 %5714 to i8
  store i8 %5715, i8* %41, align 1, !tbaa !2450
  %5716 = add i64 %2218, -2728
  %5717 = add i64 %6074, 33
  store i64 %5717, i64* %PC, align 8
  %5718 = inttoptr i64 %5716 to i32*
  store i32 255, i32* %5718, align 4
  %5719 = load i32, i32* %EDX, align 4
  %5720 = zext i32 %5719 to i64
  %5721 = load i64, i64* %PC, align 8
  store i64 %5720, i64* %RAX, align 8, !tbaa !2428
  %5722 = sext i32 %5719 to i64
  %5723 = lshr i64 %5722, 32
  store i64 %5723, i64* %55, align 8, !tbaa !2428
  %5724 = load i64, i64* %RBP, align 8
  %5725 = add i64 %5724, -2728
  %5726 = add i64 %5721, 9
  store i64 %5726, i64* %PC, align 8
  %5727 = inttoptr i64 %5725 to i32*
  %5728 = load i32, i32* %5727, align 4
  %5729 = zext i32 %5728 to i64
  store i64 %5729, i64* %RSI, align 8, !tbaa !2428
  %5730 = add i64 %5721, 11
  store i64 %5730, i64* %PC, align 8
  %5731 = sext i32 %5728 to i64
  %5732 = shl nuw i64 %5723, 32
  %5733 = or i64 %5732, %5720
  %5734 = sdiv i64 %5733, %5731
  %5735 = shl i64 %5734, 32
  %5736 = ashr exact i64 %5735, 32
  %5737 = icmp eq i64 %5734, %5736
  br i1 %5737, label %5740, label %5738

; <label>:5738:                                   ; preds = %block_401618
  %5739 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5730, %struct.Memory* %MEMORY.17) #13
  %.pre243 = load i32, i32* %EDX, align 4
  %.pre244 = load i64, i64* %PC, align 8
  %.pre245 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:5740:                                   ; preds = %block_401618
  %5741 = srem i64 %5733, %5731
  %5742 = and i64 %5734, 4294967295
  store i64 %5742, i64* %RAX, align 8, !tbaa !2428
  %5743 = and i64 %5741, 4294967295
  store i64 %5743, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %23, align 1, !tbaa !2446
  store i8 0, i8* %29, align 1, !tbaa !2447
  store i8 0, i8* %32, align 1, !tbaa !2448
  store i8 0, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  %5744 = trunc i64 %5741 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %5740, %5738
  %5745 = phi i64 [ %.pre245, %5738 ], [ %5724, %5740 ]
  %5746 = phi i64 [ %.pre244, %5738 ], [ %5730, %5740 ]
  %5747 = phi i32 [ %.pre243, %5738 ], [ %5744, %5740 ]
  %5748 = phi %struct.Memory* [ %5739, %5738 ], [ %MEMORY.17, %5740 ]
  %5749 = sext i32 %5747 to i64
  store i64 %5749, i64* %RCX, align 8, !tbaa !2428
  %5750 = shl nsw i64 %5749, 2
  %5751 = add i64 %5750, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %5752 = add i64 %5746, 10
  store i64 %5752, i64* %PC, align 8
  %5753 = inttoptr i64 %5751 to i32*
  %5754 = load i32, i32* %5753, align 4
  %5755 = xor i32 %5754, 1
  %5756 = zext i32 %5755 to i64
  store i64 %5756, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %5757 = and i32 %5755, 255
  %5758 = tail call i32 @llvm.ctpop.i32(i32 %5757) #12
  %5759 = trunc i32 %5758 to i8
  %5760 = and i8 %5759, 1
  %5761 = xor i8 %5760, 1
  store i8 %5761, i8* %23, align 1, !tbaa !2446
  %5762 = icmp eq i32 %5755, 0
  %5763 = zext i1 %5762 to i8
  store i8 %5763, i8* %32, align 1, !tbaa !2448
  %5764 = lshr i32 %5754, 31
  %5765 = trunc i32 %5764 to i8
  store i8 %5765, i8* %35, align 1, !tbaa !2449
  store i8 0, i8* %41, align 1, !tbaa !2450
  store i8 0, i8* %29, align 1, !tbaa !2447
  %sext = shl nuw i64 %5756, 32
  %5766 = sext i32 %5755 to i64
  store i64 %5766, i64* %RCX, align 8, !tbaa !2428
  %5767 = ashr exact i64 %sext, 30
  %5768 = add i64 %5767, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %5769 = add i64 %5746, 23
  store i64 %5769, i64* %PC, align 8
  %5770 = inttoptr i64 %5768 to i32*
  %5771 = load i32, i32* %5770, align 4
  %5772 = zext i32 %5771 to i64
  store i64 %5772, i64* %RDX, align 8, !tbaa !2428
  %5773 = add i64 %5745, -16
  %5774 = add i64 %5746, 26
  store i64 %5774, i64* %PC, align 8
  %5775 = inttoptr i64 %5773 to i32*
  %5776 = load i32, i32* %5775, align 4
  %5777 = add i32 %5776, %5771
  %5778 = zext i32 %5777 to i64
  store i64 %5778, i64* %RDX, align 8, !tbaa !2428
  %5779 = icmp ult i32 %5777, %5771
  %5780 = icmp ult i32 %5777, %5776
  %5781 = or i1 %5779, %5780
  %5782 = zext i1 %5781 to i8
  store i8 %5782, i8* %16, align 1, !tbaa !2432
  %5783 = and i32 %5777, 255
  %5784 = tail call i32 @llvm.ctpop.i32(i32 %5783) #12
  %5785 = trunc i32 %5784 to i8
  %5786 = and i8 %5785, 1
  %5787 = xor i8 %5786, 1
  store i8 %5787, i8* %23, align 1, !tbaa !2446
  %5788 = xor i32 %5776, %5771
  %5789 = xor i32 %5788, %5777
  %5790 = lshr i32 %5789, 4
  %5791 = trunc i32 %5790 to i8
  %5792 = and i8 %5791, 1
  store i8 %5792, i8* %29, align 1, !tbaa !2447
  %5793 = icmp eq i32 %5777, 0
  %5794 = zext i1 %5793 to i8
  store i8 %5794, i8* %32, align 1, !tbaa !2448
  %5795 = lshr i32 %5777, 31
  %5796 = trunc i32 %5795 to i8
  store i8 %5796, i8* %35, align 1, !tbaa !2449
  %5797 = lshr i32 %5771, 31
  %5798 = lshr i32 %5776, 31
  %5799 = xor i32 %5795, %5797
  %5800 = xor i32 %5795, %5798
  %5801 = add nuw nsw i32 %5799, %5800
  %5802 = icmp eq i32 %5801, 2
  %5803 = zext i1 %5802 to i8
  store i8 %5803, i8* %41, align 1, !tbaa !2450
  %5804 = add i64 %5746, 29
  store i64 %5804, i64* %PC, align 8
  store i32 %5777, i32* %5775, align 4
  %.pre246 = load i64, i64* %PC, align 8
  %.pre247 = load i64, i64* %RBP, align 8
  br label %block_401661

block_400c15:                                     ; preds = %block_400c0f, %block_400c52
  %5805 = phi i64 [ %.pre188, %block_400c0f ], [ %5446, %block_400c52 ]
  %5806 = phi i64 [ %.pre187, %block_400c0f ], [ %5428, %block_400c52 ]
  %5807 = add i64 %5806, -8
  %5808 = add i64 %5805, 3
  store i64 %5808, i64* %PC, align 8
  %5809 = inttoptr i64 %5807 to i32*
  %5810 = load i32, i32* %5809, align 4
  %5811 = add i32 %5810, -1
  %5812 = zext i32 %5811 to i64
  store i64 %5812, i64* %RAX, align 8, !tbaa !2428
  %5813 = icmp ne i32 %5810, 0
  %5814 = zext i1 %5813 to i8
  store i8 %5814, i8* %16, align 1, !tbaa !2432
  %5815 = and i32 %5811, 255
  %5816 = tail call i32 @llvm.ctpop.i32(i32 %5815) #12
  %5817 = trunc i32 %5816 to i8
  %5818 = and i8 %5817, 1
  %5819 = xor i8 %5818, 1
  store i8 %5819, i8* %23, align 1, !tbaa !2446
  %5820 = xor i32 %5810, 16
  %5821 = xor i32 %5820, %5811
  %5822 = lshr i32 %5821, 4
  %5823 = trunc i32 %5822 to i8
  %5824 = and i8 %5823, 1
  store i8 %5824, i8* %29, align 1, !tbaa !2447
  %5825 = icmp eq i32 %5811, 0
  %5826 = zext i1 %5825 to i8
  store i8 %5826, i8* %32, align 1, !tbaa !2448
  %5827 = lshr i32 %5811, 31
  %5828 = trunc i32 %5827 to i8
  store i8 %5828, i8* %35, align 1, !tbaa !2449
  %5829 = lshr i32 %5810, 31
  %5830 = xor i32 %5827, %5829
  %5831 = xor i32 %5827, 1
  %5832 = add nuw nsw i32 %5830, %5831
  %5833 = icmp eq i32 %5832, 2
  %5834 = zext i1 %5833 to i8
  store i8 %5834, i8* %41, align 1, !tbaa !2450
  %5835 = add i64 %5805, 9
  store i64 %5835, i64* %PC, align 8
  store i32 %5811, i32* %5809, align 4
  %5836 = load i64, i64* %RBP, align 8
  %5837 = add i64 %5836, -8
  %5838 = load i64, i64* %PC, align 8
  %5839 = add i64 %5838, 4
  store i64 %5839, i64* %PC, align 8
  %5840 = inttoptr i64 %5837 to i32*
  %5841 = load i32, i32* %5840, align 4
  %5842 = sext i32 %5841 to i64
  store i64 %5842, i64* %RCX, align 8, !tbaa !2428
  %5843 = shl nsw i64 %5842, 2
  %5844 = add i64 %5836, -1248
  %5845 = add i64 %5844, %5843
  %5846 = add i64 %5838, 12
  store i64 %5846, i64* %PC, align 8
  %5847 = inttoptr i64 %5845 to i32*
  %5848 = load i32, i32* %5847, align 4
  %5849 = add i32 %5848, 1
  %5850 = icmp ne i32 %5848, -1
  %5851 = zext i1 %5850 to i8
  store i8 %5851, i8* %16, align 1, !tbaa !2432
  %5852 = and i32 %5849, 255
  %5853 = tail call i32 @llvm.ctpop.i32(i32 %5852) #12
  %5854 = trunc i32 %5853 to i8
  %5855 = and i8 %5854, 1
  %5856 = xor i8 %5855, 1
  store i8 %5856, i8* %23, align 1, !tbaa !2446
  %5857 = xor i32 %5848, 16
  %5858 = xor i32 %5857, %5849
  %5859 = lshr i32 %5858, 4
  %5860 = trunc i32 %5859 to i8
  %5861 = and i8 %5860, 1
  store i8 %5861, i8* %29, align 1, !tbaa !2447
  %5862 = icmp eq i32 %5849, 0
  %5863 = zext i1 %5862 to i8
  store i8 %5863, i8* %32, align 1, !tbaa !2448
  %5864 = lshr i32 %5849, 31
  %5865 = trunc i32 %5864 to i8
  store i8 %5865, i8* %35, align 1, !tbaa !2449
  %5866 = lshr i32 %5848, 31
  %5867 = xor i32 %5866, 1
  %5868 = xor i32 %5864, %5866
  %5869 = add nuw nsw i32 %5868, %5867
  %5870 = icmp eq i32 %5869, 2
  %5871 = zext i1 %5870 to i8
  store i8 %5871, i8* %41, align 1, !tbaa !2450
  %.v285 = select i1 %5862, i64 52, i64 18
  %5872 = add i64 %5838, %.v285
  store i64 %5872, i64* %PC, align 8, !tbaa !2428
  br i1 %5862, label %block_400c52, label %block_400c30

block_401014:                                     ; preds = %block_400ffb
  %5873 = load i64, i64* %RBP, align 8
  %5874 = add i64 %5873, -12
  %5875 = add i64 %3484, 3
  store i64 %5875, i64* %PC, align 8
  %5876 = inttoptr i64 %5874 to i32*
  %5877 = load i32, i32* %5876, align 4
  %5878 = add i32 %5877, 1
  %5879 = zext i32 %5878 to i64
  store i64 %5879, i64* %RAX, align 8, !tbaa !2428
  %5880 = icmp eq i32 %5877, -1
  %5881 = icmp eq i32 %5878, 0
  %5882 = or i1 %5880, %5881
  %5883 = zext i1 %5882 to i8
  store i8 %5883, i8* %16, align 1, !tbaa !2432
  %5884 = and i32 %5878, 255
  %5885 = tail call i32 @llvm.ctpop.i32(i32 %5884) #12
  %5886 = trunc i32 %5885 to i8
  %5887 = and i8 %5886, 1
  %5888 = xor i8 %5887, 1
  store i8 %5888, i8* %23, align 1, !tbaa !2446
  %5889 = xor i32 %5878, %5877
  %5890 = lshr i32 %5889, 4
  %5891 = trunc i32 %5890 to i8
  %5892 = and i8 %5891, 1
  store i8 %5892, i8* %29, align 1, !tbaa !2447
  %5893 = zext i1 %5881 to i8
  store i8 %5893, i8* %32, align 1, !tbaa !2448
  %5894 = lshr i32 %5878, 31
  %5895 = trunc i32 %5894 to i8
  store i8 %5895, i8* %35, align 1, !tbaa !2449
  %5896 = lshr i32 %5877, 31
  %5897 = xor i32 %5894, %5896
  %5898 = add nuw nsw i32 %5897, %5894
  %5899 = icmp eq i32 %5898, 2
  %5900 = zext i1 %5899 to i8
  store i8 %5900, i8* %41, align 1, !tbaa !2450
  %5901 = sext i32 %5878 to i64
  store i64 %5901, i64* %RCX, align 8, !tbaa !2428
  %5902 = shl nsw i64 %5901, 2
  %5903 = add nsw i64 %5902, -1328
  %5904 = add i64 %5903, %5873
  %5905 = add i64 %3484, 17
  store i64 %5905, i64* %PC, align 8
  %5906 = inttoptr i64 %5904 to i32*
  %5907 = load i32, i32* %5906, align 4
  %5908 = add i32 %5907, -8
  %5909 = icmp ult i32 %5907, 8
  %5910 = zext i1 %5909 to i8
  store i8 %5910, i8* %16, align 1, !tbaa !2432
  %5911 = and i32 %5908, 255
  %5912 = tail call i32 @llvm.ctpop.i32(i32 %5911) #12
  %5913 = trunc i32 %5912 to i8
  %5914 = and i8 %5913, 1
  %5915 = xor i8 %5914, 1
  store i8 %5915, i8* %23, align 1, !tbaa !2446
  %5916 = xor i32 %5908, %5907
  %5917 = lshr i32 %5916, 4
  %5918 = trunc i32 %5917 to i8
  %5919 = and i8 %5918, 1
  store i8 %5919, i8* %29, align 1, !tbaa !2447
  %5920 = icmp eq i32 %5908, 0
  %5921 = zext i1 %5920 to i8
  store i8 %5921, i8* %32, align 1, !tbaa !2448
  %5922 = lshr i32 %5908, 31
  %5923 = trunc i32 %5922 to i8
  store i8 %5923, i8* %35, align 1, !tbaa !2449
  %5924 = lshr i32 %5907, 31
  %5925 = xor i32 %5922, %5924
  %5926 = add nuw nsw i32 %5925, %5924
  %5927 = icmp eq i32 %5926, 2
  %5928 = zext i1 %5927 to i8
  store i8 %5928, i8* %41, align 1, !tbaa !2450
  %5929 = icmp ne i8 %5923, 0
  %5930 = xor i1 %5929, %5927
  %5931 = or i1 %5920, %5930
  %5932 = zext i1 %5931 to i8
  store i8 %5932, i8* %DL, align 1, !tbaa !2451
  %5933 = add i64 %5873, -2709
  %5934 = add i64 %3484, 26
  store i64 %5934, i64* %PC, align 8
  %5935 = inttoptr i64 %5933 to i8*
  store i8 %5932, i8* %5935, align 1
  %.pre207 = load i64, i64* %PC, align 8
  br label %block_40102e

block_400eef:                                     ; preds = %block_400eae, %block_400edb
  %5936 = phi i64 [ %3037, %block_400eae ], [ %.pre198, %block_400edb ]
  %5937 = load i64, i64* %RBP, align 8
  %5938 = add i64 %5937, -4
  %5939 = add i64 %5936, 7
  store i64 %5939, i64* %PC, align 8
  %5940 = inttoptr i64 %5938 to i32*
  store i32 1, i32* %5940, align 4
  %.pre199 = load i64, i64* %PC, align 8
  br label %block_400ef6

block_401811:                                     ; preds = %block_401804
  %5941 = add i64 %6234, 4
  store i64 %5941, i64* %PC, align 8
  %5942 = load i32, i32* %6208, align 4
  %5943 = sext i32 %5942 to i64
  store i64 %5943, i64* %RAX, align 8, !tbaa !2428
  %5944 = shl nsw i64 %5943, 2
  %5945 = add i64 %5944, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %5946 = add i64 %6234, 12
  store i64 %5946, i64* %PC, align 8
  %5947 = inttoptr i64 %5945 to i32*
  %5948 = load i32, i32* %5947, align 4
  %5949 = add i32 %5948, 1
  %5950 = icmp ne i32 %5948, -1
  %5951 = zext i1 %5950 to i8
  store i8 %5951, i8* %16, align 1, !tbaa !2432
  %5952 = and i32 %5949, 255
  %5953 = tail call i32 @llvm.ctpop.i32(i32 %5952) #12
  %5954 = trunc i32 %5953 to i8
  %5955 = and i8 %5954, 1
  %5956 = xor i8 %5955, 1
  store i8 %5956, i8* %23, align 1, !tbaa !2446
  %5957 = xor i32 %5948, 16
  %5958 = xor i32 %5957, %5949
  %5959 = lshr i32 %5958, 4
  %5960 = trunc i32 %5959 to i8
  %5961 = and i8 %5960, 1
  store i8 %5961, i8* %29, align 1, !tbaa !2447
  %5962 = icmp eq i32 %5949, 0
  %5963 = zext i1 %5962 to i8
  store i8 %5963, i8* %32, align 1, !tbaa !2448
  %5964 = lshr i32 %5949, 31
  %5965 = trunc i32 %5964 to i8
  store i8 %5965, i8* %35, align 1, !tbaa !2449
  %5966 = lshr i32 %5948, 31
  %5967 = xor i32 %5966, 1
  %5968 = xor i32 %5964, %5966
  %5969 = add nuw nsw i32 %5968, %5967
  %5970 = icmp eq i32 %5969, 2
  %5971 = zext i1 %5970 to i8
  store i8 %5971, i8* %41, align 1, !tbaa !2450
  %.v278 = select i1 %5962, i64 53, i64 18
  %5972 = add i64 %6234, %.v278
  %5973 = add i64 %5972, 4
  store i64 %5973, i64* %PC, align 8
  %5974 = load i32, i32* %6208, align 4
  %5975 = sext i32 %5974 to i64
  store i64 %5975, i64* %RAX, align 8, !tbaa !2428
  %5976 = shl nsw i64 %5975, 2
  %5977 = add i64 %5976, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  br i1 %5962, label %block_401846, label %block_401823

block_400a1a:                                     ; preds = %block_400a10, %block_4009fe
  %5978 = phi i64 [ %.pre175, %block_400a10 ], [ %5663, %block_4009fe ]
  %5979 = phi i64 [ %.pre174, %block_400a10 ], [ %1025, %block_4009fe ]
  %5980 = add i64 %5979, -4
  %5981 = add i64 %5978, 4
  store i64 %5981, i64* %PC, align 8
  %5982 = inttoptr i64 %5980 to i32*
  %5983 = load i32, i32* %5982, align 4
  %5984 = sext i32 %5983 to i64
  store i64 %5984, i64* %RAX, align 8, !tbaa !2428
  %5985 = shl nsw i64 %5984, 2
  %5986 = add i64 %5979, -1488
  %5987 = add i64 %5986, %5985
  %5988 = add i64 %5978, 12
  store i64 %5988, i64* %PC, align 8
  %5989 = inttoptr i64 %5987 to i32*
  %5990 = load i32, i32* %5989, align 4
  %5991 = sext i32 %5990 to i64
  store i64 %5991, i64* %RAX, align 8, !tbaa !2428
  %5992 = shl nsw i64 %5991, 2
  %5993 = add i64 %5992, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %5994 = add i64 %5978, 19
  store i64 %5994, i64* %PC, align 8
  %5995 = inttoptr i64 %5993 to i32*
  %5996 = load i32, i32* %5995, align 4
  %5997 = zext i32 %5996 to i64
  store i64 %5997, i64* %RCX, align 8, !tbaa !2428
  %5998 = add i64 %5978, 23
  store i64 %5998, i64* %PC, align 8
  %5999 = load i32, i32* %5982, align 4
  %6000 = sext i32 %5999 to i64
  store i64 %6000, i64* %RAX, align 8, !tbaa !2428
  %6001 = shl nsw i64 %6000, 2
  %6002 = add i64 %5986, %6001
  %6003 = add i64 %5978, 30
  store i64 %6003, i64* %PC, align 8
  %6004 = inttoptr i64 %6002 to i32*
  store i32 %5996, i32* %6004, align 4
  %6005 = load i64, i64* %RBP, align 8
  %6006 = add i64 %6005, -4
  %6007 = load i64, i64* %PC, align 8
  %6008 = add i64 %6007, 3
  store i64 %6008, i64* %PC, align 8
  %6009 = inttoptr i64 %6006 to i32*
  %6010 = load i32, i32* %6009, align 4
  %6011 = add i32 %6010, 1
  %6012 = zext i32 %6011 to i64
  store i64 %6012, i64* %RAX, align 8, !tbaa !2428
  %6013 = icmp eq i32 %6010, -1
  %6014 = icmp eq i32 %6011, 0
  %6015 = or i1 %6013, %6014
  %6016 = zext i1 %6015 to i8
  store i8 %6016, i8* %16, align 1, !tbaa !2432
  %6017 = and i32 %6011, 255
  %6018 = tail call i32 @llvm.ctpop.i32(i32 %6017) #12
  %6019 = trunc i32 %6018 to i8
  %6020 = and i8 %6019, 1
  %6021 = xor i8 %6020, 1
  store i8 %6021, i8* %23, align 1, !tbaa !2446
  %6022 = xor i32 %6011, %6010
  %6023 = lshr i32 %6022, 4
  %6024 = trunc i32 %6023 to i8
  %6025 = and i8 %6024, 1
  store i8 %6025, i8* %29, align 1, !tbaa !2447
  %6026 = zext i1 %6014 to i8
  store i8 %6026, i8* %32, align 1, !tbaa !2448
  %6027 = lshr i32 %6011, 31
  %6028 = trunc i32 %6027 to i8
  store i8 %6028, i8* %35, align 1, !tbaa !2449
  %6029 = lshr i32 %6010, 31
  %6030 = xor i32 %6027, %6029
  %6031 = add nuw nsw i32 %6030, %6027
  %6032 = icmp eq i32 %6031, 2
  %6033 = zext i1 %6032 to i8
  store i8 %6033, i8* %41, align 1, !tbaa !2450
  %6034 = add i64 %6007, 9
  store i64 %6034, i64* %PC, align 8
  store i32 %6011, i32* %6009, align 4
  %6035 = load i64, i64* %PC, align 8
  %6036 = add i64 %6035, -219
  store i64 %6036, i64* %PC, align 8, !tbaa !2428
  br label %block_400966

block_400c0f:                                     ; preds = %block_400bf2
  %6037 = add i64 %469, 3
  store i64 %6037, i64* %PC, align 8
  %6038 = load i32, i32* %456, align 4
  %6039 = zext i32 %6038 to i64
  store i64 %6039, i64* %RAX, align 8, !tbaa !2428
  %6040 = add i64 %1950, -8
  %6041 = add i64 %469, 6
  store i64 %6041, i64* %PC, align 8
  %6042 = inttoptr i64 %6040 to i32*
  store i32 %6038, i32* %6042, align 4
  %.pre187 = load i64, i64* %RBP, align 8
  %.pre188 = load i64, i64* %PC, align 8
  br label %block_400c15

block_40160c:                                     ; preds = %block_4015f8
  %6043 = add i64 %2261, 3
  store i64 %6043, i64* %PC, align 8
  %6044 = load i32, i32* %2221, align 4
  %6045 = zext i32 %6044 to i64
  store i64 %6045, i64* %RAX, align 8, !tbaa !2428
  %6046 = add i64 %2218, -4
  %6047 = add i64 %2261, 6
  store i64 %6047, i64* %PC, align 8
  %6048 = inttoptr i64 %6046 to i32*
  %6049 = load i32, i32* %6048, align 4
  %6050 = sub i32 %6044, %6049
  %6051 = icmp ult i32 %6044, %6049
  %6052 = zext i1 %6051 to i8
  store i8 %6052, i8* %16, align 1, !tbaa !2432
  %6053 = and i32 %6050, 255
  %6054 = tail call i32 @llvm.ctpop.i32(i32 %6053) #12
  %6055 = trunc i32 %6054 to i8
  %6056 = and i8 %6055, 1
  %6057 = xor i8 %6056, 1
  store i8 %6057, i8* %23, align 1, !tbaa !2446
  %6058 = xor i32 %6049, %6044
  %6059 = xor i32 %6058, %6050
  %6060 = lshr i32 %6059, 4
  %6061 = trunc i32 %6060 to i8
  %6062 = and i8 %6061, 1
  store i8 %6062, i8* %29, align 1, !tbaa !2447
  %6063 = icmp eq i32 %6050, 0
  %6064 = zext i1 %6063 to i8
  store i8 %6064, i8* %32, align 1, !tbaa !2448
  %6065 = lshr i32 %6050, 31
  %6066 = trunc i32 %6065 to i8
  store i8 %6066, i8* %35, align 1, !tbaa !2449
  %6067 = lshr i32 %6044, 31
  %6068 = lshr i32 %6049, 31
  %6069 = xor i32 %6068, %6067
  %6070 = xor i32 %6065, %6067
  %6071 = add nuw nsw i32 %6070, %6069
  %6072 = icmp eq i32 %6071, 2
  %6073 = zext i1 %6072 to i8
  store i8 %6073, i8* %41, align 1, !tbaa !2450
  %.v301 = select i1 %6063, i64 85, i64 12
  %6074 = add i64 %2261, %.v301
  store i64 %6074, i64* %PC, align 8, !tbaa !2428
  br i1 %6063, label %block_401661, label %block_401618

block_40158f:                                     ; preds = %block_401527, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4
  %6075 = phi i64 [ %4516, %block_401527 ], [ %.pre236, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4 ]
  %6076 = phi i64 [ %6200, %block_401527 ], [ %.pre235, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4 ]
  %MEMORY.51 = phi %struct.Memory* [ %MEMORY.34, %block_401527 ], [ %1581, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4 ]
  %6077 = add i64 %6075, -8
  %6078 = add i64 %6076, 8
  store i64 %6078, i64* %PC, align 8
  %6079 = inttoptr i64 %6077 to i32*
  %6080 = load i32, i32* %6079, align 4
  %6081 = add i32 %6080, 1
  %6082 = zext i32 %6081 to i64
  store i64 %6082, i64* %RAX, align 8, !tbaa !2428
  %6083 = icmp eq i32 %6080, -1
  %6084 = icmp eq i32 %6081, 0
  %6085 = or i1 %6083, %6084
  %6086 = zext i1 %6085 to i8
  store i8 %6086, i8* %16, align 1, !tbaa !2432
  %6087 = and i32 %6081, 255
  %6088 = tail call i32 @llvm.ctpop.i32(i32 %6087) #12
  %6089 = trunc i32 %6088 to i8
  %6090 = and i8 %6089, 1
  %6091 = xor i8 %6090, 1
  store i8 %6091, i8* %23, align 1, !tbaa !2446
  %6092 = xor i32 %6081, %6080
  %6093 = lshr i32 %6092, 4
  %6094 = trunc i32 %6093 to i8
  %6095 = and i8 %6094, 1
  store i8 %6095, i8* %29, align 1, !tbaa !2447
  %6096 = zext i1 %6084 to i8
  store i8 %6096, i8* %32, align 1, !tbaa !2448
  %6097 = lshr i32 %6081, 31
  %6098 = trunc i32 %6097 to i8
  store i8 %6098, i8* %35, align 1, !tbaa !2449
  %6099 = lshr i32 %6080, 31
  %6100 = xor i32 %6097, %6099
  %6101 = add nuw nsw i32 %6100, %6097
  %6102 = icmp eq i32 %6101, 2
  %6103 = zext i1 %6102 to i8
  store i8 %6103, i8* %41, align 1, !tbaa !2450
  %6104 = add i64 %6076, 14
  store i64 %6104, i64* %PC, align 8
  store i32 %6081, i32* %6079, align 4
  %6105 = load i64, i64* %PC, align 8
  %6106 = add i64 %6105, -138
  store i64 %6106, i64* %PC, align 8, !tbaa !2428
  br label %block_401513

block_401332:                                     ; preds = %block_401312
  %6107 = add i64 %.pre222, -1168
  store i64 %6107, i64* %RAX, align 8, !tbaa !2428
  %6108 = add i64 %.pre222, -12
  %6109 = add i64 %4657, 11
  store i64 %6109, i64* %PC, align 8
  %6110 = inttoptr i64 %6108 to i32*
  %6111 = load i32, i32* %6110, align 4
  %6112 = sext i32 %6111 to i64
  %6113 = shl nsw i64 %6112, 6
  store i64 %6113, i64* %RCX, align 8, !tbaa !2428
  %6114 = add i64 %6113, %6107
  store i64 %6114, i64* %RAX, align 8, !tbaa !2428
  %6115 = icmp ult i64 %6114, %6107
  %6116 = icmp ult i64 %6114, %6113
  %6117 = or i1 %6115, %6116
  %6118 = zext i1 %6117 to i8
  store i8 %6118, i8* %16, align 1, !tbaa !2432
  %6119 = trunc i64 %6114 to i32
  %6120 = and i32 %6119, 255
  %6121 = tail call i32 @llvm.ctpop.i32(i32 %6120) #12
  %6122 = trunc i32 %6121 to i8
  %6123 = and i8 %6122, 1
  %6124 = xor i8 %6123, 1
  store i8 %6124, i8* %23, align 1, !tbaa !2446
  %6125 = xor i64 %6107, %6114
  %6126 = lshr i64 %6125, 4
  %6127 = trunc i64 %6126 to i8
  %6128 = and i8 %6127, 1
  store i8 %6128, i8* %29, align 1, !tbaa !2447
  %6129 = icmp eq i64 %6114, 0
  %6130 = zext i1 %6129 to i8
  store i8 %6130, i8* %32, align 1, !tbaa !2448
  %6131 = lshr i64 %6114, 63
  %6132 = trunc i64 %6131 to i8
  store i8 %6132, i8* %35, align 1, !tbaa !2449
  %6133 = lshr i64 %6107, 63
  %6134 = lshr i64 %6112, 57
  %6135 = and i64 %6134, 1
  %6136 = xor i64 %6131, %6133
  %6137 = xor i64 %6131, %6135
  %6138 = add nuw nsw i64 %6136, %6137
  %6139 = icmp eq i64 %6138, 2
  %6140 = zext i1 %6139 to i8
  store i8 %6140, i8* %41, align 1, !tbaa !2450
  %6141 = add i64 %.pre222, -4
  %6142 = add i64 %4657, 22
  store i64 %6142, i64* %PC, align 8
  %6143 = inttoptr i64 %6141 to i32*
  %6144 = load i32, i32* %6143, align 4
  %6145 = sext i32 %6144 to i64
  store i64 %6145, i64* %RCX, align 8, !tbaa !2428
  %6146 = shl nsw i64 %6145, 2
  %6147 = add i64 %6146, %6114
  %6148 = add i64 %4657, 26
  store i64 %6148, i64* %PC, align 8
  %6149 = inttoptr i64 %6147 to i32*
  %6150 = load i32, i32* %6149, align 4
  %6151 = sext i32 %6150 to i64
  store i64 %6151, i64* %RAX, align 8, !tbaa !2428
  %6152 = shl nsw i64 %6151, 2
  %6153 = add i64 %6152, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %6154 = add i64 %4657, 33
  store i64 %6154, i64* %PC, align 8
  %6155 = inttoptr i64 %6153 to i32*
  %6156 = load i32, i32* %6155, align 4
  %6157 = zext i32 %6156 to i64
  store i64 %6157, i64* %RDX, align 8, !tbaa !2428
  %6158 = add i64 %4657, 37
  store i64 %6158, i64* %PC, align 8
  %6159 = load i32, i32* %6143, align 4
  %6160 = sext i32 %6159 to i64
  store i64 %6160, i64* %RAX, align 8, !tbaa !2428
  %6161 = shl nsw i64 %6160, 2
  %6162 = add i64 %.pre222, -1616
  %6163 = add i64 %6162, %6161
  %6164 = add i64 %4657, 44
  store i64 %6164, i64* %PC, align 8
  %6165 = inttoptr i64 %6163 to i32*
  store i32 %6156, i32* %6165, align 4
  %6166 = load i64, i64* %PC, align 8
  %6167 = add i64 %6166, 20
  store i64 %6167, i64* %PC, align 8, !tbaa !2428
  br label %block_401377

block_401527:                                     ; preds = %block_401513
  %6168 = add i64 %4559, 4
  store i64 %6168, i64* %PC, align 8
  %6169 = load i32, i32* %4519, align 4
  %6170 = sext i32 %6169 to i64
  store i64 %6170, i64* %RAX, align 8, !tbaa !2428
  %6171 = shl nsw i64 %6170, 2
  %6172 = add i64 %4516, -1616
  %6173 = add i64 %6172, %6171
  %6174 = add i64 %4559, 12
  store i64 %6174, i64* %PC, align 8
  %6175 = inttoptr i64 %6173 to i32*
  %6176 = load i32, i32* %6175, align 4
  %6177 = add i32 %6176, 1
  %6178 = icmp ne i32 %6176, -1
  %6179 = zext i1 %6178 to i8
  store i8 %6179, i8* %16, align 1, !tbaa !2432
  %6180 = and i32 %6177, 255
  %6181 = tail call i32 @llvm.ctpop.i32(i32 %6180) #12
  %6182 = trunc i32 %6181 to i8
  %6183 = and i8 %6182, 1
  %6184 = xor i8 %6183, 1
  store i8 %6184, i8* %23, align 1, !tbaa !2446
  %6185 = xor i32 %6176, 16
  %6186 = xor i32 %6185, %6177
  %6187 = lshr i32 %6186, 4
  %6188 = trunc i32 %6187 to i8
  %6189 = and i8 %6188, 1
  store i8 %6189, i8* %29, align 1, !tbaa !2447
  %6190 = icmp eq i32 %6177, 0
  %6191 = zext i1 %6190 to i8
  store i8 %6191, i8* %32, align 1, !tbaa !2448
  %6192 = lshr i32 %6177, 31
  %6193 = trunc i32 %6192 to i8
  store i8 %6193, i8* %35, align 1, !tbaa !2449
  %6194 = lshr i32 %6176, 31
  %6195 = xor i32 %6194, 1
  %6196 = xor i32 %6192, %6194
  %6197 = add nuw nsw i32 %6196, %6195
  %6198 = icmp eq i32 %6197, 2
  %6199 = zext i1 %6198 to i8
  store i8 %6199, i8* %41, align 1, !tbaa !2450
  %.v302 = select i1 %6190, i64 104, i64 18
  %6200 = add i64 %4559, %.v302
  store i64 %6200, i64* %PC, align 8, !tbaa !2428
  br i1 %6190, label %block_40158f, label %block_401539

block_400a10:                                     ; preds = %block_4009fe
  %6201 = add i64 %1025, -1496
  %6202 = add i64 %5663, 10
  store i64 %6202, i64* %PC, align 8
  %6203 = inttoptr i64 %6201 to i32*
  store i32 1, i32* %6203, align 4
  %.pre174 = load i64, i64* %RBP, align 8
  %.pre175 = load i64, i64* %PC, align 8
  br label %block_400a1a

block_401804:                                     ; preds = %block_401855, %block_4017fd
  %6204 = phi i64 [ %5051, %block_401855 ], [ %.pre255, %block_4017fd ]
  %6205 = load i64, i64* %RBP, align 8
  %6206 = add i64 %6205, -4
  %6207 = add i64 %6204, 7
  store i64 %6207, i64* %PC, align 8
  %6208 = inttoptr i64 %6206 to i32*
  %6209 = load i32, i32* %6208, align 4
  %6210 = add i32 %6209, -255
  %6211 = icmp ult i32 %6209, 255
  %6212 = zext i1 %6211 to i8
  store i8 %6212, i8* %16, align 1, !tbaa !2432
  %6213 = and i32 %6210, 255
  %6214 = tail call i32 @llvm.ctpop.i32(i32 %6213) #12
  %6215 = trunc i32 %6214 to i8
  %6216 = and i8 %6215, 1
  %6217 = xor i8 %6216, 1
  store i8 %6217, i8* %23, align 1, !tbaa !2446
  %6218 = xor i32 %6209, 16
  %6219 = xor i32 %6218, %6210
  %6220 = lshr i32 %6219, 4
  %6221 = trunc i32 %6220 to i8
  %6222 = and i8 %6221, 1
  store i8 %6222, i8* %29, align 1, !tbaa !2447
  %6223 = icmp eq i32 %6210, 0
  %6224 = zext i1 %6223 to i8
  store i8 %6224, i8* %32, align 1, !tbaa !2448
  %6225 = lshr i32 %6210, 31
  %6226 = trunc i32 %6225 to i8
  store i8 %6226, i8* %35, align 1, !tbaa !2449
  %6227 = lshr i32 %6209, 31
  %6228 = xor i32 %6225, %6227
  %6229 = add nuw nsw i32 %6228, %6227
  %6230 = icmp eq i32 %6229, 2
  %6231 = zext i1 %6230 to i8
  store i8 %6231, i8* %41, align 1, !tbaa !2450
  %6232 = icmp ne i8 %6226, 0
  %6233 = xor i1 %6232, %6230
  %.v279 = select i1 %6233, i64 13, i64 100
  %6234 = add i64 %6204, %.v279
  store i64 %6234, i64* %PC, align 8, !tbaa !2428
  br i1 %6233, label %block_401811, label %block_40186d.loopexit

block_400ccb:                                     ; preds = %block_400caa, %block_400c8a
  %6235 = phi i64 [ %.pre191, %block_400caa ], [ %3413, %block_400c8a ]
  %6236 = load i64, i64* %RBP, align 8
  %6237 = add i64 %6236, -4
  %6238 = add i64 %6235, 7
  store i64 %6238, i64* %PC, align 8
  %6239 = inttoptr i64 %6237 to i32*
  store i32 0, i32* %6239, align 4
  %.pre192 = load i64, i64* %PC, align 8
  br label %block_400cd2

block_401203:                                     ; preds = %block_401114
  %6240 = add i64 %3287, -1492
  %6241 = add i64 %3316, 6
  store i64 %6241, i64* %PC, align 8
  %6242 = inttoptr i64 %6240 to i32*
  %6243 = load i32, i32* %6242, align 4
  %6244 = zext i32 %6243 to i64
  store i64 %6244, i64* %RAX, align 8, !tbaa !2428
  %6245 = add i64 %3287, -12
  %6246 = add i64 %3316, 10
  store i64 %6246, i64* %PC, align 8
  %6247 = inttoptr i64 %6245 to i32*
  %6248 = load i32, i32* %6247, align 4
  %6249 = sext i32 %6248 to i64
  store i64 %6249, i64* %RCX, align 8, !tbaa !2428
  %6250 = shl nsw i64 %6249, 2
  %6251 = add nsw i64 %6250, -1328
  %6252 = add i64 %6251, %3287
  %6253 = add i64 %3316, 17
  store i64 %6253, i64* %PC, align 8
  %6254 = inttoptr i64 %6252 to i32*
  %6255 = load i32, i32* %6254, align 4
  %6256 = sub i32 %6243, %6255
  %6257 = icmp ult i32 %6243, %6255
  %6258 = zext i1 %6257 to i8
  store i8 %6258, i8* %16, align 1, !tbaa !2432
  %6259 = and i32 %6256, 255
  %6260 = tail call i32 @llvm.ctpop.i32(i32 %6259) #12
  %6261 = trunc i32 %6260 to i8
  %6262 = and i8 %6261, 1
  %6263 = xor i8 %6262, 1
  store i8 %6263, i8* %23, align 1, !tbaa !2446
  %6264 = xor i32 %6255, %6243
  %6265 = xor i32 %6264, %6256
  %6266 = lshr i32 %6265, 4
  %6267 = trunc i32 %6266 to i8
  %6268 = and i8 %6267, 1
  store i8 %6268, i8* %29, align 1, !tbaa !2447
  %6269 = icmp eq i32 %6256, 0
  %6270 = zext i1 %6269 to i8
  store i8 %6270, i8* %32, align 1, !tbaa !2448
  %6271 = lshr i32 %6256, 31
  %6272 = trunc i32 %6271 to i8
  store i8 %6272, i8* %35, align 1, !tbaa !2449
  %6273 = lshr i32 %6243, 31
  %6274 = lshr i32 %6255, 31
  %6275 = xor i32 %6274, %6273
  %6276 = xor i32 %6271, %6273
  %6277 = add nuw nsw i32 %6276, %6275
  %6278 = icmp eq i32 %6277, 2
  %6279 = zext i1 %6278 to i8
  store i8 %6279, i8* %41, align 1, !tbaa !2450
  %.v263 = select i1 %6269, i64 23, i64 1296
  %6280 = add i64 %3316, %.v263
  %6281 = add i64 %6280, 7
  store i64 %6281, i64* %PC, align 8
  br i1 %6269, label %block_40121a, label %block_401713

block_4014f5:                                     ; preds = %block_4014e1
  %6282 = add i64 %4887, 4
  store i64 %6282, i64* %PC, align 8
  %6283 = load i32, i32* %4847, align 4
  %6284 = sext i32 %6283 to i64
  store i64 %6284, i64* %RAX, align 8, !tbaa !2428
  %6285 = shl nsw i64 %6284, 2
  %6286 = add i64 %4844, -1568
  %6287 = add i64 %6286, %6285
  %6288 = add i64 %4887, 12
  store i64 %6288, i64* %PC, align 8
  %6289 = inttoptr i64 %6287 to i32*
  %6290 = load i32, i32* %6289, align 4
  %6291 = sext i32 %6290 to i64
  store i64 %6291, i64* %RAX, align 8, !tbaa !2428
  %6292 = shl nsw i64 %6291, 2
  %6293 = add i64 %4844, -2640
  %6294 = add i64 %6293, %6292
  %6295 = add i64 %4887, 23
  store i64 %6295, i64* %PC, align 8
  %6296 = inttoptr i64 %6294 to i32*
  store i32 1, i32* %6296, align 4
  %6297 = load i64, i64* %RBP, align 8
  %6298 = add i64 %6297, -8
  %6299 = load i64, i64* %PC, align 8
  %6300 = add i64 %6299, 7
  store i64 %6300, i64* %PC, align 8
  %6301 = inttoptr i64 %6298 to i32*
  store i32 1, i32* %6301, align 4
  %.pre231 = load i64, i64* %PC, align 8
  br label %block_401513

block_401300:                                     ; preds = %block_4012bd, %block_4012ab
  %6302 = phi i64 [ %3075, %block_4012ab ], [ %2634, %block_4012bd ]
  %6303 = phi i64 [ %3040, %block_4012ab ], [ %2635, %block_4012bd ]
  %6304 = add i64 %6303, -4
  %6305 = add i64 %6302, 4
  store i64 %6305, i64* %PC, align 8
  %6306 = inttoptr i64 %6304 to i32*
  %6307 = load i32, i32* %6306, align 4
  %6308 = sext i32 %6307 to i64
  store i64 %6308, i64* %RAX, align 8, !tbaa !2428
  %6309 = shl nsw i64 %6308, 2
  %6310 = add i64 %6303, -1488
  %6311 = add i64 %6310, %6309
  %6312 = add i64 %6302, 12
  store i64 %6312, i64* %PC, align 8
  %6313 = inttoptr i64 %6311 to i32*
  %6314 = load i32, i32* %6313, align 4
  %6315 = add i32 %6314, 1
  %6316 = icmp ne i32 %6314, -1
  %6317 = zext i1 %6316 to i8
  store i8 %6317, i8* %16, align 1, !tbaa !2432
  %6318 = and i32 %6315, 255
  %6319 = tail call i32 @llvm.ctpop.i32(i32 %6318) #12
  %6320 = trunc i32 %6319 to i8
  %6321 = and i8 %6320, 1
  %6322 = xor i8 %6321, 1
  store i8 %6322, i8* %23, align 1, !tbaa !2446
  %6323 = xor i32 %6314, 16
  %6324 = xor i32 %6323, %6315
  %6325 = lshr i32 %6324, 4
  %6326 = trunc i32 %6325 to i8
  %6327 = and i8 %6326, 1
  store i8 %6327, i8* %29, align 1, !tbaa !2447
  %6328 = icmp eq i32 %6315, 0
  %6329 = zext i1 %6328 to i8
  store i8 %6329, i8* %32, align 1, !tbaa !2448
  %6330 = lshr i32 %6315, 31
  %6331 = trunc i32 %6330 to i8
  store i8 %6331, i8* %35, align 1, !tbaa !2449
  %6332 = lshr i32 %6314, 31
  %6333 = xor i32 %6332, 1
  %6334 = xor i32 %6330, %6332
  %6335 = add nuw nsw i32 %6334, %6333
  %6336 = icmp eq i32 %6335, 2
  %6337 = zext i1 %6336 to i8
  store i8 %6337, i8* %41, align 1, !tbaa !2450
  %.v310 = select i1 %6328, i64 18, i64 99
  %6338 = add i64 %6302, %.v310
  store i64 %6338, i64* %PC, align 8, !tbaa !2428
  br i1 %6328, label %block_401312, label %block_401363
}

; Function Attrs: noinline
define %struct.Memory* @sub_400510_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400510:
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
  %13 = tail call %struct.Memory* @sub_4004a0_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4003f0__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4003f0:
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
  store i8 %19, i8* %8, align 1, !tbaa !2448
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !2449
  store i8 0, i8* %10, align 1, !tbaa !2450
  store i8 0, i8* %7, align 1, !tbaa !2447
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2428
  br i1 %18, label %block_400402, label %block_400400

block_400400:                                     ; preds = %block_4003f0
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400402

block_400402:                                     ; preds = %block_400400, %block_4003f0
  %27 = phi i64 [ %22, %block_4003f0 ], [ %.pre1, %block_400400 ]
  %28 = phi i64 [ %4, %block_4003f0 ], [ %.pre, %block_400400 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4003f0 ], [ %26, %block_400400 ]
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4019b0_encode_rs(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4019b0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSI = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
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
  %14 = add i64 %10, -12
  %15 = add i64 %13, 10
  store i64 %15, i64* %PC, align 8
  %16 = inttoptr i64 %14 to i32*
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %PC, align 8
  br label %block_4019bb

block_401a3f:                                     ; preds = %block_401a2d
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %23 = add i64 %422, 8
  store i64 %23, i64* %PC, align 8
  %24 = load i32, i32* %478, align 4
  %25 = add i32 %24, -1
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RCX, align 8, !tbaa !2428
  %27 = icmp eq i32 %24, 0
  %28 = zext i1 %27 to i8
  store i8 %28, i8* %17, align 1, !tbaa !2432
  %29 = and i32 %25, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29) #12
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  store i8 %33, i8* %18, align 1, !tbaa !2446
  %34 = xor i32 %25, %24
  %35 = lshr i32 %34, 4
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  store i8 %37, i8* %19, align 1, !tbaa !2447
  %38 = icmp eq i32 %25, 0
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %20, align 1, !tbaa !2448
  %40 = lshr i32 %25, 31
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %21, align 1, !tbaa !2449
  %42 = lshr i32 %24, 31
  %43 = xor i32 %40, %42
  %44 = add nuw nsw i32 %43, %42
  %45 = icmp eq i32 %44, 2
  %46 = zext i1 %45 to i8
  store i8 %46, i8* %22, align 1, !tbaa !2450
  %47 = sext i32 %25 to i64
  store i64 %47, i64* %RDX, align 8, !tbaa !2428
  %48 = shl nsw i64 %47, 2
  %49 = add i64 %48, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %50 = add i64 %422, 21
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %49 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = zext i32 %52 to i64
  store i64 %53, i64* %RCX, align 8, !tbaa !2428
  %54 = add i64 %422, 25
  store i64 %54, i64* %PC, align 8
  %55 = load i32, i32* %478, align 4
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %RDX, align 8, !tbaa !2428
  %57 = shl nsw i64 %56, 2
  %58 = add i64 %57, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %59 = add i64 %422, 32
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %58 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = zext i32 %61 to i64
  store i64 %62, i64* %RSI, align 8, !tbaa !2428
  %63 = add i64 %475, -12
  %64 = add i64 %422, 35
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %63 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = add i32 %66, %61
  %68 = zext i32 %67 to i64
  store i64 %68, i64* %RSI, align 8, !tbaa !2428
  %69 = icmp ult i32 %67, %61
  %70 = icmp ult i32 %67, %66
  %71 = or i1 %69, %70
  %72 = zext i1 %71 to i8
  store i8 %72, i8* %17, align 1, !tbaa !2432
  %73 = and i32 %67, 255
  %74 = tail call i32 @llvm.ctpop.i32(i32 %73) #12
  %75 = trunc i32 %74 to i8
  %76 = and i8 %75, 1
  %77 = xor i8 %76, 1
  store i8 %77, i8* %18, align 1, !tbaa !2446
  %78 = xor i32 %66, %61
  %79 = xor i32 %78, %67
  %80 = lshr i32 %79, 4
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  store i8 %82, i8* %19, align 1, !tbaa !2447
  %83 = icmp eq i32 %67, 0
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %20, align 1, !tbaa !2448
  %85 = lshr i32 %67, 31
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %21, align 1, !tbaa !2449
  %87 = lshr i32 %61, 31
  %88 = lshr i32 %66, 31
  %89 = xor i32 %85, %87
  %90 = xor i32 %85, %88
  %91 = add nuw nsw i32 %89, %90
  %92 = icmp eq i32 %91, 2
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %22, align 1, !tbaa !2450
  %94 = load i64, i64* %RBP, align 8
  %95 = add i64 %94, -16
  %96 = load i32, i32* %EAX, align 4
  %97 = add i64 %422, 38
  store i64 %97, i64* %PC, align 8
  %98 = inttoptr i64 %95 to i32*
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %ESI, align 4
  %100 = zext i32 %99 to i64
  %101 = load i64, i64* %PC, align 8
  store i64 %100, i64* %RAX, align 8, !tbaa !2428
  %102 = sext i32 %99 to i64
  %103 = lshr i64 %102, 32
  store i64 %103, i64* %231, align 8, !tbaa !2428
  %104 = load i64, i64* %RBP, align 8
  %105 = add i64 %104, -16
  %106 = add i64 %101, 6
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %105 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = zext i32 %108 to i64
  store i64 %109, i64* %RSI, align 8, !tbaa !2428
  %110 = add i64 %101, 8
  store i64 %110, i64* %PC, align 8
  %111 = sext i32 %108 to i64
  %112 = shl nuw i64 %103, 32
  %113 = or i64 %112, %100
  %114 = sdiv i64 %113, %111
  %115 = shl i64 %114, 32
  %116 = ashr exact i64 %115, 32
  %117 = icmp eq i64 %114, %116
  br i1 %117, label %120, label %118

; <label>:118:                                    ; preds = %block_401a3f
  %119 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %110, %struct.Memory* %MEMORY.4) #13
  %.pre22 = load i32, i32* %EDX, align 4
  %.pre23 = load i64, i64* %PC, align 8
  %.pre24 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:120:                                    ; preds = %block_401a3f
  %121 = srem i64 %113, %111
  %122 = and i64 %114, 4294967295
  store i64 %122, i64* %RAX, align 8, !tbaa !2428
  %123 = and i64 %121, 4294967295
  store i64 %123, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 0, i8* %18, align 1, !tbaa !2446
  store i8 0, i8* %19, align 1, !tbaa !2447
  store i8 0, i8* %20, align 1, !tbaa !2448
  store i8 0, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  %124 = trunc i64 %121 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %120, %118
  %125 = phi i64 [ %.pre24, %118 ], [ %104, %120 ]
  %126 = phi i64 [ %.pre23, %118 ], [ %110, %120 ]
  %127 = phi i32 [ %.pre22, %118 ], [ %124, %120 ]
  %128 = phi %struct.Memory* [ %119, %118 ], [ %MEMORY.4, %120 ]
  %129 = sext i32 %127 to i64
  store i64 %129, i64* %RDI, align 8, !tbaa !2428
  %130 = load i64, i64* %RCX, align 8
  %131 = shl nsw i64 %129, 2
  %132 = add i64 %131, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %133 = add i64 %126, 10
  store i64 %133, i64* %PC, align 8
  %134 = trunc i64 %130 to i32
  %135 = inttoptr i64 %132 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = xor i32 %136, %134
  %138 = zext i32 %137 to i64
  store i64 %138, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  %139 = and i32 %137, 255
  %140 = tail call i32 @llvm.ctpop.i32(i32 %139) #12
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  store i8 %143, i8* %18, align 1, !tbaa !2446
  %144 = icmp eq i32 %137, 0
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %20, align 1, !tbaa !2448
  %146 = lshr i32 %137, 31
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  store i8 0, i8* %19, align 1, !tbaa !2447
  %148 = add i64 %125, -8
  %149 = add i64 %126, 14
  store i64 %149, i64* %PC, align 8
  %150 = inttoptr i64 %148 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  store i64 %152, i64* %RDI, align 8, !tbaa !2428
  %153 = shl nsw i64 %152, 2
  %154 = add i64 %153, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %155 = add i64 %126, 21
  store i64 %155, i64* %PC, align 8
  %156 = inttoptr i64 %154 to i32*
  store i32 %137, i32* %156, align 4
  %157 = load i64, i64* %PC, align 8
  %158 = add i64 %157, 32
  store i64 %158, i64* %PC, align 8, !tbaa !2428
  br label %block_401aa2

block_401af6:                                     ; preds = %block_401aec
  %159 = add i64 %473, 3
  store i64 %159, i64* %PC, align 8
  %160 = load i32, i32* %460, align 4
  %161 = add i32 %160, -1
  %162 = zext i32 %161 to i64
  store i64 %162, i64* %RAX, align 8, !tbaa !2428
  %163 = icmp eq i32 %160, 0
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %17, align 1, !tbaa !2432
  %165 = and i32 %161, 255
  %166 = tail call i32 @llvm.ctpop.i32(i32 %165) #12
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = xor i8 %168, 1
  store i8 %169, i8* %18, align 1, !tbaa !2446
  %170 = xor i32 %161, %160
  %171 = lshr i32 %170, 4
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  store i8 %173, i8* %19, align 1, !tbaa !2447
  %174 = icmp eq i32 %161, 0
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %20, align 1, !tbaa !2448
  %176 = lshr i32 %161, 31
  %177 = trunc i32 %176 to i8
  store i8 %177, i8* %21, align 1, !tbaa !2449
  %178 = lshr i32 %160, 31
  %179 = xor i32 %176, %178
  %180 = add nuw nsw i32 %179, %178
  %181 = icmp eq i32 %180, 2
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %22, align 1, !tbaa !2450
  %183 = sext i32 %161 to i64
  store i64 %183, i64* %RCX, align 8, !tbaa !2428
  %184 = shl nsw i64 %183, 2
  %185 = add i64 %184, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %186 = add i64 %473, 16
  store i64 %186, i64* %PC, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RAX, align 8, !tbaa !2428
  %190 = add i64 %473, 20
  store i64 %190, i64* %PC, align 8
  %191 = load i32, i32* %460, align 4
  %192 = sext i32 %191 to i64
  store i64 %192, i64* %RCX, align 8, !tbaa !2428
  %193 = shl nsw i64 %192, 2
  %194 = add i64 %193, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %195 = add i64 %473, 27
  store i64 %195, i64* %PC, align 8
  %196 = inttoptr i64 %194 to i32*
  store i32 %188, i32* %196, align 4
  %197 = load i64, i64* %RBP, align 8
  %198 = add i64 %197, -8
  %199 = load i64, i64* %PC, align 8
  %200 = add i64 %199, 3
  store i64 %200, i64* %PC, align 8
  %201 = inttoptr i64 %198 to i32*
  %202 = load i32, i32* %201, align 4
  %203 = add i32 %202, -1
  %204 = zext i32 %203 to i64
  store i64 %204, i64* %RAX, align 8, !tbaa !2428
  %205 = icmp ne i32 %202, 0
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %17, align 1, !tbaa !2432
  %207 = and i32 %203, 255
  %208 = tail call i32 @llvm.ctpop.i32(i32 %207) #12
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  %211 = xor i8 %210, 1
  store i8 %211, i8* %18, align 1, !tbaa !2446
  %212 = xor i32 %202, 16
  %213 = xor i32 %212, %203
  %214 = lshr i32 %213, 4
  %215 = trunc i32 %214 to i8
  %216 = and i8 %215, 1
  store i8 %216, i8* %19, align 1, !tbaa !2447
  %217 = icmp eq i32 %203, 0
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %20, align 1, !tbaa !2448
  %219 = lshr i32 %203, 31
  %220 = trunc i32 %219 to i8
  store i8 %220, i8* %21, align 1, !tbaa !2449
  %221 = lshr i32 %202, 31
  %222 = xor i32 %219, %221
  %223 = xor i32 %219, 1
  %224 = add nuw nsw i32 %222, %223
  %225 = icmp eq i32 %224, 2
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %22, align 1, !tbaa !2450
  %227 = add i64 %199, 9
  store i64 %227, i64* %PC, align 8
  store i32 %203, i32* %201, align 4
  %228 = load i64, i64* %PC, align 8
  %229 = add i64 %228, -46
  store i64 %229, i64* %PC, align 8, !tbaa !2428
  br label %block_401aec

block_4019e2:                                     ; preds = %block_4019bb
  %ECX = bitcast %union.anon* %4 to i32*
  %EDX = bitcast %union.anon* %5 to i32*
  %ESI = bitcast %union.anon* %6 to i32*
  %RDX = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %230 = add i64 %390, 7
  store i64 %230, i64* %PC, align 8
  store i32 238, i32* %364, align 4
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre20 = load i64, i64* %PC, align 8
  br label %block_4019e9

block_4019f3:                                     ; preds = %block_4019e9
  %232 = add i64 %359, 4
  store i64 %232, i64* %PC, align 8
  %233 = load i32, i32* %347, align 4
  %234 = sext i32 %233 to i64
  store i64 %234, i64* %RAX, align 8, !tbaa !2428
  %235 = shl nsw i64 %234, 2
  %236 = add i64 %235, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3184)
  %237 = add i64 %359, 11
  store i64 %237, i64* %PC, align 8
  %238 = inttoptr i64 %236 to i32*
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4204) to i32*), align 4
  %241 = xor i32 %240, %239
  %242 = zext i32 %241 to i64
  store i64 %242, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  %243 = and i32 %241, 255
  %244 = tail call i32 @llvm.ctpop.i32(i32 %243) #12
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  %247 = xor i8 %246, 1
  store i8 %247, i8* %18, align 1, !tbaa !2446
  %248 = icmp eq i32 %241, 0
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %20, align 1, !tbaa !2448
  %250 = lshr i32 %241, 31
  %251 = trunc i32 %250 to i8
  store i8 %251, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  store i8 0, i8* %19, align 1, !tbaa !2447
  %252 = sext i32 %241 to i64
  store i64 %252, i64* %RAX, align 8, !tbaa !2428
  %253 = shl nsw i64 %252, 2
  %254 = add i64 %253, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %255 = add i64 %359, 28
  store i64 %255, i64* %PC, align 8
  %256 = inttoptr i64 %254 to i32*
  %257 = load i32, i32* %256, align 4
  %258 = zext i32 %257 to i64
  store i64 %258, i64* %RCX, align 8, !tbaa !2428
  %259 = add i64 %344, -12
  %260 = add i64 %359, 31
  store i64 %260, i64* %PC, align 8
  %261 = inttoptr i64 %259 to i32*
  store i32 %257, i32* %261, align 4
  %262 = load i64, i64* %RBP, align 8
  %263 = add i64 %262, -12
  %264 = load i64, i64* %PC, align 8
  %265 = add i64 %264, 4
  store i64 %265, i64* %PC, align 8
  %266 = inttoptr i64 %263 to i32*
  %267 = load i32, i32* %266, align 4
  %268 = add i32 %267, 1
  %269 = icmp ne i32 %267, -1
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %17, align 1, !tbaa !2432
  %271 = and i32 %268, 255
  %272 = tail call i32 @llvm.ctpop.i32(i32 %271) #12
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  %275 = xor i8 %274, 1
  store i8 %275, i8* %18, align 1, !tbaa !2446
  %276 = xor i32 %267, 16
  %277 = xor i32 %276, %268
  %278 = lshr i32 %277, 4
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  store i8 %280, i8* %19, align 1, !tbaa !2447
  %281 = icmp eq i32 %268, 0
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %20, align 1, !tbaa !2448
  %283 = lshr i32 %268, 31
  %284 = trunc i32 %283 to i8
  store i8 %284, i8* %21, align 1, !tbaa !2449
  %285 = lshr i32 %267, 31
  %286 = xor i32 %285, 1
  %287 = xor i32 %283, %285
  %288 = add nuw nsw i32 %287, %286
  %289 = icmp eq i32 %288, 2
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %22, align 1, !tbaa !2450
  %.v31 = select i1 %281, i64 211, i64 10
  %291 = add i64 %264, %.v31
  %292 = add i64 %262, -8
  %293 = add i64 %291, 7
  store i64 %293, i64* %PC, align 8
  %294 = inttoptr i64 %292 to i32*
  store i32 15, i32* %294, align 4
  %.pre28 = load i64, i64* %PC, align 8
  br i1 %281, label %block_401aec.preheader, label %block_401a23.preheader

block_401a23.preheader:                           ; preds = %block_4019f3
  br label %block_401a23

block_401aec.preheader:                           ; preds = %block_4019f3
  br label %block_401aec

block_4019c5:                                     ; preds = %block_4019bb
  %295 = add i64 %390, 4
  store i64 %295, i64* %PC, align 8
  %296 = load i32, i32* %364, align 4
  %297 = sext i32 %296 to i64
  store i64 %297, i64* %RAX, align 8, !tbaa !2428
  %298 = shl nsw i64 %297, 2
  %299 = add i64 %298, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %300 = add i64 %390, 15
  store i64 %300, i64* %PC, align 8
  %301 = inttoptr i64 %299 to i32*
  store i32 0, i32* %301, align 4
  %302 = load i64, i64* %RBP, align 8
  %303 = add i64 %302, -4
  %304 = load i64, i64* %PC, align 8
  %305 = add i64 %304, 3
  store i64 %305, i64* %PC, align 8
  %306 = inttoptr i64 %303 to i32*
  %307 = load i32, i32* %306, align 4
  %308 = add i32 %307, 1
  %309 = zext i32 %308 to i64
  store i64 %309, i64* %RAX, align 8, !tbaa !2428
  %310 = icmp eq i32 %307, -1
  %311 = icmp eq i32 %308, 0
  %312 = or i1 %310, %311
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %17, align 1, !tbaa !2432
  %314 = and i32 %308, 255
  %315 = tail call i32 @llvm.ctpop.i32(i32 %314) #12
  %316 = trunc i32 %315 to i8
  %317 = and i8 %316, 1
  %318 = xor i8 %317, 1
  store i8 %318, i8* %18, align 1, !tbaa !2446
  %319 = xor i32 %308, %307
  %320 = lshr i32 %319, 4
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  store i8 %322, i8* %19, align 1, !tbaa !2447
  %323 = zext i1 %311 to i8
  store i8 %323, i8* %20, align 1, !tbaa !2448
  %324 = lshr i32 %308, 31
  %325 = trunc i32 %324 to i8
  store i8 %325, i8* %21, align 1, !tbaa !2449
  %326 = lshr i32 %307, 31
  %327 = xor i32 %324, %326
  %328 = add nuw nsw i32 %327, %324
  %329 = icmp eq i32 %328, 2
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %22, align 1, !tbaa !2450
  %331 = add i64 %304, 9
  store i64 %331, i64* %PC, align 8
  store i32 %308, i32* %306, align 4
  %332 = load i64, i64* %PC, align 8
  %333 = add i64 %332, -34
  store i64 %333, i64* %PC, align 8, !tbaa !2428
  br label %block_4019bb

block_401b3d:                                     ; preds = %block_4019e9
  %334 = add i64 %359, 1
  store i64 %334, i64* %PC, align 8
  %335 = load i64, i64* %9, align 8, !tbaa !2428
  %336 = add i64 %335, 8
  %337 = inttoptr i64 %335 to i64*
  %338 = load i64, i64* %337, align 8
  store i64 %338, i64* %RBP, align 8, !tbaa !2428
  store i64 %336, i64* %9, align 8, !tbaa !2428
  %339 = add i64 %359, 2
  store i64 %339, i64* %PC, align 8
  %340 = inttoptr i64 %336 to i64*
  %341 = load i64, i64* %340, align 8
  store i64 %341, i64* %PC, align 8, !tbaa !2428
  %342 = add i64 %335, 16
  store i64 %342, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_4019e9:                                     ; preds = %block_401b2a, %block_4019e2
  %343 = phi i64 [ %.pre20, %block_4019e2 ], [ %455, %block_401b2a ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4019e2 ], [ %MEMORY.2, %block_401b2a ]
  %344 = load i64, i64* %RBP, align 8
  %345 = add i64 %344, -4
  %346 = add i64 %343, 4
  store i64 %346, i64* %PC, align 8
  %347 = inttoptr i64 %345 to i32*
  %348 = load i32, i32* %347, align 4
  store i8 0, i8* %17, align 1, !tbaa !2432
  %349 = and i32 %348, 255
  %350 = tail call i32 @llvm.ctpop.i32(i32 %349) #12
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = xor i8 %352, 1
  store i8 %353, i8* %18, align 1, !tbaa !2446
  store i8 0, i8* %19, align 1, !tbaa !2447
  %354 = icmp eq i32 %348, 0
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %20, align 1, !tbaa !2448
  %356 = lshr i32 %348, 31
  %357 = trunc i32 %356 to i8
  store i8 %357, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  %358 = icmp ne i8 %357, 0
  %.v = select i1 %358, i64 336, i64 6
  %359 = add i64 %346, %.v
  store i64 %359, i64* %PC, align 8, !tbaa !2428
  br i1 %358, label %block_401b3d, label %block_4019f3

block_4019bb:                                     ; preds = %block_4019c5, %block_4019b0
  %360 = phi i64 [ %333, %block_4019c5 ], [ %.pre, %block_4019b0 ]
  %361 = load i64, i64* %RBP, align 8
  %362 = add i64 %361, -4
  %363 = add i64 %360, 4
  store i64 %363, i64* %PC, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = add i32 %365, -16
  %367 = icmp ult i32 %365, 16
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %17, align 1, !tbaa !2432
  %369 = and i32 %366, 255
  %370 = tail call i32 @llvm.ctpop.i32(i32 %369) #12
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  %373 = xor i8 %372, 1
  store i8 %373, i8* %18, align 1, !tbaa !2446
  %374 = xor i32 %365, 16
  %375 = xor i32 %374, %366
  %376 = lshr i32 %375, 4
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  store i8 %378, i8* %19, align 1, !tbaa !2447
  %379 = icmp eq i32 %366, 0
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %20, align 1, !tbaa !2448
  %381 = lshr i32 %366, 31
  %382 = trunc i32 %381 to i8
  store i8 %382, i8* %21, align 1, !tbaa !2449
  %383 = lshr i32 %365, 31
  %384 = xor i32 %381, %383
  %385 = add nuw nsw i32 %384, %383
  %386 = icmp eq i32 %385, 2
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %22, align 1, !tbaa !2450
  %388 = icmp ne i8 %382, 0
  %389 = xor i1 %388, %386
  %.v32 = select i1 %389, i64 10, i64 39
  %390 = add i64 %360, %.v32
  store i64 %390, i64* %PC, align 8, !tbaa !2428
  br i1 %389, label %block_4019c5, label %block_4019e2

block_401a2d:                                     ; preds = %block_401a23
  %391 = add i64 %491, 4
  store i64 %391, i64* %PC, align 8
  %392 = load i32, i32* %478, align 4
  %393 = sext i32 %392 to i64
  store i64 %393, i64* %RAX, align 8, !tbaa !2428
  %394 = shl nsw i64 %393, 2
  %395 = add i64 %394, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %396 = add i64 %491, 12
  store i64 %396, i64* %PC, align 8
  %397 = inttoptr i64 %395 to i32*
  %398 = load i32, i32* %397, align 4
  %399 = add i32 %398, 1
  %400 = icmp ne i32 %398, -1
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %17, align 1, !tbaa !2432
  %402 = and i32 %399, 255
  %403 = tail call i32 @llvm.ctpop.i32(i32 %402) #12
  %404 = trunc i32 %403 to i8
  %405 = and i8 %404, 1
  %406 = xor i8 %405, 1
  store i8 %406, i8* %18, align 1, !tbaa !2446
  %407 = xor i32 %398, 16
  %408 = xor i32 %407, %399
  %409 = lshr i32 %408, 4
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  store i8 %411, i8* %19, align 1, !tbaa !2447
  %412 = icmp eq i32 %399, 0
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %20, align 1, !tbaa !2448
  %414 = lshr i32 %399, 31
  %415 = trunc i32 %414 to i8
  store i8 %415, i8* %21, align 1, !tbaa !2449
  %416 = lshr i32 %398, 31
  %417 = xor i32 %416, 1
  %418 = xor i32 %414, %416
  %419 = add nuw nsw i32 %418, %417
  %420 = icmp eq i32 %419, 2
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %22, align 1, !tbaa !2450
  %.v34 = select i1 %412, i64 90, i64 18
  %422 = add i64 %491, %.v34
  store i64 %422, i64* %PC, align 8, !tbaa !2428
  br i1 %412, label %block_401a87, label %block_401a3f

block_401b2a:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_401b1f
  %423 = phi i64 [ %457, %block_401b1f ], [ %.pre29, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %424 = phi i64 [ %525, %block_401b1f ], [ %598, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.0, %block_401b1f ], [ %590, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %425 = add i64 %423, -4
  %426 = add i64 %424, 8
  store i64 %426, i64* %PC, align 8
  %427 = inttoptr i64 %425 to i32*
  %428 = load i32, i32* %427, align 4
  %429 = add i32 %428, -1
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %RAX, align 8, !tbaa !2428
  %431 = icmp ne i32 %428, 0
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %17, align 1, !tbaa !2432
  %433 = and i32 %429, 255
  %434 = tail call i32 @llvm.ctpop.i32(i32 %433) #12
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  store i8 %437, i8* %18, align 1, !tbaa !2446
  %438 = xor i32 %428, 16
  %439 = xor i32 %438, %429
  %440 = lshr i32 %439, 4
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  store i8 %442, i8* %19, align 1, !tbaa !2447
  %443 = icmp eq i32 %429, 0
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %20, align 1, !tbaa !2448
  %445 = lshr i32 %429, 31
  %446 = trunc i32 %445 to i8
  store i8 %446, i8* %21, align 1, !tbaa !2449
  %447 = lshr i32 %428, 31
  %448 = xor i32 %445, %447
  %449 = xor i32 %445, 1
  %450 = add nuw nsw i32 %448, %449
  %451 = icmp eq i32 %450, 2
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %22, align 1, !tbaa !2450
  %453 = add i64 %424, 14
  store i64 %453, i64* %PC, align 8
  store i32 %429, i32* %427, align 4
  %454 = load i64, i64* %PC, align 8
  %455 = add i64 %454, -335
  store i64 %455, i64* %PC, align 8, !tbaa !2428
  br label %block_4019e9

block_401aec:                                     ; preds = %block_401aec.preheader, %block_401af6
  %456 = phi i64 [ %229, %block_401af6 ], [ %.pre28, %block_401aec.preheader ]
  %457 = load i64, i64* %RBP, align 8
  %458 = add i64 %457, -8
  %459 = add i64 %456, 4
  store i64 %459, i64* %PC, align 8
  %460 = inttoptr i64 %458 to i32*
  %461 = load i32, i32* %460, align 4
  store i8 0, i8* %17, align 1, !tbaa !2432
  %462 = and i32 %461, 255
  %463 = tail call i32 @llvm.ctpop.i32(i32 %462) #12
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  %466 = xor i8 %465, 1
  store i8 %466, i8* %18, align 1, !tbaa !2446
  store i8 0, i8* %19, align 1, !tbaa !2447
  %467 = icmp eq i32 %461, 0
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %20, align 1, !tbaa !2448
  %469 = lshr i32 %461, 31
  %470 = trunc i32 %469 to i8
  store i8 %470, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  %471 = icmp ne i8 %470, 0
  %472 = or i1 %467, %471
  %.v35 = select i1 %472, i64 51, i64 10
  %473 = add i64 %456, %.v35
  store i64 %473, i64* %PC, align 8, !tbaa !2428
  br i1 %472, label %block_401b1f, label %block_401af6

block_401a23:                                     ; preds = %block_401a23.preheader, %block_401aa2
  %474 = phi i64 [ %524, %block_401aa2 ], [ %.pre28, %block_401a23.preheader ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.5, %block_401aa2 ], [ %MEMORY.0, %block_401a23.preheader ]
  %475 = load i64, i64* %RBP, align 8
  %476 = add i64 %475, -8
  %477 = add i64 %474, 4
  store i64 %477, i64* %PC, align 8
  %478 = inttoptr i64 %476 to i32*
  %479 = load i32, i32* %478, align 4
  store i8 0, i8* %17, align 1, !tbaa !2432
  %480 = and i32 %479, 255
  %481 = tail call i32 @llvm.ctpop.i32(i32 %480) #12
  %482 = trunc i32 %481 to i8
  %483 = and i8 %482, 1
  %484 = xor i8 %483, 1
  store i8 %484, i8* %18, align 1, !tbaa !2446
  store i8 0, i8* %19, align 1, !tbaa !2447
  %485 = icmp eq i32 %479, 0
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %20, align 1, !tbaa !2448
  %487 = lshr i32 %479, 31
  %488 = trunc i32 %487 to i8
  store i8 %488, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  %489 = icmp ne i8 %488, 0
  %490 = or i1 %485, %489
  %.v33 = select i1 %490, i64 146, i64 10
  %491 = add i64 %474, %.v33
  store i64 %491, i64* %PC, align 8, !tbaa !2428
  br i1 %490, label %block_401ab5, label %block_401a2d

block_401aa2:                                     ; preds = %block_401a87, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1
  %492 = phi i64 [ %.pre25, %block_401a87 ], [ %158, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.4, %block_401a87 ], [ %128, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %493 = load i64, i64* %RBP, align 8
  %494 = add i64 %493, -8
  %495 = add i64 %492, 8
  store i64 %495, i64* %PC, align 8
  %496 = inttoptr i64 %494 to i32*
  %497 = load i32, i32* %496, align 4
  %498 = add i32 %497, -1
  %499 = zext i32 %498 to i64
  store i64 %499, i64* %RAX, align 8, !tbaa !2428
  %500 = icmp ne i32 %497, 0
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %17, align 1, !tbaa !2432
  %502 = and i32 %498, 255
  %503 = tail call i32 @llvm.ctpop.i32(i32 %502) #12
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  %506 = xor i8 %505, 1
  store i8 %506, i8* %18, align 1, !tbaa !2446
  %507 = xor i32 %497, 16
  %508 = xor i32 %507, %498
  %509 = lshr i32 %508, 4
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  store i8 %511, i8* %19, align 1, !tbaa !2447
  %512 = icmp eq i32 %498, 0
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %20, align 1, !tbaa !2448
  %514 = lshr i32 %498, 31
  %515 = trunc i32 %514 to i8
  store i8 %515, i8* %21, align 1, !tbaa !2449
  %516 = lshr i32 %497, 31
  %517 = xor i32 %514, %516
  %518 = xor i32 %514, 1
  %519 = add nuw nsw i32 %517, %518
  %520 = icmp eq i32 %519, 2
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %22, align 1, !tbaa !2450
  %522 = add i64 %492, 14
  store i64 %522, i64* %PC, align 8
  store i32 %498, i32* %496, align 4
  %523 = load i64, i64* %PC, align 8
  %524 = add i64 %523, -141
  store i64 %524, i64* %PC, align 8, !tbaa !2428
  br label %block_401a23

block_401b1f:                                     ; preds = %block_401aec
  %525 = add i64 %473, 11
  store i64 %525, i64* %PC, align 8
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144) to i32*), align 16
  br label %block_401b2a

block_401ab5:                                     ; preds = %block_401a23
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %526 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104) to i32*), align 16
  %527 = zext i32 %526 to i64
  store i64 %527, i64* %RCX, align 8, !tbaa !2428
  %528 = add i64 %475, -12
  %529 = add i64 %491, 15
  store i64 %529, i64* %PC, align 8
  %530 = inttoptr i64 %528 to i32*
  %531 = load i32, i32* %530, align 4
  %532 = add i32 %531, %526
  %533 = zext i32 %532 to i64
  store i64 %533, i64* %RCX, align 8, !tbaa !2428
  %534 = icmp ult i32 %532, %526
  %535 = icmp ult i32 %532, %531
  %536 = or i1 %534, %535
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %17, align 1, !tbaa !2432
  %538 = and i32 %532, 255
  %539 = tail call i32 @llvm.ctpop.i32(i32 %538) #12
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  store i8 %542, i8* %18, align 1, !tbaa !2446
  %543 = xor i32 %531, %526
  %544 = xor i32 %543, %532
  %545 = lshr i32 %544, 4
  %546 = trunc i32 %545 to i8
  %547 = and i8 %546, 1
  store i8 %547, i8* %19, align 1, !tbaa !2447
  %548 = icmp eq i32 %532, 0
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %20, align 1, !tbaa !2448
  %550 = lshr i32 %532, 31
  %551 = trunc i32 %550 to i8
  store i8 %551, i8* %21, align 1, !tbaa !2449
  %552 = lshr i32 %526, 31
  %553 = lshr i32 %531, 31
  %554 = xor i32 %550, %552
  %555 = xor i32 %550, %553
  %556 = add nuw nsw i32 %554, %555
  %557 = icmp eq i32 %556, 2
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %22, align 1, !tbaa !2450
  %559 = add i64 %475, -20
  %560 = add i64 %491, 18
  store i64 %560, i64* %PC, align 8
  %561 = inttoptr i64 %559 to i32*
  store i32 255, i32* %561, align 4
  %562 = load i32, i32* %ECX, align 4
  %563 = zext i32 %562 to i64
  %564 = load i64, i64* %PC, align 8
  store i64 %563, i64* %RAX, align 8, !tbaa !2428
  %565 = sext i32 %562 to i64
  %566 = lshr i64 %565, 32
  store i64 %566, i64* %231, align 8, !tbaa !2428
  %567 = load i64, i64* %RBP, align 8
  %568 = add i64 %567, -20
  %569 = add i64 %564, 6
  store i64 %569, i64* %PC, align 8
  %570 = inttoptr i64 %568 to i32*
  %571 = load i32, i32* %570, align 4
  %572 = zext i32 %571 to i64
  store i64 %572, i64* %RCX, align 8, !tbaa !2428
  %573 = add i64 %564, 8
  store i64 %573, i64* %PC, align 8
  %574 = sext i32 %571 to i64
  %575 = shl nuw i64 %566, 32
  %576 = or i64 %575, %563
  %577 = sdiv i64 %576, %574
  %578 = shl i64 %577, 32
  %579 = ashr exact i64 %578, 32
  %580 = icmp eq i64 %577, %579
  br i1 %580, label %583, label %581

; <label>:581:                                    ; preds = %block_401ab5
  %582 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %573, %struct.Memory* %MEMORY.4) #13
  %.pre26 = load i32, i32* %EDX, align 4
  %.pre27 = load i64, i64* %PC, align 8
  %.pre29.pre = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:583:                                    ; preds = %block_401ab5
  %584 = srem i64 %576, %574
  %585 = and i64 %577, 4294967295
  store i64 %585, i64* %RAX, align 8, !tbaa !2428
  %586 = and i64 %584, 4294967295
  store i64 %586, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 0, i8* %18, align 1, !tbaa !2446
  store i8 0, i8* %19, align 1, !tbaa !2447
  store i8 0, i8* %20, align 1, !tbaa !2448
  store i8 0, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  %587 = trunc i64 %584 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %583, %581
  %.pre29 = phi i64 [ %.pre29.pre, %581 ], [ %567, %583 ]
  %588 = phi i64 [ %.pre27, %581 ], [ %573, %583 ]
  %589 = phi i32 [ %.pre26, %581 ], [ %587, %583 ]
  %590 = phi %struct.Memory* [ %582, %581 ], [ %MEMORY.4, %583 ]
  %591 = sext i32 %589 to i64
  store i64 %591, i64* %RSI, align 8, !tbaa !2428
  %592 = shl nsw i64 %591, 2
  %593 = add i64 %592, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %594 = add i64 %588, 10
  store i64 %594, i64* %PC, align 8
  %595 = inttoptr i64 %593 to i32*
  %596 = load i32, i32* %595, align 4
  %597 = zext i32 %596 to i64
  store i64 %597, i64* %RDX, align 8, !tbaa !2428
  store i32 %596, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144) to i32*), align 16
  %598 = add i64 %588, 91
  store i64 %598, i64* %PC, align 8, !tbaa !2428
  br label %block_401b2a

block_401a87:                                     ; preds = %block_401a2d
  %599 = add i64 %422, 3
  store i64 %599, i64* %PC, align 8
  %600 = load i32, i32* %478, align 4
  %601 = add i32 %600, -1
  %602 = zext i32 %601 to i64
  store i64 %602, i64* %RAX, align 8, !tbaa !2428
  %603 = icmp eq i32 %600, 0
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %17, align 1, !tbaa !2432
  %605 = and i32 %601, 255
  %606 = tail call i32 @llvm.ctpop.i32(i32 %605) #12
  %607 = trunc i32 %606 to i8
  %608 = and i8 %607, 1
  %609 = xor i8 %608, 1
  store i8 %609, i8* %18, align 1, !tbaa !2446
  %610 = xor i32 %601, %600
  %611 = lshr i32 %610, 4
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  store i8 %613, i8* %19, align 1, !tbaa !2447
  %614 = icmp eq i32 %601, 0
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %20, align 1, !tbaa !2448
  %616 = lshr i32 %601, 31
  %617 = trunc i32 %616 to i8
  store i8 %617, i8* %21, align 1, !tbaa !2449
  %618 = lshr i32 %600, 31
  %619 = xor i32 %616, %618
  %620 = add nuw nsw i32 %619, %618
  %621 = icmp eq i32 %620, 2
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %22, align 1, !tbaa !2450
  %623 = sext i32 %601 to i64
  store i64 %623, i64* %RCX, align 8, !tbaa !2428
  %624 = shl nsw i64 %623, 2
  %625 = add i64 %624, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %626 = add i64 %422, 16
  store i64 %626, i64* %PC, align 8
  %627 = inttoptr i64 %625 to i32*
  %628 = load i32, i32* %627, align 4
  %629 = zext i32 %628 to i64
  store i64 %629, i64* %RAX, align 8, !tbaa !2428
  %630 = add i64 %422, 20
  store i64 %630, i64* %PC, align 8
  %631 = load i32, i32* %478, align 4
  %632 = sext i32 %631 to i64
  store i64 %632, i64* %RCX, align 8, !tbaa !2428
  %633 = shl nsw i64 %632, 2
  %634 = add i64 %633, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %635 = add i64 %422, 27
  store i64 %635, i64* %PC, align 8
  %636 = inttoptr i64 %634 to i32*
  store i32 %628, i32* %636, align 4
  %.pre25 = load i64, i64* %PC, align 8
  br label %block_401aa2
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400460__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_400460:
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
define %struct.Memory* @sub_401c70___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_401c70:
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
  %63 = add i64 %38, -6299
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_4003f0__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
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
  store i8 %77, i8* %46, align 1, !tbaa !2448
  %78 = lshr i64 %68, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %.v = select i1 %76, i64 37, i64 5
  %80 = add i64 %69, %.v
  store i64 %80, i64* %PC, align 8, !tbaa !2428
  br i1 %76, label %block_401cc6, label %block_401ca6

block_401cc6.loopexit:                            ; preds = %block_401cb0
  br label %block_401cc6

block_401cc6:                                     ; preds = %block_401cc6.loopexit, %block_401c70
  %81 = phi i64 [ %80, %block_401c70 ], [ %179, %block_401cc6.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_401c70 ], [ %149, %block_401cc6.loopexit ]
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

block_401ca6:                                     ; preds = %block_401c70
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401cb0

block_401cb0:                                     ; preds = %block_401cb0, %block_401ca6
  %134 = phi i64 [ 0, %block_401ca6 ], [ %152, %block_401cb0 ]
  %135 = phi i64 [ %133, %block_401ca6 ], [ %179, %block_401cb0 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401ca6 ], [ %149, %block_401cb0 ]
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
  br i1 %169, label %block_401cc6.loopexit, label %block_401cb0
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004e0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_4004e0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* getelementptr inbounds (%seg_603060__bss_type, %seg_603060__bss_type* @seg_603060__bss, i64 0, i32 0, i64 0), align 16
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
  br i1 %12, label %block_4004e9, label %block_400500

block_400500:                                     ; preds = %block_4004e0
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

block_4004e9:                                     ; preds = %block_4004e0
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
  %36 = tail call %struct.Memory* @sub_400470_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
  %37 = load i64, i64* %PC, align 8
  store i8 1, i8* getelementptr inbounds (%seg_603060__bss_type, %seg_603060__bss_type* @seg_603060__bss, i64 0, i32 0, i64 0), align 16
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
define %struct.Memory* @sub_401ce4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_401ce4:
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400430__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400430:
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
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #12
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
  store i64 ptrtoint (void ()* @callback_sub_401ce0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401c70___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %35 = add i64 %34, 27
  %36 = add i64 %15, -24
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37, align 8
  store i64 %36, i64* %RSP, align 8, !tbaa !2428
  %38 = load i64, i64* getelementptr inbounds (%seg_602ff0__got_type, %seg_602ff0__got_type* @seg_602ff0__got, i64 0, i32 0), align 8
  store i64 %38, i64* %PC, align 8, !tbaa !2428
  %39 = tail call fastcc %struct.Memory* @ext_6040d0___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC, align 8
  %42 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %41, %struct.Memory* %39)
  ret %struct.Memory* %42
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400690_generate_gf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400690:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
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
  %11 = add i64 %9, 10
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %10 to i32*
  store i32 1, i32* %12, align 4
  %13 = load i64, i64* %PC, align 8
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2112) to i32*), align 16
  %14 = load i64, i64* %RBP, align 8
  %15 = add i64 %14, -4
  %16 = add i64 %13, 18
  store i64 %16, i64* %PC, align 8
  %17 = inttoptr i64 %15 to i32*
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %PC, align 8
  br label %block_4006ad

block_40075e:                                     ; preds = %block_400745
  %24 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2112) to i32*), align 16
  %25 = zext i32 %24 to i64
  store i64 %25, i64* %RAX, align 8, !tbaa !2428
  %26 = add i64 %374, 10
  store i64 %26, i64* %PC, align 8
  %27 = load i32, i32* %286, align 4
  %28 = add i32 %27, -1
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %RCX, align 8, !tbaa !2428
  %30 = icmp eq i32 %27, 0
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %18, align 1, !tbaa !2432
  %32 = and i32 %28, 255
  %33 = tail call i32 @llvm.ctpop.i32(i32 %32) #12
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  store i8 %36, i8* %19, align 1, !tbaa !2446
  %37 = xor i32 %28, %27
  %38 = lshr i32 %37, 4
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 1
  store i8 %40, i8* %20, align 1, !tbaa !2447
  %41 = icmp eq i32 %28, 0
  %42 = zext i1 %41 to i8
  store i8 %42, i8* %21, align 1, !tbaa !2448
  %43 = lshr i32 %28, 31
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %22, align 1, !tbaa !2449
  %45 = lshr i32 %27, 31
  %46 = xor i32 %43, %45
  %47 = add nuw nsw i32 %46, %45
  %48 = icmp eq i32 %47, 2
  %49 = zext i1 %48 to i8
  store i8 %49, i8* %23, align 1, !tbaa !2450
  %50 = sext i32 %28 to i64
  store i64 %50, i64* %RDX, align 8, !tbaa !2428
  %51 = shl nsw i64 %50, 2
  %52 = add i64 %51, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %53 = add i64 %374, 23
  store i64 %53, i64* %PC, align 8
  %54 = inttoptr i64 %52 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = zext i32 %55 to i64
  store i64 %56, i64* %RCX, align 8, !tbaa !2428
  %57 = add i64 %374, 26
  store i64 %57, i64* %PC, align 8
  %58 = load i32, i32* %346, align 4
  %59 = xor i32 %58, %55
  %60 = shl i32 %59, 1
  %61 = zext i32 %60 to i64
  store i64 %61, i64* %RCX, align 8, !tbaa !2428
  %62 = xor i32 %60, %24
  %63 = zext i32 %62 to i64
  store i64 %63, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  %64 = and i32 %62, 255
  %65 = tail call i32 @llvm.ctpop.i32(i32 %64) #12
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  store i8 %68, i8* %19, align 1, !tbaa !2446
  %69 = icmp eq i32 %62, 0
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %21, align 1, !tbaa !2448
  %71 = lshr i32 %62, 31
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %22, align 1, !tbaa !2449
  store i8 0, i8* %23, align 1, !tbaa !2450
  store i8 0, i8* %20, align 1, !tbaa !2447
  %73 = load i64, i64* %RBP, align 8
  %74 = add i64 %73, -4
  %75 = add i64 %374, 35
  store i64 %75, i64* %PC, align 8
  %76 = inttoptr i64 %74 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %RDX, align 8, !tbaa !2428
  %79 = shl nsw i64 %78, 2
  %80 = add i64 %79, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %81 = add i64 %374, 42
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %80 to i32*
  store i32 %62, i32* %82, align 4
  %83 = load i64, i64* %PC, align 8
  %84 = add i64 %83, 35
  store i64 %84, i64* %PC, align 8, !tbaa !2428
  br label %block_4007ab

block_4007cf:                                     ; preds = %block_400738
  store i32 -1, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056) to i32*), align 16
  %85 = add i64 %312, 12
  store i64 %85, i64* %PC, align 8
  %86 = load i64, i64* %5, align 8, !tbaa !2428
  %87 = add i64 %86, 8
  %88 = inttoptr i64 %86 to i64*
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %RBP, align 8, !tbaa !2428
  store i64 %87, i64* %5, align 8, !tbaa !2428
  %90 = add i64 %312, 13
  store i64 %90, i64* %PC, align 8
  %91 = inttoptr i64 %87 to i64*
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %PC, align 8, !tbaa !2428
  %93 = add i64 %86, 16
  store i64 %93, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4006b7:                                     ; preds = %block_4006ad
  %94 = add i64 %185, -8
  %95 = add i64 %213, 3
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %94 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = zext i32 %97 to i64
  store i64 %98, i64* %RAX, align 8, !tbaa !2428
  %99 = add i64 %213, 7
  store i64 %99, i64* %PC, align 8
  %100 = load i32, i32* %188, align 4
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %RCX, align 8, !tbaa !2428
  %102 = shl nsw i64 %101, 2
  %103 = add i64 %102, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %104 = add i64 %213, 14
  store i64 %104, i64* %PC, align 8
  %105 = inttoptr i64 %103 to i32*
  store i32 %97, i32* %105, align 4
  %106 = load i64, i64* %RBP, align 8
  %107 = add i64 %106, -4
  %108 = load i64, i64* %PC, align 8
  %109 = add i64 %108, 3
  store i64 %109, i64* %PC, align 8
  %110 = inttoptr i64 %107 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = zext i32 %111 to i64
  store i64 %112, i64* %RAX, align 8, !tbaa !2428
  %113 = add i64 %108, 7
  store i64 %113, i64* %PC, align 8
  %114 = load i32, i32* %110, align 4
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %RCX, align 8, !tbaa !2428
  %116 = shl nsw i64 %115, 2
  %117 = add i64 %116, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %118 = add i64 %108, 15
  store i64 %118, i64* %PC, align 8
  %119 = inttoptr i64 %117 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  store i64 %121, i64* %RCX, align 8, !tbaa !2428
  %122 = shl nsw i64 %121, 2
  %123 = add i64 %122, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %124 = add i64 %108, 22
  store i64 %124, i64* %PC, align 8
  %125 = inttoptr i64 %123 to i32*
  store i32 %111, i32* %125, align 4
  %126 = load i64, i64* %RBP, align 8
  %127 = add i64 %126, -4
  %128 = load i64, i64* %PC, align 8
  %129 = add i64 %128, 4
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %127 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  store i64 %132, i64* %RCX, align 8, !tbaa !2428
  %133 = shl nsw i64 %132, 2
  %134 = add i64 %133, add (i64 ptrtoint (%seg_603020__data_type* @seg_603020__data to i64), i64 16)
  %135 = add i64 %128, 12
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %134 to i32*
  %137 = load i32, i32* %136, align 4
  store i8 0, i8* %18, align 1, !tbaa !2432
  %138 = and i32 %137, 255
  %139 = tail call i32 @llvm.ctpop.i32(i32 %138) #12
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  %142 = xor i8 %141, 1
  store i8 %142, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %20, align 1, !tbaa !2447
  %143 = icmp eq i32 %137, 0
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %21, align 1, !tbaa !2448
  %145 = lshr i32 %137, 31
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %22, align 1, !tbaa !2449
  store i8 0, i8* %23, align 1, !tbaa !2450
  %.v21 = select i1 %143, i64 35, i64 18
  %147 = add i64 %128, %.v21
  store i64 %147, i64* %PC, align 8, !tbaa !2428
  %.pre16 = add i64 %126, -8
  br i1 %143, label %block_4006b7.block_4006fe_crit_edge, label %block_4006ed

block_4006b7.block_4006fe_crit_edge:              ; preds = %block_4006b7
  %.pre17 = inttoptr i64 %.pre16 to i32*
  br label %block_4006fe

block_400715:                                     ; preds = %block_4006ad
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %148 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2112) to i32*), align 16
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %RAX, align 8, !tbaa !2428
  %150 = shl nsw i64 %149, 2
  %151 = add i64 %150, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %152 = add i64 %213, 19
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %151 to i32*
  store i32 8, i32* %153, align 4
  %154 = load i64, i64* %RBP, align 8
  %155 = add i64 %154, -8
  %156 = load i64, i64* %PC, align 8
  %157 = add i64 %156, 3
  store i64 %157, i64* %PC, align 8
  %158 = inttoptr i64 %155 to i32*
  %159 = load i32, i32* %158, align 4
  %160 = zext i32 %159 to i64
  %161 = shl nuw i64 %160, 32
  %162 = ashr i64 %161, 33
  %163 = trunc i32 %159 to i8
  %164 = and i8 %163, 1
  %165 = trunc i64 %162 to i32
  %166 = and i64 %162, 4294967295
  store i64 %166, i64* %RCX, align 8, !tbaa !2428
  store i8 %164, i8* %18, align 1, !tbaa !2451
  %167 = and i32 %165, 255
  %168 = tail call i32 @llvm.ctpop.i32(i32 %167) #12
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  %171 = xor i8 %170, 1
  store i8 %171, i8* %19, align 1, !tbaa !2451
  store i8 0, i8* %20, align 1, !tbaa !2451
  %172 = icmp eq i32 %165, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %21, align 1, !tbaa !2451
  %174 = lshr i64 %162, 31
  %175 = trunc i64 %174 to i8
  %176 = and i8 %175, 1
  store i8 %176, i8* %22, align 1, !tbaa !2451
  store i8 0, i8* %23, align 1, !tbaa !2451
  %177 = trunc i64 %162 to i32
  %178 = add i64 %156, 9
  store i64 %178, i64* %PC, align 8
  store i32 %177, i32* %158, align 4
  %179 = load i64, i64* %RBP, align 8
  %180 = add i64 %179, -4
  %181 = load i64, i64* %PC, align 8
  %182 = add i64 %181, 7
  store i64 %182, i64* %PC, align 8
  %183 = inttoptr i64 %180 to i32*
  store i32 9, i32* %183, align 4
  %.pre14 = load i64, i64* %PC, align 8
  br label %block_400738

block_4006ad:                                     ; preds = %block_4006fe, %block_400690
  %184 = phi i64 [ %481, %block_4006fe ], [ %.pre, %block_400690 ]
  %185 = load i64, i64* %RBP, align 8
  %186 = add i64 %185, -4
  %187 = add i64 %184, 4
  store i64 %187, i64* %PC, align 8
  %188 = inttoptr i64 %186 to i32*
  %189 = load i32, i32* %188, align 4
  %190 = add i32 %189, -8
  %191 = icmp ult i32 %189, 8
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %18, align 1, !tbaa !2432
  %193 = and i32 %190, 255
  %194 = tail call i32 @llvm.ctpop.i32(i32 %193) #12
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  %197 = xor i8 %196, 1
  store i8 %197, i8* %19, align 1, !tbaa !2446
  %198 = xor i32 %190, %189
  %199 = lshr i32 %198, 4
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  store i8 %201, i8* %20, align 1, !tbaa !2447
  %202 = icmp eq i32 %190, 0
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %21, align 1, !tbaa !2448
  %204 = lshr i32 %190, 31
  %205 = trunc i32 %204 to i8
  store i8 %205, i8* %22, align 1, !tbaa !2449
  %206 = lshr i32 %189, 31
  %207 = xor i32 %204, %206
  %208 = add nuw nsw i32 %207, %206
  %209 = icmp eq i32 %208, 2
  %210 = zext i1 %209 to i8
  store i8 %210, i8* %23, align 1, !tbaa !2450
  %211 = icmp ne i8 %205, 0
  %212 = xor i1 %211, %209
  %.v = select i1 %212, i64 10, i64 104
  %213 = add i64 %184, %.v
  store i64 %213, i64* %PC, align 8, !tbaa !2428
  br i1 %212, label %block_4006b7, label %block_400715

block_4006ed:                                     ; preds = %block_4006b7
  %214 = add i64 %147, 3
  store i64 %214, i64* %PC, align 8
  %215 = inttoptr i64 %.pre16 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2112) to i32*), align 16
  %218 = xor i32 %217, %216
  %219 = zext i32 %218 to i64
  store i64 %219, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  %220 = and i32 %218, 255
  %221 = tail call i32 @llvm.ctpop.i32(i32 %220) #12
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  %224 = xor i8 %223, 1
  store i8 %224, i8* %19, align 1, !tbaa !2446
  %225 = icmp eq i32 %218, 0
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %21, align 1, !tbaa !2448
  %227 = lshr i32 %218, 31
  %228 = trunc i32 %227 to i8
  store i8 %228, i8* %22, align 1, !tbaa !2449
  store i8 0, i8* %23, align 1, !tbaa !2450
  store i8 0, i8* %20, align 1, !tbaa !2447
  %229 = add i64 %147, 17
  store i64 %229, i64* %PC, align 8
  store i32 %218, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2112) to i32*), align 16
  br label %block_4006fe

block_4007ab:                                     ; preds = %block_40078d, %block_40075e
  %230 = phi i64 [ %.pre15, %block_40078d ], [ %84, %block_40075e ]
  %231 = load i64, i64* %RBP, align 8
  %232 = add i64 %231, -4
  %233 = add i64 %230, 3
  store i64 %233, i64* %PC, align 8
  %234 = inttoptr i64 %232 to i32*
  %235 = load i32, i32* %234, align 4
  %236 = zext i32 %235 to i64
  store i64 %236, i64* %RAX, align 8, !tbaa !2428
  %237 = add i64 %230, 7
  store i64 %237, i64* %PC, align 8
  %238 = load i32, i32* %234, align 4
  %239 = sext i32 %238 to i64
  store i64 %239, i64* %RCX, align 8, !tbaa !2428
  %240 = shl nsw i64 %239, 2
  %241 = add i64 %240, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %242 = add i64 %230, 15
  store i64 %242, i64* %PC, align 8
  %243 = inttoptr i64 %241 to i32*
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  store i64 %245, i64* %RCX, align 8, !tbaa !2428
  %246 = shl nsw i64 %245, 2
  %247 = add i64 %246, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %248 = add i64 %230, 22
  store i64 %248, i64* %PC, align 8
  %249 = inttoptr i64 %247 to i32*
  store i32 %235, i32* %249, align 4
  %250 = load i64, i64* %RBP, align 8
  %251 = add i64 %250, -4
  %252 = load i64, i64* %PC, align 8
  %253 = add i64 %252, 3
  store i64 %253, i64* %PC, align 8
  %254 = inttoptr i64 %251 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = add i32 %255, 1
  %257 = zext i32 %256 to i64
  store i64 %257, i64* %RAX, align 8, !tbaa !2428
  %258 = icmp eq i32 %255, -1
  %259 = icmp eq i32 %256, 0
  %260 = or i1 %258, %259
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %18, align 1, !tbaa !2432
  %262 = and i32 %256, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262) #12
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %19, align 1, !tbaa !2446
  %267 = xor i32 %256, %255
  %268 = lshr i32 %267, 4
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  store i8 %270, i8* %20, align 1, !tbaa !2447
  %271 = zext i1 %259 to i8
  store i8 %271, i8* %21, align 1, !tbaa !2448
  %272 = lshr i32 %256, 31
  %273 = trunc i32 %272 to i8
  store i8 %273, i8* %22, align 1, !tbaa !2449
  %274 = lshr i32 %255, 31
  %275 = xor i32 %272, %274
  %276 = add nuw nsw i32 %275, %272
  %277 = icmp eq i32 %276, 2
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %23, align 1, !tbaa !2450
  %279 = add i64 %252, 9
  store i64 %279, i64* %PC, align 8
  store i32 %256, i32* %254, align 4
  %280 = load i64, i64* %PC, align 8
  %281 = add i64 %280, -146
  store i64 %281, i64* %PC, align 8, !tbaa !2428
  br label %block_400738

block_400738:                                     ; preds = %block_4007ab, %block_400715
  %282 = phi i64 [ %281, %block_4007ab ], [ %.pre14, %block_400715 ]
  %283 = load i64, i64* %RBP, align 8
  %284 = add i64 %283, -4
  %285 = add i64 %282, 7
  store i64 %285, i64* %PC, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = add i32 %287, -255
  %289 = icmp ult i32 %287, 255
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %18, align 1, !tbaa !2432
  %291 = and i32 %288, 255
  %292 = tail call i32 @llvm.ctpop.i32(i32 %291) #12
  %293 = trunc i32 %292 to i8
  %294 = and i8 %293, 1
  %295 = xor i8 %294, 1
  store i8 %295, i8* %19, align 1, !tbaa !2446
  %296 = xor i32 %287, 16
  %297 = xor i32 %296, %288
  %298 = lshr i32 %297, 4
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  store i8 %300, i8* %20, align 1, !tbaa !2447
  %301 = icmp eq i32 %288, 0
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %21, align 1, !tbaa !2448
  %303 = lshr i32 %288, 31
  %304 = trunc i32 %303 to i8
  store i8 %304, i8* %22, align 1, !tbaa !2449
  %305 = lshr i32 %287, 31
  %306 = xor i32 %303, %305
  %307 = add nuw nsw i32 %306, %305
  %308 = icmp eq i32 %307, 2
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %23, align 1, !tbaa !2450
  %310 = icmp ne i8 %304, 0
  %311 = xor i1 %310, %308
  %.v19 = select i1 %311, i64 13, i64 151
  %312 = add i64 %282, %.v19
  store i64 %312, i64* %PC, align 8, !tbaa !2428
  br i1 %311, label %block_400745, label %block_4007cf

block_400745:                                     ; preds = %block_400738
  %313 = add i64 %312, 3
  store i64 %313, i64* %PC, align 8
  %314 = load i32, i32* %286, align 4
  %315 = add i32 %314, -1
  %316 = zext i32 %315 to i64
  store i64 %316, i64* %RAX, align 8, !tbaa !2428
  %317 = icmp eq i32 %314, 0
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %18, align 1, !tbaa !2432
  %319 = and i32 %315, 255
  %320 = tail call i32 @llvm.ctpop.i32(i32 %319) #12
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  %323 = xor i8 %322, 1
  store i8 %323, i8* %19, align 1, !tbaa !2446
  %324 = xor i32 %315, %314
  %325 = lshr i32 %324, 4
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  store i8 %327, i8* %20, align 1, !tbaa !2447
  %328 = icmp eq i32 %315, 0
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %21, align 1, !tbaa !2448
  %330 = lshr i32 %315, 31
  %331 = trunc i32 %330 to i8
  store i8 %331, i8* %22, align 1, !tbaa !2449
  %332 = lshr i32 %314, 31
  %333 = xor i32 %330, %332
  %334 = add nuw nsw i32 %333, %332
  %335 = icmp eq i32 %334, 2
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %23, align 1, !tbaa !2450
  %337 = sext i32 %315 to i64
  store i64 %337, i64* %RCX, align 8, !tbaa !2428
  %338 = shl nsw i64 %337, 2
  %339 = add i64 %338, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %340 = add i64 %312, 16
  store i64 %340, i64* %PC, align 8
  %341 = inttoptr i64 %339 to i32*
  %342 = load i32, i32* %341, align 4
  %343 = zext i32 %342 to i64
  store i64 %343, i64* %RAX, align 8, !tbaa !2428
  %344 = add i64 %283, -8
  %345 = add i64 %312, 19
  store i64 %345, i64* %PC, align 8
  %346 = inttoptr i64 %344 to i32*
  %347 = load i32, i32* %346, align 4
  %348 = sub i32 %342, %347
  %349 = icmp ult i32 %342, %347
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %18, align 1, !tbaa !2432
  %351 = and i32 %348, 255
  %352 = tail call i32 @llvm.ctpop.i32(i32 %351) #12
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = xor i8 %354, 1
  store i8 %355, i8* %19, align 1, !tbaa !2446
  %356 = xor i32 %347, %342
  %357 = xor i32 %356, %348
  %358 = lshr i32 %357, 4
  %359 = trunc i32 %358 to i8
  %360 = and i8 %359, 1
  store i8 %360, i8* %20, align 1, !tbaa !2447
  %361 = icmp eq i32 %348, 0
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %21, align 1, !tbaa !2448
  %363 = lshr i32 %348, 31
  %364 = trunc i32 %363 to i8
  store i8 %364, i8* %22, align 1, !tbaa !2449
  %365 = lshr i32 %342, 31
  %366 = lshr i32 %347, 31
  %367 = xor i32 %366, %365
  %368 = xor i32 %363, %365
  %369 = add nuw nsw i32 %368, %367
  %370 = icmp eq i32 %369, 2
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %23, align 1, !tbaa !2450
  %372 = icmp ne i8 %364, 0
  %373 = xor i1 %372, %370
  %.v20 = select i1 %373, i64 72, i64 25
  %374 = add i64 %312, %.v20
  store i64 %374, i64* %PC, align 8, !tbaa !2428
  br i1 %373, label %block_40078d, label %block_40075e

block_40078d:                                     ; preds = %block_400745
  %375 = add i64 %374, 3
  store i64 %375, i64* %PC, align 8
  %376 = load i32, i32* %286, align 4
  %377 = add i32 %376, -1
  %378 = zext i32 %377 to i64
  store i64 %378, i64* %RAX, align 8, !tbaa !2428
  %379 = icmp eq i32 %376, 0
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %18, align 1, !tbaa !2432
  %381 = and i32 %377, 255
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381) #12
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %19, align 1, !tbaa !2446
  %386 = xor i32 %377, %376
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %20, align 1, !tbaa !2447
  %390 = icmp eq i32 %377, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %21, align 1, !tbaa !2448
  %392 = lshr i32 %377, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %22, align 1, !tbaa !2449
  %394 = lshr i32 %376, 31
  %395 = xor i32 %392, %394
  %396 = add nuw nsw i32 %395, %394
  %397 = icmp eq i32 %396, 2
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %23, align 1, !tbaa !2450
  %399 = sext i32 %377 to i64
  store i64 %399, i64* %RCX, align 8, !tbaa !2428
  %400 = shl nsw i64 %399, 2
  %401 = add i64 %400, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %402 = add i64 %374, 16
  store i64 %402, i64* %PC, align 8
  %403 = inttoptr i64 %401 to i32*
  %404 = load i32, i32* %403, align 4
  %405 = shl i32 %404, 1
  %406 = icmp slt i32 %404, 0
  %407 = icmp slt i32 %405, 0
  %408 = xor i1 %406, %407
  %409 = zext i32 %405 to i64
  store i64 %409, i64* %RAX, align 8, !tbaa !2428
  %.lobit5 = lshr i32 %404, 31
  %410 = trunc i32 %.lobit5 to i8
  store i8 %410, i8* %18, align 1, !tbaa !2451
  %411 = and i32 %405, 254
  %412 = tail call i32 @llvm.ctpop.i32(i32 %411) #12
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  %415 = xor i8 %414, 1
  store i8 %415, i8* %19, align 1, !tbaa !2451
  store i8 0, i8* %20, align 1, !tbaa !2451
  %416 = icmp eq i32 %405, 0
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %21, align 1, !tbaa !2451
  %418 = lshr i32 %404, 30
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  store i8 %420, i8* %22, align 1, !tbaa !2451
  %421 = zext i1 %408 to i8
  store i8 %421, i8* %23, align 1, !tbaa !2451
  %422 = add i64 %374, 23
  store i64 %422, i64* %PC, align 8
  %423 = load i32, i32* %286, align 4
  %424 = sext i32 %423 to i64
  store i64 %424, i64* %RCX, align 8, !tbaa !2428
  %425 = shl nsw i64 %424, 2
  %426 = add i64 %425, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %427 = add i64 %374, 30
  store i64 %427, i64* %PC, align 8
  %428 = inttoptr i64 %426 to i32*
  store i32 %405, i32* %428, align 4
  %.pre15 = load i64, i64* %PC, align 8
  br label %block_4007ab

block_4006fe:                                     ; preds = %block_4006b7.block_4006fe_crit_edge, %block_4006ed
  %.pre-phi18 = phi i32* [ %.pre17, %block_4006b7.block_4006fe_crit_edge ], [ %215, %block_4006ed ]
  %429 = phi i64 [ %147, %block_4006b7.block_4006fe_crit_edge ], [ %229, %block_4006ed ]
  %430 = add i64 %429, 3
  store i64 %430, i64* %PC, align 8
  %431 = load i32, i32* %.pre-phi18, align 4
  %432 = shl i32 %431, 1
  %433 = icmp slt i32 %431, 0
  %434 = icmp slt i32 %432, 0
  %435 = xor i1 %433, %434
  %436 = zext i32 %432 to i64
  store i64 %436, i64* %RAX, align 8, !tbaa !2428
  %.lobit = lshr i32 %431, 31
  %437 = trunc i32 %.lobit to i8
  store i8 %437, i8* %18, align 1, !tbaa !2451
  %438 = and i32 %432, 254
  %439 = tail call i32 @llvm.ctpop.i32(i32 %438) #12
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  %442 = xor i8 %441, 1
  store i8 %442, i8* %19, align 1, !tbaa !2451
  store i8 0, i8* %20, align 1, !tbaa !2451
  %443 = icmp eq i32 %432, 0
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %21, align 1, !tbaa !2451
  %445 = lshr i32 %431, 30
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  store i8 %447, i8* %22, align 1, !tbaa !2451
  %448 = zext i1 %435 to i8
  store i8 %448, i8* %23, align 1, !tbaa !2451
  %449 = add i64 %429, 9
  store i64 %449, i64* %PC, align 8
  store i32 %432, i32* %.pre-phi18, align 4
  %450 = load i64, i64* %RBP, align 8
  %451 = add i64 %450, -4
  %452 = load i64, i64* %PC, align 8
  %453 = add i64 %452, 3
  store i64 %453, i64* %PC, align 8
  %454 = inttoptr i64 %451 to i32*
  %455 = load i32, i32* %454, align 4
  %456 = add i32 %455, 1
  %457 = zext i32 %456 to i64
  store i64 %457, i64* %RAX, align 8, !tbaa !2428
  %458 = icmp eq i32 %455, -1
  %459 = icmp eq i32 %456, 0
  %460 = or i1 %458, %459
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %18, align 1, !tbaa !2432
  %462 = and i32 %456, 255
  %463 = tail call i32 @llvm.ctpop.i32(i32 %462) #12
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  %466 = xor i8 %465, 1
  store i8 %466, i8* %19, align 1, !tbaa !2446
  %467 = xor i32 %456, %455
  %468 = lshr i32 %467, 4
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  store i8 %470, i8* %20, align 1, !tbaa !2447
  %471 = zext i1 %459 to i8
  store i8 %471, i8* %21, align 1, !tbaa !2448
  %472 = lshr i32 %456, 31
  %473 = trunc i32 %472 to i8
  store i8 %473, i8* %22, align 1, !tbaa !2449
  %474 = lshr i32 %455, 31
  %475 = xor i32 %472, %474
  %476 = add nuw nsw i32 %475, %472
  %477 = icmp eq i32 %476, 2
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %23, align 1, !tbaa !2450
  %479 = add i64 %452, 9
  store i64 %479, i64* %PC, align 8
  store i32 %456, i32* %454, align 4
  %480 = load i64, i64* %PC, align 8
  %481 = add i64 %480, -99
  store i64 %481, i64* %PC, align 8, !tbaa !2428
  br label %block_4006ad
}

; Function Attrs: noinline
define %struct.Memory* @sub_400470_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400498:
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
  store i64 6303832, i64* %RAX, align 8, !tbaa !2428
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

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_401ce0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_401ce0:
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
define %struct.Memory* @sub_4007e0_gen_poly(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4007e0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %5 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSI = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
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
  store i32 2, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104) to i32*), align 16
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3108) to i32*), align 4
  %13 = add i64 %9, -12
  %14 = add i64 %12, 32
  store i64 %14, i64* %PC, align 8
  %15 = inttoptr i64 %13 to i32*
  store i32 2, i32* %15, align 4
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_400801

block_40083f:                                     ; preds = %block_40082d
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %23 = add i64 %284, 8
  store i64 %23, i64* %PC, align 8
  %24 = load i32, i32* %391, align 4
  %25 = add i32 %24, -1
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RCX, align 8, !tbaa !2428
  %27 = icmp eq i32 %24, 0
  %28 = zext i1 %27 to i8
  store i8 %28, i8* %16, align 1, !tbaa !2432
  %29 = and i32 %25, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29) #12
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  store i8 %33, i8* %17, align 1, !tbaa !2446
  %34 = xor i32 %25, %24
  %35 = lshr i32 %34, 4
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  store i8 %37, i8* %18, align 1, !tbaa !2447
  %38 = icmp eq i32 %25, 0
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %19, align 1, !tbaa !2448
  %40 = lshr i32 %25, 31
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %20, align 1, !tbaa !2449
  %42 = lshr i32 %24, 31
  %43 = xor i32 %40, %42
  %44 = add nuw nsw i32 %43, %42
  %45 = icmp eq i32 %44, 2
  %46 = zext i1 %45 to i8
  store i8 %46, i8* %21, align 1, !tbaa !2450
  %47 = sext i32 %25 to i64
  store i64 %47, i64* %RDX, align 8, !tbaa !2428
  %48 = shl nsw i64 %47, 2
  %49 = add i64 %48, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %50 = add i64 %284, 21
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %49 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = zext i32 %52 to i64
  store i64 %53, i64* %RCX, align 8, !tbaa !2428
  %54 = add i64 %284, 25
  store i64 %54, i64* %PC, align 8
  %55 = load i32, i32* %391, align 4
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %RDX, align 8, !tbaa !2428
  %57 = shl nsw i64 %56, 2
  %58 = add i64 %57, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %59 = add i64 %284, 33
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %58 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %RDX, align 8, !tbaa !2428
  %63 = shl nsw i64 %62, 2
  %64 = add i64 %63, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %65 = add i64 %284, 40
  store i64 %65, i64* %PC, align 8
  %66 = inttoptr i64 %64 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = zext i32 %67 to i64
  store i64 %68, i64* %RSI, align 8, !tbaa !2428
  %69 = add i64 %388, -4
  %70 = add i64 %284, 43
  store i64 %70, i64* %PC, align 8
  %71 = inttoptr i64 %69 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = add i32 %72, %67
  %74 = zext i32 %73 to i64
  store i64 %74, i64* %RSI, align 8, !tbaa !2428
  %75 = icmp ult i32 %73, %67
  %76 = icmp ult i32 %73, %72
  %77 = or i1 %75, %76
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %16, align 1, !tbaa !2432
  %79 = and i32 %73, 255
  %80 = tail call i32 @llvm.ctpop.i32(i32 %79) #12
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  %83 = xor i8 %82, 1
  store i8 %83, i8* %17, align 1, !tbaa !2446
  %84 = xor i32 %72, %67
  %85 = xor i32 %84, %73
  %86 = lshr i32 %85, 4
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  store i8 %88, i8* %18, align 1, !tbaa !2447
  %89 = icmp eq i32 %73, 0
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %19, align 1, !tbaa !2448
  %91 = lshr i32 %73, 31
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %20, align 1, !tbaa !2449
  %93 = lshr i32 %67, 31
  %94 = lshr i32 %72, 31
  %95 = xor i32 %91, %93
  %96 = xor i32 %91, %94
  %97 = add nuw nsw i32 %95, %96
  %98 = icmp eq i32 %97, 2
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %21, align 1, !tbaa !2450
  %100 = load i64, i64* %RBP, align 8
  %101 = add i64 %100, -12
  %102 = load i32, i32* %EAX, align 4
  %103 = add i64 %284, 46
  store i64 %103, i64* %PC, align 8
  %104 = inttoptr i64 %101 to i32*
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %ESI, align 4
  %106 = zext i32 %105 to i64
  %107 = load i64, i64* %PC, align 8
  store i64 %106, i64* %RAX, align 8, !tbaa !2428
  %108 = sext i32 %105 to i64
  %109 = lshr i64 %108, 32
  store i64 %109, i64* %22, align 8, !tbaa !2428
  %110 = load i64, i64* %RBP, align 8
  %111 = add i64 %110, -12
  %112 = add i64 %107, 6
  store i64 %112, i64* %PC, align 8
  %113 = inttoptr i64 %111 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RSI, align 8, !tbaa !2428
  %116 = add i64 %107, 8
  store i64 %116, i64* %PC, align 8
  %117 = sext i32 %114 to i64
  %118 = shl nuw i64 %109, 32
  %119 = or i64 %118, %106
  %120 = sdiv i64 %119, %117
  %121 = shl i64 %120, 32
  %122 = ashr exact i64 %121, 32
  %123 = icmp eq i64 %120, %122
  br i1 %123, label %126, label %124

; <label>:124:                                    ; preds = %block_40083f
  %125 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %116, %struct.Memory* %MEMORY.2) #13
  %.pre17 = load i32, i32* %EDX, align 4
  %.pre18 = load i64, i64* %PC, align 8
  %.pre19 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:126:                                    ; preds = %block_40083f
  %127 = srem i64 %119, %117
  %128 = and i64 %120, 4294967295
  store i64 %128, i64* %RAX, align 8, !tbaa !2428
  %129 = and i64 %127, 4294967295
  store i64 %129, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %17, align 1, !tbaa !2446
  store i8 0, i8* %18, align 1, !tbaa !2447
  store i8 0, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %21, align 1, !tbaa !2450
  %130 = trunc i64 %127 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %126, %124
  %131 = phi i64 [ %.pre19, %124 ], [ %110, %126 ]
  %132 = phi i64 [ %.pre18, %124 ], [ %116, %126 ]
  %133 = phi i32 [ %.pre17, %124 ], [ %130, %126 ]
  %134 = phi %struct.Memory* [ %125, %124 ], [ %MEMORY.2, %126 ]
  %135 = sext i32 %133 to i64
  store i64 %135, i64* %RDI, align 8, !tbaa !2428
  %136 = load i64, i64* %RCX, align 8
  %137 = shl nsw i64 %135, 2
  %138 = add i64 %137, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %139 = add i64 %132, 10
  store i64 %139, i64* %PC, align 8
  %140 = trunc i64 %136 to i32
  %141 = inttoptr i64 %138 to i32*
  %142 = load i32, i32* %141, align 4
  %143 = xor i32 %142, %140
  %144 = zext i32 %143 to i64
  store i64 %144, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %145 = and i32 %143, 255
  %146 = tail call i32 @llvm.ctpop.i32(i32 %145) #12
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  store i8 %149, i8* %17, align 1, !tbaa !2446
  %150 = icmp eq i32 %143, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %19, align 1, !tbaa !2448
  %152 = lshr i32 %143, 31
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %21, align 1, !tbaa !2450
  store i8 0, i8* %18, align 1, !tbaa !2447
  %154 = add i64 %131, -8
  %155 = add i64 %132, 14
  store i64 %155, i64* %PC, align 8
  %156 = inttoptr i64 %154 to i32*
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  store i64 %158, i64* %RDI, align 8, !tbaa !2428
  %159 = shl nsw i64 %158, 2
  %160 = add i64 %159, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %161 = add i64 %132, 21
  store i64 %161, i64* %PC, align 8
  %162 = inttoptr i64 %160 to i32*
  store i32 %143, i32* %162, align 4
  %163 = load i64, i64* %PC, align 8
  %164 = add i64 %163, 32
  store i64 %164, i64* %PC, align 8, !tbaa !2428
  br label %block_4008aa

block_4008fe:                                     ; preds = %block_400801
  %165 = add i64 %435, 7
  store i64 %165, i64* %PC, align 8
  store i32 0, i32* %409, align 4
  %.pre24 = load i64, i64* %PC, align 8
  br label %block_400905

block_40090f:                                     ; preds = %block_400905
  %166 = add i64 %386, 4
  store i64 %166, i64* %PC, align 8
  %167 = load i32, i32* %360, align 4
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %RAX, align 8, !tbaa !2428
  %169 = shl nsw i64 %168, 2
  %170 = add i64 %169, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %171 = add i64 %386, 12
  store i64 %171, i64* %PC, align 8
  %172 = inttoptr i64 %170 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  store i64 %174, i64* %RAX, align 8, !tbaa !2428
  %175 = shl nsw i64 %174, 2
  %176 = add i64 %175, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %177 = add i64 %386, 19
  store i64 %177, i64* %PC, align 8
  %178 = inttoptr i64 %176 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = zext i32 %179 to i64
  store i64 %180, i64* %RCX, align 8, !tbaa !2428
  %181 = add i64 %386, 23
  store i64 %181, i64* %PC, align 8
  %182 = load i32, i32* %360, align 4
  %183 = sext i32 %182 to i64
  store i64 %183, i64* %RAX, align 8, !tbaa !2428
  %184 = shl nsw i64 %183, 2
  %185 = add i64 %184, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %186 = add i64 %386, 30
  store i64 %186, i64* %PC, align 8
  %187 = inttoptr i64 %185 to i32*
  store i32 %179, i32* %187, align 4
  %188 = load i64, i64* %RBP, align 8
  %189 = add i64 %188, -4
  %190 = load i64, i64* %PC, align 8
  %191 = add i64 %190, 3
  store i64 %191, i64* %PC, align 8
  %192 = inttoptr i64 %189 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = add i32 %193, 1
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RAX, align 8, !tbaa !2428
  %196 = icmp eq i32 %193, -1
  %197 = icmp eq i32 %194, 0
  %198 = or i1 %196, %197
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %16, align 1, !tbaa !2432
  %200 = and i32 %194, 255
  %201 = tail call i32 @llvm.ctpop.i32(i32 %200) #12
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  %204 = xor i8 %203, 1
  store i8 %204, i8* %17, align 1, !tbaa !2446
  %205 = xor i32 %194, %193
  %206 = lshr i32 %205, 4
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  store i8 %208, i8* %18, align 1, !tbaa !2447
  %209 = zext i1 %197 to i8
  store i8 %209, i8* %19, align 1, !tbaa !2448
  %210 = lshr i32 %194, 31
  %211 = trunc i32 %210 to i8
  store i8 %211, i8* %20, align 1, !tbaa !2449
  %212 = lshr i32 %193, 31
  %213 = xor i32 %210, %212
  %214 = add nuw nsw i32 %213, %210
  %215 = icmp eq i32 %214, 2
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %21, align 1, !tbaa !2450
  %217 = add i64 %190, 9
  store i64 %217, i64* %PC, align 8
  store i32 %194, i32* %192, align 4
  %218 = load i64, i64* %PC, align 8
  %219 = add i64 %218, -49
  store i64 %219, i64* %PC, align 8, !tbaa !2428
  br label %block_400905

block_40093b:                                     ; preds = %block_400905
  %220 = add i64 %386, 1
  store i64 %220, i64* %PC, align 8
  %221 = load i64, i64* %8, align 8, !tbaa !2428
  %222 = add i64 %221, 8
  %223 = inttoptr i64 %221 to i64*
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %RBP, align 8, !tbaa !2428
  store i64 %222, i64* %8, align 8, !tbaa !2428
  %225 = add i64 %386, 2
  store i64 %225, i64* %PC, align 8
  %226 = inttoptr i64 %222 to i64*
  %227 = load i64, i64* %226, align 8
  store i64 %227, i64* %PC, align 8, !tbaa !2428
  %228 = add i64 %221, 16
  store i64 %228, i64* %8, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.3

block_40088f:                                     ; preds = %block_40082d
  %229 = add i64 %284, 3
  store i64 %229, i64* %PC, align 8
  %230 = load i32, i32* %391, align 4
  %231 = add i32 %230, -1
  %232 = zext i32 %231 to i64
  store i64 %232, i64* %RAX, align 8, !tbaa !2428
  %233 = icmp eq i32 %230, 0
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %16, align 1, !tbaa !2432
  %235 = and i32 %231, 255
  %236 = tail call i32 @llvm.ctpop.i32(i32 %235) #12
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  %239 = xor i8 %238, 1
  store i8 %239, i8* %17, align 1, !tbaa !2446
  %240 = xor i32 %231, %230
  %241 = lshr i32 %240, 4
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  store i8 %243, i8* %18, align 1, !tbaa !2447
  %244 = icmp eq i32 %231, 0
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %19, align 1, !tbaa !2448
  %246 = lshr i32 %231, 31
  %247 = trunc i32 %246 to i8
  store i8 %247, i8* %20, align 1, !tbaa !2449
  %248 = lshr i32 %230, 31
  %249 = xor i32 %246, %248
  %250 = add nuw nsw i32 %249, %248
  %251 = icmp eq i32 %250, 2
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %21, align 1, !tbaa !2450
  %253 = sext i32 %231 to i64
  store i64 %253, i64* %RCX, align 8, !tbaa !2428
  %254 = shl nsw i64 %253, 2
  %255 = add i64 %254, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %256 = add i64 %284, 16
  store i64 %256, i64* %PC, align 8
  %257 = inttoptr i64 %255 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = zext i32 %258 to i64
  store i64 %259, i64* %RAX, align 8, !tbaa !2428
  %260 = add i64 %284, 20
  store i64 %260, i64* %PC, align 8
  %261 = load i32, i32* %391, align 4
  %262 = sext i32 %261 to i64
  store i64 %262, i64* %RCX, align 8, !tbaa !2428
  %263 = shl nsw i64 %262, 2
  %264 = add i64 %263, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %265 = add i64 %284, 27
  store i64 %265, i64* %PC, align 8
  %266 = inttoptr i64 %264 to i32*
  store i32 %258, i32* %266, align 4
  %.pre20 = load i64, i64* %PC, align 8
  br label %block_4008aa

block_40082d:                                     ; preds = %block_400823
  %267 = add i64 %404, 4
  store i64 %267, i64* %PC, align 8
  %268 = load i32, i32* %391, align 4
  %269 = sext i32 %268 to i64
  store i64 %269, i64* %RAX, align 8, !tbaa !2428
  %270 = shl nsw i64 %269, 2
  %271 = add i64 %270, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %272 = add i64 %404, 12
  store i64 %272, i64* %PC, align 8
  %273 = inttoptr i64 %271 to i32*
  %274 = load i32, i32* %273, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %275 = and i32 %274, 255
  %276 = tail call i32 @llvm.ctpop.i32(i32 %275) #12
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  %279 = xor i8 %278, 1
  store i8 %279, i8* %17, align 1, !tbaa !2446
  store i8 0, i8* %18, align 1, !tbaa !2447
  %280 = icmp eq i32 %274, 0
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %19, align 1, !tbaa !2448
  %282 = lshr i32 %274, 31
  %283 = trunc i32 %282 to i8
  store i8 %283, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %21, align 1, !tbaa !2450
  %.v28 = select i1 %280, i64 98, i64 18
  %284 = add i64 %404, %.v28
  store i64 %284, i64* %PC, align 8, !tbaa !2428
  br i1 %280, label %block_40088f, label %block_40083f

block_40080b:                                     ; preds = %block_400801
  %285 = add i64 %435, 4
  store i64 %285, i64* %PC, align 8
  %286 = load i32, i32* %409, align 4
  %287 = sext i32 %286 to i64
  store i64 %287, i64* %RAX, align 8, !tbaa !2428
  %288 = shl nsw i64 %287, 2
  %289 = add i64 %288, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %290 = add i64 %435, 15
  store i64 %290, i64* %PC, align 8
  %291 = inttoptr i64 %289 to i32*
  store i32 1, i32* %291, align 4
  %292 = load i64, i64* %RBP, align 8
  %293 = add i64 %292, -4
  %294 = load i64, i64* %PC, align 8
  %295 = add i64 %294, 3
  store i64 %295, i64* %PC, align 8
  %296 = inttoptr i64 %293 to i32*
  %297 = load i32, i32* %296, align 4
  %298 = add i32 %297, -1
  %299 = zext i32 %298 to i64
  store i64 %299, i64* %RCX, align 8, !tbaa !2428
  %300 = icmp eq i32 %297, 0
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %16, align 1, !tbaa !2432
  %302 = and i32 %298, 255
  %303 = tail call i32 @llvm.ctpop.i32(i32 %302) #12
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = xor i8 %305, 1
  store i8 %306, i8* %17, align 1, !tbaa !2446
  %307 = xor i32 %298, %297
  %308 = lshr i32 %307, 4
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  store i8 %310, i8* %18, align 1, !tbaa !2447
  %311 = icmp eq i32 %298, 0
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %19, align 1, !tbaa !2448
  %313 = lshr i32 %298, 31
  %314 = trunc i32 %313 to i8
  store i8 %314, i8* %20, align 1, !tbaa !2449
  %315 = lshr i32 %297, 31
  %316 = xor i32 %313, %315
  %317 = add nuw nsw i32 %316, %315
  %318 = icmp eq i32 %317, 2
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %21, align 1, !tbaa !2450
  %320 = add i64 %292, -8
  %321 = add i64 %294, 9
  store i64 %321, i64* %PC, align 8
  %322 = inttoptr i64 %320 to i32*
  store i32 %298, i32* %322, align 4
  %.pre16 = load i64, i64* %PC, align 8
  br label %block_400823

block_4008aa:                                     ; preds = %block_40088f, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1
  %323 = phi i64 [ %.pre20, %block_40088f ], [ %164, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_40088f ], [ %134, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %324 = load i64, i64* %RBP, align 8
  %325 = add i64 %324, -8
  %326 = add i64 %323, 8
  store i64 %326, i64* %PC, align 8
  %327 = inttoptr i64 %325 to i32*
  %328 = load i32, i32* %327, align 4
  %329 = add i32 %328, -1
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RAX, align 8, !tbaa !2428
  %331 = icmp ne i32 %328, 0
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %16, align 1, !tbaa !2432
  %333 = and i32 %329, 255
  %334 = tail call i32 @llvm.ctpop.i32(i32 %333) #12
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  %337 = xor i8 %336, 1
  store i8 %337, i8* %17, align 1, !tbaa !2446
  %338 = xor i32 %328, 16
  %339 = xor i32 %338, %329
  %340 = lshr i32 %339, 4
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  store i8 %342, i8* %18, align 1, !tbaa !2447
  %343 = icmp eq i32 %329, 0
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %19, align 1, !tbaa !2448
  %345 = lshr i32 %329, 31
  %346 = trunc i32 %345 to i8
  store i8 %346, i8* %20, align 1, !tbaa !2449
  %347 = lshr i32 %328, 31
  %348 = xor i32 %345, %347
  %349 = xor i32 %345, 1
  %350 = add nuw nsw i32 %348, %349
  %351 = icmp eq i32 %350, 2
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %21, align 1, !tbaa !2450
  %353 = add i64 %323, 14
  store i64 %353, i64* %PC, align 8
  store i32 %329, i32* %327, align 4
  %354 = load i64, i64* %PC, align 8
  %355 = add i64 %354, -149
  store i64 %355, i64* %PC, align 8, !tbaa !2428
  br label %block_400823

block_400905:                                     ; preds = %block_40090f, %block_4008fe
  %356 = phi i64 [ %219, %block_40090f ], [ %.pre24, %block_4008fe ]
  %357 = load i64, i64* %RBP, align 8
  %358 = add i64 %357, -4
  %359 = add i64 %356, 4
  store i64 %359, i64* %PC, align 8
  %360 = inttoptr i64 %358 to i32*
  %361 = load i32, i32* %360, align 4
  %362 = add i32 %361, -16
  %363 = icmp ult i32 %361, 16
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %16, align 1, !tbaa !2432
  %365 = and i32 %362, 255
  %366 = tail call i32 @llvm.ctpop.i32(i32 %365) #12
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  %369 = xor i8 %368, 1
  store i8 %369, i8* %17, align 1, !tbaa !2446
  %370 = xor i32 %361, 16
  %371 = xor i32 %370, %362
  %372 = lshr i32 %371, 4
  %373 = trunc i32 %372 to i8
  %374 = and i8 %373, 1
  store i8 %374, i8* %18, align 1, !tbaa !2447
  %375 = icmp eq i32 %362, 0
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %19, align 1, !tbaa !2448
  %377 = lshr i32 %362, 31
  %378 = trunc i32 %377 to i8
  store i8 %378, i8* %20, align 1, !tbaa !2449
  %379 = lshr i32 %361, 31
  %380 = xor i32 %377, %379
  %381 = add nuw nsw i32 %380, %379
  %382 = icmp eq i32 %381, 2
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %21, align 1, !tbaa !2450
  %384 = icmp ne i8 %378, 0
  %385 = xor i1 %384, %382
  %.demorgan25 = or i1 %375, %385
  %.v26 = select i1 %.demorgan25, i64 10, i64 54
  %386 = add i64 %356, %.v26
  store i64 %386, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan25, label %block_40090f, label %block_40093b

block_400823:                                     ; preds = %block_4008aa, %block_40080b
  %387 = phi i64 [ %.pre16, %block_40080b ], [ %355, %block_4008aa ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.3, %block_40080b ], [ %MEMORY.0, %block_4008aa ]
  %388 = load i64, i64* %RBP, align 8
  %389 = add i64 %388, -8
  %390 = add i64 %387, 4
  store i64 %390, i64* %PC, align 8
  %391 = inttoptr i64 %389 to i32*
  %392 = load i32, i32* %391, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %393 = and i32 %392, 255
  %394 = tail call i32 @llvm.ctpop.i32(i32 %393) #12
  %395 = trunc i32 %394 to i8
  %396 = and i8 %395, 1
  %397 = xor i8 %396, 1
  store i8 %397, i8* %17, align 1, !tbaa !2446
  store i8 0, i8* %18, align 1, !tbaa !2447
  %398 = icmp eq i32 %392, 0
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %19, align 1, !tbaa !2448
  %400 = lshr i32 %392, 31
  %401 = trunc i32 %400 to i8
  store i8 %401, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %21, align 1, !tbaa !2450
  %402 = icmp ne i8 %401, 0
  %403 = or i1 %398, %402
  %.v27 = select i1 %403, i64 154, i64 10
  %404 = add i64 %387, %.v27
  store i64 %404, i64* %PC, align 8, !tbaa !2428
  br i1 %403, label %block_4008bd, label %block_40082d

block_400801:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_4007e0
  %405 = phi i64 [ %.pre, %block_4007e0 ], [ %544, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %MEMORY.3 = phi %struct.Memory* [ %2, %block_4007e0 ], [ %507, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %406 = load i64, i64* %RBP, align 8
  %407 = add i64 %406, -4
  %408 = add i64 %405, 4
  store i64 %408, i64* %PC, align 8
  %409 = inttoptr i64 %407 to i32*
  %410 = load i32, i32* %409, align 4
  %411 = add i32 %410, -16
  %412 = icmp ult i32 %410, 16
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %16, align 1, !tbaa !2432
  %414 = and i32 %411, 255
  %415 = tail call i32 @llvm.ctpop.i32(i32 %414) #12
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  %418 = xor i8 %417, 1
  store i8 %418, i8* %17, align 1, !tbaa !2446
  %419 = xor i32 %410, 16
  %420 = xor i32 %419, %411
  %421 = lshr i32 %420, 4
  %422 = trunc i32 %421 to i8
  %423 = and i8 %422, 1
  store i8 %423, i8* %18, align 1, !tbaa !2447
  %424 = icmp eq i32 %411, 0
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %19, align 1, !tbaa !2448
  %426 = lshr i32 %411, 31
  %427 = trunc i32 %426 to i8
  store i8 %427, i8* %20, align 1, !tbaa !2449
  %428 = lshr i32 %410, 31
  %429 = xor i32 %426, %428
  %430 = add nuw nsw i32 %429, %428
  %431 = icmp eq i32 %430, 2
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %21, align 1, !tbaa !2450
  %433 = icmp ne i8 %427, 0
  %434 = xor i1 %433, %431
  %.demorgan = or i1 %424, %434
  %.v = select i1 %.demorgan, i64 10, i64 253
  %435 = add i64 %405, %.v
  store i64 %435, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_40080b, label %block_4008fe

block_4008bd:                                     ; preds = %block_400823
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %436 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104) to i32*), align 16
  %437 = sext i32 %436 to i64
  store i64 %437, i64* %RCX, align 8, !tbaa !2428
  %438 = shl nsw i64 %437, 2
  %439 = add i64 %438, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %440 = add i64 %404, 20
  store i64 %440, i64* %PC, align 8
  %441 = inttoptr i64 %439 to i32*
  %442 = load i32, i32* %441, align 4
  %443 = zext i32 %442 to i64
  store i64 %443, i64* %RDX, align 8, !tbaa !2428
  %444 = add i64 %388, -4
  %445 = add i64 %404, 23
  store i64 %445, i64* %PC, align 8
  %446 = inttoptr i64 %444 to i32*
  %447 = load i32, i32* %446, align 4
  %448 = add i32 %447, %442
  %449 = zext i32 %448 to i64
  store i64 %449, i64* %RDX, align 8, !tbaa !2428
  %450 = icmp ult i32 %448, %442
  %451 = icmp ult i32 %448, %447
  %452 = or i1 %450, %451
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %16, align 1, !tbaa !2432
  %454 = and i32 %448, 255
  %455 = tail call i32 @llvm.ctpop.i32(i32 %454) #12
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  %458 = xor i8 %457, 1
  store i8 %458, i8* %17, align 1, !tbaa !2446
  %459 = xor i32 %447, %442
  %460 = xor i32 %459, %448
  %461 = lshr i32 %460, 4
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  store i8 %463, i8* %18, align 1, !tbaa !2447
  %464 = icmp eq i32 %448, 0
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %19, align 1, !tbaa !2448
  %466 = lshr i32 %448, 31
  %467 = trunc i32 %466 to i8
  store i8 %467, i8* %20, align 1, !tbaa !2449
  %468 = lshr i32 %442, 31
  %469 = lshr i32 %447, 31
  %470 = xor i32 %466, %468
  %471 = xor i32 %466, %469
  %472 = add nuw nsw i32 %470, %471
  %473 = icmp eq i32 %472, 2
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %21, align 1, !tbaa !2450
  %475 = add i64 %388, -16
  %476 = add i64 %404, 26
  store i64 %476, i64* %PC, align 8
  %477 = inttoptr i64 %475 to i32*
  store i32 255, i32* %477, align 4
  %478 = load i32, i32* %EDX, align 4
  %479 = zext i32 %478 to i64
  %480 = load i64, i64* %PC, align 8
  store i64 %479, i64* %RAX, align 8, !tbaa !2428
  %481 = sext i32 %478 to i64
  %482 = lshr i64 %481, 32
  store i64 %482, i64* %22, align 8, !tbaa !2428
  %483 = load i64, i64* %RBP, align 8
  %484 = add i64 %483, -16
  %485 = add i64 %480, 6
  store i64 %485, i64* %PC, align 8
  %486 = inttoptr i64 %484 to i32*
  %487 = load i32, i32* %486, align 4
  %488 = zext i32 %487 to i64
  store i64 %488, i64* %RSI, align 8, !tbaa !2428
  %489 = add i64 %480, 8
  store i64 %489, i64* %PC, align 8
  %490 = sext i32 %487 to i64
  %491 = shl nuw i64 %482, 32
  %492 = or i64 %491, %479
  %493 = sdiv i64 %492, %490
  %494 = shl i64 %493, 32
  %495 = ashr exact i64 %494, 32
  %496 = icmp eq i64 %493, %495
  br i1 %496, label %499, label %497

; <label>:497:                                    ; preds = %block_4008bd
  %498 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %489, %struct.Memory* %MEMORY.2) #13
  %.pre21 = load i32, i32* %EDX, align 4
  %.pre22 = load i64, i64* %PC, align 8
  %.pre23 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:499:                                    ; preds = %block_4008bd
  %500 = srem i64 %492, %490
  %501 = and i64 %493, 4294967295
  store i64 %501, i64* %RAX, align 8, !tbaa !2428
  %502 = and i64 %500, 4294967295
  store i64 %502, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %17, align 1, !tbaa !2446
  store i8 0, i8* %18, align 1, !tbaa !2447
  store i8 0, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %21, align 1, !tbaa !2450
  %503 = trunc i64 %500 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %499, %497
  %504 = phi i64 [ %.pre23, %497 ], [ %483, %499 ]
  %505 = phi i64 [ %.pre22, %497 ], [ %489, %499 ]
  %506 = phi i32 [ %.pre21, %497 ], [ %503, %499 ]
  %507 = phi %struct.Memory* [ %498, %497 ], [ %MEMORY.2, %499 ]
  %508 = sext i32 %506 to i64
  store i64 %508, i64* %RCX, align 8, !tbaa !2428
  %509 = shl nsw i64 %508, 2
  %510 = add i64 %509, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %511 = add i64 %505, 10
  store i64 %511, i64* %PC, align 8
  %512 = inttoptr i64 %510 to i32*
  %513 = load i32, i32* %512, align 4
  %514 = zext i32 %513 to i64
  store i64 %514, i64* %RDX, align 8, !tbaa !2428
  store i32 %513, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104) to i32*), align 16
  %515 = add i64 %504, -4
  %516 = add i64 %505, 20
  store i64 %516, i64* %PC, align 8
  %517 = inttoptr i64 %515 to i32*
  %518 = load i32, i32* %517, align 4
  %519 = add i32 %518, 1
  %520 = zext i32 %519 to i64
  store i64 %520, i64* %RAX, align 8, !tbaa !2428
  %521 = icmp eq i32 %518, -1
  %522 = icmp eq i32 %519, 0
  %523 = or i1 %521, %522
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %16, align 1, !tbaa !2432
  %525 = and i32 %519, 255
  %526 = tail call i32 @llvm.ctpop.i32(i32 %525) #12
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  %529 = xor i8 %528, 1
  store i8 %529, i8* %17, align 1, !tbaa !2446
  %530 = xor i32 %519, %518
  %531 = lshr i32 %530, 4
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  store i8 %533, i8* %18, align 1, !tbaa !2447
  %534 = zext i1 %522 to i8
  store i8 %534, i8* %19, align 1, !tbaa !2448
  %535 = lshr i32 %519, 31
  %536 = trunc i32 %535 to i8
  store i8 %536, i8* %20, align 1, !tbaa !2449
  %537 = lshr i32 %518, 31
  %538 = xor i32 %535, %537
  %539 = add nuw nsw i32 %538, %535
  %540 = icmp eq i32 %539, 2
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %21, align 1, !tbaa !2450
  %542 = add i64 %505, 26
  store i64 %542, i64* %PC, align 8
  store i32 %519, i32* %517, align 4
  %543 = load i64, i64* %PC, align 8
  %544 = add i64 %543, -248
  store i64 %544, i64* %PC, align 8, !tbaa !2428
  br label %block_400801
}

; Function Attrs: noinline
define %struct.Memory* @sub_400520_rsdec_204(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone) local_unnamed_addr #7 {
block_400520:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %17 = add i64 %6, -16
  %18 = load i64, i64* %RDI, align 8
  %19 = add i64 %9, 11
  store i64 %19, i64* %PC, align 8
  %20 = inttoptr i64 %17 to i64*
  store i64 %18, i64* %20, align 8
  %21 = load i64, i64* %RBP, align 8
  %22 = add i64 %21, -16
  %23 = load i64, i64* %RSI, align 8
  %24 = load i64, i64* %PC, align 8
  %25 = add i64 %24, 4
  store i64 %25, i64* %PC, align 8
  %26 = inttoptr i64 %22 to i64*
  store i64 %23, i64* %26, align 8
  %27 = load i64, i64* %PC, align 8
  %28 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 16) to i32*), align 16
  store i8 0, i8* %11, align 1, !tbaa !2432
  %29 = and i32 %28, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29) #12
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  store i8 %33, i8* %12, align 1, !tbaa !2446
  store i8 0, i8* %13, align 1, !tbaa !2447
  %34 = icmp eq i32 %28, 0
  %35 = zext i1 %34 to i8
  store i8 %35, i8* %14, align 1, !tbaa !2448
  %36 = lshr i32 %28, 31
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  %.v = select i1 %34, i64 14, i64 35
  %38 = add i64 %27, %.v
  store i64 %38, i64* %PC, align 8, !tbaa !2428
  br i1 %34, label %block_40053e, label %block_400553

block_400598:                                     ; preds = %block_4005a2, %block_400591
  %39 = phi i64 [ %566, %block_4005a2 ], [ %.pre20, %block_400591 ]
  %40 = load i64, i64* %RBP, align 8
  %41 = add i64 %40, -20
  %42 = add i64 %39, 4
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %41 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = add i32 %44, -51
  %46 = icmp ult i32 %44, 51
  %47 = zext i1 %46 to i8
  store i8 %47, i8* %11, align 1, !tbaa !2432
  %48 = and i32 %45, 255
  %49 = tail call i32 @llvm.ctpop.i32(i32 %48) #12
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 1
  %52 = xor i8 %51, 1
  store i8 %52, i8* %12, align 1, !tbaa !2446
  %53 = xor i32 %44, 16
  %54 = xor i32 %53, %45
  %55 = lshr i32 %54, 4
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  store i8 %57, i8* %13, align 1, !tbaa !2447
  %58 = icmp eq i32 %45, 0
  %59 = zext i1 %58 to i8
  store i8 %59, i8* %14, align 1, !tbaa !2448
  %60 = lshr i32 %45, 31
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %15, align 1, !tbaa !2449
  %62 = lshr i32 %44, 31
  %63 = xor i32 %60, %62
  %64 = add nuw nsw i32 %63, %62
  %65 = icmp eq i32 %64, 2
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %16, align 1, !tbaa !2450
  %67 = icmp ne i8 %61, 0
  %68 = xor i1 %67, %65
  %.v25 = select i1 %68, i64 10, i64 44
  %69 = add i64 %39, %.v25
  store i64 %69, i64* %PC, align 8, !tbaa !2428
  br i1 %68, label %block_4005a2, label %block_4005c4

block_40055a:                                     ; preds = %block_400564, %block_400553
  %70 = phi i64 [ %473, %block_400564 ], [ %.pre, %block_400553 ]
  %71 = load i64, i64* %RBP, align 8
  %72 = add i64 %71, -20
  %73 = add i64 %70, 4
  store i64 %73, i64* %PC, align 8
  %74 = inttoptr i64 %72 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %75, -16
  %77 = icmp ult i32 %75, 16
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %11, align 1, !tbaa !2432
  %79 = and i32 %76, 255
  %80 = tail call i32 @llvm.ctpop.i32(i32 %79) #12
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  %83 = xor i8 %82, 1
  store i8 %83, i8* %12, align 1, !tbaa !2446
  %84 = xor i32 %75, 16
  %85 = xor i32 %84, %76
  %86 = lshr i32 %85, 4
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  store i8 %88, i8* %13, align 1, !tbaa !2447
  %89 = icmp eq i32 %76, 0
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %14, align 1, !tbaa !2448
  %91 = lshr i32 %76, 31
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %15, align 1, !tbaa !2449
  %93 = lshr i32 %75, 31
  %94 = xor i32 %91, %93
  %95 = add nuw nsw i32 %94, %93
  %96 = icmp eq i32 %95, 2
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %16, align 1, !tbaa !2450
  %98 = icmp ne i8 %92, 0
  %99 = xor i1 %98, %96
  %.v24 = select i1 %99, i64 10, i64 55
  %100 = add i64 %70, %.v24
  store i64 %100, i64* %PC, align 8, !tbaa !2428
  br i1 %99, label %block_400564, label %block_400591

block_4005c4:                                     ; preds = %block_400598
  %101 = add i64 %69, 7
  store i64 %101, i64* %PC, align 8
  store i32 0, i32* %43, align 4
  %.pre21 = load i64, i64* %PC, align 8
  br label %block_4005cb

block_4005d8:                                     ; preds = %block_4005cb
  %102 = add i64 %568, -16
  %103 = add i64 %597, 4
  store i64 %103, i64* %PC, align 8
  %104 = inttoptr i64 %102 to i64*
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %RAX, align 8, !tbaa !2428
  %106 = add i64 %597, 8
  store i64 %106, i64* %PC, align 8
  %107 = load i32, i32* %571, align 4
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %RCX, align 8, !tbaa !2428
  %109 = add i64 %105, %108
  %110 = add i64 %597, 12
  store i64 %110, i64* %PC, align 8
  %111 = inttoptr i64 %109 to i8*
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i64
  store i64 %113, i64* %RDX, align 8, !tbaa !2428
  %114 = add i64 %597, 15
  store i64 %114, i64* %PC, align 8
  %115 = load i32, i32* %571, align 4
  %116 = add i32 %115, 67
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %RSI, align 8, !tbaa !2428
  %118 = icmp ugt i32 %115, -68
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %11, align 1, !tbaa !2432
  %120 = and i32 %116, 255
  %121 = tail call i32 @llvm.ctpop.i32(i32 %120) #12
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  %124 = xor i8 %123, 1
  store i8 %124, i8* %12, align 1, !tbaa !2446
  %125 = xor i32 %116, %115
  %126 = lshr i32 %125, 4
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  store i8 %128, i8* %13, align 1, !tbaa !2447
  %129 = icmp eq i32 %116, 0
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %14, align 1, !tbaa !2448
  %131 = lshr i32 %116, 31
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %15, align 1, !tbaa !2449
  %133 = lshr i32 %115, 31
  %134 = xor i32 %131, %133
  %135 = add nuw nsw i32 %134, %131
  %136 = icmp eq i32 %135, 2
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %16, align 1, !tbaa !2450
  %138 = sext i32 %116 to i64
  store i64 %138, i64* %RAX, align 8, !tbaa !2428
  %139 = shl nsw i64 %138, 2
  %140 = add i64 %139, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %141 = zext i8 %112 to i32
  %142 = add i64 %597, 28
  store i64 %142, i64* %PC, align 8
  %143 = inttoptr i64 %140 to i32*
  store i32 %141, i32* %143, align 4
  %144 = load i64, i64* %RBP, align 8
  %145 = add i64 %144, -20
  %146 = load i64, i64* %PC, align 8
  %147 = add i64 %146, 3
  store i64 %147, i64* %PC, align 8
  %148 = inttoptr i64 %145 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = add i32 %149, 1
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %RAX, align 8, !tbaa !2428
  %152 = icmp eq i32 %149, -1
  %153 = icmp eq i32 %150, 0
  %154 = or i1 %152, %153
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %11, align 1, !tbaa !2432
  %156 = and i32 %150, 255
  %157 = tail call i32 @llvm.ctpop.i32(i32 %156) #12
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  %160 = xor i8 %159, 1
  store i8 %160, i8* %12, align 1, !tbaa !2446
  %161 = xor i32 %150, %149
  %162 = lshr i32 %161, 4
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  store i8 %164, i8* %13, align 1, !tbaa !2447
  %165 = zext i1 %153 to i8
  store i8 %165, i8* %14, align 1, !tbaa !2448
  %166 = lshr i32 %150, 31
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %15, align 1, !tbaa !2449
  %168 = lshr i32 %149, 31
  %169 = xor i32 %166, %168
  %170 = add nuw nsw i32 %169, %166
  %171 = icmp eq i32 %170, 2
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %16, align 1, !tbaa !2450
  %173 = add i64 %146, 9
  store i64 %173, i64* %PC, align 8
  store i32 %150, i32* %148, align 4
  %174 = load i64, i64* %PC, align 8
  %175 = add i64 %174, -50
  store i64 %175, i64* %PC, align 8, !tbaa !2428
  br label %block_4005cb

block_400553:                                     ; preds = %block_400520, %block_40053e
  %176 = phi i64 [ %38, %block_400520 ], [ %324, %block_40053e ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_400520 ], [ %322, %block_40053e ]
  %177 = load i64, i64* %RBP, align 8
  %178 = add i64 %177, -20
  %179 = add i64 %176, 7
  store i64 %179, i64* %PC, align 8
  %180 = inttoptr i64 %178 to i32*
  store i32 0, i32* %180, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_40055a

block_400616:                                     ; preds = %block_400609
  %181 = add i64 %309, 4
  store i64 %181, i64* %PC, align 8
  %182 = load i32, i32* %283, align 4
  %183 = sext i32 %182 to i64
  store i64 %183, i64* %RAX, align 8, !tbaa !2428
  %184 = shl nsw i64 %183, 2
  %185 = add i64 %184, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %186 = add i64 %309, 12
  store i64 %186, i64* %PC, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  store i64 %189, i64* %RAX, align 8, !tbaa !2428
  %190 = shl nsw i64 %189, 2
  %191 = add i64 %190, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %192 = add i64 %309, 19
  store i64 %192, i64* %PC, align 8
  %193 = inttoptr i64 %191 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RCX, align 8, !tbaa !2428
  %196 = add i64 %309, 23
  store i64 %196, i64* %PC, align 8
  %197 = load i32, i32* %283, align 4
  %198 = sext i32 %197 to i64
  store i64 %198, i64* %RAX, align 8, !tbaa !2428
  %199 = shl nsw i64 %198, 2
  %200 = add i64 %199, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %201 = add i64 %309, 30
  store i64 %201, i64* %PC, align 8
  %202 = inttoptr i64 %200 to i32*
  store i32 %194, i32* %202, align 4
  %203 = load i64, i64* %RBP, align 8
  %204 = add i64 %203, -20
  %205 = load i64, i64* %PC, align 8
  %206 = add i64 %205, 3
  store i64 %206, i64* %PC, align 8
  %207 = inttoptr i64 %204 to i32*
  %208 = load i32, i32* %207, align 4
  %209 = add i32 %208, 1
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %RAX, align 8, !tbaa !2428
  %211 = icmp eq i32 %208, -1
  %212 = icmp eq i32 %209, 0
  %213 = or i1 %211, %212
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %11, align 1, !tbaa !2432
  %215 = and i32 %209, 255
  %216 = tail call i32 @llvm.ctpop.i32(i32 %215) #12
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 1
  %219 = xor i8 %218, 1
  store i8 %219, i8* %12, align 1, !tbaa !2446
  %220 = xor i32 %209, %208
  %221 = lshr i32 %220, 4
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  store i8 %223, i8* %13, align 1, !tbaa !2447
  %224 = zext i1 %212 to i8
  store i8 %224, i8* %14, align 1, !tbaa !2448
  %225 = lshr i32 %209, 31
  %226 = trunc i32 %225 to i8
  store i8 %226, i8* %15, align 1, !tbaa !2449
  %227 = lshr i32 %208, 31
  %228 = xor i32 %225, %227
  %229 = add nuw nsw i32 %228, %225
  %230 = icmp eq i32 %229, 2
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %16, align 1, !tbaa !2450
  %232 = add i64 %205, 9
  store i64 %232, i64* %PC, align 8
  store i32 %209, i32* %207, align 4
  %233 = load i64, i64* %PC, align 8
  %234 = add i64 %233, -52
  store i64 %234, i64* %PC, align 8, !tbaa !2428
  br label %block_400609

block_400591:                                     ; preds = %block_40055a
  %235 = add i64 %100, 7
  store i64 %235, i64* %PC, align 8
  store i32 0, i32* %74, align 4
  %.pre20 = load i64, i64* %PC, align 8
  br label %block_400598

block_40064e:                                     ; preds = %block_40065b, %block_400642
  %236 = phi i64 [ %398, %block_40065b ], [ %.pre23, %block_400642 ]
  %237 = load i64, i64* %RBP, align 8
  %238 = add i64 %237, -20
  %239 = add i64 %236, 7
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = add i32 %241, -188
  %243 = icmp ult i32 %241, 188
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %11, align 1, !tbaa !2432
  %245 = and i32 %242, 255
  %246 = tail call i32 @llvm.ctpop.i32(i32 %245) #12
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  store i8 %249, i8* %12, align 1, !tbaa !2446
  %250 = xor i32 %241, 16
  %251 = xor i32 %250, %242
  %252 = lshr i32 %251, 4
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  store i8 %254, i8* %13, align 1, !tbaa !2447
  %255 = icmp eq i32 %242, 0
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %14, align 1, !tbaa !2448
  %257 = lshr i32 %242, 31
  %258 = trunc i32 %257 to i8
  store i8 %258, i8* %15, align 1, !tbaa !2449
  %259 = lshr i32 %241, 31
  %260 = xor i32 %257, %259
  %261 = add nuw nsw i32 %260, %259
  %262 = icmp eq i32 %261, 2
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %16, align 1, !tbaa !2450
  %264 = icmp ne i8 %258, 0
  %265 = xor i1 %264, %262
  %.v28 = select i1 %265, i64 13, i64 56
  %266 = add i64 %236, %.v28
  store i64 %266, i64* %PC, align 8, !tbaa !2428
  br i1 %265, label %block_40065b, label %block_400686

block_400602:                                     ; preds = %block_4005cb
  %267 = add i64 %597, 7
  store i64 %267, i64* %PC, align 8
  store i32 0, i32* %571, align 4
  %.pre22 = load i64, i64* %PC, align 8
  br label %block_400609

block_400642:                                     ; preds = %block_400609
  %268 = add i64 %309, 766
  %269 = add i64 %309, 5
  %270 = load i64, i64* %RSP, align 8, !tbaa !2428
  %271 = add i64 %270, -8
  %272 = inttoptr i64 %271 to i64*
  store i64 %269, i64* %272, align 8
  store i64 %271, i64* %RSP, align 8, !tbaa !2428
  store i64 %268, i64* %PC, align 8, !tbaa !2428
  %273 = tail call %struct.Memory* @sub_400940_decode_rs_renamed_(%struct.State* nonnull %0, i64 %268, %struct.Memory* %MEMORY.2)
  %274 = load i64, i64* %RBP, align 8
  %275 = add i64 %274, -20
  %276 = load i64, i64* %PC, align 8
  %277 = add i64 %276, 7
  store i64 %277, i64* %PC, align 8
  %278 = inttoptr i64 %275 to i32*
  store i32 0, i32* %278, align 4
  %.pre23 = load i64, i64* %PC, align 8
  br label %block_40064e

block_400609:                                     ; preds = %block_400602, %block_400616
  %279 = phi i64 [ %.pre22, %block_400602 ], [ %234, %block_400616 ]
  %280 = load i64, i64* %RBP, align 8
  %281 = add i64 %280, -20
  %282 = add i64 %279, 7
  store i64 %282, i64* %PC, align 8
  %283 = inttoptr i64 %281 to i32*
  %284 = load i32, i32* %283, align 4
  %285 = add i32 %284, -255
  %286 = icmp ult i32 %284, 255
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %11, align 1, !tbaa !2432
  %288 = and i32 %285, 255
  %289 = tail call i32 @llvm.ctpop.i32(i32 %288) #12
  %290 = trunc i32 %289 to i8
  %291 = and i8 %290, 1
  %292 = xor i8 %291, 1
  store i8 %292, i8* %12, align 1, !tbaa !2446
  %293 = xor i32 %284, 16
  %294 = xor i32 %293, %285
  %295 = lshr i32 %294, 4
  %296 = trunc i32 %295 to i8
  %297 = and i8 %296, 1
  store i8 %297, i8* %13, align 1, !tbaa !2447
  %298 = icmp eq i32 %285, 0
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %14, align 1, !tbaa !2448
  %300 = lshr i32 %285, 31
  %301 = trunc i32 %300 to i8
  store i8 %301, i8* %15, align 1, !tbaa !2449
  %302 = lshr i32 %284, 31
  %303 = xor i32 %300, %302
  %304 = add nuw nsw i32 %303, %302
  %305 = icmp eq i32 %304, 2
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %16, align 1, !tbaa !2450
  %307 = icmp ne i8 %301, 0
  %308 = xor i1 %307, %305
  %.v27 = select i1 %308, i64 13, i64 57
  %309 = add i64 %279, %.v27
  store i64 %309, i64* %PC, align 8, !tbaa !2428
  br i1 %308, label %block_400616, label %block_400642

block_40053e:                                     ; preds = %block_400520
  %310 = add i64 %38, 338
  %311 = add i64 %38, 5
  %312 = load i64, i64* %RSP, align 8, !tbaa !2428
  %313 = add i64 %312, -8
  %314 = inttoptr i64 %313 to i64*
  store i64 %311, i64* %314, align 8
  store i64 %313, i64* %RSP, align 8, !tbaa !2428
  store i64 %310, i64* %PC, align 8, !tbaa !2428
  %315 = tail call %struct.Memory* @sub_400690_generate_gf_renamed_(%struct.State* nonnull %0, i64 %310, %struct.Memory* %2)
  %316 = load i64, i64* %PC, align 8
  %317 = add i64 %316, 669
  %318 = add i64 %316, 5
  %319 = load i64, i64* %RSP, align 8, !tbaa !2428
  %320 = add i64 %319, -8
  %321 = inttoptr i64 %320 to i64*
  store i64 %318, i64* %321, align 8
  store i64 %320, i64* %RSP, align 8, !tbaa !2428
  store i64 %317, i64* %PC, align 8, !tbaa !2428
  %322 = tail call %struct.Memory* @sub_4007e0_gen_poly_renamed_(%struct.State* nonnull %0, i64 %317, %struct.Memory* %315)
  %323 = load i64, i64* %PC, align 8
  %324 = add i64 %323, 11
  store i64 %324, i64* %PC, align 8
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 16) to i32*), align 16
  br label %block_400553

block_40065b:                                     ; preds = %block_40064e
  %325 = add i64 %266, 3
  store i64 %325, i64* %PC, align 8
  %326 = load i32, i32* %240, align 4
  %327 = add i32 %326, 67
  %328 = zext i32 %327 to i64
  store i64 %328, i64* %RAX, align 8, !tbaa !2428
  %329 = icmp ugt i32 %326, -68
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %11, align 1, !tbaa !2432
  %331 = and i32 %327, 255
  %332 = tail call i32 @llvm.ctpop.i32(i32 %331) #12
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = xor i8 %334, 1
  store i8 %335, i8* %12, align 1, !tbaa !2446
  %336 = xor i32 %327, %326
  %337 = lshr i32 %336, 4
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  store i8 %339, i8* %13, align 1, !tbaa !2447
  %340 = icmp eq i32 %327, 0
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %14, align 1, !tbaa !2448
  %342 = lshr i32 %327, 31
  %343 = trunc i32 %342 to i8
  store i8 %343, i8* %15, align 1, !tbaa !2449
  %344 = lshr i32 %326, 31
  %345 = xor i32 %342, %344
  %346 = add nuw nsw i32 %345, %342
  %347 = icmp eq i32 %346, 2
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %16, align 1, !tbaa !2450
  %349 = sext i32 %327 to i64
  store i64 %349, i64* %RCX, align 8, !tbaa !2428
  %350 = shl nsw i64 %349, 2
  %351 = add i64 %350, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %352 = add i64 %266, 16
  store i64 %352, i64* %PC, align 8
  %353 = inttoptr i64 %351 to i32*
  %354 = load i32, i32* %353, align 4
  %355 = zext i32 %354 to i64
  store i64 %355, i64* %RAX, align 8, !tbaa !2428
  %356 = trunc i32 %354 to i8
  store i8 %356, i8* %DL, align 1, !tbaa !2451
  %357 = add i64 %237, -8
  %358 = add i64 %266, 22
  store i64 %358, i64* %PC, align 8
  %359 = inttoptr i64 %357 to i64*
  %360 = load i64, i64* %359, align 8
  store i64 %360, i64* %RCX, align 8, !tbaa !2428
  %361 = add i64 %266, 26
  store i64 %361, i64* %PC, align 8
  %362 = load i32, i32* %240, align 4
  %363 = sext i32 %362 to i64
  store i64 %363, i64* %RSI, align 8, !tbaa !2428
  %364 = add i64 %360, %363
  %365 = add i64 %266, 29
  store i64 %365, i64* %PC, align 8
  %366 = inttoptr i64 %364 to i8*
  store i8 %356, i8* %366, align 1
  %367 = load i64, i64* %RBP, align 8
  %368 = add i64 %367, -20
  %369 = load i64, i64* %PC, align 8
  %370 = add i64 %369, 3
  store i64 %370, i64* %PC, align 8
  %371 = inttoptr i64 %368 to i32*
  %372 = load i32, i32* %371, align 4
  %373 = add i32 %372, 1
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %RAX, align 8, !tbaa !2428
  %375 = icmp eq i32 %372, -1
  %376 = icmp eq i32 %373, 0
  %377 = or i1 %375, %376
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %11, align 1, !tbaa !2432
  %379 = and i32 %373, 255
  %380 = tail call i32 @llvm.ctpop.i32(i32 %379) #12
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  store i8 %383, i8* %12, align 1, !tbaa !2446
  %384 = xor i32 %373, %372
  %385 = lshr i32 %384, 4
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  store i8 %387, i8* %13, align 1, !tbaa !2447
  %388 = zext i1 %376 to i8
  store i8 %388, i8* %14, align 1, !tbaa !2448
  %389 = lshr i32 %373, 31
  %390 = trunc i32 %389 to i8
  store i8 %390, i8* %15, align 1, !tbaa !2449
  %391 = lshr i32 %372, 31
  %392 = xor i32 %389, %391
  %393 = add nuw nsw i32 %392, %389
  %394 = icmp eq i32 %393, 2
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %16, align 1, !tbaa !2450
  %396 = add i64 %369, 9
  store i64 %396, i64* %PC, align 8
  store i32 %373, i32* %371, align 4
  %397 = load i64, i64* %PC, align 8
  %398 = add i64 %397, -51
  store i64 %398, i64* %PC, align 8, !tbaa !2428
  br label %block_40064e

block_400564:                                     ; preds = %block_40055a
  %399 = add i64 %71, -16
  %400 = add i64 %100, 4
  store i64 %400, i64* %PC, align 8
  %401 = inttoptr i64 %399 to i64*
  %402 = load i64, i64* %401, align 8
  store i64 %402, i64* %RAX, align 8, !tbaa !2428
  %403 = add i64 %100, 7
  store i64 %403, i64* %PC, align 8
  %404 = load i32, i32* %74, align 4
  %405 = add i32 %404, 188
  %406 = zext i32 %405 to i64
  store i64 %406, i64* %RCX, align 8, !tbaa !2428
  %407 = icmp ugt i32 %404, -189
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %11, align 1, !tbaa !2432
  %409 = and i32 %405, 255
  %410 = tail call i32 @llvm.ctpop.i32(i32 %409) #12
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  %413 = xor i8 %412, 1
  store i8 %413, i8* %12, align 1, !tbaa !2446
  %414 = xor i32 %404, 16
  %415 = xor i32 %414, %405
  %416 = lshr i32 %415, 4
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  store i8 %418, i8* %13, align 1, !tbaa !2447
  %419 = icmp eq i32 %405, 0
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %14, align 1, !tbaa !2448
  %421 = lshr i32 %405, 31
  %422 = trunc i32 %421 to i8
  store i8 %422, i8* %15, align 1, !tbaa !2449
  %423 = lshr i32 %404, 31
  %424 = xor i32 %421, %423
  %425 = add nuw nsw i32 %424, %421
  %426 = icmp eq i32 %425, 2
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %16, align 1, !tbaa !2450
  %428 = sext i32 %405 to i64
  store i64 %428, i64* %RDX, align 8, !tbaa !2428
  %429 = add i64 %402, %428
  %430 = add i64 %100, 20
  store i64 %430, i64* %PC, align 8
  %431 = inttoptr i64 %429 to i8*
  %432 = load i8, i8* %431, align 1
  %433 = zext i8 %432 to i64
  store i64 %433, i64* %RCX, align 8, !tbaa !2428
  %434 = add i64 %100, 24
  store i64 %434, i64* %PC, align 8
  %435 = load i32, i32* %74, align 4
  %436 = sext i32 %435 to i64
  store i64 %436, i64* %RAX, align 8, !tbaa !2428
  %437 = shl nsw i64 %436, 2
  %438 = add i64 %437, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %439 = zext i8 %432 to i32
  %440 = add i64 %100, 31
  store i64 %440, i64* %PC, align 8
  %441 = inttoptr i64 %438 to i32*
  store i32 %439, i32* %441, align 4
  %442 = load i64, i64* %RBP, align 8
  %443 = add i64 %442, -20
  %444 = load i64, i64* %PC, align 8
  %445 = add i64 %444, 3
  store i64 %445, i64* %PC, align 8
  %446 = inttoptr i64 %443 to i32*
  %447 = load i32, i32* %446, align 4
  %448 = add i32 %447, 1
  %449 = zext i32 %448 to i64
  store i64 %449, i64* %RAX, align 8, !tbaa !2428
  %450 = icmp eq i32 %447, -1
  %451 = icmp eq i32 %448, 0
  %452 = or i1 %450, %451
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %11, align 1, !tbaa !2432
  %454 = and i32 %448, 255
  %455 = tail call i32 @llvm.ctpop.i32(i32 %454) #12
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  %458 = xor i8 %457, 1
  store i8 %458, i8* %12, align 1, !tbaa !2446
  %459 = xor i32 %448, %447
  %460 = lshr i32 %459, 4
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  store i8 %462, i8* %13, align 1, !tbaa !2447
  %463 = zext i1 %451 to i8
  store i8 %463, i8* %14, align 1, !tbaa !2448
  %464 = lshr i32 %448, 31
  %465 = trunc i32 %464 to i8
  store i8 %465, i8* %15, align 1, !tbaa !2449
  %466 = lshr i32 %447, 31
  %467 = xor i32 %464, %466
  %468 = add nuw nsw i32 %467, %464
  %469 = icmp eq i32 %468, 2
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %16, align 1, !tbaa !2450
  %471 = add i64 %444, 9
  store i64 %471, i64* %PC, align 8
  store i32 %448, i32* %446, align 4
  %472 = load i64, i64* %PC, align 8
  %473 = add i64 %472, -50
  store i64 %473, i64* %PC, align 8, !tbaa !2428
  br label %block_40055a

block_400686:                                     ; preds = %block_40064e
  %474 = load i64, i64* %RSP, align 8
  %475 = add i64 %474, 32
  store i64 %475, i64* %RSP, align 8, !tbaa !2428
  %476 = icmp ugt i64 %474, -33
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %11, align 1, !tbaa !2432
  %478 = trunc i64 %475 to i32
  %479 = and i32 %478, 255
  %480 = tail call i32 @llvm.ctpop.i32(i32 %479) #12
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = xor i8 %482, 1
  store i8 %483, i8* %12, align 1, !tbaa !2446
  %484 = xor i64 %475, %474
  %485 = lshr i64 %484, 4
  %486 = trunc i64 %485 to i8
  %487 = and i8 %486, 1
  store i8 %487, i8* %13, align 1, !tbaa !2447
  %488 = icmp eq i64 %475, 0
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %14, align 1, !tbaa !2448
  %490 = lshr i64 %475, 63
  %491 = trunc i64 %490 to i8
  store i8 %491, i8* %15, align 1, !tbaa !2449
  %492 = lshr i64 %474, 63
  %493 = xor i64 %490, %492
  %494 = add nuw nsw i64 %493, %490
  %495 = icmp eq i64 %494, 2
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %16, align 1, !tbaa !2450
  %497 = add i64 %266, 5
  store i64 %497, i64* %PC, align 8
  %498 = add i64 %474, 40
  %499 = inttoptr i64 %475 to i64*
  %500 = load i64, i64* %499, align 8
  store i64 %500, i64* %RBP, align 8, !tbaa !2428
  store i64 %498, i64* %RSP, align 8, !tbaa !2428
  %501 = add i64 %266, 6
  store i64 %501, i64* %PC, align 8
  %502 = inttoptr i64 %498 to i64*
  %503 = load i64, i64* %502, align 8
  store i64 %503, i64* %PC, align 8, !tbaa !2428
  %504 = add i64 %474, 48
  store i64 %504, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %273

block_4005a2:                                     ; preds = %block_400598
  %505 = add i64 %69, 3
  store i64 %505, i64* %PC, align 8
  %506 = load i32, i32* %43, align 4
  %507 = add i32 %506, 16
  %508 = zext i32 %507 to i64
  store i64 %508, i64* %RAX, align 8, !tbaa !2428
  %509 = icmp ugt i32 %506, -17
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %11, align 1, !tbaa !2432
  %511 = and i32 %507, 255
  %512 = tail call i32 @llvm.ctpop.i32(i32 %511) #12
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  %515 = xor i8 %514, 1
  store i8 %515, i8* %12, align 1, !tbaa !2446
  %516 = xor i32 %506, 16
  %517 = xor i32 %516, %507
  %518 = lshr i32 %517, 4
  %519 = trunc i32 %518 to i8
  %520 = and i8 %519, 1
  store i8 %520, i8* %13, align 1, !tbaa !2447
  %521 = icmp eq i32 %507, 0
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %14, align 1, !tbaa !2448
  %523 = lshr i32 %507, 31
  %524 = trunc i32 %523 to i8
  store i8 %524, i8* %15, align 1, !tbaa !2449
  %525 = lshr i32 %506, 31
  %526 = xor i32 %523, %525
  %527 = add nuw nsw i32 %526, %523
  %528 = icmp eq i32 %527, 2
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %16, align 1, !tbaa !2450
  %530 = sext i32 %507 to i64
  store i64 %530, i64* %RCX, align 8, !tbaa !2428
  %531 = shl nsw i64 %530, 2
  %532 = add i64 %531, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %533 = add i64 %69, 20
  store i64 %533, i64* %PC, align 8
  %534 = inttoptr i64 %532 to i32*
  store i32 0, i32* %534, align 4
  %535 = load i64, i64* %RBP, align 8
  %536 = add i64 %535, -20
  %537 = load i64, i64* %PC, align 8
  %538 = add i64 %537, 3
  store i64 %538, i64* %PC, align 8
  %539 = inttoptr i64 %536 to i32*
  %540 = load i32, i32* %539, align 4
  %541 = add i32 %540, 1
  %542 = zext i32 %541 to i64
  store i64 %542, i64* %RAX, align 8, !tbaa !2428
  %543 = icmp eq i32 %540, -1
  %544 = icmp eq i32 %541, 0
  %545 = or i1 %543, %544
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %11, align 1, !tbaa !2432
  %547 = and i32 %541, 255
  %548 = tail call i32 @llvm.ctpop.i32(i32 %547) #12
  %549 = trunc i32 %548 to i8
  %550 = and i8 %549, 1
  %551 = xor i8 %550, 1
  store i8 %551, i8* %12, align 1, !tbaa !2446
  %552 = xor i32 %541, %540
  %553 = lshr i32 %552, 4
  %554 = trunc i32 %553 to i8
  %555 = and i8 %554, 1
  store i8 %555, i8* %13, align 1, !tbaa !2447
  %556 = zext i1 %544 to i8
  store i8 %556, i8* %14, align 1, !tbaa !2448
  %557 = lshr i32 %541, 31
  %558 = trunc i32 %557 to i8
  store i8 %558, i8* %15, align 1, !tbaa !2449
  %559 = lshr i32 %540, 31
  %560 = xor i32 %557, %559
  %561 = add nuw nsw i32 %560, %557
  %562 = icmp eq i32 %561, 2
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %16, align 1, !tbaa !2450
  %564 = add i64 %537, 9
  store i64 %564, i64* %PC, align 8
  store i32 %541, i32* %539, align 4
  %565 = load i64, i64* %PC, align 8
  %566 = add i64 %565, -39
  store i64 %566, i64* %PC, align 8, !tbaa !2428
  br label %block_400598

block_4005cb:                                     ; preds = %block_4005d8, %block_4005c4
  %567 = phi i64 [ %175, %block_4005d8 ], [ %.pre21, %block_4005c4 ]
  %568 = load i64, i64* %RBP, align 8
  %569 = add i64 %568, -20
  %570 = add i64 %567, 7
  store i64 %570, i64* %PC, align 8
  %571 = inttoptr i64 %569 to i32*
  %572 = load i32, i32* %571, align 4
  %573 = add i32 %572, -188
  %574 = icmp ult i32 %572, 188
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %11, align 1, !tbaa !2432
  %576 = and i32 %573, 255
  %577 = tail call i32 @llvm.ctpop.i32(i32 %576) #12
  %578 = trunc i32 %577 to i8
  %579 = and i8 %578, 1
  %580 = xor i8 %579, 1
  store i8 %580, i8* %12, align 1, !tbaa !2446
  %581 = xor i32 %572, 16
  %582 = xor i32 %581, %573
  %583 = lshr i32 %582, 4
  %584 = trunc i32 %583 to i8
  %585 = and i8 %584, 1
  store i8 %585, i8* %13, align 1, !tbaa !2447
  %586 = icmp eq i32 %573, 0
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %14, align 1, !tbaa !2448
  %588 = lshr i32 %573, 31
  %589 = trunc i32 %588 to i8
  store i8 %589, i8* %15, align 1, !tbaa !2449
  %590 = lshr i32 %572, 31
  %591 = xor i32 %588, %590
  %592 = add nuw nsw i32 %591, %590
  %593 = icmp eq i32 %592, 2
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %16, align 1, !tbaa !2450
  %595 = icmp ne i8 %589, 0
  %596 = xor i1 %595, %593
  %.v26 = select i1 %596, i64 13, i64 55
  %597 = add i64 %567, %.v26
  store i64 %597, i64* %PC, align 8, !tbaa !2428
  br i1 %596, label %block_4005d8, label %block_400602
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004a0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4004a0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 6303832, i64* %RSI, align 8, !tbaa !2428
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
  %10 = add i64 %8, -6303832
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
  br i1 %29, label %block_4004d8, label %block_4004c3

block_4004d8:                                     ; preds = %block_4004c3, %block_4004a0
  %34 = phi i64 [ %44, %block_4004c3 ], [ %33, %block_4004a0 ]
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

block_4004c3:                                     ; preds = %block_4004a0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2432
  store i8 1, i8* %12, align 1, !tbaa !2446
  store i8 1, i8* %14, align 1, !tbaa !2448
  store i8 0, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  store i8 0, i8* %13, align 1, !tbaa !2447
  %44 = add i64 %33, 21
  store i64 %44, i64* %PC, align 8, !tbaa !2428
  br label %block_4004d8
}

; Function Attrs: noinline
define %struct.Memory* @sub_401b40_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_401b40:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
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
  %10 = add i64 %6, -440
  store i64 %10, i64* %RSP, align 8, !tbaa !2428
  %11 = icmp ult i64 %7, 432
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
  %39 = add i64 %6, -12
  %40 = add i64 %9, 17
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 0, i32* %41, align 4
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -420
  %44 = load i64, i64* %PC, align 8
  %45 = add i64 %44, 10
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %43 to i32*
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_401b5c

block_401bf5:                                     ; preds = %block_401be3
  %49 = add i64 %375, -6101
  %50 = add i64 %375, 5
  %51 = load i64, i64* %RSP, align 8, !tbaa !2428
  %52 = add i64 %51, -8
  %53 = inttoptr i64 %52 to i64*
  store i64 %50, i64* %53, align 8
  store i64 %52, i64* %RSP, align 8, !tbaa !2428
  store i64 %49, i64* %PC, align 8, !tbaa !2428
  %54 = tail call fastcc %struct.Memory* @ext_6040d8_random(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %55 = load i64, i64* %RAX, align 8
  %56 = load i64, i64* %PC, align 8
  %57 = and i64 %55, 255
  store i64 %57, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  %58 = trunc i64 %55 to i32
  %59 = and i32 %58, 255
  %60 = tail call i32 @llvm.ctpop.i32(i32 %59) #12
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  %63 = xor i8 %62, 1
  store i8 %63, i8* %20, align 1, !tbaa !2446
  %64 = icmp eq i64 %57, 0
  %65 = zext i1 %64 to i8
  store i8 %65, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  store i8 0, i8* %26, align 1, !tbaa !2447
  %66 = trunc i64 %55 to i8
  store i8 %66, i8* %CL, align 1, !tbaa !2451
  %67 = load i64, i64* %RBP, align 8
  %68 = add i64 %67, -429
  %69 = add i64 %56, 14
  store i64 %69, i64* %PC, align 8
  %70 = inttoptr i64 %68 to i8*
  store i8 %66, i8* %70, align 1
  %71 = load i64, i64* %PC, align 8
  %72 = add i64 %71, -6120
  %73 = add i64 %71, 5
  %74 = load i64, i64* %RSP, align 8, !tbaa !2428
  %75 = add i64 %74, -8
  %76 = inttoptr i64 %75 to i64*
  store i64 %73, i64* %76, align 8
  store i64 %75, i64* %RSP, align 8, !tbaa !2428
  store i64 %72, i64* %PC, align 8, !tbaa !2428
  %77 = tail call fastcc %struct.Memory* @ext_6040d8_random(%struct.State* nonnull %0, %struct.Memory* %54)
  %78 = load i64, i64* %PC, align 8
  store i64 204, i64* %RSI, align 8, !tbaa !2428
  %79 = load i64, i64* %48, align 8, !tbaa !2428
  %80 = ashr i64 %79, 63
  store i64 %80, i64* %47, align 8, !tbaa !2428
  %81 = add i64 %78, 12
  store i64 %81, i64* %PC, align 8
  %82 = zext i64 %80 to i128
  %83 = shl nuw i128 %82, 64
  %84 = zext i64 %79 to i128
  %85 = or i128 %84, %83
  %86 = sdiv i128 %85, 204
  %87 = trunc i128 %86 to i64
  %88 = and i128 %86, 18446744073709551615
  %89 = sext i64 %87 to i128
  %90 = and i128 %89, -18446744073709551616
  %91 = or i128 %90, %88
  %92 = icmp eq i128 %86, %91
  br i1 %92, label %95, label %93

; <label>:93:                                     ; preds = %block_401bf5
  %94 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %81, %struct.Memory* %77) #13
  %.pre9 = load i64, i64* %PC, align 8
  %.pre10 = load i64, i64* %RDX, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:95:                                     ; preds = %block_401bf5
  %96 = srem i128 %85, 204
  %97 = trunc i128 %96 to i64
  store i64 %87, i64* %48, align 8, !tbaa !2428
  store i64 %97, i64* %47, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  store i8 0, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  store i8 0, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %95, %93
  %98 = phi i64 [ %.pre10, %93 ], [ %97, %95 ]
  %99 = phi i64 [ %.pre9, %93 ], [ %81, %95 ]
  %100 = phi %struct.Memory* [ %94, %93 ], [ %77, %95 ]
  %101 = load i64, i64* %RBP, align 8
  %102 = add i64 %101, -429
  %103 = add i64 %99, 6
  store i64 %103, i64* %PC, align 8
  %104 = inttoptr i64 %102 to i8*
  %105 = load i8, i8* %104, align 1
  store i8 %105, i8* %CL, align 1, !tbaa !2451
  %106 = add i64 %101, -416
  %107 = add i64 %106, %98
  %108 = add i64 %99, 13
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %107 to i8*
  store i8 %105, i8* %109, align 1
  %110 = load i64, i64* %RBP, align 8
  %111 = add i64 %110, -424
  %112 = load i64, i64* %PC, align 8
  %113 = add i64 %112, 6
  store i64 %113, i64* %PC, align 8
  %114 = inttoptr i64 %111 to i32*
  %115 = load i32, i32* %114, align 4
  %116 = add i32 %115, 1
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %RAX, align 8, !tbaa !2428
  %118 = icmp eq i32 %115, -1
  %119 = icmp eq i32 %116, 0
  %120 = or i1 %118, %119
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %13, align 1, !tbaa !2432
  %122 = and i32 %116, 255
  %123 = tail call i32 @llvm.ctpop.i32(i32 %122) #12
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %20, align 1, !tbaa !2446
  %127 = xor i32 %116, %115
  %128 = lshr i32 %127, 4
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  store i8 %130, i8* %26, align 1, !tbaa !2447
  %131 = zext i1 %119 to i8
  store i8 %131, i8* %29, align 1, !tbaa !2448
  %132 = lshr i32 %116, 31
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %32, align 1, !tbaa !2449
  %134 = lshr i32 %115, 31
  %135 = xor i32 %132, %134
  %136 = add nuw nsw i32 %135, %132
  %137 = icmp eq i32 %136, 2
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %38, align 1, !tbaa !2450
  %139 = add i64 %112, 15
  store i64 %139, i64* %PC, align 8
  store i32 %116, i32* %114, align 4
  %140 = load i64, i64* %PC, align 8
  %141 = add i64 %140, -82
  store i64 %141, i64* %PC, align 8, !tbaa !2428
  br label %block_401be3

block_401b5c:                                     ; preds = %block_401c3a, %block_401b40
  %142 = phi i64 [ %.pre, %block_401b40 ], [ %212, %block_401c3a ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_401b40 ], [ %180, %block_401c3a ]
  %143 = load i64, i64* %RBP, align 8
  %144 = add i64 %143, -420
  %145 = add i64 %142, 10
  store i64 %145, i64* %PC, align 8
  %146 = inttoptr i64 %144 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = add i32 %147, -150000
  %149 = icmp ult i32 %147, 150000
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %13, align 1, !tbaa !2432
  %151 = and i32 %148, 255
  %152 = tail call i32 @llvm.ctpop.i32(i32 %151) #12
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  %155 = xor i8 %154, 1
  store i8 %155, i8* %20, align 1, !tbaa !2446
  %156 = xor i32 %147, 16
  %157 = xor i32 %156, %148
  %158 = lshr i32 %157, 4
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  store i8 %160, i8* %26, align 1, !tbaa !2447
  %161 = icmp eq i32 %148, 0
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %29, align 1, !tbaa !2448
  %163 = lshr i32 %148, 31
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %32, align 1, !tbaa !2449
  %165 = lshr i32 %147, 31
  %166 = xor i32 %163, %165
  %167 = add nuw nsw i32 %166, %165
  %168 = icmp eq i32 %167, 2
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %38, align 1, !tbaa !2450
  %170 = icmp ne i8 %164, 0
  %171 = xor i1 %170, %168
  %.v = select i1 %171, i64 16, i64 261
  %172 = add i64 %142, %.v
  store i64 %172, i64* %PC, align 8, !tbaa !2428
  br i1 %171, label %block_401b6c, label %block_401c61

block_401c3a:                                     ; preds = %block_401be3
  %173 = add i64 %339, -416
  store i64 %173, i64* %RSI, align 8, !tbaa !2428
  %174 = add i64 %339, -208
  store i64 %174, i64* %RDI, align 8, !tbaa !2428
  %175 = add i64 %375, -5914
  %176 = add i64 %375, 19
  %177 = load i64, i64* %RSP, align 8, !tbaa !2428
  %178 = add i64 %177, -8
  %179 = inttoptr i64 %178 to i64*
  store i64 %176, i64* %179, align 8
  store i64 %178, i64* %RSP, align 8, !tbaa !2428
  store i64 %175, i64* %PC, align 8, !tbaa !2428
  %180 = tail call %struct.Memory* @sub_400520_rsdec_204_renamed_(%struct.State* nonnull %0, i64 %175, %struct.Memory* %MEMORY.2)
  %181 = load i64, i64* %RBP, align 8
  %182 = add i64 %181, -420
  %183 = load i64, i64* %PC, align 8
  %184 = add i64 %183, 6
  store i64 %184, i64* %PC, align 8
  %185 = inttoptr i64 %182 to i32*
  %186 = load i32, i32* %185, align 4
  %187 = add i32 %186, 1
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RAX, align 8, !tbaa !2428
  %189 = icmp eq i32 %186, -1
  %190 = icmp eq i32 %187, 0
  %191 = or i1 %189, %190
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %13, align 1, !tbaa !2432
  %193 = and i32 %187, 255
  %194 = tail call i32 @llvm.ctpop.i32(i32 %193) #12
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  %197 = xor i8 %196, 1
  store i8 %197, i8* %20, align 1, !tbaa !2446
  %198 = xor i32 %187, %186
  %199 = lshr i32 %198, 4
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  store i8 %201, i8* %26, align 1, !tbaa !2447
  %202 = zext i1 %190 to i8
  store i8 %202, i8* %29, align 1, !tbaa !2448
  %203 = lshr i32 %187, 31
  %204 = trunc i32 %203 to i8
  store i8 %204, i8* %32, align 1, !tbaa !2449
  %205 = lshr i32 %186, 31
  %206 = xor i32 %203, %205
  %207 = add nuw nsw i32 %206, %203
  %208 = icmp eq i32 %207, 2
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %38, align 1, !tbaa !2450
  %210 = add i64 %183, 15
  store i64 %210, i64* %PC, align 8
  store i32 %187, i32* %185, align 4
  %211 = load i64, i64* %PC, align 8
  %212 = add i64 %211, -256
  store i64 %212, i64* %PC, align 8, !tbaa !2428
  br label %block_401b5c

block_401b76:                                     ; preds = %block_401b6c, %block_401b86
  %213 = phi i64 [ %.pre7, %block_401b6c ], [ %337, %block_401b86 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_401b6c ], [ %283, %block_401b86 ]
  %214 = load i64, i64* %RBP, align 8
  %215 = add i64 %214, -424
  %216 = add i64 %213, 10
  store i64 %216, i64* %PC, align 8
  %217 = inttoptr i64 %215 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = add i32 %218, -188
  %220 = icmp ult i32 %218, 188
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %13, align 1, !tbaa !2432
  %222 = and i32 %219, 255
  %223 = tail call i32 @llvm.ctpop.i32(i32 %222) #12
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  store i8 %226, i8* %20, align 1, !tbaa !2446
  %227 = xor i32 %218, 16
  %228 = xor i32 %227, %219
  %229 = lshr i32 %228, 4
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  store i8 %231, i8* %26, align 1, !tbaa !2447
  %232 = icmp eq i32 %219, 0
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %29, align 1, !tbaa !2448
  %234 = lshr i32 %219, 31
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %32, align 1, !tbaa !2449
  %236 = lshr i32 %218, 31
  %237 = xor i32 %234, %236
  %238 = add nuw nsw i32 %237, %236
  %239 = icmp eq i32 %238, 2
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %38, align 1, !tbaa !2450
  %241 = icmp ne i8 %235, 0
  %242 = xor i1 %241, %239
  %.v11 = select i1 %242, i64 16, i64 63
  %243 = add i64 %213, %.v11
  store i64 %243, i64* %PC, align 8, !tbaa !2428
  br i1 %242, label %block_401b86, label %block_401bb5

block_401bb5:                                     ; preds = %block_401b76
  %244 = add i64 %214, -208
  store i64 %244, i64* %RSI, align 8, !tbaa !2428
  %245 = add i64 %214, -416
  store i64 %245, i64* %RDI, align 8, !tbaa !2428
  %246 = add i64 %243, -821
  %247 = add i64 %243, 19
  %248 = load i64, i64* %RSP, align 8, !tbaa !2428
  %249 = add i64 %248, -8
  %250 = inttoptr i64 %249 to i64*
  store i64 %247, i64* %250, align 8
  store i64 %249, i64* %RSP, align 8, !tbaa !2428
  store i64 %246, i64* %PC, align 8, !tbaa !2428
  %251 = tail call %struct.Memory* @sub_401880_rsenc_204_renamed_(%struct.State* nonnull %0, i64 %246, %struct.Memory* %MEMORY.1)
  %252 = load i64, i64* %PC, align 8
  %253 = add i64 %252, -6056
  %254 = add i64 %252, 5
  %255 = load i64, i64* %RSP, align 8, !tbaa !2428
  %256 = add i64 %255, -8
  %257 = inttoptr i64 %256 to i64*
  store i64 %254, i64* %257, align 8
  store i64 %256, i64* %RSP, align 8, !tbaa !2428
  store i64 %253, i64* %PC, align 8, !tbaa !2428
  %258 = tail call fastcc %struct.Memory* @ext_6040d8_random(%struct.State* nonnull %0, %struct.Memory* %251)
  %259 = load i64, i64* %RAX, align 8
  %260 = load i64, i64* %PC, align 8
  %261 = and i64 %259, 127
  store i64 %261, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  %262 = trunc i64 %261 to i32
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262) #12
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %20, align 1, !tbaa !2446
  %267 = icmp eq i64 %261, 0
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  store i8 0, i8* %26, align 1, !tbaa !2447
  store i64 %261, i64* %RCX, align 8, !tbaa !2428
  %269 = load i64, i64* %RBP, align 8
  %270 = add i64 %269, -428
  %271 = add i64 %260, 12
  store i64 %271, i64* %PC, align 8
  %272 = inttoptr i64 %270 to i32*
  store i32 %262, i32* %272, align 4
  %273 = load i64, i64* %RBP, align 8
  %274 = add i64 %273, -424
  %275 = load i64, i64* %PC, align 8
  %276 = add i64 %275, 10
  store i64 %276, i64* %PC, align 8
  %277 = inttoptr i64 %274 to i32*
  store i32 0, i32* %277, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_401be3

block_401b86:                                     ; preds = %block_401b76
  %278 = add i64 %243, -5990
  %279 = add i64 %243, 5
  %280 = load i64, i64* %RSP, align 8, !tbaa !2428
  %281 = add i64 %280, -8
  %282 = inttoptr i64 %281 to i64*
  store i64 %279, i64* %282, align 8
  store i64 %281, i64* %RSP, align 8, !tbaa !2428
  store i64 %278, i64* %PC, align 8, !tbaa !2428
  %283 = tail call fastcc %struct.Memory* @ext_6040d8_random(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %284 = load i64, i64* %RAX, align 8
  %285 = load i64, i64* %PC, align 8
  %286 = and i64 %284, 255
  store i64 %286, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  %287 = trunc i64 %284 to i32
  %288 = and i32 %287, 255
  %289 = tail call i32 @llvm.ctpop.i32(i32 %288) #12
  %290 = trunc i32 %289 to i8
  %291 = and i8 %290, 1
  %292 = xor i8 %291, 1
  store i8 %292, i8* %20, align 1, !tbaa !2446
  %293 = icmp eq i64 %286, 0
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  store i8 0, i8* %26, align 1, !tbaa !2447
  %295 = trunc i64 %284 to i8
  store i8 %295, i8* %CL, align 1, !tbaa !2451
  %296 = load i64, i64* %RBP, align 8
  %297 = add i64 %296, -424
  %298 = add i64 %285, 15
  store i64 %298, i64* %PC, align 8
  %299 = inttoptr i64 %297 to i32*
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  store i64 %301, i64* %RAX, align 8, !tbaa !2428
  %302 = add nsw i64 %301, -208
  %303 = add i64 %302, %296
  %304 = add i64 %285, 22
  store i64 %304, i64* %PC, align 8
  %305 = inttoptr i64 %303 to i8*
  store i8 %295, i8* %305, align 1
  %306 = load i64, i64* %RBP, align 8
  %307 = add i64 %306, -424
  %308 = load i64, i64* %PC, align 8
  %309 = add i64 %308, 6
  store i64 %309, i64* %PC, align 8
  %310 = inttoptr i64 %307 to i32*
  %311 = load i32, i32* %310, align 4
  %312 = add i32 %311, 1
  %313 = zext i32 %312 to i64
  store i64 %313, i64* %RAX, align 8, !tbaa !2428
  %314 = icmp eq i32 %311, -1
  %315 = icmp eq i32 %312, 0
  %316 = or i1 %314, %315
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %13, align 1, !tbaa !2432
  %318 = and i32 %312, 255
  %319 = tail call i32 @llvm.ctpop.i32(i32 %318) #12
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  %322 = xor i8 %321, 1
  store i8 %322, i8* %20, align 1, !tbaa !2446
  %323 = xor i32 %312, %311
  %324 = lshr i32 %323, 4
  %325 = trunc i32 %324 to i8
  %326 = and i8 %325, 1
  store i8 %326, i8* %26, align 1, !tbaa !2447
  %327 = zext i1 %315 to i8
  store i8 %327, i8* %29, align 1, !tbaa !2448
  %328 = lshr i32 %312, 31
  %329 = trunc i32 %328 to i8
  store i8 %329, i8* %32, align 1, !tbaa !2449
  %330 = lshr i32 %311, 31
  %331 = xor i32 %328, %330
  %332 = add nuw nsw i32 %331, %328
  %333 = icmp eq i32 %332, 2
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %38, align 1, !tbaa !2450
  %335 = add i64 %308, 15
  store i64 %335, i64* %PC, align 8
  store i32 %312, i32* %310, align 4
  %336 = load i64, i64* %PC, align 8
  %337 = add i64 %336, -58
  store i64 %337, i64* %PC, align 8, !tbaa !2428
  br label %block_401b76

block_401be3:                                     ; preds = %block_401bb5, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit
  %338 = phi i64 [ %.pre8, %block_401bb5 ], [ %141, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit ]
  %MEMORY.2 = phi %struct.Memory* [ %258, %block_401bb5 ], [ %100, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit ]
  %339 = load i64, i64* %RBP, align 8
  %340 = add i64 %339, -424
  %341 = add i64 %338, 6
  store i64 %341, i64* %PC, align 8
  %342 = inttoptr i64 %340 to i32*
  %343 = load i32, i32* %342, align 4
  %344 = zext i32 %343 to i64
  store i64 %344, i64* %RAX, align 8, !tbaa !2428
  %345 = add i64 %339, -428
  %346 = add i64 %338, 12
  store i64 %346, i64* %PC, align 8
  %347 = inttoptr i64 %345 to i32*
  %348 = load i32, i32* %347, align 4
  %349 = sub i32 %343, %348
  %350 = icmp ult i32 %343, %348
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %13, align 1, !tbaa !2432
  %352 = and i32 %349, 255
  %353 = tail call i32 @llvm.ctpop.i32(i32 %352) #12
  %354 = trunc i32 %353 to i8
  %355 = and i8 %354, 1
  %356 = xor i8 %355, 1
  store i8 %356, i8* %20, align 1, !tbaa !2446
  %357 = xor i32 %348, %343
  %358 = xor i32 %357, %349
  %359 = lshr i32 %358, 4
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  store i8 %361, i8* %26, align 1, !tbaa !2447
  %362 = icmp eq i32 %349, 0
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %29, align 1, !tbaa !2448
  %364 = lshr i32 %349, 31
  %365 = trunc i32 %364 to i8
  store i8 %365, i8* %32, align 1, !tbaa !2449
  %366 = lshr i32 %343, 31
  %367 = lshr i32 %348, 31
  %368 = xor i32 %367, %366
  %369 = xor i32 %364, %366
  %370 = add nuw nsw i32 %369, %368
  %371 = icmp eq i32 %370, 2
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %38, align 1, !tbaa !2450
  %373 = icmp ne i8 %365, 0
  %374 = xor i1 %373, %371
  %.v12 = select i1 %374, i64 18, i64 87
  %375 = add i64 %338, %.v12
  store i64 %375, i64* %PC, align 8, !tbaa !2428
  br i1 %374, label %block_401bf5, label %block_401c3a

block_401c61:                                     ; preds = %block_401b5c
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %376 = load i64, i64* %RSP, align 8
  %377 = add i64 %376, 432
  store i64 %377, i64* %RSP, align 8, !tbaa !2428
  %378 = icmp ugt i64 %376, -433
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %13, align 1, !tbaa !2432
  %380 = trunc i64 %377 to i32
  %381 = and i32 %380, 255
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381) #12
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %20, align 1, !tbaa !2446
  %386 = xor i64 %376, 16
  %387 = xor i64 %386, %377
  %388 = lshr i64 %387, 4
  %389 = trunc i64 %388 to i8
  %390 = and i8 %389, 1
  store i8 %390, i8* %26, align 1, !tbaa !2447
  %391 = icmp eq i64 %377, 0
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %29, align 1, !tbaa !2448
  %393 = lshr i64 %377, 63
  %394 = trunc i64 %393 to i8
  store i8 %394, i8* %32, align 1, !tbaa !2449
  %395 = lshr i64 %376, 63
  %396 = xor i64 %393, %395
  %397 = add nuw nsw i64 %396, %393
  %398 = icmp eq i64 %397, 2
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %38, align 1, !tbaa !2450
  %400 = add i64 %172, 10
  store i64 %400, i64* %PC, align 8
  %401 = add i64 %376, 440
  %402 = inttoptr i64 %377 to i64*
  %403 = load i64, i64* %402, align 8
  store i64 %403, i64* %RBP, align 8, !tbaa !2428
  store i64 %401, i64* %RSP, align 8, !tbaa !2428
  %404 = add i64 %172, 11
  store i64 %404, i64* %PC, align 8
  %405 = inttoptr i64 %401 to i64*
  %406 = load i64, i64* %405, align 8
  store i64 %406, i64* %PC, align 8, !tbaa !2428
  %407 = add i64 %376, 448
  store i64 %407, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_401b6c:                                     ; preds = %block_401b5c
  %408 = add i64 %143, -424
  %409 = add i64 %172, 10
  store i64 %409, i64* %PC, align 8
  %410 = inttoptr i64 %408 to i32*
  store i32 0, i32* %410, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_401b76
}

; Function Attrs: noinline
define %struct.Memory* @sub_401880_rsenc_204(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone) local_unnamed_addr #7 {
block_401880:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %17 = add i64 %6, -16
  %18 = load i64, i64* %RDI, align 8
  %19 = add i64 %9, 11
  store i64 %19, i64* %PC, align 8
  %20 = inttoptr i64 %17 to i64*
  store i64 %18, i64* %20, align 8
  %21 = load i64, i64* %RBP, align 8
  %22 = add i64 %21, -16
  %23 = load i64, i64* %RSI, align 8
  %24 = load i64, i64* %PC, align 8
  %25 = add i64 %24, 4
  store i64 %25, i64* %PC, align 8
  %26 = inttoptr i64 %22 to i64*
  store i64 %23, i64* %26, align 8
  %27 = load i64, i64* %PC, align 8
  %28 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 16) to i32*), align 16
  store i8 0, i8* %11, align 1, !tbaa !2432
  %29 = and i32 %28, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29) #12
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  store i8 %33, i8* %12, align 1, !tbaa !2446
  store i8 0, i8* %13, align 1, !tbaa !2447
  %34 = icmp eq i32 %28, 0
  %35 = zext i1 %34 to i8
  store i8 %35, i8* %14, align 1, !tbaa !2448
  %36 = lshr i32 %28, 31
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  %.v = select i1 %34, i64 14, i64 35
  %38 = add i64 %27, %.v
  store i64 %38, i64* %PC, align 8, !tbaa !2428
  br i1 %34, label %block_40189e, label %block_4018b3

block_40189e:                                     ; preds = %block_401880
  %39 = add i64 %38, -4622
  %40 = add i64 %38, 5
  %41 = load i64, i64* %RSP, align 8, !tbaa !2428
  %42 = add i64 %41, -8
  %43 = inttoptr i64 %42 to i64*
  store i64 %40, i64* %43, align 8
  store i64 %42, i64* %RSP, align 8, !tbaa !2428
  store i64 %39, i64* %PC, align 8, !tbaa !2428
  %44 = tail call %struct.Memory* @sub_400690_generate_gf_renamed_(%struct.State* nonnull %0, i64 %39, %struct.Memory* %2)
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, -4291
  %47 = add i64 %45, 5
  %48 = load i64, i64* %RSP, align 8, !tbaa !2428
  %49 = add i64 %48, -8
  %50 = inttoptr i64 %49 to i64*
  store i64 %47, i64* %50, align 8
  store i64 %49, i64* %RSP, align 8, !tbaa !2428
  store i64 %46, i64* %PC, align 8, !tbaa !2428
  %51 = tail call %struct.Memory* @sub_4007e0_gen_poly_renamed_(%struct.State* nonnull %0, i64 %46, %struct.Memory* %44)
  %52 = load i64, i64* %PC, align 8
  %53 = add i64 %52, 11
  store i64 %53, i64* %PC, align 8
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 16) to i32*), align 16
  br label %block_4018b3

block_40199b:                                     ; preds = %block_401963
  %54 = load i64, i64* %RSP, align 8
  %55 = add i64 %54, 32
  store i64 %55, i64* %RSP, align 8, !tbaa !2428
  %56 = icmp ugt i64 %54, -33
  %57 = zext i1 %56 to i8
  store i8 %57, i8* %11, align 1, !tbaa !2432
  %58 = trunc i64 %55 to i32
  %59 = and i32 %58, 255
  %60 = tail call i32 @llvm.ctpop.i32(i32 %59) #12
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  %63 = xor i8 %62, 1
  store i8 %63, i8* %12, align 1, !tbaa !2446
  %64 = xor i64 %55, %54
  %65 = lshr i64 %64, 4
  %66 = trunc i64 %65 to i8
  %67 = and i8 %66, 1
  store i8 %67, i8* %13, align 1, !tbaa !2447
  %68 = icmp eq i64 %55, 0
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %14, align 1, !tbaa !2448
  %70 = lshr i64 %55, 63
  %71 = trunc i64 %70 to i8
  store i8 %71, i8* %15, align 1, !tbaa !2449
  %72 = lshr i64 %54, 63
  %73 = xor i64 %70, %72
  %74 = add nuw nsw i64 %73, %70
  %75 = icmp eq i64 %74, 2
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %16, align 1, !tbaa !2450
  %77 = add i64 %423, 5
  store i64 %77, i64* %PC, align 8
  %78 = add i64 %54, 40
  %79 = inttoptr i64 %55 to i64*
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %RBP, align 8, !tbaa !2428
  store i64 %78, i64* %RSP, align 8, !tbaa !2428
  %81 = add i64 %423, 6
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %78 to i64*
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %PC, align 8, !tbaa !2428
  %84 = add i64 %54, 48
  store i64 %84, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %387

block_4018ba:                                     ; preds = %block_4018c4, %block_4018b3
  %85 = phi i64 [ %468, %block_4018c4 ], [ %.pre, %block_4018b3 ]
  %86 = load i64, i64* %RBP, align 8
  %87 = add i64 %86, -20
  %88 = add i64 %85, 4
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %87 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = add i32 %90, -51
  %92 = icmp ult i32 %90, 51
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %11, align 1, !tbaa !2432
  %94 = and i32 %91, 255
  %95 = tail call i32 @llvm.ctpop.i32(i32 %94) #12
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  %98 = xor i8 %97, 1
  store i8 %98, i8* %12, align 1, !tbaa !2446
  %99 = xor i32 %90, 16
  %100 = xor i32 %99, %91
  %101 = lshr i32 %100, 4
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  store i8 %103, i8* %13, align 1, !tbaa !2447
  %104 = icmp eq i32 %91, 0
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %14, align 1, !tbaa !2448
  %106 = lshr i32 %91, 31
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %15, align 1, !tbaa !2449
  %108 = lshr i32 %90, 31
  %109 = xor i32 %106, %108
  %110 = add nuw nsw i32 %109, %108
  %111 = icmp eq i32 %110, 2
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %16, align 1, !tbaa !2450
  %113 = icmp ne i8 %107, 0
  %114 = xor i1 %113, %111
  %.v18 = select i1 %114, i64 10, i64 39
  %115 = add i64 %85, %.v18
  store i64 %115, i64* %PC, align 8, !tbaa !2428
  br i1 %114, label %block_4018c4, label %block_4018e1

block_401938:                                     ; preds = %block_40192b
  %116 = add i64 %321, -16
  %117 = add i64 %350, 4
  store i64 %117, i64* %PC, align 8
  %118 = inttoptr i64 %116 to i64*
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %RAX, align 8, !tbaa !2428
  %120 = add i64 %350, 8
  store i64 %120, i64* %PC, align 8
  %121 = load i32, i32* %324, align 4
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %RCX, align 8, !tbaa !2428
  %123 = add i64 %119, %122
  %124 = add i64 %350, 11
  store i64 %124, i64* %PC, align 8
  %125 = inttoptr i64 %123 to i8*
  %126 = load i8, i8* %125, align 1
  store i8 %126, i8* %DL, align 1, !tbaa !2451
  %127 = add i64 %321, -8
  %128 = add i64 %350, 15
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %127 to i64*
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %RAX, align 8, !tbaa !2428
  %131 = add i64 %350, 19
  store i64 %131, i64* %PC, align 8
  %132 = load i32, i32* %324, align 4
  %133 = sext i32 %132 to i64
  store i64 %133, i64* %RCX, align 8, !tbaa !2428
  %134 = add i64 %130, %133
  %135 = add i64 %350, 22
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %134 to i8*
  store i8 %126, i8* %136, align 1
  %137 = load i64, i64* %RBP, align 8
  %138 = add i64 %137, -20
  %139 = load i64, i64* %PC, align 8
  %140 = add i64 %139, 3
  store i64 %140, i64* %PC, align 8
  %141 = inttoptr i64 %138 to i32*
  %142 = load i32, i32* %141, align 4
  %143 = add i32 %142, 1
  %144 = zext i32 %143 to i64
  store i64 %144, i64* %RAX, align 8, !tbaa !2428
  %145 = icmp eq i32 %142, -1
  %146 = icmp eq i32 %143, 0
  %147 = or i1 %145, %146
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %11, align 1, !tbaa !2432
  %149 = and i32 %143, 255
  %150 = tail call i32 @llvm.ctpop.i32(i32 %149) #12
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  %153 = xor i8 %152, 1
  store i8 %153, i8* %12, align 1, !tbaa !2446
  %154 = xor i32 %143, %142
  %155 = lshr i32 %154, 4
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  store i8 %157, i8* %13, align 1, !tbaa !2447
  %158 = zext i1 %146 to i8
  store i8 %158, i8* %14, align 1, !tbaa !2448
  %159 = lshr i32 %143, 31
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %15, align 1, !tbaa !2449
  %161 = lshr i32 %142, 31
  %162 = xor i32 %159, %161
  %163 = add nuw nsw i32 %162, %159
  %164 = icmp eq i32 %163, 2
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %16, align 1, !tbaa !2450
  %166 = add i64 %139, 9
  store i64 %166, i64* %PC, align 8
  store i32 %143, i32* %141, align 4
  %167 = load i64, i64* %PC, align 8
  %168 = add i64 %167, -44
  store i64 %168, i64* %PC, align 8, !tbaa !2428
  br label %block_40192b

block_4018f5:                                     ; preds = %block_4018e8
  %169 = add i64 %352, -16
  %170 = add i64 %381, 4
  store i64 %170, i64* %PC, align 8
  %171 = inttoptr i64 %169 to i64*
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %RAX, align 8, !tbaa !2428
  %173 = add i64 %381, 8
  store i64 %173, i64* %PC, align 8
  %174 = load i32, i32* %355, align 4
  %175 = sext i32 %174 to i64
  store i64 %175, i64* %RCX, align 8, !tbaa !2428
  %176 = add i64 %172, %175
  %177 = add i64 %381, 12
  store i64 %177, i64* %PC, align 8
  %178 = inttoptr i64 %176 to i8*
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i64
  store i64 %180, i64* %RDX, align 8, !tbaa !2428
  %181 = add i64 %381, 15
  store i64 %181, i64* %PC, align 8
  %182 = load i32, i32* %355, align 4
  %183 = add i32 %182, 51
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %RSI, align 8, !tbaa !2428
  %185 = icmp ugt i32 %182, -52
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %11, align 1, !tbaa !2432
  %187 = and i32 %183, 255
  %188 = tail call i32 @llvm.ctpop.i32(i32 %187) #12
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  %191 = xor i8 %190, 1
  store i8 %191, i8* %12, align 1, !tbaa !2446
  %192 = xor i32 %182, 16
  %193 = xor i32 %192, %183
  %194 = lshr i32 %193, 4
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  store i8 %196, i8* %13, align 1, !tbaa !2447
  %197 = icmp eq i32 %183, 0
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %14, align 1, !tbaa !2448
  %199 = lshr i32 %183, 31
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %15, align 1, !tbaa !2449
  %201 = lshr i32 %182, 31
  %202 = xor i32 %199, %201
  %203 = add nuw nsw i32 %202, %199
  %204 = icmp eq i32 %203, 2
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %16, align 1, !tbaa !2450
  %206 = sext i32 %183 to i64
  store i64 %206, i64* %RAX, align 8, !tbaa !2428
  %207 = shl nsw i64 %206, 2
  %208 = add i64 %207, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3184)
  %209 = zext i8 %179 to i32
  %210 = add i64 %381, 28
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %208 to i32*
  store i32 %209, i32* %211, align 4
  %212 = load i64, i64* %RBP, align 8
  %213 = add i64 %212, -20
  %214 = load i64, i64* %PC, align 8
  %215 = add i64 %214, 3
  store i64 %215, i64* %PC, align 8
  %216 = inttoptr i64 %213 to i32*
  %217 = load i32, i32* %216, align 4
  %218 = add i32 %217, 1
  %219 = zext i32 %218 to i64
  store i64 %219, i64* %RAX, align 8, !tbaa !2428
  %220 = icmp eq i32 %217, -1
  %221 = icmp eq i32 %218, 0
  %222 = or i1 %220, %221
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %11, align 1, !tbaa !2432
  %224 = and i32 %218, 255
  %225 = tail call i32 @llvm.ctpop.i32(i32 %224) #12
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = xor i8 %227, 1
  store i8 %228, i8* %12, align 1, !tbaa !2446
  %229 = xor i32 %218, %217
  %230 = lshr i32 %229, 4
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  store i8 %232, i8* %13, align 1, !tbaa !2447
  %233 = zext i1 %221 to i8
  store i8 %233, i8* %14, align 1, !tbaa !2448
  %234 = lshr i32 %218, 31
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %15, align 1, !tbaa !2449
  %236 = lshr i32 %217, 31
  %237 = xor i32 %234, %236
  %238 = add nuw nsw i32 %237, %234
  %239 = icmp eq i32 %238, 2
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %16, align 1, !tbaa !2450
  %241 = add i64 %214, 9
  store i64 %241, i64* %PC, align 8
  store i32 %218, i32* %216, align 4
  %242 = load i64, i64* %PC, align 8
  %243 = add i64 %242, -50
  store i64 %243, i64* %PC, align 8, !tbaa !2428
  br label %block_4018e8

block_40195c:                                     ; preds = %block_40192b
  %244 = add i64 %350, 7
  store i64 %244, i64* %PC, align 8
  store i32 0, i32* %324, align 4
  %.pre17 = load i64, i64* %PC, align 8
  br label %block_401963

block_40196d:                                     ; preds = %block_401963
  %245 = add i64 %423, 4
  store i64 %245, i64* %PC, align 8
  %246 = load i32, i32* %397, align 4
  %247 = sext i32 %246 to i64
  store i64 %247, i64* %RAX, align 8, !tbaa !2428
  %248 = shl nsw i64 %247, 2
  %249 = add i64 %248, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %250 = add i64 %423, 11
  store i64 %250, i64* %PC, align 8
  %251 = inttoptr i64 %249 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %RCX, align 8, !tbaa !2428
  %254 = trunc i32 %252 to i8
  store i8 %254, i8* %DL, align 1, !tbaa !2451
  %255 = add i64 %394, -8
  %256 = add i64 %423, 17
  store i64 %256, i64* %PC, align 8
  %257 = inttoptr i64 %255 to i64*
  %258 = load i64, i64* %257, align 8
  store i64 %258, i64* %RAX, align 8, !tbaa !2428
  %259 = add i64 %423, 20
  store i64 %259, i64* %PC, align 8
  %260 = load i32, i32* %397, align 4
  %261 = add i32 %260, 188
  %262 = zext i32 %261 to i64
  store i64 %262, i64* %RCX, align 8, !tbaa !2428
  %263 = icmp ugt i32 %260, -189
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %11, align 1, !tbaa !2432
  %265 = and i32 %261, 255
  %266 = tail call i32 @llvm.ctpop.i32(i32 %265) #12
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  %269 = xor i8 %268, 1
  store i8 %269, i8* %12, align 1, !tbaa !2446
  %270 = xor i32 %260, 16
  %271 = xor i32 %270, %261
  %272 = lshr i32 %271, 4
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  store i8 %274, i8* %13, align 1, !tbaa !2447
  %275 = icmp eq i32 %261, 0
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %14, align 1, !tbaa !2448
  %277 = lshr i32 %261, 31
  %278 = trunc i32 %277 to i8
  store i8 %278, i8* %15, align 1, !tbaa !2449
  %279 = lshr i32 %260, 31
  %280 = xor i32 %277, %279
  %281 = add nuw nsw i32 %280, %277
  %282 = icmp eq i32 %281, 2
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %16, align 1, !tbaa !2450
  %284 = sext i32 %261 to i64
  store i64 %284, i64* %RSI, align 8, !tbaa !2428
  %285 = add i64 %258, %284
  %286 = add i64 %423, 32
  store i64 %286, i64* %PC, align 8
  %287 = inttoptr i64 %285 to i8*
  store i8 %254, i8* %287, align 1
  %288 = load i64, i64* %RBP, align 8
  %289 = add i64 %288, -20
  %290 = load i64, i64* %PC, align 8
  %291 = add i64 %290, 3
  store i64 %291, i64* %PC, align 8
  %292 = inttoptr i64 %289 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = add i32 %293, 1
  %295 = zext i32 %294 to i64
  store i64 %295, i64* %RAX, align 8, !tbaa !2428
  %296 = icmp eq i32 %293, -1
  %297 = icmp eq i32 %294, 0
  %298 = or i1 %296, %297
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %11, align 1, !tbaa !2432
  %300 = and i32 %294, 255
  %301 = tail call i32 @llvm.ctpop.i32(i32 %300) #12
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = xor i8 %303, 1
  store i8 %304, i8* %12, align 1, !tbaa !2446
  %305 = xor i32 %294, %293
  %306 = lshr i32 %305, 4
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  store i8 %308, i8* %13, align 1, !tbaa !2447
  %309 = zext i1 %297 to i8
  store i8 %309, i8* %14, align 1, !tbaa !2448
  %310 = lshr i32 %294, 31
  %311 = trunc i32 %310 to i8
  store i8 %311, i8* %15, align 1, !tbaa !2449
  %312 = lshr i32 %293, 31
  %313 = xor i32 %310, %312
  %314 = add nuw nsw i32 %313, %310
  %315 = icmp eq i32 %314, 2
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %16, align 1, !tbaa !2450
  %317 = add i64 %290, 9
  store i64 %317, i64* %PC, align 8
  store i32 %294, i32* %292, align 4
  %318 = load i64, i64* %PC, align 8
  %319 = add i64 %318, -51
  store i64 %319, i64* %PC, align 8, !tbaa !2428
  br label %block_401963

block_40192b:                                     ; preds = %block_40191f, %block_401938
  %320 = phi i64 [ %.pre16, %block_40191f ], [ %168, %block_401938 ]
  %321 = load i64, i64* %RBP, align 8
  %322 = add i64 %321, -20
  %323 = add i64 %320, 7
  store i64 %323, i64* %PC, align 8
  %324 = inttoptr i64 %322 to i32*
  %325 = load i32, i32* %324, align 4
  %326 = add i32 %325, -188
  %327 = icmp ult i32 %325, 188
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %11, align 1, !tbaa !2432
  %329 = and i32 %326, 255
  %330 = tail call i32 @llvm.ctpop.i32(i32 %329) #12
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = xor i8 %332, 1
  store i8 %333, i8* %12, align 1, !tbaa !2446
  %334 = xor i32 %325, 16
  %335 = xor i32 %334, %326
  %336 = lshr i32 %335, 4
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  store i8 %338, i8* %13, align 1, !tbaa !2447
  %339 = icmp eq i32 %326, 0
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %14, align 1, !tbaa !2448
  %341 = lshr i32 %326, 31
  %342 = trunc i32 %341 to i8
  store i8 %342, i8* %15, align 1, !tbaa !2449
  %343 = lshr i32 %325, 31
  %344 = xor i32 %341, %343
  %345 = add nuw nsw i32 %344, %343
  %346 = icmp eq i32 %345, 2
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %16, align 1, !tbaa !2450
  %348 = icmp ne i8 %342, 0
  %349 = xor i1 %348, %346
  %.v20 = select i1 %349, i64 13, i64 49
  %350 = add i64 %320, %.v20
  store i64 %350, i64* %PC, align 8, !tbaa !2428
  br i1 %349, label %block_401938, label %block_40195c

block_4018e8:                                     ; preds = %block_4018e1, %block_4018f5
  %351 = phi i64 [ %.pre15, %block_4018e1 ], [ %243, %block_4018f5 ]
  %352 = load i64, i64* %RBP, align 8
  %353 = add i64 %352, -20
  %354 = add i64 %351, 7
  store i64 %354, i64* %PC, align 8
  %355 = inttoptr i64 %353 to i32*
  %356 = load i32, i32* %355, align 4
  %357 = add i32 %356, -188
  %358 = icmp ult i32 %356, 188
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %11, align 1, !tbaa !2432
  %360 = and i32 %357, 255
  %361 = tail call i32 @llvm.ctpop.i32(i32 %360) #12
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  %364 = xor i8 %363, 1
  store i8 %364, i8* %12, align 1, !tbaa !2446
  %365 = xor i32 %356, 16
  %366 = xor i32 %365, %357
  %367 = lshr i32 %366, 4
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  store i8 %369, i8* %13, align 1, !tbaa !2447
  %370 = icmp eq i32 %357, 0
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %14, align 1, !tbaa !2448
  %372 = lshr i32 %357, 31
  %373 = trunc i32 %372 to i8
  store i8 %373, i8* %15, align 1, !tbaa !2449
  %374 = lshr i32 %356, 31
  %375 = xor i32 %372, %374
  %376 = add nuw nsw i32 %375, %374
  %377 = icmp eq i32 %376, 2
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %16, align 1, !tbaa !2450
  %379 = icmp ne i8 %373, 0
  %380 = xor i1 %379, %377
  %.v19 = select i1 %380, i64 13, i64 55
  %381 = add i64 %351, %.v19
  store i64 %381, i64* %PC, align 8, !tbaa !2428
  br i1 %380, label %block_4018f5, label %block_40191f

block_40191f:                                     ; preds = %block_4018e8
  %382 = add i64 %381, 145
  %383 = add i64 %381, 5
  %384 = load i64, i64* %RSP, align 8, !tbaa !2428
  %385 = add i64 %384, -8
  %386 = inttoptr i64 %385 to i64*
  store i64 %383, i64* %386, align 8
  store i64 %385, i64* %RSP, align 8, !tbaa !2428
  store i64 %382, i64* %PC, align 8, !tbaa !2428
  %387 = tail call %struct.Memory* @sub_4019b0_encode_rs_renamed_(%struct.State* nonnull %0, i64 %382, %struct.Memory* %MEMORY.4)
  %388 = load i64, i64* %RBP, align 8
  %389 = add i64 %388, -20
  %390 = load i64, i64* %PC, align 8
  %391 = add i64 %390, 7
  store i64 %391, i64* %PC, align 8
  %392 = inttoptr i64 %389 to i32*
  store i32 0, i32* %392, align 4
  %.pre16 = load i64, i64* %PC, align 8
  br label %block_40192b

block_401963:                                     ; preds = %block_40196d, %block_40195c
  %393 = phi i64 [ %319, %block_40196d ], [ %.pre17, %block_40195c ]
  %394 = load i64, i64* %RBP, align 8
  %395 = add i64 %394, -20
  %396 = add i64 %393, 4
  store i64 %396, i64* %PC, align 8
  %397 = inttoptr i64 %395 to i32*
  %398 = load i32, i32* %397, align 4
  %399 = add i32 %398, -16
  %400 = icmp ult i32 %398, 16
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %11, align 1, !tbaa !2432
  %402 = and i32 %399, 255
  %403 = tail call i32 @llvm.ctpop.i32(i32 %402) #12
  %404 = trunc i32 %403 to i8
  %405 = and i8 %404, 1
  %406 = xor i8 %405, 1
  store i8 %406, i8* %12, align 1, !tbaa !2446
  %407 = xor i32 %398, 16
  %408 = xor i32 %407, %399
  %409 = lshr i32 %408, 4
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  store i8 %411, i8* %13, align 1, !tbaa !2447
  %412 = icmp eq i32 %399, 0
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %14, align 1, !tbaa !2448
  %414 = lshr i32 %399, 31
  %415 = trunc i32 %414 to i8
  store i8 %415, i8* %15, align 1, !tbaa !2449
  %416 = lshr i32 %398, 31
  %417 = xor i32 %414, %416
  %418 = add nuw nsw i32 %417, %416
  %419 = icmp eq i32 %418, 2
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %16, align 1, !tbaa !2450
  %421 = icmp ne i8 %415, 0
  %422 = xor i1 %421, %419
  %.v21 = select i1 %422, i64 10, i64 56
  %423 = add i64 %393, %.v21
  store i64 %423, i64* %PC, align 8, !tbaa !2428
  br i1 %422, label %block_40196d, label %block_40199b

block_4018e1:                                     ; preds = %block_4018ba
  %424 = add i64 %115, 7
  store i64 %424, i64* %PC, align 8
  store i32 0, i32* %89, align 4
  %.pre15 = load i64, i64* %PC, align 8
  br label %block_4018e8

block_4018b3:                                     ; preds = %block_401880, %block_40189e
  %425 = phi i64 [ %38, %block_401880 ], [ %53, %block_40189e ]
  %MEMORY.4 = phi %struct.Memory* [ %2, %block_401880 ], [ %51, %block_40189e ]
  %426 = load i64, i64* %RBP, align 8
  %427 = add i64 %426, -20
  %428 = add i64 %425, 7
  store i64 %428, i64* %PC, align 8
  %429 = inttoptr i64 %427 to i32*
  store i32 0, i32* %429, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_4018ba

block_4018c4:                                     ; preds = %block_4018ba
  %430 = add i64 %115, 4
  store i64 %430, i64* %PC, align 8
  %431 = load i32, i32* %89, align 4
  %432 = sext i32 %431 to i64
  store i64 %432, i64* %RAX, align 8, !tbaa !2428
  %433 = shl nsw i64 %432, 2
  %434 = add i64 %433, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3184)
  %435 = add i64 %115, 15
  store i64 %435, i64* %PC, align 8
  %436 = inttoptr i64 %434 to i32*
  store i32 0, i32* %436, align 4
  %437 = load i64, i64* %RBP, align 8
  %438 = add i64 %437, -20
  %439 = load i64, i64* %PC, align 8
  %440 = add i64 %439, 3
  store i64 %440, i64* %PC, align 8
  %441 = inttoptr i64 %438 to i32*
  %442 = load i32, i32* %441, align 4
  %443 = add i32 %442, 1
  %444 = zext i32 %443 to i64
  store i64 %444, i64* %RAX, align 8, !tbaa !2428
  %445 = icmp eq i32 %442, -1
  %446 = icmp eq i32 %443, 0
  %447 = or i1 %445, %446
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %11, align 1, !tbaa !2432
  %449 = and i32 %443, 255
  %450 = tail call i32 @llvm.ctpop.i32(i32 %449) #12
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  %453 = xor i8 %452, 1
  store i8 %453, i8* %12, align 1, !tbaa !2446
  %454 = xor i32 %443, %442
  %455 = lshr i32 %454, 4
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  store i8 %457, i8* %13, align 1, !tbaa !2447
  %458 = zext i1 %446 to i8
  store i8 %458, i8* %14, align 1, !tbaa !2448
  %459 = lshr i32 %443, 31
  %460 = trunc i32 %459 to i8
  store i8 %460, i8* %15, align 1, !tbaa !2449
  %461 = lshr i32 %442, 31
  %462 = xor i32 %459, %461
  %463 = add nuw nsw i32 %462, %459
  %464 = icmp eq i32 %463, 2
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %16, align 1, !tbaa !2450
  %466 = add i64 %439, 9
  store i64 %466, i64* %PC, align 8
  store i32 %443, i32* %441, align 4
  %467 = load i64, i64* %PC, align 8
  %468 = add i64 %467, -34
  store i64 %468, i64* %PC, align 8, !tbaa !2428
  br label %block_4018ba
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400510_frame_dummy() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400510;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_400510_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400510_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4004e0___do_global_dtors_aux() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4004e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_4004e0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4004e0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401ce0___libc_csu_fini() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401ce0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_401ce0___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401ce0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_401c70___libc_csu_init() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401c70;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_401c70___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401c70___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401b40;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401b40_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6040d0___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6040d8_random(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @random to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4003f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #12
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
  %6 = tail call %struct.Memory* @sub_4003f0__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @rsenc_204() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401880;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @rsenc_204_wrapper(%struct.State*, i64, %struct.Memory* readnone) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401880_rsenc_204(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @rsdec_204() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400520;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @rsdec_204_wrapper(%struct.State*, i64, %struct.Memory* readnone) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400520_rsdec_204(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401ce4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #12
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
  %6 = tail call %struct.Memory* @sub_401ce4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
  tail call void @callback_sub_401c70___libc_csu_init()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #12 {
  tail call void @callback_sub_401ce0___libc_csu_fini()
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
!2447 = !{!2433, !2430, i64 2069}
!2448 = !{!2433, !2430, i64 2071}
!2449 = !{!2433, !2430, i64 2073}
!2450 = !{!2433, !2430, i64 2077}
!2451 = !{!2430, !2430, i64 0}
