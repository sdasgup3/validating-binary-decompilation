; ModuleID = '/tmp/tmp0xka4emb-target.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400e10__rodata_type = type <{ [112 x i8], [4 x i8] }>
%seg_601de0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602030__data_type = type <{ [16 x i8], [1024 x i8] }>
%__bss_start_type = type <{ [16 x i8], [2048 x i8] }>
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
@seg_400e10__rodata = internal constant %seg_400e10__rodata_type <{ [112 x i8] c"\01\00\02\00\00\00\00\00\5C\8F\C2\F5H,\C6\C0\AEG\E1zd\02\D7@\E5\D0\22\DB\F9\A1u\C0\0E-\B2\9D\EF\07_@\04V\0E-\B2\9D\BF?\ECQ\B8\1E\85\87c\C0y\E9&1\08<7@\ECQ\B8\1E\85\EB\F6?\9A\99\99\99\99\99\03@\00\00\00\00\00\00\F0?\00\00\00\00\00\00$@\00\00\00\00\00\00.@\00\00\00\00\00\00\18@", [4 x i8] c"%e\0A\00" }>
@seg_601de0__init_array = internal global %seg_601de0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400570_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400540___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602030__data = internal global %seg_602030__data_type <{ [16 x i8] zeroinitializer, [1024 x i8] c"\97\00\00\00\A0\00\00\00\89\00\00\00[\00\00\00Z\00\00\00\0F\00\00\00\83\00\00\00\0D\00\00\00\C9\00\00\00_\00\00\00`\00\00\005\00\00\00\C2\00\00\00\E9\00\00\00\07\00\00\00\E1\00\00\00\8C\00\00\00$\00\00\00g\00\00\00\1E\00\00\00E\00\00\00\8E\00\00\00\08\00\00\00c\00\00\00%\00\00\00\F0\00\00\00\15\00\00\00\0A\00\00\00\17\00\00\00\BE\00\00\00\06\00\00\00\94\00\00\00\F7\00\00\00x\00\00\00\EA\00\00\00K\00\00\00\00\00\00\00\1A\00\00\00\C5\00\00\00>\00\00\00^\00\00\00\FC\00\00\00\DB\00\00\00\CB\00\00\00u\00\00\00#\00\00\00\0B\00\00\00 \00\00\009\00\00\00\B1\00\00\00!\00\00\00X\00\00\00\ED\00\00\00\95\00\00\008\00\00\00W\00\00\00\AE\00\00\00\14\00\00\00}\00\00\00\88\00\00\00\AB\00\00\00\A8\00\00\00D\00\00\00\AF\00\00\00J\00\00\00\A5\00\00\00G\00\00\00\86\00\00\00\8B\00\00\000\00\00\00\1B\00\00\00\A6\00\00\00M\00\00\00\92\00\00\00\9E\00\00\00\E7\00\00\00S\00\00\00o\00\00\00\E5\00\00\00z\00\00\00<\00\00\00\D3\00\00\00\85\00\00\00\E6\00\00\00\DC\00\00\00i\00\00\00\5C\00\00\00)\00\00\007\00\00\00.\00\00\00\F5\00\00\00(\00\00\00\F4\00\00\00f\00\00\00\8F\00\00\006\00\00\00A\00\00\00\19\00\00\00?\00\00\00\A1\00\00\00\01\00\00\00\D8\00\00\00P\00\00\00I\00\00\00\D1\00\00\00L\00\00\00\84\00\00\00\BB\00\00\00\D0\00\00\00Y\00\00\00\12\00\00\00\A9\00\00\00\C8\00\00\00\C4\00\00\00\87\00\00\00\82\00\00\00t\00\00\00\BC\00\00\00\9F\00\00\00V\00\00\00\A4\00\00\00d\00\00\00m\00\00\00\C6\00\00\00\AD\00\00\00\BA\00\00\00\03\00\00\00@\00\00\004\00\00\00\D9\00\00\00\E2\00\00\00\FA\00\00\00|\00\00\00{\00\00\00\05\00\00\00\CA\00\00\00&\00\00\00\93\00\00\00v\00\00\00~\00\00\00\FF\00\00\00R\00\00\00U\00\00\00\D4\00\00\00\CF\00\00\00\CE\00\00\00;\00\00\00\E3\00\00\00/\00\00\00\10\00\00\00:\00\00\00\11\00\00\00\B6\00\00\00\BD\00\00\00\1C\00\00\00*\00\00\00\DF\00\00\00\B7\00\00\00\AA\00\00\00\D5\00\00\00w\00\00\00\F8\00\00\00\98\00\00\00\02\00\00\00,\00\00\00\9A\00\00\00\A3\00\00\00F\00\00\00\DD\00\00\00\99\00\00\00e\00\00\00\9B\00\00\00\A7\00\00\00+\00\00\00\AC\00\00\00\09\00\00\00\81\00\00\00\16\00\00\00'\00\00\00\FD\00\00\00\13\00\00\00b\00\00\00l\00\00\00n\00\00\00O\00\00\00q\00\00\00\E0\00\00\00\E8\00\00\00\B2\00\00\00\B9\00\00\00p\00\00\00h\00\00\00\DA\00\00\00\F6\00\00\00a\00\00\00\E4\00\00\00\FB\00\00\00\22\00\00\00\F2\00\00\00\C1\00\00\00\EE\00\00\00\D2\00\00\00\90\00\00\00\0C\00\00\00\BF\00\00\00\B3\00\00\00\A2\00\00\00\F1\00\00\00Q\00\00\003\00\00\00\91\00\00\00\EB\00\00\00\F9\00\00\00\0E\00\00\00\EF\00\00\00k\00\00\001\00\00\00\C0\00\00\00\D6\00\00\00\1F\00\00\00\B5\00\00\00\C7\00\00\00j\00\00\00\9D\00\00\00\B8\00\00\00T\00\00\00\CC\00\00\00\B0\00\00\00s\00\00\00y\00\00\002\00\00\00-\00\00\00\7F\00\00\00\04\00\00\00\96\00\00\00\FE\00\00\00\8A\00\00\00\EC\00\00\00\CD\00\00\00]\00\00\00\DE\00\00\00r\00\00\00C\00\00\00\1D\00\00\00\18\00\00\00H\00\00\00\F3\00\00\00\8D\00\00\00\80\00\00\00\C3\00\00\00N\00\00\00B\00\00\00\D7\00\00\00=\00\00\00\9C\00\00\00\B4\00\00\00" }>
@__bss_start = global %__bss_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400570_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400540___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400e00___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400d90___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @sub_400690_init_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400d50_lerp_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4006f0_noise_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400c00_grad_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400448__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4004d0_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400bb0_fade_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

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
declare extern_weak x86_64_sysvcc i64 @floor(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
define %struct.Memory* @sub_400580_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400580:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %7 = load i64, i64* %RBP, align 8
  %8 = add i64 %1, 1
  store i64 %8, i64* %PC, align 8
  %9 = load i64, i64* %RSP, align 8, !tbaa !2428
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %7, i64* %11, align 8
  %12 = load i64, i64* %PC, align 8
  store i64 %10, i64* %RBP, align 8, !tbaa !2428
  %13 = add i64 %9, -56
  store i64 %13, i64* %RSP, align 8, !tbaa !2428
  %14 = icmp ult i64 %10, 48
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
  %42 = add i64 %9, -12
  %43 = add i64 %12, 14
  store i64 %43, i64* %PC, align 8
  %44 = inttoptr i64 %42 to i32*
  store i32 0, i32* %44, align 4
  %45 = load i64, i64* %PC, align 8
  %46 = add i64 %45, 257
  %47 = add i64 %45, 5
  %48 = load i64, i64* %RSP, align 8, !tbaa !2428
  %49 = add i64 %48, -8
  %50 = inttoptr i64 %49 to i64*
  store i64 %47, i64* %50, align 8
  store i64 %49, i64* %RSP, align 8, !tbaa !2428
  store i64 %46, i64* %PC, align 8, !tbaa !2428
  %51 = tail call %struct.Memory* @sub_400690_init_renamed_(%struct.State* nonnull %0, i64 %46, %struct.Memory* %2)
  %52 = load i64, i64* %PC, align 8
  %53 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_400e10__rodata_type* @seg_400e10__rodata to i64), i64 8) to i64*), align 8
  %54 = bitcast [32 x %union.VectorReg]* %5 to double*
  %55 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %53, i64* %55, align 1, !tbaa !2451
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %57 = bitcast i64* %56 to double*
  store double 0.000000e+00, double* %57, align 1, !tbaa !2451
  %58 = bitcast %union.VectorReg* %6 to i8*
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %60 = bitcast %union.VectorReg* %6 to i32*
  store i32 0, i32* %60, align 1, !tbaa !2453
  %61 = getelementptr inbounds i8, i8* %58, i64 4
  %62 = bitcast i8* %61 to i32*
  store i32 0, i32* %62, align 1, !tbaa !2453
  %63 = bitcast i64* %59 to i32*
  store i32 0, i32* %63, align 1, !tbaa !2453
  %64 = getelementptr inbounds i8, i8* %58, i64 12
  %65 = bitcast i8* %64 to i32*
  store i32 0, i32* %65, align 1, !tbaa !2453
  %66 = load i64, i64* %RBP, align 8
  %67 = add i64 %66, -40
  %68 = add i64 %52, 16
  store i64 %68, i64* %PC, align 8
  %69 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  %70 = load i64, i64* %69, align 1
  %71 = inttoptr i64 %67 to i64*
  store i64 %70, i64* %71, align 8
  %72 = load i64, i64* %RBP, align 8
  %73 = add i64 %72, -16
  %74 = load i64, i64* %PC, align 8
  %75 = add i64 %74, 5
  store i64 %75, i64* %PC, align 8
  %76 = load i64, i64* %55, align 1
  %77 = inttoptr i64 %73 to i64*
  store i64 %76, i64* %77, align 8
  %78 = load i64, i64* %RBP, align 8
  %79 = add i64 %78, -44
  %80 = load i32, i32* %EAX, align 4
  %81 = load i64, i64* %PC, align 8
  %82 = add i64 %81, 3
  store i64 %82, i64* %PC, align 8
  %83 = inttoptr i64 %79 to i32*
  store i32 %80, i32* %83, align 4
  %84 = bitcast i64* %59 to double*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %87 = bitcast i64* %86 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_4005ac

block_4005ff:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2
  %88 = load i64, i64* %RBP, align 8
  %89 = add i64 %88, -16
  %90 = add i64 %164, 5
  store i64 %90, i64* %PC, align 8
  %91 = inttoptr i64 %89 to i64*
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %55, align 1, !tbaa !2451
  store double 0.000000e+00, double* %57, align 1, !tbaa !2451
  %93 = add i64 %88, -24
  %94 = add i64 %164, 10
  store i64 %94, i64* %PC, align 8
  %95 = inttoptr i64 %93 to i64*
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %69, align 1, !tbaa !2451
  store double 0.000000e+00, double* %84, align 1, !tbaa !2451
  %97 = add i64 %88, -32
  %98 = add i64 %164, 15
  store i64 %98, i64* %PC, align 8
  %99 = inttoptr i64 %97 to i64*
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %85, align 1, !tbaa !2451
  store double 0.000000e+00, double* %87, align 1, !tbaa !2451
  %101 = add i64 %164, 241
  %102 = add i64 %164, 20
  %103 = load i64, i64* %RSP, align 8, !tbaa !2428
  %104 = add i64 %103, -8
  %105 = inttoptr i64 %104 to i64*
  store i64 %102, i64* %105, align 8
  store i64 %104, i64* %RSP, align 8, !tbaa !2428
  store i64 %101, i64* %PC, align 8, !tbaa !2428
  %106 = tail call %struct.Memory* @sub_4006f0_noise_renamed_(%struct.State* nonnull %0, i64 %101, %struct.Memory* %159)
  %107 = load i64, i64* %RBP, align 8
  %108 = add i64 %107, -40
  %109 = load i64, i64* %PC, align 8
  %110 = add i64 %109, 5
  store i64 %110, i64* %PC, align 8
  %111 = load double, double* %54, align 1
  %112 = inttoptr i64 %108 to double*
  %113 = load double, double* %112, align 8
  %114 = fadd double %111, %113
  %115 = add i64 %109, 10
  store i64 %115, i64* %PC, align 8
  %116 = inttoptr i64 %108 to double*
  store double %114, double* %116, align 8
  %117 = load i64, i64* %PC, align 8
  %118 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_400e10__rodata_type* @seg_400e10__rodata to i64), i64 72) to i64*), align 8
  store i64 %118, i64* %55, align 1, !tbaa !2451
  store double 0.000000e+00, double* %57, align 1, !tbaa !2451
  %119 = load i64, i64* %RBP, align 8
  %120 = add i64 %119, -24
  %121 = add i64 %117, 13
  store i64 %121, i64* %PC, align 8
  %.cast5 = bitcast i64 %118 to double
  %122 = inttoptr i64 %120 to double*
  %123 = load double, double* %122, align 8
  %124 = fadd double %.cast5, %123
  store double %124, double* %54, align 1, !tbaa !2451
  store i64 0, i64* %56, align 1, !tbaa !2451
  %125 = add i64 %117, 18
  store i64 %125, i64* %PC, align 8
  %126 = inttoptr i64 %120 to double*
  store double %124, double* %126, align 8
  %127 = load i64, i64* %PC, align 8
  %128 = add i64 %127, -67
  store i64 %128, i64* %PC, align 8, !tbaa !2428
  br label %block_4005ec

block_4005ec:                                     ; preds = %block_4005df, %block_4005ff
  %129 = phi i64 [ %.pre21, %block_4005df ], [ %128, %block_4005ff ]
  %MEMORY.0 = phi %struct.Memory* [ %200, %block_4005df ], [ %106, %block_4005ff ]
  %130 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_400e10__rodata_type* @seg_400e10__rodata to i64), i64 56) to i64*), align 8
  store i64 %130, i64* %55, align 1, !tbaa !2451
  store double 0.000000e+00, double* %57, align 1, !tbaa !2451
  %131 = load i64, i64* %RBP, align 8
  %132 = add i64 %131, -24
  %133 = add i64 %129, 13
  store i64 %133, i64* %PC, align 8
  %.cast4 = bitcast i64 %130 to double
  %134 = inttoptr i64 %132 to double*
  %135 = load double, double* %134, align 8
  %136 = fcmp uno double %.cast4, %135
  br i1 %136, label %137, label %147

; <label>:137:                                    ; preds = %block_4005ec
  %138 = fadd double %.cast4, %135
  %139 = bitcast double %138 to i64
  %140 = and i64 %139, 9221120237041090560
  %141 = icmp eq i64 %140, 9218868437227405312
  %142 = and i64 %139, 2251799813685247
  %143 = icmp ne i64 %142, 0
  %144 = and i1 %141, %143
  br i1 %144, label %145, label %153

; <label>:145:                                    ; preds = %137
  %146 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %133, %struct.Memory* %MEMORY.0) #13
  %.pre22 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2

; <label>:147:                                    ; preds = %block_4005ec
  %148 = fcmp ogt double %.cast4, %135
  br i1 %148, label %153, label %149

; <label>:149:                                    ; preds = %147
  %150 = fcmp olt double %.cast4, %135
  br i1 %150, label %153, label %151

; <label>:151:                                    ; preds = %149
  %152 = fcmp oeq double %.cast4, %135
  br i1 %152, label %153, label %157

; <label>:153:                                    ; preds = %151, %149, %147, %137
  %154 = phi i8 [ 0, %147 ], [ 0, %149 ], [ 1, %151 ], [ 1, %137 ]
  %155 = phi i8 [ 0, %147 ], [ 0, %149 ], [ 0, %151 ], [ 1, %137 ]
  %156 = phi i8 [ 0, %147 ], [ 1, %149 ], [ 0, %151 ], [ 1, %137 ]
  store i8 %154, i8* %32, align 1, !tbaa !2454
  store i8 %155, i8* %23, align 1, !tbaa !2454
  store i8 %156, i8* %16, align 1, !tbaa !2454
  br label %157

; <label>:157:                                    ; preds = %153, %151
  store i8 0, i8* %41, align 1, !tbaa !2454
  store i8 0, i8* %35, align 1, !tbaa !2454
  store i8 0, i8* %29, align 1, !tbaa !2454
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2: ; preds = %157, %145
  %158 = phi i64 [ %.pre22, %145 ], [ %133, %157 ]
  %159 = phi %struct.Memory* [ %146, %145 ], [ %MEMORY.0, %157 ]
  %160 = load i8, i8* %16, align 1, !tbaa !2432
  %161 = load i8, i8* %32, align 1, !tbaa !2448
  %162 = or i8 %161, %160
  %163 = icmp ne i8 %162, 0
  %.v29 = select i1 %163, i64 59, i64 6
  %164 = add i64 %158, %.v29
  store i64 %164, i64* %PC, align 8, !tbaa !2428
  br i1 %163, label %block_400634, label %block_4005ff

block_4005df:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %165 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_400e10__rodata_type* @seg_400e10__rodata to i64), i64 48) to i64*), align 16
  store i64 %165, i64* %55, align 1, !tbaa !2451
  store double 0.000000e+00, double* %57, align 1, !tbaa !2451
  %166 = load i64, i64* %RBP, align 8
  %167 = add i64 %166, -32
  %168 = add i64 %205, 13
  store i64 %168, i64* %PC, align 8
  %169 = inttoptr i64 %167 to i64*
  store i64 %165, i64* %169, align 8
  %.pre21 = load i64, i64* %PC, align 8
  br label %block_4005ec

block_4005cc:                                     ; preds = %block_400634, %block_4005bf
  %170 = phi i64 [ %.pre19, %block_4005bf ], [ %221, %block_400634 ]
  %MEMORY.1 = phi %struct.Memory* [ %252, %block_4005bf ], [ %159, %block_400634 ]
  %171 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_400e10__rodata_type* @seg_400e10__rodata to i64), i64 32) to i64*), align 16
  store i64 %171, i64* %55, align 1, !tbaa !2451
  store double 0.000000e+00, double* %57, align 1, !tbaa !2451
  %172 = load i64, i64* %RBP, align 8
  %173 = add i64 %172, -24
  %174 = add i64 %170, 13
  store i64 %174, i64* %PC, align 8
  %.cast3 = bitcast i64 %171 to double
  %175 = inttoptr i64 %173 to double*
  %176 = load double, double* %175, align 8
  %177 = fcmp uno double %.cast3, %176
  br i1 %177, label %178, label %188

; <label>:178:                                    ; preds = %block_4005cc
  %179 = fadd double %.cast3, %176
  %180 = bitcast double %179 to i64
  %181 = and i64 %180, 9221120237041090560
  %182 = icmp eq i64 %181, 9218868437227405312
  %183 = and i64 %180, 2251799813685247
  %184 = icmp ne i64 %183, 0
  %185 = and i1 %182, %184
  br i1 %185, label %186, label %194

; <label>:186:                                    ; preds = %178
  %187 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %174, %struct.Memory* %MEMORY.1) #13
  %.pre20 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

; <label>:188:                                    ; preds = %block_4005cc
  %189 = fcmp ogt double %.cast3, %176
  br i1 %189, label %194, label %190

; <label>:190:                                    ; preds = %188
  %191 = fcmp olt double %.cast3, %176
  br i1 %191, label %194, label %192

; <label>:192:                                    ; preds = %190
  %193 = fcmp oeq double %.cast3, %176
  br i1 %193, label %194, label %198

; <label>:194:                                    ; preds = %192, %190, %188, %178
  %195 = phi i8 [ 0, %188 ], [ 0, %190 ], [ 1, %192 ], [ 1, %178 ]
  %196 = phi i8 [ 0, %188 ], [ 0, %190 ], [ 0, %192 ], [ 1, %178 ]
  %197 = phi i8 [ 0, %188 ], [ 1, %190 ], [ 0, %192 ], [ 1, %178 ]
  store i8 %195, i8* %32, align 1, !tbaa !2454
  store i8 %196, i8* %23, align 1, !tbaa !2454
  store i8 %197, i8* %16, align 1, !tbaa !2454
  br label %198

; <label>:198:                                    ; preds = %194, %192
  store i8 0, i8* %41, align 1, !tbaa !2454
  store i8 0, i8* %35, align 1, !tbaa !2454
  store i8 0, i8* %29, align 1, !tbaa !2454
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1: ; preds = %198, %186
  %199 = phi i64 [ %.pre20, %186 ], [ %174, %198 ]
  %200 = phi %struct.Memory* [ %187, %186 ], [ %MEMORY.1, %198 ]
  %201 = load i8, i8* %16, align 1, !tbaa !2432
  %202 = load i8, i8* %32, align 1, !tbaa !2448
  %203 = or i8 %202, %201
  %204 = icmp ne i8 %203, 0
  %.v28 = select i1 %204, i64 119, i64 6
  %205 = add i64 %199, %.v28
  store i64 %205, i64* %PC, align 8, !tbaa !2428
  br i1 %204, label %block_400650, label %block_4005df

block_4005bf:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %206 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_400e10__rodata_type* @seg_400e10__rodata to i64), i64 24) to i64*), align 8
  store i64 %206, i64* %55, align 1, !tbaa !2451
  store double 0.000000e+00, double* %57, align 1, !tbaa !2451
  %207 = load i64, i64* %RBP, align 8
  %208 = add i64 %207, -24
  %209 = add i64 %257, 13
  store i64 %209, i64* %PC, align 8
  %210 = inttoptr i64 %208 to i64*
  store i64 %206, i64* %210, align 8
  %.pre19 = load i64, i64* %PC, align 8
  br label %block_4005cc

block_400634:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2
  %211 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_400e10__rodata_type* @seg_400e10__rodata to i64), i64 64) to i64*), align 16
  store i64 %211, i64* %55, align 1, !tbaa !2451
  store double 0.000000e+00, double* %57, align 1, !tbaa !2451
  %212 = load i64, i64* %RBP, align 8
  %213 = add i64 %212, -24
  %214 = add i64 %164, 18
  store i64 %214, i64* %PC, align 8
  %.cast6 = bitcast i64 %211 to double
  %215 = inttoptr i64 %213 to double*
  %216 = load double, double* %215, align 8
  %217 = fadd double %.cast6, %216
  store double %217, double* %54, align 1, !tbaa !2451
  store i64 0, i64* %56, align 1, !tbaa !2451
  %218 = add i64 %164, 23
  store i64 %218, i64* %PC, align 8
  %219 = inttoptr i64 %213 to double*
  store double %217, double* %219, align 8
  %220 = load i64, i64* %PC, align 8
  %221 = add i64 %220, -127
  store i64 %221, i64* %PC, align 8, !tbaa !2428
  br label %block_4005cc

block_4005ac:                                     ; preds = %block_400650, %block_400580
  %222 = phi i64 [ %.pre, %block_400580 ], [ %320, %block_400650 ]
  %MEMORY.2 = phi %struct.Memory* [ %51, %block_400580 ], [ %200, %block_400650 ]
  %223 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_400e10__rodata_type* @seg_400e10__rodata to i64), i64 16) to i64*), align 16
  store i64 %223, i64* %55, align 1, !tbaa !2451
  store double 0.000000e+00, double* %57, align 1, !tbaa !2451
  %224 = load i64, i64* %RBP, align 8
  %225 = add i64 %224, -16
  %226 = add i64 %222, 13
  store i64 %226, i64* %PC, align 8
  %.cast = bitcast i64 %223 to double
  %227 = inttoptr i64 %225 to double*
  %228 = load double, double* %227, align 8
  %229 = fcmp uno double %.cast, %228
  br i1 %229, label %230, label %240

; <label>:230:                                    ; preds = %block_4005ac
  %231 = fadd double %.cast, %228
  %232 = bitcast double %231 to i64
  %233 = and i64 %232, 9221120237041090560
  %234 = icmp eq i64 %233, 9218868437227405312
  %235 = and i64 %232, 2251799813685247
  %236 = icmp ne i64 %235, 0
  %237 = and i1 %234, %236
  br i1 %237, label %238, label %246

; <label>:238:                                    ; preds = %230
  %239 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %226, %struct.Memory* %MEMORY.2) #13
  %.pre18 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:240:                                    ; preds = %block_4005ac
  %241 = fcmp ogt double %.cast, %228
  br i1 %241, label %246, label %242

; <label>:242:                                    ; preds = %240
  %243 = fcmp olt double %.cast, %228
  br i1 %243, label %246, label %244

; <label>:244:                                    ; preds = %242
  %245 = fcmp oeq double %.cast, %228
  br i1 %245, label %246, label %250

; <label>:246:                                    ; preds = %244, %242, %240, %230
  %247 = phi i8 [ 0, %240 ], [ 0, %242 ], [ 1, %244 ], [ 1, %230 ]
  %248 = phi i8 [ 0, %240 ], [ 0, %242 ], [ 0, %244 ], [ 1, %230 ]
  %249 = phi i8 [ 0, %240 ], [ 1, %242 ], [ 0, %244 ], [ 1, %230 ]
  store i8 %247, i8* %32, align 1, !tbaa !2454
  store i8 %248, i8* %23, align 1, !tbaa !2454
  store i8 %249, i8* %16, align 1, !tbaa !2454
  br label %250

; <label>:250:                                    ; preds = %246, %244
  store i8 0, i8* %41, align 1, !tbaa !2454
  store i8 0, i8* %35, align 1, !tbaa !2454
  store i8 0, i8* %29, align 1, !tbaa !2454
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %250, %238
  %251 = phi i64 [ %.pre18, %238 ], [ %226, %250 ]
  %252 = phi %struct.Memory* [ %239, %238 ], [ %MEMORY.2, %250 ]
  %253 = load i8, i8* %16, align 1, !tbaa !2432
  %254 = load i8, i8* %32, align 1, !tbaa !2448
  %255 = or i8 %254, %253
  %256 = icmp ne i8 %255, 0
  %.v = select i1 %256, i64 179, i64 6
  %257 = add i64 %251, %.v
  store i64 %257, i64* %PC, align 8, !tbaa !2428
  br i1 %256, label %block_40066c, label %block_4005bf

block_40066c:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %AL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 add (i64 ptrtoint (%seg_400e10__rodata_type* @seg_400e10__rodata to i64), i64 112), i64* %RDI, align 8, !tbaa !2428
  %258 = load i64, i64* %RBP, align 8
  %259 = add i64 %258, -40
  %260 = add i64 %257, 15
  store i64 %260, i64* %PC, align 8
  %261 = inttoptr i64 %259 to i64*
  %262 = load i64, i64* %261, align 8
  store i64 %262, i64* %55, align 1, !tbaa !2451
  store double 0.000000e+00, double* %57, align 1, !tbaa !2451
  store i8 1, i8* %AL, align 1, !tbaa !2454
  %263 = add i64 %257, -508
  %264 = add i64 %257, 22
  %265 = load i64, i64* %RSP, align 8, !tbaa !2428
  %266 = add i64 %265, -8
  %267 = inttoptr i64 %266 to i64*
  store i64 %264, i64* %267, align 8
  store i64 %266, i64* %RSP, align 8, !tbaa !2428
  store i64 %263, i64* %PC, align 8, !tbaa !2428
  %268 = tail call fastcc %struct.Memory* @ext_400470_printf(%struct.State* nonnull %0, %struct.Memory* %252)
  %269 = load i64, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  %270 = load i64, i64* %RBP, align 8
  %271 = add i64 %270, -48
  %272 = load i32, i32* %EAX, align 4
  %273 = add i64 %269, 5
  store i64 %273, i64* %PC, align 8
  %274 = inttoptr i64 %271 to i32*
  store i32 %272, i32* %274, align 4
  %275 = load i32, i32* %ECX, align 4
  %276 = zext i32 %275 to i64
  %277 = load i64, i64* %PC, align 8
  store i64 %276, i64* %RAX, align 8, !tbaa !2428
  %278 = load i64, i64* %RSP, align 8
  %279 = add i64 %278, 48
  store i64 %279, i64* %RSP, align 8, !tbaa !2428
  %280 = icmp ugt i64 %278, -49
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %16, align 1, !tbaa !2432
  %282 = trunc i64 %279 to i32
  %283 = and i32 %282, 255
  %284 = tail call i32 @llvm.ctpop.i32(i32 %283) #12
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  %287 = xor i8 %286, 1
  store i8 %287, i8* %23, align 1, !tbaa !2446
  %288 = xor i64 %278, 16
  %289 = xor i64 %288, %279
  %290 = lshr i64 %289, 4
  %291 = trunc i64 %290 to i8
  %292 = and i8 %291, 1
  store i8 %292, i8* %29, align 1, !tbaa !2447
  %293 = icmp eq i64 %279, 0
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %32, align 1, !tbaa !2448
  %295 = lshr i64 %279, 63
  %296 = trunc i64 %295 to i8
  store i8 %296, i8* %35, align 1, !tbaa !2449
  %297 = lshr i64 %278, 63
  %298 = xor i64 %295, %297
  %299 = add nuw nsw i64 %298, %295
  %300 = icmp eq i64 %299, 2
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %41, align 1, !tbaa !2450
  %302 = add i64 %277, 7
  store i64 %302, i64* %PC, align 8
  %303 = add i64 %278, 56
  %304 = inttoptr i64 %279 to i64*
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %RBP, align 8, !tbaa !2428
  store i64 %303, i64* %RSP, align 8, !tbaa !2428
  %306 = add i64 %277, 8
  store i64 %306, i64* %PC, align 8
  %307 = inttoptr i64 %303 to i64*
  %308 = load i64, i64* %307, align 8
  store i64 %308, i64* %PC, align 8, !tbaa !2428
  %309 = add i64 %278, 64
  store i64 %309, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %268

block_400650:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %310 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_400e10__rodata_type* @seg_400e10__rodata to i64), i64 40) to i64*), align 8
  store i64 %310, i64* %55, align 1, !tbaa !2451
  store double 0.000000e+00, double* %57, align 1, !tbaa !2451
  %311 = load i64, i64* %RBP, align 8
  %312 = add i64 %311, -16
  %313 = add i64 %205, 18
  store i64 %313, i64* %PC, align 8
  %.cast7 = bitcast i64 %310 to double
  %314 = inttoptr i64 %312 to double*
  %315 = load double, double* %314, align 8
  %316 = fadd double %.cast7, %315
  store double %316, double* %54, align 1, !tbaa !2451
  store i64 0, i64* %56, align 1, !tbaa !2451
  %317 = add i64 %205, 23
  store i64 %317, i64* %PC, align 8
  %318 = inttoptr i64 %312 to double*
  store double %316, double* %318, align 8
  %319 = load i64, i64* %PC, align 8
  %320 = add i64 %319, -187
  store i64 %320, i64* %PC, align 8, !tbaa !2428
  br label %block_4005ac
}

; Function Attrs: noinline
define %struct.Memory* @sub_400570_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400570:
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
  %13 = tail call %struct.Memory* @sub_400500_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400448__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400448:
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
  store i8 %19, i8* %8, align 1, !tbaa !2448
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !2449
  store i8 0, i8* %10, align 1, !tbaa !2450
  store i8 0, i8* %7, align 1, !tbaa !2447
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2428
  br i1 %18, label %block_40045a, label %block_400458

block_400458:                                     ; preds = %block_400448
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_40045a

block_40045a:                                     ; preds = %block_400458, %block_400448
  %27 = phi i64 [ %22, %block_400448 ], [ %.pre1, %block_400458 ]
  %28 = phi i64 [ %4, %block_400448 ], [ %.pre, %block_400458 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400448 ], [ %26, %block_400458 ]
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

; Function Attrs: noinline
define %struct.Memory* @sub_4004d0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4004d0:
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
  %10 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)) to i32), i32 255)) #12
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1, !tbaa !2446
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295)), i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64))), i64 4) to i8), i8 1), i8* %15, align 1, !tbaa !2447
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 zext (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0) to i8), i8* %16, align 1, !tbaa !2448
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 trunc (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 63) to i8), i8* %17, align 1, !tbaa !2449
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 63), i64 lshr (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 63)), i64 xor (i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63), i64 lshr (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 63))), i64 2) to i8), i8* %18, align 1, !tbaa !2450
  store i64 %6, i64* %RBP, align 8, !tbaa !2428
  %19 = add i64 %8, select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), i64 39, i64 16)
  store i64 %19, i64* %PC, align 8, !tbaa !2428
  br i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), label %block_4004f8, label %block_4004e1

block_4004f8:                                     ; preds = %block_4004e1, %block_4004d0
  %20 = phi i64 [ %27, %block_4004e1 ], [ %19, %block_4004d0 ]
  %21 = add i64 %20, 1
  store i64 %21, i64* %PC, align 8
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %RBP, align 8, !tbaa !2428
  store i64 %5, i64* %RSP, align 8, !tbaa !2428
  %23 = add i64 %20, 2
  store i64 %23, i64* %PC, align 8
  %24 = inttoptr i64 %5 to i64*
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %PC, align 8, !tbaa !2428
  %26 = add i64 %5, 8
  store i64 %26, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4004e1:                                     ; preds = %block_4004d0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %9, align 1, !tbaa !2432
  store i8 1, i8* %14, align 1, !tbaa !2446
  store i8 1, i8* %16, align 1, !tbaa !2448
  store i8 0, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %18, align 1, !tbaa !2450
  store i8 0, i8* %15, align 1, !tbaa !2447
  %27 = add i64 %8, add (i64 select (i1 icmp eq (i64 sub (i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64 ptrtoint (%__bss_start_type* @__bss_start to i64)), i64 0), i64 39, i64 16), i64 23)
  store i64 %27, i64* %PC, align 8, !tbaa !2428
  br label %block_4004f8
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006f0_noise(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4006f0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
; Matched:  %RCX.i523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
; %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
; Matched:%var_2_40:  %var_2_40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
; %var_2_3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
%var_2_4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
; Matched:%var_2_56:  %var_2_56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; %var_2_5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
; Matched:%var_2_660:  %var_2_660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
; %var_2_6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
; Matched:%var_2_669:  %var_2_669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
; %var_2_7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
; Matched:%var_2_678:  %var_2_678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
; %var_2_8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
; Matched:%var_2_1100:  %var_2_1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
; %var_2_9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
; Matched:%var_2_4:  %var_2_4 = load i64, i64* %RBP.i, align 8
; %var_2_10 = load i64, i64* %RBP, align 8
; Matched:%var_2_5:  %var_2_5 = add i64 %1, 1
; %var_2_11 = add i64 %1, 1
; Matched:\<badref\>:  store i64 %var_2_5, i64* %var_2_3, align 8
; store i64 %var_2_11, i64* %PC, align 8
; Matched:%var_2_7:  %var_2_7 = load i64, i64* %var_2_6, align 8
; %var_2_12 = load i64, i64* %RSP, align 8
; Matched:%var_2_8:  %var_2_8 = add i64 %var_2_7, -8
; %var_2_13 = add i64 %var_2_12, -8
; Matched:%var_2_9:  %var_2_9 = inttoptr i64 %var_2_8 to i64*
; %var_2_14 = inttoptr i64 %var_2_13 to i64*
; Matched:\<badref\>:  store i64 %var_2_4, i64* %var_2_9, align 8
; store i64 %var_2_10, i64* %var_2_14, align 8
%var_2_15 = load i64, i64* %PC, align 8
; Matched:\<badref\>:  store i64 %var_2_8, i64* %RBP.i, align 8
; store i64 %var_2_13, i64* %RBP, align 8
; Matched:%var_2_11:  %var_2_11 = add i64 %var_2_7, -280
; %var_2_16 = add i64 %var_2_12, -280
; Matched:\<badref\>:  store i64 %var_2_11, i64* %var_2_6, align 8
; store i64 %var_2_16, i64* %RSP, align 8
; Matched:%var_2_12:  %var_2_12 = icmp ult i64 %var_2_8, 272
; %var_2_17 = icmp ult i64 %var_2_13, 272
; Matched:%var_2_13:  %var_2_13 = zext i1 %var_2_12 to i8
; %var_2_18 = zext i1 %var_2_17 to i8
%var_2_19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
; Matched:\<badref\>:  store i8 %var_2_13, i8* %var_2_14, align 1
; store i8 %var_2_18, i8* %var_2_19, align 1
; Matched:%var_2_15:  %var_2_15 = trunc i64 %var_2_11 to i32
; %var_2_20 = trunc i64 %var_2_16 to i32
; Matched:%var_2_16:  %var_2_16 = and i32 %var_2_15, 255
; %var_2_21 = and i32 %var_2_20, 255
; Matched:%var_2_17:  %var_2_17 = tail call i32 @llvm.ctpop.i32(i32 %var_2_16)
; %var_2_22 = tail call i32 @llvm.ctpop.i32(i32 %var_2_21) #12
; Matched:%var_2_18:  %var_2_18 = trunc i32 %var_2_17 to i8
; %var_2_23 = trunc i32 %var_2_22 to i8
; Matched:%var_2_19:  %var_2_19 = and i8 %var_2_18, 1
; %var_2_24 = and i8 %var_2_23, 1
; Matched:%var_2_20:  %var_2_20 = xor i8 %var_2_19, 1
; %var_2_25 = xor i8 %var_2_24, 1
%var_2_26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
; Matched:\<badref\>:  store i8 %var_2_20, i8* %var_2_21, align 1
; store i8 %var_2_25, i8* %var_2_26, align 1
; Matched:%var_2_22:  %var_2_22 = xor i64 %var_2_8, 16
; %var_2_27 = xor i64 %var_2_13, 16
; Matched:%var_2_23:  %var_2_23 = xor i64 %var_2_22, %var_2_11
; %var_2_28 = xor i64 %var_2_27, %var_2_16
; Matched:%var_2_24:  %var_2_24 = lshr i64 %var_2_23, 4
; %var_2_29 = lshr i64 %var_2_28, 4
; Matched:%var_2_25:  %var_2_25 = trunc i64 %var_2_24 to i8
; %var_2_30 = trunc i64 %var_2_29 to i8
; Matched:%var_2_26:  %var_2_26 = and i8 %var_2_25, 1
; %var_2_31 = and i8 %var_2_30, 1
%var_2_32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
; Matched:\<badref\>:  store i8 %var_2_26, i8* %var_2_27, align 1
; store i8 %var_2_31, i8* %var_2_32, align 1
; Matched:%var_2_28:  %var_2_28 = icmp eq i64 %var_2_11, 0
; %var_2_33 = icmp eq i64 %var_2_16, 0
; Matched:%var_2_29:  %var_2_29 = zext i1 %var_2_28 to i8
; %var_2_34 = zext i1 %var_2_33 to i8
%var_2_35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
; Matched:\<badref\>:  store i8 %var_2_29, i8* %var_2_30, align 1
; store i8 %var_2_34, i8* %var_2_35, align 1
; Matched:%var_2_31:  %var_2_31 = lshr i64 %var_2_11, 63
; %var_2_36 = lshr i64 %var_2_16, 63
; Matched:%var_2_32:  %var_2_32 = trunc i64 %var_2_31 to i8
; %var_2_37 = trunc i64 %var_2_36 to i8
%var_2_38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
; Matched:\<badref\>:  store i8 %var_2_32, i8* %var_2_33, align 1
; store i8 %var_2_37, i8* %var_2_38, align 1
; Matched:%var_2_34:  %var_2_34 = lshr i64 %var_2_8, 63
; %var_2_39 = lshr i64 %var_2_13, 63
; Matched:%var_2_35:  %var_2_35 = xor i64 %var_2_31, %var_2_34
; %var_2_40 = xor i64 %var_2_36, %var_2_39
; Matched:%var_2_36:  %var_2_36 = add nuw nsw i64 %var_2_35, %var_2_34
; %var_2_41 = add nuw nsw i64 %var_2_40, %var_2_39
; Matched:%var_2_37:  %var_2_37 = icmp eq i64 %var_2_36, 2
; %var_2_42 = icmp eq i64 %var_2_41, 2
; Matched:%var_2_38:  %var_2_38 = zext i1 %var_2_37 to i8
; %var_2_43 = zext i1 %var_2_42 to i8
%var_2_44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
; Matched:\<badref\>:  store i8 %var_2_38, i8* %var_2_39, align 1
; store i8 %var_2_43, i8* %var_2_44, align 1
; Matched:%var_2_41:  %var_2_41 = add i64 %var_2_7, -16
; %var_2_45 = add i64 %var_2_12, -16
; Matched:%var_2_643:  %var_2_643 = add i64 %var_2_633, 15
; %var_2_46 = add i64 %var_2_15, 15
; Matched:\<badref\>:  store i64 %var_2_643, i64* %var_2_3, align 8
; store i64 %var_2_46, i64* %PC, align 8
; Matched:%var_2_43:  %var_2_43 = bitcast [32 x %union.VectorReg]* %var_2_40 to double*
; %var_2_47 = bitcast [32 x %union.VectorReg]* %var_2_3 to double*
; Matched:%var_2_44:  %var_2_44 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_48 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %var_2_3, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_45:  %var_2_45 = load i64, i64* %var_2_44, align 1
; %var_2_49 = load i64, i64* %var_2_48, align 1
; Matched:%var_2_46:  %var_2_46 = inttoptr i64 %var_2_41 to i64*
; %var_2_50 = inttoptr i64 %var_2_45 to i64*
; Matched:\<badref\>:  store i64 %var_2_45, i64* %var_2_46, align 8
; store i64 %var_2_49, i64* %var_2_50, align 8
; Matched:%var_2_48:  %var_2_48 = load i64, i64* %RBP.i, align 8
; %var_2_51 = load i64, i64* %RBP, align 8
; Matched:%var_2_49:  %var_2_49 = add i64 %var_2_48, -16
; %var_2_52 = add i64 %var_2_51, -16
%var_2_53 = load i64, i64* %PC, align 8
; Matched:%var_2_243:  %var_2_243 = add i64 %var_2_242, 5
; %var_2_54 = add i64 %var_2_53, 5
; Matched:\<badref\>:  store i64 %var_2_243, i64* %var_2_3, align 8
; store i64 %var_2_54, i64* %PC, align 8
; Matched:%var_2_52:  %var_2_52 = bitcast %union.VectorReg* %var_2_47 to double*
; %var_2_55 = bitcast %union.VectorReg* %var_2_4 to double*
%var_2_56 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_4, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_54:  %var_2_54 = load i64, i64* %var_2_53, align 1
; %var_2_57 = load i64, i64* %var_2_56, align 1
; Matched:%var_2_55:  %var_2_55 = inttoptr i64 %var_2_49 to i64*
; %var_2_58 = inttoptr i64 %var_2_52 to i64*
; Matched:\<badref\>:  store i64 %var_2_54, i64* %var_2_55, align 8
; store i64 %var_2_57, i64* %var_2_58, align 8
; Matched:%var_2_57:  %var_2_57 = load i64, i64* %RBP.i, align 8
; %var_2_59 = load i64, i64* %RBP, align 8
; Matched:%var_2_58:  %var_2_58 = add i64 %var_2_57, -24
; %var_2_60 = add i64 %var_2_59, -24
%var_2_61 = load i64, i64* %PC, align 8
; Matched:%var_2_634:  %var_2_634 = add i64 %var_2_633, 5
; %var_2_62 = add i64 %var_2_61, 5
; Matched:\<badref\>:  store i64 %var_2_634, i64* %var_2_3, align 8
; store i64 %var_2_62, i64* %PC, align 8
; Matched:%var_2_61:  %var_2_61 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_56, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_63 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_5, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:%var_2_62:  %var_2_62 = load i64, i64* %var_2_61, align 1
; %var_2_64 = load i64, i64* %var_2_63, align 1
; Matched:%var_2_63:  %var_2_63 = inttoptr i64 %var_2_58 to i64*
; %var_2_65 = inttoptr i64 %var_2_60 to i64*
; Matched:\<badref\>:  store i64 %var_2_62, i64* %var_2_63, align 8
; store i64 %var_2_64, i64* %var_2_65, align 8
; Matched:%var_2_64:  %var_2_64 = bitcast [32 x %union.VectorReg]* %var_2_40 to i8*
; %var_2_66 = bitcast [32 x %union.VectorReg]* %var_2_3 to i8*
; Matched:%var_2_160:  %var_2_160 = load i64, i64* %RBP.i, align 8
; %var_2_67 = load i64, i64* %RBP, align 8
; Matched:%var_2_230:  %var_2_230 = add i64 %var_2_229, -8
; %var_2_68 = add i64 %var_2_67, -8
%var_2_69 = load i64, i64* %PC, align 8
; Matched:%var_2_163:  %var_2_163 = add i64 %var_2_162, 5
; %var_2_70 = add i64 %var_2_69, 5
; Matched:\<badref\>:  store i64 %var_2_163, i64* %var_2_3, align 8
; store i64 %var_2_70, i64* %PC, align 8
; Matched:%var_2_164:  %var_2_164 = inttoptr i64 %var_2_161 to i64*
; %var_2_71 = inttoptr i64 %var_2_68 to i64*
; Matched:%var_2_165:  %var_2_165 = load i64, i64* %var_2_164, align 8
; %var_2_72 = load i64, i64* %var_2_71, align 8
; Matched:\<badref\>:  store i64 %var_2_165, i64* %var_2_44, align 1
; store i64 %var_2_72, i64* %var_2_48, align 1
%var_2_73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
%var_2_74 = bitcast i64* %var_2_73 to double*
store double 0.000000e+00, double* %var_2_74, align 1
; Matched:%var_2_73:  %var_2_73 = add i64 %var_2_67, -650
; %var_2_75 = add i64 %var_2_69, -650
; Matched:%var_2_167:  %var_2_167 = add i64 %var_2_162, 10
; %var_2_76 = add i64 %var_2_69, 10
%var_2_77 = load i64, i64* %RSP, align 8
%var_2_78 = add i64 %var_2_77, -8
; Matched:%var_2_256:  %var_2_256 = inttoptr i64 %var_2_255 to i64*
; %var_2_79 = inttoptr i64 %var_2_78 to i64*
; Matched:\<badref\>:  store i64 %var_2_167, i64* %var_2_170, align 8
; store i64 %var_2_76, i64* %var_2_79, align 8
; Matched:\<badref\>:  store i64 %var_2_255, i64* %var_2_6, align 8
; store i64 %var_2_78, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_73, i64* %var_2_3, align 8
; store i64 %var_2_75, i64* %PC, align 8
%var_2_80 = tail call fastcc %struct.Memory* @ext_602c78_floor(%struct.State* nonnull %0, %struct.Memory* %2)
%var_2_81 = load i64, i64* %PC, align 8
; Matched:%var_2_80:  %var_2_80 = load double, double* %var_2_43, align 1
; %var_2_82 = load double, double* %var_2_47, align 1
; Matched:%var_2_81:  %var_2_81 = tail call double @llvm.trunc.f64(double %var_2_80)
; %var_2_83 = tail call double @llvm.trunc.f64(double %var_2_82) #12
; Matched:%var_2_82:  %var_2_82 = tail call double @llvm.fabs.f64(double %var_2_81)
; %var_2_84 = tail call double @llvm.fabs.f64(double %var_2_83) #12
; Matched:%var_2_114:  %var_2_114 = fcmp ogt double %var_2_113, 0x41DFFFFFFFC00000
; %var_2_85 = fcmp ogt double %var_2_84, 0x41DFFFFFFFC00000
; Matched:%var_2_146:  %var_2_146 = fptosi double %var_2_143 to i32
; %var_2_86 = fptosi double %var_2_83 to i32
; Matched:%var_2_147:  %var_2_147 = and i32 %var_2_146, 255
; %var_2_87 = and i32 %var_2_86, 255
; Matched:  %.op13 = zext i32 %var_2_116 to i64
; %.op = zext i32 %var_2_87 to i64
; Matched:%var_2_86:  %var_2_86 = select i1 %var_2_83, i64 0, i64 %.op
; %var_2_88 = select i1 %var_2_85, i64 0, i64 %.op
; Matched:%var_2_87:  %var_2_87 = trunc i64 %var_2_86 to i32
; %var_2_89 = trunc i64 %var_2_88 to i32
; Matched:\<badref\>:  store i64 %var_2_86, i64* %RAX.i629, align 8
; store i64 %var_2_88, i64* %RAX, align 8
store i8 0, i8* %var_2_19, align 1
; Matched:%var_2_119:  %var_2_119 = tail call i32 @llvm.ctpop.i32(i32 %var_2_118)
; %var_2_90 = tail call i32 @llvm.ctpop.i32(i32 %var_2_89) #12
; Matched:%var_2_151:  %var_2_151 = trunc i32 %var_2_150 to i8
; %var_2_91 = trunc i32 %var_2_90 to i8
; Matched:%var_2_152:  %var_2_152 = and i8 %var_2_151, 1
; %var_2_92 = and i8 %var_2_91, 1
; Matched:%var_2_122:  %var_2_122 = xor i8 %var_2_121, 1
; %var_2_93 = xor i8 %var_2_92, 1
; Matched:\<badref\>:  store i8 %var_2_91, i8* %var_2_21, align 1
; store i8 %var_2_93, i8* %var_2_26, align 1
; Matched:%var_2_92:  %var_2_92 = icmp eq i32 %var_2_87, 0
; %var_2_94 = icmp eq i32 %var_2_89, 0
; Matched:%var_2_93:  %var_2_93 = zext i1 %var_2_92 to i8
; %var_2_95 = zext i1 %var_2_94 to i8
; Matched:\<badref\>:  store i8 %var_2_93, i8* %var_2_30, align 1
; store i8 %var_2_95, i8* %var_2_35, align 1
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_44, align 1
store i8 0, i8* %var_2_32, align 1
; Matched:%var_2_94:  %var_2_94 = load i64, i64* %RBP.i, align 8
; %var_2_96 = load i64, i64* %RBP, align 8
; Matched:%var_2_95:  %var_2_95 = add i64 %var_2_94, -28
; %var_2_97 = add i64 %var_2_96, -28
; Matched:%var_2_158:  %var_2_158 = add i64 %var_2_141, 12
; %var_2_98 = add i64 %var_2_81, 12
; Matched:\<badref\>:  store i64 %var_2_158, i64* %var_2_3, align 8
; store i64 %var_2_98, i64* %PC, align 8
; Matched:%var_2_97:  %var_2_97 = inttoptr i64 %var_2_95 to i32*
; %var_2_99 = inttoptr i64 %var_2_97 to i32*
; Matched:\<badref\>:  store i32 %var_2_87, i32* %var_2_97, align 4
; store i32 %var_2_89, i32* %var_2_99, align 4
; Matched:%var_2_246:  %var_2_246 = load i64, i64* %RBP.i, align 8
; %var_2_100 = load i64, i64* %RBP, align 8
; Matched:%var_2_247:  %var_2_247 = add i64 %var_2_246, -16
; %var_2_101 = add i64 %var_2_100, -16
%var_2_102 = load i64, i64* %PC, align 8
; Matched:%var_2_1508:  %var_2_1508 = add i64 %var_2_1507, 5
; %var_2_103 = add i64 %var_2_102, 5
; Matched:\<badref\>:  store i64 %var_2_1508, i64* %var_2_3, align 8
; store i64 %var_2_103, i64* %PC, align 8
; Matched:%var_2_250:  %var_2_250 = inttoptr i64 %var_2_247 to i64*
; %var_2_104 = inttoptr i64 %var_2_101 to i64*
; Matched:%var_2_251:  %var_2_251 = load i64, i64* %var_2_250, align 8
; %var_2_105 = load i64, i64* %var_2_104, align 8
; Matched:\<badref\>:  store i64 %var_2_251, i64* %var_2_44, align 1
; store i64 %var_2_105, i64* %var_2_48, align 1
store double 0.000000e+00, double* %var_2_74, align 1
; Matched:%var_2_104:  %var_2_104 = add i64 %var_2_100, -672
; %var_2_106 = add i64 %var_2_102, -672
; Matched:%var_2_214:  %var_2_214 = add i64 %var_2_209, 10
; %var_2_107 = add i64 %var_2_102, 10
%var_2_108 = load i64, i64* %RSP, align 8
%var_2_109 = add i64 %var_2_108, -8
; Matched:%var_2_217:  %var_2_217 = inttoptr i64 %var_2_216 to i64*
; %var_2_110 = inttoptr i64 %var_2_109 to i64*
; Matched:\<badref\>:  store i64 %var_2_214, i64* %var_2_217, align 8
; store i64 %var_2_107, i64* %var_2_110, align 8
; Matched:\<badref\>:  store i64 %var_2_1472, i64* %var_2_6, align 8
; store i64 %var_2_109, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_104, i64* %var_2_3, align 8
; store i64 %var_2_106, i64* %PC, align 8
%var_2_111 = tail call fastcc %struct.Memory* @ext_602c78_floor(%struct.State* nonnull %0, %struct.Memory* %var_2_80)
%var_2_112 = load i64, i64* %PC, align 8
; Matched:%var_2_111:  %var_2_111 = load double, double* %var_2_43, align 1
; %var_2_113 = load double, double* %var_2_47, align 1
; Matched:%var_2_112:  %var_2_112 = tail call double @llvm.trunc.f64(double %var_2_111)
; %var_2_114 = tail call double @llvm.trunc.f64(double %var_2_113) #12
; Matched:%var_2_113:  %var_2_113 = tail call double @llvm.fabs.f64(double %var_2_112)
; %var_2_115 = tail call double @llvm.fabs.f64(double %var_2_114) #12
; Matched:%var_2_145:  %var_2_145 = fcmp ogt double %var_2_144, 0x41DFFFFFFFC00000
; %var_2_116 = fcmp ogt double %var_2_115, 0x41DFFFFFFFC00000
; Matched:%var_2_84:  %var_2_84 = fptosi double %var_2_81 to i32
; %var_2_117 = fptosi double %var_2_114 to i32
; Matched:%var_2_85:  %var_2_85 = and i32 %var_2_84, 255
; %var_2_118 = and i32 %var_2_117, 255
; Matched:  %.op14 = zext i32 %var_2_147 to i64
; %.op13 = zext i32 %var_2_118 to i64
; Matched:%var_2_117:  %var_2_117 = select i1 %var_2_114, i64 0, i64 %.op13
; %var_2_119 = select i1 %var_2_116, i64 0, i64 %.op13
; Matched:%var_2_118:  %var_2_118 = trunc i64 %var_2_117 to i32
; %var_2_120 = trunc i64 %var_2_119 to i32
; Matched:\<badref\>:  store i64 %var_2_117, i64* %RAX.i629, align 8
; store i64 %var_2_119, i64* %RAX, align 8
store i8 0, i8* %var_2_19, align 1
; Matched:%var_2_150:  %var_2_150 = tail call i32 @llvm.ctpop.i32(i32 %var_2_149)
; %var_2_121 = tail call i32 @llvm.ctpop.i32(i32 %var_2_120) #12
; Matched:%var_2_89:  %var_2_89 = trunc i32 %var_2_88 to i8
; %var_2_122 = trunc i32 %var_2_121 to i8
; Matched:%var_2_90:  %var_2_90 = and i8 %var_2_89, 1
; %var_2_123 = and i8 %var_2_122, 1
; Matched:%var_2_153:  %var_2_153 = xor i8 %var_2_152, 1
; %var_2_124 = xor i8 %var_2_123, 1
; Matched:\<badref\>:  store i8 %var_2_122, i8* %var_2_21, align 1
; store i8 %var_2_124, i8* %var_2_26, align 1
; Matched:%var_2_123:  %var_2_123 = icmp eq i32 %var_2_118, 0
; %var_2_125 = icmp eq i32 %var_2_120, 0
; Matched:%var_2_124:  %var_2_124 = zext i1 %var_2_123 to i8
; %var_2_126 = zext i1 %var_2_125 to i8
; Matched:\<badref\>:  store i8 %var_2_124, i8* %var_2_30, align 1
; store i8 %var_2_126, i8* %var_2_35, align 1
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_44, align 1
store i8 0, i8* %var_2_32, align 1
; Matched:%var_2_125:  %var_2_125 = load i64, i64* %RBP.i, align 8
; %var_2_127 = load i64, i64* %RBP, align 8
; Matched:%var_2_126:  %var_2_126 = add i64 %var_2_125, -32
; %var_2_128 = add i64 %var_2_127, -32
; Matched:%var_2_924:  %var_2_924 = add i64 %var_2_917, 12
; %var_2_129 = add i64 %var_2_112, 12
; Matched:\<badref\>:  store i64 %var_2_924, i64* %var_2_3, align 8
; store i64 %var_2_129, i64* %PC, align 8
; Matched:%var_2_128:  %var_2_128 = inttoptr i64 %var_2_126 to i32*
; %var_2_130 = inttoptr i64 %var_2_128 to i32*
; Matched:\<badref\>:  store i32 %var_2_118, i32* %var_2_128, align 4
; store i32 %var_2_120, i32* %var_2_130, align 4
; Matched:%var_2_263:  %var_2_263 = load i64, i64* %RBP.i, align 8
; %var_2_131 = load i64, i64* %RBP, align 8
; Matched:%var_2_208:  %var_2_208 = add i64 %var_2_207, -24
; %var_2_132 = add i64 %var_2_131, -24
%var_2_133 = load i64, i64* %PC, align 8
; Matched:%var_2_200:  %var_2_200 = add i64 %var_2_199, 5
; %var_2_134 = add i64 %var_2_133, 5
; Matched:\<badref\>:  store i64 %var_2_200, i64* %var_2_3, align 8
; store i64 %var_2_134, i64* %PC, align 8
; Matched:%var_2_211:  %var_2_211 = inttoptr i64 %var_2_208 to i64*
; %var_2_135 = inttoptr i64 %var_2_132 to i64*
; Matched:%var_2_134:  %var_2_134 = load i64, i64* %var_2_133, align 8
; %var_2_136 = load i64, i64* %var_2_135, align 8
; Matched:\<badref\>:  store i64 %var_2_212, i64* %var_2_44, align 1
; store i64 %var_2_136, i64* %var_2_48, align 1
store double 0.000000e+00, double* %var_2_74, align 1
; Matched:%var_2_135:  %var_2_135 = add i64 %var_2_131, -694
; %var_2_137 = add i64 %var_2_133, -694
; Matched:%var_2_270:  %var_2_270 = add i64 %var_2_265, 10
; %var_2_138 = add i64 %var_2_133, 10
%var_2_139 = load i64, i64* %RSP, align 8
%var_2_140 = add i64 %var_2_139, -8
; Matched:%var_2_273:  %var_2_273 = inttoptr i64 %var_2_272 to i64*
; %var_2_141 = inttoptr i64 %var_2_140 to i64*
; Matched:\<badref\>:  store i64 %var_2_270, i64* %var_2_273, align 8
; store i64 %var_2_138, i64* %var_2_141, align 8
; Matched:\<badref\>:  store i64 %var_2_238, i64* %var_2_6, align 8
; store i64 %var_2_140, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_135, i64* %var_2_3, align 8
; store i64 %var_2_137, i64* %PC, align 8
%var_2_142 = tail call fastcc %struct.Memory* @ext_602c78_floor(%struct.State* nonnull %0, %struct.Memory* %var_2_111)
%var_2_143 = load i64, i64* %PC, align 8
; Matched:%var_2_142:  %var_2_142 = load double, double* %var_2_43, align 1
; %var_2_144 = load double, double* %var_2_47, align 1
; Matched:%var_2_143:  %var_2_143 = tail call double @llvm.trunc.f64(double %var_2_142)
; %var_2_145 = tail call double @llvm.trunc.f64(double %var_2_144) #12
; Matched:%var_2_144:  %var_2_144 = tail call double @llvm.fabs.f64(double %var_2_143)
; %var_2_146 = tail call double @llvm.fabs.f64(double %var_2_145) #12
; Matched:%var_2_83:  %var_2_83 = fcmp ogt double %var_2_82, 0x41DFFFFFFFC00000
; %var_2_147 = fcmp ogt double %var_2_146, 0x41DFFFFFFFC00000
; Matched:%var_2_115:  %var_2_115 = fptosi double %var_2_112 to i32
; %var_2_148 = fptosi double %var_2_145 to i32
; Matched:%var_2_116:  %var_2_116 = and i32 %var_2_115, 255
; %var_2_149 = and i32 %var_2_148, 255
; Matched:  %.op = zext i32 %var_2_85 to i64
; %.op14 = zext i32 %var_2_149 to i64
; Matched:%var_2_148:  %var_2_148 = select i1 %var_2_145, i64 0, i64 %.op14
; %var_2_150 = select i1 %var_2_147, i64 0, i64 %.op14
; Matched:%var_2_149:  %var_2_149 = trunc i64 %var_2_148 to i32
; %var_2_151 = trunc i64 %var_2_150 to i32
; Matched:\<badref\>:  store i64 %var_2_148, i64* %RAX.i629, align 8
; store i64 %var_2_150, i64* %RAX, align 8
store i8 0, i8* %var_2_19, align 1
; Matched:%var_2_88:  %var_2_88 = tail call i32 @llvm.ctpop.i32(i32 %var_2_87)
; %var_2_152 = tail call i32 @llvm.ctpop.i32(i32 %var_2_151) #12
; Matched:%var_2_120:  %var_2_120 = trunc i32 %var_2_119 to i8
; %var_2_153 = trunc i32 %var_2_152 to i8
; Matched:%var_2_121:  %var_2_121 = and i8 %var_2_120, 1
; %var_2_154 = and i8 %var_2_153, 1
; Matched:%var_2_91:  %var_2_91 = xor i8 %var_2_90, 1
; %var_2_155 = xor i8 %var_2_154, 1
; Matched:\<badref\>:  store i8 %var_2_153, i8* %var_2_21, align 1
; store i8 %var_2_155, i8* %var_2_26, align 1
; Matched:%var_2_154:  %var_2_154 = icmp eq i32 %var_2_149, 0
; %var_2_156 = icmp eq i32 %var_2_151, 0
; Matched:%var_2_155:  %var_2_155 = zext i1 %var_2_154 to i8
; %var_2_157 = zext i1 %var_2_156 to i8
; Matched:\<badref\>:  store i8 %var_2_155, i8* %var_2_30, align 1
; store i8 %var_2_157, i8* %var_2_35, align 1
store i8 0, i8* %var_2_38, align 1
store i8 0, i8* %var_2_44, align 1
store i8 0, i8* %var_2_32, align 1
; Matched:%var_2_156:  %var_2_156 = load i64, i64* %RBP.i, align 8
; %var_2_158 = load i64, i64* %RBP, align 8
; Matched:%var_2_157:  %var_2_157 = add i64 %var_2_156, -36
; %var_2_159 = add i64 %var_2_158, -36
; Matched:%var_2_96:  %var_2_96 = add i64 %var_2_79, 12
; %var_2_160 = add i64 %var_2_143, 12
; Matched:\<badref\>:  store i64 %var_2_96, i64* %var_2_3, align 8
; store i64 %var_2_160, i64* %PC, align 8
; Matched:%var_2_159:  %var_2_159 = inttoptr i64 %var_2_157 to i32*
; %var_2_161 = inttoptr i64 %var_2_159 to i32*
; Matched:\<badref\>:  store i32 %var_2_149, i32* %var_2_159, align 4
; store i32 %var_2_151, i32* %var_2_161, align 4
; Matched:%var_2_65:  %var_2_65 = load i64, i64* %RBP.i, align 8
; %var_2_162 = load i64, i64* %RBP, align 8
; Matched:%var_2_161:  %var_2_161 = add i64 %var_2_160, -8
; %var_2_163 = add i64 %var_2_162, -8
%var_2_164 = load i64, i64* %PC, align 8
; Matched:%var_2_260:  %var_2_260 = add i64 %var_2_259, 5
; %var_2_165 = add i64 %var_2_164, 5
; Matched:\<badref\>:  store i64 %var_2_260, i64* %var_2_3, align 8
; store i64 %var_2_165, i64* %PC, align 8
; Matched:%var_2_69:  %var_2_69 = inttoptr i64 %var_2_66 to i64*
; %var_2_166 = inttoptr i64 %var_2_163 to i64*
; Matched:%var_2_70:  %var_2_70 = load i64, i64* %var_2_69, align 8
; %var_2_167 = load i64, i64* %var_2_166, align 8
; Matched:\<badref\>:  store i64 %var_2_70, i64* %var_2_44, align 1
; store i64 %var_2_167, i64* %var_2_48, align 1
store double 0.000000e+00, double* %var_2_74, align 1
; Matched:%var_2_166:  %var_2_166 = add i64 %var_2_162, -716
; %var_2_168 = add i64 %var_2_164, -716
; Matched:%var_2_105:  %var_2_105 = add i64 %var_2_100, 10
; %var_2_169 = add i64 %var_2_164, 10
%var_2_170 = load i64, i64* %RSP, align 8
%var_2_171 = add i64 %var_2_170, -8
; Matched:%var_2_108:  %var_2_108 = inttoptr i64 %var_2_107 to i64*
; %var_2_172 = inttoptr i64 %var_2_171 to i64*
; Matched:\<badref\>:  store i64 %var_2_105, i64* %var_2_108, align 8
; store i64 %var_2_169, i64* %var_2_172, align 8
; Matched:\<badref\>:  store i64 %var_2_169, i64* %var_2_6, align 8
; store i64 %var_2_171, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_166, i64* %var_2_3, align 8
; store i64 %var_2_168, i64* %PC, align 8
%var_2_173 = tail call fastcc %struct.Memory* @ext_602c78_floor(%struct.State* nonnull %0, %struct.Memory* %var_2_142)
; Matched:%var_2_172:  %var_2_172 = bitcast %union.VectorReg* %var_2_47 to i8*
; %var_2_174 = bitcast %union.VectorReg* %var_2_4 to i8*
; Matched:%var_2_173:  %var_2_173 = load i64, i64* %RBP.i, align 8
; %var_2_175 = load i64, i64* %RBP, align 8
; Matched:%var_2_174:  %var_2_174 = add i64 %var_2_173, -8
; %var_2_176 = add i64 %var_2_175, -8
%var_2_177 = load i64, i64* %PC, align 8
; Matched:%var_2_51:  %var_2_51 = add i64 %var_2_50, 5
; %var_2_178 = add i64 %var_2_177, 5
; Matched:\<badref\>:  store i64 %var_2_51, i64* %var_2_3, align 8
; store i64 %var_2_178, i64* %PC, align 8
; Matched:%var_2_177:  %var_2_177 = inttoptr i64 %var_2_174 to double*
; %var_2_179 = inttoptr i64 %var_2_176 to double*
; Matched:%var_2_178:  %var_2_178 = load double, double* %var_2_177, align 8
; %var_2_180 = load double, double* %var_2_179, align 8
%var_2_181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
%var_2_182 = bitcast i64* %var_2_181 to double*
; Matched:%var_2_181:  %var_2_181 = load double, double* %var_2_43, align 1
; %var_2_183 = load double, double* %var_2_47, align 1
; Matched:%var_2_182:  %var_2_182 = fsub double %var_2_178, %var_2_181
; %var_2_184 = fsub double %var_2_180, %var_2_183
; Matched:\<badref\>:  store double %var_2_182, double* %var_2_52, align 1
; store double %var_2_184, double* %var_2_55, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_179, align 1
; store i64 0, i64* %var_2_181, align 1
; Matched:%var_2_205:  %var_2_205 = add i64 %var_2_199, 14
; %var_2_185 = add i64 %var_2_177, 14
; Matched:\<badref\>:  store i64 %var_2_183, i64* %var_2_3, align 8
; store i64 %var_2_185, i64* %PC, align 8
; Matched:%var_2_184:  %var_2_184 = inttoptr i64 %var_2_174 to double*
; %var_2_186 = inttoptr i64 %var_2_176 to double*
; Matched:\<badref\>:  store double %var_2_182, double* %var_2_184, align 8
; store double %var_2_184, double* %var_2_186, align 8
; Matched:%var_2_98:  %var_2_98 = load i64, i64* %RBP.i, align 8
; %var_2_187 = load i64, i64* %RBP, align 8
; Matched:%var_2_99:  %var_2_99 = add i64 %var_2_98, -16
; %var_2_188 = add i64 %var_2_187, -16
%var_2_189 = load i64, i64* %PC, align 8
; Matched:%var_2_188:  %var_2_188 = add i64 %var_2_187, 5
; %var_2_190 = add i64 %var_2_189, 5
; Matched:\<badref\>:  store i64 %var_2_188, i64* %var_2_3, align 8
; store i64 %var_2_190, i64* %PC, align 8
; Matched:%var_2_102:  %var_2_102 = inttoptr i64 %var_2_99 to i64*
; %var_2_191 = inttoptr i64 %var_2_188 to i64*
; Matched:%var_2_103:  %var_2_103 = load i64, i64* %var_2_102, align 8
; %var_2_192 = load i64, i64* %var_2_191, align 8
; Matched:\<badref\>:  store i64 %var_2_103, i64* %var_2_44, align 1
; store i64 %var_2_192, i64* %var_2_48, align 1
store double 0.000000e+00, double* %var_2_74, align 1
; Matched:%var_2_191:  %var_2_191 = add i64 %var_2_187, -740
; %var_2_193 = add i64 %var_2_189, -740
; Matched:%var_2_236:  %var_2_236 = add i64 %var_2_231, 10
; %var_2_194 = add i64 %var_2_189, 10
%var_2_195 = load i64, i64* %RSP, align 8
%var_2_196 = add i64 %var_2_195, -8
; Matched:%var_2_239:  %var_2_239 = inttoptr i64 %var_2_238 to i64*
; %var_2_197 = inttoptr i64 %var_2_196 to i64*
; Matched:\<badref\>:  store i64 %var_2_236, i64* %var_2_239, align 8
; store i64 %var_2_194, i64* %var_2_197, align 8
; Matched:\<badref\>:  store i64 %var_2_107, i64* %var_2_6, align 8
; store i64 %var_2_196, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_191, i64* %var_2_3, align 8
; store i64 %var_2_193, i64* %PC, align 8
%var_2_198 = tail call fastcc %struct.Memory* @ext_602c78_floor(%struct.State* nonnull %0, %struct.Memory* %var_2_173)
; Matched:%var_2_197:  %var_2_197 = load i64, i64* %RBP.i, align 8
; %var_2_199 = load i64, i64* %RBP, align 8
; Matched:%var_2_198:  %var_2_198 = add i64 %var_2_197, -16
; %var_2_200 = add i64 %var_2_199, -16
%var_2_201 = load i64, i64* %PC, align 8
; Matched:%var_2_277:  %var_2_277 = add i64 %var_2_276, 5
; %var_2_202 = add i64 %var_2_201, 5
; Matched:\<badref\>:  store i64 %var_2_277, i64* %var_2_3, align 8
; store i64 %var_2_202, i64* %PC, align 8
; Matched:%var_2_201:  %var_2_201 = inttoptr i64 %var_2_198 to double*
; %var_2_203 = inttoptr i64 %var_2_200 to double*
; Matched:%var_2_202:  %var_2_202 = load double, double* %var_2_201, align 8
; %var_2_204 = load double, double* %var_2_203, align 8
; Matched:%var_2_203:  %var_2_203 = load double, double* %var_2_43, align 1
; %var_2_205 = load double, double* %var_2_47, align 1
; Matched:%var_2_204:  %var_2_204 = fsub double %var_2_202, %var_2_203
; %var_2_206 = fsub double %var_2_204, %var_2_205
; Matched:\<badref\>:  store double %var_2_204, double* %var_2_52, align 1
; store double %var_2_206, double* %var_2_55, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_179, align 1
; store i64 0, i64* %var_2_181, align 1
; Matched:%var_2_227:  %var_2_227 = add i64 %var_2_221, 14
; %var_2_207 = add i64 %var_2_201, 14
; Matched:\<badref\>:  store i64 %var_2_205, i64* %var_2_3, align 8
; store i64 %var_2_207, i64* %PC, align 8
; Matched:%var_2_206:  %var_2_206 = inttoptr i64 %var_2_198 to double*
; %var_2_208 = inttoptr i64 %var_2_200 to double*
; Matched:\<badref\>:  store double %var_2_204, double* %var_2_206, align 8
; store double %var_2_206, double* %var_2_208, align 8
; Matched:%var_2_129:  %var_2_129 = load i64, i64* %RBP.i, align 8
; %var_2_209 = load i64, i64* %RBP, align 8
; Matched:%var_2_264:  %var_2_264 = add i64 %var_2_263, -24
; %var_2_210 = add i64 %var_2_209, -24
%var_2_211 = load i64, i64* %PC, align 8
; Matched:%var_2_68:  %var_2_68 = add i64 %var_2_67, 5
; %var_2_212 = add i64 %var_2_211, 5
; Matched:\<badref\>:  store i64 %var_2_68, i64* %var_2_3, align 8
; store i64 %var_2_212, i64* %PC, align 8
; Matched:%var_2_267:  %var_2_267 = inttoptr i64 %var_2_264 to i64*
; %var_2_213 = inttoptr i64 %var_2_210 to i64*
; Matched:%var_2_212:  %var_2_212 = load i64, i64* %var_2_211, align 8
; %var_2_214 = load i64, i64* %var_2_213, align 8
; Matched:\<badref\>:  store i64 %var_2_268, i64* %var_2_44, align 1
; store i64 %var_2_214, i64* %var_2_48, align 1
store double 0.000000e+00, double* %var_2_74, align 1
; Matched:%var_2_213:  %var_2_213 = add i64 %var_2_209, -764
; %var_2_215 = add i64 %var_2_211, -764
; Matched:%var_2_136:  %var_2_136 = add i64 %var_2_131, 10
; %var_2_216 = add i64 %var_2_211, 10
%var_2_217 = load i64, i64* %RSP, align 8
%var_2_218 = add i64 %var_2_217, -8
; Matched:%var_2_139:  %var_2_139 = inttoptr i64 %var_2_138 to i64*
; %var_2_219 = inttoptr i64 %var_2_218 to i64*
; Matched:\<badref\>:  store i64 %var_2_136, i64* %var_2_139, align 8
; store i64 %var_2_216, i64* %var_2_219, align 8
; Matched:\<badref\>:  store i64 %var_2_1264, i64* %var_2_6, align 8
; store i64 %var_2_218, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_213, i64* %var_2_3, align 8
; store i64 %var_2_215, i64* %PC, align 8
%var_2_220 = tail call fastcc %struct.Memory* @ext_602c78_floor(%struct.State* nonnull %0, %struct.Memory* %var_2_198)
; Matched:%var_2_219:  %var_2_219 = load i64, i64* %RBP.i, align 8
; %var_2_221 = load i64, i64* %RBP, align 8
; Matched:%var_2_220:  %var_2_220 = add i64 %var_2_219, -24
; %var_2_222 = add i64 %var_2_221, -24
%var_2_223 = load i64, i64* %PC, align 8
; Matched:%var_2_808:  %var_2_808 = add i64 %var_2_807, 5
; %var_2_224 = add i64 %var_2_223, 5
; Matched:\<badref\>:  store i64 %var_2_808, i64* %var_2_3, align 8
; store i64 %var_2_224, i64* %PC, align 8
; Matched:%var_2_223:  %var_2_223 = inttoptr i64 %var_2_220 to double*
; %var_2_225 = inttoptr i64 %var_2_222 to double*
; Matched:%var_2_224:  %var_2_224 = load double, double* %var_2_223, align 8
; %var_2_226 = load double, double* %var_2_225, align 8
; Matched:%var_2_225:  %var_2_225 = load double, double* %var_2_43, align 1
; %var_2_227 = load double, double* %var_2_47, align 1
; Matched:%var_2_226:  %var_2_226 = fsub double %var_2_224, %var_2_225
; %var_2_228 = fsub double %var_2_226, %var_2_227
; Matched:\<badref\>:  store double %var_2_226, double* %var_2_52, align 1
; store double %var_2_228, double* %var_2_55, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_179, align 1
; store i64 0, i64* %var_2_181, align 1
; Matched:%var_2_341:  %var_2_341 = add i64 %var_2_329, 14
; %var_2_229 = add i64 %var_2_223, 14
; Matched:\<badref\>:  store i64 %var_2_227, i64* %var_2_3, align 8
; store i64 %var_2_229, i64* %PC, align 8
; Matched:%var_2_228:  %var_2_228 = inttoptr i64 %var_2_220 to double*
; %var_2_230 = inttoptr i64 %var_2_222 to double*
; Matched:\<badref\>:  store double %var_2_226, double* %var_2_228, align 8
; store double %var_2_228, double* %var_2_230, align 8
; Matched:%var_2_229:  %var_2_229 = load i64, i64* %RBP.i, align 8
; %var_2_231 = load i64, i64* %RBP, align 8
; Matched:%var_2_66:  %var_2_66 = add i64 %var_2_65, -8
; %var_2_232 = add i64 %var_2_231, -8
%var_2_233 = load i64, i64* %PC, align 8
; Matched:%var_2_1016:  %var_2_1016 = add i64 %var_2_1015, 5
; %var_2_234 = add i64 %var_2_233, 5
; Matched:\<badref\>:  store i64 %var_2_1016, i64* %var_2_3, align 8
; store i64 %var_2_234, i64* %PC, align 8
; Matched:%var_2_233:  %var_2_233 = inttoptr i64 %var_2_230 to i64*
; %var_2_235 = inttoptr i64 %var_2_232 to i64*
; Matched:%var_2_234:  %var_2_234 = load i64, i64* %var_2_233, align 8
; %var_2_236 = load i64, i64* %var_2_235, align 8
; Matched:\<badref\>:  store i64 %var_2_234, i64* %var_2_44, align 1
; store i64 %var_2_236, i64* %var_2_48, align 1
store double 0.000000e+00, double* %var_2_74, align 1
%var_2_237 = add i64 %var_2_233, 1052
; Matched:%var_2_74:  %var_2_74 = add i64 %var_2_67, 10
; %var_2_238 = add i64 %var_2_233, 10
%var_2_239 = load i64, i64* %RSP, align 8
%var_2_240 = add i64 %var_2_239, -8
; Matched:%var_2_77:  %var_2_77 = inttoptr i64 %var_2_76 to i64*
; %var_2_241 = inttoptr i64 %var_2_240 to i64*
; Matched:\<badref\>:  store i64 %var_2_74, i64* %var_2_77, align 8
; store i64 %var_2_238, i64* %var_2_241, align 8
; Matched:\<badref\>:  store i64 %var_2_980, i64* %var_2_6, align 8
; store i64 %var_2_240, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_235, i64* %var_2_3, align 8
; store i64 %var_2_237, i64* %PC, align 8
%var_2_242 = tail call %struct.Memory* @sub_400bb0_fade_renamed_(%struct.State* nonnull %0, i64 %var_2_237, %struct.Memory* %var_2_220)
; Matched:%var_2_240:  %var_2_240 = load i64, i64* %RBP.i, align 8
; %var_2_243 = load i64, i64* %RBP, align 8
; Matched:%var_2_241:  %var_2_241 = add i64 %var_2_240, -48
; %var_2_244 = add i64 %var_2_243, -48
%var_2_245 = load i64, i64* %PC, align 8
; Matched:%var_2_210:  %var_2_210 = add i64 %var_2_209, 5
; %var_2_246 = add i64 %var_2_245, 5
; Matched:\<badref\>:  store i64 %var_2_210, i64* %var_2_3, align 8
; store i64 %var_2_246, i64* %PC, align 8
; Matched:%var_2_244:  %var_2_244 = load i64, i64* %var_2_44, align 1
; %var_2_247 = load i64, i64* %var_2_48, align 1
; Matched:%var_2_245:  %var_2_245 = inttoptr i64 %var_2_241 to i64*
; %var_2_248 = inttoptr i64 %var_2_244 to i64*
; Matched:\<badref\>:  store i64 %var_2_244, i64* %var_2_245, align 8
; store i64 %var_2_247, i64* %var_2_248, align 8
; Matched:%var_2_185:  %var_2_185 = load i64, i64* %RBP.i, align 8
; %var_2_249 = load i64, i64* %RBP, align 8
; Matched:%var_2_186:  %var_2_186 = add i64 %var_2_185, -16
; %var_2_250 = add i64 %var_2_249, -16
%var_2_251 = load i64, i64* %PC, align 8
; Matched:%var_2_176:  %var_2_176 = add i64 %var_2_175, 5
; %var_2_252 = add i64 %var_2_251, 5
; Matched:\<badref\>:  store i64 %var_2_176, i64* %var_2_3, align 8
; store i64 %var_2_252, i64* %PC, align 8
; Matched:%var_2_189:  %var_2_189 = inttoptr i64 %var_2_186 to i64*
; %var_2_253 = inttoptr i64 %var_2_250 to i64*
; Matched:%var_2_190:  %var_2_190 = load i64, i64* %var_2_189, align 8
; %var_2_254 = load i64, i64* %var_2_253, align 8
; Matched:\<badref\>:  store i64 %var_2_190, i64* %var_2_44, align 1
; store i64 %var_2_254, i64* %var_2_48, align 1
store double 0.000000e+00, double* %var_2_74, align 1
%var_2_255 = add i64 %var_2_251, 1037
; Matched:%var_2_192:  %var_2_192 = add i64 %var_2_187, 10
; %var_2_256 = add i64 %var_2_251, 10
%var_2_257 = load i64, i64* %RSP, align 8
%var_2_258 = add i64 %var_2_257, -8
; Matched:%var_2_195:  %var_2_195 = inttoptr i64 %var_2_194 to i64*
; %var_2_259 = inttoptr i64 %var_2_258 to i64*
; Matched:\<badref\>:  store i64 %var_2_192, i64* %var_2_195, align 8
; store i64 %var_2_256, i64* %var_2_259, align 8
; Matched:\<badref\>:  store i64 %var_2_1534, i64* %var_2_6, align 8
; store i64 %var_2_258, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_252, i64* %var_2_3, align 8
; store i64 %var_2_255, i64* %PC, align 8
%var_2_260 = tail call %struct.Memory* @sub_400bb0_fade_renamed_(%struct.State* nonnull %0, i64 %var_2_255, %struct.Memory* %var_2_242)
; Matched:%var_2_257:  %var_2_257 = load i64, i64* %RBP.i, align 8
; %var_2_261 = load i64, i64* %RBP, align 8
; Matched:%var_2_258:  %var_2_258 = add i64 %var_2_257, -56
; %var_2_262 = add i64 %var_2_261, -56
%var_2_263 = load i64, i64* %PC, align 8
; Matched:%var_2_266:  %var_2_266 = add i64 %var_2_265, 5
; %var_2_264 = add i64 %var_2_263, 5
; Matched:\<badref\>:  store i64 %var_2_266, i64* %var_2_3, align 8
; store i64 %var_2_264, i64* %PC, align 8
; Matched:%var_2_261:  %var_2_261 = load i64, i64* %var_2_44, align 1
; %var_2_265 = load i64, i64* %var_2_48, align 1
; Matched:%var_2_262:  %var_2_262 = inttoptr i64 %var_2_258 to i64*
; %var_2_266 = inttoptr i64 %var_2_262 to i64*
; Matched:\<badref\>:  store i64 %var_2_261, i64* %var_2_262, align 8
; store i64 %var_2_265, i64* %var_2_266, align 8
; Matched:%var_2_207:  %var_2_207 = load i64, i64* %RBP.i, align 8
; %var_2_267 = load i64, i64* %RBP, align 8
; Matched:%var_2_130:  %var_2_130 = add i64 %var_2_129, -24
; %var_2_268 = add i64 %var_2_267, -24
%var_2_269 = load i64, i64* %PC, align 8
; Matched:%var_2_101:  %var_2_101 = add i64 %var_2_100, 5
; %var_2_270 = add i64 %var_2_269, 5
; Matched:\<badref\>:  store i64 %var_2_101, i64* %var_2_3, align 8
; store i64 %var_2_270, i64* %PC, align 8
; Matched:%var_2_133:  %var_2_133 = inttoptr i64 %var_2_130 to i64*
; %var_2_271 = inttoptr i64 %var_2_268 to i64*
; Matched:%var_2_268:  %var_2_268 = load i64, i64* %var_2_267, align 8
; %var_2_272 = load i64, i64* %var_2_271, align 8
; Matched:\<badref\>:  store i64 %var_2_134, i64* %var_2_44, align 1
; store i64 %var_2_272, i64* %var_2_48, align 1
store double 0.000000e+00, double* %var_2_74, align 1
%var_2_273 = add i64 %var_2_269, 1022
; Matched:%var_2_253:  %var_2_253 = add i64 %var_2_248, 10
; %var_2_274 = add i64 %var_2_269, 10
%var_2_275 = load i64, i64* %RSP, align 8
%var_2_276 = add i64 %var_2_275, -8
; Matched:%var_2_170:  %var_2_170 = inttoptr i64 %var_2_169 to i64*
; %var_2_277 = inttoptr i64 %var_2_276 to i64*
; Matched:\<badref\>:  store i64 %var_2_253, i64* %var_2_256, align 8
; store i64 %var_2_274, i64* %var_2_277, align 8
; Matched:\<badref\>:  store i64 %var_2_1042, i64* %var_2_6, align 8
; store i64 %var_2_276, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_269, i64* %var_2_3, align 8
; store i64 %var_2_273, i64* %PC, align 8
%var_2_278 = tail call %struct.Memory* @sub_400bb0_fade_renamed_(%struct.State* nonnull %0, i64 %var_2_273, %struct.Memory* %var_2_260)
; Matched:%var_2_274:  %var_2_274 = load i64, i64* %RBP.i, align 8
; %var_2_279 = load i64, i64* %RBP, align 8
; Matched:%var_2_275:  %var_2_275 = add i64 %var_2_274, -64
; %var_2_280 = add i64 %var_2_279, -64
%var_2_281 = load i64, i64* %PC, align 8
; Matched:%var_2_60:  %var_2_60 = add i64 %var_2_59, 5
; %var_2_282 = add i64 %var_2_281, 5
; Matched:\<badref\>:  store i64 %var_2_232, i64* %var_2_3, align 8
; store i64 %var_2_282, i64* %PC, align 8
; Matched:%var_2_278:  %var_2_278 = load i64, i64* %var_2_44, align 1
; %var_2_283 = load i64, i64* %var_2_48, align 1
; Matched:%var_2_279:  %var_2_279 = inttoptr i64 %var_2_275 to i64*
; %var_2_284 = inttoptr i64 %var_2_280 to i64*
; Matched:\<badref\>:  store i64 %var_2_278, i64* %var_2_279, align 8
; store i64 %var_2_283, i64* %var_2_284, align 8
%var_2_285 = load i64, i64* %RBP, align 8
%var_2_286 = add i64 %var_2_285, -28
%var_2_287 = load i64, i64* %PC, align 8
; Matched:%var_2_283:  %var_2_283 = add i64 %var_2_282, 4
; %var_2_288 = add i64 %var_2_287, 4
; Matched:\<badref\>:  store i64 %var_2_283, i64* %var_2_3, align 8
; store i64 %var_2_288, i64* %PC, align 8
%var_2_289 = inttoptr i64 %var_2_286 to i32*
%var_2_290 = load i32, i32* %var_2_289, align 4
%var_2_291 = sext i32 %var_2_290 to i64
; Matched:\<badref\>:  store i64 %var_2_286, i64* %RCX.i523, align 8
; store i64 %var_2_291, i64* %RCX, align 8
%var_2_292 = shl nsw i64 %var_2_291, 2
%var_2_293 = add i64 %var_2_292, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
; Matched:%var_2_962:  %var_2_962 = add i64 %var_2_953, 11
; %var_2_294 = add i64 %var_2_287, 11
; Matched:\<badref\>:  store i64 %var_2_962, i64* %var_2_3, align 8
; store i64 %var_2_294, i64* %PC, align 8
%var_2_295 = inttoptr i64 %var_2_293 to i32*
%var_2_296 = load i32, i32* %var_2_295, align 4
%var_2_297 = zext i32 %var_2_296 to i64
store i64 %var_2_297, i64* %RAX, align 8
%var_2_298 = add i64 %var_2_285, -32
; Matched:%var_2_1129:  %var_2_1129 = add i64 %var_2_1114, 14
; %var_2_299 = add i64 %var_2_287, 14
; Matched:\<badref\>:  store i64 %var_2_1129, i64* %var_2_3, align 8
; store i64 %var_2_299, i64* %PC, align 8
%var_2_300 = inttoptr i64 %var_2_298 to i32*
%var_2_301 = load i32, i32* %var_2_300, align 4
%var_2_302 = add i32 %var_2_301, %var_2_296
%var_2_303 = zext i32 %var_2_302 to i64
store i64 %var_2_303, i64* %RAX, align 8
%var_2_304 = icmp ult i32 %var_2_302, %var_2_296
%var_2_305 = icmp ult i32 %var_2_302, %var_2_301
%var_2_306 = or i1 %var_2_304, %var_2_305
%var_2_307 = zext i1 %var_2_306 to i8
store i8 %var_2_307, i8* %var_2_19, align 1
%var_2_308 = and i32 %var_2_302, 255
%var_2_309 = tail call i32 @llvm.ctpop.i32(i32 %var_2_308) #12
%var_2_310 = trunc i32 %var_2_309 to i8
%var_2_311 = and i8 %var_2_310, 1
%var_2_312 = xor i8 %var_2_311, 1
store i8 %var_2_312, i8* %var_2_26, align 1
%var_2_313 = xor i32 %var_2_301, %var_2_296
%var_2_314 = xor i32 %var_2_313, %var_2_302
%var_2_315 = lshr i32 %var_2_314, 4
%var_2_316 = trunc i32 %var_2_315 to i8
%var_2_317 = and i8 %var_2_316, 1
store i8 %var_2_317, i8* %var_2_32, align 1
%var_2_318 = icmp eq i32 %var_2_302, 0
%var_2_319 = zext i1 %var_2_318 to i8
store i8 %var_2_319, i8* %var_2_35, align 1
%var_2_320 = lshr i32 %var_2_302, 31
%var_2_321 = trunc i32 %var_2_320 to i8
store i8 %var_2_321, i8* %var_2_38, align 1
%var_2_322 = lshr i32 %var_2_296, 31
%var_2_323 = lshr i32 %var_2_301, 31
%var_2_324 = xor i32 %var_2_320, %var_2_322
%var_2_325 = xor i32 %var_2_320, %var_2_323
%var_2_326 = add nuw nsw i32 %var_2_324, %var_2_325
%var_2_327 = icmp eq i32 %var_2_326, 2
%var_2_328 = zext i1 %var_2_327 to i8
store i8 %var_2_328, i8* %var_2_44, align 1
%var_2_329 = add i64 %var_2_285, -68
; Matched:%var_2_559:  %var_2_559 = add i64 %var_2_516, 17
; %var_2_330 = add i64 %var_2_287, 17
; Matched:\<badref\>:  store i64 %var_2_325, i64* %var_2_3, align 8
; store i64 %var_2_330, i64* %PC, align 8
%var_2_331 = inttoptr i64 %var_2_329 to i32*
store i32 %var_2_302, i32* %var_2_331, align 4
%var_2_332 = load i64, i64* %RBP, align 8
%var_2_333 = add i64 %var_2_332, -68
%var_2_334 = load i64, i64* %PC, align 8
; Matched:%var_2_517:  %var_2_517 = add i64 %var_2_516, 4
; %var_2_335 = add i64 %var_2_334, 4
; Matched:\<badref\>:  store i64 %var_2_330, i64* %var_2_3, align 8
; store i64 %var_2_335, i64* %PC, align 8
%var_2_336 = inttoptr i64 %var_2_333 to i32*
%var_2_337 = load i32, i32* %var_2_336, align 4
%var_2_338 = sext i32 %var_2_337 to i64
; Matched:\<badref\>:  store i64 %var_2_333, i64* %RCX.i523, align 8
; store i64 %var_2_338, i64* %RCX, align 8
%var_2_339 = shl nsw i64 %var_2_338, 2
%var_2_340 = add i64 %var_2_339, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
; Matched:%var_2_1254:  %var_2_1254 = add i64 %var_2_1245, 11
; %var_2_341 = add i64 %var_2_334, 11
; Matched:\<badref\>:  store i64 %var_2_1254, i64* %var_2_3, align 8
; store i64 %var_2_341, i64* %PC, align 8
%var_2_342 = inttoptr i64 %var_2_340 to i32*
%var_2_343 = load i32, i32* %var_2_342, align 4
%var_2_344 = zext i32 %var_2_343 to i64
store i64 %var_2_344, i64* %RAX, align 8
%var_2_345 = add i64 %var_2_332, -36
; Matched:%var_2_294:  %var_2_294 = add i64 %var_2_282, 14
; %var_2_346 = add i64 %var_2_334, 14
; Matched:\<badref\>:  store i64 %var_2_341, i64* %var_2_3, align 8
; store i64 %var_2_346, i64* %PC, align 8
%var_2_347 = inttoptr i64 %var_2_345 to i32*
%var_2_348 = load i32, i32* %var_2_347, align 4
%var_2_349 = add i32 %var_2_348, %var_2_343
%var_2_350 = zext i32 %var_2_349 to i64
store i64 %var_2_350, i64* %RAX, align 8
%var_2_351 = icmp ult i32 %var_2_349, %var_2_343
%var_2_352 = icmp ult i32 %var_2_349, %var_2_348
%var_2_353 = or i1 %var_2_351, %var_2_352
%var_2_354 = zext i1 %var_2_353 to i8
store i8 %var_2_354, i8* %var_2_19, align 1
%var_2_355 = and i32 %var_2_349, 255
%var_2_356 = tail call i32 @llvm.ctpop.i32(i32 %var_2_355) #12
%var_2_357 = trunc i32 %var_2_356 to i8
%var_2_358 = and i8 %var_2_357, 1
%var_2_359 = xor i8 %var_2_358, 1
store i8 %var_2_359, i8* %var_2_26, align 1
%var_2_360 = xor i32 %var_2_348, %var_2_343
%var_2_361 = xor i32 %var_2_360, %var_2_349
%var_2_362 = lshr i32 %var_2_361, 4
%var_2_363 = trunc i32 %var_2_362 to i8
%var_2_364 = and i8 %var_2_363, 1
store i8 %var_2_364, i8* %var_2_32, align 1
%var_2_365 = icmp eq i32 %var_2_349, 0
%var_2_366 = zext i1 %var_2_365 to i8
store i8 %var_2_366, i8* %var_2_35, align 1
%var_2_367 = lshr i32 %var_2_349, 31
%var_2_368 = trunc i32 %var_2_367 to i8
store i8 %var_2_368, i8* %var_2_38, align 1
%var_2_369 = lshr i32 %var_2_343, 31
%var_2_370 = lshr i32 %var_2_348, 31
%var_2_371 = xor i32 %var_2_367, %var_2_369
%var_2_372 = xor i32 %var_2_367, %var_2_370
%var_2_373 = add nuw nsw i32 %var_2_371, %var_2_372
%var_2_374 = icmp eq i32 %var_2_373, 2
%var_2_375 = zext i1 %var_2_374 to i8
store i8 %var_2_375, i8* %var_2_44, align 1
%var_2_376 = add i64 %var_2_332, -72
; Matched:%var_2_325:  %var_2_325 = add i64 %var_2_282, 17
; %var_2_377 = add i64 %var_2_334, 17
; Matched:\<badref\>:  store i64 %var_2_372, i64* %var_2_3, align 8
; store i64 %var_2_377, i64* %PC, align 8
%var_2_378 = inttoptr i64 %var_2_376 to i32*
store i32 %var_2_349, i32* %var_2_378, align 4
%var_2_379 = load i64, i64* %RBP, align 8
%var_2_380 = add i64 %var_2_379, -68
%var_2_381 = load i64, i64* %PC, align 8
; Matched:%var_2_447:  %var_2_447 = add i64 %var_2_446, 3
; %var_2_382 = add i64 %var_2_381, 3
; Matched:\<badref\>:  store i64 %var_2_564, i64* %var_2_3, align 8
; store i64 %var_2_382, i64* %PC, align 8
%var_2_383 = inttoptr i64 %var_2_380 to i32*
%var_2_384 = load i32, i32* %var_2_383, align 4
%var_2_385 = add i32 %var_2_384, 1
; Matched:%var_2_381:  %var_2_381 = zext i32 %var_2_380 to i64
; %var_2_386 = zext i32 %var_2_385 to i64
; Matched:\<badref\>:  store i64 %var_2_381, i64* %RAX.i629, align 8
; store i64 %var_2_386, i64* %RAX, align 8
; Matched:%var_2_382:  %var_2_382 = icmp eq i32 %var_2_379, -1
; %var_2_387 = icmp eq i32 %var_2_384, -1
; Matched:%var_2_383:  %var_2_383 = icmp eq i32 %var_2_380, 0
; %var_2_388 = icmp eq i32 %var_2_385, 0
; Matched:%var_2_384:  %var_2_384 = or i1 %var_2_382, %var_2_383
; %var_2_389 = or i1 %var_2_387, %var_2_388
; Matched:%var_2_385:  %var_2_385 = zext i1 %var_2_384 to i8
; %var_2_390 = zext i1 %var_2_389 to i8
; Matched:\<badref\>:  store i8 %var_2_385, i8* %var_2_14, align 1
; store i8 %var_2_390, i8* %var_2_19, align 1
; Matched:%var_2_386:  %var_2_386 = and i32 %var_2_380, 255
; %var_2_391 = and i32 %var_2_385, 255
; Matched:%var_2_387:  %var_2_387 = tail call i32 @llvm.ctpop.i32(i32 %var_2_386)
; %var_2_392 = tail call i32 @llvm.ctpop.i32(i32 %var_2_391) #12
; Matched:%var_2_388:  %var_2_388 = trunc i32 %var_2_387 to i8
; %var_2_393 = trunc i32 %var_2_392 to i8
; Matched:%var_2_389:  %var_2_389 = and i8 %var_2_388, 1
; %var_2_394 = and i8 %var_2_393, 1
; Matched:%var_2_390:  %var_2_390 = xor i8 %var_2_389, 1
; %var_2_395 = xor i8 %var_2_394, 1
; Matched:\<badref\>:  store i8 %var_2_390, i8* %var_2_21, align 1
; store i8 %var_2_395, i8* %var_2_26, align 1
; Matched:%var_2_391:  %var_2_391 = xor i32 %var_2_380, %var_2_379
; %var_2_396 = xor i32 %var_2_385, %var_2_384
; Matched:%var_2_392:  %var_2_392 = lshr i32 %var_2_391, 4
; %var_2_397 = lshr i32 %var_2_396, 4
; Matched:%var_2_393:  %var_2_393 = trunc i32 %var_2_392 to i8
; %var_2_398 = trunc i32 %var_2_397 to i8
; Matched:%var_2_394:  %var_2_394 = and i8 %var_2_393, 1
; %var_2_399 = and i8 %var_2_398, 1
; Matched:\<badref\>:  store i8 %var_2_394, i8* %var_2_27, align 1
; store i8 %var_2_399, i8* %var_2_32, align 1
; Matched:%var_2_395:  %var_2_395 = zext i1 %var_2_383 to i8
; %var_2_400 = zext i1 %var_2_388 to i8
; Matched:\<badref\>:  store i8 %var_2_395, i8* %var_2_30, align 1
; store i8 %var_2_400, i8* %var_2_35, align 1
; Matched:%var_2_396:  %var_2_396 = lshr i32 %var_2_380, 31
; %var_2_401 = lshr i32 %var_2_385, 31
; Matched:%var_2_397:  %var_2_397 = trunc i32 %var_2_396 to i8
; %var_2_402 = trunc i32 %var_2_401 to i8
; Matched:\<badref\>:  store i8 %var_2_397, i8* %var_2_33, align 1
; store i8 %var_2_402, i8* %var_2_38, align 1
; Matched:%var_2_398:  %var_2_398 = lshr i32 %var_2_379, 31
; %var_2_403 = lshr i32 %var_2_384, 31
; Matched:%var_2_399:  %var_2_399 = xor i32 %var_2_396, %var_2_398
; %var_2_404 = xor i32 %var_2_401, %var_2_403
; Matched:%var_2_400:  %var_2_400 = add nuw nsw i32 %var_2_399, %var_2_396
; %var_2_405 = add nuw nsw i32 %var_2_404, %var_2_401
; Matched:%var_2_401:  %var_2_401 = icmp eq i32 %var_2_400, 2
; %var_2_406 = icmp eq i32 %var_2_405, 2
; Matched:%var_2_402:  %var_2_402 = zext i1 %var_2_401 to i8
; %var_2_407 = zext i1 %var_2_406 to i8
; Matched:\<badref\>:  store i8 %var_2_402, i8* %var_2_39, align 1
; store i8 %var_2_407, i8* %var_2_44, align 1
%var_2_408 = sext i32 %var_2_385 to i64
; Matched:\<badref\>:  store i64 %var_2_403, i64* %RCX.i523, align 8
; store i64 %var_2_408, i64* %RCX, align 8
%var_2_409 = shl nsw i64 %var_2_408, 2
%var_2_410 = add i64 %var_2_409, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
; Matched:%var_2_406:  %var_2_406 = add i64 %var_2_376, 16
; %var_2_411 = add i64 %var_2_381, 16
; Matched:\<badref\>:  store i64 %var_2_406, i64* %var_2_3, align 8
; store i64 %var_2_411, i64* %PC, align 8
%var_2_412 = inttoptr i64 %var_2_410 to i32*
%var_2_413 = load i32, i32* %var_2_412, align 4
%var_2_414 = zext i32 %var_2_413 to i64
store i64 %var_2_414, i64* %RAX, align 8
%var_2_415 = add i64 %var_2_379, -36
; Matched:%var_2_1528:  %var_2_1528 = add i64 %var_2_1515, 19
; %var_2_416 = add i64 %var_2_381, 19
; Matched:\<badref\>:  store i64 %var_2_1466, i64* %var_2_3, align 8
; store i64 %var_2_416, i64* %PC, align 8
%var_2_417 = inttoptr i64 %var_2_415 to i32*
%var_2_418 = load i32, i32* %var_2_417, align 4
%var_2_419 = add i32 %var_2_418, %var_2_413
%var_2_420 = zext i32 %var_2_419 to i64
store i64 %var_2_420, i64* %RAX, align 8
%var_2_421 = icmp ult i32 %var_2_419, %var_2_413
%var_2_422 = icmp ult i32 %var_2_419, %var_2_418
%var_2_423 = or i1 %var_2_421, %var_2_422
%var_2_424 = zext i1 %var_2_423 to i8
store i8 %var_2_424, i8* %var_2_19, align 1
%var_2_425 = and i32 %var_2_419, 255
%var_2_426 = tail call i32 @llvm.ctpop.i32(i32 %var_2_425) #12
%var_2_427 = trunc i32 %var_2_426 to i8
%var_2_428 = and i8 %var_2_427, 1
%var_2_429 = xor i8 %var_2_428, 1
store i8 %var_2_429, i8* %var_2_26, align 1
%var_2_430 = xor i32 %var_2_418, %var_2_413
%var_2_431 = xor i32 %var_2_430, %var_2_419
%var_2_432 = lshr i32 %var_2_431, 4
%var_2_433 = trunc i32 %var_2_432 to i8
%var_2_434 = and i8 %var_2_433, 1
store i8 %var_2_434, i8* %var_2_32, align 1
%var_2_435 = icmp eq i32 %var_2_419, 0
%var_2_436 = zext i1 %var_2_435 to i8
store i8 %var_2_436, i8* %var_2_35, align 1
%var_2_437 = lshr i32 %var_2_419, 31
%var_2_438 = trunc i32 %var_2_437 to i8
store i8 %var_2_438, i8* %var_2_38, align 1
%var_2_439 = lshr i32 %var_2_413, 31
%var_2_440 = lshr i32 %var_2_418, 31
%var_2_441 = xor i32 %var_2_437, %var_2_439
%var_2_442 = xor i32 %var_2_437, %var_2_440
%var_2_443 = add nuw nsw i32 %var_2_441, %var_2_442
%var_2_444 = icmp eq i32 %var_2_443, 2
%var_2_445 = zext i1 %var_2_444 to i8
store i8 %var_2_445, i8* %var_2_44, align 1
%var_2_446 = add i64 %var_2_379, -76
; Matched:%var_2_629:  %var_2_629 = add i64 %var_2_563, 22
; %var_2_447 = add i64 %var_2_381, 22
; Matched:\<badref\>:  store i64 %var_2_512, i64* %var_2_3, align 8
; store i64 %var_2_447, i64* %PC, align 8
%var_2_448 = inttoptr i64 %var_2_446 to i32*
store i32 %var_2_419, i32* %var_2_448, align 4
%var_2_449 = load i64, i64* %RBP, align 8
%var_2_450 = add i64 %var_2_449, -28
%var_2_451 = load i64, i64* %PC, align 8
; Matched:%var_2_377:  %var_2_377 = add i64 %var_2_376, 3
; %var_2_452 = add i64 %var_2_451, 3
; Matched:\<badref\>:  store i64 %var_2_377, i64* %var_2_3, align 8
; store i64 %var_2_452, i64* %PC, align 8
%var_2_453 = inttoptr i64 %var_2_450 to i32*
%var_2_454 = load i32, i32* %var_2_453, align 4
%var_2_455 = add i32 %var_2_454, 1
; Matched:%var_2_451:  %var_2_451 = zext i32 %var_2_450 to i64
; %var_2_456 = zext i32 %var_2_455 to i64
; Matched:\<badref\>:  store i64 %var_2_451, i64* %RAX.i629, align 8
; store i64 %var_2_456, i64* %RAX, align 8
; Matched:%var_2_452:  %var_2_452 = icmp eq i32 %var_2_449, -1
; %var_2_457 = icmp eq i32 %var_2_454, -1
; Matched:%var_2_453:  %var_2_453 = icmp eq i32 %var_2_450, 0
; %var_2_458 = icmp eq i32 %var_2_455, 0
; Matched:%var_2_454:  %var_2_454 = or i1 %var_2_452, %var_2_453
; %var_2_459 = or i1 %var_2_457, %var_2_458
; Matched:%var_2_455:  %var_2_455 = zext i1 %var_2_454 to i8
; %var_2_460 = zext i1 %var_2_459 to i8
; Matched:\<badref\>:  store i8 %var_2_455, i8* %var_2_14, align 1
; store i8 %var_2_460, i8* %var_2_19, align 1
; Matched:%var_2_456:  %var_2_456 = and i32 %var_2_450, 255
; %var_2_461 = and i32 %var_2_455, 255
; Matched:%var_2_457:  %var_2_457 = tail call i32 @llvm.ctpop.i32(i32 %var_2_456)
; %var_2_462 = tail call i32 @llvm.ctpop.i32(i32 %var_2_461) #12
; Matched:%var_2_458:  %var_2_458 = trunc i32 %var_2_457 to i8
; %var_2_463 = trunc i32 %var_2_462 to i8
; Matched:%var_2_459:  %var_2_459 = and i8 %var_2_458, 1
; %var_2_464 = and i8 %var_2_463, 1
; Matched:%var_2_460:  %var_2_460 = xor i8 %var_2_459, 1
; %var_2_465 = xor i8 %var_2_464, 1
; Matched:\<badref\>:  store i8 %var_2_460, i8* %var_2_21, align 1
; store i8 %var_2_465, i8* %var_2_26, align 1
; Matched:%var_2_461:  %var_2_461 = xor i32 %var_2_450, %var_2_449
; %var_2_466 = xor i32 %var_2_455, %var_2_454
; Matched:%var_2_462:  %var_2_462 = lshr i32 %var_2_461, 4
; %var_2_467 = lshr i32 %var_2_466, 4
; Matched:%var_2_463:  %var_2_463 = trunc i32 %var_2_462 to i8
; %var_2_468 = trunc i32 %var_2_467 to i8
; Matched:%var_2_464:  %var_2_464 = and i8 %var_2_463, 1
; %var_2_469 = and i8 %var_2_468, 1
; Matched:\<badref\>:  store i8 %var_2_464, i8* %var_2_27, align 1
; store i8 %var_2_469, i8* %var_2_32, align 1
; Matched:%var_2_465:  %var_2_465 = zext i1 %var_2_453 to i8
; %var_2_470 = zext i1 %var_2_458 to i8
; Matched:\<badref\>:  store i8 %var_2_465, i8* %var_2_30, align 1
; store i8 %var_2_470, i8* %var_2_35, align 1
; Matched:%var_2_466:  %var_2_466 = lshr i32 %var_2_450, 31
; %var_2_471 = lshr i32 %var_2_455, 31
; Matched:%var_2_467:  %var_2_467 = trunc i32 %var_2_466 to i8
; %var_2_472 = trunc i32 %var_2_471 to i8
; Matched:\<badref\>:  store i8 %var_2_467, i8* %var_2_33, align 1
; store i8 %var_2_472, i8* %var_2_38, align 1
; Matched:%var_2_468:  %var_2_468 = lshr i32 %var_2_449, 31
; %var_2_473 = lshr i32 %var_2_454, 31
; Matched:%var_2_469:  %var_2_469 = xor i32 %var_2_466, %var_2_468
; %var_2_474 = xor i32 %var_2_471, %var_2_473
; Matched:%var_2_470:  %var_2_470 = add nuw nsw i32 %var_2_469, %var_2_466
; %var_2_475 = add nuw nsw i32 %var_2_474, %var_2_471
; Matched:%var_2_471:  %var_2_471 = icmp eq i32 %var_2_470, 2
; %var_2_476 = icmp eq i32 %var_2_475, 2
; Matched:%var_2_472:  %var_2_472 = zext i1 %var_2_471 to i8
; %var_2_477 = zext i1 %var_2_476 to i8
; Matched:\<badref\>:  store i8 %var_2_472, i8* %var_2_39, align 1
; store i8 %var_2_477, i8* %var_2_44, align 1
%var_2_478 = sext i32 %var_2_455 to i64
; Matched:\<badref\>:  store i64 %var_2_473, i64* %RCX.i523, align 8
; store i64 %var_2_478, i64* %RCX, align 8
%var_2_479 = shl nsw i64 %var_2_478, 2
%var_2_480 = add i64 %var_2_479, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
; Matched:%var_2_989:  %var_2_989 = add i64 %var_2_984, 16
; %var_2_481 = add i64 %var_2_451, 16
; Matched:\<badref\>:  store i64 %var_2_989, i64* %var_2_3, align 8
; store i64 %var_2_481, i64* %PC, align 8
%var_2_482 = inttoptr i64 %var_2_480 to i32*
%var_2_483 = load i32, i32* %var_2_482, align 4
%var_2_484 = zext i32 %var_2_483 to i64
store i64 %var_2_484, i64* %RAX, align 8
%var_2_485 = add i64 %var_2_449, -32
; Matched:%var_2_411:  %var_2_411 = add i64 %var_2_376, 19
; %var_2_486 = add i64 %var_2_451, 19
; Matched:\<badref\>:  store i64 %var_2_411, i64* %var_2_3, align 8
; store i64 %var_2_486, i64* %PC, align 8
%var_2_487 = inttoptr i64 %var_2_485 to i32*
%var_2_488 = load i32, i32* %var_2_487, align 4
%var_2_489 = add i32 %var_2_488, %var_2_483
%var_2_490 = zext i32 %var_2_489 to i64
store i64 %var_2_490, i64* %RAX, align 8
%var_2_491 = icmp ult i32 %var_2_489, %var_2_483
%var_2_492 = icmp ult i32 %var_2_489, %var_2_488
%var_2_493 = or i1 %var_2_491, %var_2_492
%var_2_494 = zext i1 %var_2_493 to i8
store i8 %var_2_494, i8* %var_2_19, align 1
%var_2_495 = and i32 %var_2_489, 255
%var_2_496 = tail call i32 @llvm.ctpop.i32(i32 %var_2_495) #12
%var_2_497 = trunc i32 %var_2_496 to i8
%var_2_498 = and i8 %var_2_497, 1
%var_2_499 = xor i8 %var_2_498, 1
store i8 %var_2_499, i8* %var_2_26, align 1
%var_2_500 = xor i32 %var_2_488, %var_2_483
%var_2_501 = xor i32 %var_2_500, %var_2_489
%var_2_502 = lshr i32 %var_2_501, 4
%var_2_503 = trunc i32 %var_2_502 to i8
%var_2_504 = and i8 %var_2_503, 1
store i8 %var_2_504, i8* %var_2_32, align 1
%var_2_505 = icmp eq i32 %var_2_489, 0
%var_2_506 = zext i1 %var_2_505 to i8
store i8 %var_2_506, i8* %var_2_35, align 1
%var_2_507 = lshr i32 %var_2_489, 31
%var_2_508 = trunc i32 %var_2_507 to i8
store i8 %var_2_508, i8* %var_2_38, align 1
%var_2_509 = lshr i32 %var_2_483, 31
%var_2_510 = lshr i32 %var_2_488, 31
%var_2_511 = xor i32 %var_2_507, %var_2_509
%var_2_512 = xor i32 %var_2_507, %var_2_510
%var_2_513 = add nuw nsw i32 %var_2_511, %var_2_512
%var_2_514 = icmp eq i32 %var_2_513, 2
%var_2_515 = zext i1 %var_2_514 to i8
store i8 %var_2_515, i8* %var_2_44, align 1
%var_2_516 = add i64 %var_2_449, -80
; Matched:%var_2_512:  %var_2_512 = add i64 %var_2_446, 22
; %var_2_517 = add i64 %var_2_451, 22
; Matched:\<badref\>:  store i64 %var_2_442, i64* %var_2_3, align 8
; store i64 %var_2_517, i64* %PC, align 8
%var_2_518 = inttoptr i64 %var_2_516 to i32*
store i32 %var_2_489, i32* %var_2_518, align 4
%var_2_519 = load i64, i64* %RBP, align 8
%var_2_520 = add i64 %var_2_519, -80
%var_2_521 = load i64, i64* %PC, align 8
; Matched:%var_2_330:  %var_2_330 = add i64 %var_2_329, 4
; %var_2_522 = add i64 %var_2_521, 4
; Matched:\<badref\>:  store i64 %var_2_517, i64* %var_2_3, align 8
; store i64 %var_2_522, i64* %PC, align 8
%var_2_523 = inttoptr i64 %var_2_520 to i32*
%var_2_524 = load i32, i32* %var_2_523, align 4
%var_2_525 = sext i32 %var_2_524 to i64
; Matched:\<badref\>:  store i64 %var_2_520, i64* %RCX.i523, align 8
; store i64 %var_2_525, i64* %RCX, align 8
%var_2_526 = shl nsw i64 %var_2_525, 2
%var_2_527 = add i64 %var_2_526, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
; Matched:%var_2_898:  %var_2_898 = add i64 %var_2_889, 11
; %var_2_528 = add i64 %var_2_521, 11
; Matched:\<badref\>:  store i64 %var_2_898, i64* %var_2_3, align 8
; store i64 %var_2_528, i64* %PC, align 8
%var_2_529 = inttoptr i64 %var_2_527 to i32*
%var_2_530 = load i32, i32* %var_2_529, align 4
%var_2_531 = zext i32 %var_2_530 to i64
store i64 %var_2_531, i64* %RAX, align 8
%var_2_532 = add i64 %var_2_519, -36
; Matched:%var_2_183:  %var_2_183 = add i64 %var_2_175, 14
; %var_2_533 = add i64 %var_2_521, 14
; Matched:\<badref\>:  store i64 %var_2_528, i64* %var_2_3, align 8
; store i64 %var_2_533, i64* %PC, align 8
%var_2_534 = inttoptr i64 %var_2_532 to i32*
%var_2_535 = load i32, i32* %var_2_534, align 4
%var_2_536 = add i32 %var_2_535, %var_2_530
%var_2_537 = zext i32 %var_2_536 to i64
store i64 %var_2_537, i64* %RAX, align 8
%var_2_538 = icmp ult i32 %var_2_536, %var_2_530
%var_2_539 = icmp ult i32 %var_2_536, %var_2_535
%var_2_540 = or i1 %var_2_538, %var_2_539
%var_2_541 = zext i1 %var_2_540 to i8
store i8 %var_2_541, i8* %var_2_19, align 1
%var_2_542 = and i32 %var_2_536, 255
%var_2_543 = tail call i32 @llvm.ctpop.i32(i32 %var_2_542) #12
%var_2_544 = trunc i32 %var_2_543 to i8
%var_2_545 = and i8 %var_2_544, 1
%var_2_546 = xor i8 %var_2_545, 1
store i8 %var_2_546, i8* %var_2_26, align 1
%var_2_547 = xor i32 %var_2_535, %var_2_530
%var_2_548 = xor i32 %var_2_547, %var_2_536
%var_2_549 = lshr i32 %var_2_548, 4
%var_2_550 = trunc i32 %var_2_549 to i8
%var_2_551 = and i8 %var_2_550, 1
store i8 %var_2_551, i8* %var_2_32, align 1
%var_2_552 = icmp eq i32 %var_2_536, 0
%var_2_553 = zext i1 %var_2_552 to i8
store i8 %var_2_553, i8* %var_2_35, align 1
%var_2_554 = lshr i32 %var_2_536, 31
%var_2_555 = trunc i32 %var_2_554 to i8
store i8 %var_2_555, i8* %var_2_38, align 1
%var_2_556 = lshr i32 %var_2_530, 31
%var_2_557 = lshr i32 %var_2_535, 31
%var_2_558 = xor i32 %var_2_554, %var_2_556
%var_2_559 = xor i32 %var_2_554, %var_2_557
%var_2_560 = add nuw nsw i32 %var_2_558, %var_2_559
%var_2_561 = icmp eq i32 %var_2_560, 2
%var_2_562 = zext i1 %var_2_561 to i8
store i8 %var_2_562, i8* %var_2_44, align 1
%var_2_563 = add i64 %var_2_519, -84
; Matched:%var_2_849:  %var_2_849 = add i64 %var_2_838, 17
; %var_2_564 = add i64 %var_2_521, 17
; Matched:\<badref\>:  store i64 %var_2_849, i64* %var_2_3, align 8
; store i64 %var_2_564, i64* %PC, align 8
%var_2_565 = inttoptr i64 %var_2_563 to i32*
store i32 %var_2_536, i32* %var_2_565, align 4
%var_2_566 = load i64, i64* %RBP, align 8
%var_2_567 = add i64 %var_2_566, -80
%var_2_568 = load i64, i64* %PC, align 8
; Matched:%var_2_564:  %var_2_564 = add i64 %var_2_563, 3
; %var_2_569 = add i64 %var_2_568, 3
; Matched:\<badref\>:  store i64 %var_2_447, i64* %var_2_3, align 8
; store i64 %var_2_569, i64* %PC, align 8
%var_2_570 = inttoptr i64 %var_2_567 to i32*
%var_2_571 = load i32, i32* %var_2_570, align 4
%var_2_572 = add i32 %var_2_571, 1
; Matched:%var_2_568:  %var_2_568 = zext i32 %var_2_567 to i64
; %var_2_573 = zext i32 %var_2_572 to i64
; Matched:\<badref\>:  store i64 %var_2_568, i64* %RAX.i629, align 8
; store i64 %var_2_573, i64* %RAX, align 8
; Matched:%var_2_569:  %var_2_569 = icmp eq i32 %var_2_566, -1
; %var_2_574 = icmp eq i32 %var_2_571, -1
; Matched:%var_2_570:  %var_2_570 = icmp eq i32 %var_2_567, 0
; %var_2_575 = icmp eq i32 %var_2_572, 0
; Matched:%var_2_571:  %var_2_571 = or i1 %var_2_569, %var_2_570
; %var_2_576 = or i1 %var_2_574, %var_2_575
; Matched:%var_2_572:  %var_2_572 = zext i1 %var_2_571 to i8
; %var_2_577 = zext i1 %var_2_576 to i8
; Matched:\<badref\>:  store i8 %var_2_572, i8* %var_2_14, align 1
; store i8 %var_2_577, i8* %var_2_19, align 1
; Matched:%var_2_573:  %var_2_573 = and i32 %var_2_567, 255
; %var_2_578 = and i32 %var_2_572, 255
; Matched:%var_2_574:  %var_2_574 = tail call i32 @llvm.ctpop.i32(i32 %var_2_573)
; %var_2_579 = tail call i32 @llvm.ctpop.i32(i32 %var_2_578) #12
; Matched:%var_2_575:  %var_2_575 = trunc i32 %var_2_574 to i8
; %var_2_580 = trunc i32 %var_2_579 to i8
; Matched:%var_2_576:  %var_2_576 = and i8 %var_2_575, 1
; %var_2_581 = and i8 %var_2_580, 1
; Matched:%var_2_577:  %var_2_577 = xor i8 %var_2_576, 1
; %var_2_582 = xor i8 %var_2_581, 1
; Matched:\<badref\>:  store i8 %var_2_577, i8* %var_2_21, align 1
; store i8 %var_2_582, i8* %var_2_26, align 1
; Matched:%var_2_578:  %var_2_578 = xor i32 %var_2_567, %var_2_566
; %var_2_583 = xor i32 %var_2_572, %var_2_571
; Matched:%var_2_579:  %var_2_579 = lshr i32 %var_2_578, 4
; %var_2_584 = lshr i32 %var_2_583, 4
; Matched:%var_2_580:  %var_2_580 = trunc i32 %var_2_579 to i8
; %var_2_585 = trunc i32 %var_2_584 to i8
; Matched:%var_2_581:  %var_2_581 = and i8 %var_2_580, 1
; %var_2_586 = and i8 %var_2_585, 1
; Matched:\<badref\>:  store i8 %var_2_581, i8* %var_2_27, align 1
; store i8 %var_2_586, i8* %var_2_32, align 1
; Matched:%var_2_582:  %var_2_582 = zext i1 %var_2_570 to i8
; %var_2_587 = zext i1 %var_2_575 to i8
; Matched:\<badref\>:  store i8 %var_2_582, i8* %var_2_30, align 1
; store i8 %var_2_587, i8* %var_2_35, align 1
; Matched:%var_2_583:  %var_2_583 = lshr i32 %var_2_567, 31
; %var_2_588 = lshr i32 %var_2_572, 31
; Matched:%var_2_584:  %var_2_584 = trunc i32 %var_2_583 to i8
; %var_2_589 = trunc i32 %var_2_588 to i8
; Matched:\<badref\>:  store i8 %var_2_584, i8* %var_2_33, align 1
; store i8 %var_2_589, i8* %var_2_38, align 1
; Matched:%var_2_585:  %var_2_585 = lshr i32 %var_2_566, 31
; %var_2_590 = lshr i32 %var_2_571, 31
; Matched:%var_2_586:  %var_2_586 = xor i32 %var_2_583, %var_2_585
; %var_2_591 = xor i32 %var_2_588, %var_2_590
; Matched:%var_2_587:  %var_2_587 = add nuw nsw i32 %var_2_586, %var_2_583
; %var_2_592 = add nuw nsw i32 %var_2_591, %var_2_588
; Matched:%var_2_588:  %var_2_588 = icmp eq i32 %var_2_587, 2
; %var_2_593 = icmp eq i32 %var_2_592, 2
; Matched:%var_2_589:  %var_2_589 = zext i1 %var_2_588 to i8
; %var_2_594 = zext i1 %var_2_593 to i8
; Matched:\<badref\>:  store i8 %var_2_589, i8* %var_2_39, align 1
; store i8 %var_2_594, i8* %var_2_44, align 1
%var_2_595 = sext i32 %var_2_572 to i64
; Matched:\<badref\>:  store i64 %var_2_590, i64* %RCX.i523, align 8
; store i64 %var_2_595, i64* %RCX, align 8
%var_2_596 = shl nsw i64 %var_2_595, 2
%var_2_597 = add i64 %var_2_596, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
; Matched:%var_2_593:  %var_2_593 = add i64 %var_2_563, 16
; %var_2_598 = add i64 %var_2_568, 16
; Matched:\<badref\>:  store i64 %var_2_593, i64* %var_2_3, align 8
; store i64 %var_2_598, i64* %PC, align 8
%var_2_599 = inttoptr i64 %var_2_597 to i32*
%var_2_600 = load i32, i32* %var_2_599, align 4
%var_2_601 = zext i32 %var_2_600 to i64
store i64 %var_2_601, i64* %RAX, align 8
%var_2_602 = add i64 %var_2_566, -36
; Matched:%var_2_650:  %var_2_650 = add i64 %var_2_633, 19
; %var_2_603 = add i64 %var_2_568, 19
; Matched:\<badref\>:  store i64 %var_2_650, i64* %var_2_3, align 8
; store i64 %var_2_603, i64* %PC, align 8
%var_2_604 = inttoptr i64 %var_2_602 to i32*
%var_2_605 = load i32, i32* %var_2_604, align 4
%var_2_606 = add i32 %var_2_605, %var_2_600
%var_2_607 = zext i32 %var_2_606 to i64
store i64 %var_2_607, i64* %RAX, align 8
%var_2_608 = icmp ult i32 %var_2_606, %var_2_600
%var_2_609 = icmp ult i32 %var_2_606, %var_2_605
%var_2_610 = or i1 %var_2_608, %var_2_609
%var_2_611 = zext i1 %var_2_610 to i8
store i8 %var_2_611, i8* %var_2_19, align 1
%var_2_612 = and i32 %var_2_606, 255
%var_2_613 = tail call i32 @llvm.ctpop.i32(i32 %var_2_612) #12
%var_2_614 = trunc i32 %var_2_613 to i8
%var_2_615 = and i8 %var_2_614, 1
%var_2_616 = xor i8 %var_2_615, 1
store i8 %var_2_616, i8* %var_2_26, align 1
%var_2_617 = xor i32 %var_2_605, %var_2_600
%var_2_618 = xor i32 %var_2_617, %var_2_606
%var_2_619 = lshr i32 %var_2_618, 4
%var_2_620 = trunc i32 %var_2_619 to i8
%var_2_621 = and i8 %var_2_620, 1
store i8 %var_2_621, i8* %var_2_32, align 1
%var_2_622 = icmp eq i32 %var_2_606, 0
%var_2_623 = zext i1 %var_2_622 to i8
store i8 %var_2_623, i8* %var_2_35, align 1
%var_2_624 = lshr i32 %var_2_606, 31
%var_2_625 = trunc i32 %var_2_624 to i8
store i8 %var_2_625, i8* %var_2_38, align 1
%var_2_626 = lshr i32 %var_2_600, 31
%var_2_627 = lshr i32 %var_2_605, 31
%var_2_628 = xor i32 %var_2_624, %var_2_626
%var_2_629 = xor i32 %var_2_624, %var_2_627
%var_2_630 = add nuw nsw i32 %var_2_628, %var_2_629
%var_2_631 = icmp eq i32 %var_2_630, 2
%var_2_632 = zext i1 %var_2_631 to i8
store i8 %var_2_632, i8* %var_2_44, align 1
%var_2_633 = add i64 %var_2_566, -88
; Matched:%var_2_442:  %var_2_442 = add i64 %var_2_376, 22
; %var_2_634 = add i64 %var_2_568, 22
; Matched:\<badref\>:  store i64 %var_2_629, i64* %var_2_3, align 8
; store i64 %var_2_634, i64* %PC, align 8
%var_2_635 = inttoptr i64 %var_2_633 to i32*
store i32 %var_2_606, i32* %var_2_635, align 4
%var_2_636 = load i64, i64* %RBP, align 8
; Matched:%var_2_632:  %var_2_632 = add i64 %var_2_631, -64
; %var_2_637 = add i64 %var_2_636, -64
%var_2_638 = load i64, i64* %PC, align 8
; Matched:%var_2_132:  %var_2_132 = add i64 %var_2_131, 5
; %var_2_639 = add i64 %var_2_638, 5
; Matched:\<badref\>:  store i64 %var_2_132, i64* %var_2_3, align 8
; store i64 %var_2_639, i64* %PC, align 8
; Matched:%var_2_635:  %var_2_635 = inttoptr i64 %var_2_632 to i64*
; %var_2_640 = inttoptr i64 %var_2_637 to i64*
; Matched:%var_2_636:  %var_2_636 = load i64, i64* %var_2_635, align 8
; %var_2_641 = load i64, i64* %var_2_640, align 8
; Matched:\<badref\>:  store i64 %var_2_636, i64* %var_2_44, align 1
; store i64 %var_2_641, i64* %var_2_48, align 1
store double 0.000000e+00, double* %var_2_74, align 1
; Matched:%var_2_637:  %var_2_637 = add i64 %var_2_631, -56
; %var_2_642 = add i64 %var_2_636, -56
; Matched:%var_2_638:  %var_2_638 = add i64 %var_2_633, 10
; %var_2_643 = add i64 %var_2_638, 10
; Matched:\<badref\>:  store i64 %var_2_812, i64* %var_2_3, align 8
; store i64 %var_2_643, i64* %PC, align 8
; Matched:%var_2_639:  %var_2_639 = inttoptr i64 %var_2_637 to i64*
; %var_2_644 = inttoptr i64 %var_2_642 to i64*
; Matched:%var_2_640:  %var_2_640 = load i64, i64* %var_2_639, align 8
; %var_2_645 = load i64, i64* %var_2_644, align 8
; Matched:\<badref\>:  store i64 %var_2_640, i64* %var_2_53, align 1
; store i64 %var_2_645, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
; Matched:%var_2_641:  %var_2_641 = bitcast %union.VectorReg* %var_2_56 to i8*
; %var_2_646 = bitcast %union.VectorReg* %var_2_5 to i8*
; Matched:%var_2_1272:  %var_2_1272 = add i64 %var_2_1271, -48
; %var_2_647 = add i64 %var_2_636, -48
; Matched:%var_2_42:  %var_2_42 = add i64 %var_2_10, 15
; %var_2_648 = add i64 %var_2_638, 15
; Matched:\<badref\>:  store i64 %var_2_42, i64* %var_2_3, align 8
; store i64 %var_2_648, i64* %PC, align 8
; Matched:%var_2_1274:  %var_2_1274 = inttoptr i64 %var_2_1272 to i64*
; %var_2_649 = inttoptr i64 %var_2_647 to i64*
; Matched:%var_2_1275:  %var_2_1275 = load i64, i64* %var_2_1274, align 8
; %var_2_650 = load i64, i64* %var_2_649, align 8
; Matched:%var_2_646:  %var_2_646 = bitcast %union.VectorReg* %var_2_56 to double*
; %var_2_651 = bitcast %union.VectorReg* %var_2_5 to double*
; Matched:\<badref\>:  store i64 %var_2_645, i64* %var_2_61, align 1
; store i64 %var_2_650, i64* %var_2_63, align 1
%var_2_652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
%var_2_653 = bitcast i64* %var_2_652 to double*
store double 0.000000e+00, double* %var_2_653, align 1
%var_2_654 = add i64 %var_2_636, -72
; Matched:%var_2_1036:  %var_2_1036 = add i64 %var_2_1023, 19
; %var_2_655 = add i64 %var_2_638, 19
; Matched:\<badref\>:  store i64 %var_2_1036, i64* %var_2_3, align 8
; store i64 %var_2_655, i64* %PC, align 8
%var_2_656 = inttoptr i64 %var_2_654 to i32*
%var_2_657 = load i32, i32* %var_2_656, align 4
%var_2_658 = sext i32 %var_2_657 to i64
; Matched:\<badref\>:  store i64 %var_2_653, i64* %RCX.i523, align 8
; store i64 %var_2_658, i64* %RCX, align 8
%var_2_659 = shl nsw i64 %var_2_658, 2
%var_2_660 = add i64 %var_2_659, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
; Matched:%var_2_656:  %var_2_656 = add i64 %var_2_633, 26
; %var_2_661 = add i64 %var_2_638, 26
; Matched:\<badref\>:  store i64 %var_2_656, i64* %var_2_3, align 8
; store i64 %var_2_661, i64* %PC, align 8
%var_2_662 = inttoptr i64 %var_2_660 to i32*
%var_2_663 = load i32, i32* %var_2_662, align 4
%var_2_664 = zext i32 %var_2_663 to i64
store i64 %var_2_664, i64* %RDI, align 8
; Matched:%var_2_1310:  %var_2_1310 = add i64 %var_2_1271, -8
; %var_2_665 = add i64 %var_2_636, -8
; Matched:%var_2_662:  %var_2_662 = add i64 %var_2_633, 31
; %var_2_666 = add i64 %var_2_638, 31
; Matched:\<badref\>:  store i64 %var_2_662, i64* %var_2_3, align 8
; store i64 %var_2_666, i64* %PC, align 8
; Matched:%var_2_1312:  %var_2_1312 = inttoptr i64 %var_2_1310 to i64*
; %var_2_667 = inttoptr i64 %var_2_665 to i64*
; Matched:%var_2_664:  %var_2_664 = load i64, i64* %var_2_663, align 8
; %var_2_668 = load i64, i64* %var_2_667, align 8
; Matched:%var_2_665:  %var_2_665 = bitcast %union.VectorReg* %var_2_660 to double*
; %var_2_669 = bitcast %union.VectorReg* %var_2_6 to double*
; Matched:%var_2_666:  %var_2_666 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_660, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_670 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_6, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:\<badref\>:  store i64 %var_2_862, i64* %var_2_666, align 1
; store i64 %var_2_668, i64* %var_2_670, align 1
; Matched:%var_2_667:  %var_2_667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; %var_2_671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_668:  %var_2_668 = bitcast i64* %var_2_667 to double*
; %var_2_672 = bitcast i64* %var_2_671 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_668, align 1
; store double 0.000000e+00, double* %var_2_672, align 1
; Matched:%var_2_670:  %var_2_670 = add i64 %var_2_631, -16
; %var_2_673 = add i64 %var_2_636, -16
; Matched:%var_2_671:  %var_2_671 = add i64 %var_2_633, 36
; %var_2_674 = add i64 %var_2_638, 36
; Matched:\<badref\>:  store i64 %var_2_671, i64* %var_2_3, align 8
; store i64 %var_2_674, i64* %PC, align 8
; Matched:%var_2_672:  %var_2_672 = inttoptr i64 %var_2_670 to i64*
; %var_2_675 = inttoptr i64 %var_2_673 to i64*
; Matched:%var_2_673:  %var_2_673 = load i64, i64* %var_2_672, align 8
; %var_2_676 = load i64, i64* %var_2_675, align 8
; Matched:%var_2_674:  %var_2_674 = bitcast %union.VectorReg* %var_2_669 to double*
; %var_2_677 = bitcast %union.VectorReg* %var_2_7 to double*
; Matched:%var_2_675:  %var_2_675 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_669, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_678 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_7, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:\<badref\>:  store i64 %var_2_673, i64* %var_2_675, align 1
; store i64 %var_2_676, i64* %var_2_678, align 1
; Matched:%var_2_676:  %var_2_676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
; %var_2_679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_677:  %var_2_677 = bitcast i64* %var_2_676 to double*
; %var_2_680 = bitcast i64* %var_2_679 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_677, align 1
; store double 0.000000e+00, double* %var_2_680, align 1
; Matched:%var_2_679:  %var_2_679 = add i64 %var_2_631, -24
; %var_2_681 = add i64 %var_2_636, -24
; Matched:%var_2_680:  %var_2_680 = add i64 %var_2_633, 41
; %var_2_682 = add i64 %var_2_638, 41
; Matched:\<badref\>:  store i64 %var_2_680, i64* %var_2_3, align 8
; store i64 %var_2_682, i64* %PC, align 8
; Matched:%var_2_681:  %var_2_681 = inttoptr i64 %var_2_679 to i64*
; %var_2_683 = inttoptr i64 %var_2_681 to i64*
; Matched:%var_2_682:  %var_2_682 = load i64, i64* %var_2_681, align 8
; %var_2_684 = load i64, i64* %var_2_683, align 8
; Matched:%var_2_683:  %var_2_683 = bitcast %union.VectorReg* %var_2_678 to double*
; %var_2_685 = bitcast %union.VectorReg* %var_2_8 to double*
; Matched:%var_2_684:  %var_2_684 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_678, i64 0, i32 0, i32 0, i32 0, i64 0
; %var_2_686 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %var_2_8, i64 0, i32 0, i32 0, i32 0, i64 0
; Matched:\<badref\>:  store i64 %var_2_682, i64* %var_2_684, align 1
; store i64 %var_2_684, i64* %var_2_686, align 1
; Matched:%var_2_685:  %var_2_685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
; %var_2_687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_686:  %var_2_686 = bitcast i64* %var_2_685 to double*
; %var_2_688 = bitcast i64* %var_2_687 to double*
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_686, align 1
; store double 0.000000e+00, double* %var_2_688, align 1
; Matched:%var_2_687:  %var_2_687 = add i64 %var_2_631, -96
; %var_2_689 = add i64 %var_2_636, -96
; Matched:%var_2_688:  %var_2_688 = add i64 %var_2_633, 46
; %var_2_690 = add i64 %var_2_638, 46
; Matched:\<badref\>:  store i64 %var_2_688, i64* %var_2_3, align 8
; store i64 %var_2_690, i64* %PC, align 8
; Matched:%var_2_689:  %var_2_689 = inttoptr i64 %var_2_687 to i64*
; %var_2_691 = inttoptr i64 %var_2_689 to i64*
; Matched:\<badref\>:  store i64 %var_2_636, i64* %var_2_689, align 8
; store i64 %var_2_641, i64* %var_2_691, align 8
%var_2_692 = load i64, i64* %PC, align 8
%var_2_693 = bitcast %union.VectorReg* %var_2_6 to <2 x i32>*
%var_2_694 = load <2 x i32>, <2 x i32>* %var_2_693, align 1
%var_2_695 = bitcast i64* %var_2_671 to <2 x i32>*
%var_2_696 = load <2 x i32>, <2 x i32>* %var_2_695, align 1
%var_2_697 = extractelement <2 x i32> %var_2_694, i32 0
; Matched:%var_2_696:  %var_2_696 = bitcast [32 x %union.VectorReg]* %var_2_40 to i32*
; %var_2_698 = bitcast [32 x %union.VectorReg]* %var_2_3 to i32*
; Matched:\<badref\>:  store i32 %var_2_880, i32* %var_2_696, align 1
; store i32 %var_2_697, i32* %var_2_698, align 1
%var_2_699 = extractelement <2 x i32> %var_2_694, i32 1
; Matched:%var_2_698:  %var_2_698 = getelementptr inbounds i8, i8* %var_2_64, i64 4
; %var_2_700 = getelementptr inbounds i8, i8* %var_2_66, i64 4
; Matched:%var_2_699:  %var_2_699 = bitcast i8* %var_2_698 to i32*
; %var_2_701 = bitcast i8* %var_2_700 to i32*
; Matched:\<badref\>:  store i32 %var_2_881, i32* %var_2_699, align 1
; store i32 %var_2_699, i32* %var_2_701, align 1
%var_2_702 = extractelement <2 x i32> %var_2_696, i32 0
; Matched:%var_2_701:  %var_2_701 = bitcast i64* %var_2_71 to i32*
; %var_2_703 = bitcast i64* %var_2_73 to i32*
; Matched:\<badref\>:  store i32 %var_2_700, i32* %var_2_701, align 1
; store i32 %var_2_702, i32* %var_2_703, align 1
%var_2_704 = extractelement <2 x i32> %var_2_696, i32 1
; Matched:%var_2_703:  %var_2_703 = getelementptr inbounds i8, i8* %var_2_64, i64 12
; %var_2_705 = getelementptr inbounds i8, i8* %var_2_66, i64 12
; Matched:%var_2_704:  %var_2_704 = bitcast i8* %var_2_703 to i32*
; %var_2_706 = bitcast i8* %var_2_705 to i32*
; Matched:\<badref\>:  store i32 %var_2_1335, i32* %var_2_704, align 1
; store i32 %var_2_704, i32* %var_2_706, align 1
; Matched:%var_2_705:  %var_2_705 = load i64, i64* %RBP.i, align 8
; %var_2_707 = load i64, i64* %RBP, align 8
; Matched:%var_2_706:  %var_2_706 = add i64 %var_2_705, -104
; %var_2_708 = add i64 %var_2_707, -104
%var_2_709 = add i64 %var_2_692, 8
store i64 %var_2_709, i64* %PC, align 8
; Matched:%var_2_708:  %var_2_708 = load i64, i64* %var_2_53, align 1
; %var_2_710 = load i64, i64* %var_2_56, align 1
; Matched:%var_2_709:  %var_2_709 = inttoptr i64 %var_2_706 to i64*
; %var_2_711 = inttoptr i64 %var_2_708 to i64*
; Matched:\<badref\>:  store i64 %var_2_708, i64* %var_2_709, align 8
; store i64 %var_2_710, i64* %var_2_711, align 8
%var_2_712 = load i64, i64* %PC, align 8
%var_2_713 = bitcast %union.VectorReg* %var_2_7 to <2 x i32>*
%var_2_714 = load <2 x i32>, <2 x i32>* %var_2_713, align 1
%var_2_715 = bitcast i64* %var_2_679 to <2 x i32>*
%var_2_716 = load <2 x i32>, <2 x i32>* %var_2_715, align 1
%var_2_717 = extractelement <2 x i32> %var_2_714, i32 0
; Matched:%var_2_716:  %var_2_716 = bitcast %union.VectorReg* %var_2_47 to i32*
; %var_2_718 = bitcast %union.VectorReg* %var_2_4 to i32*
; Matched:\<badref\>:  store i32 %var_2_1338, i32* %var_2_716, align 1
; store i32 %var_2_717, i32* %var_2_718, align 1
%var_2_719 = extractelement <2 x i32> %var_2_714, i32 1
; Matched:%var_2_718:  %var_2_718 = getelementptr inbounds i8, i8* %var_2_172, i64 4
; %var_2_720 = getelementptr inbounds i8, i8* %var_2_174, i64 4
; Matched:%var_2_719:  %var_2_719 = bitcast i8* %var_2_718 to i32*
; %var_2_721 = bitcast i8* %var_2_720 to i32*
; Matched:\<badref\>:  store i32 %var_2_717, i32* %var_2_719, align 1
; store i32 %var_2_719, i32* %var_2_721, align 1
%var_2_722 = extractelement <2 x i32> %var_2_716, i32 0
; Matched:%var_2_721:  %var_2_721 = bitcast i64* %var_2_179 to i32*
; %var_2_723 = bitcast i64* %var_2_181 to i32*
; Matched:\<badref\>:  store i32 %var_2_720, i32* %var_2_721, align 1
; store i32 %var_2_722, i32* %var_2_723, align 1
%var_2_724 = extractelement <2 x i32> %var_2_716, i32 1
; Matched:%var_2_723:  %var_2_723 = getelementptr inbounds i8, i8* %var_2_172, i64 12
; %var_2_725 = getelementptr inbounds i8, i8* %var_2_174, i64 12
; Matched:%var_2_724:  %var_2_724 = bitcast i8* %var_2_723 to i32*
; %var_2_726 = bitcast i8* %var_2_725 to i32*
; Matched:\<badref\>:  store i32 %var_2_1341, i32* %var_2_724, align 1
; store i32 %var_2_724, i32* %var_2_726, align 1
; Matched:%var_2_725:  %var_2_725 = load i64, i64* %RBP.i, align 8
; %var_2_727 = load i64, i64* %RBP, align 8
; Matched:%var_2_726:  %var_2_726 = add i64 %var_2_725, -112
; %var_2_728 = add i64 %var_2_727, -112
%var_2_729 = add i64 %var_2_712, 8
store i64 %var_2_729, i64* %PC, align 8
; Matched:%var_2_728:  %var_2_728 = load i64, i64* %var_2_61, align 1
; %var_2_730 = load i64, i64* %var_2_63, align 1
; Matched:%var_2_729:  %var_2_729 = inttoptr i64 %var_2_726 to i64*
; %var_2_731 = inttoptr i64 %var_2_728 to i64*
; Matched:\<badref\>:  store i64 %var_2_728, i64* %var_2_729, align 8
; store i64 %var_2_730, i64* %var_2_731, align 8
%var_2_732 = load i64, i64* %PC, align 8
%var_2_733 = bitcast %union.VectorReg* %var_2_8 to <2 x i32>*
%var_2_734 = load <2 x i32>, <2 x i32>* %var_2_733, align 1
%var_2_735 = bitcast i64* %var_2_687 to <2 x i32>*
%var_2_736 = load <2 x i32>, <2 x i32>* %var_2_735, align 1
%var_2_737 = extractelement <2 x i32> %var_2_734, i32 0
; Matched:%var_2_736:  %var_2_736 = bitcast %union.VectorReg* %var_2_56 to i32*
; %var_2_738 = bitcast %union.VectorReg* %var_2_5 to i32*
; Matched:\<badref\>:  store i32 %var_2_735, i32* %var_2_736, align 1
; store i32 %var_2_737, i32* %var_2_738, align 1
%var_2_739 = extractelement <2 x i32> %var_2_734, i32 1
; Matched:%var_2_738:  %var_2_738 = getelementptr inbounds i8, i8* %var_2_641, i64 4
; %var_2_740 = getelementptr inbounds i8, i8* %var_2_646, i64 4
; Matched:%var_2_739:  %var_2_739 = bitcast i8* %var_2_738 to i32*
; %var_2_741 = bitcast i8* %var_2_740 to i32*
; Matched:\<badref\>:  store i32 %var_2_1351, i32* %var_2_739, align 1
; store i32 %var_2_739, i32* %var_2_741, align 1
%var_2_742 = extractelement <2 x i32> %var_2_736, i32 0
; Matched:%var_2_741:  %var_2_741 = bitcast i64* %var_2_647 to i32*
; %var_2_743 = bitcast i64* %var_2_652 to i32*
; Matched:\<badref\>:  store i32 %var_2_740, i32* %var_2_741, align 1
; store i32 %var_2_742, i32* %var_2_743, align 1
%var_2_744 = extractelement <2 x i32> %var_2_736, i32 1
; Matched:%var_2_743:  %var_2_743 = getelementptr inbounds i8, i8* %var_2_641, i64 12
; %var_2_745 = getelementptr inbounds i8, i8* %var_2_646, i64 12
; Matched:%var_2_744:  %var_2_744 = bitcast i8* %var_2_743 to i32*
; %var_2_746 = bitcast i8* %var_2_745 to i32*
; Matched:\<badref\>:  store i32 %var_2_742, i32* %var_2_744, align 1
; store i32 %var_2_744, i32* %var_2_746, align 1
%var_2_747 = add i64 %var_2_732, 908
; Matched:%var_2_746:  %var_2_746 = add i64 %var_2_730, 8
; %var_2_748 = add i64 %var_2_732, 8
%var_2_749 = load i64, i64* %RSP, align 8
%var_2_750 = add i64 %var_2_749, -8
; Matched:%var_2_1358:  %var_2_1358 = inttoptr i64 %var_2_1357 to i64*
; %var_2_751 = inttoptr i64 %var_2_750 to i64*
; Matched:\<badref\>:  store i64 %var_2_1355, i64* %var_2_1358, align 8
; store i64 %var_2_748, i64* %var_2_751, align 8
; Matched:\<badref\>:  store i64 %var_2_748, i64* %var_2_6, align 8
; store i64 %var_2_750, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_745, i64* %var_2_3, align 8
; store i64 %var_2_747, i64* %PC, align 8
%var_2_752 = tail call %struct.Memory* @sub_400c00_grad_renamed_(%struct.State* nonnull %0, i64 %var_2_747, %struct.Memory* %var_2_278)
%var_2_753 = load i64, i64* %PC, align 8
%var_2_754 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_400e10__rodata_type* @seg_400e10__rodata to i64), i64 80) to i64*), align 16
store i64 %var_2_754, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
%var_2_755 = load i64, i64* %RBP, align 8
%var_2_756 = add i64 %var_2_755, -84
; Matched:%var_2_127:  %var_2_127 = add i64 %var_2_110, 12
; %var_2_757 = add i64 %var_2_753, 12
; Matched:\<badref\>:  store i64 %var_2_127, i64* %var_2_3, align 8
; store i64 %var_2_757, i64* %PC, align 8
%var_2_758 = inttoptr i64 %var_2_756 to i32*
%var_2_759 = load i32, i32* %var_2_758, align 4
%var_2_760 = sext i32 %var_2_759 to i64
; Matched:\<badref\>:  store i64 %var_2_760, i64* %RCX.i523, align 8
; store i64 %var_2_760, i64* %RCX, align 8
%var_2_761 = shl nsw i64 %var_2_760, 2
%var_2_762 = add i64 %var_2_761, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
; Matched:%var_2_763:  %var_2_763 = add i64 %var_2_750, 19
; %var_2_763 = add i64 %var_2_753, 19
; Matched:\<badref\>:  store i64 %var_2_763, i64* %var_2_3, align 8
; store i64 %var_2_763, i64* %PC, align 8
%var_2_764 = inttoptr i64 %var_2_762 to i32*
%var_2_765 = load i32, i32* %var_2_764, align 4
%var_2_766 = zext i32 %var_2_765 to i64
store i64 %var_2_766, i64* %RDI, align 8
; Matched:%var_2_1399:  %var_2_1399 = add i64 %var_2_1364, -8
; %var_2_767 = add i64 %var_2_755, -8
; Matched:%var_2_935:  %var_2_935 = add i64 %var_2_917, 24
; %var_2_768 = add i64 %var_2_753, 24
; Matched:\<badref\>:  store i64 %var_2_1188, i64* %var_2_3, align 8
; store i64 %var_2_768, i64* %PC, align 8
; Matched:%var_2_769:  %var_2_769 = inttoptr i64 %var_2_767 to double*
; %var_2_769 = inttoptr i64 %var_2_767 to double*
; Matched:%var_2_1195:  %var_2_1195 = load double, double* %var_2_1194, align 8
; %var_2_770 = load double, double* %var_2_769, align 8
%var_2_771 = bitcast i64 %var_2_754 to double
; Matched:%var_2_1404:  %var_2_1404 = fsub double %var_2_1402, %var_2_1403
; %var_2_772 = fsub double %var_2_770, %var_2_771
; Matched:\<badref\>:  store double %var_2_1197, double* %var_2_646, align 1
; store double %var_2_772, double* %var_2_651, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_647, align 1
; store i64 0, i64* %var_2_652, align 1
; Matched:%var_2_773:  %var_2_773 = add i64 %var_2_755, -16
; %var_2_773 = add i64 %var_2_755, -16
; Matched:%var_2_941:  %var_2_941 = add i64 %var_2_917, 33
; %var_2_774 = add i64 %var_2_753, 33
; Matched:\<badref\>:  store i64 %var_2_774, i64* %var_2_3, align 8
; store i64 %var_2_774, i64* %PC, align 8
; Matched:%var_2_775:  %var_2_775 = inttoptr i64 %var_2_773 to i64*
; %var_2_775 = inttoptr i64 %var_2_773 to i64*
; Matched:%var_2_776:  %var_2_776 = load i64, i64* %var_2_775, align 8
; %var_2_776 = load i64, i64* %var_2_775, align 8
; Matched:\<badref\>:  store i64 %var_2_776, i64* %var_2_53, align 1
; store i64 %var_2_776, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
; Matched:%var_2_777:  %var_2_777 = add i64 %var_2_755, -24
; %var_2_777 = add i64 %var_2_755, -24
; Matched:%var_2_1199:  %var_2_1199 = add i64 %var_2_1152, 38
; %var_2_778 = add i64 %var_2_753, 38
; Matched:\<badref\>:  store i64 %var_2_778, i64* %var_2_3, align 8
; store i64 %var_2_778, i64* %PC, align 8
; Matched:%var_2_779:  %var_2_779 = inttoptr i64 %var_2_777 to i64*
; %var_2_779 = inttoptr i64 %var_2_777 to i64*
; Matched:%var_2_780:  %var_2_780 = load i64, i64* %var_2_779, align 8
; %var_2_780 = load i64, i64* %var_2_779, align 8
; Matched:\<badref\>:  store i64 %var_2_780, i64* %var_2_666, align 1
; store i64 %var_2_780, i64* %var_2_670, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_668, align 1
; store double 0.000000e+00, double* %var_2_672, align 1
; Matched:%var_2_781:  %var_2_781 = add i64 %var_2_755, -120
; %var_2_781 = add i64 %var_2_755, -120
; Matched:%var_2_1203:  %var_2_1203 = add i64 %var_2_1152, 43
; %var_2_782 = add i64 %var_2_753, 43
; Matched:\<badref\>:  store i64 %var_2_1203, i64* %var_2_3, align 8
; store i64 %var_2_782, i64* %PC, align 8
; Matched:%var_2_783:  %var_2_783 = load i64, i64* %var_2_44, align 1
; %var_2_783 = load i64, i64* %var_2_48, align 1
; Matched:%var_2_784:  %var_2_784 = inttoptr i64 %var_2_781 to i64*
; %var_2_784 = inttoptr i64 %var_2_781 to i64*
; Matched:\<badref\>:  store i64 %var_2_783, i64* %var_2_784, align 8
; store i64 %var_2_783, i64* %var_2_784, align 8
%var_2_785 = load i64, i64* %PC, align 8
%var_2_786 = bitcast %union.VectorReg* %var_2_5 to <2 x i32>*
%var_2_787 = load <2 x i32>, <2 x i32>* %var_2_786, align 1
%var_2_788 = bitcast i64* %var_2_652 to <2 x i32>*
%var_2_789 = load <2 x i32>, <2 x i32>* %var_2_788, align 1
%var_2_790 = extractelement <2 x i32> %var_2_787, i32 0
; Matched:\<badref\>:  store i32 %var_2_1214, i32* %var_2_696, align 1
; store i32 %var_2_790, i32* %var_2_698, align 1
%var_2_791 = extractelement <2 x i32> %var_2_787, i32 1
; Matched:\<badref\>:  store i32 %var_2_1215, i32* %var_2_699, align 1
; store i32 %var_2_791, i32* %var_2_701, align 1
%var_2_792 = extractelement <2 x i32> %var_2_789, i32 0
; Matched:\<badref\>:  store i32 %var_2_1216, i32* %var_2_701, align 1
; store i32 %var_2_792, i32* %var_2_703, align 1
%var_2_793 = extractelement <2 x i32> %var_2_789, i32 1
; Matched:\<badref\>:  store i32 %var_2_1425, i32* %var_2_704, align 1
; store i32 %var_2_793, i32* %var_2_706, align 1
%var_2_794 = load <2 x i32>, <2 x i32>* %var_2_693, align 1
%var_2_795 = load <2 x i32>, <2 x i32>* %var_2_695, align 1
%var_2_796 = extractelement <2 x i32> %var_2_794, i32 0
; Matched:\<badref\>:  store i32 %var_2_908, i32* %var_2_736, align 1
; store i32 %var_2_796, i32* %var_2_738, align 1
%var_2_797 = extractelement <2 x i32> %var_2_794, i32 1
; Matched:\<badref\>:  store i32 %var_2_909, i32* %var_2_739, align 1
; store i32 %var_2_797, i32* %var_2_741, align 1
%var_2_798 = extractelement <2 x i32> %var_2_795, i32 0
; Matched:\<badref\>:  store i32 %var_2_910, i32* %var_2_741, align 1
; store i32 %var_2_798, i32* %var_2_743, align 1
%var_2_799 = extractelement <2 x i32> %var_2_795, i32 1
; Matched:\<badref\>:  store i32 %var_2_911, i32* %var_2_744, align 1
; store i32 %var_2_799, i32* %var_2_746, align 1
%var_2_800 = add i64 %var_2_785, 857
; Matched:%var_2_801:  %var_2_801 = add i64 %var_2_785, 11
; %var_2_801 = add i64 %var_2_785, 11
%var_2_802 = load i64, i64* %RSP, align 8
%var_2_803 = add i64 %var_2_802, -8
; Matched:%var_2_804:  %var_2_804 = inttoptr i64 %var_2_803 to i64*
; %var_2_804 = inttoptr i64 %var_2_803 to i64*
; Matched:\<badref\>:  store i64 %var_2_801, i64* %var_2_804, align 8
; store i64 %var_2_801, i64* %var_2_804, align 8
; Matched:\<badref\>:  store i64 %var_2_1357, i64* %var_2_6, align 8
; store i64 %var_2_803, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_800, i64* %var_2_3, align 8
; store i64 %var_2_800, i64* %PC, align 8
%var_2_805 = tail call %struct.Memory* @sub_400c00_grad_renamed_(%struct.State* nonnull %0, i64 %var_2_800, %struct.Memory* %var_2_752)
; Matched:%var_2_805:  %var_2_805 = load i64, i64* %RBP.i, align 8
; %var_2_806 = load i64, i64* %RBP, align 8
; Matched:%var_2_806:  %var_2_806 = add i64 %var_2_805, -112
; %var_2_807 = add i64 %var_2_806, -112
%var_2_808 = load i64, i64* %PC, align 8
; Matched:%var_2_249:  %var_2_249 = add i64 %var_2_248, 5
; %var_2_809 = add i64 %var_2_808, 5
; Matched:\<badref\>:  store i64 %var_2_249, i64* %var_2_3, align 8
; store i64 %var_2_809, i64* %PC, align 8
; Matched:%var_2_809:  %var_2_809 = inttoptr i64 %var_2_806 to i64*
; %var_2_810 = inttoptr i64 %var_2_807 to i64*
; Matched:%var_2_810:  %var_2_810 = load i64, i64* %var_2_809, align 8
; %var_2_811 = load i64, i64* %var_2_810, align 8
; Matched:\<badref\>:  store i64 %var_2_810, i64* %var_2_53, align 1
; store i64 %var_2_811, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
; Matched:%var_2_811:  %var_2_811 = add i64 %var_2_805, -128
; %var_2_812 = add i64 %var_2_806, -128
; Matched:%var_2_812:  %var_2_812 = add i64 %var_2_807, 10
; %var_2_813 = add i64 %var_2_808, 10
; Matched:\<badref\>:  store i64 %var_2_638, i64* %var_2_3, align 8
; store i64 %var_2_813, i64* %PC, align 8
; Matched:%var_2_813:  %var_2_813 = load i64, i64* %var_2_44, align 1
; %var_2_814 = load i64, i64* %var_2_48, align 1
; Matched:%var_2_814:  %var_2_814 = inttoptr i64 %var_2_811 to i64*
; %var_2_815 = inttoptr i64 %var_2_812 to i64*
; Matched:\<badref\>:  store i64 %var_2_813, i64* %var_2_814, align 8
; store i64 %var_2_814, i64* %var_2_815, align 8
%var_2_816 = load i64, i64* %PC, align 8
%var_2_817 = bitcast %union.VectorReg* %var_2_4 to <2 x i32>*
%var_2_818 = load <2 x i32>, <2 x i32>* %var_2_817, align 1
%var_2_819 = bitcast i64* %var_2_181 to <2 x i32>*
%var_2_820 = load <2 x i32>, <2 x i32>* %var_2_819, align 1
%var_2_821 = extractelement <2 x i32> %var_2_818, i32 0
; Matched:\<badref\>:  store i32 %var_2_1518, i32* %var_2_696, align 1
; store i32 %var_2_821, i32* %var_2_698, align 1
%var_2_822 = extractelement <2 x i32> %var_2_818, i32 1
; Matched:\<badref\>:  store i32 %var_2_1519, i32* %var_2_699, align 1
; store i32 %var_2_822, i32* %var_2_701, align 1
%var_2_823 = extractelement <2 x i32> %var_2_820, i32 0
; Matched:\<badref\>:  store i32 %var_2_1520, i32* %var_2_701, align 1
; store i32 %var_2_823, i32* %var_2_703, align 1
%var_2_824 = extractelement <2 x i32> %var_2_820, i32 1
; Matched:\<badref\>:  store i32 %var_2_1459, i32* %var_2_704, align 1
; store i32 %var_2_824, i32* %var_2_706, align 1
; Matched:%var_2_824:  %var_2_824 = load i64, i64* %RBP.i, align 8
; %var_2_825 = load i64, i64* %RBP, align 8
; Matched:%var_2_825:  %var_2_825 = add i64 %var_2_824, -120
; %var_2_826 = add i64 %var_2_825, -120
%var_2_827 = add i64 %var_2_816, 8
store i64 %var_2_827, i64* %PC, align 8
; Matched:%var_2_827:  %var_2_827 = inttoptr i64 %var_2_825 to i64*
; %var_2_828 = inttoptr i64 %var_2_826 to i64*
; Matched:%var_2_828:  %var_2_828 = load i64, i64* %var_2_827, align 8
; %var_2_829 = load i64, i64* %var_2_828, align 8
; Matched:\<badref\>:  store i64 %var_2_828, i64* %var_2_53, align 1
; store i64 %var_2_829, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
; Matched:%var_2_829:  %var_2_829 = add i64 %var_2_824, -128
; %var_2_830 = add i64 %var_2_825, -128
; Matched:%var_2_830:  %var_2_830 = add i64 %var_2_815, 13
; %var_2_831 = add i64 %var_2_816, 13
; Matched:\<badref\>:  store i64 %var_2_1512, i64* %var_2_3, align 8
; store i64 %var_2_831, i64* %PC, align 8
; Matched:%var_2_831:  %var_2_831 = inttoptr i64 %var_2_829 to i64*
; %var_2_832 = inttoptr i64 %var_2_830 to i64*
; Matched:%var_2_832:  %var_2_832 = load i64, i64* %var_2_831, align 8
; %var_2_833 = load i64, i64* %var_2_832, align 8
; Matched:\<badref\>:  store i64 %var_2_832, i64* %var_2_61, align 1
; store i64 %var_2_833, i64* %var_2_63, align 1
store double 0.000000e+00, double* %var_2_653, align 1
%var_2_834 = add i64 %var_2_816, 1172
; Matched:%var_2_834:  %var_2_834 = add i64 %var_2_815, 18
; %var_2_835 = add i64 %var_2_816, 18
%var_2_836 = load i64, i64* %RSP, align 8
%var_2_837 = add i64 %var_2_836, -8
; Matched:%var_2_837:  %var_2_837 = inttoptr i64 %var_2_836 to i64*
; %var_2_838 = inttoptr i64 %var_2_837 to i64*
; Matched:\<badref\>:  store i64 %var_2_834, i64* %var_2_837, align 8
; store i64 %var_2_835, i64* %var_2_838, align 8
; Matched:\<badref\>:  store i64 %var_2_915, i64* %var_2_6, align 8
; store i64 %var_2_837, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_833, i64* %var_2_3, align 8
; store i64 %var_2_834, i64* %PC, align 8
%var_2_839 = tail call %struct.Memory* @sub_400d50_lerp_renamed_(%struct.State* nonnull %0, i64 %var_2_834, %struct.Memory* %var_2_805)
%var_2_840 = load i64, i64* %PC, align 8
%var_2_841 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_400e10__rodata_type* @seg_400e10__rodata to i64), i64 80) to i64*), align 16
store i64 %var_2_841, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
%var_2_842 = load i64, i64* %RBP, align 8
; Matched:%var_2_844:  %var_2_844 = add i64 %var_2_843, -48
; %var_2_843 = add i64 %var_2_842, -48
; Matched:%var_2_845:  %var_2_845 = add i64 %var_2_838, 13
; %var_2_844 = add i64 %var_2_840, 13
; Matched:\<badref\>:  store i64 %var_2_1051, i64* %var_2_3, align 8
; store i64 %var_2_844, i64* %PC, align 8
; Matched:%var_2_846:  %var_2_846 = inttoptr i64 %var_2_844 to i64*
; %var_2_845 = inttoptr i64 %var_2_843 to i64*
; Matched:%var_2_847:  %var_2_847 = load i64, i64* %var_2_846, align 8
; %var_2_846 = load i64, i64* %var_2_845, align 8
; Matched:\<badref\>:  store i64 %var_2_847, i64* %var_2_61, align 1
; store i64 %var_2_846, i64* %var_2_63, align 1
store double 0.000000e+00, double* %var_2_653, align 1
%var_2_847 = add i64 %var_2_842, -76
; Matched:%var_2_372:  %var_2_372 = add i64 %var_2_329, 17
; %var_2_848 = add i64 %var_2_840, 17
; Matched:\<badref\>:  store i64 %var_2_559, i64* %var_2_3, align 8
; store i64 %var_2_848, i64* %PC, align 8
%var_2_849 = inttoptr i64 %var_2_847 to i32*
%var_2_850 = load i32, i32* %var_2_849, align 4
%var_2_851 = sext i32 %var_2_850 to i64
; Matched:\<badref\>:  store i64 %var_2_852, i64* %RCX.i523, align 8
; store i64 %var_2_851, i64* %RCX, align 8
%var_2_852 = shl nsw i64 %var_2_851, 2
%var_2_853 = add i64 %var_2_852, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
; Matched:%var_2_768:  %var_2_768 = add i64 %var_2_750, 24
; %var_2_854 = add i64 %var_2_840, 24
; Matched:\<badref\>:  store i64 %var_2_935, i64* %var_2_3, align 8
; store i64 %var_2_854, i64* %PC, align 8
%var_2_855 = inttoptr i64 %var_2_853 to i32*
%var_2_856 = load i32, i32* %var_2_855, align 4
%var_2_857 = zext i32 %var_2_856 to i64
store i64 %var_2_857, i64* %RDI, align 8
; Matched:%var_2_859:  %var_2_859 = add i64 %var_2_843, -8
; %var_2_858 = add i64 %var_2_842, -8
; Matched:%var_2_1193:  %var_2_1193 = add i64 %var_2_1152, 29
; %var_2_859 = add i64 %var_2_840, 29
; Matched:\<badref\>:  store i64 %var_2_1193, i64* %var_2_3, align 8
; store i64 %var_2_859, i64* %PC, align 8
; Matched:%var_2_663:  %var_2_663 = inttoptr i64 %var_2_661 to i64*
; %var_2_860 = inttoptr i64 %var_2_858 to i64*
; Matched:%var_2_862:  %var_2_862 = load i64, i64* %var_2_861, align 8
; %var_2_861 = load i64, i64* %var_2_860, align 8
; Matched:\<badref\>:  store i64 %var_2_664, i64* %var_2_666, align 1
; store i64 %var_2_861, i64* %var_2_670, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_668, align 1
; store double 0.000000e+00, double* %var_2_672, align 1
; Matched:%var_2_1314:  %var_2_1314 = add i64 %var_2_1271, -16
; %var_2_862 = add i64 %var_2_842, -16
; Matched:%var_2_864:  %var_2_864 = add i64 %var_2_838, 34
; %var_2_863 = add i64 %var_2_840, 34
; Matched:\<badref\>:  store i64 %var_2_864, i64* %var_2_3, align 8
; store i64 %var_2_863, i64* %PC, align 8
; Matched:%var_2_865:  %var_2_865 = inttoptr i64 %var_2_863 to double*
; %var_2_864 = inttoptr i64 %var_2_862 to double*
; Matched:%var_2_866:  %var_2_866 = load double, double* %var_2_865, align 8
; %var_2_865 = load double, double* %var_2_864, align 8
; Matched:%var_2_1318:  %var_2_1318 = bitcast i64 %var_2_1270 to double
; %var_2_866 = bitcast i64 %var_2_841 to double
; Matched:%var_2_868:  %var_2_868 = fsub double %var_2_866, %var_2_867
; %var_2_867 = fsub double %var_2_865, %var_2_866
; Matched:\<badref\>:  store double %var_2_868, double* %var_2_674, align 1
; store double %var_2_867, double* %var_2_677, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_676, align 1
; store i64 0, i64* %var_2_679, align 1
; Matched:%var_2_869:  %var_2_869 = add i64 %var_2_843, -24
; %var_2_868 = add i64 %var_2_842, -24
; Matched:%var_2_782:  %var_2_782 = add i64 %var_2_750, 43
; %var_2_869 = add i64 %var_2_840, 43
; Matched:\<badref\>:  store i64 %var_2_782, i64* %var_2_3, align 8
; store i64 %var_2_869, i64* %PC, align 8
; Matched:%var_2_871:  %var_2_871 = inttoptr i64 %var_2_869 to i64*
; %var_2_870 = inttoptr i64 %var_2_868 to i64*
; Matched:%var_2_872:  %var_2_872 = load i64, i64* %var_2_871, align 8
; %var_2_871 = load i64, i64* %var_2_870, align 8
; Matched:\<badref\>:  store i64 %var_2_872, i64* %var_2_53, align 1
; store i64 %var_2_871, i64* %var_2_56, align 1
; Matched:%var_2_873:  %var_2_873 = add i64 %var_2_843, -136
; %var_2_872 = add i64 %var_2_842, -136
; Matched:%var_2_874:  %var_2_874 = add i64 %var_2_838, 51
; %var_2_873 = add i64 %var_2_840, 51
; Matched:\<badref\>:  store i64 %var_2_874, i64* %var_2_3, align 8
; store i64 %var_2_873, i64* %PC, align 8
; Matched:%var_2_875:  %var_2_875 = load i64, i64* %var_2_44, align 1
; %var_2_874 = load i64, i64* %var_2_48, align 1
; Matched:%var_2_876:  %var_2_876 = inttoptr i64 %var_2_873 to i64*
; %var_2_875 = inttoptr i64 %var_2_872 to i64*
; Matched:\<badref\>:  store i64 %var_2_875, i64* %var_2_876, align 8
; store i64 %var_2_874, i64* %var_2_875, align 8
%var_2_876 = load i64, i64* %PC, align 8
%var_2_877 = load <2 x i32>, <2 x i32>* %var_2_693, align 1
%var_2_878 = load <2 x i32>, <2 x i32>* %var_2_695, align 1
%var_2_879 = extractelement <2 x i32> %var_2_877, i32 0
; Matched:\<badref\>:  store i32 %var_2_1332, i32* %var_2_696, align 1
; store i32 %var_2_879, i32* %var_2_698, align 1
%var_2_880 = extractelement <2 x i32> %var_2_877, i32 1
; Matched:\<badref\>:  store i32 %var_2_1333, i32* %var_2_699, align 1
; store i32 %var_2_880, i32* %var_2_701, align 1
%var_2_881 = extractelement <2 x i32> %var_2_878, i32 0
; Matched:\<badref\>:  store i32 %var_2_882, i32* %var_2_701, align 1
; store i32 %var_2_881, i32* %var_2_703, align 1
%var_2_882 = extractelement <2 x i32> %var_2_878, i32 1
; Matched:\<badref\>:  store i32 %var_2_883, i32* %var_2_704, align 1
; store i32 %var_2_882, i32* %var_2_706, align 1
; Matched:%var_2_884:  %var_2_884 = load i64, i64* %RBP.i, align 8
; %var_2_883 = load i64, i64* %RBP, align 8
; Matched:%var_2_885:  %var_2_885 = add i64 %var_2_884, -144
; %var_2_884 = add i64 %var_2_883, -144
; Matched:%var_2_886:  %var_2_886 = add i64 %var_2_877, 11
; %var_2_885 = add i64 %var_2_876, 11
; Matched:\<badref\>:  store i64 %var_2_886, i64* %var_2_3, align 8
; store i64 %var_2_885, i64* %PC, align 8
; Matched:%var_2_887:  %var_2_887 = load i64, i64* %var_2_53, align 1
; %var_2_886 = load i64, i64* %var_2_56, align 1
; Matched:%var_2_888:  %var_2_888 = inttoptr i64 %var_2_885 to i64*
; %var_2_887 = inttoptr i64 %var_2_884 to i64*
; Matched:\<badref\>:  store i64 %var_2_887, i64* %var_2_888, align 8
; store i64 %var_2_886, i64* %var_2_887, align 8
%var_2_888 = load i64, i64* %PC, align 8
%var_2_889 = load <2 x i32>, <2 x i32>* %var_2_713, align 1
%var_2_890 = load <2 x i32>, <2 x i32>* %var_2_715, align 1
%var_2_891 = extractelement <2 x i32> %var_2_889, i32 0
; Matched:\<badref\>:  store i32 %var_2_715, i32* %var_2_716, align 1
; store i32 %var_2_891, i32* %var_2_718, align 1
%var_2_892 = extractelement <2 x i32> %var_2_889, i32 1
; Matched:\<badref\>:  store i32 %var_2_893, i32* %var_2_719, align 1
; store i32 %var_2_892, i32* %var_2_721, align 1
%var_2_893 = extractelement <2 x i32> %var_2_890, i32 0
; Matched:\<badref\>:  store i32 %var_2_894, i32* %var_2_721, align 1
; store i32 %var_2_893, i32* %var_2_723, align 1
%var_2_894 = extractelement <2 x i32> %var_2_890, i32 1
; Matched:\<badref\>:  store i32 %var_2_895, i32* %var_2_724, align 1
; store i32 %var_2_894, i32* %var_2_726, align 1
; Matched:%var_2_896:  %var_2_896 = load i64, i64* %RBP.i, align 8
; %var_2_895 = load i64, i64* %RBP, align 8
; Matched:%var_2_897:  %var_2_897 = add i64 %var_2_896, -144
; %var_2_896 = add i64 %var_2_895, -144
; Matched:%var_2_1032:  %var_2_1032 = add i64 %var_2_1023, 11
; %var_2_897 = add i64 %var_2_888, 11
; Matched:\<badref\>:  store i64 %var_2_1032, i64* %var_2_3, align 8
; store i64 %var_2_897, i64* %PC, align 8
; Matched:%var_2_899:  %var_2_899 = inttoptr i64 %var_2_897 to i64*
; %var_2_898 = inttoptr i64 %var_2_896 to i64*
; Matched:%var_2_900:  %var_2_900 = load i64, i64* %var_2_899, align 8
; %var_2_899 = load i64, i64* %var_2_898, align 8
; Matched:\<badref\>:  store i64 %var_2_900, i64* %var_2_666, align 1
; store i64 %var_2_899, i64* %var_2_670, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_668, align 1
; store double 0.000000e+00, double* %var_2_672, align 1
; Matched:%var_2_901:  %var_2_901 = add i64 %var_2_896, -152
; %var_2_900 = add i64 %var_2_895, -152
; Matched:%var_2_1258:  %var_2_1258 = add i64 %var_2_1245, 19
; %var_2_901 = add i64 %var_2_888, 19
; Matched:\<badref\>:  store i64 %var_2_1528, i64* %var_2_3, align 8
; store i64 %var_2_901, i64* %PC, align 8
; Matched:%var_2_903:  %var_2_903 = load i64, i64* %var_2_61, align 1
; %var_2_902 = load i64, i64* %var_2_63, align 1
; Matched:%var_2_904:  %var_2_904 = inttoptr i64 %var_2_901 to i64*
; %var_2_903 = inttoptr i64 %var_2_900 to i64*
; Matched:\<badref\>:  store i64 %var_2_903, i64* %var_2_904, align 8
; store i64 %var_2_902, i64* %var_2_903, align 8
%var_2_904 = load i64, i64* %PC, align 8
%var_2_905 = load <2 x i32>, <2 x i32>* %var_2_693, align 1
%var_2_906 = load <2 x i32>, <2 x i32>* %var_2_695, align 1
%var_2_907 = extractelement <2 x i32> %var_2_905, i32 0
; Matched:\<badref\>:  store i32 %var_2_796, i32* %var_2_736, align 1
; store i32 %var_2_907, i32* %var_2_738, align 1
%var_2_908 = extractelement <2 x i32> %var_2_905, i32 1
; Matched:\<badref\>:  store i32 %var_2_797, i32* %var_2_739, align 1
; store i32 %var_2_908, i32* %var_2_741, align 1
%var_2_909 = extractelement <2 x i32> %var_2_906, i32 0
; Matched:\<badref\>:  store i32 %var_2_798, i32* %var_2_741, align 1
; store i32 %var_2_909, i32* %var_2_743, align 1
%var_2_910 = extractelement <2 x i32> %var_2_906, i32 1
; Matched:\<badref\>:  store i32 %var_2_799, i32* %var_2_744, align 1
; store i32 %var_2_910, i32* %var_2_746, align 1
%var_2_911 = add i64 %var_2_904, 737
; Matched:%var_2_913:  %var_2_913 = add i64 %var_2_905, 8
; %var_2_912 = add i64 %var_2_904, 8
%var_2_913 = load i64, i64* %RSP, align 8
%var_2_914 = add i64 %var_2_913, -8
; Matched:%var_2_916:  %var_2_916 = inttoptr i64 %var_2_915 to i64*
; %var_2_915 = inttoptr i64 %var_2_914 to i64*
; Matched:\<badref\>:  store i64 %var_2_746, i64* %var_2_749, align 8
; store i64 %var_2_912, i64* %var_2_915, align 8
; Matched:\<badref\>:  store i64 %var_2_216, i64* %var_2_6, align 8
; store i64 %var_2_914, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_912, i64* %var_2_3, align 8
; store i64 %var_2_911, i64* %PC, align 8
%var_2_916 = tail call %struct.Memory* @sub_400c00_grad_renamed_(%struct.State* nonnull %0, i64 %var_2_911, %struct.Memory* %var_2_839)
%var_2_917 = load i64, i64* %PC, align 8
%var_2_918 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_400e10__rodata_type* @seg_400e10__rodata to i64), i64 80) to i64*), align 16
store i64 %var_2_918, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
%var_2_919 = load i64, i64* %RBP, align 8
%var_2_920 = add i64 %var_2_919, -88
; Matched:%var_2_757:  %var_2_757 = add i64 %var_2_750, 12
; %var_2_921 = add i64 %var_2_917, 12
; Matched:\<badref\>:  store i64 %var_2_757, i64* %var_2_3, align 8
; store i64 %var_2_921, i64* %PC, align 8
%var_2_922 = inttoptr i64 %var_2_920 to i32*
%var_2_923 = load i32, i32* %var_2_922, align 4
%var_2_924 = sext i32 %var_2_923 to i64
; Matched:\<badref\>:  store i64 %var_2_927, i64* %RCX.i523, align 8
; store i64 %var_2_924, i64* %RCX, align 8
%var_2_925 = shl nsw i64 %var_2_924, 2
%var_2_926 = add i64 %var_2_925, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
; Matched:%var_2_598:  %var_2_598 = add i64 %var_2_563, 19
; %var_2_927 = add i64 %var_2_917, 19
; Matched:\<badref\>:  store i64 %var_2_598, i64* %var_2_3, align 8
; store i64 %var_2_927, i64* %PC, align 8
%var_2_928 = inttoptr i64 %var_2_926 to i32*
%var_2_929 = load i32, i32* %var_2_928, align 4
%var_2_930 = zext i32 %var_2_929 to i64
store i64 %var_2_930, i64* %RDI, align 8
; Matched:%var_2_767:  %var_2_767 = add i64 %var_2_755, -8
; %var_2_931 = add i64 %var_2_919, -8
; Matched:%var_2_1395:  %var_2_1395 = add i64 %var_2_1359, 24
; %var_2_932 = add i64 %var_2_917, 24
; Matched:\<badref\>:  store i64 %var_2_1395, i64* %var_2_3, align 8
; store i64 %var_2_932, i64* %PC, align 8
; Matched:%var_2_1194:  %var_2_1194 = inttoptr i64 %var_2_1192 to double*
; %var_2_933 = inttoptr i64 %var_2_931 to double*
; Matched:%var_2_1402:  %var_2_1402 = load double, double* %var_2_1401, align 8
; %var_2_934 = load double, double* %var_2_933, align 8
%var_2_935 = bitcast i64 %var_2_918 to double
; Matched:%var_2_772:  %var_2_772 = fsub double %var_2_770, %var_2_771
; %var_2_936 = fsub double %var_2_934, %var_2_935
; Matched:\<badref\>:  store double %var_2_772, double* %var_2_646, align 1
; store double %var_2_936, double* %var_2_651, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_647, align 1
; store i64 0, i64* %var_2_652, align 1
; Matched:%var_2_1405:  %var_2_1405 = add i64 %var_2_1364, -16
; %var_2_937 = add i64 %var_2_919, -16
; Matched:%var_2_774:  %var_2_774 = add i64 %var_2_750, 33
; %var_2_938 = add i64 %var_2_917, 33
; Matched:\<badref\>:  store i64 %var_2_941, i64* %var_2_3, align 8
; store i64 %var_2_938, i64* %PC, align 8
; Matched:%var_2_1407:  %var_2_1407 = inttoptr i64 %var_2_1405 to double*
; %var_2_939 = inttoptr i64 %var_2_937 to double*
; Matched:%var_2_1408:  %var_2_1408 = load double, double* %var_2_1407, align 8
; %var_2_940 = load double, double* %var_2_939, align 8
; Matched:%var_2_1409:  %var_2_1409 = fsub double %var_2_1408, %var_2_1403
; %var_2_941 = fsub double %var_2_940, %var_2_935
; Matched:\<badref\>:  store double %var_2_1409, double* %var_2_665, align 1
; store double %var_2_941, double* %var_2_669, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_667, align 1
; store i64 0, i64* %var_2_671, align 1
; Matched:%var_2_945:  %var_2_945 = add i64 %var_2_922, -24
; %var_2_942 = add i64 %var_2_919, -24
; Matched:%var_2_946:  %var_2_946 = add i64 %var_2_917, 42
; %var_2_943 = add i64 %var_2_917, 42
; Matched:\<badref\>:  store i64 %var_2_946, i64* %var_2_3, align 8
; store i64 %var_2_943, i64* %PC, align 8
; Matched:%var_2_947:  %var_2_947 = inttoptr i64 %var_2_945 to i64*
; %var_2_944 = inttoptr i64 %var_2_942 to i64*
; Matched:%var_2_948:  %var_2_948 = load i64, i64* %var_2_947, align 8
; %var_2_945 = load i64, i64* %var_2_944, align 8
; Matched:\<badref\>:  store i64 %var_2_948, i64* %var_2_53, align 1
; store i64 %var_2_945, i64* %var_2_56, align 1
; Matched:%var_2_949:  %var_2_949 = add i64 %var_2_922, -160
; %var_2_946 = add i64 %var_2_919, -160
; Matched:%var_2_950:  %var_2_950 = add i64 %var_2_917, 50
; %var_2_947 = add i64 %var_2_917, 50
; Matched:\<badref\>:  store i64 %var_2_950, i64* %var_2_3, align 8
; store i64 %var_2_947, i64* %PC, align 8
; Matched:%var_2_951:  %var_2_951 = load i64, i64* %var_2_44, align 1
; %var_2_948 = load i64, i64* %var_2_48, align 1
; Matched:%var_2_952:  %var_2_952 = inttoptr i64 %var_2_949 to i64*
; %var_2_949 = inttoptr i64 %var_2_946 to i64*
; Matched:\<badref\>:  store i64 %var_2_951, i64* %var_2_952, align 8
; store i64 %var_2_948, i64* %var_2_949, align 8
%var_2_950 = load i64, i64* %PC, align 8
%var_2_951 = load <2 x i32>, <2 x i32>* %var_2_786, align 1
%var_2_952 = load <2 x i32>, <2 x i32>* %var_2_788, align 1
%var_2_953 = extractelement <2 x i32> %var_2_951, i32 0
; Matched:\<badref\>:  store i32 %var_2_1422, i32* %var_2_696, align 1
; store i32 %var_2_953, i32* %var_2_698, align 1
%var_2_954 = extractelement <2 x i32> %var_2_951, i32 1
; Matched:\<badref\>:  store i32 %var_2_791, i32* %var_2_699, align 1
; store i32 %var_2_954, i32* %var_2_701, align 1
%var_2_955 = extractelement <2 x i32> %var_2_952, i32 0
; Matched:\<badref\>:  store i32 %var_2_792, i32* %var_2_701, align 1
; store i32 %var_2_955, i32* %var_2_703, align 1
%var_2_956 = extractelement <2 x i32> %var_2_952, i32 1
; Matched:\<badref\>:  store i32 %var_2_1217, i32* %var_2_704, align 1
; store i32 %var_2_956, i32* %var_2_706, align 1
; Matched:%var_2_960:  %var_2_960 = load i64, i64* %RBP.i, align 8
; %var_2_957 = load i64, i64* %RBP, align 8
; Matched:%var_2_961:  %var_2_961 = add i64 %var_2_960, -168
; %var_2_958 = add i64 %var_2_957, -168
; Matched:%var_2_1159:  %var_2_1159 = add i64 %var_2_1152, 11
; %var_2_959 = add i64 %var_2_950, 11
; Matched:\<badref\>:  store i64 %var_2_1493, i64* %var_2_3, align 8
; store i64 %var_2_959, i64* %PC, align 8
; Matched:%var_2_963:  %var_2_963 = load i64, i64* %var_2_53, align 1
; %var_2_960 = load i64, i64* %var_2_56, align 1
; Matched:%var_2_964:  %var_2_964 = inttoptr i64 %var_2_961 to i64*
; %var_2_961 = inttoptr i64 %var_2_958 to i64*
; Matched:\<badref\>:  store i64 %var_2_963, i64* %var_2_964, align 8
; store i64 %var_2_960, i64* %var_2_961, align 8
%var_2_962 = load i64, i64* %PC, align 8
%var_2_963 = load <2 x i32>, <2 x i32>* %var_2_693, align 1
%var_2_964 = load <2 x i32>, <2 x i32>* %var_2_695, align 1
%var_2_965 = extractelement <2 x i32> %var_2_963, i32 0
; Matched:\<badref\>:  store i32 %var_2_1428, i32* %var_2_716, align 1
; store i32 %var_2_965, i32* %var_2_718, align 1
%var_2_966 = extractelement <2 x i32> %var_2_963, i32 1
; Matched:\<badref\>:  store i32 %var_2_1429, i32* %var_2_719, align 1
; store i32 %var_2_966, i32* %var_2_721, align 1
%var_2_967 = extractelement <2 x i32> %var_2_964, i32 0
; Matched:\<badref\>:  store i32 %var_2_1222, i32* %var_2_721, align 1
; store i32 %var_2_967, i32* %var_2_723, align 1
%var_2_968 = extractelement <2 x i32> %var_2_964, i32 1
; Matched:\<badref\>:  store i32 %var_2_1223, i32* %var_2_724, align 1
; store i32 %var_2_968, i32* %var_2_726, align 1
; Matched:%var_2_972:  %var_2_972 = load i64, i64* %RBP.i, align 8
; %var_2_969 = load i64, i64* %RBP, align 8
; Matched:%var_2_973:  %var_2_973 = add i64 %var_2_972, -168
; %var_2_970 = add i64 %var_2_969, -168
; Matched:%var_2_1143:  %var_2_1143 = add i64 %var_2_1132, 11
; %var_2_971 = add i64 %var_2_962, 11
; Matched:\<badref\>:  store i64 %var_2_1143, i64* %var_2_3, align 8
; store i64 %var_2_971, i64* %PC, align 8
; Matched:%var_2_975:  %var_2_975 = inttoptr i64 %var_2_973 to i64*
; %var_2_972 = inttoptr i64 %var_2_970 to i64*
; Matched:%var_2_976:  %var_2_976 = load i64, i64* %var_2_975, align 8
; %var_2_973 = load i64, i64* %var_2_972, align 8
; Matched:\<badref\>:  store i64 %var_2_976, i64* %var_2_61, align 1
; store i64 %var_2_973, i64* %var_2_63, align 1
store double 0.000000e+00, double* %var_2_653, align 1
%var_2_974 = add i64 %var_2_962, 668
; Matched:%var_2_978:  %var_2_978 = add i64 %var_2_965, 16
; %var_2_975 = add i64 %var_2_962, 16
%var_2_976 = load i64, i64* %RSP, align 8
%var_2_977 = add i64 %var_2_976, -8
; Matched:%var_2_981:  %var_2_981 = inttoptr i64 %var_2_980 to i64*
; %var_2_978 = inttoptr i64 %var_2_977 to i64*
; Matched:\<badref\>:  store i64 %var_2_978, i64* %var_2_981, align 8
; store i64 %var_2_975, i64* %var_2_978, align 8
; Matched:\<badref\>:  store i64 %var_2_1233, i64* %var_2_6, align 8
; store i64 %var_2_977, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_977, i64* %var_2_3, align 8
; store i64 %var_2_974, i64* %PC, align 8
%var_2_979 = tail call %struct.Memory* @sub_400c00_grad_renamed_(%struct.State* nonnull %0, i64 %var_2_974, %struct.Memory* %var_2_916)
; Matched:%var_2_982:  %var_2_982 = load i64, i64* %RBP.i, align 8
; %var_2_980 = load i64, i64* %RBP, align 8
; Matched:%var_2_983:  %var_2_983 = add i64 %var_2_982, -152
; %var_2_981 = add i64 %var_2_980, -152
%var_2_982 = load i64, i64* %PC, align 8
%var_2_983 = add i64 %var_2_982, 8
store i64 %var_2_983, i64* %PC, align 8
; Matched:%var_2_986:  %var_2_986 = inttoptr i64 %var_2_983 to i64*
; %var_2_984 = inttoptr i64 %var_2_981 to i64*
; Matched:%var_2_987:  %var_2_987 = load i64, i64* %var_2_986, align 8
; %var_2_985 = load i64, i64* %var_2_984, align 8
; Matched:\<badref\>:  store i64 %var_2_987, i64* %var_2_53, align 1
; store i64 %var_2_985, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
; Matched:%var_2_988:  %var_2_988 = add i64 %var_2_982, -176
; %var_2_986 = add i64 %var_2_980, -176
; Matched:%var_2_1277:  %var_2_1277 = add i64 %var_2_1266, 16
; %var_2_987 = add i64 %var_2_982, 16
; Matched:\<badref\>:  store i64 %var_2_1277, i64* %var_2_3, align 8
; store i64 %var_2_987, i64* %PC, align 8
; Matched:%var_2_990:  %var_2_990 = load i64, i64* %var_2_44, align 1
; %var_2_988 = load i64, i64* %var_2_48, align 1
; Matched:%var_2_991:  %var_2_991 = inttoptr i64 %var_2_988 to i64*
; %var_2_989 = inttoptr i64 %var_2_986 to i64*
; Matched:\<badref\>:  store i64 %var_2_990, i64* %var_2_991, align 8
; store i64 %var_2_988, i64* %var_2_989, align 8
%var_2_990 = load i64, i64* %PC, align 8
%var_2_991 = load <2 x i32>, <2 x i32>* %var_2_817, align 1
%var_2_992 = load <2 x i32>, <2 x i32>* %var_2_819, align 1
%var_2_993 = extractelement <2 x i32> %var_2_991, i32 0
; Matched:\<badref\>:  store i32 %var_2_995, i32* %var_2_696, align 1
; store i32 %var_2_993, i32* %var_2_698, align 1
%var_2_994 = extractelement <2 x i32> %var_2_991, i32 1
; Matched:\<badref\>:  store i32 %var_2_996, i32* %var_2_699, align 1
; store i32 %var_2_994, i32* %var_2_701, align 1
%var_2_995 = extractelement <2 x i32> %var_2_992, i32 0
; Matched:\<badref\>:  store i32 %var_2_997, i32* %var_2_701, align 1
; store i32 %var_2_995, i32* %var_2_703, align 1
%var_2_996 = extractelement <2 x i32> %var_2_992, i32 1
; Matched:\<badref\>:  store i32 %var_2_1521, i32* %var_2_704, align 1
; store i32 %var_2_996, i32* %var_2_706, align 1
; Matched:%var_2_999:  %var_2_999 = load i64, i64* %RBP.i, align 8
; %var_2_997 = load i64, i64* %RBP, align 8
; Matched:%var_2_1000:  %var_2_1000 = add i64 %var_2_999, -160
; %var_2_998 = add i64 %var_2_997, -160
; Matched:%var_2_1493:  %var_2_1493 = add i64 %var_2_1484, 11
; %var_2_999 = add i64 %var_2_990, 11
; Matched:\<badref\>:  store i64 %var_2_1366, i64* %var_2_3, align 8
; store i64 %var_2_999, i64* %PC, align 8
; Matched:%var_2_1002:  %var_2_1002 = inttoptr i64 %var_2_1000 to i64*
; %var_2_1000 = inttoptr i64 %var_2_998 to i64*
; Matched:%var_2_1003:  %var_2_1003 = load i64, i64* %var_2_1002, align 8
; %var_2_1001 = load i64, i64* %var_2_1000, align 8
; Matched:\<badref\>:  store i64 %var_2_1003, i64* %var_2_53, align 1
; store i64 %var_2_1001, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
; Matched:%var_2_1004:  %var_2_1004 = add i64 %var_2_999, -176
; %var_2_1002 = add i64 %var_2_997, -176
; Matched:%var_2_1466:  %var_2_1466 = add i64 %var_2_1453, 19
; %var_2_1003 = add i64 %var_2_990, 19
; Matched:\<badref\>:  store i64 %var_2_1005, i64* %var_2_3, align 8
; store i64 %var_2_1003, i64* %PC, align 8
; Matched:%var_2_1006:  %var_2_1006 = inttoptr i64 %var_2_1004 to i64*
; %var_2_1004 = inttoptr i64 %var_2_1002 to i64*
; Matched:%var_2_1007:  %var_2_1007 = load i64, i64* %var_2_1006, align 8
; %var_2_1005 = load i64, i64* %var_2_1004, align 8
; Matched:\<badref\>:  store i64 %var_2_1007, i64* %var_2_61, align 1
; store i64 %var_2_1005, i64* %var_2_63, align 1
store double 0.000000e+00, double* %var_2_653, align 1
%var_2_1006 = add i64 %var_2_990, 972
; Matched:%var_2_1009:  %var_2_1009 = add i64 %var_2_992, 24
; %var_2_1007 = add i64 %var_2_990, 24
%var_2_1008 = load i64, i64* %RSP, align 8
%var_2_1009 = add i64 %var_2_1008, -8
; Matched:%var_2_1265:  %var_2_1265 = inttoptr i64 %var_2_1264 to i64*
; %var_2_1010 = inttoptr i64 %var_2_1009 to i64*
; Matched:\<badref\>:  store i64 %var_2_1262, i64* %var_2_1265, align 8
; store i64 %var_2_1007, i64* %var_2_1010, align 8
; Matched:\<badref\>:  store i64 %var_2_836, i64* %var_2_6, align 8
; store i64 %var_2_1009, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1008, i64* %var_2_3, align 8
; store i64 %var_2_1006, i64* %PC, align 8
%var_2_1011 = tail call %struct.Memory* @sub_400d50_lerp_renamed_(%struct.State* nonnull %0, i64 %var_2_1006, %struct.Memory* %var_2_979)
; Matched:%var_2_1013:  %var_2_1013 = load i64, i64* %RBP.i, align 8
; %var_2_1012 = load i64, i64* %RBP, align 8
; Matched:%var_2_1014:  %var_2_1014 = add i64 %var_2_1013, -104
; %var_2_1013 = add i64 %var_2_1012, -104
%var_2_1014 = load i64, i64* %PC, align 8
; Matched:%var_2_232:  %var_2_232 = add i64 %var_2_231, 5
; %var_2_1015 = add i64 %var_2_1014, 5
; Matched:\<badref\>:  store i64 %var_2_60, i64* %var_2_3, align 8
; store i64 %var_2_1015, i64* %PC, align 8
; Matched:%var_2_1017:  %var_2_1017 = inttoptr i64 %var_2_1014 to i64*
; %var_2_1016 = inttoptr i64 %var_2_1013 to i64*
; Matched:%var_2_1018:  %var_2_1018 = load i64, i64* %var_2_1017, align 8
; %var_2_1017 = load i64, i64* %var_2_1016, align 8
; Matched:\<badref\>:  store i64 %var_2_1018, i64* %var_2_53, align 1
; store i64 %var_2_1017, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
; Matched:%var_2_1019:  %var_2_1019 = add i64 %var_2_1013, -184
; %var_2_1018 = add i64 %var_2_1012, -184
; Matched:%var_2_1512:  %var_2_1512 = add i64 %var_2_1507, 13
; %var_2_1019 = add i64 %var_2_1014, 13
; Matched:\<badref\>:  store i64 %var_2_1273, i64* %var_2_3, align 8
; store i64 %var_2_1019, i64* %PC, align 8
; Matched:%var_2_1021:  %var_2_1021 = load i64, i64* %var_2_44, align 1
; %var_2_1020 = load i64, i64* %var_2_48, align 1
; Matched:%var_2_1022:  %var_2_1022 = inttoptr i64 %var_2_1019 to i64*
; %var_2_1021 = inttoptr i64 %var_2_1018 to i64*
; Matched:\<badref\>:  store i64 %var_2_1021, i64* %var_2_1022, align 8
; store i64 %var_2_1020, i64* %var_2_1021, align 8
%var_2_1022 = load i64, i64* %PC, align 8
%var_2_1023 = load <2 x i32>, <2 x i32>* %var_2_817, align 1
%var_2_1024 = load <2 x i32>, <2 x i32>* %var_2_819, align 1
%var_2_1025 = extractelement <2 x i32> %var_2_1023, i32 0
; Matched:\<badref\>:  store i32 %var_2_1456, i32* %var_2_696, align 1
; store i32 %var_2_1025, i32* %var_2_698, align 1
%var_2_1026 = extractelement <2 x i32> %var_2_1023, i32 1
; Matched:\<badref\>:  store i32 %var_2_1457, i32* %var_2_699, align 1
; store i32 %var_2_1026, i32* %var_2_701, align 1
%var_2_1027 = extractelement <2 x i32> %var_2_1024, i32 0
; Matched:\<badref\>:  store i32 %var_2_1458, i32* %var_2_701, align 1
; store i32 %var_2_1027, i32* %var_2_703, align 1
%var_2_1028 = extractelement <2 x i32> %var_2_1024, i32 1
; Matched:\<badref\>:  store i32 %var_2_823, i32* %var_2_704, align 1
; store i32 %var_2_1028, i32* %var_2_706, align 1
; Matched:%var_2_1030:  %var_2_1030 = load i64, i64* %RBP.i, align 8
; %var_2_1029 = load i64, i64* %RBP, align 8
; Matched:%var_2_1031:  %var_2_1031 = add i64 %var_2_1030, -136
; %var_2_1030 = add i64 %var_2_1029, -136
; Matched:%var_2_523:  %var_2_523 = add i64 %var_2_516, 11
; %var_2_1031 = add i64 %var_2_1022, 11
; Matched:\<badref\>:  store i64 %var_2_523, i64* %var_2_3, align 8
; store i64 %var_2_1031, i64* %PC, align 8
; Matched:%var_2_1033:  %var_2_1033 = inttoptr i64 %var_2_1031 to i64*
; %var_2_1032 = inttoptr i64 %var_2_1030 to i64*
; Matched:%var_2_1034:  %var_2_1034 = load i64, i64* %var_2_1033, align 8
; %var_2_1033 = load i64, i64* %var_2_1032, align 8
; Matched:\<badref\>:  store i64 %var_2_1034, i64* %var_2_53, align 1
; store i64 %var_2_1033, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
; Matched:%var_2_1035:  %var_2_1035 = add i64 %var_2_1030, -184
; %var_2_1034 = add i64 %var_2_1029, -184
; Matched:%var_2_1497:  %var_2_1497 = add i64 %var_2_1484, 19
; %var_2_1035 = add i64 %var_2_1022, 19
; Matched:\<badref\>:  store i64 %var_2_1497, i64* %var_2_3, align 8
; store i64 %var_2_1035, i64* %PC, align 8
; Matched:%var_2_1037:  %var_2_1037 = inttoptr i64 %var_2_1035 to i64*
; %var_2_1036 = inttoptr i64 %var_2_1034 to i64*
; Matched:%var_2_1038:  %var_2_1038 = load i64, i64* %var_2_1037, align 8
; %var_2_1037 = load i64, i64* %var_2_1036, align 8
; Matched:\<badref\>:  store i64 %var_2_1038, i64* %var_2_61, align 1
; store i64 %var_2_1037, i64* %var_2_63, align 1
store double 0.000000e+00, double* %var_2_653, align 1
%var_2_1038 = add i64 %var_2_1022, 935
; Matched:%var_2_1501:  %var_2_1501 = add i64 %var_2_1484, 24
; %var_2_1039 = add i64 %var_2_1022, 24
%var_2_1040 = load i64, i64* %RSP, align 8
%var_2_1041 = add i64 %var_2_1040, -8
; Matched:%var_2_1473:  %var_2_1473 = inttoptr i64 %var_2_1472 to i64*
; %var_2_1042 = inttoptr i64 %var_2_1041 to i64*
; Matched:\<badref\>:  store i64 %var_2_1470, i64* %var_2_1473, align 8
; store i64 %var_2_1039, i64* %var_2_1042, align 8
; Matched:\<badref\>:  store i64 %var_2_1011, i64* %var_2_6, align 8
; store i64 %var_2_1041, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1039, i64* %var_2_3, align 8
; store i64 %var_2_1038, i64* %PC, align 8
%var_2_1043 = tail call %struct.Memory* @sub_400d50_lerp_renamed_(%struct.State* nonnull %0, i64 %var_2_1038, %struct.Memory* %var_2_1011)
%var_2_1044 = load i64, i64* %PC, align 8
%var_2_1045 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_400e10__rodata_type* @seg_400e10__rodata to i64), i64 80) to i64*), align 16
store i64 %var_2_1045, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
%var_2_1046 = load i64, i64* %RBP, align 8
; Matched:%var_2_1050:  %var_2_1050 = add i64 %var_2_1049, -56
; %var_2_1047 = add i64 %var_2_1046, -56
; Matched:%var_2_1273:  %var_2_1273 = add i64 %var_2_1266, 13
; %var_2_1048 = add i64 %var_2_1044, 13
; Matched:\<badref\>:  store i64 %var_2_1020, i64* %var_2_3, align 8
; store i64 %var_2_1048, i64* %PC, align 8
; Matched:%var_2_1052:  %var_2_1052 = inttoptr i64 %var_2_1050 to i64*
; %var_2_1049 = inttoptr i64 %var_2_1047 to i64*
; Matched:%var_2_1053:  %var_2_1053 = load i64, i64* %var_2_1052, align 8
; %var_2_1050 = load i64, i64* %var_2_1049, align 8
; Matched:\<badref\>:  store i64 %var_2_1053, i64* %var_2_61, align 1
; store i64 %var_2_1050, i64* %var_2_63, align 1
store double 0.000000e+00, double* %var_2_653, align 1
; Matched:%var_2_1054:  %var_2_1054 = add i64 %var_2_1049, -48
; %var_2_1051 = add i64 %var_2_1046, -48
; Matched:%var_2_1055:  %var_2_1055 = add i64 %var_2_1044, 18
; %var_2_1052 = add i64 %var_2_1044, 18
; Matched:\<badref\>:  store i64 %var_2_1055, i64* %var_2_3, align 8
; store i64 %var_2_1052, i64* %PC, align 8
; Matched:%var_2_1056:  %var_2_1056 = inttoptr i64 %var_2_1054 to i64*
; %var_2_1053 = inttoptr i64 %var_2_1051 to i64*
; Matched:%var_2_1057:  %var_2_1057 = load i64, i64* %var_2_1056, align 8
; %var_2_1054 = load i64, i64* %var_2_1053, align 8
; Matched:\<badref\>:  store i64 %var_2_1057, i64* %var_2_666, align 1
; store i64 %var_2_1054, i64* %var_2_670, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_668, align 1
; store double 0.000000e+00, double* %var_2_672, align 1
%var_2_1055 = add i64 %var_2_1046, -72
; Matched:%var_2_1059:  %var_2_1059 = add i64 %var_2_1044, 21
; %var_2_1056 = add i64 %var_2_1044, 21
; Matched:\<badref\>:  store i64 %var_2_1059, i64* %var_2_3, align 8
; store i64 %var_2_1056, i64* %PC, align 8
%var_2_1057 = inttoptr i64 %var_2_1055 to i32*
%var_2_1058 = load i32, i32* %var_2_1057, align 4
%var_2_1059 = add i32 %var_2_1058, 1
; Matched:%var_2_1063:  %var_2_1063 = zext i32 %var_2_1062 to i64
; %var_2_1060 = zext i32 %var_2_1059 to i64
; Matched:\<badref\>:  store i64 %var_2_1063, i64* %RAX.i629, align 8
; store i64 %var_2_1060, i64* %RAX, align 8
; Matched:%var_2_1064:  %var_2_1064 = icmp eq i32 %var_2_1061, -1
; %var_2_1061 = icmp eq i32 %var_2_1058, -1
; Matched:%var_2_1065:  %var_2_1065 = icmp eq i32 %var_2_1062, 0
; %var_2_1062 = icmp eq i32 %var_2_1059, 0
; Matched:%var_2_1066:  %var_2_1066 = or i1 %var_2_1064, %var_2_1065
; %var_2_1063 = or i1 %var_2_1061, %var_2_1062
; Matched:%var_2_1067:  %var_2_1067 = zext i1 %var_2_1066 to i8
; %var_2_1064 = zext i1 %var_2_1063 to i8
; Matched:\<badref\>:  store i8 %var_2_1067, i8* %var_2_14, align 1
; store i8 %var_2_1064, i8* %var_2_19, align 1
; Matched:%var_2_1068:  %var_2_1068 = and i32 %var_2_1062, 255
; %var_2_1065 = and i32 %var_2_1059, 255
; Matched:%var_2_1069:  %var_2_1069 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1068)
; %var_2_1066 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1065) #12
; Matched:%var_2_1070:  %var_2_1070 = trunc i32 %var_2_1069 to i8
; %var_2_1067 = trunc i32 %var_2_1066 to i8
; Matched:%var_2_1071:  %var_2_1071 = and i8 %var_2_1070, 1
; %var_2_1068 = and i8 %var_2_1067, 1
; Matched:%var_2_1072:  %var_2_1072 = xor i8 %var_2_1071, 1
; %var_2_1069 = xor i8 %var_2_1068, 1
; Matched:\<badref\>:  store i8 %var_2_1072, i8* %var_2_21, align 1
; store i8 %var_2_1069, i8* %var_2_26, align 1
; Matched:%var_2_1073:  %var_2_1073 = xor i32 %var_2_1062, %var_2_1061
; %var_2_1070 = xor i32 %var_2_1059, %var_2_1058
; Matched:%var_2_1074:  %var_2_1074 = lshr i32 %var_2_1073, 4
; %var_2_1071 = lshr i32 %var_2_1070, 4
; Matched:%var_2_1075:  %var_2_1075 = trunc i32 %var_2_1074 to i8
; %var_2_1072 = trunc i32 %var_2_1071 to i8
; Matched:%var_2_1076:  %var_2_1076 = and i8 %var_2_1075, 1
; %var_2_1073 = and i8 %var_2_1072, 1
; Matched:\<badref\>:  store i8 %var_2_1076, i8* %var_2_27, align 1
; store i8 %var_2_1073, i8* %var_2_32, align 1
; Matched:%var_2_1077:  %var_2_1077 = zext i1 %var_2_1065 to i8
; %var_2_1074 = zext i1 %var_2_1062 to i8
; Matched:\<badref\>:  store i8 %var_2_1077, i8* %var_2_30, align 1
; store i8 %var_2_1074, i8* %var_2_35, align 1
; Matched:%var_2_1078:  %var_2_1078 = lshr i32 %var_2_1062, 31
; %var_2_1075 = lshr i32 %var_2_1059, 31
; Matched:%var_2_1079:  %var_2_1079 = trunc i32 %var_2_1078 to i8
; %var_2_1076 = trunc i32 %var_2_1075 to i8
; Matched:\<badref\>:  store i8 %var_2_1079, i8* %var_2_33, align 1
; store i8 %var_2_1076, i8* %var_2_38, align 1
; Matched:%var_2_1080:  %var_2_1080 = lshr i32 %var_2_1061, 31
; %var_2_1077 = lshr i32 %var_2_1058, 31
; Matched:%var_2_1081:  %var_2_1081 = xor i32 %var_2_1078, %var_2_1080
; %var_2_1078 = xor i32 %var_2_1075, %var_2_1077
; Matched:%var_2_1082:  %var_2_1082 = add nuw nsw i32 %var_2_1081, %var_2_1078
; %var_2_1079 = add nuw nsw i32 %var_2_1078, %var_2_1075
; Matched:%var_2_1083:  %var_2_1083 = icmp eq i32 %var_2_1082, 2
; %var_2_1080 = icmp eq i32 %var_2_1079, 2
; Matched:%var_2_1084:  %var_2_1084 = zext i1 %var_2_1083 to i8
; %var_2_1081 = zext i1 %var_2_1080 to i8
; Matched:\<badref\>:  store i8 %var_2_1084, i8* %var_2_39, align 1
; store i8 %var_2_1081, i8* %var_2_44, align 1
%var_2_1082 = sext i32 %var_2_1059 to i64
; Matched:\<badref\>:  store i64 %var_2_1085, i64* %RCX.i523, align 8
; store i64 %var_2_1082, i64* %RCX, align 8
%var_2_1083 = shl nsw i64 %var_2_1082, 2
%var_2_1084 = add i64 %var_2_1083, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
; Matched:%var_2_1311:  %var_2_1311 = add i64 %var_2_1266, 34
; %var_2_1085 = add i64 %var_2_1044, 34
; Matched:\<badref\>:  store i64 %var_2_1088, i64* %var_2_3, align 8
; store i64 %var_2_1085, i64* %PC, align 8
%var_2_1086 = inttoptr i64 %var_2_1084 to i32*
%var_2_1087 = load i32, i32* %var_2_1086, align 4
%var_2_1088 = zext i32 %var_2_1087 to i64
store i64 %var_2_1088, i64* %RDI, align 8
; Matched:%var_2_1092:  %var_2_1092 = add i64 %var_2_1049, -8
; %var_2_1089 = add i64 %var_2_1046, -8
; Matched:%var_2_1315:  %var_2_1315 = add i64 %var_2_1266, 39
; %var_2_1090 = add i64 %var_2_1044, 39
; Matched:\<badref\>:  store i64 %var_2_1093, i64* %var_2_3, align 8
; store i64 %var_2_1090, i64* %PC, align 8
; Matched:%var_2_1094:  %var_2_1094 = inttoptr i64 %var_2_1092 to i64*
; %var_2_1091 = inttoptr i64 %var_2_1089 to i64*
; Matched:%var_2_1095:  %var_2_1095 = load i64, i64* %var_2_1094, align 8
; %var_2_1092 = load i64, i64* %var_2_1091, align 8
; Matched:\<badref\>:  store i64 %var_2_1095, i64* %var_2_675, align 1
; store i64 %var_2_1092, i64* %var_2_678, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_677, align 1
; store double 0.000000e+00, double* %var_2_680, align 1
; Matched:%var_2_1096:  %var_2_1096 = add i64 %var_2_1049, -16
; %var_2_1093 = add i64 %var_2_1046, -16
; Matched:%var_2_1097:  %var_2_1097 = add i64 %var_2_1044, 44
; %var_2_1094 = add i64 %var_2_1044, 44
; Matched:\<badref\>:  store i64 %var_2_1097, i64* %var_2_3, align 8
; store i64 %var_2_1094, i64* %PC, align 8
; Matched:%var_2_1098:  %var_2_1098 = inttoptr i64 %var_2_1096 to i64*
; %var_2_1095 = inttoptr i64 %var_2_1093 to i64*
; Matched:%var_2_1099:  %var_2_1099 = load i64, i64* %var_2_1098, align 8
; %var_2_1096 = load i64, i64* %var_2_1095, align 8
; Matched:\<badref\>:  store i64 %var_2_1099, i64* %var_2_684, align 1
; store i64 %var_2_1096, i64* %var_2_686, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_686, align 1
; store double 0.000000e+00, double* %var_2_688, align 1
; Matched:%var_2_1101:  %var_2_1101 = add i64 %var_2_1049, -24
; %var_2_1097 = add i64 %var_2_1046, -24
; Matched:%var_2_1102:  %var_2_1102 = add i64 %var_2_1044, 49
; %var_2_1098 = add i64 %var_2_1044, 49
; Matched:\<badref\>:  store i64 %var_2_1102, i64* %var_2_3, align 8
; store i64 %var_2_1098, i64* %PC, align 8
; Matched:%var_2_1103:  %var_2_1103 = inttoptr i64 %var_2_1101 to double*
; %var_2_1099 = inttoptr i64 %var_2_1097 to double*
; Matched:%var_2_1104:  %var_2_1104 = load double, double* %var_2_1103, align 8
; %var_2_1100 = load double, double* %var_2_1099, align 8
; Matched:%var_2_1105:  %var_2_1105 = bitcast %union.VectorReg* %var_2_1100 to double*
; %var_2_1101 = bitcast %union.VectorReg* %var_2_9 to double*
; Matched:%var_2_1106:  %var_2_1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
; %var_2_1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
; Matched:%var_2_1107:  %var_2_1107 = bitcast i64 %var_2_1048 to double
; %var_2_1103 = bitcast i64 %var_2_1045 to double
; Matched:%var_2_1108:  %var_2_1108 = fsub double %var_2_1104, %var_2_1107
; %var_2_1104 = fsub double %var_2_1100, %var_2_1103
; Matched:\<badref\>:  store double %var_2_1108, double* %var_2_1105, align 1
; store double %var_2_1104, double* %var_2_1101, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_1106, align 1
; store i64 0, i64* %var_2_1102, align 1
; Matched:%var_2_1110:  %var_2_1110 = add i64 %var_2_1109, -192
; %var_2_1105 = add i64 %var_2_1046, -192
; Matched:%var_2_1111:  %var_2_1111 = add i64 %var_2_1044, 61
; %var_2_1106 = add i64 %var_2_1044, 61
; Matched:\<badref\>:  store i64 %var_2_1111, i64* %var_2_3, align 8
; store i64 %var_2_1106, i64* %PC, align 8
; Matched:%var_2_1112:  %var_2_1112 = load i64, i64* %var_2_44, align 1
; %var_2_1107 = load i64, i64* %var_2_48, align 1
; Matched:%var_2_1113:  %var_2_1113 = inttoptr i64 %var_2_1110 to i64*
; %var_2_1108 = inttoptr i64 %var_2_1105 to i64*
; Matched:\<badref\>:  store i64 %var_2_1112, i64* %var_2_1113, align 8
; store i64 %var_2_1107, i64* %var_2_1108, align 8
%var_2_1109 = load i64, i64* %PC, align 8
%var_2_1110 = load <2 x i32>, <2 x i32>* %var_2_713, align 1
%var_2_1111 = load <2 x i32>, <2 x i32>* %var_2_715, align 1
%var_2_1112 = extractelement <2 x i32> %var_2_1110, i32 0
; Matched:\<badref\>:  store i32 %var_2_1117, i32* %var_2_696, align 1
; store i32 %var_2_1112, i32* %var_2_698, align 1
%var_2_1113 = extractelement <2 x i32> %var_2_1110, i32 1
; Matched:\<badref\>:  store i32 %var_2_1118, i32* %var_2_699, align 1
; store i32 %var_2_1113, i32* %var_2_701, align 1
%var_2_1114 = extractelement <2 x i32> %var_2_1111, i32 0
; Matched:\<badref\>:  store i32 %var_2_1119, i32* %var_2_701, align 1
; store i32 %var_2_1114, i32* %var_2_703, align 1
%var_2_1115 = extractelement <2 x i32> %var_2_1111, i32 1
; Matched:\<badref\>:  store i32 %var_2_1120, i32* %var_2_704, align 1
; store i32 %var_2_1115, i32* %var_2_706, align 1
%var_2_1116 = load <2 x i32>, <2 x i32>* %var_2_733, align 1
%var_2_1117 = load <2 x i32>, <2 x i32>* %var_2_735, align 1
%var_2_1118 = extractelement <2 x i32> %var_2_1116, i32 0
; Matched:\<badref\>:  store i32 %var_2_1123, i32* %var_2_716, align 1
; store i32 %var_2_1118, i32* %var_2_718, align 1
%var_2_1119 = extractelement <2 x i32> %var_2_1116, i32 1
; Matched:\<badref\>:  store i32 %var_2_1124, i32* %var_2_719, align 1
; store i32 %var_2_1119, i32* %var_2_721, align 1
%var_2_1120 = extractelement <2 x i32> %var_2_1117, i32 0
; Matched:\<badref\>:  store i32 %var_2_1125, i32* %var_2_721, align 1
; store i32 %var_2_1120, i32* %var_2_723, align 1
%var_2_1121 = extractelement <2 x i32> %var_2_1117, i32 1
; Matched:\<badref\>:  store i32 %var_2_1126, i32* %var_2_724, align 1
; store i32 %var_2_1121, i32* %var_2_726, align 1
; Matched:%var_2_1127:  %var_2_1127 = load i64, i64* %RBP.i, align 8
; %var_2_1122 = load i64, i64* %RBP, align 8
; Matched:%var_2_1128:  %var_2_1128 = add i64 %var_2_1127, -200
; %var_2_1123 = add i64 %var_2_1122, -200
; Matched:%var_2_528:  %var_2_528 = add i64 %var_2_516, 14
; %var_2_1124 = add i64 %var_2_1109, 14
; Matched:\<badref\>:  store i64 %var_2_1344, i64* %var_2_3, align 8
; store i64 %var_2_1124, i64* %PC, align 8
; Matched:%var_2_1130:  %var_2_1130 = load i64, i64* %var_2_61, align 1
; %var_2_1125 = load i64, i64* %var_2_63, align 1
; Matched:%var_2_1131:  %var_2_1131 = inttoptr i64 %var_2_1128 to i64*
; %var_2_1126 = inttoptr i64 %var_2_1123 to i64*
; Matched:\<badref\>:  store i64 %var_2_1130, i64* %var_2_1131, align 8
; store i64 %var_2_1125, i64* %var_2_1126, align 8
%var_2_1127 = load i64, i64* %PC, align 8
%var_2_1128 = bitcast %union.VectorReg* %var_2_9 to <2 x i32>*
%var_2_1129 = load <2 x i32>, <2 x i32>* %var_2_1128, align 1
%var_2_1130 = bitcast i64* %var_2_1102 to <2 x i32>*
%var_2_1131 = load <2 x i32>, <2 x i32>* %var_2_1130, align 1
%var_2_1132 = extractelement <2 x i32> %var_2_1129, i32 0
; Matched:\<badref\>:  store i32 %var_2_1137, i32* %var_2_736, align 1
; store i32 %var_2_1132, i32* %var_2_738, align 1
%var_2_1133 = extractelement <2 x i32> %var_2_1129, i32 1
; Matched:\<badref\>:  store i32 %var_2_1138, i32* %var_2_739, align 1
; store i32 %var_2_1133, i32* %var_2_741, align 1
%var_2_1134 = extractelement <2 x i32> %var_2_1131, i32 0
; Matched:\<badref\>:  store i32 %var_2_1139, i32* %var_2_741, align 1
; store i32 %var_2_1134, i32* %var_2_743, align 1
%var_2_1135 = extractelement <2 x i32> %var_2_1131, i32 1
; Matched:\<badref\>:  store i32 %var_2_1140, i32* %var_2_744, align 1
; store i32 %var_2_1135, i32* %var_2_746, align 1
; Matched:%var_2_1141:  %var_2_1141 = load i64, i64* %RBP.i, align 8
; %var_2_1136 = load i64, i64* %RBP, align 8
; Matched:%var_2_1142:  %var_2_1142 = add i64 %var_2_1141, -208
; %var_2_1137 = add i64 %var_2_1136, -208
; Matched:%var_2_974:  %var_2_974 = add i64 %var_2_965, 11
; %var_2_1138 = add i64 %var_2_1127, 11
; Matched:\<badref\>:  store i64 %var_2_974, i64* %var_2_3, align 8
; store i64 %var_2_1138, i64* %PC, align 8
; Matched:%var_2_1144:  %var_2_1144 = load i64, i64* %var_2_666, align 1
; %var_2_1139 = load i64, i64* %var_2_670, align 1
; Matched:%var_2_1145:  %var_2_1145 = inttoptr i64 %var_2_1142 to i64*
; %var_2_1140 = inttoptr i64 %var_2_1137 to i64*
; Matched:\<badref\>:  store i64 %var_2_1144, i64* %var_2_1145, align 8
; store i64 %var_2_1139, i64* %var_2_1140, align 8
%var_2_1141 = load i64, i64* %PC, align 8
%var_2_1142 = add i64 %var_2_1141, 489
; Matched:%var_2_1148:  %var_2_1148 = add i64 %var_2_1146, 5
; %var_2_1143 = add i64 %var_2_1141, 5
%var_2_1144 = load i64, i64* %RSP, align 8
%var_2_1145 = add i64 %var_2_1144, -8
; Matched:%var_2_1151:  %var_2_1151 = inttoptr i64 %var_2_1150 to i64*
; %var_2_1146 = inttoptr i64 %var_2_1145 to i64*
; Matched:\<badref\>:  store i64 %var_2_1148, i64* %var_2_1151, align 8
; store i64 %var_2_1143, i64* %var_2_1146, align 8
; Matched:\<badref\>:  store i64 %var_2_76, i64* %var_2_6, align 8
; store i64 %var_2_1145, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1147, i64* %var_2_3, align 8
; store i64 %var_2_1142, i64* %PC, align 8
%var_2_1147 = tail call %struct.Memory* @sub_400c00_grad_renamed_(%struct.State* nonnull %0, i64 %var_2_1142, %struct.Memory* %var_2_1043)
%var_2_1148 = load i64, i64* %PC, align 8
%var_2_1149 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_400e10__rodata_type* @seg_400e10__rodata to i64), i64 80) to i64*), align 16
store i64 %var_2_1149, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
%var_2_1150 = load i64, i64* %RBP, align 8
%var_2_1151 = add i64 %var_2_1150, -84
; Matched:%var_2_1462:  %var_2_1462 = add i64 %var_2_1453, 11
; %var_2_1152 = add i64 %var_2_1148, 11
; Matched:\<badref\>:  store i64 %var_2_1462, i64* %var_2_3, align 8
; store i64 %var_2_1152, i64* %PC, align 8
%var_2_1153 = inttoptr i64 %var_2_1151 to i32*
%var_2_1154 = load i32, i32* %var_2_1153, align 4
%var_2_1155 = add i32 %var_2_1154, 1
; Matched:%var_2_1163:  %var_2_1163 = zext i32 %var_2_1162 to i64
; %var_2_1156 = zext i32 %var_2_1155 to i64
; Matched:\<badref\>:  store i64 %var_2_1163, i64* %RAX.i629, align 8
; store i64 %var_2_1156, i64* %RAX, align 8
; Matched:%var_2_1164:  %var_2_1164 = icmp eq i32 %var_2_1161, -1
; %var_2_1157 = icmp eq i32 %var_2_1154, -1
; Matched:%var_2_1165:  %var_2_1165 = icmp eq i32 %var_2_1162, 0
; %var_2_1158 = icmp eq i32 %var_2_1155, 0
; Matched:%var_2_1166:  %var_2_1166 = or i1 %var_2_1164, %var_2_1165
; %var_2_1159 = or i1 %var_2_1157, %var_2_1158
; Matched:%var_2_1167:  %var_2_1167 = zext i1 %var_2_1166 to i8
; %var_2_1160 = zext i1 %var_2_1159 to i8
; Matched:\<badref\>:  store i8 %var_2_1167, i8* %var_2_14, align 1
; store i8 %var_2_1160, i8* %var_2_19, align 1
; Matched:%var_2_1168:  %var_2_1168 = and i32 %var_2_1162, 255
; %var_2_1161 = and i32 %var_2_1155, 255
; Matched:%var_2_1169:  %var_2_1169 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1168)
; %var_2_1162 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1161) #12
; Matched:%var_2_1170:  %var_2_1170 = trunc i32 %var_2_1169 to i8
; %var_2_1163 = trunc i32 %var_2_1162 to i8
; Matched:%var_2_1171:  %var_2_1171 = and i8 %var_2_1170, 1
; %var_2_1164 = and i8 %var_2_1163, 1
; Matched:%var_2_1172:  %var_2_1172 = xor i8 %var_2_1171, 1
; %var_2_1165 = xor i8 %var_2_1164, 1
; Matched:\<badref\>:  store i8 %var_2_1172, i8* %var_2_21, align 1
; store i8 %var_2_1165, i8* %var_2_26, align 1
; Matched:%var_2_1173:  %var_2_1173 = xor i32 %var_2_1162, %var_2_1161
; %var_2_1166 = xor i32 %var_2_1155, %var_2_1154
; Matched:%var_2_1174:  %var_2_1174 = lshr i32 %var_2_1173, 4
; %var_2_1167 = lshr i32 %var_2_1166, 4
; Matched:%var_2_1175:  %var_2_1175 = trunc i32 %var_2_1174 to i8
; %var_2_1168 = trunc i32 %var_2_1167 to i8
; Matched:%var_2_1176:  %var_2_1176 = and i8 %var_2_1175, 1
; %var_2_1169 = and i8 %var_2_1168, 1
; Matched:\<badref\>:  store i8 %var_2_1176, i8* %var_2_27, align 1
; store i8 %var_2_1169, i8* %var_2_32, align 1
; Matched:%var_2_1177:  %var_2_1177 = zext i1 %var_2_1165 to i8
; %var_2_1170 = zext i1 %var_2_1158 to i8
; Matched:\<badref\>:  store i8 %var_2_1177, i8* %var_2_30, align 1
; store i8 %var_2_1170, i8* %var_2_35, align 1
; Matched:%var_2_1178:  %var_2_1178 = lshr i32 %var_2_1162, 31
; %var_2_1171 = lshr i32 %var_2_1155, 31
; Matched:%var_2_1179:  %var_2_1179 = trunc i32 %var_2_1178 to i8
; %var_2_1172 = trunc i32 %var_2_1171 to i8
; Matched:\<badref\>:  store i8 %var_2_1179, i8* %var_2_33, align 1
; store i8 %var_2_1172, i8* %var_2_38, align 1
; Matched:%var_2_1180:  %var_2_1180 = lshr i32 %var_2_1161, 31
; %var_2_1173 = lshr i32 %var_2_1154, 31
; Matched:%var_2_1181:  %var_2_1181 = xor i32 %var_2_1178, %var_2_1180
; %var_2_1174 = xor i32 %var_2_1171, %var_2_1173
; Matched:%var_2_1182:  %var_2_1182 = add nuw nsw i32 %var_2_1181, %var_2_1178
; %var_2_1175 = add nuw nsw i32 %var_2_1174, %var_2_1171
; Matched:%var_2_1183:  %var_2_1183 = icmp eq i32 %var_2_1182, 2
; %var_2_1176 = icmp eq i32 %var_2_1175, 2
; Matched:%var_2_1184:  %var_2_1184 = zext i1 %var_2_1183 to i8
; %var_2_1177 = zext i1 %var_2_1176 to i8
; Matched:\<badref\>:  store i8 %var_2_1184, i8* %var_2_39, align 1
; store i8 %var_2_1177, i8* %var_2_44, align 1
%var_2_1178 = sext i32 %var_2_1155 to i64
; Matched:\<badref\>:  store i64 %var_2_1185, i64* %RCX.i523, align 8
; store i64 %var_2_1178, i64* %RCX, align 8
%var_2_1179 = shl nsw i64 %var_2_1178, 2
%var_2_1180 = add i64 %var_2_1179, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
; Matched:%var_2_855:  %var_2_855 = add i64 %var_2_838, 24
; %var_2_1181 = add i64 %var_2_1148, 24
; Matched:\<badref\>:  store i64 %var_2_855, i64* %var_2_3, align 8
; store i64 %var_2_1181, i64* %PC, align 8
%var_2_1182 = inttoptr i64 %var_2_1180 to i32*
%var_2_1183 = load i32, i32* %var_2_1182, align 4
%var_2_1184 = zext i32 %var_2_1183 to i64
store i64 %var_2_1184, i64* %RDI, align 8
; Matched:%var_2_1192:  %var_2_1192 = add i64 %var_2_1157, -8
; %var_2_1185 = add i64 %var_2_1150, -8
; Matched:%var_2_1400:  %var_2_1400 = add i64 %var_2_1359, 29
; %var_2_1186 = add i64 %var_2_1148, 29
; Matched:\<badref\>:  store i64 %var_2_860, i64* %var_2_3, align 8
; store i64 %var_2_1186, i64* %PC, align 8
; Matched:%var_2_1401:  %var_2_1401 = inttoptr i64 %var_2_1399 to double*
; %var_2_1187 = inttoptr i64 %var_2_1185 to double*
; Matched:%var_2_770:  %var_2_770 = load double, double* %var_2_769, align 8
; %var_2_1188 = load double, double* %var_2_1187, align 8
%var_2_1189 = bitcast i64 %var_2_1149 to double
; Matched:%var_2_939:  %var_2_939 = fsub double %var_2_937, %var_2_938
; %var_2_1190 = fsub double %var_2_1188, %var_2_1189
; Matched:\<badref\>:  store double %var_2_939, double* %var_2_646, align 1
; store double %var_2_1190, double* %var_2_651, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_647, align 1
; store i64 0, i64* %var_2_652, align 1
; Matched:%var_2_1198:  %var_2_1198 = add i64 %var_2_1157, -16
; %var_2_1191 = add i64 %var_2_1150, -16
; Matched:%var_2_778:  %var_2_778 = add i64 %var_2_750, 38
; %var_2_1192 = add i64 %var_2_1148, 38
; Matched:\<badref\>:  store i64 %var_2_1199, i64* %var_2_3, align 8
; store i64 %var_2_1192, i64* %PC, align 8
; Matched:%var_2_1200:  %var_2_1200 = inttoptr i64 %var_2_1198 to i64*
; %var_2_1193 = inttoptr i64 %var_2_1191 to i64*
; Matched:%var_2_1201:  %var_2_1201 = load i64, i64* %var_2_1200, align 8
; %var_2_1194 = load i64, i64* %var_2_1193, align 8
; Matched:\<badref\>:  store i64 %var_2_1201, i64* %var_2_666, align 1
; store i64 %var_2_1194, i64* %var_2_670, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_668, align 1
; store double 0.000000e+00, double* %var_2_672, align 1
; Matched:%var_2_1410:  %var_2_1410 = add i64 %var_2_1364, -24
; %var_2_1195 = add i64 %var_2_1150, -24
; Matched:%var_2_870:  %var_2_870 = add i64 %var_2_838, 43
; %var_2_1196 = add i64 %var_2_1148, 43
; Matched:\<badref\>:  store i64 %var_2_870, i64* %var_2_3, align 8
; store i64 %var_2_1196, i64* %PC, align 8
; Matched:%var_2_1204:  %var_2_1204 = inttoptr i64 %var_2_1202 to double*
; %var_2_1197 = inttoptr i64 %var_2_1195 to double*
; Matched:%var_2_1413:  %var_2_1413 = load double, double* %var_2_1412, align 8
; %var_2_1198 = load double, double* %var_2_1197, align 8
; Matched:%var_2_1414:  %var_2_1414 = fsub double %var_2_1413, %var_2_1403
; %var_2_1199 = fsub double %var_2_1198, %var_2_1189
; Matched:\<badref\>:  store double %var_2_1206, double* %var_2_674, align 1
; store double %var_2_1199, double* %var_2_677, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_676, align 1
; store i64 0, i64* %var_2_679, align 1
; Matched:%var_2_1207:  %var_2_1207 = add i64 %var_2_1157, -216
; %var_2_1200 = add i64 %var_2_1150, -216
; Matched:%var_2_1208:  %var_2_1208 = add i64 %var_2_1152, 55
; %var_2_1201 = add i64 %var_2_1148, 55
; Matched:\<badref\>:  store i64 %var_2_1208, i64* %var_2_3, align 8
; store i64 %var_2_1201, i64* %PC, align 8
; Matched:%var_2_1209:  %var_2_1209 = load i64, i64* %var_2_44, align 1
; %var_2_1202 = load i64, i64* %var_2_48, align 1
; Matched:%var_2_1210:  %var_2_1210 = inttoptr i64 %var_2_1207 to i64*
; %var_2_1203 = inttoptr i64 %var_2_1200 to i64*
; Matched:\<badref\>:  store i64 %var_2_1209, i64* %var_2_1210, align 8
; store i64 %var_2_1202, i64* %var_2_1203, align 8
%var_2_1204 = load i64, i64* %PC, align 8
%var_2_1205 = load <2 x i32>, <2 x i32>* %var_2_786, align 1
%var_2_1206 = load <2 x i32>, <2 x i32>* %var_2_788, align 1
%var_2_1207 = extractelement <2 x i32> %var_2_1205, i32 0
; Matched:\<badref\>:  store i32 %var_2_956, i32* %var_2_696, align 1
; store i32 %var_2_1207, i32* %var_2_698, align 1
%var_2_1208 = extractelement <2 x i32> %var_2_1205, i32 1
; Matched:\<badref\>:  store i32 %var_2_957, i32* %var_2_699, align 1
; store i32 %var_2_1208, i32* %var_2_701, align 1
%var_2_1209 = extractelement <2 x i32> %var_2_1206, i32 0
; Matched:\<badref\>:  store i32 %var_2_958, i32* %var_2_701, align 1
; store i32 %var_2_1209, i32* %var_2_703, align 1
%var_2_1210 = extractelement <2 x i32> %var_2_1206, i32 1
; Matched:\<badref\>:  store i32 %var_2_793, i32* %var_2_704, align 1
; store i32 %var_2_1210, i32* %var_2_706, align 1
%var_2_1211 = load <2 x i32>, <2 x i32>* %var_2_693, align 1
%var_2_1212 = load <2 x i32>, <2 x i32>* %var_2_695, align 1
%var_2_1213 = extractelement <2 x i32> %var_2_1211, i32 0
; Matched:\<badref\>:  store i32 %var_2_968, i32* %var_2_716, align 1
; store i32 %var_2_1213, i32* %var_2_718, align 1
%var_2_1214 = extractelement <2 x i32> %var_2_1211, i32 1
; Matched:\<badref\>:  store i32 %var_2_969, i32* %var_2_719, align 1
; store i32 %var_2_1214, i32* %var_2_721, align 1
%var_2_1215 = extractelement <2 x i32> %var_2_1212, i32 0
; Matched:\<badref\>:  store i32 %var_2_1430, i32* %var_2_721, align 1
; store i32 %var_2_1215, i32* %var_2_723, align 1
%var_2_1216 = extractelement <2 x i32> %var_2_1212, i32 1
; Matched:\<badref\>:  store i32 %var_2_1431, i32* %var_2_724, align 1
; store i32 %var_2_1216, i32* %var_2_726, align 1
%var_2_1217 = load <2 x i32>, <2 x i32>* %var_2_713, align 1
%var_2_1218 = load <2 x i32>, <2 x i32>* %var_2_715, align 1
%var_2_1219 = extractelement <2 x i32> %var_2_1217, i32 0
; Matched:\<badref\>:  store i32 %var_2_1226, i32* %var_2_736, align 1
; store i32 %var_2_1219, i32* %var_2_738, align 1
%var_2_1220 = extractelement <2 x i32> %var_2_1217, i32 1
; Matched:\<badref\>:  store i32 %var_2_1435, i32* %var_2_739, align 1
; store i32 %var_2_1220, i32* %var_2_741, align 1
%var_2_1221 = extractelement <2 x i32> %var_2_1218, i32 0
; Matched:\<badref\>:  store i32 %var_2_1228, i32* %var_2_741, align 1
; store i32 %var_2_1221, i32* %var_2_743, align 1
%var_2_1222 = extractelement <2 x i32> %var_2_1218, i32 1
; Matched:\<badref\>:  store i32 %var_2_1437, i32* %var_2_744, align 1
; store i32 %var_2_1222, i32* %var_2_746, align 1
%var_2_1223 = add i64 %var_2_1204, 429
; Matched:%var_2_1231:  %var_2_1231 = add i64 %var_2_1211, 14
; %var_2_1224 = add i64 %var_2_1204, 14
%var_2_1225 = load i64, i64* %RSP, align 8
%var_2_1226 = add i64 %var_2_1225, -8
; Matched:%var_2_1234:  %var_2_1234 = inttoptr i64 %var_2_1233 to i64*
; %var_2_1227 = inttoptr i64 %var_2_1226 to i64*
; Matched:\<badref\>:  store i64 %var_2_1231, i64* %var_2_1234, align 8
; store i64 %var_2_1224, i64* %var_2_1227, align 8
; Matched:\<badref\>:  store i64 %var_2_1441, i64* %var_2_6, align 8
; store i64 %var_2_1226, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1230, i64* %var_2_3, align 8
; store i64 %var_2_1223, i64* %PC, align 8
%var_2_1228 = tail call %struct.Memory* @sub_400c00_grad_renamed_(%struct.State* nonnull %0, i64 %var_2_1223, %struct.Memory* %var_2_1147)
; Matched:%var_2_1235:  %var_2_1235 = load i64, i64* %RBP.i, align 8
; %var_2_1229 = load i64, i64* %RBP, align 8
; Matched:%var_2_1236:  %var_2_1236 = add i64 %var_2_1235, -208
; %var_2_1230 = add i64 %var_2_1229, -208
%var_2_1231 = load i64, i64* %PC, align 8
%var_2_1232 = add i64 %var_2_1231, 8
store i64 %var_2_1232, i64* %PC, align 8
; Matched:%var_2_1239:  %var_2_1239 = inttoptr i64 %var_2_1236 to i64*
; %var_2_1233 = inttoptr i64 %var_2_1230 to i64*
; Matched:%var_2_1240:  %var_2_1240 = load i64, i64* %var_2_1239, align 8
; %var_2_1234 = load i64, i64* %var_2_1233, align 8
; Matched:\<badref\>:  store i64 %var_2_1240, i64* %var_2_53, align 1
; store i64 %var_2_1234, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
; Matched:%var_2_1241:  %var_2_1241 = add i64 %var_2_1235, -224
; %var_2_1235 = add i64 %var_2_1229, -224
; Matched:%var_2_476:  %var_2_476 = add i64 %var_2_446, 16
; %var_2_1236 = add i64 %var_2_1231, 16
; Matched:\<badref\>:  store i64 %var_2_476, i64* %var_2_3, align 8
; store i64 %var_2_1236, i64* %PC, align 8
; Matched:%var_2_1243:  %var_2_1243 = load i64, i64* %var_2_44, align 1
; %var_2_1237 = load i64, i64* %var_2_48, align 1
; Matched:%var_2_1244:  %var_2_1244 = inttoptr i64 %var_2_1241 to i64*
; %var_2_1238 = inttoptr i64 %var_2_1235 to i64*
; Matched:\<badref\>:  store i64 %var_2_1243, i64* %var_2_1244, align 8
; store i64 %var_2_1237, i64* %var_2_1238, align 8
%var_2_1239 = load i64, i64* %PC, align 8
%var_2_1240 = load <2 x i32>, <2 x i32>* %var_2_817, align 1
%var_2_1241 = load <2 x i32>, <2 x i32>* %var_2_819, align 1
%var_2_1242 = extractelement <2 x i32> %var_2_1240, i32 0
; Matched:\<badref\>:  store i32 %var_2_1487, i32* %var_2_696, align 1
; store i32 %var_2_1242, i32* %var_2_698, align 1
%var_2_1243 = extractelement <2 x i32> %var_2_1240, i32 1
; Matched:\<badref\>:  store i32 %var_2_1488, i32* %var_2_699, align 1
; store i32 %var_2_1243, i32* %var_2_701, align 1
%var_2_1244 = extractelement <2 x i32> %var_2_1241, i32 0
; Matched:\<badref\>:  store i32 %var_2_1489, i32* %var_2_701, align 1
; store i32 %var_2_1244, i32* %var_2_703, align 1
%var_2_1245 = extractelement <2 x i32> %var_2_1241, i32 1
; Matched:\<badref\>:  store i32 %var_2_1029, i32* %var_2_704, align 1
; store i32 %var_2_1245, i32* %var_2_706, align 1
; Matched:%var_2_1252:  %var_2_1252 = load i64, i64* %RBP.i, align 8
; %var_2_1246 = load i64, i64* %RBP, align 8
; Matched:%var_2_1253:  %var_2_1253 = add i64 %var_2_1252, -216
; %var_2_1247 = add i64 %var_2_1246, -216
; Matched:%var_2_336:  %var_2_336 = add i64 %var_2_329, 11
; %var_2_1248 = add i64 %var_2_1239, 11
; Matched:\<badref\>:  store i64 %var_2_336, i64* %var_2_3, align 8
; store i64 %var_2_1248, i64* %PC, align 8
; Matched:%var_2_1255:  %var_2_1255 = inttoptr i64 %var_2_1253 to i64*
; %var_2_1249 = inttoptr i64 %var_2_1247 to i64*
; Matched:%var_2_1256:  %var_2_1256 = load i64, i64* %var_2_1255, align 8
; %var_2_1250 = load i64, i64* %var_2_1249, align 8
; Matched:\<badref\>:  store i64 %var_2_1256, i64* %var_2_53, align 1
; store i64 %var_2_1250, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
; Matched:%var_2_1257:  %var_2_1257 = add i64 %var_2_1252, -224
; %var_2_1251 = add i64 %var_2_1246, -224
; Matched:%var_2_930:  %var_2_930 = add i64 %var_2_917, 19
; %var_2_1252 = add i64 %var_2_1239, 19
; Matched:\<badref\>:  store i64 %var_2_930, i64* %var_2_3, align 8
; store i64 %var_2_1252, i64* %PC, align 8
; Matched:%var_2_1259:  %var_2_1259 = inttoptr i64 %var_2_1257 to i64*
; %var_2_1253 = inttoptr i64 %var_2_1251 to i64*
; Matched:%var_2_1260:  %var_2_1260 = load i64, i64* %var_2_1259, align 8
; %var_2_1254 = load i64, i64* %var_2_1253, align 8
; Matched:\<badref\>:  store i64 %var_2_1260, i64* %var_2_61, align 1
; store i64 %var_2_1254, i64* %var_2_63, align 1
store double 0.000000e+00, double* %var_2_653, align 1
%var_2_1255 = add i64 %var_2_1239, 735
; Matched:%var_2_1532:  %var_2_1532 = add i64 %var_2_1515, 24
; %var_2_1256 = add i64 %var_2_1239, 24
%var_2_1257 = load i64, i64* %RSP, align 8
%var_2_1258 = add i64 %var_2_1257, -8
; Matched:%var_2_1504:  %var_2_1504 = inttoptr i64 %var_2_1503 to i64*
; %var_2_1259 = inttoptr i64 %var_2_1258 to i64*
; Matched:\<badref\>:  store i64 %var_2_1501, i64* %var_2_1504, align 8
; store i64 %var_2_1256, i64* %var_2_1259, align 8
; Matched:\<badref\>:  store i64 %var_2_803, i64* %var_2_6, align 8
; store i64 %var_2_1258, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1261, i64* %var_2_3, align 8
; store i64 %var_2_1255, i64* %PC, align 8
%var_2_1260 = tail call %struct.Memory* @sub_400d50_lerp_renamed_(%struct.State* nonnull %0, i64 %var_2_1255, %struct.Memory* %var_2_1228)
%var_2_1261 = load i64, i64* %PC, align 8
%var_2_1262 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_400e10__rodata_type* @seg_400e10__rodata to i64), i64 80) to i64*), align 16
store i64 %var_2_1262, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
%var_2_1263 = load i64, i64* %RBP, align 8
; Matched:%var_2_642:  %var_2_642 = add i64 %var_2_631, -48
; %var_2_1264 = add i64 %var_2_1263, -48
; Matched:%var_2_1020:  %var_2_1020 = add i64 %var_2_1015, 13
; %var_2_1265 = add i64 %var_2_1261, 13
; Matched:\<badref\>:  store i64 %var_2_845, i64* %var_2_3, align 8
; store i64 %var_2_1265, i64* %PC, align 8
; Matched:%var_2_644:  %var_2_644 = inttoptr i64 %var_2_642 to i64*
; %var_2_1266 = inttoptr i64 %var_2_1264 to i64*
; Matched:%var_2_645:  %var_2_645 = load i64, i64* %var_2_644, align 8
; %var_2_1267 = load i64, i64* %var_2_1266, align 8
; Matched:\<badref\>:  store i64 %var_2_1275, i64* %var_2_61, align 1
; store i64 %var_2_1267, i64* %var_2_63, align 1
store double 0.000000e+00, double* %var_2_653, align 1
%var_2_1268 = add i64 %var_2_1263, -76
; Matched:%var_2_1242:  %var_2_1242 = add i64 %var_2_1237, 16
; %var_2_1269 = add i64 %var_2_1261, 16
; Matched:\<badref\>:  store i64 %var_2_1242, i64* %var_2_3, align 8
; store i64 %var_2_1269, i64* %PC, align 8
%var_2_1270 = inttoptr i64 %var_2_1268 to i32*
%var_2_1271 = load i32, i32* %var_2_1270, align 4
%var_2_1272 = add i32 %var_2_1271, 1
; Matched:%var_2_1281:  %var_2_1281 = zext i32 %var_2_1280 to i64
; %var_2_1273 = zext i32 %var_2_1272 to i64
; Matched:\<badref\>:  store i64 %var_2_1281, i64* %RAX.i629, align 8
; store i64 %var_2_1273, i64* %RAX, align 8
; Matched:%var_2_1282:  %var_2_1282 = icmp eq i32 %var_2_1279, -1
; %var_2_1274 = icmp eq i32 %var_2_1271, -1
; Matched:%var_2_1283:  %var_2_1283 = icmp eq i32 %var_2_1280, 0
; %var_2_1275 = icmp eq i32 %var_2_1272, 0
; Matched:%var_2_1284:  %var_2_1284 = or i1 %var_2_1282, %var_2_1283
; %var_2_1276 = or i1 %var_2_1274, %var_2_1275
; Matched:%var_2_1285:  %var_2_1285 = zext i1 %var_2_1284 to i8
; %var_2_1277 = zext i1 %var_2_1276 to i8
; Matched:\<badref\>:  store i8 %var_2_1285, i8* %var_2_14, align 1
; store i8 %var_2_1277, i8* %var_2_19, align 1
; Matched:%var_2_1286:  %var_2_1286 = and i32 %var_2_1280, 255
; %var_2_1278 = and i32 %var_2_1272, 255
; Matched:%var_2_1287:  %var_2_1287 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1286)
; %var_2_1279 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1278) #12
; Matched:%var_2_1288:  %var_2_1288 = trunc i32 %var_2_1287 to i8
; %var_2_1280 = trunc i32 %var_2_1279 to i8
; Matched:%var_2_1289:  %var_2_1289 = and i8 %var_2_1288, 1
; %var_2_1281 = and i8 %var_2_1280, 1
; Matched:%var_2_1290:  %var_2_1290 = xor i8 %var_2_1289, 1
; %var_2_1282 = xor i8 %var_2_1281, 1
; Matched:\<badref\>:  store i8 %var_2_1290, i8* %var_2_21, align 1
; store i8 %var_2_1282, i8* %var_2_26, align 1
; Matched:%var_2_1291:  %var_2_1291 = xor i32 %var_2_1280, %var_2_1279
; %var_2_1283 = xor i32 %var_2_1272, %var_2_1271
; Matched:%var_2_1292:  %var_2_1292 = lshr i32 %var_2_1291, 4
; %var_2_1284 = lshr i32 %var_2_1283, 4
; Matched:%var_2_1293:  %var_2_1293 = trunc i32 %var_2_1292 to i8
; %var_2_1285 = trunc i32 %var_2_1284 to i8
; Matched:%var_2_1294:  %var_2_1294 = and i8 %var_2_1293, 1
; %var_2_1286 = and i8 %var_2_1285, 1
; Matched:\<badref\>:  store i8 %var_2_1294, i8* %var_2_27, align 1
; store i8 %var_2_1286, i8* %var_2_32, align 1
; Matched:%var_2_1295:  %var_2_1295 = zext i1 %var_2_1283 to i8
; %var_2_1287 = zext i1 %var_2_1275 to i8
; Matched:\<badref\>:  store i8 %var_2_1295, i8* %var_2_30, align 1
; store i8 %var_2_1287, i8* %var_2_35, align 1
; Matched:%var_2_1296:  %var_2_1296 = lshr i32 %var_2_1280, 31
; %var_2_1288 = lshr i32 %var_2_1272, 31
; Matched:%var_2_1297:  %var_2_1297 = trunc i32 %var_2_1296 to i8
; %var_2_1289 = trunc i32 %var_2_1288 to i8
; Matched:\<badref\>:  store i8 %var_2_1297, i8* %var_2_33, align 1
; store i8 %var_2_1289, i8* %var_2_38, align 1
; Matched:%var_2_1298:  %var_2_1298 = lshr i32 %var_2_1279, 31
; %var_2_1290 = lshr i32 %var_2_1271, 31
; Matched:%var_2_1299:  %var_2_1299 = xor i32 %var_2_1296, %var_2_1298
; %var_2_1291 = xor i32 %var_2_1288, %var_2_1290
; Matched:%var_2_1300:  %var_2_1300 = add nuw nsw i32 %var_2_1299, %var_2_1296
; %var_2_1292 = add nuw nsw i32 %var_2_1291, %var_2_1288
; Matched:%var_2_1301:  %var_2_1301 = icmp eq i32 %var_2_1300, 2
; %var_2_1293 = icmp eq i32 %var_2_1292, 2
; Matched:%var_2_1302:  %var_2_1302 = zext i1 %var_2_1301 to i8
; %var_2_1294 = zext i1 %var_2_1293 to i8
; Matched:\<badref\>:  store i8 %var_2_1302, i8* %var_2_39, align 1
; store i8 %var_2_1294, i8* %var_2_44, align 1
%var_2_1295 = sext i32 %var_2_1272 to i64
; Matched:\<badref\>:  store i64 %var_2_1303, i64* %RCX.i523, align 8
; store i64 %var_2_1295, i64* %RCX, align 8
%var_2_1296 = shl nsw i64 %var_2_1295, 2
%var_2_1297 = add i64 %var_2_1296, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
; Matched:%var_2_1306:  %var_2_1306 = add i64 %var_2_1266, 29
; %var_2_1298 = add i64 %var_2_1261, 29
; Matched:\<badref\>:  store i64 %var_2_1400, i64* %var_2_3, align 8
; store i64 %var_2_1298, i64* %PC, align 8
%var_2_1299 = inttoptr i64 %var_2_1297 to i32*
%var_2_1300 = load i32, i32* %var_2_1299, align 4
%var_2_1301 = zext i32 %var_2_1300 to i64
store i64 %var_2_1301, i64* %RDI, align 8
; Matched:%var_2_661:  %var_2_661 = add i64 %var_2_631, -8
; %var_2_1302 = add i64 %var_2_1263, -8
; Matched:%var_2_1088:  %var_2_1088 = add i64 %var_2_1044, 34
; %var_2_1303 = add i64 %var_2_1261, 34
; Matched:\<badref\>:  store i64 %var_2_1311, i64* %var_2_3, align 8
; store i64 %var_2_1303, i64* %PC, align 8
; Matched:%var_2_861:  %var_2_861 = inttoptr i64 %var_2_859 to i64*
; %var_2_1304 = inttoptr i64 %var_2_1302 to i64*
; Matched:%var_2_1313:  %var_2_1313 = load i64, i64* %var_2_1312, align 8
; %var_2_1305 = load i64, i64* %var_2_1304, align 8
; Matched:\<badref\>:  store i64 %var_2_1313, i64* %var_2_666, align 1
; store i64 %var_2_1305, i64* %var_2_670, align 1
; Matched:\<badref\>:  store double 0.000000e+00, double* %var_2_668, align 1
; store double 0.000000e+00, double* %var_2_672, align 1
; Matched:%var_2_863:  %var_2_863 = add i64 %var_2_843, -16
; %var_2_1306 = add i64 %var_2_1263, -16
; Matched:%var_2_1093:  %var_2_1093 = add i64 %var_2_1044, 39
; %var_2_1307 = add i64 %var_2_1261, 39
; Matched:\<badref\>:  store i64 %var_2_1315, i64* %var_2_3, align 8
; store i64 %var_2_1307, i64* %PC, align 8
; Matched:%var_2_1316:  %var_2_1316 = inttoptr i64 %var_2_1314 to double*
; %var_2_1308 = inttoptr i64 %var_2_1306 to double*
; Matched:%var_2_1317:  %var_2_1317 = load double, double* %var_2_1316, align 8
; %var_2_1309 = load double, double* %var_2_1308, align 8
; Matched:%var_2_867:  %var_2_867 = bitcast i64 %var_2_842 to double
; %var_2_1310 = bitcast i64 %var_2_1262 to double
; Matched:%var_2_1319:  %var_2_1319 = fsub double %var_2_1317, %var_2_1318
; %var_2_1311 = fsub double %var_2_1309, %var_2_1310
; Matched:\<badref\>:  store double %var_2_1319, double* %var_2_674, align 1
; store double %var_2_1311, double* %var_2_677, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_676, align 1
; store i64 0, i64* %var_2_679, align 1
; Matched:%var_2_1320:  %var_2_1320 = add i64 %var_2_1271, -24
; %var_2_1312 = add i64 %var_2_1263, -24
; Matched:%var_2_1321:  %var_2_1321 = add i64 %var_2_1266, 48
; %var_2_1313 = add i64 %var_2_1261, 48
; Matched:\<badref\>:  store i64 %var_2_1321, i64* %var_2_3, align 8
; store i64 %var_2_1313, i64* %PC, align 8
; Matched:%var_2_1322:  %var_2_1322 = inttoptr i64 %var_2_1320 to double*
; %var_2_1314 = inttoptr i64 %var_2_1312 to double*
; Matched:%var_2_1323:  %var_2_1323 = load double, double* %var_2_1322, align 8
; %var_2_1315 = load double, double* %var_2_1314, align 8
; Matched:%var_2_1324:  %var_2_1324 = fsub double %var_2_1323, %var_2_1318
; %var_2_1316 = fsub double %var_2_1315, %var_2_1310
; Matched:\<badref\>:  store double %var_2_1324, double* %var_2_683, align 1
; store double %var_2_1316, double* %var_2_685, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_685, align 1
; store i64 0, i64* %var_2_687, align 1
; Matched:%var_2_1325:  %var_2_1325 = add i64 %var_2_1271, -232
; %var_2_1317 = add i64 %var_2_1263, -232
; Matched:%var_2_1326:  %var_2_1326 = add i64 %var_2_1266, 60
; %var_2_1318 = add i64 %var_2_1261, 60
; Matched:\<badref\>:  store i64 %var_2_1326, i64* %var_2_3, align 8
; store i64 %var_2_1318, i64* %PC, align 8
; Matched:%var_2_1327:  %var_2_1327 = load i64, i64* %var_2_44, align 1
; %var_2_1319 = load i64, i64* %var_2_48, align 1
; Matched:%var_2_1328:  %var_2_1328 = inttoptr i64 %var_2_1325 to i64*
; %var_2_1320 = inttoptr i64 %var_2_1317 to i64*
; Matched:\<badref\>:  store i64 %var_2_1327, i64* %var_2_1328, align 8
; store i64 %var_2_1319, i64* %var_2_1320, align 8
%var_2_1321 = load i64, i64* %PC, align 8
%var_2_1322 = load <2 x i32>, <2 x i32>* %var_2_693, align 1
%var_2_1323 = load <2 x i32>, <2 x i32>* %var_2_695, align 1
%var_2_1324 = extractelement <2 x i32> %var_2_1322, i32 0
; Matched:\<badref\>:  store i32 %var_2_695, i32* %var_2_696, align 1
; store i32 %var_2_1324, i32* %var_2_698, align 1
%var_2_1325 = extractelement <2 x i32> %var_2_1322, i32 1
; Matched:\<badref\>:  store i32 %var_2_697, i32* %var_2_699, align 1
; store i32 %var_2_1325, i32* %var_2_701, align 1
%var_2_1326 = extractelement <2 x i32> %var_2_1323, i32 0
; Matched:\<badref\>:  store i32 %var_2_1334, i32* %var_2_701, align 1
; store i32 %var_2_1326, i32* %var_2_703, align 1
%var_2_1327 = extractelement <2 x i32> %var_2_1323, i32 1
; Matched:\<badref\>:  store i32 %var_2_702, i32* %var_2_704, align 1
; store i32 %var_2_1327, i32* %var_2_706, align 1
%var_2_1328 = load <2 x i32>, <2 x i32>* %var_2_713, align 1
%var_2_1329 = load <2 x i32>, <2 x i32>* %var_2_715, align 1
%var_2_1330 = extractelement <2 x i32> %var_2_1328, i32 0
; Matched:\<badref\>:  store i32 %var_2_892, i32* %var_2_716, align 1
; store i32 %var_2_1330, i32* %var_2_718, align 1
%var_2_1331 = extractelement <2 x i32> %var_2_1328, i32 1
; Matched:\<badref\>:  store i32 %var_2_1339, i32* %var_2_719, align 1
; store i32 %var_2_1331, i32* %var_2_721, align 1
%var_2_1332 = extractelement <2 x i32> %var_2_1329, i32 0
; Matched:\<badref\>:  store i32 %var_2_1340, i32* %var_2_721, align 1
; store i32 %var_2_1332, i32* %var_2_723, align 1
%var_2_1333 = extractelement <2 x i32> %var_2_1329, i32 1
; Matched:\<badref\>:  store i32 %var_2_722, i32* %var_2_724, align 1
; store i32 %var_2_1333, i32* %var_2_726, align 1
; Matched:%var_2_1342:  %var_2_1342 = load i64, i64* %RBP.i, align 8
; %var_2_1334 = load i64, i64* %RBP, align 8
; Matched:%var_2_1343:  %var_2_1343 = add i64 %var_2_1342, -240
; %var_2_1335 = add i64 %var_2_1334, -240
; Matched:%var_2_1344:  %var_2_1344 = add i64 %var_2_1329, 14
; %var_2_1336 = add i64 %var_2_1321, 14
; Matched:\<badref\>:  store i64 %var_2_294, i64* %var_2_3, align 8
; store i64 %var_2_1336, i64* %PC, align 8
; Matched:%var_2_1345:  %var_2_1345 = load i64, i64* %var_2_61, align 1
; %var_2_1337 = load i64, i64* %var_2_63, align 1
; Matched:%var_2_1346:  %var_2_1346 = inttoptr i64 %var_2_1343 to i64*
; %var_2_1338 = inttoptr i64 %var_2_1335 to i64*
; Matched:\<badref\>:  store i64 %var_2_1345, i64* %var_2_1346, align 8
; store i64 %var_2_1337, i64* %var_2_1338, align 8
%var_2_1339 = load i64, i64* %PC, align 8
%var_2_1340 = load <2 x i32>, <2 x i32>* %var_2_733, align 1
%var_2_1341 = load <2 x i32>, <2 x i32>* %var_2_735, align 1
%var_2_1342 = extractelement <2 x i32> %var_2_1340, i32 0
; Matched:\<badref\>:  store i32 %var_2_1350, i32* %var_2_736, align 1
; store i32 %var_2_1342, i32* %var_2_738, align 1
%var_2_1343 = extractelement <2 x i32> %var_2_1340, i32 1
; Matched:\<badref\>:  store i32 %var_2_737, i32* %var_2_739, align 1
; store i32 %var_2_1343, i32* %var_2_741, align 1
%var_2_1344 = extractelement <2 x i32> %var_2_1341, i32 0
; Matched:\<badref\>:  store i32 %var_2_1352, i32* %var_2_741, align 1
; store i32 %var_2_1344, i32* %var_2_743, align 1
%var_2_1345 = extractelement <2 x i32> %var_2_1341, i32 1
; Matched:\<badref\>:  store i32 %var_2_1353, i32* %var_2_744, align 1
; store i32 %var_2_1345, i32* %var_2_746, align 1
%var_2_1346 = add i64 %var_2_1339, 301
; Matched:%var_2_1355:  %var_2_1355 = add i64 %var_2_1347, 8
; %var_2_1347 = add i64 %var_2_1339, 8
%var_2_1348 = load i64, i64* %RSP, align 8
%var_2_1349 = add i64 %var_2_1348, -8
; Matched:%var_2_749:  %var_2_749 = inttoptr i64 %var_2_748 to i64*
; %var_2_1350 = inttoptr i64 %var_2_1349 to i64*
; Matched:\<badref\>:  store i64 %var_2_913, i64* %var_2_916, align 8
; store i64 %var_2_1347, i64* %var_2_1350, align 8
; Matched:\<badref\>:  store i64 %var_2_1503, i64* %var_2_6, align 8
; store i64 %var_2_1349, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1354, i64* %var_2_3, align 8
; store i64 %var_2_1346, i64* %PC, align 8
%var_2_1351 = tail call %struct.Memory* @sub_400c00_grad_renamed_(%struct.State* nonnull %0, i64 %var_2_1346, %struct.Memory* %var_2_1260)
%var_2_1352 = load i64, i64* %PC, align 8
%var_2_1353 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_400e10__rodata_type* @seg_400e10__rodata to i64), i64 80) to i64*), align 16
store i64 %var_2_1353, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
%var_2_1354 = load i64, i64* %RBP, align 8
%var_2_1355 = add i64 %var_2_1354, -88
; Matched:%var_2_1524:  %var_2_1524 = add i64 %var_2_1515, 11
; %var_2_1356 = add i64 %var_2_1352, 11
; Matched:\<badref\>:  store i64 %var_2_1524, i64* %var_2_3, align 8
; store i64 %var_2_1356, i64* %PC, align 8
%var_2_1357 = inttoptr i64 %var_2_1355 to i32*
%var_2_1358 = load i32, i32* %var_2_1357, align 4
%var_2_1359 = add i32 %var_2_1358, 1
; Matched:%var_2_1370:  %var_2_1370 = zext i32 %var_2_1369 to i64
; %var_2_1360 = zext i32 %var_2_1359 to i64
; Matched:\<badref\>:  store i64 %var_2_1370, i64* %RAX.i629, align 8
; store i64 %var_2_1360, i64* %RAX, align 8
; Matched:%var_2_1371:  %var_2_1371 = icmp eq i32 %var_2_1368, -1
; %var_2_1361 = icmp eq i32 %var_2_1358, -1
; Matched:%var_2_1372:  %var_2_1372 = icmp eq i32 %var_2_1369, 0
; %var_2_1362 = icmp eq i32 %var_2_1359, 0
; Matched:%var_2_1373:  %var_2_1373 = or i1 %var_2_1371, %var_2_1372
; %var_2_1363 = or i1 %var_2_1361, %var_2_1362
; Matched:%var_2_1374:  %var_2_1374 = zext i1 %var_2_1373 to i8
; %var_2_1364 = zext i1 %var_2_1363 to i8
; Matched:\<badref\>:  store i8 %var_2_1374, i8* %var_2_14, align 1
; store i8 %var_2_1364, i8* %var_2_19, align 1
; Matched:%var_2_1375:  %var_2_1375 = and i32 %var_2_1369, 255
; %var_2_1365 = and i32 %var_2_1359, 255
; Matched:%var_2_1376:  %var_2_1376 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1375)
; %var_2_1366 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1365) #12
; Matched:%var_2_1377:  %var_2_1377 = trunc i32 %var_2_1376 to i8
; %var_2_1367 = trunc i32 %var_2_1366 to i8
; Matched:%var_2_1378:  %var_2_1378 = and i8 %var_2_1377, 1
; %var_2_1368 = and i8 %var_2_1367, 1
; Matched:%var_2_1379:  %var_2_1379 = xor i8 %var_2_1378, 1
; %var_2_1369 = xor i8 %var_2_1368, 1
; Matched:\<badref\>:  store i8 %var_2_1379, i8* %var_2_21, align 1
; store i8 %var_2_1369, i8* %var_2_26, align 1
; Matched:%var_2_1380:  %var_2_1380 = xor i32 %var_2_1369, %var_2_1368
; %var_2_1370 = xor i32 %var_2_1359, %var_2_1358
; Matched:%var_2_1381:  %var_2_1381 = lshr i32 %var_2_1380, 4
; %var_2_1371 = lshr i32 %var_2_1370, 4
; Matched:%var_2_1382:  %var_2_1382 = trunc i32 %var_2_1381 to i8
; %var_2_1372 = trunc i32 %var_2_1371 to i8
; Matched:%var_2_1383:  %var_2_1383 = and i8 %var_2_1382, 1
; %var_2_1373 = and i8 %var_2_1372, 1
; Matched:\<badref\>:  store i8 %var_2_1383, i8* %var_2_27, align 1
; store i8 %var_2_1373, i8* %var_2_32, align 1
; Matched:%var_2_1384:  %var_2_1384 = zext i1 %var_2_1372 to i8
; %var_2_1374 = zext i1 %var_2_1362 to i8
; Matched:\<badref\>:  store i8 %var_2_1384, i8* %var_2_30, align 1
; store i8 %var_2_1374, i8* %var_2_35, align 1
; Matched:%var_2_1385:  %var_2_1385 = lshr i32 %var_2_1369, 31
; %var_2_1375 = lshr i32 %var_2_1359, 31
; Matched:%var_2_1386:  %var_2_1386 = trunc i32 %var_2_1385 to i8
; %var_2_1376 = trunc i32 %var_2_1375 to i8
; Matched:\<badref\>:  store i8 %var_2_1386, i8* %var_2_33, align 1
; store i8 %var_2_1376, i8* %var_2_38, align 1
; Matched:%var_2_1387:  %var_2_1387 = lshr i32 %var_2_1368, 31
; %var_2_1377 = lshr i32 %var_2_1358, 31
; Matched:%var_2_1388:  %var_2_1388 = xor i32 %var_2_1385, %var_2_1387
; %var_2_1378 = xor i32 %var_2_1375, %var_2_1377
; Matched:%var_2_1389:  %var_2_1389 = add nuw nsw i32 %var_2_1388, %var_2_1385
; %var_2_1379 = add nuw nsw i32 %var_2_1378, %var_2_1375
; Matched:%var_2_1390:  %var_2_1390 = icmp eq i32 %var_2_1389, 2
; %var_2_1380 = icmp eq i32 %var_2_1379, 2
; Matched:%var_2_1391:  %var_2_1391 = zext i1 %var_2_1390 to i8
; %var_2_1381 = zext i1 %var_2_1380 to i8
; Matched:\<badref\>:  store i8 %var_2_1391, i8* %var_2_39, align 1
; store i8 %var_2_1381, i8* %var_2_44, align 1
%var_2_1382 = sext i32 %var_2_1359 to i64
; Matched:\<badref\>:  store i64 %var_2_1392, i64* %RCX.i523, align 8
; store i64 %var_2_1382, i64* %RCX, align 8
%var_2_1383 = shl nsw i64 %var_2_1382, 2
%var_2_1384 = add i64 %var_2_1383, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
; Matched:%var_2_1188:  %var_2_1188 = add i64 %var_2_1152, 24
; %var_2_1385 = add i64 %var_2_1352, 24
; Matched:\<badref\>:  store i64 %var_2_768, i64* %var_2_3, align 8
; store i64 %var_2_1385, i64* %PC, align 8
%var_2_1386 = inttoptr i64 %var_2_1384 to i32*
%var_2_1387 = load i32, i32* %var_2_1386, align 4
%var_2_1388 = zext i32 %var_2_1387 to i64
store i64 %var_2_1388, i64* %RDI, align 8
; Matched:%var_2_934:  %var_2_934 = add i64 %var_2_922, -8
; %var_2_1389 = add i64 %var_2_1354, -8
; Matched:%var_2_860:  %var_2_860 = add i64 %var_2_838, 29
; %var_2_1390 = add i64 %var_2_1352, 29
; Matched:\<badref\>:  store i64 %var_2_1306, i64* %var_2_3, align 8
; store i64 %var_2_1390, i64* %PC, align 8
; Matched:%var_2_936:  %var_2_936 = inttoptr i64 %var_2_934 to double*
; %var_2_1391 = inttoptr i64 %var_2_1389 to double*
; Matched:%var_2_937:  %var_2_937 = load double, double* %var_2_936, align 8
; %var_2_1392 = load double, double* %var_2_1391, align 8
%var_2_1393 = bitcast i64 %var_2_1353 to double
; Matched:%var_2_1197:  %var_2_1197 = fsub double %var_2_1195, %var_2_1196
; %var_2_1394 = fsub double %var_2_1392, %var_2_1393
; Matched:\<badref\>:  store double %var_2_1404, double* %var_2_646, align 1
; store double %var_2_1394, double* %var_2_651, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_647, align 1
; store i64 0, i64* %var_2_652, align 1
; Matched:%var_2_940:  %var_2_940 = add i64 %var_2_922, -16
; %var_2_1395 = add i64 %var_2_1354, -16
; Matched:%var_2_1406:  %var_2_1406 = add i64 %var_2_1359, 38
; %var_2_1396 = add i64 %var_2_1352, 38
; Matched:\<badref\>:  store i64 %var_2_1406, i64* %var_2_3, align 8
; store i64 %var_2_1396, i64* %PC, align 8
; Matched:%var_2_942:  %var_2_942 = inttoptr i64 %var_2_940 to double*
; %var_2_1397 = inttoptr i64 %var_2_1395 to double*
; Matched:%var_2_943:  %var_2_943 = load double, double* %var_2_942, align 8
; %var_2_1398 = load double, double* %var_2_1397, align 8
; Matched:%var_2_944:  %var_2_944 = fsub double %var_2_943, %var_2_938
; %var_2_1399 = fsub double %var_2_1398, %var_2_1393
; Matched:\<badref\>:  store double %var_2_944, double* %var_2_665, align 1
; store double %var_2_1399, double* %var_2_669, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_667, align 1
; store i64 0, i64* %var_2_671, align 1
; Matched:%var_2_1202:  %var_2_1202 = add i64 %var_2_1157, -24
; %var_2_1400 = add i64 %var_2_1354, -24
; Matched:%var_2_1411:  %var_2_1411 = add i64 %var_2_1359, 47
; %var_2_1401 = add i64 %var_2_1352, 47
; Matched:\<badref\>:  store i64 %var_2_1411, i64* %var_2_3, align 8
; store i64 %var_2_1401, i64* %PC, align 8
; Matched:%var_2_1412:  %var_2_1412 = inttoptr i64 %var_2_1410 to double*
; %var_2_1402 = inttoptr i64 %var_2_1400 to double*
; Matched:%var_2_1205:  %var_2_1205 = load double, double* %var_2_1204, align 8
; %var_2_1403 = load double, double* %var_2_1402, align 8
; Matched:%var_2_1206:  %var_2_1206 = fsub double %var_2_1205, %var_2_1196
; %var_2_1404 = fsub double %var_2_1403, %var_2_1393
; Matched:\<badref\>:  store double %var_2_1414, double* %var_2_674, align 1
; store double %var_2_1404, double* %var_2_677, align 1
; Matched:\<badref\>:  store i64 0, i64* %var_2_676, align 1
; store i64 0, i64* %var_2_679, align 1
; Matched:%var_2_1415:  %var_2_1415 = add i64 %var_2_1364, -248
; %var_2_1405 = add i64 %var_2_1354, -248
; Matched:%var_2_1416:  %var_2_1416 = add i64 %var_2_1359, 59
; %var_2_1406 = add i64 %var_2_1352, 59
; Matched:\<badref\>:  store i64 %var_2_1416, i64* %var_2_3, align 8
; store i64 %var_2_1406, i64* %PC, align 8
; Matched:%var_2_1417:  %var_2_1417 = load i64, i64* %var_2_44, align 1
; %var_2_1407 = load i64, i64* %var_2_48, align 1
; Matched:%var_2_1418:  %var_2_1418 = inttoptr i64 %var_2_1415 to i64*
; %var_2_1408 = inttoptr i64 %var_2_1405 to i64*
; Matched:\<badref\>:  store i64 %var_2_1417, i64* %var_2_1418, align 8
; store i64 %var_2_1407, i64* %var_2_1408, align 8
%var_2_1409 = load i64, i64* %PC, align 8
%var_2_1410 = load <2 x i32>, <2 x i32>* %var_2_786, align 1
%var_2_1411 = load <2 x i32>, <2 x i32>* %var_2_788, align 1
%var_2_1412 = extractelement <2 x i32> %var_2_1410, i32 0
; Matched:\<badref\>:  store i32 %var_2_790, i32* %var_2_696, align 1
; store i32 %var_2_1412, i32* %var_2_698, align 1
%var_2_1413 = extractelement <2 x i32> %var_2_1410, i32 1
; Matched:\<badref\>:  store i32 %var_2_1423, i32* %var_2_699, align 1
; store i32 %var_2_1413, i32* %var_2_701, align 1
%var_2_1414 = extractelement <2 x i32> %var_2_1411, i32 0
; Matched:\<badref\>:  store i32 %var_2_1424, i32* %var_2_701, align 1
; store i32 %var_2_1414, i32* %var_2_703, align 1
%var_2_1415 = extractelement <2 x i32> %var_2_1411, i32 1
; Matched:\<badref\>:  store i32 %var_2_959, i32* %var_2_704, align 1
; store i32 %var_2_1415, i32* %var_2_706, align 1
%var_2_1416 = load <2 x i32>, <2 x i32>* %var_2_693, align 1
%var_2_1417 = load <2 x i32>, <2 x i32>* %var_2_695, align 1
%var_2_1418 = extractelement <2 x i32> %var_2_1416, i32 0
; Matched:\<badref\>:  store i32 %var_2_1220, i32* %var_2_716, align 1
; store i32 %var_2_1418, i32* %var_2_718, align 1
%var_2_1419 = extractelement <2 x i32> %var_2_1416, i32 1
; Matched:\<badref\>:  store i32 %var_2_1221, i32* %var_2_719, align 1
; store i32 %var_2_1419, i32* %var_2_721, align 1
%var_2_1420 = extractelement <2 x i32> %var_2_1417, i32 0
; Matched:\<badref\>:  store i32 %var_2_970, i32* %var_2_721, align 1
; store i32 %var_2_1420, i32* %var_2_723, align 1
%var_2_1421 = extractelement <2 x i32> %var_2_1417, i32 1
; Matched:\<badref\>:  store i32 %var_2_971, i32* %var_2_724, align 1
; store i32 %var_2_1421, i32* %var_2_726, align 1
%var_2_1422 = load <2 x i32>, <2 x i32>* %var_2_713, align 1
%var_2_1423 = load <2 x i32>, <2 x i32>* %var_2_715, align 1
%var_2_1424 = extractelement <2 x i32> %var_2_1422, i32 0
; Matched:\<badref\>:  store i32 %var_2_1434, i32* %var_2_736, align 1
; store i32 %var_2_1424, i32* %var_2_738, align 1
%var_2_1425 = extractelement <2 x i32> %var_2_1422, i32 1
; Matched:\<badref\>:  store i32 %var_2_1227, i32* %var_2_739, align 1
; store i32 %var_2_1425, i32* %var_2_741, align 1
%var_2_1426 = extractelement <2 x i32> %var_2_1423, i32 0
; Matched:\<badref\>:  store i32 %var_2_1436, i32* %var_2_741, align 1
; store i32 %var_2_1426, i32* %var_2_743, align 1
%var_2_1427 = extractelement <2 x i32> %var_2_1423, i32 1
; Matched:\<badref\>:  store i32 %var_2_1229, i32* %var_2_744, align 1
; store i32 %var_2_1427, i32* %var_2_746, align 1
%var_2_1428 = add i64 %var_2_1409, 234
; Matched:%var_2_1439:  %var_2_1439 = add i64 %var_2_1419, 14
; %var_2_1429 = add i64 %var_2_1409, 14
%var_2_1430 = load i64, i64* %RSP, align 8
%var_2_1431 = add i64 %var_2_1430, -8
; Matched:%var_2_1442:  %var_2_1442 = inttoptr i64 %var_2_1441 to i64*
; %var_2_1432 = inttoptr i64 %var_2_1431 to i64*
; Matched:\<badref\>:  store i64 %var_2_1439, i64* %var_2_1442, align 8
; store i64 %var_2_1429, i64* %var_2_1432, align 8
; Matched:\<badref\>:  store i64 %var_2_138, i64* %var_2_6, align 8
; store i64 %var_2_1431, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1438, i64* %var_2_3, align 8
; store i64 %var_2_1428, i64* %PC, align 8
%var_2_1433 = tail call %struct.Memory* @sub_400c00_grad_renamed_(%struct.State* nonnull %0, i64 %var_2_1428, %struct.Memory* %var_2_1351)
; Matched:%var_2_1443:  %var_2_1443 = load i64, i64* %RBP.i, align 8
; %var_2_1434 = load i64, i64* %RBP, align 8
; Matched:%var_2_1444:  %var_2_1444 = add i64 %var_2_1443, -240
; %var_2_1435 = add i64 %var_2_1434, -240
%var_2_1436 = load i64, i64* %PC, align 8
%var_2_1437 = add i64 %var_2_1436, 8
store i64 %var_2_1437, i64* %PC, align 8
; Matched:%var_2_1447:  %var_2_1447 = inttoptr i64 %var_2_1444 to i64*
; %var_2_1438 = inttoptr i64 %var_2_1435 to i64*
; Matched:%var_2_1448:  %var_2_1448 = load i64, i64* %var_2_1447, align 8
; %var_2_1439 = load i64, i64* %var_2_1438, align 8
; Matched:\<badref\>:  store i64 %var_2_1448, i64* %var_2_53, align 1
; store i64 %var_2_1439, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
; Matched:%var_2_1449:  %var_2_1449 = add i64 %var_2_1443, -256
; %var_2_1440 = add i64 %var_2_1434, -256
; Matched:%var_2_1450:  %var_2_1450 = add i64 %var_2_1445, 16
; %var_2_1441 = add i64 %var_2_1436, 16
; Matched:\<badref\>:  store i64 %var_2_1450, i64* %var_2_3, align 8
; store i64 %var_2_1441, i64* %PC, align 8
; Matched:%var_2_1451:  %var_2_1451 = load i64, i64* %var_2_44, align 1
; %var_2_1442 = load i64, i64* %var_2_48, align 1
; Matched:%var_2_1452:  %var_2_1452 = inttoptr i64 %var_2_1449 to i64*
; %var_2_1443 = inttoptr i64 %var_2_1440 to i64*
; Matched:\<badref\>:  store i64 %var_2_1451, i64* %var_2_1452, align 8
; store i64 %var_2_1442, i64* %var_2_1443, align 8
%var_2_1444 = load i64, i64* %PC, align 8
%var_2_1445 = load <2 x i32>, <2 x i32>* %var_2_817, align 1
%var_2_1446 = load <2 x i32>, <2 x i32>* %var_2_819, align 1
%var_2_1447 = extractelement <2 x i32> %var_2_1445, i32 0
; Matched:\<badref\>:  store i32 %var_2_820, i32* %var_2_696, align 1
; store i32 %var_2_1447, i32* %var_2_698, align 1
%var_2_1448 = extractelement <2 x i32> %var_2_1445, i32 1
; Matched:\<badref\>:  store i32 %var_2_821, i32* %var_2_699, align 1
; store i32 %var_2_1448, i32* %var_2_701, align 1
%var_2_1449 = extractelement <2 x i32> %var_2_1446, i32 0
; Matched:\<badref\>:  store i32 %var_2_822, i32* %var_2_701, align 1
; store i32 %var_2_1449, i32* %var_2_703, align 1
%var_2_1450 = extractelement <2 x i32> %var_2_1446, i32 1
; Matched:\<badref\>:  store i32 %var_2_1251, i32* %var_2_704, align 1
; store i32 %var_2_1450, i32* %var_2_706, align 1
; Matched:%var_2_1460:  %var_2_1460 = load i64, i64* %RBP.i, align 8
; %var_2_1451 = load i64, i64* %RBP, align 8
; Matched:%var_2_1461:  %var_2_1461 = add i64 %var_2_1460, -248
; %var_2_1452 = add i64 %var_2_1451, -248
; Matched:%var_2_1366:  %var_2_1366 = add i64 %var_2_1359, 11
; %var_2_1453 = add i64 %var_2_1444, 11
; Matched:\<badref\>:  store i64 %var_2_1159, i64* %var_2_3, align 8
; store i64 %var_2_1453, i64* %PC, align 8
; Matched:%var_2_1463:  %var_2_1463 = inttoptr i64 %var_2_1461 to i64*
; %var_2_1454 = inttoptr i64 %var_2_1452 to i64*
; Matched:%var_2_1464:  %var_2_1464 = load i64, i64* %var_2_1463, align 8
; %var_2_1455 = load i64, i64* %var_2_1454, align 8
; Matched:\<badref\>:  store i64 %var_2_1464, i64* %var_2_53, align 1
; store i64 %var_2_1455, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
; Matched:%var_2_1465:  %var_2_1465 = add i64 %var_2_1460, -256
; %var_2_1456 = add i64 %var_2_1451, -256
; Matched:%var_2_1005:  %var_2_1005 = add i64 %var_2_992, 19
; %var_2_1457 = add i64 %var_2_1444, 19
; Matched:\<badref\>:  store i64 %var_2_1258, i64* %var_2_3, align 8
; store i64 %var_2_1457, i64* %PC, align 8
; Matched:%var_2_1467:  %var_2_1467 = inttoptr i64 %var_2_1465 to i64*
; %var_2_1458 = inttoptr i64 %var_2_1456 to i64*
; Matched:%var_2_1468:  %var_2_1468 = load i64, i64* %var_2_1467, align 8
; %var_2_1459 = load i64, i64* %var_2_1458, align 8
; Matched:\<badref\>:  store i64 %var_2_1468, i64* %var_2_61, align 1
; store i64 %var_2_1459, i64* %var_2_63, align 1
store double 0.000000e+00, double* %var_2_653, align 1
%var_2_1460 = add i64 %var_2_1444, 540
; Matched:%var_2_1040:  %var_2_1040 = add i64 %var_2_1023, 24
; %var_2_1461 = add i64 %var_2_1444, 24
%var_2_1462 = load i64, i64* %RSP, align 8
%var_2_1463 = add i64 %var_2_1462, -8
; Matched:%var_2_1012:  %var_2_1012 = inttoptr i64 %var_2_1011 to i64*
; %var_2_1464 = inttoptr i64 %var_2_1463 to i64*
; Matched:\<badref\>:  store i64 %var_2_1009, i64* %var_2_1012, align 8
; store i64 %var_2_1461, i64* %var_2_1464, align 8
; Matched:\<badref\>:  store i64 %var_2_194, i64* %var_2_6, align 8
; store i64 %var_2_1463, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1469, i64* %var_2_3, align 8
; store i64 %var_2_1460, i64* %PC, align 8
%var_2_1465 = tail call %struct.Memory* @sub_400d50_lerp_renamed_(%struct.State* nonnull %0, i64 %var_2_1460, %struct.Memory* %var_2_1433)
; Matched:%var_2_1474:  %var_2_1474 = load i64, i64* %RBP.i, align 8
; %var_2_1466 = load i64, i64* %RBP, align 8
; Matched:%var_2_1475:  %var_2_1475 = add i64 %var_2_1474, -200
; %var_2_1467 = add i64 %var_2_1466, -200
%var_2_1468 = load i64, i64* %PC, align 8
%var_2_1469 = add i64 %var_2_1468, 8
store i64 %var_2_1469, i64* %PC, align 8
; Matched:%var_2_1478:  %var_2_1478 = inttoptr i64 %var_2_1475 to i64*
; %var_2_1470 = inttoptr i64 %var_2_1467 to i64*
; Matched:%var_2_1479:  %var_2_1479 = load i64, i64* %var_2_1478, align 8
; %var_2_1471 = load i64, i64* %var_2_1470, align 8
; Matched:\<badref\>:  store i64 %var_2_1479, i64* %var_2_53, align 1
; store i64 %var_2_1471, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
; Matched:%var_2_1480:  %var_2_1480 = add i64 %var_2_1474, -264
; %var_2_1472 = add i64 %var_2_1466, -264
; Matched:%var_2_1481:  %var_2_1481 = add i64 %var_2_1476, 16
; %var_2_1473 = add i64 %var_2_1468, 16
; Matched:\<badref\>:  store i64 %var_2_1481, i64* %var_2_3, align 8
; store i64 %var_2_1473, i64* %PC, align 8
; Matched:%var_2_1482:  %var_2_1482 = load i64, i64* %var_2_44, align 1
; %var_2_1474 = load i64, i64* %var_2_48, align 1
; Matched:%var_2_1483:  %var_2_1483 = inttoptr i64 %var_2_1480 to i64*
; %var_2_1475 = inttoptr i64 %var_2_1472 to i64*
; Matched:\<badref\>:  store i64 %var_2_1482, i64* %var_2_1483, align 8
; store i64 %var_2_1474, i64* %var_2_1475, align 8
%var_2_1476 = load i64, i64* %PC, align 8
%var_2_1477 = load <2 x i32>, <2 x i32>* %var_2_817, align 1
%var_2_1478 = load <2 x i32>, <2 x i32>* %var_2_819, align 1
%var_2_1479 = extractelement <2 x i32> %var_2_1477, i32 0
; Matched:\<badref\>:  store i32 %var_2_1248, i32* %var_2_696, align 1
; store i32 %var_2_1479, i32* %var_2_698, align 1
%var_2_1480 = extractelement <2 x i32> %var_2_1477, i32 1
; Matched:\<badref\>:  store i32 %var_2_1249, i32* %var_2_699, align 1
; store i32 %var_2_1480, i32* %var_2_701, align 1
%var_2_1481 = extractelement <2 x i32> %var_2_1478, i32 0
; Matched:\<badref\>:  store i32 %var_2_1250, i32* %var_2_701, align 1
; store i32 %var_2_1481, i32* %var_2_703, align 1
%var_2_1482 = extractelement <2 x i32> %var_2_1478, i32 1
; Matched:\<badref\>:  store i32 %var_2_1490, i32* %var_2_704, align 1
; store i32 %var_2_1482, i32* %var_2_706, align 1
; Matched:%var_2_1491:  %var_2_1491 = load i64, i64* %RBP.i, align 8
; %var_2_1483 = load i64, i64* %RBP, align 8
; Matched:%var_2_1492:  %var_2_1492 = add i64 %var_2_1491, -232
; %var_2_1484 = add i64 %var_2_1483, -232
; Matched:%var_2_289:  %var_2_289 = add i64 %var_2_282, 11
; %var_2_1485 = add i64 %var_2_1476, 11
; Matched:\<badref\>:  store i64 %var_2_289, i64* %var_2_3, align 8
; store i64 %var_2_1485, i64* %PC, align 8
; Matched:%var_2_1494:  %var_2_1494 = inttoptr i64 %var_2_1492 to i64*
; %var_2_1486 = inttoptr i64 %var_2_1484 to i64*
; Matched:%var_2_1495:  %var_2_1495 = load i64, i64* %var_2_1494, align 8
; %var_2_1487 = load i64, i64* %var_2_1486, align 8
; Matched:\<badref\>:  store i64 %var_2_1495, i64* %var_2_53, align 1
; store i64 %var_2_1487, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
; Matched:%var_2_1496:  %var_2_1496 = add i64 %var_2_1491, -264
; %var_2_1488 = add i64 %var_2_1483, -264
; Matched:%var_2_481:  %var_2_481 = add i64 %var_2_446, 19
; %var_2_1489 = add i64 %var_2_1476, 19
; Matched:\<badref\>:  store i64 %var_2_481, i64* %var_2_3, align 8
; store i64 %var_2_1489, i64* %PC, align 8
; Matched:%var_2_1498:  %var_2_1498 = inttoptr i64 %var_2_1496 to i64*
; %var_2_1490 = inttoptr i64 %var_2_1488 to i64*
; Matched:%var_2_1499:  %var_2_1499 = load i64, i64* %var_2_1498, align 8
; %var_2_1491 = load i64, i64* %var_2_1490, align 8
; Matched:\<badref\>:  store i64 %var_2_1499, i64* %var_2_61, align 1
; store i64 %var_2_1491, i64* %var_2_63, align 1
store double 0.000000e+00, double* %var_2_653, align 1
%var_2_1492 = add i64 %var_2_1476, 500
; Matched:%var_2_1262:  %var_2_1262 = add i64 %var_2_1245, 24
; %var_2_1493 = add i64 %var_2_1476, 24
%var_2_1494 = load i64, i64* %RSP, align 8
%var_2_1495 = add i64 %var_2_1494, -8
; Matched:%var_2_1535:  %var_2_1535 = inttoptr i64 %var_2_1534 to i64*
; %var_2_1496 = inttoptr i64 %var_2_1495 to i64*
; Matched:\<badref\>:  store i64 %var_2_1532, i64* %var_2_1535, align 8
; store i64 %var_2_1493, i64* %var_2_1496, align 8
; Matched:\<badref\>:  store i64 %var_2_1150, i64* %var_2_6, align 8
; store i64 %var_2_1495, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1500, i64* %var_2_3, align 8
; store i64 %var_2_1492, i64* %PC, align 8
%var_2_1497 = tail call %struct.Memory* @sub_400d50_lerp_renamed_(%struct.State* nonnull %0, i64 %var_2_1492, %struct.Memory* %var_2_1465)
; Matched:%var_2_1505:  %var_2_1505 = load i64, i64* %RBP.i, align 8
; %var_2_1498 = load i64, i64* %RBP, align 8
; Matched:%var_2_1506:  %var_2_1506 = add i64 %var_2_1505, -96
; %var_2_1499 = add i64 %var_2_1498, -96
%var_2_1500 = load i64, i64* %PC, align 8
; Matched:%var_2_222:  %var_2_222 = add i64 %var_2_221, 5
; %var_2_1501 = add i64 %var_2_1500, 5
; Matched:\<badref\>:  store i64 %var_2_222, i64* %var_2_3, align 8
; store i64 %var_2_1501, i64* %PC, align 8
; Matched:%var_2_1509:  %var_2_1509 = inttoptr i64 %var_2_1506 to i64*
; %var_2_1502 = inttoptr i64 %var_2_1499 to i64*
; Matched:%var_2_1510:  %var_2_1510 = load i64, i64* %var_2_1509, align 8
; %var_2_1503 = load i64, i64* %var_2_1502, align 8
; Matched:\<badref\>:  store i64 %var_2_1510, i64* %var_2_53, align 1
; store i64 %var_2_1503, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
; Matched:%var_2_1511:  %var_2_1511 = add i64 %var_2_1505, -272
; %var_2_1504 = add i64 %var_2_1498, -272
; Matched:%var_2_1051:  %var_2_1051 = add i64 %var_2_1044, 13
; %var_2_1505 = add i64 %var_2_1500, 13
; Matched:\<badref\>:  store i64 %var_2_830, i64* %var_2_3, align 8
; store i64 %var_2_1505, i64* %PC, align 8
; Matched:%var_2_1513:  %var_2_1513 = load i64, i64* %var_2_44, align 1
; %var_2_1506 = load i64, i64* %var_2_48, align 1
; Matched:%var_2_1514:  %var_2_1514 = inttoptr i64 %var_2_1511 to i64*
; %var_2_1507 = inttoptr i64 %var_2_1504 to i64*
; Matched:\<badref\>:  store i64 %var_2_1513, i64* %var_2_1514, align 8
; store i64 %var_2_1506, i64* %var_2_1507, align 8
%var_2_1508 = load i64, i64* %PC, align 8
%var_2_1509 = load <2 x i32>, <2 x i32>* %var_2_817, align 1
%var_2_1510 = load <2 x i32>, <2 x i32>* %var_2_819, align 1
%var_2_1511 = extractelement <2 x i32> %var_2_1509, i32 0
; Matched:\<badref\>:  store i32 %var_2_1026, i32* %var_2_696, align 1
; store i32 %var_2_1511, i32* %var_2_698, align 1
%var_2_1512 = extractelement <2 x i32> %var_2_1509, i32 1
; Matched:\<badref\>:  store i32 %var_2_1027, i32* %var_2_699, align 1
; store i32 %var_2_1512, i32* %var_2_701, align 1
%var_2_1513 = extractelement <2 x i32> %var_2_1510, i32 0
; Matched:\<badref\>:  store i32 %var_2_1028, i32* %var_2_701, align 1
; store i32 %var_2_1513, i32* %var_2_703, align 1
%var_2_1514 = extractelement <2 x i32> %var_2_1510, i32 1
; Matched:\<badref\>:  store i32 %var_2_998, i32* %var_2_704, align 1
; store i32 %var_2_1514, i32* %var_2_706, align 1
; Matched:%var_2_1522:  %var_2_1522 = load i64, i64* %RBP.i, align 8
; %var_2_1515 = load i64, i64* %RBP, align 8
; Matched:%var_2_1523:  %var_2_1523 = add i64 %var_2_1522, -192
; %var_2_1516 = add i64 %var_2_1515, -192
; Matched:%var_2_1001:  %var_2_1001 = add i64 %var_2_992, 11
; %var_2_1517 = add i64 %var_2_1508, 11
; Matched:\<badref\>:  store i64 %var_2_1001, i64* %var_2_3, align 8
; store i64 %var_2_1517, i64* %PC, align 8
; Matched:%var_2_1525:  %var_2_1525 = inttoptr i64 %var_2_1523 to i64*
; %var_2_1518 = inttoptr i64 %var_2_1516 to i64*
; Matched:%var_2_1526:  %var_2_1526 = load i64, i64* %var_2_1525, align 8
; %var_2_1519 = load i64, i64* %var_2_1518, align 8
; Matched:\<badref\>:  store i64 %var_2_1526, i64* %var_2_53, align 1
; store i64 %var_2_1519, i64* %var_2_56, align 1
store double 0.000000e+00, double* %var_2_182, align 1
; Matched:%var_2_1527:  %var_2_1527 = add i64 %var_2_1522, -272
; %var_2_1520 = add i64 %var_2_1515, -272
; Matched:%var_2_902:  %var_2_902 = add i64 %var_2_889, 19
; %var_2_1521 = add i64 %var_2_1508, 19
; Matched:\<badref\>:  store i64 %var_2_902, i64* %var_2_3, align 8
; store i64 %var_2_1521, i64* %PC, align 8
; Matched:%var_2_1529:  %var_2_1529 = inttoptr i64 %var_2_1527 to i64*
; %var_2_1522 = inttoptr i64 %var_2_1520 to i64*
; Matched:%var_2_1530:  %var_2_1530 = load i64, i64* %var_2_1529, align 8
; %var_2_1523 = load i64, i64* %var_2_1522, align 8
; Matched:\<badref\>:  store i64 %var_2_1530, i64* %var_2_61, align 1
; store i64 %var_2_1523, i64* %var_2_63, align 1
store double 0.000000e+00, double* %var_2_653, align 1
%var_2_1524 = add i64 %var_2_1508, 463
; Matched:%var_2_1470:  %var_2_1470 = add i64 %var_2_1453, 24
; %var_2_1525 = add i64 %var_2_1508, 24
%var_2_1526 = load i64, i64* %RSP, align 8
%var_2_1527 = add i64 %var_2_1526, -8
; Matched:%var_2_1043:  %var_2_1043 = inttoptr i64 %var_2_1042 to i64*
; %var_2_1528 = inttoptr i64 %var_2_1527 to i64*
; Matched:\<badref\>:  store i64 %var_2_1040, i64* %var_2_1043, align 8
; store i64 %var_2_1525, i64* %var_2_1528, align 8
; Matched:\<badref\>:  store i64 %var_2_272, i64* %var_2_6, align 8
; store i64 %var_2_1527, i64* %RSP, align 8
; Matched:\<badref\>:  store i64 %var_2_1531, i64* %var_2_3, align 8
; store i64 %var_2_1524, i64* %PC, align 8
%var_2_1529 = tail call %struct.Memory* @sub_400d50_lerp_renamed_(%struct.State* nonnull %0, i64 %var_2_1524, %struct.Memory* %var_2_1497)
; Matched:%var_2_1536:  %var_2_1536 = load i64, i64* %var_2_6, align 8
; %var_2_1530 = load i64, i64* %RSP, align 8
%var_2_1531 = load i64, i64* %PC, align 8
; Matched:%var_2_1538:  %var_2_1538 = add i64 %var_2_1536, 272
; %var_2_1532 = add i64 %var_2_1530, 272
; Matched:\<badref\>:  store i64 %var_2_1538, i64* %var_2_6, align 8
; store i64 %var_2_1532, i64* %RSP, align 8
; Matched:%var_2_1539:  %var_2_1539 = icmp ugt i64 %var_2_1536, -273
; %var_2_1533 = icmp ugt i64 %var_2_1530, -273
; Matched:%var_2_1540:  %var_2_1540 = zext i1 %var_2_1539 to i8
; %var_2_1534 = zext i1 %var_2_1533 to i8
; Matched:\<badref\>:  store i8 %var_2_1540, i8* %var_2_14, align 1
; store i8 %var_2_1534, i8* %var_2_19, align 1
; Matched:%var_2_1541:  %var_2_1541 = trunc i64 %var_2_1538 to i32
; %var_2_1535 = trunc i64 %var_2_1532 to i32
; Matched:%var_2_1542:  %var_2_1542 = and i32 %var_2_1541, 255
; %var_2_1536 = and i32 %var_2_1535, 255
; Matched:%var_2_1543:  %var_2_1543 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1542)
; %var_2_1537 = tail call i32 @llvm.ctpop.i32(i32 %var_2_1536) #12
; Matched:%var_2_1544:  %var_2_1544 = trunc i32 %var_2_1543 to i8
; %var_2_1538 = trunc i32 %var_2_1537 to i8
; Matched:%var_2_1545:  %var_2_1545 = and i8 %var_2_1544, 1
; %var_2_1539 = and i8 %var_2_1538, 1
; Matched:%var_2_1546:  %var_2_1546 = xor i8 %var_2_1545, 1
; %var_2_1540 = xor i8 %var_2_1539, 1
; Matched:\<badref\>:  store i8 %var_2_1546, i8* %var_2_21, align 1
; store i8 %var_2_1540, i8* %var_2_26, align 1
; Matched:%var_2_1547:  %var_2_1547 = xor i64 %var_2_1536, 16
; %var_2_1541 = xor i64 %var_2_1530, 16
; Matched:%var_2_1548:  %var_2_1548 = xor i64 %var_2_1547, %var_2_1538
; %var_2_1542 = xor i64 %var_2_1541, %var_2_1532
; Matched:%var_2_1549:  %var_2_1549 = lshr i64 %var_2_1548, 4
; %var_2_1543 = lshr i64 %var_2_1542, 4
; Matched:%var_2_1550:  %var_2_1550 = trunc i64 %var_2_1549 to i8
; %var_2_1544 = trunc i64 %var_2_1543 to i8
; Matched:%var_2_1551:  %var_2_1551 = and i8 %var_2_1550, 1
; %var_2_1545 = and i8 %var_2_1544, 1
; Matched:\<badref\>:  store i8 %var_2_1551, i8* %var_2_27, align 1
; store i8 %var_2_1545, i8* %var_2_32, align 1
; Matched:%var_2_1552:  %var_2_1552 = icmp eq i64 %var_2_1538, 0
; %var_2_1546 = icmp eq i64 %var_2_1532, 0
; Matched:%var_2_1553:  %var_2_1553 = zext i1 %var_2_1552 to i8
; %var_2_1547 = zext i1 %var_2_1546 to i8
; Matched:\<badref\>:  store i8 %var_2_1553, i8* %var_2_30, align 1
; store i8 %var_2_1547, i8* %var_2_35, align 1
; Matched:%var_2_1554:  %var_2_1554 = lshr i64 %var_2_1538, 63
; %var_2_1548 = lshr i64 %var_2_1532, 63
; Matched:%var_2_1555:  %var_2_1555 = trunc i64 %var_2_1554 to i8
; %var_2_1549 = trunc i64 %var_2_1548 to i8
; Matched:\<badref\>:  store i8 %var_2_1555, i8* %var_2_33, align 1
; store i8 %var_2_1549, i8* %var_2_38, align 1
; Matched:%var_2_1556:  %var_2_1556 = lshr i64 %var_2_1536, 63
; %var_2_1550 = lshr i64 %var_2_1530, 63
; Matched:%var_2_1557:  %var_2_1557 = xor i64 %var_2_1554, %var_2_1556
; %var_2_1551 = xor i64 %var_2_1548, %var_2_1550
; Matched:%var_2_1558:  %var_2_1558 = add nuw nsw i64 %var_2_1557, %var_2_1554
; %var_2_1552 = add nuw nsw i64 %var_2_1551, %var_2_1548
; Matched:%var_2_1559:  %var_2_1559 = icmp eq i64 %var_2_1558, 2
; %var_2_1553 = icmp eq i64 %var_2_1552, 2
; Matched:%var_2_1560:  %var_2_1560 = zext i1 %var_2_1559 to i8
; %var_2_1554 = zext i1 %var_2_1553 to i8
; Matched:\<badref\>:  store i8 %var_2_1560, i8* %var_2_39, align 1
; store i8 %var_2_1554, i8* %var_2_44, align 1
%var_2_1555 = add i64 %var_2_1531, 8
store i64 %var_2_1555, i64* %PC, align 8
; Matched:%var_2_1562:  %var_2_1562 = add i64 %var_2_1536, 280
; %var_2_1556 = add i64 %var_2_1530, 280
; Matched:%var_2_1563:  %var_2_1563 = inttoptr i64 %var_2_1538 to i64*
; %var_2_1557 = inttoptr i64 %var_2_1532 to i64*
; Matched:%var_2_1564:  %var_2_1564 = load i64, i64* %var_2_1563, align 8
; %var_2_1558 = load i64, i64* %var_2_1557, align 8
; Matched:\<badref\>:  store i64 %var_2_1564, i64* %RBP.i, align 8
; store i64 %var_2_1558, i64* %RBP, align 8
; Matched:\<badref\>:  store i64 %var_2_1562, i64* %var_2_6, align 8
; store i64 %var_2_1556, i64* %RSP, align 8
; Matched:%var_2_1565:  %var_2_1565 = add i64 %var_2_1537, 9
; %var_2_1559 = add i64 %var_2_1531, 9
; Matched:\<badref\>:  store i64 %var_2_1565, i64* %var_2_3, align 8
; store i64 %var_2_1559, i64* %PC, align 8
; Matched:%var_2_1566:  %var_2_1566 = inttoptr i64 %var_2_1562 to i64*
; %var_2_1560 = inttoptr i64 %var_2_1556 to i64*
; Matched:%var_2_1567:  %var_2_1567 = load i64, i64* %var_2_1566, align 8
; %var_2_1561 = load i64, i64* %var_2_1560, align 8
; Matched:\<badref\>:  store i64 %var_2_1567, i64* %var_2_3, align 8
; store i64 %var_2_1561, i64* %PC, align 8
; Matched:%var_2_1568:  %var_2_1568 = add i64 %var_2_1536, 288
; %var_2_1562 = add i64 %var_2_1530, 288
; Matched:\<badref\>:  store i64 %var_2_1568, i64* %var_2_6, align 8
; store i64 %var_2_1562, i64* %RSP, align 8
ret %struct.Memory* %var_2_1529
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400d50_lerp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_400d50:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
  %14 = add i64 %12, 8
  store i64 %14, i64* %PC, align 8
  %15 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %16 = load i64, i64* %15, align 1
  %17 = inttoptr i64 %13 to i64*
  store i64 %16, i64* %17, align 8
  %18 = load i64, i64* %RBP, align 8
  %19 = add i64 %18, -16
  %20 = load i64, i64* %PC, align 8
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC, align 8
  %22 = bitcast %union.VectorReg* %4 to double*
  %23 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %4, i64 0, i32 0, i32 0, i32 0, i64 0
  %24 = load i64, i64* %23, align 1
  %25 = inttoptr i64 %19 to i64*
  store i64 %24, i64* %25, align 8
  %26 = load i64, i64* %RBP, align 8
  %27 = add i64 %26, -24
  %28 = load i64, i64* %PC, align 8
  %29 = add i64 %28, 5
  store i64 %29, i64* %PC, align 8
  %30 = bitcast %union.VectorReg* %5 to double*
  %31 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %5, i64 0, i32 0, i32 0, i32 0, i64 0
  %32 = load i64, i64* %31, align 1
  %33 = inttoptr i64 %27 to i64*
  store i64 %32, i64* %33, align 8
  %34 = load i64, i64* %RBP, align 8
  %35 = add i64 %34, -16
  %36 = load i64, i64* %PC, align 8
  %37 = add i64 %36, 5
  store i64 %37, i64* %PC, align 8
  %38 = inttoptr i64 %35 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = bitcast [32 x %union.VectorReg]* %3 to double*
  store i64 %39, i64* %15, align 1, !tbaa !2451
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %42 = bitcast i64* %41 to double*
  store double 0.000000e+00, double* %42, align 1, !tbaa !2451
  %43 = add i64 %34, -8
  %44 = add i64 %36, 10
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %43 to i64*
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %23, align 1, !tbaa !2451
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %48 = bitcast i64* %47 to double*
  store double 0.000000e+00, double* %48, align 1, !tbaa !2451
  %49 = add i64 %34, -24
  %50 = add i64 %36, 15
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %49 to i64*
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %31, align 1, !tbaa !2451
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %54 = bitcast i64* %53 to double*
  store double 0.000000e+00, double* %54, align 1, !tbaa !2451
  %55 = add i64 %36, 20
  store i64 %55, i64* %PC, align 8
  %56 = bitcast i64 %52 to double
  %57 = inttoptr i64 %35 to double*
  %58 = load double, double* %57, align 8
  %59 = fsub double %56, %58
  store double %59, double* %30, align 1, !tbaa !2451
  store i64 0, i64* %53, align 1, !tbaa !2451
  %60 = bitcast i64 %46 to double
  %61 = fmul double %60, %59
  store double %61, double* %22, align 1, !tbaa !2451
  store i64 0, i64* %47, align 1, !tbaa !2451
  %62 = bitcast i64 %39 to double
  %63 = fadd double %62, %61
  store double %63, double* %40, align 1, !tbaa !2451
  store i64 0, i64* %41, align 1, !tbaa !2451
  %64 = add i64 %36, 29
  store i64 %64, i64* %PC, align 8
  %65 = load i64, i64* %8, align 8, !tbaa !2428
  %66 = add i64 %65, 8
  %67 = inttoptr i64 %65 to i64*
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %RBP, align 8, !tbaa !2428
  store i64 %66, i64* %8, align 8, !tbaa !2428
  %69 = add i64 %36, 30
  store i64 %69, i64* %PC, align 8
  %70 = inttoptr i64 %66 to i64*
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %PC, align 8, !tbaa !2428
  %72 = add i64 %65, 16
  store i64 %72, i64* %8, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400540___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_400540:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i8, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i64 0, i32 0, i64 0), align 16
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
  br i1 %12, label %block_400549, label %block_400560

block_400560:                                     ; preds = %block_400540
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

block_400549:                                     ; preds = %block_400540
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
  %36 = tail call %struct.Memory* @sub_4004d0_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %32, %struct.Memory* %2)
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

; Function Attrs: noinline
define %struct.Memory* @sub_400d90___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400d90:
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
  store i8 %51, i8* %43, align 1, !tbaa !2454
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #12
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
  %63 = add i64 %38, -2403
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_400448__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
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
  br i1 %76, label %block_400de6, label %block_400dc6

block_400de6.loopexit:                            ; preds = %block_400dd0
  br label %block_400de6

block_400de6:                                     ; preds = %block_400de6.loopexit, %block_400d90
  %81 = phi i64 [ %80, %block_400d90 ], [ %179, %block_400de6.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_400d90 ], [ %149, %block_400de6.loopexit ]
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

block_400dc6:                                     ; preds = %block_400d90
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %48, align 1, !tbaa !2450
  store i8 0, i8* %45, align 1, !tbaa !2447
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_400dd0

block_400dd0:                                     ; preds = %block_400dd0, %block_400dc6
  %134 = phi i64 [ 0, %block_400dc6 ], [ %152, %block_400dd0 ]
  %135 = phi i64 [ %133, %block_400dc6 ], [ %179, %block_400dd0 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_400dc6 ], [ %149, %block_400dd0 ]
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
  br i1 %169, label %block_400de6.loopexit, label %block_400dd0
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400e04__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400e04:
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
define %struct.Memory* @sub_400690_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400690:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !2428
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  store i64 %8, i64* %6, align 8, !tbaa !2428
  %10 = load i64, i64* %PC, align 8
  store i64 %8, i64* %RBP, align 8, !tbaa !2428
  %11 = add i64 %7, -16
  %12 = add i64 %10, 10
  store i64 %12, i64* %PC, align 8
  %13 = inttoptr i64 %11 to i32*
  store i32 0, i32* %13, align 4
  %14 = load i64, i64* %RBP, align 8
  %15 = add i64 %14, -8
  %16 = load i64, i64* %PC, align 8
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC, align 8
  %18 = inttoptr i64 %15 to i32*
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %PC, align 8
  br label %block_4006a2

block_4006af:                                     ; preds = %block_4006a2
  %25 = add i64 %150, 4
  store i64 %25, i64* %PC, align 8
  %26 = load i32, i32* %125, align 4
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %RAX, align 8, !tbaa !2428
  %28 = shl nsw i64 %27, 2
  %29 = add i64 %28, add (i64 ptrtoint (%seg_602030__data_type* @seg_602030__data to i64), i64 16)
  %30 = add i64 %150, 11
  store i64 %30, i64* %PC, align 8
  %31 = inttoptr i64 %29 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = zext i32 %32 to i64
  store i64 %33, i64* %RCX, align 8, !tbaa !2428
  %34 = add i64 %150, 15
  store i64 %34, i64* %PC, align 8
  %35 = load i32, i32* %125, align 4
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %RAX, align 8, !tbaa !2428
  %37 = shl nsw i64 %36, 2
  %38 = add i64 %37, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
  %39 = add i64 %150, 22
  store i64 %39, i64* %PC, align 8
  %40 = inttoptr i64 %38 to i32*
  store i32 %32, i32* %40, align 4
  %41 = load i64, i64* %RBP, align 8
  %42 = add i64 %41, -8
  %43 = load i64, i64* %PC, align 8
  %44 = add i64 %43, 3
  store i64 %44, i64* %PC, align 8
  %45 = inttoptr i64 %42 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %46, 256
  %48 = zext i32 %47 to i64
  store i64 %48, i64* %RDX, align 8, !tbaa !2428
  %49 = icmp ugt i32 %46, -257
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %19, align 1, !tbaa !2432
  %51 = and i32 %47, 255
  %52 = tail call i32 @llvm.ctpop.i32(i32 %51) #12
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  store i8 %55, i8* %20, align 1, !tbaa !2446
  %56 = xor i32 %47, %46
  %57 = lshr i32 %56, 4
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  store i8 %59, i8* %21, align 1, !tbaa !2447
  %60 = icmp eq i32 %47, 0
  %61 = zext i1 %60 to i8
  store i8 %61, i8* %22, align 1, !tbaa !2448
  %62 = lshr i32 %47, 31
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %23, align 1, !tbaa !2449
  %64 = lshr i32 %46, 31
  %65 = xor i32 %62, %64
  %66 = add nuw nsw i32 %65, %62
  %67 = icmp eq i32 %66, 2
  %68 = zext i1 %67 to i8
  store i8 %68, i8* %24, align 1, !tbaa !2450
  %69 = sext i32 %47 to i64
  store i64 %69, i64* %RAX, align 8, !tbaa !2428
  %70 = shl nsw i64 %69, 2
  %71 = add i64 %70, add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 16)
  %72 = load i32, i32* %ECX, align 4
  %73 = add i64 %43, 19
  store i64 %73, i64* %PC, align 8
  %74 = inttoptr i64 %71 to i32*
  store i32 %72, i32* %74, align 4
  %75 = load i64, i64* %RBP, align 8
  %76 = add i64 %75, -8
  %77 = load i64, i64* %PC, align 8
  %78 = add i64 %77, 3
  store i64 %78, i64* %PC, align 8
  %79 = inttoptr i64 %76 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = add i32 %80, 1
  %82 = zext i32 %81 to i64
  store i64 %82, i64* %RAX, align 8, !tbaa !2428
  %83 = icmp eq i32 %80, -1
  %84 = icmp eq i32 %81, 0
  %85 = or i1 %83, %84
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %19, align 1, !tbaa !2432
  %87 = and i32 %81, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #12
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %20, align 1, !tbaa !2446
  %92 = xor i32 %81, %80
  %93 = lshr i32 %92, 4
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  store i8 %95, i8* %21, align 1, !tbaa !2447
  %96 = zext i1 %84 to i8
  store i8 %96, i8* %22, align 1, !tbaa !2448
  %97 = lshr i32 %81, 31
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %23, align 1, !tbaa !2449
  %99 = lshr i32 %80, 31
  %100 = xor i32 %97, %99
  %101 = add nuw nsw i32 %100, %97
  %102 = icmp eq i32 %101, 2
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %24, align 1, !tbaa !2450
  %104 = add i64 %77, 9
  store i64 %104, i64* %PC, align 8
  store i32 %81, i32* %79, align 4
  %105 = load i64, i64* %PC, align 8
  %106 = add i64 %105, -63
  store i64 %106, i64* %PC, align 8, !tbaa !2428
  br label %block_4006a2

block_4006e6:                                     ; preds = %block_4006a2
  %107 = add i64 %122, -4
  %108 = add i64 %150, 3
  store i64 %108, i64* %PC, align 8
  %109 = inttoptr i64 %107 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %RAX, align 8, !tbaa !2428
  %112 = add i64 %150, 4
  store i64 %112, i64* %PC, align 8
  %113 = load i64, i64* %6, align 8, !tbaa !2428
  %114 = add i64 %113, 8
  %115 = inttoptr i64 %113 to i64*
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %RBP, align 8, !tbaa !2428
  store i64 %114, i64* %6, align 8, !tbaa !2428
  %117 = add i64 %150, 5
  store i64 %117, i64* %PC, align 8
  %118 = inttoptr i64 %114 to i64*
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %PC, align 8, !tbaa !2428
  %120 = add i64 %113, 16
  store i64 %120, i64* %6, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4006a2:                                     ; preds = %block_4006af, %block_400690
  %121 = phi i64 [ %106, %block_4006af ], [ %.pre, %block_400690 ]
  %122 = load i64, i64* %RBP, align 8
  %123 = add i64 %122, -8
  %124 = add i64 %121, 7
  store i64 %124, i64* %PC, align 8
  %125 = inttoptr i64 %123 to i32*
  %126 = load i32, i32* %125, align 4
  %127 = add i32 %126, -256
  %128 = icmp ult i32 %126, 256
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %19, align 1, !tbaa !2432
  %130 = and i32 %127, 255
  %131 = tail call i32 @llvm.ctpop.i32(i32 %130) #12
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  store i8 %134, i8* %20, align 1, !tbaa !2446
  %135 = xor i32 %127, %126
  %136 = lshr i32 %135, 4
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  store i8 %138, i8* %21, align 1, !tbaa !2447
  %139 = icmp eq i32 %127, 0
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %22, align 1, !tbaa !2448
  %141 = lshr i32 %127, 31
  %142 = trunc i32 %141 to i8
  store i8 %142, i8* %23, align 1, !tbaa !2449
  %143 = lshr i32 %126, 31
  %144 = xor i32 %141, %143
  %145 = add nuw nsw i32 %144, %143
  %146 = icmp eq i32 %145, 2
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %24, align 1, !tbaa !2450
  %148 = icmp ne i8 %142, 0
  %149 = xor i1 %148, %146
  %.v = select i1 %149, i64 13, i64 68
  %150 = add i64 %121, %.v
  store i64 %150, i64* %PC, align 8, !tbaa !2428
  br i1 %149, label %block_4006af, label %block_4006e6
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4004c0__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_4004c0:
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
define %struct.Memory* @sub_400c00_grad(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400c00:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %13 = add i64 %9, -12
  %14 = load i32, i32* %EDI, align 4
  %15 = add i64 %12, 6
  store i64 %15, i64* %PC, align 8
  %16 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %16, align 4
  %17 = load i64, i64* %RBP, align 8
  %18 = add i64 %17, -16
  %19 = load i64, i64* %PC, align 8
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC, align 8
  %21 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %22 = load i64, i64* %21, align 1
  %23 = inttoptr i64 %18 to i64*
  store i64 %22, i64* %23, align 8
  %24 = load i64, i64* %RBP, align 8
  %25 = add i64 %24, -24
  %26 = load i64, i64* %PC, align 8
  %27 = add i64 %26, 5
  store i64 %27, i64* %PC, align 8
  %28 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %5, i64 0, i32 0, i32 0, i32 0, i64 0
  %29 = load i64, i64* %28, align 1
  %30 = inttoptr i64 %25 to i64*
  store i64 %29, i64* %30, align 8
  %31 = load i64, i64* %RBP, align 8
  %32 = add i64 %31, -32
  %33 = load i64, i64* %PC, align 8
  %34 = add i64 %33, 5
  store i64 %34, i64* %PC, align 8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %36 = load i64, i64* %35, align 1
  %37 = inttoptr i64 %32 to i64*
  store i64 %36, i64* %37, align 8
  %38 = load i64, i64* %RBP, align 8
  %39 = add i64 %38, -4
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 3
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %39 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 15
  %45 = zext i32 %44 to i64
  store i64 %45, i64* %RDI, align 8, !tbaa !2428
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %46, align 1, !tbaa !2432
  %47 = tail call i32 @llvm.ctpop.i32(i32 %44) #12
  %48 = trunc i32 %47 to i8
  %49 = and i8 %48, 1
  %50 = xor i8 %49, 1
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %50, i8* %51, align 1, !tbaa !2446
  %52 = icmp eq i32 %44, 0
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %53, i8* %54, align 1, !tbaa !2448
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %55, align 1, !tbaa !2449
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %56, align 1, !tbaa !2450
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %57, align 1, !tbaa !2447
  %58 = add i64 %38, -36
  %59 = add i64 %40, 9
  store i64 %59, i64* %PC, align 8
  %60 = inttoptr i64 %58 to i32*
  store i32 %44, i32* %60, align 4
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -36
  %63 = load i64, i64* %PC, align 8
  %64 = add i64 %63, 4
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %62 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = add i32 %66, -8
  %68 = icmp ult i32 %66, 8
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %46, align 1, !tbaa !2432
  %70 = and i32 %67, 255
  %71 = tail call i32 @llvm.ctpop.i32(i32 %70) #12
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  store i8 %74, i8* %51, align 1, !tbaa !2446
  %75 = xor i32 %67, %66
  %76 = lshr i32 %75, 4
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  store i8 %78, i8* %57, align 1, !tbaa !2447
  %79 = icmp eq i32 %67, 0
  %80 = zext i1 %79 to i8
  store i8 %80, i8* %54, align 1, !tbaa !2448
  %81 = lshr i32 %67, 31
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %55, align 1, !tbaa !2449
  %83 = lshr i32 %66, 31
  %84 = xor i32 %81, %83
  %85 = add nuw nsw i32 %84, %83
  %86 = icmp eq i32 %85, 2
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %56, align 1, !tbaa !2450
  %88 = icmp ne i8 %82, 0
  %89 = xor i1 %88, %86
  %.v = select i1 %89, i64 10, i64 25
  %90 = add i64 %63, %.v
  store i64 %90, i64* %PC, align 8, !tbaa !2428
  %91 = bitcast [32 x %union.VectorReg]* %4 to i8*
  br i1 %89, label %block_400c29, label %block_400c38

block_400ce5:                                     ; preds = %block_400cc4, %block_400cb5
  %92 = phi i64 [ %.pre8, %block_400cc4 ], [ %186, %block_400cb5 ]
  %93 = load i64, i64* %RBP, align 8
  %94 = add i64 %93, -88
  %95 = add i64 %92, 5
  store i64 %95, i64* %PC, align 8
  %96 = inttoptr i64 %94 to i64*
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %21, align 1, !tbaa !2451
  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !2451
  %98 = add i64 %93, -36
  %99 = add i64 %92, 8
  store i64 %99, i64* %PC, align 8
  %100 = inttoptr i64 %98 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 2
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %46, align 1, !tbaa !2432
  %104 = tail call i32 @llvm.ctpop.i32(i32 %102) #12
  %105 = trunc i32 %104 to i8
  %106 = xor i8 %105, 1
  store i8 %106, i8* %51, align 1, !tbaa !2446
  store i8 0, i8* %57, align 1, !tbaa !2447
  %.lobit11 = lshr exact i32 %102, 1
  %107 = trunc i32 %.lobit11 to i8
  %108 = xor i8 %107, 1
  store i8 %108, i8* %54, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  %109 = add i64 %93, -96
  %110 = add i64 %92, 19
  store i64 %110, i64* %PC, align 8
  %111 = inttoptr i64 %109 to i64*
  store i64 %97, i64* %111, align 8
  %112 = load i64, i64* %PC, align 8
  %113 = load i8, i8* %54, align 1, !tbaa !2448
  %114 = icmp eq i8 %113, 0
  %.v16 = select i1 %114, i64 21, i64 6
  %115 = add i64 %112, %.v16
  store i64 %115, i64* %PC, align 8, !tbaa !2428
  br i1 %114, label %block_400d0d, label %block_400cfe

block_400c9c:                                     ; preds = %block_400c92, %block_400c56
  %116 = phi i64 [ %.pre7, %block_400c92 ], [ %177, %block_400c56 ]
  %117 = load i64, i64* %RBP, align 8
  %118 = add i64 %117, -72
  %119 = add i64 %116, 5
  store i64 %119, i64* %PC, align 8
  %120 = inttoptr i64 %118 to i64*
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %21, align 1, !tbaa !2451
  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !2451
  %122 = add i64 %117, -56
  %123 = add i64 %116, 10
  store i64 %123, i64* %PC, align 8
  %124 = inttoptr i64 %122 to i64*
  store i64 %121, i64* %124, align 8
  %125 = load i64, i64* %RBP, align 8
  %126 = add i64 %125, -36
  %127 = load i64, i64* %PC, align 8
  %128 = add i64 %127, 3
  store i64 %128, i64* %PC, align 8
  %129 = inttoptr i64 %126 to i32*
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 1
  %132 = zext i32 %131 to i64
  store i64 %132, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %46, align 1, !tbaa !2432
  %133 = tail call i32 @llvm.ctpop.i32(i32 %131) #12
  %134 = trunc i32 %133 to i8
  %135 = xor i8 %134, 1
  store i8 %135, i8* %51, align 1, !tbaa !2446
  store i8 0, i8* %57, align 1, !tbaa !2447
  %136 = trunc i32 %131 to i8
  %137 = xor i8 %136, 1
  store i8 %137, i8* %54, align 1, !tbaa !2448
  store i8 0, i8* %55, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  %138 = icmp eq i8 %137, 0
  %.v15 = select i1 %138, i64 30, i64 15
  %139 = add i64 %127, %.v15
  store i64 %139, i64* %PC, align 8, !tbaa !2428
  br i1 %138, label %block_400cc4, label %block_400cb5

block_400cfe:                                     ; preds = %block_400ce5
  %140 = load i64, i64* %RBP, align 8
  %141 = add i64 %140, -56
  %142 = add i64 %115, 5
  store i64 %142, i64* %PC, align 8
  %143 = inttoptr i64 %141 to i64*
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %21, align 1, !tbaa !2451
  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !2451
  %145 = add i64 %140, -104
  %146 = add i64 %115, 10
  store i64 %146, i64* %PC, align 8
  %147 = inttoptr i64 %145 to i64*
  store i64 %144, i64* %147, align 8
  %148 = load i64, i64* %PC, align 8
  %149 = add i64 %148, 38
  store i64 %149, i64* %PC, align 8, !tbaa !2428
  br label %block_400d2e

block_400c79:                                     ; preds = %block_400c6f, %block_400c65
  %150 = phi i64 [ %280, %block_400c65 ], [ %219, %block_400c6f ]
  %151 = add i64 %308, -16
  %152 = add i64 %150, 5
  store i64 %152, i64* %PC, align 8
  %153 = inttoptr i64 %151 to i64*
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %21, align 1, !tbaa !2451
  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !2451
  %155 = add i64 %308, -80
  %156 = add i64 %150, 10
  store i64 %156, i64* %PC, align 8
  %157 = inttoptr i64 %155 to i64*
  store i64 %154, i64* %157, align 8
  %158 = load i64, i64* %PC, align 8
  %159 = add i64 %158, 15
  store i64 %159, i64* %PC, align 8, !tbaa !2428
  br label %block_400c92

block_400c38:                                     ; preds = %block_400c00
  %160 = add i64 %61, -24
  %161 = add i64 %90, 5
  store i64 %161, i64* %PC, align 8
  %162 = inttoptr i64 %160 to i64*
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %21, align 1, !tbaa !2451
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %165 = bitcast i64* %164 to double*
  store double 0.000000e+00, double* %165, align 1, !tbaa !2451
  %166 = add i64 %61, -64
  %167 = add i64 %90, 10
  store i64 %167, i64* %PC, align 8
  %168 = inttoptr i64 %166 to i64*
  store i64 %163, i64* %168, align 8
  %.pre = load i64, i64* %PC, align 8
  br label %block_400c42

block_400c56:                                     ; preds = %block_400c42
  %169 = add i64 %308, -24
  %170 = add i64 %337, 5
  store i64 %170, i64* %PC, align 8
  %171 = inttoptr i64 %169 to i64*
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %21, align 1, !tbaa !2451
  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !2451
  %173 = add i64 %308, -72
  %174 = add i64 %337, 10
  store i64 %174, i64* %PC, align 8
  %175 = inttoptr i64 %173 to i64*
  store i64 %172, i64* %175, align 8
  %176 = load i64, i64* %PC, align 8
  %177 = add i64 %176, 60
  store i64 %177, i64* %PC, align 8, !tbaa !2428
  br label %block_400c9c

block_400cb5:                                     ; preds = %block_400c9c
  %178 = add i64 %125, -48
  %179 = add i64 %139, 5
  store i64 %179, i64* %PC, align 8
  %180 = inttoptr i64 %178 to i64*
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %21, align 1, !tbaa !2451
  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !2451
  %182 = add i64 %125, -88
  %183 = add i64 %139, 10
  store i64 %183, i64* %PC, align 8
  %184 = inttoptr i64 %182 to i64*
  store i64 %181, i64* %184, align 8
  %185 = load i64, i64* %PC, align 8
  %186 = add i64 %185, 38
  store i64 %186, i64* %PC, align 8, !tbaa !2428
  br label %block_400ce5

block_400c92:                                     ; preds = %block_400c88, %block_400c79
  %187 = phi i64 [ %.pre6, %block_400c88 ], [ %159, %block_400c79 ]
  %188 = load i64, i64* %RBP, align 8
  %189 = add i64 %188, -80
  %190 = add i64 %187, 5
  store i64 %190, i64* %PC, align 8
  %191 = inttoptr i64 %189 to i64*
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %21, align 1, !tbaa !2451
  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !2451
  %193 = add i64 %188, -72
  %194 = add i64 %187, 10
  store i64 %194, i64* %PC, align 8
  %195 = inttoptr i64 %193 to i64*
  store i64 %192, i64* %195, align 8
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_400c9c

block_400c6f:                                     ; preds = %block_400c65
  %196 = add i64 %280, 4
  store i64 %196, i64* %PC, align 8
  %197 = load i32, i32* %312, align 4
  %198 = add i32 %197, -14
  %199 = icmp ult i32 %197, 14
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %46, align 1, !tbaa !2432
  %201 = and i32 %198, 255
  %202 = tail call i32 @llvm.ctpop.i32(i32 %201) #12
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  store i8 %205, i8* %51, align 1, !tbaa !2446
  %206 = xor i32 %198, %197
  %207 = lshr i32 %206, 4
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  store i8 %209, i8* %57, align 1, !tbaa !2447
  %210 = icmp eq i32 %198, 0
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %54, align 1, !tbaa !2448
  %212 = lshr i32 %198, 31
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %55, align 1, !tbaa !2449
  %214 = lshr i32 %197, 31
  %215 = xor i32 %212, %214
  %216 = add nuw nsw i32 %215, %214
  %217 = icmp eq i32 %216, 2
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %56, align 1, !tbaa !2450
  %.v14 = select i1 %210, i64 10, i64 25
  %219 = add i64 %280, %.v14
  store i64 %219, i64* %PC, align 8, !tbaa !2428
  br i1 %210, label %block_400c79, label %block_400c88

block_400d0d:                                     ; preds = %block_400ce5
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
  %220 = load i64, i64* %RBP, align 8
  %221 = add i64 %220, -56
  %222 = add i64 %115, 15
  store i64 %222, i64* %PC, align 8
  %223 = inttoptr i64 %221 to i64*
  %224 = load i64, i64* %223, align 8
  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !2451
  %225 = xor i64 %224, -9223372036854775808
  store i64 %225, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %46, align 1, !tbaa !2432
  %226 = trunc i64 %224 to i32
  %227 = and i32 %226, 255
  %228 = tail call i32 @llvm.ctpop.i32(i32 %227) #12
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  %231 = xor i8 %230, 1
  store i8 %231, i8* %51, align 1, !tbaa !2446
  %232 = icmp eq i64 %225, 0
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %54, align 1, !tbaa !2448
  %234 = lshr i64 %225, 63
  %235 = trunc i64 %234 to i8
  store i8 %235, i8* %55, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  store i8 0, i8* %57, align 1, !tbaa !2447
  store i64 %225, i64* %21, align 1, !tbaa !2428
  store i64 0, i64* %.pre-phi, align 1, !tbaa !2428
  %236 = add i64 %220, -104
  %237 = add i64 %115, 33
  store i64 %237, i64* %PC, align 8
  %238 = inttoptr i64 %236 to i64*
  store i64 %225, i64* %238, align 8
  %.pre9 = load i64, i64* %PC, align 8
  br label %block_400d2e

block_400c29:                                     ; preds = %block_400c00
  %239 = add i64 %61, -16
  %240 = add i64 %90, 5
  store i64 %240, i64* %PC, align 8
  %241 = inttoptr i64 %239 to i64*
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %21, align 1, !tbaa !2451
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %244 = bitcast i64* %243 to double*
  store double 0.000000e+00, double* %244, align 1, !tbaa !2451
  %245 = add i64 %61, -64
  %246 = add i64 %90, 10
  store i64 %246, i64* %PC, align 8
  %247 = inttoptr i64 %245 to i64*
  store i64 %242, i64* %247, align 8
  %248 = load i64, i64* %PC, align 8
  %249 = add i64 %248, 15
  store i64 %249, i64* %PC, align 8, !tbaa !2428
  br label %block_400c42

block_400c88:                                     ; preds = %block_400c6f
  %250 = add i64 %308, -32
  %251 = add i64 %219, 5
  store i64 %251, i64* %PC, align 8
  %252 = inttoptr i64 %250 to i64*
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %21, align 1, !tbaa !2451
  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !2451
  %254 = add i64 %308, -80
  %255 = add i64 %219, 10
  store i64 %255, i64* %PC, align 8
  %256 = inttoptr i64 %254 to i64*
  store i64 %253, i64* %256, align 8
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_400c92

block_400c65:                                     ; preds = %block_400c42
  %257 = add i64 %337, 4
  store i64 %257, i64* %PC, align 8
  %258 = load i32, i32* %312, align 4
  %259 = add i32 %258, -12
  %260 = icmp ult i32 %258, 12
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %46, align 1, !tbaa !2432
  %262 = and i32 %259, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262) #12
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %51, align 1, !tbaa !2446
  %267 = xor i32 %259, %258
  %268 = lshr i32 %267, 4
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  store i8 %270, i8* %57, align 1, !tbaa !2447
  %271 = icmp eq i32 %259, 0
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %54, align 1, !tbaa !2448
  %273 = lshr i32 %259, 31
  %274 = trunc i32 %273 to i8
  store i8 %274, i8* %55, align 1, !tbaa !2449
  %275 = lshr i32 %258, 31
  %276 = xor i32 %273, %275
  %277 = add nuw nsw i32 %276, %275
  %278 = icmp eq i32 %277, 2
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %56, align 1, !tbaa !2450
  %.v13 = select i1 %271, i64 20, i64 10
  %280 = add i64 %337, %.v13
  store i64 %280, i64* %PC, align 8, !tbaa !2428
  br i1 %271, label %block_400c79, label %block_400c6f

block_400cc4:                                     ; preds = %block_400c9c
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
  %281 = add i64 %125, -48
  %282 = add i64 %139, 15
  store i64 %282, i64* %PC, align 8
  %283 = inttoptr i64 %281 to i64*
  %284 = load i64, i64* %283, align 8
  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !2451
  %285 = xor i64 %284, -9223372036854775808
  store i64 %285, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %46, align 1, !tbaa !2432
  %286 = trunc i64 %284 to i32
  %287 = and i32 %286, 255
  %288 = tail call i32 @llvm.ctpop.i32(i32 %287) #12
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 1
  %291 = xor i8 %290, 1
  store i8 %291, i8* %51, align 1, !tbaa !2446
  %292 = icmp eq i64 %285, 0
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %54, align 1, !tbaa !2448
  %294 = lshr i64 %285, 63
  %295 = trunc i64 %294 to i8
  store i8 %295, i8* %55, align 1, !tbaa !2449
  store i8 0, i8* %56, align 1, !tbaa !2450
  store i8 0, i8* %57, align 1, !tbaa !2447
  store i64 %285, i64* %21, align 1, !tbaa !2428
  store i64 0, i64* %.pre-phi, align 1, !tbaa !2428
  %296 = add i64 %125, -88
  %297 = add i64 %139, 33
  store i64 %297, i64* %PC, align 8
  %298 = inttoptr i64 %296 to i64*
  store i64 %285, i64* %298, align 8
  %.pre8 = load i64, i64* %PC, align 8
  br label %block_400ce5

block_400c42:                                     ; preds = %block_400c29, %block_400c38
  %.pre-phi10 = phi double* [ %244, %block_400c29 ], [ %165, %block_400c38 ]
  %.pre-phi = phi i64* [ %243, %block_400c29 ], [ %164, %block_400c38 ]
  %299 = phi i64 [ %249, %block_400c29 ], [ %.pre, %block_400c38 ]
  %300 = load i64, i64* %RBP, align 8
  %301 = add i64 %300, -64
  %302 = add i64 %299, 5
  store i64 %302, i64* %PC, align 8
  %303 = inttoptr i64 %301 to i64*
  %304 = load i64, i64* %303, align 8
  store i64 %304, i64* %21, align 1, !tbaa !2451
  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !2451
  %305 = add i64 %300, -48
  %306 = add i64 %299, 10
  store i64 %306, i64* %PC, align 8
  %307 = inttoptr i64 %305 to i64*
  store i64 %304, i64* %307, align 8
  %308 = load i64, i64* %RBP, align 8
  %309 = add i64 %308, -36
  %310 = load i64, i64* %PC, align 8
  %311 = add i64 %310, 4
  store i64 %311, i64* %PC, align 8
  %312 = inttoptr i64 %309 to i32*
  %313 = load i32, i32* %312, align 4
  %314 = add i32 %313, -4
  %315 = icmp ult i32 %313, 4
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %46, align 1, !tbaa !2432
  %317 = and i32 %314, 255
  %318 = tail call i32 @llvm.ctpop.i32(i32 %317) #12
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  %321 = xor i8 %320, 1
  store i8 %321, i8* %51, align 1, !tbaa !2446
  %322 = xor i32 %314, %313
  %323 = lshr i32 %322, 4
  %324 = trunc i32 %323 to i8
  %325 = and i8 %324, 1
  store i8 %325, i8* %57, align 1, !tbaa !2447
  %326 = icmp eq i32 %314, 0
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %54, align 1, !tbaa !2448
  %328 = lshr i32 %314, 31
  %329 = trunc i32 %328 to i8
  store i8 %329, i8* %55, align 1, !tbaa !2449
  %330 = lshr i32 %313, 31
  %331 = xor i32 %328, %330
  %332 = add nuw nsw i32 %331, %330
  %333 = icmp eq i32 %332, 2
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %56, align 1, !tbaa !2450
  %335 = icmp ne i8 %329, 0
  %336 = xor i1 %335, %333
  %.v12 = select i1 %336, i64 10, i64 25
  %337 = add i64 %310, %.v12
  store i64 %337, i64* %PC, align 8, !tbaa !2428
  br i1 %336, label %block_400c56, label %block_400c65

block_400d2e:                                     ; preds = %block_400d0d, %block_400cfe
  %338 = phi i64 [ %.pre9, %block_400d0d ], [ %149, %block_400cfe ]
  %339 = load i64, i64* %RBP, align 8
  %340 = add i64 %339, -104
  %341 = add i64 %338, 5
  store i64 %341, i64* %PC, align 8
  %342 = inttoptr i64 %340 to i64*
  %343 = load i64, i64* %342, align 8
  store i64 %343, i64* %21, align 1, !tbaa !2451
  store double 0.000000e+00, double* %.pre-phi10, align 1, !tbaa !2451
  %344 = add i64 %339, -96
  %345 = add i64 %338, 10
  store i64 %345, i64* %PC, align 8
  %346 = inttoptr i64 %344 to double*
  %347 = load double, double* %346, align 8
  %348 = bitcast %union.VectorReg* %5 to double*
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %350 = bitcast i64 %343 to double
  %351 = fadd double %347, %350
  store double %351, double* %348, align 1, !tbaa !2451
  store i64 0, i64* %349, align 1, !tbaa !2451
  %.cast = bitcast double %351 to <2 x i32>
  %352 = extractelement <2 x i32> %.cast, i32 0
  %353 = bitcast [32 x %union.VectorReg]* %4 to i32*
  store i32 %352, i32* %353, align 1, !tbaa !2455
  %354 = extractelement <2 x i32> %.cast, i32 1
  %355 = getelementptr inbounds i8, i8* %91, i64 4
  %356 = bitcast i8* %355 to i32*
  store i32 %354, i32* %356, align 1, !tbaa !2455
  %357 = bitcast i64* %.pre-phi to i32*
  store i32 0, i32* %357, align 1, !tbaa !2455
  %358 = getelementptr inbounds i8, i8* %91, i64 12
  %359 = bitcast i8* %358 to i32*
  store i32 0, i32* %359, align 1, !tbaa !2455
  %360 = add i64 %338, 18
  store i64 %360, i64* %PC, align 8
  %361 = load i64, i64* %8, align 8, !tbaa !2428
  %362 = add i64 %361, 8
  %363 = inttoptr i64 %361 to i64*
  %364 = load i64, i64* %363, align 8
  store i64 %364, i64* %RBP, align 8, !tbaa !2428
  store i64 %362, i64* %8, align 8, !tbaa !2428
  %365 = add i64 %338, 19
  store i64 %365, i64* %PC, align 8
  %366 = inttoptr i64 %362 to i64*
  %367 = load i64, i64* %366, align 8
  store i64 %367, i64* %PC, align 8, !tbaa !2428
  %368 = add i64 %361, 16
  store i64 %368, i64* %8, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400e00___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_400e00:
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
define %struct.Memory* @sub_400490__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400490:
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
  store i64 ptrtoint (void ()* @callback_sub_400e00___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_400d90___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %35 = add i64 %34, 27
  %36 = add i64 %15, -24
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37, align 8
  store i64 %36, i64* %RSP, align 8, !tbaa !2428
  %38 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i64 0, i32 0), align 8
  store i64 %38, i64* %PC, align 8, !tbaa !2428
  %39 = tail call fastcc %struct.Memory* @ext_602c70___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC, align 8
  %42 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %41, %struct.Memory* %39)
  ret %struct.Memory* %42
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400bb0_fade(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_400bb0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %8 = load i64, i64* %RBP, align 8
  %9 = add i64 %1, 1
  store i64 %9, i64* %PC, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !2428
  %12 = add i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64 %8, i64* %13, align 8
  store i64 %12, i64* %10, align 8, !tbaa !2428
  %14 = load i64, i64* %PC, align 8
  store i64 %12, i64* %RBP, align 8, !tbaa !2428
  %15 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_400e10__rodata_type* @seg_400e10__rodata to i64), i64 88) to i64*), align 8
  %16 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %4, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %15, i64* %16, align 1, !tbaa !2451
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to double*
  store double 0.000000e+00, double* %18, align 1, !tbaa !2451
  %19 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_400e10__rodata_type* @seg_400e10__rodata to i64), i64 96) to i64*), align 16
  %20 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %5, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %19, i64* %20, align 1, !tbaa !2451
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %22 = bitcast i64* %21 to double*
  store double 0.000000e+00, double* %22, align 1, !tbaa !2451
  %23 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_400e10__rodata_type* @seg_400e10__rodata to i64), i64 104) to i64*), align 8
  %24 = bitcast %union.VectorReg* %6 to double*
  %25 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %23, i64* %25, align 1, !tbaa !2451
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %27 = bitcast i64* %26 to double*
  store double 0.000000e+00, double* %27, align 1, !tbaa !2451
  %28 = add i64 %11, -16
  %29 = add i64 %14, 32
  store i64 %29, i64* %PC, align 8
  %30 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %31 = load i64, i64* %30, align 1
  %32 = inttoptr i64 %28 to i64*
  store i64 %31, i64* %32, align 8
  %33 = load i64, i64* %RBP, align 8
  %34 = add i64 %33, -8
  %35 = load i64, i64* %PC, align 8
  %36 = add i64 %35, 5
  store i64 %36, i64* %PC, align 8
  %37 = inttoptr i64 %34 to i64*
  %38 = load i64, i64* %37, align 8
  %39 = bitcast [32 x %union.VectorReg]* %3 to double*
  store i64 %38, i64* %30, align 1, !tbaa !2451
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %41 = bitcast i64* %40 to double*
  store double 0.000000e+00, double* %41, align 1, !tbaa !2451
  %42 = add i64 %35, 10
  store i64 %42, i64* %PC, align 8
  %43 = bitcast i64 %38 to double
  %44 = inttoptr i64 %34 to double*
  %45 = load double, double* %44, align 8
  %46 = fmul double %43, %45
  store double %46, double* %39, align 1, !tbaa !2451
  store i64 0, i64* %40, align 1, !tbaa !2451
  %47 = add i64 %35, 15
  store i64 %47, i64* %PC, align 8
  %48 = load double, double* %44, align 8
  %49 = fmul double %46, %48
  store double %49, double* %39, align 1, !tbaa !2451
  store i64 0, i64* %40, align 1, !tbaa !2451
  %50 = add i64 %35, 20
  store i64 %50, i64* %PC, align 8
  %51 = load i64, i64* %37, align 8
  %52 = bitcast %union.VectorReg* %7 to double*
  %53 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %51, i64* %53, align 1, !tbaa !2451
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %55 = bitcast i64* %54 to double*
  store double 0.000000e+00, double* %55, align 1, !tbaa !2451
  %56 = add i64 %35, 25
  store i64 %56, i64* %PC, align 8
  %57 = load double, double* %24, align 1
  %58 = load double, double* %44, align 8
  %59 = fmul double %57, %58
  %60 = bitcast %union.VectorReg* %5 to double*
  %61 = load double, double* %60, align 1
  %62 = fsub double %59, %61
  store double %62, double* %24, align 1, !tbaa !2451
  %63 = bitcast i64 %51 to double
  %64 = fmul double %62, %63
  %65 = bitcast %union.VectorReg* %4 to double*
  %66 = load double, double* %65, align 1
  %67 = fadd double %64, %66
  store double %67, double* %52, align 1, !tbaa !2451
  store i64 0, i64* %54, align 1, !tbaa !2451
  %68 = fmul double %67, %49
  store double %68, double* %39, align 1, !tbaa !2451
  store i64 0, i64* %40, align 1, !tbaa !2451
  %69 = add i64 %35, 42
  store i64 %69, i64* %PC, align 8
  %70 = load i64, i64* %10, align 8, !tbaa !2428
  %71 = add i64 %70, 8
  %72 = inttoptr i64 %70 to i64*
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %RBP, align 8, !tbaa !2428
  store i64 %71, i64* %10, align 8, !tbaa !2428
  %74 = add i64 %35, 43
  store i64 %74, i64* %PC, align 8
  %75 = inttoptr i64 %71 to i64*
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %PC, align 8, !tbaa !2428
  %77 = add i64 %70, 16
  store i64 %77, i64* %10, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400500_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400500:
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
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #12
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
  br i1 %29, label %block_400538, label %block_400523

block_400538:                                     ; preds = %block_400523, %block_400500
  %34 = phi i64 [ %44, %block_400523 ], [ %33, %block_400500 ]
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

block_400523:                                     ; preds = %block_400500
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2432
  store i8 1, i8* %12, align 1, !tbaa !2446
  store i8 1, i8* %14, align 1, !tbaa !2448
  store i8 0, i8* %15, align 1, !tbaa !2449
  store i8 0, i8* %16, align 1, !tbaa !2450
  store i8 0, i8* %13, align 1, !tbaa !2447
  %44 = add i64 %33, 21
  store i64 %44, i64* %PC, align 8, !tbaa !2428
  br label %block_400538
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400570_frame_dummy() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400570;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_400570_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400570_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400540___do_global_dtors_aux() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400540;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_400540___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400540___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400470_printf(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602c78_floor(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400e00___libc_csu_fini() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400e00;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_400e00___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #11 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400e00___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400d90___libc_csu_init() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400d90;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_400d90___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400d90___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400580;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400580_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602c70___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #10 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400e04;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #12
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
  %6 = tail call %struct.Memory* @sub_400e04__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400448;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #12
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
  %6 = tail call %struct.Memory* @sub_400448__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
  tail call void @callback_sub_400d90___libc_csu_init()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #12 {
  tail call void @callback_sub_400e00___libc_csu_fini()
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline }
attributes #6 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { naked nobuiltin noinline nounwind }
attributes #10 = { noinline nounwind }
attributes #11 = { norecurse nounwind }
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
!2451 = !{!2452, !2452, i64 0}
!2452 = !{!"double", !2430, i64 0}
!2453 = !{!2445, !2445, i64 0}
!2454 = !{!2430, !2430, i64 0}
!2455 = !{!2456, !2456, i64 0}
!2456 = !{!"float", !2430, i64 0}
