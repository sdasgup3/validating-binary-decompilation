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

declare %struct.Memory* @sub_400400__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400490_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
  %44 = add i64 %43, -8664
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
  %51 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 240) to double*), align 16
  store double %51, double* %35, align 1, !tbaa !2451
  store double 0.000000e+00, double* %38, align 1, !tbaa !2451
  %52 = load i64, i64* bitcast (%tnow_type* @tnow to i64*), align 8
  %53 = sitofp i64 %52 to double
  %54 = bitcast %union.VectorReg* %6 to double*
  %55 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%tnow_type* @tnow to i64), i64 8) to i64*), align 8
  store i64 %55, i64* %RSI, align 8, !tbaa !2428
  %56 = sitofp i64 %55 to double
  %57 = bitcast %union.VectorReg* %7 to double*
  %58 = fmul double %56, %51
  store double %58, double* %57, align 1, !tbaa !2451
  %59 = fadd double %53, %58
  store double %59, double* %54, align 1, !tbaa !2451
  %60 = load i64, i64* %RBP, align 8
  %61 = add i64 %60, -8
  %62 = add i64 %50, 48
  store i64 %62, i64* %PC, align 8
  %63 = inttoptr i64 %61 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %RSI, align 8, !tbaa !2428
  %65 = add i64 %64, 16
  %66 = add i64 %50, 53
  store i64 %66, i64* %PC, align 8
  %67 = inttoptr i64 %65 to double*
  store double %59, double* %67, align 8
  %68 = load i64, i64* %RBP, align 8
  %69 = add i64 %68, -8
  %70 = load i64, i64* %PC, align 8
  %71 = add i64 %70, 4
  store i64 %71, i64* %PC, align 8
  %72 = inttoptr i64 %69 to i64*
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %RSI, align 8, !tbaa !2428
  %74 = add i64 %73, 16
  %75 = add i64 %70, 9
  store i64 %75, i64* %PC, align 8
  %76 = inttoptr i64 %74 to double*
  %77 = load double, double* %76, align 8
  store double %77, double* %35, align 1, !tbaa !2451
  store double 0.000000e+00, double* %38, align 1, !tbaa !2451
  %78 = add i64 %68, -16
  %79 = add i64 %70, 14
  store i64 %79, i64* %PC, align 8
  %80 = inttoptr i64 %78 to double*
  %81 = load double, double* %80, align 8
  %82 = fsub double %77, %81
  store double %82, double* %35, align 1, !tbaa !2451
  store i64 0, i64* %37, align 1, !tbaa !2451
  %83 = add i64 %70, 18
  store i64 %83, i64* %PC, align 8
  %84 = load i64, i64* %72, align 8
  store i64 %84, i64* %RSI, align 8, !tbaa !2428
  %85 = add i64 %84, 8
  %86 = add i64 %70, 23
  store i64 %86, i64* %PC, align 8
  %87 = inttoptr i64 %85 to double*
  store double %82, double* %87, align 8
  %88 = load i64, i64* %RBP, align 8
  %89 = add i64 %88, -20
  %90 = load i32, i32* %EAX, align 4
  %91 = load i64, i64* %PC, align 8
  %92 = add i64 %91, 3
  store i64 %92, i64* %PC, align 8
  %93 = inttoptr i64 %89 to i32*
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* %ECX, align 4
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* %PC, align 8
  store i64 %95, i64* %RAX, align 8, !tbaa !2428
  %97 = load i64, i64* %RSP, align 8
  %98 = add i64 %97, 32
  store i64 %98, i64* %RSP, align 8, !tbaa !2428
  %99 = icmp ugt i64 %97, -33
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %15, align 1, !tbaa !2432
  %101 = trunc i64 %98 to i32
  %102 = and i32 %101, 255
  %103 = tail call i32 @llvm.ctpop.i32(i32 %102) #8
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  %106 = xor i8 %105, 1
  store i8 %106, i8* %16, align 1, !tbaa !2446
  %107 = xor i64 %97, %98
  %108 = lshr i64 %107, 4
  %109 = trunc i64 %108 to i8
  %110 = and i8 %109, 1
  store i8 %110, i8* %17, align 1, !tbaa !2450
  %111 = icmp eq i64 %98, 0
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %18, align 1, !tbaa !2447
  %113 = lshr i64 %98, 63
  %114 = trunc i64 %113 to i8
  store i8 %114, i8* %19, align 1, !tbaa !2448
  %115 = lshr i64 %97, 63
  %116 = xor i64 %113, %115
  %117 = add nuw nsw i64 %116, %113
  %118 = icmp eq i64 %117, 2
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %20, align 1, !tbaa !2449
  %120 = add i64 %96, 7
  store i64 %120, i64* %PC, align 8
  %121 = add i64 %97, 40
  %122 = inttoptr i64 %98 to i64*
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %RBP, align 8, !tbaa !2428
  store i64 %121, i64* %RSP, align 8, !tbaa !2428
  %124 = add i64 %96, 8
  store i64 %124, i64* %PC, align 8
  %125 = inttoptr i64 %121 to i64*
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %PC, align 8, !tbaa !2428
  %127 = add i64 %97, 48
  store i64 %127, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %49
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
  %33 = inttoptr i64 %3 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  %35 = add i64 %3, 8
  store i64 %35, i64* %RSP, align 8, !tbaa !2428
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
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25) #8
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
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 304), i64* %RDI, align 8, !tbaa !2428
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
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 248), i64* %RDI, align 8, !tbaa !2428
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
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 306), i64* %RDI, align 8, !tbaa !2428
  %72 = bitcast [32 x %union.VectorReg]* %5 to i8*
  %73 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 8) to i64*), align 8
  %74 = bitcast [32 x %union.VectorReg]* %5 to double*
  %75 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %73, i64* %75, align 1, !tbaa !2451
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %77 = bitcast i64* %76 to double*
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %78 = bitcast %union.VectorReg* %6 to i8*
  %79 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 16) to i64*), align 16
  %80 = bitcast %union.VectorReg* %6 to double*
  %81 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %79, i64* %81, align 1, !tbaa !2451
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %83 = bitcast i64* %82 to double*
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %84 = bitcast %union.VectorReg* %7 to i8*
  %85 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 24) to i64*), align 8
  %86 = bitcast %union.VectorReg* %7 to double*
  %87 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %85, i64* %87, align 1, !tbaa !2451
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %89 = bitcast i64* %88 to double*
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %90 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 32) to i64*), align 16
  %91 = bitcast %union.VectorReg* %8 to double*
  %92 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %90, i64* %92, align 1, !tbaa !2451
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %94 = bitcast i64* %93 to double*
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %95 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 40) to i64*), align 8
  %96 = bitcast %union.VectorReg* %9 to double*
  %97 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %9, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %95, i64* %97, align 1, !tbaa !2451
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %99 = bitcast i64* %98 to double*
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %100 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 48) to i64*), align 16
  %101 = bitcast %union.VectorReg* %10 to double*
  %102 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %10, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %100, i64* %102, align 1, !tbaa !2451
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %104 = bitcast i64* %103 to double*
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %105 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 56) to i64*), align 8
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
  %117 = add i64 %116, 4
  store i64 %117, i64* %PC, align 8
  %118 = inttoptr i64 %115 to i64*
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %RCX, align 8, !tbaa !2428
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
  %126 = add i64 %116, 39
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
  %141 = add i64 %140, -515
  %142 = add i64 %140, 7
  %143 = load i64, i64* %RSP, align 8, !tbaa !2428
  %144 = add i64 %143, -8
  %145 = inttoptr i64 %144 to i64*
  store i64 %142, i64* %145, align 8
  store i64 %144, i64* %RSP, align 8, !tbaa !2428
  store i64 %141, i64* %PC, align 8, !tbaa !2428
  %146 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %70)
  %147 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 354), i64* %RDI, align 8, !tbaa !2428
  %148 = load i64, i64* %RBP, align 8
  %149 = add i64 %148, -100
  %150 = load i32, i32* %EAX, align 4
  %151 = add i64 %147, 13
  store i64 %151, i64* %PC, align 8
  %152 = inttoptr i64 %149 to i32*
  store i32 %150, i32* %152, align 4
  %153 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %154 = add i64 %153, -535
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
  %167 = add i64 %166, 8085
  %168 = add i64 %166, 5
  %169 = load i64, i64* %RSP, align 8, !tbaa !2428
  %170 = add i64 %169, -8
  %171 = inttoptr i64 %170 to i64*
  store i64 %168, i64* %171, align 8
  store i64 %170, i64* %RSP, align 8, !tbaa !2428
  store i64 %167, i64* %PC, align 8, !tbaa !2428
  %172 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %167, %struct.Memory* %159)
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
  %180 = add i64 %179, 8067
  %181 = add i64 %179, 5
  %182 = load i64, i64* %RSP, align 8, !tbaa !2428
  %183 = add i64 %182, -8
  %184 = inttoptr i64 %183 to i64*
  store i64 %181, i64* %184, align 8
  store i64 %183, i64* %RSP, align 8, !tbaa !2428
  store i64 %180, i64* %PC, align 8, !tbaa !2428
  %185 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %180, %struct.Memory* %172)
  %186 = load i64, i64* %PC, align 8
  %187 = bitcast [32 x %union.VectorReg]* %5 to i32*
  store i32 0, i32* %187, align 1, !tbaa !2454
  %188 = getelementptr inbounds i8, i8* %72, i64 4
  %189 = bitcast i8* %188 to i32*
  store i32 0, i32* %189, align 1, !tbaa !2454
  %190 = bitcast i64* %76 to i32*
  store i32 0, i32* %190, align 1, !tbaa !2454
  %191 = getelementptr inbounds i8, i8* %72, i64 12
  %192 = bitcast i8* %191 to i32*
  store i32 0, i32* %192, align 1, !tbaa !2454
  %193 = load i64, i64* %RBP, align 8
  %194 = add i64 %193, -56
  %195 = add i64 %186, 7
  store i64 %195, i64* %PC, align 8
  %196 = inttoptr i64 %194 to i64*
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %RCX, align 8, !tbaa !2428
  %198 = add i64 %193, -88
  %199 = add i64 %186, 11
  store i64 %199, i64* %PC, align 8
  %200 = inttoptr i64 %198 to i64*
  store i64 %197, i64* %200, align 8
  %201 = load i64, i64* %PC, align 8
  %202 = load i64, i64* %75, align 1
  store i64 %202, i64* bitcast (%sa_type* @sa to i64*), align 8
  %203 = load i64, i64* %RBP, align 8
  %204 = add i64 %203, -112
  %205 = load i32, i32* %EAX, align 4
  %206 = add i64 %201, 12
  store i64 %206, i64* %PC, align 8
  %207 = inttoptr i64 %204 to i32*
  store i32 %205, i32* %207, align 4
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
  %209 = bitcast i64* %208 to double*
  %.pre = load i64, i64* %PC, align 8
  br label %block_400689

block_4014f4:                                     ; preds = %block_40124b, %block_401509
  %210 = phi i64 [ %.pre16, %block_40124b ], [ %1745, %block_401509 ]
  %211 = load i64, i64* %RBP, align 8
  %212 = add i64 %211, -72
  %213 = add i64 %210, 4
  store i64 %213, i64* %PC, align 8
  %214 = inttoptr i64 %212 to i64*
  %215 = load i64, i64* %214, align 8
  store i64 %215, i64* %RAX, align 8, !tbaa !2428
  %216 = add i64 %211, -80
  %217 = add i64 %210, 8
  store i64 %217, i64* %PC, align 8
  %218 = inttoptr i64 %216 to i64*
  %219 = load i64, i64* %218, align 8
  %220 = add i64 %219, -1
  store i64 %220, i64* %RCX, align 8, !tbaa !2428
  %221 = lshr i64 %220, 63
  %222 = sub i64 %215, %220
  %223 = icmp ult i64 %215, %220
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %23, align 1, !tbaa !2432
  %225 = trunc i64 %222 to i32
  %226 = and i32 %225, 255
  %227 = tail call i32 @llvm.ctpop.i32(i32 %226) #8
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = xor i8 %229, 1
  store i8 %230, i8* %30, align 1, !tbaa !2446
  %231 = xor i64 %220, %215
  %232 = xor i64 %231, %222
  %233 = lshr i64 %232, 4
  %234 = trunc i64 %233 to i8
  %235 = and i8 %234, 1
  store i8 %235, i8* %35, align 1, !tbaa !2450
  %236 = icmp eq i64 %222, 0
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %38, align 1, !tbaa !2447
  %238 = lshr i64 %222, 63
  %239 = trunc i64 %238 to i8
  store i8 %239, i8* %41, align 1, !tbaa !2448
  %240 = lshr i64 %215, 63
  %241 = xor i64 %221, %240
  %242 = xor i64 %238, %240
  %243 = add nuw nsw i64 %242, %241
  %244 = icmp eq i64 %243, 2
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %47, align 1, !tbaa !2449
  %246 = icmp ne i8 %239, 0
  %247 = xor i1 %246, %244
  %.demorgan34 = or i1 %236, %247
  %.v35 = select i1 %.demorgan34, i64 21, i64 315
  %248 = add i64 %210, %.v35
  store i64 %248, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan34, label %block_401509, label %block_40162f

block_400b6d:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  store i32 0, i32* %187, align 1, !tbaa !2454
  store i32 0, i32* %189, align 1, !tbaa !2454
  store i32 0, i32* %190, align 1, !tbaa !2454
  store i32 0, i32* %192, align 1, !tbaa !2454
  %249 = add i64 %2178, 12
  store i64 %249, i64* %PC, align 8
  %250 = load i64, i64* %75, align 1
  store i64 %250, i64* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to i64*), align 8
  br label %block_400b79

block_401d67:                                     ; preds = %block_401ccb
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %251 = add i64 %884, 2185
  %252 = add i64 %884, 15
  %253 = load i64, i64* %RSP, align 8, !tbaa !2428
  %254 = add i64 %253, -8
  %255 = inttoptr i64 %254 to i64*
  store i64 %252, i64* %255, align 8
  store i64 %254, i64* %RSP, align 8, !tbaa !2428
  store i64 %251, i64* %PC, align 8, !tbaa !2428
  %256 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %251, %struct.Memory* %2667)
  %257 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 606), i64* %RDI, align 8, !tbaa !2428
  %258 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to i64*), align 8
  store i64 %258, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %259 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 168) to i64*), align 8
  store i64 %259, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %260 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 176) to i64*), align 16
  store i64 %260, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  store i64 -9223372036854775808, i64* %RCX, align 8, !tbaa !2428
  %261 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 184) to double*), align 8
  %262 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %263 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %264 = fmul double %262, %263
  %265 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %266 = fsub double %264, %265
  store double %266, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 168) to double*), align 8
  %267 = fdiv double %266, %261
  store double %267, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  store double %267, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 176) to double*), align 16
  %268 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %268, i64* %92, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %269 = load i64, i64* %RBP, align 8
  %270 = add i64 %269, -48
  %271 = add i64 %257, 124
  store i64 %271, i64* %PC, align 8
  %272 = inttoptr i64 %270 to i64*
  store i64 %268, i64* %272, align 8
  %273 = load i64, i64* %RBP, align 8
  %274 = add i64 %273, -48
  %275 = load i64, i64* %PC, align 8
  %276 = add i64 %275, 5
  store i64 %276, i64* %PC, align 8
  %277 = inttoptr i64 %274 to double*
  %278 = load double, double* %277, align 8
  store double %278, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %279 = add i64 %275, 10
  store i64 %279, i64* %PC, align 8
  %280 = load double, double* %277, align 8
  %281 = fmul double %278, %280
  store double %281, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %282 = add i64 %273, -24
  %283 = add i64 %275, 15
  store i64 %283, i64* %PC, align 8
  %284 = inttoptr i64 %282 to double*
  store double %281, double* %284, align 8
  %285 = load i64, i64* %RBP, align 8
  %286 = add i64 %285, -40
  %287 = load i64, i64* %PC, align 8
  %288 = add i64 %287, 5
  store i64 %288, i64* %PC, align 8
  %289 = inttoptr i64 %286 to double*
  %290 = inttoptr i64 %286 to i64*
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* %RCX, align 8
  %293 = xor i64 %292, %291
  store i64 %293, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %23, align 1, !tbaa !2432
  %294 = trunc i64 %293 to i32
  %295 = and i32 %294, 255
  %296 = tail call i32 @llvm.ctpop.i32(i32 %295) #8
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = xor i8 %298, 1
  store i8 %299, i8* %30, align 1, !tbaa !2446
  %300 = icmp eq i64 %293, 0
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %38, align 1, !tbaa !2447
  %302 = lshr i64 %293, 63
  %303 = trunc i64 %302 to i8
  store i8 %303, i8* %41, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %35, align 1, !tbaa !2450
  store i64 %293, i64* %92, align 1, !tbaa !2428
  store i64 0, i64* %93, align 1, !tbaa !2428
  %304 = add i64 %287, 23
  store i64 %304, i64* %PC, align 8
  %305 = load double, double* %289, align 8
  store double %305, double* %96, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %306 = add i64 %285, -48
  %307 = add i64 %287, 28
  store i64 %307, i64* %PC, align 8
  %308 = inttoptr i64 %306 to double*
  %309 = load double, double* %308, align 8
  store double %309, double* %101, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %310 = add i64 %287, 33
  store i64 %310, i64* %PC, align 8
  %311 = load double, double* %289, align 8
  %312 = fadd double %309, %311
  store double %312, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %313 = fdiv double %305, %312
  store double %313, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %314 = bitcast i64 %293 to double
  %315 = fsub double %314, %313
  store double %315, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %316 = add i64 %287, 46
  store i64 %316, i64* %PC, align 8
  %317 = load double, double* %308, align 8
  store double %317, double* %96, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %318 = add i64 %285, -24
  %319 = add i64 %287, 51
  store i64 %319, i64* %PC, align 8
  %320 = inttoptr i64 %318 to double*
  %321 = load double, double* %320, align 8
  store double %321, double* %101, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %322 = add i64 %287, 56
  store i64 %322, i64* %PC, align 8
  %323 = load double, double* %289, align 8
  %324 = fadd double %321, %323
  store double %324, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %325 = fdiv double %317, %324
  store double %325, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %326 = fsub double %315, %325
  store double %326, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %327 = add i64 %287, 69
  store i64 %327, i64* %PC, align 8
  %328 = load double, double* %320, align 8
  store double %328, double* %96, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %329 = load i64, i64* %RBP, align 8
  %330 = add i64 %329, -48
  %331 = add i64 %287, 74
  store i64 %331, i64* %PC, align 8
  %332 = inttoptr i64 %330 to double*
  %333 = load double, double* %332, align 8
  store double %333, double* %101, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %334 = add i64 %329, -24
  %335 = add i64 %287, 79
  store i64 %335, i64* %PC, align 8
  %336 = inttoptr i64 %334 to double*
  %337 = load double, double* %336, align 8
  %338 = fmul double %333, %337
  store double %338, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %339 = add i64 %329, -40
  %340 = add i64 %287, 84
  store i64 %340, i64* %PC, align 8
  %341 = inttoptr i64 %339 to double*
  %342 = load double, double* %341, align 8
  %343 = fadd double %338, %342
  store double %343, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %344 = fdiv double %328, %343
  store double %344, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %345 = fsub double %326, %344
  store double %345, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  store double %345, double* bitcast (%sa_type* @sa to double*), align 8
  %346 = add i64 %329, -32
  %347 = add i64 %287, 106
  store i64 %347, i64* %PC, align 8
  %348 = load double, double* %86, align 1
  %349 = inttoptr i64 %346 to double*
  %350 = load double, double* %349, align 8
  %351 = fmul double %348, %350
  store double %351, double* %86, align 1, !tbaa !2451
  store double %345, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %352 = load double, double* bitcast (%two_type* @two to double*), align 8
  store double %352, double* %96, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %353 = add i64 %329, -16
  %354 = add i64 %287, 129
  store i64 %354, i64* %PC, align 8
  %355 = inttoptr i64 %353 to double*
  %356 = load double, double* %355, align 8
  %357 = fmul double %352, %356
  store double %357, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %358 = fadd double %345, %357
  store double %358, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %359 = fmul double %351, %358
  store double %359, double* %86, align 1, !tbaa !2451
  store double %359, double* bitcast (%sa_type* @sa to double*), align 8
  %360 = tail call double @llvm.trunc.f64(double %359) #8
  %361 = tail call double @llvm.fabs.f64(double %360) #8
  %362 = fcmp ogt double %361, 0x43E0000000000000
  %363 = fptosi double %360 to i64
  %364 = select i1 %362, i64 -9223372036854775808, i64 %363
  %365 = sext i64 %364 to i128
  %366 = and i128 %365, -18446744073709551616
  %367 = zext i64 %364 to i128
  %368 = or i128 %366, %367
  %369 = mul nsw i128 %368, -2000
  %370 = trunc i128 %369 to i64
  store i64 %370, i64* %RCX, align 8, !tbaa !2428
  %371 = sext i64 %370 to i128
  %372 = icmp ne i128 %371, %369
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %23, align 1, !tbaa !2432
  %374 = trunc i128 %369 to i32
  %375 = and i32 %374, 240
  %376 = tail call i32 @llvm.ctpop.i32(i32 %375) #8
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  %379 = xor i8 %378, 1
  store i8 %379, i8* %30, align 1, !tbaa !2446
  store i8 0, i8* %35, align 1, !tbaa !2450
  store i8 0, i8* %38, align 1, !tbaa !2447
  %380 = lshr i64 %370, 63
  %381 = trunc i64 %380 to i8
  store i8 %381, i8* %41, align 1, !tbaa !2448
  store i8 %373, i8* %47, align 1, !tbaa !2449
  %382 = load i64, i64* %RBP, align 8
  %383 = add i64 %382, -80
  %384 = add i64 %287, 167
  store i64 %384, i64* %PC, align 8
  %385 = inttoptr i64 %383 to i64*
  store i64 %370, i64* %385, align 8
  %386 = load i64, i64* %RBP, align 8
  %387 = add i64 %386, -80
  %388 = load i64, i64* %PC, align 8
  %389 = add i64 %388, 4
  store i64 %389, i64* %PC, align 8
  %390 = inttoptr i64 %387 to i64*
  %391 = load i64, i64* %390, align 8
  %392 = sitofp i64 %391 to double
  %393 = load double, double* bitcast (%scale_type* @scale to double*), align 8
  %394 = fdiv double %392, %393
  %395 = tail call double @llvm.trunc.f64(double %394) #8
  %396 = tail call double @llvm.fabs.f64(double %395) #8
  %397 = fcmp ogt double %396, 0x43E0000000000000
  %398 = fptosi double %395 to i64
  %399 = select i1 %397, i64 -9223372036854775808, i64 %398
  store i64 %399, i64* %RCX, align 8, !tbaa !2428
  %400 = add i64 %388, 27
  store i64 %400, i64* %PC, align 8
  store i64 %399, i64* %390, align 8
  %401 = load i64, i64* %PC, align 8
  %402 = load double, double* %80, align 1
  %403 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %404 = fadd double %402, %403
  store double %404, double* bitcast (%sc_type* @sc to double*), align 8
  %405 = load double, double* bitcast (%one_type* @one to double*), align 8
  %406 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 176) to double*), align 16
  %407 = fdiv double %405, %406
  store double %407, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 184) to double*), align 8
  %408 = load <2 x i32>, <2 x i32>* %1483, align 1
  %409 = load <2 x i32>, <2 x i32>* %1485, align 1
  %410 = extractelement <2 x i32> %408, i32 0
  store i32 %410, i32* %1488, align 1, !tbaa !2455
  %411 = extractelement <2 x i32> %408, i32 1
  store i32 %411, i32* %1491, align 1, !tbaa !2455
  %412 = extractelement <2 x i32> %409, i32 0
  store i32 %412, i32* %1493, align 1, !tbaa !2455
  %413 = extractelement <2 x i32> %409, i32 1
  store i32 %413, i32* %1496, align 1, !tbaa !2455
  %414 = load double, double* %80, align 1
  %415 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %416 = fmul double %414, %415
  store double %416, double* %80, align 1, !tbaa !2451
  store i32 %410, i32* %1500, align 1, !tbaa !2455
  store i32 %411, i32* %1502, align 1, !tbaa !2455
  store i32 %412, i32* %1503, align 1, !tbaa !2455
  store i32 %413, i32* %1505, align 1, !tbaa !2455
  %417 = load double, double* %86, align 1
  %418 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 168) to double*), align 8
  %419 = fmul double %417, %418
  store double %419, double* %86, align 1, !tbaa !2451
  %420 = bitcast <2 x i32> %408 to double
  %421 = fmul double %420, %407
  %422 = load i64, i64* %RBP, align 8
  %423 = add i64 %422, -280
  %424 = add i64 %401, 86
  store i64 %424, i64* %PC, align 8
  %425 = inttoptr i64 %423 to double*
  store double %421, double* %425, align 8
  %426 = load i64, i64* %PC, align 8
  %427 = load <2 x i32>, <2 x i32>* %1516, align 1
  %428 = load <2 x i32>, <2 x i32>* %1518, align 1
  %429 = extractelement <2 x i32> %427, i32 0
  store i32 %429, i32* %187, align 1, !tbaa !2455
  %430 = extractelement <2 x i32> %427, i32 1
  store i32 %430, i32* %189, align 1, !tbaa !2455
  %431 = extractelement <2 x i32> %428, i32 0
  store i32 %431, i32* %190, align 1, !tbaa !2455
  %432 = extractelement <2 x i32> %428, i32 1
  store i32 %432, i32* %192, align 1, !tbaa !2455
  %433 = load <2 x i32>, <2 x i32>* %1524, align 1
  %434 = load <2 x i32>, <2 x i32>* %1526, align 1
  %435 = extractelement <2 x i32> %433, i32 0
  store i32 %435, i32* %1488, align 1, !tbaa !2455
  %436 = extractelement <2 x i32> %433, i32 1
  store i32 %436, i32* %1491, align 1, !tbaa !2455
  %437 = extractelement <2 x i32> %434, i32 0
  store i32 %437, i32* %1493, align 1, !tbaa !2455
  %438 = extractelement <2 x i32> %434, i32 1
  store i32 %438, i32* %1496, align 1, !tbaa !2455
  %439 = load i64, i64* %RBP, align 8
  %440 = add i64 %439, -280
  %441 = add i64 %426, 14
  store i64 %441, i64* %PC, align 8
  %442 = inttoptr i64 %440 to i64*
  %443 = load i64, i64* %442, align 8
  store i64 %443, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %444 = add i64 %439, -284
  %445 = load i32, i32* %EAX, align 4
  %446 = add i64 %426, 20
  store i64 %446, i64* %PC, align 8
  %447 = inttoptr i64 %444 to i32*
  store i32 %445, i32* %447, align 4
  %448 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %449 = add i64 %448, -6909
  %450 = add i64 %448, 7
  %451 = load i64, i64* %RSP, align 8, !tbaa !2428
  %452 = add i64 %451, -8
  %453 = inttoptr i64 %452 to i64*
  store i64 %450, i64* %453, align 8
  store i64 %452, i64* %RSP, align 8, !tbaa !2428
  store i64 %449, i64* %PC, align 8, !tbaa !2428
  %454 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %256)
  %455 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i32 0, i32* %187, align 1, !tbaa !2454
  store i32 0, i32* %189, align 1, !tbaa !2454
  store i32 0, i32* %190, align 1, !tbaa !2454
  store i32 0, i32* %192, align 1, !tbaa !2454
  %456 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  store double %456, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %457 = load double, double* bitcast (%three_type* @three to double*), align 8
  store double %457, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %458 = load i64, i64* %RBP, align 8
  %459 = add i64 %458, -80
  %460 = add i64 %455, 35
  store i64 %460, i64* %PC, align 8
  %461 = inttoptr i64 %459 to i64*
  %462 = load i64, i64* %461, align 8
  store i64 %462, i64* %RCX, align 8, !tbaa !2428
  %463 = sitofp i64 %462 to double
  store double %463, double* %91, align 1, !tbaa !2451
  %464 = fmul double %457, %463
  store double %464, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %465 = fdiv double %456, %464
  store double %465, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %466 = add i64 %458, -48
  %467 = add i64 %455, 53
  store i64 %467, i64* %PC, align 8
  %468 = inttoptr i64 %466 to double*
  store double %465, double* %468, align 8
  %469 = load i64, i64* %RBP, align 8
  %470 = add i64 %469, -16
  %471 = load i64, i64* %PC, align 8
  %472 = add i64 %471, 5
  store i64 %472, i64* %PC, align 8
  %473 = load i64, i64* %75, align 1
  %474 = inttoptr i64 %470 to i64*
  store i64 %473, i64* %474, align 8
  %475 = load i64, i64* %RBP, align 8
  %476 = add i64 %475, -32
  %477 = load i64, i64* %PC, align 8
  %478 = add i64 %477, 5
  store i64 %478, i64* %PC, align 8
  %479 = load i64, i64* %75, align 1
  %480 = inttoptr i64 %476 to i64*
  store i64 %479, i64* %480, align 8
  %481 = load i64, i64* %RBP, align 8
  %482 = add i64 %481, -288
  %483 = load i32, i32* %EAX, align 4
  %484 = load i64, i64* %PC, align 8
  %485 = add i64 %484, 6
  store i64 %485, i64* %PC, align 8
  %486 = inttoptr i64 %482 to i32*
  store i32 %483, i32* %486, align 4
  %487 = load i64, i64* %PC, align 8
  %488 = add i64 %487, 1655
  %489 = add i64 %487, 5
  %490 = load i64, i64* %RSP, align 8, !tbaa !2428
  %491 = add i64 %490, -8
  %492 = inttoptr i64 %491 to i64*
  store i64 %489, i64* %492, align 8
  store i64 %491, i64* %RSP, align 8, !tbaa !2428
  store i64 %488, i64* %PC, align 8, !tbaa !2428
  %493 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %488, %struct.Memory* %454)
  %494 = load i64, i64* %RBP, align 8
  %495 = add i64 %494, -72
  %496 = load i64, i64* %PC, align 8
  %497 = add i64 %496, 8
  store i64 %497, i64* %PC, align 8
  %498 = inttoptr i64 %495 to i64*
  store i64 1, i64* %498, align 8
  %499 = load i64, i64* %RBP, align 8
  %500 = add i64 %499, -292
  %501 = load i32, i32* %EAX, align 4
  %502 = load i64, i64* %PC, align 8
  %503 = add i64 %502, 6
  store i64 %503, i64* %PC, align 8
  %504 = inttoptr i64 %500 to i32*
  store i32 %501, i32* %504, align 4
  %.pre19 = load i64, i64* %PC, align 8
  br label %block_401f8c

block_4018d9:                                     ; preds = %block_40162f, %block_4018ee
  %505 = phi i64 [ %.pre17, %block_40162f ], [ %845, %block_4018ee ]
  %506 = load i64, i64* %RBP, align 8
  %507 = add i64 %506, -72
  %508 = add i64 %505, 4
  store i64 %508, i64* %PC, align 8
  %509 = inttoptr i64 %507 to i64*
  %510 = load i64, i64* %509, align 8
  store i64 %510, i64* %RAX, align 8, !tbaa !2428
  %511 = add i64 %506, -80
  %512 = add i64 %505, 8
  store i64 %512, i64* %PC, align 8
  %513 = inttoptr i64 %511 to i64*
  %514 = load i64, i64* %513, align 8
  %515 = add i64 %514, -1
  store i64 %515, i64* %RCX, align 8, !tbaa !2428
  %516 = lshr i64 %515, 63
  %517 = sub i64 %510, %515
  %518 = icmp ult i64 %510, %515
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %23, align 1, !tbaa !2432
  %520 = trunc i64 %517 to i32
  %521 = and i32 %520, 255
  %522 = tail call i32 @llvm.ctpop.i32(i32 %521) #8
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  %525 = xor i8 %524, 1
  store i8 %525, i8* %30, align 1, !tbaa !2446
  %526 = xor i64 %515, %510
  %527 = xor i64 %526, %517
  %528 = lshr i64 %527, 4
  %529 = trunc i64 %528 to i8
  %530 = and i8 %529, 1
  store i8 %530, i8* %35, align 1, !tbaa !2450
  %531 = icmp eq i64 %517, 0
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %38, align 1, !tbaa !2447
  %533 = lshr i64 %517, 63
  %534 = trunc i64 %533 to i8
  store i8 %534, i8* %41, align 1, !tbaa !2448
  %535 = lshr i64 %510, 63
  %536 = xor i64 %516, %535
  %537 = xor i64 %533, %535
  %538 = add nuw nsw i64 %537, %536
  %539 = icmp eq i64 %538, 2
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %47, align 1, !tbaa !2449
  %541 = icmp ne i8 %534, 0
  %542 = xor i1 %541, %539
  %.demorgan36 = or i1 %531, %542
  %.v37 = select i1 %.demorgan36, i64 21, i64 315
  %543 = add i64 %505, %.v37
  store i64 %543, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan36, label %block_4018ee, label %block_401a14

block_400bd6:                                     ; preds = %block_400bc8
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
  %544 = add i64 %1747, -16
  %545 = add i64 %1783, 15
  store i64 %545, i64* %PC, align 8
  %546 = inttoptr i64 %544 to i64*
  %547 = load i64, i64* %546, align 8
  %548 = xor i64 %547, -9223372036854775808
  store i64 %548, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %23, align 1, !tbaa !2432
  %549 = trunc i64 %547 to i32
  %550 = and i32 %549, 255
  %551 = tail call i32 @llvm.ctpop.i32(i32 %550) #8
  %552 = trunc i32 %551 to i8
  %553 = and i8 %552, 1
  %554 = xor i8 %553, 1
  store i8 %554, i8* %30, align 1, !tbaa !2446
  %555 = icmp eq i64 %548, 0
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %38, align 1, !tbaa !2447
  %557 = lshr i64 %548, 63
  %558 = trunc i64 %557 to i8
  store i8 %558, i8* %41, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %35, align 1, !tbaa !2450
  %559 = add i64 %1783, 33
  store i64 %559, i64* %PC, align 8
  store i64 %548, i64* %546, align 8
  %560 = load i64, i64* %PC, align 8
  %561 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  store double %561, double* %74, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %562 = load i64, i64* %RBP, align 8
  %563 = add i64 %562, -16
  %564 = add i64 %560, 14
  store i64 %564, i64* %PC, align 8
  %565 = inttoptr i64 %563 to double*
  %566 = load double, double* %565, align 8
  %567 = fadd double %561, %566
  store double %567, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  store double %567, double* bitcast (%sa_type* @sa to double*), align 8
  %568 = add i64 %562, -24
  %569 = add i64 %560, 28
  store i64 %569, i64* %PC, align 8
  %570 = inttoptr i64 %568 to double*
  %571 = load double, double* %570, align 8
  %572 = load double, double* bitcast (%two_type* @two to double*), align 8
  %573 = fadd double %571, %572
  store double %573, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %574 = add i64 %560, 42
  store i64 %574, i64* %PC, align 8
  store double %573, double* %570, align 8
  %575 = load i64, i64* %RBP, align 8
  %576 = add i64 %575, -48
  %577 = load i64, i64* %PC, align 8
  %578 = add i64 %577, 5
  store i64 %578, i64* %PC, align 8
  %579 = inttoptr i64 %576 to double*
  %580 = load double, double* %579, align 8
  store double %580, double* %74, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %581 = add i64 %575, -16
  %582 = add i64 %577, 10
  store i64 %582, i64* %PC, align 8
  %583 = inttoptr i64 %581 to double*
  %584 = load double, double* %583, align 8
  store double %584, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %585 = add i64 %575, -24
  %586 = add i64 %577, 15
  store i64 %586, i64* %PC, align 8
  %587 = inttoptr i64 %585 to double*
  %588 = load double, double* %587, align 8
  %589 = fsub double %584, %588
  store double %589, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %590 = fadd double %580, %589
  store double %590, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %591 = add i64 %577, 24
  store i64 %591, i64* %PC, align 8
  store double %590, double* %579, align 8
  %592 = load i64, i64* %RBP, align 8
  %593 = add i64 %592, -32
  %594 = load i64, i64* %PC, align 8
  %595 = add i64 %594, 5
  store i64 %595, i64* %PC, align 8
  %596 = inttoptr i64 %593 to double*
  %597 = load double, double* %596, align 8
  store double %597, double* %74, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %598 = add i64 %592, -16
  %599 = add i64 %594, 10
  store i64 %599, i64* %PC, align 8
  %600 = inttoptr i64 %598 to double*
  %601 = load double, double* %600, align 8
  store double %601, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %602 = add i64 %592, -24
  %603 = add i64 %594, 15
  store i64 %603, i64* %PC, align 8
  %604 = inttoptr i64 %602 to double*
  %605 = load double, double* %604, align 8
  %606 = fmul double %601, %605
  store double %606, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %607 = fsub double %597, %606
  store double %607, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %608 = add i64 %594, 24
  store i64 %608, i64* %PC, align 8
  store double %607, double* %596, align 8
  %609 = load i64, i64* %RBP, align 8
  %610 = add i64 %609, -40
  %611 = load i64, i64* %PC, align 8
  %612 = add i64 %611, 5
  store i64 %612, i64* %PC, align 8
  %613 = inttoptr i64 %610 to double*
  %614 = load double, double* %613, align 8
  store double %614, double* %74, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %615 = add i64 %609, -16
  %616 = add i64 %611, 10
  store i64 %616, i64* %PC, align 8
  %617 = inttoptr i64 %615 to double*
  %618 = load double, double* %617, align 8
  store double %618, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %619 = add i64 %609, -24
  %620 = add i64 %611, 15
  store i64 %620, i64* %PC, align 8
  %621 = inttoptr i64 %619 to double*
  %622 = load double, double* %621, align 8
  %623 = fdiv double %618, %622
  store double %623, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %624 = fadd double %614, %623
  store double %624, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %625 = add i64 %611, 24
  store i64 %625, i64* %PC, align 8
  store double %624, double* %613, align 8
  %626 = load i64, i64* %RBP, align 8
  %627 = add i64 %626, -72
  %628 = load i64, i64* %PC, align 8
  %629 = add i64 %628, 4
  store i64 %629, i64* %PC, align 8
  %630 = inttoptr i64 %627 to i64*
  %631 = load i64, i64* %630, align 8
  %632 = add i64 %631, 1
  store i64 %632, i64* %RAX, align 8, !tbaa !2428
  %633 = icmp eq i64 %631, -1
  %634 = icmp eq i64 %632, 0
  %635 = or i1 %633, %634
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %23, align 1, !tbaa !2432
  %637 = trunc i64 %632 to i32
  %638 = and i32 %637, 255
  %639 = tail call i32 @llvm.ctpop.i32(i32 %638) #8
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  %642 = xor i8 %641, 1
  store i8 %642, i8* %30, align 1, !tbaa !2446
  %643 = xor i64 %631, %632
  %644 = lshr i64 %643, 4
  %645 = trunc i64 %644 to i8
  %646 = and i8 %645, 1
  store i8 %646, i8* %35, align 1, !tbaa !2450
  %647 = zext i1 %634 to i8
  store i8 %647, i8* %38, align 1, !tbaa !2447
  %648 = lshr i64 %632, 63
  %649 = trunc i64 %648 to i8
  store i8 %649, i8* %41, align 1, !tbaa !2448
  %650 = lshr i64 %631, 63
  %651 = xor i64 %648, %650
  %652 = add nuw nsw i64 %651, %648
  %653 = icmp eq i64 %652, 2
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %47, align 1, !tbaa !2449
  %655 = add i64 %628, 12
  store i64 %655, i64* %PC, align 8
  store i64 %632, i64* %630, align 8
  %656 = load i64, i64* %PC, align 8
  %657 = add i64 %656, -173
  store i64 %657, i64* %PC, align 8, !tbaa !2428
  br label %block_400bc8

block_400ad4:                                     ; preds = %block_400ae2, %block_4008ba
  %658 = phi i64 [ %3200, %block_400ae2 ], [ %.pre10, %block_4008ba ]
  %659 = load i64, i64* %RBP, align 8
  %660 = add i64 %659, -72
  %661 = add i64 %658, 4
  store i64 %661, i64* %PC, align 8
  %662 = inttoptr i64 %660 to i64*
  %663 = load i64, i64* %662, align 8
  store i64 %663, i64* %RAX, align 8, !tbaa !2428
  %664 = add i64 %659, -80
  %665 = add i64 %658, 8
  store i64 %665, i64* %PC, align 8
  %666 = inttoptr i64 %664 to i64*
  %667 = load i64, i64* %666, align 8
  %668 = sub i64 %663, %667
  %669 = icmp ult i64 %663, %667
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %23, align 1, !tbaa !2432
  %671 = trunc i64 %668 to i32
  %672 = and i32 %671, 255
  %673 = tail call i32 @llvm.ctpop.i32(i32 %672) #8
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  %676 = xor i8 %675, 1
  store i8 %676, i8* %30, align 1, !tbaa !2446
  %677 = xor i64 %667, %663
  %678 = xor i64 %677, %668
  %679 = lshr i64 %678, 4
  %680 = trunc i64 %679 to i8
  %681 = and i8 %680, 1
  store i8 %681, i8* %35, align 1, !tbaa !2450
  %682 = icmp eq i64 %668, 0
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %38, align 1, !tbaa !2447
  %684 = lshr i64 %668, 63
  %685 = trunc i64 %684 to i8
  store i8 %685, i8* %41, align 1, !tbaa !2448
  %686 = lshr i64 %663, 63
  %687 = lshr i64 %667, 63
  %688 = xor i64 %687, %686
  %689 = xor i64 %684, %686
  %690 = add nuw nsw i64 %689, %688
  %691 = icmp eq i64 %690, 2
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %47, align 1, !tbaa !2449
  %693 = icmp ne i8 %685, 0
  %694 = xor i1 %693, %691
  %.demorgan25 = or i1 %682, %694
  %.v26 = select i1 %.demorgan25, i64 14, i64 87
  %695 = add i64 %658, %.v26
  %696 = add i64 %695, 10
  store i64 %696, i64* %PC, align 8
  br i1 %.demorgan25, label %block_400ae2, label %block_400b2b

block_4018ee:                                     ; preds = %block_4018d9
  %697 = add i64 %543, 4
  store i64 %697, i64* %PC, align 8
  %698 = load i64, i64* %509, align 8
  store i64 %698, i64* %RAX, align 8, !tbaa !2428
  %699 = sitofp i64 %698 to double
  store double %699, double* %74, align 1, !tbaa !2451
  %700 = add i64 %506, -48
  %701 = add i64 %543, 14
  store i64 %701, i64* %PC, align 8
  %702 = inttoptr i64 %700 to double*
  %703 = load double, double* %702, align 8
  %704 = fmul double %699, %703
  store double %704, double* %74, align 1, !tbaa !2451
  %705 = add i64 %506, -24
  %706 = add i64 %543, 19
  store i64 %706, i64* %PC, align 8
  %707 = inttoptr i64 %705 to double*
  store double %704, double* %707, align 8
  %708 = load i64, i64* %RBP, align 8
  %709 = add i64 %708, -24
  %710 = load i64, i64* %PC, align 8
  %711 = add i64 %710, 5
  store i64 %711, i64* %PC, align 8
  %712 = inttoptr i64 %709 to double*
  %713 = load double, double* %712, align 8
  store double %713, double* %74, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %714 = add i64 %710, 10
  store i64 %714, i64* %PC, align 8
  %715 = load double, double* %712, align 8
  %716 = fmul double %713, %715
  store double %716, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %717 = add i64 %708, -40
  %718 = add i64 %710, 15
  store i64 %718, i64* %PC, align 8
  %719 = inttoptr i64 %717 to double*
  store double %716, double* %719, align 8
  %720 = load i64, i64* %RBP, align 8
  %721 = add i64 %720, -24
  %722 = load i64, i64* %PC, align 8
  %723 = add i64 %722, 5
  store i64 %723, i64* %PC, align 8
  %724 = inttoptr i64 %721 to double*
  %725 = load double, double* %724, align 8
  store double %725, double* %74, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %726 = load double, double* bitcast (%A6_type* @A6 to double*), align 8
  store double %726, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %727 = add i64 %720, -40
  %728 = add i64 %722, 19
  store i64 %728, i64* %PC, align 8
  %729 = inttoptr i64 %727 to double*
  %730 = load double, double* %729, align 8
  %731 = fmul double %726, %730
  %732 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %733 = fadd double %731, %732
  store double %733, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %734 = add i64 %722, 33
  store i64 %734, i64* %PC, align 8
  %735 = load double, double* %729, align 8
  %736 = fmul double %733, %735
  %737 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %738 = fadd double %736, %737
  store double %738, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %739 = add i64 %722, 47
  store i64 %739, i64* %PC, align 8
  %740 = load double, double* %729, align 8
  %741 = fmul double %738, %740
  %742 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %743 = fadd double %741, %742
  store double %743, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %744 = add i64 %722, 61
  store i64 %744, i64* %PC, align 8
  %745 = load double, double* %729, align 8
  %746 = fmul double %743, %745
  %747 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %748 = fadd double %746, %747
  store double %748, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %749 = add i64 %722, 75
  store i64 %749, i64* %PC, align 8
  %750 = load double, double* %729, align 8
  %751 = fmul double %748, %750
  %752 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %753 = fadd double %751, %752
  store double %753, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %754 = add i64 %722, 89
  store i64 %754, i64* %PC, align 8
  %755 = load double, double* %729, align 8
  %756 = fmul double %753, %755
  %757 = load double, double* bitcast (%one_type* @one to double*), align 8
  %758 = fadd double %756, %757
  store double %758, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %759 = fmul double %725, %758
  store double %759, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %760 = add i64 %720, -32
  %761 = add i64 %722, 107
  store i64 %761, i64* %PC, align 8
  %762 = inttoptr i64 %760 to double*
  store double %759, double* %762, align 8
  %763 = load i64, i64* %RBP, align 8
  %764 = add i64 %763, -16
  %765 = load i64, i64* %PC, align 8
  %766 = add i64 %765, 5
  store i64 %766, i64* %PC, align 8
  %767 = inttoptr i64 %764 to i64*
  %768 = load i64, i64* %767, align 8
  store i64 %768, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %769 = add i64 %763, -32
  %770 = add i64 %765, 10
  store i64 %770, i64* %PC, align 8
  %771 = inttoptr i64 %769 to i64*
  %772 = load i64, i64* %771, align 8
  store i64 %772, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %773 = add i64 %763, -40
  %774 = add i64 %765, 15
  store i64 %774, i64* %PC, align 8
  %775 = inttoptr i64 %773 to double*
  %776 = load double, double* %775, align 8
  store double %776, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %777 = add i64 %765, 20
  store i64 %777, i64* %PC, align 8
  %778 = load double, double* %775, align 8
  store double %778, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %779 = add i64 %765, 25
  store i64 %779, i64* %PC, align 8
  %780 = load double, double* %775, align 8
  store double %780, double* %96, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %781 = add i64 %765, 30
  store i64 %781, i64* %PC, align 8
  %782 = load double, double* %775, align 8
  store double %782, double* %101, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %783 = add i64 %765, 35
  store i64 %783, i64* %PC, align 8
  %784 = load double, double* %775, align 8
  store double %784, double* %106, align 1, !tbaa !2451
  store double 0.000000e+00, double* %109, align 1, !tbaa !2451
  %785 = load double, double* bitcast (%B6_type* @B6 to double*), align 8
  store double %785, double* %121, align 1, !tbaa !2451
  store double 0.000000e+00, double* %209, align 1, !tbaa !2451
  %786 = add i64 %765, 49
  store i64 %786, i64* %PC, align 8
  %787 = load double, double* %775, align 8
  %788 = fmul double %785, %787
  %789 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %790 = fadd double %788, %789
  store double %790, double* %121, align 1, !tbaa !2451
  store i64 0, i64* %208, align 1, !tbaa !2451
  %791 = fmul double %784, %790
  %792 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %793 = fadd double %791, %792
  store double %793, double* %106, align 1, !tbaa !2451
  store i64 0, i64* %108, align 1, !tbaa !2451
  %794 = fmul double %782, %793
  %795 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %796 = fadd double %794, %795
  store double %796, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %797 = fmul double %780, %796
  %798 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %799 = fadd double %797, %798
  store double %799, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %800 = fmul double %778, %799
  %801 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %802 = fadd double %800, %801
  store double %802, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %803 = fmul double %776, %802
  %804 = load double, double* bitcast (%one_type* @one to double*), align 8
  %805 = fadd double %803, %804
  store double %805, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %806 = load double, double* %80, align 1
  %807 = fmul double %806, %805
  store double %807, double* %80, align 1, !tbaa !2451
  %808 = load double, double* %74, align 1
  %809 = fadd double %808, %807
  store double %809, double* %74, align 1, !tbaa !2451
  %810 = load i64, i64* %RBP, align 8
  %811 = add i64 %810, -16
  %812 = add i64 %765, 136
  store i64 %812, i64* %PC, align 8
  %813 = inttoptr i64 %811 to double*
  store double %809, double* %813, align 8
  %814 = load i64, i64* %RBP, align 8
  %815 = add i64 %814, -72
  %816 = load i64, i64* %PC, align 8
  %817 = add i64 %816, 4
  store i64 %817, i64* %PC, align 8
  %818 = inttoptr i64 %815 to i64*
  %819 = load i64, i64* %818, align 8
  %820 = add i64 %819, 1
  store i64 %820, i64* %RAX, align 8, !tbaa !2428
  %821 = icmp eq i64 %819, -1
  %822 = icmp eq i64 %820, 0
  %823 = or i1 %821, %822
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %23, align 1, !tbaa !2432
  %825 = trunc i64 %820 to i32
  %826 = and i32 %825, 255
  %827 = tail call i32 @llvm.ctpop.i32(i32 %826) #8
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  %830 = xor i8 %829, 1
  store i8 %830, i8* %30, align 1, !tbaa !2446
  %831 = xor i64 %819, %820
  %832 = lshr i64 %831, 4
  %833 = trunc i64 %832 to i8
  %834 = and i8 %833, 1
  store i8 %834, i8* %35, align 1, !tbaa !2450
  %835 = zext i1 %822 to i8
  store i8 %835, i8* %38, align 1, !tbaa !2447
  %836 = lshr i64 %820, 63
  %837 = trunc i64 %836 to i8
  store i8 %837, i8* %41, align 1, !tbaa !2448
  %838 = lshr i64 %819, 63
  %839 = xor i64 %836, %838
  %840 = add nuw nsw i64 %839, %836
  %841 = icmp eq i64 %840, 2
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %47, align 1, !tbaa !2449
  %843 = add i64 %816, 12
  store i64 %843, i64* %PC, align 8
  store i64 %820, i64* %818, align 8
  %844 = load i64, i64* %PC, align 8
  %845 = add i64 %844, -310
  store i64 %845, i64* %PC, align 8, !tbaa !2428
  br label %block_4018d9

block_401ccb:                                     ; preds = %block_401ce0, %block_401a14
  %846 = phi i64 [ %2865, %block_401ce0 ], [ %.pre18, %block_401a14 ]
  %847 = load i64, i64* %RBP, align 8
  %848 = add i64 %847, -72
  %849 = add i64 %846, 4
  store i64 %849, i64* %PC, align 8
  %850 = inttoptr i64 %848 to i64*
  %851 = load i64, i64* %850, align 8
  store i64 %851, i64* %RAX, align 8, !tbaa !2428
  %852 = add i64 %847, -80
  %853 = add i64 %846, 8
  store i64 %853, i64* %PC, align 8
  %854 = inttoptr i64 %852 to i64*
  %855 = load i64, i64* %854, align 8
  %856 = add i64 %855, -1
  store i64 %856, i64* %RCX, align 8, !tbaa !2428
  %857 = lshr i64 %856, 63
  %858 = sub i64 %851, %856
  %859 = icmp ult i64 %851, %856
  %860 = zext i1 %859 to i8
  store i8 %860, i8* %23, align 1, !tbaa !2432
  %861 = trunc i64 %858 to i32
  %862 = and i32 %861, 255
  %863 = tail call i32 @llvm.ctpop.i32(i32 %862) #8
  %864 = trunc i32 %863 to i8
  %865 = and i8 %864, 1
  %866 = xor i8 %865, 1
  store i8 %866, i8* %30, align 1, !tbaa !2446
  %867 = xor i64 %856, %851
  %868 = xor i64 %867, %858
  %869 = lshr i64 %868, 4
  %870 = trunc i64 %869 to i8
  %871 = and i8 %870, 1
  store i8 %871, i8* %35, align 1, !tbaa !2450
  %872 = icmp eq i64 %858, 0
  %873 = zext i1 %872 to i8
  store i8 %873, i8* %38, align 1, !tbaa !2447
  %874 = lshr i64 %858, 63
  %875 = trunc i64 %874 to i8
  store i8 %875, i8* %41, align 1, !tbaa !2448
  %876 = lshr i64 %851, 63
  %877 = xor i64 %857, %876
  %878 = xor i64 %874, %876
  %879 = add nuw nsw i64 %878, %877
  %880 = icmp eq i64 %879, 2
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %47, align 1, !tbaa !2449
  %882 = icmp ne i8 %875, 0
  %883 = xor i1 %882, %880
  %.demorgan38 = or i1 %872, %883
  %.v39 = select i1 %.demorgan38, i64 21, i64 156
  %884 = add i64 %846, %.v39
  store i64 %884, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan38, label %block_401ce0, label %block_401d67

block_4020c8:                                     ; preds = %block_401f8c
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %885 = add i64 %2767, 1320
  %886 = add i64 %2767, 15
  %887 = load i64, i64* %RSP, align 8, !tbaa !2428
  %888 = add i64 %887, -8
  %889 = inttoptr i64 %888 to i64*
  store i64 %886, i64* %889, align 8
  store i64 %888, i64* %RSP, align 8, !tbaa !2428
  store i64 %885, i64* %PC, align 8, !tbaa !2428
  %890 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %885, %struct.Memory* %493)
  %891 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 642), i64* %RDI, align 8, !tbaa !2428
  %892 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to i64*), align 8
  store i64 %892, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %893 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 224) to i64*), align 16
  store i64 %893, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %894 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 232) to i64*), align 8
  store i64 %894, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %895 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %896 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %897 = fmul double %895, %896
  %898 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %899 = fsub double %897, %898
  store double %899, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %900 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %901 = load double, double* bitcast (%three_type* @three to double*), align 8
  %902 = fdiv double %900, %901
  store double %902, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %903 = load i64, i64* %RBP, align 8
  %904 = add i64 %903, -24
  %905 = add i64 %891, 93
  store i64 %905, i64* %PC, align 8
  %906 = inttoptr i64 %904 to double*
  store double %902, double* %906, align 8
  %907 = load i64, i64* %RBP, align 8
  %908 = add i64 %907, -24
  %909 = load i64, i64* %PC, align 8
  %910 = add i64 %909, 5
  store i64 %910, i64* %PC, align 8
  %911 = inttoptr i64 %908 to double*
  %912 = load double, double* %911, align 8
  store double %912, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %913 = add i64 %909, 10
  store i64 %913, i64* %PC, align 8
  %914 = load double, double* %911, align 8
  %915 = fmul double %912, %914
  store double %915, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %916 = add i64 %907, -40
  %917 = add i64 %909, 15
  store i64 %917, i64* %PC, align 8
  %918 = inttoptr i64 %916 to double*
  store double %915, double* %918, align 8
  %919 = load i64, i64* %RBP, align 8
  %920 = add i64 %919, -24
  %921 = load i64, i64* %PC, align 8
  %922 = add i64 %921, 5
  store i64 %922, i64* %PC, align 8
  %923 = inttoptr i64 %920 to double*
  %924 = load double, double* %923, align 8
  store double %924, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %925 = load double, double* bitcast (%A6_type* @A6 to double*), align 8
  store double %925, double* %96, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %926 = add i64 %919, -40
  %927 = add i64 %921, 19
  store i64 %927, i64* %PC, align 8
  %928 = inttoptr i64 %926 to double*
  %929 = load double, double* %928, align 8
  %930 = fmul double %925, %929
  %931 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %932 = fadd double %930, %931
  store double %932, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %933 = add i64 %921, 33
  store i64 %933, i64* %PC, align 8
  %934 = load double, double* %928, align 8
  %935 = fmul double %932, %934
  %936 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %937 = fadd double %935, %936
  store double %937, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %938 = add i64 %921, 47
  store i64 %938, i64* %PC, align 8
  %939 = load double, double* %928, align 8
  %940 = fmul double %937, %939
  %941 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %942 = fadd double %940, %941
  store double %942, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %943 = add i64 %921, 61
  store i64 %943, i64* %PC, align 8
  %944 = load double, double* %928, align 8
  %945 = fmul double %942, %944
  %946 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %947 = fadd double %945, %946
  store double %947, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %948 = add i64 %921, 75
  store i64 %948, i64* %PC, align 8
  %949 = load double, double* %928, align 8
  %950 = fmul double %947, %949
  %951 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %952 = fadd double %950, %951
  store double %952, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %953 = add i64 %921, 89
  store i64 %953, i64* %PC, align 8
  %954 = load double, double* %928, align 8
  %955 = fmul double %952, %954
  %956 = load double, double* bitcast (%one_type* @one to double*), align 8
  %957 = fadd double %955, %956
  store double %957, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %958 = fmul double %924, %957
  store double %958, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  store double %958, double* bitcast (%sa_type* @sa to double*), align 8
  %959 = add i64 %921, 116
  store i64 %959, i64* %PC, align 8
  %960 = load double, double* %928, align 8
  store double %960, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %961 = load i64, i64* %RBP, align 8
  %962 = add i64 %961, -40
  %963 = add i64 %921, 121
  store i64 %963, i64* %PC, align 8
  %964 = inttoptr i64 %962 to double*
  %965 = load double, double* %964, align 8
  store double %965, double* %96, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %966 = add i64 %921, 126
  store i64 %966, i64* %PC, align 8
  %967 = load double, double* %964, align 8
  store double %967, double* %101, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %968 = add i64 %921, 131
  store i64 %968, i64* %PC, align 8
  %969 = load double, double* %964, align 8
  store double %969, double* %106, align 1, !tbaa !2451
  store double 0.000000e+00, double* %109, align 1, !tbaa !2451
  %970 = add i64 %921, 136
  store i64 %970, i64* %PC, align 8
  %971 = load double, double* %964, align 8
  store double %971, double* %121, align 1, !tbaa !2451
  store double 0.000000e+00, double* %209, align 1, !tbaa !2451
  %972 = load double, double* bitcast (%B6_type* @B6 to double*), align 8
  store double %972, double* %1987, align 1, !tbaa !2451
  store double 0.000000e+00, double* %1989, align 1, !tbaa !2451
  %973 = add i64 %921, 152
  store i64 %973, i64* %PC, align 8
  %974 = load double, double* %964, align 8
  %975 = fmul double %972, %974
  %976 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %977 = fadd double %975, %976
  store double %977, double* %1987, align 1, !tbaa !2451
  store i64 0, i64* %1988, align 1, !tbaa !2451
  %978 = fmul double %971, %977
  %979 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %980 = fadd double %978, %979
  store double %980, double* %121, align 1, !tbaa !2451
  store i64 0, i64* %208, align 1, !tbaa !2451
  %981 = fmul double %969, %980
  %982 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %983 = fadd double %981, %982
  store double %983, double* %106, align 1, !tbaa !2451
  store i64 0, i64* %108, align 1, !tbaa !2451
  %984 = fmul double %967, %983
  %985 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %986 = fadd double %984, %985
  store double %986, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %987 = fmul double %965, %986
  %988 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %989 = fadd double %987, %988
  store double %989, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %990 = fmul double %960, %989
  %991 = load double, double* bitcast (%one_type* @one to double*), align 8
  %992 = fadd double %990, %991
  store double %992, double* bitcast (%sb_type* @sb to double*), align 8
  %993 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %994 = fmul double %993, %992
  %995 = fmul double %994, %992
  store double %995, double* bitcast (%sa_type* @sa to double*), align 8
  %996 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %997 = load double, double* %86, align 1
  %998 = fdiv double %996, %997
  store double %998, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  store double %998, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 200) to double*), align 8
  %999 = load i64, i64* %RBP, align 8
  %1000 = add i64 %999, -48
  %1001 = add i64 %921, 300
  store i64 %1001, i64* %PC, align 8
  %1002 = inttoptr i64 %1000 to double*
  %1003 = load double, double* %1002, align 8
  store double %1003, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %1004 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  store double %1004, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %1005 = load double, double* bitcast (%two_type* @two to double*), align 8
  store double %1005, double* %96, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %1006 = add i64 %999, -16
  %1007 = add i64 %921, 323
  store i64 %1007, i64* %PC, align 8
  %1008 = inttoptr i64 %1006 to double*
  %1009 = load double, double* %1008, align 8
  %1010 = fmul double %1005, %1009
  store double %1010, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %1011 = fadd double %1004, %1010
  store double %1011, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %1012 = fmul double %1003, %1011
  %1013 = fdiv double %1012, %1005
  store double %1013, double* bitcast (%sa_type* @sa to double*), align 8
  %1014 = load double, double* %80, align 1
  store double %1014, double* bitcast (%sb_type* @sb to double*), align 8
  %1015 = fsub double %1013, %1014
  store double %1015, double* bitcast (%sc_type* @sc to double*), align 8
  %1016 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1017 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 200) to double*), align 8
  %1018 = fdiv double %1016, %1017
  store double %1018, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 208) to double*), align 16
  %1019 = load <2 x i32>, <2 x i32>* %1483, align 1
  %1020 = load <2 x i32>, <2 x i32>* %1485, align 1
  %1021 = extractelement <2 x i32> %1019, i32 0
  store i32 %1021, i32* %1488, align 1, !tbaa !2455
  %1022 = extractelement <2 x i32> %1019, i32 1
  store i32 %1022, i32* %1491, align 1, !tbaa !2455
  %1023 = extractelement <2 x i32> %1020, i32 0
  store i32 %1023, i32* %1493, align 1, !tbaa !2455
  %1024 = extractelement <2 x i32> %1020, i32 1
  store i32 %1024, i32* %1496, align 1, !tbaa !2455
  %1025 = load double, double* %80, align 1
  %1026 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %1027 = fmul double %1025, %1026
  store double %1027, double* %80, align 1, !tbaa !2451
  store i32 %1021, i32* %1500, align 1, !tbaa !2455
  store i32 %1022, i32* %1502, align 1, !tbaa !2455
  store i32 %1023, i32* %1503, align 1, !tbaa !2455
  store i32 %1024, i32* %1505, align 1, !tbaa !2455
  %1028 = load double, double* %86, align 1
  %1029 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %1030 = fmul double %1028, %1029
  store double %1030, double* %86, align 1, !tbaa !2451
  %1031 = bitcast <2 x i32> %1019 to double
  %1032 = fmul double %1031, %1018
  %1033 = load i64, i64* %RBP, align 8
  %1034 = add i64 %1033, -304
  %1035 = add i64 %921, 453
  store i64 %1035, i64* %PC, align 8
  %1036 = inttoptr i64 %1034 to double*
  store double %1032, double* %1036, align 8
  %1037 = load i64, i64* %PC, align 8
  %1038 = load <2 x i32>, <2 x i32>* %1516, align 1
  %1039 = load <2 x i32>, <2 x i32>* %1518, align 1
  %1040 = extractelement <2 x i32> %1038, i32 0
  store i32 %1040, i32* %187, align 1, !tbaa !2455
  %1041 = extractelement <2 x i32> %1038, i32 1
  store i32 %1041, i32* %189, align 1, !tbaa !2455
  %1042 = extractelement <2 x i32> %1039, i32 0
  store i32 %1042, i32* %190, align 1, !tbaa !2455
  %1043 = extractelement <2 x i32> %1039, i32 1
  store i32 %1043, i32* %192, align 1, !tbaa !2455
  %1044 = load <2 x i32>, <2 x i32>* %1524, align 1
  %1045 = load <2 x i32>, <2 x i32>* %1526, align 1
  %1046 = extractelement <2 x i32> %1044, i32 0
  store i32 %1046, i32* %1488, align 1, !tbaa !2455
  %1047 = extractelement <2 x i32> %1044, i32 1
  store i32 %1047, i32* %1491, align 1, !tbaa !2455
  %1048 = extractelement <2 x i32> %1045, i32 0
  store i32 %1048, i32* %1493, align 1, !tbaa !2455
  %1049 = extractelement <2 x i32> %1045, i32 1
  store i32 %1049, i32* %1496, align 1, !tbaa !2455
  %1050 = load i64, i64* %RBP, align 8
  %1051 = add i64 %1050, -304
  %1052 = add i64 %1037, 14
  store i64 %1052, i64* %PC, align 8
  %1053 = inttoptr i64 %1051 to i64*
  %1054 = load i64, i64* %1053, align 8
  store i64 %1054, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %1055 = add i64 %1050, -308
  %1056 = load i32, i32* %EAX, align 4
  %1057 = add i64 %1037, 20
  store i64 %1057, i64* %PC, align 8
  %1058 = inttoptr i64 %1055 to i32*
  store i32 %1056, i32* %1058, align 4
  %1059 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %1060 = add i64 %1059, -7916
  %1061 = add i64 %1059, 7
  %1062 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1063 = add i64 %1062, -8
  %1064 = inttoptr i64 %1063 to i64*
  store i64 %1061, i64* %1064, align 8
  store i64 %1063, i64* %RSP, align 8, !tbaa !2428
  store i64 %1060, i64* %PC, align 8, !tbaa !2428
  %1065 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %890)
  %1066 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 304), i64* %RDI, align 8, !tbaa !2428
  %1067 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 192) to i64*), align 16
  store i64 %1067, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %1068 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 200) to i64*), align 8
  store i64 %1068, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %1069 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 208) to i64*), align 16
  store i64 %1069, i64* %87, align 1, !tbaa !2451
  %1070 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 216) to double*), align 8
  %1071 = load double, double* bitcast (%five_type* @five to double*), align 8
  %1072 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 48) to double*), align 16
  %1073 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to double*), align 8
  %1074 = fsub double %1072, %1073
  store double %1074, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %1075 = fmul double %1071, %1074
  %1076 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %1077 = fadd double %1075, %1076
  %1078 = fdiv double %1077, %1070
  store double %1078, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 216) to double*), align 8
  %1079 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1080 = fdiv double %1079, %1078
  store double %1080, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 224) to double*), align 16
  %1081 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %1082 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %1083 = fadd double %1081, %1082
  %1084 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %1085 = fadd double %1083, %1084
  %1086 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %1087 = fadd double %1085, %1086
  %1088 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %1089 = fadd double %1087, %1088
  store double %1089, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 232) to double*), align 8
  %1090 = load double, double* bitcast (%four_type* @four to double*), align 8
  %1091 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 168) to double*), align 8
  %1092 = fmul double %1090, %1091
  store double %1092, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %1093 = fadd double %1089, %1092
  %1094 = load double, double* %86, align 1
  %1095 = fdiv double %1093, %1094
  store double %1095, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  store double %1095, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 232) to double*), align 8
  %1096 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1097 = fdiv double %1096, %1095
  store double %1097, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 240) to double*), align 16
  %1098 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %1099 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %1100 = fadd double %1098, %1099
  %1101 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %1102 = fadd double %1100, %1101
  %1103 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %1104 = fadd double %1102, %1103
  %1105 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %1106 = fadd double %1104, %1105
  store double %1106, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 248) to double*), align 8
  %1107 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 168) to double*), align 8
  %1108 = fadd double %1106, %1107
  %1109 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %1110 = fadd double %1108, %1109
  %1111 = load double, double* %80, align 1
  %1112 = fdiv double %1110, %1111
  store double %1112, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  store double %1112, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 248) to double*), align 8
  %1113 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1114 = fdiv double %1113, %1112
  store double %1114, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 256) to double*), align 16
  %1115 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %1116 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %1117 = fadd double %1115, %1116
  %1118 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %1119 = fadd double %1117, %1118
  %1120 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %1121 = fadd double %1119, %1120
  %1122 = load double, double* %74, align 1
  %1123 = fdiv double %1121, %1122
  store double %1123, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  store double %1123, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 264) to double*), align 8
  %1124 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1125 = fdiv double %1124, %1123
  store double %1125, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  store double %1125, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 272) to double*), align 16
  %1126 = load i64, i64* %RBP, align 8
  %1127 = add i64 %1126, -312
  %1128 = load i32, i32* %EAX, align 4
  %1129 = add i64 %1066, 450
  store i64 %1129, i64* %PC, align 8
  %1130 = inttoptr i64 %1127 to i32*
  store i32 %1128, i32* %1130, align 4
  %1131 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %1132 = add i64 %1131, -8373
  %1133 = add i64 %1131, 7
  %1134 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1135 = add i64 %1134, -8
  %1136 = inttoptr i64 %1135 to i64*
  store i64 %1133, i64* %1136, align 8
  store i64 %1135, i64* %RSP, align 8, !tbaa !2428
  store i64 %1132, i64* %PC, align 8, !tbaa !2428
  %1137 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1065)
  %1138 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 678), i64* %RDI, align 8, !tbaa !2428
  %1139 = load i64, i64* %RBP, align 8
  %1140 = add i64 %1139, -80
  %1141 = add i64 %1138, 14
  store i64 %1141, i64* %PC, align 8
  %1142 = inttoptr i64 %1140 to i64*
  %1143 = load i64, i64* %1142, align 8
  store i64 %1143, i64* %RSI, align 8, !tbaa !2428
  %1144 = add i64 %1139, -316
  %1145 = load i32, i32* %EAX, align 4
  %1146 = add i64 %1138, 20
  store i64 %1146, i64* %PC, align 8
  %1147 = inttoptr i64 %1144 to i32*
  store i32 %1145, i32* %1147, align 4
  %1148 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2453
  %1149 = add i64 %1148, -8400
  %1150 = add i64 %1148, 7
  %1151 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1152 = add i64 %1151, -8
  %1153 = inttoptr i64 %1152 to i64*
  store i64 %1150, i64* %1153, align 8
  store i64 %1152, i64* %RSP, align 8, !tbaa !2428
  store i64 %1149, i64* %PC, align 8, !tbaa !2428
  %1154 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1137)
  %1155 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 706), i64* %RDI, align 8, !tbaa !2428
  %1156 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to double*), align 8
  %1157 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %1158 = fmul double %1156, %1157
  store double %1158, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %1159 = load i64, i64* %RBP, align 8
  %1160 = add i64 %1159, -320
  %1161 = load i32, i32* %EAX, align 4
  %1162 = add i64 %1155, 33
  store i64 %1162, i64* %PC, align 8
  %1163 = inttoptr i64 %1160 to i32*
  store i32 %1161, i32* %1163, align 4
  %1164 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %1165 = add i64 %1164, -8440
  %1166 = add i64 %1164, 7
  %1167 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1168 = add i64 %1167, -8
  %1169 = inttoptr i64 %1168 to i64*
  store i64 %1166, i64* %1169, align 8
  store i64 %1168, i64* %RSP, align 8, !tbaa !2428
  store i64 %1165, i64* %PC, align 8, !tbaa !2428
  %1170 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1154)
  %1171 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 736), i64* %RDI, align 8, !tbaa !2428
  %1172 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to double*), align 8
  %1173 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 224) to double*), align 16
  %1174 = fmul double %1172, %1173
  store double %1174, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %1175 = load i64, i64* %RBP, align 8
  %1176 = add i64 %1175, -324
  %1177 = load i32, i32* %EAX, align 4
  %1178 = add i64 %1171, 33
  store i64 %1178, i64* %PC, align 8
  %1179 = inttoptr i64 %1176 to i32*
  store i32 %1177, i32* %1179, align 4
  %1180 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %1181 = add i64 %1180, -8480
  %1182 = add i64 %1180, 7
  %1183 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1184 = add i64 %1183, -8
  %1185 = inttoptr i64 %1184 to i64*
  store i64 %1182, i64* %1185, align 8
  store i64 %1184, i64* %RSP, align 8, !tbaa !2428
  store i64 %1181, i64* %PC, align 8, !tbaa !2428
  %1186 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1170)
  %1187 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 766), i64* %RDI, align 8, !tbaa !2428
  %1188 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to double*), align 8
  %1189 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 240) to double*), align 16
  %1190 = fmul double %1188, %1189
  store double %1190, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %1191 = load i64, i64* %RBP, align 8
  %1192 = add i64 %1191, -328
  %1193 = load i32, i32* %EAX, align 4
  %1194 = add i64 %1187, 33
  store i64 %1194, i64* %PC, align 8
  %1195 = inttoptr i64 %1192 to i32*
  store i32 %1193, i32* %1195, align 4
  %1196 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %1197 = add i64 %1196, -8520
  %1198 = add i64 %1196, 7
  %1199 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1200 = add i64 %1199, -8
  %1201 = inttoptr i64 %1200 to i64*
  store i64 %1198, i64* %1201, align 8
  store i64 %1200, i64* %RSP, align 8, !tbaa !2428
  store i64 %1197, i64* %PC, align 8, !tbaa !2428
  %1202 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1186)
  %1203 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 796), i64* %RDI, align 8, !tbaa !2428
  %1204 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to double*), align 8
  %1205 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 256) to double*), align 16
  %1206 = fmul double %1204, %1205
  store double %1206, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %1207 = load i64, i64* %RBP, align 8
  %1208 = add i64 %1207, -332
  %1209 = load i32, i32* %EAX, align 4
  %1210 = add i64 %1203, 33
  store i64 %1210, i64* %PC, align 8
  %1211 = inttoptr i64 %1208 to i32*
  store i32 %1209, i32* %1211, align 4
  %1212 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %1213 = add i64 %1212, -8560
  %1214 = add i64 %1212, 7
  %1215 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1216 = add i64 %1215, -8
  %1217 = inttoptr i64 %1216 to i64*
  store i64 %1214, i64* %1217, align 8
  store i64 %1216, i64* %RSP, align 8, !tbaa !2428
  store i64 %1213, i64* %PC, align 8, !tbaa !2428
  %1218 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1202)
  %1219 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 826), i64* %RDI, align 8, !tbaa !2428
  %1220 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to double*), align 8
  %1221 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 272) to double*), align 16
  %1222 = fmul double %1220, %1221
  store double %1222, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %1223 = load i64, i64* %RBP, align 8
  %1224 = add i64 %1223, -336
  %1225 = load i32, i32* %EAX, align 4
  %1226 = add i64 %1219, 33
  store i64 %1226, i64* %PC, align 8
  %1227 = inttoptr i64 %1224 to i32*
  store i32 %1225, i32* %1227, align 4
  %1228 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2453
  %1229 = add i64 %1228, -8600
  %1230 = add i64 %1228, 7
  %1231 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1232 = add i64 %1231, -8
  %1233 = inttoptr i64 %1232 to i64*
  store i64 %1230, i64* %1233, align 8
  store i64 %1232, i64* %RSP, align 8, !tbaa !2428
  store i64 %1229, i64* %PC, align 8, !tbaa !2428
  %1234 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1218)
  %1235 = load i64, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  %1236 = load i64, i64* %RBP, align 8
  %1237 = add i64 %1236, -340
  %1238 = load i32, i32* %EAX, align 4
  %1239 = add i64 %1235, 8
  store i64 %1239, i64* %PC, align 8
  %1240 = inttoptr i64 %1237 to i32*
  store i32 %1238, i32* %1240, align 4
  %1241 = load i32, i32* %ECX, align 4
  %1242 = zext i32 %1241 to i64
  %1243 = load i64, i64* %PC, align 8
  store i64 %1242, i64* %RAX, align 8, !tbaa !2428
  %1244 = load i64, i64* %RSP, align 8
  %1245 = add i64 %1244, 352
  store i64 %1245, i64* %RSP, align 8, !tbaa !2428
  %1246 = icmp ugt i64 %1244, -353
  %1247 = zext i1 %1246 to i8
  store i8 %1247, i8* %23, align 1, !tbaa !2432
  %1248 = trunc i64 %1245 to i32
  %1249 = and i32 %1248, 255
  %1250 = tail call i32 @llvm.ctpop.i32(i32 %1249) #8
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  %1253 = xor i8 %1252, 1
  store i8 %1253, i8* %30, align 1, !tbaa !2446
  %1254 = xor i64 %1244, %1245
  %1255 = lshr i64 %1254, 4
  %1256 = trunc i64 %1255 to i8
  %1257 = and i8 %1256, 1
  store i8 %1257, i8* %35, align 1, !tbaa !2450
  %1258 = icmp eq i64 %1245, 0
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %38, align 1, !tbaa !2447
  %1260 = lshr i64 %1245, 63
  %1261 = trunc i64 %1260 to i8
  store i8 %1261, i8* %41, align 1, !tbaa !2448
  %1262 = lshr i64 %1244, 63
  %1263 = xor i64 %1260, %1262
  %1264 = add nuw nsw i64 %1263, %1260
  %1265 = icmp eq i64 %1264, 2
  %1266 = zext i1 %1265 to i8
  store i8 %1266, i8* %47, align 1, !tbaa !2449
  %1267 = add i64 %1243, 10
  store i64 %1267, i64* %PC, align 8
  %1268 = add i64 %1244, 360
  %1269 = inttoptr i64 %1245 to i64*
  %1270 = load i64, i64* %1269, align 8
  store i64 %1270, i64* %RBP, align 8, !tbaa !2428
  store i64 %1268, i64* %RSP, align 8, !tbaa !2428
  %1271 = add i64 %1243, 11
  store i64 %1271, i64* %PC, align 8
  %1272 = inttoptr i64 %1268 to i64*
  %1273 = load i64, i64* %1272, align 8
  store i64 %1273, i64* %PC, align 8, !tbaa !2428
  %1274 = add i64 %1244, 368
  store i64 %1274, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %1234

block_40086f:                                     ; preds = %block_400844
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %1275 = add i64 %1360, 7553
  %1276 = add i64 %1360, 15
  %1277 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1278 = add i64 %1277, -8
  %1279 = inttoptr i64 %1278 to i64*
  store i64 %1276, i64* %1279, align 8
  store i64 %1278, i64* %RSP, align 8, !tbaa !2428
  store i64 %1275, i64* %PC, align 8, !tbaa !2428
  %1280 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %1275, %struct.Memory* %3208)
  %1281 = load i64, i64* %PC, align 8
  store i32 0, i32* %187, align 1, !tbaa !2454
  store i32 0, i32* %189, align 1, !tbaa !2454
  store i32 0, i32* %190, align 1, !tbaa !2454
  store i32 0, i32* %192, align 1, !tbaa !2454
  %1282 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %1283 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %1284 = fmul double %1282, %1283
  store double %1284, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  store double %1284, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %1285 = add i64 %1281, 39
  store i64 %1285, i64* %PC, align 8
  %1286 = load double, double* %74, align 1
  %1287 = fcmp uno double %1286, %1284
  br i1 %1287, label %1288, label %1298

; <label>:1288:                                   ; preds = %block_40086f
  %1289 = fadd double %1286, %1284
  %1290 = bitcast double %1289 to i64
  %1291 = and i64 %1290, 9221120237041090560
  %1292 = icmp eq i64 %1291, 9218868437227405312
  %1293 = and i64 %1290, 2251799813685247
  %1294 = icmp ne i64 %1293, 0
  %1295 = and i1 %1292, %1294
  br i1 %1295, label %1296, label %1304

; <label>:1296:                                   ; preds = %1288
  %1297 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1285, %struct.Memory* %1280) #9
  %.pre8 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

; <label>:1298:                                   ; preds = %block_40086f
  %1299 = fcmp ogt double %1286, %1284
  br i1 %1299, label %1304, label %1300

; <label>:1300:                                   ; preds = %1298
  %1301 = fcmp olt double %1286, %1284
  br i1 %1301, label %1304, label %1302

; <label>:1302:                                   ; preds = %1300
  %1303 = fcmp oeq double %1286, %1284
  br i1 %1303, label %1304, label %1308

; <label>:1304:                                   ; preds = %1302, %1300, %1298, %1288
  %1305 = phi i8 [ 0, %1298 ], [ 0, %1300 ], [ 1, %1302 ], [ 1, %1288 ]
  %1306 = phi i8 [ 0, %1298 ], [ 0, %1300 ], [ 0, %1302 ], [ 1, %1288 ]
  %1307 = phi i8 [ 0, %1298 ], [ 1, %1300 ], [ 0, %1302 ], [ 1, %1288 ]
  store i8 %1305, i8* %38, align 1, !tbaa !2453
  store i8 %1306, i8* %30, align 1, !tbaa !2453
  store i8 %1307, i8* %23, align 1, !tbaa !2453
  br label %1308

; <label>:1308:                                   ; preds = %1304, %1302
  store i8 0, i8* %47, align 1, !tbaa !2453
  store i8 0, i8* %41, align 1, !tbaa !2453
  store i8 0, i8* %35, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1: ; preds = %1308, %1296
  %1309 = phi i64 [ %.pre8, %1296 ], [ %1285, %1308 ]
  %1310 = phi %struct.Memory* [ %1297, %1296 ], [ %1280, %1308 ]
  %1311 = load i64, i64* %RBP, align 8
  %1312 = add i64 %1311, -128
  %1313 = load i32, i32* %EAX, align 4
  %1314 = add i64 %1309, 3
  store i64 %1314, i64* %PC, align 8
  %1315 = inttoptr i64 %1312 to i32*
  store i32 %1313, i32* %1315, align 4
  %1316 = load i64, i64* %PC, align 8
  %1317 = load i8, i8* %23, align 1, !tbaa !2432
  %1318 = load i8, i8* %38, align 1, !tbaa !2447
  %1319 = or i8 %1318, %1317
  %1320 = icmp ne i8 %1319, 0
  %.v24 = select i1 %1320, i64 18, i64 6
  %1321 = add i64 %1316, %.v24
  store i64 %1321, i64* %PC, align 8, !tbaa !2428
  br i1 %1320, label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1.block_4008ba_crit_edge, label %block_4008ae

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1.block_4008ba_crit_edge: ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %.pre9 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  br label %block_4008ba

block_400844:                                     ; preds = %block_400859, %block_400807
  %1322 = phi i64 [ %3859, %block_400859 ], [ %.pre7, %block_400807 ]
  %1323 = load i64, i64* %RBP, align 8
  %1324 = add i64 %1323, -72
  %1325 = add i64 %1322, 4
  store i64 %1325, i64* %PC, align 8
  %1326 = inttoptr i64 %1324 to i64*
  %1327 = load i64, i64* %1326, align 8
  store i64 %1327, i64* %RAX, align 8, !tbaa !2428
  %1328 = add i64 %1323, -88
  %1329 = add i64 %1322, 8
  store i64 %1329, i64* %PC, align 8
  %1330 = inttoptr i64 %1328 to i64*
  %1331 = load i64, i64* %1330, align 8
  %1332 = add i64 %1331, -1
  store i64 %1332, i64* %RCX, align 8, !tbaa !2428
  %1333 = lshr i64 %1332, 63
  %1334 = sub i64 %1327, %1332
  %1335 = icmp ult i64 %1327, %1332
  %1336 = zext i1 %1335 to i8
  store i8 %1336, i8* %23, align 1, !tbaa !2432
  %1337 = trunc i64 %1334 to i32
  %1338 = and i32 %1337, 255
  %1339 = tail call i32 @llvm.ctpop.i32(i32 %1338) #8
  %1340 = trunc i32 %1339 to i8
  %1341 = and i8 %1340, 1
  %1342 = xor i8 %1341, 1
  store i8 %1342, i8* %30, align 1, !tbaa !2446
  %1343 = xor i64 %1332, %1327
  %1344 = xor i64 %1343, %1334
  %1345 = lshr i64 %1344, 4
  %1346 = trunc i64 %1345 to i8
  %1347 = and i8 %1346, 1
  store i8 %1347, i8* %35, align 1, !tbaa !2450
  %1348 = icmp eq i64 %1334, 0
  %1349 = zext i1 %1348 to i8
  store i8 %1349, i8* %38, align 1, !tbaa !2447
  %1350 = lshr i64 %1334, 63
  %1351 = trunc i64 %1350 to i8
  store i8 %1351, i8* %41, align 1, !tbaa !2448
  %1352 = lshr i64 %1327, 63
  %1353 = xor i64 %1333, %1352
  %1354 = xor i64 %1350, %1352
  %1355 = add nuw nsw i64 %1354, %1353
  %1356 = icmp eq i64 %1355, 2
  %1357 = zext i1 %1356 to i8
  store i8 %1357, i8* %47, align 1, !tbaa !2449
  %1358 = icmp ne i8 %1351, 0
  %1359 = xor i1 %1358, %1356
  %.demorgan22 = or i1 %1348, %1359
  %.v23 = select i1 %.demorgan22, i64 21, i64 43
  %1360 = add i64 %1322, %.v23
  store i64 %1360, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan22, label %block_400859, label %block_40086f

block_400e60:                                     ; preds = %block_400c7a, %block_400e75
  %1361 = phi i64 [ %.pre14, %block_400c7a ], [ %1898, %block_400e75 ]
  %1362 = load i64, i64* %RBP, align 8
  %1363 = add i64 %1362, -72
  %1364 = add i64 %1361, 4
  store i64 %1364, i64* %PC, align 8
  %1365 = inttoptr i64 %1363 to i64*
  %1366 = load i64, i64* %1365, align 8
  store i64 %1366, i64* %RAX, align 8, !tbaa !2428
  %1367 = add i64 %1362, -80
  %1368 = add i64 %1361, 8
  store i64 %1368, i64* %PC, align 8
  %1369 = inttoptr i64 %1367 to i64*
  %1370 = load i64, i64* %1369, align 8
  %1371 = add i64 %1370, -1
  store i64 %1371, i64* %RCX, align 8, !tbaa !2428
  %1372 = lshr i64 %1371, 63
  %1373 = sub i64 %1366, %1371
  %1374 = icmp ult i64 %1366, %1371
  %1375 = zext i1 %1374 to i8
  store i8 %1375, i8* %23, align 1, !tbaa !2432
  %1376 = trunc i64 %1373 to i32
  %1377 = and i32 %1376, 255
  %1378 = tail call i32 @llvm.ctpop.i32(i32 %1377) #8
  %1379 = trunc i32 %1378 to i8
  %1380 = and i8 %1379, 1
  %1381 = xor i8 %1380, 1
  store i8 %1381, i8* %30, align 1, !tbaa !2446
  %1382 = xor i64 %1371, %1366
  %1383 = xor i64 %1382, %1373
  %1384 = lshr i64 %1383, 4
  %1385 = trunc i64 %1384 to i8
  %1386 = and i8 %1385, 1
  store i8 %1386, i8* %35, align 1, !tbaa !2450
  %1387 = icmp eq i64 %1373, 0
  %1388 = zext i1 %1387 to i8
  store i8 %1388, i8* %38, align 1, !tbaa !2447
  %1389 = lshr i64 %1373, 63
  %1390 = trunc i64 %1389 to i8
  store i8 %1390, i8* %41, align 1, !tbaa !2448
  %1391 = lshr i64 %1366, 63
  %1392 = xor i64 %1372, %1391
  %1393 = xor i64 %1389, %1391
  %1394 = add nuw nsw i64 %1393, %1392
  %1395 = icmp eq i64 %1394, 2
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %47, align 1, !tbaa !2449
  %1397 = icmp ne i8 %1390, 0
  %1398 = xor i1 %1397, %1395
  %.demorgan30 = or i1 %1387, %1398
  %.v31 = select i1 %.demorgan30, i64 21, i64 203
  %1399 = add i64 %1361, %.v31
  store i64 %1399, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan30, label %block_400e75, label %block_400f2b

block_4008ba:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1.block_4008ba_crit_edge, %block_4008ae
  %1400 = phi double [ %3830, %block_4008ae ], [ %.pre9, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1.block_4008ba_crit_edge ]
  %1401 = phi i64 [ %3829, %block_4008ae ], [ %1321, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1.block_4008ba_crit_edge ]
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 390), i64* %RDI, align 8, !tbaa !2428
  %1402 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to i64*), align 8
  store i64 %1402, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %1403 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 80) to i64*), align 16
  store i64 %1403, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %1404 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 88) to double*), align 8
  store double %1404, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %1405 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %1406 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %1407 = fmul double %1405, %1406
  %1408 = fsub double %1407, %1400
  store double %1408, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %1409 = load double, double* bitcast (%D1_0_type* @D1_0 to double*), align 8
  %1410 = load double, double* bitcast (%D2_0_type* @D2_0 to double*), align 8
  %1411 = fadd double %1409, %1410
  %1412 = load double, double* bitcast (%D3_type* @D3 to double*), align 8
  %1413 = fadd double %1411, %1412
  %1414 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1415 = fadd double %1414, %1409
  %1416 = load double, double* bitcast (%E2_0_type* @E2_0 to double*), align 8
  %1417 = fadd double %1415, %1416
  %1418 = load double, double* bitcast (%E3_type* @E3 to double*), align 8
  %1419 = fadd double %1417, %1418
  store double %1419, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %1420 = fdiv double %1413, %1419
  store double %1420, double* bitcast (%sa_type* @sa to double*), align 8
  store double %1409, double* bitcast (%sb_type* @sb to double*), align 8
  %1421 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %1422 = fdiv double %1421, %1404
  store double %1422, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  store double %1422, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 24) to double*), align 8
  %1423 = load i64, i64* %RBP, align 8
  %1424 = add i64 %1423, -48
  %1425 = add i64 %1401, 191
  store i64 %1425, i64* %PC, align 8
  %1426 = inttoptr i64 %1424 to double*
  %1427 = load double, double* %1426, align 8
  store double %1427, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %1428 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %1429 = load double, double* bitcast (%sb_type* @sb to double*), align 8
  %1430 = fadd double %1428, %1429
  store double %1430, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %1431 = load double, double* bitcast (%two_type* @two to double*), align 8
  store double %1431, double* %96, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %1432 = add i64 %1423, -16
  %1433 = add i64 %1401, 223
  store i64 %1433, i64* %PC, align 8
  %1434 = inttoptr i64 %1432 to double*
  %1435 = load double, double* %1434, align 8
  %1436 = fmul double %1431, %1435
  store double %1436, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %1437 = fadd double %1430, %1436
  store double %1437, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %1438 = fmul double %1427, %1437
  %1439 = fdiv double %1438, %1431
  store double %1439, double* bitcast (%sa_type* @sa to double*), align 8
  %1440 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1441 = fdiv double %1440, %1439
  store double %1441, double* bitcast (%sb_type* @sb to double*), align 8
  %1442 = tail call double @llvm.trunc.f64(double %1441) #8
  %1443 = tail call double @llvm.fabs.f64(double %1442) #8
  %1444 = fcmp ogt double %1443, 0x43E0000000000000
  %1445 = fptosi double %1442 to i64
  %1446 = select i1 %1444, i64 -9223372036854775808, i64 %1445
  %1447 = sext i64 %1446 to i128
  %1448 = and i128 %1447, -18446744073709551616
  %1449 = zext i64 %1446 to i128
  %1450 = or i128 %1448, %1449
  %1451 = mul nsw i128 %1450, 40000
  %1452 = trunc i128 %1451 to i64
  %1453 = sext i64 %1452 to i128
  %1454 = icmp ne i128 %1453, %1451
  %1455 = zext i1 %1454 to i8
  store i8 %1455, i8* %23, align 1, !tbaa !2432
  %1456 = trunc i128 %1451 to i32
  %1457 = and i32 %1456, 192
  %1458 = tail call i32 @llvm.ctpop.i32(i32 %1457) #8
  %1459 = trunc i32 %1458 to i8
  %1460 = and i8 %1459, 1
  %1461 = xor i8 %1460, 1
  store i8 %1461, i8* %30, align 1, !tbaa !2446
  store i8 0, i8* %35, align 1, !tbaa !2450
  store i8 0, i8* %38, align 1, !tbaa !2447
  %1462 = lshr i64 %1452, 63
  %1463 = trunc i64 %1462 to i8
  store i8 %1463, i8* %41, align 1, !tbaa !2448
  store i8 %1455, i8* %47, align 1, !tbaa !2449
  %1464 = sitofp i64 %1452 to double
  %1465 = load double, double* bitcast (%scale_type* @scale to double*), align 8
  %1466 = fdiv double %1464, %1465
  %1467 = tail call double @llvm.trunc.f64(double %1466) #8
  %1468 = tail call double @llvm.fabs.f64(double %1467) #8
  %1469 = fcmp ogt double %1468, 0x43E0000000000000
  %1470 = fptosi double %1467 to i64
  %1471 = select i1 %1469, i64 -9223372036854775808, i64 %1470
  store i64 %1471, i64* %RAX, align 8, !tbaa !2428
  %1472 = load i64, i64* %RBP, align 8
  %1473 = add i64 %1472, -88
  %1474 = add i64 %1401, 316
  store i64 %1474, i64* %PC, align 8
  %1475 = inttoptr i64 %1473 to i64*
  store i64 %1471, i64* %1475, align 8
  %1476 = load i64, i64* %PC, align 8
  %1477 = load double, double* bitcast (%sb_type* @sb to double*), align 8
  %1478 = load double, double* %80, align 1
  %1479 = fsub double %1477, %1478
  store double %1479, double* bitcast (%sc_type* @sc to double*), align 8
  %1480 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1481 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 24) to double*), align 8
  %1482 = fdiv double %1480, %1481
  store double %1482, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 32) to double*), align 16
  %1483 = bitcast [32 x %union.VectorReg]* %5 to <2 x i32>*
  %1484 = load <2 x i32>, <2 x i32>* %1483, align 1
  %1485 = bitcast i64* %76 to <2 x i32>*
  %1486 = load <2 x i32>, <2 x i32>* %1485, align 1
  %1487 = extractelement <2 x i32> %1484, i32 0
  %1488 = bitcast %union.VectorReg* %6 to i32*
  store i32 %1487, i32* %1488, align 1, !tbaa !2455
  %1489 = extractelement <2 x i32> %1484, i32 1
  %1490 = getelementptr inbounds i8, i8* %78, i64 4
  %1491 = bitcast i8* %1490 to i32*
  store i32 %1489, i32* %1491, align 1, !tbaa !2455
  %1492 = extractelement <2 x i32> %1486, i32 0
  %1493 = bitcast i64* %82 to i32*
  store i32 %1492, i32* %1493, align 1, !tbaa !2455
  %1494 = extractelement <2 x i32> %1486, i32 1
  %1495 = getelementptr inbounds i8, i8* %78, i64 12
  %1496 = bitcast i8* %1495 to i32*
  store i32 %1494, i32* %1496, align 1, !tbaa !2455
  %1497 = load double, double* %80, align 1
  %1498 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %1499 = fmul double %1497, %1498
  store double %1499, double* %80, align 1, !tbaa !2451
  %1500 = bitcast %union.VectorReg* %7 to i32*
  store i32 %1487, i32* %1500, align 1, !tbaa !2455
  %1501 = getelementptr inbounds i8, i8* %84, i64 4
  %1502 = bitcast i8* %1501 to i32*
  store i32 %1489, i32* %1502, align 1, !tbaa !2455
  %1503 = bitcast i64* %88 to i32*
  store i32 %1492, i32* %1503, align 1, !tbaa !2455
  %1504 = getelementptr inbounds i8, i8* %84, i64 12
  %1505 = bitcast i8* %1504 to i32*
  store i32 %1494, i32* %1505, align 1, !tbaa !2455
  %1506 = load double, double* %86, align 1
  %1507 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %1508 = fmul double %1506, %1507
  store double %1508, double* %86, align 1, !tbaa !2451
  %1509 = bitcast <2 x i32> %1484 to double
  %1510 = fmul double %1509, %1482
  %1511 = load i64, i64* %RBP, align 8
  %1512 = add i64 %1511, -136
  %1513 = add i64 %1476, 90
  store i64 %1513, i64* %PC, align 8
  %1514 = inttoptr i64 %1512 to double*
  store double %1510, double* %1514, align 8
  %1515 = load i64, i64* %PC, align 8
  %1516 = bitcast %union.VectorReg* %6 to <2 x i32>*
  %1517 = load <2 x i32>, <2 x i32>* %1516, align 1
  %1518 = bitcast i64* %82 to <2 x i32>*
  %1519 = load <2 x i32>, <2 x i32>* %1518, align 1
  %1520 = extractelement <2 x i32> %1517, i32 0
  store i32 %1520, i32* %187, align 1, !tbaa !2455
  %1521 = extractelement <2 x i32> %1517, i32 1
  store i32 %1521, i32* %189, align 1, !tbaa !2455
  %1522 = extractelement <2 x i32> %1519, i32 0
  store i32 %1522, i32* %190, align 1, !tbaa !2455
  %1523 = extractelement <2 x i32> %1519, i32 1
  store i32 %1523, i32* %192, align 1, !tbaa !2455
  %1524 = bitcast %union.VectorReg* %7 to <2 x i32>*
  %1525 = load <2 x i32>, <2 x i32>* %1524, align 1
  %1526 = bitcast i64* %88 to <2 x i32>*
  %1527 = load <2 x i32>, <2 x i32>* %1526, align 1
  %1528 = extractelement <2 x i32> %1525, i32 0
  store i32 %1528, i32* %1488, align 1, !tbaa !2455
  %1529 = extractelement <2 x i32> %1525, i32 1
  store i32 %1529, i32* %1491, align 1, !tbaa !2455
  %1530 = extractelement <2 x i32> %1527, i32 0
  store i32 %1530, i32* %1493, align 1, !tbaa !2455
  %1531 = extractelement <2 x i32> %1527, i32 1
  store i32 %1531, i32* %1496, align 1, !tbaa !2455
  %1532 = load i64, i64* %RBP, align 8
  %1533 = add i64 %1532, -136
  %1534 = add i64 %1515, 14
  store i64 %1534, i64* %PC, align 8
  %1535 = inttoptr i64 %1533 to i64*
  %1536 = load i64, i64* %1535, align 8
  store i64 %1536, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %1537 = add i64 %1515, -1568
  %1538 = add i64 %1515, 21
  %1539 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1540 = add i64 %1539, -8
  %1541 = inttoptr i64 %1540 to i64*
  store i64 %1538, i64* %1541, align 8
  store i64 %1540, i64* %RSP, align 8, !tbaa !2428
  store i64 %1537, i64* %PC, align 8, !tbaa !2428
  %1542 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1310)
  %1543 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 -9223372036854775808, i64* %RCX, align 8, !tbaa !2428
  %1544 = load i64, i64* %RBP, align 8
  %1545 = add i64 %1544, -88
  %1546 = add i64 %1543, 24
  store i64 %1546, i64* %PC, align 8
  %1547 = inttoptr i64 %1545 to i64*
  %1548 = load i64, i64* %1547, align 8
  %1549 = add i64 %1544, -80
  %1550 = add i64 %1543, 28
  store i64 %1550, i64* %PC, align 8
  %1551 = inttoptr i64 %1549 to i64*
  store i64 %1548, i64* %1551, align 8
  %1552 = load i64, i64* %PC, align 8
  %1553 = load i64, i64* bitcast (%five_type* @five to i64*), align 8
  %1554 = load i64, i64* %RCX, align 8
  %1555 = xor i64 %1554, %1553
  %1556 = load i64, i64* %RBP, align 8
  %1557 = add i64 %1556, -16
  %1558 = add i64 %1552, 27
  store i64 %1558, i64* %PC, align 8
  %1559 = inttoptr i64 %1557 to i64*
  store i64 %1555, i64* %1559, align 8
  %1560 = load i64, i64* %PC, align 8
  %1561 = load i64, i64* bitcast (%one_type* @one to i64*), align 8
  %1562 = load i64, i64* %RCX, align 8
  %1563 = xor i64 %1562, %1561
  store i64 %1563, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %23, align 1, !tbaa !2432
  %1564 = trunc i64 %1563 to i32
  %1565 = and i32 %1564, 255
  %1566 = tail call i32 @llvm.ctpop.i32(i32 %1565) #8
  %1567 = trunc i32 %1566 to i8
  %1568 = and i8 %1567, 1
  %1569 = xor i8 %1568, 1
  store i8 %1569, i8* %30, align 1, !tbaa !2446
  %1570 = icmp eq i64 %1563, 0
  %1571 = zext i1 %1570 to i8
  store i8 %1571, i8* %38, align 1, !tbaa !2447
  %1572 = lshr i64 %1563, 63
  %1573 = trunc i64 %1572 to i8
  store i8 %1573, i8* %41, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %35, align 1, !tbaa !2450
  store i64 %1563, i64* %75, align 1, !tbaa !2428
  store i64 0, i64* %76, align 1, !tbaa !2428
  store i64 %1563, i64* bitcast (%sa_type* @sa to i64*), align 8
  %1574 = load i64, i64* %RBP, align 8
  %1575 = add i64 %1574, -140
  %1576 = load i32, i32* %EAX, align 4
  %1577 = add i64 %1560, 37
  store i64 %1577, i64* %PC, align 8
  %1578 = inttoptr i64 %1575 to i32*
  store i32 %1576, i32* %1578, align 4
  %1579 = load i64, i64* %PC, align 8
  %1580 = add i64 %1579, 6959
  %1581 = add i64 %1579, 5
  %1582 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1583 = add i64 %1582, -8
  %1584 = inttoptr i64 %1583 to i64*
  store i64 %1581, i64* %1584, align 8
  store i64 %1583, i64* %RSP, align 8, !tbaa !2428
  store i64 %1580, i64* %PC, align 8, !tbaa !2428
  %1585 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %1580, %struct.Memory* %1542)
  %1586 = load i64, i64* %RBP, align 8
  %1587 = add i64 %1586, -72
  %1588 = load i64, i64* %PC, align 8
  %1589 = add i64 %1588, 8
  store i64 %1589, i64* %PC, align 8
  %1590 = inttoptr i64 %1587 to i64*
  store i64 1, i64* %1590, align 8
  %1591 = load i64, i64* %RBP, align 8
  %1592 = add i64 %1591, -144
  %1593 = load i32, i32* %EAX, align 4
  %1594 = load i64, i64* %PC, align 8
  %1595 = add i64 %1594, 6
  store i64 %1595, i64* %PC, align 8
  %1596 = inttoptr i64 %1592 to i32*
  store i32 %1593, i32* %1596, align 4
  %.pre10 = load i64, i64* %PC, align 8
  br label %block_400ad4

block_401509:                                     ; preds = %block_4014f4
  %1597 = add i64 %248, 4
  store i64 %1597, i64* %PC, align 8
  %1598 = load i64, i64* %214, align 8
  store i64 %1598, i64* %RAX, align 8, !tbaa !2428
  %1599 = sitofp i64 %1598 to double
  store double %1599, double* %74, align 1, !tbaa !2451
  %1600 = add i64 %211, -48
  %1601 = add i64 %248, 14
  store i64 %1601, i64* %PC, align 8
  %1602 = inttoptr i64 %1600 to double*
  %1603 = load double, double* %1602, align 8
  %1604 = fmul double %1599, %1603
  store double %1604, double* %74, align 1, !tbaa !2451
  %1605 = add i64 %211, -24
  %1606 = add i64 %248, 19
  store i64 %1606, i64* %PC, align 8
  %1607 = inttoptr i64 %1605 to double*
  store double %1604, double* %1607, align 8
  %1608 = load i64, i64* %RBP, align 8
  %1609 = add i64 %1608, -24
  %1610 = load i64, i64* %PC, align 8
  %1611 = add i64 %1610, 5
  store i64 %1611, i64* %PC, align 8
  %1612 = inttoptr i64 %1609 to double*
  %1613 = load double, double* %1612, align 8
  store double %1613, double* %74, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %1614 = add i64 %1610, 10
  store i64 %1614, i64* %PC, align 8
  %1615 = load double, double* %1612, align 8
  %1616 = fmul double %1613, %1615
  store double %1616, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %1617 = add i64 %1608, -40
  %1618 = add i64 %1610, 15
  store i64 %1618, i64* %PC, align 8
  %1619 = inttoptr i64 %1617 to double*
  store double %1616, double* %1619, align 8
  %1620 = load i64, i64* %RBP, align 8
  %1621 = add i64 %1620, -24
  %1622 = load i64, i64* %PC, align 8
  %1623 = add i64 %1622, 5
  store i64 %1623, i64* %PC, align 8
  %1624 = inttoptr i64 %1621 to double*
  %1625 = load double, double* %1624, align 8
  store double %1625, double* %74, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %1626 = load double, double* bitcast (%A6_type* @A6 to double*), align 8
  store double %1626, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %1627 = add i64 %1620, -40
  %1628 = add i64 %1622, 19
  store i64 %1628, i64* %PC, align 8
  %1629 = inttoptr i64 %1627 to double*
  %1630 = load double, double* %1629, align 8
  %1631 = fmul double %1626, %1630
  %1632 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %1633 = fadd double %1631, %1632
  store double %1633, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %1634 = add i64 %1622, 33
  store i64 %1634, i64* %PC, align 8
  %1635 = load double, double* %1629, align 8
  %1636 = fmul double %1633, %1635
  %1637 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %1638 = fadd double %1636, %1637
  store double %1638, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %1639 = add i64 %1622, 47
  store i64 %1639, i64* %PC, align 8
  %1640 = load double, double* %1629, align 8
  %1641 = fmul double %1638, %1640
  %1642 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %1643 = fadd double %1641, %1642
  store double %1643, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %1644 = add i64 %1622, 61
  store i64 %1644, i64* %PC, align 8
  %1645 = load double, double* %1629, align 8
  %1646 = fmul double %1643, %1645
  %1647 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %1648 = fadd double %1646, %1647
  store double %1648, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %1649 = add i64 %1622, 75
  store i64 %1649, i64* %PC, align 8
  %1650 = load double, double* %1629, align 8
  %1651 = fmul double %1648, %1650
  %1652 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %1653 = fadd double %1651, %1652
  store double %1653, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %1654 = add i64 %1622, 89
  store i64 %1654, i64* %PC, align 8
  %1655 = load double, double* %1629, align 8
  %1656 = fmul double %1653, %1655
  %1657 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1658 = fadd double %1656, %1657
  store double %1658, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %1659 = fmul double %1625, %1658
  store double %1659, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %1660 = add i64 %1620, -32
  %1661 = add i64 %1622, 107
  store i64 %1661, i64* %PC, align 8
  %1662 = inttoptr i64 %1660 to double*
  store double %1659, double* %1662, align 8
  %1663 = load i64, i64* %RBP, align 8
  %1664 = add i64 %1663, -16
  %1665 = load i64, i64* %PC, align 8
  %1666 = add i64 %1665, 5
  store i64 %1666, i64* %PC, align 8
  %1667 = inttoptr i64 %1664 to i64*
  %1668 = load i64, i64* %1667, align 8
  store i64 %1668, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %1669 = add i64 %1663, -32
  %1670 = add i64 %1665, 10
  store i64 %1670, i64* %PC, align 8
  %1671 = inttoptr i64 %1669 to i64*
  %1672 = load i64, i64* %1671, align 8
  store i64 %1672, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %1673 = add i64 %1663, -40
  %1674 = add i64 %1665, 15
  store i64 %1674, i64* %PC, align 8
  %1675 = inttoptr i64 %1673 to double*
  %1676 = load double, double* %1675, align 8
  store double %1676, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %1677 = add i64 %1665, 20
  store i64 %1677, i64* %PC, align 8
  %1678 = load double, double* %1675, align 8
  store double %1678, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %1679 = add i64 %1665, 25
  store i64 %1679, i64* %PC, align 8
  %1680 = load double, double* %1675, align 8
  store double %1680, double* %96, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %1681 = add i64 %1665, 30
  store i64 %1681, i64* %PC, align 8
  %1682 = load double, double* %1675, align 8
  store double %1682, double* %101, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %1683 = add i64 %1665, 35
  store i64 %1683, i64* %PC, align 8
  %1684 = load double, double* %1675, align 8
  store double %1684, double* %106, align 1, !tbaa !2451
  store double 0.000000e+00, double* %109, align 1, !tbaa !2451
  %1685 = load double, double* bitcast (%B6_type* @B6 to double*), align 8
  store double %1685, double* %121, align 1, !tbaa !2451
  store double 0.000000e+00, double* %209, align 1, !tbaa !2451
  %1686 = add i64 %1665, 49
  store i64 %1686, i64* %PC, align 8
  %1687 = load double, double* %1675, align 8
  %1688 = fmul double %1685, %1687
  %1689 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %1690 = fadd double %1688, %1689
  store double %1690, double* %121, align 1, !tbaa !2451
  store i64 0, i64* %208, align 1, !tbaa !2451
  %1691 = fmul double %1684, %1690
  %1692 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %1693 = fadd double %1691, %1692
  store double %1693, double* %106, align 1, !tbaa !2451
  store i64 0, i64* %108, align 1, !tbaa !2451
  %1694 = fmul double %1682, %1693
  %1695 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %1696 = fadd double %1694, %1695
  store double %1696, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %1697 = fmul double %1680, %1696
  %1698 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %1699 = fadd double %1697, %1698
  store double %1699, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %1700 = fmul double %1678, %1699
  %1701 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %1702 = fadd double %1700, %1701
  store double %1702, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %1703 = fmul double %1676, %1702
  %1704 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1705 = fadd double %1703, %1704
  store double %1705, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %1706 = load double, double* %80, align 1
  %1707 = fdiv double %1706, %1705
  store double %1707, double* %80, align 1, !tbaa !2451
  %1708 = load double, double* %74, align 1
  %1709 = fadd double %1708, %1707
  store double %1709, double* %74, align 1, !tbaa !2451
  %1710 = load i64, i64* %RBP, align 8
  %1711 = add i64 %1710, -16
  %1712 = add i64 %1665, 136
  store i64 %1712, i64* %PC, align 8
  %1713 = inttoptr i64 %1711 to double*
  store double %1709, double* %1713, align 8
  %1714 = load i64, i64* %RBP, align 8
  %1715 = add i64 %1714, -72
  %1716 = load i64, i64* %PC, align 8
  %1717 = add i64 %1716, 4
  store i64 %1717, i64* %PC, align 8
  %1718 = inttoptr i64 %1715 to i64*
  %1719 = load i64, i64* %1718, align 8
  %1720 = add i64 %1719, 1
  store i64 %1720, i64* %RAX, align 8, !tbaa !2428
  %1721 = icmp eq i64 %1719, -1
  %1722 = icmp eq i64 %1720, 0
  %1723 = or i1 %1721, %1722
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %23, align 1, !tbaa !2432
  %1725 = trunc i64 %1720 to i32
  %1726 = and i32 %1725, 255
  %1727 = tail call i32 @llvm.ctpop.i32(i32 %1726) #8
  %1728 = trunc i32 %1727 to i8
  %1729 = and i8 %1728, 1
  %1730 = xor i8 %1729, 1
  store i8 %1730, i8* %30, align 1, !tbaa !2446
  %1731 = xor i64 %1719, %1720
  %1732 = lshr i64 %1731, 4
  %1733 = trunc i64 %1732 to i8
  %1734 = and i8 %1733, 1
  store i8 %1734, i8* %35, align 1, !tbaa !2450
  %1735 = zext i1 %1722 to i8
  store i8 %1735, i8* %38, align 1, !tbaa !2447
  %1736 = lshr i64 %1720, 63
  %1737 = trunc i64 %1736 to i8
  store i8 %1737, i8* %41, align 1, !tbaa !2448
  %1738 = lshr i64 %1719, 63
  %1739 = xor i64 %1736, %1738
  %1740 = add nuw nsw i64 %1739, %1736
  %1741 = icmp eq i64 %1740, 2
  %1742 = zext i1 %1741 to i8
  store i8 %1742, i8* %47, align 1, !tbaa !2449
  %1743 = add i64 %1716, 12
  store i64 %1743, i64* %PC, align 8
  store i64 %1720, i64* %1718, align 8
  %1744 = load i64, i64* %PC, align 8
  %1745 = add i64 %1744, -310
  store i64 %1745, i64* %PC, align 8, !tbaa !2428
  br label %block_4014f4

block_400bc8:                                     ; preds = %block_400b79, %block_400bd6
  %1746 = phi i64 [ %.pre13, %block_400b79 ], [ %657, %block_400bd6 ]
  %1747 = load i64, i64* %RBP, align 8
  %1748 = add i64 %1747, -72
  %1749 = add i64 %1746, 4
  store i64 %1749, i64* %PC, align 8
  %1750 = inttoptr i64 %1748 to i64*
  %1751 = load i64, i64* %1750, align 8
  store i64 %1751, i64* %RAX, align 8, !tbaa !2428
  %1752 = add i64 %1747, -80
  %1753 = add i64 %1746, 8
  store i64 %1753, i64* %PC, align 8
  %1754 = inttoptr i64 %1752 to i64*
  %1755 = load i64, i64* %1754, align 8
  %1756 = sub i64 %1751, %1755
  %1757 = icmp ult i64 %1751, %1755
  %1758 = zext i1 %1757 to i8
  store i8 %1758, i8* %23, align 1, !tbaa !2432
  %1759 = trunc i64 %1756 to i32
  %1760 = and i32 %1759, 255
  %1761 = tail call i32 @llvm.ctpop.i32(i32 %1760) #8
  %1762 = trunc i32 %1761 to i8
  %1763 = and i8 %1762, 1
  %1764 = xor i8 %1763, 1
  store i8 %1764, i8* %30, align 1, !tbaa !2446
  %1765 = xor i64 %1755, %1751
  %1766 = xor i64 %1765, %1756
  %1767 = lshr i64 %1766, 4
  %1768 = trunc i64 %1767 to i8
  %1769 = and i8 %1768, 1
  store i8 %1769, i8* %35, align 1, !tbaa !2450
  %1770 = icmp eq i64 %1756, 0
  %1771 = zext i1 %1770 to i8
  store i8 %1771, i8* %38, align 1, !tbaa !2447
  %1772 = lshr i64 %1756, 63
  %1773 = trunc i64 %1772 to i8
  store i8 %1773, i8* %41, align 1, !tbaa !2448
  %1774 = lshr i64 %1751, 63
  %1775 = lshr i64 %1755, 63
  %1776 = xor i64 %1775, %1774
  %1777 = xor i64 %1772, %1774
  %1778 = add nuw nsw i64 %1777, %1776
  %1779 = icmp eq i64 %1778, 2
  %1780 = zext i1 %1779 to i8
  store i8 %1780, i8* %47, align 1, !tbaa !2449
  %1781 = icmp ne i8 %1773, 0
  %1782 = xor i1 %1781, %1779
  %.demorgan28 = or i1 %1770, %1782
  %.v29 = select i1 %.demorgan28, i64 14, i64 178
  %1783 = add i64 %1746, %.v29
  %1784 = add i64 %1783, 10
  store i64 %1784, i64* %PC, align 8
  br i1 %.demorgan28, label %block_400bd6, label %block_400c7a

block_400e75:                                     ; preds = %block_400e60
  %1785 = add i64 %1362, -32
  %1786 = add i64 %1399, 5
  store i64 %1786, i64* %PC, align 8
  %1787 = inttoptr i64 %1785 to double*
  %1788 = load double, double* %1787, align 8
  %1789 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1790 = fadd double %1788, %1789
  store double %1790, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %1791 = add i64 %1399, 19
  store i64 %1791, i64* %PC, align 8
  store double %1790, double* %1787, align 8
  %1792 = load i64, i64* %RBP, align 8
  %1793 = add i64 %1792, -32
  %1794 = load i64, i64* %PC, align 8
  %1795 = add i64 %1794, 5
  store i64 %1795, i64* %PC, align 8
  %1796 = inttoptr i64 %1793 to double*
  %1797 = load double, double* %1796, align 8
  store double %1797, double* %74, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %1798 = add i64 %1792, -48
  %1799 = add i64 %1794, 10
  store i64 %1799, i64* %PC, align 8
  %1800 = inttoptr i64 %1798 to double*
  %1801 = load double, double* %1800, align 8
  %1802 = fmul double %1797, %1801
  store double %1802, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %1803 = add i64 %1792, -24
  %1804 = add i64 %1794, 15
  store i64 %1804, i64* %PC, align 8
  %1805 = inttoptr i64 %1803 to double*
  store double %1802, double* %1805, align 8
  %1806 = load i64, i64* %RBP, align 8
  %1807 = add i64 %1806, -24
  %1808 = load i64, i64* %PC, align 8
  %1809 = add i64 %1808, 5
  store i64 %1809, i64* %PC, align 8
  %1810 = inttoptr i64 %1807 to double*
  %1811 = load double, double* %1810, align 8
  store double %1811, double* %74, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %1812 = add i64 %1808, 10
  store i64 %1812, i64* %PC, align 8
  %1813 = load double, double* %1810, align 8
  %1814 = fmul double %1811, %1813
  store double %1814, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %1815 = add i64 %1806, -40
  %1816 = add i64 %1808, 15
  store i64 %1816, i64* %PC, align 8
  %1817 = inttoptr i64 %1815 to double*
  store double %1814, double* %1817, align 8
  %1818 = load i64, i64* %RBP, align 8
  %1819 = add i64 %1818, -16
  %1820 = load i64, i64* %PC, align 8
  %1821 = add i64 %1820, 5
  store i64 %1821, i64* %PC, align 8
  %1822 = inttoptr i64 %1819 to double*
  %1823 = load double, double* %1822, align 8
  store double %1823, double* %74, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %1824 = add i64 %1818, -24
  %1825 = add i64 %1820, 10
  store i64 %1825, i64* %PC, align 8
  %1826 = inttoptr i64 %1824 to double*
  %1827 = load double, double* %1826, align 8
  store double %1827, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %1828 = load double, double* bitcast (%A6_type* @A6 to double*), align 8
  store double %1828, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %1829 = add i64 %1818, -40
  %1830 = add i64 %1820, 24
  store i64 %1830, i64* %PC, align 8
  %1831 = inttoptr i64 %1829 to double*
  %1832 = load double, double* %1831, align 8
  %1833 = fmul double %1828, %1832
  %1834 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %1835 = fsub double %1833, %1834
  store double %1835, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %1836 = add i64 %1820, 38
  store i64 %1836, i64* %PC, align 8
  %1837 = load double, double* %1831, align 8
  %1838 = fmul double %1835, %1837
  %1839 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %1840 = fadd double %1838, %1839
  store double %1840, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %1841 = add i64 %1820, 52
  store i64 %1841, i64* %PC, align 8
  %1842 = load double, double* %1831, align 8
  %1843 = fmul double %1840, %1842
  %1844 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %1845 = fsub double %1843, %1844
  store double %1845, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %1846 = add i64 %1820, 66
  store i64 %1846, i64* %PC, align 8
  %1847 = load double, double* %1831, align 8
  %1848 = fmul double %1845, %1847
  %1849 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %1850 = fadd double %1848, %1849
  store double %1850, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %1851 = add i64 %1820, 80
  store i64 %1851, i64* %PC, align 8
  %1852 = load double, double* %1831, align 8
  %1853 = fmul double %1850, %1852
  %1854 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %1855 = fadd double %1853, %1854
  store double %1855, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %1856 = add i64 %1820, 94
  store i64 %1856, i64* %PC, align 8
  %1857 = load double, double* %1831, align 8
  %1858 = fmul double %1855, %1857
  %1859 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1860 = fadd double %1858, %1859
  store double %1860, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %1861 = fmul double %1827, %1860
  store double %1861, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %1862 = fadd double %1823, %1861
  store double %1862, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %1863 = load i64, i64* %RBP, align 8
  %1864 = add i64 %1863, -16
  %1865 = add i64 %1820, 116
  store i64 %1865, i64* %PC, align 8
  %1866 = inttoptr i64 %1864 to double*
  store double %1862, double* %1866, align 8
  %1867 = load i64, i64* %RBP, align 8
  %1868 = add i64 %1867, -72
  %1869 = load i64, i64* %PC, align 8
  %1870 = add i64 %1869, 4
  store i64 %1870, i64* %PC, align 8
  %1871 = inttoptr i64 %1868 to i64*
  %1872 = load i64, i64* %1871, align 8
  %1873 = add i64 %1872, 1
  store i64 %1873, i64* %RAX, align 8, !tbaa !2428
  %1874 = icmp eq i64 %1872, -1
  %1875 = icmp eq i64 %1873, 0
  %1876 = or i1 %1874, %1875
  %1877 = zext i1 %1876 to i8
  store i8 %1877, i8* %23, align 1, !tbaa !2432
  %1878 = trunc i64 %1873 to i32
  %1879 = and i32 %1878, 255
  %1880 = tail call i32 @llvm.ctpop.i32(i32 %1879) #8
  %1881 = trunc i32 %1880 to i8
  %1882 = and i8 %1881, 1
  %1883 = xor i8 %1882, 1
  store i8 %1883, i8* %30, align 1, !tbaa !2446
  %1884 = xor i64 %1872, %1873
  %1885 = lshr i64 %1884, 4
  %1886 = trunc i64 %1885 to i8
  %1887 = and i8 %1886, 1
  store i8 %1887, i8* %35, align 1, !tbaa !2450
  %1888 = zext i1 %1875 to i8
  store i8 %1888, i8* %38, align 1, !tbaa !2447
  %1889 = lshr i64 %1873, 63
  %1890 = trunc i64 %1889 to i8
  store i8 %1890, i8* %41, align 1, !tbaa !2448
  %1891 = lshr i64 %1872, 63
  %1892 = xor i64 %1889, %1891
  %1893 = add nuw nsw i64 %1892, %1889
  %1894 = icmp eq i64 %1893, 2
  %1895 = zext i1 %1894 to i8
  store i8 %1895, i8* %47, align 1, !tbaa !2449
  %1896 = add i64 %1869, 12
  store i64 %1896, i64* %PC, align 8
  store i64 %1873, i64* %1871, align 8
  %1897 = load i64, i64* %PC, align 8
  %1898 = add i64 %1897, -198
  store i64 %1898, i64* %PC, align 8, !tbaa !2428
  br label %block_400e60

block_40162f:                                     ; preds = %block_4014f4
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %1899 = add i64 %248, 4033
  %1900 = add i64 %248, 15
  %1901 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1902 = add i64 %1901, -8
  %1903 = inttoptr i64 %1902 to i64*
  store i64 %1900, i64* %1903, align 8
  store i64 %1902, i64* %RSP, align 8, !tbaa !2428
  store i64 %1899, i64* %PC, align 8, !tbaa !2428
  %1904 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %1899, %struct.Memory* %3102)
  %1905 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 534), i64* %RDI, align 8, !tbaa !2428
  %1906 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to i64*), align 8
  store i64 %1906, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %1907 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 136) to i64*), align 8
  store i64 %1907, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %1908 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 144) to i64*), align 16
  store i64 %1908, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %1909 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %1910 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %1911 = fmul double %1909, %1910
  %1912 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %1913 = fsub double %1911, %1912
  store double %1913, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %1914 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %1915 = load double, double* bitcast (%three_type* @three to double*), align 8
  %1916 = fdiv double %1914, %1915
  store double %1916, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %1917 = load i64, i64* %RBP, align 8
  %1918 = add i64 %1917, -24
  %1919 = add i64 %1905, 93
  store i64 %1919, i64* %PC, align 8
  %1920 = inttoptr i64 %1918 to double*
  store double %1916, double* %1920, align 8
  %1921 = load i64, i64* %RBP, align 8
  %1922 = add i64 %1921, -24
  %1923 = load i64, i64* %PC, align 8
  %1924 = add i64 %1923, 5
  store i64 %1924, i64* %PC, align 8
  %1925 = inttoptr i64 %1922 to double*
  %1926 = load double, double* %1925, align 8
  store double %1926, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %1927 = add i64 %1923, 10
  store i64 %1927, i64* %PC, align 8
  %1928 = load double, double* %1925, align 8
  %1929 = fmul double %1926, %1928
  store double %1929, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %1930 = add i64 %1921, -40
  %1931 = add i64 %1923, 15
  store i64 %1931, i64* %PC, align 8
  %1932 = inttoptr i64 %1930 to double*
  store double %1929, double* %1932, align 8
  %1933 = load i64, i64* %RBP, align 8
  %1934 = add i64 %1933, -24
  %1935 = load i64, i64* %PC, align 8
  %1936 = add i64 %1935, 5
  store i64 %1936, i64* %PC, align 8
  %1937 = inttoptr i64 %1934 to double*
  %1938 = load double, double* %1937, align 8
  store double %1938, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %1939 = load double, double* bitcast (%A6_type* @A6 to double*), align 8
  store double %1939, double* %96, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %1940 = add i64 %1933, -40
  %1941 = add i64 %1935, 19
  store i64 %1941, i64* %PC, align 8
  %1942 = inttoptr i64 %1940 to double*
  %1943 = load double, double* %1942, align 8
  %1944 = fmul double %1939, %1943
  %1945 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %1946 = fadd double %1944, %1945
  store double %1946, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %1947 = add i64 %1935, 33
  store i64 %1947, i64* %PC, align 8
  %1948 = load double, double* %1942, align 8
  %1949 = fmul double %1946, %1948
  %1950 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %1951 = fadd double %1949, %1950
  store double %1951, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %1952 = add i64 %1935, 47
  store i64 %1952, i64* %PC, align 8
  %1953 = load double, double* %1942, align 8
  %1954 = fmul double %1951, %1953
  %1955 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %1956 = fadd double %1954, %1955
  store double %1956, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %1957 = add i64 %1935, 61
  store i64 %1957, i64* %PC, align 8
  %1958 = load double, double* %1942, align 8
  %1959 = fmul double %1956, %1958
  %1960 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %1961 = fadd double %1959, %1960
  store double %1961, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %1962 = add i64 %1935, 75
  store i64 %1962, i64* %PC, align 8
  %1963 = load double, double* %1942, align 8
  %1964 = fmul double %1961, %1963
  %1965 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %1966 = fadd double %1964, %1965
  store double %1966, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %1967 = add i64 %1935, 89
  store i64 %1967, i64* %PC, align 8
  %1968 = load double, double* %1942, align 8
  %1969 = fmul double %1966, %1968
  %1970 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1971 = fadd double %1969, %1970
  store double %1971, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %1972 = fmul double %1938, %1971
  store double %1972, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  store double %1972, double* bitcast (%sa_type* @sa to double*), align 8
  %1973 = add i64 %1935, 116
  store i64 %1973, i64* %PC, align 8
  %1974 = load double, double* %1942, align 8
  store double %1974, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %1975 = load i64, i64* %RBP, align 8
  %1976 = add i64 %1975, -40
  %1977 = add i64 %1935, 121
  store i64 %1977, i64* %PC, align 8
  %1978 = inttoptr i64 %1976 to double*
  %1979 = load double, double* %1978, align 8
  store double %1979, double* %96, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %1980 = add i64 %1935, 126
  store i64 %1980, i64* %PC, align 8
  %1981 = load double, double* %1978, align 8
  store double %1981, double* %101, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %1982 = add i64 %1935, 131
  store i64 %1982, i64* %PC, align 8
  %1983 = load double, double* %1978, align 8
  store double %1983, double* %106, align 1, !tbaa !2451
  store double 0.000000e+00, double* %109, align 1, !tbaa !2451
  %1984 = add i64 %1935, 136
  store i64 %1984, i64* %PC, align 8
  %1985 = load double, double* %1978, align 8
  store double %1985, double* %121, align 1, !tbaa !2451
  store double 0.000000e+00, double* %209, align 1, !tbaa !2451
  %1986 = load double, double* bitcast (%B6_type* @B6 to double*), align 8
  %1987 = bitcast %union.VectorReg* %13 to double*
  store double %1986, double* %1987, align 1, !tbaa !2451
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1
  %1989 = bitcast i64* %1988 to double*
  store double 0.000000e+00, double* %1989, align 1, !tbaa !2451
  %1990 = add i64 %1935, 152
  store i64 %1990, i64* %PC, align 8
  %1991 = load double, double* %1978, align 8
  %1992 = fmul double %1986, %1991
  %1993 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %1994 = fadd double %1992, %1993
  store double %1994, double* %1987, align 1, !tbaa !2451
  store i64 0, i64* %1988, align 1, !tbaa !2451
  %1995 = fmul double %1985, %1994
  %1996 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %1997 = fadd double %1995, %1996
  store double %1997, double* %121, align 1, !tbaa !2451
  store i64 0, i64* %208, align 1, !tbaa !2451
  %1998 = fmul double %1983, %1997
  %1999 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %2000 = fadd double %1998, %1999
  store double %2000, double* %106, align 1, !tbaa !2451
  store i64 0, i64* %108, align 1, !tbaa !2451
  %2001 = fmul double %1981, %2000
  %2002 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %2003 = fadd double %2001, %2002
  store double %2003, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %2004 = fmul double %1979, %2003
  %2005 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %2006 = fadd double %2004, %2005
  store double %2006, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2007 = fmul double %1974, %2006
  %2008 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2009 = fadd double %2007, %2008
  store double %2009, double* bitcast (%sb_type* @sb to double*), align 8
  %2010 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %2011 = fdiv double %2010, %2009
  store double %2011, double* bitcast (%sa_type* @sa to double*), align 8
  %2012 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %2013 = load double, double* %86, align 1
  %2014 = fdiv double %2012, %2013
  store double %2014, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  store double %2014, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 128) to double*), align 16
  %2015 = load i64, i64* %RBP, align 8
  %2016 = add i64 %2015, -48
  %2017 = add i64 %1935, 291
  store i64 %2017, i64* %PC, align 8
  %2018 = inttoptr i64 %2016 to double*
  %2019 = load double, double* %2018, align 8
  store double %2019, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2020 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  store double %2020, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %2021 = load double, double* bitcast (%two_type* @two to double*), align 8
  store double %2021, double* %96, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %2022 = add i64 %2015, -16
  %2023 = add i64 %1935, 314
  store i64 %2023, i64* %PC, align 8
  %2024 = inttoptr i64 %2022 to double*
  %2025 = load double, double* %2024, align 8
  %2026 = fmul double %2021, %2025
  store double %2026, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2027 = fadd double %2020, %2026
  store double %2027, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %2028 = fmul double %2019, %2027
  %2029 = fdiv double %2028, %2021
  store double %2029, double* bitcast (%sa_type* @sa to double*), align 8
  %2030 = load double, double* %80, align 1
  store double %2030, double* bitcast (%sb_type* @sb to double*), align 8
  %2031 = fsub double %2029, %2030
  store double %2031, double* bitcast (%sc_type* @sc to double*), align 8
  %2032 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2033 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 128) to double*), align 16
  %2034 = fdiv double %2032, %2033
  store double %2034, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 136) to double*), align 8
  %2035 = load <2 x i32>, <2 x i32>* %1483, align 1
  %2036 = load <2 x i32>, <2 x i32>* %1485, align 1
  %2037 = extractelement <2 x i32> %2035, i32 0
  store i32 %2037, i32* %1488, align 1, !tbaa !2455
  %2038 = extractelement <2 x i32> %2035, i32 1
  store i32 %2038, i32* %1491, align 1, !tbaa !2455
  %2039 = extractelement <2 x i32> %2036, i32 0
  store i32 %2039, i32* %1493, align 1, !tbaa !2455
  %2040 = extractelement <2 x i32> %2036, i32 1
  store i32 %2040, i32* %1496, align 1, !tbaa !2455
  %2041 = load double, double* %80, align 1
  %2042 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %2043 = fmul double %2041, %2042
  store double %2043, double* %80, align 1, !tbaa !2451
  store i32 %2037, i32* %1500, align 1, !tbaa !2455
  store i32 %2038, i32* %1502, align 1, !tbaa !2455
  store i32 %2039, i32* %1503, align 1, !tbaa !2455
  store i32 %2040, i32* %1505, align 1, !tbaa !2455
  %2044 = load double, double* %86, align 1
  %2045 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %2046 = fmul double %2044, %2045
  store double %2046, double* %86, align 1, !tbaa !2451
  %2047 = bitcast <2 x i32> %2035 to double
  %2048 = fmul double %2047, %2034
  %2049 = load i64, i64* %RBP, align 8
  %2050 = add i64 %2049, -232
  %2051 = add i64 %1935, 444
  store i64 %2051, i64* %PC, align 8
  %2052 = inttoptr i64 %2050 to double*
  store double %2048, double* %2052, align 8
  %2053 = load i64, i64* %PC, align 8
  %2054 = load <2 x i32>, <2 x i32>* %1516, align 1
  %2055 = load <2 x i32>, <2 x i32>* %1518, align 1
  %2056 = extractelement <2 x i32> %2054, i32 0
  store i32 %2056, i32* %187, align 1, !tbaa !2455
  %2057 = extractelement <2 x i32> %2054, i32 1
  store i32 %2057, i32* %189, align 1, !tbaa !2455
  %2058 = extractelement <2 x i32> %2055, i32 0
  store i32 %2058, i32* %190, align 1, !tbaa !2455
  %2059 = extractelement <2 x i32> %2055, i32 1
  store i32 %2059, i32* %192, align 1, !tbaa !2455
  %2060 = load <2 x i32>, <2 x i32>* %1524, align 1
  %2061 = load <2 x i32>, <2 x i32>* %1526, align 1
  %2062 = extractelement <2 x i32> %2060, i32 0
  store i32 %2062, i32* %1488, align 1, !tbaa !2455
  %2063 = extractelement <2 x i32> %2060, i32 1
  store i32 %2063, i32* %1491, align 1, !tbaa !2455
  %2064 = extractelement <2 x i32> %2061, i32 0
  store i32 %2064, i32* %1493, align 1, !tbaa !2455
  %2065 = extractelement <2 x i32> %2061, i32 1
  store i32 %2065, i32* %1496, align 1, !tbaa !2455
  %2066 = load i64, i64* %RBP, align 8
  %2067 = add i64 %2066, -232
  %2068 = add i64 %2053, 14
  store i64 %2068, i64* %PC, align 8
  %2069 = inttoptr i64 %2067 to i64*
  %2070 = load i64, i64* %2069, align 8
  store i64 %2070, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2071 = add i64 %2066, -236
  %2072 = load i32, i32* %EAX, align 4
  %2073 = add i64 %2053, 20
  store i64 %2073, i64* %PC, align 8
  %2074 = inttoptr i64 %2071 to i32*
  store i32 %2072, i32* %2074, align 4
  %2075 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %2076 = add i64 %2075, -5194
  %2077 = add i64 %2075, 7
  %2078 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2079 = add i64 %2078, -8
  %2080 = inttoptr i64 %2079 to i64*
  store i64 %2077, i64* %2080, align 8
  store i64 %2079, i64* %RSP, align 8, !tbaa !2428
  store i64 %2076, i64* %PC, align 8, !tbaa !2428
  %2081 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1904)
  %2082 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i32 0, i32* %187, align 1, !tbaa !2454
  store i32 0, i32* %189, align 1, !tbaa !2454
  store i32 0, i32* %190, align 1, !tbaa !2454
  store i32 0, i32* %192, align 1, !tbaa !2454
  %2083 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  store double %2083, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %2084 = load double, double* bitcast (%four_type* @four to double*), align 8
  store double %2084, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2085 = load i64, i64* %RBP, align 8
  %2086 = add i64 %2085, -80
  %2087 = add i64 %2082, 35
  store i64 %2087, i64* %PC, align 8
  %2088 = inttoptr i64 %2086 to i64*
  %2089 = load i64, i64* %2088, align 8
  store i64 %2089, i64* %RCX, align 8, !tbaa !2428
  %2090 = sitofp i64 %2089 to double
  store double %2090, double* %91, align 1, !tbaa !2451
  %2091 = fmul double %2084, %2090
  store double %2091, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %2092 = fdiv double %2083, %2091
  store double %2092, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %2093 = add i64 %2085, -48
  %2094 = add i64 %2082, 53
  store i64 %2094, i64* %PC, align 8
  %2095 = inttoptr i64 %2093 to double*
  store double %2092, double* %2095, align 8
  %2096 = load i64, i64* %RBP, align 8
  %2097 = add i64 %2096, -16
  %2098 = load i64, i64* %PC, align 8
  %2099 = add i64 %2098, 5
  store i64 %2099, i64* %PC, align 8
  %2100 = load i64, i64* %75, align 1
  %2101 = inttoptr i64 %2097 to i64*
  store i64 %2100, i64* %2101, align 8
  %2102 = load i64, i64* %RBP, align 8
  %2103 = add i64 %2102, -32
  %2104 = load i64, i64* %PC, align 8
  %2105 = add i64 %2104, 5
  store i64 %2105, i64* %PC, align 8
  %2106 = load i64, i64* %75, align 1
  %2107 = inttoptr i64 %2103 to i64*
  store i64 %2106, i64* %2107, align 8
  %2108 = load i64, i64* %RBP, align 8
  %2109 = add i64 %2108, -240
  %2110 = load i32, i32* %EAX, align 4
  %2111 = load i64, i64* %PC, align 8
  %2112 = add i64 %2111, 6
  store i64 %2112, i64* %PC, align 8
  %2113 = inttoptr i64 %2109 to i32*
  store i32 %2110, i32* %2113, align 4
  %2114 = load i64, i64* %PC, align 8
  %2115 = add i64 %2114, 3370
  %2116 = add i64 %2114, 5
  %2117 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2118 = add i64 %2117, -8
  %2119 = inttoptr i64 %2118 to i64*
  store i64 %2116, i64* %2119, align 8
  store i64 %2118, i64* %RSP, align 8, !tbaa !2428
  store i64 %2115, i64* %PC, align 8, !tbaa !2428
  %2120 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %2115, %struct.Memory* %2081)
  %2121 = load i64, i64* %RBP, align 8
  %2122 = add i64 %2121, -72
  %2123 = load i64, i64* %PC, align 8
  %2124 = add i64 %2123, 8
  store i64 %2124, i64* %PC, align 8
  %2125 = inttoptr i64 %2122 to i64*
  store i64 1, i64* %2125, align 8
  %2126 = load i64, i64* %RBP, align 8
  %2127 = add i64 %2126, -244
  %2128 = load i32, i32* %EAX, align 4
  %2129 = load i64, i64* %PC, align 8
  %2130 = add i64 %2129, 6
  store i64 %2130, i64* %PC, align 8
  %2131 = inttoptr i64 %2127 to i32*
  store i32 %2128, i32* %2131, align 4
  %.pre17 = load i64, i64* %PC, align 8
  br label %block_4018d9

block_400b2b:                                     ; preds = %block_400ad4
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %2132 = add i64 %695, 6853
  %2133 = add i64 %695, 15
  %2134 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2135 = add i64 %2134, -8
  %2136 = inttoptr i64 %2135 to i64*
  store i64 %2133, i64* %2136, align 8
  store i64 %2135, i64* %RSP, align 8, !tbaa !2428
  store i64 %2132, i64* %PC, align 8, !tbaa !2428
  %2137 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %2132, %struct.Memory* %1585)
  %2138 = load i64, i64* %PC, align 8
  store i32 0, i32* %187, align 1, !tbaa !2454
  store i32 0, i32* %189, align 1, !tbaa !2454
  store i32 0, i32* %190, align 1, !tbaa !2454
  store i32 0, i32* %192, align 1, !tbaa !2454
  %2139 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %2140 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %2141 = fmul double %2139, %2140
  store double %2141, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  store double %2141, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to double*), align 8
  %2142 = add i64 %2138, 39
  store i64 %2142, i64* %PC, align 8
  %2143 = load double, double* %74, align 1
  %2144 = fcmp uno double %2143, %2141
  br i1 %2144, label %2145, label %2155

; <label>:2145:                                   ; preds = %block_400b2b
  %2146 = fadd double %2143, %2141
  %2147 = bitcast double %2146 to i64
  %2148 = and i64 %2147, 9221120237041090560
  %2149 = icmp eq i64 %2148, 9218868437227405312
  %2150 = and i64 %2147, 2251799813685247
  %2151 = icmp ne i64 %2150, 0
  %2152 = and i1 %2149, %2151
  br i1 %2152, label %2153, label %2161

; <label>:2153:                                   ; preds = %2145
  %2154 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2142, %struct.Memory* %2137) #9
  %.pre11 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:2155:                                   ; preds = %block_400b2b
  %2156 = fcmp ogt double %2143, %2141
  br i1 %2156, label %2161, label %2157

; <label>:2157:                                   ; preds = %2155
  %2158 = fcmp olt double %2143, %2141
  br i1 %2158, label %2161, label %2159

; <label>:2159:                                   ; preds = %2157
  %2160 = fcmp oeq double %2143, %2141
  br i1 %2160, label %2161, label %2165

; <label>:2161:                                   ; preds = %2159, %2157, %2155, %2145
  %2162 = phi i8 [ 0, %2155 ], [ 0, %2157 ], [ 1, %2159 ], [ 1, %2145 ]
  %2163 = phi i8 [ 0, %2155 ], [ 0, %2157 ], [ 0, %2159 ], [ 1, %2145 ]
  %2164 = phi i8 [ 0, %2155 ], [ 1, %2157 ], [ 0, %2159 ], [ 1, %2145 ]
  store i8 %2162, i8* %38, align 1, !tbaa !2453
  store i8 %2163, i8* %30, align 1, !tbaa !2453
  store i8 %2164, i8* %23, align 1, !tbaa !2453
  br label %2165

; <label>:2165:                                   ; preds = %2161, %2159
  store i8 0, i8* %47, align 1, !tbaa !2453
  store i8 0, i8* %41, align 1, !tbaa !2453
  store i8 0, i8* %35, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %2165, %2153
  %2166 = phi i64 [ %.pre11, %2153 ], [ %2142, %2165 ]
  %2167 = phi %struct.Memory* [ %2154, %2153 ], [ %2137, %2165 ]
  %2168 = load i64, i64* %RBP, align 8
  %2169 = add i64 %2168, -148
  %2170 = load i32, i32* %EAX, align 4
  %2171 = add i64 %2166, 6
  store i64 %2171, i64* %PC, align 8
  %2172 = inttoptr i64 %2169 to i32*
  store i32 %2170, i32* %2172, align 4
  %2173 = load i64, i64* %PC, align 8
  %2174 = load i8, i8* %23, align 1, !tbaa !2432
  %2175 = load i8, i8* %38, align 1, !tbaa !2447
  %2176 = or i8 %2175, %2174
  %2177 = icmp ne i8 %2176, 0
  %.v27 = select i1 %2177, i64 18, i64 6
  %2178 = add i64 %2173, %.v27
  store i64 %2178, i64* %PC, align 8, !tbaa !2428
  br i1 %2177, label %block_400b79, label %block_400b6d

block_4007fd:                                     ; preds = %block_4007cb
  %2179 = add i64 %2728, 10
  store i64 %2179, i64* %PC, align 8, !tbaa !2428
  br label %block_400807

block_4006a5:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i32 0, i32* %187, align 1, !tbaa !2454
  store i32 0, i32* %189, align 1, !tbaa !2454
  store i32 0, i32* %190, align 1, !tbaa !2454
  store i32 0, i32* %192, align 1, !tbaa !2454
  %2180 = load i64, i64* %RBP, align 8
  %2181 = add i64 %2180, -88
  %2182 = add i64 %3146, 17
  store i64 %2182, i64* %PC, align 8
  %2183 = inttoptr i64 %2181 to i64*
  %2184 = load i64, i64* %2183, align 8
  %2185 = shl i64 %2184, 1
  %2186 = icmp slt i64 %2184, 0
  %2187 = icmp slt i64 %2185, 0
  %2188 = xor i1 %2186, %2187
  store i64 %2185, i64* %RAX, align 8, !tbaa !2428
  %.lobit = lshr i64 %2184, 63
  %2189 = trunc i64 %.lobit to i8
  store i8 %2189, i8* %23, align 1, !tbaa !2453
  %2190 = trunc i64 %2185 to i32
  %2191 = and i32 %2190, 254
  %2192 = tail call i32 @llvm.ctpop.i32(i32 %2191) #8
  %2193 = trunc i32 %2192 to i8
  %2194 = and i8 %2193, 1
  %2195 = xor i8 %2194, 1
  store i8 %2195, i8* %30, align 1, !tbaa !2453
  store i8 0, i8* %35, align 1, !tbaa !2453
  %2196 = icmp eq i64 %2185, 0
  %2197 = zext i1 %2196 to i8
  store i8 %2197, i8* %38, align 1, !tbaa !2453
  %2198 = lshr i64 %2184, 62
  %2199 = trunc i64 %2198 to i8
  %2200 = and i8 %2199, 1
  store i8 %2200, i8* %41, align 1, !tbaa !2453
  %2201 = zext i1 %2188 to i8
  store i8 %2201, i8* %47, align 1, !tbaa !2453
  %2202 = add i64 %3146, 25
  store i64 %2202, i64* %PC, align 8
  store i64 %2185, i64* %2183, align 8
  %2203 = load i64, i64* %PC, align 8
  %2204 = load double, double* bitcast (%one_type* @one to double*), align 8
  store double %2204, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %2205 = load i64, i64* %RBP, align 8
  %2206 = add i64 %2205, -88
  %2207 = add i64 %2203, 13
  store i64 %2207, i64* %PC, align 8
  %2208 = inttoptr i64 %2206 to i64*
  %2209 = load i64, i64* %2208, align 8
  store i64 %2209, i64* %RAX, align 8, !tbaa !2428
  %2210 = sitofp i64 %2209 to double
  store double %2210, double* %86, align 1, !tbaa !2451
  %2211 = fdiv double %2204, %2210
  store double %2211, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %2212 = add i64 %2205, -48
  %2213 = add i64 %2203, 27
  store i64 %2213, i64* %PC, align 8
  %2214 = inttoptr i64 %2212 to double*
  store double %2211, double* %2214, align 8
  %2215 = load i64, i64* %RBP, align 8
  %2216 = add i64 %2215, -16
  %2217 = load i64, i64* %PC, align 8
  %2218 = add i64 %2217, 5
  store i64 %2218, i64* %PC, align 8
  %2219 = load i64, i64* %75, align 1
  %2220 = inttoptr i64 %2216 to i64*
  store i64 %2219, i64* %2220, align 8
  %2221 = load i64, i64* %RBP, align 8
  %2222 = add i64 %2221, -32
  %2223 = load i64, i64* %PC, align 8
  %2224 = add i64 %2223, 5
  store i64 %2224, i64* %PC, align 8
  %2225 = load i64, i64* %75, align 1
  %2226 = inttoptr i64 %2222 to i64*
  store i64 %2225, i64* %2226, align 8
  %2227 = load i64, i64* %PC, align 8
  %2228 = load i64, i64* bitcast (%one_type* @one to i64*), align 8
  store i64 %2228, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %2229 = load i64, i64* %RBP, align 8
  %2230 = add i64 %2229, -40
  %2231 = add i64 %2227, 14
  store i64 %2231, i64* %PC, align 8
  %2232 = inttoptr i64 %2230 to i64*
  store i64 %2228, i64* %2232, align 8
  %2233 = load i64, i64* %PC, align 8
  %2234 = add i64 %2233, 7935
  %2235 = add i64 %2233, 5
  %2236 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2237 = add i64 %2236, -8
  %2238 = inttoptr i64 %2237 to i64*
  store i64 %2235, i64* %2238, align 8
  store i64 %2237, i64* %RSP, align 8, !tbaa !2428
  store i64 %2234, i64* %PC, align 8, !tbaa !2428
  %2239 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %2234, %struct.Memory* %3141)
  %2240 = load i64, i64* %RBP, align 8
  %2241 = add i64 %2240, -72
  %2242 = load i64, i64* %PC, align 8
  %2243 = add i64 %2242, 8
  store i64 %2243, i64* %PC, align 8
  %2244 = inttoptr i64 %2241 to i64*
  store i64 1, i64* %2244, align 8
  %2245 = load i64, i64* %RBP, align 8
  %2246 = add i64 %2245, -116
  %2247 = load i32, i32* %EAX, align 4
  %2248 = load i64, i64* %PC, align 8
  %2249 = add i64 %2248, 3
  store i64 %2249, i64* %PC, align 8
  %2250 = inttoptr i64 %2246 to i32*
  store i32 %2247, i32* %2250, align 4
  %.pre6 = load i64, i64* %PC, align 8
  br label %block_400701

block_401199:                                     ; preds = %block_401184
  %2251 = add i64 %3421, 4
  store i64 %2251, i64* %PC, align 8
  %2252 = load i64, i64* %3387, align 8
  store i64 %2252, i64* %RAX, align 8, !tbaa !2428
  %2253 = sitofp i64 %2252 to double
  store double %2253, double* %74, align 1, !tbaa !2451
  %2254 = add i64 %3384, -48
  %2255 = add i64 %3421, 14
  store i64 %2255, i64* %PC, align 8
  %2256 = inttoptr i64 %2254 to double*
  %2257 = load double, double* %2256, align 8
  %2258 = fmul double %2253, %2257
  store double %2258, double* %74, align 1, !tbaa !2451
  %2259 = add i64 %3384, -24
  %2260 = add i64 %3421, 19
  store i64 %2260, i64* %PC, align 8
  %2261 = inttoptr i64 %2259 to double*
  store double %2258, double* %2261, align 8
  %2262 = load i64, i64* %RBP, align 8
  %2263 = add i64 %2262, -24
  %2264 = load i64, i64* %PC, align 8
  %2265 = add i64 %2264, 5
  store i64 %2265, i64* %PC, align 8
  %2266 = inttoptr i64 %2263 to double*
  %2267 = load double, double* %2266, align 8
  store double %2267, double* %74, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %2268 = add i64 %2264, 10
  store i64 %2268, i64* %PC, align 8
  %2269 = load double, double* %2266, align 8
  %2270 = fmul double %2267, %2269
  store double %2270, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %2271 = add i64 %2262, -40
  %2272 = add i64 %2264, 15
  store i64 %2272, i64* %PC, align 8
  %2273 = inttoptr i64 %2271 to double*
  store double %2270, double* %2273, align 8
  %2274 = load i64, i64* %RBP, align 8
  %2275 = add i64 %2274, -16
  %2276 = load i64, i64* %PC, align 8
  %2277 = add i64 %2276, 5
  store i64 %2277, i64* %PC, align 8
  %2278 = inttoptr i64 %2275 to double*
  %2279 = load double, double* %2278, align 8
  store double %2279, double* %74, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %2280 = add i64 %2274, -40
  %2281 = add i64 %2276, 10
  store i64 %2281, i64* %PC, align 8
  %2282 = inttoptr i64 %2280 to double*
  %2283 = load double, double* %2282, align 8
  store double %2283, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %2284 = add i64 %2276, 15
  store i64 %2284, i64* %PC, align 8
  %2285 = load double, double* %2282, align 8
  store double %2285, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2286 = add i64 %2276, 20
  store i64 %2286, i64* %PC, align 8
  %2287 = load double, double* %2282, align 8
  store double %2287, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %2288 = add i64 %2276, 25
  store i64 %2288, i64* %PC, align 8
  %2289 = load double, double* %2282, align 8
  store double %2289, double* %96, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %2290 = add i64 %2276, 30
  store i64 %2290, i64* %PC, align 8
  %2291 = load double, double* %2282, align 8
  store double %2291, double* %101, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %2292 = load double, double* bitcast (%B6_type* @B6 to double*), align 8
  store double %2292, double* %106, align 1, !tbaa !2451
  store double 0.000000e+00, double* %109, align 1, !tbaa !2451
  %2293 = add i64 %2276, 44
  store i64 %2293, i64* %PC, align 8
  %2294 = load double, double* %2282, align 8
  %2295 = fmul double %2292, %2294
  %2296 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %2297 = fadd double %2295, %2296
  store double %2297, double* %106, align 1, !tbaa !2451
  store i64 0, i64* %108, align 1, !tbaa !2451
  %2298 = fmul double %2291, %2297
  %2299 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %2300 = fadd double %2298, %2299
  store double %2300, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %2301 = fmul double %2289, %2300
  %2302 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %2303 = fadd double %2301, %2302
  store double %2303, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2304 = fmul double %2287, %2303
  %2305 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %2306 = fadd double %2304, %2305
  store double %2306, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %2307 = fmul double %2285, %2306
  %2308 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %2309 = fadd double %2307, %2308
  store double %2309, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %2310 = fmul double %2283, %2309
  store double %2310, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %2311 = fadd double %2279, %2310
  %2312 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2313 = fadd double %2311, %2312
  store double %2313, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %2314 = load i64, i64* %RBP, align 8
  %2315 = add i64 %2314, -16
  %2316 = add i64 %2276, 127
  store i64 %2316, i64* %PC, align 8
  %2317 = inttoptr i64 %2315 to double*
  store double %2313, double* %2317, align 8
  %2318 = load i64, i64* %RBP, align 8
  %2319 = add i64 %2318, -72
  %2320 = load i64, i64* %PC, align 8
  %2321 = add i64 %2320, 4
  store i64 %2321, i64* %PC, align 8
  %2322 = inttoptr i64 %2319 to i64*
  %2323 = load i64, i64* %2322, align 8
  %2324 = add i64 %2323, 1
  store i64 %2324, i64* %RAX, align 8, !tbaa !2428
  %2325 = icmp eq i64 %2323, -1
  %2326 = icmp eq i64 %2324, 0
  %2327 = or i1 %2325, %2326
  %2328 = zext i1 %2327 to i8
  store i8 %2328, i8* %23, align 1, !tbaa !2432
  %2329 = trunc i64 %2324 to i32
  %2330 = and i32 %2329, 255
  %2331 = tail call i32 @llvm.ctpop.i32(i32 %2330) #8
  %2332 = trunc i32 %2331 to i8
  %2333 = and i8 %2332, 1
  %2334 = xor i8 %2333, 1
  store i8 %2334, i8* %30, align 1, !tbaa !2446
  %2335 = xor i64 %2323, %2324
  %2336 = lshr i64 %2335, 4
  %2337 = trunc i64 %2336 to i8
  %2338 = and i8 %2337, 1
  store i8 %2338, i8* %35, align 1, !tbaa !2450
  %2339 = zext i1 %2326 to i8
  store i8 %2339, i8* %38, align 1, !tbaa !2447
  %2340 = lshr i64 %2324, 63
  %2341 = trunc i64 %2340 to i8
  store i8 %2341, i8* %41, align 1, !tbaa !2448
  %2342 = lshr i64 %2323, 63
  %2343 = xor i64 %2340, %2342
  %2344 = add nuw nsw i64 %2343, %2340
  %2345 = icmp eq i64 %2344, 2
  %2346 = zext i1 %2345 to i8
  store i8 %2346, i8* %47, align 1, !tbaa !2449
  %2347 = add i64 %2320, 12
  store i64 %2347, i64* %PC, align 8
  store i64 %2324, i64* %2322, align 8
  %2348 = load i64, i64* %PC, align 8
  %2349 = add i64 %2348, -194
  store i64 %2349, i64* %PC, align 8, !tbaa !2428
  br label %block_401184

block_400716:                                     ; preds = %block_400701
  %2350 = add i64 %3861, -32
  %2351 = add i64 %3898, 5
  store i64 %2351, i64* %PC, align 8
  %2352 = inttoptr i64 %2350 to double*
  %2353 = load double, double* %2352, align 8
  store double %2353, double* %74, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %2354 = add i64 %3861, -40
  %2355 = add i64 %3898, 10
  store i64 %2355, i64* %PC, align 8
  %2356 = inttoptr i64 %2354 to double*
  %2357 = load double, double* %2356, align 8
  %2358 = fadd double %2353, %2357
  store double %2358, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %2359 = add i64 %3898, 15
  store i64 %2359, i64* %PC, align 8
  store double %2358, double* %2352, align 8
  %2360 = load i64, i64* %RBP, align 8
  %2361 = add i64 %2360, -32
  %2362 = load i64, i64* %PC, align 8
  %2363 = add i64 %2362, 5
  store i64 %2363, i64* %PC, align 8
  %2364 = inttoptr i64 %2361 to double*
  %2365 = load double, double* %2364, align 8
  store double %2365, double* %74, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %2366 = add i64 %2360, -48
  %2367 = add i64 %2362, 10
  store i64 %2367, i64* %PC, align 8
  %2368 = inttoptr i64 %2366 to double*
  %2369 = load double, double* %2368, align 8
  %2370 = fmul double %2365, %2369
  store double %2370, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %2371 = add i64 %2360, -24
  %2372 = add i64 %2362, 15
  store i64 %2372, i64* %PC, align 8
  %2373 = inttoptr i64 %2371 to double*
  store double %2370, double* %2373, align 8
  %2374 = load i64, i64* %RBP, align 8
  %2375 = add i64 %2374, -16
  %2376 = load i64, i64* %PC, align 8
  %2377 = add i64 %2376, 5
  store i64 %2377, i64* %PC, align 8
  %2378 = inttoptr i64 %2375 to i64*
  %2379 = load i64, i64* %2378, align 8
  store i64 %2379, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %2380 = load double, double* bitcast (%D1_0_type* @D1_0 to double*), align 8
  store double %2380, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %2381 = add i64 %2374, -24
  %2382 = add i64 %2376, 19
  store i64 %2382, i64* %PC, align 8
  %2383 = inttoptr i64 %2381 to double*
  %2384 = load double, double* %2383, align 8
  store double %2384, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2385 = load double, double* bitcast (%D2_0_type* @D2_0 to double*), align 8
  store double %2385, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %2386 = add i64 %2376, 33
  store i64 %2386, i64* %PC, align 8
  %2387 = load double, double* %2383, align 8
  %2388 = load double, double* bitcast (%D3_type* @D3 to double*), align 8
  %2389 = fmul double %2387, %2388
  store double %2389, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2390 = fadd double %2385, %2389
  store double %2390, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %2391 = fmul double %2384, %2390
  store double %2391, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %2392 = fadd double %2380, %2391
  store double %2392, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %2393 = add i64 %2374, -40
  %2394 = add i64 %2376, 59
  store i64 %2394, i64* %PC, align 8
  %2395 = inttoptr i64 %2393 to double*
  %2396 = load double, double* %2395, align 8
  store double %2396, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2397 = add i64 %2376, 64
  store i64 %2397, i64* %PC, align 8
  %2398 = load double, double* %2383, align 8
  store double %2398, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  store double %2380, double* %96, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %2399 = add i64 %2376, 78
  store i64 %2399, i64* %PC, align 8
  %2400 = load double, double* %2383, align 8
  store double %2400, double* %101, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %2401 = load double, double* bitcast (%E2_0_type* @E2_0 to double*), align 8
  store double %2401, double* %106, align 1, !tbaa !2451
  store double 0.000000e+00, double* %109, align 1, !tbaa !2451
  %2402 = add i64 %2376, 92
  store i64 %2402, i64* %PC, align 8
  %2403 = load double, double* %2383, align 8
  %2404 = load double, double* bitcast (%E3_type* @E3 to double*), align 8
  %2405 = fmul double %2403, %2404
  store double %2405, double* %121, align 1, !tbaa !2451
  store i64 0, i64* %208, align 1, !tbaa !2451
  %2406 = fadd double %2401, %2405
  store double %2406, double* %106, align 1, !tbaa !2451
  store i64 0, i64* %108, align 1, !tbaa !2451
  %2407 = fmul double %2400, %2406
  store double %2407, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %2408 = fadd double %2380, %2407
  store double %2408, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2409 = fmul double %2398, %2408
  store double %2409, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %2410 = fadd double %2396, %2409
  store double %2410, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %2411 = fdiv double %2392, %2410
  store double %2411, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %2412 = load double, double* %74, align 1
  %2413 = fadd double %2412, %2411
  store double %2413, double* %74, align 1, !tbaa !2451
  %2414 = load i64, i64* %RBP, align 8
  %2415 = add i64 %2414, -16
  %2416 = add i64 %2376, 134
  store i64 %2416, i64* %PC, align 8
  %2417 = inttoptr i64 %2415 to double*
  store double %2413, double* %2417, align 8
  %2418 = load i64, i64* %RBP, align 8
  %2419 = add i64 %2418, -72
  %2420 = load i64, i64* %PC, align 8
  %2421 = add i64 %2420, 4
  store i64 %2421, i64* %PC, align 8
  %2422 = inttoptr i64 %2419 to i64*
  %2423 = load i64, i64* %2422, align 8
  %2424 = add i64 %2423, 1
  store i64 %2424, i64* %RAX, align 8, !tbaa !2428
  %2425 = icmp eq i64 %2423, -1
  %2426 = icmp eq i64 %2424, 0
  %2427 = or i1 %2425, %2426
  %2428 = zext i1 %2427 to i8
  store i8 %2428, i8* %23, align 1, !tbaa !2432
  %2429 = trunc i64 %2424 to i32
  %2430 = and i32 %2429, 255
  %2431 = tail call i32 @llvm.ctpop.i32(i32 %2430) #8
  %2432 = trunc i32 %2431 to i8
  %2433 = and i8 %2432, 1
  %2434 = xor i8 %2433, 1
  store i8 %2434, i8* %30, align 1, !tbaa !2446
  %2435 = xor i64 %2423, %2424
  %2436 = lshr i64 %2435, 4
  %2437 = trunc i64 %2436 to i8
  %2438 = and i8 %2437, 1
  store i8 %2438, i8* %35, align 1, !tbaa !2450
  %2439 = zext i1 %2426 to i8
  store i8 %2439, i8* %38, align 1, !tbaa !2447
  %2440 = lshr i64 %2424, 63
  %2441 = trunc i64 %2440 to i8
  store i8 %2441, i8* %41, align 1, !tbaa !2448
  %2442 = lshr i64 %2423, 63
  %2443 = xor i64 %2440, %2442
  %2444 = add nuw nsw i64 %2443, %2440
  %2445 = icmp eq i64 %2444, 2
  %2446 = zext i1 %2445 to i8
  store i8 %2446, i8* %47, align 1, !tbaa !2449
  %2447 = add i64 %2420, 12
  store i64 %2447, i64* %PC, align 8
  store i64 %2424, i64* %2422, align 8
  %2448 = load i64, i64* %PC, align 8
  %2449 = add i64 %2448, -197
  store i64 %2449, i64* %PC, align 8, !tbaa !2428
  br label %block_400701

block_401a14:                                     ; preds = %block_4018d9
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %2450 = add i64 %543, 3036
  %2451 = add i64 %543, 15
  %2452 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2453 = add i64 %2452, -8
  %2454 = inttoptr i64 %2453 to i64*
  store i64 %2451, i64* %2454, align 8
  store i64 %2453, i64* %RSP, align 8, !tbaa !2428
  store i64 %2450, i64* %PC, align 8, !tbaa !2428
  %2455 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %2450, %struct.Memory* %2120)
  %2456 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 570), i64* %RDI, align 8, !tbaa !2428
  %2457 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to i64*), align 8
  store i64 %2457, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %2458 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 160) to i64*), align 16
  store i64 %2458, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %2459 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 144) to i64*), align 16
  store i64 %2459, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2460 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %2461 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %2462 = fmul double %2460, %2461
  %2463 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %2464 = fsub double %2462, %2463
  store double %2464, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %2465 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %2466 = load double, double* bitcast (%four_type* @four to double*), align 8
  %2467 = fdiv double %2465, %2466
  store double %2467, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %2468 = load i64, i64* %RBP, align 8
  %2469 = add i64 %2468, -24
  %2470 = add i64 %2456, 93
  store i64 %2470, i64* %PC, align 8
  %2471 = inttoptr i64 %2469 to double*
  store double %2467, double* %2471, align 8
  %2472 = load i64, i64* %RBP, align 8
  %2473 = add i64 %2472, -24
  %2474 = load i64, i64* %PC, align 8
  %2475 = add i64 %2474, 5
  store i64 %2475, i64* %PC, align 8
  %2476 = inttoptr i64 %2473 to double*
  %2477 = load double, double* %2476, align 8
  store double %2477, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %2478 = add i64 %2474, 10
  store i64 %2478, i64* %PC, align 8
  %2479 = load double, double* %2476, align 8
  %2480 = fmul double %2477, %2479
  store double %2480, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %2481 = add i64 %2472, -40
  %2482 = add i64 %2474, 15
  store i64 %2482, i64* %PC, align 8
  %2483 = inttoptr i64 %2481 to double*
  store double %2480, double* %2483, align 8
  %2484 = load i64, i64* %RBP, align 8
  %2485 = add i64 %2484, -24
  %2486 = load i64, i64* %PC, align 8
  %2487 = add i64 %2486, 5
  store i64 %2487, i64* %PC, align 8
  %2488 = inttoptr i64 %2485 to double*
  %2489 = load double, double* %2488, align 8
  store double %2489, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %2490 = load double, double* bitcast (%A6_type* @A6 to double*), align 8
  store double %2490, double* %96, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %2491 = add i64 %2484, -40
  %2492 = add i64 %2486, 19
  store i64 %2492, i64* %PC, align 8
  %2493 = inttoptr i64 %2491 to double*
  %2494 = load double, double* %2493, align 8
  %2495 = fmul double %2490, %2494
  %2496 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %2497 = fadd double %2495, %2496
  store double %2497, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2498 = add i64 %2486, 33
  store i64 %2498, i64* %PC, align 8
  %2499 = load double, double* %2493, align 8
  %2500 = fmul double %2497, %2499
  %2501 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %2502 = fadd double %2500, %2501
  store double %2502, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2503 = add i64 %2486, 47
  store i64 %2503, i64* %PC, align 8
  %2504 = load double, double* %2493, align 8
  %2505 = fmul double %2502, %2504
  %2506 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %2507 = fadd double %2505, %2506
  store double %2507, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2508 = add i64 %2486, 61
  store i64 %2508, i64* %PC, align 8
  %2509 = load double, double* %2493, align 8
  %2510 = fmul double %2507, %2509
  %2511 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %2512 = fadd double %2510, %2511
  store double %2512, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2513 = add i64 %2486, 75
  store i64 %2513, i64* %PC, align 8
  %2514 = load double, double* %2493, align 8
  %2515 = fmul double %2512, %2514
  %2516 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %2517 = fadd double %2515, %2516
  store double %2517, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2518 = add i64 %2486, 89
  store i64 %2518, i64* %PC, align 8
  %2519 = load double, double* %2493, align 8
  %2520 = fmul double %2517, %2519
  %2521 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2522 = fadd double %2520, %2521
  store double %2522, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2523 = fmul double %2489, %2522
  store double %2523, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  store double %2523, double* bitcast (%sa_type* @sa to double*), align 8
  %2524 = add i64 %2486, 116
  store i64 %2524, i64* %PC, align 8
  %2525 = load double, double* %2493, align 8
  store double %2525, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %2526 = load i64, i64* %RBP, align 8
  %2527 = add i64 %2526, -40
  %2528 = add i64 %2486, 121
  store i64 %2528, i64* %PC, align 8
  %2529 = inttoptr i64 %2527 to double*
  %2530 = load double, double* %2529, align 8
  store double %2530, double* %96, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %2531 = add i64 %2486, 126
  store i64 %2531, i64* %PC, align 8
  %2532 = load double, double* %2529, align 8
  store double %2532, double* %101, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %2533 = add i64 %2486, 131
  store i64 %2533, i64* %PC, align 8
  %2534 = load double, double* %2529, align 8
  store double %2534, double* %106, align 1, !tbaa !2451
  store double 0.000000e+00, double* %109, align 1, !tbaa !2451
  %2535 = add i64 %2486, 136
  store i64 %2535, i64* %PC, align 8
  %2536 = load double, double* %2529, align 8
  store double %2536, double* %121, align 1, !tbaa !2451
  store double 0.000000e+00, double* %209, align 1, !tbaa !2451
  %2537 = load double, double* bitcast (%B6_type* @B6 to double*), align 8
  store double %2537, double* %1987, align 1, !tbaa !2451
  store double 0.000000e+00, double* %1989, align 1, !tbaa !2451
  %2538 = add i64 %2486, 152
  store i64 %2538, i64* %PC, align 8
  %2539 = load double, double* %2529, align 8
  %2540 = fmul double %2537, %2539
  %2541 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %2542 = fadd double %2540, %2541
  store double %2542, double* %1987, align 1, !tbaa !2451
  store i64 0, i64* %1988, align 1, !tbaa !2451
  %2543 = fmul double %2536, %2542
  %2544 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %2545 = fadd double %2543, %2544
  store double %2545, double* %121, align 1, !tbaa !2451
  store i64 0, i64* %208, align 1, !tbaa !2451
  %2546 = fmul double %2534, %2545
  %2547 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %2548 = fadd double %2546, %2547
  store double %2548, double* %106, align 1, !tbaa !2451
  store i64 0, i64* %108, align 1, !tbaa !2451
  %2549 = fmul double %2532, %2548
  %2550 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %2551 = fadd double %2549, %2550
  store double %2551, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %2552 = fmul double %2530, %2551
  %2553 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %2554 = fadd double %2552, %2553
  store double %2554, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2555 = fmul double %2525, %2554
  %2556 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2557 = fadd double %2555, %2556
  store double %2557, double* bitcast (%sb_type* @sb to double*), align 8
  %2558 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %2559 = fmul double %2558, %2557
  store double %2559, double* bitcast (%sa_type* @sa to double*), align 8
  %2560 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %2561 = load double, double* %86, align 1
  %2562 = fdiv double %2560, %2561
  store double %2562, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  store double %2562, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 152) to double*), align 8
  %2563 = load i64, i64* %RBP, align 8
  %2564 = add i64 %2563, -48
  %2565 = add i64 %2486, 291
  store i64 %2565, i64* %PC, align 8
  %2566 = inttoptr i64 %2564 to double*
  %2567 = load double, double* %2566, align 8
  store double %2567, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2568 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  store double %2568, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %2569 = load double, double* bitcast (%two_type* @two to double*), align 8
  store double %2569, double* %96, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %2570 = add i64 %2563, -16
  %2571 = add i64 %2486, 314
  store i64 %2571, i64* %PC, align 8
  %2572 = inttoptr i64 %2570 to double*
  %2573 = load double, double* %2572, align 8
  %2574 = fmul double %2569, %2573
  store double %2574, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2575 = fadd double %2568, %2574
  store double %2575, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %2576 = fmul double %2567, %2575
  %2577 = fdiv double %2576, %2569
  store double %2577, double* bitcast (%sa_type* @sa to double*), align 8
  %2578 = load double, double* %80, align 1
  store double %2578, double* bitcast (%sb_type* @sb to double*), align 8
  %2579 = fsub double %2577, %2578
  store double %2579, double* bitcast (%sc_type* @sc to double*), align 8
  %2580 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2581 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 152) to double*), align 8
  %2582 = fdiv double %2580, %2581
  store double %2582, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 160) to double*), align 16
  %2583 = load <2 x i32>, <2 x i32>* %1483, align 1
  %2584 = load <2 x i32>, <2 x i32>* %1485, align 1
  %2585 = extractelement <2 x i32> %2583, i32 0
  store i32 %2585, i32* %1488, align 1, !tbaa !2455
  %2586 = extractelement <2 x i32> %2583, i32 1
  store i32 %2586, i32* %1491, align 1, !tbaa !2455
  %2587 = extractelement <2 x i32> %2584, i32 0
  store i32 %2587, i32* %1493, align 1, !tbaa !2455
  %2588 = extractelement <2 x i32> %2584, i32 1
  store i32 %2588, i32* %1496, align 1, !tbaa !2455
  %2589 = load double, double* %80, align 1
  %2590 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %2591 = fmul double %2589, %2590
  store double %2591, double* %80, align 1, !tbaa !2451
  store i32 %2585, i32* %1500, align 1, !tbaa !2455
  store i32 %2586, i32* %1502, align 1, !tbaa !2455
  store i32 %2587, i32* %1503, align 1, !tbaa !2455
  store i32 %2588, i32* %1505, align 1, !tbaa !2455
  %2592 = load double, double* %86, align 1
  %2593 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %2594 = fmul double %2592, %2593
  store double %2594, double* %86, align 1, !tbaa !2451
  %2595 = bitcast <2 x i32> %2583 to double
  %2596 = fmul double %2595, %2582
  %2597 = load i64, i64* %RBP, align 8
  %2598 = add i64 %2597, -256
  %2599 = add i64 %2486, 444
  store i64 %2599, i64* %PC, align 8
  %2600 = inttoptr i64 %2598 to double*
  store double %2596, double* %2600, align 8
  %2601 = load i64, i64* %PC, align 8
  %2602 = load <2 x i32>, <2 x i32>* %1516, align 1
  %2603 = load <2 x i32>, <2 x i32>* %1518, align 1
  %2604 = extractelement <2 x i32> %2602, i32 0
  store i32 %2604, i32* %187, align 1, !tbaa !2455
  %2605 = extractelement <2 x i32> %2602, i32 1
  store i32 %2605, i32* %189, align 1, !tbaa !2455
  %2606 = extractelement <2 x i32> %2603, i32 0
  store i32 %2606, i32* %190, align 1, !tbaa !2455
  %2607 = extractelement <2 x i32> %2603, i32 1
  store i32 %2607, i32* %192, align 1, !tbaa !2455
  %2608 = load <2 x i32>, <2 x i32>* %1524, align 1
  %2609 = load <2 x i32>, <2 x i32>* %1526, align 1
  %2610 = extractelement <2 x i32> %2608, i32 0
  store i32 %2610, i32* %1488, align 1, !tbaa !2455
  %2611 = extractelement <2 x i32> %2608, i32 1
  store i32 %2611, i32* %1491, align 1, !tbaa !2455
  %2612 = extractelement <2 x i32> %2609, i32 0
  store i32 %2612, i32* %1493, align 1, !tbaa !2455
  %2613 = extractelement <2 x i32> %2609, i32 1
  store i32 %2613, i32* %1496, align 1, !tbaa !2455
  %2614 = load i64, i64* %RBP, align 8
  %2615 = add i64 %2614, -256
  %2616 = add i64 %2601, 14
  store i64 %2616, i64* %PC, align 8
  %2617 = inttoptr i64 %2615 to i64*
  %2618 = load i64, i64* %2617, align 8
  store i64 %2618, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2619 = add i64 %2614, -260
  %2620 = load i32, i32* %EAX, align 4
  %2621 = add i64 %2601, 20
  store i64 %2621, i64* %PC, align 8
  %2622 = inttoptr i64 %2619 to i32*
  store i32 %2620, i32* %2622, align 4
  %2623 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %2624 = add i64 %2623, -6191
  %2625 = add i64 %2623, 7
  %2626 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2627 = add i64 %2626, -8
  %2628 = inttoptr i64 %2627 to i64*
  store i64 %2625, i64* %2628, align 8
  store i64 %2627, i64* %RSP, align 8, !tbaa !2428
  store i64 %2624, i64* %PC, align 8, !tbaa !2428
  %2629 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %2455)
  %2630 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %2631 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 152) to i64*), align 8
  store i64 %2631, i64* %75, align 1, !tbaa !2451
  store i32 0, i32* %1488, align 1, !tbaa !2454
  store i32 0, i32* %1491, align 1, !tbaa !2454
  %2632 = load i64, i64* %RBP, align 8
  %2633 = add i64 %2632, -16
  %2634 = add i64 %2630, 26
  store i64 %2634, i64* %PC, align 8
  %2635 = load i64, i64* %81, align 1
  %2636 = inttoptr i64 %2633 to i64*
  store i64 %2635, i64* %2636, align 8
  %2637 = load i64, i64* %PC, align 8
  %2638 = load i64, i64* bitcast (%one_type* @one to i64*), align 8
  store i64 %2638, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %2639 = load i64, i64* %RBP, align 8
  %2640 = add i64 %2639, -40
  %2641 = add i64 %2637, 14
  store i64 %2641, i64* %PC, align 8
  %2642 = inttoptr i64 %2640 to i64*
  store i64 %2638, i64* %2642, align 8
  %2643 = load i64, i64* %PC, align 8
  %2644 = load double, double* %74, align 1
  store double %2644, double* bitcast (%sa_type* @sa to double*), align 8
  store double %2644, double* %74, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %2645 = load i64, i64* %RBP, align 8
  %2646 = add i64 %2645, -80
  %2647 = add i64 %2643, 22
  store i64 %2647, i64* %PC, align 8
  %2648 = inttoptr i64 %2646 to i64*
  %2649 = load i64, i64* %2648, align 8
  store i64 %2649, i64* %RCX, align 8, !tbaa !2428
  %2650 = sitofp i64 %2649 to double
  store double %2650, double* %80, align 1, !tbaa !2451
  %2651 = fdiv double %2644, %2650
  store double %2651, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %2652 = add i64 %2645, -32
  %2653 = add i64 %2643, 36
  store i64 %2653, i64* %PC, align 8
  %2654 = inttoptr i64 %2652 to double*
  store double %2651, double* %2654, align 8
  %2655 = load i64, i64* %RBP, align 8
  %2656 = add i64 %2655, -264
  %2657 = load i32, i32* %EAX, align 4
  %2658 = load i64, i64* %PC, align 8
  %2659 = add i64 %2658, 6
  store i64 %2659, i64* %PC, align 8
  %2660 = inttoptr i64 %2656 to i32*
  store i32 %2657, i32* %2660, align 4
  %2661 = load i64, i64* %PC, align 8
  %2662 = add i64 %2661, 2360
  %2663 = add i64 %2661, 5
  %2664 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2665 = add i64 %2664, -8
  %2666 = inttoptr i64 %2665 to i64*
  store i64 %2663, i64* %2666, align 8
  store i64 %2665, i64* %RSP, align 8, !tbaa !2428
  store i64 %2662, i64* %PC, align 8, !tbaa !2428
  %2667 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %2662, %struct.Memory* %2629)
  %2668 = load i64, i64* %RBP, align 8
  %2669 = add i64 %2668, -72
  %2670 = load i64, i64* %PC, align 8
  %2671 = add i64 %2670, 8
  store i64 %2671, i64* %PC, align 8
  %2672 = inttoptr i64 %2669 to i64*
  store i64 1, i64* %2672, align 8
  %2673 = load i64, i64* %RBP, align 8
  %2674 = add i64 %2673, -268
  %2675 = load i32, i32* %EAX, align 4
  %2676 = load i64, i64* %PC, align 8
  %2677 = add i64 %2676, 6
  store i64 %2677, i64* %PC, align 8
  %2678 = inttoptr i64 %2674 to i32*
  store i32 %2675, i32* %2678, align 4
  %.pre18 = load i64, i64* %PC, align 8
  br label %block_401ccb

block_4007cb:                                     ; preds = %block_400701
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %2679 = add i64 %3898, 7717
  %2680 = add i64 %3898, 15
  %2681 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2682 = add i64 %2681, -8
  %2683 = inttoptr i64 %2682 to i64*
  store i64 %2680, i64* %2683, align 8
  store i64 %2682, i64* %RSP, align 8, !tbaa !2428
  store i64 %2679, i64* %PC, align 8, !tbaa !2428
  %2684 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %2679, %struct.Memory* %2239)
  %2685 = load i64, i64* %PC, align 8
  %2686 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to i64*), align 8
  store i64 %2686, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  store i64 %2686, i64* bitcast (%sa_type* @sa to i64*), align 8
  %2687 = load i64, i64* %RBP, align 8
  %2688 = add i64 %2687, -88
  %2689 = add i64 %2685, 22
  store i64 %2689, i64* %PC, align 8
  %2690 = inttoptr i64 %2688 to i64*
  %2691 = load i64, i64* %2690, align 8
  store i64 %2691, i64* %RDI, align 8, !tbaa !2428
  %2692 = add i64 %2687, -64
  %2693 = add i64 %2685, 26
  store i64 %2693, i64* %PC, align 8
  %2694 = inttoptr i64 %2692 to i64*
  %2695 = load i64, i64* %2694, align 8
  %2696 = sub i64 %2691, %2695
  %2697 = icmp ult i64 %2691, %2695
  %2698 = zext i1 %2697 to i8
  store i8 %2698, i8* %23, align 1, !tbaa !2432
  %2699 = trunc i64 %2696 to i32
  %2700 = and i32 %2699, 255
  %2701 = tail call i32 @llvm.ctpop.i32(i32 %2700) #8
  %2702 = trunc i32 %2701 to i8
  %2703 = and i8 %2702, 1
  %2704 = xor i8 %2703, 1
  store i8 %2704, i8* %30, align 1, !tbaa !2446
  %2705 = xor i64 %2695, %2691
  %2706 = xor i64 %2705, %2696
  %2707 = lshr i64 %2706, 4
  %2708 = trunc i64 %2707 to i8
  %2709 = and i8 %2708, 1
  store i8 %2709, i8* %35, align 1, !tbaa !2450
  %2710 = icmp eq i64 %2696, 0
  %2711 = zext i1 %2710 to i8
  store i8 %2711, i8* %38, align 1, !tbaa !2447
  %2712 = lshr i64 %2696, 63
  %2713 = trunc i64 %2712 to i8
  store i8 %2713, i8* %41, align 1, !tbaa !2448
  %2714 = lshr i64 %2691, 63
  %2715 = lshr i64 %2695, 63
  %2716 = xor i64 %2715, %2714
  %2717 = xor i64 %2712, %2714
  %2718 = add nuw nsw i64 %2717, %2716
  %2719 = icmp eq i64 %2718, 2
  %2720 = zext i1 %2719 to i8
  store i8 %2720, i8* %47, align 1, !tbaa !2449
  %2721 = add i64 %2687, -120
  %2722 = load i32, i32* %EAX, align 4
  %2723 = add i64 %2685, 29
  store i64 %2723, i64* %PC, align 8
  %2724 = inttoptr i64 %2721 to i32*
  store i32 %2722, i32* %2724, align 4
  %2725 = load i64, i64* %PC, align 8
  %2726 = load i8, i8* %38, align 1, !tbaa !2447
  %2727 = icmp eq i8 %2726, 0
  %.v21 = select i1 %2727, i64 11, i64 6
  %2728 = add i64 %2725, %.v21
  store i64 %2728, i64* %PC, align 8, !tbaa !2428
  br i1 %2727, label %block_400802, label %block_4007fd

block_401f8c:                                     ; preds = %block_401fa1, %block_401d67
  %2729 = phi i64 [ %3620, %block_401fa1 ], [ %.pre19, %block_401d67 ]
  %2730 = load i64, i64* %RBP, align 8
  %2731 = add i64 %2730, -72
  %2732 = add i64 %2729, 4
  store i64 %2732, i64* %PC, align 8
  %2733 = inttoptr i64 %2731 to i64*
  %2734 = load i64, i64* %2733, align 8
  store i64 %2734, i64* %RAX, align 8, !tbaa !2428
  %2735 = add i64 %2730, -80
  %2736 = add i64 %2729, 8
  store i64 %2736, i64* %PC, align 8
  %2737 = inttoptr i64 %2735 to i64*
  %2738 = load i64, i64* %2737, align 8
  %2739 = add i64 %2738, -1
  store i64 %2739, i64* %RCX, align 8, !tbaa !2428
  %2740 = lshr i64 %2739, 63
  %2741 = sub i64 %2734, %2739
  %2742 = icmp ult i64 %2734, %2739
  %2743 = zext i1 %2742 to i8
  store i8 %2743, i8* %23, align 1, !tbaa !2432
  %2744 = trunc i64 %2741 to i32
  %2745 = and i32 %2744, 255
  %2746 = tail call i32 @llvm.ctpop.i32(i32 %2745) #8
  %2747 = trunc i32 %2746 to i8
  %2748 = and i8 %2747, 1
  %2749 = xor i8 %2748, 1
  store i8 %2749, i8* %30, align 1, !tbaa !2446
  %2750 = xor i64 %2739, %2734
  %2751 = xor i64 %2750, %2741
  %2752 = lshr i64 %2751, 4
  %2753 = trunc i64 %2752 to i8
  %2754 = and i8 %2753, 1
  store i8 %2754, i8* %35, align 1, !tbaa !2450
  %2755 = icmp eq i64 %2741, 0
  %2756 = zext i1 %2755 to i8
  store i8 %2756, i8* %38, align 1, !tbaa !2447
  %2757 = lshr i64 %2741, 63
  %2758 = trunc i64 %2757 to i8
  store i8 %2758, i8* %41, align 1, !tbaa !2448
  %2759 = lshr i64 %2734, 63
  %2760 = xor i64 %2740, %2759
  %2761 = xor i64 %2757, %2759
  %2762 = add nuw nsw i64 %2761, %2760
  %2763 = icmp eq i64 %2762, 2
  %2764 = zext i1 %2763 to i8
  store i8 %2764, i8* %47, align 1, !tbaa !2449
  %2765 = icmp ne i8 %2758, 0
  %2766 = xor i1 %2765, %2763
  %.demorgan40 = or i1 %2755, %2766
  %.v41 = select i1 %.demorgan40, i64 21, i64 316
  %2767 = add i64 %2729, %.v41
  store i64 %2767, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan40, label %block_401fa1, label %block_4020c8

block_401ce0:                                     ; preds = %block_401ccb
  %2768 = add i64 %884, 4
  store i64 %2768, i64* %PC, align 8
  %2769 = load i64, i64* %850, align 8
  store i64 %2769, i64* %RAX, align 8, !tbaa !2428
  %2770 = sitofp i64 %2769 to double
  store double %2770, double* %74, align 1, !tbaa !2451
  %2771 = add i64 %847, -32
  %2772 = add i64 %884, 14
  store i64 %2772, i64* %PC, align 8
  %2773 = inttoptr i64 %2771 to double*
  %2774 = load double, double* %2773, align 8
  %2775 = fmul double %2770, %2774
  store double %2775, double* %74, align 1, !tbaa !2451
  %2776 = add i64 %847, -48
  %2777 = add i64 %884, 19
  store i64 %2777, i64* %PC, align 8
  %2778 = inttoptr i64 %2776 to double*
  store double %2775, double* %2778, align 8
  %2779 = load i64, i64* %RBP, align 8
  %2780 = add i64 %2779, -48
  %2781 = load i64, i64* %PC, align 8
  %2782 = add i64 %2781, 5
  store i64 %2782, i64* %PC, align 8
  %2783 = inttoptr i64 %2780 to double*
  %2784 = load double, double* %2783, align 8
  store double %2784, double* %74, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %2785 = add i64 %2781, 10
  store i64 %2785, i64* %PC, align 8
  %2786 = load double, double* %2783, align 8
  %2787 = fmul double %2784, %2786
  store double %2787, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %2788 = add i64 %2779, -24
  %2789 = add i64 %2781, 15
  store i64 %2789, i64* %PC, align 8
  %2790 = inttoptr i64 %2788 to double*
  store double %2787, double* %2790, align 8
  %2791 = load i64, i64* %RBP, align 8
  %2792 = add i64 %2791, -16
  %2793 = load i64, i64* %PC, align 8
  %2794 = add i64 %2793, 5
  store i64 %2794, i64* %PC, align 8
  %2795 = inttoptr i64 %2792 to double*
  %2796 = load double, double* %2795, align 8
  store double %2796, double* %74, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %2797 = add i64 %2791, -40
  %2798 = add i64 %2793, 10
  store i64 %2798, i64* %PC, align 8
  %2799 = inttoptr i64 %2797 to double*
  %2800 = load double, double* %2799, align 8
  store double %2800, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %2801 = add i64 %2791, -48
  %2802 = add i64 %2793, 15
  store i64 %2802, i64* %PC, align 8
  %2803 = inttoptr i64 %2801 to double*
  %2804 = load double, double* %2803, align 8
  store double %2804, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2805 = add i64 %2793, 20
  store i64 %2805, i64* %PC, align 8
  %2806 = load double, double* %2799, align 8
  %2807 = fadd double %2804, %2806
  store double %2807, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %2808 = fdiv double %2800, %2807
  store double %2808, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %2809 = fsub double %2796, %2808
  store double %2809, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %2810 = add i64 %2793, 33
  store i64 %2810, i64* %PC, align 8
  %2811 = load double, double* %2803, align 8
  store double %2811, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %2812 = add i64 %2791, -24
  %2813 = add i64 %2793, 38
  store i64 %2813, i64* %PC, align 8
  %2814 = inttoptr i64 %2812 to double*
  %2815 = load double, double* %2814, align 8
  store double %2815, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2816 = add i64 %2793, 43
  store i64 %2816, i64* %PC, align 8
  %2817 = load double, double* %2799, align 8
  %2818 = fadd double %2815, %2817
  store double %2818, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %2819 = fdiv double %2811, %2818
  store double %2819, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %2820 = fsub double %2809, %2819
  store double %2820, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %2821 = add i64 %2793, 56
  store i64 %2821, i64* %PC, align 8
  %2822 = load double, double* %2814, align 8
  store double %2822, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %2823 = add i64 %2793, 61
  store i64 %2823, i64* %PC, align 8
  %2824 = load double, double* %2803, align 8
  store double %2824, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2825 = add i64 %2793, 66
  store i64 %2825, i64* %PC, align 8
  %2826 = load double, double* %2814, align 8
  %2827 = fmul double %2824, %2826
  store double %2827, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %2828 = add i64 %2793, 71
  store i64 %2828, i64* %PC, align 8
  %2829 = load double, double* %2799, align 8
  %2830 = fadd double %2827, %2829
  store double %2830, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %2831 = fdiv double %2822, %2830
  store double %2831, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %2832 = fsub double %2820, %2831
  store double %2832, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %2833 = add i64 %2793, 84
  store i64 %2833, i64* %PC, align 8
  store double %2832, double* %2795, align 8
  %2834 = load i64, i64* %RBP, align 8
  %2835 = add i64 %2834, -72
  %2836 = load i64, i64* %PC, align 8
  %2837 = add i64 %2836, 4
  store i64 %2837, i64* %PC, align 8
  %2838 = inttoptr i64 %2835 to i64*
  %2839 = load i64, i64* %2838, align 8
  %2840 = add i64 %2839, 1
  store i64 %2840, i64* %RAX, align 8, !tbaa !2428
  %2841 = icmp eq i64 %2839, -1
  %2842 = icmp eq i64 %2840, 0
  %2843 = or i1 %2841, %2842
  %2844 = zext i1 %2843 to i8
  store i8 %2844, i8* %23, align 1, !tbaa !2432
  %2845 = trunc i64 %2840 to i32
  %2846 = and i32 %2845, 255
  %2847 = tail call i32 @llvm.ctpop.i32(i32 %2846) #8
  %2848 = trunc i32 %2847 to i8
  %2849 = and i8 %2848, 1
  %2850 = xor i8 %2849, 1
  store i8 %2850, i8* %30, align 1, !tbaa !2446
  %2851 = xor i64 %2839, %2840
  %2852 = lshr i64 %2851, 4
  %2853 = trunc i64 %2852 to i8
  %2854 = and i8 %2853, 1
  store i8 %2854, i8* %35, align 1, !tbaa !2450
  %2855 = zext i1 %2842 to i8
  store i8 %2855, i8* %38, align 1, !tbaa !2447
  %2856 = lshr i64 %2840, 63
  %2857 = trunc i64 %2856 to i8
  store i8 %2857, i8* %41, align 1, !tbaa !2448
  %2858 = lshr i64 %2839, 63
  %2859 = xor i64 %2856, %2858
  %2860 = add nuw nsw i64 %2859, %2856
  %2861 = icmp eq i64 %2860, 2
  %2862 = zext i1 %2861 to i8
  store i8 %2862, i8* %47, align 1, !tbaa !2449
  %2863 = add i64 %2836, 12
  store i64 %2863, i64* %PC, align 8
  store i64 %2840, i64* %2838, align 8
  %2864 = load i64, i64* %PC, align 8
  %2865 = add i64 %2864, -151
  store i64 %2865, i64* %PC, align 8, !tbaa !2428
  br label %block_401ccb

block_40124b:                                     ; preds = %block_401184
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %2866 = add i64 %3421, 5029
  %2867 = add i64 %3421, 15
  %2868 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2869 = add i64 %2868, -8
  %2870 = inttoptr i64 %2869 to i64*
  store i64 %2867, i64* %2870, align 8
  store i64 %2869, i64* %RSP, align 8, !tbaa !2428
  store i64 %2866, i64* %PC, align 8, !tbaa !2428
  %2871 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %2866, %struct.Memory* %3817)
  %2872 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 498), i64* %RDI, align 8, !tbaa !2428
  %2873 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to i64*), align 8
  store i64 %2873, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %2874 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 128) to i64*), align 16
  store i64 %2874, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %2875 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %2876 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %2877 = fmul double %2875, %2876
  %2878 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %2879 = fsub double %2877, %2878
  store double %2879, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %2880 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %2881 = load double, double* bitcast (%three_type* @three to double*), align 8
  %2882 = fdiv double %2880, %2881
  store double %2882, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %2883 = load i64, i64* %RBP, align 8
  %2884 = add i64 %2883, -24
  %2885 = add i64 %2872, 85
  store i64 %2885, i64* %PC, align 8
  %2886 = inttoptr i64 %2884 to double*
  store double %2882, double* %2886, align 8
  %2887 = load i64, i64* %RBP, align 8
  %2888 = add i64 %2887, -24
  %2889 = load i64, i64* %PC, align 8
  %2890 = add i64 %2889, 5
  store i64 %2890, i64* %PC, align 8
  %2891 = inttoptr i64 %2888 to double*
  %2892 = load double, double* %2891, align 8
  store double %2892, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2893 = add i64 %2889, 10
  store i64 %2893, i64* %PC, align 8
  %2894 = load double, double* %2891, align 8
  %2895 = fmul double %2892, %2894
  store double %2895, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %2896 = add i64 %2887, -40
  %2897 = add i64 %2889, 15
  store i64 %2897, i64* %PC, align 8
  %2898 = inttoptr i64 %2896 to double*
  store double %2895, double* %2898, align 8
  %2899 = load i64, i64* %RBP, align 8
  %2900 = add i64 %2899, -40
  %2901 = load i64, i64* %PC, align 8
  %2902 = add i64 %2901, 5
  store i64 %2902, i64* %PC, align 8
  %2903 = inttoptr i64 %2900 to double*
  %2904 = load double, double* %2903, align 8
  store double %2904, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2905 = add i64 %2901, 10
  store i64 %2905, i64* %PC, align 8
  %2906 = load double, double* %2903, align 8
  store double %2906, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %2907 = add i64 %2901, 15
  store i64 %2907, i64* %PC, align 8
  %2908 = load double, double* %2903, align 8
  store double %2908, double* %96, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %2909 = add i64 %2901, 20
  store i64 %2909, i64* %PC, align 8
  %2910 = load double, double* %2903, align 8
  store double %2910, double* %101, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %2911 = add i64 %2901, 25
  store i64 %2911, i64* %PC, align 8
  %2912 = load double, double* %2903, align 8
  store double %2912, double* %106, align 1, !tbaa !2451
  store double 0.000000e+00, double* %109, align 1, !tbaa !2451
  %2913 = load double, double* bitcast (%B6_type* @B6 to double*), align 8
  store double %2913, double* %121, align 1, !tbaa !2451
  store double 0.000000e+00, double* %209, align 1, !tbaa !2451
  %2914 = add i64 %2901, 39
  store i64 %2914, i64* %PC, align 8
  %2915 = load double, double* %2903, align 8
  %2916 = fmul double %2913, %2915
  %2917 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %2918 = fadd double %2916, %2917
  store double %2918, double* %121, align 1, !tbaa !2451
  store i64 0, i64* %208, align 1, !tbaa !2451
  %2919 = fmul double %2912, %2918
  %2920 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %2921 = fadd double %2919, %2920
  store double %2921, double* %106, align 1, !tbaa !2451
  store i64 0, i64* %108, align 1, !tbaa !2451
  %2922 = fmul double %2910, %2921
  %2923 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %2924 = fadd double %2922, %2923
  store double %2924, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %2925 = fmul double %2908, %2924
  %2926 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %2927 = fadd double %2925, %2926
  store double %2927, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %2928 = fmul double %2906, %2927
  %2929 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %2930 = fadd double %2928, %2929
  store double %2930, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %2931 = fmul double %2904, %2930
  %2932 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2933 = fadd double %2931, %2932
  store double %2933, double* bitcast (%sa_type* @sa to double*), align 8
  %2934 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %2935 = load double, double* %80, align 1
  %2936 = fdiv double %2934, %2935
  store double %2936, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  store double %2936, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 104) to double*), align 8
  %2937 = load i64, i64* %RBP, align 8
  %2938 = add i64 %2937, -48
  %2939 = add i64 %2901, 149
  store i64 %2939, i64* %PC, align 8
  %2940 = inttoptr i64 %2938 to double*
  %2941 = load double, double* %2940, align 8
  store double %2941, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %2942 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %2943 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2944 = fadd double %2942, %2943
  store double %2944, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %2945 = load double, double* bitcast (%two_type* @two to double*), align 8
  store double %2945, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %2946 = add i64 %2937, -16
  %2947 = add i64 %2901, 181
  store i64 %2947, i64* %PC, align 8
  %2948 = inttoptr i64 %2946 to double*
  %2949 = load double, double* %2948, align 8
  %2950 = fmul double %2945, %2949
  store double %2950, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %2951 = fadd double %2944, %2950
  store double %2951, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %2952 = fmul double %2941, %2951
  %2953 = fdiv double %2952, %2945
  store double %2953, double* bitcast (%sa_type* @sa to double*), align 8
  %2954 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %2955 = load double, double* bitcast (%three_type* @three to double*), align 8
  %2956 = fdiv double %2954, %2955
  store double %2956, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %2957 = add i64 %2937, -24
  %2958 = add i64 %2901, 230
  store i64 %2958, i64* %PC, align 8
  %2959 = inttoptr i64 %2957 to double*
  store double %2956, double* %2959, align 8
  %2960 = load i64, i64* %RBP, align 8
  %2961 = add i64 %2960, -24
  %2962 = load i64, i64* %PC, align 8
  %2963 = add i64 %2962, 5
  store i64 %2963, i64* %PC, align 8
  %2964 = inttoptr i64 %2961 to double*
  %2965 = load double, double* %2964, align 8
  store double %2965, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %2966 = add i64 %2962, 10
  store i64 %2966, i64* %PC, align 8
  %2967 = load double, double* %2964, align 8
  %2968 = fmul double %2965, %2967
  store double %2968, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %2969 = add i64 %2960, -40
  %2970 = add i64 %2962, 15
  store i64 %2970, i64* %PC, align 8
  %2971 = inttoptr i64 %2969 to double*
  store double %2968, double* %2971, align 8
  %2972 = load i64, i64* %RBP, align 8
  %2973 = add i64 %2972, -24
  %2974 = load i64, i64* %PC, align 8
  %2975 = add i64 %2974, 5
  store i64 %2975, i64* %PC, align 8
  %2976 = inttoptr i64 %2973 to double*
  %2977 = load double, double* %2976, align 8
  store double %2977, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %2978 = load double, double* bitcast (%A6_type* @A6 to double*), align 8
  store double %2978, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %2979 = add i64 %2972, -40
  %2980 = add i64 %2974, 19
  store i64 %2980, i64* %PC, align 8
  %2981 = inttoptr i64 %2979 to double*
  %2982 = load double, double* %2981, align 8
  %2983 = fmul double %2978, %2982
  %2984 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %2985 = fadd double %2983, %2984
  store double %2985, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %2986 = add i64 %2974, 33
  store i64 %2986, i64* %PC, align 8
  %2987 = load double, double* %2981, align 8
  %2988 = fmul double %2985, %2987
  %2989 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %2990 = fadd double %2988, %2989
  store double %2990, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %2991 = add i64 %2974, 47
  store i64 %2991, i64* %PC, align 8
  %2992 = load double, double* %2981, align 8
  %2993 = fmul double %2990, %2992
  %2994 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %2995 = fadd double %2993, %2994
  store double %2995, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %2996 = add i64 %2974, 61
  store i64 %2996, i64* %PC, align 8
  %2997 = load double, double* %2981, align 8
  %2998 = fmul double %2995, %2997
  %2999 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %3000 = fadd double %2998, %2999
  store double %3000, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3001 = add i64 %2974, 75
  store i64 %3001, i64* %PC, align 8
  %3002 = load double, double* %2981, align 8
  %3003 = fmul double %3000, %3002
  %3004 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %3005 = fadd double %3003, %3004
  store double %3005, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3006 = add i64 %2974, 89
  store i64 %3006, i64* %PC, align 8
  %3007 = load double, double* %2981, align 8
  %3008 = fmul double %3005, %3007
  %3009 = load double, double* bitcast (%A0_type* @A0 to double*), align 8
  %3010 = fadd double %3008, %3009
  %3011 = fmul double %2977, %3010
  store double %3011, double* bitcast (%sb_type* @sb to double*), align 8
  %3012 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %3013 = fsub double %3012, %3011
  store double %3013, double* bitcast (%sc_type* @sc to double*), align 8
  %3014 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3015 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 104) to double*), align 8
  %3016 = fdiv double %3014, %3015
  store double %3016, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 112) to double*), align 16
  %3017 = load <2 x i32>, <2 x i32>* %1483, align 1
  %3018 = load <2 x i32>, <2 x i32>* %1485, align 1
  %3019 = extractelement <2 x i32> %3017, i32 0
  store i32 %3019, i32* %1488, align 1, !tbaa !2455
  %3020 = extractelement <2 x i32> %3017, i32 1
  store i32 %3020, i32* %1491, align 1, !tbaa !2455
  %3021 = extractelement <2 x i32> %3018, i32 0
  store i32 %3021, i32* %1493, align 1, !tbaa !2455
  %3022 = extractelement <2 x i32> %3018, i32 1
  store i32 %3022, i32* %1496, align 1, !tbaa !2455
  %3023 = load double, double* %80, align 1
  %3024 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %3025 = fmul double %3023, %3024
  store double %3025, double* %80, align 1, !tbaa !2451
  store i32 %3019, i32* %1500, align 1, !tbaa !2455
  store i32 %3020, i32* %1502, align 1, !tbaa !2455
  store i32 %3021, i32* %1503, align 1, !tbaa !2455
  store i32 %3022, i32* %1505, align 1, !tbaa !2455
  %3026 = load double, double* %86, align 1
  %3027 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %3028 = fmul double %3026, %3027
  store double %3028, double* %86, align 1, !tbaa !2451
  %3029 = bitcast <2 x i32> %3017 to double
  %3030 = fmul double %3029, %3016
  %3031 = load i64, i64* %RBP, align 8
  %3032 = add i64 %3031, -208
  %3033 = add i64 %2974, 206
  store i64 %3033, i64* %PC, align 8
  %3034 = inttoptr i64 %3032 to double*
  store double %3030, double* %3034, align 8
  %3035 = load i64, i64* %PC, align 8
  %3036 = load <2 x i32>, <2 x i32>* %1516, align 1
  %3037 = load <2 x i32>, <2 x i32>* %1518, align 1
  %3038 = extractelement <2 x i32> %3036, i32 0
  store i32 %3038, i32* %187, align 1, !tbaa !2455
  %3039 = extractelement <2 x i32> %3036, i32 1
  store i32 %3039, i32* %189, align 1, !tbaa !2455
  %3040 = extractelement <2 x i32> %3037, i32 0
  store i32 %3040, i32* %190, align 1, !tbaa !2455
  %3041 = extractelement <2 x i32> %3037, i32 1
  store i32 %3041, i32* %192, align 1, !tbaa !2455
  %3042 = load <2 x i32>, <2 x i32>* %1524, align 1
  %3043 = load <2 x i32>, <2 x i32>* %1526, align 1
  %3044 = extractelement <2 x i32> %3042, i32 0
  store i32 %3044, i32* %1488, align 1, !tbaa !2455
  %3045 = extractelement <2 x i32> %3042, i32 1
  store i32 %3045, i32* %1491, align 1, !tbaa !2455
  %3046 = extractelement <2 x i32> %3043, i32 0
  store i32 %3046, i32* %1493, align 1, !tbaa !2455
  %3047 = extractelement <2 x i32> %3043, i32 1
  store i32 %3047, i32* %1496, align 1, !tbaa !2455
  %3048 = load i64, i64* %RBP, align 8
  %3049 = add i64 %3048, -208
  %3050 = add i64 %3035, 14
  store i64 %3050, i64* %PC, align 8
  %3051 = inttoptr i64 %3049 to i64*
  %3052 = load i64, i64* %3051, align 8
  store i64 %3052, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3053 = add i64 %3048, -212
  %3054 = load i32, i32* %EAX, align 4
  %3055 = add i64 %3035, 20
  store i64 %3055, i64* %PC, align 8
  %3056 = inttoptr i64 %3053 to i32*
  store i32 %3054, i32* %3056, align 4
  %3057 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %3058 = add i64 %3057, -4197
  %3059 = add i64 %3057, 7
  %3060 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3061 = add i64 %3060, -8
  %3062 = inttoptr i64 %3061 to i64*
  store i64 %3059, i64* %3062, align 8
  store i64 %3061, i64* %RSP, align 8, !tbaa !2428
  store i64 %3058, i64* %PC, align 8, !tbaa !2428
  %3063 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %2871)
  %3064 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i32 0, i32* %187, align 1, !tbaa !2454
  store i32 0, i32* %189, align 1, !tbaa !2454
  store i32 0, i32* %190, align 1, !tbaa !2454
  store i32 0, i32* %192, align 1, !tbaa !2454
  %3065 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  store double %3065, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %3066 = load double, double* bitcast (%three_type* @three to double*), align 8
  store double %3066, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3067 = load i64, i64* %RBP, align 8
  %3068 = add i64 %3067, -80
  %3069 = add i64 %3064, 35
  store i64 %3069, i64* %PC, align 8
  %3070 = inttoptr i64 %3068 to i64*
  %3071 = load i64, i64* %3070, align 8
  store i64 %3071, i64* %RCX, align 8, !tbaa !2428
  %3072 = sitofp i64 %3071 to double
  store double %3072, double* %91, align 1, !tbaa !2451
  %3073 = fmul double %3066, %3072
  store double %3073, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3074 = fdiv double %3065, %3073
  store double %3074, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3075 = add i64 %3067, -48
  %3076 = add i64 %3064, 53
  store i64 %3076, i64* %PC, align 8
  %3077 = inttoptr i64 %3075 to double*
  store double %3074, double* %3077, align 8
  %3078 = load i64, i64* %RBP, align 8
  %3079 = add i64 %3078, -16
  %3080 = load i64, i64* %PC, align 8
  %3081 = add i64 %3080, 5
  store i64 %3081, i64* %PC, align 8
  %3082 = load i64, i64* %75, align 1
  %3083 = inttoptr i64 %3079 to i64*
  store i64 %3082, i64* %3083, align 8
  %3084 = load i64, i64* %RBP, align 8
  %3085 = add i64 %3084, -32
  %3086 = load i64, i64* %PC, align 8
  %3087 = add i64 %3086, 5
  store i64 %3087, i64* %PC, align 8
  %3088 = load i64, i64* %75, align 1
  %3089 = inttoptr i64 %3085 to i64*
  store i64 %3088, i64* %3089, align 8
  %3090 = load i64, i64* %RBP, align 8
  %3091 = add i64 %3090, -216
  %3092 = load i32, i32* %EAX, align 4
  %3093 = load i64, i64* %PC, align 8
  %3094 = add i64 %3093, 6
  store i64 %3094, i64* %PC, align 8
  %3095 = inttoptr i64 %3091 to i32*
  store i32 %3092, i32* %3095, align 4
  %3096 = load i64, i64* %PC, align 8
  %3097 = add i64 %3096, 4367
  %3098 = add i64 %3096, 5
  %3099 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3100 = add i64 %3099, -8
  %3101 = inttoptr i64 %3100 to i64*
  store i64 %3098, i64* %3101, align 8
  store i64 %3100, i64* %RSP, align 8, !tbaa !2428
  store i64 %3097, i64* %PC, align 8, !tbaa !2428
  %3102 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %3097, %struct.Memory* %3063)
  %3103 = load i64, i64* %RBP, align 8
  %3104 = add i64 %3103, -72
  %3105 = load i64, i64* %PC, align 8
  %3106 = add i64 %3105, 8
  store i64 %3106, i64* %PC, align 8
  %3107 = inttoptr i64 %3104 to i64*
  store i64 1, i64* %3107, align 8
  %3108 = load i64, i64* %RBP, align 8
  %3109 = add i64 %3108, -220
  %3110 = load i32, i32* %EAX, align 4
  %3111 = load i64, i64* %PC, align 8
  %3112 = add i64 %3111, 6
  store i64 %3112, i64* %PC, align 8
  %3113 = inttoptr i64 %3109 to i32*
  store i32 %3110, i32* %3113, align 4
  %.pre16 = load i64, i64* %PC, align 8
  br label %block_4014f4

block_400689:                                     ; preds = %block_400802, %block_400540
  %3114 = phi i64 [ %.pre, %block_400540 ], [ %3831, %block_400802 ]
  %MEMORY.9 = phi %struct.Memory* [ %185, %block_400540 ], [ %2684, %block_400802 ]
  %3115 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  store double %3115, double* %74, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %3116 = load double, double* bitcast (%TLimit_type* @TLimit to double*), align 8
  store double %3116, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %3117 = add i64 %3114, 22
  store i64 %3117, i64* %PC, align 8
  %3118 = fcmp uno double %3116, %3115
  br i1 %3118, label %3119, label %3129

; <label>:3119:                                   ; preds = %block_400689
  %3120 = fadd double %3116, %3115
  %3121 = bitcast double %3120 to i64
  %3122 = and i64 %3121, 9221120237041090560
  %3123 = icmp eq i64 %3122, 9218868437227405312
  %3124 = and i64 %3121, 2251799813685247
  %3125 = icmp ne i64 %3124, 0
  %3126 = and i1 %3123, %3125
  br i1 %3126, label %3127, label %3135

; <label>:3127:                                   ; preds = %3119
  %3128 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3117, %struct.Memory* %MEMORY.9) #9
  %.pre5 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:3129:                                   ; preds = %block_400689
  %3130 = fcmp ogt double %3116, %3115
  br i1 %3130, label %3135, label %3131

; <label>:3131:                                   ; preds = %3129
  %3132 = fcmp olt double %3116, %3115
  br i1 %3132, label %3135, label %3133

; <label>:3133:                                   ; preds = %3131
  %3134 = fcmp oeq double %3116, %3115
  br i1 %3134, label %3135, label %3139

; <label>:3135:                                   ; preds = %3133, %3131, %3129, %3119
  %3136 = phi i8 [ 0, %3129 ], [ 0, %3131 ], [ 1, %3133 ], [ 1, %3119 ]
  %3137 = phi i8 [ 0, %3129 ], [ 0, %3131 ], [ 0, %3133 ], [ 1, %3119 ]
  %3138 = phi i8 [ 0, %3129 ], [ 1, %3131 ], [ 0, %3133 ], [ 1, %3119 ]
  store i8 %3136, i8* %38, align 1, !tbaa !2453
  store i8 %3137, i8* %30, align 1, !tbaa !2453
  store i8 %3138, i8* %23, align 1, !tbaa !2453
  br label %3139

; <label>:3139:                                   ; preds = %3135, %3133
  store i8 0, i8* %47, align 1, !tbaa !2453
  store i8 0, i8* %41, align 1, !tbaa !2453
  store i8 0, i8* %35, align 1, !tbaa !2453
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %3139, %3127
  %3140 = phi i64 [ %.pre5, %3127 ], [ %3117, %3139 ]
  %3141 = phi %struct.Memory* [ %3128, %3127 ], [ %MEMORY.9, %3139 ]
  %3142 = load i8, i8* %23, align 1, !tbaa !2432
  %3143 = load i8, i8* %38, align 1, !tbaa !2447
  %3144 = or i8 %3143, %3142
  %3145 = icmp ne i8 %3144, 0
  %.v = select i1 %3145, i64 360, i64 6
  %3146 = add i64 %3140, %.v
  store i64 %3146, i64* %PC, align 8, !tbaa !2428
  br i1 %3145, label %block_400807, label %block_4006a5

block_400ae2:                                     ; preds = %block_400ad4
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
  %3147 = add i64 %659, -16
  %3148 = add i64 %695, 15
  store i64 %3148, i64* %PC, align 8
  %3149 = inttoptr i64 %3147 to i64*
  %3150 = load i64, i64* %3149, align 8
  %3151 = xor i64 %3150, -9223372036854775808
  store i64 %3151, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %23, align 1, !tbaa !2432
  %3152 = trunc i64 %3150 to i32
  %3153 = and i32 %3152, 255
  %3154 = tail call i32 @llvm.ctpop.i32(i32 %3153) #8
  %3155 = trunc i32 %3154 to i8
  %3156 = and i8 %3155, 1
  %3157 = xor i8 %3156, 1
  store i8 %3157, i8* %30, align 1, !tbaa !2446
  %3158 = icmp eq i64 %3151, 0
  %3159 = zext i1 %3158 to i8
  store i8 %3159, i8* %38, align 1, !tbaa !2447
  %3160 = lshr i64 %3151, 63
  %3161 = trunc i64 %3160 to i8
  store i8 %3161, i8* %41, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %35, align 1, !tbaa !2450
  %3162 = add i64 %695, 33
  store i64 %3162, i64* %PC, align 8
  store i64 %3151, i64* %3149, align 8
  %3163 = load i64, i64* %PC, align 8
  %3164 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  store double %3164, double* %74, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %3165 = load i64, i64* %RBP, align 8
  %3166 = add i64 %3165, -16
  %3167 = add i64 %3163, 14
  store i64 %3167, i64* %PC, align 8
  %3168 = inttoptr i64 %3166 to double*
  %3169 = load double, double* %3168, align 8
  %3170 = fadd double %3164, %3169
  store double %3170, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  store double %3170, double* bitcast (%sa_type* @sa to double*), align 8
  %3171 = add i64 %3165, -72
  %3172 = add i64 %3163, 27
  store i64 %3172, i64* %PC, align 8
  %3173 = inttoptr i64 %3171 to i64*
  %3174 = load i64, i64* %3173, align 8
  %3175 = add i64 %3174, 1
  store i64 %3175, i64* %RAX, align 8, !tbaa !2428
  %3176 = icmp eq i64 %3174, -1
  %3177 = icmp eq i64 %3175, 0
  %3178 = or i1 %3176, %3177
  %3179 = zext i1 %3178 to i8
  store i8 %3179, i8* %23, align 1, !tbaa !2432
  %3180 = trunc i64 %3175 to i32
  %3181 = and i32 %3180, 255
  %3182 = tail call i32 @llvm.ctpop.i32(i32 %3181) #8
  %3183 = trunc i32 %3182 to i8
  %3184 = and i8 %3183, 1
  %3185 = xor i8 %3184, 1
  store i8 %3185, i8* %30, align 1, !tbaa !2446
  %3186 = xor i64 %3174, %3175
  %3187 = lshr i64 %3186, 4
  %3188 = trunc i64 %3187 to i8
  %3189 = and i8 %3188, 1
  store i8 %3189, i8* %35, align 1, !tbaa !2450
  %3190 = zext i1 %3177 to i8
  store i8 %3190, i8* %38, align 1, !tbaa !2447
  %3191 = lshr i64 %3175, 63
  %3192 = trunc i64 %3191 to i8
  store i8 %3192, i8* %41, align 1, !tbaa !2448
  %3193 = lshr i64 %3174, 63
  %3194 = xor i64 %3191, %3193
  %3195 = add nuw nsw i64 %3194, %3191
  %3196 = icmp eq i64 %3195, 2
  %3197 = zext i1 %3196 to i8
  store i8 %3197, i8* %47, align 1, !tbaa !2449
  %3198 = add i64 %3163, 35
  store i64 %3198, i64* %PC, align 8
  store i64 %3175, i64* %3173, align 8
  %3199 = load i64, i64* %PC, align 8
  %3200 = add i64 %3199, -82
  store i64 %3200, i64* %PC, align 8, !tbaa !2428
  br label %block_400ad4

block_400807:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit, %block_4007fd
  %3201 = phi i64 [ %2179, %block_4007fd ], [ %3146, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ]
  %MEMORY.10 = phi %struct.Memory* [ %2684, %block_4007fd ], [ %3141, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit ]
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %3202 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 64) to i64*), align 16
  store i64 %3202, i64* bitcast (%scale_type* @scale to i64*), align 8
  store i64 %3202, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  store i64 %3202, i64* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to i64*), align 8
  %3203 = add i64 %3201, 7657
  %3204 = add i64 %3201, 50
  %3205 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3206 = add i64 %3205, -8
  %3207 = inttoptr i64 %3206 to i64*
  store i64 %3204, i64* %3207, align 8
  store i64 %3206, i64* %RSP, align 8, !tbaa !2428
  store i64 %3203, i64* %PC, align 8, !tbaa !2428
  %3208 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %3203, %struct.Memory* %MEMORY.10)
  %3209 = load i64, i64* %RBP, align 8
  %3210 = add i64 %3209, -72
  %3211 = load i64, i64* %PC, align 8
  %3212 = add i64 %3211, 8
  store i64 %3212, i64* %PC, align 8
  %3213 = inttoptr i64 %3210 to i64*
  store i64 1, i64* %3213, align 8
  %3214 = load i64, i64* %RBP, align 8
  %3215 = add i64 %3214, -124
  %3216 = load i32, i32* %EAX, align 4
  %3217 = load i64, i64* %PC, align 8
  %3218 = add i64 %3217, 3
  store i64 %3218, i64* %PC, align 8
  %3219 = inttoptr i64 %3215 to i32*
  store i32 %3216, i32* %3219, align 4
  %.pre7 = load i64, i64* %PC, align 8
  br label %block_400844

block_400c7a:                                     ; preds = %block_400bc8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %3220 = add i64 %1783, 6518
  %3221 = add i64 %1783, 15
  %3222 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3223 = add i64 %3222, -8
  %3224 = inttoptr i64 %3223 to i64*
  store i64 %3221, i64* %3224, align 8
  store i64 %3223, i64* %RSP, align 8, !tbaa !2428
  store i64 %3220, i64* %PC, align 8, !tbaa !2428
  %3225 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %3220, %struct.Memory* %3457)
  %3226 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 426), i64* %RDI, align 8, !tbaa !2428
  %3227 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to i64*), align 8
  store i64 %3227, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %3228 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 96) to i64*), align 16
  store i64 %3228, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %3229 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 104) to double*), align 8
  %3230 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %3231 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %3232 = fmul double %3230, %3231
  store double %3232, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 48) to double*), align 16
  %3233 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to double*), align 8
  %3234 = fsub double %3232, %3233
  %3235 = fdiv double %3234, %3229
  store double %3235, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  store double %3235, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 56) to double*), align 8
  %3236 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  store double %3236, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3237 = load i64, i64* %RBP, align 8
  %3238 = add i64 %3237, -48
  %3239 = add i64 %3226, 106
  store i64 %3239, i64* %PC, align 8
  %3240 = inttoptr i64 %3238 to double*
  %3241 = load double, double* %3240, align 8
  %3242 = fmul double %3236, %3241
  %3243 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %3244 = fdiv double %3242, %3243
  %3245 = tail call double @llvm.trunc.f64(double %3244) #8
  %3246 = tail call double @llvm.fabs.f64(double %3245) #8
  %3247 = fcmp ogt double %3246, 0x43E0000000000000
  %3248 = fptosi double %3245 to i64
  %3249 = select i1 %3247, i64 -9223372036854775808, i64 %3248
  store i64 %3249, i64* %RCX, align 8, !tbaa !2428
  %3250 = add i64 %3237, -80
  %3251 = add i64 %3226, 124
  store i64 %3251, i64* %PC, align 8
  %3252 = inttoptr i64 %3250 to i64*
  store i64 %3249, i64* %3252, align 8
  %3253 = load i64, i64* %PC, align 8
  %3254 = load double, double* bitcast (%four_type* @four to double*), align 8
  store double %3254, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3255 = load i64, i64* %RBP, align 8
  %3256 = add i64 %3255, -40
  %3257 = add i64 %3253, 14
  store i64 %3257, i64* %PC, align 8
  %3258 = inttoptr i64 %3256 to double*
  %3259 = load double, double* %3258, align 8
  %3260 = fmul double %3254, %3259
  %3261 = load double, double* bitcast (%five_type* @five to double*), align 8
  %3262 = fdiv double %3260, %3261
  store double %3262, double* bitcast (%sa_type* @sa to double*), align 8
  store double %3262, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  store double %3261, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %3263 = add i64 %3255, -32
  %3264 = add i64 %3253, 55
  store i64 %3264, i64* %PC, align 8
  %3265 = inttoptr i64 %3263 to double*
  %3266 = load double, double* %3265, align 8
  %3267 = fdiv double %3261, %3266
  store double %3267, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %3268 = fadd double %3262, %3267
  store double %3268, double* bitcast (%sb_type* @sb to double*), align 8
  %3269 = load double, double* %80, align 1
  store double %3269, double* bitcast (%sc_type* @sc to double*), align 8
  store double %3268, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  store double %3269, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3270 = add i64 %3253, 100
  store i64 %3270, i64* %PC, align 8
  %3271 = load double, double* %3265, align 8
  store double %3271, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %3272 = add i64 %3253, 105
  store i64 %3272, i64* %PC, align 8
  %3273 = load double, double* %3265, align 8
  %3274 = fmul double %3271, %3273
  store double %3274, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %3275 = add i64 %3253, 110
  store i64 %3275, i64* %PC, align 8
  %3276 = load double, double* %3265, align 8
  %3277 = fmul double %3274, %3276
  store double %3277, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %3278 = fdiv double %3269, %3277
  %3279 = fsub double %3268, %3278
  store double %3279, double* bitcast (%piprg_type* @piprg to double*), align 8
  %3280 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %3281 = fsub double %3279, %3280
  store double %3281, double* bitcast (%pierr_type* @pierr to double*), align 8
  %3282 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3283 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 56) to double*), align 8
  %3284 = fdiv double %3282, %3283
  store double %3284, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 64) to double*), align 16
  %3285 = load <2 x i32>, <2 x i32>* %1483, align 1
  %3286 = load <2 x i32>, <2 x i32>* %1485, align 1
  %3287 = extractelement <2 x i32> %3285, i32 0
  store i32 %3287, i32* %1488, align 1, !tbaa !2455
  %3288 = extractelement <2 x i32> %3285, i32 1
  store i32 %3288, i32* %1491, align 1, !tbaa !2455
  %3289 = extractelement <2 x i32> %3286, i32 0
  store i32 %3289, i32* %1493, align 1, !tbaa !2455
  %3290 = extractelement <2 x i32> %3286, i32 1
  store i32 %3290, i32* %1496, align 1, !tbaa !2455
  %3291 = load double, double* %80, align 1
  %3292 = load double, double* bitcast (%pierr_type* @pierr to double*), align 8
  %3293 = fmul double %3291, %3292
  store double %3293, double* %80, align 1, !tbaa !2451
  %3294 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 48) to double*), align 16
  %3295 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to double*), align 8
  %3296 = fsub double %3294, %3295
  %3297 = bitcast <2 x i32> %3285 to double
  %3298 = fmul double %3296, %3297
  store double %3298, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3299 = fmul double %3297, %3284
  %3300 = load i64, i64* %RBP, align 8
  %3301 = add i64 %3300, -160
  %3302 = add i64 %3253, 232
  store i64 %3302, i64* %PC, align 8
  %3303 = inttoptr i64 %3301 to double*
  store double %3299, double* %3303, align 8
  %3304 = load i64, i64* %PC, align 8
  %3305 = load <2 x i32>, <2 x i32>* %1516, align 1
  %3306 = load <2 x i32>, <2 x i32>* %1518, align 1
  %3307 = extractelement <2 x i32> %3305, i32 0
  store i32 %3307, i32* %187, align 1, !tbaa !2455
  %3308 = extractelement <2 x i32> %3305, i32 1
  store i32 %3308, i32* %189, align 1, !tbaa !2455
  %3309 = extractelement <2 x i32> %3306, i32 0
  store i32 %3309, i32* %190, align 1, !tbaa !2455
  %3310 = extractelement <2 x i32> %3306, i32 1
  store i32 %3310, i32* %192, align 1, !tbaa !2455
  %3311 = load <2 x i32>, <2 x i32>* %1524, align 1
  %3312 = load <2 x i32>, <2 x i32>* %1526, align 1
  %3313 = extractelement <2 x i32> %3311, i32 0
  store i32 %3313, i32* %1488, align 1, !tbaa !2455
  %3314 = extractelement <2 x i32> %3311, i32 1
  store i32 %3314, i32* %1491, align 1, !tbaa !2455
  %3315 = extractelement <2 x i32> %3312, i32 0
  store i32 %3315, i32* %1493, align 1, !tbaa !2455
  %3316 = extractelement <2 x i32> %3312, i32 1
  store i32 %3316, i32* %1496, align 1, !tbaa !2455
  %3317 = load i64, i64* %RBP, align 8
  %3318 = add i64 %3317, -160
  %3319 = add i64 %3304, 14
  store i64 %3319, i64* %PC, align 8
  %3320 = inttoptr i64 %3318 to i64*
  %3321 = load i64, i64* %3320, align 8
  store i64 %3321, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3322 = add i64 %3317, -164
  %3323 = load i32, i32* %EAX, align 4
  %3324 = add i64 %3304, 20
  store i64 %3324, i64* %PC, align 8
  %3325 = inttoptr i64 %3322 to i32*
  store i32 %3323, i32* %3325, align 4
  %3326 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %3327 = add i64 %3326, -2513
  %3328 = add i64 %3326, 7
  %3329 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3330 = add i64 %3329, -8
  %3331 = inttoptr i64 %3330 to i64*
  store i64 %3328, i64* %3331, align 8
  store i64 %3330, i64* %RSP, align 8, !tbaa !2428
  store i64 %3327, i64* %PC, align 8, !tbaa !2428
  %3332 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %3225)
  %3333 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i32 0, i32* %187, align 1, !tbaa !2454
  store i32 0, i32* %189, align 1, !tbaa !2454
  store i32 0, i32* %190, align 1, !tbaa !2454
  store i32 0, i32* %192, align 1, !tbaa !2454
  %3334 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  store double %3334, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %3335 = load double, double* bitcast (%three_type* @three to double*), align 8
  store double %3335, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3336 = load i64, i64* %RBP, align 8
  %3337 = add i64 %3336, -80
  %3338 = add i64 %3333, 35
  store i64 %3338, i64* %PC, align 8
  %3339 = inttoptr i64 %3337 to i64*
  %3340 = load i64, i64* %3339, align 8
  store i64 %3340, i64* %RCX, align 8, !tbaa !2428
  %3341 = sitofp i64 %3340 to double
  store double %3341, double* %91, align 1, !tbaa !2451
  %3342 = fmul double %3335, %3341
  store double %3342, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3343 = fdiv double %3334, %3342
  store double %3343, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3344 = add i64 %3336, -48
  %3345 = add i64 %3333, 53
  store i64 %3345, i64* %PC, align 8
  %3346 = inttoptr i64 %3344 to double*
  store double %3343, double* %3346, align 8
  %3347 = load i64, i64* %RBP, align 8
  %3348 = add i64 %3347, -16
  %3349 = load i64, i64* %PC, align 8
  %3350 = add i64 %3349, 5
  store i64 %3350, i64* %PC, align 8
  %3351 = load i64, i64* %75, align 1
  %3352 = inttoptr i64 %3348 to i64*
  store i64 %3351, i64* %3352, align 8
  %3353 = load i64, i64* %RBP, align 8
  %3354 = add i64 %3353, -32
  %3355 = load i64, i64* %PC, align 8
  %3356 = add i64 %3355, 5
  store i64 %3356, i64* %PC, align 8
  %3357 = load i64, i64* %75, align 1
  %3358 = inttoptr i64 %3354 to i64*
  store i64 %3357, i64* %3358, align 8
  %3359 = load i64, i64* %RBP, align 8
  %3360 = add i64 %3359, -168
  %3361 = load i32, i32* %EAX, align 4
  %3362 = load i64, i64* %PC, align 8
  %3363 = add i64 %3362, 6
  store i64 %3363, i64* %PC, align 8
  %3364 = inttoptr i64 %3360 to i32*
  store i32 %3361, i32* %3364, align 4
  %3365 = load i64, i64* %PC, align 8
  %3366 = add i64 %3365, 6051
  %3367 = add i64 %3365, 5
  %3368 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3369 = add i64 %3368, -8
  %3370 = inttoptr i64 %3369 to i64*
  store i64 %3367, i64* %3370, align 8
  store i64 %3369, i64* %RSP, align 8, !tbaa !2428
  store i64 %3366, i64* %PC, align 8, !tbaa !2428
  %3371 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %3366, %struct.Memory* %3332)
  %3372 = load i64, i64* %RBP, align 8
  %3373 = add i64 %3372, -72
  %3374 = load i64, i64* %PC, align 8
  %3375 = add i64 %3374, 8
  store i64 %3375, i64* %PC, align 8
  %3376 = inttoptr i64 %3373 to i64*
  store i64 1, i64* %3376, align 8
  %3377 = load i64, i64* %RBP, align 8
  %3378 = add i64 %3377, -172
  %3379 = load i32, i32* %EAX, align 4
  %3380 = load i64, i64* %PC, align 8
  %3381 = add i64 %3380, 6
  store i64 %3381, i64* %PC, align 8
  %3382 = inttoptr i64 %3378 to i32*
  store i32 %3379, i32* %3382, align 4
  %.pre14 = load i64, i64* %PC, align 8
  br label %block_400e60

block_401184:                                     ; preds = %block_400f2b, %block_401199
  %3383 = phi i64 [ %.pre15, %block_400f2b ], [ %2349, %block_401199 ]
  %3384 = load i64, i64* %RBP, align 8
  %3385 = add i64 %3384, -72
  %3386 = add i64 %3383, 4
  store i64 %3386, i64* %PC, align 8
  %3387 = inttoptr i64 %3385 to i64*
  %3388 = load i64, i64* %3387, align 8
  store i64 %3388, i64* %RAX, align 8, !tbaa !2428
  %3389 = add i64 %3384, -80
  %3390 = add i64 %3383, 8
  store i64 %3390, i64* %PC, align 8
  %3391 = inttoptr i64 %3389 to i64*
  %3392 = load i64, i64* %3391, align 8
  %3393 = add i64 %3392, -1
  store i64 %3393, i64* %RCX, align 8, !tbaa !2428
  %3394 = lshr i64 %3393, 63
  %3395 = sub i64 %3388, %3393
  %3396 = icmp ult i64 %3388, %3393
  %3397 = zext i1 %3396 to i8
  store i8 %3397, i8* %23, align 1, !tbaa !2432
  %3398 = trunc i64 %3395 to i32
  %3399 = and i32 %3398, 255
  %3400 = tail call i32 @llvm.ctpop.i32(i32 %3399) #8
  %3401 = trunc i32 %3400 to i8
  %3402 = and i8 %3401, 1
  %3403 = xor i8 %3402, 1
  store i8 %3403, i8* %30, align 1, !tbaa !2446
  %3404 = xor i64 %3393, %3388
  %3405 = xor i64 %3404, %3395
  %3406 = lshr i64 %3405, 4
  %3407 = trunc i64 %3406 to i8
  %3408 = and i8 %3407, 1
  store i8 %3408, i8* %35, align 1, !tbaa !2450
  %3409 = icmp eq i64 %3395, 0
  %3410 = zext i1 %3409 to i8
  store i8 %3410, i8* %38, align 1, !tbaa !2447
  %3411 = lshr i64 %3395, 63
  %3412 = trunc i64 %3411 to i8
  store i8 %3412, i8* %41, align 1, !tbaa !2448
  %3413 = lshr i64 %3388, 63
  %3414 = xor i64 %3394, %3413
  %3415 = xor i64 %3411, %3413
  %3416 = add nuw nsw i64 %3415, %3414
  %3417 = icmp eq i64 %3416, 2
  %3418 = zext i1 %3417 to i8
  store i8 %3418, i8* %47, align 1, !tbaa !2449
  %3419 = icmp ne i8 %3412, 0
  %3420 = xor i1 %3419, %3417
  %.demorgan32 = or i1 %3409, %3420
  %.v33 = select i1 %.demorgan32, i64 21, i64 199
  %3421 = add i64 %3383, %.v33
  store i64 %3421, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan32, label %block_401199, label %block_40124b

block_400b79:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit, %block_400b6d
  %3422 = phi i64 [ %249, %block_400b6d ], [ %2178, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit ]
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i32 0, i32* %187, align 1, !tbaa !2454
  store i32 0, i32* %189, align 1, !tbaa !2454
  store i32 0, i32* %190, align 1, !tbaa !2454
  store i32 0, i32* %192, align 1, !tbaa !2454
  %3423 = load i64, i64* %RBP, align 8
  %3424 = add i64 %3423, -80
  %3425 = add i64 %3422, 17
  store i64 %3425, i64* %PC, align 8
  %3426 = inttoptr i64 %3424 to i64*
  %3427 = load i64, i64* %3426, align 8
  store i64 %3427, i64* %RAX, align 8, !tbaa !2428
  %3428 = sitofp i64 %3427 to double
  store double %3428, double* bitcast (%sc_type* @sc to double*), align 8
  %3429 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %3429, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %3430 = add i64 %3423, -24
  %3431 = add i64 %3422, 45
  store i64 %3431, i64* %PC, align 8
  %3432 = inttoptr i64 %3430 to i64*
  store i64 %3429, i64* %3432, align 8
  %3433 = load i64, i64* %RBP, align 8
  %3434 = add i64 %3433, -32
  %3435 = load i64, i64* %PC, align 8
  %3436 = add i64 %3435, 5
  store i64 %3436, i64* %PC, align 8
  %3437 = load i64, i64* %75, align 1
  %3438 = inttoptr i64 %3434 to i64*
  store i64 %3437, i64* %3438, align 8
  %3439 = load i64, i64* %RBP, align 8
  %3440 = add i64 %3439, -40
  %3441 = load i64, i64* %PC, align 8
  %3442 = add i64 %3441, 5
  store i64 %3442, i64* %PC, align 8
  %3443 = load i64, i64* %75, align 1
  %3444 = inttoptr i64 %3440 to i64*
  store i64 %3443, i64* %3444, align 8
  %3445 = load i64, i64* %RBP, align 8
  %3446 = add i64 %3445, -48
  %3447 = load i64, i64* %PC, align 8
  %3448 = add i64 %3447, 5
  store i64 %3448, i64* %PC, align 8
  %3449 = load i64, i64* %75, align 1
  %3450 = inttoptr i64 %3446 to i64*
  store i64 %3449, i64* %3450, align 8
  %3451 = load i64, i64* %PC, align 8
  %3452 = add i64 %3451, 6715
  %3453 = add i64 %3451, 5
  %3454 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3455 = add i64 %3454, -8
  %3456 = inttoptr i64 %3455 to i64*
  store i64 %3453, i64* %3456, align 8
  store i64 %3455, i64* %RSP, align 8, !tbaa !2428
  store i64 %3452, i64* %PC, align 8, !tbaa !2428
  %3457 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %3452, %struct.Memory* %2167)
  %3458 = load i64, i64* %RBP, align 8
  %3459 = add i64 %3458, -72
  %3460 = load i64, i64* %PC, align 8
  %3461 = add i64 %3460, 8
  store i64 %3461, i64* %PC, align 8
  %3462 = inttoptr i64 %3459 to i64*
  store i64 1, i64* %3462, align 8
  %3463 = load i64, i64* %RBP, align 8
  %3464 = add i64 %3463, -152
  %3465 = load i32, i32* %EAX, align 4
  %3466 = load i64, i64* %PC, align 8
  %3467 = add i64 %3466, 6
  store i64 %3467, i64* %PC, align 8
  %3468 = inttoptr i64 %3464 to i32*
  store i32 %3465, i32* %3468, align 4
  %.pre13 = load i64, i64* %PC, align 8
  br label %block_400bc8

block_401fa1:                                     ; preds = %block_401f8c
  %3469 = add i64 %2767, 4
  store i64 %3469, i64* %PC, align 8
  %3470 = load i64, i64* %2733, align 8
  store i64 %3470, i64* %RAX, align 8, !tbaa !2428
  %3471 = sitofp i64 %3470 to double
  store double %3471, double* %74, align 1, !tbaa !2451
  %3472 = add i64 %2730, -48
  %3473 = add i64 %2767, 14
  store i64 %3473, i64* %PC, align 8
  %3474 = inttoptr i64 %3472 to double*
  %3475 = load double, double* %3474, align 8
  %3476 = fmul double %3471, %3475
  store double %3476, double* %74, align 1, !tbaa !2451
  %3477 = add i64 %2730, -24
  %3478 = add i64 %2767, 19
  store i64 %3478, i64* %PC, align 8
  %3479 = inttoptr i64 %3477 to double*
  store double %3476, double* %3479, align 8
  %3480 = load i64, i64* %RBP, align 8
  %3481 = add i64 %3480, -24
  %3482 = load i64, i64* %PC, align 8
  %3483 = add i64 %3482, 5
  store i64 %3483, i64* %PC, align 8
  %3484 = inttoptr i64 %3481 to double*
  %3485 = load double, double* %3484, align 8
  store double %3485, double* %74, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %3486 = add i64 %3482, 10
  store i64 %3486, i64* %PC, align 8
  %3487 = load double, double* %3484, align 8
  %3488 = fmul double %3485, %3487
  store double %3488, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %3489 = add i64 %3480, -40
  %3490 = add i64 %3482, 15
  store i64 %3490, i64* %PC, align 8
  %3491 = inttoptr i64 %3489 to double*
  store double %3488, double* %3491, align 8
  %3492 = load i64, i64* %RBP, align 8
  %3493 = add i64 %3492, -40
  %3494 = load i64, i64* %PC, align 8
  %3495 = add i64 %3494, 5
  store i64 %3495, i64* %PC, align 8
  %3496 = inttoptr i64 %3493 to double*
  %3497 = load double, double* %3496, align 8
  store double %3497, double* %74, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %3498 = add i64 %3494, 10
  store i64 %3498, i64* %PC, align 8
  %3499 = load double, double* %3496, align 8
  store double %3499, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %3500 = add i64 %3494, 15
  store i64 %3500, i64* %PC, align 8
  %3501 = load double, double* %3496, align 8
  store double %3501, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3502 = add i64 %3494, 20
  store i64 %3502, i64* %PC, align 8
  %3503 = load double, double* %3496, align 8
  store double %3503, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %3504 = add i64 %3494, 25
  store i64 %3504, i64* %PC, align 8
  %3505 = load double, double* %3496, align 8
  store double %3505, double* %96, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %3506 = load double, double* bitcast (%B6_type* @B6 to double*), align 8
  store double %3506, double* %101, align 1, !tbaa !2451
  store double 0.000000e+00, double* %104, align 1, !tbaa !2451
  %3507 = add i64 %3494, 39
  store i64 %3507, i64* %PC, align 8
  %3508 = load double, double* %3496, align 8
  %3509 = fmul double %3506, %3508
  %3510 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %3511 = fadd double %3509, %3510
  store double %3511, double* %101, align 1, !tbaa !2451
  store i64 0, i64* %103, align 1, !tbaa !2451
  %3512 = fmul double %3505, %3511
  %3513 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %3514 = fadd double %3512, %3513
  store double %3514, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %3515 = fmul double %3503, %3514
  %3516 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %3517 = fadd double %3515, %3516
  store double %3517, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %3518 = fmul double %3501, %3517
  %3519 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %3520 = fadd double %3518, %3519
  store double %3520, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3521 = fmul double %3499, %3520
  %3522 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %3523 = fadd double %3521, %3522
  store double %3523, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3524 = fmul double %3497, %3523
  %3525 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3526 = fadd double %3524, %3525
  store double %3526, double* %74, align 1, !tbaa !2451
  store i64 0, i64* %76, align 1, !tbaa !2451
  %3527 = load i64, i64* %RBP, align 8
  %3528 = add i64 %3527, -32
  %3529 = add i64 %3494, 118
  store i64 %3529, i64* %PC, align 8
  %3530 = inttoptr i64 %3528 to double*
  store double %3526, double* %3530, align 8
  %3531 = load i64, i64* %RBP, align 8
  %3532 = add i64 %3531, -16
  %3533 = load i64, i64* %PC, align 8
  %3534 = add i64 %3533, 5
  store i64 %3534, i64* %PC, align 8
  %3535 = inttoptr i64 %3532 to i64*
  %3536 = load i64, i64* %3535, align 8
  store i64 %3536, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %3537 = add i64 %3531, -32
  %3538 = add i64 %3533, 10
  store i64 %3538, i64* %PC, align 8
  %3539 = inttoptr i64 %3537 to double*
  %3540 = load double, double* %3539, align 8
  store double %3540, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %3541 = add i64 %3533, 15
  store i64 %3541, i64* %PC, align 8
  %3542 = load double, double* %3539, align 8
  %3543 = fmul double %3540, %3542
  store double %3543, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3544 = add i64 %3531, -24
  %3545 = add i64 %3533, 20
  store i64 %3545, i64* %PC, align 8
  %3546 = inttoptr i64 %3544 to double*
  %3547 = load double, double* %3546, align 8
  %3548 = fmul double %3543, %3547
  store double %3548, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3549 = load double, double* bitcast (%A6_type* @A6 to double*), align 8
  store double %3549, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3550 = add i64 %3531, -40
  %3551 = add i64 %3533, 34
  store i64 %3551, i64* %PC, align 8
  %3552 = inttoptr i64 %3550 to double*
  %3553 = load double, double* %3552, align 8
  %3554 = fmul double %3549, %3553
  %3555 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %3556 = fadd double %3554, %3555
  store double %3556, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3557 = add i64 %3533, 48
  store i64 %3557, i64* %PC, align 8
  %3558 = load double, double* %3552, align 8
  %3559 = fmul double %3556, %3558
  %3560 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %3561 = fadd double %3559, %3560
  store double %3561, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3562 = add i64 %3533, 62
  store i64 %3562, i64* %PC, align 8
  %3563 = load double, double* %3552, align 8
  %3564 = fmul double %3561, %3563
  %3565 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %3566 = fadd double %3564, %3565
  store double %3566, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3567 = add i64 %3533, 76
  store i64 %3567, i64* %PC, align 8
  %3568 = load double, double* %3552, align 8
  %3569 = fmul double %3566, %3568
  %3570 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %3571 = fadd double %3569, %3570
  store double %3571, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3572 = add i64 %3533, 90
  store i64 %3572, i64* %PC, align 8
  %3573 = load double, double* %3552, align 8
  %3574 = fmul double %3571, %3573
  %3575 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %3576 = fadd double %3574, %3575
  store double %3576, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3577 = add i64 %3533, 104
  store i64 %3577, i64* %PC, align 8
  %3578 = load double, double* %3552, align 8
  %3579 = fmul double %3576, %3578
  %3580 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3581 = fadd double %3579, %3580
  store double %3581, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3582 = fmul double %3548, %3581
  store double %3582, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3583 = load double, double* %74, align 1
  %3584 = fadd double %3583, %3582
  store double %3584, double* %74, align 1, !tbaa !2451
  %3585 = load i64, i64* %RBP, align 8
  %3586 = add i64 %3585, -16
  %3587 = add i64 %3533, 126
  store i64 %3587, i64* %PC, align 8
  %3588 = inttoptr i64 %3586 to double*
  store double %3584, double* %3588, align 8
  %3589 = load i64, i64* %RBP, align 8
  %3590 = add i64 %3589, -72
  %3591 = load i64, i64* %PC, align 8
  %3592 = add i64 %3591, 4
  store i64 %3592, i64* %PC, align 8
  %3593 = inttoptr i64 %3590 to i64*
  %3594 = load i64, i64* %3593, align 8
  %3595 = add i64 %3594, 1
  store i64 %3595, i64* %RAX, align 8, !tbaa !2428
  %3596 = icmp eq i64 %3594, -1
  %3597 = icmp eq i64 %3595, 0
  %3598 = or i1 %3596, %3597
  %3599 = zext i1 %3598 to i8
  store i8 %3599, i8* %23, align 1, !tbaa !2432
  %3600 = trunc i64 %3595 to i32
  %3601 = and i32 %3600, 255
  %3602 = tail call i32 @llvm.ctpop.i32(i32 %3601) #8
  %3603 = trunc i32 %3602 to i8
  %3604 = and i8 %3603, 1
  %3605 = xor i8 %3604, 1
  store i8 %3605, i8* %30, align 1, !tbaa !2446
  %3606 = xor i64 %3594, %3595
  %3607 = lshr i64 %3606, 4
  %3608 = trunc i64 %3607 to i8
  %3609 = and i8 %3608, 1
  store i8 %3609, i8* %35, align 1, !tbaa !2450
  %3610 = zext i1 %3597 to i8
  store i8 %3610, i8* %38, align 1, !tbaa !2447
  %3611 = lshr i64 %3595, 63
  %3612 = trunc i64 %3611 to i8
  store i8 %3612, i8* %41, align 1, !tbaa !2448
  %3613 = lshr i64 %3594, 63
  %3614 = xor i64 %3611, %3613
  %3615 = add nuw nsw i64 %3614, %3611
  %3616 = icmp eq i64 %3615, 2
  %3617 = zext i1 %3616 to i8
  store i8 %3617, i8* %47, align 1, !tbaa !2449
  %3618 = add i64 %3591, 12
  store i64 %3618, i64* %PC, align 8
  store i64 %3595, i64* %3593, align 8
  %3619 = load i64, i64* %PC, align 8
  %3620 = add i64 %3619, -311
  store i64 %3620, i64* %PC, align 8, !tbaa !2428
  br label %block_401f8c

block_400f2b:                                     ; preds = %block_400e60
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %3621 = add i64 %1399, 5829
  %3622 = add i64 %1399, 15
  %3623 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3624 = add i64 %3623, -8
  %3625 = inttoptr i64 %3624 to i64*
  store i64 %3622, i64* %3625, align 8
  store i64 %3624, i64* %RSP, align 8, !tbaa !2428
  store i64 %3621, i64* %PC, align 8, !tbaa !2428
  %3626 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %3621, %struct.Memory* %3371)
  %3627 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 462), i64* %RDI, align 8, !tbaa !2428
  %3628 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 72) to i64*), align 8
  store i64 %3628, i64* %75, align 1, !tbaa !2451
  store double 0.000000e+00, double* %77, align 1, !tbaa !2451
  %3629 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 112) to i64*), align 16
  store i64 %3629, i64* %81, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %3630 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_402700__rodata_type* @seg_402700__rodata to i64), i64 120) to i64*), align 8
  store i64 %3630, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3631 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %3632 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %3633 = fmul double %3631, %3632
  %3634 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %3635 = fsub double %3633, %3634
  store double %3635, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %3636 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %3637 = load double, double* bitcast (%three_type* @three to double*), align 8
  %3638 = fdiv double %3636, %3637
  store double %3638, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %3639 = load i64, i64* %RBP, align 8
  %3640 = add i64 %3639, -24
  %3641 = add i64 %3627, 93
  store i64 %3641, i64* %PC, align 8
  %3642 = inttoptr i64 %3640 to double*
  store double %3638, double* %3642, align 8
  %3643 = load i64, i64* %RBP, align 8
  %3644 = add i64 %3643, -24
  %3645 = load i64, i64* %PC, align 8
  %3646 = add i64 %3645, 5
  store i64 %3646, i64* %PC, align 8
  %3647 = inttoptr i64 %3644 to double*
  %3648 = load double, double* %3647, align 8
  store double %3648, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %3649 = add i64 %3645, 10
  store i64 %3649, i64* %PC, align 8
  %3650 = load double, double* %3647, align 8
  %3651 = fmul double %3648, %3650
  store double %3651, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %3652 = add i64 %3643, -40
  %3653 = add i64 %3645, 15
  store i64 %3653, i64* %PC, align 8
  %3654 = inttoptr i64 %3652 to double*
  store double %3651, double* %3654, align 8
  %3655 = load i64, i64* %RBP, align 8
  %3656 = add i64 %3655, -24
  %3657 = load i64, i64* %PC, align 8
  %3658 = add i64 %3657, 5
  store i64 %3658, i64* %PC, align 8
  %3659 = inttoptr i64 %3656 to double*
  %3660 = load double, double* %3659, align 8
  store double %3660, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %3661 = load double, double* bitcast (%A6_type* @A6 to double*), align 8
  store double %3661, double* %96, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %3662 = add i64 %3655, -40
  %3663 = add i64 %3657, 19
  store i64 %3663, i64* %PC, align 8
  %3664 = inttoptr i64 %3662 to double*
  %3665 = load double, double* %3664, align 8
  %3666 = fmul double %3661, %3665
  %3667 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %3668 = fsub double %3666, %3667
  store double %3668, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %3669 = add i64 %3657, 33
  store i64 %3669, i64* %PC, align 8
  %3670 = load double, double* %3664, align 8
  %3671 = fmul double %3668, %3670
  %3672 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %3673 = fadd double %3671, %3672
  store double %3673, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %3674 = add i64 %3657, 47
  store i64 %3674, i64* %PC, align 8
  %3675 = load double, double* %3664, align 8
  %3676 = fmul double %3673, %3675
  %3677 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %3678 = fsub double %3676, %3677
  store double %3678, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %3679 = add i64 %3657, 61
  store i64 %3679, i64* %PC, align 8
  %3680 = load double, double* %3664, align 8
  %3681 = fmul double %3678, %3680
  %3682 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %3683 = fadd double %3681, %3682
  store double %3683, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %3684 = add i64 %3657, 75
  store i64 %3684, i64* %PC, align 8
  %3685 = load double, double* %3664, align 8
  %3686 = fmul double %3683, %3685
  %3687 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %3688 = fadd double %3686, %3687
  store double %3688, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %3689 = add i64 %3657, 89
  store i64 %3689, i64* %PC, align 8
  %3690 = load double, double* %3664, align 8
  %3691 = fmul double %3688, %3690
  %3692 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3693 = fadd double %3691, %3692
  store double %3693, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %3694 = fmul double %3660, %3693
  store double %3694, double* bitcast (%sa_type* @sa to double*), align 8
  %3695 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %3696 = load double, double* %86, align 1
  %3697 = fdiv double %3695, %3696
  store double %3697, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  store double %3697, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 80) to double*), align 16
  %3698 = load i64, i64* %RBP, align 8
  %3699 = add i64 %3698, -48
  %3700 = add i64 %3657, 138
  store i64 %3700, i64* %PC, align 8
  %3701 = inttoptr i64 %3699 to double*
  %3702 = load double, double* %3701, align 8
  store double %3702, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3703 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  store double %3703, double* %91, align 1, !tbaa !2451
  store double 0.000000e+00, double* %94, align 1, !tbaa !2451
  %3704 = load double, double* bitcast (%two_type* @two to double*), align 8
  store double %3704, double* %96, align 1, !tbaa !2451
  store double 0.000000e+00, double* %99, align 1, !tbaa !2451
  %3705 = add i64 %3698, -16
  %3706 = add i64 %3657, 161
  store i64 %3706, i64* %PC, align 8
  %3707 = inttoptr i64 %3705 to double*
  %3708 = load double, double* %3707, align 8
  %3709 = fmul double %3704, %3708
  store double %3709, double* %96, align 1, !tbaa !2451
  store i64 0, i64* %98, align 1, !tbaa !2451
  %3710 = fadd double %3703, %3709
  store double %3710, double* %91, align 1, !tbaa !2451
  store i64 0, i64* %93, align 1, !tbaa !2451
  %3711 = fmul double %3702, %3710
  %3712 = fdiv double %3711, %3704
  store double %3712, double* bitcast (%sa_type* @sa to double*), align 8
  %3713 = load double, double* %80, align 1
  store double %3713, double* bitcast (%sb_type* @sb to double*), align 8
  %3714 = fsub double %3712, %3713
  store double %3714, double* bitcast (%sc_type* @sc to double*), align 8
  %3715 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3716 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 80) to double*), align 16
  %3717 = fdiv double %3715, %3716
  store double %3717, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 88) to double*), align 8
  %3718 = load <2 x i32>, <2 x i32>* %1483, align 1
  %3719 = load <2 x i32>, <2 x i32>* %1485, align 1
  %3720 = extractelement <2 x i32> %3718, i32 0
  store i32 %3720, i32* %1488, align 1, !tbaa !2455
  %3721 = extractelement <2 x i32> %3718, i32 1
  store i32 %3721, i32* %1491, align 1, !tbaa !2455
  %3722 = extractelement <2 x i32> %3719, i32 0
  store i32 %3722, i32* %1493, align 1, !tbaa !2455
  %3723 = extractelement <2 x i32> %3719, i32 1
  store i32 %3723, i32* %1496, align 1, !tbaa !2455
  %3724 = load double, double* %80, align 1
  %3725 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %3726 = fmul double %3724, %3725
  store double %3726, double* %80, align 1, !tbaa !2451
  store i32 %3720, i32* %1500, align 1, !tbaa !2455
  store i32 %3721, i32* %1502, align 1, !tbaa !2455
  store i32 %3722, i32* %1503, align 1, !tbaa !2455
  store i32 %3723, i32* %1505, align 1, !tbaa !2455
  %3727 = load double, double* %86, align 1
  %3728 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %3729 = fmul double %3727, %3728
  store double %3729, double* %86, align 1, !tbaa !2451
  %3730 = bitcast <2 x i32> %3718 to double
  %3731 = fmul double %3730, %3717
  %3732 = load i64, i64* %RBP, align 8
  %3733 = add i64 %3732, -184
  %3734 = add i64 %3657, 291
  store i64 %3734, i64* %PC, align 8
  %3735 = inttoptr i64 %3733 to double*
  store double %3731, double* %3735, align 8
  %3736 = load i64, i64* %PC, align 8
  %3737 = load <2 x i32>, <2 x i32>* %1516, align 1
  %3738 = load <2 x i32>, <2 x i32>* %1518, align 1
  %3739 = extractelement <2 x i32> %3737, i32 0
  store i32 %3739, i32* %187, align 1, !tbaa !2455
  %3740 = extractelement <2 x i32> %3737, i32 1
  store i32 %3740, i32* %189, align 1, !tbaa !2455
  %3741 = extractelement <2 x i32> %3738, i32 0
  store i32 %3741, i32* %190, align 1, !tbaa !2455
  %3742 = extractelement <2 x i32> %3738, i32 1
  store i32 %3742, i32* %192, align 1, !tbaa !2455
  %3743 = load <2 x i32>, <2 x i32>* %1524, align 1
  %3744 = load <2 x i32>, <2 x i32>* %1526, align 1
  %3745 = extractelement <2 x i32> %3743, i32 0
  store i32 %3745, i32* %1488, align 1, !tbaa !2455
  %3746 = extractelement <2 x i32> %3743, i32 1
  store i32 %3746, i32* %1491, align 1, !tbaa !2455
  %3747 = extractelement <2 x i32> %3744, i32 0
  store i32 %3747, i32* %1493, align 1, !tbaa !2455
  %3748 = extractelement <2 x i32> %3744, i32 1
  store i32 %3748, i32* %1496, align 1, !tbaa !2455
  %3749 = load i64, i64* %RBP, align 8
  %3750 = add i64 %3749, -184
  %3751 = add i64 %3736, 14
  store i64 %3751, i64* %PC, align 8
  %3752 = inttoptr i64 %3750 to i64*
  %3753 = load i64, i64* %3752, align 8
  store i64 %3753, i64* %87, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3754 = add i64 %3749, -188
  %3755 = load i32, i32* %EAX, align 4
  %3756 = add i64 %3736, 20
  store i64 %3756, i64* %PC, align 8
  %3757 = inttoptr i64 %3754 to i32*
  store i32 %3755, i32* %3757, align 4
  %3758 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2453
  %3759 = add i64 %3758, -3245
  %3760 = add i64 %3758, 7
  %3761 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3762 = add i64 %3761, -8
  %3763 = inttoptr i64 %3762 to i64*
  store i64 %3760, i64* %3763, align 8
  store i64 %3762, i64* %RSP, align 8, !tbaa !2428
  store i64 %3759, i64* %PC, align 8, !tbaa !2428
  %3764 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %3626)
  %3765 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i32 0, i32* %187, align 1, !tbaa !2454
  store i32 0, i32* %189, align 1, !tbaa !2454
  store i32 0, i32* %190, align 1, !tbaa !2454
  store i32 0, i32* %192, align 1, !tbaa !2454
  store i64 -9223372036854775808, i64* %RCX, align 8, !tbaa !2428
  %3766 = load i64, i64* bitcast (%A3_type* @A3 to i64*), align 8
  %3767 = xor i64 %3766, -9223372036854775808
  store i64 %3767, i64* bitcast (%A3_type* @A3 to i64*), align 8
  %3768 = load i64, i64* bitcast (%A5_type* @A5 to i64*), align 8
  %3769 = xor i64 %3768, -9223372036854775808
  store i64 %3769, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %23, align 1, !tbaa !2432
  %3770 = trunc i64 %3768 to i32
  %3771 = and i32 %3770, 255
  %3772 = tail call i32 @llvm.ctpop.i32(i32 %3771) #8
  %3773 = trunc i32 %3772 to i8
  %3774 = and i8 %3773, 1
  %3775 = xor i8 %3774, 1
  store i8 %3775, i8* %30, align 1, !tbaa !2446
  %3776 = icmp eq i64 %3769, 0
  %3777 = zext i1 %3776 to i8
  store i8 %3777, i8* %38, align 1, !tbaa !2447
  %3778 = lshr i64 %3769, 63
  %3779 = trunc i64 %3778 to i8
  store i8 %3779, i8* %41, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %35, align 1, !tbaa !2450
  store i64 %3769, i64* bitcast (%A5_type* @A5 to i64*), align 8
  %3780 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  store double %3780, double* %80, align 1, !tbaa !2451
  store double 0.000000e+00, double* %83, align 1, !tbaa !2451
  %3781 = load double, double* bitcast (%three_type* @three to double*), align 8
  store double %3781, double* %86, align 1, !tbaa !2451
  store double 0.000000e+00, double* %89, align 1, !tbaa !2451
  %3782 = load i64, i64* %RBP, align 8
  %3783 = add i64 %3782, -80
  %3784 = add i64 %3765, 107
  store i64 %3784, i64* %PC, align 8
  %3785 = inttoptr i64 %3783 to i64*
  %3786 = load i64, i64* %3785, align 8
  store i64 %3786, i64* %RCX, align 8, !tbaa !2428
  %3787 = sitofp i64 %3786 to double
  store double %3787, double* %91, align 1, !tbaa !2451
  %3788 = fmul double %3781, %3787
  store double %3788, double* %86, align 1, !tbaa !2451
  store i64 0, i64* %88, align 1, !tbaa !2451
  %3789 = fdiv double %3780, %3788
  store double %3789, double* %80, align 1, !tbaa !2451
  store i64 0, i64* %82, align 1, !tbaa !2451
  %3790 = add i64 %3782, -48
  %3791 = add i64 %3765, 125
  store i64 %3791, i64* %PC, align 8
  %3792 = inttoptr i64 %3790 to double*
  store double %3789, double* %3792, align 8
  %3793 = load i64, i64* %RBP, align 8
  %3794 = add i64 %3793, -16
  %3795 = load i64, i64* %PC, align 8
  %3796 = add i64 %3795, 5
  store i64 %3796, i64* %PC, align 8
  %3797 = load i64, i64* %75, align 1
  %3798 = inttoptr i64 %3794 to i64*
  store i64 %3797, i64* %3798, align 8
  %3799 = load i64, i64* %RBP, align 8
  %3800 = add i64 %3799, -32
  %3801 = load i64, i64* %PC, align 8
  %3802 = add i64 %3801, 5
  store i64 %3802, i64* %PC, align 8
  %3803 = load i64, i64* %75, align 1
  %3804 = inttoptr i64 %3800 to i64*
  store i64 %3803, i64* %3804, align 8
  %3805 = load i64, i64* %RBP, align 8
  %3806 = add i64 %3805, -192
  %3807 = load i32, i32* %EAX, align 4
  %3808 = load i64, i64* %PC, align 8
  %3809 = add i64 %3808, 6
  store i64 %3809, i64* %PC, align 8
  %3810 = inttoptr i64 %3806 to i32*
  store i32 %3807, i32* %3810, align 4
  %3811 = load i64, i64* %PC, align 8
  %3812 = add i64 %3811, 5247
  %3813 = add i64 %3811, 5
  %3814 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3815 = add i64 %3814, -8
  %3816 = inttoptr i64 %3815 to i64*
  store i64 %3813, i64* %3816, align 8
  store i64 %3815, i64* %RSP, align 8, !tbaa !2428
  store i64 %3812, i64* %PC, align 8, !tbaa !2428
  %3817 = tail call %struct.Memory* @sub_4025f0_dtime_renamed_(%struct.State* nonnull %0, i64 %3812, %struct.Memory* %3764)
  %3818 = load i64, i64* %RBP, align 8
  %3819 = add i64 %3818, -72
  %3820 = load i64, i64* %PC, align 8
  %3821 = add i64 %3820, 8
  store i64 %3821, i64* %PC, align 8
  %3822 = inttoptr i64 %3819 to i64*
  store i64 1, i64* %3822, align 8
  %3823 = load i64, i64* %RBP, align 8
  %3824 = add i64 %3823, -196
  %3825 = load i32, i32* %EAX, align 4
  %3826 = load i64, i64* %PC, align 8
  %3827 = add i64 %3826, 6
  store i64 %3827, i64* %PC, align 8
  %3828 = inttoptr i64 %3824 to i32*
  store i32 %3825, i32* %3828, align 4
  %.pre15 = load i64, i64* %PC, align 8
  br label %block_401184

block_4008ae:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  store i32 0, i32* %187, align 1, !tbaa !2454
  store i32 0, i32* %189, align 1, !tbaa !2454
  store i32 0, i32* %190, align 1, !tbaa !2454
  store i32 0, i32* %192, align 1, !tbaa !2454
  %3829 = add i64 %1321, 12
  store i64 %3829, i64* %PC, align 8
  %3830 = load double, double* %74, align 1
  store double %3830, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  br label %block_4008ba

block_400802:                                     ; preds = %block_4007cb
  %3831 = add i64 %2728, -377
  store i64 %3831, i64* %PC, align 8, !tbaa !2428
  br label %block_400689

block_400859:                                     ; preds = %block_400844
  %3832 = add i64 %1360, 9
  store i64 %3832, i64* %PC, align 8
  %3833 = load i64, i64* %1326, align 8
  %3834 = add i64 %3833, 1
  store i64 %3834, i64* %RAX, align 8, !tbaa !2428
  %3835 = icmp eq i64 %3833, -1
  %3836 = icmp eq i64 %3834, 0
  %3837 = or i1 %3835, %3836
  %3838 = zext i1 %3837 to i8
  store i8 %3838, i8* %23, align 1, !tbaa !2432
  %3839 = trunc i64 %3834 to i32
  %3840 = and i32 %3839, 255
  %3841 = tail call i32 @llvm.ctpop.i32(i32 %3840) #8
  %3842 = trunc i32 %3841 to i8
  %3843 = and i8 %3842, 1
  %3844 = xor i8 %3843, 1
  store i8 %3844, i8* %30, align 1, !tbaa !2446
  %3845 = xor i64 %3833, %3834
  %3846 = lshr i64 %3845, 4
  %3847 = trunc i64 %3846 to i8
  %3848 = and i8 %3847, 1
  store i8 %3848, i8* %35, align 1, !tbaa !2450
  %3849 = zext i1 %3836 to i8
  store i8 %3849, i8* %38, align 1, !tbaa !2447
  %3850 = lshr i64 %3834, 63
  %3851 = trunc i64 %3850 to i8
  store i8 %3851, i8* %41, align 1, !tbaa !2448
  %3852 = lshr i64 %3833, 63
  %3853 = xor i64 %3850, %3852
  %3854 = add nuw nsw i64 %3853, %3850
  %3855 = icmp eq i64 %3854, 2
  %3856 = zext i1 %3855 to i8
  store i8 %3856, i8* %47, align 1, !tbaa !2449
  %3857 = add i64 %1360, 17
  store i64 %3857, i64* %PC, align 8
  store i64 %3834, i64* %1326, align 8
  %3858 = load i64, i64* %PC, align 8
  %3859 = add i64 %3858, -38
  store i64 %3859, i64* %PC, align 8, !tbaa !2428
  br label %block_400844

block_400701:                                     ; preds = %block_400716, %block_4006a5
  %3860 = phi i64 [ %2449, %block_400716 ], [ %.pre6, %block_4006a5 ]
  %3861 = load i64, i64* %RBP, align 8
  %3862 = add i64 %3861, -72
  %3863 = add i64 %3860, 4
  store i64 %3863, i64* %PC, align 8
  %3864 = inttoptr i64 %3862 to i64*
  %3865 = load i64, i64* %3864, align 8
  store i64 %3865, i64* %RAX, align 8, !tbaa !2428
  %3866 = add i64 %3861, -88
  %3867 = add i64 %3860, 8
  store i64 %3867, i64* %PC, align 8
  %3868 = inttoptr i64 %3866 to i64*
  %3869 = load i64, i64* %3868, align 8
  %3870 = add i64 %3869, -1
  store i64 %3870, i64* %RCX, align 8, !tbaa !2428
  %3871 = lshr i64 %3870, 63
  %3872 = sub i64 %3865, %3870
  %3873 = icmp ult i64 %3865, %3870
  %3874 = zext i1 %3873 to i8
  store i8 %3874, i8* %23, align 1, !tbaa !2432
  %3875 = trunc i64 %3872 to i32
  %3876 = and i32 %3875, 255
  %3877 = tail call i32 @llvm.ctpop.i32(i32 %3876) #8
  %3878 = trunc i32 %3877 to i8
  %3879 = and i8 %3878, 1
  %3880 = xor i8 %3879, 1
  store i8 %3880, i8* %30, align 1, !tbaa !2446
  %3881 = xor i64 %3870, %3865
  %3882 = xor i64 %3881, %3872
  %3883 = lshr i64 %3882, 4
  %3884 = trunc i64 %3883 to i8
  %3885 = and i8 %3884, 1
  store i8 %3885, i8* %35, align 1, !tbaa !2450
  %3886 = icmp eq i64 %3872, 0
  %3887 = zext i1 %3886 to i8
  store i8 %3887, i8* %38, align 1, !tbaa !2447
  %3888 = lshr i64 %3872, 63
  %3889 = trunc i64 %3888 to i8
  store i8 %3889, i8* %41, align 1, !tbaa !2448
  %3890 = lshr i64 %3865, 63
  %3891 = xor i64 %3871, %3890
  %3892 = xor i64 %3888, %3890
  %3893 = add nuw nsw i64 %3892, %3891
  %3894 = icmp eq i64 %3893, 2
  %3895 = zext i1 %3894 to i8
  store i8 %3895, i8* %47, align 1, !tbaa !2449
  %3896 = icmp ne i8 %3889, 0
  %3897 = xor i1 %3896, %3894
  %.demorgan = or i1 %3886, %3897
  %.v20 = select i1 %.demorgan, i64 21, i64 202
  %3898 = add i64 %3860, %.v20
  store i64 %3898, i64* %PC, align 8, !tbaa !2428
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
  store i64 %12, i64* %PC, align 8, !tbaa !2428
  %13 = tail call %struct.Memory* @sub_4004c0_register_tm_clones(%struct.State* nonnull %0, i64 %12, %struct.Memory* %2)
  ret %struct.Memory* %13
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
  %.v = select i1 %.b, i64 32, i64 9
  %15 = add i64 %.v, %1
  store i64 %15, i64* %PC, align 8, !tbaa !2428
  br i1 %.b, label %block_400520, label %block_400509

block_400520:                                     ; preds = %block_400500
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

block_400509:                                     ; preds = %block_400500
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
  %33 = tail call %struct.Memory* @sub_400490_deregister_tm_clones_renamed_(%struct.State* nonnull %0, i64 %29, %struct.Memory* %2)
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
  %.v = select i1 %30, i64 50, i64 29
  %34 = add i64 %10, %.v
  store i64 %34, i64* %PC, align 8, !tbaa !2428
  br i1 %30, label %block_4004f8, label %block_4004e3

block_4004f8:                                     ; preds = %block_4004e3, %block_4004c0
  %35 = phi i64 [ %45, %block_4004e3 ], [ %34, %block_4004c0 ]
  %36 = add i64 %35, 1
  store i64 %36, i64* %PC, align 8
  %37 = load i64, i64* %5, align 8, !tbaa !2428
  %38 = add i64 %37, 8
  %39 = inttoptr i64 %37 to i64*
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %RBP, align 8, !tbaa !2428
  store i64 %38, i64* %5, align 8, !tbaa !2428
  %41 = add i64 %35, 2
  store i64 %41, i64* %PC, align 8
  %42 = inttoptr i64 %38 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %PC, align 8, !tbaa !2428
  %44 = add i64 %37, 16
  store i64 %44, i64* %5, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4004e3:                                     ; preds = %block_4004c0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %12, align 1, !tbaa !2432
  store i8 1, i8* %13, align 1, !tbaa !2446
  store i8 1, i8* %15, align 1, !tbaa !2447
  store i8 0, i8* %16, align 1, !tbaa !2448
  store i8 0, i8* %17, align 1, !tbaa !2449
  store i8 0, i8* %14, align 1, !tbaa !2450
  %45 = add i64 %34, 21
  store i64 %45, i64* %PC, align 8, !tbaa !2428
  br label %block_4004f8
}

; Function Attrs: noinline
define %struct.Memory* @sub_400480__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_400480:
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
define %struct.Memory* @sub_4026f0___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #6 {
block_4026f0:
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
  %39 = load i64, i64* getelementptr inbounds (%seg_602ff0__got_type, %seg_602ff0__got_type* @seg_602ff0__got, i64 0, i32 0), align 8
  store i64 %39, i64* %PC, align 8, !tbaa !2428
  %40 = tail call fastcc %struct.Memory* @ext_603320___libc_start_main(%struct.State* nonnull %0, %struct.Memory* %2)
  %41 = load i64, i64* %PC, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %PC, align 8
  %43 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %42, %struct.Memory* %40)
  ret %struct.Memory* %43
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
  store i8 %51, i8* %43, align 1, !tbaa !2453
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #8
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
  %63 = add i64 %38, -8859
  %64 = add i64 %38, 22
  %65 = add i64 %7, -64
  %66 = inttoptr i64 %65 to i64*
  store i64 %64, i64* %66, align 8
  store i64 %65, i64* %RSP, align 8, !tbaa !2428
  store i64 %63, i64* %PC, align 8, !tbaa !2428
  %67 = tail call %struct.Memory* @sub_400400__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
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
  store i8 %77, i8* %46, align 1, !tbaa !2447
  %78 = lshr i64 %68, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %47, align 1, !tbaa !2448
  store i8 0, i8* %48, align 1, !tbaa !2449
  store i8 0, i8* %45, align 1, !tbaa !2450
  %.v = select i1 %76, i64 37, i64 5
  %80 = add i64 %69, %.v
  store i64 %80, i64* %PC, align 8, !tbaa !2428
  br i1 %76, label %block_4026d6, label %block_4026b6

block_4026d6:                                     ; preds = %block_4026c0, %block_402680
  %81 = phi i64 [ %80, %block_402680 ], [ %179, %block_4026c0 ]
  %MEMORY.0 = phi %struct.Memory* [ %67, %block_402680 ], [ %149, %block_4026c0 ]
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

block_4026b6:                                     ; preds = %block_402680
  store i64 0, i64* %RBX, align 8, !tbaa !2428
  store i8 0, i8* %43, align 1, !tbaa !2432
  store i8 1, i8* %44, align 1, !tbaa !2446
  store i8 1, i8* %46, align 1, !tbaa !2447
  store i8 0, i8* %47, align 1, !tbaa !2448
  store i8 0, i8* %48, align 1, !tbaa !2449
  store i8 0, i8* %45, align 1, !tbaa !2450
  %133 = add i64 %80, 10
  store i64 %133, i64* %PC, align 8
  br label %block_4026c0

block_4026c0:                                     ; preds = %block_4026c0, %block_4026b6
  %134 = phi i64 [ 0, %block_4026b6 ], [ %152, %block_4026c0 ]
  %135 = phi i64 [ %133, %block_4026b6 ], [ %179, %block_4026c0 ]
  %MEMORY.1 = phi %struct.Memory* [ %67, %block_4026b6 ], [ %149, %block_4026c0 ]
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
  %.v1 = select i1 %169, i64 9, i64 -13
  %179 = add i64 %151, %.v1
  store i64 %179, i64* %PC, align 8, !tbaa !2428
  br i1 %169, label %block_4026d6, label %block_4026c0
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
  %.v = select i1 %18, i64 18, i64 16
  %22 = add i64 %.v, %1
  store i64 %22, i64* %PC, align 8, !tbaa !2428
  br i1 %18, label %block_400400.block_400412_crit_edge, label %block_400410

block_400400.block_400412_crit_edge:              ; preds = %block_400400
  br label %block_400412

block_400410:                                     ; preds = %block_400400
  %23 = add i64 %22, 2
  %24 = add i64 %3, -16
  %25 = inttoptr i64 %24 to i64*
  store i64 %23, i64* %25, align 8
  store i64 %24, i64* %RSP, align 8, !tbaa !2428
  store i64 %11, i64* %PC, align 8, !tbaa !2428
  %26 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 %11, %struct.Memory* %2)
  %.pre = load i64, i64* %RSP, align 8
  %.pre1 = load i64, i64* %PC, align 8
  br label %block_400412

block_400412:                                     ; preds = %block_400400.block_400412_crit_edge, %block_400410
  %.pre-phi = phi i64* [ %RSP, %block_400400.block_400412_crit_edge ], [ %RSP, %block_400410 ]
  %27 = phi i64 [ %22, %block_400400.block_400412_crit_edge ], [ %.pre1, %block_400410 ]
  %28 = phi i64 [ %4, %block_400400.block_400412_crit_edge ], [ %.pre, %block_400410 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400400.block_400412_crit_edge ], [ %26, %block_400410 ]
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
  store i64 %54, i64* %.pre-phi, align 8, !tbaa !2428
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
