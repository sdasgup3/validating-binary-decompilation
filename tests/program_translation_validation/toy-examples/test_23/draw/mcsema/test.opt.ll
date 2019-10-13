; ModuleID = 'mcsema/test.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4008f0__rodata_type = type <{ [192 x i8], [3 x i8], [40 x i8], [11 x i8], [10 x i8], [19 x i8], [10 x i8] }>
%seg_600e10__init_array_type = type <{ i64, i64 }>
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
@seg_4008f0__rodata = internal constant %seg_4008f0__rodata_type <{ [192 x i8] c"\01\00\02\00\00\00\00\00\C2\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\D0\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\B4\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\A6\06@\00\00\00\00\00", [3 x i8] c"%c\00", [40 x i8] c"Wrong command!(only w,s,a,d accepted!)\0A\00", [11 x i8] c"You lose!\0A\00", [10 x i8] c"You win!\0A\00", [19 x i8] c"Your solution:%s \0A\00", [10 x i8] c"You lose\0A\00" }>
@seg_600e10__init_array = internal global %seg_600e10__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400540_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400510___do_global_dtors_aux to i64) }>
@seg_600ff0__got = internal global %seg_600ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@maze = global %maze_type <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>
@__bss_start = local_unnamed_addr global %__bss_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400540_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400510___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4008e0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400870___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @draw_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @__remill_basic_block(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #2 !dbg !1257 {
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
  store i8 0, i8* %BRANCH_TAKEN, align 1, !dbg !1948
  store i64 0, i64* %SS_BASE, align 8, !dbg !1949
  store i64 0, i64* %ES_BASE, align 8, !dbg !1950
  store i64 0, i64* %DS_BASE, align 8, !dbg !1951
  store i64 0, i64* %CS_BASE, align 8, !dbg !1952
  store %struct.State* %0, %struct.State** %STATE, align 8, !dbg !1953
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8, !dbg !1954
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1955
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33, !dbg !1956
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0, !dbg !1957
  %PC = bitcast %union.anon* %6 to i64*, !dbg !1957
  store i64 %1, i64* %PC, align 8, !dbg !1958
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1959
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %7, i32 0, i32 1, !dbg !1960
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0, !dbg !1961
  %10 = bitcast %union.anon* %9 to %struct.anon.2*, !dbg !1961
  %AH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %10, i32 0, i32 1, !dbg !1962
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1963
  %12 = getelementptr inbounds %struct.GPR, %struct.GPR* %11, i32 0, i32 3, !dbg !1964
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %12, i32 0, i32 0, !dbg !1965
  %14 = bitcast %union.anon* %13 to %struct.anon.2*, !dbg !1965
  %BH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %14, i32 0, i32 1, !dbg !1966
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1967
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 5, !dbg !1968
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0, !dbg !1969
  %18 = bitcast %union.anon* %17 to %struct.anon.2*, !dbg !1969
  %CH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %18, i32 0, i32 1, !dbg !1970
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1971
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 7, !dbg !1972
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0, !dbg !1973
  %22 = bitcast %union.anon* %21 to %struct.anon.2*, !dbg !1973
  %DH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %22, i32 0, i32 1, !dbg !1974
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1975
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 1, !dbg !1976
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0, !dbg !1977
  %26 = bitcast %union.anon* %25 to %struct.anon.2*, !dbg !1977
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %26, i32 0, i32 0, !dbg !1978
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1979
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 3, !dbg !1980
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0, !dbg !1981
  %30 = bitcast %union.anon* %29 to %struct.anon.2*, !dbg !1981
  %BL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %30, i32 0, i32 0, !dbg !1982
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1983
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 5, !dbg !1984
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0, !dbg !1985
  %34 = bitcast %union.anon* %33 to %struct.anon.2*, !dbg !1985
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %34, i32 0, i32 0, !dbg !1986
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1987
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 7, !dbg !1988
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0, !dbg !1989
  %38 = bitcast %union.anon* %37 to %struct.anon.2*, !dbg !1989
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %38, i32 0, i32 0, !dbg !1990
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1991
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 9, !dbg !1992
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0, !dbg !1993
  %42 = bitcast %union.anon* %41 to %struct.anon.2*, !dbg !1993
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %42, i32 0, i32 0, !dbg !1994
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1995
  %44 = getelementptr inbounds %struct.GPR, %struct.GPR* %43, i32 0, i32 11, !dbg !1996
  %45 = getelementptr inbounds %struct.Reg, %struct.Reg* %44, i32 0, i32 0, !dbg !1997
  %46 = bitcast %union.anon* %45 to %struct.anon.2*, !dbg !1997
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %46, i32 0, i32 0, !dbg !1998
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1999
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 13, !dbg !2000
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0, !dbg !2001
  %50 = bitcast %union.anon* %49 to %struct.anon.2*, !dbg !2001
  %SPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %50, i32 0, i32 0, !dbg !2002
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2003
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15, !dbg !2004
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0, !dbg !2005
  %54 = bitcast %union.anon* %53 to %struct.anon.2*, !dbg !2005
  %BPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %54, i32 0, i32 0, !dbg !2006
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2007
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 17, !dbg !2008
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0, !dbg !2009
  %58 = bitcast %union.anon* %57 to %struct.anon.2*, !dbg !2009
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %58, i32 0, i32 0, !dbg !2010
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2011
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 19, !dbg !2012
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0, !dbg !2013
  %62 = bitcast %union.anon* %61 to %struct.anon.2*, !dbg !2013
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %62, i32 0, i32 0, !dbg !2014
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2015
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 21, !dbg !2016
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0, !dbg !2017
  %66 = bitcast %union.anon* %65 to %struct.anon.2*, !dbg !2017
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %66, i32 0, i32 0, !dbg !2018
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2019
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 23, !dbg !2020
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0, !dbg !2021
  %70 = bitcast %union.anon* %69 to %struct.anon.2*, !dbg !2021
  %R11B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %70, i32 0, i32 0, !dbg !2022
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2023
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 25, !dbg !2024
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0, !dbg !2025
  %74 = bitcast %union.anon* %73 to %struct.anon.2*, !dbg !2025
  %R12B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %74, i32 0, i32 0, !dbg !2026
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2027
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 27, !dbg !2028
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0, !dbg !2029
  %78 = bitcast %union.anon* %77 to %struct.anon.2*, !dbg !2029
  %R13B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %78, i32 0, i32 0, !dbg !2030
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2031
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 29, !dbg !2032
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0, !dbg !2033
  %82 = bitcast %union.anon* %81 to %struct.anon.2*, !dbg !2033
  %R14B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %82, i32 0, i32 0, !dbg !2034
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2035
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 31, !dbg !2036
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0, !dbg !2037
  %86 = bitcast %union.anon* %85 to %struct.anon.2*, !dbg !2037
  %R15B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %86, i32 0, i32 0, !dbg !2038
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2039
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 1, !dbg !2040
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0, !dbg !2041
  %AX = bitcast %union.anon* %89 to i16*, !dbg !2041
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2042
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 3, !dbg !2043
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0, !dbg !2044
  %BX = bitcast %union.anon* %92 to i16*, !dbg !2044
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2045
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 5, !dbg !2046
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0, !dbg !2047
  %CX = bitcast %union.anon* %95 to i16*, !dbg !2047
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2048
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 7, !dbg !2049
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0, !dbg !2050
  %DX = bitcast %union.anon* %98 to i16*, !dbg !2050
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2051
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 9, !dbg !2052
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0, !dbg !2053
  %SI = bitcast %union.anon* %101 to i16*, !dbg !2053
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2054
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 11, !dbg !2055
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0, !dbg !2056
  %DI = bitcast %union.anon* %104 to i16*, !dbg !2056
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2057
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 13, !dbg !2058
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0, !dbg !2059
  %SP = bitcast %union.anon* %107 to i16*, !dbg !2059
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2060
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 15, !dbg !2061
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0, !dbg !2062
  %BP = bitcast %union.anon* %110 to i16*, !dbg !2062
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2063
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 17, !dbg !2064
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0, !dbg !2065
  %R8W = bitcast %union.anon* %113 to i16*, !dbg !2065
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2066
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 19, !dbg !2067
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0, !dbg !2068
  %R9W = bitcast %union.anon* %116 to i16*, !dbg !2068
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2069
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 21, !dbg !2070
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0, !dbg !2071
  %R10W = bitcast %union.anon* %119 to i16*, !dbg !2071
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2072
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 23, !dbg !2073
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0, !dbg !2074
  %R11W = bitcast %union.anon* %122 to i16*, !dbg !2074
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2075
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 25, !dbg !2076
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0, !dbg !2077
  %R12W = bitcast %union.anon* %125 to i16*, !dbg !2077
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2078
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 27, !dbg !2079
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0, !dbg !2080
  %R13W = bitcast %union.anon* %128 to i16*, !dbg !2080
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2081
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 29, !dbg !2082
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0, !dbg !2083
  %R14W = bitcast %union.anon* %131 to i16*, !dbg !2083
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2084
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 31, !dbg !2085
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0, !dbg !2086
  %R15W = bitcast %union.anon* %134 to i16*, !dbg !2086
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2087
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33, !dbg !2088
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0, !dbg !2089
  %IP = bitcast %union.anon* %137 to i16*, !dbg !2089
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2090
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 1, !dbg !2091
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0, !dbg !2092
  %EAX = bitcast %union.anon* %140 to i32*, !dbg !2092
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2093
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 3, !dbg !2094
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0, !dbg !2095
  %EBX = bitcast %union.anon* %143 to i32*, !dbg !2095
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2096
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 5, !dbg !2097
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0, !dbg !2098
  %ECX = bitcast %union.anon* %146 to i32*, !dbg !2098
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2099
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 7, !dbg !2100
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0, !dbg !2101
  %EDX = bitcast %union.anon* %149 to i32*, !dbg !2101
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2102
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 9, !dbg !2103
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0, !dbg !2104
  %ESI = bitcast %union.anon* %152 to i32*, !dbg !2104
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2105
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 11, !dbg !2106
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0, !dbg !2107
  %EDI = bitcast %union.anon* %155 to i32*, !dbg !2107
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2108
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 13, !dbg !2109
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0, !dbg !2110
  %ESP = bitcast %union.anon* %158 to i32*, !dbg !2110
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2111
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 15, !dbg !2112
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0, !dbg !2113
  %EBP = bitcast %union.anon* %161 to i32*, !dbg !2113
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2114
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33, !dbg !2115
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0, !dbg !2116
  %EIP = bitcast %union.anon* %164 to i32*, !dbg !2116
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2117
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 17, !dbg !2118
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0, !dbg !2119
  %R8D = bitcast %union.anon* %167 to i32*, !dbg !2119
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2120
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 19, !dbg !2121
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0, !dbg !2122
  %R9D = bitcast %union.anon* %170 to i32*, !dbg !2122
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2123
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 21, !dbg !2124
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0, !dbg !2125
  %R10D = bitcast %union.anon* %173 to i32*, !dbg !2125
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2126
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 23, !dbg !2127
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0, !dbg !2128
  %R11D = bitcast %union.anon* %176 to i32*, !dbg !2128
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2129
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 25, !dbg !2130
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0, !dbg !2131
  %R12D = bitcast %union.anon* %179 to i32*, !dbg !2131
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2132
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 27, !dbg !2133
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0, !dbg !2134
  %R13D = bitcast %union.anon* %182 to i32*, !dbg !2134
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2135
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 29, !dbg !2136
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0, !dbg !2137
  %R14D = bitcast %union.anon* %185 to i32*, !dbg !2137
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2138
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 31, !dbg !2139
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0, !dbg !2140
  %R15D = bitcast %union.anon* %188 to i32*, !dbg !2140
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2141
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 1, !dbg !2142
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0, !dbg !2143
  %RAX = bitcast %union.anon* %191 to i64*, !dbg !2143
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2144
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 3, !dbg !2145
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0, !dbg !2146
  %RBX = bitcast %union.anon* %194 to i64*, !dbg !2146
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2147
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 5, !dbg !2148
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0, !dbg !2149
  %RCX = bitcast %union.anon* %197 to i64*, !dbg !2149
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2150
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 7, !dbg !2151
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0, !dbg !2152
  %RDX = bitcast %union.anon* %200 to i64*, !dbg !2152
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2153
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 9, !dbg !2154
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0, !dbg !2155
  %RSI = bitcast %union.anon* %203 to i64*, !dbg !2155
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2156
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 11, !dbg !2157
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0, !dbg !2158
  %RDI = bitcast %union.anon* %206 to i64*, !dbg !2158
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2159
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 13, !dbg !2160
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0, !dbg !2161
  %RSP = bitcast %union.anon* %209 to i64*, !dbg !2161
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2162
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 15, !dbg !2163
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0, !dbg !2164
  %RBP = bitcast %union.anon* %212 to i64*, !dbg !2164
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2165
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 17, !dbg !2166
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0, !dbg !2167
  %R8 = bitcast %union.anon* %215 to i64*, !dbg !2167
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2168
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 19, !dbg !2169
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0, !dbg !2170
  %R9 = bitcast %union.anon* %218 to i64*, !dbg !2170
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2171
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 21, !dbg !2172
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0, !dbg !2173
  %R10 = bitcast %union.anon* %221 to i64*, !dbg !2173
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2174
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 23, !dbg !2175
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0, !dbg !2176
  %R11 = bitcast %union.anon* %224 to i64*, !dbg !2176
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2177
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 25, !dbg !2178
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0, !dbg !2179
  %R12 = bitcast %union.anon* %227 to i64*, !dbg !2179
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2180
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 27, !dbg !2181
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0, !dbg !2182
  %R13 = bitcast %union.anon* %230 to i64*, !dbg !2182
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2183
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 29, !dbg !2184
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0, !dbg !2185
  %R14 = bitcast %union.anon* %233 to i64*, !dbg !2185
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2186
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 31, !dbg !2187
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0, !dbg !2188
  %R15 = bitcast %union.anon* %236 to i64*, !dbg !2188
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2189
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 33, !dbg !2190
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0, !dbg !2191
  %RIP = bitcast %union.anon* %239 to i64*, !dbg !2191
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2192
  %241 = getelementptr inbounds %struct.Segments, %struct.Segments* %240, i32 0, i32 1, !dbg !2193
  %SS = bitcast %union.SegmentSelector* %241 to i16*, !dbg !2194
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2195
  %243 = getelementptr inbounds %struct.Segments, %struct.Segments* %242, i32 0, i32 3, !dbg !2196
  %ES = bitcast %union.SegmentSelector* %243 to i16*, !dbg !2197
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2198
  %245 = getelementptr inbounds %struct.Segments, %struct.Segments* %244, i32 0, i32 5, !dbg !2199
  %GS = bitcast %union.SegmentSelector* %245 to i16*, !dbg !2200
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2201
  %247 = getelementptr inbounds %struct.Segments, %struct.Segments* %246, i32 0, i32 7, !dbg !2202
  %FS = bitcast %union.SegmentSelector* %247 to i16*, !dbg !2203
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2204
  %249 = getelementptr inbounds %struct.Segments, %struct.Segments* %248, i32 0, i32 9, !dbg !2205
  %DS = bitcast %union.SegmentSelector* %249 to i16*, !dbg !2206
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2207
  %251 = getelementptr inbounds %struct.Segments, %struct.Segments* %250, i32 0, i32 11, !dbg !2208
  %CS = bitcast %union.SegmentSelector* %251 to i16*, !dbg !2209
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5, !dbg !2210
  %253 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %252, i32 0, i32 5, !dbg !2211
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0, !dbg !2212
  %GS_BASE = bitcast %union.anon* %254 to i64*, !dbg !2212
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5, !dbg !2213
  %256 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %255, i32 0, i32 7, !dbg !2214
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0, !dbg !2215
  %FS_BASE = bitcast %union.anon* %257 to i64*, !dbg !2215
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2216
  %259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %258, i64 0, i64 0, !dbg !2217
  %YMM0 = bitcast %union.VectorReg* %259 to %"class.std::bitset"*, !dbg !2218
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2219
  %261 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %260, i64 0, i64 1, !dbg !2220
  %YMM1 = bitcast %union.VectorReg* %261 to %"class.std::bitset"*, !dbg !2221
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2222
  %263 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %262, i64 0, i64 2, !dbg !2223
  %YMM2 = bitcast %union.VectorReg* %263 to %"class.std::bitset"*, !dbg !2224
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2225
  %265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %264, i64 0, i64 3, !dbg !2226
  %YMM3 = bitcast %union.VectorReg* %265 to %"class.std::bitset"*, !dbg !2227
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2228
  %267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %266, i64 0, i64 4, !dbg !2229
  %YMM4 = bitcast %union.VectorReg* %267 to %"class.std::bitset"*, !dbg !2230
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2231
  %269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %268, i64 0, i64 5, !dbg !2232
  %YMM5 = bitcast %union.VectorReg* %269 to %"class.std::bitset"*, !dbg !2233
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2234
  %271 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %270, i64 0, i64 6, !dbg !2235
  %YMM6 = bitcast %union.VectorReg* %271 to %"class.std::bitset"*, !dbg !2236
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2237
  %273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %272, i64 0, i64 7, !dbg !2238
  %YMM7 = bitcast %union.VectorReg* %273 to %"class.std::bitset"*, !dbg !2239
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2240
  %275 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %274, i64 0, i64 8, !dbg !2241
  %YMM8 = bitcast %union.VectorReg* %275 to %"class.std::bitset"*, !dbg !2242
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2243
  %277 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %276, i64 0, i64 9, !dbg !2244
  %YMM9 = bitcast %union.VectorReg* %277 to %"class.std::bitset"*, !dbg !2245
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2246
  %279 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %278, i64 0, i64 10, !dbg !2247
  %YMM10 = bitcast %union.VectorReg* %279 to %"class.std::bitset"*, !dbg !2248
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2249
  %281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %280, i64 0, i64 11, !dbg !2250
  %YMM11 = bitcast %union.VectorReg* %281 to %"class.std::bitset"*, !dbg !2251
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2252
  %283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %282, i64 0, i64 12, !dbg !2253
  %YMM12 = bitcast %union.VectorReg* %283 to %"class.std::bitset"*, !dbg !2254
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2255
  %285 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %284, i64 0, i64 13, !dbg !2256
  %YMM13 = bitcast %union.VectorReg* %285 to %"class.std::bitset"*, !dbg !2257
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2258
  %287 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %286, i64 0, i64 14, !dbg !2259
  %YMM14 = bitcast %union.VectorReg* %287 to %"class.std::bitset"*, !dbg !2260
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2261
  %289 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %288, i64 0, i64 15, !dbg !2262
  %YMM15 = bitcast %union.VectorReg* %289 to %"class.std::bitset"*, !dbg !2263
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2264
  %291 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %290, i64 0, i64 0, !dbg !2265
  %XMM0 = bitcast %union.VectorReg* %291 to %union.vec128_t*, !dbg !2266
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2267
  %293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %292, i64 0, i64 1, !dbg !2268
  %XMM1 = bitcast %union.VectorReg* %293 to %union.vec128_t*, !dbg !2269
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2270
  %295 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %294, i64 0, i64 2, !dbg !2271
  %XMM2 = bitcast %union.VectorReg* %295 to %union.vec128_t*, !dbg !2272
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2273
  %297 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %296, i64 0, i64 3, !dbg !2274
  %XMM3 = bitcast %union.VectorReg* %297 to %union.vec128_t*, !dbg !2275
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2276
  %299 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %298, i64 0, i64 4, !dbg !2277
  %XMM4 = bitcast %union.VectorReg* %299 to %union.vec128_t*, !dbg !2278
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2279
  %301 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %300, i64 0, i64 5, !dbg !2280
  %XMM5 = bitcast %union.VectorReg* %301 to %union.vec128_t*, !dbg !2281
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2282
  %303 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 6, !dbg !2283
  %XMM6 = bitcast %union.VectorReg* %303 to %union.vec128_t*, !dbg !2284
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2285
  %305 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %304, i64 0, i64 7, !dbg !2286
  %XMM7 = bitcast %union.VectorReg* %305 to %union.vec128_t*, !dbg !2287
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2288
  %307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %306, i64 0, i64 8, !dbg !2289
  %XMM8 = bitcast %union.VectorReg* %307 to %union.vec128_t*, !dbg !2290
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2291
  %309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %308, i64 0, i64 9, !dbg !2292
  %XMM9 = bitcast %union.VectorReg* %309 to %union.vec128_t*, !dbg !2293
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2294
  %311 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %310, i64 0, i64 10, !dbg !2295
  %XMM10 = bitcast %union.VectorReg* %311 to %union.vec128_t*, !dbg !2296
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2297
  %313 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %312, i64 0, i64 11, !dbg !2298
  %XMM11 = bitcast %union.VectorReg* %313 to %union.vec128_t*, !dbg !2299
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2300
  %315 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %314, i64 0, i64 12, !dbg !2301
  %XMM12 = bitcast %union.VectorReg* %315 to %union.vec128_t*, !dbg !2302
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2303
  %317 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %316, i64 0, i64 13, !dbg !2304
  %XMM13 = bitcast %union.VectorReg* %317 to %union.vec128_t*, !dbg !2305
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2306
  %319 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %318, i64 0, i64 14, !dbg !2307
  %XMM14 = bitcast %union.VectorReg* %319 to %union.vec128_t*, !dbg !2308
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2309
  %321 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %320, i64 0, i64 15, !dbg !2310
  %XMM15 = bitcast %union.VectorReg* %321 to %union.vec128_t*, !dbg !2311
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2312
  %323 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %322, i32 0, i32 0, !dbg !2313
  %324 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %323, i64 0, i64 0, !dbg !2314
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %324, i32 0, i32 1, !dbg !2315
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2316
  %326 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %325, i32 0, i32 0, !dbg !2317
  %327 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %326, i64 0, i64 1, !dbg !2318
  %ST1 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %327, i32 0, i32 1, !dbg !2319
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2320
  %329 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %328, i32 0, i32 0, !dbg !2321
  %330 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %329, i64 0, i64 2, !dbg !2322
  %ST2 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %330, i32 0, i32 1, !dbg !2323
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2324
  %332 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %331, i32 0, i32 0, !dbg !2325
  %333 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %332, i64 0, i64 3, !dbg !2326
  %ST3 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %333, i32 0, i32 1, !dbg !2327
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2328
  %335 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %334, i32 0, i32 0, !dbg !2329
  %336 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %335, i64 0, i64 4, !dbg !2330
  %ST4 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %336, i32 0, i32 1, !dbg !2331
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2332
  %338 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %337, i32 0, i32 0, !dbg !2333
  %339 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %338, i64 0, i64 5, !dbg !2334
  %ST5 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %339, i32 0, i32 1, !dbg !2335
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2336
  %341 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %340, i32 0, i32 0, !dbg !2337
  %342 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %341, i64 0, i64 6, !dbg !2338
  %ST6 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %342, i32 0, i32 1, !dbg !2339
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2340
  %344 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %343, i32 0, i32 0, !dbg !2341
  %345 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %344, i64 0, i64 7, !dbg !2342
  %ST7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %345, i32 0, i32 1, !dbg !2343
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2344
  %347 = getelementptr inbounds %struct.MMX, %struct.MMX* %346, i32 0, i32 0, !dbg !2345
  %348 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %347, i64 0, i64 0, !dbg !2346
  %349 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %348, i32 0, i32 1, !dbg !2347
  %350 = bitcast %union.vec64_t* %349 to %struct.uint64v1_t*, !dbg !2348
  %351 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %350, i32 0, i32 0, !dbg !2349
  %MM0 = getelementptr inbounds [1 x i64], [1 x i64]* %351, i64 0, i64 0, !dbg !2346
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2350
  %353 = getelementptr inbounds %struct.MMX, %struct.MMX* %352, i32 0, i32 0, !dbg !2351
  %354 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %353, i64 0, i64 1, !dbg !2352
  %355 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %354, i32 0, i32 1, !dbg !2353
  %356 = bitcast %union.vec64_t* %355 to %struct.uint64v1_t*, !dbg !2354
  %357 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %356, i32 0, i32 0, !dbg !2355
  %MM1 = getelementptr inbounds [1 x i64], [1 x i64]* %357, i64 0, i64 0, !dbg !2352
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2356
  %359 = getelementptr inbounds %struct.MMX, %struct.MMX* %358, i32 0, i32 0, !dbg !2357
  %360 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %359, i64 0, i64 2, !dbg !2358
  %361 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %360, i32 0, i32 1, !dbg !2359
  %362 = bitcast %union.vec64_t* %361 to %struct.uint64v1_t*, !dbg !2360
  %363 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %362, i32 0, i32 0, !dbg !2361
  %MM2 = getelementptr inbounds [1 x i64], [1 x i64]* %363, i64 0, i64 0, !dbg !2358
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2362
  %365 = getelementptr inbounds %struct.MMX, %struct.MMX* %364, i32 0, i32 0, !dbg !2363
  %366 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %365, i64 0, i64 3, !dbg !2364
  %367 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %366, i32 0, i32 1, !dbg !2365
  %368 = bitcast %union.vec64_t* %367 to %struct.uint64v1_t*, !dbg !2366
  %369 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %368, i32 0, i32 0, !dbg !2367
  %MM3 = getelementptr inbounds [1 x i64], [1 x i64]* %369, i64 0, i64 0, !dbg !2364
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2368
  %371 = getelementptr inbounds %struct.MMX, %struct.MMX* %370, i32 0, i32 0, !dbg !2369
  %372 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %371, i64 0, i64 4, !dbg !2370
  %373 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %372, i32 0, i32 1, !dbg !2371
  %374 = bitcast %union.vec64_t* %373 to %struct.uint64v1_t*, !dbg !2372
  %375 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %374, i32 0, i32 0, !dbg !2373
  %MM4 = getelementptr inbounds [1 x i64], [1 x i64]* %375, i64 0, i64 0, !dbg !2370
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2374
  %377 = getelementptr inbounds %struct.MMX, %struct.MMX* %376, i32 0, i32 0, !dbg !2375
  %378 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %377, i64 0, i64 5, !dbg !2376
  %379 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %378, i32 0, i32 1, !dbg !2377
  %380 = bitcast %union.vec64_t* %379 to %struct.uint64v1_t*, !dbg !2378
  %381 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %380, i32 0, i32 0, !dbg !2379
  %MM5 = getelementptr inbounds [1 x i64], [1 x i64]* %381, i64 0, i64 0, !dbg !2376
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2380
  %383 = getelementptr inbounds %struct.MMX, %struct.MMX* %382, i32 0, i32 0, !dbg !2381
  %384 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %383, i64 0, i64 6, !dbg !2382
  %385 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %384, i32 0, i32 1, !dbg !2383
  %386 = bitcast %union.vec64_t* %385 to %struct.uint64v1_t*, !dbg !2384
  %387 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %386, i32 0, i32 0, !dbg !2385
  %MM6 = getelementptr inbounds [1 x i64], [1 x i64]* %387, i64 0, i64 0, !dbg !2382
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2386
  %389 = getelementptr inbounds %struct.MMX, %struct.MMX* %388, i32 0, i32 0, !dbg !2387
  %390 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %389, i64 0, i64 7, !dbg !2388
  %391 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %390, i32 0, i32 1, !dbg !2389
  %392 = bitcast %union.vec64_t* %391 to %struct.uint64v1_t*, !dbg !2390
  %393 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %392, i32 0, i32 0, !dbg !2391
  %MM7 = getelementptr inbounds [1 x i64], [1 x i64]* %393, i64 0, i64 0, !dbg !2388
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2392
  %AF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %394, i32 0, i32 5, !dbg !2393
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2394
  %CF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %395, i32 0, i32 1, !dbg !2395
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2396
  %DF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %396, i32 0, i32 11, !dbg !2397
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2398
  %OF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %397, i32 0, i32 13, !dbg !2399
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2400
  %PF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %398, i32 0, i32 3, !dbg !2401
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2402
  %SF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %399, i32 0, i32 9, !dbg !2403
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2404
  %ZF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %400, i32 0, i32 7, !dbg !2405
  store i64* @DR0, i64** %_DR0, align 8, !dbg !2406
  store i64* @DR1, i64** %_DR1, align 8, !dbg !2407
  store i64* @DR2, i64** %_DR2, align 8, !dbg !2408
  store i64* @DR3, i64** %_DR3, align 8, !dbg !2409
  store i64* @DR4, i64** %_DR4, align 8, !dbg !2410
  store i64* @DR5, i64** %_DR5, align 8, !dbg !2411
  store i64* @DR6, i64** %_DR6, align 8, !dbg !2412
  store i64* @DR7, i64** %_DR7, align 8, !dbg !2413
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR0, i32 0, i32 0), i64** %CR0, align 8, !dbg !2414
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR1, i32 0, i32 0), i64** %CR1, align 8, !dbg !2415
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR2, i32 0, i32 0), i64** %CR2, align 8, !dbg !2416
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR3, i32 0, i32 0), i64** %CR3, align 8, !dbg !2417
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR4, i32 0, i32 0), i64** %CR4, align 8, !dbg !2418
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR8, i32 0, i32 0), i64** %CR8, align 8, !dbg !2419
  ret %struct.Memory* %2, !dbg !2420
}

; Function Attrs: noduplicate noinline nounwind optnone
define void @__remill_intrinsics() local_unnamed_addr #3 !dbg !2421 {
  ret void, !dbg !2423
}

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #4

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_missing_block(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #4

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @read(i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400870___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400870:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %R15D = bitcast %union.anon* %4 to i32*
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %R15 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %5 = load i64, i64* %R15, align 8
  %6 = add i64 %1, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %RSP, align 8, !tbaa !2424
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
  %15 = load i32, i32* %EDI, align 4
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC, align 8
  store i64 %16, i64* %R15, align 8, !tbaa !2424
  %18 = load i64, i64* %R13, align 8
  %19 = add i64 %17, 5
  store i64 %19, i64* %PC, align 8
  %20 = add i64 %7, -24
  %21 = inttoptr i64 %20 to i64*
  store i64 %18, i64* %21, align 8
  %22 = load i64, i64* %R12, align 8
  %23 = load i64, i64* %PC, align 8
  %24 = add i64 %23, 2
  store i64 %24, i64* %PC, align 8
  %25 = add i64 %7, -32
  %26 = inttoptr i64 %25 to i64*
  store i64 %22, i64* %26, align 8
  %27 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%seg_600e10__init_array_type* @seg_600e10__init_array to i64), i64* %R12, align 8, !tbaa !2424
  %28 = load i64, i64* %RBP, align 8
  %29 = add i64 %27, 8
  store i64 %29, i64* %PC, align 8
  %30 = add i64 %7, -40
  %31 = inttoptr i64 %30 to i64*
  store i64 %28, i64* %31, align 8
  %32 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_600e10__init_array_type* @seg_600e10__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2424
  %33 = load i64, i64* %RBX, align 8
  %34 = add i64 %32, 8
  store i64 %34, i64* %PC, align 8
  %35 = add i64 %7, -48
  %36 = inttoptr i64 %35 to i64*
  store i64 %33, i64* %36, align 8
  %37 = load i64, i64* %RSI, align 8
  %38 = load i64, i64* %PC, align 8
  store i64 %37, i64* %R14, align 8, !tbaa !2424
  %39 = load i64, i64* %RDX, align 8
  store i64 %39, i64* %R13, align 8, !tbaa !2424
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
  store i64 %52, i64* %RBP, align 8, !tbaa !2424
  store i8 %51, i8* %43, align 1, !tbaa !2428
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #9
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  store i8 %58, i8* %44, align 1, !tbaa !2428
  store i8 0, i8* %45, align 1, !tbaa !2428
  %59 = icmp eq i64 %52, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %46, align 1, !tbaa !2428
  %61 = lshr i64 %52, 63
  %62 = trunc i64 %61 to i8
  store i8 %62, i8* %47, align 1, !tbaa !2428
  store i8 0, i8* %48, align 1, !tbaa !2428
  %63 = add i64 %38, -1139
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2424
  store i64 %63, i64* %PC, align 8, !tbaa !2424
  %67 = tail call %struct.Memory* @sub_400418__init_proc(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2429
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #9
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %44, align 1, !tbaa !2443
  %76 = icmp eq i64 %68, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %46, align 1, !tbaa !2444
  %78 = lshr i64 %68, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %47, align 1, !tbaa !2445
  store i8 0, i8* %48, align 1, !tbaa !2446
  store i8 0, i8* %45, align 1, !tbaa !2447
  %.v = select i1 %76, i64 37, i64 5
  %80 = add i64 %69, %.v
  store i64 %80, i64* %PC, align 8, !tbaa !2424
  br i1 %76, label %block_4008c6, label %block_4008a6

block_4008c6.loopexit:                            ; preds = %block_4008b0
  br label %block_4008c6

block_4008c6:                                     ; preds = %block_4008c6.loopexit, %block_400870
  %81 = phi i64 [ %80, %block_400870 ], [ %179, %block_4008c6.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_400870 ], [ %149, %block_4008c6.loopexit ]
  %82 = load i64, i64* %RSP, align 8
  %83 = add i64 %82, 8
  store i64 %83, i64* %RSP, align 8, !tbaa !2424
  %84 = icmp ugt i64 %82, -9
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %43, align 1, !tbaa !2429
  %86 = trunc i64 %83 to i32
  %87 = and i32 %86, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #9
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %44, align 1, !tbaa !2443
  %92 = xor i64 %83, %82
  %93 = lshr i64 %92, 4
  %94 = trunc i64 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %45, align 1, !tbaa !2447
  %96 = icmp eq i64 %83, 0
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %46, align 1, !tbaa !2444
  %98 = lshr i64 %83, 63
  %99 = trunc i64 %98 to i8
  store i8 %99, i8* %47, align 1, !tbaa !2445
  %100 = lshr i64 %82, 63
  %101 = xor i64 %98, %100
  %102 = add nuw nsw i64 %101, %98
  %103 = icmp eq i64 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %48, align 1, !tbaa !2446
  %105 = add i64 %81, 5
  store i64 %105, i64* %PC, align 8
  %106 = add i64 %82, 16
  %107 = inttoptr i64 %83 to i64*
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %RBX, align 8, !tbaa !2424
  store i64 %106, i64* %RSP, align 8, !tbaa !2424
  %109 = add i64 %81, 6
  store i64 %109, i64* %PC, align 8
  %110 = add i64 %82, 24
  %111 = inttoptr i64 %106 to i64*
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %RBP, align 8, !tbaa !2424
  store i64 %110, i64* %RSP, align 8, !tbaa !2424
  %113 = add i64 %81, 8
  store i64 %113, i64* %PC, align 8
  %114 = add i64 %82, 32
  %115 = inttoptr i64 %110 to i64*
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %R12, align 8, !tbaa !2424
  store i64 %114, i64* %RSP, align 8, !tbaa !2424
  %117 = add i64 %81, 10
  store i64 %117, i64* %PC, align 8
  %118 = add i64 %82, 40
  %119 = inttoptr i64 %114 to i64*
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %R13, align 8, !tbaa !2424
  store i64 %118, i64* %RSP, align 8, !tbaa !2424
  %121 = add i64 %81, 12
  store i64 %121, i64* %PC, align 8
  %122 = add i64 %82, 48
  %123 = inttoptr i64 %118 to i64*
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %R14, align 8, !tbaa !2424
  store i64 %122, i64* %RSP, align 8, !tbaa !2424
  %125 = add i64 %81, 14
  store i64 %125, i64* %PC, align 8
  %126 = add i64 %82, 56
  %127 = inttoptr i64 %122 to i64*
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %R15, align 8, !tbaa !2424
  store i64 %126, i64* %RSP, align 8, !tbaa !2424
  %129 = add i64 %81, 15
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %126 to i64*
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %PC, align 8, !tbaa !2424
  %132 = add i64 %82, 64
  store i64 %132, i64* %RSP, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.0

block_4008a6:                                     ; preds = %block_400870
  store i64 0, i64* %RBX, align 8, !tbaa !2424
  store i8 0, i8* %43, align 1, !tbaa !2429
  store i8 1, i8* %44, align 1, !tbaa !2443
  store i8 1, i8* %46, align 1, !tbaa !2444
  store i8 0, i8* %47, align 1, !tbaa !2445
  store i8 0, i8* %48, align 1, !tbaa !2446
  store i8 0, i8* %45, align 1, !tbaa !2447
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_4008b0

block_4008b0:                                     ; preds = %block_4008b0, %block_4008a6
  %134 = phi i64 [ 0, %block_4008a6 ], [ %152, %block_4008b0 ]
  %135 = phi i64 [ %133, %block_4008a6 ], [ %179, %block_4008b0 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_4008a6 ], [ %149, %block_4008b0 ]
  %136 = load i64, i64* %R13, align 8
  store i64 %136, i64* %RDX, align 8, !tbaa !2424
  %137 = load i64, i64* %R14, align 8
  store i64 %137, i64* %RSI, align 8, !tbaa !2424
  %138 = load i32, i32* %R15D, align 4
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RDI, align 8, !tbaa !2424
  %140 = load i64, i64* %R12, align 8
  %141 = shl i64 %134, 3
  %142 = add i64 %141, %140
  %143 = add i64 %135, 13
  store i64 %143, i64* %PC, align 8
  %144 = load i64, i64* %RSP, align 8, !tbaa !2424
  %145 = add i64 %144, -8
  %146 = inttoptr i64 %145 to i64*
  store i64 %143, i64* %146, align 8
  store i64 %145, i64* %RSP, align 8, !tbaa !2424
  %147 = inttoptr i64 %142 to i64*
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %PC, align 8, !tbaa !2424
  %149 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %148, %struct.Memory* %MEMORY.1)
  %150 = load i64, i64* %RBX, align 8
  %151 = load i64, i64* %PC, align 8
  %152 = add i64 %150, 1
  store i64 %152, i64* %RBX, align 8, !tbaa !2424
  %153 = lshr i64 %152, 63
  %154 = load i64, i64* %RBP, align 8
  %155 = sub i64 %154, %152
  %156 = icmp ult i64 %154, %152
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %43, align 1, !tbaa !2429
  %158 = trunc i64 %155 to i32
  %159 = and i32 %158, 255
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #9
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %44, align 1, !tbaa !2443
  %164 = xor i64 %152, %154
  %165 = xor i64 %164, %155
  %166 = lshr i64 %165, 4
  %167 = trunc i64 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %45, align 1, !tbaa !2447
  %169 = icmp eq i64 %155, 0
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %46, align 1, !tbaa !2444
  %171 = lshr i64 %155, 63
  %172 = trunc i64 %171 to i8
  store i8 %172, i8* %47, align 1, !tbaa !2445
  %173 = lshr i64 %154, 63
  %174 = xor i64 %153, %173
  %175 = xor i64 %171, %173
  %176 = add nuw nsw i64 %175, %174
  %177 = icmp eq i64 %176, 2
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %48, align 1, !tbaa !2446
  %.v2 = select i1 %169, i64 9, i64 -13
  %179 = add i64 %151, %.v2
  store i64 %179, i64* %PC, align 8, !tbaa !2424
  br i1 %169, label %block_4008c6.loopexit, label %block_4008b0
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4006d0(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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
  %.pre = load i64, i64* %RBP, align 8
  br label %block_4006d0

block_4007bf:                                     ; preds = %block_400799
  %11 = add i64 %399, -20
  %12 = add i64 %398, 4
  store i64 %12, i64* %PC, align 8
  %13 = inttoptr i64 %11 to i32*
  %14 = load i32, i32* %13, align 4
  store i8 0, i8* %5, align 1, !tbaa !2429
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #9
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %6, align 1, !tbaa !2443
  store i8 0, i8* %7, align 1, !tbaa !2447
  %20 = icmp eq i32 %14, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %8, align 1, !tbaa !2444
  %22 = lshr i32 %14, 31
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %9, align 1, !tbaa !2445
  store i8 0, i8* %10, align 1, !tbaa !2446
  %24 = icmp ne i8 %23, 0
  %25 = or i1 %20, %24
  %.v139 = select i1 %25, i64 20, i64 10
  %26 = add i64 %398, %.v139
  store i64 %26, i64* %PC, align 8, !tbaa !2424
  br i1 %25, label %block_4007d3, label %block_4007c9

block_400698:                                     ; preds = %block_40066e
  %27 = load i64, i64* %RBP, align 8
  %28 = add i64 %27, -80
  %29 = add i64 %472, 4
  store i64 %29, i64* %PC, align 8
  %30 = inttoptr i64 %28 to i64*
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %RAX, align 8, !tbaa !2424
  %32 = shl i64 %31, 3
  %33 = add i64 %32, add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 8)
  %34 = add i64 %472, 12
  store i64 %34, i64* %PC, align 8
  %35 = inttoptr i64 %33 to i64*
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %RCX, align 8, !tbaa !2424
  store i64 %36, i64* %PC, align 8, !tbaa !2424
  switch i64 %36, label %725 [
    i64 4196034, label %block_4006c2
    i64 4196048, label %block_4006d0.loopexit
    i64 4196020, label %block_4006b4
    i64 4196062, label %block_4006de
    i64 4196006, label %block_4006a6
  ]

block_400817:                                     ; preds = %block_4007eb, %block_4007df.block_400817_crit_edge
  %.pre-phi132 = phi i32* [ %.pre131, %block_4007df.block_400817_crit_edge ], [ %619, %block_4007eb ]
  %37 = phi i64 [ %232, %block_4007df.block_400817_crit_edge ], [ %645, %block_4007eb ]
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %38 = add i64 %37, 14
  store i64 %38, i64* %PC, align 8
  %39 = load i32, i32* %.pre-phi132, align 4
  %40 = sext i32 %39 to i64
  %41 = mul nsw i64 %40, 11
  store i64 %41, i64* %RCX, align 8, !tbaa !2424
  %42 = lshr i64 %41, 63
  %43 = add i64 %41, ptrtoint (%maze_type* @maze to i64)
  store i64 %43, i64* %RAX, align 8, !tbaa !2424
  %44 = icmp ult i64 %43, ptrtoint (%maze_type* @maze to i64)
  %45 = icmp ult i64 %43, %41
  %46 = or i1 %44, %45
  %47 = zext i1 %46 to i8
  store i8 %47, i8* %5, align 1, !tbaa !2429
  %48 = trunc i64 %43 to i32
  %49 = and i32 %48, 255
  %50 = tail call i32 @llvm.ctpop.i32(i32 %49) #9
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 1
  %53 = xor i8 %52, 1
  store i8 %53, i8* %6, align 1, !tbaa !2443
  %54 = xor i64 %41, ptrtoint (%maze_type* @maze to i64)
  %55 = xor i64 %54, %43
  %56 = lshr i64 %55, 4
  %57 = trunc i64 %56 to i8
  %58 = and i8 %57, 1
  store i8 %58, i8* %7, align 1, !tbaa !2447
  %59 = icmp eq i64 %43, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %8, align 1, !tbaa !2444
  %61 = lshr i64 %43, 63
  %62 = trunc i64 %61 to i8
  store i8 %62, i8* %9, align 1, !tbaa !2445
  %63 = xor i64 %61, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %64 = xor i64 %61, %42
  %65 = add nuw nsw i64 %63, %64
  %66 = icmp eq i64 %65, 2
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %10, align 1, !tbaa !2446
  %68 = add i64 %37, 25
  store i64 %68, i64* %PC, align 8
  %69 = load i32, i32* %206, align 4
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %RCX, align 8, !tbaa !2424
  %71 = add i64 %43, %70
  %72 = add i64 %37, 29
  store i64 %72, i64* %PC, align 8
  %73 = inttoptr i64 %71 to i8*
  store i8 88, i8* %73, align 1
  %74 = load i64, i64* %PC, align 8
  %75 = add i64 %74, -740
  %76 = add i64 %74, 5
  %77 = load i64, i64* %RSP, align 8, !tbaa !2424
  %78 = add i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64 %76, i64* %79, align 8
  store i64 %78, i64* %RSP, align 8, !tbaa !2424
  store i64 %75, i64* %PC, align 8, !tbaa !2424
  %80 = tail call %struct.Memory* @sub_400550_draw(%struct.State* nonnull %0, i64 %75, %struct.Memory* %MEMORY.3)
  %81 = load i64, i64* %RBP, align 8
  %82 = add i64 %81, -36
  %83 = load i64, i64* %PC, align 8
  %84 = add i64 %83, 3
  store i64 %84, i64* %PC, align 8
  %85 = inttoptr i64 %82 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = add i32 %86, 1
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %RDX, align 8, !tbaa !2424
  %89 = icmp eq i32 %86, -1
  %90 = icmp eq i32 %87, 0
  %91 = or i1 %89, %90
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %5, align 1, !tbaa !2429
  %93 = and i32 %87, 255
  %94 = tail call i32 @llvm.ctpop.i32(i32 %93) #9
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  %97 = xor i8 %96, 1
  store i8 %97, i8* %6, align 1, !tbaa !2443
  %98 = xor i32 %87, %86
  %99 = lshr i32 %98, 4
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  store i8 %101, i8* %7, align 1, !tbaa !2447
  %102 = zext i1 %90 to i8
  store i8 %102, i8* %8, align 1, !tbaa !2444
  %103 = lshr i32 %87, 31
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %9, align 1, !tbaa !2445
  %105 = lshr i32 %86, 31
  %106 = xor i32 %103, %105
  %107 = add nuw nsw i32 %106, %103
  %108 = icmp eq i32 %107, 2
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %10, align 1, !tbaa !2446
  %110 = add i64 %83, 9
  store i64 %110, i64* %PC, align 8
  store i32 %87, i32* %85, align 4
  %111 = load i64, i64* %PC, align 8
  %112 = load i64, i64* %RBP, align 8
  %113 = add i64 %112, -36
  %114 = add i64 %111, -474
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %113 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = add i32 %116, -28
  %118 = icmp ult i32 %116, 28
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %5, align 1, !tbaa !2429
  %120 = and i32 %117, 255
  %121 = tail call i32 @llvm.ctpop.i32(i32 %120) #9
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  %124 = xor i8 %123, 1
  store i8 %124, i8* %6, align 1, !tbaa !2443
  %125 = xor i32 %116, 16
  %126 = xor i32 %125, %117
  %127 = lshr i32 %126, 4
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  store i8 %129, i8* %7, align 1, !tbaa !2447
  %130 = icmp eq i32 %117, 0
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %8, align 1, !tbaa !2444
  %132 = lshr i32 %117, 31
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %9, align 1, !tbaa !2445
  %134 = lshr i32 %116, 31
  %135 = xor i32 %132, %134
  %136 = add nuw nsw i32 %135, %134
  %137 = icmp eq i32 %136, 2
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %10, align 1, !tbaa !2446
  %139 = icmp ne i8 %133, 0
  %140 = xor i1 %139, %137
  %.v136 = select i1 %140, i64 -468, i64 5
  %141 = add i64 %111, %.v136
  store i64 %141, i64* %PC, align 8, !tbaa !2424
  br i1 %140, label %block_40066e, label %block_400847

block_400736:                                     ; preds = %block_400710
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %142 = add i64 %332, -758
  %143 = add i64 %332, 17
  %144 = load i64, i64* %RSP, align 8, !tbaa !2424
  %145 = add i64 %144, -8
  %146 = inttoptr i64 %145 to i64*
  store i64 %143, i64* %146, align 8
  store i64 %145, i64* %RSP, align 8, !tbaa !2424
  store i64 %142, i64* %PC, align 8, !tbaa !2424
  %147 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.3)
  %148 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2424
  %149 = load i64, i64* %RBP, align 8
  %150 = add i64 %149, -64
  store i64 %150, i64* %RSI, align 8, !tbaa !2424
  %151 = add i64 %149, -96
  %152 = load i32, i32* %EAX, align 4
  %153 = add i64 %148, 17
  store i64 %153, i64* %PC, align 8
  %154 = inttoptr i64 %151 to i32*
  store i32 %152, i32* %154, align 4
  %155 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %156 = add i64 %155, -792
  %157 = add i64 %155, 7
  %158 = load i64, i64* %RSP, align 8, !tbaa !2424
  %159 = add i64 %158, -8
  %160 = inttoptr i64 %159 to i64*
  store i64 %157, i64* %160, align 8
  store i64 %159, i64* %RSP, align 8, !tbaa !2424
  store i64 %156, i64* %PC, align 8, !tbaa !2424
  %161 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %147)
  %162 = load i64, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %5, align 1, !tbaa !2429
  store i8 1, i8* %6, align 1, !tbaa !2443
  store i8 1, i8* %8, align 1, !tbaa !2444
  store i8 0, i8* %9, align 1, !tbaa !2445
  store i8 0, i8* %10, align 1, !tbaa !2446
  store i8 0, i8* %7, align 1, !tbaa !2447
  %163 = load i64, i64* %RBP, align 8
  %164 = add i64 %163, -100
  %165 = load i32, i32* %EAX, align 4
  %166 = add i64 %162, 5
  store i64 %166, i64* %PC, align 8
  %167 = inttoptr i64 %164 to i32*
  store i32 %165, i32* %167, align 4
  %168 = load i64, i64* %PC, align 8
  %169 = add i64 %168, -772
  %170 = add i64 %168, 5
  %171 = load i64, i64* %RSP, align 8, !tbaa !2424
  %172 = add i64 %171, -8
  %173 = inttoptr i64 %172 to i64*
  store i64 %170, i64* %173, align 8
  store i64 %172, i64* %RSP, align 8, !tbaa !2424
  store i64 %169, i64* %PC, align 8, !tbaa !2424
  %174 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %161)
  %175 = load i64, i64* %PC, align 8
  %176 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %175, %struct.Memory* %174)
  ret %struct.Memory* %176

block_4007d3:                                     ; preds = %block_400799, %block_40078f, %block_4007c9, %block_4007bf
  %177 = phi i64 [ %611, %block_40078f ], [ %584, %block_4007c9 ], [ %26, %block_4007bf ], [ %398, %block_400799 ]
  %178 = phi i64 [ %585, %block_40078f ], [ %399, %block_4007c9 ], [ %399, %block_4007bf ], [ %399, %block_400799 ]
  %179 = add i64 %178, -28
  %180 = add i64 %177, 3
  store i64 %180, i64* %PC, align 8
  %181 = inttoptr i64 %179 to i32*
  %182 = load i32, i32* %181, align 4
  %183 = zext i32 %182 to i64
  store i64 %183, i64* %RAX, align 8, !tbaa !2424
  %184 = add i64 %178, -20
  %185 = add i64 %177, 6
  store i64 %185, i64* %PC, align 8
  %186 = inttoptr i64 %184 to i32*
  store i32 %182, i32* %186, align 4
  %187 = load i64, i64* %RBP, align 8
  %188 = add i64 %187, -32
  %189 = load i64, i64* %PC, align 8
  %190 = add i64 %189, 3
  store i64 %190, i64* %PC, align 8
  %191 = inttoptr i64 %188 to i32*
  %192 = load i32, i32* %191, align 4
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RAX, align 8, !tbaa !2424
  %194 = add i64 %187, -24
  %195 = add i64 %189, 6
  store i64 %195, i64* %PC, align 8
  %196 = inttoptr i64 %194 to i32*
  store i32 %192, i32* %196, align 4
  %.pre128 = load i64, i64* %PC, align 8
  br label %block_4007df

block_4007df:                                     ; preds = %block_4007c9, %block_400769, %block_4007d3
  %197 = phi i64 [ %584, %block_4007c9 ], [ %539, %block_400769 ], [ %.pre128, %block_4007d3 ]
  %198 = load i64, i64* %RBP, align 8
  %199 = add i64 %198, -28
  %200 = add i64 %197, 3
  store i64 %200, i64* %PC, align 8
  %201 = inttoptr i64 %199 to i32*
  %202 = load i32, i32* %201, align 4
  %203 = zext i32 %202 to i64
  store i64 %203, i64* %RAX, align 8, !tbaa !2424
  %204 = add i64 %198, -20
  %205 = add i64 %197, 6
  store i64 %205, i64* %PC, align 8
  %206 = inttoptr i64 %204 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = sub i32 %202, %207
  %209 = icmp ult i32 %202, %207
  %210 = zext i1 %209 to i8
  store i8 %210, i8* %5, align 1, !tbaa !2429
  %211 = and i32 %208, 255
  %212 = tail call i32 @llvm.ctpop.i32(i32 %211) #9
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  %215 = xor i8 %214, 1
  store i8 %215, i8* %6, align 1, !tbaa !2443
  %216 = xor i32 %207, %202
  %217 = xor i32 %216, %208
  %218 = lshr i32 %217, 4
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  store i8 %220, i8* %7, align 1, !tbaa !2447
  %221 = icmp eq i32 %208, 0
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %8, align 1, !tbaa !2444
  %223 = lshr i32 %208, 31
  %224 = trunc i32 %223 to i8
  store i8 %224, i8* %9, align 1, !tbaa !2445
  %225 = lshr i32 %202, 31
  %226 = lshr i32 %207, 31
  %227 = xor i32 %226, %225
  %228 = xor i32 %223, %225
  %229 = add nuw nsw i32 %228, %227
  %230 = icmp eq i32 %229, 2
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %10, align 1, !tbaa !2446
  %.v135 = select i1 %221, i64 12, i64 56
  %232 = add i64 %197, %.v135
  store i64 %232, i64* %PC, align 8, !tbaa !2424
  br i1 %221, label %block_4007eb, label %block_4007df.block_400817_crit_edge

block_4007df.block_400817_crit_edge:              ; preds = %block_4007df
  %.pre130 = add i64 %198, -24
  %.pre131 = inttoptr i64 %.pre130 to i32*
  br label %block_400817

block_4006b4:                                     ; preds = %block_400698
  %233 = add i64 %27, -24
  store i64 4196023, i64* %PC, align 8
  %234 = inttoptr i64 %233 to i32*
  %235 = load i32, i32* %234, align 4
  store i64 4196026, i64* %PC, align 8
  %236 = add i32 %235, 1
  %237 = zext i32 %236 to i64
  store i64 %237, i64* %RAX, align 8, !tbaa !2424
  %238 = icmp eq i32 %235, -1
  %239 = icmp eq i32 %236, 0
  %240 = or i1 %238, %239
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %5, align 1, !tbaa !2429
  %242 = and i32 %236, 255
  %243 = tail call i32 @llvm.ctpop.i32(i32 %242) #9
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  store i8 %246, i8* %6, align 1, !tbaa !2443
  %247 = xor i32 %236, %235
  br label %block_400710

block_400710:                                     ; preds = %block_4006d0, %block_4006b4
  %248 = phi i64 [ %708, %block_4006d0 ], [ 4196026, %block_4006b4 ]
  %.sink = phi i32 [ %709, %block_4006d0 ], [ %236, %block_4006b4 ]
  %249 = phi i64 [ %703, %block_4006d0 ], [ %27, %block_4006b4 ]
  %.sink102 = phi i32 [ %720, %block_4006d0 ], [ %247, %block_4006b4 ]
  %.sink98 = phi i1 [ %712, %block_4006d0 ], [ %239, %block_4006b4 ]
  %.sink93 = phi i32 [ %707, %block_4006d0 ], [ %235, %block_4006b4 ]
  %.sink20 = phi i64 [ -20, %block_4006d0 ], [ -24, %block_4006b4 ]
  %.sink5 = phi i64 [ 55, %block_4006d0 ], [ 83, %block_4006b4 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.5, %block_4006d0 ], [ %80, %block_4006b4 ]
  %250 = lshr i32 %.sink102, 4
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  store i8 %252, i8* %7, align 1, !tbaa !2447
  %253 = zext i1 %.sink98 to i8
  store i8 %253, i8* %8, align 1, !tbaa !2444
  %254 = lshr i32 %.sink, 31
  %255 = trunc i32 %254 to i8
  store i8 %255, i8* %9, align 1, !tbaa !2445
  %256 = lshr i32 %.sink93, 31
  %257 = xor i32 %254, %256
  %258 = add nuw nsw i32 %257, %254
  %259 = icmp eq i32 %258, 2
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %10, align 1, !tbaa !2446
  %261 = add i64 %249, %.sink20
  %262 = add i64 %248, 3
  store i64 %262, i64* %PC, align 8
  %263 = inttoptr i64 %261 to i32*
  store i32 %.sink, i32* %263, align 4
  %264 = load i64, i64* %PC, align 8
  %265 = add i64 %264, %.sink5
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %266 = load i64, i64* %RBP, align 8
  %267 = add i64 %266, -24
  %268 = add i64 %265, 14
  store i64 %268, i64* %PC, align 8
  %269 = inttoptr i64 %267 to i32*
  %270 = load i32, i32* %269, align 4
  %271 = sext i32 %270 to i64
  %272 = mul nsw i64 %271, 11
  store i64 %272, i64* %RCX, align 8, !tbaa !2424
  %273 = lshr i64 %272, 63
  %274 = add i64 %272, ptrtoint (%maze_type* @maze to i64)
  store i64 %274, i64* %RAX, align 8, !tbaa !2424
  %275 = icmp ult i64 %274, ptrtoint (%maze_type* @maze to i64)
  %276 = icmp ult i64 %274, %272
  %277 = or i1 %275, %276
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %5, align 1, !tbaa !2429
  %279 = trunc i64 %274 to i32
  %280 = and i32 %279, 255
  %281 = tail call i32 @llvm.ctpop.i32(i32 %280) #9
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  %284 = xor i8 %283, 1
  store i8 %284, i8* %6, align 1, !tbaa !2443
  %285 = xor i64 %272, ptrtoint (%maze_type* @maze to i64)
  %286 = xor i64 %285, %274
  %287 = lshr i64 %286, 4
  %288 = trunc i64 %287 to i8
  %289 = and i8 %288, 1
  store i8 %289, i8* %7, align 1, !tbaa !2447
  %290 = icmp eq i64 %274, 0
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %8, align 1, !tbaa !2444
  %292 = lshr i64 %274, 63
  %293 = trunc i64 %292 to i8
  store i8 %293, i8* %9, align 1, !tbaa !2445
  %294 = xor i64 %292, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %295 = xor i64 %292, %273
  %296 = add nuw nsw i64 %294, %295
  %297 = icmp eq i64 %296, 2
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %10, align 1, !tbaa !2446
  %299 = add i64 %266, -20
  %300 = add i64 %265, 25
  store i64 %300, i64* %PC, align 8
  %301 = inttoptr i64 %299 to i32*
  %302 = load i32, i32* %301, align 4
  %303 = sext i32 %302 to i64
  store i64 %303, i64* %RCX, align 8, !tbaa !2424
  %304 = add i64 %274, %303
  %305 = add i64 %265, 29
  store i64 %305, i64* %PC, align 8
  %306 = inttoptr i64 %304 to i8*
  %307 = load i8, i8* %306, align 1
  %308 = sext i8 %307 to i64
  %309 = and i64 %308, 4294967295
  store i64 %309, i64* %RDX, align 8, !tbaa !2424
  %310 = sext i8 %307 to i32
  %311 = add nsw i32 %310, -35
  %312 = icmp ult i8 %307, 35
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %5, align 1, !tbaa !2429
  %314 = and i32 %311, 255
  %315 = tail call i32 @llvm.ctpop.i32(i32 %314) #9
  %316 = trunc i32 %315 to i8
  %317 = and i8 %316, 1
  %318 = xor i8 %317, 1
  store i8 %318, i8* %6, align 1, !tbaa !2443
  %319 = xor i32 %311, %310
  %320 = lshr i32 %319, 4
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  store i8 %322, i8* %7, align 1, !tbaa !2447
  %323 = icmp eq i32 %311, 0
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %8, align 1, !tbaa !2444
  %325 = lshr i32 %311, 31
  %326 = trunc i32 %325 to i8
  store i8 %326, i8* %9, align 1, !tbaa !2445
  %327 = lshr i32 %310, 31
  %328 = xor i32 %325, %327
  %329 = add nuw nsw i32 %328, %327
  %330 = icmp eq i32 %329, 2
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %10, align 1, !tbaa !2446
  %.v = select i1 %323, i64 38, i64 89
  %332 = add i64 %265, %.v
  %333 = add i64 %332, 10
  store i64 %333, i64* %PC, align 8
  br i1 %323, label %block_400736, label %block_400769

block_400799:                                     ; preds = %block_40078f
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %334 = add i64 %611, 14
  store i64 %334, i64* %PC, align 8
  %335 = load i32, i32* %588, align 4
  %336 = sext i32 %335 to i64
  %337 = mul nsw i64 %336, 11
  store i64 %337, i64* %RCX, align 8, !tbaa !2424
  %338 = lshr i64 %337, 63
  %339 = add i64 %337, ptrtoint (%maze_type* @maze to i64)
  store i64 %339, i64* %RAX, align 8, !tbaa !2424
  %340 = icmp ult i64 %339, ptrtoint (%maze_type* @maze to i64)
  %341 = icmp ult i64 %339, %337
  %342 = or i1 %340, %341
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %5, align 1, !tbaa !2429
  %344 = trunc i64 %339 to i32
  %345 = and i32 %344, 255
  %346 = tail call i32 @llvm.ctpop.i32(i32 %345) #9
  %347 = trunc i32 %346 to i8
  %348 = and i8 %347, 1
  %349 = xor i8 %348, 1
  store i8 %349, i8* %6, align 1, !tbaa !2443
  %350 = xor i64 %337, ptrtoint (%maze_type* @maze to i64)
  %351 = xor i64 %350, %339
  %352 = lshr i64 %351, 4
  %353 = trunc i64 %352 to i8
  %354 = and i8 %353, 1
  store i8 %354, i8* %7, align 1, !tbaa !2447
  %355 = icmp eq i64 %339, 0
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %8, align 1, !tbaa !2444
  %357 = lshr i64 %339, 63
  %358 = trunc i64 %357 to i8
  store i8 %358, i8* %9, align 1, !tbaa !2445
  %359 = xor i64 %357, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %360 = xor i64 %357, %338
  %361 = add nuw nsw i64 %359, %360
  %362 = icmp eq i64 %361, 2
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %10, align 1, !tbaa !2446
  %364 = add i64 %585, -20
  %365 = add i64 %611, 25
  store i64 %365, i64* %PC, align 8
  %366 = inttoptr i64 %364 to i32*
  %367 = load i32, i32* %366, align 4
  %368 = sext i32 %367 to i64
  store i64 %368, i64* %RCX, align 8, !tbaa !2424
  %369 = add i64 %339, %368
  %370 = add i64 %611, 29
  store i64 %370, i64* %PC, align 8
  %371 = inttoptr i64 %369 to i8*
  %372 = load i8, i8* %371, align 1
  %373 = sext i8 %372 to i64
  %374 = and i64 %373, 4294967295
  store i64 %374, i64* %RDX, align 8, !tbaa !2424
  %375 = sext i8 %372 to i32
  %376 = add nsw i32 %375, -124
  %377 = icmp ult i8 %372, 124
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %5, align 1, !tbaa !2429
  %379 = and i32 %376, 255
  %380 = tail call i32 @llvm.ctpop.i32(i32 %379) #9
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  store i8 %383, i8* %6, align 1, !tbaa !2443
  %384 = xor i32 %375, 16
  %385 = xor i32 %384, %376
  %386 = lshr i32 %385, 4
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  store i8 %388, i8* %7, align 1, !tbaa !2447
  %389 = icmp eq i32 %376, 0
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %8, align 1, !tbaa !2444
  %391 = lshr i32 %376, 31
  %392 = trunc i32 %391 to i8
  store i8 %392, i8* %9, align 1, !tbaa !2445
  %393 = lshr i32 %375, 31
  %394 = xor i32 %391, %393
  %395 = add nuw nsw i32 %394, %393
  %396 = icmp eq i32 %395, 2
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %10, align 1, !tbaa !2446
  %.v138 = select i1 %389, i64 38, i64 58
  %398 = add i64 %611, %.v138
  store i64 %398, i64* %PC, align 8, !tbaa !2424
  %399 = load i64, i64* %RBP, align 8
  br i1 %389, label %block_4007bf, label %block_4007d3

block_40066e:                                     ; preds = %block_400817
  %400 = add i64 %112, -20
  %401 = add i64 %141, 3
  store i64 %401, i64* %PC, align 8
  %402 = inttoptr i64 %400 to i32*
  %403 = load i32, i32* %402, align 4
  %404 = zext i32 %403 to i64
  store i64 %404, i64* %RAX, align 8, !tbaa !2424
  %405 = add i64 %112, -28
  %406 = add i64 %141, 6
  store i64 %406, i64* %PC, align 8
  %407 = inttoptr i64 %405 to i32*
  store i32 %403, i32* %407, align 4
  %408 = load i64, i64* %RBP, align 8
  %409 = add i64 %408, -24
  %410 = load i64, i64* %PC, align 8
  %411 = add i64 %410, 3
  store i64 %411, i64* %PC, align 8
  %412 = inttoptr i64 %409 to i32*
  %413 = load i32, i32* %412, align 4
  %414 = zext i32 %413 to i64
  store i64 %414, i64* %RAX, align 8, !tbaa !2424
  %415 = add i64 %408, -32
  %416 = add i64 %410, 6
  store i64 %416, i64* %PC, align 8
  %417 = inttoptr i64 %415 to i32*
  store i32 %413, i32* %417, align 4
  %418 = load i64, i64* %RBP, align 8
  %419 = add i64 %418, -36
  %420 = load i64, i64* %PC, align 8
  %421 = add i64 %420, 4
  store i64 %421, i64* %PC, align 8
  %422 = inttoptr i64 %419 to i32*
  %423 = load i32, i32* %422, align 4
  %424 = sext i32 %423 to i64
  store i64 %424, i64* %RCX, align 8, !tbaa !2424
  %425 = add nsw i64 %424, -64
  %426 = add i64 %425, %418
  %427 = add i64 %420, 9
  store i64 %427, i64* %PC, align 8
  %428 = inttoptr i64 %426 to i8*
  %429 = load i8, i8* %428, align 1
  %430 = sext i8 %429 to i32
  %431 = add nsw i32 %430, -97
  %432 = zext i32 %431 to i64
  %433 = lshr i32 %431, 31
  store i64 %432, i64* %RCX, align 8, !tbaa !2424
  %434 = add nsw i32 %430, -119
  %435 = zext i32 %434 to i64
  store i64 %435, i64* %RAX, align 8, !tbaa !2424
  %436 = icmp ult i32 %431, 22
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %5, align 1, !tbaa !2429
  %438 = and i32 %434, 255
  %439 = tail call i32 @llvm.ctpop.i32(i32 %438) #9
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  %442 = xor i8 %441, 1
  store i8 %442, i8* %6, align 1, !tbaa !2443
  %443 = xor i32 %431, 16
  %444 = xor i32 %443, %434
  %445 = lshr i32 %444, 4
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  store i8 %447, i8* %7, align 1, !tbaa !2447
  %448 = icmp eq i32 %434, 0
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %8, align 1, !tbaa !2444
  %450 = lshr i32 %434, 31
  %451 = trunc i32 %450 to i8
  store i8 %451, i8* %9, align 1, !tbaa !2445
  %452 = xor i32 %450, %433
  %453 = add nuw nsw i32 %452, %433
  %454 = icmp eq i32 %453, 2
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %10, align 1, !tbaa !2446
  %456 = add i64 %418, -80
  %457 = add i64 %420, 21
  store i64 %457, i64* %PC, align 8
  %458 = inttoptr i64 %456 to i64*
  store i64 %432, i64* %458, align 8
  %459 = load i64, i64* %RBP, align 8
  %460 = add i64 %459, -84
  %461 = load i32, i32* %EAX, align 4
  %462 = load i64, i64* %PC, align 8
  %463 = add i64 %462, 3
  store i64 %463, i64* %PC, align 8
  %464 = inttoptr i64 %460 to i32*
  store i32 %461, i32* %464, align 4
  %465 = load i64, i64* %PC, align 8
  %466 = add i64 %465, 76
  %467 = add i64 %465, 6
  %468 = load i8, i8* %5, align 1, !tbaa !2429
  %469 = load i8, i8* %8, align 1, !tbaa !2444
  %470 = or i8 %469, %468
  %471 = icmp eq i8 %470, 0
  %472 = select i1 %471, i64 %466, i64 %467
  store i64 %472, i64* %PC, align 8, !tbaa !2424
  br i1 %471, label %block_4006de, label %block_400698

block_400769:                                     ; preds = %block_400710
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %473 = load i64, i64* %RBP, align 8
  %474 = add i64 %473, -24
  %475 = add i64 %332, 14
  store i64 %475, i64* %PC, align 8
  %476 = inttoptr i64 %474 to i32*
  %477 = load i32, i32* %476, align 4
  %478 = sext i32 %477 to i64
  %479 = mul nsw i64 %478, 11
  store i64 %479, i64* %RCX, align 8, !tbaa !2424
  %480 = lshr i64 %479, 63
  %481 = add i64 %479, ptrtoint (%maze_type* @maze to i64)
  store i64 %481, i64* %RAX, align 8, !tbaa !2424
  %482 = icmp ult i64 %481, ptrtoint (%maze_type* @maze to i64)
  %483 = icmp ult i64 %481, %479
  %484 = or i1 %482, %483
  %485 = zext i1 %484 to i8
  store i8 %485, i8* %5, align 1, !tbaa !2429
  %486 = trunc i64 %481 to i32
  %487 = and i32 %486, 255
  %488 = tail call i32 @llvm.ctpop.i32(i32 %487) #9
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  %491 = xor i8 %490, 1
  store i8 %491, i8* %6, align 1, !tbaa !2443
  %492 = xor i64 %479, ptrtoint (%maze_type* @maze to i64)
  %493 = xor i64 %492, %481
  %494 = lshr i64 %493, 4
  %495 = trunc i64 %494 to i8
  %496 = and i8 %495, 1
  store i8 %496, i8* %7, align 1, !tbaa !2447
  %497 = icmp eq i64 %481, 0
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %8, align 1, !tbaa !2444
  %499 = lshr i64 %481, 63
  %500 = trunc i64 %499 to i8
  store i8 %500, i8* %9, align 1, !tbaa !2445
  %501 = xor i64 %499, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %502 = xor i64 %499, %480
  %503 = add nuw nsw i64 %501, %502
  %504 = icmp eq i64 %503, 2
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %10, align 1, !tbaa !2446
  %506 = add i64 %473, -20
  %507 = add i64 %332, 25
  store i64 %507, i64* %PC, align 8
  %508 = inttoptr i64 %506 to i32*
  %509 = load i32, i32* %508, align 4
  %510 = sext i32 %509 to i64
  store i64 %510, i64* %RCX, align 8, !tbaa !2424
  %511 = add i64 %481, %510
  %512 = add i64 %332, 29
  store i64 %512, i64* %PC, align 8
  %513 = inttoptr i64 %511 to i8*
  %514 = load i8, i8* %513, align 1
  %515 = sext i8 %514 to i64
  %516 = and i64 %515, 4294967295
  store i64 %516, i64* %RDX, align 8, !tbaa !2424
  %517 = sext i8 %514 to i32
  %518 = add nsw i32 %517, -32
  %519 = icmp ult i8 %514, 32
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %5, align 1, !tbaa !2429
  %521 = and i32 %518, 255
  %522 = tail call i32 @llvm.ctpop.i32(i32 %521) #9
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  %525 = xor i8 %524, 1
  store i8 %525, i8* %6, align 1, !tbaa !2443
  %526 = xor i32 %518, %517
  %527 = lshr i32 %526, 4
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  store i8 %529, i8* %7, align 1, !tbaa !2447
  %530 = icmp eq i32 %518, 0
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %8, align 1, !tbaa !2444
  %532 = lshr i32 %518, 31
  %533 = trunc i32 %532 to i8
  store i8 %533, i8* %9, align 1, !tbaa !2445
  %534 = lshr i32 %517, 31
  %535 = xor i32 %532, %534
  %536 = add nuw nsw i32 %535, %534
  %537 = icmp eq i32 %536, 2
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %10, align 1, !tbaa !2446
  %.v133 = select i1 %530, i64 118, i64 38
  %539 = add i64 %332, %.v133
  store i64 %539, i64* %PC, align 8, !tbaa !2424
  br i1 %530, label %block_4007df, label %block_40078f

block_4007f7:                                     ; preds = %block_4007eb
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %540 = add i64 %645, -951
  %541 = add i64 %645, 17
  %542 = load i64, i64* %RSP, align 8, !tbaa !2424
  %543 = add i64 %542, -8
  %544 = inttoptr i64 %543 to i64*
  store i64 %541, i64* %544, align 8
  store i64 %543, i64* %RSP, align 8, !tbaa !2424
  store i64 %540, i64* %PC, align 8, !tbaa !2424
  %545 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.3)
  %546 = load i64, i64* %RBP, align 8
  %547 = add i64 %546, -4
  %548 = load i64, i64* %PC, align 8
  %549 = add i64 %548, 7
  store i64 %549, i64* %PC, align 8
  %550 = inttoptr i64 %547 to i32*
  store i32 2, i32* %550, align 4
  %551 = load i64, i64* %RBP, align 8
  %552 = add i64 %551, -104
  %553 = load i32, i32* %EAX, align 4
  %554 = load i64, i64* %PC, align 8
  %555 = add i64 %554, 3
  store i64 %555, i64* %PC, align 8
  %556 = inttoptr i64 %552 to i32*
  store i32 %553, i32* %556, align 4
  %557 = load i64, i64* %PC, align 8
  %558 = add i64 %557, 80
  store i64 %558, i64* %PC, align 8, !tbaa !2424
  br label %block_400862

block_4007c9:                                     ; preds = %block_4007bf
  %559 = add i64 %26, 4
  store i64 %559, i64* %PC, align 8
  %560 = load i32, i32* %13, align 4
  %561 = add i32 %560, -11
  %562 = icmp ult i32 %560, 11
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %5, align 1, !tbaa !2429
  %564 = and i32 %561, 255
  %565 = tail call i32 @llvm.ctpop.i32(i32 %564) #9
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 1
  %568 = xor i8 %567, 1
  store i8 %568, i8* %6, align 1, !tbaa !2443
  %569 = xor i32 %561, %560
  %570 = lshr i32 %569, 4
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  store i8 %572, i8* %7, align 1, !tbaa !2447
  %573 = icmp eq i32 %561, 0
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %8, align 1, !tbaa !2444
  %575 = lshr i32 %561, 31
  %576 = trunc i32 %575 to i8
  store i8 %576, i8* %9, align 1, !tbaa !2445
  %577 = lshr i32 %560, 31
  %578 = xor i32 %575, %577
  %579 = add nuw nsw i32 %578, %577
  %580 = icmp eq i32 %579, 2
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %10, align 1, !tbaa !2446
  %582 = icmp ne i8 %576, 0
  %583 = xor i1 %582, %580
  %.v140 = select i1 %583, i64 22, i64 10
  %584 = add i64 %26, %.v140
  store i64 %584, i64* %PC, align 8, !tbaa !2424
  br i1 %583, label %block_4007df, label %block_4007d3

block_40078f:                                     ; preds = %block_400769
  %585 = load i64, i64* %RBP, align 8
  %586 = add i64 %585, -24
  %587 = add i64 %539, 4
  store i64 %587, i64* %PC, align 8
  %588 = inttoptr i64 %586 to i32*
  %589 = load i32, i32* %588, align 4
  %590 = add i32 %589, -2
  %591 = icmp ult i32 %589, 2
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %5, align 1, !tbaa !2429
  %593 = and i32 %590, 255
  %594 = tail call i32 @llvm.ctpop.i32(i32 %593) #9
  %595 = trunc i32 %594 to i8
  %596 = and i8 %595, 1
  %597 = xor i8 %596, 1
  store i8 %597, i8* %6, align 1, !tbaa !2443
  %598 = xor i32 %590, %589
  %599 = lshr i32 %598, 4
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  store i8 %601, i8* %7, align 1, !tbaa !2447
  %602 = icmp eq i32 %590, 0
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %8, align 1, !tbaa !2444
  %604 = lshr i32 %590, 31
  %605 = trunc i32 %604 to i8
  store i8 %605, i8* %9, align 1, !tbaa !2445
  %606 = lshr i32 %589, 31
  %607 = xor i32 %604, %606
  %608 = add nuw nsw i32 %607, %606
  %609 = icmp eq i32 %608, 2
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %10, align 1, !tbaa !2446
  %.v134 = select i1 %602, i64 10, i64 68
  %611 = add i64 %539, %.v134
  store i64 %611, i64* %PC, align 8, !tbaa !2424
  br i1 %602, label %block_400799, label %block_4007d3

block_4007eb:                                     ; preds = %block_4007df
  %612 = add i64 %198, -32
  %613 = add i64 %232, 3
  store i64 %613, i64* %PC, align 8
  %614 = inttoptr i64 %612 to i32*
  %615 = load i32, i32* %614, align 4
  %616 = zext i32 %615 to i64
  store i64 %616, i64* %RAX, align 8, !tbaa !2424
  %617 = add i64 %198, -24
  %618 = add i64 %232, 6
  store i64 %618, i64* %PC, align 8
  %619 = inttoptr i64 %617 to i32*
  %620 = load i32, i32* %619, align 4
  %621 = sub i32 %615, %620
  %622 = icmp ult i32 %615, %620
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %5, align 1, !tbaa !2429
  %624 = and i32 %621, 255
  %625 = tail call i32 @llvm.ctpop.i32(i32 %624) #9
  %626 = trunc i32 %625 to i8
  %627 = and i8 %626, 1
  %628 = xor i8 %627, 1
  store i8 %628, i8* %6, align 1, !tbaa !2443
  %629 = xor i32 %620, %615
  %630 = xor i32 %629, %621
  %631 = lshr i32 %630, 4
  %632 = trunc i32 %631 to i8
  %633 = and i8 %632, 1
  store i8 %633, i8* %7, align 1, !tbaa !2447
  %634 = icmp eq i32 %621, 0
  %635 = zext i1 %634 to i8
  store i8 %635, i8* %8, align 1, !tbaa !2444
  %636 = lshr i32 %621, 31
  %637 = trunc i32 %636 to i8
  store i8 %637, i8* %9, align 1, !tbaa !2445
  %638 = lshr i32 %615, 31
  %639 = lshr i32 %620, 31
  %640 = xor i32 %639, %638
  %641 = xor i32 %636, %638
  %642 = add nuw nsw i32 %641, %640
  %643 = icmp eq i32 %642, 2
  %644 = zext i1 %643 to i8
  store i8 %644, i8* %10, align 1, !tbaa !2446
  %.v137 = select i1 %634, i64 12, i64 44
  %645 = add i64 %232, %.v137
  store i64 %645, i64* %PC, align 8, !tbaa !2424
  br i1 %634, label %block_4007f7, label %block_400817

block_400847:                                     ; preds = %block_400817
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %646 = add i64 %141, -1031
  %647 = add i64 %141, 17
  %648 = load i64, i64* %RSP, align 8, !tbaa !2424
  %649 = add i64 %648, -8
  %650 = inttoptr i64 %649 to i64*
  store i64 %647, i64* %650, align 8
  store i64 %649, i64* %RSP, align 8, !tbaa !2424
  store i64 %646, i64* %PC, align 8, !tbaa !2424
  %651 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %80)
  %652 = load i64, i64* %RBP, align 8
  %653 = add i64 %652, -4
  %654 = load i64, i64* %PC, align 8
  %655 = add i64 %654, 7
  store i64 %655, i64* %PC, align 8
  %656 = inttoptr i64 %653 to i32*
  store i32 1, i32* %656, align 4
  %657 = load i64, i64* %RBP, align 8
  %658 = add i64 %657, -108
  %659 = load i32, i32* %EAX, align 4
  %660 = load i64, i64* %PC, align 8
  %661 = add i64 %660, 3
  store i64 %661, i64* %PC, align 8
  %662 = inttoptr i64 %658 to i32*
  store i32 %659, i32* %662, align 4
  %.pre129 = load i64, i64* %PC, align 8
  br label %block_400862

block_400862:                                     ; preds = %block_400847, %block_4007f7
  %663 = phi i64 [ %.pre129, %block_400847 ], [ %558, %block_4007f7 ]
  %MEMORY.4 = phi %struct.Memory* [ %651, %block_400847 ], [ %545, %block_4007f7 ]
  %664 = load i64, i64* %RBP, align 8
  %665 = add i64 %664, -4
  %666 = add i64 %663, 3
  store i64 %666, i64* %PC, align 8
  %667 = inttoptr i64 %665 to i32*
  %668 = load i32, i32* %667, align 4
  %669 = zext i32 %668 to i64
  store i64 %669, i64* %RAX, align 8, !tbaa !2424
  %670 = load i64, i64* %RSP, align 8
  %671 = add i64 %670, 112
  store i64 %671, i64* %RSP, align 8, !tbaa !2424
  %672 = icmp ugt i64 %670, -113
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %5, align 1, !tbaa !2429
  %674 = trunc i64 %671 to i32
  %675 = and i32 %674, 255
  %676 = tail call i32 @llvm.ctpop.i32(i32 %675) #9
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  %679 = xor i8 %678, 1
  store i8 %679, i8* %6, align 1, !tbaa !2443
  %680 = xor i64 %670, 16
  %681 = xor i64 %680, %671
  %682 = lshr i64 %681, 4
  %683 = trunc i64 %682 to i8
  %684 = and i8 %683, 1
  store i8 %684, i8* %7, align 1, !tbaa !2447
  %685 = icmp eq i64 %671, 0
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %8, align 1, !tbaa !2444
  %687 = lshr i64 %671, 63
  %688 = trunc i64 %687 to i8
  store i8 %688, i8* %9, align 1, !tbaa !2445
  %689 = lshr i64 %670, 63
  %690 = xor i64 %687, %689
  %691 = add nuw nsw i64 %690, %687
  %692 = icmp eq i64 %691, 2
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %10, align 1, !tbaa !2446
  %694 = add i64 %663, 8
  store i64 %694, i64* %PC, align 8
  %695 = add i64 %670, 120
  %696 = inttoptr i64 %671 to i64*
  %697 = load i64, i64* %696, align 8
  store i64 %697, i64* %RBP, align 8, !tbaa !2424
  store i64 %695, i64* %RSP, align 8, !tbaa !2424
  %698 = add i64 %663, 9
  store i64 %698, i64* %PC, align 8
  %699 = inttoptr i64 %695 to i64*
  %700 = load i64, i64* %699, align 8
  store i64 %700, i64* %PC, align 8, !tbaa !2424
  %701 = add i64 %670, 128
  store i64 %701, i64* %RSP, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.4

block_4006d0.loopexit:                            ; preds = %block_400698
  br label %block_4006d0

block_4006d0:                                     ; preds = %block_4006d0.loopexit, %3
  %702 = phi i64 [ %1, %3 ], [ 4196048, %block_4006d0.loopexit ]
  %703 = phi i64 [ %.pre, %3 ], [ %27, %block_4006d0.loopexit ]
  %MEMORY.5 = phi %struct.Memory* [ %2, %3 ], [ %80, %block_4006d0.loopexit ]
  %704 = add i64 %703, -20
  %705 = add i64 %702, 3
  store i64 %705, i64* %PC, align 8
  %706 = inttoptr i64 %704 to i32*
  %707 = load i32, i32* %706, align 4
  %708 = add i64 %702, 6
  store i64 %708, i64* %PC, align 8
  %709 = add i32 %707, 1
  %710 = zext i32 %709 to i64
  store i64 %710, i64* %RAX, align 8, !tbaa !2424
  %711 = icmp eq i32 %707, -1
  %712 = icmp eq i32 %709, 0
  %713 = or i1 %711, %712
  %714 = zext i1 %713 to i8
  store i8 %714, i8* %5, align 1, !tbaa !2429
  %715 = and i32 %709, 255
  %716 = tail call i32 @llvm.ctpop.i32(i32 %715) #9
  %717 = trunc i32 %716 to i8
  %718 = and i8 %717, 1
  %719 = xor i8 %718, 1
  store i8 %719, i8* %6, align 1, !tbaa !2443
  %720 = xor i32 %709, %707
  br label %block_400710

block_4006de:                                     ; preds = %block_40066e, %block_400698
  %721 = phi i64 [ %466, %block_40066e ], [ 4196062, %block_400698 ]
  %722 = tail call %struct.Memory* @sub_4006de(%struct.State* nonnull %0, i64 %721, %struct.Memory* %80)
  ret %struct.Memory* %722

block_4006a6:                                     ; preds = %block_400698
  %723 = tail call %struct.Memory* @sub_4006a6(%struct.State* nonnull %0, i64 4196006, %struct.Memory* %80)
  ret %struct.Memory* %723

block_4006c2:                                     ; preds = %block_400698
  %724 = tail call %struct.Memory* @sub_4006c2(%struct.State* nonnull %0, i64 4196034, %struct.Memory* %80)
  ret %struct.Memory* %724

; <label>:725:                                    ; preds = %block_400698
  %726 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %36, %struct.Memory* %80)
  ret %struct.Memory* %726
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4004a0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4004a0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 1
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* %RSP, align 8, !tbaa !2424
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %3, i64* %7, align 8
  store i64 %6, i64* %RSP, align 8, !tbaa !2424
  %8 = load i64, i64* %PC, align 8
  store i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64* %RAX, align 8, !tbaa !2424
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 zext (i1 icmp ult (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)) to i8), i8* %9, align 1, !tbaa !2429
  %10 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)) to i32), i32 255)) #9
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1, !tbaa !2443
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295)), i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64))), i64 4) to i8), i8 1), i8* %15, align 1, !tbaa !2447
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)), i64 0) to i8), i8* %16, align 1, !tbaa !2444
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 trunc (i64 lshr (i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)), i64 63) to i8), i8* %17, align 1, !tbaa !2445
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)), i64 63), i64 lshr (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 63)), i64 xor (i64 lshr (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 63), i64 lshr (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 63))), i64 2) to i8), i8* %18, align 1, !tbaa !2446
  store i64 %6, i64* %RBP, align 8, !tbaa !2424
  %19 = add i64 %8, select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)), i64 0), i64 39, i64 16)
  store i64 %19, i64* %PC, align 8, !tbaa !2424
  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)), i64 0), label %block_4004c8, label %block_4004b1

block_4004b1:                                     ; preds = %block_4004a0
  store i64 0, i64* %RAX, align 8, !tbaa !2424
  store i8 0, i8* %9, align 1, !tbaa !2429
  store i8 1, i8* %14, align 1, !tbaa !2443
  store i8 1, i8* %16, align 1, !tbaa !2444
  store i8 0, i8* %17, align 1, !tbaa !2445
  store i8 0, i8* %18, align 1, !tbaa !2446
  store i8 0, i8* %15, align 1, !tbaa !2447
  %20 = add i64 %8, add (i64 select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)), i64 0), i64 39, i64 16), i64 23)
  store i64 %20, i64* %PC, align 8, !tbaa !2424
  br label %block_4004c8

block_4004c8:                                     ; preds = %block_4004b1, %block_4004a0
  %21 = phi i64 [ %20, %block_4004b1 ], [ %19, %block_4004a0 ]
  %22 = add i64 %21, 1
  store i64 %22, i64* %PC, align 8
  %23 = load i64, i64* %7, align 8
  store i64 %23, i64* %RBP, align 8, !tbaa !2424
  store i64 %5, i64* %RSP, align 8, !tbaa !2424
  %24 = add i64 %21, 2
  store i64 %24, i64* %PC, align 8
  %25 = inttoptr i64 %5 to i64*
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %PC, align 8, !tbaa !2424
  %27 = add i64 %5, 8
  store i64 %27, i64* %RSP, align 8, !tbaa !2424
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4006de(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4006de:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 195), i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %4 = add i64 %1, -670
  %5 = add i64 %1, 17
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !2424
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8, !tbaa !2424
  store i64 %4, i64* %PC, align 8, !tbaa !2424
  %10 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %2)
  %11 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 235), i64* %RDI, align 8, !tbaa !2424
  %12 = load i64, i64* %RBP, align 8
  %13 = add i64 %12, -88
  %14 = load i32, i32* %EAX, align 4
  %15 = add i64 %11, 13
  store i64 %15, i64* %PC, align 8
  %16 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %16, align 4
  %17 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %18 = add i64 %17, -700
  %19 = add i64 %17, 7
  %20 = load i64, i64* %6, align 8, !tbaa !2424
  %21 = add i64 %20, -8
  %22 = inttoptr i64 %21 to i64*
  store i64 %19, i64* %22, align 8
  store i64 %21, i64* %6, align 8, !tbaa !2424
  store i64 %18, i64* %PC, align 8, !tbaa !2424
  %23 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %10)
  %24 = load i64, i64* %PC, align 8
  store i64 4294967295, i64* %RDI, align 8, !tbaa !2424
  %25 = load i64, i64* %RBP, align 8
  %26 = add i64 %25, -92
  %27 = load i32, i32* %EAX, align 4
  %28 = add i64 %24, 8
  store i64 %28, i64* %PC, align 8
  %29 = inttoptr i64 %26 to i32*
  store i32 %27, i32* %29, align 4
  %30 = load i64, i64* %PC, align 8
  %31 = add i64 %30, -683
  %32 = add i64 %30, 5
  %33 = load i64, i64* %6, align 8, !tbaa !2424
  %34 = add i64 %33, -8
  %35 = inttoptr i64 %34 to i64*
  store i64 %32, i64* %35, align 8
  store i64 %34, i64* %6, align 8, !tbaa !2424
  store i64 %31, i64* %PC, align 8, !tbaa !2424
  %36 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %23)
  %37 = load i64, i64* %PC, align 8
  %38 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %37, %struct.Memory* %36)
  ret %struct.Memory* %38
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400600_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400600:
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
  %7 = load i64, i64* %RSP, align 8, !tbaa !2424
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  %10 = load i64, i64* %PC, align 8
  store i64 %8, i64* %RBP, align 8, !tbaa !2424
  %11 = add i64 %7, -120
  store i64 %11, i64* %RSP, align 8, !tbaa !2424
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 0, i64* %RAX, align 8, !tbaa !2424
  store i8 0, i8* %12, align 1, !tbaa !2429
  store i8 1, i8* %13, align 1, !tbaa !2443
  store i8 1, i8* %15, align 1, !tbaa !2444
  store i8 0, i8* %16, align 1, !tbaa !2445
  store i8 0, i8* %17, align 1, !tbaa !2446
  store i8 0, i8* %14, align 1, !tbaa !2447
  store i64 28, i64* %RCX, align 8, !tbaa !2424
  store i64 28, i64* %RDX, align 8, !tbaa !2424
  %18 = add i64 %7, -72
  store i64 %18, i64* %R8, align 8, !tbaa !2424
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %R9, align 8, !tbaa !2424
  %19 = add i64 %7, -12
  %20 = add i64 %10, 37
  store i64 %20, i64* %PC, align 8
  %21 = inttoptr i64 %19 to i32*
  store i32 0, i32* %21, align 4
  %22 = load i64, i64* %RBP, align 8
  %23 = add i64 %22, -8
  %24 = load i32, i32* %EDI, align 4
  %25 = load i64, i64* %PC, align 8
  %26 = add i64 %25, 3
  store i64 %26, i64* %PC, align 8
  %27 = inttoptr i64 %23 to i32*
  store i32 %24, i32* %27, align 4
  %28 = load i64, i64* %RBP, align 8
  %29 = add i64 %28, -16
  %30 = load i64, i64* %RSI, align 8
  %31 = load i64, i64* %PC, align 8
  %32 = add i64 %31, 4
  store i64 %32, i64* %PC, align 8
  %33 = inttoptr i64 %29 to i64*
  store i64 %30, i64* %33, align 8
  %34 = load i64, i64* %RBP, align 8
  %35 = add i64 %34, -36
  %36 = load i64, i64* %PC, align 8
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC, align 8
  %38 = inttoptr i64 %35 to i32*
  store i32 0, i32* %38, align 4
  %39 = load i64, i64* %RBP, align 8
  %40 = add i64 %39, -20
  %41 = load i64, i64* %PC, align 8
  %42 = add i64 %41, 7
  store i64 %42, i64* %PC, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 1, i32* %43, align 4
  %44 = load i64, i64* %RBP, align 8
  %45 = add i64 %44, -24
  %46 = load i64, i64* %PC, align 8
  %47 = add i64 %46, 7
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %45 to i32*
  store i32 1, i32* %48, align 4
  %49 = load i64, i64* %RBP, align 8
  %50 = add i64 %49, -24
  %51 = load i64, i64* %PC, align 8
  %52 = add i64 %51, 4
  store i64 %52, i64* %PC, align 8
  %53 = inttoptr i64 %50 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = mul nsw i64 %55, 11
  store i64 %56, i64* %RSI, align 8, !tbaa !2424
  %57 = lshr i64 %56, 63
  %58 = load i64, i64* %R9, align 8
  %59 = add i64 %56, %58
  store i64 %59, i64* %R9, align 8, !tbaa !2424
  %60 = icmp ult i64 %59, %58
  %61 = icmp ult i64 %59, %56
  %62 = or i1 %60, %61
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %12, align 1, !tbaa !2429
  %64 = trunc i64 %59 to i32
  %65 = and i32 %64, 255
  %66 = tail call i32 @llvm.ctpop.i32(i32 %65) #9
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  store i8 %69, i8* %13, align 1, !tbaa !2443
  %70 = xor i64 %56, %58
  %71 = xor i64 %70, %59
  %72 = lshr i64 %71, 4
  %73 = trunc i64 %72 to i8
  %74 = and i8 %73, 1
  store i8 %74, i8* %14, align 1, !tbaa !2447
  %75 = icmp eq i64 %59, 0
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %15, align 1, !tbaa !2444
  %77 = lshr i64 %59, 63
  %78 = trunc i64 %77 to i8
  store i8 %78, i8* %16, align 1, !tbaa !2445
  %79 = lshr i64 %58, 63
  %80 = xor i64 %77, %79
  %81 = xor i64 %77, %57
  %82 = add nuw nsw i64 %80, %81
  %83 = icmp eq i64 %82, 2
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %17, align 1, !tbaa !2446
  %85 = add i64 %49, -20
  %86 = add i64 %51, 15
  store i64 %86, i64* %PC, align 8
  %87 = inttoptr i64 %85 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 %59, %89
  %91 = add i64 %51, 20
  store i64 %91, i64* %PC, align 8
  %92 = inttoptr i64 %90 to i8*
  store i8 88, i8* %92, align 1
  %93 = load i32, i32* %EAX, align 4
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %PC, align 8
  store i64 %94, i64* %RDI, align 8, !tbaa !2424
  %96 = load i64, i64* %R8, align 8
  store i64 %96, i64* %RSI, align 8, !tbaa !2424
  %97 = add i64 %95, -518
  %98 = add i64 %95, 10
  %99 = load i64, i64* %RSP, align 8, !tbaa !2424
  %100 = add i64 %99, -8
  %101 = inttoptr i64 %100 to i64*
  store i64 %98, i64* %101, align 8
  store i64 %100, i64* %RSP, align 8, !tbaa !2424
  store i64 %97, i64* %PC, align 8, !tbaa !2424
  %102 = tail call fastcc %struct.Memory* @ext_601098_read(%struct.State* nonnull %0, %struct.Memory* %2)
  %103 = load i64, i64* %RBP, align 8
  %104 = add i64 %103, -72
  %105 = load i64, i64* %RAX, align 8
  %106 = load i64, i64* %PC, align 8
  %107 = add i64 %106, 4
  store i64 %107, i64* %PC, align 8
  %108 = inttoptr i64 %104 to i64*
  store i64 %105, i64* %108, align 8
  %.pre = load i64, i64* %PC, align 8
  br label %block_400664

block_40066e:                                     ; preds = %block_400664
  %109 = add i64 %652, -20
  %110 = add i64 %681, 3
  store i64 %110, i64* %PC, align 8
  %111 = inttoptr i64 %109 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = zext i32 %112 to i64
  store i64 %113, i64* %RAX, align 8, !tbaa !2424
  %114 = add i64 %652, -28
  %115 = add i64 %681, 6
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %114 to i32*
  store i32 %112, i32* %116, align 4
  %117 = load i64, i64* %RBP, align 8
  %118 = add i64 %117, -24
  %119 = load i64, i64* %PC, align 8
  %120 = add i64 %119, 3
  store i64 %120, i64* %PC, align 8
  %121 = inttoptr i64 %118 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = zext i32 %122 to i64
  store i64 %123, i64* %RAX, align 8, !tbaa !2424
  %124 = add i64 %117, -32
  %125 = add i64 %119, 6
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %124 to i32*
  store i32 %122, i32* %126, align 4
  %127 = load i64, i64* %RBP, align 8
  %128 = add i64 %127, -36
  %129 = load i64, i64* %PC, align 8
  %130 = add i64 %129, 4
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %128 to i32*
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  store i64 %133, i64* %RCX, align 8, !tbaa !2424
  %134 = add nsw i64 %133, -64
  %135 = add i64 %134, %127
  %136 = add i64 %129, 9
  store i64 %136, i64* %PC, align 8
  %137 = inttoptr i64 %135 to i8*
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = add nsw i32 %139, -97
  %141 = zext i32 %140 to i64
  %142 = lshr i32 %140, 31
  store i64 %141, i64* %RCX, align 8, !tbaa !2424
  %143 = add nsw i32 %139, -119
  %144 = zext i32 %143 to i64
  store i64 %144, i64* %RAX, align 8, !tbaa !2424
  %145 = icmp ult i32 %140, 22
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %12, align 1, !tbaa !2429
  %147 = and i32 %143, 255
  %148 = tail call i32 @llvm.ctpop.i32(i32 %147) #9
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  %151 = xor i8 %150, 1
  store i8 %151, i8* %13, align 1, !tbaa !2443
  %152 = xor i32 %140, 16
  %153 = xor i32 %152, %143
  %154 = lshr i32 %153, 4
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  store i8 %156, i8* %14, align 1, !tbaa !2447
  %157 = icmp eq i32 %143, 0
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %15, align 1, !tbaa !2444
  %159 = lshr i32 %143, 31
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %16, align 1, !tbaa !2445
  %161 = xor i32 %159, %142
  %162 = add nuw nsw i32 %161, %142
  %163 = icmp eq i32 %162, 2
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %17, align 1, !tbaa !2446
  %165 = add i64 %127, -80
  %166 = add i64 %129, 21
  store i64 %166, i64* %PC, align 8
  %167 = inttoptr i64 %165 to i64*
  store i64 %141, i64* %167, align 8
  %168 = load i64, i64* %RBP, align 8
  %169 = add i64 %168, -84
  %170 = load i32, i32* %EAX, align 4
  %171 = load i64, i64* %PC, align 8
  %172 = add i64 %171, 3
  store i64 %172, i64* %PC, align 8
  %173 = inttoptr i64 %169 to i32*
  store i32 %170, i32* %173, align 4
  %174 = load i64, i64* %PC, align 8
  %175 = add i64 %174, 76
  %176 = add i64 %174, 6
  %177 = load i8, i8* %12, align 1, !tbaa !2429
  %178 = load i8, i8* %15, align 1, !tbaa !2444
  %179 = or i8 %178, %177
  %180 = icmp eq i8 %179, 0
  %181 = select i1 %180, i64 %175, i64 %176
  store i64 %181, i64* %PC, align 8, !tbaa !2424
  br i1 %180, label %block_4006de, label %block_400698

block_4007eb:                                     ; preds = %block_4007df
  %182 = add i64 %256, -32
  %183 = add i64 %290, 3
  store i64 %183, i64* %PC, align 8
  %184 = inttoptr i64 %182 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = zext i32 %185 to i64
  store i64 %186, i64* %RAX, align 8, !tbaa !2424
  %187 = add i64 %256, -24
  %188 = add i64 %290, 6
  store i64 %188, i64* %PC, align 8
  %189 = inttoptr i64 %187 to i32*
  %190 = load i32, i32* %189, align 4
  %191 = sub i32 %185, %190
  %192 = icmp ult i32 %185, %190
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %12, align 1, !tbaa !2429
  %194 = and i32 %191, 255
  %195 = tail call i32 @llvm.ctpop.i32(i32 %194) #9
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  %198 = xor i8 %197, 1
  store i8 %198, i8* %13, align 1, !tbaa !2443
  %199 = xor i32 %190, %185
  %200 = xor i32 %199, %191
  %201 = lshr i32 %200, 4
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  store i8 %203, i8* %14, align 1, !tbaa !2447
  %204 = icmp eq i32 %191, 0
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %15, align 1, !tbaa !2444
  %206 = lshr i32 %191, 31
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %16, align 1, !tbaa !2445
  %208 = lshr i32 %185, 31
  %209 = lshr i32 %190, 31
  %210 = xor i32 %209, %208
  %211 = xor i32 %206, %208
  %212 = add nuw nsw i32 %211, %210
  %213 = icmp eq i32 %212, 2
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %17, align 1, !tbaa !2446
  %.v61 = select i1 %204, i64 12, i64 44
  %215 = add i64 %290, %.v61
  store i64 %215, i64* %PC, align 8, !tbaa !2424
  br i1 %204, label %block_4007f7, label %block_400817

block_400862:                                     ; preds = %block_4007f7, %block_400847
  %216 = phi i64 [ %.pre53, %block_400847 ], [ %905, %block_4007f7 ]
  %MEMORY.0 = phi %struct.Memory* [ %496, %block_400847 ], [ %892, %block_4007f7 ]
  %217 = load i64, i64* %RBP, align 8
  %218 = add i64 %217, -4
  %219 = add i64 %216, 3
  store i64 %219, i64* %PC, align 8
  %220 = inttoptr i64 %218 to i32*
  %221 = load i32, i32* %220, align 4
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RAX, align 8, !tbaa !2424
  %223 = load i64, i64* %RSP, align 8
  %224 = add i64 %223, 112
  store i64 %224, i64* %RSP, align 8, !tbaa !2424
  %225 = icmp ugt i64 %223, -113
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %12, align 1, !tbaa !2429
  %227 = trunc i64 %224 to i32
  %228 = and i32 %227, 255
  %229 = tail call i32 @llvm.ctpop.i32(i32 %228) #9
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  store i8 %232, i8* %13, align 1, !tbaa !2443
  %233 = xor i64 %223, 16
  %234 = xor i64 %233, %224
  %235 = lshr i64 %234, 4
  %236 = trunc i64 %235 to i8
  %237 = and i8 %236, 1
  store i8 %237, i8* %14, align 1, !tbaa !2447
  %238 = icmp eq i64 %224, 0
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %15, align 1, !tbaa !2444
  %240 = lshr i64 %224, 63
  %241 = trunc i64 %240 to i8
  store i8 %241, i8* %16, align 1, !tbaa !2445
  %242 = lshr i64 %223, 63
  %243 = xor i64 %240, %242
  %244 = add nuw nsw i64 %243, %240
  %245 = icmp eq i64 %244, 2
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %17, align 1, !tbaa !2446
  %247 = add i64 %216, 8
  store i64 %247, i64* %PC, align 8
  %248 = add i64 %223, 120
  %249 = inttoptr i64 %224 to i64*
  %250 = load i64, i64* %249, align 8
  store i64 %250, i64* %RBP, align 8, !tbaa !2424
  store i64 %248, i64* %RSP, align 8, !tbaa !2424
  %251 = add i64 %216, 9
  store i64 %251, i64* %PC, align 8
  %252 = inttoptr i64 %248 to i64*
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %PC, align 8, !tbaa !2424
  %254 = add i64 %223, 128
  store i64 %254, i64* %RSP, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.0

block_4007df:                                     ; preds = %block_4007c9, %block_400769, %block_4007d3
  %255 = phi i64 [ %859, %block_4007c9 ], [ %650, %block_400769 ], [ %.pre52, %block_4007d3 ]
  %256 = load i64, i64* %RBP, align 8
  %257 = add i64 %256, -28
  %258 = add i64 %255, 3
  store i64 %258, i64* %PC, align 8
  %259 = inttoptr i64 %257 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = zext i32 %260 to i64
  store i64 %261, i64* %RAX, align 8, !tbaa !2424
  %262 = add i64 %256, -20
  %263 = add i64 %255, 6
  store i64 %263, i64* %PC, align 8
  %264 = inttoptr i64 %262 to i32*
  %265 = load i32, i32* %264, align 4
  %266 = sub i32 %260, %265
  %267 = icmp ult i32 %260, %265
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %12, align 1, !tbaa !2429
  %269 = and i32 %266, 255
  %270 = tail call i32 @llvm.ctpop.i32(i32 %269) #9
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  %273 = xor i8 %272, 1
  store i8 %273, i8* %13, align 1, !tbaa !2443
  %274 = xor i32 %265, %260
  %275 = xor i32 %274, %266
  %276 = lshr i32 %275, 4
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  store i8 %278, i8* %14, align 1, !tbaa !2447
  %279 = icmp eq i32 %266, 0
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %15, align 1, !tbaa !2444
  %281 = lshr i32 %266, 31
  %282 = trunc i32 %281 to i8
  store i8 %282, i8* %16, align 1, !tbaa !2445
  %283 = lshr i32 %260, 31
  %284 = lshr i32 %265, 31
  %285 = xor i32 %284, %283
  %286 = xor i32 %281, %283
  %287 = add nuw nsw i32 %286, %285
  %288 = icmp eq i32 %287, 2
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %17, align 1, !tbaa !2446
  %.v60 = select i1 %279, i64 12, i64 56
  %290 = add i64 %255, %.v60
  store i64 %290, i64* %PC, align 8, !tbaa !2424
  br i1 %279, label %block_4007eb, label %block_4007df.block_400817_crit_edge

block_4007df.block_400817_crit_edge:              ; preds = %block_4007df
  %.pre54 = add i64 %256, -24
  %.pre55 = inttoptr i64 %.pre54 to i32*
  br label %block_400817

block_4006de:                                     ; preds = %block_400698, %block_40066e
  %291 = phi i64 [ 4196062, %block_400698 ], [ %175, %block_40066e ]
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 195), i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %292 = add i64 %291, -670
  %293 = add i64 %291, 17
  %294 = load i64, i64* %RSP, align 8, !tbaa !2424
  %295 = add i64 %294, -8
  %296 = inttoptr i64 %295 to i64*
  store i64 %293, i64* %296, align 8
  store i64 %295, i64* %RSP, align 8, !tbaa !2424
  store i64 %292, i64* %PC, align 8, !tbaa !2424
  %297 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %298 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 235), i64* %RDI, align 8, !tbaa !2424
  %299 = load i64, i64* %RBP, align 8
  %300 = add i64 %299, -88
  %301 = load i32, i32* %EAX, align 4
  %302 = add i64 %298, 13
  store i64 %302, i64* %PC, align 8
  %303 = inttoptr i64 %300 to i32*
  store i32 %301, i32* %303, align 4
  %304 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %305 = add i64 %304, -700
  %306 = add i64 %304, 7
  %307 = load i64, i64* %RSP, align 8, !tbaa !2424
  %308 = add i64 %307, -8
  %309 = inttoptr i64 %308 to i64*
  store i64 %306, i64* %309, align 8
  store i64 %308, i64* %RSP, align 8, !tbaa !2424
  store i64 %305, i64* %PC, align 8, !tbaa !2424
  %310 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %297)
  %311 = load i64, i64* %PC, align 8
  store i64 4294967295, i64* %RDI, align 8, !tbaa !2424
  %312 = load i64, i64* %RBP, align 8
  %313 = add i64 %312, -92
  %314 = load i32, i32* %EAX, align 4
  %315 = add i64 %311, 8
  store i64 %315, i64* %PC, align 8
  %316 = inttoptr i64 %313 to i32*
  store i32 %314, i32* %316, align 4
  %317 = load i64, i64* %PC, align 8
  %318 = add i64 %317, -683
  %319 = add i64 %317, 5
  %320 = load i64, i64* %RSP, align 8, !tbaa !2424
  %321 = add i64 %320, -8
  %322 = inttoptr i64 %321 to i64*
  store i64 %319, i64* %322, align 8
  store i64 %321, i64* %RSP, align 8, !tbaa !2424
  store i64 %318, i64* %PC, align 8, !tbaa !2424
  %323 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %310)
  %324 = load i64, i64* %PC, align 8
  %325 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %324, %struct.Memory* %323)
  ret %struct.Memory* %325

block_4006d0:                                     ; preds = %block_400698
  %326 = add i64 %574, -20
  store i64 4196051, i64* %PC, align 8
  %327 = inttoptr i64 %326 to i32*
  %328 = load i32, i32* %327, align 4
  store i64 4196054, i64* %PC, align 8
  %329 = add i32 %328, 1
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RAX, align 8, !tbaa !2424
  %331 = icmp eq i32 %328, -1
  %332 = icmp eq i32 %329, 0
  %333 = or i1 %331, %332
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %12, align 1, !tbaa !2429
  %335 = and i32 %329, 255
  %336 = tail call i32 @llvm.ctpop.i32(i32 %335) #9
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  %339 = xor i8 %338, 1
  store i8 %339, i8* %13, align 1, !tbaa !2443
  %340 = xor i32 %329, %328
  %341 = lshr i32 %340, 4
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  store i8 %343, i8* %14, align 1, !tbaa !2447
  %344 = zext i1 %332 to i8
  store i8 %344, i8* %15, align 1, !tbaa !2444
  %345 = lshr i32 %329, 31
  %346 = trunc i32 %345 to i8
  store i8 %346, i8* %16, align 1, !tbaa !2445
  %347 = lshr i32 %328, 31
  %348 = xor i32 %345, %347
  br label %block_400710

block_4007bf:                                     ; preds = %block_400799
  %349 = add i64 %573, -20
  %350 = add i64 %572, 4
  store i64 %350, i64* %PC, align 8
  %351 = inttoptr i64 %349 to i32*
  %352 = load i32, i32* %351, align 4
  store i8 0, i8* %12, align 1, !tbaa !2429
  %353 = and i32 %352, 255
  %354 = tail call i32 @llvm.ctpop.i32(i32 %353) #9
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  %357 = xor i8 %356, 1
  store i8 %357, i8* %13, align 1, !tbaa !2443
  store i8 0, i8* %14, align 1, !tbaa !2447
  %358 = icmp eq i32 %352, 0
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %15, align 1, !tbaa !2444
  %360 = lshr i32 %352, 31
  %361 = trunc i32 %360 to i8
  store i8 %361, i8* %16, align 1, !tbaa !2445
  store i8 0, i8* %17, align 1, !tbaa !2446
  %362 = icmp ne i8 %361, 0
  %363 = or i1 %358, %362
  %.v63 = select i1 %363, i64 20, i64 10
  %364 = add i64 %572, %.v63
  store i64 %364, i64* %PC, align 8, !tbaa !2424
  br i1 %363, label %block_4007d3, label %block_4007c9

block_4006c2:                                     ; preds = %block_400698
  %365 = add i64 %574, -20
  store i64 4196037, i64* %PC, align 8
  %366 = inttoptr i64 %365 to i32*
  %367 = load i32, i32* %366, align 4
  store i64 4196040, i64* %PC, align 8
  %368 = add i32 %367, -1
  %369 = zext i32 %368 to i64
  store i64 %369, i64* %RAX, align 8, !tbaa !2424
  %370 = icmp ne i32 %367, 0
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %12, align 1, !tbaa !2429
  %372 = and i32 %368, 255
  %373 = tail call i32 @llvm.ctpop.i32(i32 %372) #9
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  %376 = xor i8 %375, 1
  store i8 %376, i8* %13, align 1, !tbaa !2443
  %377 = xor i32 %367, 16
  %378 = xor i32 %377, %368
  %379 = lshr i32 %378, 4
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  store i8 %381, i8* %14, align 1, !tbaa !2447
  %382 = icmp eq i32 %368, 0
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %15, align 1, !tbaa !2444
  %384 = lshr i32 %368, 31
  %385 = trunc i32 %384 to i8
  store i8 %385, i8* %16, align 1, !tbaa !2445
  %386 = lshr i32 %367, 31
  %387 = xor i32 %384, %386
  %388 = xor i32 %384, 1
  br label %block_400710

block_400736:                                     ; preds = %block_400710
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %389 = add i64 %832, -758
  %390 = add i64 %832, 17
  %391 = load i64, i64* %RSP, align 8, !tbaa !2424
  %392 = add i64 %391, -8
  %393 = inttoptr i64 %392 to i64*
  store i64 %390, i64* %393, align 8
  store i64 %392, i64* %RSP, align 8, !tbaa !2424
  store i64 %389, i64* %PC, align 8, !tbaa !2424
  %394 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %395 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2424
  %396 = load i64, i64* %RBP, align 8
  %397 = add i64 %396, -64
  store i64 %397, i64* %RSI, align 8, !tbaa !2424
  %398 = add i64 %396, -96
  %399 = load i32, i32* %EAX, align 4
  %400 = add i64 %395, 17
  store i64 %400, i64* %PC, align 8
  %401 = inttoptr i64 %398 to i32*
  store i32 %399, i32* %401, align 4
  %402 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %403 = add i64 %402, -792
  %404 = add i64 %402, 7
  %405 = load i64, i64* %RSP, align 8, !tbaa !2424
  %406 = add i64 %405, -8
  %407 = inttoptr i64 %406 to i64*
  store i64 %404, i64* %407, align 8
  store i64 %406, i64* %RSP, align 8, !tbaa !2424
  store i64 %403, i64* %PC, align 8, !tbaa !2424
  %408 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %394)
  %409 = load i64, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %12, align 1, !tbaa !2429
  store i8 1, i8* %13, align 1, !tbaa !2443
  store i8 1, i8* %15, align 1, !tbaa !2444
  store i8 0, i8* %16, align 1, !tbaa !2445
  store i8 0, i8* %17, align 1, !tbaa !2446
  store i8 0, i8* %14, align 1, !tbaa !2447
  %410 = load i64, i64* %RBP, align 8
  %411 = add i64 %410, -100
  %412 = load i32, i32* %EAX, align 4
  %413 = add i64 %409, 5
  store i64 %413, i64* %PC, align 8
  %414 = inttoptr i64 %411 to i32*
  store i32 %412, i32* %414, align 4
  %415 = load i64, i64* %PC, align 8
  %416 = add i64 %415, -772
  %417 = add i64 %415, 5
  %418 = load i64, i64* %RSP, align 8, !tbaa !2424
  %419 = add i64 %418, -8
  %420 = inttoptr i64 %419 to i64*
  store i64 %417, i64* %420, align 8
  store i64 %419, i64* %RSP, align 8, !tbaa !2424
  store i64 %416, i64* %PC, align 8, !tbaa !2424
  %421 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %408)
  %422 = load i64, i64* %PC, align 8
  %423 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %422, %struct.Memory* %421)
  ret %struct.Memory* %423

block_4006b4:                                     ; preds = %block_400698
  %424 = add i64 %574, -24
  store i64 4196023, i64* %PC, align 8
  %425 = inttoptr i64 %424 to i32*
  %426 = load i32, i32* %425, align 4
  store i64 4196026, i64* %PC, align 8
  %427 = add i32 %426, 1
  %428 = zext i32 %427 to i64
  store i64 %428, i64* %RAX, align 8, !tbaa !2424
  %429 = icmp eq i32 %426, -1
  %430 = icmp eq i32 %427, 0
  %431 = or i1 %429, %430
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %12, align 1, !tbaa !2429
  %433 = and i32 %427, 255
  %434 = tail call i32 @llvm.ctpop.i32(i32 %433) #9
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  store i8 %437, i8* %13, align 1, !tbaa !2443
  %438 = xor i32 %427, %426
  %439 = lshr i32 %438, 4
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  store i8 %441, i8* %14, align 1, !tbaa !2447
  %442 = zext i1 %430 to i8
  store i8 %442, i8* %15, align 1, !tbaa !2444
  %443 = lshr i32 %427, 31
  %444 = trunc i32 %443 to i8
  store i8 %444, i8* %16, align 1, !tbaa !2445
  %445 = lshr i32 %426, 31
  %446 = xor i32 %443, %445
  br label %block_400710

block_4006a6:                                     ; preds = %block_400698
  %447 = add i64 %574, -24
  store i64 4196009, i64* %PC, align 8
  %448 = inttoptr i64 %447 to i32*
  %449 = load i32, i32* %448, align 4
  store i64 4196012, i64* %PC, align 8
  %450 = add i32 %449, -1
  %451 = zext i32 %450 to i64
  store i64 %451, i64* %RAX, align 8, !tbaa !2424
  %452 = icmp ne i32 %449, 0
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %12, align 1, !tbaa !2429
  %454 = and i32 %450, 255
  %455 = tail call i32 @llvm.ctpop.i32(i32 %454) #9
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  %458 = xor i8 %457, 1
  store i8 %458, i8* %13, align 1, !tbaa !2443
  %459 = xor i32 %449, 16
  %460 = xor i32 %459, %450
  %461 = lshr i32 %460, 4
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  store i8 %463, i8* %14, align 1, !tbaa !2447
  %464 = icmp eq i32 %450, 0
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %15, align 1, !tbaa !2444
  %466 = lshr i32 %450, 31
  %467 = trunc i32 %466 to i8
  store i8 %467, i8* %16, align 1, !tbaa !2445
  %468 = lshr i32 %449, 31
  %469 = xor i32 %466, %468
  %470 = xor i32 %466, 1
  br label %block_400710

block_4007d3:                                     ; preds = %block_400799, %block_40078f, %block_4007c9, %block_4007bf
  %471 = phi i64 [ %886, %block_40078f ], [ %859, %block_4007c9 ], [ %364, %block_4007bf ], [ %572, %block_400799 ]
  %472 = phi i64 [ %860, %block_40078f ], [ %573, %block_4007c9 ], [ %573, %block_4007bf ], [ %573, %block_400799 ]
  %473 = add i64 %472, -28
  %474 = add i64 %471, 3
  store i64 %474, i64* %PC, align 8
  %475 = inttoptr i64 %473 to i32*
  %476 = load i32, i32* %475, align 4
  %477 = zext i32 %476 to i64
  store i64 %477, i64* %RAX, align 8, !tbaa !2424
  %478 = add i64 %472, -20
  %479 = add i64 %471, 6
  store i64 %479, i64* %PC, align 8
  %480 = inttoptr i64 %478 to i32*
  store i32 %476, i32* %480, align 4
  %481 = load i64, i64* %RBP, align 8
  %482 = add i64 %481, -32
  %483 = load i64, i64* %PC, align 8
  %484 = add i64 %483, 3
  store i64 %484, i64* %PC, align 8
  %485 = inttoptr i64 %482 to i32*
  %486 = load i32, i32* %485, align 4
  %487 = zext i32 %486 to i64
  store i64 %487, i64* %RAX, align 8, !tbaa !2424
  %488 = add i64 %481, -24
  %489 = add i64 %483, 6
  store i64 %489, i64* %PC, align 8
  %490 = inttoptr i64 %488 to i32*
  store i32 %486, i32* %490, align 4
  %.pre52 = load i64, i64* %PC, align 8
  br label %block_4007df

block_400847:                                     ; preds = %block_400664
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %491 = add i64 %681, -1031
  %492 = add i64 %681, 17
  %493 = load i64, i64* %RSP, align 8, !tbaa !2424
  %494 = add i64 %493, -8
  %495 = inttoptr i64 %494 to i64*
  store i64 %492, i64* %495, align 8
  store i64 %494, i64* %RSP, align 8, !tbaa !2424
  store i64 %491, i64* %PC, align 8, !tbaa !2424
  %496 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %497 = load i64, i64* %RBP, align 8
  %498 = add i64 %497, -4
  %499 = load i64, i64* %PC, align 8
  %500 = add i64 %499, 7
  store i64 %500, i64* %PC, align 8
  %501 = inttoptr i64 %498 to i32*
  store i32 1, i32* %501, align 4
  %502 = load i64, i64* %RBP, align 8
  %503 = add i64 %502, -108
  %504 = load i32, i32* %EAX, align 4
  %505 = load i64, i64* %PC, align 8
  %506 = add i64 %505, 3
  store i64 %506, i64* %PC, align 8
  %507 = inttoptr i64 %503 to i32*
  store i32 %504, i32* %507, align 4
  %.pre53 = load i64, i64* %PC, align 8
  br label %block_400862

block_400799:                                     ; preds = %block_40078f
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %508 = add i64 %886, 14
  store i64 %508, i64* %PC, align 8
  %509 = load i32, i32* %863, align 4
  %510 = sext i32 %509 to i64
  %511 = mul nsw i64 %510, 11
  store i64 %511, i64* %RCX, align 8, !tbaa !2424
  %512 = lshr i64 %511, 63
  %513 = add i64 %511, ptrtoint (%maze_type* @maze to i64)
  store i64 %513, i64* %RAX, align 8, !tbaa !2424
  %514 = icmp ult i64 %513, ptrtoint (%maze_type* @maze to i64)
  %515 = icmp ult i64 %513, %511
  %516 = or i1 %514, %515
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %12, align 1, !tbaa !2429
  %518 = trunc i64 %513 to i32
  %519 = and i32 %518, 255
  %520 = tail call i32 @llvm.ctpop.i32(i32 %519) #9
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  %523 = xor i8 %522, 1
  store i8 %523, i8* %13, align 1, !tbaa !2443
  %524 = xor i64 %511, ptrtoint (%maze_type* @maze to i64)
  %525 = xor i64 %524, %513
  %526 = lshr i64 %525, 4
  %527 = trunc i64 %526 to i8
  %528 = and i8 %527, 1
  store i8 %528, i8* %14, align 1, !tbaa !2447
  %529 = icmp eq i64 %513, 0
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %15, align 1, !tbaa !2444
  %531 = lshr i64 %513, 63
  %532 = trunc i64 %531 to i8
  store i8 %532, i8* %16, align 1, !tbaa !2445
  %533 = xor i64 %531, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %534 = xor i64 %531, %512
  %535 = add nuw nsw i64 %533, %534
  %536 = icmp eq i64 %535, 2
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %17, align 1, !tbaa !2446
  %538 = add i64 %860, -20
  %539 = add i64 %886, 25
  store i64 %539, i64* %PC, align 8
  %540 = inttoptr i64 %538 to i32*
  %541 = load i32, i32* %540, align 4
  %542 = sext i32 %541 to i64
  store i64 %542, i64* %RCX, align 8, !tbaa !2424
  %543 = add i64 %513, %542
  %544 = add i64 %886, 29
  store i64 %544, i64* %PC, align 8
  %545 = inttoptr i64 %543 to i8*
  %546 = load i8, i8* %545, align 1
  %547 = sext i8 %546 to i64
  %548 = and i64 %547, 4294967295
  store i64 %548, i64* %RDX, align 8, !tbaa !2424
  %549 = sext i8 %546 to i32
  %550 = add nsw i32 %549, -124
  %551 = icmp ult i8 %546, 124
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %12, align 1, !tbaa !2429
  %553 = and i32 %550, 255
  %554 = tail call i32 @llvm.ctpop.i32(i32 %553) #9
  %555 = trunc i32 %554 to i8
  %556 = and i8 %555, 1
  %557 = xor i8 %556, 1
  store i8 %557, i8* %13, align 1, !tbaa !2443
  %558 = xor i32 %549, 16
  %559 = xor i32 %558, %550
  %560 = lshr i32 %559, 4
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  store i8 %562, i8* %14, align 1, !tbaa !2447
  %563 = icmp eq i32 %550, 0
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %15, align 1, !tbaa !2444
  %565 = lshr i32 %550, 31
  %566 = trunc i32 %565 to i8
  store i8 %566, i8* %16, align 1, !tbaa !2445
  %567 = lshr i32 %549, 31
  %568 = xor i32 %565, %567
  %569 = add nuw nsw i32 %568, %567
  %570 = icmp eq i32 %569, 2
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %17, align 1, !tbaa !2446
  %.v62 = select i1 %563, i64 38, i64 58
  %572 = add i64 %886, %.v62
  store i64 %572, i64* %PC, align 8, !tbaa !2424
  %573 = load i64, i64* %RBP, align 8
  br i1 %563, label %block_4007bf, label %block_4007d3

block_400698:                                     ; preds = %block_40066e
  %574 = load i64, i64* %RBP, align 8
  %575 = add i64 %574, -80
  %576 = add i64 %181, 4
  store i64 %576, i64* %PC, align 8
  %577 = inttoptr i64 %575 to i64*
  %578 = load i64, i64* %577, align 8
  store i64 %578, i64* %RAX, align 8, !tbaa !2424
  %579 = shl i64 %578, 3
  %580 = add i64 %579, add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 8)
  %581 = add i64 %181, 12
  store i64 %581, i64* %PC, align 8
  %582 = inttoptr i64 %580 to i64*
  %583 = load i64, i64* %582, align 8
  store i64 %583, i64* %RCX, align 8, !tbaa !2424
  store i64 %583, i64* %PC, align 8, !tbaa !2424
  switch i64 %583, label %906 [
    i64 4196034, label %block_4006c2
    i64 4196048, label %block_4006d0
    i64 4196020, label %block_4006b4
    i64 4196062, label %block_4006de
    i64 4196006, label %block_4006a6
  ]

block_400769:                                     ; preds = %block_400710
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %584 = load i64, i64* %RBP, align 8
  %585 = add i64 %584, -24
  %586 = add i64 %832, 14
  store i64 %586, i64* %PC, align 8
  %587 = inttoptr i64 %585 to i32*
  %588 = load i32, i32* %587, align 4
  %589 = sext i32 %588 to i64
  %590 = mul nsw i64 %589, 11
  store i64 %590, i64* %RCX, align 8, !tbaa !2424
  %591 = lshr i64 %590, 63
  %592 = add i64 %590, ptrtoint (%maze_type* @maze to i64)
  store i64 %592, i64* %RAX, align 8, !tbaa !2424
  %593 = icmp ult i64 %592, ptrtoint (%maze_type* @maze to i64)
  %594 = icmp ult i64 %592, %590
  %595 = or i1 %593, %594
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %12, align 1, !tbaa !2429
  %597 = trunc i64 %592 to i32
  %598 = and i32 %597, 255
  %599 = tail call i32 @llvm.ctpop.i32(i32 %598) #9
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  %602 = xor i8 %601, 1
  store i8 %602, i8* %13, align 1, !tbaa !2443
  %603 = xor i64 %590, ptrtoint (%maze_type* @maze to i64)
  %604 = xor i64 %603, %592
  %605 = lshr i64 %604, 4
  %606 = trunc i64 %605 to i8
  %607 = and i8 %606, 1
  store i8 %607, i8* %14, align 1, !tbaa !2447
  %608 = icmp eq i64 %592, 0
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %15, align 1, !tbaa !2444
  %610 = lshr i64 %592, 63
  %611 = trunc i64 %610 to i8
  store i8 %611, i8* %16, align 1, !tbaa !2445
  %612 = xor i64 %610, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %613 = xor i64 %610, %591
  %614 = add nuw nsw i64 %612, %613
  %615 = icmp eq i64 %614, 2
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %17, align 1, !tbaa !2446
  %617 = add i64 %584, -20
  %618 = add i64 %832, 25
  store i64 %618, i64* %PC, align 8
  %619 = inttoptr i64 %617 to i32*
  %620 = load i32, i32* %619, align 4
  %621 = sext i32 %620 to i64
  store i64 %621, i64* %RCX, align 8, !tbaa !2424
  %622 = add i64 %592, %621
  %623 = add i64 %832, 29
  store i64 %623, i64* %PC, align 8
  %624 = inttoptr i64 %622 to i8*
  %625 = load i8, i8* %624, align 1
  %626 = sext i8 %625 to i64
  %627 = and i64 %626, 4294967295
  store i64 %627, i64* %RDX, align 8, !tbaa !2424
  %628 = sext i8 %625 to i32
  %629 = add nsw i32 %628, -32
  %630 = icmp ult i8 %625, 32
  %631 = zext i1 %630 to i8
  store i8 %631, i8* %12, align 1, !tbaa !2429
  %632 = and i32 %629, 255
  %633 = tail call i32 @llvm.ctpop.i32(i32 %632) #9
  %634 = trunc i32 %633 to i8
  %635 = and i8 %634, 1
  %636 = xor i8 %635, 1
  store i8 %636, i8* %13, align 1, !tbaa !2443
  %637 = xor i32 %629, %628
  %638 = lshr i32 %637, 4
  %639 = trunc i32 %638 to i8
  %640 = and i8 %639, 1
  store i8 %640, i8* %14, align 1, !tbaa !2447
  %641 = icmp eq i32 %629, 0
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %15, align 1, !tbaa !2444
  %643 = lshr i32 %629, 31
  %644 = trunc i32 %643 to i8
  store i8 %644, i8* %16, align 1, !tbaa !2445
  %645 = lshr i32 %628, 31
  %646 = xor i32 %643, %645
  %647 = add nuw nsw i32 %646, %645
  %648 = icmp eq i32 %647, 2
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %17, align 1, !tbaa !2446
  %.v58 = select i1 %641, i64 118, i64 38
  %650 = add i64 %832, %.v58
  store i64 %650, i64* %PC, align 8, !tbaa !2424
  br i1 %641, label %block_4007df, label %block_40078f

block_400664:                                     ; preds = %block_400817, %block_400600
  %651 = phi i64 [ %.pre, %block_400600 ], [ %757, %block_400817 ]
  %MEMORY.4 = phi %struct.Memory* [ %102, %block_400600 ], [ %725, %block_400817 ]
  %652 = load i64, i64* %RBP, align 8
  %653 = add i64 %652, -36
  %654 = add i64 %651, 4
  store i64 %654, i64* %PC, align 8
  %655 = inttoptr i64 %653 to i32*
  %656 = load i32, i32* %655, align 4
  %657 = add i32 %656, -28
  %658 = icmp ult i32 %656, 28
  %659 = zext i1 %658 to i8
  store i8 %659, i8* %12, align 1, !tbaa !2429
  %660 = and i32 %657, 255
  %661 = tail call i32 @llvm.ctpop.i32(i32 %660) #9
  %662 = trunc i32 %661 to i8
  %663 = and i8 %662, 1
  %664 = xor i8 %663, 1
  store i8 %664, i8* %13, align 1, !tbaa !2443
  %665 = xor i32 %656, 16
  %666 = xor i32 %665, %657
  %667 = lshr i32 %666, 4
  %668 = trunc i32 %667 to i8
  %669 = and i8 %668, 1
  store i8 %669, i8* %14, align 1, !tbaa !2447
  %670 = icmp eq i32 %657, 0
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %15, align 1, !tbaa !2444
  %672 = lshr i32 %657, 31
  %673 = trunc i32 %672 to i8
  store i8 %673, i8* %16, align 1, !tbaa !2445
  %674 = lshr i32 %656, 31
  %675 = xor i32 %672, %674
  %676 = add nuw nsw i32 %675, %674
  %677 = icmp eq i32 %676, 2
  %678 = zext i1 %677 to i8
  store i8 %678, i8* %17, align 1, !tbaa !2446
  %679 = icmp ne i8 %673, 0
  %680 = xor i1 %679, %677
  %.v = select i1 %680, i64 10, i64 483
  %681 = add i64 %651, %.v
  store i64 %681, i64* %PC, align 8, !tbaa !2424
  br i1 %680, label %block_40066e, label %block_400847

block_400817:                                     ; preds = %block_4007eb, %block_4007df.block_400817_crit_edge
  %.pre-phi56 = phi i32* [ %.pre55, %block_4007df.block_400817_crit_edge ], [ %189, %block_4007eb ]
  %682 = phi i64 [ %290, %block_4007df.block_400817_crit_edge ], [ %215, %block_4007eb ]
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %683 = add i64 %682, 14
  store i64 %683, i64* %PC, align 8
  %684 = load i32, i32* %.pre-phi56, align 4
  %685 = sext i32 %684 to i64
  %686 = mul nsw i64 %685, 11
  store i64 %686, i64* %RCX, align 8, !tbaa !2424
  %687 = lshr i64 %686, 63
  %688 = add i64 %686, ptrtoint (%maze_type* @maze to i64)
  store i64 %688, i64* %RAX, align 8, !tbaa !2424
  %689 = icmp ult i64 %688, ptrtoint (%maze_type* @maze to i64)
  %690 = icmp ult i64 %688, %686
  %691 = or i1 %689, %690
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %12, align 1, !tbaa !2429
  %693 = trunc i64 %688 to i32
  %694 = and i32 %693, 255
  %695 = tail call i32 @llvm.ctpop.i32(i32 %694) #9
  %696 = trunc i32 %695 to i8
  %697 = and i8 %696, 1
  %698 = xor i8 %697, 1
  store i8 %698, i8* %13, align 1, !tbaa !2443
  %699 = xor i64 %686, ptrtoint (%maze_type* @maze to i64)
  %700 = xor i64 %699, %688
  %701 = lshr i64 %700, 4
  %702 = trunc i64 %701 to i8
  %703 = and i8 %702, 1
  store i8 %703, i8* %14, align 1, !tbaa !2447
  %704 = icmp eq i64 %688, 0
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %15, align 1, !tbaa !2444
  %706 = lshr i64 %688, 63
  %707 = trunc i64 %706 to i8
  store i8 %707, i8* %16, align 1, !tbaa !2445
  %708 = xor i64 %706, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %709 = xor i64 %706, %687
  %710 = add nuw nsw i64 %708, %709
  %711 = icmp eq i64 %710, 2
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %17, align 1, !tbaa !2446
  %713 = add i64 %682, 25
  store i64 %713, i64* %PC, align 8
  %714 = load i32, i32* %264, align 4
  %715 = sext i32 %714 to i64
  store i64 %715, i64* %RCX, align 8, !tbaa !2424
  %716 = add i64 %688, %715
  %717 = add i64 %682, 29
  store i64 %717, i64* %PC, align 8
  %718 = inttoptr i64 %716 to i8*
  store i8 88, i8* %718, align 1
  %719 = load i64, i64* %PC, align 8
  %720 = add i64 %719, -740
  %721 = add i64 %719, 5
  %722 = load i64, i64* %RSP, align 8, !tbaa !2424
  %723 = add i64 %722, -8
  %724 = inttoptr i64 %723 to i64*
  store i64 %721, i64* %724, align 8
  store i64 %723, i64* %RSP, align 8, !tbaa !2424
  store i64 %720, i64* %PC, align 8, !tbaa !2424
  %725 = tail call %struct.Memory* @sub_400550_draw(%struct.State* nonnull %0, i64 %720, %struct.Memory* %MEMORY.4)
  %726 = load i64, i64* %RBP, align 8
  %727 = add i64 %726, -36
  %728 = load i64, i64* %PC, align 8
  %729 = add i64 %728, 3
  store i64 %729, i64* %PC, align 8
  %730 = inttoptr i64 %727 to i32*
  %731 = load i32, i32* %730, align 4
  %732 = add i32 %731, 1
  %733 = zext i32 %732 to i64
  store i64 %733, i64* %RDX, align 8, !tbaa !2424
  %734 = icmp eq i32 %731, -1
  %735 = icmp eq i32 %732, 0
  %736 = or i1 %734, %735
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %12, align 1, !tbaa !2429
  %738 = and i32 %732, 255
  %739 = tail call i32 @llvm.ctpop.i32(i32 %738) #9
  %740 = trunc i32 %739 to i8
  %741 = and i8 %740, 1
  %742 = xor i8 %741, 1
  store i8 %742, i8* %13, align 1, !tbaa !2443
  %743 = xor i32 %732, %731
  %744 = lshr i32 %743, 4
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  store i8 %746, i8* %14, align 1, !tbaa !2447
  %747 = zext i1 %735 to i8
  store i8 %747, i8* %15, align 1, !tbaa !2444
  %748 = lshr i32 %732, 31
  %749 = trunc i32 %748 to i8
  store i8 %749, i8* %16, align 1, !tbaa !2445
  %750 = lshr i32 %731, 31
  %751 = xor i32 %748, %750
  %752 = add nuw nsw i32 %751, %748
  %753 = icmp eq i32 %752, 2
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %17, align 1, !tbaa !2446
  %755 = add i64 %728, 9
  store i64 %755, i64* %PC, align 8
  store i32 %732, i32* %730, align 4
  %756 = load i64, i64* %PC, align 8
  %757 = add i64 %756, -478
  store i64 %757, i64* %PC, align 8, !tbaa !2424
  br label %block_400664

block_400710:                                     ; preds = %block_4006a6, %block_4006b4, %block_4006c2, %block_4006d0
  %758 = phi i64 [ 4196015, %block_4006a6 ], [ 4196029, %block_4006b4 ], [ 4196043, %block_4006c2 ], [ 4196057, %block_4006d0 ]
  %.sink = phi i32 [ %450, %block_4006a6 ], [ %427, %block_4006b4 ], [ %368, %block_4006c2 ], [ %329, %block_4006d0 ]
  %.sink25 = phi i32 [ %470, %block_4006a6 ], [ %443, %block_4006b4 ], [ %388, %block_4006c2 ], [ %345, %block_4006d0 ]
  %.sink24 = phi i32 [ %469, %block_4006a6 ], [ %446, %block_4006b4 ], [ %387, %block_4006c2 ], [ %348, %block_4006d0 ]
  %.sink20 = phi i64 [ -24, %block_4006a6 ], [ -24, %block_4006b4 ], [ -20, %block_4006c2 ], [ -20, %block_4006d0 ]
  %.sink5 = phi i64 [ 97, %block_4006a6 ], [ 83, %block_4006b4 ], [ 69, %block_4006c2 ], [ 55, %block_4006d0 ]
  %759 = add nuw nsw i32 %.sink24, %.sink25
  %760 = icmp eq i32 %759, 2
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %17, align 1, !tbaa !2446
  %762 = add i64 %574, %.sink20
  store i64 %758, i64* %PC, align 8
  %763 = inttoptr i64 %762 to i32*
  store i32 %.sink, i32* %763, align 4
  %764 = load i64, i64* %PC, align 8
  %765 = add i64 %764, %.sink5
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %766 = load i64, i64* %RBP, align 8
  %767 = add i64 %766, -24
  %768 = add i64 %765, 14
  store i64 %768, i64* %PC, align 8
  %769 = inttoptr i64 %767 to i32*
  %770 = load i32, i32* %769, align 4
  %771 = sext i32 %770 to i64
  %772 = mul nsw i64 %771, 11
  store i64 %772, i64* %RCX, align 8, !tbaa !2424
  %773 = lshr i64 %772, 63
  %774 = add i64 %772, ptrtoint (%maze_type* @maze to i64)
  store i64 %774, i64* %RAX, align 8, !tbaa !2424
  %775 = icmp ult i64 %774, ptrtoint (%maze_type* @maze to i64)
  %776 = icmp ult i64 %774, %772
  %777 = or i1 %775, %776
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %12, align 1, !tbaa !2429
  %779 = trunc i64 %774 to i32
  %780 = and i32 %779, 255
  %781 = tail call i32 @llvm.ctpop.i32(i32 %780) #9
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  %784 = xor i8 %783, 1
  store i8 %784, i8* %13, align 1, !tbaa !2443
  %785 = xor i64 %772, ptrtoint (%maze_type* @maze to i64)
  %786 = xor i64 %785, %774
  %787 = lshr i64 %786, 4
  %788 = trunc i64 %787 to i8
  %789 = and i8 %788, 1
  store i8 %789, i8* %14, align 1, !tbaa !2447
  %790 = icmp eq i64 %774, 0
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %15, align 1, !tbaa !2444
  %792 = lshr i64 %774, 63
  %793 = trunc i64 %792 to i8
  store i8 %793, i8* %16, align 1, !tbaa !2445
  %794 = xor i64 %792, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %795 = xor i64 %792, %773
  %796 = add nuw nsw i64 %794, %795
  %797 = icmp eq i64 %796, 2
  %798 = zext i1 %797 to i8
  store i8 %798, i8* %17, align 1, !tbaa !2446
  %799 = add i64 %766, -20
  %800 = add i64 %765, 25
  store i64 %800, i64* %PC, align 8
  %801 = inttoptr i64 %799 to i32*
  %802 = load i32, i32* %801, align 4
  %803 = sext i32 %802 to i64
  store i64 %803, i64* %RCX, align 8, !tbaa !2424
  %804 = add i64 %774, %803
  %805 = add i64 %765, 29
  store i64 %805, i64* %PC, align 8
  %806 = inttoptr i64 %804 to i8*
  %807 = load i8, i8* %806, align 1
  %808 = sext i8 %807 to i64
  %809 = and i64 %808, 4294967295
  store i64 %809, i64* %RDX, align 8, !tbaa !2424
  %810 = sext i8 %807 to i32
  %811 = add nsw i32 %810, -35
  %812 = icmp ult i8 %807, 35
  %813 = zext i1 %812 to i8
  store i8 %813, i8* %12, align 1, !tbaa !2429
  %814 = and i32 %811, 255
  %815 = tail call i32 @llvm.ctpop.i32(i32 %814) #9
  %816 = trunc i32 %815 to i8
  %817 = and i8 %816, 1
  %818 = xor i8 %817, 1
  store i8 %818, i8* %13, align 1, !tbaa !2443
  %819 = xor i32 %811, %810
  %820 = lshr i32 %819, 4
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  store i8 %822, i8* %14, align 1, !tbaa !2447
  %823 = icmp eq i32 %811, 0
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %15, align 1, !tbaa !2444
  %825 = lshr i32 %811, 31
  %826 = trunc i32 %825 to i8
  store i8 %826, i8* %16, align 1, !tbaa !2445
  %827 = lshr i32 %810, 31
  %828 = xor i32 %825, %827
  %829 = add nuw nsw i32 %828, %827
  %830 = icmp eq i32 %829, 2
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %17, align 1, !tbaa !2446
  %.v57 = select i1 %823, i64 38, i64 89
  %832 = add i64 %765, %.v57
  %833 = add i64 %832, 10
  store i64 %833, i64* %PC, align 8
  br i1 %823, label %block_400736, label %block_400769

block_4007c9:                                     ; preds = %block_4007bf
  %834 = add i64 %364, 4
  store i64 %834, i64* %PC, align 8
  %835 = load i32, i32* %351, align 4
  %836 = add i32 %835, -11
  %837 = icmp ult i32 %835, 11
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %12, align 1, !tbaa !2429
  %839 = and i32 %836, 255
  %840 = tail call i32 @llvm.ctpop.i32(i32 %839) #9
  %841 = trunc i32 %840 to i8
  %842 = and i8 %841, 1
  %843 = xor i8 %842, 1
  store i8 %843, i8* %13, align 1, !tbaa !2443
  %844 = xor i32 %836, %835
  %845 = lshr i32 %844, 4
  %846 = trunc i32 %845 to i8
  %847 = and i8 %846, 1
  store i8 %847, i8* %14, align 1, !tbaa !2447
  %848 = icmp eq i32 %836, 0
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %15, align 1, !tbaa !2444
  %850 = lshr i32 %836, 31
  %851 = trunc i32 %850 to i8
  store i8 %851, i8* %16, align 1, !tbaa !2445
  %852 = lshr i32 %835, 31
  %853 = xor i32 %850, %852
  %854 = add nuw nsw i32 %853, %852
  %855 = icmp eq i32 %854, 2
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %17, align 1, !tbaa !2446
  %857 = icmp ne i8 %851, 0
  %858 = xor i1 %857, %855
  %.v64 = select i1 %858, i64 22, i64 10
  %859 = add i64 %364, %.v64
  store i64 %859, i64* %PC, align 8, !tbaa !2424
  br i1 %858, label %block_4007df, label %block_4007d3

block_40078f:                                     ; preds = %block_400769
  %860 = load i64, i64* %RBP, align 8
  %861 = add i64 %860, -24
  %862 = add i64 %650, 4
  store i64 %862, i64* %PC, align 8
  %863 = inttoptr i64 %861 to i32*
  %864 = load i32, i32* %863, align 4
  %865 = add i32 %864, -2
  %866 = icmp ult i32 %864, 2
  %867 = zext i1 %866 to i8
  store i8 %867, i8* %12, align 1, !tbaa !2429
  %868 = and i32 %865, 255
  %869 = tail call i32 @llvm.ctpop.i32(i32 %868) #9
  %870 = trunc i32 %869 to i8
  %871 = and i8 %870, 1
  %872 = xor i8 %871, 1
  store i8 %872, i8* %13, align 1, !tbaa !2443
  %873 = xor i32 %865, %864
  %874 = lshr i32 %873, 4
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  store i8 %876, i8* %14, align 1, !tbaa !2447
  %877 = icmp eq i32 %865, 0
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %15, align 1, !tbaa !2444
  %879 = lshr i32 %865, 31
  %880 = trunc i32 %879 to i8
  store i8 %880, i8* %16, align 1, !tbaa !2445
  %881 = lshr i32 %864, 31
  %882 = xor i32 %879, %881
  %883 = add nuw nsw i32 %882, %881
  %884 = icmp eq i32 %883, 2
  %885 = zext i1 %884 to i8
  store i8 %885, i8* %17, align 1, !tbaa !2446
  %.v59 = select i1 %877, i64 10, i64 68
  %886 = add i64 %650, %.v59
  store i64 %886, i64* %PC, align 8, !tbaa !2424
  br i1 %877, label %block_400799, label %block_4007d3

block_4007f7:                                     ; preds = %block_4007eb
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %887 = add i64 %215, -951
  %888 = add i64 %215, 17
  %889 = load i64, i64* %RSP, align 8, !tbaa !2424
  %890 = add i64 %889, -8
  %891 = inttoptr i64 %890 to i64*
  store i64 %888, i64* %891, align 8
  store i64 %890, i64* %RSP, align 8, !tbaa !2424
  store i64 %887, i64* %PC, align 8, !tbaa !2424
  %892 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.4)
  %893 = load i64, i64* %RBP, align 8
  %894 = add i64 %893, -4
  %895 = load i64, i64* %PC, align 8
  %896 = add i64 %895, 7
  store i64 %896, i64* %PC, align 8
  %897 = inttoptr i64 %894 to i32*
  store i32 2, i32* %897, align 4
  %898 = load i64, i64* %RBP, align 8
  %899 = add i64 %898, -104
  %900 = load i32, i32* %EAX, align 4
  %901 = load i64, i64* %PC, align 8
  %902 = add i64 %901, 3
  store i64 %902, i64* %PC, align 8
  %903 = inttoptr i64 %899 to i32*
  store i32 %900, i32* %903, align 4
  %904 = load i64, i64* %PC, align 8
  %905 = add i64 %904, 80
  store i64 %905, i64* %PC, align 8, !tbaa !2424
  br label %block_400862

; <label>:906:                                    ; preds = %block_400698
  %907 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %583, %struct.Memory* %MEMORY.4)
  ret %struct.Memory* %907
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4008e4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_4008e4:
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
  store i64 %3, i64* %RSP, align 8, !tbaa !2424
  %21 = icmp ult i64 %3, 8
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %5, align 1, !tbaa !2429
  %23 = trunc i64 %3 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #9
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %6, align 1, !tbaa !2443
  store i8 %10, i8* %11, align 1, !tbaa !2447
  %29 = icmp eq i64 %3, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %12, align 1, !tbaa !2444
  %31 = trunc i64 %15 to i8
  store i8 %31, i8* %14, align 1, !tbaa !2445
  store i8 %19, i8* %20, align 1, !tbaa !2446
  %32 = add i64 %1, 9
  store i64 %32, i64* %PC, align 8
  %33 = inttoptr i64 %3 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %PC, align 8, !tbaa !2424
  %35 = add i64 %3, 8
  store i64 %35, i64* %RSP, align 8, !tbaa !2424
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4006c2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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
  %.pre = load i64, i64* %RBP, align 8
  br label %block_4006c2

block_400769:                                     ; preds = %block_400710
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %11 = load i64, i64* %RBP, align 8
  %12 = add i64 %11, -24
  %13 = add i64 %699, 14
  store i64 %13, i64* %PC, align 8
  %14 = inttoptr i64 %12 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = mul nsw i64 %16, 11
  store i64 %17, i64* %RCX, align 8, !tbaa !2424
  %18 = lshr i64 %17, 63
  %19 = add i64 %17, ptrtoint (%maze_type* @maze to i64)
  store i64 %19, i64* %RAX, align 8, !tbaa !2424
  %20 = icmp ult i64 %19, ptrtoint (%maze_type* @maze to i64)
  %21 = icmp ult i64 %19, %17
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %5, align 1, !tbaa !2429
  %24 = trunc i64 %19 to i32
  %25 = and i32 %24, 255
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25) #9
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  store i8 %29, i8* %6, align 1, !tbaa !2443
  %30 = xor i64 %17, ptrtoint (%maze_type* @maze to i64)
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  store i8 %34, i8* %7, align 1, !tbaa !2447
  %35 = icmp eq i64 %19, 0
  %36 = zext i1 %35 to i8
  store i8 %36, i8* %8, align 1, !tbaa !2444
  %37 = lshr i64 %19, 63
  %38 = trunc i64 %37 to i8
  store i8 %38, i8* %9, align 1, !tbaa !2445
  %39 = xor i64 %37, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %40 = xor i64 %37, %18
  %41 = add nuw nsw i64 %39, %40
  %42 = icmp eq i64 %41, 2
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %10, align 1, !tbaa !2446
  %44 = add i64 %11, -20
  %45 = add i64 %699, 25
  store i64 %45, i64* %PC, align 8
  %46 = inttoptr i64 %44 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %RCX, align 8, !tbaa !2424
  %49 = add i64 %19, %48
  %50 = add i64 %699, 29
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %49 to i8*
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i64
  %54 = and i64 %53, 4294967295
  store i64 %54, i64* %RDX, align 8, !tbaa !2424
  %55 = sext i8 %52 to i32
  %56 = add nsw i32 %55, -32
  %57 = icmp ult i8 %52, 32
  %58 = zext i1 %57 to i8
  store i8 %58, i8* %5, align 1, !tbaa !2429
  %59 = and i32 %56, 255
  %60 = tail call i32 @llvm.ctpop.i32(i32 %59) #9
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  %63 = xor i8 %62, 1
  store i8 %63, i8* %6, align 1, !tbaa !2443
  %64 = xor i32 %56, %55
  %65 = lshr i32 %64, 4
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  store i8 %67, i8* %7, align 1, !tbaa !2447
  %68 = icmp eq i32 %56, 0
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %8, align 1, !tbaa !2444
  %70 = lshr i32 %56, 31
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %9, align 1, !tbaa !2445
  %72 = lshr i32 %55, 31
  %73 = xor i32 %70, %72
  %74 = add nuw nsw i32 %73, %72
  %75 = icmp eq i32 %74, 2
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %10, align 1, !tbaa !2446
  %.v96 = select i1 %68, i64 118, i64 38
  %77 = add i64 %699, %.v96
  store i64 %77, i64* %PC, align 8, !tbaa !2424
  br i1 %68, label %block_4007df, label %block_40078f

block_400862:                                     ; preds = %block_400847, %block_4007f7
  %78 = phi i64 [ %.pre92, %block_400847 ], [ %180, %block_4007f7 ]
  %MEMORY.0 = phi %struct.Memory* [ %740, %block_400847 ], [ %167, %block_4007f7 ]
  %79 = load i64, i64* %RBP, align 8
  %80 = add i64 %79, -4
  %81 = add i64 %78, 3
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %80 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = zext i32 %83 to i64
  store i64 %84, i64* %RAX, align 8, !tbaa !2424
  %85 = load i64, i64* %RSP, align 8
  %86 = add i64 %85, 112
  store i64 %86, i64* %RSP, align 8, !tbaa !2424
  %87 = icmp ugt i64 %85, -113
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %5, align 1, !tbaa !2429
  %89 = trunc i64 %86 to i32
  %90 = and i32 %89, 255
  %91 = tail call i32 @llvm.ctpop.i32(i32 %90) #9
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  %94 = xor i8 %93, 1
  store i8 %94, i8* %6, align 1, !tbaa !2443
  %95 = xor i64 %85, 16
  %96 = xor i64 %95, %86
  %97 = lshr i64 %96, 4
  %98 = trunc i64 %97 to i8
  %99 = and i8 %98, 1
  store i8 %99, i8* %7, align 1, !tbaa !2447
  %100 = icmp eq i64 %86, 0
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %8, align 1, !tbaa !2444
  %102 = lshr i64 %86, 63
  %103 = trunc i64 %102 to i8
  store i8 %103, i8* %9, align 1, !tbaa !2445
  %104 = lshr i64 %85, 63
  %105 = xor i64 %102, %104
  %106 = add nuw nsw i64 %105, %102
  %107 = icmp eq i64 %106, 2
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %10, align 1, !tbaa !2446
  %109 = add i64 %78, 8
  store i64 %109, i64* %PC, align 8
  %110 = add i64 %85, 120
  %111 = inttoptr i64 %86 to i64*
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %RBP, align 8, !tbaa !2424
  store i64 %110, i64* %RSP, align 8, !tbaa !2424
  %113 = add i64 %78, 9
  store i64 %113, i64* %PC, align 8
  %114 = inttoptr i64 %110 to i64*
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %PC, align 8, !tbaa !2424
  %116 = add i64 %85, 128
  store i64 %116, i64* %RSP, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.0

block_4007d3:                                     ; preds = %block_400799, %block_40078f, %block_4007bf, %block_4007c9
  %117 = phi i64 [ %778, %block_40078f ], [ %251, %block_4007bf ], [ %206, %block_4007c9 ], [ %448, %block_400799 ]
  %118 = phi i64 [ %752, %block_40078f ], [ %449, %block_4007bf ], [ %449, %block_4007c9 ], [ %449, %block_400799 ]
  %119 = add i64 %118, -28
  %120 = add i64 %117, 3
  store i64 %120, i64* %PC, align 8
  %121 = inttoptr i64 %119 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = zext i32 %122 to i64
  store i64 %123, i64* %RAX, align 8, !tbaa !2424
  %124 = add i64 %118, -20
  %125 = add i64 %117, 6
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %124 to i32*
  store i32 %122, i32* %126, align 4
  %127 = load i64, i64* %RBP, align 8
  %128 = add i64 %127, -32
  %129 = load i64, i64* %PC, align 8
  %130 = add i64 %129, 3
  store i64 %130, i64* %PC, align 8
  %131 = inttoptr i64 %128 to i32*
  %132 = load i32, i32* %131, align 4
  %133 = zext i32 %132 to i64
  store i64 %133, i64* %RAX, align 8, !tbaa !2424
  %134 = add i64 %127, -24
  %135 = add i64 %129, 6
  store i64 %135, i64* %PC, align 8
  %136 = inttoptr i64 %134 to i32*
  store i32 %132, i32* %136, align 4
  %.pre91 = load i64, i64* %PC, align 8
  br label %block_4007df

block_4006d0:                                     ; preds = %block_400698
  %137 = add i64 %450, -20
  store i64 4196051, i64* %PC, align 8
  %138 = inttoptr i64 %137 to i32*
  %139 = load i32, i32* %138, align 4
  store i64 4196054, i64* %PC, align 8
  %140 = add i32 %139, 1
  %141 = zext i32 %140 to i64
  store i64 %141, i64* %RAX, align 8, !tbaa !2424
  %142 = icmp eq i32 %139, -1
  %143 = icmp eq i32 %140, 0
  %144 = or i1 %142, %143
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %5, align 1, !tbaa !2429
  %146 = and i32 %140, 255
  %147 = tail call i32 @llvm.ctpop.i32(i32 %146) #9
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  store i8 %150, i8* %6, align 1, !tbaa !2443
  %151 = xor i32 %140, %139
  %152 = lshr i32 %151, 4
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  store i8 %154, i8* %7, align 1, !tbaa !2447
  %155 = zext i1 %143 to i8
  store i8 %155, i8* %8, align 1, !tbaa !2444
  %156 = lshr i32 %140, 31
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* %9, align 1, !tbaa !2445
  %158 = lshr i32 %139, 31
  %159 = xor i32 %156, %158
  br label %block_400710.backedge

block_400710.backedge:                            ; preds = %block_4006d0, %block_4006a6, %block_4006b4
  %160 = phi i64 [ 4196054, %block_4006d0 ], [ 4196012, %block_4006a6 ], [ 4196026, %block_4006b4 ]
  %.sink89 = phi i32 [ %140, %block_4006d0 ], [ %290, %block_4006a6 ], [ %604, %block_4006b4 ]
  %.sink70 = phi i32 [ %156, %block_4006d0 ], [ %310, %block_4006a6 ], [ %620, %block_4006b4 ]
  %.sink69 = phi i32 [ %159, %block_4006d0 ], [ %309, %block_4006a6 ], [ %623, %block_4006b4 ]
  %.sink20.be = phi i64 [ -20, %block_4006d0 ], [ -24, %block_4006a6 ], [ -24, %block_4006b4 ]
  %.sink5.be = phi i64 [ 55, %block_4006d0 ], [ 97, %block_4006a6 ], [ 83, %block_4006b4 ]
  %161 = add nuw nsw i32 %.sink69, %.sink70
  br label %block_400710

block_4007f7:                                     ; preds = %block_4007eb
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %162 = add i64 %734, -951
  %163 = add i64 %734, 17
  %164 = load i64, i64* %RSP, align 8, !tbaa !2424
  %165 = add i64 %164, -8
  %166 = inttoptr i64 %165 to i64*
  store i64 %163, i64* %166, align 8
  store i64 %165, i64* %RSP, align 8, !tbaa !2424
  store i64 %162, i64* %PC, align 8, !tbaa !2424
  %167 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.5)
  %168 = load i64, i64* %RBP, align 8
  %169 = add i64 %168, -4
  %170 = load i64, i64* %PC, align 8
  %171 = add i64 %170, 7
  store i64 %171, i64* %PC, align 8
  %172 = inttoptr i64 %169 to i32*
  store i32 2, i32* %172, align 4
  %173 = load i64, i64* %RBP, align 8
  %174 = add i64 %173, -104
  %175 = load i32, i32* %EAX, align 4
  %176 = load i64, i64* %PC, align 8
  %177 = add i64 %176, 3
  store i64 %177, i64* %PC, align 8
  %178 = inttoptr i64 %174 to i32*
  store i32 %175, i32* %178, align 4
  %179 = load i64, i64* %PC, align 8
  %180 = add i64 %179, 80
  store i64 %180, i64* %PC, align 8, !tbaa !2424
  br label %block_400862

block_4007c9:                                     ; preds = %block_4007bf
  %181 = add i64 %251, 4
  store i64 %181, i64* %PC, align 8
  %182 = load i32, i32* %238, align 4
  %183 = add i32 %182, -11
  %184 = icmp ult i32 %182, 11
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %5, align 1, !tbaa !2429
  %186 = and i32 %183, 255
  %187 = tail call i32 @llvm.ctpop.i32(i32 %186) #9
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %6, align 1, !tbaa !2443
  %191 = xor i32 %183, %182
  %192 = lshr i32 %191, 4
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  store i8 %194, i8* %7, align 1, !tbaa !2447
  %195 = icmp eq i32 %183, 0
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %8, align 1, !tbaa !2444
  %197 = lshr i32 %183, 31
  %198 = trunc i32 %197 to i8
  store i8 %198, i8* %9, align 1, !tbaa !2445
  %199 = lshr i32 %182, 31
  %200 = xor i32 %197, %199
  %201 = add nuw nsw i32 %200, %199
  %202 = icmp eq i32 %201, 2
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %10, align 1, !tbaa !2446
  %204 = icmp ne i8 %198, 0
  %205 = xor i1 %204, %202
  %.v103 = select i1 %205, i64 22, i64 10
  %206 = add i64 %251, %.v103
  store i64 %206, i64* %PC, align 8, !tbaa !2424
  br i1 %205, label %block_4007df, label %block_4007d3

block_4006c2.loopexit:                            ; preds = %block_400698
  br label %block_4006c2

block_4006c2:                                     ; preds = %block_4006c2.loopexit, %3
  %207 = phi i64 [ %1, %3 ], [ 4196034, %block_4006c2.loopexit ]
  %208 = phi i64 [ %.pre, %3 ], [ %450, %block_4006c2.loopexit ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %3 ], [ %503, %block_4006c2.loopexit ]
  %209 = add i64 %208, -20
  %210 = add i64 %207, 3
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %209 to i32*
  %212 = load i32, i32* %211, align 4
  %213 = add i64 %207, 6
  store i64 %213, i64* %PC, align 8
  %214 = add i32 %212, -1
  %215 = zext i32 %214 to i64
  store i64 %215, i64* %RAX, align 8, !tbaa !2424
  %216 = icmp ne i32 %212, 0
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %5, align 1, !tbaa !2429
  %218 = and i32 %214, 255
  %219 = tail call i32 @llvm.ctpop.i32(i32 %218) #9
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  %222 = xor i8 %221, 1
  store i8 %222, i8* %6, align 1, !tbaa !2443
  %223 = xor i32 %212, 16
  %224 = xor i32 %223, %214
  %225 = lshr i32 %224, 4
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  store i8 %227, i8* %7, align 1, !tbaa !2447
  %228 = icmp eq i32 %214, 0
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %8, align 1, !tbaa !2444
  %230 = lshr i32 %214, 31
  %231 = trunc i32 %230 to i8
  store i8 %231, i8* %9, align 1, !tbaa !2445
  %232 = lshr i32 %212, 31
  %233 = xor i32 %230, %232
  %234 = xor i32 %230, 1
  %235 = add nuw nsw i32 %233, %234
  br label %block_400710

block_4007bf:                                     ; preds = %block_400799
  %236 = add i64 %449, -20
  %237 = add i64 %448, 4
  store i64 %237, i64* %PC, align 8
  %238 = inttoptr i64 %236 to i32*
  %239 = load i32, i32* %238, align 4
  store i8 0, i8* %5, align 1, !tbaa !2429
  %240 = and i32 %239, 255
  %241 = tail call i32 @llvm.ctpop.i32(i32 %240) #9
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  %244 = xor i8 %243, 1
  store i8 %244, i8* %6, align 1, !tbaa !2443
  store i8 0, i8* %7, align 1, !tbaa !2447
  %245 = icmp eq i32 %239, 0
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %8, align 1, !tbaa !2444
  %247 = lshr i32 %239, 31
  %248 = trunc i32 %247 to i8
  store i8 %248, i8* %9, align 1, !tbaa !2445
  store i8 0, i8* %10, align 1, !tbaa !2446
  %249 = icmp ne i8 %248, 0
  %250 = or i1 %245, %249
  %.v102 = select i1 %250, i64 20, i64 10
  %251 = add i64 %448, %.v102
  store i64 %251, i64* %PC, align 8, !tbaa !2424
  br i1 %250, label %block_4007d3, label %block_4007c9

block_400736:                                     ; preds = %block_400710
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %252 = add i64 %699, -758
  %253 = add i64 %699, 17
  %254 = load i64, i64* %RSP, align 8, !tbaa !2424
  %255 = add i64 %254, -8
  %256 = inttoptr i64 %255 to i64*
  store i64 %253, i64* %256, align 8
  store i64 %255, i64* %RSP, align 8, !tbaa !2424
  store i64 %252, i64* %PC, align 8, !tbaa !2424
  %257 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.5)
  %258 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2424
  %259 = load i64, i64* %RBP, align 8
  %260 = add i64 %259, -64
  store i64 %260, i64* %RSI, align 8, !tbaa !2424
  %261 = add i64 %259, -96
  %262 = load i32, i32* %EAX, align 4
  %263 = add i64 %258, 17
  store i64 %263, i64* %PC, align 8
  %264 = inttoptr i64 %261 to i32*
  store i32 %262, i32* %264, align 4
  %265 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %266 = add i64 %265, -792
  %267 = add i64 %265, 7
  %268 = load i64, i64* %RSP, align 8, !tbaa !2424
  %269 = add i64 %268, -8
  %270 = inttoptr i64 %269 to i64*
  store i64 %267, i64* %270, align 8
  store i64 %269, i64* %RSP, align 8, !tbaa !2424
  store i64 %266, i64* %PC, align 8, !tbaa !2424
  %271 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %257)
  %272 = load i64, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %5, align 1, !tbaa !2429
  store i8 1, i8* %6, align 1, !tbaa !2443
  store i8 1, i8* %8, align 1, !tbaa !2444
  store i8 0, i8* %9, align 1, !tbaa !2445
  store i8 0, i8* %10, align 1, !tbaa !2446
  store i8 0, i8* %7, align 1, !tbaa !2447
  %273 = load i64, i64* %RBP, align 8
  %274 = add i64 %273, -100
  %275 = load i32, i32* %EAX, align 4
  %276 = add i64 %272, 5
  store i64 %276, i64* %PC, align 8
  %277 = inttoptr i64 %274 to i32*
  store i32 %275, i32* %277, align 4
  %278 = load i64, i64* %PC, align 8
  %279 = add i64 %278, -772
  %280 = add i64 %278, 5
  %281 = load i64, i64* %RSP, align 8, !tbaa !2424
  %282 = add i64 %281, -8
  %283 = inttoptr i64 %282 to i64*
  store i64 %280, i64* %283, align 8
  store i64 %282, i64* %RSP, align 8, !tbaa !2424
  store i64 %279, i64* %PC, align 8, !tbaa !2424
  %284 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %271)
  %285 = load i64, i64* %PC, align 8
  %286 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %285, %struct.Memory* %284)
  ret %struct.Memory* %286

block_4006a6:                                     ; preds = %block_400698
  %287 = add i64 %450, -24
  store i64 4196009, i64* %PC, align 8
  %288 = inttoptr i64 %287 to i32*
  %289 = load i32, i32* %288, align 4
  store i64 4196012, i64* %PC, align 8
  %290 = add i32 %289, -1
  %291 = zext i32 %290 to i64
  store i64 %291, i64* %RAX, align 8, !tbaa !2424
  %292 = icmp ne i32 %289, 0
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %5, align 1, !tbaa !2429
  %294 = and i32 %290, 255
  %295 = tail call i32 @llvm.ctpop.i32(i32 %294) #9
  %296 = trunc i32 %295 to i8
  %297 = and i8 %296, 1
  %298 = xor i8 %297, 1
  store i8 %298, i8* %6, align 1, !tbaa !2443
  %299 = xor i32 %289, 16
  %300 = xor i32 %299, %290
  %301 = lshr i32 %300, 4
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  store i8 %303, i8* %7, align 1, !tbaa !2447
  %304 = icmp eq i32 %290, 0
  %305 = zext i1 %304 to i8
  store i8 %305, i8* %8, align 1, !tbaa !2444
  %306 = lshr i32 %290, 31
  %307 = trunc i32 %306 to i8
  store i8 %307, i8* %9, align 1, !tbaa !2445
  %308 = lshr i32 %289, 31
  %309 = xor i32 %306, %308
  %310 = xor i32 %306, 1
  br label %block_400710.backedge

block_40066e:                                     ; preds = %block_400817
  %311 = add i64 %535, -20
  %312 = add i64 %564, 3
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %311 to i32*
  %314 = load i32, i32* %313, align 4
  %315 = zext i32 %314 to i64
  store i64 %315, i64* %RAX, align 8, !tbaa !2424
  %316 = add i64 %535, -28
  %317 = add i64 %564, 6
  store i64 %317, i64* %PC, align 8
  %318 = inttoptr i64 %316 to i32*
  store i32 %314, i32* %318, align 4
  %319 = load i64, i64* %RBP, align 8
  %320 = add i64 %319, -24
  %321 = load i64, i64* %PC, align 8
  %322 = add i64 %321, 3
  store i64 %322, i64* %PC, align 8
  %323 = inttoptr i64 %320 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = zext i32 %324 to i64
  store i64 %325, i64* %RAX, align 8, !tbaa !2424
  %326 = add i64 %319, -32
  %327 = add i64 %321, 6
  store i64 %327, i64* %PC, align 8
  %328 = inttoptr i64 %326 to i32*
  store i32 %324, i32* %328, align 4
  %329 = load i64, i64* %RBP, align 8
  %330 = add i64 %329, -36
  %331 = load i64, i64* %PC, align 8
  %332 = add i64 %331, 4
  store i64 %332, i64* %PC, align 8
  %333 = inttoptr i64 %330 to i32*
  %334 = load i32, i32* %333, align 4
  %335 = sext i32 %334 to i64
  store i64 %335, i64* %RCX, align 8, !tbaa !2424
  %336 = add nsw i64 %335, -64
  %337 = add i64 %336, %329
  %338 = add i64 %331, 9
  store i64 %338, i64* %PC, align 8
  %339 = inttoptr i64 %337 to i8*
  %340 = load i8, i8* %339, align 1
  %341 = sext i8 %340 to i32
  %342 = add nsw i32 %341, -97
  %343 = zext i32 %342 to i64
  %344 = lshr i32 %342, 31
  store i64 %343, i64* %RCX, align 8, !tbaa !2424
  %345 = add nsw i32 %341, -119
  %346 = zext i32 %345 to i64
  store i64 %346, i64* %RAX, align 8, !tbaa !2424
  %347 = icmp ult i32 %342, 22
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %5, align 1, !tbaa !2429
  %349 = and i32 %345, 255
  %350 = tail call i32 @llvm.ctpop.i32(i32 %349) #9
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = xor i8 %352, 1
  store i8 %353, i8* %6, align 1, !tbaa !2443
  %354 = xor i32 %342, 16
  %355 = xor i32 %354, %345
  %356 = lshr i32 %355, 4
  %357 = trunc i32 %356 to i8
  %358 = and i8 %357, 1
  store i8 %358, i8* %7, align 1, !tbaa !2447
  %359 = icmp eq i32 %345, 0
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %8, align 1, !tbaa !2444
  %361 = lshr i32 %345, 31
  %362 = trunc i32 %361 to i8
  store i8 %362, i8* %9, align 1, !tbaa !2445
  %363 = xor i32 %361, %344
  %364 = add nuw nsw i32 %363, %344
  %365 = icmp eq i32 %364, 2
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %10, align 1, !tbaa !2446
  %367 = add i64 %329, -80
  %368 = add i64 %331, 21
  store i64 %368, i64* %PC, align 8
  %369 = inttoptr i64 %367 to i64*
  store i64 %343, i64* %369, align 8
  %370 = load i64, i64* %RBP, align 8
  %371 = add i64 %370, -84
  %372 = load i32, i32* %EAX, align 4
  %373 = load i64, i64* %PC, align 8
  %374 = add i64 %373, 3
  store i64 %374, i64* %PC, align 8
  %375 = inttoptr i64 %371 to i32*
  store i32 %372, i32* %375, align 4
  %376 = load i64, i64* %PC, align 8
  %377 = add i64 %376, 76
  %378 = add i64 %376, 6
  %379 = load i8, i8* %5, align 1, !tbaa !2429
  %380 = load i8, i8* %8, align 1, !tbaa !2444
  %381 = or i8 %380, %379
  %382 = icmp eq i8 %381, 0
  %383 = select i1 %382, i64 %377, i64 %378
  store i64 %383, i64* %PC, align 8, !tbaa !2424
  br i1 %382, label %block_4006de, label %block_400698

block_400799:                                     ; preds = %block_40078f
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %384 = add i64 %778, 14
  store i64 %384, i64* %PC, align 8
  %385 = load i32, i32* %755, align 4
  %386 = sext i32 %385 to i64
  %387 = mul nsw i64 %386, 11
  store i64 %387, i64* %RCX, align 8, !tbaa !2424
  %388 = lshr i64 %387, 63
  %389 = add i64 %387, ptrtoint (%maze_type* @maze to i64)
  store i64 %389, i64* %RAX, align 8, !tbaa !2424
  %390 = icmp ult i64 %389, ptrtoint (%maze_type* @maze to i64)
  %391 = icmp ult i64 %389, %387
  %392 = or i1 %390, %391
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %5, align 1, !tbaa !2429
  %394 = trunc i64 %389 to i32
  %395 = and i32 %394, 255
  %396 = tail call i32 @llvm.ctpop.i32(i32 %395) #9
  %397 = trunc i32 %396 to i8
  %398 = and i8 %397, 1
  %399 = xor i8 %398, 1
  store i8 %399, i8* %6, align 1, !tbaa !2443
  %400 = xor i64 %387, ptrtoint (%maze_type* @maze to i64)
  %401 = xor i64 %400, %389
  %402 = lshr i64 %401, 4
  %403 = trunc i64 %402 to i8
  %404 = and i8 %403, 1
  store i8 %404, i8* %7, align 1, !tbaa !2447
  %405 = icmp eq i64 %389, 0
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %8, align 1, !tbaa !2444
  %407 = lshr i64 %389, 63
  %408 = trunc i64 %407 to i8
  store i8 %408, i8* %9, align 1, !tbaa !2445
  %409 = xor i64 %407, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %410 = xor i64 %407, %388
  %411 = add nuw nsw i64 %409, %410
  %412 = icmp eq i64 %411, 2
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %10, align 1, !tbaa !2446
  %414 = add i64 %752, -20
  %415 = add i64 %778, 25
  store i64 %415, i64* %PC, align 8
  %416 = inttoptr i64 %414 to i32*
  %417 = load i32, i32* %416, align 4
  %418 = sext i32 %417 to i64
  store i64 %418, i64* %RCX, align 8, !tbaa !2424
  %419 = add i64 %389, %418
  %420 = add i64 %778, 29
  store i64 %420, i64* %PC, align 8
  %421 = inttoptr i64 %419 to i8*
  %422 = load i8, i8* %421, align 1
  %423 = sext i8 %422 to i64
  %424 = and i64 %423, 4294967295
  store i64 %424, i64* %RDX, align 8, !tbaa !2424
  %425 = sext i8 %422 to i32
  %426 = add nsw i32 %425, -124
  %427 = icmp ult i8 %422, 124
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %5, align 1, !tbaa !2429
  %429 = and i32 %426, 255
  %430 = tail call i32 @llvm.ctpop.i32(i32 %429) #9
  %431 = trunc i32 %430 to i8
  %432 = and i8 %431, 1
  %433 = xor i8 %432, 1
  store i8 %433, i8* %6, align 1, !tbaa !2443
  %434 = xor i32 %425, 16
  %435 = xor i32 %434, %426
  %436 = lshr i32 %435, 4
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  store i8 %438, i8* %7, align 1, !tbaa !2447
  %439 = icmp eq i32 %426, 0
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %8, align 1, !tbaa !2444
  %441 = lshr i32 %426, 31
  %442 = trunc i32 %441 to i8
  store i8 %442, i8* %9, align 1, !tbaa !2445
  %443 = lshr i32 %425, 31
  %444 = xor i32 %441, %443
  %445 = add nuw nsw i32 %444, %443
  %446 = icmp eq i32 %445, 2
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %10, align 1, !tbaa !2446
  %.v101 = select i1 %439, i64 38, i64 58
  %448 = add i64 %778, %.v101
  store i64 %448, i64* %PC, align 8, !tbaa !2424
  %449 = load i64, i64* %RBP, align 8
  br i1 %439, label %block_4007bf, label %block_4007d3

block_400698:                                     ; preds = %block_40066e
  %450 = load i64, i64* %RBP, align 8
  %451 = add i64 %450, -80
  %452 = add i64 %383, 4
  store i64 %452, i64* %PC, align 8
  %453 = inttoptr i64 %451 to i64*
  %454 = load i64, i64* %453, align 8
  store i64 %454, i64* %RAX, align 8, !tbaa !2424
  %455 = shl i64 %454, 3
  %456 = add i64 %455, add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 8)
  %457 = add i64 %383, 12
  store i64 %457, i64* %PC, align 8
  %458 = inttoptr i64 %456 to i64*
  %459 = load i64, i64* %458, align 8
  store i64 %459, i64* %RCX, align 8, !tbaa !2424
  store i64 %459, i64* %PC, align 8, !tbaa !2424
  switch i64 %459, label %781 [
    i64 4196034, label %block_4006c2.loopexit
    i64 4196048, label %block_4006d0
    i64 4196020, label %block_4006b4
    i64 4196062, label %block_4006de
    i64 4196006, label %block_4006a6
  ]

block_400817:                                     ; preds = %block_4007eb, %block_4007df.block_400817_crit_edge
  %.pre-phi95 = phi i32* [ %.pre94, %block_4007df.block_400817_crit_edge ], [ %708, %block_4007eb ]
  %460 = phi i64 [ %600, %block_4007df.block_400817_crit_edge ], [ %734, %block_4007eb ]
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %461 = add i64 %460, 14
  store i64 %461, i64* %PC, align 8
  %462 = load i32, i32* %.pre-phi95, align 4
  %463 = sext i32 %462 to i64
  %464 = mul nsw i64 %463, 11
  store i64 %464, i64* %RCX, align 8, !tbaa !2424
  %465 = lshr i64 %464, 63
  %466 = add i64 %464, ptrtoint (%maze_type* @maze to i64)
  store i64 %466, i64* %RAX, align 8, !tbaa !2424
  %467 = icmp ult i64 %466, ptrtoint (%maze_type* @maze to i64)
  %468 = icmp ult i64 %466, %464
  %469 = or i1 %467, %468
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %5, align 1, !tbaa !2429
  %471 = trunc i64 %466 to i32
  %472 = and i32 %471, 255
  %473 = tail call i32 @llvm.ctpop.i32(i32 %472) #9
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  %476 = xor i8 %475, 1
  store i8 %476, i8* %6, align 1, !tbaa !2443
  %477 = xor i64 %464, ptrtoint (%maze_type* @maze to i64)
  %478 = xor i64 %477, %466
  %479 = lshr i64 %478, 4
  %480 = trunc i64 %479 to i8
  %481 = and i8 %480, 1
  store i8 %481, i8* %7, align 1, !tbaa !2447
  %482 = icmp eq i64 %466, 0
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %8, align 1, !tbaa !2444
  %484 = lshr i64 %466, 63
  %485 = trunc i64 %484 to i8
  store i8 %485, i8* %9, align 1, !tbaa !2445
  %486 = xor i64 %484, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %487 = xor i64 %484, %465
  %488 = add nuw nsw i64 %486, %487
  %489 = icmp eq i64 %488, 2
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %10, align 1, !tbaa !2446
  %491 = add i64 %460, 25
  store i64 %491, i64* %PC, align 8
  %492 = load i32, i32* %574, align 4
  %493 = sext i32 %492 to i64
  store i64 %493, i64* %RCX, align 8, !tbaa !2424
  %494 = add i64 %466, %493
  %495 = add i64 %460, 29
  store i64 %495, i64* %PC, align 8
  %496 = inttoptr i64 %494 to i8*
  store i8 88, i8* %496, align 1
  %497 = load i64, i64* %PC, align 8
  %498 = add i64 %497, -740
  %499 = add i64 %497, 5
  %500 = load i64, i64* %RSP, align 8, !tbaa !2424
  %501 = add i64 %500, -8
  %502 = inttoptr i64 %501 to i64*
  store i64 %499, i64* %502, align 8
  store i64 %501, i64* %RSP, align 8, !tbaa !2424
  store i64 %498, i64* %PC, align 8, !tbaa !2424
  %503 = tail call %struct.Memory* @sub_400550_draw(%struct.State* nonnull %0, i64 %498, %struct.Memory* %MEMORY.5)
  %504 = load i64, i64* %RBP, align 8
  %505 = add i64 %504, -36
  %506 = load i64, i64* %PC, align 8
  %507 = add i64 %506, 3
  store i64 %507, i64* %PC, align 8
  %508 = inttoptr i64 %505 to i32*
  %509 = load i32, i32* %508, align 4
  %510 = add i32 %509, 1
  %511 = zext i32 %510 to i64
  store i64 %511, i64* %RDX, align 8, !tbaa !2424
  %512 = icmp eq i32 %509, -1
  %513 = icmp eq i32 %510, 0
  %514 = or i1 %512, %513
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %5, align 1, !tbaa !2429
  %516 = and i32 %510, 255
  %517 = tail call i32 @llvm.ctpop.i32(i32 %516) #9
  %518 = trunc i32 %517 to i8
  %519 = and i8 %518, 1
  %520 = xor i8 %519, 1
  store i8 %520, i8* %6, align 1, !tbaa !2443
  %521 = xor i32 %510, %509
  %522 = lshr i32 %521, 4
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  store i8 %524, i8* %7, align 1, !tbaa !2447
  %525 = zext i1 %513 to i8
  store i8 %525, i8* %8, align 1, !tbaa !2444
  %526 = lshr i32 %510, 31
  %527 = trunc i32 %526 to i8
  store i8 %527, i8* %9, align 1, !tbaa !2445
  %528 = lshr i32 %509, 31
  %529 = xor i32 %526, %528
  %530 = add nuw nsw i32 %529, %526
  %531 = icmp eq i32 %530, 2
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %10, align 1, !tbaa !2446
  %533 = add i64 %506, 9
  store i64 %533, i64* %PC, align 8
  store i32 %510, i32* %508, align 4
  %534 = load i64, i64* %PC, align 8
  %535 = load i64, i64* %RBP, align 8
  %536 = add i64 %535, -36
  %537 = add i64 %534, -474
  store i64 %537, i64* %PC, align 8
  %538 = inttoptr i64 %536 to i32*
  %539 = load i32, i32* %538, align 4
  %540 = add i32 %539, -28
  %541 = icmp ult i32 %539, 28
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %5, align 1, !tbaa !2429
  %543 = and i32 %540, 255
  %544 = tail call i32 @llvm.ctpop.i32(i32 %543) #9
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  %547 = xor i8 %546, 1
  store i8 %547, i8* %6, align 1, !tbaa !2443
  %548 = xor i32 %539, 16
  %549 = xor i32 %548, %540
  %550 = lshr i32 %549, 4
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  store i8 %552, i8* %7, align 1, !tbaa !2447
  %553 = icmp eq i32 %540, 0
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %8, align 1, !tbaa !2444
  %555 = lshr i32 %540, 31
  %556 = trunc i32 %555 to i8
  store i8 %556, i8* %9, align 1, !tbaa !2445
  %557 = lshr i32 %539, 31
  %558 = xor i32 %555, %557
  %559 = add nuw nsw i32 %558, %557
  %560 = icmp eq i32 %559, 2
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %10, align 1, !tbaa !2446
  %562 = icmp ne i8 %556, 0
  %563 = xor i1 %562, %560
  %.v99 = select i1 %563, i64 -468, i64 5
  %564 = add i64 %534, %.v99
  store i64 %564, i64* %PC, align 8, !tbaa !2424
  br i1 %563, label %block_40066e, label %block_400847

block_4007df:                                     ; preds = %block_4007c9, %block_4007d3, %block_400769
  %565 = phi i64 [ %206, %block_4007c9 ], [ %.pre91, %block_4007d3 ], [ %77, %block_400769 ]
  %566 = load i64, i64* %RBP, align 8
  %567 = add i64 %566, -28
  %568 = add i64 %565, 3
  store i64 %568, i64* %PC, align 8
  %569 = inttoptr i64 %567 to i32*
  %570 = load i32, i32* %569, align 4
  %571 = zext i32 %570 to i64
  store i64 %571, i64* %RAX, align 8, !tbaa !2424
  %572 = add i64 %566, -20
  %573 = add i64 %565, 6
  store i64 %573, i64* %PC, align 8
  %574 = inttoptr i64 %572 to i32*
  %575 = load i32, i32* %574, align 4
  %576 = sub i32 %570, %575
  %577 = icmp ult i32 %570, %575
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %5, align 1, !tbaa !2429
  %579 = and i32 %576, 255
  %580 = tail call i32 @llvm.ctpop.i32(i32 %579) #9
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  %583 = xor i8 %582, 1
  store i8 %583, i8* %6, align 1, !tbaa !2443
  %584 = xor i32 %575, %570
  %585 = xor i32 %584, %576
  %586 = lshr i32 %585, 4
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  store i8 %588, i8* %7, align 1, !tbaa !2447
  %589 = icmp eq i32 %576, 0
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %8, align 1, !tbaa !2444
  %591 = lshr i32 %576, 31
  %592 = trunc i32 %591 to i8
  store i8 %592, i8* %9, align 1, !tbaa !2445
  %593 = lshr i32 %570, 31
  %594 = lshr i32 %575, 31
  %595 = xor i32 %594, %593
  %596 = xor i32 %591, %593
  %597 = add nuw nsw i32 %596, %595
  %598 = icmp eq i32 %597, 2
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %10, align 1, !tbaa !2446
  %.v98 = select i1 %589, i64 12, i64 56
  %600 = add i64 %565, %.v98
  store i64 %600, i64* %PC, align 8, !tbaa !2424
  br i1 %589, label %block_4007eb, label %block_4007df.block_400817_crit_edge

block_4007df.block_400817_crit_edge:              ; preds = %block_4007df
  %.pre93 = add i64 %566, -24
  %.pre94 = inttoptr i64 %.pre93 to i32*
  br label %block_400817

block_4006b4:                                     ; preds = %block_400698
  %601 = add i64 %450, -24
  store i64 4196023, i64* %PC, align 8
  %602 = inttoptr i64 %601 to i32*
  %603 = load i32, i32* %602, align 4
  store i64 4196026, i64* %PC, align 8
  %604 = add i32 %603, 1
  %605 = zext i32 %604 to i64
  store i64 %605, i64* %RAX, align 8, !tbaa !2424
  %606 = icmp eq i32 %603, -1
  %607 = icmp eq i32 %604, 0
  %608 = or i1 %606, %607
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %5, align 1, !tbaa !2429
  %610 = and i32 %604, 255
  %611 = tail call i32 @llvm.ctpop.i32(i32 %610) #9
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  %614 = xor i8 %613, 1
  store i8 %614, i8* %6, align 1, !tbaa !2443
  %615 = xor i32 %604, %603
  %616 = lshr i32 %615, 4
  %617 = trunc i32 %616 to i8
  %618 = and i8 %617, 1
  store i8 %618, i8* %7, align 1, !tbaa !2447
  %619 = zext i1 %607 to i8
  store i8 %619, i8* %8, align 1, !tbaa !2444
  %620 = lshr i32 %604, 31
  %621 = trunc i32 %620 to i8
  store i8 %621, i8* %9, align 1, !tbaa !2445
  %622 = lshr i32 %603, 31
  %623 = xor i32 %620, %622
  br label %block_400710.backedge

block_400710:                                     ; preds = %block_400710.backedge, %block_4006c2
  %624 = phi i64 [ %160, %block_400710.backedge ], [ %213, %block_4006c2 ]
  %.sink = phi i32 [ %.sink89, %block_400710.backedge ], [ %214, %block_4006c2 ]
  %625 = phi i64 [ %450, %block_400710.backedge ], [ %208, %block_4006c2 ]
  %.sink72 = phi i32 [ %161, %block_400710.backedge ], [ %235, %block_4006c2 ]
  %.sink20 = phi i64 [ %.sink20.be, %block_400710.backedge ], [ -20, %block_4006c2 ]
  %.sink5 = phi i64 [ %.sink5.be, %block_400710.backedge ], [ 69, %block_4006c2 ]
  %MEMORY.5 = phi %struct.Memory* [ %503, %block_400710.backedge ], [ %MEMORY.2, %block_4006c2 ]
  %626 = icmp eq i32 %.sink72, 2
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %10, align 1, !tbaa !2446
  %628 = add i64 %625, %.sink20
  %629 = add i64 %624, 3
  store i64 %629, i64* %PC, align 8
  %630 = inttoptr i64 %628 to i32*
  store i32 %.sink, i32* %630, align 4
  %631 = load i64, i64* %PC, align 8
  %632 = add i64 %631, %.sink5
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %633 = load i64, i64* %RBP, align 8
  %634 = add i64 %633, -24
  %635 = add i64 %632, 14
  store i64 %635, i64* %PC, align 8
  %636 = inttoptr i64 %634 to i32*
  %637 = load i32, i32* %636, align 4
  %638 = sext i32 %637 to i64
  %639 = mul nsw i64 %638, 11
  store i64 %639, i64* %RCX, align 8, !tbaa !2424
  %640 = lshr i64 %639, 63
  %641 = add i64 %639, ptrtoint (%maze_type* @maze to i64)
  store i64 %641, i64* %RAX, align 8, !tbaa !2424
  %642 = icmp ult i64 %641, ptrtoint (%maze_type* @maze to i64)
  %643 = icmp ult i64 %641, %639
  %644 = or i1 %642, %643
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %5, align 1, !tbaa !2429
  %646 = trunc i64 %641 to i32
  %647 = and i32 %646, 255
  %648 = tail call i32 @llvm.ctpop.i32(i32 %647) #9
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = xor i8 %650, 1
  store i8 %651, i8* %6, align 1, !tbaa !2443
  %652 = xor i64 %639, ptrtoint (%maze_type* @maze to i64)
  %653 = xor i64 %652, %641
  %654 = lshr i64 %653, 4
  %655 = trunc i64 %654 to i8
  %656 = and i8 %655, 1
  store i8 %656, i8* %7, align 1, !tbaa !2447
  %657 = icmp eq i64 %641, 0
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %8, align 1, !tbaa !2444
  %659 = lshr i64 %641, 63
  %660 = trunc i64 %659 to i8
  store i8 %660, i8* %9, align 1, !tbaa !2445
  %661 = xor i64 %659, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %662 = xor i64 %659, %640
  %663 = add nuw nsw i64 %661, %662
  %664 = icmp eq i64 %663, 2
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %10, align 1, !tbaa !2446
  %666 = add i64 %633, -20
  %667 = add i64 %632, 25
  store i64 %667, i64* %PC, align 8
  %668 = inttoptr i64 %666 to i32*
  %669 = load i32, i32* %668, align 4
  %670 = sext i32 %669 to i64
  store i64 %670, i64* %RCX, align 8, !tbaa !2424
  %671 = add i64 %641, %670
  %672 = add i64 %632, 29
  store i64 %672, i64* %PC, align 8
  %673 = inttoptr i64 %671 to i8*
  %674 = load i8, i8* %673, align 1
  %675 = sext i8 %674 to i64
  %676 = and i64 %675, 4294967295
  store i64 %676, i64* %RDX, align 8, !tbaa !2424
  %677 = sext i8 %674 to i32
  %678 = add nsw i32 %677, -35
  %679 = icmp ult i8 %674, 35
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %5, align 1, !tbaa !2429
  %681 = and i32 %678, 255
  %682 = tail call i32 @llvm.ctpop.i32(i32 %681) #9
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  %685 = xor i8 %684, 1
  store i8 %685, i8* %6, align 1, !tbaa !2443
  %686 = xor i32 %678, %677
  %687 = lshr i32 %686, 4
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  store i8 %689, i8* %7, align 1, !tbaa !2447
  %690 = icmp eq i32 %678, 0
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %8, align 1, !tbaa !2444
  %692 = lshr i32 %678, 31
  %693 = trunc i32 %692 to i8
  store i8 %693, i8* %9, align 1, !tbaa !2445
  %694 = lshr i32 %677, 31
  %695 = xor i32 %692, %694
  %696 = add nuw nsw i32 %695, %694
  %697 = icmp eq i32 %696, 2
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %10, align 1, !tbaa !2446
  %.v = select i1 %690, i64 38, i64 89
  %699 = add i64 %632, %.v
  %700 = add i64 %699, 10
  store i64 %700, i64* %PC, align 8
  br i1 %690, label %block_400736, label %block_400769

block_4007eb:                                     ; preds = %block_4007df
  %701 = add i64 %566, -32
  %702 = add i64 %600, 3
  store i64 %702, i64* %PC, align 8
  %703 = inttoptr i64 %701 to i32*
  %704 = load i32, i32* %703, align 4
  %705 = zext i32 %704 to i64
  store i64 %705, i64* %RAX, align 8, !tbaa !2424
  %706 = add i64 %566, -24
  %707 = add i64 %600, 6
  store i64 %707, i64* %PC, align 8
  %708 = inttoptr i64 %706 to i32*
  %709 = load i32, i32* %708, align 4
  %710 = sub i32 %704, %709
  %711 = icmp ult i32 %704, %709
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %5, align 1, !tbaa !2429
  %713 = and i32 %710, 255
  %714 = tail call i32 @llvm.ctpop.i32(i32 %713) #9
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  %717 = xor i8 %716, 1
  store i8 %717, i8* %6, align 1, !tbaa !2443
  %718 = xor i32 %709, %704
  %719 = xor i32 %718, %710
  %720 = lshr i32 %719, 4
  %721 = trunc i32 %720 to i8
  %722 = and i8 %721, 1
  store i8 %722, i8* %7, align 1, !tbaa !2447
  %723 = icmp eq i32 %710, 0
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %8, align 1, !tbaa !2444
  %725 = lshr i32 %710, 31
  %726 = trunc i32 %725 to i8
  store i8 %726, i8* %9, align 1, !tbaa !2445
  %727 = lshr i32 %704, 31
  %728 = lshr i32 %709, 31
  %729 = xor i32 %728, %727
  %730 = xor i32 %725, %727
  %731 = add nuw nsw i32 %730, %729
  %732 = icmp eq i32 %731, 2
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %10, align 1, !tbaa !2446
  %.v100 = select i1 %723, i64 12, i64 44
  %734 = add i64 %600, %.v100
  store i64 %734, i64* %PC, align 8, !tbaa !2424
  br i1 %723, label %block_4007f7, label %block_400817

block_400847:                                     ; preds = %block_400817
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %735 = add i64 %564, -1031
  %736 = add i64 %564, 17
  %737 = load i64, i64* %RSP, align 8, !tbaa !2424
  %738 = add i64 %737, -8
  %739 = inttoptr i64 %738 to i64*
  store i64 %736, i64* %739, align 8
  store i64 %738, i64* %RSP, align 8, !tbaa !2424
  store i64 %735, i64* %PC, align 8, !tbaa !2424
  %740 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %503)
  %741 = load i64, i64* %RBP, align 8
  %742 = add i64 %741, -4
  %743 = load i64, i64* %PC, align 8
  %744 = add i64 %743, 7
  store i64 %744, i64* %PC, align 8
  %745 = inttoptr i64 %742 to i32*
  store i32 1, i32* %745, align 4
  %746 = load i64, i64* %RBP, align 8
  %747 = add i64 %746, -108
  %748 = load i32, i32* %EAX, align 4
  %749 = load i64, i64* %PC, align 8
  %750 = add i64 %749, 3
  store i64 %750, i64* %PC, align 8
  %751 = inttoptr i64 %747 to i32*
  store i32 %748, i32* %751, align 4
  %.pre92 = load i64, i64* %PC, align 8
  br label %block_400862

block_40078f:                                     ; preds = %block_400769
  %752 = load i64, i64* %RBP, align 8
  %753 = add i64 %752, -24
  %754 = add i64 %77, 4
  store i64 %754, i64* %PC, align 8
  %755 = inttoptr i64 %753 to i32*
  %756 = load i32, i32* %755, align 4
  %757 = add i32 %756, -2
  %758 = icmp ult i32 %756, 2
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %5, align 1, !tbaa !2429
  %760 = and i32 %757, 255
  %761 = tail call i32 @llvm.ctpop.i32(i32 %760) #9
  %762 = trunc i32 %761 to i8
  %763 = and i8 %762, 1
  %764 = xor i8 %763, 1
  store i8 %764, i8* %6, align 1, !tbaa !2443
  %765 = xor i32 %757, %756
  %766 = lshr i32 %765, 4
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  store i8 %768, i8* %7, align 1, !tbaa !2447
  %769 = icmp eq i32 %757, 0
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %8, align 1, !tbaa !2444
  %771 = lshr i32 %757, 31
  %772 = trunc i32 %771 to i8
  store i8 %772, i8* %9, align 1, !tbaa !2445
  %773 = lshr i32 %756, 31
  %774 = xor i32 %771, %773
  %775 = add nuw nsw i32 %774, %773
  %776 = icmp eq i32 %775, 2
  %777 = zext i1 %776 to i8
  store i8 %777, i8* %10, align 1, !tbaa !2446
  %.v97 = select i1 %769, i64 10, i64 68
  %778 = add i64 %77, %.v97
  store i64 %778, i64* %PC, align 8, !tbaa !2424
  br i1 %769, label %block_400799, label %block_4007d3

block_4006de:                                     ; preds = %block_400698, %block_40066e
  %779 = phi i64 [ 4196062, %block_400698 ], [ %377, %block_40066e ]
  %780 = tail call %struct.Memory* @sub_4006de(%struct.State* nonnull %0, i64 %779, %struct.Memory* %503)
  ret %struct.Memory* %780

; <label>:781:                                    ; preds = %block_400698
  %782 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %459, %struct.Memory* %503)
  ret %struct.Memory* %782
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400418__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400418:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, -8
  store i64 %4, i64* %RSP, align 8, !tbaa !2424
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_600ff0__got_type* @seg_600ff0__got to i64), i64 8) to i64*), align 8
  store i64 %11, i64* %RAX, align 8, !tbaa !2424
  store i8 0, i8* %5, align 1, !tbaa !2429
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #9
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %6, align 1, !tbaa !2443
  %18 = icmp eq i64 %11, 0
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %8, align 1, !tbaa !2444
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !2445
  store i8 0, i8* %10, align 1, !tbaa !2446
  store i8 0, i8* %7, align 1, !tbaa !2447
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2424
  br i1 %18, label %block_40042a, label %block_400428

block_40042a:                                     ; preds = %block_400428, %block_400418
  %23 = phi i64 [ %22, %block_400418 ], [ %.pre1, %block_400428 ]
  %24 = phi i64 [ %4, %block_400418 ], [ %.pre, %block_400428 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400418 ], [ %54, %block_400428 ]
  %25 = add i64 %24, 8
  store i64 %25, i64* %RSP, align 8, !tbaa !2424
  %26 = icmp ugt i64 %24, -9
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %5, align 1, !tbaa !2429
  %28 = trunc i64 %25 to i32
  %29 = and i32 %28, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29) #9
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  store i8 %33, i8* %6, align 1, !tbaa !2443
  %34 = xor i64 %25, %24
  %35 = lshr i64 %34, 4
  %36 = trunc i64 %35 to i8
  %37 = and i8 %36, 1
  store i8 %37, i8* %7, align 1, !tbaa !2447
  %38 = icmp eq i64 %25, 0
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %8, align 1, !tbaa !2444
  %40 = lshr i64 %25, 63
  %41 = trunc i64 %40 to i8
  store i8 %41, i8* %9, align 1, !tbaa !2445
  %42 = lshr i64 %24, 63
  %43 = xor i64 %40, %42
  %44 = add nuw nsw i64 %43, %40
  %45 = icmp eq i64 %44, 2
  %46 = zext i1 %45 to i8
  store i8 %46, i8* %10, align 1, !tbaa !2446
  %47 = add i64 %23, 5
  store i64 %47, i64* %PC, align 8
  %48 = inttoptr i64 %25 to i64*
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %PC, align 8, !tbaa !2424
  %50 = add i64 %24, 16
  store i64 %50, i64* %RSP, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.0

block_400428:                                     ; preds = %block_400418
  %51 = add i64 %22, 2
  %52 = add i64 %3, -16
  %53 = inttoptr i64 %52 to i64*
  store i64 %51, i64* %53, align 8
  store i64 %52, i64* %RSP, align 8, !tbaa !2424
  store i64 %11, i64* %PC, align 8, !tbaa !2424
  %54 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_40042a
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400510___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400510:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i64 0, i32 0, i64 0), align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4, align 1, !tbaa !2429
  %5 = zext i8 %3 to i32
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #9
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  %9 = xor i8 %8, 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9, i8* %10, align 1, !tbaa !2443
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1, !tbaa !2447
  %12 = icmp eq i8 %3, 0
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %13, i8* %14, align 1, !tbaa !2444
  %15 = lshr i8 %3, 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %15, i8* %16, align 1, !tbaa !2445
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1, !tbaa !2446
  %.v = select i1 %12, i64 9, i64 32
  %18 = add i64 %.v, %1
  store i64 %18, i64* %PC, align 8, !tbaa !2424
  br i1 %12, label %block_400519, label %block_400530

block_400530:                                     ; preds = %block_400510
  %19 = add i64 %18, 2
  store i64 %19, i64* %PC, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %21 = load i64, i64* %20, align 8, !tbaa !2424
  %22 = inttoptr i64 %21 to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %PC, align 8, !tbaa !2424
  %24 = add i64 %21, 8
  store i64 %24, i64* %20, align 8, !tbaa !2424
  ret %struct.Memory* %2

block_400519:                                     ; preds = %block_400510
  %25 = load i64, i64* %RBP, align 8
  %26 = add i64 %18, 1
  store i64 %26, i64* %PC, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %28 = load i64, i64* %27, align 8, !tbaa !2424
  %29 = add i64 %28, -8
  %30 = inttoptr i64 %29 to i64*
  store i64 %25, i64* %30, align 8
  %31 = load i64, i64* %PC, align 8
  store i64 %29, i64* %RBP, align 8, !tbaa !2424
  %32 = add i64 %31, -122
  %33 = add i64 %31, 8
  %34 = add i64 %28, -16
  %35 = inttoptr i64 %34 to i64*
  store i64 %33, i64* %35, align 8
  store i64 %34, i64* %27, align 8, !tbaa !2424
  store i64 %32, i64* %PC, align 8, !tbaa !2424
  %36 = tail call %struct.Memory* @sub_4004a0_deregister_tm_clones(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
  %37 = load i64, i64* %PC, align 8
  store i8 1, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i64 0, i32 0, i64 0), align 8
  %38 = add i64 %37, 8
  store i64 %38, i64* %PC, align 8
  %39 = load i64, i64* %27, align 8, !tbaa !2424
  %40 = add i64 %39, 8
  %41 = inttoptr i64 %39 to i64*
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %RBP, align 8, !tbaa !2424
  store i64 %40, i64* %27, align 8, !tbaa !2424
  %43 = add i64 %37, 9
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %40 to i64*
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %PC, align 8, !tbaa !2424
  %46 = add i64 %39, 16
  store i64 %46, i64* %27, align 8, !tbaa !2424
  ret %struct.Memory* %36
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4004d0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4004d0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64* %RSI, align 8, !tbaa !2424
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 6
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* %RSP, align 8, !tbaa !2424
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %3, i64* %7, align 8
  store i64 %6, i64* %RSP, align 8, !tbaa !2424
  %8 = load i64, i64* %RSI, align 8
  %9 = load i64, i64* %PC, align 8
  %10 = sub i64 %8, ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 %6, i64* %RBP, align 8, !tbaa !2424
  %17 = ashr i64 %10, 3
  %18 = lshr i64 %17, 63
  store i64 %18, i64* %RAX, align 8, !tbaa !2424
  %19 = add nsw i64 %18, %17
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = ashr i64 %19, 1
  store i64 %22, i64* %RSI, align 8, !tbaa !2424
  store i8 %21, i8* %11, align 1, !tbaa !2428
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #9
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %12, align 1, !tbaa !2428
  store i8 0, i8* %13, align 1, !tbaa !2428
  %29 = icmp eq i64 %22, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %14, align 1, !tbaa !2428
  %31 = lshr i64 %22, 63
  %32 = trunc i64 %31 to i8
  store i8 %32, i8* %15, align 1, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2428
  %.v = select i1 %29, i64 50, i64 29
  %33 = add i64 %9, %.v
  store i64 %33, i64* %PC, align 8, !tbaa !2424
  br i1 %29, label %block_400508, label %block_4004f3

block_4004f3:                                     ; preds = %block_4004d0
  store i64 0, i64* %RAX, align 8, !tbaa !2424
  store i8 0, i8* %11, align 1, !tbaa !2429
  store i8 1, i8* %12, align 1, !tbaa !2443
  store i8 1, i8* %14, align 1, !tbaa !2444
  store i8 0, i8* %15, align 1, !tbaa !2445
  store i8 0, i8* %16, align 1, !tbaa !2446
  store i8 0, i8* %13, align 1, !tbaa !2447
  %34 = add i64 %33, 21
  store i64 %34, i64* %PC, align 8, !tbaa !2424
  br label %block_400508

block_400508:                                     ; preds = %block_4004f3, %block_4004d0
  %35 = phi i64 [ %34, %block_4004f3 ], [ %33, %block_4004d0 ]
  %36 = add i64 %35, 1
  store i64 %36, i64* %PC, align 8
  %37 = load i64, i64* %RSP, align 8, !tbaa !2424
  %38 = add i64 %37, 8
  %39 = inttoptr i64 %37 to i64*
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %RBP, align 8, !tbaa !2424
  store i64 %38, i64* %RSP, align 8, !tbaa !2424
  %41 = add i64 %35, 2
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %38 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %PC, align 8, !tbaa !2424
  %44 = add i64 %37, 16
  store i64 %44, i64* %RSP, align 8, !tbaa !2424
  ret %struct.Memory* %2
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4008e0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_4008e0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = add i64 %1, 2
  store i64 %3, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !2424
  %6 = inttoptr i64 %5 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %PC, align 8, !tbaa !2424
  %8 = add i64 %5, 8
  store i64 %8, i64* %4, align 8, !tbaa !2424
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4006a6(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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
  %.pre = load i64, i64* %RBP, align 8
  br label %block_4006a6

block_4007bf:                                     ; preds = %block_400799
  %11 = add i64 %400, -20
  %12 = add i64 %399, 4
  store i64 %12, i64* %PC, align 8
  %13 = inttoptr i64 %11 to i32*
  %14 = load i32, i32* %13, align 4
  store i8 0, i8* %5, align 1, !tbaa !2429
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #9
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %6, align 1, !tbaa !2443
  store i8 0, i8* %7, align 1, !tbaa !2447
  %20 = icmp eq i32 %14, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %8, align 1, !tbaa !2444
  %22 = lshr i32 %14, 31
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %9, align 1, !tbaa !2445
  store i8 0, i8* %10, align 1, !tbaa !2446
  %24 = icmp ne i8 %23, 0
  %25 = or i1 %20, %24
  %.v129 = select i1 %25, i64 20, i64 10
  %26 = add i64 %399, %.v129
  store i64 %26, i64* %PC, align 8, !tbaa !2424
  br i1 %25, label %block_4007d3, label %block_4007c9

block_400698:                                     ; preds = %block_40066e
  %27 = load i64, i64* %RBP, align 8
  %28 = add i64 %27, -80
  %29 = add i64 %473, 4
  store i64 %29, i64* %PC, align 8
  %30 = inttoptr i64 %28 to i64*
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %RAX, align 8, !tbaa !2424
  %32 = shl i64 %31, 3
  %33 = add i64 %32, add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 8)
  %34 = add i64 %473, 12
  store i64 %34, i64* %PC, align 8
  %35 = inttoptr i64 %33 to i64*
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %RCX, align 8, !tbaa !2424
  store i64 %36, i64* %PC, align 8, !tbaa !2424
  switch i64 %36, label %749 [
    i64 4196034, label %block_4006c2
    i64 4196048, label %block_4006d0
    i64 4196020, label %block_4006b4
    i64 4196062, label %block_4006de
    i64 4196006, label %block_4006a6.loopexit
  ]

block_400817:                                     ; preds = %block_4007eb, %block_4007df.block_400817_crit_edge
  %.pre-phi122 = phi i32* [ %.pre121, %block_4007df.block_400817_crit_edge ], [ %648, %block_4007eb ]
  %37 = phi i64 [ %232, %block_4007df.block_400817_crit_edge ], [ %674, %block_4007eb ]
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %38 = add i64 %37, 14
  store i64 %38, i64* %PC, align 8
  %39 = load i32, i32* %.pre-phi122, align 4
  %40 = sext i32 %39 to i64
  %41 = mul nsw i64 %40, 11
  store i64 %41, i64* %RCX, align 8, !tbaa !2424
  %42 = lshr i64 %41, 63
  %43 = add i64 %41, ptrtoint (%maze_type* @maze to i64)
  store i64 %43, i64* %RAX, align 8, !tbaa !2424
  %44 = icmp ult i64 %43, ptrtoint (%maze_type* @maze to i64)
  %45 = icmp ult i64 %43, %41
  %46 = or i1 %44, %45
  %47 = zext i1 %46 to i8
  store i8 %47, i8* %5, align 1, !tbaa !2429
  %48 = trunc i64 %43 to i32
  %49 = and i32 %48, 255
  %50 = tail call i32 @llvm.ctpop.i32(i32 %49) #9
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 1
  %53 = xor i8 %52, 1
  store i8 %53, i8* %6, align 1, !tbaa !2443
  %54 = xor i64 %41, ptrtoint (%maze_type* @maze to i64)
  %55 = xor i64 %54, %43
  %56 = lshr i64 %55, 4
  %57 = trunc i64 %56 to i8
  %58 = and i8 %57, 1
  store i8 %58, i8* %7, align 1, !tbaa !2447
  %59 = icmp eq i64 %43, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %8, align 1, !tbaa !2444
  %61 = lshr i64 %43, 63
  %62 = trunc i64 %61 to i8
  store i8 %62, i8* %9, align 1, !tbaa !2445
  %63 = xor i64 %61, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %64 = xor i64 %61, %42
  %65 = add nuw nsw i64 %63, %64
  %66 = icmp eq i64 %65, 2
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %10, align 1, !tbaa !2446
  %68 = add i64 %37, 25
  store i64 %68, i64* %PC, align 8
  %69 = load i32, i32* %206, align 4
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %RCX, align 8, !tbaa !2424
  %71 = add i64 %43, %70
  %72 = add i64 %37, 29
  store i64 %72, i64* %PC, align 8
  %73 = inttoptr i64 %71 to i8*
  store i8 88, i8* %73, align 1
  %74 = load i64, i64* %PC, align 8
  %75 = add i64 %74, -740
  %76 = add i64 %74, 5
  %77 = load i64, i64* %RSP, align 8, !tbaa !2424
  %78 = add i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64 %76, i64* %79, align 8
  store i64 %78, i64* %RSP, align 8, !tbaa !2424
  store i64 %75, i64* %PC, align 8, !tbaa !2424
  %80 = tail call %struct.Memory* @sub_400550_draw(%struct.State* nonnull %0, i64 %75, %struct.Memory* %MEMORY.3)
  %81 = load i64, i64* %RBP, align 8
  %82 = add i64 %81, -36
  %83 = load i64, i64* %PC, align 8
  %84 = add i64 %83, 3
  store i64 %84, i64* %PC, align 8
  %85 = inttoptr i64 %82 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = add i32 %86, 1
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %RDX, align 8, !tbaa !2424
  %89 = icmp eq i32 %86, -1
  %90 = icmp eq i32 %87, 0
  %91 = or i1 %89, %90
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %5, align 1, !tbaa !2429
  %93 = and i32 %87, 255
  %94 = tail call i32 @llvm.ctpop.i32(i32 %93) #9
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  %97 = xor i8 %96, 1
  store i8 %97, i8* %6, align 1, !tbaa !2443
  %98 = xor i32 %87, %86
  %99 = lshr i32 %98, 4
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  store i8 %101, i8* %7, align 1, !tbaa !2447
  %102 = zext i1 %90 to i8
  store i8 %102, i8* %8, align 1, !tbaa !2444
  %103 = lshr i32 %87, 31
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %9, align 1, !tbaa !2445
  %105 = lshr i32 %86, 31
  %106 = xor i32 %103, %105
  %107 = add nuw nsw i32 %106, %103
  %108 = icmp eq i32 %107, 2
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %10, align 1, !tbaa !2446
  %110 = add i64 %83, 9
  store i64 %110, i64* %PC, align 8
  store i32 %87, i32* %85, align 4
  %111 = load i64, i64* %PC, align 8
  %112 = load i64, i64* %RBP, align 8
  %113 = add i64 %112, -36
  %114 = add i64 %111, -474
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %113 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = add i32 %116, -28
  %118 = icmp ult i32 %116, 28
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %5, align 1, !tbaa !2429
  %120 = and i32 %117, 255
  %121 = tail call i32 @llvm.ctpop.i32(i32 %120) #9
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  %124 = xor i8 %123, 1
  store i8 %124, i8* %6, align 1, !tbaa !2443
  %125 = xor i32 %116, 16
  %126 = xor i32 %125, %117
  %127 = lshr i32 %126, 4
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  store i8 %129, i8* %7, align 1, !tbaa !2447
  %130 = icmp eq i32 %117, 0
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %8, align 1, !tbaa !2444
  %132 = lshr i32 %117, 31
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %9, align 1, !tbaa !2445
  %134 = lshr i32 %116, 31
  %135 = xor i32 %132, %134
  %136 = add nuw nsw i32 %135, %134
  %137 = icmp eq i32 %136, 2
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %10, align 1, !tbaa !2446
  %139 = icmp ne i8 %133, 0
  %140 = xor i1 %139, %137
  %.v126 = select i1 %140, i64 -468, i64 5
  %141 = add i64 %111, %.v126
  store i64 %141, i64* %PC, align 8, !tbaa !2424
  br i1 %140, label %block_40066e, label %block_400847

block_400736:                                     ; preds = %block_400710
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %142 = add i64 %333, -758
  %143 = add i64 %333, 17
  %144 = load i64, i64* %RSP, align 8, !tbaa !2424
  %145 = add i64 %144, -8
  %146 = inttoptr i64 %145 to i64*
  store i64 %143, i64* %146, align 8
  store i64 %145, i64* %RSP, align 8, !tbaa !2424
  store i64 %142, i64* %PC, align 8, !tbaa !2424
  %147 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.3)
  %148 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2424
  %149 = load i64, i64* %RBP, align 8
  %150 = add i64 %149, -64
  store i64 %150, i64* %RSI, align 8, !tbaa !2424
  %151 = add i64 %149, -96
  %152 = load i32, i32* %EAX, align 4
  %153 = add i64 %148, 17
  store i64 %153, i64* %PC, align 8
  %154 = inttoptr i64 %151 to i32*
  store i32 %152, i32* %154, align 4
  %155 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %156 = add i64 %155, -792
  %157 = add i64 %155, 7
  %158 = load i64, i64* %RSP, align 8, !tbaa !2424
  %159 = add i64 %158, -8
  %160 = inttoptr i64 %159 to i64*
  store i64 %157, i64* %160, align 8
  store i64 %159, i64* %RSP, align 8, !tbaa !2424
  store i64 %156, i64* %PC, align 8, !tbaa !2424
  %161 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %147)
  %162 = load i64, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %5, align 1, !tbaa !2429
  store i8 1, i8* %6, align 1, !tbaa !2443
  store i8 1, i8* %8, align 1, !tbaa !2444
  store i8 0, i8* %9, align 1, !tbaa !2445
  store i8 0, i8* %10, align 1, !tbaa !2446
  store i8 0, i8* %7, align 1, !tbaa !2447
  %163 = load i64, i64* %RBP, align 8
  %164 = add i64 %163, -100
  %165 = load i32, i32* %EAX, align 4
  %166 = add i64 %162, 5
  store i64 %166, i64* %PC, align 8
  %167 = inttoptr i64 %164 to i32*
  store i32 %165, i32* %167, align 4
  %168 = load i64, i64* %PC, align 8
  %169 = add i64 %168, -772
  %170 = add i64 %168, 5
  %171 = load i64, i64* %RSP, align 8, !tbaa !2424
  %172 = add i64 %171, -8
  %173 = inttoptr i64 %172 to i64*
  store i64 %170, i64* %173, align 8
  store i64 %172, i64* %RSP, align 8, !tbaa !2424
  store i64 %169, i64* %PC, align 8, !tbaa !2424
  %174 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %161)
  %175 = load i64, i64* %PC, align 8
  %176 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %175, %struct.Memory* %174)
  ret %struct.Memory* %176

block_4007d3:                                     ; preds = %block_400799, %block_40078f, %block_4007c9, %block_4007bf
  %177 = phi i64 [ %640, %block_40078f ], [ %585, %block_4007c9 ], [ %26, %block_4007bf ], [ %399, %block_400799 ]
  %178 = phi i64 [ %614, %block_40078f ], [ %400, %block_4007c9 ], [ %400, %block_4007bf ], [ %400, %block_400799 ]
  %179 = add i64 %178, -28
  %180 = add i64 %177, 3
  store i64 %180, i64* %PC, align 8
  %181 = inttoptr i64 %179 to i32*
  %182 = load i32, i32* %181, align 4
  %183 = zext i32 %182 to i64
  store i64 %183, i64* %RAX, align 8, !tbaa !2424
  %184 = add i64 %178, -20
  %185 = add i64 %177, 6
  store i64 %185, i64* %PC, align 8
  %186 = inttoptr i64 %184 to i32*
  store i32 %182, i32* %186, align 4
  %187 = load i64, i64* %RBP, align 8
  %188 = add i64 %187, -32
  %189 = load i64, i64* %PC, align 8
  %190 = add i64 %189, 3
  store i64 %190, i64* %PC, align 8
  %191 = inttoptr i64 %188 to i32*
  %192 = load i32, i32* %191, align 4
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RAX, align 8, !tbaa !2424
  %194 = add i64 %187, -24
  %195 = add i64 %189, 6
  store i64 %195, i64* %PC, align 8
  %196 = inttoptr i64 %194 to i32*
  store i32 %192, i32* %196, align 4
  %.pre118 = load i64, i64* %PC, align 8
  br label %block_4007df

block_4007df:                                     ; preds = %block_4007c9, %block_400769, %block_4007d3
  %197 = phi i64 [ %585, %block_4007c9 ], [ %540, %block_400769 ], [ %.pre118, %block_4007d3 ]
  %198 = load i64, i64* %RBP, align 8
  %199 = add i64 %198, -28
  %200 = add i64 %197, 3
  store i64 %200, i64* %PC, align 8
  %201 = inttoptr i64 %199 to i32*
  %202 = load i32, i32* %201, align 4
  %203 = zext i32 %202 to i64
  store i64 %203, i64* %RAX, align 8, !tbaa !2424
  %204 = add i64 %198, -20
  %205 = add i64 %197, 6
  store i64 %205, i64* %PC, align 8
  %206 = inttoptr i64 %204 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = sub i32 %202, %207
  %209 = icmp ult i32 %202, %207
  %210 = zext i1 %209 to i8
  store i8 %210, i8* %5, align 1, !tbaa !2429
  %211 = and i32 %208, 255
  %212 = tail call i32 @llvm.ctpop.i32(i32 %211) #9
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  %215 = xor i8 %214, 1
  store i8 %215, i8* %6, align 1, !tbaa !2443
  %216 = xor i32 %207, %202
  %217 = xor i32 %216, %208
  %218 = lshr i32 %217, 4
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  store i8 %220, i8* %7, align 1, !tbaa !2447
  %221 = icmp eq i32 %208, 0
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %8, align 1, !tbaa !2444
  %223 = lshr i32 %208, 31
  %224 = trunc i32 %223 to i8
  store i8 %224, i8* %9, align 1, !tbaa !2445
  %225 = lshr i32 %202, 31
  %226 = lshr i32 %207, 31
  %227 = xor i32 %226, %225
  %228 = xor i32 %223, %225
  %229 = add nuw nsw i32 %228, %227
  %230 = icmp eq i32 %229, 2
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %10, align 1, !tbaa !2446
  %.v125 = select i1 %221, i64 12, i64 56
  %232 = add i64 %197, %.v125
  store i64 %232, i64* %PC, align 8, !tbaa !2424
  br i1 %221, label %block_4007eb, label %block_4007df.block_400817_crit_edge

block_4007df.block_400817_crit_edge:              ; preds = %block_4007df
  %.pre120 = add i64 %198, -24
  %.pre121 = inttoptr i64 %.pre120 to i32*
  br label %block_400817

block_4006b4:                                     ; preds = %block_400698
  %233 = add i64 %27, -24
  store i64 4196023, i64* %PC, align 8
  %234 = inttoptr i64 %233 to i32*
  %235 = load i32, i32* %234, align 4
  store i64 4196026, i64* %PC, align 8
  %236 = add i32 %235, 1
  %237 = zext i32 %236 to i64
  store i64 %237, i64* %RAX, align 8, !tbaa !2424
  %238 = icmp eq i32 %235, -1
  %239 = icmp eq i32 %236, 0
  %240 = or i1 %238, %239
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %5, align 1, !tbaa !2429
  %242 = and i32 %236, 255
  %243 = tail call i32 @llvm.ctpop.i32(i32 %242) #9
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  store i8 %246, i8* %6, align 1, !tbaa !2443
  %247 = xor i32 %236, %235
  br label %block_400710.backedge

block_400710.backedge:                            ; preds = %block_4006b4, %block_4006d0
  %248 = phi i64 [ 4196026, %block_4006b4 ], [ 4196054, %block_4006d0 ]
  %.sink116 = phi i32 [ %236, %block_4006b4 ], [ %734, %block_4006d0 ]
  %.sink95 = phi i32 [ %247, %block_4006b4 ], [ %745, %block_4006d0 ]
  %.sink91 = phi i1 [ %239, %block_4006b4 ], [ %737, %block_4006d0 ]
  %.sink83 = phi i32 [ %235, %block_4006b4 ], [ %733, %block_4006d0 ]
  %.sink20.be = phi i64 [ -24, %block_4006b4 ], [ -20, %block_4006d0 ]
  %.sink5.be = phi i64 [ 83, %block_4006b4 ], [ 55, %block_4006d0 ]
  %249 = lshr i32 %.sink95, 4
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  store i8 %251, i8* %7, align 1, !tbaa !2447
  %252 = zext i1 %.sink91 to i8
  store i8 %252, i8* %8, align 1, !tbaa !2444
  %253 = lshr i32 %.sink116, 31
  %254 = trunc i32 %253 to i8
  store i8 %254, i8* %9, align 1, !tbaa !2445
  %255 = lshr i32 %.sink83, 31
  %256 = xor i32 %253, %255
  br label %block_400710

block_400710:                                     ; preds = %block_400710.backedge, %block_4006a6
  %257 = phi i64 [ %248, %block_400710.backedge ], [ %592, %block_4006a6 ]
  %.sink = phi i32 [ %.sink116, %block_400710.backedge ], [ %593, %block_4006a6 ]
  %258 = phi i64 [ %27, %block_400710.backedge ], [ %587, %block_4006a6 ]
  %.sink85.sink = phi i32 [ %253, %block_400710.backedge ], [ %613, %block_4006a6 ]
  %.sink88 = phi i32 [ %256, %block_400710.backedge ], [ %612, %block_4006a6 ]
  %.sink20 = phi i64 [ %.sink20.be, %block_400710.backedge ], [ -24, %block_4006a6 ]
  %.sink5 = phi i64 [ %.sink5.be, %block_400710.backedge ], [ 97, %block_4006a6 ]
  %MEMORY.3 = phi %struct.Memory* [ %80, %block_400710.backedge ], [ %MEMORY.4, %block_4006a6 ]
  %259 = add nuw nsw i32 %.sink88, %.sink85.sink
  %260 = icmp eq i32 %259, 2
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %10, align 1, !tbaa !2446
  %262 = add i64 %258, %.sink20
  %263 = add i64 %257, 3
  store i64 %263, i64* %PC, align 8
  %264 = inttoptr i64 %262 to i32*
  store i32 %.sink, i32* %264, align 4
  %265 = load i64, i64* %PC, align 8
  %266 = add i64 %265, %.sink5
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %267 = load i64, i64* %RBP, align 8
  %268 = add i64 %267, -24
  %269 = add i64 %266, 14
  store i64 %269, i64* %PC, align 8
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = mul nsw i64 %272, 11
  store i64 %273, i64* %RCX, align 8, !tbaa !2424
  %274 = lshr i64 %273, 63
  %275 = add i64 %273, ptrtoint (%maze_type* @maze to i64)
  store i64 %275, i64* %RAX, align 8, !tbaa !2424
  %276 = icmp ult i64 %275, ptrtoint (%maze_type* @maze to i64)
  %277 = icmp ult i64 %275, %273
  %278 = or i1 %276, %277
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %5, align 1, !tbaa !2429
  %280 = trunc i64 %275 to i32
  %281 = and i32 %280, 255
  %282 = tail call i32 @llvm.ctpop.i32(i32 %281) #9
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  store i8 %285, i8* %6, align 1, !tbaa !2443
  %286 = xor i64 %273, ptrtoint (%maze_type* @maze to i64)
  %287 = xor i64 %286, %275
  %288 = lshr i64 %287, 4
  %289 = trunc i64 %288 to i8
  %290 = and i8 %289, 1
  store i8 %290, i8* %7, align 1, !tbaa !2447
  %291 = icmp eq i64 %275, 0
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %8, align 1, !tbaa !2444
  %293 = lshr i64 %275, 63
  %294 = trunc i64 %293 to i8
  store i8 %294, i8* %9, align 1, !tbaa !2445
  %295 = xor i64 %293, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %296 = xor i64 %293, %274
  %297 = add nuw nsw i64 %295, %296
  %298 = icmp eq i64 %297, 2
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %10, align 1, !tbaa !2446
  %300 = add i64 %267, -20
  %301 = add i64 %266, 25
  store i64 %301, i64* %PC, align 8
  %302 = inttoptr i64 %300 to i32*
  %303 = load i32, i32* %302, align 4
  %304 = sext i32 %303 to i64
  store i64 %304, i64* %RCX, align 8, !tbaa !2424
  %305 = add i64 %275, %304
  %306 = add i64 %266, 29
  store i64 %306, i64* %PC, align 8
  %307 = inttoptr i64 %305 to i8*
  %308 = load i8, i8* %307, align 1
  %309 = sext i8 %308 to i64
  %310 = and i64 %309, 4294967295
  store i64 %310, i64* %RDX, align 8, !tbaa !2424
  %311 = sext i8 %308 to i32
  %312 = add nsw i32 %311, -35
  %313 = icmp ult i8 %308, 35
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %5, align 1, !tbaa !2429
  %315 = and i32 %312, 255
  %316 = tail call i32 @llvm.ctpop.i32(i32 %315) #9
  %317 = trunc i32 %316 to i8
  %318 = and i8 %317, 1
  %319 = xor i8 %318, 1
  store i8 %319, i8* %6, align 1, !tbaa !2443
  %320 = xor i32 %312, %311
  %321 = lshr i32 %320, 4
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  store i8 %323, i8* %7, align 1, !tbaa !2447
  %324 = icmp eq i32 %312, 0
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %8, align 1, !tbaa !2444
  %326 = lshr i32 %312, 31
  %327 = trunc i32 %326 to i8
  store i8 %327, i8* %9, align 1, !tbaa !2445
  %328 = lshr i32 %311, 31
  %329 = xor i32 %326, %328
  %330 = add nuw nsw i32 %329, %328
  %331 = icmp eq i32 %330, 2
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %10, align 1, !tbaa !2446
  %.v = select i1 %324, i64 38, i64 89
  %333 = add i64 %266, %.v
  %334 = add i64 %333, 10
  store i64 %334, i64* %PC, align 8
  br i1 %324, label %block_400736, label %block_400769

block_400799:                                     ; preds = %block_40078f
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %335 = add i64 %640, 14
  store i64 %335, i64* %PC, align 8
  %336 = load i32, i32* %617, align 4
  %337 = sext i32 %336 to i64
  %338 = mul nsw i64 %337, 11
  store i64 %338, i64* %RCX, align 8, !tbaa !2424
  %339 = lshr i64 %338, 63
  %340 = add i64 %338, ptrtoint (%maze_type* @maze to i64)
  store i64 %340, i64* %RAX, align 8, !tbaa !2424
  %341 = icmp ult i64 %340, ptrtoint (%maze_type* @maze to i64)
  %342 = icmp ult i64 %340, %338
  %343 = or i1 %341, %342
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %5, align 1, !tbaa !2429
  %345 = trunc i64 %340 to i32
  %346 = and i32 %345, 255
  %347 = tail call i32 @llvm.ctpop.i32(i32 %346) #9
  %348 = trunc i32 %347 to i8
  %349 = and i8 %348, 1
  %350 = xor i8 %349, 1
  store i8 %350, i8* %6, align 1, !tbaa !2443
  %351 = xor i64 %338, ptrtoint (%maze_type* @maze to i64)
  %352 = xor i64 %351, %340
  %353 = lshr i64 %352, 4
  %354 = trunc i64 %353 to i8
  %355 = and i8 %354, 1
  store i8 %355, i8* %7, align 1, !tbaa !2447
  %356 = icmp eq i64 %340, 0
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %8, align 1, !tbaa !2444
  %358 = lshr i64 %340, 63
  %359 = trunc i64 %358 to i8
  store i8 %359, i8* %9, align 1, !tbaa !2445
  %360 = xor i64 %358, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %361 = xor i64 %358, %339
  %362 = add nuw nsw i64 %360, %361
  %363 = icmp eq i64 %362, 2
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %10, align 1, !tbaa !2446
  %365 = add i64 %614, -20
  %366 = add i64 %640, 25
  store i64 %366, i64* %PC, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = sext i32 %368 to i64
  store i64 %369, i64* %RCX, align 8, !tbaa !2424
  %370 = add i64 %340, %369
  %371 = add i64 %640, 29
  store i64 %371, i64* %PC, align 8
  %372 = inttoptr i64 %370 to i8*
  %373 = load i8, i8* %372, align 1
  %374 = sext i8 %373 to i64
  %375 = and i64 %374, 4294967295
  store i64 %375, i64* %RDX, align 8, !tbaa !2424
  %376 = sext i8 %373 to i32
  %377 = add nsw i32 %376, -124
  %378 = icmp ult i8 %373, 124
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %5, align 1, !tbaa !2429
  %380 = and i32 %377, 255
  %381 = tail call i32 @llvm.ctpop.i32(i32 %380) #9
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  %384 = xor i8 %383, 1
  store i8 %384, i8* %6, align 1, !tbaa !2443
  %385 = xor i32 %376, 16
  %386 = xor i32 %385, %377
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %7, align 1, !tbaa !2447
  %390 = icmp eq i32 %377, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %8, align 1, !tbaa !2444
  %392 = lshr i32 %377, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %9, align 1, !tbaa !2445
  %394 = lshr i32 %376, 31
  %395 = xor i32 %392, %394
  %396 = add nuw nsw i32 %395, %394
  %397 = icmp eq i32 %396, 2
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %10, align 1, !tbaa !2446
  %.v128 = select i1 %390, i64 38, i64 58
  %399 = add i64 %640, %.v128
  store i64 %399, i64* %PC, align 8, !tbaa !2424
  %400 = load i64, i64* %RBP, align 8
  br i1 %390, label %block_4007bf, label %block_4007d3

block_40066e:                                     ; preds = %block_400817
  %401 = add i64 %112, -20
  %402 = add i64 %141, 3
  store i64 %402, i64* %PC, align 8
  %403 = inttoptr i64 %401 to i32*
  %404 = load i32, i32* %403, align 4
  %405 = zext i32 %404 to i64
  store i64 %405, i64* %RAX, align 8, !tbaa !2424
  %406 = add i64 %112, -28
  %407 = add i64 %141, 6
  store i64 %407, i64* %PC, align 8
  %408 = inttoptr i64 %406 to i32*
  store i32 %404, i32* %408, align 4
  %409 = load i64, i64* %RBP, align 8
  %410 = add i64 %409, -24
  %411 = load i64, i64* %PC, align 8
  %412 = add i64 %411, 3
  store i64 %412, i64* %PC, align 8
  %413 = inttoptr i64 %410 to i32*
  %414 = load i32, i32* %413, align 4
  %415 = zext i32 %414 to i64
  store i64 %415, i64* %RAX, align 8, !tbaa !2424
  %416 = add i64 %409, -32
  %417 = add i64 %411, 6
  store i64 %417, i64* %PC, align 8
  %418 = inttoptr i64 %416 to i32*
  store i32 %414, i32* %418, align 4
  %419 = load i64, i64* %RBP, align 8
  %420 = add i64 %419, -36
  %421 = load i64, i64* %PC, align 8
  %422 = add i64 %421, 4
  store i64 %422, i64* %PC, align 8
  %423 = inttoptr i64 %420 to i32*
  %424 = load i32, i32* %423, align 4
  %425 = sext i32 %424 to i64
  store i64 %425, i64* %RCX, align 8, !tbaa !2424
  %426 = add nsw i64 %425, -64
  %427 = add i64 %426, %419
  %428 = add i64 %421, 9
  store i64 %428, i64* %PC, align 8
  %429 = inttoptr i64 %427 to i8*
  %430 = load i8, i8* %429, align 1
  %431 = sext i8 %430 to i32
  %432 = add nsw i32 %431, -97
  %433 = zext i32 %432 to i64
  %434 = lshr i32 %432, 31
  store i64 %433, i64* %RCX, align 8, !tbaa !2424
  %435 = add nsw i32 %431, -119
  %436 = zext i32 %435 to i64
  store i64 %436, i64* %RAX, align 8, !tbaa !2424
  %437 = icmp ult i32 %432, 22
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %5, align 1, !tbaa !2429
  %439 = and i32 %435, 255
  %440 = tail call i32 @llvm.ctpop.i32(i32 %439) #9
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  %443 = xor i8 %442, 1
  store i8 %443, i8* %6, align 1, !tbaa !2443
  %444 = xor i32 %432, 16
  %445 = xor i32 %444, %435
  %446 = lshr i32 %445, 4
  %447 = trunc i32 %446 to i8
  %448 = and i8 %447, 1
  store i8 %448, i8* %7, align 1, !tbaa !2447
  %449 = icmp eq i32 %435, 0
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %8, align 1, !tbaa !2444
  %451 = lshr i32 %435, 31
  %452 = trunc i32 %451 to i8
  store i8 %452, i8* %9, align 1, !tbaa !2445
  %453 = xor i32 %451, %434
  %454 = add nuw nsw i32 %453, %434
  %455 = icmp eq i32 %454, 2
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %10, align 1, !tbaa !2446
  %457 = add i64 %419, -80
  %458 = add i64 %421, 21
  store i64 %458, i64* %PC, align 8
  %459 = inttoptr i64 %457 to i64*
  store i64 %433, i64* %459, align 8
  %460 = load i64, i64* %RBP, align 8
  %461 = add i64 %460, -84
  %462 = load i32, i32* %EAX, align 4
  %463 = load i64, i64* %PC, align 8
  %464 = add i64 %463, 3
  store i64 %464, i64* %PC, align 8
  %465 = inttoptr i64 %461 to i32*
  store i32 %462, i32* %465, align 4
  %466 = load i64, i64* %PC, align 8
  %467 = add i64 %466, 76
  %468 = add i64 %466, 6
  %469 = load i8, i8* %5, align 1, !tbaa !2429
  %470 = load i8, i8* %8, align 1, !tbaa !2444
  %471 = or i8 %470, %469
  %472 = icmp eq i8 %471, 0
  %473 = select i1 %472, i64 %467, i64 %468
  store i64 %473, i64* %PC, align 8, !tbaa !2424
  br i1 %472, label %block_4006de, label %block_400698

block_400769:                                     ; preds = %block_400710
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %474 = load i64, i64* %RBP, align 8
  %475 = add i64 %474, -24
  %476 = add i64 %333, 14
  store i64 %476, i64* %PC, align 8
  %477 = inttoptr i64 %475 to i32*
  %478 = load i32, i32* %477, align 4
  %479 = sext i32 %478 to i64
  %480 = mul nsw i64 %479, 11
  store i64 %480, i64* %RCX, align 8, !tbaa !2424
  %481 = lshr i64 %480, 63
  %482 = add i64 %480, ptrtoint (%maze_type* @maze to i64)
  store i64 %482, i64* %RAX, align 8, !tbaa !2424
  %483 = icmp ult i64 %482, ptrtoint (%maze_type* @maze to i64)
  %484 = icmp ult i64 %482, %480
  %485 = or i1 %483, %484
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %5, align 1, !tbaa !2429
  %487 = trunc i64 %482 to i32
  %488 = and i32 %487, 255
  %489 = tail call i32 @llvm.ctpop.i32(i32 %488) #9
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  %492 = xor i8 %491, 1
  store i8 %492, i8* %6, align 1, !tbaa !2443
  %493 = xor i64 %480, ptrtoint (%maze_type* @maze to i64)
  %494 = xor i64 %493, %482
  %495 = lshr i64 %494, 4
  %496 = trunc i64 %495 to i8
  %497 = and i8 %496, 1
  store i8 %497, i8* %7, align 1, !tbaa !2447
  %498 = icmp eq i64 %482, 0
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %8, align 1, !tbaa !2444
  %500 = lshr i64 %482, 63
  %501 = trunc i64 %500 to i8
  store i8 %501, i8* %9, align 1, !tbaa !2445
  %502 = xor i64 %500, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %503 = xor i64 %500, %481
  %504 = add nuw nsw i64 %502, %503
  %505 = icmp eq i64 %504, 2
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %10, align 1, !tbaa !2446
  %507 = add i64 %474, -20
  %508 = add i64 %333, 25
  store i64 %508, i64* %PC, align 8
  %509 = inttoptr i64 %507 to i32*
  %510 = load i32, i32* %509, align 4
  %511 = sext i32 %510 to i64
  store i64 %511, i64* %RCX, align 8, !tbaa !2424
  %512 = add i64 %482, %511
  %513 = add i64 %333, 29
  store i64 %513, i64* %PC, align 8
  %514 = inttoptr i64 %512 to i8*
  %515 = load i8, i8* %514, align 1
  %516 = sext i8 %515 to i64
  %517 = and i64 %516, 4294967295
  store i64 %517, i64* %RDX, align 8, !tbaa !2424
  %518 = sext i8 %515 to i32
  %519 = add nsw i32 %518, -32
  %520 = icmp ult i8 %515, 32
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %5, align 1, !tbaa !2429
  %522 = and i32 %519, 255
  %523 = tail call i32 @llvm.ctpop.i32(i32 %522) #9
  %524 = trunc i32 %523 to i8
  %525 = and i8 %524, 1
  %526 = xor i8 %525, 1
  store i8 %526, i8* %6, align 1, !tbaa !2443
  %527 = xor i32 %519, %518
  %528 = lshr i32 %527, 4
  %529 = trunc i32 %528 to i8
  %530 = and i8 %529, 1
  store i8 %530, i8* %7, align 1, !tbaa !2447
  %531 = icmp eq i32 %519, 0
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %8, align 1, !tbaa !2444
  %533 = lshr i32 %519, 31
  %534 = trunc i32 %533 to i8
  store i8 %534, i8* %9, align 1, !tbaa !2445
  %535 = lshr i32 %518, 31
  %536 = xor i32 %533, %535
  %537 = add nuw nsw i32 %536, %535
  %538 = icmp eq i32 %537, 2
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %10, align 1, !tbaa !2446
  %.v123 = select i1 %531, i64 118, i64 38
  %540 = add i64 %333, %.v123
  store i64 %540, i64* %PC, align 8, !tbaa !2424
  br i1 %531, label %block_4007df, label %block_40078f

block_4007f7:                                     ; preds = %block_4007eb
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %541 = add i64 %674, -951
  %542 = add i64 %674, 17
  %543 = load i64, i64* %RSP, align 8, !tbaa !2424
  %544 = add i64 %543, -8
  %545 = inttoptr i64 %544 to i64*
  store i64 %542, i64* %545, align 8
  store i64 %544, i64* %RSP, align 8, !tbaa !2424
  store i64 %541, i64* %PC, align 8, !tbaa !2424
  %546 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.3)
  %547 = load i64, i64* %RBP, align 8
  %548 = add i64 %547, -4
  %549 = load i64, i64* %PC, align 8
  %550 = add i64 %549, 7
  store i64 %550, i64* %PC, align 8
  %551 = inttoptr i64 %548 to i32*
  store i32 2, i32* %551, align 4
  %552 = load i64, i64* %RBP, align 8
  %553 = add i64 %552, -104
  %554 = load i32, i32* %EAX, align 4
  %555 = load i64, i64* %PC, align 8
  %556 = add i64 %555, 3
  store i64 %556, i64* %PC, align 8
  %557 = inttoptr i64 %553 to i32*
  store i32 %554, i32* %557, align 4
  %558 = load i64, i64* %PC, align 8
  %559 = add i64 %558, 80
  store i64 %559, i64* %PC, align 8, !tbaa !2424
  br label %block_400862

block_4007c9:                                     ; preds = %block_4007bf
  %560 = add i64 %26, 4
  store i64 %560, i64* %PC, align 8
  %561 = load i32, i32* %13, align 4
  %562 = add i32 %561, -11
  %563 = icmp ult i32 %561, 11
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %5, align 1, !tbaa !2429
  %565 = and i32 %562, 255
  %566 = tail call i32 @llvm.ctpop.i32(i32 %565) #9
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  %569 = xor i8 %568, 1
  store i8 %569, i8* %6, align 1, !tbaa !2443
  %570 = xor i32 %562, %561
  %571 = lshr i32 %570, 4
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  store i8 %573, i8* %7, align 1, !tbaa !2447
  %574 = icmp eq i32 %562, 0
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %8, align 1, !tbaa !2444
  %576 = lshr i32 %562, 31
  %577 = trunc i32 %576 to i8
  store i8 %577, i8* %9, align 1, !tbaa !2445
  %578 = lshr i32 %561, 31
  %579 = xor i32 %576, %578
  %580 = add nuw nsw i32 %579, %578
  %581 = icmp eq i32 %580, 2
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %10, align 1, !tbaa !2446
  %583 = icmp ne i8 %577, 0
  %584 = xor i1 %583, %581
  %.v130 = select i1 %584, i64 22, i64 10
  %585 = add i64 %26, %.v130
  store i64 %585, i64* %PC, align 8, !tbaa !2424
  br i1 %584, label %block_4007df, label %block_4007d3

block_4006a6.loopexit:                            ; preds = %block_400698
  br label %block_4006a6

block_4006a6:                                     ; preds = %block_4006a6.loopexit, %3
  %586 = phi i64 [ %1, %3 ], [ 4196006, %block_4006a6.loopexit ]
  %587 = phi i64 [ %.pre, %3 ], [ %27, %block_4006a6.loopexit ]
  %MEMORY.4 = phi %struct.Memory* [ %2, %3 ], [ %80, %block_4006a6.loopexit ]
  %588 = add i64 %587, -24
  %589 = add i64 %586, 3
  store i64 %589, i64* %PC, align 8
  %590 = inttoptr i64 %588 to i32*
  %591 = load i32, i32* %590, align 4
  %592 = add i64 %586, 6
  store i64 %592, i64* %PC, align 8
  %593 = add i32 %591, -1
  %594 = zext i32 %593 to i64
  store i64 %594, i64* %RAX, align 8, !tbaa !2424
  %595 = icmp ne i32 %591, 0
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %5, align 1, !tbaa !2429
  %597 = and i32 %593, 255
  %598 = tail call i32 @llvm.ctpop.i32(i32 %597) #9
  %599 = trunc i32 %598 to i8
  %600 = and i8 %599, 1
  %601 = xor i8 %600, 1
  store i8 %601, i8* %6, align 1, !tbaa !2443
  %602 = xor i32 %591, 16
  %603 = xor i32 %602, %593
  %604 = lshr i32 %603, 4
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  store i8 %606, i8* %7, align 1, !tbaa !2447
  %607 = icmp eq i32 %593, 0
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %8, align 1, !tbaa !2444
  %609 = lshr i32 %593, 31
  %610 = trunc i32 %609 to i8
  store i8 %610, i8* %9, align 1, !tbaa !2445
  %611 = lshr i32 %591, 31
  %612 = xor i32 %609, %611
  %613 = xor i32 %609, 1
  br label %block_400710

block_40078f:                                     ; preds = %block_400769
  %614 = load i64, i64* %RBP, align 8
  %615 = add i64 %614, -24
  %616 = add i64 %540, 4
  store i64 %616, i64* %PC, align 8
  %617 = inttoptr i64 %615 to i32*
  %618 = load i32, i32* %617, align 4
  %619 = add i32 %618, -2
  %620 = icmp ult i32 %618, 2
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %5, align 1, !tbaa !2429
  %622 = and i32 %619, 255
  %623 = tail call i32 @llvm.ctpop.i32(i32 %622) #9
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  %626 = xor i8 %625, 1
  store i8 %626, i8* %6, align 1, !tbaa !2443
  %627 = xor i32 %619, %618
  %628 = lshr i32 %627, 4
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  store i8 %630, i8* %7, align 1, !tbaa !2447
  %631 = icmp eq i32 %619, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %8, align 1, !tbaa !2444
  %633 = lshr i32 %619, 31
  %634 = trunc i32 %633 to i8
  store i8 %634, i8* %9, align 1, !tbaa !2445
  %635 = lshr i32 %618, 31
  %636 = xor i32 %633, %635
  %637 = add nuw nsw i32 %636, %635
  %638 = icmp eq i32 %637, 2
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %10, align 1, !tbaa !2446
  %.v124 = select i1 %631, i64 10, i64 68
  %640 = add i64 %540, %.v124
  store i64 %640, i64* %PC, align 8, !tbaa !2424
  br i1 %631, label %block_400799, label %block_4007d3

block_4007eb:                                     ; preds = %block_4007df
  %641 = add i64 %198, -32
  %642 = add i64 %232, 3
  store i64 %642, i64* %PC, align 8
  %643 = inttoptr i64 %641 to i32*
  %644 = load i32, i32* %643, align 4
  %645 = zext i32 %644 to i64
  store i64 %645, i64* %RAX, align 8, !tbaa !2424
  %646 = add i64 %198, -24
  %647 = add i64 %232, 6
  store i64 %647, i64* %PC, align 8
  %648 = inttoptr i64 %646 to i32*
  %649 = load i32, i32* %648, align 4
  %650 = sub i32 %644, %649
  %651 = icmp ult i32 %644, %649
  %652 = zext i1 %651 to i8
  store i8 %652, i8* %5, align 1, !tbaa !2429
  %653 = and i32 %650, 255
  %654 = tail call i32 @llvm.ctpop.i32(i32 %653) #9
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  %657 = xor i8 %656, 1
  store i8 %657, i8* %6, align 1, !tbaa !2443
  %658 = xor i32 %649, %644
  %659 = xor i32 %658, %650
  %660 = lshr i32 %659, 4
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  store i8 %662, i8* %7, align 1, !tbaa !2447
  %663 = icmp eq i32 %650, 0
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %8, align 1, !tbaa !2444
  %665 = lshr i32 %650, 31
  %666 = trunc i32 %665 to i8
  store i8 %666, i8* %9, align 1, !tbaa !2445
  %667 = lshr i32 %644, 31
  %668 = lshr i32 %649, 31
  %669 = xor i32 %668, %667
  %670 = xor i32 %665, %667
  %671 = add nuw nsw i32 %670, %669
  %672 = icmp eq i32 %671, 2
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %10, align 1, !tbaa !2446
  %.v127 = select i1 %663, i64 12, i64 44
  %674 = add i64 %232, %.v127
  store i64 %674, i64* %PC, align 8, !tbaa !2424
  br i1 %663, label %block_4007f7, label %block_400817

block_400847:                                     ; preds = %block_400817
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %675 = add i64 %141, -1031
  %676 = add i64 %141, 17
  %677 = load i64, i64* %RSP, align 8, !tbaa !2424
  %678 = add i64 %677, -8
  %679 = inttoptr i64 %678 to i64*
  store i64 %676, i64* %679, align 8
  store i64 %678, i64* %RSP, align 8, !tbaa !2424
  store i64 %675, i64* %PC, align 8, !tbaa !2424
  %680 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %80)
  %681 = load i64, i64* %RBP, align 8
  %682 = add i64 %681, -4
  %683 = load i64, i64* %PC, align 8
  %684 = add i64 %683, 7
  store i64 %684, i64* %PC, align 8
  %685 = inttoptr i64 %682 to i32*
  store i32 1, i32* %685, align 4
  %686 = load i64, i64* %RBP, align 8
  %687 = add i64 %686, -108
  %688 = load i32, i32* %EAX, align 4
  %689 = load i64, i64* %PC, align 8
  %690 = add i64 %689, 3
  store i64 %690, i64* %PC, align 8
  %691 = inttoptr i64 %687 to i32*
  store i32 %688, i32* %691, align 4
  %.pre119 = load i64, i64* %PC, align 8
  br label %block_400862

block_400862:                                     ; preds = %block_400847, %block_4007f7
  %692 = phi i64 [ %.pre119, %block_400847 ], [ %559, %block_4007f7 ]
  %MEMORY.5 = phi %struct.Memory* [ %680, %block_400847 ], [ %546, %block_4007f7 ]
  %693 = load i64, i64* %RBP, align 8
  %694 = add i64 %693, -4
  %695 = add i64 %692, 3
  store i64 %695, i64* %PC, align 8
  %696 = inttoptr i64 %694 to i32*
  %697 = load i32, i32* %696, align 4
  %698 = zext i32 %697 to i64
  store i64 %698, i64* %RAX, align 8, !tbaa !2424
  %699 = load i64, i64* %RSP, align 8
  %700 = add i64 %699, 112
  store i64 %700, i64* %RSP, align 8, !tbaa !2424
  %701 = icmp ugt i64 %699, -113
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %5, align 1, !tbaa !2429
  %703 = trunc i64 %700 to i32
  %704 = and i32 %703, 255
  %705 = tail call i32 @llvm.ctpop.i32(i32 %704) #9
  %706 = trunc i32 %705 to i8
  %707 = and i8 %706, 1
  %708 = xor i8 %707, 1
  store i8 %708, i8* %6, align 1, !tbaa !2443
  %709 = xor i64 %699, 16
  %710 = xor i64 %709, %700
  %711 = lshr i64 %710, 4
  %712 = trunc i64 %711 to i8
  %713 = and i8 %712, 1
  store i8 %713, i8* %7, align 1, !tbaa !2447
  %714 = icmp eq i64 %700, 0
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %8, align 1, !tbaa !2444
  %716 = lshr i64 %700, 63
  %717 = trunc i64 %716 to i8
  store i8 %717, i8* %9, align 1, !tbaa !2445
  %718 = lshr i64 %699, 63
  %719 = xor i64 %716, %718
  %720 = add nuw nsw i64 %719, %716
  %721 = icmp eq i64 %720, 2
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %10, align 1, !tbaa !2446
  %723 = add i64 %692, 8
  store i64 %723, i64* %PC, align 8
  %724 = add i64 %699, 120
  %725 = inttoptr i64 %700 to i64*
  %726 = load i64, i64* %725, align 8
  store i64 %726, i64* %RBP, align 8, !tbaa !2424
  store i64 %724, i64* %RSP, align 8, !tbaa !2424
  %727 = add i64 %692, 9
  store i64 %727, i64* %PC, align 8
  %728 = inttoptr i64 %724 to i64*
  %729 = load i64, i64* %728, align 8
  store i64 %729, i64* %PC, align 8, !tbaa !2424
  %730 = add i64 %699, 128
  store i64 %730, i64* %RSP, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.5

block_4006d0:                                     ; preds = %block_400698
  %731 = add i64 %27, -20
  store i64 4196051, i64* %PC, align 8
  %732 = inttoptr i64 %731 to i32*
  %733 = load i32, i32* %732, align 4
  store i64 4196054, i64* %PC, align 8
  %734 = add i32 %733, 1
  %735 = zext i32 %734 to i64
  store i64 %735, i64* %RAX, align 8, !tbaa !2424
  %736 = icmp eq i32 %733, -1
  %737 = icmp eq i32 %734, 0
  %738 = or i1 %736, %737
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %5, align 1, !tbaa !2429
  %740 = and i32 %734, 255
  %741 = tail call i32 @llvm.ctpop.i32(i32 %740) #9
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = xor i8 %743, 1
  store i8 %744, i8* %6, align 1, !tbaa !2443
  %745 = xor i32 %734, %733
  br label %block_400710.backedge

block_4006de:                                     ; preds = %block_40066e, %block_400698
  %746 = phi i64 [ %467, %block_40066e ], [ 4196062, %block_400698 ]
  %747 = tail call %struct.Memory* @sub_4006de(%struct.State* nonnull %0, i64 %746, %struct.Memory* %80)
  ret %struct.Memory* %747

block_4006c2:                                     ; preds = %block_400698
  %748 = tail call %struct.Memory* @sub_4006c2(%struct.State* nonnull %0, i64 4196034, %struct.Memory* %80)
  ret %struct.Memory* %748

; <label>:749:                                    ; preds = %block_400698
  %750 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %36, %struct.Memory* %80)
  ret %struct.Memory* %750
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4006b4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
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
  %.pre = load i64, i64* %RBP, align 8
  br label %block_4006b4

block_4007df:                                     ; preds = %block_4007c9, %block_400769, %block_4007d3
  %11 = phi i64 [ %642, %block_4007c9 ], [ %582, %block_400769 ], [ %.pre105, %block_4007d3 ]
  %12 = load i64, i64* %RBP, align 8
  %13 = add i64 %12, -28
  %14 = add i64 %11, 3
  store i64 %14, i64* %PC, align 8
  %15 = inttoptr i64 %13 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RAX, align 8, !tbaa !2424
  %18 = add i64 %12, -20
  %19 = add i64 %11, 6
  store i64 %19, i64* %PC, align 8
  %20 = inttoptr i64 %18 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = sub i32 %16, %21
  %23 = icmp ult i32 %16, %21
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %5, align 1, !tbaa !2429
  %25 = and i32 %22, 255
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25) #9
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  store i8 %29, i8* %6, align 1, !tbaa !2443
  %30 = xor i32 %21, %16
  %31 = xor i32 %30, %22
  %32 = lshr i32 %31, 4
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  store i8 %34, i8* %7, align 1, !tbaa !2447
  %35 = icmp eq i32 %22, 0
  %36 = zext i1 %35 to i8
  store i8 %36, i8* %8, align 1, !tbaa !2444
  %37 = lshr i32 %22, 31
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %9, align 1, !tbaa !2445
  %39 = lshr i32 %16, 31
  %40 = lshr i32 %21, 31
  %41 = xor i32 %40, %39
  %42 = xor i32 %37, %39
  %43 = add nuw nsw i32 %42, %41
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  store i8 %45, i8* %10, align 1, !tbaa !2446
  %.v112 = select i1 %35, i64 12, i64 56
  %46 = add i64 %11, %.v112
  store i64 %46, i64* %PC, align 8, !tbaa !2424
  br i1 %35, label %block_4007eb, label %block_4007df.block_400817_crit_edge

block_4007df.block_400817_crit_edge:              ; preds = %block_4007df
  %.pre107 = add i64 %12, -24
  %.pre108 = inttoptr i64 %.pre107 to i32*
  br label %block_400817

block_4007bf:                                     ; preds = %block_400799
  %47 = add i64 %128, -20
  %48 = add i64 %127, 4
  store i64 %48, i64* %PC, align 8
  %49 = inttoptr i64 %47 to i32*
  %50 = load i32, i32* %49, align 4
  store i8 0, i8* %5, align 1, !tbaa !2429
  %51 = and i32 %50, 255
  %52 = tail call i32 @llvm.ctpop.i32(i32 %51) #9
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  store i8 %55, i8* %6, align 1, !tbaa !2443
  store i8 0, i8* %7, align 1, !tbaa !2447
  %56 = icmp eq i32 %50, 0
  %57 = zext i1 %56 to i8
  store i8 %57, i8* %8, align 1, !tbaa !2444
  %58 = lshr i32 %50, 31
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %9, align 1, !tbaa !2445
  store i8 0, i8* %10, align 1, !tbaa !2446
  %60 = icmp ne i8 %59, 0
  %61 = or i1 %56, %60
  %.v116 = select i1 %61, i64 20, i64 10
  %62 = add i64 %127, %.v116
  store i64 %62, i64* %PC, align 8, !tbaa !2424
  br i1 %61, label %block_4007d3, label %block_4007c9

block_400799:                                     ; preds = %block_40078f
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %63 = add i64 %515, 14
  store i64 %63, i64* %PC, align 8
  %64 = load i32, i32* %492, align 4
  %65 = sext i32 %64 to i64
  %66 = mul nsw i64 %65, 11
  store i64 %66, i64* %RCX, align 8, !tbaa !2424
  %67 = lshr i64 %66, 63
  %68 = add i64 %66, ptrtoint (%maze_type* @maze to i64)
  store i64 %68, i64* %RAX, align 8, !tbaa !2424
  %69 = icmp ult i64 %68, ptrtoint (%maze_type* @maze to i64)
  %70 = icmp ult i64 %68, %66
  %71 = or i1 %69, %70
  %72 = zext i1 %71 to i8
  store i8 %72, i8* %5, align 1, !tbaa !2429
  %73 = trunc i64 %68 to i32
  %74 = and i32 %73, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74) #9
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %6, align 1, !tbaa !2443
  %79 = xor i64 %66, ptrtoint (%maze_type* @maze to i64)
  %80 = xor i64 %79, %68
  %81 = lshr i64 %80, 4
  %82 = trunc i64 %81 to i8
  %83 = and i8 %82, 1
  store i8 %83, i8* %7, align 1, !tbaa !2447
  %84 = icmp eq i64 %68, 0
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %8, align 1, !tbaa !2444
  %86 = lshr i64 %68, 63
  %87 = trunc i64 %86 to i8
  store i8 %87, i8* %9, align 1, !tbaa !2445
  %88 = xor i64 %86, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %89 = xor i64 %86, %67
  %90 = add nuw nsw i64 %88, %89
  %91 = icmp eq i64 %90, 2
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %10, align 1, !tbaa !2446
  %93 = add i64 %489, -20
  %94 = add i64 %515, 25
  store i64 %94, i64* %PC, align 8
  %95 = inttoptr i64 %93 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %RCX, align 8, !tbaa !2424
  %98 = add i64 %68, %97
  %99 = add i64 %515, 29
  store i64 %99, i64* %PC, align 8
  %100 = inttoptr i64 %98 to i8*
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i64
  %103 = and i64 %102, 4294967295
  store i64 %103, i64* %RDX, align 8, !tbaa !2424
  %104 = sext i8 %101 to i32
  %105 = add nsw i32 %104, -124
  %106 = icmp ult i8 %101, 124
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %5, align 1, !tbaa !2429
  %108 = and i32 %105, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108) #9
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %6, align 1, !tbaa !2443
  %113 = xor i32 %104, 16
  %114 = xor i32 %113, %105
  %115 = lshr i32 %114, 4
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  store i8 %117, i8* %7, align 1, !tbaa !2447
  %118 = icmp eq i32 %105, 0
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %8, align 1, !tbaa !2444
  %120 = lshr i32 %105, 31
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %9, align 1, !tbaa !2445
  %122 = lshr i32 %104, 31
  %123 = xor i32 %120, %122
  %124 = add nuw nsw i32 %123, %122
  %125 = icmp eq i32 %124, 2
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %10, align 1, !tbaa !2446
  %.v115 = select i1 %118, i64 38, i64 58
  %127 = add i64 %515, %.v115
  store i64 %127, i64* %PC, align 8, !tbaa !2424
  %128 = load i64, i64* %RBP, align 8
  br i1 %118, label %block_4007bf, label %block_4007d3

block_400817:                                     ; preds = %block_4007eb, %block_4007df.block_400817_crit_edge
  %.pre-phi109 = phi i32* [ %.pre108, %block_4007df.block_400817_crit_edge ], [ %590, %block_4007eb ]
  %129 = phi i64 [ %46, %block_4007df.block_400817_crit_edge ], [ %616, %block_4007eb ]
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %130 = add i64 %129, 14
  store i64 %130, i64* %PC, align 8
  %131 = load i32, i32* %.pre-phi109, align 4
  %132 = sext i32 %131 to i64
  %133 = mul nsw i64 %132, 11
  store i64 %133, i64* %RCX, align 8, !tbaa !2424
  %134 = lshr i64 %133, 63
  %135 = add i64 %133, ptrtoint (%maze_type* @maze to i64)
  store i64 %135, i64* %RAX, align 8, !tbaa !2424
  %136 = icmp ult i64 %135, ptrtoint (%maze_type* @maze to i64)
  %137 = icmp ult i64 %135, %133
  %138 = or i1 %136, %137
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %5, align 1, !tbaa !2429
  %140 = trunc i64 %135 to i32
  %141 = and i32 %140, 255
  %142 = tail call i32 @llvm.ctpop.i32(i32 %141) #9
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  store i8 %145, i8* %6, align 1, !tbaa !2443
  %146 = xor i64 %133, ptrtoint (%maze_type* @maze to i64)
  %147 = xor i64 %146, %135
  %148 = lshr i64 %147, 4
  %149 = trunc i64 %148 to i8
  %150 = and i8 %149, 1
  store i8 %150, i8* %7, align 1, !tbaa !2447
  %151 = icmp eq i64 %135, 0
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %8, align 1, !tbaa !2444
  %153 = lshr i64 %135, 63
  %154 = trunc i64 %153 to i8
  store i8 %154, i8* %9, align 1, !tbaa !2445
  %155 = xor i64 %153, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %156 = xor i64 %153, %134
  %157 = add nuw nsw i64 %155, %156
  %158 = icmp eq i64 %157, 2
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %10, align 1, !tbaa !2446
  %160 = add i64 %129, 25
  store i64 %160, i64* %PC, align 8
  %161 = load i32, i32* %20, align 4
  %162 = sext i32 %161 to i64
  store i64 %162, i64* %RCX, align 8, !tbaa !2424
  %163 = add i64 %135, %162
  %164 = add i64 %129, 29
  store i64 %164, i64* %PC, align 8
  %165 = inttoptr i64 %163 to i8*
  store i8 88, i8* %165, align 1
  %166 = load i64, i64* %PC, align 8
  %167 = add i64 %166, -740
  %168 = add i64 %166, 5
  %169 = load i64, i64* %RSP, align 8, !tbaa !2424
  %170 = add i64 %169, -8
  %171 = inttoptr i64 %170 to i64*
  store i64 %168, i64* %171, align 8
  store i64 %170, i64* %RSP, align 8, !tbaa !2424
  store i64 %167, i64* %PC, align 8, !tbaa !2424
  %172 = tail call %struct.Memory* @sub_400550_draw(%struct.State* nonnull %0, i64 %167, %struct.Memory* %MEMORY.2)
  %173 = load i64, i64* %RBP, align 8
  %174 = add i64 %173, -36
  %175 = load i64, i64* %PC, align 8
  %176 = add i64 %175, 3
  store i64 %176, i64* %PC, align 8
  %177 = inttoptr i64 %174 to i32*
  %178 = load i32, i32* %177, align 4
  %179 = add i32 %178, 1
  %180 = zext i32 %179 to i64
  store i64 %180, i64* %RDX, align 8, !tbaa !2424
  %181 = icmp eq i32 %178, -1
  %182 = icmp eq i32 %179, 0
  %183 = or i1 %181, %182
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %5, align 1, !tbaa !2429
  %185 = and i32 %179, 255
  %186 = tail call i32 @llvm.ctpop.i32(i32 %185) #9
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  %189 = xor i8 %188, 1
  store i8 %189, i8* %6, align 1, !tbaa !2443
  %190 = xor i32 %179, %178
  %191 = lshr i32 %190, 4
  %192 = trunc i32 %191 to i8
  %193 = and i8 %192, 1
  store i8 %193, i8* %7, align 1, !tbaa !2447
  %194 = zext i1 %182 to i8
  store i8 %194, i8* %8, align 1, !tbaa !2444
  %195 = lshr i32 %179, 31
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %9, align 1, !tbaa !2445
  %197 = lshr i32 %178, 31
  %198 = xor i32 %195, %197
  %199 = add nuw nsw i32 %198, %195
  %200 = icmp eq i32 %199, 2
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %10, align 1, !tbaa !2446
  %202 = add i64 %175, 9
  store i64 %202, i64* %PC, align 8
  store i32 %179, i32* %177, align 4
  %203 = load i64, i64* %PC, align 8
  %204 = load i64, i64* %RBP, align 8
  %205 = add i64 %204, -36
  %206 = add i64 %203, -474
  store i64 %206, i64* %PC, align 8
  %207 = inttoptr i64 %205 to i32*
  %208 = load i32, i32* %207, align 4
  %209 = add i32 %208, -28
  %210 = icmp ult i32 %208, 28
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %5, align 1, !tbaa !2429
  %212 = and i32 %209, 255
  %213 = tail call i32 @llvm.ctpop.i32(i32 %212) #9
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 1
  %216 = xor i8 %215, 1
  store i8 %216, i8* %6, align 1, !tbaa !2443
  %217 = xor i32 %208, 16
  %218 = xor i32 %217, %209
  %219 = lshr i32 %218, 4
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  store i8 %221, i8* %7, align 1, !tbaa !2447
  %222 = icmp eq i32 %209, 0
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %8, align 1, !tbaa !2444
  %224 = lshr i32 %209, 31
  %225 = trunc i32 %224 to i8
  store i8 %225, i8* %9, align 1, !tbaa !2445
  %226 = lshr i32 %208, 31
  %227 = xor i32 %224, %226
  %228 = add nuw nsw i32 %227, %226
  %229 = icmp eq i32 %228, 2
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %10, align 1, !tbaa !2446
  %231 = icmp ne i8 %225, 0
  %232 = xor i1 %231, %229
  %.v113 = select i1 %232, i64 -468, i64 5
  %233 = add i64 %203, %.v113
  store i64 %233, i64* %PC, align 8, !tbaa !2424
  br i1 %232, label %block_40066e, label %block_400847

block_4007f7:                                     ; preds = %block_4007eb
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %234 = add i64 %616, -951
  %235 = add i64 %616, 17
  %236 = load i64, i64* %RSP, align 8, !tbaa !2424
  %237 = add i64 %236, -8
  %238 = inttoptr i64 %237 to i64*
  store i64 %235, i64* %238, align 8
  store i64 %237, i64* %RSP, align 8, !tbaa !2424
  store i64 %234, i64* %PC, align 8, !tbaa !2424
  %239 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %240 = load i64, i64* %RBP, align 8
  %241 = add i64 %240, -4
  %242 = load i64, i64* %PC, align 8
  %243 = add i64 %242, 7
  store i64 %243, i64* %PC, align 8
  %244 = inttoptr i64 %241 to i32*
  store i32 2, i32* %244, align 4
  %245 = load i64, i64* %RBP, align 8
  %246 = add i64 %245, -104
  %247 = load i32, i32* %EAX, align 4
  %248 = load i64, i64* %PC, align 8
  %249 = add i64 %248, 3
  store i64 %249, i64* %PC, align 8
  %250 = inttoptr i64 %246 to i32*
  store i32 %247, i32* %250, align 4
  %251 = load i64, i64* %PC, align 8
  %252 = add i64 %251, 80
  store i64 %252, i64* %PC, align 8, !tbaa !2424
  br label %block_400862

block_4006b4:                                     ; preds = %block_400698, %3
  %253 = phi i64 [ %1, %3 ], [ 4196020, %block_400698 ]
  %254 = phi i64 [ %.pre, %3 ], [ %479, %block_400698 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %3 ], [ %172, %block_400698 ]
  %255 = add i64 %254, -24
  %256 = add i64 %253, 3
  store i64 %256, i64* %PC, align 8
  %257 = inttoptr i64 %255 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = add i32 %258, 1
  %260 = icmp eq i32 %258, -1
  %261 = icmp eq i32 %259, 0
  %262 = or i1 %260, %261
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %5, align 1, !tbaa !2429
  %264 = and i32 %259, 255
  %265 = tail call i32 @llvm.ctpop.i32(i32 %264) #9
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  %268 = xor i8 %267, 1
  store i8 %268, i8* %6, align 1, !tbaa !2443
  %269 = xor i32 %259, %258
  %270 = lshr i32 %269, 4
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  store i8 %272, i8* %7, align 1, !tbaa !2447
  %273 = zext i1 %261 to i8
  store i8 %273, i8* %8, align 1, !tbaa !2444
  %274 = lshr i32 %259, 31
  %275 = trunc i32 %274 to i8
  store i8 %275, i8* %9, align 1, !tbaa !2445
  %276 = lshr i32 %258, 31
  %277 = xor i32 %274, %276
  %278 = add nuw nsw i32 %277, %274
  %279 = icmp eq i32 %278, 2
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %10, align 1, !tbaa !2446
  %281 = add i64 %253, 9
  store i64 %281, i64* %PC, align 8
  store i32 %259, i32* %257, align 4
  %282 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %283 = load i64, i64* %RBP, align 8
  %284 = add i64 %283, -24
  %285 = add i64 %282, 97
  store i64 %285, i64* %PC, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = mul nsw i64 %288, 11
  store i64 %289, i64* %RCX, align 8, !tbaa !2424
  %290 = lshr i64 %289, 63
  %291 = add i64 %289, ptrtoint (%maze_type* @maze to i64)
  store i64 %291, i64* %RAX, align 8, !tbaa !2424
  %292 = icmp ult i64 %291, ptrtoint (%maze_type* @maze to i64)
  %293 = icmp ult i64 %291, %289
  %294 = or i1 %292, %293
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %5, align 1, !tbaa !2429
  %296 = trunc i64 %291 to i32
  %297 = and i32 %296, 255
  %298 = tail call i32 @llvm.ctpop.i32(i32 %297) #9
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  store i8 %301, i8* %6, align 1, !tbaa !2443
  %302 = xor i64 %289, ptrtoint (%maze_type* @maze to i64)
  %303 = xor i64 %302, %291
  %304 = lshr i64 %303, 4
  %305 = trunc i64 %304 to i8
  %306 = and i8 %305, 1
  store i8 %306, i8* %7, align 1, !tbaa !2447
  %307 = icmp eq i64 %291, 0
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %8, align 1, !tbaa !2444
  %309 = lshr i64 %291, 63
  %310 = trunc i64 %309 to i8
  store i8 %310, i8* %9, align 1, !tbaa !2445
  %311 = xor i64 %309, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %312 = xor i64 %309, %290
  %313 = add nuw nsw i64 %311, %312
  %314 = icmp eq i64 %313, 2
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %10, align 1, !tbaa !2446
  %316 = add i64 %283, -20
  %317 = add i64 %282, 108
  store i64 %317, i64* %PC, align 8
  %318 = inttoptr i64 %316 to i32*
  %319 = load i32, i32* %318, align 4
  %320 = sext i32 %319 to i64
  store i64 %320, i64* %RCX, align 8, !tbaa !2424
  %321 = add i64 %291, %320
  %322 = add i64 %282, 112
  store i64 %322, i64* %PC, align 8
  %323 = inttoptr i64 %321 to i8*
  %324 = load i8, i8* %323, align 1
  %325 = sext i8 %324 to i64
  %326 = and i64 %325, 4294967295
  store i64 %326, i64* %RDX, align 8, !tbaa !2424
  %327 = sext i8 %324 to i32
  %328 = add nsw i32 %327, -35
  %329 = icmp ult i8 %324, 35
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %5, align 1, !tbaa !2429
  %331 = and i32 %328, 255
  %332 = tail call i32 @llvm.ctpop.i32(i32 %331) #9
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = xor i8 %334, 1
  store i8 %335, i8* %6, align 1, !tbaa !2443
  %336 = xor i32 %328, %327
  %337 = lshr i32 %336, 4
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  store i8 %339, i8* %7, align 1, !tbaa !2447
  %340 = icmp eq i32 %328, 0
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %8, align 1, !tbaa !2444
  %342 = lshr i32 %328, 31
  %343 = trunc i32 %342 to i8
  store i8 %343, i8* %9, align 1, !tbaa !2445
  %344 = lshr i32 %327, 31
  %345 = xor i32 %342, %344
  %346 = add nuw nsw i32 %345, %344
  %347 = icmp eq i32 %346, 2
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %10, align 1, !tbaa !2446
  %.v = select i1 %340, i64 121, i64 172
  %349 = add i64 %282, %.v
  %350 = add i64 %349, 10
  store i64 %350, i64* %PC, align 8
  br i1 %340, label %block_400736, label %block_400769

block_4007d3:                                     ; preds = %block_400799, %block_40078f, %block_4007c9, %block_4007bf
  %351 = phi i64 [ %642, %block_4007c9 ], [ %515, %block_40078f ], [ %62, %block_4007bf ], [ %127, %block_400799 ]
  %352 = phi i64 [ %128, %block_4007c9 ], [ %489, %block_40078f ], [ %128, %block_4007bf ], [ %128, %block_400799 ]
  %353 = add i64 %352, -28
  %354 = add i64 %351, 3
  store i64 %354, i64* %PC, align 8
  %355 = inttoptr i64 %353 to i32*
  %356 = load i32, i32* %355, align 4
  %357 = zext i32 %356 to i64
  store i64 %357, i64* %RAX, align 8, !tbaa !2424
  %358 = add i64 %352, -20
  %359 = add i64 %351, 6
  store i64 %359, i64* %PC, align 8
  %360 = inttoptr i64 %358 to i32*
  store i32 %356, i32* %360, align 4
  %361 = load i64, i64* %RBP, align 8
  %362 = add i64 %361, -32
  %363 = load i64, i64* %PC, align 8
  %364 = add i64 %363, 3
  store i64 %364, i64* %PC, align 8
  %365 = inttoptr i64 %362 to i32*
  %366 = load i32, i32* %365, align 4
  %367 = zext i32 %366 to i64
  store i64 %367, i64* %RAX, align 8, !tbaa !2424
  %368 = add i64 %361, -24
  %369 = add i64 %363, 6
  store i64 %369, i64* %PC, align 8
  %370 = inttoptr i64 %368 to i32*
  store i32 %366, i32* %370, align 4
  %.pre105 = load i64, i64* %PC, align 8
  br label %block_4007df

block_400736:                                     ; preds = %block_4006b4
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %371 = add i64 %349, -758
  %372 = add i64 %349, 17
  %373 = load i64, i64* %RSP, align 8, !tbaa !2424
  %374 = add i64 %373, -8
  %375 = inttoptr i64 %374 to i64*
  store i64 %372, i64* %375, align 8
  store i64 %374, i64* %RSP, align 8, !tbaa !2424
  store i64 %371, i64* %PC, align 8, !tbaa !2424
  %376 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.2)
  %377 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2424
  %378 = load i64, i64* %RBP, align 8
  %379 = add i64 %378, -64
  store i64 %379, i64* %RSI, align 8, !tbaa !2424
  %380 = add i64 %378, -96
  %381 = load i32, i32* %EAX, align 4
  %382 = add i64 %377, 17
  store i64 %382, i64* %PC, align 8
  %383 = inttoptr i64 %380 to i32*
  store i32 %381, i32* %383, align 4
  %384 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %385 = add i64 %384, -792
  %386 = add i64 %384, 7
  %387 = load i64, i64* %RSP, align 8, !tbaa !2424
  %388 = add i64 %387, -8
  %389 = inttoptr i64 %388 to i64*
  store i64 %386, i64* %389, align 8
  store i64 %388, i64* %RSP, align 8, !tbaa !2424
  store i64 %385, i64* %PC, align 8, !tbaa !2424
  %390 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %376)
  %391 = load i64, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %5, align 1, !tbaa !2429
  store i8 1, i8* %6, align 1, !tbaa !2443
  store i8 1, i8* %8, align 1, !tbaa !2444
  store i8 0, i8* %9, align 1, !tbaa !2445
  store i8 0, i8* %10, align 1, !tbaa !2446
  store i8 0, i8* %7, align 1, !tbaa !2447
  %392 = load i64, i64* %RBP, align 8
  %393 = add i64 %392, -100
  %394 = load i32, i32* %EAX, align 4
  %395 = add i64 %391, 5
  store i64 %395, i64* %PC, align 8
  %396 = inttoptr i64 %393 to i32*
  store i32 %394, i32* %396, align 4
  %397 = load i64, i64* %PC, align 8
  %398 = add i64 %397, -772
  %399 = add i64 %397, 5
  %400 = load i64, i64* %RSP, align 8, !tbaa !2424
  %401 = add i64 %400, -8
  %402 = inttoptr i64 %401 to i64*
  store i64 %399, i64* %402, align 8
  store i64 %401, i64* %RSP, align 8, !tbaa !2424
  store i64 %398, i64* %PC, align 8, !tbaa !2424
  %403 = tail call fastcc %struct.Memory* @ext_6010c8_exit(%struct.State* nonnull %0, %struct.Memory* %390)
  %404 = load i64, i64* %PC, align 8
  %405 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %404, %struct.Memory* %403)
  ret %struct.Memory* %405

block_40066e:                                     ; preds = %block_400817
  %406 = add i64 %204, -20
  %407 = add i64 %233, 3
  store i64 %407, i64* %PC, align 8
  %408 = inttoptr i64 %406 to i32*
  %409 = load i32, i32* %408, align 4
  %410 = zext i32 %409 to i64
  store i64 %410, i64* %RAX, align 8, !tbaa !2424
  %411 = add i64 %204, -28
  %412 = add i64 %233, 6
  store i64 %412, i64* %PC, align 8
  %413 = inttoptr i64 %411 to i32*
  store i32 %409, i32* %413, align 4
  %414 = load i64, i64* %RBP, align 8
  %415 = add i64 %414, -24
  %416 = load i64, i64* %PC, align 8
  %417 = add i64 %416, 3
  store i64 %417, i64* %PC, align 8
  %418 = inttoptr i64 %415 to i32*
  %419 = load i32, i32* %418, align 4
  %420 = zext i32 %419 to i64
  store i64 %420, i64* %RAX, align 8, !tbaa !2424
  %421 = add i64 %414, -32
  %422 = add i64 %416, 6
  store i64 %422, i64* %PC, align 8
  %423 = inttoptr i64 %421 to i32*
  store i32 %419, i32* %423, align 4
  %424 = load i64, i64* %RBP, align 8
  %425 = add i64 %424, -36
  %426 = load i64, i64* %PC, align 8
  %427 = add i64 %426, 4
  store i64 %427, i64* %PC, align 8
  %428 = inttoptr i64 %425 to i32*
  %429 = load i32, i32* %428, align 4
  %430 = sext i32 %429 to i64
  store i64 %430, i64* %RCX, align 8, !tbaa !2424
  %431 = add nsw i64 %430, -64
  %432 = add i64 %431, %424
  %433 = add i64 %426, 9
  store i64 %433, i64* %PC, align 8
  %434 = inttoptr i64 %432 to i8*
  %435 = load i8, i8* %434, align 1
  %436 = sext i8 %435 to i32
  %437 = add nsw i32 %436, -97
  %438 = zext i32 %437 to i64
  %439 = lshr i32 %437, 31
  store i64 %438, i64* %RCX, align 8, !tbaa !2424
  %440 = add nsw i32 %436, -119
  %441 = zext i32 %440 to i64
  store i64 %441, i64* %RAX, align 8, !tbaa !2424
  %442 = icmp ult i32 %437, 22
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %5, align 1, !tbaa !2429
  %444 = and i32 %440, 255
  %445 = tail call i32 @llvm.ctpop.i32(i32 %444) #9
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  %448 = xor i8 %447, 1
  store i8 %448, i8* %6, align 1, !tbaa !2443
  %449 = xor i32 %437, 16
  %450 = xor i32 %449, %440
  %451 = lshr i32 %450, 4
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  store i8 %453, i8* %7, align 1, !tbaa !2447
  %454 = icmp eq i32 %440, 0
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %8, align 1, !tbaa !2444
  %456 = lshr i32 %440, 31
  %457 = trunc i32 %456 to i8
  store i8 %457, i8* %9, align 1, !tbaa !2445
  %458 = xor i32 %456, %439
  %459 = add nuw nsw i32 %458, %439
  %460 = icmp eq i32 %459, 2
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %10, align 1, !tbaa !2446
  %462 = add i64 %424, -80
  %463 = add i64 %426, 21
  store i64 %463, i64* %PC, align 8
  %464 = inttoptr i64 %462 to i64*
  store i64 %438, i64* %464, align 8
  %465 = load i64, i64* %RBP, align 8
  %466 = add i64 %465, -84
  %467 = load i32, i32* %EAX, align 4
  %468 = load i64, i64* %PC, align 8
  %469 = add i64 %468, 3
  store i64 %469, i64* %PC, align 8
  %470 = inttoptr i64 %466 to i32*
  store i32 %467, i32* %470, align 4
  %471 = load i64, i64* %PC, align 8
  %472 = add i64 %471, 76
  %473 = add i64 %471, 6
  %474 = load i8, i8* %5, align 1, !tbaa !2429
  %475 = load i8, i8* %8, align 1, !tbaa !2444
  %476 = or i8 %475, %474
  %477 = icmp eq i8 %476, 0
  %478 = select i1 %477, i64 %472, i64 %473
  store i64 %478, i64* %PC, align 8, !tbaa !2424
  br i1 %477, label %block_4006de, label %block_400698

block_400698:                                     ; preds = %block_40066e
  %479 = load i64, i64* %RBP, align 8
  %480 = add i64 %479, -80
  %481 = add i64 %478, 4
  store i64 %481, i64* %PC, align 8
  %482 = inttoptr i64 %480 to i64*
  %483 = load i64, i64* %482, align 8
  store i64 %483, i64* %RAX, align 8, !tbaa !2424
  %484 = shl i64 %483, 3
  %485 = add i64 %484, add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 8)
  %486 = add i64 %478, 12
  store i64 %486, i64* %PC, align 8
  %487 = inttoptr i64 %485 to i64*
  %488 = load i64, i64* %487, align 8
  store i64 %488, i64* %RCX, align 8, !tbaa !2424
  store i64 %488, i64* %PC, align 8, !tbaa !2424
  switch i64 %488, label %704 [
    i64 4196034, label %block_4006c2
    i64 4196048, label %block_4006d0
    i64 4196020, label %block_4006b4
    i64 4196062, label %block_4006de
    i64 4196006, label %block_4006a6
  ]

block_40078f:                                     ; preds = %block_400769
  %489 = load i64, i64* %RBP, align 8
  %490 = add i64 %489, -24
  %491 = add i64 %582, 4
  store i64 %491, i64* %PC, align 8
  %492 = inttoptr i64 %490 to i32*
  %493 = load i32, i32* %492, align 4
  %494 = add i32 %493, -2
  %495 = icmp ult i32 %493, 2
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %5, align 1, !tbaa !2429
  %497 = and i32 %494, 255
  %498 = tail call i32 @llvm.ctpop.i32(i32 %497) #9
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  %501 = xor i8 %500, 1
  store i8 %501, i8* %6, align 1, !tbaa !2443
  %502 = xor i32 %494, %493
  %503 = lshr i32 %502, 4
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  store i8 %505, i8* %7, align 1, !tbaa !2447
  %506 = icmp eq i32 %494, 0
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %8, align 1, !tbaa !2444
  %508 = lshr i32 %494, 31
  %509 = trunc i32 %508 to i8
  store i8 %509, i8* %9, align 1, !tbaa !2445
  %510 = lshr i32 %493, 31
  %511 = xor i32 %508, %510
  %512 = add nuw nsw i32 %511, %510
  %513 = icmp eq i32 %512, 2
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %10, align 1, !tbaa !2446
  %.v111 = select i1 %506, i64 10, i64 68
  %515 = add i64 %582, %.v111
  store i64 %515, i64* %PC, align 8, !tbaa !2424
  br i1 %506, label %block_400799, label %block_4007d3

block_400769:                                     ; preds = %block_4006b4
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %516 = load i64, i64* %RBP, align 8
  %517 = add i64 %516, -24
  %518 = add i64 %349, 14
  store i64 %518, i64* %PC, align 8
  %519 = inttoptr i64 %517 to i32*
  %520 = load i32, i32* %519, align 4
  %521 = sext i32 %520 to i64
  %522 = mul nsw i64 %521, 11
  store i64 %522, i64* %RCX, align 8, !tbaa !2424
  %523 = lshr i64 %522, 63
  %524 = add i64 %522, ptrtoint (%maze_type* @maze to i64)
  store i64 %524, i64* %RAX, align 8, !tbaa !2424
  %525 = icmp ult i64 %524, ptrtoint (%maze_type* @maze to i64)
  %526 = icmp ult i64 %524, %522
  %527 = or i1 %525, %526
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %5, align 1, !tbaa !2429
  %529 = trunc i64 %524 to i32
  %530 = and i32 %529, 255
  %531 = tail call i32 @llvm.ctpop.i32(i32 %530) #9
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  %534 = xor i8 %533, 1
  store i8 %534, i8* %6, align 1, !tbaa !2443
  %535 = xor i64 %522, ptrtoint (%maze_type* @maze to i64)
  %536 = xor i64 %535, %524
  %537 = lshr i64 %536, 4
  %538 = trunc i64 %537 to i8
  %539 = and i8 %538, 1
  store i8 %539, i8* %7, align 1, !tbaa !2447
  %540 = icmp eq i64 %524, 0
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %8, align 1, !tbaa !2444
  %542 = lshr i64 %524, 63
  %543 = trunc i64 %542 to i8
  store i8 %543, i8* %9, align 1, !tbaa !2445
  %544 = xor i64 %542, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %545 = xor i64 %542, %523
  %546 = add nuw nsw i64 %544, %545
  %547 = icmp eq i64 %546, 2
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %10, align 1, !tbaa !2446
  %549 = add i64 %516, -20
  %550 = add i64 %349, 25
  store i64 %550, i64* %PC, align 8
  %551 = inttoptr i64 %549 to i32*
  %552 = load i32, i32* %551, align 4
  %553 = sext i32 %552 to i64
  store i64 %553, i64* %RCX, align 8, !tbaa !2424
  %554 = add i64 %524, %553
  %555 = add i64 %349, 29
  store i64 %555, i64* %PC, align 8
  %556 = inttoptr i64 %554 to i8*
  %557 = load i8, i8* %556, align 1
  %558 = sext i8 %557 to i64
  %559 = and i64 %558, 4294967295
  store i64 %559, i64* %RDX, align 8, !tbaa !2424
  %560 = sext i8 %557 to i32
  %561 = add nsw i32 %560, -32
  %562 = icmp ult i8 %557, 32
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %5, align 1, !tbaa !2429
  %564 = and i32 %561, 255
  %565 = tail call i32 @llvm.ctpop.i32(i32 %564) #9
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 1
  %568 = xor i8 %567, 1
  store i8 %568, i8* %6, align 1, !tbaa !2443
  %569 = xor i32 %561, %560
  %570 = lshr i32 %569, 4
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  store i8 %572, i8* %7, align 1, !tbaa !2447
  %573 = icmp eq i32 %561, 0
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %8, align 1, !tbaa !2444
  %575 = lshr i32 %561, 31
  %576 = trunc i32 %575 to i8
  store i8 %576, i8* %9, align 1, !tbaa !2445
  %577 = lshr i32 %560, 31
  %578 = xor i32 %575, %577
  %579 = add nuw nsw i32 %578, %577
  %580 = icmp eq i32 %579, 2
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %10, align 1, !tbaa !2446
  %.v110 = select i1 %573, i64 118, i64 38
  %582 = add i64 %349, %.v110
  store i64 %582, i64* %PC, align 8, !tbaa !2424
  br i1 %573, label %block_4007df, label %block_40078f

block_4007eb:                                     ; preds = %block_4007df
  %583 = add i64 %12, -32
  %584 = add i64 %46, 3
  store i64 %584, i64* %PC, align 8
  %585 = inttoptr i64 %583 to i32*
  %586 = load i32, i32* %585, align 4
  %587 = zext i32 %586 to i64
  store i64 %587, i64* %RAX, align 8, !tbaa !2424
  %588 = add i64 %12, -24
  %589 = add i64 %46, 6
  store i64 %589, i64* %PC, align 8
  %590 = inttoptr i64 %588 to i32*
  %591 = load i32, i32* %590, align 4
  %592 = sub i32 %586, %591
  %593 = icmp ult i32 %586, %591
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %5, align 1, !tbaa !2429
  %595 = and i32 %592, 255
  %596 = tail call i32 @llvm.ctpop.i32(i32 %595) #9
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  %599 = xor i8 %598, 1
  store i8 %599, i8* %6, align 1, !tbaa !2443
  %600 = xor i32 %591, %586
  %601 = xor i32 %600, %592
  %602 = lshr i32 %601, 4
  %603 = trunc i32 %602 to i8
  %604 = and i8 %603, 1
  store i8 %604, i8* %7, align 1, !tbaa !2447
  %605 = icmp eq i32 %592, 0
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %8, align 1, !tbaa !2444
  %607 = lshr i32 %592, 31
  %608 = trunc i32 %607 to i8
  store i8 %608, i8* %9, align 1, !tbaa !2445
  %609 = lshr i32 %586, 31
  %610 = lshr i32 %591, 31
  %611 = xor i32 %610, %609
  %612 = xor i32 %607, %609
  %613 = add nuw nsw i32 %612, %611
  %614 = icmp eq i32 %613, 2
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %10, align 1, !tbaa !2446
  %.v114 = select i1 %605, i64 12, i64 44
  %616 = add i64 %46, %.v114
  store i64 %616, i64* %PC, align 8, !tbaa !2424
  br i1 %605, label %block_4007f7, label %block_400817

block_4007c9:                                     ; preds = %block_4007bf
  %617 = add i64 %62, 4
  store i64 %617, i64* %PC, align 8
  %618 = load i32, i32* %49, align 4
  %619 = add i32 %618, -11
  %620 = icmp ult i32 %618, 11
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %5, align 1, !tbaa !2429
  %622 = and i32 %619, 255
  %623 = tail call i32 @llvm.ctpop.i32(i32 %622) #9
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  %626 = xor i8 %625, 1
  store i8 %626, i8* %6, align 1, !tbaa !2443
  %627 = xor i32 %619, %618
  %628 = lshr i32 %627, 4
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  store i8 %630, i8* %7, align 1, !tbaa !2447
  %631 = icmp eq i32 %619, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %8, align 1, !tbaa !2444
  %633 = lshr i32 %619, 31
  %634 = trunc i32 %633 to i8
  store i8 %634, i8* %9, align 1, !tbaa !2445
  %635 = lshr i32 %618, 31
  %636 = xor i32 %633, %635
  %637 = add nuw nsw i32 %636, %635
  %638 = icmp eq i32 %637, 2
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %10, align 1, !tbaa !2446
  %640 = icmp ne i8 %634, 0
  %641 = xor i1 %640, %638
  %.v117 = select i1 %641, i64 22, i64 10
  %642 = add i64 %62, %.v117
  store i64 %642, i64* %PC, align 8, !tbaa !2424
  br i1 %641, label %block_4007df, label %block_4007d3

block_400847:                                     ; preds = %block_400817
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %643 = add i64 %233, -1031
  %644 = add i64 %233, 17
  %645 = load i64, i64* %RSP, align 8, !tbaa !2424
  %646 = add i64 %645, -8
  %647 = inttoptr i64 %646 to i64*
  store i64 %644, i64* %647, align 8
  store i64 %646, i64* %RSP, align 8, !tbaa !2424
  store i64 %643, i64* %PC, align 8, !tbaa !2424
  %648 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %172)
  %649 = load i64, i64* %RBP, align 8
  %650 = add i64 %649, -4
  %651 = load i64, i64* %PC, align 8
  %652 = add i64 %651, 7
  store i64 %652, i64* %PC, align 8
  %653 = inttoptr i64 %650 to i32*
  store i32 1, i32* %653, align 4
  %654 = load i64, i64* %RBP, align 8
  %655 = add i64 %654, -108
  %656 = load i32, i32* %EAX, align 4
  %657 = load i64, i64* %PC, align 8
  %658 = add i64 %657, 3
  store i64 %658, i64* %PC, align 8
  %659 = inttoptr i64 %655 to i32*
  store i32 %656, i32* %659, align 4
  %.pre106 = load i64, i64* %PC, align 8
  br label %block_400862

block_400862:                                     ; preds = %block_400847, %block_4007f7
  %660 = phi i64 [ %.pre106, %block_400847 ], [ %252, %block_4007f7 ]
  %MEMORY.4 = phi %struct.Memory* [ %648, %block_400847 ], [ %239, %block_4007f7 ]
  %661 = load i64, i64* %RBP, align 8
  %662 = add i64 %661, -4
  %663 = add i64 %660, 3
  store i64 %663, i64* %PC, align 8
  %664 = inttoptr i64 %662 to i32*
  %665 = load i32, i32* %664, align 4
  %666 = zext i32 %665 to i64
  store i64 %666, i64* %RAX, align 8, !tbaa !2424
  %667 = load i64, i64* %RSP, align 8
  %668 = add i64 %667, 112
  store i64 %668, i64* %RSP, align 8, !tbaa !2424
  %669 = icmp ugt i64 %667, -113
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %5, align 1, !tbaa !2429
  %671 = trunc i64 %668 to i32
  %672 = and i32 %671, 255
  %673 = tail call i32 @llvm.ctpop.i32(i32 %672) #9
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  %676 = xor i8 %675, 1
  store i8 %676, i8* %6, align 1, !tbaa !2443
  %677 = xor i64 %667, 16
  %678 = xor i64 %677, %668
  %679 = lshr i64 %678, 4
  %680 = trunc i64 %679 to i8
  %681 = and i8 %680, 1
  store i8 %681, i8* %7, align 1, !tbaa !2447
  %682 = icmp eq i64 %668, 0
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %8, align 1, !tbaa !2444
  %684 = lshr i64 %668, 63
  %685 = trunc i64 %684 to i8
  store i8 %685, i8* %9, align 1, !tbaa !2445
  %686 = lshr i64 %667, 63
  %687 = xor i64 %684, %686
  %688 = add nuw nsw i64 %687, %684
  %689 = icmp eq i64 %688, 2
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %10, align 1, !tbaa !2446
  %691 = add i64 %660, 8
  store i64 %691, i64* %PC, align 8
  %692 = add i64 %667, 120
  %693 = inttoptr i64 %668 to i64*
  %694 = load i64, i64* %693, align 8
  store i64 %694, i64* %RBP, align 8, !tbaa !2424
  store i64 %692, i64* %RSP, align 8, !tbaa !2424
  %695 = add i64 %660, 9
  store i64 %695, i64* %PC, align 8
  %696 = inttoptr i64 %692 to i64*
  %697 = load i64, i64* %696, align 8
  store i64 %697, i64* %PC, align 8, !tbaa !2424
  %698 = add i64 %667, 128
  store i64 %698, i64* %RSP, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.4

block_4006de:                                     ; preds = %block_400698, %block_40066e
  %699 = phi i64 [ 4196062, %block_400698 ], [ %472, %block_40066e ]
  %700 = tail call %struct.Memory* @sub_4006de(%struct.State* nonnull %0, i64 %699, %struct.Memory* %172)
  ret %struct.Memory* %700

block_4006a6:                                     ; preds = %block_400698
  %701 = tail call %struct.Memory* @sub_4006a6(%struct.State* nonnull %0, i64 4196006, %struct.Memory* %172)
  ret %struct.Memory* %701

block_4006d0:                                     ; preds = %block_400698
  %702 = tail call %struct.Memory* @sub_4006d0(%struct.State* nonnull %0, i64 4196048, %struct.Memory* %172)
  ret %struct.Memory* %702

block_4006c2:                                     ; preds = %block_400698
  %703 = tail call %struct.Memory* @sub_4006c2(%struct.State* nonnull %0, i64 4196034, %struct.Memory* %172)
  ret %struct.Memory* %703

; <label>:704:                                    ; preds = %block_400698
  %705 = tail call %struct.Memory* @__remill_missing_block(%struct.State* nonnull %0, i64 %488, %struct.Memory* %172)
  ret %struct.Memory* %705
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400540_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400540:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %1, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !2424
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %3, i64* %8, align 8
  store i64 %7, i64* %5, align 8, !tbaa !2424
  %9 = load i64, i64* %PC, align 8
  store i64 %7, i64* %RBP, align 8, !tbaa !2424
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = load i64, i64* %8, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2424
  store i64 %6, i64* %5, align 8, !tbaa !2424
  %12 = add i64 %9, -113
  store i64 %12, i64* %PC, align 8, !tbaa !2424
  %13 = tail call %struct.Memory* @sub_4004d0_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400470__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400470:
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
  store i64 0, i64* %RBP, align 8, !tbaa !2424
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3, align 1, !tbaa !2429
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4, align 1, !tbaa !2443
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %5, align 1, !tbaa !2444
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6, align 1, !tbaa !2445
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7, align 1, !tbaa !2446
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8, align 1, !tbaa !2447
  %9 = load i64, i64* %RDX, align 8
  store i64 %9, i64* %R9, align 8, !tbaa !2424
  %10 = add i64 %1, 6
  store i64 %10, i64* %PC, align 8
  %11 = load i64, i64* %RSP, align 8, !tbaa !2424
  %12 = add i64 %11, 8
  %13 = inttoptr i64 %11 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %RSI, align 8, !tbaa !2424
  store i64 %12, i64* %RDX, align 8, !tbaa !2424
  %15 = and i64 %12, -16
  store i8 0, i8* %3, align 1, !tbaa !2429
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 240
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #9
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  store i8 %21, i8* %4, align 1, !tbaa !2443
  %22 = icmp eq i64 %15, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %5, align 1, !tbaa !2444
  %24 = lshr i64 %12, 63
  %25 = trunc i64 %24 to i8
  store i8 %25, i8* %6, align 1, !tbaa !2445
  store i8 0, i8* %7, align 1, !tbaa !2446
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
  store i64 ptrtoint (void ()* @callback_sub_4008e0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2424
  store i64 ptrtoint (void ()* @callback_sub_400870___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2424
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2424
  %35 = add i64 %34, 27
  %36 = add i64 %15, -24
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37, align 8
  store i64 %36, i64* %RSP, align 8, !tbaa !2424
  %38 = load i64, i64* getelementptr inbounds (%seg_600ff0__got_type, %seg_600ff0__got_type* @seg_600ff0__got, i64 0, i32 0), align 8
  store i64 %38, i64* %PC, align 8, !tbaa !2424
  %39 = tail call fastcc %struct.Memory* @ext_6010c0___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC, align 8
  %42 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %41, %struct.Memory* %39)
  ret %struct.Memory* %42
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400550_draw(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400550:
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
  %6 = load i64, i64* %RSP, align 8, !tbaa !2424
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8, align 8
  %9 = load i64, i64* %PC, align 8
  store i64 %7, i64* %RBP, align 8, !tbaa !2424
  %10 = add i64 %6, -40
  store i64 %10, i64* %RSP, align 8, !tbaa !2424
  %11 = icmp ult i64 %7, 32
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1, !tbaa !2429
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #9
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1, !tbaa !2443
  %21 = xor i64 %7, %10
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1, !tbaa !2447
  %26 = icmp eq i64 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1, !tbaa !2444
  %29 = lshr i64 %10, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1, !tbaa !2445
  %32 = lshr i64 %7, 63
  %33 = xor i64 %29, %32
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1, !tbaa !2446
  %38 = add i64 %6, -12
  %39 = add i64 %9, 14
  store i64 %39, i64* %PC, align 8
  %40 = inttoptr i64 %38 to i32*
  store i32 0, i32* %40, align 4
  %.pre = load i64, i64* %PC, align 8
  br label %block_40055f

block_40055f:                                     ; preds = %block_4005b9, %block_400550
  %41 = phi i64 [ %.pre, %block_400550 ], [ %243, %block_4005b9 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400550 ], [ %205, %block_4005b9 ]
  %42 = load i64, i64* %RBP, align 8
  %43 = add i64 %42, -4
  %44 = add i64 %41, 4
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %43 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %46, -7
  %48 = icmp ult i32 %46, 7
  %49 = zext i1 %48 to i8
  store i8 %49, i8* %13, align 1, !tbaa !2429
  %50 = and i32 %47, 255
  %51 = tail call i32 @llvm.ctpop.i32(i32 %50) #9
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, 1
  %54 = xor i8 %53, 1
  store i8 %54, i8* %20, align 1, !tbaa !2443
  %55 = xor i32 %47, %46
  %56 = lshr i32 %55, 4
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 1
  store i8 %58, i8* %25, align 1, !tbaa !2447
  %59 = icmp eq i32 %47, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %28, align 1, !tbaa !2444
  %61 = lshr i32 %47, 31
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %31, align 1, !tbaa !2445
  %63 = lshr i32 %46, 31
  %64 = xor i32 %61, %63
  %65 = add nuw nsw i32 %64, %63
  %66 = icmp eq i32 %65, 2
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %37, align 1, !tbaa !2446
  %68 = icmp ne i8 %62, 0
  %69 = xor i1 %68, %66
  %.v = select i1 %69, i64 10, i64 124
  %70 = add i64 %41, %.v
  store i64 %70, i64* %PC, align 8, !tbaa !2424
  br i1 %69, label %block_400569, label %block_4005db

block_4005db:                                     ; preds = %block_40055f
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 273), i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %71 = add i64 %70, -411
  %72 = add i64 %70, 17
  %73 = load i64, i64* %RSP, align 8, !tbaa !2424
  %74 = add i64 %73, -8
  %75 = inttoptr i64 %74 to i64*
  store i64 %72, i64* %75, align 8
  store i64 %74, i64* %RSP, align 8, !tbaa !2424
  store i64 %71, i64* %PC, align 8, !tbaa !2424
  %76 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.0)
  %77 = load i64, i64* %RBP, align 8
  %78 = add i64 %77, -20
  %79 = load i32, i32* %EAX, align 4
  %80 = load i64, i64* %PC, align 8
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %78 to i32*
  store i32 %79, i32* %82, align 4
  %83 = load i64, i64* %RSP, align 8
  %84 = load i64, i64* %PC, align 8
  %85 = add i64 %83, 32
  store i64 %85, i64* %RSP, align 8, !tbaa !2424
  %86 = icmp ugt i64 %83, -33
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %13, align 1, !tbaa !2429
  %88 = trunc i64 %85 to i32
  %89 = and i32 %88, 255
  %90 = tail call i32 @llvm.ctpop.i32(i32 %89) #9
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  %93 = xor i8 %92, 1
  store i8 %93, i8* %20, align 1, !tbaa !2443
  %94 = xor i64 %85, %83
  %95 = lshr i64 %94, 4
  %96 = trunc i64 %95 to i8
  %97 = and i8 %96, 1
  store i8 %97, i8* %25, align 1, !tbaa !2447
  %98 = icmp eq i64 %85, 0
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %28, align 1, !tbaa !2444
  %100 = lshr i64 %85, 63
  %101 = trunc i64 %100 to i8
  store i8 %101, i8* %31, align 1, !tbaa !2445
  %102 = lshr i64 %83, 63
  %103 = xor i64 %100, %102
  %104 = add nuw nsw i64 %103, %100
  %105 = icmp eq i64 %104, 2
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %37, align 1, !tbaa !2446
  %107 = add i64 %84, 5
  store i64 %107, i64* %PC, align 8
  %108 = add i64 %83, 40
  %109 = inttoptr i64 %85 to i64*
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %RBP, align 8, !tbaa !2424
  store i64 %108, i64* %RSP, align 8, !tbaa !2424
  %111 = add i64 %84, 6
  store i64 %111, i64* %PC, align 8
  %112 = inttoptr i64 %108 to i64*
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %PC, align 8, !tbaa !2424
  %114 = add i64 %83, 48
  store i64 %114, i64* %RSP, align 8, !tbaa !2424
  ret %struct.Memory* %76

block_40057a:                                     ; preds = %block_400570
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 192), i64* %RDI, align 8, !tbaa !2424
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %115 = add i64 %245, -4
  %116 = add i64 %273, 24
  store i64 %116, i64* %PC, align 8
  %117 = inttoptr i64 %115 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = mul nsw i64 %119, 11
  store i64 %120, i64* %RCX, align 8, !tbaa !2424
  %121 = lshr i64 %120, 63
  %122 = add i64 %120, ptrtoint (%maze_type* @maze to i64)
  store i64 %122, i64* %RAX, align 8, !tbaa !2424
  %123 = icmp ult i64 %122, ptrtoint (%maze_type* @maze to i64)
  %124 = icmp ult i64 %122, %120
  %125 = or i1 %123, %124
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %13, align 1, !tbaa !2429
  %127 = trunc i64 %122 to i32
  %128 = and i32 %127, 255
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128) #9
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  store i8 %132, i8* %20, align 1, !tbaa !2443
  %133 = xor i64 %120, ptrtoint (%maze_type* @maze to i64)
  %134 = xor i64 %133, %122
  %135 = lshr i64 %134, 4
  %136 = trunc i64 %135 to i8
  %137 = and i8 %136, 1
  store i8 %137, i8* %25, align 1, !tbaa !2447
  %138 = icmp eq i64 %122, 0
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %28, align 1, !tbaa !2444
  %140 = lshr i64 %122, 63
  %141 = trunc i64 %140 to i8
  store i8 %141, i8* %31, align 1, !tbaa !2445
  %142 = xor i64 %140, lshr (i64 ptrtoint (%maze_type* @maze to i64), i64 63)
  %143 = xor i64 %140, %121
  %144 = add nuw nsw i64 %142, %143
  %145 = icmp eq i64 %144, 2
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %37, align 1, !tbaa !2446
  %147 = add i64 %273, 35
  store i64 %147, i64* %PC, align 8
  %148 = load i32, i32* %248, align 4
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %RCX, align 8, !tbaa !2424
  %150 = add i64 %122, %149
  %151 = add i64 %273, 39
  store i64 %151, i64* %PC, align 8
  %152 = inttoptr i64 %150 to i8*
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i64
  %155 = and i64 %154, 4294967295
  store i64 %155, i64* %RSI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %156 = add i64 %273, -314
  %157 = add i64 %273, 46
  %158 = load i64, i64* %RSP, align 8, !tbaa !2424
  %159 = add i64 %158, -8
  %160 = inttoptr i64 %159 to i64*
  store i64 %157, i64* %160, align 8
  store i64 %159, i64* %RSP, align 8, !tbaa !2424
  store i64 %156, i64* %PC, align 8, !tbaa !2424
  %161 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %162 = load i64, i64* %RBP, align 8
  %163 = add i64 %162, -12
  %164 = load i32, i32* %EAX, align 4
  %165 = load i64, i64* %PC, align 8
  %166 = add i64 %165, 3
  store i64 %166, i64* %PC, align 8
  %167 = inttoptr i64 %163 to i32*
  store i32 %164, i32* %167, align 4
  %168 = load i64, i64* %RBP, align 8
  %169 = add i64 %168, -8
  %170 = load i64, i64* %PC, align 8
  %171 = add i64 %170, 3
  store i64 %171, i64* %PC, align 8
  %172 = inttoptr i64 %169 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = add i32 %173, 1
  %175 = zext i32 %174 to i64
  store i64 %175, i64* %RAX, align 8, !tbaa !2424
  %176 = icmp eq i32 %173, -1
  %177 = icmp eq i32 %174, 0
  %178 = or i1 %176, %177
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %13, align 1, !tbaa !2429
  %180 = and i32 %174, 255
  %181 = tail call i32 @llvm.ctpop.i32(i32 %180) #9
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  %184 = xor i8 %183, 1
  store i8 %184, i8* %20, align 1, !tbaa !2443
  %185 = xor i32 %174, %173
  %186 = lshr i32 %185, 4
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  store i8 %188, i8* %25, align 1, !tbaa !2447
  %189 = zext i1 %177 to i8
  store i8 %189, i8* %28, align 1, !tbaa !2444
  %190 = lshr i32 %174, 31
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %31, align 1, !tbaa !2445
  %192 = lshr i32 %173, 31
  %193 = xor i32 %190, %192
  %194 = add nuw nsw i32 %193, %190
  %195 = icmp eq i32 %194, 2
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %37, align 1, !tbaa !2446
  %197 = add i64 %170, 9
  store i64 %197, i64* %PC, align 8
  store i32 %174, i32* %172, align 4
  %198 = load i64, i64* %PC, align 8
  %199 = add i64 %198, -68
  store i64 %199, i64* %PC, align 8, !tbaa !2424
  br label %block_400570

block_4005b9:                                     ; preds = %block_400570
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 273), i64* %RDI, align 8, !tbaa !2424
  store i8 0, i8* %AL, align 1, !tbaa !2428
  %200 = add i64 %273, -377
  %201 = add i64 %273, 17
  %202 = load i64, i64* %RSP, align 8, !tbaa !2424
  %203 = add i64 %202, -8
  %204 = inttoptr i64 %203 to i64*
  store i64 %201, i64* %204, align 8
  store i64 %203, i64* %RSP, align 8, !tbaa !2424
  store i64 %200, i64* %PC, align 8, !tbaa !2424
  %205 = tail call fastcc %struct.Memory* @ext_6010b0_printf(%struct.State* nonnull %0, %struct.Memory* %MEMORY.1)
  %206 = load i64, i64* %RBP, align 8
  %207 = add i64 %206, -16
  %208 = load i32, i32* %EAX, align 4
  %209 = load i64, i64* %PC, align 8
  %210 = add i64 %209, 3
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %207 to i32*
  store i32 %208, i32* %211, align 4
  %212 = load i64, i64* %RBP, align 8
  %213 = add i64 %212, -4
  %214 = load i64, i64* %PC, align 8
  %215 = add i64 %214, 3
  store i64 %215, i64* %PC, align 8
  %216 = inttoptr i64 %213 to i32*
  %217 = load i32, i32* %216, align 4
  %218 = add i32 %217, 1
  %219 = zext i32 %218 to i64
  store i64 %219, i64* %RAX, align 8, !tbaa !2424
  %220 = icmp eq i32 %217, -1
  %221 = icmp eq i32 %218, 0
  %222 = or i1 %220, %221
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %13, align 1, !tbaa !2429
  %224 = and i32 %218, 255
  %225 = tail call i32 @llvm.ctpop.i32(i32 %224) #9
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = xor i8 %227, 1
  store i8 %228, i8* %20, align 1, !tbaa !2443
  %229 = xor i32 %218, %217
  %230 = lshr i32 %229, 4
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  store i8 %232, i8* %25, align 1, !tbaa !2447
  %233 = zext i1 %221 to i8
  store i8 %233, i8* %28, align 1, !tbaa !2444
  %234 = lshr i32 %218, 31
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %31, align 1, !tbaa !2445
  %236 = lshr i32 %217, 31
  %237 = xor i32 %234, %236
  %238 = add nuw nsw i32 %237, %234
  %239 = icmp eq i32 %238, 2
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %37, align 1, !tbaa !2446
  %241 = add i64 %214, 9
  store i64 %241, i64* %PC, align 8
  store i32 %218, i32* %216, align 4
  %242 = load i64, i64* %PC, align 8
  %243 = add i64 %242, -119
  store i64 %243, i64* %PC, align 8, !tbaa !2424
  br label %block_40055f

block_400570:                                     ; preds = %block_400569, %block_40057a
  %244 = phi i64 [ %.pre2, %block_400569 ], [ %199, %block_40057a ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400569 ], [ %161, %block_40057a ]
  %245 = load i64, i64* %RBP, align 8
  %246 = add i64 %245, -8
  %247 = add i64 %244, 4
  store i64 %247, i64* %PC, align 8
  %248 = inttoptr i64 %246 to i32*
  %249 = load i32, i32* %248, align 4
  %250 = add i32 %249, -11
  %251 = icmp ult i32 %249, 11
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %13, align 1, !tbaa !2429
  %253 = and i32 %250, 255
  %254 = tail call i32 @llvm.ctpop.i32(i32 %253) #9
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  %257 = xor i8 %256, 1
  store i8 %257, i8* %20, align 1, !tbaa !2443
  %258 = xor i32 %250, %249
  %259 = lshr i32 %258, 4
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  store i8 %261, i8* %25, align 1, !tbaa !2447
  %262 = icmp eq i32 %250, 0
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %28, align 1, !tbaa !2444
  %264 = lshr i32 %250, 31
  %265 = trunc i32 %264 to i8
  store i8 %265, i8* %31, align 1, !tbaa !2445
  %266 = lshr i32 %249, 31
  %267 = xor i32 %264, %266
  %268 = add nuw nsw i32 %267, %266
  %269 = icmp eq i32 %268, 2
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %37, align 1, !tbaa !2446
  %271 = icmp ne i8 %265, 0
  %272 = xor i1 %271, %269
  %.v3 = select i1 %272, i64 10, i64 73
  %273 = add i64 %244, %.v3
  %274 = add i64 %273, 10
  store i64 %274, i64* %PC, align 8
  br i1 %272, label %block_40057a, label %block_4005b9

block_400569:                                     ; preds = %block_40055f
  %275 = add i64 %42, -8
  %276 = add i64 %70, 7
  store i64 %276, i64* %PC, align 8
  %277 = inttoptr i64 %275 to i32*
  store i32 0, i32* %277, align 4
  %.pre2 = load i64, i64* %PC, align 8
  br label %block_400570
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400540_frame_dummy() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400540;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400540_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400540_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400510___do_global_dtors_aux() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400510;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400510___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400510___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6010b0_printf(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6010c8_exit(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_601098_read(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @read to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4008e0___libc_csu_fini() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4008e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_4008e0___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #11 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4008e0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400870___libc_csu_init() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400870;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400870___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400870___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400600;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_400600_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6010c0___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @draw() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400550;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @draw_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400550_draw(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400418;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_400418__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4008e4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_4008e4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_constructor() #9 {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_400870___libc_csu_init()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #9 {
  tail call void @callback_sub_4008e0___libc_csu_fini()
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
attributes #10 = { noinline nounwind }
attributes #11 = { norecurse nounwind }

!llvm.ident = !{!0, !0}
!llvm.dbg.cu = !{!1}
!llvm.module.flags = !{!1255, !1256}

!0 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!1 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !2, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !3, retainedTypes: !67, imports: !70)
!2 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/X86/Runtime/BasicBlock.cpp", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!3 = !{!4, !26, !35, !39, !45, !51, !55, !61}
!4 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Name", scope: !6, file: !5, line: 70, baseType: !8, size: 32, elements: !11, identifier: "_ZTSN14AsyncHyperCall4NameE")
!5 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/Runtime/HyperCall.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AsyncHyperCall", file: !5, line: 68, size: 8, elements: !7, identifier: "_ZTS14AsyncHyperCall")
!7 = !{}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 183, baseType: !10)
!9 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stdint.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
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
!27 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/X86/Runtime/State.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
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
!70 = !{!71, !77, !83, !86, !93, !97, !102, !104, !112, !116, !120, !132, !136, !140, !144, !148, !153, !157, !161, !165, !169, !177, !181, !185, !187, !191, !195, !199, !205, !209, !213, !215, !223, !227, !235, !237, !241, !245, !249, !253, !258, !263, !268, !269, !270, !271, !274, !275, !276, !277, !278, !279, !280, !335, !339, !354, !356, !360, !368, !373, !377, !381, !385, !389, !391, !393, !397, !403, !407, !413, !419, !421, !425, !429, !433, !437, !448, !450, !454, !458, !462, !464, !468, !472, !476, !478, !480, !484, !492, !496, !500, !504, !506, !512, !514, !520, !524, !528, !532, !536, !540, !544, !546, !548, !552, !556, !560, !562, !566, !570, !572, !574, !578, !582, !586, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !604, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !632, !633, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !663, !667, !672, !675, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697, !699, !701, !703, !708, !713, !717, !719, !721, !723, !725, !732, !736, !740, !744, !748, !752, !757, !761, !763, !767, !773, !777, !782, !784, !786, !790, !794, !798, !800, !802, !804, !806, !810, !812, !814, !818, !822, !826, !830, !834, !836, !838, !842, !846, !850, !854, !856, !858, !862, !866, !867, !868, !869, !870, !871, !876, !878, !880, !884, !886, !888, !890, !892, !894, !896, !898, !903, !907, !909, !911, !916, !918, !920, !922, !924, !926, !928, !931, !933, !935, !939, !943, !945, !947, !949, !951, !953, !955, !957, !959, !961, !963, !967, !971, !973, !975, !977, !979, !981, !983, !985, !987, !989, !991, !993, !995, !997, !999, !1001, !1005, !1009, !1013, !1015, !1017, !1019, !1021, !1023, !1025, !1027, !1029, !1031, !1035, !1039, !1043, !1045, !1047, !1049, !1053, !1057, !1061, !1063, !1065, !1067, !1069, !1071, !1073, !1075, !1077, !1079, !1081, !1083, !1085, !1089, !1093, !1097, !1099, !1101, !1103, !1105, !1109, !1113, !1115, !1117, !1119, !1121, !1123, !1125, !1129, !1133, !1135, !1137, !1139, !1141, !1145, !1149, !1153, !1155, !1157, !1159, !1161, !1163, !1165, !1169, !1173, !1177, !1179, !1183, !1187, !1189, !1191, !1193, !1195, !1197, !1199, !1203, !1205, !1208, !1213, !1215, !1221, !1223, !1225, !1227, !1232, !1234, !1240, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254}
!71 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !72, entity: !74, line: 58)
!72 = !DINamespace(name: "__gnu_debug", scope: null, file: !73, line: 56)
!73 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/c++/7.0.1/debug/debug.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!74 = !DINamespace(name: "__debug", scope: !75, file: !73, line: 50)
!75 = !DINamespace(name: "std", scope: null, file: !76, line: 229)
!76 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/x86_64-linux-gnu/c++/7.0.1/bits/c++config.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !78, line: 52)
!78 = !DISubprogram(name: "abs", scope: !79, file: !79, line: 735, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!79 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!80 = !DISubroutineType(types: !81)
!81 = !{!82, !82}
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !84, line: 124)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !79, line: 62, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !87, line: 125)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !79, line: 70, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 66, size: 128, elements: !89, identifier: "_ZTS6ldiv_t")
!89 = !{!90, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !88, file: !79, line: 68, baseType: !91, size: 64)
!91 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !88, file: !79, line: 69, baseType: !91, size: 64, offset: 64)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !94, line: 127)
!94 = !DISubprogram(name: "abort", scope: !79, file: !79, line: 476, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!95 = !DISubroutineType(types: !96)
!96 = !{null}
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !98, line: 128)
!98 = !DISubprogram(name: "atexit", scope: !79, file: !79, line: 480, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!99 = !DISubroutineType(types: !100)
!100 = !{!82, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !103, line: 131)
!103 = !DISubprogram(name: "at_quick_exit", scope: !79, file: !79, line: 485, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !105, line: 134)
!105 = !DISubprogram(name: "atof", scope: !79, file: !79, line: 105, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !109}
!108 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !113, line: 135)
!113 = !DISubprogram(name: "atoi", scope: !79, file: !79, line: 108, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!114 = !DISubroutineType(types: !115)
!115 = !{!82, !109}
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !117, line: 136)
!117 = !DISubprogram(name: "atol", scope: !79, file: !79, line: 111, type: !118, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!118 = !DISubroutineType(types: !119)
!119 = !{!91, !109}
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !121, line: 137)
!121 = !DISubprogram(name: "bsearch", scope: !79, file: !79, line: 715, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !68, !68, !125, !125, !128}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 62, baseType: !127)
!126 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!127 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !79, line: 702, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!82, !68, !68}
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !133, line: 138)
!133 = !DISubprogram(name: "calloc", scope: !79, file: !79, line: 429, type: !134, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!134 = !DISubroutineType(types: !135)
!135 = !{!124, !125, !125}
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !137, line: 139)
!137 = !DISubprogram(name: "div", scope: !79, file: !79, line: 749, type: !138, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!138 = !DISubroutineType(types: !139)
!139 = !{!84, !82, !82}
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !141, line: 140)
!141 = !DISubprogram(name: "exit", scope: !79, file: !79, line: 504, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !82}
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !145, line: 141)
!145 = !DISubprogram(name: "free", scope: !79, file: !79, line: 444, type: !146, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !124}
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !149, line: 142)
!149 = !DISubprogram(name: "getenv", scope: !79, file: !79, line: 525, type: !150, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !109}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !154, line: 143)
!154 = !DISubprogram(name: "labs", scope: !79, file: !79, line: 736, type: !155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DISubroutineType(types: !156)
!156 = !{!91, !91}
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !158, line: 144)
!158 = !DISubprogram(name: "ldiv", scope: !79, file: !79, line: 751, type: !159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DISubroutineType(types: !160)
!160 = !{!87, !91, !91}
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !162, line: 145)
!162 = !DISubprogram(name: "malloc", scope: !79, file: !79, line: 427, type: !163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DISubroutineType(types: !164)
!164 = !{!124, !125}
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !166, line: 147)
!166 = !DISubprogram(name: "mblen", scope: !79, file: !79, line: 823, type: !167, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DISubroutineType(types: !168)
!168 = !{!82, !109, !125}
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !170, line: 148)
!170 = !DISubprogram(name: "mbstowcs", scope: !79, file: !79, line: 834, type: !171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DISubroutineType(types: !172)
!172 = !{!125, !173, !176, !125}
!173 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!176 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !109)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !178, line: 149)
!178 = !DISubprogram(name: "mbtowc", scope: !79, file: !79, line: 826, type: !179, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DISubroutineType(types: !180)
!180 = !{!82, !173, !176, !125}
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !182, line: 151)
!182 = !DISubprogram(name: "qsort", scope: !79, file: !79, line: 725, type: !183, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !124, !125, !125, !128}
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !186, line: 154)
!186 = !DISubprogram(name: "quick_exit", scope: !79, file: !79, line: 510, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !188, line: 157)
!188 = !DISubprogram(name: "rand", scope: !79, file: !79, line: 335, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DISubroutineType(types: !190)
!190 = !{!82}
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !192, line: 158)
!192 = !DISubprogram(name: "realloc", scope: !79, file: !79, line: 441, type: !193, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DISubroutineType(types: !194)
!194 = !{!124, !124, !125}
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !196, line: 159)
!196 = !DISubprogram(name: "srand", scope: !79, file: !79, line: 337, type: !197, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !10}
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !200, line: 160)
!200 = !DISubprogram(name: "strtod", scope: !79, file: !79, line: 125, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{!108, !176, !203}
!203 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !206, line: 161)
!206 = !DISubprogram(name: "strtol", scope: !79, file: !79, line: 144, type: !207, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!207 = !DISubroutineType(types: !208)
!208 = !{!91, !176, !203, !82}
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !210, line: 162)
!210 = !DISubprogram(name: "strtoul", scope: !79, file: !79, line: 148, type: !211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DISubroutineType(types: !212)
!212 = !{!127, !176, !203, !82}
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !214, line: 163)
!214 = !DISubprogram(name: "system", scope: !79, file: !79, line: 677, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !216, line: 165)
!216 = !DISubprogram(name: "wcstombs", scope: !79, file: !79, line: 837, type: !217, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!217 = !DISubroutineType(types: !218)
!218 = !{!125, !219, !220, !125}
!219 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !152)
!220 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !224, line: 166)
!224 = !DISubprogram(name: "wctomb", scope: !79, file: !79, line: 830, type: !225, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!225 = !DISubroutineType(types: !226)
!226 = !{!82, !152, !175}
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !229, line: 194)
!228 = !DINamespace(name: "__gnu_cxx", scope: null, file: !76, line: 255)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !79, line: 82, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 78, size: 128, elements: !231, identifier: "_ZTS7lldiv_t")
!231 = !{!232, !234}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !230, file: !79, line: 80, baseType: !233, size: 64)
!233 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !230, file: !79, line: 81, baseType: !233, size: 64, offset: 64)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !236, line: 200)
!236 = !DISubprogram(name: "_Exit", scope: !79, file: !79, line: 518, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !238, line: 204)
!238 = !DISubprogram(name: "llabs", scope: !79, file: !79, line: 740, type: !239, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!239 = !DISubroutineType(types: !240)
!240 = !{!233, !233}
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !242, line: 210)
!242 = !DISubprogram(name: "lldiv", scope: !79, file: !79, line: 757, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!243 = !DISubroutineType(types: !244)
!244 = !{!229, !233, !233}
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !246, line: 221)
!246 = !DISubprogram(name: "atoll", scope: !79, file: !79, line: 118, type: !247, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!247 = !DISubroutineType(types: !248)
!248 = !{!233, !109}
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !250, line: 222)
!250 = !DISubprogram(name: "strtoll", scope: !79, file: !79, line: 170, type: !251, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!251 = !DISubroutineType(types: !252)
!252 = !{!233, !176, !203, !82}
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !254, line: 223)
!254 = !DISubprogram(name: "strtoull", scope: !79, file: !79, line: 175, type: !255, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!255 = !DISubroutineType(types: !256)
!256 = !{!257, !176, !203, !82}
!257 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !259, line: 225)
!259 = !DISubprogram(name: "strtof", scope: !79, file: !79, line: 133, type: !260, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !176, !203}
!262 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !264, line: 226)
!264 = !DISubprogram(name: "strtold", scope: !79, file: !79, line: 136, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!265 = !DISubroutineType(types: !266)
!266 = !{!267, !176, !203}
!267 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !229, line: 234)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !236, line: 236)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !238, line: 238)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !272, line: 239)
!272 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !228, file: !273, line: 207, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!273 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/c++/7.0.1/cstdlib", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !242, line: 240)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !246, line: 242)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !259, line: 243)
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !250, line: 244)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !254, line: 245)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !264, line: 246)
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !281, line: 57)
!281 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !283, file: !282, line: 79, size: 64, elements: !284, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!282 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/c++/7.0.1/bits/exception_ptr.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
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
!334 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/c++/7.0.1/typeinfo", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !283, entity: !336, line: 73)
!336 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !75, file: !282, line: 69, type: !337, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !281}
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !340, line: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !341, line: 106, baseType: !342)
!341 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !341, line: 94, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !341, line: 82, size: 64, elements: !344, identifier: "_ZTS11__mbstate_t")
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !343, file: !341, line: 84, baseType: !82, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !343, file: !341, line: 93, baseType: !347, size: 32, offset: 32)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !341, line: 85, size: 32, elements: !348, identifier: "_ZTSN11__mbstate_tUt_E")
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !347, file: !341, line: 88, baseType: !10, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !347, file: !341, line: 92, baseType: !351, size: 32)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 32, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 4)
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !355, line: 139)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !126, line: 132, baseType: !10)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !357, line: 141)
!357 = !DISubprogram(name: "btowc", scope: !341, file: !341, line: 356, type: !358, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!358 = !DISubroutineType(types: !359)
!359 = !{!355, !82}
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !361, line: 142)
!361 = !DISubprogram(name: "fgetwc", scope: !341, file: !341, line: 748, type: !362, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!362 = !DISubroutineType(types: !363)
!363 = !{!355, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !366, line: 64, baseType: !367)
!366 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !366, line: 44, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !369, line: 143)
!369 = !DISubprogram(name: "fgetws", scope: !341, file: !341, line: 777, type: !370, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!370 = !DISubroutineType(types: !371)
!371 = !{!174, !173, !82, !372}
!372 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !364)
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !374, line: 144)
!374 = !DISubprogram(name: "fputwc", scope: !341, file: !341, line: 762, type: !375, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!375 = !DISubroutineType(types: !376)
!376 = !{!355, !175, !364}
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !378, line: 145)
!378 = !DISubprogram(name: "fputws", scope: !341, file: !341, line: 784, type: !379, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!379 = !DISubroutineType(types: !380)
!380 = !{!82, !220, !372}
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !382, line: 146)
!382 = !DISubprogram(name: "fwide", scope: !341, file: !341, line: 590, type: !383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!383 = !DISubroutineType(types: !384)
!384 = !{!82, !364, !82}
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !386, line: 147)
!386 = !DISubprogram(name: "fwprintf", scope: !341, file: !341, line: 597, type: !387, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!387 = !DISubroutineType(types: !388)
!388 = !{!82, !372, !220, null}
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !390, line: 148)
!390 = !DISubprogram(name: "fwscanf", scope: !341, file: !341, line: 638, type: !387, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !392, line: 149)
!392 = !DISubprogram(name: "getwc", scope: !341, file: !341, line: 749, type: !362, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !394, line: 150)
!394 = !DISubprogram(name: "getwchar", scope: !341, file: !341, line: 755, type: !395, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!395 = !DISubroutineType(types: !396)
!396 = !{!355}
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !398, line: 151)
!398 = !DISubprogram(name: "mbrlen", scope: !341, file: !341, line: 379, type: !399, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!399 = !DISubroutineType(types: !400)
!400 = !{!125, !176, !125, !401}
!401 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !404, line: 152)
!404 = !DISubprogram(name: "mbrtowc", scope: !341, file: !341, line: 368, type: !405, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!405 = !DISubroutineType(types: !406)
!406 = !{!125, !173, !176, !125, !401}
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !408, line: 153)
!408 = !DISubprogram(name: "mbsinit", scope: !341, file: !341, line: 364, type: !409, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!409 = !DISubroutineType(types: !410)
!410 = !{!82, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !414, line: 154)
!414 = !DISubprogram(name: "mbsrtowcs", scope: !341, file: !341, line: 411, type: !415, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!415 = !DISubroutineType(types: !416)
!416 = !{!125, !173, !417, !125, !401}
!417 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !420, line: 155)
!420 = !DISubprogram(name: "putwc", scope: !341, file: !341, line: 763, type: !375, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !422, line: 156)
!422 = !DISubprogram(name: "putwchar", scope: !341, file: !341, line: 769, type: !423, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!423 = !DISubroutineType(types: !424)
!424 = !{!355, !175}
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !426, line: 158)
!426 = !DISubprogram(name: "swprintf", scope: !341, file: !341, line: 607, type: !427, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!427 = !DISubroutineType(types: !428)
!428 = !{!82, !173, !125, !220, null}
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !430, line: 160)
!430 = !DISubprogram(name: "swscanf", scope: !341, file: !341, line: 648, type: !431, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!431 = !DISubroutineType(types: !432)
!432 = !{!82, !220, !220, null}
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !434, line: 161)
!434 = !DISubprogram(name: "ungetwc", scope: !341, file: !341, line: 792, type: !435, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!435 = !DISubroutineType(types: !436)
!436 = !{!355, !355, !364}
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !438, line: 162)
!438 = !DISubprogram(name: "vfwprintf", scope: !341, file: !341, line: 615, type: !439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!439 = !DISubroutineType(types: !440)
!440 = !{!82, !372, !220, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !2, size: 192, elements: !443, identifier: "_ZTS13__va_list_tag")
!443 = !{!444, !445, !446, !447}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !442, file: !2, baseType: !10, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !442, file: !2, baseType: !10, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !442, file: !2, baseType: !124, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !442, file: !2, baseType: !124, size: 64, offset: 128)
!448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !449, line: 164)
!449 = !DISubprogram(name: "vfwscanf", scope: !341, file: !341, line: 692, type: !439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !451, line: 167)
!451 = !DISubprogram(name: "vswprintf", scope: !341, file: !341, line: 628, type: !452, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!452 = !DISubroutineType(types: !453)
!453 = !{!82, !173, !125, !220, !441}
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !455, line: 170)
!455 = !DISubprogram(name: "vswscanf", scope: !341, file: !341, line: 704, type: !456, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!456 = !DISubroutineType(types: !457)
!457 = !{!82, !220, !220, !441}
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !459, line: 172)
!459 = !DISubprogram(name: "vwprintf", scope: !341, file: !341, line: 623, type: !460, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!460 = !DISubroutineType(types: !461)
!461 = !{!82, !220, !441}
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !463, line: 174)
!463 = !DISubprogram(name: "vwscanf", scope: !341, file: !341, line: 700, type: !460, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !465, line: 176)
!465 = !DISubprogram(name: "wcrtomb", scope: !341, file: !341, line: 373, type: !466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!466 = !DISubroutineType(types: !467)
!467 = !{!125, !219, !175, !401}
!468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !469, line: 177)
!469 = !DISubprogram(name: "wcscat", scope: !341, file: !341, line: 157, type: !470, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!470 = !DISubroutineType(types: !471)
!471 = !{!174, !173, !220}
!472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !473, line: 178)
!473 = !DISubprogram(name: "wcscmp", scope: !341, file: !341, line: 166, type: !474, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!474 = !DISubroutineType(types: !475)
!475 = !{!82, !221, !221}
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !477, line: 179)
!477 = !DISubprogram(name: "wcscoll", scope: !341, file: !341, line: 195, type: !474, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !479, line: 180)
!479 = !DISubprogram(name: "wcscpy", scope: !341, file: !341, line: 147, type: !470, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !481, line: 181)
!481 = !DISubprogram(name: "wcscspn", scope: !341, file: !341, line: 255, type: !482, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!482 = !DISubroutineType(types: !483)
!483 = !{!125, !221, !221}
!484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !485, line: 182)
!485 = !DISubprogram(name: "wcsftime", scope: !341, file: !341, line: 858, type: !486, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!486 = !DISubroutineType(types: !487)
!487 = !{!125, !173, !125, !220, !488}
!488 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !341, line: 137, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !493, line: 183)
!493 = !DISubprogram(name: "wcslen", scope: !341, file: !341, line: 290, type: !494, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!494 = !DISubroutineType(types: !495)
!495 = !{!125, !221}
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !497, line: 184)
!497 = !DISubprogram(name: "wcsncat", scope: !341, file: !341, line: 161, type: !498, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!498 = !DISubroutineType(types: !499)
!499 = !{!174, !173, !220, !125}
!500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !501, line: 185)
!501 = !DISubprogram(name: "wcsncmp", scope: !341, file: !341, line: 169, type: !502, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!502 = !DISubroutineType(types: !503)
!503 = !{!82, !221, !221, !125}
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !505, line: 186)
!505 = !DISubprogram(name: "wcsncpy", scope: !341, file: !341, line: 152, type: !498, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !507, line: 187)
!507 = !DISubprogram(name: "wcsrtombs", scope: !341, file: !341, line: 417, type: !508, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!508 = !DISubroutineType(types: !509)
!509 = !{!125, !219, !510, !125, !401}
!510 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !513, line: 188)
!513 = !DISubprogram(name: "wcsspn", scope: !341, file: !341, line: 259, type: !482, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !515, line: 189)
!515 = !DISubprogram(name: "wcstod", scope: !341, file: !341, line: 453, type: !516, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!516 = !DISubroutineType(types: !517)
!517 = !{!108, !220, !518}
!518 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !521, line: 191)
!521 = !DISubprogram(name: "wcstof", scope: !341, file: !341, line: 460, type: !522, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!522 = !DISubroutineType(types: !523)
!523 = !{!262, !220, !518}
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !525, line: 193)
!525 = !DISubprogram(name: "wcstok", scope: !341, file: !341, line: 285, type: !526, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!526 = !DISubroutineType(types: !527)
!527 = !{!174, !173, !220, !518}
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !529, line: 194)
!529 = !DISubprogram(name: "wcstol", scope: !341, file: !341, line: 471, type: !530, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!530 = !DISubroutineType(types: !531)
!531 = !{!91, !220, !518, !82}
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !533, line: 195)
!533 = !DISubprogram(name: "wcstoul", scope: !341, file: !341, line: 476, type: !534, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!534 = !DISubroutineType(types: !535)
!535 = !{!127, !220, !518, !82}
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !537, line: 196)
!537 = !DISubprogram(name: "wcsxfrm", scope: !341, file: !341, line: 199, type: !538, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!538 = !DISubroutineType(types: !539)
!539 = !{!125, !173, !220, !125}
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !541, line: 197)
!541 = !DISubprogram(name: "wctob", scope: !341, file: !341, line: 360, type: !542, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!542 = !DISubroutineType(types: !543)
!543 = !{!82, !355}
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !545, line: 198)
!545 = !DISubprogram(name: "wmemcmp", scope: !341, file: !341, line: 328, type: !502, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !547, line: 199)
!547 = !DISubprogram(name: "wmemcpy", scope: !341, file: !341, line: 332, type: !498, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !549, line: 200)
!549 = !DISubprogram(name: "wmemmove", scope: !341, file: !341, line: 337, type: !550, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!550 = !DISubroutineType(types: !551)
!551 = !{!174, !174, !221, !125}
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !553, line: 201)
!553 = !DISubprogram(name: "wmemset", scope: !341, file: !341, line: 341, type: !554, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!554 = !DISubroutineType(types: !555)
!555 = !{!174, !174, !175, !125}
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !557, line: 202)
!557 = !DISubprogram(name: "wprintf", scope: !341, file: !341, line: 604, type: !558, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!558 = !DISubroutineType(types: !559)
!559 = !{!82, !220, null}
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !561, line: 203)
!561 = !DISubprogram(name: "wscanf", scope: !341, file: !341, line: 645, type: !558, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !563, line: 204)
!563 = !DISubprogram(name: "wcschr", scope: !341, file: !341, line: 230, type: !564, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!564 = !DISubroutineType(types: !565)
!565 = !{!174, !221, !175}
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !567, line: 205)
!567 = !DISubprogram(name: "wcspbrk", scope: !341, file: !341, line: 269, type: !568, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!568 = !DISubroutineType(types: !569)
!569 = !{!174, !221, !221}
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !571, line: 206)
!571 = !DISubprogram(name: "wcsrchr", scope: !341, file: !341, line: 240, type: !564, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !573, line: 207)
!573 = !DISubprogram(name: "wcsstr", scope: !341, file: !341, line: 280, type: !568, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !575, line: 208)
!575 = !DISubprogram(name: "wmemchr", scope: !341, file: !341, line: 323, type: !576, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!576 = !DISubroutineType(types: !577)
!577 = !{!174, !221, !175, !125}
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !579, line: 248)
!579 = !DISubprogram(name: "wcstold", scope: !341, file: !341, line: 462, type: !580, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!580 = !DISubroutineType(types: !581)
!581 = !{!267, !220, !518}
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !583, line: 257)
!583 = !DISubprogram(name: "wcstoll", scope: !341, file: !341, line: 486, type: !584, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!584 = !DISubroutineType(types: !585)
!585 = !{!233, !220, !518, !82}
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !587, line: 258)
!587 = !DISubprogram(name: "wcstoull", scope: !341, file: !341, line: 493, type: !588, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!588 = !DISubroutineType(types: !589)
!589 = !{!257, !220, !518, !82}
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !579, line: 264)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !583, line: 265)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !587, line: 266)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !521, line: 280)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !449, line: 283)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !455, line: 286)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !463, line: 289)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !579, line: 293)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !583, line: 294)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !587, line: 295)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !601, line: 48)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !602, line: 194, baseType: !603)
!602 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!603 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !605, line: 49)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !602, line: 195, baseType: !606)
!606 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !608, line: 50)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !602, line: 196, baseType: !82)
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !610, line: 51)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !602, line: 197, baseType: !91)
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !612, line: 53)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !9, line: 245, baseType: !601)
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !614, line: 54)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !9, line: 228, baseType: !605)
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !616, line: 55)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !9, line: 197, baseType: !608)
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !618, line: 56)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !9, line: 123, baseType: !610)
!619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !620, line: 58)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !9, line: 243, baseType: !601)
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !622, line: 59)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !9, line: 226, baseType: !605)
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !624, line: 60)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !9, line: 195, baseType: !608)
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !626, line: 61)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !9, line: 121, baseType: !610)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !628, line: 63)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !9, line: 276, baseType: !91)
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !630, line: 64)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !9, line: 263, baseType: !610)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !62, line: 66)
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !28, line: 67)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !8, line: 68)
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !635, line: 69)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 109, baseType: !127)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !637, line: 71)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !9, line: 246, baseType: !62)
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !639, line: 72)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !9, line: 229, baseType: !28)
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !641, line: 73)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !9, line: 198, baseType: !8)
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !643, line: 74)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !9, line: 124, baseType: !635)
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !645, line: 76)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !9, line: 244, baseType: !62)
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !647, line: 77)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !9, line: 227, baseType: !28)
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !649, line: 78)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !9, line: 196, baseType: !8)
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !651, line: 79)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !9, line: 122, baseType: !635)
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !653, line: 81)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !9, line: 277, baseType: !127)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !655, line: 82)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !9, line: 270, baseType: !635)
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !657, line: 44)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !75, file: !76, line: 231, baseType: !127)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !659, line: 45)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !75, file: !76, line: 232, baseType: !91)
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !661, line: 53)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !662, line: 53, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!662 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !664, line: 54)
!664 = !DISubprogram(name: "setlocale", scope: !662, file: !662, line: 124, type: !665, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!665 = !DISubroutineType(types: !666)
!666 = !{!152, !82, !109}
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !668, line: 55)
!668 = !DISubprogram(name: "localeconv", scope: !662, file: !662, line: 127, type: !669, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!669 = !DISubroutineType(types: !670)
!670 = !{!671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !673, line: 64)
!673 = !DISubprogram(name: "isalnum", scope: !674, file: !674, line: 110, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!674 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !676, line: 65)
!676 = !DISubprogram(name: "isalpha", scope: !674, file: !674, line: 111, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !678, line: 66)
!678 = !DISubprogram(name: "iscntrl", scope: !674, file: !674, line: 112, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !680, line: 67)
!680 = !DISubprogram(name: "isdigit", scope: !674, file: !674, line: 113, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !682, line: 68)
!682 = !DISubprogram(name: "isgraph", scope: !674, file: !674, line: 115, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !684, line: 69)
!684 = !DISubprogram(name: "islower", scope: !674, file: !674, line: 114, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !686, line: 70)
!686 = !DISubprogram(name: "isprint", scope: !674, file: !674, line: 116, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !688, line: 71)
!688 = !DISubprogram(name: "ispunct", scope: !674, file: !674, line: 117, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !690, line: 72)
!690 = !DISubprogram(name: "isspace", scope: !674, file: !674, line: 118, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !692, line: 73)
!692 = !DISubprogram(name: "isupper", scope: !674, file: !674, line: 119, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !694, line: 74)
!694 = !DISubprogram(name: "isxdigit", scope: !674, file: !674, line: 120, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !696, line: 75)
!696 = !DISubprogram(name: "tolower", scope: !674, file: !674, line: 124, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !698, line: 76)
!698 = !DISubprogram(name: "toupper", scope: !674, file: !674, line: 127, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !700, line: 87)
!700 = !DISubprogram(name: "isblank", scope: !674, file: !674, line: 136, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !702, line: 98)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !366, line: 48, baseType: !367)
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !704, line: 99)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !366, line: 112, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !706, line: 25, baseType: !707)
!706 = !DIFile(filename: "/usr/include/_G_config.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !706, line: 21, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !709, line: 101)
!709 = !DISubprogram(name: "clearerr", scope: !366, file: !366, line: 828, type: !710, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !712}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !714, line: 102)
!714 = !DISubprogram(name: "fclose", scope: !366, file: !366, line: 239, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!715 = !DISubroutineType(types: !716)
!716 = !{!82, !712}
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !718, line: 103)
!718 = !DISubprogram(name: "feof", scope: !366, file: !366, line: 830, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !720, line: 104)
!720 = !DISubprogram(name: "ferror", scope: !366, file: !366, line: 832, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !722, line: 105)
!722 = !DISubprogram(name: "fflush", scope: !366, file: !366, line: 244, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !724, line: 106)
!724 = !DISubprogram(name: "fgetc", scope: !366, file: !366, line: 533, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !726, line: 107)
!726 = !DISubprogram(name: "fgetpos", scope: !366, file: !366, line: 800, type: !727, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!727 = !DISubroutineType(types: !728)
!728 = !{!82, !729, !730}
!729 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !712)
!730 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !733, line: 108)
!733 = !DISubprogram(name: "fgets", scope: !366, file: !366, line: 624, type: !734, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!734 = !DISubroutineType(types: !735)
!735 = !{!152, !219, !82, !729}
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !737, line: 109)
!737 = !DISubprogram(name: "fopen", scope: !366, file: !366, line: 274, type: !738, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!738 = !DISubroutineType(types: !739)
!739 = !{!712, !176, !176}
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !741, line: 110)
!741 = !DISubprogram(name: "fprintf", scope: !366, file: !366, line: 358, type: !742, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!742 = !DISubroutineType(types: !743)
!743 = !{!82, !729, !176, null}
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !745, line: 111)
!745 = !DISubprogram(name: "fputc", scope: !366, file: !366, line: 575, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!746 = !DISubroutineType(types: !747)
!747 = !{!82, !82, !712}
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !749, line: 112)
!749 = !DISubprogram(name: "fputs", scope: !366, file: !366, line: 691, type: !750, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!750 = !DISubroutineType(types: !751)
!751 = !{!82, !176, !729}
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !753, line: 113)
!753 = !DISubprogram(name: "fread", scope: !366, file: !366, line: 711, type: !754, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!754 = !DISubroutineType(types: !755)
!755 = !{!125, !756, !125, !125, !729}
!756 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !124)
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !758, line: 114)
!758 = !DISubprogram(name: "freopen", scope: !366, file: !366, line: 280, type: !759, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!759 = !DISubroutineType(types: !760)
!760 = !{!712, !176, !176, !729}
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !762, line: 115)
!762 = !DISubprogram(name: "fscanf", scope: !366, file: !366, line: 427, type: !742, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !764, line: 116)
!764 = !DISubprogram(name: "fseek", scope: !366, file: !366, line: 751, type: !765, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!765 = !DISubroutineType(types: !766)
!766 = !{!82, !712, !91, !82}
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !768, line: 117)
!768 = !DISubprogram(name: "fsetpos", scope: !366, file: !366, line: 805, type: !769, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!769 = !DISubroutineType(types: !770)
!770 = !{!82, !712, !771}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !774, line: 118)
!774 = !DISubprogram(name: "ftell", scope: !366, file: !366, line: 756, type: !775, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!775 = !DISubroutineType(types: !776)
!776 = !{!91, !712}
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !778, line: 119)
!778 = !DISubprogram(name: "fwrite", scope: !366, file: !366, line: 717, type: !779, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!779 = !DISubroutineType(types: !780)
!780 = !{!125, !781, !125, !125, !729}
!781 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !783, line: 120)
!783 = !DISubprogram(name: "getc", scope: !366, file: !366, line: 534, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !785, line: 121)
!785 = !DISubprogram(name: "getchar", scope: !366, file: !366, line: 540, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !787, line: 124)
!787 = !DISubprogram(name: "gets", scope: !366, file: !366, line: 640, type: !788, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!788 = !DISubroutineType(types: !789)
!789 = !{!152, !152}
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !791, line: 126)
!791 = !DISubprogram(name: "perror", scope: !366, file: !366, line: 848, type: !792, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !109}
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !795, line: 127)
!795 = !DISubprogram(name: "printf", scope: !366, file: !366, line: 364, type: !796, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!796 = !DISubroutineType(types: !797)
!797 = !{!82, !176, null}
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !799, line: 128)
!799 = !DISubprogram(name: "putc", scope: !366, file: !366, line: 576, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !801, line: 129)
!801 = !DISubprogram(name: "putchar", scope: !366, file: !366, line: 582, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !803, line: 130)
!803 = !DISubprogram(name: "puts", scope: !366, file: !366, line: 697, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !805, line: 131)
!805 = !DISubprogram(name: "remove", scope: !366, file: !366, line: 180, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !807, line: 132)
!807 = !DISubprogram(name: "rename", scope: !366, file: !366, line: 182, type: !808, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!808 = !DISubroutineType(types: !809)
!809 = !{!82, !109, !109}
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !811, line: 133)
!811 = !DISubprogram(name: "rewind", scope: !366, file: !366, line: 761, type: !710, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !813, line: 134)
!813 = !DISubprogram(name: "scanf", scope: !366, file: !366, line: 433, type: !796, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !815, line: 135)
!815 = !DISubprogram(name: "setbuf", scope: !366, file: !366, line: 334, type: !816, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !729, !219}
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !819, line: 136)
!819 = !DISubprogram(name: "setvbuf", scope: !366, file: !366, line: 338, type: !820, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!820 = !DISubroutineType(types: !821)
!821 = !{!82, !729, !219, !82, !125}
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !823, line: 137)
!823 = !DISubprogram(name: "sprintf", scope: !366, file: !366, line: 366, type: !824, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!824 = !DISubroutineType(types: !825)
!825 = !{!82, !219, !176, null}
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !827, line: 138)
!827 = !DISubprogram(name: "sscanf", scope: !366, file: !366, line: 435, type: !828, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!828 = !DISubroutineType(types: !829)
!829 = !{!82, !176, !176, null}
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !831, line: 139)
!831 = !DISubprogram(name: "tmpfile", scope: !366, file: !366, line: 197, type: !832, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!832 = !DISubroutineType(types: !833)
!833 = !{!712}
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !835, line: 141)
!835 = !DISubprogram(name: "tmpnam", scope: !366, file: !366, line: 211, type: !788, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !837, line: 143)
!837 = !DISubprogram(name: "ungetc", scope: !366, file: !366, line: 704, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !839, line: 144)
!839 = !DISubprogram(name: "vfprintf", scope: !366, file: !366, line: 373, type: !840, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!840 = !DISubroutineType(types: !841)
!841 = !{!82, !729, !176, !441}
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !843, line: 145)
!843 = !DISubprogram(name: "vprintf", scope: !366, file: !366, line: 379, type: !844, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!844 = !DISubroutineType(types: !845)
!845 = !{!82, !176, !441}
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !847, line: 146)
!847 = !DISubprogram(name: "vsprintf", scope: !366, file: !366, line: 381, type: !848, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!848 = !DISubroutineType(types: !849)
!849 = !{!82, !219, !176, !441}
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !851, line: 175)
!851 = !DISubprogram(name: "snprintf", scope: !366, file: !366, line: 388, type: !852, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!852 = !DISubroutineType(types: !853)
!853 = !{!82, !219, !125, !176, null}
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !855, line: 176)
!855 = !DISubprogram(name: "vfscanf", scope: !366, file: !366, line: 473, type: !840, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !857, line: 177)
!857 = !DISubprogram(name: "vscanf", scope: !366, file: !366, line: 481, type: !844, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !859, line: 178)
!859 = !DISubprogram(name: "vsnprintf", scope: !366, file: !366, line: 392, type: !860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!860 = !DISubroutineType(types: !861)
!861 = !{!82, !219, !125, !176, !441}
!862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !863, line: 179)
!863 = !DISubprogram(name: "vsscanf", scope: !366, file: !366, line: 485, type: !864, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!864 = !DISubroutineType(types: !865)
!865 = !{!82, !176, !176, !441}
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !851, line: 185)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !855, line: 186)
!868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !857, line: 187)
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !859, line: 188)
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !863, line: 189)
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !872, line: 83)
!872 = !DISubprogram(name: "acos", scope: !873, file: !873, line: 54, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!873 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!874 = !DISubroutineType(types: !875)
!875 = !{!108, !108}
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !877, line: 102)
!877 = !DISubprogram(name: "asin", scope: !873, file: !873, line: 56, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !879, line: 121)
!879 = !DISubprogram(name: "atan", scope: !873, file: !873, line: 58, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !881, line: 140)
!881 = !DISubprogram(name: "atan2", scope: !873, file: !873, line: 60, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!882 = !DISubroutineType(types: !883)
!883 = !{!108, !108, !108}
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !885, line: 161)
!885 = !DISubprogram(name: "ceil", scope: !873, file: !873, line: 178, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !887, line: 180)
!887 = !DISubprogram(name: "cos", scope: !873, file: !873, line: 63, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !889, line: 199)
!889 = !DISubprogram(name: "cosh", scope: !873, file: !873, line: 72, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !891, line: 218)
!891 = !DISubprogram(name: "exp", scope: !873, file: !873, line: 100, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !893, line: 237)
!893 = !DISubprogram(name: "fabs", scope: !873, file: !873, line: 181, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !895, line: 256)
!895 = !DISubprogram(name: "floor", scope: !873, file: !873, line: 184, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !897, line: 275)
!897 = !DISubprogram(name: "fmod", scope: !873, file: !873, line: 187, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !899, line: 296)
!899 = !DISubprogram(name: "frexp", scope: !873, file: !873, line: 103, type: !900, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!900 = !DISubroutineType(types: !901)
!901 = !{!108, !108, !902}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !904, line: 315)
!904 = !DISubprogram(name: "ldexp", scope: !873, file: !873, line: 106, type: !905, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!905 = !DISubroutineType(types: !906)
!906 = !{!108, !108, !82}
!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !908, line: 334)
!908 = !DISubprogram(name: "log", scope: !873, file: !873, line: 109, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !910, line: 353)
!910 = !DISubprogram(name: "log10", scope: !873, file: !873, line: 112, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !912, line: 372)
!912 = !DISubprogram(name: "modf", scope: !873, file: !873, line: 115, type: !913, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!913 = !DISubroutineType(types: !914)
!914 = !{!108, !108, !915}
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!916 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !917, line: 384)
!917 = !DISubprogram(name: "pow", scope: !873, file: !873, line: 153, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !919, line: 421)
!919 = !DISubprogram(name: "sin", scope: !873, file: !873, line: 65, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !921, line: 440)
!921 = !DISubprogram(name: "sinh", scope: !873, file: !873, line: 74, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !923, line: 459)
!923 = !DISubprogram(name: "sqrt", scope: !873, file: !873, line: 156, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !925, line: 478)
!925 = !DISubprogram(name: "tan", scope: !873, file: !873, line: 67, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !927, line: 497)
!927 = !DISubprogram(name: "tanh", scope: !873, file: !873, line: 76, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !929, line: 1080)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !930, line: 29, baseType: !108)
!930 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathdef.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !932, line: 1081)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !930, line: 28, baseType: !262)
!933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !934, line: 1084)
!934 = !DISubprogram(name: "acosh", scope: !873, file: !873, line: 88, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !936, line: 1085)
!936 = !DISubprogram(name: "acoshf", scope: !873, file: !873, line: 88, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!937 = !DISubroutineType(types: !938)
!938 = !{!262, !262}
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !940, line: 1086)
!940 = !DISubprogram(name: "acoshl", scope: !873, file: !873, line: 88, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!941 = !DISubroutineType(types: !942)
!942 = !{!267, !267}
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !944, line: 1088)
!944 = !DISubprogram(name: "asinh", scope: !873, file: !873, line: 90, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !946, line: 1089)
!946 = !DISubprogram(name: "asinhf", scope: !873, file: !873, line: 90, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !948, line: 1090)
!948 = !DISubprogram(name: "asinhl", scope: !873, file: !873, line: 90, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !950, line: 1092)
!950 = !DISubprogram(name: "atanh", scope: !873, file: !873, line: 92, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !952, line: 1093)
!952 = !DISubprogram(name: "atanhf", scope: !873, file: !873, line: 92, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !954, line: 1094)
!954 = !DISubprogram(name: "atanhl", scope: !873, file: !873, line: 92, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !956, line: 1096)
!956 = !DISubprogram(name: "cbrt", scope: !873, file: !873, line: 169, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !958, line: 1097)
!958 = !DISubprogram(name: "cbrtf", scope: !873, file: !873, line: 169, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !960, line: 1098)
!960 = !DISubprogram(name: "cbrtl", scope: !873, file: !873, line: 169, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !962, line: 1100)
!962 = !DISubprogram(name: "copysign", scope: !873, file: !873, line: 221, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !964, line: 1101)
!964 = !DISubprogram(name: "copysignf", scope: !873, file: !873, line: 221, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!965 = !DISubroutineType(types: !966)
!966 = !{!262, !262, !262}
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !968, line: 1102)
!968 = !DISubprogram(name: "copysignl", scope: !873, file: !873, line: 221, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!969 = !DISubroutineType(types: !970)
!970 = !{!267, !267, !267}
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !972, line: 1104)
!972 = !DISubprogram(name: "erf", scope: !873, file: !873, line: 259, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !974, line: 1105)
!974 = !DISubprogram(name: "erff", scope: !873, file: !873, line: 259, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !976, line: 1106)
!976 = !DISubprogram(name: "erfl", scope: !873, file: !873, line: 259, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !978, line: 1108)
!978 = !DISubprogram(name: "erfc", scope: !873, file: !873, line: 260, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !980, line: 1109)
!980 = !DISubprogram(name: "erfcf", scope: !873, file: !873, line: 260, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !982, line: 1110)
!982 = !DISubprogram(name: "erfcl", scope: !873, file: !873, line: 260, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !984, line: 1112)
!984 = !DISubprogram(name: "exp2", scope: !873, file: !873, line: 141, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !986, line: 1113)
!986 = !DISubprogram(name: "exp2f", scope: !873, file: !873, line: 141, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !988, line: 1114)
!988 = !DISubprogram(name: "exp2l", scope: !873, file: !873, line: 141, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !990, line: 1116)
!990 = !DISubprogram(name: "expm1", scope: !873, file: !873, line: 128, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !992, line: 1117)
!992 = !DISubprogram(name: "expm1f", scope: !873, file: !873, line: 128, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !994, line: 1118)
!994 = !DISubprogram(name: "expm1l", scope: !873, file: !873, line: 128, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !996, line: 1120)
!996 = !DISubprogram(name: "fdim", scope: !873, file: !873, line: 354, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !998, line: 1121)
!998 = !DISubprogram(name: "fdimf", scope: !873, file: !873, line: 354, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1000, line: 1122)
!1000 = !DISubprogram(name: "fdiml", scope: !873, file: !873, line: 354, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1002, line: 1124)
!1002 = !DISubprogram(name: "fma", scope: !873, file: !873, line: 373, type: !1003, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!108, !108, !108, !108}
!1005 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1006, line: 1125)
!1006 = !DISubprogram(name: "fmaf", scope: !873, file: !873, line: 373, type: !1007, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!262, !262, !262, !262}
!1009 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1010, line: 1126)
!1010 = !DISubprogram(name: "fmal", scope: !873, file: !873, line: 373, type: !1011, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!267, !267, !267, !267}
!1013 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1014, line: 1128)
!1014 = !DISubprogram(name: "fmax", scope: !873, file: !873, line: 357, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1016, line: 1129)
!1016 = !DISubprogram(name: "fmaxf", scope: !873, file: !873, line: 357, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1018, line: 1130)
!1018 = !DISubprogram(name: "fmaxl", scope: !873, file: !873, line: 357, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1020, line: 1132)
!1020 = !DISubprogram(name: "fmin", scope: !873, file: !873, line: 360, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1022, line: 1133)
!1022 = !DISubprogram(name: "fminf", scope: !873, file: !873, line: 360, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1024, line: 1134)
!1024 = !DISubprogram(name: "fminl", scope: !873, file: !873, line: 360, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1026, line: 1136)
!1026 = !DISubprogram(name: "hypot", scope: !873, file: !873, line: 162, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1028, line: 1137)
!1028 = !DISubprogram(name: "hypotf", scope: !873, file: !873, line: 162, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1030, line: 1138)
!1030 = !DISubprogram(name: "hypotl", scope: !873, file: !873, line: 162, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1032, line: 1140)
!1032 = !DISubprogram(name: "ilogb", scope: !873, file: !873, line: 313, type: !1033, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!82, !108}
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1036, line: 1141)
!1036 = !DISubprogram(name: "ilogbf", scope: !873, file: !873, line: 313, type: !1037, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!82, !262}
!1039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1040, line: 1142)
!1040 = !DISubprogram(name: "ilogbl", scope: !873, file: !873, line: 313, type: !1041, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!82, !267}
!1043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1044, line: 1144)
!1044 = !DISubprogram(name: "lgamma", scope: !873, file: !873, line: 261, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1045 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1046, line: 1145)
!1046 = !DISubprogram(name: "lgammaf", scope: !873, file: !873, line: 261, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1048, line: 1146)
!1048 = !DISubprogram(name: "lgammal", scope: !873, file: !873, line: 261, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1049 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1050, line: 1149)
!1050 = !DISubprogram(name: "llrint", scope: !873, file: !873, line: 344, type: !1051, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!233, !108}
!1053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1054, line: 1150)
!1054 = !DISubprogram(name: "llrintf", scope: !873, file: !873, line: 344, type: !1055, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!233, !262}
!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1058, line: 1151)
!1058 = !DISubprogram(name: "llrintl", scope: !873, file: !873, line: 344, type: !1059, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!233, !267}
!1061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1062, line: 1153)
!1062 = !DISubprogram(name: "llround", scope: !873, file: !873, line: 350, type: !1051, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1064, line: 1154)
!1064 = !DISubprogram(name: "llroundf", scope: !873, file: !873, line: 350, type: !1055, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1066, line: 1155)
!1066 = !DISubprogram(name: "llroundl", scope: !873, file: !873, line: 350, type: !1059, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1068, line: 1158)
!1068 = !DISubprogram(name: "log1p", scope: !873, file: !873, line: 131, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1070, line: 1159)
!1070 = !DISubprogram(name: "log1pf", scope: !873, file: !873, line: 131, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1071 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1072, line: 1160)
!1072 = !DISubprogram(name: "log1pl", scope: !873, file: !873, line: 131, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1074, line: 1162)
!1074 = !DISubprogram(name: "log2", scope: !873, file: !873, line: 144, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1076, line: 1163)
!1076 = !DISubprogram(name: "log2f", scope: !873, file: !873, line: 144, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1078, line: 1164)
!1078 = !DISubprogram(name: "log2l", scope: !873, file: !873, line: 144, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1080, line: 1166)
!1080 = !DISubprogram(name: "logb", scope: !873, file: !873, line: 134, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1082, line: 1167)
!1082 = !DISubprogram(name: "logbf", scope: !873, file: !873, line: 134, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1084, line: 1168)
!1084 = !DISubprogram(name: "logbl", scope: !873, file: !873, line: 134, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1086, line: 1170)
!1086 = !DISubprogram(name: "lrint", scope: !873, file: !873, line: 342, type: !1087, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!91, !108}
!1089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1090, line: 1171)
!1090 = !DISubprogram(name: "lrintf", scope: !873, file: !873, line: 342, type: !1091, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!91, !262}
!1093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1094, line: 1172)
!1094 = !DISubprogram(name: "lrintl", scope: !873, file: !873, line: 342, type: !1095, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!91, !267}
!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1098, line: 1174)
!1098 = !DISubprogram(name: "lround", scope: !873, file: !873, line: 348, type: !1087, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1100, line: 1175)
!1100 = !DISubprogram(name: "lroundf", scope: !873, file: !873, line: 348, type: !1091, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1102, line: 1176)
!1102 = !DISubprogram(name: "lroundl", scope: !873, file: !873, line: 348, type: !1095, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1104, line: 1178)
!1104 = !DISubprogram(name: "nan", scope: !873, file: !873, line: 228, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1106, line: 1179)
!1106 = !DISubprogram(name: "nanf", scope: !873, file: !873, line: 228, type: !1107, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!262, !109}
!1109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1110, line: 1180)
!1110 = !DISubprogram(name: "nanl", scope: !873, file: !873, line: 228, type: !1111, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!267, !109}
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1114, line: 1182)
!1114 = !DISubprogram(name: "nearbyint", scope: !873, file: !873, line: 322, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1116, line: 1183)
!1116 = !DISubprogram(name: "nearbyintf", scope: !873, file: !873, line: 322, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1118, line: 1184)
!1118 = !DISubprogram(name: "nearbyintl", scope: !873, file: !873, line: 322, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1120, line: 1186)
!1120 = !DISubprogram(name: "nextafter", scope: !873, file: !873, line: 292, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1122, line: 1187)
!1122 = !DISubprogram(name: "nextafterf", scope: !873, file: !873, line: 292, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1124, line: 1188)
!1124 = !DISubprogram(name: "nextafterl", scope: !873, file: !873, line: 292, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1126, line: 1190)
!1126 = !DISubprogram(name: "nexttoward", scope: !873, file: !873, line: 294, type: !1127, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!108, !108, !267}
!1129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1130, line: 1191)
!1130 = !DISubprogram(name: "nexttowardf", scope: !873, file: !873, line: 294, type: !1131, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!262, !262, !267}
!1133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1134, line: 1192)
!1134 = !DISubprogram(name: "nexttowardl", scope: !873, file: !873, line: 294, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1136, line: 1194)
!1136 = !DISubprogram(name: "remainder", scope: !873, file: !873, line: 305, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1138, line: 1195)
!1138 = !DISubprogram(name: "remainderf", scope: !873, file: !873, line: 305, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1140, line: 1196)
!1140 = !DISubprogram(name: "remainderl", scope: !873, file: !873, line: 305, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1142, line: 1198)
!1142 = !DISubprogram(name: "remquo", scope: !873, file: !873, line: 335, type: !1143, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!108, !108, !108, !902}
!1145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1146, line: 1199)
!1146 = !DISubprogram(name: "remquof", scope: !873, file: !873, line: 335, type: !1147, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!262, !262, !262, !902}
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1150, line: 1200)
!1150 = !DISubprogram(name: "remquol", scope: !873, file: !873, line: 335, type: !1151, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!267, !267, !267, !902}
!1153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1154, line: 1202)
!1154 = !DISubprogram(name: "rint", scope: !873, file: !873, line: 289, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1156, line: 1203)
!1156 = !DISubprogram(name: "rintf", scope: !873, file: !873, line: 289, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1158, line: 1204)
!1158 = !DISubprogram(name: "rintl", scope: !873, file: !873, line: 289, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1160, line: 1206)
!1160 = !DISubprogram(name: "round", scope: !873, file: !873, line: 326, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1162, line: 1207)
!1162 = !DISubprogram(name: "roundf", scope: !873, file: !873, line: 326, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1164, line: 1208)
!1164 = !DISubprogram(name: "roundl", scope: !873, file: !873, line: 326, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1166, line: 1210)
!1166 = !DISubprogram(name: "scalbln", scope: !873, file: !873, line: 318, type: !1167, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!108, !108, !91}
!1169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1170, line: 1211)
!1170 = !DISubprogram(name: "scalblnf", scope: !873, file: !873, line: 318, type: !1171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!262, !262, !91}
!1173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1174, line: 1212)
!1174 = !DISubprogram(name: "scalblnl", scope: !873, file: !873, line: 318, type: !1175, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!267, !267, !91}
!1177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1178, line: 1214)
!1178 = !DISubprogram(name: "scalbn", scope: !873, file: !873, line: 309, type: !905, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1180, line: 1215)
!1180 = !DISubprogram(name: "scalbnf", scope: !873, file: !873, line: 309, type: !1181, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!262, !262, !82}
!1183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1184, line: 1216)
!1184 = !DISubprogram(name: "scalbnl", scope: !873, file: !873, line: 309, type: !1185, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!267, !267, !82}
!1187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1188, line: 1218)
!1188 = !DISubprogram(name: "tgamma", scope: !873, file: !873, line: 268, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1190, line: 1219)
!1190 = !DISubprogram(name: "tgammaf", scope: !873, file: !873, line: 268, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1192, line: 1220)
!1192 = !DISubprogram(name: "tgammal", scope: !873, file: !873, line: 268, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1194, line: 1222)
!1194 = !DISubprogram(name: "trunc", scope: !873, file: !873, line: 330, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1196, line: 1223)
!1196 = !DISubprogram(name: "truncf", scope: !873, file: !873, line: 330, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1198, line: 1224)
!1198 = !DISubprogram(name: "truncl", scope: !873, file: !873, line: 330, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1200, line: 58)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "fenv_t", file: !1201, line: 94, baseType: !1202)
!1201 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fenv.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1201, line: 75, flags: DIFlagFwdDecl, identifier: "_ZTS6fenv_t")
!1203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1204, line: 59)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "fexcept_t", file: !1201, line: 68, baseType: !29)
!1205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1206, line: 62)
!1206 = !DISubprogram(name: "feclearexcept", scope: !1207, file: !1207, line: 64, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1207 = !DIFile(filename: "/usr/include/fenv.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1209, line: 63)
!1209 = !DISubprogram(name: "fegetexceptflag", scope: !1207, file: !1207, line: 68, type: !1210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!82, !1212, !82}
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1214, line: 64)
!1214 = !DISubprogram(name: "feraiseexcept", scope: !1207, file: !1207, line: 71, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1216, line: 65)
!1216 = !DISubprogram(name: "fesetexceptflag", scope: !1207, file: !1207, line: 75, type: !1217, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!82, !1219, !82}
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1204)
!1221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1222, line: 66)
!1222 = !DISubprogram(name: "fetestexcept", scope: !1207, file: !1207, line: 79, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1224, line: 68)
!1224 = !DISubprogram(name: "fegetround", scope: !1207, file: !1207, line: 85, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1226, line: 69)
!1226 = !DISubprogram(name: "fesetround", scope: !1207, file: !1207, line: 88, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1228, line: 71)
!1228 = !DISubprogram(name: "fegetenv", scope: !1207, file: !1207, line: 95, type: !1229, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!82, !1231}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1233, line: 72)
!1233 = !DISubprogram(name: "feholdexcept", scope: !1207, file: !1207, line: 100, type: !1229, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1235, line: 73)
!1235 = !DISubprogram(name: "fesetenv", scope: !1207, file: !1207, line: 104, type: !1236, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!82, !1238}
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1200)
!1240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1241, line: 74)
!1241 = !DISubprogram(name: "feupdateenv", scope: !1207, file: !1207, line: 109, type: !1236, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1200, line: 61)
!1243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1204, line: 62)
!1244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1206, line: 65)
!1245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1209, line: 66)
!1246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1214, line: 67)
!1247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1216, line: 68)
!1248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1222, line: 69)
!1249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1224, line: 71)
!1250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1226, line: 72)
!1251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1228, line: 74)
!1252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1233, line: 75)
!1253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1235, line: 76)
!1254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1241, line: 77)
!1255 = !{i32 2, !"Dwarf Version", i32 4}
!1256 = !{i32 2, !"Debug Info Version", i32 3}
!1257 = distinct !DISubprogram(name: "__remill_basic_block", scope: !2, file: !2, line: 52, type: !1258, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !1, variables: !7)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!1260, !1263, !1946, !1260}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Memory", file: !1262, line: 36, flags: DIFlagFwdDecl, identifier: "_ZTS6Memory")
!1262 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/Runtime/Types.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1263 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "State", file: !27, line: 742, size: 27008, align: 128, elements: !1265, identifier: "_ZTS5State")
!1265 = !{!1266, !1278, !1487, !1507, !1537, !1562, !1591, !1628, !1638, !1699, !1724, !1748, !1928}
!1266 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1264, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArchState", file: !1268, line: 21, size: 128, elements: !1269, identifier: "_ZTS9ArchState")
!1268 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/Runtime/State.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1269 = !{!1270, !1271, !1272}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_call", scope: !1267, file: !1268, line: 23, baseType: !4, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1267, file: !1268, line: 25, baseType: !8, size: 32, offset: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, scope: !1267, file: !1268, line: 31, baseType: !1273, size: 64, offset: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1267, file: !1268, line: 31, size: 64, elements: !1274, identifier: "_ZTSN9ArchStateUt_E")
!1274 = !{!1275, !1276, !1277}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "addr_to_load", scope: !1273, file: !1268, line: 32, baseType: !635, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "addr_to_store", scope: !1273, file: !1268, line: 33, baseType: !635, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_call_vector", scope: !1273, file: !1268, line: 34, baseType: !8, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1264, file: !27, line: 747, baseType: !1279, size: 16384, offset: 128)
!1279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1280, size: 16384, elements: !1365)
!1280 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "VectorReg", file: !27, line: 636, size: 512, align: 128, elements: !1281, identifier: "_ZTS9VectorReg")
!1281 = !{!1282, !1357, !1422}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1280, file: !27, line: 637, baseType: !1283, size: 128, align: 128)
!1283 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec128_t", file: !1262, line: 317, size: 128, elements: !1284, identifier: "_ZTS8vec128_t")
!1284 = !{!1285, !1294, !1301, !1308, !1313, !1320, !1325, !1330, !1335, !1340, !1345, !1350}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !1283, file: !1262, line: 321, baseType: !1286, size: 128)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v1_t", file: !1262, line: 205, size: 128, elements: !1287, identifier: "_ZTS11uint128v1_t")
!1287 = !{!1288}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1286, file: !1262, line: 205, baseType: !1289, size: 128)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1290, size: 128, elements: !1292)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint128_t", file: !1262, line: 46, baseType: !1291)
!1291 = !DIBasicType(name: "unsigned __int128", size: 128, encoding: DW_ATE_unsigned)
!1292 = !{!1293}
!1293 = !DISubrange(count: 1)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1283, file: !1262, line: 323, baseType: !1295, size: 128)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v16_t", file: !1262, line: 182, size: 128, elements: !1296, identifier: "_ZTS10uint8v16_t")
!1296 = !{!1297}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1295, file: !1262, line: 182, baseType: !1298, size: 128)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 128, elements: !1299)
!1299 = !{!1300}
!1300 = !DISubrange(count: 16)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1283, file: !1262, line: 324, baseType: !1302, size: 128)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v8_t", file: !1262, line: 189, size: 128, elements: !1303, identifier: "_ZTS10uint16v8_t")
!1303 = !{!1304}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1302, file: !1262, line: 189, baseType: !1305, size: 128)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 128, elements: !1306)
!1306 = !{!1307}
!1307 = !DISubrange(count: 8)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1283, file: !1262, line: 325, baseType: !1309, size: 128)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v4_t", file: !1262, line: 195, size: 128, elements: !1310, identifier: "_ZTS10uint32v4_t")
!1310 = !{!1311}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1309, file: !1262, line: 195, baseType: !1312, size: 128)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 128, elements: !352)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1283, file: !1262, line: 326, baseType: !1314, size: 128)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v2_t", file: !1262, line: 200, size: 128, elements: !1315, identifier: "_ZTS10uint64v2_t")
!1315 = !{!1316}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1314, file: !1262, line: 200, baseType: !1317, size: 128)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 128, elements: !1318)
!1318 = !{!1319}
!1319 = !DISubrange(count: 2)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1283, file: !1262, line: 327, baseType: !1321, size: 128)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v4_t", file: !1262, line: 242, size: 128, elements: !1322, identifier: "_ZTS11float32v4_t")
!1322 = !{!1323}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1321, file: !1262, line: 242, baseType: !1324, size: 128)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 128, elements: !352)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1283, file: !1262, line: 328, baseType: !1326, size: 128)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v2_t", file: !1262, line: 247, size: 128, elements: !1327, identifier: "_ZTS11float64v2_t")
!1327 = !{!1328}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1326, file: !1262, line: 247, baseType: !1329, size: 128)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !1318)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1283, file: !1262, line: 330, baseType: !1331, size: 128)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v16_t", file: !1262, line: 213, size: 128, elements: !1332, identifier: "_ZTS9int8v16_t")
!1332 = !{!1333}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1331, file: !1262, line: 213, baseType: !1334, size: 128)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 128, elements: !1299)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1283, file: !1262, line: 331, baseType: !1336, size: 128)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v8_t", file: !1262, line: 220, size: 128, elements: !1337, identifier: "_ZTS9int16v8_t")
!1337 = !{!1338}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1336, file: !1262, line: 220, baseType: !1339, size: 128)
!1339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 128, elements: !1306)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1283, file: !1262, line: 332, baseType: !1341, size: 128)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v4_t", file: !1262, line: 226, size: 128, elements: !1342, identifier: "_ZTS9int32v4_t")
!1342 = !{!1343}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1341, file: !1262, line: 226, baseType: !1344, size: 128)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 128, elements: !352)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1283, file: !1262, line: 333, baseType: !1346, size: 128)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v2_t", file: !1262, line: 231, size: 128, elements: !1347, identifier: "_ZTS9int64v2_t")
!1347 = !{!1348}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1346, file: !1262, line: 231, baseType: !1349, size: 128)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 128, elements: !1318)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !1283, file: !1262, line: 334, baseType: !1351, size: 128)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int128v1_t", file: !1262, line: 236, size: 128, elements: !1352, identifier: "_ZTS10int128v1_t")
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1351, file: !1262, line: 236, baseType: !1354, size: 128)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 128, elements: !1292)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "int128_t", file: !1262, line: 47, baseType: !1356)
!1356 = !DIBasicType(name: "__int128", size: 128, encoding: DW_ATE_signed)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ymm", scope: !1280, file: !27, line: 638, baseType: !1358, size: 256, align: 128)
!1358 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec256_t", file: !1262, line: 340, size: 256, elements: !1359, identifier: "_ZTS8vec256_t")
!1359 = !{!1360, !1367, !1372, !1377, !1382, !1387, !1392, !1397, !1402, !1407, !1412, !1417}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1358, file: !1262, line: 341, baseType: !1361, size: 256)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v32_t", file: !1262, line: 183, size: 256, elements: !1362, identifier: "_ZTS10uint8v32_t")
!1362 = !{!1363}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1361, file: !1262, line: 183, baseType: !1364, size: 256)
!1364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 256, elements: !1365)
!1365 = !{!1366}
!1366 = !DISubrange(count: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1358, file: !1262, line: 342, baseType: !1368, size: 256)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v16_t", file: !1262, line: 190, size: 256, elements: !1369, identifier: "_ZTS11uint16v16_t")
!1369 = !{!1370}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1368, file: !1262, line: 190, baseType: !1371, size: 256)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !1299)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1358, file: !1262, line: 343, baseType: !1373, size: 256)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v8_t", file: !1262, line: 196, size: 256, elements: !1374, identifier: "_ZTS10uint32v8_t")
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1373, file: !1262, line: 196, baseType: !1376, size: 256)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !1306)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1358, file: !1262, line: 344, baseType: !1378, size: 256)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v4_t", file: !1262, line: 201, size: 256, elements: !1379, identifier: "_ZTS10uint64v4_t")
!1379 = !{!1380}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1378, file: !1262, line: 201, baseType: !1381, size: 256)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 256, elements: !352)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !1358, file: !1262, line: 345, baseType: !1383, size: 256)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v2_t", file: !1262, line: 206, size: 256, elements: !1384, identifier: "_ZTS11uint128v2_t")
!1384 = !{!1385}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1383, file: !1262, line: 206, baseType: !1386, size: 256)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1290, size: 256, elements: !1318)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1358, file: !1262, line: 346, baseType: !1388, size: 256)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v8_t", file: !1262, line: 243, size: 256, elements: !1389, identifier: "_ZTS11float32v8_t")
!1389 = !{!1390}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1388, file: !1262, line: 243, baseType: !1391, size: 256)
!1391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 256, elements: !1306)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1358, file: !1262, line: 347, baseType: !1393, size: 256)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v4_t", file: !1262, line: 248, size: 256, elements: !1394, identifier: "_ZTS11float64v4_t")
!1394 = !{!1395}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1393, file: !1262, line: 248, baseType: !1396, size: 256)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !352)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1358, file: !1262, line: 349, baseType: !1398, size: 256)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v32_t", file: !1262, line: 214, size: 256, elements: !1399, identifier: "_ZTS9int8v32_t")
!1399 = !{!1400}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1398, file: !1262, line: 214, baseType: !1401, size: 256)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 256, elements: !1365)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1358, file: !1262, line: 350, baseType: !1403, size: 256)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v16_t", file: !1262, line: 221, size: 256, elements: !1404, identifier: "_ZTS10int16v16_t")
!1404 = !{!1405}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1403, file: !1262, line: 221, baseType: !1406, size: 256)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 256, elements: !1299)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1358, file: !1262, line: 351, baseType: !1408, size: 256)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v8_t", file: !1262, line: 227, size: 256, elements: !1409, identifier: "_ZTS9int32v8_t")
!1409 = !{!1410}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1408, file: !1262, line: 227, baseType: !1411, size: 256)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 256, elements: !1306)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1358, file: !1262, line: 352, baseType: !1413, size: 256)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v4_t", file: !1262, line: 232, size: 256, elements: !1414, identifier: "_ZTS9int64v4_t")
!1414 = !{!1415}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1413, file: !1262, line: 232, baseType: !1416, size: 256)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 256, elements: !352)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !1358, file: !1262, line: 353, baseType: !1418, size: 256)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int128v2_t", file: !1262, line: 237, size: 256, elements: !1419, identifier: "_ZTS10int128v2_t")
!1419 = !{!1420}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1418, file: !1262, line: 237, baseType: !1421, size: 256)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 256, elements: !1318)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "zmm", scope: !1280, file: !27, line: 639, baseType: !1423, size: 512, align: 128)
!1423 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec512_t", file: !1262, line: 359, size: 512, elements: !1424, identifier: "_ZTS8vec512_t")
!1424 = !{!1425, !1432, !1437, !1442, !1447, !1452, !1457, !1462, !1467, !1472, !1477, !1482}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1423, file: !1262, line: 360, baseType: !1426, size: 512)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v64_t", file: !1262, line: 184, size: 512, elements: !1427, identifier: "_ZTS10uint8v64_t")
!1427 = !{!1428}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1426, file: !1262, line: 184, baseType: !1429, size: 512)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 512, elements: !1430)
!1430 = !{!1431}
!1431 = !DISubrange(count: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1423, file: !1262, line: 361, baseType: !1433, size: 512)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v32_t", file: !1262, line: 191, size: 512, elements: !1434, identifier: "_ZTS11uint16v32_t")
!1434 = !{!1435}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1433, file: !1262, line: 191, baseType: !1436, size: 512)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 512, elements: !1365)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1423, file: !1262, line: 362, baseType: !1438, size: 512)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v16_t", file: !1262, line: 197, size: 512, elements: !1439, identifier: "_ZTS11uint32v16_t")
!1439 = !{!1440}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1438, file: !1262, line: 197, baseType: !1441, size: 512)
!1441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 512, elements: !1299)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1423, file: !1262, line: 363, baseType: !1443, size: 512)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v8_t", file: !1262, line: 202, size: 512, elements: !1444, identifier: "_ZTS10uint64v8_t")
!1444 = !{!1445}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1443, file: !1262, line: 202, baseType: !1446, size: 512)
!1446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 512, elements: !1306)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !1423, file: !1262, line: 364, baseType: !1448, size: 512)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v4_t", file: !1262, line: 207, size: 512, elements: !1449, identifier: "_ZTS11uint128v4_t")
!1449 = !{!1450}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1448, file: !1262, line: 207, baseType: !1451, size: 512)
!1451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1290, size: 512, elements: !352)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1423, file: !1262, line: 365, baseType: !1453, size: 512)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v16_t", file: !1262, line: 244, size: 512, elements: !1454, identifier: "_ZTS12float32v16_t")
!1454 = !{!1455}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1453, file: !1262, line: 244, baseType: !1456, size: 512)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 512, elements: !1299)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1423, file: !1262, line: 366, baseType: !1458, size: 512)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v8_t", file: !1262, line: 249, size: 512, elements: !1459, identifier: "_ZTS11float64v8_t")
!1459 = !{!1460}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1458, file: !1262, line: 249, baseType: !1461, size: 512)
!1461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 512, elements: !1306)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1423, file: !1262, line: 368, baseType: !1463, size: 512)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v64_t", file: !1262, line: 215, size: 512, elements: !1464, identifier: "_ZTS9int8v64_t")
!1464 = !{!1465}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1463, file: !1262, line: 215, baseType: !1466, size: 512)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 512, elements: !1430)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1423, file: !1262, line: 369, baseType: !1468, size: 512)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v32_t", file: !1262, line: 222, size: 512, elements: !1469, identifier: "_ZTS10int16v32_t")
!1469 = !{!1470}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1468, file: !1262, line: 222, baseType: !1471, size: 512)
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 512, elements: !1365)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1423, file: !1262, line: 370, baseType: !1473, size: 512)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v16_t", file: !1262, line: 228, size: 512, elements: !1474, identifier: "_ZTS10int32v16_t")
!1474 = !{!1475}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1473, file: !1262, line: 228, baseType: !1476, size: 512)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 512, elements: !1299)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1423, file: !1262, line: 371, baseType: !1478, size: 512)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v8_t", file: !1262, line: 233, size: 512, elements: !1479, identifier: "_ZTS9int64v8_t")
!1479 = !{!1480}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1478, file: !1262, line: 233, baseType: !1481, size: 512)
!1481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 512, elements: !1306)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !1423, file: !1262, line: 372, baseType: !1483, size: 512)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int128v4_t", file: !1262, line: 238, size: 512, elements: !1484, identifier: "_ZTS10int128v4_t")
!1484 = !{!1485}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1483, file: !1262, line: 238, baseType: !1486, size: 512)
!1486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 512, elements: !352)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "aflag", scope: !1264, file: !27, line: 751, baseType: !1488, size: 128, align: 64, offset: 16512)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArithFlags", file: !27, line: 402, size: 128, align: 64, elements: !1489, identifier: "_ZTS10ArithFlags")
!1489 = !{!1490, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1488, file: !27, line: 404, baseType: !1491, size: 8)
!1491 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !62)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "cf", scope: !1488, file: !27, line: 405, baseType: !62, size: 8, offset: 8)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1488, file: !27, line: 406, baseType: !1491, size: 8, offset: 16)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "pf", scope: !1488, file: !27, line: 407, baseType: !62, size: 8, offset: 24)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1488, file: !27, line: 408, baseType: !1491, size: 8, offset: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !1488, file: !27, line: 409, baseType: !62, size: 8, offset: 40)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1488, file: !27, line: 410, baseType: !1491, size: 8, offset: 48)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "zf", scope: !1488, file: !27, line: 411, baseType: !62, size: 8, offset: 56)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1488, file: !27, line: 412, baseType: !1491, size: 8, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !1488, file: !27, line: 413, baseType: !62, size: 8, offset: 72)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1488, file: !27, line: 414, baseType: !1491, size: 8, offset: 80)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "df", scope: !1488, file: !27, line: 415, baseType: !62, size: 8, offset: 88)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !1488, file: !27, line: 416, baseType: !1491, size: 8, offset: 96)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "of", scope: !1488, file: !27, line: 417, baseType: !62, size: 8, offset: 104)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !1488, file: !27, line: 418, baseType: !1491, size: 8, offset: 112)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !1488, file: !27, line: 419, baseType: !1491, size: 8, offset: 120)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "rflag", scope: !1264, file: !27, line: 752, baseType: !1508, size: 64, align: 64, offset: 16640)
!1508 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Flags", file: !27, line: 366, size: 64, align: 64, elements: !1509, identifier: "_ZTS5Flags")
!1509 = !{!1510, !1511}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1508, file: !27, line: 367, baseType: !635, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, scope: !1508, file: !27, line: 368, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1508, file: !27, line: 368, size: 64, elements: !1513, identifier: "_ZTSN5FlagsUt_E")
!1513 = !{!1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "cf", scope: !1512, file: !27, line: 369, baseType: !8, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_1", scope: !1512, file: !27, line: 370, baseType: !8, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pf", scope: !1512, file: !27, line: 371, baseType: !8, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0a", scope: !1512, file: !27, line: 372, baseType: !8, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !1512, file: !27, line: 374, baseType: !8, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0b", scope: !1512, file: !27, line: 375, baseType: !8, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "zf", scope: !1512, file: !27, line: 376, baseType: !8, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !1512, file: !27, line: 377, baseType: !8, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "tf", scope: !1512, file: !27, line: 379, baseType: !8, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_if", scope: !1512, file: !27, line: 380, baseType: !8, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "df", scope: !1512, file: !27, line: 381, baseType: !8, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "of", scope: !1512, file: !27, line: 382, baseType: !8, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "iopl", scope: !1512, file: !27, line: 384, baseType: !8, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "nt", scope: !1512, file: !27, line: 385, baseType: !8, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0c", scope: !1512, file: !27, line: 386, baseType: !8, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !1512, file: !27, line: 388, baseType: !8, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "vm", scope: !1512, file: !27, line: 389, baseType: !8, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ac", scope: !1512, file: !27, line: 390, baseType: !8, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "vif", scope: !1512, file: !27, line: 391, baseType: !8, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !1512, file: !27, line: 393, baseType: !8, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1512, file: !27, line: 394, baseType: !8, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_eflags", scope: !1512, file: !27, line: 395, baseType: !8, size: 10, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_rflags", scope: !1512, file: !27, line: 396, baseType: !8, size: 32, offset: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "seg", scope: !1264, file: !27, line: 753, baseType: !1538, size: 192, align: 64, offset: 16704)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Segments", file: !27, line: 451, size: 192, align: 64, elements: !1539, identifier: "_ZTS8Segments")
!1539 = !{!1540, !1542, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1538, file: !27, line: 452, baseType: !1541, size: 16)
!1541 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1538, file: !27, line: 453, baseType: !1543, size: 16, offset: 16)
!1543 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "SegmentSelector", file: !27, line: 76, size: 16, elements: !1544, identifier: "_ZTS15SegmentSelector")
!1544 = !{!1545, !1546}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1543, file: !27, line: 77, baseType: !28, size: 16)
!1546 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !27, line: 78, baseType: !1547, size: 16)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1543, file: !27, line: 78, size: 16, elements: !1548, identifier: "_ZTSN15SegmentSelectorUt_E")
!1548 = !{!1549, !1550, !1551}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "rpi", scope: !1547, file: !27, line: 79, baseType: !26, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "ti", scope: !1547, file: !27, line: 80, baseType: !35, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1547, file: !27, line: 81, baseType: !28, size: 13, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1538, file: !27, line: 454, baseType: !1541, size: 16, offset: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1538, file: !27, line: 455, baseType: !1543, size: 16, offset: 48)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1538, file: !27, line: 456, baseType: !1541, size: 16, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !1538, file: !27, line: 457, baseType: !1543, size: 16, offset: 80)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1538, file: !27, line: 458, baseType: !1541, size: 16, offset: 96)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1538, file: !27, line: 459, baseType: !1543, size: 16, offset: 112)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1538, file: !27, line: 460, baseType: !1541, size: 16, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1538, file: !27, line: 461, baseType: !1543, size: 16, offset: 144)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1538, file: !27, line: 462, baseType: !1541, size: 16, offset: 160)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1538, file: !27, line: 463, baseType: !1543, size: 16, offset: 176)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1264, file: !27, line: 754, baseType: !1563, size: 768, align: 64, offset: 16896)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AddressSpace", file: !27, line: 654, size: 768, align: 64, elements: !1564, identifier: "_ZTS12AddressSpace")
!1564 = !{!1565, !1567, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1563, file: !27, line: 655, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !635)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ss_base", scope: !1563, file: !27, line: 656, baseType: !1568, size: 64, offset: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Reg", file: !27, line: 610, size: 64, elements: !1569, identifier: "_ZTS3Reg")
!1569 = !{!1570}
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1568, file: !27, line: 611, baseType: !1571, size: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1568, file: !27, line: 611, size: 64, elements: !1572, identifier: "_ZTSN3RegUt_E")
!1572 = !{!1573, !1578, !1579, !1580}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !1571, file: !27, line: 615, baseType: !1574, size: 16, align: 8)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !27, line: 612, size: 16, elements: !1575, identifier: "_ZTSN3RegUt_Ut_E")
!1575 = !{!1576, !1577}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !1574, file: !27, line: 613, baseType: !62, size: 8)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !1574, file: !27, line: 614, baseType: !62, size: 8, offset: 8)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !1571, file: !27, line: 616, baseType: !28, size: 16, align: 16)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "dword", scope: !1571, file: !27, line: 617, baseType: !8, size: 32, align: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "qword", scope: !1571, file: !27, line: 618, baseType: !635, size: 64, align: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1563, file: !27, line: 657, baseType: !1566, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "es_base", scope: !1563, file: !27, line: 658, baseType: !1568, size: 64, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1563, file: !27, line: 659, baseType: !1566, size: 64, offset: 256)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "gs_base", scope: !1563, file: !27, line: 660, baseType: !1568, size: 64, offset: 320)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1563, file: !27, line: 661, baseType: !1566, size: 64, offset: 384)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "fs_base", scope: !1563, file: !27, line: 662, baseType: !1568, size: 64, offset: 448)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1563, file: !27, line: 663, baseType: !1566, size: 64, offset: 512)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ds_base", scope: !1563, file: !27, line: 664, baseType: !1568, size: 64, offset: 576)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1563, file: !27, line: 665, baseType: !1566, size: 64, offset: 640)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "cs_base", scope: !1563, file: !27, line: 666, baseType: !1568, size: 64, offset: 704)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "gpr", scope: !1264, file: !27, line: 755, baseType: !1592, size: 2176, align: 64, offset: 17664)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GPR", file: !27, line: 677, size: 2176, align: 64, elements: !1593, identifier: "_ZTS3GPR")
!1593 = !{!1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1592, file: !27, line: 679, baseType: !1566, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !1592, file: !27, line: 680, baseType: !1568, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1592, file: !27, line: 681, baseType: !1566, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "rbx", scope: !1592, file: !27, line: 682, baseType: !1568, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1592, file: !27, line: 683, baseType: !1566, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rcx", scope: !1592, file: !27, line: 684, baseType: !1568, size: 64, offset: 320)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1592, file: !27, line: 685, baseType: !1566, size: 64, offset: 384)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "rdx", scope: !1592, file: !27, line: 686, baseType: !1568, size: 64, offset: 448)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1592, file: !27, line: 687, baseType: !1566, size: 64, offset: 512)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rsi", scope: !1592, file: !27, line: 688, baseType: !1568, size: 64, offset: 576)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1592, file: !27, line: 689, baseType: !1566, size: 64, offset: 640)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rdi", scope: !1592, file: !27, line: 690, baseType: !1568, size: 64, offset: 704)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !1592, file: !27, line: 691, baseType: !1566, size: 64, offset: 768)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !1592, file: !27, line: 692, baseType: !1568, size: 64, offset: 832)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !1592, file: !27, line: 693, baseType: !1566, size: 64, offset: 896)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "rbp", scope: !1592, file: !27, line: 694, baseType: !1568, size: 64, offset: 960)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !1592, file: !27, line: 695, baseType: !1566, size: 64, offset: 1024)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1592, file: !27, line: 696, baseType: !1568, size: 64, offset: 1088)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_9", scope: !1592, file: !27, line: 697, baseType: !1566, size: 64, offset: 1152)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1592, file: !27, line: 698, baseType: !1568, size: 64, offset: 1216)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_10", scope: !1592, file: !27, line: 699, baseType: !1566, size: 64, offset: 1280)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1592, file: !27, line: 700, baseType: !1568, size: 64, offset: 1344)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_11", scope: !1592, file: !27, line: 701, baseType: !1566, size: 64, offset: 1408)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1592, file: !27, line: 702, baseType: !1568, size: 64, offset: 1472)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_12", scope: !1592, file: !27, line: 703, baseType: !1566, size: 64, offset: 1536)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1592, file: !27, line: 704, baseType: !1568, size: 64, offset: 1600)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_13", scope: !1592, file: !27, line: 705, baseType: !1566, size: 64, offset: 1664)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1592, file: !27, line: 706, baseType: !1568, size: 64, offset: 1728)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_14", scope: !1592, file: !27, line: 707, baseType: !1566, size: 64, offset: 1792)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1592, file: !27, line: 708, baseType: !1568, size: 64, offset: 1856)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_15", scope: !1592, file: !27, line: 709, baseType: !1566, size: 64, offset: 1920)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1592, file: !27, line: 710, baseType: !1568, size: 64, offset: 1984)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_16", scope: !1592, file: !27, line: 711, baseType: !1566, size: 64, offset: 2048)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1592, file: !27, line: 714, baseType: !1568, size: 64, offset: 2112)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1264, file: !27, line: 756, baseType: !1629, size: 1024, align: 64, offset: 19840)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X87Stack", file: !27, line: 719, size: 1024, align: 64, elements: !1630, identifier: "_ZTS8X87Stack")
!1630 = !{!1631}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1629, file: !27, line: 723, baseType: !1632, size: 1024)
!1632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1633, size: 1024, elements: !1306)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1629, file: !27, line: 720, size: 128, align: 64, elements: !1634, identifier: "_ZTSN8X87StackUt_E")
!1634 = !{!1635, !1636}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1633, file: !27, line: 721, baseType: !635, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1633, file: !27, line: 722, baseType: !1637, size: 64, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "float64_t", file: !1262, line: 61, baseType: !108)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "mmx", scope: !1264, file: !27, line: 757, baseType: !1639, size: 1024, align: 64, offset: 20864)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MMX", file: !27, line: 729, size: 1024, align: 64, elements: !1640, identifier: "_ZTS3MMX")
!1640 = !{!1641}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1639, file: !27, line: 733, baseType: !1642, size: 1024)
!1642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1643, size: 1024, elements: !1306)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1639, file: !27, line: 730, size: 128, align: 64, elements: !1644, identifier: "_ZTSN3MMXUt_E")
!1644 = !{!1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1643, file: !27, line: 731, baseType: !635, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1643, file: !27, line: 732, baseType: !1647, size: 64, offset: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec64_t", file: !1262, line: 294, size: 64, elements: !1648, identifier: "_ZTS7vec64_t")
!1648 = !{!1649, !1654, !1659, !1664, !1669, !1674, !1679, !1684, !1689, !1694}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1647, file: !1262, line: 298, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v1_t", file: !1262, line: 199, size: 64, elements: !1651, identifier: "_ZTS10uint64v1_t")
!1651 = !{!1652}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1650, file: !1262, line: 199, baseType: !1653, size: 64)
!1653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 64, elements: !1292)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1647, file: !1262, line: 300, baseType: !1655, size: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v8_t", file: !1262, line: 181, size: 64, elements: !1656, identifier: "_ZTS9uint8v8_t")
!1656 = !{!1657}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1655, file: !1262, line: 181, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !1306)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1647, file: !1262, line: 301, baseType: !1660, size: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v4_t", file: !1262, line: 188, size: 64, elements: !1661, identifier: "_ZTS10uint16v4_t")
!1661 = !{!1662}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1660, file: !1262, line: 188, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, elements: !352)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1647, file: !1262, line: 302, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v2_t", file: !1262, line: 194, size: 64, elements: !1666, identifier: "_ZTS10uint32v2_t")
!1666 = !{!1667}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1665, file: !1262, line: 194, baseType: !1668, size: 64)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !1318)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1647, file: !1262, line: 303, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v2_t", file: !1262, line: 241, size: 64, elements: !1671, identifier: "_ZTS11float32v2_t")
!1671 = !{!1672}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1670, file: !1262, line: 241, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 64, elements: !1318)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1647, file: !1262, line: 304, baseType: !1675, size: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v1_t", file: !1262, line: 246, size: 64, elements: !1676, identifier: "_ZTS11float64v1_t")
!1676 = !{!1677}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1675, file: !1262, line: 246, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !1292)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1647, file: !1262, line: 306, baseType: !1680, size: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v8_t", file: !1262, line: 212, size: 64, elements: !1681, identifier: "_ZTS8int8v8_t")
!1681 = !{!1682}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1680, file: !1262, line: 212, baseType: !1683, size: 64)
!1683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 64, elements: !1306)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1647, file: !1262, line: 307, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v4_t", file: !1262, line: 219, size: 64, elements: !1686, identifier: "_ZTS9int16v4_t")
!1686 = !{!1687}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1685, file: !1262, line: 219, baseType: !1688, size: 64)
!1688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 64, elements: !352)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1647, file: !1262, line: 308, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v2_t", file: !1262, line: 225, size: 64, elements: !1691, identifier: "_ZTS9int32v2_t")
!1691 = !{!1692}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1690, file: !1262, line: 225, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 64, elements: !1318)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1647, file: !1262, line: 309, baseType: !1695, size: 64)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v1_t", file: !1262, line: 230, size: 64, elements: !1696, identifier: "_ZTS9int64v1_t")
!1696 = !{!1697}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1695, file: !1262, line: 230, baseType: !1698, size: 64)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 64, elements: !1292)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !1264, file: !27, line: 758, baseType: !1700, size: 192, offset: 21888)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FPUStatusFlags", file: !27, line: 332, size: 192, elements: !1701, identifier: "_ZTS14FPUStatusFlags")
!1701 = !{!1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1700, file: !27, line: 333, baseType: !62, size: 8)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "c0", scope: !1700, file: !27, line: 334, baseType: !62, size: 8, offset: 8)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1700, file: !27, line: 335, baseType: !62, size: 8, offset: 16)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !1700, file: !27, line: 336, baseType: !62, size: 8, offset: 24)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1700, file: !27, line: 337, baseType: !62, size: 8, offset: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !1700, file: !27, line: 338, baseType: !62, size: 8, offset: 40)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1700, file: !27, line: 339, baseType: !62, size: 8, offset: 48)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "c3", scope: !1700, file: !27, line: 340, baseType: !62, size: 8, offset: 56)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1700, file: !27, line: 342, baseType: !62, size: 8, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !1700, file: !27, line: 343, baseType: !62, size: 8, offset: 72)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1700, file: !27, line: 345, baseType: !62, size: 8, offset: 80)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !1700, file: !27, line: 346, baseType: !62, size: 8, offset: 88)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !1700, file: !27, line: 348, baseType: !62, size: 8, offset: 96)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !1700, file: !27, line: 349, baseType: !62, size: 8, offset: 104)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !1700, file: !27, line: 351, baseType: !62, size: 8, offset: 112)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !1700, file: !27, line: 352, baseType: !62, size: 8, offset: 120)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !1700, file: !27, line: 354, baseType: !62, size: 8, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !1700, file: !27, line: 355, baseType: !62, size: 8, offset: 136)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_9", scope: !1700, file: !27, line: 357, baseType: !62, size: 8, offset: 144)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !1700, file: !27, line: 358, baseType: !62, size: 8, offset: 152)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_padding", scope: !1700, file: !27, line: 360, baseType: !1723, size: 32, offset: 160)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 32, elements: !352)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "xcr0", scope: !1264, file: !27, line: 759, baseType: !1725, size: 64, offset: 22080)
!1725 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "XCR0", file: !27, line: 424, size: 64, elements: !1726, identifier: "_ZTS4XCR0")
!1726 = !{!1727, !1728, !1733}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1725, file: !27, line: 425, baseType: !635, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !27, line: 427, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !27, line: 427, size: 64, elements: !1730, identifier: "_ZTSN4XCR0Ut_E")
!1730 = !{!1731, !1732}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !1729, file: !27, line: 428, baseType: !8, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "edx", scope: !1729, file: !27, line: 429, baseType: !8, size: 32, offset: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !27, line: 433, baseType: !1734, size: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !27, line: 433, size: 64, elements: !1735, identifier: "_ZTSN4XCR0Ut0_E")
!1735 = !{!1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "x87_fpu_mmx", scope: !1734, file: !27, line: 434, baseType: !635, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1734, file: !27, line: 435, baseType: !635, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "ymm", scope: !1734, file: !27, line: 436, baseType: !635, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "bndreg", scope: !1734, file: !27, line: 437, baseType: !635, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "bndcsr", scope: !1734, file: !27, line: 438, baseType: !635, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "opmask", scope: !1734, file: !27, line: 439, baseType: !635, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "zmm_hi256", scope: !1734, file: !27, line: 440, baseType: !635, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "hi16_zmm", scope: !1734, file: !27, line: 441, baseType: !635, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1734, file: !27, line: 442, baseType: !635, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved0", scope: !1734, file: !27, line: 443, baseType: !635, size: 53, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "lwp", scope: !1734, file: !27, line: 444, baseType: !635, size: 1, offset: 62, flags: DIFlagBitField, extraData: i64 0)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved1", scope: !1734, file: !27, line: 445, baseType: !635, size: 1, offset: 63, flags: DIFlagBitField, extraData: i64 0)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "x87", scope: !1264, file: !27, line: 760, baseType: !1749, size: 4096, align: 128, offset: 22144)
!1749 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPU", file: !27, line: 314, size: 4096, align: 128, elements: !1750, identifier: "_ZTS3FPU")
!1750 = !{!1751, !1847, !1910}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1749, file: !27, line: 317, baseType: !1752, size: 4096)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !27, line: 315, size: 4096, elements: !1753, identifier: "_ZTSN3FPUUt_E")
!1753 = !{!1754, !1843}
!1754 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1752, baseType: !1755)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFSAVE", file: !27, line: 263, size: 1248, elements: !1756, identifier: "_ZTS8FpuFSAVE")
!1756 = !{!1757, !1775, !1776, !1797, !1798, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1755, file: !27, line: 264, baseType: !1758, size: 16)
!1758 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUControlWord", file: !27, line: 142, size: 16, elements: !1759, identifier: "_ZTS14FPUControlWord")
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1758, file: !27, line: 143, baseType: !28, size: 16)
!1761 = !DIDerivedType(tag: DW_TAG_member, scope: !1758, file: !27, line: 144, baseType: !1762, size: 16)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1758, file: !27, line: 144, size: 16, elements: !1763, identifier: "_ZTSN14FPUControlWordUt_E")
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "im", scope: !1762, file: !27, line: 145, baseType: !28, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "dm", scope: !1762, file: !27, line: 146, baseType: !28, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "zm", scope: !1762, file: !27, line: 147, baseType: !28, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "om", scope: !1762, file: !27, line: 148, baseType: !28, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "um", scope: !1762, file: !27, line: 149, baseType: !28, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1762, file: !27, line: 150, baseType: !28, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1762, file: !27, line: 151, baseType: !28, size: 2, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !1762, file: !27, line: 152, baseType: !39, size: 2, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !1762, file: !27, line: 153, baseType: !45, size: 2, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1762, file: !27, line: 154, baseType: !51, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !1762, file: !27, line: 155, baseType: !28, size: 3, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1755, file: !27, line: 265, baseType: !28, size: 16, offset: 16)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1755, file: !27, line: 266, baseType: !1777, size: 16, offset: 32)
!1777 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUStatusWord", file: !27, line: 100, size: 16, elements: !1778, identifier: "_ZTS13FPUStatusWord")
!1778 = !{!1779, !1780}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1777, file: !27, line: 101, baseType: !28, size: 16)
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !1777, file: !27, line: 102, baseType: !1781, size: 16)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1777, file: !27, line: 102, size: 16, elements: !1782, identifier: "_ZTSN13FPUStatusWordUt_E")
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !1781, file: !27, line: 103, baseType: !28, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !1781, file: !27, line: 104, baseType: !28, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !1781, file: !27, line: 105, baseType: !28, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !1781, file: !27, line: 106, baseType: !28, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !1781, file: !27, line: 107, baseType: !28, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !1781, file: !27, line: 108, baseType: !28, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !1781, file: !27, line: 109, baseType: !28, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1781, file: !27, line: 110, baseType: !28, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "c0", scope: !1781, file: !27, line: 111, baseType: !28, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !1781, file: !27, line: 112, baseType: !28, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !1781, file: !27, line: 113, baseType: !28, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !1781, file: !27, line: 114, baseType: !28, size: 3, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "c3", scope: !1781, file: !27, line: 115, baseType: !28, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1781, file: !27, line: 116, baseType: !28, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !1755, file: !27, line: 267, baseType: !28, size: 16, offset: 48)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !1755, file: !27, line: 268, baseType: !1799, size: 16, offset: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUTagWord", file: !27, line: 227, size: 16, elements: !1800, identifier: "_ZTS10FPUTagWord")
!1800 = !{!1801, !1802}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1799, file: !27, line: 228, baseType: !28, size: 16)
!1802 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !27, line: 229, baseType: !1803, size: 16)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1799, file: !27, line: 229, size: 16, elements: !1804, identifier: "_ZTSN10FPUTagWordUt_E")
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "tag0", scope: !1803, file: !27, line: 230, baseType: !55, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "tag1", scope: !1803, file: !27, line: 231, baseType: !55, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "tag2", scope: !1803, file: !27, line: 232, baseType: !55, size: 2, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "tag3", scope: !1803, file: !27, line: 233, baseType: !55, size: 2, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "tag4", scope: !1803, file: !27, line: 234, baseType: !55, size: 2, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "tag5", scope: !1803, file: !27, line: 235, baseType: !55, size: 2, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "tag6", scope: !1803, file: !27, line: 236, baseType: !55, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "tag7", scope: !1803, file: !27, line: 237, baseType: !55, size: 2, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1755, file: !27, line: 269, baseType: !28, size: 16, offset: 80)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1755, file: !27, line: 270, baseType: !8, size: 32, offset: 96)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1755, file: !27, line: 271, baseType: !1543, size: 16, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd2", scope: !1755, file: !27, line: 272, baseType: !28, size: 16, offset: 144)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1755, file: !27, line: 273, baseType: !8, size: 32, offset: 160)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1755, file: !27, line: 274, baseType: !1543, size: 16, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd3", scope: !1755, file: !27, line: 275, baseType: !28, size: 16, offset: 208)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1755, file: !27, line: 276, baseType: !1821, size: 1024, offset: 224)
!1821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1822, size: 1024, elements: !1306)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FPUStackElem", file: !27, line: 162, size: 128, elements: !1823, identifier: "_ZTS12FPUStackElem")
!1823 = !{!1824, !1839}
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !27, line: 163, baseType: !1825, size: 80)
!1825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1822, file: !27, line: 163, size: 80, elements: !1826, identifier: "_ZTSN12FPUStackElemUt_E")
!1826 = !{!1827, !1834}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1825, file: !27, line: 164, baseType: !1828, size: 80)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float80_t", file: !1262, line: 65, size: 80, elements: !1829, identifier: "_ZTS9float80_t")
!1829 = !{!1830}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1828, file: !1262, line: 66, baseType: !1831, size: 80)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 80, elements: !1832)
!1832 = !{!1833}
!1833 = !DISubrange(count: 10)
!1834 = !DIDerivedType(tag: DW_TAG_member, scope: !1825, file: !27, line: 165, baseType: !1835, size: 80)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1825, file: !27, line: 165, size: 80, elements: !1836, identifier: "_ZTSN12FPUStackElemUt_Ut_E")
!1836 = !{!1837, !1838}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "mmx", scope: !1835, file: !27, line: 166, baseType: !635, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "infinity", scope: !1835, file: !27, line: 167, baseType: !28, size: 16, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd", scope: !1822, file: !27, line: 170, baseType: !1840, size: 48, offset: 80)
!1840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 48, elements: !1841)
!1841 = !{!1842}
!1842 = !DISubrange(count: 6)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !1752, file: !27, line: 316, baseType: !1844, size: 2848, offset: 1248)
!1844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 2848, elements: !1845)
!1845 = !{!1846}
!1846 = !DISubrange(count: 356)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave32", scope: !1749, file: !27, line: 321, baseType: !1848, size: 4096)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !27, line: 319, size: 4096, elements: !1849, identifier: "_ZTSN3FPUUt0_E")
!1849 = !{!1850, !1906}
!1850 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1848, baseType: !1851)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFXSAVE", file: !27, line: 280, size: 3328, elements: !1852, identifier: "_ZTS9FpuFXSAVE")
!1852 = !{!1853, !1854, !1855, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1902, !1903, !1904}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1851, file: !27, line: 281, baseType: !1758, size: 16)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1851, file: !27, line: 282, baseType: !1777, size: 16, offset: 16)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !1851, file: !27, line: 283, baseType: !1856, size: 8, offset: 32)
!1856 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUAbridgedTagWord", file: !27, line: 245, size: 8, elements: !1857, identifier: "_ZTS18FPUAbridgedTagWord")
!1857 = !{!1858, !1859}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1856, file: !27, line: 246, baseType: !62, size: 8)
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1856, file: !27, line: 247, baseType: !1860, size: 8)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1856, file: !27, line: 247, size: 8, elements: !1861, identifier: "_ZTSN18FPUAbridgedTagWordUt_E")
!1861 = !{!1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "r0", scope: !1860, file: !27, line: 248, baseType: !61, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "r1", scope: !1860, file: !27, line: 249, baseType: !61, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "r2", scope: !1860, file: !27, line: 250, baseType: !61, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "r3", scope: !1860, file: !27, line: 251, baseType: !61, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "r4", scope: !1860, file: !27, line: 252, baseType: !61, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "r5", scope: !1860, file: !27, line: 253, baseType: !61, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "r6", scope: !1860, file: !27, line: 254, baseType: !61, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "r7", scope: !1860, file: !27, line: 255, baseType: !61, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1851, file: !27, line: 284, baseType: !62, size: 8, offset: 40)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1851, file: !27, line: 285, baseType: !28, size: 16, offset: 48)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1851, file: !27, line: 286, baseType: !8, size: 32, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1851, file: !27, line: 287, baseType: !1543, size: 16, offset: 96)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !1851, file: !27, line: 288, baseType: !28, size: 16, offset: 112)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1851, file: !27, line: 289, baseType: !8, size: 32, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1851, file: !27, line: 290, baseType: !1543, size: 16, offset: 160)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd2", scope: !1851, file: !27, line: 291, baseType: !28, size: 16, offset: 176)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1851, file: !27, line: 292, baseType: !1879, size: 32, offset: 192)
!1879 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUControlStatus", file: !27, line: 188, size: 32, elements: !1880, identifier: "_ZTS16FPUControlStatus")
!1880 = !{!1881, !1882}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1879, file: !27, line: 189, baseType: !8, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, scope: !1879, file: !27, line: 190, baseType: !1883, size: 32)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1879, file: !27, line: 190, size: 32, elements: !1884, identifier: "_ZTSN16FPUControlStatusUt_E")
!1884 = !{!1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !1883, file: !27, line: 191, baseType: !8, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !1883, file: !27, line: 192, baseType: !8, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !1883, file: !27, line: 193, baseType: !8, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !1883, file: !27, line: 194, baseType: !8, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !1883, file: !27, line: 195, baseType: !8, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !1883, file: !27, line: 196, baseType: !8, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "daz", scope: !1883, file: !27, line: 197, baseType: !8, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "im", scope: !1883, file: !27, line: 198, baseType: !8, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "dm", scope: !1883, file: !27, line: 199, baseType: !8, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "zm", scope: !1883, file: !27, line: 200, baseType: !8, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "om", scope: !1883, file: !27, line: 201, baseType: !8, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "um", scope: !1883, file: !27, line: 202, baseType: !8, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1883, file: !27, line: 203, baseType: !8, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "rn", scope: !1883, file: !27, line: 204, baseType: !8, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "rp", scope: !1883, file: !27, line: 205, baseType: !8, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "fz", scope: !1883, file: !27, line: 206, baseType: !8, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd", scope: !1883, file: !27, line: 207, baseType: !8, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1851, file: !27, line: 293, baseType: !1879, size: 32, offset: 224)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1851, file: !27, line: 294, baseType: !1821, size: 1024, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1851, file: !27, line: 295, baseType: !1905, size: 2048, offset: 1280)
!1905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1283, size: 2048, elements: !1299)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !1848, file: !27, line: 320, baseType: !1907, size: 768, offset: 3328)
!1907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 768, elements: !1908)
!1908 = !{!1909}
!1909 = !DISubrange(count: 96)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave64", scope: !1749, file: !27, line: 325, baseType: !1911, size: 4096)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !27, line: 323, size: 4096, elements: !1912, identifier: "_ZTSN3FPUUt1_E")
!1912 = !{!1913, !1927}
!1913 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1911, baseType: !1914)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFXSAVE64", file: !27, line: 299, size: 3328, elements: !1915, identifier: "_ZTS11FpuFXSAVE64")
!1915 = !{!1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1914, file: !27, line: 300, baseType: !1758, size: 16)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1914, file: !27, line: 301, baseType: !1777, size: 16, offset: 16)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !1914, file: !27, line: 302, baseType: !1856, size: 8, offset: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1914, file: !27, line: 303, baseType: !62, size: 8, offset: 40)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1914, file: !27, line: 304, baseType: !28, size: 16, offset: 48)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1914, file: !27, line: 305, baseType: !635, size: 64, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1914, file: !27, line: 306, baseType: !635, size: 64, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1914, file: !27, line: 307, baseType: !1879, size: 32, offset: 192)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1914, file: !27, line: 308, baseType: !1879, size: 32, offset: 224)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1914, file: !27, line: 309, baseType: !1821, size: 1024, offset: 256)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1914, file: !27, line: 310, baseType: !1905, size: 2048, offset: 1280)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !1911, file: !27, line: 324, baseType: !1907, size: 768, offset: 3328)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "seg_caches", scope: !1264, file: !27, line: 761, baseType: !1929, size: 768, align: 64, offset: 26240)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SegmentCaches", file: !27, line: 468, size: 768, align: 64, elements: !1930, identifier: "_ZTS13SegmentCaches")
!1930 = !{!1931, !1941, !1942, !1943, !1944, !1945}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1929, file: !27, line: 469, baseType: !1932, size: 128)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SegmentShadow", file: !27, line: 88, size: 128, elements: !1933, identifier: "_ZTS13SegmentShadow")
!1933 = !{!1934, !1939, !1940}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1932, file: !27, line: 92, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1932, file: !27, line: 89, size: 64, elements: !1936, identifier: "_ZTSN13SegmentShadowUt_E")
!1936 = !{!1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "dword", scope: !1935, file: !27, line: 90, baseType: !8, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "qword", scope: !1935, file: !27, line: 91, baseType: !635, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1932, file: !27, line: 93, baseType: !8, size: 32, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1932, file: !27, line: 94, baseType: !8, size: 32, offset: 96)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1929, file: !27, line: 470, baseType: !1932, size: 128, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1929, file: !27, line: 471, baseType: !1932, size: 128, offset: 256)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1929, file: !27, line: 472, baseType: !1932, size: 128, offset: 384)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1929, file: !27, line: 473, baseType: !1932, size: 128, offset: 512)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !1929, file: !27, line: 474, baseType: !1932, size: 128, offset: 640)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_t", file: !1262, line: 42, baseType: !1947)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr64_t", file: !1262, line: 41, baseType: !635)
!1948 = !DILocation(line: 54, column: 8, scope: !1257)
!1949 = !DILocation(line: 55, column: 10, scope: !1257)
!1950 = !DILocation(line: 56, column: 10, scope: !1257)
!1951 = !DILocation(line: 57, column: 10, scope: !1257)
!1952 = !DILocation(line: 58, column: 10, scope: !1257)
!1953 = !DILocation(line: 61, column: 9, scope: !1257)
!1954 = !DILocation(line: 62, column: 9, scope: !1257)
!1955 = !DILocation(line: 63, column: 20, scope: !1257)
!1956 = !DILocation(line: 63, column: 24, scope: !1257)
!1957 = !DILocation(line: 63, column: 28, scope: !1257)
!1958 = !DILocation(line: 69, column: 6, scope: !1257)
!1959 = !DILocation(line: 74, column: 20, scope: !1257)
!1960 = !DILocation(line: 74, column: 24, scope: !1257)
!1961 = !DILocation(line: 74, column: 28, scope: !1257)
!1962 = !DILocation(line: 74, column: 33, scope: !1257)
!1963 = !DILocation(line: 75, column: 20, scope: !1257)
!1964 = !DILocation(line: 75, column: 24, scope: !1257)
!1965 = !DILocation(line: 75, column: 28, scope: !1257)
!1966 = !DILocation(line: 75, column: 33, scope: !1257)
!1967 = !DILocation(line: 76, column: 20, scope: !1257)
!1968 = !DILocation(line: 76, column: 24, scope: !1257)
!1969 = !DILocation(line: 76, column: 28, scope: !1257)
!1970 = !DILocation(line: 76, column: 33, scope: !1257)
!1971 = !DILocation(line: 77, column: 20, scope: !1257)
!1972 = !DILocation(line: 77, column: 24, scope: !1257)
!1973 = !DILocation(line: 77, column: 28, scope: !1257)
!1974 = !DILocation(line: 77, column: 33, scope: !1257)
!1975 = !DILocation(line: 78, column: 20, scope: !1257)
!1976 = !DILocation(line: 78, column: 24, scope: !1257)
!1977 = !DILocation(line: 78, column: 28, scope: !1257)
!1978 = !DILocation(line: 78, column: 33, scope: !1257)
!1979 = !DILocation(line: 79, column: 20, scope: !1257)
!1980 = !DILocation(line: 79, column: 24, scope: !1257)
!1981 = !DILocation(line: 79, column: 28, scope: !1257)
!1982 = !DILocation(line: 79, column: 33, scope: !1257)
!1983 = !DILocation(line: 80, column: 20, scope: !1257)
!1984 = !DILocation(line: 80, column: 24, scope: !1257)
!1985 = !DILocation(line: 80, column: 28, scope: !1257)
!1986 = !DILocation(line: 80, column: 33, scope: !1257)
!1987 = !DILocation(line: 81, column: 20, scope: !1257)
!1988 = !DILocation(line: 81, column: 24, scope: !1257)
!1989 = !DILocation(line: 81, column: 28, scope: !1257)
!1990 = !DILocation(line: 81, column: 33, scope: !1257)
!1991 = !DILocation(line: 83, column: 21, scope: !1257)
!1992 = !DILocation(line: 83, column: 25, scope: !1257)
!1993 = !DILocation(line: 83, column: 29, scope: !1257)
!1994 = !DILocation(line: 83, column: 34, scope: !1257)
!1995 = !DILocation(line: 84, column: 21, scope: !1257)
!1996 = !DILocation(line: 84, column: 25, scope: !1257)
!1997 = !DILocation(line: 84, column: 29, scope: !1257)
!1998 = !DILocation(line: 84, column: 34, scope: !1257)
!1999 = !DILocation(line: 85, column: 21, scope: !1257)
!2000 = !DILocation(line: 85, column: 25, scope: !1257)
!2001 = !DILocation(line: 85, column: 29, scope: !1257)
!2002 = !DILocation(line: 85, column: 34, scope: !1257)
!2003 = !DILocation(line: 86, column: 21, scope: !1257)
!2004 = !DILocation(line: 86, column: 25, scope: !1257)
!2005 = !DILocation(line: 86, column: 29, scope: !1257)
!2006 = !DILocation(line: 86, column: 34, scope: !1257)
!2007 = !DILocation(line: 87, column: 21, scope: !1257)
!2008 = !DILocation(line: 87, column: 25, scope: !1257)
!2009 = !DILocation(line: 87, column: 28, scope: !1257)
!2010 = !DILocation(line: 87, column: 33, scope: !1257)
!2011 = !DILocation(line: 88, column: 21, scope: !1257)
!2012 = !DILocation(line: 88, column: 25, scope: !1257)
!2013 = !DILocation(line: 88, column: 28, scope: !1257)
!2014 = !DILocation(line: 88, column: 33, scope: !1257)
!2015 = !DILocation(line: 89, column: 22, scope: !1257)
!2016 = !DILocation(line: 89, column: 26, scope: !1257)
!2017 = !DILocation(line: 89, column: 30, scope: !1257)
!2018 = !DILocation(line: 89, column: 35, scope: !1257)
!2019 = !DILocation(line: 90, column: 22, scope: !1257)
!2020 = !DILocation(line: 90, column: 26, scope: !1257)
!2021 = !DILocation(line: 90, column: 30, scope: !1257)
!2022 = !DILocation(line: 90, column: 35, scope: !1257)
!2023 = !DILocation(line: 91, column: 22, scope: !1257)
!2024 = !DILocation(line: 91, column: 26, scope: !1257)
!2025 = !DILocation(line: 91, column: 30, scope: !1257)
!2026 = !DILocation(line: 91, column: 35, scope: !1257)
!2027 = !DILocation(line: 92, column: 22, scope: !1257)
!2028 = !DILocation(line: 92, column: 26, scope: !1257)
!2029 = !DILocation(line: 92, column: 30, scope: !1257)
!2030 = !DILocation(line: 92, column: 35, scope: !1257)
!2031 = !DILocation(line: 93, column: 22, scope: !1257)
!2032 = !DILocation(line: 93, column: 26, scope: !1257)
!2033 = !DILocation(line: 93, column: 30, scope: !1257)
!2034 = !DILocation(line: 93, column: 35, scope: !1257)
!2035 = !DILocation(line: 94, column: 22, scope: !1257)
!2036 = !DILocation(line: 94, column: 26, scope: !1257)
!2037 = !DILocation(line: 94, column: 30, scope: !1257)
!2038 = !DILocation(line: 94, column: 35, scope: !1257)
!2039 = !DILocation(line: 96, column: 20, scope: !1257)
!2040 = !DILocation(line: 96, column: 24, scope: !1257)
!2041 = !DILocation(line: 96, column: 28, scope: !1257)
!2042 = !DILocation(line: 97, column: 20, scope: !1257)
!2043 = !DILocation(line: 97, column: 24, scope: !1257)
!2044 = !DILocation(line: 97, column: 28, scope: !1257)
!2045 = !DILocation(line: 98, column: 20, scope: !1257)
!2046 = !DILocation(line: 98, column: 24, scope: !1257)
!2047 = !DILocation(line: 98, column: 28, scope: !1257)
!2048 = !DILocation(line: 99, column: 20, scope: !1257)
!2049 = !DILocation(line: 99, column: 24, scope: !1257)
!2050 = !DILocation(line: 99, column: 28, scope: !1257)
!2051 = !DILocation(line: 100, column: 20, scope: !1257)
!2052 = !DILocation(line: 100, column: 24, scope: !1257)
!2053 = !DILocation(line: 100, column: 28, scope: !1257)
!2054 = !DILocation(line: 101, column: 20, scope: !1257)
!2055 = !DILocation(line: 101, column: 24, scope: !1257)
!2056 = !DILocation(line: 101, column: 28, scope: !1257)
!2057 = !DILocation(line: 102, column: 20, scope: !1257)
!2058 = !DILocation(line: 102, column: 24, scope: !1257)
!2059 = !DILocation(line: 102, column: 28, scope: !1257)
!2060 = !DILocation(line: 103, column: 20, scope: !1257)
!2061 = !DILocation(line: 103, column: 24, scope: !1257)
!2062 = !DILocation(line: 103, column: 28, scope: !1257)
!2063 = !DILocation(line: 105, column: 21, scope: !1257)
!2064 = !DILocation(line: 105, column: 25, scope: !1257)
!2065 = !DILocation(line: 105, column: 28, scope: !1257)
!2066 = !DILocation(line: 106, column: 21, scope: !1257)
!2067 = !DILocation(line: 106, column: 25, scope: !1257)
!2068 = !DILocation(line: 106, column: 28, scope: !1257)
!2069 = !DILocation(line: 107, column: 22, scope: !1257)
!2070 = !DILocation(line: 107, column: 26, scope: !1257)
!2071 = !DILocation(line: 107, column: 30, scope: !1257)
!2072 = !DILocation(line: 108, column: 22, scope: !1257)
!2073 = !DILocation(line: 108, column: 26, scope: !1257)
!2074 = !DILocation(line: 108, column: 30, scope: !1257)
!2075 = !DILocation(line: 109, column: 22, scope: !1257)
!2076 = !DILocation(line: 109, column: 26, scope: !1257)
!2077 = !DILocation(line: 109, column: 30, scope: !1257)
!2078 = !DILocation(line: 110, column: 22, scope: !1257)
!2079 = !DILocation(line: 110, column: 26, scope: !1257)
!2080 = !DILocation(line: 110, column: 30, scope: !1257)
!2081 = !DILocation(line: 111, column: 22, scope: !1257)
!2082 = !DILocation(line: 111, column: 26, scope: !1257)
!2083 = !DILocation(line: 111, column: 30, scope: !1257)
!2084 = !DILocation(line: 112, column: 22, scope: !1257)
!2085 = !DILocation(line: 112, column: 26, scope: !1257)
!2086 = !DILocation(line: 112, column: 30, scope: !1257)
!2087 = !DILocation(line: 114, column: 20, scope: !1257)
!2088 = !DILocation(line: 114, column: 24, scope: !1257)
!2089 = !DILocation(line: 114, column: 28, scope: !1257)
!2090 = !DILocation(line: 116, column: 21, scope: !1257)
!2091 = !DILocation(line: 116, column: 25, scope: !1257)
!2092 = !DILocation(line: 116, column: 29, scope: !1257)
!2093 = !DILocation(line: 117, column: 21, scope: !1257)
!2094 = !DILocation(line: 117, column: 25, scope: !1257)
!2095 = !DILocation(line: 117, column: 29, scope: !1257)
!2096 = !DILocation(line: 118, column: 21, scope: !1257)
!2097 = !DILocation(line: 118, column: 25, scope: !1257)
!2098 = !DILocation(line: 118, column: 29, scope: !1257)
!2099 = !DILocation(line: 119, column: 21, scope: !1257)
!2100 = !DILocation(line: 119, column: 25, scope: !1257)
!2101 = !DILocation(line: 119, column: 29, scope: !1257)
!2102 = !DILocation(line: 120, column: 21, scope: !1257)
!2103 = !DILocation(line: 120, column: 25, scope: !1257)
!2104 = !DILocation(line: 120, column: 29, scope: !1257)
!2105 = !DILocation(line: 121, column: 21, scope: !1257)
!2106 = !DILocation(line: 121, column: 25, scope: !1257)
!2107 = !DILocation(line: 121, column: 29, scope: !1257)
!2108 = !DILocation(line: 122, column: 21, scope: !1257)
!2109 = !DILocation(line: 122, column: 25, scope: !1257)
!2110 = !DILocation(line: 122, column: 29, scope: !1257)
!2111 = !DILocation(line: 123, column: 21, scope: !1257)
!2112 = !DILocation(line: 123, column: 25, scope: !1257)
!2113 = !DILocation(line: 123, column: 29, scope: !1257)
!2114 = !DILocation(line: 124, column: 21, scope: !1257)
!2115 = !DILocation(line: 124, column: 25, scope: !1257)
!2116 = !DILocation(line: 124, column: 29, scope: !1257)
!2117 = !DILocation(line: 127, column: 21, scope: !1257)
!2118 = !DILocation(line: 127, column: 25, scope: !1257)
!2119 = !DILocation(line: 127, column: 28, scope: !1257)
!2120 = !DILocation(line: 128, column: 21, scope: !1257)
!2121 = !DILocation(line: 128, column: 25, scope: !1257)
!2122 = !DILocation(line: 128, column: 28, scope: !1257)
!2123 = !DILocation(line: 129, column: 22, scope: !1257)
!2124 = !DILocation(line: 129, column: 26, scope: !1257)
!2125 = !DILocation(line: 129, column: 30, scope: !1257)
!2126 = !DILocation(line: 130, column: 22, scope: !1257)
!2127 = !DILocation(line: 130, column: 26, scope: !1257)
!2128 = !DILocation(line: 130, column: 30, scope: !1257)
!2129 = !DILocation(line: 131, column: 22, scope: !1257)
!2130 = !DILocation(line: 131, column: 26, scope: !1257)
!2131 = !DILocation(line: 131, column: 30, scope: !1257)
!2132 = !DILocation(line: 132, column: 22, scope: !1257)
!2133 = !DILocation(line: 132, column: 26, scope: !1257)
!2134 = !DILocation(line: 132, column: 30, scope: !1257)
!2135 = !DILocation(line: 133, column: 22, scope: !1257)
!2136 = !DILocation(line: 133, column: 26, scope: !1257)
!2137 = !DILocation(line: 133, column: 30, scope: !1257)
!2138 = !DILocation(line: 134, column: 22, scope: !1257)
!2139 = !DILocation(line: 134, column: 26, scope: !1257)
!2140 = !DILocation(line: 134, column: 30, scope: !1257)
!2141 = !DILocation(line: 136, column: 21, scope: !1257)
!2142 = !DILocation(line: 136, column: 25, scope: !1257)
!2143 = !DILocation(line: 136, column: 29, scope: !1257)
!2144 = !DILocation(line: 137, column: 21, scope: !1257)
!2145 = !DILocation(line: 137, column: 25, scope: !1257)
!2146 = !DILocation(line: 137, column: 29, scope: !1257)
!2147 = !DILocation(line: 138, column: 21, scope: !1257)
!2148 = !DILocation(line: 138, column: 25, scope: !1257)
!2149 = !DILocation(line: 138, column: 29, scope: !1257)
!2150 = !DILocation(line: 139, column: 21, scope: !1257)
!2151 = !DILocation(line: 139, column: 25, scope: !1257)
!2152 = !DILocation(line: 139, column: 29, scope: !1257)
!2153 = !DILocation(line: 140, column: 21, scope: !1257)
!2154 = !DILocation(line: 140, column: 25, scope: !1257)
!2155 = !DILocation(line: 140, column: 29, scope: !1257)
!2156 = !DILocation(line: 141, column: 21, scope: !1257)
!2157 = !DILocation(line: 141, column: 25, scope: !1257)
!2158 = !DILocation(line: 141, column: 29, scope: !1257)
!2159 = !DILocation(line: 142, column: 21, scope: !1257)
!2160 = !DILocation(line: 142, column: 25, scope: !1257)
!2161 = !DILocation(line: 142, column: 29, scope: !1257)
!2162 = !DILocation(line: 143, column: 21, scope: !1257)
!2163 = !DILocation(line: 143, column: 25, scope: !1257)
!2164 = !DILocation(line: 143, column: 29, scope: !1257)
!2165 = !DILocation(line: 144, column: 20, scope: !1257)
!2166 = !DILocation(line: 144, column: 24, scope: !1257)
!2167 = !DILocation(line: 144, column: 27, scope: !1257)
!2168 = !DILocation(line: 145, column: 20, scope: !1257)
!2169 = !DILocation(line: 145, column: 24, scope: !1257)
!2170 = !DILocation(line: 145, column: 27, scope: !1257)
!2171 = !DILocation(line: 146, column: 21, scope: !1257)
!2172 = !DILocation(line: 146, column: 25, scope: !1257)
!2173 = !DILocation(line: 146, column: 29, scope: !1257)
!2174 = !DILocation(line: 147, column: 21, scope: !1257)
!2175 = !DILocation(line: 147, column: 25, scope: !1257)
!2176 = !DILocation(line: 147, column: 29, scope: !1257)
!2177 = !DILocation(line: 148, column: 21, scope: !1257)
!2178 = !DILocation(line: 148, column: 25, scope: !1257)
!2179 = !DILocation(line: 148, column: 29, scope: !1257)
!2180 = !DILocation(line: 149, column: 21, scope: !1257)
!2181 = !DILocation(line: 149, column: 25, scope: !1257)
!2182 = !DILocation(line: 149, column: 29, scope: !1257)
!2183 = !DILocation(line: 150, column: 21, scope: !1257)
!2184 = !DILocation(line: 150, column: 25, scope: !1257)
!2185 = !DILocation(line: 150, column: 29, scope: !1257)
!2186 = !DILocation(line: 151, column: 21, scope: !1257)
!2187 = !DILocation(line: 151, column: 25, scope: !1257)
!2188 = !DILocation(line: 151, column: 29, scope: !1257)
!2189 = !DILocation(line: 152, column: 21, scope: !1257)
!2190 = !DILocation(line: 152, column: 25, scope: !1257)
!2191 = !DILocation(line: 152, column: 29, scope: !1257)
!2192 = !DILocation(line: 155, column: 20, scope: !1257)
!2193 = !DILocation(line: 155, column: 24, scope: !1257)
!2194 = !DILocation(line: 155, column: 27, scope: !1257)
!2195 = !DILocation(line: 156, column: 20, scope: !1257)
!2196 = !DILocation(line: 156, column: 24, scope: !1257)
!2197 = !DILocation(line: 156, column: 27, scope: !1257)
!2198 = !DILocation(line: 157, column: 20, scope: !1257)
!2199 = !DILocation(line: 157, column: 24, scope: !1257)
!2200 = !DILocation(line: 157, column: 27, scope: !1257)
!2201 = !DILocation(line: 158, column: 20, scope: !1257)
!2202 = !DILocation(line: 158, column: 24, scope: !1257)
!2203 = !DILocation(line: 158, column: 27, scope: !1257)
!2204 = !DILocation(line: 159, column: 20, scope: !1257)
!2205 = !DILocation(line: 159, column: 24, scope: !1257)
!2206 = !DILocation(line: 159, column: 27, scope: !1257)
!2207 = !DILocation(line: 160, column: 20, scope: !1257)
!2208 = !DILocation(line: 160, column: 24, scope: !1257)
!2209 = !DILocation(line: 160, column: 27, scope: !1257)
!2210 = !DILocation(line: 164, column: 25, scope: !1257)
!2211 = !DILocation(line: 164, column: 30, scope: !1257)
!2212 = !DILocation(line: 164, column: 38, scope: !1257)
!2213 = !DILocation(line: 165, column: 25, scope: !1257)
!2214 = !DILocation(line: 165, column: 30, scope: !1257)
!2215 = !DILocation(line: 165, column: 38, scope: !1257)
!2216 = !DILocation(line: 205, column: 22, scope: !1257)
!2217 = !DILocation(line: 205, column: 16, scope: !1257)
!2218 = !DILocation(line: 205, column: 29, scope: !1257)
!2219 = !DILocation(line: 206, column: 22, scope: !1257)
!2220 = !DILocation(line: 206, column: 16, scope: !1257)
!2221 = !DILocation(line: 206, column: 29, scope: !1257)
!2222 = !DILocation(line: 207, column: 22, scope: !1257)
!2223 = !DILocation(line: 207, column: 16, scope: !1257)
!2224 = !DILocation(line: 207, column: 29, scope: !1257)
!2225 = !DILocation(line: 208, column: 22, scope: !1257)
!2226 = !DILocation(line: 208, column: 16, scope: !1257)
!2227 = !DILocation(line: 208, column: 29, scope: !1257)
!2228 = !DILocation(line: 209, column: 22, scope: !1257)
!2229 = !DILocation(line: 209, column: 16, scope: !1257)
!2230 = !DILocation(line: 209, column: 29, scope: !1257)
!2231 = !DILocation(line: 210, column: 22, scope: !1257)
!2232 = !DILocation(line: 210, column: 16, scope: !1257)
!2233 = !DILocation(line: 210, column: 29, scope: !1257)
!2234 = !DILocation(line: 211, column: 22, scope: !1257)
!2235 = !DILocation(line: 211, column: 16, scope: !1257)
!2236 = !DILocation(line: 211, column: 29, scope: !1257)
!2237 = !DILocation(line: 212, column: 22, scope: !1257)
!2238 = !DILocation(line: 212, column: 16, scope: !1257)
!2239 = !DILocation(line: 212, column: 29, scope: !1257)
!2240 = !DILocation(line: 214, column: 22, scope: !1257)
!2241 = !DILocation(line: 214, column: 16, scope: !1257)
!2242 = !DILocation(line: 214, column: 29, scope: !1257)
!2243 = !DILocation(line: 215, column: 22, scope: !1257)
!2244 = !DILocation(line: 215, column: 16, scope: !1257)
!2245 = !DILocation(line: 215, column: 29, scope: !1257)
!2246 = !DILocation(line: 216, column: 23, scope: !1257)
!2247 = !DILocation(line: 216, column: 17, scope: !1257)
!2248 = !DILocation(line: 216, column: 31, scope: !1257)
!2249 = !DILocation(line: 217, column: 23, scope: !1257)
!2250 = !DILocation(line: 217, column: 17, scope: !1257)
!2251 = !DILocation(line: 217, column: 31, scope: !1257)
!2252 = !DILocation(line: 218, column: 23, scope: !1257)
!2253 = !DILocation(line: 218, column: 17, scope: !1257)
!2254 = !DILocation(line: 218, column: 31, scope: !1257)
!2255 = !DILocation(line: 219, column: 23, scope: !1257)
!2256 = !DILocation(line: 219, column: 17, scope: !1257)
!2257 = !DILocation(line: 219, column: 31, scope: !1257)
!2258 = !DILocation(line: 220, column: 23, scope: !1257)
!2259 = !DILocation(line: 220, column: 17, scope: !1257)
!2260 = !DILocation(line: 220, column: 31, scope: !1257)
!2261 = !DILocation(line: 221, column: 23, scope: !1257)
!2262 = !DILocation(line: 221, column: 17, scope: !1257)
!2263 = !DILocation(line: 221, column: 31, scope: !1257)
!2264 = !DILocation(line: 245, column: 22, scope: !1257)
!2265 = !DILocation(line: 245, column: 16, scope: !1257)
!2266 = !DILocation(line: 245, column: 29, scope: !1257)
!2267 = !DILocation(line: 246, column: 22, scope: !1257)
!2268 = !DILocation(line: 246, column: 16, scope: !1257)
!2269 = !DILocation(line: 246, column: 29, scope: !1257)
!2270 = !DILocation(line: 247, column: 22, scope: !1257)
!2271 = !DILocation(line: 247, column: 16, scope: !1257)
!2272 = !DILocation(line: 247, column: 29, scope: !1257)
!2273 = !DILocation(line: 248, column: 22, scope: !1257)
!2274 = !DILocation(line: 248, column: 16, scope: !1257)
!2275 = !DILocation(line: 248, column: 29, scope: !1257)
!2276 = !DILocation(line: 249, column: 22, scope: !1257)
!2277 = !DILocation(line: 249, column: 16, scope: !1257)
!2278 = !DILocation(line: 249, column: 29, scope: !1257)
!2279 = !DILocation(line: 250, column: 22, scope: !1257)
!2280 = !DILocation(line: 250, column: 16, scope: !1257)
!2281 = !DILocation(line: 250, column: 29, scope: !1257)
!2282 = !DILocation(line: 251, column: 22, scope: !1257)
!2283 = !DILocation(line: 251, column: 16, scope: !1257)
!2284 = !DILocation(line: 251, column: 29, scope: !1257)
!2285 = !DILocation(line: 252, column: 22, scope: !1257)
!2286 = !DILocation(line: 252, column: 16, scope: !1257)
!2287 = !DILocation(line: 252, column: 29, scope: !1257)
!2288 = !DILocation(line: 255, column: 22, scope: !1257)
!2289 = !DILocation(line: 255, column: 16, scope: !1257)
!2290 = !DILocation(line: 255, column: 29, scope: !1257)
!2291 = !DILocation(line: 256, column: 22, scope: !1257)
!2292 = !DILocation(line: 256, column: 16, scope: !1257)
!2293 = !DILocation(line: 256, column: 29, scope: !1257)
!2294 = !DILocation(line: 257, column: 23, scope: !1257)
!2295 = !DILocation(line: 257, column: 17, scope: !1257)
!2296 = !DILocation(line: 257, column: 31, scope: !1257)
!2297 = !DILocation(line: 258, column: 23, scope: !1257)
!2298 = !DILocation(line: 258, column: 17, scope: !1257)
!2299 = !DILocation(line: 258, column: 31, scope: !1257)
!2300 = !DILocation(line: 259, column: 23, scope: !1257)
!2301 = !DILocation(line: 259, column: 17, scope: !1257)
!2302 = !DILocation(line: 259, column: 31, scope: !1257)
!2303 = !DILocation(line: 260, column: 23, scope: !1257)
!2304 = !DILocation(line: 260, column: 17, scope: !1257)
!2305 = !DILocation(line: 260, column: 31, scope: !1257)
!2306 = !DILocation(line: 261, column: 23, scope: !1257)
!2307 = !DILocation(line: 261, column: 17, scope: !1257)
!2308 = !DILocation(line: 261, column: 31, scope: !1257)
!2309 = !DILocation(line: 262, column: 23, scope: !1257)
!2310 = !DILocation(line: 262, column: 17, scope: !1257)
!2311 = !DILocation(line: 262, column: 31, scope: !1257)
!2312 = !DILocation(line: 285, column: 21, scope: !1257)
!2313 = !DILocation(line: 285, column: 24, scope: !1257)
!2314 = !DILocation(line: 285, column: 15, scope: !1257)
!2315 = !DILocation(line: 285, column: 33, scope: !1257)
!2316 = !DILocation(line: 286, column: 21, scope: !1257)
!2317 = !DILocation(line: 286, column: 24, scope: !1257)
!2318 = !DILocation(line: 286, column: 15, scope: !1257)
!2319 = !DILocation(line: 286, column: 33, scope: !1257)
!2320 = !DILocation(line: 287, column: 21, scope: !1257)
!2321 = !DILocation(line: 287, column: 24, scope: !1257)
!2322 = !DILocation(line: 287, column: 15, scope: !1257)
!2323 = !DILocation(line: 287, column: 33, scope: !1257)
!2324 = !DILocation(line: 288, column: 21, scope: !1257)
!2325 = !DILocation(line: 288, column: 24, scope: !1257)
!2326 = !DILocation(line: 288, column: 15, scope: !1257)
!2327 = !DILocation(line: 288, column: 33, scope: !1257)
!2328 = !DILocation(line: 289, column: 21, scope: !1257)
!2329 = !DILocation(line: 289, column: 24, scope: !1257)
!2330 = !DILocation(line: 289, column: 15, scope: !1257)
!2331 = !DILocation(line: 289, column: 33, scope: !1257)
!2332 = !DILocation(line: 290, column: 21, scope: !1257)
!2333 = !DILocation(line: 290, column: 24, scope: !1257)
!2334 = !DILocation(line: 290, column: 15, scope: !1257)
!2335 = !DILocation(line: 290, column: 33, scope: !1257)
!2336 = !DILocation(line: 291, column: 21, scope: !1257)
!2337 = !DILocation(line: 291, column: 24, scope: !1257)
!2338 = !DILocation(line: 291, column: 15, scope: !1257)
!2339 = !DILocation(line: 291, column: 33, scope: !1257)
!2340 = !DILocation(line: 292, column: 21, scope: !1257)
!2341 = !DILocation(line: 292, column: 24, scope: !1257)
!2342 = !DILocation(line: 292, column: 15, scope: !1257)
!2343 = !DILocation(line: 292, column: 33, scope: !1257)
!2344 = !DILocation(line: 318, column: 21, scope: !1257)
!2345 = !DILocation(line: 318, column: 25, scope: !1257)
!2346 = !DILocation(line: 318, column: 15, scope: !1257)
!2347 = !DILocation(line: 318, column: 34, scope: !1257)
!2348 = !DILocation(line: 318, column: 38, scope: !1257)
!2349 = !DILocation(line: 318, column: 45, scope: !1257)
!2350 = !DILocation(line: 319, column: 21, scope: !1257)
!2351 = !DILocation(line: 319, column: 25, scope: !1257)
!2352 = !DILocation(line: 319, column: 15, scope: !1257)
!2353 = !DILocation(line: 319, column: 34, scope: !1257)
!2354 = !DILocation(line: 319, column: 38, scope: !1257)
!2355 = !DILocation(line: 319, column: 45, scope: !1257)
!2356 = !DILocation(line: 320, column: 21, scope: !1257)
!2357 = !DILocation(line: 320, column: 25, scope: !1257)
!2358 = !DILocation(line: 320, column: 15, scope: !1257)
!2359 = !DILocation(line: 320, column: 34, scope: !1257)
!2360 = !DILocation(line: 320, column: 38, scope: !1257)
!2361 = !DILocation(line: 320, column: 45, scope: !1257)
!2362 = !DILocation(line: 321, column: 21, scope: !1257)
!2363 = !DILocation(line: 321, column: 25, scope: !1257)
!2364 = !DILocation(line: 321, column: 15, scope: !1257)
!2365 = !DILocation(line: 321, column: 34, scope: !1257)
!2366 = !DILocation(line: 321, column: 38, scope: !1257)
!2367 = !DILocation(line: 321, column: 45, scope: !1257)
!2368 = !DILocation(line: 322, column: 21, scope: !1257)
!2369 = !DILocation(line: 322, column: 25, scope: !1257)
!2370 = !DILocation(line: 322, column: 15, scope: !1257)
!2371 = !DILocation(line: 322, column: 34, scope: !1257)
!2372 = !DILocation(line: 322, column: 38, scope: !1257)
!2373 = !DILocation(line: 322, column: 45, scope: !1257)
!2374 = !DILocation(line: 323, column: 21, scope: !1257)
!2375 = !DILocation(line: 323, column: 25, scope: !1257)
!2376 = !DILocation(line: 323, column: 15, scope: !1257)
!2377 = !DILocation(line: 323, column: 34, scope: !1257)
!2378 = !DILocation(line: 323, column: 38, scope: !1257)
!2379 = !DILocation(line: 323, column: 45, scope: !1257)
!2380 = !DILocation(line: 324, column: 21, scope: !1257)
!2381 = !DILocation(line: 324, column: 25, scope: !1257)
!2382 = !DILocation(line: 324, column: 15, scope: !1257)
!2383 = !DILocation(line: 324, column: 34, scope: !1257)
!2384 = !DILocation(line: 324, column: 38, scope: !1257)
!2385 = !DILocation(line: 324, column: 45, scope: !1257)
!2386 = !DILocation(line: 325, column: 21, scope: !1257)
!2387 = !DILocation(line: 325, column: 25, scope: !1257)
!2388 = !DILocation(line: 325, column: 15, scope: !1257)
!2389 = !DILocation(line: 325, column: 34, scope: !1257)
!2390 = !DILocation(line: 325, column: 38, scope: !1257)
!2391 = !DILocation(line: 325, column: 45, scope: !1257)
!2392 = !DILocation(line: 328, column: 20, scope: !1257)
!2393 = !DILocation(line: 328, column: 26, scope: !1257)
!2394 = !DILocation(line: 329, column: 20, scope: !1257)
!2395 = !DILocation(line: 329, column: 26, scope: !1257)
!2396 = !DILocation(line: 330, column: 20, scope: !1257)
!2397 = !DILocation(line: 330, column: 26, scope: !1257)
!2398 = !DILocation(line: 331, column: 20, scope: !1257)
!2399 = !DILocation(line: 331, column: 26, scope: !1257)
!2400 = !DILocation(line: 332, column: 20, scope: !1257)
!2401 = !DILocation(line: 332, column: 26, scope: !1257)
!2402 = !DILocation(line: 333, column: 20, scope: !1257)
!2403 = !DILocation(line: 333, column: 26, scope: !1257)
!2404 = !DILocation(line: 334, column: 20, scope: !1257)
!2405 = !DILocation(line: 334, column: 26, scope: !1257)
!2406 = !DILocation(line: 337, column: 9, scope: !1257)
!2407 = !DILocation(line: 338, column: 9, scope: !1257)
!2408 = !DILocation(line: 339, column: 9, scope: !1257)
!2409 = !DILocation(line: 340, column: 9, scope: !1257)
!2410 = !DILocation(line: 341, column: 9, scope: !1257)
!2411 = !DILocation(line: 342, column: 9, scope: !1257)
!2412 = !DILocation(line: 343, column: 9, scope: !1257)
!2413 = !DILocation(line: 344, column: 9, scope: !1257)
!2414 = !DILocation(line: 347, column: 9, scope: !1257)
!2415 = !DILocation(line: 348, column: 9, scope: !1257)
!2416 = !DILocation(line: 349, column: 9, scope: !1257)
!2417 = !DILocation(line: 350, column: 9, scope: !1257)
!2418 = !DILocation(line: 351, column: 9, scope: !1257)
!2419 = !DILocation(line: 353, column: 9, scope: !1257)
!2420 = !DILocation(line: 357, column: 3, scope: !1257)
!2421 = distinct !DISubprogram(name: "__remill_intrinsics", scope: !2422, file: !2422, line: 35, type: !95, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, unit: !1, variables: !7)
!2422 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/Runtime/Intrinsics.cpp", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!2423 = !DILocation(line: 116, column: 1, scope: !2421)
!2424 = !{!2425, !2425, i64 0}
!2425 = !{!"long", !2426, i64 0}
!2426 = !{!"omnipotent char", !2427, i64 0}
!2427 = !{!"Simple C++ TBAA"}
!2428 = !{!2426, !2426, i64 0}
!2429 = !{!2430, !2426, i64 2065}
!2430 = !{!"_ZTS5State", !2426, i64 16, !2431, i64 2064, !2426, i64 2080, !2432, i64 2088, !2434, i64 2112, !2436, i64 2208, !2437, i64 2480, !2438, i64 2608, !2439, i64 2736, !2426, i64 2760, !2426, i64 2768, !2440, i64 3280}
!2431 = !{!"_ZTS10ArithFlags", !2426, i64 0, !2426, i64 1, !2426, i64 2, !2426, i64 3, !2426, i64 4, !2426, i64 5, !2426, i64 6, !2426, i64 7, !2426, i64 8, !2426, i64 9, !2426, i64 10, !2426, i64 11, !2426, i64 12, !2426, i64 13, !2426, i64 14, !2426, i64 15}
!2432 = !{!"_ZTS8Segments", !2433, i64 0, !2426, i64 2, !2433, i64 4, !2426, i64 6, !2433, i64 8, !2426, i64 10, !2433, i64 12, !2426, i64 14, !2433, i64 16, !2426, i64 18, !2433, i64 20, !2426, i64 22}
!2433 = !{!"short", !2426, i64 0}
!2434 = !{!"_ZTS12AddressSpace", !2425, i64 0, !2435, i64 8, !2425, i64 16, !2435, i64 24, !2425, i64 32, !2435, i64 40, !2425, i64 48, !2435, i64 56, !2425, i64 64, !2435, i64 72, !2425, i64 80, !2435, i64 88}
!2435 = !{!"_ZTS3Reg", !2426, i64 0}
!2436 = !{!"_ZTS3GPR", !2425, i64 0, !2435, i64 8, !2425, i64 16, !2435, i64 24, !2425, i64 32, !2435, i64 40, !2425, i64 48, !2435, i64 56, !2425, i64 64, !2435, i64 72, !2425, i64 80, !2435, i64 88, !2425, i64 96, !2435, i64 104, !2425, i64 112, !2435, i64 120, !2425, i64 128, !2435, i64 136, !2425, i64 144, !2435, i64 152, !2425, i64 160, !2435, i64 168, !2425, i64 176, !2435, i64 184, !2425, i64 192, !2435, i64 200, !2425, i64 208, !2435, i64 216, !2425, i64 224, !2435, i64 232, !2425, i64 240, !2435, i64 248, !2425, i64 256, !2435, i64 264}
!2437 = !{!"_ZTS8X87Stack", !2426, i64 0}
!2438 = !{!"_ZTS3MMX", !2426, i64 0}
!2439 = !{!"_ZTS14FPUStatusFlags", !2426, i64 0, !2426, i64 1, !2426, i64 2, !2426, i64 3, !2426, i64 4, !2426, i64 5, !2426, i64 6, !2426, i64 7, !2426, i64 8, !2426, i64 9, !2426, i64 10, !2426, i64 11, !2426, i64 12, !2426, i64 13, !2426, i64 14, !2426, i64 15, !2426, i64 16, !2426, i64 17, !2426, i64 18, !2426, i64 19, !2426, i64 20}
!2440 = !{!"_ZTS13SegmentCaches", !2441, i64 0, !2441, i64 16, !2441, i64 32, !2441, i64 48, !2441, i64 64, !2441, i64 80}
!2441 = !{!"_ZTS13SegmentShadow", !2426, i64 0, !2442, i64 8, !2442, i64 12}
!2442 = !{!"int", !2426, i64 0}
!2443 = !{!2430, !2426, i64 2067}
!2444 = !{!2430, !2426, i64 2071}
!2445 = !{!2430, !2426, i64 2073}
!2446 = !{!2430, !2426, i64 2077}
!2447 = !{!2430, !2426, i64 2069}
