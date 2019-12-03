; ModuleID = 'binary/test.mcsema.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400970__rodata_type = type <{ [192 x i8], [3 x i8], [40 x i8], [11 x i8], [10 x i8], [19 x i8], [10 x i8] }>
%seg_600de0__init_array_type = type <{ i64, i64 }>
%seg_600ff0__got_type = type <{ i64, i64 }>
%maze_type = type <{ [77 x i8] }>
%__bss_start_type = type <{ [3 x i8] }>
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
@seg_400970__rodata = internal constant %seg_400970__rodata_type <{ [192 x i8] c"\01\00\02\00\00\00\00\00B\07@\00\00\00\00\00^\07@\00\00\00\00\00^\07@\00\00\00\00\00P\07@\00\00\00\00\00^\07@\00\00\00\00\00^\07@\00\00\00\00\00^\07@\00\00\00\00\00^\07@\00\00\00\00\00^\07@\00\00\00\00\00^\07@\00\00\00\00\00^\07@\00\00\00\00\00^\07@\00\00\00\00\00^\07@\00\00\00\00\00^\07@\00\00\00\00\00^\07@\00\00\00\00\00^\07@\00\00\00\00\00^\07@\00\00\00\00\00^\07@\00\00\00\00\004\07@\00\00\00\00\00^\07@\00\00\00\00\00^\07@\00\00\00\00\00^\07@\00\00\00\00\00&\07@\00\00\00\00\00", [3 x i8] c"%c\00", [40 x i8] c"Wrong command!(only w,s,a,d accepted!)\0A\00", [11 x i8] c"You lose!\0A\00", [10 x i8] c"You win!\0A\00", [19 x i8] c"Your solution:%s \0A\00", [10 x i8] c"You lose\0A\00" }>
@seg_600de0__init_array = internal global %seg_600de0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_4005c0_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400590___do_global_dtors_aux to i64) }>
@seg_600ff0__got = internal global %seg_600ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@maze = global %maze_type <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>
@__bss_start = local_unnamed_addr global %__bss_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4005c0_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400590___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400960___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4008f0___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @draw_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

declare %struct.Memory* @sub_4005d0_draw_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400480__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400520_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_missing_block(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #4

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @read(i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
define %struct.Memory* @sub_400680_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400680:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %1, 1
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !2428
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %5, i64* %10, align 8
  %11 = load i64, i64* %PC, align 8
  store i64 %9, i64* %RBP, align 8, !tbaa !2428
  %12 = add i64 %8, -120
  store i64 %12, i64* %RSP, align 8, !tbaa !2428
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  store i8 1, i8* %14, align 1, !tbaa !2446
  store i8 1, i8* %16, align 1, !tbaa !2447
  store i8 0, i8* %17, align 1, !tbaa !2448
  store i8 0, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %15, align 1, !tbaa !2450
  store i64 28, i64* %RCX, align 8, !tbaa !2428
  store i64 28, i64* %RDX, align 8, !tbaa !2428
  %19 = add i64 %8, -72
  store i64 %19, i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %R9, align 8, !tbaa !2428
  %20 = add i64 %8, -12
  %21 = add i64 %11, 37
  store i64 %21, i64* %PC, align 8
  %22 = inttoptr i64 %20 to i32*
  store i32 0, i32* %22, align 4
  %23 = load i64, i64* %RBP, align 8
  %24 = add i64 %23, -8
  %25 = load i32, i32* %EDI, align 4
  %26 = load i64, i64* %PC, align 8
  %27 = add i64 %26, 3
  store i64 %27, i64* %PC, align 8
  %28 = inttoptr i64 %24 to i32*
  store i32 %25, i32* %28, align 4
  %29 = load i64, i64* %RBP, align 8
  %30 = add i64 %29, -16
  %31 = load i64, i64* %RSI, align 8
  %32 = load i64, i64* %PC, align 8
  %33 = add i64 %32, 4
  store i64 %33, i64* %PC, align 8
  %34 = inttoptr i64 %30 to i64*
  store i64 %31, i64* %34, align 8
  %35 = load i64, i64* %RBP, align 8
  %36 = add i64 %35, -36
  %37 = load i64, i64* %PC, align 8
  %38 = add i64 %37, 7
  store i64 %38, i64* %PC, align 8
  %39 = inttoptr i64 %36 to i32*
  store i32 0, i32* %39, align 4
  %40 = load i64, i64* %RBP, align 8
  %41 = add i64 %40, -20
  %42 = load i64, i64* %PC, align 8
  %43 = add i64 %42, 7
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 1, i32* %44, align 4
  %45 = load i64, i64* %RBP, align 8
  %46 = add i64 %45, -24
  %47 = load i64, i64* %PC, align 8
  %48 = add i64 %47, 7
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %46 to i32*
  store i32 1, i32* %49, align 4
  %50 = load i64, i64* %RBP, align 8
  %51 = add i64 %50, -24
  %52 = load i64, i64* %PC, align 8
  %53 = add i64 %52, 4
  store i64 %53, i64* %PC, align 8
  %54 = inttoptr i64 %51 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = mul nsw i64 %56, 11
  store i64 %57, i64* %RSI, align 8, !tbaa !2428
  %58 = lshr i64 %57, 63
  %59 = load i64, i64* %R9, align 8
  %60 = add i64 %57, %59
  store i64 %60, i64* %R9, align 8, !tbaa !2428
  %61 = icmp ult i64 %60, %59
  %62 = icmp ult i64 %60, %57
  %63 = or i1 %61, %62
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %13, align 1, !tbaa !2432
  %65 = trunc i64 %60 to i32
  %66 = and i32 %65, 255
  %67 = tail call i32 @llvm.ctpop.i32(i32 %66) #8
  %68 = trunc i32 %67 to i8
  %69 = and i8 %68, 1
  %70 = xor i8 %69, 1
  store i8 %70, i8* %14, align 1, !tbaa !2446
  %71 = xor i64 %57, %59
  %72 = xor i64 %71, %60
  %73 = lshr i64 %72, 4
  %74 = trunc i64 %73 to i8
  %75 = and i8 %74, 1
  store i8 %75, i8* %15, align 1, !tbaa !2450
  %76 = icmp eq i64 %60, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %16, align 1, !tbaa !2447
  %78 = lshr i64 %60, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %17, align 1, !tbaa !2448
  %80 = lshr i64 %59, 63
  %81 = xor i64 %78, %80
  %82 = xor i64 %78, %58
  %83 = add nuw nsw i64 %81, %82
  %84 = icmp eq i64 %83, 2
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %18, align 1, !tbaa !2449
  %86 = add i64 %50, -20
  %87 = add i64 %52, 15
  store i64 %87, i64* %PC, align 8
  %88 = inttoptr i64 %86 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = add i64 %90, %60
  %92 = add i64 %52, 20
  store i64 %92, i64* %PC, align 8
  %93 = inttoptr i64 %91 to i8*
  store i8 88, i8* %93, align 1
  %94 = load i32, i32* %EAX, align 4
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* %PC, align 8
  store i64 %95, i64* %RDI, align 8, !tbaa !2428
  %97 = load i64, i64* %R8, align 8
  store i64 %97, i64* %RSI, align 8, !tbaa !2428
  %98 = add i64 %96, -534
  %99 = add i64 %96, 10
  %100 = load i64, i64* %7, align 8, !tbaa !2428
  %101 = add i64 %100, -8
  %102 = inttoptr i64 %101 to i64*
  store i64 %99, i64* %102, align 8
  store i64 %101, i64* %7, align 8, !tbaa !2428
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %98, i64* %103, align 8, !tbaa !2428
  %104 = tail call fastcc %struct.Memory* @ext_601098_read(%struct.State* nonnull %0, %struct.Memory* %2)
  %105 = load i64, i64* %RBP, align 8
  %106 = add i64 %105, -72
  %107 = load i64, i64* %RAX, align 8
  %108 = load i64, i64* %PC, align 8
  %109 = add i64 %108, 4
  store i64 %109, i64* %PC, align 8
  %110 = inttoptr i64 %106 to i64*
  store i64 %107, i64* %110, align 8
  %.pre = load i64, i64* %PC, align 8
  br label %block_4006e4

block_4006ee:                                     ; preds = %block_4006e4
  %111 = add i64 %665, -20
  %112 = add i64 %694, 3
  store i64 %112, i64* %PC, align 8
  %113 = inttoptr i64 %111 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RAX, align 8, !tbaa !2428
  %116 = add i64 %665, -28
  %117 = add i64 %694, 6
  store i64 %117, i64* %PC, align 8
  %118 = inttoptr i64 %116 to i32*
  store i32 %114, i32* %118, align 4
  %119 = load i64, i64* %RBP, align 8
  %120 = add i64 %119, -24
  %121 = load i64, i64* %PC, align 8
  %122 = add i64 %121, 3
  store i64 %122, i64* %PC, align 8
  %123 = inttoptr i64 %120 to i32*
  %124 = load i32, i32* %123, align 4
  %125 = zext i32 %124 to i64
  store i64 %125, i64* %RAX, align 8, !tbaa !2428
  %126 = add i64 %119, -32
  %127 = add i64 %121, 6
  store i64 %127, i64* %PC, align 8
  %128 = inttoptr i64 %126 to i32*
  store i32 %124, i32* %128, align 4
  %129 = load i64, i64* %RBP, align 8
  %130 = add i64 %129, -36
  %131 = load i64, i64* %PC, align 8
  %132 = add i64 %131, 4
  store i64 %132, i64* %PC, align 8
  %133 = inttoptr i64 %130 to i32*
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %RCX, align 8, !tbaa !2428
  %136 = add i64 %129, -64
  %137 = add i64 %136, %135
  %138 = add i64 %131, 9
  store i64 %138, i64* %PC, align 8
  %139 = inttoptr i64 %137 to i8*
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = add nsw i32 %141, -97
  %143 = zext i32 %142 to i64
  %144 = lshr i32 %142, 31
  store i64 %143, i64* %RCX, align 8, !tbaa !2428
  %145 = add nsw i32 %141, -119
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %RAX, align 8, !tbaa !2428
  %147 = icmp ult i32 %142, 22
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %13, align 1, !tbaa !2432
  %149 = and i32 %145, 255
  %150 = tail call i32 @llvm.ctpop.i32(i32 %149) #8
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  %153 = xor i8 %152, 1
  store i8 %153, i8* %14, align 1, !tbaa !2446
  %154 = xor i32 %142, 16
  %155 = xor i32 %154, %145
  %156 = lshr i32 %155, 4
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  store i8 %158, i8* %15, align 1, !tbaa !2450
  %159 = icmp eq i32 %145, 0
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %16, align 1, !tbaa !2447
  %161 = lshr i32 %145, 31
  %162 = trunc i32 %161 to i8
  store i8 %162, i8* %17, align 1, !tbaa !2448
  %163 = xor i32 %161, %144
  %164 = add nuw nsw i32 %163, %144
  %165 = icmp eq i32 %164, 2
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %18, align 1, !tbaa !2449
  %167 = add i64 %129, -80
  %168 = add i64 %131, 21
  store i64 %168, i64* %PC, align 8
  %169 = inttoptr i64 %167 to i64*
  store i64 %143, i64* %169, align 8
  %170 = load i64, i64* %RBP, align 8
  %171 = add i64 %170, -84
  %172 = load i32, i32* %EAX, align 4
  %173 = load i64, i64* %PC, align 8
  %174 = add i64 %173, 3
  store i64 %174, i64* %PC, align 8
  %175 = inttoptr i64 %171 to i32*
  store i32 %172, i32* %175, align 4
  %176 = load i64, i64* %PC, align 8
  %177 = load i8, i8* %13, align 1, !tbaa !2432
  %178 = load i8, i8* %16, align 1, !tbaa !2447
  %179 = or i8 %178, %177
  %180 = icmp eq i8 %179, 0
  %.v16 = select i1 %180, i64 76, i64 6
  %181 = add i64 %176, %.v16
  store i64 %181, i64* %103, align 8, !tbaa !2428
  br i1 %180, label %block_40075e, label %block_400718

block_40086b:                                     ; preds = %block_40085f
  %182 = add i64 %256, -32
  %183 = add i64 %290, 3
  store i64 %183, i64* %PC, align 8
  %184 = inttoptr i64 %182 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = zext i32 %185 to i64
  store i64 %186, i64* %RAX, align 8, !tbaa !2428
  %187 = add i64 %256, -24
  %188 = add i64 %290, 6
  store i64 %188, i64* %PC, align 8
  %189 = inttoptr i64 %187 to i32*
  %190 = load i32, i32* %189, align 4
  %191 = sub i32 %185, %190
  %192 = icmp ult i32 %185, %190
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %13, align 1, !tbaa !2432
  %194 = and i32 %191, 255
  %195 = tail call i32 @llvm.ctpop.i32(i32 %194) #8
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  %198 = xor i8 %197, 1
  store i8 %198, i8* %14, align 1, !tbaa !2446
  %199 = xor i32 %190, %185
  %200 = xor i32 %199, %191
  %201 = lshr i32 %200, 4
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  store i8 %203, i8* %15, align 1, !tbaa !2450
  %204 = icmp eq i32 %191, 0
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %16, align 1, !tbaa !2447
  %206 = lshr i32 %191, 31
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %17, align 1, !tbaa !2448
  %208 = lshr i32 %185, 31
  %209 = lshr i32 %190, 31
  %210 = xor i32 %209, %208
  %211 = xor i32 %206, %208
  %212 = add nuw nsw i32 %211, %210
  %213 = icmp eq i32 %212, 2
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %18, align 1, !tbaa !2449
  %.v24 = select i1 %204, i64 12, i64 44
  %215 = add i64 %290, %.v24
  store i64 %215, i64* %103, align 8, !tbaa !2428
  br i1 %204, label %block_400877, label %block_400897

block_4008e2:                                     ; preds = %block_400877, %block_4008c7
  %216 = phi i64 [ %.pre8, %block_4008c7 ], [ %913, %block_400877 ]
  %MEMORY.0 = phi %struct.Memory* [ %510, %block_4008c7 ], [ %900, %block_400877 ]
  %217 = load i64, i64* %RBP, align 8
  %218 = add i64 %217, -4
  %219 = add i64 %216, 3
  store i64 %219, i64* %PC, align 8
  %220 = inttoptr i64 %218 to i32*
  %221 = load i32, i32* %220, align 4
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RAX, align 8, !tbaa !2428
  %223 = load i64, i64* %RSP, align 8
  %224 = add i64 %223, 112
  store i64 %224, i64* %RSP, align 8, !tbaa !2428
  %225 = icmp ugt i64 %223, -113
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %13, align 1, !tbaa !2432
  %227 = trunc i64 %224 to i32
  %228 = and i32 %227, 255
  %229 = tail call i32 @llvm.ctpop.i32(i32 %228) #8
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  store i8 %232, i8* %14, align 1, !tbaa !2446
  %233 = xor i64 %223, 16
  %234 = xor i64 %233, %224
  %235 = lshr i64 %234, 4
  %236 = trunc i64 %235 to i8
  %237 = and i8 %236, 1
  store i8 %237, i8* %15, align 1, !tbaa !2450
  %238 = icmp eq i64 %224, 0
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %16, align 1, !tbaa !2447
  %240 = lshr i64 %224, 63
  %241 = trunc i64 %240 to i8
  store i8 %241, i8* %17, align 1, !tbaa !2448
  %242 = lshr i64 %223, 63
  %243 = xor i64 %240, %242
  %244 = add nuw nsw i64 %243, %240
  %245 = icmp eq i64 %244, 2
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %18, align 1, !tbaa !2449
  %247 = add i64 %216, 8
  store i64 %247, i64* %PC, align 8
  %248 = add i64 %223, 120
  %249 = inttoptr i64 %224 to i64*
  %250 = load i64, i64* %249, align 8
  store i64 %250, i64* %RBP, align 8, !tbaa !2428
  store i64 %248, i64* %7, align 8, !tbaa !2428
  %251 = add i64 %216, 9
  store i64 %251, i64* %PC, align 8
  %252 = inttoptr i64 %248 to i64*
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %103, align 8, !tbaa !2428
  %254 = add i64 %223, 128
  store i64 %254, i64* %7, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_40085f:                                     ; preds = %block_400849, %block_4007e9, %block_400853
  %255 = phi i64 [ %867, %block_400849 ], [ %663, %block_4007e9 ], [ %.pre7, %block_400853 ]
  %256 = load i64, i64* %RBP, align 8
  %257 = add i64 %256, -28
  %258 = add i64 %255, 3
  store i64 %258, i64* %PC, align 8
  %259 = inttoptr i64 %257 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = zext i32 %260 to i64
  store i64 %261, i64* %RAX, align 8, !tbaa !2428
  %262 = add i64 %256, -20
  %263 = add i64 %255, 6
  store i64 %263, i64* %PC, align 8
  %264 = inttoptr i64 %262 to i32*
  %265 = load i32, i32* %264, align 4
  %266 = sub i32 %260, %265
  %267 = icmp ult i32 %260, %265
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %13, align 1, !tbaa !2432
  %269 = and i32 %266, 255
  %270 = tail call i32 @llvm.ctpop.i32(i32 %269) #8
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  %273 = xor i8 %272, 1
  store i8 %273, i8* %14, align 1, !tbaa !2446
  %274 = xor i32 %265, %260
  %275 = xor i32 %274, %266
  %276 = lshr i32 %275, 4
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  store i8 %278, i8* %15, align 1, !tbaa !2450
  %279 = icmp eq i32 %266, 0
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %16, align 1, !tbaa !2447
  %281 = lshr i32 %266, 31
  %282 = trunc i32 %281 to i8
  store i8 %282, i8* %17, align 1, !tbaa !2448
  %283 = lshr i32 %260, 31
  %284 = lshr i32 %265, 31
  %285 = xor i32 %284, %283
  %286 = xor i32 %281, %283
  %287 = add nuw nsw i32 %286, %285
  %288 = icmp eq i32 %287, 2
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %18, align 1, !tbaa !2449
  %.v23 = select i1 %279, i64 12, i64 56
  %290 = add i64 %255, %.v23
  store i64 %290, i64* %103, align 8, !tbaa !2428
  br i1 %279, label %block_40086b, label %block_40085f.block_400897_crit_edge

block_40085f.block_400897_crit_edge:              ; preds = %block_40085f
  %.pre9 = add i64 %256, -24
  %.pre10 = inttoptr i64 %.pre9 to i32*
  br label %block_400897

block_40075e:                                     ; preds = %block_400718, %block_4006ee
  %291 = phi i64 [ 4196190, %block_400718 ], [ %181, %block_4006ee ]
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 195), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %292 = add i64 %291, -686
  %293 = add i64 %291, 17
  %294 = load i64, i64* %7, align 8, !tbaa !2428
  %295 = add i64 %294, -8
  %296 = inttoptr i64 %295 to i64*
  store i64 %293, i64* %296, align 8
  store i64 %295, i64* %7, align 8, !tbaa !2428
  store i64 %292, i64* %103, align 8, !tbaa !2428
  %297 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %298 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 235), i64* %RDI, align 8, !tbaa !2428
  %299 = load i64, i64* %RBP, align 8
  %300 = add i64 %299, -88
  %301 = load i32, i32* %EAX, align 4
  %302 = add i64 %298, 13
  store i64 %302, i64* %PC, align 8
  %303 = inttoptr i64 %300 to i32*
  store i32 %301, i32* %303, align 4
  %304 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %305 = add i64 %304, -716
  %306 = add i64 %304, 7
  %307 = load i64, i64* %7, align 8, !tbaa !2428
  %308 = add i64 %307, -8
  %309 = inttoptr i64 %308 to i64*
  store i64 %306, i64* %309, align 8
  store i64 %308, i64* %7, align 8, !tbaa !2428
  store i64 %305, i64* %103, align 8, !tbaa !2428
  %310 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %297)
  %311 = load i64, i64* %PC, align 8
  store i64 4294967295, i64* %RDI, align 8, !tbaa !2428
  %312 = load i64, i64* %RBP, align 8
  %313 = add i64 %312, -92
  %314 = load i32, i32* %EAX, align 4
  %315 = add i64 %311, 8
  store i64 %315, i64* %PC, align 8
  %316 = inttoptr i64 %313 to i32*
  store i32 %314, i32* %316, align 4
  %317 = load i64, i64* %PC, align 8
  %318 = add i64 %317, -699
  %319 = add i64 %317, 5
  %320 = load i64, i64* %7, align 8, !tbaa !2428
  %321 = add i64 %320, -8
  %322 = inttoptr i64 %321 to i64*
  store i64 %319, i64* %322, align 8
  store i64 %321, i64* %7, align 8, !tbaa !2428
  store i64 %318, i64* %103, align 8, !tbaa !2428
  %323 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %310)
  %324 = load i64, i64* %PC, align 8
  %325 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %324, %struct.Memory* %323)
  ret %struct.Memory* %325

block_400750:                                     ; preds = %block_400718
  %326 = add i64 %587, -20
  store i64 4196179, i64* %PC, align 8
  %327 = inttoptr i64 %326 to i32*
  %328 = load i32, i32* %327, align 4
  %329 = add i32 %328, 1
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RAX, align 8, !tbaa !2428
  %331 = icmp eq i32 %328, -1
  %332 = icmp eq i32 %329, 0
  %333 = or i1 %331, %332
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %13, align 1, !tbaa !2432
  %335 = and i32 %329, 255
  %336 = tail call i32 @llvm.ctpop.i32(i32 %335) #8
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  %339 = xor i8 %338, 1
  store i8 %339, i8* %14, align 1, !tbaa !2446
  %340 = xor i32 %328, %329
  %341 = lshr i32 %340, 4
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  store i8 %343, i8* %15, align 1, !tbaa !2450
  %344 = icmp eq i32 %329, 0
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %16, align 1, !tbaa !2447
  %346 = lshr i32 %329, 31
  %347 = trunc i32 %346 to i8
  store i8 %347, i8* %17, align 1, !tbaa !2448
  %348 = lshr i32 %328, 31
  %349 = xor i32 %346, %348
  %350 = add nuw nsw i32 %349, %346
  %351 = icmp eq i32 %350, 2
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %18, align 1, !tbaa !2449
  store i64 4196185, i64* %PC, align 8
  store i32 %329, i32* %327, align 4
  br label %block_400790

block_40083f:                                     ; preds = %block_400819
  %353 = add i64 %.pre6, -20
  %354 = add i64 %586, 4
  store i64 %354, i64* %PC, align 8
  %355 = inttoptr i64 %353 to i32*
  %356 = load i32, i32* %355, align 4
  store i8 0, i8* %13, align 1, !tbaa !2432
  %357 = and i32 %356, 255
  %358 = tail call i32 @llvm.ctpop.i32(i32 %357) #8
  %359 = trunc i32 %358 to i8
  %360 = and i8 %359, 1
  %361 = xor i8 %360, 1
  store i8 %361, i8* %14, align 1, !tbaa !2446
  store i8 0, i8* %15, align 1, !tbaa !2450
  %362 = icmp eq i32 %356, 0
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %16, align 1, !tbaa !2447
  %364 = lshr i32 %356, 31
  %365 = trunc i32 %364 to i8
  store i8 %365, i8* %17, align 1, !tbaa !2448
  store i8 0, i8* %18, align 1, !tbaa !2449
  %366 = icmp ne i8 %365, 0
  %367 = or i1 %362, %366
  %.v21 = select i1 %367, i64 20, i64 10
  %368 = add i64 %586, %.v21
  store i64 %368, i64* %103, align 8, !tbaa !2428
  br i1 %367, label %block_400853, label %block_400849

block_400742:                                     ; preds = %block_400718
  %369 = add i64 %587, -20
  store i64 4196165, i64* %PC, align 8
  %370 = inttoptr i64 %369 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = add i32 %371, -1
  %373 = zext i32 %372 to i64
  store i64 %373, i64* %RAX, align 8, !tbaa !2428
  %374 = icmp ne i32 %371, 0
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %13, align 1, !tbaa !2432
  %376 = and i32 %372, 255
  %377 = tail call i32 @llvm.ctpop.i32(i32 %376) #8
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  %380 = xor i8 %379, 1
  store i8 %380, i8* %14, align 1, !tbaa !2446
  %381 = xor i32 %371, 16
  %382 = xor i32 %372, %381
  %383 = lshr i32 %382, 4
  %384 = trunc i32 %383 to i8
  %385 = and i8 %384, 1
  store i8 %385, i8* %15, align 1, !tbaa !2450
  %386 = icmp eq i32 %372, 0
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %16, align 1, !tbaa !2447
  %388 = lshr i32 %372, 31
  %389 = trunc i32 %388 to i8
  store i8 %389, i8* %17, align 1, !tbaa !2448
  %390 = lshr i32 %371, 31
  %391 = xor i32 %388, %390
  %392 = xor i32 %388, 1
  %393 = add nuw nsw i32 %391, %392
  %394 = icmp eq i32 %393, 2
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %18, align 1, !tbaa !2449
  store i64 4196171, i64* %PC, align 8
  store i32 %372, i32* %370, align 4
  br label %block_400790

block_4007b6:                                     ; preds = %block_400790
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %396 = add i64 %840, -774
  %397 = add i64 %840, 17
  %398 = load i64, i64* %7, align 8, !tbaa !2428
  %399 = add i64 %398, -8
  %400 = inttoptr i64 %399 to i64*
  store i64 %397, i64* %400, align 8
  store i64 %399, i64* %7, align 8, !tbaa !2428
  store i64 %396, i64* %103, align 8, !tbaa !2428
  %401 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %402 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2428
  %403 = load i64, i64* %RBP, align 8
  %404 = add i64 %403, -64
  store i64 %404, i64* %RSI, align 8, !tbaa !2428
  %405 = add i64 %403, -96
  %406 = load i32, i32* %EAX, align 4
  %407 = add i64 %402, 17
  store i64 %407, i64* %PC, align 8
  %408 = inttoptr i64 %405 to i32*
  store i32 %406, i32* %408, align 4
  %409 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %410 = add i64 %409, -808
  %411 = add i64 %409, 7
  %412 = load i64, i64* %7, align 8, !tbaa !2428
  %413 = add i64 %412, -8
  %414 = inttoptr i64 %413 to i64*
  store i64 %411, i64* %414, align 8
  store i64 %413, i64* %7, align 8, !tbaa !2428
  store i64 %410, i64* %103, align 8, !tbaa !2428
  %415 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %401)
  %416 = load i64, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2432
  store i8 1, i8* %14, align 1, !tbaa !2446
  store i8 1, i8* %16, align 1, !tbaa !2447
  store i8 0, i8* %17, align 1, !tbaa !2448
  store i8 0, i8* %18, align 1, !tbaa !2449
  store i8 0, i8* %15, align 1, !tbaa !2450
  %417 = load i64, i64* %RBP, align 8
  %418 = add i64 %417, -100
  %419 = load i32, i32* %EAX, align 4
  %420 = add i64 %416, 5
  store i64 %420, i64* %PC, align 8
  %421 = inttoptr i64 %418 to i32*
  store i32 %419, i32* %421, align 4
  %422 = load i64, i64* %PC, align 8
  %423 = add i64 %422, -788
  %424 = add i64 %422, 5
  %425 = load i64, i64* %7, align 8, !tbaa !2428
  %426 = add i64 %425, -8
  %427 = inttoptr i64 %426 to i64*
  store i64 %424, i64* %427, align 8
  store i64 %426, i64* %7, align 8, !tbaa !2428
  store i64 %423, i64* %103, align 8, !tbaa !2428
  %428 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %415)
  %429 = load i64, i64* %PC, align 8
  %430 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %429, %struct.Memory* %428)
  ret %struct.Memory* %430

block_400734:                                     ; preds = %block_400718
  %431 = add i64 %587, -24
  store i64 4196151, i64* %PC, align 8
  %432 = inttoptr i64 %431 to i32*
  %433 = load i32, i32* %432, align 4
  %434 = add i32 %433, 1
  %435 = zext i32 %434 to i64
  store i64 %435, i64* %RAX, align 8, !tbaa !2428
  %436 = icmp eq i32 %433, -1
  %437 = icmp eq i32 %434, 0
  %438 = or i1 %436, %437
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %13, align 1, !tbaa !2432
  %440 = and i32 %434, 255
  %441 = tail call i32 @llvm.ctpop.i32(i32 %440) #8
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  %444 = xor i8 %443, 1
  store i8 %444, i8* %14, align 1, !tbaa !2446
  %445 = xor i32 %433, %434
  %446 = lshr i32 %445, 4
  %447 = trunc i32 %446 to i8
  %448 = and i8 %447, 1
  store i8 %448, i8* %15, align 1, !tbaa !2450
  %449 = icmp eq i32 %434, 0
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %16, align 1, !tbaa !2447
  %451 = lshr i32 %434, 31
  %452 = trunc i32 %451 to i8
  store i8 %452, i8* %17, align 1, !tbaa !2448
  %453 = lshr i32 %433, 31
  %454 = xor i32 %451, %453
  %455 = add nuw nsw i32 %454, %451
  %456 = icmp eq i32 %455, 2
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %18, align 1, !tbaa !2449
  store i64 4196157, i64* %PC, align 8
  store i32 %434, i32* %432, align 4
  br label %block_400790

block_400726:                                     ; preds = %block_400718
  %458 = add i64 %587, -24
  store i64 4196137, i64* %PC, align 8
  %459 = inttoptr i64 %458 to i32*
  %460 = load i32, i32* %459, align 4
  %461 = add i32 %460, -1
  %462 = zext i32 %461 to i64
  store i64 %462, i64* %RAX, align 8, !tbaa !2428
  %463 = icmp ne i32 %460, 0
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %13, align 1, !tbaa !2432
  %465 = and i32 %461, 255
  %466 = tail call i32 @llvm.ctpop.i32(i32 %465) #8
  %467 = trunc i32 %466 to i8
  %468 = and i8 %467, 1
  %469 = xor i8 %468, 1
  store i8 %469, i8* %14, align 1, !tbaa !2446
  %470 = xor i32 %460, 16
  %471 = xor i32 %461, %470
  %472 = lshr i32 %471, 4
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  store i8 %474, i8* %15, align 1, !tbaa !2450
  %475 = icmp eq i32 %461, 0
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %16, align 1, !tbaa !2447
  %477 = lshr i32 %461, 31
  %478 = trunc i32 %477 to i8
  store i8 %478, i8* %17, align 1, !tbaa !2448
  %479 = lshr i32 %460, 31
  %480 = xor i32 %477, %479
  %481 = xor i32 %477, 1
  %482 = add nuw nsw i32 %480, %481
  %483 = icmp eq i32 %482, 2
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %18, align 1, !tbaa !2449
  store i64 4196143, i64* %PC, align 8
  store i32 %461, i32* %459, align 4
  br label %block_400790

block_400853:                                     ; preds = %block_400819, %block_40080f, %block_400849, %block_40083f
  %485 = phi i64 [ %894, %block_40080f ], [ %867, %block_400849 ], [ %368, %block_40083f ], [ %586, %block_400819 ]
  %486 = phi i64 [ %868, %block_40080f ], [ %.pre6, %block_400849 ], [ %.pre6, %block_40083f ], [ %.pre6, %block_400819 ]
  %487 = add i64 %486, -28
  %488 = add i64 %485, 3
  store i64 %488, i64* %PC, align 8
  %489 = inttoptr i64 %487 to i32*
  %490 = load i32, i32* %489, align 4
  %491 = zext i32 %490 to i64
  store i64 %491, i64* %RAX, align 8, !tbaa !2428
  %492 = add i64 %486, -20
  %493 = add i64 %485, 6
  store i64 %493, i64* %PC, align 8
  %494 = inttoptr i64 %492 to i32*
  store i32 %490, i32* %494, align 4
  %495 = load i64, i64* %RBP, align 8
  %496 = add i64 %495, -32
  %497 = load i64, i64* %PC, align 8
  %498 = add i64 %497, 3
  store i64 %498, i64* %PC, align 8
  %499 = inttoptr i64 %496 to i32*
  %500 = load i32, i32* %499, align 4
  %501 = zext i32 %500 to i64
  store i64 %501, i64* %RAX, align 8, !tbaa !2428
  %502 = add i64 %495, -24
  %503 = add i64 %497, 6
  store i64 %503, i64* %PC, align 8
  %504 = inttoptr i64 %502 to i32*
  store i32 %500, i32* %504, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_40085f

block_4008c7:                                     ; preds = %block_4006e4
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %505 = add i64 %694, -1047
  %506 = add i64 %694, 17
  %507 = load i64, i64* %7, align 8, !tbaa !2428
  %508 = add i64 %507, -8
  %509 = inttoptr i64 %508 to i64*
  store i64 %506, i64* %509, align 8
  store i64 %508, i64* %7, align 8, !tbaa !2428
  store i64 %505, i64* %103, align 8, !tbaa !2428
  %510 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %511 = load i64, i64* %RBP, align 8
  %512 = add i64 %511, -4
  %513 = load i64, i64* %PC, align 8
  %514 = add i64 %513, 7
  store i64 %514, i64* %PC, align 8
  %515 = inttoptr i64 %512 to i32*
  store i32 1, i32* %515, align 4
  %516 = load i64, i64* %RBP, align 8
  %517 = add i64 %516, -108
  %518 = load i32, i32* %EAX, align 4
  %519 = load i64, i64* %PC, align 8
  %520 = add i64 %519, 3
  store i64 %520, i64* %PC, align 8
  %521 = inttoptr i64 %517 to i32*
  store i32 %518, i32* %521, align 4
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_4008e2

block_400819:                                     ; preds = %block_40080f
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %522 = add i64 %894, 14
  store i64 %522, i64* %PC, align 8
  %523 = load i32, i32* %871, align 4
  %524 = sext i32 %523 to i64
  %525 = mul nsw i64 %524, 11
  store i64 %525, i64* %RCX, align 8, !tbaa !2428
  %526 = lshr i64 %525, 63
  %527 = add i64 %525, ptrtoint (%maze_type* @maze to i64)
  store i64 %527, i64* %RAX, align 8, !tbaa !2428
  %528 = icmp ult i64 %527, ptrtoint (%maze_type* @maze to i64)
  %529 = icmp ult i64 %527, %525
  %530 = or i1 %528, %529
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %13, align 1, !tbaa !2432
  %532 = trunc i64 %527 to i32
  %533 = and i32 %532, 255
  %534 = tail call i32 @llvm.ctpop.i32(i32 %533) #8
  %535 = trunc i32 %534 to i8
  %536 = and i8 %535, 1
  %537 = xor i8 %536, 1
  store i8 %537, i8* %14, align 1, !tbaa !2446
  %538 = xor i64 %525, ptrtoint (%maze_type* @maze to i64)
  %539 = xor i64 %538, %527
  %540 = lshr i64 %539, 4
  %541 = trunc i64 %540 to i8
  %542 = and i8 %541, 1
  store i8 %542, i8* %15, align 1, !tbaa !2450
  %543 = icmp eq i64 %527, 0
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %16, align 1, !tbaa !2447
  %545 = lshr i64 %527, 63
  %546 = trunc i64 %545 to i8
  store i8 %546, i8* %17, align 1, !tbaa !2448
  %547 = xor i64 %545, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %548 = xor i64 %545, %526
  %549 = add nuw nsw i64 %547, %548
  %550 = icmp eq i64 %549, 2
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %18, align 1, !tbaa !2449
  %552 = add i64 %868, -20
  %553 = add i64 %894, 25
  store i64 %553, i64* %PC, align 8
  %554 = inttoptr i64 %552 to i32*
  %555 = load i32, i32* %554, align 4
  %556 = sext i32 %555 to i64
  store i64 %556, i64* %RCX, align 8, !tbaa !2428
  %557 = add i64 %556, %527
  %558 = add i64 %894, 29
  store i64 %558, i64* %PC, align 8
  %559 = inttoptr i64 %557 to i8*
  %560 = load i8, i8* %559, align 1
  %561 = sext i8 %560 to i64
  %562 = and i64 %561, 4294967295
  store i64 %562, i64* %RDX, align 8, !tbaa !2428
  %563 = sext i8 %560 to i32
  %564 = add nsw i32 %563, -124
  %565 = icmp ult i8 %560, 124
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %13, align 1, !tbaa !2432
  %567 = and i32 %564, 255
  %568 = tail call i32 @llvm.ctpop.i32(i32 %567) #8
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  store i8 %571, i8* %14, align 1, !tbaa !2446
  %572 = xor i32 %563, 16
  %573 = xor i32 %572, %564
  %574 = lshr i32 %573, 4
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  store i8 %576, i8* %15, align 1, !tbaa !2450
  %577 = icmp eq i32 %564, 0
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %16, align 1, !tbaa !2447
  %579 = lshr i32 %564, 31
  %580 = trunc i32 %579 to i8
  store i8 %580, i8* %17, align 1, !tbaa !2448
  %581 = lshr i32 %563, 31
  %582 = xor i32 %579, %581
  %583 = add nuw nsw i32 %582, %581
  %584 = icmp eq i32 %583, 2
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %18, align 1, !tbaa !2449
  %.v20 = select i1 %577, i64 38, i64 58
  %586 = add i64 %894, %.v20
  store i64 %586, i64* %103, align 8, !tbaa !2428
  %.pre6 = load i64, i64* %RBP, align 8
  br i1 %577, label %block_40083f, label %block_400853

block_400718:                                     ; preds = %block_4006ee
  %587 = load i64, i64* %RBP, align 8
  %588 = add i64 %587, -80
  %589 = add i64 %181, 4
  store i64 %589, i64* %PC, align 8
  %590 = inttoptr i64 %588 to i64*
  %591 = load i64, i64* %590, align 8
  store i64 %591, i64* %RAX, align 8, !tbaa !2428
  %592 = shl i64 %591, 3
  %593 = add i64 %592, add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 8)
  %594 = add i64 %181, 12
  store i64 %594, i64* %PC, align 8
  %595 = inttoptr i64 %593 to i64*
  %596 = load i64, i64* %595, align 8
  store i64 %596, i64* %RCX, align 8, !tbaa !2428
  store i64 %596, i64* %103, align 8, !tbaa !2428
  switch i64 %596, label %914 [
    i64 4196162, label %block_400742
    i64 4196176, label %block_400750
    i64 4196148, label %block_400734
    i64 4196190, label %block_40075e
    i64 4196134, label %block_400726
  ]

block_4007e9:                                     ; preds = %block_400790
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %597 = load i64, i64* %RBP, align 8
  %598 = add i64 %597, -24
  %599 = add i64 %840, 14
  store i64 %599, i64* %PC, align 8
  %600 = inttoptr i64 %598 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = sext i32 %601 to i64
  %603 = mul nsw i64 %602, 11
  store i64 %603, i64* %RCX, align 8, !tbaa !2428
  %604 = lshr i64 %603, 63
  %605 = add i64 %603, ptrtoint (%maze_type* @maze to i64)
  store i64 %605, i64* %RAX, align 8, !tbaa !2428
  %606 = icmp ult i64 %605, ptrtoint (%maze_type* @maze to i64)
  %607 = icmp ult i64 %605, %603
  %608 = or i1 %606, %607
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %13, align 1, !tbaa !2432
  %610 = trunc i64 %605 to i32
  %611 = and i32 %610, 255
  %612 = tail call i32 @llvm.ctpop.i32(i32 %611) #8
  %613 = trunc i32 %612 to i8
  %614 = and i8 %613, 1
  %615 = xor i8 %614, 1
  store i8 %615, i8* %14, align 1, !tbaa !2446
  %616 = xor i64 %603, ptrtoint (%maze_type* @maze to i64)
  %617 = xor i64 %616, %605
  %618 = lshr i64 %617, 4
  %619 = trunc i64 %618 to i8
  %620 = and i8 %619, 1
  store i8 %620, i8* %15, align 1, !tbaa !2450
  %621 = icmp eq i64 %605, 0
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %16, align 1, !tbaa !2447
  %623 = lshr i64 %605, 63
  %624 = trunc i64 %623 to i8
  store i8 %624, i8* %17, align 1, !tbaa !2448
  %625 = xor i64 %623, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %626 = xor i64 %623, %604
  %627 = add nuw nsw i64 %625, %626
  %628 = icmp eq i64 %627, 2
  %629 = zext i1 %628 to i8
  store i8 %629, i8* %18, align 1, !tbaa !2449
  %630 = add i64 %597, -20
  %631 = add i64 %840, 25
  store i64 %631, i64* %PC, align 8
  %632 = inttoptr i64 %630 to i32*
  %633 = load i32, i32* %632, align 4
  %634 = sext i32 %633 to i64
  store i64 %634, i64* %RCX, align 8, !tbaa !2428
  %635 = add i64 %634, %605
  %636 = add i64 %840, 29
  store i64 %636, i64* %PC, align 8
  %637 = inttoptr i64 %635 to i8*
  %638 = load i8, i8* %637, align 1
  %639 = sext i8 %638 to i64
  %640 = and i64 %639, 4294967295
  store i64 %640, i64* %RDX, align 8, !tbaa !2428
  %641 = sext i8 %638 to i32
  %642 = add nsw i32 %641, -32
  %643 = icmp ult i8 %638, 32
  %644 = zext i1 %643 to i8
  store i8 %644, i8* %13, align 1, !tbaa !2432
  %645 = and i32 %642, 255
  %646 = tail call i32 @llvm.ctpop.i32(i32 %645) #8
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  %649 = xor i8 %648, 1
  store i8 %649, i8* %14, align 1, !tbaa !2446
  %650 = xor i32 %641, %642
  %651 = lshr i32 %650, 4
  %652 = trunc i32 %651 to i8
  %653 = and i8 %652, 1
  store i8 %653, i8* %15, align 1, !tbaa !2450
  %654 = icmp eq i32 %642, 0
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %16, align 1, !tbaa !2447
  %656 = lshr i32 %642, 31
  %657 = trunc i32 %656 to i8
  store i8 %657, i8* %17, align 1, !tbaa !2448
  %658 = lshr i32 %641, 31
  %659 = xor i32 %656, %658
  %660 = add nuw nsw i32 %659, %658
  %661 = icmp eq i32 %660, 2
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %18, align 1, !tbaa !2449
  %.v18 = select i1 %654, i64 118, i64 38
  %663 = add i64 %840, %.v18
  store i64 %663, i64* %103, align 8, !tbaa !2428
  br i1 %654, label %block_40085f, label %block_40080f

block_4006e4:                                     ; preds = %block_400897, %block_400680
  %664 = phi i64 [ %.pre, %block_400680 ], [ %771, %block_400897 ]
  %MEMORY.4 = phi %struct.Memory* [ %104, %block_400680 ], [ %738, %block_400897 ]
  %665 = load i64, i64* %RBP, align 8
  %666 = add i64 %665, -36
  %667 = add i64 %664, 4
  store i64 %667, i64* %PC, align 8
  %668 = inttoptr i64 %666 to i32*
  %669 = load i32, i32* %668, align 4
  %670 = add i32 %669, -28
  %671 = icmp ult i32 %669, 28
  %672 = zext i1 %671 to i8
  store i8 %672, i8* %13, align 1, !tbaa !2432
  %673 = and i32 %670, 255
  %674 = tail call i32 @llvm.ctpop.i32(i32 %673) #8
  %675 = trunc i32 %674 to i8
  %676 = and i8 %675, 1
  %677 = xor i8 %676, 1
  store i8 %677, i8* %14, align 1, !tbaa !2446
  %678 = xor i32 %669, 16
  %679 = xor i32 %678, %670
  %680 = lshr i32 %679, 4
  %681 = trunc i32 %680 to i8
  %682 = and i8 %681, 1
  store i8 %682, i8* %15, align 1, !tbaa !2450
  %683 = icmp eq i32 %670, 0
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %16, align 1, !tbaa !2447
  %685 = lshr i32 %670, 31
  %686 = trunc i32 %685 to i8
  store i8 %686, i8* %17, align 1, !tbaa !2448
  %687 = lshr i32 %669, 31
  %688 = xor i32 %685, %687
  %689 = add nuw nsw i32 %688, %687
  %690 = icmp eq i32 %689, 2
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %18, align 1, !tbaa !2449
  %692 = icmp ne i8 %686, 0
  %693 = xor i1 %692, %690
  %.v = select i1 %693, i64 10, i64 483
  %694 = add i64 %664, %.v
  store i64 %694, i64* %103, align 8, !tbaa !2428
  br i1 %693, label %block_4006ee, label %block_4008c7

block_400897:                                     ; preds = %block_40086b, %block_40085f.block_400897_crit_edge
  %.pre-phi11 = phi i32* [ %.pre10, %block_40085f.block_400897_crit_edge ], [ %189, %block_40086b ]
  %695 = phi i64 [ %290, %block_40085f.block_400897_crit_edge ], [ %215, %block_40086b ]
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %696 = add i64 %695, 14
  store i64 %696, i64* %PC, align 8
  %697 = load i32, i32* %.pre-phi11, align 4
  %698 = sext i32 %697 to i64
  %699 = mul nsw i64 %698, 11
  store i64 %699, i64* %RCX, align 8, !tbaa !2428
  %700 = lshr i64 %699, 63
  %701 = add i64 %699, ptrtoint (%maze_type* @maze to i64)
  store i64 %701, i64* %RAX, align 8, !tbaa !2428
  %702 = icmp ult i64 %701, ptrtoint (%maze_type* @maze to i64)
  %703 = icmp ult i64 %701, %699
  %704 = or i1 %702, %703
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %13, align 1, !tbaa !2432
  %706 = trunc i64 %701 to i32
  %707 = and i32 %706, 255
  %708 = tail call i32 @llvm.ctpop.i32(i32 %707) #8
  %709 = trunc i32 %708 to i8
  %710 = and i8 %709, 1
  %711 = xor i8 %710, 1
  store i8 %711, i8* %14, align 1, !tbaa !2446
  %712 = xor i64 %699, ptrtoint (%maze_type* @maze to i64)
  %713 = xor i64 %712, %701
  %714 = lshr i64 %713, 4
  %715 = trunc i64 %714 to i8
  %716 = and i8 %715, 1
  store i8 %716, i8* %15, align 1, !tbaa !2450
  %717 = icmp eq i64 %701, 0
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %16, align 1, !tbaa !2447
  %719 = lshr i64 %701, 63
  %720 = trunc i64 %719 to i8
  store i8 %720, i8* %17, align 1, !tbaa !2448
  %721 = xor i64 %719, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %722 = xor i64 %719, %700
  %723 = add nuw nsw i64 %721, %722
  %724 = icmp eq i64 %723, 2
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %18, align 1, !tbaa !2449
  %726 = add i64 %695, 25
  store i64 %726, i64* %PC, align 8
  %727 = load i32, i32* %264, align 4
  %728 = sext i32 %727 to i64
  store i64 %728, i64* %RCX, align 8, !tbaa !2428
  %729 = add i64 %728, %701
  %730 = add i64 %695, 29
  store i64 %730, i64* %PC, align 8
  %731 = inttoptr i64 %729 to i8*
  store i8 88, i8* %731, align 1
  %732 = load i64, i64* %PC, align 8
  %733 = add i64 %732, -740
  %734 = add i64 %732, 5
  %735 = load i64, i64* %7, align 8, !tbaa !2428
  %736 = add i64 %735, -8
  %737 = inttoptr i64 %736 to i64*
  store i64 %734, i64* %737, align 8
  store i64 %736, i64* %7, align 8, !tbaa !2428
  store i64 %733, i64* %103, align 8, !tbaa !2428
  %738 = tail call %struct.Memory* @sub_4005d0_draw_renamed_(%struct.State* nonnull %0, i64 %733, %struct.Memory* %MEMORY.4)
  %739 = load i64, i64* %RBP, align 8
  %740 = add i64 %739, -36
  %741 = load i64, i64* %PC, align 8
  %742 = add i64 %741, 3
  store i64 %742, i64* %PC, align 8
  %743 = inttoptr i64 %740 to i32*
  %744 = load i32, i32* %743, align 4
  %745 = add i32 %744, 1
  %746 = zext i32 %745 to i64
  store i64 %746, i64* %RDX, align 8, !tbaa !2428
  %747 = icmp eq i32 %744, -1
  %748 = icmp eq i32 %745, 0
  %749 = or i1 %747, %748
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %13, align 1, !tbaa !2432
  %751 = and i32 %745, 255
  %752 = tail call i32 @llvm.ctpop.i32(i32 %751) #8
  %753 = trunc i32 %752 to i8
  %754 = and i8 %753, 1
  %755 = xor i8 %754, 1
  store i8 %755, i8* %14, align 1, !tbaa !2446
  %756 = xor i32 %744, %745
  %757 = lshr i32 %756, 4
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  store i8 %759, i8* %15, align 1, !tbaa !2450
  %760 = icmp eq i32 %745, 0
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %16, align 1, !tbaa !2447
  %762 = lshr i32 %745, 31
  %763 = trunc i32 %762 to i8
  store i8 %763, i8* %17, align 1, !tbaa !2448
  %764 = lshr i32 %744, 31
  %765 = xor i32 %762, %764
  %766 = add nuw nsw i32 %765, %762
  %767 = icmp eq i32 %766, 2
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %18, align 1, !tbaa !2449
  %769 = add i64 %741, 9
  store i64 %769, i64* %PC, align 8
  store i32 %745, i32* %743, align 4
  %770 = load i64, i64* %PC, align 8
  %771 = add i64 %770, -478
  store i64 %771, i64* %103, align 8, !tbaa !2428
  br label %block_4006e4

block_400790:                                     ; preds = %block_400726, %block_400734, %block_400742, %block_400750
  %.sink15 = phi i64 [ 97, %block_400726 ], [ 83, %block_400734 ], [ 69, %block_400742 ], [ 55, %block_400750 ]
  %772 = load i64, i64* %PC, align 8
  %773 = add i64 %772, %.sink15
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %774 = load i64, i64* %RBP, align 8
  %775 = add i64 %774, -24
  %776 = add i64 %773, 14
  store i64 %776, i64* %PC, align 8
  %777 = inttoptr i64 %775 to i32*
  %778 = load i32, i32* %777, align 4
  %779 = sext i32 %778 to i64
  %780 = mul nsw i64 %779, 11
  store i64 %780, i64* %RCX, align 8, !tbaa !2428
  %781 = lshr i64 %780, 63
  %782 = add i64 %780, ptrtoint (%maze_type* @maze to i64)
  store i64 %782, i64* %RAX, align 8, !tbaa !2428
  %783 = icmp ult i64 %782, ptrtoint (%maze_type* @maze to i64)
  %784 = icmp ult i64 %782, %780
  %785 = or i1 %783, %784
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %13, align 1, !tbaa !2432
  %787 = trunc i64 %782 to i32
  %788 = and i32 %787, 255
  %789 = tail call i32 @llvm.ctpop.i32(i32 %788) #8
  %790 = trunc i32 %789 to i8
  %791 = and i8 %790, 1
  %792 = xor i8 %791, 1
  store i8 %792, i8* %14, align 1, !tbaa !2446
  %793 = xor i64 %780, ptrtoint (%maze_type* @maze to i64)
  %794 = xor i64 %793, %782
  %795 = lshr i64 %794, 4
  %796 = trunc i64 %795 to i8
  %797 = and i8 %796, 1
  store i8 %797, i8* %15, align 1, !tbaa !2450
  %798 = icmp eq i64 %782, 0
  %799 = zext i1 %798 to i8
  store i8 %799, i8* %16, align 1, !tbaa !2447
  %800 = lshr i64 %782, 63
  %801 = trunc i64 %800 to i8
  store i8 %801, i8* %17, align 1, !tbaa !2448
  %802 = xor i64 %800, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %803 = xor i64 %800, %781
  %804 = add nuw nsw i64 %802, %803
  %805 = icmp eq i64 %804, 2
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %18, align 1, !tbaa !2449
  %807 = add i64 %774, -20
  %808 = add i64 %773, 25
  store i64 %808, i64* %PC, align 8
  %809 = inttoptr i64 %807 to i32*
  %810 = load i32, i32* %809, align 4
  %811 = sext i32 %810 to i64
  store i64 %811, i64* %RCX, align 8, !tbaa !2428
  %812 = add i64 %811, %782
  %813 = add i64 %773, 29
  store i64 %813, i64* %PC, align 8
  %814 = inttoptr i64 %812 to i8*
  %815 = load i8, i8* %814, align 1
  %816 = sext i8 %815 to i64
  %817 = and i64 %816, 4294967295
  store i64 %817, i64* %RDX, align 8, !tbaa !2428
  %818 = sext i8 %815 to i32
  %819 = add nsw i32 %818, -35
  %820 = icmp ult i8 %815, 35
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %13, align 1, !tbaa !2432
  %822 = and i32 %819, 255
  %823 = tail call i32 @llvm.ctpop.i32(i32 %822) #8
  %824 = trunc i32 %823 to i8
  %825 = and i8 %824, 1
  %826 = xor i8 %825, 1
  store i8 %826, i8* %14, align 1, !tbaa !2446
  %827 = xor i32 %818, %819
  %828 = lshr i32 %827, 4
  %829 = trunc i32 %828 to i8
  %830 = and i8 %829, 1
  store i8 %830, i8* %15, align 1, !tbaa !2450
  %831 = icmp eq i32 %819, 0
  %832 = zext i1 %831 to i8
  store i8 %832, i8* %16, align 1, !tbaa !2447
  %833 = lshr i32 %819, 31
  %834 = trunc i32 %833 to i8
  store i8 %834, i8* %17, align 1, !tbaa !2448
  %835 = lshr i32 %818, 31
  %836 = xor i32 %833, %835
  %837 = add nuw nsw i32 %836, %835
  %838 = icmp eq i32 %837, 2
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %18, align 1, !tbaa !2449
  %.v17 = select i1 %831, i64 38, i64 89
  %840 = add i64 %773, %.v17
  %841 = add i64 %840, 10
  store i64 %841, i64* %PC, align 8
  br i1 %831, label %block_4007b6, label %block_4007e9

block_400849:                                     ; preds = %block_40083f
  %842 = add i64 %368, 4
  store i64 %842, i64* %PC, align 8
  %843 = load i32, i32* %355, align 4
  %844 = add i32 %843, -11
  %845 = icmp ult i32 %843, 11
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %13, align 1, !tbaa !2432
  %847 = and i32 %844, 255
  %848 = tail call i32 @llvm.ctpop.i32(i32 %847) #8
  %849 = trunc i32 %848 to i8
  %850 = and i8 %849, 1
  %851 = xor i8 %850, 1
  store i8 %851, i8* %14, align 1, !tbaa !2446
  %852 = xor i32 %843, %844
  %853 = lshr i32 %852, 4
  %854 = trunc i32 %853 to i8
  %855 = and i8 %854, 1
  store i8 %855, i8* %15, align 1, !tbaa !2450
  %856 = icmp eq i32 %844, 0
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %16, align 1, !tbaa !2447
  %858 = lshr i32 %844, 31
  %859 = trunc i32 %858 to i8
  store i8 %859, i8* %17, align 1, !tbaa !2448
  %860 = lshr i32 %843, 31
  %861 = xor i32 %858, %860
  %862 = add nuw nsw i32 %861, %860
  %863 = icmp eq i32 %862, 2
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %18, align 1, !tbaa !2449
  %865 = icmp ne i8 %859, 0
  %866 = xor i1 %865, %863
  %.v22 = select i1 %866, i64 22, i64 10
  %867 = add i64 %368, %.v22
  store i64 %867, i64* %103, align 8, !tbaa !2428
  br i1 %866, label %block_40085f, label %block_400853

block_40080f:                                     ; preds = %block_4007e9
  %868 = load i64, i64* %RBP, align 8
  %869 = add i64 %868, -24
  %870 = add i64 %663, 4
  store i64 %870, i64* %PC, align 8
  %871 = inttoptr i64 %869 to i32*
  %872 = load i32, i32* %871, align 4
  %873 = add i32 %872, -2
  %874 = icmp ult i32 %872, 2
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %13, align 1, !tbaa !2432
  %876 = and i32 %873, 255
  %877 = tail call i32 @llvm.ctpop.i32(i32 %876) #8
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  %880 = xor i8 %879, 1
  store i8 %880, i8* %14, align 1, !tbaa !2446
  %881 = xor i32 %872, %873
  %882 = lshr i32 %881, 4
  %883 = trunc i32 %882 to i8
  %884 = and i8 %883, 1
  store i8 %884, i8* %15, align 1, !tbaa !2450
  %885 = icmp eq i32 %873, 0
  %886 = zext i1 %885 to i8
  store i8 %886, i8* %16, align 1, !tbaa !2447
  %887 = lshr i32 %873, 31
  %888 = trunc i32 %887 to i8
  store i8 %888, i8* %17, align 1, !tbaa !2448
  %889 = lshr i32 %872, 31
  %890 = xor i32 %887, %889
  %891 = add nuw nsw i32 %890, %889
  %892 = icmp eq i32 %891, 2
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %18, align 1, !tbaa !2449
  %.v19 = select i1 %885, i64 10, i64 68
  %894 = add i64 %663, %.v19
  store i64 %894, i64* %103, align 8, !tbaa !2428
  br i1 %885, label %block_400819, label %block_400853

block_400877:                                     ; preds = %block_40086b
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %895 = add i64 %215, -967
  %896 = add i64 %215, 17
  %897 = load i64, i64* %7, align 8, !tbaa !2428
  %898 = add i64 %897, -8
  %899 = inttoptr i64 %898 to i64*
  store i64 %896, i64* %899, align 8
  store i64 %898, i64* %7, align 8, !tbaa !2428
  store i64 %895, i64* %103, align 8, !tbaa !2428
  %900 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %901 = load i64, i64* %RBP, align 8
  %902 = add i64 %901, -4
  %903 = load i64, i64* %PC, align 8
  %904 = add i64 %903, 7
  store i64 %904, i64* %PC, align 8
  %905 = inttoptr i64 %902 to i32*
  store i32 2, i32* %905, align 4
  %906 = load i64, i64* %RBP, align 8
  %907 = add i64 %906, -104
  %908 = load i32, i32* %EAX, align 4
  %909 = load i64, i64* %PC, align 8
  %910 = add i64 %909, 3
  store i64 %910, i64* %PC, align 8
  %911 = inttoptr i64 %907 to i32*
  store i32 %908, i32* %911, align 4
  %912 = load i64, i64* %PC, align 8
  %913 = add i64 %912, 80
  store i64 %913, i64* %103, align 8, !tbaa !2428
  br label %block_4008e2

; <label>:914:                                    ; preds = %block_400718
  %915 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %596, %struct.Memory* %MEMORY.4)
  ret %struct.Memory* %915
}

; Function Attrs: noinline
define %struct.Memory* @sub_400964__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400964:
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
  store i8 %28, i8* %8, align 1, !tbaa !2450
  %29 = icmp eq i64 %3, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %9, align 1, !tbaa !2447
  %31 = trunc i64 %12 to i8
  store i8 %31, i8* %11, align 1, !tbaa !2448
  store i8 %16, i8* %17, align 1, !tbaa !2449
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
define %struct.Memory* @sub_400726(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %4 to i8*
  %EAX = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %.pre = load i64, i64* %RBP, align 8
  %phitmp = add i64 %1, 3
  br label %block_400726

block_40083f:                                     ; preds = %block_400819
  %13 = add i64 %.pre16, -20
  %14 = add i64 %432, 4
  store i64 %14, i64* %PC, align 8
  %15 = inttoptr i64 %13 to i32*
  %16 = load i32, i32* %15, align 4
  store i8 0, i8* %5, align 1, !tbaa !2432
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #8
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  store i8 %21, i8* %6, align 1, !tbaa !2446
  store i8 0, i8* %7, align 1, !tbaa !2450
  %22 = icmp eq i32 %16, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %8, align 1, !tbaa !2447
  %24 = lshr i32 %16, 31
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %9, align 1, !tbaa !2448
  store i8 0, i8* %10, align 1, !tbaa !2449
  %26 = icmp ne i8 %25, 0
  %27 = or i1 %22, %26
  %.v29 = select i1 %27, i64 20, i64 10
  %28 = add i64 %432, %.v29
  store i64 %28, i64* %11, align 8, !tbaa !2428
  br i1 %27, label %block_400853, label %block_400849

block_40075e:                                     ; preds = %block_4006ee, %block_400718
  %29 = phi i64 [ %503, %block_4006ee ], [ 4196190, %block_400718 ]
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 195), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %30 = add i64 %29, -686
  %31 = add i64 %29, 17
  %32 = load i64, i64* %12, align 8, !tbaa !2428
  %33 = add i64 %32, -8
  %34 = inttoptr i64 %33 to i64*
  store i64 %31, i64* %34, align 8
  store i64 %33, i64* %12, align 8, !tbaa !2428
  store i64 %30, i64* %11, align 8, !tbaa !2428
  %35 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %117)
  %36 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 235), i64* %RDI, align 8, !tbaa !2428
  %37 = load i64, i64* %RBP, align 8
  %38 = add i64 %37, -88
  %39 = load i32, i32* %EAX, align 4
  %40 = add i64 %36, 13
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %38 to i32*
  store i32 %39, i32* %41, align 4
  %42 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %43 = add i64 %42, -716
  %44 = add i64 %42, 7
  %45 = load i64, i64* %12, align 8, !tbaa !2428
  %46 = add i64 %45, -8
  %47 = inttoptr i64 %46 to i64*
  store i64 %44, i64* %47, align 8
  store i64 %46, i64* %12, align 8, !tbaa !2428
  store i64 %43, i64* %11, align 8, !tbaa !2428
  %48 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %35)
  %49 = load i64, i64* %PC, align 8
  store i64 4294967295, i64* %RDI, align 8, !tbaa !2428
  %50 = load i64, i64* %RBP, align 8
  %51 = add i64 %50, -92
  %52 = load i32, i32* %EAX, align 4
  %53 = add i64 %49, 8
  store i64 %53, i64* %PC, align 8
  %54 = inttoptr i64 %51 to i32*
  store i32 %52, i32* %54, align 4
  %55 = load i64, i64* %PC, align 8
  %56 = add i64 %55, -699
  %57 = add i64 %55, 5
  %58 = load i64, i64* %12, align 8, !tbaa !2428
  %59 = add i64 %58, -8
  %60 = inttoptr i64 %59 to i64*
  store i64 %57, i64* %60, align 8
  store i64 %59, i64* %12, align 8, !tbaa !2428
  store i64 %56, i64* %11, align 8, !tbaa !2428
  %61 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %48)
  %62 = load i64, i64* %PC, align 8
  %63 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %62, %struct.Memory* %61)
  ret %struct.Memory* %63

block_400718:                                     ; preds = %block_4006ee
  %64 = load i64, i64* %RBP, align 8
  %65 = add i64 %64, -80
  %66 = add i64 %503, 4
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %65 to i64*
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %RAX, align 8, !tbaa !2428
  %69 = shl i64 %68, 3
  %70 = add i64 %69, add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 8)
  %71 = add i64 %503, 12
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %70 to i64*
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %RCX, align 8, !tbaa !2428
  store i64 %73, i64* %11, align 8, !tbaa !2428
  switch i64 %73, label %791 [
    i64 4196162, label %block_400742
    i64 4196176, label %block_400750
    i64 4196148, label %block_400734
    i64 4196190, label %block_40075e
    i64 4196134, label %block_400726
  ]

block_400897:                                     ; preds = %block_40086b, %block_40085f.block_400897_crit_edge
  %.pre-phi21 = phi i32* [ %.pre20, %block_40085f.block_400897_crit_edge ], [ %613, %block_40086b ]
  %74 = phi i64 [ %270, %block_40085f.block_400897_crit_edge ], [ %639, %block_40086b ]
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %75 = add i64 %74, 14
  store i64 %75, i64* %PC, align 8
  %76 = load i32, i32* %.pre-phi21, align 4
  %77 = sext i32 %76 to i64
  %78 = mul nsw i64 %77, 11
  store i64 %78, i64* %RCX, align 8, !tbaa !2428
  %79 = lshr i64 %78, 63
  %80 = add i64 %78, ptrtoint (%maze_type* @maze to i64)
  store i64 %80, i64* %RAX, align 8, !tbaa !2428
  %81 = icmp ult i64 %80, ptrtoint (%maze_type* @maze to i64)
  %82 = icmp ult i64 %80, %78
  %83 = or i1 %81, %82
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %5, align 1, !tbaa !2432
  %85 = trunc i64 %80 to i32
  %86 = and i32 %85, 255
  %87 = tail call i32 @llvm.ctpop.i32(i32 %86) #8
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  %90 = xor i8 %89, 1
  store i8 %90, i8* %6, align 1, !tbaa !2446
  %91 = xor i64 %78, ptrtoint (%maze_type* @maze to i64)
  %92 = xor i64 %91, %80
  %93 = lshr i64 %92, 4
  %94 = trunc i64 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %7, align 1, !tbaa !2450
  %96 = icmp eq i64 %80, 0
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %8, align 1, !tbaa !2447
  %98 = lshr i64 %80, 63
  %99 = trunc i64 %98 to i8
  store i8 %99, i8* %9, align 1, !tbaa !2448
  %100 = xor i64 %98, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %101 = xor i64 %98, %79
  %102 = add nuw nsw i64 %100, %101
  %103 = icmp eq i64 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %10, align 1, !tbaa !2449
  %105 = add i64 %74, 25
  store i64 %105, i64* %PC, align 8
  %106 = load i32, i32* %244, align 4
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %RCX, align 8, !tbaa !2428
  %108 = add i64 %107, %80
  %109 = add i64 %74, 29
  store i64 %109, i64* %PC, align 8
  %110 = inttoptr i64 %108 to i8*
  store i8 88, i8* %110, align 1
  %111 = load i64, i64* %PC, align 8
  %112 = add i64 %111, -740
  %113 = add i64 %111, 5
  %114 = load i64, i64* %12, align 8, !tbaa !2428
  %115 = add i64 %114, -8
  %116 = inttoptr i64 %115 to i64*
  store i64 %113, i64* %116, align 8
  store i64 %115, i64* %12, align 8, !tbaa !2428
  store i64 %112, i64* %11, align 8, !tbaa !2428
  %117 = tail call %struct.Memory* @sub_4005d0_draw_renamed_(%struct.State* nonnull %0, i64 %112, %struct.Memory* %MEMORY.4)
  %118 = load i64, i64* %RBP, align 8
  %119 = add i64 %118, -36
  %120 = load i64, i64* %PC, align 8
  %121 = add i64 %120, 3
  store i64 %121, i64* %PC, align 8
  %122 = inttoptr i64 %119 to i32*
  %123 = load i32, i32* %122, align 4
  %124 = add i32 %123, 1
  %125 = zext i32 %124 to i64
  store i64 %125, i64* %RDX, align 8, !tbaa !2428
  %126 = icmp eq i32 %123, -1
  %127 = icmp eq i32 %124, 0
  %128 = or i1 %126, %127
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %5, align 1, !tbaa !2432
  %130 = and i32 %124, 255
  %131 = tail call i32 @llvm.ctpop.i32(i32 %130) #8
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  store i8 %134, i8* %6, align 1, !tbaa !2446
  %135 = xor i32 %123, %124
  %136 = lshr i32 %135, 4
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  store i8 %138, i8* %7, align 1, !tbaa !2450
  %139 = icmp eq i32 %124, 0
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %8, align 1, !tbaa !2447
  %141 = lshr i32 %124, 31
  %142 = trunc i32 %141 to i8
  store i8 %142, i8* %9, align 1, !tbaa !2448
  %143 = lshr i32 %123, 31
  %144 = xor i32 %141, %143
  %145 = add nuw nsw i32 %144, %141
  %146 = icmp eq i32 %145, 2
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %10, align 1, !tbaa !2449
  %148 = add i64 %120, 9
  store i64 %148, i64* %PC, align 8
  store i32 %124, i32* %122, align 4
  %149 = load i64, i64* %PC, align 8
  %150 = load i64, i64* %RBP, align 8
  %151 = add i64 %150, -36
  %152 = add i64 %149, -474
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %151 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = add i32 %154, -28
  %156 = icmp ult i32 %154, 28
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %5, align 1, !tbaa !2432
  %158 = and i32 %155, 255
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158) #8
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  store i8 %162, i8* %6, align 1, !tbaa !2446
  %163 = xor i32 %154, 16
  %164 = xor i32 %163, %155
  %165 = lshr i32 %164, 4
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  store i8 %167, i8* %7, align 1, !tbaa !2450
  %168 = icmp eq i32 %155, 0
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %8, align 1, !tbaa !2447
  %170 = lshr i32 %155, 31
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %9, align 1, !tbaa !2448
  %172 = lshr i32 %154, 31
  %173 = xor i32 %170, %172
  %174 = add nuw nsw i32 %173, %172
  %175 = icmp eq i32 %174, 2
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %10, align 1, !tbaa !2449
  %177 = icmp ne i8 %171, 0
  %178 = xor i1 %177, %175
  %.v33 = select i1 %178, i64 -468, i64 5
  %179 = add i64 %149, %.v33
  store i64 %179, i64* %11, align 8, !tbaa !2428
  br i1 %178, label %block_4006ee, label %block_4008c7

block_4007b6:                                     ; preds = %block_400790
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %180 = add i64 %366, -774
  %181 = add i64 %366, 17
  %182 = load i64, i64* %12, align 8, !tbaa !2428
  %183 = add i64 %182, -8
  %184 = inttoptr i64 %183 to i64*
  store i64 %181, i64* %184, align 8
  store i64 %183, i64* %12, align 8, !tbaa !2428
  store i64 %180, i64* %11, align 8, !tbaa !2428
  %185 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %186 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2428
  %187 = load i64, i64* %RBP, align 8
  %188 = add i64 %187, -64
  store i64 %188, i64* %RSI, align 8, !tbaa !2428
  %189 = add i64 %187, -96
  %190 = load i32, i32* %EAX, align 4
  %191 = add i64 %186, 17
  store i64 %191, i64* %PC, align 8
  %192 = inttoptr i64 %189 to i32*
  store i32 %190, i32* %192, align 4
  %193 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %194 = add i64 %193, -808
  %195 = add i64 %193, 7
  %196 = load i64, i64* %12, align 8, !tbaa !2428
  %197 = add i64 %196, -8
  %198 = inttoptr i64 %197 to i64*
  store i64 %195, i64* %198, align 8
  store i64 %197, i64* %12, align 8, !tbaa !2428
  store i64 %194, i64* %11, align 8, !tbaa !2428
  %199 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %185)
  %200 = load i64, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %5, align 1, !tbaa !2432
  store i8 1, i8* %6, align 1, !tbaa !2446
  store i8 1, i8* %8, align 1, !tbaa !2447
  store i8 0, i8* %9, align 1, !tbaa !2448
  store i8 0, i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %7, align 1, !tbaa !2450
  %201 = load i64, i64* %RBP, align 8
  %202 = add i64 %201, -100
  %203 = load i32, i32* %EAX, align 4
  %204 = add i64 %200, 5
  store i64 %204, i64* %PC, align 8
  %205 = inttoptr i64 %202 to i32*
  store i32 %203, i32* %205, align 4
  %206 = load i64, i64* %PC, align 8
  %207 = add i64 %206, -788
  %208 = add i64 %206, 5
  %209 = load i64, i64* %12, align 8, !tbaa !2428
  %210 = add i64 %209, -8
  %211 = inttoptr i64 %210 to i64*
  store i64 %208, i64* %211, align 8
  store i64 %210, i64* %12, align 8, !tbaa !2428
  store i64 %207, i64* %11, align 8, !tbaa !2428
  %212 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %199)
  %213 = load i64, i64* %PC, align 8
  %214 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %213, %struct.Memory* %212)
  ret %struct.Memory* %214

block_400853:                                     ; preds = %block_400819, %block_40080f, %block_400849, %block_40083f
  %215 = phi i64 [ %605, %block_40080f ], [ %548, %block_400849 ], [ %28, %block_40083f ], [ %432, %block_400819 ]
  %216 = phi i64 [ %579, %block_40080f ], [ %.pre16, %block_400849 ], [ %.pre16, %block_40083f ], [ %.pre16, %block_400819 ]
  %217 = add i64 %216, -28
  %218 = add i64 %215, 3
  store i64 %218, i64* %PC, align 8
  %219 = inttoptr i64 %217 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = zext i32 %220 to i64
  store i64 %221, i64* %RAX, align 8, !tbaa !2428
  %222 = add i64 %216, -20
  %223 = add i64 %215, 6
  store i64 %223, i64* %PC, align 8
  %224 = inttoptr i64 %222 to i32*
  store i32 %220, i32* %224, align 4
  %225 = load i64, i64* %RBP, align 8
  %226 = add i64 %225, -32
  %227 = load i64, i64* %PC, align 8
  %228 = add i64 %227, 3
  store i64 %228, i64* %PC, align 8
  %229 = inttoptr i64 %226 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = zext i32 %230 to i64
  store i64 %231, i64* %RAX, align 8, !tbaa !2428
  %232 = add i64 %225, -24
  %233 = add i64 %227, 6
  store i64 %233, i64* %PC, align 8
  %234 = inttoptr i64 %232 to i32*
  store i32 %230, i32* %234, align 4
  %.pre17 = load i64, i64* %PC, align 8
  br label %block_40085f

block_40085f:                                     ; preds = %block_4007e9, %block_400849, %block_400853
  %235 = phi i64 [ %723, %block_4007e9 ], [ %548, %block_400849 ], [ %.pre17, %block_400853 ]
  %236 = load i64, i64* %RBP, align 8
  %237 = add i64 %236, -28
  %238 = add i64 %235, 3
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %237 to i32*
  %240 = load i32, i32* %239, align 4
  %241 = zext i32 %240 to i64
  store i64 %241, i64* %RAX, align 8, !tbaa !2428
  %242 = add i64 %236, -20
  %243 = add i64 %235, 6
  store i64 %243, i64* %PC, align 8
  %244 = inttoptr i64 %242 to i32*
  %245 = load i32, i32* %244, align 4
  %246 = sub i32 %240, %245
  %247 = icmp ult i32 %240, %245
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %5, align 1, !tbaa !2432
  %249 = and i32 %246, 255
  %250 = tail call i32 @llvm.ctpop.i32(i32 %249) #8
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  %253 = xor i8 %252, 1
  store i8 %253, i8* %6, align 1, !tbaa !2446
  %254 = xor i32 %245, %240
  %255 = xor i32 %254, %246
  %256 = lshr i32 %255, 4
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  store i8 %258, i8* %7, align 1, !tbaa !2450
  %259 = icmp eq i32 %246, 0
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %8, align 1, !tbaa !2447
  %261 = lshr i32 %246, 31
  %262 = trunc i32 %261 to i8
  store i8 %262, i8* %9, align 1, !tbaa !2448
  %263 = lshr i32 %240, 31
  %264 = lshr i32 %245, 31
  %265 = xor i32 %264, %263
  %266 = xor i32 %261, %263
  %267 = add nuw nsw i32 %266, %265
  %268 = icmp eq i32 %267, 2
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %10, align 1, !tbaa !2449
  %.v31 = select i1 %259, i64 12, i64 56
  %270 = add i64 %235, %.v31
  store i64 %270, i64* %11, align 8, !tbaa !2428
  br i1 %259, label %block_40086b, label %block_40085f.block_400897_crit_edge

block_40085f.block_400897_crit_edge:              ; preds = %block_40085f
  %.pre19 = add i64 %236, -24
  %.pre20 = inttoptr i64 %.pre19 to i32*
  br label %block_400897

block_400734:                                     ; preds = %block_400718
  %271 = add i64 %64, -24
  store i64 4196151, i64* %PC, align 8
  %272 = inttoptr i64 %271 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = add i32 %273, 1
  %275 = zext i32 %274 to i64
  store i64 %275, i64* %RAX, align 8, !tbaa !2428
  %276 = icmp eq i32 %273, -1
  %277 = icmp eq i32 %274, 0
  %278 = or i1 %276, %277
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %5, align 1, !tbaa !2432
  %280 = and i32 %274, 255
  %281 = tail call i32 @llvm.ctpop.i32(i32 %280) #8
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  %284 = xor i8 %283, 1
  store i8 %284, i8* %6, align 1, !tbaa !2446
  %285 = xor i32 %273, %274
  %286 = lshr i32 %285, 4
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  store i8 %288, i8* %7, align 1, !tbaa !2450
  %289 = icmp eq i32 %274, 0
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %8, align 1, !tbaa !2447
  %291 = lshr i32 %274, 31
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %9, align 1, !tbaa !2448
  %293 = lshr i32 %273, 31
  %294 = xor i32 %291, %293
  %295 = add nuw nsw i32 %294, %291
  %296 = icmp eq i32 %295, 2
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %10, align 1, !tbaa !2449
  store i64 4196157, i64* %PC, align 8
  store i32 %274, i32* %272, align 4
  br label %block_400790

block_400790:                                     ; preds = %block_400750, %block_400734, %block_400726
  %.sink25 = phi i64 [ 55, %block_400750 ], [ 83, %block_400734 ], [ 97, %block_400726 ]
  %MEMORY.4 = phi %struct.Memory* [ %117, %block_400750 ], [ %117, %block_400734 ], [ %MEMORY.5, %block_400726 ]
  %298 = load i64, i64* %PC, align 8
  %299 = add i64 %298, %.sink25
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %300 = load i64, i64* %RBP, align 8
  %301 = add i64 %300, -24
  %302 = add i64 %299, 14
  store i64 %302, i64* %PC, align 8
  %303 = inttoptr i64 %301 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = sext i32 %304 to i64
  %306 = mul nsw i64 %305, 11
  store i64 %306, i64* %RCX, align 8, !tbaa !2428
  %307 = lshr i64 %306, 63
  %308 = add i64 %306, ptrtoint (%maze_type* @maze to i64)
  store i64 %308, i64* %RAX, align 8, !tbaa !2428
  %309 = icmp ult i64 %308, ptrtoint (%maze_type* @maze to i64)
  %310 = icmp ult i64 %308, %306
  %311 = or i1 %309, %310
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %5, align 1, !tbaa !2432
  %313 = trunc i64 %308 to i32
  %314 = and i32 %313, 255
  %315 = tail call i32 @llvm.ctpop.i32(i32 %314) #8
  %316 = trunc i32 %315 to i8
  %317 = and i8 %316, 1
  %318 = xor i8 %317, 1
  store i8 %318, i8* %6, align 1, !tbaa !2446
  %319 = xor i64 %306, ptrtoint (%maze_type* @maze to i64)
  %320 = xor i64 %319, %308
  %321 = lshr i64 %320, 4
  %322 = trunc i64 %321 to i8
  %323 = and i8 %322, 1
  store i8 %323, i8* %7, align 1, !tbaa !2450
  %324 = icmp eq i64 %308, 0
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %8, align 1, !tbaa !2447
  %326 = lshr i64 %308, 63
  %327 = trunc i64 %326 to i8
  store i8 %327, i8* %9, align 1, !tbaa !2448
  %328 = xor i64 %326, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %329 = xor i64 %326, %307
  %330 = add nuw nsw i64 %328, %329
  %331 = icmp eq i64 %330, 2
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %10, align 1, !tbaa !2449
  %333 = add i64 %300, -20
  %334 = add i64 %299, 25
  store i64 %334, i64* %PC, align 8
  %335 = inttoptr i64 %333 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = sext i32 %336 to i64
  store i64 %337, i64* %RCX, align 8, !tbaa !2428
  %338 = add i64 %337, %308
  %339 = add i64 %299, 29
  store i64 %339, i64* %PC, align 8
  %340 = inttoptr i64 %338 to i8*
  %341 = load i8, i8* %340, align 1
  %342 = sext i8 %341 to i64
  %343 = and i64 %342, 4294967295
  store i64 %343, i64* %RDX, align 8, !tbaa !2428
  %344 = sext i8 %341 to i32
  %345 = add nsw i32 %344, -35
  %346 = icmp ult i8 %341, 35
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %5, align 1, !tbaa !2432
  %348 = and i32 %345, 255
  %349 = tail call i32 @llvm.ctpop.i32(i32 %348) #8
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = xor i8 %351, 1
  store i8 %352, i8* %6, align 1, !tbaa !2446
  %353 = xor i32 %344, %345
  %354 = lshr i32 %353, 4
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  store i8 %356, i8* %7, align 1, !tbaa !2450
  %357 = icmp eq i32 %345, 0
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %8, align 1, !tbaa !2447
  %359 = lshr i32 %345, 31
  %360 = trunc i32 %359 to i8
  store i8 %360, i8* %9, align 1, !tbaa !2448
  %361 = lshr i32 %344, 31
  %362 = xor i32 %359, %361
  %363 = add nuw nsw i32 %362, %361
  %364 = icmp eq i32 %363, 2
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %10, align 1, !tbaa !2449
  %.v = select i1 %357, i64 38, i64 89
  %366 = add i64 %299, %.v
  %367 = add i64 %366, 10
  store i64 %367, i64* %PC, align 8
  br i1 %357, label %block_4007b6, label %block_4007e9

block_400819:                                     ; preds = %block_40080f
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %368 = add i64 %605, 14
  store i64 %368, i64* %PC, align 8
  %369 = load i32, i32* %582, align 4
  %370 = sext i32 %369 to i64
  %371 = mul nsw i64 %370, 11
  store i64 %371, i64* %RCX, align 8, !tbaa !2428
  %372 = lshr i64 %371, 63
  %373 = add i64 %371, ptrtoint (%maze_type* @maze to i64)
  store i64 %373, i64* %RAX, align 8, !tbaa !2428
  %374 = icmp ult i64 %373, ptrtoint (%maze_type* @maze to i64)
  %375 = icmp ult i64 %373, %371
  %376 = or i1 %374, %375
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %5, align 1, !tbaa !2432
  %378 = trunc i64 %373 to i32
  %379 = and i32 %378, 255
  %380 = tail call i32 @llvm.ctpop.i32(i32 %379) #8
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  store i8 %383, i8* %6, align 1, !tbaa !2446
  %384 = xor i64 %371, ptrtoint (%maze_type* @maze to i64)
  %385 = xor i64 %384, %373
  %386 = lshr i64 %385, 4
  %387 = trunc i64 %386 to i8
  %388 = and i8 %387, 1
  store i8 %388, i8* %7, align 1, !tbaa !2450
  %389 = icmp eq i64 %373, 0
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %8, align 1, !tbaa !2447
  %391 = lshr i64 %373, 63
  %392 = trunc i64 %391 to i8
  store i8 %392, i8* %9, align 1, !tbaa !2448
  %393 = xor i64 %391, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %394 = xor i64 %391, %372
  %395 = add nuw nsw i64 %393, %394
  %396 = icmp eq i64 %395, 2
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %10, align 1, !tbaa !2449
  %398 = add i64 %579, -20
  %399 = add i64 %605, 25
  store i64 %399, i64* %PC, align 8
  %400 = inttoptr i64 %398 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = sext i32 %401 to i64
  store i64 %402, i64* %RCX, align 8, !tbaa !2428
  %403 = add i64 %402, %373
  %404 = add i64 %605, 29
  store i64 %404, i64* %PC, align 8
  %405 = inttoptr i64 %403 to i8*
  %406 = load i8, i8* %405, align 1
  %407 = sext i8 %406 to i64
  %408 = and i64 %407, 4294967295
  store i64 %408, i64* %RDX, align 8, !tbaa !2428
  %409 = sext i8 %406 to i32
  %410 = add nsw i32 %409, -124
  %411 = icmp ult i8 %406, 124
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %5, align 1, !tbaa !2432
  %413 = and i32 %410, 255
  %414 = tail call i32 @llvm.ctpop.i32(i32 %413) #8
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  %417 = xor i8 %416, 1
  store i8 %417, i8* %6, align 1, !tbaa !2446
  %418 = xor i32 %409, 16
  %419 = xor i32 %418, %410
  %420 = lshr i32 %419, 4
  %421 = trunc i32 %420 to i8
  %422 = and i8 %421, 1
  store i8 %422, i8* %7, align 1, !tbaa !2450
  %423 = icmp eq i32 %410, 0
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %8, align 1, !tbaa !2447
  %425 = lshr i32 %410, 31
  %426 = trunc i32 %425 to i8
  store i8 %426, i8* %9, align 1, !tbaa !2448
  %427 = lshr i32 %409, 31
  %428 = xor i32 %425, %427
  %429 = add nuw nsw i32 %428, %427
  %430 = icmp eq i32 %429, 2
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %10, align 1, !tbaa !2449
  %.v28 = select i1 %423, i64 38, i64 58
  %432 = add i64 %605, %.v28
  store i64 %432, i64* %11, align 8, !tbaa !2428
  %.pre16 = load i64, i64* %RBP, align 8
  br i1 %423, label %block_40083f, label %block_400853

block_4006ee:                                     ; preds = %block_400897
  %433 = add i64 %150, -20
  %434 = add i64 %179, 3
  store i64 %434, i64* %PC, align 8
  %435 = inttoptr i64 %433 to i32*
  %436 = load i32, i32* %435, align 4
  %437 = zext i32 %436 to i64
  store i64 %437, i64* %RAX, align 8, !tbaa !2428
  %438 = add i64 %150, -28
  %439 = add i64 %179, 6
  store i64 %439, i64* %PC, align 8
  %440 = inttoptr i64 %438 to i32*
  store i32 %436, i32* %440, align 4
  %441 = load i64, i64* %RBP, align 8
  %442 = add i64 %441, -24
  %443 = load i64, i64* %PC, align 8
  %444 = add i64 %443, 3
  store i64 %444, i64* %PC, align 8
  %445 = inttoptr i64 %442 to i32*
  %446 = load i32, i32* %445, align 4
  %447 = zext i32 %446 to i64
  store i64 %447, i64* %RAX, align 8, !tbaa !2428
  %448 = add i64 %441, -32
  %449 = add i64 %443, 6
  store i64 %449, i64* %PC, align 8
  %450 = inttoptr i64 %448 to i32*
  store i32 %446, i32* %450, align 4
  %451 = load i64, i64* %RBP, align 8
  %452 = add i64 %451, -36
  %453 = load i64, i64* %PC, align 8
  %454 = add i64 %453, 4
  store i64 %454, i64* %PC, align 8
  %455 = inttoptr i64 %452 to i32*
  %456 = load i32, i32* %455, align 4
  %457 = sext i32 %456 to i64
  store i64 %457, i64* %RCX, align 8, !tbaa !2428
  %458 = add i64 %451, -64
  %459 = add i64 %458, %457
  %460 = add i64 %453, 9
  store i64 %460, i64* %PC, align 8
  %461 = inttoptr i64 %459 to i8*
  %462 = load i8, i8* %461, align 1
  %463 = sext i8 %462 to i32
  %464 = add nsw i32 %463, -97
  %465 = zext i32 %464 to i64
  %466 = lshr i32 %464, 31
  store i64 %465, i64* %RCX, align 8, !tbaa !2428
  %467 = add nsw i32 %463, -119
  %468 = zext i32 %467 to i64
  store i64 %468, i64* %RAX, align 8, !tbaa !2428
  %469 = icmp ult i32 %464, 22
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %5, align 1, !tbaa !2432
  %471 = and i32 %467, 255
  %472 = tail call i32 @llvm.ctpop.i32(i32 %471) #8
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  store i8 %475, i8* %6, align 1, !tbaa !2446
  %476 = xor i32 %464, 16
  %477 = xor i32 %476, %467
  %478 = lshr i32 %477, 4
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  store i8 %480, i8* %7, align 1, !tbaa !2450
  %481 = icmp eq i32 %467, 0
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %8, align 1, !tbaa !2447
  %483 = lshr i32 %467, 31
  %484 = trunc i32 %483 to i8
  store i8 %484, i8* %9, align 1, !tbaa !2448
  %485 = xor i32 %483, %466
  %486 = add nuw nsw i32 %485, %466
  %487 = icmp eq i32 %486, 2
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %10, align 1, !tbaa !2449
  %489 = add i64 %451, -80
  %490 = add i64 %453, 21
  store i64 %490, i64* %PC, align 8
  %491 = inttoptr i64 %489 to i64*
  store i64 %465, i64* %491, align 8
  %492 = load i64, i64* %RBP, align 8
  %493 = add i64 %492, -84
  %494 = load i32, i32* %EAX, align 4
  %495 = load i64, i64* %PC, align 8
  %496 = add i64 %495, 3
  store i64 %496, i64* %PC, align 8
  %497 = inttoptr i64 %493 to i32*
  store i32 %494, i32* %497, align 4
  %498 = load i64, i64* %PC, align 8
  %499 = load i8, i8* %5, align 1, !tbaa !2432
  %500 = load i8, i8* %8, align 1, !tbaa !2447
  %501 = or i8 %500, %499
  %502 = icmp eq i8 %501, 0
  %.v34 = select i1 %502, i64 76, i64 6
  %503 = add i64 %498, %.v34
  store i64 %503, i64* %11, align 8, !tbaa !2428
  br i1 %502, label %block_40075e, label %block_400718

block_400877:                                     ; preds = %block_40086b
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %504 = add i64 %639, -967
  %505 = add i64 %639, 17
  %506 = load i64, i64* %12, align 8, !tbaa !2428
  %507 = add i64 %506, -8
  %508 = inttoptr i64 %507 to i64*
  store i64 %505, i64* %508, align 8
  store i64 %507, i64* %12, align 8, !tbaa !2428
  store i64 %504, i64* %11, align 8, !tbaa !2428
  %509 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %510 = load i64, i64* %RBP, align 8
  %511 = add i64 %510, -4
  %512 = load i64, i64* %PC, align 8
  %513 = add i64 %512, 7
  store i64 %513, i64* %PC, align 8
  %514 = inttoptr i64 %511 to i32*
  store i32 2, i32* %514, align 4
  %515 = load i64, i64* %RBP, align 8
  %516 = add i64 %515, -104
  %517 = load i32, i32* %EAX, align 4
  %518 = load i64, i64* %PC, align 8
  %519 = add i64 %518, 3
  store i64 %519, i64* %PC, align 8
  %520 = inttoptr i64 %516 to i32*
  store i32 %517, i32* %520, align 4
  %521 = load i64, i64* %PC, align 8
  %522 = add i64 %521, 80
  store i64 %522, i64* %11, align 8, !tbaa !2428
  br label %block_4008e2

block_400849:                                     ; preds = %block_40083f
  %523 = add i64 %28, 4
  store i64 %523, i64* %PC, align 8
  %524 = load i32, i32* %15, align 4
  %525 = add i32 %524, -11
  %526 = icmp ult i32 %524, 11
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %5, align 1, !tbaa !2432
  %528 = and i32 %525, 255
  %529 = tail call i32 @llvm.ctpop.i32(i32 %528) #8
  %530 = trunc i32 %529 to i8
  %531 = and i8 %530, 1
  %532 = xor i8 %531, 1
  store i8 %532, i8* %6, align 1, !tbaa !2446
  %533 = xor i32 %524, %525
  %534 = lshr i32 %533, 4
  %535 = trunc i32 %534 to i8
  %536 = and i8 %535, 1
  store i8 %536, i8* %7, align 1, !tbaa !2450
  %537 = icmp eq i32 %525, 0
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %8, align 1, !tbaa !2447
  %539 = lshr i32 %525, 31
  %540 = trunc i32 %539 to i8
  store i8 %540, i8* %9, align 1, !tbaa !2448
  %541 = lshr i32 %524, 31
  %542 = xor i32 %539, %541
  %543 = add nuw nsw i32 %542, %541
  %544 = icmp eq i32 %543, 2
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %10, align 1, !tbaa !2449
  %546 = icmp ne i8 %540, 0
  %547 = xor i1 %546, %544
  %.v30 = select i1 %547, i64 22, i64 10
  %548 = add i64 %28, %.v30
  store i64 %548, i64* %11, align 8, !tbaa !2428
  br i1 %547, label %block_40085f, label %block_400853

block_400726:                                     ; preds = %block_400718, %3
  %549 = phi i64 [ %phitmp, %3 ], [ 4196137, %block_400718 ]
  %550 = phi i64 [ %.pre, %3 ], [ %64, %block_400718 ]
  %MEMORY.5 = phi %struct.Memory* [ %2, %3 ], [ %117, %block_400718 ]
  %551 = add i64 %550, -24
  store i64 %549, i64* %PC, align 8
  %552 = inttoptr i64 %551 to i32*
  %553 = load i32, i32* %552, align 4
  %554 = add i32 %553, -1
  %555 = zext i32 %554 to i64
  store i64 %555, i64* %RAX, align 8, !tbaa !2428
  %556 = icmp ne i32 %553, 0
  %557 = zext i1 %556 to i8
  store i8 %557, i8* %5, align 1, !tbaa !2432
  %558 = and i32 %554, 255
  %559 = tail call i32 @llvm.ctpop.i32(i32 %558) #8
  %560 = trunc i32 %559 to i8
  %561 = and i8 %560, 1
  %562 = xor i8 %561, 1
  store i8 %562, i8* %6, align 1, !tbaa !2446
  %563 = xor i32 %553, 16
  %564 = xor i32 %554, %563
  %565 = lshr i32 %564, 4
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 1
  store i8 %567, i8* %7, align 1, !tbaa !2450
  %568 = icmp eq i32 %554, 0
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %8, align 1, !tbaa !2447
  %570 = lshr i32 %554, 31
  %571 = trunc i32 %570 to i8
  store i8 %571, i8* %9, align 1, !tbaa !2448
  %572 = lshr i32 %553, 31
  %573 = xor i32 %570, %572
  %574 = xor i32 %570, 1
  %575 = add nuw nsw i32 %573, %574
  %576 = icmp eq i32 %575, 2
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %10, align 1, !tbaa !2449
  %578 = add i64 %549, 6
  store i64 %578, i64* %PC, align 8
  store i32 %554, i32* %552, align 4
  br label %block_400790

block_40080f:                                     ; preds = %block_4007e9
  %579 = load i64, i64* %RBP, align 8
  %580 = add i64 %579, -24
  %581 = add i64 %723, 4
  store i64 %581, i64* %PC, align 8
  %582 = inttoptr i64 %580 to i32*
  %583 = load i32, i32* %582, align 4
  %584 = add i32 %583, -2
  %585 = icmp ult i32 %583, 2
  %586 = zext i1 %585 to i8
  store i8 %586, i8* %5, align 1, !tbaa !2432
  %587 = and i32 %584, 255
  %588 = tail call i32 @llvm.ctpop.i32(i32 %587) #8
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  %591 = xor i8 %590, 1
  store i8 %591, i8* %6, align 1, !tbaa !2446
  %592 = xor i32 %583, %584
  %593 = lshr i32 %592, 4
  %594 = trunc i32 %593 to i8
  %595 = and i8 %594, 1
  store i8 %595, i8* %7, align 1, !tbaa !2450
  %596 = icmp eq i32 %584, 0
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %8, align 1, !tbaa !2447
  %598 = lshr i32 %584, 31
  %599 = trunc i32 %598 to i8
  store i8 %599, i8* %9, align 1, !tbaa !2448
  %600 = lshr i32 %583, 31
  %601 = xor i32 %598, %600
  %602 = add nuw nsw i32 %601, %600
  %603 = icmp eq i32 %602, 2
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %10, align 1, !tbaa !2449
  %.v27 = select i1 %596, i64 10, i64 68
  %605 = add i64 %723, %.v27
  store i64 %605, i64* %11, align 8, !tbaa !2428
  br i1 %596, label %block_400819, label %block_400853

block_40086b:                                     ; preds = %block_40085f
  %606 = add i64 %236, -32
  %607 = add i64 %270, 3
  store i64 %607, i64* %PC, align 8
  %608 = inttoptr i64 %606 to i32*
  %609 = load i32, i32* %608, align 4
  %610 = zext i32 %609 to i64
  store i64 %610, i64* %RAX, align 8, !tbaa !2428
  %611 = add i64 %236, -24
  %612 = add i64 %270, 6
  store i64 %612, i64* %PC, align 8
  %613 = inttoptr i64 %611 to i32*
  %614 = load i32, i32* %613, align 4
  %615 = sub i32 %609, %614
  %616 = icmp ult i32 %609, %614
  %617 = zext i1 %616 to i8
  store i8 %617, i8* %5, align 1, !tbaa !2432
  %618 = and i32 %615, 255
  %619 = tail call i32 @llvm.ctpop.i32(i32 %618) #8
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  %622 = xor i8 %621, 1
  store i8 %622, i8* %6, align 1, !tbaa !2446
  %623 = xor i32 %614, %609
  %624 = xor i32 %623, %615
  %625 = lshr i32 %624, 4
  %626 = trunc i32 %625 to i8
  %627 = and i8 %626, 1
  store i8 %627, i8* %7, align 1, !tbaa !2450
  %628 = icmp eq i32 %615, 0
  %629 = zext i1 %628 to i8
  store i8 %629, i8* %8, align 1, !tbaa !2447
  %630 = lshr i32 %615, 31
  %631 = trunc i32 %630 to i8
  store i8 %631, i8* %9, align 1, !tbaa !2448
  %632 = lshr i32 %609, 31
  %633 = lshr i32 %614, 31
  %634 = xor i32 %633, %632
  %635 = xor i32 %630, %632
  %636 = add nuw nsw i32 %635, %634
  %637 = icmp eq i32 %636, 2
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %10, align 1, !tbaa !2449
  %.v32 = select i1 %628, i64 12, i64 44
  %639 = add i64 %270, %.v32
  store i64 %639, i64* %11, align 8, !tbaa !2428
  br i1 %628, label %block_400877, label %block_400897

block_4008c7:                                     ; preds = %block_400897
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %640 = add i64 %179, -1047
  %641 = add i64 %179, 17
  %642 = load i64, i64* %12, align 8, !tbaa !2428
  %643 = add i64 %642, -8
  %644 = inttoptr i64 %643 to i64*
  store i64 %641, i64* %644, align 8
  store i64 %643, i64* %12, align 8, !tbaa !2428
  store i64 %640, i64* %11, align 8, !tbaa !2428
  %645 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %117)
  %646 = load i64, i64* %RBP, align 8
  %647 = add i64 %646, -4
  %648 = load i64, i64* %PC, align 8
  %649 = add i64 %648, 7
  store i64 %649, i64* %PC, align 8
  %650 = inttoptr i64 %647 to i32*
  store i32 1, i32* %650, align 4
  %651 = load i64, i64* %RBP, align 8
  %652 = add i64 %651, -108
  %653 = load i32, i32* %EAX, align 4
  %654 = load i64, i64* %PC, align 8
  %655 = add i64 %654, 3
  store i64 %655, i64* %PC, align 8
  %656 = inttoptr i64 %652 to i32*
  store i32 %653, i32* %656, align 4
  %.pre18 = load i64, i64* %PC, align 8
  br label %block_4008e2

block_4007e9:                                     ; preds = %block_400790
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %657 = load i64, i64* %RBP, align 8
  %658 = add i64 %657, -24
  %659 = add i64 %366, 14
  store i64 %659, i64* %PC, align 8
  %660 = inttoptr i64 %658 to i32*
  %661 = load i32, i32* %660, align 4
  %662 = sext i32 %661 to i64
  %663 = mul nsw i64 %662, 11
  store i64 %663, i64* %RCX, align 8, !tbaa !2428
  %664 = lshr i64 %663, 63
  %665 = add i64 %663, ptrtoint (%maze_type* @maze to i64)
  store i64 %665, i64* %RAX, align 8, !tbaa !2428
  %666 = icmp ult i64 %665, ptrtoint (%maze_type* @maze to i64)
  %667 = icmp ult i64 %665, %663
  %668 = or i1 %666, %667
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %5, align 1, !tbaa !2432
  %670 = trunc i64 %665 to i32
  %671 = and i32 %670, 255
  %672 = tail call i32 @llvm.ctpop.i32(i32 %671) #8
  %673 = trunc i32 %672 to i8
  %674 = and i8 %673, 1
  %675 = xor i8 %674, 1
  store i8 %675, i8* %6, align 1, !tbaa !2446
  %676 = xor i64 %663, ptrtoint (%maze_type* @maze to i64)
  %677 = xor i64 %676, %665
  %678 = lshr i64 %677, 4
  %679 = trunc i64 %678 to i8
  %680 = and i8 %679, 1
  store i8 %680, i8* %7, align 1, !tbaa !2450
  %681 = icmp eq i64 %665, 0
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %8, align 1, !tbaa !2447
  %683 = lshr i64 %665, 63
  %684 = trunc i64 %683 to i8
  store i8 %684, i8* %9, align 1, !tbaa !2448
  %685 = xor i64 %683, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %686 = xor i64 %683, %664
  %687 = add nuw nsw i64 %685, %686
  %688 = icmp eq i64 %687, 2
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %10, align 1, !tbaa !2449
  %690 = add i64 %657, -20
  %691 = add i64 %366, 25
  store i64 %691, i64* %PC, align 8
  %692 = inttoptr i64 %690 to i32*
  %693 = load i32, i32* %692, align 4
  %694 = sext i32 %693 to i64
  store i64 %694, i64* %RCX, align 8, !tbaa !2428
  %695 = add i64 %694, %665
  %696 = add i64 %366, 29
  store i64 %696, i64* %PC, align 8
  %697 = inttoptr i64 %695 to i8*
  %698 = load i8, i8* %697, align 1
  %699 = sext i8 %698 to i64
  %700 = and i64 %699, 4294967295
  store i64 %700, i64* %RDX, align 8, !tbaa !2428
  %701 = sext i8 %698 to i32
  %702 = add nsw i32 %701, -32
  %703 = icmp ult i8 %698, 32
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %5, align 1, !tbaa !2432
  %705 = and i32 %702, 255
  %706 = tail call i32 @llvm.ctpop.i32(i32 %705) #8
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  %709 = xor i8 %708, 1
  store i8 %709, i8* %6, align 1, !tbaa !2446
  %710 = xor i32 %701, %702
  %711 = lshr i32 %710, 4
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  store i8 %713, i8* %7, align 1, !tbaa !2450
  %714 = icmp eq i32 %702, 0
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %8, align 1, !tbaa !2447
  %716 = lshr i32 %702, 31
  %717 = trunc i32 %716 to i8
  store i8 %717, i8* %9, align 1, !tbaa !2448
  %718 = lshr i32 %701, 31
  %719 = xor i32 %716, %718
  %720 = add nuw nsw i32 %719, %718
  %721 = icmp eq i32 %720, 2
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %10, align 1, !tbaa !2449
  %.v26 = select i1 %714, i64 118, i64 38
  %723 = add i64 %366, %.v26
  store i64 %723, i64* %11, align 8, !tbaa !2428
  br i1 %714, label %block_40085f, label %block_40080f

block_4008e2:                                     ; preds = %block_4008c7, %block_400877
  %724 = phi i64 [ %.pre18, %block_4008c7 ], [ %522, %block_400877 ]
  %MEMORY.6 = phi %struct.Memory* [ %645, %block_4008c7 ], [ %509, %block_400877 ]
  %725 = load i64, i64* %RBP, align 8
  %726 = add i64 %725, -4
  %727 = add i64 %724, 3
  store i64 %727, i64* %PC, align 8
  %728 = inttoptr i64 %726 to i32*
  %729 = load i32, i32* %728, align 4
  %730 = zext i32 %729 to i64
  store i64 %730, i64* %RAX, align 8, !tbaa !2428
  %731 = load i64, i64* %RSP, align 8
  %732 = add i64 %731, 112
  store i64 %732, i64* %RSP, align 8, !tbaa !2428
  %733 = icmp ugt i64 %731, -113
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %5, align 1, !tbaa !2432
  %735 = trunc i64 %732 to i32
  %736 = and i32 %735, 255
  %737 = tail call i32 @llvm.ctpop.i32(i32 %736) #8
  %738 = trunc i32 %737 to i8
  %739 = and i8 %738, 1
  %740 = xor i8 %739, 1
  store i8 %740, i8* %6, align 1, !tbaa !2446
  %741 = xor i64 %731, 16
  %742 = xor i64 %741, %732
  %743 = lshr i64 %742, 4
  %744 = trunc i64 %743 to i8
  %745 = and i8 %744, 1
  store i8 %745, i8* %7, align 1, !tbaa !2450
  %746 = icmp eq i64 %732, 0
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %8, align 1, !tbaa !2447
  %748 = lshr i64 %732, 63
  %749 = trunc i64 %748 to i8
  store i8 %749, i8* %9, align 1, !tbaa !2448
  %750 = lshr i64 %731, 63
  %751 = xor i64 %748, %750
  %752 = add nuw nsw i64 %751, %748
  %753 = icmp eq i64 %752, 2
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %10, align 1, !tbaa !2449
  %755 = add i64 %724, 8
  store i64 %755, i64* %PC, align 8
  %756 = add i64 %731, 120
  %757 = inttoptr i64 %732 to i64*
  %758 = load i64, i64* %757, align 8
  store i64 %758, i64* %RBP, align 8, !tbaa !2428
  store i64 %756, i64* %12, align 8, !tbaa !2428
  %759 = add i64 %724, 9
  store i64 %759, i64* %PC, align 8
  %760 = inttoptr i64 %756 to i64*
  %761 = load i64, i64* %760, align 8
  store i64 %761, i64* %11, align 8, !tbaa !2428
  %762 = add i64 %731, 128
  store i64 %762, i64* %12, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.6

block_400750:                                     ; preds = %block_400718
  %763 = add i64 %64, -20
  store i64 4196179, i64* %PC, align 8
  %764 = inttoptr i64 %763 to i32*
  %765 = load i32, i32* %764, align 4
  %766 = add i32 %765, 1
  %767 = zext i32 %766 to i64
  store i64 %767, i64* %RAX, align 8, !tbaa !2428
  %768 = icmp eq i32 %765, -1
  %769 = icmp eq i32 %766, 0
  %770 = or i1 %768, %769
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %5, align 1, !tbaa !2432
  %772 = and i32 %766, 255
  %773 = tail call i32 @llvm.ctpop.i32(i32 %772) #8
  %774 = trunc i32 %773 to i8
  %775 = and i8 %774, 1
  %776 = xor i8 %775, 1
  store i8 %776, i8* %6, align 1, !tbaa !2446
  %777 = xor i32 %765, %766
  %778 = lshr i32 %777, 4
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  store i8 %780, i8* %7, align 1, !tbaa !2450
  %781 = icmp eq i32 %766, 0
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %8, align 1, !tbaa !2447
  %783 = lshr i32 %766, 31
  %784 = trunc i32 %783 to i8
  store i8 %784, i8* %9, align 1, !tbaa !2448
  %785 = lshr i32 %765, 31
  %786 = xor i32 %783, %785
  %787 = add nuw nsw i32 %786, %783
  %788 = icmp eq i32 %787, 2
  %789 = zext i1 %788 to i8
  store i8 %789, i8* %10, align 1, !tbaa !2449
  store i64 4196185, i64* %PC, align 8
  store i32 %766, i32* %764, align 4
  br label %block_400790

block_400742:                                     ; preds = %block_400718
  %790 = tail call %struct.Memory* @sub_400742(%struct.State* nonnull %0, i64 4196162, %struct.Memory* %117)
  ret %struct.Memory* %790

; <label>:791:                                    ; preds = %block_400718
  %792 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %73, %struct.Memory* %117)
  ret %struct.Memory* %792
}

; Function Attrs: noinline
define %struct.Memory* @sub_400520_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400520:
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
  store i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 zext (i1 icmp ult (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)) to i8), i8* %10, align 1, !tbaa !2432
  %11 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)) to i32), i32 255)) #8
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1, !tbaa !2446
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295)), i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64))), i64 4) to i8), i8 1), i8* %16, align 1, !tbaa !2450
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)), i64 0) to i8), i8* %17, align 1, !tbaa !2447
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 trunc (i64 lshr (i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)), i64 63) to i8), i8* %18, align 1, !tbaa !2448
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)), i64 63), i64 lshr (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 63)), i64 xor (i64 lshr (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 63), i64 lshr (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 63))), i64 2) to i8), i8* %19, align 1, !tbaa !2449
  store i64 %7, i64* %RBP, align 8, !tbaa !2428
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = add i64 %9, select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)), i64 0), i64 39, i64 16)
  store i64 %21, i64* %20, align 8, !tbaa !2428
  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)), i64 0), label %block_400548, label %block_400531

block_400531:                                     ; preds = %block_400520
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %10, align 1, !tbaa !2432
  store i8 1, i8* %15, align 1, !tbaa !2446
  store i8 1, i8* %17, align 1, !tbaa !2447
  store i8 0, i8* %18, align 1, !tbaa !2448
  store i8 0, i8* %19, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  %22 = add i64 %9, add (i64 select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)), i64 0), i64 39, i64 16), i64 23)
  store i64 %22, i64* %20, align 8, !tbaa !2428
  br label %block_400548

block_400548:                                     ; preds = %block_400531, %block_400520
  %23 = phi i64 [ %22, %block_400531 ], [ %21, %block_400520 ]
  %24 = add i64 %23, 1
  store i64 %24, i64* %PC, align 8
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %RBP, align 8, !tbaa !2428
  store i64 %6, i64* %5, align 8, !tbaa !2428
  %26 = add i64 %23, 2
  store i64 %26, i64* %PC, align 8
  %27 = inttoptr i64 %6 to i64*
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %20, align 8, !tbaa !2428
  %29 = add i64 %6, 8
  store i64 %29, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005d0_draw(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4005d0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
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
  %12 = icmp ult i64 %8, 32
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
  %22 = xor i64 %8, %11
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1, !tbaa !2450
  %27 = icmp eq i64 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1, !tbaa !2447
  %30 = lshr i64 %11, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1, !tbaa !2448
  %33 = lshr i64 %8, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1, !tbaa !2449
  %39 = add i64 %7, -12
  %40 = add i64 %10, 14
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.pre = load i64, i64* %PC, align 8
  br label %block_4005df

block_4005df:                                     ; preds = %block_400639, %block_4005d0
  %43 = phi i64 [ %.pre, %block_4005d0 ], [ %247, %block_400639 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005d0 ], [ %208, %block_400639 ]
  %44 = load i64, i64* %RBP, align 8
  %45 = add i64 %44, -4
  %46 = add i64 %43, 4
  store i64 %46, i64* %PC, align 8
  %47 = inttoptr i64 %45 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = add i32 %48, -7
  %50 = icmp ult i32 %48, 7
  %51 = zext i1 %50 to i8
  store i8 %51, i8* %14, align 1, !tbaa !2432
  %52 = and i32 %49, 255
  %53 = tail call i32 @llvm.ctpop.i32(i32 %52) #8
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  %56 = xor i8 %55, 1
  store i8 %56, i8* %21, align 1, !tbaa !2446
  %57 = xor i32 %48, %49
  %58 = lshr i32 %57, 4
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  store i8 %60, i8* %26, align 1, !tbaa !2450
  %61 = icmp eq i32 %49, 0
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %29, align 1, !tbaa !2447
  %63 = lshr i32 %49, 31
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %32, align 1, !tbaa !2448
  %65 = lshr i32 %48, 31
  %66 = xor i32 %63, %65
  %67 = add nuw nsw i32 %66, %65
  %68 = icmp eq i32 %67, 2
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %38, align 1, !tbaa !2449
  %70 = icmp ne i8 %64, 0
  %71 = xor i1 %70, %68
  %.v = select i1 %71, i64 10, i64 124
  %72 = add i64 %43, %.v
  store i64 %72, i64* %42, align 8, !tbaa !2428
  br i1 %71, label %block_4005e9, label %block_40065b

block_40065b:                                     ; preds = %block_4005df
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 273), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %73 = add i64 %72, -427
  %74 = add i64 %72, 17
  %75 = load i64, i64* %6, align 8, !tbaa !2428
  %76 = add i64 %75, -8
  %77 = inttoptr i64 %76 to i64*
  store i64 %74, i64* %77, align 8
  store i64 %76, i64* %6, align 8, !tbaa !2428
  store i64 %73, i64* %42, align 8, !tbaa !2428
  %78 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %79 = load i64, i64* %RBP, align 8
  %80 = add i64 %79, -20
  %81 = load i32, i32* %EAX, align 4
  %82 = load i64, i64* %PC, align 8
  %83 = add i64 %82, 3
  store i64 %83, i64* %PC, align 8
  %84 = inttoptr i64 %80 to i32*
  store i32 %81, i32* %84, align 4
  %85 = load i64, i64* %RSP, align 8
  %86 = load i64, i64* %PC, align 8
  %87 = add i64 %85, 32
  store i64 %87, i64* %RSP, align 8, !tbaa !2428
  %88 = icmp ugt i64 %85, -33
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %14, align 1, !tbaa !2432
  %90 = trunc i64 %87 to i32
  %91 = and i32 %90, 255
  %92 = tail call i32 @llvm.ctpop.i32(i32 %91) #8
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  %95 = xor i8 %94, 1
  store i8 %95, i8* %21, align 1, !tbaa !2446
  %96 = xor i64 %85, %87
  %97 = lshr i64 %96, 4
  %98 = trunc i64 %97 to i8
  %99 = and i8 %98, 1
  store i8 %99, i8* %26, align 1, !tbaa !2450
  %100 = icmp eq i64 %87, 0
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %29, align 1, !tbaa !2447
  %102 = lshr i64 %87, 63
  %103 = trunc i64 %102 to i8
  store i8 %103, i8* %32, align 1, !tbaa !2448
  %104 = lshr i64 %85, 63
  %105 = xor i64 %102, %104
  %106 = add nuw nsw i64 %105, %102
  %107 = icmp eq i64 %106, 2
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %38, align 1, !tbaa !2449
  %109 = add i64 %86, 5
  store i64 %109, i64* %PC, align 8
  %110 = add i64 %85, 40
  %111 = inttoptr i64 %87 to i64*
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %RBP, align 8, !tbaa !2428
  store i64 %110, i64* %6, align 8, !tbaa !2428
  %113 = add i64 %86, 6
  store i64 %113, i64* %PC, align 8
  %114 = inttoptr i64 %110 to i64*
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %42, align 8, !tbaa !2428
  %116 = add i64 %85, 48
  store i64 %116, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %78

block_4005fa:                                     ; preds = %block_4005f0
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 192), i64* %RDI, align 8, !tbaa !2428
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %117 = add i64 %249, -4
  %118 = add i64 %277, 24
  store i64 %118, i64* %PC, align 8
  %119 = inttoptr i64 %117 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = mul nsw i64 %121, 11
  store i64 %122, i64* %RCX, align 8, !tbaa !2428
  %123 = lshr i64 %122, 63
  %124 = add i64 %122, ptrtoint (%maze_type* @maze to i64)
  store i64 %124, i64* %RAX, align 8, !tbaa !2428
  %125 = icmp ult i64 %124, ptrtoint (%maze_type* @maze to i64)
  %126 = icmp ult i64 %124, %122
  %127 = or i1 %125, %126
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %14, align 1, !tbaa !2432
  %129 = trunc i64 %124 to i32
  %130 = and i32 %129, 255
  %131 = tail call i32 @llvm.ctpop.i32(i32 %130) #8
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  store i8 %134, i8* %21, align 1, !tbaa !2446
  %135 = xor i64 %122, ptrtoint (%maze_type* @maze to i64)
  %136 = xor i64 %135, %124
  %137 = lshr i64 %136, 4
  %138 = trunc i64 %137 to i8
  %139 = and i8 %138, 1
  store i8 %139, i8* %26, align 1, !tbaa !2450
  %140 = icmp eq i64 %124, 0
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %29, align 1, !tbaa !2447
  %142 = lshr i64 %124, 63
  %143 = trunc i64 %142 to i8
  store i8 %143, i8* %32, align 1, !tbaa !2448
  %144 = xor i64 %142, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %145 = xor i64 %142, %123
  %146 = add nuw nsw i64 %144, %145
  %147 = icmp eq i64 %146, 2
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %38, align 1, !tbaa !2449
  %149 = add i64 %277, 35
  store i64 %149, i64* %PC, align 8
  %150 = load i32, i32* %252, align 4
  %151 = sext i32 %150 to i64
  store i64 %151, i64* %RCX, align 8, !tbaa !2428
  %152 = add i64 %151, %124
  %153 = add i64 %277, 39
  store i64 %153, i64* %PC, align 8
  %154 = inttoptr i64 %152 to i8*
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i64
  %157 = and i64 %156, 4294967295
  store i64 %157, i64* %RSI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %158 = add i64 %277, -330
  %159 = add i64 %277, 46
  %160 = load i64, i64* %6, align 8, !tbaa !2428
  %161 = add i64 %160, -8
  %162 = inttoptr i64 %161 to i64*
  store i64 %159, i64* %162, align 8
  store i64 %161, i64* %6, align 8, !tbaa !2428
  store i64 %158, i64* %42, align 8, !tbaa !2428
  %163 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %164 = load i64, i64* %RBP, align 8
  %165 = add i64 %164, -12
  %166 = load i32, i32* %EAX, align 4
  %167 = load i64, i64* %PC, align 8
  %168 = add i64 %167, 3
  store i64 %168, i64* %PC, align 8
  %169 = inttoptr i64 %165 to i32*
  store i32 %166, i32* %169, align 4
  %170 = load i64, i64* %RBP, align 8
  %171 = add i64 %170, -8
  %172 = load i64, i64* %PC, align 8
  %173 = add i64 %172, 3
  store i64 %173, i64* %PC, align 8
  %174 = inttoptr i64 %171 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = add i32 %175, 1
  %177 = zext i32 %176 to i64
  store i64 %177, i64* %RAX, align 8, !tbaa !2428
  %178 = icmp eq i32 %175, -1
  %179 = icmp eq i32 %176, 0
  %180 = or i1 %178, %179
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %14, align 1, !tbaa !2432
  %182 = and i32 %176, 255
  %183 = tail call i32 @llvm.ctpop.i32(i32 %182) #8
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  %186 = xor i8 %185, 1
  store i8 %186, i8* %21, align 1, !tbaa !2446
  %187 = xor i32 %175, %176
  %188 = lshr i32 %187, 4
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  store i8 %190, i8* %26, align 1, !tbaa !2450
  %191 = icmp eq i32 %176, 0
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %29, align 1, !tbaa !2447
  %193 = lshr i32 %176, 31
  %194 = trunc i32 %193 to i8
  store i8 %194, i8* %32, align 1, !tbaa !2448
  %195 = lshr i32 %175, 31
  %196 = xor i32 %193, %195
  %197 = add nuw nsw i32 %196, %193
  %198 = icmp eq i32 %197, 2
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %38, align 1, !tbaa !2449
  %200 = add i64 %172, 9
  store i64 %200, i64* %PC, align 8
  store i32 %176, i32* %174, align 4
  %201 = load i64, i64* %PC, align 8
  %202 = add i64 %201, -68
  store i64 %202, i64* %42, align 8, !tbaa !2428
  br label %block_4005f0

block_400639:                                     ; preds = %block_4005f0
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 273), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %203 = add i64 %277, -393
  %204 = add i64 %277, 17
  %205 = load i64, i64* %6, align 8, !tbaa !2428
  %206 = add i64 %205, -8
  %207 = inttoptr i64 %206 to i64*
  store i64 %204, i64* %207, align 8
  store i64 %206, i64* %6, align 8, !tbaa !2428
  store i64 %203, i64* %42, align 8, !tbaa !2428
  %208 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %209 = load i64, i64* %RBP, align 8
  %210 = add i64 %209, -16
  %211 = load i32, i32* %EAX, align 4
  %212 = load i64, i64* %PC, align 8
  %213 = add i64 %212, 3
  store i64 %213, i64* %PC, align 8
  %214 = inttoptr i64 %210 to i32*
  store i32 %211, i32* %214, align 4
  %215 = load i64, i64* %RBP, align 8
  %216 = add i64 %215, -4
  %217 = load i64, i64* %PC, align 8
  %218 = add i64 %217, 3
  store i64 %218, i64* %PC, align 8
  %219 = inttoptr i64 %216 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = add i32 %220, 1
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RAX, align 8, !tbaa !2428
  %223 = icmp eq i32 %220, -1
  %224 = icmp eq i32 %221, 0
  %225 = or i1 %223, %224
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %14, align 1, !tbaa !2432
  %227 = and i32 %221, 255
  %228 = tail call i32 @llvm.ctpop.i32(i32 %227) #8
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  %231 = xor i8 %230, 1
  store i8 %231, i8* %21, align 1, !tbaa !2446
  %232 = xor i32 %220, %221
  %233 = lshr i32 %232, 4
  %234 = trunc i32 %233 to i8
  %235 = and i8 %234, 1
  store i8 %235, i8* %26, align 1, !tbaa !2450
  %236 = icmp eq i32 %221, 0
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %29, align 1, !tbaa !2447
  %238 = lshr i32 %221, 31
  %239 = trunc i32 %238 to i8
  store i8 %239, i8* %32, align 1, !tbaa !2448
  %240 = lshr i32 %220, 31
  %241 = xor i32 %238, %240
  %242 = add nuw nsw i32 %241, %238
  %243 = icmp eq i32 %242, 2
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %38, align 1, !tbaa !2449
  %245 = add i64 %217, 9
  store i64 %245, i64* %PC, align 8
  store i32 %221, i32* %219, align 4
  %246 = load i64, i64* %PC, align 8
  %247 = add i64 %246, -119
  store i64 %247, i64* %42, align 8, !tbaa !2428
  br label %block_4005df

block_4005f0:                                     ; preds = %block_4005e9, %block_4005fa
  %248 = phi i64 [ %.pre1, %block_4005e9 ], [ %202, %block_4005fa ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_4005e9 ], [ %163, %block_4005fa ]
  %249 = load i64, i64* %RBP, align 8
  %250 = add i64 %249, -8
  %251 = add i64 %248, 4
  store i64 %251, i64* %PC, align 8
  %252 = inttoptr i64 %250 to i32*
  %253 = load i32, i32* %252, align 4
  %254 = add i32 %253, -11
  %255 = icmp ult i32 %253, 11
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %14, align 1, !tbaa !2432
  %257 = and i32 %254, 255
  %258 = tail call i32 @llvm.ctpop.i32(i32 %257) #8
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  %261 = xor i8 %260, 1
  store i8 %261, i8* %21, align 1, !tbaa !2446
  %262 = xor i32 %253, %254
  %263 = lshr i32 %262, 4
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  store i8 %265, i8* %26, align 1, !tbaa !2450
  %266 = icmp eq i32 %254, 0
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %29, align 1, !tbaa !2447
  %268 = lshr i32 %254, 31
  %269 = trunc i32 %268 to i8
  store i8 %269, i8* %32, align 1, !tbaa !2448
  %270 = lshr i32 %253, 31
  %271 = xor i32 %268, %270
  %272 = add nuw nsw i32 %271, %270
  %273 = icmp eq i32 %272, 2
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %38, align 1, !tbaa !2449
  %275 = icmp ne i8 %269, 0
  %276 = xor i1 %275, %273
  %.v2 = select i1 %276, i64 10, i64 73
  %277 = add i64 %248, %.v2
  %278 = add i64 %277, 10
  store i64 %278, i64* %PC, align 8
  br i1 %276, label %block_4005fa, label %block_400639

block_4005e9:                                     ; preds = %block_4005df
  %279 = add i64 %44, -8
  %280 = add i64 %72, 7
  store i64 %280, i64* %PC, align 8
  %281 = inttoptr i64 %279 to i32*
  store i32 0, i32* %281, align 4
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_4005f0
}

; Function Attrs: noinline
define %struct.Memory* @sub_400960___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400960:
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
define %struct.Memory* @sub_4004e0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4004e0:
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
  store i8 %24, i8* %5, align 1, !tbaa !2447
  %25 = lshr i64 %13, 63
  %26 = trunc i64 %25 to i8
  store i8 %26, i8* %6, align 1, !tbaa !2448
  store i8 0, i8* %7, align 1, !tbaa !2449
  store i8 0, i8* %8, align 1, !tbaa !2450
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
  store i64 ptrtoint (void ()* @callback_sub_400960___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_4008f0___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %36 = add i64 %35, 27
  %37 = add i64 %16, -24
  %38 = inttoptr i64 %37 to i64*
  store i64 %36, i64* %38, align 8
  store i64 %37, i64* %11, align 8, !tbaa !2428
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %40 = load i64, i64* getelementptr inbounds (%seg_600ff0__got_type, %seg_600ff0__got_type* @seg_600ff0__got, i64 0, i32 0), align 8
  store i64 %40, i64* %39, align 8, !tbaa !2428
  %41 = tail call fastcc %struct.Memory* @ext_6010a0___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %42 = load i64, i64* %PC, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %PC, align 8
  %44 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %43, %struct.Memory* %41)
  ret %struct.Memory* %44
}

; Function Attrs: noinline
define %struct.Memory* @sub_400734(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %4 to i8*
  %EAX = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %.pre = load i64, i64* %RBP, align 8
  %phitmp = add i64 %1, 3
  br label %block_400734

block_40085f:                                     ; preds = %block_4007e9, %block_400849, %block_400853
  %13 = phi i64 [ %733, %block_4007e9 ], [ %538, %block_400849 ], [ %.pre20, %block_400853 ]
  %14 = load i64, i64* %RBP, align 8
  %15 = add i64 %14, -28
  %16 = add i64 %13, 3
  store i64 %16, i64* %PC, align 8
  %17 = inttoptr i64 %15 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8, !tbaa !2428
  %20 = add i64 %14, -20
  %21 = add i64 %13, 6
  store i64 %21, i64* %PC, align 8
  %22 = inttoptr i64 %20 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = sub i32 %18, %23
  %25 = icmp ult i32 %18, %23
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %5, align 1, !tbaa !2432
  %27 = and i32 %24, 255
  %28 = tail call i32 @llvm.ctpop.i32(i32 %27) #8
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  store i8 %31, i8* %6, align 1, !tbaa !2446
  %32 = xor i32 %23, %18
  %33 = xor i32 %32, %24
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  store i8 %36, i8* %7, align 1, !tbaa !2450
  %37 = icmp eq i32 %24, 0
  %38 = zext i1 %37 to i8
  store i8 %38, i8* %8, align 1, !tbaa !2447
  %39 = lshr i32 %24, 31
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %9, align 1, !tbaa !2448
  %41 = lshr i32 %18, 31
  %42 = lshr i32 %23, 31
  %43 = xor i32 %42, %41
  %44 = xor i32 %39, %41
  %45 = add nuw nsw i32 %44, %43
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i8
  store i8 %47, i8* %10, align 1, !tbaa !2449
  %.v30 = select i1 %37, i64 12, i64 56
  %48 = add i64 %13, %.v30
  store i64 %48, i64* %11, align 8, !tbaa !2428
  br i1 %37, label %block_40086b, label %block_40085f.block_400897_crit_edge

block_40085f.block_400897_crit_edge:              ; preds = %block_40085f
  %.pre22 = add i64 %14, -24
  %.pre23 = inttoptr i64 %.pre22 to i32*
  br label %block_400897

block_40083f:                                     ; preds = %block_400819
  %49 = add i64 %.pre19, -20
  %50 = add i64 %129, 4
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %49 to i32*
  %52 = load i32, i32* %51, align 4
  store i8 0, i8* %5, align 1, !tbaa !2432
  %53 = and i32 %52, 255
  %54 = tail call i32 @llvm.ctpop.i32(i32 %53) #8
  %55 = trunc i32 %54 to i8
  %56 = and i8 %55, 1
  %57 = xor i8 %56, 1
  store i8 %57, i8* %6, align 1, !tbaa !2446
  store i8 0, i8* %7, align 1, !tbaa !2450
  %58 = icmp eq i32 %52, 0
  %59 = zext i1 %58 to i8
  store i8 %59, i8* %8, align 1, !tbaa !2447
  %60 = lshr i32 %52, 31
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %9, align 1, !tbaa !2448
  store i8 0, i8* %10, align 1, !tbaa !2449
  %62 = icmp ne i8 %61, 0
  %63 = or i1 %58, %62
  %.v28 = select i1 %63, i64 20, i64 10
  %64 = add i64 %129, %.v28
  store i64 %64, i64* %11, align 8, !tbaa !2428
  br i1 %63, label %block_400853, label %block_400849

block_400819:                                     ; preds = %block_40080f
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %65 = add i64 %666, 14
  store i64 %65, i64* %PC, align 8
  %66 = load i32, i32* %643, align 4
  %67 = sext i32 %66 to i64
  %68 = mul nsw i64 %67, 11
  store i64 %68, i64* %RCX, align 8, !tbaa !2428
  %69 = lshr i64 %68, 63
  %70 = add i64 %68, ptrtoint (%maze_type* @maze to i64)
  store i64 %70, i64* %RAX, align 8, !tbaa !2428
  %71 = icmp ult i64 %70, ptrtoint (%maze_type* @maze to i64)
  %72 = icmp ult i64 %70, %68
  %73 = or i1 %71, %72
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %5, align 1, !tbaa !2432
  %75 = trunc i64 %70 to i32
  %76 = and i32 %75, 255
  %77 = tail call i32 @llvm.ctpop.i32(i32 %76) #8
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  %80 = xor i8 %79, 1
  store i8 %80, i8* %6, align 1, !tbaa !2446
  %81 = xor i64 %68, ptrtoint (%maze_type* @maze to i64)
  %82 = xor i64 %81, %70
  %83 = lshr i64 %82, 4
  %84 = trunc i64 %83 to i8
  %85 = and i8 %84, 1
  store i8 %85, i8* %7, align 1, !tbaa !2450
  %86 = icmp eq i64 %70, 0
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %8, align 1, !tbaa !2447
  %88 = lshr i64 %70, 63
  %89 = trunc i64 %88 to i8
  store i8 %89, i8* %9, align 1, !tbaa !2448
  %90 = xor i64 %88, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %91 = xor i64 %88, %69
  %92 = add nuw nsw i64 %90, %91
  %93 = icmp eq i64 %92, 2
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %10, align 1, !tbaa !2449
  %95 = add i64 %640, -20
  %96 = add i64 %666, 25
  store i64 %96, i64* %PC, align 8
  %97 = inttoptr i64 %95 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  store i64 %99, i64* %RCX, align 8, !tbaa !2428
  %100 = add i64 %99, %70
  %101 = add i64 %666, 29
  store i64 %101, i64* %PC, align 8
  %102 = inttoptr i64 %100 to i8*
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i64
  %105 = and i64 %104, 4294967295
  store i64 %105, i64* %RDX, align 8, !tbaa !2428
  %106 = sext i8 %103 to i32
  %107 = add nsw i32 %106, -124
  %108 = icmp ult i8 %103, 124
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %5, align 1, !tbaa !2432
  %110 = and i32 %107, 255
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110) #8
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  store i8 %114, i8* %6, align 1, !tbaa !2446
  %115 = xor i32 %106, 16
  %116 = xor i32 %115, %107
  %117 = lshr i32 %116, 4
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  store i8 %119, i8* %7, align 1, !tbaa !2450
  %120 = icmp eq i32 %107, 0
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %8, align 1, !tbaa !2447
  %122 = lshr i32 %107, 31
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %9, align 1, !tbaa !2448
  %124 = lshr i32 %106, 31
  %125 = xor i32 %122, %124
  %126 = add nuw nsw i32 %125, %124
  %127 = icmp eq i32 %126, 2
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %10, align 1, !tbaa !2449
  %.v27 = select i1 %120, i64 38, i64 58
  %129 = add i64 %666, %.v27
  store i64 %129, i64* %11, align 8, !tbaa !2428
  %.pre19 = load i64, i64* %RBP, align 8
  br i1 %120, label %block_40083f, label %block_400853

block_400897:                                     ; preds = %block_40086b, %block_40085f.block_400897_crit_edge
  %.pre-phi24 = phi i32* [ %.pre23, %block_40085f.block_400897_crit_edge ], [ %369, %block_40086b ]
  %130 = phi i64 [ %48, %block_40085f.block_400897_crit_edge ], [ %395, %block_40086b ]
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %131 = add i64 %130, 14
  store i64 %131, i64* %PC, align 8
  %132 = load i32, i32* %.pre-phi24, align 4
  %133 = sext i32 %132 to i64
  %134 = mul nsw i64 %133, 11
  store i64 %134, i64* %RCX, align 8, !tbaa !2428
  %135 = lshr i64 %134, 63
  %136 = add i64 %134, ptrtoint (%maze_type* @maze to i64)
  store i64 %136, i64* %RAX, align 8, !tbaa !2428
  %137 = icmp ult i64 %136, ptrtoint (%maze_type* @maze to i64)
  %138 = icmp ult i64 %136, %134
  %139 = or i1 %137, %138
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %5, align 1, !tbaa !2432
  %141 = trunc i64 %136 to i32
  %142 = and i32 %141, 255
  %143 = tail call i32 @llvm.ctpop.i32(i32 %142) #8
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  %146 = xor i8 %145, 1
  store i8 %146, i8* %6, align 1, !tbaa !2446
  %147 = xor i64 %134, ptrtoint (%maze_type* @maze to i64)
  %148 = xor i64 %147, %136
  %149 = lshr i64 %148, 4
  %150 = trunc i64 %149 to i8
  %151 = and i8 %150, 1
  store i8 %151, i8* %7, align 1, !tbaa !2450
  %152 = icmp eq i64 %136, 0
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %8, align 1, !tbaa !2447
  %154 = lshr i64 %136, 63
  %155 = trunc i64 %154 to i8
  store i8 %155, i8* %9, align 1, !tbaa !2448
  %156 = xor i64 %154, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %157 = xor i64 %154, %135
  %158 = add nuw nsw i64 %156, %157
  %159 = icmp eq i64 %158, 2
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %10, align 1, !tbaa !2449
  %161 = add i64 %130, 25
  store i64 %161, i64* %PC, align 8
  %162 = load i32, i32* %22, align 4
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %RCX, align 8, !tbaa !2428
  %164 = add i64 %163, %136
  %165 = add i64 %130, 29
  store i64 %165, i64* %PC, align 8
  %166 = inttoptr i64 %164 to i8*
  store i8 88, i8* %166, align 1
  %167 = load i64, i64* %PC, align 8
  %168 = add i64 %167, -740
  %169 = add i64 %167, 5
  %170 = load i64, i64* %12, align 8, !tbaa !2428
  %171 = add i64 %170, -8
  %172 = inttoptr i64 %171 to i64*
  store i64 %169, i64* %172, align 8
  store i64 %171, i64* %12, align 8, !tbaa !2428
  store i64 %168, i64* %11, align 8, !tbaa !2428
  %173 = tail call %struct.Memory* @sub_4005d0_draw_renamed_(%struct.State* nonnull %0, i64 %168, %struct.Memory* %MEMORY.3)
  %174 = load i64, i64* %RBP, align 8
  %175 = add i64 %174, -36
  %176 = load i64, i64* %PC, align 8
  %177 = add i64 %176, 3
  store i64 %177, i64* %PC, align 8
  %178 = inttoptr i64 %175 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = add i32 %179, 1
  %181 = zext i32 %180 to i64
  store i64 %181, i64* %RDX, align 8, !tbaa !2428
  %182 = icmp eq i32 %179, -1
  %183 = icmp eq i32 %180, 0
  %184 = or i1 %182, %183
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %5, align 1, !tbaa !2432
  %186 = and i32 %180, 255
  %187 = tail call i32 @llvm.ctpop.i32(i32 %186) #8
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %6, align 1, !tbaa !2446
  %191 = xor i32 %179, %180
  %192 = lshr i32 %191, 4
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  store i8 %194, i8* %7, align 1, !tbaa !2450
  %195 = icmp eq i32 %180, 0
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %8, align 1, !tbaa !2447
  %197 = lshr i32 %180, 31
  %198 = trunc i32 %197 to i8
  store i8 %198, i8* %9, align 1, !tbaa !2448
  %199 = lshr i32 %179, 31
  %200 = xor i32 %197, %199
  %201 = add nuw nsw i32 %200, %197
  %202 = icmp eq i32 %201, 2
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %10, align 1, !tbaa !2449
  %204 = add i64 %176, 9
  store i64 %204, i64* %PC, align 8
  store i32 %180, i32* %178, align 4
  %205 = load i64, i64* %PC, align 8
  %206 = load i64, i64* %RBP, align 8
  %207 = add i64 %206, -36
  %208 = add i64 %205, -474
  store i64 %208, i64* %PC, align 8
  %209 = inttoptr i64 %207 to i32*
  %210 = load i32, i32* %209, align 4
  %211 = add i32 %210, -28
  %212 = icmp ult i32 %210, 28
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %5, align 1, !tbaa !2432
  %214 = and i32 %211, 255
  %215 = tail call i32 @llvm.ctpop.i32(i32 %214) #8
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  %218 = xor i8 %217, 1
  store i8 %218, i8* %6, align 1, !tbaa !2446
  %219 = xor i32 %210, 16
  %220 = xor i32 %219, %211
  %221 = lshr i32 %220, 4
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  store i8 %223, i8* %7, align 1, !tbaa !2450
  %224 = icmp eq i32 %211, 0
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %8, align 1, !tbaa !2447
  %226 = lshr i32 %211, 31
  %227 = trunc i32 %226 to i8
  store i8 %227, i8* %9, align 1, !tbaa !2448
  %228 = lshr i32 %210, 31
  %229 = xor i32 %226, %228
  %230 = add nuw nsw i32 %229, %228
  %231 = icmp eq i32 %230, 2
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %10, align 1, !tbaa !2449
  %233 = icmp ne i8 %227, 0
  %234 = xor i1 %233, %231
  %.v32 = select i1 %234, i64 -468, i64 5
  %235 = add i64 %205, %.v32
  store i64 %235, i64* %11, align 8, !tbaa !2428
  br i1 %234, label %block_4006ee, label %block_4008c7

block_400853:                                     ; preds = %block_400819, %block_40080f, %block_400849, %block_40083f
  %236 = phi i64 [ %666, %block_40080f ], [ %538, %block_400849 ], [ %64, %block_40083f ], [ %129, %block_400819 ]
  %237 = phi i64 [ %640, %block_40080f ], [ %.pre19, %block_400849 ], [ %.pre19, %block_40083f ], [ %.pre19, %block_400819 ]
  %238 = add i64 %237, -28
  %239 = add i64 %236, 3
  store i64 %239, i64* %PC, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = zext i32 %241 to i64
  store i64 %242, i64* %RAX, align 8, !tbaa !2428
  %243 = add i64 %237, -20
  %244 = add i64 %236, 6
  store i64 %244, i64* %PC, align 8
  %245 = inttoptr i64 %243 to i32*
  store i32 %241, i32* %245, align 4
  %246 = load i64, i64* %RBP, align 8
  %247 = add i64 %246, -32
  %248 = load i64, i64* %PC, align 8
  %249 = add i64 %248, 3
  store i64 %249, i64* %PC, align 8
  %250 = inttoptr i64 %247 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = zext i32 %251 to i64
  store i64 %252, i64* %RAX, align 8, !tbaa !2428
  %253 = add i64 %246, -24
  %254 = add i64 %248, 6
  store i64 %254, i64* %PC, align 8
  %255 = inttoptr i64 %253 to i32*
  store i32 %251, i32* %255, align 4
  %.pre20 = load i64, i64* %PC, align 8
  br label %block_40085f

block_4007b6:                                     ; preds = %block_400734
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %256 = add i64 %492, -774
  %257 = add i64 %492, 17
  %258 = load i64, i64* %12, align 8, !tbaa !2428
  %259 = add i64 %258, -8
  %260 = inttoptr i64 %259 to i64*
  store i64 %257, i64* %260, align 8
  store i64 %259, i64* %12, align 8, !tbaa !2428
  store i64 %256, i64* %11, align 8, !tbaa !2428
  %261 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.3)
  %262 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2428
  %263 = load i64, i64* %RBP, align 8
  %264 = add i64 %263, -64
  store i64 %264, i64* %RSI, align 8, !tbaa !2428
  %265 = add i64 %263, -96
  %266 = load i32, i32* %EAX, align 4
  %267 = add i64 %262, 17
  store i64 %267, i64* %PC, align 8
  %268 = inttoptr i64 %265 to i32*
  store i32 %266, i32* %268, align 4
  %269 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %270 = add i64 %269, -808
  %271 = add i64 %269, 7
  %272 = load i64, i64* %12, align 8, !tbaa !2428
  %273 = add i64 %272, -8
  %274 = inttoptr i64 %273 to i64*
  store i64 %271, i64* %274, align 8
  store i64 %273, i64* %12, align 8, !tbaa !2428
  store i64 %270, i64* %11, align 8, !tbaa !2428
  %275 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %261)
  %276 = load i64, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %5, align 1, !tbaa !2432
  store i8 1, i8* %6, align 1, !tbaa !2446
  store i8 1, i8* %8, align 1, !tbaa !2447
  store i8 0, i8* %9, align 1, !tbaa !2448
  store i8 0, i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %7, align 1, !tbaa !2450
  %277 = load i64, i64* %RBP, align 8
  %278 = add i64 %277, -100
  %279 = load i32, i32* %EAX, align 4
  %280 = add i64 %276, 5
  store i64 %280, i64* %PC, align 8
  %281 = inttoptr i64 %278 to i32*
  store i32 %279, i32* %281, align 4
  %282 = load i64, i64* %PC, align 8
  %283 = add i64 %282, -788
  %284 = add i64 %282, 5
  %285 = load i64, i64* %12, align 8, !tbaa !2428
  %286 = add i64 %285, -8
  %287 = inttoptr i64 %286 to i64*
  store i64 %284, i64* %287, align 8
  store i64 %286, i64* %12, align 8, !tbaa !2428
  store i64 %283, i64* %11, align 8, !tbaa !2428
  %288 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %275)
  %289 = load i64, i64* %PC, align 8
  %290 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %289, %struct.Memory* %288)
  ret %struct.Memory* %290

block_4006ee:                                     ; preds = %block_400897
  %291 = add i64 %206, -20
  %292 = add i64 %235, 3
  store i64 %292, i64* %PC, align 8
  %293 = inttoptr i64 %291 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = zext i32 %294 to i64
  store i64 %295, i64* %RAX, align 8, !tbaa !2428
  %296 = add i64 %206, -28
  %297 = add i64 %235, 6
  store i64 %297, i64* %PC, align 8
  %298 = inttoptr i64 %296 to i32*
  store i32 %294, i32* %298, align 4
  %299 = load i64, i64* %RBP, align 8
  %300 = add i64 %299, -24
  %301 = load i64, i64* %PC, align 8
  %302 = add i64 %301, 3
  store i64 %302, i64* %PC, align 8
  %303 = inttoptr i64 %300 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = zext i32 %304 to i64
  store i64 %305, i64* %RAX, align 8, !tbaa !2428
  %306 = add i64 %299, -32
  %307 = add i64 %301, 6
  store i64 %307, i64* %PC, align 8
  %308 = inttoptr i64 %306 to i32*
  store i32 %304, i32* %308, align 4
  %309 = load i64, i64* %RBP, align 8
  %310 = add i64 %309, -36
  %311 = load i64, i64* %PC, align 8
  %312 = add i64 %311, 4
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %310 to i32*
  %314 = load i32, i32* %313, align 4
  %315 = sext i32 %314 to i64
  store i64 %315, i64* %RCX, align 8, !tbaa !2428
  %316 = add i64 %309, -64
  %317 = add i64 %316, %315
  %318 = add i64 %311, 9
  store i64 %318, i64* %PC, align 8
  %319 = inttoptr i64 %317 to i8*
  %320 = load i8, i8* %319, align 1
  %321 = sext i8 %320 to i32
  %322 = add nsw i32 %321, -97
  %323 = zext i32 %322 to i64
  %324 = lshr i32 %322, 31
  store i64 %323, i64* %RCX, align 8, !tbaa !2428
  %325 = add nsw i32 %321, -119
  %326 = zext i32 %325 to i64
  store i64 %326, i64* %RAX, align 8, !tbaa !2428
  %327 = icmp ult i32 %322, 22
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %5, align 1, !tbaa !2432
  %329 = and i32 %325, 255
  %330 = tail call i32 @llvm.ctpop.i32(i32 %329) #8
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = xor i8 %332, 1
  store i8 %333, i8* %6, align 1, !tbaa !2446
  %334 = xor i32 %322, 16
  %335 = xor i32 %334, %325
  %336 = lshr i32 %335, 4
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  store i8 %338, i8* %7, align 1, !tbaa !2450
  %339 = icmp eq i32 %325, 0
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %8, align 1, !tbaa !2447
  %341 = lshr i32 %325, 31
  %342 = trunc i32 %341 to i8
  store i8 %342, i8* %9, align 1, !tbaa !2448
  %343 = xor i32 %341, %324
  %344 = add nuw nsw i32 %343, %324
  %345 = icmp eq i32 %344, 2
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %10, align 1, !tbaa !2449
  %347 = add i64 %309, -80
  %348 = add i64 %311, 21
  store i64 %348, i64* %PC, align 8
  %349 = inttoptr i64 %347 to i64*
  store i64 %323, i64* %349, align 8
  %350 = load i64, i64* %RBP, align 8
  %351 = add i64 %350, -84
  %352 = load i32, i32* %EAX, align 4
  %353 = load i64, i64* %PC, align 8
  %354 = add i64 %353, 3
  store i64 %354, i64* %PC, align 8
  %355 = inttoptr i64 %351 to i32*
  store i32 %352, i32* %355, align 4
  %356 = load i64, i64* %PC, align 8
  %357 = load i8, i8* %5, align 1, !tbaa !2432
  %358 = load i8, i8* %8, align 1, !tbaa !2447
  %359 = or i8 %358, %357
  %360 = icmp eq i8 %359, 0
  %.v33 = select i1 %360, i64 76, i64 6
  %361 = add i64 %356, %.v33
  store i64 %361, i64* %11, align 8, !tbaa !2428
  br i1 %360, label %block_40075e, label %block_400718

block_40086b:                                     ; preds = %block_40085f
  %362 = add i64 %14, -32
  %363 = add i64 %48, 3
  store i64 %363, i64* %PC, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = zext i32 %365 to i64
  store i64 %366, i64* %RAX, align 8, !tbaa !2428
  %367 = add i64 %14, -24
  %368 = add i64 %48, 6
  store i64 %368, i64* %PC, align 8
  %369 = inttoptr i64 %367 to i32*
  %370 = load i32, i32* %369, align 4
  %371 = sub i32 %365, %370
  %372 = icmp ult i32 %365, %370
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %5, align 1, !tbaa !2432
  %374 = and i32 %371, 255
  %375 = tail call i32 @llvm.ctpop.i32(i32 %374) #8
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  %378 = xor i8 %377, 1
  store i8 %378, i8* %6, align 1, !tbaa !2446
  %379 = xor i32 %370, %365
  %380 = xor i32 %379, %371
  %381 = lshr i32 %380, 4
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  store i8 %383, i8* %7, align 1, !tbaa !2450
  %384 = icmp eq i32 %371, 0
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %8, align 1, !tbaa !2447
  %386 = lshr i32 %371, 31
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %9, align 1, !tbaa !2448
  %388 = lshr i32 %365, 31
  %389 = lshr i32 %370, 31
  %390 = xor i32 %389, %388
  %391 = xor i32 %386, %388
  %392 = add nuw nsw i32 %391, %390
  %393 = icmp eq i32 %392, 2
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %10, align 1, !tbaa !2449
  %.v31 = select i1 %384, i64 12, i64 44
  %395 = add i64 %48, %.v31
  store i64 %395, i64* %11, align 8, !tbaa !2428
  br i1 %384, label %block_400877, label %block_400897

block_400734:                                     ; preds = %block_400718, %3
  %396 = phi i64 [ %phitmp, %3 ], [ 4196151, %block_400718 ]
  %397 = phi i64 [ %.pre, %3 ], [ %630, %block_400718 ]
  %MEMORY.3 = phi %struct.Memory* [ %2, %3 ], [ %173, %block_400718 ]
  %398 = add i64 %397, -24
  store i64 %396, i64* %PC, align 8
  %399 = inttoptr i64 %398 to i32*
  %400 = load i32, i32* %399, align 4
  %401 = add i32 %400, 1
  %402 = icmp eq i32 %400, -1
  %403 = icmp eq i32 %401, 0
  %404 = or i1 %402, %403
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %5, align 1, !tbaa !2432
  %406 = and i32 %401, 255
  %407 = tail call i32 @llvm.ctpop.i32(i32 %406) #8
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  store i8 %410, i8* %6, align 1, !tbaa !2446
  %411 = xor i32 %400, %401
  %412 = lshr i32 %411, 4
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  store i8 %414, i8* %7, align 1, !tbaa !2450
  %415 = icmp eq i32 %401, 0
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %8, align 1, !tbaa !2447
  %417 = lshr i32 %401, 31
  %418 = trunc i32 %417 to i8
  store i8 %418, i8* %9, align 1, !tbaa !2448
  %419 = lshr i32 %400, 31
  %420 = xor i32 %417, %419
  %421 = add nuw nsw i32 %420, %417
  %422 = icmp eq i32 %421, 2
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %10, align 1, !tbaa !2449
  %424 = add i64 %396, 6
  store i64 %424, i64* %PC, align 8
  store i32 %401, i32* %399, align 4
  %425 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %426 = load i64, i64* %RBP, align 8
  %427 = add i64 %426, -24
  %428 = add i64 %425, 97
  store i64 %428, i64* %PC, align 8
  %429 = inttoptr i64 %427 to i32*
  %430 = load i32, i32* %429, align 4
  %431 = sext i32 %430 to i64
  %432 = mul nsw i64 %431, 11
  store i64 %432, i64* %RCX, align 8, !tbaa !2428
  %433 = lshr i64 %432, 63
  %434 = add i64 %432, ptrtoint (%maze_type* @maze to i64)
  store i64 %434, i64* %RAX, align 8, !tbaa !2428
  %435 = icmp ult i64 %434, ptrtoint (%maze_type* @maze to i64)
  %436 = icmp ult i64 %434, %432
  %437 = or i1 %435, %436
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %5, align 1, !tbaa !2432
  %439 = trunc i64 %434 to i32
  %440 = and i32 %439, 255
  %441 = tail call i32 @llvm.ctpop.i32(i32 %440) #8
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  %444 = xor i8 %443, 1
  store i8 %444, i8* %6, align 1, !tbaa !2446
  %445 = xor i64 %432, ptrtoint (%maze_type* @maze to i64)
  %446 = xor i64 %445, %434
  %447 = lshr i64 %446, 4
  %448 = trunc i64 %447 to i8
  %449 = and i8 %448, 1
  store i8 %449, i8* %7, align 1, !tbaa !2450
  %450 = icmp eq i64 %434, 0
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %8, align 1, !tbaa !2447
  %452 = lshr i64 %434, 63
  %453 = trunc i64 %452 to i8
  store i8 %453, i8* %9, align 1, !tbaa !2448
  %454 = xor i64 %452, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %455 = xor i64 %452, %433
  %456 = add nuw nsw i64 %454, %455
  %457 = icmp eq i64 %456, 2
  %458 = zext i1 %457 to i8
  store i8 %458, i8* %10, align 1, !tbaa !2449
  %459 = add i64 %426, -20
  %460 = add i64 %425, 108
  store i64 %460, i64* %PC, align 8
  %461 = inttoptr i64 %459 to i32*
  %462 = load i32, i32* %461, align 4
  %463 = sext i32 %462 to i64
  store i64 %463, i64* %RCX, align 8, !tbaa !2428
  %464 = add i64 %463, %434
  %465 = add i64 %425, 112
  store i64 %465, i64* %PC, align 8
  %466 = inttoptr i64 %464 to i8*
  %467 = load i8, i8* %466, align 1
  %468 = sext i8 %467 to i64
  %469 = and i64 %468, 4294967295
  store i64 %469, i64* %RDX, align 8, !tbaa !2428
  %470 = sext i8 %467 to i32
  %471 = add nsw i32 %470, -35
  %472 = icmp ult i8 %467, 35
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %5, align 1, !tbaa !2432
  %474 = and i32 %471, 255
  %475 = tail call i32 @llvm.ctpop.i32(i32 %474) #8
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  %478 = xor i8 %477, 1
  store i8 %478, i8* %6, align 1, !tbaa !2446
  %479 = xor i32 %470, %471
  %480 = lshr i32 %479, 4
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  store i8 %482, i8* %7, align 1, !tbaa !2450
  %483 = icmp eq i32 %471, 0
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %8, align 1, !tbaa !2447
  %485 = lshr i32 %471, 31
  %486 = trunc i32 %485 to i8
  store i8 %486, i8* %9, align 1, !tbaa !2448
  %487 = lshr i32 %470, 31
  %488 = xor i32 %485, %487
  %489 = add nuw nsw i32 %488, %487
  %490 = icmp eq i32 %489, 2
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %10, align 1, !tbaa !2449
  %.v = select i1 %483, i64 121, i64 172
  %492 = add i64 %425, %.v
  %493 = add i64 %492, 10
  store i64 %493, i64* %PC, align 8
  br i1 %483, label %block_4007b6, label %block_4007e9

block_400877:                                     ; preds = %block_40086b
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %494 = add i64 %395, -967
  %495 = add i64 %395, 17
  %496 = load i64, i64* %12, align 8, !tbaa !2428
  %497 = add i64 %496, -8
  %498 = inttoptr i64 %497 to i64*
  store i64 %495, i64* %498, align 8
  store i64 %497, i64* %12, align 8, !tbaa !2428
  store i64 %494, i64* %11, align 8, !tbaa !2428
  %499 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.3)
  %500 = load i64, i64* %RBP, align 8
  %501 = add i64 %500, -4
  %502 = load i64, i64* %PC, align 8
  %503 = add i64 %502, 7
  store i64 %503, i64* %PC, align 8
  %504 = inttoptr i64 %501 to i32*
  store i32 2, i32* %504, align 4
  %505 = load i64, i64* %RBP, align 8
  %506 = add i64 %505, -104
  %507 = load i32, i32* %EAX, align 4
  %508 = load i64, i64* %PC, align 8
  %509 = add i64 %508, 3
  store i64 %509, i64* %PC, align 8
  %510 = inttoptr i64 %506 to i32*
  store i32 %507, i32* %510, align 4
  %511 = load i64, i64* %PC, align 8
  %512 = add i64 %511, 80
  store i64 %512, i64* %11, align 8, !tbaa !2428
  br label %block_4008e2

block_400849:                                     ; preds = %block_40083f
  %513 = add i64 %64, 4
  store i64 %513, i64* %PC, align 8
  %514 = load i32, i32* %51, align 4
  %515 = add i32 %514, -11
  %516 = icmp ult i32 %514, 11
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %5, align 1, !tbaa !2432
  %518 = and i32 %515, 255
  %519 = tail call i32 @llvm.ctpop.i32(i32 %518) #8
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  %522 = xor i8 %521, 1
  store i8 %522, i8* %6, align 1, !tbaa !2446
  %523 = xor i32 %514, %515
  %524 = lshr i32 %523, 4
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  store i8 %526, i8* %7, align 1, !tbaa !2450
  %527 = icmp eq i32 %515, 0
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %8, align 1, !tbaa !2447
  %529 = lshr i32 %515, 31
  %530 = trunc i32 %529 to i8
  store i8 %530, i8* %9, align 1, !tbaa !2448
  %531 = lshr i32 %514, 31
  %532 = xor i32 %529, %531
  %533 = add nuw nsw i32 %532, %531
  %534 = icmp eq i32 %533, 2
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %10, align 1, !tbaa !2449
  %536 = icmp ne i8 %530, 0
  %537 = xor i1 %536, %534
  %.v29 = select i1 %537, i64 22, i64 10
  %538 = add i64 %64, %.v29
  store i64 %538, i64* %11, align 8, !tbaa !2428
  br i1 %537, label %block_40085f, label %block_400853

block_40075e:                                     ; preds = %block_400718, %block_4006ee
  %539 = phi i64 [ 4196190, %block_400718 ], [ %361, %block_4006ee ]
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 195), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %540 = add i64 %539, -686
  %541 = add i64 %539, 17
  %542 = load i64, i64* %12, align 8, !tbaa !2428
  %543 = add i64 %542, -8
  %544 = inttoptr i64 %543 to i64*
  store i64 %541, i64* %544, align 8
  store i64 %543, i64* %12, align 8, !tbaa !2428
  store i64 %540, i64* %11, align 8, !tbaa !2428
  %545 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %173)
  %546 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 235), i64* %RDI, align 8, !tbaa !2428
  %547 = load i64, i64* %RBP, align 8
  %548 = add i64 %547, -88
  %549 = load i32, i32* %EAX, align 4
  %550 = add i64 %546, 13
  store i64 %550, i64* %PC, align 8
  %551 = inttoptr i64 %548 to i32*
  store i32 %549, i32* %551, align 4
  %552 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %553 = add i64 %552, -716
  %554 = add i64 %552, 7
  %555 = load i64, i64* %12, align 8, !tbaa !2428
  %556 = add i64 %555, -8
  %557 = inttoptr i64 %556 to i64*
  store i64 %554, i64* %557, align 8
  store i64 %556, i64* %12, align 8, !tbaa !2428
  store i64 %553, i64* %11, align 8, !tbaa !2428
  %558 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %545)
  %559 = load i64, i64* %PC, align 8
  store i64 4294967295, i64* %RDI, align 8, !tbaa !2428
  %560 = load i64, i64* %RBP, align 8
  %561 = add i64 %560, -92
  %562 = load i32, i32* %EAX, align 4
  %563 = add i64 %559, 8
  store i64 %563, i64* %PC, align 8
  %564 = inttoptr i64 %561 to i32*
  store i32 %562, i32* %564, align 4
  %565 = load i64, i64* %PC, align 8
  %566 = add i64 %565, -699
  %567 = add i64 %565, 5
  %568 = load i64, i64* %12, align 8, !tbaa !2428
  %569 = add i64 %568, -8
  %570 = inttoptr i64 %569 to i64*
  store i64 %567, i64* %570, align 8
  store i64 %569, i64* %12, align 8, !tbaa !2428
  store i64 %566, i64* %11, align 8, !tbaa !2428
  %571 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %558)
  %572 = load i64, i64* %PC, align 8
  %573 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %572, %struct.Memory* %571)
  ret %struct.Memory* %573

block_4008c7:                                     ; preds = %block_400897
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %574 = add i64 %235, -1047
  %575 = add i64 %235, 17
  %576 = load i64, i64* %12, align 8, !tbaa !2428
  %577 = add i64 %576, -8
  %578 = inttoptr i64 %577 to i64*
  store i64 %575, i64* %578, align 8
  store i64 %577, i64* %12, align 8, !tbaa !2428
  store i64 %574, i64* %11, align 8, !tbaa !2428
  %579 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %173)
  %580 = load i64, i64* %RBP, align 8
  %581 = add i64 %580, -4
  %582 = load i64, i64* %PC, align 8
  %583 = add i64 %582, 7
  store i64 %583, i64* %PC, align 8
  %584 = inttoptr i64 %581 to i32*
  store i32 1, i32* %584, align 4
  %585 = load i64, i64* %RBP, align 8
  %586 = add i64 %585, -108
  %587 = load i32, i32* %EAX, align 4
  %588 = load i64, i64* %PC, align 8
  %589 = add i64 %588, 3
  store i64 %589, i64* %PC, align 8
  %590 = inttoptr i64 %586 to i32*
  store i32 %587, i32* %590, align 4
  %.pre21 = load i64, i64* %PC, align 8
  br label %block_4008e2

block_4008e2:                                     ; preds = %block_4008c7, %block_400877
  %591 = phi i64 [ %.pre21, %block_4008c7 ], [ %512, %block_400877 ]
  %MEMORY.5 = phi %struct.Memory* [ %579, %block_4008c7 ], [ %499, %block_400877 ]
  %592 = load i64, i64* %RBP, align 8
  %593 = add i64 %592, -4
  %594 = add i64 %591, 3
  store i64 %594, i64* %PC, align 8
  %595 = inttoptr i64 %593 to i32*
  %596 = load i32, i32* %595, align 4
  %597 = zext i32 %596 to i64
  store i64 %597, i64* %RAX, align 8, !tbaa !2428
  %598 = load i64, i64* %RSP, align 8
  %599 = add i64 %598, 112
  store i64 %599, i64* %RSP, align 8, !tbaa !2428
  %600 = icmp ugt i64 %598, -113
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %5, align 1, !tbaa !2432
  %602 = trunc i64 %599 to i32
  %603 = and i32 %602, 255
  %604 = tail call i32 @llvm.ctpop.i32(i32 %603) #8
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  %607 = xor i8 %606, 1
  store i8 %607, i8* %6, align 1, !tbaa !2446
  %608 = xor i64 %598, 16
  %609 = xor i64 %608, %599
  %610 = lshr i64 %609, 4
  %611 = trunc i64 %610 to i8
  %612 = and i8 %611, 1
  store i8 %612, i8* %7, align 1, !tbaa !2450
  %613 = icmp eq i64 %599, 0
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %8, align 1, !tbaa !2447
  %615 = lshr i64 %599, 63
  %616 = trunc i64 %615 to i8
  store i8 %616, i8* %9, align 1, !tbaa !2448
  %617 = lshr i64 %598, 63
  %618 = xor i64 %615, %617
  %619 = add nuw nsw i64 %618, %615
  %620 = icmp eq i64 %619, 2
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %10, align 1, !tbaa !2449
  %622 = add i64 %591, 8
  store i64 %622, i64* %PC, align 8
  %623 = add i64 %598, 120
  %624 = inttoptr i64 %599 to i64*
  %625 = load i64, i64* %624, align 8
  store i64 %625, i64* %RBP, align 8, !tbaa !2428
  store i64 %623, i64* %12, align 8, !tbaa !2428
  %626 = add i64 %591, 9
  store i64 %626, i64* %PC, align 8
  %627 = inttoptr i64 %623 to i64*
  %628 = load i64, i64* %627, align 8
  store i64 %628, i64* %11, align 8, !tbaa !2428
  %629 = add i64 %598, 128
  store i64 %629, i64* %12, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.5

block_400718:                                     ; preds = %block_4006ee
  %630 = load i64, i64* %RBP, align 8
  %631 = add i64 %630, -80
  %632 = add i64 %361, 4
  store i64 %632, i64* %PC, align 8
  %633 = inttoptr i64 %631 to i64*
  %634 = load i64, i64* %633, align 8
  store i64 %634, i64* %RAX, align 8, !tbaa !2428
  %635 = shl i64 %634, 3
  %636 = add i64 %635, add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 8)
  %637 = add i64 %361, 12
  store i64 %637, i64* %PC, align 8
  %638 = inttoptr i64 %636 to i64*
  %639 = load i64, i64* %638, align 8
  store i64 %639, i64* %RCX, align 8, !tbaa !2428
  store i64 %639, i64* %11, align 8, !tbaa !2428
  switch i64 %639, label %737 [
    i64 4196162, label %block_400742
    i64 4196176, label %block_400750
    i64 4196148, label %block_400734
    i64 4196190, label %block_40075e
    i64 4196134, label %block_400726
  ]

block_40080f:                                     ; preds = %block_4007e9
  %640 = load i64, i64* %RBP, align 8
  %641 = add i64 %640, -24
  %642 = add i64 %733, 4
  store i64 %642, i64* %PC, align 8
  %643 = inttoptr i64 %641 to i32*
  %644 = load i32, i32* %643, align 4
  %645 = add i32 %644, -2
  %646 = icmp ult i32 %644, 2
  %647 = zext i1 %646 to i8
  store i8 %647, i8* %5, align 1, !tbaa !2432
  %648 = and i32 %645, 255
  %649 = tail call i32 @llvm.ctpop.i32(i32 %648) #8
  %650 = trunc i32 %649 to i8
  %651 = and i8 %650, 1
  %652 = xor i8 %651, 1
  store i8 %652, i8* %6, align 1, !tbaa !2446
  %653 = xor i32 %644, %645
  %654 = lshr i32 %653, 4
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  store i8 %656, i8* %7, align 1, !tbaa !2450
  %657 = icmp eq i32 %645, 0
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %8, align 1, !tbaa !2447
  %659 = lshr i32 %645, 31
  %660 = trunc i32 %659 to i8
  store i8 %660, i8* %9, align 1, !tbaa !2448
  %661 = lshr i32 %644, 31
  %662 = xor i32 %659, %661
  %663 = add nuw nsw i32 %662, %661
  %664 = icmp eq i32 %663, 2
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %10, align 1, !tbaa !2449
  %.v26 = select i1 %657, i64 10, i64 68
  %666 = add i64 %733, %.v26
  store i64 %666, i64* %11, align 8, !tbaa !2428
  br i1 %657, label %block_400819, label %block_400853

block_4007e9:                                     ; preds = %block_400734
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %667 = load i64, i64* %RBP, align 8
  %668 = add i64 %667, -24
  %669 = add i64 %492, 14
  store i64 %669, i64* %PC, align 8
  %670 = inttoptr i64 %668 to i32*
  %671 = load i32, i32* %670, align 4
  %672 = sext i32 %671 to i64
  %673 = mul nsw i64 %672, 11
  store i64 %673, i64* %RCX, align 8, !tbaa !2428
  %674 = lshr i64 %673, 63
  %675 = add i64 %673, ptrtoint (%maze_type* @maze to i64)
  store i64 %675, i64* %RAX, align 8, !tbaa !2428
  %676 = icmp ult i64 %675, ptrtoint (%maze_type* @maze to i64)
  %677 = icmp ult i64 %675, %673
  %678 = or i1 %676, %677
  %679 = zext i1 %678 to i8
  store i8 %679, i8* %5, align 1, !tbaa !2432
  %680 = trunc i64 %675 to i32
  %681 = and i32 %680, 255
  %682 = tail call i32 @llvm.ctpop.i32(i32 %681) #8
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  %685 = xor i8 %684, 1
  store i8 %685, i8* %6, align 1, !tbaa !2446
  %686 = xor i64 %673, ptrtoint (%maze_type* @maze to i64)
  %687 = xor i64 %686, %675
  %688 = lshr i64 %687, 4
  %689 = trunc i64 %688 to i8
  %690 = and i8 %689, 1
  store i8 %690, i8* %7, align 1, !tbaa !2450
  %691 = icmp eq i64 %675, 0
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %8, align 1, !tbaa !2447
  %693 = lshr i64 %675, 63
  %694 = trunc i64 %693 to i8
  store i8 %694, i8* %9, align 1, !tbaa !2448
  %695 = xor i64 %693, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %696 = xor i64 %693, %674
  %697 = add nuw nsw i64 %695, %696
  %698 = icmp eq i64 %697, 2
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %10, align 1, !tbaa !2449
  %700 = add i64 %667, -20
  %701 = add i64 %492, 25
  store i64 %701, i64* %PC, align 8
  %702 = inttoptr i64 %700 to i32*
  %703 = load i32, i32* %702, align 4
  %704 = sext i32 %703 to i64
  store i64 %704, i64* %RCX, align 8, !tbaa !2428
  %705 = add i64 %704, %675
  %706 = add i64 %492, 29
  store i64 %706, i64* %PC, align 8
  %707 = inttoptr i64 %705 to i8*
  %708 = load i8, i8* %707, align 1
  %709 = sext i8 %708 to i64
  %710 = and i64 %709, 4294967295
  store i64 %710, i64* %RDX, align 8, !tbaa !2428
  %711 = sext i8 %708 to i32
  %712 = add nsw i32 %711, -32
  %713 = icmp ult i8 %708, 32
  %714 = zext i1 %713 to i8
  store i8 %714, i8* %5, align 1, !tbaa !2432
  %715 = and i32 %712, 255
  %716 = tail call i32 @llvm.ctpop.i32(i32 %715) #8
  %717 = trunc i32 %716 to i8
  %718 = and i8 %717, 1
  %719 = xor i8 %718, 1
  store i8 %719, i8* %6, align 1, !tbaa !2446
  %720 = xor i32 %711, %712
  %721 = lshr i32 %720, 4
  %722 = trunc i32 %721 to i8
  %723 = and i8 %722, 1
  store i8 %723, i8* %7, align 1, !tbaa !2450
  %724 = icmp eq i32 %712, 0
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %8, align 1, !tbaa !2447
  %726 = lshr i32 %712, 31
  %727 = trunc i32 %726 to i8
  store i8 %727, i8* %9, align 1, !tbaa !2448
  %728 = lshr i32 %711, 31
  %729 = xor i32 %726, %728
  %730 = add nuw nsw i32 %729, %728
  %731 = icmp eq i32 %730, 2
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %10, align 1, !tbaa !2449
  %.v25 = select i1 %724, i64 118, i64 38
  %733 = add i64 %492, %.v25
  store i64 %733, i64* %11, align 8, !tbaa !2428
  br i1 %724, label %block_40085f, label %block_40080f

block_400726:                                     ; preds = %block_400718
  %734 = tail call %struct.Memory* @sub_400726(%struct.State* nonnull %0, i64 4196134, %struct.Memory* %173)
  ret %struct.Memory* %734

block_400750:                                     ; preds = %block_400718
  %735 = tail call %struct.Memory* @sub_400750(%struct.State* nonnull %0, i64 4196176, %struct.Memory* %173)
  ret %struct.Memory* %735

block_400742:                                     ; preds = %block_400718
  %736 = tail call %struct.Memory* @sub_400742(%struct.State* nonnull %0, i64 4196162, %struct.Memory* %173)
  ret %struct.Memory* %736

; <label>:737:                                    ; preds = %block_400718
  %738 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %639, %struct.Memory* %173)
  ret %struct.Memory* %738
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005c0_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4005c0:
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
  %14 = tail call %struct.Memory* @sub_400550_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %14
}

; Function Attrs: noinline
define %struct.Memory* @sub_4008f0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4008f0:
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
  store i64 ptrtoint (%seg_600de0__init_array_type* @seg_600de0__init_array to i64), i64* %R12, align 8, !tbaa !2428
  %28 = load i64, i64* %RBP, align 8
  %29 = add i64 %27, 8
  store i64 %29, i64* %PC, align 8
  %30 = add i64 %8, -40
  %31 = inttoptr i64 %30 to i64*
  store i64 %28, i64* %31, align 8
  %32 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_600de0__init_array_type* @seg_600de0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2428
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
  %65 = add i64 %40, -1163
  %66 = add i64 %40, 22
  %67 = add i64 %8, -64
  %68 = inttoptr i64 %67 to i64*
  store i64 %66, i64* %68, align 8
  store i64 %67, i64* %7, align 8, !tbaa !2428
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %65, i64* %69, align 8, !tbaa !2428
  %70 = tail call %struct.Memory* @sub_400480__init_proc_renamed_(%struct.State* nonnull %0, i64 %65, %struct.Memory* %2)
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
  store i8 %80, i8* %48, align 1, !tbaa !2447
  %81 = lshr i64 %71, 63
  %82 = trunc i64 %81 to i8
  store i8 %82, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %47, align 1, !tbaa !2450
  %.v = select i1 %79, i64 37, i64 5
  %83 = add i64 %72, %.v
  store i64 %83, i64* %69, align 8, !tbaa !2428
  br i1 %79, label %block_400946, label %block_400926

block_400946:                                     ; preds = %block_400930, %block_4008f0
  %84 = phi i64 [ %83, %block_4008f0 ], [ %182, %block_400930 ]
  %MEMORY.0 = phi %struct.Memory* [ %70, %block_4008f0 ], [ %152, %block_400930 ]
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
  store i8 %98, i8* %47, align 1, !tbaa !2450
  %99 = icmp eq i64 %86, 0
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %48, align 1, !tbaa !2447
  %101 = lshr i64 %86, 63
  %102 = trunc i64 %101 to i8
  store i8 %102, i8* %49, align 1, !tbaa !2448
  %103 = lshr i64 %85, 63
  %104 = xor i64 %101, %103
  %105 = add nuw nsw i64 %104, %101
  %106 = icmp eq i64 %105, 2
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %50, align 1, !tbaa !2449
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

block_400926:                                     ; preds = %block_4008f0
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %45, align 1, !tbaa !2432
  store i8 1, i8* %46, align 1, !tbaa !2446
  store i8 1, i8* %48, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %47, align 1, !tbaa !2450
  %136 = add i64 %83, 10
  store i64 %136, i64* %PC, align 8
  br label %block_400930

block_400930:                                     ; preds = %block_400930, %block_400926
  %137 = phi i64 [ 0, %block_400926 ], [ %155, %block_400930 ]
  %138 = phi i64 [ %136, %block_400926 ], [ %182, %block_400930 ]
  %MEMORY.1 = phi %struct.Memory* [ %70, %block_400926 ], [ %152, %block_400930 ]
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
  store i8 %171, i8* %47, align 1, !tbaa !2450
  %172 = icmp eq i64 %158, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %48, align 1, !tbaa !2447
  %174 = lshr i64 %158, 63
  %175 = trunc i64 %174 to i8
  store i8 %175, i8* %49, align 1, !tbaa !2448
  %176 = lshr i64 %157, 63
  %177 = xor i64 %156, %176
  %178 = xor i64 %174, %176
  %179 = add nuw nsw i64 %178, %177
  %180 = icmp eq i64 %179, 2
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %50, align 1, !tbaa !2449
  %.v1 = select i1 %172, i64 9, i64 -13
  %182 = add i64 %154, %.v1
  store i64 %182, i64* %69, align 8, !tbaa !2428
  br i1 %172, label %block_400946, label %block_400930
}

; Function Attrs: noinline
define %struct.Memory* @sub_400510__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400510:
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
define %struct.Memory* @sub_400742(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %4 to i8*
  %EAX = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %.pre = load i64, i64* %RBP, align 8
  %phitmp = add i64 %1, 3
  br label %block_400742

block_4007e9:                                     ; preds = %block_400790
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %13 = load i64, i64* %RBP, align 8
  %14 = add i64 %13, -24
  %15 = add i64 %737, 14
  store i64 %15, i64* %PC, align 8
  %16 = inttoptr i64 %14 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = mul nsw i64 %18, 11
  store i64 %19, i64* %RCX, align 8, !tbaa !2428
  %20 = lshr i64 %19, 63
  %21 = add i64 %19, ptrtoint (%maze_type* @maze to i64)
  store i64 %21, i64* %RAX, align 8, !tbaa !2428
  %22 = icmp ult i64 %21, ptrtoint (%maze_type* @maze to i64)
  %23 = icmp ult i64 %21, %19
  %24 = or i1 %22, %23
  %25 = zext i1 %24 to i8
  store i8 %25, i8* %5, align 1, !tbaa !2432
  %26 = trunc i64 %21 to i32
  %27 = and i32 %26, 255
  %28 = tail call i32 @llvm.ctpop.i32(i32 %27) #8
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  store i8 %31, i8* %6, align 1, !tbaa !2446
  %32 = xor i64 %19, ptrtoint (%maze_type* @maze to i64)
  %33 = xor i64 %32, %21
  %34 = lshr i64 %33, 4
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  store i8 %36, i8* %7, align 1, !tbaa !2450
  %37 = icmp eq i64 %21, 0
  %38 = zext i1 %37 to i8
  store i8 %38, i8* %8, align 1, !tbaa !2447
  %39 = lshr i64 %21, 63
  %40 = trunc i64 %39 to i8
  store i8 %40, i8* %9, align 1, !tbaa !2448
  %41 = xor i64 %39, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %42 = xor i64 %39, %20
  %43 = add nuw nsw i64 %41, %42
  %44 = icmp eq i64 %43, 2
  %45 = zext i1 %44 to i8
  store i8 %45, i8* %10, align 1, !tbaa !2449
  %46 = add i64 %13, -20
  %47 = add i64 %737, 25
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %46 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %RCX, align 8, !tbaa !2428
  %51 = add i64 %50, %21
  %52 = add i64 %737, 29
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %51 to i8*
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i64
  %56 = and i64 %55, 4294967295
  store i64 %56, i64* %RDX, align 8, !tbaa !2428
  %57 = sext i8 %54 to i32
  %58 = add nsw i32 %57, -32
  %59 = icmp ult i8 %54, 32
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %5, align 1, !tbaa !2432
  %61 = and i32 %58, 255
  %62 = tail call i32 @llvm.ctpop.i32(i32 %61) #8
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, 1
  %65 = xor i8 %64, 1
  store i8 %65, i8* %6, align 1, !tbaa !2446
  %66 = xor i32 %57, %58
  %67 = lshr i32 %66, 4
  %68 = trunc i32 %67 to i8
  %69 = and i8 %68, 1
  store i8 %69, i8* %7, align 1, !tbaa !2450
  %70 = icmp eq i32 %58, 0
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %8, align 1, !tbaa !2447
  %72 = lshr i32 %58, 31
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %9, align 1, !tbaa !2448
  %74 = lshr i32 %57, 31
  %75 = xor i32 %72, %74
  %76 = add nuw nsw i32 %75, %74
  %77 = icmp eq i32 %76, 2
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %10, align 1, !tbaa !2449
  %.v23 = select i1 %70, i64 118, i64 38
  %79 = add i64 %737, %.v23
  store i64 %79, i64* %11, align 8, !tbaa !2428
  br i1 %70, label %block_40085f, label %block_40080f

block_4008e2:                                     ; preds = %block_4008c7, %block_400877
  %80 = phi i64 [ %.pre15, %block_4008c7 ], [ %219, %block_400877 ]
  %MEMORY.0 = phi %struct.Memory* [ %778, %block_4008c7 ], [ %206, %block_400877 ]
  %81 = load i64, i64* %RBP, align 8
  %82 = add i64 %81, -4
  %83 = add i64 %80, 3
  store i64 %83, i64* %PC, align 8
  %84 = inttoptr i64 %82 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = zext i32 %85 to i64
  store i64 %86, i64* %RAX, align 8, !tbaa !2428
  %87 = load i64, i64* %RSP, align 8
  %88 = add i64 %87, 112
  store i64 %88, i64* %RSP, align 8, !tbaa !2428
  %89 = icmp ugt i64 %87, -113
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %5, align 1, !tbaa !2432
  %91 = trunc i64 %88 to i32
  %92 = and i32 %91, 255
  %93 = tail call i32 @llvm.ctpop.i32(i32 %92) #8
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = xor i8 %95, 1
  store i8 %96, i8* %6, align 1, !tbaa !2446
  %97 = xor i64 %87, 16
  %98 = xor i64 %97, %88
  %99 = lshr i64 %98, 4
  %100 = trunc i64 %99 to i8
  %101 = and i8 %100, 1
  store i8 %101, i8* %7, align 1, !tbaa !2450
  %102 = icmp eq i64 %88, 0
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %8, align 1, !tbaa !2447
  %104 = lshr i64 %88, 63
  %105 = trunc i64 %104 to i8
  store i8 %105, i8* %9, align 1, !tbaa !2448
  %106 = lshr i64 %87, 63
  %107 = xor i64 %104, %106
  %108 = add nuw nsw i64 %107, %104
  %109 = icmp eq i64 %108, 2
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %10, align 1, !tbaa !2449
  %111 = add i64 %80, 8
  store i64 %111, i64* %PC, align 8
  %112 = add i64 %87, 120
  %113 = inttoptr i64 %88 to i64*
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %RBP, align 8, !tbaa !2428
  store i64 %112, i64* %12, align 8, !tbaa !2428
  %115 = add i64 %80, 9
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %112 to i64*
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %11, align 8, !tbaa !2428
  %118 = add i64 %87, 128
  store i64 %118, i64* %12, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_40075e:                                     ; preds = %block_400718, %block_4006ee
  %119 = phi i64 [ 4196190, %block_400718 ], [ %424, %block_4006ee ]
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 195), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %120 = add i64 %119, -686
  %121 = add i64 %119, 17
  %122 = load i64, i64* %12, align 8, !tbaa !2428
  %123 = add i64 %122, -8
  %124 = inttoptr i64 %123 to i64*
  store i64 %121, i64* %124, align 8
  store i64 %123, i64* %12, align 8, !tbaa !2428
  store i64 %120, i64* %11, align 8, !tbaa !2428
  %125 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %543)
  %126 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 235), i64* %RDI, align 8, !tbaa !2428
  %127 = load i64, i64* %RBP, align 8
  %128 = add i64 %127, -88
  %129 = load i32, i32* %EAX, align 4
  %130 = add i64 %126, 13
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %128 to i32*
  store i32 %129, i32* %131, align 4
  %132 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %133 = add i64 %132, -716
  %134 = add i64 %132, 7
  %135 = load i64, i64* %12, align 8, !tbaa !2428
  %136 = add i64 %135, -8
  %137 = inttoptr i64 %136 to i64*
  store i64 %134, i64* %137, align 8
  store i64 %136, i64* %12, align 8, !tbaa !2428
  store i64 %133, i64* %11, align 8, !tbaa !2428
  %138 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %125)
  %139 = load i64, i64* %PC, align 8
  store i64 4294967295, i64* %RDI, align 8, !tbaa !2428
  %140 = load i64, i64* %RBP, align 8
  %141 = add i64 %140, -92
  %142 = load i32, i32* %EAX, align 4
  %143 = add i64 %139, 8
  store i64 %143, i64* %PC, align 8
  %144 = inttoptr i64 %141 to i32*
  store i32 %142, i32* %144, align 4
  %145 = load i64, i64* %PC, align 8
  %146 = add i64 %145, -699
  %147 = add i64 %145, 5
  %148 = load i64, i64* %12, align 8, !tbaa !2428
  %149 = add i64 %148, -8
  %150 = inttoptr i64 %149 to i64*
  store i64 %147, i64* %150, align 8
  store i64 %149, i64* %12, align 8, !tbaa !2428
  store i64 %146, i64* %11, align 8, !tbaa !2428
  %151 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %138)
  %152 = load i64, i64* %PC, align 8
  %153 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %152, %struct.Memory* %151)
  ret %struct.Memory* %153

block_400853:                                     ; preds = %block_400819, %block_40080f, %block_40083f, %block_400849
  %154 = phi i64 [ %816, %block_40080f ], [ %291, %block_40083f ], [ %245, %block_400849 ], [ %489, %block_400819 ]
  %155 = phi i64 [ %790, %block_40080f ], [ %.pre13, %block_40083f ], [ %.pre13, %block_400849 ], [ %.pre13, %block_400819 ]
  %156 = add i64 %155, -28
  %157 = add i64 %154, 3
  store i64 %157, i64* %PC, align 8
  %158 = inttoptr i64 %156 to i32*
  %159 = load i32, i32* %158, align 4
  %160 = zext i32 %159 to i64
  store i64 %160, i64* %RAX, align 8, !tbaa !2428
  %161 = add i64 %155, -20
  %162 = add i64 %154, 6
  store i64 %162, i64* %PC, align 8
  %163 = inttoptr i64 %161 to i32*
  store i32 %159, i32* %163, align 4
  %164 = load i64, i64* %RBP, align 8
  %165 = add i64 %164, -32
  %166 = load i64, i64* %PC, align 8
  %167 = add i64 %166, 3
  store i64 %167, i64* %PC, align 8
  %168 = inttoptr i64 %165 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %RAX, align 8, !tbaa !2428
  %171 = add i64 %164, -24
  %172 = add i64 %166, 6
  store i64 %172, i64* %PC, align 8
  %173 = inttoptr i64 %171 to i32*
  store i32 %169, i32* %173, align 4
  %.pre14 = load i64, i64* %PC, align 8
  br label %block_40085f

block_400750:                                     ; preds = %block_400718
  %174 = add i64 %490, -20
  store i64 4196179, i64* %PC, align 8
  %175 = inttoptr i64 %174 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = add i32 %176, 1
  %178 = zext i32 %177 to i64
  store i64 %178, i64* %RAX, align 8, !tbaa !2428
  %179 = icmp eq i32 %176, -1
  %180 = icmp eq i32 %177, 0
  %181 = or i1 %179, %180
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %5, align 1, !tbaa !2432
  %183 = and i32 %177, 255
  %184 = tail call i32 @llvm.ctpop.i32(i32 %183) #8
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  %187 = xor i8 %186, 1
  store i8 %187, i8* %6, align 1, !tbaa !2446
  %188 = xor i32 %176, %177
  %189 = lshr i32 %188, 4
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  store i8 %191, i8* %7, align 1, !tbaa !2450
  %192 = icmp eq i32 %177, 0
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %8, align 1, !tbaa !2447
  %194 = lshr i32 %177, 31
  %195 = trunc i32 %194 to i8
  store i8 %195, i8* %9, align 1, !tbaa !2448
  %196 = lshr i32 %176, 31
  %197 = xor i32 %194, %196
  %198 = add nuw nsw i32 %197, %194
  %199 = icmp eq i32 %198, 2
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %10, align 1, !tbaa !2449
  store i64 4196185, i64* %PC, align 8
  store i32 %177, i32* %175, align 4
  br label %block_400790

block_400877:                                     ; preds = %block_40086b
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %201 = add i64 %772, -967
  %202 = add i64 %772, 17
  %203 = load i64, i64* %12, align 8, !tbaa !2428
  %204 = add i64 %203, -8
  %205 = inttoptr i64 %204 to i64*
  store i64 %202, i64* %205, align 8
  store i64 %204, i64* %12, align 8, !tbaa !2428
  store i64 %201, i64* %11, align 8, !tbaa !2428
  %206 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.6)
  %207 = load i64, i64* %RBP, align 8
  %208 = add i64 %207, -4
  %209 = load i64, i64* %PC, align 8
  %210 = add i64 %209, 7
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %208 to i32*
  store i32 2, i32* %211, align 4
  %212 = load i64, i64* %RBP, align 8
  %213 = add i64 %212, -104
  %214 = load i32, i32* %EAX, align 4
  %215 = load i64, i64* %PC, align 8
  %216 = add i64 %215, 3
  store i64 %216, i64* %PC, align 8
  %217 = inttoptr i64 %213 to i32*
  store i32 %214, i32* %217, align 4
  %218 = load i64, i64* %PC, align 8
  %219 = add i64 %218, 80
  store i64 %219, i64* %11, align 8, !tbaa !2428
  br label %block_4008e2

block_400849:                                     ; preds = %block_40083f
  %220 = add i64 %291, 4
  store i64 %220, i64* %PC, align 8
  %221 = load i32, i32* %278, align 4
  %222 = add i32 %221, -11
  %223 = icmp ult i32 %221, 11
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %5, align 1, !tbaa !2432
  %225 = and i32 %222, 255
  %226 = tail call i32 @llvm.ctpop.i32(i32 %225) #8
  %227 = trunc i32 %226 to i8
  %228 = and i8 %227, 1
  %229 = xor i8 %228, 1
  store i8 %229, i8* %6, align 1, !tbaa !2446
  %230 = xor i32 %221, %222
  %231 = lshr i32 %230, 4
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  store i8 %233, i8* %7, align 1, !tbaa !2450
  %234 = icmp eq i32 %222, 0
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %8, align 1, !tbaa !2447
  %236 = lshr i32 %222, 31
  %237 = trunc i32 %236 to i8
  store i8 %237, i8* %9, align 1, !tbaa !2448
  %238 = lshr i32 %221, 31
  %239 = xor i32 %236, %238
  %240 = add nuw nsw i32 %239, %238
  %241 = icmp eq i32 %240, 2
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %10, align 1, !tbaa !2449
  %243 = icmp ne i8 %237, 0
  %244 = xor i1 %243, %241
  %.v27 = select i1 %244, i64 22, i64 10
  %245 = add i64 %291, %.v27
  store i64 %245, i64* %11, align 8, !tbaa !2428
  br i1 %244, label %block_40085f, label %block_400853

block_400742:                                     ; preds = %block_400718, %3
  %246 = phi i64 [ %phitmp, %3 ], [ 4196165, %block_400718 ]
  %247 = phi i64 [ %.pre, %3 ], [ %490, %block_400718 ]
  %MEMORY.3 = phi %struct.Memory* [ %2, %3 ], [ %543, %block_400718 ]
  %248 = add i64 %247, -20
  store i64 %246, i64* %PC, align 8
  %249 = inttoptr i64 %248 to i32*
  %250 = load i32, i32* %249, align 4
  %251 = add i32 %250, -1
  %252 = zext i32 %251 to i64
  store i64 %252, i64* %RAX, align 8, !tbaa !2428
  %253 = icmp ne i32 %250, 0
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %5, align 1, !tbaa !2432
  %255 = and i32 %251, 255
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255) #8
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %6, align 1, !tbaa !2446
  %260 = xor i32 %250, 16
  %261 = xor i32 %251, %260
  %262 = lshr i32 %261, 4
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  store i8 %264, i8* %7, align 1, !tbaa !2450
  %265 = icmp eq i32 %251, 0
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %8, align 1, !tbaa !2447
  %267 = lshr i32 %251, 31
  %268 = trunc i32 %267 to i8
  store i8 %268, i8* %9, align 1, !tbaa !2448
  %269 = lshr i32 %250, 31
  %270 = xor i32 %267, %269
  %271 = xor i32 %267, 1
  %272 = add nuw nsw i32 %270, %271
  %273 = icmp eq i32 %272, 2
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %10, align 1, !tbaa !2449
  %275 = add i64 %246, 6
  store i64 %275, i64* %PC, align 8
  store i32 %251, i32* %249, align 4
  br label %block_400790

block_40083f:                                     ; preds = %block_400819
  %276 = add i64 %.pre13, -20
  %277 = add i64 %489, 4
  store i64 %277, i64* %PC, align 8
  %278 = inttoptr i64 %276 to i32*
  %279 = load i32, i32* %278, align 4
  store i8 0, i8* %5, align 1, !tbaa !2432
  %280 = and i32 %279, 255
  %281 = tail call i32 @llvm.ctpop.i32(i32 %280) #8
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  %284 = xor i8 %283, 1
  store i8 %284, i8* %6, align 1, !tbaa !2446
  store i8 0, i8* %7, align 1, !tbaa !2450
  %285 = icmp eq i32 %279, 0
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %8, align 1, !tbaa !2447
  %287 = lshr i32 %279, 31
  %288 = trunc i32 %287 to i8
  store i8 %288, i8* %9, align 1, !tbaa !2448
  store i8 0, i8* %10, align 1, !tbaa !2449
  %289 = icmp ne i8 %288, 0
  %290 = or i1 %285, %289
  %.v26 = select i1 %290, i64 20, i64 10
  %291 = add i64 %489, %.v26
  store i64 %291, i64* %11, align 8, !tbaa !2428
  br i1 %290, label %block_400853, label %block_400849

block_4007b6:                                     ; preds = %block_400790
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %292 = add i64 %737, -774
  %293 = add i64 %737, 17
  %294 = load i64, i64* %12, align 8, !tbaa !2428
  %295 = add i64 %294, -8
  %296 = inttoptr i64 %295 to i64*
  store i64 %293, i64* %296, align 8
  store i64 %295, i64* %12, align 8, !tbaa !2428
  store i64 %292, i64* %11, align 8, !tbaa !2428
  %297 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.6)
  %298 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2428
  %299 = load i64, i64* %RBP, align 8
  %300 = add i64 %299, -64
  store i64 %300, i64* %RSI, align 8, !tbaa !2428
  %301 = add i64 %299, -96
  %302 = load i32, i32* %EAX, align 4
  %303 = add i64 %298, 17
  store i64 %303, i64* %PC, align 8
  %304 = inttoptr i64 %301 to i32*
  store i32 %302, i32* %304, align 4
  %305 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %306 = add i64 %305, -808
  %307 = add i64 %305, 7
  %308 = load i64, i64* %12, align 8, !tbaa !2428
  %309 = add i64 %308, -8
  %310 = inttoptr i64 %309 to i64*
  store i64 %307, i64* %310, align 8
  store i64 %309, i64* %12, align 8, !tbaa !2428
  store i64 %306, i64* %11, align 8, !tbaa !2428
  %311 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %297)
  %312 = load i64, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %5, align 1, !tbaa !2432
  store i8 1, i8* %6, align 1, !tbaa !2446
  store i8 1, i8* %8, align 1, !tbaa !2447
  store i8 0, i8* %9, align 1, !tbaa !2448
  store i8 0, i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %7, align 1, !tbaa !2450
  %313 = load i64, i64* %RBP, align 8
  %314 = add i64 %313, -100
  %315 = load i32, i32* %EAX, align 4
  %316 = add i64 %312, 5
  store i64 %316, i64* %PC, align 8
  %317 = inttoptr i64 %314 to i32*
  store i32 %315, i32* %317, align 4
  %318 = load i64, i64* %PC, align 8
  %319 = add i64 %318, -788
  %320 = add i64 %318, 5
  %321 = load i64, i64* %12, align 8, !tbaa !2428
  %322 = add i64 %321, -8
  %323 = inttoptr i64 %322 to i64*
  store i64 %320, i64* %323, align 8
  store i64 %322, i64* %12, align 8, !tbaa !2428
  store i64 %319, i64* %11, align 8, !tbaa !2428
  %324 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %311)
  %325 = load i64, i64* %PC, align 8
  %326 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %325, %struct.Memory* %324)
  ret %struct.Memory* %326

block_400726:                                     ; preds = %block_400718
  %327 = add i64 %490, -24
  store i64 4196137, i64* %PC, align 8
  %328 = inttoptr i64 %327 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = add i32 %329, -1
  %331 = zext i32 %330 to i64
  store i64 %331, i64* %RAX, align 8, !tbaa !2428
  %332 = icmp ne i32 %329, 0
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %5, align 1, !tbaa !2432
  %334 = and i32 %330, 255
  %335 = tail call i32 @llvm.ctpop.i32(i32 %334) #8
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  %338 = xor i8 %337, 1
  store i8 %338, i8* %6, align 1, !tbaa !2446
  %339 = xor i32 %329, 16
  %340 = xor i32 %330, %339
  %341 = lshr i32 %340, 4
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  store i8 %343, i8* %7, align 1, !tbaa !2450
  %344 = icmp eq i32 %330, 0
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %8, align 1, !tbaa !2447
  %346 = lshr i32 %330, 31
  %347 = trunc i32 %346 to i8
  store i8 %347, i8* %9, align 1, !tbaa !2448
  %348 = lshr i32 %329, 31
  %349 = xor i32 %346, %348
  %350 = xor i32 %346, 1
  %351 = add nuw nsw i32 %349, %350
  %352 = icmp eq i32 %351, 2
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %10, align 1, !tbaa !2449
  store i64 4196143, i64* %PC, align 8
  store i32 %330, i32* %328, align 4
  br label %block_400790

block_4006ee:                                     ; preds = %block_400897
  %354 = add i64 %576, -20
  %355 = add i64 %605, 3
  store i64 %355, i64* %PC, align 8
  %356 = inttoptr i64 %354 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = zext i32 %357 to i64
  store i64 %358, i64* %RAX, align 8, !tbaa !2428
  %359 = add i64 %576, -28
  %360 = add i64 %605, 6
  store i64 %360, i64* %PC, align 8
  %361 = inttoptr i64 %359 to i32*
  store i32 %357, i32* %361, align 4
  %362 = load i64, i64* %RBP, align 8
  %363 = add i64 %362, -24
  %364 = load i64, i64* %PC, align 8
  %365 = add i64 %364, 3
  store i64 %365, i64* %PC, align 8
  %366 = inttoptr i64 %363 to i32*
  %367 = load i32, i32* %366, align 4
  %368 = zext i32 %367 to i64
  store i64 %368, i64* %RAX, align 8, !tbaa !2428
  %369 = add i64 %362, -32
  %370 = add i64 %364, 6
  store i64 %370, i64* %PC, align 8
  %371 = inttoptr i64 %369 to i32*
  store i32 %367, i32* %371, align 4
  %372 = load i64, i64* %RBP, align 8
  %373 = add i64 %372, -36
  %374 = load i64, i64* %PC, align 8
  %375 = add i64 %374, 4
  store i64 %375, i64* %PC, align 8
  %376 = inttoptr i64 %373 to i32*
  %377 = load i32, i32* %376, align 4
  %378 = sext i32 %377 to i64
  store i64 %378, i64* %RCX, align 8, !tbaa !2428
  %379 = add i64 %372, -64
  %380 = add i64 %379, %378
  %381 = add i64 %374, 9
  store i64 %381, i64* %PC, align 8
  %382 = inttoptr i64 %380 to i8*
  %383 = load i8, i8* %382, align 1
  %384 = sext i8 %383 to i32
  %385 = add nsw i32 %384, -97
  %386 = zext i32 %385 to i64
  %387 = lshr i32 %385, 31
  store i64 %386, i64* %RCX, align 8, !tbaa !2428
  %388 = add nsw i32 %384, -119
  %389 = zext i32 %388 to i64
  store i64 %389, i64* %RAX, align 8, !tbaa !2428
  %390 = icmp ult i32 %385, 22
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %5, align 1, !tbaa !2432
  %392 = and i32 %388, 255
  %393 = tail call i32 @llvm.ctpop.i32(i32 %392) #8
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  store i8 %396, i8* %6, align 1, !tbaa !2446
  %397 = xor i32 %385, 16
  %398 = xor i32 %397, %388
  %399 = lshr i32 %398, 4
  %400 = trunc i32 %399 to i8
  %401 = and i8 %400, 1
  store i8 %401, i8* %7, align 1, !tbaa !2450
  %402 = icmp eq i32 %388, 0
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %8, align 1, !tbaa !2447
  %404 = lshr i32 %388, 31
  %405 = trunc i32 %404 to i8
  store i8 %405, i8* %9, align 1, !tbaa !2448
  %406 = xor i32 %404, %387
  %407 = add nuw nsw i32 %406, %387
  %408 = icmp eq i32 %407, 2
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %10, align 1, !tbaa !2449
  %410 = add i64 %372, -80
  %411 = add i64 %374, 21
  store i64 %411, i64* %PC, align 8
  %412 = inttoptr i64 %410 to i64*
  store i64 %386, i64* %412, align 8
  %413 = load i64, i64* %RBP, align 8
  %414 = add i64 %413, -84
  %415 = load i32, i32* %EAX, align 4
  %416 = load i64, i64* %PC, align 8
  %417 = add i64 %416, 3
  store i64 %417, i64* %PC, align 8
  %418 = inttoptr i64 %414 to i32*
  store i32 %415, i32* %418, align 4
  %419 = load i64, i64* %PC, align 8
  %420 = load i8, i8* %5, align 1, !tbaa !2432
  %421 = load i8, i8* %8, align 1, !tbaa !2447
  %422 = or i8 %421, %420
  %423 = icmp eq i8 %422, 0
  %.v31 = select i1 %423, i64 76, i64 6
  %424 = add i64 %419, %.v31
  store i64 %424, i64* %11, align 8, !tbaa !2428
  br i1 %423, label %block_40075e, label %block_400718

block_400819:                                     ; preds = %block_40080f
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %425 = add i64 %816, 14
  store i64 %425, i64* %PC, align 8
  %426 = load i32, i32* %793, align 4
  %427 = sext i32 %426 to i64
  %428 = mul nsw i64 %427, 11
  store i64 %428, i64* %RCX, align 8, !tbaa !2428
  %429 = lshr i64 %428, 63
  %430 = add i64 %428, ptrtoint (%maze_type* @maze to i64)
  store i64 %430, i64* %RAX, align 8, !tbaa !2428
  %431 = icmp ult i64 %430, ptrtoint (%maze_type* @maze to i64)
  %432 = icmp ult i64 %430, %428
  %433 = or i1 %431, %432
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %5, align 1, !tbaa !2432
  %435 = trunc i64 %430 to i32
  %436 = and i32 %435, 255
  %437 = tail call i32 @llvm.ctpop.i32(i32 %436) #8
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  %440 = xor i8 %439, 1
  store i8 %440, i8* %6, align 1, !tbaa !2446
  %441 = xor i64 %428, ptrtoint (%maze_type* @maze to i64)
  %442 = xor i64 %441, %430
  %443 = lshr i64 %442, 4
  %444 = trunc i64 %443 to i8
  %445 = and i8 %444, 1
  store i8 %445, i8* %7, align 1, !tbaa !2450
  %446 = icmp eq i64 %430, 0
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %8, align 1, !tbaa !2447
  %448 = lshr i64 %430, 63
  %449 = trunc i64 %448 to i8
  store i8 %449, i8* %9, align 1, !tbaa !2448
  %450 = xor i64 %448, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %451 = xor i64 %448, %429
  %452 = add nuw nsw i64 %450, %451
  %453 = icmp eq i64 %452, 2
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %10, align 1, !tbaa !2449
  %455 = add i64 %790, -20
  %456 = add i64 %816, 25
  store i64 %456, i64* %PC, align 8
  %457 = inttoptr i64 %455 to i32*
  %458 = load i32, i32* %457, align 4
  %459 = sext i32 %458 to i64
  store i64 %459, i64* %RCX, align 8, !tbaa !2428
  %460 = add i64 %459, %430
  %461 = add i64 %816, 29
  store i64 %461, i64* %PC, align 8
  %462 = inttoptr i64 %460 to i8*
  %463 = load i8, i8* %462, align 1
  %464 = sext i8 %463 to i64
  %465 = and i64 %464, 4294967295
  store i64 %465, i64* %RDX, align 8, !tbaa !2428
  %466 = sext i8 %463 to i32
  %467 = add nsw i32 %466, -124
  %468 = icmp ult i8 %463, 124
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %5, align 1, !tbaa !2432
  %470 = and i32 %467, 255
  %471 = tail call i32 @llvm.ctpop.i32(i32 %470) #8
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  %474 = xor i8 %473, 1
  store i8 %474, i8* %6, align 1, !tbaa !2446
  %475 = xor i32 %466, 16
  %476 = xor i32 %475, %467
  %477 = lshr i32 %476, 4
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  store i8 %479, i8* %7, align 1, !tbaa !2450
  %480 = icmp eq i32 %467, 0
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %8, align 1, !tbaa !2447
  %482 = lshr i32 %467, 31
  %483 = trunc i32 %482 to i8
  store i8 %483, i8* %9, align 1, !tbaa !2448
  %484 = lshr i32 %466, 31
  %485 = xor i32 %482, %484
  %486 = add nuw nsw i32 %485, %484
  %487 = icmp eq i32 %486, 2
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %10, align 1, !tbaa !2449
  %.v25 = select i1 %480, i64 38, i64 58
  %489 = add i64 %816, %.v25
  store i64 %489, i64* %11, align 8, !tbaa !2428
  %.pre13 = load i64, i64* %RBP, align 8
  br i1 %480, label %block_40083f, label %block_400853

block_400718:                                     ; preds = %block_4006ee
  %490 = load i64, i64* %RBP, align 8
  %491 = add i64 %490, -80
  %492 = add i64 %424, 4
  store i64 %492, i64* %PC, align 8
  %493 = inttoptr i64 %491 to i64*
  %494 = load i64, i64* %493, align 8
  store i64 %494, i64* %RAX, align 8, !tbaa !2428
  %495 = shl i64 %494, 3
  %496 = add i64 %495, add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 8)
  %497 = add i64 %424, 12
  store i64 %497, i64* %PC, align 8
  %498 = inttoptr i64 %496 to i64*
  %499 = load i64, i64* %498, align 8
  store i64 %499, i64* %RCX, align 8, !tbaa !2428
  store i64 %499, i64* %11, align 8, !tbaa !2428
  switch i64 %499, label %817 [
    i64 4196162, label %block_400742
    i64 4196176, label %block_400750
    i64 4196148, label %block_400734
    i64 4196190, label %block_40075e
    i64 4196134, label %block_400726
  ]

block_400897:                                     ; preds = %block_40086b, %block_40085f.block_400897_crit_edge
  %.pre-phi18 = phi i32* [ %.pre17, %block_40085f.block_400897_crit_edge ], [ %746, %block_40086b ]
  %500 = phi i64 [ %641, %block_40085f.block_400897_crit_edge ], [ %772, %block_40086b ]
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %501 = add i64 %500, 14
  store i64 %501, i64* %PC, align 8
  %502 = load i32, i32* %.pre-phi18, align 4
  %503 = sext i32 %502 to i64
  %504 = mul nsw i64 %503, 11
  store i64 %504, i64* %RCX, align 8, !tbaa !2428
  %505 = lshr i64 %504, 63
  %506 = add i64 %504, ptrtoint (%maze_type* @maze to i64)
  store i64 %506, i64* %RAX, align 8, !tbaa !2428
  %507 = icmp ult i64 %506, ptrtoint (%maze_type* @maze to i64)
  %508 = icmp ult i64 %506, %504
  %509 = or i1 %507, %508
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %5, align 1, !tbaa !2432
  %511 = trunc i64 %506 to i32
  %512 = and i32 %511, 255
  %513 = tail call i32 @llvm.ctpop.i32(i32 %512) #8
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = xor i8 %515, 1
  store i8 %516, i8* %6, align 1, !tbaa !2446
  %517 = xor i64 %504, ptrtoint (%maze_type* @maze to i64)
  %518 = xor i64 %517, %506
  %519 = lshr i64 %518, 4
  %520 = trunc i64 %519 to i8
  %521 = and i8 %520, 1
  store i8 %521, i8* %7, align 1, !tbaa !2450
  %522 = icmp eq i64 %506, 0
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %8, align 1, !tbaa !2447
  %524 = lshr i64 %506, 63
  %525 = trunc i64 %524 to i8
  store i8 %525, i8* %9, align 1, !tbaa !2448
  %526 = xor i64 %524, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %527 = xor i64 %524, %505
  %528 = add nuw nsw i64 %526, %527
  %529 = icmp eq i64 %528, 2
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %10, align 1, !tbaa !2449
  %531 = add i64 %500, 25
  store i64 %531, i64* %PC, align 8
  %532 = load i32, i32* %615, align 4
  %533 = sext i32 %532 to i64
  store i64 %533, i64* %RCX, align 8, !tbaa !2428
  %534 = add i64 %533, %506
  %535 = add i64 %500, 29
  store i64 %535, i64* %PC, align 8
  %536 = inttoptr i64 %534 to i8*
  store i8 88, i8* %536, align 1
  %537 = load i64, i64* %PC, align 8
  %538 = add i64 %537, -740
  %539 = add i64 %537, 5
  %540 = load i64, i64* %12, align 8, !tbaa !2428
  %541 = add i64 %540, -8
  %542 = inttoptr i64 %541 to i64*
  store i64 %539, i64* %542, align 8
  store i64 %541, i64* %12, align 8, !tbaa !2428
  store i64 %538, i64* %11, align 8, !tbaa !2428
  %543 = tail call %struct.Memory* @sub_4005d0_draw_renamed_(%struct.State* nonnull %0, i64 %538, %struct.Memory* %MEMORY.6)
  %544 = load i64, i64* %RBP, align 8
  %545 = add i64 %544, -36
  %546 = load i64, i64* %PC, align 8
  %547 = add i64 %546, 3
  store i64 %547, i64* %PC, align 8
  %548 = inttoptr i64 %545 to i32*
  %549 = load i32, i32* %548, align 4
  %550 = add i32 %549, 1
  %551 = zext i32 %550 to i64
  store i64 %551, i64* %RDX, align 8, !tbaa !2428
  %552 = icmp eq i32 %549, -1
  %553 = icmp eq i32 %550, 0
  %554 = or i1 %552, %553
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %5, align 1, !tbaa !2432
  %556 = and i32 %550, 255
  %557 = tail call i32 @llvm.ctpop.i32(i32 %556) #8
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  %560 = xor i8 %559, 1
  store i8 %560, i8* %6, align 1, !tbaa !2446
  %561 = xor i32 %549, %550
  %562 = lshr i32 %561, 4
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  store i8 %564, i8* %7, align 1, !tbaa !2450
  %565 = icmp eq i32 %550, 0
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %8, align 1, !tbaa !2447
  %567 = lshr i32 %550, 31
  %568 = trunc i32 %567 to i8
  store i8 %568, i8* %9, align 1, !tbaa !2448
  %569 = lshr i32 %549, 31
  %570 = xor i32 %567, %569
  %571 = add nuw nsw i32 %570, %567
  %572 = icmp eq i32 %571, 2
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %10, align 1, !tbaa !2449
  %574 = add i64 %546, 9
  store i64 %574, i64* %PC, align 8
  store i32 %550, i32* %548, align 4
  %575 = load i64, i64* %PC, align 8
  %576 = load i64, i64* %RBP, align 8
  %577 = add i64 %576, -36
  %578 = add i64 %575, -474
  store i64 %578, i64* %PC, align 8
  %579 = inttoptr i64 %577 to i32*
  %580 = load i32, i32* %579, align 4
  %581 = add i32 %580, -28
  %582 = icmp ult i32 %580, 28
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %5, align 1, !tbaa !2432
  %584 = and i32 %581, 255
  %585 = tail call i32 @llvm.ctpop.i32(i32 %584) #8
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  %588 = xor i8 %587, 1
  store i8 %588, i8* %6, align 1, !tbaa !2446
  %589 = xor i32 %580, 16
  %590 = xor i32 %589, %581
  %591 = lshr i32 %590, 4
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  store i8 %593, i8* %7, align 1, !tbaa !2450
  %594 = icmp eq i32 %581, 0
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %8, align 1, !tbaa !2447
  %596 = lshr i32 %581, 31
  %597 = trunc i32 %596 to i8
  store i8 %597, i8* %9, align 1, !tbaa !2448
  %598 = lshr i32 %580, 31
  %599 = xor i32 %596, %598
  %600 = add nuw nsw i32 %599, %598
  %601 = icmp eq i32 %600, 2
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %10, align 1, !tbaa !2449
  %603 = icmp ne i8 %597, 0
  %604 = xor i1 %603, %601
  %.v30 = select i1 %604, i64 -468, i64 5
  %605 = add i64 %575, %.v30
  store i64 %605, i64* %11, align 8, !tbaa !2428
  br i1 %604, label %block_4006ee, label %block_4008c7

block_40085f:                                     ; preds = %block_400849, %block_400853, %block_4007e9
  %606 = phi i64 [ %245, %block_400849 ], [ %.pre14, %block_400853 ], [ %79, %block_4007e9 ]
  %607 = load i64, i64* %RBP, align 8
  %608 = add i64 %607, -28
  %609 = add i64 %606, 3
  store i64 %609, i64* %PC, align 8
  %610 = inttoptr i64 %608 to i32*
  %611 = load i32, i32* %610, align 4
  %612 = zext i32 %611 to i64
  store i64 %612, i64* %RAX, align 8, !tbaa !2428
  %613 = add i64 %607, -20
  %614 = add i64 %606, 6
  store i64 %614, i64* %PC, align 8
  %615 = inttoptr i64 %613 to i32*
  %616 = load i32, i32* %615, align 4
  %617 = sub i32 %611, %616
  %618 = icmp ult i32 %611, %616
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %5, align 1, !tbaa !2432
  %620 = and i32 %617, 255
  %621 = tail call i32 @llvm.ctpop.i32(i32 %620) #8
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  %624 = xor i8 %623, 1
  store i8 %624, i8* %6, align 1, !tbaa !2446
  %625 = xor i32 %616, %611
  %626 = xor i32 %625, %617
  %627 = lshr i32 %626, 4
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  store i8 %629, i8* %7, align 1, !tbaa !2450
  %630 = icmp eq i32 %617, 0
  %631 = zext i1 %630 to i8
  store i8 %631, i8* %8, align 1, !tbaa !2447
  %632 = lshr i32 %617, 31
  %633 = trunc i32 %632 to i8
  store i8 %633, i8* %9, align 1, !tbaa !2448
  %634 = lshr i32 %611, 31
  %635 = lshr i32 %616, 31
  %636 = xor i32 %635, %634
  %637 = xor i32 %632, %634
  %638 = add nuw nsw i32 %637, %636
  %639 = icmp eq i32 %638, 2
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %10, align 1, !tbaa !2449
  %.v28 = select i1 %630, i64 12, i64 56
  %641 = add i64 %606, %.v28
  store i64 %641, i64* %11, align 8, !tbaa !2428
  br i1 %630, label %block_40086b, label %block_40085f.block_400897_crit_edge

block_40085f.block_400897_crit_edge:              ; preds = %block_40085f
  %.pre16 = add i64 %607, -24
  %.pre17 = inttoptr i64 %.pre16 to i32*
  br label %block_400897

block_400734:                                     ; preds = %block_400718
  %642 = add i64 %490, -24
  store i64 4196151, i64* %PC, align 8
  %643 = inttoptr i64 %642 to i32*
  %644 = load i32, i32* %643, align 4
  %645 = add i32 %644, 1
  %646 = zext i32 %645 to i64
  store i64 %646, i64* %RAX, align 8, !tbaa !2428
  %647 = icmp eq i32 %644, -1
  %648 = icmp eq i32 %645, 0
  %649 = or i1 %647, %648
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %5, align 1, !tbaa !2432
  %651 = and i32 %645, 255
  %652 = tail call i32 @llvm.ctpop.i32(i32 %651) #8
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  %655 = xor i8 %654, 1
  store i8 %655, i8* %6, align 1, !tbaa !2446
  %656 = xor i32 %644, %645
  %657 = lshr i32 %656, 4
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  store i8 %659, i8* %7, align 1, !tbaa !2450
  %660 = icmp eq i32 %645, 0
  %661 = zext i1 %660 to i8
  store i8 %661, i8* %8, align 1, !tbaa !2447
  %662 = lshr i32 %645, 31
  %663 = trunc i32 %662 to i8
  store i8 %663, i8* %9, align 1, !tbaa !2448
  %664 = lshr i32 %644, 31
  %665 = xor i32 %662, %664
  %666 = add nuw nsw i32 %665, %662
  %667 = icmp eq i32 %666, 2
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %10, align 1, !tbaa !2449
  store i64 4196157, i64* %PC, align 8
  store i32 %645, i32* %643, align 4
  br label %block_400790

block_400790:                                     ; preds = %block_400734, %block_400726, %block_400750, %block_400742
  %.sink22 = phi i64 [ 83, %block_400734 ], [ 97, %block_400726 ], [ 55, %block_400750 ], [ 69, %block_400742 ]
  %MEMORY.6 = phi %struct.Memory* [ %543, %block_400734 ], [ %543, %block_400726 ], [ %543, %block_400750 ], [ %MEMORY.3, %block_400742 ]
  %669 = load i64, i64* %PC, align 8
  %670 = add i64 %669, %.sink22
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %671 = load i64, i64* %RBP, align 8
  %672 = add i64 %671, -24
  %673 = add i64 %670, 14
  store i64 %673, i64* %PC, align 8
  %674 = inttoptr i64 %672 to i32*
  %675 = load i32, i32* %674, align 4
  %676 = sext i32 %675 to i64
  %677 = mul nsw i64 %676, 11
  store i64 %677, i64* %RCX, align 8, !tbaa !2428
  %678 = lshr i64 %677, 63
  %679 = add i64 %677, ptrtoint (%maze_type* @maze to i64)
  store i64 %679, i64* %RAX, align 8, !tbaa !2428
  %680 = icmp ult i64 %679, ptrtoint (%maze_type* @maze to i64)
  %681 = icmp ult i64 %679, %677
  %682 = or i1 %680, %681
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %5, align 1, !tbaa !2432
  %684 = trunc i64 %679 to i32
  %685 = and i32 %684, 255
  %686 = tail call i32 @llvm.ctpop.i32(i32 %685) #8
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  %689 = xor i8 %688, 1
  store i8 %689, i8* %6, align 1, !tbaa !2446
  %690 = xor i64 %677, ptrtoint (%maze_type* @maze to i64)
  %691 = xor i64 %690, %679
  %692 = lshr i64 %691, 4
  %693 = trunc i64 %692 to i8
  %694 = and i8 %693, 1
  store i8 %694, i8* %7, align 1, !tbaa !2450
  %695 = icmp eq i64 %679, 0
  %696 = zext i1 %695 to i8
  store i8 %696, i8* %8, align 1, !tbaa !2447
  %697 = lshr i64 %679, 63
  %698 = trunc i64 %697 to i8
  store i8 %698, i8* %9, align 1, !tbaa !2448
  %699 = xor i64 %697, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %700 = xor i64 %697, %678
  %701 = add nuw nsw i64 %699, %700
  %702 = icmp eq i64 %701, 2
  %703 = zext i1 %702 to i8
  store i8 %703, i8* %10, align 1, !tbaa !2449
  %704 = add i64 %671, -20
  %705 = add i64 %670, 25
  store i64 %705, i64* %PC, align 8
  %706 = inttoptr i64 %704 to i32*
  %707 = load i32, i32* %706, align 4
  %708 = sext i32 %707 to i64
  store i64 %708, i64* %RCX, align 8, !tbaa !2428
  %709 = add i64 %708, %679
  %710 = add i64 %670, 29
  store i64 %710, i64* %PC, align 8
  %711 = inttoptr i64 %709 to i8*
  %712 = load i8, i8* %711, align 1
  %713 = sext i8 %712 to i64
  %714 = and i64 %713, 4294967295
  store i64 %714, i64* %RDX, align 8, !tbaa !2428
  %715 = sext i8 %712 to i32
  %716 = add nsw i32 %715, -35
  %717 = icmp ult i8 %712, 35
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %5, align 1, !tbaa !2432
  %719 = and i32 %716, 255
  %720 = tail call i32 @llvm.ctpop.i32(i32 %719) #8
  %721 = trunc i32 %720 to i8
  %722 = and i8 %721, 1
  %723 = xor i8 %722, 1
  store i8 %723, i8* %6, align 1, !tbaa !2446
  %724 = xor i32 %715, %716
  %725 = lshr i32 %724, 4
  %726 = trunc i32 %725 to i8
  %727 = and i8 %726, 1
  store i8 %727, i8* %7, align 1, !tbaa !2450
  %728 = icmp eq i32 %716, 0
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %8, align 1, !tbaa !2447
  %730 = lshr i32 %716, 31
  %731 = trunc i32 %730 to i8
  store i8 %731, i8* %9, align 1, !tbaa !2448
  %732 = lshr i32 %715, 31
  %733 = xor i32 %730, %732
  %734 = add nuw nsw i32 %733, %732
  %735 = icmp eq i32 %734, 2
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %10, align 1, !tbaa !2449
  %.v = select i1 %728, i64 38, i64 89
  %737 = add i64 %670, %.v
  %738 = add i64 %737, 10
  store i64 %738, i64* %PC, align 8
  br i1 %728, label %block_4007b6, label %block_4007e9

block_40086b:                                     ; preds = %block_40085f
  %739 = add i64 %607, -32
  %740 = add i64 %641, 3
  store i64 %740, i64* %PC, align 8
  %741 = inttoptr i64 %739 to i32*
  %742 = load i32, i32* %741, align 4
  %743 = zext i32 %742 to i64
  store i64 %743, i64* %RAX, align 8, !tbaa !2428
  %744 = add i64 %607, -24
  %745 = add i64 %641, 6
  store i64 %745, i64* %PC, align 8
  %746 = inttoptr i64 %744 to i32*
  %747 = load i32, i32* %746, align 4
  %748 = sub i32 %742, %747
  %749 = icmp ult i32 %742, %747
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %5, align 1, !tbaa !2432
  %751 = and i32 %748, 255
  %752 = tail call i32 @llvm.ctpop.i32(i32 %751) #8
  %753 = trunc i32 %752 to i8
  %754 = and i8 %753, 1
  %755 = xor i8 %754, 1
  store i8 %755, i8* %6, align 1, !tbaa !2446
  %756 = xor i32 %747, %742
  %757 = xor i32 %756, %748
  %758 = lshr i32 %757, 4
  %759 = trunc i32 %758 to i8
  %760 = and i8 %759, 1
  store i8 %760, i8* %7, align 1, !tbaa !2450
  %761 = icmp eq i32 %748, 0
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %8, align 1, !tbaa !2447
  %763 = lshr i32 %748, 31
  %764 = trunc i32 %763 to i8
  store i8 %764, i8* %9, align 1, !tbaa !2448
  %765 = lshr i32 %742, 31
  %766 = lshr i32 %747, 31
  %767 = xor i32 %766, %765
  %768 = xor i32 %763, %765
  %769 = add nuw nsw i32 %768, %767
  %770 = icmp eq i32 %769, 2
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %10, align 1, !tbaa !2449
  %.v29 = select i1 %761, i64 12, i64 44
  %772 = add i64 %641, %.v29
  store i64 %772, i64* %11, align 8, !tbaa !2428
  br i1 %761, label %block_400877, label %block_400897

block_4008c7:                                     ; preds = %block_400897
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %773 = add i64 %605, -1047
  %774 = add i64 %605, 17
  %775 = load i64, i64* %12, align 8, !tbaa !2428
  %776 = add i64 %775, -8
  %777 = inttoptr i64 %776 to i64*
  store i64 %774, i64* %777, align 8
  store i64 %776, i64* %12, align 8, !tbaa !2428
  store i64 %773, i64* %11, align 8, !tbaa !2428
  %778 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %543)
  %779 = load i64, i64* %RBP, align 8
  %780 = add i64 %779, -4
  %781 = load i64, i64* %PC, align 8
  %782 = add i64 %781, 7
  store i64 %782, i64* %PC, align 8
  %783 = inttoptr i64 %780 to i32*
  store i32 1, i32* %783, align 4
  %784 = load i64, i64* %RBP, align 8
  %785 = add i64 %784, -108
  %786 = load i32, i32* %EAX, align 4
  %787 = load i64, i64* %PC, align 8
  %788 = add i64 %787, 3
  store i64 %788, i64* %PC, align 8
  %789 = inttoptr i64 %785 to i32*
  store i32 %786, i32* %789, align 4
  %.pre15 = load i64, i64* %PC, align 8
  br label %block_4008e2

block_40080f:                                     ; preds = %block_4007e9
  %790 = load i64, i64* %RBP, align 8
  %791 = add i64 %790, -24
  %792 = add i64 %79, 4
  store i64 %792, i64* %PC, align 8
  %793 = inttoptr i64 %791 to i32*
  %794 = load i32, i32* %793, align 4
  %795 = add i32 %794, -2
  %796 = icmp ult i32 %794, 2
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %5, align 1, !tbaa !2432
  %798 = and i32 %795, 255
  %799 = tail call i32 @llvm.ctpop.i32(i32 %798) #8
  %800 = trunc i32 %799 to i8
  %801 = and i8 %800, 1
  %802 = xor i8 %801, 1
  store i8 %802, i8* %6, align 1, !tbaa !2446
  %803 = xor i32 %794, %795
  %804 = lshr i32 %803, 4
  %805 = trunc i32 %804 to i8
  %806 = and i8 %805, 1
  store i8 %806, i8* %7, align 1, !tbaa !2450
  %807 = icmp eq i32 %795, 0
  %808 = zext i1 %807 to i8
  store i8 %808, i8* %8, align 1, !tbaa !2447
  %809 = lshr i32 %795, 31
  %810 = trunc i32 %809 to i8
  store i8 %810, i8* %9, align 1, !tbaa !2448
  %811 = lshr i32 %794, 31
  %812 = xor i32 %809, %811
  %813 = add nuw nsw i32 %812, %811
  %814 = icmp eq i32 %813, 2
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %10, align 1, !tbaa !2449
  %.v24 = select i1 %807, i64 10, i64 68
  %816 = add i64 %79, %.v24
  store i64 %816, i64* %11, align 8, !tbaa !2428
  br i1 %807, label %block_400819, label %block_400853

; <label>:817:                                    ; preds = %block_400718
  %818 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %499, %struct.Memory* %543)
  ret %struct.Memory* %818
}

; Function Attrs: noinline
define %struct.Memory* @sub_400590___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400590:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i64 0, i32 0, i64 0), align 8
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
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %12, i64 9, i64 32
  %19 = add i64 %.v, %1
  store i64 %19, i64* %18, align 8, !tbaa !2428
  br i1 %12, label %block_400599, label %block_4005b0

block_4005b0:                                     ; preds = %block_400590
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

block_400599:                                     ; preds = %block_400590
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
  %37 = tail call %struct.Memory* @sub_400520_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %33, %struct.Memory* %2)
  %38 = load i64, i64* %PC, align 8
  store i8 1, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i64 0, i32 0, i64 0), align 8
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
define %struct.Memory* @sub_400480__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400480:
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
  %11 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_600ff0__got_type* @seg_600ff0__got to i64), i64 8) to i64*), align 8
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
  store i8 %19, i8* %8, align 1, !tbaa !2447
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !2448
  store i8 0, i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %7, align 1, !tbaa !2450
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %18, i64 18, i64 16
  %23 = add i64 %.v, %1
  store i64 %23, i64* %22, align 8, !tbaa !2428
  br i1 %18, label %block_400480.block_400492_crit_edge, label %block_400490

block_400480.block_400492_crit_edge:              ; preds = %block_400480
  %.pre2 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  br label %block_400492

block_400490:                                     ; preds = %block_400480
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
  br label %block_400492

block_400492:                                     ; preds = %block_400480.block_400492_crit_edge, %block_400490
  %.pre-phi = phi i64* [ %.pre2, %block_400480.block_400492_crit_edge ], [ %25, %block_400490 ]
  %29 = phi i64 [ %23, %block_400480.block_400492_crit_edge ], [ %.pre1, %block_400490 ]
  %30 = phi i64 [ %4, %block_400480.block_400492_crit_edge ], [ %.pre, %block_400490 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400480.block_400492_crit_edge ], [ %28, %block_400490 ]
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
  store i8 %43, i8* %7, align 1, !tbaa !2450
  %44 = icmp eq i64 %31, 0
  %45 = zext i1 %44 to i8
  store i8 %45, i8* %8, align 1, !tbaa !2447
  %46 = lshr i64 %31, 63
  %47 = trunc i64 %46 to i8
  store i8 %47, i8* %9, align 1, !tbaa !2448
  %48 = lshr i64 %30, 63
  %49 = xor i64 %46, %48
  %50 = add nuw nsw i64 %49, %46
  %51 = icmp eq i64 %50, 2
  %52 = zext i1 %51 to i8
  store i8 %52, i8* %10, align 1, !tbaa !2449
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
define %struct.Memory* @sub_40075e(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_40075e:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 195), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %4 = add i64 %1, -686
  %5 = add i64 %1, 17
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !2428
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8, !tbaa !2428
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8, !tbaa !2428
  %11 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %2)
  %12 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 235), i64* %RDI, align 8, !tbaa !2428
  %13 = load i64, i64* %RBP, align 8
  %14 = add i64 %13, -88
  %15 = load i32, i32* %EAX, align 4
  %16 = add i64 %12, 13
  store i64 %16, i64* %PC, align 8
  %17 = inttoptr i64 %14 to i32*
  store i32 %15, i32* %17, align 4
  %18 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %19 = add i64 %18, -716
  %20 = add i64 %18, 7
  %21 = load i64, i64* %6, align 8, !tbaa !2428
  %22 = add i64 %21, -8
  %23 = inttoptr i64 %22 to i64*
  store i64 %20, i64* %23, align 8
  store i64 %22, i64* %6, align 8, !tbaa !2428
  store i64 %19, i64* %10, align 8, !tbaa !2428
  %24 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %11)
  %25 = load i64, i64* %PC, align 8
  store i64 4294967295, i64* %RDI, align 8, !tbaa !2428
  %26 = load i64, i64* %RBP, align 8
  %27 = add i64 %26, -92
  %28 = load i32, i32* %EAX, align 4
  %29 = add i64 %25, 8
  store i64 %29, i64* %PC, align 8
  %30 = inttoptr i64 %27 to i32*
  store i32 %28, i32* %30, align 4
  %31 = load i64, i64* %PC, align 8
  %32 = add i64 %31, -699
  %33 = add i64 %31, 5
  %34 = load i64, i64* %6, align 8, !tbaa !2428
  %35 = add i64 %34, -8
  %36 = inttoptr i64 %35 to i64*
  store i64 %33, i64* %36, align 8
  store i64 %35, i64* %6, align 8, !tbaa !2428
  store i64 %32, i64* %10, align 8, !tbaa !2428
  %37 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %24)
  %38 = load i64, i64* %PC, align 8
  %39 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %38, %struct.Memory* %37)
  ret %struct.Memory* %39
}

; Function Attrs: noinline
define %struct.Memory* @sub_400750(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %4 to i8*
  %EAX = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %.pre = load i64, i64* %RBP, align 8
  %phitmp = add i64 %1, 3
  br label %block_400750

block_40083f:                                     ; preds = %block_400819
  %13 = add i64 %.pre19, -20
  %14 = add i64 %432, 4
  store i64 %14, i64* %PC, align 8
  %15 = inttoptr i64 %13 to i32*
  %16 = load i32, i32* %15, align 4
  store i8 0, i8* %5, align 1, !tbaa !2432
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #8
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  store i8 %21, i8* %6, align 1, !tbaa !2446
  store i8 0, i8* %7, align 1, !tbaa !2450
  %22 = icmp eq i32 %16, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %8, align 1, !tbaa !2447
  %24 = lshr i32 %16, 31
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %9, align 1, !tbaa !2448
  store i8 0, i8* %10, align 1, !tbaa !2449
  %26 = icmp ne i8 %25, 0
  %27 = or i1 %22, %26
  %.v32 = select i1 %27, i64 20, i64 10
  %28 = add i64 %432, %.v32
  store i64 %28, i64* %11, align 8, !tbaa !2428
  br i1 %27, label %block_400853, label %block_400849

block_40075e:                                     ; preds = %block_4006ee, %block_400718
  %29 = phi i64 [ %503, %block_4006ee ], [ 4196190, %block_400718 ]
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 195), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %30 = add i64 %29, -686
  %31 = add i64 %29, 17
  %32 = load i64, i64* %12, align 8, !tbaa !2428
  %33 = add i64 %32, -8
  %34 = inttoptr i64 %33 to i64*
  store i64 %31, i64* %34, align 8
  store i64 %33, i64* %12, align 8, !tbaa !2428
  store i64 %30, i64* %11, align 8, !tbaa !2428
  %35 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %117)
  %36 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 235), i64* %RDI, align 8, !tbaa !2428
  %37 = load i64, i64* %RBP, align 8
  %38 = add i64 %37, -88
  %39 = load i32, i32* %EAX, align 4
  %40 = add i64 %36, 13
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %38 to i32*
  store i32 %39, i32* %41, align 4
  %42 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %43 = add i64 %42, -716
  %44 = add i64 %42, 7
  %45 = load i64, i64* %12, align 8, !tbaa !2428
  %46 = add i64 %45, -8
  %47 = inttoptr i64 %46 to i64*
  store i64 %44, i64* %47, align 8
  store i64 %46, i64* %12, align 8, !tbaa !2428
  store i64 %43, i64* %11, align 8, !tbaa !2428
  %48 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %35)
  %49 = load i64, i64* %PC, align 8
  store i64 4294967295, i64* %RDI, align 8, !tbaa !2428
  %50 = load i64, i64* %RBP, align 8
  %51 = add i64 %50, -92
  %52 = load i32, i32* %EAX, align 4
  %53 = add i64 %49, 8
  store i64 %53, i64* %PC, align 8
  %54 = inttoptr i64 %51 to i32*
  store i32 %52, i32* %54, align 4
  %55 = load i64, i64* %PC, align 8
  %56 = add i64 %55, -699
  %57 = add i64 %55, 5
  %58 = load i64, i64* %12, align 8, !tbaa !2428
  %59 = add i64 %58, -8
  %60 = inttoptr i64 %59 to i64*
  store i64 %57, i64* %60, align 8
  store i64 %59, i64* %12, align 8, !tbaa !2428
  store i64 %56, i64* %11, align 8, !tbaa !2428
  %61 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %48)
  %62 = load i64, i64* %PC, align 8
  %63 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %62, %struct.Memory* %61)
  ret %struct.Memory* %63

block_400718:                                     ; preds = %block_4006ee
  %64 = load i64, i64* %RBP, align 8
  %65 = add i64 %64, -80
  %66 = add i64 %503, 4
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %65 to i64*
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %RAX, align 8, !tbaa !2428
  %69 = shl i64 %68, 3
  %70 = add i64 %69, add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 8)
  %71 = add i64 %503, 12
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %70 to i64*
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %RCX, align 8, !tbaa !2428
  store i64 %73, i64* %11, align 8, !tbaa !2428
  switch i64 %73, label %765 [
    i64 4196162, label %block_400742
    i64 4196176, label %block_400750
    i64 4196148, label %block_400734
    i64 4196190, label %block_40075e
    i64 4196134, label %block_400726
  ]

block_400897:                                     ; preds = %block_40086b, %block_40085f.block_400897_crit_edge
  %.pre-phi24 = phi i32* [ %.pre23, %block_40085f.block_400897_crit_edge ], [ %650, %block_40086b ]
  %74 = phi i64 [ %270, %block_40085f.block_400897_crit_edge ], [ %676, %block_40086b ]
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %75 = add i64 %74, 14
  store i64 %75, i64* %PC, align 8
  %76 = load i32, i32* %.pre-phi24, align 4
  %77 = sext i32 %76 to i64
  %78 = mul nsw i64 %77, 11
  store i64 %78, i64* %RCX, align 8, !tbaa !2428
  %79 = lshr i64 %78, 63
  %80 = add i64 %78, ptrtoint (%maze_type* @maze to i64)
  store i64 %80, i64* %RAX, align 8, !tbaa !2428
  %81 = icmp ult i64 %80, ptrtoint (%maze_type* @maze to i64)
  %82 = icmp ult i64 %80, %78
  %83 = or i1 %81, %82
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %5, align 1, !tbaa !2432
  %85 = trunc i64 %80 to i32
  %86 = and i32 %85, 255
  %87 = tail call i32 @llvm.ctpop.i32(i32 %86) #8
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  %90 = xor i8 %89, 1
  store i8 %90, i8* %6, align 1, !tbaa !2446
  %91 = xor i64 %78, ptrtoint (%maze_type* @maze to i64)
  %92 = xor i64 %91, %80
  %93 = lshr i64 %92, 4
  %94 = trunc i64 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %7, align 1, !tbaa !2450
  %96 = icmp eq i64 %80, 0
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %8, align 1, !tbaa !2447
  %98 = lshr i64 %80, 63
  %99 = trunc i64 %98 to i8
  store i8 %99, i8* %9, align 1, !tbaa !2448
  %100 = xor i64 %98, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %101 = xor i64 %98, %79
  %102 = add nuw nsw i64 %100, %101
  %103 = icmp eq i64 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %10, align 1, !tbaa !2449
  %105 = add i64 %74, 25
  store i64 %105, i64* %PC, align 8
  %106 = load i32, i32* %244, align 4
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %RCX, align 8, !tbaa !2428
  %108 = add i64 %107, %80
  %109 = add i64 %74, 29
  store i64 %109, i64* %PC, align 8
  %110 = inttoptr i64 %108 to i8*
  store i8 88, i8* %110, align 1
  %111 = load i64, i64* %PC, align 8
  %112 = add i64 %111, -740
  %113 = add i64 %111, 5
  %114 = load i64, i64* %12, align 8, !tbaa !2428
  %115 = add i64 %114, -8
  %116 = inttoptr i64 %115 to i64*
  store i64 %113, i64* %116, align 8
  store i64 %115, i64* %12, align 8, !tbaa !2428
  store i64 %112, i64* %11, align 8, !tbaa !2428
  %117 = tail call %struct.Memory* @sub_4005d0_draw_renamed_(%struct.State* nonnull %0, i64 %112, %struct.Memory* %MEMORY.4)
  %118 = load i64, i64* %RBP, align 8
  %119 = add i64 %118, -36
  %120 = load i64, i64* %PC, align 8
  %121 = add i64 %120, 3
  store i64 %121, i64* %PC, align 8
  %122 = inttoptr i64 %119 to i32*
  %123 = load i32, i32* %122, align 4
  %124 = add i32 %123, 1
  %125 = zext i32 %124 to i64
  store i64 %125, i64* %RDX, align 8, !tbaa !2428
  %126 = icmp eq i32 %123, -1
  %127 = icmp eq i32 %124, 0
  %128 = or i1 %126, %127
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %5, align 1, !tbaa !2432
  %130 = and i32 %124, 255
  %131 = tail call i32 @llvm.ctpop.i32(i32 %130) #8
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  store i8 %134, i8* %6, align 1, !tbaa !2446
  %135 = xor i32 %123, %124
  %136 = lshr i32 %135, 4
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  store i8 %138, i8* %7, align 1, !tbaa !2450
  %139 = icmp eq i32 %124, 0
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %8, align 1, !tbaa !2447
  %141 = lshr i32 %124, 31
  %142 = trunc i32 %141 to i8
  store i8 %142, i8* %9, align 1, !tbaa !2448
  %143 = lshr i32 %123, 31
  %144 = xor i32 %141, %143
  %145 = add nuw nsw i32 %144, %141
  %146 = icmp eq i32 %145, 2
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %10, align 1, !tbaa !2449
  %148 = add i64 %120, 9
  store i64 %148, i64* %PC, align 8
  store i32 %124, i32* %122, align 4
  %149 = load i64, i64* %PC, align 8
  %150 = load i64, i64* %RBP, align 8
  %151 = add i64 %150, -36
  %152 = add i64 %149, -474
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %151 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = add i32 %154, -28
  %156 = icmp ult i32 %154, 28
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %5, align 1, !tbaa !2432
  %158 = and i32 %155, 255
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158) #8
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  store i8 %162, i8* %6, align 1, !tbaa !2446
  %163 = xor i32 %154, 16
  %164 = xor i32 %163, %155
  %165 = lshr i32 %164, 4
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  store i8 %167, i8* %7, align 1, !tbaa !2450
  %168 = icmp eq i32 %155, 0
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %8, align 1, !tbaa !2447
  %170 = lshr i32 %155, 31
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %9, align 1, !tbaa !2448
  %172 = lshr i32 %154, 31
  %173 = xor i32 %170, %172
  %174 = add nuw nsw i32 %173, %172
  %175 = icmp eq i32 %174, 2
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %10, align 1, !tbaa !2449
  %177 = icmp ne i8 %171, 0
  %178 = xor i1 %177, %175
  %.v36 = select i1 %178, i64 -468, i64 5
  %179 = add i64 %149, %.v36
  store i64 %179, i64* %11, align 8, !tbaa !2428
  br i1 %178, label %block_4006ee, label %block_4008c7

block_4007b6:                                     ; preds = %block_400790
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %180 = add i64 %366, -774
  %181 = add i64 %366, 17
  %182 = load i64, i64* %12, align 8, !tbaa !2428
  %183 = add i64 %182, -8
  %184 = inttoptr i64 %183 to i64*
  store i64 %181, i64* %184, align 8
  store i64 %183, i64* %12, align 8, !tbaa !2428
  store i64 %180, i64* %11, align 8, !tbaa !2428
  %185 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %186 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2428
  %187 = load i64, i64* %RBP, align 8
  %188 = add i64 %187, -64
  store i64 %188, i64* %RSI, align 8, !tbaa !2428
  %189 = add i64 %187, -96
  %190 = load i32, i32* %EAX, align 4
  %191 = add i64 %186, 17
  store i64 %191, i64* %PC, align 8
  %192 = inttoptr i64 %189 to i32*
  store i32 %190, i32* %192, align 4
  %193 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %194 = add i64 %193, -808
  %195 = add i64 %193, 7
  %196 = load i64, i64* %12, align 8, !tbaa !2428
  %197 = add i64 %196, -8
  %198 = inttoptr i64 %197 to i64*
  store i64 %195, i64* %198, align 8
  store i64 %197, i64* %12, align 8, !tbaa !2428
  store i64 %194, i64* %11, align 8, !tbaa !2428
  %199 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %185)
  %200 = load i64, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %5, align 1, !tbaa !2432
  store i8 1, i8* %6, align 1, !tbaa !2446
  store i8 1, i8* %8, align 1, !tbaa !2447
  store i8 0, i8* %9, align 1, !tbaa !2448
  store i8 0, i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %7, align 1, !tbaa !2450
  %201 = load i64, i64* %RBP, align 8
  %202 = add i64 %201, -100
  %203 = load i32, i32* %EAX, align 4
  %204 = add i64 %200, 5
  store i64 %204, i64* %PC, align 8
  %205 = inttoptr i64 %202 to i32*
  store i32 %203, i32* %205, align 4
  %206 = load i64, i64* %PC, align 8
  %207 = add i64 %206, -788
  %208 = add i64 %206, 5
  %209 = load i64, i64* %12, align 8, !tbaa !2428
  %210 = add i64 %209, -8
  %211 = inttoptr i64 %210 to i64*
  store i64 %208, i64* %211, align 8
  store i64 %210, i64* %12, align 8, !tbaa !2428
  store i64 %207, i64* %11, align 8, !tbaa !2428
  %212 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %199)
  %213 = load i64, i64* %PC, align 8
  %214 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %213, %struct.Memory* %212)
  ret %struct.Memory* %214

block_400853:                                     ; preds = %block_400819, %block_40080f, %block_400849, %block_40083f
  %215 = phi i64 [ %642, %block_40080f ], [ %548, %block_400849 ], [ %28, %block_40083f ], [ %432, %block_400819 ]
  %216 = phi i64 [ %616, %block_40080f ], [ %.pre19, %block_400849 ], [ %.pre19, %block_40083f ], [ %.pre19, %block_400819 ]
  %217 = add i64 %216, -28
  %218 = add i64 %215, 3
  store i64 %218, i64* %PC, align 8
  %219 = inttoptr i64 %217 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = zext i32 %220 to i64
  store i64 %221, i64* %RAX, align 8, !tbaa !2428
  %222 = add i64 %216, -20
  %223 = add i64 %215, 6
  store i64 %223, i64* %PC, align 8
  %224 = inttoptr i64 %222 to i32*
  store i32 %220, i32* %224, align 4
  %225 = load i64, i64* %RBP, align 8
  %226 = add i64 %225, -32
  %227 = load i64, i64* %PC, align 8
  %228 = add i64 %227, 3
  store i64 %228, i64* %PC, align 8
  %229 = inttoptr i64 %226 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = zext i32 %230 to i64
  store i64 %231, i64* %RAX, align 8, !tbaa !2428
  %232 = add i64 %225, -24
  %233 = add i64 %227, 6
  store i64 %233, i64* %PC, align 8
  %234 = inttoptr i64 %232 to i32*
  store i32 %230, i32* %234, align 4
  %.pre20 = load i64, i64* %PC, align 8
  br label %block_40085f

block_40085f:                                     ; preds = %block_4007e9, %block_400849, %block_400853
  %235 = phi i64 [ %615, %block_4007e9 ], [ %548, %block_400849 ], [ %.pre20, %block_400853 ]
  %236 = load i64, i64* %RBP, align 8
  %237 = add i64 %236, -28
  %238 = add i64 %235, 3
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %237 to i32*
  %240 = load i32, i32* %239, align 4
  %241 = zext i32 %240 to i64
  store i64 %241, i64* %RAX, align 8, !tbaa !2428
  %242 = add i64 %236, -20
  %243 = add i64 %235, 6
  store i64 %243, i64* %PC, align 8
  %244 = inttoptr i64 %242 to i32*
  %245 = load i32, i32* %244, align 4
  %246 = sub i32 %240, %245
  %247 = icmp ult i32 %240, %245
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %5, align 1, !tbaa !2432
  %249 = and i32 %246, 255
  %250 = tail call i32 @llvm.ctpop.i32(i32 %249) #8
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  %253 = xor i8 %252, 1
  store i8 %253, i8* %6, align 1, !tbaa !2446
  %254 = xor i32 %245, %240
  %255 = xor i32 %254, %246
  %256 = lshr i32 %255, 4
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  store i8 %258, i8* %7, align 1, !tbaa !2450
  %259 = icmp eq i32 %246, 0
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %8, align 1, !tbaa !2447
  %261 = lshr i32 %246, 31
  %262 = trunc i32 %261 to i8
  store i8 %262, i8* %9, align 1, !tbaa !2448
  %263 = lshr i32 %240, 31
  %264 = lshr i32 %245, 31
  %265 = xor i32 %264, %263
  %266 = xor i32 %261, %263
  %267 = add nuw nsw i32 %266, %265
  %268 = icmp eq i32 %267, 2
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %10, align 1, !tbaa !2449
  %.v34 = select i1 %259, i64 12, i64 56
  %270 = add i64 %235, %.v34
  store i64 %270, i64* %11, align 8, !tbaa !2428
  br i1 %259, label %block_40086b, label %block_40085f.block_400897_crit_edge

block_40085f.block_400897_crit_edge:              ; preds = %block_40085f
  %.pre22 = add i64 %236, -24
  %.pre23 = inttoptr i64 %.pre22 to i32*
  br label %block_400897

block_400734:                                     ; preds = %block_400718
  %271 = add i64 %64, -24
  store i64 4196151, i64* %PC, align 8
  %272 = inttoptr i64 %271 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = add i32 %273, 1
  %275 = zext i32 %274 to i64
  store i64 %275, i64* %RAX, align 8, !tbaa !2428
  %276 = icmp eq i32 %273, -1
  %277 = icmp eq i32 %274, 0
  %278 = or i1 %276, %277
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %5, align 1, !tbaa !2432
  %280 = and i32 %274, 255
  %281 = tail call i32 @llvm.ctpop.i32(i32 %280) #8
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  %284 = xor i8 %283, 1
  store i8 %284, i8* %6, align 1, !tbaa !2446
  %285 = xor i32 %273, %274
  %286 = lshr i32 %285, 4
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  store i8 %288, i8* %7, align 1, !tbaa !2450
  %289 = icmp eq i32 %274, 0
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %8, align 1, !tbaa !2447
  %291 = lshr i32 %274, 31
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %9, align 1, !tbaa !2448
  %293 = lshr i32 %273, 31
  %294 = xor i32 %291, %293
  %295 = add nuw nsw i32 %294, %291
  %296 = icmp eq i32 %295, 2
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %10, align 1, !tbaa !2449
  store i64 4196157, i64* %PC, align 8
  store i32 %274, i32* %272, align 4
  br label %block_400790

block_400790:                                     ; preds = %block_400750, %block_400734
  %.sink28 = phi i64 [ 55, %block_400750 ], [ 83, %block_400734 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.6, %block_400750 ], [ %117, %block_400734 ]
  %298 = load i64, i64* %PC, align 8
  %299 = add i64 %298, %.sink28
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %300 = load i64, i64* %RBP, align 8
  %301 = add i64 %300, -24
  %302 = add i64 %299, 14
  store i64 %302, i64* %PC, align 8
  %303 = inttoptr i64 %301 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = sext i32 %304 to i64
  %306 = mul nsw i64 %305, 11
  store i64 %306, i64* %RCX, align 8, !tbaa !2428
  %307 = lshr i64 %306, 63
  %308 = add i64 %306, ptrtoint (%maze_type* @maze to i64)
  store i64 %308, i64* %RAX, align 8, !tbaa !2428
  %309 = icmp ult i64 %308, ptrtoint (%maze_type* @maze to i64)
  %310 = icmp ult i64 %308, %306
  %311 = or i1 %309, %310
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %5, align 1, !tbaa !2432
  %313 = trunc i64 %308 to i32
  %314 = and i32 %313, 255
  %315 = tail call i32 @llvm.ctpop.i32(i32 %314) #8
  %316 = trunc i32 %315 to i8
  %317 = and i8 %316, 1
  %318 = xor i8 %317, 1
  store i8 %318, i8* %6, align 1, !tbaa !2446
  %319 = xor i64 %306, ptrtoint (%maze_type* @maze to i64)
  %320 = xor i64 %319, %308
  %321 = lshr i64 %320, 4
  %322 = trunc i64 %321 to i8
  %323 = and i8 %322, 1
  store i8 %323, i8* %7, align 1, !tbaa !2450
  %324 = icmp eq i64 %308, 0
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %8, align 1, !tbaa !2447
  %326 = lshr i64 %308, 63
  %327 = trunc i64 %326 to i8
  store i8 %327, i8* %9, align 1, !tbaa !2448
  %328 = xor i64 %326, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %329 = xor i64 %326, %307
  %330 = add nuw nsw i64 %328, %329
  %331 = icmp eq i64 %330, 2
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %10, align 1, !tbaa !2449
  %333 = add i64 %300, -20
  %334 = add i64 %299, 25
  store i64 %334, i64* %PC, align 8
  %335 = inttoptr i64 %333 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = sext i32 %336 to i64
  store i64 %337, i64* %RCX, align 8, !tbaa !2428
  %338 = add i64 %337, %308
  %339 = add i64 %299, 29
  store i64 %339, i64* %PC, align 8
  %340 = inttoptr i64 %338 to i8*
  %341 = load i8, i8* %340, align 1
  %342 = sext i8 %341 to i64
  %343 = and i64 %342, 4294967295
  store i64 %343, i64* %RDX, align 8, !tbaa !2428
  %344 = sext i8 %341 to i32
  %345 = add nsw i32 %344, -35
  %346 = icmp ult i8 %341, 35
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %5, align 1, !tbaa !2432
  %348 = and i32 %345, 255
  %349 = tail call i32 @llvm.ctpop.i32(i32 %348) #8
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = xor i8 %351, 1
  store i8 %352, i8* %6, align 1, !tbaa !2446
  %353 = xor i32 %344, %345
  %354 = lshr i32 %353, 4
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  store i8 %356, i8* %7, align 1, !tbaa !2450
  %357 = icmp eq i32 %345, 0
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %8, align 1, !tbaa !2447
  %359 = lshr i32 %345, 31
  %360 = trunc i32 %359 to i8
  store i8 %360, i8* %9, align 1, !tbaa !2448
  %361 = lshr i32 %344, 31
  %362 = xor i32 %359, %361
  %363 = add nuw nsw i32 %362, %361
  %364 = icmp eq i32 %363, 2
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %10, align 1, !tbaa !2449
  %.v = select i1 %357, i64 38, i64 89
  %366 = add i64 %299, %.v
  %367 = add i64 %366, 10
  store i64 %367, i64* %PC, align 8
  br i1 %357, label %block_4007b6, label %block_4007e9

block_400819:                                     ; preds = %block_40080f
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %368 = add i64 %642, 14
  store i64 %368, i64* %PC, align 8
  %369 = load i32, i32* %619, align 4
  %370 = sext i32 %369 to i64
  %371 = mul nsw i64 %370, 11
  store i64 %371, i64* %RCX, align 8, !tbaa !2428
  %372 = lshr i64 %371, 63
  %373 = add i64 %371, ptrtoint (%maze_type* @maze to i64)
  store i64 %373, i64* %RAX, align 8, !tbaa !2428
  %374 = icmp ult i64 %373, ptrtoint (%maze_type* @maze to i64)
  %375 = icmp ult i64 %373, %371
  %376 = or i1 %374, %375
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %5, align 1, !tbaa !2432
  %378 = trunc i64 %373 to i32
  %379 = and i32 %378, 255
  %380 = tail call i32 @llvm.ctpop.i32(i32 %379) #8
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  store i8 %383, i8* %6, align 1, !tbaa !2446
  %384 = xor i64 %371, ptrtoint (%maze_type* @maze to i64)
  %385 = xor i64 %384, %373
  %386 = lshr i64 %385, 4
  %387 = trunc i64 %386 to i8
  %388 = and i8 %387, 1
  store i8 %388, i8* %7, align 1, !tbaa !2450
  %389 = icmp eq i64 %373, 0
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %8, align 1, !tbaa !2447
  %391 = lshr i64 %373, 63
  %392 = trunc i64 %391 to i8
  store i8 %392, i8* %9, align 1, !tbaa !2448
  %393 = xor i64 %391, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %394 = xor i64 %391, %372
  %395 = add nuw nsw i64 %393, %394
  %396 = icmp eq i64 %395, 2
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %10, align 1, !tbaa !2449
  %398 = add i64 %616, -20
  %399 = add i64 %642, 25
  store i64 %399, i64* %PC, align 8
  %400 = inttoptr i64 %398 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = sext i32 %401 to i64
  store i64 %402, i64* %RCX, align 8, !tbaa !2428
  %403 = add i64 %402, %373
  %404 = add i64 %642, 29
  store i64 %404, i64* %PC, align 8
  %405 = inttoptr i64 %403 to i8*
  %406 = load i8, i8* %405, align 1
  %407 = sext i8 %406 to i64
  %408 = and i64 %407, 4294967295
  store i64 %408, i64* %RDX, align 8, !tbaa !2428
  %409 = sext i8 %406 to i32
  %410 = add nsw i32 %409, -124
  %411 = icmp ult i8 %406, 124
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %5, align 1, !tbaa !2432
  %413 = and i32 %410, 255
  %414 = tail call i32 @llvm.ctpop.i32(i32 %413) #8
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  %417 = xor i8 %416, 1
  store i8 %417, i8* %6, align 1, !tbaa !2446
  %418 = xor i32 %409, 16
  %419 = xor i32 %418, %410
  %420 = lshr i32 %419, 4
  %421 = trunc i32 %420 to i8
  %422 = and i8 %421, 1
  store i8 %422, i8* %7, align 1, !tbaa !2450
  %423 = icmp eq i32 %410, 0
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %8, align 1, !tbaa !2447
  %425 = lshr i32 %410, 31
  %426 = trunc i32 %425 to i8
  store i8 %426, i8* %9, align 1, !tbaa !2448
  %427 = lshr i32 %409, 31
  %428 = xor i32 %425, %427
  %429 = add nuw nsw i32 %428, %427
  %430 = icmp eq i32 %429, 2
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %10, align 1, !tbaa !2449
  %.v31 = select i1 %423, i64 38, i64 58
  %432 = add i64 %642, %.v31
  store i64 %432, i64* %11, align 8, !tbaa !2428
  %.pre19 = load i64, i64* %RBP, align 8
  br i1 %423, label %block_40083f, label %block_400853

block_4006ee:                                     ; preds = %block_400897
  %433 = add i64 %150, -20
  %434 = add i64 %179, 3
  store i64 %434, i64* %PC, align 8
  %435 = inttoptr i64 %433 to i32*
  %436 = load i32, i32* %435, align 4
  %437 = zext i32 %436 to i64
  store i64 %437, i64* %RAX, align 8, !tbaa !2428
  %438 = add i64 %150, -28
  %439 = add i64 %179, 6
  store i64 %439, i64* %PC, align 8
  %440 = inttoptr i64 %438 to i32*
  store i32 %436, i32* %440, align 4
  %441 = load i64, i64* %RBP, align 8
  %442 = add i64 %441, -24
  %443 = load i64, i64* %PC, align 8
  %444 = add i64 %443, 3
  store i64 %444, i64* %PC, align 8
  %445 = inttoptr i64 %442 to i32*
  %446 = load i32, i32* %445, align 4
  %447 = zext i32 %446 to i64
  store i64 %447, i64* %RAX, align 8, !tbaa !2428
  %448 = add i64 %441, -32
  %449 = add i64 %443, 6
  store i64 %449, i64* %PC, align 8
  %450 = inttoptr i64 %448 to i32*
  store i32 %446, i32* %450, align 4
  %451 = load i64, i64* %RBP, align 8
  %452 = add i64 %451, -36
  %453 = load i64, i64* %PC, align 8
  %454 = add i64 %453, 4
  store i64 %454, i64* %PC, align 8
  %455 = inttoptr i64 %452 to i32*
  %456 = load i32, i32* %455, align 4
  %457 = sext i32 %456 to i64
  store i64 %457, i64* %RCX, align 8, !tbaa !2428
  %458 = add i64 %451, -64
  %459 = add i64 %458, %457
  %460 = add i64 %453, 9
  store i64 %460, i64* %PC, align 8
  %461 = inttoptr i64 %459 to i8*
  %462 = load i8, i8* %461, align 1
  %463 = sext i8 %462 to i32
  %464 = add nsw i32 %463, -97
  %465 = zext i32 %464 to i64
  %466 = lshr i32 %464, 31
  store i64 %465, i64* %RCX, align 8, !tbaa !2428
  %467 = add nsw i32 %463, -119
  %468 = zext i32 %467 to i64
  store i64 %468, i64* %RAX, align 8, !tbaa !2428
  %469 = icmp ult i32 %464, 22
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %5, align 1, !tbaa !2432
  %471 = and i32 %467, 255
  %472 = tail call i32 @llvm.ctpop.i32(i32 %471) #8
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  store i8 %475, i8* %6, align 1, !tbaa !2446
  %476 = xor i32 %464, 16
  %477 = xor i32 %476, %467
  %478 = lshr i32 %477, 4
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  store i8 %480, i8* %7, align 1, !tbaa !2450
  %481 = icmp eq i32 %467, 0
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %8, align 1, !tbaa !2447
  %483 = lshr i32 %467, 31
  %484 = trunc i32 %483 to i8
  store i8 %484, i8* %9, align 1, !tbaa !2448
  %485 = xor i32 %483, %466
  %486 = add nuw nsw i32 %485, %466
  %487 = icmp eq i32 %486, 2
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %10, align 1, !tbaa !2449
  %489 = add i64 %451, -80
  %490 = add i64 %453, 21
  store i64 %490, i64* %PC, align 8
  %491 = inttoptr i64 %489 to i64*
  store i64 %465, i64* %491, align 8
  %492 = load i64, i64* %RBP, align 8
  %493 = add i64 %492, -84
  %494 = load i32, i32* %EAX, align 4
  %495 = load i64, i64* %PC, align 8
  %496 = add i64 %495, 3
  store i64 %496, i64* %PC, align 8
  %497 = inttoptr i64 %493 to i32*
  store i32 %494, i32* %497, align 4
  %498 = load i64, i64* %PC, align 8
  %499 = load i8, i8* %5, align 1, !tbaa !2432
  %500 = load i8, i8* %8, align 1, !tbaa !2447
  %501 = or i8 %500, %499
  %502 = icmp eq i8 %501, 0
  %.v37 = select i1 %502, i64 76, i64 6
  %503 = add i64 %498, %.v37
  store i64 %503, i64* %11, align 8, !tbaa !2428
  br i1 %502, label %block_40075e, label %block_400718

block_400877:                                     ; preds = %block_40086b
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %504 = add i64 %676, -967
  %505 = add i64 %676, 17
  %506 = load i64, i64* %12, align 8, !tbaa !2428
  %507 = add i64 %506, -8
  %508 = inttoptr i64 %507 to i64*
  store i64 %505, i64* %508, align 8
  store i64 %507, i64* %12, align 8, !tbaa !2428
  store i64 %504, i64* %11, align 8, !tbaa !2428
  %509 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %510 = load i64, i64* %RBP, align 8
  %511 = add i64 %510, -4
  %512 = load i64, i64* %PC, align 8
  %513 = add i64 %512, 7
  store i64 %513, i64* %PC, align 8
  %514 = inttoptr i64 %511 to i32*
  store i32 2, i32* %514, align 4
  %515 = load i64, i64* %RBP, align 8
  %516 = add i64 %515, -104
  %517 = load i32, i32* %EAX, align 4
  %518 = load i64, i64* %PC, align 8
  %519 = add i64 %518, 3
  store i64 %519, i64* %PC, align 8
  %520 = inttoptr i64 %516 to i32*
  store i32 %517, i32* %520, align 4
  %521 = load i64, i64* %PC, align 8
  %522 = add i64 %521, 80
  store i64 %522, i64* %11, align 8, !tbaa !2428
  br label %block_4008e2

block_400849:                                     ; preds = %block_40083f
  %523 = add i64 %28, 4
  store i64 %523, i64* %PC, align 8
  %524 = load i32, i32* %15, align 4
  %525 = add i32 %524, -11
  %526 = icmp ult i32 %524, 11
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %5, align 1, !tbaa !2432
  %528 = and i32 %525, 255
  %529 = tail call i32 @llvm.ctpop.i32(i32 %528) #8
  %530 = trunc i32 %529 to i8
  %531 = and i8 %530, 1
  %532 = xor i8 %531, 1
  store i8 %532, i8* %6, align 1, !tbaa !2446
  %533 = xor i32 %524, %525
  %534 = lshr i32 %533, 4
  %535 = trunc i32 %534 to i8
  %536 = and i8 %535, 1
  store i8 %536, i8* %7, align 1, !tbaa !2450
  %537 = icmp eq i32 %525, 0
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %8, align 1, !tbaa !2447
  %539 = lshr i32 %525, 31
  %540 = trunc i32 %539 to i8
  store i8 %540, i8* %9, align 1, !tbaa !2448
  %541 = lshr i32 %524, 31
  %542 = xor i32 %539, %541
  %543 = add nuw nsw i32 %542, %541
  %544 = icmp eq i32 %543, 2
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %10, align 1, !tbaa !2449
  %546 = icmp ne i8 %540, 0
  %547 = xor i1 %546, %544
  %.v33 = select i1 %547, i64 22, i64 10
  %548 = add i64 %28, %.v33
  store i64 %548, i64* %11, align 8, !tbaa !2428
  br i1 %547, label %block_40085f, label %block_400853

block_4007e9:                                     ; preds = %block_400790
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2428
  %549 = load i64, i64* %RBP, align 8
  %550 = add i64 %549, -24
  %551 = add i64 %366, 14
  store i64 %551, i64* %PC, align 8
  %552 = inttoptr i64 %550 to i32*
  %553 = load i32, i32* %552, align 4
  %554 = sext i32 %553 to i64
  %555 = mul nsw i64 %554, 11
  store i64 %555, i64* %RCX, align 8, !tbaa !2428
  %556 = lshr i64 %555, 63
  %557 = add i64 %555, ptrtoint (%maze_type* @maze to i64)
  store i64 %557, i64* %RAX, align 8, !tbaa !2428
  %558 = icmp ult i64 %557, ptrtoint (%maze_type* @maze to i64)
  %559 = icmp ult i64 %557, %555
  %560 = or i1 %558, %559
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %5, align 1, !tbaa !2432
  %562 = trunc i64 %557 to i32
  %563 = and i32 %562, 255
  %564 = tail call i32 @llvm.ctpop.i32(i32 %563) #8
  %565 = trunc i32 %564 to i8
  %566 = and i8 %565, 1
  %567 = xor i8 %566, 1
  store i8 %567, i8* %6, align 1, !tbaa !2446
  %568 = xor i64 %555, ptrtoint (%maze_type* @maze to i64)
  %569 = xor i64 %568, %557
  %570 = lshr i64 %569, 4
  %571 = trunc i64 %570 to i8
  %572 = and i8 %571, 1
  store i8 %572, i8* %7, align 1, !tbaa !2450
  %573 = icmp eq i64 %557, 0
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %8, align 1, !tbaa !2447
  %575 = lshr i64 %557, 63
  %576 = trunc i64 %575 to i8
  store i8 %576, i8* %9, align 1, !tbaa !2448
  %577 = xor i64 %575, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %578 = xor i64 %575, %556
  %579 = add nuw nsw i64 %577, %578
  %580 = icmp eq i64 %579, 2
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %10, align 1, !tbaa !2449
  %582 = add i64 %549, -20
  %583 = add i64 %366, 25
  store i64 %583, i64* %PC, align 8
  %584 = inttoptr i64 %582 to i32*
  %585 = load i32, i32* %584, align 4
  %586 = sext i32 %585 to i64
  store i64 %586, i64* %RCX, align 8, !tbaa !2428
  %587 = add i64 %586, %557
  %588 = add i64 %366, 29
  store i64 %588, i64* %PC, align 8
  %589 = inttoptr i64 %587 to i8*
  %590 = load i8, i8* %589, align 1
  %591 = sext i8 %590 to i64
  %592 = and i64 %591, 4294967295
  store i64 %592, i64* %RDX, align 8, !tbaa !2428
  %593 = sext i8 %590 to i32
  %594 = add nsw i32 %593, -32
  %595 = icmp ult i8 %590, 32
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %5, align 1, !tbaa !2432
  %597 = and i32 %594, 255
  %598 = tail call i32 @llvm.ctpop.i32(i32 %597) #8
  %599 = trunc i32 %598 to i8
  %600 = and i8 %599, 1
  %601 = xor i8 %600, 1
  store i8 %601, i8* %6, align 1, !tbaa !2446
  %602 = xor i32 %593, %594
  %603 = lshr i32 %602, 4
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  store i8 %605, i8* %7, align 1, !tbaa !2450
  %606 = icmp eq i32 %594, 0
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %8, align 1, !tbaa !2447
  %608 = lshr i32 %594, 31
  %609 = trunc i32 %608 to i8
  store i8 %609, i8* %9, align 1, !tbaa !2448
  %610 = lshr i32 %593, 31
  %611 = xor i32 %608, %610
  %612 = add nuw nsw i32 %611, %610
  %613 = icmp eq i32 %612, 2
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %10, align 1, !tbaa !2449
  %.v29 = select i1 %606, i64 118, i64 38
  %615 = add i64 %366, %.v29
  store i64 %615, i64* %11, align 8, !tbaa !2428
  br i1 %606, label %block_40085f, label %block_40080f

block_40080f:                                     ; preds = %block_4007e9
  %616 = load i64, i64* %RBP, align 8
  %617 = add i64 %616, -24
  %618 = add i64 %615, 4
  store i64 %618, i64* %PC, align 8
  %619 = inttoptr i64 %617 to i32*
  %620 = load i32, i32* %619, align 4
  %621 = add i32 %620, -2
  %622 = icmp ult i32 %620, 2
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %5, align 1, !tbaa !2432
  %624 = and i32 %621, 255
  %625 = tail call i32 @llvm.ctpop.i32(i32 %624) #8
  %626 = trunc i32 %625 to i8
  %627 = and i8 %626, 1
  %628 = xor i8 %627, 1
  store i8 %628, i8* %6, align 1, !tbaa !2446
  %629 = xor i32 %620, %621
  %630 = lshr i32 %629, 4
  %631 = trunc i32 %630 to i8
  %632 = and i8 %631, 1
  store i8 %632, i8* %7, align 1, !tbaa !2450
  %633 = icmp eq i32 %621, 0
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %8, align 1, !tbaa !2447
  %635 = lshr i32 %621, 31
  %636 = trunc i32 %635 to i8
  store i8 %636, i8* %9, align 1, !tbaa !2448
  %637 = lshr i32 %620, 31
  %638 = xor i32 %635, %637
  %639 = add nuw nsw i32 %638, %637
  %640 = icmp eq i32 %639, 2
  %641 = zext i1 %640 to i8
  store i8 %641, i8* %10, align 1, !tbaa !2449
  %.v30 = select i1 %633, i64 10, i64 68
  %642 = add i64 %615, %.v30
  store i64 %642, i64* %11, align 8, !tbaa !2428
  br i1 %633, label %block_400819, label %block_400853

block_40086b:                                     ; preds = %block_40085f
  %643 = add i64 %236, -32
  %644 = add i64 %270, 3
  store i64 %644, i64* %PC, align 8
  %645 = inttoptr i64 %643 to i32*
  %646 = load i32, i32* %645, align 4
  %647 = zext i32 %646 to i64
  store i64 %647, i64* %RAX, align 8, !tbaa !2428
  %648 = add i64 %236, -24
  %649 = add i64 %270, 6
  store i64 %649, i64* %PC, align 8
  %650 = inttoptr i64 %648 to i32*
  %651 = load i32, i32* %650, align 4
  %652 = sub i32 %646, %651
  %653 = icmp ult i32 %646, %651
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %5, align 1, !tbaa !2432
  %655 = and i32 %652, 255
  %656 = tail call i32 @llvm.ctpop.i32(i32 %655) #8
  %657 = trunc i32 %656 to i8
  %658 = and i8 %657, 1
  %659 = xor i8 %658, 1
  store i8 %659, i8* %6, align 1, !tbaa !2446
  %660 = xor i32 %651, %646
  %661 = xor i32 %660, %652
  %662 = lshr i32 %661, 4
  %663 = trunc i32 %662 to i8
  %664 = and i8 %663, 1
  store i8 %664, i8* %7, align 1, !tbaa !2450
  %665 = icmp eq i32 %652, 0
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %8, align 1, !tbaa !2447
  %667 = lshr i32 %652, 31
  %668 = trunc i32 %667 to i8
  store i8 %668, i8* %9, align 1, !tbaa !2448
  %669 = lshr i32 %646, 31
  %670 = lshr i32 %651, 31
  %671 = xor i32 %670, %669
  %672 = xor i32 %667, %669
  %673 = add nuw nsw i32 %672, %671
  %674 = icmp eq i32 %673, 2
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %10, align 1, !tbaa !2449
  %.v35 = select i1 %665, i64 12, i64 44
  %676 = add i64 %270, %.v35
  store i64 %676, i64* %11, align 8, !tbaa !2428
  br i1 %665, label %block_400877, label %block_400897

block_4008c7:                                     ; preds = %block_400897
  store i64 add (i64 ptrtoint (%seg_400970__rodata_type* @seg_400970__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2428
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %677 = add i64 %179, -1047
  %678 = add i64 %179, 17
  %679 = load i64, i64* %12, align 8, !tbaa !2428
  %680 = add i64 %679, -8
  %681 = inttoptr i64 %680 to i64*
  store i64 %678, i64* %681, align 8
  store i64 %680, i64* %12, align 8, !tbaa !2428
  store i64 %677, i64* %11, align 8, !tbaa !2428
  %682 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %117)
  %683 = load i64, i64* %RBP, align 8
  %684 = add i64 %683, -4
  %685 = load i64, i64* %PC, align 8
  %686 = add i64 %685, 7
  store i64 %686, i64* %PC, align 8
  %687 = inttoptr i64 %684 to i32*
  store i32 1, i32* %687, align 4
  %688 = load i64, i64* %RBP, align 8
  %689 = add i64 %688, -108
  %690 = load i32, i32* %EAX, align 4
  %691 = load i64, i64* %PC, align 8
  %692 = add i64 %691, 3
  store i64 %692, i64* %PC, align 8
  %693 = inttoptr i64 %689 to i32*
  store i32 %690, i32* %693, align 4
  %.pre21 = load i64, i64* %PC, align 8
  br label %block_4008e2

block_4008e2:                                     ; preds = %block_4008c7, %block_400877
  %694 = phi i64 [ %.pre21, %block_4008c7 ], [ %522, %block_400877 ]
  %MEMORY.5 = phi %struct.Memory* [ %682, %block_4008c7 ], [ %509, %block_400877 ]
  %695 = load i64, i64* %RBP, align 8
  %696 = add i64 %695, -4
  %697 = add i64 %694, 3
  store i64 %697, i64* %PC, align 8
  %698 = inttoptr i64 %696 to i32*
  %699 = load i32, i32* %698, align 4
  %700 = zext i32 %699 to i64
  store i64 %700, i64* %RAX, align 8, !tbaa !2428
  %701 = load i64, i64* %RSP, align 8
  %702 = add i64 %701, 112
  store i64 %702, i64* %RSP, align 8, !tbaa !2428
  %703 = icmp ugt i64 %701, -113
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %5, align 1, !tbaa !2432
  %705 = trunc i64 %702 to i32
  %706 = and i32 %705, 255
  %707 = tail call i32 @llvm.ctpop.i32(i32 %706) #8
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  %710 = xor i8 %709, 1
  store i8 %710, i8* %6, align 1, !tbaa !2446
  %711 = xor i64 %701, 16
  %712 = xor i64 %711, %702
  %713 = lshr i64 %712, 4
  %714 = trunc i64 %713 to i8
  %715 = and i8 %714, 1
  store i8 %715, i8* %7, align 1, !tbaa !2450
  %716 = icmp eq i64 %702, 0
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %8, align 1, !tbaa !2447
  %718 = lshr i64 %702, 63
  %719 = trunc i64 %718 to i8
  store i8 %719, i8* %9, align 1, !tbaa !2448
  %720 = lshr i64 %701, 63
  %721 = xor i64 %718, %720
  %722 = add nuw nsw i64 %721, %718
  %723 = icmp eq i64 %722, 2
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %10, align 1, !tbaa !2449
  %725 = add i64 %694, 8
  store i64 %725, i64* %PC, align 8
  %726 = add i64 %701, 120
  %727 = inttoptr i64 %702 to i64*
  %728 = load i64, i64* %727, align 8
  store i64 %728, i64* %RBP, align 8, !tbaa !2428
  store i64 %726, i64* %12, align 8, !tbaa !2428
  %729 = add i64 %694, 9
  store i64 %729, i64* %PC, align 8
  %730 = inttoptr i64 %726 to i64*
  %731 = load i64, i64* %730, align 8
  store i64 %731, i64* %11, align 8, !tbaa !2428
  %732 = add i64 %701, 128
  store i64 %732, i64* %12, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.5

block_400750:                                     ; preds = %block_400718, %3
  %733 = phi i64 [ %phitmp, %3 ], [ 4196179, %block_400718 ]
  %734 = phi i64 [ %.pre, %3 ], [ %64, %block_400718 ]
  %MEMORY.6 = phi %struct.Memory* [ %2, %3 ], [ %117, %block_400718 ]
  %735 = add i64 %734, -20
  store i64 %733, i64* %PC, align 8
  %736 = inttoptr i64 %735 to i32*
  %737 = load i32, i32* %736, align 4
  %738 = add i32 %737, 1
  %739 = zext i32 %738 to i64
  store i64 %739, i64* %RAX, align 8, !tbaa !2428
  %740 = icmp eq i32 %737, -1
  %741 = icmp eq i32 %738, 0
  %742 = or i1 %740, %741
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %5, align 1, !tbaa !2432
  %744 = and i32 %738, 255
  %745 = tail call i32 @llvm.ctpop.i32(i32 %744) #8
  %746 = trunc i32 %745 to i8
  %747 = and i8 %746, 1
  %748 = xor i8 %747, 1
  store i8 %748, i8* %6, align 1, !tbaa !2446
  %749 = xor i32 %737, %738
  %750 = lshr i32 %749, 4
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  store i8 %752, i8* %7, align 1, !tbaa !2450
  %753 = icmp eq i32 %738, 0
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %8, align 1, !tbaa !2447
  %755 = lshr i32 %738, 31
  %756 = trunc i32 %755 to i8
  store i8 %756, i8* %9, align 1, !tbaa !2448
  %757 = lshr i32 %737, 31
  %758 = xor i32 %755, %757
  %759 = add nuw nsw i32 %758, %755
  %760 = icmp eq i32 %759, 2
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %10, align 1, !tbaa !2449
  %762 = add i64 %733, 6
  store i64 %762, i64* %PC, align 8
  store i32 %738, i32* %736, align 4
  br label %block_400790

block_400726:                                     ; preds = %block_400718
  %763 = tail call %struct.Memory* @sub_400726(%struct.State* nonnull %0, i64 4196134, %struct.Memory* %117)
  ret %struct.Memory* %763

block_400742:                                     ; preds = %block_400718
  %764 = tail call %struct.Memory* @sub_400742(%struct.State* nonnull %0, i64 4196162, %struct.Memory* %117)
  ret %struct.Memory* %764

; <label>:765:                                    ; preds = %block_400718
  %766 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %73, %struct.Memory* %117)
  ret %struct.Memory* %766
}

; Function Attrs: noinline
define %struct.Memory* @sub_400550_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400550:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64* %RSI, align 8, !tbaa !2428
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
  %11 = sub i64 %9, ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)
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
  br i1 %30, label %block_400588, label %block_400573

block_400573:                                     ; preds = %block_400550
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 1, i8* %13, align 1, !tbaa !2446
  store i8 1, i8* %15, align 1, !tbaa !2447
  store i8 0, i8* %16, align 1, !tbaa !2448
  store i8 0, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %14, align 1, !tbaa !2450
  %36 = add i64 %35, 21
  store i64 %36, i64* %34, align 8, !tbaa !2428
  br label %block_400588

block_400588:                                     ; preds = %block_400573, %block_400550
  %37 = phi i64 [ %36, %block_400573 ], [ %35, %block_400550 ]
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
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4005c0_frame_dummy() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4005c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_4005c0_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4005c0_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400590___do_global_dtors_aux() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400590;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_400590___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400590___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6010b0_printf(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6010c8_exit(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_601098_read(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @read to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400960___libc_csu_fini() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400960;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_400960___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400960___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4008f0___libc_csu_init() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4008f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_4008f0___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4008f0___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400680;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400680_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_6010a0___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400964;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @.term_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400964__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400480;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400480__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @draw() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4005d0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @draw_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4005d0_draw(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

define internal void @__mcsema_destructor() {
  tail call void @callback_sub_400960___libc_csu_fini()
  ret void
}

define internal void @__mcsema_constructor() {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_4008f0___libc_csu_init()
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
