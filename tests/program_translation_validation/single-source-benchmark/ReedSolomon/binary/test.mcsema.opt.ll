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

declare %struct.Memory* @sub_400910_decode_rs_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401980_encode_rs_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400440_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4004f0_rsdec_204_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400660_generate_gf_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007b0_gen_poly_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4003c8__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401850_rsenc_204_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
  %.pre = load i64, i64* %PC, align 8
  br label %block_401b2c

block_401bc5:                                     ; preds = %block_401bb3
  %47 = add i64 %237, -6101
  %48 = add i64 %237, 5
  %49 = load i64, i64* %RSP, align 8, !tbaa !2428
  %50 = add i64 %49, -8
  %51 = inttoptr i64 %50 to i64*
  store i64 %48, i64* %51, align 8
  store i64 %50, i64* %RSP, align 8, !tbaa !2428
  store i64 %47, i64* %PC, align 8, !tbaa !2428
  %52 = tail call fastcc %struct.Memory* @ext_6040d8_random(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %53 = load i64, i64* %RAX, align 8
  %54 = load i64, i64* %PC, align 8
  %55 = and i64 %53, 255
  store i64 %55, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  %56 = trunc i64 %53 to i32
  %57 = and i32 %56, 255
  %58 = tail call i32 @llvm.ctpop.i32(i32 %57) #8
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  %61 = xor i8 %60, 1
  store i8 %61, i8* %20, align 1, !tbaa !2446
  %62 = icmp eq i64 %55, 0
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  store i8 0, i8* %26, align 1, !tbaa !2447
  %64 = trunc i64 %53 to i8
  store i8 %64, i8* %CL, align 1, !tbaa !2451
  %65 = load i64, i64* %RBP, align 8
  %66 = add i64 %65, -429
  %67 = add i64 %54, 14
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %66 to i8*
  store i8 %64, i8* %68, align 1
  %69 = load i64, i64* %PC, align 8
  %70 = add i64 %69, -6120
  %71 = add i64 %69, 5
  %72 = load i64, i64* %RSP, align 8, !tbaa !2428
  %73 = add i64 %72, -8
  %74 = inttoptr i64 %73 to i64*
  store i64 %71, i64* %74, align 8
  store i64 %73, i64* %RSP, align 8, !tbaa !2428
  store i64 %70, i64* %PC, align 8, !tbaa !2428
  %75 = tail call fastcc %struct.Memory* @ext_6040d8_random(%struct.State* nonnull %0, %struct.Memory* %52)
  %76 = load i64, i64* %PC, align 8
  store i64 204, i64* %RSI, align 8, !tbaa !2428
  %77 = load i64, i64* %RAX, align 8, !tbaa !2428
  %78 = ashr i64 %77, 63
  store i64 %78, i64* %RDX, align 8, !tbaa !2428
  %79 = add i64 %76, 12
  store i64 %79, i64* %PC, align 8
  %80 = zext i64 %78 to i128
  %81 = shl nuw i128 %80, 64
  %82 = zext i64 %77 to i128
  %83 = or i128 %81, %82
  %84 = sdiv i128 %83, 204
  %85 = trunc i128 %84 to i64
  %86 = and i128 %84, 18446744073709551615
  %87 = sext i64 %85 to i128
  %88 = and i128 %87, -18446744073709551616
  %89 = or i128 %88, %86
  %90 = icmp eq i128 %84, %89
  br i1 %90, label %93, label %91

; <label>:91:                                     ; preds = %block_401bc5
  %92 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %79, %struct.Memory* %75) #9
  %.pre3 = load i64, i64* %PC, align 8
  %.pre4 = load i64, i64* %RDX, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:93:                                     ; preds = %block_401bc5
  %94 = srem i128 %83, 204
  %95 = trunc i128 %94 to i64
  store i64 %85, i64* %RAX, align 8, !tbaa !2428
  store i64 %95, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  store i8 0, i8* %20, align 1, !tbaa !2446
  store i8 0, i8* %26, align 1, !tbaa !2447
  store i8 0, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %93, %91
  %96 = phi i64 [ %.pre4, %91 ], [ %95, %93 ]
  %97 = phi i64 [ %.pre3, %91 ], [ %79, %93 ]
  %98 = phi %struct.Memory* [ %92, %91 ], [ %75, %93 ]
  %99 = load i64, i64* %RBP, align 8
  %100 = add i64 %99, -429
  %101 = add i64 %97, 6
  store i64 %101, i64* %PC, align 8
  %102 = inttoptr i64 %100 to i8*
  %103 = load i8, i8* %102, align 1
  store i8 %103, i8* %CL, align 1, !tbaa !2451
  %104 = add i64 %99, -416
  %105 = add i64 %104, %96
  %106 = add i64 %97, 13
  store i64 %106, i64* %PC, align 8
  %107 = inttoptr i64 %105 to i8*
  store i8 %103, i8* %107, align 1
  %108 = load i64, i64* %RBP, align 8
  %109 = add i64 %108, -424
  %110 = load i64, i64* %PC, align 8
  %111 = add i64 %110, 6
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
  store i8 %119, i8* %13, align 1, !tbaa !2432
  %120 = and i32 %114, 255
  %121 = tail call i32 @llvm.ctpop.i32(i32 %120) #8
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  %124 = xor i8 %123, 1
  store i8 %124, i8* %20, align 1, !tbaa !2446
  %125 = xor i32 %113, %114
  %126 = lshr i32 %125, 4
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  store i8 %128, i8* %26, align 1, !tbaa !2447
  %129 = zext i1 %117 to i8
  store i8 %129, i8* %29, align 1, !tbaa !2448
  %130 = lshr i32 %114, 31
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %32, align 1, !tbaa !2449
  %132 = lshr i32 %113, 31
  %133 = xor i32 %130, %132
  %134 = add nuw nsw i32 %133, %130
  %135 = icmp eq i32 %134, 2
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %38, align 1, !tbaa !2450
  %137 = add i64 %110, 15
  store i64 %137, i64* %PC, align 8
  store i32 %114, i32* %112, align 4
  %138 = load i64, i64* %PC, align 8
  %139 = add i64 %138, -82
  store i64 %139, i64* %PC, align 8, !tbaa !2428
  br label %block_401bb3

block_401b56:                                     ; preds = %block_401b46
  %140 = add i64 %374, -5990
  %141 = add i64 %374, 5
  %142 = load i64, i64* %RSP, align 8, !tbaa !2428
  %143 = add i64 %142, -8
  %144 = inttoptr i64 %143 to i64*
  store i64 %141, i64* %144, align 8
  store i64 %143, i64* %RSP, align 8, !tbaa !2428
  store i64 %140, i64* %PC, align 8, !tbaa !2428
  %145 = tail call fastcc %struct.Memory* @ext_6040d8_random(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %146 = load i64, i64* %RAX, align 8
  %147 = load i64, i64* %PC, align 8
  %148 = and i64 %146, 255
  store i64 %148, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  %149 = trunc i64 %146 to i32
  %150 = and i32 %149, 255
  %151 = tail call i32 @llvm.ctpop.i32(i32 %150) #8
  %152 = trunc i32 %151 to i8
  %153 = and i8 %152, 1
  %154 = xor i8 %153, 1
  store i8 %154, i8* %20, align 1, !tbaa !2446
  %155 = icmp eq i64 %148, 0
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  store i8 0, i8* %26, align 1, !tbaa !2447
  %157 = trunc i64 %146 to i8
  store i8 %157, i8* %CL, align 1, !tbaa !2451
  %158 = load i64, i64* %RBP, align 8
  %159 = add i64 %158, -424
  %160 = add i64 %147, 15
  store i64 %160, i64* %PC, align 8
  %161 = inttoptr i64 %159 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %RAX, align 8, !tbaa !2428
  %164 = add i64 %158, -208
  %165 = add i64 %164, %163
  %166 = add i64 %147, 22
  store i64 %166, i64* %PC, align 8
  %167 = inttoptr i64 %165 to i8*
  store i8 %157, i8* %167, align 1
  %168 = load i64, i64* %RBP, align 8
  %169 = add i64 %168, -424
  %170 = load i64, i64* %PC, align 8
  %171 = add i64 %170, 6
  store i64 %171, i64* %PC, align 8
  %172 = inttoptr i64 %169 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = add i32 %173, 1
  %175 = zext i32 %174 to i64
  store i64 %175, i64* %RAX, align 8, !tbaa !2428
  %176 = icmp eq i32 %173, -1
  %177 = icmp eq i32 %174, 0
  %178 = or i1 %176, %177
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %13, align 1, !tbaa !2432
  %180 = and i32 %174, 255
  %181 = tail call i32 @llvm.ctpop.i32(i32 %180) #8
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  %184 = xor i8 %183, 1
  store i8 %184, i8* %20, align 1, !tbaa !2446
  %185 = xor i32 %173, %174
  %186 = lshr i32 %185, 4
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  store i8 %188, i8* %26, align 1, !tbaa !2447
  %189 = zext i1 %177 to i8
  store i8 %189, i8* %29, align 1, !tbaa !2448
  %190 = lshr i32 %174, 31
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %32, align 1, !tbaa !2449
  %192 = lshr i32 %173, 31
  %193 = xor i32 %190, %192
  %194 = add nuw nsw i32 %193, %190
  %195 = icmp eq i32 %194, 2
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %38, align 1, !tbaa !2450
  %197 = add i64 %170, 15
  store i64 %197, i64* %PC, align 8
  store i32 %174, i32* %172, align 4
  %198 = load i64, i64* %PC, align 8
  %199 = add i64 %198, -58
  store i64 %199, i64* %PC, align 8, !tbaa !2428
  br label %block_401b46

block_401bb3:                                     ; preds = %block_401b85, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit
  %200 = phi i64 [ %.pre2, %block_401b85 ], [ %139, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit ]
  %MEMORY.0 = phi %struct.Memory* [ %389, %block_401b85 ], [ %98, %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit ]
  %201 = load i64, i64* %RBP, align 8
  %202 = add i64 %201, -424
  %203 = add i64 %200, 6
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %202 to i32*
  %205 = load i32, i32* %204, align 4
  %206 = zext i32 %205 to i64
  store i64 %206, i64* %RAX, align 8, !tbaa !2428
  %207 = add i64 %201, -428
  %208 = add i64 %200, 12
  store i64 %208, i64* %PC, align 8
  %209 = inttoptr i64 %207 to i32*
  %210 = load i32, i32* %209, align 4
  %211 = sub i32 %205, %210
  %212 = icmp ult i32 %205, %210
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %13, align 1, !tbaa !2432
  %214 = and i32 %211, 255
  %215 = tail call i32 @llvm.ctpop.i32(i32 %214) #8
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  %218 = xor i8 %217, 1
  store i8 %218, i8* %20, align 1, !tbaa !2446
  %219 = xor i32 %210, %205
  %220 = xor i32 %219, %211
  %221 = lshr i32 %220, 4
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  store i8 %223, i8* %26, align 1, !tbaa !2447
  %224 = icmp eq i32 %211, 0
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %29, align 1, !tbaa !2448
  %226 = lshr i32 %211, 31
  %227 = trunc i32 %226 to i8
  store i8 %227, i8* %32, align 1, !tbaa !2449
  %228 = lshr i32 %205, 31
  %229 = lshr i32 %210, 31
  %230 = xor i32 %229, %228
  %231 = xor i32 %226, %228
  %232 = add nuw nsw i32 %231, %230
  %233 = icmp eq i32 %232, 2
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %38, align 1, !tbaa !2450
  %235 = icmp ne i8 %227, 0
  %236 = xor i1 %235, %233
  %.v6 = select i1 %236, i64 18, i64 87
  %237 = add i64 %200, %.v6
  store i64 %237, i64* %PC, align 8, !tbaa !2428
  br i1 %236, label %block_401bc5, label %block_401c0a

block_401b3c:                                     ; preds = %block_401b2c
  %238 = add i64 %242, -424
  %239 = add i64 %271, 10
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %238 to i32*
  store i32 0, i32* %240, align 4
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_401b46

block_401b2c:                                     ; preds = %block_401c0a, %block_401b10
  %241 = phi i64 [ %.pre, %block_401b10 ], [ %311, %block_401c0a ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_401b10 ], [ %279, %block_401c0a ]
  %242 = load i64, i64* %RBP, align 8
  %243 = add i64 %242, -420
  %244 = add i64 %241, 10
  store i64 %244, i64* %PC, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = add i32 %246, -150000
  %248 = icmp ult i32 %246, 150000
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %13, align 1, !tbaa !2432
  %250 = and i32 %247, 255
  %251 = tail call i32 @llvm.ctpop.i32(i32 %250) #8
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  %254 = xor i8 %253, 1
  store i8 %254, i8* %20, align 1, !tbaa !2446
  %255 = xor i32 %246, 16
  %256 = xor i32 %255, %247
  %257 = lshr i32 %256, 4
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  store i8 %259, i8* %26, align 1, !tbaa !2447
  %260 = icmp eq i32 %247, 0
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %29, align 1, !tbaa !2448
  %262 = lshr i32 %247, 31
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %32, align 1, !tbaa !2449
  %264 = lshr i32 %246, 31
  %265 = xor i32 %262, %264
  %266 = add nuw nsw i32 %265, %264
  %267 = icmp eq i32 %266, 2
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %38, align 1, !tbaa !2450
  %269 = icmp ne i8 %263, 0
  %270 = xor i1 %269, %267
  %.v = select i1 %270, i64 16, i64 261
  %271 = add i64 %241, %.v
  store i64 %271, i64* %PC, align 8, !tbaa !2428
  br i1 %270, label %block_401b3c, label %block_401c31

block_401c0a:                                     ; preds = %block_401bb3
  %272 = add i64 %201, -416
  store i64 %272, i64* %RSI, align 8, !tbaa !2428
  %273 = add i64 %201, -208
  store i64 %273, i64* %RDI, align 8, !tbaa !2428
  %274 = add i64 %237, -5914
  %275 = add i64 %237, 19
  %276 = load i64, i64* %RSP, align 8, !tbaa !2428
  %277 = add i64 %276, -8
  %278 = inttoptr i64 %277 to i64*
  store i64 %275, i64* %278, align 8
  store i64 %277, i64* %RSP, align 8, !tbaa !2428
  store i64 %274, i64* %PC, align 8, !tbaa !2428
  %279 = tail call %struct.Memory* @sub_4004f0_rsdec_204_renamed_(%struct.State* nonnull %0, i64 %274, %struct.Memory* %MEMORY.0)
  %280 = load i64, i64* %RBP, align 8
  %281 = add i64 %280, -420
  %282 = load i64, i64* %PC, align 8
  %283 = add i64 %282, 6
  store i64 %283, i64* %PC, align 8
  %284 = inttoptr i64 %281 to i32*
  %285 = load i32, i32* %284, align 4
  %286 = add i32 %285, 1
  %287 = zext i32 %286 to i64
  store i64 %287, i64* %RAX, align 8, !tbaa !2428
  %288 = icmp eq i32 %285, -1
  %289 = icmp eq i32 %286, 0
  %290 = or i1 %288, %289
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %13, align 1, !tbaa !2432
  %292 = and i32 %286, 255
  %293 = tail call i32 @llvm.ctpop.i32(i32 %292) #8
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %20, align 1, !tbaa !2446
  %297 = xor i32 %285, %286
  %298 = lshr i32 %297, 4
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  store i8 %300, i8* %26, align 1, !tbaa !2447
  %301 = zext i1 %289 to i8
  store i8 %301, i8* %29, align 1, !tbaa !2448
  %302 = lshr i32 %286, 31
  %303 = trunc i32 %302 to i8
  store i8 %303, i8* %32, align 1, !tbaa !2449
  %304 = lshr i32 %285, 31
  %305 = xor i32 %302, %304
  %306 = add nuw nsw i32 %305, %302
  %307 = icmp eq i32 %306, 2
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %38, align 1, !tbaa !2450
  %309 = add i64 %282, 15
  store i64 %309, i64* %PC, align 8
  store i32 %286, i32* %284, align 4
  %310 = load i64, i64* %PC, align 8
  %311 = add i64 %310, -256
  store i64 %311, i64* %PC, align 8, !tbaa !2428
  br label %block_401b2c

block_401c31:                                     ; preds = %block_401b2c
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %312 = load i64, i64* %RSP, align 8
  %313 = add i64 %312, 432
  store i64 %313, i64* %RSP, align 8, !tbaa !2428
  %314 = icmp ugt i64 %312, -433
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %13, align 1, !tbaa !2432
  %316 = trunc i64 %313 to i32
  %317 = and i32 %316, 255
  %318 = tail call i32 @llvm.ctpop.i32(i32 %317) #8
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  %321 = xor i8 %320, 1
  store i8 %321, i8* %20, align 1, !tbaa !2446
  %322 = xor i64 %312, 16
  %323 = xor i64 %322, %313
  %324 = lshr i64 %323, 4
  %325 = trunc i64 %324 to i8
  %326 = and i8 %325, 1
  store i8 %326, i8* %26, align 1, !tbaa !2447
  %327 = icmp eq i64 %313, 0
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %29, align 1, !tbaa !2448
  %329 = lshr i64 %313, 63
  %330 = trunc i64 %329 to i8
  store i8 %330, i8* %32, align 1, !tbaa !2449
  %331 = lshr i64 %312, 63
  %332 = xor i64 %329, %331
  %333 = add nuw nsw i64 %332, %329
  %334 = icmp eq i64 %333, 2
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %38, align 1, !tbaa !2450
  %336 = add i64 %271, 10
  store i64 %336, i64* %PC, align 8
  %337 = add i64 %312, 440
  %338 = inttoptr i64 %313 to i64*
  %339 = load i64, i64* %338, align 8
  store i64 %339, i64* %RBP, align 8, !tbaa !2428
  store i64 %337, i64* %RSP, align 8, !tbaa !2428
  %340 = add i64 %271, 11
  store i64 %340, i64* %PC, align 8
  %341 = inttoptr i64 %337 to i64*
  %342 = load i64, i64* %341, align 8
  store i64 %342, i64* %PC, align 8, !tbaa !2428
  %343 = add i64 %312, 448
  store i64 %343, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_401b46:                                     ; preds = %block_401b3c, %block_401b56
  %344 = phi i64 [ %.pre1, %block_401b3c ], [ %199, %block_401b56 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_401b3c ], [ %145, %block_401b56 ]
  %345 = load i64, i64* %RBP, align 8
  %346 = add i64 %345, -424
  %347 = add i64 %344, 10
  store i64 %347, i64* %PC, align 8
  %348 = inttoptr i64 %346 to i32*
  %349 = load i32, i32* %348, align 4
  %350 = add i32 %349, -188
  %351 = icmp ult i32 %349, 188
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %13, align 1, !tbaa !2432
  %353 = and i32 %350, 255
  %354 = tail call i32 @llvm.ctpop.i32(i32 %353) #8
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  %357 = xor i8 %356, 1
  store i8 %357, i8* %20, align 1, !tbaa !2446
  %358 = xor i32 %349, 16
  %359 = xor i32 %358, %350
  %360 = lshr i32 %359, 4
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  store i8 %362, i8* %26, align 1, !tbaa !2447
  %363 = icmp eq i32 %350, 0
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %29, align 1, !tbaa !2448
  %365 = lshr i32 %350, 31
  %366 = trunc i32 %365 to i8
  store i8 %366, i8* %32, align 1, !tbaa !2449
  %367 = lshr i32 %349, 31
  %368 = xor i32 %365, %367
  %369 = add nuw nsw i32 %368, %367
  %370 = icmp eq i32 %369, 2
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %38, align 1, !tbaa !2450
  %372 = icmp ne i8 %366, 0
  %373 = xor i1 %372, %370
  %.v5 = select i1 %373, i64 16, i64 63
  %374 = add i64 %344, %.v5
  store i64 %374, i64* %PC, align 8, !tbaa !2428
  br i1 %373, label %block_401b56, label %block_401b85

block_401b85:                                     ; preds = %block_401b46
  %375 = add i64 %345, -208
  store i64 %375, i64* %RSI, align 8, !tbaa !2428
  %376 = add i64 %345, -416
  store i64 %376, i64* %RDI, align 8, !tbaa !2428
  %377 = add i64 %374, -821
  %378 = add i64 %374, 19
  %379 = load i64, i64* %RSP, align 8, !tbaa !2428
  %380 = add i64 %379, -8
  %381 = inttoptr i64 %380 to i64*
  store i64 %378, i64* %381, align 8
  store i64 %380, i64* %RSP, align 8, !tbaa !2428
  store i64 %377, i64* %PC, align 8, !tbaa !2428
  %382 = tail call %struct.Memory* @sub_401850_rsenc_204_renamed_(%struct.State* nonnull %0, i64 %377, %struct.Memory* %MEMORY.2)
  %383 = load i64, i64* %PC, align 8
  %384 = add i64 %383, -6056
  %385 = add i64 %383, 5
  %386 = load i64, i64* %RSP, align 8, !tbaa !2428
  %387 = add i64 %386, -8
  %388 = inttoptr i64 %387 to i64*
  store i64 %385, i64* %388, align 8
  store i64 %387, i64* %RSP, align 8, !tbaa !2428
  store i64 %384, i64* %PC, align 8, !tbaa !2428
  %389 = tail call fastcc %struct.Memory* @ext_6040d8_random(%struct.State* nonnull %0, %struct.Memory* %382)
  %390 = load i64, i64* %RAX, align 8
  %391 = load i64, i64* %PC, align 8
  %392 = and i64 %390, 127
  store i64 %392, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  %393 = trunc i64 %392 to i32
  %394 = tail call i32 @llvm.ctpop.i32(i32 %393) #8
  %395 = trunc i32 %394 to i8
  %396 = and i8 %395, 1
  %397 = xor i8 %396, 1
  store i8 %397, i8* %20, align 1, !tbaa !2446
  %398 = icmp eq i64 %392, 0
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %29, align 1, !tbaa !2448
  store i8 0, i8* %32, align 1, !tbaa !2449
  store i8 0, i8* %38, align 1, !tbaa !2450
  store i8 0, i8* %26, align 1, !tbaa !2447
  store i64 %392, i64* %RCX, align 8, !tbaa !2428
  %400 = load i64, i64* %RBP, align 8
  %401 = add i64 %400, -428
  %402 = add i64 %391, 12
  store i64 %402, i64* %PC, align 8
  %403 = inttoptr i64 %401 to i32*
  store i32 %393, i32* %403, align 4
  %404 = load i64, i64* %RBP, align 8
  %405 = add i64 %404, -424
  %406 = load i64, i64* %PC, align 8
  %407 = add i64 %406, 10
  store i64 %407, i64* %PC, align 8
  %408 = inttoptr i64 %405 to i32*
  store i32 0, i32* %408, align 4
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
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_4007d1

block_40087a:                                     ; preds = %block_40085f, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1
  %24 = phi i64 [ %.pre6, %block_40085f ], [ %278, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_40085f ], [ %248, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
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
  store i8 %33, i8* %16, align 1, !tbaa !2432
  %34 = and i32 %30, 255
  %35 = tail call i32 @llvm.ctpop.i32(i32 %34) #8
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  %38 = xor i8 %37, 1
  store i8 %38, i8* %17, align 1, !tbaa !2446
  %39 = xor i32 %29, 16
  %40 = xor i32 %30, %39
  %41 = lshr i32 %40, 4
  %42 = trunc i32 %41 to i8
  %43 = and i8 %42, 1
  store i8 %43, i8* %18, align 1, !tbaa !2447
  %44 = icmp eq i32 %30, 0
  %45 = zext i1 %44 to i8
  store i8 %45, i8* %19, align 1, !tbaa !2448
  %46 = lshr i32 %30, 31
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %20, align 1, !tbaa !2449
  %48 = lshr i32 %29, 31
  %49 = xor i32 %46, %48
  %50 = xor i32 %46, 1
  %51 = add nuw nsw i32 %49, %50
  %52 = icmp eq i32 %51, 2
  %53 = zext i1 %52 to i8
  store i8 %53, i8* %21, align 1, !tbaa !2450
  %54 = add i64 %24, 14
  store i64 %54, i64* %PC, align 8
  store i32 %30, i32* %28, align 4
  %55 = load i64, i64* %PC, align 8
  %56 = add i64 %55, -149
  store i64 %56, i64* %PC, align 8, !tbaa !2428
  br label %block_4007f3

block_4008d5:                                     ; preds = %block_4008ce, %block_4008df
  %57 = phi i64 [ %.pre10, %block_4008ce ], [ %332, %block_4008df ]
  %58 = load i64, i64* %RBP, align 8
  %59 = add i64 %58, -4
  %60 = add i64 %57, 4
  store i64 %60, i64* %PC, align 8
  %61 = inttoptr i64 %59 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = add i32 %62, -16
  %64 = icmp ult i32 %62, 16
  %65 = zext i1 %64 to i8
  store i8 %65, i8* %16, align 1, !tbaa !2432
  %66 = and i32 %63, 255
  %67 = tail call i32 @llvm.ctpop.i32(i32 %66) #8
  %68 = trunc i32 %67 to i8
  %69 = and i8 %68, 1
  %70 = xor i8 %69, 1
  store i8 %70, i8* %17, align 1, !tbaa !2446
  %71 = xor i32 %62, 16
  %72 = xor i32 %71, %63
  %73 = lshr i32 %72, 4
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 1
  store i8 %75, i8* %18, align 1, !tbaa !2447
  %76 = icmp eq i32 %63, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %19, align 1, !tbaa !2448
  %78 = lshr i32 %63, 31
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %20, align 1, !tbaa !2449
  %80 = lshr i32 %62, 31
  %81 = xor i32 %78, %80
  %82 = add nuw nsw i32 %81, %80
  %83 = icmp eq i32 %82, 2
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %21, align 1, !tbaa !2450
  %85 = icmp ne i8 %79, 0
  %86 = xor i1 %85, %83
  %.demorgan13 = or i1 %76, %86
  %.v14 = select i1 %.demorgan13, i64 10, i64 54
  %87 = add i64 %57, %.v14
  store i64 %87, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan13, label %block_4008df, label %block_40090b

block_4007f3:                                     ; preds = %block_4007db, %block_40087a
  %88 = phi i64 [ %.pre2, %block_4007db ], [ %56, %block_40087a ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.3, %block_4007db ], [ %MEMORY.0, %block_40087a ]
  %89 = load i64, i64* %RBP, align 8
  %90 = add i64 %89, -8
  %91 = add i64 %88, 4
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %90 to i32*
  %93 = load i32, i32* %92, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %94 = and i32 %93, 255
  %95 = tail call i32 @llvm.ctpop.i32(i32 %94) #8
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  %98 = xor i8 %97, 1
  store i8 %98, i8* %17, align 1, !tbaa !2446
  store i8 0, i8* %18, align 1, !tbaa !2447
  %99 = icmp eq i32 %93, 0
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %19, align 1, !tbaa !2448
  %101 = lshr i32 %93, 31
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %21, align 1, !tbaa !2450
  %103 = icmp ne i8 %102, 0
  %104 = or i1 %99, %103
  %.v11 = select i1 %104, i64 154, i64 10
  %105 = add i64 %88, %.v11
  store i64 %105, i64* %PC, align 8, !tbaa !2428
  br i1 %104, label %block_40088d, label %block_4007fd

block_4007d1:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_4007b0
  %106 = phi i64 [ %.pre, %block_4007b0 ], [ %442, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %MEMORY.3 = phi %struct.Memory* [ %2, %block_4007b0 ], [ %405, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %107 = load i64, i64* %RBP, align 8
  %108 = add i64 %107, -4
  %109 = add i64 %106, 4
  store i64 %109, i64* %PC, align 8
  %110 = inttoptr i64 %108 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = add i32 %111, -16
  %113 = icmp ult i32 %111, 16
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %16, align 1, !tbaa !2432
  %115 = and i32 %112, 255
  %116 = tail call i32 @llvm.ctpop.i32(i32 %115) #8
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  %119 = xor i8 %118, 1
  store i8 %119, i8* %17, align 1, !tbaa !2446
  %120 = xor i32 %111, 16
  %121 = xor i32 %120, %112
  %122 = lshr i32 %121, 4
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  store i8 %124, i8* %18, align 1, !tbaa !2447
  %125 = icmp eq i32 %112, 0
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %19, align 1, !tbaa !2448
  %127 = lshr i32 %112, 31
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %20, align 1, !tbaa !2449
  %129 = lshr i32 %111, 31
  %130 = xor i32 %127, %129
  %131 = add nuw nsw i32 %130, %129
  %132 = icmp eq i32 %131, 2
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %21, align 1, !tbaa !2450
  %134 = icmp ne i8 %128, 0
  %135 = xor i1 %134, %132
  %.demorgan = or i1 %125, %135
  %.v = select i1 %.demorgan, i64 10, i64 253
  %136 = add i64 %106, %.v
  store i64 %136, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_4007db, label %block_4008ce

block_40080f:                                     ; preds = %block_4007fd
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %137 = add i64 %507, 8
  store i64 %137, i64* %PC, align 8
  %138 = load i32, i32* %92, align 4
  %139 = add i32 %138, -1
  %140 = zext i32 %139 to i64
  store i64 %140, i64* %RCX, align 8, !tbaa !2428
  %141 = icmp eq i32 %138, 0
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %16, align 1, !tbaa !2432
  %143 = and i32 %139, 255
  %144 = tail call i32 @llvm.ctpop.i32(i32 %143) #8
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  %147 = xor i8 %146, 1
  store i8 %147, i8* %17, align 1, !tbaa !2446
  %148 = xor i32 %138, %139
  %149 = lshr i32 %148, 4
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  store i8 %151, i8* %18, align 1, !tbaa !2447
  %152 = icmp eq i32 %139, 0
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %19, align 1, !tbaa !2448
  %154 = lshr i32 %139, 31
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %20, align 1, !tbaa !2449
  %156 = lshr i32 %138, 31
  %157 = xor i32 %154, %156
  %158 = add nuw nsw i32 %157, %156
  %159 = icmp eq i32 %158, 2
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %21, align 1, !tbaa !2450
  %161 = sext i32 %139 to i64
  store i64 %161, i64* %RDX, align 8, !tbaa !2428
  %162 = shl nsw i64 %161, 2
  %163 = add i64 %162, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %164 = add i64 %507, 21
  store i64 %164, i64* %PC, align 8
  %165 = inttoptr i64 %163 to i32*
  %166 = load i32, i32* %165, align 4
  %167 = zext i32 %166 to i64
  store i64 %167, i64* %RCX, align 8, !tbaa !2428
  %168 = add i64 %507, 25
  store i64 %168, i64* %PC, align 8
  %169 = load i32, i32* %92, align 4
  %170 = sext i32 %169 to i64
  store i64 %170, i64* %RDX, align 8, !tbaa !2428
  %171 = shl nsw i64 %170, 2
  %172 = add i64 %171, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %173 = add i64 %507, 33
  store i64 %173, i64* %PC, align 8
  %174 = inttoptr i64 %172 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %RDX, align 8, !tbaa !2428
  %177 = shl nsw i64 %176, 2
  %178 = add i64 %177, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %179 = add i64 %507, 40
  store i64 %179, i64* %PC, align 8
  %180 = inttoptr i64 %178 to i32*
  %181 = load i32, i32* %180, align 4
  %182 = zext i32 %181 to i64
  store i64 %182, i64* %RSI, align 8, !tbaa !2428
  %183 = add i64 %89, -4
  %184 = add i64 %507, 43
  store i64 %184, i64* %PC, align 8
  %185 = inttoptr i64 %183 to i32*
  %186 = load i32, i32* %185, align 4
  %187 = add i32 %186, %181
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RSI, align 8, !tbaa !2428
  %189 = icmp ult i32 %187, %181
  %190 = icmp ult i32 %187, %186
  %191 = or i1 %189, %190
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %16, align 1, !tbaa !2432
  %193 = and i32 %187, 255
  %194 = tail call i32 @llvm.ctpop.i32(i32 %193) #8
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  %197 = xor i8 %196, 1
  store i8 %197, i8* %17, align 1, !tbaa !2446
  %198 = xor i32 %186, %181
  %199 = xor i32 %198, %187
  %200 = lshr i32 %199, 4
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  store i8 %202, i8* %18, align 1, !tbaa !2447
  %203 = icmp eq i32 %187, 0
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %19, align 1, !tbaa !2448
  %205 = lshr i32 %187, 31
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %20, align 1, !tbaa !2449
  %207 = lshr i32 %181, 31
  %208 = lshr i32 %186, 31
  %209 = xor i32 %205, %207
  %210 = xor i32 %205, %208
  %211 = add nuw nsw i32 %209, %210
  %212 = icmp eq i32 %211, 2
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %21, align 1, !tbaa !2450
  %214 = load i64, i64* %RBP, align 8
  %215 = add i64 %214, -12
  %216 = load i32, i32* %EAX, align 4
  %217 = add i64 %507, 46
  store i64 %217, i64* %PC, align 8
  %218 = inttoptr i64 %215 to i32*
  store i32 %216, i32* %218, align 4
  %219 = load i32, i32* %ESI, align 4
  %220 = zext i32 %219 to i64
  %221 = load i64, i64* %PC, align 8
  store i64 %220, i64* %RAX, align 8, !tbaa !2428
  %222 = sext i32 %219 to i64
  %223 = lshr i64 %222, 32
  store i64 %223, i64* %22, align 8, !tbaa !2428
  %224 = load i64, i64* %RBP, align 8
  %225 = add i64 %224, -12
  %226 = add i64 %221, 6
  store i64 %226, i64* %PC, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = zext i32 %228 to i64
  store i64 %229, i64* %RSI, align 8, !tbaa !2428
  %230 = add i64 %221, 8
  store i64 %230, i64* %PC, align 8
  %231 = sext i32 %228 to i64
  %232 = shl nuw i64 %223, 32
  %233 = or i64 %232, %220
  %234 = sdiv i64 %233, %231
  %235 = shl i64 %234, 32
  %236 = ashr exact i64 %235, 32
  %237 = icmp eq i64 %234, %236
  br i1 %237, label %240, label %238

; <label>:238:                                    ; preds = %block_40080f
  %239 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %230, %struct.Memory* %MEMORY.2) #9
  %.pre3 = load i32, i32* %EDX, align 4
  %.pre4 = load i64, i64* %PC, align 8
  %.pre5 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:240:                                    ; preds = %block_40080f
  %241 = srem i64 %233, %231
  %242 = and i64 %234, 4294967295
  store i64 %242, i64* %23, align 8, !tbaa !2428
  %243 = and i64 %241, 4294967295
  store i64 %243, i64* %22, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %17, align 1, !tbaa !2446
  store i8 0, i8* %18, align 1, !tbaa !2447
  store i8 0, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %21, align 1, !tbaa !2450
  %244 = trunc i64 %241 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %240, %238
  %245 = phi i64 [ %.pre5, %238 ], [ %224, %240 ]
  %246 = phi i64 [ %.pre4, %238 ], [ %230, %240 ]
  %247 = phi i32 [ %.pre3, %238 ], [ %244, %240 ]
  %248 = phi %struct.Memory* [ %239, %238 ], [ %MEMORY.2, %240 ]
  %249 = sext i32 %247 to i64
  store i64 %249, i64* %RDI, align 8, !tbaa !2428
  %250 = load i64, i64* %RCX, align 8
  %251 = shl nsw i64 %249, 2
  %252 = add i64 %251, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %253 = add i64 %246, 10
  store i64 %253, i64* %PC, align 8
  %254 = trunc i64 %250 to i32
  %255 = inttoptr i64 %252 to i32*
  %256 = load i32, i32* %255, align 4
  %257 = xor i32 %256, %254
  %258 = zext i32 %257 to i64
  store i64 %258, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  %259 = and i32 %257, 255
  %260 = tail call i32 @llvm.ctpop.i32(i32 %259) #8
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  %263 = xor i8 %262, 1
  store i8 %263, i8* %17, align 1, !tbaa !2446
  %264 = icmp eq i32 %257, 0
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %19, align 1, !tbaa !2448
  %266 = lshr i32 %257, 31
  %267 = trunc i32 %266 to i8
  store i8 %267, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %21, align 1, !tbaa !2450
  store i8 0, i8* %18, align 1, !tbaa !2447
  %268 = add i64 %245, -8
  %269 = add i64 %246, 14
  store i64 %269, i64* %PC, align 8
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  store i64 %272, i64* %RDI, align 8, !tbaa !2428
  %273 = shl nsw i64 %272, 2
  %274 = add i64 %273, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %275 = add i64 %246, 21
  store i64 %275, i64* %PC, align 8
  %276 = inttoptr i64 %274 to i32*
  store i32 %257, i32* %276, align 4
  %277 = load i64, i64* %PC, align 8
  %278 = add i64 %277, 32
  store i64 %278, i64* %PC, align 8, !tbaa !2428
  br label %block_40087a

block_4008df:                                     ; preds = %block_4008d5
  %279 = add i64 %87, 4
  store i64 %279, i64* %PC, align 8
  %280 = load i32, i32* %61, align 4
  %281 = sext i32 %280 to i64
  store i64 %281, i64* %RAX, align 8, !tbaa !2428
  %282 = shl nsw i64 %281, 2
  %283 = add i64 %282, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %284 = add i64 %87, 12
  store i64 %284, i64* %PC, align 8
  %285 = inttoptr i64 %283 to i32*
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  store i64 %287, i64* %RAX, align 8, !tbaa !2428
  %288 = shl nsw i64 %287, 2
  %289 = add i64 %288, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %290 = add i64 %87, 19
  store i64 %290, i64* %PC, align 8
  %291 = inttoptr i64 %289 to i32*
  %292 = load i32, i32* %291, align 4
  %293 = zext i32 %292 to i64
  store i64 %293, i64* %RCX, align 8, !tbaa !2428
  %294 = add i64 %87, 23
  store i64 %294, i64* %PC, align 8
  %295 = load i32, i32* %61, align 4
  %296 = sext i32 %295 to i64
  store i64 %296, i64* %RAX, align 8, !tbaa !2428
  %297 = shl nsw i64 %296, 2
  %298 = add i64 %297, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %299 = add i64 %87, 30
  store i64 %299, i64* %PC, align 8
  %300 = inttoptr i64 %298 to i32*
  store i32 %292, i32* %300, align 4
  %301 = load i64, i64* %RBP, align 8
  %302 = add i64 %301, -4
  %303 = load i64, i64* %PC, align 8
  %304 = add i64 %303, 3
  store i64 %304, i64* %PC, align 8
  %305 = inttoptr i64 %302 to i32*
  %306 = load i32, i32* %305, align 4
  %307 = add i32 %306, 1
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %RAX, align 8, !tbaa !2428
  %309 = icmp eq i32 %306, -1
  %310 = icmp eq i32 %307, 0
  %311 = or i1 %309, %310
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %16, align 1, !tbaa !2432
  %313 = and i32 %307, 255
  %314 = tail call i32 @llvm.ctpop.i32(i32 %313) #8
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  store i8 %317, i8* %17, align 1, !tbaa !2446
  %318 = xor i32 %306, %307
  %319 = lshr i32 %318, 4
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  store i8 %321, i8* %18, align 1, !tbaa !2447
  %322 = zext i1 %310 to i8
  store i8 %322, i8* %19, align 1, !tbaa !2448
  %323 = lshr i32 %307, 31
  %324 = trunc i32 %323 to i8
  store i8 %324, i8* %20, align 1, !tbaa !2449
  %325 = lshr i32 %306, 31
  %326 = xor i32 %323, %325
  %327 = add nuw nsw i32 %326, %323
  %328 = icmp eq i32 %327, 2
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %21, align 1, !tbaa !2450
  %330 = add i64 %303, 9
  store i64 %330, i64* %PC, align 8
  store i32 %307, i32* %305, align 4
  %331 = load i64, i64* %PC, align 8
  %332 = add i64 %331, -49
  store i64 %332, i64* %PC, align 8, !tbaa !2428
  br label %block_4008d5

block_4008ce:                                     ; preds = %block_4007d1
  %333 = add i64 %136, 7
  store i64 %333, i64* %PC, align 8
  store i32 0, i32* %110, align 4
  %.pre10 = load i64, i64* %PC, align 8
  br label %block_4008d5

block_40088d:                                     ; preds = %block_4007f3
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %334 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104) to i32*), align 16
  %335 = sext i32 %334 to i64
  store i64 %335, i64* %RCX, align 8, !tbaa !2428
  %336 = shl nsw i64 %335, 2
  %337 = add i64 %336, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %338 = add i64 %105, 20
  store i64 %338, i64* %PC, align 8
  %339 = inttoptr i64 %337 to i32*
  %340 = load i32, i32* %339, align 4
  %341 = zext i32 %340 to i64
  store i64 %341, i64* %RDX, align 8, !tbaa !2428
  %342 = add i64 %89, -4
  %343 = add i64 %105, 23
  store i64 %343, i64* %PC, align 8
  %344 = inttoptr i64 %342 to i32*
  %345 = load i32, i32* %344, align 4
  %346 = add i32 %345, %340
  %347 = zext i32 %346 to i64
  store i64 %347, i64* %RDX, align 8, !tbaa !2428
  %348 = icmp ult i32 %346, %340
  %349 = icmp ult i32 %346, %345
  %350 = or i1 %348, %349
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %16, align 1, !tbaa !2432
  %352 = and i32 %346, 255
  %353 = tail call i32 @llvm.ctpop.i32(i32 %352) #8
  %354 = trunc i32 %353 to i8
  %355 = and i8 %354, 1
  %356 = xor i8 %355, 1
  store i8 %356, i8* %17, align 1, !tbaa !2446
  %357 = xor i32 %345, %340
  %358 = xor i32 %357, %346
  %359 = lshr i32 %358, 4
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  store i8 %361, i8* %18, align 1, !tbaa !2447
  %362 = icmp eq i32 %346, 0
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %19, align 1, !tbaa !2448
  %364 = lshr i32 %346, 31
  %365 = trunc i32 %364 to i8
  store i8 %365, i8* %20, align 1, !tbaa !2449
  %366 = lshr i32 %340, 31
  %367 = lshr i32 %345, 31
  %368 = xor i32 %364, %366
  %369 = xor i32 %364, %367
  %370 = add nuw nsw i32 %368, %369
  %371 = icmp eq i32 %370, 2
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %21, align 1, !tbaa !2450
  %373 = add i64 %89, -16
  %374 = add i64 %105, 26
  store i64 %374, i64* %PC, align 8
  %375 = inttoptr i64 %373 to i32*
  store i32 255, i32* %375, align 4
  %376 = load i32, i32* %EDX, align 4
  %377 = zext i32 %376 to i64
  %378 = load i64, i64* %PC, align 8
  store i64 %377, i64* %RAX, align 8, !tbaa !2428
  %379 = sext i32 %376 to i64
  %380 = lshr i64 %379, 32
  store i64 %380, i64* %22, align 8, !tbaa !2428
  %381 = load i64, i64* %RBP, align 8
  %382 = add i64 %381, -16
  %383 = add i64 %378, 6
  store i64 %383, i64* %PC, align 8
  %384 = inttoptr i64 %382 to i32*
  %385 = load i32, i32* %384, align 4
  %386 = zext i32 %385 to i64
  store i64 %386, i64* %RSI, align 8, !tbaa !2428
  %387 = add i64 %378, 8
  store i64 %387, i64* %PC, align 8
  %388 = sext i32 %385 to i64
  %389 = shl nuw i64 %380, 32
  %390 = or i64 %389, %377
  %391 = sdiv i64 %390, %388
  %392 = shl i64 %391, 32
  %393 = ashr exact i64 %392, 32
  %394 = icmp eq i64 %391, %393
  br i1 %394, label %397, label %395

; <label>:395:                                    ; preds = %block_40088d
  %396 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %387, %struct.Memory* %MEMORY.2) #9
  %.pre7 = load i32, i32* %EDX, align 4
  %.pre8 = load i64, i64* %PC, align 8
  %.pre9 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:397:                                    ; preds = %block_40088d
  %398 = srem i64 %390, %388
  %399 = and i64 %391, 4294967295
  store i64 %399, i64* %23, align 8, !tbaa !2428
  %400 = and i64 %398, 4294967295
  store i64 %400, i64* %22, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 0, i8* %17, align 1, !tbaa !2446
  store i8 0, i8* %18, align 1, !tbaa !2447
  store i8 0, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %21, align 1, !tbaa !2450
  %401 = trunc i64 %398 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %397, %395
  %402 = phi i64 [ %.pre9, %395 ], [ %381, %397 ]
  %403 = phi i64 [ %.pre8, %395 ], [ %387, %397 ]
  %404 = phi i32 [ %.pre7, %395 ], [ %401, %397 ]
  %405 = phi %struct.Memory* [ %396, %395 ], [ %MEMORY.2, %397 ]
  %406 = sext i32 %404 to i64
  store i64 %406, i64* %RCX, align 8, !tbaa !2428
  %407 = shl nsw i64 %406, 2
  %408 = add i64 %407, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %409 = add i64 %403, 10
  store i64 %409, i64* %PC, align 8
  %410 = inttoptr i64 %408 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = zext i32 %411 to i64
  store i64 %412, i64* %RDX, align 8, !tbaa !2428
  store i32 %411, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104) to i32*), align 16
  %413 = add i64 %402, -4
  %414 = add i64 %403, 20
  store i64 %414, i64* %PC, align 8
  %415 = inttoptr i64 %413 to i32*
  %416 = load i32, i32* %415, align 4
  %417 = add i32 %416, 1
  %418 = zext i32 %417 to i64
  store i64 %418, i64* %RAX, align 8, !tbaa !2428
  %419 = icmp eq i32 %416, -1
  %420 = icmp eq i32 %417, 0
  %421 = or i1 %419, %420
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %16, align 1, !tbaa !2432
  %423 = and i32 %417, 255
  %424 = tail call i32 @llvm.ctpop.i32(i32 %423) #8
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  %427 = xor i8 %426, 1
  store i8 %427, i8* %17, align 1, !tbaa !2446
  %428 = xor i32 %416, %417
  %429 = lshr i32 %428, 4
  %430 = trunc i32 %429 to i8
  %431 = and i8 %430, 1
  store i8 %431, i8* %18, align 1, !tbaa !2447
  %432 = zext i1 %420 to i8
  store i8 %432, i8* %19, align 1, !tbaa !2448
  %433 = lshr i32 %417, 31
  %434 = trunc i32 %433 to i8
  store i8 %434, i8* %20, align 1, !tbaa !2449
  %435 = lshr i32 %416, 31
  %436 = xor i32 %433, %435
  %437 = add nuw nsw i32 %436, %433
  %438 = icmp eq i32 %437, 2
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %21, align 1, !tbaa !2450
  %440 = add i64 %403, 26
  store i64 %440, i64* %PC, align 8
  store i32 %417, i32* %415, align 4
  %441 = load i64, i64* %PC, align 8
  %442 = add i64 %441, -248
  store i64 %442, i64* %PC, align 8, !tbaa !2428
  br label %block_4007d1

block_40090b:                                     ; preds = %block_4008d5
  %443 = add i64 %87, 1
  store i64 %443, i64* %PC, align 8
  %444 = load i64, i64* %8, align 8, !tbaa !2428
  %445 = add i64 %444, 8
  %446 = inttoptr i64 %444 to i64*
  %447 = load i64, i64* %446, align 8
  store i64 %447, i64* %RBP, align 8, !tbaa !2428
  store i64 %445, i64* %8, align 8, !tbaa !2428
  %448 = add i64 %87, 2
  store i64 %448, i64* %PC, align 8
  %449 = inttoptr i64 %445 to i64*
  %450 = load i64, i64* %449, align 8
  store i64 %450, i64* %PC, align 8, !tbaa !2428
  %451 = add i64 %444, 16
  store i64 %451, i64* %8, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.3

block_40085f:                                     ; preds = %block_4007fd
  %452 = add i64 %507, 3
  store i64 %452, i64* %PC, align 8
  %453 = load i32, i32* %92, align 4
  %454 = add i32 %453, -1
  %455 = zext i32 %454 to i64
  store i64 %455, i64* %RAX, align 8, !tbaa !2428
  %456 = icmp eq i32 %453, 0
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %16, align 1, !tbaa !2432
  %458 = and i32 %454, 255
  %459 = tail call i32 @llvm.ctpop.i32(i32 %458) #8
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  %462 = xor i8 %461, 1
  store i8 %462, i8* %17, align 1, !tbaa !2446
  %463 = xor i32 %453, %454
  %464 = lshr i32 %463, 4
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  store i8 %466, i8* %18, align 1, !tbaa !2447
  %467 = icmp eq i32 %454, 0
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %19, align 1, !tbaa !2448
  %469 = lshr i32 %454, 31
  %470 = trunc i32 %469 to i8
  store i8 %470, i8* %20, align 1, !tbaa !2449
  %471 = lshr i32 %453, 31
  %472 = xor i32 %469, %471
  %473 = add nuw nsw i32 %472, %471
  %474 = icmp eq i32 %473, 2
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %21, align 1, !tbaa !2450
  %476 = sext i32 %454 to i64
  store i64 %476, i64* %RCX, align 8, !tbaa !2428
  %477 = shl nsw i64 %476, 2
  %478 = add i64 %477, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %479 = add i64 %507, 16
  store i64 %479, i64* %PC, align 8
  %480 = inttoptr i64 %478 to i32*
  %481 = load i32, i32* %480, align 4
  %482 = zext i32 %481 to i64
  store i64 %482, i64* %RAX, align 8, !tbaa !2428
  %483 = add i64 %507, 20
  store i64 %483, i64* %PC, align 8
  %484 = load i32, i32* %92, align 4
  %485 = sext i32 %484 to i64
  store i64 %485, i64* %RCX, align 8, !tbaa !2428
  %486 = shl nsw i64 %485, 2
  %487 = add i64 %486, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %488 = add i64 %507, 27
  store i64 %488, i64* %PC, align 8
  %489 = inttoptr i64 %487 to i32*
  store i32 %481, i32* %489, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_40087a

block_4007fd:                                     ; preds = %block_4007f3
  %490 = add i64 %105, 4
  store i64 %490, i64* %PC, align 8
  %491 = load i32, i32* %92, align 4
  %492 = sext i32 %491 to i64
  store i64 %492, i64* %RAX, align 8, !tbaa !2428
  %493 = shl nsw i64 %492, 2
  %494 = add i64 %493, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %495 = add i64 %105, 12
  store i64 %495, i64* %PC, align 8
  %496 = inttoptr i64 %494 to i32*
  %497 = load i32, i32* %496, align 4
  store i8 0, i8* %16, align 1, !tbaa !2432
  %498 = and i32 %497, 255
  %499 = tail call i32 @llvm.ctpop.i32(i32 %498) #8
  %500 = trunc i32 %499 to i8
  %501 = and i8 %500, 1
  %502 = xor i8 %501, 1
  store i8 %502, i8* %17, align 1, !tbaa !2446
  store i8 0, i8* %18, align 1, !tbaa !2447
  %503 = icmp eq i32 %497, 0
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %19, align 1, !tbaa !2448
  %505 = lshr i32 %497, 31
  %506 = trunc i32 %505 to i8
  store i8 %506, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %21, align 1, !tbaa !2450
  %.v12 = select i1 %503, i64 98, i64 18
  %507 = add i64 %105, %.v12
  store i64 %507, i64* %PC, align 8, !tbaa !2428
  br i1 %503, label %block_40085f, label %block_40080f

block_4007db:                                     ; preds = %block_4007d1
  %508 = add i64 %136, 4
  store i64 %508, i64* %PC, align 8
  %509 = load i32, i32* %110, align 4
  %510 = sext i32 %509 to i64
  store i64 %510, i64* %RAX, align 8, !tbaa !2428
  %511 = shl nsw i64 %510, 2
  %512 = add i64 %511, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %513 = add i64 %136, 15
  store i64 %513, i64* %PC, align 8
  %514 = inttoptr i64 %512 to i32*
  store i32 1, i32* %514, align 4
  %515 = load i64, i64* %RBP, align 8
  %516 = add i64 %515, -4
  %517 = load i64, i64* %PC, align 8
  %518 = add i64 %517, 3
  store i64 %518, i64* %PC, align 8
  %519 = inttoptr i64 %516 to i32*
  %520 = load i32, i32* %519, align 4
  %521 = add i32 %520, -1
  %522 = zext i32 %521 to i64
  store i64 %522, i64* %RCX, align 8, !tbaa !2428
  %523 = icmp eq i32 %520, 0
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %16, align 1, !tbaa !2432
  %525 = and i32 %521, 255
  %526 = tail call i32 @llvm.ctpop.i32(i32 %525) #8
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  %529 = xor i8 %528, 1
  store i8 %529, i8* %17, align 1, !tbaa !2446
  %530 = xor i32 %520, %521
  %531 = lshr i32 %530, 4
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  store i8 %533, i8* %18, align 1, !tbaa !2447
  %534 = icmp eq i32 %521, 0
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %19, align 1, !tbaa !2448
  %536 = lshr i32 %521, 31
  %537 = trunc i32 %536 to i8
  store i8 %537, i8* %20, align 1, !tbaa !2449
  %538 = lshr i32 %520, 31
  %539 = xor i32 %536, %538
  %540 = add nuw nsw i32 %539, %538
  %541 = icmp eq i32 %540, 2
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %21, align 1, !tbaa !2450
  %543 = add i64 %515, -8
  %544 = add i64 %517, 9
  store i64 %544, i64* %PC, align 8
  %545 = inttoptr i64 %543 to i32*
  store i32 %521, i32* %545, align 4
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
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29) #8
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
  br i1 %34, label %block_40186e, label %block_401883

block_4018fb:                                     ; preds = %block_401908, %block_4018ef
  %39 = phi i64 [ %349, %block_401908 ], [ %.pre4, %block_4018ef ]
  %40 = load i64, i64* %RBP, align 8
  %41 = add i64 %40, -20
  %42 = add i64 %39, 7
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %41 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = add i32 %44, -188
  %46 = icmp ult i32 %44, 188
  %47 = zext i1 %46 to i8
  store i8 %47, i8* %11, align 1, !tbaa !2432
  %48 = and i32 %45, 255
  %49 = tail call i32 @llvm.ctpop.i32(i32 %48) #8
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
  %.v8 = select i1 %68, i64 13, i64 49
  %69 = add i64 %39, %.v8
  store i64 %69, i64* %PC, align 8, !tbaa !2428
  br i1 %68, label %block_401908, label %block_40192c

block_4018b8:                                     ; preds = %block_4018c5, %block_4018b1
  %70 = phi i64 [ %424, %block_4018c5 ], [ %.pre3, %block_4018b1 ]
  %71 = load i64, i64* %RBP, align 8
  %72 = add i64 %71, -20
  %73 = add i64 %70, 7
  store i64 %73, i64* %PC, align 8
  %74 = inttoptr i64 %72 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %75, -188
  %77 = icmp ult i32 %75, 188
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %11, align 1, !tbaa !2432
  %79 = and i32 %76, 255
  %80 = tail call i32 @llvm.ctpop.i32(i32 %79) #8
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
  %.v7 = select i1 %99, i64 13, i64 55
  %100 = add i64 %70, %.v7
  store i64 %100, i64* %PC, align 8, !tbaa !2428
  br i1 %99, label %block_4018c5, label %block_4018ef

block_4018b1:                                     ; preds = %block_40188a
  %101 = add i64 %296, 7
  store i64 %101, i64* %PC, align 8
  store i32 0, i32* %270, align 4
  %.pre3 = load i64, i64* %PC, align 8
  br label %block_4018b8

block_401933:                                     ; preds = %block_40192c, %block_40193d
  %102 = phi i64 [ %.pre5, %block_40192c ], [ %233, %block_40193d ]
  %103 = load i64, i64* %RBP, align 8
  %104 = add i64 %103, -20
  %105 = add i64 %102, 4
  store i64 %105, i64* %PC, align 8
  %106 = inttoptr i64 %104 to i32*
  %107 = load i32, i32* %106, align 4
  %108 = add i32 %107, -16
  %109 = icmp ult i32 %107, 16
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %11, align 1, !tbaa !2432
  %111 = and i32 %108, 255
  %112 = tail call i32 @llvm.ctpop.i32(i32 %111) #8
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  store i8 %115, i8* %12, align 1, !tbaa !2446
  %116 = xor i32 %107, 16
  %117 = xor i32 %116, %108
  %118 = lshr i32 %117, 4
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  store i8 %120, i8* %13, align 1, !tbaa !2447
  %121 = icmp eq i32 %108, 0
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %14, align 1, !tbaa !2448
  %123 = lshr i32 %108, 31
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %15, align 1, !tbaa !2449
  %125 = lshr i32 %107, 31
  %126 = xor i32 %123, %125
  %127 = add nuw nsw i32 %126, %125
  %128 = icmp eq i32 %127, 2
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %16, align 1, !tbaa !2450
  %130 = icmp ne i8 %124, 0
  %131 = xor i1 %130, %128
  %.v9 = select i1 %131, i64 10, i64 56
  %132 = add i64 %102, %.v9
  store i64 %132, i64* %PC, align 8, !tbaa !2428
  br i1 %131, label %block_40193d, label %block_40196b

block_4018ef:                                     ; preds = %block_4018b8
  %133 = add i64 %100, 145
  %134 = add i64 %100, 5
  %135 = load i64, i64* %RSP, align 8, !tbaa !2428
  %136 = add i64 %135, -8
  %137 = inttoptr i64 %136 to i64*
  store i64 %134, i64* %137, align 8
  store i64 %136, i64* %RSP, align 8, !tbaa !2428
  store i64 %133, i64* %PC, align 8, !tbaa !2428
  %138 = tail call %struct.Memory* @sub_401980_encode_rs_renamed_(%struct.State* nonnull %0, i64 %133, %struct.Memory* %MEMORY.4)
  %139 = load i64, i64* %RBP, align 8
  %140 = add i64 %139, -20
  %141 = load i64, i64* %PC, align 8
  %142 = add i64 %141, 7
  store i64 %142, i64* %PC, align 8
  %143 = inttoptr i64 %140 to i32*
  store i32 0, i32* %143, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_4018fb

block_40186e:                                     ; preds = %block_401850
  %144 = add i64 %38, -4622
  %145 = add i64 %38, 5
  %146 = load i64, i64* %RSP, align 8, !tbaa !2428
  %147 = add i64 %146, -8
  %148 = inttoptr i64 %147 to i64*
  store i64 %145, i64* %148, align 8
  store i64 %147, i64* %RSP, align 8, !tbaa !2428
  store i64 %144, i64* %PC, align 8, !tbaa !2428
  %149 = tail call %struct.Memory* @sub_400660_generate_gf_renamed_(%struct.State* nonnull %0, i64 %144, %struct.Memory* %2)
  %150 = load i64, i64* %PC, align 8
  %151 = add i64 %150, -4291
  %152 = add i64 %150, 5
  %153 = load i64, i64* %RSP, align 8, !tbaa !2428
  %154 = add i64 %153, -8
  %155 = inttoptr i64 %154 to i64*
  store i64 %152, i64* %155, align 8
  store i64 %154, i64* %RSP, align 8, !tbaa !2428
  store i64 %151, i64* %PC, align 8, !tbaa !2428
  %156 = tail call %struct.Memory* @sub_4007b0_gen_poly_renamed_(%struct.State* nonnull %0, i64 %151, %struct.Memory* %149)
  %157 = load i64, i64* %PC, align 8
  %158 = add i64 %157, 11
  store i64 %158, i64* %PC, align 8
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 16) to i32*), align 16
  br label %block_401883

block_40193d:                                     ; preds = %block_401933
  %159 = add i64 %132, 4
  store i64 %159, i64* %PC, align 8
  %160 = load i32, i32* %106, align 4
  %161 = sext i32 %160 to i64
  store i64 %161, i64* %RAX, align 8, !tbaa !2428
  %162 = shl nsw i64 %161, 2
  %163 = add i64 %162, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %164 = add i64 %132, 11
  store i64 %164, i64* %PC, align 8
  %165 = inttoptr i64 %163 to i32*
  %166 = load i32, i32* %165, align 4
  %167 = zext i32 %166 to i64
  store i64 %167, i64* %RCX, align 8, !tbaa !2428
  %168 = trunc i32 %166 to i8
  store i8 %168, i8* %DL, align 1, !tbaa !2451
  %169 = add i64 %103, -8
  %170 = add i64 %132, 17
  store i64 %170, i64* %PC, align 8
  %171 = inttoptr i64 %169 to i64*
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %RAX, align 8, !tbaa !2428
  %173 = add i64 %132, 20
  store i64 %173, i64* %PC, align 8
  %174 = load i32, i32* %106, align 4
  %175 = add i32 %174, 188
  %176 = zext i32 %175 to i64
  store i64 %176, i64* %RCX, align 8, !tbaa !2428
  %177 = icmp ugt i32 %174, -189
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %11, align 1, !tbaa !2432
  %179 = and i32 %175, 255
  %180 = tail call i32 @llvm.ctpop.i32(i32 %179) #8
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  %183 = xor i8 %182, 1
  store i8 %183, i8* %12, align 1, !tbaa !2446
  %184 = xor i32 %174, 16
  %185 = xor i32 %184, %175
  %186 = lshr i32 %185, 4
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  store i8 %188, i8* %13, align 1, !tbaa !2447
  %189 = icmp eq i32 %175, 0
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %14, align 1, !tbaa !2448
  %191 = lshr i32 %175, 31
  %192 = trunc i32 %191 to i8
  store i8 %192, i8* %15, align 1, !tbaa !2449
  %193 = lshr i32 %174, 31
  %194 = xor i32 %191, %193
  %195 = add nuw nsw i32 %194, %191
  %196 = icmp eq i32 %195, 2
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %16, align 1, !tbaa !2450
  %198 = sext i32 %175 to i64
  store i64 %198, i64* %RSI, align 8, !tbaa !2428
  %199 = add i64 %198, %172
  %200 = add i64 %132, 32
  store i64 %200, i64* %PC, align 8
  %201 = inttoptr i64 %199 to i8*
  store i8 %168, i8* %201, align 1
  %202 = load i64, i64* %RBP, align 8
  %203 = add i64 %202, -20
  %204 = load i64, i64* %PC, align 8
  %205 = add i64 %204, 3
  store i64 %205, i64* %PC, align 8
  %206 = inttoptr i64 %203 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = add i32 %207, 1
  %209 = zext i32 %208 to i64
  store i64 %209, i64* %RAX, align 8, !tbaa !2428
  %210 = icmp eq i32 %207, -1
  %211 = icmp eq i32 %208, 0
  %212 = or i1 %210, %211
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %11, align 1, !tbaa !2432
  %214 = and i32 %208, 255
  %215 = tail call i32 @llvm.ctpop.i32(i32 %214) #8
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  %218 = xor i8 %217, 1
  store i8 %218, i8* %12, align 1, !tbaa !2446
  %219 = xor i32 %207, %208
  %220 = lshr i32 %219, 4
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  store i8 %222, i8* %13, align 1, !tbaa !2447
  %223 = zext i1 %211 to i8
  store i8 %223, i8* %14, align 1, !tbaa !2448
  %224 = lshr i32 %208, 31
  %225 = trunc i32 %224 to i8
  store i8 %225, i8* %15, align 1, !tbaa !2449
  %226 = lshr i32 %207, 31
  %227 = xor i32 %224, %226
  %228 = add nuw nsw i32 %227, %224
  %229 = icmp eq i32 %228, 2
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %16, align 1, !tbaa !2450
  %231 = add i64 %204, 9
  store i64 %231, i64* %PC, align 8
  store i32 %208, i32* %206, align 4
  %232 = load i64, i64* %PC, align 8
  %233 = add i64 %232, -51
  store i64 %233, i64* %PC, align 8, !tbaa !2428
  br label %block_401933

block_40192c:                                     ; preds = %block_4018fb
  %234 = add i64 %69, 7
  store i64 %234, i64* %PC, align 8
  store i32 0, i32* %43, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_401933

block_40196b:                                     ; preds = %block_401933
  %235 = load i64, i64* %RSP, align 8
  %236 = add i64 %235, 32
  store i64 %236, i64* %RSP, align 8, !tbaa !2428
  %237 = icmp ugt i64 %235, -33
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %11, align 1, !tbaa !2432
  %239 = trunc i64 %236 to i32
  %240 = and i32 %239, 255
  %241 = tail call i32 @llvm.ctpop.i32(i32 %240) #8
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  %244 = xor i8 %243, 1
  store i8 %244, i8* %12, align 1, !tbaa !2446
  %245 = xor i64 %235, %236
  %246 = lshr i64 %245, 4
  %247 = trunc i64 %246 to i8
  %248 = and i8 %247, 1
  store i8 %248, i8* %13, align 1, !tbaa !2447
  %249 = icmp eq i64 %236, 0
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %14, align 1, !tbaa !2448
  %251 = lshr i64 %236, 63
  %252 = trunc i64 %251 to i8
  store i8 %252, i8* %15, align 1, !tbaa !2449
  %253 = lshr i64 %235, 63
  %254 = xor i64 %251, %253
  %255 = add nuw nsw i64 %254, %251
  %256 = icmp eq i64 %255, 2
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %16, align 1, !tbaa !2450
  %258 = add i64 %132, 5
  store i64 %258, i64* %PC, align 8
  %259 = add i64 %235, 40
  %260 = inttoptr i64 %236 to i64*
  %261 = load i64, i64* %260, align 8
  store i64 %261, i64* %RBP, align 8, !tbaa !2428
  store i64 %259, i64* %RSP, align 8, !tbaa !2428
  %262 = add i64 %132, 6
  store i64 %262, i64* %PC, align 8
  %263 = inttoptr i64 %259 to i64*
  %264 = load i64, i64* %263, align 8
  store i64 %264, i64* %PC, align 8, !tbaa !2428
  %265 = add i64 %235, 48
  store i64 %265, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %138

block_40188a:                                     ; preds = %block_401883, %block_401894
  %266 = phi i64 [ %.pre, %block_401883 ], [ %463, %block_401894 ]
  %267 = load i64, i64* %RBP, align 8
  %268 = add i64 %267, -20
  %269 = add i64 %266, 4
  store i64 %269, i64* %PC, align 8
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = add i32 %271, -51
  %273 = icmp ult i32 %271, 51
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %11, align 1, !tbaa !2432
  %275 = and i32 %272, 255
  %276 = tail call i32 @llvm.ctpop.i32(i32 %275) #8
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  %279 = xor i8 %278, 1
  store i8 %279, i8* %12, align 1, !tbaa !2446
  %280 = xor i32 %271, 16
  %281 = xor i32 %280, %272
  %282 = lshr i32 %281, 4
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  store i8 %284, i8* %13, align 1, !tbaa !2447
  %285 = icmp eq i32 %272, 0
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %14, align 1, !tbaa !2448
  %287 = lshr i32 %272, 31
  %288 = trunc i32 %287 to i8
  store i8 %288, i8* %15, align 1, !tbaa !2449
  %289 = lshr i32 %271, 31
  %290 = xor i32 %287, %289
  %291 = add nuw nsw i32 %290, %289
  %292 = icmp eq i32 %291, 2
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %16, align 1, !tbaa !2450
  %294 = icmp ne i8 %288, 0
  %295 = xor i1 %294, %292
  %.v6 = select i1 %295, i64 10, i64 39
  %296 = add i64 %266, %.v6
  store i64 %296, i64* %PC, align 8, !tbaa !2428
  br i1 %295, label %block_401894, label %block_4018b1

block_401908:                                     ; preds = %block_4018fb
  %297 = add i64 %40, -16
  %298 = add i64 %69, 4
  store i64 %298, i64* %PC, align 8
  %299 = inttoptr i64 %297 to i64*
  %300 = load i64, i64* %299, align 8
  store i64 %300, i64* %RAX, align 8, !tbaa !2428
  %301 = add i64 %69, 8
  store i64 %301, i64* %PC, align 8
  %302 = load i32, i32* %43, align 4
  %303 = sext i32 %302 to i64
  store i64 %303, i64* %RCX, align 8, !tbaa !2428
  %304 = add i64 %303, %300
  %305 = add i64 %69, 11
  store i64 %305, i64* %PC, align 8
  %306 = inttoptr i64 %304 to i8*
  %307 = load i8, i8* %306, align 1
  store i8 %307, i8* %DL, align 1, !tbaa !2451
  %308 = add i64 %40, -8
  %309 = add i64 %69, 15
  store i64 %309, i64* %PC, align 8
  %310 = inttoptr i64 %308 to i64*
  %311 = load i64, i64* %310, align 8
  store i64 %311, i64* %RAX, align 8, !tbaa !2428
  %312 = add i64 %69, 19
  store i64 %312, i64* %PC, align 8
  %313 = load i32, i32* %43, align 4
  %314 = sext i32 %313 to i64
  store i64 %314, i64* %RCX, align 8, !tbaa !2428
  %315 = add i64 %314, %311
  %316 = add i64 %69, 22
  store i64 %316, i64* %PC, align 8
  %317 = inttoptr i64 %315 to i8*
  store i8 %307, i8* %317, align 1
  %318 = load i64, i64* %RBP, align 8
  %319 = add i64 %318, -20
  %320 = load i64, i64* %PC, align 8
  %321 = add i64 %320, 3
  store i64 %321, i64* %PC, align 8
  %322 = inttoptr i64 %319 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = add i32 %323, 1
  %325 = zext i32 %324 to i64
  store i64 %325, i64* %RAX, align 8, !tbaa !2428
  %326 = icmp eq i32 %323, -1
  %327 = icmp eq i32 %324, 0
  %328 = or i1 %326, %327
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %11, align 1, !tbaa !2432
  %330 = and i32 %324, 255
  %331 = tail call i32 @llvm.ctpop.i32(i32 %330) #8
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  %334 = xor i8 %333, 1
  store i8 %334, i8* %12, align 1, !tbaa !2446
  %335 = xor i32 %323, %324
  %336 = lshr i32 %335, 4
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  store i8 %338, i8* %13, align 1, !tbaa !2447
  %339 = zext i1 %327 to i8
  store i8 %339, i8* %14, align 1, !tbaa !2448
  %340 = lshr i32 %324, 31
  %341 = trunc i32 %340 to i8
  store i8 %341, i8* %15, align 1, !tbaa !2449
  %342 = lshr i32 %323, 31
  %343 = xor i32 %340, %342
  %344 = add nuw nsw i32 %343, %340
  %345 = icmp eq i32 %344, 2
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %16, align 1, !tbaa !2450
  %347 = add i64 %320, 9
  store i64 %347, i64* %PC, align 8
  store i32 %324, i32* %322, align 4
  %348 = load i64, i64* %PC, align 8
  %349 = add i64 %348, -44
  store i64 %349, i64* %PC, align 8, !tbaa !2428
  br label %block_4018fb

block_4018c5:                                     ; preds = %block_4018b8
  %350 = add i64 %71, -16
  %351 = add i64 %100, 4
  store i64 %351, i64* %PC, align 8
  %352 = inttoptr i64 %350 to i64*
  %353 = load i64, i64* %352, align 8
  store i64 %353, i64* %RAX, align 8, !tbaa !2428
  %354 = add i64 %100, 8
  store i64 %354, i64* %PC, align 8
  %355 = load i32, i32* %74, align 4
  %356 = sext i32 %355 to i64
  store i64 %356, i64* %RCX, align 8, !tbaa !2428
  %357 = add i64 %356, %353
  %358 = add i64 %100, 12
  store i64 %358, i64* %PC, align 8
  %359 = inttoptr i64 %357 to i8*
  %360 = load i8, i8* %359, align 1
  %361 = zext i8 %360 to i64
  store i64 %361, i64* %RDX, align 8, !tbaa !2428
  %362 = add i64 %100, 15
  store i64 %362, i64* %PC, align 8
  %363 = load i32, i32* %74, align 4
  %364 = add i32 %363, 51
  %365 = zext i32 %364 to i64
  store i64 %365, i64* %RSI, align 8, !tbaa !2428
  %366 = icmp ugt i32 %363, -52
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %11, align 1, !tbaa !2432
  %368 = and i32 %364, 255
  %369 = tail call i32 @llvm.ctpop.i32(i32 %368) #8
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  %372 = xor i8 %371, 1
  store i8 %372, i8* %12, align 1, !tbaa !2446
  %373 = xor i32 %363, 16
  %374 = xor i32 %373, %364
  %375 = lshr i32 %374, 4
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  store i8 %377, i8* %13, align 1, !tbaa !2447
  %378 = icmp eq i32 %364, 0
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %14, align 1, !tbaa !2448
  %380 = lshr i32 %364, 31
  %381 = trunc i32 %380 to i8
  store i8 %381, i8* %15, align 1, !tbaa !2449
  %382 = lshr i32 %363, 31
  %383 = xor i32 %380, %382
  %384 = add nuw nsw i32 %383, %380
  %385 = icmp eq i32 %384, 2
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %16, align 1, !tbaa !2450
  %387 = sext i32 %364 to i64
  store i64 %387, i64* %RAX, align 8, !tbaa !2428
  %388 = shl nsw i64 %387, 2
  %389 = add i64 %388, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3184)
  %390 = zext i8 %360 to i32
  %391 = add i64 %100, 28
  store i64 %391, i64* %PC, align 8
  %392 = inttoptr i64 %389 to i32*
  store i32 %390, i32* %392, align 4
  %393 = load i64, i64* %RBP, align 8
  %394 = add i64 %393, -20
  %395 = load i64, i64* %PC, align 8
  %396 = add i64 %395, 3
  store i64 %396, i64* %PC, align 8
  %397 = inttoptr i64 %394 to i32*
  %398 = load i32, i32* %397, align 4
  %399 = add i32 %398, 1
  %400 = zext i32 %399 to i64
  store i64 %400, i64* %RAX, align 8, !tbaa !2428
  %401 = icmp eq i32 %398, -1
  %402 = icmp eq i32 %399, 0
  %403 = or i1 %401, %402
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %11, align 1, !tbaa !2432
  %405 = and i32 %399, 255
  %406 = tail call i32 @llvm.ctpop.i32(i32 %405) #8
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  %409 = xor i8 %408, 1
  store i8 %409, i8* %12, align 1, !tbaa !2446
  %410 = xor i32 %398, %399
  %411 = lshr i32 %410, 4
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  store i8 %413, i8* %13, align 1, !tbaa !2447
  %414 = zext i1 %402 to i8
  store i8 %414, i8* %14, align 1, !tbaa !2448
  %415 = lshr i32 %399, 31
  %416 = trunc i32 %415 to i8
  store i8 %416, i8* %15, align 1, !tbaa !2449
  %417 = lshr i32 %398, 31
  %418 = xor i32 %415, %417
  %419 = add nuw nsw i32 %418, %415
  %420 = icmp eq i32 %419, 2
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %16, align 1, !tbaa !2450
  %422 = add i64 %395, 9
  store i64 %422, i64* %PC, align 8
  store i32 %399, i32* %397, align 4
  %423 = load i64, i64* %PC, align 8
  %424 = add i64 %423, -50
  store i64 %424, i64* %PC, align 8, !tbaa !2428
  br label %block_4018b8

block_401894:                                     ; preds = %block_40188a
  %425 = add i64 %296, 4
  store i64 %425, i64* %PC, align 8
  %426 = load i32, i32* %270, align 4
  %427 = sext i32 %426 to i64
  store i64 %427, i64* %RAX, align 8, !tbaa !2428
  %428 = shl nsw i64 %427, 2
  %429 = add i64 %428, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3184)
  %430 = add i64 %296, 15
  store i64 %430, i64* %PC, align 8
  %431 = inttoptr i64 %429 to i32*
  store i32 0, i32* %431, align 4
  %432 = load i64, i64* %RBP, align 8
  %433 = add i64 %432, -20
  %434 = load i64, i64* %PC, align 8
  %435 = add i64 %434, 3
  store i64 %435, i64* %PC, align 8
  %436 = inttoptr i64 %433 to i32*
  %437 = load i32, i32* %436, align 4
  %438 = add i32 %437, 1
  %439 = zext i32 %438 to i64
  store i64 %439, i64* %RAX, align 8, !tbaa !2428
  %440 = icmp eq i32 %437, -1
  %441 = icmp eq i32 %438, 0
  %442 = or i1 %440, %441
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %11, align 1, !tbaa !2432
  %444 = and i32 %438, 255
  %445 = tail call i32 @llvm.ctpop.i32(i32 %444) #8
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  %448 = xor i8 %447, 1
  store i8 %448, i8* %12, align 1, !tbaa !2446
  %449 = xor i32 %437, %438
  %450 = lshr i32 %449, 4
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  store i8 %452, i8* %13, align 1, !tbaa !2447
  %453 = zext i1 %441 to i8
  store i8 %453, i8* %14, align 1, !tbaa !2448
  %454 = lshr i32 %438, 31
  %455 = trunc i32 %454 to i8
  store i8 %455, i8* %15, align 1, !tbaa !2449
  %456 = lshr i32 %437, 31
  %457 = xor i32 %454, %456
  %458 = add nuw nsw i32 %457, %454
  %459 = icmp eq i32 %458, 2
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %16, align 1, !tbaa !2450
  %461 = add i64 %434, 9
  store i64 %461, i64* %PC, align 8
  store i32 %438, i32* %436, align 4
  %462 = load i64, i64* %PC, align 8
  %463 = add i64 %462, -34
  store i64 %463, i64* %PC, align 8, !tbaa !2428
  br label %block_40188a

block_401883:                                     ; preds = %block_401850, %block_40186e
  %464 = phi i64 [ %38, %block_401850 ], [ %158, %block_40186e ]
  %MEMORY.4 = phi %struct.Memory* [ %2, %block_401850 ], [ %156, %block_40186e ]
  %465 = load i64, i64* %RBP, align 8
  %466 = add i64 %465, -20
  %467 = add i64 %464, 7
  store i64 %467, i64* %PC, align 8
  %468 = inttoptr i64 %466 to i32*
  store i32 0, i32* %468, align 4
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
  %.v = select i1 %30, i64 50, i64 29
  %34 = add i64 %10, %.v
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br i1 %30, label %block_4004a8, label %block_400493

block_400493:                                     ; preds = %block_400470
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 1, i8* %13, align 1, !tbaa !2446
  store i8 1, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i8 0, i8* %14, align 1, !tbaa !2447
  %35 = add i64 %34, 21
  store i64 %35, i64* %PC, align 8, !tbaa !2428
  br label %block_4004a8

block_4004a8:                                     ; preds = %block_400493, %block_400470
  %36 = phi i64 [ %35, %block_400493 ], [ %34, %block_400470 ]
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
  store i64 %44, i64* %PC, align 8, !tbaa !2428
  %45 = add i64 %38, 16
  store i64 %45, i64* %5, align 8, !tbaa !2428
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
  store i64 %12, i64* %PC, align 8, !tbaa !2428
  %13 = tail call %struct.Memory* @sub_400470_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
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
  %.pre = load i64, i64* %PC, align 8
  br label %block_40198b

block_401a72:                                     ; preds = %block_401a57, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1
  %23 = phi i64 [ %.pre7, %block_401a57 ], [ %192, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.5, %block_401a57 ], [ %162, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %24 = load i64, i64* %RBP, align 8
  %25 = add i64 %24, -8
  %26 = add i64 %23, 8
  store i64 %26, i64* %PC, align 8
  %27 = inttoptr i64 %25 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = add i32 %28, -1
  %30 = zext i32 %29 to i64
  store i64 %30, i64* %RAX, align 8, !tbaa !2428
  %31 = icmp ne i32 %28, 0
  %32 = zext i1 %31 to i8
  store i8 %32, i8* %17, align 1, !tbaa !2432
  %33 = and i32 %29, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #8
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %18, align 1, !tbaa !2446
  %38 = xor i32 %28, 16
  %39 = xor i32 %29, %38
  %40 = lshr i32 %39, 4
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  store i8 %42, i8* %19, align 1, !tbaa !2447
  %43 = icmp eq i32 %29, 0
  %44 = zext i1 %43 to i8
  store i8 %44, i8* %20, align 1, !tbaa !2448
  %45 = lshr i32 %29, 31
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %21, align 1, !tbaa !2449
  %47 = lshr i32 %28, 31
  %48 = xor i32 %45, %47
  %49 = xor i32 %45, 1
  %50 = add nuw nsw i32 %48, %49
  %51 = icmp eq i32 %50, 2
  %52 = zext i1 %51 to i8
  store i8 %52, i8* %22, align 1, !tbaa !2450
  %53 = add i64 %23, 14
  store i64 %53, i64* %PC, align 8
  store i32 %29, i32* %27, align 4
  %54 = load i64, i64* %PC, align 8
  %55 = add i64 %54, -141
  store i64 %55, i64* %PC, align 8, !tbaa !2428
  br label %block_4019f3

block_401aef:                                     ; preds = %block_401abc
  %56 = add i64 %210, 11
  store i64 %56, i64* %PC, align 8
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144) to i32*), align 16
  br label %block_401afa

block_401a0f:                                     ; preds = %block_4019fd
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %57 = add i64 %242, 8
  store i64 %57, i64* %PC, align 8
  %58 = load i32, i32* %624, align 4
  %59 = add i32 %58, -1
  %60 = zext i32 %59 to i64
  store i64 %60, i64* %RCX, align 8, !tbaa !2428
  %61 = icmp eq i32 %58, 0
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %17, align 1, !tbaa !2432
  %63 = and i32 %59, 255
  %64 = tail call i32 @llvm.ctpop.i32(i32 %63) #8
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, 1
  %67 = xor i8 %66, 1
  store i8 %67, i8* %18, align 1, !tbaa !2446
  %68 = xor i32 %58, %59
  %69 = lshr i32 %68, 4
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  store i8 %71, i8* %19, align 1, !tbaa !2447
  %72 = icmp eq i32 %59, 0
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %20, align 1, !tbaa !2448
  %74 = lshr i32 %59, 31
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %21, align 1, !tbaa !2449
  %76 = lshr i32 %58, 31
  %77 = xor i32 %74, %76
  %78 = add nuw nsw i32 %77, %76
  %79 = icmp eq i32 %78, 2
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %22, align 1, !tbaa !2450
  %81 = sext i32 %59 to i64
  store i64 %81, i64* %RDX, align 8, !tbaa !2428
  %82 = shl nsw i64 %81, 2
  %83 = add i64 %82, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %84 = add i64 %242, 21
  store i64 %84, i64* %PC, align 8
  %85 = inttoptr i64 %83 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = zext i32 %86 to i64
  store i64 %87, i64* %RCX, align 8, !tbaa !2428
  %88 = add i64 %242, 25
  store i64 %88, i64* %PC, align 8
  %89 = load i32, i32* %624, align 4
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %RDX, align 8, !tbaa !2428
  %91 = shl nsw i64 %90, 2
  %92 = add i64 %91, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %93 = add i64 %242, 32
  store i64 %93, i64* %PC, align 8
  %94 = inttoptr i64 %92 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = zext i32 %95 to i64
  store i64 %96, i64* %RSI, align 8, !tbaa !2428
  %97 = add i64 %621, -12
  %98 = add i64 %242, 35
  store i64 %98, i64* %PC, align 8
  %99 = inttoptr i64 %97 to i32*
  %100 = load i32, i32* %99, align 4
  %101 = add i32 %100, %95
  %102 = zext i32 %101 to i64
  store i64 %102, i64* %RSI, align 8, !tbaa !2428
  %103 = icmp ult i32 %101, %95
  %104 = icmp ult i32 %101, %100
  %105 = or i1 %103, %104
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %17, align 1, !tbaa !2432
  %107 = and i32 %101, 255
  %108 = tail call i32 @llvm.ctpop.i32(i32 %107) #8
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = xor i8 %110, 1
  store i8 %111, i8* %18, align 1, !tbaa !2446
  %112 = xor i32 %100, %95
  %113 = xor i32 %112, %101
  %114 = lshr i32 %113, 4
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  store i8 %116, i8* %19, align 1, !tbaa !2447
  %117 = icmp eq i32 %101, 0
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %20, align 1, !tbaa !2448
  %119 = lshr i32 %101, 31
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %21, align 1, !tbaa !2449
  %121 = lshr i32 %95, 31
  %122 = lshr i32 %100, 31
  %123 = xor i32 %119, %121
  %124 = xor i32 %119, %122
  %125 = add nuw nsw i32 %123, %124
  %126 = icmp eq i32 %125, 2
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %22, align 1, !tbaa !2450
  %128 = load i64, i64* %RBP, align 8
  %129 = add i64 %128, -16
  %130 = load i32, i32* %EAX, align 4
  %131 = add i64 %242, 38
  store i64 %131, i64* %PC, align 8
  %132 = inttoptr i64 %129 to i32*
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %ESI, align 4
  %134 = zext i32 %133 to i64
  %135 = load i64, i64* %PC, align 8
  store i64 %134, i64* %RAX, align 8, !tbaa !2428
  %136 = sext i32 %133 to i64
  %137 = lshr i64 %136, 32
  store i64 %137, i64* %348, align 8, !tbaa !2428
  %138 = load i64, i64* %RBP, align 8
  %139 = add i64 %138, -16
  %140 = add i64 %135, 6
  store i64 %140, i64* %PC, align 8
  %141 = inttoptr i64 %139 to i32*
  %142 = load i32, i32* %141, align 4
  %143 = zext i32 %142 to i64
  store i64 %143, i64* %RSI, align 8, !tbaa !2428
  %144 = add i64 %135, 8
  store i64 %144, i64* %PC, align 8
  %145 = sext i32 %142 to i64
  %146 = shl nuw i64 %137, 32
  %147 = or i64 %146, %134
  %148 = sdiv i64 %147, %145
  %149 = shl i64 %148, 32
  %150 = ashr exact i64 %149, 32
  %151 = icmp eq i64 %148, %150
  br i1 %151, label %154, label %152

; <label>:152:                                    ; preds = %block_401a0f
  %153 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %144, %struct.Memory* %MEMORY.5) #9
  %.pre4 = load i32, i32* %EDX, align 4
  %.pre5 = load i64, i64* %PC, align 8
  %.pre6 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:154:                                    ; preds = %block_401a0f
  %155 = srem i64 %147, %145
  %156 = and i64 %148, 4294967295
  store i64 %156, i64* %349, align 8, !tbaa !2428
  %157 = and i64 %155, 4294967295
  store i64 %157, i64* %348, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 0, i8* %18, align 1, !tbaa !2446
  store i8 0, i8* %19, align 1, !tbaa !2447
  store i8 0, i8* %20, align 1, !tbaa !2448
  store i8 0, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  %158 = trunc i64 %155 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %154, %152
  %159 = phi i64 [ %.pre6, %152 ], [ %138, %154 ]
  %160 = phi i64 [ %.pre5, %152 ], [ %144, %154 ]
  %161 = phi i32 [ %.pre4, %152 ], [ %158, %154 ]
  %162 = phi %struct.Memory* [ %153, %152 ], [ %MEMORY.5, %154 ]
  %163 = sext i32 %161 to i64
  store i64 %163, i64* %RDI, align 8, !tbaa !2428
  %164 = load i64, i64* %RCX, align 8
  %165 = shl nsw i64 %163, 2
  %166 = add i64 %165, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %167 = add i64 %160, 10
  store i64 %167, i64* %PC, align 8
  %168 = trunc i64 %164 to i32
  %169 = inttoptr i64 %166 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = xor i32 %170, %168
  %172 = zext i32 %171 to i64
  store i64 %172, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  %173 = and i32 %171, 255
  %174 = tail call i32 @llvm.ctpop.i32(i32 %173) #8
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  store i8 %177, i8* %18, align 1, !tbaa !2446
  %178 = icmp eq i32 %171, 0
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %20, align 1, !tbaa !2448
  %180 = lshr i32 %171, 31
  %181 = trunc i32 %180 to i8
  store i8 %181, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  store i8 0, i8* %19, align 1, !tbaa !2447
  %182 = add i64 %159, -8
  %183 = add i64 %160, 14
  store i64 %183, i64* %PC, align 8
  %184 = inttoptr i64 %182 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  store i64 %186, i64* %RDI, align 8, !tbaa !2428
  %187 = shl nsw i64 %186, 2
  %188 = add i64 %187, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %189 = add i64 %160, 21
  store i64 %189, i64* %PC, align 8
  %190 = inttoptr i64 %188 to i32*
  store i32 %171, i32* %190, align 4
  %191 = load i64, i64* %PC, align 8
  %192 = add i64 %191, 32
  store i64 %192, i64* %PC, align 8, !tbaa !2428
  br label %block_401a72

block_401abc:                                     ; preds = %block_4019c3, %block_401ac6
  %193 = phi i64 [ %346, %block_401ac6 ], [ %.pre10, %block_4019c3 ]
  %194 = load i64, i64* %RBP, align 8
  %195 = add i64 %194, -8
  %196 = add i64 %193, 4
  store i64 %196, i64* %PC, align 8
  %197 = inttoptr i64 %195 to i32*
  %198 = load i32, i32* %197, align 4
  store i8 0, i8* %17, align 1, !tbaa !2432
  %199 = and i32 %198, 255
  %200 = tail call i32 @llvm.ctpop.i32(i32 %199) #8
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  store i8 %203, i8* %18, align 1, !tbaa !2446
  store i8 0, i8* %19, align 1, !tbaa !2447
  %204 = icmp eq i32 %198, 0
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %20, align 1, !tbaa !2448
  %206 = lshr i32 %198, 31
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  %208 = icmp ne i8 %207, 0
  %209 = or i1 %204, %208
  %.v17 = select i1 %209, i64 51, i64 10
  %210 = add i64 %193, %.v17
  store i64 %210, i64* %PC, align 8, !tbaa !2428
  br i1 %209, label %block_401aef, label %block_401ac6

block_4019fd:                                     ; preds = %block_4019f3
  %211 = add i64 %637, 4
  store i64 %211, i64* %PC, align 8
  %212 = load i32, i32* %624, align 4
  %213 = sext i32 %212 to i64
  store i64 %213, i64* %RAX, align 8, !tbaa !2428
  %214 = shl nsw i64 %213, 2
  %215 = add i64 %214, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104)
  %216 = add i64 %637, 12
  store i64 %216, i64* %PC, align 8
  %217 = inttoptr i64 %215 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = add i32 %218, 1
  %220 = icmp ne i32 %218, -1
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %17, align 1, !tbaa !2432
  %222 = and i32 %219, 255
  %223 = tail call i32 @llvm.ctpop.i32(i32 %222) #8
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  store i8 %226, i8* %18, align 1, !tbaa !2446
  %227 = xor i32 %218, 16
  %228 = xor i32 %219, %227
  %229 = lshr i32 %228, 4
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  store i8 %231, i8* %19, align 1, !tbaa !2447
  %232 = icmp eq i32 %219, 0
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %20, align 1, !tbaa !2448
  %234 = lshr i32 %219, 31
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %21, align 1, !tbaa !2449
  %236 = lshr i32 %218, 31
  %237 = xor i32 %236, 1
  %238 = xor i32 %234, %236
  %239 = add nuw nsw i32 %238, %237
  %240 = icmp eq i32 %239, 2
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %22, align 1, !tbaa !2450
  %.v16 = select i1 %232, i64 90, i64 18
  %242 = add i64 %637, %.v16
  store i64 %242, i64* %PC, align 8, !tbaa !2428
  br i1 %232, label %block_401a57, label %block_401a0f

block_401afa:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_401aef
  %243 = phi i64 [ %194, %block_401aef ], [ %.pre11, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %244 = phi i64 [ %56, %block_401aef ], [ %619, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.3, %block_401aef ], [ %611, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %245 = add i64 %243, -4
  %246 = add i64 %244, 8
  store i64 %246, i64* %PC, align 8
  %247 = inttoptr i64 %245 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = add i32 %248, -1
  %250 = zext i32 %249 to i64
  store i64 %250, i64* %RAX, align 8, !tbaa !2428
  %251 = icmp ne i32 %248, 0
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %17, align 1, !tbaa !2432
  %253 = and i32 %249, 255
  %254 = tail call i32 @llvm.ctpop.i32(i32 %253) #8
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  %257 = xor i8 %256, 1
  store i8 %257, i8* %18, align 1, !tbaa !2446
  %258 = xor i32 %248, 16
  %259 = xor i32 %249, %258
  %260 = lshr i32 %259, 4
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  store i8 %262, i8* %19, align 1, !tbaa !2447
  %263 = icmp eq i32 %249, 0
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %20, align 1, !tbaa !2448
  %265 = lshr i32 %249, 31
  %266 = trunc i32 %265 to i8
  store i8 %266, i8* %21, align 1, !tbaa !2449
  %267 = lshr i32 %248, 31
  %268 = xor i32 %265, %267
  %269 = xor i32 %265, 1
  %270 = add nuw nsw i32 %268, %269
  %271 = icmp eq i32 %270, 2
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %22, align 1, !tbaa !2450
  %273 = add i64 %244, 14
  store i64 %273, i64* %PC, align 8
  store i32 %249, i32* %247, align 4
  %274 = load i64, i64* %PC, align 8
  %275 = add i64 %274, -335
  store i64 %275, i64* %PC, align 8, !tbaa !2428
  br label %block_4019b9

block_401ac6:                                     ; preds = %block_401abc
  %276 = add i64 %210, 3
  store i64 %276, i64* %PC, align 8
  %277 = load i32, i32* %197, align 4
  %278 = add i32 %277, -1
  %279 = zext i32 %278 to i64
  store i64 %279, i64* %RAX, align 8, !tbaa !2428
  %280 = icmp eq i32 %277, 0
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %17, align 1, !tbaa !2432
  %282 = and i32 %278, 255
  %283 = tail call i32 @llvm.ctpop.i32(i32 %282) #8
  %284 = trunc i32 %283 to i8
  %285 = and i8 %284, 1
  %286 = xor i8 %285, 1
  store i8 %286, i8* %18, align 1, !tbaa !2446
  %287 = xor i32 %277, %278
  %288 = lshr i32 %287, 4
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 1
  store i8 %290, i8* %19, align 1, !tbaa !2447
  %291 = icmp eq i32 %278, 0
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %20, align 1, !tbaa !2448
  %293 = lshr i32 %278, 31
  %294 = trunc i32 %293 to i8
  store i8 %294, i8* %21, align 1, !tbaa !2449
  %295 = lshr i32 %277, 31
  %296 = xor i32 %293, %295
  %297 = add nuw nsw i32 %296, %295
  %298 = icmp eq i32 %297, 2
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %22, align 1, !tbaa !2450
  %300 = sext i32 %278 to i64
  store i64 %300, i64* %RCX, align 8, !tbaa !2428
  %301 = shl nsw i64 %300, 2
  %302 = add i64 %301, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %303 = add i64 %210, 16
  store i64 %303, i64* %PC, align 8
  %304 = inttoptr i64 %302 to i32*
  %305 = load i32, i32* %304, align 4
  %306 = zext i32 %305 to i64
  store i64 %306, i64* %RAX, align 8, !tbaa !2428
  %307 = add i64 %210, 20
  store i64 %307, i64* %PC, align 8
  %308 = load i32, i32* %197, align 4
  %309 = sext i32 %308 to i64
  store i64 %309, i64* %RCX, align 8, !tbaa !2428
  %310 = shl nsw i64 %309, 2
  %311 = add i64 %310, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %312 = add i64 %210, 27
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %311 to i32*
  store i32 %305, i32* %313, align 4
  %314 = load i64, i64* %RBP, align 8
  %315 = add i64 %314, -8
  %316 = load i64, i64* %PC, align 8
  %317 = add i64 %316, 3
  store i64 %317, i64* %PC, align 8
  %318 = inttoptr i64 %315 to i32*
  %319 = load i32, i32* %318, align 4
  %320 = add i32 %319, -1
  %321 = zext i32 %320 to i64
  store i64 %321, i64* %RAX, align 8, !tbaa !2428
  %322 = icmp ne i32 %319, 0
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %17, align 1, !tbaa !2432
  %324 = and i32 %320, 255
  %325 = tail call i32 @llvm.ctpop.i32(i32 %324) #8
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  %328 = xor i8 %327, 1
  store i8 %328, i8* %18, align 1, !tbaa !2446
  %329 = xor i32 %319, 16
  %330 = xor i32 %320, %329
  %331 = lshr i32 %330, 4
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  store i8 %333, i8* %19, align 1, !tbaa !2447
  %334 = icmp eq i32 %320, 0
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %20, align 1, !tbaa !2448
  %336 = lshr i32 %320, 31
  %337 = trunc i32 %336 to i8
  store i8 %337, i8* %21, align 1, !tbaa !2449
  %338 = lshr i32 %319, 31
  %339 = xor i32 %336, %338
  %340 = xor i32 %336, 1
  %341 = add nuw nsw i32 %339, %340
  %342 = icmp eq i32 %341, 2
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %22, align 1, !tbaa !2450
  %344 = add i64 %316, 9
  store i64 %344, i64* %PC, align 8
  store i32 %320, i32* %318, align 4
  %345 = load i64, i64* %PC, align 8
  %346 = add i64 %345, -46
  store i64 %346, i64* %PC, align 8, !tbaa !2428
  br label %block_401abc

block_4019b2:                                     ; preds = %block_40198b
  %347 = add i64 %508, 7
  store i64 %347, i64* %PC, align 8
  store i32 238, i32* %482, align 4
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_4019b9

block_4019c3:                                     ; preds = %block_4019b9
  %350 = add i64 %477, 4
  store i64 %350, i64* %PC, align 8
  %351 = load i32, i32* %465, align 4
  %352 = sext i32 %351 to i64
  store i64 %352, i64* %RAX, align 8, !tbaa !2428
  %353 = shl nsw i64 %352, 2
  %354 = add i64 %353, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3184)
  %355 = add i64 %477, 11
  store i64 %355, i64* %PC, align 8
  %356 = inttoptr i64 %354 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4204) to i32*), align 4
  %359 = xor i32 %358, %357
  %360 = zext i32 %359 to i64
  store i64 %360, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  %361 = and i32 %359, 255
  %362 = tail call i32 @llvm.ctpop.i32(i32 %361) #8
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  %365 = xor i8 %364, 1
  store i8 %365, i8* %18, align 1, !tbaa !2446
  %366 = icmp eq i32 %359, 0
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %20, align 1, !tbaa !2448
  %368 = lshr i32 %359, 31
  %369 = trunc i32 %368 to i8
  store i8 %369, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  store i8 0, i8* %19, align 1, !tbaa !2447
  %370 = sext i32 %359 to i64
  store i64 %370, i64* %RAX, align 8, !tbaa !2428
  %371 = shl nsw i64 %370, 2
  %372 = add i64 %371, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %373 = add i64 %477, 28
  store i64 %373, i64* %PC, align 8
  %374 = inttoptr i64 %372 to i32*
  %375 = load i32, i32* %374, align 4
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %RCX, align 8, !tbaa !2428
  %377 = add i64 %462, -12
  %378 = add i64 %477, 31
  store i64 %378, i64* %PC, align 8
  %379 = inttoptr i64 %377 to i32*
  store i32 %375, i32* %379, align 4
  %380 = load i64, i64* %RBP, align 8
  %381 = add i64 %380, -12
  %382 = load i64, i64* %PC, align 8
  %383 = add i64 %382, 4
  store i64 %383, i64* %PC, align 8
  %384 = inttoptr i64 %381 to i32*
  %385 = load i32, i32* %384, align 4
  %386 = add i32 %385, 1
  %387 = icmp ne i32 %385, -1
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %17, align 1, !tbaa !2432
  %389 = and i32 %386, 255
  %390 = tail call i32 @llvm.ctpop.i32(i32 %389) #8
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  %393 = xor i8 %392, 1
  store i8 %393, i8* %18, align 1, !tbaa !2446
  %394 = xor i32 %385, 16
  %395 = xor i32 %386, %394
  %396 = lshr i32 %395, 4
  %397 = trunc i32 %396 to i8
  %398 = and i8 %397, 1
  store i8 %398, i8* %19, align 1, !tbaa !2447
  %399 = icmp eq i32 %386, 0
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %20, align 1, !tbaa !2448
  %401 = lshr i32 %386, 31
  %402 = trunc i32 %401 to i8
  store i8 %402, i8* %21, align 1, !tbaa !2449
  %403 = lshr i32 %385, 31
  %404 = xor i32 %403, 1
  %405 = xor i32 %401, %403
  %406 = add nuw nsw i32 %405, %404
  %407 = icmp eq i32 %406, 2
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %22, align 1, !tbaa !2450
  %.v14 = select i1 %399, i64 211, i64 10
  %409 = add i64 %382, %.v14
  %410 = add i64 %380, -8
  %411 = add i64 %409, 7
  store i64 %411, i64* %PC, align 8
  %412 = inttoptr i64 %410 to i32*
  store i32 15, i32* %412, align 4
  %.pre10 = load i64, i64* %PC, align 8
  br i1 %399, label %block_401abc, label %block_4019f3

block_401995:                                     ; preds = %block_40198b
  %413 = add i64 %508, 4
  store i64 %413, i64* %PC, align 8
  %414 = load i32, i32* %482, align 4
  %415 = sext i32 %414 to i64
  store i64 %415, i64* %RAX, align 8, !tbaa !2428
  %416 = shl nsw i64 %415, 2
  %417 = add i64 %416, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %418 = add i64 %508, 15
  store i64 %418, i64* %PC, align 8
  %419 = inttoptr i64 %417 to i32*
  store i32 0, i32* %419, align 4
  %420 = load i64, i64* %RBP, align 8
  %421 = add i64 %420, -4
  %422 = load i64, i64* %PC, align 8
  %423 = add i64 %422, 3
  store i64 %423, i64* %PC, align 8
  %424 = inttoptr i64 %421 to i32*
  %425 = load i32, i32* %424, align 4
  %426 = add i32 %425, 1
  %427 = zext i32 %426 to i64
  store i64 %427, i64* %RAX, align 8, !tbaa !2428
  %428 = icmp eq i32 %425, -1
  %429 = icmp eq i32 %426, 0
  %430 = or i1 %428, %429
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %17, align 1, !tbaa !2432
  %432 = and i32 %426, 255
  %433 = tail call i32 @llvm.ctpop.i32(i32 %432) #8
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  %436 = xor i8 %435, 1
  store i8 %436, i8* %18, align 1, !tbaa !2446
  %437 = xor i32 %425, %426
  %438 = lshr i32 %437, 4
  %439 = trunc i32 %438 to i8
  %440 = and i8 %439, 1
  store i8 %440, i8* %19, align 1, !tbaa !2447
  %441 = zext i1 %429 to i8
  store i8 %441, i8* %20, align 1, !tbaa !2448
  %442 = lshr i32 %426, 31
  %443 = trunc i32 %442 to i8
  store i8 %443, i8* %21, align 1, !tbaa !2449
  %444 = lshr i32 %425, 31
  %445 = xor i32 %442, %444
  %446 = add nuw nsw i32 %445, %442
  %447 = icmp eq i32 %446, 2
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %22, align 1, !tbaa !2450
  %449 = add i64 %422, 9
  store i64 %449, i64* %PC, align 8
  store i32 %426, i32* %424, align 4
  %450 = load i64, i64* %PC, align 8
  %451 = add i64 %450, -34
  store i64 %451, i64* %PC, align 8, !tbaa !2428
  br label %block_40198b

block_401b0d:                                     ; preds = %block_4019b9
  %452 = add i64 %477, 1
  store i64 %452, i64* %PC, align 8
  %453 = load i64, i64* %9, align 8, !tbaa !2428
  %454 = add i64 %453, 8
  %455 = inttoptr i64 %453 to i64*
  %456 = load i64, i64* %455, align 8
  store i64 %456, i64* %RBP, align 8, !tbaa !2428
  store i64 %454, i64* %9, align 8, !tbaa !2428
  %457 = add i64 %477, 2
  store i64 %457, i64* %PC, align 8
  %458 = inttoptr i64 %454 to i64*
  %459 = load i64, i64* %458, align 8
  store i64 %459, i64* %PC, align 8, !tbaa !2428
  %460 = add i64 %453, 16
  store i64 %460, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.3

block_4019b9:                                     ; preds = %block_4019b2, %block_401afa
  %461 = phi i64 [ %.pre2, %block_4019b2 ], [ %275, %block_401afa ]
  %MEMORY.3 = phi %struct.Memory* [ %2, %block_4019b2 ], [ %MEMORY.2, %block_401afa ]
  %462 = load i64, i64* %RBP, align 8
  %463 = add i64 %462, -4
  %464 = add i64 %461, 4
  store i64 %464, i64* %PC, align 8
  %465 = inttoptr i64 %463 to i32*
  %466 = load i32, i32* %465, align 4
  store i8 0, i8* %17, align 1, !tbaa !2432
  %467 = and i32 %466, 255
  %468 = tail call i32 @llvm.ctpop.i32(i32 %467) #8
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  %471 = xor i8 %470, 1
  store i8 %471, i8* %18, align 1, !tbaa !2446
  store i8 0, i8* %19, align 1, !tbaa !2447
  %472 = icmp eq i32 %466, 0
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %20, align 1, !tbaa !2448
  %474 = lshr i32 %466, 31
  %475 = trunc i32 %474 to i8
  store i8 %475, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  %476 = icmp ne i8 %475, 0
  %.v13 = select i1 %476, i64 340, i64 10
  %477 = add i64 %461, %.v13
  store i64 %477, i64* %PC, align 8, !tbaa !2428
  br i1 %476, label %block_401b0d, label %block_4019c3

block_40198b:                                     ; preds = %block_401995, %block_401980
  %478 = phi i64 [ %451, %block_401995 ], [ %.pre, %block_401980 ]
  %479 = load i64, i64* %RBP, align 8
  %480 = add i64 %479, -4
  %481 = add i64 %478, 4
  store i64 %481, i64* %PC, align 8
  %482 = inttoptr i64 %480 to i32*
  %483 = load i32, i32* %482, align 4
  %484 = add i32 %483, -16
  %485 = icmp ult i32 %483, 16
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %17, align 1, !tbaa !2432
  %487 = and i32 %484, 255
  %488 = tail call i32 @llvm.ctpop.i32(i32 %487) #8
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  %491 = xor i8 %490, 1
  store i8 %491, i8* %18, align 1, !tbaa !2446
  %492 = xor i32 %483, 16
  %493 = xor i32 %492, %484
  %494 = lshr i32 %493, 4
  %495 = trunc i32 %494 to i8
  %496 = and i8 %495, 1
  store i8 %496, i8* %19, align 1, !tbaa !2447
  %497 = icmp eq i32 %484, 0
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %20, align 1, !tbaa !2448
  %499 = lshr i32 %484, 31
  %500 = trunc i32 %499 to i8
  store i8 %500, i8* %21, align 1, !tbaa !2449
  %501 = lshr i32 %483, 31
  %502 = xor i32 %499, %501
  %503 = add nuw nsw i32 %502, %501
  %504 = icmp eq i32 %503, 2
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %22, align 1, !tbaa !2450
  %506 = icmp ne i8 %500, 0
  %507 = xor i1 %506, %504
  %.v = select i1 %507, i64 10, i64 39
  %508 = add i64 %478, %.v
  store i64 %508, i64* %PC, align 8, !tbaa !2428
  br i1 %507, label %block_401995, label %block_4019b2

block_401a57:                                     ; preds = %block_4019fd
  %509 = add i64 %242, 3
  store i64 %509, i64* %PC, align 8
  %510 = load i32, i32* %624, align 4
  %511 = add i32 %510, -1
  %512 = zext i32 %511 to i64
  store i64 %512, i64* %RAX, align 8, !tbaa !2428
  %513 = icmp eq i32 %510, 0
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %17, align 1, !tbaa !2432
  %515 = and i32 %511, 255
  %516 = tail call i32 @llvm.ctpop.i32(i32 %515) #8
  %517 = trunc i32 %516 to i8
  %518 = and i8 %517, 1
  %519 = xor i8 %518, 1
  store i8 %519, i8* %18, align 1, !tbaa !2446
  %520 = xor i32 %510, %511
  %521 = lshr i32 %520, 4
  %522 = trunc i32 %521 to i8
  %523 = and i8 %522, 1
  store i8 %523, i8* %19, align 1, !tbaa !2447
  %524 = icmp eq i32 %511, 0
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %20, align 1, !tbaa !2448
  %526 = lshr i32 %511, 31
  %527 = trunc i32 %526 to i8
  store i8 %527, i8* %21, align 1, !tbaa !2449
  %528 = lshr i32 %510, 31
  %529 = xor i32 %526, %528
  %530 = add nuw nsw i32 %529, %528
  %531 = icmp eq i32 %530, 2
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %22, align 1, !tbaa !2450
  %533 = sext i32 %511 to i64
  store i64 %533, i64* %RCX, align 8, !tbaa !2428
  %534 = shl nsw i64 %533, 2
  %535 = add i64 %534, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %536 = add i64 %242, 16
  store i64 %536, i64* %PC, align 8
  %537 = inttoptr i64 %535 to i32*
  %538 = load i32, i32* %537, align 4
  %539 = zext i32 %538 to i64
  store i64 %539, i64* %RAX, align 8, !tbaa !2428
  %540 = add i64 %242, 20
  store i64 %540, i64* %PC, align 8
  %541 = load i32, i32* %624, align 4
  %542 = sext i32 %541 to i64
  store i64 %542, i64* %RCX, align 8, !tbaa !2428
  %543 = shl nsw i64 %542, 2
  %544 = add i64 %543, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144)
  %545 = add i64 %242, 27
  store i64 %545, i64* %PC, align 8
  %546 = inttoptr i64 %544 to i32*
  store i32 %538, i32* %546, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_401a72

block_401a85:                                     ; preds = %block_4019f3
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %547 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 3104) to i32*), align 16
  %548 = zext i32 %547 to i64
  store i64 %548, i64* %RCX, align 8, !tbaa !2428
  %549 = add i64 %621, -12
  %550 = add i64 %637, 15
  store i64 %550, i64* %PC, align 8
  %551 = inttoptr i64 %549 to i32*
  %552 = load i32, i32* %551, align 4
  %553 = add i32 %552, %547
  %554 = zext i32 %553 to i64
  store i64 %554, i64* %RCX, align 8, !tbaa !2428
  %555 = icmp ult i32 %553, %547
  %556 = icmp ult i32 %553, %552
  %557 = or i1 %555, %556
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %17, align 1, !tbaa !2432
  %559 = and i32 %553, 255
  %560 = tail call i32 @llvm.ctpop.i32(i32 %559) #8
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  %563 = xor i8 %562, 1
  store i8 %563, i8* %18, align 1, !tbaa !2446
  %564 = xor i32 %552, %547
  %565 = xor i32 %564, %553
  %566 = lshr i32 %565, 4
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  store i8 %568, i8* %19, align 1, !tbaa !2447
  %569 = icmp eq i32 %553, 0
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %20, align 1, !tbaa !2448
  %571 = lshr i32 %553, 31
  %572 = trunc i32 %571 to i8
  store i8 %572, i8* %21, align 1, !tbaa !2449
  %573 = lshr i32 %547, 31
  %574 = lshr i32 %552, 31
  %575 = xor i32 %571, %573
  %576 = xor i32 %571, %574
  %577 = add nuw nsw i32 %575, %576
  %578 = icmp eq i32 %577, 2
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %22, align 1, !tbaa !2450
  %580 = add i64 %621, -20
  %581 = add i64 %637, 18
  store i64 %581, i64* %PC, align 8
  %582 = inttoptr i64 %580 to i32*
  store i32 255, i32* %582, align 4
  %583 = load i32, i32* %ECX, align 4
  %584 = zext i32 %583 to i64
  %585 = load i64, i64* %PC, align 8
  store i64 %584, i64* %RAX, align 8, !tbaa !2428
  %586 = sext i32 %583 to i64
  %587 = lshr i64 %586, 32
  store i64 %587, i64* %348, align 8, !tbaa !2428
  %588 = load i64, i64* %RBP, align 8
  %589 = add i64 %588, -20
  %590 = add i64 %585, 6
  store i64 %590, i64* %PC, align 8
  %591 = inttoptr i64 %589 to i32*
  %592 = load i32, i32* %591, align 4
  %593 = zext i32 %592 to i64
  store i64 %593, i64* %RCX, align 8, !tbaa !2428
  %594 = add i64 %585, 8
  store i64 %594, i64* %PC, align 8
  %595 = sext i32 %592 to i64
  %596 = shl nuw i64 %587, 32
  %597 = or i64 %596, %584
  %598 = sdiv i64 %597, %595
  %599 = shl i64 %598, 32
  %600 = ashr exact i64 %599, 32
  %601 = icmp eq i64 %598, %600
  br i1 %601, label %604, label %602

; <label>:602:                                    ; preds = %block_401a85
  %603 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %594, %struct.Memory* %MEMORY.5) #9
  %.pre8 = load i32, i32* %EDX, align 4
  %.pre9 = load i64, i64* %PC, align 8
  %.pre11.pre = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:604:                                    ; preds = %block_401a85
  %605 = srem i64 %597, %595
  %606 = and i64 %598, 4294967295
  store i64 %606, i64* %349, align 8, !tbaa !2428
  %607 = and i64 %605, 4294967295
  store i64 %607, i64* %348, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 0, i8* %18, align 1, !tbaa !2446
  store i8 0, i8* %19, align 1, !tbaa !2447
  store i8 0, i8* %20, align 1, !tbaa !2448
  store i8 0, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  %608 = trunc i64 %605 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %604, %602
  %.pre11 = phi i64 [ %.pre11.pre, %602 ], [ %588, %604 ]
  %609 = phi i64 [ %.pre9, %602 ], [ %594, %604 ]
  %610 = phi i32 [ %.pre8, %602 ], [ %608, %604 ]
  %611 = phi %struct.Memory* [ %603, %602 ], [ %MEMORY.5, %604 ]
  %612 = sext i32 %610 to i64
  store i64 %612, i64* %RSI, align 8, !tbaa !2428
  %613 = shl nsw i64 %612, 2
  %614 = add i64 %613, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %615 = add i64 %609, 10
  store i64 %615, i64* %PC, align 8
  %616 = inttoptr i64 %614 to i32*
  %617 = load i32, i32* %616, align 4
  %618 = zext i32 %617 to i64
  store i64 %618, i64* %RDX, align 8, !tbaa !2428
  store i32 %617, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 4144) to i32*), align 16
  %619 = add i64 %609, 91
  store i64 %619, i64* %PC, align 8, !tbaa !2428
  br label %block_401afa

block_4019f3:                                     ; preds = %block_4019c3, %block_401a72
  %620 = phi i64 [ %55, %block_401a72 ], [ %.pre10, %block_4019c3 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.0, %block_401a72 ], [ %MEMORY.3, %block_4019c3 ]
  %621 = load i64, i64* %RBP, align 8
  %622 = add i64 %621, -8
  %623 = add i64 %620, 4
  store i64 %623, i64* %PC, align 8
  %624 = inttoptr i64 %622 to i32*
  %625 = load i32, i32* %624, align 4
  store i8 0, i8* %17, align 1, !tbaa !2432
  %626 = and i32 %625, 255
  %627 = tail call i32 @llvm.ctpop.i32(i32 %626) #8
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = xor i8 %629, 1
  store i8 %630, i8* %18, align 1, !tbaa !2446
  store i8 0, i8* %19, align 1, !tbaa !2447
  %631 = icmp eq i32 %625, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %20, align 1, !tbaa !2448
  %633 = lshr i32 %625, 31
  %634 = trunc i32 %633 to i8
  store i8 %634, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %22, align 1, !tbaa !2450
  %635 = icmp ne i8 %634, 0
  %636 = or i1 %631, %635
  %.v15 = select i1 %636, i64 146, i64 10
  %637 = add i64 %620, %.v15
  store i64 %637, i64* %PC, align 8, !tbaa !2428
  br i1 %636, label %block_401a85, label %block_4019fd
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
  %10 = load i64, i64* %RSP, align 8, !tbaa !2428
  %11 = add i64 %10, -8
  %12 = inttoptr i64 %11 to i64*
  store i64 %8, i64* %12, align 8
  %13 = load i64, i64* %PC, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2428
  %14 = add i64 %10, -2616
  store i64 %14, i64* %RSP, align 8, !tbaa !2428
  %15 = icmp ult i64 %11, 2608
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
  %25 = xor i64 %11, 16
  %26 = xor i64 %25, %14
  %27 = lshr i64 %26, 4
  %28 = trunc i64 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1, !tbaa !2447
  %31 = icmp eq i64 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1, !tbaa !2448
  %34 = lshr i64 %14, 63
  %35 = trunc i64 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1, !tbaa !2449
  %37 = lshr i64 %11, 63
  %38 = xor i64 %34, %37
  %39 = add nuw nsw i64 %38, %37
  %40 = icmp eq i64 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1, !tbaa !2450
  %43 = add i64 %10, -1500
  %44 = add i64 %13, 20
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %43 to i32*
  store i32 0, i32* %45, align 4
  %46 = load i64, i64* %RBP, align 8
  %47 = add i64 %46, -1496
  %48 = load i64, i64* %PC, align 8
  %49 = add i64 %48, 10
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %47 to i32*
  store i32 0, i32* %50, align 4
  %51 = load i64, i64* %RBP, align 8
  %52 = add i64 %51, -4
  %53 = load i64, i64* %PC, align 8
  %54 = add i64 %53, 7
  store i64 %54, i64* %PC, align 8
  %55 = inttoptr i64 %52 to i32*
  store i32 1, i32* %55, align 4
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_400936

block_400ffe:                                     ; preds = %block_400fcb, %block_400fe4
  %58 = phi i64 [ %4163, %block_400fcb ], [ %.pre49, %block_400fe4 ]
  %59 = load i64, i64* %RBP, align 8
  %60 = add i64 %59, -2709
  %61 = add i64 %58, 6
  store i64 %61, i64* %PC, align 8
  %62 = inttoptr i64 %60 to i8*
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %AL, align 1, !tbaa !2451
  %64 = and i8 %63, 1
  store i8 0, i8* %17, align 1, !tbaa !2432
  %65 = zext i8 %64 to i32
  %66 = tail call i32 @llvm.ctpop.i32(i32 %65) #8
  %67 = trunc i32 %66 to i8
  %68 = xor i8 %67, 1
  store i8 %68, i8* %24, align 1, !tbaa !2446
  %69 = xor i8 %64, 1
  store i8 %69, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  store i8 0, i8* %30, align 1, !tbaa !2447
  %70 = icmp eq i8 %69, 0
  %.v125 = select i1 %70, i64 -1349, i64 14
  %71 = add i64 %58, %.v125
  store i64 %71, i64* %PC, align 8, !tbaa !2428
  br i1 %70, label %block_400ab9, label %block_40100c

block_4013f1:                                     ; preds = %block_401371, %block_40135f, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6
  %72 = phi i64 [ %4643, %block_40135f ], [ %5621, %block_401371 ], [ %.pre70, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.54, %block_40135f ], [ %MEMORY.54, %block_401371 ], [ %1028, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6 ]
  %73 = load i64, i64* %RBP, align 8
  %74 = add i64 %73, -8
  %75 = add i64 %72, 8
  store i64 %75, i64* %PC, align 8
  %76 = inttoptr i64 %74 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = add i32 %77, 1
  %79 = zext i32 %78 to i64
  store i64 %79, i64* %RAX, align 8, !tbaa !2428
  %80 = icmp eq i32 %77, -1
  %81 = icmp eq i32 %78, 0
  %82 = or i1 %80, %81
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %17, align 1, !tbaa !2432
  %84 = and i32 %78, 255
  %85 = tail call i32 @llvm.ctpop.i32(i32 %84) #8
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  store i8 %88, i8* %24, align 1, !tbaa !2446
  %89 = xor i32 %77, %78
  %90 = lshr i32 %89, 4
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  store i8 %92, i8* %30, align 1, !tbaa !2447
  %93 = zext i1 %81 to i8
  store i8 %93, i8* %33, align 1, !tbaa !2448
  %94 = lshr i32 %78, 31
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %36, align 1, !tbaa !2449
  %96 = lshr i32 %77, 31
  %97 = xor i32 %94, %96
  %98 = add nuw nsw i32 %97, %94
  %99 = icmp eq i32 %98, 2
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %42, align 1, !tbaa !2450
  %101 = add i64 %72, 14
  store i64 %101, i64* %PC, align 8
  store i32 %78, i32* %76, align 4
  %102 = load i64, i64* %PC, align 8
  %103 = add i64 %102, -172
  store i64 %103, i64* %PC, align 8, !tbaa !2428
  br label %block_401353

block_400be5:                                     ; preds = %block_400c22, %block_400bdf
  %104 = phi i64 [ %.pre30, %block_400bdf ], [ %6077, %block_400c22 ]
  %105 = phi i64 [ %.pre29, %block_400bdf ], [ %6059, %block_400c22 ]
  %106 = add i64 %105, -8
  %107 = add i64 %104, 3
  store i64 %107, i64* %PC, align 8
  %108 = inttoptr i64 %106 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = add i32 %109, -1
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %RAX, align 8, !tbaa !2428
  %112 = icmp ne i32 %109, 0
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %17, align 1, !tbaa !2432
  %114 = and i32 %110, 255
  %115 = tail call i32 @llvm.ctpop.i32(i32 %114) #8
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = xor i8 %117, 1
  store i8 %118, i8* %24, align 1, !tbaa !2446
  %119 = xor i32 %109, 16
  %120 = xor i32 %110, %119
  %121 = lshr i32 %120, 4
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  store i8 %123, i8* %30, align 1, !tbaa !2447
  %124 = icmp eq i32 %110, 0
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %33, align 1, !tbaa !2448
  %126 = lshr i32 %110, 31
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %36, align 1, !tbaa !2449
  %128 = lshr i32 %109, 31
  %129 = xor i32 %126, %128
  %130 = xor i32 %126, 1
  %131 = add nuw nsw i32 %129, %130
  %132 = icmp eq i32 %131, 2
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %42, align 1, !tbaa !2450
  %134 = add i64 %104, 9
  store i64 %134, i64* %PC, align 8
  store i32 %110, i32* %108, align 4
  %135 = load i64, i64* %RBP, align 8
  %136 = add i64 %135, -8
  %137 = load i64, i64* %PC, align 8
  %138 = add i64 %137, 4
  store i64 %138, i64* %PC, align 8
  %139 = inttoptr i64 %136 to i32*
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %RCX, align 8, !tbaa !2428
  %142 = shl nsw i64 %141, 2
  %143 = add i64 %135, -1248
  %144 = add i64 %143, %142
  %145 = add i64 %137, 12
  store i64 %145, i64* %PC, align 8
  %146 = inttoptr i64 %144 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = add i32 %147, 1
  %149 = icmp ne i32 %147, -1
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %17, align 1, !tbaa !2432
  %151 = and i32 %148, 255
  %152 = tail call i32 @llvm.ctpop.i32(i32 %151) #8
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  %155 = xor i8 %154, 1
  store i8 %155, i8* %24, align 1, !tbaa !2446
  %156 = xor i32 %147, 16
  %157 = xor i32 %148, %156
  %158 = lshr i32 %157, 4
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  store i8 %160, i8* %30, align 1, !tbaa !2447
  %161 = icmp eq i32 %148, 0
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %33, align 1, !tbaa !2448
  %163 = lshr i32 %148, 31
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %36, align 1, !tbaa !2449
  %165 = lshr i32 %147, 31
  %166 = xor i32 %165, 1
  %167 = xor i32 %163, %165
  %168 = add nuw nsw i32 %167, %166
  %169 = icmp eq i32 %168, 2
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %42, align 1, !tbaa !2450
  %.v166 = select i1 %161, i64 52, i64 18
  %171 = add i64 %137, %.v166
  store i64 %171, i64* %PC, align 8, !tbaa !2428
  br i1 %161, label %block_400c22, label %block_400c00

block_400fe4:                                     ; preds = %block_400fcb
  %172 = load i64, i64* %RBP, align 8
  %173 = add i64 %172, -12
  %174 = add i64 %4163, 3
  store i64 %174, i64* %PC, align 8
  %175 = inttoptr i64 %173 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = add i32 %176, 1
  %178 = zext i32 %177 to i64
  store i64 %178, i64* %RAX, align 8, !tbaa !2428
  %179 = icmp eq i32 %176, -1
  %180 = icmp eq i32 %177, 0
  %181 = or i1 %179, %180
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %17, align 1, !tbaa !2432
  %183 = and i32 %177, 255
  %184 = tail call i32 @llvm.ctpop.i32(i32 %183) #8
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  %187 = xor i8 %186, 1
  store i8 %187, i8* %24, align 1, !tbaa !2446
  %188 = xor i32 %176, %177
  %189 = lshr i32 %188, 4
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  store i8 %191, i8* %30, align 1, !tbaa !2447
  %192 = zext i1 %180 to i8
  store i8 %192, i8* %33, align 1, !tbaa !2448
  %193 = lshr i32 %177, 31
  %194 = trunc i32 %193 to i8
  store i8 %194, i8* %36, align 1, !tbaa !2449
  %195 = lshr i32 %176, 31
  %196 = xor i32 %193, %195
  %197 = add nuw nsw i32 %196, %193
  %198 = icmp eq i32 %197, 2
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %42, align 1, !tbaa !2450
  %200 = sext i32 %177 to i64
  store i64 %200, i64* %RCX, align 8, !tbaa !2428
  %201 = shl nsw i64 %200, 2
  %202 = add i64 %172, -1328
  %203 = add i64 %202, %201
  %204 = add i64 %4163, 17
  store i64 %204, i64* %PC, align 8
  %205 = inttoptr i64 %203 to i32*
  %206 = load i32, i32* %205, align 4
  %207 = add i32 %206, -8
  %208 = icmp ult i32 %206, 8
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %17, align 1, !tbaa !2432
  %210 = and i32 %207, 255
  %211 = tail call i32 @llvm.ctpop.i32(i32 %210) #8
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  %214 = xor i8 %213, 1
  store i8 %214, i8* %24, align 1, !tbaa !2446
  %215 = xor i32 %206, %207
  %216 = lshr i32 %215, 4
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 1
  store i8 %218, i8* %30, align 1, !tbaa !2447
  %219 = icmp eq i32 %207, 0
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %33, align 1, !tbaa !2448
  %221 = lshr i32 %207, 31
  %222 = trunc i32 %221 to i8
  store i8 %222, i8* %36, align 1, !tbaa !2449
  %223 = lshr i32 %206, 31
  %224 = xor i32 %221, %223
  %225 = add nuw nsw i32 %224, %223
  %226 = icmp eq i32 %225, 2
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %42, align 1, !tbaa !2450
  %228 = icmp ne i8 %222, 0
  %229 = xor i1 %228, %226
  %230 = or i1 %219, %229
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %DL, align 1, !tbaa !2451
  %232 = add i64 %172, -2709
  %233 = add i64 %4163, 26
  store i64 %233, i64* %PC, align 8
  %234 = inttoptr i64 %232 to i8*
  store i8 %231, i8* %234, align 1
  %.pre49 = load i64, i64* %PC, align 8
  br label %block_400ffe

block_4015dc:                                     ; preds = %block_4015c8
  %235 = add i64 %5871, 3
  store i64 %235, i64* %PC, align 8
  %236 = load i32, i32* %5831, align 4
  %237 = zext i32 %236 to i64
  store i64 %237, i64* %RAX, align 8, !tbaa !2428
  %238 = add i64 %5828, -4
  %239 = add i64 %5871, 6
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = sub i32 %236, %241
  %243 = icmp ult i32 %236, %241
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %17, align 1, !tbaa !2432
  %245 = and i32 %242, 255
  %246 = tail call i32 @llvm.ctpop.i32(i32 %245) #8
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  store i8 %249, i8* %24, align 1, !tbaa !2446
  %250 = xor i32 %241, %236
  %251 = xor i32 %250, %242
  %252 = lshr i32 %251, 4
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  store i8 %254, i8* %30, align 1, !tbaa !2447
  %255 = icmp eq i32 %242, 0
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %33, align 1, !tbaa !2448
  %257 = lshr i32 %242, 31
  %258 = trunc i32 %257 to i8
  store i8 %258, i8* %36, align 1, !tbaa !2449
  %259 = lshr i32 %236, 31
  %260 = lshr i32 %241, 31
  %261 = xor i32 %260, %259
  %262 = xor i32 %257, %259
  %263 = add nuw nsw i32 %262, %261
  %264 = icmp eq i32 %263, 2
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %42, align 1, !tbaa !2450
  %.v158 = select i1 %255, i64 85, i64 12
  %266 = add i64 %5871, %.v158
  store i64 %266, i64* %PC, align 8, !tbaa !2428
  br i1 %255, label %block_401631, label %block_4015e8

block_4017d4:                                     ; preds = %block_401825, %block_4017cd
  %267 = phi i64 [ %.pre97, %block_4017cd ], [ %5794, %block_401825 ]
  %268 = load i64, i64* %RBP, align 8
  %269 = add i64 %268, -4
  %270 = add i64 %267, 7
  store i64 %270, i64* %PC, align 8
  %271 = inttoptr i64 %269 to i32*
  %272 = load i32, i32* %271, align 4
  %273 = add i32 %272, -255
  %274 = icmp ult i32 %272, 255
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %17, align 1, !tbaa !2432
  %276 = and i32 %273, 255
  %277 = tail call i32 @llvm.ctpop.i32(i32 %276) #8
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  %280 = xor i8 %279, 1
  store i8 %280, i8* %24, align 1, !tbaa !2446
  %281 = xor i32 %272, 16
  %282 = xor i32 %281, %273
  %283 = lshr i32 %282, 4
  %284 = trunc i32 %283 to i8
  %285 = and i8 %284, 1
  store i8 %285, i8* %30, align 1, !tbaa !2447
  %286 = icmp eq i32 %273, 0
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %33, align 1, !tbaa !2448
  %288 = lshr i32 %273, 31
  %289 = trunc i32 %288 to i8
  store i8 %289, i8* %36, align 1, !tbaa !2449
  %290 = lshr i32 %272, 31
  %291 = xor i32 %288, %290
  %292 = add nuw nsw i32 %291, %290
  %293 = icmp eq i32 %292, 2
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %42, align 1, !tbaa !2450
  %295 = icmp ne i8 %289, 0
  %296 = xor i1 %295, %293
  %.v176 = select i1 %296, i64 13, i64 100
  %297 = add i64 %267, %.v176
  store i64 %297, i64* %PC, align 8, !tbaa !2428
  br i1 %296, label %block_4017e1, label %block_401838

block_4017c8:                                     ; preds = %block_401753, %block_4017c3
  %.sink108 = phi i64 [ %3830, %block_401753 ], [ %3411, %block_4017c3 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.36, %block_401753 ], [ %MEMORY.40, %block_4017c3 ]
  store i64 %.sink108, i64* %PC, align 8, !tbaa !2428
  %298 = add i64 %.sink108, 117
  br label %block_40183d

block_400bdf:                                     ; preds = %block_400bc2
  %299 = add i64 %879, 3
  store i64 %299, i64* %PC, align 8
  %300 = load i32, i32* %866, align 4
  %301 = zext i32 %300 to i64
  store i64 %301, i64* %RAX, align 8, !tbaa !2428
  %302 = add i64 %3008, -8
  %303 = add i64 %879, 6
  store i64 %303, i64* %PC, align 8
  %304 = inttoptr i64 %302 to i32*
  store i32 %300, i32* %304, align 4
  %.pre29 = load i64, i64* %RBP, align 8
  %.pre30 = load i64, i64* %PC, align 8
  br label %block_400be5

block_4009ea:                                     ; preds = %block_4009e0, %block_4009ce
  %305 = phi i64 [ %.pre22, %block_4009e0 ], [ %1111, %block_4009ce ]
  %306 = phi i64 [ %.pre21, %block_4009e0 ], [ %1517, %block_4009ce ]
  %307 = add i64 %306, -4
  %308 = add i64 %305, 4
  store i64 %308, i64* %PC, align 8
  %309 = inttoptr i64 %307 to i32*
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  store i64 %311, i64* %RAX, align 8, !tbaa !2428
  %312 = shl nsw i64 %311, 2
  %313 = add i64 %306, -1488
  %314 = add i64 %313, %312
  %315 = add i64 %305, 12
  store i64 %315, i64* %PC, align 8
  %316 = inttoptr i64 %314 to i32*
  %317 = load i32, i32* %316, align 4
  %318 = sext i32 %317 to i64
  store i64 %318, i64* %RAX, align 8, !tbaa !2428
  %319 = shl nsw i64 %318, 2
  %320 = add i64 %319, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %321 = add i64 %305, 19
  store i64 %321, i64* %PC, align 8
  %322 = inttoptr i64 %320 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RCX, align 8, !tbaa !2428
  %325 = add i64 %305, 23
  store i64 %325, i64* %PC, align 8
  %326 = load i32, i32* %309, align 4
  %327 = sext i32 %326 to i64
  store i64 %327, i64* %RAX, align 8, !tbaa !2428
  %328 = shl nsw i64 %327, 2
  %329 = add i64 %313, %328
  %330 = add i64 %305, 30
  store i64 %330, i64* %PC, align 8
  %331 = inttoptr i64 %329 to i32*
  store i32 %323, i32* %331, align 4
  %332 = load i64, i64* %RBP, align 8
  %333 = add i64 %332, -4
  %334 = load i64, i64* %PC, align 8
  %335 = add i64 %334, 3
  store i64 %335, i64* %PC, align 8
  %336 = inttoptr i64 %333 to i32*
  %337 = load i32, i32* %336, align 4
  %338 = add i32 %337, 1
  %339 = zext i32 %338 to i64
  store i64 %339, i64* %RAX, align 8, !tbaa !2428
  %340 = icmp eq i32 %337, -1
  %341 = icmp eq i32 %338, 0
  %342 = or i1 %340, %341
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %17, align 1, !tbaa !2432
  %344 = and i32 %338, 255
  %345 = tail call i32 @llvm.ctpop.i32(i32 %344) #8
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = xor i8 %347, 1
  store i8 %348, i8* %24, align 1, !tbaa !2446
  %349 = xor i32 %337, %338
  %350 = lshr i32 %349, 4
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  store i8 %352, i8* %30, align 1, !tbaa !2447
  %353 = zext i1 %341 to i8
  store i8 %353, i8* %33, align 1, !tbaa !2448
  %354 = lshr i32 %338, 31
  %355 = trunc i32 %354 to i8
  store i8 %355, i8* %36, align 1, !tbaa !2449
  %356 = lshr i32 %337, 31
  %357 = xor i32 %354, %356
  %358 = add nuw nsw i32 %357, %354
  %359 = icmp eq i32 %358, 2
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %42, align 1, !tbaa !2450
  %361 = add i64 %334, 9
  store i64 %361, i64* %PC, align 8
  store i32 %338, i32* %336, align 4
  %362 = load i64, i64* %PC, align 8
  %363 = add i64 %362, -219
  store i64 %363, i64* %PC, align 8, !tbaa !2428
  br label %block_400936

block_400dbf:                                     ; preds = %block_400dab
  %364 = add i64 %2537, -1168
  store i64 %364, i64* %RAX, align 8, !tbaa !2428
  %365 = add i64 %2580, 11
  store i64 %365, i64* %PC, align 8
  %366 = load i32, i32* %2545, align 4
  %367 = sext i32 %366 to i64
  %368 = shl nsw i64 %367, 6
  store i64 %368, i64* %RCX, align 8, !tbaa !2428
  %369 = lshr i64 %367, 57
  %370 = and i64 %369, 1
  %371 = add i64 %368, %364
  store i64 %371, i64* %RDX, align 8, !tbaa !2428
  %372 = icmp ult i64 %371, %364
  %373 = icmp ult i64 %371, %368
  %374 = or i1 %372, %373
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %17, align 1, !tbaa !2432
  %376 = trunc i64 %371 to i32
  %377 = and i32 %376, 255
  %378 = tail call i32 @llvm.ctpop.i32(i32 %377) #8
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  %381 = xor i8 %380, 1
  store i8 %381, i8* %24, align 1, !tbaa !2446
  %382 = xor i64 %364, %371
  %383 = lshr i64 %382, 4
  %384 = trunc i64 %383 to i8
  %385 = and i8 %384, 1
  store i8 %385, i8* %30, align 1, !tbaa !2447
  %386 = icmp eq i64 %371, 0
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %33, align 1, !tbaa !2448
  %388 = lshr i64 %371, 63
  %389 = trunc i64 %388 to i8
  store i8 %389, i8* %36, align 1, !tbaa !2449
  %390 = lshr i64 %364, 63
  %391 = xor i64 %388, %390
  %392 = xor i64 %388, %370
  %393 = add nuw nsw i64 %391, %392
  %394 = icmp eq i64 %393, 2
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %42, align 1, !tbaa !2450
  %396 = add i64 %2580, 25
  store i64 %396, i64* %PC, align 8
  %397 = load i32, i32* %2540, align 4
  %398 = sext i32 %397 to i64
  store i64 %398, i64* %RCX, align 8, !tbaa !2428
  %399 = shl nsw i64 %398, 2
  %400 = add i64 %399, %371
  %401 = add i64 %2580, 28
  store i64 %401, i64* %PC, align 8
  %402 = inttoptr i64 %400 to i32*
  %403 = load i32, i32* %402, align 4
  %404 = zext i32 %403 to i64
  store i64 %404, i64* %RSI, align 8, !tbaa !2428
  %405 = add i64 %2580, 31
  store i64 %405, i64* %PC, align 8
  %406 = load i32, i32* %2545, align 4
  %407 = add i32 %406, 1
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RDI, align 8, !tbaa !2428
  %409 = sext i32 %407 to i64
  %410 = shl nsw i64 %409, 6
  store i64 %410, i64* %RCX, align 8, !tbaa !2428
  %411 = lshr i64 %409, 57
  %412 = and i64 %411, 1
  %413 = load i64, i64* %RAX, align 8
  %414 = add i64 %410, %413
  store i64 %414, i64* %RDX, align 8, !tbaa !2428
  %415 = icmp ult i64 %414, %413
  %416 = icmp ult i64 %414, %410
  %417 = or i1 %415, %416
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %17, align 1, !tbaa !2432
  %419 = trunc i64 %414 to i32
  %420 = and i32 %419, 255
  %421 = tail call i32 @llvm.ctpop.i32(i32 %420) #8
  %422 = trunc i32 %421 to i8
  %423 = and i8 %422, 1
  %424 = xor i8 %423, 1
  store i8 %424, i8* %24, align 1, !tbaa !2446
  %425 = xor i64 %413, %414
  %426 = lshr i64 %425, 4
  %427 = trunc i64 %426 to i8
  %428 = and i8 %427, 1
  store i8 %428, i8* %30, align 1, !tbaa !2447
  %429 = icmp eq i64 %414, 0
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %33, align 1, !tbaa !2448
  %431 = lshr i64 %414, 63
  %432 = trunc i64 %431 to i8
  store i8 %432, i8* %36, align 1, !tbaa !2449
  %433 = lshr i64 %413, 63
  %434 = xor i64 %431, %433
  %435 = xor i64 %431, %412
  %436 = add nuw nsw i64 %434, %435
  %437 = icmp eq i64 %436, 2
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %42, align 1, !tbaa !2450
  %439 = load i64, i64* %RBP, align 8
  %440 = add i64 %439, -4
  %441 = add i64 %2580, 51
  store i64 %441, i64* %PC, align 8
  %442 = inttoptr i64 %440 to i32*
  %443 = load i32, i32* %442, align 4
  %444 = sext i32 %443 to i64
  store i64 %444, i64* %RCX, align 8, !tbaa !2428
  %445 = load i64, i64* %RSI, align 8
  %446 = shl nsw i64 %444, 2
  %447 = add i64 %446, %414
  %448 = add i64 %2580, 54
  store i64 %448, i64* %PC, align 8
  %449 = trunc i64 %445 to i32
  %450 = inttoptr i64 %447 to i32*
  %451 = load i32, i32* %450, align 4
  %452 = xor i32 %451, %449
  %453 = zext i32 %452 to i64
  store i64 %453, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  %454 = and i32 %452, 255
  %455 = tail call i32 @llvm.ctpop.i32(i32 %454) #8
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  %458 = xor i8 %457, 1
  store i8 %458, i8* %24, align 1, !tbaa !2446
  %459 = icmp eq i32 %452, 0
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %33, align 1, !tbaa !2448
  %461 = lshr i32 %452, 31
  %462 = trunc i32 %461 to i8
  store i8 %462, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  store i8 0, i8* %30, align 1, !tbaa !2447
  %463 = add i64 %2580, 57
  store i64 %463, i64* %PC, align 8
  store i32 %452, i32* %450, align 4
  %464 = load i64, i64* %RBP, align 8
  %465 = add i64 %464, -12
  %466 = load i64, i64* %PC, align 8
  %467 = add i64 %466, 4
  store i64 %467, i64* %PC, align 8
  %468 = inttoptr i64 %465 to i32*
  %469 = load i32, i32* %468, align 4
  %470 = sext i32 %469 to i64
  %471 = shl nsw i64 %470, 6
  store i64 %471, i64* %RCX, align 8, !tbaa !2428
  %472 = lshr i64 %470, 57
  %473 = and i64 %472, 1
  %474 = load i64, i64* %RAX, align 8
  %475 = add i64 %471, %474
  store i64 %475, i64* %RDX, align 8, !tbaa !2428
  %476 = icmp ult i64 %475, %474
  %477 = icmp ult i64 %475, %471
  %478 = or i1 %476, %477
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %17, align 1, !tbaa !2432
  %480 = trunc i64 %475 to i32
  %481 = and i32 %480, 255
  %482 = tail call i32 @llvm.ctpop.i32(i32 %481) #8
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  %485 = xor i8 %484, 1
  store i8 %485, i8* %24, align 1, !tbaa !2446
  %486 = xor i64 %474, %475
  %487 = lshr i64 %486, 4
  %488 = trunc i64 %487 to i8
  %489 = and i8 %488, 1
  store i8 %489, i8* %30, align 1, !tbaa !2447
  %490 = icmp eq i64 %475, 0
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %33, align 1, !tbaa !2448
  %492 = lshr i64 %475, 63
  %493 = trunc i64 %492 to i8
  store i8 %493, i8* %36, align 1, !tbaa !2449
  %494 = lshr i64 %474, 63
  %495 = xor i64 %492, %494
  %496 = xor i64 %492, %473
  %497 = add nuw nsw i64 %495, %496
  %498 = icmp eq i64 %497, 2
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %42, align 1, !tbaa !2450
  %500 = add i64 %464, -4
  %501 = add i64 %466, 18
  store i64 %501, i64* %PC, align 8
  %502 = inttoptr i64 %500 to i32*
  %503 = load i32, i32* %502, align 4
  %504 = sext i32 %503 to i64
  store i64 %504, i64* %RCX, align 8, !tbaa !2428
  %505 = shl nsw i64 %504, 2
  %506 = add i64 %505, %475
  %507 = add i64 %466, 22
  store i64 %507, i64* %PC, align 8
  %508 = inttoptr i64 %506 to i32*
  %509 = load i32, i32* %508, align 4
  %510 = sext i32 %509 to i64
  store i64 %510, i64* %RCX, align 8, !tbaa !2428
  %511 = shl nsw i64 %510, 2
  %512 = add i64 %511, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %513 = add i64 %466, 29
  store i64 %513, i64* %PC, align 8
  %514 = inttoptr i64 %512 to i32*
  %515 = load i32, i32* %514, align 4
  %516 = zext i32 %515 to i64
  store i64 %516, i64* %RSI, align 8, !tbaa !2428
  %517 = add i64 %466, 33
  store i64 %517, i64* %PC, align 8
  %518 = load i32, i32* %468, align 4
  %519 = sext i32 %518 to i64
  %520 = shl nsw i64 %519, 6
  store i64 %520, i64* %RCX, align 8, !tbaa !2428
  %521 = lshr i64 %519, 57
  %522 = and i64 %521, 1
  %523 = add i64 %520, %474
  store i64 %523, i64* %RAX, align 8, !tbaa !2428
  %524 = icmp ult i64 %523, %474
  %525 = icmp ult i64 %523, %520
  %526 = or i1 %524, %525
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %17, align 1, !tbaa !2432
  %528 = trunc i64 %523 to i32
  %529 = and i32 %528, 255
  %530 = tail call i32 @llvm.ctpop.i32(i32 %529) #8
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  store i8 %533, i8* %24, align 1, !tbaa !2446
  %534 = xor i64 %474, %523
  %535 = lshr i64 %534, 4
  %536 = trunc i64 %535 to i8
  %537 = and i8 %536, 1
  store i8 %537, i8* %30, align 1, !tbaa !2447
  %538 = icmp eq i64 %523, 0
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %33, align 1, !tbaa !2448
  %540 = lshr i64 %523, 63
  %541 = trunc i64 %540 to i8
  store i8 %541, i8* %36, align 1, !tbaa !2449
  %542 = xor i64 %540, %494
  %543 = xor i64 %540, %522
  %544 = add nuw nsw i64 %542, %543
  %545 = icmp eq i64 %544, 2
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %42, align 1, !tbaa !2450
  %547 = load i64, i64* %RBP, align 8
  %548 = add i64 %547, -4
  %549 = add i64 %466, 44
  store i64 %549, i64* %PC, align 8
  %550 = inttoptr i64 %548 to i32*
  %551 = load i32, i32* %550, align 4
  %552 = sext i32 %551 to i64
  store i64 %552, i64* %RCX, align 8, !tbaa !2428
  %553 = shl nsw i64 %552, 2
  %554 = add i64 %553, %523
  %555 = add i64 %466, 47
  store i64 %555, i64* %PC, align 8
  %556 = inttoptr i64 %554 to i32*
  store i32 %515, i32* %556, align 4
  %557 = load i64, i64* %RBP, align 8
  %558 = add i64 %557, -4
  %559 = load i64, i64* %PC, align 8
  %560 = add i64 %559, 3
  store i64 %560, i64* %PC, align 8
  %561 = inttoptr i64 %558 to i32*
  %562 = load i32, i32* %561, align 4
  %563 = add i32 %562, 1
  %564 = zext i32 %563 to i64
  store i64 %564, i64* %RAX, align 8, !tbaa !2428
  %565 = icmp eq i32 %562, -1
  %566 = icmp eq i32 %563, 0
  %567 = or i1 %565, %566
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %17, align 1, !tbaa !2432
  %569 = and i32 %563, 255
  %570 = tail call i32 @llvm.ctpop.i32(i32 %569) #8
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  %573 = xor i8 %572, 1
  store i8 %573, i8* %24, align 1, !tbaa !2446
  %574 = xor i32 %562, %563
  %575 = lshr i32 %574, 4
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  store i8 %577, i8* %30, align 1, !tbaa !2447
  %578 = zext i1 %566 to i8
  store i8 %578, i8* %33, align 1, !tbaa !2448
  %579 = lshr i32 %563, 31
  %580 = trunc i32 %579 to i8
  store i8 %580, i8* %36, align 1, !tbaa !2449
  %581 = lshr i32 %562, 31
  %582 = xor i32 %579, %581
  %583 = add nuw nsw i32 %582, %579
  %584 = icmp eq i32 %583, 2
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %42, align 1, !tbaa !2450
  %586 = add i64 %559, 9
  store i64 %586, i64* %PC, align 8
  store i32 %563, i32* %561, align 4
  %587 = load i64, i64* %PC, align 8
  %588 = add i64 %587, -133
  store i64 %588, i64* %PC, align 8, !tbaa !2428
  br label %block_400dab

block_4009bb:                                     ; preds = %block_400963, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5
  %589 = phi i64 [ %1517, %block_400963 ], [ %.pre20, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5 ]
  %590 = phi i64 [ %5826, %block_400963 ], [ %.pre19, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.10, %block_400963 ], [ %1397, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5 ]
  %591 = add i64 %589, -8
  %592 = add i64 %590, 8
  store i64 %592, i64* %PC, align 8
  %593 = inttoptr i64 %591 to i32*
  %594 = load i32, i32* %593, align 4
  %595 = add i32 %594, 1
  %596 = zext i32 %595 to i64
  store i64 %596, i64* %RAX, align 8, !tbaa !2428
  %597 = icmp eq i32 %594, -1
  %598 = icmp eq i32 %595, 0
  %599 = or i1 %597, %598
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %17, align 1, !tbaa !2432
  %601 = and i32 %595, 255
  %602 = tail call i32 @llvm.ctpop.i32(i32 %601) #8
  %603 = trunc i32 %602 to i8
  %604 = and i8 %603, 1
  %605 = xor i8 %604, 1
  store i8 %605, i8* %24, align 1, !tbaa !2446
  %606 = xor i32 %594, %595
  %607 = lshr i32 %606, 4
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  store i8 %609, i8* %30, align 1, !tbaa !2447
  %610 = zext i1 %598 to i8
  store i8 %610, i8* %33, align 1, !tbaa !2448
  %611 = lshr i32 %595, 31
  %612 = trunc i32 %611 to i8
  store i8 %612, i8* %36, align 1, !tbaa !2449
  %613 = lshr i32 %594, 31
  %614 = xor i32 %611, %613
  %615 = add nuw nsw i32 %614, %611
  %616 = icmp eq i32 %615, 2
  %617 = zext i1 %616 to i8
  store i8 %617, i8* %42, align 1, !tbaa !2450
  %618 = add i64 %590, 14
  store i64 %618, i64* %PC, align 8
  store i32 %595, i32* %593, align 4
  %619 = load i64, i64* %PC, align 8
  %620 = add i64 %619, -115
  store i64 %620, i64* %PC, align 8, !tbaa !2428
  br label %block_400956

block_4016f7:                                     ; preds = %block_4016ea
  %621 = add i64 %4800, 4
  store i64 %621, i64* %PC, align 8
  %622 = load i32, i32* %4774, align 4
  %623 = sext i32 %622 to i64
  store i64 %623, i64* %RAX, align 8, !tbaa !2428
  %624 = shl nsw i64 %623, 2
  %625 = add i64 %624, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %626 = add i64 %4800, 12
  store i64 %626, i64* %PC, align 8
  %627 = inttoptr i64 %625 to i32*
  %628 = load i32, i32* %627, align 4
  %629 = add i32 %628, 1
  %630 = icmp ne i32 %628, -1
  %631 = zext i1 %630 to i8
  store i8 %631, i8* %17, align 1, !tbaa !2432
  %632 = and i32 %629, 255
  %633 = tail call i32 @llvm.ctpop.i32(i32 %632) #8
  %634 = trunc i32 %633 to i8
  %635 = and i8 %634, 1
  %636 = xor i8 %635, 1
  store i8 %636, i8* %24, align 1, !tbaa !2446
  %637 = xor i32 %628, 16
  %638 = xor i32 %629, %637
  %639 = lshr i32 %638, 4
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  store i8 %641, i8* %30, align 1, !tbaa !2447
  %642 = icmp eq i32 %629, 0
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %33, align 1, !tbaa !2448
  %644 = lshr i32 %629, 31
  %645 = trunc i32 %644 to i8
  store i8 %645, i8* %36, align 1, !tbaa !2449
  %646 = lshr i32 %628, 31
  %647 = xor i32 %646, 1
  %648 = xor i32 %644, %646
  %649 = add nuw nsw i32 %648, %647
  %650 = icmp eq i32 %649, 2
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %42, align 1, !tbaa !2450
  %.v160 = select i1 %642, i64 53, i64 18
  %652 = add i64 %4800, %.v160
  %653 = add i64 %652, 4
  store i64 %653, i64* %PC, align 8
  %654 = load i32, i32* %4774, align 4
  %655 = sext i32 %654 to i64
  store i64 %655, i64* %RAX, align 8, !tbaa !2428
  %656 = shl nsw i64 %655, 2
  %657 = add i64 %656, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  br i1 %642, label %block_40172c, label %block_401709

block_400ba7:                                     ; preds = %block_400b8b
  %658 = load i64, i64* %RBP, align 8
  %659 = add i64 %658, -16
  %660 = add i64 %4611, 4
  store i64 %660, i64* %PC, align 8
  %661 = inttoptr i64 %659 to i32*
  %662 = load i32, i32* %661, align 4
  store i8 0, i8* %17, align 1, !tbaa !2432
  %663 = and i32 %662, 255
  %664 = tail call i32 @llvm.ctpop.i32(i32 %663) #8
  %665 = trunc i32 %664 to i8
  %666 = and i8 %665, 1
  %667 = xor i8 %666, 1
  store i8 %667, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  %668 = icmp eq i32 %662, 0
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %33, align 1, !tbaa !2448
  %670 = lshr i32 %662, 31
  %671 = trunc i32 %670 to i8
  store i8 %671, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %672 = xor i1 %668, true
  %673 = icmp eq i8 %671, 0
  %674 = and i1 %673, %672
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %AL, align 1, !tbaa !2451
  %676 = add i64 %658, -2693
  %677 = add i64 %4611, 13
  store i64 %677, i64* %PC, align 8
  %678 = inttoptr i64 %676 to i8*
  store i8 %675, i8* %678, align 1
  %.pre28 = load i64, i64* %PC, align 8
  br label %block_400bb4

block_400da4:                                     ; preds = %block_400ce3
  %679 = add i64 %3829, 7
  store i64 %679, i64* %PC, align 8
  store i32 0, i32* %3789, align 4
  %.pre39 = load i64, i64* %PC, align 8
  br label %block_400dab

block_4017a1:                                     ; preds = %block_40176c
  %680 = add i64 %1459, 15
  store i64 %680, i64* %PC, align 8
  %681 = inttoptr i64 %1464 to i32*
  store i32 0, i32* %681, align 4
  %.pre96 = load i64, i64* %PC, align 8
  br label %block_4017b0

block_401644:                                     ; preds = %block_4015c8
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %682 = add i64 %5828, -16
  %683 = add i64 %5871, 8
  store i64 %683, i64* %PC, align 8
  %684 = inttoptr i64 %682 to i32*
  %685 = load i32, i32* %684, align 4
  %686 = zext i32 %685 to i64
  store i64 %686, i64* %RCX, align 8, !tbaa !2428
  %687 = add i64 %5828, -2732
  %688 = add i64 %5871, 14
  store i64 %688, i64* %PC, align 8
  %689 = inttoptr i64 %687 to i32*
  store i32 255, i32* %689, align 4
  %690 = load i32, i32* %ECX, align 4
  %691 = zext i32 %690 to i64
  %692 = load i64, i64* %PC, align 8
  store i64 %691, i64* %RAX, align 8, !tbaa !2428
  %693 = sext i32 %690 to i64
  %694 = lshr i64 %693, 32
  store i64 %694, i64* %56, align 8, !tbaa !2428
  %695 = load i64, i64* %RBP, align 8
  %696 = add i64 %695, -2732
  %697 = add i64 %692, 9
  store i64 %697, i64* %PC, align 8
  %698 = inttoptr i64 %696 to i32*
  %699 = load i32, i32* %698, align 4
  %700 = zext i32 %699 to i64
  store i64 %700, i64* %RCX, align 8, !tbaa !2428
  %701 = add i64 %692, 11
  store i64 %701, i64* %PC, align 8
  %702 = sext i32 %699 to i64
  %703 = shl nuw i64 %694, 32
  %704 = or i64 %703, %691
  %705 = sdiv i64 %704, %702
  %706 = shl i64 %705, 32
  %707 = ashr exact i64 %706, 32
  %708 = icmp eq i64 %705, %707
  br i1 %708, label %711, label %709

; <label>:709:                                    ; preds = %block_401644
  %710 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %701, %struct.Memory* %MEMORY.51) #9
  %.pre86 = load i64, i64* %RBP, align 8
  %.pre87 = load i32, i32* %EDX, align 4
  %.pre88 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8

; <label>:711:                                    ; preds = %block_401644
  %712 = srem i64 %704, %702
  %713 = and i64 %705, 4294967295
  store i64 %713, i64* %57, align 8, !tbaa !2428
  %714 = and i64 %712, 4294967295
  store i64 %714, i64* %56, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 0, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  store i8 0, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %715 = trunc i64 %712 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8: ; preds = %711, %709
  %716 = phi i64 [ %.pre88, %709 ], [ %701, %711 ]
  %717 = phi i32 [ %.pre87, %709 ], [ %715, %711 ]
  %718 = phi i64 [ %.pre86, %709 ], [ %695, %711 ]
  %719 = phi %struct.Memory* [ %710, %709 ], [ %MEMORY.51, %711 ]
  %720 = add i64 %718, -16
  %721 = add i64 %716, 3
  store i64 %721, i64* %PC, align 8
  %722 = inttoptr i64 %720 to i32*
  store i32 %717, i32* %722, align 4
  %723 = load i64, i64* %RBP, align 8
  %724 = add i64 %723, -4
  %725 = load i64, i64* %PC, align 8
  %726 = add i64 %725, 4
  store i64 %726, i64* %PC, align 8
  %727 = inttoptr i64 %724 to i32*
  %728 = load i32, i32* %727, align 4
  %729 = sext i32 %728 to i64
  store i64 %729, i64* %RSI, align 8, !tbaa !2428
  %730 = shl nsw i64 %729, 2
  %731 = add i64 %723, -1568
  %732 = add i64 %731, %730
  %733 = add i64 %725, 12
  store i64 %733, i64* %PC, align 8
  %734 = inttoptr i64 %732 to i32*
  %735 = load i32, i32* %734, align 4
  %736 = sext i32 %735 to i64
  store i64 %736, i64* %RSI, align 8, !tbaa !2428
  %737 = shl nsw i64 %736, 2
  %738 = add i64 %723, -2640
  %739 = add i64 %738, %737
  %740 = add i64 %725, 19
  store i64 %740, i64* %PC, align 8
  %741 = inttoptr i64 %739 to i32*
  %742 = load i32, i32* %741, align 4
  %743 = zext i32 %742 to i64
  store i64 %743, i64* %RDX, align 8, !tbaa !2428
  %744 = add i64 %723, -16
  %745 = add i64 %725, 22
  store i64 %745, i64* %PC, align 8
  %746 = inttoptr i64 %744 to i32*
  %747 = load i32, i32* %746, align 4
  %748 = sub i32 %742, %747
  %749 = lshr i32 %748, 31
  %750 = add i32 %748, 255
  %751 = zext i32 %750 to i64
  %752 = icmp ugt i32 %748, -256
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %17, align 1, !tbaa !2432
  %754 = and i32 %750, 255
  %755 = tail call i32 @llvm.ctpop.i32(i32 %754) #8
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  %758 = xor i8 %757, 1
  store i8 %758, i8* %24, align 1, !tbaa !2446
  %759 = xor i32 %748, 16
  %760 = xor i32 %759, %750
  %761 = lshr i32 %760, 4
  %762 = trunc i32 %761 to i8
  %763 = and i8 %762, 1
  store i8 %763, i8* %30, align 1, !tbaa !2447
  %764 = icmp eq i32 %750, 0
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %33, align 1, !tbaa !2448
  %766 = lshr i32 %750, 31
  %767 = trunc i32 %766 to i8
  store i8 %767, i8* %36, align 1, !tbaa !2449
  %768 = xor i32 %766, %749
  %769 = add nuw nsw i32 %768, %766
  %770 = icmp eq i32 %769, 2
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %42, align 1, !tbaa !2450
  store i64 %751, i64* %RAX, align 8, !tbaa !2428
  %772 = sext i32 %750 to i64
  %773 = lshr i64 %772, 32
  store i64 %773, i64* %56, align 8, !tbaa !2428
  %774 = load i32, i32* %ECX, align 4
  %775 = add i64 %725, 33
  store i64 %775, i64* %PC, align 8
  %776 = sext i32 %774 to i64
  %777 = shl nuw i64 %773, 32
  %778 = or i64 %777, %751
  %779 = sdiv i64 %778, %776
  %780 = shl i64 %779, 32
  %781 = ashr exact i64 %780, 32
  %782 = icmp eq i64 %779, %781
  br i1 %782, label %785, label %783

; <label>:783:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8
  %784 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %775, %struct.Memory* %719) #9
  %.pre89 = load i32, i32* %EDX, align 4
  %.pre90 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7

; <label>:785:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit8
  %786 = srem i64 %778, %776
  %787 = and i64 %779, 4294967295
  store i64 %787, i64* %57, align 8, !tbaa !2428
  %788 = and i64 %786, 4294967295
  store i64 %788, i64* %56, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 0, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  store i8 0, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %789 = trunc i64 %786 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7: ; preds = %785, %783
  %790 = phi i64 [ %.pre90, %783 ], [ %775, %785 ]
  %791 = phi i32 [ %.pre89, %783 ], [ %789, %785 ]
  %792 = phi %struct.Memory* [ %784, %783 ], [ %719, %785 ]
  %793 = sext i32 %791 to i64
  store i64 %793, i64* %RSI, align 8, !tbaa !2428
  %794 = shl nsw i64 %793, 2
  %795 = add i64 %794, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %796 = add i64 %790, 10
  store i64 %796, i64* %PC, align 8
  %797 = inttoptr i64 %795 to i32*
  %798 = load i32, i32* %797, align 4
  %799 = zext i32 %798 to i64
  store i64 %799, i64* %RDX, align 8, !tbaa !2428
  %800 = load i64, i64* %RBP, align 8
  %801 = add i64 %800, -4
  %802 = add i64 %790, 14
  store i64 %802, i64* %PC, align 8
  %803 = inttoptr i64 %801 to i32*
  %804 = load i32, i32* %803, align 4
  %805 = sext i32 %804 to i64
  store i64 %805, i64* %RSI, align 8, !tbaa !2428
  %806 = shl nsw i64 %805, 2
  %807 = add i64 %800, -1568
  %808 = add i64 %807, %806
  %809 = add i64 %790, 22
  store i64 %809, i64* %PC, align 8
  %810 = inttoptr i64 %808 to i32*
  %811 = load i32, i32* %810, align 4
  %812 = sext i32 %811 to i64
  store i64 %812, i64* %RSI, align 8, !tbaa !2428
  %813 = shl nsw i64 %812, 2
  %814 = add i64 %800, -2640
  %815 = add i64 %814, %813
  %816 = add i64 %790, 29
  store i64 %816, i64* %PC, align 8
  %817 = inttoptr i64 %815 to i32*
  store i32 %798, i32* %817, align 4
  %818 = load i64, i64* %RBP, align 8
  %819 = add i64 %818, -4
  %820 = load i64, i64* %PC, align 8
  %821 = add i64 %820, 4
  store i64 %821, i64* %PC, align 8
  %822 = inttoptr i64 %819 to i32*
  %823 = load i32, i32* %822, align 4
  %824 = sext i32 %823 to i64
  store i64 %824, i64* %RSI, align 8, !tbaa !2428
  %825 = shl nsw i64 %824, 2
  %826 = add i64 %818, -1568
  %827 = add i64 %826, %825
  %828 = add i64 %820, 12
  store i64 %828, i64* %PC, align 8
  %829 = inttoptr i64 %827 to i32*
  %830 = load i32, i32* %829, align 4
  %831 = sext i32 %830 to i64
  store i64 %831, i64* %RSI, align 8, !tbaa !2428
  %832 = shl nsw i64 %831, 2
  %833 = add i64 %818, -2640
  %834 = add i64 %833, %832
  %835 = add i64 %820, 19
  store i64 %835, i64* %PC, align 8
  %836 = inttoptr i64 %834 to i32*
  %837 = load i32, i32* %836, align 4
  %838 = zext i32 %837 to i64
  store i64 %838, i64* %RDX, align 8, !tbaa !2428
  %839 = add i64 %820, 23
  store i64 %839, i64* %PC, align 8
  %840 = load i32, i32* %822, align 4
  %841 = sext i32 %840 to i64
  store i64 %841, i64* %RSI, align 8, !tbaa !2428
  %842 = shl nsw i64 %841, 2
  %843 = add i64 %826, %842
  %844 = add i64 %820, 31
  store i64 %844, i64* %PC, align 8
  %845 = inttoptr i64 %843 to i32*
  %846 = load i32, i32* %845, align 4
  %847 = sext i32 %846 to i64
  store i64 %847, i64* %RSI, align 8, !tbaa !2428
  %848 = shl nsw i64 %847, 2
  %849 = add i64 %848, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %850 = add i64 %820, 38
  store i64 %850, i64* %PC, align 8
  %851 = inttoptr i64 %849 to i32*
  %852 = load i32, i32* %851, align 4
  %853 = xor i32 %852, %837
  %854 = zext i32 %853 to i64
  store i64 %854, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  %855 = and i32 %853, 255
  %856 = tail call i32 @llvm.ctpop.i32(i32 %855) #8
  %857 = trunc i32 %856 to i8
  %858 = and i8 %857, 1
  %859 = xor i8 %858, 1
  store i8 %859, i8* %24, align 1, !tbaa !2446
  %860 = icmp eq i32 %853, 0
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %33, align 1, !tbaa !2448
  %862 = lshr i32 %853, 31
  %863 = trunc i32 %862 to i8
  store i8 %863, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  store i8 0, i8* %30, align 1, !tbaa !2447
  %864 = add i64 %820, 45
  store i64 %864, i64* %PC, align 8
  store i32 %853, i32* %851, align 4
  %.pre91 = load i64, i64* %PC, align 8
  %.pre92 = load i64, i64* %RBP, align 8
  br label %block_4016cb

block_400bc2:                                     ; preds = %block_400bb4
  %865 = add i64 %3020, 23
  store i64 %865, i64* %PC, align 8
  %866 = inttoptr i64 %3021 to i32*
  %867 = load i32, i32* %866, align 4
  store i8 0, i8* %17, align 1, !tbaa !2432
  %868 = and i32 %867, 255
  %869 = tail call i32 @llvm.ctpop.i32(i32 %868) #8
  %870 = trunc i32 %869 to i8
  %871 = and i8 %870, 1
  %872 = xor i8 %871, 1
  store i8 %872, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  %873 = icmp eq i32 %867, 0
  %874 = zext i1 %873 to i8
  store i8 %874, i8* %33, align 1, !tbaa !2448
  %875 = lshr i32 %867, 31
  %876 = trunc i32 %875 to i8
  store i8 %876, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %877 = icmp ne i8 %876, 0
  %878 = or i1 %873, %877
  %.v165 = select i1 %878, i64 116, i64 29
  %879 = add i64 %3020, %.v165
  store i64 %879, i64* %PC, align 8, !tbaa !2428
  br i1 %878, label %block_400c36, label %block_400bdf

block_401396:                                     ; preds = %block_401371
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %880 = load i64, i64* %RBP, align 8
  %881 = add i64 %880, -1168
  store i64 %881, i64* %RCX, align 8, !tbaa !2428
  %882 = add i64 %880, -12
  %883 = add i64 %5621, 16
  store i64 %883, i64* %PC, align 8
  %884 = inttoptr i64 %882 to i32*
  %885 = load i32, i32* %884, align 4
  %886 = sext i32 %885 to i64
  %887 = shl nsw i64 %886, 6
  store i64 %887, i64* %RDX, align 8, !tbaa !2428
  %888 = lshr i64 %886, 57
  %889 = and i64 %888, 1
  %890 = add i64 %887, %881
  store i64 %890, i64* %RCX, align 8, !tbaa !2428
  %891 = icmp ult i64 %890, %881
  %892 = icmp ult i64 %890, %887
  %893 = or i1 %891, %892
  %894 = zext i1 %893 to i8
  store i8 %894, i8* %17, align 1, !tbaa !2432
  %895 = trunc i64 %890 to i32
  %896 = and i32 %895, 255
  %897 = tail call i32 @llvm.ctpop.i32(i32 %896) #8
  %898 = trunc i32 %897 to i8
  %899 = and i8 %898, 1
  %900 = xor i8 %899, 1
  store i8 %900, i8* %24, align 1, !tbaa !2446
  %901 = xor i64 %881, %890
  %902 = lshr i64 %901, 4
  %903 = trunc i64 %902 to i8
  %904 = and i8 %903, 1
  store i8 %904, i8* %30, align 1, !tbaa !2447
  %905 = icmp eq i64 %890, 0
  %906 = zext i1 %905 to i8
  store i8 %906, i8* %33, align 1, !tbaa !2448
  %907 = lshr i64 %890, 63
  %908 = trunc i64 %907 to i8
  store i8 %908, i8* %36, align 1, !tbaa !2449
  %909 = lshr i64 %881, 63
  %910 = xor i64 %907, %909
  %911 = xor i64 %907, %889
  %912 = add nuw nsw i64 %910, %911
  %913 = icmp eq i64 %912, 2
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %42, align 1, !tbaa !2450
  %915 = add i64 %880, -4
  %916 = add i64 %5621, 26
  store i64 %916, i64* %PC, align 8
  %917 = inttoptr i64 %915 to i32*
  %918 = load i32, i32* %917, align 4
  %919 = zext i32 %918 to i64
  store i64 %919, i64* %RSI, align 8, !tbaa !2428
  %920 = add i64 %880, -8
  %921 = add i64 %5621, 29
  store i64 %921, i64* %PC, align 8
  %922 = inttoptr i64 %920 to i32*
  %923 = load i32, i32* %922, align 4
  %924 = sub i32 %918, %923
  %925 = zext i32 %924 to i64
  store i64 %925, i64* %RSI, align 8, !tbaa !2428
  %926 = icmp ult i32 %918, %923
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %17, align 1, !tbaa !2432
  %928 = and i32 %924, 255
  %929 = tail call i32 @llvm.ctpop.i32(i32 %928) #8
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  %932 = xor i8 %931, 1
  store i8 %932, i8* %24, align 1, !tbaa !2446
  %933 = xor i32 %923, %918
  %934 = xor i32 %933, %924
  %935 = lshr i32 %934, 4
  %936 = trunc i32 %935 to i8
  %937 = and i8 %936, 1
  store i8 %937, i8* %30, align 1, !tbaa !2447
  %938 = icmp eq i32 %924, 0
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %33, align 1, !tbaa !2448
  %940 = lshr i32 %924, 31
  %941 = trunc i32 %940 to i8
  store i8 %941, i8* %36, align 1, !tbaa !2449
  %942 = lshr i32 %918, 31
  %943 = lshr i32 %923, 31
  %944 = xor i32 %943, %942
  %945 = xor i32 %940, %942
  %946 = add nuw nsw i32 %945, %944
  %947 = icmp eq i32 %946, 2
  %948 = zext i1 %947 to i8
  store i8 %948, i8* %42, align 1, !tbaa !2450
  %949 = sext i32 %924 to i64
  store i64 %949, i64* %RDX, align 8, !tbaa !2428
  %950 = shl nsw i64 %949, 2
  %951 = add i64 %950, %890
  %952 = add i64 %5621, 35
  store i64 %952, i64* %PC, align 8
  %953 = inttoptr i64 %951 to i32*
  %954 = load i32, i32* %953, align 4
  %955 = zext i32 %954 to i64
  store i64 %955, i64* %RSI, align 8, !tbaa !2428
  %956 = load i64, i64* %RBP, align 8
  %957 = add i64 %956, -8
  %958 = add i64 %5621, 39
  store i64 %958, i64* %PC, align 8
  %959 = inttoptr i64 %957 to i32*
  %960 = load i32, i32* %959, align 4
  %961 = sext i32 %960 to i64
  store i64 %961, i64* %RCX, align 8, !tbaa !2428
  %962 = shl nsw i64 %961, 2
  %963 = add i64 %956, -1488
  %964 = add i64 %963, %962
  %965 = add i64 %5621, 46
  store i64 %965, i64* %PC, align 8
  %966 = inttoptr i64 %964 to i32*
  %967 = load i32, i32* %966, align 4
  %968 = add i32 %967, %954
  %969 = zext i32 %968 to i64
  store i64 %969, i64* %RSI, align 8, !tbaa !2428
  %970 = icmp ult i32 %968, %954
  %971 = icmp ult i32 %968, %967
  %972 = or i1 %970, %971
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %17, align 1, !tbaa !2432
  %974 = and i32 %968, 255
  %975 = tail call i32 @llvm.ctpop.i32(i32 %974) #8
  %976 = trunc i32 %975 to i8
  %977 = and i8 %976, 1
  %978 = xor i8 %977, 1
  store i8 %978, i8* %24, align 1, !tbaa !2446
  %979 = xor i32 %967, %954
  %980 = xor i32 %979, %968
  %981 = lshr i32 %980, 4
  %982 = trunc i32 %981 to i8
  %983 = and i8 %982, 1
  store i8 %983, i8* %30, align 1, !tbaa !2447
  %984 = icmp eq i32 %968, 0
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %33, align 1, !tbaa !2448
  %986 = lshr i32 %968, 31
  %987 = trunc i32 %986 to i8
  store i8 %987, i8* %36, align 1, !tbaa !2449
  %988 = lshr i32 %954, 31
  %989 = lshr i32 %967, 31
  %990 = xor i32 %986, %988
  %991 = xor i32 %986, %989
  %992 = add nuw nsw i32 %990, %991
  %993 = icmp eq i32 %992, 2
  %994 = zext i1 %993 to i8
  store i8 %994, i8* %42, align 1, !tbaa !2450
  %995 = add i64 %956, -2720
  %996 = load i32, i32* %EAX, align 4
  %997 = add i64 %5621, 52
  store i64 %997, i64* %PC, align 8
  %998 = inttoptr i64 %995 to i32*
  store i32 %996, i32* %998, align 4
  %999 = load i32, i32* %ESI, align 4
  %1000 = zext i32 %999 to i64
  %1001 = load i64, i64* %PC, align 8
  store i64 %1000, i64* %RAX, align 8, !tbaa !2428
  %1002 = sext i32 %999 to i64
  %1003 = lshr i64 %1002, 32
  store i64 %1003, i64* %56, align 8, !tbaa !2428
  %1004 = load i64, i64* %RBP, align 8
  %1005 = add i64 %1004, -2720
  %1006 = add i64 %1001, 9
  store i64 %1006, i64* %PC, align 8
  %1007 = inttoptr i64 %1005 to i32*
  %1008 = load i32, i32* %1007, align 4
  %1009 = zext i32 %1008 to i64
  store i64 %1009, i64* %RSI, align 8, !tbaa !2428
  %1010 = add i64 %1001, 11
  store i64 %1010, i64* %PC, align 8
  %1011 = sext i32 %1008 to i64
  %1012 = shl nuw i64 %1003, 32
  %1013 = or i64 %1012, %1000
  %1014 = sdiv i64 %1013, %1011
  %1015 = shl i64 %1014, 32
  %1016 = ashr exact i64 %1015, 32
  %1017 = icmp eq i64 %1014, %1016
  br i1 %1017, label %1020, label %1018

; <label>:1018:                                   ; preds = %block_401396
  %1019 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1010, %struct.Memory* %MEMORY.54) #9
  %.pre67 = load i32, i32* %EDX, align 4
  %.pre68 = load i64, i64* %PC, align 8
  %.pre69 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6

; <label>:1020:                                   ; preds = %block_401396
  %1021 = srem i64 %1013, %1011
  %1022 = and i64 %1014, 4294967295
  store i64 %1022, i64* %57, align 8, !tbaa !2428
  %1023 = and i64 %1021, 4294967295
  store i64 %1023, i64* %56, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 0, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  store i8 0, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %1024 = trunc i64 %1021 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit6: ; preds = %1020, %1018
  %1025 = phi i64 [ %.pre69, %1018 ], [ %1004, %1020 ]
  %1026 = phi i64 [ %.pre68, %1018 ], [ %1010, %1020 ]
  %1027 = phi i32 [ %.pre67, %1018 ], [ %1024, %1020 ]
  %1028 = phi %struct.Memory* [ %1019, %1018 ], [ %MEMORY.54, %1020 ]
  %1029 = sext i32 %1027 to i64
  store i64 %1029, i64* %RCX, align 8, !tbaa !2428
  %1030 = shl nsw i64 %1029, 2
  %1031 = add i64 %1030, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %1032 = add i64 %1026, 10
  store i64 %1032, i64* %PC, align 8
  %1033 = inttoptr i64 %1031 to i32*
  %1034 = load i32, i32* %1033, align 4
  %1035 = zext i32 %1034 to i64
  store i64 %1035, i64* %RDX, align 8, !tbaa !2428
  %1036 = add i64 %1025, -4
  %1037 = add i64 %1026, 14
  store i64 %1037, i64* %PC, align 8
  %1038 = inttoptr i64 %1036 to i32*
  %1039 = load i32, i32* %1038, align 4
  %1040 = sext i32 %1039 to i64
  store i64 %1040, i64* %RCX, align 8, !tbaa !2428
  %1041 = shl nsw i64 %1040, 2
  %1042 = add i64 %1025, -1616
  %1043 = add i64 %1042, %1041
  %1044 = add i64 %1026, 21
  store i64 %1044, i64* %PC, align 8
  %1045 = inttoptr i64 %1043 to i32*
  %1046 = load i32, i32* %1045, align 4
  %1047 = xor i32 %1046, %1034
  %1048 = zext i32 %1047 to i64
  store i64 %1048, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  %1049 = and i32 %1047, 255
  %1050 = tail call i32 @llvm.ctpop.i32(i32 %1049) #8
  %1051 = trunc i32 %1050 to i8
  %1052 = and i8 %1051, 1
  %1053 = xor i8 %1052, 1
  store i8 %1053, i8* %24, align 1, !tbaa !2446
  %1054 = icmp eq i32 %1047, 0
  %1055 = zext i1 %1054 to i8
  store i8 %1055, i8* %33, align 1, !tbaa !2448
  %1056 = lshr i32 %1047, 31
  %1057 = trunc i32 %1056 to i8
  store i8 %1057, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  store i8 0, i8* %30, align 1, !tbaa !2447
  %1058 = add i64 %1026, 28
  store i64 %1058, i64* %PC, align 8
  store i32 %1047, i32* %1045, align 4
  %.pre70 = load i64, i64* %PC, align 8
  br label %block_4013f1

block_400f90:                                     ; preds = %block_400edf, %block_400ef9, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2
  %1059 = phi i64 [ %3122, %block_400edf ], [ %2615, %block_400ef9 ], [ %.pre46, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2 ]
  %1060 = phi i64 [ %2870, %block_400edf ], [ %2635, %block_400ef9 ], [ %.pre45, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.27, %block_400edf ], [ %MEMORY.27, %block_400ef9 ], [ %2226, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2 ]
  %1061 = add i64 %1059, -4
  %1062 = add i64 %1060, 8
  store i64 %1062, i64* %PC, align 8
  %1063 = inttoptr i64 %1061 to i32*
  %1064 = load i32, i32* %1063, align 4
  %1065 = add i32 %1064, 1
  %1066 = zext i32 %1065 to i64
  store i64 %1066, i64* %RAX, align 8, !tbaa !2428
  %1067 = icmp eq i32 %1064, -1
  %1068 = icmp eq i32 %1065, 0
  %1069 = or i1 %1067, %1068
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %17, align 1, !tbaa !2432
  %1071 = and i32 %1065, 255
  %1072 = tail call i32 @llvm.ctpop.i32(i32 %1071) #8
  %1073 = trunc i32 %1072 to i8
  %1074 = and i8 %1073, 1
  %1075 = xor i8 %1074, 1
  store i8 %1075, i8* %24, align 1, !tbaa !2446
  %1076 = xor i32 %1064, %1065
  %1077 = lshr i32 %1076, 4
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  store i8 %1079, i8* %30, align 1, !tbaa !2447
  %1080 = zext i1 %1068 to i8
  store i8 %1080, i8* %33, align 1, !tbaa !2448
  %1081 = lshr i32 %1065, 31
  %1082 = trunc i32 %1081 to i8
  store i8 %1082, i8* %36, align 1, !tbaa !2449
  %1083 = lshr i32 %1064, 31
  %1084 = xor i32 %1081, %1083
  %1085 = add nuw nsw i32 %1084, %1081
  %1086 = icmp eq i32 %1085, 2
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %42, align 1, !tbaa !2450
  %1088 = add i64 %1060, 14
  store i64 %1088, i64* %PC, align 8
  store i32 %1065, i32* %1063, align 4
  %1089 = load i64, i64* %PC, align 8
  %1090 = add i64 %1089, -216
  store i64 %1090, i64* %PC, align 8, !tbaa !2428
  br label %block_400ec6

block_4009ce:                                     ; preds = %block_400956
  %1091 = add i64 %1517, -4
  %1092 = add i64 %1546, 4
  store i64 %1092, i64* %PC, align 8
  %1093 = inttoptr i64 %1091 to i32*
  %1094 = load i32, i32* %1093, align 4
  %1095 = sext i32 %1094 to i64
  store i64 %1095, i64* %RAX, align 8, !tbaa !2428
  %1096 = shl nsw i64 %1095, 2
  %1097 = add i64 %1517, -1488
  %1098 = add i64 %1097, %1096
  %1099 = add i64 %1546, 12
  store i64 %1099, i64* %PC, align 8
  %1100 = inttoptr i64 %1098 to i32*
  %1101 = load i32, i32* %1100, align 4
  store i8 0, i8* %17, align 1, !tbaa !2432
  %1102 = and i32 %1101, 255
  %1103 = tail call i32 @llvm.ctpop.i32(i32 %1102) #8
  %1104 = trunc i32 %1103 to i8
  %1105 = and i8 %1104, 1
  %1106 = xor i8 %1105, 1
  store i8 %1106, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  %1107 = icmp eq i32 %1101, 0
  %1108 = zext i1 %1107 to i8
  store i8 %1108, i8* %33, align 1, !tbaa !2448
  %1109 = lshr i32 %1101, 31
  %1110 = trunc i32 %1109 to i8
  store i8 %1110, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %.v112 = select i1 %1107, i64 28, i64 18
  %1111 = add i64 %1546, %.v112
  store i64 %1111, i64* %PC, align 8, !tbaa !2428
  br i1 %1107, label %block_4009ea, label %block_4009e0

block_40158c:                                     ; preds = %block_401572
  %1112 = add i64 %2663, 4
  store i64 %1112, i64* %PC, align 8
  %1113 = load i32, i32* %2638, align 4
  %1114 = sext i32 %1113 to i64
  store i64 %1114, i64* %RAX, align 8, !tbaa !2428
  %1115 = shl nsw i64 %1114, 2
  %1116 = add i64 %2642, %1115
  %1117 = add i64 %2663, 12
  store i64 %1117, i64* %PC, align 8
  %1118 = inttoptr i64 %1116 to i32*
  %1119 = load i32, i32* %1118, align 4
  %1120 = sext i32 %1119 to i64
  store i64 %1120, i64* %RAX, align 8, !tbaa !2428
  %1121 = shl nsw i64 %1120, 2
  %1122 = add i64 %2649, %1121
  %1123 = add i64 %2663, 20
  store i64 %1123, i64* %PC, align 8
  %1124 = inttoptr i64 %1122 to i32*
  %1125 = load i32, i32* %1124, align 4
  %1126 = sext i32 %1125 to i64
  store i64 %1126, i64* %RAX, align 8, !tbaa !2428
  %1127 = shl nsw i64 %1126, 2
  %1128 = add i64 %1127, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %1129 = add i64 %2663, 27
  store i64 %1129, i64* %PC, align 8
  %1130 = inttoptr i64 %1128 to i32*
  %1131 = load i32, i32* %1130, align 4
  %1132 = zext i32 %1131 to i64
  store i64 %1132, i64* %RCX, align 8, !tbaa !2428
  %1133 = add i64 %2663, 31
  store i64 %1133, i64* %PC, align 8
  %1134 = load i32, i32* %2638, align 4
  %1135 = sext i32 %1134 to i64
  store i64 %1135, i64* %RAX, align 8, !tbaa !2428
  %1136 = shl nsw i64 %1135, 2
  %1137 = add i64 %2642, %1136
  %1138 = add i64 %2663, 39
  store i64 %1138, i64* %PC, align 8
  %1139 = inttoptr i64 %1137 to i32*
  %1140 = load i32, i32* %1139, align 4
  %1141 = sext i32 %1140 to i64
  store i64 %1141, i64* %RAX, align 8, !tbaa !2428
  %1142 = shl nsw i64 %1141, 2
  %1143 = add i64 %2649, %1142
  %1144 = add i64 %2663, 46
  store i64 %1144, i64* %PC, align 8
  %1145 = inttoptr i64 %1143 to i32*
  store i32 %1131, i32* %1145, align 4
  %1146 = load i64, i64* %RBP, align 8
  %1147 = add i64 %1146, -16
  %1148 = load i64, i64* %PC, align 8
  %1149 = add i64 %1148, 7
  store i64 %1149, i64* %PC, align 8
  %1150 = inttoptr i64 %1147 to i32*
  store i32 0, i32* %1150, align 4
  %1151 = load i64, i64* %RBP, align 8
  %1152 = add i64 %1151, -8
  %1153 = load i64, i64* %PC, align 8
  %1154 = add i64 %1153, 7
  store i64 %1154, i64* %PC, align 8
  %1155 = inttoptr i64 %1152 to i32*
  store i32 0, i32* %1155, align 4
  %.pre80 = load i64, i64* %PC, align 8
  br label %block_4015c8

block_40118a:                                     ; preds = %block_401180
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %1156 = add i64 %2902, -4
  %1157 = add i64 %1315, 8
  store i64 %1157, i64* %PC, align 8
  %1158 = inttoptr i64 %1156 to i32*
  %1159 = load i32, i32* %1158, align 4
  %1160 = zext i32 %1159 to i64
  store i64 %1160, i64* %RCX, align 8, !tbaa !2428
  %1161 = add i64 %2902, -1492
  %1162 = add i64 %1315, 15
  store i64 %1162, i64* %PC, align 8
  %1163 = inttoptr i64 %1161 to i32*
  %1164 = load i32, i32* %1163, align 4
  %1165 = sext i32 %1164 to i64
  store i64 %1165, i64* %RDX, align 8, !tbaa !2428
  %1166 = shl nsw i64 %1165, 2
  %1167 = add i64 %2902, -1536
  %1168 = add i64 %1167, %1166
  %1169 = add i64 %1315, 22
  store i64 %1169, i64* %PC, align 8
  %1170 = inttoptr i64 %1168 to i32*
  store i32 %1159, i32* %1170, align 4
  %1171 = load i64, i64* %RAX, align 8
  %1172 = load i64, i64* %RBP, align 8
  %1173 = add i64 %1172, -4
  %1174 = load i64, i64* %PC, align 8
  %1175 = add i64 %1174, 3
  store i64 %1175, i64* %PC, align 8
  %1176 = trunc i64 %1171 to i32
  %1177 = inttoptr i64 %1173 to i32*
  %1178 = load i32, i32* %1177, align 4
  %1179 = sub i32 %1176, %1178
  %1180 = zext i32 %1179 to i64
  store i64 %1180, i64* %RAX, align 8, !tbaa !2428
  %1181 = icmp ult i32 %1176, %1178
  %1182 = zext i1 %1181 to i8
  store i8 %1182, i8* %17, align 1, !tbaa !2432
  %1183 = and i32 %1179, 255
  %1184 = tail call i32 @llvm.ctpop.i32(i32 %1183) #8
  %1185 = trunc i32 %1184 to i8
  %1186 = and i8 %1185, 1
  %1187 = xor i8 %1186, 1
  store i8 %1187, i8* %24, align 1, !tbaa !2446
  %1188 = xor i32 %1178, %1176
  %1189 = xor i32 %1188, %1179
  %1190 = lshr i32 %1189, 4
  %1191 = trunc i32 %1190 to i8
  %1192 = and i8 %1191, 1
  store i8 %1192, i8* %30, align 1, !tbaa !2447
  %1193 = icmp eq i32 %1179, 0
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %33, align 1, !tbaa !2448
  %1195 = lshr i32 %1179, 31
  %1196 = trunc i32 %1195 to i8
  store i8 %1196, i8* %36, align 1, !tbaa !2449
  %1197 = lshr i32 %1176, 31
  %1198 = lshr i32 %1178, 31
  %1199 = xor i32 %1198, %1197
  %1200 = xor i32 %1195, %1197
  %1201 = add nuw nsw i32 %1200, %1199
  %1202 = icmp eq i32 %1201, 2
  %1203 = zext i1 %1202 to i8
  store i8 %1203, i8* %42, align 1, !tbaa !2450
  %1204 = add i64 %1172, -1492
  %1205 = add i64 %1174, 10
  store i64 %1205, i64* %PC, align 8
  %1206 = inttoptr i64 %1204 to i32*
  %1207 = load i32, i32* %1206, align 4
  %1208 = sext i32 %1207 to i64
  store i64 %1208, i64* %RDX, align 8, !tbaa !2428
  %1209 = shl nsw i64 %1208, 2
  %1210 = add i64 %1172, -1568
  %1211 = add i64 %1210, %1209
  %1212 = add i64 %1174, 17
  store i64 %1212, i64* %PC, align 8
  %1213 = inttoptr i64 %1211 to i32*
  store i32 %1179, i32* %1213, align 4
  %1214 = load i64, i64* %RBP, align 8
  %1215 = add i64 %1214, -1492
  %1216 = load i64, i64* %PC, align 8
  %1217 = add i64 %1216, 6
  store i64 %1217, i64* %PC, align 8
  %1218 = inttoptr i64 %1215 to i32*
  %1219 = load i32, i32* %1218, align 4
  %1220 = add i32 %1219, 1
  %1221 = zext i32 %1220 to i64
  store i64 %1221, i64* %RAX, align 8, !tbaa !2428
  %1222 = icmp eq i32 %1219, -1
  %1223 = icmp eq i32 %1220, 0
  %1224 = or i1 %1222, %1223
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %17, align 1, !tbaa !2432
  %1226 = and i32 %1220, 255
  %1227 = tail call i32 @llvm.ctpop.i32(i32 %1226) #8
  %1228 = trunc i32 %1227 to i8
  %1229 = and i8 %1228, 1
  %1230 = xor i8 %1229, 1
  store i8 %1230, i8* %24, align 1, !tbaa !2446
  %1231 = xor i32 %1219, %1220
  %1232 = lshr i32 %1231, 4
  %1233 = trunc i32 %1232 to i8
  %1234 = and i8 %1233, 1
  store i8 %1234, i8* %30, align 1, !tbaa !2447
  %1235 = zext i1 %1223 to i8
  store i8 %1235, i8* %33, align 1, !tbaa !2448
  %1236 = lshr i32 %1220, 31
  %1237 = trunc i32 %1236 to i8
  store i8 %1237, i8* %36, align 1, !tbaa !2449
  %1238 = lshr i32 %1219, 31
  %1239 = xor i32 %1236, %1238
  %1240 = add nuw nsw i32 %1239, %1236
  %1241 = icmp eq i32 %1240, 2
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %42, align 1, !tbaa !2450
  %1243 = add i64 %1216, 15
  store i64 %1243, i64* %PC, align 8
  store i32 %1220, i32* %1218, align 4
  %.pre59 = load i64, i64* %PC, align 8
  %.pre60 = load i64, i64* %RBP, align 8
  br label %block_4011c0

block_400b82:                                     ; preds = %block_400ab9
  %1244 = add i64 %3382, 3
  store i64 %1244, i64* %PC, align 8
  %1245 = load i32, i32* %3350, align 4
  %1246 = add i32 %1245, -1
  %1247 = zext i32 %1246 to i64
  store i64 %1247, i64* %RAX, align 8, !tbaa !2428
  %1248 = icmp eq i32 %1245, 0
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %17, align 1, !tbaa !2432
  %1250 = and i32 %1246, 255
  %1251 = tail call i32 @llvm.ctpop.i32(i32 %1250) #8
  %1252 = trunc i32 %1251 to i8
  %1253 = and i8 %1252, 1
  %1254 = xor i8 %1253, 1
  store i8 %1254, i8* %24, align 1, !tbaa !2446
  %1255 = xor i32 %1245, %1246
  %1256 = lshr i32 %1255, 4
  %1257 = trunc i32 %1256 to i8
  %1258 = and i8 %1257, 1
  store i8 %1258, i8* %30, align 1, !tbaa !2447
  %1259 = icmp eq i32 %1246, 0
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %33, align 1, !tbaa !2448
  %1261 = lshr i32 %1246, 31
  %1262 = trunc i32 %1261 to i8
  store i8 %1262, i8* %36, align 1, !tbaa !2449
  %1263 = lshr i32 %1245, 31
  %1264 = xor i32 %1261, %1263
  %1265 = add nuw nsw i32 %1264, %1263
  %1266 = icmp eq i32 %1265, 2
  %1267 = zext i1 %1266 to i8
  store i8 %1267, i8* %42, align 1, !tbaa !2450
  %1268 = add i64 %3346, -16
  %1269 = add i64 %3382, 9
  store i64 %1269, i64* %PC, align 8
  %1270 = inttoptr i64 %1268 to i32*
  store i32 %1246, i32* %1270, align 4
  %.pre27 = load i64, i64* %PC, align 8
  br label %block_400b8b

block_40175f:                                     ; preds = %block_40100c, %block_4017b0
  %1271 = phi i64 [ %1515, %block_4017b0 ], [ %.pre95, %block_40100c ]
  %1272 = load i64, i64* %RBP, align 8
  %1273 = add i64 %1272, -4
  %1274 = add i64 %1271, 7
  store i64 %1274, i64* %PC, align 8
  %1275 = inttoptr i64 %1273 to i32*
  %1276 = load i32, i32* %1275, align 4
  %1277 = add i32 %1276, -255
  %1278 = icmp ult i32 %1276, 255
  %1279 = zext i1 %1278 to i8
  store i8 %1279, i8* %17, align 1, !tbaa !2432
  %1280 = and i32 %1277, 255
  %1281 = tail call i32 @llvm.ctpop.i32(i32 %1280) #8
  %1282 = trunc i32 %1281 to i8
  %1283 = and i8 %1282, 1
  %1284 = xor i8 %1283, 1
  store i8 %1284, i8* %24, align 1, !tbaa !2446
  %1285 = xor i32 %1276, 16
  %1286 = xor i32 %1285, %1277
  %1287 = lshr i32 %1286, 4
  %1288 = trunc i32 %1287 to i8
  %1289 = and i8 %1288, 1
  store i8 %1289, i8* %30, align 1, !tbaa !2447
  %1290 = icmp eq i32 %1277, 0
  %1291 = zext i1 %1290 to i8
  store i8 %1291, i8* %33, align 1, !tbaa !2448
  %1292 = lshr i32 %1277, 31
  %1293 = trunc i32 %1292 to i8
  store i8 %1293, i8* %36, align 1, !tbaa !2449
  %1294 = lshr i32 %1276, 31
  %1295 = xor i32 %1292, %1294
  %1296 = add nuw nsw i32 %1295, %1294
  %1297 = icmp eq i32 %1296, 2
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %42, align 1, !tbaa !2450
  %1299 = icmp ne i8 %1293, 0
  %1300 = xor i1 %1299, %1297
  %.v161 = select i1 %1300, i64 13, i64 100
  %1301 = add i64 %1271, %.v161
  store i64 %1301, i64* %PC, align 8, !tbaa !2428
  br i1 %1300, label %block_40176c, label %block_4017c3

block_401180:                                     ; preds = %block_4010ff
  %1302 = add i64 %2902, -16
  %1303 = add i64 %2945, 4
  store i64 %1303, i64* %PC, align 8
  %1304 = inttoptr i64 %1302 to i32*
  %1305 = load i32, i32* %1304, align 4
  store i8 0, i8* %17, align 1, !tbaa !2432
  %1306 = and i32 %1305, 255
  %1307 = tail call i32 @llvm.ctpop.i32(i32 %1306) #8
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  %1310 = xor i8 %1309, 1
  store i8 %1310, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  %1311 = icmp eq i32 %1305, 0
  %1312 = zext i1 %1311 to i8
  store i8 %1312, i8* %33, align 1, !tbaa !2448
  %1313 = lshr i32 %1305, 31
  %1314 = trunc i32 %1313 to i8
  store i8 %1314, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %.v137 = select i1 %1311, i64 10, i64 64
  %1315 = add i64 %2945, %.v137
  store i64 %1315, i64* %PC, align 8, !tbaa !2428
  br i1 %1311, label %block_40118a, label %block_4011c0

block_400975:                                     ; preds = %block_400963
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %1316 = add i64 %5826, 9
  store i64 %1316, i64* %PC, align 8
  %1317 = load i32, i32* %1520, align 4
  %1318 = sext i32 %1317 to i64
  store i64 %1318, i64* %RCX, align 8, !tbaa !2428
  %1319 = shl nsw i64 %1318, 2
  %1320 = add i64 %1319, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %1321 = add i64 %5826, 16
  store i64 %1321, i64* %PC, align 8
  %1322 = inttoptr i64 %1320 to i32*
  %1323 = load i32, i32* %1322, align 4
  %1324 = zext i32 %1323 to i64
  store i64 %1324, i64* %RDX, align 8, !tbaa !2428
  %1325 = add i64 %1517, -4
  %1326 = add i64 %5826, 19
  store i64 %1326, i64* %PC, align 8
  %1327 = inttoptr i64 %1325 to i32*
  %1328 = load i32, i32* %1327, align 4
  %1329 = zext i32 %1328 to i64
  store i64 %1329, i64* %RSI, align 8, !tbaa !2428
  %1330 = add i64 %5826, 23
  store i64 %1330, i64* %PC, align 8
  %1331 = load i32, i32* %1520, align 4
  %1332 = sext i32 %1328 to i64
  %1333 = sext i32 %1331 to i64
  %1334 = mul nsw i64 %1333, %1332
  %1335 = and i64 %1334, 4294967295
  store i64 %1335, i64* %RSI, align 8, !tbaa !2428
  %1336 = trunc i64 %1334 to i32
  %1337 = add i32 %1336, %1323
  %1338 = zext i32 %1337 to i64
  store i64 %1338, i64* %RDX, align 8, !tbaa !2428
  %1339 = icmp ult i32 %1337, %1323
  %1340 = icmp ult i32 %1337, %1336
  %1341 = or i1 %1339, %1340
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %17, align 1, !tbaa !2432
  %1343 = and i32 %1337, 255
  %1344 = tail call i32 @llvm.ctpop.i32(i32 %1343) #8
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  %1347 = xor i8 %1346, 1
  store i8 %1347, i8* %24, align 1, !tbaa !2446
  %1348 = xor i64 %1334, %1324
  %1349 = trunc i64 %1348 to i32
  %1350 = xor i32 %1349, %1337
  %1351 = lshr i32 %1350, 4
  %1352 = trunc i32 %1351 to i8
  %1353 = and i8 %1352, 1
  store i8 %1353, i8* %30, align 1, !tbaa !2447
  %1354 = icmp eq i32 %1337, 0
  %1355 = zext i1 %1354 to i8
  store i8 %1355, i8* %33, align 1, !tbaa !2448
  %1356 = lshr i32 %1337, 31
  %1357 = trunc i32 %1356 to i8
  store i8 %1357, i8* %36, align 1, !tbaa !2449
  %1358 = lshr i32 %1323, 31
  %1359 = lshr i32 %1336, 31
  %1360 = xor i32 %1356, %1358
  %1361 = xor i32 %1356, %1359
  %1362 = add nuw nsw i32 %1360, %1361
  %1363 = icmp eq i32 %1362, 2
  %1364 = zext i1 %1363 to i8
  store i8 %1364, i8* %42, align 1, !tbaa !2450
  %1365 = add i64 %1517, -2692
  %1366 = add i64 %5826, 31
  store i64 %1366, i64* %PC, align 8
  %1367 = inttoptr i64 %1365 to i32*
  store i32 255, i32* %1367, align 4
  %1368 = load i32, i32* %EDX, align 4
  %1369 = zext i32 %1368 to i64
  %1370 = load i64, i64* %PC, align 8
  store i64 %1369, i64* %RAX, align 8, !tbaa !2428
  %1371 = sext i32 %1368 to i64
  %1372 = lshr i64 %1371, 32
  store i64 %1372, i64* %56, align 8, !tbaa !2428
  %1373 = load i64, i64* %RBP, align 8
  %1374 = add i64 %1373, -2692
  %1375 = add i64 %1370, 9
  store i64 %1375, i64* %PC, align 8
  %1376 = inttoptr i64 %1374 to i32*
  %1377 = load i32, i32* %1376, align 4
  %1378 = zext i32 %1377 to i64
  store i64 %1378, i64* %RSI, align 8, !tbaa !2428
  %1379 = add i64 %1370, 11
  store i64 %1379, i64* %PC, align 8
  %1380 = sext i32 %1377 to i64
  %1381 = shl nuw i64 %1372, 32
  %1382 = or i64 %1381, %1369
  %1383 = sdiv i64 %1382, %1380
  %1384 = shl i64 %1383, 32
  %1385 = ashr exact i64 %1384, 32
  %1386 = icmp eq i64 %1383, %1385
  br i1 %1386, label %1389, label %1387

; <label>:1387:                                   ; preds = %block_400975
  %1388 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1379, %struct.Memory* %MEMORY.10) #9
  %.pre16 = load i32, i32* %EDX, align 4
  %.pre17 = load i64, i64* %PC, align 8
  %.pre18 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5

; <label>:1389:                                   ; preds = %block_400975
  %1390 = srem i64 %1382, %1380
  %1391 = and i64 %1383, 4294967295
  store i64 %1391, i64* %57, align 8, !tbaa !2428
  %1392 = and i64 %1390, 4294967295
  store i64 %1392, i64* %56, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 0, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  store i8 0, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %1393 = trunc i64 %1390 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit5: ; preds = %1389, %1387
  %1394 = phi i64 [ %.pre18, %1387 ], [ %1373, %1389 ]
  %1395 = phi i64 [ %.pre17, %1387 ], [ %1379, %1389 ]
  %1396 = phi i32 [ %.pre16, %1387 ], [ %1393, %1389 ]
  %1397 = phi %struct.Memory* [ %1388, %1387 ], [ %MEMORY.10, %1389 ]
  %1398 = sext i32 %1396 to i64
  store i64 %1398, i64* %RCX, align 8, !tbaa !2428
  %1399 = shl nsw i64 %1398, 2
  %1400 = add i64 %1399, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %1401 = add i64 %1395, 10
  store i64 %1401, i64* %PC, align 8
  %1402 = inttoptr i64 %1400 to i32*
  %1403 = load i32, i32* %1402, align 4
  %1404 = zext i32 %1403 to i64
  store i64 %1404, i64* %RDX, align 8, !tbaa !2428
  %1405 = add i64 %1394, -4
  %1406 = add i64 %1395, 14
  store i64 %1406, i64* %PC, align 8
  %1407 = inttoptr i64 %1405 to i32*
  %1408 = load i32, i32* %1407, align 4
  %1409 = sext i32 %1408 to i64
  store i64 %1409, i64* %RCX, align 8, !tbaa !2428
  %1410 = shl nsw i64 %1409, 2
  %1411 = add i64 %1394, -1488
  %1412 = add i64 %1411, %1410
  %1413 = add i64 %1395, 21
  store i64 %1413, i64* %PC, align 8
  %1414 = inttoptr i64 %1412 to i32*
  %1415 = load i32, i32* %1414, align 4
  %1416 = xor i32 %1415, %1403
  %1417 = zext i32 %1416 to i64
  store i64 %1417, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  %1418 = and i32 %1416, 255
  %1419 = tail call i32 @llvm.ctpop.i32(i32 %1418) #8
  %1420 = trunc i32 %1419 to i8
  %1421 = and i8 %1420, 1
  %1422 = xor i8 %1421, 1
  store i8 %1422, i8* %24, align 1, !tbaa !2446
  %1423 = icmp eq i32 %1416, 0
  %1424 = zext i1 %1423 to i8
  store i8 %1424, i8* %33, align 1, !tbaa !2448
  %1425 = lshr i32 %1416, 31
  %1426 = trunc i32 %1425 to i8
  store i8 %1426, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  store i8 0, i8* %30, align 1, !tbaa !2447
  %1427 = add i64 %1395, 28
  store i64 %1427, i64* %PC, align 8
  store i32 %1416, i32* %1414, align 4
  %.pre19 = load i64, i64* %PC, align 8
  %.pre20 = load i64, i64* %RBP, align 8
  br label %block_4009bb

block_40176c:                                     ; preds = %block_40175f
  %1428 = add i64 %1301, 4
  store i64 %1428, i64* %PC, align 8
  %1429 = load i32, i32* %1275, align 4
  %1430 = sext i32 %1429 to i64
  store i64 %1430, i64* %RAX, align 8, !tbaa !2428
  %1431 = shl nsw i64 %1430, 2
  %1432 = add i64 %1431, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %1433 = add i64 %1301, 12
  store i64 %1433, i64* %PC, align 8
  %1434 = inttoptr i64 %1432 to i32*
  %1435 = load i32, i32* %1434, align 4
  %1436 = add i32 %1435, 1
  %1437 = icmp ne i32 %1435, -1
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %17, align 1, !tbaa !2432
  %1439 = and i32 %1436, 255
  %1440 = tail call i32 @llvm.ctpop.i32(i32 %1439) #8
  %1441 = trunc i32 %1440 to i8
  %1442 = and i8 %1441, 1
  %1443 = xor i8 %1442, 1
  store i8 %1443, i8* %24, align 1, !tbaa !2446
  %1444 = xor i32 %1435, 16
  %1445 = xor i32 %1436, %1444
  %1446 = lshr i32 %1445, 4
  %1447 = trunc i32 %1446 to i8
  %1448 = and i8 %1447, 1
  store i8 %1448, i8* %30, align 1, !tbaa !2447
  %1449 = icmp eq i32 %1436, 0
  %1450 = zext i1 %1449 to i8
  store i8 %1450, i8* %33, align 1, !tbaa !2448
  %1451 = lshr i32 %1436, 31
  %1452 = trunc i32 %1451 to i8
  store i8 %1452, i8* %36, align 1, !tbaa !2449
  %1453 = lshr i32 %1435, 31
  %1454 = xor i32 %1453, 1
  %1455 = xor i32 %1451, %1453
  %1456 = add nuw nsw i32 %1455, %1454
  %1457 = icmp eq i32 %1456, 2
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %42, align 1, !tbaa !2450
  %.v162 = select i1 %1449, i64 53, i64 18
  %1459 = add i64 %1301, %.v162
  %1460 = add i64 %1459, 4
  store i64 %1460, i64* %PC, align 8
  %1461 = load i32, i32* %1275, align 4
  %1462 = sext i32 %1461 to i64
  store i64 %1462, i64* %RAX, align 8, !tbaa !2428
  %1463 = shl nsw i64 %1462, 2
  %1464 = add i64 %1463, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  br i1 %1449, label %block_4017a1, label %block_40177e

block_4016e3:                                     ; preds = %block_4011d3
  store i32 0, i32* %3940, align 4
  %.pre93 = load i64, i64* %PC, align 8
  br label %block_4016ea

block_401709:                                     ; preds = %block_4016f7
  %1465 = add i64 %652, 12
  store i64 %1465, i64* %PC, align 8
  %1466 = inttoptr i64 %657 to i32*
  %1467 = load i32, i32* %1466, align 4
  %1468 = sext i32 %1467 to i64
  store i64 %1468, i64* %RAX, align 8, !tbaa !2428
  %1469 = shl nsw i64 %1468, 2
  %1470 = add i64 %1469, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %1471 = add i64 %652, 19
  store i64 %1471, i64* %PC, align 8
  %1472 = inttoptr i64 %1470 to i32*
  %1473 = load i32, i32* %1472, align 4
  %1474 = zext i32 %1473 to i64
  store i64 %1474, i64* %RCX, align 8, !tbaa !2428
  %1475 = add i64 %652, 23
  store i64 %1475, i64* %PC, align 8
  %1476 = load i32, i32* %4774, align 4
  %1477 = sext i32 %1476 to i64
  store i64 %1477, i64* %RAX, align 8, !tbaa !2428
  %1478 = shl nsw i64 %1477, 2
  %1479 = add i64 %1478, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %1480 = add i64 %652, 30
  store i64 %1480, i64* %PC, align 8
  %1481 = inttoptr i64 %1479 to i32*
  store i32 %1473, i32* %1481, align 4
  %1482 = load i64, i64* %PC, align 8
  %1483 = add i64 %1482, 20
  store i64 %1483, i64* %PC, align 8, !tbaa !2428
  br label %block_40173b

block_4017b0:                                     ; preds = %block_40177e, %block_4017a1
  %1484 = phi i64 [ %5762, %block_40177e ], [ %.pre96, %block_4017a1 ]
  %1485 = load i64, i64* %RBP, align 8
  %1486 = add i64 %1485, -4
  %1487 = add i64 %1484, 8
  store i64 %1487, i64* %PC, align 8
  %1488 = inttoptr i64 %1486 to i32*
  %1489 = load i32, i32* %1488, align 4
  %1490 = add i32 %1489, 1
  %1491 = zext i32 %1490 to i64
  store i64 %1491, i64* %RAX, align 8, !tbaa !2428
  %1492 = icmp eq i32 %1489, -1
  %1493 = icmp eq i32 %1490, 0
  %1494 = or i1 %1492, %1493
  %1495 = zext i1 %1494 to i8
  store i8 %1495, i8* %17, align 1, !tbaa !2432
  %1496 = and i32 %1490, 255
  %1497 = tail call i32 @llvm.ctpop.i32(i32 %1496) #8
  %1498 = trunc i32 %1497 to i8
  %1499 = and i8 %1498, 1
  %1500 = xor i8 %1499, 1
  store i8 %1500, i8* %24, align 1, !tbaa !2446
  %1501 = xor i32 %1489, %1490
  %1502 = lshr i32 %1501, 4
  %1503 = trunc i32 %1502 to i8
  %1504 = and i8 %1503, 1
  store i8 %1504, i8* %30, align 1, !tbaa !2447
  %1505 = zext i1 %1493 to i8
  store i8 %1505, i8* %33, align 1, !tbaa !2448
  %1506 = lshr i32 %1490, 31
  %1507 = trunc i32 %1506 to i8
  store i8 %1507, i8* %36, align 1, !tbaa !2449
  %1508 = lshr i32 %1489, 31
  %1509 = xor i32 %1506, %1508
  %1510 = add nuw nsw i32 %1509, %1506
  %1511 = icmp eq i32 %1510, 2
  %1512 = zext i1 %1511 to i8
  store i8 %1512, i8* %42, align 1, !tbaa !2450
  %1513 = add i64 %1484, 14
  store i64 %1513, i64* %PC, align 8
  store i32 %1490, i32* %1488, align 4
  %1514 = load i64, i64* %PC, align 8
  %1515 = add i64 %1514, -95
  store i64 %1515, i64* %PC, align 8, !tbaa !2428
  br label %block_40175f

block_400956:                                     ; preds = %block_400940, %block_4009bb
  %1516 = phi i64 [ %.pre15, %block_400940 ], [ %620, %block_4009bb ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.15, %block_400940 ], [ %MEMORY.6, %block_4009bb ]
  %1517 = load i64, i64* %RBP, align 8
  %1518 = add i64 %1517, -8
  %1519 = add i64 %1516, 7
  store i64 %1519, i64* %PC, align 8
  %1520 = inttoptr i64 %1518 to i32*
  %1521 = load i32, i32* %1520, align 4
  %1522 = add i32 %1521, -255
  %1523 = icmp ult i32 %1521, 255
  %1524 = zext i1 %1523 to i8
  store i8 %1524, i8* %17, align 1, !tbaa !2432
  %1525 = and i32 %1522, 255
  %1526 = tail call i32 @llvm.ctpop.i32(i32 %1525) #8
  %1527 = trunc i32 %1526 to i8
  %1528 = and i8 %1527, 1
  %1529 = xor i8 %1528, 1
  store i8 %1529, i8* %24, align 1, !tbaa !2446
  %1530 = xor i32 %1521, 16
  %1531 = xor i32 %1530, %1522
  %1532 = lshr i32 %1531, 4
  %1533 = trunc i32 %1532 to i8
  %1534 = and i8 %1533, 1
  store i8 %1534, i8* %30, align 1, !tbaa !2447
  %1535 = icmp eq i32 %1522, 0
  %1536 = zext i1 %1535 to i8
  store i8 %1536, i8* %33, align 1, !tbaa !2448
  %1537 = lshr i32 %1522, 31
  %1538 = trunc i32 %1537 to i8
  store i8 %1538, i8* %36, align 1, !tbaa !2449
  %1539 = lshr i32 %1521, 31
  %1540 = xor i32 %1537, %1539
  %1541 = add nuw nsw i32 %1540, %1539
  %1542 = icmp eq i32 %1541, 2
  %1543 = zext i1 %1542 to i8
  store i8 %1543, i8* %42, align 1, !tbaa !2450
  %1544 = icmp ne i8 %1538, 0
  %1545 = xor i1 %1544, %1542
  %.v110 = select i1 %1545, i64 13, i64 120
  %1546 = add i64 %1516, %.v110
  store i64 %1546, i64* %PC, align 8, !tbaa !2428
  br i1 %1545, label %block_400963, label %block_4009ce

block_40174e:                                     ; preds = %block_4016ea
  %1547 = add i64 %4800, 5
  br label %block_401753

block_4015e8:                                     ; preds = %block_4015dc
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %1548 = add i64 %266, 9
  store i64 %1548, i64* %PC, align 8
  %1549 = load i32, i32* %5831, align 4
  %1550 = sext i32 %1549 to i64
  store i64 %1550, i64* %RCX, align 8, !tbaa !2428
  %1551 = shl nsw i64 %1550, 2
  %1552 = add i64 %5828, -1568
  %1553 = add i64 %1552, %1551
  %1554 = add i64 %266, 16
  store i64 %1554, i64* %PC, align 8
  %1555 = inttoptr i64 %1553 to i32*
  %1556 = load i32, i32* %1555, align 4
  %1557 = zext i32 %1556 to i64
  store i64 %1557, i64* %RDX, align 8, !tbaa !2428
  %1558 = add i64 %266, 20
  store i64 %1558, i64* %PC, align 8
  %1559 = load i32, i32* %240, align 4
  %1560 = sext i32 %1559 to i64
  store i64 %1560, i64* %RCX, align 8, !tbaa !2428
  %1561 = shl nsw i64 %1560, 2
  %1562 = add i64 %5828, -1536
  %1563 = add i64 %1562, %1561
  %1564 = add i64 %266, 27
  store i64 %1564, i64* %PC, align 8
  %1565 = inttoptr i64 %1563 to i32*
  %1566 = load i32, i32* %1565, align 4
  %1567 = add i32 %1566, %1556
  %1568 = zext i32 %1567 to i64
  store i64 %1568, i64* %RDX, align 8, !tbaa !2428
  %1569 = icmp ult i32 %1567, %1556
  %1570 = icmp ult i32 %1567, %1566
  %1571 = or i1 %1569, %1570
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %17, align 1, !tbaa !2432
  %1573 = and i32 %1567, 255
  %1574 = tail call i32 @llvm.ctpop.i32(i32 %1573) #8
  %1575 = trunc i32 %1574 to i8
  %1576 = and i8 %1575, 1
  %1577 = xor i8 %1576, 1
  store i8 %1577, i8* %24, align 1, !tbaa !2446
  %1578 = xor i32 %1566, %1556
  %1579 = xor i32 %1578, %1567
  %1580 = lshr i32 %1579, 4
  %1581 = trunc i32 %1580 to i8
  %1582 = and i8 %1581, 1
  store i8 %1582, i8* %30, align 1, !tbaa !2447
  %1583 = icmp eq i32 %1567, 0
  %1584 = zext i1 %1583 to i8
  store i8 %1584, i8* %33, align 1, !tbaa !2448
  %1585 = lshr i32 %1567, 31
  %1586 = trunc i32 %1585 to i8
  store i8 %1586, i8* %36, align 1, !tbaa !2449
  %1587 = lshr i32 %1556, 31
  %1588 = lshr i32 %1566, 31
  %1589 = xor i32 %1585, %1587
  %1590 = xor i32 %1585, %1588
  %1591 = add nuw nsw i32 %1589, %1590
  %1592 = icmp eq i32 %1591, 2
  %1593 = zext i1 %1592 to i8
  store i8 %1593, i8* %42, align 1, !tbaa !2450
  %1594 = add i64 %5828, -2728
  %1595 = add i64 %266, 33
  store i64 %1595, i64* %PC, align 8
  %1596 = inttoptr i64 %1594 to i32*
  store i32 255, i32* %1596, align 4
  %1597 = load i32, i32* %EDX, align 4
  %1598 = zext i32 %1597 to i64
  %1599 = load i64, i64* %PC, align 8
  store i64 %1598, i64* %RAX, align 8, !tbaa !2428
  %1600 = sext i32 %1597 to i64
  %1601 = lshr i64 %1600, 32
  store i64 %1601, i64* %56, align 8, !tbaa !2428
  %1602 = load i64, i64* %RBP, align 8
  %1603 = add i64 %1602, -2728
  %1604 = add i64 %1599, 9
  store i64 %1604, i64* %PC, align 8
  %1605 = inttoptr i64 %1603 to i32*
  %1606 = load i32, i32* %1605, align 4
  %1607 = zext i32 %1606 to i64
  store i64 %1607, i64* %RSI, align 8, !tbaa !2428
  %1608 = add i64 %1599, 11
  store i64 %1608, i64* %PC, align 8
  %1609 = sext i32 %1606 to i64
  %1610 = shl nuw i64 %1601, 32
  %1611 = or i64 %1610, %1598
  %1612 = sdiv i64 %1611, %1609
  %1613 = shl i64 %1612, 32
  %1614 = ashr exact i64 %1613, 32
  %1615 = icmp eq i64 %1612, %1614
  br i1 %1615, label %1618, label %1616

; <label>:1616:                                   ; preds = %block_4015e8
  %1617 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1608, %struct.Memory* %MEMORY.51) #9
  %.pre81 = load i32, i32* %EDX, align 4
  %.pre82 = load i64, i64* %PC, align 8
  %.pre83 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4

; <label>:1618:                                   ; preds = %block_4015e8
  %1619 = srem i64 %1611, %1609
  %1620 = and i64 %1612, 4294967295
  store i64 %1620, i64* %57, align 8, !tbaa !2428
  %1621 = and i64 %1619, 4294967295
  store i64 %1621, i64* %56, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 0, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  store i8 0, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %1622 = trunc i64 %1619 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4: ; preds = %1618, %1616
  %1623 = phi i64 [ %.pre83, %1616 ], [ %1602, %1618 ]
  %1624 = phi i64 [ %.pre82, %1616 ], [ %1608, %1618 ]
  %1625 = phi i32 [ %.pre81, %1616 ], [ %1622, %1618 ]
  %1626 = phi %struct.Memory* [ %1617, %1616 ], [ %MEMORY.51, %1618 ]
  %1627 = sext i32 %1625 to i64
  store i64 %1627, i64* %RCX, align 8, !tbaa !2428
  %1628 = shl nsw i64 %1627, 2
  %1629 = add i64 %1628, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %1630 = add i64 %1624, 10
  store i64 %1630, i64* %PC, align 8
  %1631 = inttoptr i64 %1629 to i32*
  %1632 = load i32, i32* %1631, align 4
  %1633 = xor i32 %1632, 1
  %1634 = zext i32 %1633 to i64
  store i64 %1634, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  %1635 = and i32 %1633, 255
  %1636 = tail call i32 @llvm.ctpop.i32(i32 %1635) #8
  %1637 = trunc i32 %1636 to i8
  %1638 = and i8 %1637, 1
  %1639 = xor i8 %1638, 1
  store i8 %1639, i8* %24, align 1, !tbaa !2446
  %1640 = icmp eq i32 %1633, 0
  %1641 = zext i1 %1640 to i8
  store i8 %1641, i8* %33, align 1, !tbaa !2448
  %1642 = lshr i32 %1632, 31
  %1643 = trunc i32 %1642 to i8
  store i8 %1643, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  store i8 0, i8* %30, align 1, !tbaa !2447
  %1644 = sext i32 %1633 to i64
  store i64 %1644, i64* %RCX, align 8, !tbaa !2428
  %1645 = shl nsw i64 %1644, 2
  %1646 = add i64 %1645, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %1647 = add i64 %1624, 23
  store i64 %1647, i64* %PC, align 8
  %1648 = inttoptr i64 %1646 to i32*
  %1649 = load i32, i32* %1648, align 4
  %1650 = zext i32 %1649 to i64
  store i64 %1650, i64* %RDX, align 8, !tbaa !2428
  %1651 = add i64 %1623, -16
  %1652 = add i64 %1624, 26
  store i64 %1652, i64* %PC, align 8
  %1653 = inttoptr i64 %1651 to i32*
  %1654 = load i32, i32* %1653, align 4
  %1655 = add i32 %1654, %1649
  %1656 = zext i32 %1655 to i64
  store i64 %1656, i64* %RDX, align 8, !tbaa !2428
  %1657 = icmp ult i32 %1655, %1649
  %1658 = icmp ult i32 %1655, %1654
  %1659 = or i1 %1657, %1658
  %1660 = zext i1 %1659 to i8
  store i8 %1660, i8* %17, align 1, !tbaa !2432
  %1661 = and i32 %1655, 255
  %1662 = tail call i32 @llvm.ctpop.i32(i32 %1661) #8
  %1663 = trunc i32 %1662 to i8
  %1664 = and i8 %1663, 1
  %1665 = xor i8 %1664, 1
  store i8 %1665, i8* %24, align 1, !tbaa !2446
  %1666 = xor i32 %1654, %1649
  %1667 = xor i32 %1666, %1655
  %1668 = lshr i32 %1667, 4
  %1669 = trunc i32 %1668 to i8
  %1670 = and i8 %1669, 1
  store i8 %1670, i8* %30, align 1, !tbaa !2447
  %1671 = icmp eq i32 %1655, 0
  %1672 = zext i1 %1671 to i8
  store i8 %1672, i8* %33, align 1, !tbaa !2448
  %1673 = lshr i32 %1655, 31
  %1674 = trunc i32 %1673 to i8
  store i8 %1674, i8* %36, align 1, !tbaa !2449
  %1675 = lshr i32 %1649, 31
  %1676 = lshr i32 %1654, 31
  %1677 = xor i32 %1673, %1675
  %1678 = xor i32 %1673, %1676
  %1679 = add nuw nsw i32 %1677, %1678
  %1680 = icmp eq i32 %1679, 2
  %1681 = zext i1 %1680 to i8
  store i8 %1681, i8* %42, align 1, !tbaa !2450
  %1682 = add i64 %1624, 29
  store i64 %1682, i64* %PC, align 8
  store i32 %1655, i32* %1653, align 4
  %.pre84 = load i64, i64* %PC, align 8
  %.pre85 = load i64, i64* %RBP, align 8
  br label %block_401631

block_40134c:                                     ; preds = %block_401237, %block_401347
  %.sink102 = phi i64 [ %5326, %block_401237 ], [ %1718, %block_401347 ]
  %1683 = load i64, i64* %RBP, align 8
  %1684 = add i64 %1683, -8
  %1685 = add i64 %.sink102, 7
  store i64 %1685, i64* %PC, align 8
  %1686 = inttoptr i64 %1684 to i32*
  store i32 1, i32* %1686, align 4
  %.pre66 = load i64, i64* %PC, align 8
  br label %block_401353

block_401437:                                     ; preds = %block_401497, %block_401430
  %1687 = phi i64 [ %.pre71, %block_401430 ], [ %5931, %block_401497 ]
  %1688 = load i64, i64* %RBP, align 8
  %1689 = add i64 %1688, -4
  %1690 = add i64 %1687, 7
  store i64 %1690, i64* %PC, align 8
  %1691 = inttoptr i64 %1689 to i32*
  %1692 = load i32, i32* %1691, align 4
  %1693 = add i32 %1692, -255
  %1694 = icmp ult i32 %1692, 255
  %1695 = zext i1 %1694 to i8
  store i8 %1695, i8* %17, align 1, !tbaa !2432
  %1696 = and i32 %1693, 255
  %1697 = tail call i32 @llvm.ctpop.i32(i32 %1696) #8
  %1698 = trunc i32 %1697 to i8
  %1699 = and i8 %1698, 1
  %1700 = xor i8 %1699, 1
  store i8 %1700, i8* %24, align 1, !tbaa !2446
  %1701 = xor i32 %1692, 16
  %1702 = xor i32 %1701, %1693
  %1703 = lshr i32 %1702, 4
  %1704 = trunc i32 %1703 to i8
  %1705 = and i8 %1704, 1
  store i8 %1705, i8* %30, align 1, !tbaa !2447
  %1706 = icmp eq i32 %1693, 0
  %1707 = zext i1 %1706 to i8
  store i8 %1707, i8* %33, align 1, !tbaa !2448
  %1708 = lshr i32 %1693, 31
  %1709 = trunc i32 %1708 to i8
  store i8 %1709, i8* %36, align 1, !tbaa !2449
  %1710 = lshr i32 %1692, 31
  %1711 = xor i32 %1708, %1710
  %1712 = add nuw nsw i32 %1711, %1710
  %1713 = icmp eq i32 %1712, 2
  %1714 = zext i1 %1713 to i8
  store i8 %1714, i8* %42, align 1, !tbaa !2450
  %1715 = icmp ne i8 %1709, 0
  %1716 = xor i1 %1715, %1713
  %.v150 = select i1 %1716, i64 13, i64 115
  %1717 = add i64 %1687, %.v150
  store i64 %1717, i64* %PC, align 8, !tbaa !2428
  br i1 %1716, label %block_401444, label %block_4014aa

block_401347:                                     ; preds = %block_4012ad, %block_401342
  %.sink106 = phi i64 [ %3410, %block_4012ad ], [ %1854, %block_401342 ]
  store i64 %.sink106, i64* %PC, align 8, !tbaa !2428
  %1718 = add i64 %.sink106, 5
  br label %block_40134c

block_400940:                                     ; preds = %block_400936
  %1719 = add i64 %1795, 4
  store i64 %1719, i64* %PC, align 8
  %1720 = load i32, i32* %1769, align 4
  %1721 = sext i32 %1720 to i64
  store i64 %1721, i64* %RAX, align 8, !tbaa !2428
  %1722 = shl nsw i64 %1721, 2
  %1723 = add i64 %1766, -1488
  %1724 = add i64 %1723, %1722
  %1725 = add i64 %1795, 15
  store i64 %1725, i64* %PC, align 8
  %1726 = inttoptr i64 %1724 to i32*
  store i32 0, i32* %1726, align 4
  %1727 = load i64, i64* %RBP, align 8
  %1728 = add i64 %1727, -8
  %1729 = load i64, i64* %PC, align 8
  %1730 = add i64 %1729, 7
  store i64 %1730, i64* %PC, align 8
  %1731 = inttoptr i64 %1728 to i32*
  store i32 0, i32* %1731, align 4
  %.pre15 = load i64, i64* %PC, align 8
  br label %block_400956

block_400b7d:                                     ; preds = %block_400af6
  %1732 = add i64 %5666, 701
  br label %block_400e3a

block_40173b:                                     ; preds = %block_40172c, %block_401709
  %1733 = phi i64 [ %.pre94, %block_40172c ], [ %1483, %block_401709 ]
  %1734 = load i64, i64* %RBP, align 8
  %1735 = add i64 %1734, -4
  %1736 = add i64 %1733, 8
  store i64 %1736, i64* %PC, align 8
  %1737 = inttoptr i64 %1735 to i32*
  %1738 = load i32, i32* %1737, align 4
  %1739 = add i32 %1738, 1
  %1740 = zext i32 %1739 to i64
  store i64 %1740, i64* %RAX, align 8, !tbaa !2428
  %1741 = icmp eq i32 %1738, -1
  %1742 = icmp eq i32 %1739, 0
  %1743 = or i1 %1741, %1742
  %1744 = zext i1 %1743 to i8
  store i8 %1744, i8* %17, align 1, !tbaa !2432
  %1745 = and i32 %1739, 255
  %1746 = tail call i32 @llvm.ctpop.i32(i32 %1745) #8
  %1747 = trunc i32 %1746 to i8
  %1748 = and i8 %1747, 1
  %1749 = xor i8 %1748, 1
  store i8 %1749, i8* %24, align 1, !tbaa !2446
  %1750 = xor i32 %1738, %1739
  %1751 = lshr i32 %1750, 4
  %1752 = trunc i32 %1751 to i8
  %1753 = and i8 %1752, 1
  store i8 %1753, i8* %30, align 1, !tbaa !2447
  %1754 = zext i1 %1742 to i8
  store i8 %1754, i8* %33, align 1, !tbaa !2448
  %1755 = lshr i32 %1739, 31
  %1756 = trunc i32 %1755 to i8
  store i8 %1756, i8* %36, align 1, !tbaa !2449
  %1757 = lshr i32 %1738, 31
  %1758 = xor i32 %1755, %1757
  %1759 = add nuw nsw i32 %1758, %1755
  %1760 = icmp eq i32 %1759, 2
  %1761 = zext i1 %1760 to i8
  store i8 %1761, i8* %42, align 1, !tbaa !2450
  %1762 = add i64 %1733, 14
  store i64 %1762, i64* %PC, align 8
  store i32 %1739, i32* %1737, align 4
  %1763 = load i64, i64* %PC, align 8
  %1764 = add i64 %1763, -95
  store i64 %1764, i64* %PC, align 8, !tbaa !2428
  br label %block_4016ea

block_400936:                                     ; preds = %block_4009ea, %block_400910
  %1765 = phi i64 [ %.pre, %block_400910 ], [ %363, %block_4009ea ]
  %MEMORY.15 = phi %struct.Memory* [ %2, %block_400910 ], [ %MEMORY.10, %block_4009ea ]
  %1766 = load i64, i64* %RBP, align 8
  %1767 = add i64 %1766, -4
  %1768 = add i64 %1765, 4
  store i64 %1768, i64* %PC, align 8
  %1769 = inttoptr i64 %1767 to i32*
  %1770 = load i32, i32* %1769, align 4
  %1771 = add i32 %1770, -16
  %1772 = icmp ult i32 %1770, 16
  %1773 = zext i1 %1772 to i8
  store i8 %1773, i8* %17, align 1, !tbaa !2432
  %1774 = and i32 %1771, 255
  %1775 = tail call i32 @llvm.ctpop.i32(i32 %1774) #8
  %1776 = trunc i32 %1775 to i8
  %1777 = and i8 %1776, 1
  %1778 = xor i8 %1777, 1
  store i8 %1778, i8* %24, align 1, !tbaa !2446
  %1779 = xor i32 %1770, 16
  %1780 = xor i32 %1779, %1771
  %1781 = lshr i32 %1780, 4
  %1782 = trunc i32 %1781 to i8
  %1783 = and i8 %1782, 1
  store i8 %1783, i8* %30, align 1, !tbaa !2447
  %1784 = icmp eq i32 %1771, 0
  %1785 = zext i1 %1784 to i8
  store i8 %1785, i8* %33, align 1, !tbaa !2448
  %1786 = lshr i32 %1771, 31
  %1787 = trunc i32 %1786 to i8
  store i8 %1787, i8* %36, align 1, !tbaa !2449
  %1788 = lshr i32 %1770, 31
  %1789 = xor i32 %1786, %1788
  %1790 = add nuw nsw i32 %1789, %1788
  %1791 = icmp eq i32 %1790, 2
  %1792 = zext i1 %1791 to i8
  store i8 %1792, i8* %42, align 1, !tbaa !2450
  %1793 = icmp ne i8 %1787, 0
  %1794 = xor i1 %1793, %1791
  %.demorgan = or i1 %1784, %1794
  %.v = select i1 %.demorgan, i64 10, i64 224
  %1795 = add i64 %1765, %.v
  store i64 %1795, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400940, label %block_400a16

block_4011f1:                                     ; preds = %block_401404, %block_4011ea
  %1796 = phi i64 [ %.pre61, %block_4011ea ], [ %6271, %block_401404 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.37, %block_4011ea ], [ %MEMORY.54, %block_401404 ]
  %1797 = load i64, i64* %RBP, align 8
  %1798 = add i64 %1797, -4
  %1799 = add i64 %1796, 3
  store i64 %1799, i64* %PC, align 8
  %1800 = inttoptr i64 %1798 to i32*
  %1801 = load i32, i32* %1800, align 4
  %1802 = zext i32 %1801 to i64
  store i64 %1802, i64* %RAX, align 8, !tbaa !2428
  %1803 = add i64 %1797, -12
  %1804 = add i64 %1796, 7
  store i64 %1804, i64* %PC, align 8
  %1805 = inttoptr i64 %1803 to i32*
  %1806 = load i32, i32* %1805, align 4
  %1807 = sext i32 %1806 to i64
  store i64 %1807, i64* %RCX, align 8, !tbaa !2428
  %1808 = shl nsw i64 %1807, 2
  %1809 = add i64 %1797, -1328
  %1810 = add i64 %1809, %1808
  %1811 = add i64 %1796, 14
  store i64 %1811, i64* %PC, align 8
  %1812 = inttoptr i64 %1810 to i32*
  %1813 = load i32, i32* %1812, align 4
  %1814 = sub i32 %1801, %1813
  %1815 = icmp ult i32 %1801, %1813
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %17, align 1, !tbaa !2432
  %1817 = and i32 %1814, 255
  %1818 = tail call i32 @llvm.ctpop.i32(i32 %1817) #8
  %1819 = trunc i32 %1818 to i8
  %1820 = and i8 %1819, 1
  %1821 = xor i8 %1820, 1
  store i8 %1821, i8* %24, align 1, !tbaa !2446
  %1822 = xor i32 %1813, %1801
  %1823 = xor i32 %1822, %1814
  %1824 = lshr i32 %1823, 4
  %1825 = trunc i32 %1824 to i8
  %1826 = and i8 %1825, 1
  store i8 %1826, i8* %30, align 1, !tbaa !2447
  %1827 = icmp eq i32 %1814, 0
  %1828 = zext i1 %1827 to i8
  store i8 %1828, i8* %33, align 1, !tbaa !2448
  %1829 = lshr i32 %1814, 31
  %1830 = trunc i32 %1829 to i8
  store i8 %1830, i8* %36, align 1, !tbaa !2449
  %1831 = lshr i32 %1801, 31
  %1832 = lshr i32 %1813, 31
  %1833 = xor i32 %1832, %1831
  %1834 = xor i32 %1829, %1831
  %1835 = add nuw nsw i32 %1834, %1833
  %1836 = icmp eq i32 %1835, 2
  %1837 = zext i1 %1836 to i8
  store i8 %1837, i8* %42, align 1, !tbaa !2450
  %1838 = icmp ne i8 %1830, 0
  %1839 = xor i1 %1838, %1836
  %.demorgan139 = or i1 %1827, %1839
  %.v140 = select i1 %.demorgan139, i64 20, i64 575
  %1840 = add i64 %1796, %.v140
  store i64 %1840, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan139, label %block_401205, label %block_401430

block_401333:                                     ; preds = %block_4012d0, %block_4012e2
  %1841 = phi i64 [ %3187, %block_4012d0 ], [ %5526, %block_4012e2 ]
  %1842 = phi i64 [ %3152, %block_4012d0 ], [ %.pre64, %block_4012e2 ]
  %1843 = add i64 %1842, -4
  %1844 = add i64 %1841, 4
  store i64 %1844, i64* %PC, align 8
  %1845 = inttoptr i64 %1843 to i32*
  %1846 = load i32, i32* %1845, align 4
  %1847 = sext i32 %1846 to i64
  store i64 %1847, i64* %RAX, align 8, !tbaa !2428
  %1848 = shl nsw i64 %1847, 2
  %1849 = add i64 %1842, -1616
  %1850 = add i64 %1849, %1848
  %1851 = add i64 %1841, 15
  store i64 %1851, i64* %PC, align 8
  %1852 = inttoptr i64 %1850 to i32*
  store i32 0, i32* %1852, align 4
  %.pre65 = load i64, i64* %PC, align 8
  br label %block_401342

block_401342:                                     ; preds = %block_401302, %block_401333
  %1853 = phi i64 [ %2535, %block_401302 ], [ %.pre65, %block_401333 ]
  %1854 = add i64 %1853, 5
  br label %block_401347

block_40172c:                                     ; preds = %block_4016f7
  %1855 = add i64 %652, 15
  store i64 %1855, i64* %PC, align 8
  %1856 = inttoptr i64 %657 to i32*
  store i32 0, i32* %1856, align 4
  %.pre94 = load i64, i64* %PC, align 8
  br label %block_40173b

block_4014e3:                                     ; preds = %block_40155f, %block_4014c5
  %1857 = phi i64 [ %.pre74, %block_4014c5 ], [ %5743, %block_40155f ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.45, %block_4014c5 ], [ %MEMORY.49, %block_40155f ]
  %1858 = load i64, i64* %RBP, align 8
  %1859 = add i64 %1858, -8
  %1860 = add i64 %1857, 3
  store i64 %1860, i64* %PC, align 8
  %1861 = inttoptr i64 %1859 to i32*
  %1862 = load i32, i32* %1861, align 4
  %1863 = zext i32 %1862 to i64
  store i64 %1863, i64* %RAX, align 8, !tbaa !2428
  %1864 = add i64 %1858, -12
  %1865 = add i64 %1857, 7
  store i64 %1865, i64* %PC, align 8
  %1866 = inttoptr i64 %1864 to i32*
  %1867 = load i32, i32* %1866, align 4
  %1868 = sext i32 %1867 to i64
  store i64 %1868, i64* %RCX, align 8, !tbaa !2428
  %1869 = shl nsw i64 %1868, 2
  %1870 = add i64 %1858, -1328
  %1871 = add i64 %1870, %1869
  %1872 = add i64 %1857, 14
  store i64 %1872, i64* %PC, align 8
  %1873 = inttoptr i64 %1871 to i32*
  %1874 = load i32, i32* %1873, align 4
  %1875 = sub i32 %1862, %1874
  %1876 = icmp ult i32 %1862, %1874
  %1877 = zext i1 %1876 to i8
  store i8 %1877, i8* %17, align 1, !tbaa !2432
  %1878 = and i32 %1875, 255
  %1879 = tail call i32 @llvm.ctpop.i32(i32 %1878) #8
  %1880 = trunc i32 %1879 to i8
  %1881 = and i8 %1880, 1
  %1882 = xor i8 %1881, 1
  store i8 %1882, i8* %24, align 1, !tbaa !2446
  %1883 = xor i32 %1874, %1862
  %1884 = xor i32 %1883, %1875
  %1885 = lshr i32 %1884, 4
  %1886 = trunc i32 %1885 to i8
  %1887 = and i8 %1886, 1
  store i8 %1887, i8* %30, align 1, !tbaa !2447
  %1888 = icmp eq i32 %1875, 0
  %1889 = zext i1 %1888 to i8
  store i8 %1889, i8* %33, align 1, !tbaa !2448
  %1890 = lshr i32 %1875, 31
  %1891 = trunc i32 %1890 to i8
  store i8 %1891, i8* %36, align 1, !tbaa !2449
  %1892 = lshr i32 %1862, 31
  %1893 = lshr i32 %1874, 31
  %1894 = xor i32 %1893, %1892
  %1895 = xor i32 %1890, %1892
  %1896 = add nuw nsw i32 %1895, %1894
  %1897 = icmp eq i32 %1896, 2
  %1898 = zext i1 %1897 to i8
  store i8 %1898, i8* %42, align 1, !tbaa !2450
  %1899 = icmp ne i8 %1891, 0
  %1900 = xor i1 %1899, %1897
  %.demorgan153 = or i1 %1888, %1900
  %.v154 = select i1 %.demorgan153, i64 20, i64 143
  %1901 = add i64 %1857, %.v154
  store i64 %1901, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan153, label %block_4014f7, label %block_401572

block_401631:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4, %block_4015dc
  %1902 = phi i64 [ %5828, %block_4015dc ], [ %.pre85, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4 ]
  %1903 = phi i64 [ %266, %block_4015dc ], [ %.pre84, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4 ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.51, %block_4015dc ], [ %1626, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit4 ]
  %1904 = add i64 %1902, -8
  %1905 = add i64 %1903, 8
  store i64 %1905, i64* %PC, align 8
  %1906 = inttoptr i64 %1904 to i32*
  %1907 = load i32, i32* %1906, align 4
  %1908 = add i32 %1907, 1
  %1909 = zext i32 %1908 to i64
  store i64 %1909, i64* %RAX, align 8, !tbaa !2428
  %1910 = icmp eq i32 %1907, -1
  %1911 = icmp eq i32 %1908, 0
  %1912 = or i1 %1910, %1911
  %1913 = zext i1 %1912 to i8
  store i8 %1913, i8* %17, align 1, !tbaa !2432
  %1914 = and i32 %1908, 255
  %1915 = tail call i32 @llvm.ctpop.i32(i32 %1914) #8
  %1916 = trunc i32 %1915 to i8
  %1917 = and i8 %1916, 1
  %1918 = xor i8 %1917, 1
  store i8 %1918, i8* %24, align 1, !tbaa !2446
  %1919 = xor i32 %1907, %1908
  %1920 = lshr i32 %1919, 4
  %1921 = trunc i32 %1920 to i8
  %1922 = and i8 %1921, 1
  store i8 %1922, i8* %30, align 1, !tbaa !2447
  %1923 = zext i1 %1911 to i8
  store i8 %1923, i8* %33, align 1, !tbaa !2448
  %1924 = lshr i32 %1908, 31
  %1925 = trunc i32 %1924 to i8
  store i8 %1925, i8* %36, align 1, !tbaa !2449
  %1926 = lshr i32 %1907, 31
  %1927 = xor i32 %1924, %1926
  %1928 = add nuw nsw i32 %1927, %1924
  %1929 = icmp eq i32 %1928, 2
  %1930 = zext i1 %1929 to i8
  store i8 %1930, i8* %42, align 1, !tbaa !2450
  %1931 = add i64 %1903, 14
  store i64 %1931, i64* %PC, align 8
  store i32 %1908, i32* %1906, align 4
  %1932 = load i64, i64* %PC, align 8
  %1933 = add i64 %1932, -119
  store i64 %1933, i64* %PC, align 8, !tbaa !2428
  br label %block_4015c8

block_401125:                                     ; preds = %block_401113
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %1934 = add i64 %2312, 9
  store i64 %1934, i64* %PC, align 8
  %1935 = load i32, i32* %2905, align 4
  %1936 = sext i32 %1935 to i64
  store i64 %1936, i64* %RCX, align 8, !tbaa !2428
  %1937 = shl nsw i64 %1936, 2
  %1938 = add i64 %2284, %1937
  %1939 = add i64 %2312, 16
  store i64 %1939, i64* %PC, align 8
  %1940 = inttoptr i64 %1938 to i32*
  %1941 = load i32, i32* %1940, align 4
  %1942 = zext i32 %1941 to i64
  store i64 %1942, i64* %RDX, align 8, !tbaa !2428
  %1943 = add i64 %2312, 19
  store i64 %1943, i64* %PC, align 8
  %1944 = load i32, i32* %2905, align 4
  %1945 = add i32 %1944, %1941
  %1946 = zext i32 %1945 to i64
  store i64 %1946, i64* %RDX, align 8, !tbaa !2428
  %1947 = icmp ult i32 %1945, %1941
  %1948 = icmp ult i32 %1945, %1944
  %1949 = or i1 %1947, %1948
  %1950 = zext i1 %1949 to i8
  store i8 %1950, i8* %17, align 1, !tbaa !2432
  %1951 = and i32 %1945, 255
  %1952 = tail call i32 @llvm.ctpop.i32(i32 %1951) #8
  %1953 = trunc i32 %1952 to i8
  %1954 = and i8 %1953, 1
  %1955 = xor i8 %1954, 1
  store i8 %1955, i8* %24, align 1, !tbaa !2446
  %1956 = xor i32 %1944, %1941
  %1957 = xor i32 %1956, %1945
  %1958 = lshr i32 %1957, 4
  %1959 = trunc i32 %1958 to i8
  %1960 = and i8 %1959, 1
  store i8 %1960, i8* %30, align 1, !tbaa !2447
  %1961 = icmp eq i32 %1945, 0
  %1962 = zext i1 %1961 to i8
  store i8 %1962, i8* %33, align 1, !tbaa !2448
  %1963 = lshr i32 %1945, 31
  %1964 = trunc i32 %1963 to i8
  store i8 %1964, i8* %36, align 1, !tbaa !2449
  %1965 = lshr i32 %1941, 31
  %1966 = lshr i32 %1944, 31
  %1967 = xor i32 %1963, %1965
  %1968 = xor i32 %1963, %1966
  %1969 = add nuw nsw i32 %1967, %1968
  %1970 = icmp eq i32 %1969, 2
  %1971 = zext i1 %1970 to i8
  store i8 %1971, i8* %42, align 1, !tbaa !2450
  %1972 = add i64 %2902, -2716
  %1973 = add i64 %2312, 25
  store i64 %1973, i64* %PC, align 8
  %1974 = inttoptr i64 %1972 to i32*
  store i32 255, i32* %1974, align 4
  %1975 = load i32, i32* %EDX, align 4
  %1976 = zext i32 %1975 to i64
  %1977 = load i64, i64* %PC, align 8
  store i64 %1976, i64* %RAX, align 8, !tbaa !2428
  %1978 = sext i32 %1975 to i64
  %1979 = lshr i64 %1978, 32
  store i64 %1979, i64* %56, align 8, !tbaa !2428
  %1980 = load i64, i64* %RBP, align 8
  %1981 = add i64 %1980, -2716
  %1982 = add i64 %1977, 9
  store i64 %1982, i64* %PC, align 8
  %1983 = inttoptr i64 %1981 to i32*
  %1984 = load i32, i32* %1983, align 4
  %1985 = zext i32 %1984 to i64
  store i64 %1985, i64* %RSI, align 8, !tbaa !2428
  %1986 = add i64 %1977, 11
  store i64 %1986, i64* %PC, align 8
  %1987 = sext i32 %1984 to i64
  %1988 = shl nuw i64 %1979, 32
  %1989 = or i64 %1988, %1976
  %1990 = sdiv i64 %1989, %1987
  %1991 = shl i64 %1990, 32
  %1992 = ashr exact i64 %1991, 32
  %1993 = icmp eq i64 %1990, %1992
  br i1 %1993, label %1996, label %1994

; <label>:1994:                                   ; preds = %block_401125
  %1995 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1986, %struct.Memory* %MEMORY.23) #9
  %.pre54 = load i64, i64* %RBP, align 8
  %.pre55 = load i64, i64* %PC, align 8
  %.pre56 = load i32, i32* %EDX, align 4
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3

; <label>:1996:                                   ; preds = %block_401125
  %1997 = srem i64 %1989, %1987
  %1998 = and i64 %1990, 4294967295
  store i64 %1998, i64* %57, align 8, !tbaa !2428
  %1999 = and i64 %1997, 4294967295
  store i64 %1999, i64* %56, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 0, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  store i8 0, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %2000 = trunc i64 %1997 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3: ; preds = %1996, %1994
  %2001 = phi i32 [ %.pre56, %1994 ], [ %2000, %1996 ]
  %2002 = phi i64 [ %.pre55, %1994 ], [ %1986, %1996 ]
  %2003 = phi i64 [ %.pre54, %1994 ], [ %1980, %1996 ]
  %2004 = phi %struct.Memory* [ %1995, %1994 ], [ %MEMORY.23, %1996 ]
  %2005 = add i64 %2003, -8
  %2006 = add i64 %2002, 4
  store i64 %2006, i64* %PC, align 8
  %2007 = inttoptr i64 %2005 to i32*
  %2008 = load i32, i32* %2007, align 4
  %2009 = sext i32 %2008 to i64
  store i64 %2009, i64* %RCX, align 8, !tbaa !2428
  %2010 = shl nsw i64 %2009, 2
  %2011 = add i64 %2003, -2688
  %2012 = add i64 %2011, %2010
  %2013 = add i64 %2002, 11
  store i64 %2013, i64* %PC, align 8
  %2014 = inttoptr i64 %2012 to i32*
  store i32 %2001, i32* %2014, align 4
  %2015 = load i64, i64* %RBP, align 8
  %2016 = add i64 %2015, -8
  %2017 = load i64, i64* %PC, align 8
  %2018 = add i64 %2017, 4
  store i64 %2018, i64* %PC, align 8
  %2019 = inttoptr i64 %2016 to i32*
  %2020 = load i32, i32* %2019, align 4
  %2021 = sext i32 %2020 to i64
  store i64 %2021, i64* %RCX, align 8, !tbaa !2428
  %2022 = shl nsw i64 %2021, 2
  %2023 = add i64 %2015, -2688
  %2024 = add i64 %2023, %2022
  %2025 = add i64 %2017, 12
  store i64 %2025, i64* %PC, align 8
  %2026 = inttoptr i64 %2024 to i32*
  %2027 = load i32, i32* %2026, align 4
  %2028 = sext i32 %2027 to i64
  store i64 %2028, i64* %RCX, align 8, !tbaa !2428
  %2029 = shl nsw i64 %2028, 2
  %2030 = add i64 %2029, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %2031 = add i64 %2017, 19
  store i64 %2031, i64* %PC, align 8
  %2032 = inttoptr i64 %2030 to i32*
  %2033 = load i32, i32* %2032, align 4
  %2034 = zext i32 %2033 to i64
  store i64 %2034, i64* %RDX, align 8, !tbaa !2428
  %2035 = add i64 %2015, -16
  %2036 = add i64 %2017, 22
  store i64 %2036, i64* %PC, align 8
  %2037 = inttoptr i64 %2035 to i32*
  %2038 = load i32, i32* %2037, align 4
  %2039 = xor i32 %2038, %2033
  %2040 = zext i32 %2039 to i64
  store i64 %2040, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  %2041 = and i32 %2039, 255
  %2042 = tail call i32 @llvm.ctpop.i32(i32 %2041) #8
  %2043 = trunc i32 %2042 to i8
  %2044 = and i8 %2043, 1
  %2045 = xor i8 %2044, 1
  store i8 %2045, i8* %24, align 1, !tbaa !2446
  %2046 = icmp eq i32 %2039, 0
  %2047 = zext i1 %2046 to i8
  store i8 %2047, i8* %33, align 1, !tbaa !2448
  %2048 = lshr i32 %2039, 31
  %2049 = trunc i32 %2048 to i8
  store i8 %2049, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  store i8 0, i8* %30, align 1, !tbaa !2447
  %2050 = add i64 %2017, 25
  store i64 %2050, i64* %PC, align 8
  store i32 %2039, i32* %2037, align 4
  %.pre57 = load i64, i64* %PC, align 8
  %.pre58 = load i64, i64* %RBP, align 8
  br label %block_40116d

block_400f1e:                                     ; preds = %block_400ef9
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %2051 = add i64 %2615, -1168
  store i64 %2051, i64* %RCX, align 8, !tbaa !2428
  %2052 = add i64 %2615, -12
  %2053 = add i64 %2635, 15
  store i64 %2053, i64* %PC, align 8
  %2054 = inttoptr i64 %2052 to i32*
  %2055 = load i32, i32* %2054, align 4
  %2056 = add i32 %2055, 1
  %2057 = zext i32 %2056 to i64
  store i64 %2057, i64* %RDX, align 8, !tbaa !2428
  %2058 = icmp eq i32 %2055, -1
  %2059 = icmp eq i32 %2056, 0
  %2060 = or i1 %2058, %2059
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %17, align 1, !tbaa !2432
  %2062 = and i32 %2056, 255
  %2063 = tail call i32 @llvm.ctpop.i32(i32 %2062) #8
  %2064 = trunc i32 %2063 to i8
  %2065 = and i8 %2064, 1
  %2066 = xor i8 %2065, 1
  store i8 %2066, i8* %24, align 1, !tbaa !2446
  %2067 = xor i32 %2055, %2056
  %2068 = lshr i32 %2067, 4
  %2069 = trunc i32 %2068 to i8
  %2070 = and i8 %2069, 1
  store i8 %2070, i8* %30, align 1, !tbaa !2447
  %2071 = zext i1 %2059 to i8
  store i8 %2071, i8* %33, align 1, !tbaa !2448
  %2072 = lshr i32 %2056, 31
  %2073 = trunc i32 %2072 to i8
  store i8 %2073, i8* %36, align 1, !tbaa !2449
  %2074 = lshr i32 %2055, 31
  %2075 = xor i32 %2072, %2074
  %2076 = add nuw nsw i32 %2075, %2072
  %2077 = icmp eq i32 %2076, 2
  %2078 = zext i1 %2077 to i8
  store i8 %2078, i8* %42, align 1, !tbaa !2450
  %2079 = add i64 %2635, 21
  store i64 %2079, i64* %PC, align 8
  %2080 = load i32, i32* %2618, align 4
  %2081 = sub i32 %2056, %2080
  %2082 = zext i32 %2081 to i64
  store i64 %2082, i64* %RDX, align 8, !tbaa !2428
  %2083 = icmp ult i32 %2056, %2080
  %2084 = zext i1 %2083 to i8
  store i8 %2084, i8* %17, align 1, !tbaa !2432
  %2085 = and i32 %2081, 255
  %2086 = tail call i32 @llvm.ctpop.i32(i32 %2085) #8
  %2087 = trunc i32 %2086 to i8
  %2088 = and i8 %2087, 1
  %2089 = xor i8 %2088, 1
  store i8 %2089, i8* %24, align 1, !tbaa !2446
  %2090 = xor i32 %2080, %2056
  %2091 = xor i32 %2090, %2081
  %2092 = lshr i32 %2091, 4
  %2093 = trunc i32 %2092 to i8
  %2094 = and i8 %2093, 1
  store i8 %2094, i8* %30, align 1, !tbaa !2447
  %2095 = icmp eq i32 %2081, 0
  %2096 = zext i1 %2095 to i8
  store i8 %2096, i8* %33, align 1, !tbaa !2448
  %2097 = lshr i32 %2081, 31
  %2098 = trunc i32 %2097 to i8
  store i8 %2098, i8* %36, align 1, !tbaa !2449
  %2099 = lshr i32 %2080, 31
  %2100 = xor i32 %2099, %2072
  %2101 = xor i32 %2097, %2072
  %2102 = add nuw nsw i32 %2101, %2100
  %2103 = icmp eq i32 %2102, 2
  %2104 = zext i1 %2103 to i8
  store i8 %2104, i8* %42, align 1, !tbaa !2450
  %2105 = sext i32 %2081 to i64
  store i64 %2105, i64* %RSI, align 8, !tbaa !2428
  %2106 = shl nsw i64 %2105, 2
  %2107 = add i64 %2615, -1488
  %2108 = add i64 %2107, %2106
  %2109 = add i64 %2635, 31
  store i64 %2109, i64* %PC, align 8
  %2110 = inttoptr i64 %2108 to i32*
  %2111 = load i32, i32* %2110, align 4
  %2112 = zext i32 %2111 to i64
  store i64 %2112, i64* %RDX, align 8, !tbaa !2428
  %2113 = add i64 %2635, 34
  store i64 %2113, i64* %PC, align 8
  %2114 = load i32, i32* %2054, align 4
  %2115 = add i32 %2114, 1
  %2116 = zext i32 %2115 to i64
  store i64 %2116, i64* %RDI, align 8, !tbaa !2428
  %2117 = sext i32 %2115 to i64
  %2118 = shl nsw i64 %2117, 6
  store i64 %2118, i64* %RSI, align 8, !tbaa !2428
  %2119 = lshr i64 %2117, 57
  %2120 = and i64 %2119, 1
  %2121 = load i64, i64* %RCX, align 8
  %2122 = add i64 %2118, %2121
  store i64 %2122, i64* %RCX, align 8, !tbaa !2428
  %2123 = icmp ult i64 %2122, %2121
  %2124 = icmp ult i64 %2122, %2118
  %2125 = or i1 %2123, %2124
  %2126 = zext i1 %2125 to i8
  store i8 %2126, i8* %17, align 1, !tbaa !2432
  %2127 = trunc i64 %2122 to i32
  %2128 = and i32 %2127, 255
  %2129 = tail call i32 @llvm.ctpop.i32(i32 %2128) #8
  %2130 = trunc i32 %2129 to i8
  %2131 = and i8 %2130, 1
  %2132 = xor i8 %2131, 1
  store i8 %2132, i8* %24, align 1, !tbaa !2446
  %2133 = xor i64 %2121, %2122
  %2134 = lshr i64 %2133, 4
  %2135 = trunc i64 %2134 to i8
  %2136 = and i8 %2135, 1
  store i8 %2136, i8* %30, align 1, !tbaa !2447
  %2137 = icmp eq i64 %2122, 0
  %2138 = zext i1 %2137 to i8
  store i8 %2138, i8* %33, align 1, !tbaa !2448
  %2139 = lshr i64 %2122, 63
  %2140 = trunc i64 %2139 to i8
  store i8 %2140, i8* %36, align 1, !tbaa !2449
  %2141 = lshr i64 %2121, 63
  %2142 = xor i64 %2139, %2141
  %2143 = xor i64 %2139, %2120
  %2144 = add nuw nsw i64 %2142, %2143
  %2145 = icmp eq i64 %2144, 2
  %2146 = zext i1 %2145 to i8
  store i8 %2146, i8* %42, align 1, !tbaa !2450
  %2147 = load i64, i64* %RBP, align 8
  %2148 = add i64 %2147, -4
  %2149 = add i64 %2635, 51
  store i64 %2149, i64* %PC, align 8
  %2150 = inttoptr i64 %2148 to i32*
  %2151 = load i32, i32* %2150, align 4
  %2152 = sext i32 %2151 to i64
  store i64 %2152, i64* %RSI, align 8, !tbaa !2428
  %2153 = shl nsw i64 %2152, 2
  %2154 = add i64 %2153, %2122
  %2155 = add i64 %2635, 55
  store i64 %2155, i64* %PC, align 8
  %2156 = inttoptr i64 %2154 to i32*
  %2157 = load i32, i32* %2156, align 4
  %2158 = sext i32 %2157 to i64
  store i64 %2158, i64* %RCX, align 8, !tbaa !2428
  %2159 = load i64, i64* %RDX, align 8
  %2160 = shl nsw i64 %2158, 2
  %2161 = add i64 %2160, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %2162 = add i64 %2635, 62
  store i64 %2162, i64* %PC, align 8
  %2163 = trunc i64 %2159 to i32
  %2164 = inttoptr i64 %2161 to i32*
  %2165 = load i32, i32* %2164, align 4
  %2166 = add i32 %2165, %2163
  %2167 = zext i32 %2166 to i64
  store i64 %2167, i64* %RDX, align 8, !tbaa !2428
  %2168 = icmp ult i32 %2166, %2163
  %2169 = icmp ult i32 %2166, %2165
  %2170 = or i1 %2168, %2169
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %17, align 1, !tbaa !2432
  %2172 = and i32 %2166, 255
  %2173 = tail call i32 @llvm.ctpop.i32(i32 %2172) #8
  %2174 = trunc i32 %2173 to i8
  %2175 = and i8 %2174, 1
  %2176 = xor i8 %2175, 1
  store i8 %2176, i8* %24, align 1, !tbaa !2446
  %2177 = xor i32 %2165, %2163
  %2178 = xor i32 %2177, %2166
  %2179 = lshr i32 %2178, 4
  %2180 = trunc i32 %2179 to i8
  %2181 = and i8 %2180, 1
  store i8 %2181, i8* %30, align 1, !tbaa !2447
  %2182 = icmp eq i32 %2166, 0
  %2183 = zext i1 %2182 to i8
  store i8 %2183, i8* %33, align 1, !tbaa !2448
  %2184 = lshr i32 %2166, 31
  %2185 = trunc i32 %2184 to i8
  store i8 %2185, i8* %36, align 1, !tbaa !2449
  %2186 = lshr i32 %2163, 31
  %2187 = lshr i32 %2165, 31
  %2188 = xor i32 %2184, %2186
  %2189 = xor i32 %2184, %2187
  %2190 = add nuw nsw i32 %2188, %2189
  %2191 = icmp eq i32 %2190, 2
  %2192 = zext i1 %2191 to i8
  store i8 %2192, i8* %42, align 1, !tbaa !2450
  %2193 = add i64 %2147, -2708
  %2194 = load i32, i32* %EAX, align 4
  %2195 = add i64 %2635, 68
  store i64 %2195, i64* %PC, align 8
  %2196 = inttoptr i64 %2193 to i32*
  store i32 %2194, i32* %2196, align 4
  %2197 = load i32, i32* %EDX, align 4
  %2198 = zext i32 %2197 to i64
  %2199 = load i64, i64* %PC, align 8
  store i64 %2198, i64* %RAX, align 8, !tbaa !2428
  %2200 = sext i32 %2197 to i64
  %2201 = lshr i64 %2200, 32
  store i64 %2201, i64* %56, align 8, !tbaa !2428
  %2202 = load i64, i64* %RBP, align 8
  %2203 = add i64 %2202, -2708
  %2204 = add i64 %2199, 9
  store i64 %2204, i64* %PC, align 8
  %2205 = inttoptr i64 %2203 to i32*
  %2206 = load i32, i32* %2205, align 4
  %2207 = zext i32 %2206 to i64
  store i64 %2207, i64* %RDI, align 8, !tbaa !2428
  %2208 = add i64 %2199, 11
  store i64 %2208, i64* %PC, align 8
  %2209 = sext i32 %2206 to i64
  %2210 = shl nuw i64 %2201, 32
  %2211 = or i64 %2210, %2198
  %2212 = sdiv i64 %2211, %2209
  %2213 = shl i64 %2212, 32
  %2214 = ashr exact i64 %2213, 32
  %2215 = icmp eq i64 %2212, %2214
  br i1 %2215, label %2218, label %2216

; <label>:2216:                                   ; preds = %block_400f1e
  %2217 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2208, %struct.Memory* %MEMORY.27) #9
  %.pre42 = load i32, i32* %EDX, align 4
  %.pre43 = load i64, i64* %PC, align 8
  %.pre44 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2

; <label>:2218:                                   ; preds = %block_400f1e
  %2219 = srem i64 %2211, %2209
  %2220 = and i64 %2212, 4294967295
  store i64 %2220, i64* %57, align 8, !tbaa !2428
  %2221 = and i64 %2219, 4294967295
  store i64 %2221, i64* %56, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 0, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  store i8 0, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %2222 = trunc i64 %2219 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit2: ; preds = %2218, %2216
  %2223 = phi i64 [ %.pre44, %2216 ], [ %2202, %2218 ]
  %2224 = phi i64 [ %.pre43, %2216 ], [ %2208, %2218 ]
  %2225 = phi i32 [ %.pre42, %2216 ], [ %2222, %2218 ]
  %2226 = phi %struct.Memory* [ %2217, %2216 ], [ %MEMORY.27, %2218 ]
  %2227 = sext i32 %2225 to i64
  store i64 %2227, i64* %RCX, align 8, !tbaa !2428
  %2228 = shl nsw i64 %2227, 2
  %2229 = add i64 %2228, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %2230 = add i64 %2224, 10
  store i64 %2230, i64* %PC, align 8
  %2231 = inttoptr i64 %2229 to i32*
  %2232 = load i32, i32* %2231, align 4
  %2233 = zext i32 %2232 to i64
  store i64 %2233, i64* %RDX, align 8, !tbaa !2428
  %2234 = add i64 %2223, -12
  %2235 = add i64 %2224, 14
  store i64 %2235, i64* %PC, align 8
  %2236 = inttoptr i64 %2234 to i32*
  %2237 = load i32, i32* %2236, align 4
  %2238 = add i32 %2237, 1
  %2239 = zext i32 %2238 to i64
  store i64 %2239, i64* %R8, align 8, !tbaa !2428
  %2240 = icmp eq i32 %2237, -1
  %2241 = icmp eq i32 %2238, 0
  %2242 = or i1 %2240, %2241
  %2243 = zext i1 %2242 to i8
  store i8 %2243, i8* %17, align 1, !tbaa !2432
  %2244 = and i32 %2238, 255
  %2245 = tail call i32 @llvm.ctpop.i32(i32 %2244) #8
  %2246 = trunc i32 %2245 to i8
  %2247 = and i8 %2246, 1
  %2248 = xor i8 %2247, 1
  store i8 %2248, i8* %24, align 1, !tbaa !2446
  %2249 = xor i32 %2237, %2238
  %2250 = lshr i32 %2249, 4
  %2251 = trunc i32 %2250 to i8
  %2252 = and i8 %2251, 1
  store i8 %2252, i8* %30, align 1, !tbaa !2447
  %2253 = zext i1 %2241 to i8
  store i8 %2253, i8* %33, align 1, !tbaa !2448
  %2254 = lshr i32 %2238, 31
  %2255 = trunc i32 %2254 to i8
  store i8 %2255, i8* %36, align 1, !tbaa !2449
  %2256 = lshr i32 %2237, 31
  %2257 = xor i32 %2254, %2256
  %2258 = add nuw nsw i32 %2257, %2254
  %2259 = icmp eq i32 %2258, 2
  %2260 = zext i1 %2259 to i8
  store i8 %2260, i8* %42, align 1, !tbaa !2450
  %2261 = sext i32 %2238 to i64
  store i64 %2261, i64* %RCX, align 8, !tbaa !2428
  %2262 = shl nsw i64 %2261, 2
  %2263 = add i64 %2223, -1248
  %2264 = add i64 %2263, %2262
  %2265 = add i64 %2224, 28
  store i64 %2265, i64* %PC, align 8
  %2266 = inttoptr i64 %2264 to i32*
  %2267 = load i32, i32* %2266, align 4
  %2268 = xor i32 %2267, %2232
  %2269 = zext i32 %2268 to i64
  store i64 %2269, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  %2270 = and i32 %2268, 255
  %2271 = tail call i32 @llvm.ctpop.i32(i32 %2270) #8
  %2272 = trunc i32 %2271 to i8
  %2273 = and i8 %2272, 1
  %2274 = xor i8 %2273, 1
  store i8 %2274, i8* %24, align 1, !tbaa !2446
  %2275 = icmp eq i32 %2268, 0
  %2276 = zext i1 %2275 to i8
  store i8 %2276, i8* %33, align 1, !tbaa !2448
  %2277 = lshr i32 %2268, 31
  %2278 = trunc i32 %2277 to i8
  store i8 %2278, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  store i8 0, i8* %30, align 1, !tbaa !2447
  %2279 = add i64 %2224, 35
  store i64 %2279, i64* %PC, align 8
  store i32 %2268, i32* %2266, align 4
  %.pre45 = load i64, i64* %PC, align 8
  %.pre46 = load i64, i64* %RBP, align 8
  br label %block_400f90

block_401113:                                     ; preds = %block_4010ff
  %2280 = add i64 %2945, 4
  store i64 %2280, i64* %PC, align 8
  %2281 = load i32, i32* %2905, align 4
  %2282 = sext i32 %2281 to i64
  store i64 %2282, i64* %RAX, align 8, !tbaa !2428
  %2283 = shl nsw i64 %2282, 2
  %2284 = add i64 %2902, -2688
  %2285 = add i64 %2284, %2283
  %2286 = add i64 %2945, 12
  store i64 %2286, i64* %PC, align 8
  %2287 = inttoptr i64 %2285 to i32*
  %2288 = load i32, i32* %2287, align 4
  %2289 = add i32 %2288, 1
  %2290 = icmp ne i32 %2288, -1
  %2291 = zext i1 %2290 to i8
  store i8 %2291, i8* %17, align 1, !tbaa !2432
  %2292 = and i32 %2289, 255
  %2293 = tail call i32 @llvm.ctpop.i32(i32 %2292) #8
  %2294 = trunc i32 %2293 to i8
  %2295 = and i8 %2294, 1
  %2296 = xor i8 %2295, 1
  store i8 %2296, i8* %24, align 1, !tbaa !2446
  %2297 = xor i32 %2288, 16
  %2298 = xor i32 %2289, %2297
  %2299 = lshr i32 %2298, 4
  %2300 = trunc i32 %2299 to i8
  %2301 = and i8 %2300, 1
  store i8 %2301, i8* %30, align 1, !tbaa !2447
  %2302 = icmp eq i32 %2289, 0
  %2303 = zext i1 %2302 to i8
  store i8 %2303, i8* %33, align 1, !tbaa !2448
  %2304 = lshr i32 %2289, 31
  %2305 = trunc i32 %2304 to i8
  store i8 %2305, i8* %36, align 1, !tbaa !2449
  %2306 = lshr i32 %2288, 31
  %2307 = xor i32 %2306, 1
  %2308 = xor i32 %2304, %2306
  %2309 = add nuw nsw i32 %2308, %2307
  %2310 = icmp eq i32 %2309, 2
  %2311 = zext i1 %2310 to i8
  store i8 %2311, i8* %42, align 1, !tbaa !2450
  %.v136 = select i1 %2302, i64 90, i64 18
  %2312 = add i64 %2945, %.v136
  store i64 %2312, i64* %PC, align 8, !tbaa !2428
  br i1 %2302, label %block_40116d, label %block_401125

block_401509:                                     ; preds = %block_4014f7
  store i64 255, i64* %RAX, align 8, !tbaa !2428
  %2313 = add i64 %2474, 9
  store i64 %2313, i64* %PC, align 8
  %2314 = load i32, i32* %1861, align 4
  %2315 = sext i32 %2314 to i64
  store i64 %2315, i64* %RCX, align 8, !tbaa !2428
  %2316 = shl nsw i64 %2315, 2
  %2317 = add i64 %2446, %2316
  %2318 = add i64 %2474, 16
  store i64 %2318, i64* %PC, align 8
  %2319 = inttoptr i64 %2317 to i32*
  %2320 = load i32, i32* %2319, align 4
  %2321 = zext i32 %2320 to i64
  store i64 %2321, i64* %RDX, align 8, !tbaa !2428
  %2322 = add i64 %2474, 19
  store i64 %2322, i64* %PC, align 8
  %2323 = load i32, i32* %1861, align 4
  %2324 = zext i32 %2323 to i64
  store i64 %2324, i64* %RSI, align 8, !tbaa !2428
  %2325 = add i64 %1858, -4
  %2326 = add i64 %2474, 23
  store i64 %2326, i64* %PC, align 8
  %2327 = inttoptr i64 %2325 to i32*
  %2328 = load i32, i32* %2327, align 4
  %2329 = sext i32 %2328 to i64
  store i64 %2329, i64* %RCX, align 8, !tbaa !2428
  %2330 = shl nsw i64 %2329, 2
  %2331 = add i64 %1858, -1536
  %2332 = add i64 %2331, %2330
  %2333 = add i64 %2474, 31
  store i64 %2333, i64* %PC, align 8
  %2334 = inttoptr i64 %2332 to i32*
  %2335 = load i32, i32* %2334, align 4
  %2336 = sext i32 %2323 to i64
  %2337 = sext i32 %2335 to i64
  %2338 = mul nsw i64 %2337, %2336
  %2339 = and i64 %2338, 4294967295
  store i64 %2339, i64* %RSI, align 8, !tbaa !2428
  %2340 = trunc i64 %2338 to i32
  %2341 = add i32 %2340, %2320
  %2342 = zext i32 %2341 to i64
  store i64 %2342, i64* %RDX, align 8, !tbaa !2428
  %2343 = icmp ult i32 %2341, %2320
  %2344 = icmp ult i32 %2341, %2340
  %2345 = or i1 %2343, %2344
  %2346 = zext i1 %2345 to i8
  store i8 %2346, i8* %17, align 1, !tbaa !2432
  %2347 = and i32 %2341, 255
  %2348 = tail call i32 @llvm.ctpop.i32(i32 %2347) #8
  %2349 = trunc i32 %2348 to i8
  %2350 = and i8 %2349, 1
  %2351 = xor i8 %2350, 1
  store i8 %2351, i8* %24, align 1, !tbaa !2446
  %2352 = xor i64 %2338, %2321
  %2353 = trunc i64 %2352 to i32
  %2354 = xor i32 %2353, %2341
  %2355 = lshr i32 %2354, 4
  %2356 = trunc i32 %2355 to i8
  %2357 = and i8 %2356, 1
  store i8 %2357, i8* %30, align 1, !tbaa !2447
  %2358 = icmp eq i32 %2341, 0
  %2359 = zext i1 %2358 to i8
  store i8 %2359, i8* %33, align 1, !tbaa !2448
  %2360 = lshr i32 %2341, 31
  %2361 = trunc i32 %2360 to i8
  store i8 %2361, i8* %36, align 1, !tbaa !2449
  %2362 = lshr i32 %2320, 31
  %2363 = lshr i32 %2340, 31
  %2364 = xor i32 %2360, %2362
  %2365 = xor i32 %2360, %2363
  %2366 = add nuw nsw i32 %2364, %2365
  %2367 = icmp eq i32 %2366, 2
  %2368 = zext i1 %2367 to i8
  store i8 %2368, i8* %42, align 1, !tbaa !2450
  %2369 = add i64 %1858, -2724
  %2370 = add i64 %2474, 39
  store i64 %2370, i64* %PC, align 8
  %2371 = inttoptr i64 %2369 to i32*
  store i32 255, i32* %2371, align 4
  %2372 = load i32, i32* %EDX, align 4
  %2373 = zext i32 %2372 to i64
  %2374 = load i64, i64* %PC, align 8
  store i64 %2373, i64* %RAX, align 8, !tbaa !2428
  %2375 = sext i32 %2372 to i64
  %2376 = lshr i64 %2375, 32
  store i64 %2376, i64* %56, align 8, !tbaa !2428
  %2377 = load i64, i64* %RBP, align 8
  %2378 = add i64 %2377, -2724
  %2379 = add i64 %2374, 9
  store i64 %2379, i64* %PC, align 8
  %2380 = inttoptr i64 %2378 to i32*
  %2381 = load i32, i32* %2380, align 4
  %2382 = zext i32 %2381 to i64
  store i64 %2382, i64* %RSI, align 8, !tbaa !2428
  %2383 = add i64 %2374, 11
  store i64 %2383, i64* %PC, align 8
  %2384 = sext i32 %2381 to i64
  %2385 = shl nuw i64 %2376, 32
  %2386 = or i64 %2385, %2373
  %2387 = sdiv i64 %2386, %2384
  %2388 = shl i64 %2387, 32
  %2389 = ashr exact i64 %2388, 32
  %2390 = icmp eq i64 %2387, %2389
  br i1 %2390, label %2393, label %2391

; <label>:2391:                                   ; preds = %block_401509
  %2392 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2383, %struct.Memory* %MEMORY.19) #9
  %.pre75 = load i32, i32* %EDX, align 4
  %.pre76 = load i64, i64* %PC, align 8
  %.pre77 = load i64, i64* %RBP, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:2393:                                   ; preds = %block_401509
  %2394 = srem i64 %2386, %2384
  %2395 = and i64 %2387, 4294967295
  store i64 %2395, i64* %57, align 8, !tbaa !2428
  %2396 = and i64 %2394, 4294967295
  store i64 %2396, i64* %56, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 0, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  store i8 0, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %2397 = trunc i64 %2394 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %2393, %2391
  %2398 = phi i64 [ %.pre77, %2391 ], [ %2377, %2393 ]
  %2399 = phi i64 [ %.pre76, %2391 ], [ %2383, %2393 ]
  %2400 = phi i32 [ %.pre75, %2391 ], [ %2397, %2393 ]
  %2401 = phi %struct.Memory* [ %2392, %2391 ], [ %MEMORY.19, %2393 ]
  %2402 = sext i32 %2400 to i64
  store i64 %2402, i64* %RCX, align 8, !tbaa !2428
  %2403 = shl nsw i64 %2402, 2
  %2404 = add i64 %2403, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %2405 = add i64 %2399, 10
  store i64 %2405, i64* %PC, align 8
  %2406 = inttoptr i64 %2404 to i32*
  %2407 = load i32, i32* %2406, align 4
  %2408 = zext i32 %2407 to i64
  store i64 %2408, i64* %RDX, align 8, !tbaa !2428
  %2409 = add i64 %2398, -4
  %2410 = add i64 %2399, 14
  store i64 %2410, i64* %PC, align 8
  %2411 = inttoptr i64 %2409 to i32*
  %2412 = load i32, i32* %2411, align 4
  %2413 = sext i32 %2412 to i64
  store i64 %2413, i64* %RCX, align 8, !tbaa !2428
  %2414 = shl nsw i64 %2413, 2
  %2415 = add i64 %2398, -1568
  %2416 = add i64 %2415, %2414
  %2417 = add i64 %2399, 22
  store i64 %2417, i64* %PC, align 8
  %2418 = inttoptr i64 %2416 to i32*
  %2419 = load i32, i32* %2418, align 4
  %2420 = sext i32 %2419 to i64
  store i64 %2420, i64* %RCX, align 8, !tbaa !2428
  %2421 = shl nsw i64 %2420, 2
  %2422 = add i64 %2398, -2640
  %2423 = add i64 %2422, %2421
  %2424 = add i64 %2399, 29
  store i64 %2424, i64* %PC, align 8
  %2425 = inttoptr i64 %2423 to i32*
  %2426 = load i32, i32* %2425, align 4
  %2427 = xor i32 %2426, %2407
  %2428 = zext i32 %2427 to i64
  store i64 %2428, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  %2429 = and i32 %2427, 255
  %2430 = tail call i32 @llvm.ctpop.i32(i32 %2429) #8
  %2431 = trunc i32 %2430 to i8
  %2432 = and i8 %2431, 1
  %2433 = xor i8 %2432, 1
  store i8 %2433, i8* %24, align 1, !tbaa !2446
  %2434 = icmp eq i32 %2427, 0
  %2435 = zext i1 %2434 to i8
  store i8 %2435, i8* %33, align 1, !tbaa !2448
  %2436 = lshr i32 %2427, 31
  %2437 = trunc i32 %2436 to i8
  store i8 %2437, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  store i8 0, i8* %30, align 1, !tbaa !2447
  %2438 = add i64 %2399, 36
  store i64 %2438, i64* %PC, align 8
  store i32 %2427, i32* %2425, align 4
  %.pre78 = load i64, i64* %PC, align 8
  %.pre79 = load i64, i64* %RBP, align 8
  br label %block_40155f

block_4009e0:                                     ; preds = %block_4009ce
  %2439 = add i64 %1517, -1496
  %2440 = add i64 %1111, 10
  store i64 %2440, i64* %PC, align 8
  %2441 = inttoptr i64 %2439 to i32*
  store i32 1, i32* %2441, align 4
  %.pre21 = load i64, i64* %RBP, align 8
  %.pre22 = load i64, i64* %PC, align 8
  br label %block_4009ea

block_4014f7:                                     ; preds = %block_4014e3
  %2442 = add i64 %1901, 4
  store i64 %2442, i64* %PC, align 8
  %2443 = load i32, i32* %1861, align 4
  %2444 = sext i32 %2443 to i64
  store i64 %2444, i64* %RAX, align 8, !tbaa !2428
  %2445 = shl nsw i64 %2444, 2
  %2446 = add i64 %1858, -1616
  %2447 = add i64 %2446, %2445
  %2448 = add i64 %1901, 12
  store i64 %2448, i64* %PC, align 8
  %2449 = inttoptr i64 %2447 to i32*
  %2450 = load i32, i32* %2449, align 4
  %2451 = add i32 %2450, 1
  %2452 = icmp ne i32 %2450, -1
  %2453 = zext i1 %2452 to i8
  store i8 %2453, i8* %17, align 1, !tbaa !2432
  %2454 = and i32 %2451, 255
  %2455 = tail call i32 @llvm.ctpop.i32(i32 %2454) #8
  %2456 = trunc i32 %2455 to i8
  %2457 = and i8 %2456, 1
  %2458 = xor i8 %2457, 1
  store i8 %2458, i8* %24, align 1, !tbaa !2446
  %2459 = xor i32 %2450, 16
  %2460 = xor i32 %2451, %2459
  %2461 = lshr i32 %2460, 4
  %2462 = trunc i32 %2461 to i8
  %2463 = and i8 %2462, 1
  store i8 %2463, i8* %30, align 1, !tbaa !2447
  %2464 = icmp eq i32 %2451, 0
  %2465 = zext i1 %2464 to i8
  store i8 %2465, i8* %33, align 1, !tbaa !2448
  %2466 = lshr i32 %2451, 31
  %2467 = trunc i32 %2466 to i8
  store i8 %2467, i8* %36, align 1, !tbaa !2449
  %2468 = lshr i32 %2450, 31
  %2469 = xor i32 %2468, 1
  %2470 = xor i32 %2466, %2468
  %2471 = add nuw nsw i32 %2470, %2469
  %2472 = icmp eq i32 %2471, 2
  %2473 = zext i1 %2472 to i8
  store i8 %2473, i8* %42, align 1, !tbaa !2450
  %.v155 = select i1 %2464, i64 104, i64 18
  %2474 = add i64 %1901, %.v155
  store i64 %2474, i64* %PC, align 8, !tbaa !2428
  br i1 %2464, label %block_40155f, label %block_401509

block_401302:                                     ; preds = %block_4012e2
  %2475 = add i64 %.pre64, -1168
  store i64 %2475, i64* %RAX, align 8, !tbaa !2428
  %2476 = add i64 %.pre64, -12
  %2477 = add i64 %5526, 11
  store i64 %2477, i64* %PC, align 8
  %2478 = inttoptr i64 %2476 to i32*
  %2479 = load i32, i32* %2478, align 4
  %2480 = sext i32 %2479 to i64
  %2481 = shl nsw i64 %2480, 6
  store i64 %2481, i64* %RCX, align 8, !tbaa !2428
  %2482 = lshr i64 %2480, 57
  %2483 = and i64 %2482, 1
  %2484 = add i64 %2481, %2475
  store i64 %2484, i64* %RAX, align 8, !tbaa !2428
  %2485 = icmp ult i64 %2484, %2475
  %2486 = icmp ult i64 %2484, %2481
  %2487 = or i1 %2485, %2486
  %2488 = zext i1 %2487 to i8
  store i8 %2488, i8* %17, align 1, !tbaa !2432
  %2489 = trunc i64 %2484 to i32
  %2490 = and i32 %2489, 255
  %2491 = tail call i32 @llvm.ctpop.i32(i32 %2490) #8
  %2492 = trunc i32 %2491 to i8
  %2493 = and i8 %2492, 1
  %2494 = xor i8 %2493, 1
  store i8 %2494, i8* %24, align 1, !tbaa !2446
  %2495 = xor i64 %2475, %2484
  %2496 = lshr i64 %2495, 4
  %2497 = trunc i64 %2496 to i8
  %2498 = and i8 %2497, 1
  store i8 %2498, i8* %30, align 1, !tbaa !2447
  %2499 = icmp eq i64 %2484, 0
  %2500 = zext i1 %2499 to i8
  store i8 %2500, i8* %33, align 1, !tbaa !2448
  %2501 = lshr i64 %2484, 63
  %2502 = trunc i64 %2501 to i8
  store i8 %2502, i8* %36, align 1, !tbaa !2449
  %2503 = lshr i64 %2475, 63
  %2504 = xor i64 %2501, %2503
  %2505 = xor i64 %2501, %2483
  %2506 = add nuw nsw i64 %2504, %2505
  %2507 = icmp eq i64 %2506, 2
  %2508 = zext i1 %2507 to i8
  store i8 %2508, i8* %42, align 1, !tbaa !2450
  %2509 = add i64 %.pre64, -4
  %2510 = add i64 %5526, 22
  store i64 %2510, i64* %PC, align 8
  %2511 = inttoptr i64 %2509 to i32*
  %2512 = load i32, i32* %2511, align 4
  %2513 = sext i32 %2512 to i64
  store i64 %2513, i64* %RCX, align 8, !tbaa !2428
  %2514 = shl nsw i64 %2513, 2
  %2515 = add i64 %2514, %2484
  %2516 = add i64 %5526, 26
  store i64 %2516, i64* %PC, align 8
  %2517 = inttoptr i64 %2515 to i32*
  %2518 = load i32, i32* %2517, align 4
  %2519 = sext i32 %2518 to i64
  store i64 %2519, i64* %RAX, align 8, !tbaa !2428
  %2520 = shl nsw i64 %2519, 2
  %2521 = add i64 %2520, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %2522 = add i64 %5526, 33
  store i64 %2522, i64* %PC, align 8
  %2523 = inttoptr i64 %2521 to i32*
  %2524 = load i32, i32* %2523, align 4
  %2525 = zext i32 %2524 to i64
  store i64 %2525, i64* %RDX, align 8, !tbaa !2428
  %2526 = add i64 %5526, 37
  store i64 %2526, i64* %PC, align 8
  %2527 = load i32, i32* %2511, align 4
  %2528 = sext i32 %2527 to i64
  store i64 %2528, i64* %RAX, align 8, !tbaa !2428
  %2529 = shl nsw i64 %2528, 2
  %2530 = add i64 %.pre64, -1616
  %2531 = add i64 %2530, %2529
  %2532 = add i64 %5526, 44
  store i64 %2532, i64* %PC, align 8
  %2533 = inttoptr i64 %2531 to i32*
  store i32 %2524, i32* %2533, align 4
  %2534 = load i64, i64* %PC, align 8
  %2535 = add i64 %2534, 20
  store i64 %2535, i64* %PC, align 8, !tbaa !2428
  br label %block_401342

block_400dab:                                     ; preds = %block_400da4, %block_400dbf
  %2536 = phi i64 [ %.pre39, %block_400da4 ], [ %588, %block_400dbf ]
  %2537 = load i64, i64* %RBP, align 8
  %2538 = add i64 %2537, -4
  %2539 = add i64 %2536, 3
  store i64 %2539, i64* %PC, align 8
  %2540 = inttoptr i64 %2538 to i32*
  %2541 = load i32, i32* %2540, align 4
  %2542 = zext i32 %2541 to i64
  store i64 %2542, i64* %RAX, align 8, !tbaa !2428
  %2543 = add i64 %2537, -12
  %2544 = add i64 %2536, 7
  store i64 %2544, i64* %PC, align 8
  %2545 = inttoptr i64 %2543 to i32*
  %2546 = load i32, i32* %2545, align 4
  %2547 = sext i32 %2546 to i64
  store i64 %2547, i64* %RCX, align 8, !tbaa !2428
  %2548 = shl nsw i64 %2547, 2
  %2549 = add i64 %2537, -1328
  %2550 = add i64 %2549, %2548
  %2551 = add i64 %2536, 14
  store i64 %2551, i64* %PC, align 8
  %2552 = inttoptr i64 %2550 to i32*
  %2553 = load i32, i32* %2552, align 4
  %2554 = sub i32 %2541, %2553
  %2555 = icmp ult i32 %2541, %2553
  %2556 = zext i1 %2555 to i8
  store i8 %2556, i8* %17, align 1, !tbaa !2432
  %2557 = and i32 %2554, 255
  %2558 = tail call i32 @llvm.ctpop.i32(i32 %2557) #8
  %2559 = trunc i32 %2558 to i8
  %2560 = and i8 %2559, 1
  %2561 = xor i8 %2560, 1
  store i8 %2561, i8* %24, align 1, !tbaa !2446
  %2562 = xor i32 %2553, %2541
  %2563 = xor i32 %2562, %2554
  %2564 = lshr i32 %2563, 4
  %2565 = trunc i32 %2564 to i8
  %2566 = and i8 %2565, 1
  store i8 %2566, i8* %30, align 1, !tbaa !2447
  %2567 = icmp eq i32 %2554, 0
  %2568 = zext i1 %2567 to i8
  store i8 %2568, i8* %33, align 1, !tbaa !2448
  %2569 = lshr i32 %2554, 31
  %2570 = trunc i32 %2569 to i8
  store i8 %2570, i8* %36, align 1, !tbaa !2449
  %2571 = lshr i32 %2541, 31
  %2572 = lshr i32 %2553, 31
  %2573 = xor i32 %2572, %2571
  %2574 = xor i32 %2569, %2571
  %2575 = add nuw nsw i32 %2574, %2573
  %2576 = icmp eq i32 %2575, 2
  %2577 = zext i1 %2576 to i8
  store i8 %2577, i8* %42, align 1, !tbaa !2450
  %2578 = icmp ne i8 %2570, 0
  %2579 = xor i1 %2578, %2576
  %.demorgan174 = or i1 %2567, %2579
  %.v175 = select i1 %.demorgan174, i64 20, i64 138
  %2580 = add i64 %2536, %.v175
  store i64 %2580, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan174, label %block_400dbf, label %block_400e35

block_400ef9:                                     ; preds = %block_400edf
  %2581 = add i64 %3122, -1168
  store i64 %2581, i64* %RAX, align 8, !tbaa !2428
  %2582 = add i64 %2870, 10
  store i64 %2582, i64* %PC, align 8
  %2583 = load i32, i32* %3125, align 4
  %2584 = add i32 %2583, 1
  %2585 = zext i32 %2584 to i64
  store i64 %2585, i64* %RCX, align 8, !tbaa !2428
  %2586 = sext i32 %2584 to i64
  %2587 = shl nsw i64 %2586, 6
  store i64 %2587, i64* %RDX, align 8, !tbaa !2428
  %2588 = lshr i64 %2586, 57
  %2589 = and i64 %2588, 1
  %2590 = add i64 %2587, %2581
  store i64 %2590, i64* %RAX, align 8, !tbaa !2428
  %2591 = icmp ult i64 %2590, %2581
  %2592 = icmp ult i64 %2590, %2587
  %2593 = or i1 %2591, %2592
  %2594 = zext i1 %2593 to i8
  store i8 %2594, i8* %17, align 1, !tbaa !2432
  %2595 = trunc i64 %2590 to i32
  %2596 = and i32 %2595, 255
  %2597 = tail call i32 @llvm.ctpop.i32(i32 %2596) #8
  %2598 = trunc i32 %2597 to i8
  %2599 = and i8 %2598, 1
  %2600 = xor i8 %2599, 1
  store i8 %2600, i8* %24, align 1, !tbaa !2446
  %2601 = xor i64 %2581, %2590
  %2602 = lshr i64 %2601, 4
  %2603 = trunc i64 %2602 to i8
  %2604 = and i8 %2603, 1
  store i8 %2604, i8* %30, align 1, !tbaa !2447
  %2605 = icmp eq i64 %2590, 0
  %2606 = zext i1 %2605 to i8
  store i8 %2606, i8* %33, align 1, !tbaa !2448
  %2607 = lshr i64 %2590, 63
  %2608 = trunc i64 %2607 to i8
  store i8 %2608, i8* %36, align 1, !tbaa !2449
  %2609 = lshr i64 %2581, 63
  %2610 = xor i64 %2607, %2609
  %2611 = xor i64 %2607, %2589
  %2612 = add nuw nsw i64 %2610, %2611
  %2613 = icmp eq i64 %2612, 2
  %2614 = zext i1 %2613 to i8
  store i8 %2614, i8* %42, align 1, !tbaa !2450
  %2615 = load i64, i64* %RBP, align 8
  %2616 = add i64 %2615, -4
  %2617 = add i64 %2870, 27
  store i64 %2617, i64* %PC, align 8
  %2618 = inttoptr i64 %2616 to i32*
  %2619 = load i32, i32* %2618, align 4
  %2620 = sext i32 %2619 to i64
  store i64 %2620, i64* %RDX, align 8, !tbaa !2428
  %2621 = shl nsw i64 %2620, 2
  %2622 = add i64 %2621, %2590
  %2623 = add i64 %2870, 31
  store i64 %2623, i64* %PC, align 8
  %2624 = inttoptr i64 %2622 to i32*
  %2625 = load i32, i32* %2624, align 4
  store i8 0, i8* %17, align 1, !tbaa !2432
  %2626 = and i32 %2625, 255
  %2627 = tail call i32 @llvm.ctpop.i32(i32 %2626) #8
  %2628 = trunc i32 %2627 to i8
  %2629 = and i8 %2628, 1
  %2630 = xor i8 %2629, 1
  store i8 %2630, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  %2631 = icmp eq i32 %2625, 0
  %2632 = zext i1 %2631 to i8
  store i8 %2632, i8* %33, align 1, !tbaa !2448
  %2633 = lshr i32 %2625, 31
  %2634 = trunc i32 %2633 to i8
  store i8 %2634, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %.v123 = select i1 %2631, i64 151, i64 37
  %2635 = add i64 %2870, %.v123
  store i64 %2635, i64* %PC, align 8, !tbaa !2428
  br i1 %2631, label %block_400f90, label %block_400f1e

block_401572:                                     ; preds = %block_4014e3
  %2636 = add i64 %1858, -4
  %2637 = add i64 %1901, 4
  store i64 %2637, i64* %PC, align 8
  %2638 = inttoptr i64 %2636 to i32*
  %2639 = load i32, i32* %2638, align 4
  %2640 = sext i32 %2639 to i64
  store i64 %2640, i64* %RAX, align 8, !tbaa !2428
  %2641 = shl nsw i64 %2640, 2
  %2642 = add i64 %1858, -1568
  %2643 = add i64 %2642, %2641
  %2644 = add i64 %1901, 12
  store i64 %2644, i64* %PC, align 8
  %2645 = inttoptr i64 %2643 to i32*
  %2646 = load i32, i32* %2645, align 4
  %2647 = sext i32 %2646 to i64
  store i64 %2647, i64* %RAX, align 8, !tbaa !2428
  %2648 = shl nsw i64 %2647, 2
  %2649 = add i64 %1858, -2640
  %2650 = add i64 %2649, %2648
  %2651 = add i64 %1901, 20
  store i64 %2651, i64* %PC, align 8
  %2652 = inttoptr i64 %2650 to i32*
  %2653 = load i32, i32* %2652, align 4
  store i8 0, i8* %17, align 1, !tbaa !2432
  %2654 = and i32 %2653, 255
  %2655 = tail call i32 @llvm.ctpop.i32(i32 %2654) #8
  %2656 = trunc i32 %2655 to i8
  %2657 = and i8 %2656, 1
  %2658 = xor i8 %2657, 1
  store i8 %2658, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  %2659 = icmp eq i32 %2653, 0
  %2660 = zext i1 %2659 to i8
  store i8 %2660, i8* %33, align 1, !tbaa !2448
  %2661 = lshr i32 %2653, 31
  %2662 = trunc i32 %2661 to i8
  store i8 %2662, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %.v156 = select i1 %2659, i64 345, i64 26
  %2663 = add i64 %1901, %.v156
  store i64 %2663, i64* %PC, align 8, !tbaa !2428
  br i1 %2659, label %block_4016cb, label %block_40158c

block_400cf7:                                     ; preds = %block_400ce3
  %2664 = add i64 %3786, -1168
  store i64 %2664, i64* %RAX, align 8, !tbaa !2428
  %2665 = add i64 %3829, 11
  store i64 %2665, i64* %PC, align 8
  %2666 = load i32, i32* %3794, align 4
  %2667 = sext i32 %2666 to i64
  %2668 = shl nsw i64 %2667, 6
  store i64 %2668, i64* %RCX, align 8, !tbaa !2428
  %2669 = lshr i64 %2667, 57
  %2670 = and i64 %2669, 1
  %2671 = add i64 %2668, %2664
  store i64 %2671, i64* %RAX, align 8, !tbaa !2428
  %2672 = icmp ult i64 %2671, %2664
  %2673 = icmp ult i64 %2671, %2668
  %2674 = or i1 %2672, %2673
  %2675 = zext i1 %2674 to i8
  store i8 %2675, i8* %17, align 1, !tbaa !2432
  %2676 = trunc i64 %2671 to i32
  %2677 = and i32 %2676, 255
  %2678 = tail call i32 @llvm.ctpop.i32(i32 %2677) #8
  %2679 = trunc i32 %2678 to i8
  %2680 = and i8 %2679, 1
  %2681 = xor i8 %2680, 1
  store i8 %2681, i8* %24, align 1, !tbaa !2446
  %2682 = xor i64 %2664, %2671
  %2683 = lshr i64 %2682, 4
  %2684 = trunc i64 %2683 to i8
  %2685 = and i8 %2684, 1
  store i8 %2685, i8* %30, align 1, !tbaa !2447
  %2686 = icmp eq i64 %2671, 0
  %2687 = zext i1 %2686 to i8
  store i8 %2687, i8* %33, align 1, !tbaa !2448
  %2688 = lshr i64 %2671, 63
  %2689 = trunc i64 %2688 to i8
  store i8 %2689, i8* %36, align 1, !tbaa !2449
  %2690 = lshr i64 %2664, 63
  %2691 = xor i64 %2688, %2690
  %2692 = xor i64 %2688, %2670
  %2693 = add nuw nsw i64 %2691, %2692
  %2694 = icmp eq i64 %2693, 2
  %2695 = zext i1 %2694 to i8
  store i8 %2695, i8* %42, align 1, !tbaa !2450
  %2696 = add i64 %3829, 22
  store i64 %2696, i64* %PC, align 8
  %2697 = load i32, i32* %3789, align 4
  %2698 = sext i32 %2697 to i64
  store i64 %2698, i64* %RCX, align 8, !tbaa !2428
  %2699 = shl nsw i64 %2698, 2
  %2700 = add i64 %2699, %2671
  %2701 = add i64 %3829, 26
  store i64 %2701, i64* %PC, align 8
  %2702 = inttoptr i64 %2700 to i32*
  %2703 = load i32, i32* %2702, align 4
  %2704 = add i32 %2703, 1
  %2705 = icmp ne i32 %2703, -1
  %2706 = zext i1 %2705 to i8
  store i8 %2706, i8* %17, align 1, !tbaa !2432
  %2707 = and i32 %2704, 255
  %2708 = tail call i32 @llvm.ctpop.i32(i32 %2707) #8
  %2709 = trunc i32 %2708 to i8
  %2710 = and i8 %2709, 1
  %2711 = xor i8 %2710, 1
  store i8 %2711, i8* %24, align 1, !tbaa !2446
  %2712 = xor i32 %2703, 16
  %2713 = xor i32 %2704, %2712
  %2714 = lshr i32 %2713, 4
  %2715 = trunc i32 %2714 to i8
  %2716 = and i8 %2715, 1
  store i8 %2716, i8* %30, align 1, !tbaa !2447
  %2717 = icmp eq i32 %2704, 0
  %2718 = zext i1 %2717 to i8
  store i8 %2718, i8* %33, align 1, !tbaa !2448
  %2719 = lshr i32 %2704, 31
  %2720 = trunc i32 %2719 to i8
  store i8 %2720, i8* %36, align 1, !tbaa !2449
  %2721 = lshr i32 %2703, 31
  %2722 = xor i32 %2721, 1
  %2723 = xor i32 %2719, %2721
  %2724 = add nuw nsw i32 %2723, %2722
  %2725 = icmp eq i32 %2724, 2
  %2726 = zext i1 %2725 to i8
  store i8 %2726, i8* %42, align 1, !tbaa !2450
  %.v173 = select i1 %2717, i64 154, i64 32
  %2727 = add i64 %3829, %.v173
  store i64 %2727, i64* %PC, align 8, !tbaa !2428
  br i1 %2717, label %block_400d91, label %block_400d17

block_400fa3:                                     ; preds = %block_400ec6
  %2728 = sext i32 %3128 to i64
  store i64 %2728, i64* %RCX, align 8, !tbaa !2428
  %2729 = shl nsw i64 %2728, 2
  %2730 = add i64 %3122, -1248
  %2731 = add i64 %2730, %2729
  %2732 = add i64 %3121, 17
  store i64 %2732, i64* %PC, align 8
  %2733 = inttoptr i64 %2731 to i32*
  %2734 = load i32, i32* %2733, align 4
  %2735 = sext i32 %2734 to i64
  store i64 %2735, i64* %RCX, align 8, !tbaa !2428
  %2736 = shl nsw i64 %2735, 2
  %2737 = add i64 %2736, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %2738 = add i64 %3121, 24
  store i64 %2738, i64* %PC, align 8
  %2739 = inttoptr i64 %2737 to i32*
  %2740 = load i32, i32* %2739, align 4
  %2741 = zext i32 %2740 to i64
  store i64 %2741, i64* %RAX, align 8, !tbaa !2428
  %2742 = add i64 %3121, 27
  store i64 %2742, i64* %PC, align 8
  %2743 = load i32, i32* %3125, align 4
  %2744 = add i32 %2743, 1
  %2745 = zext i32 %2744 to i64
  store i64 %2745, i64* %RDX, align 8, !tbaa !2428
  %2746 = icmp eq i32 %2743, -1
  %2747 = icmp eq i32 %2744, 0
  %2748 = or i1 %2746, %2747
  %2749 = zext i1 %2748 to i8
  store i8 %2749, i8* %17, align 1, !tbaa !2432
  %2750 = and i32 %2744, 255
  %2751 = tail call i32 @llvm.ctpop.i32(i32 %2750) #8
  %2752 = trunc i32 %2751 to i8
  %2753 = and i8 %2752, 1
  %2754 = xor i8 %2753, 1
  store i8 %2754, i8* %24, align 1, !tbaa !2446
  %2755 = xor i32 %2743, %2744
  %2756 = lshr i32 %2755, 4
  %2757 = trunc i32 %2756 to i8
  %2758 = and i8 %2757, 1
  store i8 %2758, i8* %30, align 1, !tbaa !2447
  %2759 = zext i1 %2747 to i8
  store i8 %2759, i8* %33, align 1, !tbaa !2448
  %2760 = lshr i32 %2744, 31
  %2761 = trunc i32 %2760 to i8
  store i8 %2761, i8* %36, align 1, !tbaa !2449
  %2762 = lshr i32 %2743, 31
  %2763 = xor i32 %2760, %2762
  %2764 = add nuw nsw i32 %2763, %2760
  %2765 = icmp eq i32 %2764, 2
  %2766 = zext i1 %2765 to i8
  store i8 %2766, i8* %42, align 1, !tbaa !2450
  %2767 = sext i32 %2744 to i64
  store i64 %2767, i64* %RCX, align 8, !tbaa !2428
  %2768 = shl nsw i64 %2767, 2
  %2769 = add i64 %2730, %2768
  %2770 = add i64 %3121, 40
  store i64 %2770, i64* %PC, align 8
  %2771 = inttoptr i64 %2769 to i32*
  store i32 %2740, i32* %2771, align 4
  %.pre47 = load i64, i64* %PC, align 8
  %.pre48 = load i64, i64* %RBP, align 8
  br label %block_400fcb

block_4010f1:                                     ; preds = %block_4010e4
  %2772 = add i64 %3937, -16
  %2773 = add i64 %3966, 7
  store i64 %2773, i64* %PC, align 8
  %2774 = inttoptr i64 %2772 to i32*
  store i32 1, i32* %2774, align 4
  %2775 = load i64, i64* %RBP, align 8
  %2776 = add i64 %2775, -8
  %2777 = load i64, i64* %PC, align 8
  %2778 = add i64 %2777, 7
  store i64 %2778, i64* %PC, align 8
  %2779 = inttoptr i64 %2776 to i32*
  store i32 1, i32* %2779, align 4
  %.pre53 = load i64, i64* %PC, align 8
  br label %block_4010ff

block_400d91:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_400cf7
  %2780 = phi i64 [ %2727, %block_400cf7 ], [ %.pre38, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.35, %block_400cf7 ], [ %4335, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ]
  %2781 = load i64, i64* %RBP, align 8
  %2782 = add i64 %2781, -4
  %2783 = add i64 %2780, 8
  store i64 %2783, i64* %PC, align 8
  %2784 = inttoptr i64 %2782 to i32*
  %2785 = load i32, i32* %2784, align 4
  %2786 = add i32 %2785, 1
  %2787 = zext i32 %2786 to i64
  store i64 %2787, i64* %RAX, align 8, !tbaa !2428
  %2788 = icmp eq i32 %2785, -1
  %2789 = icmp eq i32 %2786, 0
  %2790 = or i1 %2788, %2789
  %2791 = zext i1 %2790 to i8
  store i8 %2791, i8* %17, align 1, !tbaa !2432
  %2792 = and i32 %2786, 255
  %2793 = tail call i32 @llvm.ctpop.i32(i32 %2792) #8
  %2794 = trunc i32 %2793 to i8
  %2795 = and i8 %2794, 1
  %2796 = xor i8 %2795, 1
  store i8 %2796, i8* %24, align 1, !tbaa !2446
  %2797 = xor i32 %2785, %2786
  %2798 = lshr i32 %2797, 4
  %2799 = trunc i32 %2798 to i8
  %2800 = and i8 %2799, 1
  store i8 %2800, i8* %30, align 1, !tbaa !2447
  %2801 = zext i1 %2789 to i8
  store i8 %2801, i8* %33, align 1, !tbaa !2448
  %2802 = lshr i32 %2786, 31
  %2803 = trunc i32 %2802 to i8
  store i8 %2803, i8* %36, align 1, !tbaa !2449
  %2804 = lshr i32 %2785, 31
  %2805 = xor i32 %2802, %2804
  %2806 = add nuw nsw i32 %2805, %2802
  %2807 = icmp eq i32 %2806, 2
  %2808 = zext i1 %2807 to i8
  store i8 %2808, i8* %42, align 1, !tbaa !2450
  %2809 = add i64 %2780, 14
  store i64 %2809, i64* %PC, align 8
  store i32 %2786, i32* %2784, align 4
  %2810 = load i64, i64* %PC, align 8
  %2811 = add i64 %2810, -188
  store i64 %2811, i64* %PC, align 8, !tbaa !2428
  br label %block_400ce3

block_400edf:                                     ; preds = %block_400ec6
  %2812 = add i64 %3122, -4
  %2813 = add i64 %3121, 9
  store i64 %2813, i64* %PC, align 8
  %2814 = inttoptr i64 %2812 to i32*
  %2815 = load i32, i32* %2814, align 4
  %2816 = sub i32 %3128, %2815
  %2817 = zext i32 %2816 to i64
  store i64 %2817, i64* %RAX, align 8, !tbaa !2428
  %2818 = icmp ult i32 %3128, %2815
  %2819 = zext i1 %2818 to i8
  store i8 %2819, i8* %17, align 1, !tbaa !2432
  %2820 = and i32 %2816, 255
  %2821 = tail call i32 @llvm.ctpop.i32(i32 %2820) #8
  %2822 = trunc i32 %2821 to i8
  %2823 = and i8 %2822, 1
  %2824 = xor i8 %2823, 1
  store i8 %2824, i8* %24, align 1, !tbaa !2446
  %2825 = xor i32 %2815, %3128
  %2826 = xor i32 %2825, %2816
  %2827 = lshr i32 %2826, 4
  %2828 = trunc i32 %2827 to i8
  %2829 = and i8 %2828, 1
  store i8 %2829, i8* %30, align 1, !tbaa !2447
  %2830 = icmp eq i32 %2816, 0
  %2831 = zext i1 %2830 to i8
  store i8 %2831, i8* %33, align 1, !tbaa !2448
  %2832 = lshr i32 %2816, 31
  %2833 = trunc i32 %2832 to i8
  store i8 %2833, i8* %36, align 1, !tbaa !2449
  %2834 = lshr i32 %2815, 31
  %2835 = xor i32 %2834, %3144
  %2836 = xor i32 %2832, %3144
  %2837 = add nuw nsw i32 %2836, %2835
  %2838 = icmp eq i32 %2837, 2
  %2839 = zext i1 %2838 to i8
  store i8 %2839, i8* %42, align 1, !tbaa !2450
  %2840 = sext i32 %2816 to i64
  store i64 %2840, i64* %RCX, align 8, !tbaa !2428
  %2841 = shl nsw i64 %2840, 2
  %2842 = add i64 %3122, -1488
  %2843 = add i64 %2842, %2841
  %2844 = add i64 %3121, 20
  store i64 %2844, i64* %PC, align 8
  %2845 = inttoptr i64 %2843 to i32*
  %2846 = load i32, i32* %2845, align 4
  %2847 = add i32 %2846, 1
  %2848 = icmp ne i32 %2846, -1
  %2849 = zext i1 %2848 to i8
  store i8 %2849, i8* %17, align 1, !tbaa !2432
  %2850 = and i32 %2847, 255
  %2851 = tail call i32 @llvm.ctpop.i32(i32 %2850) #8
  %2852 = trunc i32 %2851 to i8
  %2853 = and i8 %2852, 1
  %2854 = xor i8 %2853, 1
  store i8 %2854, i8* %24, align 1, !tbaa !2446
  %2855 = xor i32 %2846, 16
  %2856 = xor i32 %2847, %2855
  %2857 = lshr i32 %2856, 4
  %2858 = trunc i32 %2857 to i8
  %2859 = and i8 %2858, 1
  store i8 %2859, i8* %30, align 1, !tbaa !2447
  %2860 = icmp eq i32 %2847, 0
  %2861 = zext i1 %2860 to i8
  store i8 %2861, i8* %33, align 1, !tbaa !2448
  %2862 = lshr i32 %2847, 31
  %2863 = trunc i32 %2862 to i8
  store i8 %2863, i8* %36, align 1, !tbaa !2449
  %2864 = lshr i32 %2846, 31
  %2865 = xor i32 %2864, 1
  %2866 = xor i32 %2862, %2864
  %2867 = add nuw nsw i32 %2866, %2865
  %2868 = icmp eq i32 %2867, 2
  %2869 = zext i1 %2868 to i8
  store i8 %2869, i8* %42, align 1, !tbaa !2450
  %.v122 = select i1 %2860, i64 177, i64 26
  %2870 = add i64 %3121, %.v122
  store i64 %2870, i64* %PC, align 8, !tbaa !2428
  br i1 %2860, label %block_400f90, label %block_400ef9

block_400bc7:                                     ; preds = %block_400bb4
  %2871 = add i64 %3020, 3
  store i64 %2871, i64* %PC, align 8
  %2872 = inttoptr i64 %3021 to i32*
  %2873 = load i32, i32* %2872, align 4
  %2874 = add i32 %2873, -1
  %2875 = zext i32 %2874 to i64
  store i64 %2875, i64* %RAX, align 8, !tbaa !2428
  %2876 = icmp ne i32 %2873, 0
  %2877 = zext i1 %2876 to i8
  store i8 %2877, i8* %17, align 1, !tbaa !2432
  %2878 = and i32 %2874, 255
  %2879 = tail call i32 @llvm.ctpop.i32(i32 %2878) #8
  %2880 = trunc i32 %2879 to i8
  %2881 = and i8 %2880, 1
  %2882 = xor i8 %2881, 1
  store i8 %2882, i8* %24, align 1, !tbaa !2446
  %2883 = xor i32 %2873, 16
  %2884 = xor i32 %2874, %2883
  %2885 = lshr i32 %2884, 4
  %2886 = trunc i32 %2885 to i8
  %2887 = and i8 %2886, 1
  store i8 %2887, i8* %30, align 1, !tbaa !2447
  %2888 = icmp eq i32 %2874, 0
  %2889 = zext i1 %2888 to i8
  store i8 %2889, i8* %33, align 1, !tbaa !2448
  %2890 = lshr i32 %2874, 31
  %2891 = trunc i32 %2890 to i8
  store i8 %2891, i8* %36, align 1, !tbaa !2449
  %2892 = lshr i32 %2873, 31
  %2893 = xor i32 %2890, %2892
  %2894 = xor i32 %2890, 1
  %2895 = add nuw nsw i32 %2893, %2894
  %2896 = icmp eq i32 %2895, 2
  %2897 = zext i1 %2896 to i8
  store i8 %2897, i8* %42, align 1, !tbaa !2450
  %2898 = add i64 %3020, 9
  store i64 %2898, i64* %PC, align 8
  store i32 %2874, i32* %2872, align 4
  %2899 = load i64, i64* %PC, align 8
  %2900 = add i64 %2899, -69
  store i64 %2900, i64* %PC, align 8, !tbaa !2428
  br label %block_400b8b

block_4010ff:                                     ; preds = %block_40116d, %block_4010f1
  %2901 = phi i64 [ %.pre53, %block_4010f1 ], [ %2997, %block_40116d ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.37, %block_4010f1 ], [ %MEMORY.24, %block_40116d ]
  %2902 = load i64, i64* %RBP, align 8
  %2903 = add i64 %2902, -8
  %2904 = add i64 %2901, 3
  store i64 %2904, i64* %PC, align 8
  %2905 = inttoptr i64 %2903 to i32*
  %2906 = load i32, i32* %2905, align 4
  %2907 = zext i32 %2906 to i64
  store i64 %2907, i64* %RAX, align 8, !tbaa !2428
  %2908 = add i64 %2902, -12
  %2909 = add i64 %2901, 7
  store i64 %2909, i64* %PC, align 8
  %2910 = inttoptr i64 %2908 to i32*
  %2911 = load i32, i32* %2910, align 4
  %2912 = sext i32 %2911 to i64
  store i64 %2912, i64* %RCX, align 8, !tbaa !2428
  %2913 = shl nsw i64 %2912, 2
  %2914 = add i64 %2902, -1328
  %2915 = add i64 %2914, %2913
  %2916 = add i64 %2901, 14
  store i64 %2916, i64* %PC, align 8
  %2917 = inttoptr i64 %2915 to i32*
  %2918 = load i32, i32* %2917, align 4
  %2919 = sub i32 %2906, %2918
  %2920 = icmp ult i32 %2906, %2918
  %2921 = zext i1 %2920 to i8
  store i8 %2921, i8* %17, align 1, !tbaa !2432
  %2922 = and i32 %2919, 255
  %2923 = tail call i32 @llvm.ctpop.i32(i32 %2922) #8
  %2924 = trunc i32 %2923 to i8
  %2925 = and i8 %2924, 1
  %2926 = xor i8 %2925, 1
  store i8 %2926, i8* %24, align 1, !tbaa !2446
  %2927 = xor i32 %2918, %2906
  %2928 = xor i32 %2927, %2919
  %2929 = lshr i32 %2928, 4
  %2930 = trunc i32 %2929 to i8
  %2931 = and i8 %2930, 1
  store i8 %2931, i8* %30, align 1, !tbaa !2447
  %2932 = icmp eq i32 %2919, 0
  %2933 = zext i1 %2932 to i8
  store i8 %2933, i8* %33, align 1, !tbaa !2448
  %2934 = lshr i32 %2919, 31
  %2935 = trunc i32 %2934 to i8
  store i8 %2935, i8* %36, align 1, !tbaa !2449
  %2936 = lshr i32 %2906, 31
  %2937 = lshr i32 %2918, 31
  %2938 = xor i32 %2937, %2936
  %2939 = xor i32 %2934, %2936
  %2940 = add nuw nsw i32 %2939, %2938
  %2941 = icmp eq i32 %2940, 2
  %2942 = zext i1 %2941 to i8
  store i8 %2942, i8* %42, align 1, !tbaa !2450
  %2943 = icmp ne i8 %2935, 0
  %2944 = xor i1 %2943, %2941
  %.demorgan134 = or i1 %2932, %2944
  %.v135 = select i1 %.demorgan134, i64 20, i64 129
  %2945 = add i64 %2901, %.v135
  store i64 %2945, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan134, label %block_401113, label %block_401180

block_4016de:                                     ; preds = %block_4014b1
  %2946 = add i64 %5371, 117
  br label %block_401753

block_4017f3:                                     ; preds = %block_4017e1
  %2947 = add i64 %3239, 12
  store i64 %2947, i64* %PC, align 8
  %2948 = inttoptr i64 %3244 to i32*
  %2949 = load i32, i32* %2948, align 4
  %2950 = sext i32 %2949 to i64
  store i64 %2950, i64* %RAX, align 8, !tbaa !2428
  %2951 = shl nsw i64 %2950, 2
  %2952 = add i64 %2951, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %2953 = add i64 %3239, 19
  store i64 %2953, i64* %PC, align 8
  %2954 = inttoptr i64 %2952 to i32*
  %2955 = load i32, i32* %2954, align 4
  %2956 = zext i32 %2955 to i64
  store i64 %2956, i64* %RCX, align 8, !tbaa !2428
  %2957 = add i64 %3239, 23
  store i64 %2957, i64* %PC, align 8
  %2958 = load i32, i32* %271, align 4
  %2959 = sext i32 %2958 to i64
  store i64 %2959, i64* %RAX, align 8, !tbaa !2428
  %2960 = shl nsw i64 %2959, 2
  %2961 = add i64 %2960, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %2962 = add i64 %3239, 30
  store i64 %2962, i64* %PC, align 8
  %2963 = inttoptr i64 %2961 to i32*
  store i32 %2955, i32* %2963, align 4
  %2964 = load i64, i64* %PC, align 8
  %2965 = add i64 %2964, 20
  store i64 %2965, i64* %PC, align 8, !tbaa !2428
  br label %block_401825

block_40116d:                                     ; preds = %block_401113, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3
  %2966 = phi i64 [ %2902, %block_401113 ], [ %.pre58, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3 ]
  %2967 = phi i64 [ %2312, %block_401113 ], [ %.pre57, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3 ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.23, %block_401113 ], [ %2004, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit3 ]
  %2968 = add i64 %2966, -8
  %2969 = add i64 %2967, 8
  store i64 %2969, i64* %PC, align 8
  %2970 = inttoptr i64 %2968 to i32*
  %2971 = load i32, i32* %2970, align 4
  %2972 = add i32 %2971, 1
  %2973 = zext i32 %2972 to i64
  store i64 %2973, i64* %RAX, align 8, !tbaa !2428
  %2974 = icmp eq i32 %2971, -1
  %2975 = icmp eq i32 %2972, 0
  %2976 = or i1 %2974, %2975
  %2977 = zext i1 %2976 to i8
  store i8 %2977, i8* %17, align 1, !tbaa !2432
  %2978 = and i32 %2972, 255
  %2979 = tail call i32 @llvm.ctpop.i32(i32 %2978) #8
  %2980 = trunc i32 %2979 to i8
  %2981 = and i8 %2980, 1
  %2982 = xor i8 %2981, 1
  store i8 %2982, i8* %24, align 1, !tbaa !2446
  %2983 = xor i32 %2971, %2972
  %2984 = lshr i32 %2983, 4
  %2985 = trunc i32 %2984 to i8
  %2986 = and i8 %2985, 1
  store i8 %2986, i8* %30, align 1, !tbaa !2447
  %2987 = zext i1 %2975 to i8
  store i8 %2987, i8* %33, align 1, !tbaa !2448
  %2988 = lshr i32 %2972, 31
  %2989 = trunc i32 %2988 to i8
  store i8 %2989, i8* %36, align 1, !tbaa !2449
  %2990 = lshr i32 %2971, 31
  %2991 = xor i32 %2988, %2990
  %2992 = add nuw nsw i32 %2991, %2988
  %2993 = icmp eq i32 %2992, 2
  %2994 = zext i1 %2993 to i8
  store i8 %2994, i8* %42, align 1, !tbaa !2450
  %2995 = add i64 %2967, 14
  store i64 %2995, i64* %PC, align 8
  store i32 %2972, i32* %2970, align 4
  %2996 = load i64, i64* %PC, align 8
  %2997 = add i64 %2996, -124
  store i64 %2997, i64* %PC, align 8, !tbaa !2428
  br label %block_4010ff

block_400cdc:                                     ; preds = %block_400ca2
  %2998 = add i64 %3525, 7
  store i64 %2998, i64* %PC, align 8
  store i32 0, i32* %3499, align 4
  %.pre35 = load i64, i64* %PC, align 8
  br label %block_400ce3

block_4010d3:                                     ; preds = %block_40108d
  %2999 = add i64 %3655, -1492
  %3000 = add i64 %3698, 10
  store i64 %3000, i64* %PC, align 8
  %3001 = inttoptr i64 %2999 to i32*
  store i32 0, i32* %3001, align 4
  %3002 = load i64, i64* %RBP, align 8
  %3003 = add i64 %3002, -4
  %3004 = load i64, i64* %PC, align 8
  %3005 = add i64 %3004, 7
  store i64 %3005, i64* %PC, align 8
  %3006 = inttoptr i64 %3003 to i32*
  store i32 1, i32* %3006, align 4
  %.pre52 = load i64, i64* %PC, align 8
  br label %block_4010e4

block_400bb4:                                     ; preds = %block_400b8b, %block_400ba7
  %3007 = phi i64 [ %4611, %block_400b8b ], [ %.pre28, %block_400ba7 ]
  %3008 = load i64, i64* %RBP, align 8
  %3009 = add i64 %3008, -2693
  %3010 = add i64 %3007, 6
  store i64 %3010, i64* %PC, align 8
  %3011 = inttoptr i64 %3009 to i8*
  %3012 = load i8, i8* %3011, align 1
  store i8 %3012, i8* %AL, align 1, !tbaa !2451
  %3013 = and i8 %3012, 1
  store i8 0, i8* %17, align 1, !tbaa !2432
  %3014 = zext i8 %3013 to i32
  %3015 = tail call i32 @llvm.ctpop.i32(i32 %3014) #8
  %3016 = trunc i32 %3015 to i8
  %3017 = xor i8 %3016, 1
  store i8 %3017, i8* %24, align 1, !tbaa !2446
  %3018 = xor i8 %3013, 1
  store i8 %3018, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  store i8 0, i8* %30, align 1, !tbaa !2447
  %3019 = icmp eq i8 %3018, 0
  %.v164 = select i1 %3019, i64 19, i64 14
  %3020 = add i64 %3007, %.v164
  store i64 %3020, i64* %PC, align 8, !tbaa !2428
  %3021 = add i64 %3008, -16
  br i1 %3019, label %block_400bc7, label %block_400bc2

block_4016cb:                                     ; preds = %block_401572, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7
  %3022 = phi i64 [ %1858, %block_401572 ], [ %.pre92, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7 ]
  %3023 = phi i64 [ %2663, %block_401572 ], [ %.pre91, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7 ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.19, %block_401572 ], [ %792, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit7 ]
  %3024 = add i64 %3022, -4
  %3025 = add i64 %3023, 8
  store i64 %3025, i64* %PC, align 8
  %3026 = inttoptr i64 %3024 to i32*
  %3027 = load i32, i32* %3026, align 4
  %3028 = add i32 %3027, 1
  %3029 = zext i32 %3028 to i64
  store i64 %3029, i64* %RAX, align 8, !tbaa !2428
  %3030 = icmp eq i32 %3027, -1
  %3031 = icmp eq i32 %3028, 0
  %3032 = or i1 %3030, %3031
  %3033 = zext i1 %3032 to i8
  store i8 %3033, i8* %17, align 1, !tbaa !2432
  %3034 = and i32 %3028, 255
  %3035 = tail call i32 @llvm.ctpop.i32(i32 %3034) #8
  %3036 = trunc i32 %3035 to i8
  %3037 = and i8 %3036, 1
  %3038 = xor i8 %3037, 1
  store i8 %3038, i8* %24, align 1, !tbaa !2446
  %3039 = xor i32 %3027, %3028
  %3040 = lshr i32 %3039, 4
  %3041 = trunc i32 %3040 to i8
  %3042 = and i8 %3041, 1
  store i8 %3042, i8* %30, align 1, !tbaa !2447
  %3043 = zext i1 %3031 to i8
  store i8 %3043, i8* %33, align 1, !tbaa !2448
  %3044 = lshr i32 %3028, 31
  %3045 = trunc i32 %3044 to i8
  store i8 %3045, i8* %36, align 1, !tbaa !2449
  %3046 = lshr i32 %3027, 31
  %3047 = xor i32 %3044, %3046
  %3048 = add nuw nsw i32 %3047, %3044
  %3049 = icmp eq i32 %3048, 2
  %3050 = zext i1 %3049 to i8
  store i8 %3050, i8* %42, align 1, !tbaa !2450
  %3051 = add i64 %3023, 14
  store i64 %3051, i64* %PC, align 8
  store i32 %3028, i32* %3026, align 4
  %3052 = load i64, i64* %PC, align 8
  %3053 = add i64 %3052, -552
  store i64 %3053, i64* %PC, align 8, !tbaa !2428
  br label %block_4014b1

block_400ec6:                                     ; preds = %block_400ebf, %block_400f90
  %3054 = phi i64 [ %.pre41, %block_400ebf ], [ %1090, %block_400f90 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.43, %block_400ebf ], [ %MEMORY.7, %block_400f90 ]
  %3055 = load i64, i64* %RBP, align 8
  %3056 = add i64 %3055, -4
  %3057 = add i64 %3054, 3
  store i64 %3057, i64* %PC, align 8
  %3058 = inttoptr i64 %3056 to i32*
  %3059 = load i32, i32* %3058, align 4
  %3060 = zext i32 %3059 to i64
  store i64 %3060, i64* %RAX, align 8, !tbaa !2428
  %3061 = add i64 %3055, -12
  %3062 = add i64 %3054, 6
  store i64 %3062, i64* %PC, align 8
  %3063 = inttoptr i64 %3061 to i32*
  %3064 = load i32, i32* %3063, align 4
  %3065 = add i32 %3064, 1
  %3066 = zext i32 %3065 to i64
  store i64 %3066, i64* %RCX, align 8, !tbaa !2428
  %3067 = icmp eq i32 %3064, -1
  %3068 = icmp eq i32 %3065, 0
  %3069 = or i1 %3067, %3068
  %3070 = zext i1 %3069 to i8
  store i8 %3070, i8* %17, align 1, !tbaa !2432
  %3071 = and i32 %3065, 255
  %3072 = tail call i32 @llvm.ctpop.i32(i32 %3071) #8
  %3073 = trunc i32 %3072 to i8
  %3074 = and i8 %3073, 1
  %3075 = xor i8 %3074, 1
  store i8 %3075, i8* %24, align 1, !tbaa !2446
  %3076 = xor i32 %3064, %3065
  %3077 = lshr i32 %3076, 4
  %3078 = trunc i32 %3077 to i8
  %3079 = and i8 %3078, 1
  store i8 %3079, i8* %30, align 1, !tbaa !2447
  %3080 = zext i1 %3068 to i8
  store i8 %3080, i8* %33, align 1, !tbaa !2448
  %3081 = lshr i32 %3065, 31
  %3082 = trunc i32 %3081 to i8
  store i8 %3082, i8* %36, align 1, !tbaa !2449
  %3083 = lshr i32 %3064, 31
  %3084 = xor i32 %3081, %3083
  %3085 = add nuw nsw i32 %3084, %3081
  %3086 = icmp eq i32 %3085, 2
  %3087 = zext i1 %3086 to i8
  store i8 %3087, i8* %42, align 1, !tbaa !2450
  %3088 = sext i32 %3065 to i64
  store i64 %3088, i64* %RDX, align 8, !tbaa !2428
  %3089 = shl nsw i64 %3088, 2
  %3090 = add i64 %3055, -1328
  %3091 = add i64 %3090, %3089
  %3092 = add i64 %3054, 19
  store i64 %3092, i64* %PC, align 8
  %3093 = inttoptr i64 %3091 to i32*
  %3094 = load i32, i32* %3093, align 4
  %3095 = sub i32 %3059, %3094
  %3096 = icmp ult i32 %3059, %3094
  %3097 = zext i1 %3096 to i8
  store i8 %3097, i8* %17, align 1, !tbaa !2432
  %3098 = and i32 %3095, 255
  %3099 = tail call i32 @llvm.ctpop.i32(i32 %3098) #8
  %3100 = trunc i32 %3099 to i8
  %3101 = and i8 %3100, 1
  %3102 = xor i8 %3101, 1
  store i8 %3102, i8* %24, align 1, !tbaa !2446
  %3103 = xor i32 %3094, %3059
  %3104 = xor i32 %3103, %3095
  %3105 = lshr i32 %3104, 4
  %3106 = trunc i32 %3105 to i8
  %3107 = and i8 %3106, 1
  store i8 %3107, i8* %30, align 1, !tbaa !2447
  %3108 = icmp eq i32 %3095, 0
  %3109 = zext i1 %3108 to i8
  store i8 %3109, i8* %33, align 1, !tbaa !2448
  %3110 = lshr i32 %3095, 31
  %3111 = trunc i32 %3110 to i8
  store i8 %3111, i8* %36, align 1, !tbaa !2449
  %3112 = lshr i32 %3059, 31
  %3113 = lshr i32 %3094, 31
  %3114 = xor i32 %3113, %3112
  %3115 = xor i32 %3110, %3112
  %3116 = add nuw nsw i32 %3115, %3114
  %3117 = icmp eq i32 %3116, 2
  %3118 = zext i1 %3117 to i8
  store i8 %3118, i8* %42, align 1, !tbaa !2450
  %3119 = icmp ne i8 %3111, 0
  %3120 = xor i1 %3119, %3117
  %.demorgan120 = or i1 %3108, %3120
  %.v121 = select i1 %.demorgan120, i64 25, i64 221
  %3121 = add i64 %3054, %.v121
  %3122 = load i64, i64* %RBP, align 8
  %3123 = add i64 %3122, -12
  %3124 = add i64 %3121, 3
  store i64 %3124, i64* %PC, align 8
  %3125 = inttoptr i64 %3123 to i32*
  %3126 = load i32, i32* %3125, align 4
  %3127 = add i64 %3121, 6
  store i64 %3127, i64* %PC, align 8
  %3128 = add i32 %3126, 1
  %3129 = zext i32 %3128 to i64
  store i64 %3129, i64* %RAX, align 8, !tbaa !2428
  %3130 = icmp eq i32 %3126, -1
  %3131 = icmp eq i32 %3128, 0
  %3132 = or i1 %3130, %3131
  %3133 = zext i1 %3132 to i8
  store i8 %3133, i8* %17, align 1, !tbaa !2432
  %3134 = and i32 %3128, 255
  %3135 = tail call i32 @llvm.ctpop.i32(i32 %3134) #8
  %3136 = trunc i32 %3135 to i8
  %3137 = and i8 %3136, 1
  %3138 = xor i8 %3137, 1
  store i8 %3138, i8* %24, align 1, !tbaa !2446
  %3139 = xor i32 %3126, %3128
  %3140 = lshr i32 %3139, 4
  %3141 = trunc i32 %3140 to i8
  %3142 = and i8 %3141, 1
  store i8 %3142, i8* %30, align 1, !tbaa !2447
  %3143 = zext i1 %3131 to i8
  store i8 %3143, i8* %33, align 1, !tbaa !2448
  %3144 = lshr i32 %3128, 31
  %3145 = trunc i32 %3144 to i8
  store i8 %3145, i8* %36, align 1, !tbaa !2449
  %3146 = lshr i32 %3126, 31
  %3147 = xor i32 %3144, %3146
  %3148 = add nuw nsw i32 %3147, %3144
  %3149 = icmp eq i32 %3148, 2
  %3150 = zext i1 %3149 to i8
  store i8 %3150, i8* %42, align 1, !tbaa !2450
  br i1 %.demorgan120, label %block_400edf, label %block_400fa3

block_4012d0:                                     ; preds = %block_40128d, %block_40127b
  %3151 = phi i64 [ %3784, %block_40127b ], [ %3315, %block_40128d ]
  %3152 = phi i64 [ %3749, %block_40127b ], [ %.pre63, %block_40128d ]
  %3153 = add i64 %3152, -4
  %3154 = add i64 %3151, 4
  store i64 %3154, i64* %PC, align 8
  %3155 = inttoptr i64 %3153 to i32*
  %3156 = load i32, i32* %3155, align 4
  %3157 = sext i32 %3156 to i64
  store i64 %3157, i64* %RAX, align 8, !tbaa !2428
  %3158 = shl nsw i64 %3157, 2
  %3159 = add i64 %3152, -1488
  %3160 = add i64 %3159, %3158
  %3161 = add i64 %3151, 12
  store i64 %3161, i64* %PC, align 8
  %3162 = inttoptr i64 %3160 to i32*
  %3163 = load i32, i32* %3162, align 4
  %3164 = add i32 %3163, 1
  %3165 = icmp ne i32 %3163, -1
  %3166 = zext i1 %3165 to i8
  store i8 %3166, i8* %17, align 1, !tbaa !2432
  %3167 = and i32 %3164, 255
  %3168 = tail call i32 @llvm.ctpop.i32(i32 %3167) #8
  %3169 = trunc i32 %3168 to i8
  %3170 = and i8 %3169, 1
  %3171 = xor i8 %3170, 1
  store i8 %3171, i8* %24, align 1, !tbaa !2446
  %3172 = xor i32 %3163, 16
  %3173 = xor i32 %3164, %3172
  %3174 = lshr i32 %3173, 4
  %3175 = trunc i32 %3174 to i8
  %3176 = and i8 %3175, 1
  store i8 %3176, i8* %30, align 1, !tbaa !2447
  %3177 = icmp eq i32 %3164, 0
  %3178 = zext i1 %3177 to i8
  store i8 %3178, i8* %33, align 1, !tbaa !2448
  %3179 = lshr i32 %3164, 31
  %3180 = trunc i32 %3179 to i8
  store i8 %3180, i8* %36, align 1, !tbaa !2449
  %3181 = lshr i32 %3163, 31
  %3182 = xor i32 %3181, 1
  %3183 = xor i32 %3179, %3181
  %3184 = add nuw nsw i32 %3183, %3182
  %3185 = icmp eq i32 %3184, 2
  %3186 = zext i1 %3185 to i8
  store i8 %3186, i8* %42, align 1, !tbaa !2450
  %.v148 = select i1 %3177, i64 18, i64 99
  %3187 = add i64 %3151, %.v148
  store i64 %3187, i64* %PC, align 8, !tbaa !2428
  br i1 %3177, label %block_4012e2, label %block_401333

block_4014c5:                                     ; preds = %block_4014b1
  %3188 = add i64 %5371, 4
  store i64 %3188, i64* %PC, align 8
  %3189 = load i32, i32* %5331, align 4
  %3190 = sext i32 %3189 to i64
  store i64 %3190, i64* %RAX, align 8, !tbaa !2428
  %3191 = shl nsw i64 %3190, 2
  %3192 = add i64 %5328, -1568
  %3193 = add i64 %3192, %3191
  %3194 = add i64 %5371, 12
  store i64 %3194, i64* %PC, align 8
  %3195 = inttoptr i64 %3193 to i32*
  %3196 = load i32, i32* %3195, align 4
  %3197 = sext i32 %3196 to i64
  store i64 %3197, i64* %RAX, align 8, !tbaa !2428
  %3198 = shl nsw i64 %3197, 2
  %3199 = add i64 %5328, -2640
  %3200 = add i64 %3199, %3198
  %3201 = add i64 %5371, 23
  store i64 %3201, i64* %PC, align 8
  %3202 = inttoptr i64 %3200 to i32*
  store i32 1, i32* %3202, align 4
  %3203 = load i64, i64* %RBP, align 8
  %3204 = add i64 %3203, -8
  %3205 = load i64, i64* %PC, align 8
  %3206 = add i64 %3205, 7
  store i64 %3206, i64* %PC, align 8
  %3207 = inttoptr i64 %3204 to i32*
  store i32 1, i32* %3207, align 4
  %.pre74 = load i64, i64* %PC, align 8
  br label %block_4014e3

block_4017e1:                                     ; preds = %block_4017d4
  %3208 = add i64 %297, 4
  store i64 %3208, i64* %PC, align 8
  %3209 = load i32, i32* %271, align 4
  %3210 = sext i32 %3209 to i64
  store i64 %3210, i64* %RAX, align 8, !tbaa !2428
  %3211 = shl nsw i64 %3210, 2
  %3212 = add i64 %3211, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %3213 = add i64 %297, 12
  store i64 %3213, i64* %PC, align 8
  %3214 = inttoptr i64 %3212 to i32*
  %3215 = load i32, i32* %3214, align 4
  %3216 = add i32 %3215, 1
  %3217 = icmp ne i32 %3215, -1
  %3218 = zext i1 %3217 to i8
  store i8 %3218, i8* %17, align 1, !tbaa !2432
  %3219 = and i32 %3216, 255
  %3220 = tail call i32 @llvm.ctpop.i32(i32 %3219) #8
  %3221 = trunc i32 %3220 to i8
  %3222 = and i8 %3221, 1
  %3223 = xor i8 %3222, 1
  store i8 %3223, i8* %24, align 1, !tbaa !2446
  %3224 = xor i32 %3215, 16
  %3225 = xor i32 %3216, %3224
  %3226 = lshr i32 %3225, 4
  %3227 = trunc i32 %3226 to i8
  %3228 = and i8 %3227, 1
  store i8 %3228, i8* %30, align 1, !tbaa !2447
  %3229 = icmp eq i32 %3216, 0
  %3230 = zext i1 %3229 to i8
  store i8 %3230, i8* %33, align 1, !tbaa !2448
  %3231 = lshr i32 %3216, 31
  %3232 = trunc i32 %3231 to i8
  store i8 %3232, i8* %36, align 1, !tbaa !2449
  %3233 = lshr i32 %3215, 31
  %3234 = xor i32 %3233, 1
  %3235 = xor i32 %3231, %3233
  %3236 = add nuw nsw i32 %3235, %3234
  %3237 = icmp eq i32 %3236, 2
  %3238 = zext i1 %3237 to i8
  store i8 %3238, i8* %42, align 1, !tbaa !2450
  %.v177 = select i1 %3229, i64 53, i64 18
  %3239 = add i64 %297, %.v177
  %3240 = add i64 %3239, 4
  store i64 %3240, i64* %PC, align 8
  %3241 = load i32, i32* %271, align 4
  %3242 = sext i32 %3241 to i64
  store i64 %3242, i64* %RAX, align 8, !tbaa !2428
  %3243 = shl nsw i64 %3242, 2
  %3244 = add i64 %3243, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  br i1 %3229, label %block_401816, label %block_4017f3

block_400ebf:                                     ; preds = %block_400e7e, %block_400eab
  %3245 = phi i64 [ %3746, %block_400e7e ], [ %.pre40, %block_400eab ]
  %3246 = load i64, i64* %RBP, align 8
  %3247 = add i64 %3246, -4
  %3248 = add i64 %3245, 7
  store i64 %3248, i64* %PC, align 8
  %3249 = inttoptr i64 %3247 to i32*
  store i32 1, i32* %3249, align 4
  %.pre41 = load i64, i64* %PC, align 8
  br label %block_400ec6

block_40128d:                                     ; preds = %block_40127b
  %3250 = add i64 %3749, -1168
  store i64 %3250, i64* %RAX, align 8, !tbaa !2428
  %3251 = add i64 %3749, -12
  %3252 = add i64 %3784, 11
  store i64 %3252, i64* %PC, align 8
  %3253 = inttoptr i64 %3251 to i32*
  %3254 = load i32, i32* %3253, align 4
  %3255 = sext i32 %3254 to i64
  %3256 = shl nsw i64 %3255, 6
  store i64 %3256, i64* %RCX, align 8, !tbaa !2428
  %3257 = lshr i64 %3255, 57
  %3258 = and i64 %3257, 1
  %3259 = add i64 %3256, %3250
  store i64 %3259, i64* %RAX, align 8, !tbaa !2428
  %3260 = icmp ult i64 %3259, %3250
  %3261 = icmp ult i64 %3259, %3256
  %3262 = or i1 %3260, %3261
  %3263 = zext i1 %3262 to i8
  store i8 %3263, i8* %17, align 1, !tbaa !2432
  %3264 = trunc i64 %3259 to i32
  %3265 = and i32 %3264, 255
  %3266 = tail call i32 @llvm.ctpop.i32(i32 %3265) #8
  %3267 = trunc i32 %3266 to i8
  %3268 = and i8 %3267, 1
  %3269 = xor i8 %3268, 1
  store i8 %3269, i8* %24, align 1, !tbaa !2446
  %3270 = xor i64 %3250, %3259
  %3271 = lshr i64 %3270, 4
  %3272 = trunc i64 %3271 to i8
  %3273 = and i8 %3272, 1
  store i8 %3273, i8* %30, align 1, !tbaa !2447
  %3274 = icmp eq i64 %3259, 0
  %3275 = zext i1 %3274 to i8
  store i8 %3275, i8* %33, align 1, !tbaa !2448
  %3276 = lshr i64 %3259, 63
  %3277 = trunc i64 %3276 to i8
  store i8 %3277, i8* %36, align 1, !tbaa !2449
  %3278 = lshr i64 %3250, 63
  %3279 = xor i64 %3276, %3278
  %3280 = xor i64 %3276, %3258
  %3281 = add nuw nsw i64 %3279, %3280
  %3282 = icmp eq i64 %3281, 2
  %3283 = zext i1 %3282 to i8
  store i8 %3283, i8* %42, align 1, !tbaa !2450
  %3284 = add i64 %3784, 22
  store i64 %3284, i64* %PC, align 8
  %3285 = load i32, i32* %3752, align 4
  %3286 = sext i32 %3285 to i64
  store i64 %3286, i64* %RCX, align 8, !tbaa !2428
  %3287 = shl nsw i64 %3286, 2
  %3288 = add i64 %3287, %3259
  %3289 = add i64 %3784, 26
  store i64 %3289, i64* %PC, align 8
  %3290 = inttoptr i64 %3288 to i32*
  %3291 = load i32, i32* %3290, align 4
  %3292 = add i32 %3291, 1
  %3293 = icmp ne i32 %3291, -1
  %3294 = zext i1 %3293 to i8
  store i8 %3294, i8* %17, align 1, !tbaa !2432
  %3295 = and i32 %3292, 255
  %3296 = tail call i32 @llvm.ctpop.i32(i32 %3295) #8
  %3297 = trunc i32 %3296 to i8
  %3298 = and i8 %3297, 1
  %3299 = xor i8 %3298, 1
  store i8 %3299, i8* %24, align 1, !tbaa !2446
  %3300 = xor i32 %3291, 16
  %3301 = xor i32 %3292, %3300
  %3302 = lshr i32 %3301, 4
  %3303 = trunc i32 %3302 to i8
  %3304 = and i8 %3303, 1
  store i8 %3304, i8* %30, align 1, !tbaa !2447
  %3305 = icmp eq i32 %3292, 0
  %3306 = zext i1 %3305 to i8
  store i8 %3306, i8* %33, align 1, !tbaa !2448
  %3307 = lshr i32 %3292, 31
  %3308 = trunc i32 %3307 to i8
  store i8 %3308, i8* %36, align 1, !tbaa !2449
  %3309 = lshr i32 %3291, 31
  %3310 = xor i32 %3309, 1
  %3311 = xor i32 %3307, %3309
  %3312 = add nuw nsw i32 %3311, %3310
  %3313 = icmp eq i32 %3312, 2
  %3314 = zext i1 %3313 to i8
  store i8 %3314, i8* %42, align 1, !tbaa !2450
  %.v147 = select i1 %3305, i64 32, i64 67
  %3315 = add i64 %3784, %.v147
  store i64 %3315, i64* %PC, align 8, !tbaa !2428
  %.pre63 = load i64, i64* %RBP, align 8
  br i1 %3305, label %block_4012ad, label %block_4012d0

block_400ab9:                                     ; preds = %block_400a8a, %block_400ffe
  %3316 = phi i64 [ %.pre25, %block_400a8a ], [ %71, %block_400ffe ]
  %3317 = phi i64 [ %.pre24, %block_400a8a ], [ %59, %block_400ffe ]
  %MEMORY.30 = phi %struct.Memory* [ %MEMORY.15, %block_400a8a ], [ %MEMORY.40, %block_400ffe ]
  %3318 = add i64 %3317, -12
  %3319 = add i64 %3316, 3
  store i64 %3319, i64* %PC, align 8
  %3320 = inttoptr i64 %3318 to i32*
  %3321 = load i32, i32* %3320, align 4
  %3322 = add i32 %3321, 1
  %3323 = zext i32 %3322 to i64
  store i64 %3323, i64* %RAX, align 8, !tbaa !2428
  %3324 = icmp eq i32 %3321, -1
  %3325 = icmp eq i32 %3322, 0
  %3326 = or i1 %3324, %3325
  %3327 = zext i1 %3326 to i8
  store i8 %3327, i8* %17, align 1, !tbaa !2432
  %3328 = and i32 %3322, 255
  %3329 = tail call i32 @llvm.ctpop.i32(i32 %3328) #8
  %3330 = trunc i32 %3329 to i8
  %3331 = and i8 %3330, 1
  %3332 = xor i8 %3331, 1
  store i8 %3332, i8* %24, align 1, !tbaa !2446
  %3333 = xor i32 %3321, %3322
  %3334 = lshr i32 %3333, 4
  %3335 = trunc i32 %3334 to i8
  %3336 = and i8 %3335, 1
  store i8 %3336, i8* %30, align 1, !tbaa !2447
  %3337 = zext i1 %3325 to i8
  store i8 %3337, i8* %33, align 1, !tbaa !2448
  %3338 = lshr i32 %3322, 31
  %3339 = trunc i32 %3338 to i8
  store i8 %3339, i8* %36, align 1, !tbaa !2449
  %3340 = lshr i32 %3321, 31
  %3341 = xor i32 %3338, %3340
  %3342 = add nuw nsw i32 %3341, %3338
  %3343 = icmp eq i32 %3342, 2
  %3344 = zext i1 %3343 to i8
  store i8 %3344, i8* %42, align 1, !tbaa !2450
  %3345 = add i64 %3316, 9
  store i64 %3345, i64* %PC, align 8
  store i32 %3322, i32* %3320, align 4
  %3346 = load i64, i64* %RBP, align 8
  %3347 = add i64 %3346, -12
  %3348 = load i64, i64* %PC, align 8
  %3349 = add i64 %3348, 4
  store i64 %3349, i64* %PC, align 8
  %3350 = inttoptr i64 %3347 to i32*
  %3351 = load i32, i32* %3350, align 4
  %3352 = sext i32 %3351 to i64
  store i64 %3352, i64* %RCX, align 8, !tbaa !2428
  %3353 = shl nsw i64 %3352, 2
  %3354 = add i64 %3346, -1248
  %3355 = add i64 %3354, %3353
  %3356 = add i64 %3348, 12
  store i64 %3356, i64* %PC, align 8
  %3357 = inttoptr i64 %3355 to i32*
  %3358 = load i32, i32* %3357, align 4
  %3359 = add i32 %3358, 1
  %3360 = icmp ne i32 %3358, -1
  %3361 = zext i1 %3360 to i8
  store i8 %3361, i8* %17, align 1, !tbaa !2432
  %3362 = and i32 %3359, 255
  %3363 = tail call i32 @llvm.ctpop.i32(i32 %3362) #8
  %3364 = trunc i32 %3363 to i8
  %3365 = and i8 %3364, 1
  %3366 = xor i8 %3365, 1
  store i8 %3366, i8* %24, align 1, !tbaa !2446
  %3367 = xor i32 %3358, 16
  %3368 = xor i32 %3359, %3367
  %3369 = lshr i32 %3368, 4
  %3370 = trunc i32 %3369 to i8
  %3371 = and i8 %3370, 1
  store i8 %3371, i8* %30, align 1, !tbaa !2447
  %3372 = icmp eq i32 %3359, 0
  %3373 = zext i1 %3372 to i8
  store i8 %3373, i8* %33, align 1, !tbaa !2448
  %3374 = lshr i32 %3359, 31
  %3375 = trunc i32 %3374 to i8
  store i8 %3375, i8* %36, align 1, !tbaa !2449
  %3376 = lshr i32 %3358, 31
  %3377 = xor i32 %3376, 1
  %3378 = xor i32 %3374, %3376
  %3379 = add nuw nsw i32 %3378, %3377
  %3380 = icmp eq i32 %3379, 2
  %3381 = zext i1 %3380 to i8
  store i8 %3381, i8* %42, align 1, !tbaa !2450
  %.v115 = select i1 %3372, i64 18, i64 192
  %3382 = add i64 %3348, %.v115
  store i64 %3382, i64* %PC, align 8, !tbaa !2428
  br i1 %3372, label %block_400ad4, label %block_400b82

block_4012ad:                                     ; preds = %block_40128d
  %3383 = add i64 %.pre63, -4
  %3384 = add i64 %3315, 4
  store i64 %3384, i64* %PC, align 8
  %3385 = inttoptr i64 %3383 to i32*
  %3386 = load i32, i32* %3385, align 4
  %3387 = sext i32 %3386 to i64
  store i64 %3387, i64* %RAX, align 8, !tbaa !2428
  %3388 = shl nsw i64 %3387, 2
  %3389 = add i64 %.pre63, -1488
  %3390 = add i64 %3389, %3388
  %3391 = add i64 %3315, 12
  store i64 %3391, i64* %PC, align 8
  %3392 = inttoptr i64 %3390 to i32*
  %3393 = load i32, i32* %3392, align 4
  %3394 = sext i32 %3393 to i64
  store i64 %3394, i64* %RAX, align 8, !tbaa !2428
  %3395 = shl nsw i64 %3394, 2
  %3396 = add i64 %3395, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %3397 = add i64 %3315, 19
  store i64 %3397, i64* %PC, align 8
  %3398 = inttoptr i64 %3396 to i32*
  %3399 = load i32, i32* %3398, align 4
  %3400 = zext i32 %3399 to i64
  store i64 %3400, i64* %RCX, align 8, !tbaa !2428
  %3401 = add i64 %3315, 23
  store i64 %3401, i64* %PC, align 8
  %3402 = load i32, i32* %3385, align 4
  %3403 = sext i32 %3402 to i64
  store i64 %3403, i64* %RAX, align 8, !tbaa !2428
  %3404 = shl nsw i64 %3403, 2
  %3405 = add i64 %.pre63, -1616
  %3406 = add i64 %3405, %3404
  %3407 = add i64 %3315, 30
  store i64 %3407, i64* %PC, align 8
  %3408 = inttoptr i64 %3406 to i32*
  store i32 %3399, i32* %3408, align 4
  %3409 = load i64, i64* %PC, align 8
  %3410 = add i64 %3409, 124
  br label %block_401347

block_4017c3:                                     ; preds = %block_40175f
  %3411 = add i64 %1301, 5
  br label %block_4017c8

block_400cac:                                     ; preds = %block_400ca2
  %3412 = add i64 %3496, -1168
  store i64 %3412, i64* %RAX, align 8, !tbaa !2428
  %3413 = add i64 %3496, -12
  %3414 = add i64 %3525, 10
  store i64 %3414, i64* %PC, align 8
  %3415 = inttoptr i64 %3413 to i32*
  %3416 = load i32, i32* %3415, align 4
  %3417 = add i32 %3416, 1
  %3418 = zext i32 %3417 to i64
  store i64 %3418, i64* %RCX, align 8, !tbaa !2428
  %3419 = sext i32 %3417 to i64
  %3420 = shl nsw i64 %3419, 6
  store i64 %3420, i64* %RDX, align 8, !tbaa !2428
  %3421 = lshr i64 %3419, 57
  %3422 = and i64 %3421, 1
  %3423 = add i64 %3420, %3412
  store i64 %3423, i64* %RAX, align 8, !tbaa !2428
  %3424 = icmp ult i64 %3423, %3412
  %3425 = icmp ult i64 %3423, %3420
  %3426 = or i1 %3424, %3425
  %3427 = zext i1 %3426 to i8
  store i8 %3427, i8* %17, align 1, !tbaa !2432
  %3428 = trunc i64 %3423 to i32
  %3429 = and i32 %3428, 255
  %3430 = tail call i32 @llvm.ctpop.i32(i32 %3429) #8
  %3431 = trunc i32 %3430 to i8
  %3432 = and i8 %3431, 1
  %3433 = xor i8 %3432, 1
  store i8 %3433, i8* %24, align 1, !tbaa !2446
  %3434 = xor i64 %3412, %3423
  %3435 = lshr i64 %3434, 4
  %3436 = trunc i64 %3435 to i8
  %3437 = and i8 %3436, 1
  store i8 %3437, i8* %30, align 1, !tbaa !2447
  %3438 = icmp eq i64 %3423, 0
  %3439 = zext i1 %3438 to i8
  store i8 %3439, i8* %33, align 1, !tbaa !2448
  %3440 = lshr i64 %3423, 63
  %3441 = trunc i64 %3440 to i8
  store i8 %3441, i8* %36, align 1, !tbaa !2449
  %3442 = lshr i64 %3412, 63
  %3443 = xor i64 %3440, %3442
  %3444 = xor i64 %3440, %3422
  %3445 = add nuw nsw i64 %3443, %3444
  %3446 = icmp eq i64 %3445, 2
  %3447 = zext i1 %3446 to i8
  store i8 %3447, i8* %42, align 1, !tbaa !2450
  %3448 = load i64, i64* %RBP, align 8
  %3449 = add i64 %3448, -4
  %3450 = add i64 %3525, 27
  store i64 %3450, i64* %PC, align 8
  %3451 = inttoptr i64 %3449 to i32*
  %3452 = load i32, i32* %3451, align 4
  %3453 = sext i32 %3452 to i64
  store i64 %3453, i64* %RDX, align 8, !tbaa !2428
  %3454 = shl nsw i64 %3453, 2
  %3455 = add i64 %3454, %3423
  %3456 = add i64 %3525, 34
  store i64 %3456, i64* %PC, align 8
  %3457 = inttoptr i64 %3455 to i32*
  store i32 0, i32* %3457, align 4
  %3458 = load i64, i64* %RBP, align 8
  %3459 = add i64 %3458, -4
  %3460 = load i64, i64* %PC, align 8
  %3461 = add i64 %3460, 3
  store i64 %3461, i64* %PC, align 8
  %3462 = inttoptr i64 %3459 to i32*
  %3463 = load i32, i32* %3462, align 4
  %3464 = add i32 %3463, 1
  %3465 = zext i32 %3464 to i64
  store i64 %3465, i64* %RAX, align 8, !tbaa !2428
  %3466 = icmp eq i32 %3463, -1
  %3467 = icmp eq i32 %3464, 0
  %3468 = or i1 %3466, %3467
  %3469 = zext i1 %3468 to i8
  store i8 %3469, i8* %17, align 1, !tbaa !2432
  %3470 = and i32 %3464, 255
  %3471 = tail call i32 @llvm.ctpop.i32(i32 %3470) #8
  %3472 = trunc i32 %3471 to i8
  %3473 = and i8 %3472, 1
  %3474 = xor i8 %3473, 1
  store i8 %3474, i8* %24, align 1, !tbaa !2446
  %3475 = xor i32 %3463, %3464
  %3476 = lshr i32 %3475, 4
  %3477 = trunc i32 %3476 to i8
  %3478 = and i8 %3477, 1
  store i8 %3478, i8* %30, align 1, !tbaa !2447
  %3479 = zext i1 %3467 to i8
  store i8 %3479, i8* %33, align 1, !tbaa !2448
  %3480 = lshr i32 %3464, 31
  %3481 = trunc i32 %3480 to i8
  store i8 %3481, i8* %36, align 1, !tbaa !2449
  %3482 = lshr i32 %3463, 31
  %3483 = xor i32 %3480, %3482
  %3484 = add nuw nsw i32 %3483, %3480
  %3485 = icmp eq i32 %3484, 2
  %3486 = zext i1 %3485 to i8
  store i8 %3486, i8* %42, align 1, !tbaa !2450
  %3487 = add i64 %3460, 9
  store i64 %3487, i64* %PC, align 8
  store i32 %3464, i32* %3462, align 4
  %3488 = load i64, i64* %PC, align 8
  %3489 = add i64 %3488, -53
  store i64 %3489, i64* %PC, align 8, !tbaa !2428
  br label %block_400ca2

block_4017cd:                                     ; preds = %block_400a16
  %3490 = add i64 %6013, 7
  store i64 %3490, i64* %PC, align 8
  store i32 0, i32* %1769, align 4
  %.pre97 = load i64, i64* %PC, align 8
  br label %block_4017d4

block_400eab:                                     ; preds = %block_400e67
  %3491 = add i64 %3916, -1248
  %3492 = add i64 %3886, 20
  store i64 %3492, i64* %PC, align 8
  %3493 = inttoptr i64 %3491 to i32*
  store i32 0, i32* %3493, align 4
  %.pre40 = load i64, i64* %PC, align 8
  br label %block_400ebf

block_4014aa:                                     ; preds = %block_401437
  %3494 = add i64 %1717, 7
  store i64 %3494, i64* %PC, align 8
  store i32 0, i32* %1691, align 4
  %.pre73 = load i64, i64* %PC, align 8
  br label %block_4014b1

block_400ca2:                                     ; preds = %block_400c9b, %block_400cac
  %3495 = phi i64 [ %.pre34, %block_400c9b ], [ %3489, %block_400cac ]
  %3496 = load i64, i64* %RBP, align 8
  %3497 = add i64 %3496, -4
  %3498 = add i64 %3495, 4
  store i64 %3498, i64* %PC, align 8
  %3499 = inttoptr i64 %3497 to i32*
  %3500 = load i32, i32* %3499, align 4
  %3501 = add i32 %3500, -16
  %3502 = icmp ult i32 %3500, 16
  %3503 = zext i1 %3502 to i8
  store i8 %3503, i8* %17, align 1, !tbaa !2432
  %3504 = and i32 %3501, 255
  %3505 = tail call i32 @llvm.ctpop.i32(i32 %3504) #8
  %3506 = trunc i32 %3505 to i8
  %3507 = and i8 %3506, 1
  %3508 = xor i8 %3507, 1
  store i8 %3508, i8* %24, align 1, !tbaa !2446
  %3509 = xor i32 %3500, 16
  %3510 = xor i32 %3509, %3501
  %3511 = lshr i32 %3510, 4
  %3512 = trunc i32 %3511 to i8
  %3513 = and i8 %3512, 1
  store i8 %3513, i8* %30, align 1, !tbaa !2447
  %3514 = icmp eq i32 %3501, 0
  %3515 = zext i1 %3514 to i8
  store i8 %3515, i8* %33, align 1, !tbaa !2448
  %3516 = lshr i32 %3501, 31
  %3517 = trunc i32 %3516 to i8
  store i8 %3517, i8* %36, align 1, !tbaa !2449
  %3518 = lshr i32 %3500, 31
  %3519 = xor i32 %3516, %3518
  %3520 = add nuw nsw i32 %3519, %3518
  %3521 = icmp eq i32 %3520, 2
  %3522 = zext i1 %3521 to i8
  store i8 %3522, i8* %42, align 1, !tbaa !2450
  %3523 = icmp ne i8 %3517, 0
  %3524 = xor i1 %3523, %3521
  %.v170 = select i1 %3524, i64 10, i64 58
  %3525 = add i64 %3495, %.v170
  store i64 %3525, i64* %PC, align 8, !tbaa !2428
  br i1 %3524, label %block_400cac, label %block_400cdc

block_4010a1:                                     ; preds = %block_40108d
  %3526 = add i64 %3655, -1168
  store i64 %3526, i64* %RAX, align 8, !tbaa !2428
  %3527 = add i64 %3698, 11
  store i64 %3527, i64* %PC, align 8
  %3528 = load i32, i32* %3663, align 4
  %3529 = sext i32 %3528 to i64
  %3530 = shl nsw i64 %3529, 6
  store i64 %3530, i64* %RCX, align 8, !tbaa !2428
  %3531 = lshr i64 %3529, 57
  %3532 = and i64 %3531, 1
  %3533 = add i64 %3530, %3526
  store i64 %3533, i64* %RAX, align 8, !tbaa !2428
  %3534 = icmp ult i64 %3533, %3526
  %3535 = icmp ult i64 %3533, %3530
  %3536 = or i1 %3534, %3535
  %3537 = zext i1 %3536 to i8
  store i8 %3537, i8* %17, align 1, !tbaa !2432
  %3538 = trunc i64 %3533 to i32
  %3539 = and i32 %3538, 255
  %3540 = tail call i32 @llvm.ctpop.i32(i32 %3539) #8
  %3541 = trunc i32 %3540 to i8
  %3542 = and i8 %3541, 1
  %3543 = xor i8 %3542, 1
  store i8 %3543, i8* %24, align 1, !tbaa !2446
  %3544 = xor i64 %3526, %3533
  %3545 = lshr i64 %3544, 4
  %3546 = trunc i64 %3545 to i8
  %3547 = and i8 %3546, 1
  store i8 %3547, i8* %30, align 1, !tbaa !2447
  %3548 = icmp eq i64 %3533, 0
  %3549 = zext i1 %3548 to i8
  store i8 %3549, i8* %33, align 1, !tbaa !2448
  %3550 = lshr i64 %3533, 63
  %3551 = trunc i64 %3550 to i8
  store i8 %3551, i8* %36, align 1, !tbaa !2449
  %3552 = lshr i64 %3526, 63
  %3553 = xor i64 %3550, %3552
  %3554 = xor i64 %3550, %3532
  %3555 = add nuw nsw i64 %3553, %3554
  %3556 = icmp eq i64 %3555, 2
  %3557 = zext i1 %3556 to i8
  store i8 %3557, i8* %42, align 1, !tbaa !2450
  %3558 = add i64 %3698, 22
  store i64 %3558, i64* %PC, align 8
  %3559 = load i32, i32* %3658, align 4
  %3560 = sext i32 %3559 to i64
  store i64 %3560, i64* %RCX, align 8, !tbaa !2428
  %3561 = shl nsw i64 %3560, 2
  %3562 = add i64 %3561, %3533
  %3563 = add i64 %3698, 25
  store i64 %3563, i64* %PC, align 8
  %3564 = inttoptr i64 %3562 to i32*
  %3565 = load i32, i32* %3564, align 4
  %3566 = zext i32 %3565 to i64
  store i64 %3566, i64* %RDX, align 8, !tbaa !2428
  %3567 = add i64 %3698, 29
  store i64 %3567, i64* %PC, align 8
  %3568 = load i32, i32* %3658, align 4
  %3569 = sext i32 %3568 to i64
  store i64 %3569, i64* %RAX, align 8, !tbaa !2428
  %3570 = shl nsw i64 %3569, 2
  %3571 = add i64 %3655, -2688
  %3572 = add i64 %3571, %3570
  %3573 = add i64 %3698, 36
  store i64 %3573, i64* %PC, align 8
  %3574 = inttoptr i64 %3572 to i32*
  store i32 %3565, i32* %3574, align 4
  %3575 = load i64, i64* %RBP, align 8
  %3576 = add i64 %3575, -4
  %3577 = load i64, i64* %PC, align 8
  %3578 = add i64 %3577, 3
  store i64 %3578, i64* %PC, align 8
  %3579 = inttoptr i64 %3576 to i32*
  %3580 = load i32, i32* %3579, align 4
  %3581 = add i32 %3580, 1
  %3582 = zext i32 %3581 to i64
  store i64 %3582, i64* %RAX, align 8, !tbaa !2428
  %3583 = icmp eq i32 %3580, -1
  %3584 = icmp eq i32 %3581, 0
  %3585 = or i1 %3583, %3584
  %3586 = zext i1 %3585 to i8
  store i8 %3586, i8* %17, align 1, !tbaa !2432
  %3587 = and i32 %3581, 255
  %3588 = tail call i32 @llvm.ctpop.i32(i32 %3587) #8
  %3589 = trunc i32 %3588 to i8
  %3590 = and i8 %3589, 1
  %3591 = xor i8 %3590, 1
  store i8 %3591, i8* %24, align 1, !tbaa !2446
  %3592 = xor i32 %3580, %3581
  %3593 = lshr i32 %3592, 4
  %3594 = trunc i32 %3593 to i8
  %3595 = and i8 %3594, 1
  store i8 %3595, i8* %30, align 1, !tbaa !2447
  %3596 = zext i1 %3584 to i8
  store i8 %3596, i8* %33, align 1, !tbaa !2448
  %3597 = lshr i32 %3581, 31
  %3598 = trunc i32 %3597 to i8
  store i8 %3598, i8* %36, align 1, !tbaa !2449
  %3599 = lshr i32 %3580, 31
  %3600 = xor i32 %3597, %3599
  %3601 = add nuw nsw i32 %3600, %3597
  %3602 = icmp eq i32 %3601, 2
  %3603 = zext i1 %3602 to i8
  store i8 %3603, i8* %42, align 1, !tbaa !2450
  %3604 = add i64 %3577, 9
  store i64 %3604, i64* %PC, align 8
  store i32 %3581, i32* %3579, align 4
  %3605 = load i64, i64* %PC, align 8
  %3606 = add i64 %3605, -65
  store i64 %3606, i64* %PC, align 8, !tbaa !2428
  br label %block_40108d

block_4011d3:                                     ; preds = %block_4010e4
  %3607 = add i64 %3937, -1492
  %3608 = add i64 %3966, 6
  store i64 %3608, i64* %PC, align 8
  %3609 = inttoptr i64 %3607 to i32*
  %3610 = load i32, i32* %3609, align 4
  %3611 = zext i32 %3610 to i64
  store i64 %3611, i64* %RAX, align 8, !tbaa !2428
  %3612 = add i64 %3937, -12
  %3613 = add i64 %3966, 10
  store i64 %3613, i64* %PC, align 8
  %3614 = inttoptr i64 %3612 to i32*
  %3615 = load i32, i32* %3614, align 4
  %3616 = sext i32 %3615 to i64
  store i64 %3616, i64* %RCX, align 8, !tbaa !2428
  %3617 = shl nsw i64 %3616, 2
  %3618 = add i64 %3937, -1328
  %3619 = add i64 %3618, %3617
  %3620 = add i64 %3966, 17
  store i64 %3620, i64* %PC, align 8
  %3621 = inttoptr i64 %3619 to i32*
  %3622 = load i32, i32* %3621, align 4
  %3623 = sub i32 %3610, %3622
  %3624 = icmp ult i32 %3610, %3622
  %3625 = zext i1 %3624 to i8
  store i8 %3625, i8* %17, align 1, !tbaa !2432
  %3626 = and i32 %3623, 255
  %3627 = tail call i32 @llvm.ctpop.i32(i32 %3626) #8
  %3628 = trunc i32 %3627 to i8
  %3629 = and i8 %3628, 1
  %3630 = xor i8 %3629, 1
  store i8 %3630, i8* %24, align 1, !tbaa !2446
  %3631 = xor i32 %3622, %3610
  %3632 = xor i32 %3631, %3623
  %3633 = lshr i32 %3632, 4
  %3634 = trunc i32 %3633 to i8
  %3635 = and i8 %3634, 1
  store i8 %3635, i8* %30, align 1, !tbaa !2447
  %3636 = icmp eq i32 %3623, 0
  %3637 = zext i1 %3636 to i8
  store i8 %3637, i8* %33, align 1, !tbaa !2448
  %3638 = lshr i32 %3623, 31
  %3639 = trunc i32 %3638 to i8
  store i8 %3639, i8* %36, align 1, !tbaa !2449
  %3640 = lshr i32 %3610, 31
  %3641 = lshr i32 %3622, 31
  %3642 = xor i32 %3641, %3640
  %3643 = xor i32 %3638, %3640
  %3644 = add nuw nsw i32 %3643, %3642
  %3645 = icmp eq i32 %3644, 2
  %3646 = zext i1 %3645 to i8
  store i8 %3646, i8* %42, align 1, !tbaa !2450
  %.v138 = select i1 %3636, i64 23, i64 1296
  %3647 = add i64 %3966, %.v138
  %3648 = add i64 %3647, 7
  store i64 %3648, i64* %PC, align 8
  br i1 %3636, label %block_4011ea, label %block_4016e3

block_400c9b:                                     ; preds = %block_400c7a, %block_400c5a
  %3649 = phi i64 [ %.pre33, %block_400c7a ], [ %4062, %block_400c5a ]
  %3650 = load i64, i64* %RBP, align 8
  %3651 = add i64 %3650, -4
  %3652 = add i64 %3649, 7
  store i64 %3652, i64* %PC, align 8
  %3653 = inttoptr i64 %3651 to i32*
  store i32 0, i32* %3653, align 4
  %.pre34 = load i64, i64* %PC, align 8
  br label %block_400ca2

block_40108d:                                     ; preds = %block_401086, %block_4010a1
  %3654 = phi i64 [ %.pre51, %block_401086 ], [ %3606, %block_4010a1 ]
  %3655 = load i64, i64* %RBP, align 8
  %3656 = add i64 %3655, -4
  %3657 = add i64 %3654, 3
  store i64 %3657, i64* %PC, align 8
  %3658 = inttoptr i64 %3656 to i32*
  %3659 = load i32, i32* %3658, align 4
  %3660 = zext i32 %3659 to i64
  store i64 %3660, i64* %RAX, align 8, !tbaa !2428
  %3661 = add i64 %3655, -12
  %3662 = add i64 %3654, 7
  store i64 %3662, i64* %PC, align 8
  %3663 = inttoptr i64 %3661 to i32*
  %3664 = load i32, i32* %3663, align 4
  %3665 = sext i32 %3664 to i64
  store i64 %3665, i64* %RCX, align 8, !tbaa !2428
  %3666 = shl nsw i64 %3665, 2
  %3667 = add i64 %3655, -1328
  %3668 = add i64 %3667, %3666
  %3669 = add i64 %3654, 14
  store i64 %3669, i64* %PC, align 8
  %3670 = inttoptr i64 %3668 to i32*
  %3671 = load i32, i32* %3670, align 4
  %3672 = sub i32 %3659, %3671
  %3673 = icmp ult i32 %3659, %3671
  %3674 = zext i1 %3673 to i8
  store i8 %3674, i8* %17, align 1, !tbaa !2432
  %3675 = and i32 %3672, 255
  %3676 = tail call i32 @llvm.ctpop.i32(i32 %3675) #8
  %3677 = trunc i32 %3676 to i8
  %3678 = and i8 %3677, 1
  %3679 = xor i8 %3678, 1
  store i8 %3679, i8* %24, align 1, !tbaa !2446
  %3680 = xor i32 %3671, %3659
  %3681 = xor i32 %3680, %3672
  %3682 = lshr i32 %3681, 4
  %3683 = trunc i32 %3682 to i8
  %3684 = and i8 %3683, 1
  store i8 %3684, i8* %30, align 1, !tbaa !2447
  %3685 = icmp eq i32 %3672, 0
  %3686 = zext i1 %3685 to i8
  store i8 %3686, i8* %33, align 1, !tbaa !2448
  %3687 = lshr i32 %3672, 31
  %3688 = trunc i32 %3687 to i8
  store i8 %3688, i8* %36, align 1, !tbaa !2449
  %3689 = lshr i32 %3659, 31
  %3690 = lshr i32 %3671, 31
  %3691 = xor i32 %3690, %3689
  %3692 = xor i32 %3687, %3689
  %3693 = add nuw nsw i32 %3692, %3691
  %3694 = icmp eq i32 %3693, 2
  %3695 = zext i1 %3694 to i8
  store i8 %3695, i8* %42, align 1, !tbaa !2450
  %3696 = icmp ne i8 %3688, 0
  %3697 = xor i1 %3696, %3694
  %.demorgan130 = or i1 %3685, %3697
  %.v131 = select i1 %.demorgan130, i64 20, i64 70
  %3698 = add i64 %3654, %.v131
  store i64 %3698, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan130, label %block_4010a1, label %block_4010d3

block_401488:                                     ; preds = %block_401444
  %3699 = add i64 %4508, 15
  store i64 %3699, i64* %PC, align 8
  %3700 = inttoptr i64 %4513 to i32*
  store i32 0, i32* %3700, align 4
  %.pre72 = load i64, i64* %PC, align 8
  br label %block_401497

block_400e7e:                                     ; preds = %block_400e67
  %3701 = add i64 %3916, -1488
  %3702 = add i64 %3886, 17
  store i64 %3702, i64* %PC, align 8
  %3703 = inttoptr i64 %3701 to i32*
  %3704 = load i32, i32* %3703, align 4
  %3705 = sext i32 %3704 to i64
  store i64 %3705, i64* %RCX, align 8, !tbaa !2428
  %3706 = shl nsw i64 %3705, 2
  %3707 = add i64 %3706, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %3708 = add i64 %3886, 24
  store i64 %3708, i64* %PC, align 8
  %3709 = inttoptr i64 %3707 to i32*
  %3710 = load i32, i32* %3709, align 4
  %3711 = zext i32 %3710 to i64
  store i64 %3711, i64* %RAX, align 8, !tbaa !2428
  %3712 = add i64 %3914, -12
  %3713 = add i64 %3886, 27
  store i64 %3713, i64* %PC, align 8
  %3714 = inttoptr i64 %3712 to i32*
  %3715 = load i32, i32* %3714, align 4
  %3716 = add i32 %3715, 1
  %3717 = zext i32 %3716 to i64
  store i64 %3717, i64* %RDX, align 8, !tbaa !2428
  %3718 = icmp eq i32 %3715, -1
  %3719 = icmp eq i32 %3716, 0
  %3720 = or i1 %3718, %3719
  %3721 = zext i1 %3720 to i8
  store i8 %3721, i8* %17, align 1, !tbaa !2432
  %3722 = and i32 %3716, 255
  %3723 = tail call i32 @llvm.ctpop.i32(i32 %3722) #8
  %3724 = trunc i32 %3723 to i8
  %3725 = and i8 %3724, 1
  %3726 = xor i8 %3725, 1
  store i8 %3726, i8* %24, align 1, !tbaa !2446
  %3727 = xor i32 %3715, %3716
  %3728 = lshr i32 %3727, 4
  %3729 = trunc i32 %3728 to i8
  %3730 = and i8 %3729, 1
  store i8 %3730, i8* %30, align 1, !tbaa !2447
  %3731 = zext i1 %3719 to i8
  store i8 %3731, i8* %33, align 1, !tbaa !2448
  %3732 = lshr i32 %3716, 31
  %3733 = trunc i32 %3732 to i8
  store i8 %3733, i8* %36, align 1, !tbaa !2449
  %3734 = lshr i32 %3715, 31
  %3735 = xor i32 %3732, %3734
  %3736 = add nuw nsw i32 %3735, %3732
  %3737 = icmp eq i32 %3736, 2
  %3738 = zext i1 %3737 to i8
  store i8 %3738, i8* %42, align 1, !tbaa !2450
  %3739 = sext i32 %3716 to i64
  store i64 %3739, i64* %RCX, align 8, !tbaa !2428
  %3740 = shl nsw i64 %3739, 2
  %3741 = add i64 %3914, -1248
  %3742 = add i64 %3741, %3740
  %3743 = add i64 %3886, 40
  store i64 %3743, i64* %PC, align 8
  %3744 = inttoptr i64 %3742 to i32*
  store i32 %3710, i32* %3744, align 4
  %3745 = load i64, i64* %PC, align 8
  %3746 = add i64 %3745, 25
  store i64 %3746, i64* %PC, align 8, !tbaa !2428
  br label %block_400ebf

block_401086:                                     ; preds = %block_40102e
  %3747 = add i64 %5711, 7
  store i64 %3747, i64* %PC, align 8
  store i32 1, i32* %5671, align 4
  %.pre51 = load i64, i64* %PC, align 8
  br label %block_40108d

block_40127b:                                     ; preds = %block_401217, %block_401205
  %3748 = phi i64 [ %6217, %block_401205 ], [ %5999, %block_401217 ]
  %3749 = phi i64 [ %1797, %block_401205 ], [ %.pre62, %block_401217 ]
  %3750 = add i64 %3749, -4
  %3751 = add i64 %3748, 4
  store i64 %3751, i64* %PC, align 8
  %3752 = inttoptr i64 %3750 to i32*
  %3753 = load i32, i32* %3752, align 4
  %3754 = sext i32 %3753 to i64
  store i64 %3754, i64* %RAX, align 8, !tbaa !2428
  %3755 = shl nsw i64 %3754, 2
  %3756 = add i64 %3749, -1488
  %3757 = add i64 %3756, %3755
  %3758 = add i64 %3748, 12
  store i64 %3758, i64* %PC, align 8
  %3759 = inttoptr i64 %3757 to i32*
  %3760 = load i32, i32* %3759, align 4
  %3761 = add i32 %3760, 1
  %3762 = icmp ne i32 %3760, -1
  %3763 = zext i1 %3762 to i8
  store i8 %3763, i8* %17, align 1, !tbaa !2432
  %3764 = and i32 %3761, 255
  %3765 = tail call i32 @llvm.ctpop.i32(i32 %3764) #8
  %3766 = trunc i32 %3765 to i8
  %3767 = and i8 %3766, 1
  %3768 = xor i8 %3767, 1
  store i8 %3768, i8* %24, align 1, !tbaa !2446
  %3769 = xor i32 %3760, 16
  %3770 = xor i32 %3761, %3769
  %3771 = lshr i32 %3770, 4
  %3772 = trunc i32 %3771 to i8
  %3773 = and i8 %3772, 1
  store i8 %3773, i8* %30, align 1, !tbaa !2447
  %3774 = icmp eq i32 %3761, 0
  %3775 = zext i1 %3774 to i8
  store i8 %3775, i8* %33, align 1, !tbaa !2448
  %3776 = lshr i32 %3761, 31
  %3777 = trunc i32 %3776 to i8
  store i8 %3777, i8* %36, align 1, !tbaa !2449
  %3778 = lshr i32 %3760, 31
  %3779 = xor i32 %3778, 1
  %3780 = xor i32 %3776, %3778
  %3781 = add nuw nsw i32 %3780, %3779
  %3782 = icmp eq i32 %3781, 2
  %3783 = zext i1 %3782 to i8
  store i8 %3783, i8* %42, align 1, !tbaa !2450
  %.v146 = select i1 %3774, i64 85, i64 18
  %3784 = add i64 %3748, %.v146
  store i64 %3784, i64* %PC, align 8, !tbaa !2428
  br i1 %3774, label %block_4012d0, label %block_40128d

block_400ce3:                                     ; preds = %block_400cdc, %block_400d91
  %3785 = phi i64 [ %.pre35, %block_400cdc ], [ %2811, %block_400d91 ]
  %MEMORY.35 = phi %struct.Memory* [ %MEMORY.30, %block_400cdc ], [ %MEMORY.22, %block_400d91 ]
  %3786 = load i64, i64* %RBP, align 8
  %3787 = add i64 %3786, -4
  %3788 = add i64 %3785, 3
  store i64 %3788, i64* %PC, align 8
  %3789 = inttoptr i64 %3787 to i32*
  %3790 = load i32, i32* %3789, align 4
  %3791 = zext i32 %3790 to i64
  store i64 %3791, i64* %RAX, align 8, !tbaa !2428
  %3792 = add i64 %3786, -16
  %3793 = add i64 %3785, 7
  store i64 %3793, i64* %PC, align 8
  %3794 = inttoptr i64 %3792 to i32*
  %3795 = load i32, i32* %3794, align 4
  %3796 = sext i32 %3795 to i64
  store i64 %3796, i64* %RCX, align 8, !tbaa !2428
  %3797 = shl nsw i64 %3796, 2
  %3798 = add i64 %3786, -1328
  %3799 = add i64 %3798, %3797
  %3800 = add i64 %3785, 14
  store i64 %3800, i64* %PC, align 8
  %3801 = inttoptr i64 %3799 to i32*
  %3802 = load i32, i32* %3801, align 4
  %3803 = sub i32 %3790, %3802
  %3804 = icmp ult i32 %3790, %3802
  %3805 = zext i1 %3804 to i8
  store i8 %3805, i8* %17, align 1, !tbaa !2432
  %3806 = and i32 %3803, 255
  %3807 = tail call i32 @llvm.ctpop.i32(i32 %3806) #8
  %3808 = trunc i32 %3807 to i8
  %3809 = and i8 %3808, 1
  %3810 = xor i8 %3809, 1
  store i8 %3810, i8* %24, align 1, !tbaa !2446
  %3811 = xor i32 %3802, %3790
  %3812 = xor i32 %3811, %3803
  %3813 = lshr i32 %3812, 4
  %3814 = trunc i32 %3813 to i8
  %3815 = and i8 %3814, 1
  store i8 %3815, i8* %30, align 1, !tbaa !2447
  %3816 = icmp eq i32 %3803, 0
  %3817 = zext i1 %3816 to i8
  store i8 %3817, i8* %33, align 1, !tbaa !2448
  %3818 = lshr i32 %3803, 31
  %3819 = trunc i32 %3818 to i8
  store i8 %3819, i8* %36, align 1, !tbaa !2449
  %3820 = lshr i32 %3790, 31
  %3821 = lshr i32 %3802, 31
  %3822 = xor i32 %3821, %3820
  %3823 = xor i32 %3818, %3820
  %3824 = add nuw nsw i32 %3823, %3822
  %3825 = icmp eq i32 %3824, 2
  %3826 = zext i1 %3825 to i8
  store i8 %3826, i8* %42, align 1, !tbaa !2450
  %3827 = icmp ne i8 %3819, 0
  %3828 = xor i1 %3827, %3825
  %.demorgan171 = or i1 %3816, %3828
  %.v172 = select i1 %.demorgan171, i64 20, i64 193
  %3829 = add i64 %3785, %.v172
  store i64 %3829, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan171, label %block_400cf7, label %block_400da4

block_401753:                                     ; preds = %block_4016de, %block_40174e
  %.sink100 = phi i64 [ %2946, %block_4016de ], [ %1547, %block_40174e ]
  %MEMORY.36 = phi %struct.Memory* [ %MEMORY.45, %block_4016de ], [ %MEMORY.37, %block_40174e ]
  store i64 %.sink100, i64* %PC, align 8, !tbaa !2428
  %3830 = add i64 %.sink100, 117
  br label %block_4017c8

block_400e67:                                     ; preds = %block_400e3a
  %3831 = add i64 %4769, 3
  store i64 %3831, i64* %PC, align 8
  %3832 = load i32, i32* %4743, align 4
  %3833 = add i32 %3832, 1
  %3834 = zext i32 %3833 to i64
  store i64 %3834, i64* %RAX, align 8, !tbaa !2428
  %3835 = icmp eq i32 %3832, -1
  %3836 = icmp eq i32 %3833, 0
  %3837 = or i1 %3835, %3836
  %3838 = zext i1 %3837 to i8
  store i8 %3838, i8* %17, align 1, !tbaa !2432
  %3839 = and i32 %3833, 255
  %3840 = tail call i32 @llvm.ctpop.i32(i32 %3839) #8
  %3841 = trunc i32 %3840 to i8
  %3842 = and i8 %3841, 1
  %3843 = xor i8 %3842, 1
  store i8 %3843, i8* %24, align 1, !tbaa !2446
  %3844 = xor i32 %3832, %3833
  %3845 = lshr i32 %3844, 4
  %3846 = trunc i32 %3845 to i8
  %3847 = and i8 %3846, 1
  store i8 %3847, i8* %30, align 1, !tbaa !2447
  %3848 = zext i1 %3836 to i8
  store i8 %3848, i8* %33, align 1, !tbaa !2448
  %3849 = lshr i32 %3833, 31
  %3850 = trunc i32 %3849 to i8
  store i8 %3850, i8* %36, align 1, !tbaa !2449
  %3851 = lshr i32 %3832, 31
  %3852 = xor i32 %3849, %3851
  %3853 = add nuw nsw i32 %3852, %3849
  %3854 = icmp eq i32 %3853, 2
  %3855 = zext i1 %3854 to i8
  store i8 %3855, i8* %42, align 1, !tbaa !2450
  %3856 = sext i32 %3833 to i64
  store i64 %3856, i64* %RCX, align 8, !tbaa !2428
  %3857 = shl nsw i64 %3856, 2
  %3858 = add i64 %4739, -1488
  %3859 = add i64 %3858, %3857
  %3860 = add i64 %4769, 17
  store i64 %3860, i64* %PC, align 8
  %3861 = inttoptr i64 %3859 to i32*
  %3862 = load i32, i32* %3861, align 4
  %3863 = add i32 %3862, 1
  %3864 = icmp ne i32 %3862, -1
  %3865 = zext i1 %3864 to i8
  store i8 %3865, i8* %17, align 1, !tbaa !2432
  %3866 = and i32 %3863, 255
  %3867 = tail call i32 @llvm.ctpop.i32(i32 %3866) #8
  %3868 = trunc i32 %3867 to i8
  %3869 = and i8 %3868, 1
  %3870 = xor i8 %3869, 1
  store i8 %3870, i8* %24, align 1, !tbaa !2446
  %3871 = xor i32 %3862, 16
  %3872 = xor i32 %3863, %3871
  %3873 = lshr i32 %3872, 4
  %3874 = trunc i32 %3873 to i8
  %3875 = and i8 %3874, 1
  store i8 %3875, i8* %30, align 1, !tbaa !2447
  %3876 = icmp eq i32 %3863, 0
  %3877 = zext i1 %3876 to i8
  store i8 %3877, i8* %33, align 1, !tbaa !2448
  %3878 = lshr i32 %3863, 31
  %3879 = trunc i32 %3878 to i8
  store i8 %3879, i8* %36, align 1, !tbaa !2449
  %3880 = lshr i32 %3862, 31
  %3881 = xor i32 %3880, 1
  %3882 = xor i32 %3878, %3880
  %3883 = add nuw nsw i32 %3882, %3881
  %3884 = icmp eq i32 %3883, 2
  %3885 = zext i1 %3884 to i8
  store i8 %3885, i8* %42, align 1, !tbaa !2450
  %.v119 = select i1 %3876, i64 68, i64 23
  %3886 = add i64 %4769, %.v119
  %3887 = add i64 %3886, 3
  store i64 %3887, i64* %PC, align 8
  %3888 = load i32, i32* %4743, align 4
  %3889 = add i32 %3888, 1
  %3890 = zext i32 %3889 to i64
  store i64 %3890, i64* %RAX, align 8, !tbaa !2428
  %3891 = icmp eq i32 %3888, -1
  %3892 = icmp eq i32 %3889, 0
  %3893 = or i1 %3891, %3892
  %3894 = zext i1 %3893 to i8
  store i8 %3894, i8* %17, align 1, !tbaa !2432
  %3895 = and i32 %3889, 255
  %3896 = tail call i32 @llvm.ctpop.i32(i32 %3895) #8
  %3897 = trunc i32 %3896 to i8
  %3898 = and i8 %3897, 1
  %3899 = xor i8 %3898, 1
  store i8 %3899, i8* %24, align 1, !tbaa !2446
  %3900 = xor i32 %3888, %3889
  %3901 = lshr i32 %3900, 4
  %3902 = trunc i32 %3901 to i8
  %3903 = and i8 %3902, 1
  store i8 %3903, i8* %30, align 1, !tbaa !2447
  %3904 = zext i1 %3892 to i8
  store i8 %3904, i8* %33, align 1, !tbaa !2448
  %3905 = lshr i32 %3889, 31
  %3906 = trunc i32 %3905 to i8
  store i8 %3906, i8* %36, align 1, !tbaa !2449
  %3907 = lshr i32 %3888, 31
  %3908 = xor i32 %3905, %3907
  %3909 = add nuw nsw i32 %3908, %3905
  %3910 = icmp eq i32 %3909, 2
  %3911 = zext i1 %3910 to i8
  store i8 %3911, i8* %42, align 1, !tbaa !2450
  %3912 = add i64 %3886, 9
  store i64 %3912, i64* %PC, align 8
  %3913 = sext i32 %3889 to i64
  store i64 %3913, i64* %RCX, align 8, !tbaa !2428
  %3914 = load i64, i64* %RBP, align 8
  %3915 = shl nsw i64 %3913, 2
  %3916 = add i64 %3915, %3914
  br i1 %3876, label %block_400eab, label %block_400e7e

block_401465:                                     ; preds = %block_401444
  %3917 = add i64 %4508, 12
  store i64 %3917, i64* %PC, align 8
  %3918 = inttoptr i64 %4513 to i32*
  %3919 = load i32, i32* %3918, align 4
  %3920 = sext i32 %3919 to i64
  store i64 %3920, i64* %RAX, align 8, !tbaa !2428
  %3921 = shl nsw i64 %3920, 2
  %3922 = add i64 %3921, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %3923 = add i64 %4508, 19
  store i64 %3923, i64* %PC, align 8
  %3924 = inttoptr i64 %3922 to i32*
  %3925 = load i32, i32* %3924, align 4
  %3926 = zext i32 %3925 to i64
  store i64 %3926, i64* %RCX, align 8, !tbaa !2428
  %3927 = add i64 %4508, 23
  store i64 %3927, i64* %PC, align 8
  %3928 = load i32, i32* %4477, align 4
  %3929 = sext i32 %3928 to i64
  store i64 %3929, i64* %RAX, align 8, !tbaa !2428
  %3930 = shl nsw i64 %3929, 2
  %3931 = add i64 %3930, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %3932 = add i64 %4508, 30
  store i64 %3932, i64* %PC, align 8
  %3933 = inttoptr i64 %3931 to i32*
  store i32 %3925, i32* %3933, align 4
  %3934 = load i64, i64* %PC, align 8
  %3935 = add i64 %3934, 20
  store i64 %3935, i64* %PC, align 8, !tbaa !2428
  br label %block_401497

block_4010e4:                                     ; preds = %block_4011c0, %block_4010d3
  %3936 = phi i64 [ %.pre52, %block_4010d3 ], [ %4125, %block_4011c0 ]
  %MEMORY.37 = phi %struct.Memory* [ %MEMORY.40, %block_4010d3 ], [ %MEMORY.23, %block_4011c0 ]
  %3937 = load i64, i64* %RBP, align 8
  %3938 = add i64 %3937, -4
  %3939 = add i64 %3936, 7
  store i64 %3939, i64* %PC, align 8
  %3940 = inttoptr i64 %3938 to i32*
  %3941 = load i32, i32* %3940, align 4
  %3942 = add i32 %3941, -255
  %3943 = icmp ult i32 %3941, 255
  %3944 = zext i1 %3943 to i8
  store i8 %3944, i8* %17, align 1, !tbaa !2432
  %3945 = and i32 %3942, 255
  %3946 = tail call i32 @llvm.ctpop.i32(i32 %3945) #8
  %3947 = trunc i32 %3946 to i8
  %3948 = and i8 %3947, 1
  %3949 = xor i8 %3948, 1
  store i8 %3949, i8* %24, align 1, !tbaa !2446
  %3950 = xor i32 %3941, 16
  %3951 = xor i32 %3950, %3942
  %3952 = lshr i32 %3951, 4
  %3953 = trunc i32 %3952 to i8
  %3954 = and i8 %3953, 1
  store i8 %3954, i8* %30, align 1, !tbaa !2447
  %3955 = icmp eq i32 %3942, 0
  %3956 = zext i1 %3955 to i8
  store i8 %3956, i8* %33, align 1, !tbaa !2448
  %3957 = lshr i32 %3942, 31
  %3958 = trunc i32 %3957 to i8
  store i8 %3958, i8* %36, align 1, !tbaa !2449
  %3959 = lshr i32 %3941, 31
  %3960 = xor i32 %3957, %3959
  %3961 = add nuw nsw i32 %3960, %3959
  %3962 = icmp eq i32 %3961, 2
  %3963 = zext i1 %3962 to i8
  store i8 %3963, i8* %42, align 1, !tbaa !2450
  %3964 = icmp ne i8 %3958, 0
  %3965 = xor i1 %3964, %3962
  %.demorgan132 = or i1 %3955, %3965
  %.v133 = select i1 %.demorgan132, i64 13, i64 239
  %3966 = add i64 %3936, %.v133
  store i64 %3966, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan132, label %block_4010f1, label %block_4011d3

block_400a5e:                                     ; preds = %block_400a54
  %3967 = add i64 %4093, 4
  store i64 %3967, i64* %PC, align 8
  %3968 = load i32, i32* %4067, align 4
  %3969 = sext i32 %3968 to i64
  store i64 %3969, i64* %RAX, align 8, !tbaa !2428
  %3970 = shl nsw i64 %3969, 2
  %3971 = add i64 %4064, -1168
  %3972 = add i64 %3971, %3970
  %3973 = add i64 %4093, 15
  store i64 %3973, i64* %PC, align 8
  %3974 = inttoptr i64 %3972 to i32*
  store i32 -1, i32* %3974, align 4
  %3975 = load i64, i64* %RBP, align 8
  %3976 = add i64 %3975, -4
  %3977 = load i64, i64* %PC, align 8
  %3978 = add i64 %3977, 4
  store i64 %3978, i64* %PC, align 8
  %3979 = inttoptr i64 %3976 to i32*
  %3980 = load i32, i32* %3979, align 4
  %3981 = sext i32 %3980 to i64
  store i64 %3981, i64* %RAX, align 8, !tbaa !2428
  %3982 = shl nsw i64 %3981, 2
  %3983 = add i64 %3975, -1104
  %3984 = add i64 %3983, %3982
  %3985 = add i64 %3977, 15
  store i64 %3985, i64* %PC, align 8
  %3986 = inttoptr i64 %3984 to i32*
  store i32 0, i32* %3986, align 4
  %3987 = load i64, i64* %RBP, align 8
  %3988 = add i64 %3987, -4
  %3989 = load i64, i64* %PC, align 8
  %3990 = add i64 %3989, 3
  store i64 %3990, i64* %PC, align 8
  %3991 = inttoptr i64 %3988 to i32*
  %3992 = load i32, i32* %3991, align 4
  %3993 = add i32 %3992, 1
  %3994 = zext i32 %3993 to i64
  store i64 %3994, i64* %RAX, align 8, !tbaa !2428
  %3995 = icmp eq i32 %3992, -1
  %3996 = icmp eq i32 %3993, 0
  %3997 = or i1 %3995, %3996
  %3998 = zext i1 %3997 to i8
  store i8 %3998, i8* %17, align 1, !tbaa !2432
  %3999 = and i32 %3993, 255
  %4000 = tail call i32 @llvm.ctpop.i32(i32 %3999) #8
  %4001 = trunc i32 %4000 to i8
  %4002 = and i8 %4001, 1
  %4003 = xor i8 %4002, 1
  store i8 %4003, i8* %24, align 1, !tbaa !2446
  %4004 = xor i32 %3992, %3993
  %4005 = lshr i32 %4004, 4
  %4006 = trunc i32 %4005 to i8
  %4007 = and i8 %4006, 1
  store i8 %4007, i8* %30, align 1, !tbaa !2447
  %4008 = zext i1 %3996 to i8
  store i8 %4008, i8* %33, align 1, !tbaa !2448
  %4009 = lshr i32 %3993, 31
  %4010 = trunc i32 %4009 to i8
  store i8 %4010, i8* %36, align 1, !tbaa !2449
  %4011 = lshr i32 %3992, 31
  %4012 = xor i32 %4009, %4011
  %4013 = add nuw nsw i32 %4012, %4009
  %4014 = icmp eq i32 %4013, 2
  %4015 = zext i1 %4014 to i8
  store i8 %4015, i8* %42, align 1, !tbaa !2450
  %4016 = add i64 %3989, 9
  store i64 %4016, i64* %PC, align 8
  store i32 %3993, i32* %3991, align 4
  %4017 = load i64, i64* %PC, align 8
  %4018 = add i64 %4017, -49
  store i64 %4018, i64* %PC, align 8, !tbaa !2428
  br label %block_400a54

block_400c5a:                                     ; preds = %block_400c36
  %4019 = add i64 %5458, -12
  %4020 = add i64 %5457, 4
  store i64 %4020, i64* %PC, align 8
  %4021 = inttoptr i64 %4019 to i32*
  %4022 = load i32, i32* %4021, align 4
  %4023 = sext i32 %4022 to i64
  store i64 %4023, i64* %RAX, align 8, !tbaa !2428
  %4024 = shl nsw i64 %4023, 2
  %4025 = add i64 %5458, -1328
  %4026 = add i64 %4025, %4024
  %4027 = add i64 %5457, 11
  store i64 %4027, i64* %PC, align 8
  %4028 = inttoptr i64 %4026 to i32*
  %4029 = load i32, i32* %4028, align 4
  %4030 = zext i32 %4029 to i64
  store i64 %4030, i64* %RCX, align 8, !tbaa !2428
  %4031 = add i64 %5457, 14
  store i64 %4031, i64* %PC, align 8
  %4032 = load i32, i32* %4021, align 4
  %4033 = add i32 %4032, 1
  %4034 = zext i32 %4033 to i64
  store i64 %4034, i64* %RDX, align 8, !tbaa !2428
  %4035 = icmp eq i32 %4032, -1
  %4036 = icmp eq i32 %4033, 0
  %4037 = or i1 %4035, %4036
  %4038 = zext i1 %4037 to i8
  store i8 %4038, i8* %17, align 1, !tbaa !2432
  %4039 = and i32 %4033, 255
  %4040 = tail call i32 @llvm.ctpop.i32(i32 %4039) #8
  %4041 = trunc i32 %4040 to i8
  %4042 = and i8 %4041, 1
  %4043 = xor i8 %4042, 1
  store i8 %4043, i8* %24, align 1, !tbaa !2446
  %4044 = xor i32 %4032, %4033
  %4045 = lshr i32 %4044, 4
  %4046 = trunc i32 %4045 to i8
  %4047 = and i8 %4046, 1
  store i8 %4047, i8* %30, align 1, !tbaa !2447
  %4048 = zext i1 %4036 to i8
  store i8 %4048, i8* %33, align 1, !tbaa !2448
  %4049 = lshr i32 %4033, 31
  %4050 = trunc i32 %4049 to i8
  store i8 %4050, i8* %36, align 1, !tbaa !2449
  %4051 = lshr i32 %4032, 31
  %4052 = xor i32 %4049, %4051
  %4053 = add nuw nsw i32 %4052, %4049
  %4054 = icmp eq i32 %4053, 2
  %4055 = zext i1 %4054 to i8
  store i8 %4055, i8* %42, align 1, !tbaa !2450
  %4056 = sext i32 %4033 to i64
  store i64 %4056, i64* %RAX, align 8, !tbaa !2428
  %4057 = shl nsw i64 %4056, 2
  %4058 = add i64 %4025, %4057
  %4059 = add i64 %5457, 27
  store i64 %4059, i64* %PC, align 8
  %4060 = inttoptr i64 %4058 to i32*
  store i32 %4029, i32* %4060, align 4
  %4061 = load i64, i64* %PC, align 8
  %4062 = add i64 %4061, 38
  store i64 %4062, i64* %PC, align 8, !tbaa !2428
  br label %block_400c9b

block_400a54:                                     ; preds = %block_400a23, %block_400a5e
  %4063 = phi i64 [ %.pre23, %block_400a23 ], [ %4018, %block_400a5e ]
  %4064 = load i64, i64* %RBP, align 8
  %4065 = add i64 %4064, -4
  %4066 = add i64 %4063, 4
  store i64 %4066, i64* %PC, align 8
  %4067 = inttoptr i64 %4065 to i32*
  %4068 = load i32, i32* %4067, align 4
  %4069 = add i32 %4068, -16
  %4070 = icmp ult i32 %4068, 16
  %4071 = zext i1 %4070 to i8
  store i8 %4071, i8* %17, align 1, !tbaa !2432
  %4072 = and i32 %4069, 255
  %4073 = tail call i32 @llvm.ctpop.i32(i32 %4072) #8
  %4074 = trunc i32 %4073 to i8
  %4075 = and i8 %4074, 1
  %4076 = xor i8 %4075, 1
  store i8 %4076, i8* %24, align 1, !tbaa !2446
  %4077 = xor i32 %4068, 16
  %4078 = xor i32 %4077, %4069
  %4079 = lshr i32 %4078, 4
  %4080 = trunc i32 %4079 to i8
  %4081 = and i8 %4080, 1
  store i8 %4081, i8* %30, align 1, !tbaa !2447
  %4082 = icmp eq i32 %4069, 0
  %4083 = zext i1 %4082 to i8
  store i8 %4083, i8* %33, align 1, !tbaa !2448
  %4084 = lshr i32 %4069, 31
  %4085 = trunc i32 %4084 to i8
  store i8 %4085, i8* %36, align 1, !tbaa !2449
  %4086 = lshr i32 %4068, 31
  %4087 = xor i32 %4084, %4086
  %4088 = add nuw nsw i32 %4087, %4086
  %4089 = icmp eq i32 %4088, 2
  %4090 = zext i1 %4089 to i8
  store i8 %4090, i8* %42, align 1, !tbaa !2450
  %4091 = icmp ne i8 %4085, 0
  %4092 = xor i1 %4091, %4089
  %.v114 = select i1 %4092, i64 10, i64 54
  %4093 = add i64 %4063, %.v114
  store i64 %4093, i64* %PC, align 8, !tbaa !2428
  br i1 %4092, label %block_400a5e, label %block_400a8a

block_4011c0:                                     ; preds = %block_401180, %block_40118a
  %4094 = phi i64 [ %2902, %block_401180 ], [ %.pre60, %block_40118a ]
  %4095 = phi i64 [ %1315, %block_401180 ], [ %.pre59, %block_40118a ]
  %4096 = add i64 %4094, -4
  %4097 = add i64 %4095, 8
  store i64 %4097, i64* %PC, align 8
  %4098 = inttoptr i64 %4096 to i32*
  %4099 = load i32, i32* %4098, align 4
  %4100 = add i32 %4099, 1
  %4101 = zext i32 %4100 to i64
  store i64 %4101, i64* %RAX, align 8, !tbaa !2428
  %4102 = icmp eq i32 %4099, -1
  %4103 = icmp eq i32 %4100, 0
  %4104 = or i1 %4102, %4103
  %4105 = zext i1 %4104 to i8
  store i8 %4105, i8* %17, align 1, !tbaa !2432
  %4106 = and i32 %4100, 255
  %4107 = tail call i32 @llvm.ctpop.i32(i32 %4106) #8
  %4108 = trunc i32 %4107 to i8
  %4109 = and i8 %4108, 1
  %4110 = xor i8 %4109, 1
  store i8 %4110, i8* %24, align 1, !tbaa !2446
  %4111 = xor i32 %4099, %4100
  %4112 = lshr i32 %4111, 4
  %4113 = trunc i32 %4112 to i8
  %4114 = and i8 %4113, 1
  store i8 %4114, i8* %30, align 1, !tbaa !2447
  %4115 = zext i1 %4103 to i8
  store i8 %4115, i8* %33, align 1, !tbaa !2448
  %4116 = lshr i32 %4100, 31
  %4117 = trunc i32 %4116 to i8
  store i8 %4117, i8* %36, align 1, !tbaa !2449
  %4118 = lshr i32 %4099, 31
  %4119 = xor i32 %4116, %4118
  %4120 = add nuw nsw i32 %4119, %4116
  %4121 = icmp eq i32 %4120, 2
  %4122 = zext i1 %4121 to i8
  store i8 %4122, i8* %42, align 1, !tbaa !2450
  %4123 = add i64 %4095, 14
  store i64 %4123, i64* %PC, align 8
  store i32 %4100, i32* %4098, align 4
  %4124 = load i64, i64* %PC, align 8
  %4125 = add i64 %4124, -234
  store i64 %4125, i64* %PC, align 8, !tbaa !2428
  br label %block_4010e4

block_400fcb:                                     ; preds = %block_400e3a, %block_400fa3
  %4126 = phi i64 [ %4739, %block_400e3a ], [ %.pre48, %block_400fa3 ]
  %4127 = phi i64 [ %4769, %block_400e3a ], [ %.pre47, %block_400fa3 ]
  %MEMORY.40 = phi %struct.Memory* [ %MEMORY.43, %block_400e3a ], [ %MEMORY.27, %block_400fa3 ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 1, i8* %24, align 1, !tbaa !2446
  store i8 1, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  store i8 0, i8* %30, align 1, !tbaa !2447
  store i8 0, i8* %CL, align 1, !tbaa !2451
  %4128 = add i64 %4126, -12
  %4129 = add i64 %4127, 13
  store i64 %4129, i64* %PC, align 8
  %4130 = inttoptr i64 %4128 to i32*
  %4131 = load i32, i32* %4130, align 4
  %4132 = add i32 %4131, -16
  %4133 = icmp ult i32 %4131, 16
  %4134 = zext i1 %4133 to i8
  store i8 %4134, i8* %17, align 1, !tbaa !2432
  %4135 = and i32 %4132, 255
  %4136 = tail call i32 @llvm.ctpop.i32(i32 %4135) #8
  %4137 = trunc i32 %4136 to i8
  %4138 = and i8 %4137, 1
  %4139 = xor i8 %4138, 1
  store i8 %4139, i8* %24, align 1, !tbaa !2446
  %4140 = xor i32 %4131, 16
  %4141 = xor i32 %4140, %4132
  %4142 = lshr i32 %4141, 4
  %4143 = trunc i32 %4142 to i8
  %4144 = and i8 %4143, 1
  store i8 %4144, i8* %30, align 1, !tbaa !2447
  %4145 = icmp eq i32 %4132, 0
  %4146 = zext i1 %4145 to i8
  store i8 %4146, i8* %33, align 1, !tbaa !2448
  %4147 = lshr i32 %4132, 31
  %4148 = trunc i32 %4147 to i8
  store i8 %4148, i8* %36, align 1, !tbaa !2449
  %4149 = lshr i32 %4131, 31
  %4150 = xor i32 %4147, %4149
  %4151 = add nuw nsw i32 %4150, %4149
  %4152 = icmp eq i32 %4151, 2
  %4153 = zext i1 %4152 to i8
  store i8 %4153, i8* %42, align 1, !tbaa !2450
  %4154 = add i64 %4126, -2709
  %4155 = add i64 %4127, 19
  store i64 %4155, i64* %PC, align 8
  %4156 = inttoptr i64 %4154 to i8*
  store i8 0, i8* %4156, align 1
  %4157 = load i64, i64* %PC, align 8
  %4158 = load i8, i8* %36, align 1, !tbaa !2449
  %4159 = icmp ne i8 %4158, 0
  %4160 = load i8, i8* %42, align 1, !tbaa !2450
  %4161 = icmp ne i8 %4160, 0
  %4162 = xor i1 %4159, %4161
  %.v124 = select i1 %4162, i64 6, i64 32
  %4163 = add i64 %4157, %.v124
  store i64 %4163, i64* %PC, align 8, !tbaa !2428
  br i1 %4162, label %block_400fe4, label %block_400ffe

block_400d17:                                     ; preds = %block_400cf7
  %4164 = load i64, i64* %RBP, align 8
  %4165 = add i64 %4164, -1168
  store i64 %4165, i64* %RAX, align 8, !tbaa !2428
  store i64 255, i64* %RCX, align 8, !tbaa !2428
  %4166 = add i64 %4164, -12
  %4167 = add i64 %2727, 16
  store i64 %4167, i64* %PC, align 8
  %4168 = inttoptr i64 %4166 to i32*
  %4169 = load i32, i32* %4168, align 4
  %4170 = sext i32 %4169 to i64
  store i64 %4170, i64* %RDX, align 8, !tbaa !2428
  %4171 = shl nsw i64 %4170, 2
  %4172 = add i64 %4164, -1248
  %4173 = add i64 %4172, %4171
  %4174 = add i64 %2727, 23
  store i64 %4174, i64* %PC, align 8
  %4175 = inttoptr i64 %4173 to i32*
  %4176 = load i32, i32* %4175, align 4
  %4177 = add i32 %4176, 255
  %4178 = zext i32 %4177 to i64
  store i64 %4178, i64* %RSI, align 8, !tbaa !2428
  %4179 = icmp ugt i32 %4176, -256
  %4180 = zext i1 %4179 to i8
  store i8 %4180, i8* %17, align 1, !tbaa !2432
  %4181 = and i32 %4177, 255
  %4182 = tail call i32 @llvm.ctpop.i32(i32 %4181) #8
  %4183 = trunc i32 %4182 to i8
  %4184 = and i8 %4183, 1
  %4185 = xor i8 %4184, 1
  store i8 %4185, i8* %24, align 1, !tbaa !2446
  %4186 = xor i32 %4176, 16
  %4187 = xor i32 %4186, %4177
  %4188 = lshr i32 %4187, 4
  %4189 = trunc i32 %4188 to i8
  %4190 = and i8 %4189, 1
  store i8 %4190, i8* %30, align 1, !tbaa !2447
  %4191 = icmp eq i32 %4177, 0
  %4192 = zext i1 %4191 to i8
  store i8 %4192, i8* %33, align 1, !tbaa !2448
  %4193 = lshr i32 %4177, 31
  %4194 = trunc i32 %4193 to i8
  store i8 %4194, i8* %36, align 1, !tbaa !2449
  %4195 = lshr i32 %4176, 31
  %4196 = xor i32 %4193, %4195
  %4197 = add nuw nsw i32 %4196, %4193
  %4198 = icmp eq i32 %4197, 2
  %4199 = zext i1 %4198 to i8
  store i8 %4199, i8* %42, align 1, !tbaa !2450
  %4200 = add i64 %4164, -16
  %4201 = add i64 %2727, 33
  store i64 %4201, i64* %PC, align 8
  %4202 = inttoptr i64 %4200 to i32*
  %4203 = load i32, i32* %4202, align 4
  %4204 = sext i32 %4203 to i64
  store i64 %4204, i64* %RDX, align 8, !tbaa !2428
  %4205 = shl nsw i64 %4204, 2
  %4206 = add i64 %4172, %4205
  %4207 = add i64 %2727, 40
  store i64 %4207, i64* %PC, align 8
  %4208 = inttoptr i64 %4206 to i32*
  %4209 = load i32, i32* %4208, align 4
  %4210 = sub i32 %4177, %4209
  %4211 = zext i32 %4210 to i64
  store i64 %4211, i64* %RSI, align 8, !tbaa !2428
  %4212 = icmp ult i32 %4177, %4209
  %4213 = zext i1 %4212 to i8
  store i8 %4213, i8* %17, align 1, !tbaa !2432
  %4214 = and i32 %4210, 255
  %4215 = tail call i32 @llvm.ctpop.i32(i32 %4214) #8
  %4216 = trunc i32 %4215 to i8
  %4217 = and i8 %4216, 1
  %4218 = xor i8 %4217, 1
  store i8 %4218, i8* %24, align 1, !tbaa !2446
  %4219 = xor i32 %4209, %4177
  %4220 = xor i32 %4219, %4210
  %4221 = lshr i32 %4220, 4
  %4222 = trunc i32 %4221 to i8
  %4223 = and i8 %4222, 1
  store i8 %4223, i8* %30, align 1, !tbaa !2447
  %4224 = icmp eq i32 %4210, 0
  %4225 = zext i1 %4224 to i8
  store i8 %4225, i8* %33, align 1, !tbaa !2448
  %4226 = lshr i32 %4210, 31
  %4227 = trunc i32 %4226 to i8
  store i8 %4227, i8* %36, align 1, !tbaa !2449
  %4228 = lshr i32 %4209, 31
  %4229 = xor i32 %4228, %4193
  %4230 = xor i32 %4226, %4193
  %4231 = add nuw nsw i32 %4230, %4229
  %4232 = icmp eq i32 %4231, 2
  %4233 = zext i1 %4232 to i8
  store i8 %4233, i8* %42, align 1, !tbaa !2450
  %4234 = load i64, i64* %RBP, align 8
  %4235 = add i64 %4234, -16
  %4236 = add i64 %2727, 44
  store i64 %4236, i64* %PC, align 8
  %4237 = inttoptr i64 %4235 to i32*
  %4238 = load i32, i32* %4237, align 4
  %4239 = sext i32 %4238 to i64
  %4240 = shl nsw i64 %4239, 6
  store i64 %4240, i64* %RDX, align 8, !tbaa !2428
  %4241 = lshr i64 %4239, 57
  %4242 = and i64 %4241, 1
  %4243 = load i64, i64* %RAX, align 8
  %4244 = add i64 %4240, %4243
  store i64 %4244, i64* %RDI, align 8, !tbaa !2428
  %4245 = icmp ult i64 %4244, %4243
  %4246 = icmp ult i64 %4244, %4240
  %4247 = or i1 %4245, %4246
  %4248 = zext i1 %4247 to i8
  store i8 %4248, i8* %17, align 1, !tbaa !2432
  %4249 = trunc i64 %4244 to i32
  %4250 = and i32 %4249, 255
  %4251 = tail call i32 @llvm.ctpop.i32(i32 %4250) #8
  %4252 = trunc i32 %4251 to i8
  %4253 = and i8 %4252, 1
  %4254 = xor i8 %4253, 1
  store i8 %4254, i8* %24, align 1, !tbaa !2446
  %4255 = xor i64 %4243, %4244
  %4256 = lshr i64 %4255, 4
  %4257 = trunc i64 %4256 to i8
  %4258 = and i8 %4257, 1
  store i8 %4258, i8* %30, align 1, !tbaa !2447
  %4259 = icmp eq i64 %4244, 0
  %4260 = zext i1 %4259 to i8
  store i8 %4260, i8* %33, align 1, !tbaa !2448
  %4261 = lshr i64 %4244, 63
  %4262 = trunc i64 %4261 to i8
  store i8 %4262, i8* %36, align 1, !tbaa !2449
  %4263 = lshr i64 %4243, 63
  %4264 = xor i64 %4261, %4263
  %4265 = xor i64 %4261, %4242
  %4266 = add nuw nsw i64 %4264, %4265
  %4267 = icmp eq i64 %4266, 2
  %4268 = zext i1 %4267 to i8
  store i8 %4268, i8* %42, align 1, !tbaa !2450
  %4269 = add i64 %4234, -4
  %4270 = add i64 %2727, 58
  store i64 %4270, i64* %PC, align 8
  %4271 = inttoptr i64 %4269 to i32*
  %4272 = load i32, i32* %4271, align 4
  %4273 = sext i32 %4272 to i64
  store i64 %4273, i64* %RDX, align 8, !tbaa !2428
  %4274 = load i64, i64* %RSI, align 8
  %4275 = shl nsw i64 %4273, 2
  %4276 = add i64 %4275, %4244
  %4277 = add i64 %2727, 61
  store i64 %4277, i64* %PC, align 8
  %4278 = trunc i64 %4274 to i32
  %4279 = inttoptr i64 %4276 to i32*
  %4280 = load i32, i32* %4279, align 4
  %4281 = add i32 %4280, %4278
  %4282 = zext i32 %4281 to i64
  store i64 %4282, i64* %RSI, align 8, !tbaa !2428
  %4283 = icmp ult i32 %4281, %4278
  %4284 = icmp ult i32 %4281, %4280
  %4285 = or i1 %4283, %4284
  %4286 = zext i1 %4285 to i8
  store i8 %4286, i8* %17, align 1, !tbaa !2432
  %4287 = and i32 %4281, 255
  %4288 = tail call i32 @llvm.ctpop.i32(i32 %4287) #8
  %4289 = trunc i32 %4288 to i8
  %4290 = and i8 %4289, 1
  %4291 = xor i8 %4290, 1
  store i8 %4291, i8* %24, align 1, !tbaa !2446
  %4292 = xor i32 %4280, %4278
  %4293 = xor i32 %4292, %4281
  %4294 = lshr i32 %4293, 4
  %4295 = trunc i32 %4294 to i8
  %4296 = and i8 %4295, 1
  store i8 %4296, i8* %30, align 1, !tbaa !2447
  %4297 = icmp eq i32 %4281, 0
  %4298 = zext i1 %4297 to i8
  store i8 %4298, i8* %33, align 1, !tbaa !2448
  %4299 = lshr i32 %4281, 31
  %4300 = trunc i32 %4299 to i8
  store i8 %4300, i8* %36, align 1, !tbaa !2449
  %4301 = lshr i32 %4278, 31
  %4302 = lshr i32 %4280, 31
  %4303 = xor i32 %4299, %4301
  %4304 = xor i32 %4299, %4302
  %4305 = add nuw nsw i32 %4303, %4304
  %4306 = icmp eq i32 %4305, 2
  %4307 = zext i1 %4306 to i8
  store i8 %4307, i8* %42, align 1, !tbaa !2450
  %4308 = load i64, i64* %RBP, align 8
  %4309 = add i64 %4308, -2704
  %4310 = add i64 %2727, 68
  store i64 %4310, i64* %PC, align 8
  %4311 = inttoptr i64 %4309 to i64*
  store i64 %4243, i64* %4311, align 8
  %4312 = load i32, i32* %ESI, align 4
  %4313 = zext i32 %4312 to i64
  %4314 = load i64, i64* %PC, align 8
  store i64 %4313, i64* %RAX, align 8, !tbaa !2428
  %4315 = sext i32 %4312 to i64
  %4316 = lshr i64 %4315, 32
  store i64 %4316, i64* %56, align 8, !tbaa !2428
  %4317 = load i32, i32* %ECX, align 4
  %4318 = add i64 %4314, 5
  store i64 %4318, i64* %PC, align 8
  %4319 = sext i32 %4317 to i64
  %4320 = shl nuw i64 %4316, 32
  %4321 = or i64 %4320, %4313
  %4322 = sdiv i64 %4321, %4319
  %4323 = shl i64 %4322, 32
  %4324 = ashr exact i64 %4323, 32
  %4325 = icmp eq i64 %4322, %4324
  br i1 %4325, label %4328, label %4326

; <label>:4326:                                   ; preds = %block_400d17
  %4327 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4318, %struct.Memory* %MEMORY.35) #9
  %.pre36 = load i32, i32* %EDX, align 4
  %.pre37 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:4328:                                   ; preds = %block_400d17
  %4329 = srem i64 %4321, %4319
  %4330 = and i64 %4322, 4294967295
  store i64 %4330, i64* %57, align 8, !tbaa !2428
  %4331 = and i64 %4329, 4294967295
  store i64 %4331, i64* %56, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 0, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  store i8 0, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %4332 = trunc i64 %4329 to i32
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %4328, %4326
  %4333 = phi i64 [ %.pre37, %4326 ], [ %4318, %4328 ]
  %4334 = phi i32 [ %.pre36, %4326 ], [ %4332, %4328 ]
  %4335 = phi %struct.Memory* [ %4327, %4326 ], [ %MEMORY.35, %4328 ]
  %4336 = sext i32 %4334 to i64
  store i64 %4336, i64* %RDI, align 8, !tbaa !2428
  %4337 = shl nsw i64 %4336, 2
  %4338 = add i64 %4337, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %4339 = add i64 %4333, 10
  store i64 %4339, i64* %PC, align 8
  %4340 = inttoptr i64 %4338 to i32*
  %4341 = load i32, i32* %4340, align 4
  %4342 = zext i32 %4341 to i64
  store i64 %4342, i64* %RCX, align 8, !tbaa !2428
  %4343 = load i64, i64* %RBP, align 8
  %4344 = add i64 %4343, -12
  %4345 = add i64 %4333, 13
  store i64 %4345, i64* %PC, align 8
  %4346 = inttoptr i64 %4344 to i32*
  %4347 = load i32, i32* %4346, align 4
  %4348 = add i32 %4347, 1
  %4349 = zext i32 %4348 to i64
  store i64 %4349, i64* %RDX, align 8, !tbaa !2428
  %4350 = sext i32 %4348 to i64
  %4351 = shl nsw i64 %4350, 6
  store i64 %4351, i64* %RDI, align 8, !tbaa !2428
  %.lobit = lshr i32 %4348, 31
  %4352 = trunc i32 %.lobit to i8
  store i8 %4352, i8* %17, align 1, !tbaa !2451
  %4353 = trunc i64 %4351 to i32
  %4354 = and i32 %4353, 192
  %4355 = tail call i32 @llvm.ctpop.i32(i32 %4354) #8
  %4356 = trunc i32 %4355 to i8
  %4357 = and i8 %4356, 1
  %4358 = xor i8 %4357, 1
  store i8 %4358, i8* %24, align 1, !tbaa !2451
  store i8 0, i8* %30, align 1, !tbaa !2451
  %4359 = icmp eq i32 %4348, 0
  %4360 = zext i1 %4359 to i8
  store i8 %4360, i8* %33, align 1, !tbaa !2451
  %4361 = lshr i64 %4350, 57
  %4362 = and i64 %4361, 1
  %4363 = trunc i64 %4362 to i8
  store i8 %4363, i8* %36, align 1, !tbaa !2451
  store i8 0, i8* %42, align 1, !tbaa !2451
  %4364 = add i64 %4343, -2704
  %4365 = add i64 %4333, 30
  store i64 %4365, i64* %PC, align 8
  %4366 = inttoptr i64 %4364 to i64*
  %4367 = load i64, i64* %4366, align 8
  %4368 = add i64 %4351, %4367
  store i64 %4368, i64* %R8, align 8, !tbaa !2428
  %4369 = icmp ult i64 %4368, %4367
  %4370 = icmp ult i64 %4368, %4351
  %4371 = or i1 %4369, %4370
  %4372 = zext i1 %4371 to i8
  store i8 %4372, i8* %17, align 1, !tbaa !2432
  %4373 = trunc i64 %4368 to i32
  %4374 = and i32 %4373, 255
  %4375 = tail call i32 @llvm.ctpop.i32(i32 %4374) #8
  %4376 = trunc i32 %4375 to i8
  %4377 = and i8 %4376, 1
  %4378 = xor i8 %4377, 1
  store i8 %4378, i8* %24, align 1, !tbaa !2446
  %4379 = xor i64 %4367, %4368
  %4380 = lshr i64 %4379, 4
  %4381 = trunc i64 %4380 to i8
  %4382 = and i8 %4381, 1
  store i8 %4382, i8* %30, align 1, !tbaa !2447
  %4383 = icmp eq i64 %4368, 0
  %4384 = zext i1 %4383 to i8
  store i8 %4384, i8* %33, align 1, !tbaa !2448
  %4385 = lshr i64 %4368, 63
  %4386 = trunc i64 %4385 to i8
  store i8 %4386, i8* %36, align 1, !tbaa !2449
  %4387 = lshr i64 %4367, 63
  %4388 = xor i64 %4385, %4387
  %4389 = xor i64 %4385, %4362
  %4390 = add nuw nsw i64 %4388, %4389
  %4391 = icmp eq i64 %4390, 2
  %4392 = zext i1 %4391 to i8
  store i8 %4392, i8* %42, align 1, !tbaa !2450
  %4393 = load i64, i64* %RBP, align 8
  %4394 = add i64 %4393, -4
  %4395 = add i64 %4333, 36
  store i64 %4395, i64* %PC, align 8
  %4396 = inttoptr i64 %4394 to i32*
  %4397 = load i32, i32* %4396, align 4
  %4398 = zext i32 %4397 to i64
  store i64 %4398, i64* %RDX, align 8, !tbaa !2428
  %4399 = add i64 %4393, -12
  %4400 = add i64 %4333, 39
  store i64 %4400, i64* %PC, align 8
  %4401 = inttoptr i64 %4399 to i32*
  %4402 = load i32, i32* %4401, align 4
  %4403 = add i32 %4402, %4397
  %4404 = zext i32 %4403 to i64
  store i64 %4404, i64* %RDX, align 8, !tbaa !2428
  %4405 = icmp ult i32 %4403, %4397
  %4406 = icmp ult i32 %4403, %4402
  %4407 = or i1 %4405, %4406
  %4408 = zext i1 %4407 to i8
  store i8 %4408, i8* %17, align 1, !tbaa !2432
  %4409 = and i32 %4403, 255
  %4410 = tail call i32 @llvm.ctpop.i32(i32 %4409) #8
  %4411 = trunc i32 %4410 to i8
  %4412 = and i8 %4411, 1
  %4413 = xor i8 %4412, 1
  store i8 %4413, i8* %24, align 1, !tbaa !2446
  %4414 = xor i32 %4402, %4397
  %4415 = xor i32 %4414, %4403
  %4416 = lshr i32 %4415, 4
  %4417 = trunc i32 %4416 to i8
  %4418 = and i8 %4417, 1
  store i8 %4418, i8* %30, align 1, !tbaa !2447
  %4419 = icmp eq i32 %4403, 0
  %4420 = zext i1 %4419 to i8
  store i8 %4420, i8* %33, align 1, !tbaa !2448
  %4421 = lshr i32 %4403, 31
  %4422 = trunc i32 %4421 to i8
  store i8 %4422, i8* %36, align 1, !tbaa !2449
  %4423 = lshr i32 %4397, 31
  %4424 = lshr i32 %4402, 31
  %4425 = xor i32 %4421, %4423
  %4426 = xor i32 %4421, %4424
  %4427 = add nuw nsw i32 %4425, %4426
  %4428 = icmp eq i32 %4427, 2
  %4429 = zext i1 %4428 to i8
  store i8 %4429, i8* %42, align 1, !tbaa !2450
  %4430 = add i64 %4393, -16
  %4431 = add i64 %4333, 42
  store i64 %4431, i64* %PC, align 8
  %4432 = inttoptr i64 %4430 to i32*
  %4433 = load i32, i32* %4432, align 4
  %4434 = sub i32 %4403, %4433
  %4435 = zext i32 %4434 to i64
  store i64 %4435, i64* %RDX, align 8, !tbaa !2428
  %4436 = icmp ult i32 %4403, %4433
  %4437 = zext i1 %4436 to i8
  store i8 %4437, i8* %17, align 1, !tbaa !2432
  %4438 = and i32 %4434, 255
  %4439 = tail call i32 @llvm.ctpop.i32(i32 %4438) #8
  %4440 = trunc i32 %4439 to i8
  %4441 = and i8 %4440, 1
  %4442 = xor i8 %4441, 1
  store i8 %4442, i8* %24, align 1, !tbaa !2446
  %4443 = xor i32 %4433, %4403
  %4444 = xor i32 %4443, %4434
  %4445 = lshr i32 %4444, 4
  %4446 = trunc i32 %4445 to i8
  %4447 = and i8 %4446, 1
  store i8 %4447, i8* %30, align 1, !tbaa !2447
  %4448 = icmp eq i32 %4434, 0
  %4449 = zext i1 %4448 to i8
  store i8 %4449, i8* %33, align 1, !tbaa !2448
  %4450 = lshr i32 %4434, 31
  %4451 = trunc i32 %4450 to i8
  store i8 %4451, i8* %36, align 1, !tbaa !2449
  %4452 = lshr i32 %4433, 31
  %4453 = xor i32 %4452, %4421
  %4454 = xor i32 %4450, %4421
  %4455 = add nuw nsw i32 %4454, %4453
  %4456 = icmp eq i32 %4455, 2
  %4457 = zext i1 %4456 to i8
  store i8 %4457, i8* %42, align 1, !tbaa !2450
  %4458 = sext i32 %4434 to i64
  store i64 %4458, i64* %RDI, align 8, !tbaa !2428
  %4459 = load i64, i64* %R8, align 8
  %4460 = shl nsw i64 %4458, 2
  %4461 = add i64 %4460, %4459
  %4462 = load i32, i32* %ECX, align 4
  %4463 = add i64 %4333, 49
  store i64 %4463, i64* %PC, align 8
  %4464 = inttoptr i64 %4461 to i32*
  store i32 %4462, i32* %4464, align 4
  %.pre38 = load i64, i64* %PC, align 8
  br label %block_400d91

block_401444:                                     ; preds = %block_401437
  %4465 = add i64 %1717, 4
  store i64 %4465, i64* %PC, align 8
  %4466 = load i32, i32* %1691, align 4
  %4467 = sext i32 %4466 to i64
  store i64 %4467, i64* %RAX, align 8, !tbaa !2428
  %4468 = shl nsw i64 %4467, 2
  %4469 = add i64 %1688, -2640
  %4470 = add i64 %4469, %4468
  %4471 = add i64 %1717, 15
  store i64 %4471, i64* %PC, align 8
  %4472 = inttoptr i64 %4470 to i32*
  store i32 0, i32* %4472, align 4
  %4473 = load i64, i64* %RBP, align 8
  %4474 = add i64 %4473, -4
  %4475 = load i64, i64* %PC, align 8
  %4476 = add i64 %4475, 4
  store i64 %4476, i64* %PC, align 8
  %4477 = inttoptr i64 %4474 to i32*
  %4478 = load i32, i32* %4477, align 4
  %4479 = sext i32 %4478 to i64
  store i64 %4479, i64* %RAX, align 8, !tbaa !2428
  %4480 = shl nsw i64 %4479, 2
  %4481 = add i64 %4480, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %4482 = add i64 %4475, 12
  store i64 %4482, i64* %PC, align 8
  %4483 = inttoptr i64 %4481 to i32*
  %4484 = load i32, i32* %4483, align 4
  %4485 = add i32 %4484, 1
  %4486 = icmp ne i32 %4484, -1
  %4487 = zext i1 %4486 to i8
  store i8 %4487, i8* %17, align 1, !tbaa !2432
  %4488 = and i32 %4485, 255
  %4489 = tail call i32 @llvm.ctpop.i32(i32 %4488) #8
  %4490 = trunc i32 %4489 to i8
  %4491 = and i8 %4490, 1
  %4492 = xor i8 %4491, 1
  store i8 %4492, i8* %24, align 1, !tbaa !2446
  %4493 = xor i32 %4484, 16
  %4494 = xor i32 %4485, %4493
  %4495 = lshr i32 %4494, 4
  %4496 = trunc i32 %4495 to i8
  %4497 = and i8 %4496, 1
  store i8 %4497, i8* %30, align 1, !tbaa !2447
  %4498 = icmp eq i32 %4485, 0
  %4499 = zext i1 %4498 to i8
  store i8 %4499, i8* %33, align 1, !tbaa !2448
  %4500 = lshr i32 %4485, 31
  %4501 = trunc i32 %4500 to i8
  store i8 %4501, i8* %36, align 1, !tbaa !2449
  %4502 = lshr i32 %4484, 31
  %4503 = xor i32 %4502, 1
  %4504 = xor i32 %4500, %4502
  %4505 = add nuw nsw i32 %4504, %4503
  %4506 = icmp eq i32 %4505, 2
  %4507 = zext i1 %4506 to i8
  store i8 %4507, i8* %42, align 1, !tbaa !2450
  %.v151 = select i1 %4498, i64 53, i64 18
  %4508 = add i64 %4475, %.v151
  %4509 = add i64 %4508, 4
  store i64 %4509, i64* %PC, align 8
  %4510 = load i32, i32* %4477, align 4
  %4511 = sext i32 %4510 to i64
  store i64 %4511, i64* %RAX, align 8, !tbaa !2428
  %4512 = shl nsw i64 %4511, 2
  %4513 = add i64 %4512, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  br i1 %4498, label %block_401488, label %block_401465

block_400a8a:                                     ; preds = %block_400a54
  %4514 = add i64 %4064, -1328
  %4515 = add i64 %4093, 10
  store i64 %4515, i64* %PC, align 8
  %4516 = inttoptr i64 %4514 to i32*
  store i32 0, i32* %4516, align 4
  %4517 = load i64, i64* %RBP, align 8
  %4518 = add i64 %4517, -1324
  %4519 = load i64, i64* %PC, align 8
  %4520 = add i64 %4519, 10
  store i64 %4520, i64* %PC, align 8
  %4521 = inttoptr i64 %4518 to i32*
  store i32 0, i32* %4521, align 4
  %4522 = load i64, i64* %RBP, align 8
  %4523 = add i64 %4522, -1408
  %4524 = load i64, i64* %PC, align 8
  %4525 = add i64 %4524, 10
  store i64 %4525, i64* %PC, align 8
  %4526 = inttoptr i64 %4523 to i32*
  store i32 -1, i32* %4526, align 4
  %4527 = load i64, i64* %RBP, align 8
  %4528 = add i64 %4527, -1404
  %4529 = load i64, i64* %PC, align 8
  %4530 = add i64 %4529, 10
  store i64 %4530, i64* %PC, align 8
  %4531 = inttoptr i64 %4528 to i32*
  store i32 0, i32* %4531, align 4
  %4532 = load i64, i64* %RBP, align 8
  %4533 = add i64 %4532, -12
  %4534 = load i64, i64* %PC, align 8
  %4535 = add i64 %4534, 7
  store i64 %4535, i64* %PC, align 8
  %4536 = inttoptr i64 %4533 to i32*
  store i32 0, i32* %4536, align 4
  %.pre24 = load i64, i64* %RBP, align 8
  %.pre25 = load i64, i64* %PC, align 8
  br label %block_400ab9

block_40183d:                                     ; preds = %block_401838, %block_4017c8
  %.sink = phi i64 [ %4902, %block_401838 ], [ %298, %block_4017c8 ]
  %MEMORY.41 = phi %struct.Memory* [ %MEMORY.15, %block_401838 ], [ %MEMORY.4, %block_4017c8 ]
  %4537 = load i64, i64* %RSP, align 8
  %4538 = add i64 %4537, 2608
  store i64 %4538, i64* %RSP, align 8, !tbaa !2428
  %4539 = icmp ugt i64 %4537, -2609
  %4540 = zext i1 %4539 to i8
  store i8 %4540, i8* %17, align 1, !tbaa !2432
  %4541 = trunc i64 %4538 to i32
  %4542 = and i32 %4541, 255
  %4543 = tail call i32 @llvm.ctpop.i32(i32 %4542) #8
  %4544 = trunc i32 %4543 to i8
  %4545 = and i8 %4544, 1
  %4546 = xor i8 %4545, 1
  store i8 %4546, i8* %24, align 1, !tbaa !2446
  %4547 = xor i64 %4537, 16
  %4548 = xor i64 %4547, %4538
  %4549 = lshr i64 %4548, 4
  %4550 = trunc i64 %4549 to i8
  %4551 = and i8 %4550, 1
  store i8 %4551, i8* %30, align 1, !tbaa !2447
  %4552 = icmp eq i64 %4538, 0
  %4553 = zext i1 %4552 to i8
  store i8 %4553, i8* %33, align 1, !tbaa !2448
  %4554 = lshr i64 %4538, 63
  %4555 = trunc i64 %4554 to i8
  store i8 %4555, i8* %36, align 1, !tbaa !2449
  %4556 = lshr i64 %4537, 63
  %4557 = xor i64 %4554, %4556
  %4558 = add nuw nsw i64 %4557, %4554
  %4559 = icmp eq i64 %4558, 2
  %4560 = zext i1 %4559 to i8
  store i8 %4560, i8* %42, align 1, !tbaa !2450
  %4561 = add i64 %.sink, 8
  store i64 %4561, i64* %PC, align 8
  %4562 = add i64 %4537, 2616
  %4563 = inttoptr i64 %4538 to i64*
  %4564 = load i64, i64* %4563, align 8
  store i64 %4564, i64* %RBP, align 8, !tbaa !2428
  store i64 %4562, i64* %RSP, align 8, !tbaa !2428
  %4565 = add i64 %.sink, 9
  store i64 %4565, i64* %PC, align 8
  %4566 = inttoptr i64 %4562 to i64*
  %4567 = load i64, i64* %4566, align 8
  store i64 %4567, i64* %PC, align 8, !tbaa !2428
  %4568 = add i64 %4537, 2624
  store i64 %4568, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.41

block_400b8b:                                     ; preds = %block_400bc7, %block_400b82
  %4569 = phi i64 [ %.pre27, %block_400b82 ], [ %2900, %block_400bc7 ]
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  store i8 1, i8* %24, align 1, !tbaa !2446
  store i8 1, i8* %33, align 1, !tbaa !2448
  store i8 0, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  store i8 0, i8* %30, align 1, !tbaa !2447
  store i8 0, i8* %CL, align 1, !tbaa !2451
  %4570 = load i64, i64* %RBP, align 8
  %4571 = add i64 %4570, -16
  %4572 = add i64 %4569, 8
  store i64 %4572, i64* %PC, align 8
  %4573 = inttoptr i64 %4571 to i32*
  %4574 = load i32, i32* %4573, align 4
  %4575 = sext i32 %4574 to i64
  store i64 %4575, i64* %RDX, align 8, !tbaa !2428
  %4576 = shl nsw i64 %4575, 2
  %4577 = add i64 %4570, -1248
  %4578 = add i64 %4577, %4576
  %4579 = add i64 %4569, 16
  store i64 %4579, i64* %PC, align 8
  %4580 = inttoptr i64 %4578 to i32*
  %4581 = load i32, i32* %4580, align 4
  %4582 = add i32 %4581, 1
  %4583 = icmp ne i32 %4581, -1
  %4584 = zext i1 %4583 to i8
  store i8 %4584, i8* %17, align 1, !tbaa !2432
  %4585 = and i32 %4582, 255
  %4586 = tail call i32 @llvm.ctpop.i32(i32 %4585) #8
  %4587 = trunc i32 %4586 to i8
  %4588 = and i8 %4587, 1
  %4589 = xor i8 %4588, 1
  store i8 %4589, i8* %24, align 1, !tbaa !2446
  %4590 = xor i32 %4581, 16
  %4591 = xor i32 %4582, %4590
  %4592 = lshr i32 %4591, 4
  %4593 = trunc i32 %4592 to i8
  %4594 = and i8 %4593, 1
  store i8 %4594, i8* %30, align 1, !tbaa !2447
  %4595 = icmp eq i32 %4582, 0
  %4596 = zext i1 %4595 to i8
  store i8 %4596, i8* %33, align 1, !tbaa !2448
  %4597 = lshr i32 %4582, 31
  %4598 = trunc i32 %4597 to i8
  store i8 %4598, i8* %36, align 1, !tbaa !2449
  %4599 = lshr i32 %4581, 31
  %4600 = xor i32 %4599, 1
  %4601 = xor i32 %4597, %4599
  %4602 = add nuw nsw i32 %4601, %4600
  %4603 = icmp eq i32 %4602, 2
  %4604 = zext i1 %4603 to i8
  store i8 %4604, i8* %42, align 1, !tbaa !2450
  %4605 = add i64 %4570, -2693
  %4606 = add i64 %4569, 22
  store i64 %4606, i64* %PC, align 8
  %4607 = inttoptr i64 %4605 to i8*
  store i8 0, i8* %4607, align 1
  %4608 = load i64, i64* %PC, align 8
  %4609 = load i8, i8* %33, align 1, !tbaa !2448
  %4610 = icmp eq i8 %4609, 0
  %.v163 = select i1 %4610, i64 19, i64 6
  %4611 = add i64 %4608, %.v163
  store i64 %4611, i64* %PC, align 8, !tbaa !2428
  br i1 %4610, label %block_400bb4, label %block_400ba7

block_40135f:                                     ; preds = %block_401353
  %4612 = load i32, i32* %6150, align 4
  %4613 = sext i32 %4612 to i64
  store i64 %4613, i64* %RAX, align 8, !tbaa !2428
  %4614 = shl nsw i64 %4613, 2
  %4615 = add i64 %6147, -1488
  %4616 = add i64 %4615, %4614
  %4617 = add i64 %6183, 12
  store i64 %4617, i64* %PC, align 8
  %4618 = inttoptr i64 %4616 to i32*
  %4619 = load i32, i32* %4618, align 4
  %4620 = add i32 %4619, 1
  %4621 = icmp ne i32 %4619, -1
  %4622 = zext i1 %4621 to i8
  store i8 %4622, i8* %17, align 1, !tbaa !2432
  %4623 = and i32 %4620, 255
  %4624 = tail call i32 @llvm.ctpop.i32(i32 %4623) #8
  %4625 = trunc i32 %4624 to i8
  %4626 = and i8 %4625, 1
  %4627 = xor i8 %4626, 1
  store i8 %4627, i8* %24, align 1, !tbaa !2446
  %4628 = xor i32 %4619, 16
  %4629 = xor i32 %4620, %4628
  %4630 = lshr i32 %4629, 4
  %4631 = trunc i32 %4630 to i8
  %4632 = and i8 %4631, 1
  store i8 %4632, i8* %30, align 1, !tbaa !2447
  %4633 = icmp eq i32 %4620, 0
  %4634 = zext i1 %4633 to i8
  store i8 %4634, i8* %33, align 1, !tbaa !2448
  %4635 = lshr i32 %4620, 31
  %4636 = trunc i32 %4635 to i8
  store i8 %4636, i8* %36, align 1, !tbaa !2449
  %4637 = lshr i32 %4619, 31
  %4638 = xor i32 %4637, 1
  %4639 = xor i32 %4635, %4637
  %4640 = add nuw nsw i32 %4639, %4638
  %4641 = icmp eq i32 %4640, 2
  %4642 = zext i1 %4641 to i8
  store i8 %4642, i8* %42, align 1, !tbaa !2450
  %.v144 = select i1 %4633, i64 146, i64 18
  %4643 = add i64 %6183, %.v144
  store i64 %4643, i64* %PC, align 8, !tbaa !2428
  br i1 %4633, label %block_4013f1, label %block_401371

block_400e3a:                                     ; preds = %block_400e35, %block_400b7d
  %.sink104 = phi i64 [ %5459, %block_400e35 ], [ %1732, %block_400b7d ]
  %4644 = phi i64 [ %2537, %block_400e35 ], [ %5623, %block_400b7d ]
  %MEMORY.43 = phi %struct.Memory* [ %MEMORY.35, %block_400e35 ], [ %MEMORY.30, %block_400b7d ]
  %4645 = add i64 %4644, -12
  %4646 = add i64 %.sink104, 3
  store i64 %4646, i64* %PC, align 8
  %4647 = inttoptr i64 %4645 to i32*
  %4648 = load i32, i32* %4647, align 4
  %4649 = zext i32 %4648 to i64
  store i64 %4649, i64* %RAX, align 8, !tbaa !2428
  %4650 = add i64 %.sink104, 6
  store i64 %4650, i64* %PC, align 8
  %4651 = load i32, i32* %4647, align 4
  %4652 = add i32 %4651, 1
  %4653 = zext i32 %4652 to i64
  store i64 %4653, i64* %RCX, align 8, !tbaa !2428
  %4654 = icmp eq i32 %4651, -1
  %4655 = icmp eq i32 %4652, 0
  %4656 = or i1 %4654, %4655
  %4657 = zext i1 %4656 to i8
  store i8 %4657, i8* %17, align 1, !tbaa !2432
  %4658 = and i32 %4652, 255
  %4659 = tail call i32 @llvm.ctpop.i32(i32 %4658) #8
  %4660 = trunc i32 %4659 to i8
  %4661 = and i8 %4660, 1
  %4662 = xor i8 %4661, 1
  store i8 %4662, i8* %24, align 1, !tbaa !2446
  %4663 = xor i32 %4651, %4652
  %4664 = lshr i32 %4663, 4
  %4665 = trunc i32 %4664 to i8
  %4666 = and i8 %4665, 1
  store i8 %4666, i8* %30, align 1, !tbaa !2447
  %4667 = zext i1 %4655 to i8
  store i8 %4667, i8* %33, align 1, !tbaa !2448
  %4668 = lshr i32 %4652, 31
  %4669 = trunc i32 %4668 to i8
  store i8 %4669, i8* %36, align 1, !tbaa !2449
  %4670 = lshr i32 %4651, 31
  %4671 = xor i32 %4668, %4670
  %4672 = add nuw nsw i32 %4671, %4668
  %4673 = icmp eq i32 %4672, 2
  %4674 = zext i1 %4673 to i8
  store i8 %4674, i8* %42, align 1, !tbaa !2450
  %4675 = sext i32 %4652 to i64
  store i64 %4675, i64* %RDX, align 8, !tbaa !2428
  %4676 = shl nsw i64 %4675, 2
  %4677 = add i64 %4644, -1328
  %4678 = add i64 %4677, %4676
  %4679 = add i64 %.sink104, 19
  store i64 %4679, i64* %PC, align 8
  %4680 = inttoptr i64 %4678 to i32*
  %4681 = load i32, i32* %4680, align 4
  %4682 = sub i32 %4648, %4681
  %4683 = zext i32 %4682 to i64
  store i64 %4683, i64* %RAX, align 8, !tbaa !2428
  %4684 = icmp ult i32 %4648, %4681
  %4685 = zext i1 %4684 to i8
  store i8 %4685, i8* %17, align 1, !tbaa !2432
  %4686 = and i32 %4682, 255
  %4687 = tail call i32 @llvm.ctpop.i32(i32 %4686) #8
  %4688 = trunc i32 %4687 to i8
  %4689 = and i8 %4688, 1
  %4690 = xor i8 %4689, 1
  store i8 %4690, i8* %24, align 1, !tbaa !2446
  %4691 = xor i32 %4681, %4648
  %4692 = xor i32 %4691, %4682
  %4693 = lshr i32 %4692, 4
  %4694 = trunc i32 %4693 to i8
  %4695 = and i8 %4694, 1
  store i8 %4695, i8* %30, align 1, !tbaa !2447
  %4696 = icmp eq i32 %4682, 0
  %4697 = zext i1 %4696 to i8
  store i8 %4697, i8* %33, align 1, !tbaa !2448
  %4698 = lshr i32 %4682, 31
  %4699 = trunc i32 %4698 to i8
  store i8 %4699, i8* %36, align 1, !tbaa !2449
  %4700 = lshr i32 %4648, 31
  %4701 = lshr i32 %4681, 31
  %4702 = xor i32 %4701, %4700
  %4703 = xor i32 %4698, %4700
  %4704 = add nuw nsw i32 %4703, %4702
  %4705 = icmp eq i32 %4704, 2
  %4706 = zext i1 %4705 to i8
  store i8 %4706, i8* %42, align 1, !tbaa !2450
  %4707 = add i64 %.sink104, 22
  store i64 %4707, i64* %PC, align 8
  %4708 = load i32, i32* %4647, align 4
  %4709 = add i32 %4708, 1
  %4710 = zext i32 %4709 to i64
  store i64 %4710, i64* %RCX, align 8, !tbaa !2428
  %4711 = icmp eq i32 %4708, -1
  %4712 = icmp eq i32 %4709, 0
  %4713 = or i1 %4711, %4712
  %4714 = zext i1 %4713 to i8
  store i8 %4714, i8* %17, align 1, !tbaa !2432
  %4715 = and i32 %4709, 255
  %4716 = tail call i32 @llvm.ctpop.i32(i32 %4715) #8
  %4717 = trunc i32 %4716 to i8
  %4718 = and i8 %4717, 1
  %4719 = xor i8 %4718, 1
  store i8 %4719, i8* %24, align 1, !tbaa !2446
  %4720 = xor i32 %4708, %4709
  %4721 = lshr i32 %4720, 4
  %4722 = trunc i32 %4721 to i8
  %4723 = and i8 %4722, 1
  store i8 %4723, i8* %30, align 1, !tbaa !2447
  %4724 = zext i1 %4712 to i8
  store i8 %4724, i8* %33, align 1, !tbaa !2448
  %4725 = lshr i32 %4709, 31
  %4726 = trunc i32 %4725 to i8
  store i8 %4726, i8* %36, align 1, !tbaa !2449
  %4727 = lshr i32 %4708, 31
  %4728 = xor i32 %4725, %4727
  %4729 = add nuw nsw i32 %4728, %4725
  %4730 = icmp eq i32 %4729, 2
  %4731 = zext i1 %4730 to i8
  store i8 %4731, i8* %42, align 1, !tbaa !2450
  %4732 = sext i32 %4709 to i64
  store i64 %4732, i64* %RDX, align 8, !tbaa !2428
  %4733 = load i64, i64* %RBP, align 8
  %4734 = shl nsw i64 %4732, 2
  %4735 = add i64 %4733, -1408
  %4736 = add i64 %4735, %4734
  %4737 = add i64 %.sink104, 35
  store i64 %4737, i64* %PC, align 8
  %4738 = inttoptr i64 %4736 to i32*
  store i32 %4682, i32* %4738, align 4
  %4739 = load i64, i64* %RBP, align 8
  %4740 = add i64 %4739, -12
  %4741 = load i64, i64* %PC, align 8
  %4742 = add i64 %4741, 4
  store i64 %4742, i64* %PC, align 8
  %4743 = inttoptr i64 %4740 to i32*
  %4744 = load i32, i32* %4743, align 4
  %4745 = add i32 %4744, -16
  %4746 = icmp ult i32 %4744, 16
  %4747 = zext i1 %4746 to i8
  store i8 %4747, i8* %17, align 1, !tbaa !2432
  %4748 = and i32 %4745, 255
  %4749 = tail call i32 @llvm.ctpop.i32(i32 %4748) #8
  %4750 = trunc i32 %4749 to i8
  %4751 = and i8 %4750, 1
  %4752 = xor i8 %4751, 1
  store i8 %4752, i8* %24, align 1, !tbaa !2446
  %4753 = xor i32 %4744, 16
  %4754 = xor i32 %4753, %4745
  %4755 = lshr i32 %4754, 4
  %4756 = trunc i32 %4755 to i8
  %4757 = and i8 %4756, 1
  store i8 %4757, i8* %30, align 1, !tbaa !2447
  %4758 = icmp eq i32 %4745, 0
  %4759 = zext i1 %4758 to i8
  store i8 %4759, i8* %33, align 1, !tbaa !2448
  %4760 = lshr i32 %4745, 31
  %4761 = trunc i32 %4760 to i8
  store i8 %4761, i8* %36, align 1, !tbaa !2449
  %4762 = lshr i32 %4744, 31
  %4763 = xor i32 %4760, %4762
  %4764 = add nuw nsw i32 %4763, %4762
  %4765 = icmp eq i32 %4764, 2
  %4766 = zext i1 %4765 to i8
  store i8 %4766, i8* %42, align 1, !tbaa !2450
  %4767 = icmp ne i8 %4761, 0
  %4768 = xor i1 %4767, %4765
  %.v118 = select i1 %4768, i64 10, i64 366
  %4769 = add i64 %4741, %.v118
  store i64 %4769, i64* %PC, align 8, !tbaa !2428
  br i1 %4768, label %block_400e67, label %block_400fcb

block_4016ea:                                     ; preds = %block_40173b, %block_4016e3
  %4770 = phi i64 [ %.pre93, %block_4016e3 ], [ %1764, %block_40173b ]
  %4771 = load i64, i64* %RBP, align 8
  %4772 = add i64 %4771, -4
  %4773 = add i64 %4770, 7
  store i64 %4773, i64* %PC, align 8
  %4774 = inttoptr i64 %4772 to i32*
  %4775 = load i32, i32* %4774, align 4
  %4776 = add i32 %4775, -255
  %4777 = icmp ult i32 %4775, 255
  %4778 = zext i1 %4777 to i8
  store i8 %4778, i8* %17, align 1, !tbaa !2432
  %4779 = and i32 %4776, 255
  %4780 = tail call i32 @llvm.ctpop.i32(i32 %4779) #8
  %4781 = trunc i32 %4780 to i8
  %4782 = and i8 %4781, 1
  %4783 = xor i8 %4782, 1
  store i8 %4783, i8* %24, align 1, !tbaa !2446
  %4784 = xor i32 %4775, 16
  %4785 = xor i32 %4784, %4776
  %4786 = lshr i32 %4785, 4
  %4787 = trunc i32 %4786 to i8
  %4788 = and i8 %4787, 1
  store i8 %4788, i8* %30, align 1, !tbaa !2447
  %4789 = icmp eq i32 %4776, 0
  %4790 = zext i1 %4789 to i8
  store i8 %4790, i8* %33, align 1, !tbaa !2448
  %4791 = lshr i32 %4776, 31
  %4792 = trunc i32 %4791 to i8
  store i8 %4792, i8* %36, align 1, !tbaa !2449
  %4793 = lshr i32 %4775, 31
  %4794 = xor i32 %4791, %4793
  %4795 = add nuw nsw i32 %4794, %4793
  %4796 = icmp eq i32 %4795, 2
  %4797 = zext i1 %4796 to i8
  store i8 %4797, i8* %42, align 1, !tbaa !2450
  %4798 = icmp ne i8 %4792, 0
  %4799 = xor i1 %4798, %4796
  %.v159 = select i1 %4799, i64 13, i64 100
  %4800 = add i64 %4770, %.v159
  store i64 %4800, i64* %PC, align 8, !tbaa !2428
  br i1 %4799, label %block_4016f7, label %block_40174e

block_400c7a:                                     ; preds = %block_400c36
  %4801 = add i64 %5458, -16
  %4802 = add i64 %5457, 4
  store i64 %4802, i64* %PC, align 8
  %4803 = inttoptr i64 %4801 to i32*
  %4804 = load i32, i32* %4803, align 4
  %4805 = sext i32 %4804 to i64
  store i64 %4805, i64* %RAX, align 8, !tbaa !2428
  %4806 = shl nsw i64 %4805, 2
  %4807 = add i64 %5458, -1328
  %4808 = add i64 %4807, %4806
  %4809 = add i64 %5457, 11
  store i64 %4809, i64* %PC, align 8
  %4810 = inttoptr i64 %4808 to i32*
  %4811 = load i32, i32* %4810, align 4
  %4812 = zext i32 %4811 to i64
  store i64 %4812, i64* %RCX, align 8, !tbaa !2428
  %4813 = add i64 %5458, -12
  %4814 = add i64 %5457, 14
  store i64 %4814, i64* %PC, align 8
  %4815 = inttoptr i64 %4813 to i32*
  %4816 = load i32, i32* %4815, align 4
  %4817 = add i32 %4816, %4811
  %4818 = zext i32 %4817 to i64
  store i64 %4818, i64* %RCX, align 8, !tbaa !2428
  %4819 = icmp ult i32 %4817, %4811
  %4820 = icmp ult i32 %4817, %4816
  %4821 = or i1 %4819, %4820
  %4822 = zext i1 %4821 to i8
  store i8 %4822, i8* %17, align 1, !tbaa !2432
  %4823 = and i32 %4817, 255
  %4824 = tail call i32 @llvm.ctpop.i32(i32 %4823) #8
  %4825 = trunc i32 %4824 to i8
  %4826 = and i8 %4825, 1
  %4827 = xor i8 %4826, 1
  store i8 %4827, i8* %24, align 1, !tbaa !2446
  %4828 = xor i32 %4816, %4811
  %4829 = xor i32 %4828, %4817
  %4830 = lshr i32 %4829, 4
  %4831 = trunc i32 %4830 to i8
  %4832 = and i8 %4831, 1
  store i8 %4832, i8* %30, align 1, !tbaa !2447
  %4833 = icmp eq i32 %4817, 0
  %4834 = zext i1 %4833 to i8
  store i8 %4834, i8* %33, align 1, !tbaa !2448
  %4835 = lshr i32 %4817, 31
  %4836 = trunc i32 %4835 to i8
  store i8 %4836, i8* %36, align 1, !tbaa !2449
  %4837 = lshr i32 %4811, 31
  %4838 = lshr i32 %4816, 31
  %4839 = xor i32 %4835, %4837
  %4840 = xor i32 %4835, %4838
  %4841 = add nuw nsw i32 %4839, %4840
  %4842 = icmp eq i32 %4841, 2
  %4843 = zext i1 %4842 to i8
  store i8 %4843, i8* %42, align 1, !tbaa !2450
  %4844 = add i64 %5457, 17
  store i64 %4844, i64* %PC, align 8
  %4845 = load i32, i32* %4803, align 4
  %4846 = sub i32 %4817, %4845
  %4847 = zext i32 %4846 to i64
  store i64 %4847, i64* %RCX, align 8, !tbaa !2428
  %4848 = icmp ult i32 %4817, %4845
  %4849 = zext i1 %4848 to i8
  store i8 %4849, i8* %17, align 1, !tbaa !2432
  %4850 = and i32 %4846, 255
  %4851 = tail call i32 @llvm.ctpop.i32(i32 %4850) #8
  %4852 = trunc i32 %4851 to i8
  %4853 = and i8 %4852, 1
  %4854 = xor i8 %4853, 1
  store i8 %4854, i8* %24, align 1, !tbaa !2446
  %4855 = xor i32 %4845, %4817
  %4856 = xor i32 %4855, %4846
  %4857 = lshr i32 %4856, 4
  %4858 = trunc i32 %4857 to i8
  %4859 = and i8 %4858, 1
  store i8 %4859, i8* %30, align 1, !tbaa !2447
  %4860 = icmp eq i32 %4846, 0
  %4861 = zext i1 %4860 to i8
  store i8 %4861, i8* %33, align 1, !tbaa !2448
  %4862 = lshr i32 %4846, 31
  %4863 = trunc i32 %4862 to i8
  store i8 %4863, i8* %36, align 1, !tbaa !2449
  %4864 = lshr i32 %4845, 31
  %4865 = xor i32 %4864, %4835
  %4866 = xor i32 %4862, %4835
  %4867 = add nuw nsw i32 %4866, %4865
  %4868 = icmp eq i32 %4867, 2
  %4869 = zext i1 %4868 to i8
  store i8 %4869, i8* %42, align 1, !tbaa !2450
  %4870 = add i64 %5457, 20
  store i64 %4870, i64* %PC, align 8
  %4871 = load i32, i32* %4815, align 4
  %4872 = add i32 %4871, 1
  %4873 = zext i32 %4872 to i64
  store i64 %4873, i64* %RDX, align 8, !tbaa !2428
  %4874 = icmp eq i32 %4871, -1
  %4875 = icmp eq i32 %4872, 0
  %4876 = or i1 %4874, %4875
  %4877 = zext i1 %4876 to i8
  store i8 %4877, i8* %17, align 1, !tbaa !2432
  %4878 = and i32 %4872, 255
  %4879 = tail call i32 @llvm.ctpop.i32(i32 %4878) #8
  %4880 = trunc i32 %4879 to i8
  %4881 = and i8 %4880, 1
  %4882 = xor i8 %4881, 1
  store i8 %4882, i8* %24, align 1, !tbaa !2446
  %4883 = xor i32 %4871, %4872
  %4884 = lshr i32 %4883, 4
  %4885 = trunc i32 %4884 to i8
  %4886 = and i8 %4885, 1
  store i8 %4886, i8* %30, align 1, !tbaa !2447
  %4887 = zext i1 %4875 to i8
  store i8 %4887, i8* %33, align 1, !tbaa !2448
  %4888 = lshr i32 %4872, 31
  %4889 = trunc i32 %4888 to i8
  store i8 %4889, i8* %36, align 1, !tbaa !2449
  %4890 = lshr i32 %4871, 31
  %4891 = xor i32 %4888, %4890
  %4892 = add nuw nsw i32 %4891, %4888
  %4893 = icmp eq i32 %4892, 2
  %4894 = zext i1 %4893 to i8
  store i8 %4894, i8* %42, align 1, !tbaa !2450
  %4895 = sext i32 %4872 to i64
  store i64 %4895, i64* %RAX, align 8, !tbaa !2428
  %4896 = load i64, i64* %RBP, align 8
  %4897 = shl nsw i64 %4895, 2
  %4898 = add i64 %4896, -1328
  %4899 = add i64 %4898, %4897
  %4900 = add i64 %5457, 33
  store i64 %4900, i64* %PC, align 8
  %4901 = inttoptr i64 %4899 to i32*
  store i32 %4846, i32* %4901, align 4
  %.pre33 = load i64, i64* %PC, align 8
  br label %block_400c9b

block_401838:                                     ; preds = %block_4017d4
  %4902 = add i64 %297, 5
  br label %block_40183d

block_400b0a:                                     ; preds = %block_400af6
  %4903 = add i64 %5623, -1168
  store i64 %4903, i64* %RAX, align 8, !tbaa !2428
  %4904 = add i64 %5666, 11
  store i64 %4904, i64* %PC, align 8
  %4905 = load i32, i32* %5631, align 4
  %4906 = sext i32 %4905 to i64
  %4907 = shl nsw i64 %4906, 6
  store i64 %4907, i64* %RCX, align 8, !tbaa !2428
  %4908 = lshr i64 %4906, 57
  %4909 = and i64 %4908, 1
  %4910 = add i64 %4907, %4903
  store i64 %4910, i64* %RDX, align 8, !tbaa !2428
  %4911 = icmp ult i64 %4910, %4903
  %4912 = icmp ult i64 %4910, %4907
  %4913 = or i1 %4911, %4912
  %4914 = zext i1 %4913 to i8
  store i8 %4914, i8* %17, align 1, !tbaa !2432
  %4915 = trunc i64 %4910 to i32
  %4916 = and i32 %4915, 255
  %4917 = tail call i32 @llvm.ctpop.i32(i32 %4916) #8
  %4918 = trunc i32 %4917 to i8
  %4919 = and i8 %4918, 1
  %4920 = xor i8 %4919, 1
  store i8 %4920, i8* %24, align 1, !tbaa !2446
  %4921 = xor i64 %4903, %4910
  %4922 = lshr i64 %4921, 4
  %4923 = trunc i64 %4922 to i8
  %4924 = and i8 %4923, 1
  store i8 %4924, i8* %30, align 1, !tbaa !2447
  %4925 = icmp eq i64 %4910, 0
  %4926 = zext i1 %4925 to i8
  store i8 %4926, i8* %33, align 1, !tbaa !2448
  %4927 = lshr i64 %4910, 63
  %4928 = trunc i64 %4927 to i8
  store i8 %4928, i8* %36, align 1, !tbaa !2449
  %4929 = lshr i64 %4903, 63
  %4930 = xor i64 %4927, %4929
  %4931 = xor i64 %4927, %4909
  %4932 = add nuw nsw i64 %4930, %4931
  %4933 = icmp eq i64 %4932, 2
  %4934 = zext i1 %4933 to i8
  store i8 %4934, i8* %42, align 1, !tbaa !2450
  %4935 = add i64 %5666, 25
  store i64 %4935, i64* %PC, align 8
  %4936 = load i32, i32* %5626, align 4
  %4937 = sext i32 %4936 to i64
  store i64 %4937, i64* %RCX, align 8, !tbaa !2428
  %4938 = shl nsw i64 %4937, 2
  %4939 = add i64 %4938, %4910
  %4940 = add i64 %5666, 28
  store i64 %4940, i64* %PC, align 8
  %4941 = inttoptr i64 %4939 to i32*
  %4942 = load i32, i32* %4941, align 4
  %4943 = zext i32 %4942 to i64
  store i64 %4943, i64* %RSI, align 8, !tbaa !2428
  %4944 = add i64 %5666, 31
  store i64 %4944, i64* %PC, align 8
  %4945 = load i32, i32* %5631, align 4
  %4946 = add i32 %4945, 1
  %4947 = zext i32 %4946 to i64
  store i64 %4947, i64* %RDI, align 8, !tbaa !2428
  %4948 = sext i32 %4946 to i64
  %4949 = shl nsw i64 %4948, 6
  store i64 %4949, i64* %RCX, align 8, !tbaa !2428
  %4950 = lshr i64 %4948, 57
  %4951 = and i64 %4950, 1
  %4952 = load i64, i64* %RAX, align 8
  %4953 = add i64 %4949, %4952
  store i64 %4953, i64* %RDX, align 8, !tbaa !2428
  %4954 = icmp ult i64 %4953, %4952
  %4955 = icmp ult i64 %4953, %4949
  %4956 = or i1 %4954, %4955
  %4957 = zext i1 %4956 to i8
  store i8 %4957, i8* %17, align 1, !tbaa !2432
  %4958 = trunc i64 %4953 to i32
  %4959 = and i32 %4958, 255
  %4960 = tail call i32 @llvm.ctpop.i32(i32 %4959) #8
  %4961 = trunc i32 %4960 to i8
  %4962 = and i8 %4961, 1
  %4963 = xor i8 %4962, 1
  store i8 %4963, i8* %24, align 1, !tbaa !2446
  %4964 = xor i64 %4952, %4953
  %4965 = lshr i64 %4964, 4
  %4966 = trunc i64 %4965 to i8
  %4967 = and i8 %4966, 1
  store i8 %4967, i8* %30, align 1, !tbaa !2447
  %4968 = icmp eq i64 %4953, 0
  %4969 = zext i1 %4968 to i8
  store i8 %4969, i8* %33, align 1, !tbaa !2448
  %4970 = lshr i64 %4953, 63
  %4971 = trunc i64 %4970 to i8
  store i8 %4971, i8* %36, align 1, !tbaa !2449
  %4972 = lshr i64 %4952, 63
  %4973 = xor i64 %4970, %4972
  %4974 = xor i64 %4970, %4951
  %4975 = add nuw nsw i64 %4973, %4974
  %4976 = icmp eq i64 %4975, 2
  %4977 = zext i1 %4976 to i8
  store i8 %4977, i8* %42, align 1, !tbaa !2450
  %4978 = load i64, i64* %RBP, align 8
  %4979 = add i64 %4978, -4
  %4980 = add i64 %5666, 51
  store i64 %4980, i64* %PC, align 8
  %4981 = inttoptr i64 %4979 to i32*
  %4982 = load i32, i32* %4981, align 4
  %4983 = sext i32 %4982 to i64
  store i64 %4983, i64* %RCX, align 8, !tbaa !2428
  %4984 = shl nsw i64 %4983, 2
  %4985 = add i64 %4984, %4953
  %4986 = load i32, i32* %ESI, align 4
  %4987 = add i64 %5666, 54
  store i64 %4987, i64* %PC, align 8
  %4988 = inttoptr i64 %4985 to i32*
  store i32 %4986, i32* %4988, align 4
  %4989 = load i64, i64* %RBP, align 8
  %4990 = add i64 %4989, -12
  %4991 = load i64, i64* %PC, align 8
  %4992 = add i64 %4991, 4
  store i64 %4992, i64* %PC, align 8
  %4993 = inttoptr i64 %4990 to i32*
  %4994 = load i32, i32* %4993, align 4
  %4995 = sext i32 %4994 to i64
  %4996 = shl nsw i64 %4995, 6
  store i64 %4996, i64* %RCX, align 8, !tbaa !2428
  %4997 = lshr i64 %4995, 57
  %4998 = and i64 %4997, 1
  %4999 = load i64, i64* %RAX, align 8
  %5000 = add i64 %4996, %4999
  store i64 %5000, i64* %RDX, align 8, !tbaa !2428
  %5001 = icmp ult i64 %5000, %4999
  %5002 = icmp ult i64 %5000, %4996
  %5003 = or i1 %5001, %5002
  %5004 = zext i1 %5003 to i8
  store i8 %5004, i8* %17, align 1, !tbaa !2432
  %5005 = trunc i64 %5000 to i32
  %5006 = and i32 %5005, 255
  %5007 = tail call i32 @llvm.ctpop.i32(i32 %5006) #8
  %5008 = trunc i32 %5007 to i8
  %5009 = and i8 %5008, 1
  %5010 = xor i8 %5009, 1
  store i8 %5010, i8* %24, align 1, !tbaa !2446
  %5011 = xor i64 %4999, %5000
  %5012 = lshr i64 %5011, 4
  %5013 = trunc i64 %5012 to i8
  %5014 = and i8 %5013, 1
  store i8 %5014, i8* %30, align 1, !tbaa !2447
  %5015 = icmp eq i64 %5000, 0
  %5016 = zext i1 %5015 to i8
  store i8 %5016, i8* %33, align 1, !tbaa !2448
  %5017 = lshr i64 %5000, 63
  %5018 = trunc i64 %5017 to i8
  store i8 %5018, i8* %36, align 1, !tbaa !2449
  %5019 = lshr i64 %4999, 63
  %5020 = xor i64 %5017, %5019
  %5021 = xor i64 %5017, %4998
  %5022 = add nuw nsw i64 %5020, %5021
  %5023 = icmp eq i64 %5022, 2
  %5024 = zext i1 %5023 to i8
  store i8 %5024, i8* %42, align 1, !tbaa !2450
  %5025 = add i64 %4989, -4
  %5026 = add i64 %4991, 18
  store i64 %5026, i64* %PC, align 8
  %5027 = inttoptr i64 %5025 to i32*
  %5028 = load i32, i32* %5027, align 4
  %5029 = sext i32 %5028 to i64
  store i64 %5029, i64* %RCX, align 8, !tbaa !2428
  %5030 = shl nsw i64 %5029, 2
  %5031 = add i64 %5030, %5000
  %5032 = add i64 %4991, 22
  store i64 %5032, i64* %PC, align 8
  %5033 = inttoptr i64 %5031 to i32*
  %5034 = load i32, i32* %5033, align 4
  %5035 = sext i32 %5034 to i64
  store i64 %5035, i64* %RCX, align 8, !tbaa !2428
  %5036 = shl nsw i64 %5035, 2
  %5037 = add i64 %5036, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %5038 = add i64 %4991, 29
  store i64 %5038, i64* %PC, align 8
  %5039 = inttoptr i64 %5037 to i32*
  %5040 = load i32, i32* %5039, align 4
  %5041 = zext i32 %5040 to i64
  store i64 %5041, i64* %RSI, align 8, !tbaa !2428
  %5042 = add i64 %4991, 33
  store i64 %5042, i64* %PC, align 8
  %5043 = load i32, i32* %4993, align 4
  %5044 = sext i32 %5043 to i64
  %5045 = shl nsw i64 %5044, 6
  store i64 %5045, i64* %RCX, align 8, !tbaa !2428
  %5046 = lshr i64 %5044, 57
  %5047 = and i64 %5046, 1
  %5048 = add i64 %5045, %4999
  store i64 %5048, i64* %RAX, align 8, !tbaa !2428
  %5049 = icmp ult i64 %5048, %4999
  %5050 = icmp ult i64 %5048, %5045
  %5051 = or i1 %5049, %5050
  %5052 = zext i1 %5051 to i8
  store i8 %5052, i8* %17, align 1, !tbaa !2432
  %5053 = trunc i64 %5048 to i32
  %5054 = and i32 %5053, 255
  %5055 = tail call i32 @llvm.ctpop.i32(i32 %5054) #8
  %5056 = trunc i32 %5055 to i8
  %5057 = and i8 %5056, 1
  %5058 = xor i8 %5057, 1
  store i8 %5058, i8* %24, align 1, !tbaa !2446
  %5059 = xor i64 %4999, %5048
  %5060 = lshr i64 %5059, 4
  %5061 = trunc i64 %5060 to i8
  %5062 = and i8 %5061, 1
  store i8 %5062, i8* %30, align 1, !tbaa !2447
  %5063 = icmp eq i64 %5048, 0
  %5064 = zext i1 %5063 to i8
  store i8 %5064, i8* %33, align 1, !tbaa !2448
  %5065 = lshr i64 %5048, 63
  %5066 = trunc i64 %5065 to i8
  store i8 %5066, i8* %36, align 1, !tbaa !2449
  %5067 = xor i64 %5065, %5019
  %5068 = xor i64 %5065, %5047
  %5069 = add nuw nsw i64 %5067, %5068
  %5070 = icmp eq i64 %5069, 2
  %5071 = zext i1 %5070 to i8
  store i8 %5071, i8* %42, align 1, !tbaa !2450
  %5072 = load i64, i64* %RBP, align 8
  %5073 = add i64 %5072, -4
  %5074 = add i64 %4991, 44
  store i64 %5074, i64* %PC, align 8
  %5075 = inttoptr i64 %5073 to i32*
  %5076 = load i32, i32* %5075, align 4
  %5077 = sext i32 %5076 to i64
  store i64 %5077, i64* %RCX, align 8, !tbaa !2428
  %5078 = shl nsw i64 %5077, 2
  %5079 = add i64 %5078, %5048
  %5080 = add i64 %4991, 47
  store i64 %5080, i64* %PC, align 8
  %5081 = inttoptr i64 %5079 to i32*
  store i32 %5040, i32* %5081, align 4
  %5082 = load i64, i64* %RBP, align 8
  %5083 = add i64 %5082, -4
  %5084 = load i64, i64* %PC, align 8
  %5085 = add i64 %5084, 3
  store i64 %5085, i64* %PC, align 8
  %5086 = inttoptr i64 %5083 to i32*
  %5087 = load i32, i32* %5086, align 4
  %5088 = add i32 %5087, 1
  %5089 = zext i32 %5088 to i64
  store i64 %5089, i64* %RAX, align 8, !tbaa !2428
  %5090 = icmp eq i32 %5087, -1
  %5091 = icmp eq i32 %5088, 0
  %5092 = or i1 %5090, %5091
  %5093 = zext i1 %5092 to i8
  store i8 %5093, i8* %17, align 1, !tbaa !2432
  %5094 = and i32 %5088, 255
  %5095 = tail call i32 @llvm.ctpop.i32(i32 %5094) #8
  %5096 = trunc i32 %5095 to i8
  %5097 = and i8 %5096, 1
  %5098 = xor i8 %5097, 1
  store i8 %5098, i8* %24, align 1, !tbaa !2446
  %5099 = xor i32 %5087, %5088
  %5100 = lshr i32 %5099, 4
  %5101 = trunc i32 %5100 to i8
  %5102 = and i8 %5101, 1
  store i8 %5102, i8* %30, align 1, !tbaa !2447
  %5103 = zext i1 %5091 to i8
  store i8 %5103, i8* %33, align 1, !tbaa !2448
  %5104 = lshr i32 %5088, 31
  %5105 = trunc i32 %5104 to i8
  store i8 %5105, i8* %36, align 1, !tbaa !2449
  %5106 = lshr i32 %5087, 31
  %5107 = xor i32 %5104, %5106
  %5108 = add nuw nsw i32 %5107, %5104
  %5109 = icmp eq i32 %5108, 2
  %5110 = zext i1 %5109 to i8
  store i8 %5110, i8* %42, align 1, !tbaa !2450
  %5111 = add i64 %5084, 9
  store i64 %5111, i64* %PC, align 8
  store i32 %5088, i32* %5086, align 4
  %5112 = load i64, i64* %PC, align 8
  %5113 = add i64 %5112, -130
  store i64 %5113, i64* %PC, align 8, !tbaa !2428
  br label %block_400af6

block_401816:                                     ; preds = %block_4017e1
  %5114 = add i64 %3239, 15
  store i64 %5114, i64* %PC, align 8
  %5115 = inttoptr i64 %3244 to i32*
  store i32 0, i32* %5115, align 4
  %.pre98 = load i64, i64* %PC, align 8
  br label %block_401825

block_401042:                                     ; preds = %block_40102e
  %5116 = add i64 %5668, -1168
  store i64 %5116, i64* %RAX, align 8, !tbaa !2428
  %5117 = add i64 %5711, 11
  store i64 %5117, i64* %PC, align 8
  %5118 = load i32, i32* %5676, align 4
  %5119 = sext i32 %5118 to i64
  %5120 = shl nsw i64 %5119, 6
  store i64 %5120, i64* %RCX, align 8, !tbaa !2428
  %5121 = lshr i64 %5119, 57
  %5122 = and i64 %5121, 1
  %5123 = add i64 %5120, %5116
  store i64 %5123, i64* %RDX, align 8, !tbaa !2428
  %5124 = icmp ult i64 %5123, %5116
  %5125 = icmp ult i64 %5123, %5120
  %5126 = or i1 %5124, %5125
  %5127 = zext i1 %5126 to i8
  store i8 %5127, i8* %17, align 1, !tbaa !2432
  %5128 = trunc i64 %5123 to i32
  %5129 = and i32 %5128, 255
  %5130 = tail call i32 @llvm.ctpop.i32(i32 %5129) #8
  %5131 = trunc i32 %5130 to i8
  %5132 = and i8 %5131, 1
  %5133 = xor i8 %5132, 1
  store i8 %5133, i8* %24, align 1, !tbaa !2446
  %5134 = xor i64 %5116, %5123
  %5135 = lshr i64 %5134, 4
  %5136 = trunc i64 %5135 to i8
  %5137 = and i8 %5136, 1
  store i8 %5137, i8* %30, align 1, !tbaa !2447
  %5138 = icmp eq i64 %5123, 0
  %5139 = zext i1 %5138 to i8
  store i8 %5139, i8* %33, align 1, !tbaa !2448
  %5140 = lshr i64 %5123, 63
  %5141 = trunc i64 %5140 to i8
  store i8 %5141, i8* %36, align 1, !tbaa !2449
  %5142 = lshr i64 %5116, 63
  %5143 = xor i64 %5140, %5142
  %5144 = xor i64 %5140, %5122
  %5145 = add nuw nsw i64 %5143, %5144
  %5146 = icmp eq i64 %5145, 2
  %5147 = zext i1 %5146 to i8
  store i8 %5147, i8* %42, align 1, !tbaa !2450
  %5148 = add i64 %5711, 25
  store i64 %5148, i64* %PC, align 8
  %5149 = load i32, i32* %5671, align 4
  %5150 = sext i32 %5149 to i64
  store i64 %5150, i64* %RCX, align 8, !tbaa !2428
  %5151 = shl nsw i64 %5150, 2
  %5152 = add i64 %5151, %5123
  %5153 = add i64 %5711, 29
  store i64 %5153, i64* %PC, align 8
  %5154 = inttoptr i64 %5152 to i32*
  %5155 = load i32, i32* %5154, align 4
  %5156 = sext i32 %5155 to i64
  store i64 %5156, i64* %RCX, align 8, !tbaa !2428
  %5157 = shl nsw i64 %5156, 2
  %5158 = add i64 %5157, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %5159 = add i64 %5711, 36
  store i64 %5159, i64* %PC, align 8
  %5160 = inttoptr i64 %5158 to i32*
  %5161 = load i32, i32* %5160, align 4
  %5162 = zext i32 %5161 to i64
  store i64 %5162, i64* %RSI, align 8, !tbaa !2428
  %5163 = add i64 %5711, 40
  store i64 %5163, i64* %PC, align 8
  %5164 = load i32, i32* %5676, align 4
  %5165 = sext i32 %5164 to i64
  %5166 = shl nsw i64 %5165, 6
  store i64 %5166, i64* %RCX, align 8, !tbaa !2428
  %5167 = lshr i64 %5165, 57
  %5168 = and i64 %5167, 1
  %5169 = load i64, i64* %RAX, align 8
  %5170 = add i64 %5166, %5169
  store i64 %5170, i64* %RAX, align 8, !tbaa !2428
  %5171 = icmp ult i64 %5170, %5169
  %5172 = icmp ult i64 %5170, %5166
  %5173 = or i1 %5171, %5172
  %5174 = zext i1 %5173 to i8
  store i8 %5174, i8* %17, align 1, !tbaa !2432
  %5175 = trunc i64 %5170 to i32
  %5176 = and i32 %5175, 255
  %5177 = tail call i32 @llvm.ctpop.i32(i32 %5176) #8
  %5178 = trunc i32 %5177 to i8
  %5179 = and i8 %5178, 1
  %5180 = xor i8 %5179, 1
  store i8 %5180, i8* %24, align 1, !tbaa !2446
  %5181 = xor i64 %5169, %5170
  %5182 = lshr i64 %5181, 4
  %5183 = trunc i64 %5182 to i8
  %5184 = and i8 %5183, 1
  store i8 %5184, i8* %30, align 1, !tbaa !2447
  %5185 = icmp eq i64 %5170, 0
  %5186 = zext i1 %5185 to i8
  store i8 %5186, i8* %33, align 1, !tbaa !2448
  %5187 = lshr i64 %5170, 63
  %5188 = trunc i64 %5187 to i8
  store i8 %5188, i8* %36, align 1, !tbaa !2449
  %5189 = lshr i64 %5169, 63
  %5190 = xor i64 %5187, %5189
  %5191 = xor i64 %5187, %5168
  %5192 = add nuw nsw i64 %5190, %5191
  %5193 = icmp eq i64 %5192, 2
  %5194 = zext i1 %5193 to i8
  store i8 %5194, i8* %42, align 1, !tbaa !2450
  %5195 = load i64, i64* %RBP, align 8
  %5196 = add i64 %5195, -4
  %5197 = add i64 %5711, 51
  store i64 %5197, i64* %PC, align 8
  %5198 = inttoptr i64 %5196 to i32*
  %5199 = load i32, i32* %5198, align 4
  %5200 = sext i32 %5199 to i64
  store i64 %5200, i64* %RCX, align 8, !tbaa !2428
  %5201 = shl nsw i64 %5200, 2
  %5202 = add i64 %5201, %5170
  %5203 = add i64 %5711, 54
  store i64 %5203, i64* %PC, align 8
  %5204 = inttoptr i64 %5202 to i32*
  store i32 %5161, i32* %5204, align 4
  %5205 = load i64, i64* %RBP, align 8
  %5206 = add i64 %5205, -4
  %5207 = load i64, i64* %PC, align 8
  %5208 = add i64 %5207, 3
  store i64 %5208, i64* %PC, align 8
  %5209 = inttoptr i64 %5206 to i32*
  %5210 = load i32, i32* %5209, align 4
  %5211 = add i32 %5210, 1
  %5212 = zext i32 %5211 to i64
  store i64 %5212, i64* %RAX, align 8, !tbaa !2428
  %5213 = icmp eq i32 %5210, -1
  %5214 = icmp eq i32 %5211, 0
  %5215 = or i1 %5213, %5214
  %5216 = zext i1 %5215 to i8
  store i8 %5216, i8* %17, align 1, !tbaa !2432
  %5217 = and i32 %5211, 255
  %5218 = tail call i32 @llvm.ctpop.i32(i32 %5217) #8
  %5219 = trunc i32 %5218 to i8
  %5220 = and i8 %5219, 1
  %5221 = xor i8 %5220, 1
  store i8 %5221, i8* %24, align 1, !tbaa !2446
  %5222 = xor i32 %5210, %5211
  %5223 = lshr i32 %5222, 4
  %5224 = trunc i32 %5223 to i8
  %5225 = and i8 %5224, 1
  store i8 %5225, i8* %30, align 1, !tbaa !2447
  %5226 = zext i1 %5214 to i8
  store i8 %5226, i8* %33, align 1, !tbaa !2448
  %5227 = lshr i32 %5211, 31
  %5228 = trunc i32 %5227 to i8
  store i8 %5228, i8* %36, align 1, !tbaa !2449
  %5229 = lshr i32 %5210, 31
  %5230 = xor i32 %5227, %5229
  %5231 = add nuw nsw i32 %5230, %5227
  %5232 = icmp eq i32 %5231, 2
  %5233 = zext i1 %5232 to i8
  store i8 %5233, i8* %42, align 1, !tbaa !2450
  %5234 = add i64 %5207, 9
  store i64 %5234, i64* %PC, align 8
  store i32 %5211, i32* %5209, align 4
  %5235 = load i64, i64* %PC, align 8
  %5236 = add i64 %5235, -83
  store i64 %5236, i64* %PC, align 8, !tbaa !2428
  br label %block_40102e

block_401237:                                     ; preds = %block_401217
  %5237 = add i64 %.pre62, -1168
  store i64 %5237, i64* %RAX, align 8, !tbaa !2428
  %5238 = add i64 %.pre62, -4
  %5239 = add i64 %5999, 11
  store i64 %5239, i64* %PC, align 8
  %5240 = inttoptr i64 %5238 to i32*
  %5241 = load i32, i32* %5240, align 4
  %5242 = sext i32 %5241 to i64
  store i64 %5242, i64* %RCX, align 8, !tbaa !2428
  %5243 = shl nsw i64 %5242, 2
  %5244 = add i64 %.pre62, -1488
  %5245 = add i64 %5244, %5243
  %5246 = add i64 %5999, 19
  store i64 %5246, i64* %PC, align 8
  %5247 = inttoptr i64 %5245 to i32*
  %5248 = load i32, i32* %5247, align 4
  %5249 = sext i32 %5248 to i64
  store i64 %5249, i64* %RCX, align 8, !tbaa !2428
  %5250 = shl nsw i64 %5249, 2
  %5251 = add i64 %5250, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %5252 = add i64 %5999, 26
  store i64 %5252, i64* %PC, align 8
  %5253 = inttoptr i64 %5251 to i32*
  %5254 = load i32, i32* %5253, align 4
  %5255 = zext i32 %5254 to i64
  store i64 %5255, i64* %RDX, align 8, !tbaa !2428
  %5256 = add i64 %.pre62, -12
  %5257 = add i64 %5999, 30
  store i64 %5257, i64* %PC, align 8
  %5258 = inttoptr i64 %5256 to i32*
  %5259 = load i32, i32* %5258, align 4
  %5260 = sext i32 %5259 to i64
  %5261 = shl nsw i64 %5260, 6
  store i64 %5261, i64* %RCX, align 8, !tbaa !2428
  %5262 = lshr i64 %5260, 57
  %5263 = and i64 %5262, 1
  %5264 = add i64 %5261, %5237
  store i64 %5264, i64* %RAX, align 8, !tbaa !2428
  %5265 = icmp ult i64 %5264, %5237
  %5266 = icmp ult i64 %5264, %5261
  %5267 = or i1 %5265, %5266
  %5268 = zext i1 %5267 to i8
  store i8 %5268, i8* %17, align 1, !tbaa !2432
  %5269 = trunc i64 %5264 to i32
  %5270 = and i32 %5269, 255
  %5271 = tail call i32 @llvm.ctpop.i32(i32 %5270) #8
  %5272 = trunc i32 %5271 to i8
  %5273 = and i8 %5272, 1
  %5274 = xor i8 %5273, 1
  store i8 %5274, i8* %24, align 1, !tbaa !2446
  %5275 = xor i64 %5237, %5264
  %5276 = lshr i64 %5275, 4
  %5277 = trunc i64 %5276 to i8
  %5278 = and i8 %5277, 1
  store i8 %5278, i8* %30, align 1, !tbaa !2447
  %5279 = icmp eq i64 %5264, 0
  %5280 = zext i1 %5279 to i8
  store i8 %5280, i8* %33, align 1, !tbaa !2448
  %5281 = lshr i64 %5264, 63
  %5282 = trunc i64 %5281 to i8
  store i8 %5282, i8* %36, align 1, !tbaa !2449
  %5283 = lshr i64 %5237, 63
  %5284 = xor i64 %5281, %5283
  %5285 = xor i64 %5281, %5263
  %5286 = add nuw nsw i64 %5284, %5285
  %5287 = icmp eq i64 %5286, 2
  %5288 = zext i1 %5287 to i8
  store i8 %5288, i8* %42, align 1, !tbaa !2450
  %5289 = add i64 %5999, 41
  store i64 %5289, i64* %PC, align 8
  %5290 = load i32, i32* %5240, align 4
  %5291 = sext i32 %5290 to i64
  store i64 %5291, i64* %RCX, align 8, !tbaa !2428
  %5292 = shl nsw i64 %5291, 2
  %5293 = add i64 %5292, %5264
  %5294 = add i64 %5999, 45
  store i64 %5294, i64* %PC, align 8
  %5295 = inttoptr i64 %5293 to i32*
  %5296 = load i32, i32* %5295, align 4
  %5297 = sext i32 %5296 to i64
  store i64 %5297, i64* %RAX, align 8, !tbaa !2428
  %5298 = shl nsw i64 %5297, 2
  %5299 = add i64 %5298, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %5300 = add i64 %5999, 52
  store i64 %5300, i64* %PC, align 8
  %5301 = inttoptr i64 %5299 to i32*
  %5302 = load i32, i32* %5301, align 4
  %5303 = xor i32 %5302, %5254
  %5304 = zext i32 %5303 to i64
  store i64 %5304, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %17, align 1, !tbaa !2432
  %5305 = and i32 %5303, 255
  %5306 = tail call i32 @llvm.ctpop.i32(i32 %5305) #8
  %5307 = trunc i32 %5306 to i8
  %5308 = and i8 %5307, 1
  %5309 = xor i8 %5308, 1
  store i8 %5309, i8* %24, align 1, !tbaa !2446
  %5310 = icmp eq i32 %5303, 0
  %5311 = zext i1 %5310 to i8
  store i8 %5311, i8* %33, align 1, !tbaa !2448
  %5312 = lshr i32 %5303, 31
  %5313 = trunc i32 %5312 to i8
  store i8 %5313, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  store i8 0, i8* %30, align 1, !tbaa !2447
  %5314 = load i64, i64* %RBP, align 8
  %5315 = add i64 %5314, -4
  %5316 = add i64 %5999, 56
  store i64 %5316, i64* %PC, align 8
  %5317 = inttoptr i64 %5315 to i32*
  %5318 = load i32, i32* %5317, align 4
  %5319 = sext i32 %5318 to i64
  store i64 %5319, i64* %RAX, align 8, !tbaa !2428
  %5320 = shl nsw i64 %5319, 2
  %5321 = add i64 %5314, -1616
  %5322 = add i64 %5321, %5320
  %5323 = add i64 %5999, 63
  store i64 %5323, i64* %PC, align 8
  %5324 = inttoptr i64 %5322 to i32*
  store i32 %5303, i32* %5324, align 4
  %5325 = load i64, i64* %PC, align 8
  %5326 = add i64 %5325, 214
  br label %block_40134c

block_4014b1:                                     ; preds = %block_4014aa, %block_4016cb
  %5327 = phi i64 [ %.pre73, %block_4014aa ], [ %3053, %block_4016cb ]
  %MEMORY.45 = phi %struct.Memory* [ %MEMORY.16, %block_4014aa ], [ %MEMORY.26, %block_4016cb ]
  %5328 = load i64, i64* %RBP, align 8
  %5329 = add i64 %5328, -4
  %5330 = add i64 %5327, 3
  store i64 %5330, i64* %PC, align 8
  %5331 = inttoptr i64 %5329 to i32*
  %5332 = load i32, i32* %5331, align 4
  %5333 = zext i32 %5332 to i64
  store i64 %5333, i64* %RAX, align 8, !tbaa !2428
  %5334 = add i64 %5328, -12
  %5335 = add i64 %5327, 7
  store i64 %5335, i64* %PC, align 8
  %5336 = inttoptr i64 %5334 to i32*
  %5337 = load i32, i32* %5336, align 4
  %5338 = sext i32 %5337 to i64
  store i64 %5338, i64* %RCX, align 8, !tbaa !2428
  %5339 = shl nsw i64 %5338, 2
  %5340 = add i64 %5328, -1328
  %5341 = add i64 %5340, %5339
  %5342 = add i64 %5327, 14
  store i64 %5342, i64* %PC, align 8
  %5343 = inttoptr i64 %5341 to i32*
  %5344 = load i32, i32* %5343, align 4
  %5345 = sub i32 %5332, %5344
  %5346 = icmp ult i32 %5332, %5344
  %5347 = zext i1 %5346 to i8
  store i8 %5347, i8* %17, align 1, !tbaa !2432
  %5348 = and i32 %5345, 255
  %5349 = tail call i32 @llvm.ctpop.i32(i32 %5348) #8
  %5350 = trunc i32 %5349 to i8
  %5351 = and i8 %5350, 1
  %5352 = xor i8 %5351, 1
  store i8 %5352, i8* %24, align 1, !tbaa !2446
  %5353 = xor i32 %5344, %5332
  %5354 = xor i32 %5353, %5345
  %5355 = lshr i32 %5354, 4
  %5356 = trunc i32 %5355 to i8
  %5357 = and i8 %5356, 1
  store i8 %5357, i8* %30, align 1, !tbaa !2447
  %5358 = icmp eq i32 %5345, 0
  %5359 = zext i1 %5358 to i8
  store i8 %5359, i8* %33, align 1, !tbaa !2448
  %5360 = lshr i32 %5345, 31
  %5361 = trunc i32 %5360 to i8
  store i8 %5361, i8* %36, align 1, !tbaa !2449
  %5362 = lshr i32 %5332, 31
  %5363 = lshr i32 %5344, 31
  %5364 = xor i32 %5363, %5362
  %5365 = xor i32 %5360, %5362
  %5366 = add nuw nsw i32 %5365, %5364
  %5367 = icmp eq i32 %5366, 2
  %5368 = zext i1 %5367 to i8
  store i8 %5368, i8* %42, align 1, !tbaa !2450
  %5369 = icmp ne i8 %5361, 0
  %5370 = xor i1 %5369, %5367
  %.v152 = select i1 %5370, i64 20, i64 557
  %5371 = add i64 %5327, %.v152
  store i64 %5371, i64* %PC, align 8, !tbaa !2428
  br i1 %5370, label %block_4014c5, label %block_4016de

block_400c36:                                     ; preds = %block_400c31, %block_400bc2
  %5372 = phi i64 [ %879, %block_400bc2 ], [ %5460, %block_400c31 ]
  %5373 = phi i64 [ %3008, %block_400bc2 ], [ %6059, %block_400c31 ]
  %5374 = add i64 %5373, -12
  %5375 = add i64 %5372, 4
  store i64 %5375, i64* %PC, align 8
  %5376 = inttoptr i64 %5374 to i32*
  %5377 = load i32, i32* %5376, align 4
  %5378 = sext i32 %5377 to i64
  store i64 %5378, i64* %RAX, align 8, !tbaa !2428
  %5379 = shl nsw i64 %5378, 2
  %5380 = add i64 %5373, -1328
  %5381 = add i64 %5380, %5379
  %5382 = add i64 %5372, 11
  store i64 %5382, i64* %PC, align 8
  %5383 = inttoptr i64 %5381 to i32*
  %5384 = load i32, i32* %5383, align 4
  %5385 = zext i32 %5384 to i64
  store i64 %5385, i64* %RCX, align 8, !tbaa !2428
  %5386 = add i64 %5373, -16
  %5387 = add i64 %5372, 15
  store i64 %5387, i64* %PC, align 8
  %5388 = inttoptr i64 %5386 to i32*
  %5389 = load i32, i32* %5388, align 4
  %5390 = sext i32 %5389 to i64
  store i64 %5390, i64* %RAX, align 8, !tbaa !2428
  %5391 = shl nsw i64 %5390, 2
  %5392 = add i64 %5380, %5391
  %5393 = add i64 %5372, 22
  store i64 %5393, i64* %PC, align 8
  %5394 = inttoptr i64 %5392 to i32*
  %5395 = load i32, i32* %5394, align 4
  %5396 = zext i32 %5395 to i64
  store i64 %5396, i64* %RDX, align 8, !tbaa !2428
  %5397 = add i64 %5372, 25
  store i64 %5397, i64* %PC, align 8
  %5398 = load i32, i32* %5376, align 4
  %5399 = add i32 %5398, %5395
  %5400 = zext i32 %5399 to i64
  store i64 %5400, i64* %RDX, align 8, !tbaa !2428
  %5401 = icmp ult i32 %5399, %5395
  %5402 = icmp ult i32 %5399, %5398
  %5403 = or i1 %5401, %5402
  %5404 = zext i1 %5403 to i8
  store i8 %5404, i8* %17, align 1, !tbaa !2432
  %5405 = and i32 %5399, 255
  %5406 = tail call i32 @llvm.ctpop.i32(i32 %5405) #8
  %5407 = trunc i32 %5406 to i8
  %5408 = and i8 %5407, 1
  %5409 = xor i8 %5408, 1
  store i8 %5409, i8* %24, align 1, !tbaa !2446
  %5410 = xor i32 %5398, %5395
  %5411 = xor i32 %5410, %5399
  %5412 = lshr i32 %5411, 4
  %5413 = trunc i32 %5412 to i8
  %5414 = and i8 %5413, 1
  store i8 %5414, i8* %30, align 1, !tbaa !2447
  %5415 = icmp eq i32 %5399, 0
  %5416 = zext i1 %5415 to i8
  store i8 %5416, i8* %33, align 1, !tbaa !2448
  %5417 = lshr i32 %5399, 31
  %5418 = trunc i32 %5417 to i8
  store i8 %5418, i8* %36, align 1, !tbaa !2449
  %5419 = lshr i32 %5395, 31
  %5420 = lshr i32 %5398, 31
  %5421 = xor i32 %5417, %5419
  %5422 = xor i32 %5417, %5420
  %5423 = add nuw nsw i32 %5421, %5422
  %5424 = icmp eq i32 %5423, 2
  %5425 = zext i1 %5424 to i8
  store i8 %5425, i8* %42, align 1, !tbaa !2450
  %5426 = add i64 %5372, 28
  store i64 %5426, i64* %PC, align 8
  %5427 = load i32, i32* %5388, align 4
  %5428 = sub i32 %5399, %5427
  %5429 = zext i32 %5428 to i64
  store i64 %5429, i64* %RDX, align 8, !tbaa !2428
  %5430 = lshr i32 %5428, 31
  %5431 = sub i32 %5384, %5428
  %5432 = icmp ult i32 %5384, %5428
  %5433 = zext i1 %5432 to i8
  store i8 %5433, i8* %17, align 1, !tbaa !2432
  %5434 = and i32 %5431, 255
  %5435 = tail call i32 @llvm.ctpop.i32(i32 %5434) #8
  %5436 = trunc i32 %5435 to i8
  %5437 = and i8 %5436, 1
  %5438 = xor i8 %5437, 1
  store i8 %5438, i8* %24, align 1, !tbaa !2446
  %5439 = xor i32 %5428, %5384
  %5440 = xor i32 %5439, %5431
  %5441 = lshr i32 %5440, 4
  %5442 = trunc i32 %5441 to i8
  %5443 = and i8 %5442, 1
  store i8 %5443, i8* %30, align 1, !tbaa !2447
  %5444 = icmp eq i32 %5431, 0
  %5445 = zext i1 %5444 to i8
  store i8 %5445, i8* %33, align 1, !tbaa !2448
  %5446 = lshr i32 %5431, 31
  %5447 = trunc i32 %5446 to i8
  store i8 %5447, i8* %36, align 1, !tbaa !2449
  %5448 = lshr i32 %5384, 31
  %5449 = xor i32 %5430, %5448
  %5450 = xor i32 %5446, %5448
  %5451 = add nuw nsw i32 %5450, %5449
  %5452 = icmp eq i32 %5451, 2
  %5453 = zext i1 %5452 to i8
  store i8 %5453, i8* %42, align 1, !tbaa !2450
  %5454 = icmp ne i8 %5447, 0
  %5455 = xor i1 %5454, %5452
  %5456 = or i1 %5444, %5455
  %.v169 = select i1 %5456, i64 68, i64 36
  %5457 = add i64 %5372, %.v169
  store i64 %5457, i64* %PC, align 8, !tbaa !2428
  %5458 = load i64, i64* %RBP, align 8
  br i1 %5456, label %block_400c7a, label %block_400c5a

block_400e35:                                     ; preds = %block_400dab
  %5459 = add i64 %2580, 5
  br label %block_400e3a

block_400c31:                                     ; preds = %block_400c22
  %5460 = add i64 %6077, 5
  store i64 %5460, i64* %PC, align 8, !tbaa !2428
  br label %block_400c36

block_4012e2:                                     ; preds = %block_4012d0
  %5461 = add i64 %3152, -1168
  store i64 %5461, i64* %RAX, align 8, !tbaa !2428
  %5462 = add i64 %3152, -12
  %5463 = add i64 %3187, 11
  store i64 %5463, i64* %PC, align 8
  %5464 = inttoptr i64 %5462 to i32*
  %5465 = load i32, i32* %5464, align 4
  %5466 = sext i32 %5465 to i64
  %5467 = shl nsw i64 %5466, 6
  store i64 %5467, i64* %RCX, align 8, !tbaa !2428
  %5468 = lshr i64 %5466, 57
  %5469 = and i64 %5468, 1
  %5470 = add i64 %5467, %5461
  store i64 %5470, i64* %RAX, align 8, !tbaa !2428
  %5471 = icmp ult i64 %5470, %5461
  %5472 = icmp ult i64 %5470, %5467
  %5473 = or i1 %5471, %5472
  %5474 = zext i1 %5473 to i8
  store i8 %5474, i8* %17, align 1, !tbaa !2432
  %5475 = trunc i64 %5470 to i32
  %5476 = and i32 %5475, 255
  %5477 = tail call i32 @llvm.ctpop.i32(i32 %5476) #8
  %5478 = trunc i32 %5477 to i8
  %5479 = and i8 %5478, 1
  %5480 = xor i8 %5479, 1
  store i8 %5480, i8* %24, align 1, !tbaa !2446
  %5481 = xor i64 %5461, %5470
  %5482 = lshr i64 %5481, 4
  %5483 = trunc i64 %5482 to i8
  %5484 = and i8 %5483, 1
  store i8 %5484, i8* %30, align 1, !tbaa !2447
  %5485 = icmp eq i64 %5470, 0
  %5486 = zext i1 %5485 to i8
  store i8 %5486, i8* %33, align 1, !tbaa !2448
  %5487 = lshr i64 %5470, 63
  %5488 = trunc i64 %5487 to i8
  store i8 %5488, i8* %36, align 1, !tbaa !2449
  %5489 = lshr i64 %5461, 63
  %5490 = xor i64 %5487, %5489
  %5491 = xor i64 %5487, %5469
  %5492 = add nuw nsw i64 %5490, %5491
  %5493 = icmp eq i64 %5492, 2
  %5494 = zext i1 %5493 to i8
  store i8 %5494, i8* %42, align 1, !tbaa !2450
  %5495 = add i64 %3187, 22
  store i64 %5495, i64* %PC, align 8
  %5496 = load i32, i32* %3155, align 4
  %5497 = sext i32 %5496 to i64
  store i64 %5497, i64* %RCX, align 8, !tbaa !2428
  %5498 = shl nsw i64 %5497, 2
  %5499 = add i64 %5498, %5470
  %5500 = add i64 %3187, 26
  store i64 %5500, i64* %PC, align 8
  %5501 = inttoptr i64 %5499 to i32*
  %5502 = load i32, i32* %5501, align 4
  %5503 = add i32 %5502, 1
  %5504 = icmp ne i32 %5502, -1
  %5505 = zext i1 %5504 to i8
  store i8 %5505, i8* %17, align 1, !tbaa !2432
  %5506 = and i32 %5503, 255
  %5507 = tail call i32 @llvm.ctpop.i32(i32 %5506) #8
  %5508 = trunc i32 %5507 to i8
  %5509 = and i8 %5508, 1
  %5510 = xor i8 %5509, 1
  store i8 %5510, i8* %24, align 1, !tbaa !2446
  %5511 = xor i32 %5502, 16
  %5512 = xor i32 %5503, %5511
  %5513 = lshr i32 %5512, 4
  %5514 = trunc i32 %5513 to i8
  %5515 = and i8 %5514, 1
  store i8 %5515, i8* %30, align 1, !tbaa !2447
  %5516 = icmp eq i32 %5503, 0
  %5517 = zext i1 %5516 to i8
  store i8 %5517, i8* %33, align 1, !tbaa !2448
  %5518 = lshr i32 %5503, 31
  %5519 = trunc i32 %5518 to i8
  store i8 %5519, i8* %36, align 1, !tbaa !2449
  %5520 = lshr i32 %5502, 31
  %5521 = xor i32 %5520, 1
  %5522 = xor i32 %5518, %5520
  %5523 = add nuw nsw i32 %5522, %5521
  %5524 = icmp eq i32 %5523, 2
  %5525 = zext i1 %5524 to i8
  store i8 %5525, i8* %42, align 1, !tbaa !2450
  %.v149 = select i1 %5516, i64 81, i64 32
  %5526 = add i64 %3187, %.v149
  store i64 %5526, i64* %PC, align 8, !tbaa !2428
  %.pre64 = load i64, i64* %RBP, align 8
  br i1 %5516, label %block_401333, label %block_401302

block_401430:                                     ; preds = %block_4011f1
  %5527 = add i64 %1840, 7
  store i64 %5527, i64* %PC, align 8
  store i32 0, i32* %1800, align 4
  %.pre71 = load i64, i64* %PC, align 8
  br label %block_401437

block_401371:                                     ; preds = %block_40135f
  %5528 = add i64 %6147, -1168
  store i64 %5528, i64* %RAX, align 8, !tbaa !2428
  %5529 = add i64 %6147, -12
  %5530 = add i64 %4643, 11
  store i64 %5530, i64* %PC, align 8
  %5531 = inttoptr i64 %5529 to i32*
  %5532 = load i32, i32* %5531, align 4
  %5533 = sext i32 %5532 to i64
  %5534 = shl nsw i64 %5533, 6
  store i64 %5534, i64* %RCX, align 8, !tbaa !2428
  %5535 = lshr i64 %5533, 57
  %5536 = and i64 %5535, 1
  %5537 = add i64 %5534, %5528
  store i64 %5537, i64* %RAX, align 8, !tbaa !2428
  %5538 = icmp ult i64 %5537, %5528
  %5539 = icmp ult i64 %5537, %5534
  %5540 = or i1 %5538, %5539
  %5541 = zext i1 %5540 to i8
  store i8 %5541, i8* %17, align 1, !tbaa !2432
  %5542 = trunc i64 %5537 to i32
  %5543 = and i32 %5542, 255
  %5544 = tail call i32 @llvm.ctpop.i32(i32 %5543) #8
  %5545 = trunc i32 %5544 to i8
  %5546 = and i8 %5545, 1
  %5547 = xor i8 %5546, 1
  store i8 %5547, i8* %24, align 1, !tbaa !2446
  %5548 = xor i64 %5528, %5537
  %5549 = lshr i64 %5548, 4
  %5550 = trunc i64 %5549 to i8
  %5551 = and i8 %5550, 1
  store i8 %5551, i8* %30, align 1, !tbaa !2447
  %5552 = icmp eq i64 %5537, 0
  %5553 = zext i1 %5552 to i8
  store i8 %5553, i8* %33, align 1, !tbaa !2448
  %5554 = lshr i64 %5537, 63
  %5555 = trunc i64 %5554 to i8
  store i8 %5555, i8* %36, align 1, !tbaa !2449
  %5556 = lshr i64 %5528, 63
  %5557 = xor i64 %5554, %5556
  %5558 = xor i64 %5554, %5536
  %5559 = add nuw nsw i64 %5557, %5558
  %5560 = icmp eq i64 %5559, 2
  %5561 = zext i1 %5560 to i8
  store i8 %5561, i8* %42, align 1, !tbaa !2450
  %5562 = add i64 %4643, 21
  store i64 %5562, i64* %PC, align 8
  %5563 = load i32, i32* %6155, align 4
  %5564 = zext i32 %5563 to i64
  store i64 %5564, i64* %RDX, align 8, !tbaa !2428
  %5565 = add i64 %4643, 24
  store i64 %5565, i64* %PC, align 8
  %5566 = load i32, i32* %6150, align 4
  %5567 = sub i32 %5563, %5566
  %5568 = zext i32 %5567 to i64
  store i64 %5568, i64* %RDX, align 8, !tbaa !2428
  %5569 = icmp ult i32 %5563, %5566
  %5570 = zext i1 %5569 to i8
  store i8 %5570, i8* %17, align 1, !tbaa !2432
  %5571 = and i32 %5567, 255
  %5572 = tail call i32 @llvm.ctpop.i32(i32 %5571) #8
  %5573 = trunc i32 %5572 to i8
  %5574 = and i8 %5573, 1
  %5575 = xor i8 %5574, 1
  store i8 %5575, i8* %24, align 1, !tbaa !2446
  %5576 = xor i32 %5566, %5563
  %5577 = xor i32 %5576, %5567
  %5578 = lshr i32 %5577, 4
  %5579 = trunc i32 %5578 to i8
  %5580 = and i8 %5579, 1
  store i8 %5580, i8* %30, align 1, !tbaa !2447
  %5581 = icmp eq i32 %5567, 0
  %5582 = zext i1 %5581 to i8
  store i8 %5582, i8* %33, align 1, !tbaa !2448
  %5583 = lshr i32 %5567, 31
  %5584 = trunc i32 %5583 to i8
  store i8 %5584, i8* %36, align 1, !tbaa !2449
  %5585 = lshr i32 %5563, 31
  %5586 = lshr i32 %5566, 31
  %5587 = xor i32 %5586, %5585
  %5588 = xor i32 %5583, %5585
  %5589 = add nuw nsw i32 %5588, %5587
  %5590 = icmp eq i32 %5589, 2
  %5591 = zext i1 %5590 to i8
  store i8 %5591, i8* %42, align 1, !tbaa !2450
  %5592 = sext i32 %5567 to i64
  store i64 %5592, i64* %RCX, align 8, !tbaa !2428
  %5593 = shl nsw i64 %5592, 2
  %5594 = add i64 %5593, %5537
  %5595 = add i64 %4643, 31
  store i64 %5595, i64* %PC, align 8
  %5596 = inttoptr i64 %5594 to i32*
  %5597 = load i32, i32* %5596, align 4
  %5598 = add i32 %5597, 1
  %5599 = icmp ne i32 %5597, -1
  %5600 = zext i1 %5599 to i8
  store i8 %5600, i8* %17, align 1, !tbaa !2432
  %5601 = and i32 %5598, 255
  %5602 = tail call i32 @llvm.ctpop.i32(i32 %5601) #8
  %5603 = trunc i32 %5602 to i8
  %5604 = and i8 %5603, 1
  %5605 = xor i8 %5604, 1
  store i8 %5605, i8* %24, align 1, !tbaa !2446
  %5606 = xor i32 %5597, 16
  %5607 = xor i32 %5598, %5606
  %5608 = lshr i32 %5607, 4
  %5609 = trunc i32 %5608 to i8
  %5610 = and i8 %5609, 1
  store i8 %5610, i8* %30, align 1, !tbaa !2447
  %5611 = icmp eq i32 %5598, 0
  %5612 = zext i1 %5611 to i8
  store i8 %5612, i8* %33, align 1, !tbaa !2448
  %5613 = lshr i32 %5598, 31
  %5614 = trunc i32 %5613 to i8
  store i8 %5614, i8* %36, align 1, !tbaa !2449
  %5615 = lshr i32 %5597, 31
  %5616 = xor i32 %5615, 1
  %5617 = xor i32 %5613, %5615
  %5618 = add nuw nsw i32 %5617, %5616
  %5619 = icmp eq i32 %5618, 2
  %5620 = zext i1 %5619 to i8
  store i8 %5620, i8* %42, align 1, !tbaa !2450
  %.v145 = select i1 %5611, i64 128, i64 37
  %5621 = add i64 %4643, %.v145
  store i64 %5621, i64* %PC, align 8, !tbaa !2428
  br i1 %5611, label %block_4013f1, label %block_401396

block_400af6:                                     ; preds = %block_400ad4, %block_400b0a
  %5622 = phi i64 [ %.pre26, %block_400ad4 ], [ %5113, %block_400b0a ]
  %5623 = load i64, i64* %RBP, align 8
  %5624 = add i64 %5623, -4
  %5625 = add i64 %5622, 3
  store i64 %5625, i64* %PC, align 8
  %5626 = inttoptr i64 %5624 to i32*
  %5627 = load i32, i32* %5626, align 4
  %5628 = zext i32 %5627 to i64
  store i64 %5628, i64* %RAX, align 8, !tbaa !2428
  %5629 = add i64 %5623, -12
  %5630 = add i64 %5622, 7
  store i64 %5630, i64* %PC, align 8
  %5631 = inttoptr i64 %5629 to i32*
  %5632 = load i32, i32* %5631, align 4
  %5633 = sext i32 %5632 to i64
  store i64 %5633, i64* %RCX, align 8, !tbaa !2428
  %5634 = shl nsw i64 %5633, 2
  %5635 = add i64 %5623, -1328
  %5636 = add i64 %5635, %5634
  %5637 = add i64 %5622, 14
  store i64 %5637, i64* %PC, align 8
  %5638 = inttoptr i64 %5636 to i32*
  %5639 = load i32, i32* %5638, align 4
  %5640 = sub i32 %5627, %5639
  %5641 = icmp ult i32 %5627, %5639
  %5642 = zext i1 %5641 to i8
  store i8 %5642, i8* %17, align 1, !tbaa !2432
  %5643 = and i32 %5640, 255
  %5644 = tail call i32 @llvm.ctpop.i32(i32 %5643) #8
  %5645 = trunc i32 %5644 to i8
  %5646 = and i8 %5645, 1
  %5647 = xor i8 %5646, 1
  store i8 %5647, i8* %24, align 1, !tbaa !2446
  %5648 = xor i32 %5639, %5627
  %5649 = xor i32 %5648, %5640
  %5650 = lshr i32 %5649, 4
  %5651 = trunc i32 %5650 to i8
  %5652 = and i8 %5651, 1
  store i8 %5652, i8* %30, align 1, !tbaa !2447
  %5653 = icmp eq i32 %5640, 0
  %5654 = zext i1 %5653 to i8
  store i8 %5654, i8* %33, align 1, !tbaa !2448
  %5655 = lshr i32 %5640, 31
  %5656 = trunc i32 %5655 to i8
  store i8 %5656, i8* %36, align 1, !tbaa !2449
  %5657 = lshr i32 %5627, 31
  %5658 = lshr i32 %5639, 31
  %5659 = xor i32 %5658, %5657
  %5660 = xor i32 %5655, %5657
  %5661 = add nuw nsw i32 %5660, %5659
  %5662 = icmp eq i32 %5661, 2
  %5663 = zext i1 %5662 to i8
  store i8 %5663, i8* %42, align 1, !tbaa !2450
  %5664 = icmp ne i8 %5656, 0
  %5665 = xor i1 %5664, %5662
  %.demorgan116 = or i1 %5653, %5665
  %.v117 = select i1 %.demorgan116, i64 20, i64 135
  %5666 = add i64 %5622, %.v117
  store i64 %5666, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan116, label %block_400b0a, label %block_400b7d

block_40102e:                                     ; preds = %block_40100c, %block_401042
  %5667 = phi i64 [ %5236, %block_401042 ], [ %.pre95, %block_40100c ]
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
  store i8 %5687, i8* %17, align 1, !tbaa !2432
  %5688 = and i32 %5685, 255
  %5689 = tail call i32 @llvm.ctpop.i32(i32 %5688) #8
  %5690 = trunc i32 %5689 to i8
  %5691 = and i8 %5690, 1
  %5692 = xor i8 %5691, 1
  store i8 %5692, i8* %24, align 1, !tbaa !2446
  %5693 = xor i32 %5684, %5672
  %5694 = xor i32 %5693, %5685
  %5695 = lshr i32 %5694, 4
  %5696 = trunc i32 %5695 to i8
  %5697 = and i8 %5696, 1
  store i8 %5697, i8* %30, align 1, !tbaa !2447
  %5698 = icmp eq i32 %5685, 0
  %5699 = zext i1 %5698 to i8
  store i8 %5699, i8* %33, align 1, !tbaa !2448
  %5700 = lshr i32 %5685, 31
  %5701 = trunc i32 %5700 to i8
  store i8 %5701, i8* %36, align 1, !tbaa !2449
  %5702 = lshr i32 %5672, 31
  %5703 = lshr i32 %5684, 31
  %5704 = xor i32 %5703, %5702
  %5705 = xor i32 %5700, %5702
  %5706 = add nuw nsw i32 %5705, %5704
  %5707 = icmp eq i32 %5706, 2
  %5708 = zext i1 %5707 to i8
  store i8 %5708, i8* %42, align 1, !tbaa !2450
  %5709 = icmp ne i8 %5701, 0
  %5710 = xor i1 %5709, %5707
  %.demorgan128 = or i1 %5698, %5710
  %.v129 = select i1 %.demorgan128, i64 20, i64 88
  %5711 = add i64 %5667, %.v129
  store i64 %5711, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan128, label %block_401042, label %block_401086

block_40155f:                                     ; preds = %block_4014f7, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1
  %5712 = phi i64 [ %1858, %block_4014f7 ], [ %.pre79, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %5713 = phi i64 [ %2474, %block_4014f7 ], [ %.pre78, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %MEMORY.49 = phi %struct.Memory* [ %MEMORY.19, %block_4014f7 ], [ %2401, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit1 ]
  %5714 = add i64 %5712, -8
  %5715 = add i64 %5713, 8
  store i64 %5715, i64* %PC, align 8
  %5716 = inttoptr i64 %5714 to i32*
  %5717 = load i32, i32* %5716, align 4
  %5718 = add i32 %5717, 1
  %5719 = zext i32 %5718 to i64
  store i64 %5719, i64* %RAX, align 8, !tbaa !2428
  %5720 = icmp eq i32 %5717, -1
  %5721 = icmp eq i32 %5718, 0
  %5722 = or i1 %5720, %5721
  %5723 = zext i1 %5722 to i8
  store i8 %5723, i8* %17, align 1, !tbaa !2432
  %5724 = and i32 %5718, 255
  %5725 = tail call i32 @llvm.ctpop.i32(i32 %5724) #8
  %5726 = trunc i32 %5725 to i8
  %5727 = and i8 %5726, 1
  %5728 = xor i8 %5727, 1
  store i8 %5728, i8* %24, align 1, !tbaa !2446
  %5729 = xor i32 %5717, %5718
  %5730 = lshr i32 %5729, 4
  %5731 = trunc i32 %5730 to i8
  %5732 = and i8 %5731, 1
  store i8 %5732, i8* %30, align 1, !tbaa !2447
  %5733 = zext i1 %5721 to i8
  store i8 %5733, i8* %33, align 1, !tbaa !2448
  %5734 = lshr i32 %5718, 31
  %5735 = trunc i32 %5734 to i8
  store i8 %5735, i8* %36, align 1, !tbaa !2449
  %5736 = lshr i32 %5717, 31
  %5737 = xor i32 %5734, %5736
  %5738 = add nuw nsw i32 %5737, %5734
  %5739 = icmp eq i32 %5738, 2
  %5740 = zext i1 %5739 to i8
  store i8 %5740, i8* %42, align 1, !tbaa !2450
  %5741 = add i64 %5713, 14
  store i64 %5741, i64* %PC, align 8
  store i32 %5718, i32* %5716, align 4
  %5742 = load i64, i64* %PC, align 8
  %5743 = add i64 %5742, -138
  store i64 %5743, i64* %PC, align 8, !tbaa !2428
  br label %block_4014e3

block_40177e:                                     ; preds = %block_40176c
  %5744 = add i64 %1459, 12
  store i64 %5744, i64* %PC, align 8
  %5745 = inttoptr i64 %1464 to i32*
  %5746 = load i32, i32* %5745, align 4
  %5747 = sext i32 %5746 to i64
  store i64 %5747, i64* %RAX, align 8, !tbaa !2428
  %5748 = shl nsw i64 %5747, 2
  %5749 = add i64 %5748, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %5750 = add i64 %1459, 19
  store i64 %5750, i64* %PC, align 8
  %5751 = inttoptr i64 %5749 to i32*
  %5752 = load i32, i32* %5751, align 4
  %5753 = zext i32 %5752 to i64
  store i64 %5753, i64* %RCX, align 8, !tbaa !2428
  %5754 = add i64 %1459, 23
  store i64 %5754, i64* %PC, align 8
  %5755 = load i32, i32* %1275, align 4
  %5756 = sext i32 %5755 to i64
  store i64 %5756, i64* %RAX, align 8, !tbaa !2428
  %5757 = shl nsw i64 %5756, 2
  %5758 = add i64 %5757, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %5759 = add i64 %1459, 30
  store i64 %5759, i64* %PC, align 8
  %5760 = inttoptr i64 %5758 to i32*
  store i32 %5752, i32* %5760, align 4
  %5761 = load i64, i64* %PC, align 8
  %5762 = add i64 %5761, 20
  store i64 %5762, i64* %PC, align 8, !tbaa !2428
  br label %block_4017b0

block_401825:                                     ; preds = %block_401816, %block_4017f3
  %5763 = phi i64 [ %.pre98, %block_401816 ], [ %2965, %block_4017f3 ]
  %5764 = load i64, i64* %RBP, align 8
  %5765 = add i64 %5764, -4
  %5766 = add i64 %5763, 8
  store i64 %5766, i64* %PC, align 8
  %5767 = inttoptr i64 %5765 to i32*
  %5768 = load i32, i32* %5767, align 4
  %5769 = add i32 %5768, 1
  %5770 = zext i32 %5769 to i64
  store i64 %5770, i64* %RAX, align 8, !tbaa !2428
  %5771 = icmp eq i32 %5768, -1
  %5772 = icmp eq i32 %5769, 0
  %5773 = or i1 %5771, %5772
  %5774 = zext i1 %5773 to i8
  store i8 %5774, i8* %17, align 1, !tbaa !2432
  %5775 = and i32 %5769, 255
  %5776 = tail call i32 @llvm.ctpop.i32(i32 %5775) #8
  %5777 = trunc i32 %5776 to i8
  %5778 = and i8 %5777, 1
  %5779 = xor i8 %5778, 1
  store i8 %5779, i8* %24, align 1, !tbaa !2446
  %5780 = xor i32 %5768, %5769
  %5781 = lshr i32 %5780, 4
  %5782 = trunc i32 %5781 to i8
  %5783 = and i8 %5782, 1
  store i8 %5783, i8* %30, align 1, !tbaa !2447
  %5784 = zext i1 %5772 to i8
  store i8 %5784, i8* %33, align 1, !tbaa !2448
  %5785 = lshr i32 %5769, 31
  %5786 = trunc i32 %5785 to i8
  store i8 %5786, i8* %36, align 1, !tbaa !2449
  %5787 = lshr i32 %5768, 31
  %5788 = xor i32 %5785, %5787
  %5789 = add nuw nsw i32 %5788, %5785
  %5790 = icmp eq i32 %5789, 2
  %5791 = zext i1 %5790 to i8
  store i8 %5791, i8* %42, align 1, !tbaa !2450
  %5792 = add i64 %5763, 14
  store i64 %5792, i64* %PC, align 8
  store i32 %5769, i32* %5767, align 4
  %5793 = load i64, i64* %PC, align 8
  %5794 = add i64 %5793, -95
  store i64 %5794, i64* %PC, align 8, !tbaa !2428
  br label %block_4017d4

block_400963:                                     ; preds = %block_400956
  %5795 = add i64 %1546, 4
  store i64 %5795, i64* %PC, align 8
  %5796 = load i32, i32* %1520, align 4
  %5797 = sext i32 %5796 to i64
  store i64 %5797, i64* %RAX, align 8, !tbaa !2428
  %5798 = shl nsw i64 %5797, 2
  %5799 = add i64 %5798, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %5800 = add i64 %1546, 12
  store i64 %5800, i64* %PC, align 8
  %5801 = inttoptr i64 %5799 to i32*
  %5802 = load i32, i32* %5801, align 4
  %5803 = add i32 %5802, 1
  %5804 = icmp ne i32 %5802, -1
  %5805 = zext i1 %5804 to i8
  store i8 %5805, i8* %17, align 1, !tbaa !2432
  %5806 = and i32 %5803, 255
  %5807 = tail call i32 @llvm.ctpop.i32(i32 %5806) #8
  %5808 = trunc i32 %5807 to i8
  %5809 = and i8 %5808, 1
  %5810 = xor i8 %5809, 1
  store i8 %5810, i8* %24, align 1, !tbaa !2446
  %5811 = xor i32 %5802, 16
  %5812 = xor i32 %5803, %5811
  %5813 = lshr i32 %5812, 4
  %5814 = trunc i32 %5813 to i8
  %5815 = and i8 %5814, 1
  store i8 %5815, i8* %30, align 1, !tbaa !2447
  %5816 = icmp eq i32 %5803, 0
  %5817 = zext i1 %5816 to i8
  store i8 %5817, i8* %33, align 1, !tbaa !2448
  %5818 = lshr i32 %5803, 31
  %5819 = trunc i32 %5818 to i8
  store i8 %5819, i8* %36, align 1, !tbaa !2449
  %5820 = lshr i32 %5802, 31
  %5821 = xor i32 %5820, 1
  %5822 = xor i32 %5818, %5820
  %5823 = add nuw nsw i32 %5822, %5821
  %5824 = icmp eq i32 %5823, 2
  %5825 = zext i1 %5824 to i8
  store i8 %5825, i8* %42, align 1, !tbaa !2450
  %.v111 = select i1 %5816, i64 88, i64 18
  %5826 = add i64 %1546, %.v111
  store i64 %5826, i64* %PC, align 8, !tbaa !2428
  br i1 %5816, label %block_4009bb, label %block_400975

block_4015c8:                                     ; preds = %block_401631, %block_40158c
  %5827 = phi i64 [ %.pre80, %block_40158c ], [ %1933, %block_401631 ]
  %MEMORY.51 = phi %struct.Memory* [ %MEMORY.19, %block_40158c ], [ %MEMORY.20, %block_401631 ]
  %5828 = load i64, i64* %RBP, align 8
  %5829 = add i64 %5828, -8
  %5830 = add i64 %5827, 3
  store i64 %5830, i64* %PC, align 8
  %5831 = inttoptr i64 %5829 to i32*
  %5832 = load i32, i32* %5831, align 4
  %5833 = zext i32 %5832 to i64
  store i64 %5833, i64* %RAX, align 8, !tbaa !2428
  %5834 = add i64 %5828, -12
  %5835 = add i64 %5827, 7
  store i64 %5835, i64* %PC, align 8
  %5836 = inttoptr i64 %5834 to i32*
  %5837 = load i32, i32* %5836, align 4
  %5838 = sext i32 %5837 to i64
  store i64 %5838, i64* %RCX, align 8, !tbaa !2428
  %5839 = shl nsw i64 %5838, 2
  %5840 = add i64 %5828, -1328
  %5841 = add i64 %5840, %5839
  %5842 = add i64 %5827, 14
  store i64 %5842, i64* %PC, align 8
  %5843 = inttoptr i64 %5841 to i32*
  %5844 = load i32, i32* %5843, align 4
  %5845 = sub i32 %5832, %5844
  %5846 = icmp ult i32 %5832, %5844
  %5847 = zext i1 %5846 to i8
  store i8 %5847, i8* %17, align 1, !tbaa !2432
  %5848 = and i32 %5845, 255
  %5849 = tail call i32 @llvm.ctpop.i32(i32 %5848) #8
  %5850 = trunc i32 %5849 to i8
  %5851 = and i8 %5850, 1
  %5852 = xor i8 %5851, 1
  store i8 %5852, i8* %24, align 1, !tbaa !2446
  %5853 = xor i32 %5844, %5832
  %5854 = xor i32 %5853, %5845
  %5855 = lshr i32 %5854, 4
  %5856 = trunc i32 %5855 to i8
  %5857 = and i8 %5856, 1
  store i8 %5857, i8* %30, align 1, !tbaa !2447
  %5858 = icmp eq i32 %5845, 0
  %5859 = zext i1 %5858 to i8
  store i8 %5859, i8* %33, align 1, !tbaa !2448
  %5860 = lshr i32 %5845, 31
  %5861 = trunc i32 %5860 to i8
  store i8 %5861, i8* %36, align 1, !tbaa !2449
  %5862 = lshr i32 %5832, 31
  %5863 = lshr i32 %5844, 31
  %5864 = xor i32 %5863, %5862
  %5865 = xor i32 %5860, %5862
  %5866 = add nuw nsw i32 %5865, %5864
  %5867 = icmp eq i32 %5866, 2
  %5868 = zext i1 %5867 to i8
  store i8 %5868, i8* %42, align 1, !tbaa !2450
  %5869 = icmp ne i8 %5861, 0
  %5870 = xor i1 %5869, %5867
  %.v157 = select i1 %5870, i64 20, i64 124
  %5871 = add i64 %5827, %.v157
  store i64 %5871, i64* %PC, align 8, !tbaa !2428
  br i1 %5870, label %block_4015dc, label %block_401644

block_400a23:                                     ; preds = %block_400a16
  %5872 = add i64 %1766, -1248
  %5873 = add i64 %6013, 10
  store i64 %5873, i64* %PC, align 8
  %5874 = inttoptr i64 %5872 to i32*
  store i32 0, i32* %5874, align 4
  %5875 = load i64, i64* %RBP, align 8
  %5876 = add i64 %5875, -1484
  %5877 = load i64, i64* %PC, align 8
  %5878 = add i64 %5877, 6
  store i64 %5878, i64* %PC, align 8
  %5879 = inttoptr i64 %5876 to i32*
  %5880 = load i32, i32* %5879, align 4
  %5881 = zext i32 %5880 to i64
  store i64 %5881, i64* %RAX, align 8, !tbaa !2428
  %5882 = add i64 %5875, -1244
  %5883 = add i64 %5877, 12
  store i64 %5883, i64* %PC, align 8
  %5884 = inttoptr i64 %5882 to i32*
  store i32 %5880, i32* %5884, align 4
  %5885 = load i64, i64* %RBP, align 8
  %5886 = add i64 %5885, -1168
  %5887 = load i64, i64* %PC, align 8
  %5888 = add i64 %5887, 10
  store i64 %5888, i64* %PC, align 8
  %5889 = inttoptr i64 %5886 to i32*
  store i32 0, i32* %5889, align 4
  %5890 = load i64, i64* %RBP, align 8
  %5891 = add i64 %5890, -1104
  %5892 = load i64, i64* %PC, align 8
  %5893 = add i64 %5892, 10
  store i64 %5893, i64* %PC, align 8
  %5894 = inttoptr i64 %5891 to i32*
  store i32 1, i32* %5894, align 4
  %5895 = load i64, i64* %RBP, align 8
  %5896 = add i64 %5895, -4
  %5897 = load i64, i64* %PC, align 8
  %5898 = add i64 %5897, 7
  store i64 %5898, i64* %PC, align 8
  %5899 = inttoptr i64 %5896 to i32*
  store i32 1, i32* %5899, align 4
  %.pre23 = load i64, i64* %PC, align 8
  br label %block_400a54

block_401497:                                     ; preds = %block_401465, %block_401488
  %5900 = phi i64 [ %3935, %block_401465 ], [ %.pre72, %block_401488 ]
  %5901 = load i64, i64* %RBP, align 8
  %5902 = add i64 %5901, -4
  %5903 = add i64 %5900, 8
  store i64 %5903, i64* %PC, align 8
  %5904 = inttoptr i64 %5902 to i32*
  %5905 = load i32, i32* %5904, align 4
  %5906 = add i32 %5905, 1
  %5907 = zext i32 %5906 to i64
  store i64 %5907, i64* %RAX, align 8, !tbaa !2428
  %5908 = icmp eq i32 %5905, -1
  %5909 = icmp eq i32 %5906, 0
  %5910 = or i1 %5908, %5909
  %5911 = zext i1 %5910 to i8
  store i8 %5911, i8* %17, align 1, !tbaa !2432
  %5912 = and i32 %5906, 255
  %5913 = tail call i32 @llvm.ctpop.i32(i32 %5912) #8
  %5914 = trunc i32 %5913 to i8
  %5915 = and i8 %5914, 1
  %5916 = xor i8 %5915, 1
  store i8 %5916, i8* %24, align 1, !tbaa !2446
  %5917 = xor i32 %5905, %5906
  %5918 = lshr i32 %5917, 4
  %5919 = trunc i32 %5918 to i8
  %5920 = and i8 %5919, 1
  store i8 %5920, i8* %30, align 1, !tbaa !2447
  %5921 = zext i1 %5909 to i8
  store i8 %5921, i8* %33, align 1, !tbaa !2448
  %5922 = lshr i32 %5906, 31
  %5923 = trunc i32 %5922 to i8
  store i8 %5923, i8* %36, align 1, !tbaa !2449
  %5924 = lshr i32 %5905, 31
  %5925 = xor i32 %5922, %5924
  %5926 = add nuw nsw i32 %5925, %5922
  %5927 = icmp eq i32 %5926, 2
  %5928 = zext i1 %5927 to i8
  store i8 %5928, i8* %42, align 1, !tbaa !2450
  %5929 = add i64 %5900, 14
  store i64 %5929, i64* %PC, align 8
  store i32 %5906, i32* %5904, align 4
  %5930 = load i64, i64* %PC, align 8
  %5931 = add i64 %5930, -110
  store i64 %5931, i64* %PC, align 8, !tbaa !2428
  br label %block_401437

block_400c1c:                                     ; preds = %block_400c00
  %5932 = add i64 %6318, 3
  store i64 %5932, i64* %PC, align 8
  %5933 = load i32, i32* %139, align 4
  %5934 = zext i32 %5933 to i64
  store i64 %5934, i64* %RAX, align 8, !tbaa !2428
  %5935 = add i64 %6318, 6
  store i64 %5935, i64* %PC, align 8
  store i32 %5933, i32* %6274, align 4
  %.pre31 = load i64, i64* %PC, align 8
  %.pre32 = load i64, i64* %RBP, align 8
  br label %block_400c22

block_401217:                                     ; preds = %block_401205
  %5936 = add i64 %1797, -1168
  store i64 %5936, i64* %RAX, align 8, !tbaa !2428
  %5937 = add i64 %6217, 11
  store i64 %5937, i64* %PC, align 8
  %5938 = load i32, i32* %1805, align 4
  %5939 = sext i32 %5938 to i64
  %5940 = shl nsw i64 %5939, 6
  store i64 %5940, i64* %RCX, align 8, !tbaa !2428
  %5941 = lshr i64 %5939, 57
  %5942 = and i64 %5941, 1
  %5943 = add i64 %5940, %5936
  store i64 %5943, i64* %RAX, align 8, !tbaa !2428
  %5944 = icmp ult i64 %5943, %5936
  %5945 = icmp ult i64 %5943, %5940
  %5946 = or i1 %5944, %5945
  %5947 = zext i1 %5946 to i8
  store i8 %5947, i8* %17, align 1, !tbaa !2432
  %5948 = trunc i64 %5943 to i32
  %5949 = and i32 %5948, 255
  %5950 = tail call i32 @llvm.ctpop.i32(i32 %5949) #8
  %5951 = trunc i32 %5950 to i8
  %5952 = and i8 %5951, 1
  %5953 = xor i8 %5952, 1
  store i8 %5953, i8* %24, align 1, !tbaa !2446
  %5954 = xor i64 %5936, %5943
  %5955 = lshr i64 %5954, 4
  %5956 = trunc i64 %5955 to i8
  %5957 = and i8 %5956, 1
  store i8 %5957, i8* %30, align 1, !tbaa !2447
  %5958 = icmp eq i64 %5943, 0
  %5959 = zext i1 %5958 to i8
  store i8 %5959, i8* %33, align 1, !tbaa !2448
  %5960 = lshr i64 %5943, 63
  %5961 = trunc i64 %5960 to i8
  store i8 %5961, i8* %36, align 1, !tbaa !2449
  %5962 = lshr i64 %5936, 63
  %5963 = xor i64 %5960, %5962
  %5964 = xor i64 %5960, %5942
  %5965 = add nuw nsw i64 %5963, %5964
  %5966 = icmp eq i64 %5965, 2
  %5967 = zext i1 %5966 to i8
  store i8 %5967, i8* %42, align 1, !tbaa !2450
  %5968 = add i64 %6217, 22
  store i64 %5968, i64* %PC, align 8
  %5969 = load i32, i32* %1800, align 4
  %5970 = sext i32 %5969 to i64
  store i64 %5970, i64* %RCX, align 8, !tbaa !2428
  %5971 = shl nsw i64 %5970, 2
  %5972 = add i64 %5971, %5943
  %5973 = add i64 %6217, 26
  store i64 %5973, i64* %PC, align 8
  %5974 = inttoptr i64 %5972 to i32*
  %5975 = load i32, i32* %5974, align 4
  %5976 = add i32 %5975, 1
  %5977 = icmp ne i32 %5975, -1
  %5978 = zext i1 %5977 to i8
  store i8 %5978, i8* %17, align 1, !tbaa !2432
  %5979 = and i32 %5976, 255
  %5980 = tail call i32 @llvm.ctpop.i32(i32 %5979) #8
  %5981 = trunc i32 %5980 to i8
  %5982 = and i8 %5981, 1
  %5983 = xor i8 %5982, 1
  store i8 %5983, i8* %24, align 1, !tbaa !2446
  %5984 = xor i32 %5975, 16
  %5985 = xor i32 %5976, %5984
  %5986 = lshr i32 %5985, 4
  %5987 = trunc i32 %5986 to i8
  %5988 = and i8 %5987, 1
  store i8 %5988, i8* %30, align 1, !tbaa !2447
  %5989 = icmp eq i32 %5976, 0
  %5990 = zext i1 %5989 to i8
  store i8 %5990, i8* %33, align 1, !tbaa !2448
  %5991 = lshr i32 %5976, 31
  %5992 = trunc i32 %5991 to i8
  store i8 %5992, i8* %36, align 1, !tbaa !2449
  %5993 = lshr i32 %5975, 31
  %5994 = xor i32 %5993, 1
  %5995 = xor i32 %5991, %5993
  %5996 = add nuw nsw i32 %5995, %5994
  %5997 = icmp eq i32 %5996, 2
  %5998 = zext i1 %5997 to i8
  store i8 %5998, i8* %42, align 1, !tbaa !2450
  %.v142 = select i1 %5989, i64 100, i64 32
  %5999 = add i64 %6217, %.v142
  store i64 %5999, i64* %PC, align 8, !tbaa !2428
  %.pre62 = load i64, i64* %RBP, align 8
  br i1 %5989, label %block_40127b, label %block_401237

block_4011ea:                                     ; preds = %block_4011d3
  store i32 1, i32* %3940, align 4
  %.pre61 = load i64, i64* %PC, align 8
  br label %block_4011f1

block_400a16:                                     ; preds = %block_400936
  %6000 = add i64 %1766, -1496
  %6001 = add i64 %1795, 7
  store i64 %6001, i64* %PC, align 8
  %6002 = inttoptr i64 %6000 to i32*
  %6003 = load i32, i32* %6002, align 4
  store i8 0, i8* %17, align 1, !tbaa !2432
  %6004 = and i32 %6003, 255
  %6005 = tail call i32 @llvm.ctpop.i32(i32 %6004) #8
  %6006 = trunc i32 %6005 to i8
  %6007 = and i8 %6006, 1
  %6008 = xor i8 %6007, 1
  store i8 %6008, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  %6009 = icmp eq i32 %6003, 0
  %6010 = zext i1 %6009 to i8
  store i8 %6010, i8* %33, align 1, !tbaa !2448
  %6011 = lshr i32 %6003, 31
  %6012 = trunc i32 %6011 to i8
  store i8 %6012, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %.v113 = select i1 %6009, i64 3511, i64 13
  %6013 = add i64 %1795, %.v113
  store i64 %6013, i64* %PC, align 8, !tbaa !2428
  br i1 %6009, label %block_4017cd, label %block_400a23

block_400ad4:                                     ; preds = %block_400ab9
  %6014 = add i64 %3382, 4
  store i64 %6014, i64* %PC, align 8
  %6015 = load i32, i32* %3350, align 4
  %6016 = sext i32 %6015 to i64
  store i64 %6016, i64* %RAX, align 8, !tbaa !2428
  %6017 = shl nsw i64 %6016, 2
  %6018 = add i64 %3346, -1328
  %6019 = add i64 %6018, %6017
  %6020 = add i64 %3382, 11
  store i64 %6020, i64* %PC, align 8
  %6021 = inttoptr i64 %6019 to i32*
  %6022 = load i32, i32* %6021, align 4
  %6023 = zext i32 %6022 to i64
  store i64 %6023, i64* %RCX, align 8, !tbaa !2428
  %6024 = add i64 %3382, 14
  store i64 %6024, i64* %PC, align 8
  %6025 = load i32, i32* %3350, align 4
  %6026 = add i32 %6025, 1
  %6027 = zext i32 %6026 to i64
  store i64 %6027, i64* %RDX, align 8, !tbaa !2428
  %6028 = icmp eq i32 %6025, -1
  %6029 = icmp eq i32 %6026, 0
  %6030 = or i1 %6028, %6029
  %6031 = zext i1 %6030 to i8
  store i8 %6031, i8* %17, align 1, !tbaa !2432
  %6032 = and i32 %6026, 255
  %6033 = tail call i32 @llvm.ctpop.i32(i32 %6032) #8
  %6034 = trunc i32 %6033 to i8
  %6035 = and i8 %6034, 1
  %6036 = xor i8 %6035, 1
  store i8 %6036, i8* %24, align 1, !tbaa !2446
  %6037 = xor i32 %6025, %6026
  %6038 = lshr i32 %6037, 4
  %6039 = trunc i32 %6038 to i8
  %6040 = and i8 %6039, 1
  store i8 %6040, i8* %30, align 1, !tbaa !2447
  %6041 = zext i1 %6029 to i8
  store i8 %6041, i8* %33, align 1, !tbaa !2448
  %6042 = lshr i32 %6026, 31
  %6043 = trunc i32 %6042 to i8
  store i8 %6043, i8* %36, align 1, !tbaa !2449
  %6044 = lshr i32 %6025, 31
  %6045 = xor i32 %6042, %6044
  %6046 = add nuw nsw i32 %6045, %6042
  %6047 = icmp eq i32 %6046, 2
  %6048 = zext i1 %6047 to i8
  store i8 %6048, i8* %42, align 1, !tbaa !2450
  %6049 = sext i32 %6026 to i64
  store i64 %6049, i64* %RAX, align 8, !tbaa !2428
  %6050 = shl nsw i64 %6049, 2
  %6051 = add i64 %6018, %6050
  %6052 = add i64 %3382, 27
  store i64 %6052, i64* %PC, align 8
  %6053 = inttoptr i64 %6051 to i32*
  store i32 %6022, i32* %6053, align 4
  %6054 = load i64, i64* %RBP, align 8
  %6055 = add i64 %6054, -4
  %6056 = load i64, i64* %PC, align 8
  %6057 = add i64 %6056, 7
  store i64 %6057, i64* %PC, align 8
  %6058 = inttoptr i64 %6055 to i32*
  store i32 0, i32* %6058, align 4
  %.pre26 = load i64, i64* %PC, align 8
  br label %block_400af6

block_400c22:                                     ; preds = %block_400c00, %block_400c1c, %block_400be5
  %6059 = phi i64 [ %135, %block_400c00 ], [ %.pre32, %block_400c1c ], [ %135, %block_400be5 ]
  %6060 = phi i64 [ %6318, %block_400c00 ], [ %.pre31, %block_400c1c ], [ %171, %block_400be5 ]
  %6061 = add i64 %6059, -8
  %6062 = add i64 %6060, 9
  store i64 %6062, i64* %PC, align 8
  %6063 = inttoptr i64 %6061 to i32*
  %6064 = load i32, i32* %6063, align 4
  store i8 0, i8* %17, align 1, !tbaa !2432
  %6065 = and i32 %6064, 255
  %6066 = tail call i32 @llvm.ctpop.i32(i32 %6065) #8
  %6067 = trunc i32 %6066 to i8
  %6068 = and i8 %6067, 1
  %6069 = xor i8 %6068, 1
  store i8 %6069, i8* %24, align 1, !tbaa !2446
  store i8 0, i8* %30, align 1, !tbaa !2447
  %6070 = icmp eq i32 %6064, 0
  %6071 = zext i1 %6070 to i8
  store i8 %6071, i8* %33, align 1, !tbaa !2448
  %6072 = lshr i32 %6064, 31
  %6073 = trunc i32 %6072 to i8
  store i8 %6073, i8* %36, align 1, !tbaa !2449
  store i8 0, i8* %42, align 1, !tbaa !2450
  %6074 = xor i1 %6070, true
  %6075 = icmp eq i8 %6073, 0
  %6076 = and i1 %6075, %6074
  %.v168 = select i1 %6076, i64 -61, i64 15
  %6077 = add i64 %6060, %.v168
  store i64 %6077, i64* %PC, align 8, !tbaa !2428
  br i1 %6076, label %block_400be5, label %block_400c31

block_40100c:                                     ; preds = %block_400ffe
  %6078 = add i64 %59, -12
  %6079 = add i64 %71, 3
  store i64 %6079, i64* %PC, align 8
  %6080 = inttoptr i64 %6078 to i32*
  %6081 = load i32, i32* %6080, align 4
  %6082 = add i32 %6081, 1
  %6083 = zext i32 %6082 to i64
  store i64 %6083, i64* %RAX, align 8, !tbaa !2428
  %6084 = icmp eq i32 %6081, -1
  %6085 = icmp eq i32 %6082, 0
  %6086 = or i1 %6084, %6085
  %6087 = zext i1 %6086 to i8
  store i8 %6087, i8* %17, align 1, !tbaa !2432
  %6088 = and i32 %6082, 255
  %6089 = tail call i32 @llvm.ctpop.i32(i32 %6088) #8
  %6090 = trunc i32 %6089 to i8
  %6091 = and i8 %6090, 1
  %6092 = xor i8 %6091, 1
  store i8 %6092, i8* %24, align 1, !tbaa !2446
  %6093 = xor i32 %6081, %6082
  %6094 = lshr i32 %6093, 4
  %6095 = trunc i32 %6094 to i8
  %6096 = and i8 %6095, 1
  store i8 %6096, i8* %30, align 1, !tbaa !2447
  %6097 = zext i1 %6085 to i8
  store i8 %6097, i8* %33, align 1, !tbaa !2448
  %6098 = lshr i32 %6082, 31
  %6099 = trunc i32 %6098 to i8
  store i8 %6099, i8* %36, align 1, !tbaa !2449
  %6100 = lshr i32 %6081, 31
  %6101 = xor i32 %6098, %6100
  %6102 = add nuw nsw i32 %6101, %6098
  %6103 = icmp eq i32 %6102, 2
  %6104 = zext i1 %6103 to i8
  store i8 %6104, i8* %42, align 1, !tbaa !2450
  %6105 = add i64 %71, 9
  store i64 %6105, i64* %PC, align 8
  store i32 %6082, i32* %6080, align 4
  %6106 = load i64, i64* %RBP, align 8
  %6107 = add i64 %6106, -12
  %6108 = load i64, i64* %PC, align 8
  %6109 = add i64 %6108, 4
  store i64 %6109, i64* %PC, align 8
  %6110 = inttoptr i64 %6107 to i32*
  %6111 = load i32, i32* %6110, align 4
  %6112 = sext i32 %6111 to i64
  store i64 %6112, i64* %RCX, align 8, !tbaa !2428
  %6113 = shl nsw i64 %6112, 2
  %6114 = add i64 %6106, -1328
  %6115 = add i64 %6114, %6113
  %6116 = add i64 %6108, 12
  store i64 %6116, i64* %PC, align 8
  %6117 = inttoptr i64 %6115 to i32*
  %6118 = load i32, i32* %6117, align 4
  %6119 = add i32 %6118, -8
  %6120 = icmp ult i32 %6118, 8
  %6121 = zext i1 %6120 to i8
  store i8 %6121, i8* %17, align 1, !tbaa !2432
  %6122 = and i32 %6119, 255
  %6123 = tail call i32 @llvm.ctpop.i32(i32 %6122) #8
  %6124 = trunc i32 %6123 to i8
  %6125 = and i8 %6124, 1
  %6126 = xor i8 %6125, 1
  store i8 %6126, i8* %24, align 1, !tbaa !2446
  %6127 = xor i32 %6118, %6119
  %6128 = lshr i32 %6127, 4
  %6129 = trunc i32 %6128 to i8
  %6130 = and i8 %6129, 1
  store i8 %6130, i8* %30, align 1, !tbaa !2447
  %6131 = icmp eq i32 %6119, 0
  %6132 = zext i1 %6131 to i8
  store i8 %6132, i8* %33, align 1, !tbaa !2448
  %6133 = lshr i32 %6119, 31
  %6134 = trunc i32 %6133 to i8
  store i8 %6134, i8* %36, align 1, !tbaa !2449
  %6135 = lshr i32 %6118, 31
  %6136 = xor i32 %6133, %6135
  %6137 = add nuw nsw i32 %6136, %6135
  %6138 = icmp eq i32 %6137, 2
  %6139 = zext i1 %6138 to i8
  store i8 %6139, i8* %42, align 1, !tbaa !2450
  %6140 = icmp ne i8 %6134, 0
  %6141 = xor i1 %6140, %6138
  %.demorgan126 = or i1 %6131, %6141
  %.v127 = select i1 %.demorgan126, i64 18, i64 1859
  %6142 = add i64 %6108, %.v127
  %6143 = add i64 %6106, -4
  %6144 = add i64 %6142, 7
  store i64 %6144, i64* %PC, align 8
  %6145 = inttoptr i64 %6143 to i32*
  store i32 0, i32* %6145, align 4
  %.pre95 = load i64, i64* %PC, align 8
  br i1 %.demorgan126, label %block_40102e, label %block_40175f

block_401353:                                     ; preds = %block_40134c, %block_4013f1
  %6146 = phi i64 [ %.pre66, %block_40134c ], [ %103, %block_4013f1 ]
  %MEMORY.54 = phi %struct.Memory* [ %MEMORY.16, %block_40134c ], [ %MEMORY.1, %block_4013f1 ]
  %6147 = load i64, i64* %RBP, align 8
  %6148 = add i64 %6147, -8
  %6149 = add i64 %6146, 3
  store i64 %6149, i64* %PC, align 8
  %6150 = inttoptr i64 %6148 to i32*
  %6151 = load i32, i32* %6150, align 4
  %6152 = zext i32 %6151 to i64
  store i64 %6152, i64* %RAX, align 8, !tbaa !2428
  %6153 = add i64 %6147, -4
  %6154 = add i64 %6146, 6
  store i64 %6154, i64* %PC, align 8
  %6155 = inttoptr i64 %6153 to i32*
  %6156 = load i32, i32* %6155, align 4
  %6157 = sub i32 %6151, %6156
  %6158 = icmp ult i32 %6151, %6156
  %6159 = zext i1 %6158 to i8
  store i8 %6159, i8* %17, align 1, !tbaa !2432
  %6160 = and i32 %6157, 255
  %6161 = tail call i32 @llvm.ctpop.i32(i32 %6160) #8
  %6162 = trunc i32 %6161 to i8
  %6163 = and i8 %6162, 1
  %6164 = xor i8 %6163, 1
  store i8 %6164, i8* %24, align 1, !tbaa !2446
  %6165 = xor i32 %6156, %6151
  %6166 = xor i32 %6165, %6157
  %6167 = lshr i32 %6166, 4
  %6168 = trunc i32 %6167 to i8
  %6169 = and i8 %6168, 1
  store i8 %6169, i8* %30, align 1, !tbaa !2447
  %6170 = icmp eq i32 %6157, 0
  %6171 = zext i1 %6170 to i8
  store i8 %6171, i8* %33, align 1, !tbaa !2448
  %6172 = lshr i32 %6157, 31
  %6173 = trunc i32 %6172 to i8
  store i8 %6173, i8* %36, align 1, !tbaa !2449
  %6174 = lshr i32 %6151, 31
  %6175 = lshr i32 %6156, 31
  %6176 = xor i32 %6175, %6174
  %6177 = xor i32 %6172, %6174
  %6178 = add nuw nsw i32 %6177, %6176
  %6179 = icmp eq i32 %6178, 2
  %6180 = zext i1 %6179 to i8
  store i8 %6180, i8* %42, align 1, !tbaa !2450
  %6181 = icmp ne i8 %6173, 0
  %6182 = xor i1 %6181, %6179
  %.v143 = select i1 %6182, i64 12, i64 177
  %6183 = add i64 %6146, %.v143
  %6184 = add i64 %6183, 4
  store i64 %6184, i64* %PC, align 8
  br i1 %6182, label %block_40135f, label %block_401404

block_401205:                                     ; preds = %block_4011f1
  %6185 = add i64 %1840, 4
  store i64 %6185, i64* %PC, align 8
  %6186 = load i32, i32* %1800, align 4
  %6187 = sext i32 %6186 to i64
  store i64 %6187, i64* %RAX, align 8, !tbaa !2428
  %6188 = shl nsw i64 %6187, 2
  %6189 = add i64 %1797, -1488
  %6190 = add i64 %6189, %6188
  %6191 = add i64 %1840, 12
  store i64 %6191, i64* %PC, align 8
  %6192 = inttoptr i64 %6190 to i32*
  %6193 = load i32, i32* %6192, align 4
  %6194 = add i32 %6193, 1
  %6195 = icmp ne i32 %6193, -1
  %6196 = zext i1 %6195 to i8
  store i8 %6196, i8* %17, align 1, !tbaa !2432
  %6197 = and i32 %6194, 255
  %6198 = tail call i32 @llvm.ctpop.i32(i32 %6197) #8
  %6199 = trunc i32 %6198 to i8
  %6200 = and i8 %6199, 1
  %6201 = xor i8 %6200, 1
  store i8 %6201, i8* %24, align 1, !tbaa !2446
  %6202 = xor i32 %6193, 16
  %6203 = xor i32 %6194, %6202
  %6204 = lshr i32 %6203, 4
  %6205 = trunc i32 %6204 to i8
  %6206 = and i8 %6205, 1
  store i8 %6206, i8* %30, align 1, !tbaa !2447
  %6207 = icmp eq i32 %6194, 0
  %6208 = zext i1 %6207 to i8
  store i8 %6208, i8* %33, align 1, !tbaa !2448
  %6209 = lshr i32 %6194, 31
  %6210 = trunc i32 %6209 to i8
  store i8 %6210, i8* %36, align 1, !tbaa !2449
  %6211 = lshr i32 %6193, 31
  %6212 = xor i32 %6211, 1
  %6213 = xor i32 %6209, %6211
  %6214 = add nuw nsw i32 %6213, %6212
  %6215 = icmp eq i32 %6214, 2
  %6216 = zext i1 %6215 to i8
  store i8 %6216, i8* %42, align 1, !tbaa !2450
  %.v141 = select i1 %6207, i64 118, i64 18
  %6217 = add i64 %1840, %.v141
  store i64 %6217, i64* %PC, align 8, !tbaa !2428
  br i1 %6207, label %block_40127b, label %block_401217

block_401404:                                     ; preds = %block_401353
  %6218 = load i32, i32* %6155, align 4
  %6219 = sext i32 %6218 to i64
  store i64 %6219, i64* %RAX, align 8, !tbaa !2428
  %6220 = shl nsw i64 %6219, 2
  %6221 = add i64 %6147, -1616
  %6222 = add i64 %6221, %6220
  %6223 = add i64 %6183, 12
  store i64 %6223, i64* %PC, align 8
  %6224 = inttoptr i64 %6222 to i32*
  %6225 = load i32, i32* %6224, align 4
  %6226 = sext i32 %6225 to i64
  store i64 %6226, i64* %RAX, align 8, !tbaa !2428
  %6227 = shl nsw i64 %6226, 2
  %6228 = add i64 %6227, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %6229 = add i64 %6183, 19
  store i64 %6229, i64* %PC, align 8
  %6230 = inttoptr i64 %6228 to i32*
  %6231 = load i32, i32* %6230, align 4
  %6232 = zext i32 %6231 to i64
  store i64 %6232, i64* %RCX, align 8, !tbaa !2428
  %6233 = add i64 %6183, 23
  store i64 %6233, i64* %PC, align 8
  %6234 = load i32, i32* %6155, align 4
  %6235 = sext i32 %6234 to i64
  store i64 %6235, i64* %RAX, align 8, !tbaa !2428
  %6236 = shl nsw i64 %6235, 2
  %6237 = add i64 %6221, %6236
  %6238 = add i64 %6183, 30
  store i64 %6238, i64* %PC, align 8
  %6239 = inttoptr i64 %6237 to i32*
  store i32 %6231, i32* %6239, align 4
  %6240 = load i64, i64* %RBP, align 8
  %6241 = add i64 %6240, -4
  %6242 = load i64, i64* %PC, align 8
  %6243 = add i64 %6242, 3
  store i64 %6243, i64* %PC, align 8
  %6244 = inttoptr i64 %6241 to i32*
  %6245 = load i32, i32* %6244, align 4
  %6246 = add i32 %6245, 1
  %6247 = zext i32 %6246 to i64
  store i64 %6247, i64* %RAX, align 8, !tbaa !2428
  %6248 = icmp eq i32 %6245, -1
  %6249 = icmp eq i32 %6246, 0
  %6250 = or i1 %6248, %6249
  %6251 = zext i1 %6250 to i8
  store i8 %6251, i8* %17, align 1, !tbaa !2432
  %6252 = and i32 %6246, 255
  %6253 = tail call i32 @llvm.ctpop.i32(i32 %6252) #8
  %6254 = trunc i32 %6253 to i8
  %6255 = and i8 %6254, 1
  %6256 = xor i8 %6255, 1
  store i8 %6256, i8* %24, align 1, !tbaa !2446
  %6257 = xor i32 %6245, %6246
  %6258 = lshr i32 %6257, 4
  %6259 = trunc i32 %6258 to i8
  %6260 = and i8 %6259, 1
  store i8 %6260, i8* %30, align 1, !tbaa !2447
  %6261 = zext i1 %6249 to i8
  store i8 %6261, i8* %33, align 1, !tbaa !2448
  %6262 = lshr i32 %6246, 31
  %6263 = trunc i32 %6262 to i8
  store i8 %6263, i8* %36, align 1, !tbaa !2449
  %6264 = lshr i32 %6245, 31
  %6265 = xor i32 %6262, %6264
  %6266 = add nuw nsw i32 %6265, %6262
  %6267 = icmp eq i32 %6266, 2
  %6268 = zext i1 %6267 to i8
  store i8 %6268, i8* %42, align 1, !tbaa !2450
  %6269 = add i64 %6242, 9
  store i64 %6269, i64* %PC, align 8
  store i32 %6246, i32* %6244, align 4
  %6270 = load i64, i64* %PC, align 8
  %6271 = add i64 %6270, -570
  store i64 %6271, i64* %PC, align 8, !tbaa !2428
  br label %block_4011f1

block_400c00:                                     ; preds = %block_400be5
  %6272 = add i64 %135, -16
  %6273 = add i64 %171, 4
  store i64 %6273, i64* %PC, align 8
  %6274 = inttoptr i64 %6272 to i32*
  %6275 = load i32, i32* %6274, align 4
  %6276 = sext i32 %6275 to i64
  store i64 %6276, i64* %RAX, align 8, !tbaa !2428
  %6277 = shl nsw i64 %6276, 2
  %6278 = add i64 %135, -1408
  %6279 = add i64 %6278, %6277
  %6280 = add i64 %171, 11
  store i64 %6280, i64* %PC, align 8
  %6281 = inttoptr i64 %6279 to i32*
  %6282 = load i32, i32* %6281, align 4
  %6283 = zext i32 %6282 to i64
  store i64 %6283, i64* %RCX, align 8, !tbaa !2428
  %6284 = add i64 %171, 15
  store i64 %6284, i64* %PC, align 8
  %6285 = load i32, i32* %139, align 4
  %6286 = sext i32 %6285 to i64
  store i64 %6286, i64* %RAX, align 8, !tbaa !2428
  %6287 = shl nsw i64 %6286, 2
  %6288 = add i64 %6278, %6287
  %6289 = add i64 %171, 22
  store i64 %6289, i64* %PC, align 8
  %6290 = inttoptr i64 %6288 to i32*
  %6291 = load i32, i32* %6290, align 4
  %6292 = sub i32 %6282, %6291
  %6293 = icmp ult i32 %6282, %6291
  %6294 = zext i1 %6293 to i8
  store i8 %6294, i8* %17, align 1, !tbaa !2432
  %6295 = and i32 %6292, 255
  %6296 = tail call i32 @llvm.ctpop.i32(i32 %6295) #8
  %6297 = trunc i32 %6296 to i8
  %6298 = and i8 %6297, 1
  %6299 = xor i8 %6298, 1
  store i8 %6299, i8* %24, align 1, !tbaa !2446
  %6300 = xor i32 %6291, %6282
  %6301 = xor i32 %6300, %6292
  %6302 = lshr i32 %6301, 4
  %6303 = trunc i32 %6302 to i8
  %6304 = and i8 %6303, 1
  store i8 %6304, i8* %30, align 1, !tbaa !2447
  %6305 = icmp eq i32 %6292, 0
  %6306 = zext i1 %6305 to i8
  store i8 %6306, i8* %33, align 1, !tbaa !2448
  %6307 = lshr i32 %6292, 31
  %6308 = trunc i32 %6307 to i8
  store i8 %6308, i8* %36, align 1, !tbaa !2449
  %6309 = lshr i32 %6282, 31
  %6310 = lshr i32 %6291, 31
  %6311 = xor i32 %6310, %6309
  %6312 = xor i32 %6307, %6309
  %6313 = add nuw nsw i32 %6312, %6311
  %6314 = icmp eq i32 %6313, 2
  %6315 = zext i1 %6314 to i8
  store i8 %6315, i8* %42, align 1, !tbaa !2450
  %6316 = icmp ne i8 %6308, 0
  %6317 = xor i1 %6316, %6314
  %.v167 = select i1 %6317, i64 28, i64 34
  %6318 = add i64 %171, %.v167
  store i64 %6318, i64* %PC, align 8, !tbaa !2428
  br i1 %6317, label %block_400c1c, label %block_400c22
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
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29) #8
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
  br i1 %34, label %block_40050e, label %block_400523

block_400612:                                     ; preds = %block_4005d9
  %39 = add i64 %80, 766
  %40 = add i64 %80, 5
  %41 = load i64, i64* %RSP, align 8, !tbaa !2428
  %42 = add i64 %41, -8
  %43 = inttoptr i64 %42 to i64*
  store i64 %40, i64* %43, align 8
  store i64 %42, i64* %RSP, align 8, !tbaa !2428
  store i64 %39, i64* %PC, align 8, !tbaa !2428
  %44 = tail call %struct.Memory* @sub_400910_decode_rs_renamed_(%struct.State* nonnull %0, i64 %39, %struct.Memory* %MEMORY.5)
  %45 = load i64, i64* %RBP, align 8
  %46 = add i64 %45, -20
  %47 = load i64, i64* %PC, align 8
  %48 = add i64 %47, 7
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %46 to i32*
  store i32 0, i32* %49, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_40061e

block_4005d9:                                     ; preds = %block_4005e6, %block_4005d2
  %50 = phi i64 [ %596, %block_4005e6 ], [ %.pre6, %block_4005d2 ]
  %51 = load i64, i64* %RBP, align 8
  %52 = add i64 %51, -20
  %53 = add i64 %50, 7
  store i64 %53, i64* %PC, align 8
  %54 = inttoptr i64 %52 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = add i32 %55, -255
  %57 = icmp ult i32 %55, 255
  %58 = zext i1 %57 to i8
  store i8 %58, i8* %11, align 1, !tbaa !2432
  %59 = and i32 %56, 255
  %60 = tail call i32 @llvm.ctpop.i32(i32 %59) #8
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  %63 = xor i8 %62, 1
  store i8 %63, i8* %12, align 1, !tbaa !2446
  %64 = xor i32 %55, 16
  %65 = xor i32 %64, %56
  %66 = lshr i32 %65, 4
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  store i8 %68, i8* %13, align 1, !tbaa !2447
  %69 = icmp eq i32 %56, 0
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %14, align 1, !tbaa !2448
  %71 = lshr i32 %56, 31
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %15, align 1, !tbaa !2449
  %73 = lshr i32 %55, 31
  %74 = xor i32 %71, %73
  %75 = add nuw nsw i32 %74, %73
  %76 = icmp eq i32 %75, 2
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %16, align 1, !tbaa !2450
  %78 = icmp ne i8 %72, 0
  %79 = xor i1 %78, %76
  %.v11 = select i1 %79, i64 13, i64 57
  %80 = add i64 %50, %.v11
  store i64 %80, i64* %PC, align 8, !tbaa !2428
  br i1 %79, label %block_4005e6, label %block_400612

block_40061e:                                     ; preds = %block_40062b, %block_400612
  %81 = phi i64 [ %400, %block_40062b ], [ %.pre7, %block_400612 ]
  %82 = load i64, i64* %RBP, align 8
  %83 = add i64 %82, -20
  %84 = add i64 %81, 7
  store i64 %84, i64* %PC, align 8
  %85 = inttoptr i64 %83 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = add i32 %86, -188
  %88 = icmp ult i32 %86, 188
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %11, align 1, !tbaa !2432
  %90 = and i32 %87, 255
  %91 = tail call i32 @llvm.ctpop.i32(i32 %90) #8
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  %94 = xor i8 %93, 1
  store i8 %94, i8* %12, align 1, !tbaa !2446
  %95 = xor i32 %86, 16
  %96 = xor i32 %95, %87
  %97 = lshr i32 %96, 4
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  store i8 %99, i8* %13, align 1, !tbaa !2447
  %100 = icmp eq i32 %87, 0
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %14, align 1, !tbaa !2448
  %102 = lshr i32 %87, 31
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %15, align 1, !tbaa !2449
  %104 = lshr i32 %86, 31
  %105 = xor i32 %102, %104
  %106 = add nuw nsw i32 %105, %104
  %107 = icmp eq i32 %106, 2
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %16, align 1, !tbaa !2450
  %109 = icmp ne i8 %103, 0
  %110 = xor i1 %109, %107
  %.v12 = select i1 %110, i64 13, i64 56
  %111 = add i64 %81, %.v12
  store i64 %111, i64* %PC, align 8, !tbaa !2428
  br i1 %110, label %block_40062b, label %block_400656

block_4005d2:                                     ; preds = %block_40059b
  %112 = add i64 %143, 7
  store i64 %112, i64* %PC, align 8
  store i32 0, i32* %117, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_4005d9

block_40059b:                                     ; preds = %block_4005a8, %block_400594
  %113 = phi i64 [ %537, %block_4005a8 ], [ %.pre5, %block_400594 ]
  %114 = load i64, i64* %RBP, align 8
  %115 = add i64 %114, -20
  %116 = add i64 %113, 7
  store i64 %116, i64* %PC, align 8
  %117 = inttoptr i64 %115 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = add i32 %118, -188
  %120 = icmp ult i32 %118, 188
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %11, align 1, !tbaa !2432
  %122 = and i32 %119, 255
  %123 = tail call i32 @llvm.ctpop.i32(i32 %122) #8
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %12, align 1, !tbaa !2446
  %127 = xor i32 %118, 16
  %128 = xor i32 %127, %119
  %129 = lshr i32 %128, 4
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  store i8 %131, i8* %13, align 1, !tbaa !2447
  %132 = icmp eq i32 %119, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %14, align 1, !tbaa !2448
  %134 = lshr i32 %119, 31
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %15, align 1, !tbaa !2449
  %136 = lshr i32 %118, 31
  %137 = xor i32 %134, %136
  %138 = add nuw nsw i32 %137, %136
  %139 = icmp eq i32 %138, 2
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %16, align 1, !tbaa !2450
  %141 = icmp ne i8 %135, 0
  %142 = xor i1 %141, %139
  %.v10 = select i1 %142, i64 13, i64 55
  %143 = add i64 %113, %.v10
  store i64 %143, i64* %PC, align 8, !tbaa !2428
  br i1 %142, label %block_4005a8, label %block_4005d2

block_400656:                                     ; preds = %block_40061e
  %144 = load i64, i64* %RSP, align 8
  %145 = add i64 %144, 32
  store i64 %145, i64* %RSP, align 8, !tbaa !2428
  %146 = icmp ugt i64 %144, -33
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %11, align 1, !tbaa !2432
  %148 = trunc i64 %145 to i32
  %149 = and i32 %148, 255
  %150 = tail call i32 @llvm.ctpop.i32(i32 %149) #8
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  %153 = xor i8 %152, 1
  store i8 %153, i8* %12, align 1, !tbaa !2446
  %154 = xor i64 %144, %145
  %155 = lshr i64 %154, 4
  %156 = trunc i64 %155 to i8
  %157 = and i8 %156, 1
  store i8 %157, i8* %13, align 1, !tbaa !2447
  %158 = icmp eq i64 %145, 0
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %14, align 1, !tbaa !2448
  %160 = lshr i64 %145, 63
  %161 = trunc i64 %160 to i8
  store i8 %161, i8* %15, align 1, !tbaa !2449
  %162 = lshr i64 %144, 63
  %163 = xor i64 %160, %162
  %164 = add nuw nsw i64 %163, %160
  %165 = icmp eq i64 %164, 2
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %16, align 1, !tbaa !2450
  %167 = add i64 %111, 5
  store i64 %167, i64* %PC, align 8
  %168 = add i64 %144, 40
  %169 = inttoptr i64 %145 to i64*
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %RBP, align 8, !tbaa !2428
  store i64 %168, i64* %RSP, align 8, !tbaa !2428
  %171 = add i64 %111, 6
  store i64 %171, i64* %PC, align 8
  %172 = inttoptr i64 %168 to i64*
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %PC, align 8, !tbaa !2428
  %174 = add i64 %144, 48
  store i64 %174, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %44

block_400572:                                     ; preds = %block_400568
  %175 = add i64 %462, 3
  store i64 %175, i64* %PC, align 8
  %176 = load i32, i32* %436, align 4
  %177 = add i32 %176, 16
  %178 = zext i32 %177 to i64
  store i64 %178, i64* %RAX, align 8, !tbaa !2428
  %179 = icmp ugt i32 %176, -17
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %11, align 1, !tbaa !2432
  %181 = and i32 %177, 255
  %182 = tail call i32 @llvm.ctpop.i32(i32 %181) #8
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  %185 = xor i8 %184, 1
  store i8 %185, i8* %12, align 1, !tbaa !2446
  %186 = xor i32 %176, 16
  %187 = xor i32 %186, %177
  %188 = lshr i32 %187, 4
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  store i8 %190, i8* %13, align 1, !tbaa !2447
  %191 = icmp eq i32 %177, 0
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %14, align 1, !tbaa !2448
  %193 = lshr i32 %177, 31
  %194 = trunc i32 %193 to i8
  store i8 %194, i8* %15, align 1, !tbaa !2449
  %195 = lshr i32 %176, 31
  %196 = xor i32 %193, %195
  %197 = add nuw nsw i32 %196, %193
  %198 = icmp eq i32 %197, 2
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %16, align 1, !tbaa !2450
  %200 = sext i32 %177 to i64
  store i64 %200, i64* %RCX, align 8, !tbaa !2428
  %201 = shl nsw i64 %200, 2
  %202 = add i64 %201, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %203 = add i64 %462, 20
  store i64 %203, i64* %PC, align 8
  %204 = inttoptr i64 %202 to i32*
  store i32 0, i32* %204, align 4
  %205 = load i64, i64* %RBP, align 8
  %206 = add i64 %205, -20
  %207 = load i64, i64* %PC, align 8
  %208 = add i64 %207, 3
  store i64 %208, i64* %PC, align 8
  %209 = inttoptr i64 %206 to i32*
  %210 = load i32, i32* %209, align 4
  %211 = add i32 %210, 1
  %212 = zext i32 %211 to i64
  store i64 %212, i64* %RAX, align 8, !tbaa !2428
  %213 = icmp eq i32 %210, -1
  %214 = icmp eq i32 %211, 0
  %215 = or i1 %213, %214
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %11, align 1, !tbaa !2432
  %217 = and i32 %211, 255
  %218 = tail call i32 @llvm.ctpop.i32(i32 %217) #8
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  store i8 %221, i8* %12, align 1, !tbaa !2446
  %222 = xor i32 %210, %211
  %223 = lshr i32 %222, 4
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  store i8 %225, i8* %13, align 1, !tbaa !2447
  %226 = zext i1 %214 to i8
  store i8 %226, i8* %14, align 1, !tbaa !2448
  %227 = lshr i32 %211, 31
  %228 = trunc i32 %227 to i8
  store i8 %228, i8* %15, align 1, !tbaa !2449
  %229 = lshr i32 %210, 31
  %230 = xor i32 %227, %229
  %231 = add nuw nsw i32 %230, %227
  %232 = icmp eq i32 %231, 2
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %16, align 1, !tbaa !2450
  %234 = add i64 %207, 9
  store i64 %234, i64* %PC, align 8
  store i32 %211, i32* %209, align 4
  %235 = load i64, i64* %PC, align 8
  %236 = add i64 %235, -39
  store i64 %236, i64* %PC, align 8, !tbaa !2428
  br label %block_400568

block_400534:                                     ; preds = %block_40052a
  %237 = add i64 %402, -16
  %238 = add i64 %431, 4
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %237 to i64*
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %RAX, align 8, !tbaa !2428
  %241 = add i64 %431, 7
  store i64 %241, i64* %PC, align 8
  %242 = load i32, i32* %405, align 4
  %243 = add i32 %242, 188
  %244 = zext i32 %243 to i64
  store i64 %244, i64* %RCX, align 8, !tbaa !2428
  %245 = icmp ugt i32 %242, -189
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %11, align 1, !tbaa !2432
  %247 = and i32 %243, 255
  %248 = tail call i32 @llvm.ctpop.i32(i32 %247) #8
  %249 = trunc i32 %248 to i8
  %250 = and i8 %249, 1
  %251 = xor i8 %250, 1
  store i8 %251, i8* %12, align 1, !tbaa !2446
  %252 = xor i32 %242, 16
  %253 = xor i32 %252, %243
  %254 = lshr i32 %253, 4
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  store i8 %256, i8* %13, align 1, !tbaa !2447
  %257 = icmp eq i32 %243, 0
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %14, align 1, !tbaa !2448
  %259 = lshr i32 %243, 31
  %260 = trunc i32 %259 to i8
  store i8 %260, i8* %15, align 1, !tbaa !2449
  %261 = lshr i32 %242, 31
  %262 = xor i32 %259, %261
  %263 = add nuw nsw i32 %262, %259
  %264 = icmp eq i32 %263, 2
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %16, align 1, !tbaa !2450
  %266 = sext i32 %243 to i64
  store i64 %266, i64* %RDX, align 8, !tbaa !2428
  %267 = add i64 %266, %240
  %268 = add i64 %431, 20
  store i64 %268, i64* %PC, align 8
  %269 = inttoptr i64 %267 to i8*
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i64
  store i64 %271, i64* %RCX, align 8, !tbaa !2428
  %272 = add i64 %431, 24
  store i64 %272, i64* %PC, align 8
  %273 = load i32, i32* %405, align 4
  %274 = sext i32 %273 to i64
  store i64 %274, i64* %RAX, align 8, !tbaa !2428
  %275 = shl nsw i64 %274, 2
  %276 = add i64 %275, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %277 = zext i8 %270 to i32
  %278 = add i64 %431, 31
  store i64 %278, i64* %PC, align 8
  %279 = inttoptr i64 %276 to i32*
  store i32 %277, i32* %279, align 4
  %280 = load i64, i64* %RBP, align 8
  %281 = add i64 %280, -20
  %282 = load i64, i64* %PC, align 8
  %283 = add i64 %282, 3
  store i64 %283, i64* %PC, align 8
  %284 = inttoptr i64 %281 to i32*
  %285 = load i32, i32* %284, align 4
  %286 = add i32 %285, 1
  %287 = zext i32 %286 to i64
  store i64 %287, i64* %RAX, align 8, !tbaa !2428
  %288 = icmp eq i32 %285, -1
  %289 = icmp eq i32 %286, 0
  %290 = or i1 %288, %289
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %11, align 1, !tbaa !2432
  %292 = and i32 %286, 255
  %293 = tail call i32 @llvm.ctpop.i32(i32 %292) #8
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %12, align 1, !tbaa !2446
  %297 = xor i32 %285, %286
  %298 = lshr i32 %297, 4
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  store i8 %300, i8* %13, align 1, !tbaa !2447
  %301 = zext i1 %289 to i8
  store i8 %301, i8* %14, align 1, !tbaa !2448
  %302 = lshr i32 %286, 31
  %303 = trunc i32 %302 to i8
  store i8 %303, i8* %15, align 1, !tbaa !2449
  %304 = lshr i32 %285, 31
  %305 = xor i32 %302, %304
  %306 = add nuw nsw i32 %305, %302
  %307 = icmp eq i32 %306, 2
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %16, align 1, !tbaa !2450
  %309 = add i64 %282, 9
  store i64 %309, i64* %PC, align 8
  store i32 %286, i32* %284, align 4
  %310 = load i64, i64* %PC, align 8
  %311 = add i64 %310, -50
  store i64 %311, i64* %PC, align 8, !tbaa !2428
  br label %block_40052a

block_40050e:                                     ; preds = %block_4004f0
  %312 = add i64 %38, 338
  %313 = add i64 %38, 5
  %314 = load i64, i64* %RSP, align 8, !tbaa !2428
  %315 = add i64 %314, -8
  %316 = inttoptr i64 %315 to i64*
  store i64 %313, i64* %316, align 8
  store i64 %315, i64* %RSP, align 8, !tbaa !2428
  store i64 %312, i64* %PC, align 8, !tbaa !2428
  %317 = tail call %struct.Memory* @sub_400660_generate_gf_renamed_(%struct.State* nonnull %0, i64 %312, %struct.Memory* %2)
  %318 = load i64, i64* %PC, align 8
  %319 = add i64 %318, 669
  %320 = add i64 %318, 5
  %321 = load i64, i64* %RSP, align 8, !tbaa !2428
  %322 = add i64 %321, -8
  %323 = inttoptr i64 %322 to i64*
  store i64 %320, i64* %323, align 8
  store i64 %322, i64* %RSP, align 8, !tbaa !2428
  store i64 %319, i64* %PC, align 8, !tbaa !2428
  %324 = tail call %struct.Memory* @sub_4007b0_gen_poly_renamed_(%struct.State* nonnull %0, i64 %319, %struct.Memory* %317)
  %325 = load i64, i64* %PC, align 8
  %326 = add i64 %325, 11
  store i64 %326, i64* %PC, align 8
  store i32 1, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 16) to i32*), align 16
  br label %block_400523

block_40062b:                                     ; preds = %block_40061e
  %327 = add i64 %111, 3
  store i64 %327, i64* %PC, align 8
  %328 = load i32, i32* %85, align 4
  %329 = add i32 %328, 67
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RAX, align 8, !tbaa !2428
  %331 = icmp ugt i32 %328, -68
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %11, align 1, !tbaa !2432
  %333 = and i32 %329, 255
  %334 = tail call i32 @llvm.ctpop.i32(i32 %333) #8
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  %337 = xor i8 %336, 1
  store i8 %337, i8* %12, align 1, !tbaa !2446
  %338 = xor i32 %328, %329
  %339 = lshr i32 %338, 4
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  store i8 %341, i8* %13, align 1, !tbaa !2447
  %342 = icmp eq i32 %329, 0
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %14, align 1, !tbaa !2448
  %344 = lshr i32 %329, 31
  %345 = trunc i32 %344 to i8
  store i8 %345, i8* %15, align 1, !tbaa !2449
  %346 = lshr i32 %328, 31
  %347 = xor i32 %344, %346
  %348 = add nuw nsw i32 %347, %344
  %349 = icmp eq i32 %348, 2
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %16, align 1, !tbaa !2450
  %351 = sext i32 %329 to i64
  store i64 %351, i64* %RCX, align 8, !tbaa !2428
  %352 = shl nsw i64 %351, 2
  %353 = add i64 %352, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %354 = add i64 %111, 16
  store i64 %354, i64* %PC, align 8
  %355 = inttoptr i64 %353 to i32*
  %356 = load i32, i32* %355, align 4
  %357 = zext i32 %356 to i64
  store i64 %357, i64* %RAX, align 8, !tbaa !2428
  %358 = trunc i32 %356 to i8
  store i8 %358, i8* %DL, align 1, !tbaa !2451
  %359 = add i64 %82, -8
  %360 = add i64 %111, 22
  store i64 %360, i64* %PC, align 8
  %361 = inttoptr i64 %359 to i64*
  %362 = load i64, i64* %361, align 8
  store i64 %362, i64* %RCX, align 8, !tbaa !2428
  %363 = add i64 %111, 26
  store i64 %363, i64* %PC, align 8
  %364 = load i32, i32* %85, align 4
  %365 = sext i32 %364 to i64
  store i64 %365, i64* %RSI, align 8, !tbaa !2428
  %366 = add i64 %365, %362
  %367 = add i64 %111, 29
  store i64 %367, i64* %PC, align 8
  %368 = inttoptr i64 %366 to i8*
  store i8 %358, i8* %368, align 1
  %369 = load i64, i64* %RBP, align 8
  %370 = add i64 %369, -20
  %371 = load i64, i64* %PC, align 8
  %372 = add i64 %371, 3
  store i64 %372, i64* %PC, align 8
  %373 = inttoptr i64 %370 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = add i32 %374, 1
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %RAX, align 8, !tbaa !2428
  %377 = icmp eq i32 %374, -1
  %378 = icmp eq i32 %375, 0
  %379 = or i1 %377, %378
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %11, align 1, !tbaa !2432
  %381 = and i32 %375, 255
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381) #8
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %12, align 1, !tbaa !2446
  %386 = xor i32 %374, %375
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %13, align 1, !tbaa !2447
  %390 = zext i1 %378 to i8
  store i8 %390, i8* %14, align 1, !tbaa !2448
  %391 = lshr i32 %375, 31
  %392 = trunc i32 %391 to i8
  store i8 %392, i8* %15, align 1, !tbaa !2449
  %393 = lshr i32 %374, 31
  %394 = xor i32 %391, %393
  %395 = add nuw nsw i32 %394, %391
  %396 = icmp eq i32 %395, 2
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %16, align 1, !tbaa !2450
  %398 = add i64 %371, 9
  store i64 %398, i64* %PC, align 8
  store i32 %375, i32* %373, align 4
  %399 = load i64, i64* %PC, align 8
  %400 = add i64 %399, -51
  store i64 %400, i64* %PC, align 8, !tbaa !2428
  br label %block_40061e

block_40052a:                                     ; preds = %block_400523, %block_400534
  %401 = phi i64 [ %.pre, %block_400523 ], [ %311, %block_400534 ]
  %402 = load i64, i64* %RBP, align 8
  %403 = add i64 %402, -20
  %404 = add i64 %401, 4
  store i64 %404, i64* %PC, align 8
  %405 = inttoptr i64 %403 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = add i32 %406, -16
  %408 = icmp ult i32 %406, 16
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %11, align 1, !tbaa !2432
  %410 = and i32 %407, 255
  %411 = tail call i32 @llvm.ctpop.i32(i32 %410) #8
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  %414 = xor i8 %413, 1
  store i8 %414, i8* %12, align 1, !tbaa !2446
  %415 = xor i32 %406, 16
  %416 = xor i32 %415, %407
  %417 = lshr i32 %416, 4
  %418 = trunc i32 %417 to i8
  %419 = and i8 %418, 1
  store i8 %419, i8* %13, align 1, !tbaa !2447
  %420 = icmp eq i32 %407, 0
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %14, align 1, !tbaa !2448
  %422 = lshr i32 %407, 31
  %423 = trunc i32 %422 to i8
  store i8 %423, i8* %15, align 1, !tbaa !2449
  %424 = lshr i32 %406, 31
  %425 = xor i32 %422, %424
  %426 = add nuw nsw i32 %425, %424
  %427 = icmp eq i32 %426, 2
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %16, align 1, !tbaa !2450
  %429 = icmp ne i8 %423, 0
  %430 = xor i1 %429, %427
  %.v8 = select i1 %430, i64 10, i64 55
  %431 = add i64 %401, %.v8
  store i64 %431, i64* %PC, align 8, !tbaa !2428
  br i1 %430, label %block_400534, label %block_400561

block_400568:                                     ; preds = %block_400561, %block_400572
  %432 = phi i64 [ %.pre4, %block_400561 ], [ %236, %block_400572 ]
  %433 = load i64, i64* %RBP, align 8
  %434 = add i64 %433, -20
  %435 = add i64 %432, 4
  store i64 %435, i64* %PC, align 8
  %436 = inttoptr i64 %434 to i32*
  %437 = load i32, i32* %436, align 4
  %438 = add i32 %437, -51
  %439 = icmp ult i32 %437, 51
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %11, align 1, !tbaa !2432
  %441 = and i32 %438, 255
  %442 = tail call i32 @llvm.ctpop.i32(i32 %441) #8
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  %445 = xor i8 %444, 1
  store i8 %445, i8* %12, align 1, !tbaa !2446
  %446 = xor i32 %437, 16
  %447 = xor i32 %446, %438
  %448 = lshr i32 %447, 4
  %449 = trunc i32 %448 to i8
  %450 = and i8 %449, 1
  store i8 %450, i8* %13, align 1, !tbaa !2447
  %451 = icmp eq i32 %438, 0
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %14, align 1, !tbaa !2448
  %453 = lshr i32 %438, 31
  %454 = trunc i32 %453 to i8
  store i8 %454, i8* %15, align 1, !tbaa !2449
  %455 = lshr i32 %437, 31
  %456 = xor i32 %453, %455
  %457 = add nuw nsw i32 %456, %455
  %458 = icmp eq i32 %457, 2
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %16, align 1, !tbaa !2450
  %460 = icmp ne i8 %454, 0
  %461 = xor i1 %460, %458
  %.v9 = select i1 %461, i64 10, i64 44
  %462 = add i64 %432, %.v9
  store i64 %462, i64* %PC, align 8, !tbaa !2428
  br i1 %461, label %block_400572, label %block_400594

block_400594:                                     ; preds = %block_400568
  %463 = add i64 %462, 7
  store i64 %463, i64* %PC, align 8
  store i32 0, i32* %436, align 4
  %.pre5 = load i64, i64* %PC, align 8
  br label %block_40059b

block_4005a8:                                     ; preds = %block_40059b
  %464 = add i64 %114, -16
  %465 = add i64 %143, 4
  store i64 %465, i64* %PC, align 8
  %466 = inttoptr i64 %464 to i64*
  %467 = load i64, i64* %466, align 8
  store i64 %467, i64* %RAX, align 8, !tbaa !2428
  %468 = add i64 %143, 8
  store i64 %468, i64* %PC, align 8
  %469 = load i32, i32* %117, align 4
  %470 = sext i32 %469 to i64
  store i64 %470, i64* %RCX, align 8, !tbaa !2428
  %471 = add i64 %470, %467
  %472 = add i64 %143, 12
  store i64 %472, i64* %PC, align 8
  %473 = inttoptr i64 %471 to i8*
  %474 = load i8, i8* %473, align 1
  %475 = zext i8 %474 to i64
  store i64 %475, i64* %RDX, align 8, !tbaa !2428
  %476 = add i64 %143, 15
  store i64 %476, i64* %PC, align 8
  %477 = load i32, i32* %117, align 4
  %478 = add i32 %477, 67
  %479 = zext i32 %478 to i64
  store i64 %479, i64* %RSI, align 8, !tbaa !2428
  %480 = icmp ugt i32 %477, -68
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %11, align 1, !tbaa !2432
  %482 = and i32 %478, 255
  %483 = tail call i32 @llvm.ctpop.i32(i32 %482) #8
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  store i8 %486, i8* %12, align 1, !tbaa !2446
  %487 = xor i32 %477, %478
  %488 = lshr i32 %487, 4
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  store i8 %490, i8* %13, align 1, !tbaa !2447
  %491 = icmp eq i32 %478, 0
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %14, align 1, !tbaa !2448
  %493 = lshr i32 %478, 31
  %494 = trunc i32 %493 to i8
  store i8 %494, i8* %15, align 1, !tbaa !2449
  %495 = lshr i32 %477, 31
  %496 = xor i32 %493, %495
  %497 = add nuw nsw i32 %496, %493
  %498 = icmp eq i32 %497, 2
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %16, align 1, !tbaa !2450
  %500 = sext i32 %478 to i64
  store i64 %500, i64* %RAX, align 8, !tbaa !2428
  %501 = shl nsw i64 %500, 2
  %502 = add i64 %501, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %503 = zext i8 %474 to i32
  %504 = add i64 %143, 28
  store i64 %504, i64* %PC, align 8
  %505 = inttoptr i64 %502 to i32*
  store i32 %503, i32* %505, align 4
  %506 = load i64, i64* %RBP, align 8
  %507 = add i64 %506, -20
  %508 = load i64, i64* %PC, align 8
  %509 = add i64 %508, 3
  store i64 %509, i64* %PC, align 8
  %510 = inttoptr i64 %507 to i32*
  %511 = load i32, i32* %510, align 4
  %512 = add i32 %511, 1
  %513 = zext i32 %512 to i64
  store i64 %513, i64* %RAX, align 8, !tbaa !2428
  %514 = icmp eq i32 %511, -1
  %515 = icmp eq i32 %512, 0
  %516 = or i1 %514, %515
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %11, align 1, !tbaa !2432
  %518 = and i32 %512, 255
  %519 = tail call i32 @llvm.ctpop.i32(i32 %518) #8
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  %522 = xor i8 %521, 1
  store i8 %522, i8* %12, align 1, !tbaa !2446
  %523 = xor i32 %511, %512
  %524 = lshr i32 %523, 4
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  store i8 %526, i8* %13, align 1, !tbaa !2447
  %527 = zext i1 %515 to i8
  store i8 %527, i8* %14, align 1, !tbaa !2448
  %528 = lshr i32 %512, 31
  %529 = trunc i32 %528 to i8
  store i8 %529, i8* %15, align 1, !tbaa !2449
  %530 = lshr i32 %511, 31
  %531 = xor i32 %528, %530
  %532 = add nuw nsw i32 %531, %528
  %533 = icmp eq i32 %532, 2
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %16, align 1, !tbaa !2450
  %535 = add i64 %508, 9
  store i64 %535, i64* %PC, align 8
  store i32 %512, i32* %510, align 4
  %536 = load i64, i64* %PC, align 8
  %537 = add i64 %536, -50
  store i64 %537, i64* %PC, align 8, !tbaa !2428
  br label %block_40059b

block_400523:                                     ; preds = %block_4004f0, %block_40050e
  %538 = phi i64 [ %38, %block_4004f0 ], [ %326, %block_40050e ]
  %MEMORY.5 = phi %struct.Memory* [ %2, %block_4004f0 ], [ %324, %block_40050e ]
  %539 = load i64, i64* %RBP, align 8
  %540 = add i64 %539, -20
  %541 = add i64 %538, 7
  store i64 %541, i64* %PC, align 8
  %542 = inttoptr i64 %540 to i32*
  store i32 0, i32* %542, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_40052a

block_4005e6:                                     ; preds = %block_4005d9
  %543 = add i64 %80, 4
  store i64 %543, i64* %PC, align 8
  %544 = load i32, i32* %54, align 4
  %545 = sext i32 %544 to i64
  store i64 %545, i64* %RAX, align 8, !tbaa !2428
  %546 = shl nsw i64 %545, 2
  %547 = add i64 %546, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %548 = add i64 %80, 12
  store i64 %548, i64* %PC, align 8
  %549 = inttoptr i64 %547 to i32*
  %550 = load i32, i32* %549, align 4
  %551 = sext i32 %550 to i64
  store i64 %551, i64* %RAX, align 8, !tbaa !2428
  %552 = shl nsw i64 %551, 2
  %553 = add i64 %552, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %554 = add i64 %80, 19
  store i64 %554, i64* %PC, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = zext i32 %556 to i64
  store i64 %557, i64* %RCX, align 8, !tbaa !2428
  %558 = add i64 %80, 23
  store i64 %558, i64* %PC, align 8
  %559 = load i32, i32* %54, align 4
  %560 = sext i32 %559 to i64
  store i64 %560, i64* %RAX, align 8, !tbaa !2428
  %561 = shl nsw i64 %560, 2
  %562 = add i64 %561, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 32)
  %563 = add i64 %80, 30
  store i64 %563, i64* %PC, align 8
  %564 = inttoptr i64 %562 to i32*
  store i32 %556, i32* %564, align 4
  %565 = load i64, i64* %RBP, align 8
  %566 = add i64 %565, -20
  %567 = load i64, i64* %PC, align 8
  %568 = add i64 %567, 3
  store i64 %568, i64* %PC, align 8
  %569 = inttoptr i64 %566 to i32*
  %570 = load i32, i32* %569, align 4
  %571 = add i32 %570, 1
  %572 = zext i32 %571 to i64
  store i64 %572, i64* %RAX, align 8, !tbaa !2428
  %573 = icmp eq i32 %570, -1
  %574 = icmp eq i32 %571, 0
  %575 = or i1 %573, %574
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %11, align 1, !tbaa !2432
  %577 = and i32 %571, 255
  %578 = tail call i32 @llvm.ctpop.i32(i32 %577) #8
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  %581 = xor i8 %580, 1
  store i8 %581, i8* %12, align 1, !tbaa !2446
  %582 = xor i32 %570, %571
  %583 = lshr i32 %582, 4
  %584 = trunc i32 %583 to i8
  %585 = and i8 %584, 1
  store i8 %585, i8* %13, align 1, !tbaa !2447
  %586 = zext i1 %574 to i8
  store i8 %586, i8* %14, align 1, !tbaa !2448
  %587 = lshr i32 %571, 31
  %588 = trunc i32 %587 to i8
  store i8 %588, i8* %15, align 1, !tbaa !2449
  %589 = lshr i32 %570, 31
  %590 = xor i32 %587, %589
  %591 = add nuw nsw i32 %590, %587
  %592 = icmp eq i32 %591, 2
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %16, align 1, !tbaa !2450
  %594 = add i64 %567, 9
  store i64 %594, i64* %PC, align 8
  store i32 %571, i32* %569, align 4
  %595 = load i64, i64* %PC, align 8
  %596 = add i64 %595, -52
  store i64 %596, i64* %PC, align 8, !tbaa !2428
  br label %block_4005d9

block_400561:                                     ; preds = %block_40052a
  %597 = add i64 %431, 7
  store i64 %597, i64* %PC, align 8
  store i32 0, i32* %405, align 4
  %.pre4 = load i64, i64* %PC, align 8
  br label %block_400568
}

; Function Attrs: noinline
define %struct.Memory* @sub_400430__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400430:
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
  store i64 ptrtoint (%seg_602df0__init_array_type* @seg_602df0__init_array to i64), i64* %R12, align 8, !tbaa !2428
  %27 = load i64, i64* %RBP, align 8
  %28 = add i64 %26, 8
  store i64 %28, i64* %PC, align 8
  %29 = add i64 %7, -40
  %30 = inttoptr i64 %29 to i64*
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_602df0__init_array_type* @seg_602df0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2428
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
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #8
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
  %63 = add i64 %38, -6291
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_4003c8__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
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
  br i1 %76, label %block_401c96, label %block_401c76

block_401c96:                                     ; preds = %block_401c80, %block_401c40
  %81 = phi i64 [ %80, %block_401c40 ], [ %179, %block_401c80 ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_401c40 ], [ %149, %block_401c80 ]
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

block_401c76:                                     ; preds = %block_401c40
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_401c80

block_401c80:                                     ; preds = %block_401c80, %block_401c76
  %134 = phi i64 [ 0, %block_401c76 ], [ %152, %block_401c80 ]
  %135 = phi i64 [ %133, %block_401c76 ], [ %179, %block_401c80 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_401c76 ], [ %149, %block_401c80 ]
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
  br i1 %169, label %block_401c96, label %block_401c80
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
  %.v = select i1 %12, i64 9, i64 32
  %18 = add i64 %.v, %1
  store i64 %18, i64* %PC, align 8, !tbaa !2428
  br i1 %12, label %block_4004b9, label %block_4004d0

block_4004d0:                                     ; preds = %block_4004b0
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

block_4004b9:                                     ; preds = %block_4004b0
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
  %36 = tail call %struct.Memory* @sub_400440_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
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
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2428
  br i1 %18, label %block_4003c8.block_4003da_crit_edge, label %block_4003d8

block_4003c8.block_4003da_crit_edge:              ; preds = %block_4003c8
  br label %block_4003da

block_4003d8:                                     ; preds = %block_4003c8
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_4003da

block_4003da:                                     ; preds = %block_4003c8.block_4003da_crit_edge, %block_4003d8
  %.pre-phi = phi i64* [ %RSP, %block_4003c8.block_4003da_crit_edge ], [ %RSP, %block_4003d8 ]
  %27 = phi i64 [ %22, %block_4003c8.block_4003da_crit_edge ], [ %.pre1, %block_4003d8 ]
  %28 = phi i64 [ %4, %block_4003c8.block_4003da_crit_edge ], [ %.pre, %block_4003d8 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4003c8.block_4003da_crit_edge ], [ %26, %block_4003d8 ]
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
  %39 = load i64, i64* getelementptr inbounds (%seg_602ff0__got_type, %seg_602ff0__got_type* @seg_602ff0__got, i64 0, i32 0), align 8
  store i64 %39, i64* %PC, align 8, !tbaa !2428
  %40 = tail call fastcc %struct.Memory* @ext_6040d0___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %41 = load i64, i64* %PC, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %PC, align 8
  %43 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %42, %struct.Memory* %40)
  ret %struct.Memory* %43
}

; Function Attrs: noinline
define %struct.Memory* @sub_401cb0___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_401cb0:
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
  %.pre = load i64, i64* %PC, align 8
  br label %block_40067d

block_40077b:                                     ; preds = %block_40072e, %block_40075d
  %24 = phi i64 [ %245, %block_40072e ], [ %.pre2, %block_40075d ]
  %25 = load i64, i64* %RBP, align 8
  %26 = add i64 %25, -4
  %27 = add i64 %24, 3
  store i64 %27, i64* %PC, align 8
  %28 = inttoptr i64 %26 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = zext i32 %29 to i64
  store i64 %30, i64* %RAX, align 8, !tbaa !2428
  %31 = add i64 %24, 7
  store i64 %31, i64* %PC, align 8
  %32 = load i32, i32* %28, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %RCX, align 8, !tbaa !2428
  %34 = shl nsw i64 %33, 2
  %35 = add i64 %34, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %36 = add i64 %24, 15
  store i64 %36, i64* %PC, align 8
  %37 = inttoptr i64 %35 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %RCX, align 8, !tbaa !2428
  %40 = shl nsw i64 %39, 2
  %41 = add i64 %40, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %42 = add i64 %24, 22
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %41 to i32*
  store i32 %29, i32* %43, align 4
  %44 = load i64, i64* %RBP, align 8
  %45 = add i64 %44, -4
  %46 = load i64, i64* %PC, align 8
  %47 = add i64 %46, 3
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %45 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = add i32 %49, 1
  %51 = zext i32 %50 to i64
  store i64 %51, i64* %RAX, align 8, !tbaa !2428
  %52 = icmp eq i32 %49, -1
  %53 = icmp eq i32 %50, 0
  %54 = or i1 %52, %53
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %18, align 1, !tbaa !2432
  %56 = and i32 %50, 255
  %57 = tail call i32 @llvm.ctpop.i32(i32 %56) #8
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  store i8 %60, i8* %19, align 1, !tbaa !2446
  %61 = xor i32 %49, %50
  %62 = lshr i32 %61, 4
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, 1
  store i8 %64, i8* %20, align 1, !tbaa !2447
  %65 = zext i1 %53 to i8
  store i8 %65, i8* %21, align 1, !tbaa !2448
  %66 = lshr i32 %50, 31
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %22, align 1, !tbaa !2449
  %68 = lshr i32 %49, 31
  %69 = xor i32 %66, %68
  %70 = add nuw nsw i32 %69, %66
  %71 = icmp eq i32 %70, 2
  %72 = zext i1 %71 to i8
  store i8 %72, i8* %23, align 1, !tbaa !2450
  %73 = add i64 %46, 9
  store i64 %73, i64* %PC, align 8
  store i32 %50, i32* %48, align 4
  %74 = load i64, i64* %PC, align 8
  %75 = add i64 %74, -146
  store i64 %75, i64* %PC, align 8, !tbaa !2428
  br label %block_400708

block_40075d:                                     ; preds = %block_400715
  %76 = add i64 %307, 3
  store i64 %76, i64* %PC, align 8
  %77 = load i32, i32* %312, align 4
  %78 = add i32 %77, -1
  %79 = zext i32 %78 to i64
  store i64 %79, i64* %RAX, align 8, !tbaa !2428
  %80 = icmp eq i32 %77, 0
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %18, align 1, !tbaa !2432
  %82 = and i32 %78, 255
  %83 = tail call i32 @llvm.ctpop.i32(i32 %82) #8
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %19, align 1, !tbaa !2446
  %87 = xor i32 %77, %78
  %88 = lshr i32 %87, 4
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  store i8 %90, i8* %20, align 1, !tbaa !2447
  %91 = icmp eq i32 %78, 0
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %21, align 1, !tbaa !2448
  %93 = lshr i32 %78, 31
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %22, align 1, !tbaa !2449
  %95 = lshr i32 %77, 31
  %96 = xor i32 %93, %95
  %97 = add nuw nsw i32 %96, %95
  %98 = icmp eq i32 %97, 2
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %23, align 1, !tbaa !2450
  %100 = sext i32 %78 to i64
  store i64 %100, i64* %RCX, align 8, !tbaa !2428
  %101 = shl nsw i64 %100, 2
  %102 = add i64 %101, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %103 = add i64 %307, 16
  store i64 %103, i64* %PC, align 8
  %104 = inttoptr i64 %102 to i32*
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 1
  %107 = icmp slt i32 %105, 0
  %108 = icmp slt i32 %106, 0
  %109 = xor i1 %107, %108
  %110 = zext i32 %106 to i64
  store i64 %110, i64* %RAX, align 8, !tbaa !2428
  %.lobit9 = lshr i32 %105, 31
  %111 = trunc i32 %.lobit9 to i8
  store i8 %111, i8* %18, align 1, !tbaa !2451
  %112 = and i32 %106, 254
  %113 = tail call i32 @llvm.ctpop.i32(i32 %112) #8
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = xor i8 %115, 1
  store i8 %116, i8* %19, align 1, !tbaa !2451
  store i8 0, i8* %20, align 1, !tbaa !2451
  %117 = icmp eq i32 %106, 0
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %21, align 1, !tbaa !2451
  %119 = lshr i32 %105, 30
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  store i8 %121, i8* %22, align 1, !tbaa !2451
  %122 = zext i1 %109 to i8
  store i8 %122, i8* %23, align 1, !tbaa !2451
  %123 = add i64 %307, 23
  store i64 %123, i64* %PC, align 8
  %124 = load i32, i32* %312, align 4
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %RCX, align 8, !tbaa !2428
  %126 = shl nsw i64 %125, 2
  %127 = add i64 %126, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %128 = add i64 %307, 30
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %127 to i32*
  store i32 %106, i32* %129, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_40077b

block_4006ce:                                     ; preds = %block_400687.block_4006ce_crit_edge, %block_4006bd
  %.pre-phi5 = phi i32* [ %.pre4, %block_400687.block_4006ce_crit_edge ], [ %414, %block_4006bd ]
  %130 = phi i64 [ %482, %block_400687.block_4006ce_crit_edge ], [ %428, %block_4006bd ]
  %131 = add i64 %130, 3
  store i64 %131, i64* %PC, align 8
  %132 = load i32, i32* %.pre-phi5, align 4
  %133 = shl i32 %132, 1
  %134 = icmp slt i32 %132, 0
  %135 = icmp slt i32 %133, 0
  %136 = xor i1 %134, %135
  %137 = zext i32 %133 to i64
  store i64 %137, i64* %RAX, align 8, !tbaa !2428
  %.lobit = lshr i32 %132, 31
  %138 = trunc i32 %.lobit to i8
  store i8 %138, i8* %18, align 1, !tbaa !2451
  %139 = and i32 %133, 254
  %140 = tail call i32 @llvm.ctpop.i32(i32 %139) #8
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  store i8 %143, i8* %19, align 1, !tbaa !2451
  store i8 0, i8* %20, align 1, !tbaa !2451
  %144 = icmp eq i32 %133, 0
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %21, align 1, !tbaa !2451
  %146 = lshr i32 %132, 30
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  store i8 %148, i8* %22, align 1, !tbaa !2451
  %149 = zext i1 %136 to i8
  store i8 %149, i8* %23, align 1, !tbaa !2451
  %150 = add i64 %130, 9
  store i64 %150, i64* %PC, align 8
  store i32 %133, i32* %.pre-phi5, align 4
  %151 = load i64, i64* %RBP, align 8
  %152 = add i64 %151, -4
  %153 = load i64, i64* %PC, align 8
  %154 = add i64 %153, 3
  store i64 %154, i64* %PC, align 8
  %155 = inttoptr i64 %152 to i32*
  %156 = load i32, i32* %155, align 4
  %157 = add i32 %156, 1
  %158 = zext i32 %157 to i64
  store i64 %158, i64* %RAX, align 8, !tbaa !2428
  %159 = icmp eq i32 %156, -1
  %160 = icmp eq i32 %157, 0
  %161 = or i1 %159, %160
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %18, align 1, !tbaa !2432
  %163 = and i32 %157, 255
  %164 = tail call i32 @llvm.ctpop.i32(i32 %163) #8
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %19, align 1, !tbaa !2446
  %168 = xor i32 %156, %157
  %169 = lshr i32 %168, 4
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  store i8 %171, i8* %20, align 1, !tbaa !2447
  %172 = zext i1 %160 to i8
  store i8 %172, i8* %21, align 1, !tbaa !2448
  %173 = lshr i32 %157, 31
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* %22, align 1, !tbaa !2449
  %175 = lshr i32 %156, 31
  %176 = xor i32 %173, %175
  %177 = add nuw nsw i32 %176, %173
  %178 = icmp eq i32 %177, 2
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %23, align 1, !tbaa !2450
  %180 = add i64 %153, 9
  store i64 %180, i64* %PC, align 8
  store i32 %157, i32* %155, align 4
  %181 = load i64, i64* %PC, align 8
  %182 = add i64 %181, -99
  store i64 %182, i64* %PC, align 8, !tbaa !2428
  br label %block_40067d

block_40072e:                                     ; preds = %block_400715
  %183 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2112) to i32*), align 16
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %RAX, align 8, !tbaa !2428
  %185 = add i64 %307, 10
  store i64 %185, i64* %PC, align 8
  %186 = load i32, i32* %312, align 4
  %187 = add i32 %186, -1
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RCX, align 8, !tbaa !2428
  %189 = icmp eq i32 %186, 0
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %18, align 1, !tbaa !2432
  %191 = and i32 %187, 255
  %192 = tail call i32 @llvm.ctpop.i32(i32 %191) #8
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  %195 = xor i8 %194, 1
  store i8 %195, i8* %19, align 1, !tbaa !2446
  %196 = xor i32 %186, %187
  %197 = lshr i32 %196, 4
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  store i8 %199, i8* %20, align 1, !tbaa !2447
  %200 = icmp eq i32 %187, 0
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %21, align 1, !tbaa !2448
  %202 = lshr i32 %187, 31
  %203 = trunc i32 %202 to i8
  store i8 %203, i8* %22, align 1, !tbaa !2449
  %204 = lshr i32 %186, 31
  %205 = xor i32 %202, %204
  %206 = add nuw nsw i32 %205, %204
  %207 = icmp eq i32 %206, 2
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %23, align 1, !tbaa !2450
  %209 = sext i32 %187 to i64
  store i64 %209, i64* %RDX, align 8, !tbaa !2428
  %210 = shl nsw i64 %209, 2
  %211 = add i64 %210, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %212 = add i64 %307, 23
  store i64 %212, i64* %PC, align 8
  %213 = inttoptr i64 %211 to i32*
  %214 = load i32, i32* %213, align 4
  %215 = zext i32 %214 to i64
  store i64 %215, i64* %RCX, align 8, !tbaa !2428
  %216 = add i64 %307, 26
  store i64 %216, i64* %PC, align 8
  %217 = load i32, i32* %279, align 4
  %218 = xor i32 %217, %214
  %219 = shl i32 %218, 1
  %220 = zext i32 %219 to i64
  store i64 %220, i64* %RCX, align 8, !tbaa !2428
  %221 = load i64, i64* %RAX, align 8
  %222 = xor i64 %220, %221
  %223 = trunc i64 %222 to i32
  %224 = and i64 %222, 4294967295
  store i64 %224, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  %225 = and i32 %223, 255
  %226 = tail call i32 @llvm.ctpop.i32(i32 %225) #8
  %227 = trunc i32 %226 to i8
  %228 = and i8 %227, 1
  %229 = xor i8 %228, 1
  store i8 %229, i8* %19, align 1, !tbaa !2446
  %230 = icmp eq i32 %223, 0
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %21, align 1, !tbaa !2448
  %232 = lshr i32 %223, 31
  %233 = trunc i32 %232 to i8
  store i8 %233, i8* %22, align 1, !tbaa !2449
  store i8 0, i8* %23, align 1, !tbaa !2450
  store i8 0, i8* %20, align 1, !tbaa !2447
  %234 = load i64, i64* %RBP, align 8
  %235 = add i64 %234, -4
  %236 = add i64 %307, 35
  store i64 %236, i64* %PC, align 8
  %237 = inttoptr i64 %235 to i32*
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  store i64 %239, i64* %RDX, align 8, !tbaa !2428
  %240 = shl nsw i64 %239, 2
  %241 = add i64 %240, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %242 = add i64 %307, 42
  store i64 %242, i64* %PC, align 8
  %243 = inttoptr i64 %241 to i32*
  store i32 %223, i32* %243, align 4
  %244 = load i64, i64* %PC, align 8
  %245 = add i64 %244, 35
  store i64 %245, i64* %PC, align 8, !tbaa !2428
  br label %block_40077b

block_400715:                                     ; preds = %block_400708
  %246 = add i64 %338, 3
  store i64 %246, i64* %PC, align 8
  %247 = load i32, i32* %312, align 4
  %248 = add i32 %247, -1
  %249 = zext i32 %248 to i64
  store i64 %249, i64* %RAX, align 8, !tbaa !2428
  %250 = icmp eq i32 %247, 0
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %18, align 1, !tbaa !2432
  %252 = and i32 %248, 255
  %253 = tail call i32 @llvm.ctpop.i32(i32 %252) #8
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = xor i8 %255, 1
  store i8 %256, i8* %19, align 1, !tbaa !2446
  %257 = xor i32 %247, %248
  %258 = lshr i32 %257, 4
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  store i8 %260, i8* %20, align 1, !tbaa !2447
  %261 = icmp eq i32 %248, 0
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %21, align 1, !tbaa !2448
  %263 = lshr i32 %248, 31
  %264 = trunc i32 %263 to i8
  store i8 %264, i8* %22, align 1, !tbaa !2449
  %265 = lshr i32 %247, 31
  %266 = xor i32 %263, %265
  %267 = add nuw nsw i32 %266, %265
  %268 = icmp eq i32 %267, 2
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %23, align 1, !tbaa !2450
  %270 = sext i32 %248 to i64
  store i64 %270, i64* %RCX, align 8, !tbaa !2428
  %271 = shl nsw i64 %270, 2
  %272 = add i64 %271, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %273 = add i64 %338, 16
  store i64 %273, i64* %PC, align 8
  %274 = inttoptr i64 %272 to i32*
  %275 = load i32, i32* %274, align 4
  %276 = zext i32 %275 to i64
  store i64 %276, i64* %RAX, align 8, !tbaa !2428
  %277 = add i64 %309, -8
  %278 = add i64 %338, 19
  store i64 %278, i64* %PC, align 8
  %279 = inttoptr i64 %277 to i32*
  %280 = load i32, i32* %279, align 4
  %281 = sub i32 %275, %280
  %282 = icmp ult i32 %275, %280
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %18, align 1, !tbaa !2432
  %284 = and i32 %281, 255
  %285 = tail call i32 @llvm.ctpop.i32(i32 %284) #8
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  %288 = xor i8 %287, 1
  store i8 %288, i8* %19, align 1, !tbaa !2446
  %289 = xor i32 %280, %275
  %290 = xor i32 %289, %281
  %291 = lshr i32 %290, 4
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  store i8 %293, i8* %20, align 1, !tbaa !2447
  %294 = icmp eq i32 %281, 0
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %21, align 1, !tbaa !2448
  %296 = lshr i32 %281, 31
  %297 = trunc i32 %296 to i8
  store i8 %297, i8* %22, align 1, !tbaa !2449
  %298 = lshr i32 %275, 31
  %299 = lshr i32 %280, 31
  %300 = xor i32 %299, %298
  %301 = xor i32 %296, %298
  %302 = add nuw nsw i32 %301, %300
  %303 = icmp eq i32 %302, 2
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %23, align 1, !tbaa !2450
  %305 = icmp ne i8 %297, 0
  %306 = xor i1 %305, %303
  %.v8 = select i1 %306, i64 72, i64 25
  %307 = add i64 %338, %.v8
  store i64 %307, i64* %PC, align 8, !tbaa !2428
  br i1 %306, label %block_40075d, label %block_40072e

block_400708:                                     ; preds = %block_4006e5, %block_40077b
  %308 = phi i64 [ %.pre1, %block_4006e5 ], [ %75, %block_40077b ]
  %309 = load i64, i64* %RBP, align 8
  %310 = add i64 %309, -4
  %311 = add i64 %308, 7
  store i64 %311, i64* %PC, align 8
  %312 = inttoptr i64 %310 to i32*
  %313 = load i32, i32* %312, align 4
  %314 = add i32 %313, -255
  %315 = icmp ult i32 %313, 255
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %18, align 1, !tbaa !2432
  %317 = and i32 %314, 255
  %318 = tail call i32 @llvm.ctpop.i32(i32 %317) #8
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  %321 = xor i8 %320, 1
  store i8 %321, i8* %19, align 1, !tbaa !2446
  %322 = xor i32 %313, 16
  %323 = xor i32 %322, %314
  %324 = lshr i32 %323, 4
  %325 = trunc i32 %324 to i8
  %326 = and i8 %325, 1
  store i8 %326, i8* %20, align 1, !tbaa !2447
  %327 = icmp eq i32 %314, 0
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %21, align 1, !tbaa !2448
  %329 = lshr i32 %314, 31
  %330 = trunc i32 %329 to i8
  store i8 %330, i8* %22, align 1, !tbaa !2449
  %331 = lshr i32 %313, 31
  %332 = xor i32 %329, %331
  %333 = add nuw nsw i32 %332, %331
  %334 = icmp eq i32 %333, 2
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %23, align 1, !tbaa !2450
  %336 = icmp ne i8 %330, 0
  %337 = xor i1 %336, %334
  %.v7 = select i1 %337, i64 13, i64 151
  %338 = add i64 %308, %.v7
  store i64 %338, i64* %PC, align 8, !tbaa !2428
  br i1 %337, label %block_400715, label %block_40079f

block_40067d:                                     ; preds = %block_4006ce, %block_400660
  %339 = phi i64 [ %.pre, %block_400660 ], [ %182, %block_4006ce ]
  %340 = load i64, i64* %RBP, align 8
  %341 = add i64 %340, -4
  %342 = add i64 %339, 4
  store i64 %342, i64* %PC, align 8
  %343 = inttoptr i64 %341 to i32*
  %344 = load i32, i32* %343, align 4
  %345 = add i32 %344, -8
  %346 = icmp ult i32 %344, 8
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %18, align 1, !tbaa !2432
  %348 = and i32 %345, 255
  %349 = tail call i32 @llvm.ctpop.i32(i32 %348) #8
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = xor i8 %351, 1
  store i8 %352, i8* %19, align 1, !tbaa !2446
  %353 = xor i32 %344, %345
  %354 = lshr i32 %353, 4
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  store i8 %356, i8* %20, align 1, !tbaa !2447
  %357 = icmp eq i32 %345, 0
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %21, align 1, !tbaa !2448
  %359 = lshr i32 %345, 31
  %360 = trunc i32 %359 to i8
  store i8 %360, i8* %22, align 1, !tbaa !2449
  %361 = lshr i32 %344, 31
  %362 = xor i32 %359, %361
  %363 = add nuw nsw i32 %362, %361
  %364 = icmp eq i32 %363, 2
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %23, align 1, !tbaa !2450
  %366 = icmp ne i8 %360, 0
  %367 = xor i1 %366, %364
  %.v = select i1 %367, i64 10, i64 104
  %368 = add i64 %339, %.v
  store i64 %368, i64* %PC, align 8, !tbaa !2428
  br i1 %367, label %block_400687, label %block_4006e5

block_4006e5:                                     ; preds = %block_40067d
  %369 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2112) to i32*), align 16
  %370 = sext i32 %369 to i64
  store i64 %370, i64* %RAX, align 8, !tbaa !2428
  %371 = shl nsw i64 %370, 2
  %372 = add i64 %371, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %373 = add i64 %368, 19
  store i64 %373, i64* %PC, align 8
  %374 = inttoptr i64 %372 to i32*
  store i32 8, i32* %374, align 4
  %375 = load i64, i64* %RBP, align 8
  %376 = add i64 %375, -8
  %377 = load i64, i64* %PC, align 8
  %378 = add i64 %377, 3
  store i64 %378, i64* %PC, align 8
  %379 = inttoptr i64 %376 to i32*
  %380 = load i32, i32* %379, align 4
  %381 = zext i32 %380 to i64
  %382 = shl nuw i64 %381, 32
  %383 = ashr i64 %382, 33
  %384 = trunc i32 %380 to i8
  %385 = and i8 %384, 1
  %386 = trunc i64 %383 to i32
  %387 = and i64 %383, 4294967295
  store i64 %387, i64* %RCX, align 8, !tbaa !2428
  store i8 %385, i8* %18, align 1, !tbaa !2451
  %388 = and i32 %386, 255
  %389 = tail call i32 @llvm.ctpop.i32(i32 %388) #8
  %390 = trunc i32 %389 to i8
  %391 = and i8 %390, 1
  %392 = xor i8 %391, 1
  store i8 %392, i8* %19, align 1, !tbaa !2451
  store i8 0, i8* %20, align 1, !tbaa !2451
  %393 = icmp eq i32 %386, 0
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %21, align 1, !tbaa !2451
  %395 = lshr i64 %383, 31
  %396 = trunc i64 %395 to i8
  %397 = and i8 %396, 1
  store i8 %397, i8* %22, align 1, !tbaa !2451
  store i8 0, i8* %23, align 1, !tbaa !2451
  %398 = add i64 %377, 9
  store i64 %398, i64* %PC, align 8
  store i32 %386, i32* %379, align 4
  %399 = load i64, i64* %RBP, align 8
  %400 = add i64 %399, -4
  %401 = load i64, i64* %PC, align 8
  %402 = add i64 %401, 7
  store i64 %402, i64* %PC, align 8
  %403 = inttoptr i64 %400 to i32*
  store i32 9, i32* %403, align 4
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400708

block_40079f:                                     ; preds = %block_400708
  store i32 -1, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056) to i32*), align 16
  %404 = add i64 %338, 12
  store i64 %404, i64* %PC, align 8
  %405 = load i64, i64* %5, align 8, !tbaa !2428
  %406 = add i64 %405, 8
  %407 = inttoptr i64 %405 to i64*
  %408 = load i64, i64* %407, align 8
  store i64 %408, i64* %RBP, align 8, !tbaa !2428
  store i64 %406, i64* %5, align 8, !tbaa !2428
  %409 = add i64 %338, 13
  store i64 %409, i64* %PC, align 8
  %410 = inttoptr i64 %406 to i64*
  %411 = load i64, i64* %410, align 8
  store i64 %411, i64* %PC, align 8, !tbaa !2428
  %412 = add i64 %405, 16
  store i64 %412, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4006bd:                                     ; preds = %block_400687
  %413 = add i64 %482, 3
  store i64 %413, i64* %PC, align 8
  %414 = inttoptr i64 %.pre3 to i32*
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2112) to i32*), align 16
  %417 = xor i32 %416, %415
  %418 = zext i32 %417 to i64
  store i64 %418, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %18, align 1, !tbaa !2432
  %419 = and i32 %417, 255
  %420 = tail call i32 @llvm.ctpop.i32(i32 %419) #8
  %421 = trunc i32 %420 to i8
  %422 = and i8 %421, 1
  %423 = xor i8 %422, 1
  store i8 %423, i8* %19, align 1, !tbaa !2446
  %424 = icmp eq i32 %417, 0
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %21, align 1, !tbaa !2448
  %426 = lshr i32 %417, 31
  %427 = trunc i32 %426 to i8
  store i8 %427, i8* %22, align 1, !tbaa !2449
  store i8 0, i8* %23, align 1, !tbaa !2450
  store i8 0, i8* %20, align 1, !tbaa !2447
  %428 = add i64 %482, 17
  store i64 %428, i64* %PC, align 8
  store i32 %417, i32* inttoptr (i64 add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2112) to i32*), align 16
  br label %block_4006ce

block_400687:                                     ; preds = %block_40067d
  %429 = add i64 %340, -8
  %430 = add i64 %368, 3
  store i64 %430, i64* %PC, align 8
  %431 = inttoptr i64 %429 to i32*
  %432 = load i32, i32* %431, align 4
  %433 = zext i32 %432 to i64
  store i64 %433, i64* %RAX, align 8, !tbaa !2428
  %434 = add i64 %368, 7
  store i64 %434, i64* %PC, align 8
  %435 = load i32, i32* %343, align 4
  %436 = sext i32 %435 to i64
  store i64 %436, i64* %RCX, align 8, !tbaa !2428
  %437 = shl nsw i64 %436, 2
  %438 = add i64 %437, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %439 = add i64 %368, 14
  store i64 %439, i64* %PC, align 8
  %440 = inttoptr i64 %438 to i32*
  store i32 %432, i32* %440, align 4
  %441 = load i64, i64* %RBP, align 8
  %442 = add i64 %441, -4
  %443 = load i64, i64* %PC, align 8
  %444 = add i64 %443, 3
  store i64 %444, i64* %PC, align 8
  %445 = inttoptr i64 %442 to i32*
  %446 = load i32, i32* %445, align 4
  %447 = zext i32 %446 to i64
  store i64 %447, i64* %RAX, align 8, !tbaa !2428
  %448 = add i64 %443, 7
  store i64 %448, i64* %PC, align 8
  %449 = load i32, i32* %445, align 4
  %450 = sext i32 %449 to i64
  store i64 %450, i64* %RCX, align 8, !tbaa !2428
  %451 = shl nsw i64 %450, 2
  %452 = add i64 %451, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 2080)
  %453 = add i64 %443, 15
  store i64 %453, i64* %PC, align 8
  %454 = inttoptr i64 %452 to i32*
  %455 = load i32, i32* %454, align 4
  %456 = sext i32 %455 to i64
  store i64 %456, i64* %RCX, align 8, !tbaa !2428
  %457 = shl nsw i64 %456, 2
  %458 = add i64 %457, add (i64 ptrtoint (%seg_603060__bss_type* @seg_603060__bss to i64), i64 1056)
  %459 = add i64 %443, 22
  store i64 %459, i64* %PC, align 8
  %460 = inttoptr i64 %458 to i32*
  store i32 %446, i32* %460, align 4
  %461 = load i64, i64* %RBP, align 8
  %462 = add i64 %461, -4
  %463 = load i64, i64* %PC, align 8
  %464 = add i64 %463, 4
  store i64 %464, i64* %PC, align 8
  %465 = inttoptr i64 %462 to i32*
  %466 = load i32, i32* %465, align 4
  %467 = sext i32 %466 to i64
  store i64 %467, i64* %RCX, align 8, !tbaa !2428
  %468 = shl nsw i64 %467, 2
  %469 = add i64 %468, add (i64 ptrtoint (%seg_603020__data_type* @seg_603020__data to i64), i64 16)
  %470 = add i64 %463, 12
  store i64 %470, i64* %PC, align 8
  %471 = inttoptr i64 %469 to i32*
  %472 = load i32, i32* %471, align 4
  store i8 0, i8* %18, align 1, !tbaa !2432
  %473 = and i32 %472, 255
  %474 = tail call i32 @llvm.ctpop.i32(i32 %473) #8
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  %477 = xor i8 %476, 1
  store i8 %477, i8* %19, align 1, !tbaa !2446
  store i8 0, i8* %20, align 1, !tbaa !2447
  %478 = icmp eq i32 %472, 0
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %21, align 1, !tbaa !2448
  %480 = lshr i32 %472, 31
  %481 = trunc i32 %480 to i8
  store i8 %481, i8* %22, align 1, !tbaa !2449
  store i8 0, i8* %23, align 1, !tbaa !2450
  %.v6 = select i1 %478, i64 35, i64 18
  %482 = add i64 %463, %.v6
  store i64 %482, i64* %PC, align 8, !tbaa !2428
  %.pre3 = add i64 %461, -8
  br i1 %478, label %block_400687.block_4006ce_crit_edge, label %block_4006bd

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
