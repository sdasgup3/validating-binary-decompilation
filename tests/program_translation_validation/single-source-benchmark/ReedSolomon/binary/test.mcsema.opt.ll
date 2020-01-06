; ModuleID = 'binary/test.mcsema.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_602df0__init_array_type = type <{ i64, i64 }>
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
@seg_602df0__init_array = internal global %seg_602df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_4004e0_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_4004b0___do_global_dtors_aux to i64) }>
@seg_602ff0__got = internal global %seg_602ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_603020__data = internal global %seg_603020__data_type <{ [16 x i8] zeroinitializer, [36 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00" }>
@seg_603060__bss = internal global %seg_603060__bss_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4004e0_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4004b0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401cb0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401c40___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @rsenc_204_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @rsdec_204_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @sub_401850_rsenc_204_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401980_encode_rs_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4004f0_rsdec_204_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4003c8__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400910_decode_rs_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400440_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400660_generate_gf_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007b0_gen_poly_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @random() #5

; Function Attrs: noinline
define %struct.Memory* @sub_401b10_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401b10:
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
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !2428
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %10 = load i64, i64* %PC, align 8
  store i64 %8, i64* %RBP, align 8, !tbaa !2428
  %11 = add i64 %7, -440
  store i64 %11, i64* %RSP, align 8, !tbaa !2428
  %12 = icmp ult i64 %8, 432
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
  %40 = add i64 %7, -12
  %41 = add i64 %10, 17
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %40 to i32*
  store i32 0, i32* %42, align 4
  %43 = load i64, i64* %RBP, align 8
  %44 = add i64 %43, -420
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, 10
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %44 to i32*
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_401b2c

block_401bc5:                                     ; preds = %block_401bb3
  %51 = add i64 %243, -6101
  %52 = add i64 %243, 5
  %53 = load i64, i64* %6, align 8, !tbaa !2428
  %54 = add i64 %53, -8
  %55 = inttoptr i64 %54 to i64*
  store i64 %52, i64* %55, align 8
  store i64 %54, i64* %6, align 8, !tbaa !2428
  store i64 %51, i64* %48, align 8, !tbaa !2428
  %56 = tail call fastcc %struct.Memory* @ext_6040d8_random(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %57 = load i64, i64* %RAX, align 8
  %58 = load i64, i64* %PC, align 8
  %59 = and i64 %57, 255
  store i64 %59, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %14, align 1, !tbaa !2432
  %60 = trunc i64 %57 to i32
  %61 = and i32 %60, 255
  %62 = tail call i32 @llvm.ctpop.i32(i32 %61) #8
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, 1
  %65 = xor i8 %64, 1
  store i8 %65, i8* %21, align 1, !tbaa !2446
  %66 = icmp eq i64 %59, 0
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %30, align 1, !tbaa !2448
  store i8 0, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  store i8 0, i8* %27, align 1, !tbaa !2447
  %68 = trunc i64 %57 to i8
  store i8 %68, i8* %CL, align 1, !tbaa !2451
  %69 = load i64, i64* %RBP, align 8
  %70 = add i64 %69, -429
  %71 = add i64 %58, 14
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %70 to i8*
  store i8 %68, i8* %72, align 1
  %73 = load i64, i64* %PC, align 8
  %74 = add i64 %73, -6120
  %75 = add i64 %73, 5
  %76 = load i64, i64* %6, align 8, !tbaa !2428
  %77 = add i64 %76, -8
  %78 = inttoptr i64 %77 to i64*
  store i64 %75, i64* %78, align 8
  store i64 %77, i64* %6, align 8, !tbaa !2428
  store i64 %74, i64* %48, align 8, !tbaa !2428
  %79 = tail call fastcc %struct.Memory* @ext_6040d8_random(%struct.State* nonnull %0, %struct.Memory* %56)
  %80 = load i64, i64* %PC, align 8
  store i64 204, i64* %RSI, align 8, !tbaa !2428
  %81 = load i64, i64* %50, align 8, !tbaa !2428
  %82 = ashr i64 %81, 63
  store i64 %82, i64* %49, align 8, !tbaa !2428
  %83 = add i64 %80, 12
  store i64 %83, i64* %PC, align 8
  %84 = zext i64 %82 to i128
  %85 = shl nuw i128 %84, 64
  %86 = zext i64 %81 to i128
  %87 = or i128 %85, %86
  %88 = sdiv i128 %87, 204
  %89 = trunc i128 %88 to i64
  %90 = and i128 %88, 18446744073709551615
  %91 = sext i64 %89 to i128
  %92 = and i128 %91, -18446744073709551616
  %93 = or i128 %92, %90
  %94 = icmp eq i128 %88, %93
  br i1 %94, label %97, label %95

; <label>:95:                                     ; preds = %block_401bc5
  %96 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %83, %struct.Memory* %79) #9
  %.pre3 = load i64, i64* %PC, align 8
  %.pre4 = load i64, i64* %RDX, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:97:                                     ; preds = %block_401bc5
  %98 = srem i128 %87, 204
  %99 = trunc i128 %98 to i64
  store i64 %89, i64* %50, align 8, !tbaa !2428
  store i64 %99, i64* %49, align 8, !tbaa !2428
  store i8 0, i8* %14, align 1, !tbaa !2432
  store i8 0, i8* %21, align 1, !tbaa !2446
  store i8 0, i8* %27, align 1, !tbaa !2447
  store i8 0, i8* %30, align 1, !tbaa !2448
  store i8 0, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %97, %95
  %100 = phi i64 [ %.pre4, %95 ], [ %99, %97 ]
  %101 = phi i64 [ %.pre3, %95 ], [ %83, %97 ]
  %102 = phi %struct.Memory* [ %96, %95 ], [ %79, %97 ]
  %103 = load i64, i64* %RBP, align 8
  %104 = add i64 %103, -429
  %105 = add i64 %101, 6
  store i64 %105, i64* %PC, align 8
  %106 = inttoptr i64 %104 to i8*
  %107 = load i8, i8* %106, align 1
  store i8 %107, i8* %CL, align 1, !tbaa !2451
  %108 = add i64 %103, -416
  %109 = add i64 %108, %100
  %110 = add i64 %101, 13
  store i64 %110, i64* %PC, align 8
  %111 = inttoptr i64 %109 to i8*
  store i8 %107, i8* %111, align 1
  %112 = load i64, i64* %RBP, align 8
  %113 = add i64 %112, -424
  %114 = load i64, i64* %PC, align 8
  %115 = add i64 %114, 6
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %113 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = add i32 %117, 1
  %119 = zext i32 %118 to i64
  store i64 %119, i64* %RAX, align 8, !tbaa !2428
  %120 = icmp eq i32 %117, -1
  %121 = icmp eq i32 %118, 0
  %122 = or i1 %120, %121
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %14, align 1, !tbaa !2432
  %124 = and i32 %118, 255
  %125 = tail call i32 @llvm.ctpop.i32(i32 %124) #8
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  store i8 %128, i8* %21, align 1, !tbaa !2446
  %129 = xor i32 %117, %118
  %130 = lshr i32 %129, 4
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  store i8 %132, i8* %27, align 1, !tbaa !2447
  %133 = icmp eq i32 %118, 0
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %30, align 1, !tbaa !2448
  %135 = lshr i32 %118, 31
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %33, align 1, !tbaa !2449
  %137 = lshr i32 %117, 31
  %138 = xor i32 %135, %137
  %139 = add nuw nsw i32 %138, %135
  %140 = icmp eq i32 %139, 2
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %39, align 1, !tbaa !2450
  %142 = add i64 %114, 15
  store i64 %142, i64* %PC, align 8
  store i32 %118, i32* %116, align 4
  %143 = load i64, i64* %PC, align 8
  %144 = add i64 %143, -82
  store i64 %144, i64* %48, align 8, !tbaa !2428
  br label %block_401bb3

block_401b56:                                     ; preds = %block_401b46
  %145 = add i64 %381, -5990
  %146 = add i64 %381, 5
  %147 = load i64, i64* %6, align 8, !tbaa !2428
  %148 = add i64 %147, -8
  %149 = inttoptr i64 %148 to i64*
  store i64 %146, i64* %149, align 8
  store i64 %148, i64* %6, align 8, !tbaa !2428
  store i64 %145, i64* %48, align 8, !tbaa !2428
  %150 = tail call fastcc %struct.Memory* @ext_6040d8_random(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %151 = load i64, i64* %RAX, align 8
  %152 = load i64, i64* %PC, align 8
  %153 = and i64 %151, 255
  store i64 %153, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %14, align 1, !tbaa !2432
  %154 = trunc i64 %151 to i32
  %155 = and i32 %154, 255
  %156 = tail call i32 @llvm.ctpop.i32(i32 %155) #8
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  store i8 %159, i8* %21, align 1, !tbaa !2446
  %160 = icmp eq i64 %153, 0
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %30, align 1, !tbaa !2448
  store i8 0, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  store i8 0, i8* %27, align 1, !tbaa !2447
  %162 = trunc i64 %151 to i8
  store i8 %162, i8* %CL, align 1, !tbaa !2451
  %163 = load i64, i64* %RBP, align 8
  %164 = add i64 %163, -424
  %165 = add i64 %152, 15
  store i64 %165, i64* %PC, align 8
  %166 = inttoptr i64 %164 to i32*
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %RAX, align 8, !tbaa !2428
  %169 = add i64 %163, -208
  %170 = add i64 %169, %168
  %171 = add i64 %152, 22
  store i64 %171, i64* %PC, align 8
  %172 = inttoptr i64 %170 to i8*
  store i8 %162, i8* %172, align 1
  %173 = load i64, i64* %RBP, align 8
  %174 = add i64 %173, -424
  %175 = load i64, i64* %PC, align 8
  %176 = add i64 %175, 6
  store i64 %176, i64* %PC, align 8
  %177 = inttoptr i64 %174 to i32*
  %178 = load i32, i32* %177, align 4
  %179 = add i32 %178, 1
  %180 = zext i32 %179 to i64
  store i64 %180, i64* %RAX, align 8, !tbaa !2428
  %181 = icmp eq i32 %178, -1
  %182 = icmp eq i32 %179, 0
  %183 = or i1 %181, %182
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %14, align 1, !tbaa !2432
  %185 = and i32 %179, 255
  %186 = tail call i32 @llvm.ctpop.i32(i32 %185) #8
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  %189 = xor i8 %188, 1
  store i8 %189, i8* %21, align 1, !tbaa !2446
  %190 = xor i32 %178, %179
  %191 = lshr i32 %190, 4
  %192 = trunc i32 %191 to i8
  %193 = and i8 %192, 1
  store i8 %193, i8* %27, align 1, !tbaa !2447
  %194 = icmp eq i32 %179, 0
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %30, align 1, !tbaa !2448
  %196 = lshr i32 %179, 31
  %197 = trunc i32 %196 to i8
  store i8 %197, i8* %33, align 1, !tbaa !2449
  %198 = lshr i32 %178, 31
  %199 = xor i32 %196, %198
  %200 = add nuw nsw i32 %199, %196
  %201 = icmp eq i32 %200, 2
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %39, align 1, !tbaa !2450
  %203 = add i64 %175, 15
  store i64 %203, i64* %PC, align 8
  store i32 %179, i32* %177, align 4
  %204 = load i64, i64* %PC, align 8
  %205 = add i64 %204, -58
  store i64 %205, i64* %48, align 8, !tbaa !2428
  br label %block_401b46

block_401bb3:                                     ; preds = %block_401b85, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit
  %206 = phi i64 [ %.pre2, %block_401b85 ], [ %144, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit ]
  %MEMORY.0 = phi %struct.Memory* [ %396, %block_401b85 ], [ %102, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit ]
  %207 = load i64, i64* %RBP, align 8
  %208 = add i64 %207, -424
  %209 = add i64 %206, 6
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %208 to i32*
  %211 = load i32, i32* %210, align 4
  %212 = zext i32 %211 to i64
  store i64 %212, i64* %RAX, align 8, !tbaa !2428
  %213 = add i64 %207, -428
  %214 = add i64 %206, 12
  store i64 %214, i64* %PC, align 8
  %215 = inttoptr i64 %213 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = sub i32 %211, %216
  %218 = icmp ult i32 %211, %216
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %14, align 1, !tbaa !2432
  %220 = and i32 %217, 255
  %221 = tail call i32 @llvm.ctpop.i32(i32 %220) #8
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  %224 = xor i8 %223, 1
  store i8 %224, i8* %21, align 1, !tbaa !2446
  %225 = xor i32 %216, %211
  %226 = xor i32 %225, %217
  %227 = lshr i32 %226, 4
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  store i8 %229, i8* %27, align 1, !tbaa !2447
  %230 = icmp eq i32 %217, 0
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %30, align 1, !tbaa !2448
  %232 = lshr i32 %217, 31
  %233 = trunc i32 %232 to i8
  store i8 %233, i8* %33, align 1, !tbaa !2449
  %234 = lshr i32 %211, 31
  %235 = lshr i32 %216, 31
  %236 = xor i32 %235, %234
  %237 = xor i32 %232, %234
  %238 = add nuw nsw i32 %237, %236
  %239 = icmp eq i32 %238, 2
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %39, align 1, !tbaa !2450
  %241 = icmp ne i8 %233, 0
  %242 = xor i1 %241, %239
  %.v6 = select i1 %242, i64 18, i64 87
  %243 = add i64 %206, %.v6
  store i64 %243, i64* %48, align 8, !tbaa !2428
  br i1 %242, label %block_401bc5, label %block_401c0a

block_401b3c:                                     ; preds = %block_401b2c
  %244 = add i64 %248, -424
  %245 = add i64 %277, 10
  store i64 %245, i64* %PC, align 8
  %246 = inttoptr i64 %244 to i32*
  store i32 0, i32* %246, align 4
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_401b46

block_401b2c:                                     ; preds = %block_401c0a, %block_401b10
  %247 = phi i64 [ %.pre, %block_401b10 ], [ %318, %block_401c0a ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_401b10 ], [ %285, %block_401c0a ]
  %248 = load i64, i64* %RBP, align 8
  %249 = add i64 %248, -420
  %250 = add i64 %247, 10
  store i64 %250, i64* %PC, align 8
  %251 = inttoptr i64 %249 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = add i32 %252, -150000
  %254 = icmp ult i32 %252, 150000
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %14, align 1, !tbaa !2432
  %256 = and i32 %253, 255
  %257 = tail call i32 @llvm.ctpop.i32(i32 %256) #8
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  store i8 %260, i8* %21, align 1, !tbaa !2446
  %261 = xor i32 %252, 16
  %262 = xor i32 %261, %253
  %263 = lshr i32 %262, 4
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  store i8 %265, i8* %27, align 1, !tbaa !2447
  %266 = icmp eq i32 %253, 0
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %30, align 1, !tbaa !2448
  %268 = lshr i32 %253, 31
  %269 = trunc i32 %268 to i8
  store i8 %269, i8* %33, align 1, !tbaa !2449
  %270 = lshr i32 %252, 31
  %271 = xor i32 %268, %270
  %272 = add nuw nsw i32 %271, %270
  %273 = icmp eq i32 %272, 2
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %39, align 1, !tbaa !2450
  %275 = icmp ne i8 %269, 0
  %276 = xor i1 %275, %273
  %.v = select i1 %276, i64 16, i64 261
  %277 = add i64 %247, %.v
  store i64 %277, i64* %48, align 8, !tbaa !2428
  br i1 %276, label %block_401b3c, label %block_401c31

block_401c0a:                                     ; preds = %block_401bb3
  %278 = add i64 %207, -416
  store i64 %278, i64* %RSI, align 8, !tbaa !2428
  %279 = add i64 %207, -208
  store i64 %279, i64* %RDI, align 8, !tbaa !2428
  %280 = add i64 %243, -5914
  %281 = add i64 %243, 19
  %282 = load i64, i64* %6, align 8, !tbaa !2428
  %283 = add i64 %282, -8
  %284 = inttoptr i64 %283 to i64*
  store i64 %281, i64* %284, align 8
  store i64 %283, i64* %6, align 8, !tbaa !2428
  store i64 %280, i64* %48, align 8, !tbaa !2428
  %285 = tail call %struct.Memory* @sub_4004f0_rsdec_204_renamed_(%struct.State* nonnull %0, i64 %280, %struct.Memory* %MEMORY.0)
  %286 = load i64, i64* %RBP, align 8
  %287 = add i64 %286, -420
  %288 = load i64, i64* %PC, align 8
  %289 = add i64 %288, 6
  store i64 %289, i64* %PC, align 8
  %290 = inttoptr i64 %287 to i32*
  %291 = load i32, i32* %290, align 4
  %292 = add i32 %291, 1
  %293 = zext i32 %292 to i64
  store i64 %293, i64* %RAX, align 8, !tbaa !2428
  %294 = icmp eq i32 %291, -1
  %295 = icmp eq i32 %292, 0
  %296 = or i1 %294, %295
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %14, align 1, !tbaa !2432
  %298 = and i32 %292, 255
  %299 = tail call i32 @llvm.ctpop.i32(i32 %298) #8
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  %302 = xor i8 %301, 1
  store i8 %302, i8* %21, align 1, !tbaa !2446
  %303 = xor i32 %291, %292
  %304 = lshr i32 %303, 4
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  store i8 %306, i8* %27, align 1, !tbaa !2447
  %307 = icmp eq i32 %292, 0
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %30, align 1, !tbaa !2448
  %309 = lshr i32 %292, 31
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %33, align 1, !tbaa !2449
  %311 = lshr i32 %291, 31
  %312 = xor i32 %309, %311
  %313 = add nuw nsw i32 %312, %309
  %314 = icmp eq i32 %313, 2
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %39, align 1, !tbaa !2450
  %316 = add i64 %288, 15
  store i64 %316, i64* %PC, align 8
  store i32 %292, i32* %290, align 4
  %317 = load i64, i64* %PC, align 8
  %318 = add i64 %317, -256
  store i64 %318, i64* %48, align 8, !tbaa !2428
  br label %block_401b2c

block_401c31:                                     ; preds = %block_401b2c
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %319 = load i64, i64* %RSP, align 8
  %320 = add i64 %319, 432
  store i64 %320, i64* %RSP, align 8, !tbaa !2428
  %321 = icmp ugt i64 %319, -433
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %14, align 1, !tbaa !2432
  %323 = trunc i64 %320 to i32
  %324 = and i32 %323, 255
  %325 = tail call i32 @llvm.ctpop.i32(i32 %324) #8
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  %328 = xor i8 %327, 1
  store i8 %328, i8* %21, align 1, !tbaa !2446
  %329 = xor i64 %319, 16
  %330 = xor i64 %329, %320
  %331 = lshr i64 %330, 4
  %332 = trunc i64 %331 to i8
  %333 = and i8 %332, 1
  store i8 %333, i8* %27, align 1, !tbaa !2447
  %334 = icmp eq i64 %320, 0
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %30, align 1, !tbaa !2448
  %336 = lshr i64 %320, 63
  %337 = trunc i64 %336 to i8
  store i8 %337, i8* %33, align 1, !tbaa !2449
  %338 = lshr i64 %319, 63
  %339 = xor i64 %336, %338
  %340 = add nuw nsw i64 %339, %336
  %341 = icmp eq i64 %340, 2
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %39, align 1, !tbaa !2450
  %343 = add i64 %277, 10
  store i64 %343, i64* %PC, align 8
  %344 = add i64 %319, 440
  %345 = inttoptr i64 %320 to i64*
  %346 = load i64, i64* %345, align 8
  store i64 %346, i64* %RBP, align 8, !tbaa !2428
  store i64 %344, i64* %6, align 8, !tbaa !2428
  %347 = add i64 %277, 11
  store i64 %347, i64* %PC, align 8
  %348 = inttoptr i64 %344 to i64*
  %349 = load i64, i64* %348, align 8
  store i64 %349, i64* %48, align 8, !tbaa !2428
  %350 = add i64 %319, 448
  store i64 %350, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_401b46:                                     ; preds = %block_401b3c, %block_401b56
  %351 = phi i64 [ %.pre1, %block_401b3c ], [ %205, %block_401b56 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_401b3c ], [ %150, %block_401b56 ]
  %352 = load i64, i64* %RBP, align 8
  %353 = add i64 %352, -424
  %354 = add i64 %351, 10
  store i64 %354, i64* %PC, align 8
  %355 = inttoptr i64 %353 to i32*
  %356 = load i32, i32* %355, align 4
  %357 = add i32 %356, -188
  %358 = icmp ult i32 %356, 188
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %14, align 1, !tbaa !2432
  %360 = and i32 %357, 255
  %361 = tail call i32 @llvm.ctpop.i32(i32 %360) #8
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  %364 = xor i8 %363, 1
  store i8 %364, i8* %21, align 1, !tbaa !2446
  %365 = xor i32 %356, 16
  %366 = xor i32 %365, %357
  %367 = lshr i32 %366, 4
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  store i8 %369, i8* %27, align 1, !tbaa !2447
  %370 = icmp eq i32 %357, 0
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %30, align 1, !tbaa !2448
  %372 = lshr i32 %357, 31
  %373 = trunc i32 %372 to i8
  store i8 %373, i8* %33, align 1, !tbaa !2449
  %374 = lshr i32 %356, 31
  %375 = xor i32 %372, %374
  %376 = add nuw nsw i32 %375, %374
  %377 = icmp eq i32 %376, 2
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %39, align 1, !tbaa !2450
  %379 = icmp ne i8 %373, 0
  %380 = xor i1 %379, %377
  %.v5 = select i1 %380, i64 16, i64 63
  %381 = add i64 %351, %.v5
  store i64 %381, i64* %48, align 8, !tbaa !2428
  br i1 %380, label %block_401b56, label %block_401b85

block_401b85:                                     ; preds = %block_401b46
  %382 = add i64 %352, -208
  store i64 %382, i64* %RSI, align 8, !tbaa !2428
  %383 = add i64 %352, -416
  store i64 %383, i64* %RDI, align 8, !tbaa !2428
  %384 = add i64 %381, -821
  %385 = add i64 %381, 19
  %386 = load i64, i64* %6, align 8, !tbaa !2428
  %387 = add i64 %386, -8
  %388 = inttoptr i64 %387 to i64*
  store i64 %385, i64* %388, align 8
  store i64 %387, i64* %6, align 8, !tbaa !2428
  store i64 %384, i64* %48, align 8, !tbaa !2428
  %389 = tail call %struct.Memory* @sub_401850_rsenc_204_renamed_(%struct.State* nonnull %0, i64 %384, %struct.Memory* %MEMORY.2)
  %390 = load i64, i64* %PC, align 8
  %391 = add i64 %390, -6056
  %392 = add i64 %390, 5
  %393 = load i64, i64* %6, align 8, !tbaa !2428
  %394 = add i64 %393, -8
  %395 = inttoptr i64 %394 to i64*
  store i64 %392, i64* %395, align 8
  store i64 %394, i64* %6, align 8, !tbaa !2428
  store i64 %391, i64* %48, align 8, !tbaa !2428
  %396 = tail call fastcc %struct.Memory* @ext_6040d8_random(%struct.State* nonnull %0, %struct.Memory* %389)
  %397 = load i64, i64* %RAX, align 8
  %398 = load i64, i64* %PC, align 8
  %399 = and i64 %397, 127
  store i64 %399, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %14, align 1, !tbaa !2432
  %400 = trunc i64 %399 to i32
  %401 = tail call i32 @llvm.ctpop.i32(i32 %400) #8
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = xor i8 %403, 1
  store i8 %404, i8* %21, align 1, !tbaa !2446
  %405 = icmp eq i64 %399, 0
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %30, align 1, !tbaa !2448
  store i8 0, i8* %33, align 1, !tbaa !2449
  store i8 0, i8* %39, align 1, !tbaa !2450
  store i8 0, i8* %27, align 1, !tbaa !2447
  %407 = and i64 %397, 127
  store i64 %407, i64* %RCX, align 8, !tbaa !2428
  %408 = load i64, i64* %RBP, align 8
  %409 = add i64 %408, -428
  %410 = trunc i64 %407 to i32
  %411 = add i64 %398, 12
  store i64 %411, i64* %PC, align 8
  %412 = inttoptr i64 %409 to i32*
  store i32 %410, i32* %412, align 4
  %413 = load i64, i64* %RBP, align 8
  %414 = add i64 %413, -424
  %415 = load i64, i64* %PC, align 8
  %416 = add i64 %415, 10
  store i64 %416, i64* %PC, align 8
  %417 = inttoptr i64 %414 to i32*
  store i32 0, i32* %417, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_401bb3
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007b0_gen_poly(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4007b0:
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
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_4007d1

block_40087a:                                     ; preds = %block_40085f, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1
  %26 = phi i64 [ %.pre6, %block_40085f ], [ %281, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_40085f ], [ %251, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %27 = load i64, i64* %RBP, align 8
  %28 = add i64 %27, -8
  %29 = add i64 %26, 8
  store i64 %29, i64* %PC, align 8
  %30 = inttoptr i64 %28 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = add i32 %31, -1
  %33 = zext i32 %32 to i64
  store i64 %33, i64* %RAX, align 8, !tbaa !2428
  %34 = icmp ne i32 %31, 0
  %35 = zext i1 %34 to i8
  store i8 %35, i8* %16, align 1, !tbaa !2432
  %36 = and i32 %32, 255
  %37 = tail call i32 @llvm.ctpop.i32(i32 %36) #8
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 1
  %40 = xor i8 %39, 1
  store i8 %40, i8* %17, align 1, !tbaa !2446
  %41 = xor i32 %31, 16
  %42 = xor i32 %32, %41
  %43 = lshr i32 %42, 4
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 1
  store i8 %45, i8* %18, align 1, !tbaa !2447
  %46 = icmp eq i32 %32, 0
  %47 = zext i1 %46 to i8
  store i8 %47, i8* %19, align 1, !tbaa !2448
  %48 = lshr i32 %32, 31
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %20, align 1, !tbaa !2449
  %50 = lshr i32 %31, 31
  %51 = xor i32 %48, %50
  %52 = xor i32 %48, 1
  %53 = add nuw nsw i32 %51, %52
  %54 = icmp eq i32 %53, 2
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %21, align 1, !tbaa !2450
  %56 = add i64 %26, 14
  store i64 %56, i64* %PC, align 8
  store i32 %32, i32* %30, align 4
  %57 = load i64, i64* %PC, align 8
  %58 = add i64 %57, -149
  store i64 %58, i64* %22, align 8, !tbaa !2428
  br label %block_4007f3

block_4008d5:                                     ; preds = %block_4008ce, %block_4008df
  %59 = phi i64 [ %.pre10, %block_4008ce ], [ %336, %block_4008df ]
  %60 = load i64, i64* %RBP, align 8
  %61 = add i64 %60, -4
  %62 = add i64 %59, 4
  store i64 %62, i64* %PC, align 8
  %63 = inttoptr i64 %61 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = add i32 %64, -16
  %66 = icmp ult i32 %64, 16
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %16, align 1, !tbaa !2432
  %68 = and i32 %65, 255
  %69 = tail call i32 @llvm.ctpop.i32(i32 %68) #8
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  %72 = xor i8 %71, 1
  store i8 %72, i8* %17, align 1, !tbaa !2446
  %73 = xor i32 %64, 16
  %74 = xor i32 %73, %65
  %75 = lshr i32 %74, 4
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  store i8 %77, i8* %18, align 1, !tbaa !2447
  %78 = icmp eq i32 %65, 0
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %19, align 1, !tbaa !2448
  %80 = lshr i32 %65, 31
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %20, align 1, !tbaa !2449
  %82 = lshr i32 %64, 31
  %83 = xor i32 %80, %82
  %84 = add nuw nsw i32 %83, %82
  %85 = icmp eq i32 %84, 2
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %21, align 1, !tbaa !2450
  %87 = icmp ne i8 %81, 0
  %88 = xor i1 %87, %85
  %.demorgan13 = or i1 %78, %88
  %.v14 = select i1 %.demorgan13, i64 10, i64 54
  %89 = add i64 %59, %.v14
  store i64 %89, i64* %22, align 8, !tbaa !2428
  br i1 %.demorgan13, label %block_4008df, label %block_40090b

block_4007f3:                                     ; preds = %block_4007db, %block_40087a
  %90 = phi i64 [ %.pre2, %block_4007db ], [ %58, %block_40087a ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.3, %block_4007db ], [ %MEMORY.0, %block_40087a ]
  %91 = load i64, i64* %RBP, align 8
  %92 = add i64 %91, -8
  %93 = add i64 %90, 4
  store i64 %93, i64* %PC, align 8
  %94 = inttoptr i64 %92 to i32*
  %95 = load i32, i32* %94, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %96 = and i32 %95, 255
  %97 = tail call i32 @llvm.ctpop.i32(i32 %96) #8
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  %100 = xor i8 %99, 1
  store i8 %100, i8* %17, align 1, !tbaa !2446
  store i8 0, i8* %18, align 1, !tbaa !2447
  %101 = icmp eq i32 %95, 0
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %19, align 1, !tbaa !2448
  %103 = lshr i32 %95, 31
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %21, align 1, !tbaa !2450
  %105 = icmp ne i8 %104, 0
  %106 = or i1 %101, %105
  %.v11 = select i1 %106, i64 154, i64 10
  %107 = add i64 %90, %.v11
  store i64 %107, i64* %22, align 8, !tbaa !2428
  br i1 %106, label %block_40088d, label %block_4007fd

block_4007d1:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_4007b0
  %108 = phi i64 [ %.pre, %block_4007b0 ], [ %448, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %MEMORY.3 = phi %struct.Memory* [ %2, %block_4007b0 ], [ %410, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %109 = load i64, i64* %RBP, align 8
  %110 = add i64 %109, -4
  %111 = add i64 %108, 4
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %110 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = add i32 %113, -16
  %115 = icmp ult i32 %113, 16
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %16, align 1, !tbaa !2432
  %117 = and i32 %114, 255
  %118 = tail call i32 @llvm.ctpop.i32(i32 %117) #8
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  %121 = xor i8 %120, 1
  store i8 %121, i8* %17, align 1, !tbaa !2446
  %122 = xor i32 %113, 16
  %123 = xor i32 %122, %114
  %124 = lshr i32 %123, 4
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  store i8 %126, i8* %18, align 1, !tbaa !2447
  %127 = icmp eq i32 %114, 0
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %19, align 1, !tbaa !2448
  %129 = lshr i32 %114, 31
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %20, align 1, !tbaa !2449
  %131 = lshr i32 %113, 31
  %132 = xor i32 %129, %131
  %133 = add nuw nsw i32 %132, %131
  %134 = icmp eq i32 %133, 2
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %21, align 1, !tbaa !2450
  %136 = icmp ne i8 %130, 0
  %137 = xor i1 %136, %134
  %.demorgan = or i1 %127, %137
  %.v = select i1 %.demorgan, i64 10, i64 253
  %138 = add i64 %108, %.v
  store i64 %138, i64* %22, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_4007db, label %block_4008ce

block_40080f:                                     ; preds = %block_4007fd
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %139 = add i64 %513, 8
  store i64 %139, i64* %PC, align 8
  %140 = load i32, i32* %94, align 4
  %141 = add i32 %140, -1
  %142 = zext i32 %141 to i64
  store i64 %142, i64* %RCX, align 8, !tbaa !2428
  %143 = icmp eq i32 %140, 0
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %16, align 1, !tbaa !2432
  %145 = and i32 %141, 255
  %146 = tail call i32 @llvm.ctpop.i32(i32 %145) #8
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  store i8 %149, i8* %17, align 1, !tbaa !2446
  %150 = xor i32 %140, %141
  %151 = lshr i32 %150, 4
  %152 = trunc i32 %151 to i8
  %153 = and i8 %152, 1
  store i8 %153, i8* %18, align 1, !tbaa !2447
  %154 = icmp eq i32 %141, 0
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %19, align 1, !tbaa !2448
  %156 = lshr i32 %141, 31
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* %20, align 1, !tbaa !2449
  %158 = lshr i32 %140, 31
  %159 = xor i32 %156, %158
  %160 = add nuw nsw i32 %159, %158
  %161 = icmp eq i32 %160, 2
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %21, align 1, !tbaa !2450
  %163 = sext i32 %141 to i64
  store i64 %163, i64* %RDX, align 8, !tbaa !2428
  %164 = shl nsw i64 %163, 2
  %165 = add i64 %164, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %166 = add i64 %513, 21
  store i64 %166, i64* %PC, align 8
  %167 = inttoptr i64 %165 to i32*
  %168 = load i32, i32* %167, align 4
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %RCX, align 8, !tbaa !2428
  %170 = add i64 %513, 25
  store i64 %170, i64* %PC, align 8
  %171 = load i32, i32* %94, align 4
  %172 = sext i32 %171 to i64
  store i64 %172, i64* %RDX, align 8, !tbaa !2428
  %173 = shl nsw i64 %172, 2
  %174 = add i64 %173, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %175 = add i64 %513, 33
  store i64 %175, i64* %PC, align 8
  %176 = inttoptr i64 %174 to i32*
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  store i64 %178, i64* %RDX, align 8, !tbaa !2428
  %179 = shl nsw i64 %178, 2
  %180 = add i64 %179, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %181 = add i64 %513, 40
  store i64 %181, i64* %PC, align 8
  %182 = inttoptr i64 %180 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %RSI, align 8, !tbaa !2428
  %185 = add i64 %91, -4
  %186 = add i64 %513, 43
  store i64 %186, i64* %PC, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = add i32 %188, %183
  %190 = zext i32 %189 to i64
  store i64 %190, i64* %RSI, align 8, !tbaa !2428
  %191 = icmp ult i32 %189, %183
  %192 = icmp ult i32 %189, %188
  %193 = or i1 %191, %192
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %16, align 1, !tbaa !2432
  %195 = and i32 %189, 255
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195) #8
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  store i8 %199, i8* %17, align 1, !tbaa !2446
  %200 = xor i32 %188, %183
  %201 = xor i32 %200, %189
  %202 = lshr i32 %201, 4
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %18, align 1, !tbaa !2447
  %205 = icmp eq i32 %189, 0
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %19, align 1, !tbaa !2448
  %207 = lshr i32 %189, 31
  %208 = trunc i32 %207 to i8
  store i8 %208, i8* %20, align 1, !tbaa !2449
  %209 = lshr i32 %183, 31
  %210 = lshr i32 %188, 31
  %211 = xor i32 %207, %209
  %212 = xor i32 %207, %210
  %213 = add nuw nsw i32 %211, %212
  %214 = icmp eq i32 %213, 2
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %21, align 1, !tbaa !2450
  %216 = load i64, i64* %RBP, align 8
  %217 = add i64 %216, -12
  %218 = load i32, i32* %EAX, align 4
  %219 = add i64 %513, 46
  store i64 %219, i64* %PC, align 8
  %220 = inttoptr i64 %217 to i32*
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* %ESI, align 4
  %222 = zext i32 %221 to i64
  %223 = load i64, i64* %PC, align 8
  store i64 %222, i64* %RAX, align 8, !tbaa !2428
  %224 = sext i32 %221 to i64
  %225 = lshr i64 %224, 32
  store i64 %225, i64* %23, align 8, !tbaa !2428
  %226 = load i64, i64* %RBP, align 8
  %227 = add i64 %226, -12
  %228 = add i64 %223, 6
  store i64 %228, i64* %PC, align 8
  %229 = inttoptr i64 %227 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = zext i32 %230 to i64
  store i64 %231, i64* %RSI, align 8, !tbaa !2428
  %232 = add i64 %223, 8
  store i64 %232, i64* %PC, align 8
  %233 = zext i32 %221 to i64
  %234 = sext i32 %230 to i64
  %235 = shl nuw i64 %225, 32
  %236 = or i64 %235, %233
  %237 = sdiv i64 %236, %234
  %238 = shl i64 %237, 32
  %239 = ashr exact i64 %238, 32
  %240 = icmp eq i64 %237, %239
  br i1 %240, label %243, label %241

; <label>:241:                                    ; preds = %block_40080f
  %242 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %232, %struct.Memory* %MEMORY.2) #9
  %.pre3 = load i32, i32* %EDX, align 4
  %.pre4 = load i64, i64* %PC, align 8
  %.pre5 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:243:                                    ; preds = %block_40080f
  %244 = srem i64 %236, %234
  %245 = and i64 %237, 4294967295
  store i64 %245, i64* %24, align 8, !tbaa !2428
  %246 = and i64 %244, 4294967295
  store i64 %246, i64* %25, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %17, align 1, !tbaa !2446
  store i8 0, i8* %18, align 1, !tbaa !2447
  store i8 0, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %21, align 1, !tbaa !2450
  %247 = trunc i64 %244 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %243, %241
  %248 = phi i64 [ %.pre5, %241 ], [ %226, %243 ]
  %249 = phi i64 [ %.pre4, %241 ], [ %232, %243 ]
  %250 = phi i32 [ %.pre3, %241 ], [ %247, %243 ]
  %251 = phi %struct.Memory* [ %242, %241 ], [ %MEMORY.2, %243 ]
  %252 = sext i32 %250 to i64
  store i64 %252, i64* %RDI, align 8, !tbaa !2428
  %253 = load i64, i64* %RCX, align 8
  %254 = shl nsw i64 %252, 2
  %255 = add i64 %254, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %256 = add i64 %249, 10
  store i64 %256, i64* %PC, align 8
  %257 = trunc i64 %253 to i32
  %258 = inttoptr i64 %255 to i32*
  %259 = load i32, i32* %258, align 4
  %260 = xor i32 %259, %257
  %261 = zext i32 %260 to i64
  store i64 %261, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %262 = and i32 %260, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262) #8
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %17, align 1, !tbaa !2446
  %267 = icmp eq i32 %260, 0
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %19, align 1, !tbaa !2448
  %269 = lshr i32 %260, 31
  %270 = trunc i32 %269 to i8
  store i8 %270, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %21, align 1, !tbaa !2450
  store i8 0, i8* %18, align 1, !tbaa !2447
  %271 = add i64 %248, -8
  %272 = add i64 %249, 14
  store i64 %272, i64* %PC, align 8
  %273 = inttoptr i64 %271 to i32*
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  store i64 %275, i64* %RDI, align 8, !tbaa !2428
  %276 = shl nsw i64 %275, 2
  %277 = add i64 %276, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %278 = add i64 %249, 21
  store i64 %278, i64* %PC, align 8
  %279 = inttoptr i64 %277 to i32*
  store i32 %260, i32* %279, align 4
  %280 = load i64, i64* %PC, align 8
  %281 = add i64 %280, 32
  store i64 %281, i64* %22, align 8, !tbaa !2428
  br label %block_40087a

block_4008df:                                     ; preds = %block_4008d5
  %282 = add i64 %89, 4
  store i64 %282, i64* %PC, align 8
  %283 = load i32, i32* %63, align 4
  %284 = sext i32 %283 to i64
  store i64 %284, i64* %RAX, align 8, !tbaa !2428
  %285 = shl nsw i64 %284, 2
  %286 = add i64 %285, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %287 = add i64 %89, 12
  store i64 %287, i64* %PC, align 8
  %288 = inttoptr i64 %286 to i32*
  %289 = load i32, i32* %288, align 4
  %290 = sext i32 %289 to i64
  store i64 %290, i64* %RAX, align 8, !tbaa !2428
  %291 = shl nsw i64 %290, 2
  %292 = add i64 %291, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %293 = add i64 %89, 19
  store i64 %293, i64* %PC, align 8
  %294 = inttoptr i64 %292 to i32*
  %295 = load i32, i32* %294, align 4
  %296 = zext i32 %295 to i64
  store i64 %296, i64* %RCX, align 8, !tbaa !2428
  %297 = add i64 %89, 23
  store i64 %297, i64* %PC, align 8
  %298 = load i32, i32* %63, align 4
  %299 = sext i32 %298 to i64
  store i64 %299, i64* %RAX, align 8, !tbaa !2428
  %300 = shl nsw i64 %299, 2
  %301 = add i64 %300, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %302 = add i64 %89, 30
  store i64 %302, i64* %PC, align 8
  %303 = inttoptr i64 %301 to i32*
  store i32 %295, i32* %303, align 4
  %304 = load i64, i64* %RBP, align 8
  %305 = add i64 %304, -4
  %306 = load i64, i64* %PC, align 8
  %307 = add i64 %306, 3
  store i64 %307, i64* %PC, align 8
  %308 = inttoptr i64 %305 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = add i32 %309, 1
  %311 = zext i32 %310 to i64
  store i64 %311, i64* %RAX, align 8, !tbaa !2428
  %312 = icmp eq i32 %309, -1
  %313 = icmp eq i32 %310, 0
  %314 = or i1 %312, %313
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %16, align 1, !tbaa !2432
  %316 = and i32 %310, 255
  %317 = tail call i32 @llvm.ctpop.i32(i32 %316) #8
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 1
  %320 = xor i8 %319, 1
  store i8 %320, i8* %17, align 1, !tbaa !2446
  %321 = xor i32 %309, %310
  %322 = lshr i32 %321, 4
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  store i8 %324, i8* %18, align 1, !tbaa !2447
  %325 = icmp eq i32 %310, 0
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %19, align 1, !tbaa !2448
  %327 = lshr i32 %310, 31
  %328 = trunc i32 %327 to i8
  store i8 %328, i8* %20, align 1, !tbaa !2449
  %329 = lshr i32 %309, 31
  %330 = xor i32 %327, %329
  %331 = add nuw nsw i32 %330, %327
  %332 = icmp eq i32 %331, 2
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %21, align 1, !tbaa !2450
  %334 = add i64 %306, 9
  store i64 %334, i64* %PC, align 8
  store i32 %310, i32* %308, align 4
  %335 = load i64, i64* %PC, align 8
  %336 = add i64 %335, -49
  store i64 %336, i64* %22, align 8, !tbaa !2428
  br label %block_4008d5

block_4008ce:                                     ; preds = %block_4007d1
  %337 = add i64 %138, 7
  store i64 %337, i64* %PC, align 8
  store i32 0, i32* %112, align 4
  %.pre10 = load i64, i64* %PC, align 8
  br label %block_4008d5

block_40088d:                                     ; preds = %block_4007f3
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %338 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104) to i32*), align 16
  %339 = sext i32 %338 to i64
  store i64 %339, i64* %RCX, align 8, !tbaa !2428
  %340 = shl nsw i64 %339, 2
  %341 = add i64 %340, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %342 = add i64 %107, 20
  store i64 %342, i64* %PC, align 8
  %343 = inttoptr i64 %341 to i32*
  %344 = load i32, i32* %343, align 4
  %345 = zext i32 %344 to i64
  store i64 %345, i64* %RDX, align 8, !tbaa !2428
  %346 = add i64 %91, -4
  %347 = add i64 %107, 23
  store i64 %347, i64* %PC, align 8
  %348 = inttoptr i64 %346 to i32*
  %349 = load i32, i32* %348, align 4
  %350 = add i32 %349, %344
  %351 = zext i32 %350 to i64
  store i64 %351, i64* %RDX, align 8, !tbaa !2428
  %352 = icmp ult i32 %350, %344
  %353 = icmp ult i32 %350, %349
  %354 = or i1 %352, %353
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %16, align 1, !tbaa !2432
  %356 = and i32 %350, 255
  %357 = tail call i32 @llvm.ctpop.i32(i32 %356) #8
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  %360 = xor i8 %359, 1
  store i8 %360, i8* %17, align 1, !tbaa !2446
  %361 = xor i32 %349, %344
  %362 = xor i32 %361, %350
  %363 = lshr i32 %362, 4
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  store i8 %365, i8* %18, align 1, !tbaa !2447
  %366 = icmp eq i32 %350, 0
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %19, align 1, !tbaa !2448
  %368 = lshr i32 %350, 31
  %369 = trunc i32 %368 to i8
  store i8 %369, i8* %20, align 1, !tbaa !2449
  %370 = lshr i32 %344, 31
  %371 = lshr i32 %349, 31
  %372 = xor i32 %368, %370
  %373 = xor i32 %368, %371
  %374 = add nuw nsw i32 %372, %373
  %375 = icmp eq i32 %374, 2
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %21, align 1, !tbaa !2450
  %377 = add i64 %91, -16
  %378 = add i64 %107, 26
  store i64 %378, i64* %PC, align 8
  %379 = inttoptr i64 %377 to i32*
  store i32 255, i32* %379, align 4
  %380 = load i32, i32* %EDX, align 4
  %381 = zext i32 %380 to i64
  %382 = load i64, i64* %PC, align 8
  store i64 %381, i64* %RAX, align 8, !tbaa !2428
  %383 = sext i32 %380 to i64
  %384 = lshr i64 %383, 32
  store i64 %384, i64* %23, align 8, !tbaa !2428
  %385 = load i64, i64* %RBP, align 8
  %386 = add i64 %385, -16
  %387 = add i64 %382, 6
  store i64 %387, i64* %PC, align 8
  %388 = inttoptr i64 %386 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = zext i32 %389 to i64
  store i64 %390, i64* %RSI, align 8, !tbaa !2428
  %391 = add i64 %382, 8
  store i64 %391, i64* %PC, align 8
  %392 = zext i32 %380 to i64
  %393 = sext i32 %389 to i64
  %394 = shl nuw i64 %384, 32
  %395 = or i64 %394, %392
  %396 = sdiv i64 %395, %393
  %397 = shl i64 %396, 32
  %398 = ashr exact i64 %397, 32
  %399 = icmp eq i64 %396, %398
  br i1 %399, label %402, label %400

; <label>:400:                                    ; preds = %block_40088d
  %401 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %391, %struct.Memory* %MEMORY.2) #9
  %.pre7 = load i32, i32* %EDX, align 4
  %.pre8 = load i64, i64* %PC, align 8
  %.pre9 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:402:                                    ; preds = %block_40088d
  %403 = srem i64 %395, %393
  %404 = and i64 %396, 4294967295
  store i64 %404, i64* %24, align 8, !tbaa !2428
  %405 = and i64 %403, 4294967295
  store i64 %405, i64* %25, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %17, align 1, !tbaa !2446
  store i8 0, i8* %18, align 1, !tbaa !2447
  store i8 0, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %21, align 1, !tbaa !2450
  %406 = trunc i64 %403 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %402, %400
  %407 = phi i64 [ %.pre9, %400 ], [ %385, %402 ]
  %408 = phi i64 [ %.pre8, %400 ], [ %391, %402 ]
  %409 = phi i32 [ %.pre7, %400 ], [ %406, %402 ]
  %410 = phi %struct.Memory* [ %401, %400 ], [ %MEMORY.2, %402 ]
  %411 = sext i32 %409 to i64
  store i64 %411, i64* %RCX, align 8, !tbaa !2428
  %412 = shl nsw i64 %411, 2
  %413 = add i64 %412, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %414 = add i64 %408, 10
  store i64 %414, i64* %PC, align 8
  %415 = inttoptr i64 %413 to i32*
  %416 = load i32, i32* %415, align 4
  %417 = zext i32 %416 to i64
  store i64 %417, i64* %RDX, align 8, !tbaa !2428
  store i32 %416, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104) to i32*), align 16
  %418 = add i64 %407, -4
  %419 = add i64 %408, 20
  store i64 %419, i64* %PC, align 8
  %420 = inttoptr i64 %418 to i32*
  %421 = load i32, i32* %420, align 4
  %422 = add i32 %421, 1
  %423 = zext i32 %422 to i64
  store i64 %423, i64* %RAX, align 8, !tbaa !2428
  %424 = icmp eq i32 %421, -1
  %425 = icmp eq i32 %422, 0
  %426 = or i1 %424, %425
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %16, align 1, !tbaa !2432
  %428 = and i32 %422, 255
  %429 = tail call i32 @llvm.ctpop.i32(i32 %428) #8
  %430 = trunc i32 %429 to i8
  %431 = and i8 %430, 1
  %432 = xor i8 %431, 1
  store i8 %432, i8* %17, align 1, !tbaa !2446
  %433 = xor i32 %421, %422
  %434 = lshr i32 %433, 4
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  store i8 %436, i8* %18, align 1, !tbaa !2447
  %437 = icmp eq i32 %422, 0
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %19, align 1, !tbaa !2448
  %439 = lshr i32 %422, 31
  %440 = trunc i32 %439 to i8
  store i8 %440, i8* %20, align 1, !tbaa !2449
  %441 = lshr i32 %421, 31
  %442 = xor i32 %439, %441
  %443 = add nuw nsw i32 %442, %439
  %444 = icmp eq i32 %443, 2
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %21, align 1, !tbaa !2450
  %446 = add i64 %408, 26
  store i64 %446, i64* %PC, align 8
  store i32 %422, i32* %420, align 4
  %447 = load i64, i64* %PC, align 8
  %448 = add i64 %447, -248
  store i64 %448, i64* %22, align 8, !tbaa !2428
  br label %block_4007d1

block_40090b:                                     ; preds = %block_4008d5
  %449 = add i64 %89, 1
  store i64 %449, i64* %PC, align 8
  %450 = load i64, i64* %8, align 8, !tbaa !2428
  %451 = add i64 %450, 8
  %452 = inttoptr i64 %450 to i64*
  %453 = load i64, i64* %452, align 8
  store i64 %453, i64* %RBP, align 8, !tbaa !2428
  store i64 %451, i64* %8, align 8, !tbaa !2428
  %454 = add i64 %89, 2
  store i64 %454, i64* %PC, align 8
  %455 = inttoptr i64 %451 to i64*
  %456 = load i64, i64* %455, align 8
  store i64 %456, i64* %22, align 8, !tbaa !2428
  %457 = add i64 %450, 16
  store i64 %457, i64* %8, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.3

block_40085f:                                     ; preds = %block_4007fd
  %458 = add i64 %513, 3
  store i64 %458, i64* %PC, align 8
  %459 = load i32, i32* %94, align 4
  %460 = add i32 %459, -1
  %461 = zext i32 %460 to i64
  store i64 %461, i64* %RAX, align 8, !tbaa !2428
  %462 = icmp eq i32 %459, 0
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %16, align 1, !tbaa !2432
  %464 = and i32 %460, 255
  %465 = tail call i32 @llvm.ctpop.i32(i32 %464) #8
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  %468 = xor i8 %467, 1
  store i8 %468, i8* %17, align 1, !tbaa !2446
  %469 = xor i32 %459, %460
  %470 = lshr i32 %469, 4
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  store i8 %472, i8* %18, align 1, !tbaa !2447
  %473 = icmp eq i32 %460, 0
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %19, align 1, !tbaa !2448
  %475 = lshr i32 %460, 31
  %476 = trunc i32 %475 to i8
  store i8 %476, i8* %20, align 1, !tbaa !2449
  %477 = lshr i32 %459, 31
  %478 = xor i32 %475, %477
  %479 = add nuw nsw i32 %478, %477
  %480 = icmp eq i32 %479, 2
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %21, align 1, !tbaa !2450
  %482 = sext i32 %460 to i64
  store i64 %482, i64* %RCX, align 8, !tbaa !2428
  %483 = shl nsw i64 %482, 2
  %484 = add i64 %483, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %485 = add i64 %513, 16
  store i64 %485, i64* %PC, align 8
  %486 = inttoptr i64 %484 to i32*
  %487 = load i32, i32* %486, align 4
  %488 = zext i32 %487 to i64
  store i64 %488, i64* %RAX, align 8, !tbaa !2428
  %489 = add i64 %513, 20
  store i64 %489, i64* %PC, align 8
  %490 = load i32, i32* %94, align 4
  %491 = sext i32 %490 to i64
  store i64 %491, i64* %RCX, align 8, !tbaa !2428
  %492 = shl nsw i64 %491, 2
  %493 = add i64 %492, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %494 = add i64 %513, 27
  store i64 %494, i64* %PC, align 8
  %495 = inttoptr i64 %493 to i32*
  store i32 %487, i32* %495, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_40087a

block_4007fd:                                     ; preds = %block_4007f3
  %496 = add i64 %107, 4
  store i64 %496, i64* %PC, align 8
  %497 = load i32, i32* %94, align 4
  %498 = sext i32 %497 to i64
  store i64 %498, i64* %RAX, align 8, !tbaa !2428
  %499 = shl nsw i64 %498, 2
  %500 = add i64 %499, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %501 = add i64 %107, 12
  store i64 %501, i64* %PC, align 8
  %502 = inttoptr i64 %500 to i32*
  %503 = load i32, i32* %502, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %504 = and i32 %503, 255
  %505 = tail call i32 @llvm.ctpop.i32(i32 %504) #8
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  %508 = xor i8 %507, 1
  store i8 %508, i8* %17, align 1, !tbaa !2446
  store i8 0, i8* %18, align 1, !tbaa !2447
  %509 = icmp eq i32 %503, 0
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %19, align 1, !tbaa !2448
  %511 = lshr i32 %503, 31
  %512 = trunc i32 %511 to i8
  store i8 %512, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %21, align 1, !tbaa !2450
  %.v12 = select i1 %509, i64 98, i64 18
  %513 = add i64 %107, %.v12
  store i64 %513, i64* %22, align 8, !tbaa !2428
  br i1 %509, label %block_40085f, label %block_40080f

block_4007db:                                     ; preds = %block_4007d1
  %514 = add i64 %138, 4
  store i64 %514, i64* %PC, align 8
  %515 = load i32, i32* %112, align 4
  %516 = sext i32 %515 to i64
  store i64 %516, i64* %RAX, align 8, !tbaa !2428
  %517 = shl nsw i64 %516, 2
  %518 = add i64 %517, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %519 = add i64 %138, 15
  store i64 %519, i64* %PC, align 8
  %520 = inttoptr i64 %518 to i32*
  store i32 1, i32* %520, align 4
  %521 = load i64, i64* %RBP, align 8
  %522 = add i64 %521, -4
  %523 = load i64, i64* %PC, align 8
  %524 = add i64 %523, 3
  store i64 %524, i64* %PC, align 8
  %525 = inttoptr i64 %522 to i32*
  %526 = load i32, i32* %525, align 4
  %527 = add i32 %526, -1
  %528 = zext i32 %527 to i64
  store i64 %528, i64* %RCX, align 8, !tbaa !2428
  %529 = icmp eq i32 %526, 0
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %16, align 1, !tbaa !2432
  %531 = and i32 %527, 255
  %532 = tail call i32 @llvm.ctpop.i32(i32 %531) #8
  %533 = trunc i32 %532 to i8
  %534 = and i8 %533, 1
  %535 = xor i8 %534, 1
  store i8 %535, i8* %17, align 1, !tbaa !2446
  %536 = xor i32 %526, %527
  %537 = lshr i32 %536, 4
  %538 = trunc i32 %537 to i8
  %539 = and i8 %538, 1
  store i8 %539, i8* %18, align 1, !tbaa !2447
  %540 = icmp eq i32 %527, 0
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %19, align 1, !tbaa !2448
  %542 = lshr i32 %527, 31
  %543 = trunc i32 %542 to i8
  store i8 %543, i8* %20, align 1, !tbaa !2449
  %544 = lshr i32 %526, 31
  %545 = xor i32 %542, %544
  %546 = add nuw nsw i32 %545, %544
  %547 = icmp eq i32 %546, 2
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %21, align 1, !tbaa !2450
  %549 = add i64 %521, -8
  %550 = add i64 %523, 9
  store i64 %550, i64* %PC, align 8
  %551 = inttoptr i64 %549 to i32*
  store i32 %527, i32* %551, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_4007f3
}

; Function Attrs: noinline
define %struct.Memory* @sub_401850_rsenc_204(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401850:
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
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !2428
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %10 = load i64, i64* %PC, align 8
  store i64 %8, i64* %RBP, align 8, !tbaa !2428
  %11 = add i64 %7, -40
  store i64 %11, i64* %RSP, align 8, !tbaa !2428
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = add i64 %7, -16
  %19 = load i64, i64* %RDI, align 8
  %20 = add i64 %10, 11
  store i64 %20, i64* %PC, align 8
  %21 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %RBP, align 8
  %23 = add i64 %22, -16
  %24 = load i64, i64* %RSI, align 8
  %25 = load i64, i64* %PC, align 8
  %26 = add i64 %25, 4
  store i64 %26, i64* %PC, align 8
  %27 = inttoptr i64 %23 to i64*
  store i64 %24, i64* %27, align 8
  %28 = load i64, i64* %PC, align 8
  %29 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 16) to i32*), align 16
  store i8 0, i8* %12, align 1, !tbaa !2432
  %30 = and i32 %29, 255
  %31 = tail call i32 @llvm.ctpop.i32(i32 %30) #8
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  store i8 %34, i8* %13, align 1, !tbaa !2446
  store i8 0, i8* %14, align 1, !tbaa !2447
  %35 = icmp eq i32 %29, 0
  %36 = zext i1 %35 to i8
  store i8 %36, i8* %15, align 1, !tbaa !2448
  %37 = lshr i32 %29, 31
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %35, i64 14, i64 35
  %40 = add i64 %28, %.v
  store i64 %40, i64* %39, align 8, !tbaa !2428
  br i1 %35, label %block_40186e, label %block_401883

block_4018fb:                                     ; preds = %block_401908, %block_4018ef
  %41 = phi i64 [ %353, %block_401908 ], [ %.pre4, %block_4018ef ]
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -20
  %44 = add i64 %41, 7
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %43 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %46, -188
  %48 = icmp ult i32 %46, 188
  %49 = zext i1 %48 to i8
  store i8 %49, i8* %12, align 1, !tbaa !2432
  %50 = and i32 %47, 255
  %51 = tail call i32 @llvm.ctpop.i32(i32 %50) #8
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, 1
  %54 = xor i8 %53, 1
  store i8 %54, i8* %13, align 1, !tbaa !2446
  %55 = xor i32 %46, 16
  %56 = xor i32 %55, %47
  %57 = lshr i32 %56, 4
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  store i8 %59, i8* %14, align 1, !tbaa !2447
  %60 = icmp eq i32 %47, 0
  %61 = zext i1 %60 to i8
  store i8 %61, i8* %15, align 1, !tbaa !2448
  %62 = lshr i32 %47, 31
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %16, align 1, !tbaa !2449
  %64 = lshr i32 %46, 31
  %65 = xor i32 %62, %64
  %66 = add nuw nsw i32 %65, %64
  %67 = icmp eq i32 %66, 2
  %68 = zext i1 %67 to i8
  store i8 %68, i8* %17, align 1, !tbaa !2450
  %69 = icmp ne i8 %63, 0
  %70 = xor i1 %69, %67
  %.v8 = select i1 %70, i64 13, i64 49
  %71 = add i64 %41, %.v8
  store i64 %71, i64* %39, align 8, !tbaa !2428
  br i1 %70, label %block_401908, label %block_40192c

block_4018b8:                                     ; preds = %block_4018c5, %block_4018b1
  %72 = phi i64 [ %429, %block_4018c5 ], [ %.pre3, %block_4018b1 ]
  %73 = load i64, i64* %RBP, align 8
  %74 = add i64 %73, -20
  %75 = add i64 %72, 7
  store i64 %75, i64* %PC, align 8
  %76 = inttoptr i64 %74 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = add i32 %77, -188
  %79 = icmp ult i32 %77, 188
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %12, align 1, !tbaa !2432
  %81 = and i32 %78, 255
  %82 = tail call i32 @llvm.ctpop.i32(i32 %81) #8
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  %85 = xor i8 %84, 1
  store i8 %85, i8* %13, align 1, !tbaa !2446
  %86 = xor i32 %77, 16
  %87 = xor i32 %86, %78
  %88 = lshr i32 %87, 4
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  store i8 %90, i8* %14, align 1, !tbaa !2447
  %91 = icmp eq i32 %78, 0
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %15, align 1, !tbaa !2448
  %93 = lshr i32 %78, 31
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %16, align 1, !tbaa !2449
  %95 = lshr i32 %77, 31
  %96 = xor i32 %93, %95
  %97 = add nuw nsw i32 %96, %95
  %98 = icmp eq i32 %97, 2
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %17, align 1, !tbaa !2450
  %100 = icmp ne i8 %94, 0
  %101 = xor i1 %100, %98
  %.v7 = select i1 %101, i64 13, i64 55
  %102 = add i64 %72, %.v7
  store i64 %102, i64* %39, align 8, !tbaa !2428
  br i1 %101, label %block_4018c5, label %block_4018ef

block_4018b1:                                     ; preds = %block_40188a
  %103 = add i64 %299, 7
  store i64 %103, i64* %PC, align 8
  store i32 0, i32* %273, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_4018b8

block_401933:                                     ; preds = %block_40192c, %block_40193d
  %104 = phi i64 [ %.pre5, %block_40192c ], [ %236, %block_40193d ]
  %105 = load i64, i64* %RBP, align 8
  %106 = add i64 %105, -20
  %107 = add i64 %104, 4
  store i64 %107, i64* %PC, align 8
  %108 = inttoptr i64 %106 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = add i32 %109, -16
  %111 = icmp ult i32 %109, 16
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %12, align 1, !tbaa !2432
  %113 = and i32 %110, 255
  %114 = tail call i32 @llvm.ctpop.i32(i32 %113) #8
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  %117 = xor i8 %116, 1
  store i8 %117, i8* %13, align 1, !tbaa !2446
  %118 = xor i32 %109, 16
  %119 = xor i32 %118, %110
  %120 = lshr i32 %119, 4
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  store i8 %122, i8* %14, align 1, !tbaa !2447
  %123 = icmp eq i32 %110, 0
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %15, align 1, !tbaa !2448
  %125 = lshr i32 %110, 31
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %16, align 1, !tbaa !2449
  %127 = lshr i32 %109, 31
  %128 = xor i32 %125, %127
  %129 = add nuw nsw i32 %128, %127
  %130 = icmp eq i32 %129, 2
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %17, align 1, !tbaa !2450
  %132 = icmp ne i8 %126, 0
  %133 = xor i1 %132, %130
  %.v9 = select i1 %133, i64 10, i64 56
  %134 = add i64 %104, %.v9
  store i64 %134, i64* %39, align 8, !tbaa !2428
  br i1 %133, label %block_40193d, label %block_40196b

block_4018ef:                                     ; preds = %block_4018b8
  %135 = add i64 %102, 145
  %136 = add i64 %102, 5
  %137 = load i64, i64* %6, align 8, !tbaa !2428
  %138 = add i64 %137, -8
  %139 = inttoptr i64 %138 to i64*
  store i64 %136, i64* %139, align 8
  store i64 %138, i64* %6, align 8, !tbaa !2428
  store i64 %135, i64* %39, align 8, !tbaa !2428
  %140 = tail call %struct.Memory* @sub_401980_encode_rs_renamed_(%struct.State* nonnull %0, i64 %135, %struct.Memory* %MEMORY.4)
  %141 = load i64, i64* %RBP, align 8
  %142 = add i64 %141, -20
  %143 = load i64, i64* %PC, align 8
  %144 = add i64 %143, 7
  store i64 %144, i64* %PC, align 8
  %145 = inttoptr i64 %142 to i32*
  store i32 0, i32* %145, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_4018fb

block_40186e:                                     ; preds = %block_401850
  %146 = add i64 %40, -4622
  %147 = add i64 %40, 5
  %148 = load i64, i64* %6, align 8, !tbaa !2428
  %149 = add i64 %148, -8
  %150 = inttoptr i64 %149 to i64*
  store i64 %147, i64* %150, align 8
  store i64 %149, i64* %6, align 8, !tbaa !2428
  store i64 %146, i64* %39, align 8, !tbaa !2428
  %151 = tail call %struct.Memory* @sub_400660_generate_gf_renamed_(%struct.State* nonnull %0, i64 %146, %struct.Memory* %2)
  %152 = load i64, i64* %PC, align 8
  %153 = add i64 %152, -4291
  %154 = add i64 %152, 5
  %155 = load i64, i64* %6, align 8, !tbaa !2428
  %156 = add i64 %155, -8
  %157 = inttoptr i64 %156 to i64*
  store i64 %154, i64* %157, align 8
  store i64 %156, i64* %6, align 8, !tbaa !2428
  store i64 %153, i64* %39, align 8, !tbaa !2428
  %158 = tail call %struct.Memory* @sub_4007b0_gen_poly_renamed_(%struct.State* nonnull %0, i64 %153, %struct.Memory* %151)
  %159 = load i64, i64* %PC, align 8
  %160 = add i64 %159, 11
  store i64 %160, i64* %PC, align 8
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 16) to i32*), align 16
  br label %block_401883

block_40193d:                                     ; preds = %block_401933
  %161 = add i64 %134, 4
  store i64 %161, i64* %PC, align 8
  %162 = load i32, i32* %108, align 4
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %RAX, align 8, !tbaa !2428
  %164 = shl nsw i64 %163, 2
  %165 = add i64 %164, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %166 = add i64 %134, 11
  store i64 %166, i64* %PC, align 8
  %167 = inttoptr i64 %165 to i32*
  %168 = load i32, i32* %167, align 4
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %RCX, align 8, !tbaa !2428
  %170 = trunc i32 %168 to i8
  store i8 %170, i8* %DL, align 1, !tbaa !2451
  %171 = add i64 %105, -8
  %172 = add i64 %134, 17
  store i64 %172, i64* %PC, align 8
  %173 = inttoptr i64 %171 to i64*
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %RAX, align 8, !tbaa !2428
  %175 = add i64 %134, 20
  store i64 %175, i64* %PC, align 8
  %176 = load i32, i32* %108, align 4
  %177 = add i32 %176, 188
  %178 = zext i32 %177 to i64
  store i64 %178, i64* %RCX, align 8, !tbaa !2428
  %179 = icmp ugt i32 %176, -189
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %12, align 1, !tbaa !2432
  %181 = and i32 %177, 255
  %182 = tail call i32 @llvm.ctpop.i32(i32 %181) #8
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  %185 = xor i8 %184, 1
  store i8 %185, i8* %13, align 1, !tbaa !2446
  %186 = xor i32 %176, 16
  %187 = xor i32 %186, %177
  %188 = lshr i32 %187, 4
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  store i8 %190, i8* %14, align 1, !tbaa !2447
  %191 = icmp eq i32 %177, 0
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %15, align 1, !tbaa !2448
  %193 = lshr i32 %177, 31
  %194 = trunc i32 %193 to i8
  store i8 %194, i8* %16, align 1, !tbaa !2449
  %195 = lshr i32 %176, 31
  %196 = xor i32 %193, %195
  %197 = add nuw nsw i32 %196, %193
  %198 = icmp eq i32 %197, 2
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %17, align 1, !tbaa !2450
  %200 = sext i32 %177 to i64
  store i64 %200, i64* %RSI, align 8, !tbaa !2428
  %201 = add i64 %200, %174
  %202 = add i64 %134, 32
  store i64 %202, i64* %PC, align 8
  %203 = inttoptr i64 %201 to i8*
  store i8 %170, i8* %203, align 1
  %204 = load i64, i64* %RBP, align 8
  %205 = add i64 %204, -20
  %206 = load i64, i64* %PC, align 8
  %207 = add i64 %206, 3
  store i64 %207, i64* %PC, align 8
  %208 = inttoptr i64 %205 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = add i32 %209, 1
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RAX, align 8, !tbaa !2428
  %212 = icmp eq i32 %209, -1
  %213 = icmp eq i32 %210, 0
  %214 = or i1 %212, %213
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %12, align 1, !tbaa !2432
  %216 = and i32 %210, 255
  %217 = tail call i32 @llvm.ctpop.i32(i32 %216) #8
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  %220 = xor i8 %219, 1
  store i8 %220, i8* %13, align 1, !tbaa !2446
  %221 = xor i32 %209, %210
  %222 = lshr i32 %221, 4
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  store i8 %224, i8* %14, align 1, !tbaa !2447
  %225 = icmp eq i32 %210, 0
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %15, align 1, !tbaa !2448
  %227 = lshr i32 %210, 31
  %228 = trunc i32 %227 to i8
  store i8 %228, i8* %16, align 1, !tbaa !2449
  %229 = lshr i32 %209, 31
  %230 = xor i32 %227, %229
  %231 = add nuw nsw i32 %230, %227
  %232 = icmp eq i32 %231, 2
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %17, align 1, !tbaa !2450
  %234 = add i64 %206, 9
  store i64 %234, i64* %PC, align 8
  store i32 %210, i32* %208, align 4
  %235 = load i64, i64* %PC, align 8
  %236 = add i64 %235, -51
  store i64 %236, i64* %39, align 8, !tbaa !2428
  br label %block_401933

block_40192c:                                     ; preds = %block_4018fb
  %237 = add i64 %71, 7
  store i64 %237, i64* %PC, align 8
  store i32 0, i32* %45, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_401933

block_40196b:                                     ; preds = %block_401933
  %238 = load i64, i64* %RSP, align 8
  %239 = add i64 %238, 32
  store i64 %239, i64* %RSP, align 8, !tbaa !2428
  %240 = icmp ugt i64 %238, -33
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %12, align 1, !tbaa !2432
  %242 = trunc i64 %239 to i32
  %243 = and i32 %242, 255
  %244 = tail call i32 @llvm.ctpop.i32(i32 %243) #8
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  %247 = xor i8 %246, 1
  store i8 %247, i8* %13, align 1, !tbaa !2446
  %248 = xor i64 %238, %239
  %249 = lshr i64 %248, 4
  %250 = trunc i64 %249 to i8
  %251 = and i8 %250, 1
  store i8 %251, i8* %14, align 1, !tbaa !2447
  %252 = icmp eq i64 %239, 0
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %15, align 1, !tbaa !2448
  %254 = lshr i64 %239, 63
  %255 = trunc i64 %254 to i8
  store i8 %255, i8* %16, align 1, !tbaa !2449
  %256 = lshr i64 %238, 63
  %257 = xor i64 %254, %256
  %258 = add nuw nsw i64 %257, %254
  %259 = icmp eq i64 %258, 2
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %17, align 1, !tbaa !2450
  %261 = add i64 %134, 5
  store i64 %261, i64* %PC, align 8
  %262 = add i64 %238, 40
  %263 = inttoptr i64 %239 to i64*
  %264 = load i64, i64* %263, align 8
  store i64 %264, i64* %RBP, align 8, !tbaa !2428
  store i64 %262, i64* %6, align 8, !tbaa !2428
  %265 = add i64 %134, 6
  store i64 %265, i64* %PC, align 8
  %266 = inttoptr i64 %262 to i64*
  %267 = load i64, i64* %266, align 8
  store i64 %267, i64* %39, align 8, !tbaa !2428
  %268 = add i64 %238, 48
  store i64 %268, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %140

block_40188a:                                     ; preds = %block_401883, %block_401894
  %269 = phi i64 [ %.pre, %block_401883 ], [ %469, %block_401894 ]
  %270 = load i64, i64* %RBP, align 8
  %271 = add i64 %270, -20
  %272 = add i64 %269, 4
  store i64 %272, i64* %PC, align 8
  %273 = inttoptr i64 %271 to i32*
  %274 = load i32, i32* %273, align 4
  %275 = add i32 %274, -51
  %276 = icmp ult i32 %274, 51
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %12, align 1, !tbaa !2432
  %278 = and i32 %275, 255
  %279 = tail call i32 @llvm.ctpop.i32(i32 %278) #8
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  %282 = xor i8 %281, 1
  store i8 %282, i8* %13, align 1, !tbaa !2446
  %283 = xor i32 %274, 16
  %284 = xor i32 %283, %275
  %285 = lshr i32 %284, 4
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  store i8 %287, i8* %14, align 1, !tbaa !2447
  %288 = icmp eq i32 %275, 0
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %15, align 1, !tbaa !2448
  %290 = lshr i32 %275, 31
  %291 = trunc i32 %290 to i8
  store i8 %291, i8* %16, align 1, !tbaa !2449
  %292 = lshr i32 %274, 31
  %293 = xor i32 %290, %292
  %294 = add nuw nsw i32 %293, %292
  %295 = icmp eq i32 %294, 2
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %17, align 1, !tbaa !2450
  %297 = icmp ne i8 %291, 0
  %298 = xor i1 %297, %295
  %.v6 = select i1 %298, i64 10, i64 39
  %299 = add i64 %269, %.v6
  store i64 %299, i64* %39, align 8, !tbaa !2428
  br i1 %298, label %block_401894, label %block_4018b1

block_401908:                                     ; preds = %block_4018fb
  %300 = add i64 %42, -16
  %301 = add i64 %71, 4
  store i64 %301, i64* %PC, align 8
  %302 = inttoptr i64 %300 to i64*
  %303 = load i64, i64* %302, align 8
  store i64 %303, i64* %RAX, align 8, !tbaa !2428
  %304 = add i64 %71, 8
  store i64 %304, i64* %PC, align 8
  %305 = load i32, i32* %45, align 4
  %306 = sext i32 %305 to i64
  store i64 %306, i64* %RCX, align 8, !tbaa !2428
  %307 = add i64 %306, %303
  %308 = add i64 %71, 11
  store i64 %308, i64* %PC, align 8
  %309 = inttoptr i64 %307 to i8*
  %310 = load i8, i8* %309, align 1
  store i8 %310, i8* %DL, align 1, !tbaa !2451
  %311 = add i64 %42, -8
  %312 = add i64 %71, 15
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %311 to i64*
  %314 = load i64, i64* %313, align 8
  store i64 %314, i64* %RAX, align 8, !tbaa !2428
  %315 = add i64 %71, 19
  store i64 %315, i64* %PC, align 8
  %316 = load i32, i32* %45, align 4
  %317 = sext i32 %316 to i64
  store i64 %317, i64* %RCX, align 8, !tbaa !2428
  %318 = add i64 %317, %314
  %319 = add i64 %71, 22
  store i64 %319, i64* %PC, align 8
  %320 = inttoptr i64 %318 to i8*
  store i8 %310, i8* %320, align 1
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
  store i8 %332, i8* %12, align 1, !tbaa !2432
  %333 = and i32 %327, 255
  %334 = tail call i32 @llvm.ctpop.i32(i32 %333) #8
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  %337 = xor i8 %336, 1
  store i8 %337, i8* %13, align 1, !tbaa !2446
  %338 = xor i32 %326, %327
  %339 = lshr i32 %338, 4
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  store i8 %341, i8* %14, align 1, !tbaa !2447
  %342 = icmp eq i32 %327, 0
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %15, align 1, !tbaa !2448
  %344 = lshr i32 %327, 31
  %345 = trunc i32 %344 to i8
  store i8 %345, i8* %16, align 1, !tbaa !2449
  %346 = lshr i32 %326, 31
  %347 = xor i32 %344, %346
  %348 = add nuw nsw i32 %347, %344
  %349 = icmp eq i32 %348, 2
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %17, align 1, !tbaa !2450
  %351 = add i64 %323, 9
  store i64 %351, i64* %PC, align 8
  store i32 %327, i32* %325, align 4
  %352 = load i64, i64* %PC, align 8
  %353 = add i64 %352, -44
  store i64 %353, i64* %39, align 8, !tbaa !2428
  br label %block_4018fb

block_4018c5:                                     ; preds = %block_4018b8
  %354 = add i64 %73, -16
  %355 = add i64 %102, 4
  store i64 %355, i64* %PC, align 8
  %356 = inttoptr i64 %354 to i64*
  %357 = load i64, i64* %356, align 8
  store i64 %357, i64* %RAX, align 8, !tbaa !2428
  %358 = add i64 %102, 8
  store i64 %358, i64* %PC, align 8
  %359 = load i32, i32* %76, align 4
  %360 = sext i32 %359 to i64
  store i64 %360, i64* %RCX, align 8, !tbaa !2428
  %361 = add i64 %360, %357
  %362 = add i64 %102, 12
  store i64 %362, i64* %PC, align 8
  %363 = inttoptr i64 %361 to i8*
  %364 = load i8, i8* %363, align 1
  %365 = zext i8 %364 to i64
  store i64 %365, i64* %RDX, align 8, !tbaa !2428
  %366 = add i64 %102, 15
  store i64 %366, i64* %PC, align 8
  %367 = load i32, i32* %76, align 4
  %368 = add i32 %367, 51
  %369 = zext i32 %368 to i64
  store i64 %369, i64* %RSI, align 8, !tbaa !2428
  %370 = icmp ugt i32 %367, -52
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %12, align 1, !tbaa !2432
  %372 = and i32 %368, 255
  %373 = tail call i32 @llvm.ctpop.i32(i32 %372) #8
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  %376 = xor i8 %375, 1
  store i8 %376, i8* %13, align 1, !tbaa !2446
  %377 = xor i32 %367, 16
  %378 = xor i32 %377, %368
  %379 = lshr i32 %378, 4
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  store i8 %381, i8* %14, align 1, !tbaa !2447
  %382 = icmp eq i32 %368, 0
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %15, align 1, !tbaa !2448
  %384 = lshr i32 %368, 31
  %385 = trunc i32 %384 to i8
  store i8 %385, i8* %16, align 1, !tbaa !2449
  %386 = lshr i32 %367, 31
  %387 = xor i32 %384, %386
  %388 = add nuw nsw i32 %387, %384
  %389 = icmp eq i32 %388, 2
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %17, align 1, !tbaa !2450
  %391 = sext i32 %368 to i64
  store i64 %391, i64* %RAX, align 8, !tbaa !2428
  %392 = shl nsw i64 %391, 2
  %393 = add i64 %392, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3184)
  %394 = zext i8 %364 to i32
  %395 = add i64 %102, 28
  store i64 %395, i64* %PC, align 8
  %396 = inttoptr i64 %393 to i32*
  store i32 %394, i32* %396, align 4
  %397 = load i64, i64* %RBP, align 8
  %398 = add i64 %397, -20
  %399 = load i64, i64* %PC, align 8
  %400 = add i64 %399, 3
  store i64 %400, i64* %PC, align 8
  %401 = inttoptr i64 %398 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = add i32 %402, 1
  %404 = zext i32 %403 to i64
  store i64 %404, i64* %RAX, align 8, !tbaa !2428
  %405 = icmp eq i32 %402, -1
  %406 = icmp eq i32 %403, 0
  %407 = or i1 %405, %406
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %12, align 1, !tbaa !2432
  %409 = and i32 %403, 255
  %410 = tail call i32 @llvm.ctpop.i32(i32 %409) #8
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  %413 = xor i8 %412, 1
  store i8 %413, i8* %13, align 1, !tbaa !2446
  %414 = xor i32 %402, %403
  %415 = lshr i32 %414, 4
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  store i8 %417, i8* %14, align 1, !tbaa !2447
  %418 = icmp eq i32 %403, 0
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %15, align 1, !tbaa !2448
  %420 = lshr i32 %403, 31
  %421 = trunc i32 %420 to i8
  store i8 %421, i8* %16, align 1, !tbaa !2449
  %422 = lshr i32 %402, 31
  %423 = xor i32 %420, %422
  %424 = add nuw nsw i32 %423, %420
  %425 = icmp eq i32 %424, 2
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %17, align 1, !tbaa !2450
  %427 = add i64 %399, 9
  store i64 %427, i64* %PC, align 8
  store i32 %403, i32* %401, align 4
  %428 = load i64, i64* %PC, align 8
  %429 = add i64 %428, -50
  store i64 %429, i64* %39, align 8, !tbaa !2428
  br label %block_4018b8

block_401894:                                     ; preds = %block_40188a
  %430 = add i64 %299, 4
  store i64 %430, i64* %PC, align 8
  %431 = load i32, i32* %273, align 4
  %432 = sext i32 %431 to i64
  store i64 %432, i64* %RAX, align 8, !tbaa !2428
  %433 = shl nsw i64 %432, 2
  %434 = add i64 %433, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3184)
  %435 = add i64 %299, 15
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
  store i8 %448, i8* %12, align 1, !tbaa !2432
  %449 = and i32 %443, 255
  %450 = tail call i32 @llvm.ctpop.i32(i32 %449) #8
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  %453 = xor i8 %452, 1
  store i8 %453, i8* %13, align 1, !tbaa !2446
  %454 = xor i32 %442, %443
  %455 = lshr i32 %454, 4
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  store i8 %457, i8* %14, align 1, !tbaa !2447
  %458 = icmp eq i32 %443, 0
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %15, align 1, !tbaa !2448
  %460 = lshr i32 %443, 31
  %461 = trunc i32 %460 to i8
  store i8 %461, i8* %16, align 1, !tbaa !2449
  %462 = lshr i32 %442, 31
  %463 = xor i32 %460, %462
  %464 = add nuw nsw i32 %463, %460
  %465 = icmp eq i32 %464, 2
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %17, align 1, !tbaa !2450
  %467 = add i64 %439, 9
  store i64 %467, i64* %PC, align 8
  store i32 %443, i32* %441, align 4
  %468 = load i64, i64* %PC, align 8
  %469 = add i64 %468, -34
  store i64 %469, i64* %39, align 8, !tbaa !2428
  br label %block_40188a

block_401883:                                     ; preds = %block_401850, %block_40186e
  %470 = phi i64 [ %40, %block_401850 ], [ %160, %block_40186e ]
  %MEMORY.4 = phi %struct.Memory* [ %2, %block_401850 ], [ %158, %block_40186e ]
  %471 = load i64, i64* %RBP, align 8
  %472 = add i64 %471, -20
  %473 = add i64 %470, 7
  store i64 %473, i64* %PC, align 8
  %474 = inttoptr i64 %472 to i32*
  store i32 0, i32* %474, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_40188a
}

; Function Attrs: noinline
define %struct.Memory* @sub_400470_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400470:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 6303832, i64* %RSI, align 8, !tbaa !2428
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
  %11 = add i64 %9, -6303832
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
  store i8 %22, i8* %12, align 1, !tbaa !2451
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 255
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25) #8
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  store i8 %29, i8* %13, align 1, !tbaa !2451
  store i8 0, i8* %14, align 1, !tbaa !2451
  %30 = icmp eq i64 %23, 0
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %15, align 1, !tbaa !2451
  %32 = lshr i64 %23, 63
  %33 = trunc i64 %32 to i8
  store i8 %33, i8* %16, align 1, !tbaa !2451
  store i8 0, i8* %17, align 1, !tbaa !2451
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %30, i64 50, i64 29
  %35 = add i64 %10, %.v
  store i64 %35, i64* %34, align 8, !tbaa !2428
  br i1 %30, label %block_4004a8, label %block_400493

block_400493:                                     ; preds = %block_400470
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 1, i8* %13, align 1, !tbaa !2446
  store i8 1, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %14, align 1, !tbaa !2447
  %36 = add i64 %35, 21
  store i64 %36, i64* %34, align 8, !tbaa !2428
  br label %block_4004a8

block_4004a8:                                     ; preds = %block_400493, %block_400470
  %37 = phi i64 [ %36, %block_400493 ], [ %35, %block_400470 ]
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
define %struct.Memory* @sub_4004e0_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4004e0:
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
  %14 = tail call %struct.Memory* @sub_400470_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %14
}

; Function Attrs: noinline
define %struct.Memory* @sub_401980_encode_rs(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401980:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %5 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %6 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RSI = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
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
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_40198b

block_401a72:                                     ; preds = %block_401a57, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1
  %24 = phi i64 [ %.pre7, %block_401a57 ], [ %194, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.5, %block_401a57 ], [ %164, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %25 = load i64, i64* %RBP, align 8
  %26 = add i64 %25, -8
  %27 = add i64 %24, 8
  store i64 %27, i64* %PC, align 8
  %28 = inttoptr i64 %26 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = add i32 %29, -1
  %31 = zext i32 %30 to i64
  store i64 %31, i64* %RAX, align 8, !tbaa !2428
  %32 = icmp ne i32 %29, 0
  %33 = zext i1 %32 to i8
  store i8 %33, i8* %17, align 1, !tbaa !2432
  %34 = and i32 %30, 255
  %35 = tail call i32 @llvm.ctpop.i32(i32 %34) #8
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  %38 = xor i8 %37, 1
  store i8 %38, i8* %18, align 1, !tbaa !2446
  %39 = xor i32 %29, 16
  %40 = xor i32 %30, %39
  %41 = lshr i32 %40, 4
  %42 = trunc i32 %41 to i8
  %43 = and i8 %42, 1
  store i8 %43, i8* %19, align 1, !tbaa !2447
  %44 = icmp eq i32 %30, 0
  %45 = zext i1 %44 to i8
  store i8 %45, i8* %20, align 1, !tbaa !2448
  %46 = lshr i32 %30, 31
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %21, align 1, !tbaa !2449
  %48 = lshr i32 %29, 31
  %49 = xor i32 %46, %48
  %50 = xor i32 %46, 1
  %51 = add nuw nsw i32 %49, %50
  %52 = icmp eq i32 %51, 2
  %53 = zext i1 %52 to i8
  store i8 %53, i8* %22, align 1, !tbaa !2450
  %54 = add i64 %24, 14
  store i64 %54, i64* %PC, align 8
  store i32 %30, i32* %28, align 4
  %55 = load i64, i64* %PC, align 8
  %56 = add i64 %55, -141
  store i64 %56, i64* %23, align 8, !tbaa !2428
  br label %block_4019f3

block_401aef:                                     ; preds = %block_401abc
  %57 = add i64 %212, 11
  store i64 %57, i64* %PC, align 8
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144) to i32*), align 16
  br label %block_401afa

block_401a0f:                                     ; preds = %block_4019fd
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %58 = add i64 %244, 8
  store i64 %58, i64* %PC, align 8
  %59 = load i32, i32* %629, align 4
  %60 = add i32 %59, -1
  %61 = zext i32 %60 to i64
  store i64 %61, i64* %RCX, align 8, !tbaa !2428
  %62 = icmp eq i32 %59, 0
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %17, align 1, !tbaa !2432
  %64 = and i32 %60, 255
  %65 = tail call i32 @llvm.ctpop.i32(i32 %64) #8
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  store i8 %68, i8* %18, align 1, !tbaa !2446
  %69 = xor i32 %59, %60
  %70 = lshr i32 %69, 4
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  store i8 %72, i8* %19, align 1, !tbaa !2447
  %73 = icmp eq i32 %60, 0
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %20, align 1, !tbaa !2448
  %75 = lshr i32 %60, 31
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %21, align 1, !tbaa !2449
  %77 = lshr i32 %59, 31
  %78 = xor i32 %75, %77
  %79 = add nuw nsw i32 %78, %77
  %80 = icmp eq i32 %79, 2
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %22, align 1, !tbaa !2450
  %82 = sext i32 %60 to i64
  store i64 %82, i64* %RDX, align 8, !tbaa !2428
  %83 = shl nsw i64 %82, 2
  %84 = add i64 %83, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %85 = add i64 %244, 21
  store i64 %85, i64* %PC, align 8
  %86 = inttoptr i64 %84 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %RCX, align 8, !tbaa !2428
  %89 = add i64 %244, 25
  store i64 %89, i64* %PC, align 8
  %90 = load i32, i32* %629, align 4
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %RDX, align 8, !tbaa !2428
  %92 = shl nsw i64 %91, 2
  %93 = add i64 %92, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %94 = add i64 %244, 32
  store i64 %94, i64* %PC, align 8
  %95 = inttoptr i64 %93 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = zext i32 %96 to i64
  store i64 %97, i64* %RSI, align 8, !tbaa !2428
  %98 = add i64 %626, -12
  %99 = add i64 %244, 35
  store i64 %99, i64* %PC, align 8
  %100 = inttoptr i64 %98 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = add i32 %101, %96
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %RSI, align 8, !tbaa !2428
  %104 = icmp ult i32 %102, %96
  %105 = icmp ult i32 %102, %101
  %106 = or i1 %104, %105
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %17, align 1, !tbaa !2432
  %108 = and i32 %102, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108) #8
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %18, align 1, !tbaa !2446
  %113 = xor i32 %101, %96
  %114 = xor i32 %113, %102
  %115 = lshr i32 %114, 4
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  store i8 %117, i8* %19, align 1, !tbaa !2447
  %118 = icmp eq i32 %102, 0
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %20, align 1, !tbaa !2448
  %120 = lshr i32 %102, 31
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %21, align 1, !tbaa !2449
  %122 = lshr i32 %96, 31
  %123 = lshr i32 %101, 31
  %124 = xor i32 %120, %122
  %125 = xor i32 %120, %123
  %126 = add nuw nsw i32 %124, %125
  %127 = icmp eq i32 %126, 2
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %22, align 1, !tbaa !2450
  %129 = load i64, i64* %RBP, align 8
  %130 = add i64 %129, -16
  %131 = load i32, i32* %EAX, align 4
  %132 = add i64 %244, 38
  store i64 %132, i64* %PC, align 8
  %133 = inttoptr i64 %130 to i32*
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %ESI, align 4
  %135 = zext i32 %134 to i64
  %136 = load i64, i64* %PC, align 8
  store i64 %135, i64* %RAX, align 8, !tbaa !2428
  %137 = sext i32 %134 to i64
  %138 = lshr i64 %137, 32
  store i64 %138, i64* %350, align 8, !tbaa !2428
  %139 = load i64, i64* %RBP, align 8
  %140 = add i64 %139, -16
  %141 = add i64 %136, 6
  store i64 %141, i64* %PC, align 8
  %142 = inttoptr i64 %140 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = zext i32 %143 to i64
  store i64 %144, i64* %RSI, align 8, !tbaa !2428
  %145 = add i64 %136, 8
  store i64 %145, i64* %PC, align 8
  %146 = zext i32 %134 to i64
  %147 = sext i32 %143 to i64
  %148 = shl nuw i64 %138, 32
  %149 = or i64 %148, %146
  %150 = sdiv i64 %149, %147
  %151 = shl i64 %150, 32
  %152 = ashr exact i64 %151, 32
  %153 = icmp eq i64 %150, %152
  br i1 %153, label %156, label %154

; <label>:154:                                    ; preds = %block_401a0f
  %155 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %145, %struct.Memory* %MEMORY.5) #9
  %.pre4 = load i32, i32* %EDX, align 4
  %.pre5 = load i64, i64* %PC, align 8
  %.pre6 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:156:                                    ; preds = %block_401a0f
  %157 = srem i64 %149, %147
  %158 = and i64 %150, 4294967295
  store i64 %158, i64* %351, align 8, !tbaa !2428
  %159 = and i64 %157, 4294967295
  store i64 %159, i64* %352, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 0, i8* %18, align 1, !tbaa !2446
  store i8 0, i8* %19, align 1, !tbaa !2447
  store i8 0, i8* %20, align 1, !tbaa !2448
  store i8 0, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  %160 = trunc i64 %157 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %156, %154
  %161 = phi i64 [ %.pre6, %154 ], [ %139, %156 ]
  %162 = phi i64 [ %.pre5, %154 ], [ %145, %156 ]
  %163 = phi i32 [ %.pre4, %154 ], [ %160, %156 ]
  %164 = phi %struct.Memory* [ %155, %154 ], [ %MEMORY.5, %156 ]
  %165 = sext i32 %163 to i64
  store i64 %165, i64* %RDI, align 8, !tbaa !2428
  %166 = load i64, i64* %RCX, align 8
  %167 = shl nsw i64 %165, 2
  %168 = add i64 %167, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %169 = add i64 %162, 10
  store i64 %169, i64* %PC, align 8
  %170 = trunc i64 %166 to i32
  %171 = inttoptr i64 %168 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = xor i32 %172, %170
  %174 = zext i32 %173 to i64
  store i64 %174, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  %175 = and i32 %173, 255
  %176 = tail call i32 @llvm.ctpop.i32(i32 %175) #8
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  store i8 %179, i8* %18, align 1, !tbaa !2446
  %180 = icmp eq i32 %173, 0
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %20, align 1, !tbaa !2448
  %182 = lshr i32 %173, 31
  %183 = trunc i32 %182 to i8
  store i8 %183, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  store i8 0, i8* %19, align 1, !tbaa !2447
  %184 = add i64 %161, -8
  %185 = add i64 %162, 14
  store i64 %185, i64* %PC, align 8
  %186 = inttoptr i64 %184 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %RDI, align 8, !tbaa !2428
  %189 = shl nsw i64 %188, 2
  %190 = add i64 %189, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %191 = add i64 %162, 21
  store i64 %191, i64* %PC, align 8
  %192 = inttoptr i64 %190 to i32*
  store i32 %173, i32* %192, align 4
  %193 = load i64, i64* %PC, align 8
  %194 = add i64 %193, 32
  store i64 %194, i64* %23, align 8, !tbaa !2428
  br label %block_401a72

block_401abc:                                     ; preds = %block_4019c3, %block_401ac6
  %195 = phi i64 [ %348, %block_401ac6 ], [ %.pre10, %block_4019c3 ]
  %196 = load i64, i64* %RBP, align 8
  %197 = add i64 %196, -8
  %198 = add i64 %195, 4
  store i64 %198, i64* %PC, align 8
  %199 = inttoptr i64 %197 to i32*
  %200 = load i32, i32* %199, align 4
  store i8 0, i8* %17, align 1, !tbaa !2432
  %201 = and i32 %200, 255
  %202 = tail call i32 @llvm.ctpop.i32(i32 %201) #8
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  store i8 %205, i8* %18, align 1, !tbaa !2446
  store i8 0, i8* %19, align 1, !tbaa !2447
  %206 = icmp eq i32 %200, 0
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %20, align 1, !tbaa !2448
  %208 = lshr i32 %200, 31
  %209 = trunc i32 %208 to i8
  store i8 %209, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  %210 = icmp ne i8 %209, 0
  %211 = or i1 %206, %210
  %.v17 = select i1 %211, i64 51, i64 10
  %212 = add i64 %195, %.v17
  store i64 %212, i64* %23, align 8, !tbaa !2428
  br i1 %211, label %block_401aef, label %block_401ac6

block_4019fd:                                     ; preds = %block_4019f3
  %213 = add i64 %642, 4
  store i64 %213, i64* %PC, align 8
  %214 = load i32, i32* %629, align 4
  %215 = sext i32 %214 to i64
  store i64 %215, i64* %RAX, align 8, !tbaa !2428
  %216 = shl nsw i64 %215, 2
  %217 = add i64 %216, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %218 = add i64 %642, 12
  store i64 %218, i64* %PC, align 8
  %219 = inttoptr i64 %217 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = add i32 %220, 1
  %222 = icmp ne i32 %220, -1
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %17, align 1, !tbaa !2432
  %224 = and i32 %221, 255
  %225 = tail call i32 @llvm.ctpop.i32(i32 %224) #8
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = xor i8 %227, 1
  store i8 %228, i8* %18, align 1, !tbaa !2446
  %229 = xor i32 %220, 16
  %230 = xor i32 %221, %229
  %231 = lshr i32 %230, 4
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  store i8 %233, i8* %19, align 1, !tbaa !2447
  %234 = icmp eq i32 %221, 0
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %20, align 1, !tbaa !2448
  %236 = lshr i32 %221, 31
  %237 = trunc i32 %236 to i8
  store i8 %237, i8* %21, align 1, !tbaa !2449
  %238 = lshr i32 %220, 31
  %239 = xor i32 %238, 1
  %240 = xor i32 %236, %238
  %241 = add nuw nsw i32 %240, %239
  %242 = icmp eq i32 %241, 2
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %22, align 1, !tbaa !2450
  %.v16 = select i1 %234, i64 90, i64 18
  %244 = add i64 %642, %.v16
  store i64 %244, i64* %23, align 8, !tbaa !2428
  br i1 %234, label %block_401a57, label %block_401a0f

block_401afa:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_401aef
  %245 = phi i64 [ %196, %block_401aef ], [ %.pre11, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %246 = phi i64 [ %57, %block_401aef ], [ %624, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.3, %block_401aef ], [ %616, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %247 = add i64 %245, -4
  %248 = add i64 %246, 8
  store i64 %248, i64* %PC, align 8
  %249 = inttoptr i64 %247 to i32*
  %250 = load i32, i32* %249, align 4
  %251 = add i32 %250, -1
  %252 = zext i32 %251 to i64
  store i64 %252, i64* %RAX, align 8, !tbaa !2428
  %253 = icmp ne i32 %250, 0
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %17, align 1, !tbaa !2432
  %255 = and i32 %251, 255
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255) #8
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %18, align 1, !tbaa !2446
  %260 = xor i32 %250, 16
  %261 = xor i32 %251, %260
  %262 = lshr i32 %261, 4
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  store i8 %264, i8* %19, align 1, !tbaa !2447
  %265 = icmp eq i32 %251, 0
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %20, align 1, !tbaa !2448
  %267 = lshr i32 %251, 31
  %268 = trunc i32 %267 to i8
  store i8 %268, i8* %21, align 1, !tbaa !2449
  %269 = lshr i32 %250, 31
  %270 = xor i32 %267, %269
  %271 = xor i32 %267, 1
  %272 = add nuw nsw i32 %270, %271
  %273 = icmp eq i32 %272, 2
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %22, align 1, !tbaa !2450
  %275 = add i64 %246, 14
  store i64 %275, i64* %PC, align 8
  store i32 %251, i32* %249, align 4
  %276 = load i64, i64* %PC, align 8
  %277 = add i64 %276, -335
  store i64 %277, i64* %23, align 8, !tbaa !2428
  br label %block_4019b9

block_401ac6:                                     ; preds = %block_401abc
  %278 = add i64 %212, 3
  store i64 %278, i64* %PC, align 8
  %279 = load i32, i32* %199, align 4
  %280 = add i32 %279, -1
  %281 = zext i32 %280 to i64
  store i64 %281, i64* %RAX, align 8, !tbaa !2428
  %282 = icmp eq i32 %279, 0
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %17, align 1, !tbaa !2432
  %284 = and i32 %280, 255
  %285 = tail call i32 @llvm.ctpop.i32(i32 %284) #8
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  %288 = xor i8 %287, 1
  store i8 %288, i8* %18, align 1, !tbaa !2446
  %289 = xor i32 %279, %280
  %290 = lshr i32 %289, 4
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  store i8 %292, i8* %19, align 1, !tbaa !2447
  %293 = icmp eq i32 %280, 0
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %20, align 1, !tbaa !2448
  %295 = lshr i32 %280, 31
  %296 = trunc i32 %295 to i8
  store i8 %296, i8* %21, align 1, !tbaa !2449
  %297 = lshr i32 %279, 31
  %298 = xor i32 %295, %297
  %299 = add nuw nsw i32 %298, %297
  %300 = icmp eq i32 %299, 2
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %22, align 1, !tbaa !2450
  %302 = sext i32 %280 to i64
  store i64 %302, i64* %RCX, align 8, !tbaa !2428
  %303 = shl nsw i64 %302, 2
  %304 = add i64 %303, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %305 = add i64 %212, 16
  store i64 %305, i64* %PC, align 8
  %306 = inttoptr i64 %304 to i32*
  %307 = load i32, i32* %306, align 4
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %RAX, align 8, !tbaa !2428
  %309 = add i64 %212, 20
  store i64 %309, i64* %PC, align 8
  %310 = load i32, i32* %199, align 4
  %311 = sext i32 %310 to i64
  store i64 %311, i64* %RCX, align 8, !tbaa !2428
  %312 = shl nsw i64 %311, 2
  %313 = add i64 %312, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %314 = add i64 %212, 27
  store i64 %314, i64* %PC, align 8
  %315 = inttoptr i64 %313 to i32*
  store i32 %307, i32* %315, align 4
  %316 = load i64, i64* %RBP, align 8
  %317 = add i64 %316, -8
  %318 = load i64, i64* %PC, align 8
  %319 = add i64 %318, 3
  store i64 %319, i64* %PC, align 8
  %320 = inttoptr i64 %317 to i32*
  %321 = load i32, i32* %320, align 4
  %322 = add i32 %321, -1
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RAX, align 8, !tbaa !2428
  %324 = icmp ne i32 %321, 0
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %17, align 1, !tbaa !2432
  %326 = and i32 %322, 255
  %327 = tail call i32 @llvm.ctpop.i32(i32 %326) #8
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  %330 = xor i8 %329, 1
  store i8 %330, i8* %18, align 1, !tbaa !2446
  %331 = xor i32 %321, 16
  %332 = xor i32 %322, %331
  %333 = lshr i32 %332, 4
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  store i8 %335, i8* %19, align 1, !tbaa !2447
  %336 = icmp eq i32 %322, 0
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %20, align 1, !tbaa !2448
  %338 = lshr i32 %322, 31
  %339 = trunc i32 %338 to i8
  store i8 %339, i8* %21, align 1, !tbaa !2449
  %340 = lshr i32 %321, 31
  %341 = xor i32 %338, %340
  %342 = xor i32 %338, 1
  %343 = add nuw nsw i32 %341, %342
  %344 = icmp eq i32 %343, 2
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %22, align 1, !tbaa !2450
  %346 = add i64 %318, 9
  store i64 %346, i64* %PC, align 8
  store i32 %322, i32* %320, align 4
  %347 = load i64, i64* %PC, align 8
  %348 = add i64 %347, -46
  store i64 %348, i64* %23, align 8, !tbaa !2428
  br label %block_401abc

block_4019b2:                                     ; preds = %block_40198b
  %349 = add i64 %512, 7
  store i64 %349, i64* %PC, align 8
  store i32 238, i32* %486, align 4
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_4019b9

block_4019c3:                                     ; preds = %block_4019b9
  %353 = add i64 %481, 4
  store i64 %353, i64* %PC, align 8
  %354 = load i32, i32* %469, align 4
  %355 = sext i32 %354 to i64
  store i64 %355, i64* %RAX, align 8, !tbaa !2428
  %356 = shl nsw i64 %355, 2
  %357 = add i64 %356, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3184)
  %358 = add i64 %481, 11
  store i64 %358, i64* %PC, align 8
  %359 = inttoptr i64 %357 to i32*
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4204) to i32*), align 4
  %362 = xor i32 %361, %360
  %363 = zext i32 %362 to i64
  store i64 %363, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  %364 = and i32 %362, 255
  %365 = tail call i32 @llvm.ctpop.i32(i32 %364) #8
  %366 = trunc i32 %365 to i8
  %367 = and i8 %366, 1
  %368 = xor i8 %367, 1
  store i8 %368, i8* %18, align 1, !tbaa !2446
  %369 = icmp eq i32 %362, 0
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %20, align 1, !tbaa !2448
  %371 = lshr i32 %362, 31
  %372 = trunc i32 %371 to i8
  store i8 %372, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  store i8 0, i8* %19, align 1, !tbaa !2447
  %373 = sext i32 %362 to i64
  store i64 %373, i64* %RAX, align 8, !tbaa !2428
  %374 = shl nsw i64 %373, 2
  %375 = add i64 %374, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %376 = add i64 %481, 28
  store i64 %376, i64* %PC, align 8
  %377 = inttoptr i64 %375 to i32*
  %378 = load i32, i32* %377, align 4
  %379 = zext i32 %378 to i64
  store i64 %379, i64* %RCX, align 8, !tbaa !2428
  %380 = add i64 %466, -12
  %381 = add i64 %481, 31
  store i64 %381, i64* %PC, align 8
  %382 = inttoptr i64 %380 to i32*
  store i32 %378, i32* %382, align 4
  %383 = load i64, i64* %RBP, align 8
  %384 = add i64 %383, -12
  %385 = load i64, i64* %PC, align 8
  %386 = add i64 %385, 4
  store i64 %386, i64* %PC, align 8
  %387 = inttoptr i64 %384 to i32*
  %388 = load i32, i32* %387, align 4
  %389 = add i32 %388, 1
  %390 = icmp ne i32 %388, -1
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %17, align 1, !tbaa !2432
  %392 = and i32 %389, 255
  %393 = tail call i32 @llvm.ctpop.i32(i32 %392) #8
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  store i8 %396, i8* %18, align 1, !tbaa !2446
  %397 = xor i32 %388, 16
  %398 = xor i32 %389, %397
  %399 = lshr i32 %398, 4
  %400 = trunc i32 %399 to i8
  %401 = and i8 %400, 1
  store i8 %401, i8* %19, align 1, !tbaa !2447
  %402 = icmp eq i32 %389, 0
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %20, align 1, !tbaa !2448
  %404 = lshr i32 %389, 31
  %405 = trunc i32 %404 to i8
  store i8 %405, i8* %21, align 1, !tbaa !2449
  %406 = lshr i32 %388, 31
  %407 = xor i32 %406, 1
  %408 = xor i32 %404, %406
  %409 = add nuw nsw i32 %408, %407
  %410 = icmp eq i32 %409, 2
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %22, align 1, !tbaa !2450
  %.v14 = select i1 %402, i64 211, i64 10
  %412 = add i64 %385, %.v14
  %413 = add i64 %383, -8
  %414 = add i64 %412, 7
  store i64 %414, i64* %PC, align 8
  %415 = inttoptr i64 %413 to i32*
  store i32 15, i32* %415, align 4
  %.pre10 = load i64, i64* %PC, align 8
  br i1 %402, label %block_401abc, label %block_4019f3

block_401995:                                     ; preds = %block_40198b
  %416 = add i64 %512, 4
  store i64 %416, i64* %PC, align 8
  %417 = load i32, i32* %486, align 4
  %418 = sext i32 %417 to i64
  store i64 %418, i64* %RAX, align 8, !tbaa !2428
  %419 = shl nsw i64 %418, 2
  %420 = add i64 %419, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %421 = add i64 %512, 15
  store i64 %421, i64* %PC, align 8
  %422 = inttoptr i64 %420 to i32*
  store i32 0, i32* %422, align 4
  %423 = load i64, i64* %RBP, align 8
  %424 = add i64 %423, -4
  %425 = load i64, i64* %PC, align 8
  %426 = add i64 %425, 3
  store i64 %426, i64* %PC, align 8
  %427 = inttoptr i64 %424 to i32*
  %428 = load i32, i32* %427, align 4
  %429 = add i32 %428, 1
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %RAX, align 8, !tbaa !2428
  %431 = icmp eq i32 %428, -1
  %432 = icmp eq i32 %429, 0
  %433 = or i1 %431, %432
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %17, align 1, !tbaa !2432
  %435 = and i32 %429, 255
  %436 = tail call i32 @llvm.ctpop.i32(i32 %435) #8
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  %439 = xor i8 %438, 1
  store i8 %439, i8* %18, align 1, !tbaa !2446
  %440 = xor i32 %428, %429
  %441 = lshr i32 %440, 4
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  store i8 %443, i8* %19, align 1, !tbaa !2447
  %444 = icmp eq i32 %429, 0
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %20, align 1, !tbaa !2448
  %446 = lshr i32 %429, 31
  %447 = trunc i32 %446 to i8
  store i8 %447, i8* %21, align 1, !tbaa !2449
  %448 = lshr i32 %428, 31
  %449 = xor i32 %446, %448
  %450 = add nuw nsw i32 %449, %446
  %451 = icmp eq i32 %450, 2
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %22, align 1, !tbaa !2450
  %453 = add i64 %425, 9
  store i64 %453, i64* %PC, align 8
  store i32 %429, i32* %427, align 4
  %454 = load i64, i64* %PC, align 8
  %455 = add i64 %454, -34
  store i64 %455, i64* %23, align 8, !tbaa !2428
  br label %block_40198b

block_401b0d:                                     ; preds = %block_4019b9
  %456 = add i64 %481, 1
  store i64 %456, i64* %PC, align 8
  %457 = load i64, i64* %9, align 8, !tbaa !2428
  %458 = add i64 %457, 8
  %459 = inttoptr i64 %457 to i64*
  %460 = load i64, i64* %459, align 8
  store i64 %460, i64* %RBP, align 8, !tbaa !2428
  store i64 %458, i64* %9, align 8, !tbaa !2428
  %461 = add i64 %481, 2
  store i64 %461, i64* %PC, align 8
  %462 = inttoptr i64 %458 to i64*
  %463 = load i64, i64* %462, align 8
  store i64 %463, i64* %23, align 8, !tbaa !2428
  %464 = add i64 %457, 16
  store i64 %464, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.3

block_4019b9:                                     ; preds = %block_4019b2, %block_401afa
  %465 = phi i64 [ %.pre2, %block_4019b2 ], [ %277, %block_401afa ]
  %MEMORY.3 = phi %struct.Memory* [ %2, %block_4019b2 ], [ %MEMORY.2, %block_401afa ]
  %466 = load i64, i64* %RBP, align 8
  %467 = add i64 %466, -4
  %468 = add i64 %465, 4
  store i64 %468, i64* %PC, align 8
  %469 = inttoptr i64 %467 to i32*
  %470 = load i32, i32* %469, align 4
  store i8 0, i8* %17, align 1, !tbaa !2432
  %471 = and i32 %470, 255
  %472 = tail call i32 @llvm.ctpop.i32(i32 %471) #8
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  store i8 %475, i8* %18, align 1, !tbaa !2446
  store i8 0, i8* %19, align 1, !tbaa !2447
  %476 = icmp eq i32 %470, 0
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %20, align 1, !tbaa !2448
  %478 = lshr i32 %470, 31
  %479 = trunc i32 %478 to i8
  store i8 %479, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  %480 = icmp ne i8 %479, 0
  %.v13 = select i1 %480, i64 340, i64 10
  %481 = add i64 %465, %.v13
  store i64 %481, i64* %23, align 8, !tbaa !2428
  br i1 %480, label %block_401b0d, label %block_4019c3

block_40198b:                                     ; preds = %block_401995, %block_401980
  %482 = phi i64 [ %455, %block_401995 ], [ %.pre, %block_401980 ]
  %483 = load i64, i64* %RBP, align 8
  %484 = add i64 %483, -4
  %485 = add i64 %482, 4
  store i64 %485, i64* %PC, align 8
  %486 = inttoptr i64 %484 to i32*
  %487 = load i32, i32* %486, align 4
  %488 = add i32 %487, -16
  %489 = icmp ult i32 %487, 16
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %17, align 1, !tbaa !2432
  %491 = and i32 %488, 255
  %492 = tail call i32 @llvm.ctpop.i32(i32 %491) #8
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  %495 = xor i8 %494, 1
  store i8 %495, i8* %18, align 1, !tbaa !2446
  %496 = xor i32 %487, 16
  %497 = xor i32 %496, %488
  %498 = lshr i32 %497, 4
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  store i8 %500, i8* %19, align 1, !tbaa !2447
  %501 = icmp eq i32 %488, 0
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %20, align 1, !tbaa !2448
  %503 = lshr i32 %488, 31
  %504 = trunc i32 %503 to i8
  store i8 %504, i8* %21, align 1, !tbaa !2449
  %505 = lshr i32 %487, 31
  %506 = xor i32 %503, %505
  %507 = add nuw nsw i32 %506, %505
  %508 = icmp eq i32 %507, 2
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %22, align 1, !tbaa !2450
  %510 = icmp ne i8 %504, 0
  %511 = xor i1 %510, %508
  %.v = select i1 %511, i64 10, i64 39
  %512 = add i64 %482, %.v
  store i64 %512, i64* %23, align 8, !tbaa !2428
  br i1 %511, label %block_401995, label %block_4019b2

block_401a57:                                     ; preds = %block_4019fd
  %513 = add i64 %244, 3
  store i64 %513, i64* %PC, align 8
  %514 = load i32, i32* %629, align 4
  %515 = add i32 %514, -1
  %516 = zext i32 %515 to i64
  store i64 %516, i64* %RAX, align 8, !tbaa !2428
  %517 = icmp eq i32 %514, 0
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %17, align 1, !tbaa !2432
  %519 = and i32 %515, 255
  %520 = tail call i32 @llvm.ctpop.i32(i32 %519) #8
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  %523 = xor i8 %522, 1
  store i8 %523, i8* %18, align 1, !tbaa !2446
  %524 = xor i32 %514, %515
  %525 = lshr i32 %524, 4
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  store i8 %527, i8* %19, align 1, !tbaa !2447
  %528 = icmp eq i32 %515, 0
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %20, align 1, !tbaa !2448
  %530 = lshr i32 %515, 31
  %531 = trunc i32 %530 to i8
  store i8 %531, i8* %21, align 1, !tbaa !2449
  %532 = lshr i32 %514, 31
  %533 = xor i32 %530, %532
  %534 = add nuw nsw i32 %533, %532
  %535 = icmp eq i32 %534, 2
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %22, align 1, !tbaa !2450
  %537 = sext i32 %515 to i64
  store i64 %537, i64* %RCX, align 8, !tbaa !2428
  %538 = shl nsw i64 %537, 2
  %539 = add i64 %538, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %540 = add i64 %244, 16
  store i64 %540, i64* %PC, align 8
  %541 = inttoptr i64 %539 to i32*
  %542 = load i32, i32* %541, align 4
  %543 = zext i32 %542 to i64
  store i64 %543, i64* %RAX, align 8, !tbaa !2428
  %544 = add i64 %244, 20
  store i64 %544, i64* %PC, align 8
  %545 = load i32, i32* %629, align 4
  %546 = sext i32 %545 to i64
  store i64 %546, i64* %RCX, align 8, !tbaa !2428
  %547 = shl nsw i64 %546, 2
  %548 = add i64 %547, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %549 = add i64 %244, 27
  store i64 %549, i64* %PC, align 8
  %550 = inttoptr i64 %548 to i32*
  store i32 %542, i32* %550, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_401a72

block_401a85:                                     ; preds = %block_4019f3
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %551 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104) to i32*), align 16
  %552 = zext i32 %551 to i64
  store i64 %552, i64* %RCX, align 8, !tbaa !2428
  %553 = add i64 %626, -12
  %554 = add i64 %642, 15
  store i64 %554, i64* %PC, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = add i32 %556, %551
  %558 = zext i32 %557 to i64
  store i64 %558, i64* %RCX, align 8, !tbaa !2428
  %559 = icmp ult i32 %557, %551
  %560 = icmp ult i32 %557, %556
  %561 = or i1 %559, %560
  %562 = zext i1 %561 to i8
  store i8 %562, i8* %17, align 1, !tbaa !2432
  %563 = and i32 %557, 255
  %564 = tail call i32 @llvm.ctpop.i32(i32 %563) #8
  %565 = trunc i32 %564 to i8
  %566 = and i8 %565, 1
  %567 = xor i8 %566, 1
  store i8 %567, i8* %18, align 1, !tbaa !2446
  %568 = xor i32 %556, %551
  %569 = xor i32 %568, %557
  %570 = lshr i32 %569, 4
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  store i8 %572, i8* %19, align 1, !tbaa !2447
  %573 = icmp eq i32 %557, 0
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %20, align 1, !tbaa !2448
  %575 = lshr i32 %557, 31
  %576 = trunc i32 %575 to i8
  store i8 %576, i8* %21, align 1, !tbaa !2449
  %577 = lshr i32 %551, 31
  %578 = lshr i32 %556, 31
  %579 = xor i32 %575, %577
  %580 = xor i32 %575, %578
  %581 = add nuw nsw i32 %579, %580
  %582 = icmp eq i32 %581, 2
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %22, align 1, !tbaa !2450
  %584 = add i64 %626, -20
  %585 = add i64 %642, 18
  store i64 %585, i64* %PC, align 8
  %586 = inttoptr i64 %584 to i32*
  store i32 255, i32* %586, align 4
  %587 = load i32, i32* %ECX, align 4
  %588 = zext i32 %587 to i64
  %589 = load i64, i64* %PC, align 8
  store i64 %588, i64* %RAX, align 8, !tbaa !2428
  %590 = sext i32 %587 to i64
  %591 = lshr i64 %590, 32
  store i64 %591, i64* %350, align 8, !tbaa !2428
  %592 = load i64, i64* %RBP, align 8
  %593 = add i64 %592, -20
  %594 = add i64 %589, 6
  store i64 %594, i64* %PC, align 8
  %595 = inttoptr i64 %593 to i32*
  %596 = load i32, i32* %595, align 4
  %597 = zext i32 %596 to i64
  store i64 %597, i64* %RCX, align 8, !tbaa !2428
  %598 = add i64 %589, 8
  store i64 %598, i64* %PC, align 8
  %599 = zext i32 %587 to i64
  %600 = sext i32 %596 to i64
  %601 = shl nuw i64 %591, 32
  %602 = or i64 %601, %599
  %603 = sdiv i64 %602, %600
  %604 = shl i64 %603, 32
  %605 = ashr exact i64 %604, 32
  %606 = icmp eq i64 %603, %605
  br i1 %606, label %609, label %607

; <label>:607:                                    ; preds = %block_401a85
  %608 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %598, %struct.Memory* %MEMORY.5) #9
  %.pre8 = load i32, i32* %EDX, align 4
  %.pre9 = load i64, i64* %PC, align 8
  %.pre11.pre = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:609:                                    ; preds = %block_401a85
  %610 = srem i64 %602, %600
  %611 = and i64 %603, 4294967295
  store i64 %611, i64* %351, align 8, !tbaa !2428
  %612 = and i64 %610, 4294967295
  store i64 %612, i64* %352, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 0, i8* %18, align 1, !tbaa !2446
  store i8 0, i8* %19, align 1, !tbaa !2447
  store i8 0, i8* %20, align 1, !tbaa !2448
  store i8 0, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  %613 = trunc i64 %610 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %609, %607
  %.pre11 = phi i64 [ %.pre11.pre, %607 ], [ %592, %609 ]
  %614 = phi i64 [ %.pre9, %607 ], [ %598, %609 ]
  %615 = phi i32 [ %.pre8, %607 ], [ %613, %609 ]
  %616 = phi %struct.Memory* [ %608, %607 ], [ %MEMORY.5, %609 ]
  %617 = sext i32 %615 to i64
  store i64 %617, i64* %RSI, align 8, !tbaa !2428
  %618 = shl nsw i64 %617, 2
  %619 = add i64 %618, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %620 = add i64 %614, 10
  store i64 %620, i64* %PC, align 8
  %621 = inttoptr i64 %619 to i32*
  %622 = load i32, i32* %621, align 4
  %623 = zext i32 %622 to i64
  store i64 %623, i64* %RDX, align 8, !tbaa !2428
  store i32 %622, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144) to i32*), align 16
  %624 = add i64 %614, 91
  store i64 %624, i64* %23, align 8, !tbaa !2428
  br label %block_401afa

block_4019f3:                                     ; preds = %block_4019c3, %block_401a72
  %625 = phi i64 [ %56, %block_401a72 ], [ %.pre10, %block_4019c3 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.0, %block_401a72 ], [ %MEMORY.3, %block_4019c3 ]
  %626 = load i64, i64* %RBP, align 8
  %627 = add i64 %626, -8
  %628 = add i64 %625, 4
  store i64 %628, i64* %PC, align 8
  %629 = inttoptr i64 %627 to i32*
  %630 = load i32, i32* %629, align 4
  store i8 0, i8* %17, align 1, !tbaa !2432
  %631 = and i32 %630, 255
  %632 = tail call i32 @llvm.ctpop.i32(i32 %631) #8
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  %635 = xor i8 %634, 1
  store i8 %635, i8* %18, align 1, !tbaa !2446
  store i8 0, i8* %19, align 1, !tbaa !2447
  %636 = icmp eq i32 %630, 0
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %20, align 1, !tbaa !2448
  %638 = lshr i32 %630, 31
  %639 = trunc i32 %638 to i8
  store i8 %639, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  %640 = icmp ne i8 %639, 0
  %641 = or i1 %636, %640
  %.v15 = select i1 %641, i64 146, i64 10
  %642 = add i64 %625, %.v15
  store i64 %642, i64* %23, align 8, !tbaa !2428
  br i1 %641, label %block_401a85, label %block_4019fd
}

; Function Attrs: noinline
define %struct.Memory* @sub_400910_decode_rs(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400910:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %5 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %ECX = bitcast %union.anon* %4 to i32*
  %EDX = bitcast %union.anon* %5 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %6 to i32*
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDX = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %RSI = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
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
  %15 = add i64 %11, -2616
  store i64 %15, i64* %RSP, align 8, !tbaa !2428
  %16 = icmp ult i64 %12, 2608
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1, !tbaa !2432
  %19 = trunc i64 %15 to i32
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20) #8
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1, !tbaa !2446
  %26 = xor i64 %12, 16
  %27 = xor i64 %26, %15
  %28 = lshr i64 %27, 4
  %29 = trunc i64 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1, !tbaa !2447
  %32 = icmp eq i64 %15, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1, !tbaa !2448
  %35 = lshr i64 %15, 63
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1, !tbaa !2449
  %38 = lshr i64 %12, 63
  %39 = xor i64 %35, %38
  %40 = add nuw nsw i64 %39, %38
  %41 = icmp eq i64 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1, !tbaa !2450
  %44 = add i64 %11, -1500
  %45 = add i64 %14, 20
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %44 to i32*
  store i32 0, i32* %46, align 4
  %47 = load i64, i64* %RBP, align 8
  %48 = add i64 %47, -1496
  %49 = load i64, i64* %PC, align 8
  %50 = add i64 %49, 10
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %48 to i32*
  store i32 0, i32* %51, align 4
  %52 = load i64, i64* %RBP, align 8
  %53 = add i64 %52, -4
  %54 = load i64, i64* %PC, align 8
  %55 = add i64 %54, 7
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %53 to i32*
  store i32 1, i32* %56, align 4
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_400936

block_400ffe:                                     ; preds = %block_400fcb, %block_400fe4
  %61 = phi i64 [ %4201, %block_400fcb ], [ %.pre49, %block_400fe4 ]
  %62 = load i64, i64* %RBP, align 8
  %63 = add i64 %62, -2709
  %64 = add i64 %61, 6
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %63 to i8*
  %66 = load i8, i8* %65, align 1
  store i8 %66, i8* %AL, align 1, !tbaa !2451
  %67 = and i8 %66, 1
  store i8 0, i8* %18, align 1, !tbaa !2432
  %68 = zext i8 %67 to i32
  %69 = tail call i32 @llvm.ctpop.i32(i32 %68) #8
  %70 = trunc i32 %69 to i8
  %71 = xor i8 %70, 1
  store i8 %71, i8* %25, align 1, !tbaa !2446
  %72 = xor i8 %67, 1
  store i8 %72, i8* %34, align 1, !tbaa !2448
  store i8 0, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 0, i8* %31, align 1, !tbaa !2447
  %73 = icmp eq i8 %72, 0
  %.v125 = select i1 %73, i64 -1349, i64 14
  %74 = add i64 %61, %.v125
  store i64 %74, i64* %57, align 8, !tbaa !2428
  br i1 %73, label %block_400ab9, label %block_40100c

block_4013f1:                                     ; preds = %block_401371, %block_40135f, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6
  %75 = phi i64 [ %4683, %block_40135f ], [ %5666, %block_401371 ], [ %.pre70, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.54, %block_40135f ], [ %MEMORY.54, %block_401371 ], [ %1039, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6 ]
  %76 = load i64, i64* %RBP, align 8
  %77 = add i64 %76, -8
  %78 = add i64 %75, 8
  store i64 %78, i64* %PC, align 8
  %79 = inttoptr i64 %77 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = add i32 %80, 1
  %82 = zext i32 %81 to i64
  store i64 %82, i64* %RAX, align 8, !tbaa !2428
  %83 = icmp eq i32 %80, -1
  %84 = icmp eq i32 %81, 0
  %85 = or i1 %83, %84
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %18, align 1, !tbaa !2432
  %87 = and i32 %81, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #8
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %25, align 1, !tbaa !2446
  %92 = xor i32 %80, %81
  %93 = lshr i32 %92, 4
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %31, align 1, !tbaa !2447
  %96 = icmp eq i32 %81, 0
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %34, align 1, !tbaa !2448
  %98 = lshr i32 %81, 31
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %37, align 1, !tbaa !2449
  %100 = lshr i32 %80, 31
  %101 = xor i32 %98, %100
  %102 = add nuw nsw i32 %101, %98
  %103 = icmp eq i32 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %43, align 1, !tbaa !2450
  %105 = add i64 %75, 14
  store i64 %105, i64* %PC, align 8
  store i32 %81, i32* %79, align 4
  %106 = load i64, i64* %PC, align 8
  %107 = add i64 %106, -172
  store i64 %107, i64* %57, align 8, !tbaa !2428
  br label %block_401353

block_400be5:                                     ; preds = %block_400c22, %block_400bdf
  %108 = phi i64 [ %.pre30, %block_400bdf ], [ %6126, %block_400c22 ]
  %109 = phi i64 [ %.pre29, %block_400bdf ], [ %6108, %block_400c22 ]
  %110 = add i64 %109, -8
  %111 = add i64 %108, 3
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %110 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = add i32 %113, -1
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RAX, align 8, !tbaa !2428
  %116 = icmp ne i32 %113, 0
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %18, align 1, !tbaa !2432
  %118 = and i32 %114, 255
  %119 = tail call i32 @llvm.ctpop.i32(i32 %118) #8
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  store i8 %122, i8* %25, align 1, !tbaa !2446
  %123 = xor i32 %113, 16
  %124 = xor i32 %114, %123
  %125 = lshr i32 %124, 4
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  store i8 %127, i8* %31, align 1, !tbaa !2447
  %128 = icmp eq i32 %114, 0
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %34, align 1, !tbaa !2448
  %130 = lshr i32 %114, 31
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %37, align 1, !tbaa !2449
  %132 = lshr i32 %113, 31
  %133 = xor i32 %130, %132
  %134 = xor i32 %130, 1
  %135 = add nuw nsw i32 %133, %134
  %136 = icmp eq i32 %135, 2
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %43, align 1, !tbaa !2450
  %138 = add i64 %108, 9
  store i64 %138, i64* %PC, align 8
  store i32 %114, i32* %112, align 4
  %139 = load i64, i64* %RBP, align 8
  %140 = add i64 %139, -8
  %141 = load i64, i64* %PC, align 8
  %142 = add i64 %141, 4
  store i64 %142, i64* %PC, align 8
  %143 = inttoptr i64 %140 to i32*
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  store i64 %145, i64* %RCX, align 8, !tbaa !2428
  %146 = shl nsw i64 %145, 2
  %147 = add i64 %139, -1248
  %148 = add i64 %147, %146
  %149 = add i64 %141, 12
  store i64 %149, i64* %PC, align 8
  %150 = inttoptr i64 %148 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = add i32 %151, 1
  %153 = icmp ne i32 %151, -1
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %18, align 1, !tbaa !2432
  %155 = and i32 %152, 255
  %156 = tail call i32 @llvm.ctpop.i32(i32 %155) #8
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  store i8 %159, i8* %25, align 1, !tbaa !2446
  %160 = xor i32 %151, 16
  %161 = xor i32 %152, %160
  %162 = lshr i32 %161, 4
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  store i8 %164, i8* %31, align 1, !tbaa !2447
  %165 = icmp eq i32 %152, 0
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %34, align 1, !tbaa !2448
  %167 = lshr i32 %152, 31
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %37, align 1, !tbaa !2449
  %169 = lshr i32 %151, 31
  %170 = xor i32 %169, 1
  %171 = xor i32 %167, %169
  %172 = add nuw nsw i32 %171, %170
  %173 = icmp eq i32 %172, 2
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %43, align 1, !tbaa !2450
  %.v166 = select i1 %165, i64 52, i64 18
  %175 = add i64 %141, %.v166
  store i64 %175, i64* %57, align 8, !tbaa !2428
  br i1 %165, label %block_400c22, label %block_400c00

block_400fe4:                                     ; preds = %block_400fcb
  %176 = load i64, i64* %RBP, align 8
  %177 = add i64 %176, -12
  %178 = add i64 %4201, 3
  store i64 %178, i64* %PC, align 8
  %179 = inttoptr i64 %177 to i32*
  %180 = load i32, i32* %179, align 4
  %181 = add i32 %180, 1
  %182 = zext i32 %181 to i64
  store i64 %182, i64* %RAX, align 8, !tbaa !2428
  %183 = icmp eq i32 %180, -1
  %184 = icmp eq i32 %181, 0
  %185 = or i1 %183, %184
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %18, align 1, !tbaa !2432
  %187 = and i32 %181, 255
  %188 = tail call i32 @llvm.ctpop.i32(i32 %187) #8
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  %191 = xor i8 %190, 1
  store i8 %191, i8* %25, align 1, !tbaa !2446
  %192 = xor i32 %180, %181
  %193 = lshr i32 %192, 4
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  store i8 %195, i8* %31, align 1, !tbaa !2447
  %196 = icmp eq i32 %181, 0
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %34, align 1, !tbaa !2448
  %198 = lshr i32 %181, 31
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %37, align 1, !tbaa !2449
  %200 = lshr i32 %180, 31
  %201 = xor i32 %198, %200
  %202 = add nuw nsw i32 %201, %198
  %203 = icmp eq i32 %202, 2
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %43, align 1, !tbaa !2450
  %205 = sext i32 %181 to i64
  store i64 %205, i64* %RCX, align 8, !tbaa !2428
  %206 = shl nsw i64 %205, 2
  %207 = add i64 %176, -1328
  %208 = add i64 %207, %206
  %209 = add i64 %4201, 17
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %208 to i32*
  %211 = load i32, i32* %210, align 4
  %212 = add i32 %211, -8
  %213 = icmp ult i32 %211, 8
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %18, align 1, !tbaa !2432
  %215 = and i32 %212, 255
  %216 = tail call i32 @llvm.ctpop.i32(i32 %215) #8
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 1
  %219 = xor i8 %218, 1
  store i8 %219, i8* %25, align 1, !tbaa !2446
  %220 = xor i32 %211, %212
  %221 = lshr i32 %220, 4
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  store i8 %223, i8* %31, align 1, !tbaa !2447
  %224 = icmp eq i32 %212, 0
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %34, align 1, !tbaa !2448
  %226 = lshr i32 %212, 31
  %227 = trunc i32 %226 to i8
  store i8 %227, i8* %37, align 1, !tbaa !2449
  %228 = lshr i32 %211, 31
  %229 = xor i32 %226, %228
  %230 = add nuw nsw i32 %229, %228
  %231 = icmp eq i32 %230, 2
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %43, align 1, !tbaa !2450
  %233 = icmp ne i8 %227, 0
  %234 = xor i1 %233, %231
  %235 = or i1 %224, %234
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %DL, align 1, !tbaa !2451
  %237 = add i64 %176, -2709
  %238 = add i64 %4201, 26
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %237 to i8*
  store i8 %236, i8* %239, align 1
  %.pre49 = load i64, i64* %PC, align 8
  br label %block_400ffe

block_4015dc:                                     ; preds = %block_4015c8
  %240 = add i64 %5918, 3
  store i64 %240, i64* %PC, align 8
  %241 = load i32, i32* %5878, align 4
  %242 = zext i32 %241 to i64
  store i64 %242, i64* %RAX, align 8, !tbaa !2428
  %243 = add i64 %5875, -4
  %244 = add i64 %5918, 6
  store i64 %244, i64* %PC, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = sub i32 %241, %246
  %248 = icmp ult i32 %241, %246
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %18, align 1, !tbaa !2432
  %250 = and i32 %247, 255
  %251 = tail call i32 @llvm.ctpop.i32(i32 %250) #8
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  %254 = xor i8 %253, 1
  store i8 %254, i8* %25, align 1, !tbaa !2446
  %255 = xor i32 %246, %241
  %256 = xor i32 %255, %247
  %257 = lshr i32 %256, 4
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  store i8 %259, i8* %31, align 1, !tbaa !2447
  %260 = icmp eq i32 %247, 0
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %34, align 1, !tbaa !2448
  %262 = lshr i32 %247, 31
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %37, align 1, !tbaa !2449
  %264 = lshr i32 %241, 31
  %265 = lshr i32 %246, 31
  %266 = xor i32 %265, %264
  %267 = xor i32 %262, %264
  %268 = add nuw nsw i32 %267, %266
  %269 = icmp eq i32 %268, 2
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %43, align 1, !tbaa !2450
  %.v158 = select i1 %260, i64 85, i64 12
  %271 = add i64 %5918, %.v158
  store i64 %271, i64* %57, align 8, !tbaa !2428
  br i1 %260, label %block_401631, label %block_4015e8

block_4017d4:                                     ; preds = %block_401825, %block_4017cd
  %272 = phi i64 [ %.pre97, %block_4017cd ], [ %5841, %block_401825 ]
  %273 = load i64, i64* %RBP, align 8
  %274 = add i64 %273, -4
  %275 = add i64 %272, 7
  store i64 %275, i64* %PC, align 8
  %276 = inttoptr i64 %274 to i32*
  %277 = load i32, i32* %276, align 4
  %278 = add i32 %277, -255
  %279 = icmp ult i32 %277, 255
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %18, align 1, !tbaa !2432
  %281 = and i32 %278, 255
  %282 = tail call i32 @llvm.ctpop.i32(i32 %281) #8
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  store i8 %285, i8* %25, align 1, !tbaa !2446
  %286 = xor i32 %277, 16
  %287 = xor i32 %286, %278
  %288 = lshr i32 %287, 4
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 1
  store i8 %290, i8* %31, align 1, !tbaa !2447
  %291 = icmp eq i32 %278, 0
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %34, align 1, !tbaa !2448
  %293 = lshr i32 %278, 31
  %294 = trunc i32 %293 to i8
  store i8 %294, i8* %37, align 1, !tbaa !2449
  %295 = lshr i32 %277, 31
  %296 = xor i32 %293, %295
  %297 = add nuw nsw i32 %296, %295
  %298 = icmp eq i32 %297, 2
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %43, align 1, !tbaa !2450
  %300 = icmp ne i8 %294, 0
  %301 = xor i1 %300, %298
  %.v176 = select i1 %301, i64 13, i64 100
  %302 = add i64 %272, %.v176
  store i64 %302, i64* %57, align 8, !tbaa !2428
  br i1 %301, label %block_4017e1, label %block_401838

block_4017c8:                                     ; preds = %block_401753, %block_4017c3
  %.sink108 = phi i64 [ %3863, %block_401753 ], [ %3441, %block_4017c3 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.36, %block_401753 ], [ %MEMORY.40, %block_4017c3 ]
  store i64 %.sink108, i64* %57, align 8, !tbaa !2428
  %303 = add i64 %.sink108, 117
  br label %block_40183d

block_400bdf:                                     ; preds = %block_400bc2
  %304 = add i64 %889, 3
  store i64 %304, i64* %PC, align 8
  %305 = load i32, i32* %876, align 4
  %306 = zext i32 %305 to i64
  store i64 %306, i64* %RAX, align 8, !tbaa !2428
  %307 = add i64 %3034, -8
  %308 = add i64 %889, 6
  store i64 %308, i64* %PC, align 8
  %309 = inttoptr i64 %307 to i32*
  store i32 %305, i32* %309, align 4
  %.pre29 = load i64, i64* %RBP, align 8
  %.pre30 = load i64, i64* %PC, align 8
  br label %block_400be5

block_4009ea:                                     ; preds = %block_4009e0, %block_4009ce
  %310 = phi i64 [ %.pre22, %block_4009e0 ], [ %1123, %block_4009ce ]
  %311 = phi i64 [ %.pre21, %block_4009e0 ], [ %1532, %block_4009ce ]
  %312 = add i64 %311, -4
  %313 = add i64 %310, 4
  store i64 %313, i64* %PC, align 8
  %314 = inttoptr i64 %312 to i32*
  %315 = load i32, i32* %314, align 4
  %316 = sext i32 %315 to i64
  store i64 %316, i64* %RAX, align 8, !tbaa !2428
  %317 = shl nsw i64 %316, 2
  %318 = add i64 %311, -1488
  %319 = add i64 %318, %317
  %320 = add i64 %310, 12
  store i64 %320, i64* %PC, align 8
  %321 = inttoptr i64 %319 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = sext i32 %322 to i64
  store i64 %323, i64* %RAX, align 8, !tbaa !2428
  %324 = shl nsw i64 %323, 2
  %325 = add i64 %324, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %326 = add i64 %310, 19
  store i64 %326, i64* %PC, align 8
  %327 = inttoptr i64 %325 to i32*
  %328 = load i32, i32* %327, align 4
  %329 = zext i32 %328 to i64
  store i64 %329, i64* %RCX, align 8, !tbaa !2428
  %330 = add i64 %310, 23
  store i64 %330, i64* %PC, align 8
  %331 = load i32, i32* %314, align 4
  %332 = sext i32 %331 to i64
  store i64 %332, i64* %RAX, align 8, !tbaa !2428
  %333 = shl nsw i64 %332, 2
  %334 = add i64 %318, %333
  %335 = add i64 %310, 30
  store i64 %335, i64* %PC, align 8
  %336 = inttoptr i64 %334 to i32*
  store i32 %328, i32* %336, align 4
  %337 = load i64, i64* %RBP, align 8
  %338 = add i64 %337, -4
  %339 = load i64, i64* %PC, align 8
  %340 = add i64 %339, 3
  store i64 %340, i64* %PC, align 8
  %341 = inttoptr i64 %338 to i32*
  %342 = load i32, i32* %341, align 4
  %343 = add i32 %342, 1
  %344 = zext i32 %343 to i64
  store i64 %344, i64* %RAX, align 8, !tbaa !2428
  %345 = icmp eq i32 %342, -1
  %346 = icmp eq i32 %343, 0
  %347 = or i1 %345, %346
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %18, align 1, !tbaa !2432
  %349 = and i32 %343, 255
  %350 = tail call i32 @llvm.ctpop.i32(i32 %349) #8
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = xor i8 %352, 1
  store i8 %353, i8* %25, align 1, !tbaa !2446
  %354 = xor i32 %342, %343
  %355 = lshr i32 %354, 4
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  store i8 %357, i8* %31, align 1, !tbaa !2447
  %358 = icmp eq i32 %343, 0
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %34, align 1, !tbaa !2448
  %360 = lshr i32 %343, 31
  %361 = trunc i32 %360 to i8
  store i8 %361, i8* %37, align 1, !tbaa !2449
  %362 = lshr i32 %342, 31
  %363 = xor i32 %360, %362
  %364 = add nuw nsw i32 %363, %360
  %365 = icmp eq i32 %364, 2
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %43, align 1, !tbaa !2450
  %367 = add i64 %339, 9
  store i64 %367, i64* %PC, align 8
  store i32 %343, i32* %341, align 4
  %368 = load i64, i64* %PC, align 8
  %369 = add i64 %368, -219
  store i64 %369, i64* %57, align 8, !tbaa !2428
  br label %block_400936

block_400dbf:                                     ; preds = %block_400dab
  %370 = add i64 %2560, -1168
  store i64 %370, i64* %RAX, align 8, !tbaa !2428
  %371 = add i64 %2603, 11
  store i64 %371, i64* %PC, align 8
  %372 = load i32, i32* %2568, align 4
  %373 = sext i32 %372 to i64
  %374 = shl nsw i64 %373, 6
  store i64 %374, i64* %RCX, align 8, !tbaa !2428
  %375 = lshr i64 %373, 57
  %376 = and i64 %375, 1
  %377 = add i64 %374, %370
  store i64 %377, i64* %RDX, align 8, !tbaa !2428
  %378 = icmp ult i64 %377, %370
  %379 = icmp ult i64 %377, %374
  %380 = or i1 %378, %379
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %18, align 1, !tbaa !2432
  %382 = trunc i64 %377 to i32
  %383 = and i32 %382, 255
  %384 = tail call i32 @llvm.ctpop.i32(i32 %383) #8
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  %387 = xor i8 %386, 1
  store i8 %387, i8* %25, align 1, !tbaa !2446
  %388 = xor i64 %370, %377
  %389 = lshr i64 %388, 4
  %390 = trunc i64 %389 to i8
  %391 = and i8 %390, 1
  store i8 %391, i8* %31, align 1, !tbaa !2447
  %392 = icmp eq i64 %377, 0
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %34, align 1, !tbaa !2448
  %394 = lshr i64 %377, 63
  %395 = trunc i64 %394 to i8
  store i8 %395, i8* %37, align 1, !tbaa !2449
  %396 = lshr i64 %370, 63
  %397 = xor i64 %394, %396
  %398 = xor i64 %394, %376
  %399 = add nuw nsw i64 %397, %398
  %400 = icmp eq i64 %399, 2
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %43, align 1, !tbaa !2450
  %402 = add i64 %2603, 25
  store i64 %402, i64* %PC, align 8
  %403 = load i32, i32* %2563, align 4
  %404 = sext i32 %403 to i64
  store i64 %404, i64* %RCX, align 8, !tbaa !2428
  %405 = shl nsw i64 %404, 2
  %406 = add i64 %405, %377
  %407 = add i64 %2603, 28
  store i64 %407, i64* %PC, align 8
  %408 = inttoptr i64 %406 to i32*
  %409 = load i32, i32* %408, align 4
  %410 = zext i32 %409 to i64
  store i64 %410, i64* %RSI, align 8, !tbaa !2428
  %411 = add i64 %2603, 31
  store i64 %411, i64* %PC, align 8
  %412 = load i32, i32* %2568, align 4
  %413 = add i32 %412, 1
  %414 = zext i32 %413 to i64
  store i64 %414, i64* %RDI, align 8, !tbaa !2428
  %415 = sext i32 %413 to i64
  %416 = shl nsw i64 %415, 6
  store i64 %416, i64* %RCX, align 8, !tbaa !2428
  %417 = lshr i64 %415, 57
  %418 = and i64 %417, 1
  %419 = load i64, i64* %RAX, align 8
  %420 = add i64 %416, %419
  store i64 %420, i64* %RDX, align 8, !tbaa !2428
  %421 = icmp ult i64 %420, %419
  %422 = icmp ult i64 %420, %416
  %423 = or i1 %421, %422
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %18, align 1, !tbaa !2432
  %425 = trunc i64 %420 to i32
  %426 = and i32 %425, 255
  %427 = tail call i32 @llvm.ctpop.i32(i32 %426) #8
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  %430 = xor i8 %429, 1
  store i8 %430, i8* %25, align 1, !tbaa !2446
  %431 = xor i64 %419, %420
  %432 = lshr i64 %431, 4
  %433 = trunc i64 %432 to i8
  %434 = and i8 %433, 1
  store i8 %434, i8* %31, align 1, !tbaa !2447
  %435 = icmp eq i64 %420, 0
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %34, align 1, !tbaa !2448
  %437 = lshr i64 %420, 63
  %438 = trunc i64 %437 to i8
  store i8 %438, i8* %37, align 1, !tbaa !2449
  %439 = lshr i64 %419, 63
  %440 = xor i64 %437, %439
  %441 = xor i64 %437, %418
  %442 = add nuw nsw i64 %440, %441
  %443 = icmp eq i64 %442, 2
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %43, align 1, !tbaa !2450
  %445 = load i64, i64* %RBP, align 8
  %446 = add i64 %445, -4
  %447 = add i64 %2603, 51
  store i64 %447, i64* %PC, align 8
  %448 = inttoptr i64 %446 to i32*
  %449 = load i32, i32* %448, align 4
  %450 = sext i32 %449 to i64
  store i64 %450, i64* %RCX, align 8, !tbaa !2428
  %451 = load i64, i64* %RSI, align 8
  %452 = shl nsw i64 %450, 2
  %453 = add i64 %452, %420
  %454 = add i64 %2603, 54
  store i64 %454, i64* %PC, align 8
  %455 = trunc i64 %451 to i32
  %456 = inttoptr i64 %453 to i32*
  %457 = load i32, i32* %456, align 4
  %458 = xor i32 %457, %455
  %459 = zext i32 %458 to i64
  store i64 %459, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  %460 = and i32 %458, 255
  %461 = tail call i32 @llvm.ctpop.i32(i32 %460) #8
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  %464 = xor i8 %463, 1
  store i8 %464, i8* %25, align 1, !tbaa !2446
  %465 = icmp eq i32 %458, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %34, align 1, !tbaa !2448
  %467 = lshr i32 %458, 31
  %468 = trunc i32 %467 to i8
  store i8 %468, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 0, i8* %31, align 1, !tbaa !2447
  %469 = add i64 %2603, 57
  store i64 %469, i64* %PC, align 8
  store i32 %458, i32* %456, align 4
  %470 = load i64, i64* %RBP, align 8
  %471 = add i64 %470, -12
  %472 = load i64, i64* %PC, align 8
  %473 = add i64 %472, 4
  store i64 %473, i64* %PC, align 8
  %474 = inttoptr i64 %471 to i32*
  %475 = load i32, i32* %474, align 4
  %476 = sext i32 %475 to i64
  %477 = shl nsw i64 %476, 6
  store i64 %477, i64* %RCX, align 8, !tbaa !2428
  %478 = lshr i64 %476, 57
  %479 = and i64 %478, 1
  %480 = load i64, i64* %RAX, align 8
  %481 = add i64 %477, %480
  store i64 %481, i64* %RDX, align 8, !tbaa !2428
  %482 = icmp ult i64 %481, %480
  %483 = icmp ult i64 %481, %477
  %484 = or i1 %482, %483
  %485 = zext i1 %484 to i8
  store i8 %485, i8* %18, align 1, !tbaa !2432
  %486 = trunc i64 %481 to i32
  %487 = and i32 %486, 255
  %488 = tail call i32 @llvm.ctpop.i32(i32 %487) #8
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  %491 = xor i8 %490, 1
  store i8 %491, i8* %25, align 1, !tbaa !2446
  %492 = xor i64 %480, %481
  %493 = lshr i64 %492, 4
  %494 = trunc i64 %493 to i8
  %495 = and i8 %494, 1
  store i8 %495, i8* %31, align 1, !tbaa !2447
  %496 = icmp eq i64 %481, 0
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %34, align 1, !tbaa !2448
  %498 = lshr i64 %481, 63
  %499 = trunc i64 %498 to i8
  store i8 %499, i8* %37, align 1, !tbaa !2449
  %500 = lshr i64 %480, 63
  %501 = xor i64 %498, %500
  %502 = xor i64 %498, %479
  %503 = add nuw nsw i64 %501, %502
  %504 = icmp eq i64 %503, 2
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %43, align 1, !tbaa !2450
  %506 = add i64 %470, -4
  %507 = add i64 %472, 18
  store i64 %507, i64* %PC, align 8
  %508 = inttoptr i64 %506 to i32*
  %509 = load i32, i32* %508, align 4
  %510 = sext i32 %509 to i64
  store i64 %510, i64* %RCX, align 8, !tbaa !2428
  %511 = shl nsw i64 %510, 2
  %512 = add i64 %511, %481
  %513 = add i64 %472, 22
  store i64 %513, i64* %PC, align 8
  %514 = inttoptr i64 %512 to i32*
  %515 = load i32, i32* %514, align 4
  %516 = sext i32 %515 to i64
  store i64 %516, i64* %RCX, align 8, !tbaa !2428
  %517 = shl nsw i64 %516, 2
  %518 = add i64 %517, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %519 = add i64 %472, 29
  store i64 %519, i64* %PC, align 8
  %520 = inttoptr i64 %518 to i32*
  %521 = load i32, i32* %520, align 4
  %522 = zext i32 %521 to i64
  store i64 %522, i64* %RSI, align 8, !tbaa !2428
  %523 = add i64 %472, 33
  store i64 %523, i64* %PC, align 8
  %524 = load i32, i32* %474, align 4
  %525 = sext i32 %524 to i64
  %526 = shl nsw i64 %525, 6
  store i64 %526, i64* %RCX, align 8, !tbaa !2428
  %527 = lshr i64 %525, 57
  %528 = and i64 %527, 1
  %529 = add i64 %526, %480
  store i64 %529, i64* %RAX, align 8, !tbaa !2428
  %530 = icmp ult i64 %529, %480
  %531 = icmp ult i64 %529, %526
  %532 = or i1 %530, %531
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %18, align 1, !tbaa !2432
  %534 = trunc i64 %529 to i32
  %535 = and i32 %534, 255
  %536 = tail call i32 @llvm.ctpop.i32(i32 %535) #8
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  %539 = xor i8 %538, 1
  store i8 %539, i8* %25, align 1, !tbaa !2446
  %540 = xor i64 %480, %529
  %541 = lshr i64 %540, 4
  %542 = trunc i64 %541 to i8
  %543 = and i8 %542, 1
  store i8 %543, i8* %31, align 1, !tbaa !2447
  %544 = icmp eq i64 %529, 0
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %34, align 1, !tbaa !2448
  %546 = lshr i64 %529, 63
  %547 = trunc i64 %546 to i8
  store i8 %547, i8* %37, align 1, !tbaa !2449
  %548 = xor i64 %546, %500
  %549 = xor i64 %546, %528
  %550 = add nuw nsw i64 %548, %549
  %551 = icmp eq i64 %550, 2
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %43, align 1, !tbaa !2450
  %553 = load i64, i64* %RBP, align 8
  %554 = add i64 %553, -4
  %555 = add i64 %472, 44
  store i64 %555, i64* %PC, align 8
  %556 = inttoptr i64 %554 to i32*
  %557 = load i32, i32* %556, align 4
  %558 = sext i32 %557 to i64
  store i64 %558, i64* %RCX, align 8, !tbaa !2428
  %559 = shl nsw i64 %558, 2
  %560 = add i64 %559, %529
  %561 = add i64 %472, 47
  store i64 %561, i64* %PC, align 8
  %562 = inttoptr i64 %560 to i32*
  store i32 %521, i32* %562, align 4
  %563 = load i64, i64* %RBP, align 8
  %564 = add i64 %563, -4
  %565 = load i64, i64* %PC, align 8
  %566 = add i64 %565, 3
  store i64 %566, i64* %PC, align 8
  %567 = inttoptr i64 %564 to i32*
  %568 = load i32, i32* %567, align 4
  %569 = add i32 %568, 1
  %570 = zext i32 %569 to i64
  store i64 %570, i64* %RAX, align 8, !tbaa !2428
  %571 = icmp eq i32 %568, -1
  %572 = icmp eq i32 %569, 0
  %573 = or i1 %571, %572
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %18, align 1, !tbaa !2432
  %575 = and i32 %569, 255
  %576 = tail call i32 @llvm.ctpop.i32(i32 %575) #8
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  %579 = xor i8 %578, 1
  store i8 %579, i8* %25, align 1, !tbaa !2446
  %580 = xor i32 %568, %569
  %581 = lshr i32 %580, 4
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, 1
  store i8 %583, i8* %31, align 1, !tbaa !2447
  %584 = icmp eq i32 %569, 0
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %34, align 1, !tbaa !2448
  %586 = lshr i32 %569, 31
  %587 = trunc i32 %586 to i8
  store i8 %587, i8* %37, align 1, !tbaa !2449
  %588 = lshr i32 %568, 31
  %589 = xor i32 %586, %588
  %590 = add nuw nsw i32 %589, %586
  %591 = icmp eq i32 %590, 2
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %43, align 1, !tbaa !2450
  %593 = add i64 %565, 9
  store i64 %593, i64* %PC, align 8
  store i32 %569, i32* %567, align 4
  %594 = load i64, i64* %PC, align 8
  %595 = add i64 %594, -133
  store i64 %595, i64* %57, align 8, !tbaa !2428
  br label %block_400dab

block_4009bb:                                     ; preds = %block_400963, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5
  %596 = phi i64 [ %1532, %block_400963 ], [ %.pre20, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5 ]
  %597 = phi i64 [ %5873, %block_400963 ], [ %.pre19, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.10, %block_400963 ], [ %1411, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5 ]
  %598 = add i64 %596, -8
  %599 = add i64 %597, 8
  store i64 %599, i64* %PC, align 8
  %600 = inttoptr i64 %598 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = add i32 %601, 1
  %603 = zext i32 %602 to i64
  store i64 %603, i64* %RAX, align 8, !tbaa !2428
  %604 = icmp eq i32 %601, -1
  %605 = icmp eq i32 %602, 0
  %606 = or i1 %604, %605
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %18, align 1, !tbaa !2432
  %608 = and i32 %602, 255
  %609 = tail call i32 @llvm.ctpop.i32(i32 %608) #8
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  %612 = xor i8 %611, 1
  store i8 %612, i8* %25, align 1, !tbaa !2446
  %613 = xor i32 %601, %602
  %614 = lshr i32 %613, 4
  %615 = trunc i32 %614 to i8
  %616 = and i8 %615, 1
  store i8 %616, i8* %31, align 1, !tbaa !2447
  %617 = icmp eq i32 %602, 0
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %34, align 1, !tbaa !2448
  %619 = lshr i32 %602, 31
  %620 = trunc i32 %619 to i8
  store i8 %620, i8* %37, align 1, !tbaa !2449
  %621 = lshr i32 %601, 31
  %622 = xor i32 %619, %621
  %623 = add nuw nsw i32 %622, %619
  %624 = icmp eq i32 %623, 2
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %43, align 1, !tbaa !2450
  %626 = add i64 %597, 14
  store i64 %626, i64* %PC, align 8
  store i32 %602, i32* %600, align 4
  %627 = load i64, i64* %PC, align 8
  %628 = add i64 %627, -115
  store i64 %628, i64* %57, align 8, !tbaa !2428
  br label %block_400956

block_4016f7:                                     ; preds = %block_4016ea
  %629 = add i64 %4842, 4
  store i64 %629, i64* %PC, align 8
  %630 = load i32, i32* %4816, align 4
  %631 = sext i32 %630 to i64
  store i64 %631, i64* %RAX, align 8, !tbaa !2428
  %632 = shl nsw i64 %631, 2
  %633 = add i64 %632, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %634 = add i64 %4842, 12
  store i64 %634, i64* %PC, align 8
  %635 = inttoptr i64 %633 to i32*
  %636 = load i32, i32* %635, align 4
  %637 = add i32 %636, 1
  %638 = icmp ne i32 %636, -1
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %18, align 1, !tbaa !2432
  %640 = and i32 %637, 255
  %641 = tail call i32 @llvm.ctpop.i32(i32 %640) #8
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  %644 = xor i8 %643, 1
  store i8 %644, i8* %25, align 1, !tbaa !2446
  %645 = xor i32 %636, 16
  %646 = xor i32 %637, %645
  %647 = lshr i32 %646, 4
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  store i8 %649, i8* %31, align 1, !tbaa !2447
  %650 = icmp eq i32 %637, 0
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %34, align 1, !tbaa !2448
  %652 = lshr i32 %637, 31
  %653 = trunc i32 %652 to i8
  store i8 %653, i8* %37, align 1, !tbaa !2449
  %654 = lshr i32 %636, 31
  %655 = xor i32 %654, 1
  %656 = xor i32 %652, %654
  %657 = add nuw nsw i32 %656, %655
  %658 = icmp eq i32 %657, 2
  %659 = zext i1 %658 to i8
  store i8 %659, i8* %43, align 1, !tbaa !2450
  %.v160 = select i1 %650, i64 53, i64 18
  %660 = add i64 %4842, %.v160
  %661 = add i64 %660, 4
  store i64 %661, i64* %PC, align 8
  %662 = load i32, i32* %4816, align 4
  %663 = sext i32 %662 to i64
  store i64 %663, i64* %RAX, align 8, !tbaa !2428
  %664 = shl nsw i64 %663, 2
  %665 = add i64 %664, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  br i1 %650, label %block_40172c, label %block_401709

block_400ba7:                                     ; preds = %block_400b8b
  %666 = load i64, i64* %RBP, align 8
  %667 = add i64 %666, -16
  %668 = add i64 %4651, 4
  store i64 %668, i64* %PC, align 8
  %669 = inttoptr i64 %667 to i32*
  %670 = load i32, i32* %669, align 4
  store i8 0, i8* %18, align 1, !tbaa !2432
  %671 = and i32 %670, 255
  %672 = tail call i32 @llvm.ctpop.i32(i32 %671) #8
  %673 = trunc i32 %672 to i8
  %674 = and i8 %673, 1
  %675 = xor i8 %674, 1
  store i8 %675, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2447
  %676 = icmp eq i32 %670, 0
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %34, align 1, !tbaa !2448
  %678 = lshr i32 %670, 31
  %679 = trunc i32 %678 to i8
  store i8 %679, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %680 = xor i1 %676, true
  %681 = icmp eq i8 %679, 0
  %682 = and i1 %681, %680
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %AL, align 1, !tbaa !2451
  %684 = add i64 %666, -2693
  %685 = add i64 %4651, 13
  store i64 %685, i64* %PC, align 8
  %686 = inttoptr i64 %684 to i8*
  store i8 %683, i8* %686, align 1
  %.pre28 = load i64, i64* %PC, align 8
  br label %block_400bb4

block_400da4:                                     ; preds = %block_400ce3
  %687 = add i64 %3862, 7
  store i64 %687, i64* %PC, align 8
  store i32 0, i32* %3822, align 4
  %.pre39 = load i64, i64* %PC, align 8
  br label %block_400dab

block_4017a1:                                     ; preds = %block_40176c
  %688 = add i64 %1473, 15
  store i64 %688, i64* %PC, align 8
  %689 = inttoptr i64 %1478 to i32*
  store i32 0, i32* %689, align 4
  %.pre96 = load i64, i64* %PC, align 8
  br label %block_4017b0

block_401644:                                     ; preds = %block_4015c8
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %690 = add i64 %5875, -16
  %691 = add i64 %5918, 8
  store i64 %691, i64* %PC, align 8
  %692 = inttoptr i64 %690 to i32*
  %693 = load i32, i32* %692, align 4
  %694 = zext i32 %693 to i64
  store i64 %694, i64* %RCX, align 8, !tbaa !2428
  %695 = add i64 %5875, -2732
  %696 = add i64 %5918, 14
  store i64 %696, i64* %PC, align 8
  %697 = inttoptr i64 %695 to i32*
  store i32 255, i32* %697, align 4
  %698 = load i32, i32* %ECX, align 4
  %699 = zext i32 %698 to i64
  %700 = load i64, i64* %PC, align 8
  store i64 %699, i64* %RAX, align 8, !tbaa !2428
  %701 = sext i32 %698 to i64
  %702 = lshr i64 %701, 32
  store i64 %702, i64* %58, align 8, !tbaa !2428
  %703 = load i64, i64* %RBP, align 8
  %704 = add i64 %703, -2732
  %705 = add i64 %700, 9
  store i64 %705, i64* %PC, align 8
  %706 = inttoptr i64 %704 to i32*
  %707 = load i32, i32* %706, align 4
  %708 = zext i32 %707 to i64
  store i64 %708, i64* %RCX, align 8, !tbaa !2428
  %709 = add i64 %700, 11
  store i64 %709, i64* %PC, align 8
  %710 = zext i32 %698 to i64
  %711 = sext i32 %707 to i64
  %712 = shl nuw i64 %702, 32
  %713 = or i64 %712, %710
  %714 = sdiv i64 %713, %711
  %715 = shl i64 %714, 32
  %716 = ashr exact i64 %715, 32
  %717 = icmp eq i64 %714, %716
  br i1 %717, label %720, label %718

; <label>:718:                                    ; preds = %block_401644
  %719 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %709, %struct.Memory* %MEMORY.51) #9
  %.pre86 = load i64, i64* %RBP, align 8
  %.pre87 = load i32, i32* %EDX, align 4
  %.pre88 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8

; <label>:720:                                    ; preds = %block_401644
  %721 = srem i64 %713, %711
  %722 = and i64 %714, 4294967295
  store i64 %722, i64* %59, align 8, !tbaa !2428
  %723 = and i64 %721, 4294967295
  store i64 %723, i64* %60, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  store i8 0, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2447
  store i8 0, i8* %34, align 1, !tbaa !2448
  store i8 0, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %724 = trunc i64 %721 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8: ; preds = %720, %718
  %725 = phi i64 [ %.pre88, %718 ], [ %709, %720 ]
  %726 = phi i32 [ %.pre87, %718 ], [ %724, %720 ]
  %727 = phi i64 [ %.pre86, %718 ], [ %703, %720 ]
  %728 = phi %struct.Memory* [ %719, %718 ], [ %MEMORY.51, %720 ]
  %729 = add i64 %727, -16
  %730 = add i64 %725, 3
  store i64 %730, i64* %PC, align 8
  %731 = inttoptr i64 %729 to i32*
  store i32 %726, i32* %731, align 4
  %732 = load i64, i64* %RBP, align 8
  %733 = add i64 %732, -4
  %734 = load i64, i64* %PC, align 8
  %735 = add i64 %734, 4
  store i64 %735, i64* %PC, align 8
  %736 = inttoptr i64 %733 to i32*
  %737 = load i32, i32* %736, align 4
  %738 = sext i32 %737 to i64
  store i64 %738, i64* %RSI, align 8, !tbaa !2428
  %739 = shl nsw i64 %738, 2
  %740 = add i64 %732, -1568
  %741 = add i64 %740, %739
  %742 = add i64 %734, 12
  store i64 %742, i64* %PC, align 8
  %743 = inttoptr i64 %741 to i32*
  %744 = load i32, i32* %743, align 4
  %745 = sext i32 %744 to i64
  store i64 %745, i64* %RSI, align 8, !tbaa !2428
  %746 = shl nsw i64 %745, 2
  %747 = add i64 %732, -2640
  %748 = add i64 %747, %746
  %749 = add i64 %734, 19
  store i64 %749, i64* %PC, align 8
  %750 = inttoptr i64 %748 to i32*
  %751 = load i32, i32* %750, align 4
  %752 = zext i32 %751 to i64
  store i64 %752, i64* %RDX, align 8, !tbaa !2428
  %753 = add i64 %732, -16
  %754 = add i64 %734, 22
  store i64 %754, i64* %PC, align 8
  %755 = inttoptr i64 %753 to i32*
  %756 = load i32, i32* %755, align 4
  %757 = sub i32 %751, %756
  %758 = lshr i32 %757, 31
  %759 = add i32 %757, 255
  %760 = zext i32 %759 to i64
  %761 = icmp ugt i32 %757, -256
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %18, align 1, !tbaa !2432
  %763 = and i32 %759, 255
  %764 = tail call i32 @llvm.ctpop.i32(i32 %763) #8
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  %767 = xor i8 %766, 1
  store i8 %767, i8* %25, align 1, !tbaa !2446
  %768 = xor i32 %757, 16
  %769 = xor i32 %768, %759
  %770 = lshr i32 %769, 4
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  store i8 %772, i8* %31, align 1, !tbaa !2447
  %773 = icmp eq i32 %759, 0
  %774 = zext i1 %773 to i8
  store i8 %774, i8* %34, align 1, !tbaa !2448
  %775 = lshr i32 %759, 31
  %776 = trunc i32 %775 to i8
  store i8 %776, i8* %37, align 1, !tbaa !2449
  %777 = xor i32 %775, %758
  %778 = add nuw nsw i32 %777, %775
  %779 = icmp eq i32 %778, 2
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %43, align 1, !tbaa !2450
  store i64 %760, i64* %RAX, align 8, !tbaa !2428
  %781 = sext i32 %759 to i64
  %782 = lshr i64 %781, 32
  store i64 %782, i64* %58, align 8, !tbaa !2428
  %783 = load i32, i32* %ECX, align 4
  %784 = add i64 %734, 33
  store i64 %784, i64* %PC, align 8
  %785 = zext i32 %759 to i64
  %786 = sext i32 %783 to i64
  %787 = shl nuw i64 %782, 32
  %788 = or i64 %787, %785
  %789 = sdiv i64 %788, %786
  %790 = shl i64 %789, 32
  %791 = ashr exact i64 %790, 32
  %792 = icmp eq i64 %789, %791
  br i1 %792, label %795, label %793

; <label>:793:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8
  %794 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %784, %struct.Memory* %728) #9
  %.pre89 = load i32, i32* %EDX, align 4
  %.pre90 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7

; <label>:795:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8
  %796 = srem i64 %788, %786
  %797 = and i64 %789, 4294967295
  store i64 %797, i64* %59, align 8, !tbaa !2428
  %798 = and i64 %796, 4294967295
  store i64 %798, i64* %60, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  store i8 0, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2447
  store i8 0, i8* %34, align 1, !tbaa !2448
  store i8 0, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %799 = trunc i64 %796 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7: ; preds = %795, %793
  %800 = phi i64 [ %.pre90, %793 ], [ %784, %795 ]
  %801 = phi i32 [ %.pre89, %793 ], [ %799, %795 ]
  %802 = phi %struct.Memory* [ %794, %793 ], [ %728, %795 ]
  %803 = sext i32 %801 to i64
  store i64 %803, i64* %RSI, align 8, !tbaa !2428
  %804 = shl nsw i64 %803, 2
  %805 = add i64 %804, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %806 = add i64 %800, 10
  store i64 %806, i64* %PC, align 8
  %807 = inttoptr i64 %805 to i32*
  %808 = load i32, i32* %807, align 4
  %809 = zext i32 %808 to i64
  store i64 %809, i64* %RDX, align 8, !tbaa !2428
  %810 = load i64, i64* %RBP, align 8
  %811 = add i64 %810, -4
  %812 = add i64 %800, 14
  store i64 %812, i64* %PC, align 8
  %813 = inttoptr i64 %811 to i32*
  %814 = load i32, i32* %813, align 4
  %815 = sext i32 %814 to i64
  store i64 %815, i64* %RSI, align 8, !tbaa !2428
  %816 = shl nsw i64 %815, 2
  %817 = add i64 %810, -1568
  %818 = add i64 %817, %816
  %819 = add i64 %800, 22
  store i64 %819, i64* %PC, align 8
  %820 = inttoptr i64 %818 to i32*
  %821 = load i32, i32* %820, align 4
  %822 = sext i32 %821 to i64
  store i64 %822, i64* %RSI, align 8, !tbaa !2428
  %823 = shl nsw i64 %822, 2
  %824 = add i64 %810, -2640
  %825 = add i64 %824, %823
  %826 = add i64 %800, 29
  store i64 %826, i64* %PC, align 8
  %827 = inttoptr i64 %825 to i32*
  store i32 %808, i32* %827, align 4
  %828 = load i64, i64* %RBP, align 8
  %829 = add i64 %828, -4
  %830 = load i64, i64* %PC, align 8
  %831 = add i64 %830, 4
  store i64 %831, i64* %PC, align 8
  %832 = inttoptr i64 %829 to i32*
  %833 = load i32, i32* %832, align 4
  %834 = sext i32 %833 to i64
  store i64 %834, i64* %RSI, align 8, !tbaa !2428
  %835 = shl nsw i64 %834, 2
  %836 = add i64 %828, -1568
  %837 = add i64 %836, %835
  %838 = add i64 %830, 12
  store i64 %838, i64* %PC, align 8
  %839 = inttoptr i64 %837 to i32*
  %840 = load i32, i32* %839, align 4
  %841 = sext i32 %840 to i64
  store i64 %841, i64* %RSI, align 8, !tbaa !2428
  %842 = shl nsw i64 %841, 2
  %843 = add i64 %828, -2640
  %844 = add i64 %843, %842
  %845 = add i64 %830, 19
  store i64 %845, i64* %PC, align 8
  %846 = inttoptr i64 %844 to i32*
  %847 = load i32, i32* %846, align 4
  %848 = zext i32 %847 to i64
  store i64 %848, i64* %RDX, align 8, !tbaa !2428
  %849 = add i64 %830, 23
  store i64 %849, i64* %PC, align 8
  %850 = load i32, i32* %832, align 4
  %851 = sext i32 %850 to i64
  store i64 %851, i64* %RSI, align 8, !tbaa !2428
  %852 = shl nsw i64 %851, 2
  %853 = add i64 %836, %852
  %854 = add i64 %830, 31
  store i64 %854, i64* %PC, align 8
  %855 = inttoptr i64 %853 to i32*
  %856 = load i32, i32* %855, align 4
  %857 = sext i32 %856 to i64
  store i64 %857, i64* %RSI, align 8, !tbaa !2428
  %858 = shl nsw i64 %857, 2
  %859 = add i64 %858, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %860 = add i64 %830, 38
  store i64 %860, i64* %PC, align 8
  %861 = inttoptr i64 %859 to i32*
  %862 = load i32, i32* %861, align 4
  %863 = xor i32 %862, %847
  %864 = zext i32 %863 to i64
  store i64 %864, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  %865 = and i32 %863, 255
  %866 = tail call i32 @llvm.ctpop.i32(i32 %865) #8
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  %869 = xor i8 %868, 1
  store i8 %869, i8* %25, align 1, !tbaa !2446
  %870 = icmp eq i32 %863, 0
  %871 = zext i1 %870 to i8
  store i8 %871, i8* %34, align 1, !tbaa !2448
  %872 = lshr i32 %863, 31
  %873 = trunc i32 %872 to i8
  store i8 %873, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 0, i8* %31, align 1, !tbaa !2447
  %874 = add i64 %830, 45
  store i64 %874, i64* %PC, align 8
  store i32 %863, i32* %861, align 4
  %.pre91 = load i64, i64* %PC, align 8
  %.pre92 = load i64, i64* %RBP, align 8
  br label %block_4016cb

block_400bc2:                                     ; preds = %block_400bb4
  %875 = add i64 %3046, 23
  store i64 %875, i64* %PC, align 8
  %876 = inttoptr i64 %3047 to i32*
  %877 = load i32, i32* %876, align 4
  store i8 0, i8* %18, align 1, !tbaa !2432
  %878 = and i32 %877, 255
  %879 = tail call i32 @llvm.ctpop.i32(i32 %878) #8
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 1
  %882 = xor i8 %881, 1
  store i8 %882, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2447
  %883 = icmp eq i32 %877, 0
  %884 = zext i1 %883 to i8
  store i8 %884, i8* %34, align 1, !tbaa !2448
  %885 = lshr i32 %877, 31
  %886 = trunc i32 %885 to i8
  store i8 %886, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %887 = icmp ne i8 %886, 0
  %888 = or i1 %883, %887
  %.v165 = select i1 %888, i64 116, i64 29
  %889 = add i64 %3046, %.v165
  store i64 %889, i64* %57, align 8, !tbaa !2428
  br i1 %888, label %block_400c36, label %block_400bdf

block_401396:                                     ; preds = %block_401371
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %890 = load i64, i64* %RBP, align 8
  %891 = add i64 %890, -1168
  store i64 %891, i64* %RCX, align 8, !tbaa !2428
  %892 = add i64 %890, -12
  %893 = add i64 %5666, 16
  store i64 %893, i64* %PC, align 8
  %894 = inttoptr i64 %892 to i32*
  %895 = load i32, i32* %894, align 4
  %896 = sext i32 %895 to i64
  %897 = shl nsw i64 %896, 6
  store i64 %897, i64* %RDX, align 8, !tbaa !2428
  %898 = lshr i64 %896, 57
  %899 = and i64 %898, 1
  %900 = add i64 %897, %891
  store i64 %900, i64* %RCX, align 8, !tbaa !2428
  %901 = icmp ult i64 %900, %891
  %902 = icmp ult i64 %900, %897
  %903 = or i1 %901, %902
  %904 = zext i1 %903 to i8
  store i8 %904, i8* %18, align 1, !tbaa !2432
  %905 = trunc i64 %900 to i32
  %906 = and i32 %905, 255
  %907 = tail call i32 @llvm.ctpop.i32(i32 %906) #8
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  %910 = xor i8 %909, 1
  store i8 %910, i8* %25, align 1, !tbaa !2446
  %911 = xor i64 %891, %900
  %912 = lshr i64 %911, 4
  %913 = trunc i64 %912 to i8
  %914 = and i8 %913, 1
  store i8 %914, i8* %31, align 1, !tbaa !2447
  %915 = icmp eq i64 %900, 0
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %34, align 1, !tbaa !2448
  %917 = lshr i64 %900, 63
  %918 = trunc i64 %917 to i8
  store i8 %918, i8* %37, align 1, !tbaa !2449
  %919 = lshr i64 %891, 63
  %920 = xor i64 %917, %919
  %921 = xor i64 %917, %899
  %922 = add nuw nsw i64 %920, %921
  %923 = icmp eq i64 %922, 2
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %43, align 1, !tbaa !2450
  %925 = add i64 %890, -4
  %926 = add i64 %5666, 26
  store i64 %926, i64* %PC, align 8
  %927 = inttoptr i64 %925 to i32*
  %928 = load i32, i32* %927, align 4
  %929 = zext i32 %928 to i64
  store i64 %929, i64* %RSI, align 8, !tbaa !2428
  %930 = add i64 %890, -8
  %931 = add i64 %5666, 29
  store i64 %931, i64* %PC, align 8
  %932 = inttoptr i64 %930 to i32*
  %933 = load i32, i32* %932, align 4
  %934 = sub i32 %928, %933
  %935 = zext i32 %934 to i64
  store i64 %935, i64* %RSI, align 8, !tbaa !2428
  %936 = icmp ult i32 %928, %933
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %18, align 1, !tbaa !2432
  %938 = and i32 %934, 255
  %939 = tail call i32 @llvm.ctpop.i32(i32 %938) #8
  %940 = trunc i32 %939 to i8
  %941 = and i8 %940, 1
  %942 = xor i8 %941, 1
  store i8 %942, i8* %25, align 1, !tbaa !2446
  %943 = xor i32 %933, %928
  %944 = xor i32 %943, %934
  %945 = lshr i32 %944, 4
  %946 = trunc i32 %945 to i8
  %947 = and i8 %946, 1
  store i8 %947, i8* %31, align 1, !tbaa !2447
  %948 = icmp eq i32 %934, 0
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %34, align 1, !tbaa !2448
  %950 = lshr i32 %934, 31
  %951 = trunc i32 %950 to i8
  store i8 %951, i8* %37, align 1, !tbaa !2449
  %952 = lshr i32 %928, 31
  %953 = lshr i32 %933, 31
  %954 = xor i32 %953, %952
  %955 = xor i32 %950, %952
  %956 = add nuw nsw i32 %955, %954
  %957 = icmp eq i32 %956, 2
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %43, align 1, !tbaa !2450
  %959 = sext i32 %934 to i64
  store i64 %959, i64* %RDX, align 8, !tbaa !2428
  %960 = shl nsw i64 %959, 2
  %961 = add i64 %960, %900
  %962 = add i64 %5666, 35
  store i64 %962, i64* %PC, align 8
  %963 = inttoptr i64 %961 to i32*
  %964 = load i32, i32* %963, align 4
  %965 = zext i32 %964 to i64
  store i64 %965, i64* %RSI, align 8, !tbaa !2428
  %966 = load i64, i64* %RBP, align 8
  %967 = add i64 %966, -8
  %968 = add i64 %5666, 39
  store i64 %968, i64* %PC, align 8
  %969 = inttoptr i64 %967 to i32*
  %970 = load i32, i32* %969, align 4
  %971 = sext i32 %970 to i64
  store i64 %971, i64* %RCX, align 8, !tbaa !2428
  %972 = shl nsw i64 %971, 2
  %973 = add i64 %966, -1488
  %974 = add i64 %973, %972
  %975 = add i64 %5666, 46
  store i64 %975, i64* %PC, align 8
  %976 = inttoptr i64 %974 to i32*
  %977 = load i32, i32* %976, align 4
  %978 = add i32 %977, %964
  %979 = zext i32 %978 to i64
  store i64 %979, i64* %RSI, align 8, !tbaa !2428
  %980 = icmp ult i32 %978, %964
  %981 = icmp ult i32 %978, %977
  %982 = or i1 %980, %981
  %983 = zext i1 %982 to i8
  store i8 %983, i8* %18, align 1, !tbaa !2432
  %984 = and i32 %978, 255
  %985 = tail call i32 @llvm.ctpop.i32(i32 %984) #8
  %986 = trunc i32 %985 to i8
  %987 = and i8 %986, 1
  %988 = xor i8 %987, 1
  store i8 %988, i8* %25, align 1, !tbaa !2446
  %989 = xor i32 %977, %964
  %990 = xor i32 %989, %978
  %991 = lshr i32 %990, 4
  %992 = trunc i32 %991 to i8
  %993 = and i8 %992, 1
  store i8 %993, i8* %31, align 1, !tbaa !2447
  %994 = icmp eq i32 %978, 0
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %34, align 1, !tbaa !2448
  %996 = lshr i32 %978, 31
  %997 = trunc i32 %996 to i8
  store i8 %997, i8* %37, align 1, !tbaa !2449
  %998 = lshr i32 %964, 31
  %999 = lshr i32 %977, 31
  %1000 = xor i32 %996, %998
  %1001 = xor i32 %996, %999
  %1002 = add nuw nsw i32 %1000, %1001
  %1003 = icmp eq i32 %1002, 2
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %43, align 1, !tbaa !2450
  %1005 = add i64 %966, -2720
  %1006 = load i32, i32* %EAX, align 4
  %1007 = add i64 %5666, 52
  store i64 %1007, i64* %PC, align 8
  %1008 = inttoptr i64 %1005 to i32*
  store i32 %1006, i32* %1008, align 4
  %1009 = load i32, i32* %ESI, align 4
  %1010 = zext i32 %1009 to i64
  %1011 = load i64, i64* %PC, align 8
  store i64 %1010, i64* %RAX, align 8, !tbaa !2428
  %1012 = sext i32 %1009 to i64
  %1013 = lshr i64 %1012, 32
  store i64 %1013, i64* %58, align 8, !tbaa !2428
  %1014 = load i64, i64* %RBP, align 8
  %1015 = add i64 %1014, -2720
  %1016 = add i64 %1011, 9
  store i64 %1016, i64* %PC, align 8
  %1017 = inttoptr i64 %1015 to i32*
  %1018 = load i32, i32* %1017, align 4
  %1019 = zext i32 %1018 to i64
  store i64 %1019, i64* %RSI, align 8, !tbaa !2428
  %1020 = add i64 %1011, 11
  store i64 %1020, i64* %PC, align 8
  %1021 = zext i32 %1009 to i64
  %1022 = sext i32 %1018 to i64
  %1023 = shl nuw i64 %1013, 32
  %1024 = or i64 %1023, %1021
  %1025 = sdiv i64 %1024, %1022
  %1026 = shl i64 %1025, 32
  %1027 = ashr exact i64 %1026, 32
  %1028 = icmp eq i64 %1025, %1027
  br i1 %1028, label %1031, label %1029

; <label>:1029:                                   ; preds = %block_401396
  %1030 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1020, %struct.Memory* %MEMORY.54) #9
  %.pre67 = load i32, i32* %EDX, align 4
  %.pre68 = load i64, i64* %PC, align 8
  %.pre69 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6

; <label>:1031:                                   ; preds = %block_401396
  %1032 = srem i64 %1024, %1022
  %1033 = and i64 %1025, 4294967295
  store i64 %1033, i64* %59, align 8, !tbaa !2428
  %1034 = and i64 %1032, 4294967295
  store i64 %1034, i64* %60, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  store i8 0, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2447
  store i8 0, i8* %34, align 1, !tbaa !2448
  store i8 0, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %1035 = trunc i64 %1032 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6: ; preds = %1031, %1029
  %1036 = phi i64 [ %.pre69, %1029 ], [ %1014, %1031 ]
  %1037 = phi i64 [ %.pre68, %1029 ], [ %1020, %1031 ]
  %1038 = phi i32 [ %.pre67, %1029 ], [ %1035, %1031 ]
  %1039 = phi %struct.Memory* [ %1030, %1029 ], [ %MEMORY.54, %1031 ]
  %1040 = sext i32 %1038 to i64
  store i64 %1040, i64* %RCX, align 8, !tbaa !2428
  %1041 = shl nsw i64 %1040, 2
  %1042 = add i64 %1041, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %1043 = add i64 %1037, 10
  store i64 %1043, i64* %PC, align 8
  %1044 = inttoptr i64 %1042 to i32*
  %1045 = load i32, i32* %1044, align 4
  %1046 = zext i32 %1045 to i64
  store i64 %1046, i64* %RDX, align 8, !tbaa !2428
  %1047 = add i64 %1036, -4
  %1048 = add i64 %1037, 14
  store i64 %1048, i64* %PC, align 8
  %1049 = inttoptr i64 %1047 to i32*
  %1050 = load i32, i32* %1049, align 4
  %1051 = sext i32 %1050 to i64
  store i64 %1051, i64* %RCX, align 8, !tbaa !2428
  %1052 = shl nsw i64 %1051, 2
  %1053 = add i64 %1036, -1616
  %1054 = add i64 %1053, %1052
  %1055 = add i64 %1037, 21
  store i64 %1055, i64* %PC, align 8
  %1056 = inttoptr i64 %1054 to i32*
  %1057 = load i32, i32* %1056, align 4
  %1058 = xor i32 %1057, %1045
  %1059 = zext i32 %1058 to i64
  store i64 %1059, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  %1060 = and i32 %1058, 255
  %1061 = tail call i32 @llvm.ctpop.i32(i32 %1060) #8
  %1062 = trunc i32 %1061 to i8
  %1063 = and i8 %1062, 1
  %1064 = xor i8 %1063, 1
  store i8 %1064, i8* %25, align 1, !tbaa !2446
  %1065 = icmp eq i32 %1058, 0
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %34, align 1, !tbaa !2448
  %1067 = lshr i32 %1058, 31
  %1068 = trunc i32 %1067 to i8
  store i8 %1068, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 0, i8* %31, align 1, !tbaa !2447
  %1069 = add i64 %1037, 28
  store i64 %1069, i64* %PC, align 8
  store i32 %1058, i32* %1056, align 4
  %.pre70 = load i64, i64* %PC, align 8
  br label %block_4013f1

block_400f90:                                     ; preds = %block_400edf, %block_400ef9, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2
  %1070 = phi i64 [ %3150, %block_400edf ], [ %2638, %block_400ef9 ], [ %.pre46, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2 ]
  %1071 = phi i64 [ %2895, %block_400edf ], [ %2658, %block_400ef9 ], [ %.pre45, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.27, %block_400edf ], [ %MEMORY.27, %block_400ef9 ], [ %2247, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2 ]
  %1072 = add i64 %1070, -4
  %1073 = add i64 %1071, 8
  store i64 %1073, i64* %PC, align 8
  %1074 = inttoptr i64 %1072 to i32*
  %1075 = load i32, i32* %1074, align 4
  %1076 = add i32 %1075, 1
  %1077 = zext i32 %1076 to i64
  store i64 %1077, i64* %RAX, align 8, !tbaa !2428
  %1078 = icmp eq i32 %1075, -1
  %1079 = icmp eq i32 %1076, 0
  %1080 = or i1 %1078, %1079
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %18, align 1, !tbaa !2432
  %1082 = and i32 %1076, 255
  %1083 = tail call i32 @llvm.ctpop.i32(i32 %1082) #8
  %1084 = trunc i32 %1083 to i8
  %1085 = and i8 %1084, 1
  %1086 = xor i8 %1085, 1
  store i8 %1086, i8* %25, align 1, !tbaa !2446
  %1087 = xor i32 %1075, %1076
  %1088 = lshr i32 %1087, 4
  %1089 = trunc i32 %1088 to i8
  %1090 = and i8 %1089, 1
  store i8 %1090, i8* %31, align 1, !tbaa !2447
  %1091 = icmp eq i32 %1076, 0
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %34, align 1, !tbaa !2448
  %1093 = lshr i32 %1076, 31
  %1094 = trunc i32 %1093 to i8
  store i8 %1094, i8* %37, align 1, !tbaa !2449
  %1095 = lshr i32 %1075, 31
  %1096 = xor i32 %1093, %1095
  %1097 = add nuw nsw i32 %1096, %1093
  %1098 = icmp eq i32 %1097, 2
  %1099 = zext i1 %1098 to i8
  store i8 %1099, i8* %43, align 1, !tbaa !2450
  %1100 = add i64 %1071, 14
  store i64 %1100, i64* %PC, align 8
  store i32 %1076, i32* %1074, align 4
  %1101 = load i64, i64* %PC, align 8
  %1102 = add i64 %1101, -216
  store i64 %1102, i64* %57, align 8, !tbaa !2428
  br label %block_400ec6

block_4009ce:                                     ; preds = %block_400956
  %1103 = add i64 %1532, -4
  %1104 = add i64 %1561, 4
  store i64 %1104, i64* %PC, align 8
  %1105 = inttoptr i64 %1103 to i32*
  %1106 = load i32, i32* %1105, align 4
  %1107 = sext i32 %1106 to i64
  store i64 %1107, i64* %RAX, align 8, !tbaa !2428
  %1108 = shl nsw i64 %1107, 2
  %1109 = add i64 %1532, -1488
  %1110 = add i64 %1109, %1108
  %1111 = add i64 %1561, 12
  store i64 %1111, i64* %PC, align 8
  %1112 = inttoptr i64 %1110 to i32*
  %1113 = load i32, i32* %1112, align 4
  store i8 0, i8* %18, align 1, !tbaa !2432
  %1114 = and i32 %1113, 255
  %1115 = tail call i32 @llvm.ctpop.i32(i32 %1114) #8
  %1116 = trunc i32 %1115 to i8
  %1117 = and i8 %1116, 1
  %1118 = xor i8 %1117, 1
  store i8 %1118, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2447
  %1119 = icmp eq i32 %1113, 0
  %1120 = zext i1 %1119 to i8
  store i8 %1120, i8* %34, align 1, !tbaa !2448
  %1121 = lshr i32 %1113, 31
  %1122 = trunc i32 %1121 to i8
  store i8 %1122, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %.v112 = select i1 %1119, i64 28, i64 18
  %1123 = add i64 %1561, %.v112
  store i64 %1123, i64* %57, align 8, !tbaa !2428
  br i1 %1119, label %block_4009ea, label %block_4009e0

block_40158c:                                     ; preds = %block_401572
  %1124 = add i64 %2686, 4
  store i64 %1124, i64* %PC, align 8
  %1125 = load i32, i32* %2661, align 4
  %1126 = sext i32 %1125 to i64
  store i64 %1126, i64* %RAX, align 8, !tbaa !2428
  %1127 = shl nsw i64 %1126, 2
  %1128 = add i64 %2665, %1127
  %1129 = add i64 %2686, 12
  store i64 %1129, i64* %PC, align 8
  %1130 = inttoptr i64 %1128 to i32*
  %1131 = load i32, i32* %1130, align 4
  %1132 = sext i32 %1131 to i64
  store i64 %1132, i64* %RAX, align 8, !tbaa !2428
  %1133 = shl nsw i64 %1132, 2
  %1134 = add i64 %2672, %1133
  %1135 = add i64 %2686, 20
  store i64 %1135, i64* %PC, align 8
  %1136 = inttoptr i64 %1134 to i32*
  %1137 = load i32, i32* %1136, align 4
  %1138 = sext i32 %1137 to i64
  store i64 %1138, i64* %RAX, align 8, !tbaa !2428
  %1139 = shl nsw i64 %1138, 2
  %1140 = add i64 %1139, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %1141 = add i64 %2686, 27
  store i64 %1141, i64* %PC, align 8
  %1142 = inttoptr i64 %1140 to i32*
  %1143 = load i32, i32* %1142, align 4
  %1144 = zext i32 %1143 to i64
  store i64 %1144, i64* %RCX, align 8, !tbaa !2428
  %1145 = add i64 %2686, 31
  store i64 %1145, i64* %PC, align 8
  %1146 = load i32, i32* %2661, align 4
  %1147 = sext i32 %1146 to i64
  store i64 %1147, i64* %RAX, align 8, !tbaa !2428
  %1148 = shl nsw i64 %1147, 2
  %1149 = add i64 %2665, %1148
  %1150 = add i64 %2686, 39
  store i64 %1150, i64* %PC, align 8
  %1151 = inttoptr i64 %1149 to i32*
  %1152 = load i32, i32* %1151, align 4
  %1153 = sext i32 %1152 to i64
  store i64 %1153, i64* %RAX, align 8, !tbaa !2428
  %1154 = shl nsw i64 %1153, 2
  %1155 = add i64 %2672, %1154
  %1156 = add i64 %2686, 46
  store i64 %1156, i64* %PC, align 8
  %1157 = inttoptr i64 %1155 to i32*
  store i32 %1143, i32* %1157, align 4
  %1158 = load i64, i64* %RBP, align 8
  %1159 = add i64 %1158, -16
  %1160 = load i64, i64* %PC, align 8
  %1161 = add i64 %1160, 7
  store i64 %1161, i64* %PC, align 8
  %1162 = inttoptr i64 %1159 to i32*
  store i32 0, i32* %1162, align 4
  %1163 = load i64, i64* %RBP, align 8
  %1164 = add i64 %1163, -8
  %1165 = load i64, i64* %PC, align 8
  %1166 = add i64 %1165, 7
  store i64 %1166, i64* %PC, align 8
  %1167 = inttoptr i64 %1164 to i32*
  store i32 0, i32* %1167, align 4
  %.pre80 = load i64, i64* %PC, align 8
  br label %block_4015c8

block_40118a:                                     ; preds = %block_401180
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %1168 = add i64 %2927, -4
  %1169 = add i64 %1328, 8
  store i64 %1169, i64* %PC, align 8
  %1170 = inttoptr i64 %1168 to i32*
  %1171 = load i32, i32* %1170, align 4
  %1172 = zext i32 %1171 to i64
  store i64 %1172, i64* %RCX, align 8, !tbaa !2428
  %1173 = add i64 %2927, -1492
  %1174 = add i64 %1328, 15
  store i64 %1174, i64* %PC, align 8
  %1175 = inttoptr i64 %1173 to i32*
  %1176 = load i32, i32* %1175, align 4
  %1177 = sext i32 %1176 to i64
  store i64 %1177, i64* %RDX, align 8, !tbaa !2428
  %1178 = shl nsw i64 %1177, 2
  %1179 = add i64 %2927, -1536
  %1180 = add i64 %1179, %1178
  %1181 = add i64 %1328, 22
  store i64 %1181, i64* %PC, align 8
  %1182 = inttoptr i64 %1180 to i32*
  store i32 %1171, i32* %1182, align 4
  %1183 = load i64, i64* %RAX, align 8
  %1184 = load i64, i64* %RBP, align 8
  %1185 = add i64 %1184, -4
  %1186 = load i64, i64* %PC, align 8
  %1187 = add i64 %1186, 3
  store i64 %1187, i64* %PC, align 8
  %1188 = trunc i64 %1183 to i32
  %1189 = inttoptr i64 %1185 to i32*
  %1190 = load i32, i32* %1189, align 4
  %1191 = sub i32 %1188, %1190
  %1192 = zext i32 %1191 to i64
  store i64 %1192, i64* %RAX, align 8, !tbaa !2428
  %1193 = icmp ult i32 %1188, %1190
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %18, align 1, !tbaa !2432
  %1195 = and i32 %1191, 255
  %1196 = tail call i32 @llvm.ctpop.i32(i32 %1195) #8
  %1197 = trunc i32 %1196 to i8
  %1198 = and i8 %1197, 1
  %1199 = xor i8 %1198, 1
  store i8 %1199, i8* %25, align 1, !tbaa !2446
  %1200 = xor i32 %1190, %1188
  %1201 = xor i32 %1200, %1191
  %1202 = lshr i32 %1201, 4
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  store i8 %1204, i8* %31, align 1, !tbaa !2447
  %1205 = icmp eq i32 %1191, 0
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %34, align 1, !tbaa !2448
  %1207 = lshr i32 %1191, 31
  %1208 = trunc i32 %1207 to i8
  store i8 %1208, i8* %37, align 1, !tbaa !2449
  %1209 = lshr i32 %1188, 31
  %1210 = lshr i32 %1190, 31
  %1211 = xor i32 %1210, %1209
  %1212 = xor i32 %1207, %1209
  %1213 = add nuw nsw i32 %1212, %1211
  %1214 = icmp eq i32 %1213, 2
  %1215 = zext i1 %1214 to i8
  store i8 %1215, i8* %43, align 1, !tbaa !2450
  %1216 = add i64 %1184, -1492
  %1217 = add i64 %1186, 10
  store i64 %1217, i64* %PC, align 8
  %1218 = inttoptr i64 %1216 to i32*
  %1219 = load i32, i32* %1218, align 4
  %1220 = sext i32 %1219 to i64
  store i64 %1220, i64* %RDX, align 8, !tbaa !2428
  %1221 = shl nsw i64 %1220, 2
  %1222 = add i64 %1184, -1568
  %1223 = add i64 %1222, %1221
  %1224 = add i64 %1186, 17
  store i64 %1224, i64* %PC, align 8
  %1225 = inttoptr i64 %1223 to i32*
  store i32 %1191, i32* %1225, align 4
  %1226 = load i64, i64* %RBP, align 8
  %1227 = add i64 %1226, -1492
  %1228 = load i64, i64* %PC, align 8
  %1229 = add i64 %1228, 6
  store i64 %1229, i64* %PC, align 8
  %1230 = inttoptr i64 %1227 to i32*
  %1231 = load i32, i32* %1230, align 4
  %1232 = add i32 %1231, 1
  %1233 = zext i32 %1232 to i64
  store i64 %1233, i64* %RAX, align 8, !tbaa !2428
  %1234 = icmp eq i32 %1231, -1
  %1235 = icmp eq i32 %1232, 0
  %1236 = or i1 %1234, %1235
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %18, align 1, !tbaa !2432
  %1238 = and i32 %1232, 255
  %1239 = tail call i32 @llvm.ctpop.i32(i32 %1238) #8
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  %1242 = xor i8 %1241, 1
  store i8 %1242, i8* %25, align 1, !tbaa !2446
  %1243 = xor i32 %1231, %1232
  %1244 = lshr i32 %1243, 4
  %1245 = trunc i32 %1244 to i8
  %1246 = and i8 %1245, 1
  store i8 %1246, i8* %31, align 1, !tbaa !2447
  %1247 = icmp eq i32 %1232, 0
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %34, align 1, !tbaa !2448
  %1249 = lshr i32 %1232, 31
  %1250 = trunc i32 %1249 to i8
  store i8 %1250, i8* %37, align 1, !tbaa !2449
  %1251 = lshr i32 %1231, 31
  %1252 = xor i32 %1249, %1251
  %1253 = add nuw nsw i32 %1252, %1249
  %1254 = icmp eq i32 %1253, 2
  %1255 = zext i1 %1254 to i8
  store i8 %1255, i8* %43, align 1, !tbaa !2450
  %1256 = add i64 %1228, 15
  store i64 %1256, i64* %PC, align 8
  store i32 %1232, i32* %1230, align 4
  %.pre59 = load i64, i64* %PC, align 8
  %.pre60 = load i64, i64* %RBP, align 8
  br label %block_4011c0

block_400b82:                                     ; preds = %block_400ab9
  %1257 = add i64 %3412, 3
  store i64 %1257, i64* %PC, align 8
  %1258 = load i32, i32* %3380, align 4
  %1259 = add i32 %1258, -1
  %1260 = zext i32 %1259 to i64
  store i64 %1260, i64* %RAX, align 8, !tbaa !2428
  %1261 = icmp eq i32 %1258, 0
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %18, align 1, !tbaa !2432
  %1263 = and i32 %1259, 255
  %1264 = tail call i32 @llvm.ctpop.i32(i32 %1263) #8
  %1265 = trunc i32 %1264 to i8
  %1266 = and i8 %1265, 1
  %1267 = xor i8 %1266, 1
  store i8 %1267, i8* %25, align 1, !tbaa !2446
  %1268 = xor i32 %1258, %1259
  %1269 = lshr i32 %1268, 4
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  store i8 %1271, i8* %31, align 1, !tbaa !2447
  %1272 = icmp eq i32 %1259, 0
  %1273 = zext i1 %1272 to i8
  store i8 %1273, i8* %34, align 1, !tbaa !2448
  %1274 = lshr i32 %1259, 31
  %1275 = trunc i32 %1274 to i8
  store i8 %1275, i8* %37, align 1, !tbaa !2449
  %1276 = lshr i32 %1258, 31
  %1277 = xor i32 %1274, %1276
  %1278 = add nuw nsw i32 %1277, %1276
  %1279 = icmp eq i32 %1278, 2
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %43, align 1, !tbaa !2450
  %1281 = add i64 %3376, -16
  %1282 = add i64 %3412, 9
  store i64 %1282, i64* %PC, align 8
  %1283 = inttoptr i64 %1281 to i32*
  store i32 %1259, i32* %1283, align 4
  %.pre27 = load i64, i64* %PC, align 8
  br label %block_400b8b

block_40175f:                                     ; preds = %block_40100c, %block_4017b0
  %1284 = phi i64 [ %1530, %block_4017b0 ], [ %.pre95, %block_40100c ]
  %1285 = load i64, i64* %RBP, align 8
  %1286 = add i64 %1285, -4
  %1287 = add i64 %1284, 7
  store i64 %1287, i64* %PC, align 8
  %1288 = inttoptr i64 %1286 to i32*
  %1289 = load i32, i32* %1288, align 4
  %1290 = add i32 %1289, -255
  %1291 = icmp ult i32 %1289, 255
  %1292 = zext i1 %1291 to i8
  store i8 %1292, i8* %18, align 1, !tbaa !2432
  %1293 = and i32 %1290, 255
  %1294 = tail call i32 @llvm.ctpop.i32(i32 %1293) #8
  %1295 = trunc i32 %1294 to i8
  %1296 = and i8 %1295, 1
  %1297 = xor i8 %1296, 1
  store i8 %1297, i8* %25, align 1, !tbaa !2446
  %1298 = xor i32 %1289, 16
  %1299 = xor i32 %1298, %1290
  %1300 = lshr i32 %1299, 4
  %1301 = trunc i32 %1300 to i8
  %1302 = and i8 %1301, 1
  store i8 %1302, i8* %31, align 1, !tbaa !2447
  %1303 = icmp eq i32 %1290, 0
  %1304 = zext i1 %1303 to i8
  store i8 %1304, i8* %34, align 1, !tbaa !2448
  %1305 = lshr i32 %1290, 31
  %1306 = trunc i32 %1305 to i8
  store i8 %1306, i8* %37, align 1, !tbaa !2449
  %1307 = lshr i32 %1289, 31
  %1308 = xor i32 %1305, %1307
  %1309 = add nuw nsw i32 %1308, %1307
  %1310 = icmp eq i32 %1309, 2
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %43, align 1, !tbaa !2450
  %1312 = icmp ne i8 %1306, 0
  %1313 = xor i1 %1312, %1310
  %.v161 = select i1 %1313, i64 13, i64 100
  %1314 = add i64 %1284, %.v161
  store i64 %1314, i64* %57, align 8, !tbaa !2428
  br i1 %1313, label %block_40176c, label %block_4017c3

block_401180:                                     ; preds = %block_4010ff
  %1315 = add i64 %2927, -16
  %1316 = add i64 %2970, 4
  store i64 %1316, i64* %PC, align 8
  %1317 = inttoptr i64 %1315 to i32*
  %1318 = load i32, i32* %1317, align 4
  store i8 0, i8* %18, align 1, !tbaa !2432
  %1319 = and i32 %1318, 255
  %1320 = tail call i32 @llvm.ctpop.i32(i32 %1319) #8
  %1321 = trunc i32 %1320 to i8
  %1322 = and i8 %1321, 1
  %1323 = xor i8 %1322, 1
  store i8 %1323, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2447
  %1324 = icmp eq i32 %1318, 0
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %34, align 1, !tbaa !2448
  %1326 = lshr i32 %1318, 31
  %1327 = trunc i32 %1326 to i8
  store i8 %1327, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %.v137 = select i1 %1324, i64 10, i64 64
  %1328 = add i64 %2970, %.v137
  store i64 %1328, i64* %57, align 8, !tbaa !2428
  br i1 %1324, label %block_40118a, label %block_4011c0

block_400975:                                     ; preds = %block_400963
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %1329 = add i64 %5873, 9
  store i64 %1329, i64* %PC, align 8
  %1330 = load i32, i32* %1535, align 4
  %1331 = sext i32 %1330 to i64
  store i64 %1331, i64* %RCX, align 8, !tbaa !2428
  %1332 = shl nsw i64 %1331, 2
  %1333 = add i64 %1332, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %1334 = add i64 %5873, 16
  store i64 %1334, i64* %PC, align 8
  %1335 = inttoptr i64 %1333 to i32*
  %1336 = load i32, i32* %1335, align 4
  %1337 = zext i32 %1336 to i64
  store i64 %1337, i64* %RDX, align 8, !tbaa !2428
  %1338 = add i64 %1532, -4
  %1339 = add i64 %5873, 19
  store i64 %1339, i64* %PC, align 8
  %1340 = inttoptr i64 %1338 to i32*
  %1341 = load i32, i32* %1340, align 4
  %1342 = zext i32 %1341 to i64
  store i64 %1342, i64* %RSI, align 8, !tbaa !2428
  %1343 = add i64 %5873, 23
  store i64 %1343, i64* %PC, align 8
  %1344 = load i32, i32* %1535, align 4
  %1345 = sext i32 %1341 to i64
  %1346 = sext i32 %1344 to i64
  %1347 = mul nsw i64 %1346, %1345
  %1348 = and i64 %1347, 4294967295
  store i64 %1348, i64* %RSI, align 8, !tbaa !2428
  %1349 = trunc i64 %1347 to i32
  %1350 = add i32 %1349, %1336
  %1351 = zext i32 %1350 to i64
  store i64 %1351, i64* %RDX, align 8, !tbaa !2428
  %1352 = icmp ult i32 %1350, %1336
  %1353 = icmp ult i32 %1350, %1349
  %1354 = or i1 %1352, %1353
  %1355 = zext i1 %1354 to i8
  store i8 %1355, i8* %18, align 1, !tbaa !2432
  %1356 = and i32 %1350, 255
  %1357 = tail call i32 @llvm.ctpop.i32(i32 %1356) #8
  %1358 = trunc i32 %1357 to i8
  %1359 = and i8 %1358, 1
  %1360 = xor i8 %1359, 1
  store i8 %1360, i8* %25, align 1, !tbaa !2446
  %1361 = xor i64 %1347, %1337
  %1362 = trunc i64 %1361 to i32
  %1363 = xor i32 %1362, %1350
  %1364 = lshr i32 %1363, 4
  %1365 = trunc i32 %1364 to i8
  %1366 = and i8 %1365, 1
  store i8 %1366, i8* %31, align 1, !tbaa !2447
  %1367 = icmp eq i32 %1350, 0
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %34, align 1, !tbaa !2448
  %1369 = lshr i32 %1350, 31
  %1370 = trunc i32 %1369 to i8
  store i8 %1370, i8* %37, align 1, !tbaa !2449
  %1371 = lshr i32 %1336, 31
  %1372 = lshr i32 %1349, 31
  %1373 = xor i32 %1369, %1371
  %1374 = xor i32 %1369, %1372
  %1375 = add nuw nsw i32 %1373, %1374
  %1376 = icmp eq i32 %1375, 2
  %1377 = zext i1 %1376 to i8
  store i8 %1377, i8* %43, align 1, !tbaa !2450
  %1378 = add i64 %1532, -2692
  %1379 = add i64 %5873, 31
  store i64 %1379, i64* %PC, align 8
  %1380 = inttoptr i64 %1378 to i32*
  store i32 255, i32* %1380, align 4
  %1381 = load i32, i32* %EDX, align 4
  %1382 = zext i32 %1381 to i64
  %1383 = load i64, i64* %PC, align 8
  store i64 %1382, i64* %RAX, align 8, !tbaa !2428
  %1384 = sext i32 %1381 to i64
  %1385 = lshr i64 %1384, 32
  store i64 %1385, i64* %58, align 8, !tbaa !2428
  %1386 = load i64, i64* %RBP, align 8
  %1387 = add i64 %1386, -2692
  %1388 = add i64 %1383, 9
  store i64 %1388, i64* %PC, align 8
  %1389 = inttoptr i64 %1387 to i32*
  %1390 = load i32, i32* %1389, align 4
  %1391 = zext i32 %1390 to i64
  store i64 %1391, i64* %RSI, align 8, !tbaa !2428
  %1392 = add i64 %1383, 11
  store i64 %1392, i64* %PC, align 8
  %1393 = zext i32 %1381 to i64
  %1394 = sext i32 %1390 to i64
  %1395 = shl nuw i64 %1385, 32
  %1396 = or i64 %1395, %1393
  %1397 = sdiv i64 %1396, %1394
  %1398 = shl i64 %1397, 32
  %1399 = ashr exact i64 %1398, 32
  %1400 = icmp eq i64 %1397, %1399
  br i1 %1400, label %1403, label %1401

; <label>:1401:                                   ; preds = %block_400975
  %1402 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1392, %struct.Memory* %MEMORY.10) #9
  %.pre16 = load i32, i32* %EDX, align 4
  %.pre17 = load i64, i64* %PC, align 8
  %.pre18 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5

; <label>:1403:                                   ; preds = %block_400975
  %1404 = srem i64 %1396, %1394
  %1405 = and i64 %1397, 4294967295
  store i64 %1405, i64* %59, align 8, !tbaa !2428
  %1406 = and i64 %1404, 4294967295
  store i64 %1406, i64* %60, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  store i8 0, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2447
  store i8 0, i8* %34, align 1, !tbaa !2448
  store i8 0, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %1407 = trunc i64 %1404 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5: ; preds = %1403, %1401
  %1408 = phi i64 [ %.pre18, %1401 ], [ %1386, %1403 ]
  %1409 = phi i64 [ %.pre17, %1401 ], [ %1392, %1403 ]
  %1410 = phi i32 [ %.pre16, %1401 ], [ %1407, %1403 ]
  %1411 = phi %struct.Memory* [ %1402, %1401 ], [ %MEMORY.10, %1403 ]
  %1412 = sext i32 %1410 to i64
  store i64 %1412, i64* %RCX, align 8, !tbaa !2428
  %1413 = shl nsw i64 %1412, 2
  %1414 = add i64 %1413, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %1415 = add i64 %1409, 10
  store i64 %1415, i64* %PC, align 8
  %1416 = inttoptr i64 %1414 to i32*
  %1417 = load i32, i32* %1416, align 4
  %1418 = zext i32 %1417 to i64
  store i64 %1418, i64* %RDX, align 8, !tbaa !2428
  %1419 = add i64 %1408, -4
  %1420 = add i64 %1409, 14
  store i64 %1420, i64* %PC, align 8
  %1421 = inttoptr i64 %1419 to i32*
  %1422 = load i32, i32* %1421, align 4
  %1423 = sext i32 %1422 to i64
  store i64 %1423, i64* %RCX, align 8, !tbaa !2428
  %1424 = shl nsw i64 %1423, 2
  %1425 = add i64 %1408, -1488
  %1426 = add i64 %1425, %1424
  %1427 = add i64 %1409, 21
  store i64 %1427, i64* %PC, align 8
  %1428 = inttoptr i64 %1426 to i32*
  %1429 = load i32, i32* %1428, align 4
  %1430 = xor i32 %1429, %1417
  %1431 = zext i32 %1430 to i64
  store i64 %1431, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  %1432 = and i32 %1430, 255
  %1433 = tail call i32 @llvm.ctpop.i32(i32 %1432) #8
  %1434 = trunc i32 %1433 to i8
  %1435 = and i8 %1434, 1
  %1436 = xor i8 %1435, 1
  store i8 %1436, i8* %25, align 1, !tbaa !2446
  %1437 = icmp eq i32 %1430, 0
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %34, align 1, !tbaa !2448
  %1439 = lshr i32 %1430, 31
  %1440 = trunc i32 %1439 to i8
  store i8 %1440, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 0, i8* %31, align 1, !tbaa !2447
  %1441 = add i64 %1409, 28
  store i64 %1441, i64* %PC, align 8
  store i32 %1430, i32* %1428, align 4
  %.pre19 = load i64, i64* %PC, align 8
  %.pre20 = load i64, i64* %RBP, align 8
  br label %block_4009bb

block_40176c:                                     ; preds = %block_40175f
  %1442 = add i64 %1314, 4
  store i64 %1442, i64* %PC, align 8
  %1443 = load i32, i32* %1288, align 4
  %1444 = sext i32 %1443 to i64
  store i64 %1444, i64* %RAX, align 8, !tbaa !2428
  %1445 = shl nsw i64 %1444, 2
  %1446 = add i64 %1445, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %1447 = add i64 %1314, 12
  store i64 %1447, i64* %PC, align 8
  %1448 = inttoptr i64 %1446 to i32*
  %1449 = load i32, i32* %1448, align 4
  %1450 = add i32 %1449, 1
  %1451 = icmp ne i32 %1449, -1
  %1452 = zext i1 %1451 to i8
  store i8 %1452, i8* %18, align 1, !tbaa !2432
  %1453 = and i32 %1450, 255
  %1454 = tail call i32 @llvm.ctpop.i32(i32 %1453) #8
  %1455 = trunc i32 %1454 to i8
  %1456 = and i8 %1455, 1
  %1457 = xor i8 %1456, 1
  store i8 %1457, i8* %25, align 1, !tbaa !2446
  %1458 = xor i32 %1449, 16
  %1459 = xor i32 %1450, %1458
  %1460 = lshr i32 %1459, 4
  %1461 = trunc i32 %1460 to i8
  %1462 = and i8 %1461, 1
  store i8 %1462, i8* %31, align 1, !tbaa !2447
  %1463 = icmp eq i32 %1450, 0
  %1464 = zext i1 %1463 to i8
  store i8 %1464, i8* %34, align 1, !tbaa !2448
  %1465 = lshr i32 %1450, 31
  %1466 = trunc i32 %1465 to i8
  store i8 %1466, i8* %37, align 1, !tbaa !2449
  %1467 = lshr i32 %1449, 31
  %1468 = xor i32 %1467, 1
  %1469 = xor i32 %1465, %1467
  %1470 = add nuw nsw i32 %1469, %1468
  %1471 = icmp eq i32 %1470, 2
  %1472 = zext i1 %1471 to i8
  store i8 %1472, i8* %43, align 1, !tbaa !2450
  %.v162 = select i1 %1463, i64 53, i64 18
  %1473 = add i64 %1314, %.v162
  %1474 = add i64 %1473, 4
  store i64 %1474, i64* %PC, align 8
  %1475 = load i32, i32* %1288, align 4
  %1476 = sext i32 %1475 to i64
  store i64 %1476, i64* %RAX, align 8, !tbaa !2428
  %1477 = shl nsw i64 %1476, 2
  %1478 = add i64 %1477, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  br i1 %1463, label %block_4017a1, label %block_40177e

block_4016e3:                                     ; preds = %block_4011d3
  store i32 0, i32* %3975, align 4
  %.pre93 = load i64, i64* %PC, align 8
  br label %block_4016ea

block_401709:                                     ; preds = %block_4016f7
  %1479 = add i64 %660, 12
  store i64 %1479, i64* %PC, align 8
  %1480 = inttoptr i64 %665 to i32*
  %1481 = load i32, i32* %1480, align 4
  %1482 = sext i32 %1481 to i64
  store i64 %1482, i64* %RAX, align 8, !tbaa !2428
  %1483 = shl nsw i64 %1482, 2
  %1484 = add i64 %1483, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %1485 = add i64 %660, 19
  store i64 %1485, i64* %PC, align 8
  %1486 = inttoptr i64 %1484 to i32*
  %1487 = load i32, i32* %1486, align 4
  %1488 = zext i32 %1487 to i64
  store i64 %1488, i64* %RCX, align 8, !tbaa !2428
  %1489 = add i64 %660, 23
  store i64 %1489, i64* %PC, align 8
  %1490 = load i32, i32* %4816, align 4
  %1491 = sext i32 %1490 to i64
  store i64 %1491, i64* %RAX, align 8, !tbaa !2428
  %1492 = shl nsw i64 %1491, 2
  %1493 = add i64 %1492, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %1494 = add i64 %660, 30
  store i64 %1494, i64* %PC, align 8
  %1495 = inttoptr i64 %1493 to i32*
  store i32 %1487, i32* %1495, align 4
  %1496 = load i64, i64* %PC, align 8
  %1497 = add i64 %1496, 20
  store i64 %1497, i64* %57, align 8, !tbaa !2428
  br label %block_40173b

block_4017b0:                                     ; preds = %block_40177e, %block_4017a1
  %1498 = phi i64 [ %5808, %block_40177e ], [ %.pre96, %block_4017a1 ]
  %1499 = load i64, i64* %RBP, align 8
  %1500 = add i64 %1499, -4
  %1501 = add i64 %1498, 8
  store i64 %1501, i64* %PC, align 8
  %1502 = inttoptr i64 %1500 to i32*
  %1503 = load i32, i32* %1502, align 4
  %1504 = add i32 %1503, 1
  %1505 = zext i32 %1504 to i64
  store i64 %1505, i64* %RAX, align 8, !tbaa !2428
  %1506 = icmp eq i32 %1503, -1
  %1507 = icmp eq i32 %1504, 0
  %1508 = or i1 %1506, %1507
  %1509 = zext i1 %1508 to i8
  store i8 %1509, i8* %18, align 1, !tbaa !2432
  %1510 = and i32 %1504, 255
  %1511 = tail call i32 @llvm.ctpop.i32(i32 %1510) #8
  %1512 = trunc i32 %1511 to i8
  %1513 = and i8 %1512, 1
  %1514 = xor i8 %1513, 1
  store i8 %1514, i8* %25, align 1, !tbaa !2446
  %1515 = xor i32 %1503, %1504
  %1516 = lshr i32 %1515, 4
  %1517 = trunc i32 %1516 to i8
  %1518 = and i8 %1517, 1
  store i8 %1518, i8* %31, align 1, !tbaa !2447
  %1519 = icmp eq i32 %1504, 0
  %1520 = zext i1 %1519 to i8
  store i8 %1520, i8* %34, align 1, !tbaa !2448
  %1521 = lshr i32 %1504, 31
  %1522 = trunc i32 %1521 to i8
  store i8 %1522, i8* %37, align 1, !tbaa !2449
  %1523 = lshr i32 %1503, 31
  %1524 = xor i32 %1521, %1523
  %1525 = add nuw nsw i32 %1524, %1521
  %1526 = icmp eq i32 %1525, 2
  %1527 = zext i1 %1526 to i8
  store i8 %1527, i8* %43, align 1, !tbaa !2450
  %1528 = add i64 %1498, 14
  store i64 %1528, i64* %PC, align 8
  store i32 %1504, i32* %1502, align 4
  %1529 = load i64, i64* %PC, align 8
  %1530 = add i64 %1529, -95
  store i64 %1530, i64* %57, align 8, !tbaa !2428
  br label %block_40175f

block_400956:                                     ; preds = %block_400940, %block_4009bb
  %1531 = phi i64 [ %.pre15, %block_400940 ], [ %628, %block_4009bb ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.15, %block_400940 ], [ %MEMORY.6, %block_4009bb ]
  %1532 = load i64, i64* %RBP, align 8
  %1533 = add i64 %1532, -8
  %1534 = add i64 %1531, 7
  store i64 %1534, i64* %PC, align 8
  %1535 = inttoptr i64 %1533 to i32*
  %1536 = load i32, i32* %1535, align 4
  %1537 = add i32 %1536, -255
  %1538 = icmp ult i32 %1536, 255
  %1539 = zext i1 %1538 to i8
  store i8 %1539, i8* %18, align 1, !tbaa !2432
  %1540 = and i32 %1537, 255
  %1541 = tail call i32 @llvm.ctpop.i32(i32 %1540) #8
  %1542 = trunc i32 %1541 to i8
  %1543 = and i8 %1542, 1
  %1544 = xor i8 %1543, 1
  store i8 %1544, i8* %25, align 1, !tbaa !2446
  %1545 = xor i32 %1536, 16
  %1546 = xor i32 %1545, %1537
  %1547 = lshr i32 %1546, 4
  %1548 = trunc i32 %1547 to i8
  %1549 = and i8 %1548, 1
  store i8 %1549, i8* %31, align 1, !tbaa !2447
  %1550 = icmp eq i32 %1537, 0
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %34, align 1, !tbaa !2448
  %1552 = lshr i32 %1537, 31
  %1553 = trunc i32 %1552 to i8
  store i8 %1553, i8* %37, align 1, !tbaa !2449
  %1554 = lshr i32 %1536, 31
  %1555 = xor i32 %1552, %1554
  %1556 = add nuw nsw i32 %1555, %1554
  %1557 = icmp eq i32 %1556, 2
  %1558 = zext i1 %1557 to i8
  store i8 %1558, i8* %43, align 1, !tbaa !2450
  %1559 = icmp ne i8 %1553, 0
  %1560 = xor i1 %1559, %1557
  %.v110 = select i1 %1560, i64 13, i64 120
  %1561 = add i64 %1531, %.v110
  store i64 %1561, i64* %57, align 8, !tbaa !2428
  br i1 %1560, label %block_400963, label %block_4009ce

block_40174e:                                     ; preds = %block_4016ea
  %1562 = add i64 %4842, 5
  br label %block_401753

block_4015e8:                                     ; preds = %block_4015dc
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %1563 = add i64 %271, 9
  store i64 %1563, i64* %PC, align 8
  %1564 = load i32, i32* %5878, align 4
  %1565 = sext i32 %1564 to i64
  store i64 %1565, i64* %RCX, align 8, !tbaa !2428
  %1566 = shl nsw i64 %1565, 2
  %1567 = add i64 %5875, -1568
  %1568 = add i64 %1567, %1566
  %1569 = add i64 %271, 16
  store i64 %1569, i64* %PC, align 8
  %1570 = inttoptr i64 %1568 to i32*
  %1571 = load i32, i32* %1570, align 4
  %1572 = zext i32 %1571 to i64
  store i64 %1572, i64* %RDX, align 8, !tbaa !2428
  %1573 = add i64 %271, 20
  store i64 %1573, i64* %PC, align 8
  %1574 = load i32, i32* %245, align 4
  %1575 = sext i32 %1574 to i64
  store i64 %1575, i64* %RCX, align 8, !tbaa !2428
  %1576 = shl nsw i64 %1575, 2
  %1577 = add i64 %5875, -1536
  %1578 = add i64 %1577, %1576
  %1579 = add i64 %271, 27
  store i64 %1579, i64* %PC, align 8
  %1580 = inttoptr i64 %1578 to i32*
  %1581 = load i32, i32* %1580, align 4
  %1582 = add i32 %1581, %1571
  %1583 = zext i32 %1582 to i64
  store i64 %1583, i64* %RDX, align 8, !tbaa !2428
  %1584 = icmp ult i32 %1582, %1571
  %1585 = icmp ult i32 %1582, %1581
  %1586 = or i1 %1584, %1585
  %1587 = zext i1 %1586 to i8
  store i8 %1587, i8* %18, align 1, !tbaa !2432
  %1588 = and i32 %1582, 255
  %1589 = tail call i32 @llvm.ctpop.i32(i32 %1588) #8
  %1590 = trunc i32 %1589 to i8
  %1591 = and i8 %1590, 1
  %1592 = xor i8 %1591, 1
  store i8 %1592, i8* %25, align 1, !tbaa !2446
  %1593 = xor i32 %1581, %1571
  %1594 = xor i32 %1593, %1582
  %1595 = lshr i32 %1594, 4
  %1596 = trunc i32 %1595 to i8
  %1597 = and i8 %1596, 1
  store i8 %1597, i8* %31, align 1, !tbaa !2447
  %1598 = icmp eq i32 %1582, 0
  %1599 = zext i1 %1598 to i8
  store i8 %1599, i8* %34, align 1, !tbaa !2448
  %1600 = lshr i32 %1582, 31
  %1601 = trunc i32 %1600 to i8
  store i8 %1601, i8* %37, align 1, !tbaa !2449
  %1602 = lshr i32 %1571, 31
  %1603 = lshr i32 %1581, 31
  %1604 = xor i32 %1600, %1602
  %1605 = xor i32 %1600, %1603
  %1606 = add nuw nsw i32 %1604, %1605
  %1607 = icmp eq i32 %1606, 2
  %1608 = zext i1 %1607 to i8
  store i8 %1608, i8* %43, align 1, !tbaa !2450
  %1609 = add i64 %5875, -2728
  %1610 = add i64 %271, 33
  store i64 %1610, i64* %PC, align 8
  %1611 = inttoptr i64 %1609 to i32*
  store i32 255, i32* %1611, align 4
  %1612 = load i32, i32* %EDX, align 4
  %1613 = zext i32 %1612 to i64
  %1614 = load i64, i64* %PC, align 8
  store i64 %1613, i64* %RAX, align 8, !tbaa !2428
  %1615 = sext i32 %1612 to i64
  %1616 = lshr i64 %1615, 32
  store i64 %1616, i64* %58, align 8, !tbaa !2428
  %1617 = load i64, i64* %RBP, align 8
  %1618 = add i64 %1617, -2728
  %1619 = add i64 %1614, 9
  store i64 %1619, i64* %PC, align 8
  %1620 = inttoptr i64 %1618 to i32*
  %1621 = load i32, i32* %1620, align 4
  %1622 = zext i32 %1621 to i64
  store i64 %1622, i64* %RSI, align 8, !tbaa !2428
  %1623 = add i64 %1614, 11
  store i64 %1623, i64* %PC, align 8
  %1624 = zext i32 %1612 to i64
  %1625 = sext i32 %1621 to i64
  %1626 = shl nuw i64 %1616, 32
  %1627 = or i64 %1626, %1624
  %1628 = sdiv i64 %1627, %1625
  %1629 = shl i64 %1628, 32
  %1630 = ashr exact i64 %1629, 32
  %1631 = icmp eq i64 %1628, %1630
  br i1 %1631, label %1634, label %1632

; <label>:1632:                                   ; preds = %block_4015e8
  %1633 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1623, %struct.Memory* %MEMORY.51) #9
  %.pre81 = load i32, i32* %EDX, align 4
  %.pre82 = load i64, i64* %PC, align 8
  %.pre83 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4

; <label>:1634:                                   ; preds = %block_4015e8
  %1635 = srem i64 %1627, %1625
  %1636 = and i64 %1628, 4294967295
  store i64 %1636, i64* %59, align 8, !tbaa !2428
  %1637 = and i64 %1635, 4294967295
  store i64 %1637, i64* %60, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  store i8 0, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2447
  store i8 0, i8* %34, align 1, !tbaa !2448
  store i8 0, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %1638 = trunc i64 %1635 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4: ; preds = %1634, %1632
  %1639 = phi i64 [ %.pre83, %1632 ], [ %1617, %1634 ]
  %1640 = phi i64 [ %.pre82, %1632 ], [ %1623, %1634 ]
  %1641 = phi i32 [ %.pre81, %1632 ], [ %1638, %1634 ]
  %1642 = phi %struct.Memory* [ %1633, %1632 ], [ %MEMORY.51, %1634 ]
  %1643 = sext i32 %1641 to i64
  store i64 %1643, i64* %RCX, align 8, !tbaa !2428
  %1644 = shl nsw i64 %1643, 2
  %1645 = add i64 %1644, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %1646 = add i64 %1640, 10
  store i64 %1646, i64* %PC, align 8
  %1647 = inttoptr i64 %1645 to i32*
  %1648 = load i32, i32* %1647, align 4
  %1649 = xor i32 %1648, 1
  %1650 = zext i32 %1649 to i64
  store i64 %1650, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  %1651 = and i32 %1649, 255
  %1652 = tail call i32 @llvm.ctpop.i32(i32 %1651) #8
  %1653 = trunc i32 %1652 to i8
  %1654 = and i8 %1653, 1
  %1655 = xor i8 %1654, 1
  store i8 %1655, i8* %25, align 1, !tbaa !2446
  %1656 = icmp eq i32 %1649, 0
  %1657 = zext i1 %1656 to i8
  store i8 %1657, i8* %34, align 1, !tbaa !2448
  %1658 = lshr i32 %1648, 31
  %1659 = trunc i32 %1658 to i8
  store i8 %1659, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 0, i8* %31, align 1, !tbaa !2447
  %1660 = sext i32 %1649 to i64
  store i64 %1660, i64* %RCX, align 8, !tbaa !2428
  %1661 = shl nsw i64 %1660, 2
  %1662 = add i64 %1661, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %1663 = add i64 %1640, 23
  store i64 %1663, i64* %PC, align 8
  %1664 = inttoptr i64 %1662 to i32*
  %1665 = load i32, i32* %1664, align 4
  %1666 = zext i32 %1665 to i64
  store i64 %1666, i64* %RDX, align 8, !tbaa !2428
  %1667 = add i64 %1639, -16
  %1668 = add i64 %1640, 26
  store i64 %1668, i64* %PC, align 8
  %1669 = inttoptr i64 %1667 to i32*
  %1670 = load i32, i32* %1669, align 4
  %1671 = add i32 %1670, %1665
  %1672 = zext i32 %1671 to i64
  store i64 %1672, i64* %RDX, align 8, !tbaa !2428
  %1673 = icmp ult i32 %1671, %1665
  %1674 = icmp ult i32 %1671, %1670
  %1675 = or i1 %1673, %1674
  %1676 = zext i1 %1675 to i8
  store i8 %1676, i8* %18, align 1, !tbaa !2432
  %1677 = and i32 %1671, 255
  %1678 = tail call i32 @llvm.ctpop.i32(i32 %1677) #8
  %1679 = trunc i32 %1678 to i8
  %1680 = and i8 %1679, 1
  %1681 = xor i8 %1680, 1
  store i8 %1681, i8* %25, align 1, !tbaa !2446
  %1682 = xor i32 %1670, %1665
  %1683 = xor i32 %1682, %1671
  %1684 = lshr i32 %1683, 4
  %1685 = trunc i32 %1684 to i8
  %1686 = and i8 %1685, 1
  store i8 %1686, i8* %31, align 1, !tbaa !2447
  %1687 = icmp eq i32 %1671, 0
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %34, align 1, !tbaa !2448
  %1689 = lshr i32 %1671, 31
  %1690 = trunc i32 %1689 to i8
  store i8 %1690, i8* %37, align 1, !tbaa !2449
  %1691 = lshr i32 %1665, 31
  %1692 = lshr i32 %1670, 31
  %1693 = xor i32 %1689, %1691
  %1694 = xor i32 %1689, %1692
  %1695 = add nuw nsw i32 %1693, %1694
  %1696 = icmp eq i32 %1695, 2
  %1697 = zext i1 %1696 to i8
  store i8 %1697, i8* %43, align 1, !tbaa !2450
  %1698 = add i64 %1640, 29
  store i64 %1698, i64* %PC, align 8
  store i32 %1671, i32* %1669, align 4
  %.pre84 = load i64, i64* %PC, align 8
  %.pre85 = load i64, i64* %RBP, align 8
  br label %block_401631

block_40134c:                                     ; preds = %block_401237, %block_401347
  %.sink102 = phi i64 [ %5371, %block_401237 ], [ %1734, %block_401347 ]
  %1699 = load i64, i64* %RBP, align 8
  %1700 = add i64 %1699, -8
  %1701 = add i64 %.sink102, 7
  store i64 %1701, i64* %PC, align 8
  %1702 = inttoptr i64 %1700 to i32*
  store i32 1, i32* %1702, align 4
  %.pre66 = load i64, i64* %PC, align 8
  br label %block_401353

block_401437:                                     ; preds = %block_401497, %block_401430
  %1703 = phi i64 [ %.pre71, %block_401430 ], [ %5979, %block_401497 ]
  %1704 = load i64, i64* %RBP, align 8
  %1705 = add i64 %1704, -4
  %1706 = add i64 %1703, 7
  store i64 %1706, i64* %PC, align 8
  %1707 = inttoptr i64 %1705 to i32*
  %1708 = load i32, i32* %1707, align 4
  %1709 = add i32 %1708, -255
  %1710 = icmp ult i32 %1708, 255
  %1711 = zext i1 %1710 to i8
  store i8 %1711, i8* %18, align 1, !tbaa !2432
  %1712 = and i32 %1709, 255
  %1713 = tail call i32 @llvm.ctpop.i32(i32 %1712) #8
  %1714 = trunc i32 %1713 to i8
  %1715 = and i8 %1714, 1
  %1716 = xor i8 %1715, 1
  store i8 %1716, i8* %25, align 1, !tbaa !2446
  %1717 = xor i32 %1708, 16
  %1718 = xor i32 %1717, %1709
  %1719 = lshr i32 %1718, 4
  %1720 = trunc i32 %1719 to i8
  %1721 = and i8 %1720, 1
  store i8 %1721, i8* %31, align 1, !tbaa !2447
  %1722 = icmp eq i32 %1709, 0
  %1723 = zext i1 %1722 to i8
  store i8 %1723, i8* %34, align 1, !tbaa !2448
  %1724 = lshr i32 %1709, 31
  %1725 = trunc i32 %1724 to i8
  store i8 %1725, i8* %37, align 1, !tbaa !2449
  %1726 = lshr i32 %1708, 31
  %1727 = xor i32 %1724, %1726
  %1728 = add nuw nsw i32 %1727, %1726
  %1729 = icmp eq i32 %1728, 2
  %1730 = zext i1 %1729 to i8
  store i8 %1730, i8* %43, align 1, !tbaa !2450
  %1731 = icmp ne i8 %1725, 0
  %1732 = xor i1 %1731, %1729
  %.v150 = select i1 %1732, i64 13, i64 115
  %1733 = add i64 %1703, %.v150
  store i64 %1733, i64* %57, align 8, !tbaa !2428
  br i1 %1732, label %block_401444, label %block_4014aa

block_401347:                                     ; preds = %block_4012ad, %block_401342
  %.sink106 = phi i64 [ %3440, %block_4012ad ], [ %1871, %block_401342 ]
  store i64 %.sink106, i64* %57, align 8, !tbaa !2428
  %1734 = add i64 %.sink106, 5
  br label %block_40134c

block_400940:                                     ; preds = %block_400936
  %1735 = add i64 %1812, 4
  store i64 %1735, i64* %PC, align 8
  %1736 = load i32, i32* %1786, align 4
  %1737 = sext i32 %1736 to i64
  store i64 %1737, i64* %RAX, align 8, !tbaa !2428
  %1738 = shl nsw i64 %1737, 2
  %1739 = add i64 %1783, -1488
  %1740 = add i64 %1739, %1738
  %1741 = add i64 %1812, 15
  store i64 %1741, i64* %PC, align 8
  %1742 = inttoptr i64 %1740 to i32*
  store i32 0, i32* %1742, align 4
  %1743 = load i64, i64* %RBP, align 8
  %1744 = add i64 %1743, -8
  %1745 = load i64, i64* %PC, align 8
  %1746 = add i64 %1745, 7
  store i64 %1746, i64* %PC, align 8
  %1747 = inttoptr i64 %1744 to i32*
  store i32 0, i32* %1747, align 4
  %.pre15 = load i64, i64* %PC, align 8
  br label %block_400956

block_400b7d:                                     ; preds = %block_400af6
  %1748 = add i64 %5711, 701
  br label %block_400e3a

block_40173b:                                     ; preds = %block_40172c, %block_401709
  %1749 = phi i64 [ %.pre94, %block_40172c ], [ %1497, %block_401709 ]
  %1750 = load i64, i64* %RBP, align 8
  %1751 = add i64 %1750, -4
  %1752 = add i64 %1749, 8
  store i64 %1752, i64* %PC, align 8
  %1753 = inttoptr i64 %1751 to i32*
  %1754 = load i32, i32* %1753, align 4
  %1755 = add i32 %1754, 1
  %1756 = zext i32 %1755 to i64
  store i64 %1756, i64* %RAX, align 8, !tbaa !2428
  %1757 = icmp eq i32 %1754, -1
  %1758 = icmp eq i32 %1755, 0
  %1759 = or i1 %1757, %1758
  %1760 = zext i1 %1759 to i8
  store i8 %1760, i8* %18, align 1, !tbaa !2432
  %1761 = and i32 %1755, 255
  %1762 = tail call i32 @llvm.ctpop.i32(i32 %1761) #8
  %1763 = trunc i32 %1762 to i8
  %1764 = and i8 %1763, 1
  %1765 = xor i8 %1764, 1
  store i8 %1765, i8* %25, align 1, !tbaa !2446
  %1766 = xor i32 %1754, %1755
  %1767 = lshr i32 %1766, 4
  %1768 = trunc i32 %1767 to i8
  %1769 = and i8 %1768, 1
  store i8 %1769, i8* %31, align 1, !tbaa !2447
  %1770 = icmp eq i32 %1755, 0
  %1771 = zext i1 %1770 to i8
  store i8 %1771, i8* %34, align 1, !tbaa !2448
  %1772 = lshr i32 %1755, 31
  %1773 = trunc i32 %1772 to i8
  store i8 %1773, i8* %37, align 1, !tbaa !2449
  %1774 = lshr i32 %1754, 31
  %1775 = xor i32 %1772, %1774
  %1776 = add nuw nsw i32 %1775, %1772
  %1777 = icmp eq i32 %1776, 2
  %1778 = zext i1 %1777 to i8
  store i8 %1778, i8* %43, align 1, !tbaa !2450
  %1779 = add i64 %1749, 14
  store i64 %1779, i64* %PC, align 8
  store i32 %1755, i32* %1753, align 4
  %1780 = load i64, i64* %PC, align 8
  %1781 = add i64 %1780, -95
  store i64 %1781, i64* %57, align 8, !tbaa !2428
  br label %block_4016ea

block_400936:                                     ; preds = %block_4009ea, %block_400910
  %1782 = phi i64 [ %.pre, %block_400910 ], [ %369, %block_4009ea ]
  %MEMORY.15 = phi %struct.Memory* [ %2, %block_400910 ], [ %MEMORY.10, %block_4009ea ]
  %1783 = load i64, i64* %RBP, align 8
  %1784 = add i64 %1783, -4
  %1785 = add i64 %1782, 4
  store i64 %1785, i64* %PC, align 8
  %1786 = inttoptr i64 %1784 to i32*
  %1787 = load i32, i32* %1786, align 4
  %1788 = add i32 %1787, -16
  %1789 = icmp ult i32 %1787, 16
  %1790 = zext i1 %1789 to i8
  store i8 %1790, i8* %18, align 1, !tbaa !2432
  %1791 = and i32 %1788, 255
  %1792 = tail call i32 @llvm.ctpop.i32(i32 %1791) #8
  %1793 = trunc i32 %1792 to i8
  %1794 = and i8 %1793, 1
  %1795 = xor i8 %1794, 1
  store i8 %1795, i8* %25, align 1, !tbaa !2446
  %1796 = xor i32 %1787, 16
  %1797 = xor i32 %1796, %1788
  %1798 = lshr i32 %1797, 4
  %1799 = trunc i32 %1798 to i8
  %1800 = and i8 %1799, 1
  store i8 %1800, i8* %31, align 1, !tbaa !2447
  %1801 = icmp eq i32 %1788, 0
  %1802 = zext i1 %1801 to i8
  store i8 %1802, i8* %34, align 1, !tbaa !2448
  %1803 = lshr i32 %1788, 31
  %1804 = trunc i32 %1803 to i8
  store i8 %1804, i8* %37, align 1, !tbaa !2449
  %1805 = lshr i32 %1787, 31
  %1806 = xor i32 %1803, %1805
  %1807 = add nuw nsw i32 %1806, %1805
  %1808 = icmp eq i32 %1807, 2
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %43, align 1, !tbaa !2450
  %1810 = icmp ne i8 %1804, 0
  %1811 = xor i1 %1810, %1808
  %.demorgan = or i1 %1801, %1811
  %.v = select i1 %.demorgan, i64 10, i64 224
  %1812 = add i64 %1782, %.v
  store i64 %1812, i64* %57, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400940, label %block_400a16

block_4011f1:                                     ; preds = %block_401404, %block_4011ea
  %1813 = phi i64 [ %.pre61, %block_4011ea ], [ %6322, %block_401404 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.37, %block_4011ea ], [ %MEMORY.54, %block_401404 ]
  %1814 = load i64, i64* %RBP, align 8
  %1815 = add i64 %1814, -4
  %1816 = add i64 %1813, 3
  store i64 %1816, i64* %PC, align 8
  %1817 = inttoptr i64 %1815 to i32*
  %1818 = load i32, i32* %1817, align 4
  %1819 = zext i32 %1818 to i64
  store i64 %1819, i64* %RAX, align 8, !tbaa !2428
  %1820 = add i64 %1814, -12
  %1821 = add i64 %1813, 7
  store i64 %1821, i64* %PC, align 8
  %1822 = inttoptr i64 %1820 to i32*
  %1823 = load i32, i32* %1822, align 4
  %1824 = sext i32 %1823 to i64
  store i64 %1824, i64* %RCX, align 8, !tbaa !2428
  %1825 = shl nsw i64 %1824, 2
  %1826 = add i64 %1814, -1328
  %1827 = add i64 %1826, %1825
  %1828 = add i64 %1813, 14
  store i64 %1828, i64* %PC, align 8
  %1829 = inttoptr i64 %1827 to i32*
  %1830 = load i32, i32* %1829, align 4
  %1831 = sub i32 %1818, %1830
  %1832 = icmp ult i32 %1818, %1830
  %1833 = zext i1 %1832 to i8
  store i8 %1833, i8* %18, align 1, !tbaa !2432
  %1834 = and i32 %1831, 255
  %1835 = tail call i32 @llvm.ctpop.i32(i32 %1834) #8
  %1836 = trunc i32 %1835 to i8
  %1837 = and i8 %1836, 1
  %1838 = xor i8 %1837, 1
  store i8 %1838, i8* %25, align 1, !tbaa !2446
  %1839 = xor i32 %1830, %1818
  %1840 = xor i32 %1839, %1831
  %1841 = lshr i32 %1840, 4
  %1842 = trunc i32 %1841 to i8
  %1843 = and i8 %1842, 1
  store i8 %1843, i8* %31, align 1, !tbaa !2447
  %1844 = icmp eq i32 %1831, 0
  %1845 = zext i1 %1844 to i8
  store i8 %1845, i8* %34, align 1, !tbaa !2448
  %1846 = lshr i32 %1831, 31
  %1847 = trunc i32 %1846 to i8
  store i8 %1847, i8* %37, align 1, !tbaa !2449
  %1848 = lshr i32 %1818, 31
  %1849 = lshr i32 %1830, 31
  %1850 = xor i32 %1849, %1848
  %1851 = xor i32 %1846, %1848
  %1852 = add nuw nsw i32 %1851, %1850
  %1853 = icmp eq i32 %1852, 2
  %1854 = zext i1 %1853 to i8
  store i8 %1854, i8* %43, align 1, !tbaa !2450
  %1855 = icmp ne i8 %1847, 0
  %1856 = xor i1 %1855, %1853
  %.demorgan139 = or i1 %1844, %1856
  %.v140 = select i1 %.demorgan139, i64 20, i64 575
  %1857 = add i64 %1813, %.v140
  store i64 %1857, i64* %57, align 8, !tbaa !2428
  br i1 %.demorgan139, label %block_401205, label %block_401430

block_401333:                                     ; preds = %block_4012d0, %block_4012e2
  %1858 = phi i64 [ %3216, %block_4012d0 ], [ %5571, %block_4012e2 ]
  %1859 = phi i64 [ %3181, %block_4012d0 ], [ %.pre64, %block_4012e2 ]
  %1860 = add i64 %1859, -4
  %1861 = add i64 %1858, 4
  store i64 %1861, i64* %PC, align 8
  %1862 = inttoptr i64 %1860 to i32*
  %1863 = load i32, i32* %1862, align 4
  %1864 = sext i32 %1863 to i64
  store i64 %1864, i64* %RAX, align 8, !tbaa !2428
  %1865 = shl nsw i64 %1864, 2
  %1866 = add i64 %1859, -1616
  %1867 = add i64 %1866, %1865
  %1868 = add i64 %1858, 15
  store i64 %1868, i64* %PC, align 8
  %1869 = inttoptr i64 %1867 to i32*
  store i32 0, i32* %1869, align 4
  %.pre65 = load i64, i64* %PC, align 8
  br label %block_401342

block_401342:                                     ; preds = %block_401302, %block_401333
  %1870 = phi i64 [ %2558, %block_401302 ], [ %.pre65, %block_401333 ]
  %1871 = add i64 %1870, 5
  br label %block_401347

block_40172c:                                     ; preds = %block_4016f7
  %1872 = add i64 %660, 15
  store i64 %1872, i64* %PC, align 8
  %1873 = inttoptr i64 %665 to i32*
  store i32 0, i32* %1873, align 4
  %.pre94 = load i64, i64* %PC, align 8
  br label %block_40173b

block_4014e3:                                     ; preds = %block_40155f, %block_4014c5
  %1874 = phi i64 [ %.pre74, %block_4014c5 ], [ %5789, %block_40155f ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.45, %block_4014c5 ], [ %MEMORY.49, %block_40155f ]
  %1875 = load i64, i64* %RBP, align 8
  %1876 = add i64 %1875, -8
  %1877 = add i64 %1874, 3
  store i64 %1877, i64* %PC, align 8
  %1878 = inttoptr i64 %1876 to i32*
  %1879 = load i32, i32* %1878, align 4
  %1880 = zext i32 %1879 to i64
  store i64 %1880, i64* %RAX, align 8, !tbaa !2428
  %1881 = add i64 %1875, -12
  %1882 = add i64 %1874, 7
  store i64 %1882, i64* %PC, align 8
  %1883 = inttoptr i64 %1881 to i32*
  %1884 = load i32, i32* %1883, align 4
  %1885 = sext i32 %1884 to i64
  store i64 %1885, i64* %RCX, align 8, !tbaa !2428
  %1886 = shl nsw i64 %1885, 2
  %1887 = add i64 %1875, -1328
  %1888 = add i64 %1887, %1886
  %1889 = add i64 %1874, 14
  store i64 %1889, i64* %PC, align 8
  %1890 = inttoptr i64 %1888 to i32*
  %1891 = load i32, i32* %1890, align 4
  %1892 = sub i32 %1879, %1891
  %1893 = icmp ult i32 %1879, %1891
  %1894 = zext i1 %1893 to i8
  store i8 %1894, i8* %18, align 1, !tbaa !2432
  %1895 = and i32 %1892, 255
  %1896 = tail call i32 @llvm.ctpop.i32(i32 %1895) #8
  %1897 = trunc i32 %1896 to i8
  %1898 = and i8 %1897, 1
  %1899 = xor i8 %1898, 1
  store i8 %1899, i8* %25, align 1, !tbaa !2446
  %1900 = xor i32 %1891, %1879
  %1901 = xor i32 %1900, %1892
  %1902 = lshr i32 %1901, 4
  %1903 = trunc i32 %1902 to i8
  %1904 = and i8 %1903, 1
  store i8 %1904, i8* %31, align 1, !tbaa !2447
  %1905 = icmp eq i32 %1892, 0
  %1906 = zext i1 %1905 to i8
  store i8 %1906, i8* %34, align 1, !tbaa !2448
  %1907 = lshr i32 %1892, 31
  %1908 = trunc i32 %1907 to i8
  store i8 %1908, i8* %37, align 1, !tbaa !2449
  %1909 = lshr i32 %1879, 31
  %1910 = lshr i32 %1891, 31
  %1911 = xor i32 %1910, %1909
  %1912 = xor i32 %1907, %1909
  %1913 = add nuw nsw i32 %1912, %1911
  %1914 = icmp eq i32 %1913, 2
  %1915 = zext i1 %1914 to i8
  store i8 %1915, i8* %43, align 1, !tbaa !2450
  %1916 = icmp ne i8 %1908, 0
  %1917 = xor i1 %1916, %1914
  %.demorgan153 = or i1 %1905, %1917
  %.v154 = select i1 %.demorgan153, i64 20, i64 143
  %1918 = add i64 %1874, %.v154
  store i64 %1918, i64* %57, align 8, !tbaa !2428
  br i1 %.demorgan153, label %block_4014f7, label %block_401572

block_401631:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4, %block_4015dc
  %1919 = phi i64 [ %5875, %block_4015dc ], [ %.pre85, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4 ]
  %1920 = phi i64 [ %271, %block_4015dc ], [ %.pre84, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4 ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.51, %block_4015dc ], [ %1642, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4 ]
  %1921 = add i64 %1919, -8
  %1922 = add i64 %1920, 8
  store i64 %1922, i64* %PC, align 8
  %1923 = inttoptr i64 %1921 to i32*
  %1924 = load i32, i32* %1923, align 4
  %1925 = add i32 %1924, 1
  %1926 = zext i32 %1925 to i64
  store i64 %1926, i64* %RAX, align 8, !tbaa !2428
  %1927 = icmp eq i32 %1924, -1
  %1928 = icmp eq i32 %1925, 0
  %1929 = or i1 %1927, %1928
  %1930 = zext i1 %1929 to i8
  store i8 %1930, i8* %18, align 1, !tbaa !2432
  %1931 = and i32 %1925, 255
  %1932 = tail call i32 @llvm.ctpop.i32(i32 %1931) #8
  %1933 = trunc i32 %1932 to i8
  %1934 = and i8 %1933, 1
  %1935 = xor i8 %1934, 1
  store i8 %1935, i8* %25, align 1, !tbaa !2446
  %1936 = xor i32 %1924, %1925
  %1937 = lshr i32 %1936, 4
  %1938 = trunc i32 %1937 to i8
  %1939 = and i8 %1938, 1
  store i8 %1939, i8* %31, align 1, !tbaa !2447
  %1940 = icmp eq i32 %1925, 0
  %1941 = zext i1 %1940 to i8
  store i8 %1941, i8* %34, align 1, !tbaa !2448
  %1942 = lshr i32 %1925, 31
  %1943 = trunc i32 %1942 to i8
  store i8 %1943, i8* %37, align 1, !tbaa !2449
  %1944 = lshr i32 %1924, 31
  %1945 = xor i32 %1942, %1944
  %1946 = add nuw nsw i32 %1945, %1942
  %1947 = icmp eq i32 %1946, 2
  %1948 = zext i1 %1947 to i8
  store i8 %1948, i8* %43, align 1, !tbaa !2450
  %1949 = add i64 %1920, 14
  store i64 %1949, i64* %PC, align 8
  store i32 %1925, i32* %1923, align 4
  %1950 = load i64, i64* %PC, align 8
  %1951 = add i64 %1950, -119
  store i64 %1951, i64* %57, align 8, !tbaa !2428
  br label %block_4015c8

block_401125:                                     ; preds = %block_401113
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %1952 = add i64 %2334, 9
  store i64 %1952, i64* %PC, align 8
  %1953 = load i32, i32* %2930, align 4
  %1954 = sext i32 %1953 to i64
  store i64 %1954, i64* %RCX, align 8, !tbaa !2428
  %1955 = shl nsw i64 %1954, 2
  %1956 = add i64 %2306, %1955
  %1957 = add i64 %2334, 16
  store i64 %1957, i64* %PC, align 8
  %1958 = inttoptr i64 %1956 to i32*
  %1959 = load i32, i32* %1958, align 4
  %1960 = zext i32 %1959 to i64
  store i64 %1960, i64* %RDX, align 8, !tbaa !2428
  %1961 = add i64 %2334, 19
  store i64 %1961, i64* %PC, align 8
  %1962 = load i32, i32* %2930, align 4
  %1963 = add i32 %1962, %1959
  %1964 = zext i32 %1963 to i64
  store i64 %1964, i64* %RDX, align 8, !tbaa !2428
  %1965 = icmp ult i32 %1963, %1959
  %1966 = icmp ult i32 %1963, %1962
  %1967 = or i1 %1965, %1966
  %1968 = zext i1 %1967 to i8
  store i8 %1968, i8* %18, align 1, !tbaa !2432
  %1969 = and i32 %1963, 255
  %1970 = tail call i32 @llvm.ctpop.i32(i32 %1969) #8
  %1971 = trunc i32 %1970 to i8
  %1972 = and i8 %1971, 1
  %1973 = xor i8 %1972, 1
  store i8 %1973, i8* %25, align 1, !tbaa !2446
  %1974 = xor i32 %1962, %1959
  %1975 = xor i32 %1974, %1963
  %1976 = lshr i32 %1975, 4
  %1977 = trunc i32 %1976 to i8
  %1978 = and i8 %1977, 1
  store i8 %1978, i8* %31, align 1, !tbaa !2447
  %1979 = icmp eq i32 %1963, 0
  %1980 = zext i1 %1979 to i8
  store i8 %1980, i8* %34, align 1, !tbaa !2448
  %1981 = lshr i32 %1963, 31
  %1982 = trunc i32 %1981 to i8
  store i8 %1982, i8* %37, align 1, !tbaa !2449
  %1983 = lshr i32 %1959, 31
  %1984 = lshr i32 %1962, 31
  %1985 = xor i32 %1981, %1983
  %1986 = xor i32 %1981, %1984
  %1987 = add nuw nsw i32 %1985, %1986
  %1988 = icmp eq i32 %1987, 2
  %1989 = zext i1 %1988 to i8
  store i8 %1989, i8* %43, align 1, !tbaa !2450
  %1990 = add i64 %2927, -2716
  %1991 = add i64 %2334, 25
  store i64 %1991, i64* %PC, align 8
  %1992 = inttoptr i64 %1990 to i32*
  store i32 255, i32* %1992, align 4
  %1993 = load i32, i32* %EDX, align 4
  %1994 = zext i32 %1993 to i64
  %1995 = load i64, i64* %PC, align 8
  store i64 %1994, i64* %RAX, align 8, !tbaa !2428
  %1996 = sext i32 %1993 to i64
  %1997 = lshr i64 %1996, 32
  store i64 %1997, i64* %58, align 8, !tbaa !2428
  %1998 = load i64, i64* %RBP, align 8
  %1999 = add i64 %1998, -2716
  %2000 = add i64 %1995, 9
  store i64 %2000, i64* %PC, align 8
  %2001 = inttoptr i64 %1999 to i32*
  %2002 = load i32, i32* %2001, align 4
  %2003 = zext i32 %2002 to i64
  store i64 %2003, i64* %RSI, align 8, !tbaa !2428
  %2004 = add i64 %1995, 11
  store i64 %2004, i64* %PC, align 8
  %2005 = zext i32 %1993 to i64
  %2006 = sext i32 %2002 to i64
  %2007 = shl nuw i64 %1997, 32
  %2008 = or i64 %2007, %2005
  %2009 = sdiv i64 %2008, %2006
  %2010 = shl i64 %2009, 32
  %2011 = ashr exact i64 %2010, 32
  %2012 = icmp eq i64 %2009, %2011
  br i1 %2012, label %2015, label %2013

; <label>:2013:                                   ; preds = %block_401125
  %2014 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2004, %struct.Memory* %MEMORY.23) #9
  %.pre54 = load i64, i64* %RBP, align 8
  %.pre55 = load i64, i64* %PC, align 8
  %.pre56 = load i32, i32* %EDX, align 4
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3

; <label>:2015:                                   ; preds = %block_401125
  %2016 = srem i64 %2008, %2006
  %2017 = and i64 %2009, 4294967295
  store i64 %2017, i64* %59, align 8, !tbaa !2428
  %2018 = and i64 %2016, 4294967295
  store i64 %2018, i64* %60, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  store i8 0, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2447
  store i8 0, i8* %34, align 1, !tbaa !2448
  store i8 0, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %2019 = trunc i64 %2016 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3: ; preds = %2015, %2013
  %2020 = phi i32 [ %.pre56, %2013 ], [ %2019, %2015 ]
  %2021 = phi i64 [ %.pre55, %2013 ], [ %2004, %2015 ]
  %2022 = phi i64 [ %.pre54, %2013 ], [ %1998, %2015 ]
  %2023 = phi %struct.Memory* [ %2014, %2013 ], [ %MEMORY.23, %2015 ]
  %2024 = add i64 %2022, -8
  %2025 = add i64 %2021, 4
  store i64 %2025, i64* %PC, align 8
  %2026 = inttoptr i64 %2024 to i32*
  %2027 = load i32, i32* %2026, align 4
  %2028 = sext i32 %2027 to i64
  store i64 %2028, i64* %RCX, align 8, !tbaa !2428
  %2029 = shl nsw i64 %2028, 2
  %2030 = add i64 %2022, -2688
  %2031 = add i64 %2030, %2029
  %2032 = add i64 %2021, 11
  store i64 %2032, i64* %PC, align 8
  %2033 = inttoptr i64 %2031 to i32*
  store i32 %2020, i32* %2033, align 4
  %2034 = load i64, i64* %RBP, align 8
  %2035 = add i64 %2034, -8
  %2036 = load i64, i64* %PC, align 8
  %2037 = add i64 %2036, 4
  store i64 %2037, i64* %PC, align 8
  %2038 = inttoptr i64 %2035 to i32*
  %2039 = load i32, i32* %2038, align 4
  %2040 = sext i32 %2039 to i64
  store i64 %2040, i64* %RCX, align 8, !tbaa !2428
  %2041 = shl nsw i64 %2040, 2
  %2042 = add i64 %2034, -2688
  %2043 = add i64 %2042, %2041
  %2044 = add i64 %2036, 12
  store i64 %2044, i64* %PC, align 8
  %2045 = inttoptr i64 %2043 to i32*
  %2046 = load i32, i32* %2045, align 4
  %2047 = sext i32 %2046 to i64
  store i64 %2047, i64* %RCX, align 8, !tbaa !2428
  %2048 = shl nsw i64 %2047, 2
  %2049 = add i64 %2048, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %2050 = add i64 %2036, 19
  store i64 %2050, i64* %PC, align 8
  %2051 = inttoptr i64 %2049 to i32*
  %2052 = load i32, i32* %2051, align 4
  %2053 = zext i32 %2052 to i64
  store i64 %2053, i64* %RDX, align 8, !tbaa !2428
  %2054 = add i64 %2034, -16
  %2055 = add i64 %2036, 22
  store i64 %2055, i64* %PC, align 8
  %2056 = inttoptr i64 %2054 to i32*
  %2057 = load i32, i32* %2056, align 4
  %2058 = xor i32 %2057, %2052
  %2059 = zext i32 %2058 to i64
  store i64 %2059, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  %2060 = and i32 %2058, 255
  %2061 = tail call i32 @llvm.ctpop.i32(i32 %2060) #8
  %2062 = trunc i32 %2061 to i8
  %2063 = and i8 %2062, 1
  %2064 = xor i8 %2063, 1
  store i8 %2064, i8* %25, align 1, !tbaa !2446
  %2065 = icmp eq i32 %2058, 0
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %34, align 1, !tbaa !2448
  %2067 = lshr i32 %2058, 31
  %2068 = trunc i32 %2067 to i8
  store i8 %2068, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 0, i8* %31, align 1, !tbaa !2447
  %2069 = add i64 %2036, 25
  store i64 %2069, i64* %PC, align 8
  store i32 %2058, i32* %2056, align 4
  %.pre57 = load i64, i64* %PC, align 8
  %.pre58 = load i64, i64* %RBP, align 8
  br label %block_40116d

block_400f1e:                                     ; preds = %block_400ef9
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %2070 = add i64 %2638, -1168
  store i64 %2070, i64* %RCX, align 8, !tbaa !2428
  %2071 = add i64 %2638, -12
  %2072 = add i64 %2658, 15
  store i64 %2072, i64* %PC, align 8
  %2073 = inttoptr i64 %2071 to i32*
  %2074 = load i32, i32* %2073, align 4
  %2075 = add i32 %2074, 1
  %2076 = zext i32 %2075 to i64
  store i64 %2076, i64* %RDX, align 8, !tbaa !2428
  %2077 = icmp eq i32 %2074, -1
  %2078 = icmp eq i32 %2075, 0
  %2079 = or i1 %2077, %2078
  %2080 = zext i1 %2079 to i8
  store i8 %2080, i8* %18, align 1, !tbaa !2432
  %2081 = and i32 %2075, 255
  %2082 = tail call i32 @llvm.ctpop.i32(i32 %2081) #8
  %2083 = trunc i32 %2082 to i8
  %2084 = and i8 %2083, 1
  %2085 = xor i8 %2084, 1
  store i8 %2085, i8* %25, align 1, !tbaa !2446
  %2086 = xor i32 %2074, %2075
  %2087 = lshr i32 %2086, 4
  %2088 = trunc i32 %2087 to i8
  %2089 = and i8 %2088, 1
  store i8 %2089, i8* %31, align 1, !tbaa !2447
  %2090 = icmp eq i32 %2075, 0
  %2091 = zext i1 %2090 to i8
  store i8 %2091, i8* %34, align 1, !tbaa !2448
  %2092 = lshr i32 %2075, 31
  %2093 = trunc i32 %2092 to i8
  store i8 %2093, i8* %37, align 1, !tbaa !2449
  %2094 = lshr i32 %2074, 31
  %2095 = xor i32 %2092, %2094
  %2096 = add nuw nsw i32 %2095, %2092
  %2097 = icmp eq i32 %2096, 2
  %2098 = zext i1 %2097 to i8
  store i8 %2098, i8* %43, align 1, !tbaa !2450
  %2099 = add i64 %2658, 21
  store i64 %2099, i64* %PC, align 8
  %2100 = load i32, i32* %2641, align 4
  %2101 = sub i32 %2075, %2100
  %2102 = zext i32 %2101 to i64
  store i64 %2102, i64* %RDX, align 8, !tbaa !2428
  %2103 = icmp ult i32 %2075, %2100
  %2104 = zext i1 %2103 to i8
  store i8 %2104, i8* %18, align 1, !tbaa !2432
  %2105 = and i32 %2101, 255
  %2106 = tail call i32 @llvm.ctpop.i32(i32 %2105) #8
  %2107 = trunc i32 %2106 to i8
  %2108 = and i8 %2107, 1
  %2109 = xor i8 %2108, 1
  store i8 %2109, i8* %25, align 1, !tbaa !2446
  %2110 = xor i32 %2100, %2075
  %2111 = xor i32 %2110, %2101
  %2112 = lshr i32 %2111, 4
  %2113 = trunc i32 %2112 to i8
  %2114 = and i8 %2113, 1
  store i8 %2114, i8* %31, align 1, !tbaa !2447
  %2115 = icmp eq i32 %2101, 0
  %2116 = zext i1 %2115 to i8
  store i8 %2116, i8* %34, align 1, !tbaa !2448
  %2117 = lshr i32 %2101, 31
  %2118 = trunc i32 %2117 to i8
  store i8 %2118, i8* %37, align 1, !tbaa !2449
  %2119 = lshr i32 %2100, 31
  %2120 = xor i32 %2119, %2092
  %2121 = xor i32 %2117, %2092
  %2122 = add nuw nsw i32 %2121, %2120
  %2123 = icmp eq i32 %2122, 2
  %2124 = zext i1 %2123 to i8
  store i8 %2124, i8* %43, align 1, !tbaa !2450
  %2125 = sext i32 %2101 to i64
  store i64 %2125, i64* %RSI, align 8, !tbaa !2428
  %2126 = shl nsw i64 %2125, 2
  %2127 = add i64 %2638, -1488
  %2128 = add i64 %2127, %2126
  %2129 = add i64 %2658, 31
  store i64 %2129, i64* %PC, align 8
  %2130 = inttoptr i64 %2128 to i32*
  %2131 = load i32, i32* %2130, align 4
  %2132 = zext i32 %2131 to i64
  store i64 %2132, i64* %RDX, align 8, !tbaa !2428
  %2133 = add i64 %2658, 34
  store i64 %2133, i64* %PC, align 8
  %2134 = load i32, i32* %2073, align 4
  %2135 = add i32 %2134, 1
  %2136 = zext i32 %2135 to i64
  store i64 %2136, i64* %RDI, align 8, !tbaa !2428
  %2137 = sext i32 %2135 to i64
  %2138 = shl nsw i64 %2137, 6
  store i64 %2138, i64* %RSI, align 8, !tbaa !2428
  %2139 = lshr i64 %2137, 57
  %2140 = and i64 %2139, 1
  %2141 = load i64, i64* %RCX, align 8
  %2142 = add i64 %2138, %2141
  store i64 %2142, i64* %RCX, align 8, !tbaa !2428
  %2143 = icmp ult i64 %2142, %2141
  %2144 = icmp ult i64 %2142, %2138
  %2145 = or i1 %2143, %2144
  %2146 = zext i1 %2145 to i8
  store i8 %2146, i8* %18, align 1, !tbaa !2432
  %2147 = trunc i64 %2142 to i32
  %2148 = and i32 %2147, 255
  %2149 = tail call i32 @llvm.ctpop.i32(i32 %2148) #8
  %2150 = trunc i32 %2149 to i8
  %2151 = and i8 %2150, 1
  %2152 = xor i8 %2151, 1
  store i8 %2152, i8* %25, align 1, !tbaa !2446
  %2153 = xor i64 %2141, %2142
  %2154 = lshr i64 %2153, 4
  %2155 = trunc i64 %2154 to i8
  %2156 = and i8 %2155, 1
  store i8 %2156, i8* %31, align 1, !tbaa !2447
  %2157 = icmp eq i64 %2142, 0
  %2158 = zext i1 %2157 to i8
  store i8 %2158, i8* %34, align 1, !tbaa !2448
  %2159 = lshr i64 %2142, 63
  %2160 = trunc i64 %2159 to i8
  store i8 %2160, i8* %37, align 1, !tbaa !2449
  %2161 = lshr i64 %2141, 63
  %2162 = xor i64 %2159, %2161
  %2163 = xor i64 %2159, %2140
  %2164 = add nuw nsw i64 %2162, %2163
  %2165 = icmp eq i64 %2164, 2
  %2166 = zext i1 %2165 to i8
  store i8 %2166, i8* %43, align 1, !tbaa !2450
  %2167 = load i64, i64* %RBP, align 8
  %2168 = add i64 %2167, -4
  %2169 = add i64 %2658, 51
  store i64 %2169, i64* %PC, align 8
  %2170 = inttoptr i64 %2168 to i32*
  %2171 = load i32, i32* %2170, align 4
  %2172 = sext i32 %2171 to i64
  store i64 %2172, i64* %RSI, align 8, !tbaa !2428
  %2173 = shl nsw i64 %2172, 2
  %2174 = add i64 %2173, %2142
  %2175 = add i64 %2658, 55
  store i64 %2175, i64* %PC, align 8
  %2176 = inttoptr i64 %2174 to i32*
  %2177 = load i32, i32* %2176, align 4
  %2178 = sext i32 %2177 to i64
  store i64 %2178, i64* %RCX, align 8, !tbaa !2428
  %2179 = load i64, i64* %RDX, align 8
  %2180 = shl nsw i64 %2178, 2
  %2181 = add i64 %2180, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %2182 = add i64 %2658, 62
  store i64 %2182, i64* %PC, align 8
  %2183 = trunc i64 %2179 to i32
  %2184 = inttoptr i64 %2181 to i32*
  %2185 = load i32, i32* %2184, align 4
  %2186 = add i32 %2185, %2183
  %2187 = zext i32 %2186 to i64
  store i64 %2187, i64* %RDX, align 8, !tbaa !2428
  %2188 = icmp ult i32 %2186, %2183
  %2189 = icmp ult i32 %2186, %2185
  %2190 = or i1 %2188, %2189
  %2191 = zext i1 %2190 to i8
  store i8 %2191, i8* %18, align 1, !tbaa !2432
  %2192 = and i32 %2186, 255
  %2193 = tail call i32 @llvm.ctpop.i32(i32 %2192) #8
  %2194 = trunc i32 %2193 to i8
  %2195 = and i8 %2194, 1
  %2196 = xor i8 %2195, 1
  store i8 %2196, i8* %25, align 1, !tbaa !2446
  %2197 = xor i32 %2185, %2183
  %2198 = xor i32 %2197, %2186
  %2199 = lshr i32 %2198, 4
  %2200 = trunc i32 %2199 to i8
  %2201 = and i8 %2200, 1
  store i8 %2201, i8* %31, align 1, !tbaa !2447
  %2202 = icmp eq i32 %2186, 0
  %2203 = zext i1 %2202 to i8
  store i8 %2203, i8* %34, align 1, !tbaa !2448
  %2204 = lshr i32 %2186, 31
  %2205 = trunc i32 %2204 to i8
  store i8 %2205, i8* %37, align 1, !tbaa !2449
  %2206 = lshr i32 %2183, 31
  %2207 = lshr i32 %2185, 31
  %2208 = xor i32 %2204, %2206
  %2209 = xor i32 %2204, %2207
  %2210 = add nuw nsw i32 %2208, %2209
  %2211 = icmp eq i32 %2210, 2
  %2212 = zext i1 %2211 to i8
  store i8 %2212, i8* %43, align 1, !tbaa !2450
  %2213 = add i64 %2167, -2708
  %2214 = load i32, i32* %EAX, align 4
  %2215 = add i64 %2658, 68
  store i64 %2215, i64* %PC, align 8
  %2216 = inttoptr i64 %2213 to i32*
  store i32 %2214, i32* %2216, align 4
  %2217 = load i32, i32* %EDX, align 4
  %2218 = zext i32 %2217 to i64
  %2219 = load i64, i64* %PC, align 8
  store i64 %2218, i64* %RAX, align 8, !tbaa !2428
  %2220 = sext i32 %2217 to i64
  %2221 = lshr i64 %2220, 32
  store i64 %2221, i64* %58, align 8, !tbaa !2428
  %2222 = load i64, i64* %RBP, align 8
  %2223 = add i64 %2222, -2708
  %2224 = add i64 %2219, 9
  store i64 %2224, i64* %PC, align 8
  %2225 = inttoptr i64 %2223 to i32*
  %2226 = load i32, i32* %2225, align 4
  %2227 = zext i32 %2226 to i64
  store i64 %2227, i64* %RDI, align 8, !tbaa !2428
  %2228 = add i64 %2219, 11
  store i64 %2228, i64* %PC, align 8
  %2229 = zext i32 %2217 to i64
  %2230 = sext i32 %2226 to i64
  %2231 = shl nuw i64 %2221, 32
  %2232 = or i64 %2231, %2229
  %2233 = sdiv i64 %2232, %2230
  %2234 = shl i64 %2233, 32
  %2235 = ashr exact i64 %2234, 32
  %2236 = icmp eq i64 %2233, %2235
  br i1 %2236, label %2239, label %2237

; <label>:2237:                                   ; preds = %block_400f1e
  %2238 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2228, %struct.Memory* %MEMORY.27) #9
  %.pre42 = load i32, i32* %EDX, align 4
  %.pre43 = load i64, i64* %PC, align 8
  %.pre44 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2

; <label>:2239:                                   ; preds = %block_400f1e
  %2240 = srem i64 %2232, %2230
  %2241 = and i64 %2233, 4294967295
  store i64 %2241, i64* %59, align 8, !tbaa !2428
  %2242 = and i64 %2240, 4294967295
  store i64 %2242, i64* %60, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  store i8 0, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2447
  store i8 0, i8* %34, align 1, !tbaa !2448
  store i8 0, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %2243 = trunc i64 %2240 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2: ; preds = %2239, %2237
  %2244 = phi i64 [ %.pre44, %2237 ], [ %2222, %2239 ]
  %2245 = phi i64 [ %.pre43, %2237 ], [ %2228, %2239 ]
  %2246 = phi i32 [ %.pre42, %2237 ], [ %2243, %2239 ]
  %2247 = phi %struct.Memory* [ %2238, %2237 ], [ %MEMORY.27, %2239 ]
  %2248 = sext i32 %2246 to i64
  store i64 %2248, i64* %RCX, align 8, !tbaa !2428
  %2249 = shl nsw i64 %2248, 2
  %2250 = add i64 %2249, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %2251 = add i64 %2245, 10
  store i64 %2251, i64* %PC, align 8
  %2252 = inttoptr i64 %2250 to i32*
  %2253 = load i32, i32* %2252, align 4
  %2254 = zext i32 %2253 to i64
  store i64 %2254, i64* %RDX, align 8, !tbaa !2428
  %2255 = add i64 %2244, -12
  %2256 = add i64 %2245, 14
  store i64 %2256, i64* %PC, align 8
  %2257 = inttoptr i64 %2255 to i32*
  %2258 = load i32, i32* %2257, align 4
  %2259 = add i32 %2258, 1
  %2260 = zext i32 %2259 to i64
  store i64 %2260, i64* %4576, align 8, !tbaa !2428
  %2261 = icmp eq i32 %2258, -1
  %2262 = icmp eq i32 %2259, 0
  %2263 = or i1 %2261, %2262
  %2264 = zext i1 %2263 to i8
  store i8 %2264, i8* %18, align 1, !tbaa !2432
  %2265 = and i32 %2259, 255
  %2266 = tail call i32 @llvm.ctpop.i32(i32 %2265) #8
  %2267 = trunc i32 %2266 to i8
  %2268 = and i8 %2267, 1
  %2269 = xor i8 %2268, 1
  store i8 %2269, i8* %25, align 1, !tbaa !2446
  %2270 = xor i32 %2258, %2259
  %2271 = lshr i32 %2270, 4
  %2272 = trunc i32 %2271 to i8
  %2273 = and i8 %2272, 1
  store i8 %2273, i8* %31, align 1, !tbaa !2447
  %2274 = icmp eq i32 %2259, 0
  %2275 = zext i1 %2274 to i8
  store i8 %2275, i8* %34, align 1, !tbaa !2448
  %2276 = lshr i32 %2259, 31
  %2277 = trunc i32 %2276 to i8
  store i8 %2277, i8* %37, align 1, !tbaa !2449
  %2278 = lshr i32 %2258, 31
  %2279 = xor i32 %2276, %2278
  %2280 = add nuw nsw i32 %2279, %2276
  %2281 = icmp eq i32 %2280, 2
  %2282 = zext i1 %2281 to i8
  store i8 %2282, i8* %43, align 1, !tbaa !2450
  %2283 = sext i32 %2259 to i64
  store i64 %2283, i64* %RCX, align 8, !tbaa !2428
  %2284 = shl nsw i64 %2283, 2
  %2285 = add i64 %2244, -1248
  %2286 = add i64 %2285, %2284
  %2287 = add i64 %2245, 28
  store i64 %2287, i64* %PC, align 8
  %2288 = inttoptr i64 %2286 to i32*
  %2289 = load i32, i32* %2288, align 4
  %2290 = xor i32 %2289, %2253
  %2291 = zext i32 %2290 to i64
  store i64 %2291, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  %2292 = and i32 %2290, 255
  %2293 = tail call i32 @llvm.ctpop.i32(i32 %2292) #8
  %2294 = trunc i32 %2293 to i8
  %2295 = and i8 %2294, 1
  %2296 = xor i8 %2295, 1
  store i8 %2296, i8* %25, align 1, !tbaa !2446
  %2297 = icmp eq i32 %2290, 0
  %2298 = zext i1 %2297 to i8
  store i8 %2298, i8* %34, align 1, !tbaa !2448
  %2299 = lshr i32 %2290, 31
  %2300 = trunc i32 %2299 to i8
  store i8 %2300, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 0, i8* %31, align 1, !tbaa !2447
  %2301 = add i64 %2245, 35
  store i64 %2301, i64* %PC, align 8
  store i32 %2290, i32* %2288, align 4
  %.pre45 = load i64, i64* %PC, align 8
  %.pre46 = load i64, i64* %RBP, align 8
  br label %block_400f90

block_401113:                                     ; preds = %block_4010ff
  %2302 = add i64 %2970, 4
  store i64 %2302, i64* %PC, align 8
  %2303 = load i32, i32* %2930, align 4
  %2304 = sext i32 %2303 to i64
  store i64 %2304, i64* %RAX, align 8, !tbaa !2428
  %2305 = shl nsw i64 %2304, 2
  %2306 = add i64 %2927, -2688
  %2307 = add i64 %2306, %2305
  %2308 = add i64 %2970, 12
  store i64 %2308, i64* %PC, align 8
  %2309 = inttoptr i64 %2307 to i32*
  %2310 = load i32, i32* %2309, align 4
  %2311 = add i32 %2310, 1
  %2312 = icmp ne i32 %2310, -1
  %2313 = zext i1 %2312 to i8
  store i8 %2313, i8* %18, align 1, !tbaa !2432
  %2314 = and i32 %2311, 255
  %2315 = tail call i32 @llvm.ctpop.i32(i32 %2314) #8
  %2316 = trunc i32 %2315 to i8
  %2317 = and i8 %2316, 1
  %2318 = xor i8 %2317, 1
  store i8 %2318, i8* %25, align 1, !tbaa !2446
  %2319 = xor i32 %2310, 16
  %2320 = xor i32 %2311, %2319
  %2321 = lshr i32 %2320, 4
  %2322 = trunc i32 %2321 to i8
  %2323 = and i8 %2322, 1
  store i8 %2323, i8* %31, align 1, !tbaa !2447
  %2324 = icmp eq i32 %2311, 0
  %2325 = zext i1 %2324 to i8
  store i8 %2325, i8* %34, align 1, !tbaa !2448
  %2326 = lshr i32 %2311, 31
  %2327 = trunc i32 %2326 to i8
  store i8 %2327, i8* %37, align 1, !tbaa !2449
  %2328 = lshr i32 %2310, 31
  %2329 = xor i32 %2328, 1
  %2330 = xor i32 %2326, %2328
  %2331 = add nuw nsw i32 %2330, %2329
  %2332 = icmp eq i32 %2331, 2
  %2333 = zext i1 %2332 to i8
  store i8 %2333, i8* %43, align 1, !tbaa !2450
  %.v136 = select i1 %2324, i64 90, i64 18
  %2334 = add i64 %2970, %.v136
  store i64 %2334, i64* %57, align 8, !tbaa !2428
  br i1 %2324, label %block_40116d, label %block_401125

block_401509:                                     ; preds = %block_4014f7
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %2335 = add i64 %2497, 9
  store i64 %2335, i64* %PC, align 8
  %2336 = load i32, i32* %1878, align 4
  %2337 = sext i32 %2336 to i64
  store i64 %2337, i64* %RCX, align 8, !tbaa !2428
  %2338 = shl nsw i64 %2337, 2
  %2339 = add i64 %2469, %2338
  %2340 = add i64 %2497, 16
  store i64 %2340, i64* %PC, align 8
  %2341 = inttoptr i64 %2339 to i32*
  %2342 = load i32, i32* %2341, align 4
  %2343 = zext i32 %2342 to i64
  store i64 %2343, i64* %RDX, align 8, !tbaa !2428
  %2344 = add i64 %2497, 19
  store i64 %2344, i64* %PC, align 8
  %2345 = load i32, i32* %1878, align 4
  %2346 = zext i32 %2345 to i64
  store i64 %2346, i64* %RSI, align 8, !tbaa !2428
  %2347 = add i64 %1875, -4
  %2348 = add i64 %2497, 23
  store i64 %2348, i64* %PC, align 8
  %2349 = inttoptr i64 %2347 to i32*
  %2350 = load i32, i32* %2349, align 4
  %2351 = sext i32 %2350 to i64
  store i64 %2351, i64* %RCX, align 8, !tbaa !2428
  %2352 = shl nsw i64 %2351, 2
  %2353 = add i64 %1875, -1536
  %2354 = add i64 %2353, %2352
  %2355 = add i64 %2497, 31
  store i64 %2355, i64* %PC, align 8
  %2356 = inttoptr i64 %2354 to i32*
  %2357 = load i32, i32* %2356, align 4
  %2358 = sext i32 %2345 to i64
  %2359 = sext i32 %2357 to i64
  %2360 = mul nsw i64 %2359, %2358
  %2361 = and i64 %2360, 4294967295
  store i64 %2361, i64* %RSI, align 8, !tbaa !2428
  %2362 = trunc i64 %2360 to i32
  %2363 = add i32 %2362, %2342
  %2364 = zext i32 %2363 to i64
  store i64 %2364, i64* %RDX, align 8, !tbaa !2428
  %2365 = icmp ult i32 %2363, %2342
  %2366 = icmp ult i32 %2363, %2362
  %2367 = or i1 %2365, %2366
  %2368 = zext i1 %2367 to i8
  store i8 %2368, i8* %18, align 1, !tbaa !2432
  %2369 = and i32 %2363, 255
  %2370 = tail call i32 @llvm.ctpop.i32(i32 %2369) #8
  %2371 = trunc i32 %2370 to i8
  %2372 = and i8 %2371, 1
  %2373 = xor i8 %2372, 1
  store i8 %2373, i8* %25, align 1, !tbaa !2446
  %2374 = xor i64 %2360, %2343
  %2375 = trunc i64 %2374 to i32
  %2376 = xor i32 %2375, %2363
  %2377 = lshr i32 %2376, 4
  %2378 = trunc i32 %2377 to i8
  %2379 = and i8 %2378, 1
  store i8 %2379, i8* %31, align 1, !tbaa !2447
  %2380 = icmp eq i32 %2363, 0
  %2381 = zext i1 %2380 to i8
  store i8 %2381, i8* %34, align 1, !tbaa !2448
  %2382 = lshr i32 %2363, 31
  %2383 = trunc i32 %2382 to i8
  store i8 %2383, i8* %37, align 1, !tbaa !2449
  %2384 = lshr i32 %2342, 31
  %2385 = lshr i32 %2362, 31
  %2386 = xor i32 %2382, %2384
  %2387 = xor i32 %2382, %2385
  %2388 = add nuw nsw i32 %2386, %2387
  %2389 = icmp eq i32 %2388, 2
  %2390 = zext i1 %2389 to i8
  store i8 %2390, i8* %43, align 1, !tbaa !2450
  %2391 = add i64 %1875, -2724
  %2392 = add i64 %2497, 39
  store i64 %2392, i64* %PC, align 8
  %2393 = inttoptr i64 %2391 to i32*
  store i32 255, i32* %2393, align 4
  %2394 = load i32, i32* %EDX, align 4
  %2395 = zext i32 %2394 to i64
  %2396 = load i64, i64* %PC, align 8
  store i64 %2395, i64* %RAX, align 8, !tbaa !2428
  %2397 = sext i32 %2394 to i64
  %2398 = lshr i64 %2397, 32
  store i64 %2398, i64* %58, align 8, !tbaa !2428
  %2399 = load i64, i64* %RBP, align 8
  %2400 = add i64 %2399, -2724
  %2401 = add i64 %2396, 9
  store i64 %2401, i64* %PC, align 8
  %2402 = inttoptr i64 %2400 to i32*
  %2403 = load i32, i32* %2402, align 4
  %2404 = zext i32 %2403 to i64
  store i64 %2404, i64* %RSI, align 8, !tbaa !2428
  %2405 = add i64 %2396, 11
  store i64 %2405, i64* %PC, align 8
  %2406 = zext i32 %2394 to i64
  %2407 = sext i32 %2403 to i64
  %2408 = shl nuw i64 %2398, 32
  %2409 = or i64 %2408, %2406
  %2410 = sdiv i64 %2409, %2407
  %2411 = shl i64 %2410, 32
  %2412 = ashr exact i64 %2411, 32
  %2413 = icmp eq i64 %2410, %2412
  br i1 %2413, label %2416, label %2414

; <label>:2414:                                   ; preds = %block_401509
  %2415 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2405, %struct.Memory* %MEMORY.19) #9
  %.pre75 = load i32, i32* %EDX, align 4
  %.pre76 = load i64, i64* %PC, align 8
  %.pre77 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:2416:                                   ; preds = %block_401509
  %2417 = srem i64 %2409, %2407
  %2418 = and i64 %2410, 4294967295
  store i64 %2418, i64* %59, align 8, !tbaa !2428
  %2419 = and i64 %2417, 4294967295
  store i64 %2419, i64* %60, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  store i8 0, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2447
  store i8 0, i8* %34, align 1, !tbaa !2448
  store i8 0, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %2420 = trunc i64 %2417 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %2416, %2414
  %2421 = phi i64 [ %.pre77, %2414 ], [ %2399, %2416 ]
  %2422 = phi i64 [ %.pre76, %2414 ], [ %2405, %2416 ]
  %2423 = phi i32 [ %.pre75, %2414 ], [ %2420, %2416 ]
  %2424 = phi %struct.Memory* [ %2415, %2414 ], [ %MEMORY.19, %2416 ]
  %2425 = sext i32 %2423 to i64
  store i64 %2425, i64* %RCX, align 8, !tbaa !2428
  %2426 = shl nsw i64 %2425, 2
  %2427 = add i64 %2426, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %2428 = add i64 %2422, 10
  store i64 %2428, i64* %PC, align 8
  %2429 = inttoptr i64 %2427 to i32*
  %2430 = load i32, i32* %2429, align 4
  %2431 = zext i32 %2430 to i64
  store i64 %2431, i64* %RDX, align 8, !tbaa !2428
  %2432 = add i64 %2421, -4
  %2433 = add i64 %2422, 14
  store i64 %2433, i64* %PC, align 8
  %2434 = inttoptr i64 %2432 to i32*
  %2435 = load i32, i32* %2434, align 4
  %2436 = sext i32 %2435 to i64
  store i64 %2436, i64* %RCX, align 8, !tbaa !2428
  %2437 = shl nsw i64 %2436, 2
  %2438 = add i64 %2421, -1568
  %2439 = add i64 %2438, %2437
  %2440 = add i64 %2422, 22
  store i64 %2440, i64* %PC, align 8
  %2441 = inttoptr i64 %2439 to i32*
  %2442 = load i32, i32* %2441, align 4
  %2443 = sext i32 %2442 to i64
  store i64 %2443, i64* %RCX, align 8, !tbaa !2428
  %2444 = shl nsw i64 %2443, 2
  %2445 = add i64 %2421, -2640
  %2446 = add i64 %2445, %2444
  %2447 = add i64 %2422, 29
  store i64 %2447, i64* %PC, align 8
  %2448 = inttoptr i64 %2446 to i32*
  %2449 = load i32, i32* %2448, align 4
  %2450 = xor i32 %2449, %2430
  %2451 = zext i32 %2450 to i64
  store i64 %2451, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  %2452 = and i32 %2450, 255
  %2453 = tail call i32 @llvm.ctpop.i32(i32 %2452) #8
  %2454 = trunc i32 %2453 to i8
  %2455 = and i8 %2454, 1
  %2456 = xor i8 %2455, 1
  store i8 %2456, i8* %25, align 1, !tbaa !2446
  %2457 = icmp eq i32 %2450, 0
  %2458 = zext i1 %2457 to i8
  store i8 %2458, i8* %34, align 1, !tbaa !2448
  %2459 = lshr i32 %2450, 31
  %2460 = trunc i32 %2459 to i8
  store i8 %2460, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 0, i8* %31, align 1, !tbaa !2447
  %2461 = add i64 %2422, 36
  store i64 %2461, i64* %PC, align 8
  store i32 %2450, i32* %2448, align 4
  %.pre78 = load i64, i64* %PC, align 8
  %.pre79 = load i64, i64* %RBP, align 8
  br label %block_40155f

block_4009e0:                                     ; preds = %block_4009ce
  %2462 = add i64 %1532, -1496
  %2463 = add i64 %1123, 10
  store i64 %2463, i64* %PC, align 8
  %2464 = inttoptr i64 %2462 to i32*
  store i32 1, i32* %2464, align 4
  %.pre21 = load i64, i64* %RBP, align 8
  %.pre22 = load i64, i64* %PC, align 8
  br label %block_4009ea

block_4014f7:                                     ; preds = %block_4014e3
  %2465 = add i64 %1918, 4
  store i64 %2465, i64* %PC, align 8
  %2466 = load i32, i32* %1878, align 4
  %2467 = sext i32 %2466 to i64
  store i64 %2467, i64* %RAX, align 8, !tbaa !2428
  %2468 = shl nsw i64 %2467, 2
  %2469 = add i64 %1875, -1616
  %2470 = add i64 %2469, %2468
  %2471 = add i64 %1918, 12
  store i64 %2471, i64* %PC, align 8
  %2472 = inttoptr i64 %2470 to i32*
  %2473 = load i32, i32* %2472, align 4
  %2474 = add i32 %2473, 1
  %2475 = icmp ne i32 %2473, -1
  %2476 = zext i1 %2475 to i8
  store i8 %2476, i8* %18, align 1, !tbaa !2432
  %2477 = and i32 %2474, 255
  %2478 = tail call i32 @llvm.ctpop.i32(i32 %2477) #8
  %2479 = trunc i32 %2478 to i8
  %2480 = and i8 %2479, 1
  %2481 = xor i8 %2480, 1
  store i8 %2481, i8* %25, align 1, !tbaa !2446
  %2482 = xor i32 %2473, 16
  %2483 = xor i32 %2474, %2482
  %2484 = lshr i32 %2483, 4
  %2485 = trunc i32 %2484 to i8
  %2486 = and i8 %2485, 1
  store i8 %2486, i8* %31, align 1, !tbaa !2447
  %2487 = icmp eq i32 %2474, 0
  %2488 = zext i1 %2487 to i8
  store i8 %2488, i8* %34, align 1, !tbaa !2448
  %2489 = lshr i32 %2474, 31
  %2490 = trunc i32 %2489 to i8
  store i8 %2490, i8* %37, align 1, !tbaa !2449
  %2491 = lshr i32 %2473, 31
  %2492 = xor i32 %2491, 1
  %2493 = xor i32 %2489, %2491
  %2494 = add nuw nsw i32 %2493, %2492
  %2495 = icmp eq i32 %2494, 2
  %2496 = zext i1 %2495 to i8
  store i8 %2496, i8* %43, align 1, !tbaa !2450
  %.v155 = select i1 %2487, i64 104, i64 18
  %2497 = add i64 %1918, %.v155
  store i64 %2497, i64* %57, align 8, !tbaa !2428
  br i1 %2487, label %block_40155f, label %block_401509

block_401302:                                     ; preds = %block_4012e2
  %2498 = add i64 %.pre64, -1168
  store i64 %2498, i64* %RAX, align 8, !tbaa !2428
  %2499 = add i64 %.pre64, -12
  %2500 = add i64 %5571, 11
  store i64 %2500, i64* %PC, align 8
  %2501 = inttoptr i64 %2499 to i32*
  %2502 = load i32, i32* %2501, align 4
  %2503 = sext i32 %2502 to i64
  %2504 = shl nsw i64 %2503, 6
  store i64 %2504, i64* %RCX, align 8, !tbaa !2428
  %2505 = lshr i64 %2503, 57
  %2506 = and i64 %2505, 1
  %2507 = add i64 %2504, %2498
  store i64 %2507, i64* %RAX, align 8, !tbaa !2428
  %2508 = icmp ult i64 %2507, %2498
  %2509 = icmp ult i64 %2507, %2504
  %2510 = or i1 %2508, %2509
  %2511 = zext i1 %2510 to i8
  store i8 %2511, i8* %18, align 1, !tbaa !2432
  %2512 = trunc i64 %2507 to i32
  %2513 = and i32 %2512, 255
  %2514 = tail call i32 @llvm.ctpop.i32(i32 %2513) #8
  %2515 = trunc i32 %2514 to i8
  %2516 = and i8 %2515, 1
  %2517 = xor i8 %2516, 1
  store i8 %2517, i8* %25, align 1, !tbaa !2446
  %2518 = xor i64 %2498, %2507
  %2519 = lshr i64 %2518, 4
  %2520 = trunc i64 %2519 to i8
  %2521 = and i8 %2520, 1
  store i8 %2521, i8* %31, align 1, !tbaa !2447
  %2522 = icmp eq i64 %2507, 0
  %2523 = zext i1 %2522 to i8
  store i8 %2523, i8* %34, align 1, !tbaa !2448
  %2524 = lshr i64 %2507, 63
  %2525 = trunc i64 %2524 to i8
  store i8 %2525, i8* %37, align 1, !tbaa !2449
  %2526 = lshr i64 %2498, 63
  %2527 = xor i64 %2524, %2526
  %2528 = xor i64 %2524, %2506
  %2529 = add nuw nsw i64 %2527, %2528
  %2530 = icmp eq i64 %2529, 2
  %2531 = zext i1 %2530 to i8
  store i8 %2531, i8* %43, align 1, !tbaa !2450
  %2532 = add i64 %.pre64, -4
  %2533 = add i64 %5571, 22
  store i64 %2533, i64* %PC, align 8
  %2534 = inttoptr i64 %2532 to i32*
  %2535 = load i32, i32* %2534, align 4
  %2536 = sext i32 %2535 to i64
  store i64 %2536, i64* %RCX, align 8, !tbaa !2428
  %2537 = shl nsw i64 %2536, 2
  %2538 = add i64 %2537, %2507
  %2539 = add i64 %5571, 26
  store i64 %2539, i64* %PC, align 8
  %2540 = inttoptr i64 %2538 to i32*
  %2541 = load i32, i32* %2540, align 4
  %2542 = sext i32 %2541 to i64
  store i64 %2542, i64* %RAX, align 8, !tbaa !2428
  %2543 = shl nsw i64 %2542, 2
  %2544 = add i64 %2543, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %2545 = add i64 %5571, 33
  store i64 %2545, i64* %PC, align 8
  %2546 = inttoptr i64 %2544 to i32*
  %2547 = load i32, i32* %2546, align 4
  %2548 = zext i32 %2547 to i64
  store i64 %2548, i64* %RDX, align 8, !tbaa !2428
  %2549 = add i64 %5571, 37
  store i64 %2549, i64* %PC, align 8
  %2550 = load i32, i32* %2534, align 4
  %2551 = sext i32 %2550 to i64
  store i64 %2551, i64* %RAX, align 8, !tbaa !2428
  %2552 = shl nsw i64 %2551, 2
  %2553 = add i64 %.pre64, -1616
  %2554 = add i64 %2553, %2552
  %2555 = add i64 %5571, 44
  store i64 %2555, i64* %PC, align 8
  %2556 = inttoptr i64 %2554 to i32*
  store i32 %2547, i32* %2556, align 4
  %2557 = load i64, i64* %PC, align 8
  %2558 = add i64 %2557, 20
  store i64 %2558, i64* %57, align 8, !tbaa !2428
  br label %block_401342

block_400dab:                                     ; preds = %block_400da4, %block_400dbf
  %2559 = phi i64 [ %.pre39, %block_400da4 ], [ %595, %block_400dbf ]
  %2560 = load i64, i64* %RBP, align 8
  %2561 = add i64 %2560, -4
  %2562 = add i64 %2559, 3
  store i64 %2562, i64* %PC, align 8
  %2563 = inttoptr i64 %2561 to i32*
  %2564 = load i32, i32* %2563, align 4
  %2565 = zext i32 %2564 to i64
  store i64 %2565, i64* %RAX, align 8, !tbaa !2428
  %2566 = add i64 %2560, -12
  %2567 = add i64 %2559, 7
  store i64 %2567, i64* %PC, align 8
  %2568 = inttoptr i64 %2566 to i32*
  %2569 = load i32, i32* %2568, align 4
  %2570 = sext i32 %2569 to i64
  store i64 %2570, i64* %RCX, align 8, !tbaa !2428
  %2571 = shl nsw i64 %2570, 2
  %2572 = add i64 %2560, -1328
  %2573 = add i64 %2572, %2571
  %2574 = add i64 %2559, 14
  store i64 %2574, i64* %PC, align 8
  %2575 = inttoptr i64 %2573 to i32*
  %2576 = load i32, i32* %2575, align 4
  %2577 = sub i32 %2564, %2576
  %2578 = icmp ult i32 %2564, %2576
  %2579 = zext i1 %2578 to i8
  store i8 %2579, i8* %18, align 1, !tbaa !2432
  %2580 = and i32 %2577, 255
  %2581 = tail call i32 @llvm.ctpop.i32(i32 %2580) #8
  %2582 = trunc i32 %2581 to i8
  %2583 = and i8 %2582, 1
  %2584 = xor i8 %2583, 1
  store i8 %2584, i8* %25, align 1, !tbaa !2446
  %2585 = xor i32 %2576, %2564
  %2586 = xor i32 %2585, %2577
  %2587 = lshr i32 %2586, 4
  %2588 = trunc i32 %2587 to i8
  %2589 = and i8 %2588, 1
  store i8 %2589, i8* %31, align 1, !tbaa !2447
  %2590 = icmp eq i32 %2577, 0
  %2591 = zext i1 %2590 to i8
  store i8 %2591, i8* %34, align 1, !tbaa !2448
  %2592 = lshr i32 %2577, 31
  %2593 = trunc i32 %2592 to i8
  store i8 %2593, i8* %37, align 1, !tbaa !2449
  %2594 = lshr i32 %2564, 31
  %2595 = lshr i32 %2576, 31
  %2596 = xor i32 %2595, %2594
  %2597 = xor i32 %2592, %2594
  %2598 = add nuw nsw i32 %2597, %2596
  %2599 = icmp eq i32 %2598, 2
  %2600 = zext i1 %2599 to i8
  store i8 %2600, i8* %43, align 1, !tbaa !2450
  %2601 = icmp ne i8 %2593, 0
  %2602 = xor i1 %2601, %2599
  %.demorgan174 = or i1 %2590, %2602
  %.v175 = select i1 %.demorgan174, i64 20, i64 138
  %2603 = add i64 %2559, %.v175
  store i64 %2603, i64* %57, align 8, !tbaa !2428
  br i1 %.demorgan174, label %block_400dbf, label %block_400e35

block_400ef9:                                     ; preds = %block_400edf
  %2604 = add i64 %3150, -1168
  store i64 %2604, i64* %RAX, align 8, !tbaa !2428
  %2605 = add i64 %2895, 10
  store i64 %2605, i64* %PC, align 8
  %2606 = load i32, i32* %3153, align 4
  %2607 = add i32 %2606, 1
  %2608 = zext i32 %2607 to i64
  store i64 %2608, i64* %RCX, align 8, !tbaa !2428
  %2609 = sext i32 %2607 to i64
  %2610 = shl nsw i64 %2609, 6
  store i64 %2610, i64* %RDX, align 8, !tbaa !2428
  %2611 = lshr i64 %2609, 57
  %2612 = and i64 %2611, 1
  %2613 = add i64 %2610, %2604
  store i64 %2613, i64* %RAX, align 8, !tbaa !2428
  %2614 = icmp ult i64 %2613, %2604
  %2615 = icmp ult i64 %2613, %2610
  %2616 = or i1 %2614, %2615
  %2617 = zext i1 %2616 to i8
  store i8 %2617, i8* %18, align 1, !tbaa !2432
  %2618 = trunc i64 %2613 to i32
  %2619 = and i32 %2618, 255
  %2620 = tail call i32 @llvm.ctpop.i32(i32 %2619) #8
  %2621 = trunc i32 %2620 to i8
  %2622 = and i8 %2621, 1
  %2623 = xor i8 %2622, 1
  store i8 %2623, i8* %25, align 1, !tbaa !2446
  %2624 = xor i64 %2604, %2613
  %2625 = lshr i64 %2624, 4
  %2626 = trunc i64 %2625 to i8
  %2627 = and i8 %2626, 1
  store i8 %2627, i8* %31, align 1, !tbaa !2447
  %2628 = icmp eq i64 %2613, 0
  %2629 = zext i1 %2628 to i8
  store i8 %2629, i8* %34, align 1, !tbaa !2448
  %2630 = lshr i64 %2613, 63
  %2631 = trunc i64 %2630 to i8
  store i8 %2631, i8* %37, align 1, !tbaa !2449
  %2632 = lshr i64 %2604, 63
  %2633 = xor i64 %2630, %2632
  %2634 = xor i64 %2630, %2612
  %2635 = add nuw nsw i64 %2633, %2634
  %2636 = icmp eq i64 %2635, 2
  %2637 = zext i1 %2636 to i8
  store i8 %2637, i8* %43, align 1, !tbaa !2450
  %2638 = load i64, i64* %RBP, align 8
  %2639 = add i64 %2638, -4
  %2640 = add i64 %2895, 27
  store i64 %2640, i64* %PC, align 8
  %2641 = inttoptr i64 %2639 to i32*
  %2642 = load i32, i32* %2641, align 4
  %2643 = sext i32 %2642 to i64
  store i64 %2643, i64* %RDX, align 8, !tbaa !2428
  %2644 = shl nsw i64 %2643, 2
  %2645 = add i64 %2644, %2613
  %2646 = add i64 %2895, 31
  store i64 %2646, i64* %PC, align 8
  %2647 = inttoptr i64 %2645 to i32*
  %2648 = load i32, i32* %2647, align 4
  store i8 0, i8* %18, align 1, !tbaa !2432
  %2649 = and i32 %2648, 255
  %2650 = tail call i32 @llvm.ctpop.i32(i32 %2649) #8
  %2651 = trunc i32 %2650 to i8
  %2652 = and i8 %2651, 1
  %2653 = xor i8 %2652, 1
  store i8 %2653, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2447
  %2654 = icmp eq i32 %2648, 0
  %2655 = zext i1 %2654 to i8
  store i8 %2655, i8* %34, align 1, !tbaa !2448
  %2656 = lshr i32 %2648, 31
  %2657 = trunc i32 %2656 to i8
  store i8 %2657, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %.v123 = select i1 %2654, i64 151, i64 37
  %2658 = add i64 %2895, %.v123
  store i64 %2658, i64* %57, align 8, !tbaa !2428
  br i1 %2654, label %block_400f90, label %block_400f1e

block_401572:                                     ; preds = %block_4014e3
  %2659 = add i64 %1875, -4
  %2660 = add i64 %1918, 4
  store i64 %2660, i64* %PC, align 8
  %2661 = inttoptr i64 %2659 to i32*
  %2662 = load i32, i32* %2661, align 4
  %2663 = sext i32 %2662 to i64
  store i64 %2663, i64* %RAX, align 8, !tbaa !2428
  %2664 = shl nsw i64 %2663, 2
  %2665 = add i64 %1875, -1568
  %2666 = add i64 %2665, %2664
  %2667 = add i64 %1918, 12
  store i64 %2667, i64* %PC, align 8
  %2668 = inttoptr i64 %2666 to i32*
  %2669 = load i32, i32* %2668, align 4
  %2670 = sext i32 %2669 to i64
  store i64 %2670, i64* %RAX, align 8, !tbaa !2428
  %2671 = shl nsw i64 %2670, 2
  %2672 = add i64 %1875, -2640
  %2673 = add i64 %2672, %2671
  %2674 = add i64 %1918, 20
  store i64 %2674, i64* %PC, align 8
  %2675 = inttoptr i64 %2673 to i32*
  %2676 = load i32, i32* %2675, align 4
  store i8 0, i8* %18, align 1, !tbaa !2432
  %2677 = and i32 %2676, 255
  %2678 = tail call i32 @llvm.ctpop.i32(i32 %2677) #8
  %2679 = trunc i32 %2678 to i8
  %2680 = and i8 %2679, 1
  %2681 = xor i8 %2680, 1
  store i8 %2681, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2447
  %2682 = icmp eq i32 %2676, 0
  %2683 = zext i1 %2682 to i8
  store i8 %2683, i8* %34, align 1, !tbaa !2448
  %2684 = lshr i32 %2676, 31
  %2685 = trunc i32 %2684 to i8
  store i8 %2685, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %.v156 = select i1 %2682, i64 345, i64 26
  %2686 = add i64 %1918, %.v156
  store i64 %2686, i64* %57, align 8, !tbaa !2428
  br i1 %2682, label %block_4016cb, label %block_40158c

block_400cf7:                                     ; preds = %block_400ce3
  %2687 = add i64 %3819, -1168
  store i64 %2687, i64* %RAX, align 8, !tbaa !2428
  %2688 = add i64 %3862, 11
  store i64 %2688, i64* %PC, align 8
  %2689 = load i32, i32* %3827, align 4
  %2690 = sext i32 %2689 to i64
  %2691 = shl nsw i64 %2690, 6
  store i64 %2691, i64* %RCX, align 8, !tbaa !2428
  %2692 = lshr i64 %2690, 57
  %2693 = and i64 %2692, 1
  %2694 = add i64 %2691, %2687
  store i64 %2694, i64* %RAX, align 8, !tbaa !2428
  %2695 = icmp ult i64 %2694, %2687
  %2696 = icmp ult i64 %2694, %2691
  %2697 = or i1 %2695, %2696
  %2698 = zext i1 %2697 to i8
  store i8 %2698, i8* %18, align 1, !tbaa !2432
  %2699 = trunc i64 %2694 to i32
  %2700 = and i32 %2699, 255
  %2701 = tail call i32 @llvm.ctpop.i32(i32 %2700) #8
  %2702 = trunc i32 %2701 to i8
  %2703 = and i8 %2702, 1
  %2704 = xor i8 %2703, 1
  store i8 %2704, i8* %25, align 1, !tbaa !2446
  %2705 = xor i64 %2687, %2694
  %2706 = lshr i64 %2705, 4
  %2707 = trunc i64 %2706 to i8
  %2708 = and i8 %2707, 1
  store i8 %2708, i8* %31, align 1, !tbaa !2447
  %2709 = icmp eq i64 %2694, 0
  %2710 = zext i1 %2709 to i8
  store i8 %2710, i8* %34, align 1, !tbaa !2448
  %2711 = lshr i64 %2694, 63
  %2712 = trunc i64 %2711 to i8
  store i8 %2712, i8* %37, align 1, !tbaa !2449
  %2713 = lshr i64 %2687, 63
  %2714 = xor i64 %2711, %2713
  %2715 = xor i64 %2711, %2693
  %2716 = add nuw nsw i64 %2714, %2715
  %2717 = icmp eq i64 %2716, 2
  %2718 = zext i1 %2717 to i8
  store i8 %2718, i8* %43, align 1, !tbaa !2450
  %2719 = add i64 %3862, 22
  store i64 %2719, i64* %PC, align 8
  %2720 = load i32, i32* %3822, align 4
  %2721 = sext i32 %2720 to i64
  store i64 %2721, i64* %RCX, align 8, !tbaa !2428
  %2722 = shl nsw i64 %2721, 2
  %2723 = add i64 %2722, %2694
  %2724 = add i64 %3862, 26
  store i64 %2724, i64* %PC, align 8
  %2725 = inttoptr i64 %2723 to i32*
  %2726 = load i32, i32* %2725, align 4
  %2727 = add i32 %2726, 1
  %2728 = icmp ne i32 %2726, -1
  %2729 = zext i1 %2728 to i8
  store i8 %2729, i8* %18, align 1, !tbaa !2432
  %2730 = and i32 %2727, 255
  %2731 = tail call i32 @llvm.ctpop.i32(i32 %2730) #8
  %2732 = trunc i32 %2731 to i8
  %2733 = and i8 %2732, 1
  %2734 = xor i8 %2733, 1
  store i8 %2734, i8* %25, align 1, !tbaa !2446
  %2735 = xor i32 %2726, 16
  %2736 = xor i32 %2727, %2735
  %2737 = lshr i32 %2736, 4
  %2738 = trunc i32 %2737 to i8
  %2739 = and i8 %2738, 1
  store i8 %2739, i8* %31, align 1, !tbaa !2447
  %2740 = icmp eq i32 %2727, 0
  %2741 = zext i1 %2740 to i8
  store i8 %2741, i8* %34, align 1, !tbaa !2448
  %2742 = lshr i32 %2727, 31
  %2743 = trunc i32 %2742 to i8
  store i8 %2743, i8* %37, align 1, !tbaa !2449
  %2744 = lshr i32 %2726, 31
  %2745 = xor i32 %2744, 1
  %2746 = xor i32 %2742, %2744
  %2747 = add nuw nsw i32 %2746, %2745
  %2748 = icmp eq i32 %2747, 2
  %2749 = zext i1 %2748 to i8
  store i8 %2749, i8* %43, align 1, !tbaa !2450
  %.v173 = select i1 %2740, i64 154, i64 32
  %2750 = add i64 %3862, %.v173
  store i64 %2750, i64* %57, align 8, !tbaa !2428
  br i1 %2740, label %block_400d91, label %block_400d17

block_400fa3:                                     ; preds = %block_400ec6
  %2751 = sext i32 %3156 to i64
  store i64 %2751, i64* %RCX, align 8, !tbaa !2428
  %2752 = shl nsw i64 %2751, 2
  %2753 = add i64 %3150, -1248
  %2754 = add i64 %2753, %2752
  %2755 = add i64 %3149, 17
  store i64 %2755, i64* %PC, align 8
  %2756 = inttoptr i64 %2754 to i32*
  %2757 = load i32, i32* %2756, align 4
  %2758 = sext i32 %2757 to i64
  store i64 %2758, i64* %RCX, align 8, !tbaa !2428
  %2759 = shl nsw i64 %2758, 2
  %2760 = add i64 %2759, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %2761 = add i64 %3149, 24
  store i64 %2761, i64* %PC, align 8
  %2762 = inttoptr i64 %2760 to i32*
  %2763 = load i32, i32* %2762, align 4
  %2764 = zext i32 %2763 to i64
  store i64 %2764, i64* %RAX, align 8, !tbaa !2428
  %2765 = add i64 %3149, 27
  store i64 %2765, i64* %PC, align 8
  %2766 = load i32, i32* %3153, align 4
  %2767 = add i32 %2766, 1
  %2768 = zext i32 %2767 to i64
  store i64 %2768, i64* %RDX, align 8, !tbaa !2428
  %2769 = icmp eq i32 %2766, -1
  %2770 = icmp eq i32 %2767, 0
  %2771 = or i1 %2769, %2770
  %2772 = zext i1 %2771 to i8
  store i8 %2772, i8* %18, align 1, !tbaa !2432
  %2773 = and i32 %2767, 255
  %2774 = tail call i32 @llvm.ctpop.i32(i32 %2773) #8
  %2775 = trunc i32 %2774 to i8
  %2776 = and i8 %2775, 1
  %2777 = xor i8 %2776, 1
  store i8 %2777, i8* %25, align 1, !tbaa !2446
  %2778 = xor i32 %2766, %2767
  %2779 = lshr i32 %2778, 4
  %2780 = trunc i32 %2779 to i8
  %2781 = and i8 %2780, 1
  store i8 %2781, i8* %31, align 1, !tbaa !2447
  %2782 = icmp eq i32 %2767, 0
  %2783 = zext i1 %2782 to i8
  store i8 %2783, i8* %34, align 1, !tbaa !2448
  %2784 = lshr i32 %2767, 31
  %2785 = trunc i32 %2784 to i8
  store i8 %2785, i8* %37, align 1, !tbaa !2449
  %2786 = lshr i32 %2766, 31
  %2787 = xor i32 %2784, %2786
  %2788 = add nuw nsw i32 %2787, %2784
  %2789 = icmp eq i32 %2788, 2
  %2790 = zext i1 %2789 to i8
  store i8 %2790, i8* %43, align 1, !tbaa !2450
  %2791 = sext i32 %2767 to i64
  store i64 %2791, i64* %RCX, align 8, !tbaa !2428
  %2792 = shl nsw i64 %2791, 2
  %2793 = add i64 %2753, %2792
  %2794 = add i64 %3149, 40
  store i64 %2794, i64* %PC, align 8
  %2795 = inttoptr i64 %2793 to i32*
  store i32 %2763, i32* %2795, align 4
  %.pre47 = load i64, i64* %PC, align 8
  %.pre48 = load i64, i64* %RBP, align 8
  br label %block_400fcb

block_4010f1:                                     ; preds = %block_4010e4
  %2796 = add i64 %3972, -16
  %2797 = add i64 %4001, 7
  store i64 %2797, i64* %PC, align 8
  %2798 = inttoptr i64 %2796 to i32*
  store i32 1, i32* %2798, align 4
  %2799 = load i64, i64* %RBP, align 8
  %2800 = add i64 %2799, -8
  %2801 = load i64, i64* %PC, align 8
  %2802 = add i64 %2801, 7
  store i64 %2802, i64* %PC, align 8
  %2803 = inttoptr i64 %2800 to i32*
  store i32 1, i32* %2803, align 4
  %.pre53 = load i64, i64* %PC, align 8
  br label %block_4010ff

block_400d91:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_400cf7
  %2804 = phi i64 [ %2750, %block_400cf7 ], [ %.pre38, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.35, %block_400cf7 ], [ %4374, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %2805 = load i64, i64* %RBP, align 8
  %2806 = add i64 %2805, -4
  %2807 = add i64 %2804, 8
  store i64 %2807, i64* %PC, align 8
  %2808 = inttoptr i64 %2806 to i32*
  %2809 = load i32, i32* %2808, align 4
  %2810 = add i32 %2809, 1
  %2811 = zext i32 %2810 to i64
  store i64 %2811, i64* %RAX, align 8, !tbaa !2428
  %2812 = icmp eq i32 %2809, -1
  %2813 = icmp eq i32 %2810, 0
  %2814 = or i1 %2812, %2813
  %2815 = zext i1 %2814 to i8
  store i8 %2815, i8* %18, align 1, !tbaa !2432
  %2816 = and i32 %2810, 255
  %2817 = tail call i32 @llvm.ctpop.i32(i32 %2816) #8
  %2818 = trunc i32 %2817 to i8
  %2819 = and i8 %2818, 1
  %2820 = xor i8 %2819, 1
  store i8 %2820, i8* %25, align 1, !tbaa !2446
  %2821 = xor i32 %2809, %2810
  %2822 = lshr i32 %2821, 4
  %2823 = trunc i32 %2822 to i8
  %2824 = and i8 %2823, 1
  store i8 %2824, i8* %31, align 1, !tbaa !2447
  %2825 = icmp eq i32 %2810, 0
  %2826 = zext i1 %2825 to i8
  store i8 %2826, i8* %34, align 1, !tbaa !2448
  %2827 = lshr i32 %2810, 31
  %2828 = trunc i32 %2827 to i8
  store i8 %2828, i8* %37, align 1, !tbaa !2449
  %2829 = lshr i32 %2809, 31
  %2830 = xor i32 %2827, %2829
  %2831 = add nuw nsw i32 %2830, %2827
  %2832 = icmp eq i32 %2831, 2
  %2833 = zext i1 %2832 to i8
  store i8 %2833, i8* %43, align 1, !tbaa !2450
  %2834 = add i64 %2804, 14
  store i64 %2834, i64* %PC, align 8
  store i32 %2810, i32* %2808, align 4
  %2835 = load i64, i64* %PC, align 8
  %2836 = add i64 %2835, -188
  store i64 %2836, i64* %57, align 8, !tbaa !2428
  br label %block_400ce3

block_400edf:                                     ; preds = %block_400ec6
  %2837 = add i64 %3150, -4
  %2838 = add i64 %3149, 9
  store i64 %2838, i64* %PC, align 8
  %2839 = inttoptr i64 %2837 to i32*
  %2840 = load i32, i32* %2839, align 4
  %2841 = sub i32 %3156, %2840
  %2842 = zext i32 %2841 to i64
  store i64 %2842, i64* %RAX, align 8, !tbaa !2428
  %2843 = icmp ult i32 %3156, %2840
  %2844 = zext i1 %2843 to i8
  store i8 %2844, i8* %18, align 1, !tbaa !2432
  %2845 = and i32 %2841, 255
  %2846 = tail call i32 @llvm.ctpop.i32(i32 %2845) #8
  %2847 = trunc i32 %2846 to i8
  %2848 = and i8 %2847, 1
  %2849 = xor i8 %2848, 1
  store i8 %2849, i8* %25, align 1, !tbaa !2446
  %2850 = xor i32 %2840, %3156
  %2851 = xor i32 %2850, %2841
  %2852 = lshr i32 %2851, 4
  %2853 = trunc i32 %2852 to i8
  %2854 = and i8 %2853, 1
  store i8 %2854, i8* %31, align 1, !tbaa !2447
  %2855 = icmp eq i32 %2841, 0
  %2856 = zext i1 %2855 to i8
  store i8 %2856, i8* %34, align 1, !tbaa !2448
  %2857 = lshr i32 %2841, 31
  %2858 = trunc i32 %2857 to i8
  store i8 %2858, i8* %37, align 1, !tbaa !2449
  %2859 = lshr i32 %2840, 31
  %2860 = xor i32 %2859, %3173
  %2861 = xor i32 %2857, %3173
  %2862 = add nuw nsw i32 %2861, %2860
  %2863 = icmp eq i32 %2862, 2
  %2864 = zext i1 %2863 to i8
  store i8 %2864, i8* %43, align 1, !tbaa !2450
  %2865 = sext i32 %2841 to i64
  store i64 %2865, i64* %RCX, align 8, !tbaa !2428
  %2866 = shl nsw i64 %2865, 2
  %2867 = add i64 %3150, -1488
  %2868 = add i64 %2867, %2866
  %2869 = add i64 %3149, 20
  store i64 %2869, i64* %PC, align 8
  %2870 = inttoptr i64 %2868 to i32*
  %2871 = load i32, i32* %2870, align 4
  %2872 = add i32 %2871, 1
  %2873 = icmp ne i32 %2871, -1
  %2874 = zext i1 %2873 to i8
  store i8 %2874, i8* %18, align 1, !tbaa !2432
  %2875 = and i32 %2872, 255
  %2876 = tail call i32 @llvm.ctpop.i32(i32 %2875) #8
  %2877 = trunc i32 %2876 to i8
  %2878 = and i8 %2877, 1
  %2879 = xor i8 %2878, 1
  store i8 %2879, i8* %25, align 1, !tbaa !2446
  %2880 = xor i32 %2871, 16
  %2881 = xor i32 %2872, %2880
  %2882 = lshr i32 %2881, 4
  %2883 = trunc i32 %2882 to i8
  %2884 = and i8 %2883, 1
  store i8 %2884, i8* %31, align 1, !tbaa !2447
  %2885 = icmp eq i32 %2872, 0
  %2886 = zext i1 %2885 to i8
  store i8 %2886, i8* %34, align 1, !tbaa !2448
  %2887 = lshr i32 %2872, 31
  %2888 = trunc i32 %2887 to i8
  store i8 %2888, i8* %37, align 1, !tbaa !2449
  %2889 = lshr i32 %2871, 31
  %2890 = xor i32 %2889, 1
  %2891 = xor i32 %2887, %2889
  %2892 = add nuw nsw i32 %2891, %2890
  %2893 = icmp eq i32 %2892, 2
  %2894 = zext i1 %2893 to i8
  store i8 %2894, i8* %43, align 1, !tbaa !2450
  %.v122 = select i1 %2885, i64 177, i64 26
  %2895 = add i64 %3149, %.v122
  store i64 %2895, i64* %57, align 8, !tbaa !2428
  br i1 %2885, label %block_400f90, label %block_400ef9

block_400bc7:                                     ; preds = %block_400bb4
  %2896 = add i64 %3046, 3
  store i64 %2896, i64* %PC, align 8
  %2897 = inttoptr i64 %3047 to i32*
  %2898 = load i32, i32* %2897, align 4
  %2899 = add i32 %2898, -1
  %2900 = zext i32 %2899 to i64
  store i64 %2900, i64* %RAX, align 8, !tbaa !2428
  %2901 = icmp ne i32 %2898, 0
  %2902 = zext i1 %2901 to i8
  store i8 %2902, i8* %18, align 1, !tbaa !2432
  %2903 = and i32 %2899, 255
  %2904 = tail call i32 @llvm.ctpop.i32(i32 %2903) #8
  %2905 = trunc i32 %2904 to i8
  %2906 = and i8 %2905, 1
  %2907 = xor i8 %2906, 1
  store i8 %2907, i8* %25, align 1, !tbaa !2446
  %2908 = xor i32 %2898, 16
  %2909 = xor i32 %2899, %2908
  %2910 = lshr i32 %2909, 4
  %2911 = trunc i32 %2910 to i8
  %2912 = and i8 %2911, 1
  store i8 %2912, i8* %31, align 1, !tbaa !2447
  %2913 = icmp eq i32 %2899, 0
  %2914 = zext i1 %2913 to i8
  store i8 %2914, i8* %34, align 1, !tbaa !2448
  %2915 = lshr i32 %2899, 31
  %2916 = trunc i32 %2915 to i8
  store i8 %2916, i8* %37, align 1, !tbaa !2449
  %2917 = lshr i32 %2898, 31
  %2918 = xor i32 %2915, %2917
  %2919 = xor i32 %2915, 1
  %2920 = add nuw nsw i32 %2918, %2919
  %2921 = icmp eq i32 %2920, 2
  %2922 = zext i1 %2921 to i8
  store i8 %2922, i8* %43, align 1, !tbaa !2450
  %2923 = add i64 %3046, 9
  store i64 %2923, i64* %PC, align 8
  store i32 %2899, i32* %2897, align 4
  %2924 = load i64, i64* %PC, align 8
  %2925 = add i64 %2924, -69
  store i64 %2925, i64* %57, align 8, !tbaa !2428
  br label %block_400b8b

block_4010ff:                                     ; preds = %block_40116d, %block_4010f1
  %2926 = phi i64 [ %.pre53, %block_4010f1 ], [ %3023, %block_40116d ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.37, %block_4010f1 ], [ %MEMORY.24, %block_40116d ]
  %2927 = load i64, i64* %RBP, align 8
  %2928 = add i64 %2927, -8
  %2929 = add i64 %2926, 3
  store i64 %2929, i64* %PC, align 8
  %2930 = inttoptr i64 %2928 to i32*
  %2931 = load i32, i32* %2930, align 4
  %2932 = zext i32 %2931 to i64
  store i64 %2932, i64* %RAX, align 8, !tbaa !2428
  %2933 = add i64 %2927, -12
  %2934 = add i64 %2926, 7
  store i64 %2934, i64* %PC, align 8
  %2935 = inttoptr i64 %2933 to i32*
  %2936 = load i32, i32* %2935, align 4
  %2937 = sext i32 %2936 to i64
  store i64 %2937, i64* %RCX, align 8, !tbaa !2428
  %2938 = shl nsw i64 %2937, 2
  %2939 = add i64 %2927, -1328
  %2940 = add i64 %2939, %2938
  %2941 = add i64 %2926, 14
  store i64 %2941, i64* %PC, align 8
  %2942 = inttoptr i64 %2940 to i32*
  %2943 = load i32, i32* %2942, align 4
  %2944 = sub i32 %2931, %2943
  %2945 = icmp ult i32 %2931, %2943
  %2946 = zext i1 %2945 to i8
  store i8 %2946, i8* %18, align 1, !tbaa !2432
  %2947 = and i32 %2944, 255
  %2948 = tail call i32 @llvm.ctpop.i32(i32 %2947) #8
  %2949 = trunc i32 %2948 to i8
  %2950 = and i8 %2949, 1
  %2951 = xor i8 %2950, 1
  store i8 %2951, i8* %25, align 1, !tbaa !2446
  %2952 = xor i32 %2943, %2931
  %2953 = xor i32 %2952, %2944
  %2954 = lshr i32 %2953, 4
  %2955 = trunc i32 %2954 to i8
  %2956 = and i8 %2955, 1
  store i8 %2956, i8* %31, align 1, !tbaa !2447
  %2957 = icmp eq i32 %2944, 0
  %2958 = zext i1 %2957 to i8
  store i8 %2958, i8* %34, align 1, !tbaa !2448
  %2959 = lshr i32 %2944, 31
  %2960 = trunc i32 %2959 to i8
  store i8 %2960, i8* %37, align 1, !tbaa !2449
  %2961 = lshr i32 %2931, 31
  %2962 = lshr i32 %2943, 31
  %2963 = xor i32 %2962, %2961
  %2964 = xor i32 %2959, %2961
  %2965 = add nuw nsw i32 %2964, %2963
  %2966 = icmp eq i32 %2965, 2
  %2967 = zext i1 %2966 to i8
  store i8 %2967, i8* %43, align 1, !tbaa !2450
  %2968 = icmp ne i8 %2960, 0
  %2969 = xor i1 %2968, %2966
  %.demorgan134 = or i1 %2957, %2969
  %.v135 = select i1 %.demorgan134, i64 20, i64 129
  %2970 = add i64 %2926, %.v135
  store i64 %2970, i64* %57, align 8, !tbaa !2428
  br i1 %.demorgan134, label %block_401113, label %block_401180

block_4016de:                                     ; preds = %block_4014b1
  %2971 = add i64 %5416, 117
  br label %block_401753

block_4017f3:                                     ; preds = %block_4017e1
  %2972 = add i64 %3268, 12
  store i64 %2972, i64* %PC, align 8
  %2973 = inttoptr i64 %3273 to i32*
  %2974 = load i32, i32* %2973, align 4
  %2975 = sext i32 %2974 to i64
  store i64 %2975, i64* %RAX, align 8, !tbaa !2428
  %2976 = shl nsw i64 %2975, 2
  %2977 = add i64 %2976, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %2978 = add i64 %3268, 19
  store i64 %2978, i64* %PC, align 8
  %2979 = inttoptr i64 %2977 to i32*
  %2980 = load i32, i32* %2979, align 4
  %2981 = zext i32 %2980 to i64
  store i64 %2981, i64* %RCX, align 8, !tbaa !2428
  %2982 = add i64 %3268, 23
  store i64 %2982, i64* %PC, align 8
  %2983 = load i32, i32* %276, align 4
  %2984 = sext i32 %2983 to i64
  store i64 %2984, i64* %RAX, align 8, !tbaa !2428
  %2985 = shl nsw i64 %2984, 2
  %2986 = add i64 %2985, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %2987 = add i64 %3268, 30
  store i64 %2987, i64* %PC, align 8
  %2988 = inttoptr i64 %2986 to i32*
  store i32 %2980, i32* %2988, align 4
  %2989 = load i64, i64* %PC, align 8
  %2990 = add i64 %2989, 20
  store i64 %2990, i64* %57, align 8, !tbaa !2428
  br label %block_401825

block_40116d:                                     ; preds = %block_401113, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3
  %2991 = phi i64 [ %2927, %block_401113 ], [ %.pre58, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3 ]
  %2992 = phi i64 [ %2334, %block_401113 ], [ %.pre57, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3 ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.23, %block_401113 ], [ %2023, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3 ]
  %2993 = add i64 %2991, -8
  %2994 = add i64 %2992, 8
  store i64 %2994, i64* %PC, align 8
  %2995 = inttoptr i64 %2993 to i32*
  %2996 = load i32, i32* %2995, align 4
  %2997 = add i32 %2996, 1
  %2998 = zext i32 %2997 to i64
  store i64 %2998, i64* %RAX, align 8, !tbaa !2428
  %2999 = icmp eq i32 %2996, -1
  %3000 = icmp eq i32 %2997, 0
  %3001 = or i1 %2999, %3000
  %3002 = zext i1 %3001 to i8
  store i8 %3002, i8* %18, align 1, !tbaa !2432
  %3003 = and i32 %2997, 255
  %3004 = tail call i32 @llvm.ctpop.i32(i32 %3003) #8
  %3005 = trunc i32 %3004 to i8
  %3006 = and i8 %3005, 1
  %3007 = xor i8 %3006, 1
  store i8 %3007, i8* %25, align 1, !tbaa !2446
  %3008 = xor i32 %2996, %2997
  %3009 = lshr i32 %3008, 4
  %3010 = trunc i32 %3009 to i8
  %3011 = and i8 %3010, 1
  store i8 %3011, i8* %31, align 1, !tbaa !2447
  %3012 = icmp eq i32 %2997, 0
  %3013 = zext i1 %3012 to i8
  store i8 %3013, i8* %34, align 1, !tbaa !2448
  %3014 = lshr i32 %2997, 31
  %3015 = trunc i32 %3014 to i8
  store i8 %3015, i8* %37, align 1, !tbaa !2449
  %3016 = lshr i32 %2996, 31
  %3017 = xor i32 %3014, %3016
  %3018 = add nuw nsw i32 %3017, %3014
  %3019 = icmp eq i32 %3018, 2
  %3020 = zext i1 %3019 to i8
  store i8 %3020, i8* %43, align 1, !tbaa !2450
  %3021 = add i64 %2992, 14
  store i64 %3021, i64* %PC, align 8
  store i32 %2997, i32* %2995, align 4
  %3022 = load i64, i64* %PC, align 8
  %3023 = add i64 %3022, -124
  store i64 %3023, i64* %57, align 8, !tbaa !2428
  br label %block_4010ff

block_400cdc:                                     ; preds = %block_400ca2
  %3024 = add i64 %3556, 7
  store i64 %3024, i64* %PC, align 8
  store i32 0, i32* %3530, align 4
  %.pre35 = load i64, i64* %PC, align 8
  br label %block_400ce3

block_4010d3:                                     ; preds = %block_40108d
  %3025 = add i64 %3687, -1492
  %3026 = add i64 %3730, 10
  store i64 %3026, i64* %PC, align 8
  %3027 = inttoptr i64 %3025 to i32*
  store i32 0, i32* %3027, align 4
  %3028 = load i64, i64* %RBP, align 8
  %3029 = add i64 %3028, -4
  %3030 = load i64, i64* %PC, align 8
  %3031 = add i64 %3030, 7
  store i64 %3031, i64* %PC, align 8
  %3032 = inttoptr i64 %3029 to i32*
  store i32 1, i32* %3032, align 4
  %.pre52 = load i64, i64* %PC, align 8
  br label %block_4010e4

block_400bb4:                                     ; preds = %block_400b8b, %block_400ba7
  %3033 = phi i64 [ %4651, %block_400b8b ], [ %.pre28, %block_400ba7 ]
  %3034 = load i64, i64* %RBP, align 8
  %3035 = add i64 %3034, -2693
  %3036 = add i64 %3033, 6
  store i64 %3036, i64* %PC, align 8
  %3037 = inttoptr i64 %3035 to i8*
  %3038 = load i8, i8* %3037, align 1
  store i8 %3038, i8* %AL, align 1, !tbaa !2451
  %3039 = and i8 %3038, 1
  store i8 0, i8* %18, align 1, !tbaa !2432
  %3040 = zext i8 %3039 to i32
  %3041 = tail call i32 @llvm.ctpop.i32(i32 %3040) #8
  %3042 = trunc i32 %3041 to i8
  %3043 = xor i8 %3042, 1
  store i8 %3043, i8* %25, align 1, !tbaa !2446
  %3044 = xor i8 %3039, 1
  store i8 %3044, i8* %34, align 1, !tbaa !2448
  store i8 0, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 0, i8* %31, align 1, !tbaa !2447
  %3045 = icmp eq i8 %3044, 0
  %.v164 = select i1 %3045, i64 19, i64 14
  %3046 = add i64 %3033, %.v164
  store i64 %3046, i64* %57, align 8, !tbaa !2428
  %3047 = add i64 %3034, -16
  br i1 %3045, label %block_400bc7, label %block_400bc2

block_4016cb:                                     ; preds = %block_401572, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7
  %3048 = phi i64 [ %1875, %block_401572 ], [ %.pre92, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7 ]
  %3049 = phi i64 [ %2686, %block_401572 ], [ %.pre91, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7 ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.19, %block_401572 ], [ %802, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7 ]
  %3050 = add i64 %3048, -4
  %3051 = add i64 %3049, 8
  store i64 %3051, i64* %PC, align 8
  %3052 = inttoptr i64 %3050 to i32*
  %3053 = load i32, i32* %3052, align 4
  %3054 = add i32 %3053, 1
  %3055 = zext i32 %3054 to i64
  store i64 %3055, i64* %RAX, align 8, !tbaa !2428
  %3056 = icmp eq i32 %3053, -1
  %3057 = icmp eq i32 %3054, 0
  %3058 = or i1 %3056, %3057
  %3059 = zext i1 %3058 to i8
  store i8 %3059, i8* %18, align 1, !tbaa !2432
  %3060 = and i32 %3054, 255
  %3061 = tail call i32 @llvm.ctpop.i32(i32 %3060) #8
  %3062 = trunc i32 %3061 to i8
  %3063 = and i8 %3062, 1
  %3064 = xor i8 %3063, 1
  store i8 %3064, i8* %25, align 1, !tbaa !2446
  %3065 = xor i32 %3053, %3054
  %3066 = lshr i32 %3065, 4
  %3067 = trunc i32 %3066 to i8
  %3068 = and i8 %3067, 1
  store i8 %3068, i8* %31, align 1, !tbaa !2447
  %3069 = icmp eq i32 %3054, 0
  %3070 = zext i1 %3069 to i8
  store i8 %3070, i8* %34, align 1, !tbaa !2448
  %3071 = lshr i32 %3054, 31
  %3072 = trunc i32 %3071 to i8
  store i8 %3072, i8* %37, align 1, !tbaa !2449
  %3073 = lshr i32 %3053, 31
  %3074 = xor i32 %3071, %3073
  %3075 = add nuw nsw i32 %3074, %3071
  %3076 = icmp eq i32 %3075, 2
  %3077 = zext i1 %3076 to i8
  store i8 %3077, i8* %43, align 1, !tbaa !2450
  %3078 = add i64 %3049, 14
  store i64 %3078, i64* %PC, align 8
  store i32 %3054, i32* %3052, align 4
  %3079 = load i64, i64* %PC, align 8
  %3080 = add i64 %3079, -552
  store i64 %3080, i64* %57, align 8, !tbaa !2428
  br label %block_4014b1

block_400ec6:                                     ; preds = %block_400ebf, %block_400f90
  %3081 = phi i64 [ %.pre41, %block_400ebf ], [ %1102, %block_400f90 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.43, %block_400ebf ], [ %MEMORY.7, %block_400f90 ]
  %3082 = load i64, i64* %RBP, align 8
  %3083 = add i64 %3082, -4
  %3084 = add i64 %3081, 3
  store i64 %3084, i64* %PC, align 8
  %3085 = inttoptr i64 %3083 to i32*
  %3086 = load i32, i32* %3085, align 4
  %3087 = zext i32 %3086 to i64
  store i64 %3087, i64* %RAX, align 8, !tbaa !2428
  %3088 = add i64 %3082, -12
  %3089 = add i64 %3081, 6
  store i64 %3089, i64* %PC, align 8
  %3090 = inttoptr i64 %3088 to i32*
  %3091 = load i32, i32* %3090, align 4
  %3092 = add i32 %3091, 1
  %3093 = zext i32 %3092 to i64
  store i64 %3093, i64* %RCX, align 8, !tbaa !2428
  %3094 = icmp eq i32 %3091, -1
  %3095 = icmp eq i32 %3092, 0
  %3096 = or i1 %3094, %3095
  %3097 = zext i1 %3096 to i8
  store i8 %3097, i8* %18, align 1, !tbaa !2432
  %3098 = and i32 %3092, 255
  %3099 = tail call i32 @llvm.ctpop.i32(i32 %3098) #8
  %3100 = trunc i32 %3099 to i8
  %3101 = and i8 %3100, 1
  %3102 = xor i8 %3101, 1
  store i8 %3102, i8* %25, align 1, !tbaa !2446
  %3103 = xor i32 %3091, %3092
  %3104 = lshr i32 %3103, 4
  %3105 = trunc i32 %3104 to i8
  %3106 = and i8 %3105, 1
  store i8 %3106, i8* %31, align 1, !tbaa !2447
  %3107 = icmp eq i32 %3092, 0
  %3108 = zext i1 %3107 to i8
  store i8 %3108, i8* %34, align 1, !tbaa !2448
  %3109 = lshr i32 %3092, 31
  %3110 = trunc i32 %3109 to i8
  store i8 %3110, i8* %37, align 1, !tbaa !2449
  %3111 = lshr i32 %3091, 31
  %3112 = xor i32 %3109, %3111
  %3113 = add nuw nsw i32 %3112, %3109
  %3114 = icmp eq i32 %3113, 2
  %3115 = zext i1 %3114 to i8
  store i8 %3115, i8* %43, align 1, !tbaa !2450
  %3116 = sext i32 %3092 to i64
  store i64 %3116, i64* %RDX, align 8, !tbaa !2428
  %3117 = shl nsw i64 %3116, 2
  %3118 = add i64 %3082, -1328
  %3119 = add i64 %3118, %3117
  %3120 = add i64 %3081, 19
  store i64 %3120, i64* %PC, align 8
  %3121 = inttoptr i64 %3119 to i32*
  %3122 = load i32, i32* %3121, align 4
  %3123 = sub i32 %3086, %3122
  %3124 = icmp ult i32 %3086, %3122
  %3125 = zext i1 %3124 to i8
  store i8 %3125, i8* %18, align 1, !tbaa !2432
  %3126 = and i32 %3123, 255
  %3127 = tail call i32 @llvm.ctpop.i32(i32 %3126) #8
  %3128 = trunc i32 %3127 to i8
  %3129 = and i8 %3128, 1
  %3130 = xor i8 %3129, 1
  store i8 %3130, i8* %25, align 1, !tbaa !2446
  %3131 = xor i32 %3122, %3086
  %3132 = xor i32 %3131, %3123
  %3133 = lshr i32 %3132, 4
  %3134 = trunc i32 %3133 to i8
  %3135 = and i8 %3134, 1
  store i8 %3135, i8* %31, align 1, !tbaa !2447
  %3136 = icmp eq i32 %3123, 0
  %3137 = zext i1 %3136 to i8
  store i8 %3137, i8* %34, align 1, !tbaa !2448
  %3138 = lshr i32 %3123, 31
  %3139 = trunc i32 %3138 to i8
  store i8 %3139, i8* %37, align 1, !tbaa !2449
  %3140 = lshr i32 %3086, 31
  %3141 = lshr i32 %3122, 31
  %3142 = xor i32 %3141, %3140
  %3143 = xor i32 %3138, %3140
  %3144 = add nuw nsw i32 %3143, %3142
  %3145 = icmp eq i32 %3144, 2
  %3146 = zext i1 %3145 to i8
  store i8 %3146, i8* %43, align 1, !tbaa !2450
  %3147 = icmp ne i8 %3139, 0
  %3148 = xor i1 %3147, %3145
  %.demorgan120 = or i1 %3136, %3148
  %.v121 = select i1 %.demorgan120, i64 25, i64 221
  %3149 = add i64 %3081, %.v121
  %3150 = load i64, i64* %RBP, align 8
  %3151 = add i64 %3150, -12
  %3152 = add i64 %3149, 3
  store i64 %3152, i64* %PC, align 8
  %3153 = inttoptr i64 %3151 to i32*
  %3154 = load i32, i32* %3153, align 4
  %3155 = add i64 %3149, 6
  store i64 %3155, i64* %PC, align 8
  %3156 = add i32 %3154, 1
  %3157 = zext i32 %3156 to i64
  store i64 %3157, i64* %RAX, align 8, !tbaa !2428
  %3158 = icmp eq i32 %3154, -1
  %3159 = icmp eq i32 %3156, 0
  %3160 = or i1 %3158, %3159
  %3161 = zext i1 %3160 to i8
  store i8 %3161, i8* %18, align 1, !tbaa !2432
  %3162 = and i32 %3156, 255
  %3163 = tail call i32 @llvm.ctpop.i32(i32 %3162) #8
  %3164 = trunc i32 %3163 to i8
  %3165 = and i8 %3164, 1
  %3166 = xor i8 %3165, 1
  store i8 %3166, i8* %25, align 1, !tbaa !2446
  %3167 = xor i32 %3154, %3156
  %3168 = lshr i32 %3167, 4
  %3169 = trunc i32 %3168 to i8
  %3170 = and i8 %3169, 1
  store i8 %3170, i8* %31, align 1, !tbaa !2447
  %3171 = icmp eq i32 %3156, 0
  %3172 = zext i1 %3171 to i8
  store i8 %3172, i8* %34, align 1, !tbaa !2448
  %3173 = lshr i32 %3156, 31
  %3174 = trunc i32 %3173 to i8
  store i8 %3174, i8* %37, align 1, !tbaa !2449
  %3175 = lshr i32 %3154, 31
  %3176 = xor i32 %3173, %3175
  %3177 = add nuw nsw i32 %3176, %3173
  %3178 = icmp eq i32 %3177, 2
  %3179 = zext i1 %3178 to i8
  store i8 %3179, i8* %43, align 1, !tbaa !2450
  br i1 %.demorgan120, label %block_400edf, label %block_400fa3

block_4012d0:                                     ; preds = %block_40128d, %block_40127b
  %3180 = phi i64 [ %3817, %block_40127b ], [ %3344, %block_40128d ]
  %3181 = phi i64 [ %3782, %block_40127b ], [ %.pre63, %block_40128d ]
  %3182 = add i64 %3181, -4
  %3183 = add i64 %3180, 4
  store i64 %3183, i64* %PC, align 8
  %3184 = inttoptr i64 %3182 to i32*
  %3185 = load i32, i32* %3184, align 4
  %3186 = sext i32 %3185 to i64
  store i64 %3186, i64* %RAX, align 8, !tbaa !2428
  %3187 = shl nsw i64 %3186, 2
  %3188 = add i64 %3181, -1488
  %3189 = add i64 %3188, %3187
  %3190 = add i64 %3180, 12
  store i64 %3190, i64* %PC, align 8
  %3191 = inttoptr i64 %3189 to i32*
  %3192 = load i32, i32* %3191, align 4
  %3193 = add i32 %3192, 1
  %3194 = icmp ne i32 %3192, -1
  %3195 = zext i1 %3194 to i8
  store i8 %3195, i8* %18, align 1, !tbaa !2432
  %3196 = and i32 %3193, 255
  %3197 = tail call i32 @llvm.ctpop.i32(i32 %3196) #8
  %3198 = trunc i32 %3197 to i8
  %3199 = and i8 %3198, 1
  %3200 = xor i8 %3199, 1
  store i8 %3200, i8* %25, align 1, !tbaa !2446
  %3201 = xor i32 %3192, 16
  %3202 = xor i32 %3193, %3201
  %3203 = lshr i32 %3202, 4
  %3204 = trunc i32 %3203 to i8
  %3205 = and i8 %3204, 1
  store i8 %3205, i8* %31, align 1, !tbaa !2447
  %3206 = icmp eq i32 %3193, 0
  %3207 = zext i1 %3206 to i8
  store i8 %3207, i8* %34, align 1, !tbaa !2448
  %3208 = lshr i32 %3193, 31
  %3209 = trunc i32 %3208 to i8
  store i8 %3209, i8* %37, align 1, !tbaa !2449
  %3210 = lshr i32 %3192, 31
  %3211 = xor i32 %3210, 1
  %3212 = xor i32 %3208, %3210
  %3213 = add nuw nsw i32 %3212, %3211
  %3214 = icmp eq i32 %3213, 2
  %3215 = zext i1 %3214 to i8
  store i8 %3215, i8* %43, align 1, !tbaa !2450
  %.v148 = select i1 %3206, i64 18, i64 99
  %3216 = add i64 %3180, %.v148
  store i64 %3216, i64* %57, align 8, !tbaa !2428
  br i1 %3206, label %block_4012e2, label %block_401333

block_4014c5:                                     ; preds = %block_4014b1
  %3217 = add i64 %5416, 4
  store i64 %3217, i64* %PC, align 8
  %3218 = load i32, i32* %5376, align 4
  %3219 = sext i32 %3218 to i64
  store i64 %3219, i64* %RAX, align 8, !tbaa !2428
  %3220 = shl nsw i64 %3219, 2
  %3221 = add i64 %5373, -1568
  %3222 = add i64 %3221, %3220
  %3223 = add i64 %5416, 12
  store i64 %3223, i64* %PC, align 8
  %3224 = inttoptr i64 %3222 to i32*
  %3225 = load i32, i32* %3224, align 4
  %3226 = sext i32 %3225 to i64
  store i64 %3226, i64* %RAX, align 8, !tbaa !2428
  %3227 = shl nsw i64 %3226, 2
  %3228 = add i64 %5373, -2640
  %3229 = add i64 %3228, %3227
  %3230 = add i64 %5416, 23
  store i64 %3230, i64* %PC, align 8
  %3231 = inttoptr i64 %3229 to i32*
  store i32 1, i32* %3231, align 4
  %3232 = load i64, i64* %RBP, align 8
  %3233 = add i64 %3232, -8
  %3234 = load i64, i64* %PC, align 8
  %3235 = add i64 %3234, 7
  store i64 %3235, i64* %PC, align 8
  %3236 = inttoptr i64 %3233 to i32*
  store i32 1, i32* %3236, align 4
  %.pre74 = load i64, i64* %PC, align 8
  br label %block_4014e3

block_4017e1:                                     ; preds = %block_4017d4
  %3237 = add i64 %302, 4
  store i64 %3237, i64* %PC, align 8
  %3238 = load i32, i32* %276, align 4
  %3239 = sext i32 %3238 to i64
  store i64 %3239, i64* %RAX, align 8, !tbaa !2428
  %3240 = shl nsw i64 %3239, 2
  %3241 = add i64 %3240, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %3242 = add i64 %302, 12
  store i64 %3242, i64* %PC, align 8
  %3243 = inttoptr i64 %3241 to i32*
  %3244 = load i32, i32* %3243, align 4
  %3245 = add i32 %3244, 1
  %3246 = icmp ne i32 %3244, -1
  %3247 = zext i1 %3246 to i8
  store i8 %3247, i8* %18, align 1, !tbaa !2432
  %3248 = and i32 %3245, 255
  %3249 = tail call i32 @llvm.ctpop.i32(i32 %3248) #8
  %3250 = trunc i32 %3249 to i8
  %3251 = and i8 %3250, 1
  %3252 = xor i8 %3251, 1
  store i8 %3252, i8* %25, align 1, !tbaa !2446
  %3253 = xor i32 %3244, 16
  %3254 = xor i32 %3245, %3253
  %3255 = lshr i32 %3254, 4
  %3256 = trunc i32 %3255 to i8
  %3257 = and i8 %3256, 1
  store i8 %3257, i8* %31, align 1, !tbaa !2447
  %3258 = icmp eq i32 %3245, 0
  %3259 = zext i1 %3258 to i8
  store i8 %3259, i8* %34, align 1, !tbaa !2448
  %3260 = lshr i32 %3245, 31
  %3261 = trunc i32 %3260 to i8
  store i8 %3261, i8* %37, align 1, !tbaa !2449
  %3262 = lshr i32 %3244, 31
  %3263 = xor i32 %3262, 1
  %3264 = xor i32 %3260, %3262
  %3265 = add nuw nsw i32 %3264, %3263
  %3266 = icmp eq i32 %3265, 2
  %3267 = zext i1 %3266 to i8
  store i8 %3267, i8* %43, align 1, !tbaa !2450
  %.v177 = select i1 %3258, i64 53, i64 18
  %3268 = add i64 %302, %.v177
  %3269 = add i64 %3268, 4
  store i64 %3269, i64* %PC, align 8
  %3270 = load i32, i32* %276, align 4
  %3271 = sext i32 %3270 to i64
  store i64 %3271, i64* %RAX, align 8, !tbaa !2428
  %3272 = shl nsw i64 %3271, 2
  %3273 = add i64 %3272, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  br i1 %3258, label %block_401816, label %block_4017f3

block_400ebf:                                     ; preds = %block_400e7e, %block_400eab
  %3274 = phi i64 [ %3779, %block_400e7e ], [ %.pre40, %block_400eab ]
  %3275 = load i64, i64* %RBP, align 8
  %3276 = add i64 %3275, -4
  %3277 = add i64 %3274, 7
  store i64 %3277, i64* %PC, align 8
  %3278 = inttoptr i64 %3276 to i32*
  store i32 1, i32* %3278, align 4
  %.pre41 = load i64, i64* %PC, align 8
  br label %block_400ec6

block_40128d:                                     ; preds = %block_40127b
  %3279 = add i64 %3782, -1168
  store i64 %3279, i64* %RAX, align 8, !tbaa !2428
  %3280 = add i64 %3782, -12
  %3281 = add i64 %3817, 11
  store i64 %3281, i64* %PC, align 8
  %3282 = inttoptr i64 %3280 to i32*
  %3283 = load i32, i32* %3282, align 4
  %3284 = sext i32 %3283 to i64
  %3285 = shl nsw i64 %3284, 6
  store i64 %3285, i64* %RCX, align 8, !tbaa !2428
  %3286 = lshr i64 %3284, 57
  %3287 = and i64 %3286, 1
  %3288 = add i64 %3285, %3279
  store i64 %3288, i64* %RAX, align 8, !tbaa !2428
  %3289 = icmp ult i64 %3288, %3279
  %3290 = icmp ult i64 %3288, %3285
  %3291 = or i1 %3289, %3290
  %3292 = zext i1 %3291 to i8
  store i8 %3292, i8* %18, align 1, !tbaa !2432
  %3293 = trunc i64 %3288 to i32
  %3294 = and i32 %3293, 255
  %3295 = tail call i32 @llvm.ctpop.i32(i32 %3294) #8
  %3296 = trunc i32 %3295 to i8
  %3297 = and i8 %3296, 1
  %3298 = xor i8 %3297, 1
  store i8 %3298, i8* %25, align 1, !tbaa !2446
  %3299 = xor i64 %3279, %3288
  %3300 = lshr i64 %3299, 4
  %3301 = trunc i64 %3300 to i8
  %3302 = and i8 %3301, 1
  store i8 %3302, i8* %31, align 1, !tbaa !2447
  %3303 = icmp eq i64 %3288, 0
  %3304 = zext i1 %3303 to i8
  store i8 %3304, i8* %34, align 1, !tbaa !2448
  %3305 = lshr i64 %3288, 63
  %3306 = trunc i64 %3305 to i8
  store i8 %3306, i8* %37, align 1, !tbaa !2449
  %3307 = lshr i64 %3279, 63
  %3308 = xor i64 %3305, %3307
  %3309 = xor i64 %3305, %3287
  %3310 = add nuw nsw i64 %3308, %3309
  %3311 = icmp eq i64 %3310, 2
  %3312 = zext i1 %3311 to i8
  store i8 %3312, i8* %43, align 1, !tbaa !2450
  %3313 = add i64 %3817, 22
  store i64 %3313, i64* %PC, align 8
  %3314 = load i32, i32* %3785, align 4
  %3315 = sext i32 %3314 to i64
  store i64 %3315, i64* %RCX, align 8, !tbaa !2428
  %3316 = shl nsw i64 %3315, 2
  %3317 = add i64 %3316, %3288
  %3318 = add i64 %3817, 26
  store i64 %3318, i64* %PC, align 8
  %3319 = inttoptr i64 %3317 to i32*
  %3320 = load i32, i32* %3319, align 4
  %3321 = add i32 %3320, 1
  %3322 = icmp ne i32 %3320, -1
  %3323 = zext i1 %3322 to i8
  store i8 %3323, i8* %18, align 1, !tbaa !2432
  %3324 = and i32 %3321, 255
  %3325 = tail call i32 @llvm.ctpop.i32(i32 %3324) #8
  %3326 = trunc i32 %3325 to i8
  %3327 = and i8 %3326, 1
  %3328 = xor i8 %3327, 1
  store i8 %3328, i8* %25, align 1, !tbaa !2446
  %3329 = xor i32 %3320, 16
  %3330 = xor i32 %3321, %3329
  %3331 = lshr i32 %3330, 4
  %3332 = trunc i32 %3331 to i8
  %3333 = and i8 %3332, 1
  store i8 %3333, i8* %31, align 1, !tbaa !2447
  %3334 = icmp eq i32 %3321, 0
  %3335 = zext i1 %3334 to i8
  store i8 %3335, i8* %34, align 1, !tbaa !2448
  %3336 = lshr i32 %3321, 31
  %3337 = trunc i32 %3336 to i8
  store i8 %3337, i8* %37, align 1, !tbaa !2449
  %3338 = lshr i32 %3320, 31
  %3339 = xor i32 %3338, 1
  %3340 = xor i32 %3336, %3338
  %3341 = add nuw nsw i32 %3340, %3339
  %3342 = icmp eq i32 %3341, 2
  %3343 = zext i1 %3342 to i8
  store i8 %3343, i8* %43, align 1, !tbaa !2450
  %.v147 = select i1 %3334, i64 32, i64 67
  %3344 = add i64 %3817, %.v147
  store i64 %3344, i64* %57, align 8, !tbaa !2428
  %.pre63 = load i64, i64* %RBP, align 8
  br i1 %3334, label %block_4012ad, label %block_4012d0

block_400ab9:                                     ; preds = %block_400a8a, %block_400ffe
  %3345 = phi i64 [ %.pre25, %block_400a8a ], [ %74, %block_400ffe ]
  %3346 = phi i64 [ %.pre24, %block_400a8a ], [ %62, %block_400ffe ]
  %MEMORY.30 = phi %struct.Memory* [ %MEMORY.15, %block_400a8a ], [ %MEMORY.40, %block_400ffe ]
  %3347 = add i64 %3346, -12
  %3348 = add i64 %3345, 3
  store i64 %3348, i64* %PC, align 8
  %3349 = inttoptr i64 %3347 to i32*
  %3350 = load i32, i32* %3349, align 4
  %3351 = add i32 %3350, 1
  %3352 = zext i32 %3351 to i64
  store i64 %3352, i64* %RAX, align 8, !tbaa !2428
  %3353 = icmp eq i32 %3350, -1
  %3354 = icmp eq i32 %3351, 0
  %3355 = or i1 %3353, %3354
  %3356 = zext i1 %3355 to i8
  store i8 %3356, i8* %18, align 1, !tbaa !2432
  %3357 = and i32 %3351, 255
  %3358 = tail call i32 @llvm.ctpop.i32(i32 %3357) #8
  %3359 = trunc i32 %3358 to i8
  %3360 = and i8 %3359, 1
  %3361 = xor i8 %3360, 1
  store i8 %3361, i8* %25, align 1, !tbaa !2446
  %3362 = xor i32 %3350, %3351
  %3363 = lshr i32 %3362, 4
  %3364 = trunc i32 %3363 to i8
  %3365 = and i8 %3364, 1
  store i8 %3365, i8* %31, align 1, !tbaa !2447
  %3366 = icmp eq i32 %3351, 0
  %3367 = zext i1 %3366 to i8
  store i8 %3367, i8* %34, align 1, !tbaa !2448
  %3368 = lshr i32 %3351, 31
  %3369 = trunc i32 %3368 to i8
  store i8 %3369, i8* %37, align 1, !tbaa !2449
  %3370 = lshr i32 %3350, 31
  %3371 = xor i32 %3368, %3370
  %3372 = add nuw nsw i32 %3371, %3368
  %3373 = icmp eq i32 %3372, 2
  %3374 = zext i1 %3373 to i8
  store i8 %3374, i8* %43, align 1, !tbaa !2450
  %3375 = add i64 %3345, 9
  store i64 %3375, i64* %PC, align 8
  store i32 %3351, i32* %3349, align 4
  %3376 = load i64, i64* %RBP, align 8
  %3377 = add i64 %3376, -12
  %3378 = load i64, i64* %PC, align 8
  %3379 = add i64 %3378, 4
  store i64 %3379, i64* %PC, align 8
  %3380 = inttoptr i64 %3377 to i32*
  %3381 = load i32, i32* %3380, align 4
  %3382 = sext i32 %3381 to i64
  store i64 %3382, i64* %RCX, align 8, !tbaa !2428
  %3383 = shl nsw i64 %3382, 2
  %3384 = add i64 %3376, -1248
  %3385 = add i64 %3384, %3383
  %3386 = add i64 %3378, 12
  store i64 %3386, i64* %PC, align 8
  %3387 = inttoptr i64 %3385 to i32*
  %3388 = load i32, i32* %3387, align 4
  %3389 = add i32 %3388, 1
  %3390 = icmp ne i32 %3388, -1
  %3391 = zext i1 %3390 to i8
  store i8 %3391, i8* %18, align 1, !tbaa !2432
  %3392 = and i32 %3389, 255
  %3393 = tail call i32 @llvm.ctpop.i32(i32 %3392) #8
  %3394 = trunc i32 %3393 to i8
  %3395 = and i8 %3394, 1
  %3396 = xor i8 %3395, 1
  store i8 %3396, i8* %25, align 1, !tbaa !2446
  %3397 = xor i32 %3388, 16
  %3398 = xor i32 %3389, %3397
  %3399 = lshr i32 %3398, 4
  %3400 = trunc i32 %3399 to i8
  %3401 = and i8 %3400, 1
  store i8 %3401, i8* %31, align 1, !tbaa !2447
  %3402 = icmp eq i32 %3389, 0
  %3403 = zext i1 %3402 to i8
  store i8 %3403, i8* %34, align 1, !tbaa !2448
  %3404 = lshr i32 %3389, 31
  %3405 = trunc i32 %3404 to i8
  store i8 %3405, i8* %37, align 1, !tbaa !2449
  %3406 = lshr i32 %3388, 31
  %3407 = xor i32 %3406, 1
  %3408 = xor i32 %3404, %3406
  %3409 = add nuw nsw i32 %3408, %3407
  %3410 = icmp eq i32 %3409, 2
  %3411 = zext i1 %3410 to i8
  store i8 %3411, i8* %43, align 1, !tbaa !2450
  %.v115 = select i1 %3402, i64 18, i64 192
  %3412 = add i64 %3378, %.v115
  store i64 %3412, i64* %57, align 8, !tbaa !2428
  br i1 %3402, label %block_400ad4, label %block_400b82

block_4012ad:                                     ; preds = %block_40128d
  %3413 = add i64 %.pre63, -4
  %3414 = add i64 %3344, 4
  store i64 %3414, i64* %PC, align 8
  %3415 = inttoptr i64 %3413 to i32*
  %3416 = load i32, i32* %3415, align 4
  %3417 = sext i32 %3416 to i64
  store i64 %3417, i64* %RAX, align 8, !tbaa !2428
  %3418 = shl nsw i64 %3417, 2
  %3419 = add i64 %.pre63, -1488
  %3420 = add i64 %3419, %3418
  %3421 = add i64 %3344, 12
  store i64 %3421, i64* %PC, align 8
  %3422 = inttoptr i64 %3420 to i32*
  %3423 = load i32, i32* %3422, align 4
  %3424 = sext i32 %3423 to i64
  store i64 %3424, i64* %RAX, align 8, !tbaa !2428
  %3425 = shl nsw i64 %3424, 2
  %3426 = add i64 %3425, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %3427 = add i64 %3344, 19
  store i64 %3427, i64* %PC, align 8
  %3428 = inttoptr i64 %3426 to i32*
  %3429 = load i32, i32* %3428, align 4
  %3430 = zext i32 %3429 to i64
  store i64 %3430, i64* %RCX, align 8, !tbaa !2428
  %3431 = add i64 %3344, 23
  store i64 %3431, i64* %PC, align 8
  %3432 = load i32, i32* %3415, align 4
  %3433 = sext i32 %3432 to i64
  store i64 %3433, i64* %RAX, align 8, !tbaa !2428
  %3434 = shl nsw i64 %3433, 2
  %3435 = add i64 %.pre63, -1616
  %3436 = add i64 %3435, %3434
  %3437 = add i64 %3344, 30
  store i64 %3437, i64* %PC, align 8
  %3438 = inttoptr i64 %3436 to i32*
  store i32 %3429, i32* %3438, align 4
  %3439 = load i64, i64* %PC, align 8
  %3440 = add i64 %3439, 124
  br label %block_401347

block_4017c3:                                     ; preds = %block_40175f
  %3441 = add i64 %1314, 5
  br label %block_4017c8

block_400cac:                                     ; preds = %block_400ca2
  %3442 = add i64 %3527, -1168
  store i64 %3442, i64* %RAX, align 8, !tbaa !2428
  %3443 = add i64 %3527, -12
  %3444 = add i64 %3556, 10
  store i64 %3444, i64* %PC, align 8
  %3445 = inttoptr i64 %3443 to i32*
  %3446 = load i32, i32* %3445, align 4
  %3447 = add i32 %3446, 1
  %3448 = zext i32 %3447 to i64
  store i64 %3448, i64* %RCX, align 8, !tbaa !2428
  %3449 = sext i32 %3447 to i64
  %3450 = shl nsw i64 %3449, 6
  store i64 %3450, i64* %RDX, align 8, !tbaa !2428
  %3451 = lshr i64 %3449, 57
  %3452 = and i64 %3451, 1
  %3453 = add i64 %3450, %3442
  store i64 %3453, i64* %RAX, align 8, !tbaa !2428
  %3454 = icmp ult i64 %3453, %3442
  %3455 = icmp ult i64 %3453, %3450
  %3456 = or i1 %3454, %3455
  %3457 = zext i1 %3456 to i8
  store i8 %3457, i8* %18, align 1, !tbaa !2432
  %3458 = trunc i64 %3453 to i32
  %3459 = and i32 %3458, 255
  %3460 = tail call i32 @llvm.ctpop.i32(i32 %3459) #8
  %3461 = trunc i32 %3460 to i8
  %3462 = and i8 %3461, 1
  %3463 = xor i8 %3462, 1
  store i8 %3463, i8* %25, align 1, !tbaa !2446
  %3464 = xor i64 %3442, %3453
  %3465 = lshr i64 %3464, 4
  %3466 = trunc i64 %3465 to i8
  %3467 = and i8 %3466, 1
  store i8 %3467, i8* %31, align 1, !tbaa !2447
  %3468 = icmp eq i64 %3453, 0
  %3469 = zext i1 %3468 to i8
  store i8 %3469, i8* %34, align 1, !tbaa !2448
  %3470 = lshr i64 %3453, 63
  %3471 = trunc i64 %3470 to i8
  store i8 %3471, i8* %37, align 1, !tbaa !2449
  %3472 = lshr i64 %3442, 63
  %3473 = xor i64 %3470, %3472
  %3474 = xor i64 %3470, %3452
  %3475 = add nuw nsw i64 %3473, %3474
  %3476 = icmp eq i64 %3475, 2
  %3477 = zext i1 %3476 to i8
  store i8 %3477, i8* %43, align 1, !tbaa !2450
  %3478 = load i64, i64* %RBP, align 8
  %3479 = add i64 %3478, -4
  %3480 = add i64 %3556, 27
  store i64 %3480, i64* %PC, align 8
  %3481 = inttoptr i64 %3479 to i32*
  %3482 = load i32, i32* %3481, align 4
  %3483 = sext i32 %3482 to i64
  store i64 %3483, i64* %RDX, align 8, !tbaa !2428
  %3484 = shl nsw i64 %3483, 2
  %3485 = add i64 %3484, %3453
  %3486 = add i64 %3556, 34
  store i64 %3486, i64* %PC, align 8
  %3487 = inttoptr i64 %3485 to i32*
  store i32 0, i32* %3487, align 4
  %3488 = load i64, i64* %RBP, align 8
  %3489 = add i64 %3488, -4
  %3490 = load i64, i64* %PC, align 8
  %3491 = add i64 %3490, 3
  store i64 %3491, i64* %PC, align 8
  %3492 = inttoptr i64 %3489 to i32*
  %3493 = load i32, i32* %3492, align 4
  %3494 = add i32 %3493, 1
  %3495 = zext i32 %3494 to i64
  store i64 %3495, i64* %RAX, align 8, !tbaa !2428
  %3496 = icmp eq i32 %3493, -1
  %3497 = icmp eq i32 %3494, 0
  %3498 = or i1 %3496, %3497
  %3499 = zext i1 %3498 to i8
  store i8 %3499, i8* %18, align 1, !tbaa !2432
  %3500 = and i32 %3494, 255
  %3501 = tail call i32 @llvm.ctpop.i32(i32 %3500) #8
  %3502 = trunc i32 %3501 to i8
  %3503 = and i8 %3502, 1
  %3504 = xor i8 %3503, 1
  store i8 %3504, i8* %25, align 1, !tbaa !2446
  %3505 = xor i32 %3493, %3494
  %3506 = lshr i32 %3505, 4
  %3507 = trunc i32 %3506 to i8
  %3508 = and i8 %3507, 1
  store i8 %3508, i8* %31, align 1, !tbaa !2447
  %3509 = icmp eq i32 %3494, 0
  %3510 = zext i1 %3509 to i8
  store i8 %3510, i8* %34, align 1, !tbaa !2448
  %3511 = lshr i32 %3494, 31
  %3512 = trunc i32 %3511 to i8
  store i8 %3512, i8* %37, align 1, !tbaa !2449
  %3513 = lshr i32 %3493, 31
  %3514 = xor i32 %3511, %3513
  %3515 = add nuw nsw i32 %3514, %3511
  %3516 = icmp eq i32 %3515, 2
  %3517 = zext i1 %3516 to i8
  store i8 %3517, i8* %43, align 1, !tbaa !2450
  %3518 = add i64 %3490, 9
  store i64 %3518, i64* %PC, align 8
  store i32 %3494, i32* %3492, align 4
  %3519 = load i64, i64* %PC, align 8
  %3520 = add i64 %3519, -53
  store i64 %3520, i64* %57, align 8, !tbaa !2428
  br label %block_400ca2

block_4017cd:                                     ; preds = %block_400a16
  %3521 = add i64 %6061, 7
  store i64 %3521, i64* %PC, align 8
  store i32 0, i32* %1786, align 4
  %.pre97 = load i64, i64* %PC, align 8
  br label %block_4017d4

block_400eab:                                     ; preds = %block_400e67
  %3522 = add i64 %3951, -1248
  %3523 = add i64 %3920, 20
  store i64 %3523, i64* %PC, align 8
  %3524 = inttoptr i64 %3522 to i32*
  store i32 0, i32* %3524, align 4
  %.pre40 = load i64, i64* %PC, align 8
  br label %block_400ebf

block_4014aa:                                     ; preds = %block_401437
  %3525 = add i64 %1733, 7
  store i64 %3525, i64* %PC, align 8
  store i32 0, i32* %1707, align 4
  %.pre73 = load i64, i64* %PC, align 8
  br label %block_4014b1

block_400ca2:                                     ; preds = %block_400c9b, %block_400cac
  %3526 = phi i64 [ %.pre34, %block_400c9b ], [ %3520, %block_400cac ]
  %3527 = load i64, i64* %RBP, align 8
  %3528 = add i64 %3527, -4
  %3529 = add i64 %3526, 4
  store i64 %3529, i64* %PC, align 8
  %3530 = inttoptr i64 %3528 to i32*
  %3531 = load i32, i32* %3530, align 4
  %3532 = add i32 %3531, -16
  %3533 = icmp ult i32 %3531, 16
  %3534 = zext i1 %3533 to i8
  store i8 %3534, i8* %18, align 1, !tbaa !2432
  %3535 = and i32 %3532, 255
  %3536 = tail call i32 @llvm.ctpop.i32(i32 %3535) #8
  %3537 = trunc i32 %3536 to i8
  %3538 = and i8 %3537, 1
  %3539 = xor i8 %3538, 1
  store i8 %3539, i8* %25, align 1, !tbaa !2446
  %3540 = xor i32 %3531, 16
  %3541 = xor i32 %3540, %3532
  %3542 = lshr i32 %3541, 4
  %3543 = trunc i32 %3542 to i8
  %3544 = and i8 %3543, 1
  store i8 %3544, i8* %31, align 1, !tbaa !2447
  %3545 = icmp eq i32 %3532, 0
  %3546 = zext i1 %3545 to i8
  store i8 %3546, i8* %34, align 1, !tbaa !2448
  %3547 = lshr i32 %3532, 31
  %3548 = trunc i32 %3547 to i8
  store i8 %3548, i8* %37, align 1, !tbaa !2449
  %3549 = lshr i32 %3531, 31
  %3550 = xor i32 %3547, %3549
  %3551 = add nuw nsw i32 %3550, %3549
  %3552 = icmp eq i32 %3551, 2
  %3553 = zext i1 %3552 to i8
  store i8 %3553, i8* %43, align 1, !tbaa !2450
  %3554 = icmp ne i8 %3548, 0
  %3555 = xor i1 %3554, %3552
  %.v170 = select i1 %3555, i64 10, i64 58
  %3556 = add i64 %3526, %.v170
  store i64 %3556, i64* %57, align 8, !tbaa !2428
  br i1 %3555, label %block_400cac, label %block_400cdc

block_4010a1:                                     ; preds = %block_40108d
  %3557 = add i64 %3687, -1168
  store i64 %3557, i64* %RAX, align 8, !tbaa !2428
  %3558 = add i64 %3730, 11
  store i64 %3558, i64* %PC, align 8
  %3559 = load i32, i32* %3695, align 4
  %3560 = sext i32 %3559 to i64
  %3561 = shl nsw i64 %3560, 6
  store i64 %3561, i64* %RCX, align 8, !tbaa !2428
  %3562 = lshr i64 %3560, 57
  %3563 = and i64 %3562, 1
  %3564 = add i64 %3561, %3557
  store i64 %3564, i64* %RAX, align 8, !tbaa !2428
  %3565 = icmp ult i64 %3564, %3557
  %3566 = icmp ult i64 %3564, %3561
  %3567 = or i1 %3565, %3566
  %3568 = zext i1 %3567 to i8
  store i8 %3568, i8* %18, align 1, !tbaa !2432
  %3569 = trunc i64 %3564 to i32
  %3570 = and i32 %3569, 255
  %3571 = tail call i32 @llvm.ctpop.i32(i32 %3570) #8
  %3572 = trunc i32 %3571 to i8
  %3573 = and i8 %3572, 1
  %3574 = xor i8 %3573, 1
  store i8 %3574, i8* %25, align 1, !tbaa !2446
  %3575 = xor i64 %3557, %3564
  %3576 = lshr i64 %3575, 4
  %3577 = trunc i64 %3576 to i8
  %3578 = and i8 %3577, 1
  store i8 %3578, i8* %31, align 1, !tbaa !2447
  %3579 = icmp eq i64 %3564, 0
  %3580 = zext i1 %3579 to i8
  store i8 %3580, i8* %34, align 1, !tbaa !2448
  %3581 = lshr i64 %3564, 63
  %3582 = trunc i64 %3581 to i8
  store i8 %3582, i8* %37, align 1, !tbaa !2449
  %3583 = lshr i64 %3557, 63
  %3584 = xor i64 %3581, %3583
  %3585 = xor i64 %3581, %3563
  %3586 = add nuw nsw i64 %3584, %3585
  %3587 = icmp eq i64 %3586, 2
  %3588 = zext i1 %3587 to i8
  store i8 %3588, i8* %43, align 1, !tbaa !2450
  %3589 = add i64 %3730, 22
  store i64 %3589, i64* %PC, align 8
  %3590 = load i32, i32* %3690, align 4
  %3591 = sext i32 %3590 to i64
  store i64 %3591, i64* %RCX, align 8, !tbaa !2428
  %3592 = shl nsw i64 %3591, 2
  %3593 = add i64 %3592, %3564
  %3594 = add i64 %3730, 25
  store i64 %3594, i64* %PC, align 8
  %3595 = inttoptr i64 %3593 to i32*
  %3596 = load i32, i32* %3595, align 4
  %3597 = zext i32 %3596 to i64
  store i64 %3597, i64* %RDX, align 8, !tbaa !2428
  %3598 = add i64 %3730, 29
  store i64 %3598, i64* %PC, align 8
  %3599 = load i32, i32* %3690, align 4
  %3600 = sext i32 %3599 to i64
  store i64 %3600, i64* %RAX, align 8, !tbaa !2428
  %3601 = shl nsw i64 %3600, 2
  %3602 = add i64 %3687, -2688
  %3603 = add i64 %3602, %3601
  %3604 = add i64 %3730, 36
  store i64 %3604, i64* %PC, align 8
  %3605 = inttoptr i64 %3603 to i32*
  store i32 %3596, i32* %3605, align 4
  %3606 = load i64, i64* %RBP, align 8
  %3607 = add i64 %3606, -4
  %3608 = load i64, i64* %PC, align 8
  %3609 = add i64 %3608, 3
  store i64 %3609, i64* %PC, align 8
  %3610 = inttoptr i64 %3607 to i32*
  %3611 = load i32, i32* %3610, align 4
  %3612 = add i32 %3611, 1
  %3613 = zext i32 %3612 to i64
  store i64 %3613, i64* %RAX, align 8, !tbaa !2428
  %3614 = icmp eq i32 %3611, -1
  %3615 = icmp eq i32 %3612, 0
  %3616 = or i1 %3614, %3615
  %3617 = zext i1 %3616 to i8
  store i8 %3617, i8* %18, align 1, !tbaa !2432
  %3618 = and i32 %3612, 255
  %3619 = tail call i32 @llvm.ctpop.i32(i32 %3618) #8
  %3620 = trunc i32 %3619 to i8
  %3621 = and i8 %3620, 1
  %3622 = xor i8 %3621, 1
  store i8 %3622, i8* %25, align 1, !tbaa !2446
  %3623 = xor i32 %3611, %3612
  %3624 = lshr i32 %3623, 4
  %3625 = trunc i32 %3624 to i8
  %3626 = and i8 %3625, 1
  store i8 %3626, i8* %31, align 1, !tbaa !2447
  %3627 = icmp eq i32 %3612, 0
  %3628 = zext i1 %3627 to i8
  store i8 %3628, i8* %34, align 1, !tbaa !2448
  %3629 = lshr i32 %3612, 31
  %3630 = trunc i32 %3629 to i8
  store i8 %3630, i8* %37, align 1, !tbaa !2449
  %3631 = lshr i32 %3611, 31
  %3632 = xor i32 %3629, %3631
  %3633 = add nuw nsw i32 %3632, %3629
  %3634 = icmp eq i32 %3633, 2
  %3635 = zext i1 %3634 to i8
  store i8 %3635, i8* %43, align 1, !tbaa !2450
  %3636 = add i64 %3608, 9
  store i64 %3636, i64* %PC, align 8
  store i32 %3612, i32* %3610, align 4
  %3637 = load i64, i64* %PC, align 8
  %3638 = add i64 %3637, -65
  store i64 %3638, i64* %57, align 8, !tbaa !2428
  br label %block_40108d

block_4011d3:                                     ; preds = %block_4010e4
  %3639 = add i64 %3972, -1492
  %3640 = add i64 %4001, 6
  store i64 %3640, i64* %PC, align 8
  %3641 = inttoptr i64 %3639 to i32*
  %3642 = load i32, i32* %3641, align 4
  %3643 = zext i32 %3642 to i64
  store i64 %3643, i64* %RAX, align 8, !tbaa !2428
  %3644 = add i64 %3972, -12
  %3645 = add i64 %4001, 10
  store i64 %3645, i64* %PC, align 8
  %3646 = inttoptr i64 %3644 to i32*
  %3647 = load i32, i32* %3646, align 4
  %3648 = sext i32 %3647 to i64
  store i64 %3648, i64* %RCX, align 8, !tbaa !2428
  %3649 = shl nsw i64 %3648, 2
  %3650 = add i64 %3972, -1328
  %3651 = add i64 %3650, %3649
  %3652 = add i64 %4001, 17
  store i64 %3652, i64* %PC, align 8
  %3653 = inttoptr i64 %3651 to i32*
  %3654 = load i32, i32* %3653, align 4
  %3655 = sub i32 %3642, %3654
  %3656 = icmp ult i32 %3642, %3654
  %3657 = zext i1 %3656 to i8
  store i8 %3657, i8* %18, align 1, !tbaa !2432
  %3658 = and i32 %3655, 255
  %3659 = tail call i32 @llvm.ctpop.i32(i32 %3658) #8
  %3660 = trunc i32 %3659 to i8
  %3661 = and i8 %3660, 1
  %3662 = xor i8 %3661, 1
  store i8 %3662, i8* %25, align 1, !tbaa !2446
  %3663 = xor i32 %3654, %3642
  %3664 = xor i32 %3663, %3655
  %3665 = lshr i32 %3664, 4
  %3666 = trunc i32 %3665 to i8
  %3667 = and i8 %3666, 1
  store i8 %3667, i8* %31, align 1, !tbaa !2447
  %3668 = icmp eq i32 %3655, 0
  %3669 = zext i1 %3668 to i8
  store i8 %3669, i8* %34, align 1, !tbaa !2448
  %3670 = lshr i32 %3655, 31
  %3671 = trunc i32 %3670 to i8
  store i8 %3671, i8* %37, align 1, !tbaa !2449
  %3672 = lshr i32 %3642, 31
  %3673 = lshr i32 %3654, 31
  %3674 = xor i32 %3673, %3672
  %3675 = xor i32 %3670, %3672
  %3676 = add nuw nsw i32 %3675, %3674
  %3677 = icmp eq i32 %3676, 2
  %3678 = zext i1 %3677 to i8
  store i8 %3678, i8* %43, align 1, !tbaa !2450
  %.v138 = select i1 %3668, i64 23, i64 1296
  %3679 = add i64 %4001, %.v138
  %3680 = add i64 %3679, 7
  store i64 %3680, i64* %PC, align 8
  br i1 %3668, label %block_4011ea, label %block_4016e3

block_400c9b:                                     ; preds = %block_400c7a, %block_400c5a
  %3681 = phi i64 [ %.pre33, %block_400c7a ], [ %4099, %block_400c5a ]
  %3682 = load i64, i64* %RBP, align 8
  %3683 = add i64 %3682, -4
  %3684 = add i64 %3681, 7
  store i64 %3684, i64* %PC, align 8
  %3685 = inttoptr i64 %3683 to i32*
  store i32 0, i32* %3685, align 4
  %.pre34 = load i64, i64* %PC, align 8
  br label %block_400ca2

block_40108d:                                     ; preds = %block_401086, %block_4010a1
  %3686 = phi i64 [ %.pre51, %block_401086 ], [ %3638, %block_4010a1 ]
  %3687 = load i64, i64* %RBP, align 8
  %3688 = add i64 %3687, -4
  %3689 = add i64 %3686, 3
  store i64 %3689, i64* %PC, align 8
  %3690 = inttoptr i64 %3688 to i32*
  %3691 = load i32, i32* %3690, align 4
  %3692 = zext i32 %3691 to i64
  store i64 %3692, i64* %RAX, align 8, !tbaa !2428
  %3693 = add i64 %3687, -12
  %3694 = add i64 %3686, 7
  store i64 %3694, i64* %PC, align 8
  %3695 = inttoptr i64 %3693 to i32*
  %3696 = load i32, i32* %3695, align 4
  %3697 = sext i32 %3696 to i64
  store i64 %3697, i64* %RCX, align 8, !tbaa !2428
  %3698 = shl nsw i64 %3697, 2
  %3699 = add i64 %3687, -1328
  %3700 = add i64 %3699, %3698
  %3701 = add i64 %3686, 14
  store i64 %3701, i64* %PC, align 8
  %3702 = inttoptr i64 %3700 to i32*
  %3703 = load i32, i32* %3702, align 4
  %3704 = sub i32 %3691, %3703
  %3705 = icmp ult i32 %3691, %3703
  %3706 = zext i1 %3705 to i8
  store i8 %3706, i8* %18, align 1, !tbaa !2432
  %3707 = and i32 %3704, 255
  %3708 = tail call i32 @llvm.ctpop.i32(i32 %3707) #8
  %3709 = trunc i32 %3708 to i8
  %3710 = and i8 %3709, 1
  %3711 = xor i8 %3710, 1
  store i8 %3711, i8* %25, align 1, !tbaa !2446
  %3712 = xor i32 %3703, %3691
  %3713 = xor i32 %3712, %3704
  %3714 = lshr i32 %3713, 4
  %3715 = trunc i32 %3714 to i8
  %3716 = and i8 %3715, 1
  store i8 %3716, i8* %31, align 1, !tbaa !2447
  %3717 = icmp eq i32 %3704, 0
  %3718 = zext i1 %3717 to i8
  store i8 %3718, i8* %34, align 1, !tbaa !2448
  %3719 = lshr i32 %3704, 31
  %3720 = trunc i32 %3719 to i8
  store i8 %3720, i8* %37, align 1, !tbaa !2449
  %3721 = lshr i32 %3691, 31
  %3722 = lshr i32 %3703, 31
  %3723 = xor i32 %3722, %3721
  %3724 = xor i32 %3719, %3721
  %3725 = add nuw nsw i32 %3724, %3723
  %3726 = icmp eq i32 %3725, 2
  %3727 = zext i1 %3726 to i8
  store i8 %3727, i8* %43, align 1, !tbaa !2450
  %3728 = icmp ne i8 %3720, 0
  %3729 = xor i1 %3728, %3726
  %.demorgan130 = or i1 %3717, %3729
  %.v131 = select i1 %.demorgan130, i64 20, i64 70
  %3730 = add i64 %3686, %.v131
  store i64 %3730, i64* %57, align 8, !tbaa !2428
  br i1 %.demorgan130, label %block_4010a1, label %block_4010d3

block_401488:                                     ; preds = %block_401444
  %3731 = add i64 %4547, 15
  store i64 %3731, i64* %PC, align 8
  %3732 = inttoptr i64 %4552 to i32*
  store i32 0, i32* %3732, align 4
  %.pre72 = load i64, i64* %PC, align 8
  br label %block_401497

block_400e7e:                                     ; preds = %block_400e67
  %3733 = add i64 %3951, -1488
  %3734 = add i64 %3920, 17
  store i64 %3734, i64* %PC, align 8
  %3735 = inttoptr i64 %3733 to i32*
  %3736 = load i32, i32* %3735, align 4
  %3737 = sext i32 %3736 to i64
  store i64 %3737, i64* %RCX, align 8, !tbaa !2428
  %3738 = shl nsw i64 %3737, 2
  %3739 = add i64 %3738, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %3740 = add i64 %3920, 24
  store i64 %3740, i64* %PC, align 8
  %3741 = inttoptr i64 %3739 to i32*
  %3742 = load i32, i32* %3741, align 4
  %3743 = zext i32 %3742 to i64
  store i64 %3743, i64* %RAX, align 8, !tbaa !2428
  %3744 = add i64 %3949, -12
  %3745 = add i64 %3920, 27
  store i64 %3745, i64* %PC, align 8
  %3746 = inttoptr i64 %3744 to i32*
  %3747 = load i32, i32* %3746, align 4
  %3748 = add i32 %3747, 1
  %3749 = zext i32 %3748 to i64
  store i64 %3749, i64* %RDX, align 8, !tbaa !2428
  %3750 = icmp eq i32 %3747, -1
  %3751 = icmp eq i32 %3748, 0
  %3752 = or i1 %3750, %3751
  %3753 = zext i1 %3752 to i8
  store i8 %3753, i8* %18, align 1, !tbaa !2432
  %3754 = and i32 %3748, 255
  %3755 = tail call i32 @llvm.ctpop.i32(i32 %3754) #8
  %3756 = trunc i32 %3755 to i8
  %3757 = and i8 %3756, 1
  %3758 = xor i8 %3757, 1
  store i8 %3758, i8* %25, align 1, !tbaa !2446
  %3759 = xor i32 %3747, %3748
  %3760 = lshr i32 %3759, 4
  %3761 = trunc i32 %3760 to i8
  %3762 = and i8 %3761, 1
  store i8 %3762, i8* %31, align 1, !tbaa !2447
  %3763 = icmp eq i32 %3748, 0
  %3764 = zext i1 %3763 to i8
  store i8 %3764, i8* %34, align 1, !tbaa !2448
  %3765 = lshr i32 %3748, 31
  %3766 = trunc i32 %3765 to i8
  store i8 %3766, i8* %37, align 1, !tbaa !2449
  %3767 = lshr i32 %3747, 31
  %3768 = xor i32 %3765, %3767
  %3769 = add nuw nsw i32 %3768, %3765
  %3770 = icmp eq i32 %3769, 2
  %3771 = zext i1 %3770 to i8
  store i8 %3771, i8* %43, align 1, !tbaa !2450
  %3772 = sext i32 %3748 to i64
  store i64 %3772, i64* %RCX, align 8, !tbaa !2428
  %3773 = shl nsw i64 %3772, 2
  %3774 = add i64 %3949, -1248
  %3775 = add i64 %3774, %3773
  %3776 = add i64 %3920, 40
  store i64 %3776, i64* %PC, align 8
  %3777 = inttoptr i64 %3775 to i32*
  store i32 %3742, i32* %3777, align 4
  %3778 = load i64, i64* %PC, align 8
  %3779 = add i64 %3778, 25
  store i64 %3779, i64* %57, align 8, !tbaa !2428
  br label %block_400ebf

block_401086:                                     ; preds = %block_40102e
  %3780 = add i64 %5756, 7
  store i64 %3780, i64* %PC, align 8
  store i32 1, i32* %5716, align 4
  %.pre51 = load i64, i64* %PC, align 8
  br label %block_40108d

block_40127b:                                     ; preds = %block_401217, %block_401205
  %3781 = phi i64 [ %6267, %block_401205 ], [ %6047, %block_401217 ]
  %3782 = phi i64 [ %1814, %block_401205 ], [ %.pre62, %block_401217 ]
  %3783 = add i64 %3782, -4
  %3784 = add i64 %3781, 4
  store i64 %3784, i64* %PC, align 8
  %3785 = inttoptr i64 %3783 to i32*
  %3786 = load i32, i32* %3785, align 4
  %3787 = sext i32 %3786 to i64
  store i64 %3787, i64* %RAX, align 8, !tbaa !2428
  %3788 = shl nsw i64 %3787, 2
  %3789 = add i64 %3782, -1488
  %3790 = add i64 %3789, %3788
  %3791 = add i64 %3781, 12
  store i64 %3791, i64* %PC, align 8
  %3792 = inttoptr i64 %3790 to i32*
  %3793 = load i32, i32* %3792, align 4
  %3794 = add i32 %3793, 1
  %3795 = icmp ne i32 %3793, -1
  %3796 = zext i1 %3795 to i8
  store i8 %3796, i8* %18, align 1, !tbaa !2432
  %3797 = and i32 %3794, 255
  %3798 = tail call i32 @llvm.ctpop.i32(i32 %3797) #8
  %3799 = trunc i32 %3798 to i8
  %3800 = and i8 %3799, 1
  %3801 = xor i8 %3800, 1
  store i8 %3801, i8* %25, align 1, !tbaa !2446
  %3802 = xor i32 %3793, 16
  %3803 = xor i32 %3794, %3802
  %3804 = lshr i32 %3803, 4
  %3805 = trunc i32 %3804 to i8
  %3806 = and i8 %3805, 1
  store i8 %3806, i8* %31, align 1, !tbaa !2447
  %3807 = icmp eq i32 %3794, 0
  %3808 = zext i1 %3807 to i8
  store i8 %3808, i8* %34, align 1, !tbaa !2448
  %3809 = lshr i32 %3794, 31
  %3810 = trunc i32 %3809 to i8
  store i8 %3810, i8* %37, align 1, !tbaa !2449
  %3811 = lshr i32 %3793, 31
  %3812 = xor i32 %3811, 1
  %3813 = xor i32 %3809, %3811
  %3814 = add nuw nsw i32 %3813, %3812
  %3815 = icmp eq i32 %3814, 2
  %3816 = zext i1 %3815 to i8
  store i8 %3816, i8* %43, align 1, !tbaa !2450
  %.v146 = select i1 %3807, i64 85, i64 18
  %3817 = add i64 %3781, %.v146
  store i64 %3817, i64* %57, align 8, !tbaa !2428
  br i1 %3807, label %block_4012d0, label %block_40128d

block_400ce3:                                     ; preds = %block_400cdc, %block_400d91
  %3818 = phi i64 [ %.pre35, %block_400cdc ], [ %2836, %block_400d91 ]
  %MEMORY.35 = phi %struct.Memory* [ %MEMORY.30, %block_400cdc ], [ %MEMORY.22, %block_400d91 ]
  %3819 = load i64, i64* %RBP, align 8
  %3820 = add i64 %3819, -4
  %3821 = add i64 %3818, 3
  store i64 %3821, i64* %PC, align 8
  %3822 = inttoptr i64 %3820 to i32*
  %3823 = load i32, i32* %3822, align 4
  %3824 = zext i32 %3823 to i64
  store i64 %3824, i64* %RAX, align 8, !tbaa !2428
  %3825 = add i64 %3819, -16
  %3826 = add i64 %3818, 7
  store i64 %3826, i64* %PC, align 8
  %3827 = inttoptr i64 %3825 to i32*
  %3828 = load i32, i32* %3827, align 4
  %3829 = sext i32 %3828 to i64
  store i64 %3829, i64* %RCX, align 8, !tbaa !2428
  %3830 = shl nsw i64 %3829, 2
  %3831 = add i64 %3819, -1328
  %3832 = add i64 %3831, %3830
  %3833 = add i64 %3818, 14
  store i64 %3833, i64* %PC, align 8
  %3834 = inttoptr i64 %3832 to i32*
  %3835 = load i32, i32* %3834, align 4
  %3836 = sub i32 %3823, %3835
  %3837 = icmp ult i32 %3823, %3835
  %3838 = zext i1 %3837 to i8
  store i8 %3838, i8* %18, align 1, !tbaa !2432
  %3839 = and i32 %3836, 255
  %3840 = tail call i32 @llvm.ctpop.i32(i32 %3839) #8
  %3841 = trunc i32 %3840 to i8
  %3842 = and i8 %3841, 1
  %3843 = xor i8 %3842, 1
  store i8 %3843, i8* %25, align 1, !tbaa !2446
  %3844 = xor i32 %3835, %3823
  %3845 = xor i32 %3844, %3836
  %3846 = lshr i32 %3845, 4
  %3847 = trunc i32 %3846 to i8
  %3848 = and i8 %3847, 1
  store i8 %3848, i8* %31, align 1, !tbaa !2447
  %3849 = icmp eq i32 %3836, 0
  %3850 = zext i1 %3849 to i8
  store i8 %3850, i8* %34, align 1, !tbaa !2448
  %3851 = lshr i32 %3836, 31
  %3852 = trunc i32 %3851 to i8
  store i8 %3852, i8* %37, align 1, !tbaa !2449
  %3853 = lshr i32 %3823, 31
  %3854 = lshr i32 %3835, 31
  %3855 = xor i32 %3854, %3853
  %3856 = xor i32 %3851, %3853
  %3857 = add nuw nsw i32 %3856, %3855
  %3858 = icmp eq i32 %3857, 2
  %3859 = zext i1 %3858 to i8
  store i8 %3859, i8* %43, align 1, !tbaa !2450
  %3860 = icmp ne i8 %3852, 0
  %3861 = xor i1 %3860, %3858
  %.demorgan171 = or i1 %3849, %3861
  %.v172 = select i1 %.demorgan171, i64 20, i64 193
  %3862 = add i64 %3818, %.v172
  store i64 %3862, i64* %57, align 8, !tbaa !2428
  br i1 %.demorgan171, label %block_400cf7, label %block_400da4

block_401753:                                     ; preds = %block_4016de, %block_40174e
  %.sink100 = phi i64 [ %2971, %block_4016de ], [ %1562, %block_40174e ]
  %MEMORY.36 = phi %struct.Memory* [ %MEMORY.45, %block_4016de ], [ %MEMORY.37, %block_40174e ]
  store i64 %.sink100, i64* %57, align 8, !tbaa !2428
  %3863 = add i64 %.sink100, 117
  br label %block_4017c8

block_400e67:                                     ; preds = %block_400e3a
  %3864 = add i64 %4811, 3
  store i64 %3864, i64* %PC, align 8
  %3865 = load i32, i32* %4785, align 4
  %3866 = add i32 %3865, 1
  %3867 = zext i32 %3866 to i64
  store i64 %3867, i64* %RAX, align 8, !tbaa !2428
  %3868 = icmp eq i32 %3865, -1
  %3869 = icmp eq i32 %3866, 0
  %3870 = or i1 %3868, %3869
  %3871 = zext i1 %3870 to i8
  store i8 %3871, i8* %18, align 1, !tbaa !2432
  %3872 = and i32 %3866, 255
  %3873 = tail call i32 @llvm.ctpop.i32(i32 %3872) #8
  %3874 = trunc i32 %3873 to i8
  %3875 = and i8 %3874, 1
  %3876 = xor i8 %3875, 1
  store i8 %3876, i8* %25, align 1, !tbaa !2446
  %3877 = xor i32 %3865, %3866
  %3878 = lshr i32 %3877, 4
  %3879 = trunc i32 %3878 to i8
  %3880 = and i8 %3879, 1
  store i8 %3880, i8* %31, align 1, !tbaa !2447
  %3881 = icmp eq i32 %3866, 0
  %3882 = zext i1 %3881 to i8
  store i8 %3882, i8* %34, align 1, !tbaa !2448
  %3883 = lshr i32 %3866, 31
  %3884 = trunc i32 %3883 to i8
  store i8 %3884, i8* %37, align 1, !tbaa !2449
  %3885 = lshr i32 %3865, 31
  %3886 = xor i32 %3883, %3885
  %3887 = add nuw nsw i32 %3886, %3883
  %3888 = icmp eq i32 %3887, 2
  %3889 = zext i1 %3888 to i8
  store i8 %3889, i8* %43, align 1, !tbaa !2450
  %3890 = sext i32 %3866 to i64
  store i64 %3890, i64* %RCX, align 8, !tbaa !2428
  %3891 = shl nsw i64 %3890, 2
  %3892 = add i64 %4781, -1488
  %3893 = add i64 %3892, %3891
  %3894 = add i64 %4811, 17
  store i64 %3894, i64* %PC, align 8
  %3895 = inttoptr i64 %3893 to i32*
  %3896 = load i32, i32* %3895, align 4
  %3897 = add i32 %3896, 1
  %3898 = icmp ne i32 %3896, -1
  %3899 = zext i1 %3898 to i8
  store i8 %3899, i8* %18, align 1, !tbaa !2432
  %3900 = and i32 %3897, 255
  %3901 = tail call i32 @llvm.ctpop.i32(i32 %3900) #8
  %3902 = trunc i32 %3901 to i8
  %3903 = and i8 %3902, 1
  %3904 = xor i8 %3903, 1
  store i8 %3904, i8* %25, align 1, !tbaa !2446
  %3905 = xor i32 %3896, 16
  %3906 = xor i32 %3897, %3905
  %3907 = lshr i32 %3906, 4
  %3908 = trunc i32 %3907 to i8
  %3909 = and i8 %3908, 1
  store i8 %3909, i8* %31, align 1, !tbaa !2447
  %3910 = icmp eq i32 %3897, 0
  %3911 = zext i1 %3910 to i8
  store i8 %3911, i8* %34, align 1, !tbaa !2448
  %3912 = lshr i32 %3897, 31
  %3913 = trunc i32 %3912 to i8
  store i8 %3913, i8* %37, align 1, !tbaa !2449
  %3914 = lshr i32 %3896, 31
  %3915 = xor i32 %3914, 1
  %3916 = xor i32 %3912, %3914
  %3917 = add nuw nsw i32 %3916, %3915
  %3918 = icmp eq i32 %3917, 2
  %3919 = zext i1 %3918 to i8
  store i8 %3919, i8* %43, align 1, !tbaa !2450
  %.v119 = select i1 %3910, i64 68, i64 23
  %3920 = add i64 %4811, %.v119
  %3921 = add i64 %3920, 3
  store i64 %3921, i64* %PC, align 8
  %3922 = load i32, i32* %4785, align 4
  %3923 = add i32 %3922, 1
  %3924 = zext i32 %3923 to i64
  store i64 %3924, i64* %RAX, align 8, !tbaa !2428
  %3925 = icmp eq i32 %3922, -1
  %3926 = icmp eq i32 %3923, 0
  %3927 = or i1 %3925, %3926
  %3928 = zext i1 %3927 to i8
  store i8 %3928, i8* %18, align 1, !tbaa !2432
  %3929 = and i32 %3923, 255
  %3930 = tail call i32 @llvm.ctpop.i32(i32 %3929) #8
  %3931 = trunc i32 %3930 to i8
  %3932 = and i8 %3931, 1
  %3933 = xor i8 %3932, 1
  store i8 %3933, i8* %25, align 1, !tbaa !2446
  %3934 = xor i32 %3922, %3923
  %3935 = lshr i32 %3934, 4
  %3936 = trunc i32 %3935 to i8
  %3937 = and i8 %3936, 1
  store i8 %3937, i8* %31, align 1, !tbaa !2447
  %3938 = icmp eq i32 %3923, 0
  %3939 = zext i1 %3938 to i8
  store i8 %3939, i8* %34, align 1, !tbaa !2448
  %3940 = lshr i32 %3923, 31
  %3941 = trunc i32 %3940 to i8
  store i8 %3941, i8* %37, align 1, !tbaa !2449
  %3942 = lshr i32 %3922, 31
  %3943 = xor i32 %3940, %3942
  %3944 = add nuw nsw i32 %3943, %3940
  %3945 = icmp eq i32 %3944, 2
  %3946 = zext i1 %3945 to i8
  store i8 %3946, i8* %43, align 1, !tbaa !2450
  %3947 = add i64 %3920, 9
  store i64 %3947, i64* %PC, align 8
  %3948 = sext i32 %3923 to i64
  store i64 %3948, i64* %RCX, align 8, !tbaa !2428
  %3949 = load i64, i64* %RBP, align 8
  %3950 = shl nsw i64 %3948, 2
  %3951 = add i64 %3950, %3949
  br i1 %3910, label %block_400eab, label %block_400e7e

block_401465:                                     ; preds = %block_401444
  %3952 = add i64 %4547, 12
  store i64 %3952, i64* %PC, align 8
  %3953 = inttoptr i64 %4552 to i32*
  %3954 = load i32, i32* %3953, align 4
  %3955 = sext i32 %3954 to i64
  store i64 %3955, i64* %RAX, align 8, !tbaa !2428
  %3956 = shl nsw i64 %3955, 2
  %3957 = add i64 %3956, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %3958 = add i64 %4547, 19
  store i64 %3958, i64* %PC, align 8
  %3959 = inttoptr i64 %3957 to i32*
  %3960 = load i32, i32* %3959, align 4
  %3961 = zext i32 %3960 to i64
  store i64 %3961, i64* %RCX, align 8, !tbaa !2428
  %3962 = add i64 %4547, 23
  store i64 %3962, i64* %PC, align 8
  %3963 = load i32, i32* %4516, align 4
  %3964 = sext i32 %3963 to i64
  store i64 %3964, i64* %RAX, align 8, !tbaa !2428
  %3965 = shl nsw i64 %3964, 2
  %3966 = add i64 %3965, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %3967 = add i64 %4547, 30
  store i64 %3967, i64* %PC, align 8
  %3968 = inttoptr i64 %3966 to i32*
  store i32 %3960, i32* %3968, align 4
  %3969 = load i64, i64* %PC, align 8
  %3970 = add i64 %3969, 20
  store i64 %3970, i64* %57, align 8, !tbaa !2428
  br label %block_401497

block_4010e4:                                     ; preds = %block_4011c0, %block_4010d3
  %3971 = phi i64 [ %.pre52, %block_4010d3 ], [ %4163, %block_4011c0 ]
  %MEMORY.37 = phi %struct.Memory* [ %MEMORY.40, %block_4010d3 ], [ %MEMORY.23, %block_4011c0 ]
  %3972 = load i64, i64* %RBP, align 8
  %3973 = add i64 %3972, -4
  %3974 = add i64 %3971, 7
  store i64 %3974, i64* %PC, align 8
  %3975 = inttoptr i64 %3973 to i32*
  %3976 = load i32, i32* %3975, align 4
  %3977 = add i32 %3976, -255
  %3978 = icmp ult i32 %3976, 255
  %3979 = zext i1 %3978 to i8
  store i8 %3979, i8* %18, align 1, !tbaa !2432
  %3980 = and i32 %3977, 255
  %3981 = tail call i32 @llvm.ctpop.i32(i32 %3980) #8
  %3982 = trunc i32 %3981 to i8
  %3983 = and i8 %3982, 1
  %3984 = xor i8 %3983, 1
  store i8 %3984, i8* %25, align 1, !tbaa !2446
  %3985 = xor i32 %3976, 16
  %3986 = xor i32 %3985, %3977
  %3987 = lshr i32 %3986, 4
  %3988 = trunc i32 %3987 to i8
  %3989 = and i8 %3988, 1
  store i8 %3989, i8* %31, align 1, !tbaa !2447
  %3990 = icmp eq i32 %3977, 0
  %3991 = zext i1 %3990 to i8
  store i8 %3991, i8* %34, align 1, !tbaa !2448
  %3992 = lshr i32 %3977, 31
  %3993 = trunc i32 %3992 to i8
  store i8 %3993, i8* %37, align 1, !tbaa !2449
  %3994 = lshr i32 %3976, 31
  %3995 = xor i32 %3992, %3994
  %3996 = add nuw nsw i32 %3995, %3994
  %3997 = icmp eq i32 %3996, 2
  %3998 = zext i1 %3997 to i8
  store i8 %3998, i8* %43, align 1, !tbaa !2450
  %3999 = icmp ne i8 %3993, 0
  %4000 = xor i1 %3999, %3997
  %.demorgan132 = or i1 %3990, %4000
  %.v133 = select i1 %.demorgan132, i64 13, i64 239
  %4001 = add i64 %3971, %.v133
  store i64 %4001, i64* %57, align 8, !tbaa !2428
  br i1 %.demorgan132, label %block_4010f1, label %block_4011d3

block_400a5e:                                     ; preds = %block_400a54
  %4002 = add i64 %4130, 4
  store i64 %4002, i64* %PC, align 8
  %4003 = load i32, i32* %4104, align 4
  %4004 = sext i32 %4003 to i64
  store i64 %4004, i64* %RAX, align 8, !tbaa !2428
  %4005 = shl nsw i64 %4004, 2
  %4006 = add i64 %4101, -1168
  %4007 = add i64 %4006, %4005
  %4008 = add i64 %4130, 15
  store i64 %4008, i64* %PC, align 8
  %4009 = inttoptr i64 %4007 to i32*
  store i32 -1, i32* %4009, align 4
  %4010 = load i64, i64* %RBP, align 8
  %4011 = add i64 %4010, -4
  %4012 = load i64, i64* %PC, align 8
  %4013 = add i64 %4012, 4
  store i64 %4013, i64* %PC, align 8
  %4014 = inttoptr i64 %4011 to i32*
  %4015 = load i32, i32* %4014, align 4
  %4016 = sext i32 %4015 to i64
  store i64 %4016, i64* %RAX, align 8, !tbaa !2428
  %4017 = shl nsw i64 %4016, 2
  %4018 = add i64 %4010, -1104
  %4019 = add i64 %4018, %4017
  %4020 = add i64 %4012, 15
  store i64 %4020, i64* %PC, align 8
  %4021 = inttoptr i64 %4019 to i32*
  store i32 0, i32* %4021, align 4
  %4022 = load i64, i64* %RBP, align 8
  %4023 = add i64 %4022, -4
  %4024 = load i64, i64* %PC, align 8
  %4025 = add i64 %4024, 3
  store i64 %4025, i64* %PC, align 8
  %4026 = inttoptr i64 %4023 to i32*
  %4027 = load i32, i32* %4026, align 4
  %4028 = add i32 %4027, 1
  %4029 = zext i32 %4028 to i64
  store i64 %4029, i64* %RAX, align 8, !tbaa !2428
  %4030 = icmp eq i32 %4027, -1
  %4031 = icmp eq i32 %4028, 0
  %4032 = or i1 %4030, %4031
  %4033 = zext i1 %4032 to i8
  store i8 %4033, i8* %18, align 1, !tbaa !2432
  %4034 = and i32 %4028, 255
  %4035 = tail call i32 @llvm.ctpop.i32(i32 %4034) #8
  %4036 = trunc i32 %4035 to i8
  %4037 = and i8 %4036, 1
  %4038 = xor i8 %4037, 1
  store i8 %4038, i8* %25, align 1, !tbaa !2446
  %4039 = xor i32 %4027, %4028
  %4040 = lshr i32 %4039, 4
  %4041 = trunc i32 %4040 to i8
  %4042 = and i8 %4041, 1
  store i8 %4042, i8* %31, align 1, !tbaa !2447
  %4043 = icmp eq i32 %4028, 0
  %4044 = zext i1 %4043 to i8
  store i8 %4044, i8* %34, align 1, !tbaa !2448
  %4045 = lshr i32 %4028, 31
  %4046 = trunc i32 %4045 to i8
  store i8 %4046, i8* %37, align 1, !tbaa !2449
  %4047 = lshr i32 %4027, 31
  %4048 = xor i32 %4045, %4047
  %4049 = add nuw nsw i32 %4048, %4045
  %4050 = icmp eq i32 %4049, 2
  %4051 = zext i1 %4050 to i8
  store i8 %4051, i8* %43, align 1, !tbaa !2450
  %4052 = add i64 %4024, 9
  store i64 %4052, i64* %PC, align 8
  store i32 %4028, i32* %4026, align 4
  %4053 = load i64, i64* %PC, align 8
  %4054 = add i64 %4053, -49
  store i64 %4054, i64* %57, align 8, !tbaa !2428
  br label %block_400a54

block_400c5a:                                     ; preds = %block_400c36
  %4055 = add i64 %5503, -12
  %4056 = add i64 %5502, 4
  store i64 %4056, i64* %PC, align 8
  %4057 = inttoptr i64 %4055 to i32*
  %4058 = load i32, i32* %4057, align 4
  %4059 = sext i32 %4058 to i64
  store i64 %4059, i64* %RAX, align 8, !tbaa !2428
  %4060 = shl nsw i64 %4059, 2
  %4061 = add i64 %5503, -1328
  %4062 = add i64 %4061, %4060
  %4063 = add i64 %5502, 11
  store i64 %4063, i64* %PC, align 8
  %4064 = inttoptr i64 %4062 to i32*
  %4065 = load i32, i32* %4064, align 4
  %4066 = zext i32 %4065 to i64
  store i64 %4066, i64* %RCX, align 8, !tbaa !2428
  %4067 = add i64 %5502, 14
  store i64 %4067, i64* %PC, align 8
  %4068 = load i32, i32* %4057, align 4
  %4069 = add i32 %4068, 1
  %4070 = zext i32 %4069 to i64
  store i64 %4070, i64* %RDX, align 8, !tbaa !2428
  %4071 = icmp eq i32 %4068, -1
  %4072 = icmp eq i32 %4069, 0
  %4073 = or i1 %4071, %4072
  %4074 = zext i1 %4073 to i8
  store i8 %4074, i8* %18, align 1, !tbaa !2432
  %4075 = and i32 %4069, 255
  %4076 = tail call i32 @llvm.ctpop.i32(i32 %4075) #8
  %4077 = trunc i32 %4076 to i8
  %4078 = and i8 %4077, 1
  %4079 = xor i8 %4078, 1
  store i8 %4079, i8* %25, align 1, !tbaa !2446
  %4080 = xor i32 %4068, %4069
  %4081 = lshr i32 %4080, 4
  %4082 = trunc i32 %4081 to i8
  %4083 = and i8 %4082, 1
  store i8 %4083, i8* %31, align 1, !tbaa !2447
  %4084 = icmp eq i32 %4069, 0
  %4085 = zext i1 %4084 to i8
  store i8 %4085, i8* %34, align 1, !tbaa !2448
  %4086 = lshr i32 %4069, 31
  %4087 = trunc i32 %4086 to i8
  store i8 %4087, i8* %37, align 1, !tbaa !2449
  %4088 = lshr i32 %4068, 31
  %4089 = xor i32 %4086, %4088
  %4090 = add nuw nsw i32 %4089, %4086
  %4091 = icmp eq i32 %4090, 2
  %4092 = zext i1 %4091 to i8
  store i8 %4092, i8* %43, align 1, !tbaa !2450
  %4093 = sext i32 %4069 to i64
  store i64 %4093, i64* %RAX, align 8, !tbaa !2428
  %4094 = shl nsw i64 %4093, 2
  %4095 = add i64 %4061, %4094
  %4096 = add i64 %5502, 27
  store i64 %4096, i64* %PC, align 8
  %4097 = inttoptr i64 %4095 to i32*
  store i32 %4065, i32* %4097, align 4
  %4098 = load i64, i64* %PC, align 8
  %4099 = add i64 %4098, 38
  store i64 %4099, i64* %57, align 8, !tbaa !2428
  br label %block_400c9b

block_400a54:                                     ; preds = %block_400a23, %block_400a5e
  %4100 = phi i64 [ %.pre23, %block_400a23 ], [ %4054, %block_400a5e ]
  %4101 = load i64, i64* %RBP, align 8
  %4102 = add i64 %4101, -4
  %4103 = add i64 %4100, 4
  store i64 %4103, i64* %PC, align 8
  %4104 = inttoptr i64 %4102 to i32*
  %4105 = load i32, i32* %4104, align 4
  %4106 = add i32 %4105, -16
  %4107 = icmp ult i32 %4105, 16
  %4108 = zext i1 %4107 to i8
  store i8 %4108, i8* %18, align 1, !tbaa !2432
  %4109 = and i32 %4106, 255
  %4110 = tail call i32 @llvm.ctpop.i32(i32 %4109) #8
  %4111 = trunc i32 %4110 to i8
  %4112 = and i8 %4111, 1
  %4113 = xor i8 %4112, 1
  store i8 %4113, i8* %25, align 1, !tbaa !2446
  %4114 = xor i32 %4105, 16
  %4115 = xor i32 %4114, %4106
  %4116 = lshr i32 %4115, 4
  %4117 = trunc i32 %4116 to i8
  %4118 = and i8 %4117, 1
  store i8 %4118, i8* %31, align 1, !tbaa !2447
  %4119 = icmp eq i32 %4106, 0
  %4120 = zext i1 %4119 to i8
  store i8 %4120, i8* %34, align 1, !tbaa !2448
  %4121 = lshr i32 %4106, 31
  %4122 = trunc i32 %4121 to i8
  store i8 %4122, i8* %37, align 1, !tbaa !2449
  %4123 = lshr i32 %4105, 31
  %4124 = xor i32 %4121, %4123
  %4125 = add nuw nsw i32 %4124, %4123
  %4126 = icmp eq i32 %4125, 2
  %4127 = zext i1 %4126 to i8
  store i8 %4127, i8* %43, align 1, !tbaa !2450
  %4128 = icmp ne i8 %4122, 0
  %4129 = xor i1 %4128, %4126
  %.v114 = select i1 %4129, i64 10, i64 54
  %4130 = add i64 %4100, %.v114
  store i64 %4130, i64* %57, align 8, !tbaa !2428
  br i1 %4129, label %block_400a5e, label %block_400a8a

block_4011c0:                                     ; preds = %block_401180, %block_40118a
  %4131 = phi i64 [ %2927, %block_401180 ], [ %.pre60, %block_40118a ]
  %4132 = phi i64 [ %1328, %block_401180 ], [ %.pre59, %block_40118a ]
  %4133 = add i64 %4131, -4
  %4134 = add i64 %4132, 8
  store i64 %4134, i64* %PC, align 8
  %4135 = inttoptr i64 %4133 to i32*
  %4136 = load i32, i32* %4135, align 4
  %4137 = add i32 %4136, 1
  %4138 = zext i32 %4137 to i64
  store i64 %4138, i64* %RAX, align 8, !tbaa !2428
  %4139 = icmp eq i32 %4136, -1
  %4140 = icmp eq i32 %4137, 0
  %4141 = or i1 %4139, %4140
  %4142 = zext i1 %4141 to i8
  store i8 %4142, i8* %18, align 1, !tbaa !2432
  %4143 = and i32 %4137, 255
  %4144 = tail call i32 @llvm.ctpop.i32(i32 %4143) #8
  %4145 = trunc i32 %4144 to i8
  %4146 = and i8 %4145, 1
  %4147 = xor i8 %4146, 1
  store i8 %4147, i8* %25, align 1, !tbaa !2446
  %4148 = xor i32 %4136, %4137
  %4149 = lshr i32 %4148, 4
  %4150 = trunc i32 %4149 to i8
  %4151 = and i8 %4150, 1
  store i8 %4151, i8* %31, align 1, !tbaa !2447
  %4152 = icmp eq i32 %4137, 0
  %4153 = zext i1 %4152 to i8
  store i8 %4153, i8* %34, align 1, !tbaa !2448
  %4154 = lshr i32 %4137, 31
  %4155 = trunc i32 %4154 to i8
  store i8 %4155, i8* %37, align 1, !tbaa !2449
  %4156 = lshr i32 %4136, 31
  %4157 = xor i32 %4154, %4156
  %4158 = add nuw nsw i32 %4157, %4154
  %4159 = icmp eq i32 %4158, 2
  %4160 = zext i1 %4159 to i8
  store i8 %4160, i8* %43, align 1, !tbaa !2450
  %4161 = add i64 %4132, 14
  store i64 %4161, i64* %PC, align 8
  store i32 %4137, i32* %4135, align 4
  %4162 = load i64, i64* %PC, align 8
  %4163 = add i64 %4162, -234
  store i64 %4163, i64* %57, align 8, !tbaa !2428
  br label %block_4010e4

block_400fcb:                                     ; preds = %block_400e3a, %block_400fa3
  %4164 = phi i64 [ %4781, %block_400e3a ], [ %.pre48, %block_400fa3 ]
  %4165 = phi i64 [ %4811, %block_400e3a ], [ %.pre47, %block_400fa3 ]
  %MEMORY.40 = phi %struct.Memory* [ %MEMORY.43, %block_400e3a ], [ %MEMORY.27, %block_400fa3 ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  store i8 1, i8* %25, align 1, !tbaa !2446
  store i8 1, i8* %34, align 1, !tbaa !2448
  store i8 0, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 0, i8* %31, align 1, !tbaa !2447
  store i8 0, i8* %CL, align 1, !tbaa !2451
  %4166 = add i64 %4164, -12
  %4167 = add i64 %4165, 13
  store i64 %4167, i64* %PC, align 8
  %4168 = inttoptr i64 %4166 to i32*
  %4169 = load i32, i32* %4168, align 4
  %4170 = add i32 %4169, -16
  %4171 = icmp ult i32 %4169, 16
  %4172 = zext i1 %4171 to i8
  store i8 %4172, i8* %18, align 1, !tbaa !2432
  %4173 = and i32 %4170, 255
  %4174 = tail call i32 @llvm.ctpop.i32(i32 %4173) #8
  %4175 = trunc i32 %4174 to i8
  %4176 = and i8 %4175, 1
  %4177 = xor i8 %4176, 1
  store i8 %4177, i8* %25, align 1, !tbaa !2446
  %4178 = xor i32 %4169, 16
  %4179 = xor i32 %4178, %4170
  %4180 = lshr i32 %4179, 4
  %4181 = trunc i32 %4180 to i8
  %4182 = and i8 %4181, 1
  store i8 %4182, i8* %31, align 1, !tbaa !2447
  %4183 = icmp eq i32 %4170, 0
  %4184 = zext i1 %4183 to i8
  store i8 %4184, i8* %34, align 1, !tbaa !2448
  %4185 = lshr i32 %4170, 31
  %4186 = trunc i32 %4185 to i8
  store i8 %4186, i8* %37, align 1, !tbaa !2449
  %4187 = lshr i32 %4169, 31
  %4188 = xor i32 %4185, %4187
  %4189 = add nuw nsw i32 %4188, %4187
  %4190 = icmp eq i32 %4189, 2
  %4191 = zext i1 %4190 to i8
  store i8 %4191, i8* %43, align 1, !tbaa !2450
  %4192 = add i64 %4164, -2709
  %4193 = add i64 %4165, 19
  store i64 %4193, i64* %PC, align 8
  %4194 = inttoptr i64 %4192 to i8*
  store i8 0, i8* %4194, align 1
  %4195 = load i64, i64* %PC, align 8
  %4196 = load i8, i8* %37, align 1, !tbaa !2449
  %4197 = icmp ne i8 %4196, 0
  %4198 = load i8, i8* %43, align 1, !tbaa !2450
  %4199 = icmp ne i8 %4198, 0
  %4200 = xor i1 %4197, %4199
  %.v124 = select i1 %4200, i64 6, i64 32
  %4201 = add i64 %4195, %.v124
  store i64 %4201, i64* %57, align 8, !tbaa !2428
  br i1 %4200, label %block_400fe4, label %block_400ffe

block_400d17:                                     ; preds = %block_400cf7
  %4202 = load i64, i64* %RBP, align 8
  %4203 = add i64 %4202, -1168
  store i64 %4203, i64* %RAX, align 8, !tbaa !2428
  store i64 255, i64* %RCX, align 8, !tbaa !2428
  %4204 = add i64 %4202, -12
  %4205 = add i64 %2750, 16
  store i64 %4205, i64* %PC, align 8
  %4206 = inttoptr i64 %4204 to i32*
  %4207 = load i32, i32* %4206, align 4
  %4208 = sext i32 %4207 to i64
  store i64 %4208, i64* %RDX, align 8, !tbaa !2428
  %4209 = shl nsw i64 %4208, 2
  %4210 = add i64 %4202, -1248
  %4211 = add i64 %4210, %4209
  %4212 = add i64 %2750, 23
  store i64 %4212, i64* %PC, align 8
  %4213 = inttoptr i64 %4211 to i32*
  %4214 = load i32, i32* %4213, align 4
  %4215 = add i32 %4214, 255
  %4216 = zext i32 %4215 to i64
  store i64 %4216, i64* %RSI, align 8, !tbaa !2428
  %4217 = icmp ugt i32 %4214, -256
  %4218 = zext i1 %4217 to i8
  store i8 %4218, i8* %18, align 1, !tbaa !2432
  %4219 = and i32 %4215, 255
  %4220 = tail call i32 @llvm.ctpop.i32(i32 %4219) #8
  %4221 = trunc i32 %4220 to i8
  %4222 = and i8 %4221, 1
  %4223 = xor i8 %4222, 1
  store i8 %4223, i8* %25, align 1, !tbaa !2446
  %4224 = xor i32 %4214, 16
  %4225 = xor i32 %4224, %4215
  %4226 = lshr i32 %4225, 4
  %4227 = trunc i32 %4226 to i8
  %4228 = and i8 %4227, 1
  store i8 %4228, i8* %31, align 1, !tbaa !2447
  %4229 = icmp eq i32 %4215, 0
  %4230 = zext i1 %4229 to i8
  store i8 %4230, i8* %34, align 1, !tbaa !2448
  %4231 = lshr i32 %4215, 31
  %4232 = trunc i32 %4231 to i8
  store i8 %4232, i8* %37, align 1, !tbaa !2449
  %4233 = lshr i32 %4214, 31
  %4234 = xor i32 %4231, %4233
  %4235 = add nuw nsw i32 %4234, %4231
  %4236 = icmp eq i32 %4235, 2
  %4237 = zext i1 %4236 to i8
  store i8 %4237, i8* %43, align 1, !tbaa !2450
  %4238 = add i64 %4202, -16
  %4239 = add i64 %2750, 33
  store i64 %4239, i64* %PC, align 8
  %4240 = inttoptr i64 %4238 to i32*
  %4241 = load i32, i32* %4240, align 4
  %4242 = sext i32 %4241 to i64
  store i64 %4242, i64* %RDX, align 8, !tbaa !2428
  %4243 = shl nsw i64 %4242, 2
  %4244 = add i64 %4210, %4243
  %4245 = add i64 %2750, 40
  store i64 %4245, i64* %PC, align 8
  %4246 = inttoptr i64 %4244 to i32*
  %4247 = load i32, i32* %4246, align 4
  %4248 = sub i32 %4215, %4247
  %4249 = zext i32 %4248 to i64
  store i64 %4249, i64* %RSI, align 8, !tbaa !2428
  %4250 = icmp ult i32 %4215, %4247
  %4251 = zext i1 %4250 to i8
  store i8 %4251, i8* %18, align 1, !tbaa !2432
  %4252 = and i32 %4248, 255
  %4253 = tail call i32 @llvm.ctpop.i32(i32 %4252) #8
  %4254 = trunc i32 %4253 to i8
  %4255 = and i8 %4254, 1
  %4256 = xor i8 %4255, 1
  store i8 %4256, i8* %25, align 1, !tbaa !2446
  %4257 = xor i32 %4247, %4215
  %4258 = xor i32 %4257, %4248
  %4259 = lshr i32 %4258, 4
  %4260 = trunc i32 %4259 to i8
  %4261 = and i8 %4260, 1
  store i8 %4261, i8* %31, align 1, !tbaa !2447
  %4262 = icmp eq i32 %4248, 0
  %4263 = zext i1 %4262 to i8
  store i8 %4263, i8* %34, align 1, !tbaa !2448
  %4264 = lshr i32 %4248, 31
  %4265 = trunc i32 %4264 to i8
  store i8 %4265, i8* %37, align 1, !tbaa !2449
  %4266 = lshr i32 %4247, 31
  %4267 = xor i32 %4266, %4231
  %4268 = xor i32 %4264, %4231
  %4269 = add nuw nsw i32 %4268, %4267
  %4270 = icmp eq i32 %4269, 2
  %4271 = zext i1 %4270 to i8
  store i8 %4271, i8* %43, align 1, !tbaa !2450
  %4272 = load i64, i64* %RBP, align 8
  %4273 = add i64 %4272, -16
  %4274 = add i64 %2750, 44
  store i64 %4274, i64* %PC, align 8
  %4275 = inttoptr i64 %4273 to i32*
  %4276 = load i32, i32* %4275, align 4
  %4277 = sext i32 %4276 to i64
  %4278 = shl nsw i64 %4277, 6
  store i64 %4278, i64* %RDX, align 8, !tbaa !2428
  %4279 = lshr i64 %4277, 57
  %4280 = and i64 %4279, 1
  %4281 = load i64, i64* %RAX, align 8
  %4282 = add i64 %4278, %4281
  store i64 %4282, i64* %RDI, align 8, !tbaa !2428
  %4283 = icmp ult i64 %4282, %4281
  %4284 = icmp ult i64 %4282, %4278
  %4285 = or i1 %4283, %4284
  %4286 = zext i1 %4285 to i8
  store i8 %4286, i8* %18, align 1, !tbaa !2432
  %4287 = trunc i64 %4282 to i32
  %4288 = and i32 %4287, 255
  %4289 = tail call i32 @llvm.ctpop.i32(i32 %4288) #8
  %4290 = trunc i32 %4289 to i8
  %4291 = and i8 %4290, 1
  %4292 = xor i8 %4291, 1
  store i8 %4292, i8* %25, align 1, !tbaa !2446
  %4293 = xor i64 %4281, %4282
  %4294 = lshr i64 %4293, 4
  %4295 = trunc i64 %4294 to i8
  %4296 = and i8 %4295, 1
  store i8 %4296, i8* %31, align 1, !tbaa !2447
  %4297 = icmp eq i64 %4282, 0
  %4298 = zext i1 %4297 to i8
  store i8 %4298, i8* %34, align 1, !tbaa !2448
  %4299 = lshr i64 %4282, 63
  %4300 = trunc i64 %4299 to i8
  store i8 %4300, i8* %37, align 1, !tbaa !2449
  %4301 = lshr i64 %4281, 63
  %4302 = xor i64 %4299, %4301
  %4303 = xor i64 %4299, %4280
  %4304 = add nuw nsw i64 %4302, %4303
  %4305 = icmp eq i64 %4304, 2
  %4306 = zext i1 %4305 to i8
  store i8 %4306, i8* %43, align 1, !tbaa !2450
  %4307 = add i64 %4272, -4
  %4308 = add i64 %2750, 58
  store i64 %4308, i64* %PC, align 8
  %4309 = inttoptr i64 %4307 to i32*
  %4310 = load i32, i32* %4309, align 4
  %4311 = sext i32 %4310 to i64
  store i64 %4311, i64* %RDX, align 8, !tbaa !2428
  %4312 = load i64, i64* %RSI, align 8
  %4313 = shl nsw i64 %4311, 2
  %4314 = add i64 %4313, %4282
  %4315 = add i64 %2750, 61
  store i64 %4315, i64* %PC, align 8
  %4316 = trunc i64 %4312 to i32
  %4317 = inttoptr i64 %4314 to i32*
  %4318 = load i32, i32* %4317, align 4
  %4319 = add i32 %4318, %4316
  %4320 = zext i32 %4319 to i64
  store i64 %4320, i64* %RSI, align 8, !tbaa !2428
  %4321 = icmp ult i32 %4319, %4316
  %4322 = icmp ult i32 %4319, %4318
  %4323 = or i1 %4321, %4322
  %4324 = zext i1 %4323 to i8
  store i8 %4324, i8* %18, align 1, !tbaa !2432
  %4325 = and i32 %4319, 255
  %4326 = tail call i32 @llvm.ctpop.i32(i32 %4325) #8
  %4327 = trunc i32 %4326 to i8
  %4328 = and i8 %4327, 1
  %4329 = xor i8 %4328, 1
  store i8 %4329, i8* %25, align 1, !tbaa !2446
  %4330 = xor i32 %4318, %4316
  %4331 = xor i32 %4330, %4319
  %4332 = lshr i32 %4331, 4
  %4333 = trunc i32 %4332 to i8
  %4334 = and i8 %4333, 1
  store i8 %4334, i8* %31, align 1, !tbaa !2447
  %4335 = icmp eq i32 %4319, 0
  %4336 = zext i1 %4335 to i8
  store i8 %4336, i8* %34, align 1, !tbaa !2448
  %4337 = lshr i32 %4319, 31
  %4338 = trunc i32 %4337 to i8
  store i8 %4338, i8* %37, align 1, !tbaa !2449
  %4339 = lshr i32 %4316, 31
  %4340 = lshr i32 %4318, 31
  %4341 = xor i32 %4337, %4339
  %4342 = xor i32 %4337, %4340
  %4343 = add nuw nsw i32 %4341, %4342
  %4344 = icmp eq i32 %4343, 2
  %4345 = zext i1 %4344 to i8
  store i8 %4345, i8* %43, align 1, !tbaa !2450
  %4346 = load i64, i64* %RBP, align 8
  %4347 = add i64 %4346, -2704
  %4348 = add i64 %2750, 68
  store i64 %4348, i64* %PC, align 8
  %4349 = inttoptr i64 %4347 to i64*
  store i64 %4281, i64* %4349, align 8
  %4350 = load i32, i32* %ESI, align 4
  %4351 = zext i32 %4350 to i64
  %4352 = load i64, i64* %PC, align 8
  store i64 %4351, i64* %RAX, align 8, !tbaa !2428
  %4353 = sext i32 %4350 to i64
  %4354 = lshr i64 %4353, 32
  store i64 %4354, i64* %58, align 8, !tbaa !2428
  %4355 = load i32, i32* %ECX, align 4
  %4356 = add i64 %4352, 5
  store i64 %4356, i64* %PC, align 8
  %4357 = zext i32 %4350 to i64
  %4358 = sext i32 %4355 to i64
  %4359 = shl nuw i64 %4354, 32
  %4360 = or i64 %4359, %4357
  %4361 = sdiv i64 %4360, %4358
  %4362 = shl i64 %4361, 32
  %4363 = ashr exact i64 %4362, 32
  %4364 = icmp eq i64 %4361, %4363
  br i1 %4364, label %4367, label %4365

; <label>:4365:                                   ; preds = %block_400d17
  %4366 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4356, %struct.Memory* %MEMORY.35) #9
  %.pre36 = load i32, i32* %EDX, align 4
  %.pre37 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:4367:                                   ; preds = %block_400d17
  %4368 = srem i64 %4360, %4358
  %4369 = and i64 %4361, 4294967295
  store i64 %4369, i64* %59, align 8, !tbaa !2428
  %4370 = and i64 %4368, 4294967295
  store i64 %4370, i64* %60, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  store i8 0, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2447
  store i8 0, i8* %34, align 1, !tbaa !2448
  store i8 0, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %4371 = trunc i64 %4368 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %4367, %4365
  %4372 = phi i64 [ %.pre37, %4365 ], [ %4356, %4367 ]
  %4373 = phi i32 [ %.pre36, %4365 ], [ %4371, %4367 ]
  %4374 = phi %struct.Memory* [ %4366, %4365 ], [ %MEMORY.35, %4367 ]
  %4375 = sext i32 %4373 to i64
  store i64 %4375, i64* %RDI, align 8, !tbaa !2428
  %4376 = shl nsw i64 %4375, 2
  %4377 = add i64 %4376, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %4378 = add i64 %4372, 10
  store i64 %4378, i64* %PC, align 8
  %4379 = inttoptr i64 %4377 to i32*
  %4380 = load i32, i32* %4379, align 4
  %4381 = zext i32 %4380 to i64
  store i64 %4381, i64* %RCX, align 8, !tbaa !2428
  %4382 = load i64, i64* %RBP, align 8
  %4383 = add i64 %4382, -12
  %4384 = add i64 %4372, 13
  store i64 %4384, i64* %PC, align 8
  %4385 = inttoptr i64 %4383 to i32*
  %4386 = load i32, i32* %4385, align 4
  %4387 = add i32 %4386, 1
  %4388 = zext i32 %4387 to i64
  store i64 %4388, i64* %RDX, align 8, !tbaa !2428
  %4389 = sext i32 %4387 to i64
  %4390 = shl nsw i64 %4389, 6
  store i64 %4390, i64* %RDI, align 8, !tbaa !2428
  %.lobit = lshr i32 %4387, 31
  %4391 = trunc i32 %.lobit to i8
  store i8 %4391, i8* %18, align 1, !tbaa !2451
  %4392 = trunc i64 %4390 to i32
  %4393 = and i32 %4392, 192
  %4394 = tail call i32 @llvm.ctpop.i32(i32 %4393) #8
  %4395 = trunc i32 %4394 to i8
  %4396 = and i8 %4395, 1
  %4397 = xor i8 %4396, 1
  store i8 %4397, i8* %25, align 1, !tbaa !2451
  store i8 0, i8* %31, align 1, !tbaa !2451
  %4398 = icmp eq i32 %4387, 0
  %4399 = zext i1 %4398 to i8
  store i8 %4399, i8* %34, align 1, !tbaa !2451
  %4400 = lshr i64 %4389, 57
  %4401 = and i64 %4400, 1
  %4402 = trunc i64 %4401 to i8
  store i8 %4402, i8* %37, align 1, !tbaa !2451
  store i8 0, i8* %43, align 1, !tbaa !2451
  %4403 = add i64 %4382, -2704
  %4404 = add i64 %4372, 30
  store i64 %4404, i64* %PC, align 8
  %4405 = inttoptr i64 %4403 to i64*
  %4406 = load i64, i64* %4405, align 8
  %4407 = add i64 %4390, %4406
  store i64 %4407, i64* %R8, align 8, !tbaa !2428
  %4408 = icmp ult i64 %4407, %4406
  %4409 = icmp ult i64 %4407, %4390
  %4410 = or i1 %4408, %4409
  %4411 = zext i1 %4410 to i8
  store i8 %4411, i8* %18, align 1, !tbaa !2432
  %4412 = trunc i64 %4407 to i32
  %4413 = and i32 %4412, 255
  %4414 = tail call i32 @llvm.ctpop.i32(i32 %4413) #8
  %4415 = trunc i32 %4414 to i8
  %4416 = and i8 %4415, 1
  %4417 = xor i8 %4416, 1
  store i8 %4417, i8* %25, align 1, !tbaa !2446
  %4418 = xor i64 %4406, %4407
  %4419 = lshr i64 %4418, 4
  %4420 = trunc i64 %4419 to i8
  %4421 = and i8 %4420, 1
  store i8 %4421, i8* %31, align 1, !tbaa !2447
  %4422 = icmp eq i64 %4407, 0
  %4423 = zext i1 %4422 to i8
  store i8 %4423, i8* %34, align 1, !tbaa !2448
  %4424 = lshr i64 %4407, 63
  %4425 = trunc i64 %4424 to i8
  store i8 %4425, i8* %37, align 1, !tbaa !2449
  %4426 = lshr i64 %4406, 63
  %4427 = xor i64 %4424, %4426
  %4428 = xor i64 %4424, %4401
  %4429 = add nuw nsw i64 %4427, %4428
  %4430 = icmp eq i64 %4429, 2
  %4431 = zext i1 %4430 to i8
  store i8 %4431, i8* %43, align 1, !tbaa !2450
  %4432 = load i64, i64* %RBP, align 8
  %4433 = add i64 %4432, -4
  %4434 = add i64 %4372, 36
  store i64 %4434, i64* %PC, align 8
  %4435 = inttoptr i64 %4433 to i32*
  %4436 = load i32, i32* %4435, align 4
  %4437 = zext i32 %4436 to i64
  store i64 %4437, i64* %RDX, align 8, !tbaa !2428
  %4438 = add i64 %4432, -12
  %4439 = add i64 %4372, 39
  store i64 %4439, i64* %PC, align 8
  %4440 = inttoptr i64 %4438 to i32*
  %4441 = load i32, i32* %4440, align 4
  %4442 = add i32 %4441, %4436
  %4443 = zext i32 %4442 to i64
  store i64 %4443, i64* %RDX, align 8, !tbaa !2428
  %4444 = icmp ult i32 %4442, %4436
  %4445 = icmp ult i32 %4442, %4441
  %4446 = or i1 %4444, %4445
  %4447 = zext i1 %4446 to i8
  store i8 %4447, i8* %18, align 1, !tbaa !2432
  %4448 = and i32 %4442, 255
  %4449 = tail call i32 @llvm.ctpop.i32(i32 %4448) #8
  %4450 = trunc i32 %4449 to i8
  %4451 = and i8 %4450, 1
  %4452 = xor i8 %4451, 1
  store i8 %4452, i8* %25, align 1, !tbaa !2446
  %4453 = xor i32 %4441, %4436
  %4454 = xor i32 %4453, %4442
  %4455 = lshr i32 %4454, 4
  %4456 = trunc i32 %4455 to i8
  %4457 = and i8 %4456, 1
  store i8 %4457, i8* %31, align 1, !tbaa !2447
  %4458 = icmp eq i32 %4442, 0
  %4459 = zext i1 %4458 to i8
  store i8 %4459, i8* %34, align 1, !tbaa !2448
  %4460 = lshr i32 %4442, 31
  %4461 = trunc i32 %4460 to i8
  store i8 %4461, i8* %37, align 1, !tbaa !2449
  %4462 = lshr i32 %4436, 31
  %4463 = lshr i32 %4441, 31
  %4464 = xor i32 %4460, %4462
  %4465 = xor i32 %4460, %4463
  %4466 = add nuw nsw i32 %4464, %4465
  %4467 = icmp eq i32 %4466, 2
  %4468 = zext i1 %4467 to i8
  store i8 %4468, i8* %43, align 1, !tbaa !2450
  %4469 = add i64 %4432, -16
  %4470 = add i64 %4372, 42
  store i64 %4470, i64* %PC, align 8
  %4471 = inttoptr i64 %4469 to i32*
  %4472 = load i32, i32* %4471, align 4
  %4473 = sub i32 %4442, %4472
  %4474 = zext i32 %4473 to i64
  store i64 %4474, i64* %RDX, align 8, !tbaa !2428
  %4475 = icmp ult i32 %4442, %4472
  %4476 = zext i1 %4475 to i8
  store i8 %4476, i8* %18, align 1, !tbaa !2432
  %4477 = and i32 %4473, 255
  %4478 = tail call i32 @llvm.ctpop.i32(i32 %4477) #8
  %4479 = trunc i32 %4478 to i8
  %4480 = and i8 %4479, 1
  %4481 = xor i8 %4480, 1
  store i8 %4481, i8* %25, align 1, !tbaa !2446
  %4482 = xor i32 %4472, %4442
  %4483 = xor i32 %4482, %4473
  %4484 = lshr i32 %4483, 4
  %4485 = trunc i32 %4484 to i8
  %4486 = and i8 %4485, 1
  store i8 %4486, i8* %31, align 1, !tbaa !2447
  %4487 = icmp eq i32 %4473, 0
  %4488 = zext i1 %4487 to i8
  store i8 %4488, i8* %34, align 1, !tbaa !2448
  %4489 = lshr i32 %4473, 31
  %4490 = trunc i32 %4489 to i8
  store i8 %4490, i8* %37, align 1, !tbaa !2449
  %4491 = lshr i32 %4472, 31
  %4492 = xor i32 %4491, %4460
  %4493 = xor i32 %4489, %4460
  %4494 = add nuw nsw i32 %4493, %4492
  %4495 = icmp eq i32 %4494, 2
  %4496 = zext i1 %4495 to i8
  store i8 %4496, i8* %43, align 1, !tbaa !2450
  %4497 = sext i32 %4473 to i64
  store i64 %4497, i64* %RDI, align 8, !tbaa !2428
  %4498 = load i64, i64* %R8, align 8
  %4499 = shl nsw i64 %4497, 2
  %4500 = add i64 %4499, %4498
  %4501 = load i32, i32* %ECX, align 4
  %4502 = add i64 %4372, 49
  store i64 %4502, i64* %PC, align 8
  %4503 = inttoptr i64 %4500 to i32*
  store i32 %4501, i32* %4503, align 4
  %.pre38 = load i64, i64* %PC, align 8
  br label %block_400d91

block_401444:                                     ; preds = %block_401437
  %4504 = add i64 %1733, 4
  store i64 %4504, i64* %PC, align 8
  %4505 = load i32, i32* %1707, align 4
  %4506 = sext i32 %4505 to i64
  store i64 %4506, i64* %RAX, align 8, !tbaa !2428
  %4507 = shl nsw i64 %4506, 2
  %4508 = add i64 %1704, -2640
  %4509 = add i64 %4508, %4507
  %4510 = add i64 %1733, 15
  store i64 %4510, i64* %PC, align 8
  %4511 = inttoptr i64 %4509 to i32*
  store i32 0, i32* %4511, align 4
  %4512 = load i64, i64* %RBP, align 8
  %4513 = add i64 %4512, -4
  %4514 = load i64, i64* %PC, align 8
  %4515 = add i64 %4514, 4
  store i64 %4515, i64* %PC, align 8
  %4516 = inttoptr i64 %4513 to i32*
  %4517 = load i32, i32* %4516, align 4
  %4518 = sext i32 %4517 to i64
  store i64 %4518, i64* %RAX, align 8, !tbaa !2428
  %4519 = shl nsw i64 %4518, 2
  %4520 = add i64 %4519, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %4521 = add i64 %4514, 12
  store i64 %4521, i64* %PC, align 8
  %4522 = inttoptr i64 %4520 to i32*
  %4523 = load i32, i32* %4522, align 4
  %4524 = add i32 %4523, 1
  %4525 = icmp ne i32 %4523, -1
  %4526 = zext i1 %4525 to i8
  store i8 %4526, i8* %18, align 1, !tbaa !2432
  %4527 = and i32 %4524, 255
  %4528 = tail call i32 @llvm.ctpop.i32(i32 %4527) #8
  %4529 = trunc i32 %4528 to i8
  %4530 = and i8 %4529, 1
  %4531 = xor i8 %4530, 1
  store i8 %4531, i8* %25, align 1, !tbaa !2446
  %4532 = xor i32 %4523, 16
  %4533 = xor i32 %4524, %4532
  %4534 = lshr i32 %4533, 4
  %4535 = trunc i32 %4534 to i8
  %4536 = and i8 %4535, 1
  store i8 %4536, i8* %31, align 1, !tbaa !2447
  %4537 = icmp eq i32 %4524, 0
  %4538 = zext i1 %4537 to i8
  store i8 %4538, i8* %34, align 1, !tbaa !2448
  %4539 = lshr i32 %4524, 31
  %4540 = trunc i32 %4539 to i8
  store i8 %4540, i8* %37, align 1, !tbaa !2449
  %4541 = lshr i32 %4523, 31
  %4542 = xor i32 %4541, 1
  %4543 = xor i32 %4539, %4541
  %4544 = add nuw nsw i32 %4543, %4542
  %4545 = icmp eq i32 %4544, 2
  %4546 = zext i1 %4545 to i8
  store i8 %4546, i8* %43, align 1, !tbaa !2450
  %.v151 = select i1 %4537, i64 53, i64 18
  %4547 = add i64 %4514, %.v151
  %4548 = add i64 %4547, 4
  store i64 %4548, i64* %PC, align 8
  %4549 = load i32, i32* %4516, align 4
  %4550 = sext i32 %4549 to i64
  store i64 %4550, i64* %RAX, align 8, !tbaa !2428
  %4551 = shl nsw i64 %4550, 2
  %4552 = add i64 %4551, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  br i1 %4537, label %block_401488, label %block_401465

block_400a8a:                                     ; preds = %block_400a54
  %4553 = add i64 %4101, -1328
  %4554 = add i64 %4130, 10
  store i64 %4554, i64* %PC, align 8
  %4555 = inttoptr i64 %4553 to i32*
  store i32 0, i32* %4555, align 4
  %4556 = load i64, i64* %RBP, align 8
  %4557 = add i64 %4556, -1324
  %4558 = load i64, i64* %PC, align 8
  %4559 = add i64 %4558, 10
  store i64 %4559, i64* %PC, align 8
  %4560 = inttoptr i64 %4557 to i32*
  store i32 0, i32* %4560, align 4
  %4561 = load i64, i64* %RBP, align 8
  %4562 = add i64 %4561, -1408
  %4563 = load i64, i64* %PC, align 8
  %4564 = add i64 %4563, 10
  store i64 %4564, i64* %PC, align 8
  %4565 = inttoptr i64 %4562 to i32*
  store i32 -1, i32* %4565, align 4
  %4566 = load i64, i64* %RBP, align 8
  %4567 = add i64 %4566, -1404
  %4568 = load i64, i64* %PC, align 8
  %4569 = add i64 %4568, 10
  store i64 %4569, i64* %PC, align 8
  %4570 = inttoptr i64 %4567 to i32*
  store i32 0, i32* %4570, align 4
  %4571 = load i64, i64* %RBP, align 8
  %4572 = add i64 %4571, -12
  %4573 = load i64, i64* %PC, align 8
  %4574 = add i64 %4573, 7
  store i64 %4574, i64* %PC, align 8
  %4575 = inttoptr i64 %4572 to i32*
  store i32 0, i32* %4575, align 4
  %4576 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %.pre24 = load i64, i64* %RBP, align 8
  %.pre25 = load i64, i64* %PC, align 8
  br label %block_400ab9

block_40183d:                                     ; preds = %block_401838, %block_4017c8
  %.sink = phi i64 [ %4945, %block_401838 ], [ %303, %block_4017c8 ]
  %MEMORY.41 = phi %struct.Memory* [ %MEMORY.15, %block_401838 ], [ %MEMORY.4, %block_4017c8 ]
  %4577 = load i64, i64* %RSP, align 8
  %4578 = add i64 %4577, 2608
  store i64 %4578, i64* %RSP, align 8, !tbaa !2428
  %4579 = icmp ugt i64 %4577, -2609
  %4580 = zext i1 %4579 to i8
  store i8 %4580, i8* %18, align 1, !tbaa !2432
  %4581 = trunc i64 %4578 to i32
  %4582 = and i32 %4581, 255
  %4583 = tail call i32 @llvm.ctpop.i32(i32 %4582) #8
  %4584 = trunc i32 %4583 to i8
  %4585 = and i8 %4584, 1
  %4586 = xor i8 %4585, 1
  store i8 %4586, i8* %25, align 1, !tbaa !2446
  %4587 = xor i64 %4577, 16
  %4588 = xor i64 %4587, %4578
  %4589 = lshr i64 %4588, 4
  %4590 = trunc i64 %4589 to i8
  %4591 = and i8 %4590, 1
  store i8 %4591, i8* %31, align 1, !tbaa !2447
  %4592 = icmp eq i64 %4578, 0
  %4593 = zext i1 %4592 to i8
  store i8 %4593, i8* %34, align 1, !tbaa !2448
  %4594 = lshr i64 %4578, 63
  %4595 = trunc i64 %4594 to i8
  store i8 %4595, i8* %37, align 1, !tbaa !2449
  %4596 = lshr i64 %4577, 63
  %4597 = xor i64 %4594, %4596
  %4598 = add nuw nsw i64 %4597, %4594
  %4599 = icmp eq i64 %4598, 2
  %4600 = zext i1 %4599 to i8
  store i8 %4600, i8* %43, align 1, !tbaa !2450
  %4601 = add i64 %.sink, 8
  store i64 %4601, i64* %PC, align 8
  %4602 = add i64 %4577, 2616
  %4603 = inttoptr i64 %4578 to i64*
  %4604 = load i64, i64* %4603, align 8
  store i64 %4604, i64* %RBP, align 8, !tbaa !2428
  store i64 %4602, i64* %10, align 8, !tbaa !2428
  %4605 = add i64 %.sink, 9
  store i64 %4605, i64* %PC, align 8
  %4606 = inttoptr i64 %4602 to i64*
  %4607 = load i64, i64* %4606, align 8
  store i64 %4607, i64* %57, align 8, !tbaa !2428
  %4608 = add i64 %4577, 2624
  store i64 %4608, i64* %10, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.41

block_400b8b:                                     ; preds = %block_400bc7, %block_400b82
  %4609 = phi i64 [ %.pre27, %block_400b82 ], [ %2925, %block_400bc7 ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  store i8 1, i8* %25, align 1, !tbaa !2446
  store i8 1, i8* %34, align 1, !tbaa !2448
  store i8 0, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 0, i8* %31, align 1, !tbaa !2447
  store i8 0, i8* %CL, align 1, !tbaa !2451
  %4610 = load i64, i64* %RBP, align 8
  %4611 = add i64 %4610, -16
  %4612 = add i64 %4609, 8
  store i64 %4612, i64* %PC, align 8
  %4613 = inttoptr i64 %4611 to i32*
  %4614 = load i32, i32* %4613, align 4
  %4615 = sext i32 %4614 to i64
  store i64 %4615, i64* %RDX, align 8, !tbaa !2428
  %4616 = shl nsw i64 %4615, 2
  %4617 = add i64 %4610, -1248
  %4618 = add i64 %4617, %4616
  %4619 = add i64 %4609, 16
  store i64 %4619, i64* %PC, align 8
  %4620 = inttoptr i64 %4618 to i32*
  %4621 = load i32, i32* %4620, align 4
  %4622 = add i32 %4621, 1
  %4623 = icmp ne i32 %4621, -1
  %4624 = zext i1 %4623 to i8
  store i8 %4624, i8* %18, align 1, !tbaa !2432
  %4625 = and i32 %4622, 255
  %4626 = tail call i32 @llvm.ctpop.i32(i32 %4625) #8
  %4627 = trunc i32 %4626 to i8
  %4628 = and i8 %4627, 1
  %4629 = xor i8 %4628, 1
  store i8 %4629, i8* %25, align 1, !tbaa !2446
  %4630 = xor i32 %4621, 16
  %4631 = xor i32 %4622, %4630
  %4632 = lshr i32 %4631, 4
  %4633 = trunc i32 %4632 to i8
  %4634 = and i8 %4633, 1
  store i8 %4634, i8* %31, align 1, !tbaa !2447
  %4635 = icmp eq i32 %4622, 0
  %4636 = zext i1 %4635 to i8
  store i8 %4636, i8* %34, align 1, !tbaa !2448
  %4637 = lshr i32 %4622, 31
  %4638 = trunc i32 %4637 to i8
  store i8 %4638, i8* %37, align 1, !tbaa !2449
  %4639 = lshr i32 %4621, 31
  %4640 = xor i32 %4639, 1
  %4641 = xor i32 %4637, %4639
  %4642 = add nuw nsw i32 %4641, %4640
  %4643 = icmp eq i32 %4642, 2
  %4644 = zext i1 %4643 to i8
  store i8 %4644, i8* %43, align 1, !tbaa !2450
  %4645 = add i64 %4610, -2693
  %4646 = add i64 %4609, 22
  store i64 %4646, i64* %PC, align 8
  %4647 = inttoptr i64 %4645 to i8*
  store i8 0, i8* %4647, align 1
  %4648 = load i64, i64* %PC, align 8
  %4649 = load i8, i8* %34, align 1, !tbaa !2448
  %4650 = icmp eq i8 %4649, 0
  %.v163 = select i1 %4650, i64 19, i64 6
  %4651 = add i64 %4648, %.v163
  store i64 %4651, i64* %57, align 8, !tbaa !2428
  br i1 %4650, label %block_400bb4, label %block_400ba7

block_40135f:                                     ; preds = %block_401353
  %4652 = load i32, i32* %6200, align 4
  %4653 = sext i32 %4652 to i64
  store i64 %4653, i64* %RAX, align 8, !tbaa !2428
  %4654 = shl nsw i64 %4653, 2
  %4655 = add i64 %6197, -1488
  %4656 = add i64 %4655, %4654
  %4657 = add i64 %6233, 12
  store i64 %4657, i64* %PC, align 8
  %4658 = inttoptr i64 %4656 to i32*
  %4659 = load i32, i32* %4658, align 4
  %4660 = add i32 %4659, 1
  %4661 = icmp ne i32 %4659, -1
  %4662 = zext i1 %4661 to i8
  store i8 %4662, i8* %18, align 1, !tbaa !2432
  %4663 = and i32 %4660, 255
  %4664 = tail call i32 @llvm.ctpop.i32(i32 %4663) #8
  %4665 = trunc i32 %4664 to i8
  %4666 = and i8 %4665, 1
  %4667 = xor i8 %4666, 1
  store i8 %4667, i8* %25, align 1, !tbaa !2446
  %4668 = xor i32 %4659, 16
  %4669 = xor i32 %4660, %4668
  %4670 = lshr i32 %4669, 4
  %4671 = trunc i32 %4670 to i8
  %4672 = and i8 %4671, 1
  store i8 %4672, i8* %31, align 1, !tbaa !2447
  %4673 = icmp eq i32 %4660, 0
  %4674 = zext i1 %4673 to i8
  store i8 %4674, i8* %34, align 1, !tbaa !2448
  %4675 = lshr i32 %4660, 31
  %4676 = trunc i32 %4675 to i8
  store i8 %4676, i8* %37, align 1, !tbaa !2449
  %4677 = lshr i32 %4659, 31
  %4678 = xor i32 %4677, 1
  %4679 = xor i32 %4675, %4677
  %4680 = add nuw nsw i32 %4679, %4678
  %4681 = icmp eq i32 %4680, 2
  %4682 = zext i1 %4681 to i8
  store i8 %4682, i8* %43, align 1, !tbaa !2450
  %.v144 = select i1 %4673, i64 146, i64 18
  %4683 = add i64 %6233, %.v144
  store i64 %4683, i64* %57, align 8, !tbaa !2428
  br i1 %4673, label %block_4013f1, label %block_401371

block_400e3a:                                     ; preds = %block_400e35, %block_400b7d
  %.sink104 = phi i64 [ %5504, %block_400e35 ], [ %1748, %block_400b7d ]
  %4684 = phi i64 [ %2560, %block_400e35 ], [ %5668, %block_400b7d ]
  %MEMORY.43 = phi %struct.Memory* [ %MEMORY.35, %block_400e35 ], [ %MEMORY.30, %block_400b7d ]
  %4685 = add i64 %4684, -12
  %4686 = add i64 %.sink104, 3
  store i64 %4686, i64* %PC, align 8
  %4687 = inttoptr i64 %4685 to i32*
  %4688 = load i32, i32* %4687, align 4
  %4689 = zext i32 %4688 to i64
  store i64 %4689, i64* %RAX, align 8, !tbaa !2428
  %4690 = add i64 %.sink104, 6
  store i64 %4690, i64* %PC, align 8
  %4691 = load i32, i32* %4687, align 4
  %4692 = add i32 %4691, 1
  %4693 = zext i32 %4692 to i64
  store i64 %4693, i64* %RCX, align 8, !tbaa !2428
  %4694 = icmp eq i32 %4691, -1
  %4695 = icmp eq i32 %4692, 0
  %4696 = or i1 %4694, %4695
  %4697 = zext i1 %4696 to i8
  store i8 %4697, i8* %18, align 1, !tbaa !2432
  %4698 = and i32 %4692, 255
  %4699 = tail call i32 @llvm.ctpop.i32(i32 %4698) #8
  %4700 = trunc i32 %4699 to i8
  %4701 = and i8 %4700, 1
  %4702 = xor i8 %4701, 1
  store i8 %4702, i8* %25, align 1, !tbaa !2446
  %4703 = xor i32 %4691, %4692
  %4704 = lshr i32 %4703, 4
  %4705 = trunc i32 %4704 to i8
  %4706 = and i8 %4705, 1
  store i8 %4706, i8* %31, align 1, !tbaa !2447
  %4707 = icmp eq i32 %4692, 0
  %4708 = zext i1 %4707 to i8
  store i8 %4708, i8* %34, align 1, !tbaa !2448
  %4709 = lshr i32 %4692, 31
  %4710 = trunc i32 %4709 to i8
  store i8 %4710, i8* %37, align 1, !tbaa !2449
  %4711 = lshr i32 %4691, 31
  %4712 = xor i32 %4709, %4711
  %4713 = add nuw nsw i32 %4712, %4709
  %4714 = icmp eq i32 %4713, 2
  %4715 = zext i1 %4714 to i8
  store i8 %4715, i8* %43, align 1, !tbaa !2450
  %4716 = sext i32 %4692 to i64
  store i64 %4716, i64* %RDX, align 8, !tbaa !2428
  %4717 = shl nsw i64 %4716, 2
  %4718 = add i64 %4684, -1328
  %4719 = add i64 %4718, %4717
  %4720 = add i64 %.sink104, 19
  store i64 %4720, i64* %PC, align 8
  %4721 = inttoptr i64 %4719 to i32*
  %4722 = load i32, i32* %4721, align 4
  %4723 = sub i32 %4688, %4722
  %4724 = zext i32 %4723 to i64
  store i64 %4724, i64* %RAX, align 8, !tbaa !2428
  %4725 = icmp ult i32 %4688, %4722
  %4726 = zext i1 %4725 to i8
  store i8 %4726, i8* %18, align 1, !tbaa !2432
  %4727 = and i32 %4723, 255
  %4728 = tail call i32 @llvm.ctpop.i32(i32 %4727) #8
  %4729 = trunc i32 %4728 to i8
  %4730 = and i8 %4729, 1
  %4731 = xor i8 %4730, 1
  store i8 %4731, i8* %25, align 1, !tbaa !2446
  %4732 = xor i32 %4722, %4688
  %4733 = xor i32 %4732, %4723
  %4734 = lshr i32 %4733, 4
  %4735 = trunc i32 %4734 to i8
  %4736 = and i8 %4735, 1
  store i8 %4736, i8* %31, align 1, !tbaa !2447
  %4737 = icmp eq i32 %4723, 0
  %4738 = zext i1 %4737 to i8
  store i8 %4738, i8* %34, align 1, !tbaa !2448
  %4739 = lshr i32 %4723, 31
  %4740 = trunc i32 %4739 to i8
  store i8 %4740, i8* %37, align 1, !tbaa !2449
  %4741 = lshr i32 %4688, 31
  %4742 = lshr i32 %4722, 31
  %4743 = xor i32 %4742, %4741
  %4744 = xor i32 %4739, %4741
  %4745 = add nuw nsw i32 %4744, %4743
  %4746 = icmp eq i32 %4745, 2
  %4747 = zext i1 %4746 to i8
  store i8 %4747, i8* %43, align 1, !tbaa !2450
  %4748 = add i64 %.sink104, 22
  store i64 %4748, i64* %PC, align 8
  %4749 = load i32, i32* %4687, align 4
  %4750 = add i32 %4749, 1
  %4751 = zext i32 %4750 to i64
  store i64 %4751, i64* %RCX, align 8, !tbaa !2428
  %4752 = icmp eq i32 %4749, -1
  %4753 = icmp eq i32 %4750, 0
  %4754 = or i1 %4752, %4753
  %4755 = zext i1 %4754 to i8
  store i8 %4755, i8* %18, align 1, !tbaa !2432
  %4756 = and i32 %4750, 255
  %4757 = tail call i32 @llvm.ctpop.i32(i32 %4756) #8
  %4758 = trunc i32 %4757 to i8
  %4759 = and i8 %4758, 1
  %4760 = xor i8 %4759, 1
  store i8 %4760, i8* %25, align 1, !tbaa !2446
  %4761 = xor i32 %4749, %4750
  %4762 = lshr i32 %4761, 4
  %4763 = trunc i32 %4762 to i8
  %4764 = and i8 %4763, 1
  store i8 %4764, i8* %31, align 1, !tbaa !2447
  %4765 = icmp eq i32 %4750, 0
  %4766 = zext i1 %4765 to i8
  store i8 %4766, i8* %34, align 1, !tbaa !2448
  %4767 = lshr i32 %4750, 31
  %4768 = trunc i32 %4767 to i8
  store i8 %4768, i8* %37, align 1, !tbaa !2449
  %4769 = lshr i32 %4749, 31
  %4770 = xor i32 %4767, %4769
  %4771 = add nuw nsw i32 %4770, %4767
  %4772 = icmp eq i32 %4771, 2
  %4773 = zext i1 %4772 to i8
  store i8 %4773, i8* %43, align 1, !tbaa !2450
  %4774 = sext i32 %4750 to i64
  store i64 %4774, i64* %RDX, align 8, !tbaa !2428
  %4775 = load i64, i64* %RBP, align 8
  %4776 = shl nsw i64 %4774, 2
  %4777 = add i64 %4775, -1408
  %4778 = add i64 %4777, %4776
  %4779 = add i64 %.sink104, 35
  store i64 %4779, i64* %PC, align 8
  %4780 = inttoptr i64 %4778 to i32*
  store i32 %4723, i32* %4780, align 4
  %4781 = load i64, i64* %RBP, align 8
  %4782 = add i64 %4781, -12
  %4783 = load i64, i64* %PC, align 8
  %4784 = add i64 %4783, 4
  store i64 %4784, i64* %PC, align 8
  %4785 = inttoptr i64 %4782 to i32*
  %4786 = load i32, i32* %4785, align 4
  %4787 = add i32 %4786, -16
  %4788 = icmp ult i32 %4786, 16
  %4789 = zext i1 %4788 to i8
  store i8 %4789, i8* %18, align 1, !tbaa !2432
  %4790 = and i32 %4787, 255
  %4791 = tail call i32 @llvm.ctpop.i32(i32 %4790) #8
  %4792 = trunc i32 %4791 to i8
  %4793 = and i8 %4792, 1
  %4794 = xor i8 %4793, 1
  store i8 %4794, i8* %25, align 1, !tbaa !2446
  %4795 = xor i32 %4786, 16
  %4796 = xor i32 %4795, %4787
  %4797 = lshr i32 %4796, 4
  %4798 = trunc i32 %4797 to i8
  %4799 = and i8 %4798, 1
  store i8 %4799, i8* %31, align 1, !tbaa !2447
  %4800 = icmp eq i32 %4787, 0
  %4801 = zext i1 %4800 to i8
  store i8 %4801, i8* %34, align 1, !tbaa !2448
  %4802 = lshr i32 %4787, 31
  %4803 = trunc i32 %4802 to i8
  store i8 %4803, i8* %37, align 1, !tbaa !2449
  %4804 = lshr i32 %4786, 31
  %4805 = xor i32 %4802, %4804
  %4806 = add nuw nsw i32 %4805, %4804
  %4807 = icmp eq i32 %4806, 2
  %4808 = zext i1 %4807 to i8
  store i8 %4808, i8* %43, align 1, !tbaa !2450
  %4809 = icmp ne i8 %4803, 0
  %4810 = xor i1 %4809, %4807
  %.v118 = select i1 %4810, i64 10, i64 366
  %4811 = add i64 %4783, %.v118
  store i64 %4811, i64* %57, align 8, !tbaa !2428
  br i1 %4810, label %block_400e67, label %block_400fcb

block_4016ea:                                     ; preds = %block_40173b, %block_4016e3
  %4812 = phi i64 [ %.pre93, %block_4016e3 ], [ %1781, %block_40173b ]
  %4813 = load i64, i64* %RBP, align 8
  %4814 = add i64 %4813, -4
  %4815 = add i64 %4812, 7
  store i64 %4815, i64* %PC, align 8
  %4816 = inttoptr i64 %4814 to i32*
  %4817 = load i32, i32* %4816, align 4
  %4818 = add i32 %4817, -255
  %4819 = icmp ult i32 %4817, 255
  %4820 = zext i1 %4819 to i8
  store i8 %4820, i8* %18, align 1, !tbaa !2432
  %4821 = and i32 %4818, 255
  %4822 = tail call i32 @llvm.ctpop.i32(i32 %4821) #8
  %4823 = trunc i32 %4822 to i8
  %4824 = and i8 %4823, 1
  %4825 = xor i8 %4824, 1
  store i8 %4825, i8* %25, align 1, !tbaa !2446
  %4826 = xor i32 %4817, 16
  %4827 = xor i32 %4826, %4818
  %4828 = lshr i32 %4827, 4
  %4829 = trunc i32 %4828 to i8
  %4830 = and i8 %4829, 1
  store i8 %4830, i8* %31, align 1, !tbaa !2447
  %4831 = icmp eq i32 %4818, 0
  %4832 = zext i1 %4831 to i8
  store i8 %4832, i8* %34, align 1, !tbaa !2448
  %4833 = lshr i32 %4818, 31
  %4834 = trunc i32 %4833 to i8
  store i8 %4834, i8* %37, align 1, !tbaa !2449
  %4835 = lshr i32 %4817, 31
  %4836 = xor i32 %4833, %4835
  %4837 = add nuw nsw i32 %4836, %4835
  %4838 = icmp eq i32 %4837, 2
  %4839 = zext i1 %4838 to i8
  store i8 %4839, i8* %43, align 1, !tbaa !2450
  %4840 = icmp ne i8 %4834, 0
  %4841 = xor i1 %4840, %4838
  %.v159 = select i1 %4841, i64 13, i64 100
  %4842 = add i64 %4812, %.v159
  store i64 %4842, i64* %57, align 8, !tbaa !2428
  br i1 %4841, label %block_4016f7, label %block_40174e

block_400c7a:                                     ; preds = %block_400c36
  %4843 = add i64 %5503, -16
  %4844 = add i64 %5502, 4
  store i64 %4844, i64* %PC, align 8
  %4845 = inttoptr i64 %4843 to i32*
  %4846 = load i32, i32* %4845, align 4
  %4847 = sext i32 %4846 to i64
  store i64 %4847, i64* %RAX, align 8, !tbaa !2428
  %4848 = shl nsw i64 %4847, 2
  %4849 = add i64 %5503, -1328
  %4850 = add i64 %4849, %4848
  %4851 = add i64 %5502, 11
  store i64 %4851, i64* %PC, align 8
  %4852 = inttoptr i64 %4850 to i32*
  %4853 = load i32, i32* %4852, align 4
  %4854 = zext i32 %4853 to i64
  store i64 %4854, i64* %RCX, align 8, !tbaa !2428
  %4855 = add i64 %5503, -12
  %4856 = add i64 %5502, 14
  store i64 %4856, i64* %PC, align 8
  %4857 = inttoptr i64 %4855 to i32*
  %4858 = load i32, i32* %4857, align 4
  %4859 = add i32 %4858, %4853
  %4860 = zext i32 %4859 to i64
  store i64 %4860, i64* %RCX, align 8, !tbaa !2428
  %4861 = icmp ult i32 %4859, %4853
  %4862 = icmp ult i32 %4859, %4858
  %4863 = or i1 %4861, %4862
  %4864 = zext i1 %4863 to i8
  store i8 %4864, i8* %18, align 1, !tbaa !2432
  %4865 = and i32 %4859, 255
  %4866 = tail call i32 @llvm.ctpop.i32(i32 %4865) #8
  %4867 = trunc i32 %4866 to i8
  %4868 = and i8 %4867, 1
  %4869 = xor i8 %4868, 1
  store i8 %4869, i8* %25, align 1, !tbaa !2446
  %4870 = xor i32 %4858, %4853
  %4871 = xor i32 %4870, %4859
  %4872 = lshr i32 %4871, 4
  %4873 = trunc i32 %4872 to i8
  %4874 = and i8 %4873, 1
  store i8 %4874, i8* %31, align 1, !tbaa !2447
  %4875 = icmp eq i32 %4859, 0
  %4876 = zext i1 %4875 to i8
  store i8 %4876, i8* %34, align 1, !tbaa !2448
  %4877 = lshr i32 %4859, 31
  %4878 = trunc i32 %4877 to i8
  store i8 %4878, i8* %37, align 1, !tbaa !2449
  %4879 = lshr i32 %4853, 31
  %4880 = lshr i32 %4858, 31
  %4881 = xor i32 %4877, %4879
  %4882 = xor i32 %4877, %4880
  %4883 = add nuw nsw i32 %4881, %4882
  %4884 = icmp eq i32 %4883, 2
  %4885 = zext i1 %4884 to i8
  store i8 %4885, i8* %43, align 1, !tbaa !2450
  %4886 = add i64 %5502, 17
  store i64 %4886, i64* %PC, align 8
  %4887 = load i32, i32* %4845, align 4
  %4888 = sub i32 %4859, %4887
  %4889 = zext i32 %4888 to i64
  store i64 %4889, i64* %RCX, align 8, !tbaa !2428
  %4890 = icmp ult i32 %4859, %4887
  %4891 = zext i1 %4890 to i8
  store i8 %4891, i8* %18, align 1, !tbaa !2432
  %4892 = and i32 %4888, 255
  %4893 = tail call i32 @llvm.ctpop.i32(i32 %4892) #8
  %4894 = trunc i32 %4893 to i8
  %4895 = and i8 %4894, 1
  %4896 = xor i8 %4895, 1
  store i8 %4896, i8* %25, align 1, !tbaa !2446
  %4897 = xor i32 %4887, %4859
  %4898 = xor i32 %4897, %4888
  %4899 = lshr i32 %4898, 4
  %4900 = trunc i32 %4899 to i8
  %4901 = and i8 %4900, 1
  store i8 %4901, i8* %31, align 1, !tbaa !2447
  %4902 = icmp eq i32 %4888, 0
  %4903 = zext i1 %4902 to i8
  store i8 %4903, i8* %34, align 1, !tbaa !2448
  %4904 = lshr i32 %4888, 31
  %4905 = trunc i32 %4904 to i8
  store i8 %4905, i8* %37, align 1, !tbaa !2449
  %4906 = lshr i32 %4887, 31
  %4907 = xor i32 %4906, %4877
  %4908 = xor i32 %4904, %4877
  %4909 = add nuw nsw i32 %4908, %4907
  %4910 = icmp eq i32 %4909, 2
  %4911 = zext i1 %4910 to i8
  store i8 %4911, i8* %43, align 1, !tbaa !2450
  %4912 = add i64 %5502, 20
  store i64 %4912, i64* %PC, align 8
  %4913 = load i32, i32* %4857, align 4
  %4914 = add i32 %4913, 1
  %4915 = zext i32 %4914 to i64
  store i64 %4915, i64* %RDX, align 8, !tbaa !2428
  %4916 = icmp eq i32 %4913, -1
  %4917 = icmp eq i32 %4914, 0
  %4918 = or i1 %4916, %4917
  %4919 = zext i1 %4918 to i8
  store i8 %4919, i8* %18, align 1, !tbaa !2432
  %4920 = and i32 %4914, 255
  %4921 = tail call i32 @llvm.ctpop.i32(i32 %4920) #8
  %4922 = trunc i32 %4921 to i8
  %4923 = and i8 %4922, 1
  %4924 = xor i8 %4923, 1
  store i8 %4924, i8* %25, align 1, !tbaa !2446
  %4925 = xor i32 %4913, %4914
  %4926 = lshr i32 %4925, 4
  %4927 = trunc i32 %4926 to i8
  %4928 = and i8 %4927, 1
  store i8 %4928, i8* %31, align 1, !tbaa !2447
  %4929 = icmp eq i32 %4914, 0
  %4930 = zext i1 %4929 to i8
  store i8 %4930, i8* %34, align 1, !tbaa !2448
  %4931 = lshr i32 %4914, 31
  %4932 = trunc i32 %4931 to i8
  store i8 %4932, i8* %37, align 1, !tbaa !2449
  %4933 = lshr i32 %4913, 31
  %4934 = xor i32 %4931, %4933
  %4935 = add nuw nsw i32 %4934, %4931
  %4936 = icmp eq i32 %4935, 2
  %4937 = zext i1 %4936 to i8
  store i8 %4937, i8* %43, align 1, !tbaa !2450
  %4938 = sext i32 %4914 to i64
  store i64 %4938, i64* %RAX, align 8, !tbaa !2428
  %4939 = load i64, i64* %RBP, align 8
  %4940 = shl nsw i64 %4938, 2
  %4941 = add i64 %4939, -1328
  %4942 = add i64 %4941, %4940
  %4943 = add i64 %5502, 33
  store i64 %4943, i64* %PC, align 8
  %4944 = inttoptr i64 %4942 to i32*
  store i32 %4888, i32* %4944, align 4
  %.pre33 = load i64, i64* %PC, align 8
  br label %block_400c9b

block_401838:                                     ; preds = %block_4017d4
  %4945 = add i64 %302, 5
  br label %block_40183d

block_400b0a:                                     ; preds = %block_400af6
  %4946 = add i64 %5668, -1168
  store i64 %4946, i64* %RAX, align 8, !tbaa !2428
  %4947 = add i64 %5711, 11
  store i64 %4947, i64* %PC, align 8
  %4948 = load i32, i32* %5676, align 4
  %4949 = sext i32 %4948 to i64
  %4950 = shl nsw i64 %4949, 6
  store i64 %4950, i64* %RCX, align 8, !tbaa !2428
  %4951 = lshr i64 %4949, 57
  %4952 = and i64 %4951, 1
  %4953 = add i64 %4950, %4946
  store i64 %4953, i64* %RDX, align 8, !tbaa !2428
  %4954 = icmp ult i64 %4953, %4946
  %4955 = icmp ult i64 %4953, %4950
  %4956 = or i1 %4954, %4955
  %4957 = zext i1 %4956 to i8
  store i8 %4957, i8* %18, align 1, !tbaa !2432
  %4958 = trunc i64 %4953 to i32
  %4959 = and i32 %4958, 255
  %4960 = tail call i32 @llvm.ctpop.i32(i32 %4959) #8
  %4961 = trunc i32 %4960 to i8
  %4962 = and i8 %4961, 1
  %4963 = xor i8 %4962, 1
  store i8 %4963, i8* %25, align 1, !tbaa !2446
  %4964 = xor i64 %4946, %4953
  %4965 = lshr i64 %4964, 4
  %4966 = trunc i64 %4965 to i8
  %4967 = and i8 %4966, 1
  store i8 %4967, i8* %31, align 1, !tbaa !2447
  %4968 = icmp eq i64 %4953, 0
  %4969 = zext i1 %4968 to i8
  store i8 %4969, i8* %34, align 1, !tbaa !2448
  %4970 = lshr i64 %4953, 63
  %4971 = trunc i64 %4970 to i8
  store i8 %4971, i8* %37, align 1, !tbaa !2449
  %4972 = lshr i64 %4946, 63
  %4973 = xor i64 %4970, %4972
  %4974 = xor i64 %4970, %4952
  %4975 = add nuw nsw i64 %4973, %4974
  %4976 = icmp eq i64 %4975, 2
  %4977 = zext i1 %4976 to i8
  store i8 %4977, i8* %43, align 1, !tbaa !2450
  %4978 = add i64 %5711, 25
  store i64 %4978, i64* %PC, align 8
  %4979 = load i32, i32* %5671, align 4
  %4980 = sext i32 %4979 to i64
  store i64 %4980, i64* %RCX, align 8, !tbaa !2428
  %4981 = shl nsw i64 %4980, 2
  %4982 = add i64 %4981, %4953
  %4983 = add i64 %5711, 28
  store i64 %4983, i64* %PC, align 8
  %4984 = inttoptr i64 %4982 to i32*
  %4985 = load i32, i32* %4984, align 4
  %4986 = zext i32 %4985 to i64
  store i64 %4986, i64* %RSI, align 8, !tbaa !2428
  %4987 = add i64 %5711, 31
  store i64 %4987, i64* %PC, align 8
  %4988 = load i32, i32* %5676, align 4
  %4989 = add i32 %4988, 1
  %4990 = zext i32 %4989 to i64
  store i64 %4990, i64* %RDI, align 8, !tbaa !2428
  %4991 = sext i32 %4989 to i64
  %4992 = shl nsw i64 %4991, 6
  store i64 %4992, i64* %RCX, align 8, !tbaa !2428
  %4993 = lshr i64 %4991, 57
  %4994 = and i64 %4993, 1
  %4995 = load i64, i64* %RAX, align 8
  %4996 = add i64 %4992, %4995
  store i64 %4996, i64* %RDX, align 8, !tbaa !2428
  %4997 = icmp ult i64 %4996, %4995
  %4998 = icmp ult i64 %4996, %4992
  %4999 = or i1 %4997, %4998
  %5000 = zext i1 %4999 to i8
  store i8 %5000, i8* %18, align 1, !tbaa !2432
  %5001 = trunc i64 %4996 to i32
  %5002 = and i32 %5001, 255
  %5003 = tail call i32 @llvm.ctpop.i32(i32 %5002) #8
  %5004 = trunc i32 %5003 to i8
  %5005 = and i8 %5004, 1
  %5006 = xor i8 %5005, 1
  store i8 %5006, i8* %25, align 1, !tbaa !2446
  %5007 = xor i64 %4995, %4996
  %5008 = lshr i64 %5007, 4
  %5009 = trunc i64 %5008 to i8
  %5010 = and i8 %5009, 1
  store i8 %5010, i8* %31, align 1, !tbaa !2447
  %5011 = icmp eq i64 %4996, 0
  %5012 = zext i1 %5011 to i8
  store i8 %5012, i8* %34, align 1, !tbaa !2448
  %5013 = lshr i64 %4996, 63
  %5014 = trunc i64 %5013 to i8
  store i8 %5014, i8* %37, align 1, !tbaa !2449
  %5015 = lshr i64 %4995, 63
  %5016 = xor i64 %5013, %5015
  %5017 = xor i64 %5013, %4994
  %5018 = add nuw nsw i64 %5016, %5017
  %5019 = icmp eq i64 %5018, 2
  %5020 = zext i1 %5019 to i8
  store i8 %5020, i8* %43, align 1, !tbaa !2450
  %5021 = load i64, i64* %RBP, align 8
  %5022 = add i64 %5021, -4
  %5023 = add i64 %5711, 51
  store i64 %5023, i64* %PC, align 8
  %5024 = inttoptr i64 %5022 to i32*
  %5025 = load i32, i32* %5024, align 4
  %5026 = sext i32 %5025 to i64
  store i64 %5026, i64* %RCX, align 8, !tbaa !2428
  %5027 = shl nsw i64 %5026, 2
  %5028 = add i64 %5027, %4996
  %5029 = load i32, i32* %ESI, align 4
  %5030 = add i64 %5711, 54
  store i64 %5030, i64* %PC, align 8
  %5031 = inttoptr i64 %5028 to i32*
  store i32 %5029, i32* %5031, align 4
  %5032 = load i64, i64* %RBP, align 8
  %5033 = add i64 %5032, -12
  %5034 = load i64, i64* %PC, align 8
  %5035 = add i64 %5034, 4
  store i64 %5035, i64* %PC, align 8
  %5036 = inttoptr i64 %5033 to i32*
  %5037 = load i32, i32* %5036, align 4
  %5038 = sext i32 %5037 to i64
  %5039 = shl nsw i64 %5038, 6
  store i64 %5039, i64* %RCX, align 8, !tbaa !2428
  %5040 = lshr i64 %5038, 57
  %5041 = and i64 %5040, 1
  %5042 = load i64, i64* %RAX, align 8
  %5043 = add i64 %5039, %5042
  store i64 %5043, i64* %RDX, align 8, !tbaa !2428
  %5044 = icmp ult i64 %5043, %5042
  %5045 = icmp ult i64 %5043, %5039
  %5046 = or i1 %5044, %5045
  %5047 = zext i1 %5046 to i8
  store i8 %5047, i8* %18, align 1, !tbaa !2432
  %5048 = trunc i64 %5043 to i32
  %5049 = and i32 %5048, 255
  %5050 = tail call i32 @llvm.ctpop.i32(i32 %5049) #8
  %5051 = trunc i32 %5050 to i8
  %5052 = and i8 %5051, 1
  %5053 = xor i8 %5052, 1
  store i8 %5053, i8* %25, align 1, !tbaa !2446
  %5054 = xor i64 %5042, %5043
  %5055 = lshr i64 %5054, 4
  %5056 = trunc i64 %5055 to i8
  %5057 = and i8 %5056, 1
  store i8 %5057, i8* %31, align 1, !tbaa !2447
  %5058 = icmp eq i64 %5043, 0
  %5059 = zext i1 %5058 to i8
  store i8 %5059, i8* %34, align 1, !tbaa !2448
  %5060 = lshr i64 %5043, 63
  %5061 = trunc i64 %5060 to i8
  store i8 %5061, i8* %37, align 1, !tbaa !2449
  %5062 = lshr i64 %5042, 63
  %5063 = xor i64 %5060, %5062
  %5064 = xor i64 %5060, %5041
  %5065 = add nuw nsw i64 %5063, %5064
  %5066 = icmp eq i64 %5065, 2
  %5067 = zext i1 %5066 to i8
  store i8 %5067, i8* %43, align 1, !tbaa !2450
  %5068 = add i64 %5032, -4
  %5069 = add i64 %5034, 18
  store i64 %5069, i64* %PC, align 8
  %5070 = inttoptr i64 %5068 to i32*
  %5071 = load i32, i32* %5070, align 4
  %5072 = sext i32 %5071 to i64
  store i64 %5072, i64* %RCX, align 8, !tbaa !2428
  %5073 = shl nsw i64 %5072, 2
  %5074 = add i64 %5073, %5043
  %5075 = add i64 %5034, 22
  store i64 %5075, i64* %PC, align 8
  %5076 = inttoptr i64 %5074 to i32*
  %5077 = load i32, i32* %5076, align 4
  %5078 = sext i32 %5077 to i64
  store i64 %5078, i64* %RCX, align 8, !tbaa !2428
  %5079 = shl nsw i64 %5078, 2
  %5080 = add i64 %5079, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %5081 = add i64 %5034, 29
  store i64 %5081, i64* %PC, align 8
  %5082 = inttoptr i64 %5080 to i32*
  %5083 = load i32, i32* %5082, align 4
  %5084 = zext i32 %5083 to i64
  store i64 %5084, i64* %RSI, align 8, !tbaa !2428
  %5085 = add i64 %5034, 33
  store i64 %5085, i64* %PC, align 8
  %5086 = load i32, i32* %5036, align 4
  %5087 = sext i32 %5086 to i64
  %5088 = shl nsw i64 %5087, 6
  store i64 %5088, i64* %RCX, align 8, !tbaa !2428
  %5089 = lshr i64 %5087, 57
  %5090 = and i64 %5089, 1
  %5091 = add i64 %5088, %5042
  store i64 %5091, i64* %RAX, align 8, !tbaa !2428
  %5092 = icmp ult i64 %5091, %5042
  %5093 = icmp ult i64 %5091, %5088
  %5094 = or i1 %5092, %5093
  %5095 = zext i1 %5094 to i8
  store i8 %5095, i8* %18, align 1, !tbaa !2432
  %5096 = trunc i64 %5091 to i32
  %5097 = and i32 %5096, 255
  %5098 = tail call i32 @llvm.ctpop.i32(i32 %5097) #8
  %5099 = trunc i32 %5098 to i8
  %5100 = and i8 %5099, 1
  %5101 = xor i8 %5100, 1
  store i8 %5101, i8* %25, align 1, !tbaa !2446
  %5102 = xor i64 %5042, %5091
  %5103 = lshr i64 %5102, 4
  %5104 = trunc i64 %5103 to i8
  %5105 = and i8 %5104, 1
  store i8 %5105, i8* %31, align 1, !tbaa !2447
  %5106 = icmp eq i64 %5091, 0
  %5107 = zext i1 %5106 to i8
  store i8 %5107, i8* %34, align 1, !tbaa !2448
  %5108 = lshr i64 %5091, 63
  %5109 = trunc i64 %5108 to i8
  store i8 %5109, i8* %37, align 1, !tbaa !2449
  %5110 = xor i64 %5108, %5062
  %5111 = xor i64 %5108, %5090
  %5112 = add nuw nsw i64 %5110, %5111
  %5113 = icmp eq i64 %5112, 2
  %5114 = zext i1 %5113 to i8
  store i8 %5114, i8* %43, align 1, !tbaa !2450
  %5115 = load i64, i64* %RBP, align 8
  %5116 = add i64 %5115, -4
  %5117 = add i64 %5034, 44
  store i64 %5117, i64* %PC, align 8
  %5118 = inttoptr i64 %5116 to i32*
  %5119 = load i32, i32* %5118, align 4
  %5120 = sext i32 %5119 to i64
  store i64 %5120, i64* %RCX, align 8, !tbaa !2428
  %5121 = shl nsw i64 %5120, 2
  %5122 = add i64 %5121, %5091
  %5123 = add i64 %5034, 47
  store i64 %5123, i64* %PC, align 8
  %5124 = inttoptr i64 %5122 to i32*
  store i32 %5083, i32* %5124, align 4
  %5125 = load i64, i64* %RBP, align 8
  %5126 = add i64 %5125, -4
  %5127 = load i64, i64* %PC, align 8
  %5128 = add i64 %5127, 3
  store i64 %5128, i64* %PC, align 8
  %5129 = inttoptr i64 %5126 to i32*
  %5130 = load i32, i32* %5129, align 4
  %5131 = add i32 %5130, 1
  %5132 = zext i32 %5131 to i64
  store i64 %5132, i64* %RAX, align 8, !tbaa !2428
  %5133 = icmp eq i32 %5130, -1
  %5134 = icmp eq i32 %5131, 0
  %5135 = or i1 %5133, %5134
  %5136 = zext i1 %5135 to i8
  store i8 %5136, i8* %18, align 1, !tbaa !2432
  %5137 = and i32 %5131, 255
  %5138 = tail call i32 @llvm.ctpop.i32(i32 %5137) #8
  %5139 = trunc i32 %5138 to i8
  %5140 = and i8 %5139, 1
  %5141 = xor i8 %5140, 1
  store i8 %5141, i8* %25, align 1, !tbaa !2446
  %5142 = xor i32 %5130, %5131
  %5143 = lshr i32 %5142, 4
  %5144 = trunc i32 %5143 to i8
  %5145 = and i8 %5144, 1
  store i8 %5145, i8* %31, align 1, !tbaa !2447
  %5146 = icmp eq i32 %5131, 0
  %5147 = zext i1 %5146 to i8
  store i8 %5147, i8* %34, align 1, !tbaa !2448
  %5148 = lshr i32 %5131, 31
  %5149 = trunc i32 %5148 to i8
  store i8 %5149, i8* %37, align 1, !tbaa !2449
  %5150 = lshr i32 %5130, 31
  %5151 = xor i32 %5148, %5150
  %5152 = add nuw nsw i32 %5151, %5148
  %5153 = icmp eq i32 %5152, 2
  %5154 = zext i1 %5153 to i8
  store i8 %5154, i8* %43, align 1, !tbaa !2450
  %5155 = add i64 %5127, 9
  store i64 %5155, i64* %PC, align 8
  store i32 %5131, i32* %5129, align 4
  %5156 = load i64, i64* %PC, align 8
  %5157 = add i64 %5156, -130
  store i64 %5157, i64* %57, align 8, !tbaa !2428
  br label %block_400af6

block_401816:                                     ; preds = %block_4017e1
  %5158 = add i64 %3268, 15
  store i64 %5158, i64* %PC, align 8
  %5159 = inttoptr i64 %3273 to i32*
  store i32 0, i32* %5159, align 4
  %.pre98 = load i64, i64* %PC, align 8
  br label %block_401825

block_401042:                                     ; preds = %block_40102e
  %5160 = add i64 %5713, -1168
  store i64 %5160, i64* %RAX, align 8, !tbaa !2428
  %5161 = add i64 %5756, 11
  store i64 %5161, i64* %PC, align 8
  %5162 = load i32, i32* %5721, align 4
  %5163 = sext i32 %5162 to i64
  %5164 = shl nsw i64 %5163, 6
  store i64 %5164, i64* %RCX, align 8, !tbaa !2428
  %5165 = lshr i64 %5163, 57
  %5166 = and i64 %5165, 1
  %5167 = add i64 %5164, %5160
  store i64 %5167, i64* %RDX, align 8, !tbaa !2428
  %5168 = icmp ult i64 %5167, %5160
  %5169 = icmp ult i64 %5167, %5164
  %5170 = or i1 %5168, %5169
  %5171 = zext i1 %5170 to i8
  store i8 %5171, i8* %18, align 1, !tbaa !2432
  %5172 = trunc i64 %5167 to i32
  %5173 = and i32 %5172, 255
  %5174 = tail call i32 @llvm.ctpop.i32(i32 %5173) #8
  %5175 = trunc i32 %5174 to i8
  %5176 = and i8 %5175, 1
  %5177 = xor i8 %5176, 1
  store i8 %5177, i8* %25, align 1, !tbaa !2446
  %5178 = xor i64 %5160, %5167
  %5179 = lshr i64 %5178, 4
  %5180 = trunc i64 %5179 to i8
  %5181 = and i8 %5180, 1
  store i8 %5181, i8* %31, align 1, !tbaa !2447
  %5182 = icmp eq i64 %5167, 0
  %5183 = zext i1 %5182 to i8
  store i8 %5183, i8* %34, align 1, !tbaa !2448
  %5184 = lshr i64 %5167, 63
  %5185 = trunc i64 %5184 to i8
  store i8 %5185, i8* %37, align 1, !tbaa !2449
  %5186 = lshr i64 %5160, 63
  %5187 = xor i64 %5184, %5186
  %5188 = xor i64 %5184, %5166
  %5189 = add nuw nsw i64 %5187, %5188
  %5190 = icmp eq i64 %5189, 2
  %5191 = zext i1 %5190 to i8
  store i8 %5191, i8* %43, align 1, !tbaa !2450
  %5192 = add i64 %5756, 25
  store i64 %5192, i64* %PC, align 8
  %5193 = load i32, i32* %5716, align 4
  %5194 = sext i32 %5193 to i64
  store i64 %5194, i64* %RCX, align 8, !tbaa !2428
  %5195 = shl nsw i64 %5194, 2
  %5196 = add i64 %5195, %5167
  %5197 = add i64 %5756, 29
  store i64 %5197, i64* %PC, align 8
  %5198 = inttoptr i64 %5196 to i32*
  %5199 = load i32, i32* %5198, align 4
  %5200 = sext i32 %5199 to i64
  store i64 %5200, i64* %RCX, align 8, !tbaa !2428
  %5201 = shl nsw i64 %5200, 2
  %5202 = add i64 %5201, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %5203 = add i64 %5756, 36
  store i64 %5203, i64* %PC, align 8
  %5204 = inttoptr i64 %5202 to i32*
  %5205 = load i32, i32* %5204, align 4
  %5206 = zext i32 %5205 to i64
  store i64 %5206, i64* %RSI, align 8, !tbaa !2428
  %5207 = add i64 %5756, 40
  store i64 %5207, i64* %PC, align 8
  %5208 = load i32, i32* %5721, align 4
  %5209 = sext i32 %5208 to i64
  %5210 = shl nsw i64 %5209, 6
  store i64 %5210, i64* %RCX, align 8, !tbaa !2428
  %5211 = lshr i64 %5209, 57
  %5212 = and i64 %5211, 1
  %5213 = load i64, i64* %RAX, align 8
  %5214 = add i64 %5210, %5213
  store i64 %5214, i64* %RAX, align 8, !tbaa !2428
  %5215 = icmp ult i64 %5214, %5213
  %5216 = icmp ult i64 %5214, %5210
  %5217 = or i1 %5215, %5216
  %5218 = zext i1 %5217 to i8
  store i8 %5218, i8* %18, align 1, !tbaa !2432
  %5219 = trunc i64 %5214 to i32
  %5220 = and i32 %5219, 255
  %5221 = tail call i32 @llvm.ctpop.i32(i32 %5220) #8
  %5222 = trunc i32 %5221 to i8
  %5223 = and i8 %5222, 1
  %5224 = xor i8 %5223, 1
  store i8 %5224, i8* %25, align 1, !tbaa !2446
  %5225 = xor i64 %5213, %5214
  %5226 = lshr i64 %5225, 4
  %5227 = trunc i64 %5226 to i8
  %5228 = and i8 %5227, 1
  store i8 %5228, i8* %31, align 1, !tbaa !2447
  %5229 = icmp eq i64 %5214, 0
  %5230 = zext i1 %5229 to i8
  store i8 %5230, i8* %34, align 1, !tbaa !2448
  %5231 = lshr i64 %5214, 63
  %5232 = trunc i64 %5231 to i8
  store i8 %5232, i8* %37, align 1, !tbaa !2449
  %5233 = lshr i64 %5213, 63
  %5234 = xor i64 %5231, %5233
  %5235 = xor i64 %5231, %5212
  %5236 = add nuw nsw i64 %5234, %5235
  %5237 = icmp eq i64 %5236, 2
  %5238 = zext i1 %5237 to i8
  store i8 %5238, i8* %43, align 1, !tbaa !2450
  %5239 = load i64, i64* %RBP, align 8
  %5240 = add i64 %5239, -4
  %5241 = add i64 %5756, 51
  store i64 %5241, i64* %PC, align 8
  %5242 = inttoptr i64 %5240 to i32*
  %5243 = load i32, i32* %5242, align 4
  %5244 = sext i32 %5243 to i64
  store i64 %5244, i64* %RCX, align 8, !tbaa !2428
  %5245 = shl nsw i64 %5244, 2
  %5246 = add i64 %5245, %5214
  %5247 = add i64 %5756, 54
  store i64 %5247, i64* %PC, align 8
  %5248 = inttoptr i64 %5246 to i32*
  store i32 %5205, i32* %5248, align 4
  %5249 = load i64, i64* %RBP, align 8
  %5250 = add i64 %5249, -4
  %5251 = load i64, i64* %PC, align 8
  %5252 = add i64 %5251, 3
  store i64 %5252, i64* %PC, align 8
  %5253 = inttoptr i64 %5250 to i32*
  %5254 = load i32, i32* %5253, align 4
  %5255 = add i32 %5254, 1
  %5256 = zext i32 %5255 to i64
  store i64 %5256, i64* %RAX, align 8, !tbaa !2428
  %5257 = icmp eq i32 %5254, -1
  %5258 = icmp eq i32 %5255, 0
  %5259 = or i1 %5257, %5258
  %5260 = zext i1 %5259 to i8
  store i8 %5260, i8* %18, align 1, !tbaa !2432
  %5261 = and i32 %5255, 255
  %5262 = tail call i32 @llvm.ctpop.i32(i32 %5261) #8
  %5263 = trunc i32 %5262 to i8
  %5264 = and i8 %5263, 1
  %5265 = xor i8 %5264, 1
  store i8 %5265, i8* %25, align 1, !tbaa !2446
  %5266 = xor i32 %5254, %5255
  %5267 = lshr i32 %5266, 4
  %5268 = trunc i32 %5267 to i8
  %5269 = and i8 %5268, 1
  store i8 %5269, i8* %31, align 1, !tbaa !2447
  %5270 = icmp eq i32 %5255, 0
  %5271 = zext i1 %5270 to i8
  store i8 %5271, i8* %34, align 1, !tbaa !2448
  %5272 = lshr i32 %5255, 31
  %5273 = trunc i32 %5272 to i8
  store i8 %5273, i8* %37, align 1, !tbaa !2449
  %5274 = lshr i32 %5254, 31
  %5275 = xor i32 %5272, %5274
  %5276 = add nuw nsw i32 %5275, %5272
  %5277 = icmp eq i32 %5276, 2
  %5278 = zext i1 %5277 to i8
  store i8 %5278, i8* %43, align 1, !tbaa !2450
  %5279 = add i64 %5251, 9
  store i64 %5279, i64* %PC, align 8
  store i32 %5255, i32* %5253, align 4
  %5280 = load i64, i64* %PC, align 8
  %5281 = add i64 %5280, -83
  store i64 %5281, i64* %57, align 8, !tbaa !2428
  br label %block_40102e

block_401237:                                     ; preds = %block_401217
  %5282 = add i64 %.pre62, -1168
  store i64 %5282, i64* %RAX, align 8, !tbaa !2428
  %5283 = add i64 %.pre62, -4
  %5284 = add i64 %6047, 11
  store i64 %5284, i64* %PC, align 8
  %5285 = inttoptr i64 %5283 to i32*
  %5286 = load i32, i32* %5285, align 4
  %5287 = sext i32 %5286 to i64
  store i64 %5287, i64* %RCX, align 8, !tbaa !2428
  %5288 = shl nsw i64 %5287, 2
  %5289 = add i64 %.pre62, -1488
  %5290 = add i64 %5289, %5288
  %5291 = add i64 %6047, 19
  store i64 %5291, i64* %PC, align 8
  %5292 = inttoptr i64 %5290 to i32*
  %5293 = load i32, i32* %5292, align 4
  %5294 = sext i32 %5293 to i64
  store i64 %5294, i64* %RCX, align 8, !tbaa !2428
  %5295 = shl nsw i64 %5294, 2
  %5296 = add i64 %5295, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %5297 = add i64 %6047, 26
  store i64 %5297, i64* %PC, align 8
  %5298 = inttoptr i64 %5296 to i32*
  %5299 = load i32, i32* %5298, align 4
  %5300 = zext i32 %5299 to i64
  store i64 %5300, i64* %RDX, align 8, !tbaa !2428
  %5301 = add i64 %.pre62, -12
  %5302 = add i64 %6047, 30
  store i64 %5302, i64* %PC, align 8
  %5303 = inttoptr i64 %5301 to i32*
  %5304 = load i32, i32* %5303, align 4
  %5305 = sext i32 %5304 to i64
  %5306 = shl nsw i64 %5305, 6
  store i64 %5306, i64* %RCX, align 8, !tbaa !2428
  %5307 = lshr i64 %5305, 57
  %5308 = and i64 %5307, 1
  %5309 = add i64 %5306, %5282
  store i64 %5309, i64* %RAX, align 8, !tbaa !2428
  %5310 = icmp ult i64 %5309, %5282
  %5311 = icmp ult i64 %5309, %5306
  %5312 = or i1 %5310, %5311
  %5313 = zext i1 %5312 to i8
  store i8 %5313, i8* %18, align 1, !tbaa !2432
  %5314 = trunc i64 %5309 to i32
  %5315 = and i32 %5314, 255
  %5316 = tail call i32 @llvm.ctpop.i32(i32 %5315) #8
  %5317 = trunc i32 %5316 to i8
  %5318 = and i8 %5317, 1
  %5319 = xor i8 %5318, 1
  store i8 %5319, i8* %25, align 1, !tbaa !2446
  %5320 = xor i64 %5282, %5309
  %5321 = lshr i64 %5320, 4
  %5322 = trunc i64 %5321 to i8
  %5323 = and i8 %5322, 1
  store i8 %5323, i8* %31, align 1, !tbaa !2447
  %5324 = icmp eq i64 %5309, 0
  %5325 = zext i1 %5324 to i8
  store i8 %5325, i8* %34, align 1, !tbaa !2448
  %5326 = lshr i64 %5309, 63
  %5327 = trunc i64 %5326 to i8
  store i8 %5327, i8* %37, align 1, !tbaa !2449
  %5328 = lshr i64 %5282, 63
  %5329 = xor i64 %5326, %5328
  %5330 = xor i64 %5326, %5308
  %5331 = add nuw nsw i64 %5329, %5330
  %5332 = icmp eq i64 %5331, 2
  %5333 = zext i1 %5332 to i8
  store i8 %5333, i8* %43, align 1, !tbaa !2450
  %5334 = add i64 %6047, 41
  store i64 %5334, i64* %PC, align 8
  %5335 = load i32, i32* %5285, align 4
  %5336 = sext i32 %5335 to i64
  store i64 %5336, i64* %RCX, align 8, !tbaa !2428
  %5337 = shl nsw i64 %5336, 2
  %5338 = add i64 %5337, %5309
  %5339 = add i64 %6047, 45
  store i64 %5339, i64* %PC, align 8
  %5340 = inttoptr i64 %5338 to i32*
  %5341 = load i32, i32* %5340, align 4
  %5342 = sext i32 %5341 to i64
  store i64 %5342, i64* %RAX, align 8, !tbaa !2428
  %5343 = shl nsw i64 %5342, 2
  %5344 = add i64 %5343, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %5345 = add i64 %6047, 52
  store i64 %5345, i64* %PC, align 8
  %5346 = inttoptr i64 %5344 to i32*
  %5347 = load i32, i32* %5346, align 4
  %5348 = xor i32 %5347, %5299
  %5349 = zext i32 %5348 to i64
  store i64 %5349, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  %5350 = and i32 %5348, 255
  %5351 = tail call i32 @llvm.ctpop.i32(i32 %5350) #8
  %5352 = trunc i32 %5351 to i8
  %5353 = and i8 %5352, 1
  %5354 = xor i8 %5353, 1
  store i8 %5354, i8* %25, align 1, !tbaa !2446
  %5355 = icmp eq i32 %5348, 0
  %5356 = zext i1 %5355 to i8
  store i8 %5356, i8* %34, align 1, !tbaa !2448
  %5357 = lshr i32 %5348, 31
  %5358 = trunc i32 %5357 to i8
  store i8 %5358, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  store i8 0, i8* %31, align 1, !tbaa !2447
  %5359 = load i64, i64* %RBP, align 8
  %5360 = add i64 %5359, -4
  %5361 = add i64 %6047, 56
  store i64 %5361, i64* %PC, align 8
  %5362 = inttoptr i64 %5360 to i32*
  %5363 = load i32, i32* %5362, align 4
  %5364 = sext i32 %5363 to i64
  store i64 %5364, i64* %RAX, align 8, !tbaa !2428
  %5365 = shl nsw i64 %5364, 2
  %5366 = add i64 %5359, -1616
  %5367 = add i64 %5366, %5365
  %5368 = add i64 %6047, 63
  store i64 %5368, i64* %PC, align 8
  %5369 = inttoptr i64 %5367 to i32*
  store i32 %5348, i32* %5369, align 4
  %5370 = load i64, i64* %PC, align 8
  %5371 = add i64 %5370, 214
  br label %block_40134c

block_4014b1:                                     ; preds = %block_4014aa, %block_4016cb
  %5372 = phi i64 [ %.pre73, %block_4014aa ], [ %3080, %block_4016cb ]
  %MEMORY.45 = phi %struct.Memory* [ %MEMORY.16, %block_4014aa ], [ %MEMORY.26, %block_4016cb ]
  %5373 = load i64, i64* %RBP, align 8
  %5374 = add i64 %5373, -4
  %5375 = add i64 %5372, 3
  store i64 %5375, i64* %PC, align 8
  %5376 = inttoptr i64 %5374 to i32*
  %5377 = load i32, i32* %5376, align 4
  %5378 = zext i32 %5377 to i64
  store i64 %5378, i64* %RAX, align 8, !tbaa !2428
  %5379 = add i64 %5373, -12
  %5380 = add i64 %5372, 7
  store i64 %5380, i64* %PC, align 8
  %5381 = inttoptr i64 %5379 to i32*
  %5382 = load i32, i32* %5381, align 4
  %5383 = sext i32 %5382 to i64
  store i64 %5383, i64* %RCX, align 8, !tbaa !2428
  %5384 = shl nsw i64 %5383, 2
  %5385 = add i64 %5373, -1328
  %5386 = add i64 %5385, %5384
  %5387 = add i64 %5372, 14
  store i64 %5387, i64* %PC, align 8
  %5388 = inttoptr i64 %5386 to i32*
  %5389 = load i32, i32* %5388, align 4
  %5390 = sub i32 %5377, %5389
  %5391 = icmp ult i32 %5377, %5389
  %5392 = zext i1 %5391 to i8
  store i8 %5392, i8* %18, align 1, !tbaa !2432
  %5393 = and i32 %5390, 255
  %5394 = tail call i32 @llvm.ctpop.i32(i32 %5393) #8
  %5395 = trunc i32 %5394 to i8
  %5396 = and i8 %5395, 1
  %5397 = xor i8 %5396, 1
  store i8 %5397, i8* %25, align 1, !tbaa !2446
  %5398 = xor i32 %5389, %5377
  %5399 = xor i32 %5398, %5390
  %5400 = lshr i32 %5399, 4
  %5401 = trunc i32 %5400 to i8
  %5402 = and i8 %5401, 1
  store i8 %5402, i8* %31, align 1, !tbaa !2447
  %5403 = icmp eq i32 %5390, 0
  %5404 = zext i1 %5403 to i8
  store i8 %5404, i8* %34, align 1, !tbaa !2448
  %5405 = lshr i32 %5390, 31
  %5406 = trunc i32 %5405 to i8
  store i8 %5406, i8* %37, align 1, !tbaa !2449
  %5407 = lshr i32 %5377, 31
  %5408 = lshr i32 %5389, 31
  %5409 = xor i32 %5408, %5407
  %5410 = xor i32 %5405, %5407
  %5411 = add nuw nsw i32 %5410, %5409
  %5412 = icmp eq i32 %5411, 2
  %5413 = zext i1 %5412 to i8
  store i8 %5413, i8* %43, align 1, !tbaa !2450
  %5414 = icmp ne i8 %5406, 0
  %5415 = xor i1 %5414, %5412
  %.v152 = select i1 %5415, i64 20, i64 557
  %5416 = add i64 %5372, %.v152
  store i64 %5416, i64* %57, align 8, !tbaa !2428
  br i1 %5415, label %block_4014c5, label %block_4016de

block_400c36:                                     ; preds = %block_400c31, %block_400bc2
  %5417 = phi i64 [ %889, %block_400bc2 ], [ %5505, %block_400c31 ]
  %5418 = phi i64 [ %3034, %block_400bc2 ], [ %6108, %block_400c31 ]
  %5419 = add i64 %5418, -12
  %5420 = add i64 %5417, 4
  store i64 %5420, i64* %PC, align 8
  %5421 = inttoptr i64 %5419 to i32*
  %5422 = load i32, i32* %5421, align 4
  %5423 = sext i32 %5422 to i64
  store i64 %5423, i64* %RAX, align 8, !tbaa !2428
  %5424 = shl nsw i64 %5423, 2
  %5425 = add i64 %5418, -1328
  %5426 = add i64 %5425, %5424
  %5427 = add i64 %5417, 11
  store i64 %5427, i64* %PC, align 8
  %5428 = inttoptr i64 %5426 to i32*
  %5429 = load i32, i32* %5428, align 4
  %5430 = zext i32 %5429 to i64
  store i64 %5430, i64* %RCX, align 8, !tbaa !2428
  %5431 = add i64 %5418, -16
  %5432 = add i64 %5417, 15
  store i64 %5432, i64* %PC, align 8
  %5433 = inttoptr i64 %5431 to i32*
  %5434 = load i32, i32* %5433, align 4
  %5435 = sext i32 %5434 to i64
  store i64 %5435, i64* %RAX, align 8, !tbaa !2428
  %5436 = shl nsw i64 %5435, 2
  %5437 = add i64 %5425, %5436
  %5438 = add i64 %5417, 22
  store i64 %5438, i64* %PC, align 8
  %5439 = inttoptr i64 %5437 to i32*
  %5440 = load i32, i32* %5439, align 4
  %5441 = zext i32 %5440 to i64
  store i64 %5441, i64* %RDX, align 8, !tbaa !2428
  %5442 = add i64 %5417, 25
  store i64 %5442, i64* %PC, align 8
  %5443 = load i32, i32* %5421, align 4
  %5444 = add i32 %5443, %5440
  %5445 = zext i32 %5444 to i64
  store i64 %5445, i64* %RDX, align 8, !tbaa !2428
  %5446 = icmp ult i32 %5444, %5440
  %5447 = icmp ult i32 %5444, %5443
  %5448 = or i1 %5446, %5447
  %5449 = zext i1 %5448 to i8
  store i8 %5449, i8* %18, align 1, !tbaa !2432
  %5450 = and i32 %5444, 255
  %5451 = tail call i32 @llvm.ctpop.i32(i32 %5450) #8
  %5452 = trunc i32 %5451 to i8
  %5453 = and i8 %5452, 1
  %5454 = xor i8 %5453, 1
  store i8 %5454, i8* %25, align 1, !tbaa !2446
  %5455 = xor i32 %5443, %5440
  %5456 = xor i32 %5455, %5444
  %5457 = lshr i32 %5456, 4
  %5458 = trunc i32 %5457 to i8
  %5459 = and i8 %5458, 1
  store i8 %5459, i8* %31, align 1, !tbaa !2447
  %5460 = icmp eq i32 %5444, 0
  %5461 = zext i1 %5460 to i8
  store i8 %5461, i8* %34, align 1, !tbaa !2448
  %5462 = lshr i32 %5444, 31
  %5463 = trunc i32 %5462 to i8
  store i8 %5463, i8* %37, align 1, !tbaa !2449
  %5464 = lshr i32 %5440, 31
  %5465 = lshr i32 %5443, 31
  %5466 = xor i32 %5462, %5464
  %5467 = xor i32 %5462, %5465
  %5468 = add nuw nsw i32 %5466, %5467
  %5469 = icmp eq i32 %5468, 2
  %5470 = zext i1 %5469 to i8
  store i8 %5470, i8* %43, align 1, !tbaa !2450
  %5471 = add i64 %5417, 28
  store i64 %5471, i64* %PC, align 8
  %5472 = load i32, i32* %5433, align 4
  %5473 = sub i32 %5444, %5472
  %5474 = zext i32 %5473 to i64
  store i64 %5474, i64* %RDX, align 8, !tbaa !2428
  %5475 = lshr i32 %5473, 31
  %5476 = sub i32 %5429, %5473
  %5477 = icmp ult i32 %5429, %5473
  %5478 = zext i1 %5477 to i8
  store i8 %5478, i8* %18, align 1, !tbaa !2432
  %5479 = and i32 %5476, 255
  %5480 = tail call i32 @llvm.ctpop.i32(i32 %5479) #8
  %5481 = trunc i32 %5480 to i8
  %5482 = and i8 %5481, 1
  %5483 = xor i8 %5482, 1
  store i8 %5483, i8* %25, align 1, !tbaa !2446
  %5484 = xor i32 %5473, %5429
  %5485 = xor i32 %5484, %5476
  %5486 = lshr i32 %5485, 4
  %5487 = trunc i32 %5486 to i8
  %5488 = and i8 %5487, 1
  store i8 %5488, i8* %31, align 1, !tbaa !2447
  %5489 = icmp eq i32 %5476, 0
  %5490 = zext i1 %5489 to i8
  store i8 %5490, i8* %34, align 1, !tbaa !2448
  %5491 = lshr i32 %5476, 31
  %5492 = trunc i32 %5491 to i8
  store i8 %5492, i8* %37, align 1, !tbaa !2449
  %5493 = lshr i32 %5429, 31
  %5494 = xor i32 %5475, %5493
  %5495 = xor i32 %5491, %5493
  %5496 = add nuw nsw i32 %5495, %5494
  %5497 = icmp eq i32 %5496, 2
  %5498 = zext i1 %5497 to i8
  store i8 %5498, i8* %43, align 1, !tbaa !2450
  %5499 = icmp ne i8 %5492, 0
  %5500 = xor i1 %5499, %5497
  %5501 = or i1 %5489, %5500
  %.v169 = select i1 %5501, i64 68, i64 36
  %5502 = add i64 %5417, %.v169
  store i64 %5502, i64* %57, align 8, !tbaa !2428
  %5503 = load i64, i64* %RBP, align 8
  br i1 %5501, label %block_400c7a, label %block_400c5a

block_400e35:                                     ; preds = %block_400dab
  %5504 = add i64 %2603, 5
  br label %block_400e3a

block_400c31:                                     ; preds = %block_400c22
  %5505 = add i64 %6126, 5
  store i64 %5505, i64* %57, align 8, !tbaa !2428
  br label %block_400c36

block_4012e2:                                     ; preds = %block_4012d0
  %5506 = add i64 %3181, -1168
  store i64 %5506, i64* %RAX, align 8, !tbaa !2428
  %5507 = add i64 %3181, -12
  %5508 = add i64 %3216, 11
  store i64 %5508, i64* %PC, align 8
  %5509 = inttoptr i64 %5507 to i32*
  %5510 = load i32, i32* %5509, align 4
  %5511 = sext i32 %5510 to i64
  %5512 = shl nsw i64 %5511, 6
  store i64 %5512, i64* %RCX, align 8, !tbaa !2428
  %5513 = lshr i64 %5511, 57
  %5514 = and i64 %5513, 1
  %5515 = add i64 %5512, %5506
  store i64 %5515, i64* %RAX, align 8, !tbaa !2428
  %5516 = icmp ult i64 %5515, %5506
  %5517 = icmp ult i64 %5515, %5512
  %5518 = or i1 %5516, %5517
  %5519 = zext i1 %5518 to i8
  store i8 %5519, i8* %18, align 1, !tbaa !2432
  %5520 = trunc i64 %5515 to i32
  %5521 = and i32 %5520, 255
  %5522 = tail call i32 @llvm.ctpop.i32(i32 %5521) #8
  %5523 = trunc i32 %5522 to i8
  %5524 = and i8 %5523, 1
  %5525 = xor i8 %5524, 1
  store i8 %5525, i8* %25, align 1, !tbaa !2446
  %5526 = xor i64 %5506, %5515
  %5527 = lshr i64 %5526, 4
  %5528 = trunc i64 %5527 to i8
  %5529 = and i8 %5528, 1
  store i8 %5529, i8* %31, align 1, !tbaa !2447
  %5530 = icmp eq i64 %5515, 0
  %5531 = zext i1 %5530 to i8
  store i8 %5531, i8* %34, align 1, !tbaa !2448
  %5532 = lshr i64 %5515, 63
  %5533 = trunc i64 %5532 to i8
  store i8 %5533, i8* %37, align 1, !tbaa !2449
  %5534 = lshr i64 %5506, 63
  %5535 = xor i64 %5532, %5534
  %5536 = xor i64 %5532, %5514
  %5537 = add nuw nsw i64 %5535, %5536
  %5538 = icmp eq i64 %5537, 2
  %5539 = zext i1 %5538 to i8
  store i8 %5539, i8* %43, align 1, !tbaa !2450
  %5540 = add i64 %3216, 22
  store i64 %5540, i64* %PC, align 8
  %5541 = load i32, i32* %3184, align 4
  %5542 = sext i32 %5541 to i64
  store i64 %5542, i64* %RCX, align 8, !tbaa !2428
  %5543 = shl nsw i64 %5542, 2
  %5544 = add i64 %5543, %5515
  %5545 = add i64 %3216, 26
  store i64 %5545, i64* %PC, align 8
  %5546 = inttoptr i64 %5544 to i32*
  %5547 = load i32, i32* %5546, align 4
  %5548 = add i32 %5547, 1
  %5549 = icmp ne i32 %5547, -1
  %5550 = zext i1 %5549 to i8
  store i8 %5550, i8* %18, align 1, !tbaa !2432
  %5551 = and i32 %5548, 255
  %5552 = tail call i32 @llvm.ctpop.i32(i32 %5551) #8
  %5553 = trunc i32 %5552 to i8
  %5554 = and i8 %5553, 1
  %5555 = xor i8 %5554, 1
  store i8 %5555, i8* %25, align 1, !tbaa !2446
  %5556 = xor i32 %5547, 16
  %5557 = xor i32 %5548, %5556
  %5558 = lshr i32 %5557, 4
  %5559 = trunc i32 %5558 to i8
  %5560 = and i8 %5559, 1
  store i8 %5560, i8* %31, align 1, !tbaa !2447
  %5561 = icmp eq i32 %5548, 0
  %5562 = zext i1 %5561 to i8
  store i8 %5562, i8* %34, align 1, !tbaa !2448
  %5563 = lshr i32 %5548, 31
  %5564 = trunc i32 %5563 to i8
  store i8 %5564, i8* %37, align 1, !tbaa !2449
  %5565 = lshr i32 %5547, 31
  %5566 = xor i32 %5565, 1
  %5567 = xor i32 %5563, %5565
  %5568 = add nuw nsw i32 %5567, %5566
  %5569 = icmp eq i32 %5568, 2
  %5570 = zext i1 %5569 to i8
  store i8 %5570, i8* %43, align 1, !tbaa !2450
  %.v149 = select i1 %5561, i64 81, i64 32
  %5571 = add i64 %3216, %.v149
  store i64 %5571, i64* %57, align 8, !tbaa !2428
  %.pre64 = load i64, i64* %RBP, align 8
  br i1 %5561, label %block_401333, label %block_401302

block_401430:                                     ; preds = %block_4011f1
  %5572 = add i64 %1857, 7
  store i64 %5572, i64* %PC, align 8
  store i32 0, i32* %1817, align 4
  %.pre71 = load i64, i64* %PC, align 8
  br label %block_401437

block_401371:                                     ; preds = %block_40135f
  %5573 = add i64 %6197, -1168
  store i64 %5573, i64* %RAX, align 8, !tbaa !2428
  %5574 = add i64 %6197, -12
  %5575 = add i64 %4683, 11
  store i64 %5575, i64* %PC, align 8
  %5576 = inttoptr i64 %5574 to i32*
  %5577 = load i32, i32* %5576, align 4
  %5578 = sext i32 %5577 to i64
  %5579 = shl nsw i64 %5578, 6
  store i64 %5579, i64* %RCX, align 8, !tbaa !2428
  %5580 = lshr i64 %5578, 57
  %5581 = and i64 %5580, 1
  %5582 = add i64 %5579, %5573
  store i64 %5582, i64* %RAX, align 8, !tbaa !2428
  %5583 = icmp ult i64 %5582, %5573
  %5584 = icmp ult i64 %5582, %5579
  %5585 = or i1 %5583, %5584
  %5586 = zext i1 %5585 to i8
  store i8 %5586, i8* %18, align 1, !tbaa !2432
  %5587 = trunc i64 %5582 to i32
  %5588 = and i32 %5587, 255
  %5589 = tail call i32 @llvm.ctpop.i32(i32 %5588) #8
  %5590 = trunc i32 %5589 to i8
  %5591 = and i8 %5590, 1
  %5592 = xor i8 %5591, 1
  store i8 %5592, i8* %25, align 1, !tbaa !2446
  %5593 = xor i64 %5573, %5582
  %5594 = lshr i64 %5593, 4
  %5595 = trunc i64 %5594 to i8
  %5596 = and i8 %5595, 1
  store i8 %5596, i8* %31, align 1, !tbaa !2447
  %5597 = icmp eq i64 %5582, 0
  %5598 = zext i1 %5597 to i8
  store i8 %5598, i8* %34, align 1, !tbaa !2448
  %5599 = lshr i64 %5582, 63
  %5600 = trunc i64 %5599 to i8
  store i8 %5600, i8* %37, align 1, !tbaa !2449
  %5601 = lshr i64 %5573, 63
  %5602 = xor i64 %5599, %5601
  %5603 = xor i64 %5599, %5581
  %5604 = add nuw nsw i64 %5602, %5603
  %5605 = icmp eq i64 %5604, 2
  %5606 = zext i1 %5605 to i8
  store i8 %5606, i8* %43, align 1, !tbaa !2450
  %5607 = add i64 %4683, 21
  store i64 %5607, i64* %PC, align 8
  %5608 = load i32, i32* %6205, align 4
  %5609 = zext i32 %5608 to i64
  store i64 %5609, i64* %RDX, align 8, !tbaa !2428
  %5610 = add i64 %4683, 24
  store i64 %5610, i64* %PC, align 8
  %5611 = load i32, i32* %6200, align 4
  %5612 = sub i32 %5608, %5611
  %5613 = zext i32 %5612 to i64
  store i64 %5613, i64* %RDX, align 8, !tbaa !2428
  %5614 = icmp ult i32 %5608, %5611
  %5615 = zext i1 %5614 to i8
  store i8 %5615, i8* %18, align 1, !tbaa !2432
  %5616 = and i32 %5612, 255
  %5617 = tail call i32 @llvm.ctpop.i32(i32 %5616) #8
  %5618 = trunc i32 %5617 to i8
  %5619 = and i8 %5618, 1
  %5620 = xor i8 %5619, 1
  store i8 %5620, i8* %25, align 1, !tbaa !2446
  %5621 = xor i32 %5611, %5608
  %5622 = xor i32 %5621, %5612
  %5623 = lshr i32 %5622, 4
  %5624 = trunc i32 %5623 to i8
  %5625 = and i8 %5624, 1
  store i8 %5625, i8* %31, align 1, !tbaa !2447
  %5626 = icmp eq i32 %5612, 0
  %5627 = zext i1 %5626 to i8
  store i8 %5627, i8* %34, align 1, !tbaa !2448
  %5628 = lshr i32 %5612, 31
  %5629 = trunc i32 %5628 to i8
  store i8 %5629, i8* %37, align 1, !tbaa !2449
  %5630 = lshr i32 %5608, 31
  %5631 = lshr i32 %5611, 31
  %5632 = xor i32 %5631, %5630
  %5633 = xor i32 %5628, %5630
  %5634 = add nuw nsw i32 %5633, %5632
  %5635 = icmp eq i32 %5634, 2
  %5636 = zext i1 %5635 to i8
  store i8 %5636, i8* %43, align 1, !tbaa !2450
  %5637 = sext i32 %5612 to i64
  store i64 %5637, i64* %RCX, align 8, !tbaa !2428
  %5638 = shl nsw i64 %5637, 2
  %5639 = add i64 %5638, %5582
  %5640 = add i64 %4683, 31
  store i64 %5640, i64* %PC, align 8
  %5641 = inttoptr i64 %5639 to i32*
  %5642 = load i32, i32* %5641, align 4
  %5643 = add i32 %5642, 1
  %5644 = icmp ne i32 %5642, -1
  %5645 = zext i1 %5644 to i8
  store i8 %5645, i8* %18, align 1, !tbaa !2432
  %5646 = and i32 %5643, 255
  %5647 = tail call i32 @llvm.ctpop.i32(i32 %5646) #8
  %5648 = trunc i32 %5647 to i8
  %5649 = and i8 %5648, 1
  %5650 = xor i8 %5649, 1
  store i8 %5650, i8* %25, align 1, !tbaa !2446
  %5651 = xor i32 %5642, 16
  %5652 = xor i32 %5643, %5651
  %5653 = lshr i32 %5652, 4
  %5654 = trunc i32 %5653 to i8
  %5655 = and i8 %5654, 1
  store i8 %5655, i8* %31, align 1, !tbaa !2447
  %5656 = icmp eq i32 %5643, 0
  %5657 = zext i1 %5656 to i8
  store i8 %5657, i8* %34, align 1, !tbaa !2448
  %5658 = lshr i32 %5643, 31
  %5659 = trunc i32 %5658 to i8
  store i8 %5659, i8* %37, align 1, !tbaa !2449
  %5660 = lshr i32 %5642, 31
  %5661 = xor i32 %5660, 1
  %5662 = xor i32 %5658, %5660
  %5663 = add nuw nsw i32 %5662, %5661
  %5664 = icmp eq i32 %5663, 2
  %5665 = zext i1 %5664 to i8
  store i8 %5665, i8* %43, align 1, !tbaa !2450
  %.v145 = select i1 %5656, i64 128, i64 37
  %5666 = add i64 %4683, %.v145
  store i64 %5666, i64* %57, align 8, !tbaa !2428
  br i1 %5656, label %block_4013f1, label %block_401396

block_400af6:                                     ; preds = %block_400ad4, %block_400b0a
  %5667 = phi i64 [ %.pre26, %block_400ad4 ], [ %5157, %block_400b0a ]
  %5668 = load i64, i64* %RBP, align 8
  %5669 = add i64 %5668, -4
  %5670 = add i64 %5667, 3
  store i64 %5670, i64* %PC, align 8
  %5671 = inttoptr i64 %5669 to i32*
  %5672 = load i32, i32* %5671, align 4
  %5673 = zext i32 %5672 to i64
  store i64 %5673, i64* %RAX, align 8, !tbaa !2428
  %5674 = add i64 %5668, -12
  %5675 = add i64 %5667, 7
  store i64 %5675, i64* %PC, align 8
  %5676 = inttoptr i64 %5674 to i32*
  %5677 = load i32, i32* %5676, align 4
  %5678 = sext i32 %5677 to i64
  store i64 %5678, i64* %RCX, align 8, !tbaa !2428
  %5679 = shl nsw i64 %5678, 2
  %5680 = add i64 %5668, -1328
  %5681 = add i64 %5680, %5679
  %5682 = add i64 %5667, 14
  store i64 %5682, i64* %PC, align 8
  %5683 = inttoptr i64 %5681 to i32*
  %5684 = load i32, i32* %5683, align 4
  %5685 = sub i32 %5672, %5684
  %5686 = icmp ult i32 %5672, %5684
  %5687 = zext i1 %5686 to i8
  store i8 %5687, i8* %18, align 1, !tbaa !2432
  %5688 = and i32 %5685, 255
  %5689 = tail call i32 @llvm.ctpop.i32(i32 %5688) #8
  %5690 = trunc i32 %5689 to i8
  %5691 = and i8 %5690, 1
  %5692 = xor i8 %5691, 1
  store i8 %5692, i8* %25, align 1, !tbaa !2446
  %5693 = xor i32 %5684, %5672
  %5694 = xor i32 %5693, %5685
  %5695 = lshr i32 %5694, 4
  %5696 = trunc i32 %5695 to i8
  %5697 = and i8 %5696, 1
  store i8 %5697, i8* %31, align 1, !tbaa !2447
  %5698 = icmp eq i32 %5685, 0
  %5699 = zext i1 %5698 to i8
  store i8 %5699, i8* %34, align 1, !tbaa !2448
  %5700 = lshr i32 %5685, 31
  %5701 = trunc i32 %5700 to i8
  store i8 %5701, i8* %37, align 1, !tbaa !2449
  %5702 = lshr i32 %5672, 31
  %5703 = lshr i32 %5684, 31
  %5704 = xor i32 %5703, %5702
  %5705 = xor i32 %5700, %5702
  %5706 = add nuw nsw i32 %5705, %5704
  %5707 = icmp eq i32 %5706, 2
  %5708 = zext i1 %5707 to i8
  store i8 %5708, i8* %43, align 1, !tbaa !2450
  %5709 = icmp ne i8 %5701, 0
  %5710 = xor i1 %5709, %5707
  %.demorgan116 = or i1 %5698, %5710
  %.v117 = select i1 %.demorgan116, i64 20, i64 135
  %5711 = add i64 %5667, %.v117
  store i64 %5711, i64* %57, align 8, !tbaa !2428
  br i1 %.demorgan116, label %block_400b0a, label %block_400b7d

block_40102e:                                     ; preds = %block_40100c, %block_401042
  %5712 = phi i64 [ %5281, %block_401042 ], [ %.pre95, %block_40100c ]
  %5713 = load i64, i64* %RBP, align 8
  %5714 = add i64 %5713, -4
  %5715 = add i64 %5712, 3
  store i64 %5715, i64* %PC, align 8
  %5716 = inttoptr i64 %5714 to i32*
  %5717 = load i32, i32* %5716, align 4
  %5718 = zext i32 %5717 to i64
  store i64 %5718, i64* %RAX, align 8, !tbaa !2428
  %5719 = add i64 %5713, -12
  %5720 = add i64 %5712, 7
  store i64 %5720, i64* %PC, align 8
  %5721 = inttoptr i64 %5719 to i32*
  %5722 = load i32, i32* %5721, align 4
  %5723 = sext i32 %5722 to i64
  store i64 %5723, i64* %RCX, align 8, !tbaa !2428
  %5724 = shl nsw i64 %5723, 2
  %5725 = add i64 %5713, -1328
  %5726 = add i64 %5725, %5724
  %5727 = add i64 %5712, 14
  store i64 %5727, i64* %PC, align 8
  %5728 = inttoptr i64 %5726 to i32*
  %5729 = load i32, i32* %5728, align 4
  %5730 = sub i32 %5717, %5729
  %5731 = icmp ult i32 %5717, %5729
  %5732 = zext i1 %5731 to i8
  store i8 %5732, i8* %18, align 1, !tbaa !2432
  %5733 = and i32 %5730, 255
  %5734 = tail call i32 @llvm.ctpop.i32(i32 %5733) #8
  %5735 = trunc i32 %5734 to i8
  %5736 = and i8 %5735, 1
  %5737 = xor i8 %5736, 1
  store i8 %5737, i8* %25, align 1, !tbaa !2446
  %5738 = xor i32 %5729, %5717
  %5739 = xor i32 %5738, %5730
  %5740 = lshr i32 %5739, 4
  %5741 = trunc i32 %5740 to i8
  %5742 = and i8 %5741, 1
  store i8 %5742, i8* %31, align 1, !tbaa !2447
  %5743 = icmp eq i32 %5730, 0
  %5744 = zext i1 %5743 to i8
  store i8 %5744, i8* %34, align 1, !tbaa !2448
  %5745 = lshr i32 %5730, 31
  %5746 = trunc i32 %5745 to i8
  store i8 %5746, i8* %37, align 1, !tbaa !2449
  %5747 = lshr i32 %5717, 31
  %5748 = lshr i32 %5729, 31
  %5749 = xor i32 %5748, %5747
  %5750 = xor i32 %5745, %5747
  %5751 = add nuw nsw i32 %5750, %5749
  %5752 = icmp eq i32 %5751, 2
  %5753 = zext i1 %5752 to i8
  store i8 %5753, i8* %43, align 1, !tbaa !2450
  %5754 = icmp ne i8 %5746, 0
  %5755 = xor i1 %5754, %5752
  %.demorgan128 = or i1 %5743, %5755
  %.v129 = select i1 %.demorgan128, i64 20, i64 88
  %5756 = add i64 %5712, %.v129
  store i64 %5756, i64* %57, align 8, !tbaa !2428
  br i1 %.demorgan128, label %block_401042, label %block_401086

block_40155f:                                     ; preds = %block_4014f7, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1
  %5757 = phi i64 [ %1875, %block_4014f7 ], [ %.pre79, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %5758 = phi i64 [ %2497, %block_4014f7 ], [ %.pre78, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %MEMORY.49 = phi %struct.Memory* [ %MEMORY.19, %block_4014f7 ], [ %2424, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %5759 = add i64 %5757, -8
  %5760 = add i64 %5758, 8
  store i64 %5760, i64* %PC, align 8
  %5761 = inttoptr i64 %5759 to i32*
  %5762 = load i32, i32* %5761, align 4
  %5763 = add i32 %5762, 1
  %5764 = zext i32 %5763 to i64
  store i64 %5764, i64* %RAX, align 8, !tbaa !2428
  %5765 = icmp eq i32 %5762, -1
  %5766 = icmp eq i32 %5763, 0
  %5767 = or i1 %5765, %5766
  %5768 = zext i1 %5767 to i8
  store i8 %5768, i8* %18, align 1, !tbaa !2432
  %5769 = and i32 %5763, 255
  %5770 = tail call i32 @llvm.ctpop.i32(i32 %5769) #8
  %5771 = trunc i32 %5770 to i8
  %5772 = and i8 %5771, 1
  %5773 = xor i8 %5772, 1
  store i8 %5773, i8* %25, align 1, !tbaa !2446
  %5774 = xor i32 %5762, %5763
  %5775 = lshr i32 %5774, 4
  %5776 = trunc i32 %5775 to i8
  %5777 = and i8 %5776, 1
  store i8 %5777, i8* %31, align 1, !tbaa !2447
  %5778 = icmp eq i32 %5763, 0
  %5779 = zext i1 %5778 to i8
  store i8 %5779, i8* %34, align 1, !tbaa !2448
  %5780 = lshr i32 %5763, 31
  %5781 = trunc i32 %5780 to i8
  store i8 %5781, i8* %37, align 1, !tbaa !2449
  %5782 = lshr i32 %5762, 31
  %5783 = xor i32 %5780, %5782
  %5784 = add nuw nsw i32 %5783, %5780
  %5785 = icmp eq i32 %5784, 2
  %5786 = zext i1 %5785 to i8
  store i8 %5786, i8* %43, align 1, !tbaa !2450
  %5787 = add i64 %5758, 14
  store i64 %5787, i64* %PC, align 8
  store i32 %5763, i32* %5761, align 4
  %5788 = load i64, i64* %PC, align 8
  %5789 = add i64 %5788, -138
  store i64 %5789, i64* %57, align 8, !tbaa !2428
  br label %block_4014e3

block_40177e:                                     ; preds = %block_40176c
  %5790 = add i64 %1473, 12
  store i64 %5790, i64* %PC, align 8
  %5791 = inttoptr i64 %1478 to i32*
  %5792 = load i32, i32* %5791, align 4
  %5793 = sext i32 %5792 to i64
  store i64 %5793, i64* %RAX, align 8, !tbaa !2428
  %5794 = shl nsw i64 %5793, 2
  %5795 = add i64 %5794, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %5796 = add i64 %1473, 19
  store i64 %5796, i64* %PC, align 8
  %5797 = inttoptr i64 %5795 to i32*
  %5798 = load i32, i32* %5797, align 4
  %5799 = zext i32 %5798 to i64
  store i64 %5799, i64* %RCX, align 8, !tbaa !2428
  %5800 = add i64 %1473, 23
  store i64 %5800, i64* %PC, align 8
  %5801 = load i32, i32* %1288, align 4
  %5802 = sext i32 %5801 to i64
  store i64 %5802, i64* %RAX, align 8, !tbaa !2428
  %5803 = shl nsw i64 %5802, 2
  %5804 = add i64 %5803, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %5805 = add i64 %1473, 30
  store i64 %5805, i64* %PC, align 8
  %5806 = inttoptr i64 %5804 to i32*
  store i32 %5798, i32* %5806, align 4
  %5807 = load i64, i64* %PC, align 8
  %5808 = add i64 %5807, 20
  store i64 %5808, i64* %57, align 8, !tbaa !2428
  br label %block_4017b0

block_401825:                                     ; preds = %block_401816, %block_4017f3
  %5809 = phi i64 [ %.pre98, %block_401816 ], [ %2990, %block_4017f3 ]
  %5810 = load i64, i64* %RBP, align 8
  %5811 = add i64 %5810, -4
  %5812 = add i64 %5809, 8
  store i64 %5812, i64* %PC, align 8
  %5813 = inttoptr i64 %5811 to i32*
  %5814 = load i32, i32* %5813, align 4
  %5815 = add i32 %5814, 1
  %5816 = zext i32 %5815 to i64
  store i64 %5816, i64* %RAX, align 8, !tbaa !2428
  %5817 = icmp eq i32 %5814, -1
  %5818 = icmp eq i32 %5815, 0
  %5819 = or i1 %5817, %5818
  %5820 = zext i1 %5819 to i8
  store i8 %5820, i8* %18, align 1, !tbaa !2432
  %5821 = and i32 %5815, 255
  %5822 = tail call i32 @llvm.ctpop.i32(i32 %5821) #8
  %5823 = trunc i32 %5822 to i8
  %5824 = and i8 %5823, 1
  %5825 = xor i8 %5824, 1
  store i8 %5825, i8* %25, align 1, !tbaa !2446
  %5826 = xor i32 %5814, %5815
  %5827 = lshr i32 %5826, 4
  %5828 = trunc i32 %5827 to i8
  %5829 = and i8 %5828, 1
  store i8 %5829, i8* %31, align 1, !tbaa !2447
  %5830 = icmp eq i32 %5815, 0
  %5831 = zext i1 %5830 to i8
  store i8 %5831, i8* %34, align 1, !tbaa !2448
  %5832 = lshr i32 %5815, 31
  %5833 = trunc i32 %5832 to i8
  store i8 %5833, i8* %37, align 1, !tbaa !2449
  %5834 = lshr i32 %5814, 31
  %5835 = xor i32 %5832, %5834
  %5836 = add nuw nsw i32 %5835, %5832
  %5837 = icmp eq i32 %5836, 2
  %5838 = zext i1 %5837 to i8
  store i8 %5838, i8* %43, align 1, !tbaa !2450
  %5839 = add i64 %5809, 14
  store i64 %5839, i64* %PC, align 8
  store i32 %5815, i32* %5813, align 4
  %5840 = load i64, i64* %PC, align 8
  %5841 = add i64 %5840, -95
  store i64 %5841, i64* %57, align 8, !tbaa !2428
  br label %block_4017d4

block_400963:                                     ; preds = %block_400956
  %5842 = add i64 %1561, 4
  store i64 %5842, i64* %PC, align 8
  %5843 = load i32, i32* %1535, align 4
  %5844 = sext i32 %5843 to i64
  store i64 %5844, i64* %RAX, align 8, !tbaa !2428
  %5845 = shl nsw i64 %5844, 2
  %5846 = add i64 %5845, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %5847 = add i64 %1561, 12
  store i64 %5847, i64* %PC, align 8
  %5848 = inttoptr i64 %5846 to i32*
  %5849 = load i32, i32* %5848, align 4
  %5850 = add i32 %5849, 1
  %5851 = icmp ne i32 %5849, -1
  %5852 = zext i1 %5851 to i8
  store i8 %5852, i8* %18, align 1, !tbaa !2432
  %5853 = and i32 %5850, 255
  %5854 = tail call i32 @llvm.ctpop.i32(i32 %5853) #8
  %5855 = trunc i32 %5854 to i8
  %5856 = and i8 %5855, 1
  %5857 = xor i8 %5856, 1
  store i8 %5857, i8* %25, align 1, !tbaa !2446
  %5858 = xor i32 %5849, 16
  %5859 = xor i32 %5850, %5858
  %5860 = lshr i32 %5859, 4
  %5861 = trunc i32 %5860 to i8
  %5862 = and i8 %5861, 1
  store i8 %5862, i8* %31, align 1, !tbaa !2447
  %5863 = icmp eq i32 %5850, 0
  %5864 = zext i1 %5863 to i8
  store i8 %5864, i8* %34, align 1, !tbaa !2448
  %5865 = lshr i32 %5850, 31
  %5866 = trunc i32 %5865 to i8
  store i8 %5866, i8* %37, align 1, !tbaa !2449
  %5867 = lshr i32 %5849, 31
  %5868 = xor i32 %5867, 1
  %5869 = xor i32 %5865, %5867
  %5870 = add nuw nsw i32 %5869, %5868
  %5871 = icmp eq i32 %5870, 2
  %5872 = zext i1 %5871 to i8
  store i8 %5872, i8* %43, align 1, !tbaa !2450
  %.v111 = select i1 %5863, i64 88, i64 18
  %5873 = add i64 %1561, %.v111
  store i64 %5873, i64* %57, align 8, !tbaa !2428
  br i1 %5863, label %block_4009bb, label %block_400975

block_4015c8:                                     ; preds = %block_401631, %block_40158c
  %5874 = phi i64 [ %.pre80, %block_40158c ], [ %1951, %block_401631 ]
  %MEMORY.51 = phi %struct.Memory* [ %MEMORY.19, %block_40158c ], [ %MEMORY.20, %block_401631 ]
  %5875 = load i64, i64* %RBP, align 8
  %5876 = add i64 %5875, -8
  %5877 = add i64 %5874, 3
  store i64 %5877, i64* %PC, align 8
  %5878 = inttoptr i64 %5876 to i32*
  %5879 = load i32, i32* %5878, align 4
  %5880 = zext i32 %5879 to i64
  store i64 %5880, i64* %RAX, align 8, !tbaa !2428
  %5881 = add i64 %5875, -12
  %5882 = add i64 %5874, 7
  store i64 %5882, i64* %PC, align 8
  %5883 = inttoptr i64 %5881 to i32*
  %5884 = load i32, i32* %5883, align 4
  %5885 = sext i32 %5884 to i64
  store i64 %5885, i64* %RCX, align 8, !tbaa !2428
  %5886 = shl nsw i64 %5885, 2
  %5887 = add i64 %5875, -1328
  %5888 = add i64 %5887, %5886
  %5889 = add i64 %5874, 14
  store i64 %5889, i64* %PC, align 8
  %5890 = inttoptr i64 %5888 to i32*
  %5891 = load i32, i32* %5890, align 4
  %5892 = sub i32 %5879, %5891
  %5893 = icmp ult i32 %5879, %5891
  %5894 = zext i1 %5893 to i8
  store i8 %5894, i8* %18, align 1, !tbaa !2432
  %5895 = and i32 %5892, 255
  %5896 = tail call i32 @llvm.ctpop.i32(i32 %5895) #8
  %5897 = trunc i32 %5896 to i8
  %5898 = and i8 %5897, 1
  %5899 = xor i8 %5898, 1
  store i8 %5899, i8* %25, align 1, !tbaa !2446
  %5900 = xor i32 %5891, %5879
  %5901 = xor i32 %5900, %5892
  %5902 = lshr i32 %5901, 4
  %5903 = trunc i32 %5902 to i8
  %5904 = and i8 %5903, 1
  store i8 %5904, i8* %31, align 1, !tbaa !2447
  %5905 = icmp eq i32 %5892, 0
  %5906 = zext i1 %5905 to i8
  store i8 %5906, i8* %34, align 1, !tbaa !2448
  %5907 = lshr i32 %5892, 31
  %5908 = trunc i32 %5907 to i8
  store i8 %5908, i8* %37, align 1, !tbaa !2449
  %5909 = lshr i32 %5879, 31
  %5910 = lshr i32 %5891, 31
  %5911 = xor i32 %5910, %5909
  %5912 = xor i32 %5907, %5909
  %5913 = add nuw nsw i32 %5912, %5911
  %5914 = icmp eq i32 %5913, 2
  %5915 = zext i1 %5914 to i8
  store i8 %5915, i8* %43, align 1, !tbaa !2450
  %5916 = icmp ne i8 %5908, 0
  %5917 = xor i1 %5916, %5914
  %.v157 = select i1 %5917, i64 20, i64 124
  %5918 = add i64 %5874, %.v157
  store i64 %5918, i64* %57, align 8, !tbaa !2428
  br i1 %5917, label %block_4015dc, label %block_401644

block_400a23:                                     ; preds = %block_400a16
  %5919 = add i64 %1783, -1248
  %5920 = add i64 %6061, 10
  store i64 %5920, i64* %PC, align 8
  %5921 = inttoptr i64 %5919 to i32*
  store i32 0, i32* %5921, align 4
  %5922 = load i64, i64* %RBP, align 8
  %5923 = add i64 %5922, -1484
  %5924 = load i64, i64* %PC, align 8
  %5925 = add i64 %5924, 6
  store i64 %5925, i64* %PC, align 8
  %5926 = inttoptr i64 %5923 to i32*
  %5927 = load i32, i32* %5926, align 4
  %5928 = zext i32 %5927 to i64
  store i64 %5928, i64* %RAX, align 8, !tbaa !2428
  %5929 = add i64 %5922, -1244
  %5930 = add i64 %5924, 12
  store i64 %5930, i64* %PC, align 8
  %5931 = inttoptr i64 %5929 to i32*
  store i32 %5927, i32* %5931, align 4
  %5932 = load i64, i64* %RBP, align 8
  %5933 = add i64 %5932, -1168
  %5934 = load i64, i64* %PC, align 8
  %5935 = add i64 %5934, 10
  store i64 %5935, i64* %PC, align 8
  %5936 = inttoptr i64 %5933 to i32*
  store i32 0, i32* %5936, align 4
  %5937 = load i64, i64* %RBP, align 8
  %5938 = add i64 %5937, -1104
  %5939 = load i64, i64* %PC, align 8
  %5940 = add i64 %5939, 10
  store i64 %5940, i64* %PC, align 8
  %5941 = inttoptr i64 %5938 to i32*
  store i32 1, i32* %5941, align 4
  %5942 = load i64, i64* %RBP, align 8
  %5943 = add i64 %5942, -4
  %5944 = load i64, i64* %PC, align 8
  %5945 = add i64 %5944, 7
  store i64 %5945, i64* %PC, align 8
  %5946 = inttoptr i64 %5943 to i32*
  store i32 1, i32* %5946, align 4
  %.pre23 = load i64, i64* %PC, align 8
  br label %block_400a54

block_401497:                                     ; preds = %block_401465, %block_401488
  %5947 = phi i64 [ %3970, %block_401465 ], [ %.pre72, %block_401488 ]
  %5948 = load i64, i64* %RBP, align 8
  %5949 = add i64 %5948, -4
  %5950 = add i64 %5947, 8
  store i64 %5950, i64* %PC, align 8
  %5951 = inttoptr i64 %5949 to i32*
  %5952 = load i32, i32* %5951, align 4
  %5953 = add i32 %5952, 1
  %5954 = zext i32 %5953 to i64
  store i64 %5954, i64* %RAX, align 8, !tbaa !2428
  %5955 = icmp eq i32 %5952, -1
  %5956 = icmp eq i32 %5953, 0
  %5957 = or i1 %5955, %5956
  %5958 = zext i1 %5957 to i8
  store i8 %5958, i8* %18, align 1, !tbaa !2432
  %5959 = and i32 %5953, 255
  %5960 = tail call i32 @llvm.ctpop.i32(i32 %5959) #8
  %5961 = trunc i32 %5960 to i8
  %5962 = and i8 %5961, 1
  %5963 = xor i8 %5962, 1
  store i8 %5963, i8* %25, align 1, !tbaa !2446
  %5964 = xor i32 %5952, %5953
  %5965 = lshr i32 %5964, 4
  %5966 = trunc i32 %5965 to i8
  %5967 = and i8 %5966, 1
  store i8 %5967, i8* %31, align 1, !tbaa !2447
  %5968 = icmp eq i32 %5953, 0
  %5969 = zext i1 %5968 to i8
  store i8 %5969, i8* %34, align 1, !tbaa !2448
  %5970 = lshr i32 %5953, 31
  %5971 = trunc i32 %5970 to i8
  store i8 %5971, i8* %37, align 1, !tbaa !2449
  %5972 = lshr i32 %5952, 31
  %5973 = xor i32 %5970, %5972
  %5974 = add nuw nsw i32 %5973, %5970
  %5975 = icmp eq i32 %5974, 2
  %5976 = zext i1 %5975 to i8
  store i8 %5976, i8* %43, align 1, !tbaa !2450
  %5977 = add i64 %5947, 14
  store i64 %5977, i64* %PC, align 8
  store i32 %5953, i32* %5951, align 4
  %5978 = load i64, i64* %PC, align 8
  %5979 = add i64 %5978, -110
  store i64 %5979, i64* %57, align 8, !tbaa !2428
  br label %block_401437

block_400c1c:                                     ; preds = %block_400c00
  %5980 = add i64 %6369, 3
  store i64 %5980, i64* %PC, align 8
  %5981 = load i32, i32* %143, align 4
  %5982 = zext i32 %5981 to i64
  store i64 %5982, i64* %RAX, align 8, !tbaa !2428
  %5983 = add i64 %6369, 6
  store i64 %5983, i64* %PC, align 8
  store i32 %5981, i32* %6325, align 4
  %.pre31 = load i64, i64* %PC, align 8
  %.pre32 = load i64, i64* %RBP, align 8
  br label %block_400c22

block_401217:                                     ; preds = %block_401205
  %5984 = add i64 %1814, -1168
  store i64 %5984, i64* %RAX, align 8, !tbaa !2428
  %5985 = add i64 %6267, 11
  store i64 %5985, i64* %PC, align 8
  %5986 = load i32, i32* %1822, align 4
  %5987 = sext i32 %5986 to i64
  %5988 = shl nsw i64 %5987, 6
  store i64 %5988, i64* %RCX, align 8, !tbaa !2428
  %5989 = lshr i64 %5987, 57
  %5990 = and i64 %5989, 1
  %5991 = add i64 %5988, %5984
  store i64 %5991, i64* %RAX, align 8, !tbaa !2428
  %5992 = icmp ult i64 %5991, %5984
  %5993 = icmp ult i64 %5991, %5988
  %5994 = or i1 %5992, %5993
  %5995 = zext i1 %5994 to i8
  store i8 %5995, i8* %18, align 1, !tbaa !2432
  %5996 = trunc i64 %5991 to i32
  %5997 = and i32 %5996, 255
  %5998 = tail call i32 @llvm.ctpop.i32(i32 %5997) #8
  %5999 = trunc i32 %5998 to i8
  %6000 = and i8 %5999, 1
  %6001 = xor i8 %6000, 1
  store i8 %6001, i8* %25, align 1, !tbaa !2446
  %6002 = xor i64 %5984, %5991
  %6003 = lshr i64 %6002, 4
  %6004 = trunc i64 %6003 to i8
  %6005 = and i8 %6004, 1
  store i8 %6005, i8* %31, align 1, !tbaa !2447
  %6006 = icmp eq i64 %5991, 0
  %6007 = zext i1 %6006 to i8
  store i8 %6007, i8* %34, align 1, !tbaa !2448
  %6008 = lshr i64 %5991, 63
  %6009 = trunc i64 %6008 to i8
  store i8 %6009, i8* %37, align 1, !tbaa !2449
  %6010 = lshr i64 %5984, 63
  %6011 = xor i64 %6008, %6010
  %6012 = xor i64 %6008, %5990
  %6013 = add nuw nsw i64 %6011, %6012
  %6014 = icmp eq i64 %6013, 2
  %6015 = zext i1 %6014 to i8
  store i8 %6015, i8* %43, align 1, !tbaa !2450
  %6016 = add i64 %6267, 22
  store i64 %6016, i64* %PC, align 8
  %6017 = load i32, i32* %1817, align 4
  %6018 = sext i32 %6017 to i64
  store i64 %6018, i64* %RCX, align 8, !tbaa !2428
  %6019 = shl nsw i64 %6018, 2
  %6020 = add i64 %6019, %5991
  %6021 = add i64 %6267, 26
  store i64 %6021, i64* %PC, align 8
  %6022 = inttoptr i64 %6020 to i32*
  %6023 = load i32, i32* %6022, align 4
  %6024 = add i32 %6023, 1
  %6025 = icmp ne i32 %6023, -1
  %6026 = zext i1 %6025 to i8
  store i8 %6026, i8* %18, align 1, !tbaa !2432
  %6027 = and i32 %6024, 255
  %6028 = tail call i32 @llvm.ctpop.i32(i32 %6027) #8
  %6029 = trunc i32 %6028 to i8
  %6030 = and i8 %6029, 1
  %6031 = xor i8 %6030, 1
  store i8 %6031, i8* %25, align 1, !tbaa !2446
  %6032 = xor i32 %6023, 16
  %6033 = xor i32 %6024, %6032
  %6034 = lshr i32 %6033, 4
  %6035 = trunc i32 %6034 to i8
  %6036 = and i8 %6035, 1
  store i8 %6036, i8* %31, align 1, !tbaa !2447
  %6037 = icmp eq i32 %6024, 0
  %6038 = zext i1 %6037 to i8
  store i8 %6038, i8* %34, align 1, !tbaa !2448
  %6039 = lshr i32 %6024, 31
  %6040 = trunc i32 %6039 to i8
  store i8 %6040, i8* %37, align 1, !tbaa !2449
  %6041 = lshr i32 %6023, 31
  %6042 = xor i32 %6041, 1
  %6043 = xor i32 %6039, %6041
  %6044 = add nuw nsw i32 %6043, %6042
  %6045 = icmp eq i32 %6044, 2
  %6046 = zext i1 %6045 to i8
  store i8 %6046, i8* %43, align 1, !tbaa !2450
  %.v142 = select i1 %6037, i64 100, i64 32
  %6047 = add i64 %6267, %.v142
  store i64 %6047, i64* %57, align 8, !tbaa !2428
  %.pre62 = load i64, i64* %RBP, align 8
  br i1 %6037, label %block_40127b, label %block_401237

block_4011ea:                                     ; preds = %block_4011d3
  store i32 1, i32* %3975, align 4
  %.pre61 = load i64, i64* %PC, align 8
  br label %block_4011f1

block_400a16:                                     ; preds = %block_400936
  %6048 = add i64 %1783, -1496
  %6049 = add i64 %1812, 7
  store i64 %6049, i64* %PC, align 8
  %6050 = inttoptr i64 %6048 to i32*
  %6051 = load i32, i32* %6050, align 4
  store i8 0, i8* %18, align 1, !tbaa !2432
  %6052 = and i32 %6051, 255
  %6053 = tail call i32 @llvm.ctpop.i32(i32 %6052) #8
  %6054 = trunc i32 %6053 to i8
  %6055 = and i8 %6054, 1
  %6056 = xor i8 %6055, 1
  store i8 %6056, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2447
  %6057 = icmp eq i32 %6051, 0
  %6058 = zext i1 %6057 to i8
  store i8 %6058, i8* %34, align 1, !tbaa !2448
  %6059 = lshr i32 %6051, 31
  %6060 = trunc i32 %6059 to i8
  store i8 %6060, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %.v113 = select i1 %6057, i64 3511, i64 13
  %6061 = add i64 %1812, %.v113
  store i64 %6061, i64* %57, align 8, !tbaa !2428
  br i1 %6057, label %block_4017cd, label %block_400a23

block_400ad4:                                     ; preds = %block_400ab9
  %6062 = add i64 %3412, 4
  store i64 %6062, i64* %PC, align 8
  %6063 = load i32, i32* %3380, align 4
  %6064 = sext i32 %6063 to i64
  store i64 %6064, i64* %RAX, align 8, !tbaa !2428
  %6065 = shl nsw i64 %6064, 2
  %6066 = add i64 %3376, -1328
  %6067 = add i64 %6066, %6065
  %6068 = add i64 %3412, 11
  store i64 %6068, i64* %PC, align 8
  %6069 = inttoptr i64 %6067 to i32*
  %6070 = load i32, i32* %6069, align 4
  %6071 = zext i32 %6070 to i64
  store i64 %6071, i64* %RCX, align 8, !tbaa !2428
  %6072 = add i64 %3412, 14
  store i64 %6072, i64* %PC, align 8
  %6073 = load i32, i32* %3380, align 4
  %6074 = add i32 %6073, 1
  %6075 = zext i32 %6074 to i64
  store i64 %6075, i64* %RDX, align 8, !tbaa !2428
  %6076 = icmp eq i32 %6073, -1
  %6077 = icmp eq i32 %6074, 0
  %6078 = or i1 %6076, %6077
  %6079 = zext i1 %6078 to i8
  store i8 %6079, i8* %18, align 1, !tbaa !2432
  %6080 = and i32 %6074, 255
  %6081 = tail call i32 @llvm.ctpop.i32(i32 %6080) #8
  %6082 = trunc i32 %6081 to i8
  %6083 = and i8 %6082, 1
  %6084 = xor i8 %6083, 1
  store i8 %6084, i8* %25, align 1, !tbaa !2446
  %6085 = xor i32 %6073, %6074
  %6086 = lshr i32 %6085, 4
  %6087 = trunc i32 %6086 to i8
  %6088 = and i8 %6087, 1
  store i8 %6088, i8* %31, align 1, !tbaa !2447
  %6089 = icmp eq i32 %6074, 0
  %6090 = zext i1 %6089 to i8
  store i8 %6090, i8* %34, align 1, !tbaa !2448
  %6091 = lshr i32 %6074, 31
  %6092 = trunc i32 %6091 to i8
  store i8 %6092, i8* %37, align 1, !tbaa !2449
  %6093 = lshr i32 %6073, 31
  %6094 = xor i32 %6091, %6093
  %6095 = add nuw nsw i32 %6094, %6091
  %6096 = icmp eq i32 %6095, 2
  %6097 = zext i1 %6096 to i8
  store i8 %6097, i8* %43, align 1, !tbaa !2450
  %6098 = sext i32 %6074 to i64
  store i64 %6098, i64* %RAX, align 8, !tbaa !2428
  %6099 = shl nsw i64 %6098, 2
  %6100 = add i64 %6066, %6099
  %6101 = add i64 %3412, 27
  store i64 %6101, i64* %PC, align 8
  %6102 = inttoptr i64 %6100 to i32*
  store i32 %6070, i32* %6102, align 4
  %6103 = load i64, i64* %RBP, align 8
  %6104 = add i64 %6103, -4
  %6105 = load i64, i64* %PC, align 8
  %6106 = add i64 %6105, 7
  store i64 %6106, i64* %PC, align 8
  %6107 = inttoptr i64 %6104 to i32*
  store i32 0, i32* %6107, align 4
  %.pre26 = load i64, i64* %PC, align 8
  br label %block_400af6

block_400c22:                                     ; preds = %block_400c00, %block_400c1c, %block_400be5
  %6108 = phi i64 [ %139, %block_400c00 ], [ %.pre32, %block_400c1c ], [ %139, %block_400be5 ]
  %6109 = phi i64 [ %6369, %block_400c00 ], [ %.pre31, %block_400c1c ], [ %175, %block_400be5 ]
  %6110 = add i64 %6108, -8
  %6111 = add i64 %6109, 9
  store i64 %6111, i64* %PC, align 8
  %6112 = inttoptr i64 %6110 to i32*
  %6113 = load i32, i32* %6112, align 4
  store i8 0, i8* %18, align 1, !tbaa !2432
  %6114 = and i32 %6113, 255
  %6115 = tail call i32 @llvm.ctpop.i32(i32 %6114) #8
  %6116 = trunc i32 %6115 to i8
  %6117 = and i8 %6116, 1
  %6118 = xor i8 %6117, 1
  store i8 %6118, i8* %25, align 1, !tbaa !2446
  store i8 0, i8* %31, align 1, !tbaa !2447
  %6119 = icmp eq i32 %6113, 0
  %6120 = zext i1 %6119 to i8
  store i8 %6120, i8* %34, align 1, !tbaa !2448
  %6121 = lshr i32 %6113, 31
  %6122 = trunc i32 %6121 to i8
  store i8 %6122, i8* %37, align 1, !tbaa !2449
  store i8 0, i8* %43, align 1, !tbaa !2450
  %6123 = xor i1 %6119, true
  %6124 = icmp eq i8 %6122, 0
  %6125 = and i1 %6124, %6123
  %.v168 = select i1 %6125, i64 -61, i64 15
  %6126 = add i64 %6109, %.v168
  store i64 %6126, i64* %57, align 8, !tbaa !2428
  br i1 %6125, label %block_400be5, label %block_400c31

block_40100c:                                     ; preds = %block_400ffe
  %6127 = add i64 %62, -12
  %6128 = add i64 %74, 3
  store i64 %6128, i64* %PC, align 8
  %6129 = inttoptr i64 %6127 to i32*
  %6130 = load i32, i32* %6129, align 4
  %6131 = add i32 %6130, 1
  %6132 = zext i32 %6131 to i64
  store i64 %6132, i64* %RAX, align 8, !tbaa !2428
  %6133 = icmp eq i32 %6130, -1
  %6134 = icmp eq i32 %6131, 0
  %6135 = or i1 %6133, %6134
  %6136 = zext i1 %6135 to i8
  store i8 %6136, i8* %18, align 1, !tbaa !2432
  %6137 = and i32 %6131, 255
  %6138 = tail call i32 @llvm.ctpop.i32(i32 %6137) #8
  %6139 = trunc i32 %6138 to i8
  %6140 = and i8 %6139, 1
  %6141 = xor i8 %6140, 1
  store i8 %6141, i8* %25, align 1, !tbaa !2446
  %6142 = xor i32 %6130, %6131
  %6143 = lshr i32 %6142, 4
  %6144 = trunc i32 %6143 to i8
  %6145 = and i8 %6144, 1
  store i8 %6145, i8* %31, align 1, !tbaa !2447
  %6146 = icmp eq i32 %6131, 0
  %6147 = zext i1 %6146 to i8
  store i8 %6147, i8* %34, align 1, !tbaa !2448
  %6148 = lshr i32 %6131, 31
  %6149 = trunc i32 %6148 to i8
  store i8 %6149, i8* %37, align 1, !tbaa !2449
  %6150 = lshr i32 %6130, 31
  %6151 = xor i32 %6148, %6150
  %6152 = add nuw nsw i32 %6151, %6148
  %6153 = icmp eq i32 %6152, 2
  %6154 = zext i1 %6153 to i8
  store i8 %6154, i8* %43, align 1, !tbaa !2450
  %6155 = add i64 %74, 9
  store i64 %6155, i64* %PC, align 8
  store i32 %6131, i32* %6129, align 4
  %6156 = load i64, i64* %RBP, align 8
  %6157 = add i64 %6156, -12
  %6158 = load i64, i64* %PC, align 8
  %6159 = add i64 %6158, 4
  store i64 %6159, i64* %PC, align 8
  %6160 = inttoptr i64 %6157 to i32*
  %6161 = load i32, i32* %6160, align 4
  %6162 = sext i32 %6161 to i64
  store i64 %6162, i64* %RCX, align 8, !tbaa !2428
  %6163 = shl nsw i64 %6162, 2
  %6164 = add i64 %6156, -1328
  %6165 = add i64 %6164, %6163
  %6166 = add i64 %6158, 12
  store i64 %6166, i64* %PC, align 8
  %6167 = inttoptr i64 %6165 to i32*
  %6168 = load i32, i32* %6167, align 4
  %6169 = add i32 %6168, -8
  %6170 = icmp ult i32 %6168, 8
  %6171 = zext i1 %6170 to i8
  store i8 %6171, i8* %18, align 1, !tbaa !2432
  %6172 = and i32 %6169, 255
  %6173 = tail call i32 @llvm.ctpop.i32(i32 %6172) #8
  %6174 = trunc i32 %6173 to i8
  %6175 = and i8 %6174, 1
  %6176 = xor i8 %6175, 1
  store i8 %6176, i8* %25, align 1, !tbaa !2446
  %6177 = xor i32 %6168, %6169
  %6178 = lshr i32 %6177, 4
  %6179 = trunc i32 %6178 to i8
  %6180 = and i8 %6179, 1
  store i8 %6180, i8* %31, align 1, !tbaa !2447
  %6181 = icmp eq i32 %6169, 0
  %6182 = zext i1 %6181 to i8
  store i8 %6182, i8* %34, align 1, !tbaa !2448
  %6183 = lshr i32 %6169, 31
  %6184 = trunc i32 %6183 to i8
  store i8 %6184, i8* %37, align 1, !tbaa !2449
  %6185 = lshr i32 %6168, 31
  %6186 = xor i32 %6183, %6185
  %6187 = add nuw nsw i32 %6186, %6185
  %6188 = icmp eq i32 %6187, 2
  %6189 = zext i1 %6188 to i8
  store i8 %6189, i8* %43, align 1, !tbaa !2450
  %6190 = icmp ne i8 %6184, 0
  %6191 = xor i1 %6190, %6188
  %.demorgan126 = or i1 %6181, %6191
  %.v127 = select i1 %.demorgan126, i64 18, i64 1859
  %6192 = add i64 %6158, %.v127
  %6193 = add i64 %6156, -4
  %6194 = add i64 %6192, 7
  store i64 %6194, i64* %PC, align 8
  %6195 = inttoptr i64 %6193 to i32*
  store i32 0, i32* %6195, align 4
  %.pre95 = load i64, i64* %PC, align 8
  br i1 %.demorgan126, label %block_40102e, label %block_40175f

block_401353:                                     ; preds = %block_40134c, %block_4013f1
  %6196 = phi i64 [ %.pre66, %block_40134c ], [ %107, %block_4013f1 ]
  %MEMORY.54 = phi %struct.Memory* [ %MEMORY.16, %block_40134c ], [ %MEMORY.1, %block_4013f1 ]
  %6197 = load i64, i64* %RBP, align 8
  %6198 = add i64 %6197, -8
  %6199 = add i64 %6196, 3
  store i64 %6199, i64* %PC, align 8
  %6200 = inttoptr i64 %6198 to i32*
  %6201 = load i32, i32* %6200, align 4
  %6202 = zext i32 %6201 to i64
  store i64 %6202, i64* %RAX, align 8, !tbaa !2428
  %6203 = add i64 %6197, -4
  %6204 = add i64 %6196, 6
  store i64 %6204, i64* %PC, align 8
  %6205 = inttoptr i64 %6203 to i32*
  %6206 = load i32, i32* %6205, align 4
  %6207 = sub i32 %6201, %6206
  %6208 = icmp ult i32 %6201, %6206
  %6209 = zext i1 %6208 to i8
  store i8 %6209, i8* %18, align 1, !tbaa !2432
  %6210 = and i32 %6207, 255
  %6211 = tail call i32 @llvm.ctpop.i32(i32 %6210) #8
  %6212 = trunc i32 %6211 to i8
  %6213 = and i8 %6212, 1
  %6214 = xor i8 %6213, 1
  store i8 %6214, i8* %25, align 1, !tbaa !2446
  %6215 = xor i32 %6206, %6201
  %6216 = xor i32 %6215, %6207
  %6217 = lshr i32 %6216, 4
  %6218 = trunc i32 %6217 to i8
  %6219 = and i8 %6218, 1
  store i8 %6219, i8* %31, align 1, !tbaa !2447
  %6220 = icmp eq i32 %6207, 0
  %6221 = zext i1 %6220 to i8
  store i8 %6221, i8* %34, align 1, !tbaa !2448
  %6222 = lshr i32 %6207, 31
  %6223 = trunc i32 %6222 to i8
  store i8 %6223, i8* %37, align 1, !tbaa !2449
  %6224 = lshr i32 %6201, 31
  %6225 = lshr i32 %6206, 31
  %6226 = xor i32 %6225, %6224
  %6227 = xor i32 %6222, %6224
  %6228 = add nuw nsw i32 %6227, %6226
  %6229 = icmp eq i32 %6228, 2
  %6230 = zext i1 %6229 to i8
  store i8 %6230, i8* %43, align 1, !tbaa !2450
  %6231 = icmp ne i8 %6223, 0
  %6232 = xor i1 %6231, %6229
  %.v143 = select i1 %6232, i64 12, i64 177
  %6233 = add i64 %6196, %.v143
  %6234 = add i64 %6233, 4
  store i64 %6234, i64* %PC, align 8
  br i1 %6232, label %block_40135f, label %block_401404

block_401205:                                     ; preds = %block_4011f1
  %6235 = add i64 %1857, 4
  store i64 %6235, i64* %PC, align 8
  %6236 = load i32, i32* %1817, align 4
  %6237 = sext i32 %6236 to i64
  store i64 %6237, i64* %RAX, align 8, !tbaa !2428
  %6238 = shl nsw i64 %6237, 2
  %6239 = add i64 %1814, -1488
  %6240 = add i64 %6239, %6238
  %6241 = add i64 %1857, 12
  store i64 %6241, i64* %PC, align 8
  %6242 = inttoptr i64 %6240 to i32*
  %6243 = load i32, i32* %6242, align 4
  %6244 = add i32 %6243, 1
  %6245 = icmp ne i32 %6243, -1
  %6246 = zext i1 %6245 to i8
  store i8 %6246, i8* %18, align 1, !tbaa !2432
  %6247 = and i32 %6244, 255
  %6248 = tail call i32 @llvm.ctpop.i32(i32 %6247) #8
  %6249 = trunc i32 %6248 to i8
  %6250 = and i8 %6249, 1
  %6251 = xor i8 %6250, 1
  store i8 %6251, i8* %25, align 1, !tbaa !2446
  %6252 = xor i32 %6243, 16
  %6253 = xor i32 %6244, %6252
  %6254 = lshr i32 %6253, 4
  %6255 = trunc i32 %6254 to i8
  %6256 = and i8 %6255, 1
  store i8 %6256, i8* %31, align 1, !tbaa !2447
  %6257 = icmp eq i32 %6244, 0
  %6258 = zext i1 %6257 to i8
  store i8 %6258, i8* %34, align 1, !tbaa !2448
  %6259 = lshr i32 %6244, 31
  %6260 = trunc i32 %6259 to i8
  store i8 %6260, i8* %37, align 1, !tbaa !2449
  %6261 = lshr i32 %6243, 31
  %6262 = xor i32 %6261, 1
  %6263 = xor i32 %6259, %6261
  %6264 = add nuw nsw i32 %6263, %6262
  %6265 = icmp eq i32 %6264, 2
  %6266 = zext i1 %6265 to i8
  store i8 %6266, i8* %43, align 1, !tbaa !2450
  %.v141 = select i1 %6257, i64 118, i64 18
  %6267 = add i64 %1857, %.v141
  store i64 %6267, i64* %57, align 8, !tbaa !2428
  br i1 %6257, label %block_40127b, label %block_401217

block_401404:                                     ; preds = %block_401353
  %6268 = load i32, i32* %6205, align 4
  %6269 = sext i32 %6268 to i64
  store i64 %6269, i64* %RAX, align 8, !tbaa !2428
  %6270 = shl nsw i64 %6269, 2
  %6271 = add i64 %6197, -1616
  %6272 = add i64 %6271, %6270
  %6273 = add i64 %6233, 12
  store i64 %6273, i64* %PC, align 8
  %6274 = inttoptr i64 %6272 to i32*
  %6275 = load i32, i32* %6274, align 4
  %6276 = sext i32 %6275 to i64
  store i64 %6276, i64* %RAX, align 8, !tbaa !2428
  %6277 = shl nsw i64 %6276, 2
  %6278 = add i64 %6277, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %6279 = add i64 %6233, 19
  store i64 %6279, i64* %PC, align 8
  %6280 = inttoptr i64 %6278 to i32*
  %6281 = load i32, i32* %6280, align 4
  %6282 = zext i32 %6281 to i64
  store i64 %6282, i64* %RCX, align 8, !tbaa !2428
  %6283 = add i64 %6233, 23
  store i64 %6283, i64* %PC, align 8
  %6284 = load i32, i32* %6205, align 4
  %6285 = sext i32 %6284 to i64
  store i64 %6285, i64* %RAX, align 8, !tbaa !2428
  %6286 = shl nsw i64 %6285, 2
  %6287 = add i64 %6271, %6286
  %6288 = add i64 %6233, 30
  store i64 %6288, i64* %PC, align 8
  %6289 = inttoptr i64 %6287 to i32*
  store i32 %6281, i32* %6289, align 4
  %6290 = load i64, i64* %RBP, align 8
  %6291 = add i64 %6290, -4
  %6292 = load i64, i64* %PC, align 8
  %6293 = add i64 %6292, 3
  store i64 %6293, i64* %PC, align 8
  %6294 = inttoptr i64 %6291 to i32*
  %6295 = load i32, i32* %6294, align 4
  %6296 = add i32 %6295, 1
  %6297 = zext i32 %6296 to i64
  store i64 %6297, i64* %RAX, align 8, !tbaa !2428
  %6298 = icmp eq i32 %6295, -1
  %6299 = icmp eq i32 %6296, 0
  %6300 = or i1 %6298, %6299
  %6301 = zext i1 %6300 to i8
  store i8 %6301, i8* %18, align 1, !tbaa !2432
  %6302 = and i32 %6296, 255
  %6303 = tail call i32 @llvm.ctpop.i32(i32 %6302) #8
  %6304 = trunc i32 %6303 to i8
  %6305 = and i8 %6304, 1
  %6306 = xor i8 %6305, 1
  store i8 %6306, i8* %25, align 1, !tbaa !2446
  %6307 = xor i32 %6295, %6296
  %6308 = lshr i32 %6307, 4
  %6309 = trunc i32 %6308 to i8
  %6310 = and i8 %6309, 1
  store i8 %6310, i8* %31, align 1, !tbaa !2447
  %6311 = icmp eq i32 %6296, 0
  %6312 = zext i1 %6311 to i8
  store i8 %6312, i8* %34, align 1, !tbaa !2448
  %6313 = lshr i32 %6296, 31
  %6314 = trunc i32 %6313 to i8
  store i8 %6314, i8* %37, align 1, !tbaa !2449
  %6315 = lshr i32 %6295, 31
  %6316 = xor i32 %6313, %6315
  %6317 = add nuw nsw i32 %6316, %6313
  %6318 = icmp eq i32 %6317, 2
  %6319 = zext i1 %6318 to i8
  store i8 %6319, i8* %43, align 1, !tbaa !2450
  %6320 = add i64 %6292, 9
  store i64 %6320, i64* %PC, align 8
  store i32 %6296, i32* %6294, align 4
  %6321 = load i64, i64* %PC, align 8
  %6322 = add i64 %6321, -570
  store i64 %6322, i64* %57, align 8, !tbaa !2428
  br label %block_4011f1

block_400c00:                                     ; preds = %block_400be5
  %6323 = add i64 %139, -16
  %6324 = add i64 %175, 4
  store i64 %6324, i64* %PC, align 8
  %6325 = inttoptr i64 %6323 to i32*
  %6326 = load i32, i32* %6325, align 4
  %6327 = sext i32 %6326 to i64
  store i64 %6327, i64* %RAX, align 8, !tbaa !2428
  %6328 = shl nsw i64 %6327, 2
  %6329 = add i64 %139, -1408
  %6330 = add i64 %6329, %6328
  %6331 = add i64 %175, 11
  store i64 %6331, i64* %PC, align 8
  %6332 = inttoptr i64 %6330 to i32*
  %6333 = load i32, i32* %6332, align 4
  %6334 = zext i32 %6333 to i64
  store i64 %6334, i64* %RCX, align 8, !tbaa !2428
  %6335 = add i64 %175, 15
  store i64 %6335, i64* %PC, align 8
  %6336 = load i32, i32* %143, align 4
  %6337 = sext i32 %6336 to i64
  store i64 %6337, i64* %RAX, align 8, !tbaa !2428
  %6338 = shl nsw i64 %6337, 2
  %6339 = add i64 %6329, %6338
  %6340 = add i64 %175, 22
  store i64 %6340, i64* %PC, align 8
  %6341 = inttoptr i64 %6339 to i32*
  %6342 = load i32, i32* %6341, align 4
  %6343 = sub i32 %6333, %6342
  %6344 = icmp ult i32 %6333, %6342
  %6345 = zext i1 %6344 to i8
  store i8 %6345, i8* %18, align 1, !tbaa !2432
  %6346 = and i32 %6343, 255
  %6347 = tail call i32 @llvm.ctpop.i32(i32 %6346) #8
  %6348 = trunc i32 %6347 to i8
  %6349 = and i8 %6348, 1
  %6350 = xor i8 %6349, 1
  store i8 %6350, i8* %25, align 1, !tbaa !2446
  %6351 = xor i32 %6342, %6333
  %6352 = xor i32 %6351, %6343
  %6353 = lshr i32 %6352, 4
  %6354 = trunc i32 %6353 to i8
  %6355 = and i8 %6354, 1
  store i8 %6355, i8* %31, align 1, !tbaa !2447
  %6356 = icmp eq i32 %6343, 0
  %6357 = zext i1 %6356 to i8
  store i8 %6357, i8* %34, align 1, !tbaa !2448
  %6358 = lshr i32 %6343, 31
  %6359 = trunc i32 %6358 to i8
  store i8 %6359, i8* %37, align 1, !tbaa !2449
  %6360 = lshr i32 %6333, 31
  %6361 = lshr i32 %6342, 31
  %6362 = xor i32 %6361, %6360
  %6363 = xor i32 %6358, %6360
  %6364 = add nuw nsw i32 %6363, %6362
  %6365 = icmp eq i32 %6364, 2
  %6366 = zext i1 %6365 to i8
  store i8 %6366, i8* %43, align 1, !tbaa !2450
  %6367 = icmp ne i8 %6359, 0
  %6368 = xor i1 %6367, %6365
  %.v167 = select i1 %6368, i64 28, i64 34
  %6369 = add i64 %175, %.v167
  store i64 %6369, i64* %57, align 8, !tbaa !2428
  br i1 %6368, label %block_400c1c, label %block_400c22
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004f0_rsdec_204(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4004f0:
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
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !2428
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %10 = load i64, i64* %PC, align 8
  store i64 %8, i64* %RBP, align 8, !tbaa !2428
  %11 = add i64 %7, -40
  store i64 %11, i64* %RSP, align 8, !tbaa !2428
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = add i64 %7, -16
  %19 = load i64, i64* %RDI, align 8
  %20 = add i64 %10, 11
  store i64 %20, i64* %PC, align 8
  %21 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %RBP, align 8
  %23 = add i64 %22, -16
  %24 = load i64, i64* %RSI, align 8
  %25 = load i64, i64* %PC, align 8
  %26 = add i64 %25, 4
  store i64 %26, i64* %PC, align 8
  %27 = inttoptr i64 %23 to i64*
  store i64 %24, i64* %27, align 8
  %28 = load i64, i64* %PC, align 8
  %29 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 16) to i32*), align 16
  store i8 0, i8* %12, align 1, !tbaa !2432
  %30 = and i32 %29, 255
  %31 = tail call i32 @llvm.ctpop.i32(i32 %30) #8
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  store i8 %34, i8* %13, align 1, !tbaa !2446
  store i8 0, i8* %14, align 1, !tbaa !2447
  %35 = icmp eq i32 %29, 0
  %36 = zext i1 %35 to i8
  store i8 %36, i8* %15, align 1, !tbaa !2448
  %37 = lshr i32 %29, 31
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %35, i64 14, i64 35
  %40 = add i64 %28, %.v
  store i64 %40, i64* %39, align 8, !tbaa !2428
  br i1 %35, label %block_40050e, label %block_400523

block_400612:                                     ; preds = %block_4005d9
  %41 = add i64 %82, 766
  %42 = add i64 %82, 5
  %43 = load i64, i64* %6, align 8, !tbaa !2428
  %44 = add i64 %43, -8
  %45 = inttoptr i64 %44 to i64*
  store i64 %42, i64* %45, align 8
  store i64 %44, i64* %6, align 8, !tbaa !2428
  store i64 %41, i64* %39, align 8, !tbaa !2428
  %46 = tail call %struct.Memory* @sub_400910_decode_rs_renamed_(%struct.State* nonnull %0, i64 %41, %struct.Memory* %MEMORY.5)
  %47 = load i64, i64* %RBP, align 8
  %48 = add i64 %47, -20
  %49 = load i64, i64* %PC, align 8
  %50 = add i64 %49, 7
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %48 to i32*
  store i32 0, i32* %51, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_40061e

block_4005d9:                                     ; preds = %block_4005e6, %block_4005d2
  %52 = phi i64 [ %603, %block_4005e6 ], [ %.pre6, %block_4005d2 ]
  %53 = load i64, i64* %RBP, align 8
  %54 = add i64 %53, -20
  %55 = add i64 %52, 7
  store i64 %55, i64* %PC, align 8
  %56 = inttoptr i64 %54 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = add i32 %57, -255
  %59 = icmp ult i32 %57, 255
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %12, align 1, !tbaa !2432
  %61 = and i32 %58, 255
  %62 = tail call i32 @llvm.ctpop.i32(i32 %61) #8
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, 1
  %65 = xor i8 %64, 1
  store i8 %65, i8* %13, align 1, !tbaa !2446
  %66 = xor i32 %57, 16
  %67 = xor i32 %66, %58
  %68 = lshr i32 %67, 4
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  store i8 %70, i8* %14, align 1, !tbaa !2447
  %71 = icmp eq i32 %58, 0
  %72 = zext i1 %71 to i8
  store i8 %72, i8* %15, align 1, !tbaa !2448
  %73 = lshr i32 %58, 31
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %16, align 1, !tbaa !2449
  %75 = lshr i32 %57, 31
  %76 = xor i32 %73, %75
  %77 = add nuw nsw i32 %76, %75
  %78 = icmp eq i32 %77, 2
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %17, align 1, !tbaa !2450
  %80 = icmp ne i8 %74, 0
  %81 = xor i1 %80, %78
  %.v11 = select i1 %81, i64 13, i64 57
  %82 = add i64 %52, %.v11
  store i64 %82, i64* %39, align 8, !tbaa !2428
  br i1 %81, label %block_4005e6, label %block_400612

block_40061e:                                     ; preds = %block_40062b, %block_400612
  %83 = phi i64 [ %405, %block_40062b ], [ %.pre7, %block_400612 ]
  %84 = load i64, i64* %RBP, align 8
  %85 = add i64 %84, -20
  %86 = add i64 %83, 7
  store i64 %86, i64* %PC, align 8
  %87 = inttoptr i64 %85 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = add i32 %88, -188
  %90 = icmp ult i32 %88, 188
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %12, align 1, !tbaa !2432
  %92 = and i32 %89, 255
  %93 = tail call i32 @llvm.ctpop.i32(i32 %92) #8
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = xor i8 %95, 1
  store i8 %96, i8* %13, align 1, !tbaa !2446
  %97 = xor i32 %88, 16
  %98 = xor i32 %97, %89
  %99 = lshr i32 %98, 4
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  store i8 %101, i8* %14, align 1, !tbaa !2447
  %102 = icmp eq i32 %89, 0
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %15, align 1, !tbaa !2448
  %104 = lshr i32 %89, 31
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %16, align 1, !tbaa !2449
  %106 = lshr i32 %88, 31
  %107 = xor i32 %104, %106
  %108 = add nuw nsw i32 %107, %106
  %109 = icmp eq i32 %108, 2
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %17, align 1, !tbaa !2450
  %111 = icmp ne i8 %105, 0
  %112 = xor i1 %111, %109
  %.v12 = select i1 %112, i64 13, i64 56
  %113 = add i64 %83, %.v12
  store i64 %113, i64* %39, align 8, !tbaa !2428
  br i1 %112, label %block_40062b, label %block_400656

block_4005d2:                                     ; preds = %block_40059b
  %114 = add i64 %145, 7
  store i64 %114, i64* %PC, align 8
  store i32 0, i32* %119, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_4005d9

block_40059b:                                     ; preds = %block_4005a8, %block_400594
  %115 = phi i64 [ %543, %block_4005a8 ], [ %.pre5, %block_400594 ]
  %116 = load i64, i64* %RBP, align 8
  %117 = add i64 %116, -20
  %118 = add i64 %115, 7
  store i64 %118, i64* %PC, align 8
  %119 = inttoptr i64 %117 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = add i32 %120, -188
  %122 = icmp ult i32 %120, 188
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %12, align 1, !tbaa !2432
  %124 = and i32 %121, 255
  %125 = tail call i32 @llvm.ctpop.i32(i32 %124) #8
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  store i8 %128, i8* %13, align 1, !tbaa !2446
  %129 = xor i32 %120, 16
  %130 = xor i32 %129, %121
  %131 = lshr i32 %130, 4
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  store i8 %133, i8* %14, align 1, !tbaa !2447
  %134 = icmp eq i32 %121, 0
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %15, align 1, !tbaa !2448
  %136 = lshr i32 %121, 31
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %16, align 1, !tbaa !2449
  %138 = lshr i32 %120, 31
  %139 = xor i32 %136, %138
  %140 = add nuw nsw i32 %139, %138
  %141 = icmp eq i32 %140, 2
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %17, align 1, !tbaa !2450
  %143 = icmp ne i8 %137, 0
  %144 = xor i1 %143, %141
  %.v10 = select i1 %144, i64 13, i64 55
  %145 = add i64 %115, %.v10
  store i64 %145, i64* %39, align 8, !tbaa !2428
  br i1 %144, label %block_4005a8, label %block_4005d2

block_400656:                                     ; preds = %block_40061e
  %146 = load i64, i64* %RSP, align 8
  %147 = add i64 %146, 32
  store i64 %147, i64* %RSP, align 8, !tbaa !2428
  %148 = icmp ugt i64 %146, -33
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %12, align 1, !tbaa !2432
  %150 = trunc i64 %147 to i32
  %151 = and i32 %150, 255
  %152 = tail call i32 @llvm.ctpop.i32(i32 %151) #8
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  %155 = xor i8 %154, 1
  store i8 %155, i8* %13, align 1, !tbaa !2446
  %156 = xor i64 %146, %147
  %157 = lshr i64 %156, 4
  %158 = trunc i64 %157 to i8
  %159 = and i8 %158, 1
  store i8 %159, i8* %14, align 1, !tbaa !2447
  %160 = icmp eq i64 %147, 0
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %15, align 1, !tbaa !2448
  %162 = lshr i64 %147, 63
  %163 = trunc i64 %162 to i8
  store i8 %163, i8* %16, align 1, !tbaa !2449
  %164 = lshr i64 %146, 63
  %165 = xor i64 %162, %164
  %166 = add nuw nsw i64 %165, %162
  %167 = icmp eq i64 %166, 2
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %17, align 1, !tbaa !2450
  %169 = add i64 %113, 5
  store i64 %169, i64* %PC, align 8
  %170 = add i64 %146, 40
  %171 = inttoptr i64 %147 to i64*
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %RBP, align 8, !tbaa !2428
  store i64 %170, i64* %6, align 8, !tbaa !2428
  %173 = add i64 %113, 6
  store i64 %173, i64* %PC, align 8
  %174 = inttoptr i64 %170 to i64*
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %39, align 8, !tbaa !2428
  %176 = add i64 %146, 48
  store i64 %176, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %46

block_400572:                                     ; preds = %block_400568
  %177 = add i64 %467, 3
  store i64 %177, i64* %PC, align 8
  %178 = load i32, i32* %441, align 4
  %179 = add i32 %178, 16
  %180 = zext i32 %179 to i64
  store i64 %180, i64* %RAX, align 8, !tbaa !2428
  %181 = icmp ugt i32 %178, -17
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %12, align 1, !tbaa !2432
  %183 = and i32 %179, 255
  %184 = tail call i32 @llvm.ctpop.i32(i32 %183) #8
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  %187 = xor i8 %186, 1
  store i8 %187, i8* %13, align 1, !tbaa !2446
  %188 = xor i32 %178, 16
  %189 = xor i32 %188, %179
  %190 = lshr i32 %189, 4
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 1
  store i8 %192, i8* %14, align 1, !tbaa !2447
  %193 = icmp eq i32 %179, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %15, align 1, !tbaa !2448
  %195 = lshr i32 %179, 31
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %16, align 1, !tbaa !2449
  %197 = lshr i32 %178, 31
  %198 = xor i32 %195, %197
  %199 = add nuw nsw i32 %198, %195
  %200 = icmp eq i32 %199, 2
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %17, align 1, !tbaa !2450
  %202 = sext i32 %179 to i64
  store i64 %202, i64* %RCX, align 8, !tbaa !2428
  %203 = shl nsw i64 %202, 2
  %204 = add i64 %203, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %205 = add i64 %467, 20
  store i64 %205, i64* %PC, align 8
  %206 = inttoptr i64 %204 to i32*
  store i32 0, i32* %206, align 4
  %207 = load i64, i64* %RBP, align 8
  %208 = add i64 %207, -20
  %209 = load i64, i64* %PC, align 8
  %210 = add i64 %209, 3
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %208 to i32*
  %212 = load i32, i32* %211, align 4
  %213 = add i32 %212, 1
  %214 = zext i32 %213 to i64
  store i64 %214, i64* %RAX, align 8, !tbaa !2428
  %215 = icmp eq i32 %212, -1
  %216 = icmp eq i32 %213, 0
  %217 = or i1 %215, %216
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %12, align 1, !tbaa !2432
  %219 = and i32 %213, 255
  %220 = tail call i32 @llvm.ctpop.i32(i32 %219) #8
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  store i8 %223, i8* %13, align 1, !tbaa !2446
  %224 = xor i32 %212, %213
  %225 = lshr i32 %224, 4
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  store i8 %227, i8* %14, align 1, !tbaa !2447
  %228 = icmp eq i32 %213, 0
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %15, align 1, !tbaa !2448
  %230 = lshr i32 %213, 31
  %231 = trunc i32 %230 to i8
  store i8 %231, i8* %16, align 1, !tbaa !2449
  %232 = lshr i32 %212, 31
  %233 = xor i32 %230, %232
  %234 = add nuw nsw i32 %233, %230
  %235 = icmp eq i32 %234, 2
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %17, align 1, !tbaa !2450
  %237 = add i64 %209, 9
  store i64 %237, i64* %PC, align 8
  store i32 %213, i32* %211, align 4
  %238 = load i64, i64* %PC, align 8
  %239 = add i64 %238, -39
  store i64 %239, i64* %39, align 8, !tbaa !2428
  br label %block_400568

block_400534:                                     ; preds = %block_40052a
  %240 = add i64 %407, -16
  %241 = add i64 %436, 4
  store i64 %241, i64* %PC, align 8
  %242 = inttoptr i64 %240 to i64*
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %RAX, align 8, !tbaa !2428
  %244 = add i64 %436, 7
  store i64 %244, i64* %PC, align 8
  %245 = load i32, i32* %410, align 4
  %246 = add i32 %245, 188
  %247 = zext i32 %246 to i64
  store i64 %247, i64* %RCX, align 8, !tbaa !2428
  %248 = icmp ugt i32 %245, -189
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %12, align 1, !tbaa !2432
  %250 = and i32 %246, 255
  %251 = tail call i32 @llvm.ctpop.i32(i32 %250) #8
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  %254 = xor i8 %253, 1
  store i8 %254, i8* %13, align 1, !tbaa !2446
  %255 = xor i32 %245, 16
  %256 = xor i32 %255, %246
  %257 = lshr i32 %256, 4
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  store i8 %259, i8* %14, align 1, !tbaa !2447
  %260 = icmp eq i32 %246, 0
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %15, align 1, !tbaa !2448
  %262 = lshr i32 %246, 31
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %16, align 1, !tbaa !2449
  %264 = lshr i32 %245, 31
  %265 = xor i32 %262, %264
  %266 = add nuw nsw i32 %265, %262
  %267 = icmp eq i32 %266, 2
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %17, align 1, !tbaa !2450
  %269 = sext i32 %246 to i64
  store i64 %269, i64* %RDX, align 8, !tbaa !2428
  %270 = add i64 %269, %243
  %271 = add i64 %436, 20
  store i64 %271, i64* %PC, align 8
  %272 = inttoptr i64 %270 to i8*
  %273 = load i8, i8* %272, align 1
  %274 = zext i8 %273 to i64
  store i64 %274, i64* %RCX, align 8, !tbaa !2428
  %275 = add i64 %436, 24
  store i64 %275, i64* %PC, align 8
  %276 = load i32, i32* %410, align 4
  %277 = sext i32 %276 to i64
  store i64 %277, i64* %RAX, align 8, !tbaa !2428
  %278 = shl nsw i64 %277, 2
  %279 = add i64 %278, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %280 = zext i8 %273 to i32
  %281 = add i64 %436, 31
  store i64 %281, i64* %PC, align 8
  %282 = inttoptr i64 %279 to i32*
  store i32 %280, i32* %282, align 4
  %283 = load i64, i64* %RBP, align 8
  %284 = add i64 %283, -20
  %285 = load i64, i64* %PC, align 8
  %286 = add i64 %285, 3
  store i64 %286, i64* %PC, align 8
  %287 = inttoptr i64 %284 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = add i32 %288, 1
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %RAX, align 8, !tbaa !2428
  %291 = icmp eq i32 %288, -1
  %292 = icmp eq i32 %289, 0
  %293 = or i1 %291, %292
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %12, align 1, !tbaa !2432
  %295 = and i32 %289, 255
  %296 = tail call i32 @llvm.ctpop.i32(i32 %295) #8
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = xor i8 %298, 1
  store i8 %299, i8* %13, align 1, !tbaa !2446
  %300 = xor i32 %288, %289
  %301 = lshr i32 %300, 4
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  store i8 %303, i8* %14, align 1, !tbaa !2447
  %304 = icmp eq i32 %289, 0
  %305 = zext i1 %304 to i8
  store i8 %305, i8* %15, align 1, !tbaa !2448
  %306 = lshr i32 %289, 31
  %307 = trunc i32 %306 to i8
  store i8 %307, i8* %16, align 1, !tbaa !2449
  %308 = lshr i32 %288, 31
  %309 = xor i32 %306, %308
  %310 = add nuw nsw i32 %309, %306
  %311 = icmp eq i32 %310, 2
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %17, align 1, !tbaa !2450
  %313 = add i64 %285, 9
  store i64 %313, i64* %PC, align 8
  store i32 %289, i32* %287, align 4
  %314 = load i64, i64* %PC, align 8
  %315 = add i64 %314, -50
  store i64 %315, i64* %39, align 8, !tbaa !2428
  br label %block_40052a

block_40050e:                                     ; preds = %block_4004f0
  %316 = add i64 %40, 338
  %317 = add i64 %40, 5
  %318 = load i64, i64* %6, align 8, !tbaa !2428
  %319 = add i64 %318, -8
  %320 = inttoptr i64 %319 to i64*
  store i64 %317, i64* %320, align 8
  store i64 %319, i64* %6, align 8, !tbaa !2428
  store i64 %316, i64* %39, align 8, !tbaa !2428
  %321 = tail call %struct.Memory* @sub_400660_generate_gf_renamed_(%struct.State* nonnull %0, i64 %316, %struct.Memory* %2)
  %322 = load i64, i64* %PC, align 8
  %323 = add i64 %322, 669
  %324 = add i64 %322, 5
  %325 = load i64, i64* %6, align 8, !tbaa !2428
  %326 = add i64 %325, -8
  %327 = inttoptr i64 %326 to i64*
  store i64 %324, i64* %327, align 8
  store i64 %326, i64* %6, align 8, !tbaa !2428
  store i64 %323, i64* %39, align 8, !tbaa !2428
  %328 = tail call %struct.Memory* @sub_4007b0_gen_poly_renamed_(%struct.State* nonnull %0, i64 %323, %struct.Memory* %321)
  %329 = load i64, i64* %PC, align 8
  %330 = add i64 %329, 11
  store i64 %330, i64* %PC, align 8
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 16) to i32*), align 16
  br label %block_400523

block_40062b:                                     ; preds = %block_40061e
  %331 = add i64 %113, 3
  store i64 %331, i64* %PC, align 8
  %332 = load i32, i32* %87, align 4
  %333 = add i32 %332, 67
  %334 = zext i32 %333 to i64
  store i64 %334, i64* %RAX, align 8, !tbaa !2428
  %335 = icmp ugt i32 %332, -68
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %12, align 1, !tbaa !2432
  %337 = and i32 %333, 255
  %338 = tail call i32 @llvm.ctpop.i32(i32 %337) #8
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  %341 = xor i8 %340, 1
  store i8 %341, i8* %13, align 1, !tbaa !2446
  %342 = xor i32 %332, %333
  %343 = lshr i32 %342, 4
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  store i8 %345, i8* %14, align 1, !tbaa !2447
  %346 = icmp eq i32 %333, 0
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %15, align 1, !tbaa !2448
  %348 = lshr i32 %333, 31
  %349 = trunc i32 %348 to i8
  store i8 %349, i8* %16, align 1, !tbaa !2449
  %350 = lshr i32 %332, 31
  %351 = xor i32 %348, %350
  %352 = add nuw nsw i32 %351, %348
  %353 = icmp eq i32 %352, 2
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %17, align 1, !tbaa !2450
  %355 = sext i32 %333 to i64
  store i64 %355, i64* %RCX, align 8, !tbaa !2428
  %356 = shl nsw i64 %355, 2
  %357 = add i64 %356, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %358 = add i64 %113, 16
  store i64 %358, i64* %PC, align 8
  %359 = inttoptr i64 %357 to i32*
  %360 = load i32, i32* %359, align 4
  %361 = zext i32 %360 to i64
  store i64 %361, i64* %RAX, align 8, !tbaa !2428
  %362 = trunc i32 %360 to i8
  store i8 %362, i8* %DL, align 1, !tbaa !2451
  %363 = add i64 %84, -8
  %364 = add i64 %113, 22
  store i64 %364, i64* %PC, align 8
  %365 = inttoptr i64 %363 to i64*
  %366 = load i64, i64* %365, align 8
  store i64 %366, i64* %RCX, align 8, !tbaa !2428
  %367 = add i64 %113, 26
  store i64 %367, i64* %PC, align 8
  %368 = load i32, i32* %87, align 4
  %369 = sext i32 %368 to i64
  store i64 %369, i64* %RSI, align 8, !tbaa !2428
  %370 = add i64 %369, %366
  %371 = add i64 %113, 29
  store i64 %371, i64* %PC, align 8
  %372 = inttoptr i64 %370 to i8*
  store i8 %362, i8* %372, align 1
  %373 = load i64, i64* %RBP, align 8
  %374 = add i64 %373, -20
  %375 = load i64, i64* %PC, align 8
  %376 = add i64 %375, 3
  store i64 %376, i64* %PC, align 8
  %377 = inttoptr i64 %374 to i32*
  %378 = load i32, i32* %377, align 4
  %379 = add i32 %378, 1
  %380 = zext i32 %379 to i64
  store i64 %380, i64* %RAX, align 8, !tbaa !2428
  %381 = icmp eq i32 %378, -1
  %382 = icmp eq i32 %379, 0
  %383 = or i1 %381, %382
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %12, align 1, !tbaa !2432
  %385 = and i32 %379, 255
  %386 = tail call i32 @llvm.ctpop.i32(i32 %385) #8
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  %389 = xor i8 %388, 1
  store i8 %389, i8* %13, align 1, !tbaa !2446
  %390 = xor i32 %378, %379
  %391 = lshr i32 %390, 4
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  store i8 %393, i8* %14, align 1, !tbaa !2447
  %394 = icmp eq i32 %379, 0
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %15, align 1, !tbaa !2448
  %396 = lshr i32 %379, 31
  %397 = trunc i32 %396 to i8
  store i8 %397, i8* %16, align 1, !tbaa !2449
  %398 = lshr i32 %378, 31
  %399 = xor i32 %396, %398
  %400 = add nuw nsw i32 %399, %396
  %401 = icmp eq i32 %400, 2
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %17, align 1, !tbaa !2450
  %403 = add i64 %375, 9
  store i64 %403, i64* %PC, align 8
  store i32 %379, i32* %377, align 4
  %404 = load i64, i64* %PC, align 8
  %405 = add i64 %404, -51
  store i64 %405, i64* %39, align 8, !tbaa !2428
  br label %block_40061e

block_40052a:                                     ; preds = %block_400523, %block_400534
  %406 = phi i64 [ %.pre, %block_400523 ], [ %315, %block_400534 ]
  %407 = load i64, i64* %RBP, align 8
  %408 = add i64 %407, -20
  %409 = add i64 %406, 4
  store i64 %409, i64* %PC, align 8
  %410 = inttoptr i64 %408 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = add i32 %411, -16
  %413 = icmp ult i32 %411, 16
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %12, align 1, !tbaa !2432
  %415 = and i32 %412, 255
  %416 = tail call i32 @llvm.ctpop.i32(i32 %415) #8
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  %419 = xor i8 %418, 1
  store i8 %419, i8* %13, align 1, !tbaa !2446
  %420 = xor i32 %411, 16
  %421 = xor i32 %420, %412
  %422 = lshr i32 %421, 4
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  store i8 %424, i8* %14, align 1, !tbaa !2447
  %425 = icmp eq i32 %412, 0
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %15, align 1, !tbaa !2448
  %427 = lshr i32 %412, 31
  %428 = trunc i32 %427 to i8
  store i8 %428, i8* %16, align 1, !tbaa !2449
  %429 = lshr i32 %411, 31
  %430 = xor i32 %427, %429
  %431 = add nuw nsw i32 %430, %429
  %432 = icmp eq i32 %431, 2
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %17, align 1, !tbaa !2450
  %434 = icmp ne i8 %428, 0
  %435 = xor i1 %434, %432
  %.v8 = select i1 %435, i64 10, i64 55
  %436 = add i64 %406, %.v8
  store i64 %436, i64* %39, align 8, !tbaa !2428
  br i1 %435, label %block_400534, label %block_400561

block_400568:                                     ; preds = %block_400561, %block_400572
  %437 = phi i64 [ %.pre4, %block_400561 ], [ %239, %block_400572 ]
  %438 = load i64, i64* %RBP, align 8
  %439 = add i64 %438, -20
  %440 = add i64 %437, 4
  store i64 %440, i64* %PC, align 8
  %441 = inttoptr i64 %439 to i32*
  %442 = load i32, i32* %441, align 4
  %443 = add i32 %442, -51
  %444 = icmp ult i32 %442, 51
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %12, align 1, !tbaa !2432
  %446 = and i32 %443, 255
  %447 = tail call i32 @llvm.ctpop.i32(i32 %446) #8
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  %450 = xor i8 %449, 1
  store i8 %450, i8* %13, align 1, !tbaa !2446
  %451 = xor i32 %442, 16
  %452 = xor i32 %451, %443
  %453 = lshr i32 %452, 4
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  store i8 %455, i8* %14, align 1, !tbaa !2447
  %456 = icmp eq i32 %443, 0
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %15, align 1, !tbaa !2448
  %458 = lshr i32 %443, 31
  %459 = trunc i32 %458 to i8
  store i8 %459, i8* %16, align 1, !tbaa !2449
  %460 = lshr i32 %442, 31
  %461 = xor i32 %458, %460
  %462 = add nuw nsw i32 %461, %460
  %463 = icmp eq i32 %462, 2
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %17, align 1, !tbaa !2450
  %465 = icmp ne i8 %459, 0
  %466 = xor i1 %465, %463
  %.v9 = select i1 %466, i64 10, i64 44
  %467 = add i64 %437, %.v9
  store i64 %467, i64* %39, align 8, !tbaa !2428
  br i1 %466, label %block_400572, label %block_400594

block_400594:                                     ; preds = %block_400568
  %468 = add i64 %467, 7
  store i64 %468, i64* %PC, align 8
  store i32 0, i32* %441, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_40059b

block_4005a8:                                     ; preds = %block_40059b
  %469 = add i64 %116, -16
  %470 = add i64 %145, 4
  store i64 %470, i64* %PC, align 8
  %471 = inttoptr i64 %469 to i64*
  %472 = load i64, i64* %471, align 8
  store i64 %472, i64* %RAX, align 8, !tbaa !2428
  %473 = add i64 %145, 8
  store i64 %473, i64* %PC, align 8
  %474 = load i32, i32* %119, align 4
  %475 = sext i32 %474 to i64
  store i64 %475, i64* %RCX, align 8, !tbaa !2428
  %476 = add i64 %475, %472
  %477 = add i64 %145, 12
  store i64 %477, i64* %PC, align 8
  %478 = inttoptr i64 %476 to i8*
  %479 = load i8, i8* %478, align 1
  %480 = zext i8 %479 to i64
  store i64 %480, i64* %RDX, align 8, !tbaa !2428
  %481 = add i64 %145, 15
  store i64 %481, i64* %PC, align 8
  %482 = load i32, i32* %119, align 4
  %483 = add i32 %482, 67
  %484 = zext i32 %483 to i64
  store i64 %484, i64* %RSI, align 8, !tbaa !2428
  %485 = icmp ugt i32 %482, -68
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %12, align 1, !tbaa !2432
  %487 = and i32 %483, 255
  %488 = tail call i32 @llvm.ctpop.i32(i32 %487) #8
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  %491 = xor i8 %490, 1
  store i8 %491, i8* %13, align 1, !tbaa !2446
  %492 = xor i32 %482, %483
  %493 = lshr i32 %492, 4
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  store i8 %495, i8* %14, align 1, !tbaa !2447
  %496 = icmp eq i32 %483, 0
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %15, align 1, !tbaa !2448
  %498 = lshr i32 %483, 31
  %499 = trunc i32 %498 to i8
  store i8 %499, i8* %16, align 1, !tbaa !2449
  %500 = lshr i32 %482, 31
  %501 = xor i32 %498, %500
  %502 = add nuw nsw i32 %501, %498
  %503 = icmp eq i32 %502, 2
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %17, align 1, !tbaa !2450
  %505 = sext i32 %483 to i64
  store i64 %505, i64* %RAX, align 8, !tbaa !2428
  %506 = shl nsw i64 %505, 2
  %507 = add i64 %506, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %508 = zext i8 %479 to i32
  %509 = add i64 %145, 28
  store i64 %509, i64* %PC, align 8
  %510 = inttoptr i64 %507 to i32*
  store i32 %508, i32* %510, align 4
  %511 = load i64, i64* %RBP, align 8
  %512 = add i64 %511, -20
  %513 = load i64, i64* %PC, align 8
  %514 = add i64 %513, 3
  store i64 %514, i64* %PC, align 8
  %515 = inttoptr i64 %512 to i32*
  %516 = load i32, i32* %515, align 4
  %517 = add i32 %516, 1
  %518 = zext i32 %517 to i64
  store i64 %518, i64* %RAX, align 8, !tbaa !2428
  %519 = icmp eq i32 %516, -1
  %520 = icmp eq i32 %517, 0
  %521 = or i1 %519, %520
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %12, align 1, !tbaa !2432
  %523 = and i32 %517, 255
  %524 = tail call i32 @llvm.ctpop.i32(i32 %523) #8
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  %527 = xor i8 %526, 1
  store i8 %527, i8* %13, align 1, !tbaa !2446
  %528 = xor i32 %516, %517
  %529 = lshr i32 %528, 4
  %530 = trunc i32 %529 to i8
  %531 = and i8 %530, 1
  store i8 %531, i8* %14, align 1, !tbaa !2447
  %532 = icmp eq i32 %517, 0
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %15, align 1, !tbaa !2448
  %534 = lshr i32 %517, 31
  %535 = trunc i32 %534 to i8
  store i8 %535, i8* %16, align 1, !tbaa !2449
  %536 = lshr i32 %516, 31
  %537 = xor i32 %534, %536
  %538 = add nuw nsw i32 %537, %534
  %539 = icmp eq i32 %538, 2
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %17, align 1, !tbaa !2450
  %541 = add i64 %513, 9
  store i64 %541, i64* %PC, align 8
  store i32 %517, i32* %515, align 4
  %542 = load i64, i64* %PC, align 8
  %543 = add i64 %542, -50
  store i64 %543, i64* %39, align 8, !tbaa !2428
  br label %block_40059b

block_400523:                                     ; preds = %block_4004f0, %block_40050e
  %544 = phi i64 [ %40, %block_4004f0 ], [ %330, %block_40050e ]
  %MEMORY.5 = phi %struct.Memory* [ %2, %block_4004f0 ], [ %328, %block_40050e ]
  %545 = load i64, i64* %RBP, align 8
  %546 = add i64 %545, -20
  %547 = add i64 %544, 7
  store i64 %547, i64* %PC, align 8
  %548 = inttoptr i64 %546 to i32*
  store i32 0, i32* %548, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_40052a

block_4005e6:                                     ; preds = %block_4005d9
  %549 = add i64 %82, 4
  store i64 %549, i64* %PC, align 8
  %550 = load i32, i32* %56, align 4
  %551 = sext i32 %550 to i64
  store i64 %551, i64* %RAX, align 8, !tbaa !2428
  %552 = shl nsw i64 %551, 2
  %553 = add i64 %552, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %554 = add i64 %82, 12
  store i64 %554, i64* %PC, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = sext i32 %556 to i64
  store i64 %557, i64* %RAX, align 8, !tbaa !2428
  %558 = shl nsw i64 %557, 2
  %559 = add i64 %558, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %560 = add i64 %82, 19
  store i64 %560, i64* %PC, align 8
  %561 = inttoptr i64 %559 to i32*
  %562 = load i32, i32* %561, align 4
  %563 = zext i32 %562 to i64
  store i64 %563, i64* %RCX, align 8, !tbaa !2428
  %564 = add i64 %82, 23
  store i64 %564, i64* %PC, align 8
  %565 = load i32, i32* %56, align 4
  %566 = sext i32 %565 to i64
  store i64 %566, i64* %RAX, align 8, !tbaa !2428
  %567 = shl nsw i64 %566, 2
  %568 = add i64 %567, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %569 = add i64 %82, 30
  store i64 %569, i64* %PC, align 8
  %570 = inttoptr i64 %568 to i32*
  store i32 %562, i32* %570, align 4
  %571 = load i64, i64* %RBP, align 8
  %572 = add i64 %571, -20
  %573 = load i64, i64* %PC, align 8
  %574 = add i64 %573, 3
  store i64 %574, i64* %PC, align 8
  %575 = inttoptr i64 %572 to i32*
  %576 = load i32, i32* %575, align 4
  %577 = add i32 %576, 1
  %578 = zext i32 %577 to i64
  store i64 %578, i64* %RAX, align 8, !tbaa !2428
  %579 = icmp eq i32 %576, -1
  %580 = icmp eq i32 %577, 0
  %581 = or i1 %579, %580
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %12, align 1, !tbaa !2432
  %583 = and i32 %577, 255
  %584 = tail call i32 @llvm.ctpop.i32(i32 %583) #8
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  %587 = xor i8 %586, 1
  store i8 %587, i8* %13, align 1, !tbaa !2446
  %588 = xor i32 %576, %577
  %589 = lshr i32 %588, 4
  %590 = trunc i32 %589 to i8
  %591 = and i8 %590, 1
  store i8 %591, i8* %14, align 1, !tbaa !2447
  %592 = icmp eq i32 %577, 0
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %15, align 1, !tbaa !2448
  %594 = lshr i32 %577, 31
  %595 = trunc i32 %594 to i8
  store i8 %595, i8* %16, align 1, !tbaa !2449
  %596 = lshr i32 %576, 31
  %597 = xor i32 %594, %596
  %598 = add nuw nsw i32 %597, %594
  %599 = icmp eq i32 %598, 2
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %17, align 1, !tbaa !2450
  %601 = add i64 %573, 9
  store i64 %601, i64* %PC, align 8
  store i32 %577, i32* %575, align 4
  %602 = load i64, i64* %PC, align 8
  %603 = add i64 %602, -52
  store i64 %603, i64* %39, align 8, !tbaa !2428
  br label %block_4005d9

block_400561:                                     ; preds = %block_40052a
  %604 = add i64 %436, 7
  store i64 %604, i64* %PC, align 8
  store i32 0, i32* %410, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_400568
}

; Function Attrs: noinline
define %struct.Memory* @sub_400430__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400430:
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
define %struct.Memory* @sub_401c40___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401c40:
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
  store i64 ptrtoint (%seg_602df0__init_array_type* @seg_602df0__init_array to i64), i64* %R12, align 8, !tbaa !2428
  %28 = load i64, i64* %RBP, align 8
  %29 = add i64 %27, 8
  store i64 %29, i64* %PC, align 8
  %30 = add i64 %8, -40
  %31 = inttoptr i64 %30 to i64*
  store i64 %28, i64* %31, align 8
  %32 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_602df0__init_array_type* @seg_602df0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2428
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
  store i8 %53, i8* %45, align 1, !tbaa !2451
  %55 = trunc i64 %54 to i32
  %56 = and i32 %55, 255
  %57 = tail call i32 @llvm.ctpop.i32(i32 %56) #8
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  store i8 %60, i8* %46, align 1, !tbaa !2451
  store i8 0, i8* %47, align 1, !tbaa !2451
  %61 = icmp eq i64 %54, 0
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %48, align 1, !tbaa !2451
  %63 = lshr i64 %54, 63
  %64 = trunc i64 %63 to i8
  store i8 %64, i8* %49, align 1, !tbaa !2451
  store i8 0, i8* %50, align 1, !tbaa !2451
  %65 = add i64 %40, -6291
  %66 = add i64 %40, 22
  %67 = add i64 %8, -64
  %68 = inttoptr i64 %67 to i64*
  store i64 %66, i64* %68, align 8
  store i64 %67, i64* %7, align 8, !tbaa !2428
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %65, i64* %69, align 8, !tbaa !2428
  %70 = tail call %struct.Memory* @sub_4003c8__init_proc_renamed_(%struct.State* nonnull %0, i64 %65, %struct.Memory* %2)
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
  br i1 %79, label %block_401c96, label %block_401c76

block_401c96:                                     ; preds = %block_401c80, %block_401c40
  %84 = phi i64 [ %83, %block_401c40 ], [ %182, %block_401c80 ]
  %MEMORY.0 = phi %struct.Memory* [ %70, %block_401c40 ], [ %152, %block_401c80 ]
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

block_401c76:                                     ; preds = %block_401c40
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %45, align 1, !tbaa !2432
  store i8 1, i8* %46, align 1, !tbaa !2446
  store i8 1, i8* %48, align 1, !tbaa !2448
  store i8 0, i8* %49, align 1, !tbaa !2449
  store i8 0, i8* %50, align 1, !tbaa !2450
  store i8 0, i8* %47, align 1, !tbaa !2447
  %136 = add i64 %83, 10
  store i64 %136, i64* %PC, align 8
  br label %block_401c80

block_401c80:                                     ; preds = %block_401c80, %block_401c76
  %137 = phi i64 [ 0, %block_401c76 ], [ %155, %block_401c80 ]
  %138 = phi i64 [ %136, %block_401c76 ], [ %182, %block_401c80 ]
  %MEMORY.1 = phi %struct.Memory* [ %70, %block_401c76 ], [ %152, %block_401c80 ]
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
  br i1 %172, label %block_401c96, label %block_401c80
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004b0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4004b0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* getelementptr inbounds (%seg_603060__bss_type, %seg_603060__bss_type* @seg_603060__bss, i64 0, i32 0, i64 0), align 16
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
  br i1 %12, label %block_4004b9, label %block_4004d0

block_4004d0:                                     ; preds = %block_4004b0
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

block_4004b9:                                     ; preds = %block_4004b0
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
  %37 = tail call %struct.Memory* @sub_400440_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %33, %struct.Memory* %2)
  %38 = load i64, i64* %PC, align 8
  store i8 1, i8* getelementptr inbounds (%seg_603060__bss_type, %seg_603060__bss_type* @seg_603060__bss, i64 0, i32 0, i64 0), align 16
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
define %struct.Memory* @sub_4003c8__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4003c8:
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
  br i1 %18, label %block_4003c8.block_4003da_crit_edge, label %block_4003d8

block_4003c8.block_4003da_crit_edge:              ; preds = %block_4003c8
  %.pre2 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  br label %block_4003da

block_4003d8:                                     ; preds = %block_4003c8
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
  br label %block_4003da

block_4003da:                                     ; preds = %block_4003c8.block_4003da_crit_edge, %block_4003d8
  %.pre-phi = phi i64* [ %.pre2, %block_4003c8.block_4003da_crit_edge ], [ %25, %block_4003d8 ]
  %29 = phi i64 [ %23, %block_4003c8.block_4003da_crit_edge ], [ %.pre1, %block_4003d8 ]
  %30 = phi i64 [ %4, %block_4003c8.block_4003da_crit_edge ], [ %.pre, %block_4003d8 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4003c8.block_4003da_crit_edge ], [ %28, %block_4003d8 ]
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
define %struct.Memory* @sub_401cb4__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401cb4:
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
define %struct.Memory* @sub_400400__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400400:
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
  store i64 ptrtoint (void ()* @callback_sub_401cb0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_401c40___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %36 = add i64 %35, 27
  %37 = add i64 %16, -24
  %38 = inttoptr i64 %37 to i64*
  store i64 %36, i64* %38, align 8
  store i64 %37, i64* %11, align 8, !tbaa !2428
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %40 = load i64, i64* getelementptr inbounds (%seg_602ff0__got_type, %seg_602ff0__got_type* @seg_602ff0__got, i64 0, i32 0), align 8
  store i64 %40, i64* %39, align 8, !tbaa !2428
  %41 = tail call fastcc %struct.Memory* @ext_6040d0___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %42 = load i64, i64* %PC, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %PC, align 8
  %44 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %43, %struct.Memory* %41)
  ret %struct.Memory* %44
}

; Function Attrs: noinline
define %struct.Memory* @sub_401cb0___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401cb0:
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
define %struct.Memory* @sub_400440_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400440:
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
  store i64 6303832, i64* %RAX, align 8, !tbaa !2428
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
define %struct.Memory* @sub_400660_generate_gf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400660:
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
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_40067d

block_40077b:                                     ; preds = %block_40072e, %block_40075d
  %25 = phi i64 [ %249, %block_40072e ], [ %.pre2, %block_40075d ]
  %26 = load i64, i64* %RBP, align 8
  %27 = add i64 %26, -4
  %28 = add i64 %25, 3
  store i64 %28, i64* %PC, align 8
  %29 = inttoptr i64 %27 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = zext i32 %30 to i64
  store i64 %31, i64* %RAX, align 8, !tbaa !2428
  %32 = add i64 %25, 7
  store i64 %32, i64* %PC, align 8
  %33 = load i32, i32* %29, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %RCX, align 8, !tbaa !2428
  %35 = shl nsw i64 %34, 2
  %36 = add i64 %35, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %37 = add i64 %25, 15
  store i64 %37, i64* %PC, align 8
  %38 = inttoptr i64 %36 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %RCX, align 8, !tbaa !2428
  %41 = shl nsw i64 %40, 2
  %42 = add i64 %41, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %43 = add i64 %25, 22
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %42 to i32*
  store i32 %30, i32* %44, align 4
  %45 = load i64, i64* %RBP, align 8
  %46 = add i64 %45, -4
  %47 = load i64, i64* %PC, align 8
  %48 = add i64 %47, 3
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %46 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = add i32 %50, 1
  %52 = zext i32 %51 to i64
  store i64 %52, i64* %RAX, align 8, !tbaa !2428
  %53 = icmp eq i32 %50, -1
  %54 = icmp eq i32 %51, 0
  %55 = or i1 %53, %54
  %56 = zext i1 %55 to i8
  store i8 %56, i8* %18, align 1, !tbaa !2432
  %57 = and i32 %51, 255
  %58 = tail call i32 @llvm.ctpop.i32(i32 %57) #8
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  %61 = xor i8 %60, 1
  store i8 %61, i8* %19, align 1, !tbaa !2446
  %62 = xor i32 %50, %51
  %63 = lshr i32 %62, 4
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  store i8 %65, i8* %20, align 1, !tbaa !2447
  %66 = icmp eq i32 %51, 0
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %21, align 1, !tbaa !2448
  %68 = lshr i32 %51, 31
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %22, align 1, !tbaa !2449
  %70 = lshr i32 %50, 31
  %71 = xor i32 %68, %70
  %72 = add nuw nsw i32 %71, %68
  %73 = icmp eq i32 %72, 2
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %23, align 1, !tbaa !2450
  %75 = add i64 %47, 9
  store i64 %75, i64* %PC, align 8
  store i32 %51, i32* %49, align 4
  %76 = load i64, i64* %PC, align 8
  %77 = add i64 %76, -146
  store i64 %77, i64* %24, align 8, !tbaa !2428
  br label %block_400708

block_40075d:                                     ; preds = %block_400715
  %78 = add i64 %311, 3
  store i64 %78, i64* %PC, align 8
  %79 = load i32, i32* %316, align 4
  %80 = add i32 %79, -1
  %81 = zext i32 %80 to i64
  store i64 %81, i64* %RAX, align 8, !tbaa !2428
  %82 = icmp eq i32 %79, 0
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %18, align 1, !tbaa !2432
  %84 = and i32 %80, 255
  %85 = tail call i32 @llvm.ctpop.i32(i32 %84) #8
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  store i8 %88, i8* %19, align 1, !tbaa !2446
  %89 = xor i32 %79, %80
  %90 = lshr i32 %89, 4
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  store i8 %92, i8* %20, align 1, !tbaa !2447
  %93 = icmp eq i32 %80, 0
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %21, align 1, !tbaa !2448
  %95 = lshr i32 %80, 31
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %22, align 1, !tbaa !2449
  %97 = lshr i32 %79, 31
  %98 = xor i32 %95, %97
  %99 = add nuw nsw i32 %98, %97
  %100 = icmp eq i32 %99, 2
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %23, align 1, !tbaa !2450
  %102 = sext i32 %80 to i64
  store i64 %102, i64* %RCX, align 8, !tbaa !2428
  %103 = shl nsw i64 %102, 2
  %104 = add i64 %103, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %105 = add i64 %311, 16
  store i64 %105, i64* %PC, align 8
  %106 = inttoptr i64 %104 to i32*
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 %107, 1
  %109 = icmp slt i32 %107, 0
  %110 = icmp slt i32 %108, 0
  %111 = xor i1 %109, %110
  %112 = zext i32 %108 to i64
  store i64 %112, i64* %RAX, align 8, !tbaa !2428
  %.lobit9 = lshr i32 %107, 31
  %113 = trunc i32 %.lobit9 to i8
  store i8 %113, i8* %18, align 1, !tbaa !2451
  %114 = and i32 %108, 254
  %115 = tail call i32 @llvm.ctpop.i32(i32 %114) #8
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = xor i8 %117, 1
  store i8 %118, i8* %19, align 1, !tbaa !2451
  store i8 0, i8* %20, align 1, !tbaa !2451
  %119 = icmp eq i32 %108, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %21, align 1, !tbaa !2451
  %121 = lshr i32 %107, 30
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  store i8 %123, i8* %22, align 1, !tbaa !2451
  %124 = zext i1 %111 to i8
  store i8 %124, i8* %23, align 1, !tbaa !2451
  %125 = add i64 %311, 23
  store i64 %125, i64* %PC, align 8
  %126 = load i32, i32* %316, align 4
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %RCX, align 8, !tbaa !2428
  %128 = shl nsw i64 %127, 2
  %129 = add i64 %128, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %130 = add i64 %311, 30
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %129 to i32*
  store i32 %108, i32* %131, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_40077b

block_4006ce:                                     ; preds = %block_400687.block_4006ce_crit_edge, %block_4006bd
  %.pre-phi5 = phi i32* [ %.pre4, %block_400687.block_4006ce_crit_edge ], [ %419, %block_4006bd ]
  %132 = phi i64 [ %487, %block_400687.block_4006ce_crit_edge ], [ %433, %block_4006bd ]
  %133 = add i64 %132, 3
  store i64 %133, i64* %PC, align 8
  %134 = load i32, i32* %.pre-phi5, align 4
  %135 = shl i32 %134, 1
  %136 = icmp slt i32 %134, 0
  %137 = icmp slt i32 %135, 0
  %138 = xor i1 %136, %137
  %139 = zext i32 %135 to i64
  store i64 %139, i64* %RAX, align 8, !tbaa !2428
  %.lobit = lshr i32 %134, 31
  %140 = trunc i32 %.lobit to i8
  store i8 %140, i8* %18, align 1, !tbaa !2451
  %141 = and i32 %135, 254
  %142 = tail call i32 @llvm.ctpop.i32(i32 %141) #8
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  store i8 %145, i8* %19, align 1, !tbaa !2451
  store i8 0, i8* %20, align 1, !tbaa !2451
  %146 = icmp eq i32 %135, 0
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %21, align 1, !tbaa !2451
  %148 = lshr i32 %134, 30
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  store i8 %150, i8* %22, align 1, !tbaa !2451
  %151 = zext i1 %138 to i8
  store i8 %151, i8* %23, align 1, !tbaa !2451
  %152 = add i64 %132, 9
  store i64 %152, i64* %PC, align 8
  store i32 %135, i32* %.pre-phi5, align 4
  %153 = load i64, i64* %RBP, align 8
  %154 = add i64 %153, -4
  %155 = load i64, i64* %PC, align 8
  %156 = add i64 %155, 3
  store i64 %156, i64* %PC, align 8
  %157 = inttoptr i64 %154 to i32*
  %158 = load i32, i32* %157, align 4
  %159 = add i32 %158, 1
  %160 = zext i32 %159 to i64
  store i64 %160, i64* %RAX, align 8, !tbaa !2428
  %161 = icmp eq i32 %158, -1
  %162 = icmp eq i32 %159, 0
  %163 = or i1 %161, %162
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %18, align 1, !tbaa !2432
  %165 = and i32 %159, 255
  %166 = tail call i32 @llvm.ctpop.i32(i32 %165) #8
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = xor i8 %168, 1
  store i8 %169, i8* %19, align 1, !tbaa !2446
  %170 = xor i32 %158, %159
  %171 = lshr i32 %170, 4
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  store i8 %173, i8* %20, align 1, !tbaa !2447
  %174 = icmp eq i32 %159, 0
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %21, align 1, !tbaa !2448
  %176 = lshr i32 %159, 31
  %177 = trunc i32 %176 to i8
  store i8 %177, i8* %22, align 1, !tbaa !2449
  %178 = lshr i32 %158, 31
  %179 = xor i32 %176, %178
  %180 = add nuw nsw i32 %179, %176
  %181 = icmp eq i32 %180, 2
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %23, align 1, !tbaa !2450
  %183 = add i64 %155, 9
  store i64 %183, i64* %PC, align 8
  store i32 %159, i32* %157, align 4
  %184 = load i64, i64* %PC, align 8
  %185 = add i64 %184, -99
  store i64 %185, i64* %24, align 8, !tbaa !2428
  br label %block_40067d

block_40072e:                                     ; preds = %block_400715
  %186 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2112) to i32*), align 16
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %RAX, align 8, !tbaa !2428
  %188 = add i64 %311, 10
  store i64 %188, i64* %PC, align 8
  %189 = load i32, i32* %316, align 4
  %190 = add i32 %189, -1
  %191 = zext i32 %190 to i64
  store i64 %191, i64* %RCX, align 8, !tbaa !2428
  %192 = icmp eq i32 %189, 0
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %18, align 1, !tbaa !2432
  %194 = and i32 %190, 255
  %195 = tail call i32 @llvm.ctpop.i32(i32 %194) #8
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  %198 = xor i8 %197, 1
  store i8 %198, i8* %19, align 1, !tbaa !2446
  %199 = xor i32 %189, %190
  %200 = lshr i32 %199, 4
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  store i8 %202, i8* %20, align 1, !tbaa !2447
  %203 = icmp eq i32 %190, 0
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %21, align 1, !tbaa !2448
  %205 = lshr i32 %190, 31
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %22, align 1, !tbaa !2449
  %207 = lshr i32 %189, 31
  %208 = xor i32 %205, %207
  %209 = add nuw nsw i32 %208, %207
  %210 = icmp eq i32 %209, 2
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %23, align 1, !tbaa !2450
  %212 = sext i32 %190 to i64
  store i64 %212, i64* %RDX, align 8, !tbaa !2428
  %213 = shl nsw i64 %212, 2
  %214 = add i64 %213, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %215 = add i64 %311, 23
  store i64 %215, i64* %PC, align 8
  %216 = inttoptr i64 %214 to i32*
  %217 = load i32, i32* %216, align 4
  %218 = zext i32 %217 to i64
  store i64 %218, i64* %RCX, align 8, !tbaa !2428
  %219 = add i64 %311, 26
  store i64 %219, i64* %PC, align 8
  %220 = load i32, i32* %283, align 4
  %221 = xor i32 %220, %217
  %222 = shl i32 %221, 1
  %223 = zext i32 %222 to i64
  store i64 %223, i64* %RCX, align 8, !tbaa !2428
  %224 = load i64, i64* %RAX, align 8
  %225 = xor i64 %223, %224
  %226 = trunc i64 %225 to i32
  %227 = and i64 %225, 4294967295
  store i64 %227, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  %228 = and i32 %226, 255
  %229 = tail call i32 @llvm.ctpop.i32(i32 %228) #8
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  store i8 %232, i8* %19, align 1, !tbaa !2446
  %233 = icmp eq i32 %226, 0
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %21, align 1, !tbaa !2448
  %235 = lshr i32 %226, 31
  %236 = trunc i32 %235 to i8
  store i8 %236, i8* %22, align 1, !tbaa !2449
  store i8 0, i8* %23, align 1, !tbaa !2450
  store i8 0, i8* %20, align 1, !tbaa !2447
  %237 = load i64, i64* %RBP, align 8
  %238 = add i64 %237, -4
  %239 = add i64 %311, 35
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  store i64 %242, i64* %RDX, align 8, !tbaa !2428
  %243 = shl nsw i64 %242, 2
  %244 = add i64 %243, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %245 = trunc i64 %225 to i32
  %246 = add i64 %311, 42
  store i64 %246, i64* %PC, align 8
  %247 = inttoptr i64 %244 to i32*
  store i32 %245, i32* %247, align 4
  %248 = load i64, i64* %PC, align 8
  %249 = add i64 %248, 35
  store i64 %249, i64* %24, align 8, !tbaa !2428
  br label %block_40077b

block_400715:                                     ; preds = %block_400708
  %250 = add i64 %342, 3
  store i64 %250, i64* %PC, align 8
  %251 = load i32, i32* %316, align 4
  %252 = add i32 %251, -1
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %RAX, align 8, !tbaa !2428
  %254 = icmp eq i32 %251, 0
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %18, align 1, !tbaa !2432
  %256 = and i32 %252, 255
  %257 = tail call i32 @llvm.ctpop.i32(i32 %256) #8
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  store i8 %260, i8* %19, align 1, !tbaa !2446
  %261 = xor i32 %251, %252
  %262 = lshr i32 %261, 4
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  store i8 %264, i8* %20, align 1, !tbaa !2447
  %265 = icmp eq i32 %252, 0
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %21, align 1, !tbaa !2448
  %267 = lshr i32 %252, 31
  %268 = trunc i32 %267 to i8
  store i8 %268, i8* %22, align 1, !tbaa !2449
  %269 = lshr i32 %251, 31
  %270 = xor i32 %267, %269
  %271 = add nuw nsw i32 %270, %269
  %272 = icmp eq i32 %271, 2
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %23, align 1, !tbaa !2450
  %274 = sext i32 %252 to i64
  store i64 %274, i64* %RCX, align 8, !tbaa !2428
  %275 = shl nsw i64 %274, 2
  %276 = add i64 %275, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %277 = add i64 %342, 16
  store i64 %277, i64* %PC, align 8
  %278 = inttoptr i64 %276 to i32*
  %279 = load i32, i32* %278, align 4
  %280 = zext i32 %279 to i64
  store i64 %280, i64* %RAX, align 8, !tbaa !2428
  %281 = add i64 %313, -8
  %282 = add i64 %342, 19
  store i64 %282, i64* %PC, align 8
  %283 = inttoptr i64 %281 to i32*
  %284 = load i32, i32* %283, align 4
  %285 = sub i32 %279, %284
  %286 = icmp ult i32 %279, %284
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %18, align 1, !tbaa !2432
  %288 = and i32 %285, 255
  %289 = tail call i32 @llvm.ctpop.i32(i32 %288) #8
  %290 = trunc i32 %289 to i8
  %291 = and i8 %290, 1
  %292 = xor i8 %291, 1
  store i8 %292, i8* %19, align 1, !tbaa !2446
  %293 = xor i32 %284, %279
  %294 = xor i32 %293, %285
  %295 = lshr i32 %294, 4
  %296 = trunc i32 %295 to i8
  %297 = and i8 %296, 1
  store i8 %297, i8* %20, align 1, !tbaa !2447
  %298 = icmp eq i32 %285, 0
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %21, align 1, !tbaa !2448
  %300 = lshr i32 %285, 31
  %301 = trunc i32 %300 to i8
  store i8 %301, i8* %22, align 1, !tbaa !2449
  %302 = lshr i32 %279, 31
  %303 = lshr i32 %284, 31
  %304 = xor i32 %303, %302
  %305 = xor i32 %300, %302
  %306 = add nuw nsw i32 %305, %304
  %307 = icmp eq i32 %306, 2
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %23, align 1, !tbaa !2450
  %309 = icmp ne i8 %301, 0
  %310 = xor i1 %309, %307
  %.v8 = select i1 %310, i64 72, i64 25
  %311 = add i64 %342, %.v8
  store i64 %311, i64* %24, align 8, !tbaa !2428
  br i1 %310, label %block_40075d, label %block_40072e

block_400708:                                     ; preds = %block_4006e5, %block_40077b
  %312 = phi i64 [ %.pre1, %block_4006e5 ], [ %77, %block_40077b ]
  %313 = load i64, i64* %RBP, align 8
  %314 = add i64 %313, -4
  %315 = add i64 %312, 7
  store i64 %315, i64* %PC, align 8
  %316 = inttoptr i64 %314 to i32*
  %317 = load i32, i32* %316, align 4
  %318 = add i32 %317, -255
  %319 = icmp ult i32 %317, 255
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %18, align 1, !tbaa !2432
  %321 = and i32 %318, 255
  %322 = tail call i32 @llvm.ctpop.i32(i32 %321) #8
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  %325 = xor i8 %324, 1
  store i8 %325, i8* %19, align 1, !tbaa !2446
  %326 = xor i32 %317, 16
  %327 = xor i32 %326, %318
  %328 = lshr i32 %327, 4
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  store i8 %330, i8* %20, align 1, !tbaa !2447
  %331 = icmp eq i32 %318, 0
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %21, align 1, !tbaa !2448
  %333 = lshr i32 %318, 31
  %334 = trunc i32 %333 to i8
  store i8 %334, i8* %22, align 1, !tbaa !2449
  %335 = lshr i32 %317, 31
  %336 = xor i32 %333, %335
  %337 = add nuw nsw i32 %336, %335
  %338 = icmp eq i32 %337, 2
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %23, align 1, !tbaa !2450
  %340 = icmp ne i8 %334, 0
  %341 = xor i1 %340, %338
  %.v7 = select i1 %341, i64 13, i64 151
  %342 = add i64 %312, %.v7
  store i64 %342, i64* %24, align 8, !tbaa !2428
  br i1 %341, label %block_400715, label %block_40079f

block_40067d:                                     ; preds = %block_4006ce, %block_400660
  %343 = phi i64 [ %.pre, %block_400660 ], [ %185, %block_4006ce ]
  %344 = load i64, i64* %RBP, align 8
  %345 = add i64 %344, -4
  %346 = add i64 %343, 4
  store i64 %346, i64* %PC, align 8
  %347 = inttoptr i64 %345 to i32*
  %348 = load i32, i32* %347, align 4
  %349 = add i32 %348, -8
  %350 = icmp ult i32 %348, 8
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %18, align 1, !tbaa !2432
  %352 = and i32 %349, 255
  %353 = tail call i32 @llvm.ctpop.i32(i32 %352) #8
  %354 = trunc i32 %353 to i8
  %355 = and i8 %354, 1
  %356 = xor i8 %355, 1
  store i8 %356, i8* %19, align 1, !tbaa !2446
  %357 = xor i32 %348, %349
  %358 = lshr i32 %357, 4
  %359 = trunc i32 %358 to i8
  %360 = and i8 %359, 1
  store i8 %360, i8* %20, align 1, !tbaa !2447
  %361 = icmp eq i32 %349, 0
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %21, align 1, !tbaa !2448
  %363 = lshr i32 %349, 31
  %364 = trunc i32 %363 to i8
  store i8 %364, i8* %22, align 1, !tbaa !2449
  %365 = lshr i32 %348, 31
  %366 = xor i32 %363, %365
  %367 = add nuw nsw i32 %366, %365
  %368 = icmp eq i32 %367, 2
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %23, align 1, !tbaa !2450
  %370 = icmp ne i8 %364, 0
  %371 = xor i1 %370, %368
  %.v = select i1 %371, i64 10, i64 104
  %372 = add i64 %343, %.v
  store i64 %372, i64* %24, align 8, !tbaa !2428
  br i1 %371, label %block_400687, label %block_4006e5

block_4006e5:                                     ; preds = %block_40067d
  %373 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2112) to i32*), align 16
  %374 = sext i32 %373 to i64
  store i64 %374, i64* %RAX, align 8, !tbaa !2428
  %375 = shl nsw i64 %374, 2
  %376 = add i64 %375, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %377 = add i64 %372, 19
  store i64 %377, i64* %PC, align 8
  %378 = inttoptr i64 %376 to i32*
  store i32 8, i32* %378, align 4
  %379 = load i64, i64* %RBP, align 8
  %380 = add i64 %379, -8
  %381 = load i64, i64* %PC, align 8
  %382 = add i64 %381, 3
  store i64 %382, i64* %PC, align 8
  %383 = inttoptr i64 %380 to i32*
  %384 = load i32, i32* %383, align 4
  %385 = zext i32 %384 to i64
  %386 = shl nuw i64 %385, 32
  %387 = ashr i64 %386, 33
  %388 = trunc i32 %384 to i8
  %389 = and i8 %388, 1
  %390 = trunc i64 %387 to i32
  %391 = and i64 %387, 4294967295
  store i64 %391, i64* %RCX, align 8, !tbaa !2428
  store i8 %389, i8* %18, align 1, !tbaa !2451
  %392 = and i32 %390, 255
  %393 = tail call i32 @llvm.ctpop.i32(i32 %392) #8
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  store i8 %396, i8* %19, align 1, !tbaa !2451
  store i8 0, i8* %20, align 1, !tbaa !2451
  %397 = icmp eq i32 %390, 0
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %21, align 1, !tbaa !2451
  %399 = lshr i64 %387, 31
  %400 = trunc i64 %399 to i8
  %401 = and i8 %400, 1
  store i8 %401, i8* %22, align 1, !tbaa !2451
  store i8 0, i8* %23, align 1, !tbaa !2451
  %402 = trunc i64 %387 to i32
  %403 = add i64 %381, 9
  store i64 %403, i64* %PC, align 8
  store i32 %402, i32* %383, align 4
  %404 = load i64, i64* %RBP, align 8
  %405 = add i64 %404, -4
  %406 = load i64, i64* %PC, align 8
  %407 = add i64 %406, 7
  store i64 %407, i64* %PC, align 8
  %408 = inttoptr i64 %405 to i32*
  store i32 9, i32* %408, align 4
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400708

block_40079f:                                     ; preds = %block_400708
  store i32 -1, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056) to i32*), align 16
  %409 = add i64 %342, 12
  store i64 %409, i64* %PC, align 8
  %410 = load i64, i64* %5, align 8, !tbaa !2428
  %411 = add i64 %410, 8
  %412 = inttoptr i64 %410 to i64*
  %413 = load i64, i64* %412, align 8
  store i64 %413, i64* %RBP, align 8, !tbaa !2428
  store i64 %411, i64* %5, align 8, !tbaa !2428
  %414 = add i64 %342, 13
  store i64 %414, i64* %PC, align 8
  %415 = inttoptr i64 %411 to i64*
  %416 = load i64, i64* %415, align 8
  store i64 %416, i64* %24, align 8, !tbaa !2428
  %417 = add i64 %410, 16
  store i64 %417, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4006bd:                                     ; preds = %block_400687
  %418 = add i64 %487, 3
  store i64 %418, i64* %PC, align 8
  %419 = inttoptr i64 %.pre3 to i32*
  %420 = load i32, i32* %419, align 4
  %421 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2112) to i32*), align 16
  %422 = xor i32 %421, %420
  %423 = zext i32 %422 to i64
  store i64 %423, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  %424 = and i32 %422, 255
  %425 = tail call i32 @llvm.ctpop.i32(i32 %424) #8
  %426 = trunc i32 %425 to i8
  %427 = and i8 %426, 1
  %428 = xor i8 %427, 1
  store i8 %428, i8* %19, align 1, !tbaa !2446
  %429 = icmp eq i32 %422, 0
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %21, align 1, !tbaa !2448
  %431 = lshr i32 %422, 31
  %432 = trunc i32 %431 to i8
  store i8 %432, i8* %22, align 1, !tbaa !2449
  store i8 0, i8* %23, align 1, !tbaa !2450
  store i8 0, i8* %20, align 1, !tbaa !2447
  %433 = add i64 %487, 17
  store i64 %433, i64* %PC, align 8
  store i32 %422, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2112) to i32*), align 16
  br label %block_4006ce

block_400687:                                     ; preds = %block_40067d
  %434 = add i64 %344, -8
  %435 = add i64 %372, 3
  store i64 %435, i64* %PC, align 8
  %436 = inttoptr i64 %434 to i32*
  %437 = load i32, i32* %436, align 4
  %438 = zext i32 %437 to i64
  store i64 %438, i64* %RAX, align 8, !tbaa !2428
  %439 = add i64 %372, 7
  store i64 %439, i64* %PC, align 8
  %440 = load i32, i32* %347, align 4
  %441 = sext i32 %440 to i64
  store i64 %441, i64* %RCX, align 8, !tbaa !2428
  %442 = shl nsw i64 %441, 2
  %443 = add i64 %442, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %444 = add i64 %372, 14
  store i64 %444, i64* %PC, align 8
  %445 = inttoptr i64 %443 to i32*
  store i32 %437, i32* %445, align 4
  %446 = load i64, i64* %RBP, align 8
  %447 = add i64 %446, -4
  %448 = load i64, i64* %PC, align 8
  %449 = add i64 %448, 3
  store i64 %449, i64* %PC, align 8
  %450 = inttoptr i64 %447 to i32*
  %451 = load i32, i32* %450, align 4
  %452 = zext i32 %451 to i64
  store i64 %452, i64* %RAX, align 8, !tbaa !2428
  %453 = add i64 %448, 7
  store i64 %453, i64* %PC, align 8
  %454 = load i32, i32* %450, align 4
  %455 = sext i32 %454 to i64
  store i64 %455, i64* %RCX, align 8, !tbaa !2428
  %456 = shl nsw i64 %455, 2
  %457 = add i64 %456, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %458 = add i64 %448, 15
  store i64 %458, i64* %PC, align 8
  %459 = inttoptr i64 %457 to i32*
  %460 = load i32, i32* %459, align 4
  %461 = sext i32 %460 to i64
  store i64 %461, i64* %RCX, align 8, !tbaa !2428
  %462 = shl nsw i64 %461, 2
  %463 = add i64 %462, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %464 = add i64 %448, 22
  store i64 %464, i64* %PC, align 8
  %465 = inttoptr i64 %463 to i32*
  store i32 %451, i32* %465, align 4
  %466 = load i64, i64* %RBP, align 8
  %467 = add i64 %466, -4
  %468 = load i64, i64* %PC, align 8
  %469 = add i64 %468, 4
  store i64 %469, i64* %PC, align 8
  %470 = inttoptr i64 %467 to i32*
  %471 = load i32, i32* %470, align 4
  %472 = sext i32 %471 to i64
  store i64 %472, i64* %RCX, align 8, !tbaa !2428
  %473 = shl nsw i64 %472, 2
  %474 = add i64 %473, add (i64 ptrtoint (%seg_603020__data_type* @seg_603020__data to i64), i64 16)
  %475 = add i64 %468, 12
  store i64 %475, i64* %PC, align 8
  %476 = inttoptr i64 %474 to i32*
  %477 = load i32, i32* %476, align 4
  store i8 0, i8* %18, align 1, !tbaa !2432
  %478 = and i32 %477, 255
  %479 = tail call i32 @llvm.ctpop.i32(i32 %478) #8
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  %482 = xor i8 %481, 1
  store i8 %482, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %20, align 1, !tbaa !2447
  %483 = icmp eq i32 %477, 0
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %21, align 1, !tbaa !2448
  %485 = lshr i32 %477, 31
  %486 = trunc i32 %485 to i8
  store i8 %486, i8* %22, align 1, !tbaa !2449
  store i8 0, i8* %23, align 1, !tbaa !2450
  %.v6 = select i1 %483, i64 35, i64 18
  %487 = add i64 %468, %.v6
  store i64 %487, i64* %24, align 8, !tbaa !2428
  %.pre3 = add i64 %466, -8
  br i1 %483, label %block_400687.block_4006ce_crit_edge, label %block_4006bd

block_400687.block_4006ce_crit_edge:              ; preds = %block_400687
  %.pre4 = inttoptr i64 %.pre3 to i32*
  br label %block_4006ce
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4004e0_frame_dummy() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4004e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_4004e0_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4004e0_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4004b0___do_global_dtors_aux() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4004b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_4004b0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4004b0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6040d8_random(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @random to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401cb0___libc_csu_fini() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401cb0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_401cb0___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401cb0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401c40___libc_csu_init() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401c40;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_401c40___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401c40___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401b10;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401b10_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6040d0___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @rsenc_204() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401850;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @rsenc_204_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401850_rsenc_204(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @rsdec_204() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4004f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @rsdec_204_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4004f0_rsdec_204(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401cb4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @.term_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_401cb4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4003c8;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @10, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4003c8__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

define internal void @__mcsema_constructor() {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_401c40___libc_csu_init()
  ret void
}

define internal void @__mcsema_destructor() {
  tail call void @callback_sub_401cb0___libc_csu_fini()
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
!2451 = !{!2430, !2430, i64 0}
