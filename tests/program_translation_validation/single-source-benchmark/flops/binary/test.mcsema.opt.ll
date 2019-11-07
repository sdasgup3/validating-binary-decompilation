; ModuleID = 'binary/test.mcsema.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4026f0__rodata_type = type <{ [248 x i8], [58 x i8], [48 x i8], [36 x i8], [36 x i8], [36 x i8], [36 x i8], [36 x i8], [36 x i8], [36 x i8], [36 x i8], [36 x i8], [28 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [31 x i8] }>
%seg_602de0__init_array_type = type <{ i64, i64 }>
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
@seg_4026f0__rodata = internal constant %seg_4026f0__rodata_type <{ [248 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\14@\00\00\00\00\00\00\10@\00\00\00\00\00\00\08@\00\00\00\00\00\00\00@\00\00\00\00\00\00\F0?\18-DT\FB!\09@\00\00\00\00\80\84.A\82\FF\ADd\C7F\90?\A0\C2\EB\FEKH\B493333339@\00\00\00\00\00\00,@\00\00\00\00\00@?@\00\00\00\00\00\00\1C@\00\00\00\00\00\00\E0?\00\00\00\00\00\001@\00\00\00\00\00\00.@\EF9\FA\FEB.\E6?\00\00\00\00\00\00=@\A4\92\F1\F7A\95Y@\00\00\00\00\00\00\D0?33333C\7F@\00\00\00\00\00\002@\00\00\00\00\00\00(@\00\00\00\00\00\C0V@\00\00\00\00\00@b@\00\00\00\00\00\00c@\00\00\00\00\00\00J@\AB\AA\AA\AA\AA\AA\D2?\00\00\00\00\00\00>@\8D\ED\B5\A0\F7\C6\B0>", [58 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\0A\00", [48 x i8] c"   Module     Error        RunTime      MFLOPS\0A\00", [36 x i8] c"                            (usec)\0A\00", [36 x i8] c"     1   %13.4lf  %10.4lf  %10.4lf\0A\00", [36 x i8] c"     2   %13.4lf  %10.4lf  %10.4lf\0A\00", [36 x i8] c"     3   %13.4lf  %10.4lf  %10.4lf\0A\00", [36 x i8] c"     4   %13.4lf  %10.4lf  %10.4lf\0A\00", [36 x i8] c"     5   %13.4lf  %10.4lf  %10.4lf\0A\00", [36 x i8] c"     6   %13.4lf  %10.4lf  %10.4lf\0A\00", [36 x i8] c"     7   %13.4lf  %10.4lf  %10.4lf\0A\00", [36 x i8] c"     8   %13.4lf  %10.4lf  %10.4lf\0A\00", [28 x i8] c"   Iterations      = %10ld\0A\00", [30 x i8] c"   NullTime (usec) = %10.4lf\0A\00", [30 x i8] c"   MFLOPS(1)       = %10.4lf\0A\00", [30 x i8] c"   MFLOPS(2)       = %10.4lf\0A\00", [30 x i8] c"   MFLOPS(3)       = %10.4lf\0A\00", [31 x i8] c"   MFLOPS(4)       = %10.4lf\0A\0A\00" }>
@seg_602de0__init_array = internal global %seg_602de0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400550_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400520___do_global_dtors_aux to i64) }>
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
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400550_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400520___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4026e0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_402670___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @dtime_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@seg_603120__bss.0.0 = internal unnamed_addr global i1 false, align 8

declare %struct.Memory* @sub_4004b0_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400428__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @gettimeofday(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4026e0___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_4026e0:
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
define %struct.Memory* @sub_400470__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
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
  store i64 ptrtoint (void ()* @callback_sub_4026e0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_402670___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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

; Function Attrs: noinline
define %struct.Memory* @sub_400550_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400550:
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
  %13 = tail call %struct.Memory* @sub_4004e0_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline
define %struct.Memory* @sub_400520___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #8 {
block_400520:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %.b = load i1, i1* @seg_603120__bss.0.0, align 8
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3, align 1, !tbaa !2432
  %4 = zext i1 %.b to i32
  %5 = tail call i32 @llvm.ctpop.i32(i32 %4) #12
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
  br i1 %.b, label %block_400540, label %block_400529

block_400540:                                     ; preds = %block_400520
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

block_400529:                                     ; preds = %block_400520
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
  %33 = tail call %struct.Memory* @sub_4004b0_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %29, %struct.Memory* %2)
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_4025e0_dtime(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_4025e0:
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
  store i64 %34, i64* %36, align 1, !tbaa !2451
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %38 = bitcast i64* %37 to double*
  store double 0.000000e+00, double* %38, align 1, !tbaa !2451
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
  %51 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 240) to i64*), align 16
  store i64 %51, i64* %36, align 1, !tbaa !2451
  store double 0.000000e+00, double* %38, align 1, !tbaa !2451
  %52 = load i64, i64* bitcast (%tnow_type* @tnow to i64*), align 8
  %53 = sitofp i64 %52 to double
  %54 = bitcast %union.VectorReg* %6 to double*
  %55 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%tnow_type* @tnow to i64), i64 8) to i64*), align 8
  %56 = sitofp i64 %55 to double
  %57 = bitcast %union.VectorReg* %7 to double*
  %58 = bitcast i64 %51 to double
  %59 = fmul double %56, %58
  store double %59, double* %57, align 1, !tbaa !2451
  %60 = fadd double %53, %59
  store double %60, double* %54, align 1, !tbaa !2451
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
  store i64 %78, i64* %36, align 1, !tbaa !2451
  store double 0.000000e+00, double* %38, align 1, !tbaa !2451
  %79 = add i64 %69, -16
  %80 = add i64 %71, 14
  store i64 %80, i64* %PC, align 8
  %81 = bitcast i64 %78 to double
  %82 = inttoptr i64 %79 to double*
  %83 = load double, double* %82, align 8
  %84 = fsub double %81, %83
  store double %84, double* %35, align 1, !tbaa !2451
  store i64 0, i64* %37, align 1, !tbaa !2451
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
  %105 = tail call i32 @llvm.ctpop.i32(i32 %104) #12
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
define %struct.Memory* @sub_4026e4__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
block_4026e4:
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

; Function Attrs: noinline
define %struct.Memory* @sub_4004e0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_4004e0:
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
  store i8 %21, i8* %11, align 1, !tbaa !2453
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #12
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %12, align 1, !tbaa !2453
  store i8 0, i8* %13, align 1, !tbaa !2453
  %29 = icmp eq i64 %22, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %14, align 1, !tbaa !2453
  %31 = lshr i64 %22, 63
  %32 = trunc i64 %31 to i8
  store i8 %32, i8* %15, align 1, !tbaa !2453
  store i8 0, i8* %16, align 1, !tbaa !2453
  %.v = select i1 %29, i64 50, i64 29
  %33 = add i64 %9, %.v
  store i64 %33, i64* %PC, align 8, !tbaa !2428
  br i1 %29, label %block_400518, label %block_400503

block_400518:                                     ; preds = %block_400503, %block_4004e0
  %34 = phi i64 [ %44, %block_400503 ], [ %33, %block_4004e0 ]
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

block_400503:                                     ; preds = %block_4004e0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2432
  store i8 1, i8* %12, align 1, !tbaa !2446
  store i8 1, i8* %14, align 1, !tbaa !2447
  store i8 0, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %13, align 1, !tbaa !2450
  %44 = add i64 %33, 21
  store i64 %44, i64* %PC, align 8, !tbaa !2428
  br label %block_400518
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400428__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #7 {
block_400428:
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
  store i8 %19, i8* %8, align 1, !tbaa !2447
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !2448
  store i8 0, i8* %10, align 1, !tbaa !2449
  store i8 0, i8* %7, align 1, !tbaa !2450
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2428
  br i1 %18, label %block_40043a, label %block_400438

block_400438:                                     ; preds = %block_400428
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_40043a

block_40043a:                                     ; preds = %block_400438, %block_400428
  %27 = phi i64 [ %22, %block_400428 ], [ %.pre1, %block_400438 ]
  %28 = phi i64 [ %4, %block_400428 ], [ %.pre, %block_400438 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400428 ], [ %26, %block_400438 ]
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

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4004a0__dl_relocate_static_pie(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
block_4004a0:
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
define %struct.Memory* @sub_4004b0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_4004d8:
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

; Function Attrs: noinline
define %struct.Memory* @sub_402670___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_402670:
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
  store i8 %51, i8* %43, align 1, !tbaa !2453
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #12
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
  %63 = add i64 %38, -8803
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_400428__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
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
  br i1 %76, label %block_4026c6, label %block_4026a6

block_4026c6.loopexit:                            ; preds = %block_4026b0
  br label %block_4026c6

block_4026c6:                                     ; preds = %block_4026c6.loopexit, %block_402670
  %81 = phi i64 [ %80, %block_402670 ], [ %179, %block_4026c6.loopexit ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_402670 ], [ %149, %block_4026c6.loopexit ]
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

block_4026a6:                                     ; preds = %block_402670
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2447
  store i8 0, i8* %47, align 1, !tbaa !2448
  store i8 0, i8* %48, align 1, !tbaa !2449
  store i8 0, i8* %45, align 1, !tbaa !2450
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_4026b0

block_4026b0:                                     ; preds = %block_4026b0, %block_4026a6
  %134 = phi i64 [ 0, %block_4026a6 ], [ %152, %block_4026b0 ]
  %135 = phi i64 [ %133, %block_4026a6 ], [ %179, %block_4026b0 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_4026a6 ], [ %149, %block_4026b0 ]
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
  br i1 %169, label %block_4026c6.loopexit, label %block_4026b0
}

; Function Attrs: noinline
define %struct.Memory* @sub_400560_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #8 {
block_400560:
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
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25) #12
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
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 304), i64* %RDI, align 8, !tbaa !2428
  %48 = add i64 %16, -12
  %49 = add i64 %19, 27
  store i64 %49, i64* %PC, align 8
  %50 = inttoptr i64 %48 to i32*
  store i32 0, i32* %50, align 4
  %51 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2453
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
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 248), i64* %RDI, align 8, !tbaa !2428
  %59 = load i64, i64* %RBP, align 8
  %60 = add i64 %59, -92
  %61 = load i32, i32* %EAX, align 4
  %62 = add i64 %58, 13
  store i64 %62, i64* %PC, align 8
  %63 = inttoptr i64 %60 to i32*
  store i32 %61, i32* %63, align 4
  %64 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2453
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
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 306), i64* %RDI, align 8, !tbaa !2428
  %72 = bitcast [32 x %union.VectorReg]* %5 to i8*
  %73 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 8) to i64*), align 8
  %74 = bitcast [32 x %union.VectorReg]* %5 to double*
  %75 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %73, i64* %75, align 1, !tbaa !2451
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %77 = bitcast i64* %76 to double*
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %78 = bitcast %union.VectorReg* %6 to i8*
  %79 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 16) to i64*), align 16
  %80 = bitcast %union.VectorReg* %6 to double*
  %81 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %79, i64* %81, align 1, !tbaa !2451
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %83 = bitcast i64* %82 to double*
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %84 = bitcast %union.VectorReg* %7 to i8*
  %85 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 24) to i64*), align 8
  %86 = bitcast %union.VectorReg* %7 to double*
  %87 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %85, i64* %87, align 1, !tbaa !2451
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %89 = bitcast i64* %88 to double*
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %90 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 32) to i64*), align 16
  %91 = bitcast %union.VectorReg* %8 to double*
  %92 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %90, i64* %92, align 1, !tbaa !2451
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %94 = bitcast i64* %93 to double*
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %95 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 40) to i64*), align 8
  %96 = bitcast %union.VectorReg* %9 to double*
  %97 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %9, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %95, i64* %97, align 1, !tbaa !2451
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %99 = bitcast i64* %98 to double*
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %100 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 48) to i64*), align 16
  %101 = bitcast %union.VectorReg* %10 to double*
  %102 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %10, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %100, i64* %102, align 1, !tbaa !2451
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %104 = bitcast i64* %103 to double*
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %105 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 56) to i64*), align 8
  %106 = bitcast %union.VectorReg* %11 to double*
  %107 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %11, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %105, i64* %107, align 1, !tbaa !2451
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %109 = bitcast i64* %108 to double*
  store double 0.000000e+00, double* %109, align 1, !tbaa !2451
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
  store double %120, double* %121, align 1, !tbaa !2451
  %122 = load double, double* %106, align 1
  %123 = fdiv double %122, %120
  store double %123, double* %106, align 1, !tbaa !2451
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
  store i64 %130, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  store i64 %130, i64* bitcast (%scale_type* @scale to i64*), align 8
  %135 = load i64, i64* %RBP, align 8
  %136 = add i64 %135, -96
  %137 = load i32, i32* %EAX, align 4
  %138 = add i64 %128, 75
  store i64 %138, i64* %PC, align 8
  %139 = inttoptr i64 %136 to i32*
  store i32 %137, i32* %139, align 4
  %140 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2453
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
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 354), i64* %RDI, align 8, !tbaa !2428
  %148 = load i64, i64* %RBP, align 8
  %149 = add i64 %148, -100
  %150 = load i32, i32* %EAX, align 4
  %151 = add i64 %147, 13
  store i64 %151, i64* %PC, align 8
  %152 = inttoptr i64 %149 to i32*
  store i32 %150, i32* %152, align 4
  %153 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2453
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
  %172 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %167, %struct.Memory* %159)
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
  %185 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %180, %struct.Memory* %172)
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
  br label %block_4006a6

block_4020bb:                                     ; preds = %block_401f82
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %213 = add i64 %4086, 1317
  %214 = add i64 %4086, 15
  %215 = load i64, i64* %RSP, align 8, !tbaa !2428
  %216 = add i64 %215, -8
  %217 = inttoptr i64 %216 to i64*
  store i64 %214, i64* %217, align 8
  store i64 %216, i64* %RSP, align 8, !tbaa !2428
  store i64 %213, i64* %PC, align 8, !tbaa !2428
  %218 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %213, %struct.Memory* %869)
  %219 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 642), i64* %RDI, align 8, !tbaa !2428
  %220 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to i64*), align 8
  store i64 %220, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %221 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 224) to i64*), align 16
  store i64 %221, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %222 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 232) to i64*), align 8
  store i64 %222, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %223 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %224 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %225 = fmul double %223, %224
  %226 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %227 = fsub double %225, %226
  store double %227, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %228 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %229 = load double, double* bitcast (%three_type* @three to double*), align 8
  %230 = fdiv double %228, %229
  store double %230, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %231 = load i64, i64* %RBP, align 8
  %232 = add i64 %231, -24
  %233 = add i64 %219, 93
  store i64 %233, i64* %PC, align 8
  %234 = inttoptr i64 %232 to double*
  store double %230, double* %234, align 8
  %235 = load i64, i64* %RBP, align 8
  %236 = add i64 %235, -24
  %237 = load i64, i64* %PC, align 8
  %238 = add i64 %237, 5
  store i64 %238, i64* %PC, align 8
  %239 = inttoptr i64 %236 to i64*
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %241 = add i64 %237, 10
  store i64 %241, i64* %PC, align 8
  %242 = bitcast i64 %240 to double
  %243 = inttoptr i64 %236 to double*
  %244 = load double, double* %243, align 8
  %245 = fmul double %242, %244
  store double %245, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %246 = add i64 %235, -40
  %247 = add i64 %237, 15
  store i64 %247, i64* %PC, align 8
  %248 = inttoptr i64 %246 to double*
  store double %245, double* %248, align 8
  %249 = load i64, i64* %RBP, align 8
  %250 = add i64 %249, -24
  %251 = load i64, i64* %PC, align 8
  %252 = add i64 %251, 5
  store i64 %252, i64* %PC, align 8
  %253 = inttoptr i64 %250 to i64*
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %255 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %255, i64* %97, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %256 = add i64 %249, -40
  %257 = add i64 %251, 19
  store i64 %257, i64* %PC, align 8
  %.cast178 = bitcast i64 %255 to double
  %258 = inttoptr i64 %256 to double*
  %259 = load double, double* %258, align 8
  %260 = fmul double %.cast178, %259
  %261 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %262 = fadd double %260, %261
  store double %262, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %263 = add i64 %251, 33
  store i64 %263, i64* %PC, align 8
  %264 = load double, double* %258, align 8
  %265 = fmul double %262, %264
  %266 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %267 = fadd double %265, %266
  store double %267, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %268 = add i64 %251, 47
  store i64 %268, i64* %PC, align 8
  %269 = load double, double* %258, align 8
  %270 = fmul double %267, %269
  %271 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %272 = fadd double %270, %271
  store double %272, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %273 = add i64 %251, 61
  store i64 %273, i64* %PC, align 8
  %274 = load double, double* %258, align 8
  %275 = fmul double %272, %274
  %276 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %277 = fadd double %275, %276
  store double %277, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %278 = add i64 %251, 75
  store i64 %278, i64* %PC, align 8
  %279 = load double, double* %258, align 8
  %280 = fmul double %277, %279
  %281 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %282 = fadd double %280, %281
  store double %282, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %283 = add i64 %251, 89
  store i64 %283, i64* %PC, align 8
  %284 = load double, double* %258, align 8
  %285 = fmul double %282, %284
  %286 = load double, double* bitcast (%one_type* @one to double*), align 8
  %287 = fadd double %285, %286
  store double %287, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %288 = bitcast i64 %254 to double
  %289 = fmul double %287, %288
  store double %289, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  store double %289, double* bitcast (%sa_type* @sa to double*), align 8
  %290 = add i64 %251, 116
  store i64 %290, i64* %PC, align 8
  %291 = inttoptr i64 %256 to i64*
  %292 = load i64, i64* %291, align 8
  store i64 %292, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %293 = load i64, i64* %RBP, align 8
  %294 = add i64 %293, -40
  %295 = add i64 %251, 121
  store i64 %295, i64* %PC, align 8
  %296 = inttoptr i64 %294 to i64*
  %297 = load i64, i64* %296, align 8
  store i64 %297, i64* %97, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %298 = add i64 %251, 126
  store i64 %298, i64* %PC, align 8
  %299 = load i64, i64* %296, align 8
  store i64 %299, i64* %102, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %300 = add i64 %251, 131
  store i64 %300, i64* %PC, align 8
  %301 = load i64, i64* %296, align 8
  store i64 %301, i64* %107, align 1, !tbaa !2451
  store double 0.000000e+00, double* %109, align 1, !tbaa !2451
  %302 = add i64 %251, 136
  store i64 %302, i64* %PC, align 8
  %303 = load i64, i64* %296, align 8
  store i64 %303, i64* %209, align 1, !tbaa !2451
  store double 0.000000e+00, double* %211, align 1, !tbaa !2451
  %304 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  store i64 %304, i64* %1576, align 1, !tbaa !2451
  store double 0.000000e+00, double* %1578, align 1, !tbaa !2451
  %305 = add i64 %251, 152
  store i64 %305, i64* %PC, align 8
  %.cast179 = bitcast i64 %304 to double
  %306 = inttoptr i64 %294 to double*
  %307 = load double, double* %306, align 8
  %308 = fmul double %.cast179, %307
  %309 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %310 = fadd double %308, %309
  store double %310, double* %1575, align 1, !tbaa !2451
  store i64 0, i64* %1577, align 1, !tbaa !2451
  %311 = bitcast i64 %303 to double
  %312 = fmul double %310, %311
  %313 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %314 = fadd double %312, %313
  store double %314, double* %121, align 1, !tbaa !2451
  store i64 0, i64* %210, align 1, !tbaa !2451
  %315 = bitcast i64 %301 to double
  %316 = fmul double %314, %315
  %317 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %318 = fadd double %316, %317
  store double %318, double* %106, align 1, !tbaa !2451
  store i64 0, i64* %108, align 1, !tbaa !2451
  %319 = bitcast i64 %299 to double
  %320 = fmul double %318, %319
  %321 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %322 = fadd double %320, %321
  store double %322, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %323 = bitcast i64 %297 to double
  %324 = fmul double %322, %323
  %325 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %326 = fadd double %324, %325
  store double %326, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %327 = bitcast i64 %292 to double
  %328 = fmul double %326, %327
  %329 = load double, double* bitcast (%one_type* @one to double*), align 8
  %330 = fadd double %328, %329
  store double %330, double* bitcast (%sb_type* @sb to double*), align 8
  %331 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %332 = fmul double %331, %330
  %333 = fmul double %330, %332
  store double %333, double* bitcast (%sa_type* @sa to double*), align 8
  %334 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %335 = load double, double* %86, align 1
  %336 = fdiv double %334, %335
  store double %336, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  store double %336, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 200) to double*), align 8
  %337 = load i64, i64* %RBP, align 8
  %338 = add i64 %337, -48
  %339 = add i64 %251, 300
  store i64 %339, i64* %PC, align 8
  %340 = inttoptr i64 %338 to i64*
  %341 = load i64, i64* %340, align 8
  store i64 %341, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %342 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %342, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %343 = load i64, i64* bitcast (%two_type* @two to i64*), align 8
  store i64 %343, i64* %97, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %344 = add i64 %337, -16
  %345 = add i64 %251, 323
  store i64 %345, i64* %PC, align 8
  %.cast180 = bitcast i64 %343 to double
  %346 = inttoptr i64 %344 to double*
  %347 = load double, double* %346, align 8
  %348 = fmul double %.cast180, %347
  store double %348, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %349 = bitcast i64 %342 to double
  %350 = fadd double %349, %348
  store double %350, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %351 = bitcast i64 %341 to double
  %352 = fmul double %351, %350
  %353 = fdiv double %352, %.cast180
  store double %353, double* bitcast (%sa_type* @sa to double*), align 8
  %354 = load i64, i64* %81, align 1
  store i64 %354, i64* bitcast (%sb_type* @sb to i64*), align 8
  %355 = bitcast i64 %354 to double
  %356 = fsub double %353, %355
  store double %356, double* bitcast (%sc_type* @sc to double*), align 8
  %357 = load double, double* bitcast (%one_type* @one to double*), align 8
  %358 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 200) to double*), align 8
  %359 = fdiv double %357, %358
  store double %359, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 208) to double*), align 16
  %360 = load <2 x i32>, <2 x i32>* %1369, align 1
  %361 = load <2 x i32>, <2 x i32>* %1371, align 1
  %362 = extractelement <2 x i32> %360, i32 0
  store i32 %362, i32* %1374, align 1, !tbaa !2455
  %363 = extractelement <2 x i32> %360, i32 1
  store i32 %363, i32* %1377, align 1, !tbaa !2455
  %364 = extractelement <2 x i32> %361, i32 0
  store i32 %364, i32* %1379, align 1, !tbaa !2455
  %365 = extractelement <2 x i32> %361, i32 1
  store i32 %365, i32* %1382, align 1, !tbaa !2455
  %366 = load double, double* %80, align 1
  %367 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %368 = fmul double %366, %367
  store double %368, double* %80, align 1, !tbaa !2451
  store i32 %362, i32* %1386, align 1, !tbaa !2455
  store i32 %363, i32* %1388, align 1, !tbaa !2455
  store i32 %364, i32* %1389, align 1, !tbaa !2455
  store i32 %365, i32* %1391, align 1, !tbaa !2455
  %369 = load double, double* %86, align 1
  %370 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %371 = fmul double %369, %370
  store double %371, double* %86, align 1, !tbaa !2451
  %372 = bitcast <2 x i32> %360 to double
  %373 = fmul double %372, %359
  %374 = load i64, i64* %RBP, align 8
  %375 = add i64 %374, -304
  %376 = add i64 %251, 453
  store i64 %376, i64* %PC, align 8
  %377 = inttoptr i64 %375 to double*
  store double %373, double* %377, align 8
  %378 = load i64, i64* %PC, align 8
  %379 = load <2 x i32>, <2 x i32>* %1402, align 1
  %380 = load <2 x i32>, <2 x i32>* %1404, align 1
  %381 = extractelement <2 x i32> %379, i32 0
  store i32 %381, i32* %187, align 1, !tbaa !2455
  %382 = extractelement <2 x i32> %379, i32 1
  store i32 %382, i32* %189, align 1, !tbaa !2455
  %383 = extractelement <2 x i32> %380, i32 0
  store i32 %383, i32* %190, align 1, !tbaa !2455
  %384 = extractelement <2 x i32> %380, i32 1
  store i32 %384, i32* %192, align 1, !tbaa !2455
  %385 = load <2 x i32>, <2 x i32>* %1410, align 1
  %386 = load <2 x i32>, <2 x i32>* %1412, align 1
  %387 = extractelement <2 x i32> %385, i32 0
  store i32 %387, i32* %1374, align 1, !tbaa !2455
  %388 = extractelement <2 x i32> %385, i32 1
  store i32 %388, i32* %1377, align 1, !tbaa !2455
  %389 = extractelement <2 x i32> %386, i32 0
  store i32 %389, i32* %1379, align 1, !tbaa !2455
  %390 = extractelement <2 x i32> %386, i32 1
  store i32 %390, i32* %1382, align 1, !tbaa !2455
  %391 = load i64, i64* %RBP, align 8
  %392 = add i64 %391, -304
  %393 = add i64 %378, 14
  store i64 %393, i64* %PC, align 8
  %394 = inttoptr i64 %392 to i64*
  %395 = load i64, i64* %394, align 8
  store i64 %395, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %396 = add i64 %391, -308
  %397 = load i32, i32* %EAX, align 4
  %398 = add i64 %378, 20
  store i64 %398, i64* %PC, align 8
  %399 = inttoptr i64 %396 to i32*
  store i32 %397, i32* %399, align 4
  %400 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %401 = add i64 %400, -7871
  %402 = add i64 %400, 7
  %403 = load i64, i64* %RSP, align 8, !tbaa !2428
  %404 = add i64 %403, -8
  %405 = inttoptr i64 %404 to i64*
  store i64 %402, i64* %405, align 8
  store i64 %404, i64* %RSP, align 8, !tbaa !2428
  store i64 %401, i64* %PC, align 8, !tbaa !2428
  %406 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %218)
  %407 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 304), i64* %RDI, align 8, !tbaa !2428
  %408 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 192) to i64*), align 16
  store i64 %408, i64* %75, align 1, !tbaa !2451
  %409 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 200) to i64*), align 8
  store i64 %409, i64* %81, align 1, !tbaa !2451
  %410 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 208) to i64*), align 16
  store i64 %410, i64* %87, align 1, !tbaa !2451
  %411 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 216) to double*), align 8
  %412 = load double, double* bitcast (%five_type* @five to double*), align 8
  %413 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 48) to double*), align 16
  %414 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to double*), align 8
  %415 = fsub double %413, %414
  store double %415, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %416 = fmul double %415, %412
  %417 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %418 = fadd double %416, %417
  %419 = fdiv double %418, %411
  store double %419, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 216) to double*), align 8
  %420 = load double, double* bitcast (%one_type* @one to double*), align 8
  %421 = fdiv double %420, %419
  store double %421, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 224) to double*), align 16
  %422 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %423 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %424 = fadd double %422, %423
  %425 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %426 = fadd double %424, %425
  %427 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %428 = fadd double %426, %427
  %429 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %430 = fadd double %428, %429
  store double %430, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 232) to double*), align 8
  %431 = load double, double* bitcast (%four_type* @four to double*), align 8
  %432 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 168) to double*), align 8
  %433 = fmul double %431, %432
  store double %433, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %434 = fadd double %433, %430
  %435 = load double, double* %86, align 1
  %436 = fdiv double %434, %435
  store double %436, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  store double %436, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 232) to double*), align 8
  %437 = load double, double* bitcast (%one_type* @one to double*), align 8
  %438 = fdiv double %437, %436
  store double %438, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 240) to double*), align 16
  %439 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %440 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %441 = fadd double %439, %440
  %442 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %443 = fadd double %441, %442
  %444 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %445 = fadd double %443, %444
  %446 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %447 = fadd double %445, %446
  store double %447, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 248) to double*), align 8
  %448 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 168) to double*), align 8
  %449 = fadd double %447, %448
  %450 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %451 = fadd double %449, %450
  %452 = load double, double* %80, align 1
  %453 = fdiv double %451, %452
  store double %453, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  store double %453, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 248) to double*), align 8
  %454 = load double, double* bitcast (%one_type* @one to double*), align 8
  %455 = fdiv double %454, %453
  store double %455, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 256) to double*), align 16
  %456 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %457 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %458 = fadd double %456, %457
  %459 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %460 = fadd double %458, %459
  %461 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %462 = fadd double %460, %461
  %463 = load double, double* %74, align 1
  %464 = fdiv double %462, %463
  store double %464, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  store double %464, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 264) to double*), align 8
  %465 = load double, double* bitcast (%one_type* @one to double*), align 8
  %466 = fdiv double %465, %464
  store double %466, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  store double %466, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 272) to double*), align 16
  %467 = load i64, i64* %RBP, align 8
  %468 = add i64 %467, -312
  %469 = load i32, i32* %EAX, align 4
  %470 = add i64 %407, 450
  store i64 %470, i64* %PC, align 8
  %471 = inttoptr i64 %468 to i32*
  store i32 %469, i32* %471, align 4
  %472 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %473 = add i64 %472, -8328
  %474 = add i64 %472, 7
  %475 = load i64, i64* %RSP, align 8, !tbaa !2428
  %476 = add i64 %475, -8
  %477 = inttoptr i64 %476 to i64*
  store i64 %474, i64* %477, align 8
  store i64 %476, i64* %RSP, align 8, !tbaa !2428
  store i64 %473, i64* %PC, align 8, !tbaa !2428
  %478 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %406)
  %479 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 678), i64* %RDI, align 8, !tbaa !2428
  %480 = load i64, i64* %RBP, align 8
  %481 = add i64 %480, -80
  %482 = add i64 %479, 14
  store i64 %482, i64* %PC, align 8
  %483 = inttoptr i64 %481 to i64*
  %484 = load i64, i64* %483, align 8
  store i64 %484, i64* %RSI, align 8, !tbaa !2428
  %485 = add i64 %480, -316
  %486 = load i32, i32* %EAX, align 4
  %487 = add i64 %479, 20
  store i64 %487, i64* %PC, align 8
  %488 = inttoptr i64 %485 to i32*
  store i32 %486, i32* %488, align 4
  %489 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %490 = add i64 %489, -8355
  %491 = add i64 %489, 7
  %492 = load i64, i64* %RSP, align 8, !tbaa !2428
  %493 = add i64 %492, -8
  %494 = inttoptr i64 %493 to i64*
  store i64 %491, i64* %494, align 8
  store i64 %493, i64* %RSP, align 8, !tbaa !2428
  store i64 %490, i64* %PC, align 8, !tbaa !2428
  %495 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %478)
  %496 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 706), i64* %RDI, align 8, !tbaa !2428
  %497 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to double*), align 8
  %498 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %499 = fmul double %497, %498
  store double %499, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %500 = load i64, i64* %RBP, align 8
  %501 = add i64 %500, -320
  %502 = load i32, i32* %EAX, align 4
  %503 = add i64 %496, 33
  store i64 %503, i64* %PC, align 8
  %504 = inttoptr i64 %501 to i32*
  store i32 %502, i32* %504, align 4
  %505 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %506 = add i64 %505, -8395
  %507 = add i64 %505, 7
  %508 = load i64, i64* %RSP, align 8, !tbaa !2428
  %509 = add i64 %508, -8
  %510 = inttoptr i64 %509 to i64*
  store i64 %507, i64* %510, align 8
  store i64 %509, i64* %RSP, align 8, !tbaa !2428
  store i64 %506, i64* %PC, align 8, !tbaa !2428
  %511 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %495)
  %512 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 736), i64* %RDI, align 8, !tbaa !2428
  %513 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to double*), align 8
  %514 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 224) to double*), align 16
  %515 = fmul double %513, %514
  store double %515, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %516 = load i64, i64* %RBP, align 8
  %517 = add i64 %516, -324
  %518 = load i32, i32* %EAX, align 4
  %519 = add i64 %512, 33
  store i64 %519, i64* %PC, align 8
  %520 = inttoptr i64 %517 to i32*
  store i32 %518, i32* %520, align 4
  %521 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %522 = add i64 %521, -8435
  %523 = add i64 %521, 7
  %524 = load i64, i64* %RSP, align 8, !tbaa !2428
  %525 = add i64 %524, -8
  %526 = inttoptr i64 %525 to i64*
  store i64 %523, i64* %526, align 8
  store i64 %525, i64* %RSP, align 8, !tbaa !2428
  store i64 %522, i64* %PC, align 8, !tbaa !2428
  %527 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %511)
  %528 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 766), i64* %RDI, align 8, !tbaa !2428
  %529 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to double*), align 8
  %530 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 240) to double*), align 16
  %531 = fmul double %529, %530
  store double %531, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %532 = load i64, i64* %RBP, align 8
  %533 = add i64 %532, -328
  %534 = load i32, i32* %EAX, align 4
  %535 = add i64 %528, 33
  store i64 %535, i64* %PC, align 8
  %536 = inttoptr i64 %533 to i32*
  store i32 %534, i32* %536, align 4
  %537 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %538 = add i64 %537, -8475
  %539 = add i64 %537, 7
  %540 = load i64, i64* %RSP, align 8, !tbaa !2428
  %541 = add i64 %540, -8
  %542 = inttoptr i64 %541 to i64*
  store i64 %539, i64* %542, align 8
  store i64 %541, i64* %RSP, align 8, !tbaa !2428
  store i64 %538, i64* %PC, align 8, !tbaa !2428
  %543 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %527)
  %544 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 796), i64* %RDI, align 8, !tbaa !2428
  %545 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to double*), align 8
  %546 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 256) to double*), align 16
  %547 = fmul double %545, %546
  store double %547, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %548 = load i64, i64* %RBP, align 8
  %549 = add i64 %548, -332
  %550 = load i32, i32* %EAX, align 4
  %551 = add i64 %544, 33
  store i64 %551, i64* %PC, align 8
  %552 = inttoptr i64 %549 to i32*
  store i32 %550, i32* %552, align 4
  %553 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %554 = add i64 %553, -8515
  %555 = add i64 %553, 7
  %556 = load i64, i64* %RSP, align 8, !tbaa !2428
  %557 = add i64 %556, -8
  %558 = inttoptr i64 %557 to i64*
  store i64 %555, i64* %558, align 8
  store i64 %557, i64* %RSP, align 8, !tbaa !2428
  store i64 %554, i64* %PC, align 8, !tbaa !2428
  %559 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %543)
  %560 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 826), i64* %RDI, align 8, !tbaa !2428
  %561 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to double*), align 8
  %562 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 272) to double*), align 16
  %563 = fmul double %561, %562
  store double %563, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %564 = load i64, i64* %RBP, align 8
  %565 = add i64 %564, -336
  %566 = load i32, i32* %EAX, align 4
  %567 = add i64 %560, 33
  store i64 %567, i64* %PC, align 8
  %568 = inttoptr i64 %565 to i32*
  store i32 %566, i32* %568, align 4
  %569 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %570 = add i64 %569, -8555
  %571 = add i64 %569, 7
  %572 = load i64, i64* %RSP, align 8, !tbaa !2428
  %573 = add i64 %572, -8
  %574 = inttoptr i64 %573 to i64*
  store i64 %571, i64* %574, align 8
  store i64 %573, i64* %RSP, align 8, !tbaa !2428
  store i64 %570, i64* %PC, align 8, !tbaa !2428
  %575 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %559)
  %576 = load i64, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  %577 = load i64, i64* %RBP, align 8
  %578 = add i64 %577, -340
  %579 = load i32, i32* %EAX, align 4
  %580 = add i64 %576, 8
  store i64 %580, i64* %PC, align 8
  %581 = inttoptr i64 %578 to i32*
  store i32 %579, i32* %581, align 4
  %582 = load i32, i32* %ECX, align 4
  %583 = zext i32 %582 to i64
  %584 = load i64, i64* %PC, align 8
  store i64 %583, i64* %RAX, align 8, !tbaa !2428
  %585 = load i64, i64* %RSP, align 8
  %586 = add i64 %585, 352
  store i64 %586, i64* %RSP, align 8, !tbaa !2428
  %587 = icmp ugt i64 %585, -353
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %23, align 1, !tbaa !2432
  %589 = trunc i64 %586 to i32
  %590 = and i32 %589, 255
  %591 = tail call i32 @llvm.ctpop.i32(i32 %590) #12
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  %594 = xor i8 %593, 1
  store i8 %594, i8* %30, align 1, !tbaa !2446
  %595 = xor i64 %586, %585
  %596 = lshr i64 %595, 4
  %597 = trunc i64 %596 to i8
  %598 = and i8 %597, 1
  store i8 %598, i8* %35, align 1, !tbaa !2450
  %599 = icmp eq i64 %586, 0
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %38, align 1, !tbaa !2447
  %601 = lshr i64 %586, 63
  %602 = trunc i64 %601 to i8
  store i8 %602, i8* %41, align 1, !tbaa !2448
  %603 = lshr i64 %585, 63
  %604 = xor i64 %601, %603
  %605 = add nuw nsw i64 %604, %601
  %606 = icmp eq i64 %605, 2
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %47, align 1, !tbaa !2449
  %608 = add i64 %584, 10
  store i64 %608, i64* %PC, align 8
  %609 = add i64 %585, 360
  %610 = inttoptr i64 %586 to i64*
  %611 = load i64, i64* %610, align 8
  store i64 %611, i64* %RBP, align 8, !tbaa !2428
  store i64 %609, i64* %RSP, align 8, !tbaa !2428
  %612 = add i64 %584, 11
  store i64 %612, i64* %PC, align 8
  %613 = inttoptr i64 %609 to i64*
  %614 = load i64, i64* %613, align 8
  store i64 %614, i64* %PC, align 8, !tbaa !2428
  %615 = add i64 %585, 368
  store i64 %615, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %575

block_401d63:                                     ; preds = %block_401cca
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %616 = add i64 %2541, 2173
  %617 = add i64 %2541, 15
  %618 = load i64, i64* %RSP, align 8, !tbaa !2428
  %619 = add i64 %618, -8
  %620 = inttoptr i64 %619 to i64*
  store i64 %617, i64* %620, align 8
  store i64 %619, i64* %RSP, align 8, !tbaa !2428
  store i64 %616, i64* %PC, align 8, !tbaa !2428
  %621 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %616, %struct.Memory* %2973)
  %622 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 606), i64* %RDI, align 8, !tbaa !2428
  %623 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to i64*), align 8
  store i64 %623, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %624 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 168) to i64*), align 8
  store i64 %624, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %625 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 176) to i64*), align 16
  store i64 %625, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  store i64 -9223372036854775808, i64* %RCX, align 8, !tbaa !2428
  %626 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 184) to double*), align 8
  %627 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %628 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %629 = fmul double %627, %628
  %630 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %631 = fsub double %629, %630
  store double %631, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 168) to double*), align 8
  %632 = fdiv double %631, %626
  store double %632, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  store double %632, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 176) to double*), align 16
  %633 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %633, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %634 = load i64, i64* %RBP, align 8
  %635 = add i64 %634, -48
  %636 = add i64 %622, 124
  store i64 %636, i64* %PC, align 8
  %637 = inttoptr i64 %635 to i64*
  store i64 %633, i64* %637, align 8
  %638 = load i64, i64* %RBP, align 8
  %639 = add i64 %638, -48
  %640 = load i64, i64* %PC, align 8
  %641 = add i64 %640, 5
  store i64 %641, i64* %PC, align 8
  %642 = inttoptr i64 %639 to i64*
  %643 = load i64, i64* %642, align 8
  store i64 %643, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %644 = add i64 %640, 10
  store i64 %644, i64* %PC, align 8
  %645 = bitcast i64 %643 to double
  %646 = inttoptr i64 %639 to double*
  %647 = load double, double* %646, align 8
  %648 = fmul double %645, %647
  store double %648, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %649 = add i64 %638, -24
  %650 = add i64 %640, 15
  store i64 %650, i64* %PC, align 8
  %651 = inttoptr i64 %649 to double*
  store double %648, double* %651, align 8
  %652 = load i64, i64* %RBP, align 8
  %653 = add i64 %652, -40
  %654 = load i64, i64* %PC, align 8
  %655 = add i64 %654, 5
  store i64 %655, i64* %PC, align 8
  %656 = inttoptr i64 %653 to i64*
  %657 = load i64, i64* %656, align 8
  %658 = load i64, i64* %RCX, align 8
  %659 = xor i64 %658, %657
  store i64 %659, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %23, align 1, !tbaa !2432
  %660 = trunc i64 %659 to i32
  %661 = and i32 %660, 255
  %662 = tail call i32 @llvm.ctpop.i32(i32 %661) #12
  %663 = trunc i32 %662 to i8
  %664 = and i8 %663, 1
  %665 = xor i8 %664, 1
  store i8 %665, i8* %30, align 1, !tbaa !2446
  %666 = icmp eq i64 %659, 0
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %38, align 1, !tbaa !2447
  %668 = lshr i64 %659, 63
  %669 = trunc i64 %668 to i8
  store i8 %669, i8* %41, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %35, align 1, !tbaa !2450
  store i64 %659, i64* %92, align 1, !tbaa !2428
  store i64 0, i64* %93, align 1, !tbaa !2428
  %670 = add i64 %654, 23
  store i64 %670, i64* %PC, align 8
  %671 = load i64, i64* %656, align 8
  store i64 %671, i64* %97, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %672 = add i64 %652, -48
  %673 = add i64 %654, 28
  store i64 %673, i64* %PC, align 8
  %674 = inttoptr i64 %672 to i64*
  %675 = load i64, i64* %674, align 8
  store i64 %675, i64* %102, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %676 = add i64 %654, 33
  store i64 %676, i64* %PC, align 8
  %677 = bitcast i64 %675 to double
  %678 = inttoptr i64 %653 to double*
  %679 = load double, double* %678, align 8
  %680 = fadd double %677, %679
  store double %680, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %681 = bitcast i64 %671 to double
  %682 = fdiv double %681, %680
  store double %682, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %683 = bitcast i64 %659 to double
  %684 = fsub double %683, %682
  store double %684, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %685 = add i64 %654, 46
  store i64 %685, i64* %PC, align 8
  %686 = load i64, i64* %674, align 8
  store i64 %686, i64* %97, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %687 = add i64 %652, -24
  %688 = add i64 %654, 51
  store i64 %688, i64* %PC, align 8
  %689 = inttoptr i64 %687 to i64*
  %690 = load i64, i64* %689, align 8
  store i64 %690, i64* %102, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %691 = add i64 %654, 56
  store i64 %691, i64* %PC, align 8
  %692 = bitcast i64 %690 to double
  %693 = load double, double* %678, align 8
  %694 = fadd double %692, %693
  store double %694, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %695 = bitcast i64 %686 to double
  %696 = fdiv double %695, %694
  store double %696, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %697 = fsub double %684, %696
  store double %697, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %698 = add i64 %654, 69
  store i64 %698, i64* %PC, align 8
  %699 = load i64, i64* %689, align 8
  store i64 %699, i64* %97, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %700 = load i64, i64* %RBP, align 8
  %701 = add i64 %700, -48
  %702 = add i64 %654, 74
  store i64 %702, i64* %PC, align 8
  %703 = inttoptr i64 %701 to i64*
  %704 = load i64, i64* %703, align 8
  store i64 %704, i64* %102, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %705 = add i64 %700, -24
  %706 = add i64 %654, 79
  store i64 %706, i64* %PC, align 8
  %707 = bitcast i64 %704 to double
  %708 = inttoptr i64 %705 to double*
  %709 = load double, double* %708, align 8
  %710 = fmul double %707, %709
  store double %710, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %711 = add i64 %700, -40
  %712 = add i64 %654, 84
  store i64 %712, i64* %PC, align 8
  %713 = inttoptr i64 %711 to double*
  %714 = load double, double* %713, align 8
  %715 = fadd double %710, %714
  store double %715, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %716 = bitcast i64 %699 to double
  %717 = fdiv double %716, %715
  store double %717, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %718 = fsub double %697, %717
  store double %718, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  store double %718, double* bitcast (%sa_type* @sa to double*), align 8
  %719 = add i64 %700, -32
  %720 = add i64 %654, 106
  store i64 %720, i64* %PC, align 8
  %721 = load double, double* %86, align 1
  %722 = inttoptr i64 %719 to double*
  %723 = load double, double* %722, align 8
  %724 = fmul double %721, %723
  store double %724, double* %86, align 1, !tbaa !2451
  %725 = bitcast %union.VectorReg* %8 to double*
  store double %718, double* %725, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %726 = load i64, i64* bitcast (%two_type* @two to i64*), align 8
  store i64 %726, i64* %97, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %727 = add i64 %700, -16
  %728 = add i64 %654, 129
  store i64 %728, i64* %PC, align 8
  %.cast175 = bitcast i64 %726 to double
  %729 = inttoptr i64 %727 to double*
  %730 = load double, double* %729, align 8
  %731 = fmul double %.cast175, %730
  store double %731, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %732 = fadd double %718, %731
  store double %732, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %733 = fmul double %724, %732
  store double %733, double* %86, align 1, !tbaa !2451
  store double %733, double* bitcast (%sa_type* @sa to double*), align 8
  %734 = tail call double @llvm.trunc.f64(double %733) #12
  %735 = tail call double @llvm.fabs.f64(double %734) #12
  %736 = fcmp ogt double %735, 0x43E0000000000000
  %737 = fptosi double %734 to i64
  %738 = select i1 %736, i64 -9223372036854775808, i64 %737
  %739 = sext i64 %738 to i128
  %740 = and i128 %739, -18446744073709551616
  %741 = zext i64 %738 to i128
  %742 = or i128 %740, %741
  %743 = mul nsw i128 %742, -2000
  %744 = trunc i128 %743 to i64
  store i64 %744, i64* %RCX, align 8, !tbaa !2428
  %745 = sext i64 %744 to i128
  %746 = icmp ne i128 %745, %743
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %23, align 1, !tbaa !2432
  %748 = trunc i128 %743 to i32
  %749 = and i32 %748, 240
  %750 = tail call i32 @llvm.ctpop.i32(i32 %749) #12
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  %753 = xor i8 %752, 1
  store i8 %753, i8* %30, align 1, !tbaa !2446
  store i8 0, i8* %35, align 1, !tbaa !2450
  store i8 0, i8* %38, align 1, !tbaa !2447
  %754 = lshr i64 %744, 63
  %755 = trunc i64 %754 to i8
  store i8 %755, i8* %41, align 1, !tbaa !2448
  store i8 %747, i8* %47, align 1, !tbaa !2449
  %756 = load i64, i64* %RBP, align 8
  %757 = add i64 %756, -80
  %758 = add i64 %654, 167
  store i64 %758, i64* %PC, align 8
  %759 = inttoptr i64 %757 to i64*
  store i64 %744, i64* %759, align 8
  %760 = load i64, i64* %RBP, align 8
  %761 = add i64 %760, -80
  %762 = load i64, i64* %PC, align 8
  %763 = add i64 %762, 6
  store i64 %763, i64* %PC, align 8
  %764 = inttoptr i64 %761 to i64*
  %765 = load i64, i64* %764, align 8
  %766 = sitofp i64 %765 to double
  %767 = load double, double* bitcast (%scale_type* @scale to double*), align 8
  %768 = fdiv double %766, %767
  %769 = tail call double @llvm.trunc.f64(double %768) #12
  %770 = tail call double @llvm.fabs.f64(double %769) #12
  %771 = fcmp ogt double %770, 0x43E0000000000000
  %772 = fptosi double %769 to i64
  %773 = select i1 %771, i64 -9223372036854775808, i64 %772
  store i64 %773, i64* %RCX, align 8, !tbaa !2428
  %774 = add i64 %762, 24
  store i64 %774, i64* %PC, align 8
  store i64 %773, i64* %764, align 8
  %775 = load i64, i64* %PC, align 8
  %776 = load double, double* %80, align 1
  %777 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %778 = fadd double %776, %777
  store double %778, double* bitcast (%sc_type* @sc to double*), align 8
  %779 = load double, double* bitcast (%one_type* @one to double*), align 8
  %780 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 176) to double*), align 16
  %781 = fdiv double %779, %780
  store double %781, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 184) to double*), align 8
  %782 = load <2 x i32>, <2 x i32>* %1369, align 1
  %783 = load <2 x i32>, <2 x i32>* %1371, align 1
  %784 = extractelement <2 x i32> %782, i32 0
  store i32 %784, i32* %1374, align 1, !tbaa !2455
  %785 = extractelement <2 x i32> %782, i32 1
  store i32 %785, i32* %1377, align 1, !tbaa !2455
  %786 = extractelement <2 x i32> %783, i32 0
  store i32 %786, i32* %1379, align 1, !tbaa !2455
  %787 = extractelement <2 x i32> %783, i32 1
  store i32 %787, i32* %1382, align 1, !tbaa !2455
  %788 = load double, double* %80, align 1
  %789 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %790 = fmul double %788, %789
  store double %790, double* %80, align 1, !tbaa !2451
  store i32 %784, i32* %1386, align 1, !tbaa !2455
  store i32 %785, i32* %1388, align 1, !tbaa !2455
  store i32 %786, i32* %1389, align 1, !tbaa !2455
  store i32 %787, i32* %1391, align 1, !tbaa !2455
  %791 = load double, double* %86, align 1
  %792 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 168) to double*), align 8
  %793 = fmul double %791, %792
  store double %793, double* %86, align 1, !tbaa !2451
  %794 = bitcast <2 x i32> %782 to double
  %795 = fmul double %794, %781
  %796 = load i64, i64* %RBP, align 8
  %797 = add i64 %796, -280
  %798 = add i64 %775, 86
  store i64 %798, i64* %PC, align 8
  %799 = inttoptr i64 %797 to double*
  store double %795, double* %799, align 8
  %800 = load i64, i64* %PC, align 8
  %801 = load <2 x i32>, <2 x i32>* %1402, align 1
  %802 = load <2 x i32>, <2 x i32>* %1404, align 1
  %803 = extractelement <2 x i32> %801, i32 0
  store i32 %803, i32* %187, align 1, !tbaa !2455
  %804 = extractelement <2 x i32> %801, i32 1
  store i32 %804, i32* %189, align 1, !tbaa !2455
  %805 = extractelement <2 x i32> %802, i32 0
  store i32 %805, i32* %190, align 1, !tbaa !2455
  %806 = extractelement <2 x i32> %802, i32 1
  store i32 %806, i32* %192, align 1, !tbaa !2455
  %807 = load <2 x i32>, <2 x i32>* %1410, align 1
  %808 = load <2 x i32>, <2 x i32>* %1412, align 1
  %809 = extractelement <2 x i32> %807, i32 0
  store i32 %809, i32* %1374, align 1, !tbaa !2455
  %810 = extractelement <2 x i32> %807, i32 1
  store i32 %810, i32* %1377, align 1, !tbaa !2455
  %811 = extractelement <2 x i32> %808, i32 0
  store i32 %811, i32* %1379, align 1, !tbaa !2455
  %812 = extractelement <2 x i32> %808, i32 1
  store i32 %812, i32* %1382, align 1, !tbaa !2455
  %813 = load i64, i64* %RBP, align 8
  %814 = add i64 %813, -280
  %815 = add i64 %800, 14
  store i64 %815, i64* %PC, align 8
  %816 = inttoptr i64 %814 to i64*
  %817 = load i64, i64* %816, align 8
  store i64 %817, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %818 = add i64 %813, -284
  %819 = load i32, i32* %EAX, align 4
  %820 = add i64 %800, 20
  store i64 %820, i64* %PC, align 8
  %821 = inttoptr i64 %818 to i32*
  store i32 %819, i32* %821, align 4
  %822 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %823 = add i64 %822, -6870
  %824 = add i64 %822, 7
  %825 = load i64, i64* %RSP, align 8, !tbaa !2428
  %826 = add i64 %825, -8
  %827 = inttoptr i64 %826 to i64*
  store i64 %824, i64* %827, align 8
  store i64 %826, i64* %RSP, align 8, !tbaa !2428
  store i64 %823, i64* %PC, align 8, !tbaa !2428
  %828 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %621)
  %829 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i32 0, i32* %187, align 1, !tbaa !2454
  store i32 0, i32* %189, align 1, !tbaa !2454
  store i32 0, i32* %190, align 1, !tbaa !2454
  store i32 0, i32* %192, align 1, !tbaa !2454
  %830 = load i64, i64* bitcast (%piref_type* @piref to i64*), align 8
  store i64 %830, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %831 = load i64, i64* bitcast (%three_type* @three to i64*), align 8
  store i64 %831, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %832 = load i64, i64* %RBP, align 8
  %833 = add i64 %832, -80
  %834 = add i64 %829, 37
  store i64 %834, i64* %PC, align 8
  %835 = inttoptr i64 %833 to i64*
  %836 = load i64, i64* %835, align 8
  %837 = sitofp i64 %836 to double
  store double %837, double* %91, align 1, !tbaa !2451
  %838 = bitcast i64 %831 to double
  %839 = fmul double %837, %838
  store double %839, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %840 = bitcast i64 %830 to double
  %841 = fdiv double %840, %839
  store double %841, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %842 = add i64 %832, -48
  %843 = add i64 %829, 50
  store i64 %843, i64* %PC, align 8
  %844 = inttoptr i64 %842 to double*
  store double %841, double* %844, align 8
  %845 = load i64, i64* %RBP, align 8
  %846 = add i64 %845, -16
  %847 = load i64, i64* %PC, align 8
  %848 = add i64 %847, 5
  store i64 %848, i64* %PC, align 8
  %849 = load i64, i64* %75, align 1
  %850 = inttoptr i64 %846 to i64*
  store i64 %849, i64* %850, align 8
  %851 = load i64, i64* %RBP, align 8
  %852 = add i64 %851, -32
  %853 = load i64, i64* %PC, align 8
  %854 = add i64 %853, 5
  store i64 %854, i64* %PC, align 8
  %855 = load i64, i64* %75, align 1
  %856 = inttoptr i64 %852 to i64*
  store i64 %855, i64* %856, align 8
  %857 = load i64, i64* %RBP, align 8
  %858 = add i64 %857, -288
  %859 = load i32, i32* %EAX, align 4
  %860 = load i64, i64* %PC, align 8
  %861 = add i64 %860, 6
  store i64 %861, i64* %PC, align 8
  %862 = inttoptr i64 %858 to i32*
  store i32 %859, i32* %862, align 4
  %863 = load i64, i64* %PC, align 8
  %864 = add i64 %863, 1649
  %865 = add i64 %863, 5
  %866 = load i64, i64* %RSP, align 8, !tbaa !2428
  %867 = add i64 %866, -8
  %868 = inttoptr i64 %867 to i64*
  store i64 %865, i64* %868, align 8
  store i64 %867, i64* %RSP, align 8, !tbaa !2428
  store i64 %864, i64* %PC, align 8, !tbaa !2428
  %869 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %864, %struct.Memory* %828)
  %870 = load i64, i64* %RBP, align 8
  %871 = add i64 %870, -72
  %872 = load i64, i64* %PC, align 8
  %873 = add i64 %872, 8
  store i64 %873, i64* %PC, align 8
  %874 = inttoptr i64 %871 to i64*
  store i64 1, i64* %874, align 8
  %875 = load i64, i64* %RBP, align 8
  %876 = add i64 %875, -292
  %877 = load i32, i32* %EAX, align 4
  %878 = load i64, i64* %PC, align 8
  %879 = add i64 %878, 6
  store i64 %879, i64* %PC, align 8
  %880 = inttoptr i64 %876 to i32*
  store i32 %877, i32* %880, align 4
  %.pre217 = load i64, i64* %PC, align 8
  br label %block_401f82

block_4014ff:                                     ; preds = %block_401514, %block_401259
  %881 = phi i64 [ %3220, %block_401514 ], [ %.pre214, %block_401259 ]
  %882 = load i64, i64* %RBP, align 8
  %883 = add i64 %882, -72
  %884 = add i64 %881, 4
  store i64 %884, i64* %PC, align 8
  %885 = inttoptr i64 %883 to i64*
  %886 = load i64, i64* %885, align 8
  store i64 %886, i64* %RAX, align 8, !tbaa !2428
  %887 = add i64 %882, -80
  %888 = add i64 %881, 8
  store i64 %888, i64* %PC, align 8
  %889 = inttoptr i64 %887 to i64*
  %890 = load i64, i64* %889, align 8
  %891 = add i64 %890, -1
  store i64 %891, i64* %RCX, align 8, !tbaa !2428
  %892 = lshr i64 %891, 63
  %893 = sub i64 %886, %891
  %894 = icmp ult i64 %886, %891
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %23, align 1, !tbaa !2432
  %896 = trunc i64 %893 to i32
  %897 = and i32 %896, 255
  %898 = tail call i32 @llvm.ctpop.i32(i32 %897) #12
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  %901 = xor i8 %900, 1
  store i8 %901, i8* %30, align 1, !tbaa !2446
  %902 = xor i64 %891, %886
  %903 = xor i64 %902, %893
  %904 = lshr i64 %903, 4
  %905 = trunc i64 %904 to i8
  %906 = and i8 %905, 1
  store i8 %906, i8* %35, align 1, !tbaa !2450
  %907 = icmp eq i64 %893, 0
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %38, align 1, !tbaa !2447
  %909 = lshr i64 %893, 63
  %910 = trunc i64 %909 to i8
  store i8 %910, i8* %41, align 1, !tbaa !2448
  %911 = lshr i64 %886, 63
  %912 = xor i64 %892, %911
  %913 = xor i64 %909, %911
  %914 = add nuw nsw i64 %913, %912
  %915 = icmp eq i64 %914, 2
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %47, align 1, !tbaa !2449
  %917 = icmp ne i8 %910, 0
  %918 = xor i1 %917, %915
  %.demorgan223 = or i1 %907, %918
  %.v230 = select i1 %.demorgan223, i64 21, i64 312
  %919 = add i64 %881, %.v230
  store i64 %919, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan223, label %block_401514, label %block_401637

block_400bed:                                     ; preds = %block_400bdf
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
  %920 = add i64 %2986, -16
  %921 = add i64 %3022, 15
  store i64 %921, i64* %PC, align 8
  %922 = inttoptr i64 %920 to i64*
  %923 = load i64, i64* %922, align 8
  %924 = xor i64 %923, -9223372036854775808
  store i64 %924, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %23, align 1, !tbaa !2432
  %925 = trunc i64 %923 to i32
  %926 = and i32 %925, 255
  %927 = tail call i32 @llvm.ctpop.i32(i32 %926) #12
  %928 = trunc i32 %927 to i8
  %929 = and i8 %928, 1
  %930 = xor i8 %929, 1
  store i8 %930, i8* %30, align 1, !tbaa !2446
  %931 = icmp eq i64 %924, 0
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %38, align 1, !tbaa !2447
  %933 = lshr i64 %924, 63
  %934 = trunc i64 %933 to i8
  store i8 %934, i8* %41, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %35, align 1, !tbaa !2450
  %935 = add i64 %3022, 33
  store i64 %935, i64* %PC, align 8
  store i64 %924, i64* %922, align 8
  %936 = load i64, i64* %PC, align 8
  %937 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %937, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %938 = load i64, i64* %RBP, align 8
  %939 = add i64 %938, -16
  %940 = add i64 %936, 14
  store i64 %940, i64* %PC, align 8
  %.cast156 = bitcast i64 %937 to double
  %941 = inttoptr i64 %939 to double*
  %942 = load double, double* %941, align 8
  %943 = fadd double %.cast156, %942
  store double %943, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  store double %943, double* bitcast (%sa_type* @sa to double*), align 8
  %944 = add i64 %938, -24
  %945 = add i64 %936, 28
  store i64 %945, i64* %PC, align 8
  %946 = inttoptr i64 %944 to double*
  %947 = load double, double* %946, align 8
  %948 = load double, double* bitcast (%two_type* @two to double*), align 8
  %949 = fadd double %947, %948
  store double %949, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %950 = add i64 %936, 42
  store i64 %950, i64* %PC, align 8
  %951 = inttoptr i64 %944 to double*
  store double %949, double* %951, align 8
  %952 = load i64, i64* %RBP, align 8
  %953 = add i64 %952, -48
  %954 = load i64, i64* %PC, align 8
  %955 = add i64 %954, 5
  store i64 %955, i64* %PC, align 8
  %956 = inttoptr i64 %953 to i64*
  %957 = load i64, i64* %956, align 8
  store i64 %957, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %958 = add i64 %952, -16
  %959 = add i64 %954, 10
  store i64 %959, i64* %PC, align 8
  %960 = inttoptr i64 %958 to i64*
  %961 = load i64, i64* %960, align 8
  store i64 %961, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %962 = add i64 %952, -24
  %963 = add i64 %954, 15
  store i64 %963, i64* %PC, align 8
  %964 = bitcast i64 %961 to double
  %965 = inttoptr i64 %962 to double*
  %966 = load double, double* %965, align 8
  %967 = fsub double %964, %966
  store double %967, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %968 = bitcast i64 %957 to double
  %969 = fadd double %968, %967
  store double %969, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %970 = add i64 %954, 24
  store i64 %970, i64* %PC, align 8
  %971 = inttoptr i64 %953 to double*
  store double %969, double* %971, align 8
  %972 = load i64, i64* %RBP, align 8
  %973 = add i64 %972, -32
  %974 = load i64, i64* %PC, align 8
  %975 = add i64 %974, 5
  store i64 %975, i64* %PC, align 8
  %976 = inttoptr i64 %973 to i64*
  %977 = load i64, i64* %976, align 8
  store i64 %977, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %978 = add i64 %972, -16
  %979 = add i64 %974, 10
  store i64 %979, i64* %PC, align 8
  %980 = inttoptr i64 %978 to i64*
  %981 = load i64, i64* %980, align 8
  store i64 %981, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %982 = add i64 %972, -24
  %983 = add i64 %974, 15
  store i64 %983, i64* %PC, align 8
  %984 = bitcast i64 %981 to double
  %985 = inttoptr i64 %982 to double*
  %986 = load double, double* %985, align 8
  %987 = fmul double %984, %986
  store double %987, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %988 = bitcast i64 %977 to double
  %989 = fsub double %988, %987
  store double %989, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %990 = add i64 %974, 24
  store i64 %990, i64* %PC, align 8
  %991 = inttoptr i64 %973 to double*
  store double %989, double* %991, align 8
  %992 = load i64, i64* %RBP, align 8
  %993 = add i64 %992, -40
  %994 = load i64, i64* %PC, align 8
  %995 = add i64 %994, 5
  store i64 %995, i64* %PC, align 8
  %996 = inttoptr i64 %993 to i64*
  %997 = load i64, i64* %996, align 8
  store i64 %997, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %998 = add i64 %992, -16
  %999 = add i64 %994, 10
  store i64 %999, i64* %PC, align 8
  %1000 = inttoptr i64 %998 to i64*
  %1001 = load i64, i64* %1000, align 8
  store i64 %1001, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %1002 = add i64 %992, -24
  %1003 = add i64 %994, 15
  store i64 %1003, i64* %PC, align 8
  %1004 = bitcast i64 %1001 to double
  %1005 = inttoptr i64 %1002 to double*
  %1006 = load double, double* %1005, align 8
  %1007 = fdiv double %1004, %1006
  store double %1007, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %1008 = bitcast i64 %997 to double
  %1009 = fadd double %1008, %1007
  store double %1009, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %1010 = add i64 %994, 24
  store i64 %1010, i64* %PC, align 8
  %1011 = inttoptr i64 %993 to double*
  store double %1009, double* %1011, align 8
  %1012 = load i64, i64* %RBP, align 8
  %1013 = add i64 %1012, -72
  %1014 = load i64, i64* %PC, align 8
  %1015 = add i64 %1014, 4
  store i64 %1015, i64* %PC, align 8
  %1016 = inttoptr i64 %1013 to i64*
  %1017 = load i64, i64* %1016, align 8
  %1018 = add i64 %1017, 1
  store i64 %1018, i64* %RAX, align 8, !tbaa !2428
  %1019 = icmp eq i64 %1017, -1
  %1020 = icmp eq i64 %1018, 0
  %1021 = or i1 %1019, %1020
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %23, align 1, !tbaa !2432
  %1023 = trunc i64 %1018 to i32
  %1024 = and i32 %1023, 255
  %1025 = tail call i32 @llvm.ctpop.i32(i32 %1024) #12
  %1026 = trunc i32 %1025 to i8
  %1027 = and i8 %1026, 1
  %1028 = xor i8 %1027, 1
  store i8 %1028, i8* %30, align 1, !tbaa !2446
  %1029 = xor i64 %1018, %1017
  %1030 = lshr i64 %1029, 4
  %1031 = trunc i64 %1030 to i8
  %1032 = and i8 %1031, 1
  store i8 %1032, i8* %35, align 1, !tbaa !2450
  %1033 = zext i1 %1020 to i8
  store i8 %1033, i8* %38, align 1, !tbaa !2447
  %1034 = lshr i64 %1018, 63
  %1035 = trunc i64 %1034 to i8
  store i8 %1035, i8* %41, align 1, !tbaa !2448
  %1036 = lshr i64 %1017, 63
  %1037 = xor i64 %1034, %1036
  %1038 = add nuw nsw i64 %1037, %1034
  %1039 = icmp eq i64 %1038, 2
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %47, align 1, !tbaa !2449
  %1041 = add i64 %1014, 12
  store i64 %1041, i64* %PC, align 8
  store i64 %1018, i64* %1016, align 8
  %1042 = load i64, i64* %PC, align 8
  %1043 = add i64 %1042, -173
  store i64 %1043, i64* %PC, align 8, !tbaa !2428
  br label %block_400bdf

block_4007e5:                                     ; preds = %block_40071b
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %1044 = add i64 %2741, 7675
  %1045 = add i64 %2741, 15
  %1046 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1047 = add i64 %1046, -8
  %1048 = inttoptr i64 %1047 to i64*
  store i64 %1045, i64* %1048, align 8
  store i64 %1047, i64* %RSP, align 8, !tbaa !2428
  store i64 %1044, i64* %PC, align 8, !tbaa !2428
  %1049 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %1044, %struct.Memory* %2108)
  %1050 = load i64, i64* %PC, align 8
  %1051 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to i64*), align 8
  store i64 %1051, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  store i64 %1051, i64* bitcast (%sa_type* @sa to i64*), align 8
  %1052 = load i64, i64* %RBP, align 8
  %1053 = add i64 %1052, -88
  %1054 = add i64 %1050, 22
  store i64 %1054, i64* %PC, align 8
  %1055 = inttoptr i64 %1053 to i64*
  %1056 = load i64, i64* %1055, align 8
  store i64 %1056, i64* %RDI, align 8, !tbaa !2428
  %1057 = add i64 %1052, -64
  %1058 = add i64 %1050, 26
  store i64 %1058, i64* %PC, align 8
  %1059 = inttoptr i64 %1057 to i64*
  %1060 = load i64, i64* %1059, align 8
  %1061 = sub i64 %1056, %1060
  %1062 = icmp ult i64 %1056, %1060
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %23, align 1, !tbaa !2432
  %1064 = trunc i64 %1061 to i32
  %1065 = and i32 %1064, 255
  %1066 = tail call i32 @llvm.ctpop.i32(i32 %1065) #12
  %1067 = trunc i32 %1066 to i8
  %1068 = and i8 %1067, 1
  %1069 = xor i8 %1068, 1
  store i8 %1069, i8* %30, align 1, !tbaa !2446
  %1070 = xor i64 %1060, %1056
  %1071 = xor i64 %1070, %1061
  %1072 = lshr i64 %1071, 4
  %1073 = trunc i64 %1072 to i8
  %1074 = and i8 %1073, 1
  store i8 %1074, i8* %35, align 1, !tbaa !2450
  %1075 = icmp eq i64 %1061, 0
  %1076 = zext i1 %1075 to i8
  store i8 %1076, i8* %38, align 1, !tbaa !2447
  %1077 = lshr i64 %1061, 63
  %1078 = trunc i64 %1077 to i8
  store i8 %1078, i8* %41, align 1, !tbaa !2448
  %1079 = lshr i64 %1056, 63
  %1080 = lshr i64 %1060, 63
  %1081 = xor i64 %1080, %1079
  %1082 = xor i64 %1077, %1079
  %1083 = add nuw nsw i64 %1082, %1081
  %1084 = icmp eq i64 %1083, 2
  %1085 = zext i1 %1084 to i8
  store i8 %1085, i8* %47, align 1, !tbaa !2449
  %1086 = add i64 %1052, -120
  %1087 = load i32, i32* %EAX, align 4
  %1088 = add i64 %1050, 29
  store i64 %1088, i64* %PC, align 8
  %1089 = inttoptr i64 %1086 to i32*
  store i32 %1087, i32* %1089, align 4
  %1090 = load i64, i64* %PC, align 8
  %1091 = load i8, i8* %38, align 1, !tbaa !2447
  %1092 = icmp eq i8 %1091, 0
  %.v251 = select i1 %1092, i64 11, i64 6
  %1093 = add i64 %1090, %.v251
  store i64 %1093, i64* %PC, align 8, !tbaa !2428
  br i1 %1092, label %block_40081c, label %block_400817

block_401cdf:                                     ; preds = %block_401cca
  %1094 = add i64 %2541, 6
  store i64 %1094, i64* %PC, align 8
  %1095 = load i64, i64* %2507, align 8
  %1096 = sitofp i64 %1095 to double
  store double %1096, double* %74, align 1, !tbaa !2451
  %1097 = add i64 %2504, -32
  %1098 = add i64 %2541, 11
  store i64 %1098, i64* %PC, align 8
  %1099 = inttoptr i64 %1097 to double*
  %1100 = load double, double* %1099, align 8
  %1101 = fmul double %1096, %1100
  store double %1101, double* %74, align 1, !tbaa !2451
  %1102 = add i64 %2504, -48
  %1103 = add i64 %2541, 16
  store i64 %1103, i64* %PC, align 8
  %1104 = inttoptr i64 %1102 to double*
  store double %1101, double* %1104, align 8
  %1105 = load i64, i64* %RBP, align 8
  %1106 = add i64 %1105, -48
  %1107 = load i64, i64* %PC, align 8
  %1108 = add i64 %1107, 5
  store i64 %1108, i64* %PC, align 8
  %1109 = inttoptr i64 %1106 to i64*
  %1110 = load i64, i64* %1109, align 8
  store i64 %1110, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %1111 = add i64 %1107, 10
  store i64 %1111, i64* %PC, align 8
  %1112 = bitcast i64 %1110 to double
  %1113 = inttoptr i64 %1106 to double*
  %1114 = load double, double* %1113, align 8
  %1115 = fmul double %1112, %1114
  store double %1115, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %1116 = add i64 %1105, -24
  %1117 = add i64 %1107, 15
  store i64 %1117, i64* %PC, align 8
  %1118 = inttoptr i64 %1116 to double*
  store double %1115, double* %1118, align 8
  %1119 = load i64, i64* %RBP, align 8
  %1120 = add i64 %1119, -16
  %1121 = load i64, i64* %PC, align 8
  %1122 = add i64 %1121, 5
  store i64 %1122, i64* %PC, align 8
  %1123 = inttoptr i64 %1120 to i64*
  %1124 = load i64, i64* %1123, align 8
  store i64 %1124, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %1125 = add i64 %1119, -40
  %1126 = add i64 %1121, 10
  store i64 %1126, i64* %PC, align 8
  %1127 = inttoptr i64 %1125 to i64*
  %1128 = load i64, i64* %1127, align 8
  store i64 %1128, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %1129 = add i64 %1119, -48
  %1130 = add i64 %1121, 15
  store i64 %1130, i64* %PC, align 8
  %1131 = inttoptr i64 %1129 to i64*
  %1132 = load i64, i64* %1131, align 8
  store i64 %1132, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %1133 = add i64 %1121, 20
  store i64 %1133, i64* %PC, align 8
  %1134 = bitcast i64 %1132 to double
  %1135 = inttoptr i64 %1125 to double*
  %1136 = load double, double* %1135, align 8
  %1137 = fadd double %1134, %1136
  store double %1137, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %1138 = bitcast i64 %1128 to double
  %1139 = fdiv double %1138, %1137
  store double %1139, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %1140 = bitcast i64 %1124 to double
  %1141 = fsub double %1140, %1139
  store double %1141, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %1142 = add i64 %1121, 33
  store i64 %1142, i64* %PC, align 8
  %1143 = load i64, i64* %1131, align 8
  store i64 %1143, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %1144 = add i64 %1119, -24
  %1145 = add i64 %1121, 38
  store i64 %1145, i64* %PC, align 8
  %1146 = inttoptr i64 %1144 to i64*
  %1147 = load i64, i64* %1146, align 8
  store i64 %1147, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %1148 = add i64 %1121, 43
  store i64 %1148, i64* %PC, align 8
  %1149 = bitcast i64 %1147 to double
  %1150 = load double, double* %1135, align 8
  %1151 = fadd double %1149, %1150
  store double %1151, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %1152 = bitcast i64 %1143 to double
  %1153 = fdiv double %1152, %1151
  store double %1153, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %1154 = fsub double %1141, %1153
  store double %1154, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %1155 = add i64 %1121, 56
  store i64 %1155, i64* %PC, align 8
  %1156 = load i64, i64* %1146, align 8
  store i64 %1156, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %1157 = add i64 %1121, 61
  store i64 %1157, i64* %PC, align 8
  %1158 = load i64, i64* %1131, align 8
  store i64 %1158, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %1159 = add i64 %1121, 66
  store i64 %1159, i64* %PC, align 8
  %1160 = bitcast i64 %1158 to double
  %1161 = inttoptr i64 %1144 to double*
  %1162 = load double, double* %1161, align 8
  %1163 = fmul double %1160, %1162
  store double %1163, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %1164 = add i64 %1121, 71
  store i64 %1164, i64* %PC, align 8
  %1165 = load double, double* %1135, align 8
  %1166 = fadd double %1163, %1165
  store double %1166, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %1167 = bitcast i64 %1156 to double
  %1168 = fdiv double %1167, %1166
  store double %1168, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %1169 = fsub double %1154, %1168
  store double %1169, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %1170 = load i64, i64* %RBP, align 8
  %1171 = add i64 %1170, -16
  %1172 = add i64 %1121, 84
  store i64 %1172, i64* %PC, align 8
  %1173 = inttoptr i64 %1171 to double*
  store double %1169, double* %1173, align 8
  %1174 = load i64, i64* %RBP, align 8
  %1175 = add i64 %1174, -72
  %1176 = load i64, i64* %PC, align 8
  %1177 = add i64 %1176, 4
  store i64 %1177, i64* %PC, align 8
  %1178 = inttoptr i64 %1175 to i64*
  %1179 = load i64, i64* %1178, align 8
  %1180 = add i64 %1179, 1
  store i64 %1180, i64* %RAX, align 8, !tbaa !2428
  %1181 = icmp eq i64 %1179, -1
  %1182 = icmp eq i64 %1180, 0
  %1183 = or i1 %1181, %1182
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %23, align 1, !tbaa !2432
  %1185 = trunc i64 %1180 to i32
  %1186 = and i32 %1185, 255
  %1187 = tail call i32 @llvm.ctpop.i32(i32 %1186) #12
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = xor i8 %1189, 1
  store i8 %1190, i8* %30, align 1, !tbaa !2446
  %1191 = xor i64 %1180, %1179
  %1192 = lshr i64 %1191, 4
  %1193 = trunc i64 %1192 to i8
  %1194 = and i8 %1193, 1
  store i8 %1194, i8* %35, align 1, !tbaa !2450
  %1195 = zext i1 %1182 to i8
  store i8 %1195, i8* %38, align 1, !tbaa !2447
  %1196 = lshr i64 %1180, 63
  %1197 = trunc i64 %1196 to i8
  store i8 %1197, i8* %41, align 1, !tbaa !2448
  %1198 = lshr i64 %1179, 63
  %1199 = xor i64 %1196, %1198
  %1200 = add nuw nsw i64 %1199, %1196
  %1201 = icmp eq i64 %1200, 2
  %1202 = zext i1 %1201 to i8
  store i8 %1202, i8* %47, align 1, !tbaa !2449
  %1203 = add i64 %1176, 12
  store i64 %1203, i64* %PC, align 8
  store i64 %1180, i64* %1178, align 8
  %1204 = load i64, i64* %PC, align 8
  %1205 = add i64 %1204, -148
  store i64 %1205, i64* %PC, align 8, !tbaa !2428
  br label %block_401cca

block_400e74:                                     ; preds = %block_400e89, %block_400c91
  %1206 = phi i64 [ %4008, %block_400e89 ], [ %.pre212, %block_400c91 ]
  %1207 = load i64, i64* %RBP, align 8
  %1208 = add i64 %1207, -72
  %1209 = add i64 %1206, 4
  store i64 %1209, i64* %PC, align 8
  %1210 = inttoptr i64 %1208 to i64*
  %1211 = load i64, i64* %1210, align 8
  store i64 %1211, i64* %RAX, align 8, !tbaa !2428
  %1212 = add i64 %1207, -80
  %1213 = add i64 %1206, 8
  store i64 %1213, i64* %PC, align 8
  %1214 = inttoptr i64 %1212 to i64*
  %1215 = load i64, i64* %1214, align 8
  %1216 = add i64 %1215, -1
  store i64 %1216, i64* %RCX, align 8, !tbaa !2428
  %1217 = lshr i64 %1216, 63
  %1218 = sub i64 %1211, %1216
  %1219 = icmp ult i64 %1211, %1216
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %23, align 1, !tbaa !2432
  %1221 = trunc i64 %1218 to i32
  %1222 = and i32 %1221, 255
  %1223 = tail call i32 @llvm.ctpop.i32(i32 %1222) #12
  %1224 = trunc i32 %1223 to i8
  %1225 = and i8 %1224, 1
  %1226 = xor i8 %1225, 1
  store i8 %1226, i8* %30, align 1, !tbaa !2446
  %1227 = xor i64 %1216, %1211
  %1228 = xor i64 %1227, %1218
  %1229 = lshr i64 %1228, 4
  %1230 = trunc i64 %1229 to i8
  %1231 = and i8 %1230, 1
  store i8 %1231, i8* %35, align 1, !tbaa !2450
  %1232 = icmp eq i64 %1218, 0
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %38, align 1, !tbaa !2447
  %1234 = lshr i64 %1218, 63
  %1235 = trunc i64 %1234 to i8
  store i8 %1235, i8* %41, align 1, !tbaa !2448
  %1236 = lshr i64 %1211, 63
  %1237 = xor i64 %1217, %1236
  %1238 = xor i64 %1234, %1236
  %1239 = add nuw nsw i64 %1238, %1237
  %1240 = icmp eq i64 %1239, 2
  %1241 = zext i1 %1240 to i8
  store i8 %1241, i8* %47, align 1, !tbaa !2449
  %1242 = icmp ne i8 %1235, 0
  %1243 = xor i1 %1242, %1240
  %.demorgan221 = or i1 %1232, %1243
  %.v228 = select i1 %.demorgan221, i64 21, i64 203
  %1244 = add i64 %1206, %.v228
  store i64 %1244, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan221, label %block_400e89, label %block_400f3f

block_4018de:                                     ; preds = %block_4018f3, %block_401637
  %1245 = phi i64 [ %3888, %block_4018f3 ], [ %.pre215, %block_401637 ]
  %1246 = load i64, i64* %RBP, align 8
  %1247 = add i64 %1246, -72
  %1248 = add i64 %1245, 4
  store i64 %1248, i64* %PC, align 8
  %1249 = inttoptr i64 %1247 to i64*
  %1250 = load i64, i64* %1249, align 8
  store i64 %1250, i64* %RAX, align 8, !tbaa !2428
  %1251 = add i64 %1246, -80
  %1252 = add i64 %1245, 8
  store i64 %1252, i64* %PC, align 8
  %1253 = inttoptr i64 %1251 to i64*
  %1254 = load i64, i64* %1253, align 8
  %1255 = add i64 %1254, -1
  store i64 %1255, i64* %RCX, align 8, !tbaa !2428
  %1256 = lshr i64 %1255, 63
  %1257 = sub i64 %1250, %1255
  %1258 = icmp ult i64 %1250, %1255
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %23, align 1, !tbaa !2432
  %1260 = trunc i64 %1257 to i32
  %1261 = and i32 %1260, 255
  %1262 = tail call i32 @llvm.ctpop.i32(i32 %1261) #12
  %1263 = trunc i32 %1262 to i8
  %1264 = and i8 %1263, 1
  %1265 = xor i8 %1264, 1
  store i8 %1265, i8* %30, align 1, !tbaa !2446
  %1266 = xor i64 %1255, %1250
  %1267 = xor i64 %1266, %1257
  %1268 = lshr i64 %1267, 4
  %1269 = trunc i64 %1268 to i8
  %1270 = and i8 %1269, 1
  store i8 %1270, i8* %35, align 1, !tbaa !2450
  %1271 = icmp eq i64 %1257, 0
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %38, align 1, !tbaa !2447
  %1273 = lshr i64 %1257, 63
  %1274 = trunc i64 %1273 to i8
  store i8 %1274, i8* %41, align 1, !tbaa !2448
  %1275 = lshr i64 %1250, 63
  %1276 = xor i64 %1256, %1275
  %1277 = xor i64 %1273, %1275
  %1278 = add nuw nsw i64 %1277, %1276
  %1279 = icmp eq i64 %1278, 2
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %47, align 1, !tbaa !2449
  %1281 = icmp ne i8 %1274, 0
  %1282 = xor i1 %1281, %1279
  %.demorgan224 = or i1 %1271, %1282
  %.v231 = select i1 %.demorgan224, i64 21, i64 312
  %1283 = add i64 %1245, %.v231
  store i64 %1283, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan224, label %block_4018f3, label %block_401a16

block_4008d4:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_4008d4_crit_edge, %block_4008c8
  %1284 = phi double [ %.pre208, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_4008d4_crit_edge ], [ %2564, %block_4008c8 ]
  %1285 = phi i64 [ %3312, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_4008d4_crit_edge ], [ %2562, %block_4008c8 ]
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 390), i64* %RDI, align 8, !tbaa !2428
  %1286 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to i64*), align 8
  store i64 %1286, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %1287 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 80) to i64*), align 16
  store i64 %1287, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %1288 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 88) to i64*), align 8
  store i64 %1288, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %1289 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %1290 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %1291 = fmul double %1289, %1290
  %1292 = fsub double %1291, %1284
  store double %1292, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %1293 = load i64, i64* bitcast (%D1_0_type* @D1_0 to i64*), align 8
  %.cast19 = bitcast i64 %1293 to double
  %1294 = load double, double* bitcast (%D2_0_type* @D2_0 to double*), align 8
  %1295 = fadd double %.cast19, %1294
  %1296 = load double, double* bitcast (%D3_type* @D3 to double*), align 8
  %1297 = fadd double %1295, %1296
  %1298 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1299 = fadd double %1298, %.cast19
  %1300 = load double, double* bitcast (%E2_0_type* @E2_0 to double*), align 8
  %1301 = fadd double %1299, %1300
  %1302 = load double, double* bitcast (%E3_type* @E3 to double*), align 8
  %1303 = fadd double %1301, %1302
  store double %1303, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %1304 = fdiv double %1297, %1303
  store double %1304, double* bitcast (%sa_type* @sa to double*), align 8
  store i64 %1293, i64* bitcast (%sb_type* @sb to i64*), align 8
  %1305 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %1306 = bitcast i64 %1288 to double
  %1307 = fdiv double %1305, %1306
  store double %1307, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  store double %1307, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 24) to double*), align 8
  %1308 = load i64, i64* %RBP, align 8
  %1309 = add i64 %1308, -48
  %1310 = add i64 %1285, 191
  store i64 %1310, i64* %PC, align 8
  %1311 = inttoptr i64 %1309 to i64*
  %1312 = load i64, i64* %1311, align 8
  store i64 %1312, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %1313 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %1314 = load double, double* bitcast (%sb_type* @sb to double*), align 8
  %1315 = fadd double %1313, %1314
  store double %1315, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %1316 = load i64, i64* bitcast (%two_type* @two to i64*), align 8
  store i64 %1316, i64* %97, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %1317 = add i64 %1308, -16
  %1318 = add i64 %1285, 223
  store i64 %1318, i64* %PC, align 8
  %.cast154 = bitcast i64 %1316 to double
  %1319 = inttoptr i64 %1317 to double*
  %1320 = load double, double* %1319, align 8
  %1321 = fmul double %.cast154, %1320
  store double %1321, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %1322 = fadd double %1315, %1321
  store double %1322, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %1323 = bitcast i64 %1312 to double
  %1324 = fmul double %1323, %1322
  %1325 = fdiv double %1324, %.cast154
  store double %1325, double* bitcast (%sa_type* @sa to double*), align 8
  %1326 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1327 = fdiv double %1326, %1325
  store double %1327, double* bitcast (%sb_type* @sb to double*), align 8
  %1328 = tail call double @llvm.trunc.f64(double %1327) #12
  %1329 = tail call double @llvm.fabs.f64(double %1328) #12
  %1330 = fcmp ogt double %1329, 0x43E0000000000000
  %1331 = fptosi double %1328 to i64
  %1332 = select i1 %1330, i64 -9223372036854775808, i64 %1331
  %1333 = sext i64 %1332 to i128
  %1334 = and i128 %1333, -18446744073709551616
  %1335 = zext i64 %1332 to i128
  %1336 = or i128 %1334, %1335
  %1337 = mul nsw i128 %1336, 40000
  %1338 = trunc i128 %1337 to i64
  %1339 = sext i64 %1338 to i128
  %1340 = icmp ne i128 %1339, %1337
  %1341 = zext i1 %1340 to i8
  store i8 %1341, i8* %23, align 1, !tbaa !2432
  %1342 = trunc i128 %1337 to i32
  %1343 = and i32 %1342, 192
  %1344 = tail call i32 @llvm.ctpop.i32(i32 %1343) #12
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  %1347 = xor i8 %1346, 1
  store i8 %1347, i8* %30, align 1, !tbaa !2446
  store i8 0, i8* %35, align 1, !tbaa !2450
  store i8 0, i8* %38, align 1, !tbaa !2447
  %1348 = lshr i64 %1338, 63
  %1349 = trunc i64 %1348 to i8
  store i8 %1349, i8* %41, align 1, !tbaa !2448
  store i8 %1341, i8* %47, align 1, !tbaa !2449
  %1350 = sitofp i64 %1338 to double
  %1351 = load double, double* bitcast (%scale_type* @scale to double*), align 8
  %1352 = fdiv double %1350, %1351
  %1353 = tail call double @llvm.trunc.f64(double %1352) #12
  %1354 = tail call double @llvm.fabs.f64(double %1353) #12
  %1355 = fcmp ogt double %1354, 0x43E0000000000000
  %1356 = fptosi double %1353 to i64
  %1357 = select i1 %1355, i64 -9223372036854775808, i64 %1356
  store i64 %1357, i64* %RAX, align 8, !tbaa !2428
  %1358 = load i64, i64* %RBP, align 8
  %1359 = add i64 %1358, -88
  %1360 = add i64 %1285, 316
  store i64 %1360, i64* %PC, align 8
  %1361 = inttoptr i64 %1359 to i64*
  store i64 %1357, i64* %1361, align 8
  %1362 = load i64, i64* %PC, align 8
  %1363 = load double, double* bitcast (%sb_type* @sb to double*), align 8
  %1364 = load double, double* %80, align 1
  %1365 = fsub double %1363, %1364
  store double %1365, double* bitcast (%sc_type* @sc to double*), align 8
  %1366 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1367 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 24) to double*), align 8
  %1368 = fdiv double %1366, %1367
  store double %1368, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 32) to double*), align 16
  %1369 = bitcast [32 x %union.VectorReg]* %5 to <2 x i32>*
  %1370 = load <2 x i32>, <2 x i32>* %1369, align 1
  %1371 = bitcast i64* %76 to <2 x i32>*
  %1372 = load <2 x i32>, <2 x i32>* %1371, align 1
  %1373 = extractelement <2 x i32> %1370, i32 0
  %1374 = bitcast %union.VectorReg* %6 to i32*
  store i32 %1373, i32* %1374, align 1, !tbaa !2455
  %1375 = extractelement <2 x i32> %1370, i32 1
  %1376 = getelementptr inbounds i8, i8* %78, i64 4
  %1377 = bitcast i8* %1376 to i32*
  store i32 %1375, i32* %1377, align 1, !tbaa !2455
  %1378 = extractelement <2 x i32> %1372, i32 0
  %1379 = bitcast i64* %82 to i32*
  store i32 %1378, i32* %1379, align 1, !tbaa !2455
  %1380 = extractelement <2 x i32> %1372, i32 1
  %1381 = getelementptr inbounds i8, i8* %78, i64 12
  %1382 = bitcast i8* %1381 to i32*
  store i32 %1380, i32* %1382, align 1, !tbaa !2455
  %1383 = load double, double* %80, align 1
  %1384 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %1385 = fmul double %1383, %1384
  store double %1385, double* %80, align 1, !tbaa !2451
  %1386 = bitcast %union.VectorReg* %7 to i32*
  store i32 %1373, i32* %1386, align 1, !tbaa !2455
  %1387 = getelementptr inbounds i8, i8* %84, i64 4
  %1388 = bitcast i8* %1387 to i32*
  store i32 %1375, i32* %1388, align 1, !tbaa !2455
  %1389 = bitcast i64* %88 to i32*
  store i32 %1378, i32* %1389, align 1, !tbaa !2455
  %1390 = getelementptr inbounds i8, i8* %84, i64 12
  %1391 = bitcast i8* %1390 to i32*
  store i32 %1380, i32* %1391, align 1, !tbaa !2455
  %1392 = load double, double* %86, align 1
  %1393 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %1394 = fmul double %1392, %1393
  store double %1394, double* %86, align 1, !tbaa !2451
  %1395 = bitcast <2 x i32> %1370 to double
  %1396 = fmul double %1395, %1368
  %1397 = load i64, i64* %RBP, align 8
  %1398 = add i64 %1397, -136
  %1399 = add i64 %1362, 90
  store i64 %1399, i64* %PC, align 8
  %1400 = inttoptr i64 %1398 to double*
  store double %1396, double* %1400, align 8
  %1401 = load i64, i64* %PC, align 8
  %1402 = bitcast %union.VectorReg* %6 to <2 x i32>*
  %1403 = load <2 x i32>, <2 x i32>* %1402, align 1
  %1404 = bitcast i64* %82 to <2 x i32>*
  %1405 = load <2 x i32>, <2 x i32>* %1404, align 1
  %1406 = extractelement <2 x i32> %1403, i32 0
  store i32 %1406, i32* %187, align 1, !tbaa !2455
  %1407 = extractelement <2 x i32> %1403, i32 1
  store i32 %1407, i32* %189, align 1, !tbaa !2455
  %1408 = extractelement <2 x i32> %1405, i32 0
  store i32 %1408, i32* %190, align 1, !tbaa !2455
  %1409 = extractelement <2 x i32> %1405, i32 1
  store i32 %1409, i32* %192, align 1, !tbaa !2455
  %1410 = bitcast %union.VectorReg* %7 to <2 x i32>*
  %1411 = load <2 x i32>, <2 x i32>* %1410, align 1
  %1412 = bitcast i64* %88 to <2 x i32>*
  %1413 = load <2 x i32>, <2 x i32>* %1412, align 1
  %1414 = extractelement <2 x i32> %1411, i32 0
  store i32 %1414, i32* %1374, align 1, !tbaa !2455
  %1415 = extractelement <2 x i32> %1411, i32 1
  store i32 %1415, i32* %1377, align 1, !tbaa !2455
  %1416 = extractelement <2 x i32> %1413, i32 0
  store i32 %1416, i32* %1379, align 1, !tbaa !2455
  %1417 = extractelement <2 x i32> %1413, i32 1
  store i32 %1417, i32* %1382, align 1, !tbaa !2455
  %1418 = load i64, i64* %RBP, align 8
  %1419 = add i64 %1418, -136
  %1420 = add i64 %1401, 14
  store i64 %1420, i64* %PC, align 8
  %1421 = inttoptr i64 %1419 to i64*
  %1422 = load i64, i64* %1421, align 8
  store i64 %1422, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %1423 = add i64 %1401, -1562
  %1424 = add i64 %1401, 21
  %1425 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1426 = add i64 %1425, -8
  %1427 = inttoptr i64 %1426 to i64*
  store i64 %1424, i64* %1427, align 8
  store i64 %1426, i64* %RSP, align 8, !tbaa !2428
  store i64 %1423, i64* %PC, align 8, !tbaa !2428
  %1428 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %3305)
  %1429 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 -9223372036854775808, i64* %RCX, align 8, !tbaa !2428
  %1430 = load i64, i64* %RBP, align 8
  %1431 = add i64 %1430, -88
  %1432 = add i64 %1429, 24
  store i64 %1432, i64* %PC, align 8
  %1433 = inttoptr i64 %1431 to i64*
  %1434 = load i64, i64* %1433, align 8
  %1435 = add i64 %1430, -80
  %1436 = add i64 %1429, 28
  store i64 %1436, i64* %PC, align 8
  %1437 = inttoptr i64 %1435 to i64*
  store i64 %1434, i64* %1437, align 8
  %1438 = load i64, i64* %PC, align 8
  %1439 = load i64, i64* bitcast (%five_type* @five to i64*), align 8
  %1440 = load i64, i64* %RCX, align 8
  %1441 = xor i64 %1440, %1439
  %1442 = load i64, i64* %RBP, align 8
  %1443 = add i64 %1442, -16
  %1444 = add i64 %1438, 27
  store i64 %1444, i64* %PC, align 8
  %1445 = inttoptr i64 %1443 to i64*
  store i64 %1441, i64* %1445, align 8
  %1446 = load i64, i64* %PC, align 8
  %1447 = load i64, i64* bitcast (%one_type* @one to i64*), align 8
  %1448 = load i64, i64* %RCX, align 8
  %1449 = xor i64 %1448, %1447
  store i64 %1449, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %23, align 1, !tbaa !2432
  %1450 = trunc i64 %1449 to i32
  %1451 = and i32 %1450, 255
  %1452 = tail call i32 @llvm.ctpop.i32(i32 %1451) #12
  %1453 = trunc i32 %1452 to i8
  %1454 = and i8 %1453, 1
  %1455 = xor i8 %1454, 1
  store i8 %1455, i8* %30, align 1, !tbaa !2446
  %1456 = icmp eq i64 %1449, 0
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %38, align 1, !tbaa !2447
  %1458 = lshr i64 %1449, 63
  %1459 = trunc i64 %1458 to i8
  store i8 %1459, i8* %41, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %35, align 1, !tbaa !2450
  store i64 %1449, i64* %75, align 1, !tbaa !2428
  store i64 0, i64* %76, align 1, !tbaa !2428
  store i64 %1449, i64* bitcast (%sa_type* @sa to i64*), align 8
  %1460 = load i64, i64* %RBP, align 8
  %1461 = add i64 %1460, -140
  %1462 = load i32, i32* %EAX, align 4
  %1463 = add i64 %1446, 37
  store i64 %1463, i64* %PC, align 8
  %1464 = inttoptr i64 %1461 to i32*
  store i32 %1462, i32* %1464, align 4
  %1465 = load i64, i64* %PC, align 8
  %1466 = add i64 %1465, 6917
  %1467 = add i64 %1465, 5
  %1468 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1469 = add i64 %1468, -8
  %1470 = inttoptr i64 %1469 to i64*
  store i64 %1467, i64* %1470, align 8
  store i64 %1469, i64* %RSP, align 8, !tbaa !2428
  store i64 %1466, i64* %PC, align 8, !tbaa !2428
  %1471 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %1466, %struct.Memory* %1428)
  %1472 = load i64, i64* %RBP, align 8
  %1473 = add i64 %1472, -72
  %1474 = load i64, i64* %PC, align 8
  %1475 = add i64 %1474, 8
  store i64 %1475, i64* %PC, align 8
  %1476 = inttoptr i64 %1473 to i64*
  store i64 1, i64* %1476, align 8
  %1477 = load i64, i64* %RBP, align 8
  %1478 = add i64 %1477, -144
  %1479 = load i32, i32* %EAX, align 4
  %1480 = load i64, i64* %PC, align 8
  %1481 = add i64 %1480, 6
  store i64 %1481, i64* %PC, align 8
  %1482 = inttoptr i64 %1478 to i32*
  store i32 %1479, i32* %1482, align 4
  %.pre209 = load i64, i64* %PC, align 8
  br label %block_400aee

block_401637:                                     ; preds = %block_4014ff
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %1483 = add i64 %919, 4009
  %1484 = add i64 %919, 15
  %1485 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1486 = add i64 %1485, -8
  %1487 = inttoptr i64 %1486 to i64*
  store i64 %1484, i64* %1487, align 8
  store i64 %1486, i64* %RSP, align 8, !tbaa !2428
  store i64 %1483, i64* %PC, align 8, !tbaa !2428
  %1488 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %1483, %struct.Memory* %2036)
  %1489 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 534), i64* %RDI, align 8, !tbaa !2428
  %1490 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to i64*), align 8
  store i64 %1490, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %1491 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 136) to i64*), align 8
  store i64 %1491, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %1492 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 144) to i64*), align 16
  store i64 %1492, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %1493 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %1494 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %1495 = fmul double %1493, %1494
  %1496 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %1497 = fsub double %1495, %1496
  store double %1497, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %1498 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %1499 = load double, double* bitcast (%three_type* @three to double*), align 8
  %1500 = fdiv double %1498, %1499
  store double %1500, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %1501 = load i64, i64* %RBP, align 8
  %1502 = add i64 %1501, -24
  %1503 = add i64 %1489, 93
  store i64 %1503, i64* %PC, align 8
  %1504 = inttoptr i64 %1502 to double*
  store double %1500, double* %1504, align 8
  %1505 = load i64, i64* %RBP, align 8
  %1506 = add i64 %1505, -24
  %1507 = load i64, i64* %PC, align 8
  %1508 = add i64 %1507, 5
  store i64 %1508, i64* %PC, align 8
  %1509 = inttoptr i64 %1506 to i64*
  %1510 = load i64, i64* %1509, align 8
  store i64 %1510, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %1511 = add i64 %1507, 10
  store i64 %1511, i64* %PC, align 8
  %1512 = bitcast i64 %1510 to double
  %1513 = inttoptr i64 %1506 to double*
  %1514 = load double, double* %1513, align 8
  %1515 = fmul double %1512, %1514
  store double %1515, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %1516 = add i64 %1505, -40
  %1517 = add i64 %1507, 15
  store i64 %1517, i64* %PC, align 8
  %1518 = inttoptr i64 %1516 to double*
  store double %1515, double* %1518, align 8
  %1519 = load i64, i64* %RBP, align 8
  %1520 = add i64 %1519, -24
  %1521 = load i64, i64* %PC, align 8
  %1522 = add i64 %1521, 5
  store i64 %1522, i64* %PC, align 8
  %1523 = inttoptr i64 %1520 to i64*
  %1524 = load i64, i64* %1523, align 8
  store i64 %1524, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %1525 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %1525, i64* %97, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %1526 = add i64 %1519, -40
  %1527 = add i64 %1521, 19
  store i64 %1527, i64* %PC, align 8
  %.cast168 = bitcast i64 %1525 to double
  %1528 = inttoptr i64 %1526 to double*
  %1529 = load double, double* %1528, align 8
  %1530 = fmul double %.cast168, %1529
  %1531 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %1532 = fadd double %1530, %1531
  store double %1532, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %1533 = add i64 %1521, 33
  store i64 %1533, i64* %PC, align 8
  %1534 = load double, double* %1528, align 8
  %1535 = fmul double %1532, %1534
  %1536 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %1537 = fadd double %1535, %1536
  store double %1537, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %1538 = add i64 %1521, 47
  store i64 %1538, i64* %PC, align 8
  %1539 = load double, double* %1528, align 8
  %1540 = fmul double %1537, %1539
  %1541 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %1542 = fadd double %1540, %1541
  store double %1542, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %1543 = add i64 %1521, 61
  store i64 %1543, i64* %PC, align 8
  %1544 = load double, double* %1528, align 8
  %1545 = fmul double %1542, %1544
  %1546 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %1547 = fadd double %1545, %1546
  store double %1547, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %1548 = add i64 %1521, 75
  store i64 %1548, i64* %PC, align 8
  %1549 = load double, double* %1528, align 8
  %1550 = fmul double %1547, %1549
  %1551 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %1552 = fadd double %1550, %1551
  store double %1552, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %1553 = add i64 %1521, 89
  store i64 %1553, i64* %PC, align 8
  %1554 = load double, double* %1528, align 8
  %1555 = fmul double %1552, %1554
  %1556 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1557 = fadd double %1555, %1556
  store double %1557, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %1558 = bitcast i64 %1524 to double
  %1559 = fmul double %1557, %1558
  store double %1559, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  store double %1559, double* bitcast (%sa_type* @sa to double*), align 8
  %1560 = add i64 %1521, 116
  store i64 %1560, i64* %PC, align 8
  %1561 = inttoptr i64 %1526 to i64*
  %1562 = load i64, i64* %1561, align 8
  store i64 %1562, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %1563 = load i64, i64* %RBP, align 8
  %1564 = add i64 %1563, -40
  %1565 = add i64 %1521, 121
  store i64 %1565, i64* %PC, align 8
  %1566 = inttoptr i64 %1564 to i64*
  %1567 = load i64, i64* %1566, align 8
  store i64 %1567, i64* %97, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %1568 = add i64 %1521, 126
  store i64 %1568, i64* %PC, align 8
  %1569 = load i64, i64* %1566, align 8
  store i64 %1569, i64* %102, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %1570 = add i64 %1521, 131
  store i64 %1570, i64* %PC, align 8
  %1571 = load i64, i64* %1566, align 8
  store i64 %1571, i64* %107, align 1, !tbaa !2451
  store double 0.000000e+00, double* %109, align 1, !tbaa !2451
  %1572 = add i64 %1521, 136
  store i64 %1572, i64* %PC, align 8
  %1573 = load i64, i64* %1566, align 8
  store i64 %1573, i64* %209, align 1, !tbaa !2451
  store double 0.000000e+00, double* %211, align 1, !tbaa !2451
  %1574 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  %1575 = bitcast %union.VectorReg* %13 to double*
  %1576 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %13, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1574, i64* %1576, align 1, !tbaa !2451
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1
  %1578 = bitcast i64* %1577 to double*
  store double 0.000000e+00, double* %1578, align 1, !tbaa !2451
  %1579 = add i64 %1521, 152
  store i64 %1579, i64* %PC, align 8
  %1580 = bitcast i64 %1574 to double
  %1581 = inttoptr i64 %1564 to double*
  %1582 = load double, double* %1581, align 8
  %1583 = fmul double %1580, %1582
  %1584 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %1585 = fadd double %1583, %1584
  store double %1585, double* %1575, align 1, !tbaa !2451
  store i64 0, i64* %1577, align 1, !tbaa !2451
  %1586 = bitcast i64 %1573 to double
  %1587 = fmul double %1585, %1586
  %1588 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %1589 = fadd double %1587, %1588
  store double %1589, double* %121, align 1, !tbaa !2451
  store i64 0, i64* %210, align 1, !tbaa !2451
  %1590 = bitcast i64 %1571 to double
  %1591 = fmul double %1589, %1590
  %1592 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %1593 = fadd double %1591, %1592
  store double %1593, double* %106, align 1, !tbaa !2451
  store i64 0, i64* %108, align 1, !tbaa !2451
  %1594 = bitcast i64 %1569 to double
  %1595 = fmul double %1593, %1594
  %1596 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %1597 = fadd double %1595, %1596
  store double %1597, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %1598 = bitcast i64 %1567 to double
  %1599 = fmul double %1597, %1598
  %1600 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %1601 = fadd double %1599, %1600
  store double %1601, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %1602 = bitcast i64 %1562 to double
  %1603 = fmul double %1601, %1602
  %1604 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1605 = fadd double %1603, %1604
  store double %1605, double* bitcast (%sb_type* @sb to double*), align 8
  %1606 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %1607 = fdiv double %1606, %1605
  store double %1607, double* bitcast (%sa_type* @sa to double*), align 8
  %1608 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %1609 = load double, double* %86, align 1
  %1610 = fdiv double %1608, %1609
  store double %1610, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  store double %1610, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 128) to double*), align 16
  %1611 = load i64, i64* %RBP, align 8
  %1612 = add i64 %1611, -48
  %1613 = add i64 %1521, 291
  store i64 %1613, i64* %PC, align 8
  %1614 = inttoptr i64 %1612 to i64*
  %1615 = load i64, i64* %1614, align 8
  store i64 %1615, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %1616 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %1616, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %1617 = load i64, i64* bitcast (%two_type* @two to i64*), align 8
  store i64 %1617, i64* %97, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %1618 = add i64 %1611, -16
  %1619 = add i64 %1521, 314
  store i64 %1619, i64* %PC, align 8
  %.cast169 = bitcast i64 %1617 to double
  %1620 = inttoptr i64 %1618 to double*
  %1621 = load double, double* %1620, align 8
  %1622 = fmul double %.cast169, %1621
  store double %1622, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %1623 = bitcast i64 %1616 to double
  %1624 = fadd double %1623, %1622
  store double %1624, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %1625 = bitcast i64 %1615 to double
  %1626 = fmul double %1625, %1624
  %1627 = fdiv double %1626, %.cast169
  store double %1627, double* bitcast (%sa_type* @sa to double*), align 8
  %1628 = load i64, i64* %81, align 1
  store i64 %1628, i64* bitcast (%sb_type* @sb to i64*), align 8
  %1629 = bitcast i64 %1628 to double
  %1630 = fsub double %1627, %1629
  store double %1630, double* bitcast (%sc_type* @sc to double*), align 8
  %1631 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1632 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 128) to double*), align 16
  %1633 = fdiv double %1631, %1632
  store double %1633, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 136) to double*), align 8
  %1634 = load <2 x i32>, <2 x i32>* %1369, align 1
  %1635 = load <2 x i32>, <2 x i32>* %1371, align 1
  %1636 = extractelement <2 x i32> %1634, i32 0
  store i32 %1636, i32* %1374, align 1, !tbaa !2455
  %1637 = extractelement <2 x i32> %1634, i32 1
  store i32 %1637, i32* %1377, align 1, !tbaa !2455
  %1638 = extractelement <2 x i32> %1635, i32 0
  store i32 %1638, i32* %1379, align 1, !tbaa !2455
  %1639 = extractelement <2 x i32> %1635, i32 1
  store i32 %1639, i32* %1382, align 1, !tbaa !2455
  %1640 = load double, double* %80, align 1
  %1641 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %1642 = fmul double %1640, %1641
  store double %1642, double* %80, align 1, !tbaa !2451
  store i32 %1636, i32* %1386, align 1, !tbaa !2455
  store i32 %1637, i32* %1388, align 1, !tbaa !2455
  store i32 %1638, i32* %1389, align 1, !tbaa !2455
  store i32 %1639, i32* %1391, align 1, !tbaa !2455
  %1643 = load double, double* %86, align 1
  %1644 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %1645 = fmul double %1643, %1644
  store double %1645, double* %86, align 1, !tbaa !2451
  %1646 = bitcast <2 x i32> %1634 to double
  %1647 = fmul double %1646, %1633
  %1648 = load i64, i64* %RBP, align 8
  %1649 = add i64 %1648, -232
  %1650 = add i64 %1521, 444
  store i64 %1650, i64* %PC, align 8
  %1651 = inttoptr i64 %1649 to double*
  store double %1647, double* %1651, align 8
  %1652 = load i64, i64* %PC, align 8
  %1653 = load <2 x i32>, <2 x i32>* %1402, align 1
  %1654 = load <2 x i32>, <2 x i32>* %1404, align 1
  %1655 = extractelement <2 x i32> %1653, i32 0
  store i32 %1655, i32* %187, align 1, !tbaa !2455
  %1656 = extractelement <2 x i32> %1653, i32 1
  store i32 %1656, i32* %189, align 1, !tbaa !2455
  %1657 = extractelement <2 x i32> %1654, i32 0
  store i32 %1657, i32* %190, align 1, !tbaa !2455
  %1658 = extractelement <2 x i32> %1654, i32 1
  store i32 %1658, i32* %192, align 1, !tbaa !2455
  %1659 = load <2 x i32>, <2 x i32>* %1410, align 1
  %1660 = load <2 x i32>, <2 x i32>* %1412, align 1
  %1661 = extractelement <2 x i32> %1659, i32 0
  store i32 %1661, i32* %1374, align 1, !tbaa !2455
  %1662 = extractelement <2 x i32> %1659, i32 1
  store i32 %1662, i32* %1377, align 1, !tbaa !2455
  %1663 = extractelement <2 x i32> %1660, i32 0
  store i32 %1663, i32* %1379, align 1, !tbaa !2455
  %1664 = extractelement <2 x i32> %1660, i32 1
  store i32 %1664, i32* %1382, align 1, !tbaa !2455
  %1665 = load i64, i64* %RBP, align 8
  %1666 = add i64 %1665, -232
  %1667 = add i64 %1652, 14
  store i64 %1667, i64* %PC, align 8
  %1668 = inttoptr i64 %1666 to i64*
  %1669 = load i64, i64* %1668, align 8
  store i64 %1669, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %1670 = add i64 %1665, -236
  %1671 = load i32, i32* %EAX, align 4
  %1672 = add i64 %1652, 20
  store i64 %1672, i64* %PC, align 8
  %1673 = inttoptr i64 %1670 to i32*
  store i32 %1671, i32* %1673, align 4
  %1674 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %1675 = add i64 %1674, -5170
  %1676 = add i64 %1674, 7
  %1677 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1678 = add i64 %1677, -8
  %1679 = inttoptr i64 %1678 to i64*
  store i64 %1676, i64* %1679, align 8
  store i64 %1678, i64* %RSP, align 8, !tbaa !2428
  store i64 %1675, i64* %PC, align 8, !tbaa !2428
  %1680 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1488)
  %1681 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %1682 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1682, align 1, !tbaa !2454
  %1683 = load i64, i64* bitcast (%piref_type* @piref to i64*), align 8
  store i64 %1683, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %1684 = load i64, i64* bitcast (%four_type* @four to i64*), align 8
  store i64 %1684, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %1685 = load i64, i64* %RBP, align 8
  %1686 = add i64 %1685, -80
  %1687 = add i64 %1681, 37
  store i64 %1687, i64* %PC, align 8
  %1688 = inttoptr i64 %1686 to i64*
  %1689 = load i64, i64* %1688, align 8
  %1690 = sitofp i64 %1689 to double
  store double %1690, double* %91, align 1, !tbaa !2451
  %1691 = bitcast i64 %1684 to double
  %1692 = fmul double %1690, %1691
  store double %1692, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %1693 = bitcast i64 %1683 to double
  %1694 = fdiv double %1693, %1692
  store double %1694, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %1695 = add i64 %1685, -48
  %1696 = add i64 %1681, 50
  store i64 %1696, i64* %PC, align 8
  %1697 = inttoptr i64 %1695 to double*
  store double %1694, double* %1697, align 8
  %1698 = load i64, i64* %RBP, align 8
  %1699 = add i64 %1698, -16
  %1700 = load i64, i64* %PC, align 8
  %1701 = add i64 %1700, 5
  store i64 %1701, i64* %PC, align 8
  %1702 = load i64, i64* %75, align 1
  %1703 = inttoptr i64 %1699 to i64*
  store i64 %1702, i64* %1703, align 8
  %1704 = load i64, i64* %RBP, align 8
  %1705 = add i64 %1704, -32
  %1706 = load i64, i64* %PC, align 8
  %1707 = add i64 %1706, 5
  store i64 %1707, i64* %PC, align 8
  %1708 = load i64, i64* %75, align 1
  %1709 = inttoptr i64 %1705 to i64*
  store i64 %1708, i64* %1709, align 8
  %1710 = load i64, i64* %RBP, align 8
  %1711 = add i64 %1710, -240
  %1712 = load i32, i32* %EAX, align 4
  %1713 = load i64, i64* %PC, align 8
  %1714 = add i64 %1713, 6
  store i64 %1714, i64* %PC, align 8
  %1715 = inttoptr i64 %1711 to i32*
  store i32 %1712, i32* %1715, align 4
  %1716 = load i64, i64* %PC, align 8
  %1717 = add i64 %1716, 3349
  %1718 = add i64 %1716, 5
  %1719 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1720 = add i64 %1719, -8
  %1721 = inttoptr i64 %1720 to i64*
  store i64 %1718, i64* %1721, align 8
  store i64 %1720, i64* %RSP, align 8, !tbaa !2428
  store i64 %1717, i64* %PC, align 8, !tbaa !2428
  %1722 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %1717, %struct.Memory* %1680)
  %1723 = load i64, i64* %RBP, align 8
  %1724 = add i64 %1723, -72
  %1725 = load i64, i64* %PC, align 8
  %1726 = add i64 %1725, 8
  store i64 %1726, i64* %PC, align 8
  %1727 = inttoptr i64 %1724 to i64*
  store i64 1, i64* %1727, align 8
  %1728 = load i64, i64* %RBP, align 8
  %1729 = add i64 %1728, -244
  %1730 = load i32, i32* %EAX, align 4
  %1731 = load i64, i64* %PC, align 8
  %1732 = add i64 %1731, 6
  store i64 %1732, i64* %PC, align 8
  %1733 = inttoptr i64 %1729 to i32*
  store i32 %1730, i32* %1733, align 4
  %.pre215 = load i64, i64* %PC, align 8
  br label %block_4018de

block_400b45:                                     ; preds = %block_400aee
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %1734 = add i64 %3565, 6811
  %1735 = add i64 %3565, 15
  %1736 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1737 = add i64 %1736, -8
  %1738 = inttoptr i64 %1737 to i64*
  store i64 %1735, i64* %1738, align 8
  store i64 %1737, i64* %RSP, align 8, !tbaa !2428
  store i64 %1734, i64* %PC, align 8, !tbaa !2428
  %1739 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %1734, %struct.Memory* %1471)
  %1740 = load i64, i64* %PC, align 8
  %1741 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1741, align 1, !tbaa !2454
  %1742 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %1743 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %1744 = fmul double %1742, %1743
  store double %1744, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  store double %1744, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to double*), align 8
  %1745 = add i64 %1740, 39
  store i64 %1745, i64* %PC, align 8
  %1746 = load double, double* %74, align 1
  %1747 = fcmp uno double %1746, %1744
  br i1 %1747, label %1748, label %1758

; <label>:1748:                                   ; preds = %block_400b45
  %1749 = fadd double %1744, %1746
  %1750 = bitcast double %1749 to i64
  %1751 = and i64 %1750, 9221120237041090560
  %1752 = icmp eq i64 %1751, 9218868437227405312
  %1753 = and i64 %1750, 2251799813685247
  %1754 = icmp ne i64 %1753, 0
  %1755 = and i1 %1752, %1754
  br i1 %1755, label %1756, label %1764

; <label>:1756:                                   ; preds = %1748
  %1757 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1745, %struct.Memory* %1739) #13
  %.pre210 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

; <label>:1758:                                   ; preds = %block_400b45
  %1759 = fcmp ogt double %1746, %1744
  br i1 %1759, label %1764, label %1760

; <label>:1760:                                   ; preds = %1758
  %1761 = fcmp olt double %1746, %1744
  br i1 %1761, label %1764, label %1762

; <label>:1762:                                   ; preds = %1760
  %1763 = fcmp oeq double %1746, %1744
  br i1 %1763, label %1764, label %1768

; <label>:1764:                                   ; preds = %1762, %1760, %1758, %1748
  %1765 = phi i8 [ 0, %1758 ], [ 0, %1760 ], [ 1, %1762 ], [ 1, %1748 ]
  %1766 = phi i8 [ 0, %1758 ], [ 0, %1760 ], [ 0, %1762 ], [ 1, %1748 ]
  %1767 = phi i8 [ 0, %1758 ], [ 1, %1760 ], [ 0, %1762 ], [ 1, %1748 ]
  store i8 %1765, i8* %38, align 1, !tbaa !2453
  store i8 %1766, i8* %30, align 1, !tbaa !2453
  store i8 %1767, i8* %23, align 1, !tbaa !2453
  br label %1768

; <label>:1768:                                   ; preds = %1764, %1762
  store i8 0, i8* %47, align 1, !tbaa !2453
  store i8 0, i8* %41, align 1, !tbaa !2453
  store i8 0, i8* %35, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1: ; preds = %1768, %1756
  %1769 = phi i64 [ %.pre210, %1756 ], [ %1745, %1768 ]
  %1770 = phi %struct.Memory* [ %1757, %1756 ], [ %1739, %1768 ]
  %1771 = load i64, i64* %RBP, align 8
  %1772 = add i64 %1771, -148
  %1773 = load i32, i32* %EAX, align 4
  %1774 = add i64 %1769, 6
  store i64 %1774, i64* %PC, align 8
  %1775 = inttoptr i64 %1772 to i32*
  store i32 %1773, i32* %1775, align 4
  %1776 = load i64, i64* %PC, align 8
  %1777 = add i64 %1776, 18
  %1778 = add i64 %1776, 6
  %1779 = load i8, i8* %23, align 1, !tbaa !2432
  %1780 = load i8, i8* %38, align 1, !tbaa !2447
  %1781 = or i8 %1780, %1779
  %1782 = icmp ne i8 %1781, 0
  %1783 = select i1 %1782, i64 %1777, i64 %1778
  store i64 %1783, i64* %PC, align 8, !tbaa !2428
  br i1 %1782, label %block_400b93, label %block_400b87

block_401259:                                     ; preds = %block_401195
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %1784 = add i64 %3062, 4999
  %1785 = add i64 %3062, 15
  %1786 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1787 = add i64 %1786, -8
  %1788 = inttoptr i64 %1787 to i64*
  store i64 %1785, i64* %1788, align 8
  store i64 %1787, i64* %RSP, align 8, !tbaa !2428
  store i64 %1784, i64* %PC, align 8, !tbaa !2428
  %1789 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %1784, %struct.Memory* %2325)
  %1790 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 498), i64* %RDI, align 8, !tbaa !2428
  %1791 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to i64*), align 8
  store i64 %1791, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %1792 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 128) to i64*), align 16
  store i64 %1792, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %1793 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %1794 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %1795 = fmul double %1793, %1794
  %1796 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %1797 = fsub double %1795, %1796
  store double %1797, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %1798 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %1799 = load double, double* bitcast (%three_type* @three to double*), align 8
  %1800 = fdiv double %1798, %1799
  store double %1800, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %1801 = load i64, i64* %RBP, align 8
  %1802 = add i64 %1801, -24
  %1803 = add i64 %1790, 85
  store i64 %1803, i64* %PC, align 8
  %1804 = inttoptr i64 %1802 to double*
  store double %1800, double* %1804, align 8
  %1805 = load i64, i64* %RBP, align 8
  %1806 = add i64 %1805, -24
  %1807 = load i64, i64* %PC, align 8
  %1808 = add i64 %1807, 5
  store i64 %1808, i64* %PC, align 8
  %1809 = inttoptr i64 %1806 to i64*
  %1810 = load i64, i64* %1809, align 8
  store i64 %1810, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %1811 = add i64 %1807, 10
  store i64 %1811, i64* %PC, align 8
  %1812 = bitcast i64 %1810 to double
  %1813 = inttoptr i64 %1806 to double*
  %1814 = load double, double* %1813, align 8
  %1815 = fmul double %1812, %1814
  store double %1815, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %1816 = add i64 %1805, -40
  %1817 = add i64 %1807, 15
  store i64 %1817, i64* %PC, align 8
  %1818 = inttoptr i64 %1816 to double*
  store double %1815, double* %1818, align 8
  %1819 = load i64, i64* %RBP, align 8
  %1820 = add i64 %1819, -40
  %1821 = load i64, i64* %PC, align 8
  %1822 = add i64 %1821, 5
  store i64 %1822, i64* %PC, align 8
  %1823 = inttoptr i64 %1820 to i64*
  %1824 = load i64, i64* %1823, align 8
  store i64 %1824, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %1825 = add i64 %1821, 10
  store i64 %1825, i64* %PC, align 8
  %1826 = load i64, i64* %1823, align 8
  store i64 %1826, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %1827 = add i64 %1821, 15
  store i64 %1827, i64* %PC, align 8
  %1828 = load i64, i64* %1823, align 8
  store i64 %1828, i64* %97, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %1829 = add i64 %1821, 20
  store i64 %1829, i64* %PC, align 8
  %1830 = load i64, i64* %1823, align 8
  store i64 %1830, i64* %102, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %1831 = add i64 %1821, 25
  store i64 %1831, i64* %PC, align 8
  %1832 = load i64, i64* %1823, align 8
  store i64 %1832, i64* %107, align 1, !tbaa !2451
  store double 0.000000e+00, double* %109, align 1, !tbaa !2451
  %1833 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  store i64 %1833, i64* %209, align 1, !tbaa !2451
  store double 0.000000e+00, double* %211, align 1, !tbaa !2451
  %1834 = add i64 %1821, 39
  store i64 %1834, i64* %PC, align 8
  %1835 = bitcast i64 %1833 to double
  %1836 = inttoptr i64 %1820 to double*
  %1837 = load double, double* %1836, align 8
  %1838 = fmul double %1835, %1837
  %1839 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %1840 = fadd double %1838, %1839
  store double %1840, double* %121, align 1, !tbaa !2451
  store i64 0, i64* %210, align 1, !tbaa !2451
  %1841 = bitcast i64 %1832 to double
  %1842 = fmul double %1840, %1841
  %1843 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %1844 = fadd double %1842, %1843
  store double %1844, double* %106, align 1, !tbaa !2451
  store i64 0, i64* %108, align 1, !tbaa !2451
  %1845 = bitcast i64 %1830 to double
  %1846 = fmul double %1844, %1845
  %1847 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %1848 = fadd double %1846, %1847
  store double %1848, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %1849 = bitcast i64 %1828 to double
  %1850 = fmul double %1848, %1849
  %1851 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %1852 = fadd double %1850, %1851
  store double %1852, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %1853 = bitcast i64 %1826 to double
  %1854 = fmul double %1852, %1853
  %1855 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %1856 = fadd double %1854, %1855
  store double %1856, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %1857 = bitcast i64 %1824 to double
  %1858 = fmul double %1856, %1857
  %1859 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1860 = fadd double %1858, %1859
  store double %1860, double* bitcast (%sa_type* @sa to double*), align 8
  %1861 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %1862 = load double, double* %80, align 1
  %1863 = fdiv double %1861, %1862
  store double %1863, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  store double %1863, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 104) to double*), align 8
  %1864 = load i64, i64* %RBP, align 8
  %1865 = add i64 %1864, -48
  %1866 = add i64 %1821, 149
  store i64 %1866, i64* %PC, align 8
  %1867 = inttoptr i64 %1865 to i64*
  %1868 = load i64, i64* %1867, align 8
  store i64 %1868, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %1869 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %1870 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1871 = fadd double %1869, %1870
  store double %1871, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %1872 = load i64, i64* bitcast (%two_type* @two to i64*), align 8
  store i64 %1872, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %1873 = add i64 %1864, -16
  %1874 = add i64 %1821, 181
  store i64 %1874, i64* %PC, align 8
  %.cast164 = bitcast i64 %1872 to double
  %1875 = inttoptr i64 %1873 to double*
  %1876 = load double, double* %1875, align 8
  %1877 = fmul double %.cast164, %1876
  store double %1877, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %1878 = fadd double %1871, %1877
  store double %1878, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %1879 = bitcast i64 %1868 to double
  %1880 = fmul double %1879, %1878
  %1881 = fdiv double %1880, %.cast164
  store double %1881, double* bitcast (%sa_type* @sa to double*), align 8
  %1882 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %1883 = load double, double* bitcast (%three_type* @three to double*), align 8
  %1884 = fdiv double %1882, %1883
  store double %1884, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %1885 = add i64 %1864, -24
  %1886 = add i64 %1821, 230
  store i64 %1886, i64* %PC, align 8
  %1887 = inttoptr i64 %1885 to double*
  store double %1884, double* %1887, align 8
  %1888 = load i64, i64* %RBP, align 8
  %1889 = add i64 %1888, -24
  %1890 = load i64, i64* %PC, align 8
  %1891 = add i64 %1890, 5
  store i64 %1891, i64* %PC, align 8
  %1892 = inttoptr i64 %1889 to i64*
  %1893 = load i64, i64* %1892, align 8
  store i64 %1893, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %1894 = add i64 %1890, 10
  store i64 %1894, i64* %PC, align 8
  %1895 = bitcast i64 %1893 to double
  %1896 = inttoptr i64 %1889 to double*
  %1897 = load double, double* %1896, align 8
  %1898 = fmul double %1895, %1897
  store double %1898, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %1899 = add i64 %1888, -40
  %1900 = add i64 %1890, 15
  store i64 %1900, i64* %PC, align 8
  %1901 = inttoptr i64 %1899 to double*
  store double %1898, double* %1901, align 8
  %1902 = load i64, i64* %RBP, align 8
  %1903 = add i64 %1902, -24
  %1904 = load i64, i64* %PC, align 8
  %1905 = add i64 %1904, 5
  store i64 %1905, i64* %PC, align 8
  %1906 = inttoptr i64 %1903 to i64*
  %1907 = load i64, i64* %1906, align 8
  store i64 %1907, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %1908 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %1908, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %1909 = add i64 %1902, -40
  %1910 = add i64 %1904, 19
  store i64 %1910, i64* %PC, align 8
  %.cast165 = bitcast i64 %1908 to double
  %1911 = inttoptr i64 %1909 to double*
  %1912 = load double, double* %1911, align 8
  %1913 = fmul double %.cast165, %1912
  %1914 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %1915 = fadd double %1913, %1914
  store double %1915, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %1916 = add i64 %1904, 33
  store i64 %1916, i64* %PC, align 8
  %1917 = load double, double* %1911, align 8
  %1918 = fmul double %1915, %1917
  %1919 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %1920 = fadd double %1918, %1919
  store double %1920, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %1921 = add i64 %1904, 47
  store i64 %1921, i64* %PC, align 8
  %1922 = load double, double* %1911, align 8
  %1923 = fmul double %1920, %1922
  %1924 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %1925 = fadd double %1923, %1924
  store double %1925, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %1926 = add i64 %1904, 61
  store i64 %1926, i64* %PC, align 8
  %1927 = load double, double* %1911, align 8
  %1928 = fmul double %1925, %1927
  %1929 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %1930 = fadd double %1928, %1929
  store double %1930, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %1931 = add i64 %1904, 75
  store i64 %1931, i64* %PC, align 8
  %1932 = load double, double* %1911, align 8
  %1933 = fmul double %1930, %1932
  %1934 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %1935 = fadd double %1933, %1934
  store double %1935, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %1936 = add i64 %1904, 89
  store i64 %1936, i64* %PC, align 8
  %1937 = load double, double* %1911, align 8
  %1938 = fmul double %1935, %1937
  %1939 = load double, double* bitcast (%A0_type* @A0 to double*), align 8
  %1940 = fadd double %1938, %1939
  %1941 = bitcast i64 %1907 to double
  %1942 = fmul double %1940, %1941
  store double %1942, double* bitcast (%sb_type* @sb to double*), align 8
  %1943 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %1944 = fsub double %1943, %1942
  store double %1944, double* bitcast (%sc_type* @sc to double*), align 8
  %1945 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1946 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 104) to double*), align 8
  %1947 = fdiv double %1945, %1946
  store double %1947, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 112) to double*), align 16
  %1948 = load <2 x i32>, <2 x i32>* %1369, align 1
  %1949 = load <2 x i32>, <2 x i32>* %1371, align 1
  %1950 = extractelement <2 x i32> %1948, i32 0
  store i32 %1950, i32* %1374, align 1, !tbaa !2455
  %1951 = extractelement <2 x i32> %1948, i32 1
  store i32 %1951, i32* %1377, align 1, !tbaa !2455
  %1952 = extractelement <2 x i32> %1949, i32 0
  store i32 %1952, i32* %1379, align 1, !tbaa !2455
  %1953 = extractelement <2 x i32> %1949, i32 1
  store i32 %1953, i32* %1382, align 1, !tbaa !2455
  %1954 = load double, double* %80, align 1
  %1955 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %1956 = fmul double %1954, %1955
  store double %1956, double* %80, align 1, !tbaa !2451
  store i32 %1950, i32* %1386, align 1, !tbaa !2455
  store i32 %1951, i32* %1388, align 1, !tbaa !2455
  store i32 %1952, i32* %1389, align 1, !tbaa !2455
  store i32 %1953, i32* %1391, align 1, !tbaa !2455
  %1957 = load double, double* %86, align 1
  %1958 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %1959 = fmul double %1957, %1958
  store double %1959, double* %86, align 1, !tbaa !2451
  %1960 = bitcast <2 x i32> %1948 to double
  %1961 = fmul double %1960, %1947
  %1962 = load i64, i64* %RBP, align 8
  %1963 = add i64 %1962, -208
  %1964 = add i64 %1904, 206
  store i64 %1964, i64* %PC, align 8
  %1965 = inttoptr i64 %1963 to double*
  store double %1961, double* %1965, align 8
  %1966 = load i64, i64* %PC, align 8
  %1967 = load <2 x i32>, <2 x i32>* %1402, align 1
  %1968 = load <2 x i32>, <2 x i32>* %1404, align 1
  %1969 = extractelement <2 x i32> %1967, i32 0
  store i32 %1969, i32* %187, align 1, !tbaa !2455
  %1970 = extractelement <2 x i32> %1967, i32 1
  store i32 %1970, i32* %189, align 1, !tbaa !2455
  %1971 = extractelement <2 x i32> %1968, i32 0
  store i32 %1971, i32* %190, align 1, !tbaa !2455
  %1972 = extractelement <2 x i32> %1968, i32 1
  store i32 %1972, i32* %192, align 1, !tbaa !2455
  %1973 = load <2 x i32>, <2 x i32>* %1410, align 1
  %1974 = load <2 x i32>, <2 x i32>* %1412, align 1
  %1975 = extractelement <2 x i32> %1973, i32 0
  store i32 %1975, i32* %1374, align 1, !tbaa !2455
  %1976 = extractelement <2 x i32> %1973, i32 1
  store i32 %1976, i32* %1377, align 1, !tbaa !2455
  %1977 = extractelement <2 x i32> %1974, i32 0
  store i32 %1977, i32* %1379, align 1, !tbaa !2455
  %1978 = extractelement <2 x i32> %1974, i32 1
  store i32 %1978, i32* %1382, align 1, !tbaa !2455
  %1979 = load i64, i64* %RBP, align 8
  %1980 = add i64 %1979, -208
  %1981 = add i64 %1966, 14
  store i64 %1981, i64* %PC, align 8
  %1982 = inttoptr i64 %1980 to i64*
  %1983 = load i64, i64* %1982, align 8
  store i64 %1983, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %1984 = add i64 %1979, -212
  %1985 = load i32, i32* %EAX, align 4
  %1986 = add i64 %1966, 20
  store i64 %1986, i64* %PC, align 8
  %1987 = inttoptr i64 %1984 to i32*
  store i32 %1985, i32* %1987, align 4
  %1988 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %1989 = add i64 %1988, -4179
  %1990 = add i64 %1988, 7
  %1991 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1992 = add i64 %1991, -8
  %1993 = inttoptr i64 %1992 to i64*
  store i64 %1990, i64* %1993, align 8
  store i64 %1992, i64* %RSP, align 8, !tbaa !2428
  store i64 %1989, i64* %PC, align 8, !tbaa !2428
  %1994 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1789)
  %1995 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %1996 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1996, align 1, !tbaa !2454
  %1997 = load i64, i64* bitcast (%piref_type* @piref to i64*), align 8
  store i64 %1997, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %1998 = load i64, i64* bitcast (%three_type* @three to i64*), align 8
  store i64 %1998, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %1999 = load i64, i64* %RBP, align 8
  %2000 = add i64 %1999, -80
  %2001 = add i64 %1995, 37
  store i64 %2001, i64* %PC, align 8
  %2002 = inttoptr i64 %2000 to i64*
  %2003 = load i64, i64* %2002, align 8
  %2004 = sitofp i64 %2003 to double
  store double %2004, double* %91, align 1, !tbaa !2451
  %2005 = bitcast i64 %1998 to double
  %2006 = fmul double %2004, %2005
  store double %2006, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %2007 = bitcast i64 %1997 to double
  %2008 = fdiv double %2007, %2006
  store double %2008, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %2009 = add i64 %1999, -48
  %2010 = add i64 %1995, 50
  store i64 %2010, i64* %PC, align 8
  %2011 = inttoptr i64 %2009 to double*
  store double %2008, double* %2011, align 8
  %2012 = load i64, i64* %RBP, align 8
  %2013 = add i64 %2012, -16
  %2014 = load i64, i64* %PC, align 8
  %2015 = add i64 %2014, 5
  store i64 %2015, i64* %PC, align 8
  %2016 = load i64, i64* %75, align 1
  %2017 = inttoptr i64 %2013 to i64*
  store i64 %2016, i64* %2017, align 8
  %2018 = load i64, i64* %RBP, align 8
  %2019 = add i64 %2018, -32
  %2020 = load i64, i64* %PC, align 8
  %2021 = add i64 %2020, 5
  store i64 %2021, i64* %PC, align 8
  %2022 = load i64, i64* %75, align 1
  %2023 = inttoptr i64 %2019 to i64*
  store i64 %2022, i64* %2023, align 8
  %2024 = load i64, i64* %RBP, align 8
  %2025 = add i64 %2024, -216
  %2026 = load i32, i32* %EAX, align 4
  %2027 = load i64, i64* %PC, align 8
  %2028 = add i64 %2027, 6
  store i64 %2028, i64* %PC, align 8
  %2029 = inttoptr i64 %2025 to i32*
  store i32 %2026, i32* %2029, align 4
  %2030 = load i64, i64* %PC, align 8
  %2031 = add i64 %2030, 4340
  %2032 = add i64 %2030, 5
  %2033 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2034 = add i64 %2033, -8
  %2035 = inttoptr i64 %2034 to i64*
  store i64 %2032, i64* %2035, align 8
  store i64 %2034, i64* %RSP, align 8, !tbaa !2428
  store i64 %2031, i64* %PC, align 8, !tbaa !2428
  %2036 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %2031, %struct.Memory* %1994)
  %2037 = load i64, i64* %RBP, align 8
  %2038 = add i64 %2037, -72
  %2039 = load i64, i64* %PC, align 8
  %2040 = add i64 %2039, 8
  store i64 %2040, i64* %PC, align 8
  %2041 = inttoptr i64 %2038 to i64*
  store i64 1, i64* %2041, align 8
  %2042 = load i64, i64* %RBP, align 8
  %2043 = add i64 %2042, -220
  %2044 = load i32, i32* %EAX, align 4
  %2045 = load i64, i64* %PC, align 8
  %2046 = add i64 %2045, 6
  store i64 %2046, i64* %PC, align 8
  %2047 = inttoptr i64 %2043 to i32*
  store i32 %2044, i32* %2047, align 4
  %.pre214 = load i64, i64* %PC, align 8
  br label %block_4014ff

block_4006c2:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store <4 x i32> zeroinitializer, <4 x i32>* %212, align 1, !tbaa !2454
  %2048 = load i64, i64* %RBP, align 8
  %2049 = add i64 %2048, -88
  %2050 = add i64 %4047, 17
  store i64 %2050, i64* %PC, align 8
  %2051 = inttoptr i64 %2049 to i64*
  %2052 = load i64, i64* %2051, align 8
  %2053 = shl i64 %2052, 1
  %2054 = icmp slt i64 %2052, 0
  %2055 = icmp slt i64 %2053, 0
  %2056 = xor i1 %2054, %2055
  store i64 %2053, i64* %RAX, align 8, !tbaa !2428
  %.lobit = lshr i64 %2052, 63
  %2057 = trunc i64 %.lobit to i8
  store i8 %2057, i8* %23, align 1, !tbaa !2453
  %2058 = trunc i64 %2053 to i32
  %2059 = and i32 %2058, 254
  %2060 = tail call i32 @llvm.ctpop.i32(i32 %2059) #12
  %2061 = trunc i32 %2060 to i8
  %2062 = and i8 %2061, 1
  %2063 = xor i8 %2062, 1
  store i8 %2063, i8* %30, align 1, !tbaa !2453
  store i8 0, i8* %35, align 1, !tbaa !2453
  %2064 = icmp eq i64 %2053, 0
  %2065 = zext i1 %2064 to i8
  store i8 %2065, i8* %38, align 1, !tbaa !2453
  %2066 = lshr i64 %2052, 62
  %2067 = trunc i64 %2066 to i8
  %2068 = and i8 %2067, 1
  store i8 %2068, i8* %41, align 1, !tbaa !2453
  %2069 = zext i1 %2056 to i8
  store i8 %2069, i8* %47, align 1, !tbaa !2453
  %2070 = add i64 %4047, 25
  store i64 %2070, i64* %PC, align 8
  store i64 %2053, i64* %2051, align 8
  %2071 = load i64, i64* %PC, align 8
  %2072 = load i64, i64* bitcast (%one_type* @one to i64*), align 8
  store i64 %2072, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %2073 = load i64, i64* %RBP, align 8
  %2074 = add i64 %2073, -88
  %2075 = add i64 %2071, 15
  store i64 %2075, i64* %PC, align 8
  %2076 = inttoptr i64 %2074 to i64*
  %2077 = load i64, i64* %2076, align 8
  %2078 = sitofp i64 %2077 to double
  store double %2078, double* %86, align 1, !tbaa !2451
  %2079 = bitcast i64 %2072 to double
  %2080 = fdiv double %2079, %2078
  store double %2080, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %2081 = add i64 %2073, -48
  %2082 = add i64 %2071, 24
  store i64 %2082, i64* %PC, align 8
  %2083 = inttoptr i64 %2081 to double*
  store double %2080, double* %2083, align 8
  %2084 = load i64, i64* %RBP, align 8
  %2085 = add i64 %2084, -16
  %2086 = load i64, i64* %PC, align 8
  %2087 = add i64 %2086, 5
  store i64 %2087, i64* %PC, align 8
  %2088 = load i64, i64* %75, align 1
  %2089 = inttoptr i64 %2085 to i64*
  store i64 %2088, i64* %2089, align 8
  %2090 = load i64, i64* %RBP, align 8
  %2091 = add i64 %2090, -32
  %2092 = load i64, i64* %PC, align 8
  %2093 = add i64 %2092, 5
  store i64 %2093, i64* %PC, align 8
  %2094 = load i64, i64* %75, align 1
  %2095 = inttoptr i64 %2091 to i64*
  store i64 %2094, i64* %2095, align 8
  %2096 = load i64, i64* %PC, align 8
  %2097 = load i64, i64* bitcast (%one_type* @one to i64*), align 8
  store i64 %2097, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %2098 = load i64, i64* %RBP, align 8
  %2099 = add i64 %2098, -40
  %2100 = add i64 %2096, 14
  store i64 %2100, i64* %PC, align 8
  %2101 = inttoptr i64 %2099 to i64*
  store i64 %2097, i64* %2101, align 8
  %2102 = load i64, i64* %PC, align 8
  %2103 = add i64 %2102, 7893
  %2104 = add i64 %2102, 5
  %2105 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2106 = add i64 %2105, -8
  %2107 = inttoptr i64 %2106 to i64*
  store i64 %2104, i64* %2107, align 8
  store i64 %2106, i64* %RSP, align 8, !tbaa !2428
  store i64 %2103, i64* %PC, align 8, !tbaa !2428
  %2108 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %2103, %struct.Memory* %4040)
  %2109 = load i64, i64* %RBP, align 8
  %2110 = add i64 %2109, -72
  %2111 = load i64, i64* %PC, align 8
  %2112 = add i64 %2111, 8
  store i64 %2112, i64* %PC, align 8
  %2113 = inttoptr i64 %2110 to i64*
  store i64 1, i64* %2113, align 8
  %2114 = load i64, i64* %RBP, align 8
  %2115 = add i64 %2114, -116
  %2116 = load i32, i32* %EAX, align 4
  %2117 = load i64, i64* %PC, align 8
  %2118 = add i64 %2117, 3
  store i64 %2118, i64* %PC, align 8
  %2119 = inttoptr i64 %2115 to i32*
  store i32 %2116, i32* %2119, align 4
  %.pre205 = load i64, i64* %PC, align 8
  br label %block_40071b

block_400f3f:                                     ; preds = %block_400e74
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %2120 = add i64 %1244, 5793
  %2121 = add i64 %1244, 15
  %2122 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2123 = add i64 %2122, -8
  %2124 = inttoptr i64 %2123 to i64*
  store i64 %2121, i64* %2124, align 8
  store i64 %2123, i64* %RSP, align 8, !tbaa !2428
  store i64 %2120, i64* %PC, align 8, !tbaa !2428
  %2125 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %2120, %struct.Memory* %3516)
  %2126 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 462), i64* %RDI, align 8, !tbaa !2428
  %2127 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to i64*), align 8
  store i64 %2127, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %2128 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 112) to i64*), align 16
  store i64 %2128, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %2129 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 120) to i64*), align 8
  store i64 %2129, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2130 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %2131 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %2132 = fmul double %2130, %2131
  %2133 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %2134 = fsub double %2132, %2133
  store double %2134, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %2135 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %2136 = load double, double* bitcast (%three_type* @three to double*), align 8
  %2137 = fdiv double %2135, %2136
  store double %2137, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %2138 = load i64, i64* %RBP, align 8
  %2139 = add i64 %2138, -24
  %2140 = add i64 %2126, 93
  store i64 %2140, i64* %PC, align 8
  %2141 = inttoptr i64 %2139 to double*
  store double %2137, double* %2141, align 8
  %2142 = load i64, i64* %RBP, align 8
  %2143 = add i64 %2142, -24
  %2144 = load i64, i64* %PC, align 8
  %2145 = add i64 %2144, 5
  store i64 %2145, i64* %PC, align 8
  %2146 = inttoptr i64 %2143 to i64*
  %2147 = load i64, i64* %2146, align 8
  store i64 %2147, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %2148 = add i64 %2144, 10
  store i64 %2148, i64* %PC, align 8
  %2149 = bitcast i64 %2147 to double
  %2150 = inttoptr i64 %2143 to double*
  %2151 = load double, double* %2150, align 8
  %2152 = fmul double %2149, %2151
  store double %2152, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %2153 = add i64 %2142, -40
  %2154 = add i64 %2144, 15
  store i64 %2154, i64* %PC, align 8
  %2155 = inttoptr i64 %2153 to double*
  store double %2152, double* %2155, align 8
  %2156 = load i64, i64* %RBP, align 8
  %2157 = add i64 %2156, -24
  %2158 = load i64, i64* %PC, align 8
  %2159 = add i64 %2158, 5
  store i64 %2159, i64* %PC, align 8
  %2160 = inttoptr i64 %2157 to i64*
  %2161 = load i64, i64* %2160, align 8
  store i64 %2161, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %2162 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %2162, i64* %97, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %2163 = add i64 %2156, -40
  %2164 = add i64 %2158, 19
  store i64 %2164, i64* %PC, align 8
  %.cast161 = bitcast i64 %2162 to double
  %2165 = inttoptr i64 %2163 to double*
  %2166 = load double, double* %2165, align 8
  %2167 = fmul double %.cast161, %2166
  %2168 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %2169 = fsub double %2167, %2168
  store double %2169, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2170 = add i64 %2158, 33
  store i64 %2170, i64* %PC, align 8
  %2171 = load double, double* %2165, align 8
  %2172 = fmul double %2169, %2171
  %2173 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %2174 = fadd double %2172, %2173
  store double %2174, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2175 = add i64 %2158, 47
  store i64 %2175, i64* %PC, align 8
  %2176 = load double, double* %2165, align 8
  %2177 = fmul double %2174, %2176
  %2178 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %2179 = fsub double %2177, %2178
  store double %2179, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2180 = add i64 %2158, 61
  store i64 %2180, i64* %PC, align 8
  %2181 = load double, double* %2165, align 8
  %2182 = fmul double %2179, %2181
  %2183 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %2184 = fadd double %2182, %2183
  store double %2184, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2185 = add i64 %2158, 75
  store i64 %2185, i64* %PC, align 8
  %2186 = load double, double* %2165, align 8
  %2187 = fmul double %2184, %2186
  %2188 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %2189 = fadd double %2187, %2188
  store double %2189, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2190 = add i64 %2158, 89
  store i64 %2190, i64* %PC, align 8
  %2191 = load double, double* %2165, align 8
  %2192 = fmul double %2189, %2191
  %2193 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2194 = fadd double %2192, %2193
  store double %2194, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2195 = bitcast i64 %2161 to double
  %2196 = fmul double %2194, %2195
  store double %2196, double* bitcast (%sa_type* @sa to double*), align 8
  %2197 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %2198 = load double, double* %86, align 1
  %2199 = fdiv double %2197, %2198
  store double %2199, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  store double %2199, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 80) to double*), align 16
  %2200 = load i64, i64* %RBP, align 8
  %2201 = add i64 %2200, -48
  %2202 = add i64 %2158, 138
  store i64 %2202, i64* %PC, align 8
  %2203 = inttoptr i64 %2201 to i64*
  %2204 = load i64, i64* %2203, align 8
  store i64 %2204, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2205 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %2205, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %2206 = load i64, i64* bitcast (%two_type* @two to i64*), align 8
  store i64 %2206, i64* %97, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %2207 = add i64 %2200, -16
  %2208 = add i64 %2158, 161
  store i64 %2208, i64* %PC, align 8
  %.cast162 = bitcast i64 %2206 to double
  %2209 = inttoptr i64 %2207 to double*
  %2210 = load double, double* %2209, align 8
  %2211 = fmul double %.cast162, %2210
  store double %2211, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2212 = bitcast i64 %2205 to double
  %2213 = fadd double %2212, %2211
  store double %2213, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %2214 = bitcast i64 %2204 to double
  %2215 = fmul double %2214, %2213
  %2216 = fdiv double %2215, %.cast162
  store double %2216, double* bitcast (%sa_type* @sa to double*), align 8
  %2217 = load i64, i64* %81, align 1
  store i64 %2217, i64* bitcast (%sb_type* @sb to i64*), align 8
  %2218 = bitcast i64 %2217 to double
  %2219 = fsub double %2216, %2218
  store double %2219, double* bitcast (%sc_type* @sc to double*), align 8
  %2220 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2221 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 80) to double*), align 16
  %2222 = fdiv double %2220, %2221
  store double %2222, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 88) to double*), align 8
  %2223 = load <2 x i32>, <2 x i32>* %1369, align 1
  %2224 = load <2 x i32>, <2 x i32>* %1371, align 1
  %2225 = extractelement <2 x i32> %2223, i32 0
  store i32 %2225, i32* %1374, align 1, !tbaa !2455
  %2226 = extractelement <2 x i32> %2223, i32 1
  store i32 %2226, i32* %1377, align 1, !tbaa !2455
  %2227 = extractelement <2 x i32> %2224, i32 0
  store i32 %2227, i32* %1379, align 1, !tbaa !2455
  %2228 = extractelement <2 x i32> %2224, i32 1
  store i32 %2228, i32* %1382, align 1, !tbaa !2455
  %2229 = load double, double* %80, align 1
  %2230 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %2231 = fmul double %2229, %2230
  store double %2231, double* %80, align 1, !tbaa !2451
  store i32 %2225, i32* %1386, align 1, !tbaa !2455
  store i32 %2226, i32* %1388, align 1, !tbaa !2455
  store i32 %2227, i32* %1389, align 1, !tbaa !2455
  store i32 %2228, i32* %1391, align 1, !tbaa !2455
  %2232 = load double, double* %86, align 1
  %2233 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %2234 = fmul double %2232, %2233
  store double %2234, double* %86, align 1, !tbaa !2451
  %2235 = bitcast <2 x i32> %2223 to double
  %2236 = fmul double %2235, %2222
  %2237 = load i64, i64* %RBP, align 8
  %2238 = add i64 %2237, -184
  %2239 = add i64 %2158, 291
  store i64 %2239, i64* %PC, align 8
  %2240 = inttoptr i64 %2238 to double*
  store double %2236, double* %2240, align 8
  %2241 = load i64, i64* %PC, align 8
  %2242 = load <2 x i32>, <2 x i32>* %1402, align 1
  %2243 = load <2 x i32>, <2 x i32>* %1404, align 1
  %2244 = extractelement <2 x i32> %2242, i32 0
  store i32 %2244, i32* %187, align 1, !tbaa !2455
  %2245 = extractelement <2 x i32> %2242, i32 1
  store i32 %2245, i32* %189, align 1, !tbaa !2455
  %2246 = extractelement <2 x i32> %2243, i32 0
  store i32 %2246, i32* %190, align 1, !tbaa !2455
  %2247 = extractelement <2 x i32> %2243, i32 1
  store i32 %2247, i32* %192, align 1, !tbaa !2455
  %2248 = load <2 x i32>, <2 x i32>* %1410, align 1
  %2249 = load <2 x i32>, <2 x i32>* %1412, align 1
  %2250 = extractelement <2 x i32> %2248, i32 0
  store i32 %2250, i32* %1374, align 1, !tbaa !2455
  %2251 = extractelement <2 x i32> %2248, i32 1
  store i32 %2251, i32* %1377, align 1, !tbaa !2455
  %2252 = extractelement <2 x i32> %2249, i32 0
  store i32 %2252, i32* %1379, align 1, !tbaa !2455
  %2253 = extractelement <2 x i32> %2249, i32 1
  store i32 %2253, i32* %1382, align 1, !tbaa !2455
  %2254 = load i64, i64* %RBP, align 8
  %2255 = add i64 %2254, -184
  %2256 = add i64 %2241, 14
  store i64 %2256, i64* %PC, align 8
  %2257 = inttoptr i64 %2255 to i64*
  %2258 = load i64, i64* %2257, align 8
  store i64 %2258, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2259 = add i64 %2254, -188
  %2260 = load i32, i32* %EAX, align 4
  %2261 = add i64 %2241, 20
  store i64 %2261, i64* %PC, align 8
  %2262 = inttoptr i64 %2259 to i32*
  store i32 %2260, i32* %2262, align 4
  %2263 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %2264 = add i64 %2263, -3233
  %2265 = add i64 %2263, 7
  %2266 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2267 = add i64 %2266, -8
  %2268 = inttoptr i64 %2267 to i64*
  store i64 %2265, i64* %2268, align 8
  store i64 %2267, i64* %RSP, align 8, !tbaa !2428
  store i64 %2264, i64* %PC, align 8, !tbaa !2428
  %2269 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %2125)
  %2270 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %2271 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %2271, align 1, !tbaa !2454
  store i64 -9223372036854775808, i64* %RCX, align 8, !tbaa !2428
  %2272 = load i64, i64* bitcast (%A3_type* @A3 to i64*), align 8
  %2273 = xor i64 %2272, -9223372036854775808
  store i64 %2273, i64* bitcast (%A3_type* @A3 to i64*), align 8
  %2274 = load i64, i64* bitcast (%A5_type* @A5 to i64*), align 8
  %2275 = xor i64 %2274, -9223372036854775808
  store i64 %2275, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %23, align 1, !tbaa !2432
  %2276 = trunc i64 %2274 to i32
  %2277 = and i32 %2276, 255
  %2278 = tail call i32 @llvm.ctpop.i32(i32 %2277) #12
  %2279 = trunc i32 %2278 to i8
  %2280 = and i8 %2279, 1
  %2281 = xor i8 %2280, 1
  store i8 %2281, i8* %30, align 1, !tbaa !2446
  %2282 = icmp eq i64 %2275, 0
  %2283 = zext i1 %2282 to i8
  store i8 %2283, i8* %38, align 1, !tbaa !2447
  %2284 = lshr i64 %2275, 63
  %2285 = trunc i64 %2284 to i8
  store i8 %2285, i8* %41, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %35, align 1, !tbaa !2450
  store i64 %2275, i64* bitcast (%A5_type* @A5 to i64*), align 8
  %2286 = load i64, i64* bitcast (%piref_type* @piref to i64*), align 8
  store i64 %2286, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %2287 = load i64, i64* bitcast (%three_type* @three to i64*), align 8
  store i64 %2287, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2288 = load i64, i64* %RBP, align 8
  %2289 = add i64 %2288, -80
  %2290 = add i64 %2270, 109
  store i64 %2290, i64* %PC, align 8
  %2291 = inttoptr i64 %2289 to i64*
  %2292 = load i64, i64* %2291, align 8
  %2293 = sitofp i64 %2292 to double
  store double %2293, double* %91, align 1, !tbaa !2451
  %2294 = bitcast i64 %2287 to double
  %2295 = fmul double %2293, %2294
  store double %2295, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %2296 = bitcast i64 %2286 to double
  %2297 = fdiv double %2296, %2295
  store double %2297, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %2298 = add i64 %2288, -48
  %2299 = add i64 %2270, 122
  store i64 %2299, i64* %PC, align 8
  %2300 = inttoptr i64 %2298 to double*
  store double %2297, double* %2300, align 8
  %2301 = load i64, i64* %RBP, align 8
  %2302 = add i64 %2301, -16
  %2303 = load i64, i64* %PC, align 8
  %2304 = add i64 %2303, 5
  store i64 %2304, i64* %PC, align 8
  %2305 = load i64, i64* %75, align 1
  %2306 = inttoptr i64 %2302 to i64*
  store i64 %2305, i64* %2306, align 8
  %2307 = load i64, i64* %RBP, align 8
  %2308 = add i64 %2307, -32
  %2309 = load i64, i64* %PC, align 8
  %2310 = add i64 %2309, 5
  store i64 %2310, i64* %PC, align 8
  %2311 = load i64, i64* %75, align 1
  %2312 = inttoptr i64 %2308 to i64*
  store i64 %2311, i64* %2312, align 8
  %2313 = load i64, i64* %RBP, align 8
  %2314 = add i64 %2313, -192
  %2315 = load i32, i32* %EAX, align 4
  %2316 = load i64, i64* %PC, align 8
  %2317 = add i64 %2316, 6
  store i64 %2317, i64* %PC, align 8
  %2318 = inttoptr i64 %2314 to i32*
  store i32 %2315, i32* %2318, align 4
  %2319 = load i64, i64* %PC, align 8
  %2320 = add i64 %2319, 5214
  %2321 = add i64 %2319, 5
  %2322 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2323 = add i64 %2322, -8
  %2324 = inttoptr i64 %2323 to i64*
  store i64 %2321, i64* %2324, align 8
  store i64 %2323, i64* %RSP, align 8, !tbaa !2428
  store i64 %2320, i64* %PC, align 8, !tbaa !2428
  %2325 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %2320, %struct.Memory* %2269)
  %2326 = load i64, i64* %RBP, align 8
  %2327 = add i64 %2326, -72
  %2328 = load i64, i64* %PC, align 8
  %2329 = add i64 %2328, 8
  store i64 %2329, i64* %PC, align 8
  %2330 = inttoptr i64 %2327 to i64*
  store i64 1, i64* %2330, align 8
  %2331 = load i64, i64* %RBP, align 8
  %2332 = add i64 %2331, -196
  %2333 = load i32, i32* %EAX, align 4
  %2334 = load i64, i64* %PC, align 8
  %2335 = add i64 %2334, 6
  store i64 %2335, i64* %PC, align 8
  %2336 = inttoptr i64 %2332 to i32*
  store i32 %2333, i32* %2336, align 4
  %.pre213 = load i64, i64* %PC, align 8
  br label %block_401195

block_400730:                                     ; preds = %block_40071b
  %2337 = add i64 %2704, -32
  %2338 = add i64 %2741, 5
  store i64 %2338, i64* %PC, align 8
  %2339 = inttoptr i64 %2337 to i64*
  %2340 = load i64, i64* %2339, align 8
  store i64 %2340, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %2341 = add i64 %2704, -40
  %2342 = add i64 %2741, 10
  store i64 %2342, i64* %PC, align 8
  %2343 = bitcast i64 %2340 to double
  %2344 = inttoptr i64 %2341 to double*
  %2345 = load double, double* %2344, align 8
  %2346 = fadd double %2343, %2345
  store double %2346, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %2347 = add i64 %2741, 15
  store i64 %2347, i64* %PC, align 8
  %2348 = inttoptr i64 %2337 to double*
  store double %2346, double* %2348, align 8
  %2349 = load i64, i64* %RBP, align 8
  %2350 = add i64 %2349, -32
  %2351 = load i64, i64* %PC, align 8
  %2352 = add i64 %2351, 5
  store i64 %2352, i64* %PC, align 8
  %2353 = inttoptr i64 %2350 to i64*
  %2354 = load i64, i64* %2353, align 8
  store i64 %2354, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %2355 = add i64 %2349, -48
  %2356 = add i64 %2351, 10
  store i64 %2356, i64* %PC, align 8
  %2357 = bitcast i64 %2354 to double
  %2358 = inttoptr i64 %2355 to double*
  %2359 = load double, double* %2358, align 8
  %2360 = fmul double %2357, %2359
  store double %2360, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %2361 = add i64 %2349, -24
  %2362 = add i64 %2351, 15
  store i64 %2362, i64* %PC, align 8
  %2363 = inttoptr i64 %2361 to double*
  store double %2360, double* %2363, align 8
  %2364 = load i64, i64* %RBP, align 8
  %2365 = add i64 %2364, -16
  %2366 = load i64, i64* %PC, align 8
  %2367 = add i64 %2366, 5
  store i64 %2367, i64* %PC, align 8
  %2368 = inttoptr i64 %2365 to i64*
  %2369 = load i64, i64* %2368, align 8
  store i64 %2369, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %2370 = load i64, i64* bitcast (%D1_0_type* @D1_0 to i64*), align 8
  store i64 %2370, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %2371 = add i64 %2364, -24
  %2372 = add i64 %2366, 19
  store i64 %2372, i64* %PC, align 8
  %2373 = inttoptr i64 %2371 to i64*
  %2374 = load i64, i64* %2373, align 8
  store i64 %2374, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2375 = load i64, i64* bitcast (%D2_0_type* @D2_0 to i64*), align 8
  store i64 %2375, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %2376 = add i64 %2366, 33
  store i64 %2376, i64* %PC, align 8
  %2377 = inttoptr i64 %2371 to double*
  %2378 = load double, double* %2377, align 8
  %2379 = load double, double* bitcast (%D3_type* @D3 to double*), align 8
  %2380 = fmul double %2378, %2379
  store double %2380, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2381 = bitcast i64 %2375 to double
  %2382 = fadd double %2380, %2381
  store double %2382, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %2383 = bitcast i64 %2374 to double
  %2384 = fmul double %2382, %2383
  store double %2384, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %2385 = bitcast i64 %2370 to double
  %2386 = fadd double %2384, %2385
  store double %2386, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %2387 = add i64 %2364, -40
  %2388 = add i64 %2366, 59
  store i64 %2388, i64* %PC, align 8
  %2389 = inttoptr i64 %2387 to i64*
  %2390 = load i64, i64* %2389, align 8
  store i64 %2390, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2391 = add i64 %2366, 64
  store i64 %2391, i64* %PC, align 8
  %2392 = load i64, i64* %2373, align 8
  store i64 %2392, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  store i64 %2370, i64* %97, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %2393 = add i64 %2366, 78
  store i64 %2393, i64* %PC, align 8
  %2394 = load i64, i64* %2373, align 8
  store i64 %2394, i64* %102, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %2395 = load i64, i64* bitcast (%E2_0_type* @E2_0 to i64*), align 8
  store i64 %2395, i64* %107, align 1, !tbaa !2451
  store double 0.000000e+00, double* %109, align 1, !tbaa !2451
  %2396 = add i64 %2366, 92
  store i64 %2396, i64* %PC, align 8
  %2397 = inttoptr i64 %2371 to double*
  %2398 = load double, double* %2397, align 8
  %2399 = load double, double* bitcast (%E3_type* @E3 to double*), align 8
  %2400 = fmul double %2398, %2399
  store double %2400, double* %121, align 1, !tbaa !2451
  store i64 0, i64* %210, align 1, !tbaa !2451
  %2401 = bitcast i64 %2395 to double
  %2402 = fadd double %2400, %2401
  store double %2402, double* %106, align 1, !tbaa !2451
  store i64 0, i64* %108, align 1, !tbaa !2451
  %2403 = bitcast i64 %2394 to double
  %2404 = fmul double %2402, %2403
  store double %2404, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %2405 = fadd double %2404, %2385
  store double %2405, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2406 = bitcast i64 %2392 to double
  %2407 = fmul double %2405, %2406
  store double %2407, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %2408 = bitcast i64 %2390 to double
  %2409 = fadd double %2407, %2408
  store double %2409, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %2410 = fdiv double %2386, %2409
  store double %2410, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %2411 = load double, double* %74, align 1
  %2412 = fadd double %2410, %2411
  store double %2412, double* %74, align 1, !tbaa !2451
  %2413 = load i64, i64* %RBP, align 8
  %2414 = add i64 %2413, -16
  %2415 = add i64 %2366, 134
  store i64 %2415, i64* %PC, align 8
  %2416 = inttoptr i64 %2414 to double*
  store double %2412, double* %2416, align 8
  %2417 = load i64, i64* %RBP, align 8
  %2418 = add i64 %2417, -72
  %2419 = load i64, i64* %PC, align 8
  %2420 = add i64 %2419, 4
  store i64 %2420, i64* %PC, align 8
  %2421 = inttoptr i64 %2418 to i64*
  %2422 = load i64, i64* %2421, align 8
  %2423 = add i64 %2422, 1
  store i64 %2423, i64* %RAX, align 8, !tbaa !2428
  %2424 = icmp eq i64 %2422, -1
  %2425 = icmp eq i64 %2423, 0
  %2426 = or i1 %2424, %2425
  %2427 = zext i1 %2426 to i8
  store i8 %2427, i8* %23, align 1, !tbaa !2432
  %2428 = trunc i64 %2423 to i32
  %2429 = and i32 %2428, 255
  %2430 = tail call i32 @llvm.ctpop.i32(i32 %2429) #12
  %2431 = trunc i32 %2430 to i8
  %2432 = and i8 %2431, 1
  %2433 = xor i8 %2432, 1
  store i8 %2433, i8* %30, align 1, !tbaa !2446
  %2434 = xor i64 %2423, %2422
  %2435 = lshr i64 %2434, 4
  %2436 = trunc i64 %2435 to i8
  %2437 = and i8 %2436, 1
  store i8 %2437, i8* %35, align 1, !tbaa !2450
  %2438 = zext i1 %2425 to i8
  store i8 %2438, i8* %38, align 1, !tbaa !2447
  %2439 = lshr i64 %2423, 63
  %2440 = trunc i64 %2439 to i8
  store i8 %2440, i8* %41, align 1, !tbaa !2448
  %2441 = lshr i64 %2422, 63
  %2442 = xor i64 %2439, %2441
  %2443 = add nuw nsw i64 %2442, %2439
  %2444 = icmp eq i64 %2443, 2
  %2445 = zext i1 %2444 to i8
  store i8 %2445, i8* %47, align 1, !tbaa !2449
  %2446 = add i64 %2419, 12
  store i64 %2446, i64* %PC, align 8
  store i64 %2423, i64* %2421, align 8
  %2447 = load i64, i64* %PC, align 8
  %2448 = add i64 %2447, -197
  store i64 %2448, i64* %PC, align 8, !tbaa !2428
  br label %block_40071b

block_400afc:                                     ; preds = %block_400aee
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
  %2449 = add i64 %3529, -16
  %2450 = add i64 %3565, 15
  store i64 %2450, i64* %PC, align 8
  %2451 = inttoptr i64 %2449 to i64*
  %2452 = load i64, i64* %2451, align 8
  %2453 = xor i64 %2452, -9223372036854775808
  store i64 %2453, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %23, align 1, !tbaa !2432
  %2454 = trunc i64 %2452 to i32
  %2455 = and i32 %2454, 255
  %2456 = tail call i32 @llvm.ctpop.i32(i32 %2455) #12
  %2457 = trunc i32 %2456 to i8
  %2458 = and i8 %2457, 1
  %2459 = xor i8 %2458, 1
  store i8 %2459, i8* %30, align 1, !tbaa !2446
  %2460 = icmp eq i64 %2453, 0
  %2461 = zext i1 %2460 to i8
  store i8 %2461, i8* %38, align 1, !tbaa !2447
  %2462 = lshr i64 %2453, 63
  %2463 = trunc i64 %2462 to i8
  store i8 %2463, i8* %41, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %35, align 1, !tbaa !2450
  %2464 = add i64 %3565, 33
  store i64 %2464, i64* %PC, align 8
  store i64 %2453, i64* %2451, align 8
  %2465 = load i64, i64* %PC, align 8
  %2466 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %2466, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %2467 = load i64, i64* %RBP, align 8
  %2468 = add i64 %2467, -16
  %2469 = add i64 %2465, 14
  store i64 %2469, i64* %PC, align 8
  %.cast155 = bitcast i64 %2466 to double
  %2470 = inttoptr i64 %2468 to double*
  %2471 = load double, double* %2470, align 8
  %2472 = fadd double %.cast155, %2471
  store double %2472, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  store double %2472, double* bitcast (%sa_type* @sa to double*), align 8
  %2473 = add i64 %2467, -72
  %2474 = add i64 %2465, 27
  store i64 %2474, i64* %PC, align 8
  %2475 = inttoptr i64 %2473 to i64*
  %2476 = load i64, i64* %2475, align 8
  %2477 = add i64 %2476, 1
  store i64 %2477, i64* %RAX, align 8, !tbaa !2428
  %2478 = icmp eq i64 %2476, -1
  %2479 = icmp eq i64 %2477, 0
  %2480 = or i1 %2478, %2479
  %2481 = zext i1 %2480 to i8
  store i8 %2481, i8* %23, align 1, !tbaa !2432
  %2482 = trunc i64 %2477 to i32
  %2483 = and i32 %2482, 255
  %2484 = tail call i32 @llvm.ctpop.i32(i32 %2483) #12
  %2485 = trunc i32 %2484 to i8
  %2486 = and i8 %2485, 1
  %2487 = xor i8 %2486, 1
  store i8 %2487, i8* %30, align 1, !tbaa !2446
  %2488 = xor i64 %2477, %2476
  %2489 = lshr i64 %2488, 4
  %2490 = trunc i64 %2489 to i8
  %2491 = and i8 %2490, 1
  store i8 %2491, i8* %35, align 1, !tbaa !2450
  %2492 = zext i1 %2479 to i8
  store i8 %2492, i8* %38, align 1, !tbaa !2447
  %2493 = lshr i64 %2477, 63
  %2494 = trunc i64 %2493 to i8
  store i8 %2494, i8* %41, align 1, !tbaa !2448
  %2495 = lshr i64 %2476, 63
  %2496 = xor i64 %2493, %2495
  %2497 = add nuw nsw i64 %2496, %2493
  %2498 = icmp eq i64 %2497, 2
  %2499 = zext i1 %2498 to i8
  store i8 %2499, i8* %47, align 1, !tbaa !2449
  %2500 = add i64 %2465, 35
  store i64 %2500, i64* %PC, align 8
  store i64 %2477, i64* %2475, align 8
  %2501 = load i64, i64* %PC, align 8
  %2502 = add i64 %2501, -82
  store i64 %2502, i64* %PC, align 8, !tbaa !2428
  br label %block_400aee

block_401cca:                                     ; preds = %block_401a16, %block_401cdf
  %2503 = phi i64 [ %.pre216, %block_401a16 ], [ %1205, %block_401cdf ]
  %2504 = load i64, i64* %RBP, align 8
  %2505 = add i64 %2504, -72
  %2506 = add i64 %2503, 4
  store i64 %2506, i64* %PC, align 8
  %2507 = inttoptr i64 %2505 to i64*
  %2508 = load i64, i64* %2507, align 8
  store i64 %2508, i64* %RAX, align 8, !tbaa !2428
  %2509 = add i64 %2504, -80
  %2510 = add i64 %2503, 8
  store i64 %2510, i64* %PC, align 8
  %2511 = inttoptr i64 %2509 to i64*
  %2512 = load i64, i64* %2511, align 8
  %2513 = add i64 %2512, -1
  store i64 %2513, i64* %RCX, align 8, !tbaa !2428
  %2514 = lshr i64 %2513, 63
  %2515 = sub i64 %2508, %2513
  %2516 = icmp ult i64 %2508, %2513
  %2517 = zext i1 %2516 to i8
  store i8 %2517, i8* %23, align 1, !tbaa !2432
  %2518 = trunc i64 %2515 to i32
  %2519 = and i32 %2518, 255
  %2520 = tail call i32 @llvm.ctpop.i32(i32 %2519) #12
  %2521 = trunc i32 %2520 to i8
  %2522 = and i8 %2521, 1
  %2523 = xor i8 %2522, 1
  store i8 %2523, i8* %30, align 1, !tbaa !2446
  %2524 = xor i64 %2513, %2508
  %2525 = xor i64 %2524, %2515
  %2526 = lshr i64 %2525, 4
  %2527 = trunc i64 %2526 to i8
  %2528 = and i8 %2527, 1
  store i8 %2528, i8* %35, align 1, !tbaa !2450
  %2529 = icmp eq i64 %2515, 0
  %2530 = zext i1 %2529 to i8
  store i8 %2530, i8* %38, align 1, !tbaa !2447
  %2531 = lshr i64 %2515, 63
  %2532 = trunc i64 %2531 to i8
  store i8 %2532, i8* %41, align 1, !tbaa !2448
  %2533 = lshr i64 %2508, 63
  %2534 = xor i64 %2514, %2533
  %2535 = xor i64 %2531, %2533
  %2536 = add nuw nsw i64 %2535, %2534
  %2537 = icmp eq i64 %2536, 2
  %2538 = zext i1 %2537 to i8
  store i8 %2538, i8* %47, align 1, !tbaa !2449
  %2539 = icmp ne i8 %2532, 0
  %2540 = xor i1 %2539, %2537
  %.demorgan225 = or i1 %2529, %2540
  %.v232 = select i1 %.demorgan225, i64 21, i64 153
  %2541 = add i64 %2503, %.v232
  store i64 %2541, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan225, label %block_401cdf, label %block_401d63

block_400821.loopexit:                            ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  br label %block_400821

block_400821:                                     ; preds = %block_400821.loopexit, %block_400817
  %2542 = phi i64 [ %2674, %block_400817 ], [ %4041, %block_400821.loopexit ]
  %MEMORY.5 = phi %struct.Memory* [ %1049, %block_400817 ], [ %4040, %block_400821.loopexit ]
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %2543 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 64) to i64*), align 16
  store i64 %2543, i64* bitcast (%scale_type* @scale to i64*), align 8
  store i64 %2543, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  store i64 %2543, i64* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to i64*), align 8
  %2544 = add i64 %2542, 7615
  %2545 = add i64 %2542, 50
  %2546 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2547 = add i64 %2546, -8
  %2548 = inttoptr i64 %2547 to i64*
  store i64 %2545, i64* %2548, align 8
  store i64 %2547, i64* %RSP, align 8, !tbaa !2428
  store i64 %2544, i64* %PC, align 8, !tbaa !2428
  %2549 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %2544, %struct.Memory* %MEMORY.5)
  %2550 = load i64, i64* %RBP, align 8
  %2551 = add i64 %2550, -72
  %2552 = load i64, i64* %PC, align 8
  %2553 = add i64 %2552, 8
  store i64 %2553, i64* %PC, align 8
  %2554 = inttoptr i64 %2551 to i64*
  store i64 1, i64* %2554, align 8
  %2555 = load i64, i64* %RBP, align 8
  %2556 = add i64 %2555, -124
  %2557 = load i32, i32* %EAX, align 4
  %2558 = load i64, i64* %PC, align 8
  %2559 = add i64 %2558, 3
  store i64 %2559, i64* %PC, align 8
  %2560 = inttoptr i64 %2556 to i32*
  store i32 %2557, i32* %2560, align 4
  %.pre206 = load i64, i64* %PC, align 8
  br label %block_40085e

block_4008c8:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %2561 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %2561, align 1, !tbaa !2454
  %2562 = add i64 %3318, 12
  store i64 %2562, i64* %PC, align 8
  %2563 = load i64, i64* %75, align 1
  store i64 %2563, i64* bitcast (%nulltime_type* @nulltime to i64*), align 8
  %2564 = bitcast i64 %2563 to double
  br label %block_4008d4

block_40081c:                                     ; preds = %block_4007e5
  %2565 = add i64 %1093, -374
  store i64 %2565, i64* %PC, align 8, !tbaa !2428
  br label %block_4006a6

block_4011aa:                                     ; preds = %block_401195
  %2566 = add i64 %3062, 6
  store i64 %2566, i64* %PC, align 8
  %2567 = load i64, i64* %3028, align 8
  %2568 = sitofp i64 %2567 to double
  store double %2568, double* %74, align 1, !tbaa !2451
  %2569 = add i64 %3025, -48
  %2570 = add i64 %3062, 11
  store i64 %2570, i64* %PC, align 8
  %2571 = inttoptr i64 %2569 to double*
  %2572 = load double, double* %2571, align 8
  %2573 = fmul double %2568, %2572
  store double %2573, double* %74, align 1, !tbaa !2451
  %2574 = add i64 %3025, -24
  %2575 = add i64 %3062, 16
  store i64 %2575, i64* %PC, align 8
  %2576 = inttoptr i64 %2574 to double*
  store double %2573, double* %2576, align 8
  %2577 = load i64, i64* %RBP, align 8
  %2578 = add i64 %2577, -24
  %2579 = load i64, i64* %PC, align 8
  %2580 = add i64 %2579, 5
  store i64 %2580, i64* %PC, align 8
  %2581 = inttoptr i64 %2578 to i64*
  %2582 = load i64, i64* %2581, align 8
  store i64 %2582, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %2583 = add i64 %2579, 10
  store i64 %2583, i64* %PC, align 8
  %2584 = bitcast i64 %2582 to double
  %2585 = inttoptr i64 %2578 to double*
  %2586 = load double, double* %2585, align 8
  %2587 = fmul double %2584, %2586
  store double %2587, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %2588 = add i64 %2577, -40
  %2589 = add i64 %2579, 15
  store i64 %2589, i64* %PC, align 8
  %2590 = inttoptr i64 %2588 to double*
  store double %2587, double* %2590, align 8
  %2591 = load i64, i64* %RBP, align 8
  %2592 = add i64 %2591, -16
  %2593 = load i64, i64* %PC, align 8
  %2594 = add i64 %2593, 5
  store i64 %2594, i64* %PC, align 8
  %2595 = inttoptr i64 %2592 to i64*
  %2596 = load i64, i64* %2595, align 8
  store i64 %2596, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %2597 = add i64 %2591, -40
  %2598 = add i64 %2593, 10
  store i64 %2598, i64* %PC, align 8
  %2599 = inttoptr i64 %2597 to i64*
  %2600 = load i64, i64* %2599, align 8
  store i64 %2600, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %2601 = add i64 %2593, 15
  store i64 %2601, i64* %PC, align 8
  %2602 = load i64, i64* %2599, align 8
  store i64 %2602, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2603 = add i64 %2593, 20
  store i64 %2603, i64* %PC, align 8
  %2604 = load i64, i64* %2599, align 8
  store i64 %2604, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %2605 = add i64 %2593, 25
  store i64 %2605, i64* %PC, align 8
  %2606 = load i64, i64* %2599, align 8
  store i64 %2606, i64* %97, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %2607 = add i64 %2593, 30
  store i64 %2607, i64* %PC, align 8
  %2608 = load i64, i64* %2599, align 8
  store i64 %2608, i64* %102, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %2609 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  store i64 %2609, i64* %107, align 1, !tbaa !2451
  store double 0.000000e+00, double* %109, align 1, !tbaa !2451
  %2610 = add i64 %2593, 44
  store i64 %2610, i64* %PC, align 8
  %.cast163 = bitcast i64 %2609 to double
  %2611 = inttoptr i64 %2597 to double*
  %2612 = load double, double* %2611, align 8
  %2613 = fmul double %.cast163, %2612
  %2614 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %2615 = fadd double %2613, %2614
  store double %2615, double* %106, align 1, !tbaa !2451
  store i64 0, i64* %108, align 1, !tbaa !2451
  %2616 = bitcast i64 %2608 to double
  %2617 = fmul double %2615, %2616
  %2618 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %2619 = fadd double %2617, %2618
  store double %2619, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %2620 = bitcast i64 %2606 to double
  %2621 = fmul double %2619, %2620
  %2622 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %2623 = fadd double %2621, %2622
  store double %2623, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2624 = bitcast i64 %2604 to double
  %2625 = fmul double %2623, %2624
  %2626 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %2627 = fadd double %2625, %2626
  store double %2627, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %2628 = bitcast i64 %2602 to double
  %2629 = fmul double %2627, %2628
  %2630 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %2631 = fadd double %2629, %2630
  store double %2631, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %2632 = bitcast i64 %2600 to double
  %2633 = fmul double %2631, %2632
  store double %2633, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %2634 = load double, double* %74, align 1
  %2635 = fadd double %2633, %2634
  %2636 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2637 = fadd double %2635, %2636
  store double %2637, double* %74, align 1, !tbaa !2451
  %2638 = load i64, i64* %RBP, align 8
  %2639 = add i64 %2638, -16
  %2640 = add i64 %2593, 127
  store i64 %2640, i64* %PC, align 8
  %2641 = inttoptr i64 %2639 to double*
  store double %2637, double* %2641, align 8
  %2642 = load i64, i64* %RBP, align 8
  %2643 = add i64 %2642, -72
  %2644 = load i64, i64* %PC, align 8
  %2645 = add i64 %2644, 4
  store i64 %2645, i64* %PC, align 8
  %2646 = inttoptr i64 %2643 to i64*
  %2647 = load i64, i64* %2646, align 8
  %2648 = add i64 %2647, 1
  store i64 %2648, i64* %RAX, align 8, !tbaa !2428
  %2649 = icmp eq i64 %2647, -1
  %2650 = icmp eq i64 %2648, 0
  %2651 = or i1 %2649, %2650
  %2652 = zext i1 %2651 to i8
  store i8 %2652, i8* %23, align 1, !tbaa !2432
  %2653 = trunc i64 %2648 to i32
  %2654 = and i32 %2653, 255
  %2655 = tail call i32 @llvm.ctpop.i32(i32 %2654) #12
  %2656 = trunc i32 %2655 to i8
  %2657 = and i8 %2656, 1
  %2658 = xor i8 %2657, 1
  store i8 %2658, i8* %30, align 1, !tbaa !2446
  %2659 = xor i64 %2648, %2647
  %2660 = lshr i64 %2659, 4
  %2661 = trunc i64 %2660 to i8
  %2662 = and i8 %2661, 1
  store i8 %2662, i8* %35, align 1, !tbaa !2450
  %2663 = zext i1 %2650 to i8
  store i8 %2663, i8* %38, align 1, !tbaa !2447
  %2664 = lshr i64 %2648, 63
  %2665 = trunc i64 %2664 to i8
  store i8 %2665, i8* %41, align 1, !tbaa !2448
  %2666 = lshr i64 %2647, 63
  %2667 = xor i64 %2664, %2666
  %2668 = add nuw nsw i64 %2667, %2664
  %2669 = icmp eq i64 %2668, 2
  %2670 = zext i1 %2669 to i8
  store i8 %2670, i8* %47, align 1, !tbaa !2449
  %2671 = add i64 %2644, 12
  store i64 %2671, i64* %PC, align 8
  store i64 %2648, i64* %2646, align 8
  %2672 = load i64, i64* %PC, align 8
  %2673 = add i64 %2672, -191
  store i64 %2673, i64* %PC, align 8, !tbaa !2428
  br label %block_401195

block_400817:                                     ; preds = %block_4007e5
  %2674 = add i64 %1093, 10
  store i64 %2674, i64* %PC, align 8, !tbaa !2428
  br label %block_400821

block_400873:                                     ; preds = %block_40085e
  %2675 = add i64 %3357, 9
  store i64 %2675, i64* %PC, align 8
  %2676 = load i64, i64* %3323, align 8
  %2677 = add i64 %2676, 1
  store i64 %2677, i64* %RAX, align 8, !tbaa !2428
  %2678 = icmp eq i64 %2676, -1
  %2679 = icmp eq i64 %2677, 0
  %2680 = or i1 %2678, %2679
  %2681 = zext i1 %2680 to i8
  store i8 %2681, i8* %23, align 1, !tbaa !2432
  %2682 = trunc i64 %2677 to i32
  %2683 = and i32 %2682, 255
  %2684 = tail call i32 @llvm.ctpop.i32(i32 %2683) #12
  %2685 = trunc i32 %2684 to i8
  %2686 = and i8 %2685, 1
  %2687 = xor i8 %2686, 1
  store i8 %2687, i8* %30, align 1, !tbaa !2446
  %2688 = xor i64 %2677, %2676
  %2689 = lshr i64 %2688, 4
  %2690 = trunc i64 %2689 to i8
  %2691 = and i8 %2690, 1
  store i8 %2691, i8* %35, align 1, !tbaa !2450
  %2692 = zext i1 %2679 to i8
  store i8 %2692, i8* %38, align 1, !tbaa !2447
  %2693 = lshr i64 %2677, 63
  %2694 = trunc i64 %2693 to i8
  store i8 %2694, i8* %41, align 1, !tbaa !2448
  %2695 = lshr i64 %2676, 63
  %2696 = xor i64 %2693, %2695
  %2697 = add nuw nsw i64 %2696, %2693
  %2698 = icmp eq i64 %2697, 2
  %2699 = zext i1 %2698 to i8
  store i8 %2699, i8* %47, align 1, !tbaa !2449
  %2700 = add i64 %3357, 17
  store i64 %2700, i64* %PC, align 8
  store i64 %2677, i64* %3323, align 8
  %2701 = load i64, i64* %PC, align 8
  %2702 = add i64 %2701, -38
  store i64 %2702, i64* %PC, align 8, !tbaa !2428
  br label %block_40085e

block_40071b:                                     ; preds = %block_400730, %block_4006c2
  %2703 = phi i64 [ %2448, %block_400730 ], [ %.pre205, %block_4006c2 ]
  %2704 = load i64, i64* %RBP, align 8
  %2705 = add i64 %2704, -72
  %2706 = add i64 %2703, 4
  store i64 %2706, i64* %PC, align 8
  %2707 = inttoptr i64 %2705 to i64*
  %2708 = load i64, i64* %2707, align 8
  store i64 %2708, i64* %RAX, align 8, !tbaa !2428
  %2709 = add i64 %2704, -88
  %2710 = add i64 %2703, 8
  store i64 %2710, i64* %PC, align 8
  %2711 = inttoptr i64 %2709 to i64*
  %2712 = load i64, i64* %2711, align 8
  %2713 = add i64 %2712, -1
  store i64 %2713, i64* %RCX, align 8, !tbaa !2428
  %2714 = lshr i64 %2713, 63
  %2715 = sub i64 %2708, %2713
  %2716 = icmp ult i64 %2708, %2713
  %2717 = zext i1 %2716 to i8
  store i8 %2717, i8* %23, align 1, !tbaa !2432
  %2718 = trunc i64 %2715 to i32
  %2719 = and i32 %2718, 255
  %2720 = tail call i32 @llvm.ctpop.i32(i32 %2719) #12
  %2721 = trunc i32 %2720 to i8
  %2722 = and i8 %2721, 1
  %2723 = xor i8 %2722, 1
  store i8 %2723, i8* %30, align 1, !tbaa !2446
  %2724 = xor i64 %2713, %2708
  %2725 = xor i64 %2724, %2715
  %2726 = lshr i64 %2725, 4
  %2727 = trunc i64 %2726 to i8
  %2728 = and i8 %2727, 1
  store i8 %2728, i8* %35, align 1, !tbaa !2450
  %2729 = icmp eq i64 %2715, 0
  %2730 = zext i1 %2729 to i8
  store i8 %2730, i8* %38, align 1, !tbaa !2447
  %2731 = lshr i64 %2715, 63
  %2732 = trunc i64 %2731 to i8
  store i8 %2732, i8* %41, align 1, !tbaa !2448
  %2733 = lshr i64 %2708, 63
  %2734 = xor i64 %2714, %2733
  %2735 = xor i64 %2731, %2733
  %2736 = add nuw nsw i64 %2735, %2734
  %2737 = icmp eq i64 %2736, 2
  %2738 = zext i1 %2737 to i8
  store i8 %2738, i8* %47, align 1, !tbaa !2449
  %2739 = icmp ne i8 %2732, 0
  %2740 = xor i1 %2739, %2737
  %.demorgan = or i1 %2729, %2740
  %.v227 = select i1 %.demorgan, i64 21, i64 202
  %2741 = add i64 %2703, %.v227
  store i64 %2741, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400730, label %block_4007e5

block_401a16:                                     ; preds = %block_4018de
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %2742 = add i64 %1283, 3018
  %2743 = add i64 %1283, 15
  %2744 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2745 = add i64 %2744, -8
  %2746 = inttoptr i64 %2745 to i64*
  store i64 %2743, i64* %2746, align 8
  store i64 %2745, i64* %RSP, align 8, !tbaa !2428
  store i64 %2742, i64* %PC, align 8, !tbaa !2428
  %2747 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %2742, %struct.Memory* %1722)
  %2748 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 570), i64* %RDI, align 8, !tbaa !2428
  %2749 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to i64*), align 8
  store i64 %2749, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %2750 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 160) to i64*), align 16
  store i64 %2750, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %2751 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 144) to i64*), align 16
  store i64 %2751, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2752 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %2753 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %2754 = fmul double %2752, %2753
  %2755 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %2756 = fsub double %2754, %2755
  store double %2756, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %2757 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %2758 = load double, double* bitcast (%four_type* @four to double*), align 8
  %2759 = fdiv double %2757, %2758
  store double %2759, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %2760 = load i64, i64* %RBP, align 8
  %2761 = add i64 %2760, -24
  %2762 = add i64 %2748, 93
  store i64 %2762, i64* %PC, align 8
  %2763 = inttoptr i64 %2761 to double*
  store double %2759, double* %2763, align 8
  %2764 = load i64, i64* %RBP, align 8
  %2765 = add i64 %2764, -24
  %2766 = load i64, i64* %PC, align 8
  %2767 = add i64 %2766, 5
  store i64 %2767, i64* %PC, align 8
  %2768 = inttoptr i64 %2765 to i64*
  %2769 = load i64, i64* %2768, align 8
  store i64 %2769, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %2770 = add i64 %2766, 10
  store i64 %2770, i64* %PC, align 8
  %2771 = bitcast i64 %2769 to double
  %2772 = inttoptr i64 %2765 to double*
  %2773 = load double, double* %2772, align 8
  %2774 = fmul double %2771, %2773
  store double %2774, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %2775 = add i64 %2764, -40
  %2776 = add i64 %2766, 15
  store i64 %2776, i64* %PC, align 8
  %2777 = inttoptr i64 %2775 to double*
  store double %2774, double* %2777, align 8
  %2778 = load i64, i64* %RBP, align 8
  %2779 = add i64 %2778, -24
  %2780 = load i64, i64* %PC, align 8
  %2781 = add i64 %2780, 5
  store i64 %2781, i64* %PC, align 8
  %2782 = inttoptr i64 %2779 to i64*
  %2783 = load i64, i64* %2782, align 8
  store i64 %2783, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %2784 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %2784, i64* %97, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %2785 = add i64 %2778, -40
  %2786 = add i64 %2780, 19
  store i64 %2786, i64* %PC, align 8
  %.cast172 = bitcast i64 %2784 to double
  %2787 = inttoptr i64 %2785 to double*
  %2788 = load double, double* %2787, align 8
  %2789 = fmul double %.cast172, %2788
  %2790 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %2791 = fadd double %2789, %2790
  store double %2791, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2792 = add i64 %2780, 33
  store i64 %2792, i64* %PC, align 8
  %2793 = load double, double* %2787, align 8
  %2794 = fmul double %2791, %2793
  %2795 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %2796 = fadd double %2794, %2795
  store double %2796, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2797 = add i64 %2780, 47
  store i64 %2797, i64* %PC, align 8
  %2798 = load double, double* %2787, align 8
  %2799 = fmul double %2796, %2798
  %2800 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %2801 = fadd double %2799, %2800
  store double %2801, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2802 = add i64 %2780, 61
  store i64 %2802, i64* %PC, align 8
  %2803 = load double, double* %2787, align 8
  %2804 = fmul double %2801, %2803
  %2805 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %2806 = fadd double %2804, %2805
  store double %2806, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2807 = add i64 %2780, 75
  store i64 %2807, i64* %PC, align 8
  %2808 = load double, double* %2787, align 8
  %2809 = fmul double %2806, %2808
  %2810 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %2811 = fadd double %2809, %2810
  store double %2811, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2812 = add i64 %2780, 89
  store i64 %2812, i64* %PC, align 8
  %2813 = load double, double* %2787, align 8
  %2814 = fmul double %2811, %2813
  %2815 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2816 = fadd double %2814, %2815
  store double %2816, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2817 = bitcast i64 %2783 to double
  %2818 = fmul double %2816, %2817
  store double %2818, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  store double %2818, double* bitcast (%sa_type* @sa to double*), align 8
  %2819 = add i64 %2780, 116
  store i64 %2819, i64* %PC, align 8
  %2820 = inttoptr i64 %2785 to i64*
  %2821 = load i64, i64* %2820, align 8
  store i64 %2821, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %2822 = load i64, i64* %RBP, align 8
  %2823 = add i64 %2822, -40
  %2824 = add i64 %2780, 121
  store i64 %2824, i64* %PC, align 8
  %2825 = inttoptr i64 %2823 to i64*
  %2826 = load i64, i64* %2825, align 8
  store i64 %2826, i64* %97, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %2827 = add i64 %2780, 126
  store i64 %2827, i64* %PC, align 8
  %2828 = load i64, i64* %2825, align 8
  store i64 %2828, i64* %102, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %2829 = add i64 %2780, 131
  store i64 %2829, i64* %PC, align 8
  %2830 = load i64, i64* %2825, align 8
  store i64 %2830, i64* %107, align 1, !tbaa !2451
  store double 0.000000e+00, double* %109, align 1, !tbaa !2451
  %2831 = add i64 %2780, 136
  store i64 %2831, i64* %PC, align 8
  %2832 = load i64, i64* %2825, align 8
  store i64 %2832, i64* %209, align 1, !tbaa !2451
  store double 0.000000e+00, double* %211, align 1, !tbaa !2451
  %2833 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  store i64 %2833, i64* %1576, align 1, !tbaa !2451
  store double 0.000000e+00, double* %1578, align 1, !tbaa !2451
  %2834 = add i64 %2780, 152
  store i64 %2834, i64* %PC, align 8
  %.cast173 = bitcast i64 %2833 to double
  %2835 = inttoptr i64 %2823 to double*
  %2836 = load double, double* %2835, align 8
  %2837 = fmul double %.cast173, %2836
  %2838 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %2839 = fadd double %2837, %2838
  store double %2839, double* %1575, align 1, !tbaa !2451
  store i64 0, i64* %1577, align 1, !tbaa !2451
  %2840 = bitcast i64 %2832 to double
  %2841 = fmul double %2839, %2840
  %2842 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %2843 = fadd double %2841, %2842
  store double %2843, double* %121, align 1, !tbaa !2451
  store i64 0, i64* %210, align 1, !tbaa !2451
  %2844 = bitcast i64 %2830 to double
  %2845 = fmul double %2843, %2844
  %2846 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %2847 = fadd double %2845, %2846
  store double %2847, double* %106, align 1, !tbaa !2451
  store i64 0, i64* %108, align 1, !tbaa !2451
  %2848 = bitcast i64 %2828 to double
  %2849 = fmul double %2847, %2848
  %2850 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %2851 = fadd double %2849, %2850
  store double %2851, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %2852 = bitcast i64 %2826 to double
  %2853 = fmul double %2851, %2852
  %2854 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %2855 = fadd double %2853, %2854
  store double %2855, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2856 = bitcast i64 %2821 to double
  %2857 = fmul double %2855, %2856
  %2858 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2859 = fadd double %2857, %2858
  store double %2859, double* bitcast (%sb_type* @sb to double*), align 8
  %2860 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %2861 = fmul double %2860, %2859
  store double %2861, double* bitcast (%sa_type* @sa to double*), align 8
  %2862 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %2863 = load double, double* %86, align 1
  %2864 = fdiv double %2862, %2863
  store double %2864, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  store double %2864, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 152) to double*), align 8
  %2865 = load i64, i64* %RBP, align 8
  %2866 = add i64 %2865, -48
  %2867 = add i64 %2780, 291
  store i64 %2867, i64* %PC, align 8
  %2868 = inttoptr i64 %2866 to i64*
  %2869 = load i64, i64* %2868, align 8
  store i64 %2869, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2870 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %2870, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %2871 = load i64, i64* bitcast (%two_type* @two to i64*), align 8
  store i64 %2871, i64* %97, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %2872 = add i64 %2865, -16
  %2873 = add i64 %2780, 314
  store i64 %2873, i64* %PC, align 8
  %.cast174 = bitcast i64 %2871 to double
  %2874 = inttoptr i64 %2872 to double*
  %2875 = load double, double* %2874, align 8
  %2876 = fmul double %.cast174, %2875
  store double %2876, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2877 = bitcast i64 %2870 to double
  %2878 = fadd double %2877, %2876
  store double %2878, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %2879 = bitcast i64 %2869 to double
  %2880 = fmul double %2879, %2878
  %2881 = fdiv double %2880, %.cast174
  store double %2881, double* bitcast (%sa_type* @sa to double*), align 8
  %2882 = load i64, i64* %81, align 1
  store i64 %2882, i64* bitcast (%sb_type* @sb to i64*), align 8
  %2883 = bitcast i64 %2882 to double
  %2884 = fsub double %2881, %2883
  store double %2884, double* bitcast (%sc_type* @sc to double*), align 8
  %2885 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2886 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 152) to double*), align 8
  %2887 = fdiv double %2885, %2886
  store double %2887, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 160) to double*), align 16
  %2888 = load <2 x i32>, <2 x i32>* %1369, align 1
  %2889 = load <2 x i32>, <2 x i32>* %1371, align 1
  %2890 = extractelement <2 x i32> %2888, i32 0
  store i32 %2890, i32* %1374, align 1, !tbaa !2455
  %2891 = extractelement <2 x i32> %2888, i32 1
  store i32 %2891, i32* %1377, align 1, !tbaa !2455
  %2892 = extractelement <2 x i32> %2889, i32 0
  store i32 %2892, i32* %1379, align 1, !tbaa !2455
  %2893 = extractelement <2 x i32> %2889, i32 1
  store i32 %2893, i32* %1382, align 1, !tbaa !2455
  %2894 = load double, double* %80, align 1
  %2895 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %2896 = fmul double %2894, %2895
  store double %2896, double* %80, align 1, !tbaa !2451
  store i32 %2890, i32* %1386, align 1, !tbaa !2455
  store i32 %2891, i32* %1388, align 1, !tbaa !2455
  store i32 %2892, i32* %1389, align 1, !tbaa !2455
  store i32 %2893, i32* %1391, align 1, !tbaa !2455
  %2897 = load double, double* %86, align 1
  %2898 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %2899 = fmul double %2897, %2898
  store double %2899, double* %86, align 1, !tbaa !2451
  %2900 = bitcast <2 x i32> %2888 to double
  %2901 = fmul double %2900, %2887
  %2902 = load i64, i64* %RBP, align 8
  %2903 = add i64 %2902, -256
  %2904 = add i64 %2780, 444
  store i64 %2904, i64* %PC, align 8
  %2905 = inttoptr i64 %2903 to double*
  store double %2901, double* %2905, align 8
  %2906 = load i64, i64* %PC, align 8
  %2907 = load <2 x i32>, <2 x i32>* %1402, align 1
  %2908 = load <2 x i32>, <2 x i32>* %1404, align 1
  %2909 = extractelement <2 x i32> %2907, i32 0
  store i32 %2909, i32* %187, align 1, !tbaa !2455
  %2910 = extractelement <2 x i32> %2907, i32 1
  store i32 %2910, i32* %189, align 1, !tbaa !2455
  %2911 = extractelement <2 x i32> %2908, i32 0
  store i32 %2911, i32* %190, align 1, !tbaa !2455
  %2912 = extractelement <2 x i32> %2908, i32 1
  store i32 %2912, i32* %192, align 1, !tbaa !2455
  %2913 = load <2 x i32>, <2 x i32>* %1410, align 1
  %2914 = load <2 x i32>, <2 x i32>* %1412, align 1
  %2915 = extractelement <2 x i32> %2913, i32 0
  store i32 %2915, i32* %1374, align 1, !tbaa !2455
  %2916 = extractelement <2 x i32> %2913, i32 1
  store i32 %2916, i32* %1377, align 1, !tbaa !2455
  %2917 = extractelement <2 x i32> %2914, i32 0
  store i32 %2917, i32* %1379, align 1, !tbaa !2455
  %2918 = extractelement <2 x i32> %2914, i32 1
  store i32 %2918, i32* %1382, align 1, !tbaa !2455
  %2919 = load i64, i64* %RBP, align 8
  %2920 = add i64 %2919, -256
  %2921 = add i64 %2906, 14
  store i64 %2921, i64* %PC, align 8
  %2922 = inttoptr i64 %2920 to i64*
  %2923 = load i64, i64* %2922, align 8
  store i64 %2923, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2924 = add i64 %2919, -260
  %2925 = load i32, i32* %EAX, align 4
  %2926 = add i64 %2906, 20
  store i64 %2926, i64* %PC, align 8
  %2927 = inttoptr i64 %2924 to i32*
  store i32 %2925, i32* %2927, align 4
  %2928 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %2929 = add i64 %2928, -6161
  %2930 = add i64 %2928, 7
  %2931 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2932 = add i64 %2931, -8
  %2933 = inttoptr i64 %2932 to i64*
  store i64 %2930, i64* %2933, align 8
  store i64 %2932, i64* %RSP, align 8, !tbaa !2428
  store i64 %2929, i64* %PC, align 8, !tbaa !2428
  %2934 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %2747)
  %2935 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %2936 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 152) to i64*), align 8
  store i64 %2936, i64* %75, align 1, !tbaa !2451
  store i32 0, i32* %1374, align 1, !tbaa !2454
  store i32 0, i32* %1377, align 1, !tbaa !2454
  %2937 = load i64, i64* %RBP, align 8
  %2938 = add i64 %2937, -16
  %2939 = add i64 %2935, 26
  store i64 %2939, i64* %PC, align 8
  %2940 = load i64, i64* %81, align 1
  %2941 = inttoptr i64 %2938 to i64*
  store i64 %2940, i64* %2941, align 8
  %2942 = load i64, i64* %PC, align 8
  %2943 = load i64, i64* bitcast (%one_type* @one to i64*), align 8
  store i64 %2943, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %2944 = load i64, i64* %RBP, align 8
  %2945 = add i64 %2944, -40
  %2946 = add i64 %2942, 14
  store i64 %2946, i64* %PC, align 8
  %2947 = inttoptr i64 %2945 to i64*
  store i64 %2943, i64* %2947, align 8
  %2948 = load i64, i64* %PC, align 8
  %2949 = load i64, i64* %75, align 1
  store i64 %2949, i64* bitcast (%sa_type* @sa to i64*), align 8
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %2950 = load i64, i64* %RBP, align 8
  %2951 = add i64 %2950, -80
  %2952 = add i64 %2948, 24
  store i64 %2952, i64* %PC, align 8
  %2953 = inttoptr i64 %2951 to i64*
  %2954 = load i64, i64* %2953, align 8
  %2955 = sitofp i64 %2954 to double
  store double %2955, double* %80, align 1, !tbaa !2451
  %2956 = bitcast i64 %2949 to double
  %2957 = fdiv double %2956, %2955
  store double %2957, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %2958 = add i64 %2950, -32
  %2959 = add i64 %2948, 33
  store i64 %2959, i64* %PC, align 8
  %2960 = inttoptr i64 %2958 to double*
  store double %2957, double* %2960, align 8
  %2961 = load i64, i64* %RBP, align 8
  %2962 = add i64 %2961, -264
  %2963 = load i32, i32* %EAX, align 4
  %2964 = load i64, i64* %PC, align 8
  %2965 = add i64 %2964, 6
  store i64 %2965, i64* %PC, align 8
  %2966 = inttoptr i64 %2962 to i32*
  store i32 %2963, i32* %2966, align 4
  %2967 = load i64, i64* %PC, align 8
  %2968 = add i64 %2967, 2345
  %2969 = add i64 %2967, 5
  %2970 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2971 = add i64 %2970, -8
  %2972 = inttoptr i64 %2971 to i64*
  store i64 %2969, i64* %2972, align 8
  store i64 %2971, i64* %RSP, align 8, !tbaa !2428
  store i64 %2968, i64* %PC, align 8, !tbaa !2428
  %2973 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %2968, %struct.Memory* %2934)
  %2974 = load i64, i64* %RBP, align 8
  %2975 = add i64 %2974, -72
  %2976 = load i64, i64* %PC, align 8
  %2977 = add i64 %2976, 8
  store i64 %2977, i64* %PC, align 8
  %2978 = inttoptr i64 %2975 to i64*
  store i64 1, i64* %2978, align 8
  %2979 = load i64, i64* %RBP, align 8
  %2980 = add i64 %2979, -268
  %2981 = load i32, i32* %EAX, align 4
  %2982 = load i64, i64* %PC, align 8
  %2983 = add i64 %2982, 6
  store i64 %2983, i64* %PC, align 8
  %2984 = inttoptr i64 %2980 to i32*
  store i32 %2981, i32* %2984, align 4
  %.pre216 = load i64, i64* %PC, align 8
  br label %block_401cca

block_400bdf:                                     ; preds = %block_400b93, %block_400bed
  %2985 = phi i64 [ %.pre211, %block_400b93 ], [ %1043, %block_400bed ]
  %2986 = load i64, i64* %RBP, align 8
  %2987 = add i64 %2986, -72
  %2988 = add i64 %2985, 4
  store i64 %2988, i64* %PC, align 8
  %2989 = inttoptr i64 %2987 to i64*
  %2990 = load i64, i64* %2989, align 8
  store i64 %2990, i64* %RAX, align 8, !tbaa !2428
  %2991 = add i64 %2986, -80
  %2992 = add i64 %2985, 8
  store i64 %2992, i64* %PC, align 8
  %2993 = inttoptr i64 %2991 to i64*
  %2994 = load i64, i64* %2993, align 8
  %2995 = sub i64 %2990, %2994
  %2996 = icmp ult i64 %2990, %2994
  %2997 = zext i1 %2996 to i8
  store i8 %2997, i8* %23, align 1, !tbaa !2432
  %2998 = trunc i64 %2995 to i32
  %2999 = and i32 %2998, 255
  %3000 = tail call i32 @llvm.ctpop.i32(i32 %2999) #12
  %3001 = trunc i32 %3000 to i8
  %3002 = and i8 %3001, 1
  %3003 = xor i8 %3002, 1
  store i8 %3003, i8* %30, align 1, !tbaa !2446
  %3004 = xor i64 %2994, %2990
  %3005 = xor i64 %3004, %2995
  %3006 = lshr i64 %3005, 4
  %3007 = trunc i64 %3006 to i8
  %3008 = and i8 %3007, 1
  store i8 %3008, i8* %35, align 1, !tbaa !2450
  %3009 = icmp eq i64 %2995, 0
  %3010 = zext i1 %3009 to i8
  store i8 %3010, i8* %38, align 1, !tbaa !2447
  %3011 = lshr i64 %2995, 63
  %3012 = trunc i64 %3011 to i8
  store i8 %3012, i8* %41, align 1, !tbaa !2448
  %3013 = lshr i64 %2990, 63
  %3014 = lshr i64 %2994, 63
  %3015 = xor i64 %3014, %3013
  %3016 = xor i64 %3011, %3013
  %3017 = add nuw nsw i64 %3016, %3015
  %3018 = icmp eq i64 %3017, 2
  %3019 = zext i1 %3018 to i8
  store i8 %3019, i8* %47, align 1, !tbaa !2449
  %3020 = icmp ne i8 %3012, 0
  %3021 = xor i1 %3020, %3018
  %.demorgan220 = or i1 %3009, %3021
  %.v235 = select i1 %.demorgan220, i64 14, i64 178
  %3022 = add i64 %2985, %.v235
  %3023 = add i64 %3022, 10
  store i64 %3023, i64* %PC, align 8
  br i1 %.demorgan220, label %block_400bed, label %block_400c91

block_401195:                                     ; preds = %block_4011aa, %block_400f3f
  %3024 = phi i64 [ %2673, %block_4011aa ], [ %.pre213, %block_400f3f ]
  %3025 = load i64, i64* %RBP, align 8
  %3026 = add i64 %3025, -72
  %3027 = add i64 %3024, 4
  store i64 %3027, i64* %PC, align 8
  %3028 = inttoptr i64 %3026 to i64*
  %3029 = load i64, i64* %3028, align 8
  store i64 %3029, i64* %RAX, align 8, !tbaa !2428
  %3030 = add i64 %3025, -80
  %3031 = add i64 %3024, 8
  store i64 %3031, i64* %PC, align 8
  %3032 = inttoptr i64 %3030 to i64*
  %3033 = load i64, i64* %3032, align 8
  %3034 = add i64 %3033, -1
  store i64 %3034, i64* %RCX, align 8, !tbaa !2428
  %3035 = lshr i64 %3034, 63
  %3036 = sub i64 %3029, %3034
  %3037 = icmp ult i64 %3029, %3034
  %3038 = zext i1 %3037 to i8
  store i8 %3038, i8* %23, align 1, !tbaa !2432
  %3039 = trunc i64 %3036 to i32
  %3040 = and i32 %3039, 255
  %3041 = tail call i32 @llvm.ctpop.i32(i32 %3040) #12
  %3042 = trunc i32 %3041 to i8
  %3043 = and i8 %3042, 1
  %3044 = xor i8 %3043, 1
  store i8 %3044, i8* %30, align 1, !tbaa !2446
  %3045 = xor i64 %3034, %3029
  %3046 = xor i64 %3045, %3036
  %3047 = lshr i64 %3046, 4
  %3048 = trunc i64 %3047 to i8
  %3049 = and i8 %3048, 1
  store i8 %3049, i8* %35, align 1, !tbaa !2450
  %3050 = icmp eq i64 %3036, 0
  %3051 = zext i1 %3050 to i8
  store i8 %3051, i8* %38, align 1, !tbaa !2447
  %3052 = lshr i64 %3036, 63
  %3053 = trunc i64 %3052 to i8
  store i8 %3053, i8* %41, align 1, !tbaa !2448
  %3054 = lshr i64 %3029, 63
  %3055 = xor i64 %3035, %3054
  %3056 = xor i64 %3052, %3054
  %3057 = add nuw nsw i64 %3056, %3055
  %3058 = icmp eq i64 %3057, 2
  %3059 = zext i1 %3058 to i8
  store i8 %3059, i8* %47, align 1, !tbaa !2449
  %3060 = icmp ne i8 %3053, 0
  %3061 = xor i1 %3060, %3058
  %.demorgan222 = or i1 %3050, %3061
  %.v229 = select i1 %.demorgan222, i64 21, i64 196
  %3062 = add i64 %3024, %.v229
  store i64 %3062, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan222, label %block_4011aa, label %block_401259

block_401514:                                     ; preds = %block_4014ff
  %3063 = add i64 %919, 6
  store i64 %3063, i64* %PC, align 8
  %3064 = load i64, i64* %885, align 8
  %3065 = sitofp i64 %3064 to double
  store double %3065, double* %74, align 1, !tbaa !2451
  %3066 = add i64 %882, -48
  %3067 = add i64 %919, 11
  store i64 %3067, i64* %PC, align 8
  %3068 = inttoptr i64 %3066 to double*
  %3069 = load double, double* %3068, align 8
  %3070 = fmul double %3065, %3069
  store double %3070, double* %74, align 1, !tbaa !2451
  %3071 = add i64 %882, -24
  %3072 = add i64 %919, 16
  store i64 %3072, i64* %PC, align 8
  %3073 = inttoptr i64 %3071 to double*
  store double %3070, double* %3073, align 8
  %3074 = load i64, i64* %RBP, align 8
  %3075 = add i64 %3074, -24
  %3076 = load i64, i64* %PC, align 8
  %3077 = add i64 %3076, 5
  store i64 %3077, i64* %PC, align 8
  %3078 = inttoptr i64 %3075 to i64*
  %3079 = load i64, i64* %3078, align 8
  store i64 %3079, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %3080 = add i64 %3076, 10
  store i64 %3080, i64* %PC, align 8
  %3081 = bitcast i64 %3079 to double
  %3082 = inttoptr i64 %3075 to double*
  %3083 = load double, double* %3082, align 8
  %3084 = fmul double %3081, %3083
  store double %3084, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %3085 = add i64 %3074, -40
  %3086 = add i64 %3076, 15
  store i64 %3086, i64* %PC, align 8
  %3087 = inttoptr i64 %3085 to double*
  store double %3084, double* %3087, align 8
  %3088 = load i64, i64* %RBP, align 8
  %3089 = add i64 %3088, -24
  %3090 = load i64, i64* %PC, align 8
  %3091 = add i64 %3090, 5
  store i64 %3091, i64* %PC, align 8
  %3092 = inttoptr i64 %3089 to i64*
  %3093 = load i64, i64* %3092, align 8
  store i64 %3093, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %3094 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %3094, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %3095 = add i64 %3088, -40
  %3096 = add i64 %3090, 19
  store i64 %3096, i64* %PC, align 8
  %.cast166 = bitcast i64 %3094 to double
  %3097 = inttoptr i64 %3095 to double*
  %3098 = load double, double* %3097, align 8
  %3099 = fmul double %.cast166, %3098
  %3100 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %3101 = fadd double %3099, %3100
  store double %3101, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3102 = add i64 %3090, 33
  store i64 %3102, i64* %PC, align 8
  %3103 = load double, double* %3097, align 8
  %3104 = fmul double %3101, %3103
  %3105 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %3106 = fadd double %3104, %3105
  store double %3106, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3107 = add i64 %3090, 47
  store i64 %3107, i64* %PC, align 8
  %3108 = load double, double* %3097, align 8
  %3109 = fmul double %3106, %3108
  %3110 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %3111 = fadd double %3109, %3110
  store double %3111, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3112 = add i64 %3090, 61
  store i64 %3112, i64* %PC, align 8
  %3113 = load double, double* %3097, align 8
  %3114 = fmul double %3111, %3113
  %3115 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %3116 = fadd double %3114, %3115
  store double %3116, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3117 = add i64 %3090, 75
  store i64 %3117, i64* %PC, align 8
  %3118 = load double, double* %3097, align 8
  %3119 = fmul double %3116, %3118
  %3120 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %3121 = fadd double %3119, %3120
  store double %3121, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3122 = add i64 %3090, 89
  store i64 %3122, i64* %PC, align 8
  %3123 = load double, double* %3097, align 8
  %3124 = fmul double %3121, %3123
  %3125 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3126 = fadd double %3124, %3125
  store double %3126, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3127 = bitcast i64 %3093 to double
  %3128 = fmul double %3126, %3127
  store double %3128, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %3129 = add i64 %3088, -32
  %3130 = add i64 %3090, 107
  store i64 %3130, i64* %PC, align 8
  %3131 = inttoptr i64 %3129 to double*
  store double %3128, double* %3131, align 8
  %3132 = load i64, i64* %RBP, align 8
  %3133 = add i64 %3132, -16
  %3134 = load i64, i64* %PC, align 8
  %3135 = add i64 %3134, 5
  store i64 %3135, i64* %PC, align 8
  %3136 = inttoptr i64 %3133 to i64*
  %3137 = load i64, i64* %3136, align 8
  store i64 %3137, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %3138 = add i64 %3132, -32
  %3139 = add i64 %3134, 10
  store i64 %3139, i64* %PC, align 8
  %3140 = inttoptr i64 %3138 to i64*
  %3141 = load i64, i64* %3140, align 8
  store i64 %3141, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %3142 = add i64 %3132, -40
  %3143 = add i64 %3134, 15
  store i64 %3143, i64* %PC, align 8
  %3144 = inttoptr i64 %3142 to i64*
  %3145 = load i64, i64* %3144, align 8
  store i64 %3145, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3146 = add i64 %3134, 20
  store i64 %3146, i64* %PC, align 8
  %3147 = load i64, i64* %3144, align 8
  store i64 %3147, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %3148 = add i64 %3134, 25
  store i64 %3148, i64* %PC, align 8
  %3149 = load i64, i64* %3144, align 8
  store i64 %3149, i64* %97, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %3150 = add i64 %3134, 30
  store i64 %3150, i64* %PC, align 8
  %3151 = load i64, i64* %3144, align 8
  store i64 %3151, i64* %102, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %3152 = add i64 %3134, 35
  store i64 %3152, i64* %PC, align 8
  %3153 = load i64, i64* %3144, align 8
  store i64 %3153, i64* %107, align 1, !tbaa !2451
  store double 0.000000e+00, double* %109, align 1, !tbaa !2451
  %3154 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  store i64 %3154, i64* %209, align 1, !tbaa !2451
  store double 0.000000e+00, double* %211, align 1, !tbaa !2451
  %3155 = add i64 %3134, 49
  store i64 %3155, i64* %PC, align 8
  %.cast167 = bitcast i64 %3154 to double
  %3156 = inttoptr i64 %3142 to double*
  %3157 = load double, double* %3156, align 8
  %3158 = fmul double %.cast167, %3157
  %3159 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %3160 = fadd double %3158, %3159
  store double %3160, double* %121, align 1, !tbaa !2451
  store i64 0, i64* %210, align 1, !tbaa !2451
  %3161 = bitcast i64 %3153 to double
  %3162 = fmul double %3160, %3161
  %3163 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %3164 = fadd double %3162, %3163
  store double %3164, double* %106, align 1, !tbaa !2451
  store i64 0, i64* %108, align 1, !tbaa !2451
  %3165 = bitcast i64 %3151 to double
  %3166 = fmul double %3164, %3165
  %3167 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %3168 = fadd double %3166, %3167
  store double %3168, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %3169 = bitcast i64 %3149 to double
  %3170 = fmul double %3168, %3169
  %3171 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %3172 = fadd double %3170, %3171
  store double %3172, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %3173 = bitcast i64 %3147 to double
  %3174 = fmul double %3172, %3173
  %3175 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %3176 = fadd double %3174, %3175
  store double %3176, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %3177 = bitcast i64 %3145 to double
  %3178 = fmul double %3176, %3177
  %3179 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3180 = fadd double %3178, %3179
  store double %3180, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3181 = load double, double* %80, align 1
  %3182 = fdiv double %3181, %3180
  store double %3182, double* %80, align 1, !tbaa !2451
  %3183 = load double, double* %74, align 1
  %3184 = fadd double %3182, %3183
  store double %3184, double* %74, align 1, !tbaa !2451
  %3185 = load i64, i64* %RBP, align 8
  %3186 = add i64 %3185, -16
  %3187 = add i64 %3134, 136
  store i64 %3187, i64* %PC, align 8
  %3188 = inttoptr i64 %3186 to double*
  store double %3184, double* %3188, align 8
  %3189 = load i64, i64* %RBP, align 8
  %3190 = add i64 %3189, -72
  %3191 = load i64, i64* %PC, align 8
  %3192 = add i64 %3191, 4
  store i64 %3192, i64* %PC, align 8
  %3193 = inttoptr i64 %3190 to i64*
  %3194 = load i64, i64* %3193, align 8
  %3195 = add i64 %3194, 1
  store i64 %3195, i64* %RAX, align 8, !tbaa !2428
  %3196 = icmp eq i64 %3194, -1
  %3197 = icmp eq i64 %3195, 0
  %3198 = or i1 %3196, %3197
  %3199 = zext i1 %3198 to i8
  store i8 %3199, i8* %23, align 1, !tbaa !2432
  %3200 = trunc i64 %3195 to i32
  %3201 = and i32 %3200, 255
  %3202 = tail call i32 @llvm.ctpop.i32(i32 %3201) #12
  %3203 = trunc i32 %3202 to i8
  %3204 = and i8 %3203, 1
  %3205 = xor i8 %3204, 1
  store i8 %3205, i8* %30, align 1, !tbaa !2446
  %3206 = xor i64 %3195, %3194
  %3207 = lshr i64 %3206, 4
  %3208 = trunc i64 %3207 to i8
  %3209 = and i8 %3208, 1
  store i8 %3209, i8* %35, align 1, !tbaa !2450
  %3210 = zext i1 %3197 to i8
  store i8 %3210, i8* %38, align 1, !tbaa !2447
  %3211 = lshr i64 %3195, 63
  %3212 = trunc i64 %3211 to i8
  store i8 %3212, i8* %41, align 1, !tbaa !2448
  %3213 = lshr i64 %3194, 63
  %3214 = xor i64 %3211, %3213
  %3215 = add nuw nsw i64 %3214, %3211
  %3216 = icmp eq i64 %3215, 2
  %3217 = zext i1 %3216 to i8
  store i8 %3217, i8* %47, align 1, !tbaa !2449
  %3218 = add i64 %3191, 12
  store i64 %3218, i64* %PC, align 8
  store i64 %3195, i64* %3193, align 8
  %3219 = load i64, i64* %PC, align 8
  %3220 = add i64 %3219, -307
  store i64 %3220, i64* %PC, align 8, !tbaa !2428
  br label %block_4014ff

block_400b93:                                     ; preds = %block_400b87, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %3221 = phi i64 [ %4010, %block_400b87 ], [ %1777, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1 ]
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %3222 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %3222, align 1, !tbaa !2454
  %3223 = load i64, i64* %RBP, align 8
  %3224 = add i64 %3223, -80
  %3225 = add i64 %3221, 19
  store i64 %3225, i64* %PC, align 8
  %3226 = inttoptr i64 %3224 to i64*
  %3227 = load i64, i64* %3226, align 8
  %3228 = sitofp i64 %3227 to double
  store double %3228, double* bitcast (%sc_type* @sc to double*), align 8
  %3229 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %3229, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %3230 = add i64 %3223, -24
  %3231 = add i64 %3221, 42
  store i64 %3231, i64* %PC, align 8
  %3232 = inttoptr i64 %3230 to i64*
  store i64 %3229, i64* %3232, align 8
  %3233 = load i64, i64* %RBP, align 8
  %3234 = add i64 %3233, -32
  %3235 = load i64, i64* %PC, align 8
  %3236 = add i64 %3235, 5
  store i64 %3236, i64* %PC, align 8
  %3237 = load i64, i64* %75, align 1
  %3238 = inttoptr i64 %3234 to i64*
  store i64 %3237, i64* %3238, align 8
  %3239 = load i64, i64* %RBP, align 8
  %3240 = add i64 %3239, -40
  %3241 = load i64, i64* %PC, align 8
  %3242 = add i64 %3241, 5
  store i64 %3242, i64* %PC, align 8
  %3243 = load i64, i64* %75, align 1
  %3244 = inttoptr i64 %3240 to i64*
  store i64 %3243, i64* %3244, align 8
  %3245 = load i64, i64* %RBP, align 8
  %3246 = add i64 %3245, -48
  %3247 = load i64, i64* %PC, align 8
  %3248 = add i64 %3247, 5
  store i64 %3248, i64* %PC, align 8
  %3249 = load i64, i64* %75, align 1
  %3250 = inttoptr i64 %3246 to i64*
  store i64 %3249, i64* %3250, align 8
  %3251 = load i64, i64* %PC, align 8
  %3252 = add i64 %3251, 6676
  %3253 = add i64 %3251, 5
  %3254 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3255 = add i64 %3254, -8
  %3256 = inttoptr i64 %3255 to i64*
  store i64 %3253, i64* %3256, align 8
  store i64 %3255, i64* %RSP, align 8, !tbaa !2428
  store i64 %3252, i64* %PC, align 8, !tbaa !2428
  %3257 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %3252, %struct.Memory* %1770)
  %3258 = load i64, i64* %RBP, align 8
  %3259 = add i64 %3258, -72
  %3260 = load i64, i64* %PC, align 8
  %3261 = add i64 %3260, 8
  store i64 %3261, i64* %PC, align 8
  %3262 = inttoptr i64 %3259 to i64*
  store i64 1, i64* %3262, align 8
  %3263 = load i64, i64* %RBP, align 8
  %3264 = add i64 %3263, -152
  %3265 = load i32, i32* %EAX, align 4
  %3266 = load i64, i64* %PC, align 8
  %3267 = add i64 %3266, 6
  store i64 %3267, i64* %PC, align 8
  %3268 = inttoptr i64 %3264 to i32*
  store i32 %3265, i32* %3268, align 4
  %.pre211 = load i64, i64* %PC, align 8
  br label %block_400bdf

block_400889:                                     ; preds = %block_40085e
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %3269 = add i64 %3357, 7511
  %3270 = add i64 %3357, 15
  %3271 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3272 = add i64 %3271, -8
  %3273 = inttoptr i64 %3272 to i64*
  store i64 %3270, i64* %3273, align 8
  store i64 %3272, i64* %RSP, align 8, !tbaa !2428
  store i64 %3269, i64* %PC, align 8, !tbaa !2428
  %3274 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %3269, %struct.Memory* %2549)
  %3275 = load i64, i64* %PC, align 8
  %3276 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %3276, align 1, !tbaa !2454
  %3277 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %3278 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %3279 = fmul double %3277, %3278
  store double %3279, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  store double %3279, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %3280 = add i64 %3275, 39
  store i64 %3280, i64* %PC, align 8
  %3281 = load double, double* %74, align 1
  %3282 = fcmp uno double %3281, %3279
  br i1 %3282, label %3283, label %3293

; <label>:3283:                                   ; preds = %block_400889
  %3284 = fadd double %3279, %3281
  %3285 = bitcast double %3284 to i64
  %3286 = and i64 %3285, 9221120237041090560
  %3287 = icmp eq i64 %3286, 9218868437227405312
  %3288 = and i64 %3285, 2251799813685247
  %3289 = icmp ne i64 %3288, 0
  %3290 = and i1 %3287, %3289
  br i1 %3290, label %3291, label %3299

; <label>:3291:                                   ; preds = %3283
  %3292 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3280, %struct.Memory* %3274) #13
  %.pre207 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:3293:                                   ; preds = %block_400889
  %3294 = fcmp ogt double %3281, %3279
  br i1 %3294, label %3299, label %3295

; <label>:3295:                                   ; preds = %3293
  %3296 = fcmp olt double %3281, %3279
  br i1 %3296, label %3299, label %3297

; <label>:3297:                                   ; preds = %3295
  %3298 = fcmp oeq double %3281, %3279
  br i1 %3298, label %3299, label %3303

; <label>:3299:                                   ; preds = %3297, %3295, %3293, %3283
  %3300 = phi i8 [ 0, %3293 ], [ 0, %3295 ], [ 1, %3297 ], [ 1, %3283 ]
  %3301 = phi i8 [ 0, %3293 ], [ 0, %3295 ], [ 0, %3297 ], [ 1, %3283 ]
  %3302 = phi i8 [ 0, %3293 ], [ 1, %3295 ], [ 0, %3297 ], [ 1, %3283 ]
  store i8 %3300, i8* %38, align 1, !tbaa !2453
  store i8 %3301, i8* %30, align 1, !tbaa !2453
  store i8 %3302, i8* %23, align 1, !tbaa !2453
  br label %3303

; <label>:3303:                                   ; preds = %3299, %3297
  store i8 0, i8* %47, align 1, !tbaa !2453
  store i8 0, i8* %41, align 1, !tbaa !2453
  store i8 0, i8* %35, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %3303, %3291
  %3304 = phi i64 [ %.pre207, %3291 ], [ %3280, %3303 ]
  %3305 = phi %struct.Memory* [ %3292, %3291 ], [ %3274, %3303 ]
  %3306 = load i64, i64* %RBP, align 8
  %3307 = add i64 %3306, -128
  %3308 = load i32, i32* %EAX, align 4
  %3309 = add i64 %3304, 3
  store i64 %3309, i64* %PC, align 8
  %3310 = inttoptr i64 %3307 to i32*
  store i32 %3308, i32* %3310, align 4
  %3311 = load i64, i64* %PC, align 8
  %3312 = add i64 %3311, 18
  %3313 = add i64 %3311, 6
  %3314 = load i8, i8* %23, align 1, !tbaa !2432
  %3315 = load i8, i8* %38, align 1, !tbaa !2447
  %3316 = or i8 %3315, %3314
  %3317 = icmp ne i8 %3316, 0
  %3318 = select i1 %3317, i64 %3312, i64 %3313
  store i64 %3318, i64* %PC, align 8, !tbaa !2428
  br i1 %3317, label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_4008d4_crit_edge, label %block_4008c8

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_4008d4_crit_edge: ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %.pre208 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  br label %block_4008d4

block_40085e:                                     ; preds = %block_400873, %block_400821
  %3319 = phi i64 [ %2702, %block_400873 ], [ %.pre206, %block_400821 ]
  %3320 = load i64, i64* %RBP, align 8
  %3321 = add i64 %3320, -72
  %3322 = add i64 %3319, 4
  store i64 %3322, i64* %PC, align 8
  %3323 = inttoptr i64 %3321 to i64*
  %3324 = load i64, i64* %3323, align 8
  store i64 %3324, i64* %RAX, align 8, !tbaa !2428
  %3325 = add i64 %3320, -88
  %3326 = add i64 %3319, 8
  store i64 %3326, i64* %PC, align 8
  %3327 = inttoptr i64 %3325 to i64*
  %3328 = load i64, i64* %3327, align 8
  %3329 = add i64 %3328, -1
  store i64 %3329, i64* %RCX, align 8, !tbaa !2428
  %3330 = lshr i64 %3329, 63
  %3331 = sub i64 %3324, %3329
  %3332 = icmp ult i64 %3324, %3329
  %3333 = zext i1 %3332 to i8
  store i8 %3333, i8* %23, align 1, !tbaa !2432
  %3334 = trunc i64 %3331 to i32
  %3335 = and i32 %3334, 255
  %3336 = tail call i32 @llvm.ctpop.i32(i32 %3335) #12
  %3337 = trunc i32 %3336 to i8
  %3338 = and i8 %3337, 1
  %3339 = xor i8 %3338, 1
  store i8 %3339, i8* %30, align 1, !tbaa !2446
  %3340 = xor i64 %3329, %3324
  %3341 = xor i64 %3340, %3331
  %3342 = lshr i64 %3341, 4
  %3343 = trunc i64 %3342 to i8
  %3344 = and i8 %3343, 1
  store i8 %3344, i8* %35, align 1, !tbaa !2450
  %3345 = icmp eq i64 %3331, 0
  %3346 = zext i1 %3345 to i8
  store i8 %3346, i8* %38, align 1, !tbaa !2447
  %3347 = lshr i64 %3331, 63
  %3348 = trunc i64 %3347 to i8
  store i8 %3348, i8* %41, align 1, !tbaa !2448
  %3349 = lshr i64 %3324, 63
  %3350 = xor i64 %3330, %3349
  %3351 = xor i64 %3347, %3349
  %3352 = add nuw nsw i64 %3351, %3350
  %3353 = icmp eq i64 %3352, 2
  %3354 = zext i1 %3353 to i8
  store i8 %3354, i8* %47, align 1, !tbaa !2449
  %3355 = icmp ne i8 %3348, 0
  %3356 = xor i1 %3355, %3353
  %.demorgan218 = or i1 %3345, %3356
  %.v = select i1 %.demorgan218, i64 21, i64 43
  %3357 = add i64 %3319, %.v
  store i64 %3357, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan218, label %block_400873, label %block_400889

block_400c91:                                     ; preds = %block_400bdf
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %3358 = add i64 %3022, 6479
  %3359 = add i64 %3022, 15
  %3360 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3361 = add i64 %3360, -8
  %3362 = inttoptr i64 %3361 to i64*
  store i64 %3359, i64* %3362, align 8
  store i64 %3361, i64* %RSP, align 8, !tbaa !2428
  store i64 %3358, i64* %PC, align 8, !tbaa !2428
  %3363 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %3358, %struct.Memory* %3257)
  %3364 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 426), i64* %RDI, align 8, !tbaa !2428
  %3365 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to i64*), align 8
  store i64 %3365, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %3366 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 96) to i64*), align 16
  store i64 %3366, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %3367 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 104) to double*), align 8
  %3368 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %3369 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %3370 = fmul double %3368, %3369
  store double %3370, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 48) to double*), align 16
  %3371 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to double*), align 8
  %3372 = fsub double %3370, %3371
  %3373 = fdiv double %3372, %3367
  store double %3373, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  store double %3373, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 56) to double*), align 8
  %3374 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %3374, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3375 = load i64, i64* %RBP, align 8
  %3376 = add i64 %3375, -48
  %3377 = add i64 %3364, 106
  store i64 %3377, i64* %PC, align 8
  %.cast157 = bitcast i64 %3374 to double
  %3378 = inttoptr i64 %3376 to double*
  %3379 = load double, double* %3378, align 8
  %3380 = fmul double %.cast157, %3379
  %3381 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %3382 = fdiv double %3380, %3381
  %3383 = tail call double @llvm.trunc.f64(double %3382) #12
  %3384 = tail call double @llvm.fabs.f64(double %3383) #12
  %3385 = fcmp ogt double %3384, 0x43E0000000000000
  %3386 = fptosi double %3383 to i64
  %3387 = select i1 %3385, i64 -9223372036854775808, i64 %3386
  store i64 %3387, i64* %RCX, align 8, !tbaa !2428
  %3388 = add i64 %3375, -80
  %3389 = add i64 %3364, 124
  store i64 %3389, i64* %PC, align 8
  %3390 = inttoptr i64 %3388 to i64*
  store i64 %3387, i64* %3390, align 8
  %3391 = load i64, i64* %PC, align 8
  %3392 = load i64, i64* bitcast (%four_type* @four to i64*), align 8
  store i64 %3392, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3393 = load i64, i64* %RBP, align 8
  %3394 = add i64 %3393, -40
  %3395 = add i64 %3391, 14
  store i64 %3395, i64* %PC, align 8
  %.cast158 = bitcast i64 %3392 to double
  %3396 = inttoptr i64 %3394 to double*
  %3397 = load double, double* %3396, align 8
  %3398 = fmul double %.cast158, %3397
  %3399 = load double, double* bitcast (%five_type* @five to double*), align 8
  %3400 = fdiv double %3398, %3399
  store double %3400, double* bitcast (%sa_type* @sa to double*), align 8
  store double %3400, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3401 = bitcast %union.VectorReg* %8 to double*
  store double %3399, double* %3401, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %3402 = add i64 %3393, -32
  %3403 = add i64 %3391, 55
  store i64 %3403, i64* %PC, align 8
  %3404 = inttoptr i64 %3402 to double*
  %3405 = load double, double* %3404, align 8
  %3406 = fdiv double %3399, %3405
  store double %3406, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %3407 = fadd double %3400, %3406
  store double %3407, double* bitcast (%sb_type* @sb to double*), align 8
  %3408 = load i64, i64* %81, align 1
  store i64 %3408, i64* bitcast (%sc_type* @sc to i64*), align 8
  %3409 = bitcast %union.VectorReg* %6 to double*
  store double %3407, double* %3409, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  store i64 %3408, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3410 = add i64 %3391, 100
  store i64 %3410, i64* %PC, align 8
  %3411 = inttoptr i64 %3402 to i64*
  %3412 = load i64, i64* %3411, align 8
  store i64 %3412, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %3413 = add i64 %3391, 105
  store i64 %3413, i64* %PC, align 8
  %3414 = bitcast i64 %3412 to double
  %3415 = load double, double* %3404, align 8
  %3416 = fmul double %3414, %3415
  store double %3416, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %3417 = add i64 %3391, 110
  store i64 %3417, i64* %PC, align 8
  %3418 = load double, double* %3404, align 8
  %3419 = fmul double %3416, %3418
  store double %3419, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %3420 = bitcast i64 %3408 to double
  %3421 = fdiv double %3420, %3419
  %3422 = fsub double %3407, %3421
  store double %3422, double* bitcast (%piprg_type* @piprg to double*), align 8
  %3423 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %3424 = fsub double %3422, %3423
  store double %3424, double* bitcast (%pierr_type* @pierr to double*), align 8
  %3425 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3426 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 56) to double*), align 8
  %3427 = fdiv double %3425, %3426
  store double %3427, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 64) to double*), align 16
  %3428 = load <2 x i32>, <2 x i32>* %1369, align 1
  %3429 = load <2 x i32>, <2 x i32>* %1371, align 1
  %3430 = extractelement <2 x i32> %3428, i32 0
  store i32 %3430, i32* %1374, align 1, !tbaa !2455
  %3431 = extractelement <2 x i32> %3428, i32 1
  store i32 %3431, i32* %1377, align 1, !tbaa !2455
  %3432 = extractelement <2 x i32> %3429, i32 0
  store i32 %3432, i32* %1379, align 1, !tbaa !2455
  %3433 = extractelement <2 x i32> %3429, i32 1
  store i32 %3433, i32* %1382, align 1, !tbaa !2455
  %3434 = load double, double* %80, align 1
  %3435 = load double, double* bitcast (%pierr_type* @pierr to double*), align 8
  %3436 = fmul double %3434, %3435
  store double %3436, double* %80, align 1, !tbaa !2451
  %3437 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 48) to double*), align 16
  %3438 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to double*), align 8
  %3439 = fsub double %3437, %3438
  %3440 = bitcast <2 x i32> %3428 to double
  %3441 = fmul double %3439, %3440
  store double %3441, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3442 = fmul double %3440, %3427
  %3443 = load i64, i64* %RBP, align 8
  %3444 = add i64 %3443, -160
  %3445 = add i64 %3391, 232
  store i64 %3445, i64* %PC, align 8
  %3446 = inttoptr i64 %3444 to double*
  store double %3442, double* %3446, align 8
  %3447 = load i64, i64* %PC, align 8
  %3448 = load <2 x i32>, <2 x i32>* %1402, align 1
  %3449 = load <2 x i32>, <2 x i32>* %1404, align 1
  %3450 = extractelement <2 x i32> %3448, i32 0
  store i32 %3450, i32* %187, align 1, !tbaa !2455
  %3451 = extractelement <2 x i32> %3448, i32 1
  store i32 %3451, i32* %189, align 1, !tbaa !2455
  %3452 = extractelement <2 x i32> %3449, i32 0
  store i32 %3452, i32* %190, align 1, !tbaa !2455
  %3453 = extractelement <2 x i32> %3449, i32 1
  store i32 %3453, i32* %192, align 1, !tbaa !2455
  %3454 = load <2 x i32>, <2 x i32>* %1410, align 1
  %3455 = load <2 x i32>, <2 x i32>* %1412, align 1
  %3456 = extractelement <2 x i32> %3454, i32 0
  store i32 %3456, i32* %1374, align 1, !tbaa !2455
  %3457 = extractelement <2 x i32> %3454, i32 1
  store i32 %3457, i32* %1377, align 1, !tbaa !2455
  %3458 = extractelement <2 x i32> %3455, i32 0
  store i32 %3458, i32* %1379, align 1, !tbaa !2455
  %3459 = extractelement <2 x i32> %3455, i32 1
  store i32 %3459, i32* %1382, align 1, !tbaa !2455
  %3460 = load i64, i64* %RBP, align 8
  %3461 = add i64 %3460, -160
  %3462 = add i64 %3447, 14
  store i64 %3462, i64* %PC, align 8
  %3463 = inttoptr i64 %3461 to i64*
  %3464 = load i64, i64* %3463, align 8
  store i64 %3464, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3465 = add i64 %3460, -164
  %3466 = load i32, i32* %EAX, align 4
  %3467 = add i64 %3447, 20
  store i64 %3467, i64* %PC, align 8
  %3468 = inttoptr i64 %3465 to i32*
  store i32 %3466, i32* %3468, align 4
  %3469 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %3470 = add i64 %3469, -2504
  %3471 = add i64 %3469, 7
  %3472 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3473 = add i64 %3472, -8
  %3474 = inttoptr i64 %3473 to i64*
  store i64 %3471, i64* %3474, align 8
  store i64 %3473, i64* %RSP, align 8, !tbaa !2428
  store i64 %3470, i64* %PC, align 8, !tbaa !2428
  %3475 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %3363)
  %3476 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i32 0, i32* %187, align 1, !tbaa !2454
  store i32 0, i32* %189, align 1, !tbaa !2454
  store i32 0, i32* %190, align 1, !tbaa !2454
  store i32 0, i32* %192, align 1, !tbaa !2454
  %3477 = load i64, i64* bitcast (%piref_type* @piref to i64*), align 8
  store i64 %3477, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %3478 = load i64, i64* bitcast (%three_type* @three to i64*), align 8
  store i64 %3478, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3479 = load i64, i64* %RBP, align 8
  %3480 = add i64 %3479, -80
  %3481 = add i64 %3476, 37
  store i64 %3481, i64* %PC, align 8
  %3482 = inttoptr i64 %3480 to i64*
  %3483 = load i64, i64* %3482, align 8
  %3484 = sitofp i64 %3483 to double
  store double %3484, double* %91, align 1, !tbaa !2451
  %3485 = bitcast i64 %3478 to double
  %3486 = fmul double %3484, %3485
  store double %3486, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3487 = bitcast i64 %3477 to double
  %3488 = fdiv double %3487, %3486
  store double %3488, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3489 = add i64 %3479, -48
  %3490 = add i64 %3476, 50
  store i64 %3490, i64* %PC, align 8
  %3491 = inttoptr i64 %3489 to double*
  store double %3488, double* %3491, align 8
  %3492 = load i64, i64* %RBP, align 8
  %3493 = add i64 %3492, -16
  %3494 = load i64, i64* %PC, align 8
  %3495 = add i64 %3494, 5
  store i64 %3495, i64* %PC, align 8
  %3496 = load i64, i64* %75, align 1
  %3497 = inttoptr i64 %3493 to i64*
  store i64 %3496, i64* %3497, align 8
  %3498 = load i64, i64* %RBP, align 8
  %3499 = add i64 %3498, -32
  %3500 = load i64, i64* %PC, align 8
  %3501 = add i64 %3500, 5
  store i64 %3501, i64* %PC, align 8
  %3502 = load i64, i64* %75, align 1
  %3503 = inttoptr i64 %3499 to i64*
  store i64 %3502, i64* %3503, align 8
  %3504 = load i64, i64* %RBP, align 8
  %3505 = add i64 %3504, -168
  %3506 = load i32, i32* %EAX, align 4
  %3507 = load i64, i64* %PC, align 8
  %3508 = add i64 %3507, 6
  store i64 %3508, i64* %PC, align 8
  %3509 = inttoptr i64 %3505 to i32*
  store i32 %3506, i32* %3509, align 4
  %3510 = load i64, i64* %PC, align 8
  %3511 = add i64 %3510, 6015
  %3512 = add i64 %3510, 5
  %3513 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3514 = add i64 %3513, -8
  %3515 = inttoptr i64 %3514 to i64*
  store i64 %3512, i64* %3515, align 8
  store i64 %3514, i64* %RSP, align 8, !tbaa !2428
  store i64 %3511, i64* %PC, align 8, !tbaa !2428
  %3516 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %3511, %struct.Memory* %3475)
  %3517 = load i64, i64* %RBP, align 8
  %3518 = add i64 %3517, -72
  %3519 = load i64, i64* %PC, align 8
  %3520 = add i64 %3519, 8
  store i64 %3520, i64* %PC, align 8
  %3521 = inttoptr i64 %3518 to i64*
  store i64 1, i64* %3521, align 8
  %3522 = load i64, i64* %RBP, align 8
  %3523 = add i64 %3522, -172
  %3524 = load i32, i32* %EAX, align 4
  %3525 = load i64, i64* %PC, align 8
  %3526 = add i64 %3525, 6
  store i64 %3526, i64* %PC, align 8
  %3527 = inttoptr i64 %3523 to i32*
  store i32 %3524, i32* %3527, align 4
  %.pre212 = load i64, i64* %PC, align 8
  br label %block_400e74

block_400aee:                                     ; preds = %block_400afc, %block_4008d4
  %3528 = phi i64 [ %2502, %block_400afc ], [ %.pre209, %block_4008d4 ]
  %3529 = load i64, i64* %RBP, align 8
  %3530 = add i64 %3529, -72
  %3531 = add i64 %3528, 4
  store i64 %3531, i64* %PC, align 8
  %3532 = inttoptr i64 %3530 to i64*
  %3533 = load i64, i64* %3532, align 8
  store i64 %3533, i64* %RAX, align 8, !tbaa !2428
  %3534 = add i64 %3529, -80
  %3535 = add i64 %3528, 8
  store i64 %3535, i64* %PC, align 8
  %3536 = inttoptr i64 %3534 to i64*
  %3537 = load i64, i64* %3536, align 8
  %3538 = sub i64 %3533, %3537
  %3539 = icmp ult i64 %3533, %3537
  %3540 = zext i1 %3539 to i8
  store i8 %3540, i8* %23, align 1, !tbaa !2432
  %3541 = trunc i64 %3538 to i32
  %3542 = and i32 %3541, 255
  %3543 = tail call i32 @llvm.ctpop.i32(i32 %3542) #12
  %3544 = trunc i32 %3543 to i8
  %3545 = and i8 %3544, 1
  %3546 = xor i8 %3545, 1
  store i8 %3546, i8* %30, align 1, !tbaa !2446
  %3547 = xor i64 %3537, %3533
  %3548 = xor i64 %3547, %3538
  %3549 = lshr i64 %3548, 4
  %3550 = trunc i64 %3549 to i8
  %3551 = and i8 %3550, 1
  store i8 %3551, i8* %35, align 1, !tbaa !2450
  %3552 = icmp eq i64 %3538, 0
  %3553 = zext i1 %3552 to i8
  store i8 %3553, i8* %38, align 1, !tbaa !2447
  %3554 = lshr i64 %3538, 63
  %3555 = trunc i64 %3554 to i8
  store i8 %3555, i8* %41, align 1, !tbaa !2448
  %3556 = lshr i64 %3533, 63
  %3557 = lshr i64 %3537, 63
  %3558 = xor i64 %3557, %3556
  %3559 = xor i64 %3554, %3556
  %3560 = add nuw nsw i64 %3559, %3558
  %3561 = icmp eq i64 %3560, 2
  %3562 = zext i1 %3561 to i8
  store i8 %3562, i8* %47, align 1, !tbaa !2449
  %3563 = icmp ne i8 %3555, 0
  %3564 = xor i1 %3563, %3561
  %.demorgan219 = or i1 %3552, %3564
  %.v234 = select i1 %.demorgan219, i64 14, i64 87
  %3565 = add i64 %3528, %.v234
  %3566 = add i64 %3565, 10
  store i64 %3566, i64* %PC, align 8
  br i1 %.demorgan219, label %block_400afc, label %block_400b45

block_401f97:                                     ; preds = %block_401f82
  %3567 = add i64 %4086, 6
  store i64 %3567, i64* %PC, align 8
  %3568 = load i64, i64* %4052, align 8
  %3569 = sitofp i64 %3568 to double
  store double %3569, double* %74, align 1, !tbaa !2451
  %3570 = add i64 %4049, -48
  %3571 = add i64 %4086, 11
  store i64 %3571, i64* %PC, align 8
  %3572 = inttoptr i64 %3570 to double*
  %3573 = load double, double* %3572, align 8
  %3574 = fmul double %3569, %3573
  store double %3574, double* %74, align 1, !tbaa !2451
  %3575 = add i64 %4049, -24
  %3576 = add i64 %4086, 16
  store i64 %3576, i64* %PC, align 8
  %3577 = inttoptr i64 %3575 to double*
  store double %3574, double* %3577, align 8
  %3578 = load i64, i64* %RBP, align 8
  %3579 = add i64 %3578, -24
  %3580 = load i64, i64* %PC, align 8
  %3581 = add i64 %3580, 5
  store i64 %3581, i64* %PC, align 8
  %3582 = inttoptr i64 %3579 to i64*
  %3583 = load i64, i64* %3582, align 8
  store i64 %3583, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %3584 = add i64 %3580, 10
  store i64 %3584, i64* %PC, align 8
  %3585 = bitcast i64 %3583 to double
  %3586 = inttoptr i64 %3579 to double*
  %3587 = load double, double* %3586, align 8
  %3588 = fmul double %3585, %3587
  store double %3588, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %3589 = add i64 %3578, -40
  %3590 = add i64 %3580, 15
  store i64 %3590, i64* %PC, align 8
  %3591 = inttoptr i64 %3589 to double*
  store double %3588, double* %3591, align 8
  %3592 = load i64, i64* %RBP, align 8
  %3593 = add i64 %3592, -40
  %3594 = load i64, i64* %PC, align 8
  %3595 = add i64 %3594, 5
  store i64 %3595, i64* %PC, align 8
  %3596 = inttoptr i64 %3593 to i64*
  %3597 = load i64, i64* %3596, align 8
  store i64 %3597, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %3598 = add i64 %3594, 10
  store i64 %3598, i64* %PC, align 8
  %3599 = load i64, i64* %3596, align 8
  store i64 %3599, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %3600 = add i64 %3594, 15
  store i64 %3600, i64* %PC, align 8
  %3601 = load i64, i64* %3596, align 8
  store i64 %3601, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3602 = add i64 %3594, 20
  store i64 %3602, i64* %PC, align 8
  %3603 = load i64, i64* %3596, align 8
  store i64 %3603, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %3604 = add i64 %3594, 25
  store i64 %3604, i64* %PC, align 8
  %3605 = load i64, i64* %3596, align 8
  store i64 %3605, i64* %97, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %3606 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  store i64 %3606, i64* %102, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %3607 = add i64 %3594, 39
  store i64 %3607, i64* %PC, align 8
  %.cast176 = bitcast i64 %3606 to double
  %3608 = inttoptr i64 %3593 to double*
  %3609 = load double, double* %3608, align 8
  %3610 = fmul double %.cast176, %3609
  %3611 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %3612 = fadd double %3610, %3611
  store double %3612, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %3613 = bitcast i64 %3605 to double
  %3614 = fmul double %3612, %3613
  %3615 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %3616 = fadd double %3614, %3615
  store double %3616, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %3617 = bitcast i64 %3603 to double
  %3618 = fmul double %3616, %3617
  %3619 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %3620 = fadd double %3618, %3619
  store double %3620, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %3621 = bitcast i64 %3601 to double
  %3622 = fmul double %3620, %3621
  %3623 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %3624 = fadd double %3622, %3623
  store double %3624, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3625 = bitcast i64 %3599 to double
  %3626 = fmul double %3624, %3625
  %3627 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %3628 = fadd double %3626, %3627
  store double %3628, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3629 = bitcast i64 %3597 to double
  %3630 = fmul double %3628, %3629
  %3631 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3632 = fadd double %3630, %3631
  store double %3632, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %3633 = load i64, i64* %RBP, align 8
  %3634 = add i64 %3633, -32
  %3635 = add i64 %3594, 118
  store i64 %3635, i64* %PC, align 8
  %3636 = inttoptr i64 %3634 to double*
  store double %3632, double* %3636, align 8
  %3637 = load i64, i64* %RBP, align 8
  %3638 = add i64 %3637, -16
  %3639 = load i64, i64* %PC, align 8
  %3640 = add i64 %3639, 5
  store i64 %3640, i64* %PC, align 8
  %3641 = inttoptr i64 %3638 to i64*
  %3642 = load i64, i64* %3641, align 8
  store i64 %3642, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %3643 = add i64 %3637, -32
  %3644 = add i64 %3639, 10
  store i64 %3644, i64* %PC, align 8
  %3645 = inttoptr i64 %3643 to i64*
  %3646 = load i64, i64* %3645, align 8
  store i64 %3646, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %3647 = add i64 %3639, 15
  store i64 %3647, i64* %PC, align 8
  %3648 = bitcast i64 %3646 to double
  %3649 = inttoptr i64 %3643 to double*
  %3650 = load double, double* %3649, align 8
  %3651 = fmul double %3648, %3650
  store double %3651, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3652 = add i64 %3637, -24
  %3653 = add i64 %3639, 20
  store i64 %3653, i64* %PC, align 8
  %3654 = inttoptr i64 %3652 to double*
  %3655 = load double, double* %3654, align 8
  %3656 = fmul double %3651, %3655
  store double %3656, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3657 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %3657, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3658 = add i64 %3637, -40
  %3659 = add i64 %3639, 34
  store i64 %3659, i64* %PC, align 8
  %.cast177 = bitcast i64 %3657 to double
  %3660 = inttoptr i64 %3658 to double*
  %3661 = load double, double* %3660, align 8
  %3662 = fmul double %.cast177, %3661
  %3663 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %3664 = fadd double %3662, %3663
  store double %3664, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3665 = add i64 %3639, 48
  store i64 %3665, i64* %PC, align 8
  %3666 = load double, double* %3660, align 8
  %3667 = fmul double %3664, %3666
  %3668 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %3669 = fadd double %3667, %3668
  store double %3669, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3670 = add i64 %3639, 62
  store i64 %3670, i64* %PC, align 8
  %3671 = load double, double* %3660, align 8
  %3672 = fmul double %3669, %3671
  %3673 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %3674 = fadd double %3672, %3673
  store double %3674, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3675 = add i64 %3639, 76
  store i64 %3675, i64* %PC, align 8
  %3676 = load double, double* %3660, align 8
  %3677 = fmul double %3674, %3676
  %3678 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %3679 = fadd double %3677, %3678
  store double %3679, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3680 = add i64 %3639, 90
  store i64 %3680, i64* %PC, align 8
  %3681 = load double, double* %3660, align 8
  %3682 = fmul double %3679, %3681
  %3683 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %3684 = fadd double %3682, %3683
  store double %3684, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3685 = load i64, i64* %RBP, align 8
  %3686 = add i64 %3685, -40
  %3687 = add i64 %3639, 104
  store i64 %3687, i64* %PC, align 8
  %3688 = inttoptr i64 %3686 to double*
  %3689 = load double, double* %3688, align 8
  %3690 = fmul double %3684, %3689
  %3691 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3692 = fadd double %3690, %3691
  store double %3692, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3693 = fmul double %3692, %3656
  store double %3693, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3694 = load double, double* %74, align 1
  %3695 = fadd double %3693, %3694
  store double %3695, double* %74, align 1, !tbaa !2451
  %3696 = add i64 %3685, -16
  %3697 = add i64 %3639, 126
  store i64 %3697, i64* %PC, align 8
  %3698 = inttoptr i64 %3696 to double*
  store double %3695, double* %3698, align 8
  %3699 = load i64, i64* %RBP, align 8
  %3700 = add i64 %3699, -72
  %3701 = load i64, i64* %PC, align 8
  %3702 = add i64 %3701, 4
  store i64 %3702, i64* %PC, align 8
  %3703 = inttoptr i64 %3700 to i64*
  %3704 = load i64, i64* %3703, align 8
  %3705 = add i64 %3704, 1
  store i64 %3705, i64* %RAX, align 8, !tbaa !2428
  %3706 = icmp eq i64 %3704, -1
  %3707 = icmp eq i64 %3705, 0
  %3708 = or i1 %3706, %3707
  %3709 = zext i1 %3708 to i8
  store i8 %3709, i8* %23, align 1, !tbaa !2432
  %3710 = trunc i64 %3705 to i32
  %3711 = and i32 %3710, 255
  %3712 = tail call i32 @llvm.ctpop.i32(i32 %3711) #12
  %3713 = trunc i32 %3712 to i8
  %3714 = and i8 %3713, 1
  %3715 = xor i8 %3714, 1
  store i8 %3715, i8* %30, align 1, !tbaa !2446
  %3716 = xor i64 %3705, %3704
  %3717 = lshr i64 %3716, 4
  %3718 = trunc i64 %3717 to i8
  %3719 = and i8 %3718, 1
  store i8 %3719, i8* %35, align 1, !tbaa !2450
  %3720 = zext i1 %3707 to i8
  store i8 %3720, i8* %38, align 1, !tbaa !2447
  %3721 = lshr i64 %3705, 63
  %3722 = trunc i64 %3721 to i8
  store i8 %3722, i8* %41, align 1, !tbaa !2448
  %3723 = lshr i64 %3704, 63
  %3724 = xor i64 %3721, %3723
  %3725 = add nuw nsw i64 %3724, %3721
  %3726 = icmp eq i64 %3725, 2
  %3727 = zext i1 %3726 to i8
  store i8 %3727, i8* %47, align 1, !tbaa !2449
  %3728 = add i64 %3701, 12
  store i64 %3728, i64* %PC, align 8
  store i64 %3705, i64* %3703, align 8
  %3729 = load i64, i64* %PC, align 8
  %3730 = add i64 %3729, -308
  store i64 %3730, i64* %PC, align 8, !tbaa !2428
  br label %block_401f82

block_4018f3:                                     ; preds = %block_4018de
  %3731 = add i64 %1283, 6
  store i64 %3731, i64* %PC, align 8
  %3732 = load i64, i64* %1249, align 8
  %3733 = sitofp i64 %3732 to double
  store double %3733, double* %74, align 1, !tbaa !2451
  %3734 = add i64 %1246, -48
  %3735 = add i64 %1283, 11
  store i64 %3735, i64* %PC, align 8
  %3736 = inttoptr i64 %3734 to double*
  %3737 = load double, double* %3736, align 8
  %3738 = fmul double %3733, %3737
  store double %3738, double* %74, align 1, !tbaa !2451
  %3739 = add i64 %1246, -24
  %3740 = add i64 %1283, 16
  store i64 %3740, i64* %PC, align 8
  %3741 = inttoptr i64 %3739 to double*
  store double %3738, double* %3741, align 8
  %3742 = load i64, i64* %RBP, align 8
  %3743 = add i64 %3742, -24
  %3744 = load i64, i64* %PC, align 8
  %3745 = add i64 %3744, 5
  store i64 %3745, i64* %PC, align 8
  %3746 = inttoptr i64 %3743 to i64*
  %3747 = load i64, i64* %3746, align 8
  store i64 %3747, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %3748 = add i64 %3744, 10
  store i64 %3748, i64* %PC, align 8
  %3749 = bitcast i64 %3747 to double
  %3750 = inttoptr i64 %3743 to double*
  %3751 = load double, double* %3750, align 8
  %3752 = fmul double %3749, %3751
  store double %3752, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %3753 = add i64 %3742, -40
  %3754 = add i64 %3744, 15
  store i64 %3754, i64* %PC, align 8
  %3755 = inttoptr i64 %3753 to double*
  store double %3752, double* %3755, align 8
  %3756 = load i64, i64* %RBP, align 8
  %3757 = add i64 %3756, -24
  %3758 = load i64, i64* %PC, align 8
  %3759 = add i64 %3758, 5
  store i64 %3759, i64* %PC, align 8
  %3760 = inttoptr i64 %3757 to i64*
  %3761 = load i64, i64* %3760, align 8
  store i64 %3761, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %3762 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %3762, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %3763 = add i64 %3756, -40
  %3764 = add i64 %3758, 19
  store i64 %3764, i64* %PC, align 8
  %.cast170 = bitcast i64 %3762 to double
  %3765 = inttoptr i64 %3763 to double*
  %3766 = load double, double* %3765, align 8
  %3767 = fmul double %.cast170, %3766
  %3768 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %3769 = fadd double %3767, %3768
  store double %3769, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3770 = add i64 %3758, 33
  store i64 %3770, i64* %PC, align 8
  %3771 = load double, double* %3765, align 8
  %3772 = fmul double %3769, %3771
  %3773 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %3774 = fadd double %3772, %3773
  store double %3774, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3775 = add i64 %3758, 47
  store i64 %3775, i64* %PC, align 8
  %3776 = load double, double* %3765, align 8
  %3777 = fmul double %3774, %3776
  %3778 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %3779 = fadd double %3777, %3778
  store double %3779, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3780 = add i64 %3758, 61
  store i64 %3780, i64* %PC, align 8
  %3781 = load double, double* %3765, align 8
  %3782 = fmul double %3779, %3781
  %3783 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %3784 = fadd double %3782, %3783
  store double %3784, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3785 = add i64 %3758, 75
  store i64 %3785, i64* %PC, align 8
  %3786 = load double, double* %3765, align 8
  %3787 = fmul double %3784, %3786
  %3788 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %3789 = fadd double %3787, %3788
  store double %3789, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3790 = add i64 %3758, 89
  store i64 %3790, i64* %PC, align 8
  %3791 = load double, double* %3765, align 8
  %3792 = fmul double %3789, %3791
  %3793 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3794 = fadd double %3792, %3793
  store double %3794, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3795 = bitcast i64 %3761 to double
  %3796 = fmul double %3794, %3795
  store double %3796, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %3797 = add i64 %3756, -32
  %3798 = add i64 %3758, 107
  store i64 %3798, i64* %PC, align 8
  %3799 = inttoptr i64 %3797 to double*
  store double %3796, double* %3799, align 8
  %3800 = load i64, i64* %RBP, align 8
  %3801 = add i64 %3800, -16
  %3802 = load i64, i64* %PC, align 8
  %3803 = add i64 %3802, 5
  store i64 %3803, i64* %PC, align 8
  %3804 = inttoptr i64 %3801 to i64*
  %3805 = load i64, i64* %3804, align 8
  store i64 %3805, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %3806 = add i64 %3800, -32
  %3807 = add i64 %3802, 10
  store i64 %3807, i64* %PC, align 8
  %3808 = inttoptr i64 %3806 to i64*
  %3809 = load i64, i64* %3808, align 8
  store i64 %3809, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %3810 = add i64 %3800, -40
  %3811 = add i64 %3802, 15
  store i64 %3811, i64* %PC, align 8
  %3812 = inttoptr i64 %3810 to i64*
  %3813 = load i64, i64* %3812, align 8
  store i64 %3813, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3814 = add i64 %3802, 20
  store i64 %3814, i64* %PC, align 8
  %3815 = load i64, i64* %3812, align 8
  store i64 %3815, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %3816 = add i64 %3802, 25
  store i64 %3816, i64* %PC, align 8
  %3817 = load i64, i64* %3812, align 8
  store i64 %3817, i64* %97, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %3818 = add i64 %3802, 30
  store i64 %3818, i64* %PC, align 8
  %3819 = load i64, i64* %3812, align 8
  store i64 %3819, i64* %102, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %3820 = add i64 %3802, 35
  store i64 %3820, i64* %PC, align 8
  %3821 = load i64, i64* %3812, align 8
  store i64 %3821, i64* %107, align 1, !tbaa !2451
  store double 0.000000e+00, double* %109, align 1, !tbaa !2451
  %3822 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  store i64 %3822, i64* %209, align 1, !tbaa !2451
  store double 0.000000e+00, double* %211, align 1, !tbaa !2451
  %3823 = add i64 %3802, 49
  store i64 %3823, i64* %PC, align 8
  %.cast171 = bitcast i64 %3822 to double
  %3824 = inttoptr i64 %3810 to double*
  %3825 = load double, double* %3824, align 8
  %3826 = fmul double %.cast171, %3825
  %3827 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %3828 = fadd double %3826, %3827
  store double %3828, double* %121, align 1, !tbaa !2451
  store i64 0, i64* %210, align 1, !tbaa !2451
  %3829 = bitcast i64 %3821 to double
  %3830 = fmul double %3828, %3829
  %3831 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %3832 = fadd double %3830, %3831
  store double %3832, double* %106, align 1, !tbaa !2451
  store i64 0, i64* %108, align 1, !tbaa !2451
  %3833 = bitcast i64 %3819 to double
  %3834 = fmul double %3832, %3833
  %3835 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %3836 = fadd double %3834, %3835
  store double %3836, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %3837 = bitcast i64 %3817 to double
  %3838 = fmul double %3836, %3837
  %3839 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %3840 = fadd double %3838, %3839
  store double %3840, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %3841 = bitcast i64 %3815 to double
  %3842 = fmul double %3840, %3841
  %3843 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %3844 = fadd double %3842, %3843
  store double %3844, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %3845 = bitcast i64 %3813 to double
  %3846 = fmul double %3844, %3845
  %3847 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3848 = fadd double %3846, %3847
  store double %3848, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3849 = load double, double* %80, align 1
  %3850 = fmul double %3848, %3849
  store double %3850, double* %80, align 1, !tbaa !2451
  %3851 = load double, double* %74, align 1
  %3852 = fadd double %3850, %3851
  store double %3852, double* %74, align 1, !tbaa !2451
  %3853 = load i64, i64* %RBP, align 8
  %3854 = add i64 %3853, -16
  %3855 = add i64 %3802, 136
  store i64 %3855, i64* %PC, align 8
  %3856 = inttoptr i64 %3854 to double*
  store double %3852, double* %3856, align 8
  %3857 = load i64, i64* %RBP, align 8
  %3858 = add i64 %3857, -72
  %3859 = load i64, i64* %PC, align 8
  %3860 = add i64 %3859, 4
  store i64 %3860, i64* %PC, align 8
  %3861 = inttoptr i64 %3858 to i64*
  %3862 = load i64, i64* %3861, align 8
  %3863 = add i64 %3862, 1
  store i64 %3863, i64* %RAX, align 8, !tbaa !2428
  %3864 = icmp eq i64 %3862, -1
  %3865 = icmp eq i64 %3863, 0
  %3866 = or i1 %3864, %3865
  %3867 = zext i1 %3866 to i8
  store i8 %3867, i8* %23, align 1, !tbaa !2432
  %3868 = trunc i64 %3863 to i32
  %3869 = and i32 %3868, 255
  %3870 = tail call i32 @llvm.ctpop.i32(i32 %3869) #12
  %3871 = trunc i32 %3870 to i8
  %3872 = and i8 %3871, 1
  %3873 = xor i8 %3872, 1
  store i8 %3873, i8* %30, align 1, !tbaa !2446
  %3874 = xor i64 %3863, %3862
  %3875 = lshr i64 %3874, 4
  %3876 = trunc i64 %3875 to i8
  %3877 = and i8 %3876, 1
  store i8 %3877, i8* %35, align 1, !tbaa !2450
  %3878 = zext i1 %3865 to i8
  store i8 %3878, i8* %38, align 1, !tbaa !2447
  %3879 = lshr i64 %3863, 63
  %3880 = trunc i64 %3879 to i8
  store i8 %3880, i8* %41, align 1, !tbaa !2448
  %3881 = lshr i64 %3862, 63
  %3882 = xor i64 %3879, %3881
  %3883 = add nuw nsw i64 %3882, %3879
  %3884 = icmp eq i64 %3883, 2
  %3885 = zext i1 %3884 to i8
  store i8 %3885, i8* %47, align 1, !tbaa !2449
  %3886 = add i64 %3859, 12
  store i64 %3886, i64* %PC, align 8
  store i64 %3863, i64* %3861, align 8
  %3887 = load i64, i64* %PC, align 8
  %3888 = add i64 %3887, -307
  store i64 %3888, i64* %PC, align 8, !tbaa !2428
  br label %block_4018de

block_400e89:                                     ; preds = %block_400e74
  %3889 = add i64 %1207, -32
  %3890 = add i64 %1244, 5
  store i64 %3890, i64* %PC, align 8
  %3891 = inttoptr i64 %3889 to double*
  %3892 = load double, double* %3891, align 8
  %3893 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3894 = fadd double %3892, %3893
  store double %3894, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %3895 = add i64 %1244, 19
  store i64 %3895, i64* %PC, align 8
  %3896 = inttoptr i64 %3889 to double*
  store double %3894, double* %3896, align 8
  %3897 = load i64, i64* %RBP, align 8
  %3898 = add i64 %3897, -32
  %3899 = load i64, i64* %PC, align 8
  %3900 = add i64 %3899, 5
  store i64 %3900, i64* %PC, align 8
  %3901 = inttoptr i64 %3898 to i64*
  %3902 = load i64, i64* %3901, align 8
  store i64 %3902, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %3903 = add i64 %3897, -48
  %3904 = add i64 %3899, 10
  store i64 %3904, i64* %PC, align 8
  %3905 = bitcast i64 %3902 to double
  %3906 = inttoptr i64 %3903 to double*
  %3907 = load double, double* %3906, align 8
  %3908 = fmul double %3905, %3907
  store double %3908, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %3909 = add i64 %3897, -24
  %3910 = add i64 %3899, 15
  store i64 %3910, i64* %PC, align 8
  %3911 = inttoptr i64 %3909 to double*
  store double %3908, double* %3911, align 8
  %3912 = load i64, i64* %RBP, align 8
  %3913 = add i64 %3912, -24
  %3914 = load i64, i64* %PC, align 8
  %3915 = add i64 %3914, 5
  store i64 %3915, i64* %PC, align 8
  %3916 = inttoptr i64 %3913 to i64*
  %3917 = load i64, i64* %3916, align 8
  store i64 %3917, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %3918 = add i64 %3914, 10
  store i64 %3918, i64* %PC, align 8
  %3919 = bitcast i64 %3917 to double
  %3920 = inttoptr i64 %3913 to double*
  %3921 = load double, double* %3920, align 8
  %3922 = fmul double %3919, %3921
  store double %3922, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %3923 = add i64 %3912, -40
  %3924 = add i64 %3914, 15
  store i64 %3924, i64* %PC, align 8
  %3925 = inttoptr i64 %3923 to double*
  store double %3922, double* %3925, align 8
  %3926 = load i64, i64* %RBP, align 8
  %3927 = add i64 %3926, -16
  %3928 = load i64, i64* %PC, align 8
  %3929 = add i64 %3928, 5
  store i64 %3929, i64* %PC, align 8
  %3930 = inttoptr i64 %3927 to i64*
  %3931 = load i64, i64* %3930, align 8
  store i64 %3931, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %3932 = add i64 %3926, -24
  %3933 = add i64 %3928, 10
  store i64 %3933, i64* %PC, align 8
  %3934 = inttoptr i64 %3932 to i64*
  %3935 = load i64, i64* %3934, align 8
  store i64 %3935, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %3936 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %3936, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3937 = add i64 %3926, -40
  %3938 = add i64 %3928, 24
  store i64 %3938, i64* %PC, align 8
  %.cast160 = bitcast i64 %3936 to double
  %3939 = inttoptr i64 %3937 to double*
  %3940 = load double, double* %3939, align 8
  %3941 = fmul double %.cast160, %3940
  %3942 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %3943 = fsub double %3941, %3942
  store double %3943, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3944 = add i64 %3928, 38
  store i64 %3944, i64* %PC, align 8
  %3945 = load double, double* %3939, align 8
  %3946 = fmul double %3943, %3945
  %3947 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %3948 = fadd double %3946, %3947
  store double %3948, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3949 = add i64 %3928, 52
  store i64 %3949, i64* %PC, align 8
  %3950 = load double, double* %3939, align 8
  %3951 = fmul double %3948, %3950
  %3952 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %3953 = fsub double %3951, %3952
  store double %3953, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3954 = add i64 %3928, 66
  store i64 %3954, i64* %PC, align 8
  %3955 = load double, double* %3939, align 8
  %3956 = fmul double %3953, %3955
  %3957 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %3958 = fadd double %3956, %3957
  store double %3958, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3959 = add i64 %3928, 80
  store i64 %3959, i64* %PC, align 8
  %3960 = load double, double* %3939, align 8
  %3961 = fmul double %3958, %3960
  %3962 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %3963 = fadd double %3961, %3962
  store double %3963, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3964 = add i64 %3928, 94
  store i64 %3964, i64* %PC, align 8
  %3965 = load double, double* %3939, align 8
  %3966 = fmul double %3963, %3965
  %3967 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3968 = fadd double %3966, %3967
  store double %3968, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3969 = bitcast i64 %3935 to double
  %3970 = fmul double %3968, %3969
  store double %3970, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3971 = bitcast i64 %3931 to double
  %3972 = fadd double %3970, %3971
  store double %3972, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %3973 = load i64, i64* %RBP, align 8
  %3974 = add i64 %3973, -16
  %3975 = add i64 %3928, 116
  store i64 %3975, i64* %PC, align 8
  %3976 = inttoptr i64 %3974 to double*
  store double %3972, double* %3976, align 8
  %3977 = load i64, i64* %RBP, align 8
  %3978 = add i64 %3977, -72
  %3979 = load i64, i64* %PC, align 8
  %3980 = add i64 %3979, 4
  store i64 %3980, i64* %PC, align 8
  %3981 = inttoptr i64 %3978 to i64*
  %3982 = load i64, i64* %3981, align 8
  %3983 = add i64 %3982, 1
  store i64 %3983, i64* %RAX, align 8, !tbaa !2428
  %3984 = icmp eq i64 %3982, -1
  %3985 = icmp eq i64 %3983, 0
  %3986 = or i1 %3984, %3985
  %3987 = zext i1 %3986 to i8
  store i8 %3987, i8* %23, align 1, !tbaa !2432
  %3988 = trunc i64 %3983 to i32
  %3989 = and i32 %3988, 255
  %3990 = tail call i32 @llvm.ctpop.i32(i32 %3989) #12
  %3991 = trunc i32 %3990 to i8
  %3992 = and i8 %3991, 1
  %3993 = xor i8 %3992, 1
  store i8 %3993, i8* %30, align 1, !tbaa !2446
  %3994 = xor i64 %3983, %3982
  %3995 = lshr i64 %3994, 4
  %3996 = trunc i64 %3995 to i8
  %3997 = and i8 %3996, 1
  store i8 %3997, i8* %35, align 1, !tbaa !2450
  %3998 = zext i1 %3985 to i8
  store i8 %3998, i8* %38, align 1, !tbaa !2447
  %3999 = lshr i64 %3983, 63
  %4000 = trunc i64 %3999 to i8
  store i8 %4000, i8* %41, align 1, !tbaa !2448
  %4001 = lshr i64 %3982, 63
  %4002 = xor i64 %3999, %4001
  %4003 = add nuw nsw i64 %4002, %3999
  %4004 = icmp eq i64 %4003, 2
  %4005 = zext i1 %4004 to i8
  store i8 %4005, i8* %47, align 1, !tbaa !2449
  %4006 = add i64 %3979, 12
  store i64 %4006, i64* %PC, align 8
  store i64 %3983, i64* %3981, align 8
  %4007 = load i64, i64* %PC, align 8
  %4008 = add i64 %4007, -198
  store i64 %4008, i64* %PC, align 8, !tbaa !2428
  br label %block_400e74

block_400b87:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %4009 = bitcast [32 x %union.VectorReg]* %5 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %4009, align 1, !tbaa !2454
  %4010 = add i64 %1783, 12
  store i64 %4010, i64* %PC, align 8
  %4011 = load i64, i64* %75, align 1
  store i64 %4011, i64* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to i64*), align 8
  br label %block_400b93

block_4006a6:                                     ; preds = %block_40081c, %block_400560
  %4012 = phi i64 [ %.pre, %block_400560 ], [ %2565, %block_40081c ]
  %MEMORY.12 = phi %struct.Memory* [ %185, %block_400560 ], [ %1049, %block_40081c ]
  %4013 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %4013, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %4014 = load i64, i64* bitcast (%TLimit_type* @TLimit to i64*), align 8
  store i64 %4014, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %4015 = add i64 %4012, 22
  store i64 %4015, i64* %PC, align 8
  %.cast = bitcast i64 %4014 to double
  %4016 = bitcast i64 %4013 to double
  %4017 = fcmp uno double %.cast, %4016
  br i1 %4017, label %4018, label %4028

; <label>:4018:                                   ; preds = %block_4006a6
  %4019 = fadd double %.cast, %4016
  %4020 = bitcast double %4019 to i64
  %4021 = and i64 %4020, 9221120237041090560
  %4022 = icmp eq i64 %4021, 9218868437227405312
  %4023 = and i64 %4020, 2251799813685247
  %4024 = icmp ne i64 %4023, 0
  %4025 = and i1 %4022, %4024
  br i1 %4025, label %4026, label %4034

; <label>:4026:                                   ; preds = %4018
  %4027 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4015, %struct.Memory* %MEMORY.12) #13
  %.pre204 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:4028:                                   ; preds = %block_4006a6
  %4029 = fcmp ogt double %.cast, %4016
  br i1 %4029, label %4034, label %4030

; <label>:4030:                                   ; preds = %4028
  %4031 = fcmp olt double %.cast, %4016
  br i1 %4031, label %4034, label %4032

; <label>:4032:                                   ; preds = %4030
  %4033 = fcmp oeq double %.cast, %4016
  br i1 %4033, label %4034, label %4038

; <label>:4034:                                   ; preds = %4032, %4030, %4028, %4018
  %4035 = phi i8 [ 0, %4028 ], [ 0, %4030 ], [ 1, %4032 ], [ 1, %4018 ]
  %4036 = phi i8 [ 0, %4028 ], [ 0, %4030 ], [ 0, %4032 ], [ 1, %4018 ]
  %4037 = phi i8 [ 0, %4028 ], [ 1, %4030 ], [ 0, %4032 ], [ 1, %4018 ]
  store i8 %4035, i8* %38, align 1, !tbaa !2453
  store i8 %4036, i8* %30, align 1, !tbaa !2453
  store i8 %4037, i8* %23, align 1, !tbaa !2453
  br label %4038

; <label>:4038:                                   ; preds = %4034, %4032
  store i8 0, i8* %47, align 1, !tbaa !2453
  store i8 0, i8* %41, align 1, !tbaa !2453
  store i8 0, i8* %35, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %4038, %4026
  %4039 = phi i64 [ %.pre204, %4026 ], [ %4015, %4038 ]
  %4040 = phi %struct.Memory* [ %4027, %4026 ], [ %MEMORY.12, %4038 ]
  %4041 = add i64 %4039, 357
  %4042 = add i64 %4039, 6
  %4043 = load i8, i8* %23, align 1, !tbaa !2432
  %4044 = load i8, i8* %38, align 1, !tbaa !2447
  %4045 = or i8 %4044, %4043
  %4046 = icmp ne i8 %4045, 0
  %4047 = select i1 %4046, i64 %4041, i64 %4042
  store i64 %4047, i64* %PC, align 8, !tbaa !2428
  br i1 %4046, label %block_400821.loopexit, label %block_4006c2

block_401f82:                                     ; preds = %block_401f97, %block_401d63
  %4048 = phi i64 [ %3730, %block_401f97 ], [ %.pre217, %block_401d63 ]
  %4049 = load i64, i64* %RBP, align 8
  %4050 = add i64 %4049, -72
  %4051 = add i64 %4048, 4
  store i64 %4051, i64* %PC, align 8
  %4052 = inttoptr i64 %4050 to i64*
  %4053 = load i64, i64* %4052, align 8
  store i64 %4053, i64* %RAX, align 8, !tbaa !2428
  %4054 = add i64 %4049, -80
  %4055 = add i64 %4048, 8
  store i64 %4055, i64* %PC, align 8
  %4056 = inttoptr i64 %4054 to i64*
  %4057 = load i64, i64* %4056, align 8
  %4058 = add i64 %4057, -1
  store i64 %4058, i64* %RCX, align 8, !tbaa !2428
  %4059 = lshr i64 %4058, 63
  %4060 = sub i64 %4053, %4058
  %4061 = icmp ult i64 %4053, %4058
  %4062 = zext i1 %4061 to i8
  store i8 %4062, i8* %23, align 1, !tbaa !2432
  %4063 = trunc i64 %4060 to i32
  %4064 = and i32 %4063, 255
  %4065 = tail call i32 @llvm.ctpop.i32(i32 %4064) #12
  %4066 = trunc i32 %4065 to i8
  %4067 = and i8 %4066, 1
  %4068 = xor i8 %4067, 1
  store i8 %4068, i8* %30, align 1, !tbaa !2446
  %4069 = xor i64 %4058, %4053
  %4070 = xor i64 %4069, %4060
  %4071 = lshr i64 %4070, 4
  %4072 = trunc i64 %4071 to i8
  %4073 = and i8 %4072, 1
  store i8 %4073, i8* %35, align 1, !tbaa !2450
  %4074 = icmp eq i64 %4060, 0
  %4075 = zext i1 %4074 to i8
  store i8 %4075, i8* %38, align 1, !tbaa !2447
  %4076 = lshr i64 %4060, 63
  %4077 = trunc i64 %4076 to i8
  store i8 %4077, i8* %41, align 1, !tbaa !2448
  %4078 = lshr i64 %4053, 63
  %4079 = xor i64 %4059, %4078
  %4080 = xor i64 %4076, %4078
  %4081 = add nuw nsw i64 %4080, %4079
  %4082 = icmp eq i64 %4081, 2
  %4083 = zext i1 %4082 to i8
  store i8 %4083, i8* %47, align 1, !tbaa !2449
  %4084 = icmp ne i8 %4077, 0
  %4085 = xor i1 %4084, %4082
  %.demorgan226 = or i1 %4074, %4085
  %.v233 = select i1 %.demorgan226, i64 21, i64 313
  %4086 = add i64 %4048, %.v233
  store i64 %4086, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan226, label %block_401f97, label %block_4020bb
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400550_frame_dummy() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400550;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_400550_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400550_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400520___do_global_dtors_aux() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400520;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_400520___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400520___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4026e0___libc_csu_fini() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4026e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_4026e0___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #10 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4026e0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_402670___libc_csu_init() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x402670;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @callback_sub_402670___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_402670___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400560;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #12
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400560_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_603320___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_603318_gettimeofday(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @gettimeofday to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_603310_printf(%struct.State*, %struct.Memory*) unnamed_addr #11 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @dtime() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4025e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #12
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @dtime_wrapper(%struct.State*, i64, %struct.Memory*) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4025e0_dtime(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4026e4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #12
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
  %6 = tail call %struct.Memory* @sub_4026e4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #9 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400428;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #12
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
  %6 = tail call %struct.Memory* @sub_400428__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #12 {
  tail call void @callback_sub_4026e0___libc_csu_fini()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_constructor() #12 {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_402670___libc_csu_init()
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline }
attributes #6 = { noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!2451 = !{!2452, !2452, i64 0}
!2452 = !{!"double", !2430, i64 0}
!2453 = !{!2430, !2430, i64 0}
!2454 = !{!2445, !2445, i64 0}
!2455 = !{!2456, !2456, i64 0}
!2456 = !{!"float", !2430, i64 0}
