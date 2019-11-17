; ModuleID = '/tmp/tmp_3vlxa9v-target.ll'
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
@tnow = local_unnamed_addr global %tnow_type zeroinitializer
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
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #11
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

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400550_frame_dummy(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
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
  %5 = tail call i32 @llvm.ctpop.i32(i32 %4) #11
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

; Function Attrs: noinline norecurse nounwind readnone
define %struct.Memory* @sub_4025e0_dtime(%struct.State* noalias nocapture readnone dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #9 {
block_4025e0:
; Matched:\<badref\>:  ret %struct.Memory* %2
; ret %struct.Memory* %2
ret %struct.Memory* %2

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
  %21 = icmp ult i64 %3, 8
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %5, align 1, !tbaa !2432
  %23 = trunc i64 %3 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #11
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
define %struct.Memory* @sub_4004e0_register_tm_clones(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #7 {
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
  store i8 %21, i8* %11, align 1, !tbaa !2451
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #11
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
  %33 = add i64 %.v, %9
  store i64 %33, i64* %PC, align 8, !tbaa !2428
  br i1 %29, label %block_400518, label %block_400503

block_400518:                                     ; preds = %block_400503, %block_4004e0
  %34 = phi i64 [ %41, %block_400503 ], [ %33, %block_4004e0 ]
  %35 = add i64 %34, 1
  store i64 %35, i64* %PC, align 8
  %36 = load i64, i64* %7, align 8
  store i64 %36, i64* %RBP, align 8, !tbaa !2428
  store i64 %5, i64* %RSP, align 8, !tbaa !2428
  %37 = add i64 %34, 2
  store i64 %37, i64* %PC, align 8
  %38 = inttoptr i64 %5 to i64*
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %PC, align 8, !tbaa !2428
  %40 = add i64 %5, 8
  store i64 %40, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_400503:                                     ; preds = %block_4004e0
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  store i8 0, i8* %11, align 1, !tbaa !2432
  store i8 1, i8* %12, align 1, !tbaa !2446
  store i8 1, i8* %14, align 1, !tbaa !2447
  store i8 0, i8* %15, align 1, !tbaa !2448
  store i8 0, i8* %16, align 1, !tbaa !2449
  store i8 0, i8* %13, align 1, !tbaa !2450
  %41 = add i64 %33, 21
  store i64 %41, i64* %PC, align 8, !tbaa !2428
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
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #11
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
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #11
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

; Function Attrs: noinline norecurse nounwind
define %struct.Memory* @sub_4004b0_deregister_tm_clones(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #6 {
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
  store i8 %51, i8* %43, align 1, !tbaa !2451
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54) #11
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
  %67 = tail call %struct.Memory* @sub_400428__init_proc_renamed_(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %68 = load i64, i64* %RBP, align 8
  %69 = load i64, i64* %PC, align 8
  store i8 0, i8* %43, align 1, !tbaa !2432
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #11
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
  %80 = add i64 %.v, %69
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
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87) #11
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
  %142 = add i64 %140, %141
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
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159) #11
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %44, align 1, !tbaa !2446
  %164 = xor i64 %154, %152
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
  %174 = xor i64 %173, %153
  %175 = xor i64 %171, %173
  %176 = add nuw nsw i64 %175, %174
  %177 = icmp eq i64 %176, 2
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %48, align 1, !tbaa !2449
  %.v2 = select i1 %169, i64 9, i64 -13
  %179 = add i64 %.v2, %151
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
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25) #11
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
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 248), i64* %RDI, align 8, !tbaa !2428
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
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 306), i64* %RDI, align 8, !tbaa !2428
  %72 = bitcast [32 x %union.VectorReg]* %5 to i8*
  %73 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 8) to i64*), align 8
  %74 = bitcast [32 x %union.VectorReg]* %5 to double*
  %75 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %73, i64* %75, align 1, !tbaa !2452
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %77 = bitcast i64* %76 to double*
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %78 = bitcast %union.VectorReg* %6 to i8*
  %79 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 16) to i64*), align 16
  %80 = bitcast %union.VectorReg* %6 to double*
  %81 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %79, i64* %81, align 1, !tbaa !2452
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %83 = bitcast i64* %82 to double*
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %84 = bitcast %union.VectorReg* %7 to i8*
  %85 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 24) to i64*), align 8
  %86 = bitcast %union.VectorReg* %7 to double*
  %87 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %7, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %85, i64* %87, align 1, !tbaa !2452
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %89 = bitcast i64* %88 to double*
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %90 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 32) to i64*), align 16
  %91 = bitcast %union.VectorReg* %8 to double*
  %92 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %8, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %90, i64* %92, align 1, !tbaa !2452
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %94 = bitcast i64* %93 to double*
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %95 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 40) to i64*), align 8
  %96 = bitcast %union.VectorReg* %9 to double*
  %97 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %9, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %95, i64* %97, align 1, !tbaa !2452
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %99 = bitcast i64* %98 to double*
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %100 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 48) to i64*), align 16
  %101 = bitcast %union.VectorReg* %10 to double*
  %102 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %10, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %100, i64* %102, align 1, !tbaa !2452
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %104 = bitcast i64* %103 to double*
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %105 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 56) to i64*), align 8
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
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 354), i64* %RDI, align 8, !tbaa !2428
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
  br label %block_4006a6

block_4020bb:                                     ; preds = %block_401f82
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %212 = add i64 %4014, 1317
  %213 = add i64 %4014, 15
  %214 = load i64, i64* %RSP, align 8, !tbaa !2428
  %215 = add i64 %214, -8
  %216 = inttoptr i64 %215 to i64*
  store i64 %213, i64* %216, align 8
  store i64 %215, i64* %RSP, align 8, !tbaa !2428
  store i64 %212, i64* %PC, align 8, !tbaa !2428
  %217 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %212, %struct.Memory* %851)
  %218 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 642), i64* %RDI, align 8, !tbaa !2428
  %219 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to i64*), align 8
  store i64 %219, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %220 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 224) to i64*), align 16
  store i64 %220, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %221 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 232) to i64*), align 8
  store i64 %221, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %222 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %223 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %224 = fmul double %222, %223
  %225 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %226 = fsub double %224, %225
  store double %226, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %227 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %228 = load double, double* bitcast (%three_type* @three to double*), align 8
  %229 = fdiv double %227, %228
  store double %229, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %230 = load i64, i64* %RBP, align 8
  %231 = add i64 %230, -24
  %232 = add i64 %218, 93
  store i64 %232, i64* %PC, align 8
  %233 = inttoptr i64 %231 to double*
  store double %229, double* %233, align 8
  %234 = load i64, i64* %RBP, align 8
  %235 = add i64 %234, -24
  %236 = load i64, i64* %PC, align 8
  %237 = add i64 %236, 5
  store i64 %237, i64* %PC, align 8
  %238 = inttoptr i64 %235 to i64*
  %239 = load i64, i64* %238, align 8
  store i64 %239, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %240 = add i64 %236, 10
  store i64 %240, i64* %PC, align 8
  %241 = bitcast i64 %239 to double
  %242 = inttoptr i64 %235 to double*
  %243 = load double, double* %242, align 8
  %244 = fmul double %241, %243
  store double %244, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %245 = add i64 %234, -40
  %246 = add i64 %236, 15
  store i64 %246, i64* %PC, align 8
  %247 = inttoptr i64 %245 to double*
  store double %244, double* %247, align 8
  %248 = load i64, i64* %RBP, align 8
  %249 = add i64 %248, -24
  %250 = load i64, i64* %PC, align 8
  %251 = add i64 %250, 5
  store i64 %251, i64* %PC, align 8
  %252 = inttoptr i64 %249 to i64*
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %254 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %254, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %255 = add i64 %248, -40
  %256 = add i64 %250, 19
  store i64 %256, i64* %PC, align 8
  %.cast178 = bitcast i64 %254 to double
  %257 = inttoptr i64 %255 to double*
  %258 = load double, double* %257, align 8
  %259 = fmul double %.cast178, %258
  %260 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %261 = fadd double %259, %260
  store double %261, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %262 = add i64 %250, 33
  store i64 %262, i64* %PC, align 8
  %263 = load double, double* %257, align 8
  %264 = fmul double %261, %263
  %265 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %266 = fadd double %264, %265
  store double %266, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %267 = add i64 %250, 47
  store i64 %267, i64* %PC, align 8
  %268 = load double, double* %257, align 8
  %269 = fmul double %266, %268
  %270 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %271 = fadd double %269, %270
  store double %271, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %272 = add i64 %250, 61
  store i64 %272, i64* %PC, align 8
  %273 = load double, double* %257, align 8
  %274 = fmul double %271, %273
  %275 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %276 = fadd double %274, %275
  store double %276, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %277 = add i64 %250, 75
  store i64 %277, i64* %PC, align 8
  %278 = load double, double* %257, align 8
  %279 = fmul double %276, %278
  %280 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %281 = fadd double %279, %280
  store double %281, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %282 = add i64 %250, 89
  store i64 %282, i64* %PC, align 8
  %283 = load double, double* %257, align 8
  %284 = fmul double %281, %283
  %285 = load double, double* bitcast (%one_type* @one to double*), align 8
  %286 = fadd double %284, %285
  store double %286, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %287 = bitcast i64 %253 to double
  %288 = fmul double %287, %286
  store double %288, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  store double %288, double* bitcast (%sa_type* @sa to double*), align 8
  %289 = add i64 %250, 116
  store i64 %289, i64* %PC, align 8
  %290 = inttoptr i64 %255 to i64*
  %291 = load i64, i64* %290, align 8
  store i64 %291, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %292 = add i64 %250, 121
  store i64 %292, i64* %PC, align 8
  %293 = load i64, i64* %290, align 8
  store i64 %293, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %294 = add i64 %250, 126
  store i64 %294, i64* %PC, align 8
  %295 = load i64, i64* %290, align 8
  store i64 %295, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %296 = add i64 %250, 131
  store i64 %296, i64* %PC, align 8
  %297 = load i64, i64* %290, align 8
  store i64 %297, i64* %107, align 1, !tbaa !2452
  store double 0.000000e+00, double* %109, align 1, !tbaa !2452
  %298 = add i64 %250, 136
  store i64 %298, i64* %PC, align 8
  %299 = load i64, i64* %290, align 8
  store i64 %299, i64* %209, align 1, !tbaa !2452
  store double 0.000000e+00, double* %211, align 1, !tbaa !2452
  %300 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  store i64 %300, i64* %1551, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1553, align 1, !tbaa !2452
  %301 = add i64 %250, 152
  store i64 %301, i64* %PC, align 8
  %.cast179 = bitcast i64 %300 to double
  %302 = load double, double* %257, align 8
  %303 = fmul double %.cast179, %302
  %304 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %305 = fadd double %303, %304
  store double %305, double* %1550, align 1, !tbaa !2452
  store i64 0, i64* %1552, align 1, !tbaa !2452
  %306 = bitcast i64 %299 to double
  %307 = fmul double %306, %305
  %308 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %309 = fadd double %307, %308
  store double %309, double* %121, align 1, !tbaa !2452
  store i64 0, i64* %210, align 1, !tbaa !2452
  %310 = bitcast i64 %297 to double
  %311 = fmul double %310, %309
  %312 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %313 = fadd double %311, %312
  store double %313, double* %106, align 1, !tbaa !2452
  store i64 0, i64* %108, align 1, !tbaa !2452
  %314 = bitcast i64 %295 to double
  %315 = fmul double %314, %313
  %316 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %317 = fadd double %315, %316
  store double %317, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %318 = bitcast i64 %293 to double
  %319 = fmul double %318, %317
  %320 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %321 = fadd double %319, %320
  store double %321, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %322 = bitcast i64 %291 to double
  %323 = fmul double %322, %321
  %324 = fadd double %285, %323
  store double %324, double* bitcast (%sb_type* @sb to double*), align 8
  %325 = fmul double %288, %324
  %326 = fmul double %324, %325
  store double %326, double* bitcast (%sa_type* @sa to double*), align 8
  %327 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %328 = load double, double* %86, align 1
  %329 = fdiv double %327, %328
  store double %329, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  store double %329, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 200) to double*), align 8
  %330 = load i64, i64* %RBP, align 8
  %331 = add i64 %330, -48
  %332 = add i64 %250, 300
  store i64 %332, i64* %PC, align 8
  %333 = inttoptr i64 %331 to i64*
  %334 = load i64, i64* %333, align 8
  store i64 %334, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %335 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %335, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %336 = load i64, i64* bitcast (%two_type* @two to i64*), align 8
  store i64 %336, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %337 = add i64 %330, -16
  %338 = add i64 %250, 323
  store i64 %338, i64* %PC, align 8
  %.cast180 = bitcast i64 %336 to double
  %339 = inttoptr i64 %337 to double*
  %340 = load double, double* %339, align 8
  %341 = fmul double %.cast180, %340
  store double %341, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %342 = bitcast i64 %335 to double
  %343 = fadd double %342, %341
  store double %343, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %344 = bitcast i64 %334 to double
  %345 = fmul double %344, %343
  %346 = fdiv double %345, %.cast180
  store double %346, double* bitcast (%sa_type* @sa to double*), align 8
  %347 = load i64, i64* %81, align 1
  store i64 %347, i64* bitcast (%sb_type* @sb to i64*), align 8
  %348 = bitcast i64 %347 to double
  %349 = fsub double %346, %348
  store double %349, double* bitcast (%sc_type* @sc to double*), align 8
  %350 = load double, double* bitcast (%one_type* @one to double*), align 8
  %351 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 200) to double*), align 8
  %352 = fdiv double %350, %351
  store double %352, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 208) to double*), align 16
  %353 = load <2 x i32>, <2 x i32>* %1347, align 1
  %354 = load <2 x i32>, <2 x i32>* %1349, align 1
  %355 = extractelement <2 x i32> %353, i32 0
  store i32 %355, i32* %1352, align 1, !tbaa !2455
  %356 = extractelement <2 x i32> %353, i32 1
  store i32 %356, i32* %1355, align 1, !tbaa !2455
  %357 = extractelement <2 x i32> %354, i32 0
  store i32 %357, i32* %1357, align 1, !tbaa !2455
  %358 = extractelement <2 x i32> %354, i32 1
  store i32 %358, i32* %1360, align 1, !tbaa !2455
  %359 = load double, double* %80, align 1
  %360 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %361 = fmul double %359, %360
  store double %361, double* %80, align 1, !tbaa !2452
  store i32 %355, i32* %1364, align 1, !tbaa !2455
  store i32 %356, i32* %1366, align 1, !tbaa !2455
  store i32 %357, i32* %1367, align 1, !tbaa !2455
  store i32 %358, i32* %1369, align 1, !tbaa !2455
  %362 = load double, double* %86, align 1
  %363 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %364 = fmul double %362, %363
  store double %364, double* %86, align 1, !tbaa !2452
  %365 = bitcast <2 x i32> %353 to double
  %366 = fmul double %352, %365
  %367 = add i64 %330, -304
  %368 = add i64 %250, 453
  store i64 %368, i64* %PC, align 8
  %369 = inttoptr i64 %367 to double*
  store double %366, double* %369, align 8
  %370 = load i64, i64* %PC, align 8
  %371 = load <2 x i32>, <2 x i32>* %1380, align 1
  %372 = load <2 x i32>, <2 x i32>* %1382, align 1
  %373 = extractelement <2 x i32> %371, i32 0
  store i32 %373, i32* %187, align 1, !tbaa !2455
  %374 = extractelement <2 x i32> %371, i32 1
  store i32 %374, i32* %189, align 1, !tbaa !2455
  %375 = extractelement <2 x i32> %372, i32 0
  store i32 %375, i32* %190, align 1, !tbaa !2455
  %376 = extractelement <2 x i32> %372, i32 1
  store i32 %376, i32* %192, align 1, !tbaa !2455
  %377 = load <2 x i32>, <2 x i32>* %1388, align 1
  %378 = load <2 x i32>, <2 x i32>* %1390, align 1
  %379 = extractelement <2 x i32> %377, i32 0
  store i32 %379, i32* %1352, align 1, !tbaa !2455
  %380 = extractelement <2 x i32> %377, i32 1
  store i32 %380, i32* %1355, align 1, !tbaa !2455
  %381 = extractelement <2 x i32> %378, i32 0
  store i32 %381, i32* %1357, align 1, !tbaa !2455
  %382 = extractelement <2 x i32> %378, i32 1
  store i32 %382, i32* %1360, align 1, !tbaa !2455
  %383 = load i64, i64* %RBP, align 8
  %384 = add i64 %383, -304
  %385 = add i64 %370, 14
  store i64 %385, i64* %PC, align 8
  %386 = inttoptr i64 %384 to i64*
  %387 = load i64, i64* %386, align 8
  store i64 %387, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %388 = add i64 %383, -308
  %389 = load i32, i32* %EAX, align 4
  %390 = add i64 %370, 20
  store i64 %390, i64* %PC, align 8
  %391 = inttoptr i64 %388 to i32*
  store i32 %389, i32* %391, align 4
  %392 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2451
  %393 = add i64 %392, -7871
  %394 = add i64 %392, 7
  %395 = load i64, i64* %RSP, align 8, !tbaa !2428
  %396 = add i64 %395, -8
  %397 = inttoptr i64 %396 to i64*
  store i64 %394, i64* %397, align 8
  store i64 %396, i64* %RSP, align 8, !tbaa !2428
  store i64 %393, i64* %PC, align 8, !tbaa !2428
  %398 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %217)
  %399 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 304), i64* %RDI, align 8, !tbaa !2428
  %400 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 192) to double*), align 16
  %401 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 200) to double*), align 8
  %402 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 208) to double*), align 16
  %403 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 216) to double*), align 8
  %404 = load double, double* bitcast (%five_type* @five to double*), align 8
  %405 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 48) to double*), align 16
  %406 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to double*), align 8
  %407 = fsub double %405, %406
  store double %407, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %408 = fmul double %404, %407
  %409 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %410 = fadd double %408, %409
  %411 = fdiv double %410, %403
  store double %411, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 216) to double*), align 8
  %412 = load double, double* bitcast (%one_type* @one to double*), align 8
  %413 = fdiv double %412, %411
  store double %413, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 224) to double*), align 16
  %414 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %415 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %416 = fadd double %414, %415
  %417 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %418 = fadd double %416, %417
  %419 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %420 = fadd double %418, %419
  %421 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %422 = fadd double %420, %421
  store double %422, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 232) to double*), align 8
  %423 = load double, double* bitcast (%four_type* @four to double*), align 8
  %424 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 168) to double*), align 8
  %425 = fmul double %423, %424
  store double %425, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %426 = fadd double %422, %425
  %427 = fdiv double %426, %402
  store double %427, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  store double %427, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 232) to double*), align 8
  %428 = load double, double* bitcast (%one_type* @one to double*), align 8
  %429 = fdiv double %428, %427
  store double %429, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 240) to double*), align 16
  %430 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %431 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %432 = fadd double %430, %431
  %433 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %434 = fadd double %432, %433
  %435 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %436 = fadd double %434, %435
  %437 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %438 = fadd double %436, %437
  store double %438, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 248) to double*), align 8
  %439 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 168) to double*), align 8
  %440 = fadd double %438, %439
  %441 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %442 = fadd double %440, %441
  %443 = fdiv double %442, %401
  store double %443, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  store double %443, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 248) to double*), align 8
  %444 = load double, double* bitcast (%one_type* @one to double*), align 8
  %445 = fdiv double %444, %443
  store double %445, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 256) to double*), align 16
  %446 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %447 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %448 = fadd double %446, %447
  %449 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %450 = fadd double %448, %449
  %451 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 192) to double*), align 16
  %452 = fadd double %450, %451
  %453 = fdiv double %452, %400
  store double %453, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  store double %453, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 264) to double*), align 8
  %454 = load double, double* bitcast (%one_type* @one to double*), align 8
  %455 = fdiv double %454, %453
  store double %455, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  store double %455, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 272) to double*), align 16
  %456 = load i64, i64* %RBP, align 8
  %457 = add i64 %456, -312
  %458 = load i32, i32* %EAX, align 4
  %459 = add i64 %399, 450
  store i64 %459, i64* %PC, align 8
  %460 = inttoptr i64 %457 to i32*
  store i32 %458, i32* %460, align 4
  %461 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %462 = add i64 %461, -8328
  %463 = add i64 %461, 7
  %464 = load i64, i64* %RSP, align 8, !tbaa !2428
  %465 = add i64 %464, -8
  %466 = inttoptr i64 %465 to i64*
  store i64 %463, i64* %466, align 8
  store i64 %465, i64* %RSP, align 8, !tbaa !2428
  store i64 %462, i64* %PC, align 8, !tbaa !2428
  %467 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %398)
  %468 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 678), i64* %RDI, align 8, !tbaa !2428
  %469 = load i64, i64* %RBP, align 8
  %470 = add i64 %469, -80
  %471 = add i64 %468, 14
  store i64 %471, i64* %PC, align 8
  %472 = inttoptr i64 %470 to i64*
  %473 = load i64, i64* %472, align 8
  store i64 %473, i64* %RSI, align 8, !tbaa !2428
  %474 = add i64 %469, -316
  %475 = load i32, i32* %EAX, align 4
  %476 = add i64 %468, 20
  store i64 %476, i64* %PC, align 8
  %477 = inttoptr i64 %474 to i32*
  store i32 %475, i32* %477, align 4
  %478 = load i64, i64* %PC, align 8
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %479 = add i64 %478, -8355
  %480 = add i64 %478, 7
  %481 = load i64, i64* %RSP, align 8, !tbaa !2428
  %482 = add i64 %481, -8
  %483 = inttoptr i64 %482 to i64*
  store i64 %480, i64* %483, align 8
  store i64 %482, i64* %RSP, align 8, !tbaa !2428
  store i64 %479, i64* %PC, align 8, !tbaa !2428
  %484 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %467)
  %485 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 706), i64* %RDI, align 8, !tbaa !2428
  %486 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to double*), align 8
  %487 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %488 = fmul double %486, %487
  store double %488, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %489 = load i64, i64* %RBP, align 8
  %490 = add i64 %489, -320
  %491 = load i32, i32* %EAX, align 4
  %492 = add i64 %485, 33
  store i64 %492, i64* %PC, align 8
  %493 = inttoptr i64 %490 to i32*
  store i32 %491, i32* %493, align 4
  %494 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %495 = add i64 %494, -8395
  %496 = add i64 %494, 7
  %497 = load i64, i64* %RSP, align 8, !tbaa !2428
  %498 = add i64 %497, -8
  %499 = inttoptr i64 %498 to i64*
  store i64 %496, i64* %499, align 8
  store i64 %498, i64* %RSP, align 8, !tbaa !2428
  store i64 %495, i64* %PC, align 8, !tbaa !2428
  %500 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %484)
  %501 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 736), i64* %RDI, align 8, !tbaa !2428
  %502 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to double*), align 8
  %503 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 224) to double*), align 16
  %504 = fmul double %502, %503
  store double %504, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %505 = load i64, i64* %RBP, align 8
  %506 = add i64 %505, -324
  %507 = load i32, i32* %EAX, align 4
  %508 = add i64 %501, 33
  store i64 %508, i64* %PC, align 8
  %509 = inttoptr i64 %506 to i32*
  store i32 %507, i32* %509, align 4
  %510 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %511 = add i64 %510, -8435
  %512 = add i64 %510, 7
  %513 = load i64, i64* %RSP, align 8, !tbaa !2428
  %514 = add i64 %513, -8
  %515 = inttoptr i64 %514 to i64*
  store i64 %512, i64* %515, align 8
  store i64 %514, i64* %RSP, align 8, !tbaa !2428
  store i64 %511, i64* %PC, align 8, !tbaa !2428
  %516 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %500)
  %517 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 766), i64* %RDI, align 8, !tbaa !2428
  %518 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to double*), align 8
  %519 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 240) to double*), align 16
  %520 = fmul double %518, %519
  store double %520, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %521 = load i64, i64* %RBP, align 8
  %522 = add i64 %521, -328
  %523 = load i32, i32* %EAX, align 4
  %524 = add i64 %517, 33
  store i64 %524, i64* %PC, align 8
  %525 = inttoptr i64 %522 to i32*
  store i32 %523, i32* %525, align 4
  %526 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %527 = add i64 %526, -8475
  %528 = add i64 %526, 7
  %529 = load i64, i64* %RSP, align 8, !tbaa !2428
  %530 = add i64 %529, -8
  %531 = inttoptr i64 %530 to i64*
  store i64 %528, i64* %531, align 8
  store i64 %530, i64* %RSP, align 8, !tbaa !2428
  store i64 %527, i64* %PC, align 8, !tbaa !2428
  %532 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %516)
  %533 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 796), i64* %RDI, align 8, !tbaa !2428
  %534 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to double*), align 8
  %535 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 256) to double*), align 16
  %536 = fmul double %534, %535
  store double %536, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %537 = load i64, i64* %RBP, align 8
  %538 = add i64 %537, -332
  %539 = load i32, i32* %EAX, align 4
  %540 = add i64 %533, 33
  store i64 %540, i64* %PC, align 8
  %541 = inttoptr i64 %538 to i32*
  store i32 %539, i32* %541, align 4
  %542 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %543 = add i64 %542, -8515
  %544 = add i64 %542, 7
  %545 = load i64, i64* %RSP, align 8, !tbaa !2428
  %546 = add i64 %545, -8
  %547 = inttoptr i64 %546 to i64*
  store i64 %544, i64* %547, align 8
  store i64 %546, i64* %RSP, align 8, !tbaa !2428
  store i64 %543, i64* %PC, align 8, !tbaa !2428
  %548 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %532)
  %549 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 826), i64* %RDI, align 8, !tbaa !2428
  %550 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to double*), align 8
  %551 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 272) to double*), align 16
  %552 = fmul double %550, %551
  store double %552, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %553 = load i64, i64* %RBP, align 8
  %554 = add i64 %553, -336
  %555 = load i32, i32* %EAX, align 4
  %556 = add i64 %549, 33
  store i64 %556, i64* %PC, align 8
  %557 = inttoptr i64 %554 to i32*
  store i32 %555, i32* %557, align 4
  %558 = load i64, i64* %PC, align 8
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %559 = add i64 %558, -8555
  %560 = add i64 %558, 7
  %561 = load i64, i64* %RSP, align 8, !tbaa !2428
  %562 = add i64 %561, -8
  %563 = inttoptr i64 %562 to i64*
  store i64 %560, i64* %563, align 8
  store i64 %562, i64* %RSP, align 8, !tbaa !2428
  store i64 %559, i64* %PC, align 8, !tbaa !2428
  %564 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %548)
  %565 = load i64, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8, !tbaa !2428
  %566 = load i64, i64* %RBP, align 8
  %567 = add i64 %566, -340
  %568 = load i32, i32* %EAX, align 4
  %569 = add i64 %565, 8
  store i64 %569, i64* %PC, align 8
  %570 = inttoptr i64 %567 to i32*
  store i32 %568, i32* %570, align 4
  %571 = load i32, i32* %ECX, align 4
  %572 = zext i32 %571 to i64
  %573 = load i64, i64* %PC, align 8
  store i64 %572, i64* %RAX, align 8, !tbaa !2428
  %574 = load i64, i64* %RSP, align 8
  %575 = add i64 %574, 352
  store i64 %575, i64* %RSP, align 8, !tbaa !2428
  %576 = icmp ugt i64 %574, -353
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %23, align 1, !tbaa !2432
  %578 = trunc i64 %575 to i32
  %579 = and i32 %578, 255
  %580 = tail call i32 @llvm.ctpop.i32(i32 %579) #11
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  %583 = xor i8 %582, 1
  store i8 %583, i8* %30, align 1, !tbaa !2446
  %584 = xor i64 %575, %574
  %585 = lshr i64 %584, 4
  %586 = trunc i64 %585 to i8
  %587 = and i8 %586, 1
  store i8 %587, i8* %35, align 1, !tbaa !2450
  %588 = icmp eq i64 %575, 0
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %38, align 1, !tbaa !2447
  %590 = lshr i64 %575, 63
  %591 = trunc i64 %590 to i8
  store i8 %591, i8* %41, align 1, !tbaa !2448
  %592 = lshr i64 %574, 63
  %593 = xor i64 %590, %592
  %594 = add nuw nsw i64 %593, %590
  %595 = icmp eq i64 %594, 2
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %47, align 1, !tbaa !2449
  %597 = add i64 %573, 10
  store i64 %597, i64* %PC, align 8
  %598 = add i64 %574, 360
  %599 = inttoptr i64 %575 to i64*
  %600 = load i64, i64* %599, align 8
  store i64 %600, i64* %RBP, align 8, !tbaa !2428
  store i64 %598, i64* %RSP, align 8, !tbaa !2428
  %601 = add i64 %573, 11
  store i64 %601, i64* %PC, align 8
  %602 = inttoptr i64 %598 to i64*
  %603 = load i64, i64* %602, align 8
  store i64 %603, i64* %PC, align 8, !tbaa !2428
  %604 = add i64 %574, 368
  store i64 %604, i64* %RSP, align 8, !tbaa !2428
  ret %struct.Memory* %564

block_401d63:                                     ; preds = %block_401cca
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %605 = add i64 %2501, 2173
  %606 = add i64 %2501, 15
  %607 = load i64, i64* %RSP, align 8, !tbaa !2428
  %608 = add i64 %607, -8
  %609 = inttoptr i64 %608 to i64*
  store i64 %606, i64* %609, align 8
  store i64 %608, i64* %RSP, align 8, !tbaa !2428
  store i64 %605, i64* %PC, align 8, !tbaa !2428
  %610 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %605, %struct.Memory* %2921)
  %611 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 606), i64* %RDI, align 8, !tbaa !2428
  %612 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to i64*), align 8
  store i64 %612, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %613 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 168) to i64*), align 8
  store i64 %613, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %614 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 176) to i64*), align 16
  store i64 %614, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  store i64 -9223372036854775808, i64* %RCX, align 8, !tbaa !2428
  %615 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 184) to double*), align 8
  %616 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %617 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %618 = fmul double %616, %617
  %619 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %620 = fsub double %618, %619
  store double %620, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 168) to double*), align 8
  %621 = fdiv double %620, %615
  store double %621, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  store double %621, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 176) to double*), align 16
  %622 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %622, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %623 = load i64, i64* %RBP, align 8
  %624 = add i64 %623, -48
  %625 = add i64 %611, 124
  store i64 %625, i64* %PC, align 8
  %626 = inttoptr i64 %624 to i64*
  store i64 %622, i64* %626, align 8
  %627 = load i64, i64* %RBP, align 8
  %628 = add i64 %627, -48
  %629 = load i64, i64* %PC, align 8
  %630 = add i64 %629, 5
  store i64 %630, i64* %PC, align 8
  %631 = inttoptr i64 %628 to i64*
  %632 = load i64, i64* %631, align 8
  store i64 %632, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %633 = add i64 %629, 10
  store i64 %633, i64* %PC, align 8
  %634 = bitcast i64 %632 to double
  %635 = inttoptr i64 %628 to double*
  %636 = load double, double* %635, align 8
  %637 = fmul double %634, %636
  store double %637, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %638 = add i64 %627, -24
  %639 = add i64 %629, 15
  store i64 %639, i64* %PC, align 8
  %640 = inttoptr i64 %638 to double*
  store double %637, double* %640, align 8
  %641 = load i64, i64* %RBP, align 8
  %642 = add i64 %641, -40
  %643 = load i64, i64* %PC, align 8
  %644 = add i64 %643, 5
  store i64 %644, i64* %PC, align 8
  %645 = inttoptr i64 %642 to i64*
  %646 = load i64, i64* %645, align 8
  %647 = load i64, i64* %RCX, align 8
  %648 = xor i64 %647, %646
  store i64 %648, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %23, align 1, !tbaa !2432
  %649 = trunc i64 %648 to i32
  %650 = and i32 %649, 255
  %651 = tail call i32 @llvm.ctpop.i32(i32 %650) #11
  %652 = trunc i32 %651 to i8
  %653 = and i8 %652, 1
  %654 = xor i8 %653, 1
  store i8 %654, i8* %30, align 1, !tbaa !2446
  %655 = icmp eq i64 %648, 0
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %38, align 1, !tbaa !2447
  %657 = lshr i64 %648, 63
  %658 = trunc i64 %657 to i8
  store i8 %658, i8* %41, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %35, align 1, !tbaa !2450
  store i64 %648, i64* %92, align 1, !tbaa !2428
  store i64 0, i64* %93, align 1, !tbaa !2428
  %659 = add i64 %643, 23
  store i64 %659, i64* %PC, align 8
  %660 = load i64, i64* %645, align 8
  store i64 %660, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %661 = add i64 %641, -48
  %662 = add i64 %643, 28
  store i64 %662, i64* %PC, align 8
  %663 = inttoptr i64 %661 to i64*
  %664 = load i64, i64* %663, align 8
  store i64 %664, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %665 = add i64 %643, 33
  store i64 %665, i64* %PC, align 8
  %666 = bitcast i64 %664 to double
  %667 = inttoptr i64 %642 to double*
  %668 = load double, double* %667, align 8
  %669 = fadd double %666, %668
  store double %669, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %670 = bitcast i64 %660 to double
  %671 = fdiv double %670, %669
  store double %671, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %672 = bitcast i64 %648 to double
  %673 = fsub double %672, %671
  store double %673, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %674 = add i64 %643, 46
  store i64 %674, i64* %PC, align 8
  %675 = load i64, i64* %663, align 8
  store i64 %675, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %676 = add i64 %641, -24
  %677 = add i64 %643, 51
  store i64 %677, i64* %PC, align 8
  %678 = inttoptr i64 %676 to i64*
  %679 = load i64, i64* %678, align 8
  store i64 %679, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %680 = add i64 %643, 56
  store i64 %680, i64* %PC, align 8
  %681 = bitcast i64 %679 to double
  %682 = load double, double* %667, align 8
  %683 = fadd double %681, %682
  store double %683, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %684 = bitcast i64 %675 to double
  %685 = fdiv double %684, %683
  store double %685, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %686 = fsub double %673, %685
  store double %686, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %687 = add i64 %643, 69
  store i64 %687, i64* %PC, align 8
  %688 = load i64, i64* %678, align 8
  store i64 %688, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %689 = add i64 %643, 74
  store i64 %689, i64* %PC, align 8
  %690 = load i64, i64* %663, align 8
  store i64 %690, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %691 = add i64 %643, 79
  store i64 %691, i64* %PC, align 8
  %692 = bitcast i64 %690 to double
  %693 = inttoptr i64 %676 to double*
  %694 = load double, double* %693, align 8
  %695 = fmul double %692, %694
  store double %695, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %696 = add i64 %643, 84
  store i64 %696, i64* %PC, align 8
  %697 = load double, double* %667, align 8
  %698 = fadd double %695, %697
  store double %698, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %699 = bitcast i64 %688 to double
  %700 = fdiv double %699, %698
  store double %700, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %701 = fsub double %686, %700
  store double %701, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  store double %701, double* bitcast (%sa_type* @sa to double*), align 8
  %702 = add i64 %641, -32
  %703 = add i64 %643, 106
  store i64 %703, i64* %PC, align 8
  %704 = load double, double* %86, align 1
  %705 = inttoptr i64 %702 to double*
  %706 = load double, double* %705, align 8
  %707 = fmul double %704, %706
  store double %707, double* %86, align 1, !tbaa !2452
  store double %701, double* %91, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %708 = load i64, i64* bitcast (%two_type* @two to i64*), align 8
  store i64 %708, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %709 = add i64 %641, -16
  %710 = add i64 %643, 129
  store i64 %710, i64* %PC, align 8
  %.cast175 = bitcast i64 %708 to double
  %711 = inttoptr i64 %709 to double*
  %712 = load double, double* %711, align 8
  %713 = fmul double %.cast175, %712
  store double %713, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %714 = fadd double %701, %713
  store double %714, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %715 = fmul double %707, %714
  store double %715, double* %86, align 1, !tbaa !2452
  store double %715, double* bitcast (%sa_type* @sa to double*), align 8
  %716 = tail call double @llvm.trunc.f64(double %715) #11
  %717 = tail call double @llvm.fabs.f64(double %716) #11
  %718 = fcmp ogt double %717, 0x43E0000000000000
  %719 = fptosi double %716 to i64
  %720 = select i1 %718, i64 -9223372036854775808, i64 %719
  %721 = sext i64 %720 to i128
  %722 = and i128 %721, -18446744073709551616
  %723 = zext i64 %720 to i128
  %724 = or i128 %722, %723
  %725 = mul nsw i128 %724, -2000
  %726 = trunc i128 %725 to i64
  store i64 %726, i64* %RCX, align 8, !tbaa !2428
  %727 = sext i64 %726 to i128
  %728 = icmp ne i128 %727, %725
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %23, align 1, !tbaa !2432
  %730 = trunc i128 %725 to i32
  %731 = and i32 %730, 240
  %732 = tail call i32 @llvm.ctpop.i32(i32 %731) #11
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %30, align 1, !tbaa !2446
  store i8 0, i8* %35, align 1, !tbaa !2450
  store i8 0, i8* %38, align 1, !tbaa !2447
  %736 = lshr i64 %726, 63
  %737 = trunc i64 %736 to i8
  store i8 %737, i8* %41, align 1, !tbaa !2448
  store i8 %729, i8* %47, align 1, !tbaa !2449
  %738 = load i64, i64* %RBP, align 8
  %739 = add i64 %738, -80
  %740 = add i64 %643, 167
  store i64 %740, i64* %PC, align 8
  %741 = inttoptr i64 %739 to i64*
  store i64 %726, i64* %741, align 8
  %742 = load i64, i64* %RBP, align 8
  %743 = add i64 %742, -80
  %744 = load i64, i64* %PC, align 8
  %745 = add i64 %744, 6
  store i64 %745, i64* %PC, align 8
  %746 = inttoptr i64 %743 to i64*
  %747 = load i64, i64* %746, align 8
  %748 = sitofp i64 %747 to double
  %749 = load double, double* bitcast (%scale_type* @scale to double*), align 8
  %750 = fdiv double %748, %749
  %751 = tail call double @llvm.trunc.f64(double %750) #11
  %752 = tail call double @llvm.fabs.f64(double %751) #11
  %753 = fcmp ogt double %752, 0x43E0000000000000
  %754 = fptosi double %751 to i64
  %755 = select i1 %753, i64 -9223372036854775808, i64 %754
  store i64 %755, i64* %RCX, align 8, !tbaa !2428
  %756 = add i64 %744, 24
  store i64 %756, i64* %PC, align 8
  store i64 %755, i64* %746, align 8
  %757 = load i64, i64* %PC, align 8
  %758 = load double, double* %80, align 1
  %759 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %760 = fadd double %758, %759
  store double %760, double* bitcast (%sc_type* @sc to double*), align 8
  %761 = load double, double* bitcast (%one_type* @one to double*), align 8
  %762 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 176) to double*), align 16
  %763 = fdiv double %761, %762
  store double %763, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 184) to double*), align 8
  %764 = load <2 x i32>, <2 x i32>* %1347, align 1
  %765 = load <2 x i32>, <2 x i32>* %1349, align 1
  %766 = extractelement <2 x i32> %764, i32 0
  store i32 %766, i32* %1352, align 1, !tbaa !2455
  %767 = extractelement <2 x i32> %764, i32 1
  store i32 %767, i32* %1355, align 1, !tbaa !2455
  %768 = extractelement <2 x i32> %765, i32 0
  store i32 %768, i32* %1357, align 1, !tbaa !2455
  %769 = extractelement <2 x i32> %765, i32 1
  store i32 %769, i32* %1360, align 1, !tbaa !2455
  %770 = load double, double* %80, align 1
  %771 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %772 = fmul double %770, %771
  store double %772, double* %80, align 1, !tbaa !2452
  store i32 %766, i32* %1364, align 1, !tbaa !2455
  store i32 %767, i32* %1366, align 1, !tbaa !2455
  store i32 %768, i32* %1367, align 1, !tbaa !2455
  store i32 %769, i32* %1369, align 1, !tbaa !2455
  %773 = load double, double* %86, align 1
  %774 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 168) to double*), align 8
  %775 = fmul double %773, %774
  store double %775, double* %86, align 1, !tbaa !2452
  %776 = bitcast <2 x i32> %764 to double
  %777 = fmul double %763, %776
  %778 = load i64, i64* %RBP, align 8
  %779 = add i64 %778, -280
  %780 = add i64 %757, 86
  store i64 %780, i64* %PC, align 8
  %781 = inttoptr i64 %779 to double*
  store double %777, double* %781, align 8
  %782 = load i64, i64* %PC, align 8
  %783 = load <2 x i32>, <2 x i32>* %1380, align 1
  %784 = load <2 x i32>, <2 x i32>* %1382, align 1
  %785 = extractelement <2 x i32> %783, i32 0
  store i32 %785, i32* %187, align 1, !tbaa !2455
  %786 = extractelement <2 x i32> %783, i32 1
  store i32 %786, i32* %189, align 1, !tbaa !2455
  %787 = extractelement <2 x i32> %784, i32 0
  store i32 %787, i32* %190, align 1, !tbaa !2455
  %788 = extractelement <2 x i32> %784, i32 1
  store i32 %788, i32* %192, align 1, !tbaa !2455
  %789 = load <2 x i32>, <2 x i32>* %1388, align 1
  %790 = load <2 x i32>, <2 x i32>* %1390, align 1
  %791 = extractelement <2 x i32> %789, i32 0
  store i32 %791, i32* %1352, align 1, !tbaa !2455
  %792 = extractelement <2 x i32> %789, i32 1
  store i32 %792, i32* %1355, align 1, !tbaa !2455
  %793 = extractelement <2 x i32> %790, i32 0
  store i32 %793, i32* %1357, align 1, !tbaa !2455
  %794 = extractelement <2 x i32> %790, i32 1
  store i32 %794, i32* %1360, align 1, !tbaa !2455
  %795 = load i64, i64* %RBP, align 8
  %796 = add i64 %795, -280
  %797 = add i64 %782, 14
  store i64 %797, i64* %PC, align 8
  %798 = inttoptr i64 %796 to i64*
  %799 = load i64, i64* %798, align 8
  store i64 %799, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %800 = add i64 %795, -284
  %801 = load i32, i32* %EAX, align 4
  %802 = add i64 %782, 20
  store i64 %802, i64* %PC, align 8
  %803 = inttoptr i64 %800 to i32*
  store i32 %801, i32* %803, align 4
  %804 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2451
  %805 = add i64 %804, -6870
  %806 = add i64 %804, 7
  %807 = load i64, i64* %RSP, align 8, !tbaa !2428
  %808 = add i64 %807, -8
  %809 = inttoptr i64 %808 to i64*
  store i64 %806, i64* %809, align 8
  store i64 %808, i64* %RSP, align 8, !tbaa !2428
  store i64 %805, i64* %PC, align 8, !tbaa !2428
  %810 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %610)
  %811 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i32 0, i32* %187, align 1, !tbaa !2454
  store i32 0, i32* %189, align 1, !tbaa !2454
  store i32 0, i32* %190, align 1, !tbaa !2454
  store i32 0, i32* %192, align 1, !tbaa !2454
  %812 = load i64, i64* bitcast (%piref_type* @piref to i64*), align 8
  store i64 %812, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %813 = load i64, i64* bitcast (%three_type* @three to i64*), align 8
  store i64 %813, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %814 = load i64, i64* %RBP, align 8
  %815 = add i64 %814, -80
  %816 = add i64 %811, 37
  store i64 %816, i64* %PC, align 8
  %817 = inttoptr i64 %815 to i64*
  %818 = load i64, i64* %817, align 8
  %819 = sitofp i64 %818 to double
  store double %819, double* %91, align 1, !tbaa !2452
  %820 = bitcast i64 %813 to double
  %821 = fmul double %820, %819
  store double %821, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %822 = bitcast i64 %812 to double
  %823 = fdiv double %822, %821
  store double %823, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %824 = add i64 %814, -48
  %825 = add i64 %811, 50
  store i64 %825, i64* %PC, align 8
  %826 = inttoptr i64 %824 to double*
  store double %823, double* %826, align 8
  %827 = load i64, i64* %RBP, align 8
  %828 = add i64 %827, -16
  %829 = load i64, i64* %PC, align 8
  %830 = add i64 %829, 5
  store i64 %830, i64* %PC, align 8
  %831 = load i64, i64* %75, align 1
  %832 = inttoptr i64 %828 to i64*
  store i64 %831, i64* %832, align 8
  %833 = load i64, i64* %RBP, align 8
  %834 = add i64 %833, -32
  %835 = load i64, i64* %PC, align 8
  %836 = add i64 %835, 5
  store i64 %836, i64* %PC, align 8
  %837 = load i64, i64* %75, align 1
  %838 = inttoptr i64 %834 to i64*
  store i64 %837, i64* %838, align 8
  %839 = load i64, i64* %RBP, align 8
  %840 = add i64 %839, -288
  %841 = load i32, i32* %EAX, align 4
  %842 = load i64, i64* %PC, align 8
  %843 = add i64 %842, 6
  store i64 %843, i64* %PC, align 8
  %844 = inttoptr i64 %840 to i32*
  store i32 %841, i32* %844, align 4
  %845 = load i64, i64* %PC, align 8
  %846 = add i64 %845, 1649
  %847 = add i64 %845, 5
  %848 = load i64, i64* %RSP, align 8, !tbaa !2428
  %849 = add i64 %848, -8
  %850 = inttoptr i64 %849 to i64*
  store i64 %847, i64* %850, align 8
  store i64 %849, i64* %RSP, align 8, !tbaa !2428
  store i64 %846, i64* %PC, align 8, !tbaa !2428
  %851 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %846, %struct.Memory* %810)
  %852 = load i64, i64* %RBP, align 8
  %853 = add i64 %852, -72
  %854 = load i64, i64* %PC, align 8
  %855 = add i64 %854, 8
  store i64 %855, i64* %PC, align 8
  %856 = inttoptr i64 %853 to i64*
  store i64 1, i64* %856, align 8
  %857 = load i64, i64* %RBP, align 8
  %858 = add i64 %857, -292
  %859 = load i32, i32* %EAX, align 4
  %860 = load i64, i64* %PC, align 8
  %861 = add i64 %860, 6
  store i64 %861, i64* %PC, align 8
  %862 = inttoptr i64 %858 to i32*
  store i32 %859, i32* %862, align 4
  %.pre217 = load i64, i64* %PC, align 8
  br label %block_401f82

block_4014ff:                                     ; preds = %block_401514, %block_401259
  %863 = phi i64 [ %3166, %block_401514 ], [ %.pre214, %block_401259 ]
  %864 = load i64, i64* %RBP, align 8
  %865 = add i64 %864, -72
  %866 = add i64 %863, 4
  store i64 %866, i64* %PC, align 8
  %867 = inttoptr i64 %865 to i64*
  %868 = load i64, i64* %867, align 8
  store i64 %868, i64* %RAX, align 8, !tbaa !2428
  %869 = add i64 %864, -80
  %870 = add i64 %863, 8
  store i64 %870, i64* %PC, align 8
  %871 = inttoptr i64 %869 to i64*
  %872 = load i64, i64* %871, align 8
  %873 = add i64 %872, -1
  store i64 %873, i64* %RCX, align 8, !tbaa !2428
  %874 = lshr i64 %873, 63
  %875 = sub i64 %868, %873
  %876 = icmp ult i64 %868, %873
  %877 = zext i1 %876 to i8
  store i8 %877, i8* %23, align 1, !tbaa !2432
  %878 = trunc i64 %875 to i32
  %879 = and i32 %878, 255
  %880 = tail call i32 @llvm.ctpop.i32(i32 %879) #11
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  %883 = xor i8 %882, 1
  store i8 %883, i8* %30, align 1, !tbaa !2446
  %884 = xor i64 %873, %868
  %885 = xor i64 %884, %875
  %886 = lshr i64 %885, 4
  %887 = trunc i64 %886 to i8
  %888 = and i8 %887, 1
  store i8 %888, i8* %35, align 1, !tbaa !2450
  %889 = icmp eq i64 %875, 0
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %38, align 1, !tbaa !2447
  %891 = lshr i64 %875, 63
  %892 = trunc i64 %891 to i8
  store i8 %892, i8* %41, align 1, !tbaa !2448
  %893 = lshr i64 %868, 63
  %894 = xor i64 %874, %893
  %895 = xor i64 %891, %893
  %896 = add nuw nsw i64 %895, %894
  %897 = icmp eq i64 %896, 2
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %47, align 1, !tbaa !2449
  %899 = icmp ne i8 %892, 0
  %900 = xor i1 %899, %897
  %.demorgan223 = or i1 %889, %900
  %.v230 = select i1 %.demorgan223, i64 21, i64 312
  %901 = add i64 %.v230, %863
  store i64 %901, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan223, label %block_401514, label %block_401637

block_400bed:                                     ; preds = %block_400bdf
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
  %902 = add i64 %2934, -16
  %903 = add i64 %2970, 15
  store i64 %903, i64* %PC, align 8
  %904 = inttoptr i64 %902 to i64*
  %905 = load i64, i64* %904, align 8
  %906 = xor i64 %905, -9223372036854775808
  store i64 %906, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %23, align 1, !tbaa !2432
  %907 = trunc i64 %905 to i32
  %908 = and i32 %907, 255
  %909 = tail call i32 @llvm.ctpop.i32(i32 %908) #11
  %910 = trunc i32 %909 to i8
  %911 = and i8 %910, 1
  %912 = xor i8 %911, 1
  store i8 %912, i8* %30, align 1, !tbaa !2446
  %913 = icmp eq i64 %906, 0
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %38, align 1, !tbaa !2447
  %915 = lshr i64 %906, 63
  %916 = trunc i64 %915 to i8
  store i8 %916, i8* %41, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %35, align 1, !tbaa !2450
  %917 = add i64 %2970, 33
  store i64 %917, i64* %PC, align 8
  store i64 %906, i64* %904, align 8
  %918 = load i64, i64* %PC, align 8
  %919 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %919, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %920 = load i64, i64* %RBP, align 8
  %921 = add i64 %920, -16
  %922 = add i64 %918, 14
  store i64 %922, i64* %PC, align 8
  %.cast156 = bitcast i64 %919 to double
  %923 = inttoptr i64 %921 to double*
  %924 = load double, double* %923, align 8
  %925 = fadd double %.cast156, %924
  store double %925, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  store double %925, double* bitcast (%sa_type* @sa to double*), align 8
  %926 = add i64 %920, -24
  %927 = add i64 %918, 28
  store i64 %927, i64* %PC, align 8
  %928 = inttoptr i64 %926 to double*
  %929 = load double, double* %928, align 8
  %930 = load double, double* bitcast (%two_type* @two to double*), align 8
  %931 = fadd double %929, %930
  store double %931, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %932 = add i64 %918, 42
  store i64 %932, i64* %PC, align 8
  store double %931, double* %928, align 8
  %933 = load i64, i64* %RBP, align 8
  %934 = add i64 %933, -48
  %935 = load i64, i64* %PC, align 8
  %936 = add i64 %935, 5
  store i64 %936, i64* %PC, align 8
  %937 = inttoptr i64 %934 to i64*
  %938 = load i64, i64* %937, align 8
  store i64 %938, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %939 = add i64 %933, -16
  %940 = add i64 %935, 10
  store i64 %940, i64* %PC, align 8
  %941 = inttoptr i64 %939 to i64*
  %942 = load i64, i64* %941, align 8
  store i64 %942, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %943 = add i64 %933, -24
  %944 = add i64 %935, 15
  store i64 %944, i64* %PC, align 8
  %945 = bitcast i64 %942 to double
  %946 = inttoptr i64 %943 to double*
  %947 = load double, double* %946, align 8
  %948 = fsub double %945, %947
  store double %948, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %949 = bitcast i64 %938 to double
  %950 = fadd double %949, %948
  store double %950, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %951 = add i64 %935, 24
  store i64 %951, i64* %PC, align 8
  %952 = inttoptr i64 %934 to double*
  store double %950, double* %952, align 8
  %953 = load i64, i64* %RBP, align 8
  %954 = add i64 %953, -32
  %955 = load i64, i64* %PC, align 8
  %956 = add i64 %955, 5
  store i64 %956, i64* %PC, align 8
  %957 = inttoptr i64 %954 to i64*
  %958 = load i64, i64* %957, align 8
  store i64 %958, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %959 = add i64 %953, -16
  %960 = add i64 %955, 10
  store i64 %960, i64* %PC, align 8
  %961 = inttoptr i64 %959 to i64*
  %962 = load i64, i64* %961, align 8
  store i64 %962, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %963 = add i64 %953, -24
  %964 = add i64 %955, 15
  store i64 %964, i64* %PC, align 8
  %965 = bitcast i64 %962 to double
  %966 = inttoptr i64 %963 to double*
  %967 = load double, double* %966, align 8
  %968 = fmul double %965, %967
  store double %968, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %969 = bitcast i64 %958 to double
  %970 = fsub double %969, %968
  store double %970, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %971 = add i64 %955, 24
  store i64 %971, i64* %PC, align 8
  %972 = inttoptr i64 %954 to double*
  store double %970, double* %972, align 8
  %973 = load i64, i64* %RBP, align 8
  %974 = add i64 %973, -40
  %975 = load i64, i64* %PC, align 8
  %976 = add i64 %975, 5
  store i64 %976, i64* %PC, align 8
  %977 = inttoptr i64 %974 to i64*
  %978 = load i64, i64* %977, align 8
  store i64 %978, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %979 = add i64 %973, -16
  %980 = add i64 %975, 10
  store i64 %980, i64* %PC, align 8
  %981 = inttoptr i64 %979 to i64*
  %982 = load i64, i64* %981, align 8
  store i64 %982, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %983 = add i64 %973, -24
  %984 = add i64 %975, 15
  store i64 %984, i64* %PC, align 8
  %985 = bitcast i64 %982 to double
  %986 = inttoptr i64 %983 to double*
  %987 = load double, double* %986, align 8
  %988 = fdiv double %985, %987
  store double %988, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %989 = bitcast i64 %978 to double
  %990 = fadd double %989, %988
  store double %990, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %991 = add i64 %975, 24
  store i64 %991, i64* %PC, align 8
  %992 = inttoptr i64 %974 to double*
  store double %990, double* %992, align 8
  %993 = load i64, i64* %RBP, align 8
  %994 = add i64 %993, -72
  %995 = load i64, i64* %PC, align 8
  %996 = add i64 %995, 4
  store i64 %996, i64* %PC, align 8
  %997 = inttoptr i64 %994 to i64*
  %998 = load i64, i64* %997, align 8
  %999 = add i64 %998, 1
  store i64 %999, i64* %RAX, align 8, !tbaa !2428
  %1000 = icmp eq i64 %998, -1
  %1001 = icmp eq i64 %999, 0
  %1002 = or i1 %1000, %1001
  %1003 = zext i1 %1002 to i8
  store i8 %1003, i8* %23, align 1, !tbaa !2432
  %1004 = trunc i64 %999 to i32
  %1005 = and i32 %1004, 255
  %1006 = tail call i32 @llvm.ctpop.i32(i32 %1005) #11
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  %1009 = xor i8 %1008, 1
  store i8 %1009, i8* %30, align 1, !tbaa !2446
  %1010 = xor i64 %999, %998
  %1011 = lshr i64 %1010, 4
  %1012 = trunc i64 %1011 to i8
  %1013 = and i8 %1012, 1
  store i8 %1013, i8* %35, align 1, !tbaa !2450
  %1014 = zext i1 %1001 to i8
  store i8 %1014, i8* %38, align 1, !tbaa !2447
  %1015 = lshr i64 %999, 63
  %1016 = trunc i64 %1015 to i8
  store i8 %1016, i8* %41, align 1, !tbaa !2448
  %1017 = lshr i64 %998, 63
  %1018 = xor i64 %1015, %1017
  %1019 = add nuw nsw i64 %1018, %1015
  %1020 = icmp eq i64 %1019, 2
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %47, align 1, !tbaa !2449
  %1022 = add i64 %995, 12
  store i64 %1022, i64* %PC, align 8
  store i64 %999, i64* %997, align 8
  %1023 = load i64, i64* %PC, align 8
  %1024 = add i64 %1023, -173
  store i64 %1024, i64* %PC, align 8, !tbaa !2428
  br label %block_400bdf

block_4007e5:                                     ; preds = %block_40071b
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %1025 = add i64 %2696, 7675
  %1026 = add i64 %2696, 15
  %1027 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1028 = add i64 %1027, -8
  %1029 = inttoptr i64 %1028 to i64*
  store i64 %1026, i64* %1029, align 8
  store i64 %1028, i64* %RSP, align 8, !tbaa !2428
  store i64 %1025, i64* %PC, align 8, !tbaa !2428
  %1030 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %1025, %struct.Memory* %2073)
  %1031 = load i64, i64* %PC, align 8
  %1032 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to i64*), align 8
  store i64 %1032, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  store i64 %1032, i64* bitcast (%sa_type* @sa to i64*), align 8
  %1033 = load i64, i64* %RBP, align 8
  %1034 = add i64 %1033, -88
  %1035 = add i64 %1031, 22
  store i64 %1035, i64* %PC, align 8
  %1036 = inttoptr i64 %1034 to i64*
  %1037 = load i64, i64* %1036, align 8
  store i64 %1037, i64* %RDI, align 8, !tbaa !2428
  %1038 = add i64 %1033, -64
  %1039 = add i64 %1031, 26
  store i64 %1039, i64* %PC, align 8
  %1040 = inttoptr i64 %1038 to i64*
  %1041 = load i64, i64* %1040, align 8
  %1042 = sub i64 %1037, %1041
  %1043 = icmp ult i64 %1037, %1041
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %23, align 1, !tbaa !2432
  %1045 = trunc i64 %1042 to i32
  %1046 = and i32 %1045, 255
  %1047 = tail call i32 @llvm.ctpop.i32(i32 %1046) #11
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  %1050 = xor i8 %1049, 1
  store i8 %1050, i8* %30, align 1, !tbaa !2446
  %1051 = xor i64 %1041, %1037
  %1052 = xor i64 %1051, %1042
  %1053 = lshr i64 %1052, 4
  %1054 = trunc i64 %1053 to i8
  %1055 = and i8 %1054, 1
  store i8 %1055, i8* %35, align 1, !tbaa !2450
  %1056 = icmp eq i64 %1042, 0
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %38, align 1, !tbaa !2447
  %1058 = lshr i64 %1042, 63
  %1059 = trunc i64 %1058 to i8
  store i8 %1059, i8* %41, align 1, !tbaa !2448
  %1060 = lshr i64 %1037, 63
  %1061 = lshr i64 %1041, 63
  %1062 = xor i64 %1061, %1060
  %1063 = xor i64 %1058, %1060
  %1064 = add nuw nsw i64 %1063, %1062
  %1065 = icmp eq i64 %1064, 2
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %47, align 1, !tbaa !2449
  %1067 = add i64 %1033, -120
  %1068 = load i32, i32* %EAX, align 4
  %1069 = add i64 %1031, 29
  store i64 %1069, i64* %PC, align 8
  %1070 = inttoptr i64 %1067 to i32*
  store i32 %1068, i32* %1070, align 4
  %1071 = load i64, i64* %PC, align 8
  %1072 = load i8, i8* %38, align 1, !tbaa !2447
  %1073 = icmp eq i8 %1072, 0
  %.v251 = select i1 %1073, i64 11, i64 6
  %1074 = add i64 %.v251, %1071
  store i64 %1074, i64* %PC, align 8, !tbaa !2428
  br i1 %1073, label %block_40081c, label %block_400817

block_401cdf:                                     ; preds = %block_401cca
  %1075 = add i64 %2501, 6
  store i64 %1075, i64* %PC, align 8
  %1076 = load i64, i64* %2467, align 8
  %1077 = sitofp i64 %1076 to double
  store double %1077, double* %74, align 1, !tbaa !2452
  %1078 = add i64 %2464, -32
  %1079 = add i64 %2501, 11
  store i64 %1079, i64* %PC, align 8
  %1080 = inttoptr i64 %1078 to double*
  %1081 = load double, double* %1080, align 8
  %1082 = fmul double %1077, %1081
  store double %1082, double* %74, align 1, !tbaa !2452
  %1083 = add i64 %2464, -48
  %1084 = add i64 %2501, 16
  store i64 %1084, i64* %PC, align 8
  %1085 = inttoptr i64 %1083 to double*
  store double %1082, double* %1085, align 8
  %1086 = load i64, i64* %RBP, align 8
  %1087 = add i64 %1086, -48
  %1088 = load i64, i64* %PC, align 8
  %1089 = add i64 %1088, 5
  store i64 %1089, i64* %PC, align 8
  %1090 = inttoptr i64 %1087 to i64*
  %1091 = load i64, i64* %1090, align 8
  store i64 %1091, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %1092 = add i64 %1088, 10
  store i64 %1092, i64* %PC, align 8
  %1093 = bitcast i64 %1091 to double
  %1094 = inttoptr i64 %1087 to double*
  %1095 = load double, double* %1094, align 8
  %1096 = fmul double %1093, %1095
  store double %1096, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %1097 = add i64 %1086, -24
  %1098 = add i64 %1088, 15
  store i64 %1098, i64* %PC, align 8
  %1099 = inttoptr i64 %1097 to double*
  store double %1096, double* %1099, align 8
  %1100 = load i64, i64* %RBP, align 8
  %1101 = add i64 %1100, -16
  %1102 = load i64, i64* %PC, align 8
  %1103 = add i64 %1102, 5
  store i64 %1103, i64* %PC, align 8
  %1104 = inttoptr i64 %1101 to i64*
  %1105 = load i64, i64* %1104, align 8
  store i64 %1105, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %1106 = add i64 %1100, -40
  %1107 = add i64 %1102, 10
  store i64 %1107, i64* %PC, align 8
  %1108 = inttoptr i64 %1106 to i64*
  %1109 = load i64, i64* %1108, align 8
  store i64 %1109, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1110 = add i64 %1100, -48
  %1111 = add i64 %1102, 15
  store i64 %1111, i64* %PC, align 8
  %1112 = inttoptr i64 %1110 to i64*
  %1113 = load i64, i64* %1112, align 8
  store i64 %1113, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1114 = add i64 %1102, 20
  store i64 %1114, i64* %PC, align 8
  %1115 = bitcast i64 %1113 to double
  %1116 = inttoptr i64 %1106 to double*
  %1117 = load double, double* %1116, align 8
  %1118 = fadd double %1115, %1117
  store double %1118, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1119 = bitcast i64 %1109 to double
  %1120 = fdiv double %1119, %1118
  store double %1120, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %1121 = bitcast i64 %1105 to double
  %1122 = fsub double %1121, %1120
  store double %1122, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %1123 = add i64 %1102, 33
  store i64 %1123, i64* %PC, align 8
  %1124 = load i64, i64* %1112, align 8
  store i64 %1124, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1125 = add i64 %1100, -24
  %1126 = add i64 %1102, 38
  store i64 %1126, i64* %PC, align 8
  %1127 = inttoptr i64 %1125 to i64*
  %1128 = load i64, i64* %1127, align 8
  store i64 %1128, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1129 = add i64 %1102, 43
  store i64 %1129, i64* %PC, align 8
  %1130 = bitcast i64 %1128 to double
  %1131 = load double, double* %1116, align 8
  %1132 = fadd double %1130, %1131
  store double %1132, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1133 = bitcast i64 %1124 to double
  %1134 = fdiv double %1133, %1132
  store double %1134, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %1135 = fsub double %1122, %1134
  store double %1135, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %1136 = add i64 %1102, 56
  store i64 %1136, i64* %PC, align 8
  %1137 = load i64, i64* %1127, align 8
  store i64 %1137, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1138 = add i64 %1102, 61
  store i64 %1138, i64* %PC, align 8
  %1139 = load i64, i64* %1112, align 8
  store i64 %1139, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1140 = add i64 %1102, 66
  store i64 %1140, i64* %PC, align 8
  %1141 = bitcast i64 %1139 to double
  %1142 = inttoptr i64 %1125 to double*
  %1143 = load double, double* %1142, align 8
  %1144 = fmul double %1141, %1143
  store double %1144, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1145 = add i64 %1102, 71
  store i64 %1145, i64* %PC, align 8
  %1146 = load double, double* %1116, align 8
  %1147 = fadd double %1144, %1146
  store double %1147, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1148 = bitcast i64 %1137 to double
  %1149 = fdiv double %1148, %1147
  store double %1149, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %1150 = fsub double %1135, %1149
  store double %1150, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %1151 = add i64 %1102, 84
  store i64 %1151, i64* %PC, align 8
  %1152 = inttoptr i64 %1101 to double*
  store double %1150, double* %1152, align 8
  %1153 = load i64, i64* %RBP, align 8
  %1154 = add i64 %1153, -72
  %1155 = load i64, i64* %PC, align 8
  %1156 = add i64 %1155, 4
  store i64 %1156, i64* %PC, align 8
  %1157 = inttoptr i64 %1154 to i64*
  %1158 = load i64, i64* %1157, align 8
  %1159 = add i64 %1158, 1
  store i64 %1159, i64* %RAX, align 8, !tbaa !2428
  %1160 = icmp eq i64 %1158, -1
  %1161 = icmp eq i64 %1159, 0
  %1162 = or i1 %1160, %1161
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %23, align 1, !tbaa !2432
  %1164 = trunc i64 %1159 to i32
  %1165 = and i32 %1164, 255
  %1166 = tail call i32 @llvm.ctpop.i32(i32 %1165) #11
  %1167 = trunc i32 %1166 to i8
  %1168 = and i8 %1167, 1
  %1169 = xor i8 %1168, 1
  store i8 %1169, i8* %30, align 1, !tbaa !2446
  %1170 = xor i64 %1159, %1158
  %1171 = lshr i64 %1170, 4
  %1172 = trunc i64 %1171 to i8
  %1173 = and i8 %1172, 1
  store i8 %1173, i8* %35, align 1, !tbaa !2450
  %1174 = zext i1 %1161 to i8
  store i8 %1174, i8* %38, align 1, !tbaa !2447
  %1175 = lshr i64 %1159, 63
  %1176 = trunc i64 %1175 to i8
  store i8 %1176, i8* %41, align 1, !tbaa !2448
  %1177 = lshr i64 %1158, 63
  %1178 = xor i64 %1175, %1177
  %1179 = add nuw nsw i64 %1178, %1175
  %1180 = icmp eq i64 %1179, 2
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %47, align 1, !tbaa !2449
  %1182 = add i64 %1155, 12
  store i64 %1182, i64* %PC, align 8
  store i64 %1159, i64* %1157, align 8
  %1183 = load i64, i64* %PC, align 8
  %1184 = add i64 %1183, -148
  store i64 %1184, i64* %PC, align 8, !tbaa !2428
  br label %block_401cca

block_400e74:                                     ; preds = %block_400e89, %block_400c91
  %1185 = phi i64 [ %3938, %block_400e89 ], [ %.pre212, %block_400c91 ]
  %1186 = load i64, i64* %RBP, align 8
  %1187 = add i64 %1186, -72
  %1188 = add i64 %1185, 4
  store i64 %1188, i64* %PC, align 8
  %1189 = inttoptr i64 %1187 to i64*
  %1190 = load i64, i64* %1189, align 8
  store i64 %1190, i64* %RAX, align 8, !tbaa !2428
  %1191 = add i64 %1186, -80
  %1192 = add i64 %1185, 8
  store i64 %1192, i64* %PC, align 8
  %1193 = inttoptr i64 %1191 to i64*
  %1194 = load i64, i64* %1193, align 8
  %1195 = add i64 %1194, -1
  store i64 %1195, i64* %RCX, align 8, !tbaa !2428
  %1196 = lshr i64 %1195, 63
  %1197 = sub i64 %1190, %1195
  %1198 = icmp ult i64 %1190, %1195
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %23, align 1, !tbaa !2432
  %1200 = trunc i64 %1197 to i32
  %1201 = and i32 %1200, 255
  %1202 = tail call i32 @llvm.ctpop.i32(i32 %1201) #11
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  %1205 = xor i8 %1204, 1
  store i8 %1205, i8* %30, align 1, !tbaa !2446
  %1206 = xor i64 %1195, %1190
  %1207 = xor i64 %1206, %1197
  %1208 = lshr i64 %1207, 4
  %1209 = trunc i64 %1208 to i8
  %1210 = and i8 %1209, 1
  store i8 %1210, i8* %35, align 1, !tbaa !2450
  %1211 = icmp eq i64 %1197, 0
  %1212 = zext i1 %1211 to i8
  store i8 %1212, i8* %38, align 1, !tbaa !2447
  %1213 = lshr i64 %1197, 63
  %1214 = trunc i64 %1213 to i8
  store i8 %1214, i8* %41, align 1, !tbaa !2448
  %1215 = lshr i64 %1190, 63
  %1216 = xor i64 %1196, %1215
  %1217 = xor i64 %1213, %1215
  %1218 = add nuw nsw i64 %1217, %1216
  %1219 = icmp eq i64 %1218, 2
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %47, align 1, !tbaa !2449
  %1221 = icmp ne i8 %1214, 0
  %1222 = xor i1 %1221, %1219
  %.demorgan221 = or i1 %1211, %1222
  %.v228 = select i1 %.demorgan221, i64 21, i64 203
  %1223 = add i64 %.v228, %1185
  store i64 %1223, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan221, label %block_400e89, label %block_400f3f

block_4018de:                                     ; preds = %block_4018f3, %block_401637
  %1224 = phi i64 [ %3821, %block_4018f3 ], [ %.pre215, %block_401637 ]
  %1225 = load i64, i64* %RBP, align 8
  %1226 = add i64 %1225, -72
  %1227 = add i64 %1224, 4
  store i64 %1227, i64* %PC, align 8
  %1228 = inttoptr i64 %1226 to i64*
  %1229 = load i64, i64* %1228, align 8
  store i64 %1229, i64* %RAX, align 8, !tbaa !2428
  %1230 = add i64 %1225, -80
  %1231 = add i64 %1224, 8
  store i64 %1231, i64* %PC, align 8
  %1232 = inttoptr i64 %1230 to i64*
  %1233 = load i64, i64* %1232, align 8
  %1234 = add i64 %1233, -1
  store i64 %1234, i64* %RCX, align 8, !tbaa !2428
  %1235 = lshr i64 %1234, 63
  %1236 = sub i64 %1229, %1234
  %1237 = icmp ult i64 %1229, %1234
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %23, align 1, !tbaa !2432
  %1239 = trunc i64 %1236 to i32
  %1240 = and i32 %1239, 255
  %1241 = tail call i32 @llvm.ctpop.i32(i32 %1240) #11
  %1242 = trunc i32 %1241 to i8
  %1243 = and i8 %1242, 1
  %1244 = xor i8 %1243, 1
  store i8 %1244, i8* %30, align 1, !tbaa !2446
  %1245 = xor i64 %1234, %1229
  %1246 = xor i64 %1245, %1236
  %1247 = lshr i64 %1246, 4
  %1248 = trunc i64 %1247 to i8
  %1249 = and i8 %1248, 1
  store i8 %1249, i8* %35, align 1, !tbaa !2450
  %1250 = icmp eq i64 %1236, 0
  %1251 = zext i1 %1250 to i8
  store i8 %1251, i8* %38, align 1, !tbaa !2447
  %1252 = lshr i64 %1236, 63
  %1253 = trunc i64 %1252 to i8
  store i8 %1253, i8* %41, align 1, !tbaa !2448
  %1254 = lshr i64 %1229, 63
  %1255 = xor i64 %1235, %1254
  %1256 = xor i64 %1252, %1254
  %1257 = add nuw nsw i64 %1256, %1255
  %1258 = icmp eq i64 %1257, 2
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %47, align 1, !tbaa !2449
  %1260 = icmp ne i8 %1253, 0
  %1261 = xor i1 %1260, %1258
  %.demorgan224 = or i1 %1250, %1261
  %.v231 = select i1 %.demorgan224, i64 21, i64 312
  %1262 = add i64 %.v231, %1224
  store i64 %1262, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan224, label %block_4018f3, label %block_401a16

block_4008d4:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_4008d4_crit_edge, %block_4008c8
  %1263 = phi double [ %.pre208, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_4008d4_crit_edge ], [ 0.000000e+00, %block_4008c8 ]
  %1264 = phi i64 [ %3255, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_4008d4_crit_edge ], [ %2521, %block_4008c8 ]
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 390), i64* %RDI, align 8, !tbaa !2428
  %1265 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to i64*), align 8
  store i64 %1265, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %1266 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 80) to i64*), align 16
  store i64 %1266, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1267 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 88) to i64*), align 8
  store i64 %1267, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1268 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %1269 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %1270 = fmul double %1268, %1269
  %1271 = fsub double %1270, %1263
  store double %1271, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %1272 = load i64, i64* bitcast (%D1_0_type* @D1_0 to i64*), align 8
  %.cast19 = bitcast i64 %1272 to double
  %1273 = load double, double* bitcast (%D2_0_type* @D2_0 to double*), align 8
  %1274 = fadd double %.cast19, %1273
  %1275 = load double, double* bitcast (%D3_type* @D3 to double*), align 8
  %1276 = fadd double %1274, %1275
  %1277 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1278 = fadd double %.cast19, %1277
  %1279 = load double, double* bitcast (%E2_0_type* @E2_0 to double*), align 8
  %1280 = fadd double %1278, %1279
  %1281 = load double, double* bitcast (%E3_type* @E3 to double*), align 8
  %1282 = fadd double %1280, %1281
  store double %1282, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %1283 = fdiv double %1276, %1282
  store double %1283, double* bitcast (%sa_type* @sa to double*), align 8
  store i64 %1272, i64* bitcast (%sb_type* @sb to i64*), align 8
  %1284 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %1285 = bitcast i64 %1267 to double
  %1286 = fdiv double %1284, %1285
  store double %1286, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  store double %1286, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 24) to double*), align 8
  %1287 = load i64, i64* %RBP, align 8
  %1288 = add i64 %1287, -48
  %1289 = add i64 %1264, 191
  store i64 %1289, i64* %PC, align 8
  %1290 = inttoptr i64 %1288 to i64*
  %1291 = load i64, i64* %1290, align 8
  store i64 %1291, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1292 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %1293 = load double, double* bitcast (%sb_type* @sb to double*), align 8
  %1294 = fadd double %1292, %1293
  store double %1294, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %1295 = load i64, i64* bitcast (%two_type* @two to i64*), align 8
  store i64 %1295, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %1296 = add i64 %1287, -16
  %1297 = add i64 %1264, 223
  store i64 %1297, i64* %PC, align 8
  %.cast154 = bitcast i64 %1295 to double
  %1298 = inttoptr i64 %1296 to double*
  %1299 = load double, double* %1298, align 8
  %1300 = fmul double %.cast154, %1299
  store double %1300, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %1301 = fadd double %1294, %1300
  store double %1301, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %1302 = bitcast i64 %1291 to double
  %1303 = fmul double %1302, %1301
  %1304 = fdiv double %1303, %.cast154
  store double %1304, double* bitcast (%sa_type* @sa to double*), align 8
  %1305 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1306 = fdiv double %1305, %1304
  store double %1306, double* bitcast (%sb_type* @sb to double*), align 8
  %1307 = tail call double @llvm.trunc.f64(double %1306) #11
  %1308 = tail call double @llvm.fabs.f64(double %1307) #11
  %1309 = fcmp ogt double %1308, 0x43E0000000000000
  %1310 = fptosi double %1307 to i64
  %1311 = select i1 %1309, i64 -9223372036854775808, i64 %1310
  %1312 = sext i64 %1311 to i128
  %1313 = and i128 %1312, -18446744073709551616
  %1314 = zext i64 %1311 to i128
  %1315 = or i128 %1313, %1314
  %1316 = mul nsw i128 %1315, 40000
  %1317 = trunc i128 %1316 to i64
  %1318 = sext i64 %1317 to i128
  %1319 = icmp ne i128 %1318, %1316
  %1320 = zext i1 %1319 to i8
  store i8 %1320, i8* %23, align 1, !tbaa !2432
  %1321 = trunc i128 %1316 to i32
  %1322 = and i32 %1321, 192
  %1323 = tail call i32 @llvm.ctpop.i32(i32 %1322) #11
  %1324 = trunc i32 %1323 to i8
  %1325 = and i8 %1324, 1
  %1326 = xor i8 %1325, 1
  store i8 %1326, i8* %30, align 1, !tbaa !2446
  store i8 0, i8* %35, align 1, !tbaa !2450
  store i8 0, i8* %38, align 1, !tbaa !2447
  %1327 = lshr i64 %1317, 63
  %1328 = trunc i64 %1327 to i8
  store i8 %1328, i8* %41, align 1, !tbaa !2448
  store i8 %1320, i8* %47, align 1, !tbaa !2449
  %1329 = sitofp i64 %1317 to double
  %1330 = load double, double* bitcast (%scale_type* @scale to double*), align 8
  %1331 = fdiv double %1329, %1330
  %1332 = tail call double @llvm.trunc.f64(double %1331) #11
  %1333 = tail call double @llvm.fabs.f64(double %1332) #11
  %1334 = fcmp ogt double %1333, 0x43E0000000000000
  %1335 = fptosi double %1332 to i64
  %1336 = select i1 %1334, i64 -9223372036854775808, i64 %1335
  store i64 %1336, i64* %RAX, align 8, !tbaa !2428
  %1337 = add i64 %1287, -88
  %1338 = add i64 %1264, 316
  store i64 %1338, i64* %PC, align 8
  %1339 = inttoptr i64 %1337 to i64*
  store i64 %1336, i64* %1339, align 8
  %1340 = load i64, i64* %PC, align 8
  %1341 = load double, double* bitcast (%sb_type* @sb to double*), align 8
  %1342 = load double, double* %80, align 1
  %1343 = fsub double %1341, %1342
  store double %1343, double* bitcast (%sc_type* @sc to double*), align 8
  %1344 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1345 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 24) to double*), align 8
  %1346 = fdiv double %1344, %1345
  store double %1346, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 32) to double*), align 16
  %1347 = bitcast [32 x %union.VectorReg]* %5 to <2 x i32>*
  %1348 = load <2 x i32>, <2 x i32>* %1347, align 1
  %1349 = bitcast i64* %76 to <2 x i32>*
  %1350 = load <2 x i32>, <2 x i32>* %1349, align 1
  %1351 = extractelement <2 x i32> %1348, i32 0
  %1352 = bitcast %union.VectorReg* %6 to i32*
  store i32 %1351, i32* %1352, align 1, !tbaa !2455
  %1353 = extractelement <2 x i32> %1348, i32 1
  %1354 = getelementptr inbounds i8, i8* %78, i64 4
  %1355 = bitcast i8* %1354 to i32*
  store i32 %1353, i32* %1355, align 1, !tbaa !2455
  %1356 = extractelement <2 x i32> %1350, i32 0
  %1357 = bitcast i64* %82 to i32*
  store i32 %1356, i32* %1357, align 1, !tbaa !2455
  %1358 = extractelement <2 x i32> %1350, i32 1
  %1359 = getelementptr inbounds i8, i8* %78, i64 12
  %1360 = bitcast i8* %1359 to i32*
  store i32 %1358, i32* %1360, align 1, !tbaa !2455
  %1361 = load double, double* %80, align 1
  %1362 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %1363 = fmul double %1361, %1362
  store double %1363, double* %80, align 1, !tbaa !2452
  %1364 = bitcast %union.VectorReg* %7 to i32*
  store i32 %1351, i32* %1364, align 1, !tbaa !2455
  %1365 = getelementptr inbounds i8, i8* %84, i64 4
  %1366 = bitcast i8* %1365 to i32*
  store i32 %1353, i32* %1366, align 1, !tbaa !2455
  %1367 = bitcast i64* %88 to i32*
  store i32 %1356, i32* %1367, align 1, !tbaa !2455
  %1368 = getelementptr inbounds i8, i8* %84, i64 12
  %1369 = bitcast i8* %1368 to i32*
  store i32 %1358, i32* %1369, align 1, !tbaa !2455
  %1370 = load double, double* %86, align 1
  %1371 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 16) to double*), align 16
  %1372 = fmul double %1370, %1371
  store double %1372, double* %86, align 1, !tbaa !2452
  %1373 = bitcast <2 x i32> %1348 to double
  %1374 = fmul double %1346, %1373
  %1375 = load i64, i64* %RBP, align 8
  %1376 = add i64 %1375, -136
  %1377 = add i64 %1340, 90
  store i64 %1377, i64* %PC, align 8
  %1378 = inttoptr i64 %1376 to double*
  store double %1374, double* %1378, align 8
  %1379 = load i64, i64* %PC, align 8
  %1380 = bitcast %union.VectorReg* %6 to <2 x i32>*
  %1381 = load <2 x i32>, <2 x i32>* %1380, align 1
  %1382 = bitcast i64* %82 to <2 x i32>*
  %1383 = load <2 x i32>, <2 x i32>* %1382, align 1
  %1384 = extractelement <2 x i32> %1381, i32 0
  store i32 %1384, i32* %187, align 1, !tbaa !2455
  %1385 = extractelement <2 x i32> %1381, i32 1
  store i32 %1385, i32* %189, align 1, !tbaa !2455
  %1386 = extractelement <2 x i32> %1383, i32 0
  store i32 %1386, i32* %190, align 1, !tbaa !2455
  %1387 = extractelement <2 x i32> %1383, i32 1
  store i32 %1387, i32* %192, align 1, !tbaa !2455
  %1388 = bitcast %union.VectorReg* %7 to <2 x i32>*
  %1389 = load <2 x i32>, <2 x i32>* %1388, align 1
  %1390 = bitcast i64* %88 to <2 x i32>*
  %1391 = load <2 x i32>, <2 x i32>* %1390, align 1
  %1392 = extractelement <2 x i32> %1389, i32 0
  store i32 %1392, i32* %1352, align 1, !tbaa !2455
  %1393 = extractelement <2 x i32> %1389, i32 1
  store i32 %1393, i32* %1355, align 1, !tbaa !2455
  %1394 = extractelement <2 x i32> %1391, i32 0
  store i32 %1394, i32* %1357, align 1, !tbaa !2455
  %1395 = extractelement <2 x i32> %1391, i32 1
  store i32 %1395, i32* %1360, align 1, !tbaa !2455
  %1396 = load i64, i64* %RBP, align 8
  %1397 = add i64 %1396, -136
  %1398 = add i64 %1379, 14
  store i64 %1398, i64* %PC, align 8
  %1399 = inttoptr i64 %1397 to i64*
  %1400 = load i64, i64* %1399, align 8
  store i64 %1400, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  store i8 3, i8* %AL, align 1, !tbaa !2451
  %1401 = add i64 %1379, -1562
  %1402 = add i64 %1379, 21
  %1403 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1404 = add i64 %1403, -8
  %1405 = inttoptr i64 %1404 to i64*
  store i64 %1402, i64* %1405, align 8
  store i64 %1404, i64* %RSP, align 8, !tbaa !2428
  store i64 %1401, i64* %PC, align 8, !tbaa !2428
  %1406 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %3248)
  %1407 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i64 -9223372036854775808, i64* %RCX, align 8, !tbaa !2428
  %1408 = load i64, i64* %RBP, align 8
  %1409 = add i64 %1408, -88
  %1410 = add i64 %1407, 24
  store i64 %1410, i64* %PC, align 8
  %1411 = inttoptr i64 %1409 to i64*
  %1412 = load i64, i64* %1411, align 8
  %1413 = add i64 %1408, -80
  %1414 = add i64 %1407, 28
  store i64 %1414, i64* %PC, align 8
  %1415 = inttoptr i64 %1413 to i64*
  store i64 %1412, i64* %1415, align 8
  %1416 = load i64, i64* %PC, align 8
  %1417 = load i64, i64* bitcast (%five_type* @five to i64*), align 8
  %1418 = load i64, i64* %RCX, align 8
  %1419 = xor i64 %1418, %1417
  %1420 = load i64, i64* %RBP, align 8
  %1421 = add i64 %1420, -16
  %1422 = add i64 %1416, 27
  store i64 %1422, i64* %PC, align 8
  %1423 = inttoptr i64 %1421 to i64*
  store i64 %1419, i64* %1423, align 8
  %1424 = load i64, i64* %PC, align 8
  %1425 = load i64, i64* bitcast (%one_type* @one to i64*), align 8
  %1426 = load i64, i64* %RCX, align 8
  %1427 = xor i64 %1426, %1425
  store i64 %1427, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %23, align 1, !tbaa !2432
  %1428 = trunc i64 %1427 to i32
  %1429 = and i32 %1428, 255
  %1430 = tail call i32 @llvm.ctpop.i32(i32 %1429) #11
  %1431 = trunc i32 %1430 to i8
  %1432 = and i8 %1431, 1
  %1433 = xor i8 %1432, 1
  store i8 %1433, i8* %30, align 1, !tbaa !2446
  %1434 = icmp eq i64 %1427, 0
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %38, align 1, !tbaa !2447
  %1436 = lshr i64 %1427, 63
  %1437 = trunc i64 %1436 to i8
  store i8 %1437, i8* %41, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %35, align 1, !tbaa !2450
  store i64 %1427, i64* %75, align 1, !tbaa !2428
  store i64 0, i64* %76, align 1, !tbaa !2428
  store i64 %1427, i64* bitcast (%sa_type* @sa to i64*), align 8
  %1438 = load i64, i64* %RBP, align 8
  %1439 = add i64 %1438, -140
  %1440 = load i32, i32* %EAX, align 4
  %1441 = add i64 %1424, 37
  store i64 %1441, i64* %PC, align 8
  %1442 = inttoptr i64 %1439 to i32*
  store i32 %1440, i32* %1442, align 4
  %1443 = load i64, i64* %PC, align 8
  %1444 = add i64 %1443, 6917
  %1445 = add i64 %1443, 5
  %1446 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1447 = add i64 %1446, -8
  %1448 = inttoptr i64 %1447 to i64*
  store i64 %1445, i64* %1448, align 8
  store i64 %1447, i64* %RSP, align 8, !tbaa !2428
  store i64 %1444, i64* %PC, align 8, !tbaa !2428
  %1449 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %1444, %struct.Memory* %1406)
  %1450 = load i64, i64* %RBP, align 8
  %1451 = add i64 %1450, -72
  %1452 = load i64, i64* %PC, align 8
  %1453 = add i64 %1452, 8
  store i64 %1453, i64* %PC, align 8
  %1454 = inttoptr i64 %1451 to i64*
  store i64 1, i64* %1454, align 8
  %1455 = load i64, i64* %RBP, align 8
  %1456 = add i64 %1455, -144
  %1457 = load i32, i32* %EAX, align 4
  %1458 = load i64, i64* %PC, align 8
  %1459 = add i64 %1458, 6
  store i64 %1459, i64* %PC, align 8
  %1460 = inttoptr i64 %1456 to i32*
  store i32 %1457, i32* %1460, align 4
  %.pre209 = load i64, i64* %PC, align 8
  br label %block_400aee

block_401637:                                     ; preds = %block_4014ff
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %1461 = add i64 %901, 4009
  %1462 = add i64 %901, 15
  %1463 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1464 = add i64 %1463, -8
  %1465 = inttoptr i64 %1464 to i64*
  store i64 %1462, i64* %1465, align 8
  store i64 %1464, i64* %RSP, align 8, !tbaa !2428
  store i64 %1461, i64* %PC, align 8, !tbaa !2428
  %1466 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %1461, %struct.Memory* %2001)
  %1467 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 534), i64* %RDI, align 8, !tbaa !2428
  %1468 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to i64*), align 8
  store i64 %1468, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %1469 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 136) to i64*), align 8
  store i64 %1469, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1470 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 144) to i64*), align 16
  store i64 %1470, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1471 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %1472 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %1473 = fmul double %1471, %1472
  %1474 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %1475 = fsub double %1473, %1474
  store double %1475, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %1476 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %1477 = load double, double* bitcast (%three_type* @three to double*), align 8
  %1478 = fdiv double %1476, %1477
  store double %1478, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %1479 = load i64, i64* %RBP, align 8
  %1480 = add i64 %1479, -24
  %1481 = add i64 %1467, 93
  store i64 %1481, i64* %PC, align 8
  %1482 = inttoptr i64 %1480 to double*
  store double %1478, double* %1482, align 8
  %1483 = load i64, i64* %RBP, align 8
  %1484 = add i64 %1483, -24
  %1485 = load i64, i64* %PC, align 8
  %1486 = add i64 %1485, 5
  store i64 %1486, i64* %PC, align 8
  %1487 = inttoptr i64 %1484 to i64*
  %1488 = load i64, i64* %1487, align 8
  store i64 %1488, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %1489 = add i64 %1485, 10
  store i64 %1489, i64* %PC, align 8
  %1490 = bitcast i64 %1488 to double
  %1491 = inttoptr i64 %1484 to double*
  %1492 = load double, double* %1491, align 8
  %1493 = fmul double %1490, %1492
  store double %1493, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %1494 = add i64 %1483, -40
  %1495 = add i64 %1485, 15
  store i64 %1495, i64* %PC, align 8
  %1496 = inttoptr i64 %1494 to double*
  store double %1493, double* %1496, align 8
  %1497 = load i64, i64* %RBP, align 8
  %1498 = add i64 %1497, -24
  %1499 = load i64, i64* %PC, align 8
  %1500 = add i64 %1499, 5
  store i64 %1500, i64* %PC, align 8
  %1501 = inttoptr i64 %1498 to i64*
  %1502 = load i64, i64* %1501, align 8
  store i64 %1502, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %1503 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %1503, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %1504 = add i64 %1497, -40
  %1505 = add i64 %1499, 19
  store i64 %1505, i64* %PC, align 8
  %.cast168 = bitcast i64 %1503 to double
  %1506 = inttoptr i64 %1504 to double*
  %1507 = load double, double* %1506, align 8
  %1508 = fmul double %.cast168, %1507
  %1509 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %1510 = fadd double %1508, %1509
  store double %1510, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %1511 = add i64 %1499, 33
  store i64 %1511, i64* %PC, align 8
  %1512 = load double, double* %1506, align 8
  %1513 = fmul double %1510, %1512
  %1514 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %1515 = fadd double %1513, %1514
  store double %1515, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %1516 = add i64 %1499, 47
  store i64 %1516, i64* %PC, align 8
  %1517 = load double, double* %1506, align 8
  %1518 = fmul double %1515, %1517
  %1519 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %1520 = fadd double %1518, %1519
  store double %1520, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %1521 = add i64 %1499, 61
  store i64 %1521, i64* %PC, align 8
  %1522 = load double, double* %1506, align 8
  %1523 = fmul double %1520, %1522
  %1524 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %1525 = fadd double %1523, %1524
  store double %1525, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %1526 = add i64 %1499, 75
  store i64 %1526, i64* %PC, align 8
  %1527 = load double, double* %1506, align 8
  %1528 = fmul double %1525, %1527
  %1529 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %1530 = fadd double %1528, %1529
  store double %1530, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %1531 = add i64 %1499, 89
  store i64 %1531, i64* %PC, align 8
  %1532 = load double, double* %1506, align 8
  %1533 = fmul double %1530, %1532
  %1534 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1535 = fadd double %1533, %1534
  store double %1535, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %1536 = bitcast i64 %1502 to double
  %1537 = fmul double %1536, %1535
  store double %1537, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  store double %1537, double* bitcast (%sa_type* @sa to double*), align 8
  %1538 = add i64 %1499, 116
  store i64 %1538, i64* %PC, align 8
  %1539 = inttoptr i64 %1504 to i64*
  %1540 = load i64, i64* %1539, align 8
  store i64 %1540, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %1541 = add i64 %1499, 121
  store i64 %1541, i64* %PC, align 8
  %1542 = load i64, i64* %1539, align 8
  store i64 %1542, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %1543 = add i64 %1499, 126
  store i64 %1543, i64* %PC, align 8
  %1544 = load i64, i64* %1539, align 8
  store i64 %1544, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %1545 = add i64 %1499, 131
  store i64 %1545, i64* %PC, align 8
  %1546 = load i64, i64* %1539, align 8
  store i64 %1546, i64* %107, align 1, !tbaa !2452
  store double 0.000000e+00, double* %109, align 1, !tbaa !2452
  %1547 = add i64 %1499, 136
  store i64 %1547, i64* %PC, align 8
  %1548 = load i64, i64* %1539, align 8
  store i64 %1548, i64* %209, align 1, !tbaa !2452
  store double 0.000000e+00, double* %211, align 1, !tbaa !2452
  %1549 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  %1550 = bitcast %union.VectorReg* %13 to double*
  %1551 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %13, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1549, i64* %1551, align 1, !tbaa !2452
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1
  %1553 = bitcast i64* %1552 to double*
  store double 0.000000e+00, double* %1553, align 1, !tbaa !2452
  %1554 = add i64 %1499, 152
  store i64 %1554, i64* %PC, align 8
  %1555 = bitcast i64 %1549 to double
  %1556 = load double, double* %1506, align 8
  %1557 = fmul double %1555, %1556
  %1558 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %1559 = fadd double %1557, %1558
  store double %1559, double* %1550, align 1, !tbaa !2452
  store i64 0, i64* %1552, align 1, !tbaa !2452
  %1560 = bitcast i64 %1548 to double
  %1561 = fmul double %1560, %1559
  %1562 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %1563 = fadd double %1561, %1562
  store double %1563, double* %121, align 1, !tbaa !2452
  store i64 0, i64* %210, align 1, !tbaa !2452
  %1564 = bitcast i64 %1546 to double
  %1565 = fmul double %1564, %1563
  %1566 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %1567 = fadd double %1565, %1566
  store double %1567, double* %106, align 1, !tbaa !2452
  store i64 0, i64* %108, align 1, !tbaa !2452
  %1568 = bitcast i64 %1544 to double
  %1569 = fmul double %1568, %1567
  %1570 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %1571 = fadd double %1569, %1570
  store double %1571, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %1572 = bitcast i64 %1542 to double
  %1573 = fmul double %1572, %1571
  %1574 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %1575 = fadd double %1573, %1574
  store double %1575, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %1576 = bitcast i64 %1540 to double
  %1577 = fmul double %1576, %1575
  %1578 = fadd double %1534, %1577
  store double %1578, double* bitcast (%sb_type* @sb to double*), align 8
  %1579 = fdiv double %1537, %1578
  store double %1579, double* bitcast (%sa_type* @sa to double*), align 8
  %1580 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %1581 = load double, double* %86, align 1
  %1582 = fdiv double %1580, %1581
  store double %1582, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  store double %1582, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 128) to double*), align 16
  %1583 = load i64, i64* %RBP, align 8
  %1584 = add i64 %1583, -48
  %1585 = add i64 %1499, 291
  store i64 %1585, i64* %PC, align 8
  %1586 = inttoptr i64 %1584 to i64*
  %1587 = load i64, i64* %1586, align 8
  store i64 %1587, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1588 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %1588, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %1589 = load i64, i64* bitcast (%two_type* @two to i64*), align 8
  store i64 %1589, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %1590 = add i64 %1583, -16
  %1591 = add i64 %1499, 314
  store i64 %1591, i64* %PC, align 8
  %.cast169 = bitcast i64 %1589 to double
  %1592 = inttoptr i64 %1590 to double*
  %1593 = load double, double* %1592, align 8
  %1594 = fmul double %.cast169, %1593
  store double %1594, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %1595 = bitcast i64 %1588 to double
  %1596 = fadd double %1595, %1594
  store double %1596, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %1597 = bitcast i64 %1587 to double
  %1598 = fmul double %1597, %1596
  %1599 = fdiv double %1598, %.cast169
  store double %1599, double* bitcast (%sa_type* @sa to double*), align 8
  %1600 = load i64, i64* %81, align 1
  store i64 %1600, i64* bitcast (%sb_type* @sb to i64*), align 8
  %1601 = bitcast i64 %1600 to double
  %1602 = fsub double %1599, %1601
  store double %1602, double* bitcast (%sc_type* @sc to double*), align 8
  %1603 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1604 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 128) to double*), align 16
  %1605 = fdiv double %1603, %1604
  store double %1605, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 136) to double*), align 8
  %1606 = load <2 x i32>, <2 x i32>* %1347, align 1
  %1607 = load <2 x i32>, <2 x i32>* %1349, align 1
  %1608 = extractelement <2 x i32> %1606, i32 0
  store i32 %1608, i32* %1352, align 1, !tbaa !2455
  %1609 = extractelement <2 x i32> %1606, i32 1
  store i32 %1609, i32* %1355, align 1, !tbaa !2455
  %1610 = extractelement <2 x i32> %1607, i32 0
  store i32 %1610, i32* %1357, align 1, !tbaa !2455
  %1611 = extractelement <2 x i32> %1607, i32 1
  store i32 %1611, i32* %1360, align 1, !tbaa !2455
  %1612 = load double, double* %80, align 1
  %1613 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %1614 = fmul double %1612, %1613
  store double %1614, double* %80, align 1, !tbaa !2452
  store i32 %1608, i32* %1364, align 1, !tbaa !2455
  store i32 %1609, i32* %1366, align 1, !tbaa !2455
  store i32 %1610, i32* %1367, align 1, !tbaa !2455
  store i32 %1611, i32* %1369, align 1, !tbaa !2455
  %1615 = load double, double* %86, align 1
  %1616 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 120) to double*), align 8
  %1617 = fmul double %1615, %1616
  store double %1617, double* %86, align 1, !tbaa !2452
  %1618 = bitcast <2 x i32> %1606 to double
  %1619 = fmul double %1605, %1618
  %1620 = add i64 %1583, -232
  %1621 = add i64 %1499, 444
  store i64 %1621, i64* %PC, align 8
  %1622 = inttoptr i64 %1620 to double*
  store double %1619, double* %1622, align 8
  %1623 = load i64, i64* %PC, align 8
  %1624 = load <2 x i32>, <2 x i32>* %1380, align 1
  %1625 = load <2 x i32>, <2 x i32>* %1382, align 1
  %1626 = extractelement <2 x i32> %1624, i32 0
  store i32 %1626, i32* %187, align 1, !tbaa !2455
  %1627 = extractelement <2 x i32> %1624, i32 1
  store i32 %1627, i32* %189, align 1, !tbaa !2455
  %1628 = extractelement <2 x i32> %1625, i32 0
  store i32 %1628, i32* %190, align 1, !tbaa !2455
  %1629 = extractelement <2 x i32> %1625, i32 1
  store i32 %1629, i32* %192, align 1, !tbaa !2455
  %1630 = load <2 x i32>, <2 x i32>* %1388, align 1
  %1631 = load <2 x i32>, <2 x i32>* %1390, align 1
  %1632 = extractelement <2 x i32> %1630, i32 0
  store i32 %1632, i32* %1352, align 1, !tbaa !2455
  %1633 = extractelement <2 x i32> %1630, i32 1
  store i32 %1633, i32* %1355, align 1, !tbaa !2455
  %1634 = extractelement <2 x i32> %1631, i32 0
  store i32 %1634, i32* %1357, align 1, !tbaa !2455
  %1635 = extractelement <2 x i32> %1631, i32 1
  store i32 %1635, i32* %1360, align 1, !tbaa !2455
  %1636 = load i64, i64* %RBP, align 8
  %1637 = add i64 %1636, -232
  %1638 = add i64 %1623, 14
  store i64 %1638, i64* %PC, align 8
  %1639 = inttoptr i64 %1637 to i64*
  %1640 = load i64, i64* %1639, align 8
  store i64 %1640, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1641 = add i64 %1636, -236
  %1642 = load i32, i32* %EAX, align 4
  %1643 = add i64 %1623, 20
  store i64 %1643, i64* %PC, align 8
  %1644 = inttoptr i64 %1641 to i32*
  store i32 %1642, i32* %1644, align 4
  %1645 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2451
  %1646 = add i64 %1645, -5170
  %1647 = add i64 %1645, 7
  %1648 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1649 = add i64 %1648, -8
  %1650 = inttoptr i64 %1649 to i64*
  store i64 %1647, i64* %1650, align 8
  store i64 %1649, i64* %RSP, align 8, !tbaa !2428
  store i64 %1646, i64* %PC, align 8, !tbaa !2428
  %1651 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1466)
  %1652 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store <4 x i32> zeroinitializer, <4 x i32>* %193, align 1, !tbaa !2454
  %1653 = load i64, i64* bitcast (%piref_type* @piref to i64*), align 8
  store i64 %1653, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1654 = load i64, i64* bitcast (%four_type* @four to i64*), align 8
  store i64 %1654, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1655 = load i64, i64* %RBP, align 8
  %1656 = add i64 %1655, -80
  %1657 = add i64 %1652, 37
  store i64 %1657, i64* %PC, align 8
  %1658 = inttoptr i64 %1656 to i64*
  %1659 = load i64, i64* %1658, align 8
  %1660 = sitofp i64 %1659 to double
  store double %1660, double* %91, align 1, !tbaa !2452
  %1661 = bitcast i64 %1654 to double
  %1662 = fmul double %1661, %1660
  store double %1662, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1663 = bitcast i64 %1653 to double
  %1664 = fdiv double %1663, %1662
  store double %1664, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %1665 = add i64 %1655, -48
  %1666 = add i64 %1652, 50
  store i64 %1666, i64* %PC, align 8
  %1667 = inttoptr i64 %1665 to double*
  store double %1664, double* %1667, align 8
  %1668 = load i64, i64* %RBP, align 8
  %1669 = add i64 %1668, -16
  %1670 = load i64, i64* %PC, align 8
  %1671 = add i64 %1670, 5
  store i64 %1671, i64* %PC, align 8
  %1672 = load i64, i64* %75, align 1
  %1673 = inttoptr i64 %1669 to i64*
  store i64 %1672, i64* %1673, align 8
  %1674 = load i64, i64* %RBP, align 8
  %1675 = add i64 %1674, -32
  %1676 = load i64, i64* %PC, align 8
  %1677 = add i64 %1676, 5
  store i64 %1677, i64* %PC, align 8
  %1678 = load i64, i64* %75, align 1
  %1679 = inttoptr i64 %1675 to i64*
  store i64 %1678, i64* %1679, align 8
  %1680 = load i64, i64* %RBP, align 8
  %1681 = add i64 %1680, -240
  %1682 = load i32, i32* %EAX, align 4
  %1683 = load i64, i64* %PC, align 8
  %1684 = add i64 %1683, 6
  store i64 %1684, i64* %PC, align 8
  %1685 = inttoptr i64 %1681 to i32*
  store i32 %1682, i32* %1685, align 4
  %1686 = load i64, i64* %PC, align 8
  %1687 = add i64 %1686, 3349
  %1688 = add i64 %1686, 5
  %1689 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1690 = add i64 %1689, -8
  %1691 = inttoptr i64 %1690 to i64*
  store i64 %1688, i64* %1691, align 8
  store i64 %1690, i64* %RSP, align 8, !tbaa !2428
  store i64 %1687, i64* %PC, align 8, !tbaa !2428
  %1692 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %1687, %struct.Memory* %1651)
  %1693 = load i64, i64* %RBP, align 8
  %1694 = add i64 %1693, -72
  %1695 = load i64, i64* %PC, align 8
  %1696 = add i64 %1695, 8
  store i64 %1696, i64* %PC, align 8
  %1697 = inttoptr i64 %1694 to i64*
  store i64 1, i64* %1697, align 8
  %1698 = load i64, i64* %RBP, align 8
  %1699 = add i64 %1698, -244
  %1700 = load i32, i32* %EAX, align 4
  %1701 = load i64, i64* %PC, align 8
  %1702 = add i64 %1701, 6
  store i64 %1702, i64* %PC, align 8
  %1703 = inttoptr i64 %1699 to i32*
  store i32 %1700, i32* %1703, align 4
  %.pre215 = load i64, i64* %PC, align 8
  br label %block_4018de

block_400b45:                                     ; preds = %block_400aee
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %1704 = add i64 %3505, 6811
  %1705 = add i64 %3505, 15
  %1706 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1707 = add i64 %1706, -8
  %1708 = inttoptr i64 %1707 to i64*
  store i64 %1705, i64* %1708, align 8
  store i64 %1707, i64* %RSP, align 8, !tbaa !2428
  store i64 %1704, i64* %PC, align 8, !tbaa !2428
  %1709 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %1704, %struct.Memory* %1449)
  %1710 = load i64, i64* %PC, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %193, align 1, !tbaa !2454
  %1711 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %1712 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %1713 = fmul double %1711, %1712
  store double %1713, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  store double %1713, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to double*), align 8
  %1714 = add i64 %1710, 39
  store i64 %1714, i64* %PC, align 8
  %1715 = fcmp uno double %1713, 0.000000e+00
  br i1 %1715, label %1716, label %1726

; <label>:1716:                                   ; preds = %block_400b45
  %1717 = fadd double %1713, 0.000000e+00
  %1718 = bitcast double %1717 to i64
  %1719 = and i64 %1718, 9221120237041090560
  %1720 = icmp eq i64 %1719, 9218868437227405312
  %1721 = and i64 %1718, 2251799813685247
  %1722 = icmp ne i64 %1721, 0
  %1723 = and i1 %1720, %1722
  br i1 %1723, label %1724, label %1732

; <label>:1724:                                   ; preds = %1716
  %1725 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1714, %struct.Memory* %1709) #14
  %.pre210 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

; <label>:1726:                                   ; preds = %block_400b45
  %1727 = fcmp olt double %1713, 0.000000e+00
  br i1 %1727, label %1732, label %1728

; <label>:1728:                                   ; preds = %1726
  %1729 = fcmp ogt double %1713, 0.000000e+00
  br i1 %1729, label %1732, label %1730

; <label>:1730:                                   ; preds = %1728
  %1731 = fcmp oeq double %1713, 0.000000e+00
  br i1 %1731, label %1732, label %1736

; <label>:1732:                                   ; preds = %1730, %1728, %1726, %1716
  %1733 = phi i8 [ 0, %1726 ], [ 0, %1728 ], [ 1, %1730 ], [ 1, %1716 ]
  %1734 = phi i8 [ 0, %1726 ], [ 0, %1728 ], [ 0, %1730 ], [ 1, %1716 ]
  %1735 = phi i8 [ 0, %1726 ], [ 1, %1728 ], [ 0, %1730 ], [ 1, %1716 ]
  store i8 %1733, i8* %38, align 1, !tbaa !2451
  store i8 %1734, i8* %30, align 1, !tbaa !2451
  store i8 %1735, i8* %23, align 1, !tbaa !2451
  br label %1736

; <label>:1736:                                   ; preds = %1732, %1730
  store i8 0, i8* %47, align 1, !tbaa !2451
  store i8 0, i8* %41, align 1, !tbaa !2451
  store i8 0, i8* %35, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1: ; preds = %1736, %1724
  %1737 = phi i64 [ %.pre210, %1724 ], [ %1714, %1736 ]
  %1738 = phi %struct.Memory* [ %1725, %1724 ], [ %1709, %1736 ]
  %1739 = load i64, i64* %RBP, align 8
  %1740 = add i64 %1739, -148
  %1741 = load i32, i32* %EAX, align 4
  %1742 = add i64 %1737, 6
  store i64 %1742, i64* %PC, align 8
  %1743 = inttoptr i64 %1740 to i32*
  store i32 %1741, i32* %1743, align 4
  %1744 = load i64, i64* %PC, align 8
  %1745 = add i64 %1744, 18
  %1746 = add i64 %1744, 6
  %1747 = load i8, i8* %23, align 1, !tbaa !2432
  %1748 = load i8, i8* %38, align 1, !tbaa !2447
  %1749 = or i8 %1748, %1747
  %1750 = icmp ne i8 %1749, 0
  %1751 = select i1 %1750, i64 %1745, i64 %1746
  store i64 %1751, i64* %PC, align 8, !tbaa !2428
  br i1 %1750, label %block_400b93, label %block_400b87

block_401259:                                     ; preds = %block_401195
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %1752 = add i64 %3010, 4999
  %1753 = add i64 %3010, 15
  %1754 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1755 = add i64 %1754, -8
  %1756 = inttoptr i64 %1755 to i64*
  store i64 %1753, i64* %1756, align 8
  store i64 %1755, i64* %RSP, align 8, !tbaa !2428
  store i64 %1752, i64* %PC, align 8, !tbaa !2428
  %1757 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %1752, %struct.Memory* %2288)
  %1758 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 498), i64* %RDI, align 8, !tbaa !2428
  %1759 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to i64*), align 8
  store i64 %1759, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %1760 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 128) to i64*), align 16
  store i64 %1760, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1761 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %1762 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %1763 = fmul double %1761, %1762
  %1764 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %1765 = fsub double %1763, %1764
  store double %1765, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %1766 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %1767 = load double, double* bitcast (%three_type* @three to double*), align 8
  %1768 = fdiv double %1766, %1767
  store double %1768, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1769 = load i64, i64* %RBP, align 8
  %1770 = add i64 %1769, -24
  %1771 = add i64 %1758, 85
  store i64 %1771, i64* %PC, align 8
  %1772 = inttoptr i64 %1770 to double*
  store double %1768, double* %1772, align 8
  %1773 = load i64, i64* %RBP, align 8
  %1774 = add i64 %1773, -24
  %1775 = load i64, i64* %PC, align 8
  %1776 = add i64 %1775, 5
  store i64 %1776, i64* %PC, align 8
  %1777 = inttoptr i64 %1774 to i64*
  %1778 = load i64, i64* %1777, align 8
  store i64 %1778, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1779 = add i64 %1775, 10
  store i64 %1779, i64* %PC, align 8
  %1780 = bitcast i64 %1778 to double
  %1781 = inttoptr i64 %1774 to double*
  %1782 = load double, double* %1781, align 8
  %1783 = fmul double %1780, %1782
  store double %1783, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1784 = add i64 %1773, -40
  %1785 = add i64 %1775, 15
  store i64 %1785, i64* %PC, align 8
  %1786 = inttoptr i64 %1784 to double*
  store double %1783, double* %1786, align 8
  %1787 = load i64, i64* %RBP, align 8
  %1788 = add i64 %1787, -40
  %1789 = load i64, i64* %PC, align 8
  %1790 = add i64 %1789, 5
  store i64 %1790, i64* %PC, align 8
  %1791 = inttoptr i64 %1788 to i64*
  %1792 = load i64, i64* %1791, align 8
  store i64 %1792, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1793 = add i64 %1789, 10
  store i64 %1793, i64* %PC, align 8
  %1794 = load i64, i64* %1791, align 8
  store i64 %1794, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %1795 = add i64 %1789, 15
  store i64 %1795, i64* %PC, align 8
  %1796 = load i64, i64* %1791, align 8
  store i64 %1796, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %1797 = add i64 %1789, 20
  store i64 %1797, i64* %PC, align 8
  %1798 = load i64, i64* %1791, align 8
  store i64 %1798, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %1799 = add i64 %1789, 25
  store i64 %1799, i64* %PC, align 8
  %1800 = load i64, i64* %1791, align 8
  store i64 %1800, i64* %107, align 1, !tbaa !2452
  store double 0.000000e+00, double* %109, align 1, !tbaa !2452
  %1801 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  store i64 %1801, i64* %209, align 1, !tbaa !2452
  store double 0.000000e+00, double* %211, align 1, !tbaa !2452
  %1802 = add i64 %1789, 39
  store i64 %1802, i64* %PC, align 8
  %1803 = bitcast i64 %1801 to double
  %1804 = inttoptr i64 %1788 to double*
  %1805 = load double, double* %1804, align 8
  %1806 = fmul double %1803, %1805
  %1807 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %1808 = fadd double %1806, %1807
  store double %1808, double* %121, align 1, !tbaa !2452
  store i64 0, i64* %210, align 1, !tbaa !2452
  %1809 = bitcast i64 %1800 to double
  %1810 = fmul double %1809, %1808
  %1811 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %1812 = fadd double %1810, %1811
  store double %1812, double* %106, align 1, !tbaa !2452
  store i64 0, i64* %108, align 1, !tbaa !2452
  %1813 = bitcast i64 %1798 to double
  %1814 = fmul double %1813, %1812
  %1815 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %1816 = fadd double %1814, %1815
  store double %1816, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %1817 = bitcast i64 %1796 to double
  %1818 = fmul double %1817, %1816
  %1819 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %1820 = fadd double %1818, %1819
  store double %1820, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %1821 = bitcast i64 %1794 to double
  %1822 = fmul double %1821, %1820
  %1823 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %1824 = fadd double %1822, %1823
  store double %1824, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %1825 = bitcast i64 %1792 to double
  %1826 = fmul double %1825, %1824
  %1827 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1828 = fadd double %1826, %1827
  store double %1828, double* bitcast (%sa_type* @sa to double*), align 8
  %1829 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %1830 = load double, double* %80, align 1
  %1831 = fdiv double %1829, %1830
  store double %1831, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  store double %1831, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 104) to double*), align 8
  %1832 = add i64 %1787, -48
  %1833 = add i64 %1789, 149
  store i64 %1833, i64* %PC, align 8
  %1834 = inttoptr i64 %1832 to i64*
  %1835 = load i64, i64* %1834, align 8
  store i64 %1835, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1836 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %1837 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1838 = fadd double %1836, %1837
  store double %1838, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1839 = load i64, i64* bitcast (%two_type* @two to i64*), align 8
  store i64 %1839, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %1840 = add i64 %1787, -16
  %1841 = add i64 %1789, 181
  store i64 %1841, i64* %PC, align 8
  %.cast164 = bitcast i64 %1839 to double
  %1842 = inttoptr i64 %1840 to double*
  %1843 = load double, double* %1842, align 8
  %1844 = fmul double %.cast164, %1843
  store double %1844, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %1845 = fadd double %1838, %1844
  store double %1845, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1846 = bitcast i64 %1835 to double
  %1847 = fmul double %1846, %1845
  %1848 = fdiv double %1847, %.cast164
  store double %1848, double* bitcast (%sa_type* @sa to double*), align 8
  %1849 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %1850 = load double, double* bitcast (%three_type* @three to double*), align 8
  %1851 = fdiv double %1849, %1850
  store double %1851, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %1852 = add i64 %1787, -24
  %1853 = add i64 %1789, 230
  store i64 %1853, i64* %PC, align 8
  %1854 = inttoptr i64 %1852 to double*
  store double %1851, double* %1854, align 8
  %1855 = load i64, i64* %RBP, align 8
  %1856 = add i64 %1855, -24
  %1857 = load i64, i64* %PC, align 8
  %1858 = add i64 %1857, 5
  store i64 %1858, i64* %PC, align 8
  %1859 = inttoptr i64 %1856 to i64*
  %1860 = load i64, i64* %1859, align 8
  store i64 %1860, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1861 = add i64 %1857, 10
  store i64 %1861, i64* %PC, align 8
  %1862 = bitcast i64 %1860 to double
  %1863 = inttoptr i64 %1856 to double*
  %1864 = load double, double* %1863, align 8
  %1865 = fmul double %1862, %1864
  store double %1865, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %1866 = add i64 %1855, -40
  %1867 = add i64 %1857, 15
  store i64 %1867, i64* %PC, align 8
  %1868 = inttoptr i64 %1866 to double*
  store double %1865, double* %1868, align 8
  %1869 = load i64, i64* %RBP, align 8
  %1870 = add i64 %1869, -24
  %1871 = load i64, i64* %PC, align 8
  %1872 = add i64 %1871, 5
  store i64 %1872, i64* %PC, align 8
  %1873 = inttoptr i64 %1870 to i64*
  %1874 = load i64, i64* %1873, align 8
  store i64 %1874, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1875 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %1875, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1876 = add i64 %1869, -40
  %1877 = add i64 %1871, 19
  store i64 %1877, i64* %PC, align 8
  %.cast165 = bitcast i64 %1875 to double
  %1878 = inttoptr i64 %1876 to double*
  %1879 = load double, double* %1878, align 8
  %1880 = fmul double %.cast165, %1879
  %1881 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %1882 = fadd double %1880, %1881
  store double %1882, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1883 = add i64 %1871, 33
  store i64 %1883, i64* %PC, align 8
  %1884 = load double, double* %1878, align 8
  %1885 = fmul double %1882, %1884
  %1886 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %1887 = fadd double %1885, %1886
  store double %1887, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1888 = add i64 %1871, 47
  store i64 %1888, i64* %PC, align 8
  %1889 = load double, double* %1878, align 8
  %1890 = fmul double %1887, %1889
  %1891 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %1892 = fadd double %1890, %1891
  store double %1892, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1893 = add i64 %1871, 61
  store i64 %1893, i64* %PC, align 8
  %1894 = load double, double* %1878, align 8
  %1895 = fmul double %1892, %1894
  %1896 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %1897 = fadd double %1895, %1896
  store double %1897, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1898 = add i64 %1871, 75
  store i64 %1898, i64* %PC, align 8
  %1899 = load double, double* %1878, align 8
  %1900 = fmul double %1897, %1899
  %1901 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %1902 = fadd double %1900, %1901
  store double %1902, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1903 = add i64 %1871, 89
  store i64 %1903, i64* %PC, align 8
  %1904 = load double, double* %1878, align 8
  %1905 = fmul double %1902, %1904
  %1906 = load double, double* bitcast (%A0_type* @A0 to double*), align 8
  %1907 = fadd double %1905, %1906
  %1908 = bitcast i64 %1874 to double
  %1909 = fmul double %1908, %1907
  store double %1909, double* bitcast (%sb_type* @sb to double*), align 8
  %1910 = load double, double* bitcast (%sa_type* @sa to double*), align 8
  %1911 = fsub double %1910, %1909
  store double %1911, double* bitcast (%sc_type* @sc to double*), align 8
  %1912 = load double, double* bitcast (%one_type* @one to double*), align 8
  %1913 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 104) to double*), align 8
  %1914 = fdiv double %1912, %1913
  store double %1914, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 112) to double*), align 16
  %1915 = load <2 x i32>, <2 x i32>* %1347, align 1
  %1916 = load <2 x i32>, <2 x i32>* %1349, align 1
  %1917 = extractelement <2 x i32> %1915, i32 0
  store i32 %1917, i32* %1352, align 1, !tbaa !2455
  %1918 = extractelement <2 x i32> %1915, i32 1
  store i32 %1918, i32* %1355, align 1, !tbaa !2455
  %1919 = extractelement <2 x i32> %1916, i32 0
  store i32 %1919, i32* %1357, align 1, !tbaa !2455
  %1920 = extractelement <2 x i32> %1916, i32 1
  store i32 %1920, i32* %1360, align 1, !tbaa !2455
  %1921 = load double, double* %80, align 1
  %1922 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %1923 = fmul double %1921, %1922
  store double %1923, double* %80, align 1, !tbaa !2452
  store i32 %1917, i32* %1364, align 1, !tbaa !2455
  store i32 %1918, i32* %1366, align 1, !tbaa !2455
  store i32 %1919, i32* %1367, align 1, !tbaa !2455
  store i32 %1920, i32* %1369, align 1, !tbaa !2455
  %1924 = load double, double* %86, align 1
  %1925 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 96) to double*), align 16
  %1926 = fmul double %1924, %1925
  store double %1926, double* %86, align 1, !tbaa !2452
  %1927 = bitcast <2 x i32> %1915 to double
  %1928 = fmul double %1914, %1927
  %1929 = add i64 %1869, -208
  %1930 = add i64 %1871, 206
  store i64 %1930, i64* %PC, align 8
  %1931 = inttoptr i64 %1929 to double*
  store double %1928, double* %1931, align 8
  %1932 = load i64, i64* %PC, align 8
  %1933 = load <2 x i32>, <2 x i32>* %1380, align 1
  %1934 = load <2 x i32>, <2 x i32>* %1382, align 1
  %1935 = extractelement <2 x i32> %1933, i32 0
  store i32 %1935, i32* %187, align 1, !tbaa !2455
  %1936 = extractelement <2 x i32> %1933, i32 1
  store i32 %1936, i32* %189, align 1, !tbaa !2455
  %1937 = extractelement <2 x i32> %1934, i32 0
  store i32 %1937, i32* %190, align 1, !tbaa !2455
  %1938 = extractelement <2 x i32> %1934, i32 1
  store i32 %1938, i32* %192, align 1, !tbaa !2455
  %1939 = load <2 x i32>, <2 x i32>* %1388, align 1
  %1940 = load <2 x i32>, <2 x i32>* %1390, align 1
  %1941 = extractelement <2 x i32> %1939, i32 0
  store i32 %1941, i32* %1352, align 1, !tbaa !2455
  %1942 = extractelement <2 x i32> %1939, i32 1
  store i32 %1942, i32* %1355, align 1, !tbaa !2455
  %1943 = extractelement <2 x i32> %1940, i32 0
  store i32 %1943, i32* %1357, align 1, !tbaa !2455
  %1944 = extractelement <2 x i32> %1940, i32 1
  store i32 %1944, i32* %1360, align 1, !tbaa !2455
  %1945 = load i64, i64* %RBP, align 8
  %1946 = add i64 %1945, -208
  %1947 = add i64 %1932, 14
  store i64 %1947, i64* %PC, align 8
  %1948 = inttoptr i64 %1946 to i64*
  %1949 = load i64, i64* %1948, align 8
  store i64 %1949, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1950 = add i64 %1945, -212
  %1951 = load i32, i32* %EAX, align 4
  %1952 = add i64 %1932, 20
  store i64 %1952, i64* %PC, align 8
  %1953 = inttoptr i64 %1950 to i32*
  store i32 %1951, i32* %1953, align 4
  %1954 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2451
  %1955 = add i64 %1954, -4179
  %1956 = add i64 %1954, 7
  %1957 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1958 = add i64 %1957, -8
  %1959 = inttoptr i64 %1958 to i64*
  store i64 %1956, i64* %1959, align 8
  store i64 %1958, i64* %RSP, align 8, !tbaa !2428
  store i64 %1955, i64* %PC, align 8, !tbaa !2428
  %1960 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %1757)
  %1961 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store <4 x i32> zeroinitializer, <4 x i32>* %193, align 1, !tbaa !2454
  %1962 = load i64, i64* bitcast (%piref_type* @piref to i64*), align 8
  store i64 %1962, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %1963 = load i64, i64* bitcast (%three_type* @three to i64*), align 8
  store i64 %1963, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %1964 = load i64, i64* %RBP, align 8
  %1965 = add i64 %1964, -80
  %1966 = add i64 %1961, 37
  store i64 %1966, i64* %PC, align 8
  %1967 = inttoptr i64 %1965 to i64*
  %1968 = load i64, i64* %1967, align 8
  %1969 = sitofp i64 %1968 to double
  store double %1969, double* %91, align 1, !tbaa !2452
  %1970 = bitcast i64 %1963 to double
  %1971 = fmul double %1970, %1969
  store double %1971, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %1972 = bitcast i64 %1962 to double
  %1973 = fdiv double %1972, %1971
  store double %1973, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %1974 = add i64 %1964, -48
  %1975 = add i64 %1961, 50
  store i64 %1975, i64* %PC, align 8
  %1976 = inttoptr i64 %1974 to double*
  store double %1973, double* %1976, align 8
  %1977 = load i64, i64* %RBP, align 8
  %1978 = add i64 %1977, -16
  %1979 = load i64, i64* %PC, align 8
  %1980 = add i64 %1979, 5
  store i64 %1980, i64* %PC, align 8
  %1981 = load i64, i64* %75, align 1
  %1982 = inttoptr i64 %1978 to i64*
  store i64 %1981, i64* %1982, align 8
  %1983 = load i64, i64* %RBP, align 8
  %1984 = add i64 %1983, -32
  %1985 = load i64, i64* %PC, align 8
  %1986 = add i64 %1985, 5
  store i64 %1986, i64* %PC, align 8
  %1987 = load i64, i64* %75, align 1
  %1988 = inttoptr i64 %1984 to i64*
  store i64 %1987, i64* %1988, align 8
  %1989 = load i64, i64* %RBP, align 8
  %1990 = add i64 %1989, -216
  %1991 = load i32, i32* %EAX, align 4
  %1992 = load i64, i64* %PC, align 8
  %1993 = add i64 %1992, 6
  store i64 %1993, i64* %PC, align 8
  %1994 = inttoptr i64 %1990 to i32*
  store i32 %1991, i32* %1994, align 4
  %1995 = load i64, i64* %PC, align 8
  %1996 = add i64 %1995, 4340
  %1997 = add i64 %1995, 5
  %1998 = load i64, i64* %RSP, align 8, !tbaa !2428
  %1999 = add i64 %1998, -8
  %2000 = inttoptr i64 %1999 to i64*
  store i64 %1997, i64* %2000, align 8
  store i64 %1999, i64* %RSP, align 8, !tbaa !2428
  store i64 %1996, i64* %PC, align 8, !tbaa !2428
  %2001 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %1996, %struct.Memory* %1960)
  %2002 = load i64, i64* %RBP, align 8
  %2003 = add i64 %2002, -72
  %2004 = load i64, i64* %PC, align 8
  %2005 = add i64 %2004, 8
  store i64 %2005, i64* %PC, align 8
  %2006 = inttoptr i64 %2003 to i64*
  store i64 1, i64* %2006, align 8
  %2007 = load i64, i64* %RBP, align 8
  %2008 = add i64 %2007, -220
  %2009 = load i32, i32* %EAX, align 4
  %2010 = load i64, i64* %PC, align 8
  %2011 = add i64 %2010, 6
  store i64 %2011, i64* %PC, align 8
  %2012 = inttoptr i64 %2008 to i32*
  store i32 %2009, i32* %2012, align 4
  %.pre214 = load i64, i64* %PC, align 8
  br label %block_4014ff

block_4006c2:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store <4 x i32> zeroinitializer, <4 x i32>* %193, align 1, !tbaa !2454
  %2013 = load i64, i64* %RBP, align 8
  %2014 = add i64 %2013, -88
  %2015 = add i64 %3975, 17
  store i64 %2015, i64* %PC, align 8
  %2016 = inttoptr i64 %2014 to i64*
  %2017 = load i64, i64* %2016, align 8
  %2018 = shl i64 %2017, 1
  %2019 = icmp slt i64 %2017, 0
  %2020 = icmp slt i64 %2018, 0
  %2021 = xor i1 %2019, %2020
  store i64 %2018, i64* %RAX, align 8, !tbaa !2428
  %.lobit = lshr i64 %2017, 63
  %2022 = trunc i64 %.lobit to i8
  store i8 %2022, i8* %23, align 1, !tbaa !2451
  %2023 = trunc i64 %2018 to i32
  %2024 = and i32 %2023, 254
  %2025 = tail call i32 @llvm.ctpop.i32(i32 %2024) #11
  %2026 = trunc i32 %2025 to i8
  %2027 = and i8 %2026, 1
  %2028 = xor i8 %2027, 1
  store i8 %2028, i8* %30, align 1, !tbaa !2451
  store i8 0, i8* %35, align 1, !tbaa !2451
  %2029 = icmp eq i64 %2018, 0
  %2030 = zext i1 %2029 to i8
  store i8 %2030, i8* %38, align 1, !tbaa !2451
  %2031 = lshr i64 %2017, 62
  %2032 = trunc i64 %2031 to i8
  %2033 = and i8 %2032, 1
  store i8 %2033, i8* %41, align 1, !tbaa !2451
  %2034 = zext i1 %2021 to i8
  store i8 %2034, i8* %47, align 1, !tbaa !2451
  %2035 = add i64 %3975, 25
  store i64 %2035, i64* %PC, align 8
  store i64 %2018, i64* %2016, align 8
  %2036 = load i64, i64* %PC, align 8
  %2037 = load i64, i64* bitcast (%one_type* @one to i64*), align 8
  store i64 %2037, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %2038 = load i64, i64* %RBP, align 8
  %2039 = add i64 %2038, -88
  %2040 = add i64 %2036, 15
  store i64 %2040, i64* %PC, align 8
  %2041 = inttoptr i64 %2039 to i64*
  %2042 = load i64, i64* %2041, align 8
  %2043 = sitofp i64 %2042 to double
  store double %2043, double* %86, align 1, !tbaa !2452
  %2044 = bitcast i64 %2037 to double
  %2045 = fdiv double %2044, %2043
  store double %2045, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %2046 = add i64 %2038, -48
  %2047 = add i64 %2036, 24
  store i64 %2047, i64* %PC, align 8
  %2048 = inttoptr i64 %2046 to double*
  store double %2045, double* %2048, align 8
  %2049 = load i64, i64* %RBP, align 8
  %2050 = add i64 %2049, -16
  %2051 = load i64, i64* %PC, align 8
  %2052 = add i64 %2051, 5
  store i64 %2052, i64* %PC, align 8
  %2053 = load i64, i64* %75, align 1
  %2054 = inttoptr i64 %2050 to i64*
  store i64 %2053, i64* %2054, align 8
  %2055 = load i64, i64* %RBP, align 8
  %2056 = add i64 %2055, -32
  %2057 = load i64, i64* %PC, align 8
  %2058 = add i64 %2057, 5
  store i64 %2058, i64* %PC, align 8
  %2059 = load i64, i64* %75, align 1
  %2060 = inttoptr i64 %2056 to i64*
  store i64 %2059, i64* %2060, align 8
  %2061 = load i64, i64* %PC, align 8
  %2062 = load i64, i64* bitcast (%one_type* @one to i64*), align 8
  store i64 %2062, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %2063 = load i64, i64* %RBP, align 8
  %2064 = add i64 %2063, -40
  %2065 = add i64 %2061, 14
  store i64 %2065, i64* %PC, align 8
  %2066 = inttoptr i64 %2064 to i64*
  store i64 %2062, i64* %2066, align 8
  %2067 = load i64, i64* %PC, align 8
  %2068 = add i64 %2067, 7893
  %2069 = add i64 %2067, 5
  %2070 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2071 = add i64 %2070, -8
  %2072 = inttoptr i64 %2071 to i64*
  store i64 %2069, i64* %2072, align 8
  store i64 %2071, i64* %RSP, align 8, !tbaa !2428
  store i64 %2068, i64* %PC, align 8, !tbaa !2428
  %2073 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %2068, %struct.Memory* %3968)
  %2074 = load i64, i64* %RBP, align 8
  %2075 = add i64 %2074, -72
  %2076 = load i64, i64* %PC, align 8
  %2077 = add i64 %2076, 8
  store i64 %2077, i64* %PC, align 8
  %2078 = inttoptr i64 %2075 to i64*
  store i64 1, i64* %2078, align 8
  %2079 = load i64, i64* %RBP, align 8
  %2080 = add i64 %2079, -116
  %2081 = load i32, i32* %EAX, align 4
  %2082 = load i64, i64* %PC, align 8
  %2083 = add i64 %2082, 3
  store i64 %2083, i64* %PC, align 8
  %2084 = inttoptr i64 %2080 to i32*
  store i32 %2081, i32* %2084, align 4
  %.pre205 = load i64, i64* %PC, align 8
  br label %block_40071b

block_400f3f:                                     ; preds = %block_400e74
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %2085 = add i64 %1223, 5793
  %2086 = add i64 %1223, 15
  %2087 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2088 = add i64 %2087, -8
  %2089 = inttoptr i64 %2088 to i64*
  store i64 %2086, i64* %2089, align 8
  store i64 %2088, i64* %RSP, align 8, !tbaa !2428
  store i64 %2085, i64* %PC, align 8, !tbaa !2428
  %2090 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %2085, %struct.Memory* %3456)
  %2091 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 462), i64* %RDI, align 8, !tbaa !2428
  %2092 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to i64*), align 8
  store i64 %2092, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %2093 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 112) to i64*), align 16
  store i64 %2093, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %2094 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 120) to i64*), align 8
  store i64 %2094, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %2095 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %2096 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %2097 = fmul double %2095, %2096
  %2098 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %2099 = fsub double %2097, %2098
  store double %2099, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %2100 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %2101 = load double, double* bitcast (%three_type* @three to double*), align 8
  %2102 = fdiv double %2100, %2101
  store double %2102, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %2103 = load i64, i64* %RBP, align 8
  %2104 = add i64 %2103, -24
  %2105 = add i64 %2091, 93
  store i64 %2105, i64* %PC, align 8
  %2106 = inttoptr i64 %2104 to double*
  store double %2102, double* %2106, align 8
  %2107 = load i64, i64* %RBP, align 8
  %2108 = add i64 %2107, -24
  %2109 = load i64, i64* %PC, align 8
  %2110 = add i64 %2109, 5
  store i64 %2110, i64* %PC, align 8
  %2111 = inttoptr i64 %2108 to i64*
  %2112 = load i64, i64* %2111, align 8
  store i64 %2112, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %2113 = add i64 %2109, 10
  store i64 %2113, i64* %PC, align 8
  %2114 = bitcast i64 %2112 to double
  %2115 = inttoptr i64 %2108 to double*
  %2116 = load double, double* %2115, align 8
  %2117 = fmul double %2114, %2116
  store double %2117, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %2118 = add i64 %2107, -40
  %2119 = add i64 %2109, 15
  store i64 %2119, i64* %PC, align 8
  %2120 = inttoptr i64 %2118 to double*
  store double %2117, double* %2120, align 8
  %2121 = load i64, i64* %RBP, align 8
  %2122 = add i64 %2121, -24
  %2123 = load i64, i64* %PC, align 8
  %2124 = add i64 %2123, 5
  store i64 %2124, i64* %PC, align 8
  %2125 = inttoptr i64 %2122 to i64*
  %2126 = load i64, i64* %2125, align 8
  store i64 %2126, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %2127 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %2127, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %2128 = add i64 %2121, -40
  %2129 = add i64 %2123, 19
  store i64 %2129, i64* %PC, align 8
  %.cast161 = bitcast i64 %2127 to double
  %2130 = inttoptr i64 %2128 to double*
  %2131 = load double, double* %2130, align 8
  %2132 = fmul double %.cast161, %2131
  %2133 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %2134 = fsub double %2132, %2133
  store double %2134, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2135 = add i64 %2123, 33
  store i64 %2135, i64* %PC, align 8
  %2136 = load double, double* %2130, align 8
  %2137 = fmul double %2134, %2136
  %2138 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %2139 = fadd double %2137, %2138
  store double %2139, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2140 = add i64 %2123, 47
  store i64 %2140, i64* %PC, align 8
  %2141 = load double, double* %2130, align 8
  %2142 = fmul double %2139, %2141
  %2143 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %2144 = fsub double %2142, %2143
  store double %2144, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2145 = add i64 %2123, 61
  store i64 %2145, i64* %PC, align 8
  %2146 = load double, double* %2130, align 8
  %2147 = fmul double %2144, %2146
  %2148 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %2149 = fadd double %2147, %2148
  store double %2149, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2150 = add i64 %2123, 75
  store i64 %2150, i64* %PC, align 8
  %2151 = load double, double* %2130, align 8
  %2152 = fmul double %2149, %2151
  %2153 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %2154 = fadd double %2152, %2153
  store double %2154, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2155 = add i64 %2123, 89
  store i64 %2155, i64* %PC, align 8
  %2156 = load double, double* %2130, align 8
  %2157 = fmul double %2154, %2156
  %2158 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2159 = fadd double %2157, %2158
  store double %2159, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2160 = bitcast i64 %2126 to double
  %2161 = fmul double %2160, %2159
  store double %2161, double* bitcast (%sa_type* @sa to double*), align 8
  %2162 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %2163 = load double, double* %86, align 1
  %2164 = fdiv double %2162, %2163
  store double %2164, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  store double %2164, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 80) to double*), align 16
  %2165 = add i64 %2121, -48
  %2166 = add i64 %2123, 138
  store i64 %2166, i64* %PC, align 8
  %2167 = inttoptr i64 %2165 to i64*
  %2168 = load i64, i64* %2167, align 8
  store i64 %2168, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %2169 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %2169, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %2170 = load i64, i64* bitcast (%two_type* @two to i64*), align 8
  store i64 %2170, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %2171 = add i64 %2121, -16
  %2172 = add i64 %2123, 161
  store i64 %2172, i64* %PC, align 8
  %.cast162 = bitcast i64 %2170 to double
  %2173 = inttoptr i64 %2171 to double*
  %2174 = load double, double* %2173, align 8
  %2175 = fmul double %.cast162, %2174
  store double %2175, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2176 = bitcast i64 %2169 to double
  %2177 = fadd double %2176, %2175
  store double %2177, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %2178 = bitcast i64 %2168 to double
  %2179 = fmul double %2178, %2177
  %2180 = fdiv double %2179, %.cast162
  store double %2180, double* bitcast (%sa_type* @sa to double*), align 8
  %2181 = load i64, i64* %81, align 1
  store i64 %2181, i64* bitcast (%sb_type* @sb to i64*), align 8
  %2182 = bitcast i64 %2181 to double
  %2183 = fsub double %2180, %2182
  store double %2183, double* bitcast (%sc_type* @sc to double*), align 8
  %2184 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2185 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 80) to double*), align 16
  %2186 = fdiv double %2184, %2185
  store double %2186, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 88) to double*), align 8
  %2187 = load <2 x i32>, <2 x i32>* %1347, align 1
  %2188 = load <2 x i32>, <2 x i32>* %1349, align 1
  %2189 = extractelement <2 x i32> %2187, i32 0
  store i32 %2189, i32* %1352, align 1, !tbaa !2455
  %2190 = extractelement <2 x i32> %2187, i32 1
  store i32 %2190, i32* %1355, align 1, !tbaa !2455
  %2191 = extractelement <2 x i32> %2188, i32 0
  store i32 %2191, i32* %1357, align 1, !tbaa !2455
  %2192 = extractelement <2 x i32> %2188, i32 1
  store i32 %2192, i32* %1360, align 1, !tbaa !2455
  %2193 = load double, double* %80, align 1
  %2194 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %2195 = fmul double %2193, %2194
  store double %2195, double* %80, align 1, !tbaa !2452
  store i32 %2189, i32* %1364, align 1, !tbaa !2455
  store i32 %2190, i32* %1366, align 1, !tbaa !2455
  store i32 %2191, i32* %1367, align 1, !tbaa !2455
  store i32 %2192, i32* %1369, align 1, !tbaa !2455
  %2196 = load double, double* %86, align 1
  %2197 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 72) to double*), align 8
  %2198 = fmul double %2196, %2197
  store double %2198, double* %86, align 1, !tbaa !2452
  %2199 = bitcast <2 x i32> %2187 to double
  %2200 = fmul double %2186, %2199
  %2201 = load i64, i64* %RBP, align 8
  %2202 = add i64 %2201, -184
  %2203 = add i64 %2123, 291
  store i64 %2203, i64* %PC, align 8
  %2204 = inttoptr i64 %2202 to double*
  store double %2200, double* %2204, align 8
  %2205 = load i64, i64* %PC, align 8
  %2206 = load <2 x i32>, <2 x i32>* %1380, align 1
  %2207 = load <2 x i32>, <2 x i32>* %1382, align 1
  %2208 = extractelement <2 x i32> %2206, i32 0
  store i32 %2208, i32* %187, align 1, !tbaa !2455
  %2209 = extractelement <2 x i32> %2206, i32 1
  store i32 %2209, i32* %189, align 1, !tbaa !2455
  %2210 = extractelement <2 x i32> %2207, i32 0
  store i32 %2210, i32* %190, align 1, !tbaa !2455
  %2211 = extractelement <2 x i32> %2207, i32 1
  store i32 %2211, i32* %192, align 1, !tbaa !2455
  %2212 = load <2 x i32>, <2 x i32>* %1388, align 1
  %2213 = load <2 x i32>, <2 x i32>* %1390, align 1
  %2214 = extractelement <2 x i32> %2212, i32 0
  store i32 %2214, i32* %1352, align 1, !tbaa !2455
  %2215 = extractelement <2 x i32> %2212, i32 1
  store i32 %2215, i32* %1355, align 1, !tbaa !2455
  %2216 = extractelement <2 x i32> %2213, i32 0
  store i32 %2216, i32* %1357, align 1, !tbaa !2455
  %2217 = extractelement <2 x i32> %2213, i32 1
  store i32 %2217, i32* %1360, align 1, !tbaa !2455
  %2218 = load i64, i64* %RBP, align 8
  %2219 = add i64 %2218, -184
  %2220 = add i64 %2205, 14
  store i64 %2220, i64* %PC, align 8
  %2221 = inttoptr i64 %2219 to i64*
  %2222 = load i64, i64* %2221, align 8
  store i64 %2222, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %2223 = add i64 %2218, -188
  %2224 = load i32, i32* %EAX, align 4
  %2225 = add i64 %2205, 20
  store i64 %2225, i64* %PC, align 8
  %2226 = inttoptr i64 %2223 to i32*
  store i32 %2224, i32* %2226, align 4
  %2227 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2451
  %2228 = add i64 %2227, -3233
  %2229 = add i64 %2227, 7
  %2230 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2231 = add i64 %2230, -8
  %2232 = inttoptr i64 %2231 to i64*
  store i64 %2229, i64* %2232, align 8
  store i64 %2231, i64* %RSP, align 8, !tbaa !2428
  store i64 %2228, i64* %PC, align 8, !tbaa !2428
  %2233 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %2090)
  %2234 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store <4 x i32> zeroinitializer, <4 x i32>* %193, align 1, !tbaa !2454
  store i64 -9223372036854775808, i64* %RCX, align 8, !tbaa !2428
  %2235 = load i64, i64* bitcast (%A3_type* @A3 to i64*), align 8
  %2236 = xor i64 %2235, -9223372036854775808
  store i64 %2236, i64* bitcast (%A3_type* @A3 to i64*), align 8
  %2237 = load i64, i64* bitcast (%A5_type* @A5 to i64*), align 8
  %2238 = xor i64 %2237, -9223372036854775808
  store i64 %2238, i64* %RDX, align 8, !tbaa !2428
  store i8 0, i8* %23, align 1, !tbaa !2432
  %2239 = trunc i64 %2237 to i32
  %2240 = and i32 %2239, 255
  %2241 = tail call i32 @llvm.ctpop.i32(i32 %2240) #11
  %2242 = trunc i32 %2241 to i8
  %2243 = and i8 %2242, 1
  %2244 = xor i8 %2243, 1
  store i8 %2244, i8* %30, align 1, !tbaa !2446
  %2245 = icmp eq i64 %2238, 0
  %2246 = zext i1 %2245 to i8
  store i8 %2246, i8* %38, align 1, !tbaa !2447
  %2247 = lshr i64 %2238, 63
  %2248 = trunc i64 %2247 to i8
  store i8 %2248, i8* %41, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %35, align 1, !tbaa !2450
  store i64 %2238, i64* bitcast (%A5_type* @A5 to i64*), align 8
  %2249 = load i64, i64* bitcast (%piref_type* @piref to i64*), align 8
  store i64 %2249, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %2250 = load i64, i64* bitcast (%three_type* @three to i64*), align 8
  store i64 %2250, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %2251 = load i64, i64* %RBP, align 8
  %2252 = add i64 %2251, -80
  %2253 = add i64 %2234, 109
  store i64 %2253, i64* %PC, align 8
  %2254 = inttoptr i64 %2252 to i64*
  %2255 = load i64, i64* %2254, align 8
  %2256 = sitofp i64 %2255 to double
  store double %2256, double* %91, align 1, !tbaa !2452
  %2257 = bitcast i64 %2250 to double
  %2258 = fmul double %2257, %2256
  store double %2258, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %2259 = bitcast i64 %2249 to double
  %2260 = fdiv double %2259, %2258
  store double %2260, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %2261 = add i64 %2251, -48
  %2262 = add i64 %2234, 122
  store i64 %2262, i64* %PC, align 8
  %2263 = inttoptr i64 %2261 to double*
  store double %2260, double* %2263, align 8
  %2264 = load i64, i64* %RBP, align 8
  %2265 = add i64 %2264, -16
  %2266 = load i64, i64* %PC, align 8
  %2267 = add i64 %2266, 5
  store i64 %2267, i64* %PC, align 8
  %2268 = load i64, i64* %75, align 1
  %2269 = inttoptr i64 %2265 to i64*
  store i64 %2268, i64* %2269, align 8
  %2270 = load i64, i64* %RBP, align 8
  %2271 = add i64 %2270, -32
  %2272 = load i64, i64* %PC, align 8
  %2273 = add i64 %2272, 5
  store i64 %2273, i64* %PC, align 8
  %2274 = load i64, i64* %75, align 1
  %2275 = inttoptr i64 %2271 to i64*
  store i64 %2274, i64* %2275, align 8
  %2276 = load i64, i64* %RBP, align 8
  %2277 = add i64 %2276, -192
  %2278 = load i32, i32* %EAX, align 4
  %2279 = load i64, i64* %PC, align 8
  %2280 = add i64 %2279, 6
  store i64 %2280, i64* %PC, align 8
  %2281 = inttoptr i64 %2277 to i32*
  store i32 %2278, i32* %2281, align 4
  %2282 = load i64, i64* %PC, align 8
  %2283 = add i64 %2282, 5214
  %2284 = add i64 %2282, 5
  %2285 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2286 = add i64 %2285, -8
  %2287 = inttoptr i64 %2286 to i64*
  store i64 %2284, i64* %2287, align 8
  store i64 %2286, i64* %RSP, align 8, !tbaa !2428
  store i64 %2283, i64* %PC, align 8, !tbaa !2428
  %2288 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %2283, %struct.Memory* %2233)
  %2289 = load i64, i64* %RBP, align 8
  %2290 = add i64 %2289, -72
  %2291 = load i64, i64* %PC, align 8
  %2292 = add i64 %2291, 8
  store i64 %2292, i64* %PC, align 8
  %2293 = inttoptr i64 %2290 to i64*
  store i64 1, i64* %2293, align 8
  %2294 = load i64, i64* %RBP, align 8
  %2295 = add i64 %2294, -196
  %2296 = load i32, i32* %EAX, align 4
  %2297 = load i64, i64* %PC, align 8
  %2298 = add i64 %2297, 6
  store i64 %2298, i64* %PC, align 8
  %2299 = inttoptr i64 %2295 to i32*
  store i32 %2296, i32* %2299, align 4
  %.pre213 = load i64, i64* %PC, align 8
  br label %block_401195

block_400730:                                     ; preds = %block_40071b
  %2300 = add i64 %2659, -32
  %2301 = add i64 %2696, 5
  store i64 %2301, i64* %PC, align 8
  %2302 = inttoptr i64 %2300 to i64*
  %2303 = load i64, i64* %2302, align 8
  store i64 %2303, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %2304 = add i64 %2659, -40
  %2305 = add i64 %2696, 10
  store i64 %2305, i64* %PC, align 8
  %2306 = bitcast i64 %2303 to double
  %2307 = inttoptr i64 %2304 to double*
  %2308 = load double, double* %2307, align 8
  %2309 = fadd double %2306, %2308
  store double %2309, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %2310 = add i64 %2696, 15
  store i64 %2310, i64* %PC, align 8
  %2311 = inttoptr i64 %2300 to double*
  store double %2309, double* %2311, align 8
  %2312 = load i64, i64* %RBP, align 8
  %2313 = add i64 %2312, -32
  %2314 = load i64, i64* %PC, align 8
  %2315 = add i64 %2314, 5
  store i64 %2315, i64* %PC, align 8
  %2316 = inttoptr i64 %2313 to i64*
  %2317 = load i64, i64* %2316, align 8
  store i64 %2317, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %2318 = add i64 %2312, -48
  %2319 = add i64 %2314, 10
  store i64 %2319, i64* %PC, align 8
  %2320 = bitcast i64 %2317 to double
  %2321 = inttoptr i64 %2318 to double*
  %2322 = load double, double* %2321, align 8
  %2323 = fmul double %2320, %2322
  store double %2323, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %2324 = add i64 %2312, -24
  %2325 = add i64 %2314, 15
  store i64 %2325, i64* %PC, align 8
  %2326 = inttoptr i64 %2324 to double*
  store double %2323, double* %2326, align 8
  %2327 = load i64, i64* %RBP, align 8
  %2328 = add i64 %2327, -16
  %2329 = load i64, i64* %PC, align 8
  %2330 = add i64 %2329, 5
  store i64 %2330, i64* %PC, align 8
  %2331 = inttoptr i64 %2328 to i64*
  %2332 = load i64, i64* %2331, align 8
  store i64 %2332, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %2333 = load i64, i64* bitcast (%D1_0_type* @D1_0 to i64*), align 8
  store i64 %2333, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %2334 = add i64 %2327, -24
  %2335 = add i64 %2329, 19
  store i64 %2335, i64* %PC, align 8
  %2336 = inttoptr i64 %2334 to i64*
  %2337 = load i64, i64* %2336, align 8
  store i64 %2337, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %2338 = load i64, i64* bitcast (%D2_0_type* @D2_0 to i64*), align 8
  store i64 %2338, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %2339 = add i64 %2329, 33
  store i64 %2339, i64* %PC, align 8
  %2340 = inttoptr i64 %2334 to double*
  %2341 = load double, double* %2340, align 8
  %2342 = load double, double* bitcast (%D3_type* @D3 to double*), align 8
  %2343 = fmul double %2341, %2342
  store double %2343, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2344 = bitcast i64 %2338 to double
  %2345 = fadd double %2344, %2343
  store double %2345, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %2346 = bitcast i64 %2337 to double
  %2347 = fmul double %2346, %2345
  store double %2347, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %2348 = bitcast i64 %2333 to double
  %2349 = fadd double %2348, %2347
  store double %2349, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %2350 = add i64 %2327, -40
  %2351 = add i64 %2329, 59
  store i64 %2351, i64* %PC, align 8
  %2352 = inttoptr i64 %2350 to i64*
  %2353 = load i64, i64* %2352, align 8
  store i64 %2353, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %2354 = add i64 %2329, 64
  store i64 %2354, i64* %PC, align 8
  %2355 = load i64, i64* %2336, align 8
  store i64 %2355, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  store i64 %2333, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %2356 = add i64 %2329, 78
  store i64 %2356, i64* %PC, align 8
  %2357 = load i64, i64* %2336, align 8
  store i64 %2357, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %2358 = load i64, i64* bitcast (%E2_0_type* @E2_0 to i64*), align 8
  store i64 %2358, i64* %107, align 1, !tbaa !2452
  store double 0.000000e+00, double* %109, align 1, !tbaa !2452
  %2359 = add i64 %2329, 92
  store i64 %2359, i64* %PC, align 8
  %2360 = load double, double* %2340, align 8
  %2361 = load double, double* bitcast (%E3_type* @E3 to double*), align 8
  %2362 = fmul double %2360, %2361
  store double %2362, double* %121, align 1, !tbaa !2452
  store i64 0, i64* %210, align 1, !tbaa !2452
  %2363 = bitcast i64 %2358 to double
  %2364 = fadd double %2363, %2362
  store double %2364, double* %106, align 1, !tbaa !2452
  store i64 0, i64* %108, align 1, !tbaa !2452
  %2365 = bitcast i64 %2357 to double
  %2366 = fmul double %2365, %2364
  store double %2366, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %2367 = fadd double %2348, %2366
  store double %2367, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2368 = bitcast i64 %2355 to double
  %2369 = fmul double %2368, %2367
  store double %2369, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %2370 = bitcast i64 %2353 to double
  %2371 = fadd double %2370, %2369
  store double %2371, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %2372 = fdiv double %2349, %2371
  store double %2372, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %2373 = bitcast i64 %2332 to double
  %2374 = fadd double %2373, %2372
  store double %2374, double* %74, align 1, !tbaa !2452
  %2375 = add i64 %2329, 134
  store i64 %2375, i64* %PC, align 8
  %2376 = inttoptr i64 %2328 to double*
  store double %2374, double* %2376, align 8
  %2377 = load i64, i64* %RBP, align 8
  %2378 = add i64 %2377, -72
  %2379 = load i64, i64* %PC, align 8
  %2380 = add i64 %2379, 4
  store i64 %2380, i64* %PC, align 8
  %2381 = inttoptr i64 %2378 to i64*
  %2382 = load i64, i64* %2381, align 8
  %2383 = add i64 %2382, 1
  store i64 %2383, i64* %RAX, align 8, !tbaa !2428
  %2384 = icmp eq i64 %2382, -1
  %2385 = icmp eq i64 %2383, 0
  %2386 = or i1 %2384, %2385
  %2387 = zext i1 %2386 to i8
  store i8 %2387, i8* %23, align 1, !tbaa !2432
  %2388 = trunc i64 %2383 to i32
  %2389 = and i32 %2388, 255
  %2390 = tail call i32 @llvm.ctpop.i32(i32 %2389) #11
  %2391 = trunc i32 %2390 to i8
  %2392 = and i8 %2391, 1
  %2393 = xor i8 %2392, 1
  store i8 %2393, i8* %30, align 1, !tbaa !2446
  %2394 = xor i64 %2383, %2382
  %2395 = lshr i64 %2394, 4
  %2396 = trunc i64 %2395 to i8
  %2397 = and i8 %2396, 1
  store i8 %2397, i8* %35, align 1, !tbaa !2450
  %2398 = zext i1 %2385 to i8
  store i8 %2398, i8* %38, align 1, !tbaa !2447
  %2399 = lshr i64 %2383, 63
  %2400 = trunc i64 %2399 to i8
  store i8 %2400, i8* %41, align 1, !tbaa !2448
  %2401 = lshr i64 %2382, 63
  %2402 = xor i64 %2399, %2401
  %2403 = add nuw nsw i64 %2402, %2399
  %2404 = icmp eq i64 %2403, 2
  %2405 = zext i1 %2404 to i8
  store i8 %2405, i8* %47, align 1, !tbaa !2449
  %2406 = add i64 %2379, 12
  store i64 %2406, i64* %PC, align 8
  store i64 %2383, i64* %2381, align 8
  %2407 = load i64, i64* %PC, align 8
  %2408 = add i64 %2407, -197
  store i64 %2408, i64* %PC, align 8, !tbaa !2428
  br label %block_40071b

block_400afc:                                     ; preds = %block_400aee
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
  %2409 = add i64 %3469, -16
  %2410 = add i64 %3505, 15
  store i64 %2410, i64* %PC, align 8
  %2411 = inttoptr i64 %2409 to i64*
  %2412 = load i64, i64* %2411, align 8
  %2413 = xor i64 %2412, -9223372036854775808
  store i64 %2413, i64* %RCX, align 8, !tbaa !2428
  store i8 0, i8* %23, align 1, !tbaa !2432
  %2414 = trunc i64 %2412 to i32
  %2415 = and i32 %2414, 255
  %2416 = tail call i32 @llvm.ctpop.i32(i32 %2415) #11
  %2417 = trunc i32 %2416 to i8
  %2418 = and i8 %2417, 1
  %2419 = xor i8 %2418, 1
  store i8 %2419, i8* %30, align 1, !tbaa !2446
  %2420 = icmp eq i64 %2413, 0
  %2421 = zext i1 %2420 to i8
  store i8 %2421, i8* %38, align 1, !tbaa !2447
  %2422 = lshr i64 %2413, 63
  %2423 = trunc i64 %2422 to i8
  store i8 %2423, i8* %41, align 1, !tbaa !2448
  store i8 0, i8* %47, align 1, !tbaa !2449
  store i8 0, i8* %35, align 1, !tbaa !2450
  %2424 = add i64 %3505, 33
  store i64 %2424, i64* %PC, align 8
  store i64 %2413, i64* %2411, align 8
  %2425 = load i64, i64* %PC, align 8
  %2426 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %2426, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %2427 = load i64, i64* %RBP, align 8
  %2428 = add i64 %2427, -16
  %2429 = add i64 %2425, 14
  store i64 %2429, i64* %PC, align 8
  %.cast155 = bitcast i64 %2426 to double
  %2430 = inttoptr i64 %2428 to double*
  %2431 = load double, double* %2430, align 8
  %2432 = fadd double %.cast155, %2431
  store double %2432, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  store double %2432, double* bitcast (%sa_type* @sa to double*), align 8
  %2433 = add i64 %2427, -72
  %2434 = add i64 %2425, 27
  store i64 %2434, i64* %PC, align 8
  %2435 = inttoptr i64 %2433 to i64*
  %2436 = load i64, i64* %2435, align 8
  %2437 = add i64 %2436, 1
  store i64 %2437, i64* %RAX, align 8, !tbaa !2428
  %2438 = icmp eq i64 %2436, -1
  %2439 = icmp eq i64 %2437, 0
  %2440 = or i1 %2438, %2439
  %2441 = zext i1 %2440 to i8
  store i8 %2441, i8* %23, align 1, !tbaa !2432
  %2442 = trunc i64 %2437 to i32
  %2443 = and i32 %2442, 255
  %2444 = tail call i32 @llvm.ctpop.i32(i32 %2443) #11
  %2445 = trunc i32 %2444 to i8
  %2446 = and i8 %2445, 1
  %2447 = xor i8 %2446, 1
  store i8 %2447, i8* %30, align 1, !tbaa !2446
  %2448 = xor i64 %2437, %2436
  %2449 = lshr i64 %2448, 4
  %2450 = trunc i64 %2449 to i8
  %2451 = and i8 %2450, 1
  store i8 %2451, i8* %35, align 1, !tbaa !2450
  %2452 = zext i1 %2439 to i8
  store i8 %2452, i8* %38, align 1, !tbaa !2447
  %2453 = lshr i64 %2437, 63
  %2454 = trunc i64 %2453 to i8
  store i8 %2454, i8* %41, align 1, !tbaa !2448
  %2455 = lshr i64 %2436, 63
  %2456 = xor i64 %2453, %2455
  %2457 = add nuw nsw i64 %2456, %2453
  %2458 = icmp eq i64 %2457, 2
  %2459 = zext i1 %2458 to i8
  store i8 %2459, i8* %47, align 1, !tbaa !2449
  %2460 = add i64 %2425, 35
  store i64 %2460, i64* %PC, align 8
  store i64 %2437, i64* %2435, align 8
  %2461 = load i64, i64* %PC, align 8
  %2462 = add i64 %2461, -82
  store i64 %2462, i64* %PC, align 8, !tbaa !2428
  br label %block_400aee

block_401cca:                                     ; preds = %block_401a16, %block_401cdf
  %2463 = phi i64 [ %.pre216, %block_401a16 ], [ %1184, %block_401cdf ]
  %2464 = load i64, i64* %RBP, align 8
  %2465 = add i64 %2464, -72
  %2466 = add i64 %2463, 4
  store i64 %2466, i64* %PC, align 8
  %2467 = inttoptr i64 %2465 to i64*
  %2468 = load i64, i64* %2467, align 8
  store i64 %2468, i64* %RAX, align 8, !tbaa !2428
  %2469 = add i64 %2464, -80
  %2470 = add i64 %2463, 8
  store i64 %2470, i64* %PC, align 8
  %2471 = inttoptr i64 %2469 to i64*
  %2472 = load i64, i64* %2471, align 8
  %2473 = add i64 %2472, -1
  store i64 %2473, i64* %RCX, align 8, !tbaa !2428
  %2474 = lshr i64 %2473, 63
  %2475 = sub i64 %2468, %2473
  %2476 = icmp ult i64 %2468, %2473
  %2477 = zext i1 %2476 to i8
  store i8 %2477, i8* %23, align 1, !tbaa !2432
  %2478 = trunc i64 %2475 to i32
  %2479 = and i32 %2478, 255
  %2480 = tail call i32 @llvm.ctpop.i32(i32 %2479) #11
  %2481 = trunc i32 %2480 to i8
  %2482 = and i8 %2481, 1
  %2483 = xor i8 %2482, 1
  store i8 %2483, i8* %30, align 1, !tbaa !2446
  %2484 = xor i64 %2473, %2468
  %2485 = xor i64 %2484, %2475
  %2486 = lshr i64 %2485, 4
  %2487 = trunc i64 %2486 to i8
  %2488 = and i8 %2487, 1
  store i8 %2488, i8* %35, align 1, !tbaa !2450
  %2489 = icmp eq i64 %2475, 0
  %2490 = zext i1 %2489 to i8
  store i8 %2490, i8* %38, align 1, !tbaa !2447
  %2491 = lshr i64 %2475, 63
  %2492 = trunc i64 %2491 to i8
  store i8 %2492, i8* %41, align 1, !tbaa !2448
  %2493 = lshr i64 %2468, 63
  %2494 = xor i64 %2474, %2493
  %2495 = xor i64 %2491, %2493
  %2496 = add nuw nsw i64 %2495, %2494
  %2497 = icmp eq i64 %2496, 2
  %2498 = zext i1 %2497 to i8
  store i8 %2498, i8* %47, align 1, !tbaa !2449
  %2499 = icmp ne i8 %2492, 0
  %2500 = xor i1 %2499, %2497
  %.demorgan225 = or i1 %2489, %2500
  %.v232 = select i1 %.demorgan225, i64 21, i64 153
  %2501 = add i64 %.v232, %2463
  store i64 %2501, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan225, label %block_401cdf, label %block_401d63

block_400821.loopexit:                            ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  br label %block_400821

block_400821:                                     ; preds = %block_400821.loopexit, %block_400817
  %2502 = phi i64 [ %2629, %block_400817 ], [ %3969, %block_400821.loopexit ]
  %MEMORY.5 = phi %struct.Memory* [ %1030, %block_400817 ], [ %3968, %block_400821.loopexit ]
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %2503 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 64) to i64*), align 16
  store i64 %2503, i64* bitcast (%scale_type* @scale to i64*), align 8
  store i64 %2503, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  store i64 %2503, i64* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to i64*), align 8
  %2504 = add i64 %2502, 7615
  %2505 = add i64 %2502, 50
  %2506 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2507 = add i64 %2506, -8
  %2508 = inttoptr i64 %2507 to i64*
  store i64 %2505, i64* %2508, align 8
  store i64 %2507, i64* %RSP, align 8, !tbaa !2428
  store i64 %2504, i64* %PC, align 8, !tbaa !2428
  %2509 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %2504, %struct.Memory* %MEMORY.5)
  %2510 = load i64, i64* %RBP, align 8
  %2511 = add i64 %2510, -72
  %2512 = load i64, i64* %PC, align 8
  %2513 = add i64 %2512, 8
  store i64 %2513, i64* %PC, align 8
  %2514 = inttoptr i64 %2511 to i64*
  store i64 1, i64* %2514, align 8
  %2515 = load i64, i64* %RBP, align 8
  %2516 = add i64 %2515, -124
  %2517 = load i32, i32* %EAX, align 4
  %2518 = load i64, i64* %PC, align 8
  %2519 = add i64 %2518, 3
  store i64 %2519, i64* %PC, align 8
  %2520 = inttoptr i64 %2516 to i32*
  store i32 %2517, i32* %2520, align 4
  %.pre206 = load i64, i64* %PC, align 8
  br label %block_40085e

block_4008c8:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  store <4 x i32> zeroinitializer, <4 x i32>* %193, align 1, !tbaa !2454
  %2521 = add i64 %3261, 12
  store i64 %2521, i64* %PC, align 8
  store i64 0, i64* bitcast (%nulltime_type* @nulltime to i64*), align 8
  br label %block_4008d4

block_40081c:                                     ; preds = %block_4007e5
  %2522 = add i64 %1074, -374
  store i64 %2522, i64* %PC, align 8, !tbaa !2428
  br label %block_4006a6

block_4011aa:                                     ; preds = %block_401195
  %2523 = add i64 %3010, 6
  store i64 %2523, i64* %PC, align 8
  %2524 = load i64, i64* %2976, align 8
  %2525 = sitofp i64 %2524 to double
  store double %2525, double* %74, align 1, !tbaa !2452
  %2526 = add i64 %2973, -48
  %2527 = add i64 %3010, 11
  store i64 %2527, i64* %PC, align 8
  %2528 = inttoptr i64 %2526 to double*
  %2529 = load double, double* %2528, align 8
  %2530 = fmul double %2525, %2529
  store double %2530, double* %74, align 1, !tbaa !2452
  %2531 = add i64 %2973, -24
  %2532 = add i64 %3010, 16
  store i64 %2532, i64* %PC, align 8
  %2533 = inttoptr i64 %2531 to double*
  store double %2530, double* %2533, align 8
  %2534 = load i64, i64* %RBP, align 8
  %2535 = add i64 %2534, -24
  %2536 = load i64, i64* %PC, align 8
  %2537 = add i64 %2536, 5
  store i64 %2537, i64* %PC, align 8
  %2538 = inttoptr i64 %2535 to i64*
  %2539 = load i64, i64* %2538, align 8
  store i64 %2539, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %2540 = add i64 %2536, 10
  store i64 %2540, i64* %PC, align 8
  %2541 = bitcast i64 %2539 to double
  %2542 = inttoptr i64 %2535 to double*
  %2543 = load double, double* %2542, align 8
  %2544 = fmul double %2541, %2543
  store double %2544, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %2545 = add i64 %2534, -40
  %2546 = add i64 %2536, 15
  store i64 %2546, i64* %PC, align 8
  %2547 = inttoptr i64 %2545 to double*
  store double %2544, double* %2547, align 8
  %2548 = load i64, i64* %RBP, align 8
  %2549 = add i64 %2548, -16
  %2550 = load i64, i64* %PC, align 8
  %2551 = add i64 %2550, 5
  store i64 %2551, i64* %PC, align 8
  %2552 = inttoptr i64 %2549 to i64*
  %2553 = load i64, i64* %2552, align 8
  store i64 %2553, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %2554 = add i64 %2548, -40
  %2555 = add i64 %2550, 10
  store i64 %2555, i64* %PC, align 8
  %2556 = inttoptr i64 %2554 to i64*
  %2557 = load i64, i64* %2556, align 8
  store i64 %2557, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %2558 = add i64 %2550, 15
  store i64 %2558, i64* %PC, align 8
  %2559 = load i64, i64* %2556, align 8
  store i64 %2559, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %2560 = add i64 %2550, 20
  store i64 %2560, i64* %PC, align 8
  %2561 = load i64, i64* %2556, align 8
  store i64 %2561, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %2562 = add i64 %2550, 25
  store i64 %2562, i64* %PC, align 8
  %2563 = load i64, i64* %2556, align 8
  store i64 %2563, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %2564 = add i64 %2550, 30
  store i64 %2564, i64* %PC, align 8
  %2565 = load i64, i64* %2556, align 8
  store i64 %2565, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %2566 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  store i64 %2566, i64* %107, align 1, !tbaa !2452
  store double 0.000000e+00, double* %109, align 1, !tbaa !2452
  %2567 = add i64 %2550, 44
  store i64 %2567, i64* %PC, align 8
  %.cast163 = bitcast i64 %2566 to double
  %2568 = inttoptr i64 %2554 to double*
  %2569 = load double, double* %2568, align 8
  %2570 = fmul double %.cast163, %2569
  %2571 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %2572 = fadd double %2570, %2571
  store double %2572, double* %106, align 1, !tbaa !2452
  store i64 0, i64* %108, align 1, !tbaa !2452
  %2573 = bitcast i64 %2565 to double
  %2574 = fmul double %2573, %2572
  %2575 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %2576 = fadd double %2574, %2575
  store double %2576, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %2577 = bitcast i64 %2563 to double
  %2578 = fmul double %2577, %2576
  %2579 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %2580 = fadd double %2578, %2579
  store double %2580, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2581 = bitcast i64 %2561 to double
  %2582 = fmul double %2581, %2580
  %2583 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %2584 = fadd double %2582, %2583
  store double %2584, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %2585 = bitcast i64 %2559 to double
  %2586 = fmul double %2585, %2584
  %2587 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %2588 = fadd double %2586, %2587
  store double %2588, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %2589 = bitcast i64 %2557 to double
  %2590 = fmul double %2589, %2588
  store double %2590, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %2591 = bitcast i64 %2553 to double
  %2592 = fadd double %2591, %2590
  %2593 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2594 = fadd double %2592, %2593
  store double %2594, double* %74, align 1, !tbaa !2452
  %2595 = add i64 %2550, 127
  store i64 %2595, i64* %PC, align 8
  %2596 = inttoptr i64 %2549 to double*
  store double %2594, double* %2596, align 8
  %2597 = load i64, i64* %RBP, align 8
  %2598 = add i64 %2597, -72
  %2599 = load i64, i64* %PC, align 8
  %2600 = add i64 %2599, 4
  store i64 %2600, i64* %PC, align 8
  %2601 = inttoptr i64 %2598 to i64*
  %2602 = load i64, i64* %2601, align 8
  %2603 = add i64 %2602, 1
  store i64 %2603, i64* %RAX, align 8, !tbaa !2428
  %2604 = icmp eq i64 %2602, -1
  %2605 = icmp eq i64 %2603, 0
  %2606 = or i1 %2604, %2605
  %2607 = zext i1 %2606 to i8
  store i8 %2607, i8* %23, align 1, !tbaa !2432
  %2608 = trunc i64 %2603 to i32
  %2609 = and i32 %2608, 255
  %2610 = tail call i32 @llvm.ctpop.i32(i32 %2609) #11
  %2611 = trunc i32 %2610 to i8
  %2612 = and i8 %2611, 1
  %2613 = xor i8 %2612, 1
  store i8 %2613, i8* %30, align 1, !tbaa !2446
  %2614 = xor i64 %2603, %2602
  %2615 = lshr i64 %2614, 4
  %2616 = trunc i64 %2615 to i8
  %2617 = and i8 %2616, 1
  store i8 %2617, i8* %35, align 1, !tbaa !2450
  %2618 = zext i1 %2605 to i8
  store i8 %2618, i8* %38, align 1, !tbaa !2447
  %2619 = lshr i64 %2603, 63
  %2620 = trunc i64 %2619 to i8
  store i8 %2620, i8* %41, align 1, !tbaa !2448
  %2621 = lshr i64 %2602, 63
  %2622 = xor i64 %2619, %2621
  %2623 = add nuw nsw i64 %2622, %2619
  %2624 = icmp eq i64 %2623, 2
  %2625 = zext i1 %2624 to i8
  store i8 %2625, i8* %47, align 1, !tbaa !2449
  %2626 = add i64 %2599, 12
  store i64 %2626, i64* %PC, align 8
  store i64 %2603, i64* %2601, align 8
  %2627 = load i64, i64* %PC, align 8
  %2628 = add i64 %2627, -191
  store i64 %2628, i64* %PC, align 8, !tbaa !2428
  br label %block_401195

block_400817:                                     ; preds = %block_4007e5
  %2629 = add i64 %1074, 10
  store i64 %2629, i64* %PC, align 8, !tbaa !2428
  br label %block_400821

block_400873:                                     ; preds = %block_40085e
  %2630 = add i64 %3300, 9
  store i64 %2630, i64* %PC, align 8
  %2631 = load i64, i64* %3266, align 8
  %2632 = add i64 %2631, 1
  store i64 %2632, i64* %RAX, align 8, !tbaa !2428
  %2633 = icmp eq i64 %2631, -1
  %2634 = icmp eq i64 %2632, 0
  %2635 = or i1 %2633, %2634
  %2636 = zext i1 %2635 to i8
  store i8 %2636, i8* %23, align 1, !tbaa !2432
  %2637 = trunc i64 %2632 to i32
  %2638 = and i32 %2637, 255
  %2639 = tail call i32 @llvm.ctpop.i32(i32 %2638) #11
  %2640 = trunc i32 %2639 to i8
  %2641 = and i8 %2640, 1
  %2642 = xor i8 %2641, 1
  store i8 %2642, i8* %30, align 1, !tbaa !2446
  %2643 = xor i64 %2632, %2631
  %2644 = lshr i64 %2643, 4
  %2645 = trunc i64 %2644 to i8
  %2646 = and i8 %2645, 1
  store i8 %2646, i8* %35, align 1, !tbaa !2450
  %2647 = zext i1 %2634 to i8
  store i8 %2647, i8* %38, align 1, !tbaa !2447
  %2648 = lshr i64 %2632, 63
  %2649 = trunc i64 %2648 to i8
  store i8 %2649, i8* %41, align 1, !tbaa !2448
  %2650 = lshr i64 %2631, 63
  %2651 = xor i64 %2648, %2650
  %2652 = add nuw nsw i64 %2651, %2648
  %2653 = icmp eq i64 %2652, 2
  %2654 = zext i1 %2653 to i8
  store i8 %2654, i8* %47, align 1, !tbaa !2449
  %2655 = add i64 %3300, 17
  store i64 %2655, i64* %PC, align 8
  store i64 %2632, i64* %3266, align 8
  %2656 = load i64, i64* %PC, align 8
  %2657 = add i64 %2656, -38
  store i64 %2657, i64* %PC, align 8, !tbaa !2428
  br label %block_40085e

block_40071b:                                     ; preds = %block_400730, %block_4006c2
  %2658 = phi i64 [ %2408, %block_400730 ], [ %.pre205, %block_4006c2 ]
  %2659 = load i64, i64* %RBP, align 8
  %2660 = add i64 %2659, -72
  %2661 = add i64 %2658, 4
  store i64 %2661, i64* %PC, align 8
  %2662 = inttoptr i64 %2660 to i64*
  %2663 = load i64, i64* %2662, align 8
  store i64 %2663, i64* %RAX, align 8, !tbaa !2428
  %2664 = add i64 %2659, -88
  %2665 = add i64 %2658, 8
  store i64 %2665, i64* %PC, align 8
  %2666 = inttoptr i64 %2664 to i64*
  %2667 = load i64, i64* %2666, align 8
  %2668 = add i64 %2667, -1
  store i64 %2668, i64* %RCX, align 8, !tbaa !2428
  %2669 = lshr i64 %2668, 63
  %2670 = sub i64 %2663, %2668
  %2671 = icmp ult i64 %2663, %2668
  %2672 = zext i1 %2671 to i8
  store i8 %2672, i8* %23, align 1, !tbaa !2432
  %2673 = trunc i64 %2670 to i32
  %2674 = and i32 %2673, 255
  %2675 = tail call i32 @llvm.ctpop.i32(i32 %2674) #11
  %2676 = trunc i32 %2675 to i8
  %2677 = and i8 %2676, 1
  %2678 = xor i8 %2677, 1
  store i8 %2678, i8* %30, align 1, !tbaa !2446
  %2679 = xor i64 %2668, %2663
  %2680 = xor i64 %2679, %2670
  %2681 = lshr i64 %2680, 4
  %2682 = trunc i64 %2681 to i8
  %2683 = and i8 %2682, 1
  store i8 %2683, i8* %35, align 1, !tbaa !2450
  %2684 = icmp eq i64 %2670, 0
  %2685 = zext i1 %2684 to i8
  store i8 %2685, i8* %38, align 1, !tbaa !2447
  %2686 = lshr i64 %2670, 63
  %2687 = trunc i64 %2686 to i8
  store i8 %2687, i8* %41, align 1, !tbaa !2448
  %2688 = lshr i64 %2663, 63
  %2689 = xor i64 %2669, %2688
  %2690 = xor i64 %2686, %2688
  %2691 = add nuw nsw i64 %2690, %2689
  %2692 = icmp eq i64 %2691, 2
  %2693 = zext i1 %2692 to i8
  store i8 %2693, i8* %47, align 1, !tbaa !2449
  %2694 = icmp ne i8 %2687, 0
  %2695 = xor i1 %2694, %2692
  %.demorgan = or i1 %2684, %2695
  %.v227 = select i1 %.demorgan, i64 21, i64 202
  %2696 = add i64 %.v227, %2658
  store i64 %2696, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan, label %block_400730, label %block_4007e5

block_401a16:                                     ; preds = %block_4018de
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %2697 = add i64 %1262, 3018
  %2698 = add i64 %1262, 15
  %2699 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2700 = add i64 %2699, -8
  %2701 = inttoptr i64 %2700 to i64*
  store i64 %2698, i64* %2701, align 8
  store i64 %2700, i64* %RSP, align 8, !tbaa !2428
  store i64 %2697, i64* %PC, align 8, !tbaa !2428
  %2702 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %2697, %struct.Memory* %1692)
  %2703 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 570), i64* %RDI, align 8, !tbaa !2428
  %2704 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to i64*), align 8
  store i64 %2704, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %2705 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 160) to i64*), align 16
  store i64 %2705, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %2706 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 144) to i64*), align 16
  store i64 %2706, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %2707 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %2708 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %2709 = fmul double %2707, %2708
  %2710 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %2711 = fsub double %2709, %2710
  store double %2711, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %2712 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %2713 = load double, double* bitcast (%four_type* @four to double*), align 8
  %2714 = fdiv double %2712, %2713
  store double %2714, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %2715 = load i64, i64* %RBP, align 8
  %2716 = add i64 %2715, -24
  %2717 = add i64 %2703, 93
  store i64 %2717, i64* %PC, align 8
  %2718 = inttoptr i64 %2716 to double*
  store double %2714, double* %2718, align 8
  %2719 = load i64, i64* %RBP, align 8
  %2720 = add i64 %2719, -24
  %2721 = load i64, i64* %PC, align 8
  %2722 = add i64 %2721, 5
  store i64 %2722, i64* %PC, align 8
  %2723 = inttoptr i64 %2720 to i64*
  %2724 = load i64, i64* %2723, align 8
  store i64 %2724, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %2725 = add i64 %2721, 10
  store i64 %2725, i64* %PC, align 8
  %2726 = bitcast i64 %2724 to double
  %2727 = inttoptr i64 %2720 to double*
  %2728 = load double, double* %2727, align 8
  %2729 = fmul double %2726, %2728
  store double %2729, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %2730 = add i64 %2719, -40
  %2731 = add i64 %2721, 15
  store i64 %2731, i64* %PC, align 8
  %2732 = inttoptr i64 %2730 to double*
  store double %2729, double* %2732, align 8
  %2733 = load i64, i64* %RBP, align 8
  %2734 = add i64 %2733, -24
  %2735 = load i64, i64* %PC, align 8
  %2736 = add i64 %2735, 5
  store i64 %2736, i64* %PC, align 8
  %2737 = inttoptr i64 %2734 to i64*
  %2738 = load i64, i64* %2737, align 8
  store i64 %2738, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %2739 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %2739, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %2740 = add i64 %2733, -40
  %2741 = add i64 %2735, 19
  store i64 %2741, i64* %PC, align 8
  %.cast172 = bitcast i64 %2739 to double
  %2742 = inttoptr i64 %2740 to double*
  %2743 = load double, double* %2742, align 8
  %2744 = fmul double %.cast172, %2743
  %2745 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %2746 = fadd double %2744, %2745
  store double %2746, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2747 = add i64 %2735, 33
  store i64 %2747, i64* %PC, align 8
  %2748 = load double, double* %2742, align 8
  %2749 = fmul double %2746, %2748
  %2750 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %2751 = fadd double %2749, %2750
  store double %2751, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2752 = add i64 %2735, 47
  store i64 %2752, i64* %PC, align 8
  %2753 = load double, double* %2742, align 8
  %2754 = fmul double %2751, %2753
  %2755 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %2756 = fadd double %2754, %2755
  store double %2756, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2757 = add i64 %2735, 61
  store i64 %2757, i64* %PC, align 8
  %2758 = load double, double* %2742, align 8
  %2759 = fmul double %2756, %2758
  %2760 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %2761 = fadd double %2759, %2760
  store double %2761, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2762 = add i64 %2735, 75
  store i64 %2762, i64* %PC, align 8
  %2763 = load double, double* %2742, align 8
  %2764 = fmul double %2761, %2763
  %2765 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %2766 = fadd double %2764, %2765
  store double %2766, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2767 = add i64 %2735, 89
  store i64 %2767, i64* %PC, align 8
  %2768 = load double, double* %2742, align 8
  %2769 = fmul double %2766, %2768
  %2770 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2771 = fadd double %2769, %2770
  store double %2771, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2772 = bitcast i64 %2738 to double
  %2773 = fmul double %2772, %2771
  store double %2773, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  store double %2773, double* bitcast (%sa_type* @sa to double*), align 8
  %2774 = add i64 %2735, 116
  store i64 %2774, i64* %PC, align 8
  %2775 = inttoptr i64 %2740 to i64*
  %2776 = load i64, i64* %2775, align 8
  store i64 %2776, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %2777 = add i64 %2735, 121
  store i64 %2777, i64* %PC, align 8
  %2778 = load i64, i64* %2775, align 8
  store i64 %2778, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %2779 = add i64 %2735, 126
  store i64 %2779, i64* %PC, align 8
  %2780 = load i64, i64* %2775, align 8
  store i64 %2780, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %2781 = add i64 %2735, 131
  store i64 %2781, i64* %PC, align 8
  %2782 = load i64, i64* %2775, align 8
  store i64 %2782, i64* %107, align 1, !tbaa !2452
  store double 0.000000e+00, double* %109, align 1, !tbaa !2452
  %2783 = add i64 %2735, 136
  store i64 %2783, i64* %PC, align 8
  %2784 = load i64, i64* %2775, align 8
  store i64 %2784, i64* %209, align 1, !tbaa !2452
  store double 0.000000e+00, double* %211, align 1, !tbaa !2452
  %2785 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  store i64 %2785, i64* %1551, align 1, !tbaa !2452
  store double 0.000000e+00, double* %1553, align 1, !tbaa !2452
  %2786 = add i64 %2735, 152
  store i64 %2786, i64* %PC, align 8
  %.cast173 = bitcast i64 %2785 to double
  %2787 = load double, double* %2742, align 8
  %2788 = fmul double %.cast173, %2787
  %2789 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %2790 = fadd double %2788, %2789
  store double %2790, double* %1550, align 1, !tbaa !2452
  store i64 0, i64* %1552, align 1, !tbaa !2452
  %2791 = bitcast i64 %2784 to double
  %2792 = fmul double %2791, %2790
  %2793 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %2794 = fadd double %2792, %2793
  store double %2794, double* %121, align 1, !tbaa !2452
  store i64 0, i64* %210, align 1, !tbaa !2452
  %2795 = bitcast i64 %2782 to double
  %2796 = fmul double %2795, %2794
  %2797 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %2798 = fadd double %2796, %2797
  store double %2798, double* %106, align 1, !tbaa !2452
  store i64 0, i64* %108, align 1, !tbaa !2452
  %2799 = bitcast i64 %2780 to double
  %2800 = fmul double %2799, %2798
  %2801 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %2802 = fadd double %2800, %2801
  store double %2802, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %2803 = bitcast i64 %2778 to double
  %2804 = fmul double %2803, %2802
  %2805 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %2806 = fadd double %2804, %2805
  store double %2806, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2807 = bitcast i64 %2776 to double
  %2808 = fmul double %2807, %2806
  %2809 = fadd double %2770, %2808
  store double %2809, double* bitcast (%sb_type* @sb to double*), align 8
  %2810 = fmul double %2773, %2809
  store double %2810, double* bitcast (%sa_type* @sa to double*), align 8
  %2811 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %2812 = load double, double* %86, align 1
  %2813 = fdiv double %2811, %2812
  store double %2813, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  store double %2813, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 152) to double*), align 8
  %2814 = load i64, i64* %RBP, align 8
  %2815 = add i64 %2814, -48
  %2816 = add i64 %2735, 291
  store i64 %2816, i64* %PC, align 8
  %2817 = inttoptr i64 %2815 to i64*
  %2818 = load i64, i64* %2817, align 8
  store i64 %2818, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %2819 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %2819, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %2820 = load i64, i64* bitcast (%two_type* @two to i64*), align 8
  store i64 %2820, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %2821 = add i64 %2814, -16
  %2822 = add i64 %2735, 314
  store i64 %2822, i64* %PC, align 8
  %.cast174 = bitcast i64 %2820 to double
  %2823 = inttoptr i64 %2821 to double*
  %2824 = load double, double* %2823, align 8
  %2825 = fmul double %.cast174, %2824
  store double %2825, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %2826 = bitcast i64 %2819 to double
  %2827 = fadd double %2826, %2825
  store double %2827, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %2828 = bitcast i64 %2818 to double
  %2829 = fmul double %2828, %2827
  %2830 = fdiv double %2829, %.cast174
  store double %2830, double* bitcast (%sa_type* @sa to double*), align 8
  %2831 = load i64, i64* %81, align 1
  store i64 %2831, i64* bitcast (%sb_type* @sb to i64*), align 8
  %2832 = bitcast i64 %2831 to double
  %2833 = fsub double %2830, %2832
  store double %2833, double* bitcast (%sc_type* @sc to double*), align 8
  %2834 = load double, double* bitcast (%one_type* @one to double*), align 8
  %2835 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 152) to double*), align 8
  %2836 = fdiv double %2834, %2835
  store double %2836, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 160) to double*), align 16
  %2837 = load <2 x i32>, <2 x i32>* %1347, align 1
  %2838 = load <2 x i32>, <2 x i32>* %1349, align 1
  %2839 = extractelement <2 x i32> %2837, i32 0
  store i32 %2839, i32* %1352, align 1, !tbaa !2455
  %2840 = extractelement <2 x i32> %2837, i32 1
  store i32 %2840, i32* %1355, align 1, !tbaa !2455
  %2841 = extractelement <2 x i32> %2838, i32 0
  store i32 %2841, i32* %1357, align 1, !tbaa !2455
  %2842 = extractelement <2 x i32> %2838, i32 1
  store i32 %2842, i32* %1360, align 1, !tbaa !2455
  %2843 = load double, double* %80, align 1
  %2844 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %2845 = fmul double %2843, %2844
  store double %2845, double* %80, align 1, !tbaa !2452
  store i32 %2839, i32* %1364, align 1, !tbaa !2455
  store i32 %2840, i32* %1366, align 1, !tbaa !2455
  store i32 %2841, i32* %1367, align 1, !tbaa !2455
  store i32 %2842, i32* %1369, align 1, !tbaa !2455
  %2846 = load double, double* %86, align 1
  %2847 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 144) to double*), align 16
  %2848 = fmul double %2846, %2847
  store double %2848, double* %86, align 1, !tbaa !2452
  %2849 = bitcast <2 x i32> %2837 to double
  %2850 = fmul double %2836, %2849
  %2851 = add i64 %2814, -256
  %2852 = add i64 %2735, 444
  store i64 %2852, i64* %PC, align 8
  %2853 = inttoptr i64 %2851 to double*
  store double %2850, double* %2853, align 8
  %2854 = load i64, i64* %PC, align 8
  %2855 = load <2 x i32>, <2 x i32>* %1380, align 1
  %2856 = load <2 x i32>, <2 x i32>* %1382, align 1
  %2857 = extractelement <2 x i32> %2855, i32 0
  store i32 %2857, i32* %187, align 1, !tbaa !2455
  %2858 = extractelement <2 x i32> %2855, i32 1
  store i32 %2858, i32* %189, align 1, !tbaa !2455
  %2859 = extractelement <2 x i32> %2856, i32 0
  store i32 %2859, i32* %190, align 1, !tbaa !2455
  %2860 = extractelement <2 x i32> %2856, i32 1
  store i32 %2860, i32* %192, align 1, !tbaa !2455
  %2861 = load <2 x i32>, <2 x i32>* %1388, align 1
  %2862 = load <2 x i32>, <2 x i32>* %1390, align 1
  %2863 = extractelement <2 x i32> %2861, i32 0
  store i32 %2863, i32* %1352, align 1, !tbaa !2455
  %2864 = extractelement <2 x i32> %2861, i32 1
  store i32 %2864, i32* %1355, align 1, !tbaa !2455
  %2865 = extractelement <2 x i32> %2862, i32 0
  store i32 %2865, i32* %1357, align 1, !tbaa !2455
  %2866 = extractelement <2 x i32> %2862, i32 1
  store i32 %2866, i32* %1360, align 1, !tbaa !2455
  %2867 = load i64, i64* %RBP, align 8
  %2868 = add i64 %2867, -256
  %2869 = add i64 %2854, 14
  store i64 %2869, i64* %PC, align 8
  %2870 = inttoptr i64 %2868 to i64*
  %2871 = load i64, i64* %2870, align 8
  store i64 %2871, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %2872 = add i64 %2867, -260
  %2873 = load i32, i32* %EAX, align 4
  %2874 = add i64 %2854, 20
  store i64 %2874, i64* %PC, align 8
  %2875 = inttoptr i64 %2872 to i32*
  store i32 %2873, i32* %2875, align 4
  %2876 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2451
  %2877 = add i64 %2876, -6161
  %2878 = add i64 %2876, 7
  %2879 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2880 = add i64 %2879, -8
  %2881 = inttoptr i64 %2880 to i64*
  store i64 %2878, i64* %2881, align 8
  store i64 %2880, i64* %RSP, align 8, !tbaa !2428
  store i64 %2877, i64* %PC, align 8, !tbaa !2428
  %2882 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %2702)
  %2883 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %2884 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 152) to i64*), align 8
  store i64 %2884, i64* %75, align 1, !tbaa !2452
  store i32 0, i32* %1352, align 1, !tbaa !2454
  store i32 0, i32* %1355, align 1, !tbaa !2454
  %2885 = load i64, i64* %RBP, align 8
  %2886 = add i64 %2885, -16
  %2887 = add i64 %2883, 26
  store i64 %2887, i64* %PC, align 8
  %2888 = load i64, i64* %81, align 1
  %2889 = inttoptr i64 %2886 to i64*
  store i64 %2888, i64* %2889, align 8
  %2890 = load i64, i64* %PC, align 8
  %2891 = load i64, i64* bitcast (%one_type* @one to i64*), align 8
  store i64 %2891, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %2892 = load i64, i64* %RBP, align 8
  %2893 = add i64 %2892, -40
  %2894 = add i64 %2890, 14
  store i64 %2894, i64* %PC, align 8
  %2895 = inttoptr i64 %2893 to i64*
  store i64 %2891, i64* %2895, align 8
  %2896 = load i64, i64* %PC, align 8
  %2897 = load i64, i64* %75, align 1
  store i64 %2897, i64* bitcast (%sa_type* @sa to i64*), align 8
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %2898 = load i64, i64* %RBP, align 8
  %2899 = add i64 %2898, -80
  %2900 = add i64 %2896, 24
  store i64 %2900, i64* %PC, align 8
  %2901 = inttoptr i64 %2899 to i64*
  %2902 = load i64, i64* %2901, align 8
  %2903 = sitofp i64 %2902 to double
  store double %2903, double* %80, align 1, !tbaa !2452
  %2904 = bitcast i64 %2897 to double
  %2905 = fdiv double %2904, %2903
  store double %2905, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %2906 = add i64 %2898, -32
  %2907 = add i64 %2896, 33
  store i64 %2907, i64* %PC, align 8
  %2908 = inttoptr i64 %2906 to double*
  store double %2905, double* %2908, align 8
  %2909 = load i64, i64* %RBP, align 8
  %2910 = add i64 %2909, -264
  %2911 = load i32, i32* %EAX, align 4
  %2912 = load i64, i64* %PC, align 8
  %2913 = add i64 %2912, 6
  store i64 %2913, i64* %PC, align 8
  %2914 = inttoptr i64 %2910 to i32*
  store i32 %2911, i32* %2914, align 4
  %2915 = load i64, i64* %PC, align 8
  %2916 = add i64 %2915, 2345
  %2917 = add i64 %2915, 5
  %2918 = load i64, i64* %RSP, align 8, !tbaa !2428
  %2919 = add i64 %2918, -8
  %2920 = inttoptr i64 %2919 to i64*
  store i64 %2917, i64* %2920, align 8
  store i64 %2919, i64* %RSP, align 8, !tbaa !2428
  store i64 %2916, i64* %PC, align 8, !tbaa !2428
  %2921 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %2916, %struct.Memory* %2882)
  %2922 = load i64, i64* %RBP, align 8
  %2923 = add i64 %2922, -72
  %2924 = load i64, i64* %PC, align 8
  %2925 = add i64 %2924, 8
  store i64 %2925, i64* %PC, align 8
  %2926 = inttoptr i64 %2923 to i64*
  store i64 1, i64* %2926, align 8
  %2927 = load i64, i64* %RBP, align 8
  %2928 = add i64 %2927, -268
  %2929 = load i32, i32* %EAX, align 4
  %2930 = load i64, i64* %PC, align 8
  %2931 = add i64 %2930, 6
  store i64 %2931, i64* %PC, align 8
  %2932 = inttoptr i64 %2928 to i32*
  store i32 %2929, i32* %2932, align 4
  %.pre216 = load i64, i64* %PC, align 8
  br label %block_401cca

block_400bdf:                                     ; preds = %block_400b93, %block_400bed
  %2933 = phi i64 [ %.pre211, %block_400b93 ], [ %1024, %block_400bed ]
  %2934 = load i64, i64* %RBP, align 8
  %2935 = add i64 %2934, -72
  %2936 = add i64 %2933, 4
  store i64 %2936, i64* %PC, align 8
  %2937 = inttoptr i64 %2935 to i64*
  %2938 = load i64, i64* %2937, align 8
  store i64 %2938, i64* %RAX, align 8, !tbaa !2428
  %2939 = add i64 %2934, -80
  %2940 = add i64 %2933, 8
  store i64 %2940, i64* %PC, align 8
  %2941 = inttoptr i64 %2939 to i64*
  %2942 = load i64, i64* %2941, align 8
  %2943 = sub i64 %2938, %2942
  %2944 = icmp ult i64 %2938, %2942
  %2945 = zext i1 %2944 to i8
  store i8 %2945, i8* %23, align 1, !tbaa !2432
  %2946 = trunc i64 %2943 to i32
  %2947 = and i32 %2946, 255
  %2948 = tail call i32 @llvm.ctpop.i32(i32 %2947) #11
  %2949 = trunc i32 %2948 to i8
  %2950 = and i8 %2949, 1
  %2951 = xor i8 %2950, 1
  store i8 %2951, i8* %30, align 1, !tbaa !2446
  %2952 = xor i64 %2942, %2938
  %2953 = xor i64 %2952, %2943
  %2954 = lshr i64 %2953, 4
  %2955 = trunc i64 %2954 to i8
  %2956 = and i8 %2955, 1
  store i8 %2956, i8* %35, align 1, !tbaa !2450
  %2957 = icmp eq i64 %2943, 0
  %2958 = zext i1 %2957 to i8
  store i8 %2958, i8* %38, align 1, !tbaa !2447
  %2959 = lshr i64 %2943, 63
  %2960 = trunc i64 %2959 to i8
  store i8 %2960, i8* %41, align 1, !tbaa !2448
  %2961 = lshr i64 %2938, 63
  %2962 = lshr i64 %2942, 63
  %2963 = xor i64 %2962, %2961
  %2964 = xor i64 %2959, %2961
  %2965 = add nuw nsw i64 %2964, %2963
  %2966 = icmp eq i64 %2965, 2
  %2967 = zext i1 %2966 to i8
  store i8 %2967, i8* %47, align 1, !tbaa !2449
  %2968 = icmp ne i8 %2960, 0
  %2969 = xor i1 %2968, %2966
  %.demorgan220 = or i1 %2957, %2969
  %.v235 = select i1 %.demorgan220, i64 14, i64 178
  %2970 = add i64 %.v235, %2933
  %2971 = add i64 %2970, 10
  store i64 %2971, i64* %PC, align 8
  br i1 %.demorgan220, label %block_400bed, label %block_400c91

block_401195:                                     ; preds = %block_4011aa, %block_400f3f
  %2972 = phi i64 [ %2628, %block_4011aa ], [ %.pre213, %block_400f3f ]
  %2973 = load i64, i64* %RBP, align 8
  %2974 = add i64 %2973, -72
  %2975 = add i64 %2972, 4
  store i64 %2975, i64* %PC, align 8
  %2976 = inttoptr i64 %2974 to i64*
  %2977 = load i64, i64* %2976, align 8
  store i64 %2977, i64* %RAX, align 8, !tbaa !2428
  %2978 = add i64 %2973, -80
  %2979 = add i64 %2972, 8
  store i64 %2979, i64* %PC, align 8
  %2980 = inttoptr i64 %2978 to i64*
  %2981 = load i64, i64* %2980, align 8
  %2982 = add i64 %2981, -1
  store i64 %2982, i64* %RCX, align 8, !tbaa !2428
  %2983 = lshr i64 %2982, 63
  %2984 = sub i64 %2977, %2982
  %2985 = icmp ult i64 %2977, %2982
  %2986 = zext i1 %2985 to i8
  store i8 %2986, i8* %23, align 1, !tbaa !2432
  %2987 = trunc i64 %2984 to i32
  %2988 = and i32 %2987, 255
  %2989 = tail call i32 @llvm.ctpop.i32(i32 %2988) #11
  %2990 = trunc i32 %2989 to i8
  %2991 = and i8 %2990, 1
  %2992 = xor i8 %2991, 1
  store i8 %2992, i8* %30, align 1, !tbaa !2446
  %2993 = xor i64 %2982, %2977
  %2994 = xor i64 %2993, %2984
  %2995 = lshr i64 %2994, 4
  %2996 = trunc i64 %2995 to i8
  %2997 = and i8 %2996, 1
  store i8 %2997, i8* %35, align 1, !tbaa !2450
  %2998 = icmp eq i64 %2984, 0
  %2999 = zext i1 %2998 to i8
  store i8 %2999, i8* %38, align 1, !tbaa !2447
  %3000 = lshr i64 %2984, 63
  %3001 = trunc i64 %3000 to i8
  store i8 %3001, i8* %41, align 1, !tbaa !2448
  %3002 = lshr i64 %2977, 63
  %3003 = xor i64 %2983, %3002
  %3004 = xor i64 %3000, %3002
  %3005 = add nuw nsw i64 %3004, %3003
  %3006 = icmp eq i64 %3005, 2
  %3007 = zext i1 %3006 to i8
  store i8 %3007, i8* %47, align 1, !tbaa !2449
  %3008 = icmp ne i8 %3001, 0
  %3009 = xor i1 %3008, %3006
  %.demorgan222 = or i1 %2998, %3009
  %.v229 = select i1 %.demorgan222, i64 21, i64 196
  %3010 = add i64 %.v229, %2972
  store i64 %3010, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan222, label %block_4011aa, label %block_401259

block_401514:                                     ; preds = %block_4014ff
  %3011 = add i64 %901, 6
  store i64 %3011, i64* %PC, align 8
  %3012 = load i64, i64* %867, align 8
  %3013 = sitofp i64 %3012 to double
  store double %3013, double* %74, align 1, !tbaa !2452
  %3014 = add i64 %864, -48
  %3015 = add i64 %901, 11
  store i64 %3015, i64* %PC, align 8
  %3016 = inttoptr i64 %3014 to double*
  %3017 = load double, double* %3016, align 8
  %3018 = fmul double %3013, %3017
  store double %3018, double* %74, align 1, !tbaa !2452
  %3019 = add i64 %864, -24
  %3020 = add i64 %901, 16
  store i64 %3020, i64* %PC, align 8
  %3021 = inttoptr i64 %3019 to double*
  store double %3018, double* %3021, align 8
  %3022 = load i64, i64* %RBP, align 8
  %3023 = add i64 %3022, -24
  %3024 = load i64, i64* %PC, align 8
  %3025 = add i64 %3024, 5
  store i64 %3025, i64* %PC, align 8
  %3026 = inttoptr i64 %3023 to i64*
  %3027 = load i64, i64* %3026, align 8
  store i64 %3027, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3028 = add i64 %3024, 10
  store i64 %3028, i64* %PC, align 8
  %3029 = bitcast i64 %3027 to double
  %3030 = inttoptr i64 %3023 to double*
  %3031 = load double, double* %3030, align 8
  %3032 = fmul double %3029, %3031
  store double %3032, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %3033 = add i64 %3022, -40
  %3034 = add i64 %3024, 15
  store i64 %3034, i64* %PC, align 8
  %3035 = inttoptr i64 %3033 to double*
  store double %3032, double* %3035, align 8
  %3036 = load i64, i64* %RBP, align 8
  %3037 = add i64 %3036, -24
  %3038 = load i64, i64* %PC, align 8
  %3039 = add i64 %3038, 5
  store i64 %3039, i64* %PC, align 8
  %3040 = inttoptr i64 %3037 to i64*
  %3041 = load i64, i64* %3040, align 8
  store i64 %3041, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3042 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %3042, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %3043 = add i64 %3036, -40
  %3044 = add i64 %3038, 19
  store i64 %3044, i64* %PC, align 8
  %.cast166 = bitcast i64 %3042 to double
  %3045 = inttoptr i64 %3043 to double*
  %3046 = load double, double* %3045, align 8
  %3047 = fmul double %.cast166, %3046
  %3048 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %3049 = fadd double %3047, %3048
  store double %3049, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3050 = add i64 %3038, 33
  store i64 %3050, i64* %PC, align 8
  %3051 = load double, double* %3045, align 8
  %3052 = fmul double %3049, %3051
  %3053 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %3054 = fadd double %3052, %3053
  store double %3054, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3055 = add i64 %3038, 47
  store i64 %3055, i64* %PC, align 8
  %3056 = load double, double* %3045, align 8
  %3057 = fmul double %3054, %3056
  %3058 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %3059 = fadd double %3057, %3058
  store double %3059, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3060 = add i64 %3038, 61
  store i64 %3060, i64* %PC, align 8
  %3061 = load double, double* %3045, align 8
  %3062 = fmul double %3059, %3061
  %3063 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %3064 = fadd double %3062, %3063
  store double %3064, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3065 = add i64 %3038, 75
  store i64 %3065, i64* %PC, align 8
  %3066 = load double, double* %3045, align 8
  %3067 = fmul double %3064, %3066
  %3068 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %3069 = fadd double %3067, %3068
  store double %3069, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3070 = add i64 %3038, 89
  store i64 %3070, i64* %PC, align 8
  %3071 = load double, double* %3045, align 8
  %3072 = fmul double %3069, %3071
  %3073 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3074 = fadd double %3072, %3073
  store double %3074, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3075 = bitcast i64 %3041 to double
  %3076 = fmul double %3075, %3074
  store double %3076, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %3077 = add i64 %3036, -32
  %3078 = add i64 %3038, 107
  store i64 %3078, i64* %PC, align 8
  %3079 = inttoptr i64 %3077 to double*
  store double %3076, double* %3079, align 8
  %3080 = load i64, i64* %RBP, align 8
  %3081 = add i64 %3080, -16
  %3082 = load i64, i64* %PC, align 8
  %3083 = add i64 %3082, 5
  store i64 %3083, i64* %PC, align 8
  %3084 = inttoptr i64 %3081 to i64*
  %3085 = load i64, i64* %3084, align 8
  store i64 %3085, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3086 = add i64 %3080, -32
  %3087 = add i64 %3082, 10
  store i64 %3087, i64* %PC, align 8
  %3088 = inttoptr i64 %3086 to i64*
  %3089 = load i64, i64* %3088, align 8
  store i64 %3089, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %3090 = add i64 %3080, -40
  %3091 = add i64 %3082, 15
  store i64 %3091, i64* %PC, align 8
  %3092 = inttoptr i64 %3090 to i64*
  %3093 = load i64, i64* %3092, align 8
  store i64 %3093, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %3094 = add i64 %3082, 20
  store i64 %3094, i64* %PC, align 8
  %3095 = load i64, i64* %3092, align 8
  store i64 %3095, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %3096 = add i64 %3082, 25
  store i64 %3096, i64* %PC, align 8
  %3097 = load i64, i64* %3092, align 8
  store i64 %3097, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %3098 = add i64 %3082, 30
  store i64 %3098, i64* %PC, align 8
  %3099 = load i64, i64* %3092, align 8
  store i64 %3099, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %3100 = add i64 %3082, 35
  store i64 %3100, i64* %PC, align 8
  %3101 = load i64, i64* %3092, align 8
  store i64 %3101, i64* %107, align 1, !tbaa !2452
  store double 0.000000e+00, double* %109, align 1, !tbaa !2452
  %3102 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  store i64 %3102, i64* %209, align 1, !tbaa !2452
  store double 0.000000e+00, double* %211, align 1, !tbaa !2452
  %3103 = add i64 %3082, 49
  store i64 %3103, i64* %PC, align 8
  %.cast167 = bitcast i64 %3102 to double
  %3104 = inttoptr i64 %3090 to double*
  %3105 = load double, double* %3104, align 8
  %3106 = fmul double %.cast167, %3105
  %3107 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %3108 = fadd double %3106, %3107
  store double %3108, double* %121, align 1, !tbaa !2452
  store i64 0, i64* %210, align 1, !tbaa !2452
  %3109 = bitcast i64 %3101 to double
  %3110 = fmul double %3109, %3108
  %3111 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %3112 = fadd double %3110, %3111
  store double %3112, double* %106, align 1, !tbaa !2452
  store i64 0, i64* %108, align 1, !tbaa !2452
  %3113 = bitcast i64 %3099 to double
  %3114 = fmul double %3113, %3112
  %3115 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %3116 = fadd double %3114, %3115
  store double %3116, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %3117 = bitcast i64 %3097 to double
  %3118 = fmul double %3117, %3116
  %3119 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %3120 = fadd double %3118, %3119
  store double %3120, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %3121 = bitcast i64 %3095 to double
  %3122 = fmul double %3121, %3120
  %3123 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %3124 = fadd double %3122, %3123
  store double %3124, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %3125 = bitcast i64 %3093 to double
  %3126 = fmul double %3125, %3124
  %3127 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3128 = fadd double %3126, %3127
  store double %3128, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %3129 = bitcast i64 %3089 to double
  %3130 = fdiv double %3129, %3128
  store double %3130, double* %80, align 1, !tbaa !2452
  %3131 = bitcast i64 %3085 to double
  %3132 = fadd double %3131, %3130
  store double %3132, double* %74, align 1, !tbaa !2452
  %3133 = add i64 %3082, 136
  store i64 %3133, i64* %PC, align 8
  %3134 = inttoptr i64 %3081 to double*
  store double %3132, double* %3134, align 8
  %3135 = load i64, i64* %RBP, align 8
  %3136 = add i64 %3135, -72
  %3137 = load i64, i64* %PC, align 8
  %3138 = add i64 %3137, 4
  store i64 %3138, i64* %PC, align 8
  %3139 = inttoptr i64 %3136 to i64*
  %3140 = load i64, i64* %3139, align 8
  %3141 = add i64 %3140, 1
  store i64 %3141, i64* %RAX, align 8, !tbaa !2428
  %3142 = icmp eq i64 %3140, -1
  %3143 = icmp eq i64 %3141, 0
  %3144 = or i1 %3142, %3143
  %3145 = zext i1 %3144 to i8
  store i8 %3145, i8* %23, align 1, !tbaa !2432
  %3146 = trunc i64 %3141 to i32
  %3147 = and i32 %3146, 255
  %3148 = tail call i32 @llvm.ctpop.i32(i32 %3147) #11
  %3149 = trunc i32 %3148 to i8
  %3150 = and i8 %3149, 1
  %3151 = xor i8 %3150, 1
  store i8 %3151, i8* %30, align 1, !tbaa !2446
  %3152 = xor i64 %3141, %3140
  %3153 = lshr i64 %3152, 4
  %3154 = trunc i64 %3153 to i8
  %3155 = and i8 %3154, 1
  store i8 %3155, i8* %35, align 1, !tbaa !2450
  %3156 = zext i1 %3143 to i8
  store i8 %3156, i8* %38, align 1, !tbaa !2447
  %3157 = lshr i64 %3141, 63
  %3158 = trunc i64 %3157 to i8
  store i8 %3158, i8* %41, align 1, !tbaa !2448
  %3159 = lshr i64 %3140, 63
  %3160 = xor i64 %3157, %3159
  %3161 = add nuw nsw i64 %3160, %3157
  %3162 = icmp eq i64 %3161, 2
  %3163 = zext i1 %3162 to i8
  store i8 %3163, i8* %47, align 1, !tbaa !2449
  %3164 = add i64 %3137, 12
  store i64 %3164, i64* %PC, align 8
  store i64 %3141, i64* %3139, align 8
  %3165 = load i64, i64* %PC, align 8
  %3166 = add i64 %3165, -307
  store i64 %3166, i64* %PC, align 8, !tbaa !2428
  br label %block_4014ff

block_400b93:                                     ; preds = %block_400b87, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %3167 = phi i64 [ %3939, %block_400b87 ], [ %1745, %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1 ]
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store <4 x i32> zeroinitializer, <4 x i32>* %193, align 1, !tbaa !2454
  %3168 = load i64, i64* %RBP, align 8
  %3169 = add i64 %3168, -80
  %3170 = add i64 %3167, 19
  store i64 %3170, i64* %PC, align 8
  %3171 = inttoptr i64 %3169 to i64*
  %3172 = load i64, i64* %3171, align 8
  %3173 = sitofp i64 %3172 to double
  store double %3173, double* bitcast (%sc_type* @sc to double*), align 8
  %3174 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %3174, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %3175 = add i64 %3168, -24
  %3176 = add i64 %3167, 42
  store i64 %3176, i64* %PC, align 8
  %3177 = inttoptr i64 %3175 to i64*
  store i64 %3174, i64* %3177, align 8
  %3178 = load i64, i64* %RBP, align 8
  %3179 = add i64 %3178, -32
  %3180 = load i64, i64* %PC, align 8
  %3181 = add i64 %3180, 5
  store i64 %3181, i64* %PC, align 8
  %3182 = load i64, i64* %75, align 1
  %3183 = inttoptr i64 %3179 to i64*
  store i64 %3182, i64* %3183, align 8
  %3184 = load i64, i64* %RBP, align 8
  %3185 = add i64 %3184, -40
  %3186 = load i64, i64* %PC, align 8
  %3187 = add i64 %3186, 5
  store i64 %3187, i64* %PC, align 8
  %3188 = load i64, i64* %75, align 1
  %3189 = inttoptr i64 %3185 to i64*
  store i64 %3188, i64* %3189, align 8
  %3190 = load i64, i64* %RBP, align 8
  %3191 = add i64 %3190, -48
  %3192 = load i64, i64* %PC, align 8
  %3193 = add i64 %3192, 5
  store i64 %3193, i64* %PC, align 8
  %3194 = load i64, i64* %75, align 1
  %3195 = inttoptr i64 %3191 to i64*
  store i64 %3194, i64* %3195, align 8
  %3196 = load i64, i64* %PC, align 8
  %3197 = add i64 %3196, 6676
  %3198 = add i64 %3196, 5
  %3199 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3200 = add i64 %3199, -8
  %3201 = inttoptr i64 %3200 to i64*
  store i64 %3198, i64* %3201, align 8
  store i64 %3200, i64* %RSP, align 8, !tbaa !2428
  store i64 %3197, i64* %PC, align 8, !tbaa !2428
  %3202 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %3197, %struct.Memory* %1738)
  %3203 = load i64, i64* %RBP, align 8
  %3204 = add i64 %3203, -72
  %3205 = load i64, i64* %PC, align 8
  %3206 = add i64 %3205, 8
  store i64 %3206, i64* %PC, align 8
  %3207 = inttoptr i64 %3204 to i64*
  store i64 1, i64* %3207, align 8
  %3208 = load i64, i64* %RBP, align 8
  %3209 = add i64 %3208, -152
  %3210 = load i32, i32* %EAX, align 4
  %3211 = load i64, i64* %PC, align 8
  %3212 = add i64 %3211, 6
  store i64 %3212, i64* %PC, align 8
  %3213 = inttoptr i64 %3209 to i32*
  store i32 %3210, i32* %3213, align 4
  %.pre211 = load i64, i64* %PC, align 8
  br label %block_400bdf

block_400889:                                     ; preds = %block_40085e
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %3214 = add i64 %3300, 7511
  %3215 = add i64 %3300, 15
  %3216 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3217 = add i64 %3216, -8
  %3218 = inttoptr i64 %3217 to i64*
  store i64 %3215, i64* %3218, align 8
  store i64 %3217, i64* %RSP, align 8, !tbaa !2428
  store i64 %3214, i64* %PC, align 8, !tbaa !2428
  %3219 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %3214, %struct.Memory* %2509)
  %3220 = load i64, i64* %PC, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %193, align 1, !tbaa !2454
  %3221 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %3222 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %3223 = fmul double %3221, %3222
  store double %3223, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  store double %3223, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  %3224 = add i64 %3220, 39
  store i64 %3224, i64* %PC, align 8
  %3225 = fcmp uno double %3223, 0.000000e+00
  br i1 %3225, label %3226, label %3236

; <label>:3226:                                   ; preds = %block_400889
  %3227 = fadd double %3223, 0.000000e+00
  %3228 = bitcast double %3227 to i64
  %3229 = and i64 %3228, 9221120237041090560
  %3230 = icmp eq i64 %3229, 9218868437227405312
  %3231 = and i64 %3228, 2251799813685247
  %3232 = icmp ne i64 %3231, 0
  %3233 = and i1 %3230, %3232
  br i1 %3233, label %3234, label %3242

; <label>:3234:                                   ; preds = %3226
  %3235 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3224, %struct.Memory* %3219) #14
  %.pre207 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:3236:                                   ; preds = %block_400889
  %3237 = fcmp olt double %3223, 0.000000e+00
  br i1 %3237, label %3242, label %3238

; <label>:3238:                                   ; preds = %3236
  %3239 = fcmp ogt double %3223, 0.000000e+00
  br i1 %3239, label %3242, label %3240

; <label>:3240:                                   ; preds = %3238
  %3241 = fcmp oeq double %3223, 0.000000e+00
  br i1 %3241, label %3242, label %3246

; <label>:3242:                                   ; preds = %3240, %3238, %3236, %3226
  %3243 = phi i8 [ 0, %3236 ], [ 0, %3238 ], [ 1, %3240 ], [ 1, %3226 ]
  %3244 = phi i8 [ 0, %3236 ], [ 0, %3238 ], [ 0, %3240 ], [ 1, %3226 ]
  %3245 = phi i8 [ 0, %3236 ], [ 1, %3238 ], [ 0, %3240 ], [ 1, %3226 ]
  store i8 %3243, i8* %38, align 1, !tbaa !2451
  store i8 %3244, i8* %30, align 1, !tbaa !2451
  store i8 %3245, i8* %23, align 1, !tbaa !2451
  br label %3246

; <label>:3246:                                   ; preds = %3242, %3240
  store i8 0, i8* %47, align 1, !tbaa !2451
  store i8 0, i8* %41, align 1, !tbaa !2451
  store i8 0, i8* %35, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %3246, %3234
  %3247 = phi i64 [ %.pre207, %3234 ], [ %3224, %3246 ]
  %3248 = phi %struct.Memory* [ %3235, %3234 ], [ %3219, %3246 ]
  %3249 = load i64, i64* %RBP, align 8
  %3250 = add i64 %3249, -128
  %3251 = load i32, i32* %EAX, align 4
  %3252 = add i64 %3247, 3
  store i64 %3252, i64* %PC, align 8
  %3253 = inttoptr i64 %3250 to i32*
  store i32 %3251, i32* %3253, align 4
  %3254 = load i64, i64* %PC, align 8
  %3255 = add i64 %3254, 18
  %3256 = add i64 %3254, 6
  %3257 = load i8, i8* %23, align 1, !tbaa !2432
  %3258 = load i8, i8* %38, align 1, !tbaa !2447
  %3259 = or i8 %3258, %3257
  %3260 = icmp ne i8 %3259, 0
  %3261 = select i1 %3260, i64 %3255, i64 %3256
  store i64 %3261, i64* %PC, align 8, !tbaa !2428
  br i1 %3260, label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_4008d4_crit_edge, label %block_4008c8

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit.block_4008d4_crit_edge: ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %.pre208 = load double, double* bitcast (%nulltime_type* @nulltime to double*), align 8
  br label %block_4008d4

block_40085e:                                     ; preds = %block_400873, %block_400821
  %3262 = phi i64 [ %2657, %block_400873 ], [ %.pre206, %block_400821 ]
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
  %3279 = tail call i32 @llvm.ctpop.i32(i32 %3278) #11
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
  %.demorgan218 = or i1 %3288, %3299
  %.v = select i1 %.demorgan218, i64 21, i64 43
  %3300 = add i64 %.v, %3262
  store i64 %3300, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan218, label %block_400873, label %block_400889

block_400c91:                                     ; preds = %block_400bdf
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  %3301 = add i64 %2970, 6479
  %3302 = add i64 %2970, 15
  %3303 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3304 = add i64 %3303, -8
  %3305 = inttoptr i64 %3304 to i64*
  store i64 %3302, i64* %3305, align 8
  store i64 %3304, i64* %RSP, align 8, !tbaa !2428
  store i64 %3301, i64* %PC, align 8, !tbaa !2428
  %3306 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %3301, %struct.Memory* %3202)
  %3307 = load i64, i64* %PC, align 8
  store i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 426), i64* %RDI, align 8, !tbaa !2428
  %3308 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 72) to i64*), align 8
  store i64 %3308, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3309 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 96) to i64*), align 16
  store i64 %3309, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %3310 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4026f0__rodata_type* @seg_4026f0__rodata to i64), i64 104) to double*), align 8
  %3311 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 8) to double*), align 8
  %3312 = load double, double* inttoptr (i64 add (i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64 8) to double*), align 8
  %3313 = fmul double %3311, %3312
  store double %3313, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 48) to double*), align 16
  %3314 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to double*), align 8
  %3315 = fsub double %3313, %3314
  %3316 = fdiv double %3315, %3310
  store double %3316, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  store double %3316, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 56) to double*), align 8
  %3317 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %3317, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %3318 = load i64, i64* %RBP, align 8
  %3319 = add i64 %3318, -48
  %3320 = add i64 %3307, 106
  store i64 %3320, i64* %PC, align 8
  %.cast157 = bitcast i64 %3317 to double
  %3321 = inttoptr i64 %3319 to double*
  %3322 = load double, double* %3321, align 8
  %3323 = fmul double %.cast157, %3322
  %3324 = load double, double* bitcast (%sc_type* @sc to double*), align 8
  %3325 = fdiv double %3323, %3324
  %3326 = tail call double @llvm.trunc.f64(double %3325) #11
  %3327 = tail call double @llvm.fabs.f64(double %3326) #11
  %3328 = fcmp ogt double %3327, 0x43E0000000000000
  %3329 = fptosi double %3326 to i64
  %3330 = select i1 %3328, i64 -9223372036854775808, i64 %3329
  store i64 %3330, i64* %RCX, align 8, !tbaa !2428
  %3331 = add i64 %3318, -80
  %3332 = add i64 %3307, 124
  store i64 %3332, i64* %PC, align 8
  %3333 = inttoptr i64 %3331 to i64*
  store i64 %3330, i64* %3333, align 8
  %3334 = load i64, i64* %PC, align 8
  %3335 = load i64, i64* bitcast (%four_type* @four to i64*), align 8
  store i64 %3335, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %3336 = load i64, i64* %RBP, align 8
  %3337 = add i64 %3336, -40
  %3338 = add i64 %3334, 14
  store i64 %3338, i64* %PC, align 8
  %.cast158 = bitcast i64 %3335 to double
  %3339 = inttoptr i64 %3337 to double*
  %3340 = load double, double* %3339, align 8
  %3341 = fmul double %.cast158, %3340
  %3342 = load double, double* bitcast (%five_type* @five to double*), align 8
  %3343 = fdiv double %3341, %3342
  store double %3343, double* bitcast (%sa_type* @sa to double*), align 8
  store double %3343, double* %86, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  store double %3342, double* %91, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %3344 = add i64 %3336, -32
  %3345 = add i64 %3334, 55
  store i64 %3345, i64* %PC, align 8
  %3346 = inttoptr i64 %3344 to double*
  %3347 = load double, double* %3346, align 8
  %3348 = fdiv double %3342, %3347
  store double %3348, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %3349 = fadd double %3343, %3348
  store double %3349, double* bitcast (%sb_type* @sb to double*), align 8
  %3350 = load i64, i64* %81, align 1
  store i64 %3350, i64* bitcast (%sc_type* @sc to i64*), align 8
  store double %3349, double* %80, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  store i64 %3350, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %3351 = add i64 %3334, 100
  store i64 %3351, i64* %PC, align 8
  %3352 = inttoptr i64 %3344 to i64*
  %3353 = load i64, i64* %3352, align 8
  store i64 %3353, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %3354 = add i64 %3334, 105
  store i64 %3354, i64* %PC, align 8
  %3355 = bitcast i64 %3353 to double
  %3356 = load double, double* %3346, align 8
  %3357 = fmul double %3355, %3356
  store double %3357, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %3358 = add i64 %3334, 110
  store i64 %3358, i64* %PC, align 8
  %3359 = load double, double* %3346, align 8
  %3360 = fmul double %3357, %3359
  store double %3360, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %3361 = bitcast i64 %3350 to double
  %3362 = fdiv double %3361, %3360
  %3363 = fsub double %3349, %3362
  store double %3363, double* bitcast (%piprg_type* @piprg to double*), align 8
  %3364 = load double, double* bitcast (%piref_type* @piref to double*), align 8
  %3365 = fsub double %3363, %3364
  store double %3365, double* bitcast (%pierr_type* @pierr to double*), align 8
  %3366 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3367 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 56) to double*), align 8
  %3368 = fdiv double %3366, %3367
  store double %3368, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 64) to double*), align 16
  %3369 = load <2 x i32>, <2 x i32>* %1347, align 1
  %3370 = load <2 x i32>, <2 x i32>* %1349, align 1
  %3371 = extractelement <2 x i32> %3369, i32 0
  store i32 %3371, i32* %1352, align 1, !tbaa !2455
  %3372 = extractelement <2 x i32> %3369, i32 1
  store i32 %3372, i32* %1355, align 1, !tbaa !2455
  %3373 = extractelement <2 x i32> %3370, i32 0
  store i32 %3373, i32* %1357, align 1, !tbaa !2455
  %3374 = extractelement <2 x i32> %3370, i32 1
  store i32 %3374, i32* %1360, align 1, !tbaa !2455
  %3375 = load double, double* %80, align 1
  %3376 = load double, double* bitcast (%pierr_type* @pierr to double*), align 8
  %3377 = fmul double %3375, %3376
  store double %3377, double* %80, align 1, !tbaa !2452
  %3378 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 48) to double*), align 16
  %3379 = load double, double* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to double*), align 8
  %3380 = fsub double %3378, %3379
  %3381 = bitcast <2 x i32> %3369 to double
  %3382 = fmul double %3381, %3380
  store double %3382, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %3383 = fmul double %3368, %3381
  %3384 = add i64 %3336, -160
  %3385 = add i64 %3334, 232
  store i64 %3385, i64* %PC, align 8
  %3386 = inttoptr i64 %3384 to double*
  store double %3383, double* %3386, align 8
  %3387 = load i64, i64* %PC, align 8
  %3388 = load <2 x i32>, <2 x i32>* %1380, align 1
  %3389 = load <2 x i32>, <2 x i32>* %1382, align 1
  %3390 = extractelement <2 x i32> %3388, i32 0
  store i32 %3390, i32* %187, align 1, !tbaa !2455
  %3391 = extractelement <2 x i32> %3388, i32 1
  store i32 %3391, i32* %189, align 1, !tbaa !2455
  %3392 = extractelement <2 x i32> %3389, i32 0
  store i32 %3392, i32* %190, align 1, !tbaa !2455
  %3393 = extractelement <2 x i32> %3389, i32 1
  store i32 %3393, i32* %192, align 1, !tbaa !2455
  %3394 = load <2 x i32>, <2 x i32>* %1388, align 1
  %3395 = load <2 x i32>, <2 x i32>* %1390, align 1
  %3396 = extractelement <2 x i32> %3394, i32 0
  store i32 %3396, i32* %1352, align 1, !tbaa !2455
  %3397 = extractelement <2 x i32> %3394, i32 1
  store i32 %3397, i32* %1355, align 1, !tbaa !2455
  %3398 = extractelement <2 x i32> %3395, i32 0
  store i32 %3398, i32* %1357, align 1, !tbaa !2455
  %3399 = extractelement <2 x i32> %3395, i32 1
  store i32 %3399, i32* %1360, align 1, !tbaa !2455
  %3400 = load i64, i64* %RBP, align 8
  %3401 = add i64 %3400, -160
  %3402 = add i64 %3387, 14
  store i64 %3402, i64* %PC, align 8
  %3403 = inttoptr i64 %3401 to i64*
  %3404 = load i64, i64* %3403, align 8
  store i64 %3404, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %3405 = add i64 %3400, -164
  %3406 = load i32, i32* %EAX, align 4
  %3407 = add i64 %3387, 20
  store i64 %3407, i64* %PC, align 8
  %3408 = inttoptr i64 %3405 to i32*
  store i32 %3406, i32* %3408, align 4
  %3409 = load i64, i64* %PC, align 8
  store i8 3, i8* %AL, align 1, !tbaa !2451
  %3410 = add i64 %3409, -2504
  %3411 = add i64 %3409, 7
  %3412 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3413 = add i64 %3412, -8
  %3414 = inttoptr i64 %3413 to i64*
  store i64 %3411, i64* %3414, align 8
  store i64 %3413, i64* %RSP, align 8, !tbaa !2428
  store i64 %3410, i64* %PC, align 8, !tbaa !2428
  %3415 = tail call fastcc %struct.Memory* @ext_603310_printf(%struct.State* nonnull %0, %struct.Memory* %3306)
  %3416 = load i64, i64* %PC, align 8
  store i64 ptrtoint (%TimeArray_type* @TimeArray to i64), i64* %RDI, align 8, !tbaa !2428
  store i32 0, i32* %187, align 1, !tbaa !2454
  store i32 0, i32* %189, align 1, !tbaa !2454
  store i32 0, i32* %190, align 1, !tbaa !2454
  store i32 0, i32* %192, align 1, !tbaa !2454
  %3417 = load i64, i64* bitcast (%piref_type* @piref to i64*), align 8
  store i64 %3417, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %3418 = load i64, i64* bitcast (%three_type* @three to i64*), align 8
  store i64 %3418, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %3419 = load i64, i64* %RBP, align 8
  %3420 = add i64 %3419, -80
  %3421 = add i64 %3416, 37
  store i64 %3421, i64* %PC, align 8
  %3422 = inttoptr i64 %3420 to i64*
  %3423 = load i64, i64* %3422, align 8
  %3424 = sitofp i64 %3423 to double
  store double %3424, double* %91, align 1, !tbaa !2452
  %3425 = bitcast i64 %3418 to double
  %3426 = fmul double %3425, %3424
  store double %3426, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %3427 = bitcast i64 %3417 to double
  %3428 = fdiv double %3427, %3426
  store double %3428, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3429 = add i64 %3419, -48
  %3430 = add i64 %3416, 50
  store i64 %3430, i64* %PC, align 8
  %3431 = inttoptr i64 %3429 to double*
  store double %3428, double* %3431, align 8
  %3432 = load i64, i64* %RBP, align 8
  %3433 = add i64 %3432, -16
  %3434 = load i64, i64* %PC, align 8
  %3435 = add i64 %3434, 5
  store i64 %3435, i64* %PC, align 8
  %3436 = load i64, i64* %75, align 1
  %3437 = inttoptr i64 %3433 to i64*
  store i64 %3436, i64* %3437, align 8
  %3438 = load i64, i64* %RBP, align 8
  %3439 = add i64 %3438, -32
  %3440 = load i64, i64* %PC, align 8
  %3441 = add i64 %3440, 5
  store i64 %3441, i64* %PC, align 8
  %3442 = load i64, i64* %75, align 1
  %3443 = inttoptr i64 %3439 to i64*
  store i64 %3442, i64* %3443, align 8
  %3444 = load i64, i64* %RBP, align 8
  %3445 = add i64 %3444, -168
  %3446 = load i32, i32* %EAX, align 4
  %3447 = load i64, i64* %PC, align 8
  %3448 = add i64 %3447, 6
  store i64 %3448, i64* %PC, align 8
  %3449 = inttoptr i64 %3445 to i32*
  store i32 %3446, i32* %3449, align 4
  %3450 = load i64, i64* %PC, align 8
  %3451 = add i64 %3450, 6015
  %3452 = add i64 %3450, 5
  %3453 = load i64, i64* %RSP, align 8, !tbaa !2428
  %3454 = add i64 %3453, -8
  %3455 = inttoptr i64 %3454 to i64*
  store i64 %3452, i64* %3455, align 8
  store i64 %3454, i64* %RSP, align 8, !tbaa !2428
  store i64 %3451, i64* %PC, align 8, !tbaa !2428
  %3456 = tail call %struct.Memory* @sub_4025e0_dtime_renamed_(%struct.State* nonnull %0, i64 %3451, %struct.Memory* %3415)
  %3457 = load i64, i64* %RBP, align 8
  %3458 = add i64 %3457, -72
  %3459 = load i64, i64* %PC, align 8
  %3460 = add i64 %3459, 8
  store i64 %3460, i64* %PC, align 8
  %3461 = inttoptr i64 %3458 to i64*
  store i64 1, i64* %3461, align 8
  %3462 = load i64, i64* %RBP, align 8
  %3463 = add i64 %3462, -172
  %3464 = load i32, i32* %EAX, align 4
  %3465 = load i64, i64* %PC, align 8
  %3466 = add i64 %3465, 6
  store i64 %3466, i64* %PC, align 8
  %3467 = inttoptr i64 %3463 to i32*
  store i32 %3464, i32* %3467, align 4
  %.pre212 = load i64, i64* %PC, align 8
  br label %block_400e74

block_400aee:                                     ; preds = %block_400afc, %block_4008d4
  %3468 = phi i64 [ %2462, %block_400afc ], [ %.pre209, %block_4008d4 ]
  %3469 = load i64, i64* %RBP, align 8
  %3470 = add i64 %3469, -72
  %3471 = add i64 %3468, 4
  store i64 %3471, i64* %PC, align 8
  %3472 = inttoptr i64 %3470 to i64*
  %3473 = load i64, i64* %3472, align 8
  store i64 %3473, i64* %RAX, align 8, !tbaa !2428
  %3474 = add i64 %3469, -80
  %3475 = add i64 %3468, 8
  store i64 %3475, i64* %PC, align 8
  %3476 = inttoptr i64 %3474 to i64*
  %3477 = load i64, i64* %3476, align 8
  %3478 = sub i64 %3473, %3477
  %3479 = icmp ult i64 %3473, %3477
  %3480 = zext i1 %3479 to i8
  store i8 %3480, i8* %23, align 1, !tbaa !2432
  %3481 = trunc i64 %3478 to i32
  %3482 = and i32 %3481, 255
  %3483 = tail call i32 @llvm.ctpop.i32(i32 %3482) #11
  %3484 = trunc i32 %3483 to i8
  %3485 = and i8 %3484, 1
  %3486 = xor i8 %3485, 1
  store i8 %3486, i8* %30, align 1, !tbaa !2446
  %3487 = xor i64 %3477, %3473
  %3488 = xor i64 %3487, %3478
  %3489 = lshr i64 %3488, 4
  %3490 = trunc i64 %3489 to i8
  %3491 = and i8 %3490, 1
  store i8 %3491, i8* %35, align 1, !tbaa !2450
  %3492 = icmp eq i64 %3478, 0
  %3493 = zext i1 %3492 to i8
  store i8 %3493, i8* %38, align 1, !tbaa !2447
  %3494 = lshr i64 %3478, 63
  %3495 = trunc i64 %3494 to i8
  store i8 %3495, i8* %41, align 1, !tbaa !2448
  %3496 = lshr i64 %3473, 63
  %3497 = lshr i64 %3477, 63
  %3498 = xor i64 %3497, %3496
  %3499 = xor i64 %3494, %3496
  %3500 = add nuw nsw i64 %3499, %3498
  %3501 = icmp eq i64 %3500, 2
  %3502 = zext i1 %3501 to i8
  store i8 %3502, i8* %47, align 1, !tbaa !2449
  %3503 = icmp ne i8 %3495, 0
  %3504 = xor i1 %3503, %3501
  %.demorgan219 = or i1 %3492, %3504
  %.v234 = select i1 %.demorgan219, i64 14, i64 87
  %3505 = add i64 %.v234, %3468
  %3506 = add i64 %3505, 10
  store i64 %3506, i64* %PC, align 8
  br i1 %.demorgan219, label %block_400afc, label %block_400b45

block_401f97:                                     ; preds = %block_401f82
  %3507 = add i64 %4014, 6
  store i64 %3507, i64* %PC, align 8
  %3508 = load i64, i64* %3980, align 8
  %3509 = sitofp i64 %3508 to double
  store double %3509, double* %74, align 1, !tbaa !2452
  %3510 = add i64 %3977, -48
  %3511 = add i64 %4014, 11
  store i64 %3511, i64* %PC, align 8
  %3512 = inttoptr i64 %3510 to double*
  %3513 = load double, double* %3512, align 8
  %3514 = fmul double %3509, %3513
  store double %3514, double* %74, align 1, !tbaa !2452
  %3515 = add i64 %3977, -24
  %3516 = add i64 %4014, 16
  store i64 %3516, i64* %PC, align 8
  %3517 = inttoptr i64 %3515 to double*
  store double %3514, double* %3517, align 8
  %3518 = load i64, i64* %RBP, align 8
  %3519 = add i64 %3518, -24
  %3520 = load i64, i64* %PC, align 8
  %3521 = add i64 %3520, 5
  store i64 %3521, i64* %PC, align 8
  %3522 = inttoptr i64 %3519 to i64*
  %3523 = load i64, i64* %3522, align 8
  store i64 %3523, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3524 = add i64 %3520, 10
  store i64 %3524, i64* %PC, align 8
  %3525 = bitcast i64 %3523 to double
  %3526 = inttoptr i64 %3519 to double*
  %3527 = load double, double* %3526, align 8
  %3528 = fmul double %3525, %3527
  store double %3528, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %3529 = add i64 %3518, -40
  %3530 = add i64 %3520, 15
  store i64 %3530, i64* %PC, align 8
  %3531 = inttoptr i64 %3529 to double*
  store double %3528, double* %3531, align 8
  %3532 = load i64, i64* %RBP, align 8
  %3533 = add i64 %3532, -40
  %3534 = load i64, i64* %PC, align 8
  %3535 = add i64 %3534, 5
  store i64 %3535, i64* %PC, align 8
  %3536 = inttoptr i64 %3533 to i64*
  %3537 = load i64, i64* %3536, align 8
  store i64 %3537, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3538 = add i64 %3534, 10
  store i64 %3538, i64* %PC, align 8
  %3539 = load i64, i64* %3536, align 8
  store i64 %3539, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %3540 = add i64 %3534, 15
  store i64 %3540, i64* %PC, align 8
  %3541 = load i64, i64* %3536, align 8
  store i64 %3541, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %3542 = add i64 %3534, 20
  store i64 %3542, i64* %PC, align 8
  %3543 = load i64, i64* %3536, align 8
  store i64 %3543, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %3544 = add i64 %3534, 25
  store i64 %3544, i64* %PC, align 8
  %3545 = load i64, i64* %3536, align 8
  store i64 %3545, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %3546 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  store i64 %3546, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %3547 = add i64 %3534, 39
  store i64 %3547, i64* %PC, align 8
  %.cast176 = bitcast i64 %3546 to double
  %3548 = inttoptr i64 %3533 to double*
  %3549 = load double, double* %3548, align 8
  %3550 = fmul double %.cast176, %3549
  %3551 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %3552 = fadd double %3550, %3551
  store double %3552, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %3553 = bitcast i64 %3545 to double
  %3554 = fmul double %3553, %3552
  %3555 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %3556 = fadd double %3554, %3555
  store double %3556, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %3557 = bitcast i64 %3543 to double
  %3558 = fmul double %3557, %3556
  %3559 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %3560 = fadd double %3558, %3559
  store double %3560, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %3561 = bitcast i64 %3541 to double
  %3562 = fmul double %3561, %3560
  %3563 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %3564 = fadd double %3562, %3563
  store double %3564, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %3565 = bitcast i64 %3539 to double
  %3566 = fmul double %3565, %3564
  %3567 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %3568 = fadd double %3566, %3567
  store double %3568, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3569 = bitcast i64 %3537 to double
  %3570 = fmul double %3569, %3568
  %3571 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3572 = fadd double %3570, %3571
  store double %3572, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %3573 = add i64 %3532, -32
  %3574 = add i64 %3534, 118
  store i64 %3574, i64* %PC, align 8
  %3575 = inttoptr i64 %3573 to double*
  store double %3572, double* %3575, align 8
  %3576 = load i64, i64* %RBP, align 8
  %3577 = add i64 %3576, -16
  %3578 = load i64, i64* %PC, align 8
  %3579 = add i64 %3578, 5
  store i64 %3579, i64* %PC, align 8
  %3580 = inttoptr i64 %3577 to i64*
  %3581 = load i64, i64* %3580, align 8
  store i64 %3581, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3582 = add i64 %3576, -32
  %3583 = add i64 %3578, 10
  store i64 %3583, i64* %PC, align 8
  %3584 = inttoptr i64 %3582 to i64*
  %3585 = load i64, i64* %3584, align 8
  store i64 %3585, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %3586 = add i64 %3578, 15
  store i64 %3586, i64* %PC, align 8
  %3587 = bitcast i64 %3585 to double
  %3588 = inttoptr i64 %3582 to double*
  %3589 = load double, double* %3588, align 8
  %3590 = fmul double %3587, %3589
  store double %3590, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3591 = add i64 %3576, -24
  %3592 = add i64 %3578, 20
  store i64 %3592, i64* %PC, align 8
  %3593 = inttoptr i64 %3591 to double*
  %3594 = load double, double* %3593, align 8
  %3595 = fmul double %3590, %3594
  store double %3595, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3596 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %3596, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %3597 = add i64 %3576, -40
  %3598 = add i64 %3578, 34
  store i64 %3598, i64* %PC, align 8
  %.cast177 = bitcast i64 %3596 to double
  %3599 = inttoptr i64 %3597 to double*
  %3600 = load double, double* %3599, align 8
  %3601 = fmul double %.cast177, %3600
  %3602 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %3603 = fadd double %3601, %3602
  store double %3603, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %3604 = add i64 %3578, 48
  store i64 %3604, i64* %PC, align 8
  %3605 = load double, double* %3599, align 8
  %3606 = fmul double %3603, %3605
  %3607 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %3608 = fadd double %3606, %3607
  store double %3608, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %3609 = add i64 %3578, 62
  store i64 %3609, i64* %PC, align 8
  %3610 = load double, double* %3599, align 8
  %3611 = fmul double %3608, %3610
  %3612 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %3613 = fadd double %3611, %3612
  store double %3613, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %3614 = add i64 %3578, 76
  store i64 %3614, i64* %PC, align 8
  %3615 = load double, double* %3599, align 8
  %3616 = fmul double %3613, %3615
  %3617 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %3618 = fadd double %3616, %3617
  store double %3618, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %3619 = add i64 %3578, 90
  store i64 %3619, i64* %PC, align 8
  %3620 = load double, double* %3599, align 8
  %3621 = fmul double %3618, %3620
  %3622 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %3623 = fadd double %3621, %3622
  store double %3623, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %3624 = add i64 %3578, 104
  store i64 %3624, i64* %PC, align 8
  %3625 = load double, double* %3599, align 8
  %3626 = fmul double %3623, %3625
  %3627 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3628 = fadd double %3626, %3627
  store double %3628, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %3629 = fmul double %3595, %3628
  store double %3629, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3630 = bitcast i64 %3581 to double
  %3631 = fadd double %3630, %3629
  store double %3631, double* %74, align 1, !tbaa !2452
  %3632 = add i64 %3578, 126
  store i64 %3632, i64* %PC, align 8
  %3633 = inttoptr i64 %3577 to double*
  store double %3631, double* %3633, align 8
  %3634 = load i64, i64* %RBP, align 8
  %3635 = add i64 %3634, -72
  %3636 = load i64, i64* %PC, align 8
  %3637 = add i64 %3636, 4
  store i64 %3637, i64* %PC, align 8
  %3638 = inttoptr i64 %3635 to i64*
  %3639 = load i64, i64* %3638, align 8
  %3640 = add i64 %3639, 1
  store i64 %3640, i64* %RAX, align 8, !tbaa !2428
  %3641 = icmp eq i64 %3639, -1
  %3642 = icmp eq i64 %3640, 0
  %3643 = or i1 %3641, %3642
  %3644 = zext i1 %3643 to i8
  store i8 %3644, i8* %23, align 1, !tbaa !2432
  %3645 = trunc i64 %3640 to i32
  %3646 = and i32 %3645, 255
  %3647 = tail call i32 @llvm.ctpop.i32(i32 %3646) #11
  %3648 = trunc i32 %3647 to i8
  %3649 = and i8 %3648, 1
  %3650 = xor i8 %3649, 1
  store i8 %3650, i8* %30, align 1, !tbaa !2446
  %3651 = xor i64 %3640, %3639
  %3652 = lshr i64 %3651, 4
  %3653 = trunc i64 %3652 to i8
  %3654 = and i8 %3653, 1
  store i8 %3654, i8* %35, align 1, !tbaa !2450
  %3655 = zext i1 %3642 to i8
  store i8 %3655, i8* %38, align 1, !tbaa !2447
  %3656 = lshr i64 %3640, 63
  %3657 = trunc i64 %3656 to i8
  store i8 %3657, i8* %41, align 1, !tbaa !2448
  %3658 = lshr i64 %3639, 63
  %3659 = xor i64 %3656, %3658
  %3660 = add nuw nsw i64 %3659, %3656
  %3661 = icmp eq i64 %3660, 2
  %3662 = zext i1 %3661 to i8
  store i8 %3662, i8* %47, align 1, !tbaa !2449
  %3663 = add i64 %3636, 12
  store i64 %3663, i64* %PC, align 8
  store i64 %3640, i64* %3638, align 8
  %3664 = load i64, i64* %PC, align 8
  %3665 = add i64 %3664, -308
  store i64 %3665, i64* %PC, align 8, !tbaa !2428
  br label %block_401f82

block_4018f3:                                     ; preds = %block_4018de
  %3666 = add i64 %1262, 6
  store i64 %3666, i64* %PC, align 8
  %3667 = load i64, i64* %1228, align 8
  %3668 = sitofp i64 %3667 to double
  store double %3668, double* %74, align 1, !tbaa !2452
  %3669 = add i64 %1225, -48
  %3670 = add i64 %1262, 11
  store i64 %3670, i64* %PC, align 8
  %3671 = inttoptr i64 %3669 to double*
  %3672 = load double, double* %3671, align 8
  %3673 = fmul double %3668, %3672
  store double %3673, double* %74, align 1, !tbaa !2452
  %3674 = add i64 %1225, -24
  %3675 = add i64 %1262, 16
  store i64 %3675, i64* %PC, align 8
  %3676 = inttoptr i64 %3674 to double*
  store double %3673, double* %3676, align 8
  %3677 = load i64, i64* %RBP, align 8
  %3678 = add i64 %3677, -24
  %3679 = load i64, i64* %PC, align 8
  %3680 = add i64 %3679, 5
  store i64 %3680, i64* %PC, align 8
  %3681 = inttoptr i64 %3678 to i64*
  %3682 = load i64, i64* %3681, align 8
  store i64 %3682, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3683 = add i64 %3679, 10
  store i64 %3683, i64* %PC, align 8
  %3684 = bitcast i64 %3682 to double
  %3685 = inttoptr i64 %3678 to double*
  %3686 = load double, double* %3685, align 8
  %3687 = fmul double %3684, %3686
  store double %3687, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %3688 = add i64 %3677, -40
  %3689 = add i64 %3679, 15
  store i64 %3689, i64* %PC, align 8
  %3690 = inttoptr i64 %3688 to double*
  store double %3687, double* %3690, align 8
  %3691 = load i64, i64* %RBP, align 8
  %3692 = add i64 %3691, -24
  %3693 = load i64, i64* %PC, align 8
  %3694 = add i64 %3693, 5
  store i64 %3694, i64* %PC, align 8
  %3695 = inttoptr i64 %3692 to i64*
  %3696 = load i64, i64* %3695, align 8
  store i64 %3696, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3697 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %3697, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %3698 = add i64 %3691, -40
  %3699 = add i64 %3693, 19
  store i64 %3699, i64* %PC, align 8
  %.cast170 = bitcast i64 %3697 to double
  %3700 = inttoptr i64 %3698 to double*
  %3701 = load double, double* %3700, align 8
  %3702 = fmul double %.cast170, %3701
  %3703 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %3704 = fadd double %3702, %3703
  store double %3704, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3705 = add i64 %3693, 33
  store i64 %3705, i64* %PC, align 8
  %3706 = load double, double* %3700, align 8
  %3707 = fmul double %3704, %3706
  %3708 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %3709 = fadd double %3707, %3708
  store double %3709, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3710 = add i64 %3693, 47
  store i64 %3710, i64* %PC, align 8
  %3711 = load double, double* %3700, align 8
  %3712 = fmul double %3709, %3711
  %3713 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %3714 = fadd double %3712, %3713
  store double %3714, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3715 = add i64 %3693, 61
  store i64 %3715, i64* %PC, align 8
  %3716 = load double, double* %3700, align 8
  %3717 = fmul double %3714, %3716
  %3718 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %3719 = fadd double %3717, %3718
  store double %3719, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3720 = add i64 %3693, 75
  store i64 %3720, i64* %PC, align 8
  %3721 = load double, double* %3700, align 8
  %3722 = fmul double %3719, %3721
  %3723 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %3724 = fadd double %3722, %3723
  store double %3724, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3725 = add i64 %3693, 89
  store i64 %3725, i64* %PC, align 8
  %3726 = load double, double* %3700, align 8
  %3727 = fmul double %3724, %3726
  %3728 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3729 = fadd double %3727, %3728
  store double %3729, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3730 = bitcast i64 %3696 to double
  %3731 = fmul double %3730, %3729
  store double %3731, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %3732 = add i64 %3691, -32
  %3733 = add i64 %3693, 107
  store i64 %3733, i64* %PC, align 8
  %3734 = inttoptr i64 %3732 to double*
  store double %3731, double* %3734, align 8
  %3735 = load i64, i64* %RBP, align 8
  %3736 = add i64 %3735, -16
  %3737 = load i64, i64* %PC, align 8
  %3738 = add i64 %3737, 5
  store i64 %3738, i64* %PC, align 8
  %3739 = inttoptr i64 %3736 to i64*
  %3740 = load i64, i64* %3739, align 8
  store i64 %3740, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3741 = add i64 %3735, -32
  %3742 = add i64 %3737, 10
  store i64 %3742, i64* %PC, align 8
  %3743 = inttoptr i64 %3741 to i64*
  %3744 = load i64, i64* %3743, align 8
  store i64 %3744, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %3745 = add i64 %3735, -40
  %3746 = add i64 %3737, 15
  store i64 %3746, i64* %PC, align 8
  %3747 = inttoptr i64 %3745 to i64*
  %3748 = load i64, i64* %3747, align 8
  store i64 %3748, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %3749 = add i64 %3737, 20
  store i64 %3749, i64* %PC, align 8
  %3750 = load i64, i64* %3747, align 8
  store i64 %3750, i64* %92, align 1, !tbaa !2452
  store double 0.000000e+00, double* %94, align 1, !tbaa !2452
  %3751 = add i64 %3737, 25
  store i64 %3751, i64* %PC, align 8
  %3752 = load i64, i64* %3747, align 8
  store i64 %3752, i64* %97, align 1, !tbaa !2452
  store double 0.000000e+00, double* %99, align 1, !tbaa !2452
  %3753 = add i64 %3737, 30
  store i64 %3753, i64* %PC, align 8
  %3754 = load i64, i64* %3747, align 8
  store i64 %3754, i64* %102, align 1, !tbaa !2452
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %3755 = add i64 %3737, 35
  store i64 %3755, i64* %PC, align 8
  %3756 = load i64, i64* %3747, align 8
  store i64 %3756, i64* %107, align 1, !tbaa !2452
  store double 0.000000e+00, double* %109, align 1, !tbaa !2452
  %3757 = load i64, i64* bitcast (%B6_type* @B6 to i64*), align 8
  store i64 %3757, i64* %209, align 1, !tbaa !2452
  store double 0.000000e+00, double* %211, align 1, !tbaa !2452
  %3758 = add i64 %3737, 49
  store i64 %3758, i64* %PC, align 8
  %.cast171 = bitcast i64 %3757 to double
  %3759 = inttoptr i64 %3745 to double*
  %3760 = load double, double* %3759, align 8
  %3761 = fmul double %.cast171, %3760
  %3762 = load double, double* bitcast (%B5_type* @B5 to double*), align 8
  %3763 = fadd double %3761, %3762
  store double %3763, double* %121, align 1, !tbaa !2452
  store i64 0, i64* %210, align 1, !tbaa !2452
  %3764 = bitcast i64 %3756 to double
  %3765 = fmul double %3764, %3763
  %3766 = load double, double* bitcast (%B4_type* @B4 to double*), align 8
  %3767 = fadd double %3765, %3766
  store double %3767, double* %106, align 1, !tbaa !2452
  store i64 0, i64* %108, align 1, !tbaa !2452
  %3768 = bitcast i64 %3754 to double
  %3769 = fmul double %3768, %3767
  %3770 = load double, double* bitcast (%B3_type* @B3 to double*), align 8
  %3771 = fadd double %3769, %3770
  store double %3771, double* %101, align 1, !tbaa !2452
  store i64 0, i64* %103, align 1, !tbaa !2452
  %3772 = bitcast i64 %3752 to double
  %3773 = fmul double %3772, %3771
  %3774 = load double, double* bitcast (%B2_type* @B2 to double*), align 8
  %3775 = fadd double %3773, %3774
  store double %3775, double* %96, align 1, !tbaa !2452
  store i64 0, i64* %98, align 1, !tbaa !2452
  %3776 = bitcast i64 %3750 to double
  %3777 = fmul double %3776, %3775
  %3778 = load double, double* bitcast (%B1_0_type* @B1_0 to double*), align 8
  %3779 = fadd double %3777, %3778
  store double %3779, double* %91, align 1, !tbaa !2452
  store i64 0, i64* %93, align 1, !tbaa !2452
  %3780 = bitcast i64 %3748 to double
  %3781 = fmul double %3780, %3779
  %3782 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3783 = fadd double %3781, %3782
  store double %3783, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %3784 = bitcast i64 %3744 to double
  %3785 = fmul double %3784, %3783
  store double %3785, double* %80, align 1, !tbaa !2452
  %3786 = bitcast i64 %3740 to double
  %3787 = fadd double %3786, %3785
  store double %3787, double* %74, align 1, !tbaa !2452
  %3788 = add i64 %3737, 136
  store i64 %3788, i64* %PC, align 8
  %3789 = inttoptr i64 %3736 to double*
  store double %3787, double* %3789, align 8
  %3790 = load i64, i64* %RBP, align 8
  %3791 = add i64 %3790, -72
  %3792 = load i64, i64* %PC, align 8
  %3793 = add i64 %3792, 4
  store i64 %3793, i64* %PC, align 8
  %3794 = inttoptr i64 %3791 to i64*
  %3795 = load i64, i64* %3794, align 8
  %3796 = add i64 %3795, 1
  store i64 %3796, i64* %RAX, align 8, !tbaa !2428
  %3797 = icmp eq i64 %3795, -1
  %3798 = icmp eq i64 %3796, 0
  %3799 = or i1 %3797, %3798
  %3800 = zext i1 %3799 to i8
  store i8 %3800, i8* %23, align 1, !tbaa !2432
  %3801 = trunc i64 %3796 to i32
  %3802 = and i32 %3801, 255
  %3803 = tail call i32 @llvm.ctpop.i32(i32 %3802) #11
  %3804 = trunc i32 %3803 to i8
  %3805 = and i8 %3804, 1
  %3806 = xor i8 %3805, 1
  store i8 %3806, i8* %30, align 1, !tbaa !2446
  %3807 = xor i64 %3796, %3795
  %3808 = lshr i64 %3807, 4
  %3809 = trunc i64 %3808 to i8
  %3810 = and i8 %3809, 1
  store i8 %3810, i8* %35, align 1, !tbaa !2450
  %3811 = zext i1 %3798 to i8
  store i8 %3811, i8* %38, align 1, !tbaa !2447
  %3812 = lshr i64 %3796, 63
  %3813 = trunc i64 %3812 to i8
  store i8 %3813, i8* %41, align 1, !tbaa !2448
  %3814 = lshr i64 %3795, 63
  %3815 = xor i64 %3812, %3814
  %3816 = add nuw nsw i64 %3815, %3812
  %3817 = icmp eq i64 %3816, 2
  %3818 = zext i1 %3817 to i8
  store i8 %3818, i8* %47, align 1, !tbaa !2449
  %3819 = add i64 %3792, 12
  store i64 %3819, i64* %PC, align 8
  store i64 %3796, i64* %3794, align 8
  %3820 = load i64, i64* %PC, align 8
  %3821 = add i64 %3820, -307
  store i64 %3821, i64* %PC, align 8, !tbaa !2428
  br label %block_4018de

block_400e89:                                     ; preds = %block_400e74
  %3822 = add i64 %1186, -32
  %3823 = add i64 %1223, 5
  store i64 %3823, i64* %PC, align 8
  %3824 = inttoptr i64 %3822 to double*
  %3825 = load double, double* %3824, align 8
  %3826 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3827 = fadd double %3825, %3826
  store double %3827, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %3828 = add i64 %1223, 19
  store i64 %3828, i64* %PC, align 8
  store double %3827, double* %3824, align 8
  %3829 = load i64, i64* %RBP, align 8
  %3830 = add i64 %3829, -32
  %3831 = load i64, i64* %PC, align 8
  %3832 = add i64 %3831, 5
  store i64 %3832, i64* %PC, align 8
  %3833 = inttoptr i64 %3830 to i64*
  %3834 = load i64, i64* %3833, align 8
  store i64 %3834, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3835 = add i64 %3829, -48
  %3836 = add i64 %3831, 10
  store i64 %3836, i64* %PC, align 8
  %3837 = bitcast i64 %3834 to double
  %3838 = inttoptr i64 %3835 to double*
  %3839 = load double, double* %3838, align 8
  %3840 = fmul double %3837, %3839
  store double %3840, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %3841 = add i64 %3829, -24
  %3842 = add i64 %3831, 15
  store i64 %3842, i64* %PC, align 8
  %3843 = inttoptr i64 %3841 to double*
  store double %3840, double* %3843, align 8
  %3844 = load i64, i64* %RBP, align 8
  %3845 = add i64 %3844, -24
  %3846 = load i64, i64* %PC, align 8
  %3847 = add i64 %3846, 5
  store i64 %3847, i64* %PC, align 8
  %3848 = inttoptr i64 %3845 to i64*
  %3849 = load i64, i64* %3848, align 8
  store i64 %3849, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3850 = add i64 %3846, 10
  store i64 %3850, i64* %PC, align 8
  %3851 = bitcast i64 %3849 to double
  %3852 = inttoptr i64 %3845 to double*
  %3853 = load double, double* %3852, align 8
  %3854 = fmul double %3851, %3853
  store double %3854, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %3855 = add i64 %3844, -40
  %3856 = add i64 %3846, 15
  store i64 %3856, i64* %PC, align 8
  %3857 = inttoptr i64 %3855 to double*
  store double %3854, double* %3857, align 8
  %3858 = load i64, i64* %RBP, align 8
  %3859 = add i64 %3858, -16
  %3860 = load i64, i64* %PC, align 8
  %3861 = add i64 %3860, 5
  store i64 %3861, i64* %PC, align 8
  %3862 = inttoptr i64 %3859 to i64*
  %3863 = load i64, i64* %3862, align 8
  store i64 %3863, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3864 = add i64 %3858, -24
  %3865 = add i64 %3860, 10
  store i64 %3865, i64* %PC, align 8
  %3866 = inttoptr i64 %3864 to i64*
  %3867 = load i64, i64* %3866, align 8
  store i64 %3867, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %3868 = load i64, i64* bitcast (%A6_type* @A6 to i64*), align 8
  store i64 %3868, i64* %87, align 1, !tbaa !2452
  store double 0.000000e+00, double* %89, align 1, !tbaa !2452
  %3869 = add i64 %3858, -40
  %3870 = add i64 %3860, 24
  store i64 %3870, i64* %PC, align 8
  %.cast160 = bitcast i64 %3868 to double
  %3871 = inttoptr i64 %3869 to double*
  %3872 = load double, double* %3871, align 8
  %3873 = fmul double %.cast160, %3872
  %3874 = load double, double* bitcast (%A5_type* @A5 to double*), align 8
  %3875 = fsub double %3873, %3874
  store double %3875, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %3876 = add i64 %3860, 38
  store i64 %3876, i64* %PC, align 8
  %3877 = load double, double* %3871, align 8
  %3878 = fmul double %3875, %3877
  %3879 = load double, double* bitcast (%A4_type* @A4 to double*), align 8
  %3880 = fadd double %3878, %3879
  store double %3880, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %3881 = add i64 %3860, 52
  store i64 %3881, i64* %PC, align 8
  %3882 = load double, double* %3871, align 8
  %3883 = fmul double %3880, %3882
  %3884 = load double, double* bitcast (%A3_type* @A3 to double*), align 8
  %3885 = fsub double %3883, %3884
  store double %3885, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %3886 = add i64 %3860, 66
  store i64 %3886, i64* %PC, align 8
  %3887 = load double, double* %3871, align 8
  %3888 = fmul double %3885, %3887
  %3889 = load double, double* bitcast (%A2_0_type* @A2_0 to double*), align 8
  %3890 = fadd double %3888, %3889
  store double %3890, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %3891 = add i64 %3860, 80
  store i64 %3891, i64* %PC, align 8
  %3892 = load double, double* %3871, align 8
  %3893 = fmul double %3890, %3892
  %3894 = load double, double* bitcast (%A1_0_type* @A1_0 to double*), align 8
  %3895 = fadd double %3893, %3894
  store double %3895, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %3896 = add i64 %3860, 94
  store i64 %3896, i64* %PC, align 8
  %3897 = load double, double* %3871, align 8
  %3898 = fmul double %3895, %3897
  %3899 = load double, double* bitcast (%one_type* @one to double*), align 8
  %3900 = fadd double %3898, %3899
  store double %3900, double* %86, align 1, !tbaa !2452
  store i64 0, i64* %88, align 1, !tbaa !2452
  %3901 = bitcast i64 %3867 to double
  %3902 = fmul double %3901, %3900
  store double %3902, double* %80, align 1, !tbaa !2452
  store i64 0, i64* %82, align 1, !tbaa !2452
  %3903 = bitcast i64 %3863 to double
  %3904 = fadd double %3903, %3902
  store double %3904, double* %74, align 1, !tbaa !2452
  store i64 0, i64* %76, align 1, !tbaa !2452
  %3905 = add i64 %3860, 116
  store i64 %3905, i64* %PC, align 8
  %3906 = inttoptr i64 %3859 to double*
  store double %3904, double* %3906, align 8
  %3907 = load i64, i64* %RBP, align 8
  %3908 = add i64 %3907, -72
  %3909 = load i64, i64* %PC, align 8
  %3910 = add i64 %3909, 4
  store i64 %3910, i64* %PC, align 8
  %3911 = inttoptr i64 %3908 to i64*
  %3912 = load i64, i64* %3911, align 8
  %3913 = add i64 %3912, 1
  store i64 %3913, i64* %RAX, align 8, !tbaa !2428
  %3914 = icmp eq i64 %3912, -1
  %3915 = icmp eq i64 %3913, 0
  %3916 = or i1 %3914, %3915
  %3917 = zext i1 %3916 to i8
  store i8 %3917, i8* %23, align 1, !tbaa !2432
  %3918 = trunc i64 %3913 to i32
  %3919 = and i32 %3918, 255
  %3920 = tail call i32 @llvm.ctpop.i32(i32 %3919) #11
  %3921 = trunc i32 %3920 to i8
  %3922 = and i8 %3921, 1
  %3923 = xor i8 %3922, 1
  store i8 %3923, i8* %30, align 1, !tbaa !2446
  %3924 = xor i64 %3913, %3912
  %3925 = lshr i64 %3924, 4
  %3926 = trunc i64 %3925 to i8
  %3927 = and i8 %3926, 1
  store i8 %3927, i8* %35, align 1, !tbaa !2450
  %3928 = zext i1 %3915 to i8
  store i8 %3928, i8* %38, align 1, !tbaa !2447
  %3929 = lshr i64 %3913, 63
  %3930 = trunc i64 %3929 to i8
  store i8 %3930, i8* %41, align 1, !tbaa !2448
  %3931 = lshr i64 %3912, 63
  %3932 = xor i64 %3929, %3931
  %3933 = add nuw nsw i64 %3932, %3929
  %3934 = icmp eq i64 %3933, 2
  %3935 = zext i1 %3934 to i8
  store i8 %3935, i8* %47, align 1, !tbaa !2449
  %3936 = add i64 %3909, 12
  store i64 %3936, i64* %PC, align 8
  store i64 %3913, i64* %3911, align 8
  %3937 = load i64, i64* %PC, align 8
  %3938 = add i64 %3937, -198
  store i64 %3938, i64* %PC, align 8, !tbaa !2428
  br label %block_400e74

block_400b87:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  store <4 x i32> zeroinitializer, <4 x i32>* %193, align 1, !tbaa !2454
  %3939 = add i64 %1751, 12
  store i64 %3939, i64* %PC, align 8
  store i64 0, i64* inttoptr (i64 add (i64 ptrtoint (%T_type* @T to i64), i64 40) to i64*), align 8
  br label %block_400b93

block_4006a6:                                     ; preds = %block_40081c, %block_400560
  %3940 = phi i64 [ %.pre, %block_400560 ], [ %2522, %block_40081c ]
  %MEMORY.12 = phi %struct.Memory* [ %185, %block_400560 ], [ %1030, %block_40081c ]
  %3941 = load i64, i64* bitcast (%sa_type* @sa to i64*), align 8
  store i64 %3941, i64* %75, align 1, !tbaa !2452
  store double 0.000000e+00, double* %77, align 1, !tbaa !2452
  %3942 = load i64, i64* bitcast (%TLimit_type* @TLimit to i64*), align 8
  store i64 %3942, i64* %81, align 1, !tbaa !2452
  store double 0.000000e+00, double* %83, align 1, !tbaa !2452
  %3943 = add i64 %3940, 22
  store i64 %3943, i64* %PC, align 8
  %.cast = bitcast i64 %3942 to double
  %3944 = bitcast i64 %3941 to double
  %3945 = fcmp uno double %.cast, %3944
  br i1 %3945, label %3946, label %3956

; <label>:3946:                                   ; preds = %block_4006a6
  %3947 = fadd double %3944, %.cast
  %3948 = bitcast double %3947 to i64
  %3949 = and i64 %3948, 9221120237041090560
  %3950 = icmp eq i64 %3949, 9218868437227405312
  %3951 = and i64 %3948, 2251799813685247
  %3952 = icmp ne i64 %3951, 0
  %3953 = and i1 %3950, %3952
  br i1 %3953, label %3954, label %3962

; <label>:3954:                                   ; preds = %3946
  %3955 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3943, %struct.Memory* %MEMORY.12) #14
  %.pre204 = load i64, i64* %PC, align 8
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:3956:                                   ; preds = %block_4006a6
  %3957 = fcmp ogt double %.cast, %3944
  br i1 %3957, label %3962, label %3958

; <label>:3958:                                   ; preds = %3956
  %3959 = fcmp olt double %.cast, %3944
  br i1 %3959, label %3962, label %3960

; <label>:3960:                                   ; preds = %3958
  %3961 = fcmp oeq double %.cast, %3944
  br i1 %3961, label %3962, label %3966

; <label>:3962:                                   ; preds = %3960, %3958, %3956, %3946
  %3963 = phi i8 [ 0, %3956 ], [ 0, %3958 ], [ 1, %3960 ], [ 1, %3946 ]
  %3964 = phi i8 [ 0, %3956 ], [ 0, %3958 ], [ 0, %3960 ], [ 1, %3946 ]
  %3965 = phi i8 [ 0, %3956 ], [ 1, %3958 ], [ 0, %3960 ], [ 1, %3946 ]
  store i8 %3963, i8* %38, align 1, !tbaa !2451
  store i8 %3964, i8* %30, align 1, !tbaa !2451
  store i8 %3965, i8* %23, align 1, !tbaa !2451
  br label %3966

; <label>:3966:                                   ; preds = %3962, %3960
  store i8 0, i8* %47, align 1, !tbaa !2451
  store i8 0, i8* %41, align 1, !tbaa !2451
  store i8 0, i8* %35, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %3966, %3954
  %3967 = phi i64 [ %.pre204, %3954 ], [ %3943, %3966 ]
  %3968 = phi %struct.Memory* [ %3955, %3954 ], [ %MEMORY.12, %3966 ]
  %3969 = add i64 %3967, 357
  %3970 = add i64 %3967, 6
  %3971 = load i8, i8* %23, align 1, !tbaa !2432
  %3972 = load i8, i8* %38, align 1, !tbaa !2447
  %3973 = or i8 %3972, %3971
  %3974 = icmp ne i8 %3973, 0
  %3975 = select i1 %3974, i64 %3969, i64 %3970
  store i64 %3975, i64* %PC, align 8, !tbaa !2428
  br i1 %3974, label %block_400821.loopexit, label %block_4006c2

block_401f82:                                     ; preds = %block_401f97, %block_401d63
  %3976 = phi i64 [ %3665, %block_401f97 ], [ %.pre217, %block_401d63 ]
  %3977 = load i64, i64* %RBP, align 8
  %3978 = add i64 %3977, -72
  %3979 = add i64 %3976, 4
  store i64 %3979, i64* %PC, align 8
  %3980 = inttoptr i64 %3978 to i64*
  %3981 = load i64, i64* %3980, align 8
  store i64 %3981, i64* %RAX, align 8, !tbaa !2428
  %3982 = add i64 %3977, -80
  %3983 = add i64 %3976, 8
  store i64 %3983, i64* %PC, align 8
  %3984 = inttoptr i64 %3982 to i64*
  %3985 = load i64, i64* %3984, align 8
  %3986 = add i64 %3985, -1
  store i64 %3986, i64* %RCX, align 8, !tbaa !2428
  %3987 = lshr i64 %3986, 63
  %3988 = sub i64 %3981, %3986
  %3989 = icmp ult i64 %3981, %3986
  %3990 = zext i1 %3989 to i8
  store i8 %3990, i8* %23, align 1, !tbaa !2432
  %3991 = trunc i64 %3988 to i32
  %3992 = and i32 %3991, 255
  %3993 = tail call i32 @llvm.ctpop.i32(i32 %3992) #11
  %3994 = trunc i32 %3993 to i8
  %3995 = and i8 %3994, 1
  %3996 = xor i8 %3995, 1
  store i8 %3996, i8* %30, align 1, !tbaa !2446
  %3997 = xor i64 %3986, %3981
  %3998 = xor i64 %3997, %3988
  %3999 = lshr i64 %3998, 4
  %4000 = trunc i64 %3999 to i8
  %4001 = and i8 %4000, 1
  store i8 %4001, i8* %35, align 1, !tbaa !2450
  %4002 = icmp eq i64 %3988, 0
  %4003 = zext i1 %4002 to i8
  store i8 %4003, i8* %38, align 1, !tbaa !2447
  %4004 = lshr i64 %3988, 63
  %4005 = trunc i64 %4004 to i8
  store i8 %4005, i8* %41, align 1, !tbaa !2448
  %4006 = lshr i64 %3981, 63
  %4007 = xor i64 %3987, %4006
  %4008 = xor i64 %4004, %4006
  %4009 = add nuw nsw i64 %4008, %4007
  %4010 = icmp eq i64 %4009, 2
  %4011 = zext i1 %4010 to i8
  store i8 %4011, i8* %47, align 1, !tbaa !2449
  %4012 = icmp ne i8 %4005, 0
  %4013 = xor i1 %4012, %4010
  %.demorgan226 = or i1 %4002, %4013
  %.v233 = select i1 %.demorgan226, i64 21, i64 313
  %4014 = add i64 %.v233, %3976
  store i64 %4014, i64* %PC, align 8, !tbaa !2428
  br i1 %.demorgan226, label %block_401f97, label %block_4020bb
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400550_frame_dummy() #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400550;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @2) #11
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @callback_sub_400550_frame_dummy_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #11 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_400550_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_400520___do_global_dtors_aux() #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400520;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @2) #11
  ret void
}

define internal %struct.Memory* @callback_sub_400520___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory* readnone returned) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_400520___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_4026e0___libc_csu_fini() #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4026e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @2) #11
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @callback_sub_4026e0___libc_csu_fini_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_4026e0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define internal void @callback_sub_402670___libc_csu_init() #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x402670;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @2) #11
  ret void
}

define internal %struct.Memory* @callback_sub_402670___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_402670___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400560;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @2) #11
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_400560_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_603320___libc_start_main(%struct.State*, %struct.Memory*) unnamed_addr #13 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_603310_printf(%struct.State*, %struct.Memory*) unnamed_addr #13 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @dtime() local_unnamed_addr #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4025e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @2) #11
  ret void
}

; Function Attrs: norecurse nounwind
define internal %struct.Memory* @dtime_wrapper(%struct.State* nocapture readnone, i64, %struct.Memory* readnone returned) #12 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_4025e0_dtime(%struct.State* undef, i64 undef, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4026e4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @2) #11
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.term_proc_wrapper(%struct.State* nocapture, i64, %struct.Memory* readnone returned) #11 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_4026e4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #10 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400428;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @2) #11
  ret void
}

; Function Attrs: nounwind
define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) #11 {
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %3
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %3
  %6 = tail call %struct.Memory* @sub_400428__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %6
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #11 {
  tail call void @callback_sub_4026e0___libc_csu_fini()
  ret void
}

; Function Attrs: nounwind
define internal void @__mcsema_constructor() #11 {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %2, %0
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
attributes #9 = { noinline norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { naked nobuiltin noinline nounwind }
attributes #11 = { nounwind }
attributes #12 = { norecurse nounwind }
attributes #13 = { noinline nounwind }
attributes #14 = { alwaysinline nobuiltin nounwind }

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
