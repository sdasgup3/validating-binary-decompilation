; ModuleID = 'binary/test.mcsema.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_402700__rodata_type = type <{ [248 x i8], [58 x i8], [48 x i8], [36 x i8], [36 x i8], [36 x i8], [36 x i8], [36 x i8], [36 x i8], [36 x i8], [36 x i8], [36 x i8], [28 x i8], [30 x i8], [30 x i8], [30 x i8], [30 x i8], [31 x i8] }>
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
@seg_402700__rodata = internal constant %seg_402700__rodata_type <{ [248 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\14@\00\00\00\00\00\00\10@\00\00\00\00\00\00\08@\00\00\00\00\00\00\00@\00\00\00\00\00\00\F0?\18-DT\FB!\09@\00\00\00\00\80\84.A\82\FF\ADd\C7F\90?\A0\C2\EB\FEKH\B493333339@\00\00\00\00\00\00,@\00\00\00\00\00@?@\00\00\00\00\00\00\1C@\00\00\00\00\00\00\E0?\00\00\00\00\00\001@\00\00\00\00\00\00.@\EF9\FA\FEB.\E6?\00\00\00\00\00\00=@\A4\92\F1\F7A\95Y@\00\00\00\00\00\00\D0?33333C\7F@\00\00\00\00\00\002@\00\00\00\00\00\00(@\00\00\00\00\00\C0V@\00\00\00\00\00@b@\00\00\00\00\00\00c@\00\00\00\00\00\00J@\AB\AA\AA\AA\AA\AA\D2?\00\00\00\00\00\00>@\8D\ED\B5\A0\F7\C6\B0>", [58 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\0A\00", [48 x i8] c"   Module     Error        RunTime      MFLOPS\0A\00", [36 x i8] c"                            (usec)\0A\00", [36 x i8] c"     1   %13.4lf  %10.4lf  %10.4lf\0A\00", [36 x i8] c"     2   %13.4lf  %10.4lf  %10.4lf\0A\00", [36 x i8] c"     3   %13.4lf  %10.4lf  %10.4lf\0A\00", [36 x i8] c"     4   %13.4lf  %10.4lf  %10.4lf\0A\00", [36 x i8] c"     5   %13.4lf  %10.4lf  %10.4lf\0A\00", [36 x i8] c"     6   %13.4lf  %10.4lf  %10.4lf\0A\00", [36 x i8] c"     7   %13.4lf  %10.4lf  %10.4lf\0A\00", [36 x i8] c"     8   %13.4lf  %10.4lf  %10.4lf\0A\00", [28 x i8] c"   Iterations      = %10ld\0A\00", [30 x i8] c"   NullTime (usec) = %10.4lf\0A\00", [30 x i8] c"   MFLOPS(1)       = %10.4lf\0A\00", [30 x i8] c"   MFLOPS(2)       = %10.4lf\0A\00", [30 x i8] c"   MFLOPS(3)       = %10.4lf\0A\00", [31 x i8] c"   MFLOPS(4)       = %10.4lf\0A\0A\00" }>
@seg_602df0__init_array = internal global %seg_602df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400530_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400500___do_global_dtors_aux to i64) }>
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
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400530_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400500___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4026f0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_402680___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @dtime_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@seg_603120__bss.0.0 = internal unnamed_addr global i1 false, align 8

declare %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400490_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400400__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_jump(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #4

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @gettimeofday(i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
define %struct.Memory* @sub_4025f0_dtime(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4025f0:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !2428
  %12 = add i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64 %8, i64* %13, align 8
  %14 = load i64, i64* %PC, align 8
  store i64 %12, i64* %RBP, align 8, !tbaa !2428
  %15 = add i64 %11, -40
  store i64 %15, i64* %RSP, align 8, !tbaa !2428
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 ptrtoint (%tnow_type* @tnow to i64), i64* %RAX, align 8, !tbaa !2428
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 1, i8* %17, align 1, !tbaa !2446
  store i8 1, i8* %19, align 1, !tbaa !2447
  store i8 0, i8* %20, align 1, !tbaa !2448
  store i8 0, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %18, align 1, !tbaa !2450
  store i64 0, i64* %RSI, align 8, !tbaa !2428
  %22 = add i64 %11, -16
  %23 = load i64, i64* %RDI, align 8
  %24 = add i64 %14, 25
  store i64 %24, i64* %PC, align 8
  %25 = inttoptr i64 %22 to i64*
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %RBP, align 8
  %27 = add i64 %26, -8
  %28 = load i64, i64* %PC, align 8
  %29 = add i64 %28, 4
  store i64 %29, i64* %PC, align 8
  %30 = inttoptr i64 %27 to i64*
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %RDI, align 8, !tbaa !2428
  %32 = add i64 %31, 16
  %33 = add i64 %28, 9
  store i64 %33, i64* %PC, align 8
  %34 = inttoptr i64 %32 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = bitcast [32 x %union.VectorReg]* %5 to double*
  %37 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %35, i64* %37, align 1, !tbaa !2451
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %39 = bitcast i64* %38 to double*
  store double 0.000000e+00, double* %39, align 1, !tbaa !2451
  %40 = add i64 %26, -16
  %41 = add i64 %28, 14
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %40 to i64*
  store i64 %35, i64* %42, align 8
  %43 = load i64, i64* %RAX, align 8
  %44 = load i64, i64* %PC, align 8
  store i64 %43, i64* %RDI, align 8, !tbaa !2428
  %45 = add i64 %44, -8664
  %46 = add i64 %44, 8
  %47 = load i64, i64* %10, align 8, !tbaa !2428
  %48 = add i64 %47, -8
  %49 = inttoptr i64 %48 to i64*
  store i64 %46, i64* %49, align 8
  store i64 %48, i64* %10, align 8, !tbaa !2428
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %45, i64* %50, align 8, !tbaa !2428
  %51 = tail call fastcc %struct.Memory* @ext_603318_gettimeofday(%struct.State* nonnull %0, %struct.Memory* %2)
  %52 = load i64, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %16, align 1, !tbaa !2432
  store i8 1, i8* %17, align 1, !tbaa !2446
  store i8 1, i8* %19, align 1, !tbaa !2447
  store i8 0, i8* %20, align 1, !tbaa !2448
  store i8 0, i8* %21, align 1, !tbaa !2449
  store i8 0, i8* %18, align 1, !tbaa !2450
  %53 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 240) to double*), align 16
  store double %53, double* %36, align 1, !tbaa !2451
  store double 0.000000e+00, double* %39, align 1, !tbaa !2451
  %54 = load i64, i64* bitcast (%tnow_type* @tnow to i64*), align 8
  %55 = sitofp i64 %54 to double
  %56 = bitcast %union.VectorReg* %6 to double*
  %57 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%tnow_type* @tnow to i64), i64 8) to i64*), align 8
  store i64 %57, i64* %RSI, align 8, !tbaa !2428
  %58 = sitofp i64 %57 to double
  %59 = bitcast %union.VectorReg* %7 to double*
  %60 = fmul double %58, %53
  store double %60, double* %59, align 1, !tbaa !2451
  %61 = fadd double %55, %60
  store double %61, double* %56, align 1, !tbaa !2451
  %62 = load i64, i64* %RBP, align 8
  %63 = add i64 %62, -8
  %64 = add i64 %52, 48
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %63 to i64*
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %RSI, align 8, !tbaa !2428
  %67 = add i64 %66, 16
  %68 = add i64 %52, 53
  store i64 %68, i64* %PC, align 8
  %69 = inttoptr i64 %67 to double*
  store double %61, double* %69, align 8
  %70 = load i64, i64* %RBP, align 8
  %71 = add i64 %70, -8
  %72 = load i64, i64* %PC, align 8
  %73 = add i64 %72, 4
  store i64 %73, i64* %PC, align 8
  %74 = inttoptr i64 %71 to i64*
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %RSI, align 8, !tbaa !2428
  %76 = add i64 %75, 16
  %77 = add i64 %72, 9
  store i64 %77, i64* %PC, align 8
  %78 = inttoptr i64 %76 to double*
  %79 = load double, double* %78, align 8
  store double %79, double* %36, align 1, !tbaa !2451
  store double 0.000000e+00, double* %39, align 1, !tbaa !2451
  %80 = add i64 %70, -16
  %81 = add i64 %72, 14
  store i64 %81, i64* %PC, align 8
  %82 = inttoptr i64 %80 to double*
  %83 = load double, double* %82, align 8
  %84 = fsub double %79, %83
  store double %84, double* %36, align 1, !tbaa !2451
  store i64 0, i64* %38, align 1, !tbaa !2451
  %85 = add i64 %72, 18
  store i64 %85, i64* %PC, align 8
  %86 = load i64, i64* %74, align 8
  store i64 %86, i64* %RSI, align 8, !tbaa !2428
  %87 = add i64 %86, 8
  %88 = add i64 %72, 23
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
  store i8 %102, i8* %16, align 1, !tbaa !2432
  %103 = trunc i64 %100 to i32
  %104 = and i32 %103, 255
  %105 = tail call i32 @llvm.ctpop.i32(i32 %104) #8
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  %108 = xor i8 %107, 1
  store i8 %108, i8* %17, align 1, !tbaa !2446
  %109 = xor i64 %99, %100
  %110 = lshr i64 %109, 4
  %111 = trunc i64 %110 to i8
  %112 = and i8 %111, 1
  store i8 %112, i8* %18, align 1, !tbaa !2450
  %113 = icmp eq i64 %100, 0
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %19, align 1, !tbaa !2447
  %115 = lshr i64 %100, 63
  %116 = trunc i64 %115 to i8
  store i8 %116, i8* %20, align 1, !tbaa !2448
  %117 = lshr i64 %99, 63
  %118 = xor i64 %115, %117
  %119 = add nuw nsw i64 %118, %115
  %120 = icmp eq i64 %119, 2
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %21, align 1, !tbaa !2449
  %122 = add i64 %98, 7
  store i64 %122, i64* %PC, align 8
  %123 = add i64 %99, 40
  %124 = inttoptr i64 %100 to i64*
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %RBP, align 8, !tbaa !2428
  store i64 %123, i64* %10, align 8, !tbaa !2428
  %126 = add i64 %98, 8
  store i64 %126, i64* %PC, align 8
  %127 = inttoptr i64 %123 to i64*
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %50, align 8, !tbaa !2428
  %129 = add i64 %99, 48
  store i64 %129, i64* %10, align 8, !tbaa !2428
  ret %struct.Memory* %51
}

; Function Attrs: noinline
define %struct.Memory* @sub_4026f4__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4026f4:
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
define %struct.Memory* @sub_400490_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400490:
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
  store i64 6304024, i64* %RAX, align 8, !tbaa !2428
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1, !tbaa !2432
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1, !tbaa !2446
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %12, align 1, !tbaa !2450
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %13, align 1, !tbaa !2447
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %14, align 1, !tbaa !2448
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %15, align 1, !tbaa !2449
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
define %struct.Memory* @sub_400540_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400540:
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
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %17 = load i64, i64* %16, align 8, !tbaa !2428
  %18 = add i64 %17, -8
  %19 = inttoptr i64 %18 to i64*
  store i64 %14, i64* %19, align 8
  %20 = load i64, i64* %PC, align 8
  store i64 %18, i64* %RBP, align 8, !tbaa !2428
  %21 = add i64 %17, -360
  store i64 %21, i64* %RSP, align 8, !tbaa !2428
  %22 = icmp ult i64 %18, 352
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1, !tbaa !2432
  %25 = trunc i64 %21 to i32
  %26 = and i32 %25, 255
  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #8
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1, !tbaa !2446
  %32 = xor i64 %18, %21
  %33 = lshr i64 %32, 4
  %34 = trunc i64 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1, !tbaa !2450
  %37 = icmp eq i64 %21, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1, !tbaa !2447
  %40 = lshr i64 %21, 63
  %41 = trunc i64 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1, !tbaa !2448
  %43 = lshr i64 %18, 63
  %44 = xor i64 %40, %43
  %45 = add nuw nsw i64 %44, %43
  %46 = icmp eq i64 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1, !tbaa !2449
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 304), i64* %RDI, align 8, !tbaa !2428
  %49 = add i64 %17, -12
  %50 = add i64 %20, 27
  store i64 %50, i64* %PC, align 8
  %51 = inttoptr i64 %49 to i32*
  store i32 0, i32* %51, align 4
  %52 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %53 = add i64 %52, -300
  %54 = add i64 %52, 7
  %55 = load i64, i64* %16, align 8, !tbaa !2428
  %56 = add i64 %55, -8
  %57 = inttoptr i64 %56 to i64*
  store i64 %54, i64* %57, align 8
  store i64 %56, i64* %16, align 8, !tbaa !2428
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %53, i64* %58, align 8, !tbaa !2428
  %59 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %2)
  %60 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 248), i64* %RDI, align 8, !tbaa !2428
  %61 = load i64, i64* %RBP, align 8
  %62 = add i64 %61, -92
  %63 = load i32, i32* %EAX, align 4
  %64 = add i64 %60, 13
  store i64 %64, i64* %PC, align 8
  %65 = inttoptr i64 %62 to i32*
  store i32 %63, i32* %65, align 4
  %66 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %67 = add i64 %66, -320
  %68 = add i64 %66, 7
  %69 = load i64, i64* %16, align 8, !tbaa !2428
  %70 = add i64 %69, -8
  %71 = inttoptr i64 %70 to i64*
  store i64 %68, i64* %71, align 8
  store i64 %70, i64* %16, align 8, !tbaa !2428
  store i64 %67, i64* %58, align 8, !tbaa !2428
  %72 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %59)
  %73 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 306), i64* %RDI, align 8, !tbaa !2428
  %74 = bitcast [32 x %union.VectorReg]* %5 to i8*
  %75 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 8) to i64*), align 8
  %76 = bitcast [32 x %union.VectorReg]* %5 to double*
  %77 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %75, i64* %77, align 1, !tbaa !2451
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %79 = bitcast i64* %78 to double*
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %80 = bitcast %union.VectorReg* %6 to i8*
  %81 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 16) to i64*), align 16
  %82 = bitcast %union.VectorReg* %6 to double*
  %83 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %81, i64* %83, align 1, !tbaa !2451
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %85 = bitcast i64* %84 to double*
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %86 = bitcast %union.VectorReg* %7 to i8*
  %87 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 24) to i64*), align 8
  %88 = bitcast %union.VectorReg* %7 to double*
  %89 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %87, i64* %89, align 1, !tbaa !2451
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %91 = bitcast i64* %90 to double*
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %92 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 32) to i64*), align 16
  %93 = bitcast %union.VectorReg* %8 to double*
  %94 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %92, i64* %94, align 1, !tbaa !2451
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %96 = bitcast i64* %95 to double*
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %97 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 40) to i64*), align 8
  %98 = bitcast %union.VectorReg* %9 to double*
  %99 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %9, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %97, i64* %99, align 1, !tbaa !2451
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %101 = bitcast i64* %100 to double*
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %102 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 48) to i64*), align 16
  %103 = bitcast %union.VectorReg* %10 to double*
  %104 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %10, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %102, i64* %104, align 1, !tbaa !2451
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %106 = bitcast i64* %105 to double*
  store double 0.000000e+00, double* %106, align 1, !tbaa !2451
  %107 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 56) to i64*), align 8
  %108 = bitcast %union.VectorReg* %11 to double*
  %109 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %11, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %107, i64* %109, align 1, !tbaa !2451
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %111 = bitcast i64* %110 to double*
  store double 0.000000e+00, double* %111, align 1, !tbaa !2451
  %112 = load i64, i64* %RBP, align 8
  %113 = add i64 %112, -56
  %114 = add i64 %73, 74
  store i64 %114, i64* %PC, align 8
  %115 = inttoptr i64 %113 to i64*
  store i64 15625, i64* %115, align 8
  %116 = load i64, i64* %RBP, align 8
  %117 = add i64 %116, -56
  %118 = load i64, i64* %PC, align 8
  %119 = add i64 %118, 4
  store i64 %119, i64* %PC, align 8
  %120 = inttoptr i64 %117 to i64*
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %RCX, align 8, !tbaa !2428
  %122 = sitofp i64 %121 to double
  %123 = bitcast %union.VectorReg* %12 to double*
  store double %122, double* %123, align 1, !tbaa !2451
  %124 = load double, double* %108, align 1
  %125 = fdiv double %124, %122
  store double %125, double* %108, align 1, !tbaa !2451
  store double %125, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %126 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %9, i64 0, i32 0, i32 0, i32 0, i64 0
  %127 = load i64, i64* %126, align 1
  store i64 %127, i64* bitcast (%TLimit_type* @TLimit to i64*), align 8
  %128 = add i64 %116, -64
  %129 = add i64 %118, 39
  store i64 %129, i64* %PC, align 8
  %130 = inttoptr i64 %128 to i64*
  store i64 512000000, i64* %130, align 8
  %131 = load i64, i64* %PC, align 8
  %132 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %10, i64 0, i32 0, i32 0, i32 0, i64 0
  %133 = load i64, i64* %132, align 1
  store i64 %133, i64* bitcast (%piref_type* @piref to i64*), align 8
  %134 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %9, i64 0, i32 0, i32 0, i32 0, i64 0
  %135 = load i64, i64* %134, align 1
  store i64 %135, i64* bitcast (%one_type* @one to i64*), align 8
  %136 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  %137 = load i64, i64* %136, align 1
  store i64 %137, i64* bitcast (%two_type* @two to i64*), align 8
  %138 = bitcast %union.VectorReg* %7 to double*
  %139 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  %140 = load i64, i64* %139, align 1
  store i64 %140, i64* bitcast (%three_type* @three to i64*), align 8
  %141 = bitcast %union.VectorReg* %6 to double*
  %142 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  %143 = load i64, i64* %142, align 1
  store i64 %143, i64* bitcast (%four_type* @four to i64*), align 8
  %144 = bitcast [32 x %union.VectorReg]* %5 to double*
  %145 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %146 = load i64, i64* %145, align 1
  store i64 %146, i64* bitcast (%five_type* @five to i64*), align 8
  %147 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %135, i64* %147, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  store i64 %135, i64* bitcast (%scale_type* @scale to i64*), align 8
  %148 = load i64, i64* %RBP, align 8
  %149 = add i64 %148, -96
  %150 = load i32, i32* %EAX, align 4
  %151 = add i64 %131, 75
  store i64 %151, i64* %PC, align 8
  %152 = inttoptr i64 %149 to i32*
  store i32 %150, i32* %152, align 4
  %153 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %154 = add i64 %153, -515
  %155 = add i64 %153, 7
  %156 = load i64, i64* %16, align 8, !tbaa !2428
  %157 = add i64 %156, -8
  %158 = inttoptr i64 %157 to i64*
  store i64 %155, i64* %158, align 8
  store i64 %157, i64* %16, align 8, !tbaa !2428
  store i64 %154, i64* %58, align 8, !tbaa !2428
  %159 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %72)
  %160 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 354), i64* %RDI, align 8, !tbaa !2428
  %161 = load i64, i64* %RBP, align 8
  %162 = add i64 %161, -100
  %163 = load i32, i32* %EAX, align 4
  %164 = add i64 %160, 13
  store i64 %164, i64* %PC, align 8
  %165 = inttoptr i64 %162 to i32*
  store i32 %163, i32* %165, align 4
  %166 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %167 = add i64 %166, -535
  %168 = add i64 %166, 7
  %169 = load i64, i64* %16, align 8, !tbaa !2428
  %170 = add i64 %169, -8
  %171 = inttoptr i64 %170 to i64*
  store i64 %168, i64* %171, align 8
  store i64 %170, i64* %16, align 8, !tbaa !2428
  store i64 %167, i64* %58, align 8, !tbaa !2428
  %172 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %159)
  %173 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %174 = load i64, i64* %RBP, align 8
  %175 = add i64 %174, -104
  %176 = load i32, i32* %EAX, align 4
  %177 = add i64 %173, 13
  store i64 %177, i64* %PC, align 8
  %178 = inttoptr i64 %175 to i32*
  store i32 %176, i32* %178, align 4
  %179 = load i64, i64* %PC, align 8
  %180 = add i64 %179, 8085
  %181 = add i64 %179, 5
  %182 = load i64, i64* %16, align 8, !tbaa !2428
  %183 = add i64 %182, -8
  %184 = inttoptr i64 %183 to i64*
  store i64 %181, i64* %184, align 8
  store i64 %183, i64* %16, align 8, !tbaa !2428
  store i64 %180, i64* %58, align 8, !tbaa !2428
  %185 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %180, %struct.Memory* %172)
  %186 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %187 = load i64, i64* %RBP, align 8
  %188 = add i64 %187, -108
  %189 = load i32, i32* %EAX, align 4
  %190 = add i64 %186, 13
  store i64 %190, i64* %PC, align 8
  %191 = inttoptr i64 %188 to i32*
  store i32 %189, i32* %191, align 4
  %192 = load i64, i64* %PC, align 8
  %193 = add i64 %192, 8067
  %194 = add i64 %192, 5
  %195 = load i64, i64* %16, align 8, !tbaa !2428
  %196 = add i64 %195, -8
  %197 = inttoptr i64 %196 to i64*
  store i64 %194, i64* %197, align 8
  store i64 %196, i64* %16, align 8, !tbaa !2428
  store i64 %193, i64* %58, align 8, !tbaa !2428
  %198 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %193, %struct.Memory* %185)
  %199 = load i64, i64* %PC, align 8
  %200 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %202 = bitcast [32 x %union.VectorReg]* %5 to i32*
  store i32 0, i32* %202, align 1, !tbaa !2454
  %203 = getelementptr inbounds i8, i8* %74, i64 4
  %204 = bitcast i8* %203 to i32*
  store i32 0, i32* %204, align 1, !tbaa !2454
  %205 = bitcast i64* %78 to i32*
  store i32 0, i32* %205, align 1, !tbaa !2454
  %206 = getelementptr inbounds i8, i8* %74, i64 12
  %207 = bitcast i8* %206 to i32*
  store i32 0, i32* %207, align 1, !tbaa !2454
  %208 = load i64, i64* %RBP, align 8
  %209 = add i64 %208, -56
  %210 = add i64 %199, 7
  store i64 %210, i64* %PC, align 8
  %211 = inttoptr i64 %209 to i64*
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %RCX, align 8, !tbaa !2428
  %213 = add i64 %208, -88
  %214 = add i64 %199, 11
  store i64 %214, i64* %PC, align 8
  %215 = inttoptr i64 %213 to i64*
  store i64 %212, i64* %215, align 8
  %216 = load i64, i64* %PC, align 8
  %217 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %218 = load i64, i64* %217, align 1
  store i64 %218, i64* bitcast (%sa_type* @sa to i64*), align 8
  %219 = load i64, i64* %RBP, align 8
  %220 = add i64 %219, -112
  %221 = load i32, i32* %EAX, align 4
  %222 = add i64 %216, 12
  store i64 %222, i64* %PC, align 8
  %223 = inttoptr i64 %220 to i32*
  store i32 %221, i32* %223, align 4
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
  %225 = bitcast i64* %224 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400689

block_4014f4:                                     ; preds = %block_40124b, %block_401509
  %226 = phi i64 [ %.pre16, %block_40124b ], [ %1790, %block_401509 ]
  %227 = load i64, i64* %RBP, align 8
  %228 = add i64 %227, -72
  %229 = add i64 %226, 4
  store i64 %229, i64* %PC, align 8
  %230 = inttoptr i64 %228 to i64*
  %231 = load i64, i64* %230, align 8
  store i64 %231, i64* %RAX, align 8, !tbaa !2428
  %232 = add i64 %227, -80
  %233 = add i64 %226, 8
  store i64 %233, i64* %PC, align 8
  %234 = inttoptr i64 %232 to i64*
  %235 = load i64, i64* %234, align 8
  %236 = add i64 %235, -1
  store i64 %236, i64* %RCX, align 8, !tbaa !2428
  %237 = lshr i64 %236, 63
  %238 = sub i64 %231, %236
  %239 = icmp ult i64 %231, %236
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %24, align 1, !tbaa !2432
  %241 = trunc i64 %238 to i32
  %242 = and i32 %241, 255
  %243 = tail call i32 @llvm.ctpop.i32(i32 %242) #8
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  store i8 %246, i8* %31, align 1, !tbaa !2446
  %247 = xor i64 %236, %231
  %248 = xor i64 %247, %238
  %249 = lshr i64 %248, 4
  %250 = trunc i64 %249 to i8
  %251 = and i8 %250, 1
  store i8 %251, i8* %36, align 1, !tbaa !2450
  %252 = icmp eq i64 %238, 0
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %39, align 1, !tbaa !2447
  %254 = lshr i64 %238, 63
  %255 = trunc i64 %254 to i8
  store i8 %255, i8* %42, align 1, !tbaa !2448
  %256 = lshr i64 %231, 63
  %257 = xor i64 %237, %256
  %258 = xor i64 %254, %256
  %259 = add nuw nsw i64 %258, %257
  %260 = icmp eq i64 %259, 2
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %48, align 1, !tbaa !2449
  %262 = icmp ne i8 %255, 0
  %263 = xor i1 %262, %260
  %.demorgan34 = or i1 %252, %263
  %.v35 = select i1 %.demorgan34, i64 21, i64 315
  %264 = add i64 %226, %.v35
  store i64 %264, i64* %58, align 8, !tbaa !2428
  br i1 %.demorgan34, label %block_401509, label %block_40162f

block_400b6d:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  store i32 0, i32* %202, align 1, !tbaa !2454
  store i32 0, i32* %204, align 1, !tbaa !2454
  store i32 0, i32* %205, align 1, !tbaa !2454
  store i32 0, i32* %207, align 1, !tbaa !2454
  %265 = add i64 %2230, 12
  store i64 %265, i64* %PC, align 8
  %266 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %267 = load i64, i64* %266, align 1
  store i64 %267, i64* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to i64*), align 8
  br label %block_400b79

block_401d67:                                     ; preds = %block_401ccb
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %268 = add i64 %914, 2185
  %269 = add i64 %914, 15
  %270 = load i64, i64* %16, align 8, !tbaa !2428
  %271 = add i64 %270, -8
  %272 = inttoptr i64 %271 to i64*
  store i64 %269, i64* %272, align 8
  store i64 %271, i64* %16, align 8, !tbaa !2428
  store i64 %268, i64* %58, align 8, !tbaa !2428
  %273 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %268, %struct.Memory* %2732)
  %274 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 606), i64* %RDI, align 8, !tbaa !2428
  %275 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to i64*), align 8
  %276 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %275, i64* %276, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %277 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 168) to i64*), align 8
  %278 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %277, i64* %278, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %279 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 176) to i64*), align 16
  %280 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %279, i64* %280, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  store i64 -9223372036854775808, i64* %RCX, align 8, !tbaa !2428
  %281 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 184) to double*), align 8
  %282 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %283 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %284 = fmul double %282, %283
  %285 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %286 = fsub double %284, %285
  store double %286, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 168) to double*), align 8
  %287 = fdiv double %286, %281
  store double %287, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  store double %287, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 176) to double*), align 16
  %288 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  %289 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %288, i64* %289, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %290 = load i64, i64* %RBP, align 8
  %291 = add i64 %290, -48
  %292 = add i64 %274, 124
  store i64 %292, i64* %PC, align 8
  %293 = inttoptr i64 %291 to i64*
  store i64 %288, i64* %293, align 8
  %294 = load i64, i64* %RBP, align 8
  %295 = add i64 %294, -48
  %296 = load i64, i64* %PC, align 8
  %297 = add i64 %296, 5
  store i64 %297, i64* %PC, align 8
  %298 = inttoptr i64 %295 to double*
  %299 = load double, double* %298, align 8
  store double %299, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %300 = add i64 %296, 10
  store i64 %300, i64* %PC, align 8
  %301 = load double, double* %298, align 8
  %302 = fmul double %299, %301
  store double %302, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %303 = add i64 %294, -24
  %304 = add i64 %296, 15
  store i64 %304, i64* %PC, align 8
  %305 = inttoptr i64 %303 to double*
  store double %302, double* %305, align 8
  %306 = load i64, i64* %RBP, align 8
  %307 = add i64 %306, -40
  %308 = load i64, i64* %PC, align 8
  %309 = add i64 %308, 5
  store i64 %309, i64* %PC, align 8
  %310 = inttoptr i64 %307 to double*
  %311 = inttoptr i64 %307 to i64*
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* %RCX, align 8
  %314 = xor i64 %313, %312
  store i64 %314, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %24, align 1, !tbaa !2432
  %315 = trunc i64 %314 to i32
  %316 = and i32 %315, 255
  %317 = tail call i32 @llvm.ctpop.i32(i32 %316) #8
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 1
  %320 = xor i8 %319, 1
  store i8 %320, i8* %31, align 1, !tbaa !2446
  %321 = icmp eq i64 %314, 0
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %39, align 1, !tbaa !2447
  %323 = lshr i64 %314, 63
  %324 = trunc i64 %323 to i8
  store i8 %324, i8* %42, align 1, !tbaa !2448
  store i8 0, i8* %48, align 1, !tbaa !2449
  store i8 0, i8* %36, align 1, !tbaa !2450
  %325 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %314, i64* %325, align 1, !tbaa !2428
  store i64 0, i64* %95, align 1, !tbaa !2428
  %326 = add i64 %308, 23
  store i64 %326, i64* %PC, align 8
  %327 = load double, double* %310, align 8
  store double %327, double* %98, align 1, !tbaa !2451
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %328 = add i64 %306, -48
  %329 = add i64 %308, 28
  store i64 %329, i64* %PC, align 8
  %330 = inttoptr i64 %328 to double*
  %331 = load double, double* %330, align 8
  store double %331, double* %103, align 1, !tbaa !2451
  store double 0.000000e+00, double* %106, align 1, !tbaa !2451
  %332 = add i64 %308, 33
  store i64 %332, i64* %PC, align 8
  %333 = load double, double* %310, align 8
  %334 = fadd double %331, %333
  store double %334, double* %103, align 1, !tbaa !2451
  store i64 0, i64* %105, align 1, !tbaa !2451
  %335 = fdiv double %327, %334
  store double %335, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %336 = bitcast i64 %314 to double
  %337 = fsub double %336, %335
  store double %337, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %338 = add i64 %308, 46
  store i64 %338, i64* %PC, align 8
  %339 = load double, double* %330, align 8
  store double %339, double* %98, align 1, !tbaa !2451
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %340 = add i64 %306, -24
  %341 = add i64 %308, 51
  store i64 %341, i64* %PC, align 8
  %342 = inttoptr i64 %340 to double*
  %343 = load double, double* %342, align 8
  store double %343, double* %103, align 1, !tbaa !2451
  store double 0.000000e+00, double* %106, align 1, !tbaa !2451
  %344 = add i64 %308, 56
  store i64 %344, i64* %PC, align 8
  %345 = load double, double* %310, align 8
  %346 = fadd double %343, %345
  store double %346, double* %103, align 1, !tbaa !2451
  store i64 0, i64* %105, align 1, !tbaa !2451
  %347 = fdiv double %339, %346
  store double %347, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %348 = fsub double %337, %347
  store double %348, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %349 = add i64 %308, 69
  store i64 %349, i64* %PC, align 8
  %350 = load double, double* %342, align 8
  store double %350, double* %98, align 1, !tbaa !2451
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %351 = load i64, i64* %RBP, align 8
  %352 = add i64 %351, -48
  %353 = add i64 %308, 74
  store i64 %353, i64* %PC, align 8
  %354 = inttoptr i64 %352 to double*
  %355 = load double, double* %354, align 8
  store double %355, double* %103, align 1, !tbaa !2451
  store double 0.000000e+00, double* %106, align 1, !tbaa !2451
  %356 = add i64 %351, -24
  %357 = add i64 %308, 79
  store i64 %357, i64* %PC, align 8
  %358 = inttoptr i64 %356 to double*
  %359 = load double, double* %358, align 8
  %360 = fmul double %355, %359
  store double %360, double* %103, align 1, !tbaa !2451
  store i64 0, i64* %105, align 1, !tbaa !2451
  %361 = add i64 %351, -40
  %362 = add i64 %308, 84
  store i64 %362, i64* %PC, align 8
  %363 = inttoptr i64 %361 to double*
  %364 = load double, double* %363, align 8
  %365 = fadd double %360, %364
  store double %365, double* %103, align 1, !tbaa !2451
  store i64 0, i64* %105, align 1, !tbaa !2451
  %366 = fdiv double %350, %365
  store double %366, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %367 = fsub double %348, %366
  store double %367, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  store double %367, double* bitcast (%sa_type* @sa to double*), align 8
  %368 = add i64 %351, -32
  %369 = add i64 %308, 106
  store i64 %369, i64* %PC, align 8
  %370 = load double, double* %88, align 1
  %371 = inttoptr i64 %368 to double*
  %372 = load double, double* %371, align 8
  %373 = fmul double %370, %372
  store double %373, double* %88, align 1, !tbaa !2451
  store double %367, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %374 = load double, double* bitcast (%two_type* @two to double*), align 8
  store double %374, double* %98, align 1, !tbaa !2451
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %375 = add i64 %351, -16
  %376 = add i64 %308, 129
  store i64 %376, i64* %PC, align 8
  %377 = inttoptr i64 %375 to double*
  %378 = load double, double* %377, align 8
  %379 = fmul double %374, %378
  store double %379, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %380 = fadd double %367, %379
  store double %380, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %381 = fmul double %373, %380
  store double %381, double* %88, align 1, !tbaa !2451
  store double %381, double* bitcast (%sa_type* @sa to double*), align 8
  %382 = tail call double @llvm.trunc.f64(double %381) #8
  %383 = tail call double @llvm.fabs.f64(double %382) #8
  %384 = fcmp ogt double %383, 0x43E0000000000000
  %385 = fptosi double %382 to i64
  %386 = select i1 %384, i64 -9223372036854775808, i64 %385
  %387 = sext i64 %386 to i128
  %388 = and i128 %387, -18446744073709551616
  %389 = zext i64 %386 to i128
  %390 = or i128 %388, %389
  %391 = mul nsw i128 %390, -2000
  %392 = trunc i128 %391 to i64
  store i64 %392, i64* %RCX, align 8, !tbaa !2428
  %393 = sext i64 %392 to i128
  %394 = icmp ne i128 %393, %391
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %24, align 1, !tbaa !2432
  %396 = trunc i128 %391 to i32
  %397 = and i32 %396, 240
  %398 = tail call i32 @llvm.ctpop.i32(i32 %397) #8
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  %401 = xor i8 %400, 1
  store i8 %401, i8* %31, align 1, !tbaa !2446
  store i8 0, i8* %36, align 1, !tbaa !2450
  store i8 0, i8* %39, align 1, !tbaa !2447
  %402 = lshr i64 %392, 63
  %403 = trunc i64 %402 to i8
  store i8 %403, i8* %42, align 1, !tbaa !2448
  store i8 %395, i8* %48, align 1, !tbaa !2449
  %404 = load i64, i64* %RBP, align 8
  %405 = add i64 %404, -80
  %406 = add i64 %308, 167
  store i64 %406, i64* %PC, align 8
  %407 = inttoptr i64 %405 to i64*
  store i64 %392, i64* %407, align 8
  %408 = load i64, i64* %RBP, align 8
  %409 = add i64 %408, -80
  %410 = load i64, i64* %PC, align 8
  %411 = add i64 %410, 4
  store i64 %411, i64* %PC, align 8
  %412 = inttoptr i64 %409 to i64*
  %413 = load i64, i64* %412, align 8
  %414 = sitofp i64 %413 to double
  %415 = load double, double* bitcast (%scale_type* @scale to double*), align 8
  %416 = fdiv double %414, %415
  %417 = tail call double @llvm.trunc.f64(double %416) #8
  %418 = tail call double @llvm.fabs.f64(double %417) #8
  %419 = fcmp ogt double %418, 0x43E0000000000000
  %420 = fptosi double %417 to i64
  %421 = select i1 %419, i64 -9223372036854775808, i64 %420
  store i64 %421, i64* %RCX, align 8, !tbaa !2428
  %422 = add i64 %410, 27
  store i64 %422, i64* %PC, align 8
  store i64 %421, i64* %412, align 8
  %423 = load i64, i64* %PC, align 8
  %424 = load double, double* %82, align 1
  %425 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %426 = fadd double %424, %425
  store double %426, double* bitcast (%sc_type* @sc to double*), align 8
  %427 = load double, double* bitcast (%one_type* @one to double*), align 8
  %428 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 176) to double*), align 16
  %429 = fdiv double %427, %428
  store double %429, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 184) to double*), align 8
  %430 = load <2 x i32>, <2 x i32>* %1522, align 1
  %431 = load <2 x i32>, <2 x i32>* %1524, align 1
  %432 = extractelement <2 x i32> %430, i32 0
  store i32 %432, i32* %1527, align 1, !tbaa !2455
  %433 = extractelement <2 x i32> %430, i32 1
  store i32 %433, i32* %1530, align 1, !tbaa !2455
  %434 = extractelement <2 x i32> %431, i32 0
  store i32 %434, i32* %1532, align 1, !tbaa !2455
  %435 = extractelement <2 x i32> %431, i32 1
  store i32 %435, i32* %1535, align 1, !tbaa !2455
  %436 = load double, double* %82, align 1
  %437 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %438 = fmul double %436, %437
  store double %438, double* %82, align 1, !tbaa !2451
  store i32 %432, i32* %1539, align 1, !tbaa !2455
  store i32 %433, i32* %1541, align 1, !tbaa !2455
  store i32 %434, i32* %1542, align 1, !tbaa !2455
  store i32 %435, i32* %1544, align 1, !tbaa !2455
  %439 = load double, double* %88, align 1
  %440 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 168) to double*), align 8
  %441 = fmul double %439, %440
  store double %441, double* %88, align 1, !tbaa !2451
  %442 = bitcast <2 x i32> %430 to double
  %443 = fmul double %442, %429
  %444 = load i64, i64* %RBP, align 8
  %445 = add i64 %444, -280
  %446 = add i64 %423, 86
  store i64 %446, i64* %PC, align 8
  %447 = inttoptr i64 %445 to double*
  store double %443, double* %447, align 8
  %448 = load i64, i64* %PC, align 8
  %449 = load <2 x i32>, <2 x i32>* %1555, align 1
  %450 = load <2 x i32>, <2 x i32>* %1558, align 1
  %451 = extractelement <2 x i32> %449, i32 0
  store i32 %451, i32* %202, align 1, !tbaa !2455
  %452 = extractelement <2 x i32> %449, i32 1
  store i32 %452, i32* %204, align 1, !tbaa !2455
  %453 = extractelement <2 x i32> %450, i32 0
  store i32 %453, i32* %205, align 1, !tbaa !2455
  %454 = extractelement <2 x i32> %450, i32 1
  store i32 %454, i32* %207, align 1, !tbaa !2455
  %455 = load <2 x i32>, <2 x i32>* %1564, align 1
  %456 = load <2 x i32>, <2 x i32>* %1567, align 1
  %457 = extractelement <2 x i32> %455, i32 0
  store i32 %457, i32* %1527, align 1, !tbaa !2455
  %458 = extractelement <2 x i32> %455, i32 1
  store i32 %458, i32* %1530, align 1, !tbaa !2455
  %459 = extractelement <2 x i32> %456, i32 0
  store i32 %459, i32* %1532, align 1, !tbaa !2455
  %460 = extractelement <2 x i32> %456, i32 1
  store i32 %460, i32* %1535, align 1, !tbaa !2455
  %461 = load i64, i64* %RBP, align 8
  %462 = add i64 %461, -280
  %463 = add i64 %448, 14
  store i64 %463, i64* %PC, align 8
  %464 = inttoptr i64 %462 to i64*
  %465 = load i64, i64* %464, align 8
  %466 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %465, i64* %466, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %467 = add i64 %461, -284
  %468 = load i32, i32* %EAX, align 4
  %469 = add i64 %448, 20
  store i64 %469, i64* %PC, align 8
  %470 = inttoptr i64 %467 to i32*
  store i32 %468, i32* %470, align 4
  %471 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %472 = add i64 %471, -6909
  %473 = add i64 %471, 7
  %474 = load i64, i64* %16, align 8, !tbaa !2428
  %475 = add i64 %474, -8
  %476 = inttoptr i64 %475 to i64*
  store i64 %473, i64* %476, align 8
  store i64 %475, i64* %16, align 8, !tbaa !2428
  store i64 %472, i64* %58, align 8, !tbaa !2428
  %477 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %273)
  %478 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i32 0, i32* %202, align 1, !tbaa !2454
  store i32 0, i32* %204, align 1, !tbaa !2454
  store i32 0, i32* %205, align 1, !tbaa !2454
  store i32 0, i32* %207, align 1, !tbaa !2454
  %479 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  store double %479, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %480 = load double, double* bitcast (%three_type* @three to double*), align 8
  store double %480, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %481 = load i64, i64* %RBP, align 8
  %482 = add i64 %481, -80
  %483 = add i64 %478, 35
  store i64 %483, i64* %PC, align 8
  %484 = inttoptr i64 %482 to i64*
  %485 = load i64, i64* %484, align 8
  store i64 %485, i64* %RCX, align 8, !tbaa !2428
  %486 = sitofp i64 %485 to double
  store double %486, double* %93, align 1, !tbaa !2451
  %487 = fmul double %480, %486
  store double %487, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %488 = fdiv double %479, %487
  store double %488, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %489 = add i64 %481, -48
  %490 = add i64 %478, 53
  store i64 %490, i64* %PC, align 8
  %491 = inttoptr i64 %489 to double*
  store double %488, double* %491, align 8
  %492 = load i64, i64* %RBP, align 8
  %493 = add i64 %492, -16
  %494 = load i64, i64* %PC, align 8
  %495 = add i64 %494, 5
  store i64 %495, i64* %PC, align 8
  %496 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %497 = load i64, i64* %496, align 1
  %498 = inttoptr i64 %493 to i64*
  store i64 %497, i64* %498, align 8
  %499 = load i64, i64* %RBP, align 8
  %500 = add i64 %499, -32
  %501 = load i64, i64* %PC, align 8
  %502 = add i64 %501, 5
  store i64 %502, i64* %PC, align 8
  %503 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %504 = load i64, i64* %503, align 1
  %505 = inttoptr i64 %500 to i64*
  store i64 %504, i64* %505, align 8
  %506 = load i64, i64* %RBP, align 8
  %507 = add i64 %506, -288
  %508 = load i32, i32* %EAX, align 4
  %509 = load i64, i64* %PC, align 8
  %510 = add i64 %509, 6
  store i64 %510, i64* %PC, align 8
  %511 = inttoptr i64 %507 to i32*
  store i32 %508, i32* %511, align 4
  %512 = load i64, i64* %PC, align 8
  %513 = add i64 %512, 1655
  %514 = add i64 %512, 5
  %515 = load i64, i64* %16, align 8, !tbaa !2428
  %516 = add i64 %515, -8
  %517 = inttoptr i64 %516 to i64*
  store i64 %514, i64* %517, align 8
  store i64 %516, i64* %16, align 8, !tbaa !2428
  store i64 %513, i64* %58, align 8, !tbaa !2428
  %518 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %513, %struct.Memory* %477)
  %519 = load i64, i64* %RBP, align 8
  %520 = add i64 %519, -72
  %521 = load i64, i64* %PC, align 8
  %522 = add i64 %521, 8
  store i64 %522, i64* %PC, align 8
  %523 = inttoptr i64 %520 to i64*
  store i64 1, i64* %523, align 8
  %524 = load i64, i64* %RBP, align 8
  %525 = add i64 %524, -292
  %526 = load i32, i32* %EAX, align 4
  %527 = load i64, i64* %PC, align 8
  %528 = add i64 %527, 6
  store i64 %528, i64* %PC, align 8
  %529 = inttoptr i64 %525 to i32*
  store i32 %526, i32* %529, align 4
  %.pre19 = load i64, i64* %PC, align 8
  br label %block_401f8c

block_4018d9:                                     ; preds = %block_40162f, %block_4018ee
  %530 = phi i64 [ %.pre17, %block_40162f ], [ %875, %block_4018ee ]
  %531 = load i64, i64* %RBP, align 8
  %532 = add i64 %531, -72
  %533 = add i64 %530, 4
  store i64 %533, i64* %PC, align 8
  %534 = inttoptr i64 %532 to i64*
  %535 = load i64, i64* %534, align 8
  store i64 %535, i64* %RAX, align 8, !tbaa !2428
  %536 = add i64 %531, -80
  %537 = add i64 %530, 8
  store i64 %537, i64* %PC, align 8
  %538 = inttoptr i64 %536 to i64*
  %539 = load i64, i64* %538, align 8
  %540 = add i64 %539, -1
  store i64 %540, i64* %RCX, align 8, !tbaa !2428
  %541 = lshr i64 %540, 63
  %542 = sub i64 %535, %540
  %543 = icmp ult i64 %535, %540
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %24, align 1, !tbaa !2432
  %545 = trunc i64 %542 to i32
  %546 = and i32 %545, 255
  %547 = tail call i32 @llvm.ctpop.i32(i32 %546) #8
  %548 = trunc i32 %547 to i8
  %549 = and i8 %548, 1
  %550 = xor i8 %549, 1
  store i8 %550, i8* %31, align 1, !tbaa !2446
  %551 = xor i64 %540, %535
  %552 = xor i64 %551, %542
  %553 = lshr i64 %552, 4
  %554 = trunc i64 %553 to i8
  %555 = and i8 %554, 1
  store i8 %555, i8* %36, align 1, !tbaa !2450
  %556 = icmp eq i64 %542, 0
  %557 = zext i1 %556 to i8
  store i8 %557, i8* %39, align 1, !tbaa !2447
  %558 = lshr i64 %542, 63
  %559 = trunc i64 %558 to i8
  store i8 %559, i8* %42, align 1, !tbaa !2448
  %560 = lshr i64 %535, 63
  %561 = xor i64 %541, %560
  %562 = xor i64 %558, %560
  %563 = add nuw nsw i64 %562, %561
  %564 = icmp eq i64 %563, 2
  %565 = zext i1 %564 to i8
  store i8 %565, i8* %48, align 1, !tbaa !2449
  %566 = icmp ne i8 %559, 0
  %567 = xor i1 %566, %564
  %.demorgan36 = or i1 %556, %567
  %.v37 = select i1 %.demorgan36, i64 21, i64 315
  %568 = add i64 %530, %.v37
  store i64 %568, i64* %58, align 8, !tbaa !2428
  br i1 %.demorgan36, label %block_4018ee, label %block_401a14

block_400bd6:                                     ; preds = %block_400bc8
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
  %569 = add i64 %1792, -16
  %570 = add i64 %1828, 15
  store i64 %570, i64* %PC, align 8
  %571 = inttoptr i64 %569 to i64*
  %572 = load i64, i64* %571, align 8
  %573 = xor i64 %572, -9223372036854775808
  store i64 %573, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %24, align 1, !tbaa !2432
  %574 = trunc i64 %572 to i32
  %575 = and i32 %574, 255
  %576 = tail call i32 @llvm.ctpop.i32(i32 %575) #8
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  %579 = xor i8 %578, 1
  store i8 %579, i8* %31, align 1, !tbaa !2446
  %580 = icmp eq i64 %573, 0
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %39, align 1, !tbaa !2447
  %582 = lshr i64 %573, 63
  %583 = trunc i64 %582 to i8
  store i8 %583, i8* %42, align 1, !tbaa !2448
  store i8 0, i8* %48, align 1, !tbaa !2449
  store i8 0, i8* %36, align 1, !tbaa !2450
  %584 = add i64 %1828, 33
  store i64 %584, i64* %PC, align 8
  %585 = inttoptr i64 %569 to i64*
  store i64 %573, i64* %585, align 8
  %586 = load i64, i64* %PC, align 8
  %587 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  store double %587, double* %76, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %588 = load i64, i64* %RBP, align 8
  %589 = add i64 %588, -16
  %590 = add i64 %586, 14
  store i64 %590, i64* %PC, align 8
  %591 = inttoptr i64 %589 to double*
  %592 = load double, double* %591, align 8
  %593 = fadd double %587, %592
  store double %593, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  store double %593, double* bitcast (%sa_type* @sa to double*), align 8
  %594 = add i64 %588, -24
  %595 = add i64 %586, 28
  store i64 %595, i64* %PC, align 8
  %596 = inttoptr i64 %594 to double*
  %597 = load double, double* %596, align 8
  %598 = load double, double* bitcast (%two_type* @two to double*), align 8
  %599 = fadd double %597, %598
  store double %599, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %600 = add i64 %586, 42
  store i64 %600, i64* %PC, align 8
  store double %599, double* %596, align 8
  %601 = load i64, i64* %RBP, align 8
  %602 = add i64 %601, -48
  %603 = load i64, i64* %PC, align 8
  %604 = add i64 %603, 5
  store i64 %604, i64* %PC, align 8
  %605 = inttoptr i64 %602 to double*
  %606 = load double, double* %605, align 8
  store double %606, double* %76, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %607 = add i64 %601, -16
  %608 = add i64 %603, 10
  store i64 %608, i64* %PC, align 8
  %609 = inttoptr i64 %607 to double*
  %610 = load double, double* %609, align 8
  store double %610, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %611 = add i64 %601, -24
  %612 = add i64 %603, 15
  store i64 %612, i64* %PC, align 8
  %613 = inttoptr i64 %611 to double*
  %614 = load double, double* %613, align 8
  %615 = fsub double %610, %614
  store double %615, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %616 = fadd double %606, %615
  store double %616, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %617 = add i64 %603, 24
  store i64 %617, i64* %PC, align 8
  store double %616, double* %605, align 8
  %618 = load i64, i64* %RBP, align 8
  %619 = add i64 %618, -32
  %620 = load i64, i64* %PC, align 8
  %621 = add i64 %620, 5
  store i64 %621, i64* %PC, align 8
  %622 = inttoptr i64 %619 to double*
  %623 = load double, double* %622, align 8
  store double %623, double* %76, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %624 = add i64 %618, -16
  %625 = add i64 %620, 10
  store i64 %625, i64* %PC, align 8
  %626 = inttoptr i64 %624 to double*
  %627 = load double, double* %626, align 8
  store double %627, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %628 = add i64 %618, -24
  %629 = add i64 %620, 15
  store i64 %629, i64* %PC, align 8
  %630 = inttoptr i64 %628 to double*
  %631 = load double, double* %630, align 8
  %632 = fmul double %627, %631
  store double %632, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %633 = fsub double %623, %632
  store double %633, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %634 = add i64 %620, 24
  store i64 %634, i64* %PC, align 8
  store double %633, double* %622, align 8
  %635 = load i64, i64* %RBP, align 8
  %636 = add i64 %635, -40
  %637 = load i64, i64* %PC, align 8
  %638 = add i64 %637, 5
  store i64 %638, i64* %PC, align 8
  %639 = inttoptr i64 %636 to double*
  %640 = load double, double* %639, align 8
  store double %640, double* %76, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %641 = add i64 %635, -16
  %642 = add i64 %637, 10
  store i64 %642, i64* %PC, align 8
  %643 = inttoptr i64 %641 to double*
  %644 = load double, double* %643, align 8
  store double %644, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %645 = add i64 %635, -24
  %646 = add i64 %637, 15
  store i64 %646, i64* %PC, align 8
  %647 = inttoptr i64 %645 to double*
  %648 = load double, double* %647, align 8
  %649 = fdiv double %644, %648
  store double %649, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %650 = fadd double %640, %649
  store double %650, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %651 = add i64 %637, 24
  store i64 %651, i64* %PC, align 8
  store double %650, double* %639, align 8
  %652 = load i64, i64* %RBP, align 8
  %653 = add i64 %652, -72
  %654 = load i64, i64* %PC, align 8
  %655 = add i64 %654, 4
  store i64 %655, i64* %PC, align 8
  %656 = inttoptr i64 %653 to i64*
  %657 = load i64, i64* %656, align 8
  %658 = add i64 %657, 1
  store i64 %658, i64* %RAX, align 8, !tbaa !2428
  %659 = icmp eq i64 %657, -1
  %660 = icmp eq i64 %658, 0
  %661 = or i1 %659, %660
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %24, align 1, !tbaa !2432
  %663 = trunc i64 %658 to i32
  %664 = and i32 %663, 255
  %665 = tail call i32 @llvm.ctpop.i32(i32 %664) #8
  %666 = trunc i32 %665 to i8
  %667 = and i8 %666, 1
  %668 = xor i8 %667, 1
  store i8 %668, i8* %31, align 1, !tbaa !2446
  %669 = xor i64 %657, %658
  %670 = lshr i64 %669, 4
  %671 = trunc i64 %670 to i8
  %672 = and i8 %671, 1
  store i8 %672, i8* %36, align 1, !tbaa !2450
  %673 = icmp eq i64 %658, 0
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %39, align 1, !tbaa !2447
  %675 = lshr i64 %658, 63
  %676 = trunc i64 %675 to i8
  store i8 %676, i8* %42, align 1, !tbaa !2448
  %677 = lshr i64 %657, 63
  %678 = xor i64 %675, %677
  %679 = add nuw nsw i64 %678, %675
  %680 = icmp eq i64 %679, 2
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %48, align 1, !tbaa !2449
  %682 = add i64 %654, 12
  store i64 %682, i64* %PC, align 8
  store i64 %658, i64* %656, align 8
  %683 = load i64, i64* %PC, align 8
  %684 = add i64 %683, -173
  store i64 %684, i64* %58, align 8, !tbaa !2428
  br label %block_400bc8

block_400ad4:                                     ; preds = %block_400ae2, %block_4008ba
  %685 = phi i64 [ %3274, %block_400ae2 ], [ %.pre10, %block_4008ba ]
  %686 = load i64, i64* %RBP, align 8
  %687 = add i64 %686, -72
  %688 = add i64 %685, 4
  store i64 %688, i64* %PC, align 8
  %689 = inttoptr i64 %687 to i64*
  %690 = load i64, i64* %689, align 8
  store i64 %690, i64* %RAX, align 8, !tbaa !2428
  %691 = add i64 %686, -80
  %692 = add i64 %685, 8
  store i64 %692, i64* %PC, align 8
  %693 = inttoptr i64 %691 to i64*
  %694 = load i64, i64* %693, align 8
  %695 = sub i64 %690, %694
  %696 = icmp ult i64 %690, %694
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %24, align 1, !tbaa !2432
  %698 = trunc i64 %695 to i32
  %699 = and i32 %698, 255
  %700 = tail call i32 @llvm.ctpop.i32(i32 %699) #8
  %701 = trunc i32 %700 to i8
  %702 = and i8 %701, 1
  %703 = xor i8 %702, 1
  store i8 %703, i8* %31, align 1, !tbaa !2446
  %704 = xor i64 %694, %690
  %705 = xor i64 %704, %695
  %706 = lshr i64 %705, 4
  %707 = trunc i64 %706 to i8
  %708 = and i8 %707, 1
  store i8 %708, i8* %36, align 1, !tbaa !2450
  %709 = icmp eq i64 %695, 0
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %39, align 1, !tbaa !2447
  %711 = lshr i64 %695, 63
  %712 = trunc i64 %711 to i8
  store i8 %712, i8* %42, align 1, !tbaa !2448
  %713 = lshr i64 %690, 63
  %714 = lshr i64 %694, 63
  %715 = xor i64 %714, %713
  %716 = xor i64 %711, %713
  %717 = add nuw nsw i64 %716, %715
  %718 = icmp eq i64 %717, 2
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %48, align 1, !tbaa !2449
  %720 = icmp ne i8 %712, 0
  %721 = xor i1 %720, %718
  %.demorgan25 = or i1 %709, %721
  %.v26 = select i1 %.demorgan25, i64 14, i64 87
  %722 = add i64 %685, %.v26
  %723 = add i64 %722, 10
  store i64 %723, i64* %PC, align 8
  br i1 %.demorgan25, label %block_400ae2, label %block_400b2b

block_4018ee:                                     ; preds = %block_4018d9
  %724 = add i64 %568, 4
  store i64 %724, i64* %PC, align 8
  %725 = load i64, i64* %534, align 8
  store i64 %725, i64* %RAX, align 8, !tbaa !2428
  %726 = sitofp i64 %725 to double
  store double %726, double* %76, align 1, !tbaa !2451
  %727 = add i64 %531, -48
  %728 = add i64 %568, 14
  store i64 %728, i64* %PC, align 8
  %729 = inttoptr i64 %727 to double*
  %730 = load double, double* %729, align 8
  %731 = fmul double %726, %730
  store double %731, double* %76, align 1, !tbaa !2451
  %732 = add i64 %531, -24
  %733 = add i64 %568, 19
  store i64 %733, i64* %PC, align 8
  %734 = inttoptr i64 %732 to double*
  store double %731, double* %734, align 8
  %735 = load i64, i64* %RBP, align 8
  %736 = add i64 %735, -24
  %737 = load i64, i64* %PC, align 8
  %738 = add i64 %737, 5
  store i64 %738, i64* %PC, align 8
  %739 = inttoptr i64 %736 to double*
  %740 = load double, double* %739, align 8
  store double %740, double* %76, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %741 = add i64 %737, 10
  store i64 %741, i64* %PC, align 8
  %742 = load double, double* %739, align 8
  %743 = fmul double %740, %742
  store double %743, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %744 = add i64 %735, -40
  %745 = add i64 %737, 15
  store i64 %745, i64* %PC, align 8
  %746 = inttoptr i64 %744 to double*
  store double %743, double* %746, align 8
  %747 = load i64, i64* %RBP, align 8
  %748 = add i64 %747, -24
  %749 = load i64, i64* %PC, align 8
  %750 = add i64 %749, 5
  store i64 %750, i64* %PC, align 8
  %751 = inttoptr i64 %748 to double*
  %752 = load double, double* %751, align 8
  store double %752, double* %76, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %753 = load double, double* bitcast (%A6_type* @A6 to double*), align 8
  store double %753, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %754 = add i64 %747, -40
  %755 = add i64 %749, 19
  store i64 %755, i64* %PC, align 8
  %756 = inttoptr i64 %754 to double*
  %757 = load double, double* %756, align 8
  %758 = fmul double %753, %757
  %759 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %760 = fadd double %758, %759
  store double %760, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %761 = add i64 %749, 33
  store i64 %761, i64* %PC, align 8
  %762 = load double, double* %756, align 8
  %763 = fmul double %760, %762
  %764 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %765 = fadd double %763, %764
  store double %765, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %766 = add i64 %749, 47
  store i64 %766, i64* %PC, align 8
  %767 = load double, double* %756, align 8
  %768 = fmul double %765, %767
  %769 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %770 = fadd double %768, %769
  store double %770, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %771 = add i64 %749, 61
  store i64 %771, i64* %PC, align 8
  %772 = load double, double* %756, align 8
  %773 = fmul double %770, %772
  %774 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %775 = fadd double %773, %774
  store double %775, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %776 = add i64 %749, 75
  store i64 %776, i64* %PC, align 8
  %777 = load double, double* %756, align 8
  %778 = fmul double %775, %777
  %779 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %780 = fadd double %778, %779
  store double %780, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %781 = add i64 %749, 89
  store i64 %781, i64* %PC, align 8
  %782 = load double, double* %756, align 8
  %783 = fmul double %780, %782
  %784 = load double, double* bitcast (%one_type* @one to double*), align 8
  %785 = fadd double %783, %784
  store double %785, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %786 = fmul double %752, %785
  store double %786, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %787 = add i64 %747, -32
  %788 = add i64 %749, 107
  store i64 %788, i64* %PC, align 8
  %789 = inttoptr i64 %787 to double*
  store double %786, double* %789, align 8
  %790 = load i64, i64* %RBP, align 8
  %791 = add i64 %790, -16
  %792 = load i64, i64* %PC, align 8
  %793 = add i64 %792, 5
  store i64 %793, i64* %PC, align 8
  %794 = inttoptr i64 %791 to i64*
  %795 = load i64, i64* %794, align 8
  %796 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %795, i64* %796, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %797 = add i64 %790, -32
  %798 = add i64 %792, 10
  store i64 %798, i64* %PC, align 8
  %799 = inttoptr i64 %797 to i64*
  %800 = load i64, i64* %799, align 8
  %801 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %800, i64* %801, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %802 = add i64 %790, -40
  %803 = add i64 %792, 15
  store i64 %803, i64* %PC, align 8
  %804 = inttoptr i64 %802 to double*
  %805 = load double, double* %804, align 8
  store double %805, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %806 = add i64 %792, 20
  store i64 %806, i64* %PC, align 8
  %807 = load double, double* %804, align 8
  store double %807, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %808 = add i64 %792, 25
  store i64 %808, i64* %PC, align 8
  %809 = load double, double* %804, align 8
  store double %809, double* %98, align 1, !tbaa !2451
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %810 = add i64 %792, 30
  store i64 %810, i64* %PC, align 8
  %811 = load double, double* %804, align 8
  store double %811, double* %103, align 1, !tbaa !2451
  store double 0.000000e+00, double* %106, align 1, !tbaa !2451
  %812 = add i64 %792, 35
  store i64 %812, i64* %PC, align 8
  %813 = load double, double* %804, align 8
  store double %813, double* %108, align 1, !tbaa !2451
  store double 0.000000e+00, double* %111, align 1, !tbaa !2451
  %814 = load double, double* bitcast (%B6_type* @B6 to double*), align 8
  store double %814, double* %123, align 1, !tbaa !2451
  store double 0.000000e+00, double* %225, align 1, !tbaa !2451
  %815 = add i64 %792, 49
  store i64 %815, i64* %PC, align 8
  %816 = load double, double* %804, align 8
  %817 = fmul double %814, %816
  %818 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %819 = fadd double %817, %818
  store double %819, double* %123, align 1, !tbaa !2451
  store i64 0, i64* %224, align 1, !tbaa !2451
  %820 = fmul double %813, %819
  %821 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %822 = fadd double %820, %821
  store double %822, double* %108, align 1, !tbaa !2451
  store i64 0, i64* %110, align 1, !tbaa !2451
  %823 = fmul double %811, %822
  %824 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %825 = fadd double %823, %824
  store double %825, double* %103, align 1, !tbaa !2451
  store i64 0, i64* %105, align 1, !tbaa !2451
  %826 = fmul double %809, %825
  %827 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %828 = fadd double %826, %827
  store double %828, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %829 = fmul double %807, %828
  %830 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %831 = fadd double %829, %830
  store double %831, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %832 = fmul double %805, %831
  %833 = load double, double* bitcast (%one_type* @one to double*), align 8
  %834 = fadd double %832, %833
  store double %834, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %835 = load double, double* %82, align 1
  %836 = fmul double %835, %834
  store double %836, double* %82, align 1, !tbaa !2451
  %837 = load double, double* %76, align 1
  %838 = fadd double %837, %836
  store double %838, double* %76, align 1, !tbaa !2451
  %839 = load i64, i64* %RBP, align 8
  %840 = add i64 %839, -16
  %841 = add i64 %792, 136
  store i64 %841, i64* %PC, align 8
  %842 = inttoptr i64 %840 to double*
  store double %838, double* %842, align 8
  %843 = load i64, i64* %RBP, align 8
  %844 = add i64 %843, -72
  %845 = load i64, i64* %PC, align 8
  %846 = add i64 %845, 4
  store i64 %846, i64* %PC, align 8
  %847 = inttoptr i64 %844 to i64*
  %848 = load i64, i64* %847, align 8
  %849 = add i64 %848, 1
  store i64 %849, i64* %RAX, align 8, !tbaa !2428
  %850 = icmp eq i64 %848, -1
  %851 = icmp eq i64 %849, 0
  %852 = or i1 %850, %851
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %24, align 1, !tbaa !2432
  %854 = trunc i64 %849 to i32
  %855 = and i32 %854, 255
  %856 = tail call i32 @llvm.ctpop.i32(i32 %855) #8
  %857 = trunc i32 %856 to i8
  %858 = and i8 %857, 1
  %859 = xor i8 %858, 1
  store i8 %859, i8* %31, align 1, !tbaa !2446
  %860 = xor i64 %848, %849
  %861 = lshr i64 %860, 4
  %862 = trunc i64 %861 to i8
  %863 = and i8 %862, 1
  store i8 %863, i8* %36, align 1, !tbaa !2450
  %864 = icmp eq i64 %849, 0
  %865 = zext i1 %864 to i8
  store i8 %865, i8* %39, align 1, !tbaa !2447
  %866 = lshr i64 %849, 63
  %867 = trunc i64 %866 to i8
  store i8 %867, i8* %42, align 1, !tbaa !2448
  %868 = lshr i64 %848, 63
  %869 = xor i64 %866, %868
  %870 = add nuw nsw i64 %869, %866
  %871 = icmp eq i64 %870, 2
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %48, align 1, !tbaa !2449
  %873 = add i64 %845, 12
  store i64 %873, i64* %PC, align 8
  store i64 %849, i64* %847, align 8
  %874 = load i64, i64* %PC, align 8
  %875 = add i64 %874, -310
  store i64 %875, i64* %58, align 8, !tbaa !2428
  br label %block_4018d9

block_401ccb:                                     ; preds = %block_401ce0, %block_401a14
  %876 = phi i64 [ %2932, %block_401ce0 ], [ %.pre18, %block_401a14 ]
  %877 = load i64, i64* %RBP, align 8
  %878 = add i64 %877, -72
  %879 = add i64 %876, 4
  store i64 %879, i64* %PC, align 8
  %880 = inttoptr i64 %878 to i64*
  %881 = load i64, i64* %880, align 8
  store i64 %881, i64* %RAX, align 8, !tbaa !2428
  %882 = add i64 %877, -80
  %883 = add i64 %876, 8
  store i64 %883, i64* %PC, align 8
  %884 = inttoptr i64 %882 to i64*
  %885 = load i64, i64* %884, align 8
  %886 = add i64 %885, -1
  store i64 %886, i64* %RCX, align 8, !tbaa !2428
  %887 = lshr i64 %886, 63
  %888 = sub i64 %881, %886
  %889 = icmp ult i64 %881, %886
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %24, align 1, !tbaa !2432
  %891 = trunc i64 %888 to i32
  %892 = and i32 %891, 255
  %893 = tail call i32 @llvm.ctpop.i32(i32 %892) #8
  %894 = trunc i32 %893 to i8
  %895 = and i8 %894, 1
  %896 = xor i8 %895, 1
  store i8 %896, i8* %31, align 1, !tbaa !2446
  %897 = xor i64 %886, %881
  %898 = xor i64 %897, %888
  %899 = lshr i64 %898, 4
  %900 = trunc i64 %899 to i8
  %901 = and i8 %900, 1
  store i8 %901, i8* %36, align 1, !tbaa !2450
  %902 = icmp eq i64 %888, 0
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %39, align 1, !tbaa !2447
  %904 = lshr i64 %888, 63
  %905 = trunc i64 %904 to i8
  store i8 %905, i8* %42, align 1, !tbaa !2448
  %906 = lshr i64 %881, 63
  %907 = xor i64 %887, %906
  %908 = xor i64 %904, %906
  %909 = add nuw nsw i64 %908, %907
  %910 = icmp eq i64 %909, 2
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %48, align 1, !tbaa !2449
  %912 = icmp ne i8 %905, 0
  %913 = xor i1 %912, %910
  %.demorgan38 = or i1 %902, %913
  %.v39 = select i1 %.demorgan38, i64 21, i64 156
  %914 = add i64 %876, %.v39
  store i64 %914, i64* %58, align 8, !tbaa !2428
  br i1 %.demorgan38, label %block_401ce0, label %block_401d67

block_4020c8:                                     ; preds = %block_401f8c
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %915 = add i64 %2833, 1320
  %916 = add i64 %2833, 15
  %917 = load i64, i64* %16, align 8, !tbaa !2428
  %918 = add i64 %917, -8
  %919 = inttoptr i64 %918 to i64*
  store i64 %916, i64* %919, align 8
  store i64 %918, i64* %16, align 8, !tbaa !2428
  store i64 %915, i64* %58, align 8, !tbaa !2428
  %920 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %915, %struct.Memory* %518)
  %921 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 642), i64* %RDI, align 8, !tbaa !2428
  %922 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to i64*), align 8
  %923 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %922, i64* %923, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %924 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 224) to i64*), align 16
  %925 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %924, i64* %925, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %926 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 232) to i64*), align 8
  %927 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %926, i64* %927, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %928 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %929 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %930 = fmul double %928, %929
  %931 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %932 = fsub double %930, %931
  store double %932, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %933 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %934 = load double, double* bitcast (%three_type* @three to double*), align 8
  %935 = fdiv double %933, %934
  store double %935, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %936 = load i64, i64* %RBP, align 8
  %937 = add i64 %936, -24
  %938 = add i64 %921, 93
  store i64 %938, i64* %PC, align 8
  %939 = inttoptr i64 %937 to double*
  store double %935, double* %939, align 8
  %940 = load i64, i64* %RBP, align 8
  %941 = add i64 %940, -24
  %942 = load i64, i64* %PC, align 8
  %943 = add i64 %942, 5
  store i64 %943, i64* %PC, align 8
  %944 = inttoptr i64 %941 to double*
  %945 = load double, double* %944, align 8
  store double %945, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %946 = add i64 %942, 10
  store i64 %946, i64* %PC, align 8
  %947 = load double, double* %944, align 8
  %948 = fmul double %945, %947
  store double %948, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %949 = add i64 %940, -40
  %950 = add i64 %942, 15
  store i64 %950, i64* %PC, align 8
  %951 = inttoptr i64 %949 to double*
  store double %948, double* %951, align 8
  %952 = load i64, i64* %RBP, align 8
  %953 = add i64 %952, -24
  %954 = load i64, i64* %PC, align 8
  %955 = add i64 %954, 5
  store i64 %955, i64* %PC, align 8
  %956 = inttoptr i64 %953 to double*
  %957 = load double, double* %956, align 8
  store double %957, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %958 = load double, double* bitcast (%A6_type* @A6 to double*), align 8
  store double %958, double* %98, align 1, !tbaa !2451
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %959 = add i64 %952, -40
  %960 = add i64 %954, 19
  store i64 %960, i64* %PC, align 8
  %961 = inttoptr i64 %959 to double*
  %962 = load double, double* %961, align 8
  %963 = fmul double %958, %962
  %964 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %965 = fadd double %963, %964
  store double %965, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %966 = add i64 %954, 33
  store i64 %966, i64* %PC, align 8
  %967 = load double, double* %961, align 8
  %968 = fmul double %965, %967
  %969 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %970 = fadd double %968, %969
  store double %970, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %971 = add i64 %954, 47
  store i64 %971, i64* %PC, align 8
  %972 = load double, double* %961, align 8
  %973 = fmul double %970, %972
  %974 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %975 = fadd double %973, %974
  store double %975, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %976 = add i64 %954, 61
  store i64 %976, i64* %PC, align 8
  %977 = load double, double* %961, align 8
  %978 = fmul double %975, %977
  %979 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %980 = fadd double %978, %979
  store double %980, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %981 = add i64 %954, 75
  store i64 %981, i64* %PC, align 8
  %982 = load double, double* %961, align 8
  %983 = fmul double %980, %982
  %984 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %985 = fadd double %983, %984
  store double %985, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %986 = add i64 %954, 89
  store i64 %986, i64* %PC, align 8
  %987 = load double, double* %961, align 8
  %988 = fmul double %985, %987
  %989 = load double, double* bitcast (%one_type* @one to double*), align 8
  %990 = fadd double %988, %989
  store double %990, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %991 = fmul double %957, %990
  store double %991, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  store double %991, double* bitcast (%sa_type* @sa to double*), align 8
  %992 = add i64 %954, 116
  store i64 %992, i64* %PC, align 8
  %993 = load double, double* %961, align 8
  store double %993, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %994 = load i64, i64* %RBP, align 8
  %995 = add i64 %994, -40
  %996 = add i64 %954, 121
  store i64 %996, i64* %PC, align 8
  %997 = inttoptr i64 %995 to double*
  %998 = load double, double* %997, align 8
  store double %998, double* %98, align 1, !tbaa !2451
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %999 = add i64 %954, 126
  store i64 %999, i64* %PC, align 8
  %1000 = load double, double* %997, align 8
  store double %1000, double* %103, align 1, !tbaa !2451
  store double 0.000000e+00, double* %106, align 1, !tbaa !2451
  %1001 = add i64 %954, 131
  store i64 %1001, i64* %PC, align 8
  %1002 = load double, double* %997, align 8
  store double %1002, double* %108, align 1, !tbaa !2451
  store double 0.000000e+00, double* %111, align 1, !tbaa !2451
  %1003 = add i64 %954, 136
  store i64 %1003, i64* %PC, align 8
  %1004 = load double, double* %997, align 8
  store double %1004, double* %123, align 1, !tbaa !2451
  store double 0.000000e+00, double* %225, align 1, !tbaa !2451
  %1005 = load double, double* bitcast (%B6_type* @B6 to double*), align 8
  store double %1005, double* %2036, align 1, !tbaa !2451
  store double 0.000000e+00, double* %2038, align 1, !tbaa !2451
  %1006 = add i64 %954, 152
  store i64 %1006, i64* %PC, align 8
  %1007 = load double, double* %997, align 8
  %1008 = fmul double %1005, %1007
  %1009 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %1010 = fadd double %1008, %1009
  store double %1010, double* %2036, align 1, !tbaa !2451
  store i64 0, i64* %2037, align 1, !tbaa !2451
  %1011 = fmul double %1004, %1010
  %1012 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %1013 = fadd double %1011, %1012
  store double %1013, double* %123, align 1, !tbaa !2451
  store i64 0, i64* %224, align 1, !tbaa !2451
  %1014 = fmul double %1002, %1013
  %1015 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %1016 = fadd double %1014, %1015
  store double %1016, double* %108, align 1, !tbaa !2451
  store i64 0, i64* %110, align 1, !tbaa !2451
  %1017 = fmul double %1000, %1016
  %1018 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %1019 = fadd double %1017, %1018
  store double %1019, double* %103, align 1, !tbaa !2451
  store i64 0, i64* %105, align 1, !tbaa !2451
  %1020 = fmul double %998, %1019
  %1021 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %1022 = fadd double %1020, %1021
  store double %1022, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %1023 = fmul double %993, %1022
  %1024 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1025 = fadd double %1023, %1024
  store double %1025, double* bitcast (%sb_type* @sb to double*), align 8
  %1026 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %1027 = fmul double %1026, %1025
  %1028 = fmul double %1027, %1025
  store double %1028, double* bitcast (%sa_type* @sa to double*), align 8
  %1029 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %1030 = load double, double* %138, align 1
  %1031 = fdiv double %1029, %1030
  store double %1031, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  store double %1031, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 200) to double*), align 8
  %1032 = load i64, i64* %RBP, align 8
  %1033 = add i64 %1032, -48
  %1034 = add i64 %954, 300
  store i64 %1034, i64* %PC, align 8
  %1035 = inttoptr i64 %1033 to double*
  %1036 = load double, double* %1035, align 8
  store double %1036, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %1037 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  store double %1037, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %1038 = load double, double* bitcast (%two_type* @two to double*), align 8
  store double %1038, double* %98, align 1, !tbaa !2451
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %1039 = add i64 %1032, -16
  %1040 = add i64 %954, 323
  store i64 %1040, i64* %PC, align 8
  %1041 = inttoptr i64 %1039 to double*
  %1042 = load double, double* %1041, align 8
  %1043 = fmul double %1038, %1042
  store double %1043, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %1044 = fadd double %1037, %1043
  store double %1044, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %1045 = fmul double %1036, %1044
  %1046 = fdiv double %1045, %1038
  store double %1046, double* bitcast (%sa_type* @sa to double*), align 8
  %1047 = load double, double* %141, align 1
  store double %1047, double* bitcast (%sb_type* @sb to double*), align 8
  %1048 = fsub double %1046, %1047
  store double %1048, double* bitcast (%sc_type* @sc to double*), align 8
  %1049 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1050 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 200) to double*), align 8
  %1051 = fdiv double %1049, %1050
  store double %1051, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 208) to double*), align 16
  %1052 = load <2 x i32>, <2 x i32>* %1522, align 1
  %1053 = load <2 x i32>, <2 x i32>* %1524, align 1
  %1054 = extractelement <2 x i32> %1052, i32 0
  store i32 %1054, i32* %1527, align 1, !tbaa !2455
  %1055 = extractelement <2 x i32> %1052, i32 1
  store i32 %1055, i32* %1530, align 1, !tbaa !2455
  %1056 = extractelement <2 x i32> %1053, i32 0
  store i32 %1056, i32* %1532, align 1, !tbaa !2455
  %1057 = extractelement <2 x i32> %1053, i32 1
  store i32 %1057, i32* %1535, align 1, !tbaa !2455
  %1058 = load double, double* %82, align 1
  %1059 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %1060 = fmul double %1058, %1059
  store double %1060, double* %82, align 1, !tbaa !2451
  store i32 %1054, i32* %1539, align 1, !tbaa !2455
  store i32 %1055, i32* %1541, align 1, !tbaa !2455
  store i32 %1056, i32* %1542, align 1, !tbaa !2455
  store i32 %1057, i32* %1544, align 1, !tbaa !2455
  %1061 = load double, double* %88, align 1
  %1062 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %1063 = fmul double %1061, %1062
  store double %1063, double* %88, align 1, !tbaa !2451
  %1064 = bitcast <2 x i32> %1052 to double
  %1065 = fmul double %1064, %1051
  %1066 = load i64, i64* %RBP, align 8
  %1067 = add i64 %1066, -304
  %1068 = add i64 %954, 453
  store i64 %1068, i64* %PC, align 8
  %1069 = inttoptr i64 %1067 to double*
  store double %1065, double* %1069, align 8
  %1070 = load i64, i64* %PC, align 8
  %1071 = load <2 x i32>, <2 x i32>* %1555, align 1
  %1072 = load <2 x i32>, <2 x i32>* %1558, align 1
  %1073 = extractelement <2 x i32> %1071, i32 0
  store i32 %1073, i32* %202, align 1, !tbaa !2455
  %1074 = extractelement <2 x i32> %1071, i32 1
  store i32 %1074, i32* %204, align 1, !tbaa !2455
  %1075 = extractelement <2 x i32> %1072, i32 0
  store i32 %1075, i32* %205, align 1, !tbaa !2455
  %1076 = extractelement <2 x i32> %1072, i32 1
  store i32 %1076, i32* %207, align 1, !tbaa !2455
  %1077 = load <2 x i32>, <2 x i32>* %1564, align 1
  %1078 = load <2 x i32>, <2 x i32>* %1567, align 1
  %1079 = extractelement <2 x i32> %1077, i32 0
  store i32 %1079, i32* %1527, align 1, !tbaa !2455
  %1080 = extractelement <2 x i32> %1077, i32 1
  store i32 %1080, i32* %1530, align 1, !tbaa !2455
  %1081 = extractelement <2 x i32> %1078, i32 0
  store i32 %1081, i32* %1532, align 1, !tbaa !2455
  %1082 = extractelement <2 x i32> %1078, i32 1
  store i32 %1082, i32* %1535, align 1, !tbaa !2455
  %1083 = load i64, i64* %RBP, align 8
  %1084 = add i64 %1083, -304
  %1085 = add i64 %1070, 14
  store i64 %1085, i64* %PC, align 8
  %1086 = inttoptr i64 %1084 to i64*
  %1087 = load i64, i64* %1086, align 8
  %1088 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1087, i64* %1088, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %1089 = add i64 %1083, -308
  %1090 = load i32, i32* %EAX, align 4
  %1091 = add i64 %1070, 20
  store i64 %1091, i64* %PC, align 8
  %1092 = inttoptr i64 %1089 to i32*
  store i32 %1090, i32* %1092, align 4
  %1093 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %1094 = add i64 %1093, -7916
  %1095 = add i64 %1093, 7
  %1096 = load i64, i64* %16, align 8, !tbaa !2428
  %1097 = add i64 %1096, -8
  %1098 = inttoptr i64 %1097 to i64*
  store i64 %1095, i64* %1098, align 8
  store i64 %1097, i64* %16, align 8, !tbaa !2428
  store i64 %1094, i64* %58, align 8, !tbaa !2428
  %1099 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %920)
  %1100 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 304), i64* %RDI, align 8, !tbaa !2428
  %1101 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 192) to i64*), align 16
  %1102 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1101, i64* %1102, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %1103 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 200) to i64*), align 8
  %1104 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1103, i64* %1104, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %1105 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 208) to i64*), align 16
  %1106 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1105, i64* %1106, align 1, !tbaa !2451
  %1107 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 216) to double*), align 8
  %1108 = load double, double* bitcast (%five_type* @five to double*), align 8
  %1109 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 48) to double*), align 16
  %1110 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to double*), align 8
  %1111 = fsub double %1109, %1110
  store double %1111, double* %103, align 1, !tbaa !2451
  store i64 0, i64* %105, align 1, !tbaa !2451
  %1112 = fmul double %1108, %1111
  %1113 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %1114 = fadd double %1112, %1113
  %1115 = fdiv double %1114, %1107
  store double %1115, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 216) to double*), align 8
  %1116 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1117 = fdiv double %1116, %1115
  store double %1117, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 224) to double*), align 16
  %1118 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %1119 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %1120 = fadd double %1118, %1119
  %1121 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %1122 = fadd double %1120, %1121
  %1123 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %1124 = fadd double %1122, %1123
  %1125 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %1126 = fadd double %1124, %1125
  store double %1126, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 232) to double*), align 8
  %1127 = load double, double* bitcast (%four_type* @four to double*), align 8
  %1128 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 168) to double*), align 8
  %1129 = fmul double %1127, %1128
  store double %1129, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %1130 = fadd double %1126, %1129
  %1131 = load double, double* %138, align 1
  %1132 = fdiv double %1130, %1131
  store double %1132, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  store double %1132, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 232) to double*), align 8
  %1133 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1134 = fdiv double %1133, %1132
  store double %1134, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 240) to double*), align 16
  %1135 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %1136 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %1137 = fadd double %1135, %1136
  %1138 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %1139 = fadd double %1137, %1138
  %1140 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %1141 = fadd double %1139, %1140
  %1142 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %1143 = fadd double %1141, %1142
  store double %1143, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 248) to double*), align 8
  %1144 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 168) to double*), align 8
  %1145 = fadd double %1143, %1144
  %1146 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %1147 = fadd double %1145, %1146
  %1148 = load double, double* %141, align 1
  %1149 = fdiv double %1147, %1148
  store double %1149, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  store double %1149, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 248) to double*), align 8
  %1150 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1151 = fdiv double %1150, %1149
  store double %1151, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 256) to double*), align 16
  %1152 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %1153 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %1154 = fadd double %1152, %1153
  %1155 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %1156 = fadd double %1154, %1155
  %1157 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %1158 = fadd double %1156, %1157
  %1159 = load double, double* %144, align 1
  %1160 = fdiv double %1158, %1159
  store double %1160, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  store double %1160, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 264) to double*), align 8
  %1161 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1162 = fdiv double %1161, %1160
  store double %1162, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  store double %1162, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 272) to double*), align 16
  %1163 = load i64, i64* %RBP, align 8
  %1164 = add i64 %1163, -312
  %1165 = load i32, i32* %EAX, align 4
  %1166 = add i64 %1100, 450
  store i64 %1166, i64* %PC, align 8
  %1167 = inttoptr i64 %1164 to i32*
  store i32 %1165, i32* %1167, align 4
  %1168 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %1169 = add i64 %1168, -8373
  %1170 = add i64 %1168, 7
  %1171 = load i64, i64* %16, align 8, !tbaa !2428
  %1172 = add i64 %1171, -8
  %1173 = inttoptr i64 %1172 to i64*
  store i64 %1170, i64* %1173, align 8
  store i64 %1172, i64* %16, align 8, !tbaa !2428
  store i64 %1169, i64* %58, align 8, !tbaa !2428
  %1174 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1099)
  %1175 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 678), i64* %RDI, align 8, !tbaa !2428
  %1176 = load i64, i64* %RBP, align 8
  %1177 = add i64 %1176, -80
  %1178 = add i64 %1175, 14
  store i64 %1178, i64* %PC, align 8
  %1179 = inttoptr i64 %1177 to i64*
  %1180 = load i64, i64* %1179, align 8
  store i64 %1180, i64* %RSI, align 8, !tbaa !2428
  %1181 = add i64 %1176, -316
  %1182 = load i32, i32* %EAX, align 4
  %1183 = add i64 %1175, 20
  store i64 %1183, i64* %PC, align 8
  %1184 = inttoptr i64 %1181 to i32*
  store i32 %1182, i32* %1184, align 4
  %1185 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %1186 = add i64 %1185, -8400
  %1187 = add i64 %1185, 7
  %1188 = load i64, i64* %16, align 8, !tbaa !2428
  %1189 = add i64 %1188, -8
  %1190 = inttoptr i64 %1189 to i64*
  store i64 %1187, i64* %1190, align 8
  store i64 %1189, i64* %16, align 8, !tbaa !2428
  store i64 %1186, i64* %58, align 8, !tbaa !2428
  %1191 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1174)
  %1192 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 706), i64* %RDI, align 8, !tbaa !2428
  %1193 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to double*), align 8
  %1194 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %1195 = fmul double %1193, %1194
  store double %1195, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %1196 = load i64, i64* %RBP, align 8
  %1197 = add i64 %1196, -320
  %1198 = load i32, i32* %EAX, align 4
  %1199 = add i64 %1192, 33
  store i64 %1199, i64* %PC, align 8
  %1200 = inttoptr i64 %1197 to i32*
  store i32 %1198, i32* %1200, align 4
  %1201 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %1202 = add i64 %1201, -8440
  %1203 = add i64 %1201, 7
  %1204 = load i64, i64* %16, align 8, !tbaa !2428
  %1205 = add i64 %1204, -8
  %1206 = inttoptr i64 %1205 to i64*
  store i64 %1203, i64* %1206, align 8
  store i64 %1205, i64* %16, align 8, !tbaa !2428
  store i64 %1202, i64* %58, align 8, !tbaa !2428
  %1207 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1191)
  %1208 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 736), i64* %RDI, align 8, !tbaa !2428
  %1209 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to double*), align 8
  %1210 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 224) to double*), align 16
  %1211 = fmul double %1209, %1210
  store double %1211, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %1212 = load i64, i64* %RBP, align 8
  %1213 = add i64 %1212, -324
  %1214 = load i32, i32* %EAX, align 4
  %1215 = add i64 %1208, 33
  store i64 %1215, i64* %PC, align 8
  %1216 = inttoptr i64 %1213 to i32*
  store i32 %1214, i32* %1216, align 4
  %1217 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %1218 = add i64 %1217, -8480
  %1219 = add i64 %1217, 7
  %1220 = load i64, i64* %16, align 8, !tbaa !2428
  %1221 = add i64 %1220, -8
  %1222 = inttoptr i64 %1221 to i64*
  store i64 %1219, i64* %1222, align 8
  store i64 %1221, i64* %16, align 8, !tbaa !2428
  store i64 %1218, i64* %58, align 8, !tbaa !2428
  %1223 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1207)
  %1224 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 766), i64* %RDI, align 8, !tbaa !2428
  %1225 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to double*), align 8
  %1226 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 240) to double*), align 16
  %1227 = fmul double %1225, %1226
  store double %1227, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %1228 = load i64, i64* %RBP, align 8
  %1229 = add i64 %1228, -328
  %1230 = load i32, i32* %EAX, align 4
  %1231 = add i64 %1224, 33
  store i64 %1231, i64* %PC, align 8
  %1232 = inttoptr i64 %1229 to i32*
  store i32 %1230, i32* %1232, align 4
  %1233 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %1234 = add i64 %1233, -8520
  %1235 = add i64 %1233, 7
  %1236 = load i64, i64* %16, align 8, !tbaa !2428
  %1237 = add i64 %1236, -8
  %1238 = inttoptr i64 %1237 to i64*
  store i64 %1235, i64* %1238, align 8
  store i64 %1237, i64* %16, align 8, !tbaa !2428
  store i64 %1234, i64* %58, align 8, !tbaa !2428
  %1239 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1223)
  %1240 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 796), i64* %RDI, align 8, !tbaa !2428
  %1241 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to double*), align 8
  %1242 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 256) to double*), align 16
  %1243 = fmul double %1241, %1242
  store double %1243, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %1244 = load i64, i64* %RBP, align 8
  %1245 = add i64 %1244, -332
  %1246 = load i32, i32* %EAX, align 4
  %1247 = add i64 %1240, 33
  store i64 %1247, i64* %PC, align 8
  %1248 = inttoptr i64 %1245 to i32*
  store i32 %1246, i32* %1248, align 4
  %1249 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %1250 = add i64 %1249, -8560
  %1251 = add i64 %1249, 7
  %1252 = load i64, i64* %16, align 8, !tbaa !2428
  %1253 = add i64 %1252, -8
  %1254 = inttoptr i64 %1253 to i64*
  store i64 %1251, i64* %1254, align 8
  store i64 %1253, i64* %16, align 8, !tbaa !2428
  store i64 %1250, i64* %58, align 8, !tbaa !2428
  %1255 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1239)
  %1256 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 826), i64* %RDI, align 8, !tbaa !2428
  %1257 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to double*), align 8
  %1258 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 272) to double*), align 16
  %1259 = fmul double %1257, %1258
  store double %1259, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %1260 = load i64, i64* %RBP, align 8
  %1261 = add i64 %1260, -336
  %1262 = load i32, i32* %EAX, align 4
  %1263 = add i64 %1256, 33
  store i64 %1263, i64* %PC, align 8
  %1264 = inttoptr i64 %1261 to i32*
  store i32 %1262, i32* %1264, align 4
  %1265 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %1266 = add i64 %1265, -8600
  %1267 = add i64 %1265, 7
  %1268 = load i64, i64* %16, align 8, !tbaa !2428
  %1269 = add i64 %1268, -8
  %1270 = inttoptr i64 %1269 to i64*
  store i64 %1267, i64* %1270, align 8
  store i64 %1269, i64* %16, align 8, !tbaa !2428
  store i64 %1266, i64* %58, align 8, !tbaa !2428
  %1271 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1255)
  %1272 = load i64, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  %1273 = load i64, i64* %RBP, align 8
  %1274 = add i64 %1273, -340
  %1275 = load i32, i32* %EAX, align 4
  %1276 = add i64 %1272, 8
  store i64 %1276, i64* %PC, align 8
  %1277 = inttoptr i64 %1274 to i32*
  store i32 %1275, i32* %1277, align 4
  %1278 = load i32, i32* %ECX, align 4
  %1279 = zext i32 %1278 to i64
  %1280 = load i64, i64* %PC, align 8
  store i64 %1279, i64* %RAX, align 8, !tbaa !2428
  %1281 = load i64, i64* %RSP, align 8
  %1282 = add i64 %1281, 352
  store i64 %1282, i64* %RSP, align 8, !tbaa !2428
  %1283 = icmp ugt i64 %1281, -353
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %24, align 1, !tbaa !2432
  %1285 = trunc i64 %1282 to i32
  %1286 = and i32 %1285, 255
  %1287 = tail call i32 @llvm.ctpop.i32(i32 %1286) #8
  %1288 = trunc i32 %1287 to i8
  %1289 = and i8 %1288, 1
  %1290 = xor i8 %1289, 1
  store i8 %1290, i8* %31, align 1, !tbaa !2446
  %1291 = xor i64 %1281, %1282
  %1292 = lshr i64 %1291, 4
  %1293 = trunc i64 %1292 to i8
  %1294 = and i8 %1293, 1
  store i8 %1294, i8* %36, align 1, !tbaa !2450
  %1295 = icmp eq i64 %1282, 0
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %39, align 1, !tbaa !2447
  %1297 = lshr i64 %1282, 63
  %1298 = trunc i64 %1297 to i8
  store i8 %1298, i8* %42, align 1, !tbaa !2448
  %1299 = lshr i64 %1281, 63
  %1300 = xor i64 %1297, %1299
  %1301 = add nuw nsw i64 %1300, %1297
  %1302 = icmp eq i64 %1301, 2
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %48, align 1, !tbaa !2449
  %1304 = add i64 %1280, 10
  store i64 %1304, i64* %PC, align 8
  %1305 = add i64 %1281, 360
  %1306 = inttoptr i64 %1282 to i64*
  %1307 = load i64, i64* %1306, align 8
  store i64 %1307, i64* %RBP, align 8, !tbaa !2428
  store i64 %1305, i64* %16, align 8, !tbaa !2428
  %1308 = add i64 %1280, 11
  store i64 %1308, i64* %PC, align 8
  %1309 = inttoptr i64 %1305 to i64*
  %1310 = load i64, i64* %1309, align 8
  store i64 %1310, i64* %58, align 8, !tbaa !2428
  %1311 = add i64 %1281, 368
  store i64 %1311, i64* %16, align 8, !tbaa !2428
  ret %struct.Memory* %1271

block_40086f:                                     ; preds = %block_400844
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %1312 = add i64 %1397, 7553
  %1313 = add i64 %1397, 15
  %1314 = load i64, i64* %16, align 8, !tbaa !2428
  %1315 = add i64 %1314, -8
  %1316 = inttoptr i64 %1315 to i64*
  store i64 %1313, i64* %1316, align 8
  store i64 %1315, i64* %16, align 8, !tbaa !2428
  store i64 %1312, i64* %58, align 8, !tbaa !2428
  %1317 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %1312, %struct.Memory* %3283)
  %1318 = load i64, i64* %PC, align 8
  store i32 0, i32* %202, align 1, !tbaa !2454
  store i32 0, i32* %204, align 1, !tbaa !2454
  store i32 0, i32* %205, align 1, !tbaa !2454
  store i32 0, i32* %207, align 1, !tbaa !2454
  %1319 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %1320 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %1321 = fmul double %1319, %1320
  store double %1321, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  store double %1321, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %1322 = add i64 %1318, 39
  store i64 %1322, i64* %PC, align 8
  %1323 = load double, double* %144, align 1
  %1324 = fcmp uno double %1323, %1321
  br i1 %1324, label %1325, label %1335

; <label>:1325:                                   ; preds = %block_40086f
  %1326 = fadd double %1323, %1321
  %1327 = bitcast double %1326 to i64
  %1328 = and i64 %1327, 9221120237041090560
  %1329 = icmp eq i64 %1328, 9218868437227405312
  %1330 = and i64 %1327, 2251799813685247
  %1331 = icmp ne i64 %1330, 0
  %1332 = and i1 %1329, %1331
  br i1 %1332, label %1333, label %1341

; <label>:1333:                                   ; preds = %1325
  %1334 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1322, %struct.Memory* %1317) #9
  %.pre8 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

; <label>:1335:                                   ; preds = %block_40086f
  %1336 = fcmp ogt double %1323, %1321
  br i1 %1336, label %1341, label %1337

; <label>:1337:                                   ; preds = %1335
  %1338 = fcmp olt double %1323, %1321
  br i1 %1338, label %1341, label %1339

; <label>:1339:                                   ; preds = %1337
  %1340 = fcmp oeq double %1323, %1321
  br i1 %1340, label %1341, label %1345

; <label>:1341:                                   ; preds = %1339, %1337, %1335, %1325
  %1342 = phi i8 [ 0, %1335 ], [ 0, %1337 ], [ 1, %1339 ], [ 1, %1325 ]
  %1343 = phi i8 [ 0, %1335 ], [ 0, %1337 ], [ 0, %1339 ], [ 1, %1325 ]
  %1344 = phi i8 [ 0, %1335 ], [ 1, %1337 ], [ 0, %1339 ], [ 1, %1325 ]
  store i8 %1342, i8* %39, align 1, !tbaa !2453
  store i8 %1343, i8* %31, align 1, !tbaa !2453
  store i8 %1344, i8* %24, align 1, !tbaa !2453
  br label %1345

; <label>:1345:                                   ; preds = %1341, %1339
  store i8 0, i8* %48, align 1, !tbaa !2453
  store i8 0, i8* %42, align 1, !tbaa !2453
  store i8 0, i8* %36, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1: ; preds = %1345, %1333
  %1346 = phi i64 [ %.pre8, %1333 ], [ %1322, %1345 ]
  %1347 = phi %struct.Memory* [ %1334, %1333 ], [ %1317, %1345 ]
  %1348 = load i64, i64* %RBP, align 8
  %1349 = add i64 %1348, -128
  %1350 = load i32, i32* %EAX, align 4
  %1351 = add i64 %1346, 3
  store i64 %1351, i64* %PC, align 8
  %1352 = inttoptr i64 %1349 to i32*
  store i32 %1350, i32* %1352, align 4
  %1353 = load i64, i64* %PC, align 8
  %1354 = load i8, i8* %24, align 1, !tbaa !2432
  %1355 = load i8, i8* %39, align 1, !tbaa !2447
  %1356 = or i8 %1355, %1354
  %1357 = icmp ne i8 %1356, 0
  %.v24 = select i1 %1357, i64 18, i64 6
  %1358 = add i64 %1353, %.v24
  store i64 %1358, i64* %58, align 8, !tbaa !2428
  br i1 %1357, label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1.block_4008ba_crit_edge, label %block_4008ae

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1.block_4008ba_crit_edge: ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %.pre9 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  br label %block_4008ba

block_400844:                                     ; preds = %block_400859, %block_400807
  %1359 = phi i64 [ %3952, %block_400859 ], [ %.pre7, %block_400807 ]
  %1360 = load i64, i64* %RBP, align 8
  %1361 = add i64 %1360, -72
  %1362 = add i64 %1359, 4
  store i64 %1362, i64* %PC, align 8
  %1363 = inttoptr i64 %1361 to i64*
  %1364 = load i64, i64* %1363, align 8
  store i64 %1364, i64* %RAX, align 8, !tbaa !2428
  %1365 = add i64 %1360, -88
  %1366 = add i64 %1359, 8
  store i64 %1366, i64* %PC, align 8
  %1367 = inttoptr i64 %1365 to i64*
  %1368 = load i64, i64* %1367, align 8
  %1369 = add i64 %1368, -1
  store i64 %1369, i64* %RCX, align 8, !tbaa !2428
  %1370 = lshr i64 %1369, 63
  %1371 = sub i64 %1364, %1369
  %1372 = icmp ult i64 %1364, %1369
  %1373 = zext i1 %1372 to i8
  store i8 %1373, i8* %24, align 1, !tbaa !2432
  %1374 = trunc i64 %1371 to i32
  %1375 = and i32 %1374, 255
  %1376 = tail call i32 @llvm.ctpop.i32(i32 %1375) #8
  %1377 = trunc i32 %1376 to i8
  %1378 = and i8 %1377, 1
  %1379 = xor i8 %1378, 1
  store i8 %1379, i8* %31, align 1, !tbaa !2446
  %1380 = xor i64 %1369, %1364
  %1381 = xor i64 %1380, %1371
  %1382 = lshr i64 %1381, 4
  %1383 = trunc i64 %1382 to i8
  %1384 = and i8 %1383, 1
  store i8 %1384, i8* %36, align 1, !tbaa !2450
  %1385 = icmp eq i64 %1371, 0
  %1386 = zext i1 %1385 to i8
  store i8 %1386, i8* %39, align 1, !tbaa !2447
  %1387 = lshr i64 %1371, 63
  %1388 = trunc i64 %1387 to i8
  store i8 %1388, i8* %42, align 1, !tbaa !2448
  %1389 = lshr i64 %1364, 63
  %1390 = xor i64 %1370, %1389
  %1391 = xor i64 %1387, %1389
  %1392 = add nuw nsw i64 %1391, %1390
  %1393 = icmp eq i64 %1392, 2
  %1394 = zext i1 %1393 to i8
  store i8 %1394, i8* %48, align 1, !tbaa !2449
  %1395 = icmp ne i8 %1388, 0
  %1396 = xor i1 %1395, %1393
  %.demorgan22 = or i1 %1385, %1396
  %.v23 = select i1 %.demorgan22, i64 21, i64 43
  %1397 = add i64 %1359, %.v23
  store i64 %1397, i64* %58, align 8, !tbaa !2428
  br i1 %.demorgan22, label %block_400859, label %block_40086f

block_400e60:                                     ; preds = %block_400c7a, %block_400e75
  %1398 = phi i64 [ %.pre14, %block_400c7a ], [ %1944, %block_400e75 ]
  %1399 = load i64, i64* %RBP, align 8
  %1400 = add i64 %1399, -72
  %1401 = add i64 %1398, 4
  store i64 %1401, i64* %PC, align 8
  %1402 = inttoptr i64 %1400 to i64*
  %1403 = load i64, i64* %1402, align 8
  store i64 %1403, i64* %RAX, align 8, !tbaa !2428
  %1404 = add i64 %1399, -80
  %1405 = add i64 %1398, 8
  store i64 %1405, i64* %PC, align 8
  %1406 = inttoptr i64 %1404 to i64*
  %1407 = load i64, i64* %1406, align 8
  %1408 = add i64 %1407, -1
  store i64 %1408, i64* %RCX, align 8, !tbaa !2428
  %1409 = lshr i64 %1408, 63
  %1410 = sub i64 %1403, %1408
  %1411 = icmp ult i64 %1403, %1408
  %1412 = zext i1 %1411 to i8
  store i8 %1412, i8* %24, align 1, !tbaa !2432
  %1413 = trunc i64 %1410 to i32
  %1414 = and i32 %1413, 255
  %1415 = tail call i32 @llvm.ctpop.i32(i32 %1414) #8
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  %1418 = xor i8 %1417, 1
  store i8 %1418, i8* %31, align 1, !tbaa !2446
  %1419 = xor i64 %1408, %1403
  %1420 = xor i64 %1419, %1410
  %1421 = lshr i64 %1420, 4
  %1422 = trunc i64 %1421 to i8
  %1423 = and i8 %1422, 1
  store i8 %1423, i8* %36, align 1, !tbaa !2450
  %1424 = icmp eq i64 %1410, 0
  %1425 = zext i1 %1424 to i8
  store i8 %1425, i8* %39, align 1, !tbaa !2447
  %1426 = lshr i64 %1410, 63
  %1427 = trunc i64 %1426 to i8
  store i8 %1427, i8* %42, align 1, !tbaa !2448
  %1428 = lshr i64 %1403, 63
  %1429 = xor i64 %1409, %1428
  %1430 = xor i64 %1426, %1428
  %1431 = add nuw nsw i64 %1430, %1429
  %1432 = icmp eq i64 %1431, 2
  %1433 = zext i1 %1432 to i8
  store i8 %1433, i8* %48, align 1, !tbaa !2449
  %1434 = icmp ne i8 %1427, 0
  %1435 = xor i1 %1434, %1432
  %.demorgan30 = or i1 %1424, %1435
  %.v31 = select i1 %.demorgan30, i64 21, i64 203
  %1436 = add i64 %1398, %.v31
  store i64 %1436, i64* %58, align 8, !tbaa !2428
  br i1 %.demorgan30, label %block_400e75, label %block_400f2b

block_4008ba:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1.block_4008ba_crit_edge, %block_4008ae
  %1437 = phi double [ %3922, %block_4008ae ], [ %.pre9, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1.block_4008ba_crit_edge ]
  %1438 = phi i64 [ %3921, %block_4008ae ], [ %1358, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1.block_4008ba_crit_edge ]
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 390), i64* %RDI, align 8, !tbaa !2428
  %1439 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to i64*), align 8
  %1440 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1439, i64* %1440, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %1441 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 80) to i64*), align 16
  %1442 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1441, i64* %1442, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %1443 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 88) to double*), align 8
  store double %1443, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %1444 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %1445 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %1446 = fmul double %1444, %1445
  %1447 = fsub double %1446, %1437
  store double %1447, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %1448 = load double, double* bitcast (%D1_0_type* @D1_0 to double*), align 8
  %1449 = load double, double* bitcast (%D2_0_type* @D2_0 to double*), align 8
  %1450 = fadd double %1448, %1449
  %1451 = load double, double* bitcast (%D3_type* @D3 to double*), align 8
  %1452 = fadd double %1450, %1451
  %1453 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1454 = fadd double %1453, %1448
  %1455 = load double, double* bitcast (%E2_0_type* @E2_0 to double*), align 8
  %1456 = fadd double %1454, %1455
  %1457 = load double, double* bitcast (%E3_type* @E3 to double*), align 8
  %1458 = fadd double %1456, %1457
  store double %1458, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %1459 = fdiv double %1452, %1458
  store double %1459, double* bitcast (%sa_type* @sa to double*), align 8
  store double %1448, double* bitcast (%sb_type* @sb to double*), align 8
  %1460 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %1461 = fdiv double %1460, %1443
  store double %1461, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  store double %1461, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 24) to double*), align 8
  %1462 = load i64, i64* %RBP, align 8
  %1463 = add i64 %1462, -48
  %1464 = add i64 %1438, 191
  store i64 %1464, i64* %PC, align 8
  %1465 = inttoptr i64 %1463 to double*
  %1466 = load double, double* %1465, align 8
  store double %1466, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %1467 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %1468 = load double, double* bitcast (%sb_type* @sb to double*), align 8
  %1469 = fadd double %1467, %1468
  store double %1469, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %1470 = load double, double* bitcast (%two_type* @two to double*), align 8
  store double %1470, double* %98, align 1, !tbaa !2451
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %1471 = add i64 %1462, -16
  %1472 = add i64 %1438, 223
  store i64 %1472, i64* %PC, align 8
  %1473 = inttoptr i64 %1471 to double*
  %1474 = load double, double* %1473, align 8
  %1475 = fmul double %1470, %1474
  store double %1475, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %1476 = fadd double %1469, %1475
  store double %1476, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %1477 = fmul double %1466, %1476
  %1478 = fdiv double %1477, %1470
  store double %1478, double* bitcast (%sa_type* @sa to double*), align 8
  %1479 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1480 = fdiv double %1479, %1478
  store double %1480, double* bitcast (%sb_type* @sb to double*), align 8
  %1481 = tail call double @llvm.trunc.f64(double %1480) #8
  %1482 = tail call double @llvm.fabs.f64(double %1481) #8
  %1483 = fcmp ogt double %1482, 0x43E0000000000000
  %1484 = fptosi double %1481 to i64
  %1485 = select i1 %1483, i64 -9223372036854775808, i64 %1484
  %1486 = sext i64 %1485 to i128
  %1487 = and i128 %1486, -18446744073709551616
  %1488 = zext i64 %1485 to i128
  %1489 = or i128 %1487, %1488
  %1490 = mul nsw i128 %1489, 40000
  %1491 = trunc i128 %1490 to i64
  %1492 = sext i64 %1491 to i128
  %1493 = icmp ne i128 %1492, %1490
  %1494 = zext i1 %1493 to i8
  store i8 %1494, i8* %24, align 1, !tbaa !2432
  %1495 = trunc i128 %1490 to i32
  %1496 = and i32 %1495, 192
  %1497 = tail call i32 @llvm.ctpop.i32(i32 %1496) #8
  %1498 = trunc i32 %1497 to i8
  %1499 = and i8 %1498, 1
  %1500 = xor i8 %1499, 1
  store i8 %1500, i8* %31, align 1, !tbaa !2446
  store i8 0, i8* %36, align 1, !tbaa !2450
  store i8 0, i8* %39, align 1, !tbaa !2447
  %1501 = lshr i64 %1491, 63
  %1502 = trunc i64 %1501 to i8
  store i8 %1502, i8* %42, align 1, !tbaa !2448
  store i8 %1494, i8* %48, align 1, !tbaa !2449
  %1503 = sitofp i64 %1491 to double
  %1504 = load double, double* bitcast (%scale_type* @scale to double*), align 8
  %1505 = fdiv double %1503, %1504
  %1506 = tail call double @llvm.trunc.f64(double %1505) #8
  %1507 = tail call double @llvm.fabs.f64(double %1506) #8
  %1508 = fcmp ogt double %1507, 0x43E0000000000000
  %1509 = fptosi double %1506 to i64
  %1510 = select i1 %1508, i64 -9223372036854775808, i64 %1509
  store i64 %1510, i64* %RAX, align 8, !tbaa !2428
  %1511 = load i64, i64* %RBP, align 8
  %1512 = add i64 %1511, -88
  %1513 = add i64 %1438, 316
  store i64 %1513, i64* %PC, align 8
  %1514 = inttoptr i64 %1512 to i64*
  store i64 %1510, i64* %1514, align 8
  %1515 = load i64, i64* %PC, align 8
  %1516 = load double, double* bitcast (%sb_type* @sb to double*), align 8
  %1517 = load double, double* %141, align 1
  %1518 = fsub double %1516, %1517
  store double %1518, double* bitcast (%sc_type* @sc to double*), align 8
  %1519 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1520 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 24) to double*), align 8
  %1521 = fdiv double %1519, %1520
  store double %1521, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 32) to double*), align 16
  %1522 = bitcast [32 x %union.VectorReg]* %5 to <2 x i32>*
  %1523 = load <2 x i32>, <2 x i32>* %1522, align 1
  %1524 = bitcast i64* %201 to <2 x i32>*
  %1525 = load <2 x i32>, <2 x i32>* %1524, align 1
  %1526 = extractelement <2 x i32> %1523, i32 0
  %1527 = bitcast %union.VectorReg* %6 to i32*
  store i32 %1526, i32* %1527, align 1, !tbaa !2455
  %1528 = extractelement <2 x i32> %1523, i32 1
  %1529 = getelementptr inbounds i8, i8* %80, i64 4
  %1530 = bitcast i8* %1529 to i32*
  store i32 %1528, i32* %1530, align 1, !tbaa !2455
  %1531 = extractelement <2 x i32> %1525, i32 0
  %1532 = bitcast i64* %84 to i32*
  store i32 %1531, i32* %1532, align 1, !tbaa !2455
  %1533 = extractelement <2 x i32> %1525, i32 1
  %1534 = getelementptr inbounds i8, i8* %80, i64 12
  %1535 = bitcast i8* %1534 to i32*
  store i32 %1533, i32* %1535, align 1, !tbaa !2455
  %1536 = load double, double* %82, align 1
  %1537 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %1538 = fmul double %1536, %1537
  store double %1538, double* %82, align 1, !tbaa !2451
  %1539 = bitcast %union.VectorReg* %7 to i32*
  store i32 %1526, i32* %1539, align 1, !tbaa !2455
  %1540 = getelementptr inbounds i8, i8* %86, i64 4
  %1541 = bitcast i8* %1540 to i32*
  store i32 %1528, i32* %1541, align 1, !tbaa !2455
  %1542 = bitcast i64* %90 to i32*
  store i32 %1531, i32* %1542, align 1, !tbaa !2455
  %1543 = getelementptr inbounds i8, i8* %86, i64 12
  %1544 = bitcast i8* %1543 to i32*
  store i32 %1533, i32* %1544, align 1, !tbaa !2455
  %1545 = load double, double* %88, align 1
  %1546 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %1547 = fmul double %1545, %1546
  store double %1547, double* %88, align 1, !tbaa !2451
  %1548 = bitcast <2 x i32> %1523 to double
  %1549 = fmul double %1548, %1521
  %1550 = load i64, i64* %RBP, align 8
  %1551 = add i64 %1550, -136
  %1552 = add i64 %1515, 90
  store i64 %1552, i64* %PC, align 8
  %1553 = inttoptr i64 %1551 to double*
  store double %1549, double* %1553, align 8
  %1554 = load i64, i64* %PC, align 8
  %1555 = bitcast %union.VectorReg* %6 to <2 x i32>*
  %1556 = load <2 x i32>, <2 x i32>* %1555, align 1
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1558 = bitcast i64* %1557 to <2 x i32>*
  %1559 = load <2 x i32>, <2 x i32>* %1558, align 1
  %1560 = extractelement <2 x i32> %1556, i32 0
  store i32 %1560, i32* %202, align 1, !tbaa !2455
  %1561 = extractelement <2 x i32> %1556, i32 1
  store i32 %1561, i32* %204, align 1, !tbaa !2455
  %1562 = extractelement <2 x i32> %1559, i32 0
  store i32 %1562, i32* %205, align 1, !tbaa !2455
  %1563 = extractelement <2 x i32> %1559, i32 1
  store i32 %1563, i32* %207, align 1, !tbaa !2455
  %1564 = bitcast %union.VectorReg* %7 to <2 x i32>*
  %1565 = load <2 x i32>, <2 x i32>* %1564, align 1
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %1567 = bitcast i64* %1566 to <2 x i32>*
  %1568 = load <2 x i32>, <2 x i32>* %1567, align 1
  %1569 = extractelement <2 x i32> %1565, i32 0
  store i32 %1569, i32* %1527, align 1, !tbaa !2455
  %1570 = extractelement <2 x i32> %1565, i32 1
  store i32 %1570, i32* %1530, align 1, !tbaa !2455
  %1571 = extractelement <2 x i32> %1568, i32 0
  store i32 %1571, i32* %1532, align 1, !tbaa !2455
  %1572 = extractelement <2 x i32> %1568, i32 1
  store i32 %1572, i32* %1535, align 1, !tbaa !2455
  %1573 = load i64, i64* %RBP, align 8
  %1574 = add i64 %1573, -136
  %1575 = add i64 %1554, 14
  store i64 %1575, i64* %PC, align 8
  %1576 = inttoptr i64 %1574 to i64*
  %1577 = load i64, i64* %1576, align 8
  %1578 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1577, i64* %1578, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %1579 = add i64 %1554, -1568
  %1580 = add i64 %1554, 21
  %1581 = load i64, i64* %16, align 8, !tbaa !2428
  %1582 = add i64 %1581, -8
  %1583 = inttoptr i64 %1582 to i64*
  store i64 %1580, i64* %1583, align 8
  store i64 %1582, i64* %16, align 8, !tbaa !2428
  store i64 %1579, i64* %58, align 8, !tbaa !2428
  %1584 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1347)
  %1585 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 -9223372036854775808, i64* %RCX, align 8, !tbaa !2428
  %1586 = load i64, i64* %RBP, align 8
  %1587 = add i64 %1586, -88
  %1588 = add i64 %1585, 24
  store i64 %1588, i64* %PC, align 8
  %1589 = inttoptr i64 %1587 to i64*
  %1590 = load i64, i64* %1589, align 8
  %1591 = add i64 %1586, -80
  %1592 = add i64 %1585, 28
  store i64 %1592, i64* %PC, align 8
  %1593 = inttoptr i64 %1591 to i64*
  store i64 %1590, i64* %1593, align 8
  %1594 = load i64, i64* %PC, align 8
  %1595 = load i64, i64* bitcast (%five_type* @five to i64*), align 8
  %1596 = load i64, i64* %RCX, align 8
  %1597 = xor i64 %1596, %1595
  %1598 = load i64, i64* %RBP, align 8
  %1599 = add i64 %1598, -16
  %1600 = add i64 %1594, 27
  store i64 %1600, i64* %PC, align 8
  %1601 = inttoptr i64 %1599 to i64*
  store i64 %1597, i64* %1601, align 8
  %1602 = load i64, i64* %PC, align 8
  %1603 = load i64, i64* bitcast (%one_type* @one to i64*), align 8
  %1604 = load i64, i64* %RCX, align 8
  %1605 = xor i64 %1604, %1603
  store i64 %1605, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %24, align 1, !tbaa !2432
  %1606 = trunc i64 %1605 to i32
  %1607 = and i32 %1606, 255
  %1608 = tail call i32 @llvm.ctpop.i32(i32 %1607) #8
  %1609 = trunc i32 %1608 to i8
  %1610 = and i8 %1609, 1
  %1611 = xor i8 %1610, 1
  store i8 %1611, i8* %31, align 1, !tbaa !2446
  %1612 = icmp eq i64 %1605, 0
  %1613 = zext i1 %1612 to i8
  store i8 %1613, i8* %39, align 1, !tbaa !2447
  %1614 = lshr i64 %1605, 63
  %1615 = trunc i64 %1614 to i8
  store i8 %1615, i8* %42, align 1, !tbaa !2448
  store i8 0, i8* %48, align 1, !tbaa !2449
  store i8 0, i8* %36, align 1, !tbaa !2450
  store i64 %1605, i64* %200, align 1, !tbaa !2428
  store i64 0, i64* %78, align 1, !tbaa !2428
  store i64 %1605, i64* bitcast (%sa_type* @sa to i64*), align 8
  %1616 = load i64, i64* %RBP, align 8
  %1617 = add i64 %1616, -140
  %1618 = load i32, i32* %EAX, align 4
  %1619 = add i64 %1602, 37
  store i64 %1619, i64* %PC, align 8
  %1620 = inttoptr i64 %1617 to i32*
  store i32 %1618, i32* %1620, align 4
  %1621 = load i64, i64* %PC, align 8
  %1622 = add i64 %1621, 6959
  %1623 = add i64 %1621, 5
  %1624 = load i64, i64* %16, align 8, !tbaa !2428
  %1625 = add i64 %1624, -8
  %1626 = inttoptr i64 %1625 to i64*
  store i64 %1623, i64* %1626, align 8
  store i64 %1625, i64* %16, align 8, !tbaa !2428
  store i64 %1622, i64* %58, align 8, !tbaa !2428
  %1627 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %1622, %struct.Memory* %1584)
  %1628 = load i64, i64* %RBP, align 8
  %1629 = add i64 %1628, -72
  %1630 = load i64, i64* %PC, align 8
  %1631 = add i64 %1630, 8
  store i64 %1631, i64* %PC, align 8
  %1632 = inttoptr i64 %1629 to i64*
  store i64 1, i64* %1632, align 8
  %1633 = load i64, i64* %RBP, align 8
  %1634 = add i64 %1633, -144
  %1635 = load i32, i32* %EAX, align 4
  %1636 = load i64, i64* %PC, align 8
  %1637 = add i64 %1636, 6
  store i64 %1637, i64* %PC, align 8
  %1638 = inttoptr i64 %1634 to i32*
  store i32 %1635, i32* %1638, align 4
  %.pre10 = load i64, i64* %PC, align 8
  br label %block_400ad4

block_401509:                                     ; preds = %block_4014f4
  %1639 = add i64 %264, 4
  store i64 %1639, i64* %PC, align 8
  %1640 = load i64, i64* %230, align 8
  store i64 %1640, i64* %RAX, align 8, !tbaa !2428
  %1641 = sitofp i64 %1640 to double
  store double %1641, double* %76, align 1, !tbaa !2451
  %1642 = add i64 %227, -48
  %1643 = add i64 %264, 14
  store i64 %1643, i64* %PC, align 8
  %1644 = inttoptr i64 %1642 to double*
  %1645 = load double, double* %1644, align 8
  %1646 = fmul double %1641, %1645
  store double %1646, double* %76, align 1, !tbaa !2451
  %1647 = add i64 %227, -24
  %1648 = add i64 %264, 19
  store i64 %1648, i64* %PC, align 8
  %1649 = inttoptr i64 %1647 to double*
  store double %1646, double* %1649, align 8
  %1650 = load i64, i64* %RBP, align 8
  %1651 = add i64 %1650, -24
  %1652 = load i64, i64* %PC, align 8
  %1653 = add i64 %1652, 5
  store i64 %1653, i64* %PC, align 8
  %1654 = inttoptr i64 %1651 to double*
  %1655 = load double, double* %1654, align 8
  store double %1655, double* %76, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %1656 = add i64 %1652, 10
  store i64 %1656, i64* %PC, align 8
  %1657 = load double, double* %1654, align 8
  %1658 = fmul double %1655, %1657
  store double %1658, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %1659 = add i64 %1650, -40
  %1660 = add i64 %1652, 15
  store i64 %1660, i64* %PC, align 8
  %1661 = inttoptr i64 %1659 to double*
  store double %1658, double* %1661, align 8
  %1662 = load i64, i64* %RBP, align 8
  %1663 = add i64 %1662, -24
  %1664 = load i64, i64* %PC, align 8
  %1665 = add i64 %1664, 5
  store i64 %1665, i64* %PC, align 8
  %1666 = inttoptr i64 %1663 to double*
  %1667 = load double, double* %1666, align 8
  store double %1667, double* %76, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %1668 = load double, double* bitcast (%A6_type* @A6 to double*), align 8
  store double %1668, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %1669 = add i64 %1662, -40
  %1670 = add i64 %1664, 19
  store i64 %1670, i64* %PC, align 8
  %1671 = inttoptr i64 %1669 to double*
  %1672 = load double, double* %1671, align 8
  %1673 = fmul double %1668, %1672
  %1674 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %1675 = fadd double %1673, %1674
  store double %1675, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %1676 = add i64 %1664, 33
  store i64 %1676, i64* %PC, align 8
  %1677 = load double, double* %1671, align 8
  %1678 = fmul double %1675, %1677
  %1679 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %1680 = fadd double %1678, %1679
  store double %1680, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %1681 = add i64 %1664, 47
  store i64 %1681, i64* %PC, align 8
  %1682 = load double, double* %1671, align 8
  %1683 = fmul double %1680, %1682
  %1684 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %1685 = fadd double %1683, %1684
  store double %1685, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %1686 = add i64 %1664, 61
  store i64 %1686, i64* %PC, align 8
  %1687 = load double, double* %1671, align 8
  %1688 = fmul double %1685, %1687
  %1689 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %1690 = fadd double %1688, %1689
  store double %1690, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %1691 = add i64 %1664, 75
  store i64 %1691, i64* %PC, align 8
  %1692 = load double, double* %1671, align 8
  %1693 = fmul double %1690, %1692
  %1694 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %1695 = fadd double %1693, %1694
  store double %1695, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %1696 = add i64 %1664, 89
  store i64 %1696, i64* %PC, align 8
  %1697 = load double, double* %1671, align 8
  %1698 = fmul double %1695, %1697
  %1699 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1700 = fadd double %1698, %1699
  store double %1700, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %1701 = fmul double %1667, %1700
  store double %1701, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %1702 = add i64 %1662, -32
  %1703 = add i64 %1664, 107
  store i64 %1703, i64* %PC, align 8
  %1704 = inttoptr i64 %1702 to double*
  store double %1701, double* %1704, align 8
  %1705 = load i64, i64* %RBP, align 8
  %1706 = add i64 %1705, -16
  %1707 = load i64, i64* %PC, align 8
  %1708 = add i64 %1707, 5
  store i64 %1708, i64* %PC, align 8
  %1709 = inttoptr i64 %1706 to i64*
  %1710 = load i64, i64* %1709, align 8
  %1711 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1710, i64* %1711, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %1712 = add i64 %1705, -32
  %1713 = add i64 %1707, 10
  store i64 %1713, i64* %PC, align 8
  %1714 = inttoptr i64 %1712 to i64*
  %1715 = load i64, i64* %1714, align 8
  %1716 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1715, i64* %1716, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %1717 = add i64 %1705, -40
  %1718 = add i64 %1707, 15
  store i64 %1718, i64* %PC, align 8
  %1719 = inttoptr i64 %1717 to double*
  %1720 = load double, double* %1719, align 8
  store double %1720, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %1721 = add i64 %1707, 20
  store i64 %1721, i64* %PC, align 8
  %1722 = load double, double* %1719, align 8
  store double %1722, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %1723 = add i64 %1707, 25
  store i64 %1723, i64* %PC, align 8
  %1724 = load double, double* %1719, align 8
  store double %1724, double* %98, align 1, !tbaa !2451
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %1725 = add i64 %1707, 30
  store i64 %1725, i64* %PC, align 8
  %1726 = load double, double* %1719, align 8
  store double %1726, double* %103, align 1, !tbaa !2451
  store double 0.000000e+00, double* %106, align 1, !tbaa !2451
  %1727 = add i64 %1707, 35
  store i64 %1727, i64* %PC, align 8
  %1728 = load double, double* %1719, align 8
  store double %1728, double* %108, align 1, !tbaa !2451
  store double 0.000000e+00, double* %111, align 1, !tbaa !2451
  %1729 = load double, double* bitcast (%B6_type* @B6 to double*), align 8
  store double %1729, double* %123, align 1, !tbaa !2451
  store double 0.000000e+00, double* %225, align 1, !tbaa !2451
  %1730 = add i64 %1707, 49
  store i64 %1730, i64* %PC, align 8
  %1731 = load double, double* %1719, align 8
  %1732 = fmul double %1729, %1731
  %1733 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %1734 = fadd double %1732, %1733
  store double %1734, double* %123, align 1, !tbaa !2451
  store i64 0, i64* %224, align 1, !tbaa !2451
  %1735 = fmul double %1728, %1734
  %1736 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %1737 = fadd double %1735, %1736
  store double %1737, double* %108, align 1, !tbaa !2451
  store i64 0, i64* %110, align 1, !tbaa !2451
  %1738 = fmul double %1726, %1737
  %1739 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %1740 = fadd double %1738, %1739
  store double %1740, double* %103, align 1, !tbaa !2451
  store i64 0, i64* %105, align 1, !tbaa !2451
  %1741 = fmul double %1724, %1740
  %1742 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %1743 = fadd double %1741, %1742
  store double %1743, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %1744 = fmul double %1722, %1743
  %1745 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %1746 = fadd double %1744, %1745
  store double %1746, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %1747 = fmul double %1720, %1746
  %1748 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1749 = fadd double %1747, %1748
  store double %1749, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %1750 = load double, double* %82, align 1
  %1751 = fdiv double %1750, %1749
  store double %1751, double* %82, align 1, !tbaa !2451
  %1752 = load double, double* %76, align 1
  %1753 = fadd double %1752, %1751
  store double %1753, double* %76, align 1, !tbaa !2451
  %1754 = load i64, i64* %RBP, align 8
  %1755 = add i64 %1754, -16
  %1756 = add i64 %1707, 136
  store i64 %1756, i64* %PC, align 8
  %1757 = inttoptr i64 %1755 to double*
  store double %1753, double* %1757, align 8
  %1758 = load i64, i64* %RBP, align 8
  %1759 = add i64 %1758, -72
  %1760 = load i64, i64* %PC, align 8
  %1761 = add i64 %1760, 4
  store i64 %1761, i64* %PC, align 8
  %1762 = inttoptr i64 %1759 to i64*
  %1763 = load i64, i64* %1762, align 8
  %1764 = add i64 %1763, 1
  store i64 %1764, i64* %RAX, align 8, !tbaa !2428
  %1765 = icmp eq i64 %1763, -1
  %1766 = icmp eq i64 %1764, 0
  %1767 = or i1 %1765, %1766
  %1768 = zext i1 %1767 to i8
  store i8 %1768, i8* %24, align 1, !tbaa !2432
  %1769 = trunc i64 %1764 to i32
  %1770 = and i32 %1769, 255
  %1771 = tail call i32 @llvm.ctpop.i32(i32 %1770) #8
  %1772 = trunc i32 %1771 to i8
  %1773 = and i8 %1772, 1
  %1774 = xor i8 %1773, 1
  store i8 %1774, i8* %31, align 1, !tbaa !2446
  %1775 = xor i64 %1763, %1764
  %1776 = lshr i64 %1775, 4
  %1777 = trunc i64 %1776 to i8
  %1778 = and i8 %1777, 1
  store i8 %1778, i8* %36, align 1, !tbaa !2450
  %1779 = icmp eq i64 %1764, 0
  %1780 = zext i1 %1779 to i8
  store i8 %1780, i8* %39, align 1, !tbaa !2447
  %1781 = lshr i64 %1764, 63
  %1782 = trunc i64 %1781 to i8
  store i8 %1782, i8* %42, align 1, !tbaa !2448
  %1783 = lshr i64 %1763, 63
  %1784 = xor i64 %1781, %1783
  %1785 = add nuw nsw i64 %1784, %1781
  %1786 = icmp eq i64 %1785, 2
  %1787 = zext i1 %1786 to i8
  store i8 %1787, i8* %48, align 1, !tbaa !2449
  %1788 = add i64 %1760, 12
  store i64 %1788, i64* %PC, align 8
  store i64 %1764, i64* %1762, align 8
  %1789 = load i64, i64* %PC, align 8
  %1790 = add i64 %1789, -310
  store i64 %1790, i64* %58, align 8, !tbaa !2428
  br label %block_4014f4

block_400bc8:                                     ; preds = %block_400b79, %block_400bd6
  %1791 = phi i64 [ %.pre13, %block_400b79 ], [ %684, %block_400bd6 ]
  %1792 = load i64, i64* %RBP, align 8
  %1793 = add i64 %1792, -72
  %1794 = add i64 %1791, 4
  store i64 %1794, i64* %PC, align 8
  %1795 = inttoptr i64 %1793 to i64*
  %1796 = load i64, i64* %1795, align 8
  store i64 %1796, i64* %RAX, align 8, !tbaa !2428
  %1797 = add i64 %1792, -80
  %1798 = add i64 %1791, 8
  store i64 %1798, i64* %PC, align 8
  %1799 = inttoptr i64 %1797 to i64*
  %1800 = load i64, i64* %1799, align 8
  %1801 = sub i64 %1796, %1800
  %1802 = icmp ult i64 %1796, %1800
  %1803 = zext i1 %1802 to i8
  store i8 %1803, i8* %24, align 1, !tbaa !2432
  %1804 = trunc i64 %1801 to i32
  %1805 = and i32 %1804, 255
  %1806 = tail call i32 @llvm.ctpop.i32(i32 %1805) #8
  %1807 = trunc i32 %1806 to i8
  %1808 = and i8 %1807, 1
  %1809 = xor i8 %1808, 1
  store i8 %1809, i8* %31, align 1, !tbaa !2446
  %1810 = xor i64 %1800, %1796
  %1811 = xor i64 %1810, %1801
  %1812 = lshr i64 %1811, 4
  %1813 = trunc i64 %1812 to i8
  %1814 = and i8 %1813, 1
  store i8 %1814, i8* %36, align 1, !tbaa !2450
  %1815 = icmp eq i64 %1801, 0
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %39, align 1, !tbaa !2447
  %1817 = lshr i64 %1801, 63
  %1818 = trunc i64 %1817 to i8
  store i8 %1818, i8* %42, align 1, !tbaa !2448
  %1819 = lshr i64 %1796, 63
  %1820 = lshr i64 %1800, 63
  %1821 = xor i64 %1820, %1819
  %1822 = xor i64 %1817, %1819
  %1823 = add nuw nsw i64 %1822, %1821
  %1824 = icmp eq i64 %1823, 2
  %1825 = zext i1 %1824 to i8
  store i8 %1825, i8* %48, align 1, !tbaa !2449
  %1826 = icmp ne i8 %1818, 0
  %1827 = xor i1 %1826, %1824
  %.demorgan28 = or i1 %1815, %1827
  %.v29 = select i1 %.demorgan28, i64 14, i64 178
  %1828 = add i64 %1791, %.v29
  %1829 = add i64 %1828, 10
  store i64 %1829, i64* %PC, align 8
  br i1 %.demorgan28, label %block_400bd6, label %block_400c7a

block_400e75:                                     ; preds = %block_400e60
  %1830 = add i64 %1399, -32
  %1831 = add i64 %1436, 5
  store i64 %1831, i64* %PC, align 8
  %1832 = inttoptr i64 %1830 to double*
  %1833 = load double, double* %1832, align 8
  %1834 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1835 = fadd double %1833, %1834
  store double %1835, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %1836 = add i64 %1436, 19
  store i64 %1836, i64* %PC, align 8
  store double %1835, double* %1832, align 8
  %1837 = load i64, i64* %RBP, align 8
  %1838 = add i64 %1837, -32
  %1839 = load i64, i64* %PC, align 8
  %1840 = add i64 %1839, 5
  store i64 %1840, i64* %PC, align 8
  %1841 = inttoptr i64 %1838 to double*
  %1842 = load double, double* %1841, align 8
  store double %1842, double* %76, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %1843 = add i64 %1837, -48
  %1844 = add i64 %1839, 10
  store i64 %1844, i64* %PC, align 8
  %1845 = inttoptr i64 %1843 to double*
  %1846 = load double, double* %1845, align 8
  %1847 = fmul double %1842, %1846
  store double %1847, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %1848 = add i64 %1837, -24
  %1849 = add i64 %1839, 15
  store i64 %1849, i64* %PC, align 8
  %1850 = inttoptr i64 %1848 to double*
  store double %1847, double* %1850, align 8
  %1851 = load i64, i64* %RBP, align 8
  %1852 = add i64 %1851, -24
  %1853 = load i64, i64* %PC, align 8
  %1854 = add i64 %1853, 5
  store i64 %1854, i64* %PC, align 8
  %1855 = inttoptr i64 %1852 to double*
  %1856 = load double, double* %1855, align 8
  store double %1856, double* %76, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %1857 = add i64 %1853, 10
  store i64 %1857, i64* %PC, align 8
  %1858 = load double, double* %1855, align 8
  %1859 = fmul double %1856, %1858
  store double %1859, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %1860 = add i64 %1851, -40
  %1861 = add i64 %1853, 15
  store i64 %1861, i64* %PC, align 8
  %1862 = inttoptr i64 %1860 to double*
  store double %1859, double* %1862, align 8
  %1863 = load i64, i64* %RBP, align 8
  %1864 = add i64 %1863, -16
  %1865 = load i64, i64* %PC, align 8
  %1866 = add i64 %1865, 5
  store i64 %1866, i64* %PC, align 8
  %1867 = inttoptr i64 %1864 to double*
  %1868 = load double, double* %1867, align 8
  store double %1868, double* %76, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %1869 = add i64 %1863, -24
  %1870 = add i64 %1865, 10
  store i64 %1870, i64* %PC, align 8
  %1871 = inttoptr i64 %1869 to double*
  %1872 = load double, double* %1871, align 8
  store double %1872, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %1873 = load double, double* bitcast (%A6_type* @A6 to double*), align 8
  store double %1873, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %1874 = add i64 %1863, -40
  %1875 = add i64 %1865, 24
  store i64 %1875, i64* %PC, align 8
  %1876 = inttoptr i64 %1874 to double*
  %1877 = load double, double* %1876, align 8
  %1878 = fmul double %1873, %1877
  %1879 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %1880 = fsub double %1878, %1879
  store double %1880, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %1881 = add i64 %1865, 38
  store i64 %1881, i64* %PC, align 8
  %1882 = load double, double* %1876, align 8
  %1883 = fmul double %1880, %1882
  %1884 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %1885 = fadd double %1883, %1884
  store double %1885, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %1886 = add i64 %1865, 52
  store i64 %1886, i64* %PC, align 8
  %1887 = load double, double* %1876, align 8
  %1888 = fmul double %1885, %1887
  %1889 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %1890 = fsub double %1888, %1889
  store double %1890, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %1891 = add i64 %1865, 66
  store i64 %1891, i64* %PC, align 8
  %1892 = load double, double* %1876, align 8
  %1893 = fmul double %1890, %1892
  %1894 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %1895 = fadd double %1893, %1894
  store double %1895, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %1896 = add i64 %1865, 80
  store i64 %1896, i64* %PC, align 8
  %1897 = load double, double* %1876, align 8
  %1898 = fmul double %1895, %1897
  %1899 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %1900 = fadd double %1898, %1899
  store double %1900, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %1901 = add i64 %1865, 94
  store i64 %1901, i64* %PC, align 8
  %1902 = load double, double* %1876, align 8
  %1903 = fmul double %1900, %1902
  %1904 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1905 = fadd double %1903, %1904
  store double %1905, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %1906 = fmul double %1872, %1905
  store double %1906, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %1907 = fadd double %1868, %1906
  store double %1907, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %1908 = load i64, i64* %RBP, align 8
  %1909 = add i64 %1908, -16
  %1910 = add i64 %1865, 116
  store i64 %1910, i64* %PC, align 8
  %1911 = inttoptr i64 %1909 to double*
  store double %1907, double* %1911, align 8
  %1912 = load i64, i64* %RBP, align 8
  %1913 = add i64 %1912, -72
  %1914 = load i64, i64* %PC, align 8
  %1915 = add i64 %1914, 4
  store i64 %1915, i64* %PC, align 8
  %1916 = inttoptr i64 %1913 to i64*
  %1917 = load i64, i64* %1916, align 8
  %1918 = add i64 %1917, 1
  store i64 %1918, i64* %RAX, align 8, !tbaa !2428
  %1919 = icmp eq i64 %1917, -1
  %1920 = icmp eq i64 %1918, 0
  %1921 = or i1 %1919, %1920
  %1922 = zext i1 %1921 to i8
  store i8 %1922, i8* %24, align 1, !tbaa !2432
  %1923 = trunc i64 %1918 to i32
  %1924 = and i32 %1923, 255
  %1925 = tail call i32 @llvm.ctpop.i32(i32 %1924) #8
  %1926 = trunc i32 %1925 to i8
  %1927 = and i8 %1926, 1
  %1928 = xor i8 %1927, 1
  store i8 %1928, i8* %31, align 1, !tbaa !2446
  %1929 = xor i64 %1917, %1918
  %1930 = lshr i64 %1929, 4
  %1931 = trunc i64 %1930 to i8
  %1932 = and i8 %1931, 1
  store i8 %1932, i8* %36, align 1, !tbaa !2450
  %1933 = icmp eq i64 %1918, 0
  %1934 = zext i1 %1933 to i8
  store i8 %1934, i8* %39, align 1, !tbaa !2447
  %1935 = lshr i64 %1918, 63
  %1936 = trunc i64 %1935 to i8
  store i8 %1936, i8* %42, align 1, !tbaa !2448
  %1937 = lshr i64 %1917, 63
  %1938 = xor i64 %1935, %1937
  %1939 = add nuw nsw i64 %1938, %1935
  %1940 = icmp eq i64 %1939, 2
  %1941 = zext i1 %1940 to i8
  store i8 %1941, i8* %48, align 1, !tbaa !2449
  %1942 = add i64 %1914, 12
  store i64 %1942, i64* %PC, align 8
  store i64 %1918, i64* %1916, align 8
  %1943 = load i64, i64* %PC, align 8
  %1944 = add i64 %1943, -198
  store i64 %1944, i64* %58, align 8, !tbaa !2428
  br label %block_400e60

block_40162f:                                     ; preds = %block_4014f4
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %1945 = add i64 %264, 4033
  %1946 = add i64 %264, 15
  %1947 = load i64, i64* %16, align 8, !tbaa !2428
  %1948 = add i64 %1947, -8
  %1949 = inttoptr i64 %1948 to i64*
  store i64 %1946, i64* %1949, align 8
  store i64 %1948, i64* %16, align 8, !tbaa !2428
  store i64 %1945, i64* %58, align 8, !tbaa !2428
  %1950 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %1945, %struct.Memory* %3174)
  %1951 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 534), i64* %RDI, align 8, !tbaa !2428
  %1952 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to i64*), align 8
  %1953 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1952, i64* %1953, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %1954 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 136) to i64*), align 8
  %1955 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1954, i64* %1955, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %1956 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 144) to i64*), align 16
  %1957 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1956, i64* %1957, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %1958 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %1959 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %1960 = fmul double %1958, %1959
  %1961 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %1962 = fsub double %1960, %1961
  store double %1962, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %1963 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %1964 = load double, double* bitcast (%three_type* @three to double*), align 8
  %1965 = fdiv double %1963, %1964
  store double %1965, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %1966 = load i64, i64* %RBP, align 8
  %1967 = add i64 %1966, -24
  %1968 = add i64 %1951, 93
  store i64 %1968, i64* %PC, align 8
  %1969 = inttoptr i64 %1967 to double*
  store double %1965, double* %1969, align 8
  %1970 = load i64, i64* %RBP, align 8
  %1971 = add i64 %1970, -24
  %1972 = load i64, i64* %PC, align 8
  %1973 = add i64 %1972, 5
  store i64 %1973, i64* %PC, align 8
  %1974 = inttoptr i64 %1971 to double*
  %1975 = load double, double* %1974, align 8
  store double %1975, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %1976 = add i64 %1972, 10
  store i64 %1976, i64* %PC, align 8
  %1977 = load double, double* %1974, align 8
  %1978 = fmul double %1975, %1977
  store double %1978, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %1979 = add i64 %1970, -40
  %1980 = add i64 %1972, 15
  store i64 %1980, i64* %PC, align 8
  %1981 = inttoptr i64 %1979 to double*
  store double %1978, double* %1981, align 8
  %1982 = load i64, i64* %RBP, align 8
  %1983 = add i64 %1982, -24
  %1984 = load i64, i64* %PC, align 8
  %1985 = add i64 %1984, 5
  store i64 %1985, i64* %PC, align 8
  %1986 = inttoptr i64 %1983 to double*
  %1987 = load double, double* %1986, align 8
  store double %1987, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %1988 = load double, double* bitcast (%A6_type* @A6 to double*), align 8
  store double %1988, double* %98, align 1, !tbaa !2451
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %1989 = add i64 %1982, -40
  %1990 = add i64 %1984, 19
  store i64 %1990, i64* %PC, align 8
  %1991 = inttoptr i64 %1989 to double*
  %1992 = load double, double* %1991, align 8
  %1993 = fmul double %1988, %1992
  %1994 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %1995 = fadd double %1993, %1994
  store double %1995, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %1996 = add i64 %1984, 33
  store i64 %1996, i64* %PC, align 8
  %1997 = load double, double* %1991, align 8
  %1998 = fmul double %1995, %1997
  %1999 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %2000 = fadd double %1998, %1999
  store double %2000, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %2001 = add i64 %1984, 47
  store i64 %2001, i64* %PC, align 8
  %2002 = load double, double* %1991, align 8
  %2003 = fmul double %2000, %2002
  %2004 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %2005 = fadd double %2003, %2004
  store double %2005, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %2006 = add i64 %1984, 61
  store i64 %2006, i64* %PC, align 8
  %2007 = load double, double* %1991, align 8
  %2008 = fmul double %2005, %2007
  %2009 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %2010 = fadd double %2008, %2009
  store double %2010, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %2011 = add i64 %1984, 75
  store i64 %2011, i64* %PC, align 8
  %2012 = load double, double* %1991, align 8
  %2013 = fmul double %2010, %2012
  %2014 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %2015 = fadd double %2013, %2014
  store double %2015, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %2016 = add i64 %1984, 89
  store i64 %2016, i64* %PC, align 8
  %2017 = load double, double* %1991, align 8
  %2018 = fmul double %2015, %2017
  %2019 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2020 = fadd double %2018, %2019
  store double %2020, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %2021 = fmul double %1987, %2020
  store double %2021, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  store double %2021, double* bitcast (%sa_type* @sa to double*), align 8
  %2022 = add i64 %1984, 116
  store i64 %2022, i64* %PC, align 8
  %2023 = load double, double* %1991, align 8
  store double %2023, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %2024 = load i64, i64* %RBP, align 8
  %2025 = add i64 %2024, -40
  %2026 = add i64 %1984, 121
  store i64 %2026, i64* %PC, align 8
  %2027 = inttoptr i64 %2025 to double*
  %2028 = load double, double* %2027, align 8
  store double %2028, double* %98, align 1, !tbaa !2451
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %2029 = add i64 %1984, 126
  store i64 %2029, i64* %PC, align 8
  %2030 = load double, double* %2027, align 8
  store double %2030, double* %103, align 1, !tbaa !2451
  store double 0.000000e+00, double* %106, align 1, !tbaa !2451
  %2031 = add i64 %1984, 131
  store i64 %2031, i64* %PC, align 8
  %2032 = load double, double* %2027, align 8
  store double %2032, double* %108, align 1, !tbaa !2451
  store double 0.000000e+00, double* %111, align 1, !tbaa !2451
  %2033 = add i64 %1984, 136
  store i64 %2033, i64* %PC, align 8
  %2034 = load double, double* %2027, align 8
  store double %2034, double* %123, align 1, !tbaa !2451
  store double 0.000000e+00, double* %225, align 1, !tbaa !2451
  %2035 = load double, double* bitcast (%B6_type* @B6 to double*), align 8
  %2036 = bitcast %union.VectorReg* %13 to double*
  store double %2035, double* %2036, align 1, !tbaa !2451
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1
  %2038 = bitcast i64* %2037 to double*
  store double 0.000000e+00, double* %2038, align 1, !tbaa !2451
  %2039 = add i64 %1984, 152
  store i64 %2039, i64* %PC, align 8
  %2040 = load double, double* %2027, align 8
  %2041 = fmul double %2035, %2040
  %2042 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %2043 = fadd double %2041, %2042
  store double %2043, double* %2036, align 1, !tbaa !2451
  store i64 0, i64* %2037, align 1, !tbaa !2451
  %2044 = fmul double %2034, %2043
  %2045 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %2046 = fadd double %2044, %2045
  store double %2046, double* %123, align 1, !tbaa !2451
  store i64 0, i64* %224, align 1, !tbaa !2451
  %2047 = fmul double %2032, %2046
  %2048 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %2049 = fadd double %2047, %2048
  store double %2049, double* %108, align 1, !tbaa !2451
  store i64 0, i64* %110, align 1, !tbaa !2451
  %2050 = fmul double %2030, %2049
  %2051 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %2052 = fadd double %2050, %2051
  store double %2052, double* %103, align 1, !tbaa !2451
  store i64 0, i64* %105, align 1, !tbaa !2451
  %2053 = fmul double %2028, %2052
  %2054 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %2055 = fadd double %2053, %2054
  store double %2055, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %2056 = fmul double %2023, %2055
  %2057 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2058 = fadd double %2056, %2057
  store double %2058, double* bitcast (%sb_type* @sb to double*), align 8
  %2059 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %2060 = fdiv double %2059, %2058
  store double %2060, double* bitcast (%sa_type* @sa to double*), align 8
  %2061 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %2062 = load double, double* %138, align 1
  %2063 = fdiv double %2061, %2062
  store double %2063, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  store double %2063, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 128) to double*), align 16
  %2064 = load i64, i64* %RBP, align 8
  %2065 = add i64 %2064, -48
  %2066 = add i64 %1984, 291
  store i64 %2066, i64* %PC, align 8
  %2067 = inttoptr i64 %2065 to double*
  %2068 = load double, double* %2067, align 8
  store double %2068, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %2069 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  store double %2069, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %2070 = load double, double* bitcast (%two_type* @two to double*), align 8
  store double %2070, double* %98, align 1, !tbaa !2451
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %2071 = add i64 %2064, -16
  %2072 = add i64 %1984, 314
  store i64 %2072, i64* %PC, align 8
  %2073 = inttoptr i64 %2071 to double*
  %2074 = load double, double* %2073, align 8
  %2075 = fmul double %2070, %2074
  store double %2075, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %2076 = fadd double %2069, %2075
  store double %2076, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %2077 = fmul double %2068, %2076
  %2078 = fdiv double %2077, %2070
  store double %2078, double* bitcast (%sa_type* @sa to double*), align 8
  %2079 = load double, double* %141, align 1
  store double %2079, double* bitcast (%sb_type* @sb to double*), align 8
  %2080 = fsub double %2078, %2079
  store double %2080, double* bitcast (%sc_type* @sc to double*), align 8
  %2081 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2082 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 128) to double*), align 16
  %2083 = fdiv double %2081, %2082
  store double %2083, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 136) to double*), align 8
  %2084 = load <2 x i32>, <2 x i32>* %1522, align 1
  %2085 = load <2 x i32>, <2 x i32>* %1524, align 1
  %2086 = extractelement <2 x i32> %2084, i32 0
  store i32 %2086, i32* %1527, align 1, !tbaa !2455
  %2087 = extractelement <2 x i32> %2084, i32 1
  store i32 %2087, i32* %1530, align 1, !tbaa !2455
  %2088 = extractelement <2 x i32> %2085, i32 0
  store i32 %2088, i32* %1532, align 1, !tbaa !2455
  %2089 = extractelement <2 x i32> %2085, i32 1
  store i32 %2089, i32* %1535, align 1, !tbaa !2455
  %2090 = load double, double* %82, align 1
  %2091 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %2092 = fmul double %2090, %2091
  store double %2092, double* %82, align 1, !tbaa !2451
  store i32 %2086, i32* %1539, align 1, !tbaa !2455
  store i32 %2087, i32* %1541, align 1, !tbaa !2455
  store i32 %2088, i32* %1542, align 1, !tbaa !2455
  store i32 %2089, i32* %1544, align 1, !tbaa !2455
  %2093 = load double, double* %88, align 1
  %2094 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %2095 = fmul double %2093, %2094
  store double %2095, double* %88, align 1, !tbaa !2451
  %2096 = bitcast <2 x i32> %2084 to double
  %2097 = fmul double %2096, %2083
  %2098 = load i64, i64* %RBP, align 8
  %2099 = add i64 %2098, -232
  %2100 = add i64 %1984, 444
  store i64 %2100, i64* %PC, align 8
  %2101 = inttoptr i64 %2099 to double*
  store double %2097, double* %2101, align 8
  %2102 = load i64, i64* %PC, align 8
  %2103 = load <2 x i32>, <2 x i32>* %1555, align 1
  %2104 = load <2 x i32>, <2 x i32>* %1558, align 1
  %2105 = extractelement <2 x i32> %2103, i32 0
  store i32 %2105, i32* %202, align 1, !tbaa !2455
  %2106 = extractelement <2 x i32> %2103, i32 1
  store i32 %2106, i32* %204, align 1, !tbaa !2455
  %2107 = extractelement <2 x i32> %2104, i32 0
  store i32 %2107, i32* %205, align 1, !tbaa !2455
  %2108 = extractelement <2 x i32> %2104, i32 1
  store i32 %2108, i32* %207, align 1, !tbaa !2455
  %2109 = load <2 x i32>, <2 x i32>* %1564, align 1
  %2110 = load <2 x i32>, <2 x i32>* %1567, align 1
  %2111 = extractelement <2 x i32> %2109, i32 0
  store i32 %2111, i32* %1527, align 1, !tbaa !2455
  %2112 = extractelement <2 x i32> %2109, i32 1
  store i32 %2112, i32* %1530, align 1, !tbaa !2455
  %2113 = extractelement <2 x i32> %2110, i32 0
  store i32 %2113, i32* %1532, align 1, !tbaa !2455
  %2114 = extractelement <2 x i32> %2110, i32 1
  store i32 %2114, i32* %1535, align 1, !tbaa !2455
  %2115 = load i64, i64* %RBP, align 8
  %2116 = add i64 %2115, -232
  %2117 = add i64 %2102, 14
  store i64 %2117, i64* %PC, align 8
  %2118 = inttoptr i64 %2116 to i64*
  %2119 = load i64, i64* %2118, align 8
  %2120 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2119, i64* %2120, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %2121 = add i64 %2115, -236
  %2122 = load i32, i32* %EAX, align 4
  %2123 = add i64 %2102, 20
  store i64 %2123, i64* %PC, align 8
  %2124 = inttoptr i64 %2121 to i32*
  store i32 %2122, i32* %2124, align 4
  %2125 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %2126 = add i64 %2125, -5194
  %2127 = add i64 %2125, 7
  %2128 = load i64, i64* %16, align 8, !tbaa !2428
  %2129 = add i64 %2128, -8
  %2130 = inttoptr i64 %2129 to i64*
  store i64 %2127, i64* %2130, align 8
  store i64 %2129, i64* %16, align 8, !tbaa !2428
  store i64 %2126, i64* %58, align 8, !tbaa !2428
  %2131 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1950)
  %2132 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i32 0, i32* %202, align 1, !tbaa !2454
  store i32 0, i32* %204, align 1, !tbaa !2454
  store i32 0, i32* %205, align 1, !tbaa !2454
  store i32 0, i32* %207, align 1, !tbaa !2454
  %2133 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  store double %2133, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %2134 = load double, double* bitcast (%four_type* @four to double*), align 8
  store double %2134, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %2135 = load i64, i64* %RBP, align 8
  %2136 = add i64 %2135, -80
  %2137 = add i64 %2132, 35
  store i64 %2137, i64* %PC, align 8
  %2138 = inttoptr i64 %2136 to i64*
  %2139 = load i64, i64* %2138, align 8
  store i64 %2139, i64* %RCX, align 8, !tbaa !2428
  %2140 = sitofp i64 %2139 to double
  store double %2140, double* %93, align 1, !tbaa !2451
  %2141 = fmul double %2134, %2140
  store double %2141, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %2142 = fdiv double %2133, %2141
  store double %2142, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %2143 = add i64 %2135, -48
  %2144 = add i64 %2132, 53
  store i64 %2144, i64* %PC, align 8
  %2145 = inttoptr i64 %2143 to double*
  store double %2142, double* %2145, align 8
  %2146 = load i64, i64* %RBP, align 8
  %2147 = add i64 %2146, -16
  %2148 = load i64, i64* %PC, align 8
  %2149 = add i64 %2148, 5
  store i64 %2149, i64* %PC, align 8
  %2150 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %2151 = load i64, i64* %2150, align 1
  %2152 = inttoptr i64 %2147 to i64*
  store i64 %2151, i64* %2152, align 8
  %2153 = load i64, i64* %RBP, align 8
  %2154 = add i64 %2153, -32
  %2155 = load i64, i64* %PC, align 8
  %2156 = add i64 %2155, 5
  store i64 %2156, i64* %PC, align 8
  %2157 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %2158 = load i64, i64* %2157, align 1
  %2159 = inttoptr i64 %2154 to i64*
  store i64 %2158, i64* %2159, align 8
  %2160 = load i64, i64* %RBP, align 8
  %2161 = add i64 %2160, -240
  %2162 = load i32, i32* %EAX, align 4
  %2163 = load i64, i64* %PC, align 8
  %2164 = add i64 %2163, 6
  store i64 %2164, i64* %PC, align 8
  %2165 = inttoptr i64 %2161 to i32*
  store i32 %2162, i32* %2165, align 4
  %2166 = load i64, i64* %PC, align 8
  %2167 = add i64 %2166, 3370
  %2168 = add i64 %2166, 5
  %2169 = load i64, i64* %16, align 8, !tbaa !2428
  %2170 = add i64 %2169, -8
  %2171 = inttoptr i64 %2170 to i64*
  store i64 %2168, i64* %2171, align 8
  store i64 %2170, i64* %16, align 8, !tbaa !2428
  store i64 %2167, i64* %58, align 8, !tbaa !2428
  %2172 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %2167, %struct.Memory* %2131)
  %2173 = load i64, i64* %RBP, align 8
  %2174 = add i64 %2173, -72
  %2175 = load i64, i64* %PC, align 8
  %2176 = add i64 %2175, 8
  store i64 %2176, i64* %PC, align 8
  %2177 = inttoptr i64 %2174 to i64*
  store i64 1, i64* %2177, align 8
  %2178 = load i64, i64* %RBP, align 8
  %2179 = add i64 %2178, -244
  %2180 = load i32, i32* %EAX, align 4
  %2181 = load i64, i64* %PC, align 8
  %2182 = add i64 %2181, 6
  store i64 %2182, i64* %PC, align 8
  %2183 = inttoptr i64 %2179 to i32*
  store i32 %2180, i32* %2183, align 4
  %.pre17 = load i64, i64* %PC, align 8
  br label %block_4018d9

block_400b2b:                                     ; preds = %block_400ad4
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %2184 = add i64 %722, 6853
  %2185 = add i64 %722, 15
  %2186 = load i64, i64* %16, align 8, !tbaa !2428
  %2187 = add i64 %2186, -8
  %2188 = inttoptr i64 %2187 to i64*
  store i64 %2185, i64* %2188, align 8
  store i64 %2187, i64* %16, align 8, !tbaa !2428
  store i64 %2184, i64* %58, align 8, !tbaa !2428
  %2189 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %2184, %struct.Memory* %1627)
  %2190 = load i64, i64* %PC, align 8
  store i32 0, i32* %202, align 1, !tbaa !2454
  store i32 0, i32* %204, align 1, !tbaa !2454
  store i32 0, i32* %205, align 1, !tbaa !2454
  store i32 0, i32* %207, align 1, !tbaa !2454
  %2191 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %2192 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %2193 = fmul double %2191, %2192
  store double %2193, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  store double %2193, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to double*), align 8
  %2194 = add i64 %2190, 39
  store i64 %2194, i64* %PC, align 8
  %2195 = load double, double* %144, align 1
  %2196 = fcmp uno double %2195, %2193
  br i1 %2196, label %2197, label %2207

; <label>:2197:                                   ; preds = %block_400b2b
  %2198 = fadd double %2195, %2193
  %2199 = bitcast double %2198 to i64
  %2200 = and i64 %2199, 9221120237041090560
  %2201 = icmp eq i64 %2200, 9218868437227405312
  %2202 = and i64 %2199, 2251799813685247
  %2203 = icmp ne i64 %2202, 0
  %2204 = and i1 %2201, %2203
  br i1 %2204, label %2205, label %2213

; <label>:2205:                                   ; preds = %2197
  %2206 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2194, %struct.Memory* %2189) #9
  %.pre11 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:2207:                                   ; preds = %block_400b2b
  %2208 = fcmp ogt double %2195, %2193
  br i1 %2208, label %2213, label %2209

; <label>:2209:                                   ; preds = %2207
  %2210 = fcmp olt double %2195, %2193
  br i1 %2210, label %2213, label %2211

; <label>:2211:                                   ; preds = %2209
  %2212 = fcmp oeq double %2195, %2193
  br i1 %2212, label %2213, label %2217

; <label>:2213:                                   ; preds = %2211, %2209, %2207, %2197
  %2214 = phi i8 [ 0, %2207 ], [ 0, %2209 ], [ 1, %2211 ], [ 1, %2197 ]
  %2215 = phi i8 [ 0, %2207 ], [ 0, %2209 ], [ 0, %2211 ], [ 1, %2197 ]
  %2216 = phi i8 [ 0, %2207 ], [ 1, %2209 ], [ 0, %2211 ], [ 1, %2197 ]
  store i8 %2214, i8* %39, align 1, !tbaa !2453
  store i8 %2215, i8* %31, align 1, !tbaa !2453
  store i8 %2216, i8* %24, align 1, !tbaa !2453
  br label %2217

; <label>:2217:                                   ; preds = %2213, %2211
  store i8 0, i8* %48, align 1, !tbaa !2453
  store i8 0, i8* %42, align 1, !tbaa !2453
  store i8 0, i8* %36, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %2217, %2205
  %2218 = phi i64 [ %.pre11, %2205 ], [ %2194, %2217 ]
  %2219 = phi %struct.Memory* [ %2206, %2205 ], [ %2189, %2217 ]
  %2220 = load i64, i64* %RBP, align 8
  %2221 = add i64 %2220, -148
  %2222 = load i32, i32* %EAX, align 4
  %2223 = add i64 %2218, 6
  store i64 %2223, i64* %PC, align 8
  %2224 = inttoptr i64 %2221 to i32*
  store i32 %2222, i32* %2224, align 4
  %2225 = load i64, i64* %PC, align 8
  %2226 = load i8, i8* %24, align 1, !tbaa !2432
  %2227 = load i8, i8* %39, align 1, !tbaa !2447
  %2228 = or i8 %2227, %2226
  %2229 = icmp ne i8 %2228, 0
  %.v27 = select i1 %2229, i64 18, i64 6
  %2230 = add i64 %2225, %.v27
  store i64 %2230, i64* %58, align 8, !tbaa !2428
  br i1 %2229, label %block_400b79, label %block_400b6d

block_4007fd:                                     ; preds = %block_4007cb
  %2231 = add i64 %2794, 10
  store i64 %2231, i64* %58, align 8, !tbaa !2428
  br label %block_400807

block_4006a5:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i32 0, i32* %202, align 1, !tbaa !2454
  store i32 0, i32* %204, align 1, !tbaa !2454
  store i32 0, i32* %205, align 1, !tbaa !2454
  store i32 0, i32* %207, align 1, !tbaa !2454
  %2232 = load i64, i64* %RBP, align 8
  %2233 = add i64 %2232, -88
  %2234 = add i64 %3218, 17
  store i64 %2234, i64* %PC, align 8
  %2235 = inttoptr i64 %2233 to i64*
  %2236 = load i64, i64* %2235, align 8
  %2237 = shl i64 %2236, 1
  %2238 = icmp slt i64 %2236, 0
  %2239 = icmp slt i64 %2237, 0
  %2240 = xor i1 %2238, %2239
  store i64 %2237, i64* %RAX, align 8, !tbaa !2428
  %.lobit = lshr i64 %2236, 63
  %2241 = trunc i64 %.lobit to i8
  store i8 %2241, i8* %24, align 1, !tbaa !2453
  %2242 = trunc i64 %2237 to i32
  %2243 = and i32 %2242, 254
  %2244 = tail call i32 @llvm.ctpop.i32(i32 %2243) #8
  %2245 = trunc i32 %2244 to i8
  %2246 = and i8 %2245, 1
  %2247 = xor i8 %2246, 1
  store i8 %2247, i8* %31, align 1, !tbaa !2453
  store i8 0, i8* %36, align 1, !tbaa !2453
  %2248 = icmp eq i64 %2237, 0
  %2249 = zext i1 %2248 to i8
  store i8 %2249, i8* %39, align 1, !tbaa !2453
  %2250 = lshr i64 %2236, 62
  %2251 = trunc i64 %2250 to i8
  %2252 = and i8 %2251, 1
  store i8 %2252, i8* %42, align 1, !tbaa !2453
  %2253 = zext i1 %2240 to i8
  store i8 %2253, i8* %48, align 1, !tbaa !2453
  %2254 = add i64 %3218, 25
  store i64 %2254, i64* %PC, align 8
  store i64 %2237, i64* %2235, align 8
  %2255 = load i64, i64* %PC, align 8
  %2256 = load double, double* bitcast (%one_type* @one to double*), align 8
  store double %2256, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %2257 = load i64, i64* %RBP, align 8
  %2258 = add i64 %2257, -88
  %2259 = add i64 %2255, 13
  store i64 %2259, i64* %PC, align 8
  %2260 = inttoptr i64 %2258 to i64*
  %2261 = load i64, i64* %2260, align 8
  store i64 %2261, i64* %RAX, align 8, !tbaa !2428
  %2262 = sitofp i64 %2261 to double
  store double %2262, double* %88, align 1, !tbaa !2451
  %2263 = fdiv double %2256, %2262
  store double %2263, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %2264 = add i64 %2257, -48
  %2265 = add i64 %2255, 27
  store i64 %2265, i64* %PC, align 8
  %2266 = inttoptr i64 %2264 to double*
  store double %2263, double* %2266, align 8
  %2267 = load i64, i64* %RBP, align 8
  %2268 = add i64 %2267, -16
  %2269 = load i64, i64* %PC, align 8
  %2270 = add i64 %2269, 5
  store i64 %2270, i64* %PC, align 8
  %2271 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %2272 = load i64, i64* %2271, align 1
  %2273 = inttoptr i64 %2268 to i64*
  store i64 %2272, i64* %2273, align 8
  %2274 = load i64, i64* %RBP, align 8
  %2275 = add i64 %2274, -32
  %2276 = load i64, i64* %PC, align 8
  %2277 = add i64 %2276, 5
  store i64 %2277, i64* %PC, align 8
  %2278 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %2279 = load i64, i64* %2278, align 1
  %2280 = inttoptr i64 %2275 to i64*
  store i64 %2279, i64* %2280, align 8
  %2281 = load i64, i64* %PC, align 8
  %2282 = load i64, i64* bitcast (%one_type* @one to i64*), align 8
  %2283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2282, i64* %2283, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %2284 = load i64, i64* %RBP, align 8
  %2285 = add i64 %2284, -40
  %2286 = add i64 %2281, 14
  store i64 %2286, i64* %PC, align 8
  %2287 = inttoptr i64 %2285 to i64*
  store i64 %2282, i64* %2287, align 8
  %2288 = load i64, i64* %PC, align 8
  %2289 = add i64 %2288, 7935
  %2290 = add i64 %2288, 5
  %2291 = load i64, i64* %16, align 8, !tbaa !2428
  %2292 = add i64 %2291, -8
  %2293 = inttoptr i64 %2292 to i64*
  store i64 %2290, i64* %2293, align 8
  store i64 %2292, i64* %16, align 8, !tbaa !2428
  store i64 %2289, i64* %58, align 8, !tbaa !2428
  %2294 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %2289, %struct.Memory* %3213)
  %2295 = load i64, i64* %RBP, align 8
  %2296 = add i64 %2295, -72
  %2297 = load i64, i64* %PC, align 8
  %2298 = add i64 %2297, 8
  store i64 %2298, i64* %PC, align 8
  %2299 = inttoptr i64 %2296 to i64*
  store i64 1, i64* %2299, align 8
  %2300 = load i64, i64* %RBP, align 8
  %2301 = add i64 %2300, -116
  %2302 = load i32, i32* %EAX, align 4
  %2303 = load i64, i64* %PC, align 8
  %2304 = add i64 %2303, 3
  store i64 %2304, i64* %PC, align 8
  %2305 = inttoptr i64 %2301 to i32*
  store i32 %2302, i32* %2305, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_400701

block_401199:                                     ; preds = %block_401184
  %2306 = add i64 %3501, 4
  store i64 %2306, i64* %PC, align 8
  %2307 = load i64, i64* %3467, align 8
  store i64 %2307, i64* %RAX, align 8, !tbaa !2428
  %2308 = sitofp i64 %2307 to double
  store double %2308, double* %76, align 1, !tbaa !2451
  %2309 = add i64 %3464, -48
  %2310 = add i64 %3501, 14
  store i64 %2310, i64* %PC, align 8
  %2311 = inttoptr i64 %2309 to double*
  %2312 = load double, double* %2311, align 8
  %2313 = fmul double %2308, %2312
  store double %2313, double* %76, align 1, !tbaa !2451
  %2314 = add i64 %3464, -24
  %2315 = add i64 %3501, 19
  store i64 %2315, i64* %PC, align 8
  %2316 = inttoptr i64 %2314 to double*
  store double %2313, double* %2316, align 8
  %2317 = load i64, i64* %RBP, align 8
  %2318 = add i64 %2317, -24
  %2319 = load i64, i64* %PC, align 8
  %2320 = add i64 %2319, 5
  store i64 %2320, i64* %PC, align 8
  %2321 = inttoptr i64 %2318 to double*
  %2322 = load double, double* %2321, align 8
  store double %2322, double* %76, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %2323 = add i64 %2319, 10
  store i64 %2323, i64* %PC, align 8
  %2324 = load double, double* %2321, align 8
  %2325 = fmul double %2322, %2324
  store double %2325, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %2326 = add i64 %2317, -40
  %2327 = add i64 %2319, 15
  store i64 %2327, i64* %PC, align 8
  %2328 = inttoptr i64 %2326 to double*
  store double %2325, double* %2328, align 8
  %2329 = load i64, i64* %RBP, align 8
  %2330 = add i64 %2329, -16
  %2331 = load i64, i64* %PC, align 8
  %2332 = add i64 %2331, 5
  store i64 %2332, i64* %PC, align 8
  %2333 = inttoptr i64 %2330 to double*
  %2334 = load double, double* %2333, align 8
  store double %2334, double* %76, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %2335 = add i64 %2329, -40
  %2336 = add i64 %2331, 10
  store i64 %2336, i64* %PC, align 8
  %2337 = inttoptr i64 %2335 to double*
  %2338 = load double, double* %2337, align 8
  store double %2338, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %2339 = add i64 %2331, 15
  store i64 %2339, i64* %PC, align 8
  %2340 = load double, double* %2337, align 8
  store double %2340, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %2341 = add i64 %2331, 20
  store i64 %2341, i64* %PC, align 8
  %2342 = load double, double* %2337, align 8
  store double %2342, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %2343 = add i64 %2331, 25
  store i64 %2343, i64* %PC, align 8
  %2344 = load double, double* %2337, align 8
  store double %2344, double* %98, align 1, !tbaa !2451
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %2345 = add i64 %2331, 30
  store i64 %2345, i64* %PC, align 8
  %2346 = load double, double* %2337, align 8
  store double %2346, double* %103, align 1, !tbaa !2451
  store double 0.000000e+00, double* %106, align 1, !tbaa !2451
  %2347 = load double, double* bitcast (%B6_type* @B6 to double*), align 8
  store double %2347, double* %108, align 1, !tbaa !2451
  store double 0.000000e+00, double* %111, align 1, !tbaa !2451
  %2348 = add i64 %2331, 44
  store i64 %2348, i64* %PC, align 8
  %2349 = load double, double* %2337, align 8
  %2350 = fmul double %2347, %2349
  %2351 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %2352 = fadd double %2350, %2351
  store double %2352, double* %108, align 1, !tbaa !2451
  store i64 0, i64* %110, align 1, !tbaa !2451
  %2353 = fmul double %2346, %2352
  %2354 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %2355 = fadd double %2353, %2354
  store double %2355, double* %103, align 1, !tbaa !2451
  store i64 0, i64* %105, align 1, !tbaa !2451
  %2356 = fmul double %2344, %2355
  %2357 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %2358 = fadd double %2356, %2357
  store double %2358, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %2359 = fmul double %2342, %2358
  %2360 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %2361 = fadd double %2359, %2360
  store double %2361, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %2362 = fmul double %2340, %2361
  %2363 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %2364 = fadd double %2362, %2363
  store double %2364, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %2365 = fmul double %2338, %2364
  store double %2365, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %2366 = fadd double %2334, %2365
  %2367 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2368 = fadd double %2366, %2367
  store double %2368, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %2369 = load i64, i64* %RBP, align 8
  %2370 = add i64 %2369, -16
  %2371 = add i64 %2331, 127
  store i64 %2371, i64* %PC, align 8
  %2372 = inttoptr i64 %2370 to double*
  store double %2368, double* %2372, align 8
  %2373 = load i64, i64* %RBP, align 8
  %2374 = add i64 %2373, -72
  %2375 = load i64, i64* %PC, align 8
  %2376 = add i64 %2375, 4
  store i64 %2376, i64* %PC, align 8
  %2377 = inttoptr i64 %2374 to i64*
  %2378 = load i64, i64* %2377, align 8
  %2379 = add i64 %2378, 1
  store i64 %2379, i64* %RAX, align 8, !tbaa !2428
  %2380 = icmp eq i64 %2378, -1
  %2381 = icmp eq i64 %2379, 0
  %2382 = or i1 %2380, %2381
  %2383 = zext i1 %2382 to i8
  store i8 %2383, i8* %24, align 1, !tbaa !2432
  %2384 = trunc i64 %2379 to i32
  %2385 = and i32 %2384, 255
  %2386 = tail call i32 @llvm.ctpop.i32(i32 %2385) #8
  %2387 = trunc i32 %2386 to i8
  %2388 = and i8 %2387, 1
  %2389 = xor i8 %2388, 1
  store i8 %2389, i8* %31, align 1, !tbaa !2446
  %2390 = xor i64 %2378, %2379
  %2391 = lshr i64 %2390, 4
  %2392 = trunc i64 %2391 to i8
  %2393 = and i8 %2392, 1
  store i8 %2393, i8* %36, align 1, !tbaa !2450
  %2394 = icmp eq i64 %2379, 0
  %2395 = zext i1 %2394 to i8
  store i8 %2395, i8* %39, align 1, !tbaa !2447
  %2396 = lshr i64 %2379, 63
  %2397 = trunc i64 %2396 to i8
  store i8 %2397, i8* %42, align 1, !tbaa !2448
  %2398 = lshr i64 %2378, 63
  %2399 = xor i64 %2396, %2398
  %2400 = add nuw nsw i64 %2399, %2396
  %2401 = icmp eq i64 %2400, 2
  %2402 = zext i1 %2401 to i8
  store i8 %2402, i8* %48, align 1, !tbaa !2449
  %2403 = add i64 %2375, 12
  store i64 %2403, i64* %PC, align 8
  store i64 %2379, i64* %2377, align 8
  %2404 = load i64, i64* %PC, align 8
  %2405 = add i64 %2404, -194
  store i64 %2405, i64* %58, align 8, !tbaa !2428
  br label %block_401184

block_400716:                                     ; preds = %block_400701
  %2406 = add i64 %3954, -32
  %2407 = add i64 %3991, 5
  store i64 %2407, i64* %PC, align 8
  %2408 = inttoptr i64 %2406 to double*
  %2409 = load double, double* %2408, align 8
  store double %2409, double* %76, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %2410 = add i64 %3954, -40
  %2411 = add i64 %3991, 10
  store i64 %2411, i64* %PC, align 8
  %2412 = inttoptr i64 %2410 to double*
  %2413 = load double, double* %2412, align 8
  %2414 = fadd double %2409, %2413
  store double %2414, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %2415 = add i64 %3991, 15
  store i64 %2415, i64* %PC, align 8
  store double %2414, double* %2408, align 8
  %2416 = load i64, i64* %RBP, align 8
  %2417 = add i64 %2416, -32
  %2418 = load i64, i64* %PC, align 8
  %2419 = add i64 %2418, 5
  store i64 %2419, i64* %PC, align 8
  %2420 = inttoptr i64 %2417 to double*
  %2421 = load double, double* %2420, align 8
  store double %2421, double* %76, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %2422 = add i64 %2416, -48
  %2423 = add i64 %2418, 10
  store i64 %2423, i64* %PC, align 8
  %2424 = inttoptr i64 %2422 to double*
  %2425 = load double, double* %2424, align 8
  %2426 = fmul double %2421, %2425
  store double %2426, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %2427 = add i64 %2416, -24
  %2428 = add i64 %2418, 15
  store i64 %2428, i64* %PC, align 8
  %2429 = inttoptr i64 %2427 to double*
  store double %2426, double* %2429, align 8
  %2430 = load i64, i64* %RBP, align 8
  %2431 = add i64 %2430, -16
  %2432 = load i64, i64* %PC, align 8
  %2433 = add i64 %2432, 5
  store i64 %2433, i64* %PC, align 8
  %2434 = inttoptr i64 %2431 to i64*
  %2435 = load i64, i64* %2434, align 8
  %2436 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2435, i64* %2436, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %2437 = load double, double* bitcast (%D1_0_type* @D1_0 to double*), align 8
  store double %2437, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %2438 = add i64 %2430, -24
  %2439 = add i64 %2432, 19
  store i64 %2439, i64* %PC, align 8
  %2440 = inttoptr i64 %2438 to double*
  %2441 = load double, double* %2440, align 8
  store double %2441, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %2442 = load double, double* bitcast (%D2_0_type* @D2_0 to double*), align 8
  store double %2442, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %2443 = add i64 %2432, 33
  store i64 %2443, i64* %PC, align 8
  %2444 = load double, double* %2440, align 8
  %2445 = load double, double* bitcast (%D3_type* @D3 to double*), align 8
  %2446 = fmul double %2444, %2445
  store double %2446, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %2447 = fadd double %2442, %2446
  store double %2447, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %2448 = fmul double %2441, %2447
  store double %2448, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %2449 = fadd double %2437, %2448
  store double %2449, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %2450 = add i64 %2430, -40
  %2451 = add i64 %2432, 59
  store i64 %2451, i64* %PC, align 8
  %2452 = inttoptr i64 %2450 to double*
  %2453 = load double, double* %2452, align 8
  store double %2453, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %2454 = add i64 %2432, 64
  store i64 %2454, i64* %PC, align 8
  %2455 = load double, double* %2440, align 8
  store double %2455, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  store double %2437, double* %98, align 1, !tbaa !2451
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %2456 = add i64 %2432, 78
  store i64 %2456, i64* %PC, align 8
  %2457 = load double, double* %2440, align 8
  store double %2457, double* %103, align 1, !tbaa !2451
  store double 0.000000e+00, double* %106, align 1, !tbaa !2451
  %2458 = load double, double* bitcast (%E2_0_type* @E2_0 to double*), align 8
  store double %2458, double* %108, align 1, !tbaa !2451
  store double 0.000000e+00, double* %111, align 1, !tbaa !2451
  %2459 = add i64 %2432, 92
  store i64 %2459, i64* %PC, align 8
  %2460 = load double, double* %2440, align 8
  %2461 = load double, double* bitcast (%E3_type* @E3 to double*), align 8
  %2462 = fmul double %2460, %2461
  store double %2462, double* %123, align 1, !tbaa !2451
  store i64 0, i64* %224, align 1, !tbaa !2451
  %2463 = fadd double %2458, %2462
  store double %2463, double* %108, align 1, !tbaa !2451
  store i64 0, i64* %110, align 1, !tbaa !2451
  %2464 = fmul double %2457, %2463
  store double %2464, double* %103, align 1, !tbaa !2451
  store i64 0, i64* %105, align 1, !tbaa !2451
  %2465 = fadd double %2437, %2464
  store double %2465, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %2466 = fmul double %2455, %2465
  store double %2466, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %2467 = fadd double %2453, %2466
  store double %2467, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %2468 = fdiv double %2449, %2467
  store double %2468, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %2469 = load double, double* %76, align 1
  %2470 = fadd double %2469, %2468
  store double %2470, double* %76, align 1, !tbaa !2451
  %2471 = load i64, i64* %RBP, align 8
  %2472 = add i64 %2471, -16
  %2473 = add i64 %2432, 134
  store i64 %2473, i64* %PC, align 8
  %2474 = inttoptr i64 %2472 to double*
  store double %2470, double* %2474, align 8
  %2475 = load i64, i64* %RBP, align 8
  %2476 = add i64 %2475, -72
  %2477 = load i64, i64* %PC, align 8
  %2478 = add i64 %2477, 4
  store i64 %2478, i64* %PC, align 8
  %2479 = inttoptr i64 %2476 to i64*
  %2480 = load i64, i64* %2479, align 8
  %2481 = add i64 %2480, 1
  store i64 %2481, i64* %RAX, align 8, !tbaa !2428
  %2482 = icmp eq i64 %2480, -1
  %2483 = icmp eq i64 %2481, 0
  %2484 = or i1 %2482, %2483
  %2485 = zext i1 %2484 to i8
  store i8 %2485, i8* %24, align 1, !tbaa !2432
  %2486 = trunc i64 %2481 to i32
  %2487 = and i32 %2486, 255
  %2488 = tail call i32 @llvm.ctpop.i32(i32 %2487) #8
  %2489 = trunc i32 %2488 to i8
  %2490 = and i8 %2489, 1
  %2491 = xor i8 %2490, 1
  store i8 %2491, i8* %31, align 1, !tbaa !2446
  %2492 = xor i64 %2480, %2481
  %2493 = lshr i64 %2492, 4
  %2494 = trunc i64 %2493 to i8
  %2495 = and i8 %2494, 1
  store i8 %2495, i8* %36, align 1, !tbaa !2450
  %2496 = icmp eq i64 %2481, 0
  %2497 = zext i1 %2496 to i8
  store i8 %2497, i8* %39, align 1, !tbaa !2447
  %2498 = lshr i64 %2481, 63
  %2499 = trunc i64 %2498 to i8
  store i8 %2499, i8* %42, align 1, !tbaa !2448
  %2500 = lshr i64 %2480, 63
  %2501 = xor i64 %2498, %2500
  %2502 = add nuw nsw i64 %2501, %2498
  %2503 = icmp eq i64 %2502, 2
  %2504 = zext i1 %2503 to i8
  store i8 %2504, i8* %48, align 1, !tbaa !2449
  %2505 = add i64 %2477, 12
  store i64 %2505, i64* %PC, align 8
  store i64 %2481, i64* %2479, align 8
  %2506 = load i64, i64* %PC, align 8
  %2507 = add i64 %2506, -197
  store i64 %2507, i64* %58, align 8, !tbaa !2428
  br label %block_400701

block_401a14:                                     ; preds = %block_4018d9
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %2508 = add i64 %568, 3036
  %2509 = add i64 %568, 15
  %2510 = load i64, i64* %16, align 8, !tbaa !2428
  %2511 = add i64 %2510, -8
  %2512 = inttoptr i64 %2511 to i64*
  store i64 %2509, i64* %2512, align 8
  store i64 %2511, i64* %16, align 8, !tbaa !2428
  store i64 %2508, i64* %58, align 8, !tbaa !2428
  %2513 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %2508, %struct.Memory* %2172)
  %2514 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 570), i64* %RDI, align 8, !tbaa !2428
  %2515 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to i64*), align 8
  %2516 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2515, i64* %2516, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %2517 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 160) to i64*), align 16
  %2518 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2517, i64* %2518, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %2519 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 144) to i64*), align 16
  %2520 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2519, i64* %2520, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %2521 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %2522 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %2523 = fmul double %2521, %2522
  %2524 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %2525 = fsub double %2523, %2524
  store double %2525, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %2526 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %2527 = load double, double* bitcast (%four_type* @four to double*), align 8
  %2528 = fdiv double %2526, %2527
  store double %2528, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %2529 = load i64, i64* %RBP, align 8
  %2530 = add i64 %2529, -24
  %2531 = add i64 %2514, 93
  store i64 %2531, i64* %PC, align 8
  %2532 = inttoptr i64 %2530 to double*
  store double %2528, double* %2532, align 8
  %2533 = load i64, i64* %RBP, align 8
  %2534 = add i64 %2533, -24
  %2535 = load i64, i64* %PC, align 8
  %2536 = add i64 %2535, 5
  store i64 %2536, i64* %PC, align 8
  %2537 = inttoptr i64 %2534 to double*
  %2538 = load double, double* %2537, align 8
  store double %2538, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %2539 = add i64 %2535, 10
  store i64 %2539, i64* %PC, align 8
  %2540 = load double, double* %2537, align 8
  %2541 = fmul double %2538, %2540
  store double %2541, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %2542 = add i64 %2533, -40
  %2543 = add i64 %2535, 15
  store i64 %2543, i64* %PC, align 8
  %2544 = inttoptr i64 %2542 to double*
  store double %2541, double* %2544, align 8
  %2545 = load i64, i64* %RBP, align 8
  %2546 = add i64 %2545, -24
  %2547 = load i64, i64* %PC, align 8
  %2548 = add i64 %2547, 5
  store i64 %2548, i64* %PC, align 8
  %2549 = inttoptr i64 %2546 to double*
  %2550 = load double, double* %2549, align 8
  store double %2550, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %2551 = load double, double* bitcast (%A6_type* @A6 to double*), align 8
  store double %2551, double* %98, align 1, !tbaa !2451
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %2552 = add i64 %2545, -40
  %2553 = add i64 %2547, 19
  store i64 %2553, i64* %PC, align 8
  %2554 = inttoptr i64 %2552 to double*
  %2555 = load double, double* %2554, align 8
  %2556 = fmul double %2551, %2555
  %2557 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %2558 = fadd double %2556, %2557
  store double %2558, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %2559 = add i64 %2547, 33
  store i64 %2559, i64* %PC, align 8
  %2560 = load double, double* %2554, align 8
  %2561 = fmul double %2558, %2560
  %2562 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %2563 = fadd double %2561, %2562
  store double %2563, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %2564 = add i64 %2547, 47
  store i64 %2564, i64* %PC, align 8
  %2565 = load double, double* %2554, align 8
  %2566 = fmul double %2563, %2565
  %2567 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %2568 = fadd double %2566, %2567
  store double %2568, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %2569 = add i64 %2547, 61
  store i64 %2569, i64* %PC, align 8
  %2570 = load double, double* %2554, align 8
  %2571 = fmul double %2568, %2570
  %2572 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %2573 = fadd double %2571, %2572
  store double %2573, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %2574 = add i64 %2547, 75
  store i64 %2574, i64* %PC, align 8
  %2575 = load double, double* %2554, align 8
  %2576 = fmul double %2573, %2575
  %2577 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %2578 = fadd double %2576, %2577
  store double %2578, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %2579 = add i64 %2547, 89
  store i64 %2579, i64* %PC, align 8
  %2580 = load double, double* %2554, align 8
  %2581 = fmul double %2578, %2580
  %2582 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2583 = fadd double %2581, %2582
  store double %2583, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %2584 = fmul double %2550, %2583
  store double %2584, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  store double %2584, double* bitcast (%sa_type* @sa to double*), align 8
  %2585 = add i64 %2547, 116
  store i64 %2585, i64* %PC, align 8
  %2586 = load double, double* %2554, align 8
  store double %2586, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %2587 = load i64, i64* %RBP, align 8
  %2588 = add i64 %2587, -40
  %2589 = add i64 %2547, 121
  store i64 %2589, i64* %PC, align 8
  %2590 = inttoptr i64 %2588 to double*
  %2591 = load double, double* %2590, align 8
  store double %2591, double* %98, align 1, !tbaa !2451
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %2592 = add i64 %2547, 126
  store i64 %2592, i64* %PC, align 8
  %2593 = load double, double* %2590, align 8
  store double %2593, double* %103, align 1, !tbaa !2451
  store double 0.000000e+00, double* %106, align 1, !tbaa !2451
  %2594 = add i64 %2547, 131
  store i64 %2594, i64* %PC, align 8
  %2595 = load double, double* %2590, align 8
  store double %2595, double* %108, align 1, !tbaa !2451
  store double 0.000000e+00, double* %111, align 1, !tbaa !2451
  %2596 = add i64 %2547, 136
  store i64 %2596, i64* %PC, align 8
  %2597 = load double, double* %2590, align 8
  store double %2597, double* %123, align 1, !tbaa !2451
  store double 0.000000e+00, double* %225, align 1, !tbaa !2451
  %2598 = load double, double* bitcast (%B6_type* @B6 to double*), align 8
  store double %2598, double* %2036, align 1, !tbaa !2451
  store double 0.000000e+00, double* %2038, align 1, !tbaa !2451
  %2599 = add i64 %2547, 152
  store i64 %2599, i64* %PC, align 8
  %2600 = load double, double* %2590, align 8
  %2601 = fmul double %2598, %2600
  %2602 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %2603 = fadd double %2601, %2602
  store double %2603, double* %2036, align 1, !tbaa !2451
  store i64 0, i64* %2037, align 1, !tbaa !2451
  %2604 = fmul double %2597, %2603
  %2605 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %2606 = fadd double %2604, %2605
  store double %2606, double* %123, align 1, !tbaa !2451
  store i64 0, i64* %224, align 1, !tbaa !2451
  %2607 = fmul double %2595, %2606
  %2608 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %2609 = fadd double %2607, %2608
  store double %2609, double* %108, align 1, !tbaa !2451
  store i64 0, i64* %110, align 1, !tbaa !2451
  %2610 = fmul double %2593, %2609
  %2611 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %2612 = fadd double %2610, %2611
  store double %2612, double* %103, align 1, !tbaa !2451
  store i64 0, i64* %105, align 1, !tbaa !2451
  %2613 = fmul double %2591, %2612
  %2614 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %2615 = fadd double %2613, %2614
  store double %2615, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %2616 = fmul double %2586, %2615
  %2617 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2618 = fadd double %2616, %2617
  store double %2618, double* bitcast (%sb_type* @sb to double*), align 8
  %2619 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %2620 = fmul double %2619, %2618
  store double %2620, double* bitcast (%sa_type* @sa to double*), align 8
  %2621 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %2622 = load double, double* %138, align 1
  %2623 = fdiv double %2621, %2622
  store double %2623, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  store double %2623, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 152) to double*), align 8
  %2624 = load i64, i64* %RBP, align 8
  %2625 = add i64 %2624, -48
  %2626 = add i64 %2547, 291
  store i64 %2626, i64* %PC, align 8
  %2627 = inttoptr i64 %2625 to double*
  %2628 = load double, double* %2627, align 8
  store double %2628, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %2629 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  store double %2629, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %2630 = load double, double* bitcast (%two_type* @two to double*), align 8
  store double %2630, double* %98, align 1, !tbaa !2451
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %2631 = add i64 %2624, -16
  %2632 = add i64 %2547, 314
  store i64 %2632, i64* %PC, align 8
  %2633 = inttoptr i64 %2631 to double*
  %2634 = load double, double* %2633, align 8
  %2635 = fmul double %2630, %2634
  store double %2635, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %2636 = fadd double %2629, %2635
  store double %2636, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %2637 = fmul double %2628, %2636
  %2638 = fdiv double %2637, %2630
  store double %2638, double* bitcast (%sa_type* @sa to double*), align 8
  %2639 = load double, double* %141, align 1
  store double %2639, double* bitcast (%sb_type* @sb to double*), align 8
  %2640 = fsub double %2638, %2639
  store double %2640, double* bitcast (%sc_type* @sc to double*), align 8
  %2641 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2642 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 152) to double*), align 8
  %2643 = fdiv double %2641, %2642
  store double %2643, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 160) to double*), align 16
  %2644 = load <2 x i32>, <2 x i32>* %1522, align 1
  %2645 = load <2 x i32>, <2 x i32>* %1524, align 1
  %2646 = extractelement <2 x i32> %2644, i32 0
  store i32 %2646, i32* %1527, align 1, !tbaa !2455
  %2647 = extractelement <2 x i32> %2644, i32 1
  store i32 %2647, i32* %1530, align 1, !tbaa !2455
  %2648 = extractelement <2 x i32> %2645, i32 0
  store i32 %2648, i32* %1532, align 1, !tbaa !2455
  %2649 = extractelement <2 x i32> %2645, i32 1
  store i32 %2649, i32* %1535, align 1, !tbaa !2455
  %2650 = load double, double* %82, align 1
  %2651 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %2652 = fmul double %2650, %2651
  store double %2652, double* %82, align 1, !tbaa !2451
  store i32 %2646, i32* %1539, align 1, !tbaa !2455
  store i32 %2647, i32* %1541, align 1, !tbaa !2455
  store i32 %2648, i32* %1542, align 1, !tbaa !2455
  store i32 %2649, i32* %1544, align 1, !tbaa !2455
  %2653 = load double, double* %88, align 1
  %2654 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %2655 = fmul double %2653, %2654
  store double %2655, double* %88, align 1, !tbaa !2451
  %2656 = bitcast <2 x i32> %2644 to double
  %2657 = fmul double %2656, %2643
  %2658 = load i64, i64* %RBP, align 8
  %2659 = add i64 %2658, -256
  %2660 = add i64 %2547, 444
  store i64 %2660, i64* %PC, align 8
  %2661 = inttoptr i64 %2659 to double*
  store double %2657, double* %2661, align 8
  %2662 = load i64, i64* %PC, align 8
  %2663 = load <2 x i32>, <2 x i32>* %1555, align 1
  %2664 = load <2 x i32>, <2 x i32>* %1558, align 1
  %2665 = extractelement <2 x i32> %2663, i32 0
  store i32 %2665, i32* %202, align 1, !tbaa !2455
  %2666 = extractelement <2 x i32> %2663, i32 1
  store i32 %2666, i32* %204, align 1, !tbaa !2455
  %2667 = extractelement <2 x i32> %2664, i32 0
  store i32 %2667, i32* %205, align 1, !tbaa !2455
  %2668 = extractelement <2 x i32> %2664, i32 1
  store i32 %2668, i32* %207, align 1, !tbaa !2455
  %2669 = load <2 x i32>, <2 x i32>* %1564, align 1
  %2670 = load <2 x i32>, <2 x i32>* %1567, align 1
  %2671 = extractelement <2 x i32> %2669, i32 0
  store i32 %2671, i32* %1527, align 1, !tbaa !2455
  %2672 = extractelement <2 x i32> %2669, i32 1
  store i32 %2672, i32* %1530, align 1, !tbaa !2455
  %2673 = extractelement <2 x i32> %2670, i32 0
  store i32 %2673, i32* %1532, align 1, !tbaa !2455
  %2674 = extractelement <2 x i32> %2670, i32 1
  store i32 %2674, i32* %1535, align 1, !tbaa !2455
  %2675 = load i64, i64* %RBP, align 8
  %2676 = add i64 %2675, -256
  %2677 = add i64 %2662, 14
  store i64 %2677, i64* %PC, align 8
  %2678 = inttoptr i64 %2676 to i64*
  %2679 = load i64, i64* %2678, align 8
  %2680 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2679, i64* %2680, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %2681 = add i64 %2675, -260
  %2682 = load i32, i32* %EAX, align 4
  %2683 = add i64 %2662, 20
  store i64 %2683, i64* %PC, align 8
  %2684 = inttoptr i64 %2681 to i32*
  store i32 %2682, i32* %2684, align 4
  %2685 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %2686 = add i64 %2685, -6191
  %2687 = add i64 %2685, 7
  %2688 = load i64, i64* %16, align 8, !tbaa !2428
  %2689 = add i64 %2688, -8
  %2690 = inttoptr i64 %2689 to i64*
  store i64 %2687, i64* %2690, align 8
  store i64 %2689, i64* %16, align 8, !tbaa !2428
  store i64 %2686, i64* %58, align 8, !tbaa !2428
  %2691 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %2513)
  %2692 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %2693 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 152) to i64*), align 8
  %2694 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2693, i64* %2694, align 1, !tbaa !2451
  store i32 0, i32* %1527, align 1, !tbaa !2454
  store i32 0, i32* %1530, align 1, !tbaa !2454
  %2695 = load i64, i64* %RBP, align 8
  %2696 = add i64 %2695, -16
  %2697 = add i64 %2692, 26
  store i64 %2697, i64* %PC, align 8
  %2698 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  %2699 = load i64, i64* %2698, align 1
  %2700 = inttoptr i64 %2696 to i64*
  store i64 %2699, i64* %2700, align 8
  %2701 = load i64, i64* %PC, align 8
  %2702 = load i64, i64* bitcast (%one_type* @one to i64*), align 8
  %2703 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2702, i64* %2703, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %2704 = load i64, i64* %RBP, align 8
  %2705 = add i64 %2704, -40
  %2706 = add i64 %2701, 14
  store i64 %2706, i64* %PC, align 8
  %2707 = inttoptr i64 %2705 to i64*
  store i64 %2702, i64* %2707, align 8
  %2708 = load i64, i64* %PC, align 8
  %2709 = load double, double* %144, align 1
  store double %2709, double* bitcast (%sa_type* @sa to double*), align 8
  store double %2709, double* %76, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %2710 = load i64, i64* %RBP, align 8
  %2711 = add i64 %2710, -80
  %2712 = add i64 %2708, 22
  store i64 %2712, i64* %PC, align 8
  %2713 = inttoptr i64 %2711 to i64*
  %2714 = load i64, i64* %2713, align 8
  store i64 %2714, i64* %RCX, align 8, !tbaa !2428
  %2715 = sitofp i64 %2714 to double
  store double %2715, double* %82, align 1, !tbaa !2451
  %2716 = fdiv double %2709, %2715
  store double %2716, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %2717 = add i64 %2710, -32
  %2718 = add i64 %2708, 36
  store i64 %2718, i64* %PC, align 8
  %2719 = inttoptr i64 %2717 to double*
  store double %2716, double* %2719, align 8
  %2720 = load i64, i64* %RBP, align 8
  %2721 = add i64 %2720, -264
  %2722 = load i32, i32* %EAX, align 4
  %2723 = load i64, i64* %PC, align 8
  %2724 = add i64 %2723, 6
  store i64 %2724, i64* %PC, align 8
  %2725 = inttoptr i64 %2721 to i32*
  store i32 %2722, i32* %2725, align 4
  %2726 = load i64, i64* %PC, align 8
  %2727 = add i64 %2726, 2360
  %2728 = add i64 %2726, 5
  %2729 = load i64, i64* %16, align 8, !tbaa !2428
  %2730 = add i64 %2729, -8
  %2731 = inttoptr i64 %2730 to i64*
  store i64 %2728, i64* %2731, align 8
  store i64 %2730, i64* %16, align 8, !tbaa !2428
  store i64 %2727, i64* %58, align 8, !tbaa !2428
  %2732 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %2727, %struct.Memory* %2691)
  %2733 = load i64, i64* %RBP, align 8
  %2734 = add i64 %2733, -72
  %2735 = load i64, i64* %PC, align 8
  %2736 = add i64 %2735, 8
  store i64 %2736, i64* %PC, align 8
  %2737 = inttoptr i64 %2734 to i64*
  store i64 1, i64* %2737, align 8
  %2738 = load i64, i64* %RBP, align 8
  %2739 = add i64 %2738, -268
  %2740 = load i32, i32* %EAX, align 4
  %2741 = load i64, i64* %PC, align 8
  %2742 = add i64 %2741, 6
  store i64 %2742, i64* %PC, align 8
  %2743 = inttoptr i64 %2739 to i32*
  store i32 %2740, i32* %2743, align 4
  %.pre18 = load i64, i64* %PC, align 8
  br label %block_401ccb

block_4007cb:                                     ; preds = %block_400701
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %2744 = add i64 %3991, 7717
  %2745 = add i64 %3991, 15
  %2746 = load i64, i64* %16, align 8, !tbaa !2428
  %2747 = add i64 %2746, -8
  %2748 = inttoptr i64 %2747 to i64*
  store i64 %2745, i64* %2748, align 8
  store i64 %2747, i64* %16, align 8, !tbaa !2428
  store i64 %2744, i64* %58, align 8, !tbaa !2428
  %2749 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %2744, %struct.Memory* %2294)
  %2750 = load i64, i64* %PC, align 8
  %2751 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to i64*), align 8
  %2752 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2751, i64* %2752, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  store i64 %2751, i64* bitcast (%sa_type* @sa to i64*), align 8
  %2753 = load i64, i64* %RBP, align 8
  %2754 = add i64 %2753, -88
  %2755 = add i64 %2750, 22
  store i64 %2755, i64* %PC, align 8
  %2756 = inttoptr i64 %2754 to i64*
  %2757 = load i64, i64* %2756, align 8
  store i64 %2757, i64* %RDI, align 8, !tbaa !2428
  %2758 = add i64 %2753, -64
  %2759 = add i64 %2750, 26
  store i64 %2759, i64* %PC, align 8
  %2760 = inttoptr i64 %2758 to i64*
  %2761 = load i64, i64* %2760, align 8
  %2762 = sub i64 %2757, %2761
  %2763 = icmp ult i64 %2757, %2761
  %2764 = zext i1 %2763 to i8
  store i8 %2764, i8* %24, align 1, !tbaa !2432
  %2765 = trunc i64 %2762 to i32
  %2766 = and i32 %2765, 255
  %2767 = tail call i32 @llvm.ctpop.i32(i32 %2766) #8
  %2768 = trunc i32 %2767 to i8
  %2769 = and i8 %2768, 1
  %2770 = xor i8 %2769, 1
  store i8 %2770, i8* %31, align 1, !tbaa !2446
  %2771 = xor i64 %2761, %2757
  %2772 = xor i64 %2771, %2762
  %2773 = lshr i64 %2772, 4
  %2774 = trunc i64 %2773 to i8
  %2775 = and i8 %2774, 1
  store i8 %2775, i8* %36, align 1, !tbaa !2450
  %2776 = icmp eq i64 %2762, 0
  %2777 = zext i1 %2776 to i8
  store i8 %2777, i8* %39, align 1, !tbaa !2447
  %2778 = lshr i64 %2762, 63
  %2779 = trunc i64 %2778 to i8
  store i8 %2779, i8* %42, align 1, !tbaa !2448
  %2780 = lshr i64 %2757, 63
  %2781 = lshr i64 %2761, 63
  %2782 = xor i64 %2781, %2780
  %2783 = xor i64 %2778, %2780
  %2784 = add nuw nsw i64 %2783, %2782
  %2785 = icmp eq i64 %2784, 2
  %2786 = zext i1 %2785 to i8
  store i8 %2786, i8* %48, align 1, !tbaa !2449
  %2787 = add i64 %2753, -120
  %2788 = load i32, i32* %EAX, align 4
  %2789 = add i64 %2750, 29
  store i64 %2789, i64* %PC, align 8
  %2790 = inttoptr i64 %2787 to i32*
  store i32 %2788, i32* %2790, align 4
  %2791 = load i64, i64* %PC, align 8
  %2792 = load i8, i8* %39, align 1, !tbaa !2447
  %2793 = icmp eq i8 %2792, 0
  %.v21 = select i1 %2793, i64 11, i64 6
  %2794 = add i64 %2791, %.v21
  store i64 %2794, i64* %58, align 8, !tbaa !2428
  br i1 %2793, label %block_400802, label %block_4007fd

block_401f8c:                                     ; preds = %block_401fa1, %block_401d67
  %2795 = phi i64 [ %3706, %block_401fa1 ], [ %.pre19, %block_401d67 ]
  %2796 = load i64, i64* %RBP, align 8
  %2797 = add i64 %2796, -72
  %2798 = add i64 %2795, 4
  store i64 %2798, i64* %PC, align 8
  %2799 = inttoptr i64 %2797 to i64*
  %2800 = load i64, i64* %2799, align 8
  store i64 %2800, i64* %RAX, align 8, !tbaa !2428
  %2801 = add i64 %2796, -80
  %2802 = add i64 %2795, 8
  store i64 %2802, i64* %PC, align 8
  %2803 = inttoptr i64 %2801 to i64*
  %2804 = load i64, i64* %2803, align 8
  %2805 = add i64 %2804, -1
  store i64 %2805, i64* %RCX, align 8, !tbaa !2428
  %2806 = lshr i64 %2805, 63
  %2807 = sub i64 %2800, %2805
  %2808 = icmp ult i64 %2800, %2805
  %2809 = zext i1 %2808 to i8
  store i8 %2809, i8* %24, align 1, !tbaa !2432
  %2810 = trunc i64 %2807 to i32
  %2811 = and i32 %2810, 255
  %2812 = tail call i32 @llvm.ctpop.i32(i32 %2811) #8
  %2813 = trunc i32 %2812 to i8
  %2814 = and i8 %2813, 1
  %2815 = xor i8 %2814, 1
  store i8 %2815, i8* %31, align 1, !tbaa !2446
  %2816 = xor i64 %2805, %2800
  %2817 = xor i64 %2816, %2807
  %2818 = lshr i64 %2817, 4
  %2819 = trunc i64 %2818 to i8
  %2820 = and i8 %2819, 1
  store i8 %2820, i8* %36, align 1, !tbaa !2450
  %2821 = icmp eq i64 %2807, 0
  %2822 = zext i1 %2821 to i8
  store i8 %2822, i8* %39, align 1, !tbaa !2447
  %2823 = lshr i64 %2807, 63
  %2824 = trunc i64 %2823 to i8
  store i8 %2824, i8* %42, align 1, !tbaa !2448
  %2825 = lshr i64 %2800, 63
  %2826 = xor i64 %2806, %2825
  %2827 = xor i64 %2823, %2825
  %2828 = add nuw nsw i64 %2827, %2826
  %2829 = icmp eq i64 %2828, 2
  %2830 = zext i1 %2829 to i8
  store i8 %2830, i8* %48, align 1, !tbaa !2449
  %2831 = icmp ne i8 %2824, 0
  %2832 = xor i1 %2831, %2829
  %.demorgan40 = or i1 %2821, %2832
  %.v41 = select i1 %.demorgan40, i64 21, i64 316
  %2833 = add i64 %2795, %.v41
  store i64 %2833, i64* %58, align 8, !tbaa !2428
  br i1 %.demorgan40, label %block_401fa1, label %block_4020c8

block_401ce0:                                     ; preds = %block_401ccb
  %2834 = add i64 %914, 4
  store i64 %2834, i64* %PC, align 8
  %2835 = load i64, i64* %880, align 8
  store i64 %2835, i64* %RAX, align 8, !tbaa !2428
  %2836 = sitofp i64 %2835 to double
  store double %2836, double* %76, align 1, !tbaa !2451
  %2837 = add i64 %877, -32
  %2838 = add i64 %914, 14
  store i64 %2838, i64* %PC, align 8
  %2839 = inttoptr i64 %2837 to double*
  %2840 = load double, double* %2839, align 8
  %2841 = fmul double %2836, %2840
  store double %2841, double* %76, align 1, !tbaa !2451
  %2842 = add i64 %877, -48
  %2843 = add i64 %914, 19
  store i64 %2843, i64* %PC, align 8
  %2844 = inttoptr i64 %2842 to double*
  store double %2841, double* %2844, align 8
  %2845 = load i64, i64* %RBP, align 8
  %2846 = add i64 %2845, -48
  %2847 = load i64, i64* %PC, align 8
  %2848 = add i64 %2847, 5
  store i64 %2848, i64* %PC, align 8
  %2849 = inttoptr i64 %2846 to double*
  %2850 = load double, double* %2849, align 8
  store double %2850, double* %76, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %2851 = add i64 %2847, 10
  store i64 %2851, i64* %PC, align 8
  %2852 = load double, double* %2849, align 8
  %2853 = fmul double %2850, %2852
  store double %2853, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %2854 = add i64 %2845, -24
  %2855 = add i64 %2847, 15
  store i64 %2855, i64* %PC, align 8
  %2856 = inttoptr i64 %2854 to double*
  store double %2853, double* %2856, align 8
  %2857 = load i64, i64* %RBP, align 8
  %2858 = add i64 %2857, -16
  %2859 = load i64, i64* %PC, align 8
  %2860 = add i64 %2859, 5
  store i64 %2860, i64* %PC, align 8
  %2861 = inttoptr i64 %2858 to double*
  %2862 = load double, double* %2861, align 8
  store double %2862, double* %76, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %2863 = add i64 %2857, -40
  %2864 = add i64 %2859, 10
  store i64 %2864, i64* %PC, align 8
  %2865 = inttoptr i64 %2863 to double*
  %2866 = load double, double* %2865, align 8
  store double %2866, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %2867 = add i64 %2857, -48
  %2868 = add i64 %2859, 15
  store i64 %2868, i64* %PC, align 8
  %2869 = inttoptr i64 %2867 to double*
  %2870 = load double, double* %2869, align 8
  store double %2870, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %2871 = add i64 %2859, 20
  store i64 %2871, i64* %PC, align 8
  %2872 = load double, double* %2865, align 8
  %2873 = fadd double %2870, %2872
  store double %2873, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %2874 = fdiv double %2866, %2873
  store double %2874, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %2875 = fsub double %2862, %2874
  store double %2875, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %2876 = add i64 %2859, 33
  store i64 %2876, i64* %PC, align 8
  %2877 = load double, double* %2869, align 8
  store double %2877, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %2878 = add i64 %2857, -24
  %2879 = add i64 %2859, 38
  store i64 %2879, i64* %PC, align 8
  %2880 = inttoptr i64 %2878 to double*
  %2881 = load double, double* %2880, align 8
  store double %2881, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %2882 = add i64 %2859, 43
  store i64 %2882, i64* %PC, align 8
  %2883 = load double, double* %2865, align 8
  %2884 = fadd double %2881, %2883
  store double %2884, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %2885 = fdiv double %2877, %2884
  store double %2885, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %2886 = fsub double %2875, %2885
  store double %2886, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %2887 = add i64 %2859, 56
  store i64 %2887, i64* %PC, align 8
  %2888 = load double, double* %2880, align 8
  store double %2888, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %2889 = add i64 %2859, 61
  store i64 %2889, i64* %PC, align 8
  %2890 = load double, double* %2869, align 8
  store double %2890, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %2891 = add i64 %2859, 66
  store i64 %2891, i64* %PC, align 8
  %2892 = load double, double* %2880, align 8
  %2893 = fmul double %2890, %2892
  store double %2893, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %2894 = add i64 %2859, 71
  store i64 %2894, i64* %PC, align 8
  %2895 = load double, double* %2865, align 8
  %2896 = fadd double %2893, %2895
  store double %2896, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %2897 = fdiv double %2888, %2896
  store double %2897, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %2898 = fsub double %2886, %2897
  store double %2898, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %2899 = add i64 %2859, 84
  store i64 %2899, i64* %PC, align 8
  store double %2898, double* %2861, align 8
  %2900 = load i64, i64* %RBP, align 8
  %2901 = add i64 %2900, -72
  %2902 = load i64, i64* %PC, align 8
  %2903 = add i64 %2902, 4
  store i64 %2903, i64* %PC, align 8
  %2904 = inttoptr i64 %2901 to i64*
  %2905 = load i64, i64* %2904, align 8
  %2906 = add i64 %2905, 1
  store i64 %2906, i64* %RAX, align 8, !tbaa !2428
  %2907 = icmp eq i64 %2905, -1
  %2908 = icmp eq i64 %2906, 0
  %2909 = or i1 %2907, %2908
  %2910 = zext i1 %2909 to i8
  store i8 %2910, i8* %24, align 1, !tbaa !2432
  %2911 = trunc i64 %2906 to i32
  %2912 = and i32 %2911, 255
  %2913 = tail call i32 @llvm.ctpop.i32(i32 %2912) #8
  %2914 = trunc i32 %2913 to i8
  %2915 = and i8 %2914, 1
  %2916 = xor i8 %2915, 1
  store i8 %2916, i8* %31, align 1, !tbaa !2446
  %2917 = xor i64 %2905, %2906
  %2918 = lshr i64 %2917, 4
  %2919 = trunc i64 %2918 to i8
  %2920 = and i8 %2919, 1
  store i8 %2920, i8* %36, align 1, !tbaa !2450
  %2921 = icmp eq i64 %2906, 0
  %2922 = zext i1 %2921 to i8
  store i8 %2922, i8* %39, align 1, !tbaa !2447
  %2923 = lshr i64 %2906, 63
  %2924 = trunc i64 %2923 to i8
  store i8 %2924, i8* %42, align 1, !tbaa !2448
  %2925 = lshr i64 %2905, 63
  %2926 = xor i64 %2923, %2925
  %2927 = add nuw nsw i64 %2926, %2923
  %2928 = icmp eq i64 %2927, 2
  %2929 = zext i1 %2928 to i8
  store i8 %2929, i8* %48, align 1, !tbaa !2449
  %2930 = add i64 %2902, 12
  store i64 %2930, i64* %PC, align 8
  store i64 %2906, i64* %2904, align 8
  %2931 = load i64, i64* %PC, align 8
  %2932 = add i64 %2931, -151
  store i64 %2932, i64* %58, align 8, !tbaa !2428
  br label %block_401ccb

block_40124b:                                     ; preds = %block_401184
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %2933 = add i64 %3501, 5029
  %2934 = add i64 %3501, 15
  %2935 = load i64, i64* %16, align 8, !tbaa !2428
  %2936 = add i64 %2935, -8
  %2937 = inttoptr i64 %2936 to i64*
  store i64 %2934, i64* %2937, align 8
  store i64 %2936, i64* %16, align 8, !tbaa !2428
  store i64 %2933, i64* %58, align 8, !tbaa !2428
  %2938 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %2933, %struct.Memory* %3909)
  %2939 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 498), i64* %RDI, align 8, !tbaa !2428
  %2940 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to i64*), align 8
  %2941 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2940, i64* %2941, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %2942 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 128) to i64*), align 16
  %2943 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2942, i64* %2943, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %2944 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %2945 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %2946 = fmul double %2944, %2945
  %2947 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %2948 = fsub double %2946, %2947
  store double %2948, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %2949 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %2950 = load double, double* bitcast (%three_type* @three to double*), align 8
  %2951 = fdiv double %2949, %2950
  store double %2951, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %2952 = load i64, i64* %RBP, align 8
  %2953 = add i64 %2952, -24
  %2954 = add i64 %2939, 85
  store i64 %2954, i64* %PC, align 8
  %2955 = inttoptr i64 %2953 to double*
  store double %2951, double* %2955, align 8
  %2956 = load i64, i64* %RBP, align 8
  %2957 = add i64 %2956, -24
  %2958 = load i64, i64* %PC, align 8
  %2959 = add i64 %2958, 5
  store i64 %2959, i64* %PC, align 8
  %2960 = inttoptr i64 %2957 to double*
  %2961 = load double, double* %2960, align 8
  store double %2961, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %2962 = add i64 %2958, 10
  store i64 %2962, i64* %PC, align 8
  %2963 = load double, double* %2960, align 8
  %2964 = fmul double %2961, %2963
  store double %2964, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %2965 = add i64 %2956, -40
  %2966 = add i64 %2958, 15
  store i64 %2966, i64* %PC, align 8
  %2967 = inttoptr i64 %2965 to double*
  store double %2964, double* %2967, align 8
  %2968 = load i64, i64* %RBP, align 8
  %2969 = add i64 %2968, -40
  %2970 = load i64, i64* %PC, align 8
  %2971 = add i64 %2970, 5
  store i64 %2971, i64* %PC, align 8
  %2972 = inttoptr i64 %2969 to double*
  %2973 = load double, double* %2972, align 8
  store double %2973, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %2974 = add i64 %2970, 10
  store i64 %2974, i64* %PC, align 8
  %2975 = load double, double* %2972, align 8
  store double %2975, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %2976 = add i64 %2970, 15
  store i64 %2976, i64* %PC, align 8
  %2977 = load double, double* %2972, align 8
  store double %2977, double* %98, align 1, !tbaa !2451
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %2978 = add i64 %2970, 20
  store i64 %2978, i64* %PC, align 8
  %2979 = load double, double* %2972, align 8
  store double %2979, double* %103, align 1, !tbaa !2451
  store double 0.000000e+00, double* %106, align 1, !tbaa !2451
  %2980 = add i64 %2970, 25
  store i64 %2980, i64* %PC, align 8
  %2981 = load double, double* %2972, align 8
  store double %2981, double* %108, align 1, !tbaa !2451
  store double 0.000000e+00, double* %111, align 1, !tbaa !2451
  %2982 = load double, double* bitcast (%B6_type* @B6 to double*), align 8
  store double %2982, double* %123, align 1, !tbaa !2451
  store double 0.000000e+00, double* %225, align 1, !tbaa !2451
  %2983 = add i64 %2970, 39
  store i64 %2983, i64* %PC, align 8
  %2984 = load double, double* %2972, align 8
  %2985 = fmul double %2982, %2984
  %2986 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %2987 = fadd double %2985, %2986
  store double %2987, double* %123, align 1, !tbaa !2451
  store i64 0, i64* %224, align 1, !tbaa !2451
  %2988 = fmul double %2981, %2987
  %2989 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %2990 = fadd double %2988, %2989
  store double %2990, double* %108, align 1, !tbaa !2451
  store i64 0, i64* %110, align 1, !tbaa !2451
  %2991 = fmul double %2979, %2990
  %2992 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %2993 = fadd double %2991, %2992
  store double %2993, double* %103, align 1, !tbaa !2451
  store i64 0, i64* %105, align 1, !tbaa !2451
  %2994 = fmul double %2977, %2993
  %2995 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %2996 = fadd double %2994, %2995
  store double %2996, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %2997 = fmul double %2975, %2996
  %2998 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %2999 = fadd double %2997, %2998
  store double %2999, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %3000 = fmul double %2973, %2999
  %3001 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3002 = fadd double %3000, %3001
  store double %3002, double* bitcast (%sa_type* @sa to double*), align 8
  %3003 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %3004 = load double, double* %141, align 1
  %3005 = fdiv double %3003, %3004
  store double %3005, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  store double %3005, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 104) to double*), align 8
  %3006 = load i64, i64* %RBP, align 8
  %3007 = add i64 %3006, -48
  %3008 = add i64 %2970, 149
  store i64 %3008, i64* %PC, align 8
  %3009 = inttoptr i64 %3007 to double*
  %3010 = load double, double* %3009, align 8
  store double %3010, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %3011 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %3012 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3013 = fadd double %3011, %3012
  store double %3013, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %3014 = load double, double* bitcast (%two_type* @two to double*), align 8
  store double %3014, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %3015 = add i64 %3006, -16
  %3016 = add i64 %2970, 181
  store i64 %3016, i64* %PC, align 8
  %3017 = inttoptr i64 %3015 to double*
  %3018 = load double, double* %3017, align 8
  %3019 = fmul double %3014, %3018
  store double %3019, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %3020 = fadd double %3013, %3019
  store double %3020, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %3021 = fmul double %3010, %3020
  %3022 = fdiv double %3021, %3014
  store double %3022, double* bitcast (%sa_type* @sa to double*), align 8
  %3023 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %3024 = load double, double* bitcast (%three_type* @three to double*), align 8
  %3025 = fdiv double %3023, %3024
  store double %3025, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %3026 = add i64 %3006, -24
  %3027 = add i64 %2970, 230
  store i64 %3027, i64* %PC, align 8
  %3028 = inttoptr i64 %3026 to double*
  store double %3025, double* %3028, align 8
  %3029 = load i64, i64* %RBP, align 8
  %3030 = add i64 %3029, -24
  %3031 = load i64, i64* %PC, align 8
  %3032 = add i64 %3031, 5
  store i64 %3032, i64* %PC, align 8
  %3033 = inttoptr i64 %3030 to double*
  %3034 = load double, double* %3033, align 8
  store double %3034, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %3035 = add i64 %3031, 10
  store i64 %3035, i64* %PC, align 8
  %3036 = load double, double* %3033, align 8
  %3037 = fmul double %3034, %3036
  store double %3037, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %3038 = add i64 %3029, -40
  %3039 = add i64 %3031, 15
  store i64 %3039, i64* %PC, align 8
  %3040 = inttoptr i64 %3038 to double*
  store double %3037, double* %3040, align 8
  %3041 = load i64, i64* %RBP, align 8
  %3042 = add i64 %3041, -24
  %3043 = load i64, i64* %PC, align 8
  %3044 = add i64 %3043, 5
  store i64 %3044, i64* %PC, align 8
  %3045 = inttoptr i64 %3042 to double*
  %3046 = load double, double* %3045, align 8
  store double %3046, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %3047 = load double, double* bitcast (%A6_type* @A6 to double*), align 8
  store double %3047, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %3048 = add i64 %3041, -40
  %3049 = add i64 %3043, 19
  store i64 %3049, i64* %PC, align 8
  %3050 = inttoptr i64 %3048 to double*
  %3051 = load double, double* %3050, align 8
  %3052 = fmul double %3047, %3051
  %3053 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %3054 = fadd double %3052, %3053
  store double %3054, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %3055 = add i64 %3043, 33
  store i64 %3055, i64* %PC, align 8
  %3056 = load double, double* %3050, align 8
  %3057 = fmul double %3054, %3056
  %3058 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %3059 = fadd double %3057, %3058
  store double %3059, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %3060 = add i64 %3043, 47
  store i64 %3060, i64* %PC, align 8
  %3061 = load double, double* %3050, align 8
  %3062 = fmul double %3059, %3061
  %3063 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %3064 = fadd double %3062, %3063
  store double %3064, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %3065 = add i64 %3043, 61
  store i64 %3065, i64* %PC, align 8
  %3066 = load double, double* %3050, align 8
  %3067 = fmul double %3064, %3066
  %3068 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %3069 = fadd double %3067, %3068
  store double %3069, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %3070 = add i64 %3043, 75
  store i64 %3070, i64* %PC, align 8
  %3071 = load double, double* %3050, align 8
  %3072 = fmul double %3069, %3071
  %3073 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %3074 = fadd double %3072, %3073
  store double %3074, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %3075 = add i64 %3043, 89
  store i64 %3075, i64* %PC, align 8
  %3076 = load double, double* %3050, align 8
  %3077 = fmul double %3074, %3076
  %3078 = load double, double* bitcast (%A0_type* @A0 to double*), align 8
  %3079 = fadd double %3077, %3078
  %3080 = fmul double %3046, %3079
  store double %3080, double* bitcast (%sb_type* @sb to double*), align 8
  %3081 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %3082 = fsub double %3081, %3080
  store double %3082, double* bitcast (%sc_type* @sc to double*), align 8
  %3083 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3084 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 104) to double*), align 8
  %3085 = fdiv double %3083, %3084
  store double %3085, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 112) to double*), align 16
  %3086 = load <2 x i32>, <2 x i32>* %1522, align 1
  %3087 = load <2 x i32>, <2 x i32>* %1524, align 1
  %3088 = extractelement <2 x i32> %3086, i32 0
  store i32 %3088, i32* %1527, align 1, !tbaa !2455
  %3089 = extractelement <2 x i32> %3086, i32 1
  store i32 %3089, i32* %1530, align 1, !tbaa !2455
  %3090 = extractelement <2 x i32> %3087, i32 0
  store i32 %3090, i32* %1532, align 1, !tbaa !2455
  %3091 = extractelement <2 x i32> %3087, i32 1
  store i32 %3091, i32* %1535, align 1, !tbaa !2455
  %3092 = load double, double* %82, align 1
  %3093 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %3094 = fmul double %3092, %3093
  store double %3094, double* %82, align 1, !tbaa !2451
  store i32 %3088, i32* %1539, align 1, !tbaa !2455
  store i32 %3089, i32* %1541, align 1, !tbaa !2455
  store i32 %3090, i32* %1542, align 1, !tbaa !2455
  store i32 %3091, i32* %1544, align 1, !tbaa !2455
  %3095 = load double, double* %88, align 1
  %3096 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %3097 = fmul double %3095, %3096
  store double %3097, double* %88, align 1, !tbaa !2451
  %3098 = bitcast <2 x i32> %3086 to double
  %3099 = fmul double %3098, %3085
  %3100 = load i64, i64* %RBP, align 8
  %3101 = add i64 %3100, -208
  %3102 = add i64 %3043, 206
  store i64 %3102, i64* %PC, align 8
  %3103 = inttoptr i64 %3101 to double*
  store double %3099, double* %3103, align 8
  %3104 = load i64, i64* %PC, align 8
  %3105 = load <2 x i32>, <2 x i32>* %1555, align 1
  %3106 = load <2 x i32>, <2 x i32>* %1558, align 1
  %3107 = extractelement <2 x i32> %3105, i32 0
  store i32 %3107, i32* %202, align 1, !tbaa !2455
  %3108 = extractelement <2 x i32> %3105, i32 1
  store i32 %3108, i32* %204, align 1, !tbaa !2455
  %3109 = extractelement <2 x i32> %3106, i32 0
  store i32 %3109, i32* %205, align 1, !tbaa !2455
  %3110 = extractelement <2 x i32> %3106, i32 1
  store i32 %3110, i32* %207, align 1, !tbaa !2455
  %3111 = load <2 x i32>, <2 x i32>* %1564, align 1
  %3112 = load <2 x i32>, <2 x i32>* %1567, align 1
  %3113 = extractelement <2 x i32> %3111, i32 0
  store i32 %3113, i32* %1527, align 1, !tbaa !2455
  %3114 = extractelement <2 x i32> %3111, i32 1
  store i32 %3114, i32* %1530, align 1, !tbaa !2455
  %3115 = extractelement <2 x i32> %3112, i32 0
  store i32 %3115, i32* %1532, align 1, !tbaa !2455
  %3116 = extractelement <2 x i32> %3112, i32 1
  store i32 %3116, i32* %1535, align 1, !tbaa !2455
  %3117 = load i64, i64* %RBP, align 8
  %3118 = add i64 %3117, -208
  %3119 = add i64 %3104, 14
  store i64 %3119, i64* %PC, align 8
  %3120 = inttoptr i64 %3118 to i64*
  %3121 = load i64, i64* %3120, align 8
  %3122 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3121, i64* %3122, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %3123 = add i64 %3117, -212
  %3124 = load i32, i32* %EAX, align 4
  %3125 = add i64 %3104, 20
  store i64 %3125, i64* %PC, align 8
  %3126 = inttoptr i64 %3123 to i32*
  store i32 %3124, i32* %3126, align 4
  %3127 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %3128 = add i64 %3127, -4197
  %3129 = add i64 %3127, 7
  %3130 = load i64, i64* %16, align 8, !tbaa !2428
  %3131 = add i64 %3130, -8
  %3132 = inttoptr i64 %3131 to i64*
  store i64 %3129, i64* %3132, align 8
  store i64 %3131, i64* %16, align 8, !tbaa !2428
  store i64 %3128, i64* %58, align 8, !tbaa !2428
  %3133 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %2938)
  %3134 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i32 0, i32* %202, align 1, !tbaa !2454
  store i32 0, i32* %204, align 1, !tbaa !2454
  store i32 0, i32* %205, align 1, !tbaa !2454
  store i32 0, i32* %207, align 1, !tbaa !2454
  %3135 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  store double %3135, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %3136 = load double, double* bitcast (%three_type* @three to double*), align 8
  store double %3136, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %3137 = load i64, i64* %RBP, align 8
  %3138 = add i64 %3137, -80
  %3139 = add i64 %3134, 35
  store i64 %3139, i64* %PC, align 8
  %3140 = inttoptr i64 %3138 to i64*
  %3141 = load i64, i64* %3140, align 8
  store i64 %3141, i64* %RCX, align 8, !tbaa !2428
  %3142 = sitofp i64 %3141 to double
  store double %3142, double* %93, align 1, !tbaa !2451
  %3143 = fmul double %3136, %3142
  store double %3143, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %3144 = fdiv double %3135, %3143
  store double %3144, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %3145 = add i64 %3137, -48
  %3146 = add i64 %3134, 53
  store i64 %3146, i64* %PC, align 8
  %3147 = inttoptr i64 %3145 to double*
  store double %3144, double* %3147, align 8
  %3148 = load i64, i64* %RBP, align 8
  %3149 = add i64 %3148, -16
  %3150 = load i64, i64* %PC, align 8
  %3151 = add i64 %3150, 5
  store i64 %3151, i64* %PC, align 8
  %3152 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %3153 = load i64, i64* %3152, align 1
  %3154 = inttoptr i64 %3149 to i64*
  store i64 %3153, i64* %3154, align 8
  %3155 = load i64, i64* %RBP, align 8
  %3156 = add i64 %3155, -32
  %3157 = load i64, i64* %PC, align 8
  %3158 = add i64 %3157, 5
  store i64 %3158, i64* %PC, align 8
  %3159 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %3160 = load i64, i64* %3159, align 1
  %3161 = inttoptr i64 %3156 to i64*
  store i64 %3160, i64* %3161, align 8
  %3162 = load i64, i64* %RBP, align 8
  %3163 = add i64 %3162, -216
  %3164 = load i32, i32* %EAX, align 4
  %3165 = load i64, i64* %PC, align 8
  %3166 = add i64 %3165, 6
  store i64 %3166, i64* %PC, align 8
  %3167 = inttoptr i64 %3163 to i32*
  store i32 %3164, i32* %3167, align 4
  %3168 = load i64, i64* %PC, align 8
  %3169 = add i64 %3168, 4367
  %3170 = add i64 %3168, 5
  %3171 = load i64, i64* %16, align 8, !tbaa !2428
  %3172 = add i64 %3171, -8
  %3173 = inttoptr i64 %3172 to i64*
  store i64 %3170, i64* %3173, align 8
  store i64 %3172, i64* %16, align 8, !tbaa !2428
  store i64 %3169, i64* %58, align 8, !tbaa !2428
  %3174 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %3169, %struct.Memory* %3133)
  %3175 = load i64, i64* %RBP, align 8
  %3176 = add i64 %3175, -72
  %3177 = load i64, i64* %PC, align 8
  %3178 = add i64 %3177, 8
  store i64 %3178, i64* %PC, align 8
  %3179 = inttoptr i64 %3176 to i64*
  store i64 1, i64* %3179, align 8
  %3180 = load i64, i64* %RBP, align 8
  %3181 = add i64 %3180, -220
  %3182 = load i32, i32* %EAX, align 4
  %3183 = load i64, i64* %PC, align 8
  %3184 = add i64 %3183, 6
  store i64 %3184, i64* %PC, align 8
  %3185 = inttoptr i64 %3181 to i32*
  store i32 %3182, i32* %3185, align 4
  %.pre16 = load i64, i64* %PC, align 8
  br label %block_4014f4

block_400689:                                     ; preds = %block_400802, %block_400540
  %3186 = phi i64 [ %.pre, %block_400540 ], [ %3923, %block_400802 ]
  %MEMORY.9 = phi %struct.Memory* [ %198, %block_400540 ], [ %2749, %block_400802 ]
  %3187 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  store double %3187, double* %76, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %3188 = load double, double* bitcast (%TLimit_type* @TLimit to double*), align 8
  store double %3188, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %3189 = add i64 %3186, 22
  store i64 %3189, i64* %PC, align 8
  %3190 = fcmp uno double %3188, %3187
  br i1 %3190, label %3191, label %3201

; <label>:3191:                                   ; preds = %block_400689
  %3192 = fadd double %3188, %3187
  %3193 = bitcast double %3192 to i64
  %3194 = and i64 %3193, 9221120237041090560
  %3195 = icmp eq i64 %3194, 9218868437227405312
  %3196 = and i64 %3193, 2251799813685247
  %3197 = icmp ne i64 %3196, 0
  %3198 = and i1 %3195, %3197
  br i1 %3198, label %3199, label %3207

; <label>:3199:                                   ; preds = %3191
  %3200 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3189, %struct.Memory* %MEMORY.9) #9
  %.pre5 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:3201:                                   ; preds = %block_400689
  %3202 = fcmp ogt double %3188, %3187
  br i1 %3202, label %3207, label %3203

; <label>:3203:                                   ; preds = %3201
  %3204 = fcmp olt double %3188, %3187
  br i1 %3204, label %3207, label %3205

; <label>:3205:                                   ; preds = %3203
  %3206 = fcmp oeq double %3188, %3187
  br i1 %3206, label %3207, label %3211

; <label>:3207:                                   ; preds = %3205, %3203, %3201, %3191
  %3208 = phi i8 [ 0, %3201 ], [ 0, %3203 ], [ 1, %3205 ], [ 1, %3191 ]
  %3209 = phi i8 [ 0, %3201 ], [ 0, %3203 ], [ 0, %3205 ], [ 1, %3191 ]
  %3210 = phi i8 [ 0, %3201 ], [ 1, %3203 ], [ 0, %3205 ], [ 1, %3191 ]
  store i8 %3208, i8* %39, align 1, !tbaa !2453
  store i8 %3209, i8* %31, align 1, !tbaa !2453
  store i8 %3210, i8* %24, align 1, !tbaa !2453
  br label %3211

; <label>:3211:                                   ; preds = %3207, %3205
  store i8 0, i8* %48, align 1, !tbaa !2453
  store i8 0, i8* %42, align 1, !tbaa !2453
  store i8 0, i8* %36, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %3211, %3199
  %3212 = phi i64 [ %.pre5, %3199 ], [ %3189, %3211 ]
  %3213 = phi %struct.Memory* [ %3200, %3199 ], [ %MEMORY.9, %3211 ]
  %3214 = load i8, i8* %24, align 1, !tbaa !2432
  %3215 = load i8, i8* %39, align 1, !tbaa !2447
  %3216 = or i8 %3215, %3214
  %3217 = icmp ne i8 %3216, 0
  %.v = select i1 %3217, i64 360, i64 6
  %3218 = add i64 %3212, %.v
  store i64 %3218, i64* %58, align 8, !tbaa !2428
  br i1 %3217, label %block_400807, label %block_4006a5

block_400ae2:                                     ; preds = %block_400ad4
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
  %3219 = add i64 %686, -16
  %3220 = add i64 %722, 15
  store i64 %3220, i64* %PC, align 8
  %3221 = inttoptr i64 %3219 to i64*
  %3222 = load i64, i64* %3221, align 8
  %3223 = xor i64 %3222, -9223372036854775808
  store i64 %3223, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %24, align 1, !tbaa !2432
  %3224 = trunc i64 %3222 to i32
  %3225 = and i32 %3224, 255
  %3226 = tail call i32 @llvm.ctpop.i32(i32 %3225) #8
  %3227 = trunc i32 %3226 to i8
  %3228 = and i8 %3227, 1
  %3229 = xor i8 %3228, 1
  store i8 %3229, i8* %31, align 1, !tbaa !2446
  %3230 = icmp eq i64 %3223, 0
  %3231 = zext i1 %3230 to i8
  store i8 %3231, i8* %39, align 1, !tbaa !2447
  %3232 = lshr i64 %3223, 63
  %3233 = trunc i64 %3232 to i8
  store i8 %3233, i8* %42, align 1, !tbaa !2448
  store i8 0, i8* %48, align 1, !tbaa !2449
  store i8 0, i8* %36, align 1, !tbaa !2450
  %3234 = add i64 %722, 33
  store i64 %3234, i64* %PC, align 8
  %3235 = inttoptr i64 %3219 to i64*
  store i64 %3223, i64* %3235, align 8
  %3236 = load i64, i64* %PC, align 8
  %3237 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  store double %3237, double* %76, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %3238 = load i64, i64* %RBP, align 8
  %3239 = add i64 %3238, -16
  %3240 = add i64 %3236, 14
  store i64 %3240, i64* %PC, align 8
  %3241 = inttoptr i64 %3239 to double*
  %3242 = load double, double* %3241, align 8
  %3243 = fadd double %3237, %3242
  store double %3243, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  store double %3243, double* bitcast (%sa_type* @sa to double*), align 8
  %3244 = add i64 %3238, -72
  %3245 = add i64 %3236, 27
  store i64 %3245, i64* %PC, align 8
  %3246 = inttoptr i64 %3244 to i64*
  %3247 = load i64, i64* %3246, align 8
  %3248 = add i64 %3247, 1
  store i64 %3248, i64* %RAX, align 8, !tbaa !2428
  %3249 = icmp eq i64 %3247, -1
  %3250 = icmp eq i64 %3248, 0
  %3251 = or i1 %3249, %3250
  %3252 = zext i1 %3251 to i8
  store i8 %3252, i8* %24, align 1, !tbaa !2432
  %3253 = trunc i64 %3248 to i32
  %3254 = and i32 %3253, 255
  %3255 = tail call i32 @llvm.ctpop.i32(i32 %3254) #8
  %3256 = trunc i32 %3255 to i8
  %3257 = and i8 %3256, 1
  %3258 = xor i8 %3257, 1
  store i8 %3258, i8* %31, align 1, !tbaa !2446
  %3259 = xor i64 %3247, %3248
  %3260 = lshr i64 %3259, 4
  %3261 = trunc i64 %3260 to i8
  %3262 = and i8 %3261, 1
  store i8 %3262, i8* %36, align 1, !tbaa !2450
  %3263 = icmp eq i64 %3248, 0
  %3264 = zext i1 %3263 to i8
  store i8 %3264, i8* %39, align 1, !tbaa !2447
  %3265 = lshr i64 %3248, 63
  %3266 = trunc i64 %3265 to i8
  store i8 %3266, i8* %42, align 1, !tbaa !2448
  %3267 = lshr i64 %3247, 63
  %3268 = xor i64 %3265, %3267
  %3269 = add nuw nsw i64 %3268, %3265
  %3270 = icmp eq i64 %3269, 2
  %3271 = zext i1 %3270 to i8
  store i8 %3271, i8* %48, align 1, !tbaa !2449
  %3272 = add i64 %3236, 35
  store i64 %3272, i64* %PC, align 8
  store i64 %3248, i64* %3246, align 8
  %3273 = load i64, i64* %PC, align 8
  %3274 = add i64 %3273, -82
  store i64 %3274, i64* %58, align 8, !tbaa !2428
  br label %block_400ad4

block_400807:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit, %block_4007fd
  %3275 = phi i64 [ %2231, %block_4007fd ], [ %3218, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ]
  %MEMORY.10 = phi %struct.Memory* [ %2749, %block_4007fd ], [ %3213, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ]
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %3276 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 64) to i64*), align 16
  store i64 %3276, i64* bitcast (%scale_type* @scale to i64*), align 8
  %3277 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3276, i64* %3277, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  store i64 %3276, i64* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to i64*), align 8
  %3278 = add i64 %3275, 7657
  %3279 = add i64 %3275, 50
  %3280 = load i64, i64* %16, align 8, !tbaa !2428
  %3281 = add i64 %3280, -8
  %3282 = inttoptr i64 %3281 to i64*
  store i64 %3279, i64* %3282, align 8
  store i64 %3281, i64* %16, align 8, !tbaa !2428
  store i64 %3278, i64* %58, align 8, !tbaa !2428
  %3283 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %3278, %struct.Memory* %MEMORY.10)
  %3284 = load i64, i64* %RBP, align 8
  %3285 = add i64 %3284, -72
  %3286 = load i64, i64* %PC, align 8
  %3287 = add i64 %3286, 8
  store i64 %3287, i64* %PC, align 8
  %3288 = inttoptr i64 %3285 to i64*
  store i64 1, i64* %3288, align 8
  %3289 = load i64, i64* %RBP, align 8
  %3290 = add i64 %3289, -124
  %3291 = load i32, i32* %EAX, align 4
  %3292 = load i64, i64* %PC, align 8
  %3293 = add i64 %3292, 3
  store i64 %3293, i64* %PC, align 8
  %3294 = inttoptr i64 %3290 to i32*
  store i32 %3291, i32* %3294, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_400844

block_400c7a:                                     ; preds = %block_400bc8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %3295 = add i64 %1828, 6518
  %3296 = add i64 %1828, 15
  %3297 = load i64, i64* %16, align 8, !tbaa !2428
  %3298 = add i64 %3297, -8
  %3299 = inttoptr i64 %3298 to i64*
  store i64 %3296, i64* %3299, align 8
  store i64 %3298, i64* %16, align 8, !tbaa !2428
  store i64 %3295, i64* %58, align 8, !tbaa !2428
  %3300 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %3295, %struct.Memory* %3541)
  %3301 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 426), i64* %RDI, align 8, !tbaa !2428
  %3302 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to i64*), align 8
  %3303 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3302, i64* %3303, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %3304 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 96) to i64*), align 16
  %3305 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3304, i64* %3305, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %3306 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 104) to double*), align 8
  %3307 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %3308 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %3309 = fmul double %3307, %3308
  store double %3309, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 48) to double*), align 16
  %3310 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to double*), align 8
  %3311 = fsub double %3309, %3310
  %3312 = fdiv double %3311, %3306
  store double %3312, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  store double %3312, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 56) to double*), align 8
  %3313 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  store double %3313, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %3314 = load i64, i64* %RBP, align 8
  %3315 = add i64 %3314, -48
  %3316 = add i64 %3301, 106
  store i64 %3316, i64* %PC, align 8
  %3317 = inttoptr i64 %3315 to double*
  %3318 = load double, double* %3317, align 8
  %3319 = fmul double %3313, %3318
  %3320 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %3321 = fdiv double %3319, %3320
  %3322 = tail call double @llvm.trunc.f64(double %3321) #8
  %3323 = tail call double @llvm.fabs.f64(double %3322) #8
  %3324 = fcmp ogt double %3323, 0x43E0000000000000
  %3325 = fptosi double %3322 to i64
  %3326 = select i1 %3324, i64 -9223372036854775808, i64 %3325
  store i64 %3326, i64* %RCX, align 8, !tbaa !2428
  %3327 = add i64 %3314, -80
  %3328 = add i64 %3301, 124
  store i64 %3328, i64* %PC, align 8
  %3329 = inttoptr i64 %3327 to i64*
  store i64 %3326, i64* %3329, align 8
  %3330 = load i64, i64* %PC, align 8
  %3331 = load double, double* bitcast (%four_type* @four to double*), align 8
  store double %3331, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %3332 = load i64, i64* %RBP, align 8
  %3333 = add i64 %3332, -40
  %3334 = add i64 %3330, 14
  store i64 %3334, i64* %PC, align 8
  %3335 = inttoptr i64 %3333 to double*
  %3336 = load double, double* %3335, align 8
  %3337 = fmul double %3331, %3336
  %3338 = load double, double* bitcast (%five_type* @five to double*), align 8
  %3339 = fdiv double %3337, %3338
  store double %3339, double* bitcast (%sa_type* @sa to double*), align 8
  store double %3339, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  store double %3338, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %3340 = add i64 %3332, -32
  %3341 = add i64 %3330, 55
  store i64 %3341, i64* %PC, align 8
  %3342 = inttoptr i64 %3340 to double*
  %3343 = load double, double* %3342, align 8
  %3344 = fdiv double %3338, %3343
  store double %3344, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %3345 = fadd double %3339, %3344
  store double %3345, double* bitcast (%sb_type* @sb to double*), align 8
  %3346 = load double, double* %141, align 1
  store double %3346, double* bitcast (%sc_type* @sc to double*), align 8
  store double %3345, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  store double %3346, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %3347 = add i64 %3330, 100
  store i64 %3347, i64* %PC, align 8
  %3348 = load double, double* %3342, align 8
  store double %3348, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %3349 = add i64 %3330, 105
  store i64 %3349, i64* %PC, align 8
  %3350 = load double, double* %3342, align 8
  %3351 = fmul double %3348, %3350
  store double %3351, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %3352 = add i64 %3330, 110
  store i64 %3352, i64* %PC, align 8
  %3353 = load double, double* %3342, align 8
  %3354 = fmul double %3351, %3353
  store double %3354, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %3355 = fdiv double %3346, %3354
  %3356 = fsub double %3345, %3355
  store double %3356, double* bitcast (%piprg_type* @piprg to double*), align 8
  %3357 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %3358 = fsub double %3356, %3357
  store double %3358, double* bitcast (%pierr_type* @pierr to double*), align 8
  %3359 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3360 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 56) to double*), align 8
  %3361 = fdiv double %3359, %3360
  store double %3361, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 64) to double*), align 16
  %3362 = load <2 x i32>, <2 x i32>* %1522, align 1
  %3363 = load <2 x i32>, <2 x i32>* %1524, align 1
  %3364 = extractelement <2 x i32> %3362, i32 0
  store i32 %3364, i32* %1527, align 1, !tbaa !2455
  %3365 = extractelement <2 x i32> %3362, i32 1
  store i32 %3365, i32* %1530, align 1, !tbaa !2455
  %3366 = extractelement <2 x i32> %3363, i32 0
  store i32 %3366, i32* %1532, align 1, !tbaa !2455
  %3367 = extractelement <2 x i32> %3363, i32 1
  store i32 %3367, i32* %1535, align 1, !tbaa !2455
  %3368 = load double, double* %82, align 1
  %3369 = load double, double* bitcast (%pierr_type* @pierr to double*), align 8
  %3370 = fmul double %3368, %3369
  store double %3370, double* %82, align 1, !tbaa !2451
  %3371 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 48) to double*), align 16
  %3372 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to double*), align 8
  %3373 = fsub double %3371, %3372
  %3374 = bitcast <2 x i32> %3362 to double
  %3375 = fmul double %3373, %3374
  store double %3375, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %3376 = fmul double %3374, %3361
  %3377 = load i64, i64* %RBP, align 8
  %3378 = add i64 %3377, -160
  %3379 = add i64 %3330, 232
  store i64 %3379, i64* %PC, align 8
  %3380 = inttoptr i64 %3378 to double*
  store double %3376, double* %3380, align 8
  %3381 = load i64, i64* %PC, align 8
  %3382 = load <2 x i32>, <2 x i32>* %1555, align 1
  %3383 = load <2 x i32>, <2 x i32>* %1558, align 1
  %3384 = extractelement <2 x i32> %3382, i32 0
  store i32 %3384, i32* %202, align 1, !tbaa !2455
  %3385 = extractelement <2 x i32> %3382, i32 1
  store i32 %3385, i32* %204, align 1, !tbaa !2455
  %3386 = extractelement <2 x i32> %3383, i32 0
  store i32 %3386, i32* %205, align 1, !tbaa !2455
  %3387 = extractelement <2 x i32> %3383, i32 1
  store i32 %3387, i32* %207, align 1, !tbaa !2455
  %3388 = load <2 x i32>, <2 x i32>* %1564, align 1
  %3389 = load <2 x i32>, <2 x i32>* %1567, align 1
  %3390 = extractelement <2 x i32> %3388, i32 0
  store i32 %3390, i32* %1527, align 1, !tbaa !2455
  %3391 = extractelement <2 x i32> %3388, i32 1
  store i32 %3391, i32* %1530, align 1, !tbaa !2455
  %3392 = extractelement <2 x i32> %3389, i32 0
  store i32 %3392, i32* %1532, align 1, !tbaa !2455
  %3393 = extractelement <2 x i32> %3389, i32 1
  store i32 %3393, i32* %1535, align 1, !tbaa !2455
  %3394 = load i64, i64* %RBP, align 8
  %3395 = add i64 %3394, -160
  %3396 = add i64 %3381, 14
  store i64 %3396, i64* %PC, align 8
  %3397 = inttoptr i64 %3395 to i64*
  %3398 = load i64, i64* %3397, align 8
  %3399 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3398, i64* %3399, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %3400 = add i64 %3394, -164
  %3401 = load i32, i32* %EAX, align 4
  %3402 = add i64 %3381, 20
  store i64 %3402, i64* %PC, align 8
  %3403 = inttoptr i64 %3400 to i32*
  store i32 %3401, i32* %3403, align 4
  %3404 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %3405 = add i64 %3404, -2513
  %3406 = add i64 %3404, 7
  %3407 = load i64, i64* %16, align 8, !tbaa !2428
  %3408 = add i64 %3407, -8
  %3409 = inttoptr i64 %3408 to i64*
  store i64 %3406, i64* %3409, align 8
  store i64 %3408, i64* %16, align 8, !tbaa !2428
  store i64 %3405, i64* %58, align 8, !tbaa !2428
  %3410 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %3300)
  %3411 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i32 0, i32* %202, align 1, !tbaa !2454
  store i32 0, i32* %204, align 1, !tbaa !2454
  store i32 0, i32* %205, align 1, !tbaa !2454
  store i32 0, i32* %207, align 1, !tbaa !2454
  %3412 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  store double %3412, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %3413 = load double, double* bitcast (%three_type* @three to double*), align 8
  store double %3413, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %3414 = load i64, i64* %RBP, align 8
  %3415 = add i64 %3414, -80
  %3416 = add i64 %3411, 35
  store i64 %3416, i64* %PC, align 8
  %3417 = inttoptr i64 %3415 to i64*
  %3418 = load i64, i64* %3417, align 8
  store i64 %3418, i64* %RCX, align 8, !tbaa !2428
  %3419 = sitofp i64 %3418 to double
  store double %3419, double* %93, align 1, !tbaa !2451
  %3420 = fmul double %3413, %3419
  store double %3420, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %3421 = fdiv double %3412, %3420
  store double %3421, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %3422 = add i64 %3414, -48
  %3423 = add i64 %3411, 53
  store i64 %3423, i64* %PC, align 8
  %3424 = inttoptr i64 %3422 to double*
  store double %3421, double* %3424, align 8
  %3425 = load i64, i64* %RBP, align 8
  %3426 = add i64 %3425, -16
  %3427 = load i64, i64* %PC, align 8
  %3428 = add i64 %3427, 5
  store i64 %3428, i64* %PC, align 8
  %3429 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %3430 = load i64, i64* %3429, align 1
  %3431 = inttoptr i64 %3426 to i64*
  store i64 %3430, i64* %3431, align 8
  %3432 = load i64, i64* %RBP, align 8
  %3433 = add i64 %3432, -32
  %3434 = load i64, i64* %PC, align 8
  %3435 = add i64 %3434, 5
  store i64 %3435, i64* %PC, align 8
  %3436 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %3437 = load i64, i64* %3436, align 1
  %3438 = inttoptr i64 %3433 to i64*
  store i64 %3437, i64* %3438, align 8
  %3439 = load i64, i64* %RBP, align 8
  %3440 = add i64 %3439, -168
  %3441 = load i32, i32* %EAX, align 4
  %3442 = load i64, i64* %PC, align 8
  %3443 = add i64 %3442, 6
  store i64 %3443, i64* %PC, align 8
  %3444 = inttoptr i64 %3440 to i32*
  store i32 %3441, i32* %3444, align 4
  %3445 = load i64, i64* %PC, align 8
  %3446 = add i64 %3445, 6051
  %3447 = add i64 %3445, 5
  %3448 = load i64, i64* %16, align 8, !tbaa !2428
  %3449 = add i64 %3448, -8
  %3450 = inttoptr i64 %3449 to i64*
  store i64 %3447, i64* %3450, align 8
  store i64 %3449, i64* %16, align 8, !tbaa !2428
  store i64 %3446, i64* %58, align 8, !tbaa !2428
  %3451 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %3446, %struct.Memory* %3410)
  %3452 = load i64, i64* %RBP, align 8
  %3453 = add i64 %3452, -72
  %3454 = load i64, i64* %PC, align 8
  %3455 = add i64 %3454, 8
  store i64 %3455, i64* %PC, align 8
  %3456 = inttoptr i64 %3453 to i64*
  store i64 1, i64* %3456, align 8
  %3457 = load i64, i64* %RBP, align 8
  %3458 = add i64 %3457, -172
  %3459 = load i32, i32* %EAX, align 4
  %3460 = load i64, i64* %PC, align 8
  %3461 = add i64 %3460, 6
  store i64 %3461, i64* %PC, align 8
  %3462 = inttoptr i64 %3458 to i32*
  store i32 %3459, i32* %3462, align 4
  %.pre14 = load i64, i64* %PC, align 8
  br label %block_400e60

block_401184:                                     ; preds = %block_400f2b, %block_401199
  %3463 = phi i64 [ %.pre15, %block_400f2b ], [ %2405, %block_401199 ]
  %3464 = load i64, i64* %RBP, align 8
  %3465 = add i64 %3464, -72
  %3466 = add i64 %3463, 4
  store i64 %3466, i64* %PC, align 8
  %3467 = inttoptr i64 %3465 to i64*
  %3468 = load i64, i64* %3467, align 8
  store i64 %3468, i64* %RAX, align 8, !tbaa !2428
  %3469 = add i64 %3464, -80
  %3470 = add i64 %3463, 8
  store i64 %3470, i64* %PC, align 8
  %3471 = inttoptr i64 %3469 to i64*
  %3472 = load i64, i64* %3471, align 8
  %3473 = add i64 %3472, -1
  store i64 %3473, i64* %RCX, align 8, !tbaa !2428
  %3474 = lshr i64 %3473, 63
  %3475 = sub i64 %3468, %3473
  %3476 = icmp ult i64 %3468, %3473
  %3477 = zext i1 %3476 to i8
  store i8 %3477, i8* %24, align 1, !tbaa !2432
  %3478 = trunc i64 %3475 to i32
  %3479 = and i32 %3478, 255
  %3480 = tail call i32 @llvm.ctpop.i32(i32 %3479) #8
  %3481 = trunc i32 %3480 to i8
  %3482 = and i8 %3481, 1
  %3483 = xor i8 %3482, 1
  store i8 %3483, i8* %31, align 1, !tbaa !2446
  %3484 = xor i64 %3473, %3468
  %3485 = xor i64 %3484, %3475
  %3486 = lshr i64 %3485, 4
  %3487 = trunc i64 %3486 to i8
  %3488 = and i8 %3487, 1
  store i8 %3488, i8* %36, align 1, !tbaa !2450
  %3489 = icmp eq i64 %3475, 0
  %3490 = zext i1 %3489 to i8
  store i8 %3490, i8* %39, align 1, !tbaa !2447
  %3491 = lshr i64 %3475, 63
  %3492 = trunc i64 %3491 to i8
  store i8 %3492, i8* %42, align 1, !tbaa !2448
  %3493 = lshr i64 %3468, 63
  %3494 = xor i64 %3474, %3493
  %3495 = xor i64 %3491, %3493
  %3496 = add nuw nsw i64 %3495, %3494
  %3497 = icmp eq i64 %3496, 2
  %3498 = zext i1 %3497 to i8
  store i8 %3498, i8* %48, align 1, !tbaa !2449
  %3499 = icmp ne i8 %3492, 0
  %3500 = xor i1 %3499, %3497
  %.demorgan32 = or i1 %3489, %3500
  %.v33 = select i1 %.demorgan32, i64 21, i64 199
  %3501 = add i64 %3463, %.v33
  store i64 %3501, i64* %58, align 8, !tbaa !2428
  br i1 %.demorgan32, label %block_401199, label %block_40124b

block_400b79:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit, %block_400b6d
  %3502 = phi i64 [ %265, %block_400b6d ], [ %2230, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit ]
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i32 0, i32* %202, align 1, !tbaa !2454
  store i32 0, i32* %204, align 1, !tbaa !2454
  store i32 0, i32* %205, align 1, !tbaa !2454
  store i32 0, i32* %207, align 1, !tbaa !2454
  %3503 = load i64, i64* %RBP, align 8
  %3504 = add i64 %3503, -80
  %3505 = add i64 %3502, 17
  store i64 %3505, i64* %PC, align 8
  %3506 = inttoptr i64 %3504 to i64*
  %3507 = load i64, i64* %3506, align 8
  store i64 %3507, i64* %RAX, align 8, !tbaa !2428
  %3508 = sitofp i64 %3507 to double
  store double %3508, double* bitcast (%sc_type* @sc to double*), align 8
  %3509 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  %3510 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3509, i64* %3510, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %3511 = add i64 %3503, -24
  %3512 = add i64 %3502, 45
  store i64 %3512, i64* %PC, align 8
  %3513 = inttoptr i64 %3511 to i64*
  store i64 %3509, i64* %3513, align 8
  %3514 = load i64, i64* %RBP, align 8
  %3515 = add i64 %3514, -32
  %3516 = load i64, i64* %PC, align 8
  %3517 = add i64 %3516, 5
  store i64 %3517, i64* %PC, align 8
  %3518 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %3519 = load i64, i64* %3518, align 1
  %3520 = inttoptr i64 %3515 to i64*
  store i64 %3519, i64* %3520, align 8
  %3521 = load i64, i64* %RBP, align 8
  %3522 = add i64 %3521, -40
  %3523 = load i64, i64* %PC, align 8
  %3524 = add i64 %3523, 5
  store i64 %3524, i64* %PC, align 8
  %3525 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %3526 = load i64, i64* %3525, align 1
  %3527 = inttoptr i64 %3522 to i64*
  store i64 %3526, i64* %3527, align 8
  %3528 = load i64, i64* %RBP, align 8
  %3529 = add i64 %3528, -48
  %3530 = load i64, i64* %PC, align 8
  %3531 = add i64 %3530, 5
  store i64 %3531, i64* %PC, align 8
  %3532 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %3533 = load i64, i64* %3532, align 1
  %3534 = inttoptr i64 %3529 to i64*
  store i64 %3533, i64* %3534, align 8
  %3535 = load i64, i64* %PC, align 8
  %3536 = add i64 %3535, 6715
  %3537 = add i64 %3535, 5
  %3538 = load i64, i64* %16, align 8, !tbaa !2428
  %3539 = add i64 %3538, -8
  %3540 = inttoptr i64 %3539 to i64*
  store i64 %3537, i64* %3540, align 8
  store i64 %3539, i64* %16, align 8, !tbaa !2428
  store i64 %3536, i64* %58, align 8, !tbaa !2428
  %3541 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %3536, %struct.Memory* %2219)
  %3542 = load i64, i64* %RBP, align 8
  %3543 = add i64 %3542, -72
  %3544 = load i64, i64* %PC, align 8
  %3545 = add i64 %3544, 8
  store i64 %3545, i64* %PC, align 8
  %3546 = inttoptr i64 %3543 to i64*
  store i64 1, i64* %3546, align 8
  %3547 = load i64, i64* %RBP, align 8
  %3548 = add i64 %3547, -152
  %3549 = load i32, i32* %EAX, align 4
  %3550 = load i64, i64* %PC, align 8
  %3551 = add i64 %3550, 6
  store i64 %3551, i64* %PC, align 8
  %3552 = inttoptr i64 %3548 to i32*
  store i32 %3549, i32* %3552, align 4
  %.pre13 = load i64, i64* %PC, align 8
  br label %block_400bc8

block_401fa1:                                     ; preds = %block_401f8c
  %3553 = add i64 %2833, 4
  store i64 %3553, i64* %PC, align 8
  %3554 = load i64, i64* %2799, align 8
  store i64 %3554, i64* %RAX, align 8, !tbaa !2428
  %3555 = sitofp i64 %3554 to double
  store double %3555, double* %76, align 1, !tbaa !2451
  %3556 = add i64 %2796, -48
  %3557 = add i64 %2833, 14
  store i64 %3557, i64* %PC, align 8
  %3558 = inttoptr i64 %3556 to double*
  %3559 = load double, double* %3558, align 8
  %3560 = fmul double %3555, %3559
  store double %3560, double* %76, align 1, !tbaa !2451
  %3561 = add i64 %2796, -24
  %3562 = add i64 %2833, 19
  store i64 %3562, i64* %PC, align 8
  %3563 = inttoptr i64 %3561 to double*
  store double %3560, double* %3563, align 8
  %3564 = load i64, i64* %RBP, align 8
  %3565 = add i64 %3564, -24
  %3566 = load i64, i64* %PC, align 8
  %3567 = add i64 %3566, 5
  store i64 %3567, i64* %PC, align 8
  %3568 = inttoptr i64 %3565 to double*
  %3569 = load double, double* %3568, align 8
  store double %3569, double* %76, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %3570 = add i64 %3566, 10
  store i64 %3570, i64* %PC, align 8
  %3571 = load double, double* %3568, align 8
  %3572 = fmul double %3569, %3571
  store double %3572, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %3573 = add i64 %3564, -40
  %3574 = add i64 %3566, 15
  store i64 %3574, i64* %PC, align 8
  %3575 = inttoptr i64 %3573 to double*
  store double %3572, double* %3575, align 8
  %3576 = load i64, i64* %RBP, align 8
  %3577 = add i64 %3576, -40
  %3578 = load i64, i64* %PC, align 8
  %3579 = add i64 %3578, 5
  store i64 %3579, i64* %PC, align 8
  %3580 = inttoptr i64 %3577 to double*
  %3581 = load double, double* %3580, align 8
  store double %3581, double* %76, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %3582 = add i64 %3578, 10
  store i64 %3582, i64* %PC, align 8
  %3583 = load double, double* %3580, align 8
  store double %3583, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %3584 = add i64 %3578, 15
  store i64 %3584, i64* %PC, align 8
  %3585 = load double, double* %3580, align 8
  store double %3585, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %3586 = add i64 %3578, 20
  store i64 %3586, i64* %PC, align 8
  %3587 = load double, double* %3580, align 8
  store double %3587, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %3588 = add i64 %3578, 25
  store i64 %3588, i64* %PC, align 8
  %3589 = load double, double* %3580, align 8
  store double %3589, double* %98, align 1, !tbaa !2451
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %3590 = load double, double* bitcast (%B6_type* @B6 to double*), align 8
  store double %3590, double* %103, align 1, !tbaa !2451
  store double 0.000000e+00, double* %106, align 1, !tbaa !2451
  %3591 = add i64 %3578, 39
  store i64 %3591, i64* %PC, align 8
  %3592 = load double, double* %3580, align 8
  %3593 = fmul double %3590, %3592
  %3594 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %3595 = fadd double %3593, %3594
  store double %3595, double* %103, align 1, !tbaa !2451
  store i64 0, i64* %105, align 1, !tbaa !2451
  %3596 = fmul double %3589, %3595
  %3597 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %3598 = fadd double %3596, %3597
  store double %3598, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %3599 = fmul double %3587, %3598
  %3600 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %3601 = fadd double %3599, %3600
  store double %3601, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %3602 = fmul double %3585, %3601
  %3603 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %3604 = fadd double %3602, %3603
  store double %3604, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %3605 = fmul double %3583, %3604
  %3606 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %3607 = fadd double %3605, %3606
  store double %3607, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %3608 = fmul double %3581, %3607
  %3609 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3610 = fadd double %3608, %3609
  store double %3610, double* %76, align 1, !tbaa !2451
  store i64 0, i64* %78, align 1, !tbaa !2451
  %3611 = load i64, i64* %RBP, align 8
  %3612 = add i64 %3611, -32
  %3613 = add i64 %3578, 118
  store i64 %3613, i64* %PC, align 8
  %3614 = inttoptr i64 %3612 to double*
  store double %3610, double* %3614, align 8
  %3615 = load i64, i64* %RBP, align 8
  %3616 = add i64 %3615, -16
  %3617 = load i64, i64* %PC, align 8
  %3618 = add i64 %3617, 5
  store i64 %3618, i64* %PC, align 8
  %3619 = inttoptr i64 %3616 to i64*
  %3620 = load i64, i64* %3619, align 8
  %3621 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3620, i64* %3621, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %3622 = add i64 %3615, -32
  %3623 = add i64 %3617, 10
  store i64 %3623, i64* %PC, align 8
  %3624 = inttoptr i64 %3622 to double*
  %3625 = load double, double* %3624, align 8
  store double %3625, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %3626 = add i64 %3617, 15
  store i64 %3626, i64* %PC, align 8
  %3627 = load double, double* %3624, align 8
  %3628 = fmul double %3625, %3627
  store double %3628, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %3629 = add i64 %3615, -24
  %3630 = add i64 %3617, 20
  store i64 %3630, i64* %PC, align 8
  %3631 = inttoptr i64 %3629 to double*
  %3632 = load double, double* %3631, align 8
  %3633 = fmul double %3628, %3632
  store double %3633, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %3634 = load double, double* bitcast (%A6_type* @A6 to double*), align 8
  store double %3634, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %3635 = add i64 %3615, -40
  %3636 = add i64 %3617, 34
  store i64 %3636, i64* %PC, align 8
  %3637 = inttoptr i64 %3635 to double*
  %3638 = load double, double* %3637, align 8
  %3639 = fmul double %3634, %3638
  %3640 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %3641 = fadd double %3639, %3640
  store double %3641, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %3642 = add i64 %3617, 48
  store i64 %3642, i64* %PC, align 8
  %3643 = load double, double* %3637, align 8
  %3644 = fmul double %3641, %3643
  %3645 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %3646 = fadd double %3644, %3645
  store double %3646, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %3647 = add i64 %3617, 62
  store i64 %3647, i64* %PC, align 8
  %3648 = load double, double* %3637, align 8
  %3649 = fmul double %3646, %3648
  %3650 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %3651 = fadd double %3649, %3650
  store double %3651, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %3652 = add i64 %3617, 76
  store i64 %3652, i64* %PC, align 8
  %3653 = load double, double* %3637, align 8
  %3654 = fmul double %3651, %3653
  %3655 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %3656 = fadd double %3654, %3655
  store double %3656, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %3657 = add i64 %3617, 90
  store i64 %3657, i64* %PC, align 8
  %3658 = load double, double* %3637, align 8
  %3659 = fmul double %3656, %3658
  %3660 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %3661 = fadd double %3659, %3660
  store double %3661, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %3662 = add i64 %3617, 104
  store i64 %3662, i64* %PC, align 8
  %3663 = load double, double* %3637, align 8
  %3664 = fmul double %3661, %3663
  %3665 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3666 = fadd double %3664, %3665
  store double %3666, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %3667 = fmul double %3633, %3666
  store double %3667, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %3668 = load double, double* %76, align 1
  %3669 = fadd double %3668, %3667
  store double %3669, double* %76, align 1, !tbaa !2451
  %3670 = load i64, i64* %RBP, align 8
  %3671 = add i64 %3670, -16
  %3672 = add i64 %3617, 126
  store i64 %3672, i64* %PC, align 8
  %3673 = inttoptr i64 %3671 to double*
  store double %3669, double* %3673, align 8
  %3674 = load i64, i64* %RBP, align 8
  %3675 = add i64 %3674, -72
  %3676 = load i64, i64* %PC, align 8
  %3677 = add i64 %3676, 4
  store i64 %3677, i64* %PC, align 8
  %3678 = inttoptr i64 %3675 to i64*
  %3679 = load i64, i64* %3678, align 8
  %3680 = add i64 %3679, 1
  store i64 %3680, i64* %RAX, align 8, !tbaa !2428
  %3681 = icmp eq i64 %3679, -1
  %3682 = icmp eq i64 %3680, 0
  %3683 = or i1 %3681, %3682
  %3684 = zext i1 %3683 to i8
  store i8 %3684, i8* %24, align 1, !tbaa !2432
  %3685 = trunc i64 %3680 to i32
  %3686 = and i32 %3685, 255
  %3687 = tail call i32 @llvm.ctpop.i32(i32 %3686) #8
  %3688 = trunc i32 %3687 to i8
  %3689 = and i8 %3688, 1
  %3690 = xor i8 %3689, 1
  store i8 %3690, i8* %31, align 1, !tbaa !2446
  %3691 = xor i64 %3679, %3680
  %3692 = lshr i64 %3691, 4
  %3693 = trunc i64 %3692 to i8
  %3694 = and i8 %3693, 1
  store i8 %3694, i8* %36, align 1, !tbaa !2450
  %3695 = icmp eq i64 %3680, 0
  %3696 = zext i1 %3695 to i8
  store i8 %3696, i8* %39, align 1, !tbaa !2447
  %3697 = lshr i64 %3680, 63
  %3698 = trunc i64 %3697 to i8
  store i8 %3698, i8* %42, align 1, !tbaa !2448
  %3699 = lshr i64 %3679, 63
  %3700 = xor i64 %3697, %3699
  %3701 = add nuw nsw i64 %3700, %3697
  %3702 = icmp eq i64 %3701, 2
  %3703 = zext i1 %3702 to i8
  store i8 %3703, i8* %48, align 1, !tbaa !2449
  %3704 = add i64 %3676, 12
  store i64 %3704, i64* %PC, align 8
  store i64 %3680, i64* %3678, align 8
  %3705 = load i64, i64* %PC, align 8
  %3706 = add i64 %3705, -311
  store i64 %3706, i64* %58, align 8, !tbaa !2428
  br label %block_401f8c

block_400f2b:                                     ; preds = %block_400e60
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %3707 = add i64 %1436, 5829
  %3708 = add i64 %1436, 15
  %3709 = load i64, i64* %16, align 8, !tbaa !2428
  %3710 = add i64 %3709, -8
  %3711 = inttoptr i64 %3710 to i64*
  store i64 %3708, i64* %3711, align 8
  store i64 %3710, i64* %16, align 8, !tbaa !2428
  store i64 %3707, i64* %58, align 8, !tbaa !2428
  %3712 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %3707, %struct.Memory* %3451)
  %3713 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 462), i64* %RDI, align 8, !tbaa !2428
  %3714 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to i64*), align 8
  %3715 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3714, i64* %3715, align 1, !tbaa !2451
  store double 0.000000e+00, double* %79, align 1, !tbaa !2451
  %3716 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 112) to i64*), align 16
  %3717 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3716, i64* %3717, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %3718 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 120) to i64*), align 8
  %3719 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3718, i64* %3719, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %3720 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %3721 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %3722 = fmul double %3720, %3721
  %3723 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %3724 = fsub double %3722, %3723
  store double %3724, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %3725 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %3726 = load double, double* bitcast (%three_type* @three to double*), align 8
  %3727 = fdiv double %3725, %3726
  store double %3727, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %3728 = load i64, i64* %RBP, align 8
  %3729 = add i64 %3728, -24
  %3730 = add i64 %3713, 93
  store i64 %3730, i64* %PC, align 8
  %3731 = inttoptr i64 %3729 to double*
  store double %3727, double* %3731, align 8
  %3732 = load i64, i64* %RBP, align 8
  %3733 = add i64 %3732, -24
  %3734 = load i64, i64* %PC, align 8
  %3735 = add i64 %3734, 5
  store i64 %3735, i64* %PC, align 8
  %3736 = inttoptr i64 %3733 to double*
  %3737 = load double, double* %3736, align 8
  store double %3737, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %3738 = add i64 %3734, 10
  store i64 %3738, i64* %PC, align 8
  %3739 = load double, double* %3736, align 8
  %3740 = fmul double %3737, %3739
  store double %3740, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %3741 = add i64 %3732, -40
  %3742 = add i64 %3734, 15
  store i64 %3742, i64* %PC, align 8
  %3743 = inttoptr i64 %3741 to double*
  store double %3740, double* %3743, align 8
  %3744 = load i64, i64* %RBP, align 8
  %3745 = add i64 %3744, -24
  %3746 = load i64, i64* %PC, align 8
  %3747 = add i64 %3746, 5
  store i64 %3747, i64* %PC, align 8
  %3748 = inttoptr i64 %3745 to double*
  %3749 = load double, double* %3748, align 8
  store double %3749, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %3750 = load double, double* bitcast (%A6_type* @A6 to double*), align 8
  store double %3750, double* %98, align 1, !tbaa !2451
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %3751 = add i64 %3744, -40
  %3752 = add i64 %3746, 19
  store i64 %3752, i64* %PC, align 8
  %3753 = inttoptr i64 %3751 to double*
  %3754 = load double, double* %3753, align 8
  %3755 = fmul double %3750, %3754
  %3756 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %3757 = fsub double %3755, %3756
  store double %3757, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %3758 = add i64 %3746, 33
  store i64 %3758, i64* %PC, align 8
  %3759 = load double, double* %3753, align 8
  %3760 = fmul double %3757, %3759
  %3761 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %3762 = fadd double %3760, %3761
  store double %3762, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %3763 = add i64 %3746, 47
  store i64 %3763, i64* %PC, align 8
  %3764 = load double, double* %3753, align 8
  %3765 = fmul double %3762, %3764
  %3766 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %3767 = fsub double %3765, %3766
  store double %3767, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %3768 = add i64 %3746, 61
  store i64 %3768, i64* %PC, align 8
  %3769 = load double, double* %3753, align 8
  %3770 = fmul double %3767, %3769
  %3771 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %3772 = fadd double %3770, %3771
  store double %3772, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %3773 = add i64 %3746, 75
  store i64 %3773, i64* %PC, align 8
  %3774 = load double, double* %3753, align 8
  %3775 = fmul double %3772, %3774
  %3776 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %3777 = fadd double %3775, %3776
  store double %3777, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %3778 = add i64 %3746, 89
  store i64 %3778, i64* %PC, align 8
  %3779 = load double, double* %3753, align 8
  %3780 = fmul double %3777, %3779
  %3781 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3782 = fadd double %3780, %3781
  store double %3782, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %3783 = fmul double %3749, %3782
  store double %3783, double* bitcast (%sa_type* @sa to double*), align 8
  %3784 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %3785 = load double, double* %138, align 1
  %3786 = fdiv double %3784, %3785
  store double %3786, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  store double %3786, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 80) to double*), align 16
  %3787 = load i64, i64* %RBP, align 8
  %3788 = add i64 %3787, -48
  %3789 = add i64 %3746, 138
  store i64 %3789, i64* %PC, align 8
  %3790 = inttoptr i64 %3788 to double*
  %3791 = load double, double* %3790, align 8
  store double %3791, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %3792 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  store double %3792, double* %93, align 1, !tbaa !2451
  store double 0.000000e+00, double* %96, align 1, !tbaa !2451
  %3793 = load double, double* bitcast (%two_type* @two to double*), align 8
  store double %3793, double* %98, align 1, !tbaa !2451
  store double 0.000000e+00, double* %101, align 1, !tbaa !2451
  %3794 = add i64 %3787, -16
  %3795 = add i64 %3746, 161
  store i64 %3795, i64* %PC, align 8
  %3796 = inttoptr i64 %3794 to double*
  %3797 = load double, double* %3796, align 8
  %3798 = fmul double %3793, %3797
  store double %3798, double* %98, align 1, !tbaa !2451
  store i64 0, i64* %100, align 1, !tbaa !2451
  %3799 = fadd double %3792, %3798
  store double %3799, double* %93, align 1, !tbaa !2451
  store i64 0, i64* %95, align 1, !tbaa !2451
  %3800 = fmul double %3791, %3799
  %3801 = fdiv double %3800, %3793
  store double %3801, double* bitcast (%sa_type* @sa to double*), align 8
  %3802 = load double, double* %141, align 1
  store double %3802, double* bitcast (%sb_type* @sb to double*), align 8
  %3803 = fsub double %3801, %3802
  store double %3803, double* bitcast (%sc_type* @sc to double*), align 8
  %3804 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3805 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 80) to double*), align 16
  %3806 = fdiv double %3804, %3805
  store double %3806, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 88) to double*), align 8
  %3807 = load <2 x i32>, <2 x i32>* %1522, align 1
  %3808 = load <2 x i32>, <2 x i32>* %1524, align 1
  %3809 = extractelement <2 x i32> %3807, i32 0
  store i32 %3809, i32* %1527, align 1, !tbaa !2455
  %3810 = extractelement <2 x i32> %3807, i32 1
  store i32 %3810, i32* %1530, align 1, !tbaa !2455
  %3811 = extractelement <2 x i32> %3808, i32 0
  store i32 %3811, i32* %1532, align 1, !tbaa !2455
  %3812 = extractelement <2 x i32> %3808, i32 1
  store i32 %3812, i32* %1535, align 1, !tbaa !2455
  %3813 = load double, double* %82, align 1
  %3814 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %3815 = fmul double %3813, %3814
  store double %3815, double* %82, align 1, !tbaa !2451
  store i32 %3809, i32* %1539, align 1, !tbaa !2455
  store i32 %3810, i32* %1541, align 1, !tbaa !2455
  store i32 %3811, i32* %1542, align 1, !tbaa !2455
  store i32 %3812, i32* %1544, align 1, !tbaa !2455
  %3816 = load double, double* %88, align 1
  %3817 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %3818 = fmul double %3816, %3817
  store double %3818, double* %88, align 1, !tbaa !2451
  %3819 = bitcast <2 x i32> %3807 to double
  %3820 = fmul double %3819, %3806
  %3821 = load i64, i64* %RBP, align 8
  %3822 = add i64 %3821, -184
  %3823 = add i64 %3746, 291
  store i64 %3823, i64* %PC, align 8
  %3824 = inttoptr i64 %3822 to double*
  store double %3820, double* %3824, align 8
  %3825 = load i64, i64* %PC, align 8
  %3826 = load <2 x i32>, <2 x i32>* %1555, align 1
  %3827 = load <2 x i32>, <2 x i32>* %1558, align 1
  %3828 = extractelement <2 x i32> %3826, i32 0
  store i32 %3828, i32* %202, align 1, !tbaa !2455
  %3829 = extractelement <2 x i32> %3826, i32 1
  store i32 %3829, i32* %204, align 1, !tbaa !2455
  %3830 = extractelement <2 x i32> %3827, i32 0
  store i32 %3830, i32* %205, align 1, !tbaa !2455
  %3831 = extractelement <2 x i32> %3827, i32 1
  store i32 %3831, i32* %207, align 1, !tbaa !2455
  %3832 = load <2 x i32>, <2 x i32>* %1564, align 1
  %3833 = load <2 x i32>, <2 x i32>* %1567, align 1
  %3834 = extractelement <2 x i32> %3832, i32 0
  store i32 %3834, i32* %1527, align 1, !tbaa !2455
  %3835 = extractelement <2 x i32> %3832, i32 1
  store i32 %3835, i32* %1530, align 1, !tbaa !2455
  %3836 = extractelement <2 x i32> %3833, i32 0
  store i32 %3836, i32* %1532, align 1, !tbaa !2455
  %3837 = extractelement <2 x i32> %3833, i32 1
  store i32 %3837, i32* %1535, align 1, !tbaa !2455
  %3838 = load i64, i64* %RBP, align 8
  %3839 = add i64 %3838, -184
  %3840 = add i64 %3825, 14
  store i64 %3840, i64* %PC, align 8
  %3841 = inttoptr i64 %3839 to i64*
  %3842 = load i64, i64* %3841, align 8
  %3843 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3842, i64* %3843, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %3844 = add i64 %3838, -188
  %3845 = load i32, i32* %EAX, align 4
  %3846 = add i64 %3825, 20
  store i64 %3846, i64* %PC, align 8
  %3847 = inttoptr i64 %3844 to i32*
  store i32 %3845, i32* %3847, align 4
  %3848 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %3849 = add i64 %3848, -3245
  %3850 = add i64 %3848, 7
  %3851 = load i64, i64* %16, align 8, !tbaa !2428
  %3852 = add i64 %3851, -8
  %3853 = inttoptr i64 %3852 to i64*
  store i64 %3850, i64* %3853, align 8
  store i64 %3852, i64* %16, align 8, !tbaa !2428
  store i64 %3849, i64* %58, align 8, !tbaa !2428
  %3854 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %3712)
  %3855 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i32 0, i32* %202, align 1, !tbaa !2454
  store i32 0, i32* %204, align 1, !tbaa !2454
  store i32 0, i32* %205, align 1, !tbaa !2454
  store i32 0, i32* %207, align 1, !tbaa !2454
  store i64 -9223372036854775808, i64* %RCX, align 8, !tbaa !2428
  %3856 = load i64, i64* bitcast (%A3_type* @A3 to i64*), align 8
  %3857 = xor i64 %3856, -9223372036854775808
  store i64 %3857, i64* bitcast (%A3_type* @A3 to i64*), align 8
  %3858 = load i64, i64* bitcast (%A5_type* @A5 to i64*), align 8
  %3859 = xor i64 %3858, -9223372036854775808
  store i64 %3859, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %24, align 1, !tbaa !2432
  %3860 = trunc i64 %3858 to i32
  %3861 = and i32 %3860, 255
  %3862 = tail call i32 @llvm.ctpop.i32(i32 %3861) #8
  %3863 = trunc i32 %3862 to i8
  %3864 = and i8 %3863, 1
  %3865 = xor i8 %3864, 1
  store i8 %3865, i8* %31, align 1, !tbaa !2446
  %3866 = icmp eq i64 %3859, 0
  %3867 = zext i1 %3866 to i8
  store i8 %3867, i8* %39, align 1, !tbaa !2447
  %3868 = lshr i64 %3859, 63
  %3869 = trunc i64 %3868 to i8
  store i8 %3869, i8* %42, align 1, !tbaa !2448
  store i8 0, i8* %48, align 1, !tbaa !2449
  store i8 0, i8* %36, align 1, !tbaa !2450
  store i64 %3859, i64* bitcast (%A5_type* @A5 to i64*), align 8
  %3870 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  store double %3870, double* %82, align 1, !tbaa !2451
  store double 0.000000e+00, double* %85, align 1, !tbaa !2451
  %3871 = load double, double* bitcast (%three_type* @three to double*), align 8
  store double %3871, double* %88, align 1, !tbaa !2451
  store double 0.000000e+00, double* %91, align 1, !tbaa !2451
  %3872 = load i64, i64* %RBP, align 8
  %3873 = add i64 %3872, -80
  %3874 = add i64 %3855, 107
  store i64 %3874, i64* %PC, align 8
  %3875 = inttoptr i64 %3873 to i64*
  %3876 = load i64, i64* %3875, align 8
  store i64 %3876, i64* %RCX, align 8, !tbaa !2428
  %3877 = sitofp i64 %3876 to double
  store double %3877, double* %93, align 1, !tbaa !2451
  %3878 = fmul double %3871, %3877
  store double %3878, double* %88, align 1, !tbaa !2451
  store i64 0, i64* %90, align 1, !tbaa !2451
  %3879 = fdiv double %3870, %3878
  store double %3879, double* %82, align 1, !tbaa !2451
  store i64 0, i64* %84, align 1, !tbaa !2451
  %3880 = add i64 %3872, -48
  %3881 = add i64 %3855, 125
  store i64 %3881, i64* %PC, align 8
  %3882 = inttoptr i64 %3880 to double*
  store double %3879, double* %3882, align 8
  %3883 = load i64, i64* %RBP, align 8
  %3884 = add i64 %3883, -16
  %3885 = load i64, i64* %PC, align 8
  %3886 = add i64 %3885, 5
  store i64 %3886, i64* %PC, align 8
  %3887 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %3888 = load i64, i64* %3887, align 1
  %3889 = inttoptr i64 %3884 to i64*
  store i64 %3888, i64* %3889, align 8
  %3890 = load i64, i64* %RBP, align 8
  %3891 = add i64 %3890, -32
  %3892 = load i64, i64* %PC, align 8
  %3893 = add i64 %3892, 5
  store i64 %3893, i64* %PC, align 8
  %3894 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %3895 = load i64, i64* %3894, align 1
  %3896 = inttoptr i64 %3891 to i64*
  store i64 %3895, i64* %3896, align 8
  %3897 = load i64, i64* %RBP, align 8
  %3898 = add i64 %3897, -192
  %3899 = load i32, i32* %EAX, align 4
  %3900 = load i64, i64* %PC, align 8
  %3901 = add i64 %3900, 6
  store i64 %3901, i64* %PC, align 8
  %3902 = inttoptr i64 %3898 to i32*
  store i32 %3899, i32* %3902, align 4
  %3903 = load i64, i64* %PC, align 8
  %3904 = add i64 %3903, 5247
  %3905 = add i64 %3903, 5
  %3906 = load i64, i64* %16, align 8, !tbaa !2428
  %3907 = add i64 %3906, -8
  %3908 = inttoptr i64 %3907 to i64*
  store i64 %3905, i64* %3908, align 8
  store i64 %3907, i64* %16, align 8, !tbaa !2428
  store i64 %3904, i64* %58, align 8, !tbaa !2428
  %3909 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %3904, %struct.Memory* %3854)
  %3910 = load i64, i64* %RBP, align 8
  %3911 = add i64 %3910, -72
  %3912 = load i64, i64* %PC, align 8
  %3913 = add i64 %3912, 8
  store i64 %3913, i64* %PC, align 8
  %3914 = inttoptr i64 %3911 to i64*
  store i64 1, i64* %3914, align 8
  %3915 = load i64, i64* %RBP, align 8
  %3916 = add i64 %3915, -196
  %3917 = load i32, i32* %EAX, align 4
  %3918 = load i64, i64* %PC, align 8
  %3919 = add i64 %3918, 6
  store i64 %3919, i64* %PC, align 8
  %3920 = inttoptr i64 %3916 to i32*
  store i32 %3917, i32* %3920, align 4
  %.pre15 = load i64, i64* %PC, align 8
  br label %block_401184

block_4008ae:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  store i32 0, i32* %202, align 1, !tbaa !2454
  store i32 0, i32* %204, align 1, !tbaa !2454
  store i32 0, i32* %205, align 1, !tbaa !2454
  store i32 0, i32* %207, align 1, !tbaa !2454
  %3921 = add i64 %1358, 12
  store i64 %3921, i64* %PC, align 8
  %3922 = load double, double* %144, align 1
  store double %3922, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  br label %block_4008ba

block_400802:                                     ; preds = %block_4007cb
  %3923 = add i64 %2794, -377
  store i64 %3923, i64* %58, align 8, !tbaa !2428
  br label %block_400689

block_400859:                                     ; preds = %block_400844
  %3924 = add i64 %1397, 9
  store i64 %3924, i64* %PC, align 8
  %3925 = load i64, i64* %1363, align 8
  %3926 = add i64 %3925, 1
  store i64 %3926, i64* %RAX, align 8, !tbaa !2428
  %3927 = icmp eq i64 %3925, -1
  %3928 = icmp eq i64 %3926, 0
  %3929 = or i1 %3927, %3928
  %3930 = zext i1 %3929 to i8
  store i8 %3930, i8* %24, align 1, !tbaa !2432
  %3931 = trunc i64 %3926 to i32
  %3932 = and i32 %3931, 255
  %3933 = tail call i32 @llvm.ctpop.i32(i32 %3932) #8
  %3934 = trunc i32 %3933 to i8
  %3935 = and i8 %3934, 1
  %3936 = xor i8 %3935, 1
  store i8 %3936, i8* %31, align 1, !tbaa !2446
  %3937 = xor i64 %3925, %3926
  %3938 = lshr i64 %3937, 4
  %3939 = trunc i64 %3938 to i8
  %3940 = and i8 %3939, 1
  store i8 %3940, i8* %36, align 1, !tbaa !2450
  %3941 = icmp eq i64 %3926, 0
  %3942 = zext i1 %3941 to i8
  store i8 %3942, i8* %39, align 1, !tbaa !2447
  %3943 = lshr i64 %3926, 63
  %3944 = trunc i64 %3943 to i8
  store i8 %3944, i8* %42, align 1, !tbaa !2448
  %3945 = lshr i64 %3925, 63
  %3946 = xor i64 %3943, %3945
  %3947 = add nuw nsw i64 %3946, %3943
  %3948 = icmp eq i64 %3947, 2
  %3949 = zext i1 %3948 to i8
  store i8 %3949, i8* %48, align 1, !tbaa !2449
  %3950 = add i64 %1397, 17
  store i64 %3950, i64* %PC, align 8
  store i64 %3926, i64* %1363, align 8
  %3951 = load i64, i64* %PC, align 8
  %3952 = add i64 %3951, -38
  store i64 %3952, i64* %58, align 8, !tbaa !2428
  br label %block_400844

block_400701:                                     ; preds = %block_400716, %block_4006a5
  %3953 = phi i64 [ %2507, %block_400716 ], [ %.pre6, %block_4006a5 ]
  %3954 = load i64, i64* %RBP, align 8
  %3955 = add i64 %3954, -72
  %3956 = add i64 %3953, 4
  store i64 %3956, i64* %PC, align 8
  %3957 = inttoptr i64 %3955 to i64*
  %3958 = load i64, i64* %3957, align 8
  store i64 %3958, i64* %RAX, align 8, !tbaa !2428
  %3959 = add i64 %3954, -88
  %3960 = add i64 %3953, 8
  store i64 %3960, i64* %PC, align 8
  %3961 = inttoptr i64 %3959 to i64*
  %3962 = load i64, i64* %3961, align 8
  %3963 = add i64 %3962, -1
  store i64 %3963, i64* %RCX, align 8, !tbaa !2428
  %3964 = lshr i64 %3963, 63
  %3965 = sub i64 %3958, %3963
  %3966 = icmp ult i64 %3958, %3963
  %3967 = zext i1 %3966 to i8
  store i8 %3967, i8* %24, align 1, !tbaa !2432
  %3968 = trunc i64 %3965 to i32
  %3969 = and i32 %3968, 255
  %3970 = tail call i32 @llvm.ctpop.i32(i32 %3969) #8
  %3971 = trunc i32 %3970 to i8
  %3972 = and i8 %3971, 1
  %3973 = xor i8 %3972, 1
  store i8 %3973, i8* %31, align 1, !tbaa !2446
  %3974 = xor i64 %3963, %3958
  %3975 = xor i64 %3974, %3965
  %3976 = lshr i64 %3975, 4
  %3977 = trunc i64 %3976 to i8
  %3978 = and i8 %3977, 1
  store i8 %3978, i8* %36, align 1, !tbaa !2450
  %3979 = icmp eq i64 %3965, 0
  %3980 = zext i1 %3979 to i8
  store i8 %3980, i8* %39, align 1, !tbaa !2447
  %3981 = lshr i64 %3965, 63
  %3982 = trunc i64 %3981 to i8
  store i8 %3982, i8* %42, align 1, !tbaa !2448
  %3983 = lshr i64 %3958, 63
  %3984 = xor i64 %3964, %3983
  %3985 = xor i64 %3981, %3983
  %3986 = add nuw nsw i64 %3985, %3984
  %3987 = icmp eq i64 %3986, 2
  %3988 = zext i1 %3987 to i8
  store i8 %3988, i8* %48, align 1, !tbaa !2449
  %3989 = icmp ne i8 %3982, 0
  %3990 = xor i1 %3989, %3987
  %.demorgan = or i1 %3979, %3990
  %.v20 = select i1 %.demorgan, i64 21, i64 202
  %3991 = add i64 %3953, %.v20
  store i64 %3991, i64* %58, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400716, label %block_4007cb
}

; Function Attrs: noinline
define %struct.Memory* @sub_400530_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400530:
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
  %14 = tail call %struct.Memory* @sub_4004c0_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %14
}

; Function Attrs: noinline
define %struct.Memory* @sub_400500___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400500:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %.b = load i1, i1* @seg_603120__bss.0.0, align 8
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3, align 1, !tbaa !2432
  %4 = zext i1 %.b to i32
  %5 = tail call i32 @llvm.ctpop.i32(i32 %4) #8
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
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %.b, i64 32, i64 9
  %16 = add i64 %.v, %1
  store i64 %16, i64* %15, align 8, !tbaa !2428
  br i1 %.b, label %block_400520, label %block_400509

block_400520:                                     ; preds = %block_400500
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %19 = load i64, i64* %18, align 8, !tbaa !2428
  %20 = inttoptr i64 %19 to i64*
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %15, align 8, !tbaa !2428
  %22 = add i64 %19, 8
  store i64 %22, i64* %18, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400509:                                     ; preds = %block_400500
  %23 = load i64, i64* %RBP, align 8
  %24 = add i64 %16, 1
  store i64 %24, i64* %PC, align 8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %26 = load i64, i64* %25, align 8, !tbaa !2428
  %27 = add i64 %26, -8
  %28 = inttoptr i64 %27 to i64*
  store i64 %23, i64* %28, align 8
  %29 = load i64, i64* %PC, align 8
  store i64 %27, i64* %RBP, align 8, !tbaa !2428
  %30 = add i64 %29, -122
  %31 = add i64 %29, 8
  %32 = add i64 %26, -16
  %33 = inttoptr i64 %32 to i64*
  store i64 %31, i64* %33, align 8
  store i64 %32, i64* %25, align 8, !tbaa !2428
  store i64 %30, i64* %15, align 8, !tbaa !2428
  %34 = tail call %struct.Memory* @sub_400490_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %30, %struct.Memory* %2)
  %35 = load i64, i64* %PC, align 8
  store i1 true, i1* @seg_603120__bss.0.0, align 8
  %36 = add i64 %35, 8
  store i64 %36, i64* %PC, align 8
  %37 = load i64, i64* %25, align 8, !tbaa !2428
  %38 = add i64 %37, 8
  %39 = inttoptr i64 %37 to i64*
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %RBP, align 8, !tbaa !2428
  store i64 %38, i64* %25, align 8, !tbaa !2428
  %41 = add i64 %35, 9
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %38 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %15, align 8, !tbaa !2428
  %44 = add i64 %37, 16
  store i64 %44, i64* %25, align 8, !tbaa !2428
  ret %struct.Memory* %34
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004c0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4004c0:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  store i64 6304024, i64* %RSI, align 8, !tbaa !2428
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
  %11 = add i64 %9, -6304024
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
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %30, i64 50, i64 29
  %35 = add i64 %10, %.v
  store i64 %35, i64* %34, align 8, !tbaa !2428
  br i1 %30, label %block_4004f8, label %block_4004e3

block_4004f8:                                     ; preds = %block_4004e3, %block_4004c0
  %36 = phi i64 [ %46, %block_4004e3 ], [ %35, %block_4004c0 ]
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
  store i64 %44, i64* %34, align 8, !tbaa !2428
  %45 = add i64 %38, 16
  store i64 %45, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4004e3:                                     ; preds = %block_4004c0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 1, i8* %13, align 1, !tbaa !2446
  store i8 1, i8* %15, align 1, !tbaa !2447
  store i8 0, i8* %16, align 1, !tbaa !2448
  store i8 0, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %14, align 1, !tbaa !2450
  %46 = add i64 %35, 21
  store i64 %46, i64* %34, align 8, !tbaa !2428
  br label %block_4004f8
}

; Function Attrs: noinline
define %struct.Memory* @sub_400480__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400480:
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
define %struct.Memory* @sub_4026f0___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4026f0:
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
define %struct.Memory* @sub_400450__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400450:
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
  store i64 ptrtoint (void ()* @callback_sub_4026f0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @callback_sub_402680___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %36 = add i64 %35, 27
  %37 = add i64 %16, -24
  %38 = inttoptr i64 %37 to i64*
  store i64 %36, i64* %38, align 8
  store i64 %37, i64* %11, align 8, !tbaa !2428
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %40 = load i64, i64* getelementptr inbounds (%seg_602ff0__got_type, %seg_602ff0__got_type* @seg_602ff0__got, i64 0, i32 0), align 8
  store i64 %40, i64* %39, align 8, !tbaa !2428
  %41 = tail call fastcc %struct.Memory* @ext_603320___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %42 = load i64, i64* %PC, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %PC, align 8
  %44 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %43, %struct.Memory* %41)
  ret %struct.Memory* %44
}

; Function Attrs: noinline
define %struct.Memory* @sub_402680___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_402680:
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
  store i8 %53, i8* %45, align 1, !tbaa !2453
  %55 = trunc i64 %54 to i32
  %56 = and i32 %55, 255
  %57 = tail call i32 @llvm.ctpop.i32(i32 %56) #8
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  store i8 %60, i8* %46, align 1, !tbaa !2453
  store i8 0, i8* %47, align 1, !tbaa !2453
  %61 = icmp eq i64 %54, 0
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %48, align 1, !tbaa !2453
  %63 = lshr i64 %54, 63
  %64 = trunc i64 %63 to i8
  store i8 %64, i8* %49, align 1, !tbaa !2453
  store i8 0, i8* %50, align 1, !tbaa !2453
  %65 = add i64 %40, -8859
  %66 = add i64 %40, 22
  %67 = add i64 %8, -64
  %68 = inttoptr i64 %67 to i64*
  store i64 %66, i64* %68, align 8
  store i64 %67, i64* %7, align 8, !tbaa !2428
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %65, i64* %69, align 8, !tbaa !2428
  %70 = tail call %struct.Memory* @sub_400400__init_proc_renamed_(%struct.State* nonnull %0, i64 %65, %struct.Memory* %2)
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
  br i1 %79, label %block_4026d6, label %block_4026b6

block_4026d6:                                     ; preds = %block_4026c0, %block_402680
  %84 = phi i64 [ %83, %block_402680 ], [ %182, %block_4026c0 ]
  %MEMORY.0 = phi %struct.Memory* [ %70, %block_402680 ], [ %152, %block_4026c0 ]
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

block_4026b6:                                     ; preds = %block_402680
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %45, align 1, !tbaa !2432
  store i8 1, i8* %46, align 1, !tbaa !2446
  store i8 1, i8* %48, align 1, !tbaa !2447
  store i8 0, i8* %49, align 1, !tbaa !2448
  store i8 0, i8* %50, align 1, !tbaa !2449
  store i8 0, i8* %47, align 1, !tbaa !2450
  %136 = add i64 %83, 10
  store i64 %136, i64* %PC, align 8
  br label %block_4026c0

block_4026c0:                                     ; preds = %block_4026c0, %block_4026b6
  %137 = phi i64 [ 0, %block_4026b6 ], [ %155, %block_4026c0 ]
  %138 = phi i64 [ %136, %block_4026b6 ], [ %182, %block_4026c0 ]
  %MEMORY.1 = phi %struct.Memory* [ %70, %block_4026b6 ], [ %152, %block_4026c0 ]
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
  br i1 %172, label %block_4026d6, label %block_4026c0
}

; Function Attrs: noinline
define %struct.Memory* @sub_400400__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400400:
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
  br i1 %18, label %block_400400.block_400412_crit_edge, label %block_400410

block_400400.block_400412_crit_edge:              ; preds = %block_400400
  %.pre2 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  br label %block_400412

block_400410:                                     ; preds = %block_400400
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
  br label %block_400412

block_400412:                                     ; preds = %block_400400.block_400412_crit_edge, %block_400410
  %.pre-phi = phi i64* [ %.pre2, %block_400400.block_400412_crit_edge ], [ %25, %block_400410 ]
  %29 = phi i64 [ %23, %block_400400.block_400412_crit_edge ], [ %.pre1, %block_400410 ]
  %30 = phi i64 [ %4, %block_400400.block_400412_crit_edge ], [ %.pre, %block_400410 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400400.block_400412_crit_edge ], [ %28, %block_400410 ]
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
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400530_frame_dummy() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400530;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_400530_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400530_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400500___do_global_dtors_aux() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400500;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_400500___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400500___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_603318_gettimeofday(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @gettimeofday to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_603310_printf(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4026f0___libc_csu_fini() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4026f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_4026f0___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4026f0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_402680___libc_csu_init() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x402680;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @callback_sub_402680___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_402680___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400540;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400540_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline
define internal fastcc %struct.Memory* @ext_603320___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #5 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4026f4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @.term_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4026f4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @dtime() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4025f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @dtime_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_4025f0_dtime(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400400;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #8
  ret void
}

define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %5
  %6 = tail call %struct.Memory* @sub_400400__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

define internal void @__mcsema_destructor() {
  tail call void @callback_sub_4026f0___libc_csu_fini()
  ret void
}

define internal void @__mcsema_constructor() {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %0, %2
  tail call void @callback_sub_402680___libc_csu_init()
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
