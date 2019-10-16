; ModuleID = 'mcsema/test.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4026e0__rodata_type = type <{ [248 x i8], [58 x i8], [48 x i8], [36 x i8], [36 x i8], [36 x i8], [36 x i8], [36 x i8], [36 x i8], [36 x i8], [36 x i8], [36 x i8], [28 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [31 x i8] }>
%seg_602df0__init_array_type = type <{ i64, i64 }>
%seg_602ff0__got_type = type <{ i64, i64 }>
%A0_type = type <{ [8 x i8] }>
%A1_0_type = type <{ [8 x i8] }>
%A2_0_type = type <{ [8 x i8] }>
%A3_type = type <{ [8 x i8] }>
%A4_type = type <{ [8 x i8] }>
%A5_type = type <{ [8 x i8] }>
%A6_type = type <{ [8 x i8] }>
%B0_type = type <{ [8 x i8] }>
%B1_0_type = type <{ [8 x i8] }>
%B2_type = type <{ [8 x i8] }>
%B3_type = type <{ [8 x i8] }>
%B4_type = type <{ [8 x i8] }>
%B5_type = type <{ [8 x i8] }>
%B6_type = type <{ [8 x i8] }>
%C0_type = type <{ [8 x i8] }>
%C1_0_type = type <{ [8 x i8] }>
%C2_type = type <{ [8 x i8] }>
%C3_type = type <{ [8 x i8] }>
%C4_type = type <{ [8 x i8] }>
%C5_type = type <{ [8 x i8] }>
%C6_type = type <{ [8 x i8] }>
%C7_type = type <{ [8 x i8] }>
%C8_type = type <{ [8 x i8] }>
%D1_0_type = type <{ [8 x i8] }>
%D2_0_type = type <{ [8 x i8] }>
%D3_type = type <{ [8 x i8] }>
%E2_0_type = type <{ [8 x i8] }>
%E3_type = type <{ [8 x i8] }>
%two_type = type <{ [8 x i8] }>
%five_type = type <{ [8 x i8] }>
%T_type = type <{ [288 x i8] }>
%sd_type = type <{ [8 x i8] }>
%sb_type = type <{ [8 x i8] }>
%piref_type = type <{ [8 x i8] }>
%pierr_type = type <{ [8 x i8] }>
%tnow_type = type <{ [16 x i8] }>
%nulltime_type = type <{ [8 x i8] }>
%four_type = type <{ [8 x i8] }>
%scale_type = type <{ [8 x i8] }>
%one_type = type <{ [8 x i8] }>
%sc_type = type <{ [8 x i8] }>
%sa_type = type <{ [8 x i8] }>
%three_type = type <{ [16 x i8] }>
%TimeArray_type = type <{ [24 x i8] }>
%piprg_type = type <{ [8 x i8] }>
%TLimit_type = type <{ [8 x i8] }>
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
@seg_4026e0__rodata = internal constant %seg_4026e0__rodata_type <{ [248 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\14@\00\00\00\00\00\00\10@\00\00\00\00\00\00\08@\00\00\00\00\00\00\00@\00\00\00\00\00\00\F0?\18-DT\FB!\09@\00\00\00\00\80\84.A\82\FF\ADd\C7F\90?\A0\C2\EB\FEKH\B493333339@\00\00\00\00\00\00,@\00\00\00\00\00@?@\00\00\00\00\00\00\1C@\00\00\00\00\00\00\E0?\00\00\00\00\00\001@\00\00\00\00\00\00.@\EF9\FA\FEB.\E6?\00\00\00\00\00\00=@\A4\92\F1\F7A\95Y@\00\00\00\00\00\00\D0?33333C\7F@\00\00\00\00\00\002@\00\00\00\00\00\00(@\00\00\00\00\00\C0V@\00\00\00\00\00@b@\00\00\00\00\00\00c@\00\00\00\00\00\00J@\AB\AA\AA\AA\AA\AA\D2?\00\00\00\00\00\00>@\8D\ED\B5\A0\F7\C6\B0>", [58 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\0A\00", [48 x i8] c"   Module     Error        RunTime      MFLOPS\0A\00", [36 x i8] c"                            (usec)\0A\00", [36 x i8] c"     1   %13.4lf  %10.4lf  %10.4lf\0A\00", [36 x i8] c"     2   %13.4lf  %10.4lf  %10.4lf\0A\00", [36 x i8] c"     3   %13.4lf  %10.4lf  %10.4lf\0A\00", [36 x i8] c"     4   %13.4lf  %10.4lf  %10.4lf\0A\00", [36 x i8] c"     5   %13.4lf  %10.4lf  %10.4lf\0A\00", [36 x i8] c"     6   %13.4lf  %10.4lf  %10.4lf\0A\00", [36 x i8] c"     7   %13.4lf  %10.4lf  %10.4lf\0A\00", [36 x i8] c"     8   %13.4lf  %10.4lf  %10.4lf\0A\00", [28 x i8] c"   Iterations      = %10ld\0A\00", [30 x i8] c"   NullTime (usec) = %10.4lf\0A\00", [30 x i8] c"   MFLOPS(1)       = %10.4lf\0A\00", [30 x i8] c"   MFLOPS(2)       = %10.4lf\0A\00", [30 x i8] c"   MFLOPS(3)       = %10.4lf\0A\00", [31 x i8] c"   MFLOPS(4)       = %10.4lf\0A\0A\00" }>
@seg_602df0__init_array = internal global %seg_602df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400540_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400510___do_global_dtors_aux to i64) }>
@seg_602ff0__got = internal global %seg_602ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@A0 = local_unnamed_addr global %A0_type <{ [8 x i8] c"\00\00\00\00\00\00\F0?" }>
@A1_0 = local_unnamed_addr global %A1_0_type <{ [8 x i8] c"\05\97UUUU\C5\BF" }>
@A2_0 = local_unnamed_addr global %A2_0_type <{ [8 x i8] c"\A3\E9:\11\11\11\81?" }>
@A3 = local_unnamed_addr global %A3_type <{ [8 x i8] c"q\CA\B1?\A0\01*?" }>
@A4 = local_unnamed_addr global %A4_type <{ [8 x i8] c"f5\AA\84\F2\1D\C7>" }>
@A5 = local_unnamed_addr global %A5_type <{ [8 x i8] c"&\A4\F8\8CZ\EBZ>" }>
@A6 = local_unnamed_addr global %A6_type <{ [8 x i8] c"\A6\C1)R\F7\8D\E6=" }>
@B0 = local_unnamed_addr global %B0_type <{ [8 x i8] c"\00\00\00\00\00\00\F0?" }>
@B1_0 = local_unnamed_addr global %B1_0_type <{ [8 x i8] c"V\81\FF\FF\FF\FF\DF\BF" }>
@B2 = local_unnamed_addr global %B2_type <{ [8 x i8] c"$\02)UUU\A5?" }>
@B3 = local_unnamed_addr global %B3_type <{ [8 x i8] c"\16e\E7\FFk\C1V\BF" }>
@B4 = local_unnamed_addr global %B4_type <{ [8 x i8] c"\B7-$(\95\01\FA>" }>
@B5 = local_unnamed_addr global %B5_type <{ [8 x i8] c"\8E\DB}\D4\B3{\92\BE" }>
@B6 = local_unnamed_addr global %B6_type <{ [8 x i8] c"*\18\DFu\B2W!>" }>
@C0 = local_unnamed_addr global %C0_type <{ [8 x i8] c"\00\00\00\00\00\00\F0?" }>
@C1_0 = local_unnamed_addr global %C1_0_type <{ [8 x i8] c"\E2\B37\FE\FF\FF\EF?" }>
@C2 = local_unnamed_addr global %C2_type <{ [8 x i8] c"\B8\A4+\CC\FF\FF\DF?" }>
@C3 = local_unnamed_addr global %C3_type <{ [8 x i8] c"\15iG|XU\C5?" }>
@C4 = local_unnamed_addr global %C4_type <{ [8 x i8] c"HUy~[U\A5?" }>
@C5 = local_unnamed_addr global %C5_type <{ [8 x i8] c"\0C\12\D9J\9A\0D\81?" }>
@C6 = local_unnamed_addr global %C6_type <{ [8 x i8] c"\05\8C\DB~\18\13W?" }>
@C7 = local_unnamed_addr global %C7_type <{ [8 x i8] c":?\17\C8w\C0&?" }>
@C8 = local_unnamed_addr global %C8_type <{ [8 x i8] c"\CF\B1\04\FE\03\9D\04?" }>
@D1_0 = local_unnamed_addr global %D1_0_type <{ [8 x i8] c"t\83\13C\E1z\A4?" }>
@D2_0 = local_unnamed_addr global %D2_0_type <{ [8 x i8] c"i\1DUM\10uO?" }>
@D3 = local_unnamed_addr global %D3_type <{ [8 x i8] c"(\A7\F4\0FZ\B0\B4>" }>
@E2_0 = local_unnamed_addr global %E2_0_type <{ [8 x i8] c"i\1DUM\10u??" }>
@E3 = local_unnamed_addr global %E3_type <{ [8 x i8] c"\8A\89\9Bj\CD\95\9B>" }>
@two = local_unnamed_addr global %two_type zeroinitializer
@five = local_unnamed_addr global %five_type zeroinitializer
@T = global %T_type zeroinitializer
@sd = local_unnamed_addr global %sd_type zeroinitializer
@sb = local_unnamed_addr global %sb_type zeroinitializer
@piref = local_unnamed_addr global %piref_type zeroinitializer
@pierr = local_unnamed_addr global %pierr_type zeroinitializer
@tnow = global %tnow_type zeroinitializer
@nulltime = local_unnamed_addr global %nulltime_type zeroinitializer
@four = local_unnamed_addr global %four_type zeroinitializer
@scale = local_unnamed_addr global %scale_type zeroinitializer
@one = local_unnamed_addr global %one_type zeroinitializer
@sc = local_unnamed_addr global %sc_type zeroinitializer
@sa = local_unnamed_addr global %sa_type zeroinitializer
@three = local_unnamed_addr global %three_type zeroinitializer
@TimeArray = global %TimeArray_type zeroinitializer
@piprg = local_unnamed_addr global %piprg_type zeroinitializer
@TLimit = local_unnamed_addr global %TLimit_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400540_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400510___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4026d0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_402660___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @dtime_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@seg_603120__bss.0.0 = internal unnamed_addr global i1 false, align 8

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
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @gettimeofday(i64, i64) #5

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400460__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400460:
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
  store i64 ptrtoint (void ()* @callback_sub_4026d0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_402660___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %35 = add i64 %34, 27
  %36 = add i64 %15, -24
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37, align 8
  store i64 %36, i64* %RSP, align 8, !tbaa !2428
  %38 = load i64, i64* getelementptr inbounds (%seg_602ff0__got_type, %seg_602ff0__got_type* @seg_602ff0__got, i64 0, i32 0), align 8
  store i64 %38, i64* %PC, align 8, !tbaa !2428
  %39 = tail call fastcc %struct.Memory* @ext_603320___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %40 = load i64, i64* %PC, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC, align 8
  %42 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %41, %struct.Memory* %39)
  ret %struct.Memory* %42
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
  %13 = tail call %struct.Memory* @sub_4004d0_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400510___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400510:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %.b = load i1, i1* @seg_603120__bss.0.0, align 8
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3, align 1, !tbaa !2432
  %4 = zext i1 %.b to i32
  %5 = tail call i32 @llvm.ctpop.i32(i32 %4) #9
  %6 = trunc i32 %5 to i8
  %7 = xor i8 %6, 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7, i8* %8, align 1, !tbaa !2446
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %9, align 1, !tbaa !2450
  %10 = xor i1 %.b, true
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %11, i8* %12, align 1, !tbaa !2447
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %13, align 1, !tbaa !2448
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %14, align 1, !tbaa !2449
  %.v = select i1 %.b, i64 32, i64 9
  %15 = add i64 %.v, %1
  store i64 %15, i64* %PC, align 8, !tbaa !2428
  br i1 %.b, label %block_400530, label %block_400519

block_400530:                                     ; preds = %block_400510
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC, align 8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %18 = load i64, i64* %17, align 8, !tbaa !2428
  %19 = inttoptr i64 %18 to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %PC, align 8, !tbaa !2428
  %21 = add i64 %18, 8
  store i64 %21, i64* %17, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400519:                                     ; preds = %block_400510
  %22 = load i64, i64* %RBP, align 8
  %23 = add i64 %15, 1
  store i64 %23, i64* %PC, align 8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %25 = load i64, i64* %24, align 8, !tbaa !2428
  %26 = add i64 %25, -8
  %27 = inttoptr i64 %26 to i64*
  store i64 %22, i64* %27, align 8
  %28 = load i64, i64* %PC, align 8
  store i64 %26, i64* %RBP, align 8, !tbaa !2428
  %29 = add i64 %28, -122
  %30 = add i64 %28, 8
  %31 = add i64 %25, -16
  %32 = inttoptr i64 %31 to i64*
  store i64 %30, i64* %32, align 8
  store i64 %31, i64* %24, align 8, !tbaa !2428
  store i64 %29, i64* %PC, align 8, !tbaa !2428
  %33 = tail call %struct.Memory* @sub_4004a0_deregister_tm_clones(%struct.State* nonnull %0, i64 %29, %struct.Memory* %2)
  %34 = load i64, i64* %PC, align 8
  store i1 true, i1* @seg_603120__bss.0.0, align 8
  %35 = add i64 %34, 8
  store i64 %35, i64* %PC, align 8
  %36 = load i64, i64* %24, align 8, !tbaa !2428
  %37 = add i64 %36, 8
  %38 = inttoptr i64 %36 to i64*
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %RBP, align 8, !tbaa !2428
  store i64 %37, i64* %24, align 8, !tbaa !2428
  %40 = add i64 %34, 9
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %37 to i64*
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %PC, align 8, !tbaa !2428
  %43 = add i64 %36, 16
  store i64 %43, i64* %24, align 8, !tbaa !2428
  ret %struct.Memory* %33
}

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_400490__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_400490:
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
define %struct.Memory* @sub_402660___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_402660:
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
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #9
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
  %63 = add i64 %38, -8803
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_400418__init_proc(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
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
  br i1 %76, label %block_4026b6, label %block_402696

block_4026b6.loopexit:                            ; preds = %block_4026a0
  br label %block_4026b6

block_4026b6:                                     ; preds = %block_4026b6.loopexit, %block_402660
  %81 = phi i64 [ %80, %block_402660 ], [ %179, %block_4026b6.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_402660 ], [ %149, %block_4026b6.loopexit ]
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

block_402696:                                     ; preds = %block_402660
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2447
  store i8 0, i8* %47, align 1, !tbaa !2448
  store i8 0, i8* %48, align 1, !tbaa !2449
  store i8 0, i8* %45, align 1, !tbaa !2450
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_4026a0

block_4026a0:                                     ; preds = %block_4026a0, %block_402696
  %134 = phi i64 [ 0, %block_402696 ], [ %152, %block_4026a0 ]
  %135 = phi i64 [ %133, %block_402696 ], [ %179, %block_4026a0 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_402696 ], [ %149, %block_4026a0 ]
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
  br i1 %169, label %block_4026b6.loopexit, label %block_4026a0
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400550_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400550:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8
  %14 = load i64, i64* %RBP, align 8
  %15 = add i64 %1, 1
  store i64 %15, i64* %PC, align 8
  %16 = load i64, i64* %RSP, align 8, !tbaa !2428
  %17 = add i64 %16, -8
  %18 = inttoptr i64 %17 to i64*
  store i64 %14, i64* %18, align 8
  %19 = load i64, i64* %PC, align 8
  store i64 %17, i64* %RBP, align 8, !tbaa !2428
  %20 = add i64 %16, -360
  store i64 %20, i64* %RSP, align 8, !tbaa !2428
  %21 = icmp ult i64 %17, 352
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
  %31 = xor i64 %17, %20
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1, !tbaa !2450
  %36 = icmp eq i64 %20, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1, !tbaa !2447
  %39 = lshr i64 %20, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1, !tbaa !2448
  %42 = lshr i64 %17, 63
  %43 = xor i64 %39, %42
  %44 = add nuw nsw i64 %43, %42
  %45 = icmp eq i64 %44, 2
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %46, i8* %47, align 1, !tbaa !2449
  store i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 304), i64* %RDI, align 8, !tbaa !2428
  %48 = add i64 %16, -12
  %49 = add i64 %19, 27
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %48 to i32*
  store i32 0, i32* %50, align 4
  %51 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %52 = add i64 %51, -300
  %53 = add i64 %51, 7
  %54 = load i64, i64* %RSP, align 8, !tbaa !2428
  %55 = add i64 %54, -8
  %56 = inttoptr i64 %55 to i64*
  store i64 %53, i64* %56, align 8
  store i64 %55, i64* %RSP, align 8, !tbaa !2428
  store i64 %52, i64* %PC, align 8, !tbaa !2428
  %57 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %2)
  %58 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 248), i64* %RDI, align 8, !tbaa !2428
  %59 = load i64, i64* %RBP, align 8
  %60 = add i64 %59, -92
  %61 = load i32, i32* %EAX, align 4
  %62 = add i64 %58, 13
  store i64 %62, i64* %PC, align 8
  %63 = inttoptr i64 %60 to i32*
  store i32 %61, i32* %63, align 4
  %64 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %65 = add i64 %64, -320
  %66 = add i64 %64, 7
  %67 = load i64, i64* %RSP, align 8, !tbaa !2428
  %68 = add i64 %67, -8
  %69 = inttoptr i64 %68 to i64*
  store i64 %66, i64* %69, align 8
  store i64 %68, i64* %RSP, align 8, !tbaa !2428
  store i64 %65, i64* %PC, align 8, !tbaa !2428
  %70 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %57)
  %71 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 306), i64* %RDI, align 8, !tbaa !2428
  %72 = bitcast [32 x %union.VectorReg]* %5 to i8*
  %73 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 8) to i64*), align 8
  %74 = bitcast [32 x %union.VectorReg]* %5 to double*
  %75 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %73, i64* %75, align 1, !tbaa !2452
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %77 = bitcast i64* %76 to double*
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %78 = bitcast %union.VectorReg* %6 to i8*
  %79 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 16) to i64*), align 16
  %80 = bitcast %union.VectorReg* %6 to double*
  %81 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %79, i64* %81, align 1, !tbaa !2452
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %83 = bitcast i64* %82 to double*
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %84 = bitcast %union.VectorReg* %7 to i8*
  %85 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 24) to i64*), align 8
  %86 = bitcast %union.VectorReg* %7 to double*
  %87 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %85, i64* %87, align 1, !tbaa !2452
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %89 = bitcast i64* %88 to double*
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %90 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 32) to i64*), align 16
  %91 = bitcast %union.VectorReg* %8 to double*
  %92 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %90, i64* %92, align 1, !tbaa !2452
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %94 = bitcast i64* %93 to double*
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %95 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 40) to i64*), align 8
  %96 = bitcast %union.VectorReg* %9 to double*
  %97 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %9, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %95, i64* %97, align 1, !tbaa !2452
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %99 = bitcast i64* %98 to double*
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %100 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 48) to i64*), align 16
  %101 = bitcast %union.VectorReg* %10 to double*
  %102 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %10, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %100, i64* %102, align 1, !tbaa !2452
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %104 = bitcast i64* %103 to double*
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %105 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 56) to i64*), align 8
  %106 = bitcast %union.VectorReg* %11 to double*
  %107 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %11, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %105, i64* %107, align 1, !tbaa !2452
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %109 = bitcast i64* %108 to double*
  store double 0.000000e+00, double* %109, align 1, !tbaa !2452
  %110 = load i64, i64* %RBP, align 8
  %111 = add i64 %110, -56
  %112 = add i64 %71, 74
  store i64 %112, i64* %PC, align 8
  %113 = inttoptr i64 %111 to i64*
  store i64 15625, i64* %113, align 8
  %114 = load i64, i64* %RBP, align 8
  %115 = add i64 %114, -56
  %116 = load i64, i64* %PC, align 8
  %117 = add i64 %116, 6
  store i64 %117, i64* %PC, align 8
  %118 = inttoptr i64 %115 to i64*
  %119 = load i64, i64* %118, align 8
  %120 = sitofp i64 %119 to double
  %121 = bitcast %union.VectorReg* %12 to double*
  store double %120, double* %121, align 1, !tbaa !2452
  %122 = load double, double* %106, align 1
  %123 = fdiv double %122, %120
  store double %123, double* %106, align 1, !tbaa !2452
  store double %123, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %124 = load i64, i64* %97, align 1
  store i64 %124, i64* bitcast (%TLimit_type* @TLimit to i64*), align 8
  %125 = add i64 %114, -64
  %126 = add i64 %116, 36
  store i64 %126, i64* %PC, align 8
  %127 = inttoptr i64 %125 to i64*
  store i64 512000000, i64* %127, align 8
  %128 = load i64, i64* %PC, align 8
  %129 = load i64, i64* %102, align 1
  store i64 %129, i64* bitcast (%piref_type* @piref to i64*), align 8
  %130 = load i64, i64* %97, align 1
  store i64 %130, i64* bitcast (%one_type* @one to i64*), align 8
  %131 = load i64, i64* %92, align 1
  store i64 %131, i64* bitcast (%two_type* @two to i64*), align 8
  %132 = load i64, i64* %87, align 1
  store i64 %132, i64* bitcast (%three_type* @three to i64*), align 8
  %133 = load i64, i64* %81, align 1
  store i64 %133, i64* bitcast (%four_type* @four to i64*), align 8
  %134 = load i64, i64* %75, align 1
  store i64 %134, i64* bitcast (%five_type* @five to i64*), align 8
  store i64 %130, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  store i64 %130, i64* bitcast (%scale_type* @scale to i64*), align 8
  %135 = load i64, i64* %RBP, align 8
  %136 = add i64 %135, -96
  %137 = load i32, i32* %EAX, align 4
  %138 = add i64 %128, 75
  store i64 %138, i64* %PC, align 8
  %139 = inttoptr i64 %136 to i32*
  store i32 %137, i32* %139, align 4
  %140 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %141 = add i64 %140, -512
  %142 = add i64 %140, 7
  %143 = load i64, i64* %RSP, align 8, !tbaa !2428
  %144 = add i64 %143, -8
  %145 = inttoptr i64 %144 to i64*
  store i64 %142, i64* %145, align 8
  store i64 %144, i64* %RSP, align 8, !tbaa !2428
  store i64 %141, i64* %PC, align 8, !tbaa !2428
  %146 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %70)
  %147 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 354), i64* %RDI, align 8, !tbaa !2428
  %148 = load i64, i64* %RBP, align 8
  %149 = add i64 %148, -100
  %150 = load i32, i32* %EAX, align 4
  %151 = add i64 %147, 13
  store i64 %151, i64* %PC, align 8
  %152 = inttoptr i64 %149 to i32*
  store i32 %150, i32* %152, align 4
  %153 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %154 = add i64 %153, -532
  %155 = add i64 %153, 7
  %156 = load i64, i64* %RSP, align 8, !tbaa !2428
  %157 = add i64 %156, -8
  %158 = inttoptr i64 %157 to i64*
  store i64 %155, i64* %158, align 8
  store i64 %157, i64* %RSP, align 8, !tbaa !2428
  store i64 %154, i64* %PC, align 8, !tbaa !2428
  %159 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %146)
  %160 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %161 = load i64, i64* %RBP, align 8
  %162 = add i64 %161, -104
  %163 = load i32, i32* %EAX, align 4
  %164 = add i64 %160, 13
  store i64 %164, i64* %PC, align 8
  %165 = inttoptr i64 %162 to i32*
  store i32 %163, i32* %165, align 4
  %166 = load i64, i64* %PC, align 8
  %167 = add i64 %166, 8040
  %168 = add i64 %166, 5
  %169 = load i64, i64* %RSP, align 8, !tbaa !2428
  %170 = add i64 %169, -8
  %171 = inttoptr i64 %170 to i64*
  store i64 %168, i64* %171, align 8
  store i64 %170, i64* %RSP, align 8, !tbaa !2428
  store i64 %167, i64* %PC, align 8, !tbaa !2428
  %172 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* nonnull %0, i64 %167, %struct.Memory* %159)
  %173 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %174 = load i64, i64* %RBP, align 8
  %175 = add i64 %174, -108
  %176 = load i32, i32* %EAX, align 4
  %177 = add i64 %173, 13
  store i64 %177, i64* %PC, align 8
  %178 = inttoptr i64 %175 to i32*
  store i32 %176, i32* %178, align 4
  %179 = load i64, i64* %PC, align 8
  %180 = add i64 %179, 8022
  %181 = add i64 %179, 5
  %182 = load i64, i64* %RSP, align 8, !tbaa !2428
  %183 = add i64 %182, -8
  %184 = inttoptr i64 %183 to i64*
  store i64 %181, i64* %184, align 8
  store i64 %183, i64* %RSP, align 8, !tbaa !2428
  store i64 %180, i64* %PC, align 8, !tbaa !2428
  %185 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* nonnull %0, i64 %180, %struct.Memory* %172)
  %186 = load i64, i64* %PC, align 8
  %187 = bitcast [32 x %union.VectorReg]* %5 to i32*
  %188 = getelementptr inbounds i8, i8* %72, i64 4
  %189 = bitcast i8* %188 to i32*
  %190 = bitcast i64* %76 to i32*
  %191 = getelementptr inbounds i8, i8* %72, i64 12
  %192 = bitcast i8* %191 to i32*
  %193 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %193, align 1, !tbaa !2454
  %194 = load i64, i64* %RBP, align 8
  %195 = add i64 %194, -56
  %196 = add i64 %186, 7
  store i64 %196, i64* %PC, align 8
  %197 = inttoptr i64 %195 to i64*
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* %RDI, align 8, !tbaa !2428
  %199 = add i64 %194, -88
  %200 = add i64 %186, 11
  store i64 %200, i64* %PC, align 8
  %201 = inttoptr i64 %199 to i64*
  store i64 %198, i64* %201, align 8
  %202 = load i64, i64* %PC, align 8
  %203 = load i64, i64* %75, align 1
  store i64 %203, i64* bitcast (%sa_type* @sa to i64*), align 8
  %204 = load i64, i64* %RBP, align 8
  %205 = add i64 %204, -112
  %206 = load i32, i32* %EAX, align 4
  %207 = add i64 %202, 12
  store i64 %207, i64* %PC, align 8
  %208 = inttoptr i64 %205 to i32*
  store i32 %206, i32* %208, align 4
  %209 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %12, i64 0, i32 0, i32 0, i32 0, i64 0
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
  %211 = bitcast i64* %210 to double*
  %.pre = load i64, i64* %PC, align 8
  %212 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  br label %block_400696

block_400b77:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %213 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %213, align 1, !tbaa !2454
  %214 = add i64 %1410, 12
  store i64 %214, i64* %PC, align 8
  %215 = load i64, i64* %75, align 1
  store i64 %215, i64* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to i64*), align 8
  br label %block_400b83

block_401d53:                                     ; preds = %block_401cba
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %216 = add i64 %3100, 2173
  %217 = add i64 %3100, 15
  %218 = load i64, i64* %RSP, align 8, !tbaa !2428
  %219 = add i64 %218, -8
  %220 = inttoptr i64 %219 to i64*
  store i64 %217, i64* %220, align 8
  store i64 %219, i64* %RSP, align 8, !tbaa !2428
  store i64 %216, i64* %PC, align 8, !tbaa !2428
  %221 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* nonnull %0, i64 %216, %struct.Memory* %3532)
  %222 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 606), i64* %RDI, align 8, !tbaa !2428
  %223 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 72) to i64*), align 8
  store i64 %223, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %224 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 168) to i64*), align 8
  store i64 %224, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %225 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 176) to i64*), align 16
  store i64 %225, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  store i64 -9223372036854775808, i64* %RCX, align 8, !tbaa !2428
  %226 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 184) to double*), align 8
  %227 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %228 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %229 = fmul double %227, %228
  %230 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %231 = fsub double %229, %230
  store double %231, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 168) to double*), align 8
  %232 = fdiv double %231, %226
  store double %232, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  store double %232, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 176) to double*), align 16
  %233 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %233, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %234 = load i64, i64* %RBP, align 8
  %235 = add i64 %234, -48
  %236 = add i64 %222, 124
  store i64 %236, i64* %PC, align 8
  %237 = inttoptr i64 %235 to i64*
  store i64 %233, i64* %237, align 8
  %238 = load i64, i64* %RBP, align 8
  %239 = add i64 %238, -48
  %240 = load i64, i64* %PC, align 8
  %241 = add i64 %240, 5
  store i64 %241, i64* %PC, align 8
  %242 = inttoptr i64 %239 to i64*
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %244 = add i64 %240, 10
  store i64 %244, i64* %PC, align 8
  %245 = bitcast i64 %243 to double
  %246 = inttoptr i64 %239 to double*
  %247 = load double, double* %246, align 8
  %248 = fmul double %245, %247
  store double %248, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %249 = add i64 %238, -24
  %250 = add i64 %240, 15
  store i64 %250, i64* %PC, align 8
  %251 = inttoptr i64 %249 to double*
  store double %248, double* %251, align 8
  %252 = load i64, i64* %RBP, align 8
  %253 = add i64 %252, -40
  %254 = load i64, i64* %PC, align 8
  %255 = add i64 %254, 5
  store i64 %255, i64* %PC, align 8
  %256 = inttoptr i64 %253 to i64*
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* %RCX, align 8
  %259 = xor i64 %258, %257
  store i64 %259, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %23, align 1, !tbaa !2432
  %260 = trunc i64 %259 to i32
  %261 = and i32 %260, 255
  %262 = tail call i32 @llvm.ctpop.i32(i32 %261) #9
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  %265 = xor i8 %264, 1
  store i8 %265, i8* %30, align 1, !tbaa !2446
  %266 = icmp eq i64 %259, 0
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %38, align 1, !tbaa !2447
  %268 = lshr i64 %259, 63
  %269 = trunc i64 %268 to i8
  store i8 %269, i8* %41, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %35, align 1, !tbaa !2450
  store i64 %259, i64* %92, align 1, !tbaa !2428
  store i64 0, i64* %93, align 1, !tbaa !2428
  %270 = add i64 %254, 23
  store i64 %270, i64* %PC, align 8
  %271 = load i64, i64* %256, align 8
  store i64 %271, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %272 = add i64 %252, -48
  %273 = add i64 %254, 28
  store i64 %273, i64* %PC, align 8
  %274 = inttoptr i64 %272 to i64*
  %275 = load i64, i64* %274, align 8
  store i64 %275, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %276 = add i64 %254, 33
  store i64 %276, i64* %PC, align 8
  %277 = bitcast i64 %275 to double
  %278 = inttoptr i64 %253 to double*
  %279 = load double, double* %278, align 8
  %280 = fadd double %277, %279
  store double %280, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %281 = bitcast i64 %271 to double
  %282 = fdiv double %281, %280
  store double %282, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %283 = bitcast i64 %259 to double
  %284 = fsub double %283, %282
  store double %284, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %285 = add i64 %254, 46
  store i64 %285, i64* %PC, align 8
  %286 = load i64, i64* %274, align 8
  store i64 %286, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %287 = add i64 %252, -24
  %288 = add i64 %254, 51
  store i64 %288, i64* %PC, align 8
  %289 = inttoptr i64 %287 to i64*
  %290 = load i64, i64* %289, align 8
  store i64 %290, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %291 = add i64 %254, 56
  store i64 %291, i64* %PC, align 8
  %292 = bitcast i64 %290 to double
  %293 = load double, double* %278, align 8
  %294 = fadd double %292, %293
  store double %294, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %295 = bitcast i64 %286 to double
  %296 = fdiv double %295, %294
  store double %296, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %297 = fsub double %284, %296
  store double %297, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %298 = add i64 %254, 69
  store i64 %298, i64* %PC, align 8
  %299 = load i64, i64* %289, align 8
  store i64 %299, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %300 = load i64, i64* %RBP, align 8
  %301 = add i64 %300, -48
  %302 = add i64 %254, 74
  store i64 %302, i64* %PC, align 8
  %303 = inttoptr i64 %301 to i64*
  %304 = load i64, i64* %303, align 8
  store i64 %304, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %305 = add i64 %300, -24
  %306 = add i64 %254, 79
  store i64 %306, i64* %PC, align 8
  %307 = bitcast i64 %304 to double
  %308 = inttoptr i64 %305 to double*
  %309 = load double, double* %308, align 8
  %310 = fmul double %307, %309
  store double %310, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %311 = add i64 %300, -40
  %312 = add i64 %254, 84
  store i64 %312, i64* %PC, align 8
  %313 = inttoptr i64 %311 to double*
  %314 = load double, double* %313, align 8
  %315 = fadd double %310, %314
  store double %315, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %316 = bitcast i64 %299 to double
  %317 = fdiv double %316, %315
  store double %317, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %318 = fsub double %297, %317
  store double %318, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  store double %318, double* bitcast (%sa_type* @sa to double*), align 8
  %319 = add i64 %300, -32
  %320 = add i64 %254, 106
  store i64 %320, i64* %PC, align 8
  %321 = load double, double* %86, align 1
  %322 = inttoptr i64 %319 to double*
  %323 = load double, double* %322, align 8
  %324 = fmul double %321, %323
  store double %324, double* %86, align 1, !tbaa !2452
  %325 = bitcast %union.VectorReg* %8 to double*
  store double %318, double* %325, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %326 = load i64, i64* bitcast (%two_type* @two to i64*), align 8
  store i64 %326, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %327 = add i64 %300, -16
  %328 = add i64 %254, 129
  store i64 %328, i64* %PC, align 8
  %.cast175 = bitcast i64 %326 to double
  %329 = inttoptr i64 %327 to double*
  %330 = load double, double* %329, align 8
  %331 = fmul double %.cast175, %330
  store double %331, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %332 = fadd double %318, %331
  store double %332, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %333 = fmul double %324, %332
  store double %333, double* %86, align 1, !tbaa !2452
  store double %333, double* bitcast (%sa_type* @sa to double*), align 8
  %334 = tail call double @llvm.trunc.f64(double %333) #9
  %335 = tail call double @llvm.fabs.f64(double %334) #9
  %336 = fcmp ogt double %335, 0x43E0000000000000
  %337 = fptosi double %334 to i64
  %338 = select i1 %336, i64 -9223372036854775808, i64 %337
  %339 = sext i64 %338 to i128
  %340 = and i128 %339, -18446744073709551616
  %341 = zext i64 %338 to i128
  %342 = or i128 %340, %341
  %343 = mul nsw i128 %342, -2000
  %344 = trunc i128 %343 to i64
  store i64 %344, i64* %RCX, align 8, !tbaa !2428
  %345 = sext i64 %344 to i128
  %346 = icmp ne i128 %345, %343
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %23, align 1, !tbaa !2432
  %348 = trunc i128 %343 to i32
  %349 = and i32 %348, 240
  %350 = tail call i32 @llvm.ctpop.i32(i32 %349) #9
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = xor i8 %352, 1
  store i8 %353, i8* %30, align 1, !tbaa !2446
  store i8 0, i8* %35, align 1, !tbaa !2450
  store i8 0, i8* %38, align 1, !tbaa !2447
  %354 = lshr i64 %344, 63
  %355 = trunc i64 %354 to i8
  store i8 %355, i8* %41, align 1, !tbaa !2448
  store i8 %347, i8* %47, align 1, !tbaa !2449
  %356 = load i64, i64* %RBP, align 8
  %357 = add i64 %356, -80
  %358 = add i64 %254, 167
  store i64 %358, i64* %PC, align 8
  %359 = inttoptr i64 %357 to i64*
  store i64 %344, i64* %359, align 8
  %360 = load i64, i64* %RBP, align 8
  %361 = add i64 %360, -80
  %362 = load i64, i64* %PC, align 8
  %363 = add i64 %362, 6
  store i64 %363, i64* %PC, align 8
  %364 = inttoptr i64 %361 to i64*
  %365 = load i64, i64* %364, align 8
  %366 = sitofp i64 %365 to double
  %367 = load double, double* bitcast (%scale_type* @scale to double*), align 8
  %368 = fdiv double %366, %367
  %369 = tail call double @llvm.trunc.f64(double %368) #9
  %370 = tail call double @llvm.fabs.f64(double %369) #9
  %371 = fcmp ogt double %370, 0x43E0000000000000
  %372 = fptosi double %369 to i64
  %373 = select i1 %371, i64 -9223372036854775808, i64 %372
  store i64 %373, i64* %RCX, align 8, !tbaa !2428
  %374 = add i64 %362, 24
  store i64 %374, i64* %PC, align 8
  store i64 %373, i64* %364, align 8
  %375 = load i64, i64* %PC, align 8
  %376 = load double, double* %80, align 1
  %377 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %378 = fadd double %376, %377
  store double %378, double* bitcast (%sc_type* @sc to double*), align 8
  %379 = load double, double* bitcast (%one_type* @one to double*), align 8
  %380 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 176) to double*), align 16
  %381 = fdiv double %379, %380
  store double %381, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 184) to double*), align 8
  %382 = load <2 x i32>, <2 x i32>* %1247, align 1
  %383 = load <2 x i32>, <2 x i32>* %1249, align 1
  %384 = extractelement <2 x i32> %382, i32 0
  store i32 %384, i32* %1252, align 1, !tbaa !2455
  %385 = extractelement <2 x i32> %382, i32 1
  store i32 %385, i32* %1255, align 1, !tbaa !2455
  %386 = extractelement <2 x i32> %383, i32 0
  store i32 %386, i32* %1257, align 1, !tbaa !2455
  %387 = extractelement <2 x i32> %383, i32 1
  store i32 %387, i32* %1260, align 1, !tbaa !2455
  %388 = load double, double* %80, align 1
  %389 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %390 = fmul double %388, %389
  store double %390, double* %80, align 1, !tbaa !2452
  store i32 %384, i32* %1264, align 1, !tbaa !2455
  store i32 %385, i32* %1266, align 1, !tbaa !2455
  store i32 %386, i32* %1267, align 1, !tbaa !2455
  store i32 %387, i32* %1269, align 1, !tbaa !2455
  %391 = load double, double* %86, align 1
  %392 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 168) to double*), align 8
  %393 = fmul double %391, %392
  store double %393, double* %86, align 1, !tbaa !2452
  %394 = bitcast <2 x i32> %382 to double
  %395 = fmul double %394, %381
  %396 = load i64, i64* %RBP, align 8
  %397 = add i64 %396, -280
  %398 = add i64 %375, 86
  store i64 %398, i64* %PC, align 8
  %399 = inttoptr i64 %397 to double*
  store double %395, double* %399, align 8
  %400 = load i64, i64* %PC, align 8
  %401 = load <2 x i32>, <2 x i32>* %1280, align 1
  %402 = load <2 x i32>, <2 x i32>* %1282, align 1
  %403 = extractelement <2 x i32> %401, i32 0
  store i32 %403, i32* %187, align 1, !tbaa !2455
  %404 = extractelement <2 x i32> %401, i32 1
  store i32 %404, i32* %189, align 1, !tbaa !2455
  %405 = extractelement <2 x i32> %402, i32 0
  store i32 %405, i32* %190, align 1, !tbaa !2455
  %406 = extractelement <2 x i32> %402, i32 1
  store i32 %406, i32* %192, align 1, !tbaa !2455
  %407 = load <2 x i32>, <2 x i32>* %1288, align 1
  %408 = load <2 x i32>, <2 x i32>* %1290, align 1
  %409 = extractelement <2 x i32> %407, i32 0
  store i32 %409, i32* %1252, align 1, !tbaa !2455
  %410 = extractelement <2 x i32> %407, i32 1
  store i32 %410, i32* %1255, align 1, !tbaa !2455
  %411 = extractelement <2 x i32> %408, i32 0
  store i32 %411, i32* %1257, align 1, !tbaa !2455
  %412 = extractelement <2 x i32> %408, i32 1
  store i32 %412, i32* %1260, align 1, !tbaa !2455
  %413 = load i64, i64* %RBP, align 8
  %414 = add i64 %413, -280
  %415 = add i64 %400, 14
  store i64 %415, i64* %PC, align 8
  %416 = inttoptr i64 %414 to i64*
  %417 = load i64, i64* %416, align 8
  store i64 %417, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %418 = add i64 %413, -284
  %419 = load i32, i32* %EAX, align 4
  %420 = add i64 %400, 20
  store i64 %420, i64* %PC, align 8
  %421 = inttoptr i64 %418 to i32*
  store i32 %419, i32* %421, align 4
  %422 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2451
  %423 = add i64 %422, -6870
  %424 = add i64 %422, 7
  %425 = load i64, i64* %RSP, align 8, !tbaa !2428
  %426 = add i64 %425, -8
  %427 = inttoptr i64 %426 to i64*
  store i64 %424, i64* %427, align 8
  store i64 %426, i64* %RSP, align 8, !tbaa !2428
  store i64 %423, i64* %PC, align 8, !tbaa !2428
  %428 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %221)
  %429 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i32 0, i32* %187, align 1, !tbaa !2454
  store i32 0, i32* %189, align 1, !tbaa !2454
  store i32 0, i32* %190, align 1, !tbaa !2454
  store i32 0, i32* %192, align 1, !tbaa !2454
  %430 = load i64, i64* bitcast (%piref_type* @piref to i64*), align 8
  store i64 %430, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %431 = load i64, i64* bitcast (%three_type* @three to i64*), align 8
  store i64 %431, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %432 = load i64, i64* %RBP, align 8
  %433 = add i64 %432, -80
  %434 = add i64 %429, 37
  store i64 %434, i64* %PC, align 8
  %435 = inttoptr i64 %433 to i64*
  %436 = load i64, i64* %435, align 8
  %437 = sitofp i64 %436 to double
  store double %437, double* %91, align 1, !tbaa !2452
  %438 = bitcast i64 %431 to double
  %439 = fmul double %437, %438
  store double %439, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %440 = bitcast i64 %430 to double
  %441 = fdiv double %440, %439
  store double %441, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %442 = add i64 %432, -48
  %443 = add i64 %429, 50
  store i64 %443, i64* %PC, align 8
  %444 = inttoptr i64 %442 to double*
  store double %441, double* %444, align 8
  %445 = load i64, i64* %RBP, align 8
  %446 = add i64 %445, -16
  %447 = load i64, i64* %PC, align 8
  %448 = add i64 %447, 5
  store i64 %448, i64* %PC, align 8
  %449 = load i64, i64* %75, align 1
  %450 = inttoptr i64 %446 to i64*
  store i64 %449, i64* %450, align 8
  %451 = load i64, i64* %RBP, align 8
  %452 = add i64 %451, -32
  %453 = load i64, i64* %PC, align 8
  %454 = add i64 %453, 5
  store i64 %454, i64* %PC, align 8
  %455 = load i64, i64* %75, align 1
  %456 = inttoptr i64 %452 to i64*
  store i64 %455, i64* %456, align 8
  %457 = load i64, i64* %RBP, align 8
  %458 = add i64 %457, -288
  %459 = load i32, i32* %EAX, align 4
  %460 = load i64, i64* %PC, align 8
  %461 = add i64 %460, 6
  store i64 %461, i64* %PC, align 8
  %462 = inttoptr i64 %458 to i32*
  store i32 %459, i32* %462, align 4
  %463 = load i64, i64* %PC, align 8
  %464 = add i64 %463, 1649
  %465 = add i64 %463, 5
  %466 = load i64, i64* %RSP, align 8, !tbaa !2428
  %467 = add i64 %466, -8
  %468 = inttoptr i64 %467 to i64*
  store i64 %465, i64* %468, align 8
  store i64 %467, i64* %RSP, align 8, !tbaa !2428
  store i64 %464, i64* %PC, align 8, !tbaa !2428
  %469 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* nonnull %0, i64 %464, %struct.Memory* %428)
  %470 = load i64, i64* %RBP, align 8
  %471 = add i64 %470, -72
  %472 = load i64, i64* %PC, align 8
  %473 = add i64 %472, 8
  store i64 %473, i64* %PC, align 8
  %474 = inttoptr i64 %471 to i64*
  store i64 1, i64* %474, align 8
  %475 = load i64, i64* %RBP, align 8
  %476 = add i64 %475, -292
  %477 = load i32, i32* %EAX, align 4
  %478 = load i64, i64* %PC, align 8
  %479 = add i64 %478, 6
  store i64 %479, i64* %PC, align 8
  %480 = inttoptr i64 %476 to i32*
  store i32 %477, i32* %480, align 4
  %.pre217 = load i64, i64* %PC, align 8
  br label %block_401f72

block_4018ce:                                     ; preds = %block_401627, %block_4018e3
  %481 = phi i64 [ %.pre215, %block_401627 ], [ %836, %block_4018e3 ]
  %482 = load i64, i64* %RBP, align 8
  %483 = add i64 %482, -72
  %484 = add i64 %481, 4
  store i64 %484, i64* %PC, align 8
  %485 = inttoptr i64 %483 to i64*
  %486 = load i64, i64* %485, align 8
  store i64 %486, i64* %RAX, align 8, !tbaa !2428
  %487 = add i64 %482, -80
  %488 = add i64 %481, 8
  store i64 %488, i64* %PC, align 8
  %489 = inttoptr i64 %487 to i64*
  %490 = load i64, i64* %489, align 8
  %491 = add i64 %490, -1
  store i64 %491, i64* %RCX, align 8, !tbaa !2428
  %492 = lshr i64 %491, 63
  %493 = sub i64 %486, %491
  %494 = icmp ult i64 %486, %491
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %23, align 1, !tbaa !2432
  %496 = trunc i64 %493 to i32
  %497 = and i32 %496, 255
  %498 = tail call i32 @llvm.ctpop.i32(i32 %497) #9
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  %501 = xor i8 %500, 1
  store i8 %501, i8* %30, align 1, !tbaa !2446
  %502 = xor i64 %491, %486
  %503 = xor i64 %502, %493
  %504 = lshr i64 %503, 4
  %505 = trunc i64 %504 to i8
  %506 = and i8 %505, 1
  store i8 %506, i8* %35, align 1, !tbaa !2450
  %507 = icmp eq i64 %493, 0
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %38, align 1, !tbaa !2447
  %509 = lshr i64 %493, 63
  %510 = trunc i64 %509 to i8
  store i8 %510, i8* %41, align 1, !tbaa !2448
  %511 = lshr i64 %486, 63
  %512 = xor i64 %492, %511
  %513 = xor i64 %509, %511
  %514 = add nuw nsw i64 %513, %512
  %515 = icmp eq i64 %514, 2
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %47, align 1, !tbaa !2449
  %517 = icmp ne i8 %510, 0
  %518 = xor i1 %517, %515
  %.demorgan224 = or i1 %507, %518
  %.v231 = select i1 %.demorgan224, i64 21, i64 312
  %519 = add i64 %481, %.v231
  store i64 %519, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan224, label %block_4018e3, label %block_401a06

block_400e64:                                     ; preds = %block_400c81, %block_400e79
  %520 = phi i64 [ %.pre212, %block_400c81 ], [ %678, %block_400e79 ]
  %521 = load i64, i64* %RBP, align 8
  %522 = add i64 %521, -72
  %523 = add i64 %520, 4
  store i64 %523, i64* %PC, align 8
  %524 = inttoptr i64 %522 to i64*
  %525 = load i64, i64* %524, align 8
  store i64 %525, i64* %RAX, align 8, !tbaa !2428
  %526 = add i64 %521, -80
  %527 = add i64 %520, 8
  store i64 %527, i64* %PC, align 8
  %528 = inttoptr i64 %526 to i64*
  %529 = load i64, i64* %528, align 8
  %530 = add i64 %529, -1
  store i64 %530, i64* %RCX, align 8, !tbaa !2428
  %531 = lshr i64 %530, 63
  %532 = sub i64 %525, %530
  %533 = icmp ult i64 %525, %530
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %23, align 1, !tbaa !2432
  %535 = trunc i64 %532 to i32
  %536 = and i32 %535, 255
  %537 = tail call i32 @llvm.ctpop.i32(i32 %536) #9
  %538 = trunc i32 %537 to i8
  %539 = and i8 %538, 1
  %540 = xor i8 %539, 1
  store i8 %540, i8* %30, align 1, !tbaa !2446
  %541 = xor i64 %530, %525
  %542 = xor i64 %541, %532
  %543 = lshr i64 %542, 4
  %544 = trunc i64 %543 to i8
  %545 = and i8 %544, 1
  store i8 %545, i8* %35, align 1, !tbaa !2450
  %546 = icmp eq i64 %532, 0
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %38, align 1, !tbaa !2447
  %548 = lshr i64 %532, 63
  %549 = trunc i64 %548 to i8
  store i8 %549, i8* %41, align 1, !tbaa !2448
  %550 = lshr i64 %525, 63
  %551 = xor i64 %531, %550
  %552 = xor i64 %548, %550
  %553 = add nuw nsw i64 %552, %551
  %554 = icmp eq i64 %553, 2
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %47, align 1, !tbaa !2449
  %556 = icmp ne i8 %549, 0
  %557 = xor i1 %556, %554
  %.demorgan221 = or i1 %546, %557
  %.v228 = select i1 %.demorgan221, i64 21, i64 203
  %558 = add i64 %520, %.v228
  store i64 %558, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan221, label %block_400e79, label %block_400f2f

block_400e79:                                     ; preds = %block_400e64
  %559 = add i64 %521, -32
  %560 = add i64 %558, 5
  store i64 %560, i64* %PC, align 8
  %561 = inttoptr i64 %559 to double*
  %562 = load double, double* %561, align 8
  %563 = load double, double* bitcast (%one_type* @one to double*), align 8
  %564 = fadd double %562, %563
  store double %564, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %565 = add i64 %558, 19
  store i64 %565, i64* %PC, align 8
  %566 = inttoptr i64 %559 to double*
  store double %564, double* %566, align 8
  %567 = load i64, i64* %RBP, align 8
  %568 = add i64 %567, -32
  %569 = load i64, i64* %PC, align 8
  %570 = add i64 %569, 5
  store i64 %570, i64* %PC, align 8
  %571 = inttoptr i64 %568 to i64*
  %572 = load i64, i64* %571, align 8
  store i64 %572, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %573 = add i64 %567, -48
  %574 = add i64 %569, 10
  store i64 %574, i64* %PC, align 8
  %575 = bitcast i64 %572 to double
  %576 = inttoptr i64 %573 to double*
  %577 = load double, double* %576, align 8
  %578 = fmul double %575, %577
  store double %578, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %579 = add i64 %567, -24
  %580 = add i64 %569, 15
  store i64 %580, i64* %PC, align 8
  %581 = inttoptr i64 %579 to double*
  store double %578, double* %581, align 8
  %582 = load i64, i64* %RBP, align 8
  %583 = add i64 %582, -24
  %584 = load i64, i64* %PC, align 8
  %585 = add i64 %584, 5
  store i64 %585, i64* %PC, align 8
  %586 = inttoptr i64 %583 to i64*
  %587 = load i64, i64* %586, align 8
  store i64 %587, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %588 = add i64 %584, 10
  store i64 %588, i64* %PC, align 8
  %589 = bitcast i64 %587 to double
  %590 = inttoptr i64 %583 to double*
  %591 = load double, double* %590, align 8
  %592 = fmul double %589, %591
  store double %592, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %593 = add i64 %582, -40
  %594 = add i64 %584, 15
  store i64 %594, i64* %PC, align 8
  %595 = inttoptr i64 %593 to double*
  store double %592, double* %595, align 8
  %596 = load i64, i64* %RBP, align 8
  %597 = add i64 %596, -16
  %598 = load i64, i64* %PC, align 8
  %599 = add i64 %598, 5
  store i64 %599, i64* %PC, align 8
  %600 = inttoptr i64 %597 to i64*
  %601 = load i64, i64* %600, align 8
  store i64 %601, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %602 = add i64 %596, -24
  %603 = add i64 %598, 10
  store i64 %603, i64* %PC, align 8
  %604 = inttoptr i64 %602 to i64*
  %605 = load i64, i64* %604, align 8
  store i64 %605, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %606 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %606, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %607 = add i64 %596, -40
  %608 = add i64 %598, 24
  store i64 %608, i64* %PC, align 8
  %.cast160 = bitcast i64 %606 to double
  %609 = inttoptr i64 %607 to double*
  %610 = load double, double* %609, align 8
  %611 = fmul double %.cast160, %610
  %612 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %613 = fsub double %611, %612
  store double %613, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %614 = add i64 %598, 38
  store i64 %614, i64* %PC, align 8
  %615 = load double, double* %609, align 8
  %616 = fmul double %613, %615
  %617 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %618 = fadd double %616, %617
  store double %618, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %619 = add i64 %598, 52
  store i64 %619, i64* %PC, align 8
  %620 = load double, double* %609, align 8
  %621 = fmul double %618, %620
  %622 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %623 = fsub double %621, %622
  store double %623, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %624 = add i64 %598, 66
  store i64 %624, i64* %PC, align 8
  %625 = load double, double* %609, align 8
  %626 = fmul double %623, %625
  %627 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %628 = fadd double %626, %627
  store double %628, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %629 = add i64 %598, 80
  store i64 %629, i64* %PC, align 8
  %630 = load double, double* %609, align 8
  %631 = fmul double %628, %630
  %632 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %633 = fadd double %631, %632
  store double %633, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %634 = add i64 %598, 94
  store i64 %634, i64* %PC, align 8
  %635 = load double, double* %609, align 8
  %636 = fmul double %633, %635
  %637 = load double, double* bitcast (%one_type* @one to double*), align 8
  %638 = fadd double %636, %637
  store double %638, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %639 = bitcast i64 %605 to double
  %640 = fmul double %638, %639
  store double %640, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %641 = bitcast i64 %601 to double
  %642 = fadd double %640, %641
  store double %642, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %643 = load i64, i64* %RBP, align 8
  %644 = add i64 %643, -16
  %645 = add i64 %598, 116
  store i64 %645, i64* %PC, align 8
  %646 = inttoptr i64 %644 to double*
  store double %642, double* %646, align 8
  %647 = load i64, i64* %RBP, align 8
  %648 = add i64 %647, -72
  %649 = load i64, i64* %PC, align 8
  %650 = add i64 %649, 4
  store i64 %650, i64* %PC, align 8
  %651 = inttoptr i64 %648 to i64*
  %652 = load i64, i64* %651, align 8
  %653 = add i64 %652, 1
  store i64 %653, i64* %RAX, align 8, !tbaa !2428
  %654 = icmp eq i64 %652, -1
  %655 = icmp eq i64 %653, 0
  %656 = or i1 %654, %655
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %23, align 1, !tbaa !2432
  %658 = trunc i64 %653 to i32
  %659 = and i32 %658, 255
  %660 = tail call i32 @llvm.ctpop.i32(i32 %659) #9
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  %663 = xor i8 %662, 1
  store i8 %663, i8* %30, align 1, !tbaa !2446
  %664 = xor i64 %653, %652
  %665 = lshr i64 %664, 4
  %666 = trunc i64 %665 to i8
  %667 = and i8 %666, 1
  store i8 %667, i8* %35, align 1, !tbaa !2450
  %668 = zext i1 %655 to i8
  store i8 %668, i8* %38, align 1, !tbaa !2447
  %669 = lshr i64 %653, 63
  %670 = trunc i64 %669 to i8
  store i8 %670, i8* %41, align 1, !tbaa !2448
  %671 = lshr i64 %652, 63
  %672 = xor i64 %669, %671
  %673 = add nuw nsw i64 %672, %669
  %674 = icmp eq i64 %673, 2
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %47, align 1, !tbaa !2449
  %676 = add i64 %649, 12
  store i64 %676, i64* %PC, align 8
  store i64 %653, i64* %651, align 8
  %677 = load i64, i64* %PC, align 8
  %678 = add i64 %677, -198
  store i64 %678, i64* %PC, align 8, !tbaa !2428
  br label %block_400e64

block_4018e3:                                     ; preds = %block_4018ce
  %679 = add i64 %519, 6
  store i64 %679, i64* %PC, align 8
  %680 = load i64, i64* %485, align 8
  %681 = sitofp i64 %680 to double
  store double %681, double* %74, align 1, !tbaa !2452
  %682 = add i64 %482, -48
  %683 = add i64 %519, 11
  store i64 %683, i64* %PC, align 8
  %684 = inttoptr i64 %682 to double*
  %685 = load double, double* %684, align 8
  %686 = fmul double %681, %685
  store double %686, double* %74, align 1, !tbaa !2452
  %687 = add i64 %482, -24
  %688 = add i64 %519, 16
  store i64 %688, i64* %PC, align 8
  %689 = inttoptr i64 %687 to double*
  store double %686, double* %689, align 8
  %690 = load i64, i64* %RBP, align 8
  %691 = add i64 %690, -24
  %692 = load i64, i64* %PC, align 8
  %693 = add i64 %692, 5
  store i64 %693, i64* %PC, align 8
  %694 = inttoptr i64 %691 to i64*
  %695 = load i64, i64* %694, align 8
  store i64 %695, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %696 = add i64 %692, 10
  store i64 %696, i64* %PC, align 8
  %697 = bitcast i64 %695 to double
  %698 = inttoptr i64 %691 to double*
  %699 = load double, double* %698, align 8
  %700 = fmul double %697, %699
  store double %700, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %701 = add i64 %690, -40
  %702 = add i64 %692, 15
  store i64 %702, i64* %PC, align 8
  %703 = inttoptr i64 %701 to double*
  store double %700, double* %703, align 8
  %704 = load i64, i64* %RBP, align 8
  %705 = add i64 %704, -24
  %706 = load i64, i64* %PC, align 8
  %707 = add i64 %706, 5
  store i64 %707, i64* %PC, align 8
  %708 = inttoptr i64 %705 to i64*
  %709 = load i64, i64* %708, align 8
  store i64 %709, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %710 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %710, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %711 = add i64 %704, -40
  %712 = add i64 %706, 19
  store i64 %712, i64* %PC, align 8
  %.cast170 = bitcast i64 %710 to double
  %713 = inttoptr i64 %711 to double*
  %714 = load double, double* %713, align 8
  %715 = fmul double %.cast170, %714
  %716 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %717 = fadd double %715, %716
  store double %717, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %718 = add i64 %706, 33
  store i64 %718, i64* %PC, align 8
  %719 = load double, double* %713, align 8
  %720 = fmul double %717, %719
  %721 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %722 = fadd double %720, %721
  store double %722, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %723 = add i64 %706, 47
  store i64 %723, i64* %PC, align 8
  %724 = load double, double* %713, align 8
  %725 = fmul double %722, %724
  %726 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %727 = fadd double %725, %726
  store double %727, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %728 = add i64 %706, 61
  store i64 %728, i64* %PC, align 8
  %729 = load double, double* %713, align 8
  %730 = fmul double %727, %729
  %731 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %732 = fadd double %730, %731
  store double %732, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %733 = add i64 %706, 75
  store i64 %733, i64* %PC, align 8
  %734 = load double, double* %713, align 8
  %735 = fmul double %732, %734
  %736 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %737 = fadd double %735, %736
  store double %737, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %738 = add i64 %706, 89
  store i64 %738, i64* %PC, align 8
  %739 = load double, double* %713, align 8
  %740 = fmul double %737, %739
  %741 = load double, double* bitcast (%one_type* @one to double*), align 8
  %742 = fadd double %740, %741
  store double %742, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %743 = bitcast i64 %709 to double
  %744 = fmul double %742, %743
  store double %744, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %745 = add i64 %704, -32
  %746 = add i64 %706, 107
  store i64 %746, i64* %PC, align 8
  %747 = inttoptr i64 %745 to double*
  store double %744, double* %747, align 8
  %748 = load i64, i64* %RBP, align 8
  %749 = add i64 %748, -16
  %750 = load i64, i64* %PC, align 8
  %751 = add i64 %750, 5
  store i64 %751, i64* %PC, align 8
  %752 = inttoptr i64 %749 to i64*
  %753 = load i64, i64* %752, align 8
  store i64 %753, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %754 = add i64 %748, -32
  %755 = add i64 %750, 10
  store i64 %755, i64* %PC, align 8
  %756 = inttoptr i64 %754 to i64*
  %757 = load i64, i64* %756, align 8
  store i64 %757, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %758 = add i64 %748, -40
  %759 = add i64 %750, 15
  store i64 %759, i64* %PC, align 8
  %760 = inttoptr i64 %758 to i64*
  %761 = load i64, i64* %760, align 8
  store i64 %761, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %762 = add i64 %750, 20
  store i64 %762, i64* %PC, align 8
  %763 = load i64, i64* %760, align 8
  store i64 %763, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %764 = add i64 %750, 25
  store i64 %764, i64* %PC, align 8
  %765 = load i64, i64* %760, align 8
  store i64 %765, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %766 = add i64 %750, 30
  store i64 %766, i64* %PC, align 8
  %767 = load i64, i64* %760, align 8
  store i64 %767, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %768 = add i64 %750, 35
  store i64 %768, i64* %PC, align 8
  %769 = load i64, i64* %760, align 8
  store i64 %769, i64* %107, align 1, !tbaa !2452
  store double 0.000000e+00, double* %109, align 1, !tbaa !2452
  %770 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  store i64 %770, i64* %209, align 1, !tbaa !2452
  store double 0.000000e+00, double* %211, align 1, !tbaa !2452
  %771 = add i64 %750, 49
  store i64 %771, i64* %PC, align 8
  %.cast171 = bitcast i64 %770 to double
  %772 = inttoptr i64 %758 to double*
  %773 = load double, double* %772, align 8
  %774 = fmul double %.cast171, %773
  %775 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %776 = fadd double %774, %775
  store double %776, double* %121, align 1, !tbaa !2452
  store i64 0, i64* %210, align 1, !tbaa !2452
  %777 = bitcast i64 %769 to double
  %778 = fmul double %776, %777
  %779 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %780 = fadd double %778, %779
  store double %780, double* %106, align 1, !tbaa !2452
  store i64 0, i64* %108, align 1, !tbaa !2452
  %781 = bitcast i64 %767 to double
  %782 = fmul double %780, %781
  %783 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %784 = fadd double %782, %783
  store double %784, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %785 = bitcast i64 %765 to double
  %786 = fmul double %784, %785
  %787 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %788 = fadd double %786, %787
  store double %788, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %789 = bitcast i64 %763 to double
  %790 = fmul double %788, %789
  %791 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %792 = fadd double %790, %791
  store double %792, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %793 = bitcast i64 %761 to double
  %794 = fmul double %792, %793
  %795 = load double, double* bitcast (%one_type* @one to double*), align 8
  %796 = fadd double %794, %795
  store double %796, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %797 = load double, double* %80, align 1
  %798 = fmul double %796, %797
  store double %798, double* %80, align 1, !tbaa !2452
  %799 = load double, double* %74, align 1
  %800 = fadd double %798, %799
  store double %800, double* %74, align 1, !tbaa !2452
  %801 = load i64, i64* %RBP, align 8
  %802 = add i64 %801, -16
  %803 = add i64 %750, 136
  store i64 %803, i64* %PC, align 8
  %804 = inttoptr i64 %802 to double*
  store double %800, double* %804, align 8
  %805 = load i64, i64* %RBP, align 8
  %806 = add i64 %805, -72
  %807 = load i64, i64* %PC, align 8
  %808 = add i64 %807, 4
  store i64 %808, i64* %PC, align 8
  %809 = inttoptr i64 %806 to i64*
  %810 = load i64, i64* %809, align 8
  %811 = add i64 %810, 1
  store i64 %811, i64* %RAX, align 8, !tbaa !2428
  %812 = icmp eq i64 %810, -1
  %813 = icmp eq i64 %811, 0
  %814 = or i1 %812, %813
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %23, align 1, !tbaa !2432
  %816 = trunc i64 %811 to i32
  %817 = and i32 %816, 255
  %818 = tail call i32 @llvm.ctpop.i32(i32 %817) #9
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  %821 = xor i8 %820, 1
  store i8 %821, i8* %30, align 1, !tbaa !2446
  %822 = xor i64 %811, %810
  %823 = lshr i64 %822, 4
  %824 = trunc i64 %823 to i8
  %825 = and i8 %824, 1
  store i8 %825, i8* %35, align 1, !tbaa !2450
  %826 = zext i1 %813 to i8
  store i8 %826, i8* %38, align 1, !tbaa !2447
  %827 = lshr i64 %811, 63
  %828 = trunc i64 %827 to i8
  store i8 %828, i8* %41, align 1, !tbaa !2448
  %829 = lshr i64 %810, 63
  %830 = xor i64 %827, %829
  %831 = add nuw nsw i64 %830, %827
  %832 = icmp eq i64 %831, 2
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %47, align 1, !tbaa !2449
  %834 = add i64 %807, 12
  store i64 %834, i64* %PC, align 8
  store i64 %811, i64* %809, align 8
  %835 = load i64, i64* %PC, align 8
  %836 = add i64 %835, -307
  store i64 %836, i64* %PC, align 8, !tbaa !2428
  br label %block_4018ce

block_401ccf:                                     ; preds = %block_401cba
  %837 = add i64 %3100, 6
  store i64 %837, i64* %PC, align 8
  %838 = load i64, i64* %3066, align 8
  %839 = sitofp i64 %838 to double
  store double %839, double* %74, align 1, !tbaa !2452
  %840 = add i64 %3063, -32
  %841 = add i64 %3100, 11
  store i64 %841, i64* %PC, align 8
  %842 = inttoptr i64 %840 to double*
  %843 = load double, double* %842, align 8
  %844 = fmul double %839, %843
  store double %844, double* %74, align 1, !tbaa !2452
  %845 = add i64 %3063, -48
  %846 = add i64 %3100, 16
  store i64 %846, i64* %PC, align 8
  %847 = inttoptr i64 %845 to double*
  store double %844, double* %847, align 8
  %848 = load i64, i64* %RBP, align 8
  %849 = add i64 %848, -48
  %850 = load i64, i64* %PC, align 8
  %851 = add i64 %850, 5
  store i64 %851, i64* %PC, align 8
  %852 = inttoptr i64 %849 to i64*
  %853 = load i64, i64* %852, align 8
  store i64 %853, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %854 = add i64 %850, 10
  store i64 %854, i64* %PC, align 8
  %855 = bitcast i64 %853 to double
  %856 = inttoptr i64 %849 to double*
  %857 = load double, double* %856, align 8
  %858 = fmul double %855, %857
  store double %858, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %859 = add i64 %848, -24
  %860 = add i64 %850, 15
  store i64 %860, i64* %PC, align 8
  %861 = inttoptr i64 %859 to double*
  store double %858, double* %861, align 8
  %862 = load i64, i64* %RBP, align 8
  %863 = add i64 %862, -16
  %864 = load i64, i64* %PC, align 8
  %865 = add i64 %864, 5
  store i64 %865, i64* %PC, align 8
  %866 = inttoptr i64 %863 to i64*
  %867 = load i64, i64* %866, align 8
  store i64 %867, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %868 = add i64 %862, -40
  %869 = add i64 %864, 10
  store i64 %869, i64* %PC, align 8
  %870 = inttoptr i64 %868 to i64*
  %871 = load i64, i64* %870, align 8
  store i64 %871, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %872 = add i64 %862, -48
  %873 = add i64 %864, 15
  store i64 %873, i64* %PC, align 8
  %874 = inttoptr i64 %872 to i64*
  %875 = load i64, i64* %874, align 8
  store i64 %875, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %876 = add i64 %864, 20
  store i64 %876, i64* %PC, align 8
  %877 = bitcast i64 %875 to double
  %878 = inttoptr i64 %868 to double*
  %879 = load double, double* %878, align 8
  %880 = fadd double %877, %879
  store double %880, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %881 = bitcast i64 %871 to double
  %882 = fdiv double %881, %880
  store double %882, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %883 = bitcast i64 %867 to double
  %884 = fsub double %883, %882
  store double %884, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %885 = add i64 %864, 33
  store i64 %885, i64* %PC, align 8
  %886 = load i64, i64* %874, align 8
  store i64 %886, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %887 = add i64 %862, -24
  %888 = add i64 %864, 38
  store i64 %888, i64* %PC, align 8
  %889 = inttoptr i64 %887 to i64*
  %890 = load i64, i64* %889, align 8
  store i64 %890, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %891 = add i64 %864, 43
  store i64 %891, i64* %PC, align 8
  %892 = bitcast i64 %890 to double
  %893 = load double, double* %878, align 8
  %894 = fadd double %892, %893
  store double %894, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %895 = bitcast i64 %886 to double
  %896 = fdiv double %895, %894
  store double %896, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %897 = fsub double %884, %896
  store double %897, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %898 = add i64 %864, 56
  store i64 %898, i64* %PC, align 8
  %899 = load i64, i64* %889, align 8
  store i64 %899, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %900 = add i64 %864, 61
  store i64 %900, i64* %PC, align 8
  %901 = load i64, i64* %874, align 8
  store i64 %901, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %902 = add i64 %864, 66
  store i64 %902, i64* %PC, align 8
  %903 = bitcast i64 %901 to double
  %904 = inttoptr i64 %887 to double*
  %905 = load double, double* %904, align 8
  %906 = fmul double %903, %905
  store double %906, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %907 = add i64 %864, 71
  store i64 %907, i64* %PC, align 8
  %908 = load double, double* %878, align 8
  %909 = fadd double %906, %908
  store double %909, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %910 = bitcast i64 %899 to double
  %911 = fdiv double %910, %909
  store double %911, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %912 = fsub double %897, %911
  store double %912, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %913 = load i64, i64* %RBP, align 8
  %914 = add i64 %913, -16
  %915 = add i64 %864, 84
  store i64 %915, i64* %PC, align 8
  %916 = inttoptr i64 %914 to double*
  store double %912, double* %916, align 8
  %917 = load i64, i64* %RBP, align 8
  %918 = add i64 %917, -72
  %919 = load i64, i64* %PC, align 8
  %920 = add i64 %919, 4
  store i64 %920, i64* %PC, align 8
  %921 = inttoptr i64 %918 to i64*
  %922 = load i64, i64* %921, align 8
  %923 = add i64 %922, 1
  store i64 %923, i64* %RAX, align 8, !tbaa !2428
  %924 = icmp eq i64 %922, -1
  %925 = icmp eq i64 %923, 0
  %926 = or i1 %924, %925
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %23, align 1, !tbaa !2432
  %928 = trunc i64 %923 to i32
  %929 = and i32 %928, 255
  %930 = tail call i32 @llvm.ctpop.i32(i32 %929) #9
  %931 = trunc i32 %930 to i8
  %932 = and i8 %931, 1
  %933 = xor i8 %932, 1
  store i8 %933, i8* %30, align 1, !tbaa !2446
  %934 = xor i64 %923, %922
  %935 = lshr i64 %934, 4
  %936 = trunc i64 %935 to i8
  %937 = and i8 %936, 1
  store i8 %937, i8* %35, align 1, !tbaa !2450
  %938 = zext i1 %925 to i8
  store i8 %938, i8* %38, align 1, !tbaa !2447
  %939 = lshr i64 %923, 63
  %940 = trunc i64 %939 to i8
  store i8 %940, i8* %41, align 1, !tbaa !2448
  %941 = lshr i64 %922, 63
  %942 = xor i64 %939, %941
  %943 = add nuw nsw i64 %942, %939
  %944 = icmp eq i64 %943, 2
  %945 = zext i1 %944 to i8
  store i8 %945, i8* %47, align 1, !tbaa !2449
  %946 = add i64 %919, 12
  store i64 %946, i64* %PC, align 8
  store i64 %923, i64* %921, align 8
  %947 = load i64, i64* %PC, align 8
  %948 = add i64 %947, -148
  store i64 %948, i64* %PC, align 8, !tbaa !2428
  br label %block_401cba

block_4014ef:                                     ; preds = %block_401504, %block_401249
  %949 = phi i64 [ %3779, %block_401504 ], [ %.pre214, %block_401249 ]
  %950 = load i64, i64* %RBP, align 8
  %951 = add i64 %950, -72
  %952 = add i64 %949, 4
  store i64 %952, i64* %PC, align 8
  %953 = inttoptr i64 %951 to i64*
  %954 = load i64, i64* %953, align 8
  store i64 %954, i64* %RAX, align 8, !tbaa !2428
  %955 = add i64 %950, -80
  %956 = add i64 %949, 8
  store i64 %956, i64* %PC, align 8
  %957 = inttoptr i64 %955 to i64*
  %958 = load i64, i64* %957, align 8
  %959 = add i64 %958, -1
  store i64 %959, i64* %RCX, align 8, !tbaa !2428
  %960 = lshr i64 %959, 63
  %961 = sub i64 %954, %959
  %962 = icmp ult i64 %954, %959
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %23, align 1, !tbaa !2432
  %964 = trunc i64 %961 to i32
  %965 = and i32 %964, 255
  %966 = tail call i32 @llvm.ctpop.i32(i32 %965) #9
  %967 = trunc i32 %966 to i8
  %968 = and i8 %967, 1
  %969 = xor i8 %968, 1
  store i8 %969, i8* %30, align 1, !tbaa !2446
  %970 = xor i64 %959, %954
  %971 = xor i64 %970, %961
  %972 = lshr i64 %971, 4
  %973 = trunc i64 %972 to i8
  %974 = and i8 %973, 1
  store i8 %974, i8* %35, align 1, !tbaa !2450
  %975 = icmp eq i64 %961, 0
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %38, align 1, !tbaa !2447
  %977 = lshr i64 %961, 63
  %978 = trunc i64 %977 to i8
  store i8 %978, i8* %41, align 1, !tbaa !2448
  %979 = lshr i64 %954, 63
  %980 = xor i64 %960, %979
  %981 = xor i64 %977, %979
  %982 = add nuw nsw i64 %981, %980
  %983 = icmp eq i64 %982, 2
  %984 = zext i1 %983 to i8
  store i8 %984, i8* %47, align 1, !tbaa !2449
  %985 = icmp ne i8 %978, 0
  %986 = xor i1 %985, %983
  %.demorgan223 = or i1 %975, %986
  %.v230 = select i1 %.demorgan223, i64 21, i64 312
  %987 = add i64 %949, %.v230
  store i64 %987, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan223, label %block_401504, label %block_401627

block_400bdd:                                     ; preds = %block_400bcf
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
  %988 = add i64 %3545, -16
  %989 = add i64 %3581, 15
  store i64 %989, i64* %PC, align 8
  %990 = inttoptr i64 %988 to i64*
  %991 = load i64, i64* %990, align 8
  %992 = xor i64 %991, -9223372036854775808
  store i64 %992, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %23, align 1, !tbaa !2432
  %993 = trunc i64 %991 to i32
  %994 = and i32 %993, 255
  %995 = tail call i32 @llvm.ctpop.i32(i32 %994) #9
  %996 = trunc i32 %995 to i8
  %997 = and i8 %996, 1
  %998 = xor i8 %997, 1
  store i8 %998, i8* %30, align 1, !tbaa !2446
  %999 = icmp eq i64 %992, 0
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %38, align 1, !tbaa !2447
  %1001 = lshr i64 %992, 63
  %1002 = trunc i64 %1001 to i8
  store i8 %1002, i8* %41, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %35, align 1, !tbaa !2450
  %1003 = add i64 %3581, 33
  store i64 %1003, i64* %PC, align 8
  store i64 %992, i64* %990, align 8
  %1004 = load i64, i64* %PC, align 8
  %1005 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %1005, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %1006 = load i64, i64* %RBP, align 8
  %1007 = add i64 %1006, -16
  %1008 = add i64 %1004, 14
  store i64 %1008, i64* %PC, align 8
  %.cast156 = bitcast i64 %1005 to double
  %1009 = inttoptr i64 %1007 to double*
  %1010 = load double, double* %1009, align 8
  %1011 = fadd double %.cast156, %1010
  store double %1011, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  store double %1011, double* bitcast (%sa_type* @sa to double*), align 8
  %1012 = add i64 %1006, -24
  %1013 = add i64 %1004, 28
  store i64 %1013, i64* %PC, align 8
  %1014 = inttoptr i64 %1012 to double*
  %1015 = load double, double* %1014, align 8
  %1016 = load double, double* bitcast (%two_type* @two to double*), align 8
  %1017 = fadd double %1015, %1016
  store double %1017, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %1018 = add i64 %1004, 42
  store i64 %1018, i64* %PC, align 8
  %1019 = inttoptr i64 %1012 to double*
  store double %1017, double* %1019, align 8
  %1020 = load i64, i64* %RBP, align 8
  %1021 = add i64 %1020, -48
  %1022 = load i64, i64* %PC, align 8
  %1023 = add i64 %1022, 5
  store i64 %1023, i64* %PC, align 8
  %1024 = inttoptr i64 %1021 to i64*
  %1025 = load i64, i64* %1024, align 8
  store i64 %1025, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %1026 = add i64 %1020, -16
  %1027 = add i64 %1022, 10
  store i64 %1027, i64* %PC, align 8
  %1028 = inttoptr i64 %1026 to i64*
  %1029 = load i64, i64* %1028, align 8
  store i64 %1029, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1030 = add i64 %1020, -24
  %1031 = add i64 %1022, 15
  store i64 %1031, i64* %PC, align 8
  %1032 = bitcast i64 %1029 to double
  %1033 = inttoptr i64 %1030 to double*
  %1034 = load double, double* %1033, align 8
  %1035 = fsub double %1032, %1034
  store double %1035, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %1036 = bitcast i64 %1025 to double
  %1037 = fadd double %1036, %1035
  store double %1037, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %1038 = add i64 %1022, 24
  store i64 %1038, i64* %PC, align 8
  %1039 = inttoptr i64 %1021 to double*
  store double %1037, double* %1039, align 8
  %1040 = load i64, i64* %RBP, align 8
  %1041 = add i64 %1040, -32
  %1042 = load i64, i64* %PC, align 8
  %1043 = add i64 %1042, 5
  store i64 %1043, i64* %PC, align 8
  %1044 = inttoptr i64 %1041 to i64*
  %1045 = load i64, i64* %1044, align 8
  store i64 %1045, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %1046 = add i64 %1040, -16
  %1047 = add i64 %1042, 10
  store i64 %1047, i64* %PC, align 8
  %1048 = inttoptr i64 %1046 to i64*
  %1049 = load i64, i64* %1048, align 8
  store i64 %1049, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1050 = add i64 %1040, -24
  %1051 = add i64 %1042, 15
  store i64 %1051, i64* %PC, align 8
  %1052 = bitcast i64 %1049 to double
  %1053 = inttoptr i64 %1050 to double*
  %1054 = load double, double* %1053, align 8
  %1055 = fmul double %1052, %1054
  store double %1055, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %1056 = bitcast i64 %1045 to double
  %1057 = fsub double %1056, %1055
  store double %1057, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %1058 = add i64 %1042, 24
  store i64 %1058, i64* %PC, align 8
  %1059 = inttoptr i64 %1041 to double*
  store double %1057, double* %1059, align 8
  %1060 = load i64, i64* %RBP, align 8
  %1061 = add i64 %1060, -40
  %1062 = load i64, i64* %PC, align 8
  %1063 = add i64 %1062, 5
  store i64 %1063, i64* %PC, align 8
  %1064 = inttoptr i64 %1061 to i64*
  %1065 = load i64, i64* %1064, align 8
  store i64 %1065, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %1066 = add i64 %1060, -16
  %1067 = add i64 %1062, 10
  store i64 %1067, i64* %PC, align 8
  %1068 = inttoptr i64 %1066 to i64*
  %1069 = load i64, i64* %1068, align 8
  store i64 %1069, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1070 = add i64 %1060, -24
  %1071 = add i64 %1062, 15
  store i64 %1071, i64* %PC, align 8
  %1072 = bitcast i64 %1069 to double
  %1073 = inttoptr i64 %1070 to double*
  %1074 = load double, double* %1073, align 8
  %1075 = fdiv double %1072, %1074
  store double %1075, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %1076 = bitcast i64 %1065 to double
  %1077 = fadd double %1076, %1075
  store double %1077, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %1078 = add i64 %1062, 24
  store i64 %1078, i64* %PC, align 8
  %1079 = inttoptr i64 %1061 to double*
  store double %1077, double* %1079, align 8
  %1080 = load i64, i64* %RBP, align 8
  %1081 = add i64 %1080, -72
  %1082 = load i64, i64* %PC, align 8
  %1083 = add i64 %1082, 4
  store i64 %1083, i64* %PC, align 8
  %1084 = inttoptr i64 %1081 to i64*
  %1085 = load i64, i64* %1084, align 8
  %1086 = add i64 %1085, 1
  store i64 %1086, i64* %RAX, align 8, !tbaa !2428
  %1087 = icmp eq i64 %1085, -1
  %1088 = icmp eq i64 %1086, 0
  %1089 = or i1 %1087, %1088
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %23, align 1, !tbaa !2432
  %1091 = trunc i64 %1086 to i32
  %1092 = and i32 %1091, 255
  %1093 = tail call i32 @llvm.ctpop.i32(i32 %1092) #9
  %1094 = trunc i32 %1093 to i8
  %1095 = and i8 %1094, 1
  %1096 = xor i8 %1095, 1
  store i8 %1096, i8* %30, align 1, !tbaa !2446
  %1097 = xor i64 %1086, %1085
  %1098 = lshr i64 %1097, 4
  %1099 = trunc i64 %1098 to i8
  %1100 = and i8 %1099, 1
  store i8 %1100, i8* %35, align 1, !tbaa !2450
  %1101 = zext i1 %1088 to i8
  store i8 %1101, i8* %38, align 1, !tbaa !2447
  %1102 = lshr i64 %1086, 63
  %1103 = trunc i64 %1102 to i8
  store i8 %1103, i8* %41, align 1, !tbaa !2448
  %1104 = lshr i64 %1085, 63
  %1105 = xor i64 %1102, %1104
  %1106 = add nuw nsw i64 %1105, %1102
  %1107 = icmp eq i64 %1106, 2
  %1108 = zext i1 %1107 to i8
  store i8 %1108, i8* %47, align 1, !tbaa !2449
  %1109 = add i64 %1082, 12
  store i64 %1109, i64* %PC, align 8
  store i64 %1086, i64* %1084, align 8
  %1110 = load i64, i64* %PC, align 8
  %1111 = add i64 %1110, -173
  store i64 %1111, i64* %PC, align 8, !tbaa !2428
  br label %block_400bcf

block_4007d5:                                     ; preds = %block_40070b
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %1112 = add i64 %3300, 7675
  %1113 = add i64 %3300, 15
  %1114 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1115 = add i64 %1114, -8
  %1116 = inttoptr i64 %1115 to i64*
  store i64 %1113, i64* %1116, align 8
  store i64 %1115, i64* %RSP, align 8, !tbaa !2428
  store i64 %1112, i64* %PC, align 8, !tbaa !2428
  %1117 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* nonnull %0, i64 %1112, %struct.Memory* %1735)
  %1118 = load i64, i64* %PC, align 8
  %1119 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to i64*), align 8
  store i64 %1119, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  store i64 %1119, i64* bitcast (%sa_type* @sa to i64*), align 8
  %1120 = load i64, i64* %RBP, align 8
  %1121 = add i64 %1120, -88
  %1122 = add i64 %1118, 22
  store i64 %1122, i64* %PC, align 8
  %1123 = inttoptr i64 %1121 to i64*
  %1124 = load i64, i64* %1123, align 8
  store i64 %1124, i64* %RDI, align 8, !tbaa !2428
  %1125 = add i64 %1120, -64
  %1126 = add i64 %1118, 26
  store i64 %1126, i64* %PC, align 8
  %1127 = inttoptr i64 %1125 to i64*
  %1128 = load i64, i64* %1127, align 8
  %1129 = sub i64 %1124, %1128
  %1130 = icmp ult i64 %1124, %1128
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %23, align 1, !tbaa !2432
  %1132 = trunc i64 %1129 to i32
  %1133 = and i32 %1132, 255
  %1134 = tail call i32 @llvm.ctpop.i32(i32 %1133) #9
  %1135 = trunc i32 %1134 to i8
  %1136 = and i8 %1135, 1
  %1137 = xor i8 %1136, 1
  store i8 %1137, i8* %30, align 1, !tbaa !2446
  %1138 = xor i64 %1128, %1124
  %1139 = xor i64 %1138, %1129
  %1140 = lshr i64 %1139, 4
  %1141 = trunc i64 %1140 to i8
  %1142 = and i8 %1141, 1
  store i8 %1142, i8* %35, align 1, !tbaa !2450
  %1143 = icmp eq i64 %1129, 0
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %38, align 1, !tbaa !2447
  %1145 = lshr i64 %1129, 63
  %1146 = trunc i64 %1145 to i8
  store i8 %1146, i8* %41, align 1, !tbaa !2448
  %1147 = lshr i64 %1124, 63
  %1148 = lshr i64 %1128, 63
  %1149 = xor i64 %1148, %1147
  %1150 = xor i64 %1145, %1147
  %1151 = add nuw nsw i64 %1150, %1149
  %1152 = icmp eq i64 %1151, 2
  %1153 = zext i1 %1152 to i8
  store i8 %1153, i8* %47, align 1, !tbaa !2449
  %1154 = add i64 %1120, -120
  %1155 = load i32, i32* %EAX, align 4
  %1156 = add i64 %1118, 29
  store i64 %1156, i64* %PC, align 8
  %1157 = inttoptr i64 %1154 to i32*
  store i32 %1155, i32* %1157, align 4
  %1158 = load i64, i64* %PC, align 8
  %1159 = load i8, i8* %38, align 1, !tbaa !2447
  %1160 = icmp eq i8 %1159, 0
  %.v251 = select i1 %1160, i64 11, i64 6
  %1161 = add i64 %1158, %.v251
  store i64 %1161, i64* %PC, align 8, !tbaa !2428
  br i1 %1160, label %block_40080c, label %block_400807

block_4008c4:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_4008c4_crit_edge, %block_4008b8
  %1162 = phi double [ %.pre208, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_4008c4_crit_edge ], [ %3123, %block_4008b8 ]
  %1163 = phi i64 [ %3871, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_4008c4_crit_edge ], [ %3121, %block_4008b8 ]
  store i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 390), i64* %RDI, align 8, !tbaa !2428
  %1164 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 72) to i64*), align 8
  store i64 %1164, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %1165 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 80) to i64*), align 16
  store i64 %1165, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1166 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 88) to i64*), align 8
  store i64 %1166, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1167 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %1168 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %1169 = fmul double %1167, %1168
  %1170 = fsub double %1169, %1162
  store double %1170, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %1171 = load i64, i64* bitcast (%D1_0_type* @D1_0 to i64*), align 8
  %.cast19 = bitcast i64 %1171 to double
  %1172 = load double, double* bitcast (%D2_0_type* @D2_0 to double*), align 8
  %1173 = fadd double %.cast19, %1172
  %1174 = load double, double* bitcast (%D3_type* @D3 to double*), align 8
  %1175 = fadd double %1173, %1174
  %1176 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1177 = fadd double %1176, %.cast19
  %1178 = load double, double* bitcast (%E2_0_type* @E2_0 to double*), align 8
  %1179 = fadd double %1177, %1178
  %1180 = load double, double* bitcast (%E3_type* @E3 to double*), align 8
  %1181 = fadd double %1179, %1180
  store double %1181, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %1182 = fdiv double %1175, %1181
  store double %1182, double* bitcast (%sa_type* @sa to double*), align 8
  store i64 %1171, i64* bitcast (%sb_type* @sb to i64*), align 8
  %1183 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %1184 = bitcast i64 %1166 to double
  %1185 = fdiv double %1183, %1184
  store double %1185, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  store double %1185, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 24) to double*), align 8
  %1186 = load i64, i64* %RBP, align 8
  %1187 = add i64 %1186, -48
  %1188 = add i64 %1163, 191
  store i64 %1188, i64* %PC, align 8
  %1189 = inttoptr i64 %1187 to i64*
  %1190 = load i64, i64* %1189, align 8
  store i64 %1190, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1191 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %1192 = load double, double* bitcast (%sb_type* @sb to double*), align 8
  %1193 = fadd double %1191, %1192
  store double %1193, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %1194 = load i64, i64* bitcast (%two_type* @two to i64*), align 8
  store i64 %1194, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %1195 = add i64 %1186, -16
  %1196 = add i64 %1163, 223
  store i64 %1196, i64* %PC, align 8
  %.cast154 = bitcast i64 %1194 to double
  %1197 = inttoptr i64 %1195 to double*
  %1198 = load double, double* %1197, align 8
  %1199 = fmul double %.cast154, %1198
  store double %1199, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %1200 = fadd double %1193, %1199
  store double %1200, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %1201 = bitcast i64 %1190 to double
  %1202 = fmul double %1201, %1200
  %1203 = fdiv double %1202, %.cast154
  store double %1203, double* bitcast (%sa_type* @sa to double*), align 8
  %1204 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1205 = fdiv double %1204, %1203
  store double %1205, double* bitcast (%sb_type* @sb to double*), align 8
  %1206 = tail call double @llvm.trunc.f64(double %1205) #9
  %1207 = tail call double @llvm.fabs.f64(double %1206) #9
  %1208 = fcmp ogt double %1207, 0x43E0000000000000
  %1209 = fptosi double %1206 to i64
  %1210 = select i1 %1208, i64 -9223372036854775808, i64 %1209
  %1211 = sext i64 %1210 to i128
  %1212 = and i128 %1211, -18446744073709551616
  %1213 = zext i64 %1210 to i128
  %1214 = or i128 %1212, %1213
  %1215 = mul nsw i128 %1214, 40000
  %1216 = trunc i128 %1215 to i64
  %1217 = sext i64 %1216 to i128
  %1218 = icmp ne i128 %1217, %1215
  %1219 = zext i1 %1218 to i8
  store i8 %1219, i8* %23, align 1, !tbaa !2432
  %1220 = trunc i128 %1215 to i32
  %1221 = and i32 %1220, 192
  %1222 = tail call i32 @llvm.ctpop.i32(i32 %1221) #9
  %1223 = trunc i32 %1222 to i8
  %1224 = and i8 %1223, 1
  %1225 = xor i8 %1224, 1
  store i8 %1225, i8* %30, align 1, !tbaa !2446
  store i8 0, i8* %35, align 1, !tbaa !2450
  store i8 0, i8* %38, align 1, !tbaa !2447
  %1226 = lshr i64 %1216, 63
  %1227 = trunc i64 %1226 to i8
  store i8 %1227, i8* %41, align 1, !tbaa !2448
  store i8 %1219, i8* %47, align 1, !tbaa !2449
  %1228 = sitofp i64 %1216 to double
  %1229 = load double, double* bitcast (%scale_type* @scale to double*), align 8
  %1230 = fdiv double %1228, %1229
  %1231 = tail call double @llvm.trunc.f64(double %1230) #9
  %1232 = tail call double @llvm.fabs.f64(double %1231) #9
  %1233 = fcmp ogt double %1232, 0x43E0000000000000
  %1234 = fptosi double %1231 to i64
  %1235 = select i1 %1233, i64 -9223372036854775808, i64 %1234
  store i64 %1235, i64* %RAX, align 8, !tbaa !2428
  %1236 = load i64, i64* %RBP, align 8
  %1237 = add i64 %1236, -88
  %1238 = add i64 %1163, 316
  store i64 %1238, i64* %PC, align 8
  %1239 = inttoptr i64 %1237 to i64*
  store i64 %1235, i64* %1239, align 8
  %1240 = load i64, i64* %PC, align 8
  %1241 = load double, double* bitcast (%sb_type* @sb to double*), align 8
  %1242 = load double, double* %80, align 1
  %1243 = fsub double %1241, %1242
  store double %1243, double* bitcast (%sc_type* @sc to double*), align 8
  %1244 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1245 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 24) to double*), align 8
  %1246 = fdiv double %1244, %1245
  store double %1246, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 32) to double*), align 16
  %1247 = bitcast [32 x %union.VectorReg]* %5 to <2 x i32>*
  %1248 = load <2 x i32>, <2 x i32>* %1247, align 1
  %1249 = bitcast i64* %76 to <2 x i32>*
  %1250 = load <2 x i32>, <2 x i32>* %1249, align 1
  %1251 = extractelement <2 x i32> %1248, i32 0
  %1252 = bitcast %union.VectorReg* %6 to i32*
  store i32 %1251, i32* %1252, align 1, !tbaa !2455
  %1253 = extractelement <2 x i32> %1248, i32 1
  %1254 = getelementptr inbounds i8, i8* %78, i64 4
  %1255 = bitcast i8* %1254 to i32*
  store i32 %1253, i32* %1255, align 1, !tbaa !2455
  %1256 = extractelement <2 x i32> %1250, i32 0
  %1257 = bitcast i64* %82 to i32*
  store i32 %1256, i32* %1257, align 1, !tbaa !2455
  %1258 = extractelement <2 x i32> %1250, i32 1
  %1259 = getelementptr inbounds i8, i8* %78, i64 12
  %1260 = bitcast i8* %1259 to i32*
  store i32 %1258, i32* %1260, align 1, !tbaa !2455
  %1261 = load double, double* %80, align 1
  %1262 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %1263 = fmul double %1261, %1262
  store double %1263, double* %80, align 1, !tbaa !2452
  %1264 = bitcast %union.VectorReg* %7 to i32*
  store i32 %1251, i32* %1264, align 1, !tbaa !2455
  %1265 = getelementptr inbounds i8, i8* %84, i64 4
  %1266 = bitcast i8* %1265 to i32*
  store i32 %1253, i32* %1266, align 1, !tbaa !2455
  %1267 = bitcast i64* %88 to i32*
  store i32 %1256, i32* %1267, align 1, !tbaa !2455
  %1268 = getelementptr inbounds i8, i8* %84, i64 12
  %1269 = bitcast i8* %1268 to i32*
  store i32 %1258, i32* %1269, align 1, !tbaa !2455
  %1270 = load double, double* %86, align 1
  %1271 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %1272 = fmul double %1270, %1271
  store double %1272, double* %86, align 1, !tbaa !2452
  %1273 = bitcast <2 x i32> %1248 to double
  %1274 = fmul double %1273, %1246
  %1275 = load i64, i64* %RBP, align 8
  %1276 = add i64 %1275, -136
  %1277 = add i64 %1240, 90
  store i64 %1277, i64* %PC, align 8
  %1278 = inttoptr i64 %1276 to double*
  store double %1274, double* %1278, align 8
  %1279 = load i64, i64* %PC, align 8
  %1280 = bitcast %union.VectorReg* %6 to <2 x i32>*
  %1281 = load <2 x i32>, <2 x i32>* %1280, align 1
  %1282 = bitcast i64* %82 to <2 x i32>*
  %1283 = load <2 x i32>, <2 x i32>* %1282, align 1
  %1284 = extractelement <2 x i32> %1281, i32 0
  store i32 %1284, i32* %187, align 1, !tbaa !2455
  %1285 = extractelement <2 x i32> %1281, i32 1
  store i32 %1285, i32* %189, align 1, !tbaa !2455
  %1286 = extractelement <2 x i32> %1283, i32 0
  store i32 %1286, i32* %190, align 1, !tbaa !2455
  %1287 = extractelement <2 x i32> %1283, i32 1
  store i32 %1287, i32* %192, align 1, !tbaa !2455
  %1288 = bitcast %union.VectorReg* %7 to <2 x i32>*
  %1289 = load <2 x i32>, <2 x i32>* %1288, align 1
  %1290 = bitcast i64* %88 to <2 x i32>*
  %1291 = load <2 x i32>, <2 x i32>* %1290, align 1
  %1292 = extractelement <2 x i32> %1289, i32 0
  store i32 %1292, i32* %1252, align 1, !tbaa !2455
  %1293 = extractelement <2 x i32> %1289, i32 1
  store i32 %1293, i32* %1255, align 1, !tbaa !2455
  %1294 = extractelement <2 x i32> %1291, i32 0
  store i32 %1294, i32* %1257, align 1, !tbaa !2455
  %1295 = extractelement <2 x i32> %1291, i32 1
  store i32 %1295, i32* %1260, align 1, !tbaa !2455
  %1296 = load i64, i64* %RBP, align 8
  %1297 = add i64 %1296, -136
  %1298 = add i64 %1279, 14
  store i64 %1298, i64* %PC, align 8
  %1299 = inttoptr i64 %1297 to i64*
  %1300 = load i64, i64* %1299, align 8
  store i64 %1300, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  store i8 3, i8* %AL, align 1, !tbaa !2451
  %1301 = add i64 %1279, -1562
  %1302 = add i64 %1279, 21
  %1303 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1304 = add i64 %1303, -8
  %1305 = inttoptr i64 %1304 to i64*
  store i64 %1302, i64* %1305, align 8
  store i64 %1304, i64* %RSP, align 8, !tbaa !2428
  store i64 %1301, i64* %PC, align 8, !tbaa !2428
  %1306 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %3864)
  %1307 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 -9223372036854775808, i64* %RCX, align 8, !tbaa !2428
  %1308 = load i64, i64* %RBP, align 8
  %1309 = add i64 %1308, -88
  %1310 = add i64 %1307, 24
  store i64 %1310, i64* %PC, align 8
  %1311 = inttoptr i64 %1309 to i64*
  %1312 = load i64, i64* %1311, align 8
  %1313 = add i64 %1308, -80
  %1314 = add i64 %1307, 28
  store i64 %1314, i64* %PC, align 8
  %1315 = inttoptr i64 %1313 to i64*
  store i64 %1312, i64* %1315, align 8
  %1316 = load i64, i64* %PC, align 8
  %1317 = load i64, i64* bitcast (%five_type* @five to i64*), align 8
  %1318 = load i64, i64* %RCX, align 8
  %1319 = xor i64 %1318, %1317
  %1320 = load i64, i64* %RBP, align 8
  %1321 = add i64 %1320, -16
  %1322 = add i64 %1316, 27
  store i64 %1322, i64* %PC, align 8
  %1323 = inttoptr i64 %1321 to i64*
  store i64 %1319, i64* %1323, align 8
  %1324 = load i64, i64* %PC, align 8
  %1325 = load i64, i64* bitcast (%one_type* @one to i64*), align 8
  %1326 = load i64, i64* %RCX, align 8
  %1327 = xor i64 %1326, %1325
  store i64 %1327, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %23, align 1, !tbaa !2432
  %1328 = trunc i64 %1327 to i32
  %1329 = and i32 %1328, 255
  %1330 = tail call i32 @llvm.ctpop.i32(i32 %1329) #9
  %1331 = trunc i32 %1330 to i8
  %1332 = and i8 %1331, 1
  %1333 = xor i8 %1332, 1
  store i8 %1333, i8* %30, align 1, !tbaa !2446
  %1334 = icmp eq i64 %1327, 0
  %1335 = zext i1 %1334 to i8
  store i8 %1335, i8* %38, align 1, !tbaa !2447
  %1336 = lshr i64 %1327, 63
  %1337 = trunc i64 %1336 to i8
  store i8 %1337, i8* %41, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %35, align 1, !tbaa !2450
  store i64 %1327, i64* %75, align 1, !tbaa !2428
  store i64 0, i64* %76, align 1, !tbaa !2428
  store i64 %1327, i64* bitcast (%sa_type* @sa to i64*), align 8
  %1338 = load i64, i64* %RBP, align 8
  %1339 = add i64 %1338, -140
  %1340 = load i32, i32* %EAX, align 4
  %1341 = add i64 %1324, 37
  store i64 %1341, i64* %PC, align 8
  %1342 = inttoptr i64 %1339 to i32*
  store i32 %1340, i32* %1342, align 4
  %1343 = load i64, i64* %PC, align 8
  %1344 = add i64 %1343, 6917
  %1345 = add i64 %1343, 5
  %1346 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1347 = add i64 %1346, -8
  %1348 = inttoptr i64 %1347 to i64*
  store i64 %1345, i64* %1348, align 8
  store i64 %1347, i64* %RSP, align 8, !tbaa !2428
  store i64 %1344, i64* %PC, align 8, !tbaa !2428
  %1349 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* nonnull %0, i64 %1344, %struct.Memory* %1306)
  %1350 = load i64, i64* %RBP, align 8
  %1351 = add i64 %1350, -72
  %1352 = load i64, i64* %PC, align 8
  %1353 = add i64 %1352, 8
  store i64 %1353, i64* %PC, align 8
  %1354 = inttoptr i64 %1351 to i64*
  store i64 1, i64* %1354, align 8
  %1355 = load i64, i64* %RBP, align 8
  %1356 = add i64 %1355, -144
  %1357 = load i32, i32* %EAX, align 4
  %1358 = load i64, i64* %PC, align 8
  %1359 = add i64 %1358, 6
  store i64 %1359, i64* %PC, align 8
  %1360 = inttoptr i64 %1356 to i32*
  store i32 %1357, i32* %1360, align 4
  %.pre209 = load i64, i64* %PC, align 8
  br label %block_400ade

block_400b35:                                     ; preds = %block_400ade
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %1361 = add i64 %2001, 6811
  %1362 = add i64 %2001, 15
  %1363 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1364 = add i64 %1363, -8
  %1365 = inttoptr i64 %1364 to i64*
  store i64 %1362, i64* %1365, align 8
  store i64 %1364, i64* %RSP, align 8, !tbaa !2428
  store i64 %1361, i64* %PC, align 8, !tbaa !2428
  %1366 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* nonnull %0, i64 %1361, %struct.Memory* %1349)
  %1367 = load i64, i64* %PC, align 8
  %1368 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1368, align 1, !tbaa !2454
  %1369 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %1370 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %1371 = fmul double %1369, %1370
  store double %1371, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  store double %1371, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to double*), align 8
  %1372 = add i64 %1367, 39
  store i64 %1372, i64* %PC, align 8
  %1373 = load double, double* %74, align 1
  %1374 = fcmp uno double %1373, %1371
  br i1 %1374, label %1375, label %1385

; <label>:1375:                                   ; preds = %block_400b35
  %1376 = fadd double %1371, %1373
  %1377 = bitcast double %1376 to i64
  %1378 = and i64 %1377, 9221120237041090560
  %1379 = icmp eq i64 %1378, 9218868437227405312
  %1380 = and i64 %1377, 2251799813685247
  %1381 = icmp ne i64 %1380, 0
  %1382 = and i1 %1379, %1381
  br i1 %1382, label %1383, label %1391

; <label>:1383:                                   ; preds = %1375
  %1384 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1372, %struct.Memory* %1366) #12
  %.pre210 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

; <label>:1385:                                   ; preds = %block_400b35
  %1386 = fcmp ogt double %1373, %1371
  br i1 %1386, label %1391, label %1387

; <label>:1387:                                   ; preds = %1385
  %1388 = fcmp olt double %1373, %1371
  br i1 %1388, label %1391, label %1389

; <label>:1389:                                   ; preds = %1387
  %1390 = fcmp oeq double %1373, %1371
  br i1 %1390, label %1391, label %1395

; <label>:1391:                                   ; preds = %1389, %1387, %1385, %1375
  %1392 = phi i8 [ 0, %1385 ], [ 0, %1387 ], [ 1, %1389 ], [ 1, %1375 ]
  %1393 = phi i8 [ 0, %1385 ], [ 0, %1387 ], [ 0, %1389 ], [ 1, %1375 ]
  %1394 = phi i8 [ 0, %1385 ], [ 1, %1387 ], [ 0, %1389 ], [ 1, %1375 ]
  store i8 %1392, i8* %38, align 1, !tbaa !2451
  store i8 %1393, i8* %30, align 1, !tbaa !2451
  store i8 %1394, i8* %23, align 1, !tbaa !2451
  br label %1395

; <label>:1395:                                   ; preds = %1391, %1389
  store i8 0, i8* %47, align 1, !tbaa !2451
  store i8 0, i8* %41, align 1, !tbaa !2451
  store i8 0, i8* %35, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1: ; preds = %1395, %1383
  %1396 = phi i64 [ %.pre210, %1383 ], [ %1372, %1395 ]
  %1397 = phi %struct.Memory* [ %1384, %1383 ], [ %1366, %1395 ]
  %1398 = load i64, i64* %RBP, align 8
  %1399 = add i64 %1398, -148
  %1400 = load i32, i32* %EAX, align 4
  %1401 = add i64 %1396, 6
  store i64 %1401, i64* %PC, align 8
  %1402 = inttoptr i64 %1399 to i32*
  store i32 %1400, i32* %1402, align 4
  %1403 = load i64, i64* %PC, align 8
  %1404 = add i64 %1403, 18
  %1405 = add i64 %1403, 6
  %1406 = load i8, i8* %23, align 1, !tbaa !2432
  %1407 = load i8, i8* %38, align 1, !tbaa !2447
  %1408 = or i8 %1407, %1406
  %1409 = icmp ne i8 %1408, 0
  %1410 = select i1 %1409, i64 %1404, i64 %1405
  store i64 %1410, i64* %PC, align 8, !tbaa !2428
  br i1 %1409, label %block_400b83, label %block_400b77

block_401249:                                     ; preds = %block_401185
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %1411 = add i64 %3621, 4999
  %1412 = add i64 %3621, 15
  %1413 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1414 = add i64 %1413, -8
  %1415 = inttoptr i64 %1414 to i64*
  store i64 %1412, i64* %1415, align 8
  store i64 %1414, i64* %RSP, align 8, !tbaa !2428
  store i64 %1411, i64* %PC, align 8, !tbaa !2428
  %1416 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* nonnull %0, i64 %1411, %struct.Memory* %1952)
  %1417 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 498), i64* %RDI, align 8, !tbaa !2428
  %1418 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 72) to i64*), align 8
  store i64 %1418, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %1419 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 128) to i64*), align 16
  store i64 %1419, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1420 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %1421 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %1422 = fmul double %1420, %1421
  %1423 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %1424 = fsub double %1422, %1423
  store double %1424, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %1425 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %1426 = load double, double* bitcast (%three_type* @three to double*), align 8
  %1427 = fdiv double %1425, %1426
  store double %1427, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1428 = load i64, i64* %RBP, align 8
  %1429 = add i64 %1428, -24
  %1430 = add i64 %1417, 85
  store i64 %1430, i64* %PC, align 8
  %1431 = inttoptr i64 %1429 to double*
  store double %1427, double* %1431, align 8
  %1432 = load i64, i64* %RBP, align 8
  %1433 = add i64 %1432, -24
  %1434 = load i64, i64* %PC, align 8
  %1435 = add i64 %1434, 5
  store i64 %1435, i64* %PC, align 8
  %1436 = inttoptr i64 %1433 to i64*
  %1437 = load i64, i64* %1436, align 8
  store i64 %1437, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1438 = add i64 %1434, 10
  store i64 %1438, i64* %PC, align 8
  %1439 = bitcast i64 %1437 to double
  %1440 = inttoptr i64 %1433 to double*
  %1441 = load double, double* %1440, align 8
  %1442 = fmul double %1439, %1441
  store double %1442, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1443 = add i64 %1432, -40
  %1444 = add i64 %1434, 15
  store i64 %1444, i64* %PC, align 8
  %1445 = inttoptr i64 %1443 to double*
  store double %1442, double* %1445, align 8
  %1446 = load i64, i64* %RBP, align 8
  %1447 = add i64 %1446, -40
  %1448 = load i64, i64* %PC, align 8
  %1449 = add i64 %1448, 5
  store i64 %1449, i64* %PC, align 8
  %1450 = inttoptr i64 %1447 to i64*
  %1451 = load i64, i64* %1450, align 8
  store i64 %1451, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1452 = add i64 %1448, 10
  store i64 %1452, i64* %PC, align 8
  %1453 = load i64, i64* %1450, align 8
  store i64 %1453, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %1454 = add i64 %1448, 15
  store i64 %1454, i64* %PC, align 8
  %1455 = load i64, i64* %1450, align 8
  store i64 %1455, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %1456 = add i64 %1448, 20
  store i64 %1456, i64* %PC, align 8
  %1457 = load i64, i64* %1450, align 8
  store i64 %1457, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %1458 = add i64 %1448, 25
  store i64 %1458, i64* %PC, align 8
  %1459 = load i64, i64* %1450, align 8
  store i64 %1459, i64* %107, align 1, !tbaa !2452
  store double 0.000000e+00, double* %109, align 1, !tbaa !2452
  %1460 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  store i64 %1460, i64* %209, align 1, !tbaa !2452
  store double 0.000000e+00, double* %211, align 1, !tbaa !2452
  %1461 = add i64 %1448, 39
  store i64 %1461, i64* %PC, align 8
  %1462 = bitcast i64 %1460 to double
  %1463 = inttoptr i64 %1447 to double*
  %1464 = load double, double* %1463, align 8
  %1465 = fmul double %1462, %1464
  %1466 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %1467 = fadd double %1465, %1466
  store double %1467, double* %121, align 1, !tbaa !2452
  store i64 0, i64* %210, align 1, !tbaa !2452
  %1468 = bitcast i64 %1459 to double
  %1469 = fmul double %1467, %1468
  %1470 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %1471 = fadd double %1469, %1470
  store double %1471, double* %106, align 1, !tbaa !2452
  store i64 0, i64* %108, align 1, !tbaa !2452
  %1472 = bitcast i64 %1457 to double
  %1473 = fmul double %1471, %1472
  %1474 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %1475 = fadd double %1473, %1474
  store double %1475, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %1476 = bitcast i64 %1455 to double
  %1477 = fmul double %1475, %1476
  %1478 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %1479 = fadd double %1477, %1478
  store double %1479, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %1480 = bitcast i64 %1453 to double
  %1481 = fmul double %1479, %1480
  %1482 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %1483 = fadd double %1481, %1482
  store double %1483, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %1484 = bitcast i64 %1451 to double
  %1485 = fmul double %1483, %1484
  %1486 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1487 = fadd double %1485, %1486
  store double %1487, double* bitcast (%sa_type* @sa to double*), align 8
  %1488 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %1489 = load double, double* %80, align 1
  %1490 = fdiv double %1488, %1489
  store double %1490, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  store double %1490, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 104) to double*), align 8
  %1491 = load i64, i64* %RBP, align 8
  %1492 = add i64 %1491, -48
  %1493 = add i64 %1448, 149
  store i64 %1493, i64* %PC, align 8
  %1494 = inttoptr i64 %1492 to i64*
  %1495 = load i64, i64* %1494, align 8
  store i64 %1495, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1496 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %1497 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1498 = fadd double %1496, %1497
  store double %1498, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1499 = load i64, i64* bitcast (%two_type* @two to i64*), align 8
  store i64 %1499, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %1500 = add i64 %1491, -16
  %1501 = add i64 %1448, 181
  store i64 %1501, i64* %PC, align 8
  %.cast164 = bitcast i64 %1499 to double
  %1502 = inttoptr i64 %1500 to double*
  %1503 = load double, double* %1502, align 8
  %1504 = fmul double %.cast164, %1503
  store double %1504, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %1505 = fadd double %1498, %1504
  store double %1505, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1506 = bitcast i64 %1495 to double
  %1507 = fmul double %1506, %1505
  %1508 = fdiv double %1507, %.cast164
  store double %1508, double* bitcast (%sa_type* @sa to double*), align 8
  %1509 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %1510 = load double, double* bitcast (%three_type* @three to double*), align 8
  %1511 = fdiv double %1509, %1510
  store double %1511, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %1512 = add i64 %1491, -24
  %1513 = add i64 %1448, 230
  store i64 %1513, i64* %PC, align 8
  %1514 = inttoptr i64 %1512 to double*
  store double %1511, double* %1514, align 8
  %1515 = load i64, i64* %RBP, align 8
  %1516 = add i64 %1515, -24
  %1517 = load i64, i64* %PC, align 8
  %1518 = add i64 %1517, 5
  store i64 %1518, i64* %PC, align 8
  %1519 = inttoptr i64 %1516 to i64*
  %1520 = load i64, i64* %1519, align 8
  store i64 %1520, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1521 = add i64 %1517, 10
  store i64 %1521, i64* %PC, align 8
  %1522 = bitcast i64 %1520 to double
  %1523 = inttoptr i64 %1516 to double*
  %1524 = load double, double* %1523, align 8
  %1525 = fmul double %1522, %1524
  store double %1525, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %1526 = add i64 %1515, -40
  %1527 = add i64 %1517, 15
  store i64 %1527, i64* %PC, align 8
  %1528 = inttoptr i64 %1526 to double*
  store double %1525, double* %1528, align 8
  %1529 = load i64, i64* %RBP, align 8
  %1530 = add i64 %1529, -24
  %1531 = load i64, i64* %PC, align 8
  %1532 = add i64 %1531, 5
  store i64 %1532, i64* %PC, align 8
  %1533 = inttoptr i64 %1530 to i64*
  %1534 = load i64, i64* %1533, align 8
  store i64 %1534, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1535 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %1535, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1536 = add i64 %1529, -40
  %1537 = add i64 %1531, 19
  store i64 %1537, i64* %PC, align 8
  %.cast165 = bitcast i64 %1535 to double
  %1538 = inttoptr i64 %1536 to double*
  %1539 = load double, double* %1538, align 8
  %1540 = fmul double %.cast165, %1539
  %1541 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %1542 = fadd double %1540, %1541
  store double %1542, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1543 = add i64 %1531, 33
  store i64 %1543, i64* %PC, align 8
  %1544 = load double, double* %1538, align 8
  %1545 = fmul double %1542, %1544
  %1546 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %1547 = fadd double %1545, %1546
  store double %1547, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1548 = add i64 %1531, 47
  store i64 %1548, i64* %PC, align 8
  %1549 = load double, double* %1538, align 8
  %1550 = fmul double %1547, %1549
  %1551 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %1552 = fadd double %1550, %1551
  store double %1552, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1553 = add i64 %1531, 61
  store i64 %1553, i64* %PC, align 8
  %1554 = load double, double* %1538, align 8
  %1555 = fmul double %1552, %1554
  %1556 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %1557 = fadd double %1555, %1556
  store double %1557, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1558 = add i64 %1531, 75
  store i64 %1558, i64* %PC, align 8
  %1559 = load double, double* %1538, align 8
  %1560 = fmul double %1557, %1559
  %1561 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %1562 = fadd double %1560, %1561
  store double %1562, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1563 = add i64 %1531, 89
  store i64 %1563, i64* %PC, align 8
  %1564 = load double, double* %1538, align 8
  %1565 = fmul double %1562, %1564
  %1566 = load double, double* bitcast (%A0_type* @A0 to double*), align 8
  %1567 = fadd double %1565, %1566
  %1568 = bitcast i64 %1534 to double
  %1569 = fmul double %1567, %1568
  store double %1569, double* bitcast (%sb_type* @sb to double*), align 8
  %1570 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %1571 = fsub double %1570, %1569
  store double %1571, double* bitcast (%sc_type* @sc to double*), align 8
  %1572 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1573 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 104) to double*), align 8
  %1574 = fdiv double %1572, %1573
  store double %1574, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 112) to double*), align 16
  %1575 = load <2 x i32>, <2 x i32>* %1247, align 1
  %1576 = load <2 x i32>, <2 x i32>* %1249, align 1
  %1577 = extractelement <2 x i32> %1575, i32 0
  store i32 %1577, i32* %1252, align 1, !tbaa !2455
  %1578 = extractelement <2 x i32> %1575, i32 1
  store i32 %1578, i32* %1255, align 1, !tbaa !2455
  %1579 = extractelement <2 x i32> %1576, i32 0
  store i32 %1579, i32* %1257, align 1, !tbaa !2455
  %1580 = extractelement <2 x i32> %1576, i32 1
  store i32 %1580, i32* %1260, align 1, !tbaa !2455
  %1581 = load double, double* %80, align 1
  %1582 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %1583 = fmul double %1581, %1582
  store double %1583, double* %80, align 1, !tbaa !2452
  store i32 %1577, i32* %1264, align 1, !tbaa !2455
  store i32 %1578, i32* %1266, align 1, !tbaa !2455
  store i32 %1579, i32* %1267, align 1, !tbaa !2455
  store i32 %1580, i32* %1269, align 1, !tbaa !2455
  %1584 = load double, double* %86, align 1
  %1585 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %1586 = fmul double %1584, %1585
  store double %1586, double* %86, align 1, !tbaa !2452
  %1587 = bitcast <2 x i32> %1575 to double
  %1588 = fmul double %1587, %1574
  %1589 = load i64, i64* %RBP, align 8
  %1590 = add i64 %1589, -208
  %1591 = add i64 %1531, 206
  store i64 %1591, i64* %PC, align 8
  %1592 = inttoptr i64 %1590 to double*
  store double %1588, double* %1592, align 8
  %1593 = load i64, i64* %PC, align 8
  %1594 = load <2 x i32>, <2 x i32>* %1280, align 1
  %1595 = load <2 x i32>, <2 x i32>* %1282, align 1
  %1596 = extractelement <2 x i32> %1594, i32 0
  store i32 %1596, i32* %187, align 1, !tbaa !2455
  %1597 = extractelement <2 x i32> %1594, i32 1
  store i32 %1597, i32* %189, align 1, !tbaa !2455
  %1598 = extractelement <2 x i32> %1595, i32 0
  store i32 %1598, i32* %190, align 1, !tbaa !2455
  %1599 = extractelement <2 x i32> %1595, i32 1
  store i32 %1599, i32* %192, align 1, !tbaa !2455
  %1600 = load <2 x i32>, <2 x i32>* %1288, align 1
  %1601 = load <2 x i32>, <2 x i32>* %1290, align 1
  %1602 = extractelement <2 x i32> %1600, i32 0
  store i32 %1602, i32* %1252, align 1, !tbaa !2455
  %1603 = extractelement <2 x i32> %1600, i32 1
  store i32 %1603, i32* %1255, align 1, !tbaa !2455
  %1604 = extractelement <2 x i32> %1601, i32 0
  store i32 %1604, i32* %1257, align 1, !tbaa !2455
  %1605 = extractelement <2 x i32> %1601, i32 1
  store i32 %1605, i32* %1260, align 1, !tbaa !2455
  %1606 = load i64, i64* %RBP, align 8
  %1607 = add i64 %1606, -208
  %1608 = add i64 %1593, 14
  store i64 %1608, i64* %PC, align 8
  %1609 = inttoptr i64 %1607 to i64*
  %1610 = load i64, i64* %1609, align 8
  store i64 %1610, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1611 = add i64 %1606, -212
  %1612 = load i32, i32* %EAX, align 4
  %1613 = add i64 %1593, 20
  store i64 %1613, i64* %PC, align 8
  %1614 = inttoptr i64 %1611 to i32*
  store i32 %1612, i32* %1614, align 4
  %1615 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2451
  %1616 = add i64 %1615, -4179
  %1617 = add i64 %1615, 7
  %1618 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1619 = add i64 %1618, -8
  %1620 = inttoptr i64 %1619 to i64*
  store i64 %1617, i64* %1620, align 8
  store i64 %1619, i64* %RSP, align 8, !tbaa !2428
  store i64 %1616, i64* %PC, align 8, !tbaa !2428
  %1621 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1416)
  %1622 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %1623 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1623, align 1, !tbaa !2454
  %1624 = load i64, i64* bitcast (%piref_type* @piref to i64*), align 8
  store i64 %1624, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1625 = load i64, i64* bitcast (%three_type* @three to i64*), align 8
  store i64 %1625, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1626 = load i64, i64* %RBP, align 8
  %1627 = add i64 %1626, -80
  %1628 = add i64 %1622, 37
  store i64 %1628, i64* %PC, align 8
  %1629 = inttoptr i64 %1627 to i64*
  %1630 = load i64, i64* %1629, align 8
  %1631 = sitofp i64 %1630 to double
  store double %1631, double* %91, align 1, !tbaa !2452
  %1632 = bitcast i64 %1625 to double
  %1633 = fmul double %1631, %1632
  store double %1633, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1634 = bitcast i64 %1624 to double
  %1635 = fdiv double %1634, %1633
  store double %1635, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %1636 = add i64 %1626, -48
  %1637 = add i64 %1622, 50
  store i64 %1637, i64* %PC, align 8
  %1638 = inttoptr i64 %1636 to double*
  store double %1635, double* %1638, align 8
  %1639 = load i64, i64* %RBP, align 8
  %1640 = add i64 %1639, -16
  %1641 = load i64, i64* %PC, align 8
  %1642 = add i64 %1641, 5
  store i64 %1642, i64* %PC, align 8
  %1643 = load i64, i64* %75, align 1
  %1644 = inttoptr i64 %1640 to i64*
  store i64 %1643, i64* %1644, align 8
  %1645 = load i64, i64* %RBP, align 8
  %1646 = add i64 %1645, -32
  %1647 = load i64, i64* %PC, align 8
  %1648 = add i64 %1647, 5
  store i64 %1648, i64* %PC, align 8
  %1649 = load i64, i64* %75, align 1
  %1650 = inttoptr i64 %1646 to i64*
  store i64 %1649, i64* %1650, align 8
  %1651 = load i64, i64* %RBP, align 8
  %1652 = add i64 %1651, -216
  %1653 = load i32, i32* %EAX, align 4
  %1654 = load i64, i64* %PC, align 8
  %1655 = add i64 %1654, 6
  store i64 %1655, i64* %PC, align 8
  %1656 = inttoptr i64 %1652 to i32*
  store i32 %1653, i32* %1656, align 4
  %1657 = load i64, i64* %PC, align 8
  %1658 = add i64 %1657, 4340
  %1659 = add i64 %1657, 5
  %1660 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1661 = add i64 %1660, -8
  %1662 = inttoptr i64 %1661 to i64*
  store i64 %1659, i64* %1662, align 8
  store i64 %1661, i64* %RSP, align 8, !tbaa !2428
  store i64 %1658, i64* %PC, align 8, !tbaa !2428
  %1663 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* nonnull %0, i64 %1658, %struct.Memory* %1621)
  %1664 = load i64, i64* %RBP, align 8
  %1665 = add i64 %1664, -72
  %1666 = load i64, i64* %PC, align 8
  %1667 = add i64 %1666, 8
  store i64 %1667, i64* %PC, align 8
  %1668 = inttoptr i64 %1665 to i64*
  store i64 1, i64* %1668, align 8
  %1669 = load i64, i64* %RBP, align 8
  %1670 = add i64 %1669, -220
  %1671 = load i32, i32* %EAX, align 4
  %1672 = load i64, i64* %PC, align 8
  %1673 = add i64 %1672, 6
  store i64 %1673, i64* %PC, align 8
  %1674 = inttoptr i64 %1670 to i32*
  store i32 %1671, i32* %1674, align 4
  %.pre214 = load i64, i64* %PC, align 8
  br label %block_4014ef

block_4006b2:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store <4 x i32> zeroinitializer, <4 x i32>* %212, align 1, !tbaa !2454
  %1675 = load i64, i64* %RBP, align 8
  %1676 = add i64 %1675, -88
  %1677 = add i64 %2604, 17
  store i64 %1677, i64* %PC, align 8
  %1678 = inttoptr i64 %1676 to i64*
  %1679 = load i64, i64* %1678, align 8
  %1680 = shl i64 %1679, 1
  %1681 = icmp slt i64 %1679, 0
  %1682 = icmp slt i64 %1680, 0
  %1683 = xor i1 %1681, %1682
  store i64 %1680, i64* %RAX, align 8, !tbaa !2428
  %.lobit = lshr i64 %1679, 63
  %1684 = trunc i64 %.lobit to i8
  store i8 %1684, i8* %23, align 1, !tbaa !2451
  %1685 = trunc i64 %1680 to i32
  %1686 = and i32 %1685, 254
  %1687 = tail call i32 @llvm.ctpop.i32(i32 %1686) #9
  %1688 = trunc i32 %1687 to i8
  %1689 = and i8 %1688, 1
  %1690 = xor i8 %1689, 1
  store i8 %1690, i8* %30, align 1, !tbaa !2451
  store i8 0, i8* %35, align 1, !tbaa !2451
  %1691 = icmp eq i64 %1680, 0
  %1692 = zext i1 %1691 to i8
  store i8 %1692, i8* %38, align 1, !tbaa !2451
  %1693 = lshr i64 %1679, 62
  %1694 = trunc i64 %1693 to i8
  %1695 = and i8 %1694, 1
  store i8 %1695, i8* %41, align 1, !tbaa !2451
  %1696 = zext i1 %1683 to i8
  store i8 %1696, i8* %47, align 1, !tbaa !2451
  %1697 = add i64 %2604, 25
  store i64 %1697, i64* %PC, align 8
  store i64 %1680, i64* %1678, align 8
  %1698 = load i64, i64* %PC, align 8
  %1699 = load i64, i64* bitcast (%one_type* @one to i64*), align 8
  store i64 %1699, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1700 = load i64, i64* %RBP, align 8
  %1701 = add i64 %1700, -88
  %1702 = add i64 %1698, 15
  store i64 %1702, i64* %PC, align 8
  %1703 = inttoptr i64 %1701 to i64*
  %1704 = load i64, i64* %1703, align 8
  %1705 = sitofp i64 %1704 to double
  store double %1705, double* %86, align 1, !tbaa !2452
  %1706 = bitcast i64 %1699 to double
  %1707 = fdiv double %1706, %1705
  store double %1707, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %1708 = add i64 %1700, -48
  %1709 = add i64 %1698, 24
  store i64 %1709, i64* %PC, align 8
  %1710 = inttoptr i64 %1708 to double*
  store double %1707, double* %1710, align 8
  %1711 = load i64, i64* %RBP, align 8
  %1712 = add i64 %1711, -16
  %1713 = load i64, i64* %PC, align 8
  %1714 = add i64 %1713, 5
  store i64 %1714, i64* %PC, align 8
  %1715 = load i64, i64* %75, align 1
  %1716 = inttoptr i64 %1712 to i64*
  store i64 %1715, i64* %1716, align 8
  %1717 = load i64, i64* %RBP, align 8
  %1718 = add i64 %1717, -32
  %1719 = load i64, i64* %PC, align 8
  %1720 = add i64 %1719, 5
  store i64 %1720, i64* %PC, align 8
  %1721 = load i64, i64* %75, align 1
  %1722 = inttoptr i64 %1718 to i64*
  store i64 %1721, i64* %1722, align 8
  %1723 = load i64, i64* %PC, align 8
  %1724 = load i64, i64* bitcast (%one_type* @one to i64*), align 8
  store i64 %1724, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %1725 = load i64, i64* %RBP, align 8
  %1726 = add i64 %1725, -40
  %1727 = add i64 %1723, 14
  store i64 %1727, i64* %PC, align 8
  %1728 = inttoptr i64 %1726 to i64*
  store i64 %1724, i64* %1728, align 8
  %1729 = load i64, i64* %PC, align 8
  %1730 = add i64 %1729, 7893
  %1731 = add i64 %1729, 5
  %1732 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1733 = add i64 %1732, -8
  %1734 = inttoptr i64 %1733 to i64*
  store i64 %1731, i64* %1734, align 8
  store i64 %1733, i64* %RSP, align 8, !tbaa !2428
  store i64 %1730, i64* %PC, align 8, !tbaa !2428
  %1735 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* nonnull %0, i64 %1730, %struct.Memory* %2597)
  %1736 = load i64, i64* %RBP, align 8
  %1737 = add i64 %1736, -72
  %1738 = load i64, i64* %PC, align 8
  %1739 = add i64 %1738, 8
  store i64 %1739, i64* %PC, align 8
  %1740 = inttoptr i64 %1737 to i64*
  store i64 1, i64* %1740, align 8
  %1741 = load i64, i64* %RBP, align 8
  %1742 = add i64 %1741, -116
  %1743 = load i32, i32* %EAX, align 4
  %1744 = load i64, i64* %PC, align 8
  %1745 = add i64 %1744, 3
  store i64 %1745, i64* %PC, align 8
  %1746 = inttoptr i64 %1742 to i32*
  store i32 %1743, i32* %1746, align 4
  %.pre205 = load i64, i64* %PC, align 8
  br label %block_40070b

block_400f2f:                                     ; preds = %block_400e64
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %1747 = add i64 %558, 5793
  %1748 = add i64 %558, 15
  %1749 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1750 = add i64 %1749, -8
  %1751 = inttoptr i64 %1750 to i64*
  store i64 %1748, i64* %1751, align 8
  store i64 %1750, i64* %RSP, align 8, !tbaa !2428
  store i64 %1747, i64* %PC, align 8, !tbaa !2428
  %1752 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* nonnull %0, i64 %1747, %struct.Memory* %4075)
  %1753 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 462), i64* %RDI, align 8, !tbaa !2428
  %1754 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 72) to i64*), align 8
  store i64 %1754, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %1755 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 112) to i64*), align 16
  store i64 %1755, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1756 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 120) to i64*), align 8
  store i64 %1756, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1757 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %1758 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %1759 = fmul double %1757, %1758
  %1760 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %1761 = fsub double %1759, %1760
  store double %1761, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %1762 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %1763 = load double, double* bitcast (%three_type* @three to double*), align 8
  %1764 = fdiv double %1762, %1763
  store double %1764, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %1765 = load i64, i64* %RBP, align 8
  %1766 = add i64 %1765, -24
  %1767 = add i64 %1753, 93
  store i64 %1767, i64* %PC, align 8
  %1768 = inttoptr i64 %1766 to double*
  store double %1764, double* %1768, align 8
  %1769 = load i64, i64* %RBP, align 8
  %1770 = add i64 %1769, -24
  %1771 = load i64, i64* %PC, align 8
  %1772 = add i64 %1771, 5
  store i64 %1772, i64* %PC, align 8
  %1773 = inttoptr i64 %1770 to i64*
  %1774 = load i64, i64* %1773, align 8
  store i64 %1774, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %1775 = add i64 %1771, 10
  store i64 %1775, i64* %PC, align 8
  %1776 = bitcast i64 %1774 to double
  %1777 = inttoptr i64 %1770 to double*
  %1778 = load double, double* %1777, align 8
  %1779 = fmul double %1776, %1778
  store double %1779, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %1780 = add i64 %1769, -40
  %1781 = add i64 %1771, 15
  store i64 %1781, i64* %PC, align 8
  %1782 = inttoptr i64 %1780 to double*
  store double %1779, double* %1782, align 8
  %1783 = load i64, i64* %RBP, align 8
  %1784 = add i64 %1783, -24
  %1785 = load i64, i64* %PC, align 8
  %1786 = add i64 %1785, 5
  store i64 %1786, i64* %PC, align 8
  %1787 = inttoptr i64 %1784 to i64*
  %1788 = load i64, i64* %1787, align 8
  store i64 %1788, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %1789 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %1789, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %1790 = add i64 %1783, -40
  %1791 = add i64 %1785, 19
  store i64 %1791, i64* %PC, align 8
  %.cast161 = bitcast i64 %1789 to double
  %1792 = inttoptr i64 %1790 to double*
  %1793 = load double, double* %1792, align 8
  %1794 = fmul double %.cast161, %1793
  %1795 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %1796 = fsub double %1794, %1795
  store double %1796, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %1797 = add i64 %1785, 33
  store i64 %1797, i64* %PC, align 8
  %1798 = load double, double* %1792, align 8
  %1799 = fmul double %1796, %1798
  %1800 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %1801 = fadd double %1799, %1800
  store double %1801, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %1802 = add i64 %1785, 47
  store i64 %1802, i64* %PC, align 8
  %1803 = load double, double* %1792, align 8
  %1804 = fmul double %1801, %1803
  %1805 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %1806 = fsub double %1804, %1805
  store double %1806, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %1807 = add i64 %1785, 61
  store i64 %1807, i64* %PC, align 8
  %1808 = load double, double* %1792, align 8
  %1809 = fmul double %1806, %1808
  %1810 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %1811 = fadd double %1809, %1810
  store double %1811, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %1812 = add i64 %1785, 75
  store i64 %1812, i64* %PC, align 8
  %1813 = load double, double* %1792, align 8
  %1814 = fmul double %1811, %1813
  %1815 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %1816 = fadd double %1814, %1815
  store double %1816, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %1817 = add i64 %1785, 89
  store i64 %1817, i64* %PC, align 8
  %1818 = load double, double* %1792, align 8
  %1819 = fmul double %1816, %1818
  %1820 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1821 = fadd double %1819, %1820
  store double %1821, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %1822 = bitcast i64 %1788 to double
  %1823 = fmul double %1821, %1822
  store double %1823, double* bitcast (%sa_type* @sa to double*), align 8
  %1824 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %1825 = load double, double* %86, align 1
  %1826 = fdiv double %1824, %1825
  store double %1826, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  store double %1826, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 80) to double*), align 16
  %1827 = load i64, i64* %RBP, align 8
  %1828 = add i64 %1827, -48
  %1829 = add i64 %1785, 138
  store i64 %1829, i64* %PC, align 8
  %1830 = inttoptr i64 %1828 to i64*
  %1831 = load i64, i64* %1830, align 8
  store i64 %1831, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1832 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %1832, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %1833 = load i64, i64* bitcast (%two_type* @two to i64*), align 8
  store i64 %1833, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %1834 = add i64 %1827, -16
  %1835 = add i64 %1785, 161
  store i64 %1835, i64* %PC, align 8
  %.cast162 = bitcast i64 %1833 to double
  %1836 = inttoptr i64 %1834 to double*
  %1837 = load double, double* %1836, align 8
  %1838 = fmul double %.cast162, %1837
  store double %1838, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %1839 = bitcast i64 %1832 to double
  %1840 = fadd double %1839, %1838
  store double %1840, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %1841 = bitcast i64 %1831 to double
  %1842 = fmul double %1841, %1840
  %1843 = fdiv double %1842, %.cast162
  store double %1843, double* bitcast (%sa_type* @sa to double*), align 8
  %1844 = load i64, i64* %81, align 1
  store i64 %1844, i64* bitcast (%sb_type* @sb to i64*), align 8
  %1845 = bitcast i64 %1844 to double
  %1846 = fsub double %1843, %1845
  store double %1846, double* bitcast (%sc_type* @sc to double*), align 8
  %1847 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1848 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 80) to double*), align 16
  %1849 = fdiv double %1847, %1848
  store double %1849, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 88) to double*), align 8
  %1850 = load <2 x i32>, <2 x i32>* %1247, align 1
  %1851 = load <2 x i32>, <2 x i32>* %1249, align 1
  %1852 = extractelement <2 x i32> %1850, i32 0
  store i32 %1852, i32* %1252, align 1, !tbaa !2455
  %1853 = extractelement <2 x i32> %1850, i32 1
  store i32 %1853, i32* %1255, align 1, !tbaa !2455
  %1854 = extractelement <2 x i32> %1851, i32 0
  store i32 %1854, i32* %1257, align 1, !tbaa !2455
  %1855 = extractelement <2 x i32> %1851, i32 1
  store i32 %1855, i32* %1260, align 1, !tbaa !2455
  %1856 = load double, double* %80, align 1
  %1857 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %1858 = fmul double %1856, %1857
  store double %1858, double* %80, align 1, !tbaa !2452
  store i32 %1852, i32* %1264, align 1, !tbaa !2455
  store i32 %1853, i32* %1266, align 1, !tbaa !2455
  store i32 %1854, i32* %1267, align 1, !tbaa !2455
  store i32 %1855, i32* %1269, align 1, !tbaa !2455
  %1859 = load double, double* %86, align 1
  %1860 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %1861 = fmul double %1859, %1860
  store double %1861, double* %86, align 1, !tbaa !2452
  %1862 = bitcast <2 x i32> %1850 to double
  %1863 = fmul double %1862, %1849
  %1864 = load i64, i64* %RBP, align 8
  %1865 = add i64 %1864, -184
  %1866 = add i64 %1785, 291
  store i64 %1866, i64* %PC, align 8
  %1867 = inttoptr i64 %1865 to double*
  store double %1863, double* %1867, align 8
  %1868 = load i64, i64* %PC, align 8
  %1869 = load <2 x i32>, <2 x i32>* %1280, align 1
  %1870 = load <2 x i32>, <2 x i32>* %1282, align 1
  %1871 = extractelement <2 x i32> %1869, i32 0
  store i32 %1871, i32* %187, align 1, !tbaa !2455
  %1872 = extractelement <2 x i32> %1869, i32 1
  store i32 %1872, i32* %189, align 1, !tbaa !2455
  %1873 = extractelement <2 x i32> %1870, i32 0
  store i32 %1873, i32* %190, align 1, !tbaa !2455
  %1874 = extractelement <2 x i32> %1870, i32 1
  store i32 %1874, i32* %192, align 1, !tbaa !2455
  %1875 = load <2 x i32>, <2 x i32>* %1288, align 1
  %1876 = load <2 x i32>, <2 x i32>* %1290, align 1
  %1877 = extractelement <2 x i32> %1875, i32 0
  store i32 %1877, i32* %1252, align 1, !tbaa !2455
  %1878 = extractelement <2 x i32> %1875, i32 1
  store i32 %1878, i32* %1255, align 1, !tbaa !2455
  %1879 = extractelement <2 x i32> %1876, i32 0
  store i32 %1879, i32* %1257, align 1, !tbaa !2455
  %1880 = extractelement <2 x i32> %1876, i32 1
  store i32 %1880, i32* %1260, align 1, !tbaa !2455
  %1881 = load i64, i64* %RBP, align 8
  %1882 = add i64 %1881, -184
  %1883 = add i64 %1868, 14
  store i64 %1883, i64* %PC, align 8
  %1884 = inttoptr i64 %1882 to i64*
  %1885 = load i64, i64* %1884, align 8
  store i64 %1885, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1886 = add i64 %1881, -188
  %1887 = load i32, i32* %EAX, align 4
  %1888 = add i64 %1868, 20
  store i64 %1888, i64* %PC, align 8
  %1889 = inttoptr i64 %1886 to i32*
  store i32 %1887, i32* %1889, align 4
  %1890 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2451
  %1891 = add i64 %1890, -3233
  %1892 = add i64 %1890, 7
  %1893 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1894 = add i64 %1893, -8
  %1895 = inttoptr i64 %1894 to i64*
  store i64 %1892, i64* %1895, align 8
  store i64 %1894, i64* %RSP, align 8, !tbaa !2428
  store i64 %1891, i64* %PC, align 8, !tbaa !2428
  %1896 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1752)
  %1897 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %1898 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1898, align 1, !tbaa !2454
  store i64 -9223372036854775808, i64* %RCX, align 8, !tbaa !2428
  %1899 = load i64, i64* bitcast (%A3_type* @A3 to i64*), align 8
  %1900 = xor i64 %1899, -9223372036854775808
  store i64 %1900, i64* bitcast (%A3_type* @A3 to i64*), align 8
  %1901 = load i64, i64* bitcast (%A5_type* @A5 to i64*), align 8
  %1902 = xor i64 %1901, -9223372036854775808
  store i64 %1902, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %23, align 1, !tbaa !2432
  %1903 = trunc i64 %1901 to i32
  %1904 = and i32 %1903, 255
  %1905 = tail call i32 @llvm.ctpop.i32(i32 %1904) #9
  %1906 = trunc i32 %1905 to i8
  %1907 = and i8 %1906, 1
  %1908 = xor i8 %1907, 1
  store i8 %1908, i8* %30, align 1, !tbaa !2446
  %1909 = icmp eq i64 %1902, 0
  %1910 = zext i1 %1909 to i8
  store i8 %1910, i8* %38, align 1, !tbaa !2447
  %1911 = lshr i64 %1902, 63
  %1912 = trunc i64 %1911 to i8
  store i8 %1912, i8* %41, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %35, align 1, !tbaa !2450
  store i64 %1902, i64* bitcast (%A5_type* @A5 to i64*), align 8
  %1913 = load i64, i64* bitcast (%piref_type* @piref to i64*), align 8
  store i64 %1913, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1914 = load i64, i64* bitcast (%three_type* @three to i64*), align 8
  store i64 %1914, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1915 = load i64, i64* %RBP, align 8
  %1916 = add i64 %1915, -80
  %1917 = add i64 %1897, 109
  store i64 %1917, i64* %PC, align 8
  %1918 = inttoptr i64 %1916 to i64*
  %1919 = load i64, i64* %1918, align 8
  %1920 = sitofp i64 %1919 to double
  store double %1920, double* %91, align 1, !tbaa !2452
  %1921 = bitcast i64 %1914 to double
  %1922 = fmul double %1920, %1921
  store double %1922, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1923 = bitcast i64 %1913 to double
  %1924 = fdiv double %1923, %1922
  store double %1924, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %1925 = add i64 %1915, -48
  %1926 = add i64 %1897, 122
  store i64 %1926, i64* %PC, align 8
  %1927 = inttoptr i64 %1925 to double*
  store double %1924, double* %1927, align 8
  %1928 = load i64, i64* %RBP, align 8
  %1929 = add i64 %1928, -16
  %1930 = load i64, i64* %PC, align 8
  %1931 = add i64 %1930, 5
  store i64 %1931, i64* %PC, align 8
  %1932 = load i64, i64* %75, align 1
  %1933 = inttoptr i64 %1929 to i64*
  store i64 %1932, i64* %1933, align 8
  %1934 = load i64, i64* %RBP, align 8
  %1935 = add i64 %1934, -32
  %1936 = load i64, i64* %PC, align 8
  %1937 = add i64 %1936, 5
  store i64 %1937, i64* %PC, align 8
  %1938 = load i64, i64* %75, align 1
  %1939 = inttoptr i64 %1935 to i64*
  store i64 %1938, i64* %1939, align 8
  %1940 = load i64, i64* %RBP, align 8
  %1941 = add i64 %1940, -192
  %1942 = load i32, i32* %EAX, align 4
  %1943 = load i64, i64* %PC, align 8
  %1944 = add i64 %1943, 6
  store i64 %1944, i64* %PC, align 8
  %1945 = inttoptr i64 %1941 to i32*
  store i32 %1942, i32* %1945, align 4
  %1946 = load i64, i64* %PC, align 8
  %1947 = add i64 %1946, 5214
  %1948 = add i64 %1946, 5
  %1949 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1950 = add i64 %1949, -8
  %1951 = inttoptr i64 %1950 to i64*
  store i64 %1948, i64* %1951, align 8
  store i64 %1950, i64* %RSP, align 8, !tbaa !2428
  store i64 %1947, i64* %PC, align 8, !tbaa !2428
  %1952 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* nonnull %0, i64 %1947, %struct.Memory* %1896)
  %1953 = load i64, i64* %RBP, align 8
  %1954 = add i64 %1953, -72
  %1955 = load i64, i64* %PC, align 8
  %1956 = add i64 %1955, 8
  store i64 %1956, i64* %PC, align 8
  %1957 = inttoptr i64 %1954 to i64*
  store i64 1, i64* %1957, align 8
  %1958 = load i64, i64* %RBP, align 8
  %1959 = add i64 %1958, -196
  %1960 = load i32, i32* %EAX, align 4
  %1961 = load i64, i64* %PC, align 8
  %1962 = add i64 %1961, 6
  store i64 %1962, i64* %PC, align 8
  %1963 = inttoptr i64 %1959 to i32*
  store i32 %1960, i32* %1963, align 4
  %.pre213 = load i64, i64* %PC, align 8
  br label %block_401185

block_400ade:                                     ; preds = %block_400aec, %block_4008c4
  %1964 = phi i64 [ %3061, %block_400aec ], [ %.pre209, %block_4008c4 ]
  %1965 = load i64, i64* %RBP, align 8
  %1966 = add i64 %1965, -72
  %1967 = add i64 %1964, 4
  store i64 %1967, i64* %PC, align 8
  %1968 = inttoptr i64 %1966 to i64*
  %1969 = load i64, i64* %1968, align 8
  store i64 %1969, i64* %RAX, align 8, !tbaa !2428
  %1970 = add i64 %1965, -80
  %1971 = add i64 %1964, 8
  store i64 %1971, i64* %PC, align 8
  %1972 = inttoptr i64 %1970 to i64*
  %1973 = load i64, i64* %1972, align 8
  %1974 = sub i64 %1969, %1973
  %1975 = icmp ult i64 %1969, %1973
  %1976 = zext i1 %1975 to i8
  store i8 %1976, i8* %23, align 1, !tbaa !2432
  %1977 = trunc i64 %1974 to i32
  %1978 = and i32 %1977, 255
  %1979 = tail call i32 @llvm.ctpop.i32(i32 %1978) #9
  %1980 = trunc i32 %1979 to i8
  %1981 = and i8 %1980, 1
  %1982 = xor i8 %1981, 1
  store i8 %1982, i8* %30, align 1, !tbaa !2446
  %1983 = xor i64 %1973, %1969
  %1984 = xor i64 %1983, %1974
  %1985 = lshr i64 %1984, 4
  %1986 = trunc i64 %1985 to i8
  %1987 = and i8 %1986, 1
  store i8 %1987, i8* %35, align 1, !tbaa !2450
  %1988 = icmp eq i64 %1974, 0
  %1989 = zext i1 %1988 to i8
  store i8 %1989, i8* %38, align 1, !tbaa !2447
  %1990 = lshr i64 %1974, 63
  %1991 = trunc i64 %1990 to i8
  store i8 %1991, i8* %41, align 1, !tbaa !2448
  %1992 = lshr i64 %1969, 63
  %1993 = lshr i64 %1973, 63
  %1994 = xor i64 %1993, %1992
  %1995 = xor i64 %1990, %1992
  %1996 = add nuw nsw i64 %1995, %1994
  %1997 = icmp eq i64 %1996, 2
  %1998 = zext i1 %1997 to i8
  store i8 %1998, i8* %47, align 1, !tbaa !2449
  %1999 = icmp ne i8 %1991, 0
  %2000 = xor i1 %1999, %1997
  %.demorgan219 = or i1 %1988, %2000
  %.v234 = select i1 %.demorgan219, i64 14, i64 87
  %2001 = add i64 %1964, %.v234
  %2002 = add i64 %2001, 10
  store i64 %2002, i64* %PC, align 8
  br i1 %.demorgan219, label %block_400aec, label %block_400b35

block_401f87:                                     ; preds = %block_401f72
  %2003 = add i64 %2568, 6
  store i64 %2003, i64* %PC, align 8
  %2004 = load i64, i64* %2534, align 8
  %2005 = sitofp i64 %2004 to double
  store double %2005, double* %74, align 1, !tbaa !2452
  %2006 = add i64 %2531, -48
  %2007 = add i64 %2568, 11
  store i64 %2007, i64* %PC, align 8
  %2008 = inttoptr i64 %2006 to double*
  %2009 = load double, double* %2008, align 8
  %2010 = fmul double %2005, %2009
  store double %2010, double* %74, align 1, !tbaa !2452
  %2011 = add i64 %2531, -24
  %2012 = add i64 %2568, 16
  store i64 %2012, i64* %PC, align 8
  %2013 = inttoptr i64 %2011 to double*
  store double %2010, double* %2013, align 8
  %2014 = load i64, i64* %RBP, align 8
  %2015 = add i64 %2014, -24
  %2016 = load i64, i64* %PC, align 8
  %2017 = add i64 %2016, 5
  store i64 %2017, i64* %PC, align 8
  %2018 = inttoptr i64 %2015 to i64*
  %2019 = load i64, i64* %2018, align 8
  store i64 %2019, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %2020 = add i64 %2016, 10
  store i64 %2020, i64* %PC, align 8
  %2021 = bitcast i64 %2019 to double
  %2022 = inttoptr i64 %2015 to double*
  %2023 = load double, double* %2022, align 8
  %2024 = fmul double %2021, %2023
  store double %2024, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %2025 = add i64 %2014, -40
  %2026 = add i64 %2016, 15
  store i64 %2026, i64* %PC, align 8
  %2027 = inttoptr i64 %2025 to double*
  store double %2024, double* %2027, align 8
  %2028 = load i64, i64* %RBP, align 8
  %2029 = add i64 %2028, -40
  %2030 = load i64, i64* %PC, align 8
  %2031 = add i64 %2030, 5
  store i64 %2031, i64* %PC, align 8
  %2032 = inttoptr i64 %2029 to i64*
  %2033 = load i64, i64* %2032, align 8
  store i64 %2033, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %2034 = add i64 %2030, 10
  store i64 %2034, i64* %PC, align 8
  %2035 = load i64, i64* %2032, align 8
  store i64 %2035, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %2036 = add i64 %2030, 15
  store i64 %2036, i64* %PC, align 8
  %2037 = load i64, i64* %2032, align 8
  store i64 %2037, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %2038 = add i64 %2030, 20
  store i64 %2038, i64* %PC, align 8
  %2039 = load i64, i64* %2032, align 8
  store i64 %2039, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %2040 = add i64 %2030, 25
  store i64 %2040, i64* %PC, align 8
  %2041 = load i64, i64* %2032, align 8
  store i64 %2041, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %2042 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  store i64 %2042, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %2043 = add i64 %2030, 39
  store i64 %2043, i64* %PC, align 8
  %.cast176 = bitcast i64 %2042 to double
  %2044 = inttoptr i64 %2029 to double*
  %2045 = load double, double* %2044, align 8
  %2046 = fmul double %.cast176, %2045
  %2047 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %2048 = fadd double %2046, %2047
  store double %2048, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %2049 = bitcast i64 %2041 to double
  %2050 = fmul double %2048, %2049
  %2051 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %2052 = fadd double %2050, %2051
  store double %2052, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2053 = bitcast i64 %2039 to double
  %2054 = fmul double %2052, %2053
  %2055 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %2056 = fadd double %2054, %2055
  store double %2056, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %2057 = bitcast i64 %2037 to double
  %2058 = fmul double %2056, %2057
  %2059 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %2060 = fadd double %2058, %2059
  store double %2060, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %2061 = bitcast i64 %2035 to double
  %2062 = fmul double %2060, %2061
  %2063 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %2064 = fadd double %2062, %2063
  store double %2064, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %2065 = bitcast i64 %2033 to double
  %2066 = fmul double %2064, %2065
  %2067 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2068 = fadd double %2066, %2067
  store double %2068, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %2069 = load i64, i64* %RBP, align 8
  %2070 = add i64 %2069, -32
  %2071 = add i64 %2030, 118
  store i64 %2071, i64* %PC, align 8
  %2072 = inttoptr i64 %2070 to double*
  store double %2068, double* %2072, align 8
  %2073 = load i64, i64* %RBP, align 8
  %2074 = add i64 %2073, -16
  %2075 = load i64, i64* %PC, align 8
  %2076 = add i64 %2075, 5
  store i64 %2076, i64* %PC, align 8
  %2077 = inttoptr i64 %2074 to i64*
  %2078 = load i64, i64* %2077, align 8
  store i64 %2078, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %2079 = add i64 %2073, -32
  %2080 = add i64 %2075, 10
  store i64 %2080, i64* %PC, align 8
  %2081 = inttoptr i64 %2079 to i64*
  %2082 = load i64, i64* %2081, align 8
  store i64 %2082, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %2083 = add i64 %2075, 15
  store i64 %2083, i64* %PC, align 8
  %2084 = bitcast i64 %2082 to double
  %2085 = inttoptr i64 %2079 to double*
  %2086 = load double, double* %2085, align 8
  %2087 = fmul double %2084, %2086
  store double %2087, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %2088 = add i64 %2073, -24
  %2089 = add i64 %2075, 20
  store i64 %2089, i64* %PC, align 8
  %2090 = inttoptr i64 %2088 to double*
  %2091 = load double, double* %2090, align 8
  %2092 = fmul double %2087, %2091
  store double %2092, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %2093 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %2093, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %2094 = add i64 %2073, -40
  %2095 = add i64 %2075, 34
  store i64 %2095, i64* %PC, align 8
  %.cast177 = bitcast i64 %2093 to double
  %2096 = inttoptr i64 %2094 to double*
  %2097 = load double, double* %2096, align 8
  %2098 = fmul double %.cast177, %2097
  %2099 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %2100 = fadd double %2098, %2099
  store double %2100, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %2101 = add i64 %2075, 48
  store i64 %2101, i64* %PC, align 8
  %2102 = load double, double* %2096, align 8
  %2103 = fmul double %2100, %2102
  %2104 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %2105 = fadd double %2103, %2104
  store double %2105, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %2106 = add i64 %2075, 62
  store i64 %2106, i64* %PC, align 8
  %2107 = load double, double* %2096, align 8
  %2108 = fmul double %2105, %2107
  %2109 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %2110 = fadd double %2108, %2109
  store double %2110, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %2111 = add i64 %2075, 76
  store i64 %2111, i64* %PC, align 8
  %2112 = load double, double* %2096, align 8
  %2113 = fmul double %2110, %2112
  %2114 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %2115 = fadd double %2113, %2114
  store double %2115, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %2116 = add i64 %2075, 90
  store i64 %2116, i64* %PC, align 8
  %2117 = load double, double* %2096, align 8
  %2118 = fmul double %2115, %2117
  %2119 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %2120 = fadd double %2118, %2119
  store double %2120, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %2121 = load i64, i64* %RBP, align 8
  %2122 = add i64 %2121, -40
  %2123 = add i64 %2075, 104
  store i64 %2123, i64* %PC, align 8
  %2124 = inttoptr i64 %2122 to double*
  %2125 = load double, double* %2124, align 8
  %2126 = fmul double %2120, %2125
  %2127 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2128 = fadd double %2126, %2127
  store double %2128, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %2129 = fmul double %2128, %2092
  store double %2129, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %2130 = load double, double* %74, align 1
  %2131 = fadd double %2129, %2130
  store double %2131, double* %74, align 1, !tbaa !2452
  %2132 = add i64 %2121, -16
  %2133 = add i64 %2075, 126
  store i64 %2133, i64* %PC, align 8
  %2134 = inttoptr i64 %2132 to double*
  store double %2131, double* %2134, align 8
  %2135 = load i64, i64* %RBP, align 8
  %2136 = add i64 %2135, -72
  %2137 = load i64, i64* %PC, align 8
  %2138 = add i64 %2137, 4
  store i64 %2138, i64* %PC, align 8
  %2139 = inttoptr i64 %2136 to i64*
  %2140 = load i64, i64* %2139, align 8
  %2141 = add i64 %2140, 1
  store i64 %2141, i64* %RAX, align 8, !tbaa !2428
  %2142 = icmp eq i64 %2140, -1
  %2143 = icmp eq i64 %2141, 0
  %2144 = or i1 %2142, %2143
  %2145 = zext i1 %2144 to i8
  store i8 %2145, i8* %23, align 1, !tbaa !2432
  %2146 = trunc i64 %2141 to i32
  %2147 = and i32 %2146, 255
  %2148 = tail call i32 @llvm.ctpop.i32(i32 %2147) #9
  %2149 = trunc i32 %2148 to i8
  %2150 = and i8 %2149, 1
  %2151 = xor i8 %2150, 1
  store i8 %2151, i8* %30, align 1, !tbaa !2446
  %2152 = xor i64 %2141, %2140
  %2153 = lshr i64 %2152, 4
  %2154 = trunc i64 %2153 to i8
  %2155 = and i8 %2154, 1
  store i8 %2155, i8* %35, align 1, !tbaa !2450
  %2156 = zext i1 %2143 to i8
  store i8 %2156, i8* %38, align 1, !tbaa !2447
  %2157 = lshr i64 %2141, 63
  %2158 = trunc i64 %2157 to i8
  store i8 %2158, i8* %41, align 1, !tbaa !2448
  %2159 = lshr i64 %2140, 63
  %2160 = xor i64 %2157, %2159
  %2161 = add nuw nsw i64 %2160, %2157
  %2162 = icmp eq i64 %2161, 2
  %2163 = zext i1 %2162 to i8
  store i8 %2163, i8* %47, align 1, !tbaa !2449
  %2164 = add i64 %2137, 12
  store i64 %2164, i64* %PC, align 8
  store i64 %2141, i64* %2139, align 8
  %2165 = load i64, i64* %PC, align 8
  %2166 = add i64 %2165, -308
  store i64 %2166, i64* %PC, align 8, !tbaa !2428
  br label %block_401f72

block_401627:                                     ; preds = %block_4014ef
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %2167 = add i64 %987, 4009
  %2168 = add i64 %987, 15
  %2169 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2170 = add i64 %2169, -8
  %2171 = inttoptr i64 %2170 to i64*
  store i64 %2168, i64* %2171, align 8
  store i64 %2170, i64* %RSP, align 8, !tbaa !2428
  store i64 %2167, i64* %PC, align 8, !tbaa !2428
  %2172 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* nonnull %0, i64 %2167, %struct.Memory* %1663)
  %2173 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 534), i64* %RDI, align 8, !tbaa !2428
  %2174 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 72) to i64*), align 8
  store i64 %2174, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %2175 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 136) to i64*), align 8
  store i64 %2175, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %2176 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 144) to i64*), align 16
  store i64 %2176, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %2177 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %2178 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %2179 = fmul double %2177, %2178
  %2180 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %2181 = fsub double %2179, %2180
  store double %2181, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %2182 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %2183 = load double, double* bitcast (%three_type* @three to double*), align 8
  %2184 = fdiv double %2182, %2183
  store double %2184, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %2185 = load i64, i64* %RBP, align 8
  %2186 = add i64 %2185, -24
  %2187 = add i64 %2173, 93
  store i64 %2187, i64* %PC, align 8
  %2188 = inttoptr i64 %2186 to double*
  store double %2184, double* %2188, align 8
  %2189 = load i64, i64* %RBP, align 8
  %2190 = add i64 %2189, -24
  %2191 = load i64, i64* %PC, align 8
  %2192 = add i64 %2191, 5
  store i64 %2192, i64* %PC, align 8
  %2193 = inttoptr i64 %2190 to i64*
  %2194 = load i64, i64* %2193, align 8
  store i64 %2194, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %2195 = add i64 %2191, 10
  store i64 %2195, i64* %PC, align 8
  %2196 = bitcast i64 %2194 to double
  %2197 = inttoptr i64 %2190 to double*
  %2198 = load double, double* %2197, align 8
  %2199 = fmul double %2196, %2198
  store double %2199, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %2200 = add i64 %2189, -40
  %2201 = add i64 %2191, 15
  store i64 %2201, i64* %PC, align 8
  %2202 = inttoptr i64 %2200 to double*
  store double %2199, double* %2202, align 8
  %2203 = load i64, i64* %RBP, align 8
  %2204 = add i64 %2203, -24
  %2205 = load i64, i64* %PC, align 8
  %2206 = add i64 %2205, 5
  store i64 %2206, i64* %PC, align 8
  %2207 = inttoptr i64 %2204 to i64*
  %2208 = load i64, i64* %2207, align 8
  store i64 %2208, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %2209 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %2209, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %2210 = add i64 %2203, -40
  %2211 = add i64 %2205, 19
  store i64 %2211, i64* %PC, align 8
  %.cast168 = bitcast i64 %2209 to double
  %2212 = inttoptr i64 %2210 to double*
  %2213 = load double, double* %2212, align 8
  %2214 = fmul double %.cast168, %2213
  %2215 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %2216 = fadd double %2214, %2215
  store double %2216, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2217 = add i64 %2205, 33
  store i64 %2217, i64* %PC, align 8
  %2218 = load double, double* %2212, align 8
  %2219 = fmul double %2216, %2218
  %2220 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %2221 = fadd double %2219, %2220
  store double %2221, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2222 = add i64 %2205, 47
  store i64 %2222, i64* %PC, align 8
  %2223 = load double, double* %2212, align 8
  %2224 = fmul double %2221, %2223
  %2225 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %2226 = fadd double %2224, %2225
  store double %2226, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2227 = add i64 %2205, 61
  store i64 %2227, i64* %PC, align 8
  %2228 = load double, double* %2212, align 8
  %2229 = fmul double %2226, %2228
  %2230 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %2231 = fadd double %2229, %2230
  store double %2231, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2232 = add i64 %2205, 75
  store i64 %2232, i64* %PC, align 8
  %2233 = load double, double* %2212, align 8
  %2234 = fmul double %2231, %2233
  %2235 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %2236 = fadd double %2234, %2235
  store double %2236, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2237 = add i64 %2205, 89
  store i64 %2237, i64* %PC, align 8
  %2238 = load double, double* %2212, align 8
  %2239 = fmul double %2236, %2238
  %2240 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2241 = fadd double %2239, %2240
  store double %2241, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2242 = bitcast i64 %2208 to double
  %2243 = fmul double %2241, %2242
  store double %2243, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  store double %2243, double* bitcast (%sa_type* @sa to double*), align 8
  %2244 = add i64 %2205, 116
  store i64 %2244, i64* %PC, align 8
  %2245 = inttoptr i64 %2210 to i64*
  %2246 = load i64, i64* %2245, align 8
  store i64 %2246, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %2247 = load i64, i64* %RBP, align 8
  %2248 = add i64 %2247, -40
  %2249 = add i64 %2205, 121
  store i64 %2249, i64* %PC, align 8
  %2250 = inttoptr i64 %2248 to i64*
  %2251 = load i64, i64* %2250, align 8
  store i64 %2251, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %2252 = add i64 %2205, 126
  store i64 %2252, i64* %PC, align 8
  %2253 = load i64, i64* %2250, align 8
  store i64 %2253, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %2254 = add i64 %2205, 131
  store i64 %2254, i64* %PC, align 8
  %2255 = load i64, i64* %2250, align 8
  store i64 %2255, i64* %107, align 1, !tbaa !2452
  store double 0.000000e+00, double* %109, align 1, !tbaa !2452
  %2256 = add i64 %2205, 136
  store i64 %2256, i64* %PC, align 8
  %2257 = load i64, i64* %2250, align 8
  store i64 %2257, i64* %209, align 1, !tbaa !2452
  store double 0.000000e+00, double* %211, align 1, !tbaa !2452
  %2258 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  %2259 = bitcast %union.VectorReg* %13 to double*
  %2260 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %13, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2258, i64* %2260, align 1, !tbaa !2452
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1
  %2262 = bitcast i64* %2261 to double*
  store double 0.000000e+00, double* %2262, align 1, !tbaa !2452
  %2263 = add i64 %2205, 152
  store i64 %2263, i64* %PC, align 8
  %2264 = bitcast i64 %2258 to double
  %2265 = inttoptr i64 %2248 to double*
  %2266 = load double, double* %2265, align 8
  %2267 = fmul double %2264, %2266
  %2268 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %2269 = fadd double %2267, %2268
  store double %2269, double* %2259, align 1, !tbaa !2452
  store i64 0, i64* %2261, align 1, !tbaa !2452
  %2270 = bitcast i64 %2257 to double
  %2271 = fmul double %2269, %2270
  %2272 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %2273 = fadd double %2271, %2272
  store double %2273, double* %121, align 1, !tbaa !2452
  store i64 0, i64* %210, align 1, !tbaa !2452
  %2274 = bitcast i64 %2255 to double
  %2275 = fmul double %2273, %2274
  %2276 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %2277 = fadd double %2275, %2276
  store double %2277, double* %106, align 1, !tbaa !2452
  store i64 0, i64* %108, align 1, !tbaa !2452
  %2278 = bitcast i64 %2253 to double
  %2279 = fmul double %2277, %2278
  %2280 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %2281 = fadd double %2279, %2280
  store double %2281, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %2282 = bitcast i64 %2251 to double
  %2283 = fmul double %2281, %2282
  %2284 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %2285 = fadd double %2283, %2284
  store double %2285, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2286 = bitcast i64 %2246 to double
  %2287 = fmul double %2285, %2286
  %2288 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2289 = fadd double %2287, %2288
  store double %2289, double* bitcast (%sb_type* @sb to double*), align 8
  %2290 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %2291 = fdiv double %2290, %2289
  store double %2291, double* bitcast (%sa_type* @sa to double*), align 8
  %2292 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %2293 = load double, double* %86, align 1
  %2294 = fdiv double %2292, %2293
  store double %2294, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  store double %2294, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 128) to double*), align 16
  %2295 = load i64, i64* %RBP, align 8
  %2296 = add i64 %2295, -48
  %2297 = add i64 %2205, 291
  store i64 %2297, i64* %PC, align 8
  %2298 = inttoptr i64 %2296 to i64*
  %2299 = load i64, i64* %2298, align 8
  store i64 %2299, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %2300 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %2300, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %2301 = load i64, i64* bitcast (%two_type* @two to i64*), align 8
  store i64 %2301, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %2302 = add i64 %2295, -16
  %2303 = add i64 %2205, 314
  store i64 %2303, i64* %PC, align 8
  %.cast169 = bitcast i64 %2301 to double
  %2304 = inttoptr i64 %2302 to double*
  %2305 = load double, double* %2304, align 8
  %2306 = fmul double %.cast169, %2305
  store double %2306, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2307 = bitcast i64 %2300 to double
  %2308 = fadd double %2307, %2306
  store double %2308, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %2309 = bitcast i64 %2299 to double
  %2310 = fmul double %2309, %2308
  %2311 = fdiv double %2310, %.cast169
  store double %2311, double* bitcast (%sa_type* @sa to double*), align 8
  %2312 = load i64, i64* %81, align 1
  store i64 %2312, i64* bitcast (%sb_type* @sb to i64*), align 8
  %2313 = bitcast i64 %2312 to double
  %2314 = fsub double %2311, %2313
  store double %2314, double* bitcast (%sc_type* @sc to double*), align 8
  %2315 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2316 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 128) to double*), align 16
  %2317 = fdiv double %2315, %2316
  store double %2317, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 136) to double*), align 8
  %2318 = load <2 x i32>, <2 x i32>* %1247, align 1
  %2319 = load <2 x i32>, <2 x i32>* %1249, align 1
  %2320 = extractelement <2 x i32> %2318, i32 0
  store i32 %2320, i32* %1252, align 1, !tbaa !2455
  %2321 = extractelement <2 x i32> %2318, i32 1
  store i32 %2321, i32* %1255, align 1, !tbaa !2455
  %2322 = extractelement <2 x i32> %2319, i32 0
  store i32 %2322, i32* %1257, align 1, !tbaa !2455
  %2323 = extractelement <2 x i32> %2319, i32 1
  store i32 %2323, i32* %1260, align 1, !tbaa !2455
  %2324 = load double, double* %80, align 1
  %2325 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %2326 = fmul double %2324, %2325
  store double %2326, double* %80, align 1, !tbaa !2452
  store i32 %2320, i32* %1264, align 1, !tbaa !2455
  store i32 %2321, i32* %1266, align 1, !tbaa !2455
  store i32 %2322, i32* %1267, align 1, !tbaa !2455
  store i32 %2323, i32* %1269, align 1, !tbaa !2455
  %2327 = load double, double* %86, align 1
  %2328 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %2329 = fmul double %2327, %2328
  store double %2329, double* %86, align 1, !tbaa !2452
  %2330 = bitcast <2 x i32> %2318 to double
  %2331 = fmul double %2330, %2317
  %2332 = load i64, i64* %RBP, align 8
  %2333 = add i64 %2332, -232
  %2334 = add i64 %2205, 444
  store i64 %2334, i64* %PC, align 8
  %2335 = inttoptr i64 %2333 to double*
  store double %2331, double* %2335, align 8
  %2336 = load i64, i64* %PC, align 8
  %2337 = load <2 x i32>, <2 x i32>* %1280, align 1
  %2338 = load <2 x i32>, <2 x i32>* %1282, align 1
  %2339 = extractelement <2 x i32> %2337, i32 0
  store i32 %2339, i32* %187, align 1, !tbaa !2455
  %2340 = extractelement <2 x i32> %2337, i32 1
  store i32 %2340, i32* %189, align 1, !tbaa !2455
  %2341 = extractelement <2 x i32> %2338, i32 0
  store i32 %2341, i32* %190, align 1, !tbaa !2455
  %2342 = extractelement <2 x i32> %2338, i32 1
  store i32 %2342, i32* %192, align 1, !tbaa !2455
  %2343 = load <2 x i32>, <2 x i32>* %1288, align 1
  %2344 = load <2 x i32>, <2 x i32>* %1290, align 1
  %2345 = extractelement <2 x i32> %2343, i32 0
  store i32 %2345, i32* %1252, align 1, !tbaa !2455
  %2346 = extractelement <2 x i32> %2343, i32 1
  store i32 %2346, i32* %1255, align 1, !tbaa !2455
  %2347 = extractelement <2 x i32> %2344, i32 0
  store i32 %2347, i32* %1257, align 1, !tbaa !2455
  %2348 = extractelement <2 x i32> %2344, i32 1
  store i32 %2348, i32* %1260, align 1, !tbaa !2455
  %2349 = load i64, i64* %RBP, align 8
  %2350 = add i64 %2349, -232
  %2351 = add i64 %2336, 14
  store i64 %2351, i64* %PC, align 8
  %2352 = inttoptr i64 %2350 to i64*
  %2353 = load i64, i64* %2352, align 8
  store i64 %2353, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %2354 = add i64 %2349, -236
  %2355 = load i32, i32* %EAX, align 4
  %2356 = add i64 %2336, 20
  store i64 %2356, i64* %PC, align 8
  %2357 = inttoptr i64 %2354 to i32*
  store i32 %2355, i32* %2357, align 4
  %2358 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2451
  %2359 = add i64 %2358, -5170
  %2360 = add i64 %2358, 7
  %2361 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2362 = add i64 %2361, -8
  %2363 = inttoptr i64 %2362 to i64*
  store i64 %2360, i64* %2363, align 8
  store i64 %2362, i64* %RSP, align 8, !tbaa !2428
  store i64 %2359, i64* %PC, align 8, !tbaa !2428
  %2364 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %2172)
  %2365 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %2366 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %2366, align 1, !tbaa !2454
  %2367 = load i64, i64* bitcast (%piref_type* @piref to i64*), align 8
  store i64 %2367, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %2368 = load i64, i64* bitcast (%four_type* @four to i64*), align 8
  store i64 %2368, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %2369 = load i64, i64* %RBP, align 8
  %2370 = add i64 %2369, -80
  %2371 = add i64 %2365, 37
  store i64 %2371, i64* %PC, align 8
  %2372 = inttoptr i64 %2370 to i64*
  %2373 = load i64, i64* %2372, align 8
  %2374 = sitofp i64 %2373 to double
  store double %2374, double* %91, align 1, !tbaa !2452
  %2375 = bitcast i64 %2368 to double
  %2376 = fmul double %2374, %2375
  store double %2376, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %2377 = bitcast i64 %2367 to double
  %2378 = fdiv double %2377, %2376
  store double %2378, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %2379 = add i64 %2369, -48
  %2380 = add i64 %2365, 50
  store i64 %2380, i64* %PC, align 8
  %2381 = inttoptr i64 %2379 to double*
  store double %2378, double* %2381, align 8
  %2382 = load i64, i64* %RBP, align 8
  %2383 = add i64 %2382, -16
  %2384 = load i64, i64* %PC, align 8
  %2385 = add i64 %2384, 5
  store i64 %2385, i64* %PC, align 8
  %2386 = load i64, i64* %75, align 1
  %2387 = inttoptr i64 %2383 to i64*
  store i64 %2386, i64* %2387, align 8
  %2388 = load i64, i64* %RBP, align 8
  %2389 = add i64 %2388, -32
  %2390 = load i64, i64* %PC, align 8
  %2391 = add i64 %2390, 5
  store i64 %2391, i64* %PC, align 8
  %2392 = load i64, i64* %75, align 1
  %2393 = inttoptr i64 %2389 to i64*
  store i64 %2392, i64* %2393, align 8
  %2394 = load i64, i64* %RBP, align 8
  %2395 = add i64 %2394, -240
  %2396 = load i32, i32* %EAX, align 4
  %2397 = load i64, i64* %PC, align 8
  %2398 = add i64 %2397, 6
  store i64 %2398, i64* %PC, align 8
  %2399 = inttoptr i64 %2395 to i32*
  store i32 %2396, i32* %2399, align 4
  %2400 = load i64, i64* %PC, align 8
  %2401 = add i64 %2400, 3349
  %2402 = add i64 %2400, 5
  %2403 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2404 = add i64 %2403, -8
  %2405 = inttoptr i64 %2404 to i64*
  store i64 %2402, i64* %2405, align 8
  store i64 %2404, i64* %RSP, align 8, !tbaa !2428
  store i64 %2401, i64* %PC, align 8, !tbaa !2428
  %2406 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* nonnull %0, i64 %2401, %struct.Memory* %2364)
  %2407 = load i64, i64* %RBP, align 8
  %2408 = add i64 %2407, -72
  %2409 = load i64, i64* %PC, align 8
  %2410 = add i64 %2409, 8
  store i64 %2410, i64* %PC, align 8
  %2411 = inttoptr i64 %2408 to i64*
  store i64 1, i64* %2411, align 8
  %2412 = load i64, i64* %RBP, align 8
  %2413 = add i64 %2412, -244
  %2414 = load i32, i32* %EAX, align 4
  %2415 = load i64, i64* %PC, align 8
  %2416 = add i64 %2415, 6
  store i64 %2416, i64* %PC, align 8
  %2417 = inttoptr i64 %2413 to i32*
  store i32 %2414, i32* %2417, align 4
  %.pre215 = load i64, i64* %PC, align 8
  br label %block_4018ce

block_400720:                                     ; preds = %block_40070b
  %2418 = add i64 %3263, -32
  %2419 = add i64 %3300, 5
  store i64 %2419, i64* %PC, align 8
  %2420 = inttoptr i64 %2418 to i64*
  %2421 = load i64, i64* %2420, align 8
  store i64 %2421, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %2422 = add i64 %3263, -40
  %2423 = add i64 %3300, 10
  store i64 %2423, i64* %PC, align 8
  %2424 = bitcast i64 %2421 to double
  %2425 = inttoptr i64 %2422 to double*
  %2426 = load double, double* %2425, align 8
  %2427 = fadd double %2424, %2426
  store double %2427, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %2428 = add i64 %3300, 15
  store i64 %2428, i64* %PC, align 8
  %2429 = inttoptr i64 %2418 to double*
  store double %2427, double* %2429, align 8
  %2430 = load i64, i64* %RBP, align 8
  %2431 = add i64 %2430, -32
  %2432 = load i64, i64* %PC, align 8
  %2433 = add i64 %2432, 5
  store i64 %2433, i64* %PC, align 8
  %2434 = inttoptr i64 %2431 to i64*
  %2435 = load i64, i64* %2434, align 8
  store i64 %2435, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %2436 = add i64 %2430, -48
  %2437 = add i64 %2432, 10
  store i64 %2437, i64* %PC, align 8
  %2438 = bitcast i64 %2435 to double
  %2439 = inttoptr i64 %2436 to double*
  %2440 = load double, double* %2439, align 8
  %2441 = fmul double %2438, %2440
  store double %2441, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %2442 = add i64 %2430, -24
  %2443 = add i64 %2432, 15
  store i64 %2443, i64* %PC, align 8
  %2444 = inttoptr i64 %2442 to double*
  store double %2441, double* %2444, align 8
  %2445 = load i64, i64* %RBP, align 8
  %2446 = add i64 %2445, -16
  %2447 = load i64, i64* %PC, align 8
  %2448 = add i64 %2447, 5
  store i64 %2448, i64* %PC, align 8
  %2449 = inttoptr i64 %2446 to i64*
  %2450 = load i64, i64* %2449, align 8
  store i64 %2450, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %2451 = load i64, i64* bitcast (%D1_0_type* @D1_0 to i64*), align 8
  store i64 %2451, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %2452 = add i64 %2445, -24
  %2453 = add i64 %2447, 19
  store i64 %2453, i64* %PC, align 8
  %2454 = inttoptr i64 %2452 to i64*
  %2455 = load i64, i64* %2454, align 8
  store i64 %2455, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %2456 = load i64, i64* bitcast (%D2_0_type* @D2_0 to i64*), align 8
  store i64 %2456, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %2457 = add i64 %2447, 33
  store i64 %2457, i64* %PC, align 8
  %2458 = inttoptr i64 %2452 to double*
  %2459 = load double, double* %2458, align 8
  %2460 = load double, double* bitcast (%D3_type* @D3 to double*), align 8
  %2461 = fmul double %2459, %2460
  store double %2461, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2462 = bitcast i64 %2456 to double
  %2463 = fadd double %2461, %2462
  store double %2463, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %2464 = bitcast i64 %2455 to double
  %2465 = fmul double %2463, %2464
  store double %2465, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %2466 = bitcast i64 %2451 to double
  %2467 = fadd double %2465, %2466
  store double %2467, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %2468 = add i64 %2445, -40
  %2469 = add i64 %2447, 59
  store i64 %2469, i64* %PC, align 8
  %2470 = inttoptr i64 %2468 to i64*
  %2471 = load i64, i64* %2470, align 8
  store i64 %2471, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %2472 = add i64 %2447, 64
  store i64 %2472, i64* %PC, align 8
  %2473 = load i64, i64* %2454, align 8
  store i64 %2473, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  store i64 %2451, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %2474 = add i64 %2447, 78
  store i64 %2474, i64* %PC, align 8
  %2475 = load i64, i64* %2454, align 8
  store i64 %2475, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %2476 = load i64, i64* bitcast (%E2_0_type* @E2_0 to i64*), align 8
  store i64 %2476, i64* %107, align 1, !tbaa !2452
  store double 0.000000e+00, double* %109, align 1, !tbaa !2452
  %2477 = add i64 %2447, 92
  store i64 %2477, i64* %PC, align 8
  %2478 = inttoptr i64 %2452 to double*
  %2479 = load double, double* %2478, align 8
  %2480 = load double, double* bitcast (%E3_type* @E3 to double*), align 8
  %2481 = fmul double %2479, %2480
  store double %2481, double* %121, align 1, !tbaa !2452
  store i64 0, i64* %210, align 1, !tbaa !2452
  %2482 = bitcast i64 %2476 to double
  %2483 = fadd double %2481, %2482
  store double %2483, double* %106, align 1, !tbaa !2452
  store i64 0, i64* %108, align 1, !tbaa !2452
  %2484 = bitcast i64 %2475 to double
  %2485 = fmul double %2483, %2484
  store double %2485, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %2486 = fadd double %2485, %2466
  store double %2486, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2487 = bitcast i64 %2473 to double
  %2488 = fmul double %2486, %2487
  store double %2488, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %2489 = bitcast i64 %2471 to double
  %2490 = fadd double %2488, %2489
  store double %2490, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %2491 = fdiv double %2467, %2490
  store double %2491, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %2492 = load double, double* %74, align 1
  %2493 = fadd double %2491, %2492
  store double %2493, double* %74, align 1, !tbaa !2452
  %2494 = load i64, i64* %RBP, align 8
  %2495 = add i64 %2494, -16
  %2496 = add i64 %2447, 134
  store i64 %2496, i64* %PC, align 8
  %2497 = inttoptr i64 %2495 to double*
  store double %2493, double* %2497, align 8
  %2498 = load i64, i64* %RBP, align 8
  %2499 = add i64 %2498, -72
  %2500 = load i64, i64* %PC, align 8
  %2501 = add i64 %2500, 4
  store i64 %2501, i64* %PC, align 8
  %2502 = inttoptr i64 %2499 to i64*
  %2503 = load i64, i64* %2502, align 8
  %2504 = add i64 %2503, 1
  store i64 %2504, i64* %RAX, align 8, !tbaa !2428
  %2505 = icmp eq i64 %2503, -1
  %2506 = icmp eq i64 %2504, 0
  %2507 = or i1 %2505, %2506
  %2508 = zext i1 %2507 to i8
  store i8 %2508, i8* %23, align 1, !tbaa !2432
  %2509 = trunc i64 %2504 to i32
  %2510 = and i32 %2509, 255
  %2511 = tail call i32 @llvm.ctpop.i32(i32 %2510) #9
  %2512 = trunc i32 %2511 to i8
  %2513 = and i8 %2512, 1
  %2514 = xor i8 %2513, 1
  store i8 %2514, i8* %30, align 1, !tbaa !2446
  %2515 = xor i64 %2504, %2503
  %2516 = lshr i64 %2515, 4
  %2517 = trunc i64 %2516 to i8
  %2518 = and i8 %2517, 1
  store i8 %2518, i8* %35, align 1, !tbaa !2450
  %2519 = zext i1 %2506 to i8
  store i8 %2519, i8* %38, align 1, !tbaa !2447
  %2520 = lshr i64 %2504, 63
  %2521 = trunc i64 %2520 to i8
  store i8 %2521, i8* %41, align 1, !tbaa !2448
  %2522 = lshr i64 %2503, 63
  %2523 = xor i64 %2520, %2522
  %2524 = add nuw nsw i64 %2523, %2520
  %2525 = icmp eq i64 %2524, 2
  %2526 = zext i1 %2525 to i8
  store i8 %2526, i8* %47, align 1, !tbaa !2449
  %2527 = add i64 %2500, 12
  store i64 %2527, i64* %PC, align 8
  store i64 %2504, i64* %2502, align 8
  %2528 = load i64, i64* %PC, align 8
  %2529 = add i64 %2528, -197
  store i64 %2529, i64* %PC, align 8, !tbaa !2428
  br label %block_40070b

block_401f72:                                     ; preds = %block_401f87, %block_401d53
  %2530 = phi i64 [ %2166, %block_401f87 ], [ %.pre217, %block_401d53 ]
  %2531 = load i64, i64* %RBP, align 8
  %2532 = add i64 %2531, -72
  %2533 = add i64 %2530, 4
  store i64 %2533, i64* %PC, align 8
  %2534 = inttoptr i64 %2532 to i64*
  %2535 = load i64, i64* %2534, align 8
  store i64 %2535, i64* %RAX, align 8, !tbaa !2428
  %2536 = add i64 %2531, -80
  %2537 = add i64 %2530, 8
  store i64 %2537, i64* %PC, align 8
  %2538 = inttoptr i64 %2536 to i64*
  %2539 = load i64, i64* %2538, align 8
  %2540 = add i64 %2539, -1
  store i64 %2540, i64* %RCX, align 8, !tbaa !2428
  %2541 = lshr i64 %2540, 63
  %2542 = sub i64 %2535, %2540
  %2543 = icmp ult i64 %2535, %2540
  %2544 = zext i1 %2543 to i8
  store i8 %2544, i8* %23, align 1, !tbaa !2432
  %2545 = trunc i64 %2542 to i32
  %2546 = and i32 %2545, 255
  %2547 = tail call i32 @llvm.ctpop.i32(i32 %2546) #9
  %2548 = trunc i32 %2547 to i8
  %2549 = and i8 %2548, 1
  %2550 = xor i8 %2549, 1
  store i8 %2550, i8* %30, align 1, !tbaa !2446
  %2551 = xor i64 %2540, %2535
  %2552 = xor i64 %2551, %2542
  %2553 = lshr i64 %2552, 4
  %2554 = trunc i64 %2553 to i8
  %2555 = and i8 %2554, 1
  store i8 %2555, i8* %35, align 1, !tbaa !2450
  %2556 = icmp eq i64 %2542, 0
  %2557 = zext i1 %2556 to i8
  store i8 %2557, i8* %38, align 1, !tbaa !2447
  %2558 = lshr i64 %2542, 63
  %2559 = trunc i64 %2558 to i8
  store i8 %2559, i8* %41, align 1, !tbaa !2448
  %2560 = lshr i64 %2535, 63
  %2561 = xor i64 %2541, %2560
  %2562 = xor i64 %2558, %2560
  %2563 = add nuw nsw i64 %2562, %2561
  %2564 = icmp eq i64 %2563, 2
  %2565 = zext i1 %2564 to i8
  store i8 %2565, i8* %47, align 1, !tbaa !2449
  %2566 = icmp ne i8 %2559, 0
  %2567 = xor i1 %2566, %2564
  %.demorgan226 = or i1 %2556, %2567
  %.v233 = select i1 %.demorgan226, i64 21, i64 313
  %2568 = add i64 %2530, %.v233
  store i64 %2568, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan226, label %block_401f87, label %block_4020ab

block_400696:                                     ; preds = %block_40080c, %block_400550
  %2569 = phi i64 [ %.pre, %block_400550 ], [ %3124, %block_40080c ]
  %MEMORY.6 = phi %struct.Memory* [ %185, %block_400550 ], [ %1117, %block_40080c ]
  %2570 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %2570, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %2571 = load i64, i64* bitcast (%TLimit_type* @TLimit to i64*), align 8
  store i64 %2571, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %2572 = add i64 %2569, 22
  store i64 %2572, i64* %PC, align 8
  %.cast = bitcast i64 %2571 to double
  %2573 = bitcast i64 %2570 to double
  %2574 = fcmp uno double %.cast, %2573
  br i1 %2574, label %2575, label %2585

; <label>:2575:                                   ; preds = %block_400696
  %2576 = fadd double %.cast, %2573
  %2577 = bitcast double %2576 to i64
  %2578 = and i64 %2577, 9221120237041090560
  %2579 = icmp eq i64 %2578, 9218868437227405312
  %2580 = and i64 %2577, 2251799813685247
  %2581 = icmp ne i64 %2580, 0
  %2582 = and i1 %2579, %2581
  br i1 %2582, label %2583, label %2591

; <label>:2583:                                   ; preds = %2575
  %2584 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2572, %struct.Memory* %MEMORY.6) #12
  %.pre204 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:2585:                                   ; preds = %block_400696
  %2586 = fcmp ogt double %.cast, %2573
  br i1 %2586, label %2591, label %2587

; <label>:2587:                                   ; preds = %2585
  %2588 = fcmp olt double %.cast, %2573
  br i1 %2588, label %2591, label %2589

; <label>:2589:                                   ; preds = %2587
  %2590 = fcmp oeq double %.cast, %2573
  br i1 %2590, label %2591, label %2595

; <label>:2591:                                   ; preds = %2589, %2587, %2585, %2575
  %2592 = phi i8 [ 0, %2585 ], [ 0, %2587 ], [ 1, %2589 ], [ 1, %2575 ]
  %2593 = phi i8 [ 0, %2585 ], [ 0, %2587 ], [ 0, %2589 ], [ 1, %2575 ]
  %2594 = phi i8 [ 0, %2585 ], [ 1, %2587 ], [ 0, %2589 ], [ 1, %2575 ]
  store i8 %2592, i8* %38, align 1, !tbaa !2451
  store i8 %2593, i8* %30, align 1, !tbaa !2451
  store i8 %2594, i8* %23, align 1, !tbaa !2451
  br label %2595

; <label>:2595:                                   ; preds = %2591, %2589
  store i8 0, i8* %47, align 1, !tbaa !2451
  store i8 0, i8* %41, align 1, !tbaa !2451
  store i8 0, i8* %35, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %2595, %2583
  %2596 = phi i64 [ %.pre204, %2583 ], [ %2572, %2595 ]
  %2597 = phi %struct.Memory* [ %2584, %2583 ], [ %MEMORY.6, %2595 ]
  %2598 = add i64 %2596, 357
  %2599 = add i64 %2596, 6
  %2600 = load i8, i8* %23, align 1, !tbaa !2432
  %2601 = load i8, i8* %38, align 1, !tbaa !2447
  %2602 = or i8 %2601, %2600
  %2603 = icmp ne i8 %2602, 0
  %2604 = select i1 %2603, i64 %2598, i64 %2599
  store i64 %2604, i64* %PC, align 8, !tbaa !2428
  br i1 %2603, label %block_400811.loopexit, label %block_4006b2

block_4020ab:                                     ; preds = %block_401f72
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %2605 = add i64 %2568, 1317
  %2606 = add i64 %2568, 15
  %2607 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2608 = add i64 %2607, -8
  %2609 = inttoptr i64 %2608 to i64*
  store i64 %2606, i64* %2609, align 8
  store i64 %2608, i64* %RSP, align 8, !tbaa !2428
  store i64 %2605, i64* %PC, align 8, !tbaa !2428
  %2610 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* nonnull %0, i64 %2605, %struct.Memory* %469)
  %2611 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 642), i64* %RDI, align 8, !tbaa !2428
  %2612 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 72) to i64*), align 8
  store i64 %2612, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %2613 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 224) to i64*), align 16
  store i64 %2613, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %2614 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 232) to i64*), align 8
  store i64 %2614, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %2615 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %2616 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %2617 = fmul double %2615, %2616
  %2618 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %2619 = fsub double %2617, %2618
  store double %2619, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %2620 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %2621 = load double, double* bitcast (%three_type* @three to double*), align 8
  %2622 = fdiv double %2620, %2621
  store double %2622, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %2623 = load i64, i64* %RBP, align 8
  %2624 = add i64 %2623, -24
  %2625 = add i64 %2611, 93
  store i64 %2625, i64* %PC, align 8
  %2626 = inttoptr i64 %2624 to double*
  store double %2622, double* %2626, align 8
  %2627 = load i64, i64* %RBP, align 8
  %2628 = add i64 %2627, -24
  %2629 = load i64, i64* %PC, align 8
  %2630 = add i64 %2629, 5
  store i64 %2630, i64* %PC, align 8
  %2631 = inttoptr i64 %2628 to i64*
  %2632 = load i64, i64* %2631, align 8
  store i64 %2632, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %2633 = add i64 %2629, 10
  store i64 %2633, i64* %PC, align 8
  %2634 = bitcast i64 %2632 to double
  %2635 = inttoptr i64 %2628 to double*
  %2636 = load double, double* %2635, align 8
  %2637 = fmul double %2634, %2636
  store double %2637, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %2638 = add i64 %2627, -40
  %2639 = add i64 %2629, 15
  store i64 %2639, i64* %PC, align 8
  %2640 = inttoptr i64 %2638 to double*
  store double %2637, double* %2640, align 8
  %2641 = load i64, i64* %RBP, align 8
  %2642 = add i64 %2641, -24
  %2643 = load i64, i64* %PC, align 8
  %2644 = add i64 %2643, 5
  store i64 %2644, i64* %PC, align 8
  %2645 = inttoptr i64 %2642 to i64*
  %2646 = load i64, i64* %2645, align 8
  store i64 %2646, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %2647 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %2647, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %2648 = add i64 %2641, -40
  %2649 = add i64 %2643, 19
  store i64 %2649, i64* %PC, align 8
  %.cast178 = bitcast i64 %2647 to double
  %2650 = inttoptr i64 %2648 to double*
  %2651 = load double, double* %2650, align 8
  %2652 = fmul double %.cast178, %2651
  %2653 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %2654 = fadd double %2652, %2653
  store double %2654, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2655 = add i64 %2643, 33
  store i64 %2655, i64* %PC, align 8
  %2656 = load double, double* %2650, align 8
  %2657 = fmul double %2654, %2656
  %2658 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %2659 = fadd double %2657, %2658
  store double %2659, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2660 = add i64 %2643, 47
  store i64 %2660, i64* %PC, align 8
  %2661 = load double, double* %2650, align 8
  %2662 = fmul double %2659, %2661
  %2663 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %2664 = fadd double %2662, %2663
  store double %2664, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2665 = add i64 %2643, 61
  store i64 %2665, i64* %PC, align 8
  %2666 = load double, double* %2650, align 8
  %2667 = fmul double %2664, %2666
  %2668 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %2669 = fadd double %2667, %2668
  store double %2669, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2670 = add i64 %2643, 75
  store i64 %2670, i64* %PC, align 8
  %2671 = load double, double* %2650, align 8
  %2672 = fmul double %2669, %2671
  %2673 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %2674 = fadd double %2672, %2673
  store double %2674, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2675 = add i64 %2643, 89
  store i64 %2675, i64* %PC, align 8
  %2676 = load double, double* %2650, align 8
  %2677 = fmul double %2674, %2676
  %2678 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2679 = fadd double %2677, %2678
  store double %2679, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2680 = bitcast i64 %2646 to double
  %2681 = fmul double %2679, %2680
  store double %2681, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  store double %2681, double* bitcast (%sa_type* @sa to double*), align 8
  %2682 = add i64 %2643, 116
  store i64 %2682, i64* %PC, align 8
  %2683 = inttoptr i64 %2648 to i64*
  %2684 = load i64, i64* %2683, align 8
  store i64 %2684, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %2685 = load i64, i64* %RBP, align 8
  %2686 = add i64 %2685, -40
  %2687 = add i64 %2643, 121
  store i64 %2687, i64* %PC, align 8
  %2688 = inttoptr i64 %2686 to i64*
  %2689 = load i64, i64* %2688, align 8
  store i64 %2689, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %2690 = add i64 %2643, 126
  store i64 %2690, i64* %PC, align 8
  %2691 = load i64, i64* %2688, align 8
  store i64 %2691, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %2692 = add i64 %2643, 131
  store i64 %2692, i64* %PC, align 8
  %2693 = load i64, i64* %2688, align 8
  store i64 %2693, i64* %107, align 1, !tbaa !2452
  store double 0.000000e+00, double* %109, align 1, !tbaa !2452
  %2694 = add i64 %2643, 136
  store i64 %2694, i64* %PC, align 8
  %2695 = load i64, i64* %2688, align 8
  store i64 %2695, i64* %209, align 1, !tbaa !2452
  store double 0.000000e+00, double* %211, align 1, !tbaa !2452
  %2696 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  store i64 %2696, i64* %2260, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2262, align 1, !tbaa !2452
  %2697 = add i64 %2643, 152
  store i64 %2697, i64* %PC, align 8
  %.cast179 = bitcast i64 %2696 to double
  %2698 = inttoptr i64 %2686 to double*
  %2699 = load double, double* %2698, align 8
  %2700 = fmul double %.cast179, %2699
  %2701 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %2702 = fadd double %2700, %2701
  store double %2702, double* %2259, align 1, !tbaa !2452
  store i64 0, i64* %2261, align 1, !tbaa !2452
  %2703 = bitcast i64 %2695 to double
  %2704 = fmul double %2702, %2703
  %2705 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %2706 = fadd double %2704, %2705
  store double %2706, double* %121, align 1, !tbaa !2452
  store i64 0, i64* %210, align 1, !tbaa !2452
  %2707 = bitcast i64 %2693 to double
  %2708 = fmul double %2706, %2707
  %2709 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %2710 = fadd double %2708, %2709
  store double %2710, double* %106, align 1, !tbaa !2452
  store i64 0, i64* %108, align 1, !tbaa !2452
  %2711 = bitcast i64 %2691 to double
  %2712 = fmul double %2710, %2711
  %2713 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %2714 = fadd double %2712, %2713
  store double %2714, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %2715 = bitcast i64 %2689 to double
  %2716 = fmul double %2714, %2715
  %2717 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %2718 = fadd double %2716, %2717
  store double %2718, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2719 = bitcast i64 %2684 to double
  %2720 = fmul double %2718, %2719
  %2721 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2722 = fadd double %2720, %2721
  store double %2722, double* bitcast (%sb_type* @sb to double*), align 8
  %2723 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %2724 = fmul double %2723, %2722
  %2725 = fmul double %2722, %2724
  store double %2725, double* bitcast (%sa_type* @sa to double*), align 8
  %2726 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %2727 = load double, double* %86, align 1
  %2728 = fdiv double %2726, %2727
  store double %2728, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  store double %2728, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 200) to double*), align 8
  %2729 = load i64, i64* %RBP, align 8
  %2730 = add i64 %2729, -48
  %2731 = add i64 %2643, 300
  store i64 %2731, i64* %PC, align 8
  %2732 = inttoptr i64 %2730 to i64*
  %2733 = load i64, i64* %2732, align 8
  store i64 %2733, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %2734 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %2734, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %2735 = load i64, i64* bitcast (%two_type* @two to i64*), align 8
  store i64 %2735, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %2736 = add i64 %2729, -16
  %2737 = add i64 %2643, 323
  store i64 %2737, i64* %PC, align 8
  %.cast180 = bitcast i64 %2735 to double
  %2738 = inttoptr i64 %2736 to double*
  %2739 = load double, double* %2738, align 8
  %2740 = fmul double %.cast180, %2739
  store double %2740, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2741 = bitcast i64 %2734 to double
  %2742 = fadd double %2741, %2740
  store double %2742, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %2743 = bitcast i64 %2733 to double
  %2744 = fmul double %2743, %2742
  %2745 = fdiv double %2744, %.cast180
  store double %2745, double* bitcast (%sa_type* @sa to double*), align 8
  %2746 = load i64, i64* %81, align 1
  store i64 %2746, i64* bitcast (%sb_type* @sb to i64*), align 8
  %2747 = bitcast i64 %2746 to double
  %2748 = fsub double %2745, %2747
  store double %2748, double* bitcast (%sc_type* @sc to double*), align 8
  %2749 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2750 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 200) to double*), align 8
  %2751 = fdiv double %2749, %2750
  store double %2751, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 208) to double*), align 16
  %2752 = load <2 x i32>, <2 x i32>* %1247, align 1
  %2753 = load <2 x i32>, <2 x i32>* %1249, align 1
  %2754 = extractelement <2 x i32> %2752, i32 0
  store i32 %2754, i32* %1252, align 1, !tbaa !2455
  %2755 = extractelement <2 x i32> %2752, i32 1
  store i32 %2755, i32* %1255, align 1, !tbaa !2455
  %2756 = extractelement <2 x i32> %2753, i32 0
  store i32 %2756, i32* %1257, align 1, !tbaa !2455
  %2757 = extractelement <2 x i32> %2753, i32 1
  store i32 %2757, i32* %1260, align 1, !tbaa !2455
  %2758 = load double, double* %80, align 1
  %2759 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %2760 = fmul double %2758, %2759
  store double %2760, double* %80, align 1, !tbaa !2452
  store i32 %2754, i32* %1264, align 1, !tbaa !2455
  store i32 %2755, i32* %1266, align 1, !tbaa !2455
  store i32 %2756, i32* %1267, align 1, !tbaa !2455
  store i32 %2757, i32* %1269, align 1, !tbaa !2455
  %2761 = load double, double* %86, align 1
  %2762 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %2763 = fmul double %2761, %2762
  store double %2763, double* %86, align 1, !tbaa !2452
  %2764 = bitcast <2 x i32> %2752 to double
  %2765 = fmul double %2764, %2751
  %2766 = load i64, i64* %RBP, align 8
  %2767 = add i64 %2766, -304
  %2768 = add i64 %2643, 453
  store i64 %2768, i64* %PC, align 8
  %2769 = inttoptr i64 %2767 to double*
  store double %2765, double* %2769, align 8
  %2770 = load i64, i64* %PC, align 8
  %2771 = load <2 x i32>, <2 x i32>* %1280, align 1
  %2772 = load <2 x i32>, <2 x i32>* %1282, align 1
  %2773 = extractelement <2 x i32> %2771, i32 0
  store i32 %2773, i32* %187, align 1, !tbaa !2455
  %2774 = extractelement <2 x i32> %2771, i32 1
  store i32 %2774, i32* %189, align 1, !tbaa !2455
  %2775 = extractelement <2 x i32> %2772, i32 0
  store i32 %2775, i32* %190, align 1, !tbaa !2455
  %2776 = extractelement <2 x i32> %2772, i32 1
  store i32 %2776, i32* %192, align 1, !tbaa !2455
  %2777 = load <2 x i32>, <2 x i32>* %1288, align 1
  %2778 = load <2 x i32>, <2 x i32>* %1290, align 1
  %2779 = extractelement <2 x i32> %2777, i32 0
  store i32 %2779, i32* %1252, align 1, !tbaa !2455
  %2780 = extractelement <2 x i32> %2777, i32 1
  store i32 %2780, i32* %1255, align 1, !tbaa !2455
  %2781 = extractelement <2 x i32> %2778, i32 0
  store i32 %2781, i32* %1257, align 1, !tbaa !2455
  %2782 = extractelement <2 x i32> %2778, i32 1
  store i32 %2782, i32* %1260, align 1, !tbaa !2455
  %2783 = load i64, i64* %RBP, align 8
  %2784 = add i64 %2783, -304
  %2785 = add i64 %2770, 14
  store i64 %2785, i64* %PC, align 8
  %2786 = inttoptr i64 %2784 to i64*
  %2787 = load i64, i64* %2786, align 8
  store i64 %2787, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %2788 = add i64 %2783, -308
  %2789 = load i32, i32* %EAX, align 4
  %2790 = add i64 %2770, 20
  store i64 %2790, i64* %PC, align 8
  %2791 = inttoptr i64 %2788 to i32*
  store i32 %2789, i32* %2791, align 4
  %2792 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2451
  %2793 = add i64 %2792, -7871
  %2794 = add i64 %2792, 7
  %2795 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2796 = add i64 %2795, -8
  %2797 = inttoptr i64 %2796 to i64*
  store i64 %2794, i64* %2797, align 8
  store i64 %2796, i64* %RSP, align 8, !tbaa !2428
  store i64 %2793, i64* %PC, align 8, !tbaa !2428
  %2798 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %2610)
  %2799 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 304), i64* %RDI, align 8, !tbaa !2428
  %2800 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 192) to i64*), align 16
  store i64 %2800, i64* %75, align 1, !tbaa !2452
  %2801 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 200) to i64*), align 8
  store i64 %2801, i64* %81, align 1, !tbaa !2452
  %2802 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 208) to i64*), align 16
  store i64 %2802, i64* %87, align 1, !tbaa !2452
  %2803 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 216) to double*), align 8
  %2804 = load double, double* bitcast (%five_type* @five to double*), align 8
  %2805 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 48) to double*), align 16
  %2806 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to double*), align 8
  %2807 = fsub double %2805, %2806
  store double %2807, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %2808 = fmul double %2807, %2804
  %2809 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %2810 = fadd double %2808, %2809
  %2811 = fdiv double %2810, %2803
  store double %2811, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 216) to double*), align 8
  %2812 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2813 = fdiv double %2812, %2811
  store double %2813, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 224) to double*), align 16
  %2814 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %2815 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %2816 = fadd double %2814, %2815
  %2817 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %2818 = fadd double %2816, %2817
  %2819 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %2820 = fadd double %2818, %2819
  %2821 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %2822 = fadd double %2820, %2821
  store double %2822, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 232) to double*), align 8
  %2823 = load double, double* bitcast (%four_type* @four to double*), align 8
  %2824 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 168) to double*), align 8
  %2825 = fmul double %2823, %2824
  store double %2825, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2826 = fadd double %2825, %2822
  %2827 = load double, double* %86, align 1
  %2828 = fdiv double %2826, %2827
  store double %2828, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  store double %2828, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 232) to double*), align 8
  %2829 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2830 = fdiv double %2829, %2828
  store double %2830, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 240) to double*), align 16
  %2831 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %2832 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %2833 = fadd double %2831, %2832
  %2834 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %2835 = fadd double %2833, %2834
  %2836 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %2837 = fadd double %2835, %2836
  %2838 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %2839 = fadd double %2837, %2838
  store double %2839, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 248) to double*), align 8
  %2840 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 168) to double*), align 8
  %2841 = fadd double %2839, %2840
  %2842 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %2843 = fadd double %2841, %2842
  %2844 = load double, double* %80, align 1
  %2845 = fdiv double %2843, %2844
  store double %2845, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  store double %2845, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 248) to double*), align 8
  %2846 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2847 = fdiv double %2846, %2845
  store double %2847, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 256) to double*), align 16
  %2848 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %2849 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %2850 = fadd double %2848, %2849
  %2851 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %2852 = fadd double %2850, %2851
  %2853 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %2854 = fadd double %2852, %2853
  %2855 = load double, double* %74, align 1
  %2856 = fdiv double %2854, %2855
  store double %2856, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  store double %2856, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 264) to double*), align 8
  %2857 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2858 = fdiv double %2857, %2856
  store double %2858, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  store double %2858, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 272) to double*), align 16
  %2859 = load i64, i64* %RBP, align 8
  %2860 = add i64 %2859, -312
  %2861 = load i32, i32* %EAX, align 4
  %2862 = add i64 %2799, 450
  store i64 %2862, i64* %PC, align 8
  %2863 = inttoptr i64 %2860 to i32*
  store i32 %2861, i32* %2863, align 4
  %2864 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %2865 = add i64 %2864, -8328
  %2866 = add i64 %2864, 7
  %2867 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2868 = add i64 %2867, -8
  %2869 = inttoptr i64 %2868 to i64*
  store i64 %2866, i64* %2869, align 8
  store i64 %2868, i64* %RSP, align 8, !tbaa !2428
  store i64 %2865, i64* %PC, align 8, !tbaa !2428
  %2870 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %2798)
  %2871 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 678), i64* %RDI, align 8, !tbaa !2428
  %2872 = load i64, i64* %RBP, align 8
  %2873 = add i64 %2872, -80
  %2874 = add i64 %2871, 14
  store i64 %2874, i64* %PC, align 8
  %2875 = inttoptr i64 %2873 to i64*
  %2876 = load i64, i64* %2875, align 8
  store i64 %2876, i64* %RSI, align 8, !tbaa !2428
  %2877 = add i64 %2872, -316
  %2878 = load i32, i32* %EAX, align 4
  %2879 = add i64 %2871, 20
  store i64 %2879, i64* %PC, align 8
  %2880 = inttoptr i64 %2877 to i32*
  store i32 %2878, i32* %2880, align 4
  %2881 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %2882 = add i64 %2881, -8355
  %2883 = add i64 %2881, 7
  %2884 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2885 = add i64 %2884, -8
  %2886 = inttoptr i64 %2885 to i64*
  store i64 %2883, i64* %2886, align 8
  store i64 %2885, i64* %RSP, align 8, !tbaa !2428
  store i64 %2882, i64* %PC, align 8, !tbaa !2428
  %2887 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %2870)
  %2888 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 706), i64* %RDI, align 8, !tbaa !2428
  %2889 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 72) to double*), align 8
  %2890 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %2891 = fmul double %2889, %2890
  store double %2891, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %2892 = load i64, i64* %RBP, align 8
  %2893 = add i64 %2892, -320
  %2894 = load i32, i32* %EAX, align 4
  %2895 = add i64 %2888, 33
  store i64 %2895, i64* %PC, align 8
  %2896 = inttoptr i64 %2893 to i32*
  store i32 %2894, i32* %2896, align 4
  %2897 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %2898 = add i64 %2897, -8395
  %2899 = add i64 %2897, 7
  %2900 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2901 = add i64 %2900, -8
  %2902 = inttoptr i64 %2901 to i64*
  store i64 %2899, i64* %2902, align 8
  store i64 %2901, i64* %RSP, align 8, !tbaa !2428
  store i64 %2898, i64* %PC, align 8, !tbaa !2428
  %2903 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %2887)
  %2904 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 736), i64* %RDI, align 8, !tbaa !2428
  %2905 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 72) to double*), align 8
  %2906 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 224) to double*), align 16
  %2907 = fmul double %2905, %2906
  store double %2907, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %2908 = load i64, i64* %RBP, align 8
  %2909 = add i64 %2908, -324
  %2910 = load i32, i32* %EAX, align 4
  %2911 = add i64 %2904, 33
  store i64 %2911, i64* %PC, align 8
  %2912 = inttoptr i64 %2909 to i32*
  store i32 %2910, i32* %2912, align 4
  %2913 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %2914 = add i64 %2913, -8435
  %2915 = add i64 %2913, 7
  %2916 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2917 = add i64 %2916, -8
  %2918 = inttoptr i64 %2917 to i64*
  store i64 %2915, i64* %2918, align 8
  store i64 %2917, i64* %RSP, align 8, !tbaa !2428
  store i64 %2914, i64* %PC, align 8, !tbaa !2428
  %2919 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %2903)
  %2920 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 766), i64* %RDI, align 8, !tbaa !2428
  %2921 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 72) to double*), align 8
  %2922 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 240) to double*), align 16
  %2923 = fmul double %2921, %2922
  store double %2923, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %2924 = load i64, i64* %RBP, align 8
  %2925 = add i64 %2924, -328
  %2926 = load i32, i32* %EAX, align 4
  %2927 = add i64 %2920, 33
  store i64 %2927, i64* %PC, align 8
  %2928 = inttoptr i64 %2925 to i32*
  store i32 %2926, i32* %2928, align 4
  %2929 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %2930 = add i64 %2929, -8475
  %2931 = add i64 %2929, 7
  %2932 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2933 = add i64 %2932, -8
  %2934 = inttoptr i64 %2933 to i64*
  store i64 %2931, i64* %2934, align 8
  store i64 %2933, i64* %RSP, align 8, !tbaa !2428
  store i64 %2930, i64* %PC, align 8, !tbaa !2428
  %2935 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %2919)
  %2936 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 796), i64* %RDI, align 8, !tbaa !2428
  %2937 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 72) to double*), align 8
  %2938 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 256) to double*), align 16
  %2939 = fmul double %2937, %2938
  store double %2939, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %2940 = load i64, i64* %RBP, align 8
  %2941 = add i64 %2940, -332
  %2942 = load i32, i32* %EAX, align 4
  %2943 = add i64 %2936, 33
  store i64 %2943, i64* %PC, align 8
  %2944 = inttoptr i64 %2941 to i32*
  store i32 %2942, i32* %2944, align 4
  %2945 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %2946 = add i64 %2945, -8515
  %2947 = add i64 %2945, 7
  %2948 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2949 = add i64 %2948, -8
  %2950 = inttoptr i64 %2949 to i64*
  store i64 %2947, i64* %2950, align 8
  store i64 %2949, i64* %RSP, align 8, !tbaa !2428
  store i64 %2946, i64* %PC, align 8, !tbaa !2428
  %2951 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %2935)
  %2952 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 826), i64* %RDI, align 8, !tbaa !2428
  %2953 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 72) to double*), align 8
  %2954 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 272) to double*), align 16
  %2955 = fmul double %2953, %2954
  store double %2955, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %2956 = load i64, i64* %RBP, align 8
  %2957 = add i64 %2956, -336
  %2958 = load i32, i32* %EAX, align 4
  %2959 = add i64 %2952, 33
  store i64 %2959, i64* %PC, align 8
  %2960 = inttoptr i64 %2957 to i32*
  store i32 %2958, i32* %2960, align 4
  %2961 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %2962 = add i64 %2961, -8555
  %2963 = add i64 %2961, 7
  %2964 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2965 = add i64 %2964, -8
  %2966 = inttoptr i64 %2965 to i64*
  store i64 %2963, i64* %2966, align 8
  store i64 %2965, i64* %RSP, align 8, !tbaa !2428
  store i64 %2962, i64* %PC, align 8, !tbaa !2428
  %2967 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %2951)
  %2968 = load i64, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  %2969 = load i64, i64* %RBP, align 8
  %2970 = add i64 %2969, -340
  %2971 = load i32, i32* %EAX, align 4
  %2972 = add i64 %2968, 8
  store i64 %2972, i64* %PC, align 8
  %2973 = inttoptr i64 %2970 to i32*
  store i32 %2971, i32* %2973, align 4
  %2974 = load i32, i32* %ECX, align 4
  %2975 = zext i32 %2974 to i64
  %2976 = load i64, i64* %PC, align 8
  store i64 %2975, i64* %RAX, align 8, !tbaa !2428
  %2977 = load i64, i64* %RSP, align 8
  %2978 = add i64 %2977, 352
  store i64 %2978, i64* %RSP, align 8, !tbaa !2428
  %2979 = icmp ugt i64 %2977, -353
  %2980 = zext i1 %2979 to i8
  store i8 %2980, i8* %23, align 1, !tbaa !2432
  %2981 = trunc i64 %2978 to i32
  %2982 = and i32 %2981, 255
  %2983 = tail call i32 @llvm.ctpop.i32(i32 %2982) #9
  %2984 = trunc i32 %2983 to i8
  %2985 = and i8 %2984, 1
  %2986 = xor i8 %2985, 1
  store i8 %2986, i8* %30, align 1, !tbaa !2446
  %2987 = xor i64 %2978, %2977
  %2988 = lshr i64 %2987, 4
  %2989 = trunc i64 %2988 to i8
  %2990 = and i8 %2989, 1
  store i8 %2990, i8* %35, align 1, !tbaa !2450
  %2991 = icmp eq i64 %2978, 0
  %2992 = zext i1 %2991 to i8
  store i8 %2992, i8* %38, align 1, !tbaa !2447
  %2993 = lshr i64 %2978, 63
  %2994 = trunc i64 %2993 to i8
  store i8 %2994, i8* %41, align 1, !tbaa !2448
  %2995 = lshr i64 %2977, 63
  %2996 = xor i64 %2993, %2995
  %2997 = add nuw nsw i64 %2996, %2993
  %2998 = icmp eq i64 %2997, 2
  %2999 = zext i1 %2998 to i8
  store i8 %2999, i8* %47, align 1, !tbaa !2449
  %3000 = add i64 %2976, 10
  store i64 %3000, i64* %PC, align 8
  %3001 = add i64 %2977, 360
  %3002 = inttoptr i64 %2978 to i64*
  %3003 = load i64, i64* %3002, align 8
  store i64 %3003, i64* %RBP, align 8, !tbaa !2428
  store i64 %3001, i64* %RSP, align 8, !tbaa !2428
  %3004 = add i64 %2976, 11
  store i64 %3004, i64* %PC, align 8
  %3005 = inttoptr i64 %3001 to i64*
  %3006 = load i64, i64* %3005, align 8
  store i64 %3006, i64* %PC, align 8, !tbaa !2428
  %3007 = add i64 %2977, 368
  store i64 %3007, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2967

block_400aec:                                     ; preds = %block_400ade
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
  %3008 = add i64 %1965, -16
  %3009 = add i64 %2001, 15
  store i64 %3009, i64* %PC, align 8
  %3010 = inttoptr i64 %3008 to i64*
  %3011 = load i64, i64* %3010, align 8
  %3012 = xor i64 %3011, -9223372036854775808
  store i64 %3012, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %23, align 1, !tbaa !2432
  %3013 = trunc i64 %3011 to i32
  %3014 = and i32 %3013, 255
  %3015 = tail call i32 @llvm.ctpop.i32(i32 %3014) #9
  %3016 = trunc i32 %3015 to i8
  %3017 = and i8 %3016, 1
  %3018 = xor i8 %3017, 1
  store i8 %3018, i8* %30, align 1, !tbaa !2446
  %3019 = icmp eq i64 %3012, 0
  %3020 = zext i1 %3019 to i8
  store i8 %3020, i8* %38, align 1, !tbaa !2447
  %3021 = lshr i64 %3012, 63
  %3022 = trunc i64 %3021 to i8
  store i8 %3022, i8* %41, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %35, align 1, !tbaa !2450
  %3023 = add i64 %2001, 33
  store i64 %3023, i64* %PC, align 8
  store i64 %3012, i64* %3010, align 8
  %3024 = load i64, i64* %PC, align 8
  %3025 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %3025, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3026 = load i64, i64* %RBP, align 8
  %3027 = add i64 %3026, -16
  %3028 = add i64 %3024, 14
  store i64 %3028, i64* %PC, align 8
  %.cast155 = bitcast i64 %3025 to double
  %3029 = inttoptr i64 %3027 to double*
  %3030 = load double, double* %3029, align 8
  %3031 = fadd double %.cast155, %3030
  store double %3031, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  store double %3031, double* bitcast (%sa_type* @sa to double*), align 8
  %3032 = add i64 %3026, -72
  %3033 = add i64 %3024, 27
  store i64 %3033, i64* %PC, align 8
  %3034 = inttoptr i64 %3032 to i64*
  %3035 = load i64, i64* %3034, align 8
  %3036 = add i64 %3035, 1
  store i64 %3036, i64* %RAX, align 8, !tbaa !2428
  %3037 = icmp eq i64 %3035, -1
  %3038 = icmp eq i64 %3036, 0
  %3039 = or i1 %3037, %3038
  %3040 = zext i1 %3039 to i8
  store i8 %3040, i8* %23, align 1, !tbaa !2432
  %3041 = trunc i64 %3036 to i32
  %3042 = and i32 %3041, 255
  %3043 = tail call i32 @llvm.ctpop.i32(i32 %3042) #9
  %3044 = trunc i32 %3043 to i8
  %3045 = and i8 %3044, 1
  %3046 = xor i8 %3045, 1
  store i8 %3046, i8* %30, align 1, !tbaa !2446
  %3047 = xor i64 %3036, %3035
  %3048 = lshr i64 %3047, 4
  %3049 = trunc i64 %3048 to i8
  %3050 = and i8 %3049, 1
  store i8 %3050, i8* %35, align 1, !tbaa !2450
  %3051 = zext i1 %3038 to i8
  store i8 %3051, i8* %38, align 1, !tbaa !2447
  %3052 = lshr i64 %3036, 63
  %3053 = trunc i64 %3052 to i8
  store i8 %3053, i8* %41, align 1, !tbaa !2448
  %3054 = lshr i64 %3035, 63
  %3055 = xor i64 %3052, %3054
  %3056 = add nuw nsw i64 %3055, %3052
  %3057 = icmp eq i64 %3056, 2
  %3058 = zext i1 %3057 to i8
  store i8 %3058, i8* %47, align 1, !tbaa !2449
  %3059 = add i64 %3024, 35
  store i64 %3059, i64* %PC, align 8
  store i64 %3036, i64* %3034, align 8
  %3060 = load i64, i64* %PC, align 8
  %3061 = add i64 %3060, -82
  store i64 %3061, i64* %PC, align 8, !tbaa !2428
  br label %block_400ade

block_401cba:                                     ; preds = %block_401a06, %block_401ccf
  %3062 = phi i64 [ %.pre216, %block_401a06 ], [ %948, %block_401ccf ]
  %3063 = load i64, i64* %RBP, align 8
  %3064 = add i64 %3063, -72
  %3065 = add i64 %3062, 4
  store i64 %3065, i64* %PC, align 8
  %3066 = inttoptr i64 %3064 to i64*
  %3067 = load i64, i64* %3066, align 8
  store i64 %3067, i64* %RAX, align 8, !tbaa !2428
  %3068 = add i64 %3063, -80
  %3069 = add i64 %3062, 8
  store i64 %3069, i64* %PC, align 8
  %3070 = inttoptr i64 %3068 to i64*
  %3071 = load i64, i64* %3070, align 8
  %3072 = add i64 %3071, -1
  store i64 %3072, i64* %RCX, align 8, !tbaa !2428
  %3073 = lshr i64 %3072, 63
  %3074 = sub i64 %3067, %3072
  %3075 = icmp ult i64 %3067, %3072
  %3076 = zext i1 %3075 to i8
  store i8 %3076, i8* %23, align 1, !tbaa !2432
  %3077 = trunc i64 %3074 to i32
  %3078 = and i32 %3077, 255
  %3079 = tail call i32 @llvm.ctpop.i32(i32 %3078) #9
  %3080 = trunc i32 %3079 to i8
  %3081 = and i8 %3080, 1
  %3082 = xor i8 %3081, 1
  store i8 %3082, i8* %30, align 1, !tbaa !2446
  %3083 = xor i64 %3072, %3067
  %3084 = xor i64 %3083, %3074
  %3085 = lshr i64 %3084, 4
  %3086 = trunc i64 %3085 to i8
  %3087 = and i8 %3086, 1
  store i8 %3087, i8* %35, align 1, !tbaa !2450
  %3088 = icmp eq i64 %3074, 0
  %3089 = zext i1 %3088 to i8
  store i8 %3089, i8* %38, align 1, !tbaa !2447
  %3090 = lshr i64 %3074, 63
  %3091 = trunc i64 %3090 to i8
  store i8 %3091, i8* %41, align 1, !tbaa !2448
  %3092 = lshr i64 %3067, 63
  %3093 = xor i64 %3073, %3092
  %3094 = xor i64 %3090, %3092
  %3095 = add nuw nsw i64 %3094, %3093
  %3096 = icmp eq i64 %3095, 2
  %3097 = zext i1 %3096 to i8
  store i8 %3097, i8* %47, align 1, !tbaa !2449
  %3098 = icmp ne i8 %3091, 0
  %3099 = xor i1 %3098, %3096
  %.demorgan225 = or i1 %3088, %3099
  %.v232 = select i1 %.demorgan225, i64 21, i64 153
  %3100 = add i64 %3062, %.v232
  store i64 %3100, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan225, label %block_401ccf, label %block_401d53

block_400811.loopexit:                            ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  br label %block_400811

block_400811:                                     ; preds = %block_400811.loopexit, %block_400807
  %3101 = phi i64 [ %3233, %block_400807 ], [ %2598, %block_400811.loopexit ]
  %MEMORY.8 = phi %struct.Memory* [ %1117, %block_400807 ], [ %2597, %block_400811.loopexit ]
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %3102 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 64) to i64*), align 16
  store i64 %3102, i64* bitcast (%scale_type* @scale to i64*), align 8
  store i64 %3102, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  store i64 %3102, i64* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to i64*), align 8
  %3103 = add i64 %3101, 7615
  %3104 = add i64 %3101, 50
  %3105 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3106 = add i64 %3105, -8
  %3107 = inttoptr i64 %3106 to i64*
  store i64 %3104, i64* %3107, align 8
  store i64 %3106, i64* %RSP, align 8, !tbaa !2428
  store i64 %3103, i64* %PC, align 8, !tbaa !2428
  %3108 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* nonnull %0, i64 %3103, %struct.Memory* %MEMORY.8)
  %3109 = load i64, i64* %RBP, align 8
  %3110 = add i64 %3109, -72
  %3111 = load i64, i64* %PC, align 8
  %3112 = add i64 %3111, 8
  store i64 %3112, i64* %PC, align 8
  %3113 = inttoptr i64 %3110 to i64*
  store i64 1, i64* %3113, align 8
  %3114 = load i64, i64* %RBP, align 8
  %3115 = add i64 %3114, -124
  %3116 = load i32, i32* %EAX, align 4
  %3117 = load i64, i64* %PC, align 8
  %3118 = add i64 %3117, 3
  store i64 %3118, i64* %PC, align 8
  %3119 = inttoptr i64 %3115 to i32*
  store i32 %3116, i32* %3119, align 4
  %.pre206 = load i64, i64* %PC, align 8
  br label %block_40084e

block_4008b8:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %3120 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %3120, align 1, !tbaa !2454
  %3121 = add i64 %3877, 12
  store i64 %3121, i64* %PC, align 8
  %3122 = load i64, i64* %75, align 1
  store i64 %3122, i64* bitcast (%nulltime_type* @nulltime to i64*), align 8
  %3123 = bitcast i64 %3122 to double
  br label %block_4008c4

block_40080c:                                     ; preds = %block_4007d5
  %3124 = add i64 %1161, -374
  store i64 %3124, i64* %PC, align 8, !tbaa !2428
  br label %block_400696

block_40119a:                                     ; preds = %block_401185
  %3125 = add i64 %3621, 6
  store i64 %3125, i64* %PC, align 8
  %3126 = load i64, i64* %3587, align 8
  %3127 = sitofp i64 %3126 to double
  store double %3127, double* %74, align 1, !tbaa !2452
  %3128 = add i64 %3584, -48
  %3129 = add i64 %3621, 11
  store i64 %3129, i64* %PC, align 8
  %3130 = inttoptr i64 %3128 to double*
  %3131 = load double, double* %3130, align 8
  %3132 = fmul double %3127, %3131
  store double %3132, double* %74, align 1, !tbaa !2452
  %3133 = add i64 %3584, -24
  %3134 = add i64 %3621, 16
  store i64 %3134, i64* %PC, align 8
  %3135 = inttoptr i64 %3133 to double*
  store double %3132, double* %3135, align 8
  %3136 = load i64, i64* %RBP, align 8
  %3137 = add i64 %3136, -24
  %3138 = load i64, i64* %PC, align 8
  %3139 = add i64 %3138, 5
  store i64 %3139, i64* %PC, align 8
  %3140 = inttoptr i64 %3137 to i64*
  %3141 = load i64, i64* %3140, align 8
  store i64 %3141, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3142 = add i64 %3138, 10
  store i64 %3142, i64* %PC, align 8
  %3143 = bitcast i64 %3141 to double
  %3144 = inttoptr i64 %3137 to double*
  %3145 = load double, double* %3144, align 8
  %3146 = fmul double %3143, %3145
  store double %3146, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %3147 = add i64 %3136, -40
  %3148 = add i64 %3138, 15
  store i64 %3148, i64* %PC, align 8
  %3149 = inttoptr i64 %3147 to double*
  store double %3146, double* %3149, align 8
  %3150 = load i64, i64* %RBP, align 8
  %3151 = add i64 %3150, -16
  %3152 = load i64, i64* %PC, align 8
  %3153 = add i64 %3152, 5
  store i64 %3153, i64* %PC, align 8
  %3154 = inttoptr i64 %3151 to i64*
  %3155 = load i64, i64* %3154, align 8
  store i64 %3155, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3156 = add i64 %3150, -40
  %3157 = add i64 %3152, 10
  store i64 %3157, i64* %PC, align 8
  %3158 = inttoptr i64 %3156 to i64*
  %3159 = load i64, i64* %3158, align 8
  store i64 %3159, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %3160 = add i64 %3152, 15
  store i64 %3160, i64* %PC, align 8
  %3161 = load i64, i64* %3158, align 8
  store i64 %3161, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %3162 = add i64 %3152, 20
  store i64 %3162, i64* %PC, align 8
  %3163 = load i64, i64* %3158, align 8
  store i64 %3163, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %3164 = add i64 %3152, 25
  store i64 %3164, i64* %PC, align 8
  %3165 = load i64, i64* %3158, align 8
  store i64 %3165, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %3166 = add i64 %3152, 30
  store i64 %3166, i64* %PC, align 8
  %3167 = load i64, i64* %3158, align 8
  store i64 %3167, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %3168 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  store i64 %3168, i64* %107, align 1, !tbaa !2452
  store double 0.000000e+00, double* %109, align 1, !tbaa !2452
  %3169 = add i64 %3152, 44
  store i64 %3169, i64* %PC, align 8
  %.cast163 = bitcast i64 %3168 to double
  %3170 = inttoptr i64 %3156 to double*
  %3171 = load double, double* %3170, align 8
  %3172 = fmul double %.cast163, %3171
  %3173 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %3174 = fadd double %3172, %3173
  store double %3174, double* %106, align 1, !tbaa !2452
  store i64 0, i64* %108, align 1, !tbaa !2452
  %3175 = bitcast i64 %3167 to double
  %3176 = fmul double %3174, %3175
  %3177 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %3178 = fadd double %3176, %3177
  store double %3178, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %3179 = bitcast i64 %3165 to double
  %3180 = fmul double %3178, %3179
  %3181 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %3182 = fadd double %3180, %3181
  store double %3182, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %3183 = bitcast i64 %3163 to double
  %3184 = fmul double %3182, %3183
  %3185 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %3186 = fadd double %3184, %3185
  store double %3186, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %3187 = bitcast i64 %3161 to double
  %3188 = fmul double %3186, %3187
  %3189 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %3190 = fadd double %3188, %3189
  store double %3190, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %3191 = bitcast i64 %3159 to double
  %3192 = fmul double %3190, %3191
  store double %3192, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3193 = load double, double* %74, align 1
  %3194 = fadd double %3192, %3193
  %3195 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3196 = fadd double %3194, %3195
  store double %3196, double* %74, align 1, !tbaa !2452
  %3197 = load i64, i64* %RBP, align 8
  %3198 = add i64 %3197, -16
  %3199 = add i64 %3152, 127
  store i64 %3199, i64* %PC, align 8
  %3200 = inttoptr i64 %3198 to double*
  store double %3196, double* %3200, align 8
  %3201 = load i64, i64* %RBP, align 8
  %3202 = add i64 %3201, -72
  %3203 = load i64, i64* %PC, align 8
  %3204 = add i64 %3203, 4
  store i64 %3204, i64* %PC, align 8
  %3205 = inttoptr i64 %3202 to i64*
  %3206 = load i64, i64* %3205, align 8
  %3207 = add i64 %3206, 1
  store i64 %3207, i64* %RAX, align 8, !tbaa !2428
  %3208 = icmp eq i64 %3206, -1
  %3209 = icmp eq i64 %3207, 0
  %3210 = or i1 %3208, %3209
  %3211 = zext i1 %3210 to i8
  store i8 %3211, i8* %23, align 1, !tbaa !2432
  %3212 = trunc i64 %3207 to i32
  %3213 = and i32 %3212, 255
  %3214 = tail call i32 @llvm.ctpop.i32(i32 %3213) #9
  %3215 = trunc i32 %3214 to i8
  %3216 = and i8 %3215, 1
  %3217 = xor i8 %3216, 1
  store i8 %3217, i8* %30, align 1, !tbaa !2446
  %3218 = xor i64 %3207, %3206
  %3219 = lshr i64 %3218, 4
  %3220 = trunc i64 %3219 to i8
  %3221 = and i8 %3220, 1
  store i8 %3221, i8* %35, align 1, !tbaa !2450
  %3222 = zext i1 %3209 to i8
  store i8 %3222, i8* %38, align 1, !tbaa !2447
  %3223 = lshr i64 %3207, 63
  %3224 = trunc i64 %3223 to i8
  store i8 %3224, i8* %41, align 1, !tbaa !2448
  %3225 = lshr i64 %3206, 63
  %3226 = xor i64 %3223, %3225
  %3227 = add nuw nsw i64 %3226, %3223
  %3228 = icmp eq i64 %3227, 2
  %3229 = zext i1 %3228 to i8
  store i8 %3229, i8* %47, align 1, !tbaa !2449
  %3230 = add i64 %3203, 12
  store i64 %3230, i64* %PC, align 8
  store i64 %3207, i64* %3205, align 8
  %3231 = load i64, i64* %PC, align 8
  %3232 = add i64 %3231, -191
  store i64 %3232, i64* %PC, align 8, !tbaa !2428
  br label %block_401185

block_400807:                                     ; preds = %block_4007d5
  %3233 = add i64 %1161, 10
  store i64 %3233, i64* %PC, align 8, !tbaa !2428
  br label %block_400811

block_400863:                                     ; preds = %block_40084e
  %3234 = add i64 %3916, 9
  store i64 %3234, i64* %PC, align 8
  %3235 = load i64, i64* %3882, align 8
  %3236 = add i64 %3235, 1
  store i64 %3236, i64* %RAX, align 8, !tbaa !2428
  %3237 = icmp eq i64 %3235, -1
  %3238 = icmp eq i64 %3236, 0
  %3239 = or i1 %3237, %3238
  %3240 = zext i1 %3239 to i8
  store i8 %3240, i8* %23, align 1, !tbaa !2432
  %3241 = trunc i64 %3236 to i32
  %3242 = and i32 %3241, 255
  %3243 = tail call i32 @llvm.ctpop.i32(i32 %3242) #9
  %3244 = trunc i32 %3243 to i8
  %3245 = and i8 %3244, 1
  %3246 = xor i8 %3245, 1
  store i8 %3246, i8* %30, align 1, !tbaa !2446
  %3247 = xor i64 %3236, %3235
  %3248 = lshr i64 %3247, 4
  %3249 = trunc i64 %3248 to i8
  %3250 = and i8 %3249, 1
  store i8 %3250, i8* %35, align 1, !tbaa !2450
  %3251 = zext i1 %3238 to i8
  store i8 %3251, i8* %38, align 1, !tbaa !2447
  %3252 = lshr i64 %3236, 63
  %3253 = trunc i64 %3252 to i8
  store i8 %3253, i8* %41, align 1, !tbaa !2448
  %3254 = lshr i64 %3235, 63
  %3255 = xor i64 %3252, %3254
  %3256 = add nuw nsw i64 %3255, %3252
  %3257 = icmp eq i64 %3256, 2
  %3258 = zext i1 %3257 to i8
  store i8 %3258, i8* %47, align 1, !tbaa !2449
  %3259 = add i64 %3916, 17
  store i64 %3259, i64* %PC, align 8
  store i64 %3236, i64* %3882, align 8
  %3260 = load i64, i64* %PC, align 8
  %3261 = add i64 %3260, -38
  store i64 %3261, i64* %PC, align 8, !tbaa !2428
  br label %block_40084e

block_40070b:                                     ; preds = %block_400720, %block_4006b2
  %3262 = phi i64 [ %2529, %block_400720 ], [ %.pre205, %block_4006b2 ]
  %3263 = load i64, i64* %RBP, align 8
  %3264 = add i64 %3263, -72
  %3265 = add i64 %3262, 4
  store i64 %3265, i64* %PC, align 8
  %3266 = inttoptr i64 %3264 to i64*
  %3267 = load i64, i64* %3266, align 8
  store i64 %3267, i64* %RAX, align 8, !tbaa !2428
  %3268 = add i64 %3263, -88
  %3269 = add i64 %3262, 8
  store i64 %3269, i64* %PC, align 8
  %3270 = inttoptr i64 %3268 to i64*
  %3271 = load i64, i64* %3270, align 8
  %3272 = add i64 %3271, -1
  store i64 %3272, i64* %RCX, align 8, !tbaa !2428
  %3273 = lshr i64 %3272, 63
  %3274 = sub i64 %3267, %3272
  %3275 = icmp ult i64 %3267, %3272
  %3276 = zext i1 %3275 to i8
  store i8 %3276, i8* %23, align 1, !tbaa !2432
  %3277 = trunc i64 %3274 to i32
  %3278 = and i32 %3277, 255
  %3279 = tail call i32 @llvm.ctpop.i32(i32 %3278) #9
  %3280 = trunc i32 %3279 to i8
  %3281 = and i8 %3280, 1
  %3282 = xor i8 %3281, 1
  store i8 %3282, i8* %30, align 1, !tbaa !2446
  %3283 = xor i64 %3272, %3267
  %3284 = xor i64 %3283, %3274
  %3285 = lshr i64 %3284, 4
  %3286 = trunc i64 %3285 to i8
  %3287 = and i8 %3286, 1
  store i8 %3287, i8* %35, align 1, !tbaa !2450
  %3288 = icmp eq i64 %3274, 0
  %3289 = zext i1 %3288 to i8
  store i8 %3289, i8* %38, align 1, !tbaa !2447
  %3290 = lshr i64 %3274, 63
  %3291 = trunc i64 %3290 to i8
  store i8 %3291, i8* %41, align 1, !tbaa !2448
  %3292 = lshr i64 %3267, 63
  %3293 = xor i64 %3273, %3292
  %3294 = xor i64 %3290, %3292
  %3295 = add nuw nsw i64 %3294, %3293
  %3296 = icmp eq i64 %3295, 2
  %3297 = zext i1 %3296 to i8
  store i8 %3297, i8* %47, align 1, !tbaa !2449
  %3298 = icmp ne i8 %3291, 0
  %3299 = xor i1 %3298, %3296
  %.demorgan = or i1 %3288, %3299
  %.v227 = select i1 %.demorgan, i64 21, i64 202
  %3300 = add i64 %3262, %.v227
  store i64 %3300, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400720, label %block_4007d5

block_401a06:                                     ; preds = %block_4018ce
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %3301 = add i64 %519, 3018
  %3302 = add i64 %519, 15
  %3303 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3304 = add i64 %3303, -8
  %3305 = inttoptr i64 %3304 to i64*
  store i64 %3302, i64* %3305, align 8
  store i64 %3304, i64* %RSP, align 8, !tbaa !2428
  store i64 %3301, i64* %PC, align 8, !tbaa !2428
  %3306 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* nonnull %0, i64 %3301, %struct.Memory* %2406)
  %3307 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 570), i64* %RDI, align 8, !tbaa !2428
  %3308 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 72) to i64*), align 8
  store i64 %3308, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3309 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 160) to i64*), align 16
  store i64 %3309, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %3310 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 144) to i64*), align 16
  store i64 %3310, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %3311 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %3312 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %3313 = fmul double %3311, %3312
  %3314 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %3315 = fsub double %3313, %3314
  store double %3315, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %3316 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %3317 = load double, double* bitcast (%four_type* @four to double*), align 8
  %3318 = fdiv double %3316, %3317
  store double %3318, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %3319 = load i64, i64* %RBP, align 8
  %3320 = add i64 %3319, -24
  %3321 = add i64 %3307, 93
  store i64 %3321, i64* %PC, align 8
  %3322 = inttoptr i64 %3320 to double*
  store double %3318, double* %3322, align 8
  %3323 = load i64, i64* %RBP, align 8
  %3324 = add i64 %3323, -24
  %3325 = load i64, i64* %PC, align 8
  %3326 = add i64 %3325, 5
  store i64 %3326, i64* %PC, align 8
  %3327 = inttoptr i64 %3324 to i64*
  %3328 = load i64, i64* %3327, align 8
  store i64 %3328, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %3329 = add i64 %3325, 10
  store i64 %3329, i64* %PC, align 8
  %3330 = bitcast i64 %3328 to double
  %3331 = inttoptr i64 %3324 to double*
  %3332 = load double, double* %3331, align 8
  %3333 = fmul double %3330, %3332
  store double %3333, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %3334 = add i64 %3323, -40
  %3335 = add i64 %3325, 15
  store i64 %3335, i64* %PC, align 8
  %3336 = inttoptr i64 %3334 to double*
  store double %3333, double* %3336, align 8
  %3337 = load i64, i64* %RBP, align 8
  %3338 = add i64 %3337, -24
  %3339 = load i64, i64* %PC, align 8
  %3340 = add i64 %3339, 5
  store i64 %3340, i64* %PC, align 8
  %3341 = inttoptr i64 %3338 to i64*
  %3342 = load i64, i64* %3341, align 8
  store i64 %3342, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %3343 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %3343, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %3344 = add i64 %3337, -40
  %3345 = add i64 %3339, 19
  store i64 %3345, i64* %PC, align 8
  %.cast172 = bitcast i64 %3343 to double
  %3346 = inttoptr i64 %3344 to double*
  %3347 = load double, double* %3346, align 8
  %3348 = fmul double %.cast172, %3347
  %3349 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %3350 = fadd double %3348, %3349
  store double %3350, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %3351 = add i64 %3339, 33
  store i64 %3351, i64* %PC, align 8
  %3352 = load double, double* %3346, align 8
  %3353 = fmul double %3350, %3352
  %3354 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %3355 = fadd double %3353, %3354
  store double %3355, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %3356 = add i64 %3339, 47
  store i64 %3356, i64* %PC, align 8
  %3357 = load double, double* %3346, align 8
  %3358 = fmul double %3355, %3357
  %3359 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %3360 = fadd double %3358, %3359
  store double %3360, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %3361 = add i64 %3339, 61
  store i64 %3361, i64* %PC, align 8
  %3362 = load double, double* %3346, align 8
  %3363 = fmul double %3360, %3362
  %3364 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %3365 = fadd double %3363, %3364
  store double %3365, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %3366 = add i64 %3339, 75
  store i64 %3366, i64* %PC, align 8
  %3367 = load double, double* %3346, align 8
  %3368 = fmul double %3365, %3367
  %3369 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %3370 = fadd double %3368, %3369
  store double %3370, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %3371 = add i64 %3339, 89
  store i64 %3371, i64* %PC, align 8
  %3372 = load double, double* %3346, align 8
  %3373 = fmul double %3370, %3372
  %3374 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3375 = fadd double %3373, %3374
  store double %3375, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %3376 = bitcast i64 %3342 to double
  %3377 = fmul double %3375, %3376
  store double %3377, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  store double %3377, double* bitcast (%sa_type* @sa to double*), align 8
  %3378 = add i64 %3339, 116
  store i64 %3378, i64* %PC, align 8
  %3379 = inttoptr i64 %3344 to i64*
  %3380 = load i64, i64* %3379, align 8
  store i64 %3380, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %3381 = load i64, i64* %RBP, align 8
  %3382 = add i64 %3381, -40
  %3383 = add i64 %3339, 121
  store i64 %3383, i64* %PC, align 8
  %3384 = inttoptr i64 %3382 to i64*
  %3385 = load i64, i64* %3384, align 8
  store i64 %3385, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %3386 = add i64 %3339, 126
  store i64 %3386, i64* %PC, align 8
  %3387 = load i64, i64* %3384, align 8
  store i64 %3387, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %3388 = add i64 %3339, 131
  store i64 %3388, i64* %PC, align 8
  %3389 = load i64, i64* %3384, align 8
  store i64 %3389, i64* %107, align 1, !tbaa !2452
  store double 0.000000e+00, double* %109, align 1, !tbaa !2452
  %3390 = add i64 %3339, 136
  store i64 %3390, i64* %PC, align 8
  %3391 = load i64, i64* %3384, align 8
  store i64 %3391, i64* %209, align 1, !tbaa !2452
  store double 0.000000e+00, double* %211, align 1, !tbaa !2452
  %3392 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  store i64 %3392, i64* %2260, align 1, !tbaa !2452
  store double 0.000000e+00, double* %2262, align 1, !tbaa !2452
  %3393 = add i64 %3339, 152
  store i64 %3393, i64* %PC, align 8
  %.cast173 = bitcast i64 %3392 to double
  %3394 = inttoptr i64 %3382 to double*
  %3395 = load double, double* %3394, align 8
  %3396 = fmul double %.cast173, %3395
  %3397 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %3398 = fadd double %3396, %3397
  store double %3398, double* %2259, align 1, !tbaa !2452
  store i64 0, i64* %2261, align 1, !tbaa !2452
  %3399 = bitcast i64 %3391 to double
  %3400 = fmul double %3398, %3399
  %3401 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %3402 = fadd double %3400, %3401
  store double %3402, double* %121, align 1, !tbaa !2452
  store i64 0, i64* %210, align 1, !tbaa !2452
  %3403 = bitcast i64 %3389 to double
  %3404 = fmul double %3402, %3403
  %3405 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %3406 = fadd double %3404, %3405
  store double %3406, double* %106, align 1, !tbaa !2452
  store i64 0, i64* %108, align 1, !tbaa !2452
  %3407 = bitcast i64 %3387 to double
  %3408 = fmul double %3406, %3407
  %3409 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %3410 = fadd double %3408, %3409
  store double %3410, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %3411 = bitcast i64 %3385 to double
  %3412 = fmul double %3410, %3411
  %3413 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %3414 = fadd double %3412, %3413
  store double %3414, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %3415 = bitcast i64 %3380 to double
  %3416 = fmul double %3414, %3415
  %3417 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3418 = fadd double %3416, %3417
  store double %3418, double* bitcast (%sb_type* @sb to double*), align 8
  %3419 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %3420 = fmul double %3419, %3418
  store double %3420, double* bitcast (%sa_type* @sa to double*), align 8
  %3421 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %3422 = load double, double* %86, align 1
  %3423 = fdiv double %3421, %3422
  store double %3423, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  store double %3423, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 152) to double*), align 8
  %3424 = load i64, i64* %RBP, align 8
  %3425 = add i64 %3424, -48
  %3426 = add i64 %3339, 291
  store i64 %3426, i64* %PC, align 8
  %3427 = inttoptr i64 %3425 to i64*
  %3428 = load i64, i64* %3427, align 8
  store i64 %3428, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %3429 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %3429, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %3430 = load i64, i64* bitcast (%two_type* @two to i64*), align 8
  store i64 %3430, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %3431 = add i64 %3424, -16
  %3432 = add i64 %3339, 314
  store i64 %3432, i64* %PC, align 8
  %.cast174 = bitcast i64 %3430 to double
  %3433 = inttoptr i64 %3431 to double*
  %3434 = load double, double* %3433, align 8
  %3435 = fmul double %.cast174, %3434
  store double %3435, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %3436 = bitcast i64 %3429 to double
  %3437 = fadd double %3436, %3435
  store double %3437, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %3438 = bitcast i64 %3428 to double
  %3439 = fmul double %3438, %3437
  %3440 = fdiv double %3439, %.cast174
  store double %3440, double* bitcast (%sa_type* @sa to double*), align 8
  %3441 = load i64, i64* %81, align 1
  store i64 %3441, i64* bitcast (%sb_type* @sb to i64*), align 8
  %3442 = bitcast i64 %3441 to double
  %3443 = fsub double %3440, %3442
  store double %3443, double* bitcast (%sc_type* @sc to double*), align 8
  %3444 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3445 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 152) to double*), align 8
  %3446 = fdiv double %3444, %3445
  store double %3446, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 160) to double*), align 16
  %3447 = load <2 x i32>, <2 x i32>* %1247, align 1
  %3448 = load <2 x i32>, <2 x i32>* %1249, align 1
  %3449 = extractelement <2 x i32> %3447, i32 0
  store i32 %3449, i32* %1252, align 1, !tbaa !2455
  %3450 = extractelement <2 x i32> %3447, i32 1
  store i32 %3450, i32* %1255, align 1, !tbaa !2455
  %3451 = extractelement <2 x i32> %3448, i32 0
  store i32 %3451, i32* %1257, align 1, !tbaa !2455
  %3452 = extractelement <2 x i32> %3448, i32 1
  store i32 %3452, i32* %1260, align 1, !tbaa !2455
  %3453 = load double, double* %80, align 1
  %3454 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %3455 = fmul double %3453, %3454
  store double %3455, double* %80, align 1, !tbaa !2452
  store i32 %3449, i32* %1264, align 1, !tbaa !2455
  store i32 %3450, i32* %1266, align 1, !tbaa !2455
  store i32 %3451, i32* %1267, align 1, !tbaa !2455
  store i32 %3452, i32* %1269, align 1, !tbaa !2455
  %3456 = load double, double* %86, align 1
  %3457 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %3458 = fmul double %3456, %3457
  store double %3458, double* %86, align 1, !tbaa !2452
  %3459 = bitcast <2 x i32> %3447 to double
  %3460 = fmul double %3459, %3446
  %3461 = load i64, i64* %RBP, align 8
  %3462 = add i64 %3461, -256
  %3463 = add i64 %3339, 444
  store i64 %3463, i64* %PC, align 8
  %3464 = inttoptr i64 %3462 to double*
  store double %3460, double* %3464, align 8
  %3465 = load i64, i64* %PC, align 8
  %3466 = load <2 x i32>, <2 x i32>* %1280, align 1
  %3467 = load <2 x i32>, <2 x i32>* %1282, align 1
  %3468 = extractelement <2 x i32> %3466, i32 0
  store i32 %3468, i32* %187, align 1, !tbaa !2455
  %3469 = extractelement <2 x i32> %3466, i32 1
  store i32 %3469, i32* %189, align 1, !tbaa !2455
  %3470 = extractelement <2 x i32> %3467, i32 0
  store i32 %3470, i32* %190, align 1, !tbaa !2455
  %3471 = extractelement <2 x i32> %3467, i32 1
  store i32 %3471, i32* %192, align 1, !tbaa !2455
  %3472 = load <2 x i32>, <2 x i32>* %1288, align 1
  %3473 = load <2 x i32>, <2 x i32>* %1290, align 1
  %3474 = extractelement <2 x i32> %3472, i32 0
  store i32 %3474, i32* %1252, align 1, !tbaa !2455
  %3475 = extractelement <2 x i32> %3472, i32 1
  store i32 %3475, i32* %1255, align 1, !tbaa !2455
  %3476 = extractelement <2 x i32> %3473, i32 0
  store i32 %3476, i32* %1257, align 1, !tbaa !2455
  %3477 = extractelement <2 x i32> %3473, i32 1
  store i32 %3477, i32* %1260, align 1, !tbaa !2455
  %3478 = load i64, i64* %RBP, align 8
  %3479 = add i64 %3478, -256
  %3480 = add i64 %3465, 14
  store i64 %3480, i64* %PC, align 8
  %3481 = inttoptr i64 %3479 to i64*
  %3482 = load i64, i64* %3481, align 8
  store i64 %3482, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %3483 = add i64 %3478, -260
  %3484 = load i32, i32* %EAX, align 4
  %3485 = add i64 %3465, 20
  store i64 %3485, i64* %PC, align 8
  %3486 = inttoptr i64 %3483 to i32*
  store i32 %3484, i32* %3486, align 4
  %3487 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2451
  %3488 = add i64 %3487, -6161
  %3489 = add i64 %3487, 7
  %3490 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3491 = add i64 %3490, -8
  %3492 = inttoptr i64 %3491 to i64*
  store i64 %3489, i64* %3492, align 8
  store i64 %3491, i64* %RSP, align 8, !tbaa !2428
  store i64 %3488, i64* %PC, align 8, !tbaa !2428
  %3493 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %3306)
  %3494 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %3495 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 152) to i64*), align 8
  store i64 %3495, i64* %75, align 1, !tbaa !2452
  store i32 0, i32* %1252, align 1, !tbaa !2454
  store i32 0, i32* %1255, align 1, !tbaa !2454
  %3496 = load i64, i64* %RBP, align 8
  %3497 = add i64 %3496, -16
  %3498 = add i64 %3494, 26
  store i64 %3498, i64* %PC, align 8
  %3499 = load i64, i64* %81, align 1
  %3500 = inttoptr i64 %3497 to i64*
  store i64 %3499, i64* %3500, align 8
  %3501 = load i64, i64* %PC, align 8
  %3502 = load i64, i64* bitcast (%one_type* @one to i64*), align 8
  store i64 %3502, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %3503 = load i64, i64* %RBP, align 8
  %3504 = add i64 %3503, -40
  %3505 = add i64 %3501, 14
  store i64 %3505, i64* %PC, align 8
  %3506 = inttoptr i64 %3504 to i64*
  store i64 %3502, i64* %3506, align 8
  %3507 = load i64, i64* %PC, align 8
  %3508 = load i64, i64* %75, align 1
  store i64 %3508, i64* bitcast (%sa_type* @sa to i64*), align 8
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3509 = load i64, i64* %RBP, align 8
  %3510 = add i64 %3509, -80
  %3511 = add i64 %3507, 24
  store i64 %3511, i64* %PC, align 8
  %3512 = inttoptr i64 %3510 to i64*
  %3513 = load i64, i64* %3512, align 8
  %3514 = sitofp i64 %3513 to double
  store double %3514, double* %80, align 1, !tbaa !2452
  %3515 = bitcast i64 %3508 to double
  %3516 = fdiv double %3515, %3514
  store double %3516, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %3517 = add i64 %3509, -32
  %3518 = add i64 %3507, 33
  store i64 %3518, i64* %PC, align 8
  %3519 = inttoptr i64 %3517 to double*
  store double %3516, double* %3519, align 8
  %3520 = load i64, i64* %RBP, align 8
  %3521 = add i64 %3520, -264
  %3522 = load i32, i32* %EAX, align 4
  %3523 = load i64, i64* %PC, align 8
  %3524 = add i64 %3523, 6
  store i64 %3524, i64* %PC, align 8
  %3525 = inttoptr i64 %3521 to i32*
  store i32 %3522, i32* %3525, align 4
  %3526 = load i64, i64* %PC, align 8
  %3527 = add i64 %3526, 2345
  %3528 = add i64 %3526, 5
  %3529 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3530 = add i64 %3529, -8
  %3531 = inttoptr i64 %3530 to i64*
  store i64 %3528, i64* %3531, align 8
  store i64 %3530, i64* %RSP, align 8, !tbaa !2428
  store i64 %3527, i64* %PC, align 8, !tbaa !2428
  %3532 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* nonnull %0, i64 %3527, %struct.Memory* %3493)
  %3533 = load i64, i64* %RBP, align 8
  %3534 = add i64 %3533, -72
  %3535 = load i64, i64* %PC, align 8
  %3536 = add i64 %3535, 8
  store i64 %3536, i64* %PC, align 8
  %3537 = inttoptr i64 %3534 to i64*
  store i64 1, i64* %3537, align 8
  %3538 = load i64, i64* %RBP, align 8
  %3539 = add i64 %3538, -268
  %3540 = load i32, i32* %EAX, align 4
  %3541 = load i64, i64* %PC, align 8
  %3542 = add i64 %3541, 6
  store i64 %3542, i64* %PC, align 8
  %3543 = inttoptr i64 %3539 to i32*
  store i32 %3540, i32* %3543, align 4
  %.pre216 = load i64, i64* %PC, align 8
  br label %block_401cba

block_400bcf:                                     ; preds = %block_400b83, %block_400bdd
  %3544 = phi i64 [ %.pre211, %block_400b83 ], [ %1111, %block_400bdd ]
  %3545 = load i64, i64* %RBP, align 8
  %3546 = add i64 %3545, -72
  %3547 = add i64 %3544, 4
  store i64 %3547, i64* %PC, align 8
  %3548 = inttoptr i64 %3546 to i64*
  %3549 = load i64, i64* %3548, align 8
  store i64 %3549, i64* %RAX, align 8, !tbaa !2428
  %3550 = add i64 %3545, -80
  %3551 = add i64 %3544, 8
  store i64 %3551, i64* %PC, align 8
  %3552 = inttoptr i64 %3550 to i64*
  %3553 = load i64, i64* %3552, align 8
  %3554 = sub i64 %3549, %3553
  %3555 = icmp ult i64 %3549, %3553
  %3556 = zext i1 %3555 to i8
  store i8 %3556, i8* %23, align 1, !tbaa !2432
  %3557 = trunc i64 %3554 to i32
  %3558 = and i32 %3557, 255
  %3559 = tail call i32 @llvm.ctpop.i32(i32 %3558) #9
  %3560 = trunc i32 %3559 to i8
  %3561 = and i8 %3560, 1
  %3562 = xor i8 %3561, 1
  store i8 %3562, i8* %30, align 1, !tbaa !2446
  %3563 = xor i64 %3553, %3549
  %3564 = xor i64 %3563, %3554
  %3565 = lshr i64 %3564, 4
  %3566 = trunc i64 %3565 to i8
  %3567 = and i8 %3566, 1
  store i8 %3567, i8* %35, align 1, !tbaa !2450
  %3568 = icmp eq i64 %3554, 0
  %3569 = zext i1 %3568 to i8
  store i8 %3569, i8* %38, align 1, !tbaa !2447
  %3570 = lshr i64 %3554, 63
  %3571 = trunc i64 %3570 to i8
  store i8 %3571, i8* %41, align 1, !tbaa !2448
  %3572 = lshr i64 %3549, 63
  %3573 = lshr i64 %3553, 63
  %3574 = xor i64 %3573, %3572
  %3575 = xor i64 %3570, %3572
  %3576 = add nuw nsw i64 %3575, %3574
  %3577 = icmp eq i64 %3576, 2
  %3578 = zext i1 %3577 to i8
  store i8 %3578, i8* %47, align 1, !tbaa !2449
  %3579 = icmp ne i8 %3571, 0
  %3580 = xor i1 %3579, %3577
  %.demorgan220 = or i1 %3568, %3580
  %.v235 = select i1 %.demorgan220, i64 14, i64 178
  %3581 = add i64 %3544, %.v235
  %3582 = add i64 %3581, 10
  store i64 %3582, i64* %PC, align 8
  br i1 %.demorgan220, label %block_400bdd, label %block_400c81

block_401185:                                     ; preds = %block_40119a, %block_400f2f
  %3583 = phi i64 [ %3232, %block_40119a ], [ %.pre213, %block_400f2f ]
  %3584 = load i64, i64* %RBP, align 8
  %3585 = add i64 %3584, -72
  %3586 = add i64 %3583, 4
  store i64 %3586, i64* %PC, align 8
  %3587 = inttoptr i64 %3585 to i64*
  %3588 = load i64, i64* %3587, align 8
  store i64 %3588, i64* %RAX, align 8, !tbaa !2428
  %3589 = add i64 %3584, -80
  %3590 = add i64 %3583, 8
  store i64 %3590, i64* %PC, align 8
  %3591 = inttoptr i64 %3589 to i64*
  %3592 = load i64, i64* %3591, align 8
  %3593 = add i64 %3592, -1
  store i64 %3593, i64* %RCX, align 8, !tbaa !2428
  %3594 = lshr i64 %3593, 63
  %3595 = sub i64 %3588, %3593
  %3596 = icmp ult i64 %3588, %3593
  %3597 = zext i1 %3596 to i8
  store i8 %3597, i8* %23, align 1, !tbaa !2432
  %3598 = trunc i64 %3595 to i32
  %3599 = and i32 %3598, 255
  %3600 = tail call i32 @llvm.ctpop.i32(i32 %3599) #9
  %3601 = trunc i32 %3600 to i8
  %3602 = and i8 %3601, 1
  %3603 = xor i8 %3602, 1
  store i8 %3603, i8* %30, align 1, !tbaa !2446
  %3604 = xor i64 %3593, %3588
  %3605 = xor i64 %3604, %3595
  %3606 = lshr i64 %3605, 4
  %3607 = trunc i64 %3606 to i8
  %3608 = and i8 %3607, 1
  store i8 %3608, i8* %35, align 1, !tbaa !2450
  %3609 = icmp eq i64 %3595, 0
  %3610 = zext i1 %3609 to i8
  store i8 %3610, i8* %38, align 1, !tbaa !2447
  %3611 = lshr i64 %3595, 63
  %3612 = trunc i64 %3611 to i8
  store i8 %3612, i8* %41, align 1, !tbaa !2448
  %3613 = lshr i64 %3588, 63
  %3614 = xor i64 %3594, %3613
  %3615 = xor i64 %3611, %3613
  %3616 = add nuw nsw i64 %3615, %3614
  %3617 = icmp eq i64 %3616, 2
  %3618 = zext i1 %3617 to i8
  store i8 %3618, i8* %47, align 1, !tbaa !2449
  %3619 = icmp ne i8 %3612, 0
  %3620 = xor i1 %3619, %3617
  %.demorgan222 = or i1 %3609, %3620
  %.v229 = select i1 %.demorgan222, i64 21, i64 196
  %3621 = add i64 %3583, %.v229
  store i64 %3621, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan222, label %block_40119a, label %block_401249

block_401504:                                     ; preds = %block_4014ef
  %3622 = add i64 %987, 6
  store i64 %3622, i64* %PC, align 8
  %3623 = load i64, i64* %953, align 8
  %3624 = sitofp i64 %3623 to double
  store double %3624, double* %74, align 1, !tbaa !2452
  %3625 = add i64 %950, -48
  %3626 = add i64 %987, 11
  store i64 %3626, i64* %PC, align 8
  %3627 = inttoptr i64 %3625 to double*
  %3628 = load double, double* %3627, align 8
  %3629 = fmul double %3624, %3628
  store double %3629, double* %74, align 1, !tbaa !2452
  %3630 = add i64 %950, -24
  %3631 = add i64 %987, 16
  store i64 %3631, i64* %PC, align 8
  %3632 = inttoptr i64 %3630 to double*
  store double %3629, double* %3632, align 8
  %3633 = load i64, i64* %RBP, align 8
  %3634 = add i64 %3633, -24
  %3635 = load i64, i64* %PC, align 8
  %3636 = add i64 %3635, 5
  store i64 %3636, i64* %PC, align 8
  %3637 = inttoptr i64 %3634 to i64*
  %3638 = load i64, i64* %3637, align 8
  store i64 %3638, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3639 = add i64 %3635, 10
  store i64 %3639, i64* %PC, align 8
  %3640 = bitcast i64 %3638 to double
  %3641 = inttoptr i64 %3634 to double*
  %3642 = load double, double* %3641, align 8
  %3643 = fmul double %3640, %3642
  store double %3643, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %3644 = add i64 %3633, -40
  %3645 = add i64 %3635, 15
  store i64 %3645, i64* %PC, align 8
  %3646 = inttoptr i64 %3644 to double*
  store double %3643, double* %3646, align 8
  %3647 = load i64, i64* %RBP, align 8
  %3648 = add i64 %3647, -24
  %3649 = load i64, i64* %PC, align 8
  %3650 = add i64 %3649, 5
  store i64 %3650, i64* %PC, align 8
  %3651 = inttoptr i64 %3648 to i64*
  %3652 = load i64, i64* %3651, align 8
  store i64 %3652, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3653 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %3653, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %3654 = add i64 %3647, -40
  %3655 = add i64 %3649, 19
  store i64 %3655, i64* %PC, align 8
  %.cast166 = bitcast i64 %3653 to double
  %3656 = inttoptr i64 %3654 to double*
  %3657 = load double, double* %3656, align 8
  %3658 = fmul double %.cast166, %3657
  %3659 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %3660 = fadd double %3658, %3659
  store double %3660, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3661 = add i64 %3649, 33
  store i64 %3661, i64* %PC, align 8
  %3662 = load double, double* %3656, align 8
  %3663 = fmul double %3660, %3662
  %3664 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %3665 = fadd double %3663, %3664
  store double %3665, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3666 = add i64 %3649, 47
  store i64 %3666, i64* %PC, align 8
  %3667 = load double, double* %3656, align 8
  %3668 = fmul double %3665, %3667
  %3669 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %3670 = fadd double %3668, %3669
  store double %3670, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3671 = add i64 %3649, 61
  store i64 %3671, i64* %PC, align 8
  %3672 = load double, double* %3656, align 8
  %3673 = fmul double %3670, %3672
  %3674 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %3675 = fadd double %3673, %3674
  store double %3675, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3676 = add i64 %3649, 75
  store i64 %3676, i64* %PC, align 8
  %3677 = load double, double* %3656, align 8
  %3678 = fmul double %3675, %3677
  %3679 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %3680 = fadd double %3678, %3679
  store double %3680, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3681 = add i64 %3649, 89
  store i64 %3681, i64* %PC, align 8
  %3682 = load double, double* %3656, align 8
  %3683 = fmul double %3680, %3682
  %3684 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3685 = fadd double %3683, %3684
  store double %3685, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3686 = bitcast i64 %3652 to double
  %3687 = fmul double %3685, %3686
  store double %3687, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %3688 = add i64 %3647, -32
  %3689 = add i64 %3649, 107
  store i64 %3689, i64* %PC, align 8
  %3690 = inttoptr i64 %3688 to double*
  store double %3687, double* %3690, align 8
  %3691 = load i64, i64* %RBP, align 8
  %3692 = add i64 %3691, -16
  %3693 = load i64, i64* %PC, align 8
  %3694 = add i64 %3693, 5
  store i64 %3694, i64* %PC, align 8
  %3695 = inttoptr i64 %3692 to i64*
  %3696 = load i64, i64* %3695, align 8
  store i64 %3696, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3697 = add i64 %3691, -32
  %3698 = add i64 %3693, 10
  store i64 %3698, i64* %PC, align 8
  %3699 = inttoptr i64 %3697 to i64*
  %3700 = load i64, i64* %3699, align 8
  store i64 %3700, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %3701 = add i64 %3691, -40
  %3702 = add i64 %3693, 15
  store i64 %3702, i64* %PC, align 8
  %3703 = inttoptr i64 %3701 to i64*
  %3704 = load i64, i64* %3703, align 8
  store i64 %3704, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %3705 = add i64 %3693, 20
  store i64 %3705, i64* %PC, align 8
  %3706 = load i64, i64* %3703, align 8
  store i64 %3706, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %3707 = add i64 %3693, 25
  store i64 %3707, i64* %PC, align 8
  %3708 = load i64, i64* %3703, align 8
  store i64 %3708, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %3709 = add i64 %3693, 30
  store i64 %3709, i64* %PC, align 8
  %3710 = load i64, i64* %3703, align 8
  store i64 %3710, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %3711 = add i64 %3693, 35
  store i64 %3711, i64* %PC, align 8
  %3712 = load i64, i64* %3703, align 8
  store i64 %3712, i64* %107, align 1, !tbaa !2452
  store double 0.000000e+00, double* %109, align 1, !tbaa !2452
  %3713 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  store i64 %3713, i64* %209, align 1, !tbaa !2452
  store double 0.000000e+00, double* %211, align 1, !tbaa !2452
  %3714 = add i64 %3693, 49
  store i64 %3714, i64* %PC, align 8
  %.cast167 = bitcast i64 %3713 to double
  %3715 = inttoptr i64 %3701 to double*
  %3716 = load double, double* %3715, align 8
  %3717 = fmul double %.cast167, %3716
  %3718 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %3719 = fadd double %3717, %3718
  store double %3719, double* %121, align 1, !tbaa !2452
  store i64 0, i64* %210, align 1, !tbaa !2452
  %3720 = bitcast i64 %3712 to double
  %3721 = fmul double %3719, %3720
  %3722 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %3723 = fadd double %3721, %3722
  store double %3723, double* %106, align 1, !tbaa !2452
  store i64 0, i64* %108, align 1, !tbaa !2452
  %3724 = bitcast i64 %3710 to double
  %3725 = fmul double %3723, %3724
  %3726 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %3727 = fadd double %3725, %3726
  store double %3727, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %3728 = bitcast i64 %3708 to double
  %3729 = fmul double %3727, %3728
  %3730 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %3731 = fadd double %3729, %3730
  store double %3731, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %3732 = bitcast i64 %3706 to double
  %3733 = fmul double %3731, %3732
  %3734 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %3735 = fadd double %3733, %3734
  store double %3735, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %3736 = bitcast i64 %3704 to double
  %3737 = fmul double %3735, %3736
  %3738 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3739 = fadd double %3737, %3738
  store double %3739, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %3740 = load double, double* %80, align 1
  %3741 = fdiv double %3740, %3739
  store double %3741, double* %80, align 1, !tbaa !2452
  %3742 = load double, double* %74, align 1
  %3743 = fadd double %3741, %3742
  store double %3743, double* %74, align 1, !tbaa !2452
  %3744 = load i64, i64* %RBP, align 8
  %3745 = add i64 %3744, -16
  %3746 = add i64 %3693, 136
  store i64 %3746, i64* %PC, align 8
  %3747 = inttoptr i64 %3745 to double*
  store double %3743, double* %3747, align 8
  %3748 = load i64, i64* %RBP, align 8
  %3749 = add i64 %3748, -72
  %3750 = load i64, i64* %PC, align 8
  %3751 = add i64 %3750, 4
  store i64 %3751, i64* %PC, align 8
  %3752 = inttoptr i64 %3749 to i64*
  %3753 = load i64, i64* %3752, align 8
  %3754 = add i64 %3753, 1
  store i64 %3754, i64* %RAX, align 8, !tbaa !2428
  %3755 = icmp eq i64 %3753, -1
  %3756 = icmp eq i64 %3754, 0
  %3757 = or i1 %3755, %3756
  %3758 = zext i1 %3757 to i8
  store i8 %3758, i8* %23, align 1, !tbaa !2432
  %3759 = trunc i64 %3754 to i32
  %3760 = and i32 %3759, 255
  %3761 = tail call i32 @llvm.ctpop.i32(i32 %3760) #9
  %3762 = trunc i32 %3761 to i8
  %3763 = and i8 %3762, 1
  %3764 = xor i8 %3763, 1
  store i8 %3764, i8* %30, align 1, !tbaa !2446
  %3765 = xor i64 %3754, %3753
  %3766 = lshr i64 %3765, 4
  %3767 = trunc i64 %3766 to i8
  %3768 = and i8 %3767, 1
  store i8 %3768, i8* %35, align 1, !tbaa !2450
  %3769 = zext i1 %3756 to i8
  store i8 %3769, i8* %38, align 1, !tbaa !2447
  %3770 = lshr i64 %3754, 63
  %3771 = trunc i64 %3770 to i8
  store i8 %3771, i8* %41, align 1, !tbaa !2448
  %3772 = lshr i64 %3753, 63
  %3773 = xor i64 %3770, %3772
  %3774 = add nuw nsw i64 %3773, %3770
  %3775 = icmp eq i64 %3774, 2
  %3776 = zext i1 %3775 to i8
  store i8 %3776, i8* %47, align 1, !tbaa !2449
  %3777 = add i64 %3750, 12
  store i64 %3777, i64* %PC, align 8
  store i64 %3754, i64* %3752, align 8
  %3778 = load i64, i64* %PC, align 8
  %3779 = add i64 %3778, -307
  store i64 %3779, i64* %PC, align 8, !tbaa !2428
  br label %block_4014ef

block_400b83:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1, %block_400b77
  %3780 = phi i64 [ %1404, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1 ], [ %214, %block_400b77 ]
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %3781 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %3781, align 1, !tbaa !2454
  %3782 = load i64, i64* %RBP, align 8
  %3783 = add i64 %3782, -80
  %3784 = add i64 %3780, 19
  store i64 %3784, i64* %PC, align 8
  %3785 = inttoptr i64 %3783 to i64*
  %3786 = load i64, i64* %3785, align 8
  %3787 = sitofp i64 %3786 to double
  store double %3787, double* bitcast (%sc_type* @sc to double*), align 8
  %3788 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %3788, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %3789 = add i64 %3782, -24
  %3790 = add i64 %3780, 42
  store i64 %3790, i64* %PC, align 8
  %3791 = inttoptr i64 %3789 to i64*
  store i64 %3788, i64* %3791, align 8
  %3792 = load i64, i64* %RBP, align 8
  %3793 = add i64 %3792, -32
  %3794 = load i64, i64* %PC, align 8
  %3795 = add i64 %3794, 5
  store i64 %3795, i64* %PC, align 8
  %3796 = load i64, i64* %75, align 1
  %3797 = inttoptr i64 %3793 to i64*
  store i64 %3796, i64* %3797, align 8
  %3798 = load i64, i64* %RBP, align 8
  %3799 = add i64 %3798, -40
  %3800 = load i64, i64* %PC, align 8
  %3801 = add i64 %3800, 5
  store i64 %3801, i64* %PC, align 8
  %3802 = load i64, i64* %75, align 1
  %3803 = inttoptr i64 %3799 to i64*
  store i64 %3802, i64* %3803, align 8
  %3804 = load i64, i64* %RBP, align 8
  %3805 = add i64 %3804, -48
  %3806 = load i64, i64* %PC, align 8
  %3807 = add i64 %3806, 5
  store i64 %3807, i64* %PC, align 8
  %3808 = load i64, i64* %75, align 1
  %3809 = inttoptr i64 %3805 to i64*
  store i64 %3808, i64* %3809, align 8
  %3810 = load i64, i64* %PC, align 8
  %3811 = add i64 %3810, 6676
  %3812 = add i64 %3810, 5
  %3813 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3814 = add i64 %3813, -8
  %3815 = inttoptr i64 %3814 to i64*
  store i64 %3812, i64* %3815, align 8
  store i64 %3814, i64* %RSP, align 8, !tbaa !2428
  store i64 %3811, i64* %PC, align 8, !tbaa !2428
  %3816 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* nonnull %0, i64 %3811, %struct.Memory* %1397)
  %3817 = load i64, i64* %RBP, align 8
  %3818 = add i64 %3817, -72
  %3819 = load i64, i64* %PC, align 8
  %3820 = add i64 %3819, 8
  store i64 %3820, i64* %PC, align 8
  %3821 = inttoptr i64 %3818 to i64*
  store i64 1, i64* %3821, align 8
  %3822 = load i64, i64* %RBP, align 8
  %3823 = add i64 %3822, -152
  %3824 = load i32, i32* %EAX, align 4
  %3825 = load i64, i64* %PC, align 8
  %3826 = add i64 %3825, 6
  store i64 %3826, i64* %PC, align 8
  %3827 = inttoptr i64 %3823 to i32*
  store i32 %3824, i32* %3827, align 4
  %.pre211 = load i64, i64* %PC, align 8
  br label %block_400bcf

block_400879:                                     ; preds = %block_40084e
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %3828 = add i64 %3916, 7511
  %3829 = add i64 %3916, 15
  %3830 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3831 = add i64 %3830, -8
  %3832 = inttoptr i64 %3831 to i64*
  store i64 %3829, i64* %3832, align 8
  store i64 %3831, i64* %RSP, align 8, !tbaa !2428
  store i64 %3828, i64* %PC, align 8, !tbaa !2428
  %3833 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* nonnull %0, i64 %3828, %struct.Memory* %3108)
  %3834 = load i64, i64* %PC, align 8
  %3835 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %3835, align 1, !tbaa !2454
  %3836 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %3837 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %3838 = fmul double %3836, %3837
  store double %3838, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  store double %3838, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %3839 = add i64 %3834, 39
  store i64 %3839, i64* %PC, align 8
  %3840 = load double, double* %74, align 1
  %3841 = fcmp uno double %3840, %3838
  br i1 %3841, label %3842, label %3852

; <label>:3842:                                   ; preds = %block_400879
  %3843 = fadd double %3838, %3840
  %3844 = bitcast double %3843 to i64
  %3845 = and i64 %3844, 9221120237041090560
  %3846 = icmp eq i64 %3845, 9218868437227405312
  %3847 = and i64 %3844, 2251799813685247
  %3848 = icmp ne i64 %3847, 0
  %3849 = and i1 %3846, %3848
  br i1 %3849, label %3850, label %3858

; <label>:3850:                                   ; preds = %3842
  %3851 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3839, %struct.Memory* %3833) #12
  %.pre207 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:3852:                                   ; preds = %block_400879
  %3853 = fcmp ogt double %3840, %3838
  br i1 %3853, label %3858, label %3854

; <label>:3854:                                   ; preds = %3852
  %3855 = fcmp olt double %3840, %3838
  br i1 %3855, label %3858, label %3856

; <label>:3856:                                   ; preds = %3854
  %3857 = fcmp oeq double %3840, %3838
  br i1 %3857, label %3858, label %3862

; <label>:3858:                                   ; preds = %3856, %3854, %3852, %3842
  %3859 = phi i8 [ 0, %3852 ], [ 0, %3854 ], [ 1, %3856 ], [ 1, %3842 ]
  %3860 = phi i8 [ 0, %3852 ], [ 0, %3854 ], [ 0, %3856 ], [ 1, %3842 ]
  %3861 = phi i8 [ 0, %3852 ], [ 1, %3854 ], [ 0, %3856 ], [ 1, %3842 ]
  store i8 %3859, i8* %38, align 1, !tbaa !2451
  store i8 %3860, i8* %30, align 1, !tbaa !2451
  store i8 %3861, i8* %23, align 1, !tbaa !2451
  br label %3862

; <label>:3862:                                   ; preds = %3858, %3856
  store i8 0, i8* %47, align 1, !tbaa !2451
  store i8 0, i8* %41, align 1, !tbaa !2451
  store i8 0, i8* %35, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %3862, %3850
  %3863 = phi i64 [ %.pre207, %3850 ], [ %3839, %3862 ]
  %3864 = phi %struct.Memory* [ %3851, %3850 ], [ %3833, %3862 ]
  %3865 = load i64, i64* %RBP, align 8
  %3866 = add i64 %3865, -128
  %3867 = load i32, i32* %EAX, align 4
  %3868 = add i64 %3863, 3
  store i64 %3868, i64* %PC, align 8
  %3869 = inttoptr i64 %3866 to i32*
  store i32 %3867, i32* %3869, align 4
  %3870 = load i64, i64* %PC, align 8
  %3871 = add i64 %3870, 18
  %3872 = add i64 %3870, 6
  %3873 = load i8, i8* %23, align 1, !tbaa !2432
  %3874 = load i8, i8* %38, align 1, !tbaa !2447
  %3875 = or i8 %3874, %3873
  %3876 = icmp ne i8 %3875, 0
  %3877 = select i1 %3876, i64 %3871, i64 %3872
  store i64 %3877, i64* %PC, align 8, !tbaa !2428
  br i1 %3876, label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_4008c4_crit_edge, label %block_4008b8

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_4008c4_crit_edge: ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %.pre208 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  br label %block_4008c4

block_40084e:                                     ; preds = %block_400863, %block_400811
  %3878 = phi i64 [ %3261, %block_400863 ], [ %.pre206, %block_400811 ]
  %3879 = load i64, i64* %RBP, align 8
  %3880 = add i64 %3879, -72
  %3881 = add i64 %3878, 4
  store i64 %3881, i64* %PC, align 8
  %3882 = inttoptr i64 %3880 to i64*
  %3883 = load i64, i64* %3882, align 8
  store i64 %3883, i64* %RAX, align 8, !tbaa !2428
  %3884 = add i64 %3879, -88
  %3885 = add i64 %3878, 8
  store i64 %3885, i64* %PC, align 8
  %3886 = inttoptr i64 %3884 to i64*
  %3887 = load i64, i64* %3886, align 8
  %3888 = add i64 %3887, -1
  store i64 %3888, i64* %RCX, align 8, !tbaa !2428
  %3889 = lshr i64 %3888, 63
  %3890 = sub i64 %3883, %3888
  %3891 = icmp ult i64 %3883, %3888
  %3892 = zext i1 %3891 to i8
  store i8 %3892, i8* %23, align 1, !tbaa !2432
  %3893 = trunc i64 %3890 to i32
  %3894 = and i32 %3893, 255
  %3895 = tail call i32 @llvm.ctpop.i32(i32 %3894) #9
  %3896 = trunc i32 %3895 to i8
  %3897 = and i8 %3896, 1
  %3898 = xor i8 %3897, 1
  store i8 %3898, i8* %30, align 1, !tbaa !2446
  %3899 = xor i64 %3888, %3883
  %3900 = xor i64 %3899, %3890
  %3901 = lshr i64 %3900, 4
  %3902 = trunc i64 %3901 to i8
  %3903 = and i8 %3902, 1
  store i8 %3903, i8* %35, align 1, !tbaa !2450
  %3904 = icmp eq i64 %3890, 0
  %3905 = zext i1 %3904 to i8
  store i8 %3905, i8* %38, align 1, !tbaa !2447
  %3906 = lshr i64 %3890, 63
  %3907 = trunc i64 %3906 to i8
  store i8 %3907, i8* %41, align 1, !tbaa !2448
  %3908 = lshr i64 %3883, 63
  %3909 = xor i64 %3889, %3908
  %3910 = xor i64 %3906, %3908
  %3911 = add nuw nsw i64 %3910, %3909
  %3912 = icmp eq i64 %3911, 2
  %3913 = zext i1 %3912 to i8
  store i8 %3913, i8* %47, align 1, !tbaa !2449
  %3914 = icmp ne i8 %3907, 0
  %3915 = xor i1 %3914, %3912
  %.demorgan218 = or i1 %3904, %3915
  %.v = select i1 %.demorgan218, i64 21, i64 43
  %3916 = add i64 %3878, %.v
  store i64 %3916, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan218, label %block_400863, label %block_400879

block_400c81:                                     ; preds = %block_400bcf
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %3917 = add i64 %3581, 6479
  %3918 = add i64 %3581, 15
  %3919 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3920 = add i64 %3919, -8
  %3921 = inttoptr i64 %3920 to i64*
  store i64 %3918, i64* %3921, align 8
  store i64 %3920, i64* %RSP, align 8, !tbaa !2428
  store i64 %3917, i64* %PC, align 8, !tbaa !2428
  %3922 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* nonnull %0, i64 %3917, %struct.Memory* %3816)
  %3923 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 426), i64* %RDI, align 8, !tbaa !2428
  %3924 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 72) to i64*), align 8
  store i64 %3924, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3925 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 96) to i64*), align 16
  store i64 %3925, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %3926 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 104) to double*), align 8
  %3927 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %3928 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %3929 = fmul double %3927, %3928
  store double %3929, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 48) to double*), align 16
  %3930 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to double*), align 8
  %3931 = fsub double %3929, %3930
  %3932 = fdiv double %3931, %3926
  store double %3932, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  store double %3932, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 56) to double*), align 8
  %3933 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %3933, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %3934 = load i64, i64* %RBP, align 8
  %3935 = add i64 %3934, -48
  %3936 = add i64 %3923, 106
  store i64 %3936, i64* %PC, align 8
  %.cast157 = bitcast i64 %3933 to double
  %3937 = inttoptr i64 %3935 to double*
  %3938 = load double, double* %3937, align 8
  %3939 = fmul double %.cast157, %3938
  %3940 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %3941 = fdiv double %3939, %3940
  %3942 = tail call double @llvm.trunc.f64(double %3941) #9
  %3943 = tail call double @llvm.fabs.f64(double %3942) #9
  %3944 = fcmp ogt double %3943, 0x43E0000000000000
  %3945 = fptosi double %3942 to i64
  %3946 = select i1 %3944, i64 -9223372036854775808, i64 %3945
  store i64 %3946, i64* %RCX, align 8, !tbaa !2428
  %3947 = add i64 %3934, -80
  %3948 = add i64 %3923, 124
  store i64 %3948, i64* %PC, align 8
  %3949 = inttoptr i64 %3947 to i64*
  store i64 %3946, i64* %3949, align 8
  %3950 = load i64, i64* %PC, align 8
  %3951 = load i64, i64* bitcast (%four_type* @four to i64*), align 8
  store i64 %3951, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %3952 = load i64, i64* %RBP, align 8
  %3953 = add i64 %3952, -40
  %3954 = add i64 %3950, 14
  store i64 %3954, i64* %PC, align 8
  %.cast158 = bitcast i64 %3951 to double
  %3955 = inttoptr i64 %3953 to double*
  %3956 = load double, double* %3955, align 8
  %3957 = fmul double %.cast158, %3956
  %3958 = load double, double* bitcast (%five_type* @five to double*), align 8
  %3959 = fdiv double %3957, %3958
  store double %3959, double* bitcast (%sa_type* @sa to double*), align 8
  store double %3959, double* %86, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %3960 = bitcast %union.VectorReg* %8 to double*
  store double %3958, double* %3960, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %3961 = add i64 %3952, -32
  %3962 = add i64 %3950, 55
  store i64 %3962, i64* %PC, align 8
  %3963 = inttoptr i64 %3961 to double*
  %3964 = load double, double* %3963, align 8
  %3965 = fdiv double %3958, %3964
  store double %3965, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %3966 = fadd double %3959, %3965
  store double %3966, double* bitcast (%sb_type* @sb to double*), align 8
  %3967 = load i64, i64* %81, align 1
  store i64 %3967, i64* bitcast (%sc_type* @sc to i64*), align 8
  %3968 = bitcast %union.VectorReg* %6 to double*
  store double %3966, double* %3968, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  store i64 %3967, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %3969 = add i64 %3950, 100
  store i64 %3969, i64* %PC, align 8
  %3970 = inttoptr i64 %3961 to i64*
  %3971 = load i64, i64* %3970, align 8
  store i64 %3971, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %3972 = add i64 %3950, 105
  store i64 %3972, i64* %PC, align 8
  %3973 = bitcast i64 %3971 to double
  %3974 = load double, double* %3963, align 8
  %3975 = fmul double %3973, %3974
  store double %3975, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %3976 = add i64 %3950, 110
  store i64 %3976, i64* %PC, align 8
  %3977 = load double, double* %3963, align 8
  %3978 = fmul double %3975, %3977
  store double %3978, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %3979 = bitcast i64 %3967 to double
  %3980 = fdiv double %3979, %3978
  %3981 = fsub double %3966, %3980
  store double %3981, double* bitcast (%piprg_type* @piprg to double*), align 8
  %3982 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %3983 = fsub double %3981, %3982
  store double %3983, double* bitcast (%pierr_type* @pierr to double*), align 8
  %3984 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3985 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 56) to double*), align 8
  %3986 = fdiv double %3984, %3985
  store double %3986, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 64) to double*), align 16
  %3987 = load <2 x i32>, <2 x i32>* %1247, align 1
  %3988 = load <2 x i32>, <2 x i32>* %1249, align 1
  %3989 = extractelement <2 x i32> %3987, i32 0
  store i32 %3989, i32* %1252, align 1, !tbaa !2455
  %3990 = extractelement <2 x i32> %3987, i32 1
  store i32 %3990, i32* %1255, align 1, !tbaa !2455
  %3991 = extractelement <2 x i32> %3988, i32 0
  store i32 %3991, i32* %1257, align 1, !tbaa !2455
  %3992 = extractelement <2 x i32> %3988, i32 1
  store i32 %3992, i32* %1260, align 1, !tbaa !2455
  %3993 = load double, double* %80, align 1
  %3994 = load double, double* bitcast (%pierr_type* @pierr to double*), align 8
  %3995 = fmul double %3993, %3994
  store double %3995, double* %80, align 1, !tbaa !2452
  %3996 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 48) to double*), align 16
  %3997 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to double*), align 8
  %3998 = fsub double %3996, %3997
  %3999 = bitcast <2 x i32> %3987 to double
  %4000 = fmul double %3998, %3999
  store double %4000, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %4001 = fmul double %3999, %3986
  %4002 = load i64, i64* %RBP, align 8
  %4003 = add i64 %4002, -160
  %4004 = add i64 %3950, 232
  store i64 %4004, i64* %PC, align 8
  %4005 = inttoptr i64 %4003 to double*
  store double %4001, double* %4005, align 8
  %4006 = load i64, i64* %PC, align 8
  %4007 = load <2 x i32>, <2 x i32>* %1280, align 1
  %4008 = load <2 x i32>, <2 x i32>* %1282, align 1
  %4009 = extractelement <2 x i32> %4007, i32 0
  store i32 %4009, i32* %187, align 1, !tbaa !2455
  %4010 = extractelement <2 x i32> %4007, i32 1
  store i32 %4010, i32* %189, align 1, !tbaa !2455
  %4011 = extractelement <2 x i32> %4008, i32 0
  store i32 %4011, i32* %190, align 1, !tbaa !2455
  %4012 = extractelement <2 x i32> %4008, i32 1
  store i32 %4012, i32* %192, align 1, !tbaa !2455
  %4013 = load <2 x i32>, <2 x i32>* %1288, align 1
  %4014 = load <2 x i32>, <2 x i32>* %1290, align 1
  %4015 = extractelement <2 x i32> %4013, i32 0
  store i32 %4015, i32* %1252, align 1, !tbaa !2455
  %4016 = extractelement <2 x i32> %4013, i32 1
  store i32 %4016, i32* %1255, align 1, !tbaa !2455
  %4017 = extractelement <2 x i32> %4014, i32 0
  store i32 %4017, i32* %1257, align 1, !tbaa !2455
  %4018 = extractelement <2 x i32> %4014, i32 1
  store i32 %4018, i32* %1260, align 1, !tbaa !2455
  %4019 = load i64, i64* %RBP, align 8
  %4020 = add i64 %4019, -160
  %4021 = add i64 %4006, 14
  store i64 %4021, i64* %PC, align 8
  %4022 = inttoptr i64 %4020 to i64*
  %4023 = load i64, i64* %4022, align 8
  store i64 %4023, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %4024 = add i64 %4019, -164
  %4025 = load i32, i32* %EAX, align 4
  %4026 = add i64 %4006, 20
  store i64 %4026, i64* %PC, align 8
  %4027 = inttoptr i64 %4024 to i32*
  store i32 %4025, i32* %4027, align 4
  %4028 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2451
  %4029 = add i64 %4028, -2504
  %4030 = add i64 %4028, 7
  %4031 = load i64, i64* %RSP, align 8, !tbaa !2428
  %4032 = add i64 %4031, -8
  %4033 = inttoptr i64 %4032 to i64*
  store i64 %4030, i64* %4033, align 8
  store i64 %4032, i64* %RSP, align 8, !tbaa !2428
  store i64 %4029, i64* %PC, align 8, !tbaa !2428
  %4034 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %3922)
  %4035 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i32 0, i32* %187, align 1, !tbaa !2454
  store i32 0, i32* %189, align 1, !tbaa !2454
  store i32 0, i32* %190, align 1, !tbaa !2454
  store i32 0, i32* %192, align 1, !tbaa !2454
  %4036 = load i64, i64* bitcast (%piref_type* @piref to i64*), align 8
  store i64 %4036, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %4037 = load i64, i64* bitcast (%three_type* @three to i64*), align 8
  store i64 %4037, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %4038 = load i64, i64* %RBP, align 8
  %4039 = add i64 %4038, -80
  %4040 = add i64 %4035, 37
  store i64 %4040, i64* %PC, align 8
  %4041 = inttoptr i64 %4039 to i64*
  %4042 = load i64, i64* %4041, align 8
  %4043 = sitofp i64 %4042 to double
  store double %4043, double* %91, align 1, !tbaa !2452
  %4044 = bitcast i64 %4037 to double
  %4045 = fmul double %4043, %4044
  store double %4045, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %4046 = bitcast i64 %4036 to double
  %4047 = fdiv double %4046, %4045
  store double %4047, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %4048 = add i64 %4038, -48
  %4049 = add i64 %4035, 50
  store i64 %4049, i64* %PC, align 8
  %4050 = inttoptr i64 %4048 to double*
  store double %4047, double* %4050, align 8
  %4051 = load i64, i64* %RBP, align 8
  %4052 = add i64 %4051, -16
  %4053 = load i64, i64* %PC, align 8
  %4054 = add i64 %4053, 5
  store i64 %4054, i64* %PC, align 8
  %4055 = load i64, i64* %75, align 1
  %4056 = inttoptr i64 %4052 to i64*
  store i64 %4055, i64* %4056, align 8
  %4057 = load i64, i64* %RBP, align 8
  %4058 = add i64 %4057, -32
  %4059 = load i64, i64* %PC, align 8
  %4060 = add i64 %4059, 5
  store i64 %4060, i64* %PC, align 8
  %4061 = load i64, i64* %75, align 1
  %4062 = inttoptr i64 %4058 to i64*
  store i64 %4061, i64* %4062, align 8
  %4063 = load i64, i64* %RBP, align 8
  %4064 = add i64 %4063, -168
  %4065 = load i32, i32* %EAX, align 4
  %4066 = load i64, i64* %PC, align 8
  %4067 = add i64 %4066, 6
  store i64 %4067, i64* %PC, align 8
  %4068 = inttoptr i64 %4064 to i32*
  store i32 %4065, i32* %4068, align 4
  %4069 = load i64, i64* %PC, align 8
  %4070 = add i64 %4069, 6015
  %4071 = add i64 %4069, 5
  %4072 = load i64, i64* %RSP, align 8, !tbaa !2428
  %4073 = add i64 %4072, -8
  %4074 = inttoptr i64 %4073 to i64*
  store i64 %4071, i64* %4074, align 8
  store i64 %4073, i64* %RSP, align 8, !tbaa !2428
  store i64 %4070, i64* %PC, align 8, !tbaa !2428
  %4075 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* nonnull %0, i64 %4070, %struct.Memory* %4034)
  %4076 = load i64, i64* %RBP, align 8
  %4077 = add i64 %4076, -72
  %4078 = load i64, i64* %PC, align 8
  %4079 = add i64 %4078, 8
  store i64 %4079, i64* %PC, align 8
  %4080 = inttoptr i64 %4077 to i64*
  store i64 1, i64* %4080, align 8
  %4081 = load i64, i64* %RBP, align 8
  %4082 = add i64 %4081, -172
  %4083 = load i32, i32* %EAX, align 4
  %4084 = load i64, i64* %PC, align 8
  %4085 = add i64 %4084, 6
  store i64 %4085, i64* %PC, align 8
  %4086 = inttoptr i64 %4082 to i32*
  store i32 %4083, i32* %4086, align 4
  %.pre212 = load i64, i64* %PC, align 8
  br label %block_400e64
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4004d0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4004d0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 6304024, i64* %RSI, align 8, !tbaa !2428
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
  %10 = add i64 %8, -6304024
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
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #9
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
  br i1 %29, label %block_400508, label %block_4004f3

block_4004f3:                                     ; preds = %block_4004d0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2432
  store i8 1, i8* %12, align 1, !tbaa !2446
  store i8 1, i8* %14, align 1, !tbaa !2447
  store i8 0, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %13, align 1, !tbaa !2450
  %34 = add i64 %33, 21
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br label %block_400508

block_400508:                                     ; preds = %block_4004f3, %block_4004d0
  %35 = phi i64 [ %34, %block_4004f3 ], [ %33, %block_4004d0 ]
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
define %struct.Memory* @sub_400418__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400418:
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
  br i1 %18, label %block_40042a, label %block_400428

block_400428:                                     ; preds = %block_400418
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_40042a

block_40042a:                                     ; preds = %block_400428, %block_400418
  %27 = phi i64 [ %22, %block_400418 ], [ %.pre1, %block_400428 ]
  %28 = phi i64 [ %4, %block_400418 ], [ %.pre, %block_400428 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400418 ], [ %26, %block_400428 ]
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
define %struct.Memory* @sub_4025d0_dtime(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4025d0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %RCX = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %8 = load i64, i64* %RBP, align 8
  %9 = add i64 %1, 1
  store i64 %9, i64* %PC, align 8
  %10 = load i64, i64* %RSP, align 8, !tbaa !2428
  %11 = add i64 %10, -8
  %12 = inttoptr i64 %11 to i64*
  store i64 %8, i64* %12, align 8
  %13 = load i64, i64* %PC, align 8
  store i64 %11, i64* %RBP, align 8, !tbaa !2428
  %14 = add i64 %10, -40
  store i64 %14, i64* %RSP, align 8, !tbaa !2428
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 ptrtoint (%tnow_type* @tnow to i64), i64* %RAX, align 8, !tbaa !2428
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2432
  store i8 1, i8* %16, align 1, !tbaa !2446
  store i8 1, i8* %18, align 1, !tbaa !2447
  store i8 0, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  %21 = add i64 %10, -16
  %22 = load i64, i64* %RDI, align 8
  %23 = add i64 %13, 25
  store i64 %23, i64* %PC, align 8
  %24 = inttoptr i64 %21 to i64*
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* %RBP, align 8
  %26 = add i64 %25, -8
  %27 = load i64, i64* %PC, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* %PC, align 8
  %29 = inttoptr i64 %26 to i64*
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %RDI, align 8, !tbaa !2428
  %31 = add i64 %30, 16
  %32 = add i64 %27, 9
  store i64 %32, i64* %PC, align 8
  %33 = inttoptr i64 %31 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = bitcast [32 x %union.VectorReg]* %5 to double*
  %36 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %34, i64* %36, align 1, !tbaa !2452
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %38 = bitcast i64* %37 to double*
  store double 0.000000e+00, double* %38, align 1, !tbaa !2452
  %39 = add i64 %25, -16
  %40 = add i64 %27, 14
  store i64 %40, i64* %PC, align 8
  %41 = inttoptr i64 %39 to i64*
  store i64 %34, i64* %41, align 8
  %42 = load i64, i64* %RAX, align 8
  %43 = load i64, i64* %PC, align 8
  store i64 %42, i64* %RDI, align 8, !tbaa !2428
  %44 = add i64 %43, -8616
  %45 = add i64 %43, 8
  %46 = load i64, i64* %RSP, align 8, !tbaa !2428
  %47 = add i64 %46, -8
  %48 = inttoptr i64 %47 to i64*
  store i64 %45, i64* %48, align 8
  store i64 %47, i64* %RSP, align 8, !tbaa !2428
  store i64 %44, i64* %PC, align 8, !tbaa !2428
  %49 = tail call fastcc %struct.Memory* @ext_603318_gettimeofday(%struct.State* nonnull %0, %struct.Memory* %2)
  %50 = load i64, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %15, align 1, !tbaa !2432
  store i8 1, i8* %16, align 1, !tbaa !2446
  store i8 1, i8* %18, align 1, !tbaa !2447
  store i8 0, i8* %19, align 1, !tbaa !2448
  store i8 0, i8* %20, align 1, !tbaa !2449
  store i8 0, i8* %17, align 1, !tbaa !2450
  %51 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026e0__rodata_type* @seg_4026e0__rodata to i64), i64 240) to i64*), align 16
  store i64 %51, i64* %36, align 1, !tbaa !2452
  store double 0.000000e+00, double* %38, align 1, !tbaa !2452
  %52 = load i64, i64* bitcast (%tnow_type* @tnow to i64*), align 8
  %53 = sitofp i64 %52 to double
  %54 = bitcast %union.VectorReg* %6 to double*
  %55 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%tnow_type* @tnow to i64), i64 8) to i64*), align 8
  %56 = sitofp i64 %55 to double
  %57 = bitcast %union.VectorReg* %7 to double*
  %58 = bitcast i64 %51 to double
  %59 = fmul double %56, %58
  store double %59, double* %57, align 1, !tbaa !2452
  %60 = fadd double %53, %59
  store double %60, double* %54, align 1, !tbaa !2452
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -8
  %63 = add i64 %50, 42
  store i64 %63, i64* %PC, align 8
  %64 = inttoptr i64 %62 to i64*
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %RSI, align 8, !tbaa !2428
  %66 = add i64 %65, 16
  %67 = add i64 %50, 47
  store i64 %67, i64* %PC, align 8
  %68 = inttoptr i64 %66 to double*
  store double %60, double* %68, align 8
  %69 = load i64, i64* %RBP, align 8
  %70 = add i64 %69, -8
  %71 = load i64, i64* %PC, align 8
  %72 = add i64 %71, 4
  store i64 %72, i64* %PC, align 8
  %73 = inttoptr i64 %70 to i64*
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %RSI, align 8, !tbaa !2428
  %75 = add i64 %74, 16
  %76 = add i64 %71, 9
  store i64 %76, i64* %PC, align 8
  %77 = inttoptr i64 %75 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %36, align 1, !tbaa !2452
  store double 0.000000e+00, double* %38, align 1, !tbaa !2452
  %79 = add i64 %69, -16
  %80 = add i64 %71, 14
  store i64 %80, i64* %PC, align 8
  %81 = bitcast i64 %78 to double
  %82 = inttoptr i64 %79 to double*
  %83 = load double, double* %82, align 8
  %84 = fsub double %81, %83
  store double %84, double* %35, align 1, !tbaa !2452
  store i64 0, i64* %37, align 1, !tbaa !2452
  %85 = add i64 %71, 18
  store i64 %85, i64* %PC, align 8
  %86 = load i64, i64* %73, align 8
  store i64 %86, i64* %RSI, align 8, !tbaa !2428
  %87 = add i64 %86, 8
  %88 = add i64 %71, 23
  store i64 %88, i64* %PC, align 8
  %89 = inttoptr i64 %87 to double*
  store double %84, double* %89, align 8
  %90 = load i64, i64* %RBP, align 8
  %91 = add i64 %90, -20
  %92 = load i32, i32* %EAX, align 4
  %93 = load i64, i64* %PC, align 8
  %94 = add i64 %93, 3
  store i64 %94, i64* %PC, align 8
  %95 = inttoptr i64 %91 to i32*
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* %ECX, align 4
  %97 = zext i32 %96 to i64
  %98 = load i64, i64* %PC, align 8
  store i64 %97, i64* %RAX, align 8, !tbaa !2428
  %99 = load i64, i64* %RSP, align 8
  %100 = add i64 %99, 32
  store i64 %100, i64* %RSP, align 8, !tbaa !2428
  %101 = icmp ugt i64 %99, -33
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %15, align 1, !tbaa !2432
  %103 = trunc i64 %100 to i32
  %104 = and i32 %103, 255
  %105 = tail call i32 @llvm.ctpop.i32(i32 %104) #9
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  %108 = xor i8 %107, 1
  store i8 %108, i8* %16, align 1, !tbaa !2446
  %109 = xor i64 %100, %99
  %110 = lshr i64 %109, 4
  %111 = trunc i64 %110 to i8
  %112 = and i8 %111, 1
  store i8 %112, i8* %17, align 1, !tbaa !2450
  %113 = icmp eq i64 %100, 0
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %18, align 1, !tbaa !2447
  %115 = lshr i64 %100, 63
  %116 = trunc i64 %115 to i8
  store i8 %116, i8* %19, align 1, !tbaa !2448
  %117 = lshr i64 %99, 63
  %118 = xor i64 %115, %117
  %119 = add nuw nsw i64 %118, %115
  %120 = icmp eq i64 %119, 2
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %20, align 1, !tbaa !2449
  %122 = add i64 %98, 7
  store i64 %122, i64* %PC, align 8
  %123 = add i64 %99, 40
  %124 = inttoptr i64 %100 to i64*
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %RBP, align 8, !tbaa !2428
  store i64 %123, i64* %RSP, align 8, !tbaa !2428
  %126 = add i64 %98, 8
  store i64 %126, i64* %PC, align 8
  %127 = inttoptr i64 %123 to i64*
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %PC, align 8, !tbaa !2428
  %129 = add i64 %99, 48
  store i64 %129, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %49
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4026d4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_4026d4:
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
define %struct.Memory* @sub_4004a0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4004c8:
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
  store i64 6304024, i64* %RAX, align 8, !tbaa !2428
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
define %struct.Memory* @sub_4026d0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_4026d0:
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

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4026d0___libc_csu_fini() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4026d0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_4026d0___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4026d0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_402660___libc_csu_init() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x402660;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_402660___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_402660___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400550;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_400550_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_603320___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_603310_printf(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_603318_gettimeofday(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @gettimeofday to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400418;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #9
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
  tail call void asm sideeffect "pushq $0;pushq $$0x4026d4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #9
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
  %6 = tail call %struct.Memory* @sub_4026d4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @dtime() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4025d0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #9
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @dtime_wrapper(%struct.State*, i64, %struct.Memory*) #9 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4025d0_dtime(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
  tail call void @callback_sub_402660___libc_csu_init()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #9 {
  tail call void @callback_sub_4026d0___libc_csu_fini()
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
!2451 = !{!2430, !2430, i64 0}
!2452 = !{!2453, !2453, i64 0}
!2453 = !{!"double", !2430, i64 0}
!2454 = !{!2445, !2445, i64 0}
!2455 = !{!2456, !2456, i64 0}
!2456 = !{!"float", !2430, i64 0}
